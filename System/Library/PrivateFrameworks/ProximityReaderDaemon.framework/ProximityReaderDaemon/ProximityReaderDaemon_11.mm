uint64_t sub_261354568()
{

  return MEMORY[0x2822009F8](sub_26135F9F0, 0, 0);
}

uint64_t sub_26135469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261265144;

  return sub_261354750(a2, a3, a4);
}

uint64_t sub_261354750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8);
  v4[11] = swift_task_alloc();
  v5 = sub_26139FFAC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2613A147C();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v4[17] = *(v7 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_26139FF3C();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261354918, 0, 0);
}

uint64_t sub_261354918()
{
  v1 = v0[7];
  v2 = sub_2613A01AC();
  v3 = MEMORY[0x277D43BD8];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_2613549E4;
  v6 = v0[22];

  return sub_26134F598(v6, (v0 + 2));
}

uint64_t sub_2613549E4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_261355064;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = sub_261354B00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261354B00()
{
  v5 = (*(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 248) + **(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 248));
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_261354C2C;
  v2 = v0[19];
  v3 = v0[7];

  return v5(v2, v3);
}

uint64_t sub_261354C2C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_26135510C;
  }

  else
  {
    v2 = sub_261354D40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261354D40()
{
  v1 = v0[19];
  v34 = v0[21];
  v35 = v0[20];
  v36 = v0[18];
  v27 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v30 = v0[14];
  v31 = v0[22];
  v4 = v0[11];
  v32 = v0[13];
  v33 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v28 = v0[7];
  v29 = v1;
  v7 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v8 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v9 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8);
  *v7 = v0[8];
  v7[1] = v5;
  sub_26124A228(v8, v9);
  v10 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v12 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v11 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
  *v10 = sub_261355270;
  v10[1] = 0;

  sub_26124A228(v12, v11);
  v13 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v14 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v15 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8);
  *v13 = sub_261355288;
  v13[1] = 0;
  sub_26124A228(v14, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v36, v1, v2);
  v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v3 + 32))(v18 + v17, v36, v2);
  *(v18 + ((v27 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v19 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v21 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v20 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v19 = &unk_2613AD0E0;
  v19[1] = v18;
  v22 = v28;

  sub_26124A228(v21, v20);

  sub_261355F28(v30);
  v23 = sub_2613A018C();
  sub_2613A015C();

  v24 = sub_2613A014C();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_26134D058(v31, v30, v4);
  sub_26124C718(v4, &qword_27FEA0770, &qword_2613AD0C8);
  (*(v32 + 8))(v30, v33);
  (*(v3 + 8))(v29, v2);
  (*(v34 + 8))(v31, v35);

  v25 = v0[1];

  return v25();
}

uint64_t sub_261355064()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26135510C()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

void sub_2613551DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_2613552A0(void (*a1)(uint64_t))
{
  v2 = sub_26139F64C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139F35C();
  a1(v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26135536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_2613A021C();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_2613A014C();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v9 = sub_26139F64C();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261355598, 0, 0);
}

uint64_t sub_261355598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    v0[31] = v2;
    v3 = *(*v2 + 256);

    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_261355798;
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[11];

    return v10(v5, v6, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_261355798(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_261355CB4;
  }

  else
  {

    v4 = sub_2613558B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2613558B4()
{
  v1 = v0[29];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[29], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "Displaying identity information", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[29];

    (*(v4 + 8))(v8, v3);
  }

  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[24];
  v12 = v0[25];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  [*(v0[30] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) displayIdentityInformation_];
  sub_26139F58C();
  sub_26139F5BC();
  (*(v10 + 8))(v9, v12);
  v16 = sub_2613A018C();
  sub_2613A015C();

  (*(v14 + 104))(v13, *MEMORY[0x277D43BA8], v15);
  sub_26135F090(&qword_27FEA0778, MEMORY[0x277D43BB8], MEMORY[0x277D43BD0]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v17 = *(v14 + 8);
  v17(v13, v15);
  v17(v11, v15);
  if (v0[8] == v0[9])
  {
    v18 = v0[30];
    (*(v0[19] + 104))(v0[20], *MEMORY[0x277D43C10], v0[18]);
    v19 = objc_allocWithZone(sub_2613A023C());
    v20 = sub_2613A022C();
    v21 = *(v18 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v18 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v20;
  }

  v22 = v0[30];
  v24 = v0[15];
  v23 = v0[16];
  v25 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  v26 = (*(v23 + 48))(v22 + v25, 1, v24);
  v27 = v0[33];
  v28 = v0[30];
  if (v26)
  {
  }

  else
  {
    v29 = v0[17];
    sub_26135E584(v22 + v25, v29);
    v30 = sub_26139FBEC();
    sub_2612DBFE8(v30, v31);

    sub_26135E528(v29);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_261355CB4()
{
  v1 = v0[28];

  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[28], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[34];
    v6 = v5;
    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[34];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_261243000, v7, v8, "Error loading identity information: [ %@ ]", v10, 0xCu);
      sub_26124C718(v11, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    v14 = v0[28];

    (*(v4 + 8))(v14, v3);
  }

  v15 = v0[30];
  v16 = *&v15[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v15[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v0[34];

  v17 = v0[1];

  return v17();
}

uint64_t sub_261355F28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26139FD9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_2613A016C();
  if (!*(v12 + 16))
  {

LABEL_8:
    v17 = MEMORY[0x277D43A28];
    goto LABEL_9;
  }

  (*(v3 + 16))(v9, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v13 = *(v3 + 32);
  v13(v11, v9, v2);
  v14 = *(sub_2613A016C() + 16);

  if (v14 != 1)
  {
    (*(v3 + 8))(v11, v2);
    goto LABEL_8;
  }

  v15 = sub_2613A019C();
  if (sub_26135A228(v15, MEMORY[0x277D43A48], MEMORY[0x277D43AA0]))
  {
    v16 = sub_26135A228(v15, MEMORY[0x277D43AD8], MEMORY[0x277D43A50]);

    if (v16)
    {
      (*(v3 + 8))(v11, v2);
      v17 = MEMORY[0x277D43A10];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v24 = sub_2613A019C();
  v25 = sub_26135A228(v24, MEMORY[0x277D43A48], MEMORY[0x277D43AA0]);

  if (v25)
  {
    (*(v3 + 8))(v11, v2);
    v17 = MEMORY[0x277D43A30];
  }

  else
  {
    v26 = sub_2613A019C();
    v27 = sub_26135A228(v26, MEMORY[0x277D43AD8], MEMORY[0x277D43A50]);

    if ((v27 & 1) == 0)
    {
      v13(v6, v11, v2);
      v28 = (*(v3 + 88))(v6, v2);
      if (v28 == *MEMORY[0x277D43928])
      {
        v29 = *MEMORY[0x277D43A20];
        v19 = sub_26139FFAC();
        v20 = *(*(v19 - 8) + 104);
        v30 = a1;
        v31 = v29;
      }

      else
      {
        if (v28 == *MEMORY[0x277D43920])
        {
          v17 = MEMORY[0x277D43A18];
          goto LABEL_9;
        }

        v32 = *MEMORY[0x277D43930];
        v33 = v28;
        v19 = sub_26139FFAC();
        v20 = *(*(v19 - 8) + 104);
        if (v33 == v32)
        {
          v22 = *MEMORY[0x277D43A40];
          v21 = a1;
          return v20(v21, v22, v19);
        }

        v31 = *MEMORY[0x277D43A20];
        v30 = a1;
      }

      v20(v30, v31, v19);
      return (*(v3 + 8))(v6, v2);
    }

    (*(v3 + 8))(v11, v2);
    v17 = MEMORY[0x277D43A38];
  }

LABEL_9:
  v18 = *v17;
  v19 = sub_26139FFAC();
  v20 = *(*(v19 - 8) + 104);
  v21 = a1;
  v22 = v18;
  return v20(v21, v22, v19);
}

uint64_t sub_261356364(char a1, const char *a2, ...)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_26129BA7C();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v11 = sub_2613A122C();
  v12 = sub_2613A1D9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_261243000, v11, v12, a2, v13, 8u);
    MEMORY[0x266701350](v13, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t sub_261356544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_261356568, 0, 0);
}

uint64_t sub_261356568()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[5] = v1;
  v2 = *v1 + 264;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_2613565B8, v1, 0);
}

uint64_t sub_2613565B8()
{
  (*(v0 + 48))();

  return MEMORY[0x2822009F8](sub_261356624, 0, 0);
}

uint64_t sub_261356624()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_2613566A4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_261356720(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26139EE6C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_261356784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v2))
  {

    return sub_2613569D8();
  }

  else if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager) + 192))())
  {

    return sub_26135E154();
  }

  else
  {
    v6 = sub_26129BA7C();
    sub_26125A870(v6, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261243000, v9, v10, "No UI seems loaded, unable to process uiDidLoad", v11, 2u);
        MEMORY[0x266701350](v11, -1, -1);
      }

      return (*(v8 + 8))(v4, v7);
    }
  }
}

id sub_2613569D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v43 - v3;
  v49 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139F64C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_26129BB98();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v46 = *(v18 + 48);
  if (v46(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v44 = v18;
    v45 = v1;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = v13;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Identity UI is visible", v21, 2u);
      v23 = v22;
      v13 = v43;
      MEMORY[0x266701350](v23, -1, -1);
    }

    v18 = v44;
    (*(v44 + 8))(v15, v17);
    v1 = v45;
  }

  sub_26139F49C();
  sub_26139F5BC();
  (*(v7 + 8))(v9, v6);
  v24 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  if (!(*(v4 + 48))(v1 + v24, 1, v49))
  {
    v25 = v1 + v24;
    v26 = v47;
    sub_26135E584(v25, v47);
    sub_2612DBD9C();
    sub_26135E528(v26);
  }

  v27 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  if (v27)
  {
    v28 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
    v29 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
    if (v29)
    {
      v30 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
      sub_26124A17C(*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask), v28);
      v31 = sub_26124A17C(v29, v30);
      v29(v31);
      sub_26124A228(v29, v30);
    }

    else
    {
    }

    v33 = sub_2613A1C1C();
    v34 = v48;
    (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v27;
    v35[5] = v28;
    sub_261266800(0, 0, v34, &unk_2613AD098, v35);
  }

  else
  {
    v32 = sub_26129BA7C();
    sub_26125A870(v32, v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (v46(v13, 1, v17) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = v18;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D9C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v13;
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "UI loaded, but no read document is scheduled, dismissing UI", v41, 2u);
        v42 = v41;
        v13 = v40;
        MEMORY[0x266701350](v42, -1, -1);
      }

      (*(v37 + 8))(v13, v17);
    }

    return [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) updateUIState_];
  }
}

void sub_261356FD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_26129BA7C();
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
      _os_log_impl(&dword_261243000, v6, v7, "UI is finished, reporting result", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  sub_26134DAC4();
}

void sub_261357180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_26129BA7C();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Identity registration UI was dismissed", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);
    v14 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID + 8);
    if (v15)
    {
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);

      if (v16)
      {
        v15 = 0;
      }

      else
      {
        sub_261357548();
        v15 = v14[1];
      }
    }

    v17 = *v14;
    v18 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);

    v19 = v18;
    v12(v17, v15, v18);

    sub_26124A228(v12, v13);
  }

  v20 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
  *v20 = 0;
  v20[1] = 0;

  v21 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = 0;
}

uint64_t sub_261357458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = a4 + *a4;
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_261262AA4;

  return (v7)(0, 0xF000000000000000);
}

void sub_261357548()
{
  v1 = v0;
  v2 = sub_26139F30C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_26129BA7C();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Cancelling registration flow", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask))
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask) = 0;
    sub_2613A1C9C();
    (*(v3 + 104))(v5, *MEMORY[0x277D436D0], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v15 = swift_allocError();
    sub_26139F31C();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D436D8], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v15 = swift_allocError();
    sub_26139F31C();
  }

  v16 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = v15;
}

uint64_t sub_2613578E0(int a1)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v34 = sub_26139F30C();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_26139F64C();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_26129BA7C();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v33)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v31 = v8;
  v18 = sub_2613A122C();
  v19 = sub_2613A1D9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v5;
    v21 = v20;
    *v20 = 0;
    _os_log_impl(&dword_261243000, v18, v19, "Executing request to cancel current read", v20, 2u);
    v22 = v21;
    v5 = v30;
    MEMORY[0x266701350](v22, -1, -1);
  }

  (*(v17 + 8))(v14, v16);
  v8 = v31;
  if ((v33 & 1) == 0)
  {
LABEL_7:
    sub_26137C1FC();
  }

LABEL_8:
  sub_26139F4CC();
  sub_26139F5BC();
  (*(v9 + 8))(v11, v32);
  (*(v6 + 104))(v8, *MEMORY[0x277D436D8], v34);
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  v23 = swift_allocError();
  sub_26139F31C();
  v24 = *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v23;

  v25 = sub_2613A1C1C();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v2;
  v27 = v2;
  sub_261266800(0, 0, v5, &unk_2613ACF90, v26);
}

uint64_t sub_261357DA4(int a1)
{
  v2 = v1;
  LODWORD(v47) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_26129BA7C();
  sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    result = sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = v10;
      v26 = v11;
      v27 = v8;
      v28 = v12;
      v29 = v25;
      *v25 = 0;
      _os_log_impl(&dword_261243000, v23, v24, "Requesting read restart", v25, 2u);
      v30 = v29;
      v12 = v28;
      v8 = v27;
      v11 = v26;
      v10 = v44;
      MEMORY[0x266701350](v30, -1, -1);
    }

    result = (*(v21 + 8))(v18, v20);
  }

  v31 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  if (v31)
  {
    v32 = v12;
    v33 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
    v34 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError) = 0;

    if (v47)
    {
      v35 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      sub_26125A870(v2 + v35, v10, &qword_27FEA0750, &qword_2613ACF00);
      v36 = *(v32 + 48);
      if (v36(v10, 1, v11) == 1)
      {
        sub_26124C718(v10, &qword_27FEA0750, &qword_2613ACF00);
      }

      else
      {
        v37 = v10;
        v38 = v46;
        sub_26135E4C4(v37, v46);
        v47 = v36;
        sub_2612DB5CC(v8);
        (*(v32 + 56))(v8, 0, 1, v11);
        swift_beginAccess();
        sub_261349F44(v8, v2 + v35);
        swift_endAccess();
        swift_beginAccess();
        if (v47(v2 + v35, 1, v11))
        {
          sub_26135E528(v38);
          swift_endAccess();
        }

        else
        {
          v39 = v45;
          sub_26135E584(v2 + v35, v45);
          swift_endAccess();
          sub_2612DBD9C();
          sub_26135E528(v39);
          sub_26135E528(v38);
        }
      }
    }

    v40 = sub_2613A1C1C();
    v41 = v48;
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v31;
    v42[5] = v33;
    sub_261266800(0, 0, v41, &unk_2613ACFA0, v42);
  }

  return result;
}

uint64_t sub_2613582FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = a4 + *a4;
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_261265144;

  return (v7)(0, 0xF000000000000000);
}

uint64_t sub_261358440(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_26129BA7C();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "Executing request with scanned payload", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  v18 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = 0;

  v19 = sub_2613A1C1C();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v3;
  v20[5] = a1;
  v20[6] = a2;
  v21 = v3;
  sub_26124C778(a1, a2);
  sub_261287FE0(0, 0, v8, &unk_2613ACFB0, v20);
}

uint64_t sub_2613586F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_261358714, 0, 0);
}

uint64_t sub_261358714()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask;
  v2 = *v1;
  *(v0 + 48) = *v1;
  if (v2)
  {
    *(v0 + 56) = *(v1 + 8);

    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_261358874;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);

    return v8(v5, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_261358874()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_26124A228(v2, v1);

  return MEMORY[0x2822009F8](sub_2613589A4, 0, 0);
}

uint64_t sub_261358A54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2613A021C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v71[-v15];
  v17 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v71[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v37 = v20;
      sub_2613578E0(1);
      v38 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v18 + 48))(v2 + v38, 1, v17);
      if (result)
      {
        return result;
      }

      sub_26135E584(v2 + v38, v37);
      v39 = sub_2613A091C();
      v41 = v40;
      v42 = sub_2613A08BC();
      sub_2612DC0FC(v39, v41, v42, v43);

      v44 = v37;
      return sub_26135E528(v44);
    }

    if (a1 == 2)
    {
      v21 = v20;
      v22 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v18 + 48))(v2 + v22, 1, v17);
      if (result)
      {
        return result;
      }

      v24 = v2 + v22;
      v25 = v21;
      sub_26135E584(v24, v21);
      v26 = sub_2613A0BAC();
      v28 = v27;
      v29 = sub_2613A094C();
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v74 = v20;
    v45 = sub_26129BA7C();
    sub_26125A870(v45, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v46 = sub_2613A124C();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v16, 1, v46) == 1)
    {
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v63 = sub_2613A122C();
      v72 = sub_2613A1D9C();
      v73 = v63;
      if (os_log_type_enabled(v63, v72))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_261243000, v73, v72, "Displayed identity matches", v64, 2u);
        MEMORY[0x266701350](v64, -1, -1);
      }

      (*(v47 + 8))(v16, v46);
    }

    (*(v5 + 104))(v7, *MEMORY[0x277D43C00], v4);
    v65 = objc_allocWithZone(sub_2613A023C());
    v66 = sub_2613A022C();
    v67 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v66;

    v68 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
    swift_beginAccess();
    result = (*(v18 + 48))(v2 + v68, 1, v17);
    if (!result)
    {
      v69 = v2 + v68;
      v25 = v74;
      sub_26135E584(v69, v74);
      v26 = sub_2613A0BAC();
      v28 = v70;
      v29 = sub_2613A093C();
      goto LABEL_29;
    }
  }

  else
  {
    if (a1 != 4)
    {
LABEL_10:
      v34 = sub_26129BA7C();
      sub_26125A870(v34, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v35 = sub_2613A124C();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v11, 1, v35) == 1)
      {
        return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      v48 = sub_2613A122C();
      v49 = sub_2613A1D8C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75[0] = v51;
        *v50 = 136315138;
        v75[3] = a1;
        v52 = sub_2613A195C();
        v54 = sub_26124C11C(v52, v53, v75);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_261243000, v48, v49, "Button [ %s ] not being handled", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x266701350](v51, -1, -1);
        MEMORY[0x266701350](v50, -1, -1);
      }

      return (*(v36 + 8))(v11, v35);
    }

    v74 = v20;
    v31 = sub_26129BA7C();
    sub_26125A870(v31, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v32 = sub_2613A124C();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v14, 1, v32) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v55 = sub_2613A122C();
      v72 = sub_2613A1D9C();
      v73 = v55;
      if (os_log_type_enabled(v55, v72))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v73, v72, "Displayed identity does not match", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      (*(v33 + 8))(v14, v32);
    }

    (*(v5 + 104))(v7, *MEMORY[0x277D43C08], v4);
    v57 = objc_allocWithZone(sub_2613A023C());
    v58 = sub_2613A022C();
    v59 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v58;

    v60 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
    swift_beginAccess();
    result = (*(v18 + 48))(v2 + v60, 1, v17);
    if (!result)
    {
      v61 = v2 + v60;
      v25 = v74;
      sub_26135E584(v61, v74);
      v26 = sub_2613A0BAC();
      v28 = v62;
      v29 = sub_2613A092C();
LABEL_29:
      sub_2612DC510(v26, v28, v29, v30);

      v44 = v25;
      return sub_26135E528(v44);
    }
  }

  return result;
}

uint64_t sub_26135934C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_26129BA7C();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    result = sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Identity T&C accepted, registering", v18, 2u);
      MEMORY[0x266701350](v18, -1, -1);
    }

    result = (*(v14 + 8))(v11, v13);
  }

  v19 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask);
  if (v19)
  {
    v20 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8);
    v21 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v24 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    *v24 = 0;
    v24[1] = 0;
    sub_26124A17C(v19, v20);
    sub_26124A17C(v22, v23);

    v25 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = 0;

    v26 = swift_allocObject();
    v37 = v8;
    v27 = a2;
    v28 = v26;
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = a1;
    v29[3] = v27;
    v29[4] = v28;
    v29[5] = v22;
    v29[6] = v23;
    v30 = *v21;
    v31 = v21[1];
    *v21 = sub_26135E69C;
    v21[1] = v29;
    sub_26124A17C(v22, v23);

    sub_26124A228(v30, v31);

    v32 = sub_2613A1C1C();
    v33 = v37;
    (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v34;
    v35[5] = v19;
    v35[6] = v20;

    v36 = sub_261266800(0, 0, v33, &unk_2613ACFC0, v35);
    sub_26124A228(v22, v23);
    sub_26124A228(v19, v20);
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask) = v36;
  }

  return result;
}

void sub_261359754(uint64_t a1, uint64_t a2, void *a3, void (*a4)(BOOL), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a1;
  v59 = a8;
  v61 = a5;
  v62 = a4;
  v60 = sub_26139F64C();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  if (a3)
  {
    v20 = a3;
    v21 = sub_26129BA7C();
    sub_26125A870(v21, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) == 1)
    {

      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v56 = a7;
      v27 = a3;
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();

      v55 = v28;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v57 = a2;
        v31 = v30;
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = a3;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        v35 = v29;
        v36 = v55;
        _os_log_impl(&dword_261243000, v55, v35, "Identity registration error: [ %@ ]", v31, 0xCu);
        sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v32, -1, -1);
        v37 = v31;
        a2 = v57;
        MEMORY[0x266701350](v37, -1, -1);
      }

      else
      {
      }

      (*(v23 + 8))(v17, v22);
      a7 = v56;
    }
  }

  else
  {
    v57 = a2;
    v24 = sub_26129BA7C();
    sub_26125A870(v24, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v19, 1, v25) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v56 = a7;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D9C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "Identity registration completed", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v26 + 8))(v19, v25);
      a7 = v56;
    }

    a2 = v57;
  }

  sub_26139F48C();
  sub_26139F5BC();
  (*(v11 + 8))(v13, v60);
  v62(a3 == 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = (Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    *v42 = v58;
    v42[1] = a2;
    v43 = Strong;
  }

  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = *(v44 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
    *(v44 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = a3;
    v46 = v44;
    v47 = a3;
  }

  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = (v48 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    v50 = v48;
    swift_beginAccess();
    v51 = *v49;
    v52 = v49[1];
    v53 = v59;
    *v49 = a7;
    v49[1] = v53;
    sub_26124A17C(a7, v53);
    sub_26124A228(v51, v52);
  }
}

uint64_t sub_261359CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_26139F64C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261359D94, 0, 0);
}

uint64_t sub_261359D94(uint64_t a1)
{
  if (sub_2613A1CDC())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
    }

    v3 = v1[1];

    return v3();
  }

  else
  {
    v6 = v1[9];
    v5 = v1[10];
    v7 = v1[8];
    v8 = v1[6];
    sub_26139F48C();
    sub_26139F5DC();
    (*(v6 + 8))(v5, v7);
    v10 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[11] = v9;
    *v9 = v1;
    v9[1] = sub_261359F44;

    return v10(1);
  }
}

uint64_t sub_261359F44()
{

  return MEMORY[0x2822009F8](sub_26135A040, 0, 0);
}

uint64_t sub_26135A040()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26135A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2613A204C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_26135AAEC(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_26139FD9C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_26135A228(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_2613A002C();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v15 = *(v10 + 16);
  v14 = v10 + 16;
  v30 = v15;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v27 = *(v14 + 56);
  v17 = (v14 + 16);
  v18 = (v14 + 72);
  v19 = *a2;
  v28 = *a3;
  v29 = v19;
  v20 = (v14 - 8);
  do
  {
    v21 = v14;
    v30(v12, v16, v6);
    (*v17)(v9, v12, v6);
    v22 = (*v18)(v9, v6);
    v23 = v22 == v29 || v22 == v28;
    v24 = v23;
    if (v23)
    {
      break;
    }

    (*v20)(v9, v6);
    v16 += v27;
    --v13;
    v14 = v21;
  }

  while (v13);
  return v24;
}

uint64_t sub_26135A3F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v38 = v4;
  result = sub_2613A223C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 96 * v21);
      if (v38)
      {
        v42 = v25[2];
        v41 = v25[3];
        v40 = v25[4];
        v39 = v25[5];
        v46 = v25[6];
        v43 = v25[7];
        v44 = v25[1];
        v48 = *v25;
        v49 = v25[8];
        v45 = v25[9];
        v50 = v25[10];
        v47 = v25[11];
      }

      else
      {
        v26 = *(v25 + 2);
        v27 = *(v25 + 3);
        v28 = *(v25 + 5);
        v54 = *(v25 + 4);
        v55 = v28;
        v53 = v27;
        v29 = *(v25 + 1);
        v52[0] = *v25;
        v52[1] = v29;
        v52[2] = v26;
        v49 = v54;
        v50 = v28;
        v46 = v53;
        v47 = *(&v28 + 1);
        v44 = *(&v52[0] + 1);
        v48 = *&v52[0];
        v45 = *(&v54 + 1);
        v42 = v29;
        v43 = *(&v53 + 1);
        v41 = *(&v29 + 1);
        v39 = *(&v26 + 1);
        v40 = v26;

        sub_26135F62C(v52, v51);
      }

      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 96 * v15);
      *v17 = v48;
      v17[1] = v44;
      v17[2] = v42;
      v17[3] = v41;
      v17[4] = v40;
      v17[5] = v39;
      v17[6] = v46;
      v17[7] = v43;
      v17[8] = v49;
      v17[9] = v45;
      v17[10] = v50;
      v17[11] = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26135A79C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26124E5EC(a2, a3);
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
      sub_26135A3F0(v16, a4 & 1);
      v11 = sub_26124E5EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2613A249C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26135A934();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 96 * v11;

    return sub_26135F5D0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 96 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = a1[5];
  v25[4] = a1[4];
  v25[5] = v29;
  v25[2] = v27;
  v25[3] = v28;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

void *sub_26135A934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v2 = *v0;
  v3 = sub_2613A222C();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 96;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v38 = *(v19 + v17 + 64);
        v39 = v25;
        v37 = v24;
        v26 = *(v19 + v17 + 16);
        v34 = *(v19 + v17);
        v35 = v26;
        v36 = v23;
        v27 = (*(v4 + 48) + v18);
        *v27 = v22;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        v29 = v35;
        *v28 = v34;
        v28[1] = v29;
        v30 = v36;
        v31 = v37;
        v32 = v39;
        v28[4] = v38;
        v28[5] = v32;
        v28[2] = v30;
        v28[3] = v31;

        result = sub_26135F62C(&v34, &v33);
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

uint64_t sub_26135AAEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26139FD9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_26135ABAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v3 = sub_2613A224C();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_26125A870(&v27, v26, &qword_27FEA07B0, &unk_2613AD190);
  result = sub_26124E5EC(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 96 * result);
    v14 = v29;
    *v13 = v28;
    v13[1] = v14;
    v15 = v30;
    v16 = v31;
    v17 = v33;
    v13[4] = v32;
    v13[5] = v17;
    v13[2] = v15;
    v13[3] = v16;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v11 + 7;
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = v11[6];
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_26125A870(&v27, v26, &qword_27FEA07B0, &unk_2613AD190);
    result = sub_26124E5EC(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26135AD64()
{
  result = qword_27FEA0758;
  if (!qword_27FEA0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0758);
  }

  return result;
}

void sub_26135ADB8(char *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v49 = a2;
  v7 = sub_26139F30C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  if (v20)
  {
    v21 = v20;
    v22 = sub_26129BA7C();
    sub_26125A870(v22, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v19, 1, v23) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = v20;
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = v20;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_261243000, v29, v30, "Returning read error [ %@ ]", v31, 0xCu);
        sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v24 + 8))(v19, v23);
    }

    v49(0, v20);
  }

  else
  {
    v44 = v13;
    v45 = v10;
    v46 = v8;
    v47 = a3;
    v25 = sub_26129BA7C();
    sub_26125A870(v25, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v17, 1, v26) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = sub_2613A122C();
      v36 = sub_2613A1D8C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, "No response or error from read, cancel transaction", v37, 2u);
        MEMORY[0x266701350](v37, -1, -1);
      }

      (*(v27 + 8))(v17, v26);
    }

    v38 = v7;
    v40 = v44;
    v39 = v45;
    v41 = sub_2613A1C1C();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = a1;
    a1;
    sub_261266800(0, 0, v40, v48, v42);

    (*(v46 + 104))(v39, *MEMORY[0x277D436D8], v38);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v43 = swift_allocError();
    sub_26139F31C();
    v49(0, v43);

    sub_26137C1FC();
  }
}

void sub_26135B36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v2))
  {

    sub_261356FD4();
  }

  else if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager) + 192))())
  {

    sub_261357180();
  }

  else
  {
    v5 = sub_26129BA7C();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D8C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261243000, v8, v9, "No UI seems loaded, unable to process uiFinished", v10, 2u);
        MEMORY[0x266701350](v10, -1, -1);
      }

      (*(v7 + 8))(v4, v6);
    }
  }
}

uint64_t sub_26135B5C0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261350524(v3, v4, v5, v2);
}

uint64_t sub_26135B654(char *a1, void (**a2)(void, void))
{
  v4 = sub_26139F30C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  _Block_copy(a2);
  v17 = sub_26139FFDC();
  v18 = sub_26129BA7C();
  if (v17)
  {
    sub_26125A870(v18, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v16, 1, v19) == 1)
    {
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = sub_2613A122C();
      v24 = sub_2613A1D9C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261243000, v23, v24, "Executing host app cancel read request", v25, 2u);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v20 + 8))(v16, v19);
    }

    sub_26137C1FC();
    sub_26134D8A0();
    v26 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask;
    if (*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask])
    {

      sub_2613A1C9C();
    }

    *&a1[v26] = 0;

    [*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
    v32 = sub_2613A1C1C();
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a1;
    v33[5] = sub_26135E930;
    v33[6] = v37;
    v34 = a1;

    sub_261266800(0, 0, v10, &unk_2613AD050, v33);
  }

  else
  {
    sub_26125A870(v18, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v14, 1, v21) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "no entitlement", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v22 + 8))(v14, v21);
    }

    (*(v5 + 104))(v7, *MEMORY[0x277D43638], v4);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v30 = swift_allocError();
    sub_26139F31C();
    v31 = sub_26139EE6C();
    (a2)[2](a2, v31);
  }
}

uint64_t sub_26135BC34(void (*a1)(void, void, void))
{
  v2 = sub_26139F33C();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v99 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v90 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v90 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v90 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v90 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v90 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v90 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v90 - v24;
  v26 = sub_26139F30C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_26139F32C();
  v98 = v27;
  v30 = (*(v27 + 88))(v29, v26);
  if (v30 == *MEMORY[0x277D43648])
  {
    v31 = sub_26129BA7C();
    sub_26125A870(v31, v20, &qword_27FE9F560, &qword_2613A3CB0);
    v32 = sub_2613A124C();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v20, 1, v32) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "Show alert for NFC disabled", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v33 + 8))(v20, v32);
    }

    sub_2613A121C();
    return sub_2613A112C();
  }

  else
  {
    v34 = v30;
    if (v30 == *MEMORY[0x277D43698])
    {
      v35 = sub_26129BA7C();
      sub_26125A870(v35, v23, &qword_27FE9F560, &qword_2613A3CB0);
      v36 = sub_2613A124C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v23, 1, v36) == 1)
      {
        sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v45 = sub_2613A122C();
        v46 = sub_2613A1D8C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261243000, v45, v46, "Show alert for Bluetooth disabled", v47, 2u);
          MEMORY[0x266701350](v47, -1, -1);
        }

        (*(v37 + 8))(v23, v36);
      }

      sub_2613A121C();
      return sub_2613A11BC();
    }

    else if (v30 == *MEMORY[0x277D436C0])
    {
      v42 = sub_26129BA7C();
      sub_26125A870(v42, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v43 = sub_2613A124C();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v17, 1, v43) == 1)
      {
        sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v51 = sub_2613A122C();
        v52 = sub_2613A1D8C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_261243000, v51, v52, "Show alert for iCloud Two-Factor Auth disabled", v53, 2u);
          MEMORY[0x266701350](v53, -1, -1);
        }

        (*(v44 + 8))(v17, v43);
      }

      sub_2613A121C();
      return sub_2613A11DC();
    }

    else if (v30 == *MEMORY[0x277D43688])
    {
      v48 = sub_26129BA7C();
      sub_26125A870(v48, v14, &qword_27FE9F560, &qword_2613A3CB0);
      v49 = sub_2613A124C();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v14, 1, v49) == 1)
      {
        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v57 = sub_2613A122C();
        v58 = sub_2613A1D8C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_261243000, v57, v58, "Show alert for iCloud signed out", v59, 2u);
          MEMORY[0x266701350](v59, -1, -1);
        }

        (*(v50 + 8))(v14, v49);
      }

      sub_2613A121C();
      return sub_2613A118C();
    }

    else if (v30 == *MEMORY[0x277D43690])
    {
      v54 = sub_26129BA7C();
      sub_26125A870(v54, v25, &qword_27FE9F560, &qword_2613A3CB0);
      v55 = sub_2613A124C();
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v25, 1, v55) == 1)
      {
        sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v63 = sub_2613A122C();
        v64 = sub_2613A1D8C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_261243000, v63, v64, "Show alert for Passcode disabled", v65, 2u);
          MEMORY[0x266701350](v65, -1, -1);
        }

        (*(v56 + 8))(v25, v55);
      }

      sub_2613A121C();
      return sub_2613A119C();
    }

    else if (v30 == *MEMORY[0x277D436A8])
    {
      v60 = sub_26129BA7C();
      sub_26125A870(v60, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v61 = sub_2613A124C();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v11, 1, v61) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v71 = sub_2613A122C();
        v72 = sub_2613A1D8C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_261243000, v71, v72, "Show alert for iOS version not supported", v73, 2u);
          MEMORY[0x266701350](v73, -1, -1);
        }

        (*(v62 + 8))(v11, v61);
      }

      sub_2613A121C();
      return sub_2613A11CC();
    }

    else
    {
      v66 = *MEMORY[0x277D436B0];
      v67 = sub_26129BA7C();
      if (v34 == v66)
      {
        v68 = v97;
        sub_26125A870(v67, v97, &qword_27FE9F560, &qword_2613A3CB0);
        v69 = sub_2613A124C();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v68, 1, v69) == 1)
        {
          sub_26124C718(v68, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v77 = sub_2613A122C();
          v78 = sub_2613A1D7C();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_261243000, v77, v78, "Show alert for Continuity display not allowed", v79, 2u);
            MEMORY[0x266701350](v79, -1, -1);
          }

          (*(v70 + 8))(v68, v69);
        }

        sub_2613A121C();
        return sub_2613A11FC();
      }

      else
      {
        v74 = v99;
        sub_26125A870(v67, v99, &qword_27FE9F560, &qword_2613A3CB0);
        v75 = sub_2613A124C();
        v76 = *(v75 - 8);
        if ((*(v76 + 48))(v74, 1, v75) == 1)
        {
          sub_26124C718(v74, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v81 = v94;
          v80 = v95;
          v82 = v93;
          v83 = v96;
          v93 = *(v95 + 16);
          v93(v94, v82, v96);
          v84 = sub_2613A122C();
          LODWORD(v97) = sub_2613A1D9C();
          if (os_log_type_enabled(v84, v97))
          {
            v85 = swift_slowAlloc();
            v91 = v85;
            v92 = swift_slowAlloc();
            *v85 = 138412290;
            sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
            swift_allocError();
            v93(v86, v81, v83);
            v87 = _swift_stdlib_bridgeErrorToNSError();
            (*(v80 + 8))(v81, v83);
            v88 = v91;
            v89 = v92;
            *(v91 + 1) = v87;
            *v89 = v87;
            v74 = v99;
            _os_log_impl(&dword_261243000, v84, v97, "No alert needed for error: [ %@ ]", v88, 0xCu);
            sub_26124C718(v89, &qword_27FEA0410, &qword_2613AA780);
            MEMORY[0x266701350](v89, -1, -1);
            MEMORY[0x266701350](v88, -1, -1);
          }

          else
          {

            (*(v80 + 8))(v81, v83);
          }

          (*(v76 + 8))(v74, v75);
        }

        return (*(v98 + 8))(v29, v26);
      }
    }
  }
}

uint64_t sub_26135CAC0(void *a1, const void *a2)
{
  v27 = a1;
  v29 = sub_26139F33C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  _Block_copy(a2);
  v10 = sub_26129BA7C();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = v12;
      v16 = v15;
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Reading configuration", v15, 2u);
      v12 = v24;
      MEMORY[0x266701350](v16, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  v17 = v27;
  sub_26134BF00(0);
  v18 = sub_2613A1C1C();
  v19 = v23;
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v17;
  v20[5] = sub_26135ED14;
  v20[6] = v28;
  v21 = v17;

  sub_261266800(0, 0, v19, &unk_2613AD078, v20);
}

uint64_t sub_26135D0E4(uint64_t a1, unint64_t a2, char *a3, const void *a4)
{
  v53 = a1;
  v7 = sub_26139F33C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46 - v9;
  v10 = sub_26139F64C();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  _Block_copy(a4);
  v17 = sub_26129BA7C();
  sub_26125A870(v17, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v47 = v16;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v46 = a3;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Received prepare request", v22, 2u);
      v24 = v23;
      a3 = v46;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v19 + 8))(v15, v18);
    v16 = v47;
  }

  v25 = HIBYTE(a2) & 0xF;
  v26 = v53;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = v53 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v25 != 0;
  if (a2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_26134BF00(1);
  sub_26139F45C();
  sub_26139F5DC();
  (*(v48 + 8))(v12, v49);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v26;
  v31 = a3;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v28;
  *(v32 + 32) = sub_26135EB88;
  *(v32 + 40) = v16;
  v33 = &v31[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler];
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  *v33 = sub_26135F9F8;
  v33[1] = v32;

  sub_26124A228(v34, v35);

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v30;
  v37[4] = a2;
  v38 = &v31[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  v39 = *&v31[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  v40 = *&v31[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8];
  *v38 = &unk_2613AD068;
  *(v38 + 1) = v37;

  sub_26124A228(v39, v40);

  v41 = sub_2613A1C1C();
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v31;
  v44 = v31;
  sub_261266800(0, 0, v42, &unk_2613AD070, v43);
}

uint64_t sub_26135D744(void *a1, void *a2, const void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_26139F33C();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  v14 = a2;
  sub_26134C43C(v14, v14);
  v15 = sub_26129BA7C();
  sub_26125A870(v15, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = a1;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v19;
      v22 = v21;
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v18;
      v24 = v18;
      _os_log_impl(&dword_261243000, v33, v20, "Executing Data Request:\n%@", v22, 0xCu);
      v25 = v32;
      sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v25, -1, -1);
      v26 = v22;
      v19 = v33;
      MEMORY[0x266701350](v26, -1, -1);
    }

    (*(v17 + 8))(v12, v16);
  }

  v27 = sub_2613A1C1C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v29[5] = a1;
  v29[6] = sub_26135F9F4;
  v29[7] = v13;
  v30 = a1;

  *&v14[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = sub_261266800(0, 0, v8, &unk_2613AD060, v29);
}

uint64_t sub_26135DC4C(void *a1, void *a2, const void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_26139F33C();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  v14 = a2;
  sub_26134C998(v14, v14);
  v15 = sub_26129BA7C();
  sub_26125A870(v15, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = a1;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v19;
      v22 = v21;
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v18;
      v24 = v18;
      _os_log_impl(&dword_261243000, v33, v20, "Executing Display Request:\n%@", v22, 0xCu);
      v25 = v32;
      sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v25, -1, -1);
      v26 = v22;
      v19 = v33;
      MEMORY[0x266701350](v26, -1, -1);
    }

    (*(v17 + 8))(v12, v16);
  }

  v27 = sub_2613A1C1C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v29[5] = a1;
  v29[6] = sub_26135F9F4;
  v29[7] = v13;
  v30 = a1;

  *&v14[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = sub_261266800(0, 0, v8, &unk_2613AD058, v29);
}

uint64_t sub_26135E154()
{
  v0 = sub_26139F64C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_26129BA7C();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Identity registration UI is visible", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  sub_26139F55C();
  sub_26139F5BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26135E398()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t sub_26135E42C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_2613582FC(v3, v4, v5, v2);
}

uint64_t sub_26135E4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26135E528(uint64_t a1)
{
  v2 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26135E584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26135E5E8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261265144;

  return sub_2613586F0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_26135E6AC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261359CD0(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for IdentityReaderService(uint64_t a1)
{
  result = qword_27FEAE410;
  if (!qword_27FEAE410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26135E7A8(uint64_t a1)
{
  sub_26139FFEC();
  if (v1 <= 0x3F)
  {
    sub_26135E8D8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26135E8D8(uint64_t a1)
{
  if (!qword_27FEA0768)
  {
    type metadata accessor for IdentityAnalyticsTransaction(255);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA0768);
    }
  }
}

uint64_t sub_26135E938()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261356544(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26135E9E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_2613543D8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26135EADC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_261352848(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26135EBD0(char a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261265144;

  return sub_261351584(a1, v4, v5, v6);
}

uint64_t sub_26135EC80()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26135230C(v3, v4, v5, v2);
}

uint64_t sub_26135ED30()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261350628(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_16Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_26135EE20()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261357458(v3, v4, v5, v2);
}

uint64_t sub_26135EEB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26135469C(v2, v3, v5, v4);
}

uint64_t sub_26135EF70(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2613A147C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_261265144;

  return sub_26135536C(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_26135F090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26135F0D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261262AA4;

  return sub_261352B84(v2, v3, v5, v4);
}

uint64_t sub_26135F190(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v8 = sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 16))(v10, a1, v8);
  v5(0, v9);

  v13[3] = ObjectType;
  v13[4] = a2;
  v13[0] = v6;
  v11 = v6;
  sub_26137B4C0(v13, a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t objectdestroy_158Tm()
{
  v1 = sub_26139F64C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_143Tm()
{
  v1 = sub_2613A147C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26135F4B0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2613A147C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_261265144;

  return sub_261353888(a1, a2, v8, v2 + v7, v9);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26135F6D0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_261356544(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26135F778()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t sub_26135F80C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26135F8E0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26134B8A4(v5, v6, v7, v0 + v3, v4);
}

__n128 sub_26135F9FC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = a3;
  result = *a4;
  v7 = *(a4 + 16);
  *(a5 + 16) = *a4;
  *(a5 + 32) = v7;
  *(a5 + 48) = v5;
  return result;
}

uint64_t sub_26135FA2C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07D8, &qword_2613AD218);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26135FAD4, 0, 0);
}

uint64_t sub_26135FAD4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  v0[12] = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  sub_26125A870(v2 + v3, v1, &qword_27FEA07D8, &qword_2613AD218);
  v4 = type metadata accessor for StoreAnalytics(0);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_26135FC8C;
    v6 = v0[10];

    return sub_2612674C4(v6);
  }

  else
  {
    sub_26125A870(v0[9] + v0[12], v0[8], &qword_27FEA07D8, &qword_2613AD218);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_26135FC8C()
{

  return MEMORY[0x2822009F8](sub_26135FD88, 0, 0);
}

uint64_t sub_26135FD88()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  sub_26125C010(v2, v3 + v1, &qword_27FEA07D8, &qword_2613AD218);
  swift_endAccess();
  sub_26125A870(v0[9] + v0[12], v0[8], &qword_27FEA07D8, &qword_2613AD218);

  v4 = v0[1];

  return v4();
}

id sub_26135FE64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v47 = a8;
  v49 = a7;
  v48 = a6;
  v46 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = v44 - v15;
  v50 = v9;
  v16 = objc_allocWithZone(v9);
  v44[1] = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage;
  *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage] = 0;
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  v18 = type metadata accessor for StoreAnalytics(0);
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection;
  *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection] = a1;
  v20 = a1;
  sub_26128DAD8(v20, v54);
  v21 = &v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_entitlements];
  v22 = v54[3];
  *(v21 + 2) = v54[2];
  *(v21 + 3) = v22;
  *(v21 + 4) = v55[0];
  *(v21 + 79) = *(v55 + 15);
  v23 = v54[1];
  *v21 = v54[0];
  *(v21 + 1) = v23;
  type metadata accessor for NetworkConnectivityMonitor();
  v24 = sub_2612C5C70();
  v25 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_networkConnectivityMonitor;
  *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_networkConnectivityMonitor] = v24;
  v26 = sub_261372C14(a2, a3, v46, a5, v48, v49, v47 & 1);

  if (v26)
  {
    *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext] = v26;

    v27 = *(**sub_2612C11DC() + 112);

    v27(v52, v28);

    sub_26124A200(v52, &v16[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter]);
    v51.receiver = v16;
    v51.super_class = v50;
    v29 = objc_msgSendSuper2(&v51, sel_init);
  }

  else
  {
    v49 = v19;
    v30 = v20;
    v31 = sub_26129B934();
    v32 = v45;
    sub_26125A870(v31, v45, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {

      sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = v25;
      v35 = sub_2613A122C();
      v36 = sub_2613A1D8C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, "Could not retrieve context", v37, 2u);
        v38 = v37;
        v32 = v45;
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v34 + 8))(v32, v33);
    }

    v39 = *v21;
    v52[1] = *(v21 + 1);
    v52[0] = v39;
    v40 = *(v21 + 2);
    v41 = *(v21 + 3);
    v42 = *(v21 + 4);
    *&v53[15] = *(v21 + 79);
    v52[3] = v41;
    *v53 = v42;
    v52[2] = v40;
    sub_26127D7B0(v52);

    sub_26124C718(&v16[v17], &qword_27FEA07D8, &qword_2613AD218);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v29;
}

id sub_261360330()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreAnalytics(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v7], 1, v3))
  {
    sub_2613765A4(&v1[v7], v6, type metadata accessor for StoreAnalytics);
    sub_261266F18();
    sub_261376698(v6, type metadata accessor for StoreAnalytics);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_261360684()
{
  v2 = sub_26139FB0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage;
  v10 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage);
  if (v10)
  {
  }

  else if (sub_261252980())
  {
    v11 = sub_261252928();
    if (v1)
    {
      swift_getErrorValue();
      *v5 = sub_2613A250C();
      (*(v3 + 104))(v5, *MEMORY[0x277D43890], v2);
      v12 = objc_allocWithZone(sub_26139FB2C());
      v10 = sub_26139FB3C();
      v20[1] = v10;
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
      swift_willThrowTypedImpl();
    }

    else
    {
      v10 = v11;
      *(v0 + v9) = v11;
    }
  }

  else
  {
    v13 = sub_26129B934();
    sub_26125A870(v13, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D7C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "SAF DB does not exist yet", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v15 + 8))(v8, v14);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_2613609EC()
{
  v1[7] = v0;
  v2 = sub_26139FAAC();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_26139FB0C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_2613A1EBC();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261360BB4, 0, 0);
}

uint64_t sub_261360BB4()
{
  v1 = v0[19];
  v2 = sub_26129B934();
  v0[20] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[21] = v3;
  v4 = *(v3 - 8);
  v0[22] = v4;
  v5 = *(v4 + 48);
  v0[23] = v5;
  v0[24] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[19];
  if (v6 == 1)
  {
    sub_26124C718(v0[19], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[7];
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0xD000000000000027, 0x80000002613BD7A0, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  sub_261361BF0();
  v12 = sub_261360684();
  v13 = v12;
  v0[25] = v12;
  if (v12)
  {
    v15 = v0[17];
    v16 = v0[7];
    v17 = swift_allocObject();
    v0[26] = v17;
    *(v17 + 16) = v16;
    v18 = v16;
    v19 = MEMORY[0x277D83B88];
    sub_2612529C0(v15);
    v20 = swift_task_alloc();
    v0[27] = v20;
    *v20 = v0;
    v20[1] = sub_2613612D4;
    v21 = v0[17];

    return sub_261252A34((v0 + 6), v21, sub_261372E2C, v17, v13, v19);
  }

  else
  {

    v22 = v0[1];

    return v22(0);
  }
}

uint64_t sub_2613612D4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_261361714;
  }

  else
  {
    v3 = sub_261361458;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261361458()
{

  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261361510()
{

  return MEMORY[0x2822009F8](sub_26136160C, 0, 0);
}

uint64_t sub_26136160C()
{
  *(v0 + 40) = *(v0 + 240);
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  swift_willThrowTypedImpl();

  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261361714()
{

  v1 = *(v0 + 224);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = sub_26139FB2C();
  *(v0 + 232) = v3;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);

    v7 = *(v0 + 24);
    *(v0 + 240) = v7;
    sub_26139FB1C();
    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x277D43890])
    {
      v8 = *(v0 + 56);
      type metadata accessor for SafMonitorEventDispatcher();
      v9 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v10 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v11 = sub_2613A0C7C();
      v12 = swift_task_alloc();
      *(v0 + 248) = v12;
      *v12 = v0;
      v12[1] = sub_261361510;

      return sub_2612A0064(v9, v8 + v10, v11, v7);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
    *(v0 + 40) = *(v0 + 240);
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    swift_willThrowTypedImpl();

    v18 = *(v0 + 240);
  }

  else
  {
    v14 = *(v0 + 184);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 144);

    sub_26125A870(v16, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v38 = v3;
    if (v14(v17, 1, v15) == 1)
    {
      sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = v1;
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v1;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_261243000, v20, v21, "Unexpected error: [%@]", v22, 0xCu);
        sub_26124C718(v23, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v23, -1, -1);
        MEMORY[0x266701350](v22, -1, -1);
      }

      v26 = *(v0 + 168);
      v27 = *(v0 + 176);
      v28 = *(v0 + 144);

      (*(v27 + 8))(v28, v26);
    }

    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    (*(v33 + 104))(v31, *MEMORY[0x277D43838], v34);
    v35 = sub_26139FA9C();
    (*(v33 + 8))(v31, v34);
    *v29 = v35;
    (*(v30 + 104))(v29, *MEMORY[0x277D438D8], v32);
    v36 = objc_allocWithZone(v38);
    v18 = sub_26139FB3C();
    *(v0 + 32) = v18;
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    swift_willThrowTypedImpl();
  }

  v37 = *(v0 + 8);

  return v37(v18);
}

uint64_t sub_261361BF0()
{
  v1 = sub_26139FB0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  if ((*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_entitlements + 80) & 1) == 0)
  {
    v8 = sub_26129B934();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D8C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "No entitlement to use the API", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v10 + 8))(v7, v9);
    }

    (*(v2 + 104))(v4, *MEMORY[0x277D43888], v1);
    v14 = objc_allocWithZone(sub_26139FB2C());
    v1 = sub_26139FB3C();
    v16[1] = v1;
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_261361EC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v19 - v9);
  v11 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v13 = *(v11 + 80);
  v12 = *(v11 + 88);
  v14 = sub_26139F13C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  v15(v8, 1, 1, v14);

  v16 = v21;
  v17 = sub_261253720(a1, v13, v12, v10, v8);

  sub_26124C718(v8, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0);
  if (!v16)
  {
    *v20 = v17;
  }

  return result;
}

uint64_t sub_2613621E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_261362290;

  return sub_2613609EC();
}

uint64_t sub_261362290(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (*(v8 + 16))(v8, 0, v11);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v5 + 24));
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_261362474(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v2[6] = swift_task_alloc();
  v3 = sub_2613A1EBC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_26139FB0C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261362624, 0, 0);
}

uint64_t sub_261362624()
{
  v1 = sub_26128E1F4();
  v2 = *v1;
  *(v0 + 136) = *v1;
  v3 = *(*v2 + 160);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_261362750;

  return v6();
}

uint64_t sub_261362750()
{

  return MEMORY[0x2822009F8](sub_26136284C, 0, 0);
}

uint64_t sub_26136284C()
{
  v1 = v0[16];
  v2 = sub_26129B934();
  v0[19] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[20] = v3;
  v4 = *(v3 - 8);
  v0[21] = v4;
  v5 = *(v4 + 48);
  v0[22] = v5;
  v0[23] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4];
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v8;
      _os_log_impl(&dword_261243000, v6, v7, "Requesting a transaction batch of size: %ld", v9, 0xCu);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[16];

    (*(v4 + 8))(v10, v3);
  }

  sub_261361BF0();
  v11 = sub_261360684();
  v0[24] = v11;
  if (v11)
  {
    sub_2613A121C();
    if (sub_2613A10FC())
    {
      if (sub_2612C5A88())
      {
        v12 = v0[9];
        v13 = v0[5];
        v14 = swift_allocObject();
        v0[25] = v14;
        *(v14 + 16) = v13;
        v15 = v13;
        v16 = MEMORY[0x277D839B0];
        sub_2612529C0(v12);
        v17 = swift_task_alloc();
        v0[26] = v17;
        *v17 = v0;
        v17[1] = sub_261362FF0;
        v18 = v0[9];

        return sub_261252A34((v0 + 33), v18, sub_26137366C, v14, v11, v16);
      }

      v26 = v0[14];
      sub_26125A870(v2, v26, &qword_27FE9F560, &qword_2613A3CB0);
      if (v5(v26, 1, v3) == 1)
      {
        sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v35 = sub_2613A122C();
        v36 = sub_2613A1D8C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_261243000, v35, v36, "No network connection, cannot fetch SAF transactions", v37, 2u);
          MEMORY[0x266701350](v37, -1, -1);
        }

        v38 = v0[14];

        (*(v4 + 8))(v38, v3);
      }

      v31 = v0[11];
      v32 = v0[12];
      v33 = v0[10];
      v34 = MEMORY[0x277D43880];
    }

    else
    {
      v25 = v0[15];
      sub_26125A870(v2, v25, &qword_27FE9F560, &qword_2613A3CB0);
      if (v5(v25, 1, v3) == 1)
      {
        sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v27 = sub_2613A122C();
        v28 = sub_2613A1D8C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_261243000, v27, v28, "Passcode is disabled, cannot fetch SAF transactions", v29, 2u);
          MEMORY[0x266701350](v29, -1, -1);
        }

        v30 = v0[15];

        (*(v4 + 8))(v30, v3);
      }

      v31 = v0[11];
      v32 = v0[12];
      v33 = v0[10];
      v34 = MEMORY[0x277D43898];
    }

    (*(v31 + 104))(v32, *v34, v33);
    v39 = objc_allocWithZone(sub_26139FB2C());
    v40 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v41 = swift_allocError();
    *v42 = v40;
    swift_willThrow();

    v24 = v41;
  }

  else
  {
    (*(v0[11] + 104))(v0[12], *MEMORY[0x277D438A8], v0[10]);
    v20 = objc_allocWithZone(sub_26139FB2C());
    v21 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v22 = swift_allocError();
    *v23 = v21;
    swift_willThrow();
    v24 = v22;
  }

  v0[30] = v24;
  v43 = v0[5];
  v44 = sub_261372E48(v24, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v44;
  type metadata accessor for SafMonitorEventDispatcher();
  v45 = *(v43 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v46 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v47 = swift_task_alloc();
  v0[32] = v47;
  *v47 = v0;
  v47[1] = sub_261363898;
  v48 = v0[4];

  return sub_2612A0064(v45, v43 + v46, v48, v44);
}

uint64_t sub_261362FF0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v3 = sub_261363B50;
  }

  else
  {
    v3 = sub_261363174;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261363174()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 160);
    v3 = *(v0 + 104);
    sub_26125A870(*(v0 + 152), v3, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1(v3, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261243000, v9, v10, "Batch already exists", v11, 2u);
        MEMORY[0x266701350](v11, -1, -1);
      }

      v12 = *(v0 + 160);
      v13 = *(v0 + 168);
      v14 = *(v0 + 104);

      (*(v13 + 8))(v14, v12);
    }

    (*(*(v0 + 88) + 104))(*(v0 + 96), *MEMORY[0x277D438B8], *(v0 + 80));
    v15 = objc_allocWithZone(sub_26139FB2C());
    v16 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v17 = swift_allocError();
    *v18 = v16;
    swift_willThrow();

    *(v0 + 240) = v17;
    v19 = *(v0 + 40);
    v20 = sub_261372E48(v17, 0xD00000000000002CLL, 0x80000002613BD7D0);
    *(v0 + 248) = v20;
    type metadata accessor for SafMonitorEventDispatcher();
    v21 = *(v19 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v22 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v23[1] = sub_261363898;
    v24 = *(v0 + 32);

    return sub_2612A0064(v21, v19 + v22, v24, v20);
  }

  else
  {
    v4 = *(v0 + 192);
    swift_unknownObjectWeakInit();
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v5[1] = sub_2613634A4;
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);

    return sub_2613736F4(v4, v6, v7, v0 + 24);
  }
}

uint64_t sub_2613634A4(uint64_t a1)
{
  *(*v2 + 232) = a1;

  if (v1)
  {
    v3 = sub_261363720;
  }

  else
  {
    v3 = sub_2613635B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2613635B8()
{
  v1 = v0[17];
  v2 = v0[6];
  MEMORY[0x266701400](v0 + 3);

  v3 = sub_2613A1C1C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_261266800(0, 0, v2, &unk_2613AD250, v4);

  v5 = v0[1];
  v6 = v0[29];

  return v5(v6);
}

uint64_t sub_261363720()
{
  v1 = v0[29];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  v2 = swift_allocError();
  *v3 = v1;
  MEMORY[0x266701400](v0 + 3);

  v0[30] = v2;
  v4 = v0[5];
  v5 = sub_261372E48(v2, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v5;
  type metadata accessor for SafMonitorEventDispatcher();
  v6 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_261363898;
  v9 = v0[4];

  return sub_2612A0064(v6, v4 + v7, v9, v5);
}

uint64_t sub_261363898()
{

  return MEMORY[0x2822009F8](sub_261363994, 0, 0);
}

uint64_t sub_261363994()
{
  v1 = v0[30];
  v2 = v0[17];
  v3 = v0[6];
  v0[2] = v0[31];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  swift_willThrowTypedImpl();

  v4 = sub_2613A1C1C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  sub_261266800(0, 0, v3, &unk_2613AD240, v5);

  v6 = v0[1];
  v7 = v0[31];

  return v6(v7);
}

uint64_t sub_261363B50()
{

  v1 = v0[27];
  v0[30] = v1;
  v2 = v0[5];
  v3 = sub_261372E48(v1, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v3;
  type metadata accessor for SafMonitorEventDispatcher();
  v4 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v5 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_261363898;
  v7 = v0[4];

  return sub_2612A0064(v4, v2 + v5, v7, v3);
}

uint64_t sub_261363C5C(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = sub_26139FAAC();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = sub_26139FB0C();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261363DB0, 0, 0);
}

uint64_t sub_261363DB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection), v2, v0[22] = sub_261364400, v0[23] = 0, v0[18] = MEMORY[0x277D85DD0], v0[19] = 1107296256, v0[20] = sub_261277574, v0[21] = &block_descriptor_13, v4 = _Block_copy(v0 + 18), v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v4), v3, sub_2613A202C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0828, &qword_2613AD400), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v0[31];
    v0[41] = v6;
    sub_2613A008C();
    v7 = sub_2613A1B6C();
    v0[42] = v7;
    v0[2] = v0;
    v0[3] = sub_261364290;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0830, &qword_2613AD408);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_261364608;
    v0[13] = &block_descriptor_170;
    v0[14] = v8;
    [v6 paymentCardReadResultsWithBatch:v7 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = v0[40];
    v10 = sub_26129B5FC();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(v0[40], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "Could not retrieve transactions streaming proxy", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v16 = v0[40];

      (*(v12 + 8))(v16, v11);
    }

    v17 = v0[39];
    v18 = v0[37];
    v19 = v0[38];
    v21 = v0[35];
    v20 = v0[36];
    v22 = v0[34];
    (*(v21 + 104))(v20, *MEMORY[0x277D43838], v22);
    v23 = sub_26139FA9C();
    (*(v21 + 8))(v20, v22);
    *v17 = v23;
    (*(v19 + 104))(v17, *MEMORY[0x277D438D8], v18);
    v24 = objc_allocWithZone(sub_26139FB2C());
    v25 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    swift_allocError();
    *v26 = v25;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_261364290()
{

  return MEMORY[0x2822009F8](sub_261364370, 0, 0);
}

uint64_t sub_261364370()
{
  v1 = *(v0 + 336);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261364400(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v9 = a1;
  v10 = sub_2613A122C();
  v11 = sub_2613A1D8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_261243000, v10, v11, "Transaction streaming error: %@", v12, 0xCu);
    sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v13, -1, -1);
    MEMORY[0x266701350](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_261364608(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2613647C0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_26136487C;

  return sub_261362474(a1);
}

uint64_t sub_26136487C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  v7 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v8 = swift_allocError();
    *v9 = a1;
    v10 = sub_26139EE6C();
    (v7)[2](v7, 0, v10);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_261364A70()
{
  v1[12] = v0;
  v2 = sub_26139FB0C();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_26139F13C();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v1[21] = *(v4 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_2613A1EBC();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261364C88, 0, 0);
}

uint64_t sub_261364C88()
{
  v1 = *(v0 + 224);
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 224);
  if (v5 == 1)
  {
    sub_26124C718(*(v0 + 224), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0xD000000000000011, 0x80000002613BD800, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = swift_allocBox();
  *(v0 + 232) = v13;
  *(v0 + 240) = v14;
  (*(v12 + 56))(v14, 1, 1, v11);
  sub_261361BF0();
  v15 = sub_261360684();
  v16 = v15;
  *(v0 + 248) = v15;
  if (v15)
  {
    v26 = *(v0 + 216);
    v27 = *(v0 + 200);
    v28 = *(v0 + 96);
    *(v0 + 416) = *MEMORY[0x277CBE110];
    v29 = *(v27 + 104);
    *(v0 + 256) = v29;
    *(v0 + 264) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v29(v26);
    v30 = swift_allocObject();
    *(v0 + 272) = v30;
    *(v30 + 16) = v28;
    *(v30 + 24) = v13;
    v31 = v28;

    v32 = swift_task_alloc();
    *(v0 + 280) = v32;
    *v32 = v0;
    v32[1] = sub_261365138;
    v33 = *(v0 + 216);
    v34 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v32, v33, sub_261375F34, v30, v16, v34);
  }

  else
  {
    (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D438A0], *(v0 + 104));
    v35 = objc_allocWithZone(sub_26139FB2C());
    v36 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v37 = swift_allocError();
    *v38 = v36;
    swift_willThrow();
    v39 = v37;
    *(v0 + 392) = v37;
    v17 = *(v0 + 240);
    v18 = *(v0 + 136);
    v19 = *(v0 + 96);
    v20 = sub_261372E48(v39, 0xD000000000000011, 0x80000002613BD800);
    *(v0 + 400) = v20;
    type metadata accessor for SafMonitorEventDispatcher();
    v21 = *(v19 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v22 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    swift_beginAccess();
    sub_26125A870(v17, v18, &qword_27FE9F280, &unk_2613A42B0);
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_261365FD8;
    v24 = *(v0 + 136);

    return sub_2612A0900(v21, v19 + v22, v24, v20);
  }
}

uint64_t sub_261365138()
{
  v2 = *v1;
  v2[36] = v0;

  v3 = v2[27];
  v4 = v2[25];
  v5 = v2[24];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_261366248;
  }

  else
  {
    v2[37] = v7;
    v2[38] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_2613652E4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2613652E4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  swift_beginAccess();
  sub_26125A870(v1, v4, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 144);

    sub_26124C718(v5, &qword_27FE9F280, &unk_2613A42B0);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    v12 = *(v10 + 32);
    *(v0 + 312) = v12;
    *(v0 + 320) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v8, v11, v9);
    v13 = swift_allocObject();
    *(v0 + 328) = v13;
    *(v13 + 16) = 0;
    v14 = swift_allocObject();
    *(v0 + 336) = v14;
    *(v14 + 16) = 1;
    v15 = (v14 + 16);
    swift_beginAccess();
    if (*v15 == 1)
    {
      v16 = *(v0 + 328);
      v17 = *(v0 + 336);
      v34 = *(v0 + 312);
      v35 = *(v0 + 248);
      v18 = *(v0 + 184);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = *(v0 + 96);
      (*(v0 + 256))(*(v0 + 208), *(v0 + 416), *(v0 + 192));
      (*(v21 + 16))(v19, v18, v22);
      v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      *(v0 + 344) = v26;
      *(v26 + 16) = v23;
      v34(v26 + v24, v19, v22);
      *(v26 + v25) = v17;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
      v27 = v23;

      v28 = swift_task_alloc();
      *(v0 + 352) = v28;
      *v28 = v0;
      v28[1] = sub_2613656C0;
      v29 = *(v0 + 208);
      v30 = MEMORY[0x277D84F78] + 8;

      return sub_261252A34(v28, v29, sub_261375F50, v26, v35, v30);
    }

    else
    {
      v31 = *(v0 + 248);

      v32 = swift_task_alloc();
      *(v0 + 368) = v32;
      *v32 = v0;
      v32[1] = sub_26136584C;
      v33 = *(v0 + 184);

      return sub_261366994(v31, v33);
    }
  }
}

uint64_t sub_2613656C0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2 + 296))(*(v2 + 208), *(v2 + 192));

  if (v0)
  {
    v3 = sub_261365BA0;
  }

  else
  {
    v3 = sub_261365960;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26136584C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_261366394;
  }

  else
  {
    v2 = sub_261365D20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261365960()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  if (*(v2 + 16) == 1)
  {
    v20 = *(v0 + 312);
    v21 = *(v0 + 248);
    v3 = *(v0 + 184);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 96);
    (*(v0 + 256))(*(v0 + 208), *(v0 + 416), *(v0 + 192));
    (*(v6 + 16))(v4, v3, v7);
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    *(v0 + 344) = v11;
    *(v11 + 16) = v8;
    v20(v11 + v9, v4, v7);
    *(v11 + v10) = v2;
    *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1;
    v12 = v8;

    v13 = swift_task_alloc();
    *(v0 + 352) = v13;
    *v13 = v0;
    v13[1] = sub_2613656C0;
    v14 = *(v0 + 208);
    v15 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v13, v14, sub_261375F50, v11, v21, v15);
  }

  else
  {
    v17 = *(v0 + 248);

    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = sub_26136584C;
    v19 = *(v0 + 184);

    return sub_261366994(v17, v19);
  }
}

uint64_t sub_261365BA0()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  v4 = v0[45];
  v0[49] = v4;
  v5 = v0[30];
  v6 = v0[17];
  v7 = v0[12];
  v8 = sub_261372E48(v4, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v8;
  type metadata accessor for SafMonitorEventDispatcher();
  v9 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v5, v6, &qword_27FE9F280, &unk_2613A42B0);
  v11 = swift_task_alloc();
  v0[51] = v11;
  *v11 = v0;
  v11[1] = sub_261365FD8;
  v12 = v0[17];

  return sub_2612A0900(v9, v7 + v10, v12, v8);
}

uint64_t sub_261365D20()
{
  v1 = v0[12];
  type metadata accessor for SafMonitorEventDispatcher();
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_261365DE8;
  v5 = v0[23];

  return sub_2612A0780(v2, v1 + v3, v5);
}

uint64_t sub_261365DE8()
{

  return MEMORY[0x2822009F8](sub_261365EE4, 0, 0);
}

uint64_t sub_261365EE4()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_261365FD8()
{
  v1 = *(*v0 + 136);

  sub_26124C718(v1, &qword_27FE9F280, &unk_2613A42B0);

  return MEMORY[0x2822009F8](sub_261366100, 0, 0);
}

uint64_t sub_261366100()
{
  v1 = v0[49];
  v0[11] = v0[50];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  swift_willThrowTypedImpl();

  v2 = v0[1];
  v3 = v0[50];

  return v2(v3);
}

uint64_t sub_261366248()
{

  v1 = v0[36];
  v0[49] = v1;
  v2 = v0[30];
  v3 = v0[17];
  v4 = v0[12];
  v5 = sub_261372E48(v1, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v5;
  type metadata accessor for SafMonitorEventDispatcher();
  v6 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v2, v3, &qword_27FE9F280, &unk_2613A42B0);
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_261365FD8;
  v9 = v0[17];

  return sub_2612A0900(v6, v4 + v7, v9, v5);
}

uint64_t sub_261366394()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  v4 = v0[47];
  v0[49] = v4;
  v5 = v0[30];
  v6 = v0[17];
  v7 = v0[12];
  v8 = sub_261372E48(v4, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v8;
  type metadata accessor for SafMonitorEventDispatcher();
  v9 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v5, v6, &qword_27FE9F280, &unk_2613A42B0);
  v11 = swift_task_alloc();
  v0[51] = v11;
  *v11 = v0;
  v11[1] = sub_261365FD8;
  v12 = v0[17];

  return sub_2612A0900(v9, v7 + v10, v12, v8);
}

uint64_t sub_261366500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v6 = sub_26139FB0C();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v45 = swift_projectBox();
  v18 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v19 = *(v18 + 80);
  v20 = *(v18 + 88);
  v21 = sub_26139F13C();
  v22 = *(*(v21 - 8) + 56);
  v22(v17, 1, 1, v21);

  v23 = v47;
  v24 = sub_261257344(a2, v19, v20, v17);
  sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);

  if (!v23)
  {
    v26 = v22;
    v27 = v45;
    if (v24)
    {
      v28 = [v24 batchId];
      sub_26139F11C();

      v26(v15, 0, 1, v21);
      swift_beginAccess();
      return sub_26125C010(v15, v27, &qword_27FE9F280, &unk_2613A42B0);
    }

    else
    {
      v29 = sub_26129B934();
      v30 = v11;
      sub_26125A870(v29, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v31 = sub_2613A124C();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v11, 1, v31) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
        v34 = v42;
        v33 = v43;
      }

      else
      {
        v35 = sub_2613A122C();
        v36 = sub_2613A1D8C();
        v37 = os_log_type_enabled(v35, v36);
        v34 = v42;
        v33 = v43;
        if (v37)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_261243000, v35, v36, "Could not reset as no batch was found", v38, 2u);
          MEMORY[0x266701350](v38, -1, -1);
        }

        (*(v32 + 8))(v30, v31);
      }

      (*(v44 + 104))(v34, *MEMORY[0x277D438A0], v33);
      v39 = objc_allocWithZone(sub_26139FB2C());
      v40 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
      swift_allocError();
      *v41 = v40;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261366994(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26139F13C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261366ABC, 0, 0);
}

uint64_t sub_261366ABC()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x277CBE110], v0[9]);
  (*(v2 + 16))(v1, v5, v3);
  v6 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = v4;
  (*(v2 + 32))(v7 + v6, v1, v3);
  v8 = v4;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_261366C30;
  v10 = v0[11];
  v11 = v0[2];
  v12 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v9, v10, sub_261376B3C, v7, v11, v12);
}

uint64_t sub_261366C30()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_261366E34;
  }

  else
  {
    v5 = sub_261366DC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261366DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261366E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261367018(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2613670C0;

  return sub_261364A70();
}

uint64_t sub_2613670C0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (*(v8 + 16))(v8, v11);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v5 + 24));
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_26136729C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_26139F13C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07F8, &qword_2613AD278);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_26139FB0C();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07D8, &qword_2613AD218);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  v7 = type metadata accessor for ValidationResponse(0);
  v3[39] = v7;
  v8 = *(v7 - 8);
  v3[40] = v8;
  v3[41] = *(v8 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613675E0, 0, 0);
}

uint64_t sub_2613675E0()
{
  v46 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v4 + 56);
  *(v0 + 424) = v5;
  *(v0 + 432) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v5(v2, 1, 1, v3);
  sub_261361BF0();
  v6 = sub_261360684();
  *(v0 + 440) = v6;
  if (v6)
  {
    v26 = *(v0 + 368);
    v27 = sub_26129B934();
    *(v0 + 448) = v27;
    sub_26125A870(v27, v26, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    *(v0 + 456) = v28;
    v29 = *(v28 - 8);
    *(v0 + 464) = v29;
    v30 = *(v29 + 48);
    *(v0 + 472) = v30;
    *(v0 + 480) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v30(v26, 1, v28) == 1)
    {
      sub_26124C718(*(v0 + 368), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v35 = sub_2613A122C();
      v36 = sub_2613A1D9C();

      if (os_log_type_enabled(v35, v36))
      {
        v38 = *(v0 + 176);
        v37 = *(v0 + 184);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_26124C11C(v38, v37, &v45);
        _os_log_impl(&dword_261243000, v35, v36, "Validating token: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x266701350](v40, -1, -1);
        MEMORY[0x266701350](v39, -1, -1);
      }

      (*(v29 + 8))(*(v0 + 368), v28);
    }

    v41 = swift_task_alloc();
    *(v0 + 488) = v41;
    *v41 = v0;
    v41[1] = sub_261367C7C;
    v42 = *(v0 + 352);
    v43 = *(v0 + 184);
    v44 = *(v0 + 176);

    return sub_261369940(v42, v44, v43);
  }

  else
  {
    (*(*(v0 + 256) + 104))(*(v0 + 264), *MEMORY[0x277D438A0], *(v0 + 248));
    v31 = objc_allocWithZone(sub_26139FB2C());
    v32 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v33 = swift_allocError();
    *v34 = v32;
    swift_willThrow();
    *(v0 + 576) = v33;
    *(v0 + 152) = v33;
    v7 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 72);
      *(v0 + 16) = *(v0 + 56);
      *(v0 + 32) = v8;
      *(v0 + 48) = *(v0 + 88);
      v9 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
      *(v0 + 136) = *(v0 + 24);
      sub_26130105C(v0 + 136);
      *(v0 + 120) = *(v0 + 40);
      sub_26130105C(v0 + 120);
    }

    else
    {
      v9 = sub_261372E48(v33, 0xD000000000000021, 0x80000002613BD820);
    }

    *(v0 + 584) = v9;
    v10 = *(v0 + 400);
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    sub_26125A870(*(v0 + 416), v10, &qword_27FE9F280, &unk_2613A42B0);
    v13 = *(v12 + 48);
    *(v0 + 592) = v13;
    *(v0 + 600) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    LODWORD(v11) = v13(v10, 1, v11);
    v14 = v9;
    sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0);
    if (v11 == 1 || (v15 = *(v0 + 392), v16 = *(v0 + 200), sub_26125A870(*(v0 + 408), v15, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v16) = v13(v15, 1, v16), sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0), v16 == 1))
    {
      v17 = swift_task_alloc();
      *(v0 + 608) = v17;
      *v17 = v0;
      v17[1] = sub_26136893C;
      v18 = *(v0 + 240);

      return sub_26136B12C(v18);
    }

    else
    {
      v20 = *(v0 + 192);
      type metadata accessor for SafMonitorEventDispatcher();
      v21 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      *(v0 + 616) = v21;
      v22 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v23 = swift_task_alloc();
      *(v0 + 624) = v23;
      *v23 = v0;
      v23[1] = sub_261368D5C;
      v24 = *(v0 + 584);
      v25 = *(v0 + 416);

      return sub_2612A0460(v21, v20 + v22, v25, v24);
    }
  }
}

uint64_t sub_261367C7C()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_26136930C;
  }

  else
  {
    v2 = sub_261367D90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261367D90()
{
  v32 = v0;
  v1 = v0[59];
  v2 = v0[57];
  v3 = v0[45];
  sub_26125A870(v0[56], v3, &qword_27FE9F560, &qword_2613A3CB0);
  if (v1(v3, 1, v2) == 1)
  {
    sub_26124C718(v0[45], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_2613765A4(v0[44], v0[43], type metadata accessor for ValidationResponse);
    v4 = sub_2613A122C();
    v5 = sub_2613A1D9C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[43];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136315138;
      sub_2613770D8(&qword_27FEA0808, type metadata accessor for ValidationResponse, &unk_2613A6FD0);
      v10 = sub_2613A23EC();
      v12 = v11;
      sub_261376698(v7, type metadata accessor for ValidationResponse);
      v13 = sub_26124C11C(v10, v12, &v31);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_261243000, v4, v5, "Resolving batch: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x266701350](v9, -1, -1);
      MEMORY[0x266701350](v8, -1, -1);
    }

    else
    {

      sub_261376698(v7, type metadata accessor for ValidationResponse);
    }

    (*(v0[58] + 8))(v0[45], v0[57]);
  }

  v14 = v0[44];
  v15 = v0[42];
  v30 = v0[55];
  v16 = v0[40];
  v17 = v0[37];
  v18 = v0[38];
  v19 = v0[36];
  v20 = *(v0[24] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v0[63] = v20;
  v22 = *(v20 + 80);
  v21 = *(v20 + 88);
  v23 = swift_allocObject();
  v0[64] = v23;
  *(v23 + 16) = 0;
  (*(v17 + 104))(v18, *MEMORY[0x277CBE110], v19);
  sub_2613765A4(v14, v15, type metadata accessor for ValidationResponse);
  v24 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v25 = swift_allocObject();
  v0[65] = v25;
  v25[2] = v23;
  v25[3] = v22;
  v25[4] = v21;
  sub_261377120(v15, v25 + v24, type metadata accessor for ValidationResponse);

  v26 = swift_task_alloc();
  v0[66] = v26;
  *v26 = v0;
  v26[1] = sub_261368150;
  v27 = v0[38];
  v28 = MEMORY[0x277D83B88];

  return sub_261252A34((v0 + 21), v27, sub_26137660C, v25, v30, v28);
}

uint64_t sub_261368150()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {
    v3 = sub_261369610;
  }

  else
  {
    v3 = sub_2613682D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2613682D4()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 312);
  v3 = *(v0 + 192);
  *(v0 + 544) = *(v0 + 168);
  type metadata accessor for SafMonitorEventDispatcher();
  v4 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  v5 = *(v1 + 16);
  *(v0 + 640) = *(v2 + 20);
  v6 = sub_26139F0FC();
  v8 = v7;
  *(v0 + 552) = v7;
  v9 = swift_task_alloc();
  *(v0 + 560) = v9;
  *v9 = v0;
  v9[1] = sub_2613683FC;
  v10 = *(v0 + 504);
  v11 = *(v0 + 352);

  return sub_2612A0254(v10, v3 + v4, v11, v5, v6, v8);
}

uint64_t sub_2613683FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 568) = v3;
  *v3 = v2;
  v3[1] = sub_261368570;
  v4 = *(v1 + 280);

  return sub_26135FA2C(v4);
}

uint64_t sub_261368570()
{

  return MEMORY[0x2822009F8](sub_26136866C, 0, 0);
}

uint64_t sub_26136866C()
{
  v1 = v0[35];
  v2 = type metadata accessor for StoreAnalytics(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[52];
    v4 = v0[44];

    sub_261376698(v4, type metadata accessor for ValidationResponse);
    sub_26124C718(v3, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  }

  else
  {
    v5 = v0[63];
    v6 = v0[52];
    v7 = v0[44];
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);

    v10 = sub_26139F0FC();
    sub_261266B00(v8, v9, v10, v11, 0);

    sub_261376698(v7, type metadata accessor for ValidationResponse);
    sub_26124C718(v6, &qword_27FE9F280, &unk_2613A42B0);
    sub_261376698(v1, type metadata accessor for StoreAnalytics);
  }

  v12 = v0[51];

  sub_26124C718(v12, &qword_27FE9F280, &unk_2613A42B0);

  v13 = v0[1];
  v14 = v0[68];

  return v13(v14);
}

uint64_t sub_26136893C()
{

  return MEMORY[0x2822009F8](sub_261368A38, 0, 0);
}

uint64_t sub_261368A38()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_26124C718(v0[52], &qword_27FE9F280, &unk_2613A42B0);
  sub_26125A870(v2, v1, &qword_27FEA07F8, &qword_2613AD278);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[29];
  v9 = v0[25];
  if (v5 == 1)
  {
    sub_26124C718(v0[29], &qword_27FEA07F8, &qword_2613AD278);
    v6(v7, 1, 1, v9);
  }

  else
  {
    v10 = v0[26];
    v29 = *(v3 + 48);
    (*(v10 + 32))(v7, v8, v0[25]);
    v6(v7, 0, 1, v9);
    (*(v10 + 8))(v8 + v29, v9);
  }

  v11 = v0[30];
  v12 = v0[28];
  sub_261375F68(v0[48], v0[52], &qword_27FE9F280, &unk_2613A42B0);
  sub_261375F68(v11, v12, &qword_27FEA07F8, &qword_2613AD278);
  v13 = v4(v12, 1, v3);
  v14 = v0[53];
  v15 = v0[47];
  v16 = v0[28];
  if (v13 == 1)
  {
    v17 = v0[25];
    sub_26124C718(v16, &qword_27FEA07F8, &qword_2613AD278);
    v14(v15, 1, 1, v17);
  }

  else
  {
    v18 = v0[25];
    v19 = v0[26];
    v20 = v16 + *(v3 + 48);
    v21 = v0[28];
    (*(v19 + 32))(v0[47], v20, v18);
    v14(v15, 0, 1, v18);
    (*(v19 + 8))(v21, v18);
  }

  sub_26125C010(v0[47], v0[51], &qword_27FE9F280, &unk_2613A42B0);
  v22 = v0[24];
  type metadata accessor for SafMonitorEventDispatcher();
  v23 = *(v22 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v0[77] = v23;
  v24 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v25 = swift_task_alloc();
  v0[78] = v25;
  *v25 = v0;
  v25[1] = sub_261368D5C;
  v26 = v0[73];
  v27 = v0[52];

  return sub_2612A0460(v23, v22 + v24, v27, v26);
}

uint64_t sub_261368D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 632) = v4;
  *v4 = v3;
  v4[1] = sub_261368ECC;
  v5 = *(v1 + 272);

  return sub_26135FA2C(v5);
}

uint64_t sub_261368ECC()
{

  return MEMORY[0x2822009F8](sub_261368FC8, 0, 0);
}

uint64_t sub_261368FC8()
{
  v1 = *(v0 + 272);
  v2 = type metadata accessor for StoreAnalytics(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v18 = *(v0 + 584);
    sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  }

  else
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 408);
    v5 = *(v0 + 200);
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);
    if ((*(v0 + 592))(v4, 1, v5))
    {

      v8 = 0;
      v9 = 0;
    }

    else
    {
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      (*(v11 + 16))(v10, v4, v5);

      v8 = sub_26139F0FC();
      v9 = v12;
      (*(v11 + 8))(v10, v5);
      v1 = *(v0 + 272);
    }

    v18 = *(v0 + 584);
    sub_261266B00(v7, v6, v8, v9, v18);

    sub_261376698(v1, type metadata accessor for StoreAnalytics);
  }

  v13 = *(v0 + 576);
  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  *(v0 + 160) = *(v0 + 584);
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
  swift_willThrowTypedImpl();

  sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0);
  sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);

  v16 = *(v0 + 8);

  return v16(v18);
}

uint64_t sub_26136930C()
{

  v1 = *(v0 + 496);
  *(v0 + 152) = v1;
  *(v0 + 576) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 88);
    v4 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
    *(v0 + 136) = *(v0 + 24);
    sub_26130105C(v0 + 136);
    *(v0 + 120) = *(v0 + 40);
    sub_26130105C(v0 + 120);
  }

  else
  {
    v4 = sub_261372E48(v1, 0xD000000000000021, 0x80000002613BD820);
  }

  *(v0 + 584) = v4;
  v5 = *(v0 + 400);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  sub_26125A870(*(v0 + 416), v5, &qword_27FE9F280, &unk_2613A42B0);
  v8 = *(v7 + 48);
  *(v0 + 592) = v8;
  *(v0 + 600) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v6) = v8(v5, 1, v6);
  v9 = v4;
  sub_26124C718(v5, &qword_27FE9F280, &unk_2613A42B0);
  if (v6 == 1 || (v10 = *(v0 + 392), v11 = *(v0 + 200), sub_26125A870(*(v0 + 408), v10, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v11) = v8(v10, 1, v11), sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0), v11 == 1))
  {
    v12 = swift_task_alloc();
    *(v0 + 608) = v12;
    *v12 = v0;
    v12[1] = sub_26136893C;
    v13 = *(v0 + 240);

    return sub_26136B12C(v13);
  }

  else
  {
    v15 = *(v0 + 192);
    type metadata accessor for SafMonitorEventDispatcher();
    v16 = *(v15 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    *(v0 + 616) = v16;
    v17 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v18 = swift_task_alloc();
    *(v0 + 624) = v18;
    *v18 = v0;
    v18[1] = sub_261368D5C;
    v19 = *(v0 + 584);
    v20 = *(v0 + 416);

    return sub_2612A0460(v16, v15 + v17, v20, v19);
  }
}

uint64_t sub_261369610()
{
  v1 = *(v0 + 352);

  sub_261376698(v1, type metadata accessor for ValidationResponse);

  v2 = *(v0 + 536);
  *(v0 + 152) = v2;
  *(v0 + 576) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v4;
    *(v0 + 48) = *(v0 + 88);
    v5 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
    *(v0 + 136) = *(v0 + 24);
    sub_26130105C(v0 + 136);
    *(v0 + 120) = *(v0 + 40);
    sub_26130105C(v0 + 120);
  }

  else
  {
    v5 = sub_261372E48(v2, 0xD000000000000021, 0x80000002613BD820);
  }

  *(v0 + 584) = v5;
  v6 = *(v0 + 400);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  sub_26125A870(*(v0 + 416), v6, &qword_27FE9F280, &unk_2613A42B0);
  v9 = *(v8 + 48);
  *(v0 + 592) = v9;
  *(v0 + 600) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v7) = v9(v6, 1, v7);
  v10 = v5;
  sub_26124C718(v6, &qword_27FE9F280, &unk_2613A42B0);
  if (v7 == 1 || (v11 = *(v0 + 392), v12 = *(v0 + 200), sub_26125A870(*(v0 + 408), v11, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v12) = v9(v11, 1, v12), sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0), v12 == 1))
  {
    v13 = swift_task_alloc();
    *(v0 + 608) = v13;
    *v13 = v0;
    v13[1] = sub_26136893C;
    v14 = *(v0 + 240);

    return sub_26136B12C(v14);
  }

  else
  {
    v16 = *(v0 + 192);
    type metadata accessor for SafMonitorEventDispatcher();
    v17 = *(v16 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    *(v0 + 616) = v17;
    v18 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v19 = swift_task_alloc();
    *(v0 + 624) = v19;
    *v19 = v0;
    v19[1] = sub_261368D5C;
    v20 = *(v0 + 584);
    v21 = *(v0 + 416);

    return sub_2612A0460(v17, v16 + v18, v21, v20);
  }
}

uint64_t sub_261369940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139FB0C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261369A98, 0, 0);
}

uint64_t sub_261369A98()
{
  type metadata accessor for Mock();
  if (sub_26129B0F4(27))
  {
    v1 = v0[12];
    v2 = sub_26129B934();
    sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
    v3 = sub_2613A124C();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D7C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "Using mocked API to validate deletion token", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = v0[12];

      (*(v4 + 8))(v17, v3);
    }

    v18 = sub_261360684();
    v19 = v18;
    v0[13] = v18;
    if (v18)
    {
      v21 = v0[11];
      v22 = v0[5];
      v23 = swift_allocObject();
      v0[14] = v23;
      *(v23 + 16) = v22;
      v24 = type metadata accessor for ValidationResponse(0);
      v25 = v22;
      sub_2612529C0(v21);
      v26 = swift_task_alloc();
      v0[15] = v26;
      *v26 = v0;
      v26[1] = sub_261369F20;
      v27 = v0[11];
      v28 = v0[2];

      return sub_261252A34(v28, v27, sub_261376B04, v23, v19, v24);
    }

    else
    {
      (*(v0[7] + 104))(v0[8], *MEMORY[0x277D438A0], v0[6]);
      v29 = objc_allocWithZone(sub_26139FB2C());
      v30 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
      swift_allocError();
      *v31 = v30;
      swift_willThrow();

      v20 = v0[1];

      return v20();
    }
  }

  else
  {
    v5 = *(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v6 = sub_26129DFF4(*(v5 + 96) | (*(v5 + 98) << 16));
    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v0[17] = v8;

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_26136A134;
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];

    return sub_26129C114(v12, v10, v11, v7, v8, v6 & 0xFFFFFF);
  }
}

uint64_t sub_261369F20()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_26136A290;
  }

  else
  {
    v5 = sub_26136A0B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26136A0B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26136A134()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26136A318, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26136A290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26136A318()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26136A3A0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v139 = a5;
  v136 = a2;
  v137 = a4;
  v132 = a3;
  v138 = a1;
  v125 = a7;
  v128 = sub_26139FB0C();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ValidationResponse(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v130 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v121 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v109 - v18;
  MEMORY[0x28223BE20](v17);
  v131 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v123 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v122 = (&v109 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v129 = &v109 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v133 = &v109 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v134 = &v109 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v109 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = (&v109 - v34);
  v36 = sub_26139F13C();
  v37 = *(v36 - 8);
  v39 = v37 + 16;
  v38 = *(v37 + 16);
  v38(v35, a6, v36);
  v42 = *(v37 + 56);
  v41 = v37 + 56;
  v40 = v42;
  v42(v35, 0, 1, v36);
  v43 = *(v10 + 28);
  v135 = a6;
  v38(v33, a6 + v43, v36);
  v42(v33, 0, 1, v36);
  v44 = v140;
  v45 = sub_261253720(v136, v137, v139, v35, v33);
  v140 = v44;
  if (v44)
  {
    sub_26124C718(v33, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v35, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v115 = v43;
    v116 = v38;
    v117 = v39;
    v118 = v40;
    v119 = v41;
    v46 = v45;
    sub_26124C718(v33, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v35, &qword_27FE9F280, &unk_2613A42B0);
    v47 = v132;
    swift_beginAccess();
    *(v47 + 16) = v46;
    v113 = sub_26129B934();
    v48 = v131;
    sub_26125A870(v113, v131, &qword_27FE9F560, &qword_2613A3CB0);
    v49 = sub_2613A124C();
    v114 = *(v49 - 8);
    v50 = *(v114 + 48);
    v132 = v49;
    v112 = v114 + 48;
    v111 = v50;
    if ((v50)(v48, 1) == 1)
    {
      v51 = sub_26124C718(v48, &qword_27FE9F560, &qword_2613A3CB0);
      v52 = v137;
      v54 = v134;
      v53 = v135;
      v55 = v36;
      v56 = v116;
      v57 = v115;
    }

    else
    {
      v53 = v135;
      v58 = v130;
      sub_2613765A4(v135, v130, type metadata accessor for ValidationResponse);
      v59 = sub_2613A122C();
      v60 = sub_2613A1D9C();
      v55 = v36;
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v141 = v110;
        *v61 = 136315138;
        sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v62 = sub_2613A23EC();
        v63 = v48;
        v65 = v64;
        sub_261376698(v58, type metadata accessor for ValidationResponse);
        v66 = sub_26124C11C(v62, v65, &v141);
        v48 = v63;

        *(v61 + 4) = v66;
        _os_log_impl(&dword_261243000, v59, v60, "Deleting batch: %s", v61, 0xCu);
        v67 = v110;
        __swift_destroy_boxed_opaque_existential_0Tm(v110);
        MEMORY[0x266701350](v67, -1, -1);
        MEMORY[0x266701350](v61, -1, -1);
      }

      else
      {

        sub_261376698(v58, type metadata accessor for ValidationResponse);
      }

      v52 = v137;
      v56 = v116;
      v57 = v115;
      v51 = (*(v114 + 8))(v48, v132);
      v54 = v134;
    }

    v134 = MEMORY[0x266700BB0](v51);
    v56(v54, v53, v55);
    v68 = v118;
    v118(v54, 0, 1, v55);
    v69 = v53 + v57;
    v70 = v133;
    v56(v133, v69, v55);
    v71 = v55;
    v72 = v55;
    v73 = v68;
    v68(v70, 0, 1, v72);
    v74 = v136;
    v75 = v140;
    sub_261256620(v136, v52, v139, v54, v70, v138);
    v140 = v75;
    if (v75)
    {
      sub_26124C718(v70, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v54, &qword_27FE9F280, &unk_2613A42B0);
      objc_autoreleasePoolPop(v134);
    }

    else
    {
      sub_26124C718(v70, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v54, &qword_27FE9F280, &unk_2613A42B0);
      objc_autoreleasePoolPop(v134);
      v76 = v129;
      v56(v129, v135, v71);
      v68(v76, 0, 1, v71);
      v77 = v140;
      v78 = sub_261257484(v74, v52, v139, v76, v138);
      sub_26124C718(v76, &qword_27FE9F280, &unk_2613A42B0);
      if (!v77)
      {
        v79 = v135;
        v80 = v71;
        if (v78)
        {
          v140 = 0;
          v81 = v121;
          sub_26125A870(v113, v121, &qword_27FE9F560, &qword_2613A3CB0);
          if (v111(v81, 1, v132) == 1)
          {
            sub_26124C718(v81, &qword_27FE9F560, &qword_2613A3CB0);
            v82 = v125;
            v83 = v136;
            v84 = v123;
            v85 = v122;
          }

          else
          {
            v90 = sub_2613A122C();
            v91 = sub_2613A1D9C();
            v92 = os_log_type_enabled(v90, v91);
            v83 = v136;
            v84 = v123;
            v85 = v122;
            if (v92)
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&dword_261243000, v90, v91, "Batch entry deleted", v93, 2u);
              MEMORY[0x266701350](v93, -1, -1);
            }

            (*(v114 + 8))(v81, v132);
            v82 = v125;
          }

          v73(v85, 1, 1, v80);
          v73(v84, 1, 1, v80);
          v94 = v140;
          v95 = sub_261253720(v83, v137, v139, v85, v84);
          sub_26124C718(v84, &qword_27FE9F280, &unk_2613A42B0);
          sub_26124C718(v85, &qword_27FE9F280, &unk_2613A42B0);
          if (!v94)
          {
            *v82 = v95;
          }
        }

        else
        {
          v86 = v124;
          sub_26125A870(v113, v124, &qword_27FE9F560, &qword_2613A3CB0);
          if (v111(v86, 1, v132) == 1)
          {
            sub_26124C718(v86, &qword_27FE9F560, &qword_2613A3CB0);
            v87 = v127;
            v88 = v128;
            v89 = v126;
          }

          else
          {
            v96 = v120;
            sub_2613765A4(v79, v120, type metadata accessor for ValidationResponse);
            v97 = sub_2613A122C();
            v98 = sub_2613A1D8C();
            v99 = os_log_type_enabled(v97, v98);
            v88 = v128;
            if (v99)
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v141 = v101;
              *v100 = 136315138;
              sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v102 = sub_2613A23EC();
              v104 = v103;
              sub_261376698(v96, type metadata accessor for ValidationResponse);
              v105 = sub_26124C11C(v102, v104, &v141);

              *(v100 + 4) = v105;
              _os_log_impl(&dword_261243000, v97, v98, "Could not resolve batch: %s", v100, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v101);
              MEMORY[0x266701350](v101, -1, -1);
              MEMORY[0x266701350](v100, -1, -1);
            }

            else
            {

              sub_261376698(v96, type metadata accessor for ValidationResponse);
            }

            v89 = v126;
            (*(v114 + 8))(v86, v132);
            v87 = v127;
          }

          (*(v89 + 104))(v87, *MEMORY[0x277D438A0], v88);
          v106 = objc_allocWithZone(sub_26139FB2C());
          v107 = sub_26139FB3C();
          sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
          swift_allocError();
          *v108 = v107;
          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_26136B12C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[4] = swift_task_alloc();
  v3 = sub_2613A1EBC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136B224, 0, 0);
}

uint64_t sub_26136B224()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);

  v4 = sub_261360684();
  v0[8] = v4;
  if (v4)
  {
    v5 = v0[7];
    v6 = swift_allocObject();
    v0[9] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07F8, &qword_2613AD278);
    sub_2612529C0(v5);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_26136B628;
    v9 = v0[7];
    v10 = v0[2];

    return sub_261252A34(v10, v9, sub_261376B20, v6, v4, v7);
  }

  else
  {

    v12 = v0[2];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_26136B628()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26136B828, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26136B828()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_26129B934();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v1;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v9, v10, "Could not fetch batch validation information from DB: %@", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v0[4], v4);
  }

  v15 = v0[2];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26136BC30(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2613A18CC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26136BD04;

  return sub_26136729C(v5, v7);
}

uint64_t sub_26136BD04(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (*(v8 + 16))(v8, 0, v11);
  }

  else
  {
    (*(v8 + 16))(*(v4 + 24), a1, 0);
  }

  _Block_release(*(v5 + 24));
  v12 = *(v7 + 8);

  return v12();
}

void *sub_26136BF0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  result = sub_261253410(a1, a2, a3);
  if (!v4)
  {
    v24[1] = 0;
    v16 = v25;
    if (result)
    {
      v17 = result;
      v18 = [result batchId];
      if (v18)
      {
        v19 = v18;
        sub_26139F11C();

        (*(v9 + 32))(v14, v12, v8);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
        (*(v9 + 16))(v16, v14, v8);
        v21 = v17;
        v22 = [v17 partnerId];
        sub_26139F11C();

        (*(v9 + 8))(v14, v8);
        return (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
      }
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
    return (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  return result;
}

void sub_26136C180(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v84 = a6;
  v83 = a5;
  v86[1] = *MEMORY[0x277D85DE8];
  v10 = sub_26139F13C();
  v82 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  v22 = v85;
  v23 = sub_26136C854(a1, a2, a4);
  if (!v22)
  {
    v25 = v24;
    v80 = a3;
    v81 = a1;
    v76 = v12;
    v77 = v10;
    v78 = v19;
    v26 = a2;
    v85 = 0;
    v27 = v23;
    v28 = sub_26129B934();
    if (v27 != v25)
    {
      v34 = v16;
      sub_26125A870(v28, v16, &qword_27FE9F560, &qword_2613A3CB0);
      v35 = sub_2613A124C();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v16, 1, v35) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v53 = sub_2613A122C();
        v54 = sub_2613A1D9C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_261243000, v53, v54, "No lock is needed for the last SAF transaction", v55, 2u);
          MEMORY[0x266701350](v55, -1, -1);
        }

        (*(v36 + 8))(v34, v35);
      }

      v56 = v84;
LABEL_25:
      *v56 = v27;
      v56[1] = v25;
      return;
    }

    v75 = v25;
    v79 = v27;
    v29 = v28;
    sub_26125A870(v28, v21, &qword_27FE9F560, &qword_2613A3CB0);
    v30 = sub_2613A124C();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v21, 1, v30);
    v74 = v31;
    if (v33 == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D9C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = v38;
        v41 = v39;
        _os_log_impl(&dword_261243000, v37, v40, "Locking last SAF transaction to avoid decline", v39, 2u);
        MEMORY[0x266701350](v41, -1, -1);
      }

      (*(v31 + 8))(v21, v30);
    }

    v42 = *(v80 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v44 = *(v42 + 80);
    v43 = *(v42 + 88);

    v45 = v26;
    v46 = v44;
    v47 = v85;
    sub_2612545BC(v26, v46, v43, v79);
    v49 = v48;

    if (!v47)
    {
      if (v49)
      {
        v85 = 0;
        v50 = v30;
        v51 = v78;
        sub_26125A870(v29, v78, &qword_27FE9F560, &qword_2613A3CB0);
        v80 = v50;
        v52 = v32(v51, 1, v50);
        v81 = v49;
        if (v52 == 1)
        {
          sub_26124C718(v51, &qword_27FE9F560, &qword_2613A3CB0);
          v27 = v79;
        }

        else
        {
          v57 = v49;
          v58 = sub_2613A122C();
          v59 = sub_2613A1D9C();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v86[0] = v61;
            *v60 = 136315138;
            v62 = [v57 transactionId];
            v63 = v76;
            sub_26139F11C();

            v64 = sub_26139F0DC();
            v66 = v65;
            (*(v82 + 8))(v63, v77);
            v67 = sub_26124C11C(v64, v66, v86);

            *(v60 + 4) = v67;
            _os_log_impl(&dword_261243000, v58, v59, "Adding batchID to last transaction: %s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v61);
            v51 = v78;
            MEMORY[0x266701350](v61, -1, -1);
            v68 = v60;
            v45 = v26;
            MEMORY[0x266701350](v68, -1, -1);
          }

          v27 = v79;
          (*(v74 + 8))(v51, v80);
        }

        v69 = sub_26139F10C();
        v70 = v81;
        [v81 setBatchId_];

        v86[0] = 0;
        if (![v45 save_])
        {
          v72 = v70;
          v73 = v86[0];
          sub_26139EE7C();

          swift_willThrow();
          return;
        }

        v71 = v86[0];

        v56 = v84;
      }

      else
      {
        v56 = v84;
        v27 = v79;
      }

      v25 = v75;
      goto LABEL_25;
    }
  }
}

uint64_t sub_26136C854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v56 = a2;
  v57 = a1;
  v4 = sub_26139FB0C();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v46 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v47 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v20 = *(v19 + 80);
  v21 = *(v19 + 88);

  v51 = sub_26129B934();
  sub_26125A870(v51, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v54 = *(v22 - 8);
  v55 = v22;
  v50 = *(v54 + 48);
  if (v50(v18, 1) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v46 = v4;
      v26 = v25;
      *v25 = 0;
      _os_log_impl(&dword_261243000, v23, v24, "Counting SAF transactions", v25, 2u);
      v27 = v26;
      v4 = v46;
      MEMORY[0x266701350](v27, -1, -1);
    }

    (*(v54 + 8))(v18, v55);
  }

  v28 = sub_26139F13C();
  v29 = *(*(v28 - 8) + 56);
  v29(v11, 1, 1, v28);
  v29(v9, 1, 1, v28);
  v30 = v58;
  v31 = sub_261253720(v56, v20, v21, v11, v9);

  sub_26124C718(v9, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
  if (!v30)
  {
    if (v31 < 1)
    {
      v34 = v48;
      sub_26125A870(v51, v48, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v50)(v34, 1, v55) == 1)
      {
        sub_26124C718(v34, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v36 = sub_2613A122C();
        v37 = sub_2613A1D8C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_261243000, v36, v37, "No SAF transaction was found to generate the batch", v38, 2u);
          MEMORY[0x266701350](v38, -1, -1);
        }

        (*(v54 + 8))(v34, v55);
      }

      v39 = MEMORY[0x277D438A8];
    }

    else
    {
      v33 = v49;
      if ((v49 & 0x8000000000000000) == 0 && v31 >= v49)
      {
        if (v49)
        {
          return v49;
        }

        else
        {
          return v31;
        }
      }

      v35 = v47;
      sub_26125A870(v51, v47, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v50)(v35, 1, v55) == 1)
      {
        sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v40 = sub_2613A122C();
        v41 = sub_2613A1D8C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134218240;
          *(v42 + 4) = v33;
          *(v42 + 12) = 2048;
          *(v42 + 14) = v31;
          _os_log_impl(&dword_261243000, v40, v41, "Requesting an invalid batch size [requested: %ld available: %ld]", v42, 0x16u);
          MEMORY[0x266701350](v42, -1, -1);
        }

        (*(v54 + 8))(v35, v55);
      }

      v39 = MEMORY[0x277D438B0];
    }

    (*(v52 + 104))(v53, *v39, v4);
    v43 = objc_allocWithZone(sub_26139FB2C());
    v44 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
    swift_allocError();
    *v45 = v44;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26136CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_26139FB0C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136CFE8, 0, 0);
}

uint64_t sub_26136CFE8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = (*(v0 + 144) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 112))(v4, v3, v2, v1, v6, v7);
  v8 = *(v0 + 104);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 64);
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  *v8 = v9;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26136D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2613A1EBC();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136D42C, 0, 0);
}

uint64_t sub_26136D42C()
{
  v1 = v0[15];
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[16] = v3;
  v4 = *(v3 - 8);
  v0[17] = v4;
  v5 = *(v4 + 48);
  v0[18] = v5;
  v0[19] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking if resign is needed", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[15];

    (*(v4 + 8))(v9, v3);
  }

  v10 = sub_26139F00C();
  v12 = v11;
  v0[20] = v10;
  v0[21] = v11;
  v0[22] = 0;
  v13 = v0[11];
  v15 = v0[4];
  v14 = v0[5];
  v16 = swift_allocObject();
  v0[23] = v16;
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v10;
  v16[5] = v12;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0838, &qword_2613AD410);
  sub_2612529C0(v13);
  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = sub_26136D6AC;
  v19 = v0[11];
  v20 = v0[3];

  return sub_261252A34((v0 + 2), v19, sub_261376FB8, v16, v20, v17);
}

uint64_t sub_26136D6AC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {

    v3 = sub_26136E454;
  }

  else
  {
    v3 = sub_26136D828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26136D828()
{
  v1 = v0[2];
  v0[26] = v1;
  if (*(v1 + 16))
  {
    if (!v0[22])
    {
      v2 = v0[18];
      v3 = v0[16];
      v4 = v0[14];
      v5 = sub_26129B8EC();
      sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
      if (v2(v4, 1, v3) == 1)
      {
        sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v12 = sub_2613A122C();
        v13 = sub_2613A1D9C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_261243000, v12, v13, "There are transactions that need to be signed with latest key", v14, 2u);
          MEMORY[0x266701350](v14, -1, -1);
        }

        v15 = v0[16];
        v16 = v0[17];
        v17 = v0[14];

        (*(v16 + 8))(v17, v15);
      }
    }

    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_26136DCE0;
    v19 = v0[3];

    return sub_26136F88C(v19, v1);
  }

  else
  {

    v6 = v0[22];

    v7 = sub_26129B8EC();
    v8 = v0[18];
    v9 = v0[16];
    if (v6 < 1)
    {
      v11 = v0[12];
      sub_26125A870(v7, v11, &qword_27FE9F560, &qword_2613A3CB0);
      if (v8(v11, 1, v9) == 1)
      {
        sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v31 = sub_2613A122C();
        v32 = sub_2613A1D9C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_261243000, v31, v32, "All transactions are signed with latest key", v33, 2u);
          MEMORY[0x266701350](v33, -1, -1);
        }

        v34 = v0[16];
        v35 = v0[17];
        v36 = v0[12];

        (*(v35 + 8))(v36, v34);
      }

      v37 = v0[1];

      return v37();
    }

    else
    {
      v10 = v0[13];
      sub_26125A870(v7, v10, &qword_27FE9F560, &qword_2613A3CB0);
      if (v8(v10, 1, v9) == 1)
      {
        sub_26124C718(v0[13], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v21 = sub_2613A122C();
        v22 = sub_2613A1D9C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          *(v23 + 4) = v6;
          _os_log_impl(&dword_261243000, v21, v22, "Transactions resigned: [%ld]", v23, 0xCu);
          MEMORY[0x266701350](v23, -1, -1);
        }

        v24 = v0[16];
        v25 = v0[17];
        v26 = v0[13];

        (*(v25 + 8))(v26, v24);
      }

      v27 = v0[8];
      type metadata accessor for SafMonitorEventDispatcher();
      v28 = *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v29 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v30 = swift_task_alloc();
      v0[28] = v30;
      *v30 = v0;
      v30[1] = sub_26136E2C0;

      return sub_26129FC78(v28, v27 + v29, v6);
    }
  }
}

uint64_t sub_26136DCE0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26136DE6C, 0, 0);
  }
}

uint64_t sub_26136DE6C()
{
  v1 = v0[22];
  v2 = *(v0[26] + 16);

  v4 = __OFADD__(v1, v2);
  v5 = v1 + v2;
  if (v4)
  {
    __break(1u);
  }

  else if (v2 >= sub_2613A0D6C())
  {
    v0[22] = v5;
    v11 = v0[20];
    v10 = v0[21];
    v12 = v0[11];
    v14 = v0[4];
    v13 = v0[5];
    v15 = swift_allocObject();
    v0[23] = v15;
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = v11;
    v15[5] = v10;

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0838, &qword_2613AD410);
    sub_2612529C0(v12);
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_26136D6AC;
    v18 = v0[11];
    v19 = v0[3];

    return sub_261252A34((v0 + 2), v18, sub_261376FB8, v15, v19, v16);
  }

  else
  {

    v6 = sub_26129B8EC();
    v7 = v0[18];
    v8 = v0[16];
    if (v5 < 1)
    {
      v20 = v0[12];
      sub_26125A870(v6, v20, &qword_27FE9F560, &qword_2613A3CB0);
      if (v7(v20, 1, v8) == 1)
      {
        sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v31 = sub_2613A122C();
        v32 = sub_2613A1D9C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_261243000, v31, v32, "All transactions are signed with latest key", v33, 2u);
          MEMORY[0x266701350](v33, -1, -1);
        }

        v34 = v0[16];
        v35 = v0[17];
        v36 = v0[12];

        (*(v35 + 8))(v36, v34);
      }

      v37 = v0[1];

      return v37();
    }

    else
    {
      v9 = v0[13];
      sub_26125A870(v6, v9, &qword_27FE9F560, &qword_2613A3CB0);
      if (v7(v9, 1, v8) == 1)
      {
        sub_26124C718(v0[13], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v21 = sub_2613A122C();
        v22 = sub_2613A1D9C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          *(v23 + 4) = v5;
          _os_log_impl(&dword_261243000, v21, v22, "Transactions resigned: [%ld]", v23, 0xCu);
          MEMORY[0x266701350](v23, -1, -1);
        }

        v24 = v0[16];
        v25 = v0[17];
        v26 = v0[13];

        (*(v25 + 8))(v26, v24);
      }

      v27 = v0[8];
      type metadata accessor for SafMonitorEventDispatcher();
      v28 = *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v29 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v30 = swift_task_alloc();
      v0[28] = v30;
      *v30 = v0;
      v30[1] = sub_26136E2C0;

      return sub_26129FC78(v28, v27 + v29, v5);
    }
  }

  return result;
}

uint64_t sub_26136E2C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26136E454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26136E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_2613A1EBC();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_26139F13C();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v6[20] = *(v9 + 64);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136E678, 0, 0);
}

uint64_t sub_26136E678()
{
  v1 = v0[25];
  v2 = sub_26129B934();
  v0[26] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v5 = *(v4 + 48);
  v0[29] = v5;
  v0[30] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[25];
  if (v6 == 1)
  {
    sub_26124C718(v0[25], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v40 = v0[13];
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v40, 0xD000000000000061, 0x80000002613BD950, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v11 = v0[24];
  v12 = v0[12];
  v13 = swift_allocObject();
  v0[31] = v13;
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  v15 = swift_allocObject();
  v0[32] = v15;
  *(v15 + 16) = v12;
  sub_26125A870(v2, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v5(v11, 1, v3) == 1)
  {
    sub_26124C718(v0[24], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v4;
      v19 = v0[10];
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v19;
      v4 = v18;
      _os_log_impl(&dword_261243000, v16, v17, "Transactions to load: %ld", v20, 0xCu);
      MEMORY[0x266701350](v20, -1, -1);
    }

    v21 = v0[24];

    (*(v4 + 8))(v21, v3);
  }

  v22 = v0[10];
  swift_beginAccess();
  swift_beginAccess();
  if (*v14 >= v22)
  {

    v39 = v0[1];

    return v39();
  }

  else
  {
    v23 = v0[19];
    v24 = *(v23 + 16);
    v0[33] = v24;
    v26 = v0[31];
    v25 = v0[32];
    v27 = v0[21];
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[13];
    v24(v27, v0[11], v28);
    v31 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v32 = swift_allocObject();
    v0[34] = v32;
    *(v32 + 2) = v30;
    *(v32 + 3) = v25;
    *(v32 + 4) = v26;
    (*(v23 + 32))(&v32[v31], v27, v28);
    v33 = v30;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0820, &qword_2613AD3E8);
    sub_2612529C0(v29);
    v35 = swift_task_alloc();
    v0[35] = v35;
    *v35 = v0;
    v35[1] = sub_26136EB48;
    v36 = v0[17];
    v37 = v0[9];

    return sub_261252A34((v0 + 8), v36, sub_261376EE8, v32, v37, v34);
  }
}

uint64_t sub_26136EB48()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_26136EF30;
  }

  else
  {
    v3 = sub_26136ECCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26136ECCC()
{
  v1 = v0[8];
  v0[37] = v1;
  if (v1 >> 62)
  {
    if (sub_2613A221C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_26136EFE8;
    v3 = v0[14];

    return sub_261363C5C(v1, v3);
  }

  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[23];

  sub_26125A870(v7, v8, &qword_27FE9F560, &qword_2613A3CB0);
  if (v5(v8, 1, v6) == 1)
  {
    sub_26124C718(v0[23], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Less SAF transactions than expected", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = v0[27];
    v13 = v0[28];
    v14 = v0[23];

    (*(v13 + 8))(v14, v12);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_26136EF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26136EFE8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_26136F4C4;
  }

  else
  {
    v2 = sub_26136F0FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26136F0FC()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    v2 = sub_2613A221C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 248);

  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 176);
  *(*(v0 + 248) + 16) = v7;
  sub_26125A870(v9, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v8(v11, 1, v10) == 1)
  {
    result = sub_26124C718(*(v0 + 176), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v12 = sub_2613A122C();
    v13 = sub_2613A1D7C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 248);
    if (v14)
    {
      v16 = *(v0 + 80);
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = *(v15 + 16);

      *(v17 + 12) = 2048;
      *(v17 + 14) = v16;
      _os_log_impl(&dword_261243000, v12, v13, "Streamed: %ld from: %ld transactions", v17, 0x16u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    else
    {
    }

    result = (*(*(v0 + 224) + 8))(*(v0 + 176), *(v0 + 216));
  }

  v18 = *(v0 + 80);
  v19 = *(*(v0 + 248) + 16);
  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    goto LABEL_22;
  }

  if (v20 >= *(v0 + 96))
  {
    v20 = *(v0 + 96);
  }

  *(*(v0 + 256) + 16) = v20;
  if (v19 >= v18)
  {

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 248);
    v23 = *(v0 + 168);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 136);
    v27 = *(v0 + 104);
    (*(v0 + 264))(v23, *(v0 + 88), v24);
    v28 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v29 = swift_allocObject();
    *(v0 + 272) = v29;
    *(v29 + 2) = v27;
    *(v29 + 3) = v21;
    *(v29 + 4) = v22;
    (*(v25 + 32))(&v29[v28], v23, v24);
    v30 = v27;

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0820, &qword_2613AD3E8);
    sub_2612529C0(v26);
    v32 = swift_task_alloc();
    *(v0 + 280) = v32;
    *v32 = v0;
    v32[1] = sub_26136EB48;
    v33 = *(v0 + 136);
    v34 = *(v0 + 72);

    return sub_261252A34(v0 + 64, v33, sub_261376EE8, v29, v34, v31);
  }
}

uint64_t sub_26136F4C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26136F588(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v44 = a5;
  v42 = a6;
  v10 = type metadata accessor for SignableTransaction(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x266700BB0](v12);
  v16 = sub_2613A0D6C();
  v17 = v45;
  v18 = sub_261255800(a1, a2, a3, a4, v44, v16);
  if (v17)
  {
    objc_autoreleasePoolPop(v15);
    return;
  }

  v41 = v15;
  v45 = v10;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v41;
    v20 = v42;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_15:

    v24 = MEMORY[0x277D84F90];
LABEL_16:
    objc_autoreleasePoolPop(v21);
    *v20 = v24;
    return;
  }

  v39 = v18;
  v19 = sub_2613A221C();
  v18 = v39;
  v21 = v41;
  v20 = v42;
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_5:
  v22 = v18;
  v40 = 0;
  v46 = MEMORY[0x277D84F90];
  sub_2613720CC(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v46;
    v25 = v22;
    v43 = v22 & 0xC000000000000001;
    v44 = v22;
    do
    {
      if (v43)
      {
        v26 = MEMORY[0x2667005C0](v23, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 cardReaderBlob];
      v29 = sub_26139F01C();
      v31 = v30;

      *v14 = v29;
      v14[1] = v31;
      v32 = [v27 generalCardData];
      v33 = sub_26139F01C();
      v35 = v34;

      v14[2] = v33;
      v14[3] = v35;
      v36 = [v27 transactionId];
      sub_26139F11C();

      v46 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2613720CC((v37 > 1), v38 + 1, 1);
        v24 = v46;
      }

      ++v23;
      *(v24 + 16) = v38 + 1;
      sub_261377120(v14, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v38, type metadata accessor for SignableTransaction);
      v25 = v44;
    }

    while (v19 != v23);

    v21 = v41;
    v20 = v42;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_26136F88C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_26139FB0C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_26139F13C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for SignableTransaction(0);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136FA64, 0, 0);
}

unint64_t sub_26136FA64()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 + 16);
  if (v3)
  {
    v62 = &v2[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter];
    v4 = v0[19];
    v60 = v0[20];
    v61 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext;
    v59 = v0[18];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v56 = v0[13];
    v57 = *(v4 + 72);
    v64 = (v56 + 16);
    v6 = MEMORY[0x277D84F98];
    v58 = v0[8];
    while (1)
    {
      v66 = v3;
      v70 = v6;
      v12 = v0[20];
      v13 = v0[14];
      v14 = v0[12];
      v65 = v5;
      sub_2613765A4(v5, v12, type metadata accessor for SignableTransaction);
      v15 = *(v59 + 24);
      v63 = *v64;
      (*v64)(v13, &v12[v15], v14);
      v17 = *(v62 + 3);
      v16 = *(v62 + 4);
      __swift_project_boxed_opaque_existential_1(v62, v17);
      v69 = *v12;
      v67 = v60[2];
      v68 = v60[1];
      v18 = *&v2[v61];
      v19 = v60[3];
      v21 = *(v18 + 64);
      v20 = *(v18 + 72);
      v22 = *(v16 + 104);

      v23 = v22(v69, v68, v67, v19, &v12[v15], v21, v20, v17, v16);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = v0;
      v31 = v0[14];

      v6 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_26128A6E4(v31);
      v35 = v70[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v39 = v34;
      v0 = v30;
      if (v70[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = result;
          sub_2613726C8();
          result = v48;
          v6 = v70;
        }
      }

      else
      {
        v40 = v30[14];
        sub_2613722C4(v38, isUniquelyReferenced_nonNull_native);
        v6 = v70;
        result = sub_26128A6E4(v40);
        if ((v39 & 1) != (v41 & 1))
        {

          return sub_2613A249C();
        }
      }

      v42 = v0[14];
      v43 = v0[12];
      if (v39)
      {
        v7 = (v6[7] + 32 * result);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7[2];
        v11 = v7[3];
        *v7 = v23;
        v7[1] = v25;
        v7[2] = v27;
        v7[3] = v29;
        sub_26124C6C4(v8, v9);
        sub_26124C6C4(v10, v11);
        (*(v56 + 8))(v42, v43);
      }

      else
      {
        v6[(result >> 6) + 8] |= 1 << result;
        v44 = result;
        v63(v6[6] + *(v56 + 72) * result, v42, v43);
        v45 = (v6[7] + 32 * v44);
        *v45 = v23;
        v45[1] = v25;
        v45[2] = v27;
        v45[3] = v29;
        result = (*(v56 + 8))(v42, v43);
        v46 = v6[2];
        v37 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v6[2] = v47;
      }

      sub_261376698(v0[20], type metadata accessor for SignableTransaction);
      v2 = v58;
      v5 = v65 + v57;
      v3 = v66 - 1;
      if (v66 == 1)
      {
        v2 = v0[8];
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x277D84F98];
LABEL_16:
  v49 = v0[17];
  v50 = swift_allocObject();
  v0[21] = v50;
  *(v50 + 16) = v2;
  *(v50 + 24) = v6;
  v51 = v2;
  v52 = MEMORY[0x277D84F78];
  sub_2612529C0(v49);
  v53 = swift_task_alloc();
  v0[22] = v53;
  *v53 = v0;
  v53[1] = sub_261370058;
  v54 = v0[17];
  v55 = v0[6];

  return sub_261252A34(v53, v54, sub_261377048, v50, v55, v52 + 8);
}

uint64_t sub_261370058()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_26137026C;
  }

  else
  {
    v3 = sub_2613701DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2613701DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26137026C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613702FC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v86[5] = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = v69 - v13;
  v85 = sub_26139F13C();
  v83 = *(v85 - 8);
  v14 = MEMORY[0x28223BE20](v85);
  v73 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = v69 - v16;
  v17 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v18 = *(v17 + 80);
  v19 = *(v17 + 88);
  v20 = *(a4 + 16);
  v78 = a4;
  if (v20)
  {
    v80 = v18;
    v81 = a1;
    v82 = v7;
    v71 = a2;
    v72 = a5;
    v21 = sub_261371FD0(v20, 0);
    v22 = sub_261372970(v86, &v21[(*(v83 + 80) + 32) & ~*(v83 + 80)], v20, a4);
    v24 = v86[0];
    v23 = v86[1];
    a2 = v86[2];
    a5 = v86[3];
    v25 = v86[4];

    sub_2612BF078(v24);
    if (v22 != v20)
    {
      __break(1u);
      goto LABEL_26;
    }

    a2 = v71;
    a5 = v72;
    a4 = v78;
    v7 = v82;
    v18 = v80;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v26 = v18;
  v27 = v7;
  v23 = sub_26125431C(a2, v26, v19, v21);
  v25 = v27;

  v20 = v84;
  if (v27)
  {
LABEL_6:
    *a5 = v25;
    return result;
  }

  if (v23 >> 62)
  {
LABEL_26:
    v30 = sub_2613A221C();
    v31 = v79;
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_27:

    goto LABEL_28;
  }

  v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v79;
  if (!v30)
  {
    goto LABEL_27;
  }

LABEL_9:
  v82 = v23;
  v69[1] = v25;
  v71 = a2;
  v72 = a5;
  if (v30 < 1)
  {
    __break(1u);
  }

  v32 = 0;
  v80 = v82 & 0xC000000000000001;
  v83 += 8;
  v33 = &qword_27FE9F560;
  *&v29 = 136315138;
  v70 = v29;
  v81 = v30;
  do
  {
    if (v80)
    {
      v34 = MEMORY[0x2667005C0](v32, v82);
    }

    else
    {
      v34 = *(v82 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = [v34 transactionId];
    sub_26139F11C();

    if (*(a4 + 16) && (v37 = sub_26128A6E4(v20), (v38 & 1) != 0))
    {
      v39 = (*(a4 + 56) + 32 * v37);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = v39[3];
      sub_26124C778(*v39, v41);
      sub_26124C778(v42, v43);
      (*v83)(v20, v85);
      v44 = sub_26139EFFC();
      [v35 setSignature_];

      sub_26139F00C();
      v45 = sub_2613A189C();

      [v35 setKeyId_];

      v46 = v40;
      v31 = v79;
      v47 = v41;
      v33 = &qword_27FE9F560;
      sub_26124C6C4(v46, v47);
      sub_26124C6C4(v42, v43);
    }

    else
    {
      v48 = *v83;
      (*v83)(v20, v85);
      v49 = sub_26129B934();
      sub_26125A870(v49, v31, v33, &qword_2613A3CB0);
      v50 = sub_2613A124C();
      v51 = v33;
      v52 = *(v50 - 8);
      if ((*(v52 + 48))(v31, 1, v50) == 1)
      {

        sub_26124C718(v31, v51, &qword_2613A3CB0);
        v33 = v51;
      }

      else
      {
        v53 = v35;
        v54 = sub_2613A122C();
        v55 = sub_2613A1D8C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v75 = v56;
          v76 = swift_slowAlloc();
          v86[0] = v76;
          *v56 = v70;
          v57 = [v53 transactionId];
          v74 = v55;
          v58 = v57;
          v77 = v53;
          v59 = v73;
          sub_26139F11C();

          sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v60 = v85;
          v61 = sub_2613A23EC();
          v63 = v62;
          v48(v59, v60);
          v64 = sub_26124C11C(v61, v63, v86);
          a4 = v78;

          v65 = v75;
          *(v75 + 1) = v64;
          v66 = v65;
          _os_log_impl(&dword_261243000, v54, v74, "Could not find transaction: %s to add new signature", v65, 0xCu);
          v67 = v76;
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x266701350](v67, -1, -1);
          v31 = v79;
          MEMORY[0x266701350](v66, -1, -1);
        }

        else
        {
        }

        (*(v52 + 8))(v31, v50);
        v33 = &qword_27FE9F560;
      }
    }

    ++v32;
    v20 = v84;
  }

  while (v81 != v32);

  a2 = v71;
  a5 = v72;
LABEL_28:
  result = [a2 hasChanges];
  if (result)
  {
    v86[0] = 0;
    if (![a2 save_])
    {
      v68 = v86[0];
      v25 = sub_26139EE7C();

      result = swift_willThrow();
      goto LABEL_6;
    }

    return v86[0];
  }

  return result;
}

void sub_261370A5C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v38 = a6;
  v39 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v40 = MEMORY[0x266700BB0](v12);
  v15 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v16 = *(v15 + 80);
  v17 = *(v15 + 88);
  v18 = sub_26139F13C();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  swift_beginAccess();
  v19 = *(a3 + 16);
  swift_beginAccess();
  v20 = *(a4 + 16);

  v21 = sub_261253D6C();
  v22 = a1;
  v23 = sub_261253D74(a1, v16, v17, v14, v19, v20, v21 & 1);
  if (v6)
  {
    sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);
    v24 = v40;

    [a1 reset];
    objc_autoreleasePoolPop(v24);
    return;
  }

  v25 = v23;
  v26 = v39;
  sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);

  if (v25 >> 62)
  {
    v29 = sub_2613A221C();
    v27 = v26;
    if (v29)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v27 = v26;
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v28 = v22;
      sub_261255D18(v22, v27, v25);
      goto LABEL_8;
    }
  }

  v28 = v22;
LABEL_8:
  if (!(v25 >> 62))
  {
    v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_10;
    }

LABEL_16:

    v33 = MEMORY[0x277D84F90];
LABEL_20:
    v36 = v38;
    [v28 reset];
    objc_autoreleasePoolPop(v40);
    *v36 = v33;
    return;
  }

  v30 = sub_2613A221C();
  if (!v30)
  {
    goto LABEL_16;
  }

LABEL_10:
  v41 = MEMORY[0x277D84F90];
  sub_2613A219C();
  if ((v30 & 0x8000000000000000) == 0)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      do
      {
        v32 = v31 + 1;
        MEMORY[0x2667005C0]();
        sub_2612526DC();
        swift_unknownObjectRelease();
        sub_2613A217C();
        sub_2613A21AC();
        sub_2613A21BC();
        sub_2613A218C();
        v31 = v32;
      }

      while (v30 != v32);
    }

    else
    {
      v34 = 32;
      do
      {
        v35 = *(v25 + v34);
        sub_2612526DC();

        sub_2613A217C();
        sub_2613A21AC();
        sub_2613A21BC();
        sub_2613A218C();
        v34 += 8;
        --v30;
      }

      while (v30);
    }

    v33 = v41;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_261370DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a1;
  v90 = a4;
  v6 = sub_26139FB0C();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_26139F13C();
  v16 = MEMORY[0x28223BE20](v15);
  v89 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v84 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v84 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v84 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v84 - v28;
  v30 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v31 = *(v30 + 80);
  v32 = *(v30 + 88);
  v95 = v33;
  (*(v33 + 56))(v14, 1, 1, v15);

  v94 = a2;
  v34 = v97;
  v35 = sub_261257344(a2, v31, v32, v14);
  sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);

  if (!v34)
  {
    v84 = v24;
    v85 = 0;
    v37 = v96;
    v97 = v29;
    if (v35)
    {
      v38 = v15;
      v39 = [v35 batchId];

      sub_26139F11C();
      v40 = v95;
      v41 = *(v95 + 32);
      v42 = v97;
      v41(v97, v27, v38);
      v43 = *(v30 + 80);
      v44 = *(v30 + 88);

      v45 = v43;
      v46 = v85;
      v47 = sub_261253210(v94, v45, v44);
      if (v46)
      {
        (*(v40 + 8))(v42, v38);
      }

      else
      {
        v51 = v47;

        if (v51)
        {
          v52 = [v51 partnerId];

          v53 = v87;
          sub_26139F11C();

          v54 = v84;
          v41(v84, v53, v38);
          v55 = v95;
          v56 = *(v95 + 16);
          v57 = v88;
          v58 = v97;
          v56(v88, v97, v38);
          v59 = v89;
          v56(v89, v54, v38);
          sub_26129D54C(v57, v59, v90);
          v60 = *(v55 + 8);
          v60(v54, v38);
          return (v60)(v58, v38);
        }

        else
        {
          v67 = v38;
          v68 = sub_26129B934();
          v69 = v86;
          sub_26125A870(v68, v86, &qword_27FE9F560, &qword_2613A3CB0);
          v70 = sub_2613A124C();
          v71 = *(v70 - 8);
          if ((*(v71 + 48))(v69, 1, v70) == 1)
          {
            sub_26124C718(v69, &qword_27FE9F560, &qword_2613A3CB0);
            v73 = v91;
            v72 = v92;
            v74 = v93;
            v75 = v95;
          }

          else
          {
            v76 = sub_2613A122C();
            v77 = sub_2613A1D8C();
            v78 = os_log_type_enabled(v76, v77);
            v75 = v95;
            if (v78)
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&dword_261243000, v76, v77, "Batch is empty", v79, 2u);
              MEMORY[0x266701350](v79, -1, -1);
            }

            (*(v71 + 8))(v69, v70);
            v73 = v91;
            v72 = v92;
            v74 = v93;
          }

          v80 = v97;
          (*(v72 + 104))(v73, *MEMORY[0x277D438A0], v74);
          v81 = objc_allocWithZone(sub_26139FB2C());
          v82 = sub_26139FB3C();
          sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
          swift_allocError();
          *v83 = v82;
          swift_willThrow();
          return (*(v75 + 8))(v80, v67);
        }
      }
    }

    else
    {
      v48 = sub_26129B934();
      sub_26125A870(v48, v37, &qword_27FE9F560, &qword_2613A3CB0);
      v49 = sub_2613A124C();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v37, 1, v49) == 1)
      {
        sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v61 = sub_2613A122C();
        v62 = sub_2613A1D8C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_261243000, v61, v62, "No batch found", v63, 2u);
          MEMORY[0x266701350](v63, -1, -1);
        }

        (*(v50 + 8))(v37, v49);
      }

      (*(v92 + 104))(v91, *MEMORY[0x277D438A0], v93);
      v64 = objc_allocWithZone(sub_26139FB2C());
      v65 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0], MEMORY[0x277D438E8]);
      swift_allocError();
      *v66 = v65;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261371684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2613A256C();
  sub_2613A19DC();
  v6 = sub_2613A25CC();
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
    if (v11 || (sub_2613A241C() & 1) != 0)
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

uint64_t sub_26137177C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v12 = *(v11 + 80);
  v13 = *(v11 + 88);
  v14 = sub_26139F13C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a4, v14);
  (*(v15 + 56))(v10, 0, 1, v14);

  sub_261257484(a2, v12, v13, v10, a1);
  sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0);
}

void sub_2613718EC(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v73 = a1;
  v69 = a6;
  v72 = a5;
  v76[6] = *MEMORY[0x277D85DE8];
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v70 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = (v64 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v64 - v16;
  v75 = MEMORY[0x266700BB0](v15);
  v18 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v20 = *(v18 + 80);
  v19 = *(v18 + 88);
  v21 = v10 + 16;
  v22 = *(v10 + 16);
  v67 = a4;
  v22(v17, a4, v9);
  v68 = v10;
  (*(v10 + 56))(v17, 0, 1, v9);

  v23 = sub_2613A0D6C();
  v24 = sub_261253D64();
  v25 = a2;
  v26 = v74;
  v27 = sub_261253D74(a2, v20, v19, v17, v23, v24, 0);
  v28 = v26;
  if (!v26)
  {
    v30 = v27;
    v31 = v72;
    v65 = v22;
    v66 = v21;
    v73 = v25;
    v74 = v9;
    sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);

    if (v30 >> 62)
    {
LABEL_30:
      v32 = sub_2613A221C();
      v33 = v75;
      if (v32)
      {
LABEL_5:
        v64[1] = v28;
        v34 = 0;
        v28 = &off_279AD5000;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x2667005C0](v34, v30);
          }

          else
          {
            if (v34 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v35 = *(v30 + 8 * v34 + 32);
          }

          v31 = v35;
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          [v35 setBatchId_];

          ++v34;
        }

        while (v36 != v32);
        if (v30 >> 62)
        {
          v37 = sub_2613A221C();
        }

        else
        {
          v37 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v74;
        v39 = v75;
        v41 = v70;
        v40 = v71;
        v43 = v68;
        v42 = v69;
        v44 = v73;

        swift_beginAccess();
        v45 = *(v42 + 16);
        v46 = __OFADD__(v45, v37);
        v47 = v45 + v37;
        if (v46)
        {
          __break(1u);
        }

        *(v42 + 16) = v47;
        if ([v44 hasChanges])
        {
          v76[0] = 0;
          if (![v44 save:v76])
          {
            v62 = v76[0];
            sub_26139EE7C();

            swift_willThrow();
            v29 = v39;
            goto LABEL_33;
          }

          v48 = v76[0];
        }

        v74 = v37;
        [v44 reset];
        v49 = sub_26129B934();
        sub_26125A870(v49, v40, &qword_27FE9F560, &qword_2613A3CB0);
        v50 = sub_2613A124C();
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v40, 1, v50) == 1)
        {
          sub_26124C718(v40, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v65(v41, v67, v38);

          v52 = sub_2613A122C();
          v53 = sub_2613A1D9C();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v73 = v52;
            v55 = v54;
            v71 = swift_slowAlloc();
            v76[0] = v71;
            *v55 = 134218242;
            swift_beginAccess();
            *(v55 + 4) = *(v42 + 16);

            *(v55 + 12) = 2080;
            sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            LODWORD(v70) = v53;
            v56 = sub_2613A23EC();
            v58 = v57;
            (*(v43 + 8))(v41, v38);
            v59 = sub_26124C11C(v56, v58, v76);

            *(v55 + 14) = v59;
            v60 = v73;
            _os_log_impl(&dword_261243000, v73, v70, "Removed %ld transactions from batch %s", v55, 0x16u);
            v61 = v71;
            __swift_destroy_boxed_opaque_existential_0Tm(v71);
            MEMORY[0x266701350](v61, -1, -1);
            MEMORY[0x266701350](v55, -1, -1);
          }

          else
          {

            (*(v43 + 8))(v41, v38);
          }

          (*(v51 + 8))(v40, v50);
        }

        v63 = v74 >= sub_2613A0D6C();
        v31 = v72;
        swift_beginAccess();
        v33 = v75;
        goto LABEL_32;
      }
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v75;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    v63 = 0;
LABEL_32:
    v31[16] = v63;
    v29 = v33;
    goto LABEL_33;
  }

  sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);

  v29 = v75;
LABEL_33:
  objc_autoreleasePoolPop(v29);
}

void *sub_261371FD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F310, qword_2613A44C0);
  v4 = *(sub_26139F13C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2613720CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2613720EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2613720EC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0848, &unk_2613AD430);
  v10 = *(type metadata accessor for SignableTransaction(0) - 8);
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
  v15 = *(type metadata accessor for SignableTransaction(0) - 8);
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

uint64_t sub_2613722C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0840, &qword_2613AD428);
  v44 = v4;
  result = sub_2613A223C();
  v11 = result;
  if (*(v9 + 16))
  {
    v48 = v8;
    v49 = v5;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    v43 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v47 = *(v6 + 72);
      v27 = v26 + v47 * v25;
      if (v44)
      {
        (*v45)(v48, v27, v49);
        v28 = (*(v9 + 56) + 32 * v25);
        v29 = *v28;
        v50 = v28[1];
        v46 = v29;
      }

      else
      {
        (*v41)(v48, v27, v49);
        v30 = (*(v9 + 56) + 32 * v25);
        v31 = *v30;
        v50 = v30[1];
        v46 = v31;
        sub_26124C778(v31, *(&v31 + 1));
        sub_26124C778(v50, *(&v50 + 1));
      }

      sub_2613770D8(&qword_281451E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2613A182C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v6 = v42;
        v9 = v43;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v6 = v42;
      v9 = v43;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v47 * v19, v48, v49);
      v20 = (*(v11 + 56) + 32 * v19);
      v21 = v50;
      *v20 = v46;
      v20[1] = v21;
      ++*(v11 + 16);
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_2613726C8()
{
  v1 = v0;
  v36 = sub_26139F13C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0840, &qword_2613AD428);
  v3 = *v0;
  v4 = sub_2613A222C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v37 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v38;
        v20 = *(v38 + 72) * v18;
        v21 = v35;
        v22 = v36;
        (*(v38 + 16))(v35, *(v3 + 48) + v20, v36);
        v18 *= 32;
        v23 = (*(v3 + 56) + v18);
        v24 = v37;
        v25 = *(v37 + 48);
        v26 = *(v19 + 32);
        v27 = v23[1];
        v39 = *v23;
        v41 = v27;
        v26(v25 + v20, v21, v22);
        v28 = (*(v24 + 56) + v18);
        v29 = v41;
        v30 = v39;
        *v28 = v39;
        v28[1] = v29;
        sub_26124C778(v30, *(&v30 + 1));
        result = sub_26124C778(v41, *(&v41 + 1));
        v13 = v40;
      }

      while (v40);
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

        v1 = v32;
        v5 = v37;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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

uint64_t sub_261372970(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26139F13C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_261372C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  if (a6)
  {

    v17 = sub_26128F68C(a7 & 1);
    type metadata accessor for PaymentTerminalContext(0);

    return sub_2613091D8(a1, a2, a3, a4, a5, a6, v17 & 0xFFFFFF);
  }

  else
  {
    v19 = sub_26129B934();
    sub_26125A870(v19, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v22 = sub_2613A122C();
      v23 = sub_2613A1D8C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_261243000, v22, v23, "Could not fetch device id", v24, 2u);
        MEMORY[0x266701350](v24, -1, -1);
      }

      (*(v21 + 8))(v16, v20);
    }

    return 0;
  }
}