uint64_t sub_22C5850C8(uint64_t a1)
{
  v41 = v1;
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  *(v1 + 792) = v3;
  v38 = v2;
  *(v1 + 800) = v2;
  sub_22C90364C();
  v4 = sub_22C90635C();
  sub_22C90638C();
  v5 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v6 = sub_22C36FC2C();
    if (v7(v6) == *MEMORY[0x277D85B00])
    {
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 320) + 8))(*(v1 + 328), *(v1 + 312));
      v8 = "";
    }

    v9 = sub_22C36D240();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v10, "FullPlannerModelInterface.completion", v8, v9, 2u);
    sub_22C3699EC();
  }

  v39 = v3;
  v11 = *(v1 + 744);
  v12 = v4;
  v13 = *(v1 + 720);
  v14 = *(v1 + 352);
  v15 = *(v1 + 336);

  v11(v14, v15);
  v16 = sub_22C36CA88();
  v13(v16);
  sub_22C903F7C();

  v17 = sub_22C9063CC();
  v18 = sub_22C90AABC();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v1 + 704);
  if (v19)
  {
    v36 = *(v1 + 704);
    v21 = sub_22C36FB44();
    v22 = sub_22C370060();
    v40 = v22;
    *v21 = 136380675;
    *(v21 + 4) = sub_22C36F9F4(v39, v38, &v40);
    _os_log_impl(&dword_22C366000, v17, v18, "Raw model response follows on next line:\n%{private}s", v21, 0xCu);
    sub_22C36FF94(v22);
    sub_22C3699EC();
    sub_22C3699EC();

    v23 = sub_22C36ECB4();
    v36(v23);
  }

  else
  {

    v24 = sub_22C36ECB4();
    v20(v24);
  }

  v35 = *(v1 + 552);
  v37 = *(v1 + 584);
  v25 = *(v1 + 184);

  sub_22C90648C();
  v26 = MEMORY[0x277D1D958];
  sub_22C58A238(&qword_27D9BE010, MEMORY[0x277D1D958], MEMORY[0x277D1D968]);
  sub_22C58A238(&qword_27D9BE018, v26, MEMORY[0x277D1D960]);
  sub_22C900F7C();

  v27 = sub_22C36ECB4();
  v28(v27);
  sub_22C374168((v25 + 96), *(v25 + 120));
  v29 = v37 + *(v35 + 32);
  v30 = *(v29 + 48);
  v32 = *(v29 + 16);
  v31 = *(v29 + 32);
  *(v1 + 16) = *v29;
  *(v1 + 32) = v32;
  *(v1 + 48) = v31;
  *(v1 + 64) = v30;
  v33 = swift_task_alloc();
  *(v1 + 808) = v33;
  *v33 = v1;
  v33[1] = sub_22C5854F4;

  return sub_22C4211E0();
}

uint64_t sub_22C5854F4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  v2[102] = v4;
  v2[103] = v5;
  v2[104] = v6;
  v2[105] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C585604()
{
  v1 = *(v0 + 688);
  (*(v0 + 672))(*(v0 + 488), *(v0 + 848), *(v0 + 472));
  v2 = sub_22C90362C();
  v3 = sub_22C36BBCC();
  v1(v3);
  if (v2)
  {
    v4 = *(v0 + 656);
    v5 = *(v0 + 648);
    v6 = *(v0 + 544);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v23 = *(v0 + 264);

    v4(v6, v5);
    (*(v7 + 104))(v8, *MEMORY[0x277D1E6B8], v23);
    sub_22C9088AC();
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 264);

    v12 = *(v9 + 104);
    v4 = (v9 + 104);
    v12(v10, *MEMORY[0x277D1E6B8], v11);

    sub_22C9088AC();
    sub_22C36CC9C();
  }

  sub_22C90889C();

  sub_22C388CD4();
  v13 = *(v0 + 152);
  v14 = *MEMORY[0x277D1E6F8];
  v15 = sub_22C9089DC();
  sub_22C36985C();
  (*(v16 + 104))(v13, v14, v15);
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v15);
  v20 = sub_22C36FC2C();
  (v4)(v20);

  sub_22C369C50();

  return v21();
}

uint64_t sub_22C585988(uint64_t a1)
{
  v3 = *(v1 + 840);
  sub_22C903F7C();
  v4 = v3;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 840);
    sub_22C36FB44();
    v8 = sub_22C382768();
    *v2 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v10);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C36D69C();
  }

  v11 = *(v1 + 704);
  v39 = *(v1 + 688);
  v12 = *(v1 + 672);
  v13 = *(v1 + 848);
  v14 = *(v1 + 488);
  v15 = *(v1 + 472);

  v16 = sub_22C36CA88();
  v11(v16);
  v12(v14, v13, v15);
  v17 = sub_22C90362C();
  v18 = sub_22C36D264();
  v39(v18);
  if (v17)
  {
    (*(v1 + 656))(*(v1 + 544), *(v1 + 648));
  }

  else
  {
  }

  v19 = *(v1 + 840);
  v21 = *(v1 + 208);
  v20 = *(v1 + 216);
  v22 = *(v1 + 200);
  v38 = *(v1 + 152);
  v23 = v19;
  sub_22C901E9C();
  sub_22C90884C();

  v24 = sub_22C380528();
  v25(v24);
  (*(v21 + 104))(v20, *MEMORY[0x277D1E6A0], v22);
  (*(v21 + 32))(v38, v20, v22);
  v26 = *MEMORY[0x277D1E640];
  sub_22C90881C();
  sub_22C36985C();
  (*(v27 + 104))(v38, v26);
  sub_22C388CD4();
  v28 = *(v1 + 152);
  v29 = *MEMORY[0x277D1E770];
  v30 = sub_22C9089DC();
  sub_22C36985C();
  (*(v31 + 104))(v28, v29, v30);
  sub_22C36BECC();
  sub_22C36C640(v32, v33, v34, v30);
  v35 = sub_22C36FC2C();
  (v26)(v35);

  sub_22C369C50();

  return v36();
}

void sub_22C585E18()
{
  sub_22C375EC8();
  sub_22C372300(v0, v1, v2, v3, v4, v5, v6, v7);

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

void sub_22C585F44()
{
  sub_22C375EC8();
  v1 = *(v0 + 712);

  v2 = sub_22C36D264();
  v3 = v1(v2);
  sub_22C372300(v3, v4, v5, v6, v7, v8, v9, v10);

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

void sub_22C5860B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22C587924(0);
  v26 = sub_22C369914(v25);
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374CE8();
  v29 = sub_22C37170C();
  sub_22C588FBC(v29, v30);
  v31 = sub_22C9073DC();
  sub_22C36D0A8(v28, 1, v31);
  if (v32)
  {
    sub_22C90068C();
  }

  else
  {
    sub_22C588FBC(v28, v24);
  }

  v33 = sub_22C587C84(0);
  v34 = v33[5];
  v35 = v33[6];
  v36 = v33[7];
  v37 = v33[8];
  v38 = v33[9];
  v39 = sub_22C90069C();
  sub_22C36985C();
  v41 = *(v40 + 8);
  v41(v20 + v34, v39);
  sub_22C36DD28(v20 + v35, &qword_27D9BB7A0, &qword_22C9110D0);
  v41(v20 + v36, v39);
  v41(v20 + v37, v39);
  v41(v20 + v38, v39);
  sub_22C36CC48();
}

uint64_t sub_22C586218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = a5;
  return MEMORY[0x2822009F8](sub_22C586238, 0, 0);
}

uint64_t sub_22C586238()
{
  v2 = type metadata accessor for PreLaunchExecutor();
  swift_allocObject();
  v3 = sub_22C369A48();
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(v3);
  v5 = sub_22C3856A0(DecorationSignposter);

  sub_22C90B0FC();
  *(v1 + 152) = v5;
  *(v1 + 176) = DecorationSignposter;
  *(v1 + 184) = &off_283FC1370;
  *(v1 + 216) = v2;
  *(v1 + 224) = &off_283FC01E0;
  *(v1 + 192) = v0;
  type metadata accessor for AppPreLaunchHandler();
  inited = swift_initStackObject();
  *(v1 + 248) = inited;
  v7 = *(v1 + 216);
  v8 = sub_22C36CA88();
  v10 = sub_22C36D1E4(v8, v9);
  v11 = *(v7 - 8);
  v12 = sub_22C3699D4();
  (*(v11 + 16))(v12, v10, v7);
  v13 = *v12;
  *(inited + 80) = v2;
  *(inited + 88) = &off_283FC01E0;
  *(inited + 48) = 0;
  *(inited + 56) = v13;
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  sub_22C36C730((v1 + 152), inited + 96);
  sub_22C36FF94((v1 + 192));

  v14 = swift_task_alloc();
  *(v1 + 256) = v14;
  *v14 = v1;
  v14[1] = sub_22C586428;

  return sub_22C7AED14();
}

uint64_t sub_22C586428()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  swift_setDeallocating();
  sub_22C7B1080();
  swift_deallocClassInstance();
  sub_22C369A24();

  return v3();
}

uint64_t sub_22C586534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = sub_22C90000C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5865F8, 0, 0);
}

uint64_t sub_22C5865F8()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  sub_22C36CCA8();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22C58671C;
  v7 = v0[5];
  v6 = v0[6];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_22C58671C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C369A30();
  *v8 = v7;
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {

    sub_22C58A8EC();

    return v11();
  }

  else
  {
    *(v7 + 88) = v3;
    *(v7 + 96) = v5;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C586860()
{
  sub_22C36D5EC();
  v1 = v0[11];
  v0[2] = v0[12];
  v0[3] = v1;
  sub_22C8FFFDC();
  sub_22C3858B4();
  v2 = sub_22C90AD3C();
  v4 = v3;
  v5 = sub_22C36D264();
  v6(v5);

  v7 = v0[1];

  return v7(v2, v4);
}

uint64_t sub_22C586934(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v6 = *a2;
  v7 = a2[1];
  v5[4] = v7;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_22C586A38;

  return v10(v6, v7);
}

uint64_t sub_22C586A38()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C369A30();
  *v8 = v7;
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
    **(v7 + 24) = v0;
  }

  else
  {
    v12 = *(v7 + 16);
    *v12 = v5;
    v12[1] = v3;
  }

  sub_22C58A8EC();

  return v11();
}

void sub_22C586B68()
{
  sub_22C36BA7C();
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C9063DC();
  sub_22C369824();
  v44 = v9;
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C36993C();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C381AB0();
  v14 = v3 & 1;
  LOBYTE(v47) = v3 & 1;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C3806B8();
  sub_22C901F0C();
  sub_22C901F1C();
  v15 = sub_22C37170C();
  v16(v15);
  v17 = v47;
  if (v47 == 2)
  {
    if ((v3 & 0x100) != 0)
    {
      v29 = sub_22C5886C0(v43, v7, v5, v3 & 1);

      sub_22C90400C();

      v30 = sub_22C9063CC();
      v31 = sub_22C90AACC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_22C370060();
        v47 = swift_slowAlloc();
        *v32 = 136315650;
        v33 = sub_22C3806B8();
        *(v32 + 4) = sub_22C36F9F4(v33, v34, v35);
        *(v32 + 12) = 2080;
        v46 = v29 & 1;
        v36 = sub_22C90A1AC();
        v38 = sub_22C36F9F4(v36, v37, &v47);

        *(v32 + 14) = v38;
        *(v32 + 22) = 2080;
        v46 = v14;
        v39 = sub_22C90A1AC();
        v41 = sub_22C36F9F4(v39, v40, &v47);

        *(v32 + 24) = v41;
        _os_log_impl(&dword_22C366000, v30, v31, "QueryDecorationFactor %s was returned as %s. Default is %s", v32, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v44 + 8))(v0, v45);
    }

    else
    {
    }
  }

  else
  {

    sub_22C90400C();

    v18 = sub_22C9063CC();
    v19 = sub_22C90AACC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = sub_22C3806B8();
      *(v20 + 4) = sub_22C36F9F4(v21, v22, v23);
      *(v20 + 12) = 2080;
      v46 = v17 & 1;
      v24 = sub_22C90A1AC();
      v26 = sub_22C36F9F4(v24, v25, &v47);

      *(v20 + 14) = v26;
      sub_22C58AAB8(&dword_22C366000, v27, v28, "QueryDecorationFactor %s was set via UserDefaults to %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v44 + 8))(v12, v45);
  }

  sub_22C36CC48();
}

float sub_22C586FCC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, float a5)
{
  sub_22C9063DC();
  sub_22C369824();
  v39 = v12;
  v40 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = sub_22C3A5908(&qword_27D9BE040, &qword_22C91CD30);
  sub_22C369824();
  v20 = v19;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C381AB0();
  *&v42 = a5;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C901F0C();
  sub_22C901F1C();
  (*(v20 + 8))(v5, v18);
  if ((v42 & 0x100000000) != 0)
  {
    if (a3)
    {
      v22 = sub_22C588ACC(a4, a1, a2, a5);

      sub_22C90400C();

      v23 = sub_22C9063CC();
      v24 = sub_22C90AACC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_22C370060();
        v42 = swift_slowAlloc();
        *v25 = 136315650;
        *(v25 + 4) = sub_22C36F9F4(a1, a2, &v42);
        *(v25 + 12) = 2080;
        v41 = v22;
        v26 = sub_22C90A1AC();
        v28 = sub_22C36F9F4(v26, v27, &v42);

        *(v25 + 14) = v28;
        *(v25 + 22) = 2080;
        v41 = a5;
        v29 = sub_22C90A1AC();
        v31 = sub_22C36F9F4(v29, v30, &v42);

        *(v25 + 24) = v31;
        _os_log_impl(&dword_22C366000, v23, v24, "QueryDecorationFactor %s was returned as %s. Default is %s", v25, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C36BAE0();
      }

      (*(v39 + 8))(v15, v40);
      return v22;
    }

    else
    {
    }
  }

  else
  {
    a5 = *&v42;

    sub_22C90400C();

    v32 = sub_22C9063CC();
    v33 = sub_22C90AACC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_22C36F9F4(a1, a2, &v42);
      *(v34 + 12) = 2080;
      v41 = a5;
      v35 = sub_22C90A1AC();
      v37 = sub_22C36F9F4(v35, v36, &v42);

      *(v34 + 14) = v37;
      _os_log_impl(&dword_22C366000, v32, v33, "QueryDecorationFactor %s was set via UserDefaults to %s", v34, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372FB0();
    }

    (*(v39 + 8))(v17, v40);
  }

  return a5;
}

char *sub_22C587470()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  v1 = qword_281435588;
  sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  sub_22C36985C();
  (*(v2 + 8))(&v0[v1]);

  sub_22C36FF94(&v0[qword_27D9BDFC8]);
  return v0;
}

uint64_t sub_22C58750C()
{
  sub_22C587470();

  return swift_deallocClassInstance();
}

uint64_t sub_22C587580(uint64_t a1, int *a2)
{
  v4 = sub_22C9073DC();
  if (!sub_22C370B74(a1, 1, v4))
  {
    v5 = sub_22C90069C();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = a2[5];
  v7 = sub_22C90069C();
  v12 = *(*(v7 - 8) + 8);
  v12(a1 + v6, v7);
  v8 = a2[6];
  v9 = sub_22C90451C();
  if (!sub_22C370B74(a1 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(a1 + v8, v9);
  }

  v12(a1 + a2[7], v7);
  v12(a1 + a2[8], v7);
  v10 = a1 + a2[9];

  return (v12)(v10, v7);
}

char *sub_22C587708(char *a1, char *a2, int *a3)
{
  v6 = sub_22C9073DC();
  if (sub_22C370B74(a2, 1, v6))
  {
    v7 = sub_22C587924(0);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_22C90069C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    sub_22C36C640(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = sub_22C90069C();
  v11 = *(*(v10 - 8) + 32);
  v11(&a1[v9], &a2[v9], v10);
  v12 = a3[6];
  v13 = sub_22C90451C();
  if (sub_22C370B74(&a2[v12], 1, v13))
  {
    v14 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    sub_22C36C640(&a1[v12], 0, 1, v13);
  }

  v11(&a1[a3[7]], &a2[a3[7]], v10);
  v11(&a1[a3[8]], &a2[a3[8]], v10);
  v11(&a1[a3[9]], &a2[a3[9]], v10);
  return a1;
}

char *sub_22C587944(char *a1, char *a2, int *a3)
{
  v6 = sub_22C9073DC();
  v7 = sub_22C370B74(a1, 1, v6);
  v8 = sub_22C370B74(a2, 1, v6);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_22C90069C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      sub_22C36C640(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v8)
  {
    sub_22C589E50(a1, MEMORY[0x277D1DFC0]);
LABEL_6:
    v10 = sub_22C587924(0);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  v21 = sub_22C90069C();
  (*(*(v21 - 8) + 40))(a1, a2, v21);
LABEL_7:
  v11 = a3[5];
  v12 = sub_22C90069C();
  v13 = *(*(v12 - 8) + 40);
  v13(&a1[v11], &a2[v11], v12);
  v14 = a3[6];
  v15 = sub_22C90451C();
  v16 = sub_22C370B74(&a1[v14], 1, v15);
  v17 = sub_22C370B74(&a2[v14], 1, v15);
  if (!v16)
  {
    v18 = *(v15 - 8);
    if (!v17)
    {
      (*(v18 + 40))(&a1[v14], &a2[v14], v15);
      goto LABEL_13;
    }

    (*(v18 + 8))(&a1[v14], v15);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v19 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
    memcpy(&a1[v14], &a2[v14], *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  sub_22C36C640(&a1[v14], 0, 1, v15);
LABEL_13:
  v13(&a1[a3[7]], &a2[a3[7]], v12);
  v13(&a1[a3[8]], &a2[a3[8]], v12);
  v13(&a1[a3[9]], &a2[a3[9]], v12);
  return a1;
}

void sub_22C587CA4(uint64_t a1)
{
  sub_22C587924(319);
  if (v1 <= 0x3F)
  {
    sub_22C90069C();
    if (v2 <= 0x3F)
    {
      sub_22C587DAC(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_22C587DAC(uint64_t a1)
{
  if (!qword_27D9BDFE0)
  {
    sub_22C90451C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BDFE0);
    }
  }
}

uint64_t sub_22C587E04(uint64_t a1)
{
  v2 = sub_22C9073DC();
  result = sub_22C370B74(a1, 1, v2);
  if (!result)
  {
    v4 = sub_22C90069C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_22C587E90(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_22C9073DC();
  if (sub_22C370B74(a2, 1, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = sub_22C90069C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    sub_22C36C640(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_22C587F70(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_22C9073DC();
  v7 = sub_22C370B74(a1, 1, v6);
  v8 = sub_22C370B74(a2, 1, v6);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_22C90069C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      sub_22C36C640(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      v12 = sub_22C90069C();
      (*(*(v12 - 8) + 40))(a1, a2, v12);
      return a1;
    }

    sub_22C589E50(a1, MEMORY[0x277D1DFC0]);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_22C5880FC(uint64_t a1)
{
  v2 = sub_22C9073DC();

  return sub_22C370B74(a1, 1, v2);
}

uint64_t sub_22C588140(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9073DC();

  return sub_22C36C640(a1, a2, 1, v4);
}

uint64_t sub_22C58818C(uint64_t a1)
{
  result = sub_22C9073DC();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_22C588204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C580ED4();
}

uint64_t sub_22C5882C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  swift_beginAccess();
  v15 = sub_22C633A20();
  swift_endAccess();
  if (v15)
  {
    v16 = v15;
    v17 = Int.init(level:)(v16);
    if (v18)
    {
      sub_22C9040BC();

      v19 = sub_22C9063CC();
      v20 = sub_22C90AADC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v39 = a4;
        v22 = v21;
        v38 = swift_slowAlloc();
        v41[0] = v38;
        *v22 = 136315650;
        v23 = sub_22C36F9F4(a2, a3, v41);

        *(v22 + 4) = v23;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v41);
        *(v22 + 22) = 2080;
        v40 = MEMORY[0x277D83B88];
        sub_22C3A5908(&qword_27D9BE038, &qword_22C91CD28);
        v24 = sub_22C90A1AC();
        v26 = sub_22C36F9F4(v24, v25, v41);

        *(v22 + 24) = v26;
        _os_log_impl(&dword_22C366000, v19, v20, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v22, 0x20u);
        v27 = v38;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v27, -1, -1);
        v28 = v22;
        a4 = v39;
        MEMORY[0x2318B9880](v28, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v36 = v17;

      return v36;
    }
  }

  else
  {
    sub_22C9040BC();

    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = a4;
      v33 = v32;
      v41[0] = v32;
      *v31 = 136315394;
      v34 = sub_22C36F9F4(a2, a3, v41);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v41);
      _os_log_impl(&dword_22C366000, v29, v30, "Trial factor '%s' not found in namespace '%s'", v31, 0x16u);
      swift_arrayDestroy();
      v35 = v33;
      a4 = v39;
      MEMORY[0x2318B9880](v35, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
  }

  return a4;
}

uint64_t sub_22C5886C0(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  swift_beginAccess();
  v15 = sub_22C633A20();
  swift_endAccess();
  if (v15)
  {
    if ([v15 levelOneOfCase] == 10)
    {
      LOBYTE(v4) = [v15 BOOLeanValue];
    }

    else
    {
      sub_22C9040BC();

      v22 = sub_22C9063CC();
      v23 = sub_22C90AADC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v33 = v4;
        v4 = v24;
        v32 = swift_slowAlloc();
        v35[0] = v32;
        *v4 = 136315650;
        v25 = sub_22C36F9F4(a2, a3, v35);

        *(v4 + 4) = v25;
        *(v4 + 12) = 2080;
        *(v4 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v35);
        *(v4 + 22) = 2080;
        v34 = MEMORY[0x277D839B0];
        sub_22C3A5908(&qword_27D9BE028, &qword_22C91CD18);
        v26 = sub_22C90A1AC();
        v28 = sub_22C36F9F4(v26, v27, v35);

        *(v4 + 24) = v28;
        _os_log_impl(&dword_22C366000, v22, v23, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v4, 0x20u);
        v29 = v32;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v29, -1, -1);
        v30 = v4;
        LOBYTE(v4) = v33;
        MEMORY[0x2318B9880](v30, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    sub_22C9040BC();

    v16 = sub_22C9063CC();
    v17 = sub_22C90AADC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v4;
      v4 = v19;
      v35[0] = v19;
      *v18 = 136315394;
      v20 = sub_22C36F9F4(a2, a3, v35);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v35);
      _os_log_impl(&dword_22C366000, v16, v17, "Trial factor '%s' not found in namespace '%s'", v18, 0x16u);
      swift_arrayDestroy();
      v21 = v4;
      LOBYTE(v4) = v33;
      MEMORY[0x2318B9880](v21, -1, -1);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
  }

  return v4 & 1;
}

float sub_22C588ACC(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  v15 = sub_22C633A20();
  swift_endAccess();
  if (v15)
  {
    v16 = v15;
    v17 = Float.init(level:)(v16);
    if ((v17 & 0x100000000) != 0)
    {
      sub_22C9040BC();

      v24 = sub_22C9063CC();
      v25 = sub_22C90AADC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36[0] = v34;
        *v26 = 136315650;
        v27 = sub_22C36F9F4(a2, a3, v36);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v36);
        *(v26 + 22) = 2080;
        v35 = MEMORY[0x277D83A90];
        sub_22C3A5908(&qword_27D9BE048, &unk_22C91CD38);
        v28 = sub_22C90A1AC();
        v30 = sub_22C36F9F4(v28, v29, v36);

        *(v26 + 24) = v30;
        _os_log_impl(&dword_22C366000, v24, v25, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v26, 0x20u);
        v31 = v34;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v31, -1, -1);
        MEMORY[0x2318B9880](v26, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v18 = *&v17;

      return v18;
    }
  }

  else
  {
    sub_22C9040BC();

    v19 = sub_22C9063CC();
    v20 = sub_22C90AADC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      v23 = sub_22C36F9F4(a2, a3, v36);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_22C36F9F4(*(a1 + 16), *(a1 + 24), v36);
      _os_log_impl(&dword_22C366000, v19, v20, "Trial factor '%s' not found in namespace '%s'", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v22, -1, -1);
      MEMORY[0x2318B9880](v21, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
  }

  return a4;
}

uint64_t sub_22C588ED8()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369C50();

  return v3();
}

uint64_t sub_22C588FBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C589014@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C3C0B2C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22C589044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v6 = sub_22C90637C();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_22C90634C();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = sub_22C90636C();
  v3[16] = v8;
  v3[17] = *(v8 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[5] = &type metadata for EndPromptGenerationCheckpoint;
  v3[6] = &off_283FB2EB0;
  v3[2] = a1;
  v3[3] = a2;

  return MEMORY[0x2822009F8](sub_22C589220, 0, 0);
}

uint64_t sub_22C58939C()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C58949C(uint64_t a1)
{
  sub_22C90364C();
  v2 = sub_22C90635C();
  sub_22C90638C();
  v3 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v4 = sub_22C36ECB4();
    if (v5(v4) == *MEMORY[0x277D85B00])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[9] + 8))(v1[10], v1[8]);
      v6 = "";
    }

    v7 = sub_22C36D240();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v8, "MediatorControlChannel.publish(checkpoint:)", v6, v7, 2u);
    sub_22C36BAE0();
  }

  v9 = v1[24];
  v10 = v1[21];

  v11 = sub_22C36CC9C();
  v9(v11);
  v12 = sub_22C36ECB4();
  v10(v12);
  sub_22C36FF94(v1 + 2);

  sub_22C369A24();

  return v13();
}

uint64_t sub_22C589688(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22C90637C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_22C90634C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_22C90636C();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[5] = type metadata accessor for StartCheckpoint(0);
  v2[6] = &off_283FB2EC0;
  v7 = sub_22C36D548(v2 + 2);
  sub_22C589EB0(a1, v7);

  return MEMORY[0x2822009F8](sub_22C589870, 0, 0);
}

uint64_t sub_22C5899EC()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C589AEC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22C90637C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_22C90634C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_22C90636C();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[5] = type metadata accessor for EndCheckpoint(0);
  v2[6] = &off_283FB2EB8;
  v7 = sub_22C36D548(v2 + 2);
  sub_22C589EB0(a1, v7);

  return MEMORY[0x2822009F8](sub_22C589CD4, 0, 0);
}

uint64_t sub_22C589E50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C589EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C589F08()
{
  sub_22C36D5EC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C382AF4;

  return sub_22C586218(v2, v3, v4, v6, v5);
}

uint64_t sub_22C589FBC()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22C58A078;

  return sub_22C586534(v5, v3, v6, v7, v8);
}

uint64_t sub_22C58A078()
{
  sub_22C36FB38();
  v2 = v1;
  v4 = v3;
  sub_22C369A3C();
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_22C58A174()
{
  sub_22C36D5EC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_22C36D860(v9);
  *v10 = v11;
  v10[1] = sub_22C46BC08;

  return sub_22C586934(v6, v4, v8, v7, v2);
}

uint64_t sub_22C58A238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C58A280(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22C58A374;

  return v5(v2 + 16);
}

uint64_t sub_22C58A374()
{
  sub_22C36FB38();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_22C58A498@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C588EBC();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C58A4C8()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C58A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 96) = *(v8 + 104);
}

uint64_t sub_22C58A5E4()
{
  v2 = *(v0 + 360);
  result = *(v0 + 376);
  *(v1 - 96) = *(v2 + 32);
  *(v1 - 88) = v2 + 32;
  return result;
}

uint64_t sub_22C58A660(uint64_t result)
{
  *(v2 + 776) = result;
  *(result + 16) = &unk_22C91CCC8;
  *(result + 24) = v1;
  return result;
}

void sub_22C58A6D0()
{

  sub_22C5809B8();
}

uint64_t sub_22C58A71C(unint64_t *a1)
{
  v3 = MEMORY[0x277D1D948];

  return sub_22C58A238(a1, v1, v3);
}

uint64_t sub_22C58A744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 208) = result;
  *(result + 16) = a11;
  *(result + 24) = a10;
  return result;
}

uint64_t sub_22C58A7AC()
{

  return MEMORY[0x282177650](v1, v1, v0, v2, v3, v2, v3, v4);
}

uint64_t sub_22C58A808()
{
  *(v1 + 720) = *(v2 + 8);
  *(v1 + 728) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_22C58A82C()
{
  *(v0 + 400) = *(v2 + 8);
  *(v0 + 408) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_22C58A84C(uint64_t a1)
{

  return sub_22C90364C();
}

uint64_t sub_22C58A888()
{
  v3 = *(v1 + 20);
  *(v0 + 452) = v3;
  return v2 + v3;
}

uint64_t sub_22C58A8C0()
{
  *(v1 + 712) = v2;
  *(v1 + 704) = v0;

  return sub_22C90A75C();
}

uint64_t sub_22C58A90C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a16;
  a1[5] = a17;
}

uint64_t sub_22C58A934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 768) = a1;
  a1[2] = a13;
  a1[3] = v14;
  a1[4] = a14;

  return swift_task_alloc();
}

uint64_t sub_22C58A980()
{

  return sub_22C3A5950(v0);
}

uint64_t sub_22C58A998(uint64_t a1)
{
  sub_22C36C640(v3, v4, 1, a1);
  *(v1 + 440) = *(v2 + 28);

  return sub_22C90068C();
}

void sub_22C58AA38()
{
}

uint64_t sub_22C58AA58(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_22C901E8C();
}

uint64_t sub_22C58AA78(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return swift_task_alloc();
}

uint64_t sub_22C58AA98()
{

  return sub_22C4E719C(v1, v0, v2, v3);
}

void sub_22C58AAB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C58AAD8(_WORD *a1)
{
  *a1 = 0;

  return sub_22C90632C();
}

void sub_22C58AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_22C5860B4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_22C58AB08()
{
}

uint64_t FullPlannerError.errorCode.getter()
{
  v1 = type metadata accessor for FullPlannerError(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C58ACB4(v0, v3);
  v4 = sub_22C901E8C();
  v5 = sub_22C370B74(v3, 15, v4);
  result = 0;
  switch(v5)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 12;
      break;
    case 14:
      result = 13;
      break;
    case 15:
      result = 15;
      break;
    default:
      sub_22C58AD18(v3);
      result = 14;
      break;
  }

  return result;
}

uint64_t type metadata accessor for FullPlannerError(uint64_t a1)
{
  result = qword_27D9BE050;
  if (!qword_27D9BE050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C58ACB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C58AD18(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C58AD74(uint64_t a1)
{
  v2 = sub_22C58AEFC(&qword_27D9BE060, &protocol conformance descriptor for FullPlannerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C58ADCC(uint64_t a1)
{
  v2 = sub_22C58AEFC(&qword_27D9BE060, &protocol conformance descriptor for FullPlannerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C58AEA4(uint64_t a1)
{
  v1 = sub_22C901E8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22C58AEFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FullPlannerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C58AF88(uint64_t a1)
{
  v2 = sub_22C57D74C();
  v4 = v3;
  v6 = v5;
  result = sub_22C823680(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_8;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    return 0;
  }

  else
  {
    return sub_22C3AFBA4(v2, v4, 0, a1);
  }
}

void *sub_22C58B038@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v4 = result[4];
    v3 = result[5];
    v5 = result[6];
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  return result;
}

uint64_t sub_22C58B0F8(uint64_t a1)
{
  v2 = sub_22C57D74C();
  v4 = v3;
  v6 = v5;
  result = sub_22C823680(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_11;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    v10 = 1;
  }

  else
  {
    v11 = sub_22C38A03C();
    sub_22C3AFC20(v11, v12, v13, v14);
    v10 = 0;
  }

  sub_22C90952C();
  v15 = sub_22C598F54();

  return sub_22C36C640(v15, v10, 1, v16);
}

unint64_t sub_22C58B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  result = sub_22C6339F8();
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v11 = sub_22C37B6A4();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    v15 = *(v4 + 48);
    sub_22C6332FC(v7, &v7[v15], result, v9, 0, a1);
    sub_22C902C9C();
    sub_22C36985C();
    (*(v16 + 32))(a2, v7);
    v17 = *(v4 + 48);
    sub_22C902D0C();
    sub_22C36985C();
    (*(v18 + 32))(a2 + v17, &v7[v15]);
    v19 = sub_22C37049C();
    return sub_22C36C640(v19, v20, v21, v4);
  }
}

uint64_t sub_22C58B3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C5C9CB0();
  if (!result)
  {
    sub_22C908A0C();
    v8 = sub_22C598F54();
    v9 = 1;
    v10 = 1;
    goto LABEL_7;
  }

  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= *(a1 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = sub_22C908A0C();
  sub_22C36985C();
  (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
  v8 = sub_22C37049C();
  v11 = v6;
LABEL_7:

  return sub_22C36C640(v8, v9, v10, v11);
}

uint64_t sub_22C58B498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  sub_22C3A5908(a2, a3);
  if (v8)
  {
    sub_22C36BA94();
    sub_22C4E719C(a1 + v9, a4, a2, a3);
  }

  v10 = sub_22C382D24();

  return sub_22C36C640(v10, v11, v12, v13);
}

uint64_t sub_22C58B61C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = a2();
  v9 = v8;
  v11 = v10;
  result = a3(a1);
  if (v11 & 1) != 0 || (v14)
  {
    goto LABEL_8;
  }

  if (v9 != v13)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v7 == result)
  {
    return 0;
  }

  v15 = sub_22C38A03C();
  return a4(v15);
}

uint64_t sub_22C58B6D4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  a2(0);
  if (v6)
  {
    sub_22C36BA94();
    sub_22C597DD8(a1 + v7, a4);
  }

  v8 = sub_22C382D24();

  return sub_22C36C640(v8, v9, v10, v11);
}

unint64_t sub_22C58B7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3717BC();
  result = sub_22C6339F8();
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v10 = sub_22C37B6A4();

    return sub_22C36C640(v10, v11, v12, v13);
  }

  else
  {
    v14 = v2 + *(v5 + 48);
    sub_22C6336E0(v2, v14, result, v8, 0, a1);
    sub_22C598048(v2, a2);
    v15 = a2 + *(v5 + 48);
    v16 = *(v14 + 16);
    *v15 = *v14;
    *(v15 + 16) = v16;
    *(v15 + 32) = *(v14 + 32);
    v17 = sub_22C37049C();
    return sub_22C36C640(v17, v18, v19, v5);
  }
}

uint64_t sub_22C58B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C4AAD90(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_22C598E0C(result, v5, a1, a2);
    v7 = 0;
  }

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v8 = sub_22C598F54();

  return sub_22C36C640(v8, v7, 1, v9);
}

unint64_t sub_22C58B9B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3717BC();
  result = sub_22C6339F8();
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v10 = sub_22C37B6A4();

    return sub_22C36C640(v10, v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 48);
    sub_22C63323C(v2 + v14, result);
    *a2 = v15;
    *(a2 + 1) = v16;
    v17 = *(v5 + 48);
    sub_22C9093BC();
    sub_22C36985C();
    (*(v18 + 32))(&a2[v17], v2 + v14);
    v19 = sub_22C37049C();
    return sub_22C36C640(v19, v20, v21, v5);
  }
}

uint64_t sub_22C58BB54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = sub_22C382D24();

  return sub_22C36C640(v7, v8, v9, v10);
}

void FullPlannerService.setup(sessionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v113 = v21;
  v108 = v20;
  v112 = v24;
  sub_22C9063DC();
  sub_22C369824();
  v114 = v26;
  v115 = v25;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  sub_22C36D234(v101 - v30);
  v31 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v31);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C36D5B4();
  sub_22C36D234(v33);
  v34 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  sub_22C36D234(v36);
  v37 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
  sub_22C369914(v37);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C36D5B4();
  sub_22C36D234(v39);
  v107 = sub_22C90077C();
  sub_22C369824();
  v106 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  sub_22C36D234(v43 - v42);
  v44 = sub_22C9021DC();
  sub_22C369824();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v50 = v49 - v48;
  v51 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v52);
  sub_22C369838();
  v55 = v54 - v53;
  v110 = sub_22C9068CC();
  sub_22C369824();
  v109 = v56;
  MEMORY[0x28223BE20](v57);
  sub_22C369838();
  v60 = v59 - v58;
  v61 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v61);
  sub_22C369838();
  v64 = v63 - v62;
  FullPlannerPreferences.init()(v63 - v62);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v116 = v64;
  sub_22C901EDC();
  if (LOBYTE(v117[0]) != 1)
  {
    sub_22C903F7C();
    v67 = sub_22C9063CC();
    v68 = sub_22C90AADC();
    if (os_log_type_enabled(v67, v68))
    {
      sub_22C3720F4();
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22C366000, v67, v68, "FullPlannerPreferences asset is missing! Full Planner cannot proceed. Failing setup.", v69, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v114 + 8))(v29, v115);
    type metadata accessor for FullPlannerError(0);
    sub_22C380538();
    sub_22C597FAC(v70, 255, v71, &protocol conformance descriptor for FullPlannerError);
    swift_allocError();
    sub_22C901E8C();
    v72 = sub_22C598F54();
    sub_22C36C640(v72, 14, 15, v73);
    swift_willThrow();
    goto LABEL_7;
  }

  v65 = v113;
  sub_22C90877C();
  if (v65)
  {
LABEL_7:
    sub_22C36D8AC();
    sub_22C58FF40(v116, v74);
    goto LABEL_8;
  }

  sub_22C9068BC();
  sub_22C9021CC();
  (*(v46 + 8))(v50, v44);
  v66 = v108;
  v75 = ToolboxResources.makeQueryableToolbox(toolkitCache:)(0);
  sub_22C57689C();
  v76 = v66;
  sub_22C58BB54(*(v66 + 112), MEMORY[0x277D1E600], v105);
  v77 = v103;
  sub_22C9068AC();
  v78 = sub_22C90212C();
  v79 = sub_22C370B74(v77, 1, v78);
  v101[1] = v60;
  if (v79 == 1)
  {
    sub_22C36DD28(v77, &qword_27D9BE068, &qword_22C91CE40);
    v113 = 0;
    v80 = 0;
  }

  else
  {
    v113 = sub_22C90211C();
    v80 = v81;
    (*(*(v78 - 8) + 8))(v77, v78);
  }

  v82 = v51[9];
  v83 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C36C640(v55 + v82, 1, 1, v83);
  v84 = v116;
  sub_22C597DD8(v116, v55 + v51[10]);
  (*(v106 + 32))(v55, v111, v107);
  *(v55 + v51[5]) = v75;
  sub_22C4E7208(v104, v55 + v51[6], &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4E7208(v105, v55 + v51[7], &qword_27D9BB728, &qword_22C911230);
  v85 = (v55 + v51[8]);
  *v85 = v113;
  v85[1] = v80;
  sub_22C4DE060(6u, v55, v120);
  sub_22C38620C();
  v86 = v121;
  v87 = v122;
  sub_22C36D1E4(v120, v121);
  (*(v87 + 80))(v117, v86, v87);
  if (v118)
  {
    a10 = *&v117[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_22C36C730(v117, v119);
    os_unfair_lock_lock(v76 + 4);
    sub_22C36DD28(&v76[6], &qword_27D9BE070, &qword_22C91CE48);
    sub_22C378A4C(v119, &v76[6]);
    os_unfair_lock_unlock(v76 + 4);
    v88 = v102;
    sub_22C903F7C();
    v89 = sub_22C9063CC();
    v90 = sub_22C90AABC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      a10 = v92;
      *v91 = 136315138;
      swift_beginAccess();
      v93 = v121;
      v94 = v122;
      sub_22C374168(v120, v121);
      v95 = (*(v94 + 32))(v93, v94);
      v97 = sub_22C36F9F4(v95, v96, &a10);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_22C366000, v89, v90, "FullPlannerService setup success. Prompt version: %s", v91, 0xCu);
      sub_22C36FF94(v92);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v114 + 8))(v102, v115);
    }

    else
    {

      (*(v114 + 8))(v88, v115);
    }

    sub_22C36FF94(v119);
  }

  v98 = sub_22C37EC3C();
  v99(v98);
  sub_22C36D8AC();
  sub_22C58FF40(v84, v100);
  sub_22C36FF94(v120);
LABEL_8:
  sub_22C36FB20();
}

uint64_t FullPlannerService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22C9063DC();
  v1[25] = v4;
  sub_22C3699B8(v4);
  v1[26] = v5;
  v1[27] = sub_22C3699D4();
  v6 = sub_22C908A0C();
  v1[28] = v6;
  sub_22C3699B8(v6);
  v1[29] = v7;
  v1[30] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C3699B8(v8);
  v1[31] = v9;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v10 = type metadata accessor for PlannerServiceContext(0);
  sub_22C3699B8(v10);
  v1[34] = v11;
  v1[35] = *(v12 + 64);
  v1[36] = sub_22C3699D4();
  v13 = sub_22C9087BC();
  v1[37] = v13;
  sub_22C3699B8(v13);
  v1[38] = v14;
  v1[39] = *(v15 + 64);
  v1[40] = sub_22C3699D4();
  v16 = type metadata accessor for FullPlannerResponse(0);
  v1[41] = v16;
  sub_22C369914(v16);
  v1[42] = sub_22C3699D4();
  v17 = type metadata accessor for FullPlannerRequest(0);
  v1[43] = v17;
  sub_22C369914(v17);
  v1[44] = sub_22C3699D4();
  v18 = sub_22C90634C();
  v1[45] = v18;
  sub_22C3699B8(v18);
  v1[46] = v19;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v20 = sub_22C90636C();
  v1[49] = v20;
  sub_22C3699B8(v20);
  v1[50] = v21;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C58C86C, 0, 0);
}

uint64_t sub_22C58C86C(uint64_t a1)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 392);
  v4 = *(v1 + 400);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v53 = *(v4 + 8);
  v53(v2, v3);
  v5 = sub_22C90635C();
  v6 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v5, v6, v8, "FullPlannerService.handle", "", v7, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = *(v1 + 416);
  v11 = *(v1 + 384);
  v10 = *(v1 + 392);
  v13 = *(v1 + 368);
  v12 = *(v1 + 376);
  v14 = *(v1 + 360);
  v15 = *(v1 + 192);

  (*(v13 + 16))(v12, v11, v14);
  sub_22C9063AC();
  swift_allocObject();
  *(v1 + 424) = sub_22C90639C();
  (*(v13 + 8))(v11, v14);
  v53(v9, v10);
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  os_unfair_lock_lock(v15 + 4);
  sub_22C36DD28(v1 + 16, &qword_27D9BE070, &qword_22C91CE48);
  sub_22C4E719C(&v15[6], v1 + 16, &qword_27D9BE070, &qword_22C91CE48);
  os_unfair_lock_unlock(v15 + 4);
  sub_22C4E719C(v1 + 16, v1 + 96, &qword_27D9BE070, &qword_22C91CE48);
  if (*(v1 + 120))
  {
    v16 = *(v1 + 320);
    v18 = *(v1 + 296);
    v17 = *(v1 + 304);
    v19 = *(v1 + 288);
    v49 = *(v1 + 280);
    v50 = *(v1 + 312);
    v48 = *(v1 + 272);
    v20 = *(v1 + 184);
    v51 = *(v1 + 192);
    v21 = *(v1 + 176);
    sub_22C36C730((v1 + 96), v1 + 56);
    type metadata accessor for Mediator();
    v22 = swift_allocObject();
    *(v1 + 432) = v22;
    *(v22 + 16) = MEMORY[0x277D84F90];
    sub_22C90878C();
    sub_22C3A909C();
    v52 = v24;
    v54 = v23;
    *(v1 + 440) = v24;
    sub_22C378A4C(v1 + 56, v1 + 136);
    (*(v17 + 16))(v16, v21, v18);
    sub_22C597DD8(v20, v19);
    v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v26 = (v50 + *(v48 + 80) + v25) & ~*(v48 + 80);
    v27 = swift_allocObject();
    *(v1 + 448) = v27;
    *(v27 + 16) = v22;
    sub_22C36C730((v1 + 136), v27 + 24);
    (*(v17 + 32))(v27 + v25, v16, v18);
    sub_22C598048(v19, v27 + v26);
    *(v27 + ((v49 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;

    v28 = swift_task_alloc();
    *(v1 + 456) = v28;
    sub_22C597FAC(&qword_27D9BE078, 255, type metadata accessor for FullPlannerRequest, &protocol conformance descriptor for FullPlannerRequest);
    sub_22C597FAC(&qword_27D9BE080, 255, type metadata accessor for FullPlannerRequest, &protocol conformance descriptor for FullPlannerRequest);
    sub_22C597FAC(&qword_27D9BE088, 255, type metadata accessor for FullPlannerResponse, &protocol conformance descriptor for FullPlannerResponse);
    sub_22C597FAC(&qword_27D9BE090, 255, type metadata accessor for FullPlannerResponse, &protocol conformance descriptor for FullPlannerResponse);
    *v28 = v1;
    v28[1] = sub_22C58CF48;
    v30 = *(v1 + 344);
    v29 = *(v1 + 352);
    v31 = *(v1 + 328);
    v32 = *(v1 + 336);

    return MEMORY[0x28215E710](v32, v54, v52, v29, &unk_22C91CE68, v27, v30, v31);
  }

  else
  {
    sub_22C36DD28(v1 + 96, &qword_27D9BE070, &qword_22C91CE48);
    sub_22C903F7C();
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (os_log_type_enabled(v33, v34))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v35, v36, "Could not run full planner; setup() has not been called before handle(_:)");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v38 = *(v1 + 208);
    v37 = *(v1 + 216);
    v39 = *(v1 + 200);

    (*(v38 + 8))(v37, v39);
    type metadata accessor for FullPlannerError(0);
    sub_22C380538();
    sub_22C597FAC(v40, 255, v41, &protocol conformance descriptor for FullPlannerError);
    swift_allocError();
    v43 = v42;
    sub_22C901E8C();
    v44 = sub_22C598F54();
    sub_22C36C640(v44, 10, 15, v45);
    swift_willThrow();
    sub_22C36DD28(v1 + 16, &qword_27D9BE070, &qword_22C91CE48);
    sub_22C598F24();
    sub_22C58D4F4(v43);

    sub_22C369A24();

    return v46();
  }
}

uint64_t sub_22C58CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*v9 + 464) = v8;

  if (v8)
  {

    v10 = sub_22C58D3B4;
  }

  else
  {

    v10 = sub_22C58D0AC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C58D0AC()
{
  v1 = v0[42];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  sub_22C4E719C(v1, v7 + v6, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C4E719C(v7 + v6, v2, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C4E7208(v2, v3, &qword_27D9BA808, &qword_22C90C6E0);
  if (sub_22C370B74(v3, 1, v5) == 1)
  {
    sub_22C36DD28(v0[32], &qword_27D9BA808, &qword_22C90C6E0);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *(v0[29] + 32);
    v9(v0[30], v0[32], v0[28]);
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590488();
      v8 = v21;
    }

    v10 = *(v8 + 16);
    if (v10 >= *(v8 + 24) >> 1)
    {
      sub_22C590488();
      v8 = v22;
    }

    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    *(v8 + 16) = v10 + 1;
    v9(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11, v13);
  }

  v14 = v0[53];
  v15 = v0[44];
  v16 = v0[42];

  swift_setDeallocating();
  sub_22C5901B4(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C381AC0();
  sub_22C58FF40(v16, v17);
  sub_22C598EE0();
  sub_22C58FF40(v15, v18);
  sub_22C36FF94(v0 + 7);
  sub_22C36DD28((v0 + 2), &qword_27D9BE070, &qword_22C91CE48);
  sub_22C58D4F4(v14);

  v19 = v0[1];

  return v19(v8);
}

uint64_t sub_22C58D3B4()
{
  v2 = *(v1 + 352);

  sub_22C598EE0();
  sub_22C58FF40(v2, v3);
  sub_22C36FF94((v1 + 56));
  sub_22C36DD28(v1 + 16, &qword_27D9BE070, &qword_22C91CE48);
  sub_22C598F24();
  sub_22C58D4F4(v0);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C58D4F4(uint64_t a1)
{
  v1 = sub_22C90637C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C90634C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "FullPlannerService.handle", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t FullPlannerRequest.init(transcript:)()
{
  sub_22C90880C();
  sub_22C36985C();
  v0 = sub_22C36BBCC();

  return v1(v0);
}

uint64_t sub_22C58D840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a1;
  v8 = sub_22C9063DC();
  v7[5] = v8;
  v7[6] = *(v8 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v9 = sub_22C908A0C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  type metadata accessor for Mediator.Outcome(0);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  v10 = swift_task_alloc();
  v7[19] = v10;
  *v10 = v7;
  v10[1] = sub_22C58DA78;

  return sub_22C3E3984();
}

uint64_t sub_22C58DA78()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_22C58E104;
  }

  else
  {
    v5 = sub_22C58DB80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C58DB80()
{
  v64 = v0;
  v1 = v0[17];
  v2 = v0[13];
  sub_22C597DD8(v0[18], v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[20];
    v4 = v0[18];
    sub_22C58FF40(v0[17], type metadata accessor for Mediator.Outcome);
    sub_22C58E1D4();
    sub_22C58FF40(v4, type metadata accessor for Mediator.Outcome);
    if (v3)
    {

      sub_22C369A24();
      goto LABEL_15;
    }

    v43 = v0[2];
    sub_22C36C640(v0[15], 0, 1, v0[9]);
    v44 = sub_22C36BBCC();
    sub_22C4E7208(v44, v45, v46, v47);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[9];
    sub_22C4E7208(v0[17], v0[16], &qword_27D9BA808, &qword_22C90C6E0);
    v8 = sub_22C36BBCC();
    sub_22C4E719C(v8, v9, &qword_27D9BA808, &qword_22C90C6E0);
    if (sub_22C370B74(v6, 1, v7) == 1)
    {
      sub_22C36DD28(v0[14], &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C903F7C();
      v10 = sub_22C9063CC();
      v11 = sub_22C90AADC();
      if (os_log_type_enabled(v10, v11))
      {
        sub_22C3720F4();
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v12, v13, "Could not run full planner. Returning empty response");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v14 = v0[18];
      v15 = v0[16];
      v17 = v0[8];
      v16 = v0[9];
      v18 = v0[5];
      v19 = v0[6];
      v20 = v0[2];

      (*(v19 + 8))(v17, v18);
      sub_22C36DD28(v15, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      sub_22C58FF40(v14, v21);
      sub_22C36C640(v20, 1, 1, v16);
      sub_22C598F9C();
      *(v20 + v22) = xmmword_22C9114A0;
      goto LABEL_14;
    }

    v23 = *(v0[10] + 32);
    v23(v0[12], v0[14], v0[9]);
    sub_22C903F7C();
    v24 = sub_22C36BA00();
    v25(v24);
    v26 = sub_22C9063CC();
    v60 = sub_22C90AACC();
    v27 = os_log_type_enabled(v26, v60);
    v28 = v0[18];
    v29 = v0[16];
    v30 = v0[6];
    v61 = v0[5];
    v62 = v0[7];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v59 = v23;
      v32 = swift_slowAlloc();
      v63 = v32;
      *v31 = 136315138;
      sub_22C389084();
      sub_22C597FAC(v33, 255, v34, MEMORY[0x277D1E8B0]);
      v57 = v29;
      v58 = v28;
      v35 = sub_22C90B47C();
      v37 = v36;
      v38 = sub_22C36BBCC();
      v39(v38);
      v40 = sub_22C36F9F4(v35, v37, &v63);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_22C366000, v26, v60, "Response: %s", v31, 0xCu);
      sub_22C36FF94(v32);
      v23 = v59;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v30 + 8))(v62, v61);
      sub_22C36DD28(v57, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      v42 = v58;
    }

    else
    {

      v48 = sub_22C36BBCC();
      v49(v48);
      (*(v30 + 8))(v62, v61);
      sub_22C36DD28(v29, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      v42 = v28;
    }

    sub_22C58FF40(v42, v41);
    v50 = v0[9];
    v43 = v0[2];
    v23(v43, v0[12], v50);
    v51 = sub_22C37049C();
    sub_22C36C640(v51, v52, v53, v50);
  }

  sub_22C598F9C();
  v55 = (v43 + v54);
  *v55 = 0;
  v55[1] = 0;
LABEL_14:

  sub_22C369A24();
LABEL_15:

  return v5();
}

uint64_t sub_22C58E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C58E1D4()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22C366000, v4, v5, "Hand off not yet supported!", v6, 2u);
    MEMORY[0x2318B9880](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for FullPlannerError(0);
  sub_22C597FAC(qword_27D9BB910, 255, type metadata accessor for FullPlannerError, &protocol conformance descriptor for FullPlannerError);
  swift_allocError();
  v8 = v7;
  v9 = sub_22C901E8C();
  sub_22C36C640(v8, 6, 15, v9);
  return swift_willThrow();
}

uint64_t FullPlannerResponse.init(event:status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  sub_22C4E7208(a1, a3, &qword_27D9BA808, &qword_22C90C6E0);
  result = sub_22C598F9C();
  v8 = (a3 + v7);
  *v8 = v4;
  v8[1] = v5;
  return result;
}

uint64_t FullPlannerService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D920];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C58E4C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0B10;

  return FullPlannerService.handle(_:plannerServiceContext:)();
}

uint64_t FullPlannerRequest.transcript.getter()
{
  sub_22C90880C();
  sub_22C36985C();
  v0 = sub_22C36BA00();

  return v1(v0);
}

uint64_t sub_22C58E5E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C58E684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58E5E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C58E6B0(uint64_t a1)
{
  v2 = sub_22C597FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58E6EC(uint64_t a1)
{
  v2 = sub_22C597FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerRequest.encode(to:)(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BE0A0, &qword_22C91CE78);
  sub_22C369824();
  v4 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_22C374168(a1, a1[3]);
  sub_22C597FF4();
  sub_22C90B6CC();
  sub_22C90880C();
  sub_22C37B2EC();
  sub_22C597FAC(v8, 255, v9, MEMORY[0x277D1E630]);
  sub_22C90B41C();
  return (*(v4 + 8))(v7, v2);
}

void FullPlannerRequest.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v25 = v3;
  v4 = sub_22C90880C();
  sub_22C369824();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v27 = v8 - v7;
  v9 = sub_22C3A5908(&qword_27D9BE0B8, &qword_22C91CE80);
  sub_22C369824();
  v26 = v10;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for FullPlannerRequest(0);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  sub_22C374168(v2, v2[3]);
  sub_22C597FF4();
  sub_22C90B6BC();
  if (!v0)
  {
    v20 = v24;
    v19 = v25;
    sub_22C37B2EC();
    sub_22C597FAC(v21, 255, v22, MEMORY[0x277D1E638]);
    sub_22C90B32C();
    (*(v26 + 8))(v13, v9);
    (*(v20 + 32))(v18, v27, v4);
    sub_22C598048(v18, v19);
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t FullPlannerResponse.status.getter@<X0>(uint64_t *a2@<X8>)
{
  sub_22C598F9C();
  v5 = (v2 + v4);
  v6 = *v5;
  v7 = v5[1];
  *a2 = *v5;
  a2[1] = v7;

  return sub_22C5980A0(v6, v7);
}

uint64_t sub_22C58EB70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022C932640 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72456E776F726874 && a2 == 0xEB00000000726F72)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C58EC8C(char a1)
{
  if (!a1)
  {
    return 0x73736563637573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x72456E776F726874;
}

uint64_t sub_22C58ECF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C932660 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C58ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58EB70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C58EDBC(uint64_t a1)
{
  v2 = sub_22C5980B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EDF8(uint64_t a1)
{
  v2 = sub_22C5980B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EE34(uint64_t a1)
{
  v2 = sub_22C59815C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EE70(uint64_t a1)
{
  v2 = sub_22C59815C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EEAC(uint64_t a1)
{
  v2 = sub_22C5981B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EEE8(uint64_t a1)
{
  v2 = sub_22C5981B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58ECF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C58EF54(uint64_t a1)
{
  v2 = sub_22C598108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EF90(uint64_t a1)
{
  v2 = sub_22C598108();

  return MEMORY[0x2821FE720](a1, v2);
}

void FullPlannerResponse.Status.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  a23 = v27;
  a24 = v28;
  v61 = v25;
  v30 = v29;
  sub_22C3A5908(&qword_27D9BE0C8, &qword_22C91CE88);
  sub_22C369824();
  v59 = v32;
  v60 = v31;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v58 = v34;
  sub_22C3A5908(&qword_27D9BE0D0, &qword_22C91CE90);
  sub_22C369824();
  v56 = v36;
  v57 = v35;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  v55 = v38;
  sub_22C3A5908(&qword_27D9BE0D8, &qword_22C91CE98);
  sub_22C369824();
  v53 = v40;
  v54 = v39;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C3717BC();
  v42 = sub_22C3A5908(&qword_27D9BE0E0, &qword_22C91CEA0);
  sub_22C369824();
  v44 = v43;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  v47 = &v52 - v46;
  v48 = v24[1];
  v52 = *v24;
  sub_22C374168(v30, v30[3]);
  sub_22C5980B4();
  sub_22C90B6CC();
  if (v48)
  {
    if (v48 != 1)
    {
      a14 = 2;
      sub_22C598108();
      v50 = v58;
      sub_22C598F60(&type metadata for FullPlannerResponse.Status.ThrownErrorCodingKeys, &a14);
      v51 = v60;
      sub_22C90B3CC();
      (*(v59 + 8))(v50, v51);
      (*(v44 + 8))(v47, v42);
      goto LABEL_7;
    }

    a13 = 1;
    sub_22C59815C();
    v49 = v55;
    sub_22C598F60(&type metadata for FullPlannerResponse.Status.NoClientResponseCodingKeys, &a13);
    (*(v56 + 8))(v49, v57);
  }

  else
  {
    a12 = 0;
    sub_22C5981B0();
    sub_22C598F60(&type metadata for FullPlannerResponse.Status.SuccessCodingKeys, &a12);
    (*(v53 + 8))(v26, v54);
  }

  (*(v44 + 8))(v47, v42);
LABEL_7:
  sub_22C36FB20();
}

void FullPlannerResponse.Status.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  a23 = v25;
  a24 = v26;
  v86 = v24;
  v28 = v27;
  v83 = v29;
  v79 = sub_22C3A5908(&qword_27D9BE108, &qword_22C91CEA8);
  sub_22C369824();
  v82 = v30;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C36D5B4();
  v85 = v32;
  sub_22C3A5908(&qword_27D9BE110, &qword_22C91CEB0);
  sub_22C369824();
  v80 = v34;
  v81 = v33;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v37 = &v75 - v36;
  v38 = sub_22C3A5908(&qword_27D9BE118, &qword_22C91CEB8);
  sub_22C369824();
  v78 = v39;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  v42 = &v75 - v41;
  v43 = sub_22C3A5908(&qword_27D9BE120, &unk_22C91CEC0);
  sub_22C369824();
  v84 = v44;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  v47 = &v75 - v46;
  sub_22C374168(v28, v28[3]);
  sub_22C5980B4();
  v48 = v86;
  sub_22C90B6BC();
  if (v48)
  {
    goto LABEL_10;
  }

  v76 = v38;
  v77 = v42;
  v86 = v28;
  v49 = v47;
  sub_22C90B34C();
  sub_22C3E1F24();
  if (v51 == v52 >> 1)
  {
LABEL_9:
    v63 = sub_22C90AFBC();
    swift_allocError();
    v65 = v64;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v65 = &type metadata for FullPlannerResponse.Status;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v84 + 8))(v49, v43);
    v28 = v86;
LABEL_10:
    sub_22C36FF94(v28);
LABEL_11:
    sub_22C36FB20();
    return;
  }

  v75 = 0;
  if (v51 < (v52 >> 1))
  {
    v53 = v47;
    v54 = *(v50 + v51);
    sub_22C3E1F20();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      if (v54)
      {
        if (v54 != 1)
        {
          a14 = 2;
          sub_22C598108();
          sub_22C38C3A8(&type metadata for FullPlannerResponse.Status.ThrownErrorCodingKeys, &a14);
          v67 = v83;
          v61 = sub_22C90B2DC();
          v62 = v70;
          swift_unknownObjectRelease();
          v71 = sub_22C598F7C();
          v72(v71);
          v73 = sub_22C598EF8();
          v74(v73);
LABEL_15:
          *v67 = v61;
          v67[1] = v62;
          sub_22C36FF94(v86);
          goto LABEL_11;
        }

        a13 = 1;
        sub_22C59815C();
        sub_22C38C3A8(&type metadata for FullPlannerResponse.Status.NoClientResponseCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v80 + 8))(v37, v81);
        v59 = sub_22C598F44();
        v60(v59);
        v61 = 0;
        v62 = 1;
      }

      else
      {
        a12 = 0;
        sub_22C5981B0();
        v66 = v77;
        sub_22C38C3A8(&type metadata for FullPlannerResponse.Status.SuccessCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v78 + 8))(v66, v76);
        v68 = sub_22C598F44();
        v69(v68);
        v61 = 0;
        v62 = 0;
      }

      v67 = v83;
      goto LABEL_15;
    }

    v49 = v53;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22C58F8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C58F96C(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t sub_22C58F9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58F8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C58F9FC(uint64_t a1)
{
  v2 = sub_22C598204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58FA38(uint64_t a1)
{
  v2 = sub_22C598204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerResponse.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22C3A5908(&qword_27D9BE128, &qword_22C91CED0);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3717BC();
  sub_22C374168(a1, a1[3]);
  sub_22C598204();
  sub_22C90B6CC();
  sub_22C908A0C();
  sub_22C389084();
  sub_22C597FAC(v10, 255, v11, MEMORY[0x277D1E898]);
  sub_22C90B3AC();
  if (!v2)
  {
    v12 = (v4 + *(type metadata accessor for FullPlannerResponse(0) + 20));
    v14 = *v12;
    v15 = v12[1];
    sub_22C5980A0(*v12, v15);
    sub_22C598258();
    sub_22C90B41C();
    sub_22C5982AC(v14, v15);
  }

  return (*(v8 + 8))(v3, v6);
}

void FullPlannerResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v25 = v24;
  v49 = v26;
  v27 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &v48 - v29;
  sub_22C3A5908(&qword_27D9BE148, qword_22C91CED8);
  sub_22C369824();
  v50 = v32;
  v51 = v31;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  v35 = &v48 - v34;
  v36 = type metadata accessor for FullPlannerResponse(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v40 = v39 - v38;
  sub_22C374168(v25, v25[3]);
  sub_22C598204();
  sub_22C90B6BC();
  if (v23)
  {
    sub_22C36FF94(v25);
  }

  else
  {
    v48 = v36;
    v41 = v40;
    v42 = v50;
    sub_22C908A0C();
    LOBYTE(v52) = 0;
    sub_22C389084();
    sub_22C597FAC(v43, 255, v44, MEMORY[0x277D1E8A8]);
    v45 = v51;
    sub_22C90B2BC();
    sub_22C4E7208(v30, v41, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C5982C0();
    sub_22C90B32C();
    (*(v42 + 8))(v35, v45);
    v46 = v49;
    *(v41 + *(v48 + 20)) = v52;
    sub_22C597DD8(v41, v46);
    sub_22C36FF94(v25);
    sub_22C381AC0();
    sub_22C58FF40(v41, v47);
  }

  sub_22C36FB20();
}

uint64_t sub_22C58FF40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C58FFC4()
{
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C5900D4(void (*a1)(void))
{
  a1(0);
  sub_22C3699C8();
  sub_22C36BA94();
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C590158(uint64_t *a1, uint64_t *a2)
{
  sub_22C3A5908(a1, a2);
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C5901B4(uint64_t *a1, uint64_t *a2)
{
  sub_22C3A5908(a1, a2);
  sub_22C3699C8();
  sub_22C36BA94();
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

void sub_22C5902F8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE328, &qword_22C91D8A8);
  sub_22C374410();
  sub_22C903B1C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6EA0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5903C0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BACF0, &unk_22C90D590);
  sub_22C374410();
  sub_22C9093BC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6EB8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590488()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAE10, &unk_22C91DB10);
  sub_22C374410();
  sub_22C908A0C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6ED0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590550()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3B8, &qword_22C91D968);
  v8 = sub_22C374410();
  type metadata accessor for DependencyId(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D6EE8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590648()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3C0, &qword_22C91D970);
  sub_22C374410();
  sub_22C90098C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F20(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590710()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3D0, &unk_22C91D980);
  sub_22C374410();
  sub_22C900ACC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F38(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5907D8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3C8, &qword_22C91D978);
  sub_22C374410();
  sub_22C900A9C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F50(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5908A0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE4B0, &unk_22C9237B0);
  sub_22C374410();
  sub_22C9089DC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F68(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590968()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC90, &unk_22C90D530);
  sub_22C374410();
  sub_22C9037EC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F80(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590A30()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE320, &qword_22C91D8A0);
  sub_22C374410();
  sub_22C906ECC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6FE0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590AF8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE318, &qword_22C91D898);
  v8 = sub_22C374410();
  type metadata accessor for DialogValue(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D6FF8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590BE8()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE490, &qword_22C91DAF0);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE498, &qword_22C91DAF8);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C590C9C()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE4A0, &qword_22C91DB00);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE4A8, &qword_22C91DB08);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C590D50()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAF68, &qword_22C90D810);
  sub_22C374410();
  sub_22C90133C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7010(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590E40()
{
  sub_22C386510();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C3BD99C();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C373588(v14);
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C3BD9CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_22C598F90();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C590EF0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BBCF0, &unk_22C91DC20);
  sub_22C374410();
  sub_22C9074AC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7068(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591078()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAE08, &unk_22C90D6B0);
  sub_22C374410();
  sub_22C9036EC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7098(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591170()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0 || (sub_22C37259C(), v5 == v6))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v3)
    {
      v7 = sub_22C3A5908(&qword_27D9BAB20, &qword_22C90D3C0);
      v8 = sub_22C3815EC(v7);
      sub_22C36BF48(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_22C388528();
        sub_22C3D8758(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 24 * v2);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v5)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59122C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAED0, &unk_22C91DAA0);
  v8 = sub_22C374410();
  type metadata accessor for PromptTreeIdentifier(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D70C8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591324()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C5913D8()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE468, &qword_22C91DAB8);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE470, &qword_22C91DAC0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59148C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAEF0, &qword_22C91DAB0);
  v8 = sub_22C374410();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D710C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591554()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAE98, &qword_22C90D740);
  v8 = sub_22C374410();
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7124(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59161C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAF88, &unk_22C917A10);
  v8 = sub_22C374410();
  type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7180(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5916E4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC20, &unk_22C90D4C0);
  sub_22C374410();
  sub_22C9070DC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7198(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5917AC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC88, &unk_22C91DAD0);
  sub_22C374410();
  sub_22C9084CC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D71B0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591874()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE478, &qword_22C91DAC8);
  v8 = sub_22C374410();
  type metadata accessor for DynamicEnumeration.Case(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D71C8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59193C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAFE0, &qword_22C90D880);
  sub_22C374410();
  sub_22C9090BC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D71E0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591A04()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BB048, &qword_22C91B500);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D71F8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591AD0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAFB0, &qword_22C90D850);
  sub_22C374410();
  sub_22C90952C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7230(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591B98()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE4F0, &qword_22C91DB70);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE4F8, &unk_22C91DB78);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C591C4C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABC0, &unk_22C90D460);
  sub_22C374410();
  sub_22C908EAC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7248(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591D14()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BB058, qword_22C919D00);
  v8 = sub_22C374410();
  type metadata accessor for _PromptToolData(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7260(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591DDC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BB060, &qword_22C90D900);
  v8 = sub_22C374410();
  type metadata accessor for RenderableTool(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7278(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591EA4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE4E8, &qword_22C91DB68);
  sub_22C374410();
  sub_22C9099FC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7290(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591F9C()
{
  sub_22C37FE44();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C372074();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C370238(v14);
      sub_22C372374();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C36FB10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_22C3797A8();
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59204C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BACA0, &qword_22C90D540);
  sub_22C374410();
  sub_22C90822C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6F98(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592114()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAFD8, &qword_22C90D878);
  sub_22C374410();
  sub_22C909A3C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D72D8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5921DC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD18, &unk_22C91D990);
  sub_22C374410();
  sub_22C90430C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D72F0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5922A4()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BAB10, &unk_22C90D3B0);
      v7 = sub_22C3815EC(v6);
      sub_22C36BF48(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D8768(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BAB18, &qword_22C91D700);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59238C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC98, &qword_22C91DBD0);
  sub_22C374410();
  sub_22C9081CC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D6FB0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592484()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAE80, &qword_22C90D728);
  sub_22C374410();
  sub_22C902D0C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D72A8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5925A4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2D8, &qword_22C91D850);
  sub_22C374410();
  sub_22C9088CC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7374(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59266C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD28, &qword_22C91B1B0);
  sub_22C374410();
  sub_22C90981C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7168(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592734()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BBBA0, &qword_22C910FA0);
  v8 = sub_22C374410();
  type metadata accessor for CompletionPromptProperty(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D73A4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5927FC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAE50, &unk_22C911F80);
  sub_22C374410();
  sub_22C90827C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D73D4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5928C4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE460, &qword_22C91DA98);
  sub_22C374410();
  sub_22C90839C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D73EC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59298C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC28, &unk_22C911F40);
  sub_22C374410();
  sub_22C901FAC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D735C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592A54()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BB0C8, &qword_22C90D968);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7440(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592B20()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BC3A8, &qword_22C91DBE0);
  v8 = sub_22C374410();
  type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7454(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592BE8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE538, &qword_22C91DBE8);
  sub_22C374410();
  sub_22C90998C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D746C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592CB0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE518, &unk_22C91DBA0);
  sub_22C374410();
  sub_22C90993C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7484(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592D78()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE570, &qword_22C91DC40);
  v8 = sub_22C374410();
  type metadata accessor for QueryDecorationDynamicEnumerationQuery(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D749C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592E40()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE578, &qword_22C91DC48);
  sub_22C374410();
  sub_22C908ABC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D74B4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592F08()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAEF8, &unk_22C90D7A0);
  v8 = sub_22C374410();
  type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D74E4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592FD0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE548, &qword_22C91DC00);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D74FC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59309C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE550, &qword_22C91DC08);
  v8 = sub_22C374410();
  type metadata accessor for DynamicEnumeration(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7510(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593164()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE540, &unk_22C91DBF0);
  sub_22C374410();
  sub_22C9079FC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7528(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59322C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE560, &qword_22C91DC30);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7568(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5932F8()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE4C0, &qword_22C91DB20);
      v7 = sub_22C3815EC(v6);
      sub_22C36BF48(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D876C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE4C8, &qword_22C91DB28);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C5933B8()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BDA50, &qword_22C91A3A8);
      v7 = sub_22C3815EC(v6);
      sub_22C36BF48(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D876C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BDA48, &qword_22C91A3A0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C593478()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE4D8, &unk_22C91DB50);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D75E0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59356C()
{
  sub_22C386510();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C3BD99C();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C370238(v14);
      sub_22C372374();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C3BD9CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_22C598F90();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C593624()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BB098, &qword_22C91DBB0);
  v8 = sub_22C374410();
  type metadata accessor for ContextualEntityRenderingData(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D760C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5936EC()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE520, &unk_22C91DBB8);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BDBB8, qword_22C91AC90);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C5937A0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BDED8, &qword_22C91C4B8);
  v8 = sub_22C374410();
  type metadata accessor for SegmentedPrompt.Segment(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7624(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593898()
{
  sub_22C37FE44();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C372074();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C373588(v14);
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C36FB10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_22C3797A8();
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C593968()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v9 = sub_22C3A5908(&qword_27D9BE2E0, &qword_22C91D858);
      v10 = sub_22C3815EC(v9);
      v6 = sub_22C36BF48(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_22C388528();
        sub_22C3D7650(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22C598EC4(v6, v7, v8, &type metadata for Statement);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C593A1C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2D0, &qword_22C91D848);
  v8 = sub_22C374410();
  type metadata accessor for PlanOverridesService.EventReference(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7678(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593AE4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BADB0, &qword_22C90D658);
  sub_22C374410();
  sub_22C900C9C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D76C0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593BAC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE408, &qword_22C91DA20);
  sub_22C374410();
  sub_22C900B4C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D76F0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593C74()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BADA8, &qword_22C90D650);
  sub_22C374410();
  sub_22C900BDC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D76D8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593D3C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE400, &unk_22C91DA10);
  sub_22C374410();
  sub_22C90926C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7708(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593E04()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3F8, &qword_22C91DA08);
  sub_22C374410();
  sub_22C9009AC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7720(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593ECC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABE8, &unk_22C91DA70);
  sub_22C374410();
  sub_22C9032BC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7738(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593F94()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3E0, &unk_22C91D9C0);
  sub_22C374410();
  sub_22C903B9C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7750(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59405C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD48, &qword_22C90D5E8);
  sub_22C374410();
  sub_22C900A4C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7768(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59419C()
{
  sub_22C386510();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C3BD99C();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C3BD9CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_22C598F90();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594288()
{
  sub_22C37FE44();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C372074();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      sub_22C370238(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 40);
      if (v2)
      {
LABEL_8:
        v16 = sub_22C36FB10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_22C3797A8();
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59434C()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BABA0, &unk_22C90D440);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BABA8, &unk_22C91D790);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594400()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2B8, &qword_22C91D818);
  v8 = sub_22C374410();
  type metadata accessor for JointResolution.CandidateInteraction(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7798(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5944C8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2C0, &unk_22C91D820);
  v8 = sub_22C374410();
  type metadata accessor for JointResolution.TupleInteraction(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D77B0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594590()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE438, &qword_22C91DA58);
  sub_22C374410();
  sub_22C90960C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D77C8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594658()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v9 = sub_22C3A5908(&qword_27D9BE2C8, &qword_22C91D840);
      v10 = sub_22C3815EC(v9);
      v6 = sub_22C36BF48(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_22C388528();
        sub_22C3D77E0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22C598EC4(v6, v7, v8, &_s24CandidateSimilarityScoreVN);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59475C()
{
  sub_22C386510();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C3BD99C();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C370238(v14);
      sub_22C372374();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C3BD9CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_22C598F90();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594814()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE258, &unk_22C91D760);
  sub_22C374410();
  sub_22C90625C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7828(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5948DC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2A8, &qword_22C91D800);
  sub_22C374410();
  sub_22C90508C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7840(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5949A4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2B0, &unk_22C91D808);
  sub_22C374410();
  sub_22C904E9C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7858(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594A6C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2A0, &qword_22C91D7F8);
  sub_22C374410();
  sub_22C90522C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7870(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594B34()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE298, &unk_22C91D7E8);
  sub_22C374410();
  sub_22C9052EC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7888(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594BFC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE290, &qword_22C91D7E0);
  sub_22C374410();
  sub_22C90500C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D78A0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594CC4()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BAC00, &unk_22C90D4A0);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BAC08, &unk_22C91D830);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594D78()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0 || (sub_22C37259C(), v5 == v6))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v3)
    {
      sub_22C3A5908(&qword_27D9BE428, &qword_22C91DA48);
      v7 = sub_22C3BD968();
      sub_22C370238(v7);
      sub_22C372374();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_22C388528();
        sub_22C3D78B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 2 * v2);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v5)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594E38()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE430, &qword_22C91DA50);
  v8 = sub_22C374410();
  _s14TypedCandidateVMa(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D78D8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C594F00()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE418, &qword_22C91DA38);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE420, &qword_22C91DA40);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C594FB4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BACF8, &qword_22C91DA30);
  sub_22C374410();
  sub_22C9025EC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D76A8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59507C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE3F0, &qword_22C91DA00);
  sub_22C374410();
  sub_22C90665C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D78F0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595144()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD10, &unk_22C90D5B0);
  sub_22C374410();
  sub_22C9066DC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7908(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59520C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE410, &qword_22C91DA28);
  sub_22C374410();
  sub_22C90832C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7920(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5952D4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE448, &qword_22C91DA68);
  v8 = sub_22C374410();
  _s5TupleVMa(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7938(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59539C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD30, &unk_22C90D5D0);
  sub_22C374410();
  sub_22C908C5C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7950(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595464()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE440, &qword_22C91DA60);
  sub_22C374410();
  sub_22C9069BC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7968(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59552C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BACE0, &qword_22C90D580);
  sub_22C374410();
  sub_22C90021C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7980(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5955F4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE3D8, &unk_22C91D9A0);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D79C4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5956C0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BAD38, &unk_22C91D9B0);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D79D8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5957C0()
{
  sub_22C37FE44();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C372074();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = sub_22C3BD968();
      sub_22C370238(v14);
      sub_22C372374();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_22C36FB10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_22C3797A8();
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C595870()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE3E8, &qword_22C91D9D8);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7A28(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59593C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD08, &unk_22C91D9F0);
  sub_22C374410();
  sub_22C906D2C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D79AC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595A04()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BAF78, &unk_22C90D820);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7A3C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595AD0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAD00, &unk_22C90D5A0);
  v8 = sub_22C374410();
  type metadata accessor for CandidateWithDependencies(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7A50(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595B98()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABE0, &unk_22C90D480);
  v8 = sub_22C374410();
  type metadata accessor for LocationEvent(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7780(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595C60()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BACC8, &unk_22C91D940);
  sub_22C374410();
  sub_22C90399C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7A7C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595D28()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE380, &qword_22C91D900);
  sub_22C374410();
  sub_22C903CCC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7A94(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595E20()
{
  sub_22C37FE44();
  if ((v5 & 1) == 0 || (sub_22C37259C(), v6 == v7))
  {
LABEL_6:
    sub_22C372074();
    if (v4)
    {
      sub_22C386714(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      sub_22C370238(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 24);
      if (v2)
      {
LABEL_8:
        v16 = sub_22C36FB10();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_22C3797A8();
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C595EE4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABB8, &qword_22C90D458);
  v8 = sub_22C374410();
  type metadata accessor for RetrievedToolWithAttribution(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7AAC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C595FAC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE270, &qword_22C91D7B8);
  v8 = sub_22C374410();
  type metadata accessor for QueryDecorationTupleParameter(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7AC4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596074()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE278, &qword_22C91D7C0);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE280, &qword_22C91D7C8);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C596128()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABC8, &qword_22C91D7A0);
  v8 = sub_22C374410();
  type metadata accessor for QueryDecorationTuple(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7ADC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5961F0()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE260, &qword_22C91D7A8);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE268, &qword_22C91D7B0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C5962A4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE288, &unk_22C91D7D0);
  v8 = sub_22C374410();
  type metadata accessor for QueryDecorationEntity(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7AF4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59636C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE3A0, &unk_22C91D930);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7B0C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596438()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE398, &unk_22C91D920);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7B20(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596504()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE238, &qword_22C91D740);
  sub_22C374410();
  sub_22C905B4C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7B48(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5965CC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE240, &qword_22C91D748);
  sub_22C374410();
  sub_22C90613C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7B60(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596694()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE248, &qword_22C91D750);
  sub_22C374410();
  sub_22C905E6C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7B78(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59675C()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE388, &qword_22C91D908);
      v7 = sub_22C3815EC(v6);
      sub_22C36BF48(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D8764(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE390, &unk_22C91D910);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C59681C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE378, &qword_22C91D8F8);
  sub_22C374410();
  sub_22C9061AC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7BA8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5968E4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE370, &qword_22C91D8F0);
  sub_22C374410();
  sub_22C90599C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7BD8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5969AC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE250, &qword_22C91D758);
  sub_22C374410();
  sub_22C905DCC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7C08(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596A74()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE368, &qword_22C91D8E8);
  v8 = sub_22C374410();
  type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v8);
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v10 = sub_22C386F18(v9);
    sub_22C3D7C20(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596B3C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE360, &unk_22C91D8D8);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7C38(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596C08()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BABB0, &qword_22C90D450);
  sub_22C374410();
  sub_22C9039FC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D75F4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596CD0()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BAB48, &unk_22C91D6F0);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C596D84()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0 || (sub_22C37259C(), v5 == v6))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v3)
    {
      sub_22C3A5908(&qword_27D9BE350, &qword_22C91D8D0);
      v7 = sub_22C3BD968();
      sub_22C370238(v7);
      sub_22C372374();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_22C388528();
        sub_22C3D78B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 2 * v2);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v5)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C596E44()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE208, &qword_22C91D708);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7CA4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596F10()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BE210, &qword_22C91D718);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7CB8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C596FDC()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE218, &qword_22C91D720);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE220, &qword_22C91D728);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C597090()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE348, &qword_22C92CFF0);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    type metadata accessor for NLTagScheme(0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C597138()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE338, &qword_22C91D8B8);
      v7 = sub_22C3815EC(v6);
      sub_22C36BF48(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D8764(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE340, &unk_22C91D8C0);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22C5971F8()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v9 = sub_22C3A5908(&qword_27D9BE330, &qword_22C91D8B0);
      v10 = sub_22C3815EC(v9);
      v6 = sub_22C36BF48(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_22C388528();
        sub_22C3D7590(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22C598EC4(v6, v7, v8, &type metadata for ResponseValidationResult);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}