uint64_t sub_261319DDC(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_26139F64C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v32 = v4;
    v4 = sub_2613A122C();
    v18 = sub_2613A1D7C();
    if (os_log_type_enabled(v4, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v9;
      v20 = v19;
      *v19 = 67109120;
      *(v19 + 4) = v33 & 1;
      _os_log_impl(&dword_261243000, v4, v18, "tapUIFinished, expected: %{BOOL}d", v19, 8u);
      v21 = v20;
      v9 = v31;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v17 + 8))(v14, v16);
    LOBYTE(v4) = v32;
  }

  v22 = (v9 + 8);
  if (v4)
  {
    sub_26139F39C();
  }

  else
  {
    sub_26139F5EC();
  }

  sub_26139F5BC();
  (*v22)(v11, v8);
  v23 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
  if (v23)
  {
    v24 = *(*v23 + 336);

    v24(v33 & 1);
  }

  v25 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask];
  if (v25)
  {
    v26 = *(*v25 + 304);

    v26(v33 & 1);
  }

  v27 = sub_2613A1C1C();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v4 & 1;
  *(v28 + 40) = v3;
  v29 = v3;
  sub_261266800(0, 0, v7, &unk_2613AC958, v28);
}

uint64_t sub_26131A1F0(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 193) = a1;
  v3 = sub_2613A177C();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_2613A172C();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = sub_2613A171C();
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131A39C, 0, 0);
}

uint64_t sub_26131A39C()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 168);
  v42 = sub_26129B5FC();
  sub_26125A870(v42, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = *(v0 + 168);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 168), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = *(v0 + 72);
    if (*(v0 + 193))
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (*(v0 + 193))
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v9, v10);

    v11 = sub_26125A798();
    v12 = v8;
    v1 = (v0 + 16);
    sub_26129BC3C(v11 & 1, v12, 0xD000000000000023, 0x80000002613BCF00, 0x3D20726575737369, 0xE900000000000020);

    (*(v4 + 8))(v7, v3);
  }

  v41 = v5;
  v44 = v3;
  v45 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout;
  v43 = *(v0 + 72);
  if (*(v43 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout))
  {

    sub_2613A179C();
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v38 = *(v0 + 104);
  v15 = *(v0 + 88);
  v36 = *(v0 + 112);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  v40 = *(v0 + 160);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_261324260;
  *(v0 + 56) = v16;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_261276D54;
  *(v0 + 40) = &block_descriptor_11;
  _Block_copy(v1);
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2612D4168(&qword_27FE9F4B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  sub_2613A203C();
  sub_2613A17AC();
  swift_allocObject();
  v17 = sub_2613A178C();

  *(v43 + v45) = v17;

  sub_26127BBE0();
  (*(v13 + 104))(v14, *MEMORY[0x277D851C8], v36);
  v18 = sub_2613A1E3C();
  (*(v13 + 8))(v14, v36);
  sub_2613A176C();
  sub_2613A0C0C();
  sub_2613A17CC();
  v19 = *(v15 + 8);
  v19(v37, v39);
  sub_2613A1DFC();

  v19(v38, v39);
  sub_26125A870(v42, v40, &qword_27FE9F560, &qword_2613A3CB0);
  if (v41(v40, 1, v44) == 1)
  {
    sub_26124C718(*(v0 + 160), &qword_27FE9F560, &qword_2613A3CB0);
    v20 = v4;
  }

  else
  {
    v21 = sub_2613A122C();
    v22 = sub_2613A1D9C();
    v20 = v4;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, "waitForCompletionFinish - about to wait", v23, 2u);
      MEMORY[0x266701350](v23, -1, -1);
    }

    v24 = *(v0 + 160);

    (*(v4 + 8))(v24, v44);
  }

  v25 = *(v0 + 72);
  if (*(v0 + 193) == 1)
  {
    if (*(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion))
    {
LABEL_19:
      v26 = swift_task_alloc();
      *(v0 + 176) = v26;
      *(v26 + 16) = v25;
      v27 = swift_task_alloc();
      *(v0 + 184) = v27;
      *v27 = v0;
      v27[1] = sub_26131AB70;
      v28 = MEMORY[0x277D839B0];

      return MEMORY[0x2822007B8](v0 + 192, 0, 0, 0xD000000000000023, 0x80000002613BCF00, sub_2613242A4, v26, v28);
    }
  }

  else if (*(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion))
  {
    goto LABEL_19;
  }

  v29 = *(v0 + 152);
  sub_26125A870(v42, v29, &qword_27FE9F560, &qword_2613A3CB0);
  if (v41(v29, 1, v44) == 1)
  {
    sub_26124C718(*(v0 + 152), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = sub_2613A122C();
    v31 = sub_2613A1D9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "waitForCompletionFinish - already completed or nothing pending", v32, 2u);
      MEMORY[0x266701350](v32, -1, -1);
    }

    v33 = *(v0 + 152);

    (*(v20 + 8))(v33, v44);
  }

  if (*(v43 + v45))
  {

    sub_2613A179C();
  }

  *(v43 + v45) = 0;

  v34 = *(v0 + 8);

  return v34(1);
}

uint64_t sub_26131AB70()
{

  return MEMORY[0x2822009F8](sub_261324928, 0, 0);
}

void sub_26131AC88(uint64_t a1, void *a2, const char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_6;
  }

  v34 = a3;
  v19 = *a2;
  v20 = Strong;
  swift_beginAccess();
  sub_26125A870(v20 + v19, v13, &qword_27FEA05F8, &unk_2613AC8D0);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_6:
    sub_26124C718(v13, &qword_27FEA05F8, &unk_2613AC8D0);
    return;
  }

  (*(v15 + 32))(v17, v13, v14);
  v21 = sub_26129B5FC();
  sub_26125A870(v21, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v7, 1, v22) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v33 = a2;
    v24 = sub_2613A122C();
    v25 = sub_2613A1D7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v32 = v24;
      v27 = v26;
      *v26 = 0;
      _os_log_impl(&dword_261243000, v32, v25, v34, v26, 2u);
      v28 = v27;
      v24 = v32;
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v23 + 8))(v7, v22);
    a2 = v33;
  }

  v35 = 0;
  sub_2613A1BDC();
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  (*(v15 + 8))(v17, v14);
  if (v29)
  {
    (*(v15 + 56))(v11, 1, 1, v14);
    v30 = *a2;
    swift_beginAccess();
    sub_2613242C8(v11, v29 + v30);
    swift_endAccess();
  }
}

uint64_t sub_26131B0C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *a3;
  swift_beginAccess();
  sub_2613242C8(v8, a2 + v11);
  return swift_endAccess();
}

uint64_t sub_26131B1F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v5 + 24) = swift_task_alloc();
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131B2A4, 0, 0);
}

uint64_t sub_26131B2A4()
{
  v1 = *(v0 + 32);
  v2 = sub_26129B5FC();
  *(v0 + 40) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 48) = v3;
  v4 = *(v3 - 8);
  *(v0 + 56) = v4;
  v5 = *(v4 + 48);
  *(v0 + 64) = v5;
  *(v0 + 72) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 32), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = sub_2613A122C();
    v8 = sub_2613A1D7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v10;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v9[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession];

      _os_log_impl(&dword_261243000, v7, v8, "uiFinishedCleanup: issuer=%{BOOL}d, closeSession=%{BOOL}d", v11, 0xEu);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {

      v7 = *(v0 + 16);
    }

    v12 = *(v0 + 32);

    (*(v4 + 8))(v12, v3);
  }

  if (*(*(v0 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession))
  {
    sub_261317CBC(*(v0 + 88));

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_26131B53C;
    v16 = *(v0 + 88);

    return sub_26131A1F0(v16);
  }
}

uint64_t sub_26131B53C(char a1)
{
  *(*v1 + 89) = a1;

  return MEMORY[0x2822009F8](sub_26131B63C, 0, 0);
}

uint64_t sub_26131B63C()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    sub_26125A870(*(v0 + 40), v3, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1(v3, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 24), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v4 = sub_2613A122C();
      v5 = sub_2613A1D8C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_261243000, v4, v5, "timed out waiting for finishedContinuation", v6, 2u);
        MEMORY[0x266701350](v6, -1, -1);
      }

      v7 = *(v0 + 48);
      v8 = *(v0 + 56);
      v9 = *(v0 + 24);

      (*(v8 + 8))(v9, v7);
    }
  }

  sub_261317CBC(*(v0 + 88));

  v10 = *(v0 + 8);

  return v10();
}

id sub_26131B7B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v11 = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "pinValidateSession", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    v11 = (*(v10 + 8))(v7, v9);
  }

  v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))(v11);
  if (v15)
  {
    v16 = v15;
    v17 = sub_26125B314(*(v15 + 64), *(v15 + 72));
    if (v17)
    {
      v18 = v17;
      v19 = sub_2613A1C1C();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v16;
      v20[5] = v18;
      v20[6] = v1;
      v21 = v1;
      sub_261266800(0, 0, v4, &unk_2613AC968, v20);
    }
  }

  return [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) updateSessionEventWithSessionEvent_];
}

uint64_t sub_26131BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v7 = sub_26139FC1C();
  v6[69] = v7;
  v6[70] = *(v7 - 8);
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131BB7C, 0, 0);
}

uint64_t sub_26131BB7C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  type metadata accessor for SessionTask(0);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D43908], v3);

  v9 = sub_2613271E0(v6, v1, 0, 0);
  v0[72] = v9;
  v10 = swift_allocObject();
  v0[73] = v10;
  *(v10 + 16) = v4;
  v11 = v4;
  v12 = sub_26125A798();
  v15 = (*(*v9 + 296) + **(*v9 + 296));
  v13 = swift_task_alloc();
  v0[74] = v13;
  *v13 = v0;
  v13[1] = sub_26131BD88;

  return v15(v0 + 26, v12 & 1, sub_2613241D0, v10);
}

uint64_t sub_26131BD88()
{

  return MEMORY[0x2822009F8](sub_26131BEBC, 0, 0);
}

uint64_t sub_26131BEBC()
{
  v1 = *(v0 + 544);
  v3 = *(v0 + 224);
  v2 = *(v0 + 240);
  *(v0 + 160) = v3;
  *(v0 + 176) = v2;
  *(v0 + 185) = *(v0 + 249);
  v4 = *(v0 + 208);
  *(v0 + 144) = v4;
  *(v0 + 400) = v4;
  *(v0 + 416) = v3;
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 441) = *(v0 + 185);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
  sub_26124A238(sub_2613241F0, v5, v6, v0 + 336);

  v7 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v7;
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 505) = *(v0 + 377);
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  sub_26124A42C(sub_261324234, v8, v6, v0 + 272);
  sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);

  v9 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v9;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_26124C718(v0 + 80, &qword_27FEA0610, &qword_2613ACB20);
  v10 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v10;
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 57) = *(v0 + 313);
  sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

  v11 = *(v0 + 8);

  return v11();
}

id sub_26131C0A0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = *a1;
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v11, v12, "Session validation failed: %@", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v6, v9);
  }

  return [*(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) updateSessionEventWithSessionEvent_];
}

uint64_t sub_26131C2D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    result = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "pinUIDidLoad", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    result = (*(v7 + 8))(v4, v6);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v12)
  {
    v13 = *(*v12 + 488);

    v13(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v15)
  {
    v16 = *(*v15 + 272);

    v16(v17);
  }

  return result;
}

uint64_t sub_26131C510()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    result = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "pinAuthNeeded", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    result = (*(v7 + 8))(v4, v6);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v12)
  {
    v13 = *(*v12 + 360);

    v13(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v15)
  {
    v16 = *(*v15 + 240);

    v16(v17);
  }

  return result;
}

uint64_t sub_26131C740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    result = sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "pinAuthResult", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    result = (*(v13 + 8))(v10, v12);
  }

  v18 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v18)
  {
    v19 = *(*v18 + 368);

    v19(a1, a2, a3 & 1);
  }

  v20 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v20)
  {
    v21 = *(*v20 + 248);

    v21(a1, a2, a3 & 1);
  }

  return result;
}

id sub_26131C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "pinDataReceived", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  result = [*(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
  v18 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v18)
  {
    v19 = *(*v18 + 496);

    v19(a1, a2, a3);
  }

  v20 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v20)
  {
    v21 = *(*v20 + 280);

    v21(a1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    result = sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_261243000, v15, v16, "reportPINError: %@", v18, 0xCu);
      sub_26124C718(v19, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v19, -1, -1);
      v22 = v18;
      a3 = v28;
      MEMORY[0x266701350](v22, -1, -1);
    }

    result = (*(v13 + 8))(v10, v12);
  }

  v23 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v23)
  {
    v24 = *(*v23 + 504);

    v24(a1, a2, a3);
  }

  v25 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v25)
  {
    v26 = *(*v25 + 288);

    v26(a1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CEF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v4)
  {
    v7 = result;
    v8 = *(*v4 + 472);

    v8(v7 & 1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CFA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v3)
  {
    v5 = result;
    v6 = *(*v3 + 480);

    v6(v5 & 1, a2);
  }

  return result;
}

void sub_26131D050(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v40 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = [objc_opt_self() server];
  if (v14)
  {
    v15 = v14;
    v43 = v8;
    v16 = a1;
    v17 = sub_26129B5FC();
    sub_26125A870(v17, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (v20(v13, 1, v18) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v42 = v19;
      v24 = sub_2613A122C();
      v25 = sub_2613A1D9C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41 = v18;
        v27 = v26;
        *v26 = 67109120;
        *(v26 + 4) = v16 & 1;
        _os_log_impl(&dword_261243000, v24, v25, "setVoiceOver request - %{BOOL}d", v26, 8u);
        v28 = v27;
        v18 = v41;
        MEMORY[0x266701350](v28, -1, -1);
      }

      v19 = v42;
      (*(v42 + 8))(v13, v18);
    }

    v29 = [v15 voiceOverEnabled];
    if (v16)
    {
      if ((v29 & 1) == 0)
      {
        v30 = v43;
        sub_26125A870(v17, v43, &qword_27FE9F560, &qword_2613A3CB0);
        if (v20(v30, 1, v18) == 1)
        {
          sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v34 = sub_2613A122C();
          v35 = sub_2613A1D9C();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_261243000, v34, v35, "setVoiceOver - enable", v36, 2u);
            MEMORY[0x266701350](v36, -1, -1);
          }

          (*(v19 + 8))(v30, v18);
        }

        [v15 setVoiceOverEnabled_];
      }
    }

    else if (v29)
    {
      sub_26125A870(v17, v11, &qword_27FE9F560, &qword_2613A3CB0);
      if (v20(v11, 1, v18) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v37 = sub_2613A122C();
        v38 = sub_2613A1D9C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_261243000, v37, v38, "setVoiceOver - disable", v39, 2u);
          MEMORY[0x266701350](v39, -1, -1);
        }

        (*(v19 + 8))(v11, v18);
      }

      [v15 setVoiceOverEnabled_];
    }
  }

  else
  {
    v21 = sub_26129B7C4();
    sub_26125A870(v21, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v5, 1, v22) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "AX VoiceOver: Could not retrieve AX server", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      (*(v23 + 8))(v5, v22);
    }
  }
}

void *sub_26131D5E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B5FC();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_26125A798();
    v8 = sub_261291AA8();
    sub_26129BC3C(v7 & 1, v0, 0xD000000000000012, 0x80000002613BCBD0, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  return sub_26130EFF0(2, 0);
}

uint64_t sub_26131D770()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B5FC();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v8 = sub_26125A798();
  v9 = sub_261291AA8();
  sub_26129BC3C(v8 & 1, v0, 0x6469444955676572, 0xEE00292864616F4CLL, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

void sub_26131D8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_26139F64C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F4DC();
  sub_26139F5DC();
  (*(v12 + 8))(v14, v11);
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = sub_26125A798();
    v19 = sub_261291AA8();
    sub_26129BC3C(v18 & 1, v4, 0xD000000000000021, 0x80000002613BCBF0, v19, v20);

    (*(v17 + 8))(v10, v16);
  }

  v21 = sub_26139F68C();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);
    if (v25)
    {

      v26 = sub_26139F69C();
      (*(*v25 + 208))(a1, a2, a3, v26 & 1, *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager));
    }

    else
    {
      v27 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
      v28 = sub_2613A189C();
      [v27 notifyRegUIResultWithResult_];
    }
  }

  else
  {
    sub_26130EFF0(2, 0);
  }
}

void *sub_26131DC10(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_2613A211C();

    strcpy(v23, "userCancelled ");
    HIBYTE(v23[1]) = -18;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    v22 = v2;
    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v11, v12);

    MEMORY[0x2666FFEA0](0x617453676572202CLL, 0xEC00000020737574);
    if (a2)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a2)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v13, v14);

    v15 = v23[0];
    v16 = v23[1];
    v17 = sub_26125A798();
    sub_26129BC3C(v17 & 1, v22, 0xD000000000000027, 0x80000002613BCC20, v15, v16);

    (*(v10 + 8))(v7, v9);
  }

  if (a1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  return sub_26130EFF0(v19, 0);
}

uint64_t sub_26131DE7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v24 = v8;
    v15 = sub_26125A798();
    v16 = sub_261291AA8();
    v25 = v11;
    v8 = v24;
    sub_26129BC3C(v15 & 1, v1, 0xD00000000000001BLL, 0x80000002613BCC50, v16, v17);
    v11 = v25;

    (*(v13 + 8))(v10, v12);
  }

  v18 = *&v1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask];
  if (v18)
  {
    v1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup] = 1;
    v19 = sub_2613A1C1C();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v1;

    v21 = v1;
    sub_261266800(0, 0, v4, &unk_2613AC980, v20);
  }

  else
  {
    sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
    if (v14(v8, 1, v12) == 1)
    {
      return sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = sub_26125A798();
      sub_26129BC3C(v23 & 1, v1, 0xD00000000000001BLL, 0x80000002613BCC50, 0xD00000000000001ALL, 0x80000002613BCC70);
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t sub_26131E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v8 = (*(*a4 + 216) + **(*a4 + 216));
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_26131E330;

  return v8();
}

uint64_t sub_26131E330()
{

  return MEMORY[0x2822009F8](sub_26131E42C, 0, 0);
}

uint64_t sub_26131E42C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = 0;

  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for PaymentTerminalService(uint64_t a1)
{
  result = qword_27FEAE330;
  if (!qword_27FEAE330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26131E4F4(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v29 = a1;
  v7 = sub_26139F64C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_26129B5FC();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v28 = a3;

    v17 = sub_2613A122C();
    v18 = sub_2613A1D8C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v22 = a2;
      v23 = v21;
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_26124C11C(v29, v22, &v30);
      _os_log_impl(&dword_261243000, v17, v18, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x266701350](v23, -1, -1);
      v24 = v20;
      a4 = v27;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    LOBYTE(a3) = v28;
  }

  sub_26139F42C();
  sub_26139F5BC();
  v25 = *(v8 + 8);
  v25(v10, v7);
  sub_26139F5FC();
  sub_26139F5BC();
  v25(v10, v7);
  return (*(a4 + 16))(a4, 0, a3 & 1);
}

void sub_26131E7EC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v166 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v165 = &v155 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v164 = &v155 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v163 = &v155 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v162 = &v155 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v161 = &v155 - v16;
  MEMORY[0x28223BE20](v15);
  v160 = &v155 - v17;
  v172 = sub_26139FDCC();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v177 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_26139FAEC();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v173 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26139FB7C();
  v175 = *(v20 - 8);
  v176 = v20;
  MEMORY[0x28223BE20](v20);
  v174 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26139F64C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v167 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v168 = &v155 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v181 = &v155 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v155 - v33;
  _Block_copy(a2);
  _Block_copy(a2);
  _Block_copy(a2);
  v180 = sub_26129B5FC();
  sub_26125A870(v180, v34, &qword_27FE9F560, &qword_2613A3CB0);
  v35 = sub_2613A124C();
  v36 = *(v35 - 8);
  v37 = v36 + 48;
  v179 = *(v36 + 48);
  if (v179(v34, 1, v35) == 1)
  {
    sub_26124C718(v34, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v178 = v25;
    v183 = v23;
    v38 = sub_26125A798();
    v39 = sub_261291AA8();
    v40 = v38 & 1;
    v37 = v36 + 48;
    v23 = v183;
    v25 = v178;
    sub_26129BC3C(v40, a1, 0xD00000000000001ALL, 0x80000002613BC870, v39, v41);

    (*(v36 + 8))(v34, v35);
  }

  sub_26139F5FC();
  sub_26139F5DC();
  v42 = *(v23 + 8);
  v42(v25, v22);
  sub_26139F42C();
  sub_26139F5DC();
  v183 = v23 + 8;
  v42(v25, v22);
  v182 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 82);
  if (*(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    _Block_copy(a2);
    sub_26131E4F4(0x7469746E65206F6ELL, 0xEE00746E656D656CLL, v182, a2);
    _Block_release(a2);
    goto LABEL_76;
  }

  v43 = v181;
  sub_26125A870(v180, v181, &qword_27FE9F560, &qword_2613A3CB0);
  if (v179(v43, 1, v35) == 1)
  {
    sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v159 = v42;
    v44 = sub_2613A122C();
    v45 = sub_2613A1D7C();
    if (os_log_type_enabled(v44, v45))
    {
      LODWORD(v178) = v45;
      v158 = v37;
      v157 = a1;
      v46 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v185 = v156;
      *v46 = 136315906;
      v47 = sub_2612E6298();
      v48 = *v47;
      v49 = v47[1];

      v50 = sub_26124C11C(v48, v49, &v185);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = sub_2612E62A4();
      v52 = *v51;
      v53 = v51[1];

      v54 = sub_26124C11C(v52, v53, &v185);

      *(v46 + 14) = v54;
      *(v46 + 22) = 2080;
      v55 = (*sub_2612E788C() + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_sprVersionCache);
      swift_beginAccess();
      if (v55[1])
      {
        v56 = *v55;
        v57 = v55[1];
      }

      else
      {
        v57 = 0xE700000000000000;
        v56 = 0x6E776F6E6B6E75;
      }

      v58 = sub_26124C11C(v56, v57, &v185);

      *(v46 + 24) = v58;
      *(v46 + 32) = 1024;
      v59 = sub_2613A0C2C();
      LOBYTE(v58) = v59();

      *(v46 + 34) = v58 & 1;
      _os_log_impl(&dword_261243000, v44, v178, "\nCOMPONENTS: ------------------------------------\nmd: %s (%s)\nspr: %s\ninternal: %{BOOL}d\n-------------------------------------------------", v46, 0x26u);
      v60 = v156;
      swift_arrayDestroy();
      MEMORY[0x266701350](v60, -1, -1);
      MEMORY[0x266701350](v46, -1, -1);

      a1 = v157;
      v37 = v158;
    }

    else
    {
    }

    (*(v36 + 8))(v181, v35);
    v42 = v159;
  }

  v61 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId + 8);
  v62 = HIBYTE(v61) & 0xF;
  v181 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId);
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v181 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    _Block_copy(a2);
    sub_26131E4F4(0xD00000000000001DLL, 0x80000002613BC830, v182, a2);
    _Block_release(a2);
    (*(v169 + 104))(v173, *MEMORY[0x277D43868], v170);
    (*(v171 + 104))(v177, *MEMORY[0x277D43970], v172);
    v76 = [objc_opt_self() processInfo];
    v77 = [v76 processName];

    sub_2613A18CC();
    v75 = v174;
    goto LABEL_26;
  }

  v178 = v25;
  v63 = a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo;
  v64 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo + 8);
  if (!v64)
  {
    goto LABEL_24;
  }

  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = *v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {
LABEL_24:
    _Block_copy(a2);
    sub_26131E4F4(0xD000000000000014, 0x80000002613BC7D0, v182, a2);
    _Block_release(a2);
    (*(v169 + 104))(v173, *MEMORY[0x277D43868], v170);
    (*(v171 + 104))(v177, *MEMORY[0x277D43968], v172);
    v73 = [objc_opt_self() processInfo];
    v74 = [v73 processName];

    sub_2613A18CC();
    v75 = v174;
LABEL_26:
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v175 + 8))(v75, v176);
    goto LABEL_76;
  }

  v173 = *v63;
  v174 = v64;
  v175 = v61;
  v158 = v37;
  v177 = v35;
  v157 = a1;
  v66 = v178;
  sub_26139F42C();
  sub_26139F5BC();
  v42(v66, v22);
  sub_26139F51C();
  sub_26139F5DC();
  v42(v66, v22);
  LODWORD(v172) = sub_26128F68C(*(v63 + 16));
  sub_26139F51C();
  sub_26139F5BC();
  v176 = v22;
  v42(v66, v22);
  v67 = v160;
  sub_26128FAFC(46, v160);
  v68 = sub_26139EF7C();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if (v70(v67, 1, v68) == 1)
  {
    sub_26124C718(v67, &qword_27FE9F220, qword_2613A5530);
    v71 = 0;
    v72 = 0xE000000000000000;
  }

  else
  {
    v71 = sub_26139EEAC();
    v72 = v78;
    (*(v69 + 8))(v67, v68);
  }

  v187 = v71;
  v188 = v72;
  v79 = v161;
  sub_26128FAFC(47, v161);
  if (v70(v79, 1, v68) == 1)
  {
    sub_26124C718(v79, &qword_27FE9F220, qword_2613A5530);
    v80 = 0;
    v81 = 0xE000000000000000;
  }

  else
  {
    v82 = sub_26139EEAC();
    v81 = v83;
    (*(v69 + 8))(v79, v68);
    v80 = v82;
  }

  MEMORY[0x2666FFEA0](v80, v81);

  v84 = v162;
  sub_26128FAFC(48, v162);
  if (v70(v84, 1, v68) == 1)
  {
    sub_26124C718(v84, &qword_27FE9F220, qword_2613A5530);
    v85 = 0;
    v86 = 0xE000000000000000;
  }

  else
  {
    v87 = sub_26139EEAC();
    v86 = v88;
    (*(v69 + 8))(v84, v68);
    v85 = v87;
  }

  MEMORY[0x2666FFEA0](v85, v86);

  v89 = v163;
  sub_26128FAFC(49, v163);
  if (v70(v89, 1, v68) == 1)
  {
    sub_26124C718(v89, &qword_27FE9F220, qword_2613A5530);
    v90 = 0;
    v91 = 0xE000000000000000;
  }

  else
  {
    v92 = sub_26139EEAC();
    v91 = v93;
    (*(v69 + 8))(v89, v68);
    v90 = v92;
  }

  MEMORY[0x2666FFEA0](v90, v91);

  v94 = v164;
  sub_26128FAFC(50, v164);
  if (v70(v94, 1, v68) == 1)
  {
    sub_26124C718(v94, &qword_27FE9F220, qword_2613A5530);
    v95 = 0;
    v96 = 0xE000000000000000;
  }

  else
  {
    v97 = sub_26139EEAC();
    v96 = v98;
    (*(v69 + 8))(v94, v68);
    v95 = v97;
  }

  MEMORY[0x2666FFEA0](v95, v96);

  v99 = v165;
  sub_26128FAFC(52, v165);
  if (v70(v99, 1, v68) == 1)
  {
    sub_26124C718(v99, &qword_27FE9F220, qword_2613A5530);
    v171 = 0;
    v100 = 0xE000000000000000;
  }

  else
  {
    v171 = sub_26139EEAC();
    v100 = v101;
    (*(v69 + 8))(v99, v68);
  }

  v102 = v166;
  sub_26128FAFC(51, v166);
  if (v70(v102, 1, v68) == 1)
  {
    sub_26124C718(v102, &qword_27FE9F220, qword_2613A5530);
    v103 = 0;
    v104 = 0xE000000000000000;
  }

  else
  {
    v105 = sub_26139EEAC();
    v104 = v106;
    (*(v69 + 8))(v102, v68);
    v103 = v105 & 0xFFFFFFFFFFFFLL;
  }

  v107 = v168;
  v108 = v172;
  sub_26125A870(v180, v168, &qword_27FE9F560, &qword_2613A3CB0);
  v109 = v177;
  v110 = v179(v107, 1, v177);
  v159 = v42;
  if (v110 == 1)
  {

    sub_26124C718(v107, &qword_27FE9F560, &qword_2613A3CB0);
    v111 = v157;
  }

  else
  {

    v112 = sub_2613A122C();
    v113 = sub_2613A1D9C();

    if (os_log_type_enabled(v112, v113))
    {
      v169 = v103;
      LODWORD(v170) = v113;
      v172 = v36;
      v114 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v184 = v166;
      *v114 = 136447490;
      LOBYTE(v185) = v108;
      v115 = sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0);
      v117 = sub_26124C11C(v115, v116, &v184);

      *(v114 + 4) = v117;
      *(v114 + 12) = 2080;
      swift_beginAccess();
      v118 = v187 & 0xFFFFFFFFFFFFLL;
      if ((v188 & 0x2000000000000000) != 0)
      {
        v118 = HIBYTE(v188) & 0xF;
      }

      if (v118)
      {
        v119 = 0xD000000000000017;
      }

      else
      {
        v119 = 0;
      }

      v120 = 0xE000000000000000;
      if (v118)
      {
        v121 = 0x80000002613BC810;
      }

      else
      {
        v121 = 0xE000000000000000;
      }

      v122 = sub_26124C11C(v119, v121, &v184);

      *(v114 + 14) = v122;
      *(v114 + 22) = 2082;
      LOBYTE(v185) = BYTE2(v108);
      v123 = sub_261290024(&type metadata for TOSEnvironmentContext, &off_2873B6E10);
      v125 = sub_26124C11C(v123, v124, &v184);

      *(v114 + 24) = v125;
      *(v114 + 32) = 2080;
      v126 = HIBYTE(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v126 = v171 & 0xFFFFFFFFFFFFLL;
      }

      if (v126)
      {
        v185 = 540945709;
        v186 = 0xE400000000000000;
        MEMORY[0x2666FFEA0]();
        v127 = v185;
        v120 = v186;
      }

      else
      {
        v127 = 0;
      }

      v128 = sub_26124C11C(v127, v120, &v184);

      *(v114 + 34) = v128;
      *(v114 + 42) = 2082;
      LOBYTE(v185) = BYTE1(v108);
      v129 = sub_261290024(&type metadata for WCSEnvironmentContext, &off_2873B6DE8);
      v131 = sub_26124C11C(v129, v130, &v184);

      *(v114 + 44) = v131;
      *(v114 + 52) = 2080;

      v132 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v132 = v169;
      }

      if (v132)
      {
        v185 = 540945709;
        v186 = 0xE400000000000000;
        MEMORY[0x2666FFEA0](v171, v100);

        v133 = v185;
        v134 = v186;
      }

      else
      {

        v133 = 0;
        v134 = 0xE000000000000000;
      }

      v111 = v157;
      v109 = v177;
      v36 = v172;
      v135 = sub_26124C11C(v133, v134, &v184);

      *(v114 + 54) = v135;
      _os_log_impl(&dword_261243000, v112, v170, "\nENVIRONMENT: ------------------------------------\nsps: %{public}s %s\ntos: %{public}s %s\nwcs: %{public}s %s\n-------------------------------------------------", v114, 0x3Eu);
      v136 = v166;
      swift_arrayDestroy();
      MEMORY[0x266701350](v136, -1, -1);
      MEMORY[0x266701350](v114, -1, -1);
    }

    else
    {

      v111 = v157;
    }

    (*(v36 + 8))(v168, v109);
  }

  type metadata accessor for PaymentTerminalContext(0);
  v137 = *(v111 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId);
  v138 = *(v111 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId + 8);

  v139 = v175;

  v140 = v174;

  v141 = sub_2613091D8(v137, v138, v181, v139, v173, v140, v108 & 0xFFFFFF);
  type metadata accessor for AnalyticsTask(0);

  v143 = sub_2613913B4(v142);
  (*((*MEMORY[0x277D85000] & *v111) + 0x1B8))(v143);
  v144 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_context;
  swift_beginAccess();
  *(v111 + v144) = v141;

  v145 = v178;
  sub_26139F5FC();
  sub_26139F5BC();
  v159(v145, v176);
  v146 = v167;
  sub_26125A870(v180, v167, &qword_27FE9F560, &qword_2613A3CB0);
  if (v179(v146, 1, v109) == 1)
  {
    sub_26124C718(v146, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v147 = sub_2613A122C();
    v148 = sub_2613A1D9C();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v184 = v150;
      *v149 = 136446210;
      v151 = *(v141 + 64);
      v152 = *(v141 + 72);

      v153 = sub_26124C11C(v151, v152, &v184);

      *(v149 + 4) = v153;
      v109 = v177;
      _os_log_impl(&dword_261243000, v147, v148, "context created for %{public}s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v150);
      MEMORY[0x266701350](v150, -1, -1);
      v154 = v149;
      v146 = v167;
      MEMORY[0x266701350](v154, -1, -1);
    }

    (*(v36 + 8))(v146, v109);
  }

  a2[2](a2, 1, v182);

LABEL_76:
  _Block_release(a2);
  _Block_release(a2);
  _Block_release(a2);
}

void sub_26131FFFC(void *a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_26139FDCC();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139FAEC();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139FB7C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = sub_26129B5FC();
  sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v17, 1, v19) == 1)
  {
    v22 = sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v43 = v20;
    v44 = a1;
    v23 = v15;
    v24 = v12;
    v25 = v19;
    v26 = sub_26125A798();
    v27 = sub_261291AA8();
    v28 = v26 & 1;
    v19 = v25;
    v12 = v24;
    v15 = v23;
    v20 = v43;
    a1 = v44;
    sub_26129BC3C(v28, v44, 0xD00000000000001ALL, 0x80000002613BC8B0, v27, v29);

    v22 = (*(v20 + 8))(v17, v19);
  }

  if (*(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    sub_26125A870(v18, v15, &qword_27FE9F560, &qword_2613A3CB0);
    if (v21(v15, 1, v19) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "no entitlement", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      (*(v20 + 8))(v15, v19);
    }

    v34 = objc_allocWithZone(sub_26139F2CC());
    v30 = sub_26139F2DC();
    (*(v54 + 16))(v54, 0, v30);
    goto LABEL_13;
  }

  if ((*((*MEMORY[0x277D85000] & *a1) + 0x2A0))(v22))
  {

    v30 = sub_2613A189C();
    (*(v54 + 16))(v54, v30, 0);

LABEL_13:

    return;
  }

  sub_26125A870(v18, v12, &qword_27FE9F560, &qword_2613A3CB0);
  if (v21(v12, 1, v19) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = sub_2613A122C();
    v36 = sub_2613A1D8C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261243000, v35, v36, "no context", v37, 2u);
      MEMORY[0x266701350](v37, -1, -1);
    }

    (*(v20 + 8))(v12, v19);
  }

  v38 = objc_allocWithZone(sub_26139F2CC());
  v39 = sub_26139F2DC();
  (*(v54 + 16))(v54, 0, v39);

  (*(v45 + 104))(v50, *MEMORY[0x277D43868], v46);
  (*(v47 + 104))(v53, *MEMORY[0x277D43978], v48);
  v40 = [objc_opt_self() processInfo];
  v41 = [v40 processName];

  sub_2613A18CC();
  v42 = v49;
  sub_26139FB6C();
  sub_26139FDBC();
  (*(v51 + 8))(v42, v52);
}

void sub_261320744(uint64_t a1, uint64_t a2, void *a3, void (**a4)(const void *, void, void *))
{
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v45 = a4;
  _Block_copy(a4);
  v44 = sub_26129B5FC();
  sub_26125A870(v44, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v15, 1, v17) == 1)
  {
    v20 = sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = v46;
  }

  else
  {
    v43 = v13;
    v22 = sub_26125A798();
    v41 = v19;
    v23 = a1;
    v24 = a2;
    v25 = v10;
    v26 = v18;
    v27 = v22;
    v28 = sub_261291AA8();
    v42 = v17;
    v29 = v27 & 1;
    v18 = v26;
    v10 = v25;
    a2 = v24;
    a1 = v23;
    v13 = v43;
    v30 = v46;
    sub_26129BC3C(v29, v46, 0xD000000000000015, 0x80000002613BC9B0, v28, v31);
    v17 = v42;

    v20 = (*(v18 + 8))(v15, v17);
    v21 = v30;
    v19 = v41;
  }

  if (*(v21 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 83) == 1)
  {
    if ((*((*MEMORY[0x277D85000] & *v21) + 0x2A0))(v20))
    {

      sub_261309DC8(v32, a1, a2, sub_2613241AC, v16, v47);
      sub_261309590();

      sub_26131FFA8(v47);

      return;
    }

    sub_26125A870(v44, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v19(v10, 1, v17) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "no context", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v18 + 8))(v10, v17);
    }
  }

  else
  {
    sub_26125A870(v44, v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (v19(v13, 1, v17) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261243000, v33, v34, "no entitlement", v35, 2u);
        MEMORY[0x266701350](v35, -1, -1);
      }

      (*(v18 + 8))(v13, v17);
    }
  }

  v39 = objc_allocWithZone(sub_26139F2CC());
  v40 = sub_26139F2DC();
  v45[2](v45, 0, v40);
}

void sub_261320C4C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v29 = a3;
  v30 = a1;
  v8 = sub_26139F64C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = a2;
  v28 = a4;

  v18 = sub_2613A122C();
  v19 = sub_2613A1D8C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = a5;
    v22 = v21;
    v31 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_26124C11C(v27, v29, &v31);
    _os_log_impl(&dword_261243000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v23 = v22;
    a5 = v26;
    MEMORY[0x266701350](v23, -1, -1);
    MEMORY[0x266701350](v20, -1, -1);
  }

  (*(v17 + 8))(v14, v16);
  if (v28)
  {
LABEL_7:
    sub_26139F44C();
    sub_26139F5BC();
    (*(v9 + 8))(v11, v8);
  }

LABEL_8:
  sub_26139F60C();
  sub_26139F5BC();
  (*(v9 + 8))(v11, v8);
  v24 = objc_allocWithZone(sub_26139F2CC());
  v25 = sub_26139F2DC();
  (*(a5 + 16))(a5, 0, v25);
}

void sub_261320F84(void *a1, void *a2, const void *a3)
{
  v81 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v74 - v6;
  v78 = sub_26139FC1C();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26139FDCC();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26139FAEC();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26139FB7C();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26139F64C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  _Block_copy(a3);
  v95 = swift_allocObject();
  *(v95 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v84 = sub_26129B5FC();
  sub_26125A870(v84, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  v82 = *(v24 + 48);
  v83 = v24 + 48;
  if (v82(v22, 1, v23) == 1)
  {
    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v79 = a3;
    v25 = sub_26125A798();
    v26 = sub_261291AA8();
    a3 = v79;
    sub_26129BC3C(v25 & 1, a2, 0xD00000000000001BLL, 0x80000002613BCA10, v26, v27);

    (*(v24 + 8))(v22, v23);
  }

  sub_26139F60C();
  sub_26139F5DC();
  v28 = *(v15 + 8);
  v28(v17, v14);
  sub_26139F44C();
  sub_26139F5DC();
  v29 = (v28)(v17, v14);
  if (*(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    _Block_copy(a3);
    sub_261320C4C(0, 0x7469746E65206F6ELL, 0xEE00746E656D656CLL, 1, a3);
    _Block_release(a3);
LABEL_20:

    goto LABEL_21;
  }

  v30 = v24;
  v31 = v23;
  v32 = (*((*MEMORY[0x277D85000] & *a2) + 0x2A0))(v29);
  if (!v32)
  {
    _Block_copy(a3);
    sub_261320C4C(0, 0x65746E6F63206F6ELL, 0xEA00000000007478, 1, a3);
    _Block_release(a3);
    (*(v86 + 104))(v91, *MEMORY[0x277D43868], v87);
    (*(v88 + 104))(v94, *MEMORY[0x277D43978], v89);
    v37 = [objc_opt_self() processInfo];
    v38 = [v37 processName];

    sub_2613A18CC();
    v39 = v90;
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v92 + 8))(v39, v93);
    goto LABEL_20;
  }

  v33 = v32;
  sub_2613A121C();
  if ((sub_2613A10FC() & 1) == 0)
  {
    _Block_copy(a3);
    sub_261320C4C(11, 0xD000000000000011, 0x80000002613BC9F0, 1, a3);
    _Block_release(a3);

    goto LABEL_20;
  }

  v34 = *(v33 + 4);
  v92 = v14;
  v93 = v34;
  v94 = v33;

  LODWORD(v93) = sub_2613A117C();

  v35 = v85;
  sub_26125A870(v84, v85, &qword_27FE9F560, &qword_2613A3CB0);
  v36 = v82(v35, 1, v31);
  v75 = v17;
  if (v36 == 1)
  {
    sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v40 = sub_2613A122C();
    v41 = sub_2613A1D9C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67240192;
      *(v42 + 4) = v93 & 1;
      _os_log_impl(&dword_261243000, v40, v41, "Diagnostics mode = %{BOOL,public}d", v42, 8u);
      MEMORY[0x266701350](v42, -1, -1);
    }

    (*(v30 + 8))(v35, v31);
  }

  v43 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
  v44 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v43);
  (*(v44 + 48))(v93 & 1, v43, v44);
  v93 = a2;
  v45 = sub_26130F3D4();
  v46 = v94;
  if (v45 & 1) != 0 || (v47 = sub_2612B4F84(), v48 = *(**v47 + 120), v49 = , v50 = v48(v49), , (v50) && (v51 = v80, sub_26139FEBC(), v52 = sub_26130F630(v46, v51), (*(v77 + 8))(v51, v78), (v52 & 1) == 0))
  {
    _Block_copy(a3);
    sub_261320C4C(16, 0x6920726564616572, 0xEE00797375622073, 1, a3);
    _Block_release(a3);

    goto LABEL_20;
  }

  v53 = v75;
  sub_26139F44C();
  sub_26139F5BC();
  v28(v53, v92);
  v54 = type metadata accessor for SessionTask(0);

  v55 = v80;
  v56 = sub_26139FEBC();
  v57 = v93;
  v58 = (*((*MEMORY[0x277D85000] & *v93) + 0x1B0))(v56);
  v59 = sub_2613271E0(v46, v55, v58, v57);
  v60 = *v47;
  v96[3] = v54;
  v96[4] = &off_2873BD1E8;
  v96[0] = v59;
  v61 = *(*v60 + 112);

  v61(v96);
  v79 = a3;

  __swift_destroy_boxed_opaque_existential_0Tm(v96);
  v62 = sub_2613A1C1C();
  v63 = *(*(v62 - 8) + 56);
  v64 = v76;
  v63(v76, 1, 1, v62);
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v66 = v93;
  v65[4] = v59;
  v65[5] = v66;

  v67 = v66;
  sub_261266800(0, 0, v64, &unk_2613ACA88, v65);

  v63(v64, 1, 1, v62);
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v59;
  v68[5] = v67;
  v69 = v81;
  v70 = v94;
  v71 = v95;
  v68[6] = v81;
  v68[7] = v70;
  v68[8] = sub_261323FD8;
  v68[9] = v71;

  v72 = v67;
  v73 = v69;

  sub_261266800(0, 0, v64, &unk_2613ACA90, v68);

  a3 = v79;
LABEL_21:
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_261321DDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26131B1F8(v4, v5, v6, v2, v3);
}

uint64_t sub_261321E78()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261319578(v3, v4, v5, v2);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261321F4C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26131BAB4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_261321FF4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26131E218(v4, v5, v6, v2, v3);
}

void sub_261322094(uint64_t a1)
{
  sub_2613221B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2613221B8(uint64_t a1)
{
  if (!qword_27FEA0608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0560, &unk_2613AC8C0);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA0608);
    }
  }
}

uint64_t sub_26132221C(char *a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  _Block_copy(a2);
  v41 = sub_26129B5FC();
  sub_26125A870(v41, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v40 = *(v15 + 48);
  v16 = v40(v12, 1, v14);
  v39 = v15;
  if (v16 == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v14;
    v38 = a1;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v19 = v17 & 1;
    v14 = v37;
    a1 = v38;
    sub_26129BC3C(v19, v38, 0xD00000000000001ELL, 0x80000002613BCA60, v18, v20);

    (*(v15 + 8))(v12, v14);
  }

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = sub_26127DF5C;
  v21[4] = v13;
  v22 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask];
  if (v22)
  {

    v23 = a1;

    if (swift_task_isCancelled())
    {
      sub_26125A870(v41, v10, &qword_27FE9F560, &qword_2613A3CB0);
      if (v40(v10, 1, v14) == 1)
      {
        sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v30 = v10;
        v31 = sub_2613A122C();
        v32 = sub_2613A1D7C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_261243000, v31, v32, "Transaction cancellation was already scheduled", v33, 2u);
          MEMORY[0x266701350](v33, -1, -1);
        }

        (*(v39 + 8))(v30, v14);
      }

      a2[2](a2, 0);
    }

    else
    {
      sub_2613A1C9C();
      v28 = sub_2613A1C1C();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v22;
      v29[5] = sub_261324934;
      v29[6] = v21;

      sub_261266800(0, 0, v6, &unk_2613ACA78, v29);
    }
  }

  else
  {
    v24 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
    if (v24)
    {
      v25 = *(*v24 + 296);

      v26 = a1;

      v27 = v25(0);
    }

    else
    {

      v34 = a1;
      v27 = 0;
    }

    a2[2](a2, v27 & 1);
  }
}

uint64_t sub_26132276C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(const void *, void, void *))
{
  v159 = a4;
  v149 = a2;
  v148 = a1;
  v147 = sub_26139F13C();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v7;
  v145 = v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v151 = v139 - v9;
  v158 = sub_26139F64C();
  v10 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v12 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v139 - v17;
  v19 = swift_allocObject();
  v156 = a5;
  v157 = v19;
  *(v19 + 16) = a5;
  _Block_copy(a5);
  v153 = sub_26129B5FC();
  sub_26125A870(v153, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v152 = *(v21 + 48);
  v22 = v152(v18, 1, v20);
  v155 = a3;
  v150 = v21;
  if (v22 == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = v12;
    v24 = v10;
    v25 = v20;
    v26 = sub_26125A798();
    v27 = sub_261291AA8();
    v28 = v26 & 1;
    v20 = v25;
    v10 = v24;
    v12 = v23;
    sub_26129BC3C(v28, v159, 0xD000000000000030, 0x80000002613BCB30, v27, v29);

    (*(v21 + 8))(v18, v20);
  }

  sub_26139F50C();
  sub_26139F5DC();
  v32 = *(v10 + 8);
  v30 = v10 + 8;
  v31 = v32;
  v33 = (v32)(v12, v158);
  v34 = MEMORY[0x277D85000];
  v35 = *((*MEMORY[0x277D85000] & *v159) + 0x1B0);
  v154 = (*MEMORY[0x277D85000] & *v159) + 432;
  v36 = (v35)(v33);
  if (v36)
  {
    sub_261397E34(v155);
  }

  if (*(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v64 = v158;
    v31(v12, v158);
    strcpy(&v163, "no entitlement");
    HIBYTE(v163) = -18;
    v65 = sub_261314DEC(&v163, &v160);
    (*((*v34 & *v159) + 0x2A0))(v65);

    sub_26139F47C();
    sub_26139F5DC();
    v31(v12, v64);
    sub_2612B45EC();
    v66 = swift_allocError();
    *v67 = 0;
    v68 = sub_26139EE6C();
    v156[2](v156, 0, v68);

    sub_26139F47C();
    sub_26139F5BC();
    v31(v12, v64);
LABEL_16:
    sub_261317CBC(1);
  }

  v37 = v20;
  v143 = v35;
  v38 = v16;
  v39 = *((*v34 & *v159) + 0x2A0);
  v40 = (*v34 & *v159) + 672;
  v41 = v39(v36);
  if (!v41)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v69 = v158;
    v31(v12, v158);
    *&v163 = 0x65746E6F63206F6ELL;
    *(&v163 + 1) = 0xEA00000000007478;
    v70 = sub_261314DEC(&v163, &v160);
    v39(v70);

    sub_26139F47C();
    sub_26139F5DC();
    v31(v12, v69);
    sub_2612B45EC();
    v71 = swift_allocError();
    *v72 = 0;
    v73 = sub_26139EE6C();
    v156[2](v156, 0, v73);

    sub_26139F47C();
    sub_26139F5BC();
    v31(v12, v69);
    goto LABEL_16;
  }

  v42 = v41;
  v141 = v39;
  v43 = sub_2613A121C();
  v44 = sub_2613A10EC();
  v142 = v42;
  if (v44)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v31(v12, v158);
    *&v163 = 0xD000000000000015;
    *(&v163 + 1) = 0x80000002613BCB10;
    v45 = sub_261314DEC(&v163, &v160);
    v46 = v141(v45);
    if (v46)
    {
      v47 = v46;
      v153 = v31;
      v140 = v30;
      v48 = v143();
      v49 = v155;
      if (v48)
      {
        v50 = sub_261253D64();
        v51 = sub_261253D64();
        v52 = sub_261396E6C(v51);
        sub_261396E70(v49, 0, 0, v50, v51, v52, v53, 2, 18, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v54 = *(v47 + 64);
      v55 = *(v47 + 72);

      sub_2612BAC6C(0, v54, v55);

      v56 = sub_26139F0FC();
      sub_2612BAC6C(4u, v56, v57);

      v58 = sub_2613A03AC();
      sub_2612BAC6C(6u, v58, v59);

      v60 = sub_26139FACC();
      sub_2612BAC6C(8u, v60, v61);

      sub_2612BB0C0(&v160);
      if (v162)
      {
        v163 = v160;
        v164 = v161;
        v165 = v162;
        v62 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
        v63 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
        __swift_project_boxed_opaque_existential_1((v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v62);
        (*(v63 + 120))(&v163, v62, v63);

        sub_2612A0E50(&v163);
      }

      else
      {

        sub_26124C718(&v160, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v31 = v153;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v119 = v158;
    v31(v12, v158);
    sub_2612B45EC();
    v121 = swift_allocError();
    v122 = 18;
LABEL_47:
    *v120 = v122;
    v137 = sub_26139EE6C();
    v156[2](v156, 0, v137);

    sub_26139F47C();
    sub_26139F5BC();
    v31(v12, v119);
    sub_261317CBC(1);
  }

  if ((sub_2613A10FC() & 1) == 0)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v31(v12, v158);
    *&v163 = 0xD000000000000011;
    *(&v163 + 1) = 0x80000002613BC9F0;
    v75 = sub_261314DEC(&v163, &v160);
    v76 = v141(v75);
    if (v76)
    {
      v77 = v76;
      v153 = v31;
      v140 = v30;
      v78 = v143();
      v79 = v155;
      if (v78)
      {
        v80 = sub_261253D64();
        v81 = sub_261253D64();
        v82 = sub_261396E6C(v81);
        sub_261396E70(v79, 0, 0, v80, v81, v82, v83, 2, 19, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v84 = *(v77 + 64);
      v85 = *(v77 + 72);

      sub_2612BAC6C(0, v84, v85);

      v86 = sub_26139F0FC();
      sub_2612BAC6C(4u, v86, v87);

      v88 = sub_2613A03AC();
      sub_2612BAC6C(6u, v88, v89);

      v90 = sub_26139FACC();
      sub_2612BAC6C(8u, v90, v91);

      sub_2612BB0C0(&v160);
      if (v162)
      {
        v163 = v160;
        v164 = v161;
        v165 = v162;
        v92 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
        v93 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
        __swift_project_boxed_opaque_existential_1((v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v92);
        (*(v93 + 120))(&v163, v92, v93);

        sub_2612A0E50(&v163);
      }

      else
      {

        sub_26124C718(&v160, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v31 = v153;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v119 = v158;
    v31(v12, v158);
    sub_2612B45EC();
    v121 = swift_allocError();
    v122 = 19;
    goto LABEL_47;
  }

  v139[1] = v40;
  v140 = v30;

  v139[0] = v43;
  v74 = sub_2613A117C();

  sub_26125A870(v153, v38, &qword_27FE9F560, &qword_2613A3CB0);
  if (v152(v38, 1, v37) == 1)
  {
    sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v94 = sub_2613A122C();
    v95 = sub_2613A1D9C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109120;
      *(v96 + 4) = v74 & 1;
      _os_log_impl(&dword_261243000, v94, v95, "Diagnostics mode = %{BOOL}d", v96, 8u);
      MEMORY[0x266701350](v96, -1, -1);
    }

    (*(v150 + 8))(v38, v37);
  }

  v97 = (v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
  v98 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
  v99 = *(v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v159 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v98);
  (*(v99 + 48))(v74 & 1, v98, v99);
  if (sub_2612FC1C0())
  {
    v152 = v97;
    sub_2613A11FC();
    sub_26139F50C();
    sub_26139F5BC();
    v31(v12, v158);
    *&v163 = 0xD000000000000022;
    *(&v163 + 1) = 0x80000002613BCAE0;
LABEL_32:
    v100 = sub_261314DEC(&v163, &v160);
    v101 = v141(v100);
    if (v101)
    {
      v102 = v101;
      v153 = v31;
      v103 = v143();
      v104 = v155;
      if (v103)
      {
        v105 = sub_261253D64();
        v106 = sub_261253D64();
        v107 = sub_261396E6C(v106);
        sub_261396E70(v104, 0, 0, v105, v106, v107, v108, 2, 30, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v109 = *(v102 + 64);
      v110 = *(v102 + 72);

      sub_2612BAC6C(0, v109, v110);

      v111 = sub_26139F0FC();
      sub_2612BAC6C(4u, v111, v112);

      v113 = sub_2613A03AC();
      sub_2612BAC6C(6u, v113, v114);

      v115 = sub_26139FACC();
      sub_2612BAC6C(8u, v115, v116);

      sub_2612BB0C0(&v160);
      if (v162)
      {
        v163 = v160;
        v164 = v161;
        v165 = v162;
        v117 = *(v152 + 3);
        v118 = *(v152 + 4);
        __swift_project_boxed_opaque_existential_1(v152, v117);
        (*(v118 + 120))(&v163, v117, v118);

        sub_2612A0E50(&v163);
      }

      else
      {

        sub_26124C718(&v160, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v31 = v153;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v119 = v158;
    v31(v12, v158);
    sub_2612B45EC();
    v121 = swift_allocError();
    v122 = 30;
    goto LABEL_47;
  }

  if (sub_2612FBFC4())
  {
    v152 = v97;
    sub_26139F50C();
    sub_26139F5BC();
    v31(v12, v158);
    *&v163 = 0xD000000000000025;
    *(&v163 + 1) = 0x80000002613BCA80;
    goto LABEL_32;
  }

  v123 = sub_2613A1C1C();
  (*(*(v123 - 8) + 56))(v151, 1, 1, v123);
  v124 = v146;
  v125 = v145;
  v126 = v147;
  (*(v146 + 16))(v145, v155, v147);
  v127 = (*(v124 + 80) + 40) & ~*(v124 + 80);
  v128 = (v144 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = (v128 + 23) & 0xFFFFFFFFFFFFFFF8;
  v130 = v157;
  v131 = swift_allocObject();
  *(v131 + 2) = 0;
  *(v131 + 3) = 0;
  v132 = v159;
  *(v131 + 4) = v159;
  (*(v124 + 32))(&v131[v127], v125, v126);
  v133 = &v131[v128];
  *v133 = sub_261323B4C;
  v133[1] = v130;
  v134 = &v131[v129];
  v135 = v149;
  *v134 = v148;
  v134[1] = v135;
  *&v131[(v129 + 23) & 0xFFFFFFFFFFFFFFF8] = v142;
  v136 = v132;

  sub_261266800(0, 0, v151, &unk_2613ACA70, v131);
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_261323C64()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_261265144;

  return sub_261315E80(v11, v12, v13, v6, v0 + v3, v8, v9, v10);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261323E34()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613150B0(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261323F2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26131208C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_261323FF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26130FBB8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_6Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2613240E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261262AA4;

  return sub_2613101E4(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613242C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_261324350(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_26139F13C() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_261317248(a1, a2, a3 & 1, v9, v3 + v8, v11, v12);
}

unint64_t sub_26132445C()
{
  result = qword_27FEA0618;
  if (!qword_27FEA0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0618);
  }

  return result;
}

void sub_2613244C8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a4(a1, a2, a3 & 1);
  }
}

char *sub_26132454C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client];
    v4 = result;
    swift_unknownObjectRetain();

    [v3 readFeedback_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_261324634(uint64_t a1)
{
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  (*(*(ErrorEventData - 8) + 8))(a1, ErrorEventData);
  return a1;
}

unint64_t sub_261324690()
{
  result = qword_27FEA0620;
  if (!qword_27FEA0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0620);
  }

  return result;
}

unint64_t sub_2613246E4()
{
  result = qword_27FEA0628;
  if (!qword_27FEA0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0628);
  }

  return result;
}

unint64_t sub_261324794()
{
  result = qword_27FEA0638;
  if (!qword_27FEA0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0638);
  }

  return result;
}

void sub_2613247E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_26132482C()
{
  result = qword_27FEA0640;
  if (!qword_27FEA0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0640);
  }

  return result;
}

uint64_t objectdestroy_194Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2613248C8()
{
  result = qword_27FEA0648;
  if (!qword_27FEA0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0648);
  }

  return result;
}

void *sub_261324938(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = a1;
  sub_26124A200(a2, (v6 + 4));
  v6[9] = a3;
  return v6;
}

uint64_t sub_261324994(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v110 = a1;
  v111 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v85 - v5;
  v98 = sub_2613A170C();
  v103 = *(v98 - 8);
  v6 = MEMORY[0x28223BE20](v98);
  v102 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v97 = (&v85 - v8);
  v9 = sub_2613A177C();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v96 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v85 - v12;
  v95 = sub_2613A171C();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2613A175C();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2613A1E5C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v89 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v85 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v87 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v85 - v28;
  v104 = sub_26129B5FC();
  sub_26125A870(v104, v29, &qword_27FE9F560, &qword_2613A3CB0);
  v30 = sub_2613A124C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v106 = v31 + 48;
  v107 = v31;
  v108 = v32;
  v33 = v32(v29, 1, v30);
  v109 = v3;
  v105 = v30;
  if (v33 != 1)
  {
    v34 = sub_26125A798();
    v35 = sub_261291AA8();
    v36 = v109;
    sub_26129BC3C(v34 & 1, v109, 0xD000000000000011, 0x80000002613BD1A0, v35, v37);

    (*(v107 + 8))(v29, v30);
    if (!*(v36 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v3 + 16))
  {
LABEL_5:
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2613A1E8C();
    swift_unknownObjectRelease();
  }

LABEL_6:
  sub_26128D8D4();
  sub_2613A1E4C();
  v38 = sub_2613A1E6C();
  (*(v18 + 8))(v20, v17);
  v91 = v38;
  ObjectType = swift_getObjectType();
  v40 = swift_allocObject();
  v41 = v111;
  *(v40 + 16) = v110;
  *(v40 + 24) = v41;
  aBlock[4] = sub_2613258C8;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_12;
  v42 = _Block_copy(aBlock);

  sub_2613A173C();
  v90 = ObjectType;
  sub_261287B10();
  sub_2613A1E7C();
  _Block_release(v42);
  (*(v92 + 8))(v14, v95);
  (*(v93 + 8))(v16, v94);

  v43 = v96;
  sub_2613A176C();
  v44 = sub_2613A0CBC();
  v45 = v97;
  *v97 = v44;
  v46 = v103;
  v47 = *(v103 + 104);
  v48 = v98;
  v47(v45, *MEMORY[0x277D85188], v98);
  v49 = v99;
  MEMORY[0x2666FFC30](v43, v45);
  v50 = *(v46 + 8);
  v50(v45, v48);
  v103 = *(v100 + 8);
  v51 = v43;
  v52 = v101;
  (v103)(v51, v101);
  v47(v45, *MEMORY[0x277D85180], v48);
  v53 = v102;
  *v102 = 0;
  v47(v53, *MEMORY[0x277D85168], v48);
  v54 = v91;
  MEMORY[0x266700370](v49, v45, v53, v90);
  v50(v53, v48);
  v50(v45, v48);
  (v103)(v49, v52);
  sub_2613A1EAC();
  v55 = v109;
  *(v109 + 16) = v54;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v56 = *(v55 + 24);
  v57 = *(v56 + 64);
  v58 = *(v56 + 72);

  v59 = sub_26125B314(v57, v58);

  v62 = v104;
  v61 = v105;
  if (v59)
  {
    v63 = (*(*v59 + 376))(v60);
    if (v63)
    {
      v64 = (*(*v63 + 216))();
      if (v64 < sub_2613A0CBC())
      {
        v65 = v87;
        sub_26125A870(v62, v87, &qword_27FE9F560, &qword_2613A3CB0);
        if (v108(v65, 1, v61) == 1)
        {
          sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v72 = sub_2613A122C();
          v73 = sub_2613A1D7C();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            aBlock[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_26124C11C(0xD000000000000011, 0x80000002613BD1A0, aBlock);
            _os_log_impl(&dword_261243000, v72, v73, "%s - possible session timeout, go ahead and refresh", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v75);
            MEMORY[0x266701350](v75, -1, -1);
            v76 = v74;
            v55 = v109;
            MEMORY[0x266701350](v76, -1, -1);
          }

          (*(v107 + 8))(v87, v61);
        }

        v77 = sub_2613A1C1C();
        v78 = v86;
        (*(*(v77 - 8) + 56))(v86, 1, 1, v77);
        v79 = swift_allocObject();
        v79[2] = 0;
        v79[3] = 0;
        v79[4] = v55;
        v79[5] = v59;
        v79[6] = v110;
        v79[7] = v111;

        sub_261266800(0, 0, v78, &unk_2613ACAD8, v79);
      }

      v80 = v88;
      sub_26125A870(v62, v88, &qword_27FE9F560, &qword_2613A3CB0);
      if (v108(v80, 1, v61) == 1)
      {
        swift_unknownObjectRelease();

        return sub_26124C718(v80, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v81 = sub_2613A122C();
        v82 = sub_2613A1D7C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          aBlock[0] = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_26124C11C(0xD000000000000011, 0x80000002613BD1A0, aBlock);
          _os_log_impl(&dword_261243000, v81, v82, "%s - session ok", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          MEMORY[0x266701350](v84, -1, -1);
          MEMORY[0x266701350](v83, -1, -1);
        }

        swift_unknownObjectRelease();

        return (*(v107 + 8))(v80, v61);
      }
    }
  }

  v66 = v89;
  sub_26125A870(v62, v89, &qword_27FE9F560, &qword_2613A3CB0);
  if (v108(v66, 1, v61) == 1)
  {
    v67 = sub_26124C718(v66, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v68 = sub_2613A122C();
    v69 = sub_2613A1D8C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_261243000, v68, v69, "Missing store and token while refreshing session", v70, 2u);
      MEMORY[0x266701350](v70, -1, -1);
    }

    v67 = (*(v107 + 8))(v66, v61);
  }

  v110(v67);
  return swift_unknownObjectRelease();
}

uint64_t sub_261325718(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "PIN auth allowed timeout expired, remove transaction store", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  return a1(v8);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613258E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[69] = a7;
  v7[68] = a6;
  v7[67] = a5;
  v7[66] = a4;
  v8 = sub_26139FC1C();
  v7[70] = v8;
  v7[71] = *(v8 - 8);
  v7[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613259B4, 0, 0);
}

uint64_t sub_2613259B4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[66];
  type metadata accessor for SessionTask(0);
  v6 = *(v5 + 24);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D43908], v3);

  v9 = sub_2613271E0(v6, v1, 0, 0);
  v0[73] = v9;
  v10 = sub_26125A798();
  v13 = (*(*v9 + 296) + **(*v9 + 296));
  v11 = swift_task_alloc();
  v0[74] = v11;
  *v11 = v0;
  v11[1] = sub_261325B8C;

  return v13(v0 + 26, v10 & 1, 0, 0);
}

uint64_t sub_261325B8C()
{

  return MEMORY[0x2822009F8](sub_261325CA4, 0, 0);
}

uint64_t sub_261325CA4()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 240);
  *(v0 + 160) = v2;
  *(v0 + 176) = v1;
  *(v0 + 185) = *(v0 + 249);
  v3 = *(v0 + 208);
  *(v0 + 144) = v3;
  *(v0 + 400) = v3;
  *(v0 + 416) = v2;
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 441) = *(v0 + 185);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
  v11 = *(v0 + 544);
  sub_26124A238(sub_261325E70, 0, v4, v0 + 336);
  v5 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v5;
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 505) = *(v0 + 377);
  v6 = swift_task_alloc();
  *(v6 + 16) = v11;
  sub_26124A42C(sub_26132716C, v6, v4, v0 + 272);
  sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);

  v7 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v7;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_26124C718(v0 + 80, &qword_27FEA0610, &qword_2613ACB20);
  v8 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v8;
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 57) = *(v0 + 313);
  sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_261325E70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_26129B5FC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_26124C718(v2, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v7 = sub_2613A122C();
  v8 = sub_2613A1D7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261243000, v7, v8, "session is refreshed", v9, 2u);
    MEMORY[0x266701350](v9, -1, -1);
  }

  return (*(v5 + 8))(v2, v4);
}

uint64_t sub_261326014(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = *a1;
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    v11 = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_261243000, v12, v13, "failed while refreshing: %@", v14, 0xCu);
      sub_26124C718(v15, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    v11 = (*(v10 + 8))(v6, v9);
  }

  return a2(v11);
}

uint64_t sub_261326240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v15 = sub_26125A798();
    v16 = sub_261291AA8();
    sub_26129BC3C(v15 & 1, v4, 0xD000000000000023, 0x80000002613BD1C0, v16, v17);

    result = (*(v13 + 8))(v10, v12);
    if (!*(v4 + 72))
    {
      return result;
    }

    return sub_261397594(a1, a2, a3);
  }

  result = sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v4 + 72))
  {
    return sub_261397594(a1, a2, a3);
  }

  return result;
}

uint64_t sub_2613263EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v40 = a7;
  v41 = a5;
  v42 = a6;
  v43 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0668, &unk_2613ACAE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39[-v13];
  v15 = sub_26139FA5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_261327198(&unk_27FEA0670, MEMORY[0x277D437F8], MEMORY[0x277D43800]);
  nullsub_1();
  sub_26124B218(v15, v15, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26124C718(v14, &qword_27FEA0668, &unk_2613ACAE0);
    v19 = sub_26129B4AC();
    sub_26125A870(v19, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v11, 1, v20) == 1)
    {
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261243000, v33, v34, "failed to decode PINAnalyticsData", v35, 2u);
        MEMORY[0x266701350](v35, -1, -1);
      }

      return (*(v21 + 8))(v11, v20);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v23 = v7;
    v24 = v43;
    if (*(v7 + 72))
    {
      v25 = sub_26139FA4C();
      v26 = sub_26139FA3C();
      v27 = sub_26139FA2C();
      v28 = sub_26125A798();
      sub_261396E70(a1, v24 & 1, v25 & 1, v26, v27, v41, v42, v40 & 1, 0, 1u, v28 & 1);
    }

    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(1);
    v29 = sub_26139F0FC();
    sub_2612BAC6C(4u, v29, v30);

    if (v24)
    {
      v31 = sub_2613A039C();
    }

    else
    {
      v31 = sub_2613A03AC();
    }

    sub_2612BAC6C(6u, v31, v32);

    sub_26139FA3C();
    v36 = sub_26139FABC();
    v38 = sub_2612BAC6C(7u, v36, v37);

    (*(*v23 + 176))(v38);

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_2613268C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v59 = a3;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0668, &unk_2613ACAE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_26139FA5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261327198(&unk_27FEA0670, MEMORY[0x277D437F8], MEMORY[0x277D43800]);
  nullsub_1();
  sub_26124B218(v15, v15, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v55 = v16;
    (*(v16 + 32))(v18, v14, v15);
    v54 = v7;
    v23 = v59;
    v24 = v58;
    if (*(v7 + 72))
    {
      v25 = sub_26139FA4C();
      v26 = sub_26139FA3C();
      v27 = sub_26139FA2C();
      v28 = sub_26125A798();
      sub_261396E70(a1, v23 & 1, v25 & 1, v26, v27, v56, v57, 2, v24, 0, v28 & 1);
    }

    if (v24 != 30)
    {
      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(3);
      v36 = sub_26139F0FC();
      sub_2612BAC6C(4u, v36, v37);

      if (v23)
      {
        v38 = sub_2613A039C();
      }

      else
      {
        v38 = sub_2613A03AC();
      }

      sub_2612BAC6C(6u, v38, v39);

      sub_26139FA3C();
      v46 = sub_26139FABC();
      sub_2612BAC6C(7u, v46, v47);

      v48 = sub_26139FACC();
      v41 = v49;
      v50 = v48;
      goto LABEL_23;
    }

    v29 = sub_26139FA1C();
    if (v30)
    {
      goto LABEL_16;
    }

    if (v29 == 1)
    {
      v31 = sub_2613A057C();
      goto LABEL_17;
    }

    if (v29)
    {
LABEL_16:
      v31 = sub_2613A058C();
    }

    else
    {
      v31 = sub_2613A059C();
    }

LABEL_17:
    v40 = v31;
    v41 = v32;
    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(2);
    v42 = sub_26139F0FC();
    sub_2612BAC6C(4u, v42, v43);

    if (v23)
    {
      v44 = sub_2613A039C();
    }

    else
    {
      v44 = sub_2613A03AC();
    }

    sub_2612BAC6C(6u, v44, v45);

    sub_26139FA3C();
    v51 = sub_26139FABC();
    sub_2612BAC6C(7u, v51, v52);

    v50 = v40;
LABEL_23:
    v53 = sub_2612BAC6C(8u, v50, v41);

    (*(*v54 + 176))(v53);

    return (*(v55 + 8))(v18, v15);
  }

  sub_26124C718(v14, &qword_27FEA0668, &unk_2613ACAE0);
  v19 = sub_26129B4AC();
  sub_26125A870(v19, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v33 = sub_2613A122C();
  v34 = sub_2613A1D8C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_261243000, v33, v34, "failed to decode PINAnalyticsData", v35, 2u);
    MEMORY[0x266701350](v35, -1, -1);
  }

  return (*(v21 + 8))(v11, v20);
}

uint64_t sub_261326EDC()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  v5 = sub_26125B314(v3, v4);

  if (v5)
  {
    v7 = (*(*v5 + 376))(result);
    if (v7)
    {
      sub_2612BAE60(v7);

      sub_2612BB0C0(v10);
      if (v11)
      {
        v12[0] = v10[0];
        v12[1] = v10[1];
        v12[2] = v11;
        v8 = v1[7];
        v9 = v1[8];
        __swift_project_boxed_opaque_existential_1(v1 + 4, v8);
        (*(v9 + 120))(v12, v8, v9);

        return sub_2612A0E50(v12);
      }

      else
      {

        return sub_26124C718(v10, &qword_27FE9F8D0, &unk_2613AC6E0);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26132704C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_26132709C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261262AA4;

  return sub_2613258E8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_261327198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2613271E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(**sub_2612C11DC() + 112);

  v9(v10);

  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  (*(*(v14 - 8) + 56))(v8 + v13, 1, 1, v14);
  v15 = v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v15 + 56) = -1;
  *(v8 + 24) = a1;
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v17 = sub_26139FC1C();
  (*(*(v17 - 8) + 32))(v8 + v16, a2, v17);
  *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId) = a4;
  *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_analytics) = a3;
  return v8;
}

uint64_t sub_2613273C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0698, &qword_2613ACB50);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v21 = &v20 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v2 + v14, v13, &qword_27FEA06A0, &unk_2613ACB58);
  v22 = v6;
  v15 = *(v6 + 48);
  v16 = v15(v13, 1, v5);
  sub_26124C718(v13, &qword_27FEA06A0, &unk_2613ACB58);
  if (v16 != 1)
  {
    sub_26125A870(v2 + v14, v11, &qword_27FEA06A0, &unk_2613ACB58);
    if (v15(v11, 1, v5))
    {
      sub_26124C718(v11, &qword_27FEA06A0, &unk_2613ACB58);
    }

    else
    {
      v18 = v21;
      v17 = v22;
      (*(v22 + 16))(v21, v11, v5);
      sub_26124C718(v11, &qword_27FEA06A0, &unk_2613ACB58);
      sub_2613A1C3C();
      (*(v17 + 8))(v18, v5);
    }
  }

  (*(v24 + 104))(v23, *MEMORY[0x277D85778], v25);
  return sub_2613A1C7C();
}

uint64_t sub_261327704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  if (v7 != 255)
  {
    return sub_2613A1C3C();
  }

  v10 = *(v8 - 8);
  v11 = v8;
  (*(v10 + 16))(v6, a1, v8);
  (*(v10 + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125C010(v6, a2 + v12, &qword_27FEA06A0, &unk_2613ACB58);
  return swift_endAccess();
}

uint64_t sub_261327890(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613279A0, 0, 0);
}

uint64_t sub_2613279A0()
{
  v1 = *(v0 + 240);
  v2 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v5 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 57) = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  v6 = *(v0 + 72);
  if (v6 == 255)
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
    swift_beginAccess();
    sub_26125A870(v1 + v16, v13, &qword_27FEA06A8, &unk_2613ACB68);
    v17 = *(v15 + 48);
    LODWORD(v14) = v17(v13, 1, v14);
    sub_26124C718(v13, &qword_27FEA06A8, &unk_2613ACB68);
    if (v14 != 1)
    {
      v18 = *(v0 + 272);
      v19 = *(v0 + 248);
      sub_26125A870(v1 + v16, v18, &qword_27FEA06A8, &unk_2613ACB68);
      v20 = v17(v18, 1, v19);
      v21 = *(v0 + 272);
      if (v20)
      {
        sub_26124C718(*(v0 + 272), &qword_27FEA06A8, &unk_2613ACB68);
      }

      else
      {
        v23 = *(v0 + 256);
        v22 = *(v0 + 264);
        v24 = *(v0 + 248);
        (*(v23 + 16))(v22, *(v0 + 272), v24);
        sub_26124C718(v21, &qword_27FEA06A8, &unk_2613ACB68);
        v25 = objc_allocWithZone(sub_26139F2CC());
        *(v0 + 144) = sub_26139F2DC();
        *(v0 + 200) = 1;
        sub_2613A1BDC();
        (*(v23 + 8))(v22, v24);
      }
    }

    v26 = swift_task_alloc();
    *(v0 + 288) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0630, &unk_2613ACAB0);
    *v26 = v0;
    v26[1] = sub_261327CEC;
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);

    return MEMORY[0x2822007B8](v28, 0, 0, 0x6C75736552746567, 0xEB00000000292874, sub_261327FB0, v29, v27);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *v2;
    v9 = v2[1];
    v10 = v2[2];
    *(v7 + 48) = *(v2 + 6);
    *(v7 + 16) = v9;
    *(v7 + 32) = v10;
    *v7 = v8;
    *(v7 + 56) = v6;
    sub_26125A870(v0 + 16, v0 + 80, &qword_27FEA06B0, qword_2613ACB78);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_261327CEC()
{
  v1 = *v0;
  v2 = *v0;

  sub_26125A870(v1 + 16, v1 + 80, &qword_27FEA06B0, qword_2613ACB78);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_261327E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125C010(v6, a2 + v9, &qword_27FEA06A8, &unk_2613ACB68);
  return swift_endAccess();
}

uint64_t sub_261327FD0()
{
  v1[54] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68);
  v1[61] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v1[62] = v3;
  v1[63] = *(v3 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v4 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v5 = swift_task_alloc();
  v1[67] = v5;
  *v5 = v1;
  v5[1] = sub_261328210;

  return sub_26132A374((v1 + 34), v0 + v4);
}

uint64_t sub_261328210()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_2613286D8;
  }

  else
  {
    v2 = sub_261328324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261328324()
{
  v1 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v1;
  *(v0 + 64) = *(v0 + 320);
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 552) = 0;
  *(v0 + 72) = 0;
  v2 = *(v0 + 528);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  v5 = *(v0 + 432);
  v6 = (v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v8 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v9 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 121) = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  *(v6 + 41) = *(v0 + 57);
  v6[1] = v11;
  v6[2] = v12;
  *v6 = v10;
  sub_26125A870(v0 + 16, v0 + 144, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 80, &qword_27FEA06B0, qword_2613ACB78);
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v5 + v13, v2, &qword_27FEA06A0, &unk_2613ACB58);
  v14 = (*(v4 + 48))(v2, 1, v3);
  v15 = *(v0 + 528);
  if (v14)
  {
    sub_26124C718(*(v0 + 528), &qword_27FEA06A0, &unk_2613ACB58);
  }

  else
  {
    v17 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 496);
    (*(v17 + 16))(v16, *(v0 + 528), v18);
    sub_26124C718(v15, &qword_27FEA06A0, &unk_2613ACB58);
    sub_2613A1C3C();
    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 520);
  v20 = *(v0 + 488);
  v21 = *(v0 + 464);
  v22 = *(v0 + 472);
  v23 = *(v0 + 432);
  (*(*(v0 + 504) + 56))(v19, 1, 1, *(v0 + 496));
  swift_beginAccess();
  sub_26125C010(v19, v5 + v13, &qword_27FEA06A0, &unk_2613ACB58);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125A870(v23 + v24, v20, &qword_27FEA06A8, &unk_2613ACB68);
  v25 = (*(v22 + 48))(v20, 1, v21);
  v26 = *(v0 + 488);
  if (v25)
  {
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    sub_26124C718(v26, &qword_27FEA06A8, &unk_2613ACB68);
  }

  else
  {
    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 464);
    (*(v28 + 16))(v27, *(v0 + 488), v29);
    sub_26124C718(v26, &qword_27FEA06A8, &unk_2613ACB68);
    v30 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v30;
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 249) = *(v0 + 57);
    sub_2613A1BDC();
    (*(v28 + 8))(v27, v29);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2613286D8()
{
  v86 = v0;
  v1 = *(v0 + 544);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 408);
    v6 = sub_26129B780();
    sub_26125A870(v6, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v9 = *(v0 + 456);

      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = v5;
      v17 = sub_2613A122C();
      v18 = sub_2613A1D8C();

      if (os_log_type_enabled(v17, v18))
      {
        v84 = *(v0 + 544);
        v19 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v85 = v83;
        *v19 = 136315138;
        v20 = v16;
        v21 = [v20 description];
        v22 = sub_2613A18CC();
        v82 = v18;
        v23 = v5;
        v25 = v24;

        v26 = sub_26124C11C(v22, v25, &v85);
        v5 = v23;

        *(v19 + 4) = v26;
        _os_log_impl(&dword_261243000, v17, v82, "[SessionTask] error creating session: [ %s ]", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x266701350](v83, -1, -1);
        MEMORY[0x266701350](v19, -1, -1);
        v27 = v84;
      }

      else
      {
        v27 = *(v0 + 544);
      }

      (*(v8 + 8))(*(v0 + 456), v7);
    }

    LOBYTE(v85) = 1;
    *(v0 + 16) = v5;
  }

  else
  {
    v10 = *(v0 + 544);
    *(v0 + 416) = v10;
    v11 = v10;
    if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 73))
    {
      v73 = *(v0 + 448);
      v74 = sub_26129B780();
      sub_26125A870(v74, v73, &qword_27FE9F560, &qword_2613A3CB0);
      v75 = sub_2613A124C();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v73, 1, v75) == 1)
      {
        sub_26124C718(*(v0 + 448), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v77 = sub_2613A122C();
        v78 = sub_2613A1D8C();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_261243000, v77, v78, "[SessionTask] error creating session: [ busy ]", v79, 2u);
          MEMORY[0x266701350](v79, -1, -1);
        }

        v80 = *(v0 + 448);

        (*(v76 + 8))(v80, v75);
      }

      v39 = *(v0 + 544);
      v81 = objc_allocWithZone(v3);
    }

    else
    {
      v12 = *(v0 + 440);
      v13 = sub_26129B5FC();
      sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v14 = sub_2613A124C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14) == 1)
      {
        sub_26124C718(*(v0 + 440), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v28 = *(v0 + 544);
        v29 = v28;
        v30 = sub_2613A122C();
        v31 = sub_2613A1D8C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = *(v0 + 544);
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v85 = v34;
          *v33 = 136315138;
          *(v0 + 424) = v32;
          v35 = v32;
          v36 = sub_2613A195C();
          v38 = sub_26124C11C(v36, v37, &v85);

          *(v33 + 4) = v38;
          _os_log_impl(&dword_261243000, v30, v31, "[SessionTask] error creating session, unexpected error: [ %s ]", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x266701350](v34, -1, -1);
          MEMORY[0x266701350](v33, -1, -1);
        }

        (*(v15 + 8))(*(v0 + 440), v14);
      }

      v39 = *(v0 + 544);
      v40 = objc_allocWithZone(v3);
    }

    v41 = sub_26139F2DC();

    LOBYTE(v85) = 1;
    *(v0 + 16) = v41;
  }

  *(v0 + 72) = 1;
  v42 = *(v0 + 528);
  v43 = *(v0 + 496);
  v44 = *(v0 + 504);
  v45 = *(v0 + 432);
  v46 = (v45 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v48 = *(v45 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v47 = *(v45 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v49 = *(v45 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 121) = *(v45 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 96) = v48;
  *(v0 + 112) = v47;
  *(v0 + 80) = v49;
  v50 = *(v0 + 16);
  v51 = *(v0 + 32);
  v52 = *(v0 + 48);
  *(v46 + 41) = *(v0 + 57);
  v46[1] = v51;
  v46[2] = v52;
  *v46 = v50;
  sub_26125A870(v0 + 16, v0 + 144, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 80, &qword_27FEA06B0, qword_2613ACB78);
  v53 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v45 + v53, v42, &qword_27FEA06A0, &unk_2613ACB58);
  v54 = (*(v44 + 48))(v42, 1, v43);
  v55 = *(v0 + 528);
  if (v54)
  {
    sub_26124C718(*(v0 + 528), &qword_27FEA06A0, &unk_2613ACB58);
  }

  else
  {
    v57 = *(v0 + 504);
    v56 = *(v0 + 512);
    v58 = *(v0 + 496);
    (*(v57 + 16))(v56, *(v0 + 528), v58);
    sub_26124C718(v55, &qword_27FEA06A0, &unk_2613ACB58);
    sub_2613A1C3C();
    (*(v57 + 8))(v56, v58);
  }

  v59 = *(v0 + 520);
  v60 = *(v0 + 488);
  v61 = *(v0 + 464);
  v62 = *(v0 + 472);
  v63 = *(v0 + 432);
  (*(*(v0 + 504) + 56))(v59, 1, 1, *(v0 + 496));
  swift_beginAccess();
  sub_26125C010(v59, v45 + v53, &qword_27FEA06A0, &unk_2613ACB58);
  swift_endAccess();
  v64 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125A870(v63 + v64, v60, &qword_27FEA06A8, &unk_2613ACB68);
  v65 = (*(v62 + 48))(v60, 1, v61);
  v66 = *(v0 + 488);
  if (v65)
  {
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    sub_26124C718(v66, &qword_27FEA06A8, &unk_2613ACB68);
  }

  else
  {
    v68 = *(v0 + 472);
    v67 = *(v0 + 480);
    v69 = *(v0 + 464);
    (*(v68 + 16))(v67, *(v0 + 488), v69);
    sub_26124C718(v66, &qword_27FEA06A8, &unk_2613ACB68);
    v70 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v70;
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 249) = *(v0 + 57);
    sub_2613A1BDC();
    (*(v68 + 8))(v67, v69);
  }

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_26132900C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 304) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  v6 = sub_26139FC1C();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132916C, 0, 0);
}

uint64_t sub_26132916C()
{
  v1 = *(v0 + 216);
  v2 = sub_26129B5FC();
  *(v0 + 224) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 232) = v3;
  v4 = *(v3 - 8);
  *(v0 + 240) = v4;
  v5 = *(v4 + 48);
  *(v0 + 248) = v5;
  *(v0 + 256) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 216);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 216), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v75 = *(v0 + 120);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v75, 0xD000000000000036, 0x80000002613BD240, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v11 = *(*(v0 + 120) + 24);
  v12 = *(v11 + 64);
  v13 = *(v11 + 72);

  v14 = sub_26125B314(v12, v13);
  *(v0 + 264) = v14;

  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = (*(*v14 + 376))(v15);
  *(v0 + 272) = v16;
  if (!v16)
  {

LABEL_13:
    v30 = *(v0 + 176);
    sub_26125A870(v2, v30, &qword_27FE9F560, &qword_2613A3CB0);
    if (v5(v30, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 176), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "[SessionTask] previous session not found", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      v34 = *(v0 + 176);

      (*(v4 + 8))(v34, v3);
    }

    v35 = *(v0 + 96);
    v36 = 4;
    goto LABEL_19;
  }

  v72 = v2;
  v73 = v5;
  v74 = v3;
  v76 = v16;
  v71 = v4;
  v17 = *(v0 + 152);
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  (*(v19 + 16))(v17, v20 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType, v18);
  v22 = (*(v19 + 88))(v17, v18);
  v23 = *(v0 + 152);
  if (v22 != *MEMORY[0x277D43908])
  {
    v40 = *(v0 + 136);
    v39 = *(v0 + 144);
    v41 = *(v0 + 128);
    v42 = *(v40 + 8);
    v42(v23, v41);
    (*(v40 + 104))(v39, *MEMORY[0x277D43900], v41);
    v43 = MEMORY[0x2666FE080](v20 + v21, v39);
    v42(v39, v41);
    if (v43)
    {
      v44 = *(v0 + 184);
      sub_26125A870(v72, v44, &qword_27FE9F560, &qword_2613A3CB0);
      if (v73(v44, 1, v3) == 1)
      {
        sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v58 = sub_2613A122C();
        v59 = sub_2613A1D9C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_261243000, v58, v59, "[SessionTask] SAF is active, no refresh is needed", v60, 2u);
          MEMORY[0x266701350](v60, -1, -1);
        }

        v61 = *(v0 + 184);

        (*(v71 + 8))(v61, v74);
      }

      v62 = *(v0 + 96);
      *v62 = v14;
      *(v62 + 8) = v76;
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0u;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
    }

    else
    {
      v46 = *(v0 + 96);

      *v46 = 4;
      *(v46 + 56) = 1;
    }

    goto LABEL_20;
  }

  v24 = (*(*(v0 + 136) + 96))(*(v0 + 152), *(v0 + 128));
  v25 = *v23;
  v26 = v23[1];
  *(v0 + 280) = v26;
  if (((*(*v76 + 200))(v24) & 1) == 0)
  {
    v45 = *(v0 + 96);

    *v45 = v14;
    *(v45 + 8) = v76;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    goto LABEL_20;
  }

  v27 = *(v0 + 104);
  v28 = sub_261332D38(v76);
  if (v27)
  {
    (*(v0 + 104))(v28);
  }

  v29 = *(v0 + 208);
  sub_26125A870(v72, v29, &qword_27FE9F560, &qword_2613A3CB0);
  if (v73(v29, 1, v74) == 1)
  {
    sub_26124C718(*(v0 + 208), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v47 = sub_2613A122C();
    v48 = sub_2613A1D9C();
    if (os_log_type_enabled(v47, v48))
    {
      v70 = v25;
      v49 = v47;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_261243000, v49, v48, "[SessionTask] refreshing...", v50, 2u);
      v51 = v50;
      v47 = v49;
      v25 = v70;
      MEMORY[0x266701350](v51, -1, -1);
    }

    v52 = *(v0 + 208);

    (*(v71 + 8))(v52, v74);
  }

  v53 = *(v11 + 64);
  v54 = *(v11 + 72);

  sub_26125B3FC(v53, v54);

  if (sub_26132EFD0(v55, v25, v26))
  {
    v56 = swift_task_alloc();
    *(v0 + 288) = v56;
    *v56 = v0;
    v56[1] = sub_261329AC4;
    v57 = *(v0 + 304);

    return sub_26132F2D8(v0 + 16, v25, v26, 1, v57, v14);
  }

  v63 = *(v0 + 200);

  sub_26125A870(v72, v63, &qword_27FE9F560, &qword_2613A3CB0);
  v64 = v73(v63, 1, v74);
  v65 = *(v0 + 200);
  if (v64 == 1)
  {

    sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v66 = sub_2613A122C();
    v67 = sub_2613A1D8C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_261243000, v66, v67, "[SessionTask] session refresh failed, invalid reader", v68, 2u);
      MEMORY[0x266701350](v68, -1, -1);
    }

    v69 = *(v0 + 200);

    (*(v71 + 8))(v69, v74);
  }

  v35 = *(v0 + 96);
  v36 = 5;
LABEL_19:
  *v35 = v36;
  *(v35 + 56) = 1;
LABEL_20:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_261329AC4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_261329E3C;
  }

  else
  {
    v2 = sub_261329C18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261329C18()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 192);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v18 = *(v0 + 48);
  v19 = *(v0 + 32);
  v7 = *(v0 + 64);
  sub_261332ADC(v5);
  sub_26125A870(v3, v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v4, 1, v2) == 1)
  {
    v8 = *(v0 + 192);

    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "[SessionTask] session refreshed", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);

    (*(v13 + 8))(v14, v12);
  }

  v15 = *(v0 + 96);
  *v15 = v6;
  *(v15 + 8) = v5;
  *(v15 + 16) = v19;
  *(v15 + 32) = v18;
  *(v15 + 48) = v7;
  *(v15 + 56) = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_261329E3C()
{
  v45 = v0;
  v1 = *(v0 + 296);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 248);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 168);

    v7 = *(v0 + 80);
    sub_26125A870(v5, v6, &qword_27FE9F560, &qword_2613A3CB0);
    if (v3(v6, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 168), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v7;
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v18 = 136315138;
        v19 = v15;
        v20 = [v19 description];
        v21 = sub_2613A18CC();
        v23 = v22;

        v24 = sub_26124C11C(v21, v23, &v44);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_261243000, v16, v17, "[SessionTask] session refresh failed: [ %s ]", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x266701350](v43, -1, -1);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(*(v0 + 240) + 8))(*(v0 + 168), *(v0 + 232));
    }

    v25 = *(v0 + 96);
    v26 = sub_26139F2BC();

    v27 = *(v0 + 96);
    if (v26 > 9)
    {
      if (v26 == 10)
      {
        LOBYTE(v44) = 1;
        v28 = 6;
        goto LABEL_24;
      }

      if (v26 == 11)
      {
        LOBYTE(v44) = 1;
        v28 = 19;
        goto LABEL_24;
      }
    }

    else
    {
      if (v26 == 2)
      {
        LOBYTE(v44) = 1;
        v28 = 7;
        goto LABEL_24;
      }

      if (v26 == 3)
      {
        LOBYTE(v44) = 1;
        v28 = 8;
LABEL_24:
        *v27 = v28;
        *(v25 + 56) = 1;

        goto LABEL_25;
      }
    }

    LOBYTE(v44) = 1;
    v28 = 5;
    goto LABEL_24;
  }

  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  v11 = *(v0 + 160);

  sub_26125A870(v10, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = v8(v11, 1, v9);
  v13 = *(v0 + 296);
  if (v12 == 1)
  {
    v14 = *(v0 + 160);

    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = v13;
    v30 = sub_2613A122C();
    v31 = sub_2613A1D8C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 296);
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      *(v0 + 88) = v33;
      v36 = v33;
      v37 = sub_2613A195C();
      v39 = sub_26124C11C(v37, v38, &v44);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_261243000, v30, v31, "[SessionTask] session refresh failed, unexpected error: [ %s ]", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x266701350](v35, -1, -1);
      MEMORY[0x266701350](v34, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 240) + 8))(*(v0 + 160), *(v0 + 232));
  }

  v40 = *(v0 + 96);
  LOBYTE(v44) = 1;
  *v40 = 5;
  *(v40 + 56) = 1;
LABEL_25:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26132A374(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[5] = swift_task_alloc();
  v4 = sub_26139FC1C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_26139F64C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132A4CC, 0, 0);
}

uint64_t sub_26132A4CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v37 = v0[3];
  sub_26139F3CC();
  sub_26139F5DC();
  v8 = *(v2 + 8);
  v8(v1, v4);
  v9 = *(v7 + 24);
  v10 = *(v9 + 64);
  v11 = *(v9 + 72);

  v12 = sub_26125B314(v10, v11);
  v0[12] = v12;

  sub_26139F3CC();
  sub_26139F5BC();
  v8(v1, v4);
  (*(v6 + 16))(v3, v37, v5);
  v13 = (*(v6 + 88))(v3, v5);
  if (v13 == *MEMORY[0x277D43908])
  {
    v14 = v0[8];
    (*(v0[7] + 96))(v14, v0[6]);
    v15 = *v14;
    v16 = v14[1];
    v0[13] = v16;
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_26132A91C;
    v18 = v0[2];

    return sub_26132AD04(v18, v12, v15, v16);
  }

  else if (v13 == *MEMORY[0x277D43900])
  {
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_26132AAD8;
    v21 = v0[2];

    return sub_26132BDC0(v21, v12);
  }

  else
  {
    v22 = v0[5];
    v23 = sub_26129B5FC();
    sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "[SessionTask] unknown session type", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      v29 = v0[5];

      (*(v25 + 8))(v29, v24);
    }

    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];
    v33 = objc_allocWithZone(sub_26139F2CC());
    v34 = sub_26139F2DC();
    sub_2612C5960();
    swift_allocError();
    *v35 = v34;
    swift_willThrow();

    (*(v31 + 8))(v30, v32);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_26132A91C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26132ABEC;
  }

  else
  {
    v2 = sub_26132AA4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26132AA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26132AAD8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26132AC78;
  }

  else
  {
    v2 = sub_261333FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26132ABEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26132AC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26132AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = a4;
  v5[37] = v4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132ADCC, 0, 0);
}

uint64_t sub_26132ADCC()
{
  v1 = v0[41];
  v2 = sub_26129B5FC();
  v0[42] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[43] = v3;
  v4 = *(v3 - 8);
  v0[44] = v4;
  v5 = *(v4 + 48);
  v0[45] = v5;
  v0[46] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[41], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "[SessionTask] preparing online session", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[41];

    (*(v4 + 8))(v9, v3);
  }

  v10 = swift_task_alloc();
  v0[47] = v10;
  *v10 = v0;
  v10[1] = sub_26132AFB4;
  v11 = v0[34];

  return sub_26132D504(v11);
}

uint64_t sub_26132AFB4()
{

  return MEMORY[0x2822009F8](sub_26132B0B0, 0, 0);
}

uint64_t sub_26132B0B0()
{
  v95 = v0;
  v1 = sub_2612F675C(*(v0 + 280), *(v0 + 288));
  v3 = *(v0 + 272);
  if (v3 && (v4 = (*(*v3 + 376))(v1)) != 0)
  {
    v5 = (*(*v4 + 200))(v4);
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 288);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = sub_26132E2E4(v8);
  v10 = sub_26132EFD0(v8, v7, v6);
  if (!v3 || (v5 & 1) != 0 || (v9 & 1) != 0 || (v10 & 1) == 0)
  {
    v21 = v10;
    v22 = *(v0 + 360);
    v23 = *(v0 + 344);
    v24 = *(v0 + 304);
    sub_26125A870(*(v0 + 336), v24, &qword_27FE9F560, &qword_2613A3CB0);
    if (v22(v24, 1, v23) == 1)
    {
      sub_26124C718(*(v0 + 304), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67240704;
        *(v27 + 4) = v5 & 1;
        *(v27 + 8) = 1026;
        *(v27 + 10) = v21 & 1;
        *(v27 + 14) = 1026;
        *(v27 + 16) = v9 & 1;
        _os_log_impl(&dword_261243000, v25, v26, "[SessionTask] session will be deleted, expired=%{BOOL,public}d, valid=%{BOOL,public}d, passcodeChanged=%{BOOL,public}d", v27, 0x14u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      v28 = *(v0 + 344);
      v29 = *(v0 + 352);
      v30 = *(v0 + 304);

      (*(v29 + 8))(v30, v28);
    }

    v31 = *(*(v0 + 296) + 24);
    v32 = *(v31 + 64);
    v33 = *(v31 + 72);

    v34 = sub_26125B3FC(v32, v33);

    if (v3 && (v34 & 1) != 0 && (*(**(v0 + 272) + 376))(v35))
    {
      v36 = *(v0 + 296);

      sub_2612C1138();
      v37 = *(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
      v38 = *(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
      __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v37);
      v93 = &type metadata for SessionDeleted;
      v94 = sub_261324690();
      v39 = swift_allocObject();
      *&v91 = v39;
      v40 = *(v0 + 136);
      v39[1] = *(v0 + 120);
      v39[2] = v40;
      v39[3] = *(v0 + 152);
      sub_2612B64A4(8, &v91, (v0 + 168));
      (*(v38 + 120))(v0 + 168, v37, v38);

      sub_2612A0E50(v0 + 168);
    }

    v41 = swift_task_alloc();
    *(v0 + 384) = v41;
    *v41 = v0;
    v41[1] = sub_26132BB04;
    v42 = *(v0 + 288);
    v44 = *(v0 + 272);
    v43 = *(v0 + 280);

    return sub_26132F2D8(v0 + 16, v43, v42, 0, 0, v44);
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 272);
  v14 = *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v13 = *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v14);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  v17 = *(v11 + 24);
  v18 = *(v17 + 72);
  v86 = *(v17 + 64);
  v87 = *(v13 + 56);

  v87(v15, v16, 0, 0, v86, v18, v14, v13);
  v20 = v19;

  v85 = v17;
  v88 = v12;
  v89 = *(v20 + 16);
  if (!v89)
  {
LABEL_31:

    v90 = 0;
    v47 = 0;
    v52 = 0;
    v50 = 0;
    v51 = 0;
LABEL_33:
    v53 = *(v0 + 360);
    v54 = *(v0 + 336);
    v55 = *(v0 + 344);
    v56 = *(v0 + 320);

    sub_26125A870(v54, v56, &qword_27FE9F560, &qword_2613A3CB0);
    if (v53(v56, 1, v55) == 1)
    {
      sub_26124C718(*(v0 + 320), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v57 = sub_2613A122C();
      v58 = sub_2613A1D9C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_261243000, v57, v58, "[SessionTask] session still valid", v59, 2u);
        MEMORY[0x266701350](v59, -1, -1);
      }

      v60 = *(v0 + 344);
      v61 = *(v0 + 352);
      v62 = *(v0 + 320);

      (*(v61 + 8))(v62, v60);
    }

    v63 = v90;
    v64 = sub_2612F9F2C();
    v65 = *(*v64 + 32);
    if (!v65)
    {
      goto LABEL_45;
    }

    v66 = *(*v64 + 24);
    v67 = *(*v88 + 280);

    if (v67(v68) == v66 && v65 == v69)
    {
    }

    else
    {
      v70 = sub_2613A241C();

      if ((v70 & 1) == 0)
      {
        v73 = *(v0 + 360);
        v83 = *(v0 + 336);
        v84 = *(v0 + 344);
        v74 = *(v0 + 312);
        (*(*v88 + 288))(v66, v65);
        v76 = *(v85 + 64);
        v75 = *(v85 + 72);

        sub_26125B1E4(v76, v75, v88);

        sub_26125A870(v83, v74, &qword_27FE9F560, &qword_2613A3CB0);
        if (v73(v74, 1, v84) != 1)
        {
          v77 = sub_2613A122C();
          v78 = sub_2613A1D7C();
          v63 = v90;
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_261243000, v77, v78, "[SessionTask] boot id was updated", v79, 2u);
            MEMORY[0x266701350](v79, -1, -1);
          }

          v80 = *(v0 + 344);
          v81 = *(v0 + 352);
          v82 = *(v0 + 312);

          (*(v81 + 8))(v82, v80);
          goto LABEL_45;
        }

        sub_26124C718(*(v0 + 312), &qword_27FE9F560, &qword_2613A3CB0);
LABEL_44:
        v63 = v90;
LABEL_45:
        v71 = *(v0 + 264);
        *&v91 = v63;
        *(&v91 + 1) = v47;
        v92 = v52;
        v93 = v50;
        v94 = v51;
        sub_26135F9FC(v88, 0, 0, &v91, v71);

        v72 = *(v0 + 8);

        return v72();
      }
    }

    goto LABEL_44;
  }

  v45 = 0;
  v46 = (v20 + 64);
  while (v45 < *(v20 + 16))
  {
    v48 = *(v46 - 4);
    v47 = *(v46 - 3);
    v49 = *(v46 - 2);
    v50 = *(v46 - 1);
    v51 = *v46;
    *&v91 = v48;
    *(&v91 + 1) = v47;
    v92 = v49;
    v93 = v50;
    v94 = v51;

    if (DeprecationWarning.isOSVersionDeprecation.getter())
    {
      v90 = v48;

      v52 = v49;
      goto LABEL_33;
    }

    ++v45;
    v46 += 5;
    if (v89 == v45)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26132BB04()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_26132BD38;
  }

  else
  {
    v2 = sub_26132BC18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26132BC18()
{
  v11 = v0;
  v1 = v0[33];
  v2 = v0[2];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v10[0] = v0[4];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;

  sub_2613247E8(v10[0], v4, v5, v6, v7);
  sub_26135F9FC(v2, 0, 1, v10, v1);

  sub_261273F3C(v3, v4, v5, v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26132BD38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26132BDC0(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132BE7C, 0, 0);
}

uint64_t sub_26132BE7C()
{
  v1 = *(v0 + 704);
  v52 = sub_26129B5FC();
  sub_26125A870(v52, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v51 = v3;
  if (v4(v1, 1, v2) == 1)
  {
    sub_26124C718(*(v0 + 704), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "[SessionTask] preparing SAF session", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = *(v0 + 704);

    (*(v3 + 8))(v8, v2);
  }

  type metadata accessor for StoreAndForwardManager();
  v9 = sub_261269430();
  *(v0 + 712) = v9;
  v10 = *(v0 + 672);
  if (v10)
  {
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);

    v13 = sub_2612F68AC(v11, v12);
    v15 = v14;

    *(v0 + 720) = v15;
    if (v15)
    {
      v16 = *(v0 + 680);
      v17 = *(v0 + 672);

      v18 = sub_26132E2E4(v17);

      v19 = *(v16 + 24);
      *(v0 + 728) = v19;
      v20 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
      *(v0 + 736) = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
      v21 = swift_task_alloc();
      *(v0 + 744) = v21;
      *v21 = v0;
      v21[1] = sub_26132C720;

      return sub_2612694A0(v0 + 160, v0 + 568, v19, v10, v18 & 1, v13, v15, v16 + v20);
    }

    v24 = *(v0 + 696);

    sub_26125A870(v52, v24, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v24, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 696), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D8C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "[SessionTask] no online session was found, cannot create SAF session", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      v37 = *(v0 + 696);

      (*(v51 + 8))(v37, v2);
    }

    v29 = sub_26139F2CC();
    v38 = objc_allocWithZone(v29);
    v39 = sub_26139F2DC();
    sub_2612C5960();
    v32 = swift_allocError();
    *v40 = v39;
    swift_willThrow();
  }

  else
  {
    v23 = *(v0 + 688);
    sub_26125A870(v52, v23, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v23, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 688), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "[SessionTask] no online session was found, cannot create SAF session", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      v28 = *(v0 + 688);

      (*(v51 + 8))(v28, v2);
    }

    v29 = sub_26139F2CC();
    v30 = objc_allocWithZone(v29);
    v31 = sub_26139F2DC();
    sub_2612C5960();
    v32 = swift_allocError();
    *v33 = v31;
    swift_willThrow();
  }

  *(v0 + 816) = v9;
  *(v0 + 640) = v32;
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  *(v0 + 824) = v29;
  if (swift_dynamicCast())
  {

    *(v0 + 832) = *(v0 + 648);
    v42 = *(v0 + 680);
    if (v9)
    {
      v43 = *(v42 + 24);
      v44 = swift_task_alloc();
      *(v0 + 840) = v44;
      *v44 = v0;
      v44[1] = sub_26132D0E4;

      return sub_2612723D8(v43);
    }

    else
    {
      v46 = *(v0 + 672);
      v47 = *(v42 + 24);
      v48 = sub_2612B5A20(v42 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
      if (v46)
      {
        v46 = (*(**(v0 + 672) + 376))(v48);
      }

      *(v0 + 856) = v46;
      type metadata accessor for SafMonitorEventDispatcher();
      v49 = swift_task_alloc();
      *(v0 + 864) = v49;
      *v49 = v0;
      v49[1] = sub_26132D318;
      v50 = *(v0 + 832);

      return sub_26129E62C(v47, v0 + 528, v46, 0, 0, v50);
    }
  }

  else
  {

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_26132C720()
{
  v2 = *v1;
  v26 = *(*v1 + 160);
  v25 = *(*v1 + 168);
  v24 = *(*v1 + 176);
  v23 = *(*v1 + 184);
  v22 = *(*v1 + 192);
  v21 = *(*v1 + 200);
  v20 = *(*v1 + 208);
  v19 = *(*v1 + 216);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 248);
  v7 = *(*v1 + 256);
  v8 = *(*v1 + 264);
  v9 = *(v2 + 272);
  v10 = *(v2 + 280);
  v11 = *(v2 + 288);
  v12 = *(v2 + 296);

  if (v0)
  {
    *(v2 + 752) = *(v2 + 656);

    v13 = sub_26132CA2C;
  }

  else
  {
    *(v2 + 304) = v26;
    *(v2 + 312) = v25;
    *(v2 + 320) = v24;
    *(v2 + 328) = v23;
    *(v2 + 336) = v22;
    *(v2 + 344) = v21;
    *(v2 + 352) = v20;
    *(v2 + 360) = v19;
    *(v2 + 368) = v3;
    *(v2 + 376) = v4;
    *(v2 + 384) = v5;
    *(v2 + 392) = v6;
    *(v2 + 400) = v7;
    *(v2 + 408) = v8;
    *(v2 + 416) = v9;
    *(v2 + 424) = v10;
    *(v2 + 432) = v11;
    *(v2 + 440) = v12;
    v14 = *(v2 + 320);
    *(v2 + 16) = *(v2 + 304);
    *(v2 + 32) = v14;
    *(v2 + 137) = *(v2 + 425);
    v15 = *(v2 + 416);
    *(v2 + 112) = *(v2 + 400);
    *(v2 + 128) = v15;
    v16 = *(v2 + 384);
    *(v2 + 80) = *(v2 + 368);
    *(v2 + 96) = v16;
    v17 = *(v2 + 352);
    *(v2 + 48) = *(v2 + 336);
    *(v2 + 64) = v17;

    v13 = sub_26132CCC0;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_26132CA2C()
{
  v1 = *(v0 + 752);
  v2 = sub_26139F2CC();
  sub_2612C5960();
  v3 = swift_allocError();
  *v4 = v1;

  v5 = *(v0 + 712);
  *(v0 + 816) = v5;
  *(v0 + 640) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  *(v0 + 824) = v2;
  if (swift_dynamicCast())
  {

    *(v0 + 832) = *(v0 + 648);
    v7 = *(v0 + 680);
    if (v5)
    {
      v8 = *(v7 + 24);
      v9 = swift_task_alloc();
      *(v0 + 840) = v9;
      *v9 = v0;
      v9[1] = sub_26132D0E4;

      return sub_2612723D8(v8);
    }

    else
    {
      v12 = *(v0 + 672);
      v13 = *(v7 + 24);
      v14 = sub_2612B5A20(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
      if (v12)
      {
        v12 = (*(**(v0 + 672) + 376))(v14);
      }

      *(v0 + 856) = v12;
      type metadata accessor for SafMonitorEventDispatcher();
      v15 = swift_task_alloc();
      *(v0 + 864) = v15;
      *v15 = v0;
      v15[1] = sub_26132D318;
      v16 = *(v0 + 832);

      return sub_26129E62C(v13, v0 + 528, v12, 0, 0, v16);
    }
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26132CCC0()
{
  *(v0 + 760) = *(v0 + 568);
  v1 = *(v0 + 592);
  *(v0 + 768) = *(v0 + 576);
  *(v0 + 784) = v1;
  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_26132CD6C;
  v3 = *(v0 + 728);

  return sub_2612723D8(v3);
}

uint64_t sub_26132CD6C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 736);
  v7 = *(*v2 + 680);
  v10 = *v2;

  type metadata accessor for SafMonitorEventDispatcher();
  v8 = swift_task_alloc();
  *(v5 + 808) = v8;
  *v8 = v10;
  v8[1] = sub_26132CF18;

  return sub_26129E2A4(v7 + v6, v5 + 16, a1, a2 & 1);
}

uint64_t sub_26132CF18()
{
  v1 = *v0;

  sub_261273FD4(v1 + 304);

  return MEMORY[0x2822009F8](sub_26132D01C, 0, 0);
}

uint64_t sub_26132D01C()
{
  v9 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 776);
  v7[0] = *(v0 + 760);
  v7[1] = v4;
  v8 = v1;
  sub_26135F9FC(v2, 1, 0, v7, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26132D0E4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 153) = a2;

  return MEMORY[0x2822009F8](sub_26132D1E8, 0, 0);
}

uint64_t sub_26132D1E8()
{
  if (*(v0 + 153))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 848);
  }

  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v2 + 24);
  v5 = sub_2612B5A20(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
  if (v3)
  {
    v3 = (*(**(v0 + 672) + 376))(v5);
  }

  *(v0 + 856) = v3;
  type metadata accessor for SafMonitorEventDispatcher();
  v6 = swift_task_alloc();
  *(v0 + 864) = v6;
  *v6 = v0;
  v6[1] = sub_26132D318;
  v7 = *(v0 + 832);

  return sub_26129E62C(v4, v0 + 528, v3, v1, 0, v7);
}

uint64_t sub_26132D318()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 528));

  return MEMORY[0x2822009F8](sub_26132D438, 0, 0);
}

uint64_t sub_26132D438()
{
  v1 = *(v0 + 832);
  sub_2612C5960();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26132D504(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132D5AC, 0, 0);
}

uint64_t sub_26132D5AC()
{
  v1 = v0[2];
  if (!v1)
  {
    v6 = v0[4];
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "[SessionTask] making sure no SAF session exists", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = v0[4];

      (*(v9 + 8))(v15, v8);
    }

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v5 = sub_26132DB44;
    goto LABEL_13;
  }

  v2 = *(*v1 + 304);

  if (v2(v3))
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v5 = sub_26132D844;
LABEL_13:
    v4[1] = v5;

    return sub_26132DC70();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_26132D844()
{

  return MEMORY[0x2822009F8](sub_26132D940, 0, 0);
}

uint64_t sub_26132D940()
{
  v1 = v0[5];
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "[SessionTask] updating online session SAF active flag as [ false ]", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[5];

    (*(v4 + 8))(v8, v3);
  }

  v10 = v0[2];
  v9 = v0[3];
  (*(*v10 + 312))(0);
  v11 = *(v9 + 24);
  v12 = *(v11 + 64);
  v13 = *(v11 + 72);

  sub_26125B1E4(v12, v13, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_26132DB44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26132DC70()
{
  v1[56] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132DD18, 0, 0);
}

uint64_t sub_26132DD18()
{
  v1 = *(v0 + 448);
  *(v0 + 472) = type metadata accessor for StoreAndForwardManager();
  v2 = *(v1 + 24);
  *(v0 + 480) = v2;
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  sub_26126B07C(v3, v4, v0 + 304);

  v5 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v5;
  *(v0 + 281) = *(v0 + 425);
  v6 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v6;
  v7 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v7;
  v8 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v8;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v9 = *(v0 + 456);
    v10 = sub_26129B5FC();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(*(v0 + 456), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D9C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "[SessionTask] no previous SAF session to delete", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      v24 = *(v0 + 456);

      (*(v12 + 8))(v24, v11);
    }

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v13 = *(v0 + 448);
    v14 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v14;
    *(v0 + 137) = *(v0 + 281);
    v15 = *(v0 + 208);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v15;
    v16 = *(v0 + 240);
    *(v0 + 80) = *(v0 + 224);
    *(v0 + 96) = v16;
    v17 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v17;
    type metadata accessor for SafMonitorEventDispatcher();
    v18 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
    v19 = swift_task_alloc();
    *(v0 + 488) = v19;
    *v19 = v0;
    v19[1] = sub_26132DFF4;

    return sub_26129E984(v13 + v18, v0 + 16);
  }
}

uint64_t sub_26132DFF4()
{
  v1 = *v0;

  sub_26124C718(v1 + 304, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26132E108, 0, 0);
}

uint64_t sub_26132E108()
{
  v1 = v0[58];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[58], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "[SessionTask] deleting previous SAF session", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[58];

    (*(v4 + 8))(v8, v3);
  }

  v9 = v0[60];
  v10 = v0[56];
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);

  sub_261272A54(v11, v12);

  if (*(v10 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_analytics))
  {
    sub_26139AA34();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_26132E2E4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v66[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v66[-v17];
  if (!a1)
  {
    v28 = sub_26129B5FC();
    sub_26125A870(v28, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v7, 1, v29) != 1)
    {
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "[SessionTask] no session to compare passcode creation dates", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v30 + 8))(v7, v29);
      return 0;
    }

    v27 = v7;
    goto LABEL_7;
  }

  sub_2612F9F2C();

  sub_2612FA6A8();
  v20 = v19;

  v22 = *(*a1 + 328);
  v23 = (v22)(v21);
  v24 = sub_26129B5FC();
  if (v20 == v23)
  {
    sub_26125A870(v24, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v10, 1, v25) != 1)
    {
      v35 = sub_2613A122C();
      v36 = sub_2613A1D7C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, "[SessionTask] passcode creation timestamp did NOT change", v37, 2u);
        MEMORY[0x266701350](v37, -1, -1);
      }

      (*(v26 + 8))(v10, v25);
      return 0;
    }

    v27 = v10;
LABEL_7:
    sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
    return 0;
  }

  v68 = v16;
  v73 = v24;
  sub_26125A870(v24, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v31 = sub_2613A124C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v70 = v32 + 48;
  v71 = v32;
  v69 = v33;
  v34 = v33(v18, 1, v31);
  v72 = v31;
  if (v34 == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v42 = sub_2613A122C();
    v43 = sub_2613A1D9C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218240;
      v67 = v43;
      *(v44 + 4) = v22();
      *(v44 + 12) = 2048;
      *(v44 + 14) = v20;
      _os_log_impl(&dword_261243000, v42, v67, "[SessionTask] Passcode creation timestamp changed from [%f] to [%f] requesting reader status", v44, 0x16u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    (*(v71 + 8))(v18, v31);
  }

  v45 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v46 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v45);
  v47 = a1[6];
  v48 = a1[7];
  v49 = v2;
  v50 = *(v46 + 40);

  v51 = v50(v47, v48, v45, v46);
  v52 = v49;

  if (v51)
  {
    v53 = v68;
    sub_26125A870(v73, v68, &qword_27FE9F560, &qword_2613A3CB0);
    v54 = v72;
    if (v69(v53, 1, v72) == 1)
    {
      v55 = sub_26124C718(v53, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v60 = sub_2613A122C();
      v61 = sub_2613A1D7C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_261243000, v60, v61, "[SessionTask] user did NOT change passcode On/Off state", v62, 2u);
        MEMORY[0x266701350](v62, -1, -1);
      }

      v55 = (*(v71 + 8))(v53, v54);
    }

    (*(*a1 + 336))(v55, v20);
    v63 = *(v52 + 24);
    v64 = *(v63 + 64);
    v65 = *(v63 + 72);

    sub_26125B1E4(v64, v65, a1);

    return 0;
  }

  sub_26125A870(v73, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v56 = v72;
  if (v69(v13, 1, v72) == 1)
  {

    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    return 1;
  }

  else
  {
    v57 = sub_2613A122C();
    v58 = sub_2613A1D8C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_261243000, v57, v58, "[SessionTask] user changed passcode On/Off state", v59, 2u);
      MEMORY[0x266701350](v59, -1, -1);
    }

    (*(v71 + 8))(v13, v56);
    return 1;
  }
}

uint64_t sub_26132EB10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  if (!a1)
  {
    return 1;
  }

  v9 = a1[8];
  v10 = a1[9];
  v43 = *(*(v1 + 24) + 96);
  if (v9 == sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0) && v10 == v11)
  {

LABEL_11:
    v20 = (*(*a1 + 256))(v14);
    v22 = v21;
    type metadata accessor for SessionStore();
    if (v20 == sub_261292C7C() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_2613A241C();

      if ((v25 & 1) == 0)
      {
        v26 = sub_26129B5FC();
        sub_26125A870(v26, v6, &qword_27FE9F560, &qword_2613A3CB0);
        v27 = sub_2613A124C();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v6, 1, v27) != 1)
        {

          v32 = sub_2613A122C();
          v33 = sub_2613A1D8C();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v42 = v41;
            *v34 = 136446466;
            v35 = sub_26124C11C(v20, v22, &v42);

            *(v34 + 4) = v35;
            *(v34 + 12) = 2082;
            v36 = sub_261292C7C();
            v38 = sub_26124C11C(v36, v37, &v42);

            *(v34 + 14) = v38;
            _os_log_impl(&dword_261243000, v32, v33, "[SessionTask] os version mismatch: %{public}s --> %{public}s", v34, 0x16u);
            v39 = v41;
            swift_arrayDestroy();
            MEMORY[0x266701350](v39, -1, -1);
            MEMORY[0x266701350](v34, -1, -1);
          }

          else
          {
          }

          (*(v28 + 8))(v6, v27);
          return 0;
        }

        v18 = v6;
        goto LABEL_21;
      }
    }

    return 1;
  }

  v13 = sub_2613A241C();

  if (v13)
  {
    goto LABEL_11;
  }

  v15 = sub_26129B5FC();
  sub_26125A870(v15, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) != 1)
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D8C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "[SessionTask] saved session does not have the same environment", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    (*(v17 + 8))(v8, v16);
    return 0;
  }

  v18 = v8;
LABEL_21:
  sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  return 0;
}

uint64_t sub_26132EFD0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  if (sub_26132EB10(a1))
  {
    if (a1 && (sub_2613A0FBC() & 1) != 0)
    {
      return 1;
    }

    v15 = sub_26129B5FC();
    sub_26125A870(v15, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) != 1)
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D9C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "[SessionTask] pspt is nil or pspt is different than partner token", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v17 + 8))(v9, v16);
      return 0;
    }

    v14 = v9;
  }

  else
  {
    v11 = sub_26129B5FC();
    sub_26125A870(v11, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) != 1)
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "[SessionTask] existing session is invalid", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v13 + 8))(v7, v12);
      return 0;
    }

    v14 = v7;
  }

  sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  return 0;
}

uint64_t sub_26132F2D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 312) = a6;
  *(v7 + 320) = v6;
  *(v7 + 149) = a5;
  *(v7 + 148) = a4;
  *(v7 + 296) = a2;
  *(v7 + 304) = a3;
  *(v7 + 288) = a1;
  v8 = sub_26139F0BC();
  *(v7 + 328) = v8;
  *(v7 + 336) = *(v8 - 8);
  *(v7 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  *(v7 + 352) = swift_task_alloc();
  v9 = sub_26139EF7C();
  *(v7 + 360) = v9;
  *(v7 + 368) = *(v9 - 8);
  *(v7 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132F4E0, 0, 0);
}

uint64_t sub_26132F4E0()
{
  v1 = *(v0 + 456);
  v2 = sub_26129B5FC();
  *(v0 + 464) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 472) = v3;
  v4 = *(v3 - 8);
  *(v0 + 480) = v4;
  v5 = *(v4 + 48);
  *(v0 + 488) = v5;
  *(v0 + 496) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v50 = v5;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 456), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v2;
      v9 = *(v0 + 149);
      v10 = *(v0 + 148);
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v10;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v9;
      v2 = v8;
      _os_log_impl(&dword_261243000, v6, v7, "[SessionTask] requesting reader to prepare, refresh: [ %{BOOL}d ] force: [ %{BOOL}d ]", v11, 0xEu);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = *(v0 + 456);

    (*(v4 + 8))(v12, v3);
  }

  v13 = (*(v0 + 320) + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 32))(v14, v15);
  v48 = v2;
  v46 = v4;
  v49 = v3;
  v16 = *(v0 + 320);
  v17 = *(v0 + 149);
  v18 = v13[3];
  v19 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v18);
  v47 = v16;
  v20 = *(v16 + 24);
  v22 = *(v20 + 64);
  v21 = *(v20 + 72);
  v23 = *(v19 + 56);

  v23(0, 0, v17, 0, v22, v21, v18, v19);
  v25 = v24;
  *(v0 + 504) = 0;

  v51 = *(v25 + 16);
  if (v51)
  {
    v27 = 0;
    v28 = (v25 + 64);
    while (v27 < *(v25 + 16))
    {
      v30 = *(v28 - 4);
      v29 = *(v28 - 3);
      v32 = *(v28 - 2);
      v31 = *(v28 - 1);
      v33 = *v28;

      if (DeprecationWarning.isOSVersionDeprecation.getter())
      {

        goto LABEL_14;
      }

      ++v27;
      v28 += 5;
      if (v51 == v27)
      {

        v30 = 0;
        v29 = 0;
        v32 = 0;
        v31 = 0;
        v33 = 0;
LABEL_14:

        sub_261273F3C(0, 0, 0, 0, 0);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v33 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
LABEL_15:
    *(v0 + 544) = v30;
    *(v0 + 536) = v29;
    *(v0 + 528) = v32;
    *(v0 + 520) = v31;
    *(v0 + 512) = v33;
    v34 = *(v0 + 448);
    sub_26125A870(v48, v34, &qword_27FE9F560, &qword_2613A3CB0);
    if (v50(v34, 1, v49) == 1)
    {
      sub_26124C718(*(v0 + 448), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = sub_2613A122C();
      v36 = sub_2613A1D9C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, "[SessionTask] reader is prepared", v37, 2u);
        MEMORY[0x266701350](v37, -1, -1);
      }

      v38 = *(v0 + 448);

      (*(v46 + 8))(v38, v49);
    }

    v39 = *(v0 + 312);
    v40 = *(v47 + 24);
    *(v0 + 552) = v40;
    if (v39)
    {
      v41 = *(v39 + 32);
      v42 = *(v39 + 40);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(v0 + 560) = v42;
    type metadata accessor for AuthorizerService();
    v43 = swift_task_alloc();
    *(v0 + 568) = v43;
    *v43 = v0;
    v43[1] = sub_26132FB44;
    v44 = *(v0 + 296);
    v45 = *(v0 + 304);

    return sub_26124F738(v0 + 96, v40, v44, v45, v41, v42);
  }

  return result;
}

uint64_t sub_26132FB44()
{

  return MEMORY[0x2822009F8](sub_26132FC5C, 0, 0);
}

uint64_t sub_26132FC5C()
{
  v211 = v0;
  v1 = v0;
  v3 = *(v0 + 104);
  v2 = v0 + 96;
  v203 = *(v0 + 96);
  v4 = *(v0 + 120);
  v207 = *(v0 + 112);
  v5 = *(v0 + 128);
  if ((*(v0 + 144) & 1) == 0)
  {
    v200 = v0;
    v201 = *(v0 + 104);
    *(v0 + 147) = *(*(v0 + 552) + 96);

    v198 = v0 + 96;
    v10 = sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0);
    v199 = v11;
    v12 = sub_2612F9F2C();
    if (*(*v12 + 32))
    {
      v13 = *(*v12 + 24);
      v14 = *(*v12 + 32);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    v1 = v200;
    v35 = *(v200 + 296);
    v36 = *(v200 + 304);
    type metadata accessor for SessionStore();

    sub_2612FA6A8();
    v38 = v37;

    v39 = sub_26125A798();

    v40 = sub_261292B44(v35, v36, v203, v3, v207, v4, v10, v199, v38, v13, v14, v39 & 1);
    *(v200 + 576) = v40;
    v41 = *v40;
    v42 = *(*v40 + 376);
    *(v200 + 584) = v42;
    *(v200 + 592) = (v41 + 376) & 0xFFFFFFFFFFFFLL | 0xC31D000000000000;
    v43 = v42();
    *(v200 + 600) = v43;
    if (!v43)
    {
      v47 = *(v200 + 296);
      v46 = *(v200 + 304);
      sub_261273F3C(*(v200 + 544), *(v200 + 536), *(v200 + 528), *(v200 + 520), *(v200 + 512));
      sub_261332844(v203, v201, v47, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v49 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      *(inited + 40) = v50;
      v51 = sub_261377F5C();
      v53 = *v51;
      v52 = v51[1];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v53;
      *(inited + 56) = v52;

      sub_261259E78(inited);
      swift_setDeallocating();
      sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
      v54 = objc_allocWithZone(v49);
      v2 = v198;
      v55 = sub_26139F2DC();
      sub_2612C5960();
      swift_allocError();
      *v56 = v55;
      swift_willThrow();

LABEL_85:
      sub_26124C718(v2, &qword_27FE9F230, &qword_2613A3F10);

      v113 = *(v1 + 8);
      goto LABEL_86;
    }

    v204 = v43;
    v44 = *(v200 + 312);
    if (v44)
    {
      v45 = (*(*v44 + 184))();
    }

    else
    {
      v45 = sub_2613A0C5C();
    }

    v65 = *(v200 + 312);
    v66 = (*(*v40 + 192))(v45);
    if (v65)
    {
      v67 = (*(**(v200 + 312) + 232))(v66);
    }

    else
    {
      v67 = 0;
      v68 = 1;
    }

    v69 = *(v200 + 312);
    v70 = (*(*v40 + 240))(v67, v68 & 1);
    if (v69)
    {
      v71 = (*(**(v200 + 312) + 352))(v70);
    }

    else
    {
      v71 = 0;
      v72 = 0;
      v73 = 1;
    }

    v74 = *(v200 + 148);
    (*(*v40 + 360))(v71, v72, v73 & 1);
    if (v74 == 1)
    {
      goto LABEL_33;
    }

    v91 = *(v200 + 360);
    v90 = *(v200 + 368);
    v92 = *(v200 + 352);
    sub_26139F73C();
    sub_26139F72C();

    sub_26139F71C();

    type metadata accessor for Mock();

    sub_26129B1A8(19);

    sub_26139EF5C();

    if ((*(v90 + 48))(v92, 1, v91) == 1)
    {
      sub_26124C718(*(v200 + 352), &qword_27FE9F220, qword_2613A5530);
    }

    else
    {
      v94 = *(v200 + 368);
      v93 = *(v200 + 376);
      v95 = *(v200 + 360);
      (*(v94 + 32))(v93, *(v200 + 352), v95);
      sub_26139F72C();

      sub_26139F70C();

      (*(v94 + 8))(v93, v95);
    }

    v96 = sub_26129B0F4(4);
    v97 = *(v200 + 488);
    v99 = *(v200 + 464);
    v98 = *(v200 + 472);
    if (v96)
    {
      v100 = *(v200 + 440);
      sub_26125A870(*(v200 + 464), v100, &qword_27FE9F560, &qword_2613A3CB0);
      if (v97(v100, 1, v98) == 1)
      {
        sub_26124C718(*(v200 + 440), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v114 = sub_2613A122C();
        v115 = sub_2613A1D7C();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_261243000, v114, v115, "INTERNAL - skipping applet install", v116, 2u);
          MEMORY[0x266701350](v116, -1, -1);
        }

        v117 = *(v200 + 472);
        v118 = *(v200 + 480);
        v119 = *(v200 + 440);

        (*(v118 + 8))(v119, v117);
      }

LABEL_33:
      v75 = *(v200 + 504);
      goto LABEL_34;
    }

    v101 = *(v200 + 432);
    v102 = sub_26132EB10(*(v200 + 312));
    sub_26125A870(v99, v101, &qword_27FE9F560, &qword_2613A3CB0);
    if (v97(v101, 1, v98) == 1)
    {
      v103 = sub_26124C718(*(v200 + 432), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v120 = sub_2613A122C();
      v121 = sub_2613A1D9C();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 67240192;
        *(v122 + 4) = v102 & 1;
        _os_log_impl(&dword_261243000, v120, v121, "[SessionTask] sessionStoreValid: %{BOOL,public}d", v122, 8u);
        MEMORY[0x266701350](v122, -1, -1);
      }

      v123 = *(v200 + 472);
      v124 = *(v200 + 480);
      v125 = *(v200 + 432);

      v103 = (*(v124 + 8))(v125, v123);
    }

    *&v126 = COERCE_DOUBLE((*(*v40 + 232))(v103));
    if (v127)
    {
      v128 = 0;
    }

    else
    {
      v130 = *(v200 + 336);
      v129 = *(v200 + 344);
      v131 = *&v126;
      v132 = *(v200 + 328);
      sub_26139F0AC();
      sub_26139F07C();
      v134 = v133;
      (*(v130 + 8))(v129, v132);
      v128 = v134 < v131;
    }

    v135 = *(v200 + 488);
    v136 = *(v200 + 472);
    v137 = *(v200 + 424);
    sub_26125A870(*(v200 + 464), v137, &qword_27FE9F560, &qword_2613A3CB0);
    if (v135(v137, 1, v136) == 1)
    {
      sub_26124C718(*(v200 + 424), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v138 = *(v200 + 312);

      v139 = sub_2613A122C();
      v140 = sub_2613A1D9C();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = *(v200 + 312);
        v142 = swift_slowAlloc();
        *v142 = 134349056;
        if (!v141 || (v143 = (*(*v138 + 232))(), (v144 & 1) != 0))
        {
          v143 = 0;
        }

        *(v142 + 4) = v143;
        _os_log_impl(&dword_261243000, v139, v140, "[SessionTask] stale: %{public}f", v142, 0xCu);
        MEMORY[0x266701350](v142, -1, -1);
        v1 = v200;
      }

      v145 = *(v1 + 472);
      v146 = *(v1 + 480);
      v147 = *(v1 + 424);

      (*(v146 + 8))(v147, v145);
    }

    v148 = *(v1 + 488);
    v149 = *(v1 + 472);
    v150 = *(v1 + 416);
    sub_26125A870(*(v1 + 464), v150, &qword_27FE9F560, &qword_2613A3CB0);
    if (v148(v150, 1, v149) == 1)
    {
      sub_26124C718(*(v1 + 416), &qword_27FE9F560, &qword_2613A3CB0);
      if (*(v1 + 312))
      {
LABEL_69:
        v151 = sub_2613A0F8C();
        goto LABEL_74;
      }
    }

    else
    {
      v152 = sub_2613A122C();
      v153 = sub_2613A1D9C();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *v154 = 67240192;
        *(v154 + 4) = v128;
        _os_log_impl(&dword_261243000, v152, v153, "[SessionTask] within24h: %{BOOL,public}d", v154, 8u);
        MEMORY[0x266701350](v154, -1, -1);
      }

      v155 = *(v1 + 472);
      v156 = *(v1 + 480);
      v157 = *(v1 + 416);

      (*(v156 + 8))(v157, v155);
      if (*(v1 + 312))
      {
        goto LABEL_69;
      }
    }

    v151 = 0;
LABEL_74:
    v158 = v102 & v128;
    v159 = *(v1 + 488);
    v160 = *(v1 + 472);
    v161 = *(v1 + 408);
    sub_26125A870(*(v1 + 464), v161, &qword_27FE9F560, &qword_2613A3CB0);
    if (v159(v161, 1, v160) == 1)
    {
      sub_26124C718(*(v1 + 408), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v162 = sub_2613A122C();
      v163 = sub_2613A1D9C();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 67240192;
        *(v164 + 4) = v151 & 1;
        _os_log_impl(&dword_261243000, v162, v163, "[SessionTask] sameProfile: %{BOOL,public}d", v164, 8u);
        MEMORY[0x266701350](v164, -1, -1);
      }

      v165 = *(v1 + 472);
      v166 = *(v1 + 480);
      v167 = *(v1 + 408);

      (*(v166 + 8))(v167, v165);
    }

    v168 = v158 & v151;
    v75 = *(v1 + 504);
    if ((v168 & 1) != 0 || !*(v1 + 312))
    {
      v171 = (*(v1 + 320) + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
      v172 = v171[3];
      v173 = v171[4];
      __swift_project_boxed_opaque_existential_1(v171, v172);
      v174 = v40[6];
      v175 = v40[7];
      v209 = *(v173 + 40);

      v176 = v209(v174, v175, v172, v173);

      if (v75)
      {
        sub_261273F3C(*(v1 + 544), *(v1 + 536), *(v1 + 528), *(v1 + 520), *(v1 + 512));

        sub_261332448(v75, v204, 0, 0);

        swift_willThrow();

        goto LABEL_84;
      }

      v170 = v168 & v176;
      v169 = v176 & 1;
    }

    else
    {
      v169 = 0;
      v170 = 0;
    }

    v177 = *(v1 + 488);
    v178 = *(v1 + 472);
    v179 = *(v1 + 400);
    sub_26125A870(*(v1 + 464), v179, &qword_27FE9F560, &qword_2613A3CB0);
    if (v177(v179, 1, v178) == 1)
    {
      sub_26124C718(*(v1 + 400), &qword_27FE9F560, &qword_2613A3CB0);
      if ((v170 & 1) == 0)
      {
LABEL_92:
        v180 = swift_allocObject();
        *(v1 + 608) = v180;
        swift_weakInit();

        v181 = swift_task_alloc();
        *(v1 + 616) = v181;
        *v181 = v1;
        v181[1] = sub_2613312D4;
        v182 = *(v1 + 320);

        return sub_261331F0C(v182, v40, sub_261333F90, v180);
      }
    }

    else
    {
      v183 = sub_2613A122C();
      v184 = sub_2613A1D9C();
      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        *v185 = 67240192;
        *(v185 + 4) = v169;
        _os_log_impl(&dword_261243000, v183, v184, "[SessionTask] readerValid: %{BOOL,public}d", v185, 8u);
        MEMORY[0x266701350](v185, -1, -1);
      }

      v186 = *(v1 + 472);
      v187 = *(v1 + 480);
      v188 = *(v1 + 400);

      (*(v187 + 8))(v188, v186);
      if ((v170 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    v189 = *(v1 + 488);
    v190 = *(v1 + 472);
    v191 = *(v1 + 392);
    sub_26125A870(*(v1 + 464), v191, &qword_27FE9F560, &qword_2613A3CB0);
    if (v189(v191, 1, v190) == 1)
    {
      sub_26124C718(*(v1 + 392), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v192 = sub_2613A122C();
      v193 = sub_2613A1D9C();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&dword_261243000, v192, v193, "[SessionTask] skipping applet install", v194, 2u);
        MEMORY[0x266701350](v194, -1, -1);
      }

      v195 = *(v1 + 472);
      v196 = *(v1 + 480);
      v197 = *(v1 + 392);

      (*(v196 + 8))(v197, v195);
    }

LABEL_34:
    v76 = *(v1 + 576);
    v78 = *(v76 + 48);
    v77 = *(v76 + 56);

    LOBYTE(v78) = sub_2612F68E0(v78, v77);

    if (v78)
    {
      v80 = *(v1 + 552);
      v81 = *(v1 + 320);
      v205 = (*(v1 + 584))(v79);
      v82 = (v81 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
      v83 = *(v81 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
      v84 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v85 = *(v76 + 48);
      v86 = *(v76 + 56);
      v87 = *(v80 + 64);
      v88 = *(v80 + 72);
      v89 = *(v84 + 56);

      v89(v85, v86, 0, 0, v87, v88, v83, v84);
      if (v75)
      {
        sub_261273F3C(*(v1 + 544), *(v1 + 536), *(v1 + 528), *(v1 + 520), *(v1 + 512));

        sub_261332448(v75, v205, 0, 0);
        swift_willThrow();

LABEL_84:

        v2 = v198;
        goto LABEL_85;
      }
    }

    v106 = *(v1 + 600);
    v107 = *(v1 + 576);
    v108 = *(v1 + 552);
    v109 = *(v1 + 512);
    v110 = *(v1 + 288);
    v111 = *(v108 + 64);
    v112 = *(v108 + 72);

    v206 = *(v1 + 536);
    v208 = *(v1 + 520);
    sub_26125B1E4(v111, v112, v107);

    sub_26124C718(v198, &qword_27FE9F230, &qword_2613A3F10);
    v110->i64[0] = v107;
    v110->i64[1] = v106;
    v110[1] = vextq_s8(v206, v206, 8uLL);
    v110[2] = vextq_s8(v208, v208, 8uLL);
    v110[3].i64[0] = v109;

    v113 = *(v1 + 8);
LABEL_86:

    return v113();
  }

  v6 = *(v0 + 488);
  v7 = *(v0 + 464);
  v8 = *(v0 + 472);
  v9 = *(v0 + 384);
  sub_261273F3C(*(v0 + 544), *(v0 + 536), *(v0 + 528), *(v0 + 520), *(v0 + 512));
  sub_26125A870(v7, v9, &qword_27FE9F560, &qword_2613A3CB0);
  if (v6(v9, 1, v8) == 1)
  {
    sub_26124C718(*(v0 + 384), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    *(v0 + 208) = v3;
    *(v0 + 216) = v207;
    *(v0 + 192) = v4;
    *(v0 + 200) = v5;
    sub_2612DDE08(v0 + 208, v0 + 224);
    sub_2612DDE08(v0 + 192, v0 + 240);
    v15 = sub_2613A122C();
    v16 = v3;
    v17 = sub_2613A1D8C();
    sub_26130105C(v0 + 208);
    sub_26130105C(v0 + 192);
    v202 = v16;
    if (os_log_type_enabled(v15, v17))
    {
      v18 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v210 = v20;
      *v19 = 136315138;
      *(v0 + 152) = v203;
      *(v0 + 160) = v16;
      *(v0 + 168) = v207;
      *(v0 + 176) = v4;
      *(v0 + 184) = v18;
      sub_2612DDE08(v0 + 208, v0 + 256);
      sub_2612DDE08(v0 + 192, v0 + 272);
      v21 = sub_2613A195C();
      v23 = sub_26124C11C(v21, v22, &v210);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_261243000, v15, v17, "[SessionTask] openSession API error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v24 = v20;
      v1 = v0;
      MEMORY[0x266701350](v24, -1, -1);
      MEMORY[0x266701350](v19, -1, -1);
    }

    (*(*(v1 + 480) + 8))(*(v1 + 384), *(v1 + 472));
    v3 = v202;
  }

  if (*(v1 + 149))
  {
    goto LABEL_10;
  }

  v31 = sub_2613A0E3C();
  v33 = v32;
  if (v31 == sub_2613A197C() && v33 == v34)
  {
  }

  else
  {
    v57 = sub_2613A241C();

    if ((v57 & 1) == 0)
    {
LABEL_10:
      v25 = sub_2613335E0(v203, v3, v207, *(v1 + 296), *(v1 + 304));
      *(v1 + 145) = v203;
      *(v1 + 146) = 4;
      sub_26129572C();
      if ((sub_2613A188C() & 1) == 0)
      {
        v26 = v0 + 96;
        v27 = *(v1 + 312);
        sub_26139F2CC();
        sub_2612C5960();
        v28 = swift_allocError();
        *v29 = v25;
        if (v27)
        {
          v30 = (*(**(v1 + 312) + 376))(v25);
        }

        else
        {
          v104 = v25;
          v30 = 0;
        }

        sub_261332448(v28, v30, *(v1 + 296), *(v1 + 304));

        v2 = v26;
      }

      sub_26139F2CC();
      sub_2612C5960();
      swift_allocError();
      *v105 = v25;
      swift_willThrow();
      goto LABEL_85;
    }
  }

  v58 = swift_task_alloc();
  *(v1 + 632) = v58;
  *v58 = v1;
  v58[1] = sub_2613318E8;
  v59 = *(v1 + 312);
  v60 = *(v1 + 148);
  v61 = *(v1 + 296);
  v62 = *(v1 + 304);
  v63 = *(v1 + 288);

  return sub_26132F2D8(v63, v61, v62, v60, 1, v59);
}

uint64_t sub_2613312D4()
{
  v2 = *v1;
  (*v1)[78] = v0;

  if (v0)
  {
    sub_261273F3C(v2[68], v2[67], v2[66], v2[65], v2[64]);
    v3 = sub_261331780;
  }

  else
  {
    v3 = sub_261331400;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261331400()
{

  v1 = *(v0 + 624);
  v2 = *(v0 + 576);
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);

  LOBYTE(v4) = sub_2612F68E0(v4, v3);

  if (v4)
  {
    v6 = *(v0 + 552);
    v7 = *(v0 + 320);
    v26 = (*(v0 + 584))(v5);
    v8 = (v7 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
    v9 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v11 = *(v2 + 48);
    v12 = *(v2 + 56);
    v14 = *(v6 + 64);
    v13 = *(v6 + 72);
    v24 = *(v10 + 56);

    v24(v11, v12, 0, 0, v14, v13, v9, v10);
    if (v1)
    {
      sub_261273F3C(*(v0 + 544), *(v0 + 536), *(v0 + 528), *(v0 + 520), *(v0 + 512));

      sub_261332448(v1, v26, 0, 0);
      swift_willThrow();

      sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);

      v15 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  v16 = *(v0 + 600);
  v17 = *(v0 + 576);
  v18 = *(v0 + 552);
  v19 = *(v0 + 512);
  v20 = *(v0 + 288);
  v21 = *(v18 + 64);
  v22 = *(v18 + 72);

  v25 = *(v0 + 536);
  v27 = *(v0 + 520);
  sub_26125B1E4(v21, v22, v17);

  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);
  v20->i64[0] = v17;
  v20->i64[1] = v16;
  v20[1] = vextq_s8(v25, v25, 8uLL);
  v20[2] = vextq_s8(v27, v27, 8uLL);
  v20[3].i64[0] = v19;

  v15 = *(v0 + 8);
LABEL_6:

  return v15();
}

uint64_t sub_261331780()
{
  sub_261332448(*(v0 + 624), *(v0 + 600), 0, 0);
  swift_willThrow();

  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613318E8()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_261331B18;
  }

  else
  {
    v2 = sub_2613319FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2613319FC()
{
  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261331B18()
{
  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261331C38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06E0, &qword_2613ACCF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
    v15 = Strong;
    swift_beginAccess();
    sub_26125A870(v15 + v14, v9, &qword_27FEA06A0, &unk_2613ACB58);

    if (!(*(v4 + 48))(v9, 1, v3))
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_26124C718(v9, &qword_27FEA06A0, &unk_2613ACB58);
      v19[1] = a1;
      sub_2613A1C2C();
      (*(v4 + 8))(v6, v3);
      v16 = 0;
      goto LABEL_6;
    }

    sub_26124C718(v9, &qword_27FEA06A0, &unk_2613ACB58);
  }

  v16 = 1;
LABEL_6:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06E8, &qword_2613ACD00);
  (*(*(v17 - 8) + 56))(v12, v16, 1, v17);
  return sub_26124C718(v12, &qword_27FEA06E0, &qword_2613ACCF8);
}

uint64_t sub_261331F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139F0BC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261331FD0, 0, 0);
}

void sub_261331FD0()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24));
  v0[9] = *(*(v1 + 24) + 40);
  v3 = *(v2 + 64);

  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_261332150;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_261332150(uint64_t a1, double a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = sub_2613323DC;
  }

  else
  {

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_261332290;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261332290()
{
  v1 = v0[12];
  v3 = *(v0 + 7);
  v2 = *(v0 + 8);
  v4 = *(v0 + 6);
  v5 = *(v0 + 3);
  (*(*v5 + 192))(*(v0 + 13));
  sub_26139F0AC();
  sub_26139F07C();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = (*(*v5 + 240))(v7 + 86400.0, 0);
  (*(*v5 + 216))(v8, v1);

  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_2613323DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261332448(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  *&v62[0] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v19 = v61[0];
    if (a2)
    {
      v20 = a2[6];
      v21 = a2[7];
      v22 = *(*a2 + 192);

      v24 = v22(v23);
    }

    else
    {
      if (!a4 || (v39 = sub_2612F6894(a3, a4, v13, v14, v15, v16, v17, v18, v56), !v40))
      {
        v39 = sub_2613A0CFC();
      }

      v20 = v39;
      v21 = v40;
      v24 = sub_2613A0CFC();
    }

    v41 = v24;
    v42 = v25;
    v43 = *(v4 + 24);
    v44 = *(v43 + 64);
    v45 = *(v43 + 72);

    v46 = [v19 description];
    v57 = v19;
    v47 = v46;
    v48 = sub_2613A18CC();
    v50 = v49;

    sub_2612A77D4(v44, v45, v20, v21, v41, v42, v48, v50, v62);
    v59 = &type metadata for InternalSessionError;
    v60 = sub_2613248C8();
    v51 = swift_allocObject();
    *&v58 = v51;
    v52 = v62[1];
    v51[1] = v62[0];
    v51[2] = v52;
    v53 = v62[3];
    v51[3] = v62[2];
    v51[4] = v53;
    sub_2612B64A4(6, &v58, v61);
    v54 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v55 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v54);
    (*(v55 + 120))(v61, v54, v55);

    return sub_2612A0E50(v61);
  }

  else
  {
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v11, 1, v27) == 1)
    {
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v30 = a1;
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v62[0] = v34;
        *v33 = 136315138;
        v61[0] = a1;
        v35 = a1;
        v36 = sub_2613A195C();
        v38 = sub_26124C11C(v36, v37, v62);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_261243000, v31, v32, "[SessionTask] could not parse session internal error: [ %s ]", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x266701350](v34, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      return (*(v28 + 8))(v11, v27);
    }
  }
}

uint64_t sub_261332844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v16 = sub_2612F6894(a3, a4, v10, v11, v12, v13, v14, v15, v34);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = *(v4 + 24);
    v21 = *(v20 + 64);
    v22 = *(v20 + 72);

    sub_2612B9300(v21, v22, v18, v19, v39);
    v36 = &type metadata for InvalidSessionToken;
    v37 = sub_26133358C();
    v23 = swift_allocObject();
    *&v35 = v23;
    v24 = v39[1];
    v23[1] = v39[0];
    v23[2] = v24;
    v23[3] = v39[2];
    sub_2612B64A4(3, &v35, v38);
    v25 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v26 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v25);
    (*(v26 + 120))(v38, v25, v26);
    return sub_2612A0E50(v38);
  }

  else
  {
    v28 = sub_26129B5FC();
    sub_26125A870(v28, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v9, 1, v29) == 1)
    {
      return sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "[SessionTask] failed to build invalidSessionToken monitor event, merchantId was not found.", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      return (*(v30 + 8))(v9, v29);
    }
  }
}

uint64_t sub_261332ADC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(*a1 + 192);

  v9 = v7(v8);
  sub_2612B695C(v3, v4, v5, v6, v9, v10, v20);
  v17 = &type metadata for SessionRefreshed;
  v18 = sub_261333F3C();
  v11 = swift_allocObject();
  *&v16 = v11;
  v12 = v20[1];
  v11[1] = v20[0];
  v11[2] = v12;
  v11[3] = v20[2];
  sub_2612B64A4(9, &v16, v19);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v13);
  (*(v14 + 120))(v19, v13, v14);
  return sub_2612A0E50(v19);
}

uint64_t sub_261332C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_2612F6894(a3, a4, a3, a4, a5, a6, a7, a8, v23);
  if (!v12)
  {
    v11 = sub_2613A0CFC();
  }

  v13 = v11;
  v14 = v12;
  v15 = *(v8 + 24);
  v16 = *(v15 + 64);
  v17 = *(v15 + 72);

  sub_2612C1170(v16, v28, v17, v13, v14, a1, a2);
  v25 = &type metadata for OpenSessionFailed;
  v26 = sub_261333538();
  v18 = swift_allocObject();
  *&v24 = v18;
  v19 = v28[1];
  v18[1] = v28[0];
  v18[2] = v19;
  v18[3] = v28[2];
  sub_2612B64A4(5, &v24, v27);
  v20 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v21 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v20);
  (*(v21 + 120))(v27, v20, v21);
  return sub_2612A0E50(v27);
}

uint64_t sub_261332D38(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(*a1 + 192);

  v9 = v7(v8);
  sub_2612C1170(v3, v20, v4, v5, v6, v9, v10);
  v17 = &type metadata for SessionTokenExpired;
  v18 = sub_261333F98();
  v11 = swift_allocObject();
  *&v16 = v11;
  v12 = v20[1];
  v11[1] = v20[0];
  v11[2] = v12;
  v11[3] = v20[2];
  sub_2612B64A4(4, &v16, v19);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v13);
  (*(v14 + 120))(v19, v13, v14);
  return sub_2612A0E50(v19);
}

uint64_t sub_261332E6C()
{

  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v2 = sub_26139FC1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter));
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation, &qword_27FEA06A0, &unk_2613ACB58);
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation, &qword_27FEA06A8, &unk_2613ACB68);
  sub_2613331CC(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 8), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 24), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 40), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 48), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_261332F94()
{
  v4 = (*(**v0 + 288) + **(**v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261262AA4;

  return v4();
}

uint64_t sub_2613330B0()
{
  v4 = (*(**v0 + 280) + **(**v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261262AA4;

  return v4();
}

void sub_2613331CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != -1)
  {
    sub_2613331E4(result, a2, a3, a4, a5, a6, a7, a8 & 1);
  }
}

void sub_2613331E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {

    sub_261273F3C(a3, a4, a5, a6, a7);
  }
}

uint64_t type metadata accessor for SessionTask(uint64_t a1)
{
  result = qword_27FEAE360;
  if (!qword_27FEAE360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2613332B4(uint64_t a1)
{
  sub_26139FC1C();
  if (v1 <= 0x3F)
  {
    sub_261333428(319, &qword_27FEA06B8, &qword_27FEA0688, &qword_2613ACB40);
    if (v2 <= 0x3F)
    {
      sub_261333428(319, &qword_27FEA06C0, &qword_27FEA0690, &qword_2613ACB48);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_261333428(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2613A1F8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon18DeprecationWarningVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261333494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2613334DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_261333538()
{
  result = qword_27FEA06C8;
  if (!qword_27FEA06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06C8);
  }

  return result;
}

unint64_t sub_26133358C()
{
  result = qword_27FEA06D0;
  if (!qword_27FEA06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06D0);
  }

  return result;
}

uint64_t sub_2613335E0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26139FAAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v15 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v16 = inited + 32;
      *(inited + 40) = v23;
      v18 = sub_261377F68();
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v15 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v16 = inited + 32;
      *(inited + 40) = v17;
      v18 = sub_261377F74();
LABEL_11:
      v25 = *v18;
      v24 = v18[1];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v25;
      *(inited + 56) = v24;

      sub_261259E78(inited);
      swift_setDeallocating();
      sub_26124C718(v16, &qword_27FE9F2F0, &qword_2613A4BD0);
      v26 = objc_allocWithZone(v15);
      return sub_26139F2DC();
    }

LABEL_12:
    v27 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

  if (a1 == 3)
  {
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    v28 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_2613A4310;
    v30 = sub_26139F2CC();
    *(v29 + 32) = sub_26139F28C();
    *(v29 + 40) = v31;
    (*(v10 + 104))(v13, *MEMORY[0x277D43838], v28);
    v32 = sub_26139FA9C();
    (*(v10 + 8))(v13, v28);
    *(v29 + 72) = MEMORY[0x277D83B88];
    *(v29 + 48) = v32;
    sub_261259E78(v29);
    swift_setDeallocating();
    sub_26124C718(v29 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v33 = objc_allocWithZone(v30);
    return sub_26139F2DC();
  }

  v19 = sub_2613A197C();
  v21 = v20;
  if (sub_2613A0DFC() == v19 && v22 == v21)
  {

LABEL_17:
    v36 = *(v5 + 3);
    v37 = *(v36 + 64);
    v38 = *(v36 + 72);

    v39 = sub_2612B8F3C(v37, v38, a4, a5);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v104 = &type metadata for InvalidPartnerToken;
    v105 = sub_26132445C();
    v46 = swift_allocObject();
    *&v103 = v46;
    v46[2] = v39;
    v46[3] = v41;
    v46[4] = v43;
    v46[5] = v45;
    sub_2612B64A4(2, &v103, v106);
    v47 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v48 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v47);
    (*(v48 + 120))(v106, v47, v48);
    v49 = objc_allocWithZone(sub_26139F2CC());
    v50 = sub_26139F2DC();
    sub_2612A0E50(v106);
    v55 = v19;
    v56 = v21;
    v57 = a4;
    v58 = a5;
LABEL_18:
    sub_261332C10(v55, v56, v57, v58, v51, v52, v53, v54);

    return v50;
  }

  v35 = sub_2613A241C();

  if (v35)
  {
    goto LABEL_17;
  }

  if (sub_2613A0E7C() == v19 && v59 == v21)
  {
    goto LABEL_32;
  }

  v60 = sub_2613A241C();

  if ((v60 & 1) == 0)
  {
    if (sub_2613A0E6C() == v19 && v66 == v21)
    {
      goto LABEL_32;
    }

    v67 = sub_2613A241C();

    if (v67)
    {
      goto LABEL_23;
    }

    if (sub_2613A0E5C() == v19 && v68 == v21)
    {
      goto LABEL_32;
    }

    v69 = sub_2613A241C();

    if (v69)
    {
      goto LABEL_23;
    }

    if (sub_2613A0E1C() == v19 && v70 == v21)
    {
LABEL_32:

      goto LABEL_23;
    }

    v71 = sub_2613A241C();

    if (v71)
    {
      goto LABEL_23;
    }

    v72 = sub_2613A0E4C();
    v102[1] = v5;
    if (v72 == v19 && v73 == v21)
    {
    }

    else
    {
      v74 = sub_2613A241C();

      if ((v74 & 1) == 0)
      {
        if (*(sub_2613A0E2C() + 16))
        {
          sub_26124E5EC(v19, v21);
          v85 = v84;

          if (v85)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
            v86 = swift_initStackObject();
            *(v86 + 16) = xmmword_2613A4310;
            v102[0] = sub_26139F2CC();
            *(v86 + 32) = sub_26139F27C();
            *(v86 + 40) = v87;
            v88 = sub_2613A0E2C();
            *(v86 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBA0, &qword_2613A9B30);
            if (*(v88 + 16) && (v89 = sub_26124E5EC(v19, v21), (v90 & 1) != 0))
            {
              v91 = (*(v88 + 56) + 16 * v89);
              v92 = *v91;
              v93 = v91[1];
            }

            else
            {
              v92 = 0;
              v93 = 0;
            }

            *(v86 + 48) = v92;
            *(v86 + 56) = v93;
            sub_261259E78(v86);
            swift_setDeallocating();
            sub_26124C718(v86 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
            v101 = objc_allocWithZone(v102[0]);
            goto LABEL_42;
          }
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v94 = swift_initStackObject();
        *(v94 + 16) = xmmword_2613A4310;
        v95 = sub_26139F2CC();
        *(v94 + 32) = sub_26139F29C();
        *(v94 + 40) = v96;
        v97 = sub_261377F80();
        v99 = *v97;
        v98 = v97[1];
        *(v94 + 72) = MEMORY[0x277D837D0];
        *(v94 + 48) = v99;
        *(v94 + 56) = v98;

        sub_261259E78(v94);
        swift_setDeallocating();
        sub_26124C718(v94 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
        v100 = objc_allocWithZone(v95);
LABEL_42:
        v50 = sub_26139F2DC();
        v55 = v19;
        v56 = v21;
        v57 = a4;
        v58 = a5;
        goto LABEL_18;
      }
    }

    v75 = sub_261290BB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_2613A4310;
    if (v75)
    {
      v77 = sub_26139F2CC();
      *(v76 + 32) = sub_26139F27C();
      v78 = v76 + 32;
      *(v76 + 40) = v79;
      v80 = sub_2613A0F4C();
    }

    else
    {
      v77 = sub_26139F2CC();
      *(v76 + 32) = sub_26139F27C();
      v78 = v76 + 32;
      *(v76 + 40) = v82;
      v80 = sub_2613A0F5C();
    }

    *(v76 + 72) = MEMORY[0x277D837D0];
    *(v76 + 48) = v80;
    *(v76 + 56) = v81;
    sub_261259E78(v76);
    swift_setDeallocating();
    sub_26124C718(v78, &qword_27FE9F2F0, &qword_2613A4BD0);
    v83 = objc_allocWithZone(v77);
    goto LABEL_42;
  }

LABEL_23:
  objc_allocWithZone(sub_26139F2CC());
  v61 = sub_26139F2DC();
  sub_261332C10(v19, v21, a4, a5, v62, v63, v64, v65);

  return v61;
}

unint64_t sub_261333F3C()
{
  result = qword_27FEA06D8;
  if (!qword_27FEA06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06D8);
  }

  return result;
}

unint64_t sub_261333F98()
{
  result = qword_27FEA06F0;
  if (!qword_27FEA06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06F0);
  }

  return result;
}

void *sub_26133403C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (a2)
  {
    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
    v9 = *(**sub_2612C11DC() + 112);

    v9(v19, v10);

    sub_26124A200(v19, v3 + 16);
  }

  else
  {
    v11 = sub_26129B5FC();
    sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "Device ID could not be retrieved", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v8, v12);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_261334284(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261334338, 0, 0);
}

uint64_t sub_261334338()
{
  v26 = v0;
  v1 = *(v0 + 16);
  sub_2613A121C();
  v2 = *v1;
  *(v0 + 56) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 64) = v3;
  v4 = sub_2613A10DC();
  v6 = v5;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = *(v1 + 24);
  v24 = sub_2613A10CC();
  v8 = v7;
  *(v0 + 96) = v7;
  v9 = *(v1 + 32);
  *(v0 + 136) = v9;
  if ((v9 & 1) == 0)
  {
    sub_26125B3FC(v24, v7);
    type metadata accessor for StoreAndForwardManager();
    sub_261272A54(v4, v6);
  }

  sub_2612A0F20();

  v10 = sub_2612A0F70();

  if (v10)
  {
    type metadata accessor for StoreAndForwardManager();
    v11 = sub_261269430();
    *(v0 + 104) = v11;
    v16 = v11;
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_261334720;

    return sub_261335200(v4, v6, v16, v24, v8, v2, v3);
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      v12 = *(v0 + 40);
      sub_2612F9F2C();

      sub_2612FB2B4();

      v13 = sub_26129B5FC();
      sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v14 = sub_2613A124C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14) == 1)
      {
        sub_26124C718(*(v0 + 40), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v19 = sub_2613A122C();
        v20 = sub_2613A1D9C();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v25 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_26124C11C(v2, v3, &v25);
          _os_log_impl(&dword_261243000, v19, v20, "Deleted partner app %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          MEMORY[0x266701350](v22, -1, -1);
          MEMORY[0x266701350](v21, -1, -1);
        }

        (*(v15 + 8))(*(v0 + 40), v14);
      }
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_261334720()
{

  return MEMORY[0x2822009F8](sub_261334838, 0, 0);
}

uint64_t sub_261334838()
{
  if (*(v0 + 136))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_261334944;
    v5 = *(v0 + 72);

    return sub_2612719A8(v5, v3);
  }
}

uint64_t sub_261334944(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_261334CF8;
  }

  else
  {

    *(v4 + 137) = a1 & 1;
    v5 = sub_261334A78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261334A78()
{
  v15 = v0;
  if (*(v0 + 137))
  {
  }

  else
  {
    v1 = *(v0 + 48);
    sub_2612F9F2C();

    sub_2612FB2B4();

    v2 = sub_26129B5FC();
    sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
    v3 = sub_2613A124C();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      v5 = *(v0 + 48);

      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v6 = sub_2613A122C();
      v7 = sub_2613A1D9C();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 56);
        v8 = *(v0 + 64);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v14 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_26124C11C(v9, v8, &v14);
        _os_log_impl(&dword_261243000, v6, v7, "Deleted partner app %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x266701350](v11, -1, -1);
        MEMORY[0x266701350](v10, -1, -1);
      }

      (*(v4 + 8))(*(v0 + 48), v3);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_261334CF8()
{
  v1 = v0[4];

  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    v7 = v0[4];

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v9, v10, "Could not evaluate if there are SAF transactions during cleanup: [%@]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v0[4], v3);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_261334F5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_26129B5FC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v2, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "No more apps using TTP, deleting all contents", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  sub_2613367C8();
  type metadata accessor for SessionManager();
  sub_2612F8AD0(sub_261253D6C, 0);
  return sub_261337248();
}

uint64_t sub_261335120()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_261335160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 168) & 0xFFFFFFFFFFFFLL | 0x4FDC000000000000;
  v4[3] = *(*a4 + 168);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_26133519C, a4, 0);
}

uint64_t sub_26133519C()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261335200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133531C, 0, 0);
}

uint64_t sub_26133531C()
{
  *(v0 + 248) = sub_2612FF320();
  *(v0 + 136) = v1;
  v2 = sub_26128E1F4();
  v3 = *v2;
  *(v0 + 144) = *v2;
  v4 = *(*v3 + 160);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_261335454;

  return v7();
}

uint64_t sub_261335454()
{

  return MEMORY[0x2822009F8](sub_261335550, 0, 0);
}

uint64_t sub_261335550()
{
  v1 = *(v0 + 128);
  v2 = sub_26129B5FC();
  *(v0 + 160) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 168) = v3;
  v4 = *(v3 - 8);
  *(v0 + 176) = v4;
  v5 = *(v4 + 48);
  *(v0 + 184) = v5;
  *(v0 + 192) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Deleting expired transactions", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = *(v0 + 128);

    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v0 + 72);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_261335754;
  v12 = *(v0 + 248);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 24);
  v18 = *(v0 + 16);

  return sub_26126ED54(v18, v17, v12, v13, v14, v15, v16, v10 + 16);
}

uint64_t sub_261335754()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_261335EFC;
  }

  else
  {
    v2 = sub_261335868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261335868()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[15];
  sub_26125A870(v0[20], v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v4 = sub_2613A122C();
    v5 = sub_2613A1D9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261243000, v4, v5, "Checking if there are empty batches", v6, 2u);
      MEMORY[0x266701350](v6, -1, -1);
    }

    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[15];

    (*(v8 + 8))(v9, v7);
  }

  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_2613359F8;
  v11 = v0[3];
  v12 = v0[2];

  return sub_26126FA18(v12, v11);
}

uint64_t sub_2613359F8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_261336204;
  }

  else
  {
    v2 = sub_261335B0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261335B0C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  sub_26125A870(*(v0 + 160), v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v4 = sub_2613A122C();
    v5 = sub_2613A1D9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261243000, v4, v5, "Checking invalid transactions timestamp", v6, 2u);
      MEMORY[0x266701350](v6, -1, -1);
    }

    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 112);

    (*(v8 + 8))(v9, v7);
  }

  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_261335CA4;
  v11 = *(v0 + 136);
  v12 = *(v0 + 248);
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);

  return sub_261270B9C(v14, v13, v12, v11);
}

uint64_t sub_261335CA4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_261336514;
  }

  else
  {
    v2 = sub_261335DB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261335DB8()
{
  v1 = v0[18];
  v2 = v0[10];
  v3 = sub_2613A1C1C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_261266800(0, 0, v2, &unk_2613ACD58, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261335EFC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[13];
  sub_26125A870(v0[20], v3, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = v1(v3, 1, v2);
  v5 = v0[26];
  v6 = v0[13];
  if (v4 == 1)
  {

    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[26];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v8, v9, "Error trying to delete expired transactions: [%@]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    else
    {
    }

    (*(v0[22] + 8))(v0[13], v0[21]);
  }

  v16 = v0[23];
  v17 = v0[21];
  v18 = v0[15];
  sub_26125A870(v0[20], v18, &qword_27FE9F560, &qword_2613A3CB0);
  if (v16(v18, 1, v17) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Checking if there are empty batches", v21, 2u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[15];

    (*(v23 + 8))(v24, v22);
  }

  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_2613359F8;
  v26 = v0[3];
  v27 = v0[2];

  return sub_26126FA18(v27, v26);
}

uint64_t sub_261336204()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  sub_26125A870(*(v0 + 160), v3, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 224);
  v6 = *(v0 + 96);
  if (v4 == 1)
  {

    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 224);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v8, v9, "Error cleaning up empty batch: [%@]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 176) + 8))(*(v0 + 96), *(v0 + 168));
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 112);
  sub_26125A870(*(v0 + 160), v18, &qword_27FE9F560, &qword_2613A3CB0);
  if (v16(v18, 1, v17) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Checking invalid transactions timestamp", v21, 2u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 112);

    (*(v23 + 8))(v24, v22);
  }

  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  *v25 = v0;
  v25[1] = sub_261335CA4;
  v26 = *(v0 + 136);
  v27 = *(v0 + 248);
  v28 = *(v0 + 24);
  v29 = *(v0 + 16);

  return sub_261270B9C(v29, v28, v27, v26);
}

uint64_t sub_261336514()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[11];
  sub_26125A870(v0[20], v3, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = v1(v3, 1, v2);
  v5 = v0[30];
  v6 = v0[11];
  if (v4 == 1)
  {

    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[30];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v8, v9, "Error updating transactions timestamp: [%@]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    else
    {
    }

    (*(v0[22] + 8))(v0[11], v0[21]);
  }

  v16 = v0[18];
  v17 = v0[10];
  v18 = sub_2613A1C1C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  sub_261266800(0, 0, v17, &unk_2613ACD58, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2613367C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v20[-v3];
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-v5];
  sub_2612A0F20();

  v7 = sub_2612A0F70();

  v8 = sub_26129B5FC();
  if (v7)
  {
    sub_26125A870(v8, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "Deleting all remaining data stored in SAF database", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v10 + 8))(v6, v9);
    }

    type metadata accessor for StoreAndForwardManager();
    sub_261269430();
    sub_261271E14();
  }

  else
  {
    sub_26125A870(v8, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v4, 1, v11) == 1)
    {
      return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D9C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "SAF database is not present, no need to reset it", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      return (*(v12 + 8))(v4, v11);
    }
  }
}