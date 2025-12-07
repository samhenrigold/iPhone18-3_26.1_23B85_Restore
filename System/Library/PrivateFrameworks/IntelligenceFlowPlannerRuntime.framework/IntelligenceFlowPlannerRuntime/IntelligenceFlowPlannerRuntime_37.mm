uint64_t sub_22C6DA458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = sub_22C9063DC();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v8 = sub_22C908A7C();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v9 = sub_22C901FAC();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v10 = sub_22C90880C();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for TranscriptValueFetcher(0);
  v6[42] = swift_task_alloc();
  v11 = sub_22C908EAC();
  v6[43] = v11;
  v6[44] = *(v11 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v6[47] = swift_task_alloc();
  v12 = sub_22C908ABC();
  v6[48] = v12;
  v6[49] = *(v12 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v13 = sub_22C90769C();
  v6[52] = v13;
  v6[53] = *(v13 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6DA7EC, 0, 0);
}

uint64_t sub_22C6DA7EC(uint64_t a1)
{
  v2 = v1[48];
  sub_22C906ABC();
  v1[57] = sub_22C906A8C();
  sub_22C908ADC();
  v3 = sub_22C36FD7C();
  v5 = sub_22C370B74(v3, v4, v2);
  v6 = v1[47];
  if (v5 == 1)
  {
    v7 = v1[53];

    sub_22C36DD80(v6, &qword_27D9BC0B0);
    sub_22C903F8C();
    v8 = *(v7 + 16);
    v9 = sub_22C6AEF20();
    v8(v9);
    v10 = sub_22C9063CC();
    v11 = sub_22C90AADC();
    if (os_log_type_enabled(v10, v11))
    {
      v102 = v1[29];
      v104 = v1[28];
      v108 = v1[30];
      sub_22C36BED8();
      v12 = swift_slowAlloc();
      sub_22C370220();
      v111 = swift_slowAlloc();
      *v12 = 136315138;
      v13 = sub_22C37FE24();
      v8(v13);
      sub_22C36CC9C();
      sub_22C90A1AC();
      v14 = sub_22C36BE34();
      v16 = v15;
      v15(v14);
      v17 = sub_22C6AF810();
      v20 = sub_22C36F9F4(v17, v18, v19);

      *(v12 + 4) = v20;
      _os_log_impl(&dword_22C366000, v10, v11, "tool not found: %s", v12, 0xCu);
      sub_22C36FF94(v111);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v102 + 8))(v108, v104);
    }

    else
    {
      v49 = v1[53];

      v16 = *(v49 + 8);
      v50 = sub_22C36FCCC();
      v16(v50);
      v51 = sub_22C372FD8();
      v52(v51);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C36A1EC();
    v55 = sub_22C70C380(v53, v54);
    sub_22C36D148(v55);
    v57 = v56;
    *v56 = sub_22C90768C();
    v57[1] = v58;
    sub_22C372FCC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v59 = sub_22C372164();
    v16(v59);
    sub_22C70C6F4();

    sub_22C369A24();
    goto LABEL_15;
  }

  v21 = sub_22C37EF10();
  v22(v21);
  v23 = sub_22C6AEF20();
  v24(v23);
  v25 = sub_22C36ECB4();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x277D1E8E0] || v27 == *MEMORY[0x277D1E8C8])
  {
    v105 = v1[46];
    v109 = v1[25];
    (*(v1[49] + 96))(v1[50], v1[48]);
    v29 = sub_22C372164();
    v30(v29);
    v31 = type metadata accessor for PreLaunchExecutor();
    v32 = swift_allocObject();
    DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
    v34 = swift_allocObject();
    sub_22C90B0FC();
    v1[12] = v34;
    v1[15] = DecorationSignposter;
    v1[16] = &off_283FC1370;
    v1[20] = v31;
    v1[21] = &off_283FC01E0;
    v1[17] = v32;
    type metadata accessor for AppPreLaunchHandler();
    swift_allocObject();
    v35 = sub_22C3819EC();
    sub_22C36D1E4(v35, v36);
    sub_22C36A948();
    sub_22C3699D4();
    sub_22C70CF80();
    v37();
    sub_22C70CB34();
    sub_22C7B0204(v109, v105);
    sub_22C3758E0();

    swift_task_alloc();
    sub_22C36CC90();
    v1[58] = v38;
    *v38 = v39;
    v38[1] = sub_22C6DB2A8;
LABEL_10:
    sub_22C377448();

    return sub_22C6F8A90(v40, v41, v42, v43, v44, v45, v46);
  }

  if (v27 == *MEMORY[0x277D1E8D0])
  {
    v62 = v1[24];
    v106 = *(v1[49] + 8);
    v106(v1[50], v1[48]);
    v63 = sub_22C58B5C4(v62);
    if (!v63)
    {
      sub_22C908C5C();
      sub_22C371B9C();
      sub_22C70C380(v64, v65);
      sub_22C38399C();
      v63 = sub_22C909F0C();
    }

    v66 = v63;
    v101 = v1[53];
    v103 = v1[52];
    v100 = v1[51];
    v98 = v1[56];
    v99 = v1[48];
    v68 = v1[41];
    v67 = v1[42];
    v69 = v1[39];
    v70 = v1[40];
    v97 = v1[38];
    v71 = v1[26];
    sub_22C90878C();
    *(v67 + *(v68 + 20)) = v66;
    *(swift_task_alloc() + 16) = v67;
    sub_22C8889DC();

    sub_22C90878C();
    v72 = sub_22C9087DC();
    (*(v69 + 8))(v70, v97);
    v73 = swift_task_alloc();
    *(v73 + 16) = v71;
    sub_22C5EC6BC(sub_22C70C008, v73, v72);

    v74 = sub_22C3863FC();
    v75(v74);
    sub_22C90768C();
    sub_22C90865C();
    type metadata accessor for StepResolution(0);
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
    sub_22C376840();
    sub_22C70C2F0(v67, v76);
    v106(v100, v99);
    (*(v101 + 8))(v98, v103);
    sub_22C70C484();

    sub_22C369C50();
LABEL_15:
    sub_22C377448();

    __asm { BRAA            X1, X16 }
  }

  if (v27 == *MEMORY[0x277D1E8D8])
  {
    v77 = sub_22C6AFEA8();
    v78(v77);
    v79 = sub_22C370018();
    v80(v79);
    sub_22C63489C();
    v81 = sub_22C3806B8();
    v82(v81);
    v83 = sub_22C37A004();
    if (v84(v83) == *MEMORY[0x277D1E8B8])
    {
      v107 = v1[45];
      v110 = v1[25];
      (*(v1[32] + 96))(v1[33], v1[31]);
      v85 = sub_22C372FA4();
      v86(v85);
      v87 = type metadata accessor for PreLaunchExecutor();
      v88 = swift_allocObject();
      v89 = type metadata accessor for QueryDecorationSignposter(0);
      v90 = swift_allocObject();
      sub_22C90B0FC();
      v1[2] = v90;
      v1[5] = v89;
      v1[6] = &off_283FC1370;
      v1[10] = v87;
      v1[11] = &off_283FC01E0;
      v1[7] = v88;
      type metadata accessor for AppPreLaunchHandler();
      swift_allocObject();
      v91 = sub_22C3819EC();
      sub_22C36D1E4(v91, v92);
      sub_22C36A948();
      sub_22C3699D4();
      sub_22C70CF80();
      v93();
      sub_22C70CB34();
      sub_22C7B0204(v110, v107);
      sub_22C3758E0();

      swift_task_alloc();
      sub_22C36CC90();
      v1[60] = v94;
      *v94 = v95;
      v94[1] = sub_22C6DB504;
      goto LABEL_10;
    }
  }

  sub_22C377448();

  return sub_22C90B4EC();
}

uint64_t sub_22C6DB2A8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 472) = v0;

  sub_22C6343B0();
  (*(v1[44] + 8))(v1[46], v1[43]);

  sub_22C374448();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C6DB410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = sub_22C70CC94();
  v18(v17);
  v19 = sub_22C6AEDE8();
  v20(v19);
  sub_22C70C484();
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = *(v16 + 240);

  sub_22C369C50();
  sub_22C36EC40();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_22C6DB504()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  sub_22C6343B0();

  sub_22C374448();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C6DB61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v17 = sub_22C70C8B0();
  v18(v17);
  v19 = sub_22C37B050();
  v20(v19);
  v21 = sub_22C372FD8();
  v22(v21);
  v23 = sub_22C36BBCC();
  v24(v23);
  sub_22C70C484();
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = *(v16 + 240);

  sub_22C369C50();
  sub_22C36EC40();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, a14, a15, a16);
}

uint64_t sub_22C6DB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v16 = sub_22C70C8B0();
  v17(v16);
  v18 = sub_22C37B050();
  v19(v18);
  v20 = sub_22C372FD8();
  v21(v20);
  v22 = sub_22C36BBCC();
  v23(v22);
  sub_22C70C6F4();
  sub_22C70CAA4(v24, v25, v26, v27, v28, v29, v30, v31);

  sub_22C369A24();
  sub_22C36EC40();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C6DB84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  sub_22C381520();
  v16 = sub_22C70CC94();
  v17(v16);
  v18 = sub_22C6AEDE8();
  v19(v18);
  sub_22C70C6F4();
  sub_22C70CAA4(v20, v21, v22, v23, v24, v25, v26, v27);

  sub_22C369A24();
  sub_22C36EC40();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C6DB940@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v95 = a1;
  v96 = a2;
  v2 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v72 - v3;
  v4 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v72 - v5;
  v85 = sub_22C901FBC();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22C9026BC();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C907DEC();
  MEMORY[0x28223BE20](v8 - 8);
  v88 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - v13;
  v14 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v72 - v17;
  v18 = sub_22C3A5908(&qword_27D9BF778, &qword_22C923030);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v72 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v78 = &v72 - v24;
  MEMORY[0x28223BE20](v23);
  v77 = &v72 - v25;
  v26 = sub_22C90880C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C901FAC();
  v93 = *(v30 - 8);
  v94 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v81 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v72 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v72 - v36;
  MEMORY[0x2318B4410](v35);
  sub_22C90878C();
  v38 = sub_22C9087DC();
  v39 = *(v27 + 8);
  v39(v29, v26);
  v40 = sub_22C6F1A3C(v37, v38);

  sub_22C90878C();
  if (v40)
  {
    v42 = v77;
    v90 = v37;
    sub_22C690EE8(v37, v41);
    v39(v29, v26);
    v43 = sub_22C90069C();
    sub_22C36C640(v91, 1, 1, v43);
    v44 = v78;
    sub_22C6AEA50(v42, v78, &qword_27D9BF778, &qword_22C923030);
    v45 = sub_22C9078FC();
    v46 = v42;
    if (sub_22C370B74(v44, 1, v45) == 1)
    {
      sub_22C36DD80(v44, &qword_27D9BF778);
      v47 = 1;
      v48 = v94;
      v49 = v79;
    }

    else
    {
      v49 = v79;
      sub_22C9078EC();
      (*(*(v45 - 8) + 8))(v44, v45);
      v47 = 0;
      v48 = v94;
    }

    v57 = sub_22C90769C();
    sub_22C36C640(v49, v47, 1, v57);
    (*(v83 + 104))(v82, *MEMORY[0x277D1C3C8], v85);
    v58 = v87;
    sub_22C901FFC();
    (*(v84 + 104))(v58, *MEMORY[0x277D1CBE8], v86);
    v59 = sub_22C9026AC();
    sub_22C36C640(v89, 1, 1, v59);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    v54 = v93;
    (*(v93 + 16))(v81, v95, v48);
    sub_22C906E7C();
    sub_22C36DD80(v46, &qword_27D9BF778);
    v37 = v90;
  }

  else
  {
    v50 = sub_22C9087DC();
    v51 = (v39)(v29, v26);
    MEMORY[0x28223BE20](v51);
    *(&v72 - 2) = v37;
    v52 = v97;
    v53 = sub_22C5EC6BC(sub_22C70C09C, (&v72 - 4), v50);
    v97 = v52;

    if (v53)
    {
      v54 = v93;
      v48 = v94;
      v55 = *(v93 + 16);
      v56 = v74;
      v55(v74, v95, v94);
      sub_22C36C640(v56, 0, 1, v48);
      v55(v92, v37, v48);
      sub_22C90737C();
    }

    else
    {
      sub_22C90878C();
      v60 = v80;
      sub_22C690EE8(v37, v61);
      v39(v29, v26);
      v62 = sub_22C90069C();
      sub_22C36C640(v75, 1, 1, v62);
      v63 = v73;
      sub_22C6AEA50(v60, v73, &qword_27D9BF778, &qword_22C923030);
      v64 = sub_22C9078FC();
      v65 = sub_22C370B74(v63, 1, v64);
      v54 = v93;
      if (v65 == 1)
      {
        sub_22C36DD80(v63, &qword_27D9BF778);
        v66 = 1;
        v48 = v94;
        v67 = v76;
      }

      else
      {
        v67 = v76;
        sub_22C9078EC();
        (*(*(v64 - 8) + 8))(v63, v64);
        v66 = 0;
        v48 = v94;
      }

      v68 = sub_22C90769C();
      sub_22C36C640(v67, v66, 1, v68);
      (*(v83 + 104))(v82, *MEMORY[0x277D1C3B0], v85);
      v69 = v87;
      sub_22C901FFC();
      (*(v84 + 104))(v69, *MEMORY[0x277D1CBE8], v86);
      v70 = sub_22C9026AC();
      sub_22C36C640(v89, 1, 1, v70);
      sub_22C907DCC();
      sub_22C9087AC();
      sub_22C90882C();

      (*(v54 + 16))(v81, v95, v48);
      sub_22C906E7C();
      sub_22C36DD80(v80, &qword_27D9BF778);
    }
  }

  (*(v54 + 8))(v37, v48);
  type metadata accessor for StepResolution(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C6DC490@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = a3;
  v51 = a1;
  v3 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v42 - v4;
  v59 = sub_22C901FBC();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22C9026BC();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C907DEC();
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v42 - v10;
  v11 = sub_22C90654C();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90880C();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_22C9070DC();
  v43 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v42 - v23;
  v25 = sub_22C901FAC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v50 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v49 = &v42 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v42 - v31;
  sub_22C906CBC();
  if (sub_22C370B74(v24, 1, v25) == 1)
  {
    sub_22C36DD80(v24, &qword_27D9BC030);
  }

  else
  {
    (*(v26 + 32))(v32, v24, v25);
    sub_22C90878C();
    sub_22C646D68();
    (*(v47 + 8))(v15, v48);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      (*(v26 + 8))(v32, v25);
      sub_22C36DD80(v18, &qword_27D9BAA18);
    }

    else
    {
      v33 = v43;
      (*(v43 + 32))(v21, v18, v19);
      v34 = v46;
      sub_22C90702C();
      (*(v33 + 8))(v21, v19);
      (*(v26 + 8))(v32, v25);
      v36 = v44;
      v35 = v45;
      if ((*(v44 + 88))(v34, v45) == *MEMORY[0x277D1DAA8] && ((*(v36 + 96))(v34, v35), v35 = sub_22C906F2C(), v36 = *(v35 - 8), (*(v36 + 88))(v34, v35) == *MEMORY[0x277D1DEF8]))
      {
        (*(v36 + 96))(v34, v35);
      }

      else
      {
        (*(v36 + 8))(v34, v35);
      }
    }
  }

  v37 = sub_22C90069C();
  sub_22C36C640(v52, 1, 1, v37);
  v38 = v55;
  sub_22C901FEC();
  (*(v57 + 104))(v38, *MEMORY[0x277D1C3F8], v59);
  v39 = v54;
  sub_22C901FFC();
  (*(v53 + 104))(v39, *MEMORY[0x277D1CBE8], v56);
  v40 = sub_22C9026AC();
  sub_22C36C640(v60, 1, 1, v40);
  sub_22C907DCC();
  sub_22C9087AC();
  sub_22C90882C();

  (*(v26 + 16))(v50, v61, v25);
  sub_22C906E4C();
  type metadata accessor for StepResolution(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C6DCD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v169 = a5;
  v177 = a4;
  v187 = a3;
  v168 = a2;
  v178 = a6;
  v165 = sub_22C9063DC();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v160 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v8 - 8);
  v151 = &v135 - v9;
  v161 = sub_22C9026BC();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v157 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C907DEC();
  MEMORY[0x28223BE20](v11 - 8);
  v158 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v13 - 8);
  v175 = &v135 - v14;
  v15 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v15 - 8);
  v156 = &v135 - v16;
  v17 = sub_22C3A5908(&qword_27D9BF7B8, &unk_22C923070);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v135 - v18;
  v154 = sub_22C9093BC();
  v176 = *(v154 - 8);
  v19 = MEMORY[0x28223BE20](v154);
  v174 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  v144 = &v135 - v23;
  v142 = sub_22C90906C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BF7C0, &unk_22C923380);
  MEMORY[0x28223BE20](v25 - 8);
  v149 = &v135 - v26;
  v148 = type metadata accessor for CandidateWithDependencies(0);
  v153 = *(v148 - 8);
  v27 = MEMORY[0x28223BE20](v148);
  v173 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v147 = &v135 - v29;
  v30 = sub_22C3A5908(&qword_27D9BF320, &qword_22C9225B0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v155 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v152 = &v135 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v145 = &v135 - v36;
  MEMORY[0x28223BE20](v35);
  v162 = &v135 - v37;
  v163 = type metadata accessor for TranscriptValueFetcher(0);
  MEMORY[0x28223BE20](v163);
  v166 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v39 - 8);
  v179 = &v135 - v40;
  v41 = sub_22C906ECC();
  v170 = *(v41 - 8);
  v171 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v150 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v167 = &v135 - v44;
  v180 = sub_22C90880C();
  v45 = *(v180 - 8);
  v46 = MEMORY[0x28223BE20](v180);
  v172 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v135 - v48;
  v50 = sub_22C901FAC();
  v182 = *(v50 - 8);
  v183 = v50;
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v135 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v135 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v135 - v60;
  v62 = sub_22C3A5908(&qword_27D9BF7C8, &unk_22C923390);
  v63 = MEMORY[0x28223BE20](v62 - 8);
  v65 = &v135 - v64;
  MEMORY[0x2318B4800](v63);
  sub_22C90878C();
  v66 = v181;
  sub_22C70541C(v61, v65);
  if (v66)
  {
    (*(v45 + 8))(v49, v180);
    return (*(v182 + 8))(v61, v183);
  }

  v138 = v59;
  v135 = v53;
  v139 = a1;
  v181 = 0;
  v68 = *(v45 + 8);
  v69 = v180;
  v137 = v45 + 8;
  v68(v49, v180);
  v70 = v182;
  v71 = v183;
  v136 = *(v182 + 8);
  v136(v61, v183);
  v72 = sub_22C906A3C();
  v73 = sub_22C370B74(v65, 1, v72);
  v74 = sub_22C36DD80(v65, &qword_27D9BF7C8);
  if (v73 != 1)
  {
    (*(v70 + 16))(v138, v177, v71);
    sub_22C906A1C();
    type metadata accessor for StepResolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  MEMORY[0x2318B4800](v74);
  v75 = v172;
  sub_22C90878C();
  v76 = v181;
  sub_22C6F1590(v56, v179);
  if (v76)
  {
    v68(v75, v69);
    return (v136)(v56, v183);
  }

  v68(v75, v69);
  v77 = v183;
  v78 = v136;
  v136(v56, v183);
  v79 = v179;
  v80 = v171;
  if (sub_22C370B74(v179, 1, v171) != 1)
  {
    v103 = v170;
    v104 = v167;
    (*(v170 + 32))(v167, v79, v80);
    sub_22C6C5FDC(v177, v104, v187, v169, v178);
    return (*(v103 + 8))(v104, v80);
  }

  sub_22C36DD80(v79, &qword_27D9BC0A0);
  v81 = sub_22C58B5C4(v168);
  if (!v81)
  {
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    MEMORY[0x2318B4800]();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v82 = v81;
  v181 = 0;
  v83 = v166;
  v84 = sub_22C90878C();
  *(v83 + *(v163 + 20)) = v82;
  v85 = v77;
  v86 = v138;
  MEMORY[0x2318B4800](v84);
  v87 = sub_22C72A310(v86);
  v78(v86, v85);
  v88 = v165;
  v89 = v164;
  if (!v87)
  {
LABEL_27:
    v116 = v160;
    sub_22C903F8C();
    v117 = sub_22C9063CC();
    v118 = sub_22C90AADC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_22C366000, v117, v118, "No items found for pick_one statement ID", v119, 2u);
      MEMORY[0x2318B9880](v119, -1, -1);
    }

    (*(v89 + 8))(v116, v88);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    MEMORY[0x2318B4800]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v115 = v83;
    return sub_22C70C2F0(v115, type metadata accessor for TranscriptValueFetcher);
  }

  v90 = *(v87 + 16);
  if (!v90)
  {

    goto LABEL_27;
  }

  v91 = v161;
  sub_22C36C640(v162, 1, 1, v161);
  v92 = v175;
  v93 = v154;
  v94 = v153;
  if (v90 != 1)
  {
    goto LABEL_15;
  }

  v95 = v149;
  sub_22C58B6A8(v87, v149);
  if (sub_22C370B74(v95, 1, v148) == 1)
  {
    sub_22C36DD80(v95, &qword_27D9BF7C0);
LABEL_15:
    v96 = v87 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v97 = *(v94 + 72);
    v98 = MEMORY[0x277D84F90];
    do
    {
      v99 = v173;
      sub_22C70C29C(v96, v173);
      sub_22C90774C();
      sub_22C70C2F0(v99, type metadata accessor for CandidateWithDependencies);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5903C0();
        v98 = v101;
      }

      v100 = *(v98 + 16);
      if (v100 >= *(v98 + 24) >> 1)
      {
        sub_22C5903C0();
        v98 = v102;
      }

      *(v98 + 16) = v100 + 1;
      (*(v176 + 32))(v98 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v100, v174, v93);
      v96 += v97;
      --v90;
      v92 = v175;
    }

    while (v90);

    v105 = v152;
    sub_22C9028DC();
    v106 = v162;
    sub_22C36DD80(v162, &qword_27D9BF320);
    v91 = v161;
    (*(v159 + 104))(v105, *MEMORY[0x277D1CBC8], v161);
    sub_22C36C640(v105, 0, 1, v91);
    v107 = v157;
    goto LABEL_24;
  }

  v122 = v147;
  sub_22C70C0BC(v95, v147);
  v123 = v144;
  sub_22C90774C();
  v124 = v176;
  if ((*(v176 + 88))(v123, v93) == *MEMORY[0x277D729E0])
  {
    (*(v124 + 96))(v123, v93);
    v125 = swift_projectBox();
    v126 = v141;
    v127 = v140;
    v128 = v142;
    (*(v141 + 16))(v140, v125, v142);

    v129 = *(sub_22C90905C() + 16);

    v107 = v157;
    v106 = v162;
    v130 = v146;
    if (v129 >= 2)
    {
      sub_22C90905C();
      v105 = v145;
      sub_22C9028DC();
      (*(v126 + 8))(v127, v128);
      sub_22C70C2F0(v147, type metadata accessor for CandidateWithDependencies);
      sub_22C36DD80(v106, &qword_27D9BF320);
      (*(v159 + 104))(v105, *MEMORY[0x277D1CBC8], v91);
      sub_22C36C640(v105, 0, 1, v91);
      goto LABEL_24;
    }

    (*(v126 + 8))(v127, v128);
    v131 = v159;
    v122 = v147;
  }

  else
  {
    (*(v124 + 8))(v123, v93);
    v107 = v157;
    v131 = v159;
    v106 = v162;
    v130 = v146;
  }

  v132 = v143;
  sub_22C90774C();
  v133 = sub_22C90205C();
  sub_22C36C640(v130, 1, 1, v133);
  v134 = v130;
  v105 = v145;
  MEMORY[0x2318AF540](v132, 0, v134);
  sub_22C70C2F0(v122, type metadata accessor for CandidateWithDependencies);
  sub_22C36DD80(v106, &qword_27D9BF320);
  (*(v131 + 104))(v105, *MEMORY[0x277D1CBF0], v91);
  sub_22C36C640(v105, 0, 1, v91);
LABEL_24:
  sub_22C6AE8BC(v105, v106, &qword_27D9BF320, &qword_22C9225B0);
  v108 = sub_22C90069C();
  v109 = v156;
  sub_22C36C640(v156, 1, 1, v108);
  v110 = sub_22C90769C();
  sub_22C36C640(v92, 1, 1, v110);
  v111 = v155;
  sub_22C6AEA50(v106, v155, &qword_27D9BF320, &qword_22C9225B0);
  if (sub_22C370B74(v111, 1, v91) != 1)
  {
    (*(v159 + 32))(v107, v111, v91);
    v120 = sub_22C9026AC();
    sub_22C36C640(v151, 1, 1, v120);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v182 + 16))(v135, v177, v183);
    v121 = v150;
    sub_22C906E7C();
    sub_22C36DD80(v106, &qword_27D9BF320);
    sub_22C70C2F0(v166, type metadata accessor for TranscriptValueFetcher);
    (*(v170 + 32))(v178, v121, v171);
    type metadata accessor for StepResolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_22C36DD80(v92, &qword_27D9BF330);
  sub_22C36DD80(v109, &qword_27D9BB190);
  sub_22C36DD80(v111, &qword_27D9BF320);
  sub_22C90735C();
  sub_22C3A5F00();
  swift_allocError();
  v112 = v186;
  v113 = v185;
  *v114 = v184;
  *(v114 + 16) = v113;
  *(v114 + 32) = v112;
  swift_willThrow();
  sub_22C36DD80(v106, &qword_27D9BF320);
  v115 = v166;
  return sub_22C70C2F0(v115, type metadata accessor for TranscriptValueFetcher);
}

uint64_t sub_22C6DE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v6[13] = swift_task_alloc();
  v7 = sub_22C9026BC();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  sub_22C907DEC();
  v6[17] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v6[18] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v6[19] = swift_task_alloc();
  v8 = sub_22C901FAC();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = sub_22C908EAC();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v10 = sub_22C90880C();
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  v11 = sub_22C90292C();
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for ToolResolver.Decision(0);
  v6[35] = swift_task_alloc();
  v12 = sub_22C90634C();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v13 = sub_22C90636C();
  v6[40] = v13;
  v6[41] = *(v13 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v14 = sub_22C9063DC();
  v6[44] = v14;
  v6[45] = *(v14 - 8);
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6DE7C4, 0, 0);
}

uint64_t sub_22C6DE7C4()
{
  v64 = v0;
  v1 = MEMORY[0x2318B50A0]();
  v0[47] = v1;
  sub_22C903F8C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[44];
  if (v4)
  {
    sub_22C36BED8();
    v61 = v6;
    v8 = swift_slowAlloc();
    sub_22C370220();
    v9 = swift_slowAlloc();
    v63 = v9;
    *v8 = 136315138;
    sub_22C90769C();
    v10 = sub_22C6AFE24();
    v11 = MEMORY[0x2318B7AD0](v10);
    v13 = sub_22C36F9F4(v11, v12, &v63);

    *(v8 + 4) = v13;
    sub_22C37B250(&dword_22C366000, v14, v15, "resolve_tool() resolving among: %s");
    sub_22C36FF94(v9);
    v16 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v16);
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v5 + 8))(v61, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v17 = *(v1 + 16);
  v0[48] = v17;
  if (!v17)
  {

    type metadata accessor for InterpreterError(0);
    sub_22C36A1EC();
    sub_22C70C380(v23, v24);
    sub_22C375F84();
    v25 = swift_allocError();
    sub_22C70C70C(v25, v26);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = sub_22C38B5D8();
    sub_22C6AF99C(v27, v28, v29, v30, v31, v32, v33, v34);

    sub_22C369A24();
    sub_22C381608();

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[12];
  *(swift_task_alloc() + 16) = v18;
  sub_22C44178C();
  v0[49] = sub_22C8F4A90(v19, v20, v21);

  v22 = type metadata accessor for Interpreter2(0);
  (*(v18 + *(v22 + 24)))();
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v37 = sub_22C372164();
  v62 = v38;
  (v38)(v37);
  v39 = sub_22C90635C();
  v40 = sub_22C90AB6C();
  v41 = sub_22C90AC5C();
  if (v41)
  {
    sub_22C3720F4();
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v39, v40, v43, "ToolResolver.run", "", v42, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v58 = v0[40];
  v59 = v0[43];
  v45 = v0[29];
  v44 = v0[30];
  v60 = v0[28];

  v46 = sub_22C372164();
  v47(v46);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C3707B4();
  v0[50] = sub_22C90639C();
  v48 = sub_22C36ECB4();
  v49(v48);
  v62(v59, v58);
  sub_22C374168(v0 + 2, v0[5]);
  sub_22C90878C();
  sub_22C90290C();
  (*(v45 + 8))(v44, v60);
  swift_task_alloc();
  sub_22C36CC90();
  v0[51] = v50;
  *v50 = v51;
  v50[1] = sub_22C6DECB8;
  sub_22C381608();

  return sub_22C727890(v52, v53, v54, v55);
}

uint64_t sub_22C6DECB8()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *v3 = *v1;
  v2[52] = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_22C6DEE24()
{
  v1 = v0[35];
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v2 = v0[22];
    v3 = v0[21];
    v37 = v0[10];
    v38 = v0[20];

    sub_22C6AFEFC();
    v4();
    sub_22C63489C();
    v5 = sub_22C377B94();
    v6(v5);
    sub_22C9087AC();
    sub_22C90882C();

    (*(v3 + 16))(v2, v37, v38);
    sub_22C36ECB4();
    sub_22C906C9C();
    v7 = sub_22C36BAFC();
    v8(v7);
    goto LABEL_10;
  }

  v40 = *v1;
  if (v0[48] == 1)
  {
    v9 = sub_22C36BD58();
    sub_22C58B604(v9, v10);

    v11 = sub_22C90769C();
    v12 = sub_22C36CCF8();
    if (sub_22C370B74(v12, v13, v11) != 1)
    {
      v14 = sub_22C90768C();
      v34 = v15;
      v35 = v14;
      sub_22C36BBA8();
      v16 = sub_22C370018();
      v17(v16);
      goto LABEL_9;
    }

    sub_22C36DD80(v0[19], &qword_27D9BF330);
  }

  else
  {
  }

  v34 = 0;
  v35 = 0;
LABEL_9:
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[15];
  v21 = v0[16];
  v22 = v0[14];
  v36 = v0[10];
  v39 = v0[20];
  sub_22C90069C();
  sub_22C6AFB90();
  sub_22C36A748();
  sub_22C36C640(v23, v24, v25, v26);
  MEMORY[0x2318AFCD0](v35, v34, v40);
  (*(v20 + 104))(v21, *MEMORY[0x277D1CBB0], v22);
  sub_22C9026AC();
  sub_22C36A748();
  sub_22C36C640(v27, v28, v29, v30);
  sub_22C6AFC04();
  sub_22C907DCC();
  sub_22C9087AC();
  sub_22C90882C();

  (*(v19 + 16))(v18, v36, v39);
  sub_22C36BB08();
  sub_22C906E4C();
LABEL_10:
  v31 = v0[50];
  type metadata accessor for StepResolution(0);
  sub_22C376858();
  swift_storeEnumTagMultiPayload();
  sub_22C70643C(v31);

  sub_22C36FF94(v0 + 2);

  sub_22C369C50();
  sub_22C381608();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C6DF1F0()
{
  sub_22C70643C(*(v0 + 400));

  sub_22C36FF94((v0 + 16));
  v1 = sub_22C38B5D8();
  sub_22C6AF99C(v1, v2, v3, v4, v5, v6, v7, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C6DF31C@<X0>(uint64_t (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v147 = a1;
  v128 = a2;
  v2 = sub_22C9063DC();
  v144 = *(v2 - 8);
  v145 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v148 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v141 = &v107 - v5;
  v6 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v107 - v7;
  v127 = sub_22C906ECC();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v107 - v10;
  v119 = sub_22C9026BC();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22C907DEC();
  v123 = *(v136 - 8);
  v12 = MEMORY[0x28223BE20](v136);
  v121 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v107 - v14;
  v15 = sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = &v107 - v16;
  v17 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  MEMORY[0x28223BE20](v17 - 8);
  v116 = &v107 - v18;
  v19 = sub_22C9026AC();
  v133 = *(v19 - 8);
  v134 = v19;
  MEMORY[0x28223BE20](v19);
  v132 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BF7B8, &unk_22C923070);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v107 - v22;
  v113 = sub_22C9093BC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = (&v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_22C9020CC();
  v130 = *(v24 - 8);
  v131 = v24;
  MEMORY[0x28223BE20](v24);
  v129 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_22C90654C();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22C90880C();
  v27 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v107 - v31;
  v33 = sub_22C9070DC();
  v143 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v142 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v107 - v36;
  v38 = sub_22C901FAC();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v137 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v111 = &v107 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v110 = &v107 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v107 - v47;
  v49 = MEMORY[0x2318B3EC0](v46);
  sub_22C58B0E0(v49, v37);

  if (sub_22C370B74(v37, 1, v38) == 1)
  {
    sub_22C36DD80(v37, &qword_27D9BC030);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v39 + 32))(v48, v37, v38);
  sub_22C90878C();
  sub_22C646D68();
  (*(v27 + 8))(v29, v146);
  v51 = v38;
  if (sub_22C370B74(v32, 1, v33) == 1)
  {
    sub_22C36DD80(v32, &qword_27D9BAA18);
    sub_22C903F8C();
    v52 = v137;
    v147 = *(v39 + 16);
    v147(v137, v48, v38);
    v53 = sub_22C9063CC();
    v54 = sub_22C90AADC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v52;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v109 = v48;
      v143 = v57;
      v149 = v57;
      *v56 = 136315138;
      sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v58 = v38;
      v59 = v55;
      v108 = v38;
      v60 = sub_22C90B47C();
      v146 = v39 + 16;
      v62 = v61;
      v63 = *(v39 + 8);
      v63(v59, v58);
      v64 = sub_22C36F9F4(v60, v62, &v149);

      *(v56 + 4) = v64;
      _os_log_impl(&dword_22C366000, v53, v54, "No value found for statement ID %s to evaluate say()", v56, 0xCu);
      v65 = v143;
      sub_22C36FF94(v143);
      v48 = v109;
      MEMORY[0x2318B9880](v65, -1, -1);
      MEMORY[0x2318B9880](v56, -1, -1);

      (*(v144 + 8))(v148, v145);
      v51 = v108;
    }

    else
    {

      v63 = *(v39 + 8);
      v63(v52, v38);
      (*(v144 + 8))(v148, v145);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    v147(v102, v48, v51);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (v63)(v48, v51);
  }

  else
  {
    v66 = v33;
    v68 = v142;
    v67 = v143;
    (v143[4])(v142, v32, v33);
    v69 = v139;
    sub_22C90702C();
    v70 = v138;
    v71 = v140;
    v72 = (*(v138 + 88))(v69, v140) == *MEMORY[0x277D1DAA8];
    v109 = v48;
    if (v72)
    {
      (*(v70 + 96))(v69, v71);
      v71 = sub_22C906F2C();
      v70 = *(v71 - 8);
      v73 = (*(v70 + 88))(v69, v71);
      v103 = v141;
      if (v73 == *MEMORY[0x277D1DEF8])
      {
        (*(v70 + 96))(v69, v71);
        v74 = sub_22C90931C();
        v75 = swift_allocBox();
        v108 = v51;
        v76 = v75;
        (*(*(v74 - 8) + 104))(v77, *MEMORY[0x277D729A0], v74);
        v78 = v114;
        *v114 = v76;
        (*(v112 + 104))(v78, *MEMORY[0x277D72A58], v113);
        v79 = sub_22C90205C();
        v80 = v115;
        sub_22C36C640(v115, 1, 1, v79);
        v81 = v129;
        MEMORY[0x2318AF540](v78, 0, v80);

        v82 = v116;
        sub_22C9022EC();
        v83 = sub_22C90234C();
        sub_22C36C640(v82, 0, 1, v83);
        v84 = sub_22C90256C();
        sub_22C36C640(v117, 1, 1, v84);
        v85 = v132;
        sub_22C90267C();
        v86 = v120;
        (*(v130 + 16))(v120, v81, v131);
        (*(v118 + 104))(v86, *MEMORY[0x277D1CBF0], v119);
        v148 = v66;
        v87 = v134;
        v88 = v122;
        (*(v133 + 16))(v122, v85, v134);
        sub_22C36C640(v88, 0, 1, v87);
        v89 = v135;
        sub_22C907DCC();
        v90 = sub_22C90069C();
        sub_22C36C640(v124, 1, 1, v90);
        v91 = v123;
        (*(v123 + 16))(v121, v89, v136);
        v107 = v39;
        v92 = *(v39 + 16);
        v93 = v109;
        v94 = v108;
        v92(v110, v109, v108);
        v95 = v93;
        v96 = v94;
        v92(v111, v95, v94);
        v97 = v125;
        sub_22C906E4C();
        sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
        v98 = v126;
        v99 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_22C90F800;
        v101 = v127;
        (*(v98 + 16))(v100 + v99, v97, v127);
        sub_22C90679C();
        (*(v98 + 8))(v97, v101);
        (*(v91 + 8))(v135, v136);
        (*(v133 + 8))(v132, v134);
        (*(v130 + 8))(v129, v131);
        (v143[1])(v142, v148);
        (*(v107 + 8))(v109, v96);
        type metadata accessor for StepResolution(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v103 = v141;
    }

    (*(v70 + 8))(v69, v71);
    sub_22C903F8C();
    v104 = sub_22C9063CC();
    v105 = sub_22C90AADC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_22C366000, v104, v105, "Invalid Expression, Expected: .value(.string(_))", v106, 2u);
      MEMORY[0x2318B9880](v106, -1, -1);
    }

    (*(v144 + 8))(v103, v145);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (v67[1])(v68, v66);
    return (*(v39 + 8))(v109, v51);
  }
}

uint64_t sub_22C6E0640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  v148 = a1;
  v137 = a4;
  v138 = sub_22C90069C();
  v130 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v129 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22C901FAC();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v163 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22C908BBC();
  v173 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v133 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22C908C3C();
  v172 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22C9093BC();
  v151 = *(v170 - 8);
  v9 = MEMORY[0x28223BE20](v170);
  v132 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = (&v122 - v11);
  v162 = sub_22C908C5C();
  v167 = *(v162 - 8);
  v12 = MEMORY[0x28223BE20](v162);
  v159 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = &v122 - v14;
  v161 = sub_22C9069BC();
  v171 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v164 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22C908A0C();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v160 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C90880C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v21 = sub_22C9087DC();
  v24 = *(v18 + 8);
  v22 = v18 + 8;
  v23 = v24;
  v24(v20, v17);
  v180 = v21;
  v25 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v26 = sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v128 = v25;
  sub_22C907ECC();

  v27 = v176;
  if (!v176)
  {
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v107 = v179;
    v108 = v178;
    *v109 = v177;
    *(v109 + 16) = v108;
    *(v109 + 32) = v107;
    return swift_willThrow();
  }

  v126 = v26;
  v28 = v174;
  v157 = v175;
  v158 = a2;
  sub_22C90878C();
  v29 = sub_22C9087DC();
  result = v23(v20, v17);
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= *(v29 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v31 = v22;
  v125 = "ers.AddOrRemoveTagsAppIntent";
  (*(v149 + 16))(v160, v29 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v28, v150);

  v139 = v20;
  v32 = v164;
  sub_22C90699C();
  v33 = sub_22C90931C();
  v127 = v33;
  v34 = swift_allocBox();
  v142 = v17;
  v141 = v31;
  v140 = v23;
  v35 = v34;
  *v36 = v157;
  v36[1] = v27;
  LODWORD(v124) = *MEMORY[0x277D729B8];
  v37 = *(v33 - 8);
  v147 = *(v37 + 104);
  v146 = v37 + 104;
  v147(v36);
  v38 = v131;
  *v131 = v35;
  v144 = *MEMORY[0x277D72A58];
  v39 = *(v151 + 104);
  v145 = v151 + 104;
  v143 = v39;
  v39(v38);
  LODWORD(v157) = *MEMORY[0x277D1E930];
  v40 = *(v172 + 104);
  v172 += 104;
  v156 = v40;
  v40(v169);
  v155 = *MEMORY[0x277D1E910];
  v41 = *(v173 + 104);
  v173 += 104;
  v154 = v41;
  v42 = v133;
  v41(v133);
  sub_22C9087AC();
  sub_22C90882C();

  v43 = v166;
  sub_22C908C1C();
  v44 = v167 + 32;
  v153 = *(v167 + 32);
  v45 = v159;
  v153(v159, v43, v162);
  v46 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v174 = v46;
  sub_22C62E7EC(v45, v32, isUniquelyReferenced_nonNull_native, v48, v49, v50, v51, v52, v122, v123, v124, v125);
  v123 = v174;
  v53 = *(v171 + 8);
  v171 += 8;
  v152 = v53;
  v54 = v161;
  v53(v32, v161);
  sub_22C90699C();
  v55 = swift_allocBox();
  v57 = v56;
  *v56 = sub_22C90724C();
  v57[1] = v58;
  (v147)(v57, v124, v33);
  *v38 = v55;
  v59 = v54;
  v167 = v44;
  v60 = v42;
  v143(v38, v144, v170);
  v156(v169, v157, v168);
  v154(v42, v155, v165);
  sub_22C9087AC();
  sub_22C90882C();

  v61 = v166;
  sub_22C908C1C();
  v62 = v159;
  v63 = v162;
  v153(v159, v61, v162);
  v64 = v123;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v174 = v64;
  v66 = v164;
  sub_22C62E7EC(v62, v164, v65, v67, v68, v69, v70, v71, v122, v123, v124, v125);
  v124 = v174;
  v152(v66, v59);
  v72 = v139;
  sub_22C90878C();
  v73 = sub_22C9087DC();
  v140(v72, v142);
  v174 = v73;
  v74 = v129;
  sub_22C9087FC();
  v75 = sub_22C907E4C();
  (*(v130 + 8))(v74, v138);

  v76 = *(v75 + 16);

  sub_22C90699C();
  v77 = swift_allocBox();
  *v78 = v76 == 0;
  LODWORD(v130) = *MEMORY[0x277D72988];
  v147(v78);
  *v38 = v77;
  v143(v38, v144, v170);
  v156(v169, v157, v168);
  v154(v60, v155, v165);
  sub_22C9087AC();
  sub_22C90882C();

  v79 = v166;
  v80 = v60;
  sub_22C908C1C();
  v81 = v159;
  v153(v159, v79, v63);
  v82 = v124;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v174 = v82;
  sub_22C62E7EC(v81, v66, v83, v84, v85, v86, v87, v88, v122, v123, v124, v125);
  v138 = v174;
  v152(v66, v161);
  if (sub_22C90721C())
  {
    sub_22C90699C();
    v89 = v127;
    v90 = swift_allocBox();
    *v91 = 1;
    (v147)(v91, v130, v89);
    *v38 = v90;
    v143(v38, v144, v170);
    v156(v169, v157, v168);
    v92 = v80;
    v93 = v80;
    v94 = v165;
    v154(v93, v155, v165);
    sub_22C9087AC();
    sub_22C90882C();

    v95 = v166;
    sub_22C908C1C();
    v153(v81, v95, v162);
    v96 = v138;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v174 = v96;
    v98 = v164;
    sub_22C62E7EC(v81, v164, v97, v99, v100, v101, v102, v103, v122, v123, v124, v125);
    v138 = v174;
    v152(v98, v161);
    v104 = v92;
    v105 = v81;
    v106 = v94;
  }

  else
  {
    v104 = v60;
    v105 = v81;
    v106 = v165;
  }

  v110 = v139;
  sub_22C90878C();
  sub_22C5F8DA0(v110, v38);
  v140(v110, v142);
  v111 = v164;
  sub_22C90699C();
  v112 = v151;
  (*(v151 + 16))(v132, v38, v170);
  v156(v169, v157, v168);
  v154(v104, v155, v106);
  sub_22C9087AC();
  v113 = v163;
  sub_22C90882C();

  v114 = v166;
  sub_22C908C1C();
  v153(v105, v114, v162);
  v115 = v138;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v174 = v115;
  sub_22C62E7EC(v105, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v152(v111, v161);
  (*(v134 + 16))(v113, v136, v135);
  sub_22C90779C();
  sub_22C9077AC();
  MEMORY[0x2318B4CA0]();
  sub_22C90778C();
  (*(v112 + 8))(v38, v170);
  (*(v149 + 8))(v160, v150);
  type metadata accessor for StepResolution(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C6E1880@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v278 = a1;
  v272 = a2;
  v273 = a3;
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v267 = (&v224 - v4);
  v5 = sub_22C9063DC();
  v6 = *(v5 - 8);
  v269 = v5;
  v270 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v275 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v265 = &v224 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v239 = &v224 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v231 = &v224 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v226 = &v224 - v16;
  MEMORY[0x28223BE20](v15);
  v227 = &v224 - v17;
  v266 = sub_22C90069C();
  MEMORY[0x28223BE20](v266);
  v228 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906A7C();
  v258 = *(v19 - 8);
  v259 = v19;
  MEMORY[0x28223BE20](v19);
  v260 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v274 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v256 = &v224 - v24;
  v25 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v25 - 8);
  v235 = &v224 - v26;
  v237 = sub_22C908ABC();
  v233 = *(v237 - 8);
  v27 = MEMORY[0x28223BE20](v237);
  v236 = &v224 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v232 = &v224 - v29;
  v30 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v30 - 8);
  v238 = &v224 - v31;
  v242 = sub_22C90769C();
  v240 = *(v242 - 8);
  v32 = MEMORY[0x28223BE20](v242);
  v230 = &v224 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v229 = &v224 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v225 = &v224 - v37;
  MEMORY[0x28223BE20](v36);
  v241 = &v224 - v38;
  v39 = sub_22C3A5908(&qword_27D9BF7B8, &unk_22C923070);
  MEMORY[0x28223BE20](v39 - 8);
  v243 = &v224 - v40;
  v249 = sub_22C90205C();
  v244 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v245 = &v224 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_22C9026BC();
  v254 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v253 = &v224 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_22C907DEC();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = &v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_22C9020CC();
  v248 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v247 = &v224 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C90880C();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v224 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v224 - v50;
  v52 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v52 - 8);
  v276 = &v224 - v53;
  v264 = sub_22C906ECC();
  v261 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v263 = &v224 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v257 = &v224 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v224 - v58;
  v60 = sub_22C901FAC();
  v61 = *(v60 - 1);
  v62 = MEMORY[0x28223BE20](v60);
  v262 = &v224 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v234 = &v224 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v271 = &v224 - v67;
  MEMORY[0x28223BE20](v66);
  v69 = &v224 - v68;
  sub_22C906CBC();
  if (sub_22C370B74(v59, 1, v60) == 1)
  {
    v276 = v60;
    sub_22C36DD80(v59, &qword_27D9BC030);
    v70 = v278;
    sub_22C90878C();
    v71 = sub_22C9087DC();
    (*(v46 + 8))(v49, v45);
    v72 = v267;
    sub_22C3A5950(v71);

    v73 = sub_22C908A0C();
    if (sub_22C370B74(v72, 1, v73) == 1)
    {
      sub_22C36DD80(v72, &qword_27D9BA808);
      v74 = v274;
      v75 = sub_22C36C640(v274, 1, 1, v266);
    }

    else
    {
      v74 = v274;
      sub_22C9088DC();
      v75 = (*(*(v73 - 8) + 8))(v72, v73);
    }

    v80 = v61;
    v81 = v275;
    v82 = v277;
    MEMORY[0x28223BE20](v75);
    *(&v224 - 2) = v70;
    sub_22C6026CC(sub_22C70C12C, (&v224 - 4), v83, v84, v85, v86, v87, v88, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
    v277 = v82;
    if (v89)
    {
      if (*(v89 + 16) == 1)
      {

        sub_22C58AF88(v90);
        v92 = v91;

        if (v92)
        {

          sub_22C36C640(v256, 1, 1, v266);
          (*(v258 + 104))(v260, *MEMORY[0x277D1DD48], v259);
          v93 = *(v61 + 16);
          v94 = v276;
          v93(v271, v272, v276);
          sub_22C36C640(v257, 1, 1, v94);
          sub_22C906EEC();
          sub_22C36DD80(v74, &qword_27D9BB190);
          type metadata accessor for StepResolution(0);
          return swift_storeEnumTagMultiPayload();
        }
      }
    }

    sub_22C903F8C();

    v96 = sub_22C9063CC();
    v97 = sub_22C90AADC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v279 = v99;
      *v98 = 136315138;
      v100 = sub_22C90A8CC();
      v102 = v101;

      v103 = v100;
      v80 = v61;
      v104 = sub_22C36F9F4(v103, v102, &v279);
      v74 = v274;

      *(v98 + 4) = v104;
      _os_log_impl(&dword_22C366000, v96, v97, "Unable to perform undo due to either none or more than one app in focus: %s", v98, 0xCu);
      sub_22C36FF94(v99);
      MEMORY[0x2318B9880](v99, -1, -1);
      MEMORY[0x2318B9880](v98, -1, -1);

      (*(v270 + 8))(v275, v269);
    }

    else
    {

      (*(v270 + 8))(v81, v269);
    }

    sub_22C9087AC();
    v105 = v271;
    sub_22C90882C();

    sub_22C6A0CB0();
    (*(v80 + 8))(v105, v276);
    sub_22C36DD80(v74, &qword_27D9BB190);
LABEL_28:
    type metadata accessor for StepResolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v61 + 32))(v69, v59, v60);
  sub_22C90878C();
  v76 = v277;
  v275 = v69;
  sub_22C6F1590(v69, v276);
  v77 = v61;
  if (v76)
  {
    (*(v46 + 8))(v51, v45);
    v78 = v275;
    return (*(v77 + 8))(v78, v60);
  }

  v274 = v61;
  v277 = 0;
  (*(v46 + 8))(v51, v45);
  v95 = v264;
  if (sub_22C370B74(v276, 1, v264) == 1)
  {
    sub_22C36DD80(v276, &qword_27D9BC0A0);
LABEL_23:
    v78 = v275;
    goto LABEL_24;
  }

  v106 = v261;
  v107 = v263;
  (*(v261 + 32))(v263, v276, v95);
  v108 = v250;
  sub_22C906EBC();
  v109 = v253;
  sub_22C907DAC();
  (*(v251 + 8))(v108, v252);
  v110 = v254;
  v111 = v255;
  if ((*(v254 + 88))(v109, v255) != *MEMORY[0x277D1CBF0])
  {
    (*(v106 + 8))(v107, v95);
    (*(v110 + 8))(v109, v111);
    goto LABEL_23;
  }

  (*(v110 + 96))(v109, v111);
  v112 = v109;
  v113 = v248;
  v114 = v247;
  v115 = v246;
  (*(v248 + 32))(v247, v112, v246);
  v116 = v243;
  sub_22C90209C();
  v117 = v249;
  v118 = sub_22C370B74(v116, 1, v249);
  v78 = v275;
  if (v118 == 1)
  {
    (*(v113 + 8))(v114, v115);
    (*(v106 + 8))(v263, v264);
    sub_22C36DD80(v116, &qword_27D9BF7B8);
LABEL_24:
    v119 = v265;
    sub_22C903F8C();
    v120 = v274;
    v121 = v262;
    (*(v274 + 16))(v262, v78, v60);
    v122 = sub_22C9063CC();
    v123 = sub_22C90AADC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v276 = v60;
      v125 = v124;
      v126 = swift_slowAlloc();
      v279 = v126;
      *v125 = 136315138;
      sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v127 = sub_22C90B47C();
      v129 = v128;
      v130 = v121;
      v131 = *(v120 + 8);
      v131(v130, v276);
      v132 = sub_22C36F9F4(v127, v129, &v279);

      *(v125 + 4) = v132;
      _os_log_impl(&dword_22C366000, v122, v123, "Unable to perform undo due to missing undo context for result on statement: %s", v125, 0xCu);
      sub_22C36FF94(v126);
      v133 = v126;
      v78 = v275;
      MEMORY[0x2318B9880](v133, -1, -1);
      v134 = v125;
      v60 = v276;
      MEMORY[0x2318B9880](v134, -1, -1);

      (*(v270 + 8))(v265, v269);
    }

    else
    {

      v135 = v121;
      v131 = *(v120 + 8);
      v131(v135, v60);
      (*(v270 + 8))(v119, v269);
    }

    sub_22C9087AC();
    v136 = v271;
    sub_22C90882C();

    sub_22C6A0CB0();
    v131(v136, v60);
    v131(v78, v60);
    goto LABEL_28;
  }

  (*(v244 + 32))(v245, v116, v117);
  v137 = v238;
  sub_22C906E9C();
  v138 = v242;
  if (sub_22C370B74(v137, 1, v242) == 1)
  {
    sub_22C36DD80(v137, &qword_27D9BF330);
    sub_22C903F8C();
    v139 = v274;
    v140 = v234;
    (*(v274 + 16))(v234, v78, v60);
    v141 = sub_22C9063CC();
    v142 = sub_22C90AADC();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = v60;
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v279 = v145;
      *v144 = 136315138;
      sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v146 = sub_22C90B47C();
      v147 = v139;
      v149 = v148;
      v150 = v140;
      v151 = *(v147 + 8);
      v151(v150, v143);
      v152 = sub_22C36F9F4(v146, v149, &v279);

      *(v144 + 4) = v152;
      _os_log_impl(&dword_22C366000, v141, v142, "Unable to undo result since there's no associated tool: %s", v144, 0xCu);
      sub_22C36FF94(v145);
      v153 = v145;
      v78 = v275;
      MEMORY[0x2318B9880](v153, -1, -1);
      v154 = v144;
      v60 = v143;
      MEMORY[0x2318B9880](v154, -1, -1);
    }

    else
    {

      v174 = v140;
      v151 = *(v139 + 8);
      v151(v174, v60);
    }

    (*(v270 + 8))(v239, v269);
    sub_22C9087AC();
    v175 = v271;
    sub_22C90882C();

    sub_22C6A0CB0();
    v151(v175, v60);
    (*(v244 + 8))(v245, v249);
    (*(v248 + 8))(v247, v246);
    (*(v261 + 8))(v263, v264);
    v151(v78, v60);
    goto LABEL_28;
  }

  v155 = v137;
  v156 = v241;
  (*(v240 + 32))(v241, v155, v138);
  v157 = v235;
  sub_22C908ADC();
  v158 = v237;
  if (sub_22C370B74(v157, 1, v237) == 1)
  {
    v276 = v60;
    sub_22C36DD80(v157, &qword_27D9BC0B0);
    v159 = v231;
    sub_22C903F8C();
    v160 = v240;
    v161 = *(v240 + 16);
    v162 = v230;
    v161(v230, v156, v138);
    v163 = sub_22C9063CC();
    v164 = sub_22C90AADC();
    v165 = v160;
    if (os_log_type_enabled(v163, v164))
    {
      v166 = swift_slowAlloc();
      v278 = swift_slowAlloc();
      v279 = v278;
      *v166 = 136315138;
      v167 = v242;
      v161(v229, v162, v242);
      v168 = sub_22C90A1AC();
      v170 = v169;
      v171 = *(v165 + 8);
      v171(v162, v167);
      v172 = sub_22C36F9F4(v168, v170, &v279);

      *(v166 + 4) = v172;
      _os_log_impl(&dword_22C366000, v163, v164, "tool not found for undo: %s", v166, 0xCu);
      v173 = v278;
      sub_22C36FF94(v278);
      MEMORY[0x2318B9880](v173, -1, -1);
      MEMORY[0x2318B9880](v166, -1, -1);

      (*(v270 + 8))(v231, v269);
    }

    else
    {

      v171 = *(v160 + 8);
      v171(v162, v242);
      (*(v270 + 8))(v159, v269);
    }

    v188 = v274;
    v78 = v275;
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    v190 = v189;
    v191 = v241;
    *v189 = sub_22C90768C();
    v190[1] = v192;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v171(v191, v242);
    (*(v244 + 8))(v245, v249);
    (*(v248 + 8))(v247, v246);
    (*(v261 + 8))(v263, v264);
    v60 = v276;
    v77 = v188;
    return (*(v77 + 8))(v78, v60);
  }

  v176 = v115;
  v177 = v233;
  v178 = v232;
  (*(v233 + 32))(v232, v157, v158);
  v179 = v236;
  (*(v177 + 16))(v236, v178, v158);
  v180 = (*(v177 + 88))(v179, v158);
  if (v180 == *MEMORY[0x277D1E8E0])
  {
    v278 = sub_22C90203C();
    v276 = v181;
    v182 = v256;
    sub_22C90204C();
    sub_22C36C640(v182, 0, 1, v266);
    (*(v258 + 104))(v260, *MEMORY[0x277D1DD48], v259);
    v183 = v274;
    (*(v274 + 16))(v271, v272, v60);
    v184 = v257;
    v185 = v263;
    sub_22C906E1C();
    sub_22C36C640(v184, 0, 1, v60);
    sub_22C906EEC();
    v186 = *(v233 + 8);
    v187 = v237;
    v186(v178, v237);
    (*(v240 + 8))(v241, v242);
    (*(v244 + 8))(v245, v249);
    (*(v248 + 8))(v247, v246);
    (*(v261 + 8))(v185, v264);
    (*(v183 + 8))(v78, v60);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();
    return (v186)(v236, v187);
  }

  else if (v180 == *MEMORY[0x277D1E8C8])
  {
    sub_22C90204C();
    (*(v258 + 104))(v260, *MEMORY[0x277D1DD48], v259);
    v193 = v274;
    (*(v274 + 16))(v271, v272, v60);
    v194 = v257;
    v195 = v263;
    sub_22C906E1C();
    sub_22C36C640(v194, 0, 1, v60);
    sub_22C90791C();
    v196 = *(v233 + 8);
    v197 = v237;
    v196(v232, v237);
    (*(v240 + 8))(v241, v242);
    (*(v244 + 8))(v245, v249);
    (*(v248 + 8))(v247, v176);
    (*(v261 + 8))(v195, v264);
    (*(v193 + 8))(v78, v60);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();
    return (v196)(v236, v197);
  }

  else if (v180 == *MEMORY[0x277D1E8D0])
  {
    v276 = v60;
    v198 = v227;
    sub_22C903F8C();
    v199 = v240;
    v200 = *(v240 + 16);
    v201 = v225;
    v202 = v242;
    v200(v225, v241, v242);
    v203 = sub_22C9063CC();
    v204 = sub_22C90AADC();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v279 = v267;
      *v205 = 136315138;
      v200(v229, v201, v202);
      v206 = sub_22C90A1AC();
      v208 = v207;
      v268 = *(v199 + 8);
      v268(v201, v202);
      v209 = sub_22C36F9F4(v206, v208, &v279);

      *(v205 + 4) = v209;
      _os_log_impl(&dword_22C366000, v203, v204, "Unable to undo result since it doesn't map to a concrete tool: %s", v205, 0xCu);
      v210 = v267;
      sub_22C36FF94(v267);
      MEMORY[0x2318B9880](v210, -1, -1);
      MEMORY[0x2318B9880](v205, -1, -1);

      (*(v270 + 8))(v227, v269);
    }

    else
    {

      v268 = *(v199 + 8);
      v268(v201, v202);
      (*(v270 + 8))(v198, v269);
    }

    sub_22C9087AC();
    v218 = v271;
    sub_22C90882C();

    sub_22C6A0CB0();
    v219 = *(v274 + 8);
    v220 = v218;
    v221 = v276;
    v219(v220, v276);
    v222 = *(v233 + 8);
    v223 = v237;
    v222(v232, v237);
    v268(v241, v202);
    (*(v244 + 8))(v245, v249);
    (*(v248 + 8))(v247, v246);
    (*(v261 + 8))(v263, v264);
    v219(v275, v221);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();
    return (v222)(v236, v223);
  }

  else
  {
    if (v180 == *MEMORY[0x277D1E8D8])
    {
      v211 = *(v177 + 8);
      v211(v236, v158);
      v212 = v226;
      sub_22C903F8C();
      v213 = sub_22C9063CC();
      v214 = sub_22C90AADC();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = v60;
        v216 = swift_slowAlloc();
        *v216 = 0;
        _os_log_impl(&dword_22C366000, v213, v214, "UndoRedo not supported by built-in tools", v216, 2u);
        v217 = v216;
        v60 = v215;
        v78 = v275;
        MEMORY[0x2318B9880](v217, -1, -1);
      }

      (*(v270 + 8))(v212, v269);
      type metadata accessor for InterpreterError(0);
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v211(v232, v237);
      (*(v240 + 8))(v241, v242);
      (*(v244 + 8))(v245, v249);
      (*(v248 + 8))(v247, v246);
      (*(v261 + 8))(v263, v264);
      v77 = v274;
      return (*(v77 + 8))(v78, v60);
    }

    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C6E3BC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v204 = a2;
  v224 = a1;
  v175 = a4;
  v5 = sub_22C9063DC();
  v219 = *(v5 - 8);
  v220 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v217 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v198 = &v174 - v8;
  v203 = sub_22C90833C();
  v176 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v202 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BF468, &unk_22C923080);
  MEMORY[0x28223BE20](v10 - 8);
  v201 = &v174 - v11;
  v221 = sub_22C90839C();
  v211 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v227 = (&v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22C3A5908(&qword_27D9BF778, &qword_22C923030);
  MEMORY[0x28223BE20](v13 - 8);
  v181 = (&v174 - v14);
  v225 = sub_22C9078FC();
  v213 = *(v225 - 8);
  v15 = MEMORY[0x28223BE20](v225);
  v199 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v194 = &v174 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v174 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v192 = &v174 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v191 = &v174 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v177 = &v174 - v26;
  MEMORY[0x28223BE20](v25);
  v218 = &v174 - v27;
  v185 = sub_22C908EAC();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v187 = (&v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v29 - 8);
  v197 = &v174 - v30;
  v200 = sub_22C908ABC();
  v189 = *(v200 - 8);
  v31 = MEMORY[0x28223BE20](v200);
  v186 = &v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v188 = &v174 - v33;
  v196 = sub_22C90769C();
  v195 = *(v196 - 8);
  v34 = MEMORY[0x28223BE20](v196);
  v183 = (&v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v190 = (&v174 - v37);
  MEMORY[0x28223BE20](v36);
  v214 = &v174 - v38;
  v210 = sub_22C90654C();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v208 = &v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22C906ACC();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v205 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_22C9070DC();
  v216 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v215 = &v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C901FAC();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22C90880C();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v53 = &v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v55 = &v174 - v54;
  *&v182 = a3;
  v56 = sub_22C90878C();
  MEMORY[0x2318B5880](v56);
  sub_22C646D68();
  v57 = *(v43 + 8);
  v179 = v45;
  v212 = v42;
  v180 = v43 + 8;
  v57(v45, v42);
  v58 = *(v47 + 8);
  v59 = v46;
  v178 = v47 + 8;
  v58(v49, v46);
  v222 = v55;
  v60 = v55;
  v61 = v226;
  sub_22C6AEA50(v60, v53, &qword_27D9BAA18, &qword_22C911C40);
  if (sub_22C370B74(v53, 1, v61) == 1)
  {
    sub_22C36DD80(v53, &qword_27D9BAA18);
LABEL_7:
    v71 = v217;
    sub_22C903F8C();
    v72 = sub_22C9063CC();
    v73 = sub_22C90AADC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22C366000, v72, v73, "Expected a call statement ID in update expression", v74, 2u);
      MEMORY[0x2318B9880](v74, -1, -1);
    }

    (*(v219 + 8))(v71, v220);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_20;
  }

  v174 = v57;
  v62 = v215;
  v63 = v216;
  (*(v216 + 32))(v215, v53, v61);
  v64 = v208;
  sub_22C90702C();
  v65 = v209;
  v66 = v210;
  if (v209[11](v64, v210) != *MEMORY[0x277D1DA78])
  {
    (*(v63 + 8))(v62, v61);
    v65[1](v64, v66);
    goto LABEL_7;
  }

  v65[12](v64, v66);
  (*(v206 + 32))(v205, v64, v207);
  sub_22C906ABC();
  v67 = v197;
  sub_22C908ADC();
  v68 = v200;
  if (sub_22C370B74(v67, 1, v200) == 1)
  {
    sub_22C36DD80(v67, &qword_27D9BC0B0);
    v69 = v196;
    v70 = v195;
LABEL_16:
    v93 = v198;
    sub_22C903F8C();
    v94 = *(v70 + 16);
    v95 = v190;
    v94(v190, v214, v69);
    v96 = sub_22C9063CC();
    LODWORD(v228) = sub_22C90AADC();
    if (os_log_type_enabled(v96, v228))
    {
      v97 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v229 = v227;
      *v97 = 136315138;
      v94(v183, v95, v69);
      v98 = sub_22C90A1AC();
      v100 = v99;
      v101 = v69;
      v102 = *(v70 + 8);
      v102(v95, v101);
      v103 = sub_22C36F9F4(v98, v100, &v229);

      *(v97 + 4) = v103;
      v104 = v102;
      v69 = v101;
      _os_log_impl(&dword_22C366000, v96, v228, "Expected app intent tool for tool ID: %s", v97, 0xCu);
      v105 = v227;
      sub_22C36FF94(v227);
      MEMORY[0x2318B9880](v105, -1, -1);
      MEMORY[0x2318B9880](v97, -1, -1);

      (*(v219 + 8))(v198, v220);
    }

    else
    {

      v104 = *(v70 + 8);
      v104(v95, v69);
      (*(v219 + 8))(v93, v220);
    }

    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    v107 = v106;
    v108 = v214;
    *v106 = sub_22C90768C();
    v107[1] = v109;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v104(v108, v69);
    (*(v206 + 8))(v205, v207);
    (*(v216 + 8))(v215, v226);
    goto LABEL_20;
  }

  v217 = v58;
  v75 = v189;
  v76 = v188;
  (*(v189 + 32))(v188, v67, v68);
  v77 = v186;
  (*(v75 + 16))(v186, v76, v68);
  if ((*(v75 + 88))(v77, v68) != *MEMORY[0x277D1E8E0])
  {
    v92 = *(v75 + 8);
    v92(v76, v68);
    v92(v77, v68);
    v70 = v195;
    v69 = v196;
    goto LABEL_16;
  }

  (*(v75 + 96))(v77, v68);
  (*(v184 + 32))(v187, v77, v185);
  v78 = v182;
  v79 = sub_22C90878C();
  v80 = v179;
  v81 = v224;
  MEMORY[0x2318B5880](v79);
  v82 = v181;
  sub_22C690EE8(v80, v83);
  v174(v80, v212);
  (v217)(v49, v59);
  v84 = v225;
  if (sub_22C370B74(v82, 1, v225) == 1)
  {
    v85 = v214;
    v86 = v228;
    sub_22C6F47E4(v78, v81, v214, v223, v218);
    v87 = v86;
    v88 = v213;
    if (v86)
    {
      (*(v184 + 8))(v187, v185);
      (*(v189 + 8))(v188, v200);
      (*(v195 + 8))(v85, v196);
      (*(v206 + 8))(v205, v207);
      (*(v216 + 8))(v215, v61);
      sub_22C36DD80(v222, &qword_27D9BAA18);
      result = sub_22C370B74(v82, 1, v84);
      if (result == 1)
      {
        return result;
      }

      v90 = &qword_27D9BF778;
      v91 = v82;
      return sub_22C36DD80(v91, v90);
    }

    if (sub_22C370B74(v82, 1, v84) != 1)
    {
      sub_22C36DD80(v82, &qword_27D9BF778);
    }

    v111 = v218;
  }

  else
  {
    v88 = v213;
    v110 = v84;
    v111 = v218;
    (*(v213 + 32))(v218, v82, v110);
    v87 = v228;
  }

  v112 = v177;
  v113 = v78;
  v114 = v187;
  sub_22C6F5470(v111, v187, v113, v177);
  if (v87)
  {
    (*(v88 + 8))(v111, v225);
    (*(v184 + 8))(v114, v185);
    (*(v189 + 8))(v188, v200);
    (*(v195 + 8))(v214, v196);
    (*(v206 + 8))(v205, v207);
    (*(v216 + 8))(v215, v61);
LABEL_20:
    v90 = &qword_27D9BAA18;
    v91 = v222;
    return sub_22C36DD80(v91, v90);
  }

  v228 = 0;
  v115 = v225;
  v219 = *(v88 + 8);
  v220 = v88 + 8;
  (v219)(v111, v225);
  v118 = *(v88 + 32);
  v117 = v88 + 32;
  v116 = v118;
  (v118)(v111, v112, v115);
  v119 = sub_22C9083CC();
  v120 = 0;
  v210 = *(v119 + 16);
  v198 = (v211 + 16);
  LODWORD(v197) = *MEMORY[0x277D1D830];
  v190 = (v176 + 88);
  LODWORD(v186) = *MEMORY[0x277D1E400];
  LODWORD(v180) = *MEMORY[0x277D1E408];
  v217 = (v117 - 16);
  v183 = (v211 + 8);
  v182 = xmmword_22C90F800;
  v213 = v117;
  v121 = v227;
  v122 = v111;
  v123 = v115;
  v209 = v118;
  v208 = v119;
  while (1)
  {
    if (v210 == v120)
    {

      (*(v184 + 8))(v187, v185);
      (*(v189 + 8))(v188, v200);
      (*(v195 + 8))(v214, v196);
      (*(v206 + 8))(v205, v207);
      (*(v216 + 8))(v215, v226);
      sub_22C36DD80(v222, &qword_27D9BAA18);
      (v116)(v175, v122, v123);
      type metadata accessor for StepResolution(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v120 >= *(v119 + 16))
    {
      break;
    }

    (*(v211 + 16))(v121, v119 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v120, v221);
    sub_22C90825C();
    v124 = v201;
    sub_22C90838C();
    v125 = sub_22C902D4C();
    (*(*(v125 - 8) + 104))(v124, v197, v125);
    sub_22C36C640(v124, 0, 1, v125);
    v126 = sub_22C9078BC();
    v121 = v227;
    sub_22C60402C();
    v126(&v229, 0);
    sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
    v127 = *(sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
    v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = v182;
    v130 = (v129 + v128);
    *v130 = sub_22C90825C();
    v130[1] = v131;
    sub_22C90838C();
    v132 = sub_22C909F0C();
    v133 = v223;
    v134 = sub_22C6EF70C(v132, v204, 0);

    v135 = v202;
    sub_22C90837C();
    v136 = (*v190)(v135, v203);
    v224 = v120;
    if (v136 == v186)
    {
      v137 = v133;
      v138 = sub_22C90825C();
      v140 = v139;
      v141 = v199;
      (*v217)(v199, v122, v225);
      v230 = v134;
      v142 = sub_22C90786C();
      v181 = sub_22C6F6FD8(v142, v138, v140);

      v143 = *(sub_22C90789C() + 16);

      if (v143)
      {

        v145 = sub_22C90789C();
        MEMORY[0x28223BE20](v145);
        *(&v174 - 4) = &v230;
        *(&v174 - 3) = v137;
        *(&v174 - 2) = v181;
        v146 = v228;
        sub_22C604D3C(MEMORY[0x277D84FA0]);
        v228 = v146;

        sub_22C9078AC();
        v147 = v224;
        v123 = v225;
        v122 = v218;
        v119 = v208;
      }

      else
      {
        v157 = v181;
        if (*(v181 + 2))
        {
          MEMORY[0x28223BE20](v144);
          *(&v174 - 4) = v223;
          *(&v174 - 3) = v138;
          *(&v174 - 2) = v140;
          *(&v174 - 1) = v157;
          v158 = v228;
          v159 = sub_22C604D3C(MEMORY[0x277D84FA0]);
          v228 = v158;

          v141 = v199;
          v230 = v159;
          v134 = v159;
        }

        else
        {
        }

        v119 = v208;
        v147 = v224;

        v172 = sub_22C90788C();
        sub_22C8B5800(v134);
        v172(&v229, 0);
        v122 = v218;
        v123 = v225;
      }

      (*v183)(v121, v221);
      (v219)(v122, v123);
      v173 = v194;
      v116 = v209;
      (v209)(v194, v141, v123);

      v171 = v173;
    }

    else
    {
      if (v136 != v180)
      {
        goto LABEL_48;
      }

      v148 = sub_22C90825C();
      v150 = v149;
      v151 = *v217;
      v152 = v192;
      (*v217)(v192, v218, v225);
      v153 = *(sub_22C90789C() + 16);

      if (v153)
      {
        v154 = sub_22C90789C();
        MEMORY[0x28223BE20](v154);
        v155 = v223;
        *(&v174 - 4) = v134;
        *(&v174 - 3) = v155;
        *(&v174 - 2) = v148;
        *(&v174 - 1) = v150;
        v156 = v228;
        sub_22C604D3C(MEMORY[0x277D84FA0]);
        v228 = v156;

        sub_22C9078AC();
      }

      else
      {

        v160 = sub_22C90788C();
        sub_22C8B5800(v134);
        v160(&v229, 0);
      }

      v122 = v218;
      v161 = v225;
      (v219)(v218, v225);
      v162 = v191;
      v163 = v209;
      (v209)(v191, v152, v161);
      (v163)(v122, v162, v161);
      v164 = v227;
      v165 = sub_22C90825C();
      v167 = v166;
      v168 = v193;
      v151(v193, v122, v161);
      v121 = v164;
      v169 = sub_22C90786C();

      v170 = v228;
      sub_22C70ABE0(v169, v165, v167);
      v228 = v170;

      v123 = v161;
      v116 = v163;
      sub_22C90787C();
      (*v183)(v121, v221);
      (v219)(v122, v123);
      v171 = v168;
      v119 = v208;
      v147 = v224;
    }

    (v116)(v122, v171, v123);
    v120 = v147 + 1;
  }

  __break(1u);
LABEL_48:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C6E5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v8 = sub_22C901FBC();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v9 = sub_22C906ECC();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = type metadata accessor for InterpreterError(0);
  v7[34] = swift_task_alloc();
  v10 = sub_22C908C5C();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v11 = sub_22C9093BC();
  v7[38] = v11;
  v7[39] = *(v11 - 8);
  v7[40] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v7[41] = swift_task_alloc();
  v12 = sub_22C9026BC();
  v7[42] = v12;
  v7[43] = *(v12 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  sub_22C907DEC();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v7[48] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v13 = sub_22C9063DC();
  v7[51] = v13;
  v7[52] = *(v13 - 8);
  v7[53] = swift_task_alloc();
  v14 = sub_22C901FAC();
  v7[54] = v14;
  v7[55] = *(v14 - 8);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF7E0, &qword_22C9230B8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v15 = sub_22C90981C();
  v7[65] = v15;
  v7[66] = *(v15 - 8);
  v7[67] = swift_task_alloc();
  v16 = sub_22C90769C();
  v7[68] = v16;
  v7[69] = *(v16 - 8);
  v7[70] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v17 = sub_22C908ABC();
  v7[73] = v17;
  v7[74] = *(v17 - 8);
  v7[75] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  v7[76] = swift_task_alloc();
  v18 = sub_22C907D6C();
  v7[77] = v18;
  v7[78] = *(v18 - 8);
  v7[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6E5FC4, 0, 0);
}

void sub_22C6E5FC4()
{
  v1 = *(v0 + 608);
  v2 = "ovider.LocalStorage";
  sub_22C6AEA50(*(v0 + 192), v1, &qword_27D9BD7E8, &qword_22C923170);
  sub_22C36D3E0(v1);
  if (v3)
  {
    sub_22C36DD80(*(v0 + 608), &qword_27D9BD7E8);
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    v4 = swift_allocError();
    sub_22C6AFA50(v4, v5, *(v0 + 128), *(v0 + 112), *(v0 + 96));
LABEL_10:
    sub_22C6AF8D4();

    sub_22C369A24();
    goto LABEL_11;
  }

  v6 = *(v0 + 552);
  v7 = sub_22C36CB30();
  v8(v7);
  sub_22C907D5C();
  sub_22C908ADC();
  v9 = *(v6 + 8);
  v10 = sub_22C36CA88();
  v9(v10);
  v11 = sub_22C36D264();
  sub_22C6AEA50(v11, v12, v13, v14);
  sub_22C381514();
  v18 = sub_22C370B74(v15, v16, v17);
  v19 = *(v0 + 632);
  if (v18 == 1)
  {
    sub_22C3839D8();
    sub_22C36DD80(v20, v21);
    sub_22C70CF94();
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    v22 = swift_allocError();
    sub_22C6AFA50(v22, v23, *(v0 + 88), *(v0 + 72), *(v0 + 56));
    v24 = sub_22C36ECB4();
    sub_22C36DD80(v24, v25);
    v26 = sub_22C36BA00();
LABEL_9:
    v28(v26, v27);
    goto LABEL_10;
  }

  v170 = v9;
  v29 = *(v0 + 520);
  sub_22C36DD80(*(v0 + 576), &qword_27D9BC0B0);
  v30 = sub_22C379FC8();
  v31(v30);
  sub_22C908AAC();
  *(sub_22C4E78D0() + 16) = v19;
  sub_22C6B0920();

  v32 = sub_22C371510();
  sub_22C6AEA50(v32, v33, v34, v35);
  v36 = sub_22C36FD7C();
  sub_22C36D0A8(v36, v37, v29);
  if (v3)
  {
    v38 = *(v0 + 632);
    v39 = *(v0 + 624);
    v40 = *(v0 + 616);
    v41 = *(v0 + 512);
    sub_22C36DD80(*(v0 + 504), &qword_27D9BC0C0);
    sub_22C70CF94();
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    v42 = swift_allocError();
    sub_22C6AFA50(v42, v43, *(v0 + 48), *(v0 + 32), *(v0 + 16));
    sub_22C36DD80(v41, &qword_27D9BC0C0);
    v44 = sub_22C36ECB4();
    v45(v44);
    v28 = *(v39 + 8);
    v26 = v38;
    v27 = v40;
    goto LABEL_9;
  }

  v47 = *(v0 + 440);
  sub_22C36DD80(*(v0 + 512), &qword_27D9BC0C0);
  v48 = sub_22C370018();
  v50 = v49(v48);
  v51 = MEMORY[0x2318B47E0](v50);
  v59 = (v47 + 32);
  v177 = (v47 + 16);
  while (1)
  {
    sub_22C80EE50(v51, v52, v53, v54, v55, v56, v57, v58, v153, v154, v155, v156, v157, v158, v159, v161, v162, v164, v166, v168);
    v60 = sub_22C377B94();
    sub_22C6AE8BC(v60, v61, &qword_27D9BF7E0, &qword_22C9230B8);
    v62 = sub_22C3A5908(&qword_27D9BF730, &qword_22C9233A0);
    v63 = sub_22C36CCF8();
    sub_22C36D0A8(v63, v64, v62);
    if (v3)
    {
      v75 = *(v0 + 536);
      v76 = *(v0 + 168);
      v178 = *(v0 + 200);

      v77 = swift_task_alloc();
      *(v0 + 640) = v77;
      *(v77 + 16) = v178;
      *(v77 + 32) = v75;
      *(v77 + 40) = v76;
      sub_22C6AF7A4(&qword_22C9267F8);
      v179 = v78;
      v79 = swift_task_alloc();
      *(v0 + 648) = v79;
      *v79 = v0;
      v79[1] = sub_22C6E6F3C;
      v80 = *(v0 + 184);

      v179(&unk_22C9233B0, v77, v80);
      return;
    }

    v65 = *(v0 + 480);
    v66 = *(v0 + 432);
    v67 = *(v0 + 184);
    (*v59)(v65, *(v0 + 496) + *(v62 + 48), v66);
    sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
    v68 = sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8;
    sub_22C70CE04();
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_22C90F800;
    v70 = &v2[v69];
    v71 = *(v68 + 56);
    *v70 = 12383;
    *(v70 + 1) = 0xE200000000000000;
    v2 = *v177;
    (*v177)(&v70[v71], v65, v66);
    v72 = sub_22C909F0C();
    v73 = sub_22C6EF70C(v72, v67, 1);

    if (*(v73 + 16) >= 2uLL)
    {
      break;
    }

    sub_22C70CF08();
    v74();
  }

  sub_22C903F8C();
  v81 = sub_22C372FA4();
  (v2)(v81);
  v82 = sub_22C9063CC();
  v83 = sub_22C90AAFC();
  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 424);
  v86 = *(v0 + 408);
  v87 = *(v0 + 416);
  if (v84)
  {
    sub_22C36BED8();
    v175 = v83;
    v88 = swift_slowAlloc();
    sub_22C370220();
    v180 = swift_slowAlloc();
    *v88 = 136315138;
    sub_22C371B9C();
    sub_22C70C380(v89, v90);
    sub_22C90B47C();
    v91 = sub_22C380120();
    v169 = v92;
    (v92)(v91);
    v93 = sub_22C36ECB4();
    v96 = sub_22C36F9F4(v93, v94, v95);

    *(v88 + 4) = v96;
    sub_22C70CF60(&dword_22C366000, v82, v175, "Producing parameter disambiguation for payload expression: %s");
    _os_log_impl(v97, v98, v99, v100, v101, v102);
    sub_22C36FF94(v180);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v103 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v103);

    (*(v87 + 8))(v85, v86);
  }

  else
  {

    v104 = sub_22C380120();
    v169 = v105;
    (v105)(v104);
    v106 = sub_22C36ECB4();
    v108(v106, v107);
  }

  v109 = *(v0 + 544);
  sub_22C90069C();
  sub_22C36A748();
  sub_22C36C640(v110, v111, v112, v113);
  sub_22C907D5C();
  sub_22C90768C();
  v114 = sub_22C36CA88();
  v115 = v170(v114);
  MEMORY[0x2318B4B50](v115);
  sub_22C380120();
  sub_22C3870A4();
  sub_22C90766C();
  sub_22C36BECC();
  sub_22C36C640(v116, v117, v118, v109);
  sub_22C907D2C();
  MEMORY[0x2318B47E0]();

  swift_getKeyPath();
  v119 = MEMORY[0x277D84F90];
  v181 = MEMORY[0x277D84F90];
  sub_22C37454C();
  v122 = v121 & v120;
  sub_22C634720();
  v124 = v123 >> 6;

  v125 = 0;
  while (v122)
  {
    v126 = v125;
LABEL_30:
    v127 = __clz(__rbit64(v122));
    v122 &= v122 - 1;
    *(v0 + 152) = *(*(v73 + 48) + ((v126 << 9) | (8 * v127)));

    swift_getAtKeyPath();

    sub_22C3CE870();
  }

  while (1)
  {
    v126 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      __break(1u);
      return;
    }

    if (v126 >= v124)
    {
      break;
    }

    v122 = *(v73 + 56 + 8 * v126);
    ++v125;
    if (v122)
    {
      v125 = v126;
      goto LABEL_30;
    }
  }

  v128 = *(v181 + 16);
  if (v128)
  {
    v129 = *(v0 + 312);
    v130 = *(v0 + 288);
    sub_22C3B74E0(0, v128, 0);
    sub_22C36BA94();
    v132 = v181 + v131;
    v171 = *(v130 + 72);
    v173 = v133;
    do
    {
      v134 = sub_22C634768();
      v173(v134);
      sub_22C90774C();
      v135 = sub_22C36D264();
      v136(v135);
      v138 = *(v119 + 16);
      v137 = *(v119 + 24);
      if (v138 >= v137 >> 1)
      {
        v140 = sub_22C369AB0(v137);
        sub_22C3B74E0(v140, v138 + 1, 1);
      }

      *(v119 + 16) = v138 + 1;
      sub_22C36BA94();
      (*(v129 + 32))(v119 + v139 + *(v129 + 72) * v138);
      v132 += v171;
      --v128;
    }

    while (v128);
  }

  v141 = *(v0 + 592);
  v174 = *(v0 + 584);
  v176 = *(v0 + 600);
  v172 = *(v0 + 480);
  v165 = *(v0 + 456);
  v167 = *(v0 + 432);
  v142 = *(v0 + 376);
  v143 = *(v0 + 360);
  v144 = *(v0 + 336);
  v145 = *(v0 + 344);
  v160 = *(v0 + 176);
  v163 = *(v0 + 160);
  sub_22C9029FC();
  (*(v145 + 104))(v143, *MEMORY[0x277D1CBD8], v144);
  sub_22C9026AC();
  sub_22C36A748();
  sub_22C36C640(v146, v147, v148, v149);
  sub_22C379FC8();
  sub_22C907DCC();
  sub_22C9087AC();
  sub_22C90882C();

  (v2)(v165, v160, v167);
  sub_22C9068FC();
  sub_22C906E6C();
  v169(v172, v167);
  (*(v141 + 8))(v176, v174);
  type metadata accessor for StepResolution(0);
  sub_22C6AF10C();
  swift_storeEnumTagMultiPayload();
  sub_22C3867D4();
  (*(v150 + 8))(v142);
  v151 = sub_22C36C8B4();
  v152(v151, v163);

  sub_22C369C50();
LABEL_11:

  v46();
}

uint64_t sub_22C6E6F3C()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 656) = v0;

  if (!v0)
  {
    *(v4 + 664) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C6E7074()
{
  v1 = v0[83];
  (*(v0[55] + 16))(v0[58], v0[22], v0[54]);
  sub_22C90690C();
  v2 = sub_22C6AEEC0();
  v3(v2);
  type metadata accessor for StepResolution(0);
  swift_storeEnumTagMultiPayload();
  sub_22C3867D4();
  v4 = sub_22C373010();
  v5(v4);
  v6 = sub_22C36C8B4();
  v7(v6, v1);

  sub_22C369C50();

  return v8();
}

uint64_t sub_22C6E726C()
{
  v1 = *(v0 + 656);
  *(v0 + 136) = v1;
  v2 = v1;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C36BA00();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 272);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 0x1C)
    {
      if (((1 << EnumCaseMultiPayload) & 0x10058000) != 0)
      {
        sub_22C70CA54();
        v70 = v5;
        v74 = *(v0 + 584);
        v76 = v6;
        v67 = *(v0 + 456);
        v7 = *(v0 + 440);
        v69 = *(v0 + 432);
        v8 = *(v0 + 344);
        v9 = *(v0 + 352);
        v63 = *(v0 + 336);
        v10 = *(v0 + 232);
        v12 = *(v0 + 216);
        v11 = *(v0 + 224);
        v65 = *(v0 + 176);
        v72 = *(v0 + 160);

        sub_22C90069C();
        sub_22C36A748();
        sub_22C36C640(v14, v15, v16, v17);
        (*(v11 + 104))(v10, *MEMORY[0x277D1C3D0], v12);
        sub_22C901FFC();
        (*(v8 + 104))(v9, *MEMORY[0x277D1CBE8], v63);
        sub_22C9026AC();
        v18 = sub_22C70C474();
        sub_22C36C640(v18, v19, v20, v21);
        sub_22C37170C();
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        (*(v7 + 16))(v67, v65, v69);
        sub_22C36BB08();
        sub_22C906E4C();
        (*(v70 + 8))(v76, v74);
        v22 = v72;
        v23 = sub_22C36BBCC();
        v24(v23);
        type metadata accessor for StepResolution(0);
        sub_22C6AF10C();
        swift_storeEnumTagMultiPayload();
LABEL_5:
        sub_22C3867D4();
        v25 = sub_22C373010();
        v26(v25);
        v27 = sub_22C36C8B4();
        v28(v27, v22);

        sub_22C369C50();
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 12)
      {
        sub_22C70CA54();
        v73 = v37;
        v75 = *(v0 + 584);
        v77 = v38;
        v39 = *(v0 + 440);
        v66 = *(v0 + 456);
        v68 = *(v0 + 432);
        v41 = *(v0 + 344);
        v40 = *(v0 + 352);
        v62 = *(v0 + 336);
        v42 = *(v0 + 232);
        v43 = *(v0 + 216);
        v44 = *(v0 + 224);
        v64 = *(v0 + 176);
        v71 = *(v0 + 160);

        sub_22C70C45C();
        sub_22C70C2F0(v3, v46);
        sub_22C90069C();
        sub_22C36A748();
        sub_22C36C640(v47, v48, v49, v50);
        (*(v44 + 104))(v42, *MEMORY[0x277D1C3D0], v43);
        sub_22C901FFC();
        (*(v41 + 104))(v40, *MEMORY[0x277D1CBE8], v62);
        sub_22C9026AC();
        v51 = sub_22C70C474();
        sub_22C36C640(v51, v52, v53, v54);
        sub_22C37170C();
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        (*(v39 + 16))(v66, v64, v68);
        sub_22C36BB08();
        sub_22C906E4C();
        (*(v73 + 8))(v77, v75);
        v22 = v71;
        v55 = sub_22C36BBCC();
        v56(v55);
        type metadata accessor for StepResolution(0);
        sub_22C6AF10C();
        swift_storeEnumTagMultiPayload();

        goto LABEL_5;
      }
    }

    v57 = sub_22C38B5B8();
    (*(v58 + 8))(v57);
    sub_22C70C45C();
    sub_22C70C2F0(v3, v59);

    v60 = sub_22C36D264();
    v61(v60);
  }

  else
  {
    v30 = sub_22C38B5B8();
    (*(v31 + 8))(v30);

    v32 = sub_22C36D264();
    v33(v32);
  }

  v34 = sub_22C36BBCC();
  v35(v34);
  sub_22C6AF8D4();

  sub_22C375A9C();
LABEL_8:

  return v29();
}

uint64_t sub_22C6E79C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v99 = a4;
  v128 = a3;
  v133 = a1;
  v102 = a5;
  v119 = sub_22C906AFC();
  v114 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22C9063DC();
  v117 = *(v118 - 8);
  v9 = MEMORY[0x28223BE20](v118);
  v121 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v97 - v11;
  v101 = sub_22C908EAC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v108 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C90952C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v14 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22C9093BC();
  v112 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v104 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v110 = &v97 - v20;
  v116 = sub_22C908C5C();
  v115 = *(v116 - 8);
  v21 = MEMORY[0x28223BE20](v116);
  v109 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v97 - v23;
  v130 = sub_22C901FAC();
  v24 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v131 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TranscriptValueFetcher(0);
  MEMORY[0x28223BE20](v125);
  v137 = (&v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_22C3A5908(&qword_27D9BF7C0, &unk_22C923380);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v103 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v97 - v30;
  v32 = type metadata accessor for CandidateWithDependencies(0);
  v123 = v31;
  v120 = v32;
  sub_22C36C640(v31, 1, 1, v32);
  v33 = a2 + 56;
  v34 = 1 << *(a2 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a2 + 56);
  v37 = (v34 + 63) >> 6;
  v98 = v24;
  v129 = (v24 + 8);
  v132 = a2;

  v39 = 0;
  v124 = a2 + 56;
  v126 = v15;
  v127 = v14;
  if (!v36)
  {
LABEL_5:
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v37)
      {

        v48 = v123;
        goto LABEL_15;
      }

      v36 = *(v33 + 8 * v40);
      ++v39;
      if (v36)
      {
        v136 = v6;
        v39 = v40;
        goto LABEL_9;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    v136 = v6;
LABEL_9:
    v41 = *(*(v132 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v36)))));

    v42 = v137;
    v43 = sub_22C90878C();
    *(v42 + *(v125 + 20)) = v41;
    v44 = v131;
    MEMORY[0x2318B3FB0](v43);
    v45 = sub_22C9087DC();
    v135 = &v97;
    v138 = v45;
    MEMORY[0x28223BE20](v45);
    *(&v97 - 2) = v42;
    *(&v97 - 1) = v44;
    v134 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C3A5908(&qword_27D9BF6C8, qword_22C923260);
    sub_22C50B118(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420);
    v46 = v136;
    sub_22C907D9C();
    v6 = v46;

    v47 = v139;
    (*v129)(v44, v130);
    v15 = v126;
    v14 = v127;
    if (v47)
    {
      break;
    }

LABEL_12:
    v36 &= v36 - 1;
    result = sub_22C70C2F0(v137, type metadata accessor for TranscriptValueFetcher);
    v33 = v124;
    if (!v36)
    {
      goto LABEL_5;
    }
  }

  if (*(v47 + 16) != 1)
  {

    goto LABEL_12;
  }

  v87 = v103;
  sub_22C58B6A8(v47, v103);

  sub_22C70C2F0(v137, type metadata accessor for TranscriptValueFetcher);
  v48 = v123;
  sub_22C6AE9C4(v87, v123);
LABEL_15:
  v49 = sub_22C370B74(v48, 1, v120);
  v50 = v121;
  v51 = v122;
  if (!v49)
  {
    v68 = v115;
    v69 = v109;
    v70 = v116;
    v136 = *(v115 + 16);
    v137 = (v115 + 16);
    v136(v109, v48, v116);
    (*(v68 + 32))(v51, v69, v70);
    v71 = v110;
    sub_22C90774C();
    v72 = v112;
    v73 = v111;
    (*(v112 + 32))(v111, v71, v15);
    v74 = (*(v72 + 88))(v73, v15);
    LODWORD(v68) = *MEMORY[0x277D72A38];
    v75 = *MEMORY[0x277D729F8];
    v76 = *(v72 + 8);
    v76(v73, v15);
    if (v74 == v68 || v74 == v75)
    {
      v78 = v104;
      v79 = v122;
      sub_22C90774C();
      sub_22C90935C();
      v76(v78, v15);
      sub_22C706944(v14, v108);
      if (!v6)
      {
        (*(v98 + 16))(v131, v99, v130);
        v88 = sub_22C908E7C();
        v134 = v89;
        v135 = v88;
        sub_22C3A5908(&qword_27D9BAD38, &unk_22C91D9B0);
        v90 = v79;
        v91 = (sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0) - 8);
        v92 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_22C90F800;
        v94 = v93 + v92;
        v95 = v91[14];
        sub_22C90699C();
        v96 = v116;
        v136(v94 + v95, v90, v116);
        sub_22C9069BC();
        sub_22C70C380(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
        sub_22C909F0C();
        sub_22C90779C();
        sub_22C9077AC();
        MEMORY[0x2318B4C90]();
        MEMORY[0x2318B4CA0]();
        sub_22C90778C();
        (*(v100 + 8))(v108, v101);
        (*(v106 + 8))(v127, v107);
        (*(v115 + 8))(v90, v96);
        type metadata accessor for StepResolution(0);
        swift_storeEnumTagMultiPayload();
        v86 = v123;
        return sub_22C36DD80(v86, &qword_27D9BF7C0);
      }

      (*(v106 + 8))(v14, v107);
      (*(v115 + 8))(v79, v116);
    }

    else
    {
      v80 = v122;
      v81 = v105;
      sub_22C903F8C();
      v82 = sub_22C9063CC();
      v83 = sub_22C90AADC();
      if (os_log_type_enabled(v82, v83))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_22C366000, v82, v83, "Expected an entity type for open() parameter", v85, 2u);
        MEMORY[0x2318B9880](v85, -1, -1);
      }

      (*(v117 + 8))(v81, v118);
      type metadata accessor for InterpreterError(0);
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v115 + 8))(v80, v116);
    }

    v48 = v123;
    goto LABEL_31;
  }

  sub_22C903F8C();
  v52 = v114;
  v53 = v113;
  v54 = v119;
  (*(v114 + 16))(v113, v133, v119);
  v55 = sub_22C9063CC();
  v56 = sub_22C90AADC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v135 = v57;
    v137 = swift_slowAlloc();
    v139 = v137;
    *v57 = 136315138;
    v58 = v131;
    LODWORD(v136) = v56;
    MEMORY[0x2318B3FB0]();
    sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v59 = v130;
    v60 = sub_22C90B47C();
    v61 = v53;
    v63 = v62;
    (*v129)(v58, v59);
    (*(v52 + 8))(v61, v119);
    v64 = sub_22C36F9F4(v60, v63, &v139);

    v65 = v135;
    *(v135 + 4) = v64;
    v66 = v65;
    _os_log_impl(&dword_22C366000, v55, v136, "No value found for statement ID %s to evaluate open()", v65, 0xCu);
    v67 = v137;
    sub_22C36FF94(v137);
    MEMORY[0x2318B9880](v67, -1, -1);
    MEMORY[0x2318B9880](v66, -1, -1);
  }

  else
  {

    (*(v52 + 8))(v53, v54);
  }

  (*(v117 + 8))(v50, v118);
  type metadata accessor for InterpreterError(0);
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  MEMORY[0x2318B3FB0]();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_31:
  v86 = v48;
  return sub_22C36DD80(v86, &qword_27D9BF7C0);
}

uint64_t sub_22C6E89A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  sub_22C3A5908(&qword_27D9BF7E8, &unk_22C923110);
  v7[24] = swift_task_alloc();
  v8 = sub_22C9094EC();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v7[28] = swift_task_alloc();
  v9 = sub_22C90952C();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v7[34] = swift_task_alloc();
  v10 = sub_22C90941C();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF7F0, &qword_22C925EA0);
  v7[38] = swift_task_alloc();
  v11 = sub_22C90665C();
  v7[39] = v11;
  v7[40] = *(v11 - 8);
  v7[41] = swift_task_alloc();
  v12 = sub_22C908AEC();
  v7[42] = v12;
  v7[43] = *(v12 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  type metadata accessor for StructuredQueryConverter(0);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v13 = sub_22C90682C();
  v7[48] = v13;
  v7[49] = *(v13 - 8);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v14 = sub_22C90658C();
  v7[52] = v14;
  v7[53] = *(v14 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = sub_22C3A5908(&qword_27D9BF7F8, &unk_22C923120);
  v7[56] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA10, &qword_22C90D040);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v15 = sub_22C901FAC();
  v7[60] = v15;
  v7[61] = *(v15 - 8);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v7[65] = swift_task_alloc();
  v16 = sub_22C9026BC();
  v7[66] = v16;
  v7[67] = *(v16 - 8);
  v7[68] = swift_task_alloc();
  sub_22C907DEC();
  v7[69] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v7[70] = swift_task_alloc();
  v17 = sub_22C9026DC();
  v7[71] = v17;
  v7[72] = *(v17 - 8);
  v7[73] = swift_task_alloc();
  v18 = sub_22C90880C();
  v7[74] = v18;
  v7[75] = *(v18 - 8);
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v19 = sub_22C908EAC();
  v7[80] = v19;
  v7[81] = *(v19 - 8);
  v7[82] = swift_task_alloc();
  v20 = sub_22C90077C();
  v7[83] = v20;
  v7[84] = *(v20 - 8);
  v7[85] = swift_task_alloc();
  v7[86] = type metadata accessor for RequirementStatus(0);
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v21 = sub_22C9063DC();
  v7[92] = v21;
  v7[93] = *(v21 - 8);
  v7[94] = swift_task_alloc();
  v7[95] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v22 = sub_22C90769C();
  v7[103] = v22;
  v7[104] = *(v22 - 8);
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6E9344, 0, 0);
}

uint64_t sub_22C6E9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t *a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  sub_22C6AFA14();
  a63 = v65;
  a64 = v66;
  a62 = v64;
  sub_22C6AEA50(v64[20], v64[102], &qword_27D9BD7E8, &qword_22C923170);
  v67 = sub_22C907D6C();
  v64[107] = v67;
  v68 = sub_22C3707B4();
  sub_22C36D0A8(v68, v69, v67);
  if (!v211)
  {
    v83 = v64[102];
    sub_22C907D5C();
    sub_22C36BBA8();
    v85 = *(v84 + 8);
    v64[108] = v85;
    v64[109] = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v228 = v84 + 8;
    v229 = v85;
    (v85)(v83, v67);
    v86 = sub_22C36D39C();
    v87(v86);
    sub_22C903F8C();
    v88 = sub_22C37FE24();
    sub_22C6AEA50(v88, v89, v90, v91);
    v92 = sub_22C9063CC();
    v93 = sub_22C90AABC();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v64[101];
    if (v94)
    {
      v96 = v64[100];
      sub_22C36BED8();
      v97 = swift_slowAlloc();
      sub_22C370220();
      v98 = swift_slowAlloc();
      a51 = v98;
      *v97 = 136315138;
      v99 = sub_22C379FC8();
      sub_22C6AEA50(v99, v100, v101, v102);
      if (sub_22C370B74(v96, 1, v67) == 1)
      {
        sub_22C36DD80(v64[100], &qword_27D9BD7E8);
        v103 = 1;
      }

      else
      {
        sub_22C907D5C();
        v142 = sub_22C37170C();
        v229(v142);
        v103 = 0;
      }

      v143 = v64[101];
      v230 = v64[95];
      v144 = v64[93];
      v145 = v64[92];
      sub_22C36C640(v64[91], v103, 1, v64[103]);
      sub_22C36CC9C();
      sub_22C90A1AC();
      sub_22C36DD80(v143, &qword_27D9BD7E8);
      v146 = sub_22C36CC9C();
      v149 = sub_22C36F9F4(v146, v147, v148);

      *(v97 + 4) = v149;
      _os_log_impl(&dword_22C366000, v92, v93, "Checking action requirements for tool: %s", v97, 0xCu);
      sub_22C36FF94(v98);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v144 + 8))(v230, v145);
    }

    else
    {

      sub_22C36DD80(v95, &qword_27D9BD7E8);
      v128 = sub_22C36D264();
      v129(v128);
    }

    v150 = v64[23];
    v151 = type metadata accessor for Interpreter2(0);
    sub_22C378AB0(v150 + *(v151 + 20), (v64 + 12));
    v152 = v64[16];
    sub_22C374168(v64 + 12, v64[15]);
    MEMORY[0x2318B5FE0]();
    sub_22C908AFC();
    (*(v64[84] + 8))(v64[85], v64[83]);
    sub_22C90878C();
    sub_22C37A040(v152);
    v231 = v153 + *v153;
    swift_task_alloc();
    sub_22C36CC90();
    v64[110] = v154;
    *v154 = v155;
    v154[1] = sub_22C6EA208;
    sub_22C6AF3FC();

    return v161(v156, v157, v158, v159, v160, v161, v162, v163, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v228, v231, a51, a52, a53, a54, a55, a56);
  }

  sub_22C36DD80(v64[102], &qword_27D9BD7E8);
  sub_22C903F8C();
  v70 = sub_22C9063CC();
  v71 = sub_22C90AABC();
  if (os_log_type_enabled(v70, v71))
  {
    sub_22C3720F4();
    *swift_slowAlloc() = 0;
    sub_22C374ED0();
    _os_log_impl(v72, v73, v74, v75, v76, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v77 = sub_22C6AEEC0();
  v78(v77);
  sub_22C90878C();
  v79 = sub_22C370018();
  sub_22C6AEA50(v79, v80, v81, v82);
  sub_22C70C3C4();
  if (v211)
  {
    sub_22C36DD80(v64[98], &qword_27D9BD7E8);
    v106 = 1;
  }

  else
  {
    sub_22C907D1C();
    sub_22C36BBA8();
    v104 = sub_22C36BBCC();
    v105(v104);
    v106 = 0;
  }

  v107 = v64[58];
  v109 = v64[55];
  v108 = v64[56];
  v110 = v64[52];
  sub_22C36C640(v64[59], v106, 1, v110);
  v111 = sub_22C6AFB9C();
  v112(v111);
  sub_22C36BECC();
  sub_22C36C640(v113, v114, v115, v110);
  v116 = *(v109 + 48);
  v117 = &qword_22C90D040;
  v118 = sub_22C36BA00();
  sub_22C6AEA50(v118, v119, &qword_27D9BAA10, &qword_22C90D040);
  sub_22C6AEA50(v107, v108 + v116, &qword_27D9BAA10, &qword_22C90D040);
  v120 = sub_22C3707B4();
  sub_22C36D0A8(v120, v121, v110);
  if (v211)
  {
    v122 = v64[52];
    sub_22C6AF0E8();
    sub_22C36DD80(v123, v124);
    v125 = sub_22C36D39C();
    sub_22C36DD80(v125, v126);
    sub_22C36D0A8(v108 + v116, 1, v122);
    if (v211)
    {
      sub_22C36DD80(v64[56], &qword_27D9BAA10);
      v127 = 1;
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  sub_22C6AEA50(v64[56], v64[57], &qword_27D9BAA10, &qword_22C90D040);
  sub_22C381514();
  v133 = sub_22C370B74(v130, v131, v132);
  v134 = v64[59];
  v135 = v64[57];
  if (v133 == 1)
  {
    v136 = sub_22C3806B8();
    sub_22C36DD80(v136, v137);
    v138 = sub_22C36D264();
    sub_22C36DD80(v138, v139);
    v140 = sub_22C36BA00();
    v141(v140);
LABEL_19:
    sub_22C36DD80(v64[56], &qword_27D9BF7F8);
    v127 = 0;
    goto LABEL_26;
  }

  a50 = v64[56];
  v165 = v64[53];
  v166 = v64[52];
  (*(v165 + 32))(v64[54], v108 + v116, v166);
  sub_22C70C444();
  sub_22C70C380(v167, v168);
  sub_22C6AF3F0();
  v127 = sub_22C90A0BC();
  v169 = *(v165 + 8);
  v170 = sub_22C36FC2C();
  v169(v170);
  v117 = &qword_27D9BAA10;
  v171 = sub_22C36CA88();
  sub_22C36DD80(v171, v172);
  sub_22C36DD80(v134, &qword_27D9BAA10);
  (v169)(v135, v166);
  sub_22C36DD80(a50, &qword_27D9BAA10);
LABEL_26:
  static SearchRouter.run(structuredSearch:transcript:followupIsClientAction:)(v64[18], v64[78], v127 & 1, &a51);
  v173 = sub_22C6B015C();
  v174(v173);
  switch(a51)
  {
    case 1:
      sub_22C6AFFE0();
      sub_22C90878C();
      v197 = sub_22C37E5D0();
      v198(v197);
      v199 = type metadata accessor for Interpreter2(0);
      sub_22C6AEA50(v117 + *(v199 + 36), (v64 + 7), &qword_27D9BF800, &qword_22C923130);
      swift_task_alloc();
      sub_22C36CC90();
      v64[115] = v200;
      *v200 = v201;
      sub_22C3801A8(v200);
      goto LABEL_39;
    case 2:
      v191 = sub_22C6AFAD0();
      v192(v191);
      sub_22C36BD58();
      sub_22C906A1C();
      sub_22C6AEDA8();
      a9 = v194;
      a10 = v193;
      sub_22C6AED20();
      sub_22C375D4C();
      sub_22C6B04E4();
      sub_22C6AFB18();
      swift_storeEnumTagMultiPayload();

      sub_22C369C50();
      goto LABEL_27;
    case 3:
      sub_22C9082FC();
      sub_22C70C3C4();
      if (v211)
      {
        v195 = v64[34];
        v196 = &qword_27D9BC028;
      }

      else
      {
        v208 = sub_22C36CB30();
        v209(v208);
        v210 = sub_22C9093DC();
        sub_22C58B0F8(v210);

        sub_22C70C3C4();
        if (!v211)
        {
          v221 = sub_22C6AF6C0();
          v223 = v222(v221);
          MEMORY[0x2318B57A0](v223);
          sub_22C90878C();
          v224 = sub_22C36D29C();
          v225(v224);
          sub_22C6AFFB0();
          swift_task_alloc();
          sub_22C36CC90();
          v64[117] = v226;
          *v226 = v227;
          sub_22C37D9E4(v226);
LABEL_39:
          sub_22C6AF3FC();

          return sub_22C7177DC(v202, v203, v204, v205, v206);
        }

        v212 = sub_22C6B0148();
        v213(v212);
        v196 = &qword_27D9BB0C0;
        v195 = v210;
      }

      sub_22C36DD80(v195, v196);
      type metadata accessor for InterpreterError(0);
      sub_22C36A1EC();
      v216 = sub_22C70C380(v214, v215);
      v217 = sub_22C36D148(v216);
      v219 = sub_22C70CA1C(v217, v218);
      v220(v219);
      sub_22C370018();
      swift_storeEnumTagMultiPayload();
      a50 = v117;
      swift_willThrow();
      sub_22C6AFF08();
      sub_22C6AEB90();
      a36 = v64[47];
      a37 = v64[46];
      a38 = v64[45];
      a39 = v64[44];
      a40 = v64[41];
      sub_22C70CC7C(v64[37]);
      a47 = v64[28];
      a48 = v64[27];
      a49 = v64[24];

      sub_22C369A24();
LABEL_27:
      sub_22C6AF3FC();

      result = v176(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
      break;
    default:
      v183 = sub_22C6AFDDC();
      v184(v183);
      v185 = sub_22C36BA00();
      sub_22C6AEA50(v185, v186, v187, v188);
      v189 = swift_task_alloc();
      v64[112] = v189;
      *v189 = v64;
      sub_22C70C6C0(v189);
      sub_22C6AF3FC();

      return sub_22C6FE598();
  }

  return result;
}

uint64_t sub_22C6EA208()
{
  sub_22C36D5EC();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 888) = v0;

  sub_22C6343B0();
  (*(v1[75] + 8))(v1[79], v1[74]);
  v5 = sub_22C36ECB4();
  v6(v5);
  sub_22C374448();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C6EA3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v194 = v56;
  sub_22C36FF94(v56 + 12);
  v57 = sub_22C36BBCC();
  sub_22C70C29C(v57, v58);
  sub_22C36BAFC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v56[99];
    (*(v56[72] + 32))(v56[73], v56[87], v56[71]);
    sub_22C90069C();
    v60 = sub_22C70C474();
    sub_22C36C640(v60, v61, v62, v63);
    v64 = sub_22C377B94();
    sub_22C6AEA50(v64, v65, v66, v67);
    sub_22C36D3E0(v59);
    if (v168)
    {
      sub_22C36DD80(v56[99], &qword_27D9BD7E8);
      v80 = 1;
    }

    else
    {
      v78 = v56[108];
      sub_22C907D5C();
      v79 = sub_22C36BBCC();
      v78(v79);
      v80 = 0;
    }

    v188 = v56[103];
    v189 = v56[104];
    v190 = v56[88];
    v192 = v56[106];
    v81 = v56[72];
    v82 = v56[71];
    v83 = v56[68];
    v84 = v56[67];
    v85 = v56[66];
    v86 = v56[63];
    v87 = v56[61];
    v187 = v56[60];
    v185 = v56[21];
    v186 = v56[73];
    sub_22C36C640(v56[90], v80, 1, v188);
    sub_22C63489C();
    v88 = sub_22C38644C();
    v89(v88);
    (*(v84 + 104))(v83, *MEMORY[0x277D1CBA0], v85);
    sub_22C9026AC();
    v90 = sub_22C70C474();
    sub_22C36C640(v90, v91, v92, v93);
    sub_22C37170C();
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v87 + 16))(v86, v185, v187);
    sub_22C906E7C();
    (*(v81 + 8))(v186, v82);
    sub_22C70C2F0(v190, type metadata accessor for RequirementStatus);
    (*(v189 + 8))(v192, v188);
LABEL_9:
    type metadata accessor for StepResolution(0);
    sub_22C6AF8C8();
    swift_storeEnumTagMultiPayload();

    sub_22C369C50();
LABEL_21:
    sub_22C379C40();

    __asm { BRAA            X1, X16 }
  }

  sub_22C70C2F0(v56[88], type metadata accessor for RequirementStatus);
  v68 = sub_22C36BBCC();
  v69(v68);
  v70 = sub_22C36D264();
  sub_22C70C2F0(v70, v71);
  v72 = v56[111];
  v73 = v56[98];
  sub_22C90878C();
  v74 = sub_22C3806B8();
  sub_22C6AEA50(v74, v75, v76, v77);
  sub_22C369A54(v73);
  if (v168)
  {
    sub_22C36DD80(v56[98], &qword_27D9BD7E8);
    v96 = 1;
  }

  else
  {
    sub_22C907D1C();
    sub_22C36BBA8();
    v94 = sub_22C36BBCC();
    v95(v94);
    v96 = 0;
  }

  v97 = v56[58];
  v99 = v56[55];
  v98 = v56[56];
  v100 = v56[52];
  v101 = v56[53];
  sub_22C36C640(v56[59], v96, 1, v100);
  (*(v101 + 104))(v97, *MEMORY[0x277D1DB00], v100);
  sub_22C36BECC();
  sub_22C36C640(v102, v103, v104, v100);
  v105 = *(v99 + 48);
  v106 = sub_22C36BA00();
  sub_22C6AEA50(v106, v107, &qword_27D9BAA10, &qword_22C90D040);
  sub_22C6AEA50(v97, v98 + v105, &qword_27D9BAA10, &qword_22C90D040);
  v108 = sub_22C3707B4();
  sub_22C36D0A8(v108, v109, v100);
  if (v168)
  {
    v110 = v56[52];
    v111 = &qword_22C90D040;
    sub_22C3839D8();
    sub_22C36DD80(v112, v113);
    v114 = sub_22C37B220();
    sub_22C36DD80(v114, v115);
    sub_22C36D0A8(v98 + v105, 1, v110);
    if (v168)
    {
      sub_22C36DD80(v56[56], &qword_27D9BAA10);
      v116 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_22C6AEA50(v56[56], v56[57], &qword_27D9BAA10, &qword_22C90D040);
  sub_22C381514();
  v120 = sub_22C370B74(v117, v118, v119);
  v111 = v56[58];
  if (v120 == 1)
  {
    v121 = sub_22C371510();
    sub_22C36DD80(v121, v122);
    sub_22C6AF770();
    sub_22C36DD80(v123, v124);
    v125 = sub_22C36BA00();
    v126(v125);
LABEL_17:
    sub_22C36DD80(v56[56], &qword_27D9BF7F8);
    v116 = 0;
    goto LABEL_19;
  }

  v191 = v56[56];
  v127 = v56[53];
  (*(v127 + 32))(v56[54], v98 + v105, v56[52]);
  sub_22C70C444();
  sub_22C70C380(v128, v129);
  v116 = sub_22C90A0BC();
  v130 = *(v127 + 8);
  v131 = sub_22C3726C4();
  v130(v131);
  v132 = sub_22C36FC2C();
  sub_22C36DD80(v132, v133);
  v134 = sub_22C634768();
  sub_22C36DD80(v134, v135);
  v136 = sub_22C36FC08();
  v130(v136);
  sub_22C36DD80(v191, &qword_27D9BAA10);
LABEL_19:
  static SearchRouter.run(structuredSearch:transcript:followupIsClientAction:)(v56[18], v56[78], v116 & 1, v193);
  v137 = sub_22C6B015C();
  v138(v137);
  if (v72)
  {
LABEL_20:
    sub_22C383D8C();

    sub_22C369A24();
    goto LABEL_21;
  }

  switch(v193[0])
  {
    case 1:
      sub_22C6AFFE0();
      sub_22C90878C();
      v154 = sub_22C37E5D0();
      v155(v154);
      v156 = type metadata accessor for Interpreter2(0);
      sub_22C6AEA50(v111 + *(v156 + 36), (v56 + 7), &qword_27D9BF800, &qword_22C923130);
      swift_task_alloc();
      sub_22C36CC90();
      v56[115] = v157;
      *v157 = v158;
      sub_22C3801A8(v157);
      goto LABEL_33;
    case 2:
      v150 = sub_22C6AFAD0();
      v151(v150);
      sub_22C36BD58();
      sub_22C906A1C();
      goto LABEL_9;
    case 3:
      sub_22C9082FC();
      sub_22C70C3C4();
      if (v168)
      {
        v152 = v56[34];
        v153 = &qword_27D9BC028;
LABEL_39:
        sub_22C36DD80(v152, v153);
        type metadata accessor for InterpreterError(0);
        sub_22C36A1EC();
        v173 = sub_22C70C380(v171, v172);
        v174 = sub_22C36D148(v173);
        v176 = sub_22C70CA1C(v174, v175);
        v177(v176);
        sub_22C370018();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_20;
      }

      v165 = sub_22C36CB30();
      v166(v165);
      v167 = sub_22C9093DC();
      sub_22C58B0F8(v167);

      sub_22C70C3C4();
      if (v168)
      {
        v169 = sub_22C6B0148();
        v170(v169);
        v153 = &qword_27D9BB0C0;
        v152 = v167;
        goto LABEL_39;
      }

      v178 = sub_22C6AF6C0();
      v180 = v179(v178);
      MEMORY[0x2318B57A0](v180);
      sub_22C90878C();
      v181 = sub_22C36D29C();
      v182(v181);
      sub_22C6AFFB0();
      swift_task_alloc();
      sub_22C36CC90();
      v56[117] = v183;
      *v183 = v184;
      sub_22C37D9E4(v183);
LABEL_33:
      sub_22C379C40();

      return sub_22C7177DC(v159, v160, v161, v162, v163);
    default:
      v141 = sub_22C6AFDDC();
      v142(v141);
      v143 = sub_22C36BA00();
      sub_22C6AEA50(v143, v144, v145, v146);
      v147 = swift_task_alloc();
      v56[112] = v147;
      *v147 = v56;
      sub_22C70C6C0(v147);
      sub_22C379C40();

      return sub_22C6FE598();
  }
}

uint64_t sub_22C6EB148()
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
  v5[113] = v0;

  if (v0)
  {
    sub_22C36DD80(v5[97], &qword_27D9BD7E8);
    v9 = sub_22C6AEDE8();
    v10(v9);
  }

  else
  {
    v5[114] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C6EB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_22C6AFA14();
  sub_22C90679C();
  v57 = sub_22C6AFB9C();
  v58(v57);
  sub_22C36BA00();
  sub_22C908C7C();
  sub_22C6AEDA8();
  v70 = v60;
  v71 = v59;
  v72 = v56[94];
  v73 = v56[91];
  v74 = v56[90];
  v75 = v56[88];
  v76 = v56[87];
  v77 = v56[85];
  v78 = v56[82];
  v79 = v56[79];
  v80 = v56[78];
  v81 = v56[77];
  v82 = v56[76];
  v83 = v56[73];
  v84 = v56[70];
  v85 = v56[69];
  v86 = v56[68];
  v87 = v56[65];
  v88 = v56[64];
  v89 = v56[63];
  v90 = v56[62];
  v91 = v56[59];
  v92 = v56[58];
  v93 = v56[57];
  v94 = v56[56];
  v95 = v56[54];
  v96 = v56[51];
  v97 = v56[50];
  v98 = v56[47];
  v99 = v56[46];
  v100 = v56[45];
  v101 = v56[44];
  v102 = v56[41];
  v103 = v56[38];
  v104 = v56[37];
  v105 = v56[34];
  v106 = v56[33];
  v107 = v56[32];
  v108 = v56[31];
  v109 = v56[28];
  v110 = v56[27];
  v111 = v56[24];
  sub_22C6B04E4();
  sub_22C6AFB18();
  swift_storeEnumTagMultiPayload();

  sub_22C369C50();
  sub_22C6AF3FC();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, a53, a54, a55, a56);
}

uint64_t sub_22C6EB5A0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 928) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C6EB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_22C6AFA14();
  v57 = v56[116];
  v58 = sub_22C71BA0C();
  if (v57)
  {
    v59 = v56[47];
    v100 = v57;
  }

  else
  {
    v60 = v58;
    if (v58)
    {
      v61 = v56[38];
      v62 = sub_22C6B02F8();
      sub_22C58B780(v62, v63);
      sub_22C70C3C4();
      if (v64)
      {
        v65 = v56[38];

        sub_22C36DD80(v65, &qword_27D9BF7F0);
      }

      else
      {
        (*(v56[40] + 32))(v56[41], v56[38], v56[39]);
        v72 = *(v60 + 16);

        if (v72 == 1)
        {
          v74 = v56[49];
          v73 = v56[50];
          v99 = v56[48];
          v101 = v56[47];
          (*(v56[61] + 16))(v56[64], v56[21], v56[60]);
          v75 = sub_22C6AF810();
          sub_22C6AEA50(v75, v76, v77, v78);
          v79 = sub_22C50B478();
          v80(v79);
          (*(v74 + 104))(v73, *MEMORY[0x277D1DC08], v99);
          sub_22C37FF20();
          sub_22C908C7C();
          v81 = sub_22C36FC2C();
          v82(v81);
          sub_22C370920();
          sub_22C70C2F0(v101, v83);
          sub_22C6AEDA8();
          a10 = v85;
          a11 = v84;
          sub_22C383D8C();
          a36 = v56[51];
          a37 = v56[50];
          a38 = v56[47];
          a39 = v56[46];
          a40 = v56[45];
          a41 = v56[44];
          a42 = v56[41];
          a43 = v56[38];
          a44 = v56[37];
          a45 = v56[34];
          a46 = v56[33];
          a47 = v56[32];
          a48 = v56[31];
          a49 = v56[28];
          a50 = v56[27];
          v100 = v56[24];
          sub_22C6B04E4();
          sub_22C6AFB18();
          swift_storeEnumTagMultiPayload();

          sub_22C369C50();
          goto LABEL_14;
        }

        (*(v56[40] + 8))(v56[41], v56[39]);
      }

      v59 = v56[47];
      type metadata accessor for InterpreterError(0);
      sub_22C36A1EC();
      sub_22C70C380(v86, v87);
      sub_22C375F84();
      v88 = swift_allocError();
      sub_22C70C70C(v88, v89);
      swift_storeEnumTagMultiPayload();
      v100 = v61;
    }

    else
    {
      v59 = v56[47];
      type metadata accessor for InterpreterError(0);
      sub_22C36A1EC();
      sub_22C70C380(v66, v67);
      sub_22C6AFE24();
      sub_22C37A198();
      v68 = swift_allocError();
      v70 = sub_22C634864(v68, v69);
      v71(v70);
      sub_22C3806B8();
      swift_storeEnumTagMultiPayload();
      v100 = v68;
    }

    swift_willThrow();
  }

  sub_22C70C2F0(v59, type metadata accessor for StructuredQueryConverter);
  sub_22C6AFF08();
  sub_22C6AED20();
  sub_22C375D4C();

  sub_22C369A24();
LABEL_14:
  sub_22C6AF3FC();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, v100, a52, a53, a54, a55, a56);
}

uint64_t sub_22C6EBCF4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 944) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C6EBDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_22C6AF840();
  sub_22C6AFC48();
  if (*(sub_22C900D6C() + 16))
  {
  }

  sub_22C6AF8F4();
  v55 = sub_22C6AEF20();
  v115 = v56;
  v56(v55);
  v57 = sub_22C36ECB4();
  if (v58(v57) == *MEMORY[0x277D72D50])
  {
    v59 = sub_22C37EBDC();
    v60(v59);
    sub_22C6B005C();
    sub_22C6AF8F4();
    v61 = sub_22C6AFB9C();
    v62(v61);
    v63 = sub_22C36D264();
    v65 = v64(v63);
    v66 = *MEMORY[0x277D72D00];
    v67 = sub_22C36D264();
    v68(v67);

    if (v65 == v66)
    {
      v69 = sub_22C900EAC();
      if (v69)
      {
        sub_22C58B798(v69, v54[24]);

        v70 = sub_22C900C9C();
        v71 = sub_22C37EF1C();
        if (sub_22C370B74(v71, v72, v70) == 1)
        {
          sub_22C36DD80(v54[24], &qword_27D9BF7E8);
        }

        else
        {
          sub_22C900C2C();
          v94 = v93;
          sub_22C36BBA8();
          v95 = sub_22C37170C();
          v96(v95);
          if (v94)
          {
          }
        }
      }
    }
  }

  else
  {
    (*(v54[30] + 8))(v54[32], v54[29]);
  }

  v73 = v54[96];
  v75 = v54[49];
  v74 = v54[50];
  v107 = v54[48];
  v109 = v54[46];
  v76 = v54[36];
  v111 = v54[35];
  v113 = v54[37];
  v77 = v54[20];
  (*(v54[61] + 16))();
  sub_22C6AEA50(v77, v73, &qword_27D9BD7E8, &qword_22C923170);
  v78 = sub_22C38644C();
  v115(v78);
  sub_22C6B02F8();
  sub_22C9067FC();
  (*(v75 + 104))(v74, *MEMORY[0x277D1DC10], v107);
  sub_22C6AFEFC();
  sub_22C908C7C();
  sub_22C370920();
  sub_22C70C2F0(v109, v79);
  v80 = sub_22C50B578();
  v81(v80);
  (*(v76 + 8))(v113, v111);
  sub_22C6AEDA8();
  v97 = v83;
  v98 = v82;
  sub_22C6AED20();
  v99 = v54[51];
  v100 = v54[50];
  v101 = v54[47];
  v102 = v54[46];
  v103 = v54[45];
  v104 = v54[44];
  v105 = v54[41];
  v106 = v54[38];
  v108 = v54[37];
  v110 = v54[34];
  v112 = v54[33];
  v114 = v54[32];
  v116 = v54[31];
  v117 = v54[28];
  v118 = v54[27];
  v119 = v54[24];
  sub_22C6B04E4();
  sub_22C6AFB18();
  swift_storeEnumTagMultiPayload();

  sub_22C369C50();
  sub_22C6AF788();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, v97, v98, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v99, v100, v101, v102, v103, v104, v105, v106, v108, v110, v112, v114, v116, v117, v118, v119, a51, a52, a53, a54);
}

void sub_22C6EC2FC()
{
  sub_22C370030();
  v79 = v2;
  v83 = v3;
  sub_22C9063DC();
  sub_22C369824();
  v81 = v5;
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v80 = v6;
  sub_22C36BA0C();
  sub_22C90931C();
  sub_22C369824();
  v75 = v8;
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v74 = v9;
  sub_22C36BA0C();
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v11 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C371BB4();
  v13 = sub_22C9025EC();
  sub_22C369824();
  v78 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v77 = v16;
  v17 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C38059C();
  v19 = sub_22C901FAC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = type metadata accessor for TranscriptValueFetcher(0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v30 = v29 - v28;
  sub_22C90878C();
  sub_22C908C5C();
  sub_22C371B9C();
  sub_22C70C380(v31, v32);
  *(v30 + *(v27 + 28)) = sub_22C909F0C();
  v83();
  v33 = sub_22C387C84();
  sub_22C36D0A8(v33, v34, v35);
  if (v41)
  {
    v36 = &qword_27D9BC030;
    v37 = v1;
LABEL_7:
    sub_22C36DD80(v37, v36);
    goto LABEL_8;
  }

  (*(v21 + 32))(v25, v1, v19);
  sub_22C729D78(v25, v0);
  sub_22C381514();
  sub_22C36D0A8(v38, v39, v40);
  if (v41)
  {
    (*(v21 + 8))(v25, v19);
    v36 = &qword_27D9BF610;
    v37 = v0;
    goto LABEL_7;
  }

  v48 = sub_22C37493C();
  v49(v48);
  sub_22C90207C();
  v50 = sub_22C372280();
  if (v51(v50) == *MEMORY[0x277D72A58])
  {
    v52 = sub_22C372280();
    v53(v52);
    v54 = swift_projectBox();
    (*(v75 + 16))(v74, v54, v76);
    v55 = sub_22C37A004();
    if (v56(v55) == *MEMORY[0x277D729B8])
    {
      v57 = sub_22C37A004();
      v58(v57);

      v59 = sub_22C372164();
      v60(v59);
      (*(v78 + 8))(v77, v13);
      v61 = sub_22C70C90C();
      v62(v61);
      sub_22C376840();
      sub_22C70C2F0(v30, v63);
      type metadata accessor for StepResolution(0);
      sub_22C376858();
      swift_storeEnumTagMultiPayload();
      goto LABEL_11;
    }

    (*(v78 + 8))(v77, v13);
    v70 = sub_22C70C90C();
    v71(v70);
    v72 = sub_22C37A004();
    v73(v72);
  }

  else
  {
    v64 = sub_22C6AFC04();
    v65(v64);
    v66 = sub_22C70C90C();
    v67(v66);
    v68 = sub_22C372280();
    v69(v68);
  }

LABEL_8:
  sub_22C903F8C();
  v42 = sub_22C9063CC();
  sub_22C90AADC();
  sub_22C375AAC();
  if (os_log_type_enabled(v42, v43))
  {
    sub_22C3720F4();
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22C366000, v42, v80, v79, v44, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v81 + 8))(v80, v82);
  type metadata accessor for InterpreterError(0);
  sub_22C36A1EC();
  sub_22C70C380(v45, v46);
  sub_22C375F84();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22C376840();
  sub_22C70C2F0(v30, v47);
LABEL_11:
  sub_22C36FB20();
}

uint64_t sub_22C6EC9B0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_22C9026BC();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C907DEC();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9089DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C906ECC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D1E798])
  {
    (*(v8 + 96))(v10, v7);
    (*(v12 + 32))(v14, v10, v11);
    sub_22C906EBC();
    sub_22C907DAC();
    (*(v4 + 8))(v6, v25);
    v16 = v26;
    v15 = v27;
    v17 = (*(v26 + 88))(v3, v27);
    if (v17 != *MEMORY[0x277D1CBA8] && v17 != *MEMORY[0x277D1CBD0])
    {
      (*(v12 + 8))(v14, v11);
      v23 = sub_22C901FAC();
      sub_22C36C640(v28, 1, 1, v23);
      return (*(v16 + 8))(v3, v15);
    }

    (*(v16 + 8))(v3, v15);
    v19 = v28;
    sub_22C906DFC();
    (*(v12 + 8))(v14, v11);
    v20 = sub_22C901FAC();
    v21 = v19;
    v22 = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v20 = sub_22C901FAC();
    v21 = v28;
    v22 = 1;
  }

  return sub_22C36C640(v21, v22, 1, v20);
}

uint64_t sub_22C6ECD98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v127 = a1;
  v108 = a3;
  v110 = sub_22C9026BC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v126 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22C907DEC();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v96 - v6;
  v7 = type metadata accessor for UserPromptResolver(0);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90880C();
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x28223BE20](v9);
  v128 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v96 - v12;
  v116 = sub_22C906ECC();
  v123 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9063DC();
  v113 = *(v14 - 8);
  v114 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v103 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v96 - v17;
  v99 = sub_22C9071EC();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906B3C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9072EC();
  v111 = *(v23 - 8);
  v112 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C90654C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UserPromptResolver.Resolution(0);
  MEMORY[0x28223BE20](v117);
  v31 = (&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_22C901FAC();
  v122 = *(v129 - 8);
  v32 = MEMORY[0x28223BE20](v129);
  v101 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v102 = &v96 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - v36;
  (*(v27 + 16))(v29, v127, v26);
  v38 = (*(v27 + 88))(v29, v26);
  if (v38 == *MEMORY[0x277D1DA88])
  {
    (*(v27 + 96))(v29, v26);
    v39 = (*(v20 + 32))(v22, v29, v19);
    MEMORY[0x2318B3FE0](v39);
    v40 = sub_22C906B2C();
    (*(v20 + 8))(v22, v19);
    *v31 = v40;
LABEL_5:
    v44 = v128;
    goto LABEL_6;
  }

  if (v38 == *MEMORY[0x277D1DAD8])
  {
    (*(v27 + 96))(v29, v26);
    v42 = v111;
    v41 = v112;
    v43 = (*(v111 + 32))(v25, v29, v112);
    MEMORY[0x2318B47A0](v43);
    (*(v42 + 8))(v25, v41);
    goto LABEL_5;
  }

  v44 = v128;
  if (v38 == *MEMORY[0x277D1DAC8])
  {
    (*(v27 + 96))(v29, v26);
    v73 = v98;
    v74 = v97;
    v75 = v99;
    v76 = (*(v98 + 32))(v97, v29, v99);
    MEMORY[0x2318B46A0](v76);
    (*(v73 + 8))(v74, v75);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v45 = v124;
    sub_22C90878C();
    v46 = v118;
    v47 = v121;
    sub_22C6F1590(v37, v118);
    v48 = v129;
    v49 = v44;
    v51 = v125;
    v50 = v126;
    v52 = v123;
    if (v47)
    {
      (*(v119 + 8))(v49, v120);
      sub_22C70C2F0(v31, type metadata accessor for UserPromptResolver.Resolution);
      return (*(v122 + 8))(v37, v48);
    }

    else
    {
      v128 = v31;
      (*(v119 + 8))(v49, v120);
      v54 = v116;
      if (sub_22C370B74(v46, 1, v116) == 1)
      {
        sub_22C36DD80(v46, &qword_27D9BC0A0);
        v55 = v103;
        sub_22C903F8C();
        v56 = v122;
        v57 = *(v122 + 16);
        v58 = v101;
        v127 = v37;
        v59 = v129;
        v57(v101, v37, v129);
        v60 = sub_22C9063CC();
        v61 = sub_22C90AADC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v130 = v63;
          *v62 = 136315138;
          sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
          v64 = sub_22C90B47C();
          v65 = v58;
          v66 = v55;
          v68 = v67;
          v69 = *(v56 + 8);
          v69(v65, v129);
          v70 = sub_22C36F9F4(v64, v68, &v130);

          *(v62 + 4) = v70;
          _os_log_impl(&dword_22C366000, v60, v61, "Missing statement result for statement ID=%s", v62, 0xCu);
          sub_22C36FF94(v63);
          v71 = v128;
          MEMORY[0x2318B9880](v63, -1, -1);
          v72 = v62;
          v59 = v129;
          MEMORY[0x2318B9880](v72, -1, -1);

          (*(v113 + 8))(v66, v114);
        }

        else
        {

          v69 = *(v56 + 8);
          v69(v58, v59);
          (*(v113 + 8))(v55, v114);
          v71 = v128;
        }

        type metadata accessor for InterpreterError(0);
        sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C70C2F0(v71, type metadata accessor for UserPromptResolver.Resolution);
        return (v69)(v127, v59);
      }

      else
      {
        (*(v52 + 32))(v115, v46, v54);
        v77 = sub_22C9087BC();
        (*(*(v77 - 8) + 16))(v51, v45, v77);
        v78 = v102;
        sub_22C906DFC();
        v79 = v107;
        sub_22C906E9C();
        v80 = v52;
        v81 = v104;
        sub_22C906EBC();
        sub_22C907DAC();
        v82 = v81;
        v83 = v78;
        (*(v105 + 8))(v82, v106);
        v84 = v78;
        v85 = v128;
        sub_22C7323BC(v84, v79, v128, v50, v86, v87, v88, v89, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
        (*(v109 + 8))(v50, v110);
        sub_22C36DD80(v79, &qword_27D9BF330);
        v90 = *(v122 + 8);
        v91 = v129;
        v90(v83, v129);
        sub_22C70C2F0(v51, type metadata accessor for UserPromptResolver);
        (*(v80 + 8))(v115, v116);
        sub_22C70C2F0(v85, type metadata accessor for UserPromptResolver.Resolution);
        return (v90)(v37, v91);
      }
    }
  }

  v92 = v100;
  sub_22C903F8C();
  v93 = sub_22C9063CC();
  v94 = sub_22C90AADC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_22C366000, v93, v94, "Expected expression to be of type confirm, pick or reject", v95, 2u);
    MEMORY[0x2318B9880](v95, -1, -1);
  }

  (*(v113 + 8))(v92, v114);
  type metadata accessor for InterpreterError(0);
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v27 + 8))(v29, v26);
}

char *sub_22C6EDC78(char *a1)
{
  v93 = a1;
  v1 = sub_22C9063DC();
  v83 = *(v1 - 8);
  v84 = v1;
  MEMORY[0x28223BE20](v1);
  v85 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22C90952C();
  v86 = *(v89 - 8);
  v3 = MEMORY[0x28223BE20](v89);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v87 = &v78 - v6;
  MEMORY[0x28223BE20](v5);
  v91 = &v78 - v7;
  v88 = sub_22C9093BC();
  v90 = *(v88 - 8);
  v8 = MEMORY[0x28223BE20](v88);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v78 - v11);
  v13 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v78 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v22 = type metadata accessor for TranscriptValueFetcher(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  sub_22C901FAC();
  sub_22C908C5C();
  sub_22C70C380(&qword_2814357B0, MEMORY[0x277D1C338]);
  *&v25[*(v23 + 28)] = sub_22C909F0C();
  v26 = v92;
  sub_22C6EE600(v25, v21);
  if (v26)
  {
    sub_22C70C2F0(v25, type metadata accessor for TranscriptValueFetcher);
  }

  else
  {
    v92 = v19;
    v79 = v16;
    v80 = v10;
    v27 = v87;
    v28 = v88;
    v81 = v12;
    if (sub_22C370B74(v21, 1, v88) == 1)
    {
      sub_22C36DD80(v21, &qword_27D9BB908);
      v29 = MEMORY[0x277D84F98];
      v30 = sub_22C36E2BC(0x7972657571, 0xE500000000000000);
      v31 = v90;
      v32 = v27;
      if (v33)
      {
        v34 = v30;
        swift_isUniquelyReferenced_nonNull_native();
        v94 = v29;
        sub_22C3A5908(&qword_27D9BF428, &qword_22C9226E8);
        sub_22C90B15C();
        v29 = v94;

        v35 = *(v31 + 32);
        v36 = v29[7] + *(v31 + 72) * v34;
        v37 = v92;
        v35(v92, v36, v28);
        sub_22C90B17C();
        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v92;
      }

      v92 = v29;
      sub_22C36C640(v37, v38, 1, v28);
      sub_22C36DD80(v37, &qword_27D9BB908);
    }

    else
    {
      v39 = v81;
      (*(v90 + 32))(v81, v21, v28);
      v40 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v40;
      sub_22C62EC0C(v39, 0x7972657571, 0xE500000000000000, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v78, v79, v80, v81, v82, v83);
      v92 = v94;
      v32 = v27;
    }

    v46 = sub_22C90813C();
    MEMORY[0x28223BE20](v46);
    *(&v78 - 2) = v25;
    v47 = sub_22C8F4AE4(sub_22C70C364, (&v78 - 4), v46);
    v48 = v91;
    v50 = v47;
    v51 = v28;
    v93 = v25;

    v52 = v79;
    v87 = v50;
    sub_22C58B008(v50, v79);
    if (sub_22C370B74(v52, 1, v28) == 1)
    {
      sub_22C36DD80(v52, &qword_27D9BB908);
      v53 = sub_22C9094EC();
      v54 = swift_allocBox();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D72CC8], v53);
      *v48 = v54;
      v56 = v86;
      (*(v86 + 104))(v48, *MEMORY[0x277D72D50], v89);
      v57 = v90;
    }

    else
    {
      sub_22C90935C();
      v58 = v32;
      v57 = v90;
      (*(v90 + 8))(v52, v28);
      v56 = v86;
      (*(v86 + 32))(v48, v58, v89);
    }

    sub_22C90906C();
    v59 = swift_allocBox();
    (*(v56 + 16))(v82, v91, v89);
    v60 = v87;

    sub_22C90903C();
    v61 = v81;
    *v81 = v59;
    (*(v57 + 104))(v61, *MEMORY[0x277D729E0], v51);
    v62 = v80;
    (*(v57 + 32))(v80, v61, v51);
    v63 = v92;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v63;
    sub_22C62EC0C(v62, 0xD000000000000015, 0x800000022C933AC0, v64, v65, v66, v67, v68, v78, v79, v80, v81, v82, v83);
    v21 = v94;
    v69 = v85;
    sub_22C903F8C();

    v70 = sub_22C9063CC();
    v71 = sub_22C90AACC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v94 = v92;
      *v72 = 136315138;
      v73 = MEMORY[0x2318B7AD0](v60, v51);
      v75 = v74;

      v76 = sub_22C36F9F4(v73, v75, &v94);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_22C366000, v70, v71, "Created extraction_candidates with: %s", v72, 0xCu);
      v77 = v92;
      sub_22C36FF94(v92);
      MEMORY[0x2318B9880](v77, -1, -1);
      MEMORY[0x2318B9880](v72, -1, -1);

      (*(v83 + 8))(v85, v84);
      (*(v86 + 8))(v91, v89);
    }

    else
    {

      (*(v83 + 8))(v69, v84);
      (*(v56 + 8))(v91, v89);
    }

    sub_22C70C2F0(v93, type metadata accessor for TranscriptValueFetcher);
  }

  return v21;
}

uint64_t sub_22C6EE600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v42 = a1;
  v2 = sub_22C9063DC();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90931C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9093BC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C901FAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_22C9025EC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B5620](v18);
  sub_22C729D78(v12, v15);
  (*(v10 + 8))(v12, v9);
  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    sub_22C36DD80(v15, &qword_27D9BF610);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_22C90207C();
    v21 = v37;
    v22 = v38;
    if ((*(v37 + 88))(v8, v38) == *MEMORY[0x277D72A58])
    {
      (*(v21 + 96))(v8, v22);
      v23 = swift_projectBox();
      v25 = v34;
      v24 = v35;
      v26 = v36;
      (*(v35 + 16))(v34, v23, v36);
      if ((*(v24 + 88))(v25, v26) == *MEMORY[0x277D729B8])
      {
        (*(v24 + 8))(v25, v26);

        v27 = v33;
        sub_22C90207C();
        (*(v17 + 8))(v20, v16);
        return sub_22C36C640(v27, 0, 1, v22);
      }

      (*(v17 + 8))(v20, v16);
      (*(v24 + 8))(v25, v26);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      (*(v21 + 8))(v8, v22);
    }
  }

  v29 = v39;
  sub_22C903F8C();
  v30 = sub_22C9063CC();
  v31 = sub_22C90AADC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22C366000, v30, v31, "Expected attributedQueryValue from transcriptValueFetcher", v32, 2u);
    MEMORY[0x2318B9880](v32, -1, -1);
  }

  (*(v40 + 8))(v29, v41);
  type metadata accessor for InterpreterError(0);
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22C6EEC08@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v81 = a3;
  v80 = a2;
  v85 = a1;
  v3 = sub_22C90906C();
  v72 = *(v3 - 1);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9093BC();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = sub_22C9025EC();
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v79 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C901FAC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v23 = sub_22C90812C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v26, v85, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 != *MEMORY[0x277D1E350])
  {
    if (v27 != *MEMORY[0x277D1E348])
    {
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    (*(v24 + 96))(v26, v23);
    v33 = *v26;
    v34 = v26[1];
    sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
    v35 = v83;
    v36 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22C90F800;
    v38 = sub_22C90931C();
    v39 = swift_allocBox();
    *v40 = v33;
    v40[1] = v34;
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D729B8], v38);
    *(v37 + v36) = v39;
    result = (*(v35 + 104))(v37 + v36, *MEMORY[0x277D72A58], v84);
    goto LABEL_9;
  }

  (*(v24 + 96))(v26, v23);
  (*(v18 + 32))(v22, v26, v17);
  sub_22C729D78(v22, v14);
  v28 = v17;
  if (sub_22C370B74(v14, 1, v15) == 1)
  {
    sub_22C36DD80(v14, &qword_27D9BF610);
    sub_22C903F8C();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22C366000, v29, v30, "Expected attributedValue from transcriptValueFetcher", v31, 2u);
      MEMORY[0x2318B9880](v31, -1, -1);
    }

    (*(v77 + 8))(v11, v78);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v18 + 8))(v22, v28);
  }

  v41 = v15;
  v85 = v17;
  v42 = v18;
  v43 = v75;
  v44 = v79;
  (*(v75 + 32))(v79, v14, v41);
  v45 = v76;
  sub_22C90207C();
  v47 = v83;
  v46 = v84;
  v48 = (*(v83 + 88))(v45, v84);
  if (v48 == *MEMORY[0x277D72A38])
  {
    (*(v47 + 8))(v45, v46);
    sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
    v49 = v44;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22C90F800;
    sub_22C90207C();
    (*(v43 + 8))(v49, v41);
    result = (*(v42 + 8))(v22, v85);
LABEL_9:
    *v81 = v37;
    return result;
  }

  if (v48 == *MEMORY[0x277D729E0])
  {
    (*(v47 + 96))(v45, v46);
    v50 = swift_projectBox();
    v51 = v71;
    v52 = v72;
    v53 = v73;
    (*(v72 + 2))(v71, v50, v73);
    v37 = sub_22C90905C();
    (*(v52 + 1))(v51, v53);
    (*(v43 + 8))(v79, v41);
    (*(v42 + 8))(v22, v85);

    goto LABEL_9;
  }

  v81 = v41;
  sub_22C903F8C();
  v54 = v42;
  v55 = *(v42 + 16);
  v56 = v70;
  v82 = v22;
  v57 = v85;
  v55(v70, v22, v85);
  v58 = sub_22C9063CC();
  v59 = sub_22C90AADC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v72 = v60;
    v73 = swift_slowAlloc();
    v86 = v73;
    *v60 = 136315138;
    sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v61 = v58;
    v62 = sub_22C90B47C();
    v63 = v57;
    v65 = v64;
    v80 = *(v54 + 8);
    LODWORD(v71) = v59;
    v80(v56, v63);
    v66 = sub_22C36F9F4(v62, v65, &v86);
    v57 = v63;
    v45 = v76;

    v67 = v72;
    *(v72 + 1) = v66;
    v68 = v61;
    _os_log_impl(&dword_22C366000, v61, v71, "Expected .entity from transcript for statementId=%s", v67, 0xCu);
    v69 = v73;
    sub_22C36FF94(v73);
    MEMORY[0x2318B9880](v69, -1, -1);
    v46 = v84;
    MEMORY[0x2318B9880](v67, -1, -1);
  }

  else
  {

    v80 = *(v54 + 8);
    v80(v56, v57);
  }

  (*(v77 + 8))(v74, v78);
  type metadata accessor for InterpreterError(0);
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v43 + 8))(v79, v81);
  v80(v82, v57);
  return (*(v47 + 8))(v45, v46);
}

uint64_t sub_22C6EF70C(void *a1, uint64_t a2, int a3)
{
  HIDWORD(v44) = a3;
  v42 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  MEMORY[0x28223BE20](v42);
  v43 = (&v38 - v5);
  v7 = a2 + 56;
  v6 = *(a2 + 56);
  v49 = MEMORY[0x277D84FA0];
  v8 = 1 << *(a2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v46 = a1;
  v12 = (a1 + 8);
  v40 = a2;

  v13 = 0;
  v38 = v11;
  v39 = a2 + 56;
  v41 = a1 + 8;
  if (v10)
  {
LABEL_5:
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(v40 + 48) + ((v14 << 9) | (8 * v15)));
    v48 = MEMORY[0x277D84F98];
    a1 = v46;
    v17 = 1 << *(v46 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v46[8];
    v20 = (v17 + 63) >> 6;
    v45 = v16;

    for (i = 0; v19; v12 = v41)
    {
      v22 = i;
LABEL_17:
      v23 = __clz(__rbit64(v19)) | (v22 << 6);
      v24 = v46[7];
      v25 = (v46[6] + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = sub_22C901FAC();
      v29 = *(v28 - 8);
      v30 = v24 + *(v29 + 72) * v23;
      a1 = v43;
      (*(v29 + 16))(v43 + *(v42 + 48), v30, v28);
      *a1 = v27;
      a1[1] = v26;

      sub_22C707F6C(&v48, a1, v45, BYTE4(v44) & 1);
      v19 &= v19 - 1;
      sub_22C36DD80(a1, &qword_27D9BAA30);
      i = v22;
    }

    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        sub_22C6A5BAC(&v48, v48, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);

        v13 = v14;
        v11 = v38;
        v7 = v39;
        if (!v10)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v19 = *(v12 + 8 * v22);
      ++i;
      if (v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v49;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);

  sub_22C36DD80(a1, &qword_27D9BAA30);

  __break(1u);
  return result;
}

uint64_t sub_22C6EFA14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v6[7] = swift_task_alloc();
  v8 = sub_22C9093BC();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = sub_22C90654C();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = sub_22C9025EC();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for ExpressionEvaluator(0);
  v11 = swift_task_alloc();
  v12 = *a2;
  v6[23] = v11;
  v6[24] = v12;

  return MEMORY[0x2822009F8](sub_22C6EFC64, 0, 0);
}

uint64_t sub_22C6EFC64()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v23 = v0[16];
  v6 = v0[4];
  sub_22C90878C();
  v7 = v3[6];
  sub_22C908AEC();
  sub_22C369A9C();
  (*(v8 + 16))(v2 + v7, v6);
  v9 = type metadata accessor for Interpreter2(0);
  sub_22C378AB0(v6 + *(v9 + 28), v2 + v3[7]);

  MEMORY[0x2318B6CE0](v10);
  sub_22C90941C();
  sub_22C36BECC();
  sub_22C36C640(v11, v12, v13, v14);
  *(v2 + v3[5]) = v1;
  sub_22C90731C();
  sub_22C369A9C();
  v15 = sub_22C36D39C();
  v16(v15);
  (*(v5 + 104))(v4, *MEMORY[0x277D1DAE0], v23);
  swift_task_alloc();
  sub_22C36CC90();
  v0[25] = v17;
  *v17 = v18;
  v17[1] = sub_22C6EFDFC;
  sub_22C372034();

  return sub_22C63AB08(v19, v20);
}

uint64_t sub_22C6EFDFC()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = sub_22C371810();
  v8(v7);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22C6EFF48()
{
  v1 = v0[24];
  v80 = v0[12];
  v2 = v0[9];
  v3 = sub_22C901FAC();
  sub_22C371B9C();
  sub_22C70C380(v4, v5);
  v81 = sub_22C909F0C();
  v82 = v3;
  v6 = v1 + 64;
  sub_22C37454C();
  v9 = v8 & v7;
  sub_22C634720();
  v11 = v10 >> 6;
  v75 = v1;
  v73 = v2;
  v69 = v2 + 40;
  v70 = v2 + 32;

  v12 = 0;
  v71 = v11;
  v72 = v6;
  v74 = v0;
  if (v9)
  {
    while (1)
    {
LABEL_6:
      v14 = v0[15];
      v15 = v0[13];
      v16 = __clz(__rbit64(v9)) | (v12 << 6);
      v17 = *(v82 - 8);
      v78 = v17;
      v76 = *(v17 + 72);
      v77 = *(v17 + 16);
      v77(v14, *(v75 + 48) + v76 * v16);
      v18 = *(v75 + 56);
      v19 = sub_22C908C5C();
      sub_22C369824();
      v21 = v20;
      (*(v20 + 16))(v14 + *(v80 + 48), v18 + *(v22 + 72) * v16, v19);
      v23 = sub_22C379FC8();
      sub_22C6AEA50(v23, v24, &qword_27D9BF100, &qword_22C922FE0);
      v25 = sub_22C36EC8C();
      sub_22C6AEA50(v25, v26, &qword_27D9BF100, &qword_22C922FE0);
      v27 = *(v80 + 48);
      sub_22C90774C();
      v79 = *(v21 + 8);
      v79(v15 + v27, v19);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C628274();
      sub_22C369DA4();
      if (__OFADD__(v30, v31))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v32 = v28;
      v33 = v29;
      sub_22C3A5908(&qword_27D9BF768, &qword_22C923000);
      v34 = sub_22C90B15C();
      if (v34)
      {
        v0 = v74;
        sub_22C628274();
        if ((v33 & 1) != (v40 & 1))
        {

          sub_22C90B54C();
          return;
        }

        v32 = v34;
      }

      else
      {
        v0 = v74;
      }

      v41 = v0[15];
      if (v33)
      {
        v42 = sub_22C6B0390(v34, v0[10], v0[8], v35, v36, v37, v38, v39, v68, v69, v70, v71, v72, v73);
        (*(v43 + 40))(v42);
        sub_22C36DD80(v41, &qword_27D9BF100);
      }

      else
      {
        v44 = v0[10];
        v45 = v0[8];
        sub_22C36ED48(v81 + 8 * (v32 >> 6));
        v46 = (v77)(*(v81 + 48) + v32 * v76);
        v54 = sub_22C6B0390(v46, v47, v48, v49, v50, v51, v52, v53, v68, v69, v70, v71, v72, v73);
        (*(v55 + 32))(v54, v44, v45);
        sub_22C36DD80(v41, &qword_27D9BF100);
        v56 = *(v81 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_25;
        }

        *(v81 + 16) = v58;
      }

      v9 &= v9 - 1;
      v60 = v0[13];
      v59 = v0[14];
      v61 = *(v80 + 48);
      v62 = *(v78 + 8);
      v62(v59, v82);
      v62(v60, v82);
      v79(v59 + v61, v19);
      v11 = v71;
      v6 = v72;
      if (!v9)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_6;
    }
  }

  v63 = v0[23];

  sub_22C90207C();
  sub_22C9025BC();
  sub_22C36ECB4();
  sub_22C906CFC();
  v64 = sub_22C380120();
  v65(v64);
  sub_22C374EE0();
  sub_22C70C2F0(v63, v66);

  sub_22C369C50();

  v67();
}

uint64_t sub_22C6F04B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 184);
  sub_22C374EE0();
  sub_22C70C2F0(v13, v14);

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_22C6F0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_22C9083DC();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C906CDC();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9071EC();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90734C();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C906B3C();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C906AFC();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v51 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C9072EC();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906F5C();
  v54 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C90654C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v68, v22);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == *MEMORY[0x277D1DA50])
  {
    (*(v23 + 96))(v25, v22);
    v28 = v66;
    v27 = v67;
    v29 = (*(v66 + 32))(v4, v25, v67);
    v30 = v69;
    MEMORY[0x2318B5880](v29);
    (*(v28 + 8))(v4, v27);
    goto LABEL_3;
  }

  v33 = v69;
  if (v26 == *MEMORY[0x277D1DA88])
  {
    (*(v23 + 96))(v25, v22);
    v34 = v65;
    v35 = (*(v65 + 32))(v13, v25, v11);
    MEMORY[0x2318B3FE0](v35);
    (*(v34 + 8))(v13, v11);
LABEL_8:
    v31 = sub_22C901FAC();
    v32 = v33;
    return sub_22C36C640(v32, 0, 1, v31);
  }

  if (v26 == *MEMORY[0x277D1DAD8])
  {
    (*(v23 + 96))(v25, v22);
    v36 = v64;
    v37 = (*(v64 + 32))(v18, v25, v16);
    MEMORY[0x2318B47A0](v37);
    (*(v36 + 8))(v18, v16);
    goto LABEL_8;
  }

  v30 = v69;
  if (v26 == *MEMORY[0x277D1DAE8])
  {
    (*(v23 + 96))(v25, v22);
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v42 = (*(v62 + 32))(v61, v25, v63);
    MEMORY[0x2318B4800](v42);
  }

  else
  {
    if (v26 == *MEMORY[0x277D1DA90])
    {
      (*(v23 + 96))(v25, v22);
      v43 = v58;
      v44 = v59;
      v45 = v60;
      (*(v59 + 32))(v58, v25, v60);
      sub_22C906CBC();
      return (*(v44 + 8))(v43, v45);
    }

    if (v26 == *MEMORY[0x277D1DAC8])
    {
      (*(v23 + 96))(v25, v22);
      v39 = v55;
      v40 = v56;
      v41 = v57;
      v46 = (*(v56 + 32))(v55, v25, v57);
      MEMORY[0x2318B46A0](v46);
    }

    else
    {
      if (v26 == *MEMORY[0x277D1DAB0])
      {
        (*(v23 + 96))(v25, v22);
        v47 = v54;
        v48 = (*(v54 + 32))(v21, v25, v19);
        MEMORY[0x2318B4410](v48);
        (*(v47 + 8))(v21, v19);
        goto LABEL_3;
      }

      if (v26 != *MEMORY[0x277D1DA80])
      {
        v50 = sub_22C901FAC();
        sub_22C36C640(v33, 1, 1, v50);
        return (*(v23 + 8))(v25, v22);
      }

      (*(v23 + 96))(v25, v22);
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v49 = (*(v52 + 32))(v51, v25, v53);
      MEMORY[0x2318B3FB0](v49);
    }
  }

  (*(v40 + 8))(v39, v41);
LABEL_3:
  v31 = sub_22C901FAC();
  v32 = v30;
  return sub_22C36C640(v32, 0, 1, v31);
}

uint64_t sub_22C6F0E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v68 = a3;
  v67 = sub_22C901FAC();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v57 - v8;
  v66 = sub_22C906ECC();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90654C();
  v70 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = sub_22C9070DC();
  v23 = *(v22 - 1);
  v24 = MEMORY[0x28223BE20](v22);
  v58 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  sub_22C646D68();
  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    v28 = v71;
    sub_22C36DD80(v21, &qword_27D9BAA18);
    v29 = v69;
    v30 = v72;
    result = sub_22C6F1590(a1, v69);
    if (v30)
    {
      return result;
    }

    v32 = v66;
    if (sub_22C370B74(v29, 1, v66) != 1)
    {
      (*(v64 + 32))(v63, v29, v32);
      v50 = v60;
      sub_22C906DFC();
      v51 = v59;
      sub_22C646D68();
      v52 = v51;
      v53 = v50;
      v54 = v67;
      (*(v61 + 8))(v53, v67);
      if (sub_22C370B74(v51, 1, v22) == 1)
      {
        sub_22C36DD80(v51, &qword_27D9BAA18);
        v55 = v63;
        sub_22C906DFC();
        (*(v64 + 8))(v55, v66);
      }

      else
      {
        v56 = v58;
        (*(v23 + 32))(v58, v52, v22);
        Interpreter2.findOriginTaskStatementId(statement:transcript:actionParameterContext:)();
        (*(v23 + 8))(v56, v22);
        (*(v64 + 8))(v63, v66);
      }

      v33 = 0;
      return sub_22C36C640(v28, v33, 1, v54);
    }

    sub_22C36DD80(v29, &qword_27D9BC0A0);
    v33 = 1;
  }

  else
  {
    v64 = a2;
    v66 = v23;
    v34 = *(v23 + 32);
    v69 = v22;
    v34(v27, v21, v22);
    sub_22C90702C();
    v35 = v70;
    v63 = *(v70 + 88);
    v36 = (v63)(v16, v10);
    v37 = *MEMORY[0x277D1DA50];
    v38 = *MEMORY[0x277D1DA78];
    v39 = *(v35 + 8);
    v39(v16, v10);
    v40 = v36 == v37 || v36 == v38;
    if (v40 || ((v41 = v65, sub_22C90702C(), v42 = (v63)(v41, v10), v43 = *MEMORY[0x277D1DAD0], v44 = *MEMORY[0x277D1DA48], v39(v41, v10), v42 != v43) ? (v45 = v42 == v44) : (v45 = 1), v45 || (v46 = v62, sub_22C90702C(), v47 = (v63)(v46, v10), v48 = *MEMORY[0x277D1DAE8], v39(v46, v10), v47 == v48)))
    {
      v28 = v71;
      v49 = v72;
      Interpreter2.findOriginTaskStatementId(statement:transcript:actionParameterContext:)();
      if (v49)
      {
        return (*(v66 + 8))(v27, v69);
      }

      (*(v66 + 8))(v27, v69);
      v33 = 0;
    }

    else
    {
      (*(v66 + 8))(v27, v69);
      v33 = 1;
      v28 = v71;
    }
  }

  v54 = v67;
  return sub_22C36C640(v28, v33, 1, v54);
}

uint64_t sub_22C6F1590@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v4 = sub_22C901FAC();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C9089DC();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C906ECC();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v39 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C908A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9087DC();
  v14 = *(v13 + 16);
  if (v14)
  {
    v30[0] = a2;
    v30[1] = v2;
    v47 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v45 = v11 + 8;
    v46 = v11 + 16;
    v44 = (v6 + 88);
    v43 = *MEMORY[0x277D1E798];
    v37 = (v6 + 96);
    v38 = (v6 + 8);
    v42 = (v8 + 32);
    v33 = (v8 + 8);
    v34 = v10;
    a2 = v31;
    v15 = v32;
    v17 = v40;
    v16 = v41;
    v35 = v11;
    ++v36;
    v48 = v13;
    while (v14 <= *(v13 + 16))
    {
      --v14;
      v18 = v49;
      (*(v11 + 16))(v49, v47 + *(v11 + 72) * v14, v10);
      sub_22C9089EC();
      (*(v11 + 8))(v18, v10);
      v19 = (*v44)(v17, v16);
      if (v19 == v43)
      {
        (*v37)(v17, v16);
        v20 = *v42;
        v21 = v39;
        (*v42)(v39, v17, v50);
        sub_22C906E1C();
        v22 = sub_22C901F6C();
        v23 = v15;
        v24 = *v36;
        (*v36)(a2, v4);
        if (v22 & 1) != 0 || (sub_22C906DFC(), v25 = sub_22C901F6C(), v24(a2, v4), (v25))
        {

          a2 = v30[0];
          v28 = v21;
          v27 = v50;
          v20(v30[0], v28, v50);
          v26 = 0;
          return sub_22C36C640(a2, v26, 1, v27);
        }

        (*v33)(v21, v50);
        v15 = v23;
        v17 = v40;
        v16 = v41;
        v10 = v34;
        v11 = v35;
      }

      else
      {
        (*v38)(v17, v16);
      }

      v13 = v48;
      if (!v14)
      {

        v26 = 1;
        a2 = v30[0];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v26 = 1;
LABEL_11:
  v27 = v50;
  return sub_22C36C640(a2, v26, 1, v27);
}

uint64_t sub_22C6F1A3C(uint64_t a1, uint64_t a2)
{
  v243 = a1;
  v208 = sub_22C906CAC();
  v3 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v199 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_22C906A3C();
  v5 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v186 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_22C3A5908(&qword_27D9BD7D8, &qword_22C9192E8);
  MEMORY[0x28223BE20](v231);
  v230 = &v168 - v7;
  v8 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v221 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v168 - v12;
  MEMORY[0x28223BE20](v11);
  v239 = &v168 - v14;
  v240 = sub_22C9073AC();
  v238 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v232 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22C90775C();
  v234 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C90693C();
  v233 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v229 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22C90711C();
  v227 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v220 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_22C9063DC();
  v201 = *(v200 - 8);
  v20 = MEMORY[0x28223BE20](v200);
  v171 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v174 = &v168 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v194 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v168 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v185 = &v168 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v181 = &v168 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v168 - v35;
  MEMORY[0x28223BE20](v34);
  v172 = &v168 - v36;
  v180 = sub_22C9026BC();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22C907DEC();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C901FAC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v241 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22C906ECC();
  v42 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_22C9089DC();
  v44 = *(v245 - 8);
  v45 = MEMORY[0x28223BE20](v245);
  v198 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v184 = &v168 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v228 = &v168 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v190 = &v168 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v219 = &v168 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v213 = &v168 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v205 = &v168 - v58;
  MEMORY[0x28223BE20](v57);
  v244 = &v168 - v59;
  v60 = *(a2 + 16);
  if (!v60)
  {
LABEL_56:
    v156 = v171;
    sub_22C903F8C();
    v157 = sub_22C9063CC();
    v158 = sub_22C90AACC();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_22C366000, v157, v158, "isComplete false", v159, 2u);
      MEMORY[0x2318B9880](v159, -1, -1);
    }

    (*(v201 + 8))(v156, v200);
    return 0;
  }

  v61 = *(sub_22C908A0C() - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = v5;
  v64 = (v44 + 88);
  v237 = *MEMORY[0x277D1E728];
  v226 = *MEMORY[0x277D1E708];
  v236 = (v44 + 16);
  v235 = (v44 + 96);
  v182 = (v63 + 32);
  v242 = (v40 + 8);
  v183 = (v63 + 8);
  v188 = (v234 + 32);
  v189 = (v234 + 8);
  v196 = (v3 + 32);
  v197 = (v3 + 8);
  v203 = (v42 + 32);
  v204 = (v42 + 8);
  v211 = (v227 + 4);
  v212 = v227 + 1;
  v217 = (v233 + 32);
  v218 = (v233 + 8);
  v225 = (v238 + 4);
  v65 = *(v61 + 72);
  v216 = *MEMORY[0x277D1E748];
  v210 = *MEMORY[0x277D1E798];
  v202 = *MEMORY[0x277D1E738];
  v195 = *MEMORY[0x277D1E7D8];
  v224 = (v40 + 16);
  v209 = (v40 + 32);
  v227 = v238 + 1;
  v238 = (v44 + 8);
  v66 = a2 + v62 + v65 * (v60 - 1);
  v234 = -v65;
  v187 = *MEMORY[0x277D1E720];
  v67 = &unk_22C911CC0;
  v223 = v17;
  v233 = v39;
  v222 = (v44 + 88);
  while (1)
  {
    v68 = v67;
    v69 = v244;
    sub_22C9089EC();
    v70 = (*v64)(v69, v245);
    if (v70 == v237)
    {
      v71 = v228;
      v72 = v245;
      (*v236)(v228, v244, v245);
      (*v235)(v71, v72);
      v73 = v232;
      (*v225)(v232, v71, v240);
      v74 = v239;
      sub_22C90738C();
      (*v224)(v13, v243, v39);
      sub_22C36C640(v13, 0, 1, v39);
      v75 = *(v231 + 48);
      v76 = v39;
      v77 = v230;
      sub_22C6AEA50(v74, v230, &qword_27D9BC030, v68);
      sub_22C6AEA50(v13, v77 + v75, &qword_27D9BC030, v68);
      if (sub_22C370B74(v77, 1, v76) != 1)
      {
        v84 = v221;
        sub_22C6AEA50(v77, v221, &qword_27D9BC030, v68);
        if (sub_22C370B74(v77 + v75, 1, v76) != 1)
        {
          v95 = v241;
          (*v209)(v241, v77 + v75, v76);
          sub_22C70C380(&qword_27D9BAA28, MEMORY[0x277D1C338]);
          v215 = sub_22C90A0BC();
          v96 = *v242;
          (*v242)(v95, v76);
          sub_22C36DD80(v13, &qword_27D9BC030);
          sub_22C36DD80(v239, &qword_27D9BC030);
          v96(v221, v76);
          v73 = v232;
          sub_22C36DD80(v77, &qword_27D9BC030);
          v39 = v76;
          v64 = v222;
          v67 = v68;
          if (v215)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        sub_22C36DD80(v13, &qword_27D9BC030);
        sub_22C36DD80(v239, &qword_27D9BC030);
        (*v242)(v84, v76);
        v79 = v77;
        v64 = v222;
        v67 = v68;
LABEL_14:
        sub_22C36DD80(v79, &qword_27D9BD7D8);
        v39 = v233;
LABEL_20:
        v97 = v241;
        sub_22C90736C();
        v98 = sub_22C901F6C();
        (*v242)(v97, v39);
        if (v98)
        {
          goto LABEL_36;
        }

        (*v227)(v73, v240);
        v17 = v223;
        goto LABEL_22;
      }

      sub_22C36DD80(v13, &qword_27D9BC030);
      sub_22C36DD80(v239, &qword_27D9BC030);
      v78 = sub_22C370B74(v77 + v75, 1, v76) == 1;
      v79 = v77;
      v67 = v68;
      if (!v78)
      {
        goto LABEL_14;
      }

      sub_22C36DD80(v77, &qword_27D9BC030);
LABEL_36:
      v124 = v194;
      sub_22C903F8C();
      v125 = sub_22C9063CC();
      v126 = sub_22C90AACC();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_22C366000, v125, v126, "isComplete true: actionCanceled", v127, 2u);
        MEMORY[0x2318B9880](v127, -1, -1);
      }

      (*(v201 + 8))(v124, v200);
      (*v227)(v73, v240);
LABEL_45:
      (*v238)(v244, v245);
      return 1;
    }

    if (v70 == v226)
    {
      v80 = v219;
      v81 = v245;
      (*v236)(v219, v244, v245);
      (*v235)(v80, v81);
      (*v217)(v229, v80, v17);
      v82 = v17;
      v83 = v241;
      sub_22C9068FC();
      LOBYTE(v81) = sub_22C901F6C();
      (*v242)(v83, v39);
      if ((v81 & 1) == 0)
      {
        v67 = v68;
        (*v218)(v229, v82);
LABEL_11:
        v17 = v82;
        goto LABEL_22;
      }

      v128 = v185;
      sub_22C903F8C();
      v129 = sub_22C9063CC();
      v130 = sub_22C90AACC();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_22C366000, v129, v130, "isComplete true: variablesSet", v131, 2u);
        MEMORY[0x2318B9880](v131, -1, -1);
      }

      (*(v201 + 8))(v128, v200);
      (*v218)(v229, v82);
      goto LABEL_45;
    }

    v85 = v220;
    v67 = v68;
    if (v70 == v216)
    {
      v86 = v17;
      v87 = v213;
      v88 = v245;
      (*v236)(v213, v244, v245);
      (*v235)(v87, v88);
      v89 = v87;
      v90 = v214;
      (*v211)(v85, v89, v214);
      v91 = v241;
      sub_22C90710C();
      v92 = sub_22C901F6C();
      v93 = v39;
      v94 = v92;
      (*v242)(v91, v93);
      if ((v94 & 1) == 0)
      {
        (*v212)(v85, v90);
        v39 = v233;
LABEL_18:
        v17 = v86;
        v64 = v222;
        goto LABEL_22;
      }

      v132 = v181;
      sub_22C903F8C();
      v133 = sub_22C9063CC();
      v134 = sub_22C90AACC();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_22C366000, v133, v134, "isComplete true: queriesExecuted", v135, 2u);
        MEMORY[0x2318B9880](v135, -1, -1);
      }

      (*(v201 + 8))(v132, v200);
      (*v212)(v220, v90);
      goto LABEL_45;
    }

    if (v70 == v210)
    {
      break;
    }

    v104 = v208;
    if (v70 == v202)
    {
      v105 = v198;
      v106 = v245;
      (*v236)(v198, v244, v245);
      (*v235)(v105, v106);
      v107 = v199;
      (*v196)(v199, v105, v104);
      v108 = v241;
      sub_22C906C5C();
      v109 = sub_22C901F6C();
      v110 = v108;
      v39 = v233;
      (*v242)(v110, v233);
      if (v109)
      {
        v152 = v174;
        sub_22C903F8C();
        v153 = sub_22C9063CC();
        v154 = sub_22C90AACC();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&dword_22C366000, v153, v154, "isComplete true: toolResolution", v155, 2u);
          MEMORY[0x2318B9880](v155, -1, -1);
        }

        (*(v201 + 8))(v152, v200);
        (*v197)(v199, v208);
        goto LABEL_45;
      }

      (*v197)(v107, v104);
    }

    else
    {
      if (v70 != v195)
      {
        v117 = v193;
        v39 = v233;
        if (v70 != v187)
        {
          goto LABEL_22;
        }

        v86 = v17;
        v118 = v184;
        v119 = v245;
        (*v236)(v184, v244, v245);
        (*v235)(v118, v119);
        v120 = v186;
        (*v182)(v186, v118, v117);
        v121 = v241;
        sub_22C9068FC();
        v122 = v117;
        v123 = sub_22C901F6C();
        (*v242)(v121, v39);
        if (v123)
        {
          v164 = v169;
          sub_22C903F8C();
          v165 = sub_22C9063CC();
          v166 = sub_22C90AACC();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            *v167 = 0;
            _os_log_impl(&dword_22C366000, v165, v166, "isComplete true: skipStatement", v167, 2u);
            MEMORY[0x2318B9880](v167, -1, -1);
          }

          (*(v201 + 8))(v164, v200);
          (*v183)(v186, v122);
          goto LABEL_45;
        }

        (*v183)(v120, v122);
        goto LABEL_18;
      }

      v111 = v190;
      v112 = v245;
      (*v236)(v190, v244, v245);
      (*v235)(v111, v112);
      v113 = v191;
      v114 = v111;
      v115 = v192;
      (*v188)(v191, v114, v192);
      v116 = v241;
      sub_22C90773C();
      LOBYTE(v112) = sub_22C901F6C();
      (*v242)(v116, v233);
      if (v112)
      {
        v160 = v170;
        sub_22C903F8C();
        v161 = sub_22C9063CC();
        v162 = sub_22C90AACC();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&dword_22C366000, v161, v162, "isComplete true: typeConversionResult", v163, 2u);
          MEMORY[0x2318B9880](v163, -1, -1);
        }

        (*(v201 + 8))(v160, v200);
        (*v189)(v113, v115);
        goto LABEL_45;
      }

      (*v189)(v113, v115);
      v17 = v223;
      v39 = v233;
    }

LABEL_22:
    --v60;
    (*v238)(v244, v245);
    v66 += v234;
    if (!v60)
    {
      goto LABEL_56;
    }
  }

  v82 = v17;
  v99 = v205;
  v100 = v245;
  (*v236)(v205, v244, v245);
  (*v235)(v99, v100);
  v101 = v206;
  v102 = v207;
  (*v203)(v206, v99, v207);
  v103 = v241;
  sub_22C906DFC();
  LOBYTE(v100) = sub_22C901F6C();
  (*v242)(v103, v233);
  if ((v100 & 1) == 0)
  {
    (*v204)(v101, v102);
    v39 = v233;
    goto LABEL_11;
  }

  v137 = v102;
  v138 = v175;
  sub_22C906EBC();
  v139 = v178;
  sub_22C907DAC();
  (*(v176 + 8))(v138, v177);
  v140 = v179;
  v141 = v180;
  LODWORD(v138) = (*(v179 + 88))(v139, v180);
  v142 = *MEMORY[0x277D1CBF0];
  (*(v140 + 8))(v139, v141);
  v143 = v101;
  if (v138 == v142)
  {
    v144 = v172;
    sub_22C903F8C();
    v145 = sub_22C9063CC();
    v146 = sub_22C90AACC();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_22C366000, v145, v146, "isComplete true: statementEvaluated", v147, 2u);
      MEMORY[0x2318B9880](v147, -1, -1);
    }

    (*(v201 + 8))(v144, v200);
    (*v204)(v143, v137);
    goto LABEL_45;
  }

  v148 = v173;
  sub_22C903F8C();
  v149 = sub_22C9063CC();
  v150 = sub_22C90AACC();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&dword_22C366000, v149, v150, "isComplete false: statementEvaluated", v151, 2u);
    MEMORY[0x2318B9880](v151, -1, -1);
  }

  (*(v201 + 8))(v148, v200);
  (*v204)(v143, v137);
  (*v238)(v244, v245);
  return 0;
}

uint64_t sub_22C6F36D8(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v16 = sub_22C901FAC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9089DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9086FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D1E710])
  {
    (*(v6 + 96))(v8, v5);
    (*(v10 + 32))(v12, v8, v9);
    sub_22C9068FC();
    v13 = sub_22C901F6C();
    (*(v2 + 8))(v4, v16);
    (*(v10 + 8))(v12, v9);
    if (v13)
    {
      return 1;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

void sub_22C6F3978(uint64_t a1, uint64_t a2)
{

  if (!*(sub_22C70BAB8(v3, a2) + 16))
  {

    sub_22C3A5908(&qword_27D9BF6C0, &qword_22C922DE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    sub_22C901FAC();
    sub_22C369A48();
    sub_22C908C5C();
    sub_22C371B9C();
    sub_22C70C380(v5, v6);
    sub_22C38399C();
    *(inited + 32) = sub_22C909F0C();
    sub_22C5EAED8();
  }
}

uint64_t sub_22C6F3A58(uint64_t *a1, uint64_t a2)
{
  v46 = sub_22C9093BC();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C908C5C();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C3A5908(&qword_27D9BF728, &qword_22C922F28);
  MEMORY[0x28223BE20](v43);
  v9 = &v32 - v8;
  v42 = *a1;
  v10 = *(a2 + 64);
  v33 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v41 = v4 + 16;
  v38 = v6;
  v35 = v6 + 8;
  v36 = v6 + 16;
  v44 = v4;
  v45 = a2;
  v34 = (v4 + 8);

  v16 = 0;
  while (v13)
  {
    v17 = v46;
LABEL_10:
    v19 = __clz(__rbit64(v13)) | (v16 << 6);
    v20 = v45;
    v21 = *(v45 + 48);
    v22 = sub_22C901FAC();
    (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v43 + 48);
    (*(v44 + 16))(&v9[v23], *(v20 + 56) + *(v44 + 72) * v19, v17);
    v24 = v42;
    if (!*(v42 + 16) || (sub_22C628274(), (v26 & 1) == 0))
    {
      sub_22C36DD80(v9, &qword_27D9BF728);
LABEL_16:

      return 0;
    }

    v13 &= v13 - 1;
    v27 = *(v24 + 56);
    v28 = v37;
    v29 = v38;
    v30 = v39;
    (*(v38 + 16))(v37, v27 + *(v38 + 72) * v25, v39);
    v31 = v40;
    sub_22C90774C();
    (*(v29 + 8))(v28, v30);
    LOBYTE(v28) = sub_22C3AC31C(&v9[v23]);
    (*v34)(v31, v46);
    result = sub_22C36DD80(v9, &qword_27D9BF728);
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return 1;
    }

    v13 = *(v33 + 8 * v18);
    ++v16;
    if (v13)
    {
      v17 = v46;
      v16 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6F3E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v95 = a3;
  v100 = a2;
  v77 = a4;
  v5 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v73 - v6;
  v7 = sub_22C9093BC();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v99 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v73 - v10;
  v97 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
  v11 = MEMORY[0x28223BE20](v97);
  v96 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v73 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v73 - v15;
  v16 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v22 = sub_22C9025EC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptValueFetcher(0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = *a1;
  v30 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  *&v30[*(v27 + 28)] = v29;

  sub_22C729D78(v100, v21);
  sub_22C6AEA50(v21, v19, &qword_27D9BF610, &qword_22C922B50);
  if (sub_22C370B74(v19, 1, v22) == 1)
  {
    sub_22C36DD80(v19, &qword_27D9BF610);
    sub_22C90735C();
    sub_22C3A5F00();
    v31 = swift_allocError();
    v32 = v104;
    v33 = v103;
    *v34 = v102;
    *(v34 + 16) = v33;
    *(v34 + 32) = v32;
    swift_willThrow();
    sub_22C36DD80(v21, &qword_27D9BF610);
    result = sub_22C70C2F0(v30, type metadata accessor for TranscriptValueFetcher);
    *v95 = v31;
  }

  else
  {
    v74 = v30;
    sub_22C36DD80(v21, &qword_27D9BF610);
    v36 = v23;
    v37 = v25;
    (*(v23 + 32))(v25, v19, v22);
    v38 = sub_22C901FAC();
    sub_22C70C380(&qword_2814357B0, MEMORY[0x277D1C338]);
    v95 = sub_22C909F0C();
    v39 = v29 + 64;
    v40 = 1 << *(v29 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v29 + 64);
    v86 = (v40 + 63) >> 6;
    v100 = v38;
    v85 = v38 - 8;
    v79 = v90 + 32;
    v78 = v90 + 40;

    v43 = 0;
    v84 = v22;
    v83 = v36;
    v82 = v25;
    v80 = v29 + 64;
    v81 = v29;
    while (v42)
    {
LABEL_11:
      v45 = __clz(__rbit64(v42)) | (v43 << 6);
      v46 = *(v29 + 48);
      v94 = *(v100 - 8);
      v87 = v94[9];
      v47 = v94[2];
      v48 = v98;
      v88 = v94 + 2;
      v89 = v47;
      (v47)(v98, v46 + v87 * v45);
      v49 = *(v29 + 56);
      v50 = sub_22C908C5C();
      v51 = *(v50 - 8);
      v52 = v49 + *(v51 + 72) * v45;
      v53 = v97;
      (*(v51 + 16))(v48 + *(v97 + 48), v52, v50);
      sub_22C6AEA50(v48, v101, &qword_27D9BF100, &qword_22C922FE0);
      v54 = v48;
      v55 = v96;
      sub_22C6AEA50(v54, v96, &qword_27D9BF100, &qword_22C922FE0);
      v56 = *(v53 + 48);
      sub_22C90774C();
      v92 = *(v51 + 8);
      v93 = v50;
      v92(v55 + v56, v50);
      v57 = v95;
      swift_isUniquelyReferenced_nonNull_native();
      v105 = v57;
      sub_22C628274();
      if (__OFADD__(v57[2], (v59 & 1) == 0))
      {
        goto LABEL_24;
      }

      v60 = v58;
      v61 = v59;
      sub_22C3A5908(&qword_27D9BF768, &qword_22C923000);
      if (sub_22C90B15C())
      {
        sub_22C628274();
        v64 = v90;
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_26;
        }

        v60 = v62;
      }

      else
      {
        v64 = v90;
      }

      v65 = v105;
      v95 = v105;
      if (v61)
      {
        (*(v64 + 40))(v105[7] + *(v64 + 72) * v60, v99, v91);
        sub_22C36DD80(v98, &qword_27D9BF100);
      }

      else
      {
        v105[(v60 >> 6) + 8] |= 1 << v60;
        v89(v65[6] + v60 * v87, v101, v100);
        (*(v64 + 32))(v65[7] + *(v64 + 72) * v60, v99, v91);
        sub_22C36DD80(v98, &qword_27D9BF100);
        v66 = v65[2];
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_25;
        }

        v65[2] = v68;
      }

      v42 &= v42 - 1;
      v69 = *(v97 + 48);
      v70 = v94[1];
      v71 = v100;
      v72 = v101;
      v70(v101, v100);
      v70(v96, v71);
      v92(v72 + v69, v93);
      v22 = v84;
      v36 = v83;
      v37 = v82;
      v29 = v81;
      v39 = v80;
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v86)
      {

        sub_22C90207C();
        sub_22C9025BC();
        sub_22C906CFC();
        (*(v36 + 8))(v37, v22);
        return sub_22C70C2F0(v74, type metadata accessor for TranscriptValueFetcher);
      }

      v42 = *(v39 + 8 * v44);
      ++v43;
      if (v42)
      {
        v43 = v44;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_22C90B54C();
    __break(1u);
  }

  return result;
}

void *sub_22C6F47E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v90 = a3;
  v114 = a2;
  v105 = a5;
  v6 = sub_22C9063DC();
  v110 = *(v6 - 1);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v109 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C902D4C();
  v97 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v95 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v86 - v10;
  v88 = sub_22C90769C();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90654C();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C906ACC();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v98 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22C9070DC();
  v108 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v104 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C901FAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90880C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - v29;
  v91 = a1;
  v31 = sub_22C90878C();
  MEMORY[0x2318B5880](v31);
  sub_22C646D68();
  v96 = v18;
  v32 = *(v18 + 8);
  v106 = v20;
  v94 = v17;
  v32(v20, v17);
  (*(v22 + 8))(v24, v21);
  v33 = v112;
  sub_22C6AEA50(v30, v28, &qword_27D9BAA18, &qword_22C911C40);
  if (sub_22C370B74(v28, 1, v33) == 1)
  {
    sub_22C36DD80(v28, &qword_27D9BAA18);
LABEL_7:
    v46 = v109;
    sub_22C903F8C();
    v47 = sub_22C9063CC();
    v48 = sub_22C90AADC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22C366000, v47, v48, "Expected a call statement ID in update expression", v49, 2u);
      MEMORY[0x2318B9880](v49, -1, -1);
    }

    (*(v110 + 8))(v46, v111);
    type metadata accessor for InterpreterError(0);
    sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_10:
    v50 = v30;
    return sub_22C36DD80(v50, &qword_27D9BAA18);
  }

  v34 = v108;
  v35 = v104;
  (*(v108 + 32))(v104, v28, v33);
  v36 = v101;
  sub_22C90702C();
  v38 = v102;
  v37 = v103;
  if ((*(v102 + 88))(v36, v103) != *MEMORY[0x277D1DA78])
  {
    (*(v34 + 8))(v35, v33);
    (*(v38 + 8))(v36, v37);
    goto LABEL_7;
  }

  (*(v38 + 96))(v36, v37);
  (*(v99 + 32))(v98, v36, v100);
  v111 = sub_22C906A8C();
  v39 = v106;
  MEMORY[0x2318B5880]();
  v40 = *(v87 + 16);
  v41 = v88;
  (v40)(v86, v90, v88);
  sub_22C909F0C();
  MEMORY[0x2318B4D00]();
  sub_22C9077EC();
  v42 = v89;
  v40();
  sub_22C36C640(v42, 0, 1, v41);
  v43 = v92;
  Interpreter2.worlds(stmt:sessionState:globalToolId:)();
  if (v43)
  {

    sub_22C36DD80(v42, &qword_27D9BF330);
    v45 = sub_22C9078FC();
    (*(*(v45 - 8) + 8))(v105, v45);
    (*(v99 + 8))(v98, v100);
    (*(v108 + 8))(v35, v112);
    goto LABEL_10;
  }

  v52 = v44;
  v90 = 0;
  v91 = v30;
  sub_22C36DD80(v42, &qword_27D9BF330);
  v53 = v111;
  sub_22C6EF70C(v111, v52, 0);

  sub_22C9078AC();
  sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
  v54 = sub_22C90B1CC();
  v55 = v54;
  v56 = 0;
  v57 = v53 + 8;
  v58 = 1 << *(v53 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & v53[8];
  v61 = (v58 + 63) >> 6;
  v102 = v96 + 32;
  v103 = v96 + 16;
  LODWORD(v110) = *MEMORY[0x277D1D830];
  v101 = (v97 + 104);
  v93 = v54 + 64;
  v92 = v97 + 32;
  result = v53;
  v109 = v55;
  if (v60)
  {
    while (1)
    {
      v62 = __clz(__rbit64(v60));
      v111 = ((v60 - 1) & v60);
LABEL_21:
      v65 = v62 | (v56 << 6);
      v66 = result[7];
      v67 = result;
      v68 = (result[6] + 16 * v65);
      v69 = v68[1];
      v114 = *v68;
      v70 = v96;
      v71 = v39;
      v72 = v39;
      v73 = v94;
      (*(v96 + 16))(v71, v66 + *(v96 + 72) * v65, v94);
      v74 = *(v70 + 32);
      v75 = v95;
      v74(v95, v72, v73);
      v76 = v97;
      v77 = v107;
      (*(v97 + 104))(v75, v110, v107);
      *(v93 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      v78 = v109;
      v79 = (*(v109 + 6) + 16 * v65);
      *v79 = v114;
      v79[1] = v69;
      v80 = v75;
      v55 = v78;
      result = (*(v76 + 32))(*(v78 + 7) + *(v76 + 72) * v65, v80, v77);
      v81 = *(v55 + 16);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        break;
      }

      *(v55 + 16) = v83;

      v39 = v106;
      result = v67;
      v60 = v111;
      if (!v111)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v63 = v56;
    while (1)
    {
      v56 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v56 >= v61)
      {

        v84 = sub_22C9078BC();
        sub_22C70A2B8(v55, sub_22C6AC71C, 0, v85);
        v84(v113, 0);
        (*(v99 + 8))(v98, v100);
        (*(v108 + 8))(v104, v112);
        v50 = v91;
        return sub_22C36DD80(v50, &qword_27D9BAA18);
      }

      v64 = v57[v56];
      ++v63;
      if (v64)
      {
        v62 = __clz(__rbit64(v64));
        v111 = ((v64 - 1) & v64);
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6F5470@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a3;
  v160 = a2;
  v6 = sub_22C901FAC();
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22C908BBC();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v127 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22C908C3C();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v124 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22C9093BC();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v121 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v116 - v12;
  v133 = sub_22C908EAC();
  v136 = *(v133 - 8);
  v13 = MEMORY[0x28223BE20](v133);
  v131 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = &v116 - v15;
  v138 = sub_22C9063DC();
  v137 = *(v138 - 8);
  v16 = MEMORY[0x28223BE20](v138);
  v135 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v116 - v19;
  MEMORY[0x28223BE20](v18);
  v130 = &v116 - v20;
  v21 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v21 - 8);
  v139 = &v116 - v22;
  v142 = sub_22C90069C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  MEMORY[0x28223BE20](v24 - 8);
  v149 = &v116 - v25;
  v154 = sub_22C90880C();
  v150 = *(v154 - 8);
  v26 = MEMORY[0x28223BE20](v154);
  v134 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v148 = &v116 - v28;
  v151 = sub_22C908A0C();
  v143 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v152 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C908D6C();
  v156 = *(v30 - 8);
  v157 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v117 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v147 = &v116 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v116 - v38;
  v40 = sub_22C9069BC();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v144 = &v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v116 - v44;
  v46 = sub_22C9078FC();
  v145 = *(v46 - 8);
  v146 = v46;
  (*(v145 + 16))(a4, a1);
  v47 = 1;
  sub_22C90699C();
  v155 = a4;
  v48 = sub_22C90786C();
  sub_22C605C04(v45, v48);

  v49 = *(v41 + 8);
  v49(v45, v40);
  v50 = sub_22C908C5C();
  LODWORD(a1) = sub_22C370B74(v39, 1, v50);
  sub_22C36DD80(v39, &qword_27D9BB628);
  if (a1 == 1)
  {
    v51 = sub_22C90789C();
    v52 = sub_22C58B5C4(v51);

    if (v52)
    {
      v53 = v144;
      sub_22C90699C();
      v54 = v147;
      sub_22C605C04(v53, v52);

      v49(v53, v40);
      v47 = sub_22C370B74(v54, 1, v50) != 1;
    }

    else
    {
      v54 = v147;
      sub_22C36C640(v147, 1, 1, v50);
      v47 = 0;
    }

    sub_22C36DD80(v54, &qword_27D9BB628);
  }

  v55 = sub_22C908DEC();
  v57 = v156;
  v56 = v157;
  v58 = (*(v156 + 104))(v32, *MEMORY[0x277D72170], v157);
  MEMORY[0x28223BE20](v58);
  *(&v116 - 2) = v32;
  v59 = v158;
  v60 = sub_22C5EC62C(sub_22C50AFAC, (&v116 - 4), v55);

  result = (*(v57 + 8))(v32, v56);
  if (!v47 && v60)
  {
    v62 = v148;
    sub_22C90878C();
    v63 = sub_22C9087DC();
    v64 = *(v150 + 8);
    v64(v62, v154);
    v65 = v149;
    sub_22C3A5950(v63);

    v66 = v151;
    if (sub_22C370B74(v65, 1, v151) == 1)
    {
      sub_22C36DD80(v65, &qword_27D9BA808);
      type metadata accessor for InterpreterError(0);
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v145 + 8))(v155, v146);
    }

    v158 = v50;
    v67 = v143;
    (*(v143 + 32))(v152, v65, v66);
    v68 = v139;
    sub_22C9088DC();
    v69 = v142;
    if (sub_22C370B74(v68, 1, v142) == 1)
    {
      sub_22C36DD80(v68, &qword_27D9BB190);
      v70 = v135;
      sub_22C903F8C();
      v71 = sub_22C9063CC();
      v72 = sub_22C90AADC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_22C366000, v71, v72, "Missing query event ID when resolving system framework intent app parameter", v73, 2u);
        MEMORY[0x2318B9880](v73, -1, -1);
      }

      (*(v137 + 8))(v70, v138);
      type metadata accessor for InterpreterError(0);
      sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v67 + 8))(v152, v66);
      return (*(v145 + 8))(v155, v146);
    }

    v157 = v59;
    (*(v141 + 32))(v140, v68, v69);
    v74 = v134;
    sub_22C90878C();
    v75 = sub_22C9087DC();
    v64(v74, v154);
    v159 = v75;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
    v76 = sub_22C907E6C();

    v77 = *(v76 + 16);
    if (v77 == 1)
    {
      sub_22C58AF88(v76);
      v78 = v136;
      if (v90)
      {

        sub_22C90699C();
        v91 = sub_22C90931C();
        v92 = swift_allocBox();
        v94 = v93;
        v95 = sub_22C90993C();
        sub_22C36C640(v118, 1, 1, v95);
        sub_22C90923C();
        (*(*(v91 - 8) + 104))(v94, *MEMORY[0x277D72970], v91);
        v96 = v121;
        *v121 = v92;
        (*(v119 + 104))(v96, *MEMORY[0x277D72A58], v120);
        (*(v122 + 104))(v124, *MEMORY[0x277D1E938], v123);
        (*(v125 + 104))(v127, *MEMORY[0x277D1E900], v126);
        sub_22C9087AC();
        sub_22C90882C();

        v97 = v117;
        sub_22C908C1C();
        sub_22C36C640(v97, 0, 1, v158);
        v98 = sub_22C90785C();
        sub_22C603A20();
        v98(&v159, 0);
        goto LABEL_26;
      }
    }

    else
    {
      v78 = v136;
      if (!v77)
      {

        v79 = v130;
        sub_22C903F8C();
        v80 = v129;
        v81 = v133;
        (*(v78 + 16))(v129, v160, v133);
        v82 = sub_22C9063CC();
        v83 = sub_22C90AADC();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v159 = v160;
          *v84 = 136315138;
          LODWORD(v158) = v83;
          v85 = sub_22C908E7C();
          v87 = v86;
          (*(v78 + 8))(v80, v133);
          v88 = sub_22C36F9F4(v85, v87, &v159);

          *(v84 + 4) = v88;
          _os_log_impl(&dword_22C366000, v82, v158, "Unable to set the foreground app for system framework intent %s due to no app being in focus", v84, 0xCu);
          v89 = v160;
          sub_22C36FF94(v160);
          MEMORY[0x2318B9880](v89, -1, -1);
          MEMORY[0x2318B9880](v84, -1, -1);

          (*(v137 + 8))(v79, v138);
          (*(v141 + 8))(v140, v142);
          return (*(v67 + 8))(v152, v66);
        }

        (*(v78 + 8))(v80, v81);
        (*(v137 + 8))(v79, v138);
LABEL_26:
        (*(v141 + 8))(v140, v69);
        return (*(v67 + 8))(v152, v66);
      }
    }

    v99 = v132;
    sub_22C903F8C();
    v100 = v131;
    v101 = v133;
    (*(v78 + 16))(v131, v160, v133);

    v102 = sub_22C9063CC();
    v103 = sub_22C90AADC();

    LODWORD(v160) = v103;
    if (os_log_type_enabled(v102, v103))
    {
      v104 = v100;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v159 = v106;
      *v105 = 136315394;
      v107 = sub_22C908E7C();
      v158 = v102;
      v109 = v108;
      (*(v78 + 8))(v104, v101);
      v110 = sub_22C36F9F4(v107, v109, &v159);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2080;
      v111 = sub_22C90A8CC();
      v113 = v112;

      v114 = sub_22C36F9F4(v111, v113, &v159);

      *(v105 + 14) = v114;
      v115 = v158;
      _os_log_impl(&dword_22C366000, v158, v160, "Unable to set the foreground app for system framework intent %s due to more than one app in focus: %s", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v106, -1, -1);
      MEMORY[0x2318B9880](v105, -1, -1);

      (*(v137 + 8))(v132, v138);
      (*(v141 + 8))(v140, v142);
    }

    else
    {

      (*(v78 + 8))(v100, v101);
      (*(v137 + 8))(v99, v138);
      (*(v141 + 8))(v140, v69);
    }

    return (*(v143 + 8))(v152, v66);
  }

  return result;
}

uint64_t sub_22C6F690C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v93 = a6;
  v75 = a4;
  v74 = a1;
  v87 = sub_22C9069BC();
  v8 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - v11;
  v90 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v70 = *(v90 - 8);
  v13 = MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v83 = &v68 - v17;
  v18 = a3 + 56;
  v19 = *a2;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a3 + 56);
  v23 = (v20 + 63) >> 6;
  v81 = v8;
  v82 = (v8 + 8);

  v25 = 0;
  v73 = v19;
  v72 = v23;
  v71 = a3;
  v85 = v12;
  v69 = a3 + 56;
  if (v22)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
    }

    v22 = *(v18 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      do
      {
LABEL_8:
        v27 = *(a3 + 48);
        v79 = v25;
        v28 = *(v27 + ((v25 << 9) | (8 * __clz(__rbit64(v22)))));

        v30 = sub_22C6F6FD8(v29, v92, v93);
        v31 = *(v30 + 16);
        if (v31)
        {
          v77 = v28;
          v78 = v22;
          v89 = *(v90 + 48);
          v32 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v76 = v30;
          v33 = v30 + v32;
          v88 = *(v70 + 72);
          v96 = v19;
          v34 = v91;
          do
          {
            v97 = v33;
            v98 = v31;
            v35 = v83;
            sub_22C6AEA50(v33, v83, &qword_27D9BA910, &unk_22C90C960);
            v36 = v90;
            v37 = *(v90 + 48);
            *v34 = *v35;
            v38 = sub_22C908C5C();
            v39 = *(v38 - 8);
            v94 = *(v39 + 32);
            v95 = v39 + 32;
            v94(&v34[v37], &v35[v89], v38);
            v40 = sub_22C90A0EC();
            v41 = [v40 key];

            sub_22C90A11C();
            v42 = v34;
            v43 = v84;
            v44 = v38;
            v45 = v39;
            sub_22C6AEA50(v42, v84, &qword_27D9BA910, &unk_22C90C960);
            v46 = *(v36 + 48);
            v47 = v86;
            sub_22C90699C();
            (*(v45 + 8))(v43 + v46, v44);
            v48 = v96;
            sub_22C628D18();
            if (v50)
            {
              v51 = v49;
              swift_isUniquelyReferenced_nonNull_native();
              v99 = v48;
              v52 = v47;
              sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
              sub_22C90B15C();
              v53 = v99;
              v54 = *(v81 + 8);
              v55 = v87;
              v54(*(v99 + 48) + *(v81 + 72) * v51, v87);
              v56 = v85;
              v94(v85, (*(v53 + 56) + *(v45 + 72) * v51), v44);
              sub_22C70C380(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
              v96 = v53;
              sub_22C90B17C();
              v54(v52, v55);
              v34 = v91;
              sub_22C36DD80(v91, &qword_27D9BA910);
              v57 = 0;
            }

            else
            {
              (*v82)(v47, v87);
              v34 = v91;
              sub_22C36DD80(v91, &qword_27D9BA910);
              v57 = 1;
              v56 = v85;
            }

            sub_22C36C640(v56, v57, 1, v44);
            sub_22C36DD80(v56, &qword_27D9BB628);
            v33 = v97 + v88;
            v31 = v98 - 1;
          }

          while (v98 != 1);

          a3 = v71;
          v58 = v80;
          v18 = v69;
          v22 = v78;
          v28 = v77;
          v59 = v96;
        }

        else
        {

          v59 = v19;
          v58 = v80;
        }

        v60 = sub_22C6B6BA0(v28, v59);
        v61 = sub_22C70ADB8(v60);
        v80 = v58;

        v22 &= v22 - 1;

        sub_22C6A5BAC(&v99, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);

        v19 = v73;
        v23 = v72;
        v25 = v79;
      }

      while (v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6F6FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a2;
  v87 = sub_22C908C5C();
  v5 = *(v87 - 8);
  MEMORY[0x28223BE20](v87 - 8);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v7 = MEMORY[0x28223BE20](v88);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v78 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v77 = (v5 + 16);
  v86 = (v5 + 8);
  v69 = (v5 + 32);
  v79 = v5;
  v68 = (v5 + 40);
  v82 = a1;

  v21 = 0;
  v72 = MEMORY[0x277D84F98];
  v73 = v11;
  v81 = a3;
  v75 = v20;
  v76 = a1 + 64;
LABEL_4:
  v22 = v21;
  if (!v19)
  {
    goto LABEL_6;
  }

  do
  {
    v21 = v22;
LABEL_9:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v21 << 6);
    v25 = v82;
    v26 = *(v82 + 48);
    v27 = sub_22C9069BC();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v15, v26 + *(v28 + 72) * v24, v27);
    v29 = *(v25 + 56);
    v74 = *(v79 + 72);
    v30 = v29 + v74 * v24;
    v32 = v87;
    v31 = v88;
    (*(v79 + 16))(&v15[*(v88 + 48)], v30, v87);
    v33 = v15;
    v34 = v15;
    v35 = v78;
    sub_22C6AEA50(v34, v78, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v31 + 48);
    v36 = sub_22C9069AC();
    v38 = v37;
    v39 = *(v28 + 8);
    v84 = v28 + 8;
    v85 = v27;
    v83 = v39;
    v39(v35, v27);
    if (v36 == v80 && v38 == v81)
    {

      v42 = *v86;
      (*v86)((v35 + v5), v32);
    }

    else
    {
      v41 = sub_22C90B4FC();

      v42 = *v86;
      (*v86)((v35 + v5), v32);
      if ((v41 & 1) == 0)
      {
        v15 = v33;
        sub_22C36DD80(v33, &qword_27D9BF110);
        goto LABEL_18;
      }
    }

    v15 = v33;
    v43 = v33;
    v44 = v73;
    sub_22C6AEA50(v43, v73, &qword_27D9BF110, &unk_22C922580);
    v5 = *(v88 + 48);
    v45 = sub_22C90697C();
    if ((v46 & 1) == 0)
    {
      v47 = v45;
      v83(v44, v85);
      v48 = (v44 + v5);
      v5 = v87;
      v42(v48, v87);
      v49 = v70;
      sub_22C6AEA50(v15, v70, &qword_27D9BF110, &unk_22C922580);
      v50 = v49 + *(v88 + 48);
      v67 = *v69;
      v67(v71, v50, v5);
      v51 = v72;
      swift_isUniquelyReferenced_nonNull_native();
      v89 = v51;
      v66 = sub_22C628CD4(v47);
      v53 = *(v51 + 16);
      v54 = (v52 & 1) == 0;
      v72 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_32;
      }

      v5 = v52;
      sub_22C3A5908(&qword_27D9BF7D8, &unk_22C9230A8);
      if (sub_22C90B15C())
      {
        v55 = sub_22C628CD4(v47);
        if ((v5 & 1) != (v56 & 1))
        {
          goto LABEL_34;
        }

        v57 = v74;
      }

      else
      {
        v57 = v74;
        v55 = v66;
      }

      v58 = v87;
      v59 = v89;
      v72 = v89;
      if (v5)
      {
        (*v68)(*(v89 + 56) + v55 * v57, v71, v87);
        sub_22C36DD80(v15, &qword_27D9BF110);
      }

      else
      {
        *(v89 + 8 * (v55 >> 6) + 64) |= 1 << v55;
        *(v59[6] + 8 * v55) = v47;
        v67((v59[7] + v55 * v57), v71, v58);
        sub_22C36DD80(v15, &qword_27D9BF110);
        v60 = v59[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_33;
        }

        v59[2] = v62;
      }

      v20 = v75;
      v16 = v76;
      v83(v70, v85);
      goto LABEL_4;
    }

    sub_22C36DD80(v15, &qword_27D9BF110);
    v83(v44, v85);
    v42((v44 + v5), v87);
LABEL_18:
    v22 = v21;
    v20 = v75;
    v16 = v76;
  }

  while (v19);
LABEL_6:
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      v89 = sub_22C47039C(v72);
      sub_22C708EF8(&v89);

      sub_22C8D5C44();
      v64 = v63;

      return v64;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_22C90B54C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C6F76C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v58 = a1;
  v9 = sub_22C908C5C();
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v79 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9069BC();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v73 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v70 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v78 = (&v57 - v17);
  MEMORY[0x28223BE20](v16);
  v69 = (&v57 - v18);
  v19 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v57 - v20);
  v22 = *a2;
  sub_22C70C380(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  v68 = v11;
  v74 = v9;
  v23 = sub_22C909F0C();
  v71 = a4;
  v72 = a5;
  v24 = sub_22C6F6FD8(v22, a4, a5);
  if (!*(v24 + 16))
  {
    goto LABEL_19;
  }

  sub_22C3A5DAC();
  if (sub_22C370B74(v21, 1, v13) == 1)
  {

    sub_22C36DD80(v21, &qword_27D9BF7D0);
LABEL_20:
    sub_22C6A5BAC(&v82, v23, v25, v26, v27, v28, v29, v30, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  }

  v31 = v13;
  v32 = *v21;
  v33 = v21 + *(v13 + 48);
  v34 = v74;
  (*(v75 + 8))(v33, v74);
  v81 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    v67 = *(v24 + 16);
    if (v67)
    {
      v35 = 0;
      v66 = v24 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v65 = *(v13 + 48);
      v76 = (v75 + 32);
      v61 = v62 + 16;
      v64 = (v62 + 8);
      v60 = v75 + 40;
      v63 = v24;
      while (v35 < *(v24 + 16))
      {
        v36 = *(v73 + 72);
        v77 = v35;
        v37 = v69;
        sub_22C6AEA50(v66 + v36 * v35, v69, &qword_27D9BA910, &unk_22C90C960);
        v38 = *(v31 + 48);
        v39 = v78;
        *v78 = *v37;
        v40 = *v76;
        (*v76)(v39 + v38, v37 + v65, v34);

        sub_22C90699C();
        v41 = v39;
        v42 = v70;
        sub_22C6AEA50(v41, v70, &qword_27D9BA910, &unk_22C90C960);
        v40(v79, v42 + *(v31 + 48), v34);
        swift_isUniquelyReferenced_nonNull_native();
        v82 = v23;
        sub_22C628D18();
        if (__OFADD__(v23[2], (v44 & 1) == 0))
        {
          goto LABEL_22;
        }

        v45 = v43;
        v46 = v44;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_26;
          }

          v45 = v47;
          v34 = v74;
        }

        else
        {
          v34 = v74;
        }

        v23 = v82;
        if (v46)
        {
          (*(v75 + 40))(v82[7] + *(v75 + 72) * v45, v79, v34);
          (*v64)(v80, v68);
          sub_22C36DD80(v78, &qword_27D9BA910);
        }

        else
        {
          v49 = v31;
          v82[(v45 >> 6) + 8] |= 1 << v45;
          v50 = v62;
          v51 = v80;
          v52 = v68;
          (*(v62 + 16))(v23[6] + *(v62 + 72) * v45, v80, v68);
          v40(v23[7] + *(v75 + 72) * v45, v79, v34);
          (*(v50 + 8))(v51, v52);
          sub_22C36DD80(v78, &qword_27D9BA910);
          v53 = v23[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_24;
          }

          v23[2] = v55;
          v31 = v49;
        }

        v54 = __OFADD__(v81++, 1);
        v24 = v63;
        if (v54)
        {
          goto LABEL_23;
        }

        v35 = v77 + 1;
        if (v67 == v77 + 1)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6F7DB8(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v115 = a5;
  v123 = a4;
  v106 = a1;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v152 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  v141 = *(v145 - 8);
  v10 = MEMORY[0x28223BE20](v145);
  v137 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v151 = (&v105 - v13);
  MEMORY[0x28223BE20](v12);
  v136 = (&v105 - v14);
  v15 = sub_22C3A5908(&qword_27D9BF7D0, &qword_22C923098);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v114 = (&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v19 = (&v105 - v18);
  v147 = sub_22C9069BC();
  v20 = *(v147 - 8);
  v21 = MEMORY[0x28223BE20](v147);
  v153 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v146 = &v105 - v23;
  v120 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v24 = MEMORY[0x28223BE20](v120);
  v119 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v105 - v27;
  MEMORY[0x28223BE20](v26);
  v118 = &v105 - v28;
  v29 = *a3;
  v30 = *(*a3 + 56);
  v110 = *a3 + 56;
  v31 = 1 << *(v29 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = *a2;
  v112 = v32 & v30;
  v109 = (v31 + 63) >> 6;
  v134 = v20 + 16;
  v117 = v8 + 16;
  v116 = v20 + 32;
  v149 = v8 + 32;
  v126 = v8 + 8;
  v121 = v20;
  v144 = (v20 + 8);
  v122 = v8;
  v131 = (v8 + 40);

  v108 = v29;

  v34 = 0;
  v113 = xmmword_22C90F870;
  v135 = v19;
  while (1)
  {
    v35 = v112;
    if (v112)
    {
      v36 = v34;
    }

    else
    {
      do
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_57;
        }

        if (v36 >= v109)
        {

          sub_22C6A5BAC(&v155, v33, v98, v99, v100, v101, v102, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
        }

        v35 = *(v110 + 8 * v36);
        ++v34;
      }

      while (!v35);
    }

    v37 = *(v108 + 48);
    v111 = v36;
    v38 = *(v37 + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    v112 = (v35 - 1) & v35;
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    v41 = v40 < 64 ? ~(-1 << v40) : -1;
    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v130 = v38;
    swift_bridgeObjectRetain_n();
    v44 = 0;
    v125 = v39;
    v124 = v43;
    if (v42)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_55;
      }

      if (v45 >= v43)
      {
        break;
      }

      v42 = *(v39 + 8 * v45);
      ++v44;
      if (v42)
      {
        v154 = v33;
        v44 = v45;
        goto LABEL_19;
      }
    }

    v34 = v111;
  }

  while (1)
  {
    v154 = v33;
LABEL_19:
    v129 = v42;
    v127 = v44;
    v46 = __clz(__rbit64(v42)) | (v44 << 6);
    v47 = *(v130 + 48);
    v48 = v130;
    v49 = v121;
    v133 = *(v121 + 72);
    v50 = v118;
    v132 = *(v121 + 16);
    v132(v118, v47 + v133 * v46, v147);
    v51 = *(v48 + 56);
    v52 = v122;
    v143 = *(v122 + 72);
    v53 = v51 + v143 * v46;
    v54 = v120;
    v55 = *(v120 + 48);
    (*(v122 + 16))(v50 + v55, v53, v7);
    v150 = *(v54 + 48);
    v56 = *(v49 + 32);
    v57 = v128;
    v56(v128, v50, v147);
    v148 = *(v52 + 32);
    v148(v57 + v150, v50 + v55, v7);
    v58 = v119;
    sub_22C6AEA50(v57, v119, &qword_27D9BF110, &unk_22C922580);
    v59 = *(v54 + 48);
    v56(v146, v58, v147);
    v60 = *(v52 + 8);
    v60(v58 + v59, v7);
    v61 = sub_22C9069AC();
    sub_22C6F6FD8(v154, v61, v62);

    v63 = sub_22C9069AC();
    v65 = sub_22C6F6FD8(v130, v63, v64);

    if (*(v65 + 16))
    {
      break;
    }

    v71 = *v144;
    v33 = v154;
LABEL_46:
    v72 = v129;
LABEL_48:
    v42 = (v72 - 1) & v72;
    v71(v146, v147);
    sub_22C36DD80(v128, &qword_27D9BF110);
    v39 = v125;
    v43 = v124;
    v44 = v127;
    if (!v42)
    {
      goto LABEL_15;
    }
  }

  sub_22C3A5908(&qword_27D9BAB98, &qword_22C9230A0);
  inited = swift_initStackObject();
  *(inited + 16) = v113;
  sub_22C3A5DAC();

  v67 = v145;
  v68 = sub_22C370B74(v19, 1, v145);
  v69 = v114;
  v150 = v60;
  if (v68 == 1)
  {
    sub_22C36DD80(v19, &qword_27D9BF7D0);
    v70 = -1;
  }

  else
  {
    v70 = *v19;
    v60(v19 + *(v67 + 48), v7);
  }

  v33 = v154;
  v72 = v129;
  *(inited + 32) = v70;
  sub_22C3A5DAC();
  if (sub_22C370B74(v69, 1, v67) == 1)
  {
    sub_22C36DD80(v69, &qword_27D9BF7D0);
    v73 = -1;
  }

  else
  {
    v73 = *v69;
    (v150)(v69 + *(v67 + 48), v7);
  }

  *(inited + 40) = v73;
  v74 = sub_22C3D0D14(inited);
  v76 = v75;
  swift_setDeallocating();
  if (v76)
  {
    v77 = -1;
  }

  else
  {
    v77 = v74;
  }

  v154 = (v77 + 1);
  if (__OFADD__(v77, 1))
  {
    goto LABEL_58;
  }

  v142 = *(v65 + 16);
  if (!v142)
  {

    v71 = *v144;
    goto LABEL_48;
  }

  v78 = 0;
  v140 = *(v145 + 48);
  v139 = v65 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v138 = v65;
  while (v78 < *(v65 + 16))
  {
    v79 = *(v141 + 72);
    v150 = v78;
    v80 = v136;
    sub_22C6AEA50(v139 + v79 * v78, v136, &qword_27D9BA910, &unk_22C90C960);
    v81 = v145;
    v82 = *(v145 + 48);
    v83 = v151;
    *v151 = *v80;
    v84 = v148;
    v148(v83 + v82, v80 + v140, v7);
    sub_22C9069AC();
    sub_22C90699C();
    v85 = v137;
    sub_22C6AEA50(v83, v137, &qword_27D9BA910, &unk_22C90C960);
    v86 = v7;
    v84(v152, v85 + *(v81 + 48), v7);
    swift_isUniquelyReferenced_nonNull_native();
    v155 = v33;
    sub_22C628D18();
    if (__OFADD__(v33[2], (v88 & 1) == 0))
    {
      goto LABEL_53;
    }

    v89 = v87;
    v90 = v88;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v65 = v138;
      if ((v90 & 1) != (v92 & 1))
      {
        goto LABEL_59;
      }

      v89 = v91;
    }

    else
    {
      v65 = v138;
    }

    v33 = v155;
    if (v90)
    {
      v7 = v86;
      (*v131)(v155[7] + v89 * v143, v152, v86);
      v71 = *v144;
      (*v144)(v153, v147);
      sub_22C36DD80(v151, &qword_27D9BA910);
    }

    else
    {
      v155[(v89 >> 6) + 8] |= 1 << v89;
      v93 = v153;
      v94 = v147;
      v132(v33[6] + v89 * v133, v153, v147);
      v148(v33[7] + v89 * v143, v152, v86);
      v71 = *v144;
      (*v144)(v93, v94);
      sub_22C36DD80(v151, &qword_27D9BA910);
      v95 = v33[2];
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (v96)
      {
        goto LABEL_56;
      }

      v33[2] = v97;
      v7 = v86;
    }

    v96 = __OFADD__(v154, 1);
    v154 = (v154 + 1);
    v19 = v135;
    if (v96)
    {
      goto LABEL_54;
    }

    v78 = v150 + 1;
    if (v142 == (v150 + 1))
    {

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6F8A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_22C902D4C();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF778, &qword_22C923030);
  v8[17] = swift_task_alloc();
  v10 = sub_22C9078FC();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v11 = sub_22C908EAC();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v12 = sub_22C901FAC();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v13 = sub_22C9086FC();
  v8[28] = v13;
  v8[29] = *(v13 - 8);
  v8[30] = swift_task_alloc();
  v14 = sub_22C90952C();
  v8[31] = v14;
  v8[32] = *(v14 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0);
  v8[36] = v15;
  v8[37] = *(v15 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v16 = sub_22C9093BC();
  v8[43] = v16;
  v8[44] = *(v16 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  v8[47] = swift_task_alloc();
  v17 = sub_22C9074CC();
  v8[48] = v17;
  v8[49] = *(v17 - 8);
  v8[50] = swift_task_alloc();
  v18 = sub_22C9086BC();
  v8[51] = v18;
  v8[52] = *(v18 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v19 = sub_22C90769C();
  v8[64] = v19;
  v8[65] = *(v19 - 8);
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v20 = sub_22C90880C();
  v8[68] = v20;
  v8[69] = *(v20 - 8);
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v21 = sub_22C9063DC();
  v8[72] = v21;
  v8[73] = *(v21 - 8);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6F9160, 0, 0);
}

uint64_t sub_22C6F9160()
{
  v22 = v0;
  v1 = sub_22C6EF70C(*(v0 + 80), *(v0 + 88), 0);
  *(v0 + 624) = v1;
  sub_22C903F8C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 616);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  if (v4)
  {
    sub_22C36BED8();
    v20 = v5;
    v8 = swift_slowAlloc();
    sub_22C370220();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C36FC08();
    v10 = sub_22C90A8CC();
    v12 = sub_22C36F9F4(v10, v11, &v21);

    *(v8 + 4) = v12;
    sub_22C37B250(&dword_22C366000, v13, v14, "parameter value sets %s");
    sub_22C36FF94(v9);
    v15 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v15);
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v16 = *(v6 + 8);
    v16(v20, v7);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 632) = v16;
  sub_22C90878C();
  v17 = swift_task_alloc();
  *(v0 + 640) = v17;
  *v17 = v0;
  v17[1] = sub_22C6F935C;
  v18 = *(v0 + 72);

  return sub_22C6FBE28(v1, v18);
}

uint64_t sub_22C6F935C()
{
  sub_22C36D5EC();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = *v1;
  sub_22C36D994();
  *v6 = v5;
  v3[81] = v7;
  v3[82] = v0;

  v8 = v2[71];
  v9 = v2[69];
  v10 = v2[68];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (!v0)
  {
    v3[83] = v12;
    v3[84] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12(v8, v10);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_22C6F9500(uint64_t a1)
{
  v419 = v1;
  sub_22C903F8C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  v417 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C36BED8();
    v4 = swift_slowAlloc();
    sub_22C370220();
    v5 = swift_slowAlloc();
    v418[0] = v5;
    *v4 = 136315138;
    sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6AE694();
    sub_22C3726C4();
    v6 = sub_22C90A8CC();
    v8 = sub_22C36F9F4(v6, v7, v418);

    *(v4 + 4) = v8;
    sub_22C374ED0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_22C36FF94(v5);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v14 = sub_22C36BAFC();
    v15(v14);
  }

  else
  {
    v16 = v1[79];

    v17 = sub_22C36BAFC();
    v16(v17);
  }

  if ((sub_22C90765C() & 1) == 0 || (v413 = sub_22C58B5C4(v1[81])) == 0)
  {
    sub_22C903F8C();
    v41 = sub_22C36D39C();
    v42(v41);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AABC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v1[79];
    v47 = v1[74];
    v48 = v1[72];
    v49 = v1[24];
    if (v45)
    {
      sub_22C36BED8();
      v414 = v47;
      v50 = swift_slowAlloc();
      sub_22C370220();
      v407 = v48;
      v51 = swift_slowAlloc();
      v418[0] = v51;
      *v50 = 136315138;
      v401 = v46;
      v52 = sub_22C908E7C();
      v54 = v53;
      v55 = sub_22C379FC8();
      v56(v55);
      sub_22C36F9F4(v52, v54, v418);
      sub_22C37FF48();

      *(v50 + 4) = v49;
      _os_log_impl(&dword_22C366000, v43, v44, "Resolving app intent %s", v50, 0xCu);
      sub_22C36FF94(v51);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v401(v414, v407);
    }

    else
    {

      v57 = sub_22C379FC8();
      v58(v57);
      v59 = sub_22C50B578();
      (v46)(v59);
    }

    v379 = v1 + 2;
    v60 = v1[83];
    v62 = v1[17];
    v61 = v1[18];
    v63 = v1[7];
    sub_22C90878C();
    sub_22C690EE8(v63, v64);
    v65 = sub_22C36D264();
    v60(v65);
    sub_22C36D0A8(v62, 1, v61);
    if (v66)
    {
      v67 = v1[17];
      (*(v1[26] + 16))(v1[27], v1[7], v1[25]);
      v68 = sub_22C459028();
      v69(v68);
      sub_22C909F0C();
      MEMORY[0x2318B4D00]();
      sub_22C372FCC();
      sub_22C9077EC();
      sub_22C36D3E0(v67);
      if (!v66)
      {
        sub_22C36DD80(v1[17], &qword_27D9BF778);
      }
    }

    else
    {
      (*(v1[19] + 32))(v1[21], v1[17], v1[18]);
    }

    v70 = v1[26];
    v71 = v1[15];
    v72 = v1[10];
    sub_22C9078AC();
    sub_22C3A5908(&qword_27D9BF780, &qword_22C923040);
    sub_22C37BB14();
    v73 = sub_22C90B1CC();
    v74 = 0;
    v75 = v72 + 64;
    v390 = v72;
    sub_22C36D280();
    v78 = v77 & v76;
    v80 = (v79 + 63) >> 6;
    v402 = v70;
    v384 = *MEMORY[0x277D1D830];
    v380 = v81 + 8;
    v396 = v71;
    v393 = v81;
    if (v78)
    {
      goto LABEL_16;
    }

LABEL_17:
    v83 = v74;
    while (1)
    {
      v74 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v74 >= v80)
      {
        break;
      }

      v84 = *(v75 + 8 * v74);
      ++v83;
      if (v84)
      {
        v82 = __clz(__rbit64(v84));
        v408 = (v84 - 1) & v84;
        while (2)
        {
          v85 = v82 | (v74 << 6);
          v86 = v1[27];
          v87 = v1[16];
          v88 = v1[14];
          v89 = (*(v390 + 48) + 16 * v85);
          v90 = v89[1];
          v415 = *v89;
          (*(v402 + 16))(v86, *(v390 + 56) + *(v402 + 72) * v85, v1[25]);
          v91 = sub_22C38BD8C();
          v92(v91);
          (*(v396 + 104))(v87, v384, v88);
          *(v380 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
          v73 = v393;
          v93 = (v393[6] + 16 * v85);
          *v93 = v415;
          v93[1] = v90;
          (*(v396 + 32))(v393[7] + *(v396 + 72) * v85, v87, v88);
          v94 = v393[2];
          v95 = __OFADD__(v94, 1);
          v96 = v94 + 1;
          if (!v95)
          {
            v393[2] = v96;

            v1 = v417;
            v78 = v408;
            if (!v408)
            {
              goto LABEL_17;
            }

LABEL_16:
            v82 = __clz(__rbit64(v78));
            v408 = (v78 - 1) & v78;
            continue;
          }

          break;
        }

        __break(1u);
LABEL_103:

        sub_22C70CC3C();

        return;
      }
    }

    v97 = v1[82];
    v98 = v73;
    v99 = v1[12];
    v100 = sub_22C9078BC();
    sub_22C70A2B8(v98, sub_22C6AC71C, 0, v101);
    v100(v379, 0);
    v102 = sub_22C36EC8C();
    sub_22C6F5470(v102, v103, v99, v104);
    if (v97)
    {
      (*(v417[19] + 8))(v417[21], v417[18]);
      sub_22C70CA60();

      sub_22C369A24();
      goto LABEL_92;
    }

    v105 = v417[19];
    v106 = sub_22C37170C();
    v107(v106);
    v108 = *(v105 + 32);
    v109 = sub_22C36BBCC();
    (v108)(v109);
    sub_22C38399C();
    v108();
    type metadata accessor for StepResolution(0);
    sub_22C6AFE24();
LABEL_91:
    swift_storeEnumTagMultiPayload();
    sub_22C70CA60();
    sub_22C70CE80();

    sub_22C369C50();
LABEL_92:
    sub_22C70CC3C();

    __asm { BRAA            X1, X16 }
  }

  sub_22C903F8C();
  v18 = sub_22C37B220();
  v378 = v19;
  v19(v18);
  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v1[79];
  v24 = v1[75];
  v25 = v1[72];
  if (v22)
  {
    sub_22C36BED8();
    v406 = v25;
    v26 = swift_slowAlloc();
    sub_22C370220();
    v27 = swift_slowAlloc();
    v418[0] = v27;
    *v26 = 136315138;
    sub_22C90768C();
    v28 = sub_22C36EC8C();
    v29(v28);
    v30 = sub_22C36ECB4();
    v33 = sub_22C36F9F4(v30, v31, v32);

    *(v26 + 4) = v33;
    sub_22C70CF60(&dword_22C366000, v20, v21, "Handling tool call as builtin - skipping resolver: %s");
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    sub_22C36FF94(v27);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v40 = sub_22C38A0CC();
    MEMORY[0x2318B9880](v40);

    v23(v24, v406);
  }

  else
  {

    v110 = sub_22C36EC8C();
    v111(v110);
    v112 = sub_22C374C34();
    (v23)(v112);
  }

  v409 = v1[56];
  v113 = v1[52];
  v114 = v1[49];
  v383 = sub_22C909F0C();
  v115 = v413 + 64;
  sub_22C37454C();
  v118 = v117 & v116;
  sub_22C634720();
  v120 = v119 >> 6;
  v375 = *MEMORY[0x277D1E040];
  v374 = (v114 + 104);
  v372 = v113 + 32;
  v373 = v113;
  v371 = v113 + 40;

  v121 = 0;
  v394 = v120;
  while (1)
  {
    v122 = v121;
    if (!v118)
    {
      break;
    }

    while (1)
    {
      v121 = v122;
LABEL_35:
      v123 = v1[63];
      v397 = v1[62];
      sub_22C70CF34();
      v125 = v124 | (v121 << 6);
      v126 = *(v413 + 48);
      v127 = sub_22C9069BC();
      sub_22C369824();
      v129 = v128;
      (*(v128 + 16))(v123, v126 + *(v130 + 72) * v125, v127);
      v131 = *(v413 + 56);
      v132 = sub_22C908C5C();
      sub_22C369824();
      v134 = v133;
      (*(v133 + 16))(v123 + *(v409 + 48), v131 + *(v135 + 72) * v125, v132);
      sub_22C6AEA50(v123, v397, &qword_27D9BF110, &unk_22C922580);
      v136 = *(v409 + 48);
      sub_22C90697C();
      LOBYTE(v123) = v137;
      v387 = *(v129 + 8);
      v391 = v127;
      v387(v397, v127);
      v138 = *(v134 + 8);
      v138(v397 + v136, v132);
      v139 = v417[63];
      if (v123)
      {
        break;
      }

      sub_22C36DD80(v417[63], &qword_27D9BF110);
      v122 = v121;
      v1 = v417;
    }

    v140 = v417[62];
    v376 = v417[61];
    v368 = v417[55];
    v381 = v417[54];
    v398 = v417[51];
    v359 = v417[50];
    v363 = v417[48];
    v141 = sub_22C37A004();
    HIDWORD(v358) = HIDWORD(v140);
    sub_22C6AEA50(v141, v142, &qword_27D9BF110, &unk_22C922580);
    v143 = *(v409 + 48);
    sub_22C90774C();
    v350 = v138;
    v355 = v132;
    v138(v140 + v143, v132);
    (*v374)(v359, v375, v363);
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v144, v145, v146, v147);
    sub_22C3819EC();
    sub_22C90869C();
    v387(v140, v391);
    sub_22C6AEA50(v139, v376, &qword_27D9BF110, &unk_22C922580);
    sub_22C9069AC();
    v149 = v148;
    v150 = sub_22C372280();
    v152 = v151;
    (v387)(v150);
    v153 = v149;
    sub_22C634398();
    v154(v381, v368, v398);
    swift_isUniquelyReferenced_nonNull_native();
    v418[0] = v383;
    sub_22C36E2BC(v152, v149);
    sub_22C369DA4();
    if (__OFADD__(v157, v158))
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v159 = v155;
    v160 = v156;
    sub_22C3A5908(&qword_27D9BF438, &qword_22C923330);
    sub_22C70CF54();
    if (sub_22C90B15C())
    {
      v161 = sub_22C36E2BC(v152, v149);
      if ((v160 & 1) != (v162 & 1))
      {
        goto LABEL_99;
      }

      v159 = v161;
    }

    v163 = v417[63];
    v164 = v417[51];
    if (v160)
    {
      v165 = v417[54];

      v383 = v418[0];
      (*(v373 + 40))(*(v418[0] + 56) + *(v373 + 72) * v159, v165, v164);
      v166 = sub_22C70CF14();
      v167(v166);
      sub_22C36DD80(v163, &qword_27D9BF110);
    }

    else
    {
      v168 = v418[0];
      sub_22C36ED48(v418[0] + 8 * (v159 >> 6));
      v169 = (v168[6] + 16 * v159);
      *v169 = v170;
      v169[1] = v153;
      (*(v373 + 32))(v168[7] + *(v373 + 72) * v159);
      v171 = sub_22C70CF14();
      v172(v171);
      sub_22C36DD80(v163, &qword_27D9BF110);
      v173 = v168[2];
      v95 = __OFADD__(v173, 1);
      v174 = v173 + 1;
      if (v95)
      {
        goto LABEL_109;
      }

      v383 = v168;
      v168[2] = v174;
    }

    v1 = v417;
    v115 = v413 + 64;
    v120 = v394;
    v350(v417[61] + *(v409 + 48), v355);
  }

  while (1)
  {
    v121 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      goto LABEL_96;
    }

    if (v121 >= v120)
    {
      break;
    }

    v118 = *(v115 + 8 * v121);
    ++v122;
    if (v118)
    {
      goto LABEL_35;
    }
  }

  v175 = v1[44];
  v377 = v1[37];
  v386 = v1[36];

  sub_22C3A5908(&qword_27D9BF858, &qword_22C923338);
  v382 = sub_22C909F0C();
  sub_22C6B03E8();
  v178 = v176 & v177;
  v180 = (63 - v179) >> 6;
  v385 = (v175 + 32);

  v181 = 0;
  for (i = v180; ; v180 = i)
  {
    v182 = v181;
    if (!v178)
    {
      break;
    }

    while (1)
    {
      v181 = v182;
LABEL_52:
      v183 = v1[59];
      v184 = v1[60];
      sub_22C70CF34();
      v186 = v185 | (v181 << 6);
      v187 = *(v413 + 48);
      sub_22C9069BC();
      sub_22C369824();
      v392 = v190;
      v395 = v189;
      (*(v190 + 16))(v184, v187 + *(v188 + 72) * v186);
      v191 = *(v413 + 56);
      sub_22C908C5C();
      sub_22C369824();
      v192 = v1;
      v194 = v191 + *(v193 + 72) * v186;
      v196 = v195;
      v399 = v197;
      (*(v195 + 16))(v184 + *(v409 + 48), v194);
      v198 = sub_22C37A004();
      sub_22C6AEA50(v198, v199, &qword_27D9BF110, &unk_22C922580);
      v200 = *(v409 + 48);
      v201 = sub_22C90697C();
      v202 = v192[59];
      if ((v203 & 1) == 0)
      {
        break;
      }

      v204 = sub_22C3806B8();
      sub_22C36DD80(v204, v205);
      (*(v392 + 8))(v202, v395);
      (*(v196 + 8))(v183 + v200, v399);
      v182 = v181;
      v1 = v417;
    }

    v206 = v201;
    v347 = v417[58];
    v351 = v417[57];
    v364 = v417[43];
    v358 = v417[46];
    v360 = v417[42];
    v369 = *(v392 + 8);
    v369(v202, v395);
    v207 = *(v196 + 8);
    v207(v183 + v200, v399);
    sub_22C44178C();
    sub_22C6AEA50(v208, v209, v210, &unk_22C922580);
    v356 = sub_22C9069AC();
    v212 = v211;
    v369(v347, v395);
    sub_22C63413C();
    sub_22C6AEA50(v213, v214, v215, &unk_22C922580);
    v216 = *(v409 + 48);
    sub_22C90774C();
    v217 = v351 + v216;
    v352 = v207;
    v207(v217, v399);
    v218 = *(v386 + 48);
    *v360 = v206;
    (*v385)(v360 + v218, v358, v364);
    swift_isUniquelyReferenced_nonNull_native();
    v418[0] = v382;
    sub_22C36E2BC(v356, v212);
    sub_22C369DA4();
    if (__OFADD__(v221, v222))
    {
      goto LABEL_107;
    }

    v223 = v219;
    v224 = v220;
    sub_22C3A5908(&qword_27D9BF860, &unk_22C923340);
    sub_22C70CF54();
    v225 = sub_22C90B15C();
    v226 = v418[0];
    v382 = v418[0];
    if (v225)
    {
      v227 = sub_22C36E2BC(v356, v212);
      if ((v224 & 1) != (v228 & 1))
      {
        goto LABEL_99;
      }

      v223 = v227;
      v226 = v382;
    }

    if (v224)
    {

      v226 = v382;
    }

    else
    {
      sub_22C36ED48(&v226[v223 >> 6]);
      v229 = (v226[6] + 16 * v223);
      *v229 = v356;
      v229[1] = v212;
      *(v226[7] + 8 * v223) = MEMORY[0x277D84F90];
      v230 = v226[2];
      v95 = __OFADD__(v230, 1);
      v231 = v230 + 1;
      if (v95)
      {
        goto LABEL_110;
      }

      v226[2] = v231;
    }

    v232 = v226[7];
    v233 = *(v232 + 8 * v223);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v232 + 8 * v223) = v233;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C3827B4();
      sub_22C595A04();
      v233 = v243;
      *(v232 + 8 * v223) = v243;
    }

    v236 = *(v233 + 16);
    v235 = *(v233 + 24);
    if (v236 >= v235 >> 1)
    {
      sub_22C369AB0(v235);
      sub_22C3827B4();
      sub_22C595A04();
      *(v232 + 8 * v223) = v244;
    }

    v361 = v417[58];
    v237 = v417[42];
    v238 = *(v409 + 48);
    sub_22C36DD80(v417[60], &qword_27D9BF110);
    *(*(v232 + 8 * v223) + 16) = v236 + 1;
    sub_22C37BEE8();
    sub_22C6AE8BC(v237, v239 + v240 + *(v241 + 72) * v236, &qword_27D9BAF80, &unk_22C90FAC0);
    v242 = sub_22C372164();
    (v369)(v242);
    v352(v361 + v238, v399);
    v1 = v417;
    v115 = v413 + 64;
  }

  while (1)
  {
    v181 = v182 + 1;
    if (__OFADD__(v182, 1))
    {
      goto LABEL_97;
    }

    if (v181 >= v180)
    {
      break;
    }

    v178 = *(v115 + 8 * v181);
    ++v182;
    if (v178)
    {
      goto LABEL_52;
    }
  }

  v245 = v1[44];
  v246 = v1[32];

  v247 = 0;
  sub_22C37454C();
  v250 = v249 & v248;
  sub_22C634720();
  v254 = v253 >> 6;
  v255 = (v245 + 8);
  v256 = (v246 + 32);
  v257 = v246 + 16;
  v258 = *MEMORY[0x277D729E0];
  v259 = (v245 + 104);
  v260 = (v246 + 8);
  v86 = v1[82];
  while (2)
  {
    while (2)
    {
      if (v250)
      {
        goto LABEL_73;
      }

      while (2)
      {
        v261 = v247 + 1;
        if (__OFADD__(v247, 1))
        {
          goto LABEL_98;
        }

        if (v261 >= v254)
        {
          v331 = v417[27];
          v333 = v417[25];
          v332 = v417[26];
          v334 = v417[7];

          (*(v332 + 16))(v331, v334, v333);
          v335 = sub_22C379FC8();
          v378(v335);
          sub_22C37A004();
          sub_22C3870A4();
          sub_22C90867C();
          v336 = sub_22C36BAFC();
          v337(v336);
          type metadata accessor for StepResolution(0);
          sub_22C376858();
          goto LABEL_91;
        }

        v250 = *(v252 + 8 * v261);
        ++v247;
        if (!v250)
        {
          continue;
        }

        break;
      }

      v247 = v261;
LABEL_73:
      v262 = __clz(__rbit64(v250));
      v250 &= v250 - 1;
      v263 = v262 | (v247 << 6);
      v264 = *(*(v251 + 56) + 8 * v263);
      if (!*(v264 + 16))
      {
        continue;
      }

      break;
    }

    v343 = v260;
    v362 = v257;
    v365 = v259;
    LODWORD(v358) = v258;
    v348 = v254;
    v353 = v252;
    v403 = v417[43];
    v370 = v256;
    v265 = v417[41];
    v266 = v417[34];
    v410 = v417[31];
    v416 = v417[35];
    v267 = (*(v251 + 48) + 16 * v263);
    v268 = v267[1];
    v367 = *v267;
    v269 = (*(v377 + 80) + 32) & ~*(v377 + 80);
    v270 = v255;
    sub_22C6AEA50(v264 + v269, v265, &qword_27D9BAF80, &unk_22C90FAC0);
    v271 = *(v386 + 48);
    v357 = v268;

    sub_22C90935C();
    v345 = v270;
    (*v270)(v265 + v271, v403);
    (*v370)(v416, v266, v410);
    v418[0] = v264;

    sub_22C708FE4(v418);
    if (v86)
    {
      goto LABEL_103;
    }

    v272 = v418[0];
    v273 = *(v418[0] + 16);
    if (v273)
    {
      sub_22C70CDCC(MEMORY[0x277D84F90]);
      v342 = v272;
      v274 = v272 + v269;
      v389 = *(v377 + 72);
      v275 = v418[0];
      v276 = v385;
      do
      {
        v411 = v273;
        v400 = v417[45];
        v277 = v417[43];
        v278 = v417[39];
        v279 = v417[38];
        v280 = sub_22C374C34();
        sub_22C6AEA50(v280, v281, &qword_27D9BAF80, &unk_22C90FAC0);
        v282 = sub_22C51E290();
        sub_22C6AEA50(v282, v283, &qword_27D9BAF80, &unk_22C90FAC0);
        v284 = v276;
        v285 = *(v386 + 48);
        *v279 = *v278;
        v404 = *v284;
        (*v284)(&v279[v285], v278 + v285, v277);
        sub_22C70CF08();
        v286(v400, &v279[v285], v277);
        sub_22C36DD80(v279, &qword_27D9BAF80);
        v287 = sub_22C51E290();
        sub_22C36DD80(v287, v288);
        v418[0] = v275;
        v290 = *(v275 + 16);
        v289 = *(v275 + 24);
        if (v290 >= v289 >> 1)
        {
          v293 = sub_22C369AB0(v289);
          sub_22C3B74E0(v293, v290 + 1, 1);
          v275 = v418[0];
        }

        *(v275 + 16) = v290 + 1;
        sub_22C37054C();
        v276 = v385;
        v404(v275 + v291 + *(v292 + 72) * v290);
        v274 += v389;
        v273 = v411 - 1;
      }

      while (v411 != 1);
    }

    v294 = v417[50];
    v412 = v417[48];
    v405 = v417[43];
    sub_22C90906C();
    v295 = swift_allocBox();
    v296 = sub_22C634750();
    v257 = v297;
    v298(v296);
    sub_22C37EF10();
    sub_22C90903C();
    *v294 = v295;
    v258 = v358;
    (*v365)(v294, v358, v405);
    (*v374)(v294, v375, v412);
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v299, v300, v301, v302);
    sub_22C90869C();
    swift_isUniquelyReferenced_nonNull_native();
    v418[0] = v383;
    v303 = sub_22C36E2BC(v367, v357);
    v305 = v304;
    sub_22C369DA4();
    if (__OFADD__(v306, v307))
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    sub_22C3A5908(&qword_27D9BF438, &qword_22C923330);
    sub_22C70CF54();
    v308 = sub_22C90B15C();
    v314 = v418[0];
    v383 = v418[0];
    if ((v308 & 1) == 0)
    {
      v256 = v370;
LABEL_85:
      if (v305)
      {
        v316 = sub_22C70CE18(v308, v417[53], v417[51], v309, v310, v311, v312, v313, 0, v342, v343, v345, v348, v353, v357, v358, v362, v365, v367, v370, v371, v372, v373);
        (*(v317 + 40))(v316);

LABEL_89:
        v260 = v344;
        (*v344)(v417[35], v417[31]);
        v86 = 0;
        v251 = v382;
        v254 = v349;
        v252 = v354;
        v255 = v346;
        v259 = v366;
        continue;
      }

      sub_22C36ED48(v314 + 8 * (v303 >> 6));
      v318 = (*(v314 + 48) + 16 * v303);
      *v318 = v367;
      v318[1] = v357;
      v327 = sub_22C70CE18(v319, v320, v321, v322, v323, v324, v325, v326, 0, v342, v343, v345, v348, v353, v357, v358, v362, v365, v367, v370, v371, v372, v373);
      (*(v328 + 32))(v327);
      v329 = *(v383 + 16);
      v95 = __OFADD__(v329, 1);
      v330 = v329 + 1;
      if (!v95)
      {
        *(v383 + 16) = v330;
        goto LABEL_89;
      }

LABEL_111:
      __break(1u);
      return;
    }

    break;
  }

  v308 = sub_22C36E2BC(v367, v357);
  v256 = v370;
  if ((v305 & 1) == (v315 & 1))
  {
    v303 = v308;
    v314 = v383;
    goto LABEL_85;
  }

LABEL_99:
  sub_22C70CC3C();

  sub_22C90B54C();
}