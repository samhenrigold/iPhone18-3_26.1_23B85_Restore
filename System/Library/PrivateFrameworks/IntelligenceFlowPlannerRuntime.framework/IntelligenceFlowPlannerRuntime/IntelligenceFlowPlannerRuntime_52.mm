void sub_22C83E124()
{
  sub_22C36BA7C();
  v70 = v0;
  v71 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v73 = &v66 - v18;
  v19 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v72 = &v66 - v21;
  v22 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  v26 = sub_22C903CAC();
  if (v27)
  {
    v66 = v27;
    v67 = v26;
    v68 = v9;
    v28 = sub_22C908D2C();
    sub_22C36D0A8(v11, 1, v28);
    v69 = v7;
    if (v41)
    {
      v29 = sub_22C903C6C();
      v31 = v30;
    }

    else
    {
      v37 = sub_22C36CA88();
      sub_22C6AEA50(v37, v38, v39, v40);
      sub_22C36D0A8(v25, 1, v28);
      if (v41)
      {
        sub_22C376B84(v25, &qword_27D9C06C8, &qword_22C929790);
        v29 = 0;
        v31 = 0;
      }

      else
      {
        v29 = sub_22C908D1C();
        v31 = v42;
        sub_22C36BBA8();
        (*(v43 + 8))(v25, v28);
      }
    }

    v44 = v68;
    v45 = v13 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_intelligenceFlowSessionId;
    v46 = v72;
    sub_22C6AEA50(v45, v72, &qword_27D9C06F8, &qword_22C929520);
    sub_22C903BFC();

    v47 = v73;
    sub_22C903C7C();
    sub_22C903D4C();
    sub_22C36BECC();
    sub_22C36C640(v48, v49, v50, v51);
    if (v31)
    {
      *v15 = v29;
      v15[1] = v31;
      sub_22C3A5908(v70, v71);
      sub_22C36A724();
      swift_storeEnumTagMultiPayload();
      sub_22C84BC74();
    }

    else
    {
      sub_22C3A5908(v70, v71);
      v52 = sub_22C3788F8();
    }

    sub_22C36C640(v52, v53, v54, v55);
    v56 = sub_22C3A5908(v5, v3);
    v57 = (v15 + v56[7]);
    v58 = v66;
    *v57 = v67;
    v57[1] = v58;
    v59 = (v15 + v56[8]);
    v60 = v69;
    *v59 = v44;
    v59[1] = v60;
    sub_22C84BE04(v56[9]);
    sub_22C6AE8BC(v46, v15 + *(v61 + 40), &qword_27D9C06F8, &qword_22C929520);
    sub_22C84BE04(v56[11]);
    *(v15 + v56[12]) = 0;
    sub_22C6AE8BC(v47, v15 + v56[13], &qword_27D9C0588, &qword_22C927FD0);
    sub_22C84BC74();
    sub_22C36C640(v62, v63, v64, v65);

    sub_22C36CC48();
  }

  else
  {
    sub_22C3A5908(v5, v3);
    sub_22C3788F8();
    sub_22C36CC48();

    sub_22C36C640(v32, v33, v34, v35);
  }
}

uint64_t sub_22C83E49C()
{
  sub_22C36BA7C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = sub_22C84BE94(v10);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_22C3A5908(v3, v9);
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v16, v17, v18, v19);
    sub_22C903BFC();

    sub_22C903C7C();
    sub_22C903D4C();
    sub_22C36BECC();
    sub_22C36C640(v20, v21, v22, v23);
    sub_22C3A5908(v7, v5);
    v24 = sub_22C3788F8();
    sub_22C36C640(v24, v25, v26, v27);
    v28 = (v1 + v15[7]);
    *v28 = v13;
    v28[1] = v14;
    v29 = (v1 + v15[8]);
    *v29 = v2;
    v29[1] = v0;
    sub_22C84BE04(v15[9]);
    sub_22C84BE04(v15[11]);
    *(v1 + v15[12]) = 0;
    sub_22C36BECC();
    sub_22C36C640(v30, v31, v32, v15);
    sub_22C36CC48();
  }

  else
  {
    sub_22C3A5908(v3, v9);
    sub_22C3788F8();
    sub_22C36CC48();

    return sub_22C36C640(v35, v36, v37, v38);
  }
}

uint64_t sub_22C83E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v6[9] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C0A08, &unk_22C9298F0);
  v6[10] = swift_task_alloc();
  v6[11] = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v6[12] = swift_task_alloc();
  v9 = swift_allocObject();
  v6[13] = v9;
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;

  return MEMORY[0x2822009F8](sub_22C83E734, 0, 0);
}

uint64_t sub_22C83E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C386E28();
  v12 = sub_22C3788F8();
  sub_22C36C640(v12, v13, v14, v15);

  v16 = sub_22C84BC2C();
  sub_22C83CEA8(v16, v17, v18, v19, v20);
  sub_22C36D3E0(v10);
  if (v21)
  {
    sub_22C376B84(v11[10], &qword_27D9C0A08, &unk_22C9298F0);
    swift_task_alloc();
    sub_22C36CC90();
    v11[16] = v22;
    *v22 = v23;
    v22[1] = sub_22C83EA20;
    sub_22C84BF4C();
    sub_22C83AB2C();

    return sub_22C841508(v24, v25, v26);
  }

  else
  {
    v29 = sub_22C375DC8();
    sub_22C6AE8BC(v29, v30, &qword_27D9C0260, &unk_22C926740);
    sub_22C380640();
    sub_22C37A468();
    v43 = v31 + *v31;
    v32 = swift_task_alloc();
    v11[14] = v32;
    sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    sub_22C36CBD0();
    *v32 = v33;
    v32[1] = sub_22C83E928;
    sub_22C84BC14();
    sub_22C83AB2C();

    return v41(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43);
  }
}

uint64_t sub_22C83E928()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83EA20()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83EB18()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C0260, &unk_22C926740);
  sub_22C37DA50();

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C83EBC0()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C0260, &unk_22C926740);
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C83EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v6[9] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C09A0, &qword_22C9297D0);
  v6[10] = swift_task_alloc();
  v6[11] = sub_22C3A5908(&qword_27D9C09A8, &qword_22C9297D8);
  v6[12] = swift_task_alloc();
  v9 = swift_allocObject();
  v6[13] = v9;
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;

  return MEMORY[0x2822009F8](sub_22C83EDB8, 0, 0);
}

uint64_t sub_22C83EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C386E28();
  v12 = sub_22C3788F8();
  sub_22C36C640(v12, v13, v14, v15);

  v16 = sub_22C84BC2C();
  sub_22C83D01C(v16, v17, v18, v19, v20);
  sub_22C36D3E0(v10);
  if (v21)
  {
    sub_22C376B84(v11[10], &qword_27D9C09A0, &qword_22C9297D0);
    swift_task_alloc();
    sub_22C36CC90();
    v11[16] = v22;
    *v22 = v23;
    v22[1] = sub_22C83F0A4;
    sub_22C84BF4C();
    sub_22C83AB2C();

    return sub_22C848EE4(v24, v25, v26);
  }

  else
  {
    v29 = sub_22C375DC8();
    sub_22C6AE8BC(v29, v30, &qword_27D9C09A8, &qword_22C9297D8);
    sub_22C380640();
    sub_22C37A468();
    v43 = v31 + *v31;
    v32 = swift_task_alloc();
    v11[14] = v32;
    sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C36CBD0();
    *v32 = v33;
    v32[1] = sub_22C83EFAC;
    sub_22C84BC14();
    sub_22C83AB2C();

    return v41(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43);
  }
}

uint64_t sub_22C83EFAC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83F0A4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83F19C()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09A8, &qword_22C9297D8);
  sub_22C37DA50();

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C83F244()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09A8, &qword_22C9297D8);
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C83F2E4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C37DA50();

  sub_22C36D5E0();
  sub_22C7E4ED0();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22C83F374()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C84BEF0();

  sub_22C369A24();
  sub_22C7E4EBC();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22C83F3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  v6[9] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C09B8, &qword_22C929828);
  v6[10] = swift_task_alloc();
  v6[11] = sub_22C3A5908(&qword_27D9C09C0, &qword_22C929830);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C83F514, 0, 0);
}

uint64_t sub_22C83F514()
{
  sub_22C83AB14();
  v25 = v2;
  sub_22C3743E4();
  sub_22C386E28();
  v3 = sub_22C3788F8();
  sub_22C36C640(v3, v4, v5, v6);

  v7 = sub_22C84BC2C();
  sub_22C83D190(v7, v8, v9, v10, v11);
  sub_22C36D3E0(v0);
  if (!v12)
  {
    v18 = sub_22C375DC8();
    sub_22C6AE8BC(v18, v19, &qword_27D9C09C0, &qword_22C929830);
    sub_22C380640();
    sub_22C37A468();
    v20 = swift_task_alloc();
    v1[13] = v20;
    sub_22C903DCC();
    sub_22C36CBD0();
    *v20 = v21;
    v20[1] = sub_22C83F74C;
    sub_22C84BC14();
    sub_22C83AB2C();

    __asm { BRAA            X7, X16 }
  }

  v13 = v1[6];
  sub_22C376B84(v1[10], &qword_27D9C09B8, &qword_22C929828);
  v24 = (v13 + *v13);
  swift_task_alloc();
  sub_22C36CC90();
  v1[15] = v14;
  *v14 = v15;
  v14[1] = sub_22C83F844;
  v16 = sub_22C84BF4C();

  return v24(v16);
}

uint64_t sub_22C83F74C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83F844()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C83F93C()
{
  sub_22C36FB38();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09C0, &qword_22C929830);
  v1 = *(v0 + 16);

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C83F9D4()
{
  sub_22C36FB38();
  sub_22C376B84(*(v0 + 96), &qword_27D9C09C0, &qword_22C929830);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C83FA64()
{
  sub_22C36FB38();
  v1 = *(v0 + 16);

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C83FAE4()
{
  sub_22C36FB38();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C83FB5C()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C903D4C();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v1[17] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v1[18] = v6;
  sub_22C3699B8(v6);
  v1[19] = v7;
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C83FC5C()
{
  sub_22C6AEA50(*(v0 + 112) + 16, v0 + 16, &qword_27D9C0990, &qword_22C929780);
  sub_22C6AEA50(v0 + 16, v0 + 56, &qword_27D9C0990, &qword_22C929780);
  v2 = *(v0 + 80);
  sub_22C376B84(v0 + 56, &qword_27D9C0990, &qword_22C929780);
  if (!v2)
  {
    v46 = *(*(v0 + 104) + 104);
    if (v46)
    {

      sub_22C90400C();
      v47 = sub_22C9063CC();
      v48 = sub_22C90AACC();
      if (sub_22C37026C(v48))
      {
        v49 = sub_22C36D240();
        *v49 = 0;
        _os_log_impl(&dword_22C366000, v47, OS_LOG_TYPE_DEFAULT, "ToolRetriever is nil. Constructing one now using supplied toolbox", v49, 2u);
        sub_22C3699EC();
      }

      v1 = *(v0 + 112);

      v50 = sub_22C36D264();
      v51(v50);
      v52 = type metadata accessor for ToolRetrievalService(0);

      v53 = sub_22C36D264();
      v55 = ToolRetrievalService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolkitCache:)(v53, v54, v46, 0);

      sub_22C376B84(v0 + 16, &qword_27D9C0990, &qword_22C929780);
      *(v0 + 16) = v55;
      *(v0 + 24) = v62;
      *(v0 + 40) = v52;
      *(v0 + 48) = &off_283FC14A8;
    }
  }

  sub_22C90400C();

  v3 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C84BE54();
  v4 = sub_22C84BE2C();
  v5 = *(v0 + 144);
  if (v4)
  {
    v61 = *(v0 + 160);
    sub_22C383050();
    sub_22C37ACD0();
    sub_22C36D450();
    *v1 = 136315394;
    sub_22C38ABD0();
    v8 = sub_22C36F9F4(0xD00000000000002ELL, v6, v7);
    sub_22C38C1F0(v8);
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v9, v10, MEMORY[0x277D1F110]);
    sub_22C381408();
    v11 = sub_22C90B47C();
    v12 = sub_22C84BBDC();
    v13(v12);
    v14 = sub_22C37170C();
    sub_22C36F9F4(v14, v15, v16);
    sub_22C37FF48();

    *(v1 + 14) = v11;
    sub_22C389318();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    sub_22C84BCAC(v22, v23, v24, v25, v26, v27, v28, v29, v56, v5, v59);
    sub_22C37E124();
    sub_22C370510();

    v38 = sub_22C84BD08(v30, v31, v32, v33, v34, v35, v36, v37, v57, v58, v60, v61);
  }

  else
  {

    v38 = sub_22C84BBF0();
  }

  v39(v38);
  sub_22C376B84(v0 + 16, &qword_27D9C0990, &qword_22C929780);
  sub_22C903F4C();
  sub_22C36A748();
  sub_22C36C640(v40, v41, v42, v43);

  sub_22C369C50();

  return v44();
}

uint64_t sub_22C840000()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C903D4C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v1[8] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[9] = v7;
  sub_22C3699B8(v7);
  v1[10] = v8;
  v1[11] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v9);
  v1[12] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  sub_22C369914(v10);
  v1[13] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  v1[14] = v11;
  sub_22C369914(v11);
  v1[15] = sub_22C3699D4();
  v12 = sub_22C90363C();
  v1[16] = v12;
  sub_22C3699B8(v12);
  v1[17] = v13;
  v1[18] = sub_22C3699D4();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C840650()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 168) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C840748()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C840840()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C376B84(*(v0 + 120), &qword_27D9C09D8, &qword_22C929850);

  sub_22C84BD40(v1, v2, v3, v4, v5, v6, v7, v8);

  sub_22C369C50();
  sub_22C7E4ED0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C840908()
{
  sub_22C3743E4();
  sub_22C376B84(*(v0 + 120), &qword_27D9C09D8, &qword_22C929850);

  sub_22C84BF28();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8409E0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();

  sub_22C84BD40(v0, v1, v2, v3, v4, v5, v6, v7);

  sub_22C369C50();
  sub_22C7E4ED0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22C840A8C()
{
  sub_22C3743E4();

  sub_22C84BF28();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C840B48()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_22C903D4C();
  v1[9] = v3;
  sub_22C3699B8(v3);
  v1[10] = v4;
  v1[11] = sub_22C3699D4();
  v5 = sub_22C9063DC();
  v1[12] = v5;
  sub_22C3699B8(v5);
  v1[13] = v6;
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v7 = sub_22C90363C();
  v1[16] = v7;
  sub_22C3699B8(v7);
  v1[17] = v8;
  v1[18] = sub_22C3699D4();
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C840F2C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    sub_22C369A24();

    return v6();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C84107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v20 = sub_22C83AB78();
  if (v20)
  {
    sub_22C90400C();

    v28 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C84BE54();
    v29 = sub_22C84BE2C();
    v30 = v16[12];
    v31 = v16[13];
    if (v29)
    {
      HIDWORD(a10) = v17;
      v32 = v16[9];
      v68 = v16[15];
      sub_22C36FB44();
      sub_22C388D58();
      sub_22C37E8D4();
      sub_22C84BED4(v33, 4.8149e-34);
      sub_22C36B838();
      sub_22C38694C(v34, v35, MEMORY[0x277D1F110]);
      sub_22C381408();
      v36 = sub_22C90B47C();
      a11 = v30;
      v37 = sub_22C375184();
      v38(v37, v32);
      v39 = sub_22C37170C();
      sub_22C36F9F4(v39, v40, v41);
      sub_22C37FF48();

      *(v18 + 4) = v36;
      sub_22C84BC84();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      sub_22C36FF94(v19);
      sub_22C36C30C();
      sub_22C370510();

      (*(v31 + 8))(v68, v30);
    }

    else
    {

      v56 = sub_22C84BBF0();
      v58(v56, v57);
    }

    sub_22C378AB0(v16[8] + 208, (v16 + 2));
    v59 = swift_task_alloc();
    v16[21] = v59;
    *v59 = v16;
    v59[1] = sub_22C8412C0;
    sub_22C386674(v16[7]);
    sub_22C36EC40();

    return v63(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, sub_22C7B85FC, a13, a14, a15, a16);
  }

  else
  {
    sub_22C380204(v20, v21, v22, v23, v24, v25, v26, v27);

    sub_22C371EA8();
    sub_22C36EC40();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_22C8412C0()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 176) = v0;

  if (v0)
  {
    sub_22C7B8E10(v5 + 16);
  }

  else
  {
    *(v5 + 184) = v3;
    sub_22C7B8E10(v5 + 16);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8413E8()
{
  sub_22C36FB38();
  v0 = sub_22C36BAFC();
  sub_22C8421B0(v0);
  sub_22C37FF48();

  sub_22C380204(v1, v2, v3, v4, v5, v6, v7, v8);

  v9 = sub_22C371EA8();

  return v10(v9);
}

uint64_t sub_22C841490()
{
  sub_22C36FB38();
  sub_22C380204(v0, v1, v2, v3, v4, v5, v6, v7);

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C841508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22C903D4C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22C9064EC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_22C90069C();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_22C90651C();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84173C, 0, 0);
}

uint64_t sub_22C84173C()
{
  sub_22C3743E4();
  v1 = v0[8];
  v2 = *(v1 + 88);
  sub_22C375EAC((v1 + 56));
  if (qword_27D9BA740 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  sub_22C84BC5C();
  v4();
  v0[25] = *(v3 + 96);
  sub_22C903CAC();
  if (v5)
  {
    sub_22C50B5FC();
  }

  else
  {
    sub_22C90068C();
    sub_22C90065C();
    sub_22C50B5FC();
    v6 = sub_22C372164();
    v7(v6);
  }

  v0[26] = v2;
  sub_22C900F8C();
  sub_22C903C6C();
  sub_22C9064CC();

  v8 = swift_task_alloc();
  v0[27] = v8;
  v9 = MEMORY[0x277D1D970];
  sub_22C38694C(&qword_28142FB00, MEMORY[0x277D1D970], MEMORY[0x277D1D980]);
  sub_22C38694C(qword_28142FB08, v9, MEMORY[0x277D1D978]);
  v10 = MEMORY[0x277D1D988];
  sub_22C38694C(&qword_28142FAF0, MEMORY[0x277D1D988], MEMORY[0x277D1D998]);
  sub_22C38694C(&qword_28142FAF8, v10, MEMORY[0x277D1D990]);
  *v8 = v0;
  v8[1] = sub_22C8419BC;
  sub_22C372E90();

  return MEMORY[0x28215E6E8](v11);
}

uint64_t sub_22C8419BC()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 224) = v0;

  v7 = sub_22C36D264();
  v8(v7);

  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C841B44()
{
  v33 = v0;
  v1 = sub_22C90650C();
  sub_22C90400C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  if (os_log_type_enabled(v2, v3))
  {
    v30 = *(v0 + 176);
    v31 = *(v0 + 192);
    v28 = *(v0 + 120);
    v29 = *(v0 + 184);
    v26 = *(v0 + 112);
    v27 = *(v0 + 104);
    v4 = sub_22C370060();
    v32 = swift_slowAlloc();
    *v4 = 136315650;
    sub_22C36EE00();
    *(v4 + 4) = sub_22C36F9F4(0xD00000000000001BLL, v5, &v32);
    *(v4 + 12) = 2080;
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v6, v7, MEMORY[0x277D1F110]);
    v8 = sub_22C90B47C();
    v10 = v9;
    v11 = sub_22C36CA88();
    v12(v11);
    v13 = sub_22C36F9F4(v8, v10, &v32);

    *(v4 + 14) = v13;
    *(v4 + 22) = 2080;
    v14 = static QueryDecorationLoggingUtils.generateReadableSpans(_:)(v1);
    v16 = sub_22C36F9F4(v14, v15, &v32);

    *(v4 + 24) = v16;
    _os_log_impl(&dword_22C366000, v2, v3, "QDInternal: Output of Span Matching | %s for caller: %s\n%s", v4, 0x20u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C3699EC();

    (*(v26 + 8))(v28, v27);
    (*(v29 + 8))(v31, v30);
  }

  else
  {

    v17 = sub_22C36CA88();
    v18(v17);
    v19 = sub_22C372164();
    v20(v19);
  }

  **(v0 + 56) = v1;
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_22C374168((v0 + 16), v21);
  sub_22C387CDC();
  v23(v21, v22);
  sub_22C36FF94((v0 + 16));

  sub_22C369C50();

  return v24();
}

void sub_22C841E60()
{
  sub_22C3743E4();
  v1 = v0[5];
  v2 = v0[6];
  sub_22C374168(v0 + 2, v1);
  sub_22C387CDC();
  v3(v1, v2);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C841F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C841F54, 0, 0);
}

uint64_t sub_22C841F54()
{
  sub_22C36FB38();
  sub_22C374168((v0[4] + 96), *(v0[4] + 120));
  sub_22C9064DC();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v3 = sub_22C84BD2C(v2);

  return sub_22C80BD50(v3, v4);
}

uint64_t sub_22C842008()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    sub_22C7E4ED0();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *(v5 + 56) = v3;
    sub_22C36BB08();
    sub_22C7E4ED0();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }
}

uint64_t sub_22C842154()
{
  sub_22C369980();
  sub_22C9064FC();
  sub_22C369C50();

  return v0();
}

uint64_t sub_22C8421B0(uint64_t a1)
{
  v5 = a1;

  sub_22C3CF084(v1);
  v2 = v5;
  v5 = MEMORY[0x277D84F90];
  v3 = sub_22C83BEC0(v2, &v5);

  return v3;
}

uint64_t sub_22C842224()
{
  sub_22C369980();
  *(v1 + 456) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  v4 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v4);
  *(v1 + 72) = sub_22C3699D4();
  v5 = sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880);
  sub_22C369914(v5);
  *(v1 + 80) = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  *(v1 + 88) = v6;
  sub_22C369914(v6);
  *(v1 + 96) = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  sub_22C369914(v7);
  v8 = sub_22C36D0D4();
  *(v1 + 112) = sub_22C84BFB8(v8);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v9 = sub_22C903E7C();
  *(v1 + 136) = v9;
  sub_22C3699B8(v9);
  *(v1 + 144) = v10;
  *(v1 + 152) = sub_22C36D0D4();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v11 = sub_22C903D4C();
  *(v1 + 200) = v11;
  sub_22C3699B8(v11);
  *(v1 + 208) = v12;
  *(v1 + 216) = sub_22C3699D4();
  v13 = sub_22C9063DC();
  *(v1 + 224) = v13;
  sub_22C3699B8(v13);
  *(v1 + 232) = v14;
  *(v1 + 240) = sub_22C36D0D4();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v15 = sub_22C90363C();
  *(v1 + 288) = v15;
  sub_22C3699B8(v15);
  *(v1 + 296) = v16;
  *(v1 + 304) = sub_22C3699D4();
  v17 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C8424F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v28 = sub_22C37F610();
  v29(v28);
  v30 = sub_22C90362C();
  v31 = sub_22C36BBCC();
  v32(v31);
  if (v30)
  {
    sub_22C90400C();

    v33 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C84BE54();
    v34 = sub_22C84BE2C();
    v35 = *(v24 + 224);
    v36 = *(v24 + 232);
    if (v34)
    {
      v27 = *(v24 + 216);
      v26 = *(v24 + 200);
      v162 = *(v24 + 280);
      sub_22C84BE10();
      a19 = sub_22C37ACD0();
      a21 = a19;
      *v25 = 136315394;
      v37 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
      sub_22C38C1F0(v37);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v38, v39, MEMORY[0x277D1F110]);
      sub_22C381408();
      v40 = sub_22C90B47C();
      a18 = v35;
      v41 = sub_22C84BBDC();
      v42(v41);
      v43 = sub_22C37170C();
      sub_22C36F9F4(v43, v44, v45);
      sub_22C37FF48();

      *(v25 + 14) = v40;
      sub_22C389318();
      _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      sub_22C383C94(v51, v52, MEMORY[0x277D84F70] + 8);
      sub_22C37E124();
      sub_22C370510();

      v53 = *(v36 + 8);
      v53(v162, v35);
    }

    else
    {

      v53 = *(v36 + 8);
      v74 = sub_22C37170C();
      v53(v74, v75);
    }

    sub_22C84BF64();
    *(v24 + 312) = v53;
    if (sub_22C83AB78())
    {
      sub_22C90400C();

      v76 = sub_22C9063CC();
      v77 = sub_22C90AACC();

      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v24 + 232);
      if (v78)
      {
        a19 = *(v24 + 272);
        v164 = *(v24 + 224);
        sub_22C84BE10();
        a18 = sub_22C84BF0C();
        a21 = a18;
        *v26 = 136315394;
        v80 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
        sub_22C84BE6C(v80);
        sub_22C903C7C();
        sub_22C36B838();
        sub_22C38694C(v81, v82, MEMORY[0x277D1F110]);
        sub_22C383E68();
        v83 = sub_22C90B47C();
        a17 = v79;
        v84 = sub_22C37A06C();
        v85(v84);
        v86 = sub_22C372164();
        sub_22C36F9F4(v86, v87, v88);
        sub_22C3798CC();
        *(v26 + 14) = v83;
        sub_22C84BDB8(&dword_22C366000, v89, v90, "%s This is a remote request. Retrieving remote state and skipping local context retrieval for caller: %s.");
        sub_22C383C94(v91, v92, MEMORY[0x277D84F70] + 8);
        sub_22C84BF64();
        sub_22C3699EC();
        sub_22C36C30C();

        v93 = a19;
        v94 = v164;
      }

      else
      {

        v93 = sub_22C36BBCC();
      }

      v53(v93, v94);
      sub_22C378AB0(*(v24 + 64) + 208, v24 + 16);
      swift_task_alloc();
      sub_22C36CC90();
      *(v24 + 320) = v127;
      *v127 = v128;
      v127[1] = sub_22C842D44;
      sub_22C375C0C();

      return v133(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, sub_22C7B8144, a21, a22, a23, a24);
    }

    else
    {
      v108 = *(v24 + 80);
      v107 = *(v24 + 88);
      v110 = *(v24 + 64);
      v109 = *(v24 + 72);
      v111 = *(v24 + 456);
      v112 = *(v24 + 56);
      v113 = swift_allocObject();
      *(v24 + 336) = v113;
      *(v113 + 16) = v112;
      *(v113 + 24) = v110;
      *(v113 + 32) = v111;
      v114 = sub_22C908D2C();
      swift_retain_n();
      swift_retain_n();
      sub_22C36A748();
      sub_22C36C640(v115, v116, v117, v114);

      sub_22C83CBDC(v118, v27, 0xE700000000000000, v109, v108);
      sub_22C36D0A8(v108, 1, v107);
      if (v119)
      {
        sub_22C376B84(*(v24 + 80), &qword_27D9C06D0, &qword_22C929880);
        swift_task_alloc();
        sub_22C36CC90();
        *(v24 + 360) = v120;
        *v120 = v121;
        v120[1] = sub_22C843398;
        sub_22C375C0C();

        return sub_22C8446D8(v122, v123, v124, v125);
      }

      else
      {
        v137 = sub_22C375DC8();
        sub_22C6AE8BC(v137, v138, &qword_27D9C0240, &qword_22C926718);
        v161 = sub_22C84BD90() + 40;
        sub_22C369B5C();
        v166 = v139 + *v139;
        swift_task_alloc();
        sub_22C36CC90();
        *(v24 + 344) = v140;
        *v140 = v141;
        v140[1] = sub_22C8432A0;
        sub_22C84BD18();
        sub_22C375C0C();

        return v149(v142, v143, v144, v145, v146, v147, v148, v149, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v161, v166, a21, a22, a23, a24);
      }
    }
  }

  else
  {
    sub_22C90400C();

    v54 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C84BE54();
    v55 = sub_22C84BE2C();
    v56 = *(v24 + 232);
    v57 = *(v24 + 224);
    if (v55)
    {
      v163 = *(v24 + 240);
      sub_22C84BE10();
      a21 = sub_22C37ACD0();
      *v25 = 136315394;
      v58 = sub_22C370A8C("callContextRetriever(qdContext:hydrationStrategy:)");
      sub_22C38C1F0(v58);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v59, v60, MEMORY[0x277D1F110]);
      sub_22C381408();
      v61 = sub_22C90B47C();
      v62 = sub_22C84BBDC();
      v63(v62);
      v64 = sub_22C37170C();
      sub_22C36F9F4(v64, v65, v66);
      sub_22C37FF48();

      *(v25 + 14) = v61;
      sub_22C389318();
      _os_log_impl(v67, v68, v69, v70, v71, 0x16u);
      sub_22C383C94(v72, v73, MEMORY[0x277D84F70] + 8);
      sub_22C37E124();
      sub_22C370510();

      (*(v56 + 8))(v163, v57);
    }

    else
    {

      v95 = sub_22C84BBF0();
      v97(v95, v96);
    }

    v151 = *(v24 + 176);
    v152 = *(v24 + 168);
    v153 = *(v24 + 160);
    v154 = *(v24 + 152);
    v155 = *(v24 + 128);
    v156 = *(v24 + 120);
    v157 = *(v24 + 112);
    v158 = *(v24 + 104);
    v159 = *(v24 + 96);
    v160 = *(v24 + 80);
    v165 = *(v24 + 72);

    sub_22C36D5E0();
    sub_22C375C0C();

    return v100(v98, v99, v100, v101, v102, v103, v104, v105, a9, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v165, a21, a22, a23, a24);
  }
}

uint64_t sub_22C842D44()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 328) = v0;

  sub_22C7B8E10(v3 + 16);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8432A0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 352) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C843398()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 368) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C843AF0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 400) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C843EB8()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *v4 = *v1;
  v3[52] = v0;

  v5 = v2[20];
  v6 = v2[18];
  v7 = v2[17];
  v8 = *(v6 + 8);
  v9 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[55] = v8;
    v3[56] = v9;
  }

  else
  {
    v3[53] = v8;
    v3[54] = v9;
  }

  v8(v5, v7);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8446D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 344) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a1;
  v5 = sub_22C903E7C();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_22C90843C();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_22C90069C();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_22C90846C();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v9 = sub_22C903D4C();
  *(v4 + 192) = v9;
  *(v4 + 200) = *(v9 - 8);
  *(v4 + 208) = swift_task_alloc();
  v10 = sub_22C9063DC();
  *(v4 + 216) = v10;
  *(v4 + 224) = *(v10 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84499C, 0, 0);
}

uint64_t sub_22C84499C()
{
  sub_22C381520();
  v59 = v0;
  sub_22C375EAC((v0[8] + 56));
  if (qword_281432A50 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  sub_22C84BC5C();
  v2();
  v0[32] = *(v1 + 96);
  if (sub_22C903C2C())
  {
    sub_22C90400C();

    v3 = sub_22C9063CC();
    v4 = sub_22C90AACC();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[31];
    v8 = v0[27];
    v7 = v0[28];
    if (v5)
    {
      v56 = v0[31];
      sub_22C383050();
      v58 = sub_22C84BF0C();
      *v8 = 136315394;
      sub_22C36EE00();
      v10 = sub_22C36F9F4(0xD000000000000032, v9, &v58);
      sub_22C84BE6C(v10);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v11, v12, MEMORY[0x277D1F110]);
      sub_22C383E68();
      sub_22C90B47C();
      v13 = sub_22C37A06C();
      v14(v13);
      v15 = sub_22C36BBCC();
      v18 = sub_22C36F9F4(v15, v16, v17);

      *(v8 + 14) = v18;
      sub_22C84BDB8(&dword_22C366000, v19, v20, "%s is refreshing Context Retrieval for caller: %s");
      sub_22C383C94(v21, v22, MEMORY[0x277D84F70] + 8);
      sub_22C37E124();
      sub_22C36C30C();

      v23 = *(v7 + 8);
      v23(v56, v8);
    }

    else
    {

      v23 = *(v7 + 8);
      v23(v6, v8);
    }

    v0[33] = v23;
    sub_22C374168((v0[9] + 56), *(v0[9] + 80));
    if (qword_281432E48 != -1)
    {
      swift_once();
    }

    v45 = qword_281437510;
    v46 = swift_task_alloc();
    v0[34] = v46;
    *v46 = v0;
    sub_22C84BD64(v46);

    return sub_22C7B3158(v45);
  }

  else
  {
    sub_22C90400C();

    v24 = sub_22C9063CC();
    v25 = sub_22C90AABC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[30];
    v29 = v0[27];
    v28 = v0[28];
    if (v26)
    {
      v57 = v0[30];
      sub_22C383050();
      v58 = sub_22C84BF0C();
      *v29 = 136315394;
      sub_22C36EE00();
      v31 = sub_22C36F9F4(0xD000000000000032, v30, &v58);
      sub_22C84BE6C(v31);
      sub_22C903C7C();
      sub_22C36B838();
      sub_22C38694C(v32, v33, MEMORY[0x277D1F110]);
      sub_22C383E68();
      sub_22C90B47C();
      v34 = sub_22C37A06C();
      v35(v34);
      v36 = sub_22C36BBCC();
      v39 = sub_22C36F9F4(v36, v37, v38);

      *(v29 + 14) = v39;
      sub_22C84BDB8(&dword_22C366000, v40, v41, "%s Context Retrieval was NOT refreshed for caller: %s. This should only be done in specific circumstances.");
      sub_22C383C94(v42, v43, MEMORY[0x277D84F70] + 8);
      sub_22C37E124();
      sub_22C36C30C();

      v44 = *(v28 + 8);
      v44(v57, v29);
    }

    else
    {

      v44 = *(v28 + 8);
      v44(v27, v29);
    }

    v0[36] = v44;
    sub_22C903C8C();
    sub_22C903CAC();
    if (v48)
    {
      sub_22C50B5FC();
    }

    else
    {
      sub_22C90068C();
      sub_22C90065C();
      sub_22C50B5FC();
      v49 = sub_22C372164();
      v50(v49);
    }

    sub_22C36D190();
    sub_22C903C6C();
    sub_22C90841C();

    v51 = swift_task_alloc();
    v0[38] = v51;
    sub_22C84BC94();
    sub_22C38694C(v52, v25, MEMORY[0x277D1E468]);
    sub_22C84BCCC(&qword_28142FAC8);
    sub_22C388444();
    sub_22C38694C(v53, v29, MEMORY[0x277D1E480]);
    v54 = sub_22C383940(&qword_28142FAB8);
    *v51 = v0;
    v55 = sub_22C3829F4(v54);

    return MEMORY[0x28215E6E8](v55);
  }
}

uint64_t sub_22C844F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C844FD4()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 312) = v0;

  v7 = sub_22C36D264();
  v8(v7);

  sub_22C36BB08();
  sub_22C7E4EBC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C84515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v71 = v24;
  v26 = v24[22];
  v25 = v24[23];
  v27 = v24[20];
  v28 = v24[21];
  v29 = v24[8];
  v30 = v24[5];
  v31 = v24[6];
  sub_22C374168(v24 + 2, v30);
  sub_22C387CDC();
  v32(v30, v31);
  sub_22C90400C();
  (*(v28 + 16))(v26, v25, v27);

  v33 = sub_22C9063CC();
  v34 = sub_22C90AACC();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[36];
  if (v35)
  {
    v67 = v24[36];
    v37 = v24[26];
    v68 = v24[27];
    v69 = v24[29];
    v38 = v24[25];
    v66 = v24[24];
    v40 = v24[21];
    v39 = v24[22];
    v65 = v24[20];
    v41 = v24[13];
    v42 = v24[11];
    v64 = v24[10];
    sub_22C370060();
    v70 = sub_22C37ACD0();
    *v29 = 136315650;
    sub_22C36EE00();
    *(v29 + 4) = sub_22C36F9F4(0xD000000000000032, v43, &v70);
    *(v29 + 12) = 2048;
    sub_22C90844C();
    v44 = sub_22C903E4C();
    (*(v42 + 8))(v41, v64);
    v45 = *(v44 + 16);

    v46 = *(v40 + 8);
    v46(v39, v65);
    *(v29 + 14) = v45;
    *(v29 + 22) = 2080;
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v47, v48, MEMORY[0x277D1F110]);
    sub_22C381408();
    v49 = sub_22C90B47C();
    (*(v38 + 8))(v37, v66);
    v50 = sub_22C37170C();
    sub_22C36F9F4(v50, v51, v52);
    sub_22C37FF48();

    *(v29 + 24) = v49;
    sub_22C84BC84();
    _os_log_impl(v53, v54, v55, v56, v57, 0x20u);
    sub_22C383C94(v58, v59, MEMORY[0x277D84F70] + 8);
    sub_22C37E124();
    sub_22C370510();

    v67(v69, v68);
  }

  else
  {
    v46 = *(v24[21] + 8);
    v46(v24[22], v24[20]);

    v60 = sub_22C37170C();
    v36(v60);
  }

  v24[40] = v46;
  sub_22C90844C();
  swift_task_alloc();
  sub_22C36CC90();
  v24[41] = v61;
  *v61 = v62;
  v61[1] = sub_22C8454A8;

  return sub_22C845BF0();
}

uint64_t sub_22C8454A8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = sub_22C36BAFC();
  v8(v7);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8455F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v22 = *(v12 + 96);
  (*(v12 + 320))(*(v12 + 184), *(v12 + 160));
  sub_22C36FF94((v12 + 16));

  sub_22C369C50();
  sub_22C372034();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_22C8456E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C845790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  (*(v14 + 320))(*(v14 + 184), *(v14 + 160));
  sub_22C37BC9C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C845858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22C903E7C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C845928, 0, 0);
}

uint64_t sub_22C845928()
{
  sub_22C36FB38();
  sub_22C374168((*(v0 + 32) + 56), *(*(v0 + 32) + 80));
  sub_22C90842C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_22C8459E4;

  return sub_22C7B32A0();
}

uint64_t sub_22C8459E4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C845ADC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v0 = sub_22C36BA00();
  v1(v0);
  sub_22C90845C();
  v2 = sub_22C37170C();
  v3(v2);

  sub_22C369C50();
  sub_22C7E4ED0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C845B8C()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C845BF0()
{
  sub_22C369980();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 104) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_22C90399C();
  *(v1 + 48) = v6;
  sub_22C3699B8(v6);
  *(v1 + 56) = v7;
  *(v1 + 64) = sub_22C3699D4();
  v8 = sub_22C90363C();
  *(v1 + 72) = v8;
  sub_22C3699B8(v8);
  *(v1 + 80) = v9;
  *(v1 + 88) = sub_22C3699D4();
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C845CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 104);
  v14 = sub_22C37F610();
  v15(v14);
  v16 = sub_22C90362C();
  v17 = sub_22C36BBCC();
  v18(v17);
  if ((v16 & 1) != 0 || v13 != 1)
  {
LABEL_11:
    sub_22C903E7C();
    sub_22C369A9C();
    v31 = sub_22C36BA00();
    v32(v31);

    sub_22C369C50();
    sub_22C372034();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  else
  {
    v19 = *(v12 + 56);
    result = sub_22C903E4C();
    v21 = result;
    v22 = 0;
    v23 = *(result + 16);
    do
    {
      if (v23 == v22)
      {

        goto LABEL_11;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v19 + 16))(*(v12 + 64), v21 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v22++, *(v12 + 48));
      sub_22C83C4EC();
      v25 = v24;
      v26 = sub_22C36BAFC();
      result = v27(v26);
    }

    while ((v25 & 1) == 0);

    swift_task_alloc();
    sub_22C36CC90();
    *(v12 + 96) = v28;
    *v28 = v29;
    v28[1] = sub_22C845F00;
    sub_22C372034();

    return sub_22C847FD8();
  }
}

uint64_t sub_22C845F00()
{
  sub_22C36FB38();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C84BE44();

  return v3();
}

uint64_t sub_22C846020(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v39 - v5;
  v6 = sub_22C90355C();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90363C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v39 - v14;
  result = sub_22C83BD74();
  if (result)
  {
    sub_22C6AEA50(a1, v15, &qword_27D9C0238, &qword_22C9266F0);
    v17 = sub_22C903E7C();
    if (sub_22C370B74(v15, 1, v17) == 1)
    {
      return sub_22C376B84(v15, &qword_27D9C0238, &qword_22C9266F0);
    }

    v18 = sub_22C903E5C();
    result = (*(*(v17 - 8) + 8))(v15, v17);
    if (v18)
    {
      v42 = v18;
      v19 = *MEMORY[0x277D1EC58];
      v41 = *(v10 + 104);
      v41(v12, v19, v9);
      v20 = sub_22C90362C();
      v40 = *(v10 + 8);
      v40(v12, v9);
      if (v20)
      {
        v21 = (*(v47 + 104))(v8, *MEMORY[0x277D1EAB8], v6);
        v39[1] = v39;
        MEMORY[0x28223BE20](v21);
        v39[-2] = v8;
        v22 = sub_22C5EC71C(sub_22C84BBB8, &v39[-4], v42);
        (*(v47 + 8))(v8, v6);
        if (v22)
        {

          v23 = v44;
          sub_22C90400C();
          v24 = sub_22C9063CC();
          v25 = sub_22C90AABC();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v48 = v27;
            *v26 = 136315138;
            *(v26 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C9376A0, &v48);
            _os_log_impl(&dword_22C366000, v24, v25, "QDInternal: %s has failed to fetch the foreground app. This radar should be routed to IntelligenceFlow | Context", v26, 0xCu);
            sub_22C36FF94(v27);
            MEMORY[0x2318B9880](v27, -1, -1);
            MEMORY[0x2318B9880](v26, -1, -1);
          }

          (*(v45 + 8))(v23, v46);
          v28 = 0;
LABEL_15:
          sub_22C84B654();
          swift_allocError();
          *v38 = v28;
          return swift_willThrow();
        }
      }

      v41(v12, *MEMORY[0x277D1EC18], v9);
      v29 = sub_22C90362C();
      v40(v12, v9);
      if (v29)
      {
        v30 = v47;
        v31 = (*(v47 + 104))(v8, *MEMORY[0x277D1EB18], v6);
        MEMORY[0x28223BE20](v31);
        v39[-2] = v8;
        v32 = sub_22C5EC71C(sub_22C84B634, &v39[-4], v42);

        result = (*(v30 + 8))(v8, v6);
        if (!v32)
        {
          return result;
        }

        v33 = v43;
        sub_22C90400C();
        v34 = sub_22C9063CC();
        v35 = sub_22C90AABC();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v48 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C9376A0, &v48);
          _os_log_impl(&dword_22C366000, v34, v35, "QDInternal: %s has failed to fetch an AppEntity. This radar should be routed to IntelligenceFlow | Context", v36, 0xCu);
          sub_22C36FF94(v37);
          MEMORY[0x2318B9880](v37, -1, -1);
          MEMORY[0x2318B9880](v36, -1, -1);
        }

        (*(v45 + 8))(v33, v46);
        v28 = 1;
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t sub_22C84670C()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C9063DC();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v1[7] = sub_22C3699D4();
  v6 = sub_22C903E7C();
  v1[8] = v6;
  sub_22C3699B8(v6);
  v1[9] = v7;
  v1[10] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9C09F8, &unk_22C9298B8);
  sub_22C369914(v8);
  v1[11] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  v1[12] = v9;
  sub_22C369914(v9);
  v10 = sub_22C36D0D4();
  v1[14] = sub_22C84BFB8(v10);
  v11 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v11);
  v1[15] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9C09D0, &qword_22C929848);
  sub_22C369914(v12);
  v1[16] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9C09D8, &qword_22C929850);
  v1[17] = v13;
  sub_22C369914(v13);
  v1[18] = sub_22C3699D4();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C8468E8()
{
  sub_22C3749D8();
  v1 = v0[16];
  v2 = v0[15];
  sub_22C908D2C();
  v3 = sub_22C3788F8();
  sub_22C36C640(v3, v4, v5, v6);

  sub_22C38B544();
  sub_22C83CD34(v7, v8, v9, v2, v1);
  sub_22C36D3E0(v1);
  if (v10)
  {
    sub_22C376B84(v0[16], &qword_27D9C09D0, &qword_22C929848);
    sub_22C38A138();
    sub_22C36A748();
    sub_22C36C640(v11, v12, v13, v14);

    sub_22C369C50();

    return v15();
  }

  else
  {
    sub_22C6AE8BC(v0[16], v0[18], &qword_27D9C09D8, &qword_22C929850);
    sub_22C380640();
    sub_22C37A468();
    v23 = (v17 + *v17);
    swift_task_alloc();
    sub_22C36CC90();
    v0[19] = v18;
    *v18 = v19;
    v18[1] = sub_22C846B14;
    v20 = v0[18];
    v21 = v0[11];
    v22 = v0[12];

    return v23(v21, v20, v22, v1, v2);
  }
}

uint64_t sub_22C846B14()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C846C0C()
{
  sub_22C3743E4();
  v1 = v0[11];
  sub_22C36D0A8(v1, 1, v0[12]);
  if (v10)
  {
    v2 = &qword_27D9C09F8;
    v3 = &unk_22C9298B8;
    v4 = v1;
  }

  else
  {
    v5 = sub_22C36BBCC();
    sub_22C6AE8BC(v5, v6, &qword_27D9C09E0, &qword_22C929868);
    v7 = sub_22C36BAFC();
    sub_22C6AE8BC(v7, v8, &qword_27D9C09E0, &qword_22C929868);
    type metadata accessor for RetrievedToolContext(0);
    v9 = sub_22C37FF48();
    sub_22C36D3E0(v9);
    if (!v10)
    {
      v18 = v0[13];
      v20 = v0[9];
      v19 = v0[10];
      v21 = v0[8];
      v22 = v0[2];
      sub_22C376B84(v0[18], &qword_27D9C09D8, &qword_22C929850);
      (*(v20 + 16))(v19, v18 + *(v1 + 24), v21);
      sub_22C84B5D8(v18);
      (*(v20 + 32))(v22, v19, v21);
      goto LABEL_10;
    }

    v4 = v0[13];
    v2 = &qword_27D9C09E0;
    v3 = &qword_22C929868;
  }

  sub_22C376B84(v4, v2, v3);
  sub_22C90400C();
  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();
  if (sub_22C370048(v12))
  {
    *sub_22C36D240() = 0;
    sub_22C36BB14(&dword_22C366000, v13, v14, "No existing tool context not found in cache. Will not merge");
    sub_22C3699EC();
  }

  v15 = v0[18];

  v16 = sub_22C36D264();
  v17(v16);
  sub_22C376B84(v15, &qword_27D9C09D8, &qword_22C929850);
LABEL_10:
  sub_22C38A138();
  sub_22C36C640(v0[2], v23, 1, v0[8]);

  sub_22C369C50();
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

void sub_22C846E50()
{
  sub_22C3743E4();
  sub_22C38A138();
  sub_22C376B84(v0, &qword_27D9C09D8, &qword_22C929850);

  sub_22C369A24();
  sub_22C372E90();

  __asm { BRAA            X1, X16 }
}

void sub_22C846F14()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90399C();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v46 = v12;
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  if (v1)
  {
    v40 = v9;
    v41 = v6;
    v42 = v4;
    v45 = *(v1 + 16);
    if (v45)
    {
      v18 = *(v14 + 16);
      v17 = v14 + 16;
      v47 = (*(v17 + 64) + 32) & ~*(v17 + 64);
      v48 = v18;
      v44 = v1 + v47;
      v19 = *(v17 + 56);
      v20 = (v17 - 8);
      v49 = v17;
      v43 = (v17 + 16);

      v21 = 0;
      do
      {
        v22 = v44 + v19 * v21++;
        v48(v16, v22, v10);
        v23 = *(v3 + 16);
        v24 = v3 + v47;

        v25 = v23 + 1;
        while (--v25)
        {
          sub_22C38694C(&qword_27D9C09F0, MEMORY[0x277D1EE00], MEMORY[0x277D1EE10]);
          v24 += v19;
          if (sub_22C90A0BC())
          {

            goto LABEL_13;
          }
        }

        v48(v46, v16, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C595C60();
          v3 = v27;
        }

        v26 = *(v3 + 16);
        if (v26 >= *(v3 + 24) >> 1)
        {
          sub_22C595C60();
          v3 = v28;
        }

        *(v3 + 16) = v26 + 1;
        (*v43)(v3 + v47 + v26 * v19, v46, v10);
LABEL_13:
        (*v20)(v16, v10);
      }

      while (v21 != v45);
    }

    else
    {
    }

    v29 = v40;
    sub_22C90400C();
    v30 = sub_22C9063CC();
    v31 = sub_22C90AACC();
    if (sub_22C370048(v31))
    {
      v32 = sub_22C36FB44();
      v33 = sub_22C370060();
      v50 = v33;
      *v32 = 136315138;

      v35 = MEMORY[0x2318B7AD0](v34, v10);
      v37 = v36;

      v38 = sub_22C36F9F4(v35, v37, &v50);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_22C366000, v30, v31, "Context after merge: %s", v32, 0xCu);
      sub_22C36FF94(v33);
      sub_22C36C30C();
      sub_22C3699EC();
    }

    (*(v41 + 8))(v29, v42);
  }

  else
  {
  }

  sub_22C36CC48();
}

uint64_t sub_22C847304(uint64_t a1)
{
  v102 = a1;
  v1 = sub_22C9063DC();
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x28223BE20](v1);
  v87 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22C90931C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22C90926C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v77 - v8;
  v9 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v77 - v10;
  v96 = sub_22C90355C();
  v94 = *(v96 - 8);
  v11 = MEMORY[0x28223BE20](v96);
  v98 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v77 - v13;
  v14 = sub_22C90399C();
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v77 - v17;
  v18 = sub_22C90363C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C903D4C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C38694C(&qword_281435730, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
  v29 = sub_22C90A0BC();
  v30 = *(v23 + 8);
  v30(v26, v22);
  result = (v30)(v28, v22);
  if ((v29 & 1) == 0)
  {
    return result;
  }

  (*(v19 + 104))(v21, *MEMORY[0x277D1ECB0], v18);
  v32 = sub_22C90362C();
  result = (*(v19 + 8))(v21, v18);
  if ((v32 & 1) == 0)
  {
    return result;
  }

  v33 = *(v102 + 16);
  if (!v33)
  {
    return result;
  }

  v95 = *(v100 + 16);
  v34 = v102 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v93 = *MEMORY[0x277D1EB18];
  v91 = (v94 + 1);
  v92 = (v94 + 13);
  v94 = (v100 + 8);
  v100 += 16;
  v90 = *(v100 + 56);
  v35 = v97;
  while (1)
  {
    v102 = v33;
    v36 = v99;
    v37 = v101;
    v95(v99, v34, v101);
    sub_22C90394C();
    v38 = v98;
    v39 = v96;
    (*v92)(v98, v93, v96);
    sub_22C38694C(&qword_281435780, MEMORY[0x277D1EB58], MEMORY[0x277D1EB70]);
    v40 = sub_22C90A0BC();
    v41 = *v91;
    (*v91)(v38, v39);
    v41(v35, v39);
    if ((v40 & 1) == 0)
    {
      result = (*v94)(v36, v37);
      goto LABEL_10;
    }

    v42 = v89;
    sub_22C90391C();
    v43 = sub_22C9093BC();
    if (sub_22C370B74(v42, 1, v43) == 1)
    {
      break;
    }

    v44 = v42;
    v45 = v88;
    sub_22C90939C();
    (*(*(v43 - 8) + 8))(v44, v43);
    v46 = sub_22C90993C();
    if (sub_22C370B74(v45, 1, v46) == 1)
    {
      goto LABEL_13;
    }

    (*v94)(v36, v101);
    result = sub_22C376B84(v45, &qword_27D9BC390, &qword_22C912AC0);
LABEL_10:
    v34 += v90;
    v33 = v102 - 1;
    if (v102 == 1)
    {
      return result;
    }
  }

  sub_22C376B84(v42, &qword_27D9BB908, &qword_22C910960);
  v47 = sub_22C90993C();
  v45 = v88;
  sub_22C36C640(v88, 1, 1, v47);
LABEL_13:
  sub_22C376B84(v45, &qword_27D9BC390, &qword_22C912AC0);
  v48 = v83;
  sub_22C90391C();
  if (sub_22C370B74(v48, 1, v43) == 1)
  {
    v49 = 0x6E776F6E6B6E55;
    sub_22C376B84(v48, &qword_27D9BB908, &qword_22C910960);
    v50 = 0xE700000000000000;
    v51 = v87;
    v52 = v101;
    v53 = v84;
    goto LABEL_22;
  }

  v54 = *(v43 - 8);
  v55 = (*(v54 + 88))(v48, v43);
  v51 = v87;
  v53 = v84;
  if (v55 != *MEMORY[0x277D72A58])
  {
    v49 = 0x6E776F6E6B6E55;
    (*(v54 + 8))(v48, v43);
LABEL_20:
    v50 = 0xE700000000000000;
    goto LABEL_21;
  }

  (*(v54 + 96))(v48, v43);
  v56 = swift_projectBox();
  v57 = v81;
  v58 = v80;
  v59 = v82;
  (*(v81 + 16))(v80, v56, v82);
  if ((*(v57 + 88))(v58, v59) != *MEMORY[0x277D72970])
  {
    v49 = 0x6E776F6E6B6E55;
    (*(v57 + 8))(v58, v59);

    goto LABEL_20;
  }

  (*(v57 + 96))(v58, v59);
  v60 = v78;
  v61 = v77;
  v62 = v79;
  (*(v78 + 32))(v77, v58, v79);

  v49 = sub_22C90924C();
  v50 = v63;
  (*(v60 + 8))(v61, v62);
LABEL_21:
  v52 = v101;
LABEL_22:
  sub_22C90400C();
  v95(v53, v99, v52);

  v64 = sub_22C9063CC();
  v65 = sub_22C90AADC();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v103 = v102;
    *v66 = 136315394;
    v100 = v49;
    v67 = sub_22C90390C();
    v68 = v53;
    v70 = v69;
    v71 = *v94;
    (*v94)(v68, v52);
    v72 = sub_22C36F9F4(v67, v70, &v103);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v73 = sub_22C36F9F4(v100, v50, &v103);

    *(v66 + 14) = v73;
    _os_log_impl(&dword_22C366000, v64, v65, "QDInternal: This request failed because one or more context AppEntity items had a missing display representation and the missingContextDisplayRepresentationFailRequest feature flag is enabled. \nPlease route to IntelligenceFlow | QueryDecoration and quote this error in the radar.\nFailed Context Entity ID: %s\nBundleId: %s", v66, 0x16u);
    v74 = v102;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v74, -1, -1);
    MEMORY[0x2318B9880](v66, -1, -1);

    (*(v85 + 8))(v87, v86);
    v75 = v101;
  }

  else
  {

    v71 = *v94;
    (*v94)(v53, v52);
    (*(v85 + 8))(v51, v86);
    v75 = v52;
  }

  sub_22C839C24();
  swift_allocError();
  *v76 = 6;
  swift_willThrow();
  return v71(v99, v75);
}

uint64_t sub_22C847FD8()
{
  sub_22C369980();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 184) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = sub_22C9063DC();
  *(v1 + 88) = v6;
  sub_22C3699B8(v6);
  *(v1 + 96) = v7;
  v8 = sub_22C36D0D4();
  *(v1 + 112) = sub_22C84BFB8(v8);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v9 = sub_22C90363C();
  *(v1 + 144) = v9;
  sub_22C3699B8(v9);
  *(v1 + 152) = v10;
  *(v1 + 160) = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C8480F8()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  v2 = sub_22C37F610();
  v3(v2);
  sub_22C90362C();
  v4 = sub_22C84BC00();
  v5(v4);
  if (v0)
  {
    sub_22C90400C();
    v6 = sub_22C9063CC();
    v7 = sub_22C90AACC();
    if (!sub_22C37026C(v7))
    {
LABEL_5:

      v10 = sub_22C36BAFC();
      v11(v10);
      sub_22C903E7C();
      sub_22C369A9C();
      v12 = sub_22C3806B8();
      v14 = v13(v12);
      sub_22C84BF98(v14, v15, v16, v17, v18, v19, v20, v21);

      sub_22C369C50();
      sub_22C7E4EBC();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v8 = sub_22C36D240();
    *v8 = 0;
    v9 = "runHydrationStrategy: entity hydration is disabled";
LABEL_4:
    _os_log_impl(&dword_22C366000, v6, v0, v9, v8, 2u);
    sub_22C3699EC();
    goto LABEL_5;
  }

  v31 = *(v1 + 184);
  if (v31 == 2)
  {
    sub_22C90400C();
    v42 = sub_22C9063CC();
    v43 = sub_22C90AACC();
    if (sub_22C370048(v43))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v44, v45, "Entity Hydration: Background. Running after returning context.");
      sub_22C3699EC();
    }

    v46 = *(v1 + 80);

    v47 = sub_22C36BAFC();
    v48(v47);
    sub_22C378AB0(v46 + 208, v1 + 16);
    v49 = swift_task_alloc();
    *(v1 + 176) = v49;
    *v49 = v1;
    v49[1] = sub_22C848664;
    sub_22C386674(*(v1 + 72));
    sub_22C7E4EBC();

    return sub_22C826BC0();
  }

  else
  {
    if (v31 != 1)
    {
      if (*(v1 + 184))
      {
        sub_22C90400C();
        v6 = sub_22C9063CC();
        v51 = sub_22C90AACC();
        if (!sub_22C37026C(v51))
        {
          goto LABEL_5;
        }

        v8 = sub_22C36D240();
        *v8 = 0;
        v9 = "Entity Hydration: no behavior specified, no hydration performed";
      }

      else
      {
        sub_22C90400C();
        v6 = sub_22C9063CC();
        v32 = sub_22C90AACC();
        if (!sub_22C37026C(v32))
        {
          goto LABEL_5;
        }

        v8 = sub_22C36D240();
        *v8 = 0;
        v9 = "Entity Hydration: Skipped";
      }

      goto LABEL_4;
    }

    sub_22C90400C();
    v33 = sub_22C9063CC();
    v34 = sub_22C90AACC();
    if (sub_22C370048(v34))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v35, v36, "Entity Hydration: Foreground. Running before returning context.");
      sub_22C3699EC();
    }

    v37 = sub_22C36BAFC();
    v38(v37);
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 168) = v39;
    *v39 = v40;
    v39[1] = sub_22C8484D0;
    sub_22C7E4EBC();

    return sub_22C825CFC();
  }
}

uint64_t sub_22C8484D0()
{
  sub_22C84BFD0();
  sub_22C36D5EC();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C84BE44();
  sub_22C7E4EBC();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22C848664()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = v1;
  sub_22C36D994();
  *v3 = v2;
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  sub_22C376B84(v2 + 16, &qword_27D9C01C8, &qword_22C9298B0);
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C848764()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C903E7C();
  sub_22C369A9C();
  v0 = sub_22C36BA00();
  v2 = v1(v0);
  sub_22C84BF98(v2, v3, v4, v5, v6, v7, v8, v9);

  sub_22C369C50();
  sub_22C7E4ED0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22C84881C()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C903D4C();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v1[6] = sub_22C3699D4();
  v5 = sub_22C9063DC();
  v1[7] = v5;
  sub_22C3699B8(v5);
  v1[8] = v6;
  v1[9] = sub_22C36D0D4();
  v1[10] = swift_task_alloc();
  v7 = sub_22C90363C();
  v1[11] = v7;
  sub_22C3699B8(v7);
  v1[12] = v8;
  v1[13] = sub_22C3699D4();
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C848964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v21 = sub_22C37F610();
  v22(v21);
  sub_22C90362C();
  v23 = sub_22C84BC00();
  v24(v23);
  if (v16)
  {
    v25 = *(v17[3] + 152);
    v17[14] = v25;
    if (v25)
    {
      swift_retain_n();

      v26 = swift_task_alloc();
      v17[15] = v26;
      *v26 = v17;
      v26[1] = sub_22C848CC0;
      sub_22C36EC40();

      return sub_22C83EC60(v27, v28, v29, v30, v31, v32);
    }

    sub_22C90400C();

    v35 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C84BE54();
    v39 = sub_22C84BE2C();
    v38 = v17[7];
    v37 = v17[8];
    if (v39)
    {
      goto LABEL_9;
    }

LABEL_10:

    v54 = sub_22C84BBF0();
    v56(v54, v55);
    goto LABEL_11;
  }

  sub_22C90400C();

  v35 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C84BE54();
  v36 = sub_22C84BE2C();
  v37 = v17[8];
  v38 = v17[7];
  if (!v36)
  {
    goto LABEL_10;
  }

LABEL_9:
  sub_22C84BDD8();
  sub_22C388D58();
  sub_22C37E8D4();
  sub_22C84BED4(v40, 4.8149e-34);
  sub_22C36B838();
  sub_22C38694C(v41, v42, MEMORY[0x277D1F110]);
  sub_22C381408();
  v43 = sub_22C90B47C();
  a11 = v38;
  v44 = sub_22C375184();
  v45(v44, v18);
  v46 = sub_22C37170C();
  sub_22C36F9F4(v46, v47, v48);
  sub_22C37FF48();

  *(v19 + 4) = v43;
  sub_22C84BC84();
  _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
  sub_22C36FF94(v20);
  sub_22C36C30C();
  sub_22C370510();

  (*(v37 + 8))(a12, v38);
LABEL_11:

  sub_22C36D5E0();
  sub_22C36EC40();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C848CC0()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C848DCC()
{
  sub_22C36FB38();

  v0 = sub_22C371EA8();

  return v1(v0);
}

uint64_t sub_22C848E58()
{
  sub_22C36FB38();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C848EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_22C903D4C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_22C849030;

  return sub_22C7B43D4();
}

uint64_t sub_22C849030()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;

  if (v0)
  {

    sub_22C84BE44();

    return v6();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C849170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C388D74();
  a23 = v26;
  a24 = v27;
  sub_22C381520();
  a22 = v24;
  sub_22C90400C();

  v28 = sub_22C9063CC();
  sub_22C90AABC();

  if (sub_22C84BE2C())
  {
    a9 = *(v24 + 88);
    a10 = *(v24 + 64);
    a11 = *(v24 + 56);
    a12 = *(v24 + 72);
    sub_22C370060();
    sub_22C84BEB8();
    sub_22C37E8D4();
    *v25 = 136315650;
    sub_22C38ABD0();
    v31 = sub_22C36F9F4(0xD000000000000026, v29, v30);
    sub_22C38C1F0(v31);
    sub_22C903C7C();
    sub_22C36B838();
    sub_22C38694C(v32, v33, MEMORY[0x277D1F110]);
    sub_22C383E68();
    sub_22C90B47C();
    v34 = sub_22C84BCF4();
    v35(v34);
    v36 = sub_22C372164();
    sub_22C36F9F4(v36, v37, v38);
    sub_22C3798CC();
    sub_22C38B2A8();
    sub_22C80F388();
    v41 = sub_22C36F9F4(v39, v40, &a13);

    *(v25 + 24) = v41;
    sub_22C389318();
    _os_log_impl(v42, v43, v44, v45, v46, 0x20u);
    swift_arrayDestroy();
    sub_22C36C30C();
    sub_22C370510();

    (*(a10 + 8))(a12, a11);
  }

  else
  {

    v47 = sub_22C84BBF0();
    v48(v47);
  }

  **(v24 + 16) = *(v24 + 88);

  sub_22C369C50();
  sub_22C36EC40();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C849380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22C8493A4, 0, 0);
}

uint64_t sub_22C8493A4()
{
  sub_22C369980();
  if (*(*(v0 + 24) + 160))
  {
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 48) = v1;
    *v1 = v2;
    v1[1] = sub_22C849488;

    return sub_22C7B5724();
  }

  else
  {
    type metadata accessor for RetrievedToolContext(0);
    sub_22C36A748();
    sub_22C36C640(v4, v5, v6, v7);
    sub_22C369C50();

    return v8();
  }
}

uint64_t sub_22C849488()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;

  if (v0)
  {
    sub_22C369A24();

    return v4();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_22C8495A0()
{
  sub_22C369980();
  type metadata accessor for RetrievedToolContext(0);
  sub_22C36BECC();
  sub_22C36C640(v0, v1, v2, v3);
  sub_22C369C50();

  return v4();
}

uint64_t sub_22C84960C()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C903D4C();
  v1[7] = v6;
  sub_22C3699B8(v6);
  v1[8] = v7;
  v1[9] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v1[12] = sub_22C36D0D4();
  v10 = swift_task_alloc();
  v1[14] = sub_22C84BFB8(v10);
  v11 = sub_22C903F4C();
  v1[15] = v11;
  sub_22C3699B8(v11);
  v1[16] = v12;
  v1[17] = *(v13 + 64);
  v1[18] = sub_22C36D0D4();
  v1[19] = swift_task_alloc();
  v14 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v14);
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v15 = sub_22C90363C();
  v1[22] = v15;
  sub_22C3699B8(v15);
  v1[23] = v16;
  v1[24] = sub_22C3699D4();
  v17 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C849E78()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  sub_22C36BB08();
  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C849FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 200);

  v14 = sub_22C36BAFC();
  v15(v14);
  sub_22C903D7C();

  sub_22C84BF78(*(v12 + 192), v16, v17, v18, v19, v20, v21, v22);

  sub_22C371EA8();
  sub_22C372034();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C84A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[25];
  v16 = v14[19];
  v17 = v14[15];
  v18 = v14[16];
  v28 = v14[13];
  v29 = v14[12];
  v30 = v14[9];

  (*(v18 + 8))(v16, v17);
  sub_22C903D7C();

  sub_22C369A24();
  sub_22C36D5F8();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, a12, a13, a14);
}

uint64_t sub_22C84A164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](sub_22C84A18C, 0, 0);
}

uint64_t sub_22C84A18C()
{
  sub_22C36FB38();
  sub_22C375EAC((v0[8] + 56));
  if (qword_27D9BA738 != -1)
  {
    swift_once();
  }

  sub_22C84BC5C();
  v1();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_22C84A280;
  sub_22C386674(v0[10]);

  return sub_22C7C7C0C();
}

uint64_t sub_22C84A280()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C84A38C()
{
  sub_22C36FB38();
  **(v0 + 56) = *(v0 + 120);
  sub_22C374168((v0 + 16), *(v0 + 40));
  v1 = sub_22C84BC44();
  v2(v1);
  sub_22C36FF94((v0 + 16));
  sub_22C369C50();

  return v3();
}

uint64_t sub_22C84A418()
{
  sub_22C36FB38();
  sub_22C374168((v0 + 16), *(v0 + 40));
  v1 = sub_22C84BC44();
  v2(v1);
  sub_22C36FF94((v0 + 16));
  sub_22C369A24();

  return v3();
}

uint64_t sub_22C84A49C()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C369914(v4);
  v1[7] = sub_22C3699D4();
  v5 = sub_22C3A5908(&qword_27D9C0998, &qword_22C929798);
  sub_22C369914(v5);
  v1[8] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  v1[9] = v6;
  sub_22C369914(v6);
  v1[10] = sub_22C3699D4();
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C84A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = v14[8];
  v15 = v14[9];
  v18 = v14[6];
  v17 = v14[7];
  v19 = v14[4];
  v20 = v14[5];
  sub_22C36D2A8();
  v21 = swift_allocObject();
  v14[11] = v21;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v20;
  v22 = sub_22C908D2C();
  swift_retain_n();
  swift_retain_n();
  v23 = v20;
  sub_22C36A748();
  sub_22C36C640(v24, v25, v26, v22);

  sub_22C83D304(v27, 0xD000000000000015, 0x800000022C92EF70, v17, v16);
  sub_22C36D0A8(v16, 1, v15);
  if (v28)
  {
    sub_22C376B84(v14[8], &qword_27D9C0998, &qword_22C929798);
    swift_task_alloc();
    sub_22C36CC90();
    v14[14] = v29;
    *v29 = v30;
    v29[1] = sub_22C84A904;
    sub_22C84BF4C();
    sub_22C36D5F8();

    return sub_22C84AC94(v31, v32, v33, v34);
  }

  else
  {
    sub_22C6AE8BC(v14[8], v14[10], &qword_27D9C0208, &qword_22C9297A0);
    v48 = sub_22C84BD90() + 56;
    sub_22C369B5C();
    v49 = v37 + *v37;
    v38 = swift_task_alloc();
    v14[12] = v38;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    *v38 = v14;
    v38[1] = sub_22C84A80C;
    sub_22C84BD18();
    sub_22C36D5F8();

    return v46(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, a12, a13, a14);
  }
}

uint64_t sub_22C84A80C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C84A904()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C84A9FC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = *(v0 + 40);
  sub_22C376B84(*(v0 + 80), &qword_27D9C0208, &qword_22C9297A0);

  sub_22C84BE7C();
  sub_22C7E4ED0();

  return v5(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C84AAB0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = *(v0 + 40);
  sub_22C376B84(*(v0 + 80), &qword_27D9C0208, &qword_22C9297A0);

  sub_22C369A24();
  sub_22C7E4ED0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C84AB64()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = *(v0 + 40);

  sub_22C84BE7C();
  sub_22C7E4ED0();

  return v5(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C84ABFC()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v1 = *(v0 + 40);

  sub_22C369A24();
  sub_22C7E4ED0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22C84AC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x2822009F8](sub_22C84ACB8, 0, 0);
}

uint64_t sub_22C84ACB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = v14[25];
  v16 = v15[10];
  v17 = v15[11];
  sub_22C374168(v15 + 7, v16);
  if (qword_27D9BA798 != -1)
  {
    swift_once();
  }

  v18 = v14[26];
  v44 = v14[27];
  v45 = v14[24];
  (*(v17 + 8))(qword_27D9C0610, v16, v17);
  sub_22C378AB0(v18 + 168, (v14 + 14));
  v19 = v14[17];
  v20 = sub_22C36D1E4((v14 + 14), v19);
  v21 = *(v19 - 8);
  v22 = sub_22C3699D4();
  (*(v21 + 16))(v22, v20, v19);
  v23 = *v22;
  v14[22] = &type metadata for QueryDecorationFeatureControl;
  v14[23] = &off_283FC14D0;
  v14[19] = v23;
  type metadata accessor for AppPreLaunchSelectionService();
  inited = swift_initStackObject();
  v25 = v14[22];
  v26 = sub_22C36D1E4((v14 + 19), v25);
  v27 = *(v25 - 8);
  v28 = sub_22C3699D4();
  (*(v27 + 16))(v28, v26, v25);
  v29 = *v28;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v29;
  sub_22C36FF94(v14 + 19);

  sub_22C36FF94(v14 + 14);
  v30 = sub_22C7ADD94();
  v32 = v31;
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);

  *v45 = v30;
  v45[1] = v32;
  sub_22C374168(v14 + 9, v14[12]);
  v33 = sub_22C84BC44();
  v34(v33);
  sub_22C36FF94(v14 + 9);
  sub_22C369C50();
  sub_22C36D5F8();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, a12, a13, a14);
}

uint64_t sub_22C84AF48(uint64_t a1)
{
  result = sub_22C90B10C();
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

uint64_t sub_22C84B00C()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36DBE8(v4);

  return sub_22C84AC94(v6, v7, v1, v2);
}

uint64_t sub_22C84B144()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C848EE4(v5, v6, v1);
}

uint64_t sub_22C84B274()
{
  sub_22C3743E4();
  v2 = v1;
  v3 = sub_22C903F4C();
  sub_22C369914(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = swift_task_alloc();
  v11 = sub_22C36D860(v10);
  *v11 = v12;
  v11[1] = sub_22C382AF4;

  return sub_22C84A164(v2, v6, v7, v8, v9, v0 + v5);
}

uint64_t sub_22C84B404()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36DBE8(v4);

  return sub_22C849380(v6, v7, v1, v2);
}

uint64_t sub_22C84B53C()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v6 = sub_22C36DBE8(v4);

  return sub_22C8446D8(v6, v7, v1, v2);
}

uint64_t sub_22C84B5D8(uint64_t a1)
{
  v2 = type metadata accessor for RetrievedToolContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C84B654()
{
  result = qword_27D9C0A00;
  if (!qword_27D9C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A00);
  }

  return result;
}

uint64_t sub_22C84B744()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C845858(v3, v4, v5);
}

uint64_t sub_22C84B7D4()
{

  v0 = sub_22C36BBCC();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_22C84B81C()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C841508(v5, v6, v1);
}

uint64_t sub_22C84B8B0()
{
  v1 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C3699B8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_22C908D2C();
  if (!sub_22C370B74(v0 + v4, 1, v7))
  {
    sub_22C36BBA8();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

void sub_22C84B9D8()
{
  v0 = sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790);
  sub_22C3699B8(v0);
  sub_22C83E124();
}

uint64_t sub_22C84BB28()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C841F30(v3, v4, v5);
}

uint64_t sub_22C84BCAC(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C84BCCC(unint64_t *a1)
{
  v3 = MEMORY[0x277D1E460];

  return sub_22C38694C(a1, v1, v3);
}

uint64_t sub_22C84BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C84BD70()
{
  *(v0 + 376) = *(v2 + 16);
  *(v0 + 384) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_22C84BD90()
{
  v1 = v0[30];
  sub_22C374168(v0 + 26, v0[29]);
  return v1;
}

void sub_22C84BDB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C84BDD8()
{

  return swift_slowAlloc();
}

void sub_22C84BE04(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_22C84BE10()
{

  return swift_slowAlloc();
}

BOOL sub_22C84BE2C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C84BE54()
{
}

uint64_t sub_22C84BE6C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_22C84BE94(uint64_t a1)
{

  return sub_22C903CAC();
}

uint64_t sub_22C84BEB8()
{

  return swift_slowAlloc();
}

uint64_t sub_22C84BED4(uint64_t a1, float a2)
{
  *v2 = a2;

  return sub_22C903C7C();
}

uint64_t sub_22C84BEF0()
{
}

uint64_t sub_22C84BF0C()
{

  return swift_slowAlloc();
}

uint64_t sub_22C84BF28()
{
}

uint64_t sub_22C84BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C84BF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C84BFB8(uint64_t a1)
{
  *(v1 + 104) = a1;

  return swift_task_alloc();
}

uint64_t QueryDecorator.getSpanMatches(queryDecorationInput:sessionId:)()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C90622C();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v1[12] = sub_22C3699D4();
  v6 = sub_22C903D4C();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v1[15] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[16] = v8;
  sub_22C3699B8(v8);
  v1[17] = v9;
  v1[18] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v10);
  v1[19] = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C84C150()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C85D5A8();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v3, v4, v5, v6);
  *(v1 + 160) = sub_22C85D388();
  sub_22C36DD28(v2, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36DD28(v0, &qword_27D9C0250, &unk_22C929510);
  v7 = swift_task_alloc();
  *(v1 + 168) = v7;
  *v7 = v1;
  v7[1] = sub_22C84C234;
  sub_22C36BAFC();
  sub_22C7E4ED0();

  return sub_22C84C9E0(v8, v9);
}

uint64_t sub_22C84C234()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D124, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[23] = v7;
    *v7 = v5;
    v7[1] = sub_22C84C38C;
    v8 = sub_22C386674(v3[20]);

    return sub_22C84CCF0(v8);
  }
}

uint64_t sub_22C84C38C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  if (v0)
  {
    v5 = sub_22C85D128;
  }

  else
  {
    v5 = sub_22C84C490;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C84C6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a5;
  v30 = a2;
  v8 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v25 - v9;
  v27 = sub_22C90292C();
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C90069C();
  v13 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_22C903DEC();
  sub_22C36C640(v18, 1, 1, v19);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v20 = v6[11];
  v21 = v6[12];
  sub_22C374168(v6 + 8, v20);
  v25 = a1;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v21 + 8))(v32, v15, v12, v20, v21);
  (*(v10 + 8))(v12, v27);
  (*(v13 + 8))(v15, v26);
  sub_22C378A4C((v6 + 13), v31);
  v22 = v28;
  sub_22C379DF8(v29, v28, &qword_27D9C06F8, &qword_22C929520);
  type metadata accessor for QueryDecorationContext(0);
  swift_allocObject();
  v23 = v30;

  return QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v25, v23, v18, v33, v32, v31, v22);
}

uint64_t sub_22C84C9E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22C9063DC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84CAA0, 0, 0);
}

uint64_t sub_22C84CAA0()
{
  sub_22C36D5EC();
  v1 = v0[3];
  if (v1 && (0x800000022C937B20 == v1 ? (v2 = v0[2] == 0xD000000000000021) : (v2 = 0), v2 || (sub_22C90B4FC() & 1) != 0))
  {
    sub_22C90400C();
    v3 = sub_22C9063CC();
    v4 = sub_22C90AABC();
    if (sub_22C37B204(v4))
    {
      v5 = sub_22C36D240();
      sub_22C36C890(v5);
      sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache has been cleared as this request is running via iftool.");
      sub_22C372FB0();
    }

    v8 = sub_22C36BAFC();
    v10 = v9(v8);
    if (qword_281431278 != -1)
    {
      v10 = sub_22C38A0F4(&qword_281431278);
    }

    v11 = sub_22C36FAB8(v10);
    v0[7] = v11;

    return MEMORY[0x2822009F8](sub_22C84CC34, v11, 0);
  }

  else
  {

    sub_22C369C50();

    return v12();
  }
}

uint64_t sub_22C84CC34()
{
  sub_22C369980();
  sub_22C8317F4();
  v0 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22C84CC90()
{
  sub_22C369980();

  sub_22C369C50();

  return v0();
}

uint64_t sub_22C84CCF0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_22C90363C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_22C9063DC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_22C905A5C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_22C903E9C();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84CEEC, 0, 0);
}

uint64_t sub_22C84CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D4E0();
  v12 = sub_22C375194();
  v13(v12);
  sub_22C85D4B4();
  v14 = sub_22C38ABE0();
  v15(v14);
  if (v10)
  {
    sub_22C36CD90((*(v11 + 24) + 16));
    v16 = sub_22C85D354();
    v17(v16);
    v18 = swift_task_alloc();
    sub_22C85D514(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    v28 = swift_task_alloc();
    *(v11 + 152) = v28;
    sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
    sub_22C381898();
    *v28 = v29;
    v28[1] = sub_22C84D0EC;
    sub_22C370AB0();
    sub_22C83AB2C();

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }

  else
  {
    sub_22C90400C();
    v32 = sub_22C9063CC();
    v33 = sub_22C90AABC();
    if (sub_22C370048(v33))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_22C36BAE0();
    }

    v39 = sub_22C36BAFC();
    v41 = v40(v39);
    sub_22C85D304(v41, v42, v43, v44, v45, v46, v47, v48);

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
  }
}

uint64_t sub_22C84D0EC()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_22C6343B0();
  (*(v1[13] + 8))(v1[14], v1[12]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C84D254()
{
  sub_22C36FB38();
  v1 = *(v0 + 16);

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C84D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D594();
  v12 = sub_22C36D45C();
  v13(v12);
  sub_22C903C8C();
  v14 = sub_22C85D588();
  sub_22C85D324(v14, 35, v15, v16);
  v17 = v11[20];
  if (v10)
  {
    v18 = sub_22C85D3E4();
    v19(v18);

    sub_22C379B94();
    sub_22C83AB2C();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    (*(v11[7] + 8))(v11[8], v11[6]);

    sub_22C85D304(v29, v30, v31, v32, v33, v34, v35, v36);

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
  }
}

uint64_t QueryDecorator.getContext(queryDecorationInput:sessionId:)()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C90622C();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v1[12] = sub_22C3699D4();
  v6 = sub_22C903D4C();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v1[15] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[16] = v8;
  sub_22C3699B8(v8);
  v1[17] = v9;
  v1[18] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v10);
  v1[19] = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C84D5A0()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C85D5A8();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v3, v4, v5, v6);
  *(v1 + 160) = sub_22C85D388();
  sub_22C36DD28(v2, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36DD28(v0, &qword_27D9C0250, &unk_22C929510);
  v7 = swift_task_alloc();
  *(v1 + 168) = v7;
  *v7 = v1;
  v7[1] = sub_22C84D684;
  sub_22C36BAFC();
  sub_22C7E4ED0();

  return sub_22C84C9E0(v8, v9);
}

uint64_t sub_22C84D684()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84DB24, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[23] = v7;
    *v7 = v5;
    v7[1] = sub_22C84D7DC;
    v8 = sub_22C386674(v3[20]);

    return sub_22C84DCEC(v8);
  }
}

uint64_t sub_22C84D7DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  if (v0)
  {
    v5 = sub_22C84DC08;
  }

  else
  {
    v5 = sub_22C84D8E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C84DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v29 = v14[18];
  v30 = v14[15];
  v15 = v14[11];
  v16 = v14[12];
  v17 = v14[10];
  sub_22C3766E0((v14[20] + 16), *(v14[20] + 40));
  sub_22C90621C();
  v18 = sub_22C85D404();
  v19(v18);
  (*(v15 + 8))(v16, v17);
  swift_willThrow();

  sub_22C37F620();
  sub_22C36D5F8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, a11, a12, a13, a14);
}

uint64_t sub_22C84DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v29 = v14[18];
  v30 = v14[15];
  v15 = v14[11];
  v16 = v14[12];
  v17 = v14[10];
  sub_22C3766E0((v14[20] + 16), *(v14[20] + 40));
  sub_22C90621C();
  v18 = sub_22C85D404();
  v19(v18);
  (*(v15 + 8))(v16, v17);
  swift_willThrow();

  sub_22C37F620();
  sub_22C36D5F8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, a11, a12, a13, a14);
}

uint64_t sub_22C84DCEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_22C90363C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_22C9063DC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_22C905A5C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_22C903E9C();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C84DEE8, 0, 0);
}

uint64_t sub_22C84DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D4E0();
  v12 = sub_22C375194();
  v13(v12);
  sub_22C85D4B4();
  v14 = sub_22C38ABE0();
  v15(v14);
  if (v10)
  {
    sub_22C36CD90((*(v11 + 24) + 16));
    v16 = sub_22C85D354();
    v17(v16);
    v18 = swift_task_alloc();
    sub_22C85D514(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    v28 = swift_task_alloc();
    *(v11 + 152) = v28;
    sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
    sub_22C381898();
    *v28 = v29;
    v28[1] = sub_22C84E0E8;
    sub_22C370AB0();
    sub_22C83AB2C();

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }

  else
  {
    sub_22C90400C();
    v32 = sub_22C9063CC();
    v33 = sub_22C90AABC();
    if (sub_22C370048(v33))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_22C36BAE0();
    }

    v39 = sub_22C36BAFC();
    v41 = v40(v39);
    sub_22C85D304(v41, v42, v43, v44, v45, v46, v47, v48);

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
  }
}

uint64_t sub_22C84E0E8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_22C6343B0();
  (*(v1[13] + 8))(v1[14], v1[12]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C84E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  sub_22C85D594();
  v12 = sub_22C36D45C();
  v13(v12);
  sub_22C903C8C();
  v14 = sub_22C85D588();
  sub_22C85D324(v14, 40, v15, v16);
  v17 = v11[20];
  if (v10)
  {
    v18 = sub_22C85D3E4();
    v19(v18);

    sub_22C379B94();
    sub_22C83AB2C();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    (*(v11[7] + 8))(v11[8], v11[6]);

    sub_22C85D304(v29, v30, v31, v32, v33, v34, v35, v36);

    sub_22C36D5E0();
    sub_22C83AB2C();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
  }
}

uint64_t QueryDecorator.getRetrievedTools(queryDecorationInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)()
{
  sub_22C369980();
  v1[295] = v0;
  v1[289] = v2;
  v1[283] = v3;
  v1[277] = v4;
  v1[271] = v5;
  v1[265] = v6;
  v1[259] = v7;
  v8 = sub_22C90622C();
  v1[301] = v8;
  sub_22C3699B8(v8);
  v1[307] = v9;
  v1[313] = sub_22C3699D4();
  v10 = sub_22C903D4C();
  v1[319] = v10;
  sub_22C3699B8(v10);
  v1[325] = v11;
  v1[331] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[337] = v12;
  sub_22C3699B8(v12);
  v1[343] = v13;
  v1[349] = sub_22C36D0D4();
  v1[355] = swift_task_alloc();
  v14 = sub_22C903F4C();
  v1[361] = v14;
  sub_22C3699B8(v14);
  v1[367] = v15;
  v1[373] = sub_22C36D0D4();
  v1[379] = swift_task_alloc();
  v16 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v1[385] = v16;
  sub_22C369914(v16);
  v1[391] = sub_22C36D0D4();
  v1[397] = swift_task_alloc();
  v1[398] = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C3699B8(v17);
  v1[399] = v18;
  v1[400] = *(v19 + 64);
  v1[401] = sub_22C36D0D4();
  v1[402] = swift_task_alloc();
  v20 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C84E608()
{
  sub_22C36FB38();
  *(v0 + 3224) = sub_22C84C6D8(*(v0 + 2120), *(v0 + 2168), *(v0 + 2216), *(v0 + 2264), *(v0 + 2312));
  v1 = swift_task_alloc();
  *(v0 + 3232) = v1;
  *v1 = v0;
  v1[1] = sub_22C84E6C4;
  v2 = sub_22C36BAFC();

  return sub_22C84C9E0(v2, v3);
}

uint64_t sub_22C84E6C4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 3240) = v0;

  if (v0)
  {
    v7 = sub_22C84F754;
  }

  else
  {
    v7 = sub_22C84E7C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C84E7C0()
{
  sub_22C36FB38();
  v1 = v0[403];
  v2 = v0[295];
  sub_22C36A83C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_22C36A83C();
  v4 = swift_allocObject();
  v0[406] = v4;
  sub_22C383A10(v4);

  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_22C36A83C();
  v6 = swift_allocObject();
  v0[407] = v6;
  sub_22C383A10(v6);

  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  swift_asyncLet_begin();
  v7 = sub_22C377770();

  return MEMORY[0x282200930](v7);
}

uint64_t sub_22C84E940()
{
  sub_22C36FB38();
  v1[408] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84F8E8, 0, 0);
  }

  else
  {
    v2 = v1[247];
    v1[409] = v2;

    swift_task_alloc();
    sub_22C36CC90();
    v1[410] = v3;
    *v3 = v4;
    v3[1] = sub_22C84EA38;
    v5 = v1[403];
    v6 = v1[402];

    return sub_22C37D378(v6, v5, v2);
  }
}

uint64_t sub_22C84EA38()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 3288) = v0;

  if (v0)
  {
    v7 = sub_22C84FA9C;
  }

  else
  {

    v7 = sub_22C84EB3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C84EB3C()
{
  sub_22C388250();
  sub_22C3743E4();
  v1 = v0[403];
  v2 = v0[401];
  v3 = v0[399];
  v4 = v0[295];
  sub_22C379DF8(v0[402], v2, &qword_27D9C09E0, &qword_22C929868);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[412] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  sub_22C85C364(v2, v6 + v5);

  swift_asyncLet_begin();
  sub_22C377770();
  sub_22C36EC14();

  return MEMORY[0x282200930](v7);
}

uint64_t sub_22C84EC48()
{
  sub_22C369980();
  v1[413] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162);
  }

  else
  {
    v1[414] = v1[247];

    v2 = sub_22C85D2F4();

    return MEMORY[0x282200930](v2);
  }
}

uint64_t sub_22C84ECF0()
{
  sub_22C369980();
  v1[415] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C84FE74, 0, 0);
  }

  else
  {
    sub_22C379DF8(v1[398], v1[397], &qword_27D9BD290, &qword_22C917EC0);

    return MEMORY[0x282200930](v1 + 82);
  }
}

uint64_t sub_22C84EDAC()
{
  sub_22C369980();
  *(v1 + 3328) = v0;
  if (v0)
  {
    sub_22C36DD28(*(v1 + 3176), &qword_27D9BD290, &qword_22C917EC0);

    v2 = sub_22C8500B8;
  }

  else
  {
    v2 = sub_22C84EE44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22C84EE44()
{
  sub_22C38A1F0();
  sub_22C36D5EC();

  sub_22C903BFC();
  v1 = objc_allocWithZone(sub_22C903DCC());
  sub_22C36BAFC();
  v0[417] = sub_22C903D9C();
  v2 = swift_task_alloc();
  v0[418] = v2;
  *v2 = v0;
  v2[1] = sub_22C84EF3C;
  sub_22C386674(v0[403]);
  sub_22C7E4ED0();

  return sub_22C8516F4();
}

uint64_t sub_22C84EF3C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 3352) = v4;
  *(v2 + 3360) = v0;

  if (v0)
  {
    v5 = sub_22C8502B8;
  }

  else
  {
    v5 = sub_22C84F044;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C84F044(uint64_t a1)
{
  v70 = v1;
  sub_22C903D5C();
  v2 = sub_22C36CCF8();
  sub_22C85D5C8(v2, v3);
  if (v4)
  {
    sub_22C36DD28(*(v1 + 3128), &qword_27D9BD290, &qword_22C917EC0);
    sub_22C90400C();
    v5 = sub_22C9063CC();
    v6 = sub_22C90AADC();
    v7 = sub_22C370048(v6);
    v8 = *(v1 + 3352);
    v9 = *(v1 + 3336);
    if (v7)
    {
      v10 = sub_22C36FB44();
      v11 = sub_22C370060();
      v69 = v11;
      *v10 = 136315138;
      sub_22C36EE00();
      *(v10 + 4) = sub_22C36F9F4(0xD000000000000063, v12, &v69);
      sub_22C374ED0();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_22C36FF94(v11);
      sub_22C370510();
      sub_22C36BAE0();
    }

    v18 = sub_22C36BAFC();
    v19(v18);
    sub_22C36A748();
    sub_22C36C640(v20, v21, v22, v23);
    v24 = sub_22C85D2F4();
  }

  else
  {
    v25 = *(v1 + 2936);
    v26 = *(v25 + 32);
    v26(*(v1 + 3032), *(v1 + 3128), *(v1 + 2888));
    sub_22C90400C();
    v27 = v25 + 16;
    v28 = sub_22C36BA00();
    v29(v28);

    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();

    v32 = os_log_type_enabled(v30, v31);
    v68 = *(v1 + 3336);
    if (v32)
    {
      v63 = v31;
      v33 = *(v1 + 2936);
      v61 = *(v1 + 2984);
      v62 = *(v1 + 2888);
      v64 = *(v1 + 3352);
      v65 = *(v1 + 2744);
      v66 = *(v1 + 2696);
      v67 = *(v1 + 2840);
      sub_22C370060();
      v69 = sub_22C84BEB8();
      *v27 = 136315650;
      sub_22C36EE00();
      *(v27 + 4) = sub_22C36F9F4(0xD000000000000063, v34, &v69);
      *(v27 + 12) = 2080;
      sub_22C903C7C();
      v35 = sub_22C37890C(&qword_281435720);
      v36 = sub_22C380220(v35);
      v60 = v30;
      v37 = v26;
      v39 = v38;
      v40 = sub_22C36D264();
      v41(v40);
      v42 = sub_22C36F9F4(v36, v39, &v69);
      v26 = v37;

      *(v27 + 14) = v42;
      *(v27 + 22) = 2080;
      v43 = sub_22C903F1C();
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v43);

      (*(v33 + 8))(v61, v62);
      v44 = sub_22C36D264();
      v47 = sub_22C36F9F4(v44, v45, v46);

      *(v27 + 24) = v47;
      sub_22C38B2B8(&dword_22C366000, v48, v63, "Output of %s for caller: %s\n%s");
      sub_22C375DD4(v49, v50, MEMORY[0x277D84F70] + 8);
      sub_22C37E124();
      sub_22C370510();

      (*(v65 + 8))(v67, v66);
    }

    else
    {

      v51 = sub_22C37170C();
      v52(v51);
      v53 = sub_22C36ECB4();
      v54(v53);
    }

    v55 = *(v1 + 2888);
    v26(*(v1 + 2072), *(v1 + 3032), v55);
    sub_22C36BECC();
    sub_22C36C640(v56, v57, v58, v55);
    v24 = sub_22C85D2F4();
  }

  return MEMORY[0x282200920](v24);
}

uint64_t sub_22C84F4BC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C84F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v26 = v16[373];
  v27 = v16[355];
  v28 = v16[349];
  v29 = v16[331];
  v30 = v16[313];

  sub_22C369C50();
  sub_22C36EC40();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t sub_22C84F69C()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C84F754()
{
  v1 = v0[313];
  v2 = v0[307];
  v3 = v0[301];
  sub_22C3766E0((v0[403] + 16), *(v0[403] + 40));
  sub_22C90621C();
  v4 = sub_22C36D39C();
  v5(v4);
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v6 = sub_22C3E3574();
  sub_22C372F94(v6, v7);
  v8 = sub_22C3E3574();
  sub_22C372F94(v8, v9);
  v10 = sub_22C3E3574();
  sub_22C372F94(v10, v11);

  sub_22C37F620();

  return v12();
}

uint64_t sub_22C84F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[406];
  v27 = v24[403];
  v45 = v24[407];
  v46 = v24[402];
  sub_22C373B8C();
  v28 = v24[307];
  v29 = v24[301];
  sub_22C3766E0((v27 + 16), *(v27 + 40));
  sub_22C90621C();
  v30 = sub_22C37A478();
  v31(v30);
  (*(v28 + 8))(v25, v29);
  swift_willThrow();

  v32 = sub_22C85D13C();
  sub_22C372F94(v32, v26);
  v33 = sub_22C36A484();
  sub_22C372F94(v33, v45);
  v34 = sub_22C3E3574();
  sub_22C372F94(v34, v35);

  sub_22C37F620();
  sub_22C375C0C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84FA9C()
{
  sub_22C369980();

  v0 = sub_22C377770();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_22C84FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v26 = v24[406];
  v27 = v24[403];
  v45 = v24[407];
  v46 = v24[402];
  sub_22C373B8C();
  v28 = v24[307];
  v29 = v24[301];
  sub_22C3766E0((v27 + 16), *(v27 + 40));
  sub_22C90621C();
  v30 = sub_22C37A478();
  v31(v30);
  (*(v28 + 8))(v25, v29);
  swift_willThrow();

  v32 = sub_22C85D13C();
  sub_22C372F94(v32, v26);
  v33 = sub_22C36A484();
  sub_22C372F94(v33, v45);
  v34 = sub_22C3E3574();
  sub_22C372F94(v34, v35);

  sub_22C37F620();
  sub_22C375C0C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22C84FCA4()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C84FE74()
{
  sub_22C369980();

  v0 = sub_22C85D2F4();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_22C84FEE8()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C8500EC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C8502B8()
{
  sub_22C369980();

  v1 = sub_22C85D2F4();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C85032C()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3216), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C377770();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C8504F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C84DCEC(a2);
}

uint64_t sub_22C850594()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  sub_22C85D364();

  return v9();
}

uint64_t sub_22C850684(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C84CCF0(a2);
}

uint64_t sub_22C850720(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C85D114;

  return v5();
}

uint64_t sub_22C85080C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85094C, 0, 0);
  }

  else
  {

    sub_22C369C50();

    return v7();
  }
}

uint64_t sub_22C85094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v11 = v10[19];
  v13 = v10[8];
  v12 = v10[9];
  v14 = v10[7];

  (*(v13 + 104))(v12, *MEMORY[0x277D1EC70], v14);
  sub_22C903C8C();
  sub_22C858AA4(v11, 0xD000000000000032, 0x800000022C937A80, v12, v15);
  v16 = sub_22C36ECB4();
  v17(v16);

  type metadata accessor for RetrievedToolContext(0);
  sub_22C36A748();
  v22 = sub_22C36C640(v18, v19, v20, v21);
  sub_22C85D498(v22, v23, v24, v25, v26, v27, v28, v29);

  sub_22C369C50();
  sub_22C36EC14();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_22C850A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C850B28, 0, 0);
}

uint64_t sub_22C850B28()
{
  sub_22C36FB38();
  sub_22C379DF8(v0[6], v0[8], &qword_27D9C09E0, &qword_22C929868);
  v1 = type metadata accessor for RetrievedToolContext(0);
  v2 = sub_22C36CCF8();
  v4 = sub_22C370B74(v2, v3, v1);
  v5 = v0[8];
  if (v4 == 1)
  {
    sub_22C36DD28(v0[8], &qword_27D9C09E0, &qword_22C929868);
    v6 = 0;
  }

  else
  {
    v6 = *v5;

    sub_22C84B5D8(v5);
  }

  v7 = v0[6];
  v8 = v0[7];
  v0[2] = v6;
  sub_22C379DF8(v7, v8, &qword_27D9C09E0, &qword_22C929868);
  v9 = sub_22C36CCF8();
  v11 = sub_22C370B74(v9, v10, v1);
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_22C36DD28(v0[7], &qword_27D9C09E0, &qword_22C929868);
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 8);

    sub_22C84B5D8(v12);
  }

  v0[9] = v13;
  swift_task_alloc();
  sub_22C36CC90();
  v0[10] = v14;
  *v14 = v15;
  v16 = sub_22C387CEC(v14);

  return sub_22C850DF8(v16, v17, v18, v19);
}

uint64_t sub_22C850C9C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D12C, 0, 0);
  }

  else
  {

    sub_22C369C50();

    return v7();
  }
}

uint64_t sub_22C850DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v5[9] = a4;
  v5[10] = v6;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = *v6;
  v8 = sub_22C9063DC();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_22C905A5C();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v10 = sub_22C90363C();
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v11 = sub_22C903E9C();
  v5[22] = v11;
  v5[23] = *(v11 - 8);
  v12 = swift_task_alloc();
  v13 = *a3;
  v5[24] = v12;
  v5[25] = v13;

  return MEMORY[0x2822009F8](sub_22C85100C, 0, 0);
}

uint64_t sub_22C851360()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 256) = v0;

  sub_22C6343B0();
  (*(v1[16] + 8))(v1[17], v1[15]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8516F4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_22C90363C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v1[9] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v6);
  v1[10] = sub_22C3699D4();
  v7 = sub_22C905A5C();
  v1[11] = v7;
  sub_22C3699B8(v7);
  v1[12] = v8;
  v1[13] = sub_22C3699D4();
  v9 = sub_22C903E9C();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v1[16] = sub_22C3699D4();
  v11 = sub_22C9063DC();
  v1[17] = v11;
  sub_22C3699B8(v11);
  v1[18] = v12;
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = sub_22C903D4C();
  v1[23] = v13;
  sub_22C3699B8(v13);
  v1[24] = v14;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C851950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v18 = *(v16 + 192);
  *(v16 + 216) = *(*(v16 + 24) + 96);
  sub_22C903C7C();
  sub_22C9034EC();
  sub_22C3724F4(&qword_281435728);
  sub_22C36ECB4();
  sub_22C90A56C();
  sub_22C36ECB4();
  sub_22C90A56C();
  v19 = *(v18 + 8);
  *(v16 + 224) = v19;
  *(v16 + 232) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20 = sub_22C36D264();
  v19(v20);
  v21 = sub_22C36D39C();
  v19(v21);
  if (*(v16 + 272) == *(v16 + 276))
  {
    *(v16 + 240) = *(*(v16 + 24) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_cancellationToken);
    sub_22C36EC40();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  else
  {
    sub_22C85D4F4();
    v26 = sub_22C375194();
    v27(v26);
    sub_22C85D4B4();
    v28 = sub_22C38ABE0();
    v29(v28);
    if (v19)
    {
      v57 = sub_22C37E8E0();
      sub_22C36CD90((v17 + 16));
      v30 = sub_22C85D354();
      v31(v30);
      v32 = swift_task_alloc();
      *(v16 + 248) = v32;
      *(v32 + 16) = v17;
      *(v32 + 24) = vextq_s8(v57, v57, 8uLL);
      v33 = swift_task_alloc();
      *(v16 + 256) = v33;
      sub_22C903DCC();
      sub_22C381898();
      *v33 = v34;
      v33[1] = sub_22C85205C;
      sub_22C370AB0();
      sub_22C36EC40();

      return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
    }

    else
    {
      sub_22C90400C();
      v36 = sub_22C9063CC();
      v37 = sub_22C90AABC();
      if (sub_22C37B204(v37))
      {
        v38 = sub_22C36D240();
        sub_22C36C890(v38);
        sub_22C36BB14(&dword_22C366000, v39, v40, "runJointResolverServices skipped as Joint Resolver is not enabled or requested");
        sub_22C372FB0();
      }

      v41 = *(v16 + 32);

      v42 = sub_22C36BAFC();
      v43(v42);
      sub_22C85D450();
      v55 = *(v16 + 80);
      v56 = *(v16 + 72);
      v58 = v44;
      v45 = v41;

      sub_22C36D5E0();
      sub_22C36EC40();

      return v48(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, v58, a12, a13, a14, a15, a16);
    }
  }
}

uint64_t sub_22C851C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v30;
  a26 = v31;
  sub_22C379BA4();
  a24 = v27;
  if (*(v27 + 280))
  {
    sub_22C85D4F4();
    v32 = sub_22C375194();
    v33(v32);
    sub_22C85D4B4();
    v34 = sub_22C38ABE0();
    v35(v34);
    if (v26)
    {
      v76 = sub_22C37E8E0();
      sub_22C36CD90((v29 + 16));
      v36 = sub_22C85D354();
      v37(v36);
      v38 = swift_task_alloc();
      *(v27 + 248) = v38;
      *(v38 + 16) = v29;
      *(v38 + 24) = vextq_s8(v76, v76, 8uLL);
      v39 = swift_task_alloc();
      *(v27 + 256) = v39;
      sub_22C903DCC();
      sub_22C381898();
      *v39 = v40;
      v39[1] = sub_22C85205C;
      sub_22C370AB0();
      sub_22C375E04();

      return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
    }

    sub_22C90400C();
    v57 = sub_22C9063CC();
    v58 = sub_22C90AABC();
    if (sub_22C37B204(v58))
    {
      v59 = sub_22C36D240();
      sub_22C36C890(v59);
      sub_22C36BB14(&dword_22C366000, v60, v61, "runJointResolverServices skipped as Joint Resolver is not enabled or requested");
      sub_22C372FB0();
    }

    v62 = *(v27 + 32);

    v63 = sub_22C36BAFC();
    v64(v63);
    v65 = v62;
    v78 = *(v27 + 32);
  }

  else
  {
    sub_22C90400C();

    v43 = sub_22C9063CC();
    v44 = sub_22C90AACC();

    if (os_log_type_enabled(v43, v44))
    {
      a9 = *(v27 + 224);
      a10 = *(v27 + 232);
      v45 = *(v27 + 208);
      v46 = *(v27 + 184);
      a11 = *(v27 + 144);
      a12 = *(v27 + 136);
      v77 = *(v27 + 176);
      sub_22C370060();
      a15 = sub_22C84BEB8();
      *v28 = 136315650;
      v47 = sub_22C903C6C();
      v49 = sub_22C36F9F4(v47, v48, &a15);

      *(v28 + 4) = v49;
      *(v28 + 12) = 2080;
      sub_22C38C518();
      v50 = sub_22C380748();
      *(v28 + 14) = sub_22C36F9F4(v50, v51, v52);
      *(v28 + 22) = 2080;
      sub_22C903C7C();
      sub_22C37890C(&qword_281435720);
      sub_22C90B47C();
      sub_22C385D88();
      a9(v45, v46);
      v53 = sub_22C37170C();
      sub_22C36F9F4(v53, v54, v55);
      sub_22C37FF48();

      *(v28 + 24) = v45;
      sub_22C38B2B8(&dword_22C366000, v56, v44, "QueryDecorator: processing for %s was cancelled. Did not run %s for outdated query for caller: %s");
      swift_arrayDestroy();
      sub_22C36C30C();
      sub_22C370510();

      (*(a11 + 8))(v77, a12);
    }

    else
    {

      v66 = sub_22C37170C();
      v67(v66);
    }

    v78 = *(v27 + 32);
  }

  sub_22C85D4CC();

  sub_22C36D5E0();
  sub_22C375E04();

  return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, v78, a14, a15, a16, a17, a18);
}

uint64_t sub_22C85205C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 264) = v0;

  sub_22C6343B0();
  (*(v1[12] + 8))(v1[13], v1[11]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8521C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = v16[2];
  if (sub_22C903DAC() || sub_22C903DBC())
  {

    goto LABEL_4;
  }

  v44 = v16[10];
  sub_22C903D5C();
  v45 = sub_22C903F4C();
  v46 = sub_22C370B74(v44, 1, v45);
  sub_22C36DD28(v44, &qword_27D9BD290, &qword_22C917EC0);
  if (v46 != 1)
  {
LABEL_4:
    sub_22C90400C();
    v18 = v17;
    v19 = sub_22C9063CC();
    v20 = sub_22C90AABC();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v16[20];
    v24 = v16[17];
    v23 = v16[18];
    if (v21)
    {
      a10 = v16[17];
      v25 = sub_22C383050();
      a12 = sub_22C37A180();
      *v25 = 136315394;
      sub_22C36EE00();
      v26 = sub_22C380748();
      *(v25 + 4) = sub_22C36F9F4(v26, v27, v28);
      *(v25 + 12) = 2080;
      a9 = v22;
      v29 = v18;
      v30 = [v29 description];
      sub_22C90A11C();

      v64 = v29;
      v31 = sub_22C369D14();
      v34 = sub_22C36F9F4(v31, v32, v33);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_22C366000, v19, v20, "%s returning QDOutput:%s", v25, 0x16u);
      swift_arrayDestroy();
      sub_22C36C30C();
      sub_22C370510();

      (*(v23 + 8))(a9, a10);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      v64 = v18;
    }

    goto LABEL_7;
  }

  sub_22C90400C();
  v47 = sub_22C9063CC();
  v48 = sub_22C90AABC();
  v49 = sub_22C370048(v48);
  v50 = v16[21];
  v51 = v16[17];
  v52 = v16[18];
  if (v49)
  {
    v53 = sub_22C36FB44();
    a12 = sub_22C370060();
    *v53 = 136315138;
    v54 = sub_22C380748();
    *(v53 + 4) = sub_22C36F9F4(v54, 0x800000022C937A50, v55);
    _os_log_impl(&dword_22C366000, v47, v48, "%s Returning empty error QueryDecorationError.queryDecorationNoResponse", v53, 0xCu);
    sub_22C36FF94(a12);
    sub_22C37B09C();
    sub_22C36C30C();
  }

  (*(v52 + 8))(v50, v51);
  sub_22C839C24();
  v56 = swift_allocError();
  *v57 = 0;
  swift_willThrow();

  v58 = v16[9];
  v59 = v16[6];
  (*(v16[8] + 104))(v58, *MEMORY[0x277D1EC60], v16[7]);
  sub_22C903C8C();
  sub_22C858AA4(v56, 0xD00000000000002BLL, 0x800000022C937A50, v58, v60);
  v61 = sub_22C85D53C();
  v62(v61);

  v63 = v59;
  v64 = v16[4];
LABEL_7:
  sub_22C85D4CC();

  sub_22C36D5E0();
  sub_22C36EC40();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v64, a12, a13, a14, a15, a16);
}

uint64_t sub_22C8526A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = v16[33];
  v18 = v16[27];
  v19 = v16[9];
  v20 = sub_22C36D45C();
  v21(v20);
  sub_22C903C8C();
  v22 = sub_22C85D588();
  sub_22C85D324(v22, 43, v23, v24);
  if (v19)
  {
    v46 = v16[16];
    v48 = v16[13];
    v50 = v16[10];
    (*(v16[8] + 8))(v16[9], v16[7]);

    sub_22C379B94();
    sub_22C36EC40();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v46, v48, v50, a13, a14, a15, a16);
  }

  else
  {
    v34 = sub_22C85D53C();
    v35(v34);

    sub_22C85D450();
    v47 = v16[10];
    v49 = v16[9];
    v51 = v36;
    v37 = v18;

    sub_22C36D5E0();
    sub_22C36EC40();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v49, v51, a13, a14, a15, a16);
  }
}

uint64_t QueryDecorator.queryDecorationCollection(qdInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)()
{
  sub_22C369980();
  v1[114] = v0;
  v1[113] = v2;
  v1[112] = v3;
  v1[111] = v4;
  v1[110] = v5;
  v1[109] = v6;
  v1[115] = *v0;
  v7 = sub_22C905A5C();
  v1[116] = v7;
  sub_22C3699B8(v7);
  v1[117] = v8;
  v1[118] = sub_22C3699D4();
  v9 = sub_22C90622C();
  v1[119] = v9;
  sub_22C3699B8(v9);
  v1[120] = v10;
  v1[121] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v11);
  v1[122] = sub_22C3699D4();
  v12 = sub_22C90292C();
  v1[123] = v12;
  sub_22C3699B8(v12);
  v1[124] = v13;
  v1[125] = sub_22C3699D4();
  v14 = sub_22C90069C();
  v1[126] = v14;
  sub_22C3699B8(v14);
  v1[127] = v15;
  v1[128] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v1[129] = v16;
  sub_22C369914(v16);
  v1[130] = sub_22C36D0D4();
  v1[131] = swift_task_alloc();
  v17 = sub_22C9063DC();
  v1[132] = v17;
  sub_22C3699B8(v17);
  v1[133] = v18;
  v1[134] = sub_22C36D0D4();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v19 = sub_22C903D4C();
  v1[141] = v19;
  sub_22C3699B8(v19);
  v1[142] = v20;
  v1[143] = sub_22C36D0D4();
  v1[144] = swift_task_alloc();
  v21 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C852BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C383924();
  a31 = v33;
  a32 = v34;
  sub_22C382E34();
  a30 = v32;
  v35 = *(v32 + 1136);
  v36 = *(v32 + 920);
  v37 = *(v32 + 912);
  v115 = *(v32 + 888);
  v119 = *(v32 + 1048);
  v38 = *(v32 + 872);
  sub_22C903C7C();
  sub_22C854DA0((v37 + 104));
  *(v32 + 1160) = *(v35 + 8);
  *(v32 + 1168) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39 = sub_22C36BAFC();
  v123 = v40;
  v40(v39);
  sub_22C90400C();
  sub_22C379DF8(v115, v119, &qword_27D9C0250, &unk_22C929510);

  v41 = v38;
  v42 = sub_22C9063CC();
  v43 = sub_22C90AABC();

  if (os_log_type_enabled(v42, v43))
  {
    v112 = *(v32 + 1064);
    v116 = *(v32 + 1056);
    v120 = *(v32 + 1120);
    v44 = *(v32 + 1048);
    v45 = *(v32 + 1032);
    v46 = *(v32 + 880);
    swift_slowAlloc();
    v110 = sub_22C84BEB8();
    a16 = v110;
    *v36 = 136315906;
    *(v36 + 4) = sub_22C85D480(v110, 0x800000022C9377C0, &a16);
    *(v36 + 12) = 1024;
    *(v36 + 14) = v46 != 0;

    *(v36 + 18) = 2080;
    v47 = sub_22C369D14();
    sub_22C379DF8(v47, v48, &qword_27D9C0250, &unk_22C929510);
    sub_22C90A1AC();
    sub_22C385D88();
    v49 = v44;
    v50 = MEMORY[0x277D84F70];
    sub_22C36DD28(v49, &qword_27D9C0250, &unk_22C929510);
    v51 = sub_22C37170C();
    sub_22C36F9F4(v51, v52, v53);
    sub_22C37FF48();

    *(v36 + 20) = v45;
    *(v36 + 28) = 2080;
    *(v32 + 848) = sub_22C903CAC();
    *(v32 + 856) = v54;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    v55 = sub_22C90A1AC();
    v57 = sub_22C36F9F4(v55, v56, &a16);

    *(v36 + 30) = v57;
    _os_log_impl(&dword_22C366000, v42, v43, "%s running queryDecorationCollection (toolboxPresent: %{BOOL}d, qdLookback: %s), requestId: %s", v36, 0x26u);
    sub_22C375DD4(v58, v59, v50 + 8);
    sub_22C37E124();
    sub_22C370510();

    v60 = *(v112 + 8);
    v60(v120, v116);
  }

  else
  {
    v61 = *(v32 + 1064);
    v62 = *(v32 + 1048);

    sub_22C36DD28(v62, &qword_27D9C0250, &unk_22C929510);
    v60 = *(v61 + 8);
    v63 = sub_22C37170C();
    (v60)(v63);
  }

  *(v32 + 1176) = v60;
  v64 = *(v32 + 872);
  sub_22C90400C();
  v65 = v64;
  v66 = sub_22C9063CC();
  v67 = sub_22C90AABC();

  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v32 + 1112);
  v70 = *(v32 + 1056);
  if (v68)
  {
    v117 = *(v32 + 1112);
    v71 = *(v32 + 872);
    v113 = *(v32 + 1056);
    v72 = sub_22C383050();
    a16 = sub_22C37A180();
    *v72 = 136315394;
    sub_22C36EE00();
    *(v72 + 4) = sub_22C85D480(v73, v74, &a16);
    *(v72 + 12) = 2080;
    v121 = v60;
    v75 = v71;
    v76 = [v75 description];
    v77 = sub_22C90A11C();
    v79 = v78;

    v80 = sub_22C36F9F4(v77, v79, &a16);

    *(v72 + 14) = v80;
    v60 = v121;
    sub_22C374ED0();
    _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
    swift_arrayDestroy();
    sub_22C370510();
    sub_22C36BAE0();

    v86 = v113;
    v87 = v117;
  }

  else
  {

    v87 = v69;
    v86 = v70;
  }

  v60(v87, v86);
  v88 = *(v32 + 872);
  sub_22C903C7C();
  sub_22C9034CC();
  sub_22C3724F4(&qword_281435728);
  sub_22C36ECB4();
  sub_22C90A56C();
  sub_22C36ECB4();
  sub_22C90A56C();
  v89 = sub_22C36D264();
  v123(v89);
  v90 = sub_22C36D39C();
  v91 = (v123)(v90);
  if (*(v32 + 1360) == *(v32 + 1364))
  {
    if (qword_281431278 != -1)
    {
      v91 = sub_22C38A0F4(&qword_281431278);
    }

    *(v32 + 1184) = sub_22C36FAB8(v91);
    sub_22C375C0C();

    return MEMORY[0x2822009F8](v92, v93, v94);
  }

  else
  {
    v96 = *(v32 + 872);
    *(v32 + 1208) = v96;
    v97 = *(v32 + 1024);
    v98 = *(v32 + 1016);
    v99 = *(v32 + 1000);
    v100 = *(v32 + 992);
    v111 = *(v32 + 984);
    v114 = *(v32 + 1008);
    v101 = *(v32 + 912);
    v118 = *(v32 + 904);
    v122 = *(v32 + 976);
    v102 = *(v32 + 896);
    v124 = *(v32 + 880);
    v125 = *(v32 + 1040);
    sub_22C379DF8(*(v32 + 888), v125, &qword_27D9C0250, &unk_22C929510);
    sub_22C379DF8(v102, v32 + 736, &qword_27D9C06A0, &qword_22C929950);
    v104 = v101[11];
    v103 = v101[12];
    sub_22C374168(v101 + 8, v104);
    v105 = v96;
    sub_22C903C9C();
    sub_22C903C0C();
    sub_22C90291C();

    (*(v103 + 8))(&a16, v97, v99, v104, v103);
    (*(v100 + 8))(v99, v111);
    (*(v98 + 8))(v97, v114);
    sub_22C378A4C((v101 + 13), v32 + 776);
    sub_22C379DF8(v118, v122, &qword_27D9C06F8, &qword_22C929520);
    type metadata accessor for QueryDecorationContext(0);
    swift_allocObject();

    *(v32 + 1216) = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v105, v124, v125, v32 + 736, &a16, (v32 + 776), v122);
    v106 = swift_task_alloc();
    *(v32 + 1224) = v106;
    *v106 = v32;
    sub_22C37BCE8(v106);
    sub_22C375C0C();

    return sub_22C83B470(v107);
  }
}

uint64_t sub_22C853428()
{
  sub_22C369980();
  *(v0 + 1192) = sub_22C8316FC();
  *(v0 + 1200) = v1;
  v2 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C85348C(uint64_t a1)
{
  v63 = v1;
  v2 = v1[150];
  v3 = sub_22C903CAC();
  if (v2)
  {
    if (v4)
    {
      if (v1[149] == v3 && v1[150] == v4)
      {

LABEL_17:

LABEL_19:
        v23 = v1[109];
        goto LABEL_20;
      }

      v6 = sub_22C90B4FC();

      if (v6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v4)
    {

      goto LABEL_19;
    }
  }

  sub_22C90400C();
  v7 = sub_22C9063CC();
  v8 = sub_22C90AADC();
  v9 = sub_22C370048(v8);
  v10 = v1[147];
  if (v9)
  {
    v11 = sub_22C36FB44();
    v12 = sub_22C370060();
    v62[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22C85D480(v12, 0x800000022C9377C0, v62);
    sub_22C374ED0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_22C36FF94(v12);
    sub_22C370510();
    sub_22C36BAE0();
  }

  v18 = sub_22C36BAFC();
  v10(v18);
  v19 = v1[109];
  sub_22C903C6C();
  sub_22C903C3C();
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C903C7C();
  sub_22C903BFC();
  sub_22C903C8C();
  sub_22C903C1C();
  v20 = objc_allocWithZone(sub_22C903CBC());
  v21 = sub_22C903C5C();

  v22 = v21;
  sub_22C90400C();
  v23 = v22;
  v24 = sub_22C9063CC();
  v25 = sub_22C90AABC();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v1[147];
  v28 = v1[137];
  v29 = v1[132];
  if (v26)
  {
    v60 = v1[132];
    v30 = sub_22C383050();
    v62[0] = sub_22C37A180();
    *v30 = 136315394;
    sub_22C36EE00();
    v33 = sub_22C85D480(v31, v32, v62);
    sub_22C85D430(v33);
    v59 = v27;
    v1[104] = sub_22C903CAC();
    v1[105] = v34;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    sub_22C90A1AC();

    v35 = sub_22C372164();
    v38 = sub_22C36F9F4(v35, v36, v37);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_22C366000, v24, v25, "%s Mighty requestId replaced with Mini reuqestId %s", v30, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C37B09C();

    v59(v28, v60);
  }

  else
  {

    v27(v28, v29);
  }

LABEL_20:
  v1[151] = v23;
  v39 = v1[128];
  v40 = v1[127];
  v41 = v1[125];
  v42 = v1[124];
  v55 = v1[123];
  v56 = v1[126];
  v43 = v1[114];
  v57 = v1[113];
  v58 = v1[122];
  v44 = v1[112];
  v61 = v1[130];
  sub_22C379DF8(v1[111], v61, &qword_27D9C0250, &unk_22C929510);
  sub_22C379DF8(v44, (v1 + 92), &qword_27D9C06A0, &qword_22C929950);
  v46 = v43[11];
  v45 = v43[12];
  sub_22C374168(v43 + 8, v46);
  v23;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v45 + 8))(v62, v39, v41, v46, v45);
  (*(v42 + 8))(v41, v55);
  (*(v40 + 8))(v39, v56);
  sub_22C378A4C((v43 + 13), (v1 + 97));
  sub_22C379DF8(v57, v58, &qword_27D9C06F8, &qword_22C929520);
  type metadata accessor for QueryDecorationContext(0);
  swift_allocObject();

  v47 = sub_22C36D39C();
  v1[152] = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v47, v48, v61, v49, v50, v51, v58);
  v52 = swift_task_alloc();
  v1[153] = v52;
  *v52 = v1;
  v53 = sub_22C37BCE8(v52);

  return sub_22C83B470(v53);
}

uint64_t sub_22C853A50()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C853B34()
{
  sub_22C3743E4();
  v1 = v0[120];
  sub_22C374168((v0[152] + 16), *(v0[152] + 40));
  sub_22C90621C();
  sub_22C36BA00();
  sub_22C383BC8();
  v2();
  v0[154] = *(v1 + 8);
  v0[155] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3 = sub_22C36BAFC();
  v4(v3);
  v5 = swift_task_alloc();
  v0[156] = v5;
  *v5 = v0;
  v5[1] = sub_22C853C4C;
  sub_22C36A724();
  sub_22C372E90();

  return sub_22C84C9E0(v6, v7);
}

uint64_t sub_22C853C4C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 1256) = v0;

  if (v0)
  {
    v7 = sub_22C8549C0;
  }

  else
  {
    v7 = sub_22C853D48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C853D48()
{
  sub_22C3743E4();
  v1 = v0[152];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[114];
  sub_22C36CD90((v1 + 16));
  (*(v3 + 104))(v2, *MEMORY[0x277D20058], v4);
  v6 = swift_task_alloc();
  v0[158] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[159] = v7;
  sub_22C903DCC();
  sub_22C381898();
  *v7 = v8;
  v7[1] = sub_22C853E70;
  sub_22C372E90();

  return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
}

uint64_t sub_22C853E70()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1280) = v0;

  sub_22C6343B0();
  (*(v1[117] + 8))(v1[118], v1[116]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C853FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  sub_22C379BA4();
  a24 = v26;
  v29 = v26[108];
  v26[161] = v29;
  sub_22C90400C();

  v30 = v29;
  v31 = sub_22C9063CC();
  v32 = sub_22C90AABC();

  if (os_log_type_enabled(v31, v32))
  {
    v53 = v26[145];
    v33 = v26[144];
    v34 = v26[141];
    v54 = v26[133];
    v55 = v26[132];
    v56 = v26[136];
    v35 = sub_22C370060();
    a15 = swift_slowAlloc();
    *v35 = 136315650;
    sub_22C38C518();
    *(v35 + 4) = sub_22C85D480(v36, v37, v38);
    *(v35 + 12) = 2080;
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v40 = v39;
    v53(v33, v34);
    v41 = sub_22C85D3D8();
    v43 = sub_22C36F9F4(v41, v40, v42);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v44 = static QueryDecorationLoggingUtils.generateReadableQueryDecorationOutput(_:)();
    v46 = sub_22C36F9F4(v44, v45, &a15);

    *(v35 + 24) = v46;
    _os_log_impl(&dword_22C366000, v31, v32, "Output of QD Collection callQueryDecorationServices| %s for caller: %s\n%s", v35, 0x20u);
    swift_arrayDestroy();
    sub_22C37B09C();
    sub_22C36C30C();

    v47 = *(v54 + 8);
    v47(v56, v55);
  }

  else
  {
    v48 = v26[133];

    v47 = *(v48 + 8);
    v49 = sub_22C372164();
    (v47)(v49);
  }

  v26[162] = v47;
  v50 = swift_task_alloc();
  v26[163] = v50;
  *v50 = v26;
  v50[1] = sub_22C85424C;
  sub_22C386674(v26[152]);
  sub_22C375E04();

  return sub_22C8516F4();
}

uint64_t sub_22C85424C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1312) = v4;
  *(v2 + 1320) = v0;

  if (v0)
  {
    v5 = sub_22C854C50;
  }

  else
  {
    v5 = sub_22C854354;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C854354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[164];
  v14 = v12[154];
  v15 = v12[152];
  v16 = v12[114];
  sub_22C36D2A8();
  v17 = swift_allocObject();
  v12[166] = v17;
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v13;
  v18 = swift_task_alloc();
  v12[167] = v18;
  *(v18 + 16) = &unk_22C929A18;
  *(v18 + 24) = v17;

  v19 = v13;
  sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
  swift_asyncLet_begin();
  sub_22C3766E0((v15 + 16), *(v15 + 40));
  sub_22C90621C();
  v20 = sub_22C36D39C();
  v21(v20);
  v22 = sub_22C36BAFC();
  v14(v22);
  v23 = swift_task_alloc();
  v12[168] = v23;
  *v23 = v12;
  v23[1] = sub_22C8544DC;
  sub_22C386674(v12[164]);
  sub_22C372034();

  return sub_22C857904();
}

uint64_t sub_22C8544DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1352) = v3;

  v4 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8545C4(uint64_t a1)
{
  v26 = v1;
  v3 = v1[169];
  sub_22C90400C();

  v4 = v3;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();

  if (os_log_type_enabled(v5, v6))
  {
    v21 = v1[145];
    v23 = v1[135];
    v24 = v1[162];
    v22 = v1[132];
    sub_22C370060();
    v25 = sub_22C84BEB8();
    *v2 = 136315650;
    sub_22C36EE00();
    *(v2 + 4) = sub_22C85D480(v7, v8, &v25);
    *(v2 + 12) = 2080;
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v9 = sub_22C369D14();
    v21(v9);
    v10 = sub_22C372164();
    v13 = sub_22C36F9F4(v10, v11, v12);

    *(v2 + 14) = v13;
    *(v2 + 22) = 2080;
    v14 = static QueryDecorationLoggingUtils.generateReadableQueryDecorationOutput(_:)();
    v16 = sub_22C36F9F4(v14, v15, &v25);

    *(v2 + 24) = v16;
    sub_22C38B2B8(&dword_22C366000, v17, v6, "QDInternal: Final output of QD | %s caller: %s\n%s");
    swift_arrayDestroy();
    sub_22C36C30C();
    sub_22C370510();

    v24(v23, v22);
  }

  else
  {
    v18 = v1[162];

    v19 = sub_22C37170C();
    v18(v19);
  }

  return MEMORY[0x282200920](v1 + 2);
}

uint64_t sub_22C854820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C383924();
  sub_22C382E34();
  v25 = v24[164];
  v26 = v24[161];
  v27 = v24[151];
  v39 = v24[138];
  v40 = v24[137];
  v41 = v24[136];
  v42 = v24[135];
  v43 = v24[134];
  v44 = v24[131];
  v45 = v24[130];
  v46 = v24[128];
  v47 = v24[125];
  v48 = v24[122];
  v49 = v24[121];
  v50 = v24[118];

  sub_22C374168(v24 + 87, v24[90]);
  v28 = sub_22C36BAFC();
  v29(v28);
  sub_22C85D550();

  sub_22C36D5E0();
  sub_22C375C0C();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, a22, a23, a24);
}

uint64_t sub_22C8549C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C85D19C();
  v34 = sub_22C37B474();
  v35(v34);
  v36 = sub_22C36CA88();
  v32(v36);
  v37 = *(v33 + 96);
  sub_22C903C7C();
  v38 = sub_22C9002FC();
  sub_22C36CBE0(v38);

  v39 = sub_22C85D440();
  v40(v39);
  swift_willThrow();

  v41 = sub_22C85D2AC();
  v42(v41);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C85D19C();
  v34 = sub_22C37B474();
  v35(v34);
  v36 = sub_22C36CA88();
  v32(v36);
  v37 = *(v33 + 96);
  sub_22C903C7C();
  v38 = sub_22C9002FC();
  sub_22C36CBE0(v38);

  v39 = sub_22C85D440();
  v40(v39);
  swift_willThrow();

  v41 = sub_22C85D2AC();
  v42(v41);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();

  sub_22C85D19C();
  v35 = sub_22C37B474();
  v36(v35);
  v37 = sub_22C36CA88();
  v32(v37);
  v38 = *(v34 + 96);
  sub_22C903C7C();
  v39 = sub_22C9002FC();
  sub_22C36CBE0(v39);

  v40 = sub_22C85D440();
  v41(v40);
  swift_willThrow();

  v42 = sub_22C85D2AC();
  v43(v42);
  sub_22C85D550();

  sub_22C37F620();
  sub_22C37F7CC();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C854DA0(void *a1)
{
  v2 = sub_22C903D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9034CC();
  sub_22C386908(&qword_281435728, MEMORY[0x277D1F108]);
  sub_22C90A56C();
  sub_22C90A56C();
  (*(v3 + 8))(v5, v2);
  LODWORD(v3) = v11[2];
  v6 = v11[3];
  v7 = a1[3];
  v8 = a1[4];
  sub_22C374168(a1, v7);
  if (v6 == v3)
  {
    if (qword_27D9BA758 != -1)
    {
      swift_once();
    }

    v9 = &qword_27D9C05D0;
  }

  else
  {
    if (qword_281432B10 != -1)
    {
      swift_once();
    }

    v9 = &qword_281432B18;
  }

  return (*(v8 + 8))(*v9, v7, v8);
}

uint64_t sub_22C854F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_22C855020;

  return sub_22C85516C(a3);
}

uint64_t sub_22C855020()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    sub_22C85D364();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_22C85D374();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C855140()
{
  **(v0 + 16) = *(v0 + 32);
  sub_22C369C50();
  return v1();
}

uint64_t sub_22C85516C(uint64_t a1)
{
  v2[367] = v1;
  v2[361] = a1;
  v3 = sub_22C90622C();
  v2[373] = v3;
  v2[379] = *(v3 - 8);
  v2[385] = swift_task_alloc();
  v2[391] = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v2[397] = swift_task_alloc();
  v2[403] = swift_task_alloc();
  v4 = *(sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868) - 8);
  v2[409] = v4;
  v2[415] = *(v4 + 64);
  v2[421] = swift_task_alloc();
  v2[427] = swift_task_alloc();
  v5 = sub_22C903D4C();
  v2[433] = v5;
  v2[439] = *(v5 - 8);
  v2[445] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v2[451] = v6;
  v2[457] = *(v6 - 8);
  v2[463] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8553A8, 0, 0);
}

uint64_t sub_22C8553A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  sub_22C379BA4();
  a24 = v26;
  v26[469] = *(v26[361] + 96);
  v29 = sub_22C903C6C();
  v31 = v30;
  sub_22C90400C();

  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v26[463];
  v36 = v26[457];
  if (v34)
  {
    v65 = v26[451];
    sub_22C370060();
    a15 = sub_22C84BEB8();
    *v29 = 136315650;
    sub_22C38C518();
    *(v29 + 4) = sub_22C36F9F4(0xD000000000000027, v37, v38);
    *(v29 + 12) = 2080;
    v64 = v35;
    v39 = sub_22C36F9F4(v29, v31, &a15);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2080;
    sub_22C903C7C();
    sub_22C37890C(&qword_281435720);
    sub_22C90B47C();
    v41 = v40;
    v42 = sub_22C36ECB4();
    v43(v42);
    v44 = sub_22C85D3D8();
    v46 = sub_22C36F9F4(v44, v41, v45);

    *(v29 + 24) = v46;
    sub_22C38B2B8(&dword_22C366000, v47, v33, "QDInternal: %s starting to collect inputs for query: %s for caller: %s");
    sub_22C375DD4(v48, v49, MEMORY[0x277D84F70] + 8);
    sub_22C37E124();
    sub_22C370510();

    (*(v36 + 8))(v64, v65);
  }

  else
  {

    v50 = sub_22C372164();
    v52(v50, v51);
  }

  v53 = v26[367];
  v54 = v26[361];
  sub_22C36A83C();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v54;
  sub_22C36A83C();
  v56 = swift_allocObject();
  v26[475] = v56;
  sub_22C383A10(v56);

  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  *(v57 + 24) = v54;
  sub_22C36A83C();
  v58 = swift_allocObject();
  v26[481] = v58;
  sub_22C383A10(v58);

  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  swift_asyncLet_begin();
  sub_22C36A83C();
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  *(v59 + 24) = v54;
  sub_22C36A83C();
  v60 = swift_allocObject();
  v26[487] = v60;
  *(v60 + 16) = &unk_22C929B10;
  *(v60 + 24) = v59;

  swift_asyncLet_begin();
  sub_22C375E04();

  return MEMORY[0x282200930](v61);
}

uint64_t sub_22C855784()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 4088) = v0;

  if (v0)
  {
    v7 = sub_22C8563C4;
  }

  else
  {

    v7 = sub_22C855888;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C855888()
{
  sub_22C388250();
  sub_22C3743E4();
  v1 = v0[421];
  v2 = v0[409];
  v3 = v0[367];
  v4 = v0[361];
  sub_22C379DF8(v0[427], v1, &qword_27D9C09E0, &qword_22C929868);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[517] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_22C85C364(v1, v6 + v5);

  swift_asyncLet_begin();
  sub_22C3A5908(&qword_27D9C0A18, &qword_22C929B30);
  inited = swift_initStackObject();
  v0[523] = inited;
  *(inited + 16) = xmmword_22C90F870;
  sub_22C36EC14();

  return MEMORY[0x282200930](v8);
}

uint64_t sub_22C8559C8()
{
  *(v1 + 4232) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C85655C);
  }

  else
  {
    return sub_22C36B5E0(sub_22C8559F4);
  }
}

uint64_t sub_22C8559F4()
{
  sub_22C369980();
  v1 = v0[523];
  v2 = v0[343];
  v0[535] = v2;
  *(v1 + 32) = v2;

  v3 = sub_22C85D25C();

  return MEMORY[0x282200930](v3);
}

uint64_t sub_22C855A60()
{
  *(v1 + 4328) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856770);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855A8C);
  }
}

uint64_t sub_22C855A8C()
{
  sub_22C388250();
  sub_22C3743E4();
  *(v0[523] + 40) = v0[349];

  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (2)
  {
    while (2)
    {
      v0[547] = v3;
      do
      {
        if (v2 == 2)
        {
          goto LABEL_18;
        }

        v5 = *(v0[523] + 8 * v2++ + 32);
      }

      while (!v5);
      if (!v3)
      {
        v3 = v4;
      }

      v6 = *(v5 + 16);
      v7 = *(v3 + 16);
      if (__OFADD__(v7, v6))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v7 + v6 > *(v3 + 24) >> 1)
      {
        sub_22C595C60();
        v3 = v8;
      }

      if (*(v5 + 16))
      {
        v9 = (*(v3 + 24) >> 1) - *(v3 + 16);
        v1 = sub_22C90399C();
        if (v9 >= v6)
        {
          swift_arrayInitWithCopy();

          if (!v6)
          {
            continue;
          }

          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (!v11)
          {
            *(v3 + 16) = v12;
            continue;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x282200930](v1);
      }

      break;
    }

    if (!v6)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_18:
  swift_setDeallocating();
  sub_22C590144();
  sub_22C36EC14();

  return MEMORY[0x282200930](v1);
}

uint64_t sub_22C855C40()
{
  sub_22C369980();
  v1[548] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85698C, 0, 0);
  }

  else
  {
    v1[549] = v1[355];

    v2 = sub_22C375C28();

    return MEMORY[0x282200930](v2);
  }
}

uint64_t sub_22C855CE4()
{
  *(v1 + 4400) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856B94);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855D10);
  }
}

uint64_t sub_22C855D10()
{
  sub_22C36D5EC();
  v1 = *(v0 + 2888);
  sub_22C379DF8(*(v0 + 3224), *(v0 + 3176), &qword_27D9BD290, &qword_22C917EC0);
  sub_22C903BFC();
  v2 = objc_allocWithZone(sub_22C903DCC());
  sub_22C36D39C();
  *(v0 + 4408) = sub_22C903D9C();
  sub_22C378A4C(v1 + 16, v0 + 2664);
  v3 = *(v0 + 2688);
  *(v0 + 4416) = v3;
  *(v0 + 4432) = sub_22C374168((v0 + 2664), v3);
  *(v0 + 4440) = sub_22C903DAC();

  return MEMORY[0x282200930](v0 + 1296);
}

uint64_t sub_22C855E1C()
{
  *(v1 + 4448) = v0;
  if (v0)
  {
    return sub_22C36B5E0(sub_22C856DA8);
  }

  else
  {
    return sub_22C36B5E0(sub_22C855E48);
  }
}

uint64_t sub_22C855E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[555];
  v14 = v12[553];
  v15 = v12[552];
  v16 = v12[397];
  v17 = v12[385];
  v18 = v12[379];
  v24 = v12[373];
  v19 = v12[343];

  sub_22C903D5C();
  sub_22C90621C();
  (*(v14 + 48))(v13, v19, v16, v17, v15, v14);

  (*(v18 + 8))(v17, v24);
  sub_22C36DD28(v16, &qword_27D9BD290, &qword_22C917EC0);
  sub_22C36FF94(v12 + 333);
  v20 = swift_task_alloc();
  v12[557] = v20;
  *v20 = v12;
  v20[1] = sub_22C855F9C;
  sub_22C386674(v12[361]);
  sub_22C372034();

  return sub_22C857DBC(v21);
}

uint64_t sub_22C855F9C()
{
  sub_22C36FB38();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;
  *v2 = *v0;

  return MEMORY[0x282200920](v1 + 1936);
}

uint64_t sub_22C8560BC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C8561A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C376A88();
  v22 = *(v12 + 3080);

  sub_22C36D5E0();
  sub_22C372034();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_22C856304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v24 = *(v12 + 3944);
  sub_22C376A88();

  v13 = sub_22C3E3574();
  sub_22C372F94(v13, v14);

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_22C8563C4()
{
  sub_22C369980();

  v0 = sub_22C85D25C();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_22C85649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v24 = *(v12 + 4088);
  sub_22C376A88();

  v13 = sub_22C3E3574();
  sub_22C372F94(v13, v14);

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_22C85655C()
{
  sub_22C369980();
  *(*(v0 + 4184) + 16) = 0;
  swift_setDeallocating();
  sub_22C590144();
  v1 = sub_22C375C28();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C8565DC()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C856770()
{
  sub_22C369980();
  v1 = *(v0 + 4184);

  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_22C590144();
  v2 = sub_22C375C28();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_22C8567F8()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C85698C()
{
  sub_22C369980();

  v0 = sub_22C375C28();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_22C856A00()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C856B94()
{
  sub_22C369980();

  v0 = sub_22C375C28();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_22C856C14()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C856DA8()
{
  sub_22C369980();

  sub_22C36FF94((v0 + 2664));
  v1 = sub_22C375C28();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C856E34()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 3416), &qword_27D9C09E0, &qword_22C929868);
  v1 = sub_22C85D25C();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_22C856FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C857078;

  return sub_22C857174(a2, a3);
}

uint64_t sub_22C857078()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_22C36A724();
  }

  return v5(v4);
}

uint64_t sub_22C857174(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *v2;
  v4 = sub_22C903D4C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = sub_22C903E9C();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8572C8, 0, 0);
}

uint64_t sub_22C8572C8()
{
  sub_22C3743E4();
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v0 + 72) = sub_22C36E65C(1);
  *(v0 + 96) = &type metadata for QueryDecorationFeatureControl;
  *(v0 + 104) = &off_283FC14D0;
  type metadata accessor for AppPreLaunchSelectionService();
  inited = swift_initStackObject();
  v2 = *(v0 + 96);
  v3 = sub_22C36BAFC();
  v5 = sub_22C36D1E4(v3, v4);
  sub_22C36A948();
  v7 = v6;
  v8 = sub_22C3699D4();
  (*(v7 + 16))(v8, v5, v2);
  v9 = *v8;
  inited[5] = &type metadata for QueryDecorationFeatureControl;
  inited[6] = &off_283FC14D0;
  inited[2] = v9;
  sub_22C36FF94((v0 + 72));

  LOBYTE(v5) = sub_22C7ADC6C();
  swift_setDeallocating();
  sub_22C36FF94(inited + 2);
  if ((v5 & 1) == 0 || (v10 = *(v0 + 192), v11 = *(v0 + 112), v12 = sub_22C36D45C(), v13(v12), v14 = sub_22C37D894(v11, v10), v15 = sub_22C36D264(), v16(v15), !v14) || (sub_22C83AB78() & 1) != 0 || (v17 = *(v0 + 168), v18 = *(v0 + 144), v19 = *(v0 + 152), sub_22C903C7C(), sub_22C9034CC(), sub_22C3724F4(&qword_281435728), sub_22C36CA88(), sub_22C90A56C(), sub_22C36CA88(), sub_22C90A56C(), v20 = *(v19 + 8), v21 = sub_22C36ECB4(), v20(v21), (v20)(v17, v18), *(v0 + 208) != *(v0 + 212)))
  {

    sub_22C3E3574();
    sub_22C372E90();

    __asm { BRAA            X3, X16 }
  }

  sub_22C374168((*(v0 + 128) + 24), *(*(v0 + 128) + 48));
  v22 = swift_task_alloc();
  *(v0 + 200) = v22;
  *v22 = v0;
  v22[1] = sub_22C8575B8;
  sub_22C386674(*(v0 + 112));
  sub_22C372E90();

  return sub_22C84A49C();
}

uint64_t sub_22C8575B8()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_22C36A724();
  }

  return v5(v4);
}

uint64_t sub_22C85771C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C857808;

  return v5();
}

uint64_t sub_22C857808()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C36D994();
  *v8 = v7;
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  sub_22C7E4ED0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_22C857904()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v1[6] = sub_22C3699D4();
  v5 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v5);
  v1[7] = sub_22C36D0D4();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_22C903F4C();
  v1[10] = v6;
  sub_22C3699B8(v6);
  v1[11] = v7;
  v1[12] = sub_22C36D0D4();
  v1[13] = swift_task_alloc();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C857A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22C388D74();
  a23 = v25;
  a24 = v26;
  sub_22C381520();
  a22 = v24;
  v27 = v24 + 9;
  sub_22C903D5C();
  v28 = sub_22C36CCF8();
  sub_22C85D5C8(v28, v29);
  if (v30)
  {
    goto LABEL_5;
  }

  v27 = v24 + 8;
  v31 = v24[8];
  v32 = v24[13];
  v33 = *(v24[11] + 32);
  v33(v32, v24[9], v24[10]);
  sub_22C8591E8(v32, v31);
  v34 = sub_22C36CCF8();
  sub_22C85D5C8(v34, v35);
  if (v30)
  {
    (*(v24[11] + 8))(v24[13], v24[10]);
LABEL_5:
    v36 = v24[2];
    sub_22C36DD28(*v27, &qword_27D9BD290, &qword_22C917EC0);
    v37 = v36;
    goto LABEL_10;
  }

  v39 = v24[11];
  v38 = v24[12];
  v40 = v24[10];
  v41 = v24[7];
  v33(v38, v24[8], v40);
  sub_22C903DAC();
  (*(v39 + 16))(v41, v38, v40);
  sub_22C36BECC();
  sub_22C36C640(v42, v43, v44, v40);
  sub_22C903DBC();
  sub_22C903D6C();
  v45 = objc_allocWithZone(sub_22C903DCC());
  v46 = sub_22C903D9C();
  sub_22C90400C();
  v47 = v46;
  v48 = sub_22C9063CC();
  v49 = sub_22C90AACC();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v24[13];
  v52 = v24[10];
  v53 = v24[11];
  v55 = v24[5];
  v54 = v24[6];
  a12 = v24[4];
  if (v50)
  {
    a11 = v24[12];
    v56 = sub_22C383050();
    a10 = v51;
    v57 = swift_slowAlloc();
    a9 = v54;
    v58 = sub_22C370060();
    a13 = v58;
    *v56 = 136315394;
    sub_22C36EE00();
    *(v56 + 4) = sub_22C36F9F4(0xD000000000000032, v59, &a13);
    *(v56 + 12) = 2112;
    *(v56 + 14) = v47;
    *v57 = v47;
    v47;
    _os_log_impl(&dword_22C366000, v48, v49, "%s trimmed QueryDecorationOutput to avoid critical failure: %@", v56, 0x16u);
    sub_22C36DD28(v57, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C36FF94(v58);
    sub_22C37E124();
    sub_22C3699EC();

    (*(v55 + 8))(a9, a12);
    v60 = *(v53 + 8);
    v60(a11, v52);
    v60(a10, v52);
  }

  else
  {

    (*(v55 + 8))(v54, a12);
    v61 = *(v53 + 8);
    v62 = sub_22C369D14();
    v61(v62);
    (v61)(v51, v52);
  }

LABEL_10:

  sub_22C36D5E0();
  sub_22C36EC40();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C857DBC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C9063DC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_22C3A5908(&qword_27D9C01F0, &qword_22C9263C0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C857EB8, 0, 0);
}

uint64_t sub_22C857EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  v11 = sub_22C903CAC();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v16 = v10[12];
    v15 = v10[13];
    v17 = v10[8];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v18, v19, v20, v21);
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v22, v23, v24, v25);
    sub_22C3A5908(&qword_27D9C01F8, &qword_22C9263C8);
    sub_22C36A748();
    sub_22C36C640(v26, v27, v28, v29);
    v30 = (v15 + v16[7]);
    *v30 = v13;
    v30[1] = v14;
    v31 = (v15 + v16[8]);
    *v31 = 0x676E6967676F6CLL;
    v31[1] = 0xE700000000000000;
    v32 = (v15 + v16[9]);
    *v32 = 0;
    v32[1] = 0;
    v33 = (v15 + v16[11]);
    *v33 = 0;
    v33[1] = 0;
    *(v15 + v16[12]) = 0;
    sub_22C379DF8(v17 + 168, (v10 + 2), &qword_27D9C01C8, &qword_22C9298B0);
    if (v10[5])
    {
      v34 = v10[6];
      sub_22C3766E0(v10 + 2, v10[5]);
      v53 = *(v34 + 16) + **(v34 + 16);
      v35 = swift_task_alloc();
      v10[14] = v35;
      sub_22C3A5908(&qword_27D9C0200, &unk_22C9263D0);
      *v35 = v10;
      v35[1] = sub_22C858154;
      sub_22C83AB2C();

      return v41(v36, v37, v38, v39, v40, v41, v42, v43, v34 + 16, v53);
    }

    sub_22C36DD28(v10[13], &qword_27D9C01F0, &qword_22C9263C0);
    sub_22C36DD28((v10 + 2), &qword_27D9C01C8, &qword_22C9298B0);
  }

  sub_22C85D508();

  sub_22C369A24();
  sub_22C83AB2C();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_22C858154()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_22C8582D0;
  }

  else
  {
    v7 = sub_22C858250;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C858250()
{
  sub_22C369980();
  sub_22C36DD28(*(v0 + 104), &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94((v0 + 16));
  sub_22C85D508();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8582D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v11 = sub_22C85D508();
  sub_22C36DD28(v11, &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94((v10 + 16));
  sub_22C90400C();
  v12 = sub_22C9063CC();
  v13 = sub_22C90AADC();
  v14 = sub_22C370048(v13);
  v15 = *(v10 + 120);
  if (v14)
  {
    v16 = sub_22C36D240();
    *v16 = 0;
    _os_log_impl(&dword_22C366000, v12, v13, "Failed to cache SELF logger (Non fatal)", v16, 2u);
    sub_22C370510();
  }

  v17 = sub_22C36BAFC();
  v18(v17);
  sub_22C85D508();

  sub_22C369A24();
  sub_22C36EC14();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_22C8583D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22C85844C, 0, 0);
}

uint64_t sub_22C85844C()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_22C903C8C();
  v5 = v4;
  sub_22C36D2A8();
  v6 = swift_allocObject();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;

  v7 = v2;

  swift_task_alloc();
  sub_22C36CC90();
  v0[8] = v8;
  *v8 = v9;
  v8[1] = sub_22C858558;
  v10.n128_u64[0] = v5;

  return MEMORY[0x2821C8618](v10);
}

uint64_t sub_22C858558()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C858678, 0, 0);
  }

  else
  {

    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C858678()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C8586D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C858774, 0, 0);
}

uint64_t sub_22C858774()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  sub_22C374168((v0[3] + 24), *(v0[3] + 48));
  v0[7] = sub_22C903DAC();
  v0[8] = sub_22C903DBC();
  sub_22C903D5C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22C858848;
  sub_22C36ECB4();
  sub_22C7E4ED0();

  return sub_22C84960C();
}

uint64_t sub_22C858848()
{
  sub_22C388250();
  sub_22C3743E4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 48);
  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_22C36DD28(v7, &qword_27D9BD290, &qword_22C917EC0);

  sub_22C36EC14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8589E4()
{
  sub_22C369980();
  **(v0 + 16) = *(v0 + 88);

  sub_22C369C50();

  return v1();
}

uint64_t sub_22C858A48()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

id sub_22C858AA4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5)
{
  v49 = a2;
  v50 = a4;
  v8 = sub_22C9063DC();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = sub_22C9018BC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v24 = a1;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v23, v20);
    sub_22C90400C();

    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v53);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_22C36F9F4(v49, a3, &v53);
      *(v27 + 22) = 2048;
      *(v27 + 24) = a5;
      _os_log_impl(&dword_22C366000, v25, v26, "%s handling: %s timed out with timeout of %f", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v28, -1, -1);
      MEMORY[0x2318B9880](v27, -1, -1);
    }

    v29 = *(v51 + 8);
    v29(v19, v52);
    if ((sub_22C90362C() & 1) == 0)
    {
      sub_22C90400C();

      v30 = sub_22C9063CC();
      v31 = sub_22C90AADC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v53 = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v53);
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_22C36F9F4(v49, a3, &v53);
        _os_log_impl(&dword_22C366000, v30, v31, "%s handling: %s critical errors suppressed. Proceeding without results", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v33, -1, -1);
        MEMORY[0x2318B9880](v32, -1, -1);
      }

      return (v29)(v17, v52);
    }

LABEL_11:
    swift_willThrow();
    return a1;
  }

  sub_22C90400C();
  v35 = a1;

  v36 = sub_22C9063CC();
  v37 = sub_22C90AADC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53 = v40;
    *v38 = 136315650;
    *(v38 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v53);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_22C36F9F4(v49, a3, &v53);
    *(v38 + 22) = 2112;
    v41 = a1;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 24) = v42;
    *v39 = v42;
    _os_log_impl(&dword_22C366000, v36, v37, "%s handling: %s errored out with %@", v38, 0x20u);
    sub_22C36DD28(v39, &qword_27D9BB158, qword_22C910FD0);
    MEMORY[0x2318B9880](v39, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v40, -1, -1);
    MEMORY[0x2318B9880](v38, -1, -1);
  }

  v43 = *(v51 + 8);
  v43(v14, v52);
  if (sub_22C90362C())
  {
    goto LABEL_11;
  }

  sub_22C90400C();

  v44 = sub_22C9063CC();
  v45 = sub_22C90AADC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_22C36F9F4(0xD000000000000039, 0x800000022C937A10, &v53);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_22C36F9F4(v49, a3, &v53);
    _os_log_impl(&dword_22C366000, v44, v45, "%s handling: %s critical errors suppressed. Proceeding without results", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v47, -1, -1);
    MEMORY[0x2318B9880](v46, -1, -1);
  }

  return (v43)(v11, v52);
}

void sub_22C8591E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = sub_22C90377C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  sub_22C9037EC();
  sub_22C369824();
  v104 = v14;
  v105 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v92 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v88 = &v80 - v18;
  v19 = sub_22C9063DC();
  sub_22C369824();
  v87 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = sub_22C859A08();
  v27 = *(sub_22C903F1C() + 16);

  if (v26 >= v27)
  {
    sub_22C903F4C();
    sub_22C36A748();
    sub_22C37BF60();

    sub_22C36C640(v39, v40, v41, v42);
  }

  else
  {
    v103 = v5;
    v81 = v26;
    v83 = v24;
    v28 = sub_22C903F1C();
    sub_22C90400C();

    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    v31 = sub_22C370048(v30);
    v98 = v12;
    v99 = v9;
    v86 = a2;
    v85 = a1;
    v84 = v19;
    if (v31)
    {
      v32 = v29;
      v33 = sub_22C383050();
      v34 = sub_22C370060();
      v107 = v34;
      v35 = byte_22C90F000;
      *v33 = 136315394;
      *(v33 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C9378E0, &v107);
      *(v33 + 12) = 2048;
      *(v33 + 14) = *(v28 + 16);

      _os_log_impl(&dword_22C366000, v32, v30, "%s final count of tools %ld exceeds the expected count of prompt tools. Please clone off a radar to IntelligenceFlow | Query Decoration", v33, 0x16u);
      sub_22C36FF94(v34);
      sub_22C3699EC();
      sub_22C37E124();

      v36 = sub_22C383E74();
      v37(v36);
      v38 = v88;
    }

    else
    {

      v44 = sub_22C383E74();
      v45(v44);
      v38 = v88;
      v35 = byte_22C90F000;
    }

    v46 = v28;
    v47 = 0;
    v101 = *(v28 + 16);
    v97 = v104 + 16;
    v96 = *MEMORY[0x277D1ED28];
    v48 = (v103 + 104);
    v49 = (v103 + 8);
    v50 = *MEMORY[0x277D1ED30];
    v94 = *MEMORY[0x277D1ED40];
    v95 = v50;
    v93 = (v104 + 8);
    v90 = (v104 + 32);
    v91 = MEMORY[0x277D84F90];
    v51 = v89;
    v100 = v46;
    while (v101 != v47)
    {
      if (v47 >= *(v46 + 16))
      {
        __break(1u);
        return;
      }

      v103 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v52 = v47;
      v102 = *(v104 + 72);
      (*(v104 + 16))(v38, v46 + v103 + v102 * v47, v105);
      v53 = v98;
      sub_22C90378C();
      v54 = *v48;
      v55 = v99;
      (*v48)(v99, v96, v51);
      v56 = sub_22C90376C();
      v57 = *v49;
      v58 = sub_22C372158();
      v57(v58);
      (v57)(v53, v51);
      if (v56 & 1) != 0 || (sub_22C90378C(), v54(v55, v95, v51), v59 = sub_22C90376C(), v60 = sub_22C372158(), v57(v60), (v57)(v53, v51), (v59) || (sub_22C90378C(), v54(v55, v94, v51), v61 = sub_22C90376C(), v62 = sub_22C372158(), v57(v62), (v57)(v53, v51), (v61))
      {
        v63 = *v90;
        (*v90)(v92, v38, v105);
        v64 = v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B60C0(0, *(v64 + 16) + 1, 1);
          v38 = v88;
          v64 = v107;
        }

        v35 = byte_22C90F000;
        v67 = *(v64 + 16);
        v66 = *(v64 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_22C3B60C0(v66 > 1, v67 + 1, 1);
          v38 = v88;
          v64 = v107;
        }

        v47 = v52 + 1;
        *(v64 + 16) = v67 + 1;
        v91 = v64;
        v63(v64 + v103 + v67 * v102, v92, v105);
        v51 = v89;
        v46 = v100;
      }

      else
      {
        (*v93)(v38, v105);
        v47 = v52 + 1;
        v35 = byte_22C90F000;
        v46 = v100;
      }
    }

    v107 = v91;
    v68 = sub_22C7C524C(v81);

    v69 = v83;
    sub_22C90400C();

    v70 = sub_22C9063CC();
    v71 = sub_22C90AACC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = sub_22C383050();
      v106 = sub_22C37A180();
      *v72 = *(v35 + 363);
      *(v72 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C9378E0, &v106);
      *(v72 + 12) = 2080;
      v73 = static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v68);
      v75 = sub_22C36F9F4(v73, v74, &v106);

      *(v72 + 14) = v75;
      _os_log_impl(&dword_22C366000, v70, v71, "%s trimmed tools down to expected count. Returning these tools: %s", v72, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372FB0();
    }

    v82(v69, v84);
    sub_22C903EEC();
    sub_22C903EFC();
    sub_22C903F0C();
    sub_22C903F3C();
    sub_22C383BC8();
    sub_22C903EDC();
    sub_22C903F4C();
    sub_22C36BECC();
    sub_22C36C640(v76, v77, v78, v79);
    sub_22C37BF60();
  }
}

uint64_t sub_22C859A08()
{
  sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  v2 = v1;
  sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  v4 = v3;
  sub_22C374168((v0 + 216), *(v0 + 240));
  sub_22C37931C();
  if (v2 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C859AE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C3C0980;

  return sub_22C84DCEC(a2);
}

uint64_t sub_22C859B80()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_22C859CE8;
  }

  else
  {

    v7 = sub_22C859C84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C859C84()
{
  sub_22C369980();
  v1 = *(v0 + 16);

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C859CE8()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C859D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C859DF8, 0, 0);
}

uint64_t sub_22C859DF8()
{
  sub_22C36FB38();
  sub_22C379DF8(v0[6], v0[8], &qword_27D9C09E0, &qword_22C929868);
  v1 = type metadata accessor for RetrievedToolContext(0);
  v2 = sub_22C36CCF8();
  v4 = sub_22C370B74(v2, v3, v1);
  v5 = v0[8];
  if (v4 == 1)
  {
    sub_22C36DD28(v0[8], &qword_27D9C09E0, &qword_22C929868);
    v6 = 0;
  }

  else
  {
    v6 = *v5;

    sub_22C84B5D8(v5);
  }

  v7 = v0[6];
  v8 = v0[7];
  v0[2] = v6;
  sub_22C379DF8(v7, v8, &qword_27D9C09E0, &qword_22C929868);
  v9 = sub_22C36CCF8();
  v11 = sub_22C370B74(v9, v10, v1);
  v12 = v0[7];
  if (v11 == 1)
  {
    sub_22C36DD28(v0[7], &qword_27D9C09E0, &qword_22C929868);
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 8);

    sub_22C84B5D8(v12);
  }

  v0[9] = v13;
  swift_task_alloc();
  sub_22C36CC90();
  v0[10] = v14;
  *v14 = v15;
  v16 = sub_22C387CEC(v14);

  return sub_22C850DF8(v16, v17, v18, v19);
}

uint64_t sub_22C859F6C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85A0C8, 0, 0);
  }

  else
  {

    sub_22C369C50();

    return v7();
  }
}

uint64_t sub_22C85A0C8()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C85A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A150, 0, 0);
}

uint64_t sub_22C85A150()
{
  sub_22C36D5EC();
  v2 = v0[3];
  v1 = v0[4];
  sub_22C903C8C();
  sub_22C36A83C();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_22C3A5908(&qword_27D9C0A10, &qword_22C9299C8);
  sub_22C85D2E4();
  *v4 = v5;
  sub_22C85D57C();
  v6.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v6);
}

uint64_t sub_22C85A250()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85A370, 0, 0);
  }

  else
  {

    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C85A370()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C85A3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A3F0, 0, 0);
}

uint64_t sub_22C85A3F0()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22C85A480;
  sub_22C386674(*(v0 + 32));

  return sub_22C840B48();
}

uint64_t sub_22C85A480()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    sub_22C85D364();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = sub_22C85D374();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C85A5A0()
{
  **(v0 + 16) = *(v0 + 48);
  sub_22C369C50();
  return v1();
}

uint64_t sub_22C85A5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A5F0, 0, 0);
}

uint64_t sub_22C85A5F0()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22C85A680;
  sub_22C386674(*(v0 + 32));

  return sub_22C84881C();
}

uint64_t sub_22C85A680()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    sub_22C85D364();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = sub_22C85D374();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C85A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85A7C4, 0, 0);
}

uint64_t sub_22C85A7C4()
{
  sub_22C36D5EC();
  v2 = v0[3];
  v1 = v0[4];
  sub_22C903C8C();
  sub_22C36A83C();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_22C3A5908(&qword_27D9BE358, &qword_22C9299A0);
  sub_22C85D2E4();
  *v4 = v5;
  sub_22C85D57C();
  v6.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v6);
}

uint64_t sub_22C85A8C4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D130, 0, 0);
  }

  else
  {

    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C85A9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  v3[5] = swift_task_alloc();
  v4 = sub_22C90399C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C85AAF8, 0, 0);
}

uint64_t sub_22C85AAF8()
{
  sub_22C369980();
  sub_22C386E4C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_22C85AB8C;
  sub_22C386674(*(v0 + 32));

  return sub_22C842224();
}

uint64_t sub_22C85AB8C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (v0)
  {

    sub_22C369A24();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22C85ACE0, 0, 0);
  }
}

void sub_22C85ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v19 = 0;
  v20 = v18[7];
  v21 = v18[13];
  v53 = v18[12];
  v22 = *(v53 + 16);
  v23 = (v20 + 8);
  v51 = (v20 + 32);
  v52 = MEMORY[0x277D84F90];
  while (v22 != v19)
  {
    if (v19 >= *(v53 + 16))
    {
      __break(1u);
      return;
    }

    v24 = v18[10];
    v25 = v18[5];
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v27 = *(v20 + 72);
    (*(v20 + 16))(v24, v18[12] + v26 + v27 * v19, v18[6]);
    sub_22C85AF80(v24, v25);
    v28 = v21;
    v29 = v18[10];
    v30 = v18[6];
    if (v28)
    {

      (*v23)(v29, v30);
      sub_22C375E04();

      return;
    }

    v31 = v18[5];
    (*v23)(v18[10], v18[6]);
    sub_22C85D5C8(v31, 1);
    if (v32)
    {
      sub_22C36DD28(v18[5], &qword_27D9BB670, &unk_22C90FA40);
      v21 = 0;
      ++v19;
    }

    else
    {
      a9 = v18[9];
      a10 = v18[8];
      v33 = v18[6];
      v34 = *v51;
      (*v51)();
      (v34)(a10, a9, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C595C60();
        v52 = v39;
      }

      v36 = *(v52 + 16);
      if (v36 >= *(v52 + 24) >> 1)
      {
        sub_22C595C60();
        v52 = v40;
      }

      ++v19;
      v37 = v18[8];
      v38 = v18[6];
      *(v52 + 16) = v36 + 1;
      (v34)(v52 + v26 + v36 * v27, v37, v38);
      v21 = 0;
    }
  }

  v41 = v18[2];

  *v41 = v52;

  sub_22C369C50();
  sub_22C375E04();

  v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v51, v52, v20 + 16, v53, a15, a16, a17, a18);
}

uint64_t sub_22C85AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = sub_22C90952C();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9063DC();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90399C();
  v9 = *(v8 - 8);
  v85 = v8;
  v86 = v9;
  MEMORY[0x28223BE20](v8);
  v84 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v78 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v64 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v64 - v17);
  v19 = sub_22C9093BC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v81 = &v64 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v83 = &v64 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v64 - v30;
  sub_22C90391C();
  if (sub_22C370B74(v18, 1, v19) == 1)
  {
    v16 = v18;
LABEL_5:
    sub_22C36DD28(v16, &qword_27D9BB908, &qword_22C910960);
    v33 = v85;
    (*(v86 + 16))(a2, a1, v85);
    return sub_22C36C640(a2, 0, 1, v33);
  }

  v72 = a2;
  v73 = v2;
  v32 = *(v20 + 32);
  v32(v31, v18, v19);
  sub_22C82AA1C(v31, v16);
  if (sub_22C370B74(v16, 1, v19) == 1)
  {
    (*(v20 + 8))(v31, v19);
    a2 = v72;
    goto LABEL_5;
  }

  v34 = v83;
  v32(v83, v16, v19);
  v33 = v85;
  (*(v86 + 16))(v84, a1, v85);
  v35 = v82;
  sub_22C90400C();
  v36 = *(v20 + 16);
  v36(v27, v34, v19);
  v37 = v81;
  v70 = v36;
  v71 = v20 + 16;
  v36(v81, v31, v19);
  v38 = sub_22C9063CC();
  v39 = sub_22C90AACC();
  v40 = os_log_type_enabled(v38, v39);
  v69 = v31;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v64 = v41;
    v68 = swift_slowAlloc();
    v87 = v68;
    *v41 = 136315394;
    v42 = v74;
    v67 = v38;
    sub_22C90935C();
    v43 = sub_22C9094FC();
    v45 = v44;
    v66 = v39;
    v65 = *(v75 + 8);
    v65(v42, v77);
    v46 = *(v20 + 8);
    v75 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v27, v19);
    v47 = sub_22C36F9F4(v43, v45, &v87);

    v48 = v64;
    *(v64 + 1) = v47;
    *(v48 + 6) = 2080;
    v49 = v81;
    sub_22C90935C();
    v50 = sub_22C9094FC();
    v52 = v51;
    v65(v42, v77);
    v81 = v46;
    v46(v49, v19);
    v53 = sub_22C36F9F4(v50, v52, &v87);
    v33 = v85;

    *(v48 + 14) = v53;
    v54 = v67;
    _os_log_impl(&dword_22C366000, v67, v66, "corrected bundle id to %s. Was %s", v48, 0x16u);
    v55 = v68;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v55, -1, -1);
    MEMORY[0x2318B9880](v48, -1, -1);

    (*(v79 + 8))(v82, v80);
  }

  else
  {

    v56 = *(v20 + 8);
    v75 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v37, v19);
    v81 = v56;
    v56(v27, v19);
    (*(v79 + 8))(v35, v80);
  }

  a2 = v72;
  v57 = v83;
  v58 = v70;
  v70(v76, v83, v19);
  v59 = v84;
  sub_22C90396C();
  v60 = v78;
  v58(v78, v57, v19);
  sub_22C36C640(v60, 0, 1, v19);
  sub_22C90392C();
  v61 = v57;
  v62 = v81;
  (v81)(v61, v19);
  v62(v69, v19);
  (*(v86 + 32))(a2, v59, v33);
  return sub_22C36C640(a2, 0, 1, v33);
}

uint64_t sub_22C85B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22C85B75C, 0, 0);
}

uint64_t sub_22C85B75C()
{
  sub_22C369980();
  sub_22C386E4C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_22C5DF1B0;

  return sub_22C840000();
}

uint64_t sub_22C85B7F0(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22C378A4C(result, v3);
    v1 = v4;
    v2 = v5;
    sub_22C374168(v3, v4);
    (*(v2 + 8))(v1, v2);
    return sub_22C36FF94(v3);
  }

  return result;
}

uint64_t sub_22C85B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C85B890, 0, 0);
}

uint64_t sub_22C85B890()
{
  sub_22C3743E4();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22C903C8C();
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;

  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C85D2E4();
  *v6 = v7;
  sub_22C85D57C();
  v8.n128_f64[0] = sub_22C37C000();

  return MEMORY[0x2821C8618](v8);
}

uint64_t sub_22C85B9B4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85D134, 0, 0);
  }

  else
  {

    sub_22C369A24();

    return v7();
  }
}

uint64_t sub_22C85BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22C85BAFC, 0, 0);
}

uint64_t sub_22C85BAFC()
{
  sub_22C36D5EC();
  v1 = v0[11];
  sub_22C378A4C(v0[10] + 24, (v0 + 2));
  sub_22C374168(v0 + 2, v0[5]);
  v2 = v0[11];
  if (v1)
  {
    v0[7] = v2;
    v3 = v2;
  }

  else
  {
    sub_22C80E0F0(MEMORY[0x277D84FA0], v0 + 7);
    v3 = v0[7];
  }

  v0[8] = v3;

  swift_task_alloc();
  sub_22C36CC90();
  v0[14] = v4;
  *v4 = v5;
  v4[1] = sub_22C85BC20;

  return sub_22C83FB5C();
}

uint64_t sub_22C85BC20()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_22C85BDB0;
  }

  else
  {
    v7 = sub_22C85BD58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C85BD58()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 16));
  sub_22C369C50();

  return v1();
}

uint64_t sub_22C85BDB0()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 16));
  sub_22C369A24();

  return v1();
}

uint64_t sub_22C85BE0C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v53 = a1;
  v54 = sub_22C90622C();
  sub_22C369824();
  v52 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v51 = v9 - v8;
  v10 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  v49 = &v45 - v12;
  v48 = sub_22C90292C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  v47 = sub_22C90069C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v26 = sub_22C369914(v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v45 - v27;
  sub_22C903DEC();
  sub_22C36A748();
  sub_22C36C640(v29, v30, v31, v32);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v34 = v4[11];
  v33 = v4[12];
  sub_22C374168(v4 + 8, v34);
  v46 = a2;
  sub_22C903C9C();
  sub_22C903C0C();
  sub_22C90291C();

  (*(v33 + 8))(v56, v24, v18, v34, v33);
  (*(v14 + 8))(v18, v48);
  (*(v20 + 8))(v24, v47);
  sub_22C378A4C((v4 + 13), v55);
  v35 = v49;
  sub_22C85C794(v50, v49);
  sub_22C902DBC();
  sub_22C598F54();
  sub_22C36BECC();
  sub_22C36C640(v36, v37, v38, v39);
  type metadata accessor for QueryDecorationContext(0);
  swift_allocObject();
  v40 = QueryDecorationContext.init(input:toolboxResources:lookback:toolExecutionSession:selfLogger:signposter:intelligenceFlowSessionId:)(v46, 0, v28, v57, v56, v55, v35);
  v41 = v40[5];
  v42 = v40[6];
  sub_22C3766E0(v40 + 2, v41);
  v43 = v51;
  sub_22C90621C();
  (*(v42 + 104))(v53, v43, v41, v42);

  return (*(v52 + 8))(v43, v54);
}

uint64_t sub_22C85C1C4()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C374D1C(v2);
  *v3 = v4;
  v5 = sub_22C37BCE8(v3);

  return sub_22C8504F8(v5, v1);
}

uint64_t sub_22C85C24C()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C374D1C(v2);
  *v3 = v4;
  v5 = sub_22C37BCE8(v3);

  return sub_22C850684(v5, v1);
}

uint64_t sub_22C85C2D4()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C85C364(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C85C3D4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v0 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C369914(v0);
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  v2[1] = sub_22C46BC08;
  sub_22C36DBB4();
  sub_22C7E4ED0();

  return sub_22C850A7C(v4, v5, v6, v7);
}

uint64_t sub_22C85C4AC()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C854F80(v3, v4, v5);
}

uint64_t sub_22C85C53C()
{
  sub_22C36FB38();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C856FCC(v6, v1, v2);
}

uint64_t sub_22C85C5D4()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36A724();

  return v4(v3);
}

uint64_t sub_22C85C6CC()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C85C794(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902DBC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C85C7F8()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C374D1C(v2);
  *v3 = v4;
  v5 = sub_22C37BCE8(v3);

  return sub_22C850684(v5, v1);
}

uint64_t sub_22C85C880()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_22C374D1C(v2);
  *v3 = v4;
  v5 = sub_22C37BCE8(v3);

  return sub_22C859AE4(v5, v1);
}

uint64_t sub_22C85C908()
{
  v1 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C3699B8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for RetrievedToolContext(0);
  v8 = sub_22C36CCF8();
  if (!sub_22C370B74(v8, v9, v7))
  {

    v10 = *(v7 + 24);
    sub_22C903E7C();
    sub_22C36985C();
    (*(v11 + 8))(v0 + v4 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_22C85CA1C()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v0 = sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
  sub_22C369914(v0);
  v1 = swift_task_alloc();
  v2 = sub_22C36D860(v1);
  *v2 = v3;
  v2[1] = sub_22C382AF4;
  sub_22C36DBB4();
  sub_22C7E4ED0();

  return sub_22C859D4C(v4, v5, v6, v7);
}

uint64_t sub_22C85CAF4()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  sub_22C36DBE8(v1);
  sub_22C383BC8();
  sub_22C7E4ED0();

  return sub_22C85B868(v3, v4, v5, v6, v7);
}

uint64_t sub_22C85CB90()
{
  sub_22C38A1F0();
  sub_22C36D5EC();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  sub_22C36DBE8(v1);
  sub_22C383BC8();
  sub_22C7E4ED0();

  return sub_22C85BAD4(v3, v4, v5, v6, v7);
}

uint64_t sub_22C85CC2C()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A5CC(v3, v4, v5);
}

uint64_t sub_22C85CCBC()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C8583D8(v5, v6, v1, v0);
}

uint64_t sub_22C85CD50()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C8586D4(v5, v6, v1, v0);
}

uint64_t sub_22C85CDE4()
{
  sub_22C36FB38();
  sub_22C85D420();
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36DBE8(v3);

  return sub_22C85B738(v5, v6, v1, v0);
}

uint64_t sub_22C85CE78()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A7A0(v3, v4, v5);
}

uint64_t sub_22C85CF08()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A9E4(v3, v4, v5);
}

uint64_t sub_22C85CF98()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A12C(v3, v4, v5);
}

uint64_t sub_22C85D028()
{

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C85D064()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  v3 = sub_22C36C51C();

  return sub_22C85A3CC(v3, v4, v5);
}

uint64_t sub_22C85D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_22C372F94(a1, a9);
  sub_22C372F94(&unk_22C9299E0, a11);
}

uint64_t sub_22C85D19C()
{
  v2 = v0[152];
  v3 = v0[125];
  *(v1 - 112) = v0[128];
  *(v1 - 104) = v3;
  v4 = v0[118];
  *(v1 - 96) = v0[122];
  *(v1 - 88) = v4;
  sub_22C374168((v2 + 16), *(v2 + 40));

  return sub_22C90621C();
}

uint64_t sub_22C85D26C()
{
  sub_22C374168((v0 + 16), *(v0 + 40));

  return sub_22C90621C();
}

uint64_t sub_22C85D2AC()
{
  v1 = *(v0 + 720);
  sub_22C374168((v0 + 696), v1);
  return v1;
}

uint64_t sub_22C85D304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

id sub_22C85D324(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  v6 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_22C858AA4(a1, v6, a3, v4, a4);
}

uint64_t sub_22C85D388()
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;

  return sub_22C84C6D8(v3, 0, v0, v2 + 16, v1);
}

uint64_t sub_22C85D430(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t sub_22C85D480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000005ELL, a2, a3);
}

uint64_t sub_22C85D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

BOOL sub_22C85D4B4()
{

  return sub_22C37D894(v1, v0);
}

__n128 sub_22C85D514(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 144) = a1;
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_22C85D528()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = 2080;
  return v1;
}

uint64_t sub_22C85D550()
{
  sub_22C36FF94((v0 + 696));
}

uint64_t sub_22C85D5A8()
{

  return sub_22C903DEC();
}

uint64_t RetrievedTool.withAttribution(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_22C9037EC();
  sub_22C369A9C();
  v4 = sub_22C36BA00();
  v5(v4);
  result = type metadata accessor for RetrievedToolWithAttribution(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t RetrievedTool.withEmptyAttribution()@<X0>(uint64_t a1@<X8>)
{
  sub_22C9037EC();
  sub_22C369A9C();
  v2 = sub_22C36BA00();
  v3(v2);
  result = type metadata accessor for RetrievedToolWithAttribution(0);
  *(a1 + *(result + 20)) = 6;
  return result;
}

uint64_t RetrievedToolWithAttribution.id.getter()
{
  v0 = sub_22C9036EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  (*(v1 + 8))(v3, v0);

  return sub_22C36BA00();
}

uint64_t RetrievedToolWithAttribution.init(_:selectionCriteria:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_22C9037EC();
  sub_22C369A9C();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for RetrievedToolWithAttribution(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for RetrievedToolWithAttribution(uint64_t a1)
{
  result = qword_281431430;
  if (!qword_281431430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RetrievedToolWithAttribution.value.getter()
{
  sub_22C9037EC();
  v0 = sub_22C36BA00();

  return v1(v0);
}

uint64_t RetrievedToolWithAttribution.selectionCriteria.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RetrievedToolWithAttribution(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t RetrievedToolWithAttribution.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C9037EC();
  sub_22C369A9C();
  (*(v4 + 32))(a2, a1);
  result = type metadata accessor for RetrievedToolWithAttribution(0);
  *(a2 + *(result + 20)) = 6;
  return result;
}

uint64_t static RetrievedToolWithAttribution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22C90375C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RetrievedToolWithAttribution(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  return 1;
}

uint64_t ToolSelectionCriteria.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

unint64_t sub_22C85DA48()
{
  result = qword_27D9C0A28;
  if (!qword_27D9C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A28);
  }

  return result;
}

void sub_22C85DAC4(uint64_t a1)
{
  sub_22C9037EC();
  if (v1 <= 0x3F)
  {
    sub_22C85DB48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}