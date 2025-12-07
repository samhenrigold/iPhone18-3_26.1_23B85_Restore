uint64_t sub_22C3F1848()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v49 = *(v0 + 552);
  v50 = *(v0 + 600);
  v51 = *(v0 + 544);
  v46 = *(v0 + 592);
  v47 = *(v0 + 528);
  v5 = *(v0 + 520);
  v48 = *(v0 + 504);
  v6 = *(v0 + 496);
  v56 = *(v0 + 480);
  v57 = *(v0 + 472);
  v52 = *(v0 + 456);
  v53 = *(v0 + 448);
  v54 = *(v0 + 432);
  v55 = *(v0 + 424);
  v7 = *(v0 + 256);
  v8 = *(v0 + 248);
  *(swift_task_alloc() + 16) = v8;
  sub_22C909CDC();

  sub_22C3ED2AC(v7, v1);
  v9 = *(v3 + 8);
  *(v0 + 616) = v9;
  *(v0 + 624) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  sub_22C90065C();
  sub_22C36BBB4();
  *(v0 + 632) = sub_22C3F4780(v10, v11, MEMORY[0x277D42D38]);
  sub_22C909DDC();

  v9(v1, v4);
  *(v0 + 640) = sub_22C901D3C();
  v12 = sub_22C369B68();
  sub_22C36C640(v12, v13, v14, v15);
  *(v0 + 800) = *MEMORY[0x277D0E5C0];
  v16 = *(v5 + 104);
  *(v0 + 648) = v16;
  *(v0 + 656) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v47);
  *(v0 + 664) = sub_22C901D0C();
  sub_22C36A748();
  sub_22C36C640(v17, v18, v19, v20);
  *(v0 + 804) = *MEMORY[0x277D0E5C8];
  v21 = *(v6 + 104);
  *(v0 + 672) = v21;
  *(v0 + 680) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v48);
  sub_22C901D4C();
  sub_22C909DEC();
  *(v0 + 688) = *(v51 + 8);
  sub_22C380478();
  *(v0 + 696) = v22;
  v23(v49);
  v9(v46, v4);
  *(v0 + 704) = sub_22C901C4C();
  v24 = sub_22C369B68();
  sub_22C36C640(v24, v25, v26, v27);
  *(v0 + 808) = *MEMORY[0x277D0E578];
  *(v0 + 712) = *(v53 + 104);
  sub_22C3700D4();
  *(v0 + 720) = v28;
  v29(v52);
  *(v0 + 728) = sub_22C901BDC();
  sub_22C36A748();
  sub_22C36C640(v30, v31, v32, v33);
  *(v0 + 812) = *MEMORY[0x277D0E580];
  *(v0 + 736) = *(v55 + 104);
  sub_22C3700D4();
  *(v0 + 744) = v34;
  v35(v54);
  sub_22C901C5C();
  sub_22C909E2C();
  *(v0 + 752) = *(v57 + 8);
  sub_22C380478();
  *(v0 + 760) = v36;
  v37(v56);
  v9(v50, v4);
  sub_22C9062FC();
  sub_22C36A748();
  sub_22C36C640(v38, v39, v40, v41);
  sub_22C3758BC();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 768) = v42;
  *v42 = v43;
  v42[1] = sub_22C3F1CD8;
  sub_22C3F48FC();

  return MEMORY[0x282166B58](v44);
}

uint64_t sub_22C3F1CD8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 776) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F1DD4()
{
  v2 = *(v0 + 304);
  v3 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C3F4718(v2);
  }

  else
  {
    v108 = *(v0 + 752);
    v107 = *(v0 + 728);
    v106 = *(v0 + 704);
    v105 = *(v0 + 688);
    v103 = *(v0 + 672);
    v102 = *(v0 + 804);
    v100 = *(v0 + 664);
    v99 = *(v0 + 648);
    v98 = *(v0 + 800);
    v89 = *(v3 + 48);
    v94 = *(v0 + 512);
    v95 = *(v0 + 504);
    v96 = *(v0 + 488);
    v97 = *(v0 + 528);
    v104 = *(v0 + 464);
    v101 = *(v0 + 536);
    v90 = *(v0 + 400);
    v91 = *(v0 + 384);
    v92 = *(v0 + 408);
    v87 = *(v0 + 344);
    v4 = sub_22C3749E4();
    v5 = v1(v4);
    v13 = sub_22C37734C(v5, v6, v7, v8, v9, v10, v11, v12, v82);
    (v3)(v13);
    v14 = sub_22C3F4910();
    v15 = v1(v14);
    v23 = sub_22C37B538(v15, v16, v17, v18, v19, v20, v21, v22, v83, v85, v87);
    (v3)(v23);
    v24 = v90;
    v25 = sub_22C90321C();
    v33 = sub_22C3F48A8(v25, v26, v27, v28, v29, v30, v31, v32, v84, v86, v88, v89, v90, v91, v92);
    v34(v33);
    v35 = sub_22C3F4864();
    v36(v35);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    sub_22C382F1C(inited, xmmword_22C90F800);
    v38 = sub_22C909D9C();
    v39 = MEMORY[0x277D42E20];
    inited[4].n128_u64[1] = v38;
    inited[5].n128_u64[0] = v39;
    v40 = sub_22C36D548(&inited[3]);
    (*(*(v38 - 8) + 16))(v40, v93, v38);
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_22C90F870;
    sub_22C3F4874(v41, "_OverrideConfigurationHelper.renderedPromptSanitizer(.init(overrides:.withoutDefault(nil),guardrails:.withoutDefault(nil)))");
    v42 = sub_22C369B68();
    sub_22C36C640(v42, v43, v44, v45);
    v99(v97, v98, v94);
    sub_22C36A748();
    sub_22C36C640(v46, v47, v48, v100);
    v103(v95, v102, v96);
    sub_22C37EB94();
    *(v41 + 72) = v101;
    sub_22C36D548((v41 + 48));
    sub_22C901CFC();
    v49 = sub_22C36D264();
    v105(v49);
    *(v41 + 80) = v24;
    *(v41 + 88) = 0x800000022C930280;
    sub_22C36A748();
    sub_22C36C640(v50, v51, v52, v106);
    v53 = sub_22C3F48D4();
    v54(v53);
    v55 = sub_22C369B68();
    sub_22C36C640(v55, v56, v57, v107);
    v58 = sub_22C3F48E8();
    v59(v58);
    sub_22C36D264();
    sub_22C901C5C();
    *(v41 + 120) = v104;
    sub_22C36D548((v41 + 96));
    sub_22C901CDC();
    v60 = sub_22C36BAFC();
    v108(v60);
    sub_22C380120();
    v61 = sub_22C909F0C();
    sub_22C3765E4(v61);

    v62 = sub_22C3819AC();
    v63(v62);
    v64 = sub_22C3F48C0();
    v65(v64);
    v66 = sub_22C3F4890();
    v67(v66);
    v68 = sub_22C3F4864();
    v69(v68);
  }

  v70 = *(v0 + 616);
  v71 = *(v0 + 272);
  sub_22C909DCC();
  *(v0 + 232) = v71;
  v72 = sub_22C90194C();
  sub_22C37F720(v72);
  v73 = sub_22C36D264();
  v70(v73);
  v74 = sub_22C9018DC();
  v75 = swift_task_alloc();
  *(v0 + 784) = v75;
  sub_22C372660();
  v78 = sub_22C3F4780(v76, v77, MEMORY[0x277D71A68]);
  *v75 = v0;
  v75[1] = sub_22C3F2348;
  v79 = *(v0 + 280);
  v80 = *(v0 + 240);

  return MEMORY[0x282165A60](v80, v74, v79, v78);
}

uint64_t sub_22C3F2348()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 792) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3F24A4()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[70];
  (*(v0[49] + 8))(v0[51], v0[48]);
  v1(v2, v3);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C3F2854(uint64_t a1)
{
  v1 = sub_22C909D9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D42E18];
  sub_22C909D0C();
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  (*(v2 + 16))(v7 + v6, v4, v1);
  MEMORY[0x2318B71C0](v7, v1, v5);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22C3F29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v7 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210);
  v6[39] = swift_task_alloc();
  v6[40] = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  v6[41] = swift_task_alloc();
  v8 = sub_22C90322C();
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v9 = sub_22C90323C();
  v6[45] = v9;
  v6[46] = *(v9 - 8);
  v6[47] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220);
  v6[48] = swift_task_alloc();
  v10 = sub_22C90630C();
  v6[49] = v10;
  v6[50] = *(v10 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v11 = sub_22C901C2C();
  v6[53] = v11;
  v6[54] = *(v11 - 8);
  v6[55] = swift_task_alloc();
  v12 = sub_22C901C1C();
  v6[56] = v12;
  v6[57] = *(v12 - 8);
  v6[58] = swift_task_alloc();
  v13 = sub_22C901C6C();
  v6[59] = v13;
  v6[60] = *(v13 - 8);
  v6[61] = swift_task_alloc();
  v14 = sub_22C901D2C();
  v6[62] = v14;
  v6[63] = *(v14 - 8);
  v6[64] = swift_task_alloc();
  v15 = sub_22C901D1C();
  v6[65] = v15;
  v6[66] = *(v15 - 8);
  v6[67] = swift_task_alloc();
  v16 = sub_22C901D5C();
  v6[68] = v16;
  v6[69] = *(v16 - 8);
  v6[70] = swift_task_alloc();
  v17 = sub_22C909CCC();
  v6[71] = v17;
  v6[72] = *(v17 - 8);
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F2F3C, 0, 0);
}

uint64_t sub_22C3F2F3C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v52 = *(v0 + 552);
  v53 = *(v0 + 616);
  v54 = *(v0 + 544);
  v47 = *(v0 + 608);
  v48 = *(v0 + 536);
  v6 = *(v0 + 528);
  v49 = *(v0 + 512);
  v50 = *(v0 + 504);
  v51 = *(v0 + 560);
  v59 = *(v0 + 488);
  v60 = *(v0 + 480);
  v61 = *(v0 + 472);
  v55 = *(v0 + 464);
  v56 = *(v0 + 456);
  v57 = *(v0 + 440);
  v58 = *(v0 + 432);
  v46 = *(v0 + 264);
  v7 = *(v0 + 248);
  *(swift_task_alloc() + 16) = v7;
  sub_22C909CDC();

  sub_22C36BBB4();
  *(v0 + 632) = sub_22C3F4780(v8, v9, MEMORY[0x277D42D38]);
  sub_22C37B1F8();
  sub_22C909E7C();
  v10 = *(v4 + 8);
  *(v0 + 640) = v10;
  *(v0 + 648) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  sub_22C3ED2AC(v46, v1);
  v10(v2, v5);
  sub_22C90065C();
  sub_22C909DDC();

  v10(v1, v5);
  *(v0 + 656) = sub_22C901D3C();
  sub_22C36A748();
  sub_22C36C640(v11, v12, v13, v14);
  *(v0 + 816) = *MEMORY[0x277D0E5C0];
  v15 = *(v6 + 104);
  *(v0 + 664) = v15;
  *(v0 + 672) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v48);
  *(v0 + 680) = sub_22C901D0C();
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v19);
  *(v0 + 820) = *MEMORY[0x277D0E5C8];
  *(v0 + 688) = *(v50 + 104);
  sub_22C3700D4();
  *(v0 + 696) = v20;
  v21(v49);
  sub_22C901D4C();
  sub_22C37B1F8();
  sub_22C909DEC();
  *(v0 + 704) = *(v52 + 8);
  sub_22C380478();
  *(v0 + 712) = v22;
  v23(v51, v54);
  v10(v47, v5);
  *(v0 + 720) = sub_22C901C4C();
  sub_22C36A748();
  sub_22C36C640(v24, v25, v26, v27);
  *(v0 + 824) = *MEMORY[0x277D0E578];
  *(v0 + 728) = *(v56 + 104);
  sub_22C3700D4();
  *(v0 + 736) = v28;
  v29(v55);
  *(v0 + 744) = sub_22C901BDC();
  sub_22C36A748();
  sub_22C36C640(v30, v31, v32, v33);
  *(v0 + 828) = *MEMORY[0x277D0E580];
  *(v0 + 752) = *(v58 + 104);
  sub_22C3700D4();
  *(v0 + 760) = v34;
  v35(v57);
  sub_22C901C5C();
  sub_22C37B1F8();
  sub_22C909E2C();
  *(v0 + 768) = *(v60 + 8);
  sub_22C380478();
  *(v0 + 776) = v36;
  v37(v59, v61);
  v10(v53, v5);
  sub_22C9062FC();
  sub_22C36A748();
  sub_22C36C640(v38, v39, v40, v41);
  sub_22C3758BC();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 784) = v42;
  *v42 = v43;
  v42[1] = sub_22C3F33E4;
  sub_22C3F48FC();

  return MEMORY[0x282166B58](v44);
}

uint64_t sub_22C3F33E4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 792) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F34E0()
{
  v2 = *(v0 + 312);
  v3 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C3F4718(v2);
  }

  else
  {
    v107 = *(v0 + 768);
    v106 = *(v0 + 744);
    v105 = *(v0 + 720);
    v104 = *(v0 + 704);
    v102 = *(v0 + 688);
    v101 = *(v0 + 820);
    v99 = *(v0 + 680);
    v98 = *(v0 + 664);
    v97 = *(v0 + 816);
    v96 = *(v0 + 656);
    v94 = *(v0 + 536);
    v95 = *(v0 + 520);
    v92 = *(v0 + 512);
    v93 = *(v0 + 496);
    v103 = *(v0 + 472);
    v100 = *(v0 + 544);
    v87 = *(v3 + 48);
    v88 = *(v0 + 408);
    v89 = *(v0 + 392);
    v90 = *(v0 + 416);
    v85 = *(v0 + 352);
    v4 = sub_22C3749E4();
    v5 = v1(v4);
    v13 = sub_22C37734C(v5, v6, v7, v8, v9, v10, v11, v12, v80);
    (v3)(v13);
    v14 = sub_22C3F4910();
    v15 = v1(v14);
    v23 = sub_22C37B538(v15, v16, v17, v18, v19, v20, v21, v22, v81, v83, v85);
    (v3)(v23);
    v24 = v88;
    v25 = sub_22C90321C();
    v33 = sub_22C3F48A8(v25, v26, v27, v28, v29, v30, v31, v32, v82, v84, v86, v87, v88, v89, v90);
    v34(v33);
    v35 = sub_22C3F4864();
    v36(v35);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    sub_22C382F1C(inited, xmmword_22C90F800);
    v38 = sub_22C90444C();
    inited[4].n128_u64[1] = v38;
    inited[5].n128_u64[0] = sub_22C3F4780(&qword_27D9BBC98, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
    v39 = sub_22C36D548(&inited[3]);
    (*(*(v38 - 8) + 16))(v39, v91, v38);
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_22C90F870;
    sub_22C3F4874(v40, "_OverrideConfigurationHelper.renderedPromptSanitizer(.init(overrides:.withoutDefault(nil),guardrails:.withoutDefault(nil)))");
    v41 = sub_22C369B68();
    sub_22C36C640(v41, v42, v43, v96);
    v98(v94, v97, v95);
    sub_22C36A748();
    sub_22C36C640(v44, v45, v46, v99);
    v102(v92, v101, v93);
    sub_22C37EB94();
    *(v40 + 72) = v100;
    sub_22C36D548((v40 + 48));
    sub_22C901CFC();
    v47 = sub_22C36D264();
    v104(v47);
    *(v40 + 80) = v24;
    *(v40 + 88) = 0x800000022C930280;
    sub_22C36A748();
    sub_22C36C640(v48, v49, v50, v105);
    v51 = sub_22C3F48D4();
    v52(v51);
    v53 = sub_22C369B68();
    sub_22C36C640(v53, v54, v55, v106);
    v56 = sub_22C3F48E8();
    v57(v56);
    sub_22C36D264();
    sub_22C901C5C();
    *(v40 + 120) = v103;
    sub_22C36D548((v40 + 96));
    sub_22C901CDC();
    v58 = sub_22C36BAFC();
    v107(v58);
    sub_22C380120();
    v59 = sub_22C909F0C();
    sub_22C3765E4(v59);

    v60 = sub_22C3819AC();
    v61(v60);
    v62 = sub_22C3F48C0();
    v63(v62);
    v64 = sub_22C3F4890();
    v65(v64);
    v66 = sub_22C3F4864();
    v67(v66);
  }

  v68 = *(v0 + 640);
  v69 = *(v0 + 280);
  sub_22C909DCC();
  *(v0 + 232) = v69;
  v70 = sub_22C90194C();
  sub_22C37F720(v70);
  v71 = sub_22C36D264();
  v68(v71);
  v72 = sub_22C9018DC();
  v73 = swift_task_alloc();
  *(v0 + 800) = v73;
  sub_22C372660();
  v76 = sub_22C3F4780(v74, v75, MEMORY[0x277D71A68]);
  *v73 = v0;
  v73[1] = sub_22C3F3A88;
  v77 = *(v0 + 288);
  v78 = *(v0 + 240);

  return MEMORY[0x282165A60](v78, v72, v77, v76);
}

uint64_t sub_22C3F3A88()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 808) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3F3BE4()
{
  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[71];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v2, v3);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C3F3D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v23 = sub_22C379F64();
  v24(v23);
  v25 = sub_22C36BBCC();
  v26 = v22(v25);
  sub_22C3F47E8(v26, v27, v28, v29, v30, v31, v32, v33);

  sub_22C3F4854();
  sub_22C381608();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v23 = sub_22C379F64();
  v24(v23);
  v25 = sub_22C36BBCC();
  v26 = v22(v25);
  sub_22C3F47E8(v26, v27, v28, v29, v30, v31, v32, v33);

  sub_22C3F4854();
  sub_22C381608();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F3FAC(uint64_t a1)
{
  v2 = sub_22C909D9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90444C();
  v13[3] = v6;
  v13[4] = sub_22C3F4780(&qword_27D9BBC98, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  v7 = sub_22C36D548(v13);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  v8 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(v13);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C90F800;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x2318B71C0](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22C3F41D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F47E4;

  return sub_22C3F08EC();
}

uint64_t sub_22C3F429C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F4378;

  return sub_22C3F0DF0();
}

uint64_t sub_22C3F4378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C369A3C();
  v10 = *v5;
  sub_22C369970();
  *v11 = v10;

  v16 = *(v10 + 8);
  if (!v4)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
  }

  return v16(v12, v13, v14, v15);
}

uint64_t sub_22C3F4494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C3F44AC()
{
  sub_22C369980();
  sub_22C3F9FDC(v0[2], v0[3], v0[4]);
  v1 = sub_22C37052C();

  return v2(v1);
}

uint64_t sub_22C3F4508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C3F4520()
{
  sub_22C369980();
  sub_22C3FA19C(v0[2], v0[3], v0[4], v0[5]);
  v1 = sub_22C37052C();

  return v2(v1);
}

uint64_t sub_22C3F457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22C3F47E4;

  return sub_22C3F4494(a1, v10, v11, a4, a5);
}

uint64_t sub_22C3F4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_22C3F47E4;

  return sub_22C3F4508(a1, a2, v12, v13, a5, a6);
}

uint64_t sub_22C3F4718(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3F4780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3F47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C3F4874@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD00000000000007BLL;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

__n128 sub_22C3F4924(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C3F4938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3F4978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C3F49D4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_22C374168(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_22C3F4A28()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_22C374168(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22C3F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C3F4A98()
{
  v1 = v0[6];
  sub_22C59A450();
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3F4BD8;
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v5, v6, v2, v3);
}

uint64_t sub_22C3F4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C369A3C();
  v11 = v10;
  v12 = *v5;
  sub_22C369970();
  *v13 = v12;
  v11[8] = v4;

  if (v4)
  {
    v14 = sub_22C3F4D84;
  }

  else
  {
    v11[9] = a4;
    v11[10] = a3;
    v11[11] = a2;
    v11[12] = a1;
    v14 = sub_22C3F4D14;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_22C3F4D14()
{
  sub_22C59AA70();
  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_22C3F4D84()
{
  sub_22C59B1A0();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22C3F4E18()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22C3F4F3C;

  return v6(v2, v3);
}

uint64_t sub_22C3F4F3C(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3F5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3F4378;

  return sub_22C3F4A7C(a1, a2, a3, a4);
}

uint64_t sub_22C3F5104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3DCFD4;

  return sub_22C3F4E04();
}

uint64_t sub_22C3F5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = sub_22C9063DC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90046C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = type metadata accessor for FullPlannerHTTPClientInterface(0);
  v23 = a5 + *(v22 + 28);
  *v23 = 1;
  *(v23 + 1) = 0x3FF0000000000000;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = 0x3FF0000000000000;
  *(v23 + 40) = xmmword_22C911480;
  a5[1] = a2;
  a5[2] = a3;
  (*(v17 + 16))(v21, a1, v15);
  type metadata accessor for PlannerHTTPClient(0);
  swift_allocObject();
  *a5 = PlannerHTTPClient.init(with:)(v21);
  sub_22C903F7C();
  v24 = sub_22C9063CC();
  v25 = sub_22C90AACC();
  if (sub_22C370048(v25))
  {
    v26 = sub_22C36D240();
    *v26 = 0;
    _os_log_impl(&dword_22C366000, v24, v25, "Created a FullPlannerModelClient with PlannerHTTPClient", v26, 2u);
    sub_22C3699EC();
  }

  (*(v17 + 8))(a1, v15);
  (*(v10 + 8))(v14, v28);
  return sub_22C3E17AC(a4, a5 + *(v22 + 24));
}

uint64_t sub_22C3F53CC(const char *a1)
{
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C903F7C();
  v9 = sub_22C9063CC();
  v10 = sub_22C90AABC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_22C36D240();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v9, v10, a1, v11, 2u);
    sub_22C3699EC();
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_22C3F54E4()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v5);
  v1[11] = sub_22C3699D4();
  v6 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  v1[12] = v6;
  sub_22C369914(v6);
  v1[13] = sub_22C3699D4();
  v1[14] = sub_22C9063DC();
  sub_22C369B5C();
  v1[15] = v7;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22C3F55F8()
{
  v1 = type metadata accessor for FullPlannerHTTPClientInterface(0);
  v2 = *(type metadata accessor for FullPlannerPreferences(0) + 108);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (*(v0 + 160))
  {

    sub_22C37FCB8();
    sub_22C381608();

    __asm { BRAA            X3, X16 }
  }

  sub_22C903F7C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AACC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_22C36D240();
    sub_22C36C890(v7);
    _os_log_impl(&dword_22C366000, v5, v6, "Running completion request using foundation models", v2, 2u);
    sub_22C372FB0();
  }

  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v32 = *(v0 + 88);
  v33 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 56);

  (*(v9 + 8))(v8, v10);
  v15 = sub_22C3F9740(v14, v13);
  v30 = v16;
  v31 = v15;
  v17 = *(v12 + 8);
  v18 = *(v12 + 16);
  v19 = (v12 + *(v1 + 28));
  v20 = *v19;
  v21 = v19[6];
  v29 = v19[5];
  v22 = sub_22C90046C();
  v27 = *(v19 + 3);
  v28 = *(v19 + 1);
  sub_22C36C640(v32, 1, 1, v22);
  v23 = *(v33 + 36);
  sub_22C36C640(v11 + v23, 1, 1, v22);
  *v11 = v17;
  *(v11 + 8) = v18;
  *(v11 + 16) = v31;
  *(v11 + 24) = v30;
  *(v11 + 32) = v20;
  *(v11 + 56) = v27;
  *(v11 + 40) = v28;
  *(v11 + 72) = v29;
  *(v11 + 80) = v21;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;

  sub_22C3F94FC(v32, v11 + v23);
  sub_22C59A450();
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v24[1] = sub_22C3F58D0;
  sub_22C381608();

  __asm { BR              X4 }
}

uint64_t sub_22C3F58D0()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3F59D4()
{
  sub_22C3743E4();
  v1 = *(v0 + 48);
  sub_22C59AA70();

  if (*(v1 + 16))
  {
    v2 = *(v0 + 104);

    sub_22C36A78C();
    sub_22C3F956C(v2, v3);

    sub_22C37FCB8();
    v4 = sub_22C36D264();

    return v5(v4);
  }

  else
  {

    sub_22C903F7C();
    v7 = sub_22C9063CC();
    v8 = sub_22C90AADC();
    if (sub_22C37B204(v8))
    {
      v9 = sub_22C36D240();
      sub_22C36C890(v9);
      sub_22C36BB14(&dword_22C366000, v10, v11, "No completion results found");
      sub_22C372FB0();
    }

    v12 = sub_22C36BAFC();
    v13(v12);
    v14 = sub_22C3F010C();
    sub_22C36FBE4(&type metadata for FullPlannerModelClientError, v14);
    *v15 = 0;
    v16 = *(v0 + 104);
    swift_willThrow();
    sub_22C36A78C();
    sub_22C3F956C(v16, v17);

    sub_22C369A24();

    return v18();
  }
}

uint64_t sub_22C3F5BBC()
{
  sub_22C3743E4();
  sub_22C36BB08();
  sub_22C59B1A0();
  v1 = *(v0 + 104);
  swift_willThrow();
  sub_22C36A78C();
  sub_22C3F956C(v1, v2);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C3F5C78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 480) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  sub_22C90A17C();
  *(v5 + 128) = swift_task_alloc();
  v6 = sub_22C90637C();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  v7 = sub_22C90634C();
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v8 = sub_22C90636C();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  *(v5 + 240) = swift_task_alloc();
  v9 = sub_22C90046C();
  *(v5 + 248) = v9;
  *(v5 + 256) = *(v9 - 8);
  *(v5 + 264) = swift_task_alloc();
  v10 = sub_22C9063DC();
  *(v5 + 272) = v10;
  *(v5 + 280) = *(v10 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v11 = sub_22C8FFE7C();
  *(v5 + 352) = v11;
  *(v5 + 360) = *(v11 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F6000, 0, 0);
}

uint64_t sub_22C3F6000()
{
  v62 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 112);
  v3 = *(v0 + 480);
  v4 = *(v0 + 104);
  v5 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  sub_22C3F8E28(0xEB00000000736E6FLL, v4, v2, v3 & 1, v4 + *(v5 + 36), v1);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  sub_22C90403C();
  (*(v9 + 16))(v7, v6, v8);
  v10 = sub_22C9063CC();
  v11 = sub_22C90AABC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 368);
  if (v12)
  {
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = sub_22C36FB44();
    v58 = sub_22C370060();
    v61 = v58;
    *v16 = 136315138;
    sub_22C8FFE4C();
    result = sub_22C370B74(v15, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 360);
    v53 = *(v0 + 352);
    v54 = *(v0 + 368);
    v55 = *(v0 + 280);
    v56 = *(v0 + 272);
    v57 = *(v0 + 344);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 248);
    (*(v20 + 32))(v19, *(v0 + 240), v21);
    sub_22C3F96DC(&qword_281435848, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_22C90B47C();
    v24 = v23;
    (*(v20 + 8))(v19, v21);
    v25 = *(v18 + 8);
    v25(v54, v53);
    v26 = sub_22C36F9F4(v22, v24, &v61);

    *(v16 + 4) = v26;
    _os_log_impl(&dword_22C366000, v10, v11, "Request URL is : %s", v16, 0xCu);
    sub_22C36FF94(v58);
    sub_22C3699EC();
    sub_22C36D69C();

    v27 = *(v55 + 8);
    v27(v57, v56);
  }

  else
  {
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    v30 = *(v0 + 344);
    v31 = *(v0 + 272);
    v32 = *(v0 + 280);

    v25 = *(v29 + 8);
    v25(v13, v28);
    v27 = *(v32 + 8);
    v27(v30, v31);
  }

  *(v0 + 384) = v27;
  *(v0 + 392) = v25;
  v33 = *(v0 + 224);
  v34 = *(v0 + 200);
  v35 = *(v0 + 208);
  sub_22C90369C();
  sub_22C90369C();
  sub_22C90635C();
  sub_22C90631C();
  v36 = *(v35 + 8);
  *(v0 + 400) = v36;
  *(v0 + 408) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v33, v34);
  v37 = sub_22C90635C();
  v38 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v39 = sub_22C36D240();
    *v39 = 0;
    v40 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v37, v38, v40, "PlannerHTTPAPISession.data", "", v39, 2u);
    sub_22C36D69C();
  }

  v59 = *(v0 + 232);
  v42 = *(v0 + 192);
  v41 = *(v0 + 200);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  v45 = *(v0 + 168);
  v46 = *(v0 + 120);

  (*(v45 + 16))(v43, v42, v44);
  sub_22C9063AC();
  swift_allocObject();
  *(v0 + 416) = sub_22C90639C();
  v47 = *(v45 + 8);
  *(v0 + 424) = v47;
  *(v0 + 432) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v42, v44);
  v36(v59, v41);
  v48 = *(v46 + 24);
  ObjectType = swift_getObjectType();
  sub_22C369B5C();
  v60 = (v50 + *v50);
  v51 = swift_task_alloc();
  *(v0 + 440) = v51;
  *v51 = v0;
  v51[1] = sub_22C3F65F0;
  v52 = *(v0 + 376);

  return v60(v52, ObjectType, v48);
}

uint64_t sub_22C3F65F0()
{
  sub_22C369980();
  v2 = *v1;
  v2[56] = v3;
  v2[57] = v4;
  v2[58] = v5;
  v2[59] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C3F6700(uint64_t a1)
{
  v216 = v1;
  sub_22C90369C();
  v2 = sub_22C90635C();
  sub_22C90638C();
  v3 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v5 = *(v1 + 144);
    v4 = *(v1 + 152);
    v6 = *(v1 + 136);

    sub_22C9063BC();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
      v7 = "";
    }

    v8 = sub_22C36D240();
    *v8 = 0;
    v9 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v9, "PlannerHTTPAPISession.data", v7, v8, 2u);
    sub_22C3699EC();
  }

  v10 = *(v1 + 424);
  v11 = v2;
  v12 = *(v1 + 400);
  v13 = *(v1 + 176);
  v14 = *(v1 + 160);

  v10(v13, v14);
  v15 = sub_22C36D264();
  v12(v15);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  v18 = *(v1 + 464);
  sub_22C90403C();
  v19 = v18;
  v20 = sub_22C9063CC();
  v21 = sub_22C90AACC();
  if (sub_22C370048(v21))
  {
    v22 = *(v1 + 464);
    v23 = sub_22C36FB44();
    *v23 = 134217984;
    *(v23 + 4) = sub_22C386118();

    sub_22C372114();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_22C36D69C();
  }

  else
  {

    v20 = *(v1 + 464);
  }

  v29 = *(v1 + 384);

  v30 = sub_22C36D264();
  v29(v30);
  v31 = sub_22C386118();
  if (v31 != 302)
  {
    if (v31 == 429)
    {
      sub_22C90403C();
      v54 = sub_22C9063CC();
      v55 = sub_22C90AADC();
      if (sub_22C37B204(v55))
      {
        v56 = sub_22C36D240();
        sub_22C36C890(v56);
        sub_22C36BB14(&dword_22C366000, v57, v58, "Rate limited!");
        sub_22C372FB0();
      }

      v59 = *(v1 + 456);
      v60 = *(v1 + 464);
      v61 = *(v1 + 448);
      v62 = *(v1 + 384);
      v205 = *(v1 + 376);
      v208 = *(v1 + 392);
      v201 = *(v1 + 352);
      v63 = *(v1 + 320);
      v64 = *(v1 + 272);

      v62(v63, v64);
      v65 = sub_22C3F9618();
      sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v65);
      *v66 = xmmword_22C911490;
      swift_willThrow();
      sub_22C38B120(v61, v59);

      goto LABEL_20;
    }

    if (v31 != 401)
    {
      if (v31 >= 300)
      {
        sub_22C5CF7D8(&v212);
        v135 = v214;
        v136 = *(v1 + 464);
        if (v214)
        {
          v210 = v213;
          sub_22C90403C();
          v137 = v136;

          v138 = sub_22C9063CC();
          v139 = sub_22C90AADC();

          v140 = os_log_type_enabled(v138, v139);
          v141 = *(v1 + 464);
          v142 = *(v1 + 384);
          v203 = *(v1 + 296);
          v143 = *(v1 + 272);
          if (v140)
          {
            v144 = swift_slowAlloc();
            v199 = v142;
            v145 = sub_22C370060();
            v215[0] = v145;
            *v144 = 134218242;
            *(v144 + 4) = [v17 0x1FAA064F8];

            *(v144 + 12) = 2080;
            sub_22C3825E4();
            sub_22C90AF5C();

            sub_22C379F84();
            *(v1 + 80) = v146;
            v147 = sub_22C90B47C();
            MEMORY[0x2318B7850](v147);

            sub_22C37FC8C();
            MEMORY[0x2318B7850](v210, v135);
            v148 = sub_22C36F9F4(v212, v213, v215);

            *(v144 + 14) = v148;
            _os_log_impl(&dword_22C366000, v138, v139, "Unhandled HTTP status: %ld error response: %s", v144, 0x16u);
            sub_22C36FF94(v145);
            v149 = &off_278729000;
            sub_22C3699EC();
            sub_22C3699EC();

            v199(v203, v143);
          }

          else
          {

            v142(v203, v143);
            v149 = 0x1FAA06000;
          }

          v160 = *(v1 + 464);
          v161 = *(v1 + 448);
          v192 = *(v1 + 456);
          v200 = *(v1 + 376);
          v204 = *(v1 + 392);
          v197 = *(v1 + 352);
          v212 = 0;
          v213 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C3819C0();
          v215[0] = 0xD000000000000017;
          v215[1] = v162;
          *(v1 + 64) = [v17 v149[396]];
          v163 = sub_22C90B47C();
          MEMORY[0x2318B7850](v163);

          MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C9303B0);
          v212 = 0;
          v213 = 0xE000000000000000;
          sub_22C90AF5C();

          sub_22C379F84();
          *(v1 + 72) = v164;
          v165 = sub_22C90B47C();
          MEMORY[0x2318B7850](v165);

          sub_22C37FC8C();
          MEMORY[0x2318B7850](v210, v135);

          MEMORY[0x2318B7850](v212, v213);

          v166 = sub_22C3F9618();
          v167 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v166);
          sub_22C37B550(v167, v168, v169, v170);
          sub_22C38B120(v161, v192);

          v204(v200, v197);
          goto LABEL_37;
        }

        sub_22C90403C();
        v150 = v136;
        v151 = sub_22C9063CC();
        v152 = sub_22C90AADC();
        if (sub_22C370048(v152))
        {
          v153 = *(v1 + 464);
          v154 = sub_22C36FB44();
          *v154 = 134217984;
          *(v154 + 4) = sub_22C386118();

          sub_22C372114();
          _os_log_impl(v155, v156, v157, v158, v159, 0xCu);
          sub_22C36D69C();
          v39 = *(v1 + 464);
        }

        else
        {

          v39 = *(v1 + 464);
          v151 = v39;
        }

        v171 = *(v1 + 448);
        v195 = *(v1 + 456);
        v172 = *(v1 + 384);
        v205 = *(v1 + 376);
        v208 = *(v1 + 392);
        v201 = *(v1 + 352);
        v173 = *(v1 + 288);
        v174 = *(v1 + 272);

        v172(v173, v174);
        sub_22C3825E4();
        sub_22C90AF5C();

        sub_22C3819C0();
        v212 = 0xD000000000000022;
        v213 = v175;
        *(v1 + 56) = sub_22C386118();
        v176 = sub_22C90B47C();
        MEMORY[0x2318B7850](v176);

        v177 = sub_22C3F9618();
        v178 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v177);
        sub_22C37B550(v178, v179, v180, v181);
        v52 = v171;
        v53 = v195;
        goto LABEL_16;
      }

LABEL_23:
      v69 = *(v1 + 472);
      sub_22C3F95C4();
      sub_22C8FFEAC();
      if (!v69)
      {
        sub_22C90403C();
        v90 = *(v1 + 40);
        v190 = *(v1 + 32);
        v91 = *(v1 + 48);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v92 = sub_22C9063CC();
        v93 = sub_22C90AACC();
        v94 = os_log_type_enabled(v92, v93);
        v191 = *(v1 + 448);
        v193 = *(v1 + 456);
        v95 = *(v1 + 392);
        v96 = *(v1 + 376);
        v97 = *(v1 + 352);
        v207 = *(v1 + 464);
        v194 = *(v1 + 416);
        v196 = *(v1 + 280);
        v198 = *(v1 + 272);
        v202 = *(v1 + 312);
        if (v94)
        {
          v188 = *(v1 + 376);
          v98 = sub_22C36FB44();
          v185 = v97;
          v99 = sub_22C370060();
          v215[0] = v99;
          *v98 = 136315138;
          sub_22C90AF5C();

          v212 = 3826793;
          v213 = 0xE300000000000000;
          v100 = sub_22C36D264();
          MEMORY[0x2318B7850](v100);
          MEMORY[0x2318B7850](0x3A6C65646F6D20, 0xE700000000000000);
          MEMORY[0x2318B7850](v190, v90);
          MEMORY[0x2318B7850](0x74656C706D6F6320, 0xED00003A736E6F69);
          v101 = MEMORY[0x2318B7AD0](v91, &type metadata for Completion);
          MEMORY[0x2318B7850](v101);

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v102 = sub_22C36F9F4(3826793, 0xE300000000000000, v215);

          *(v98 + 4) = v102;
          _os_log_impl(&dword_22C366000, v92, v93, "Received response from Ajax server: %s", v98, 0xCu);
          sub_22C36FF94(v99);
          sub_22C3699EC();
          sub_22C3699EC();
          sub_22C38B120(v191, v193);

          v111 = sub_22C3F972C(v103, v104, v105, v106, v107, v108, v109, v110, v95, v185, v188, v190, v191, v193, v194, v196, v198, v202);
          v112(v111);
          v183(v189, v186);
        }

        else
        {

          sub_22C38B120(v191, v193);

          v130 = sub_22C3F972C(v122, v123, v124, v125, v126, v127, v128, v129, v182, v184, v187, v190, v191, v193, v194, v196, v198, v202);
          v131(v130);
          v95(v96, v97);
        }

        sub_22C369B78();
        v132 = *(v1 + 96);
        v133 = *(v1 + 32);
        v134 = *(v1 + 40);
        *v132 = *(v1 + 16);
        *(v132 + 16) = v133;
        *(v132 + 24) = v134;

        sub_22C369A24();
        goto LABEL_38;
      }

      v70 = v69;
      sub_22C90A15C();
      v71 = sub_22C90A13C();
      v73 = v72;
      sub_22C3819C0();
      if (v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = v75;
      }

      sub_22C90403C();

      v77 = v69;
      v78 = sub_22C9063CC();
      v79 = sub_22C90AADC();

      v80 = os_log_type_enabled(v78, v79);
      v81 = *(v1 + 384);
      v82 = *(v1 + 304);
      v211 = *(v1 + 272);
      if (v80)
      {
        v209 = *(v1 + 384);
        if (v73)
        {
          v83 = v71;
        }

        else
        {
          v83 = 0xD000000000000016;
        }

        v84 = swift_slowAlloc();
        v206 = v82;
        v85 = swift_slowAlloc();
        v86 = sub_22C370060();
        v212 = v86;
        *v84 = 136315394;
        v87 = sub_22C36F9F4(v83, v76, &v212);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2112;
        v88 = v70;
        v89 = _swift_stdlib_bridgeErrorToNSError();
        *(v84 + 14) = v89;
        *v85 = v89;
        _os_log_impl(&dword_22C366000, v78, v79, "Error decoding Ajax server response: %s. %@", v84, 0x16u);
        sub_22C36DD28(v85, &qword_27D9BB158, qword_22C910FD0);
        sub_22C3699EC();
        sub_22C36FF94(v86);
        sub_22C3699EC();
        sub_22C3699EC();

        v209(v206, v211);
      }

      else
      {

        v81(v82, v211);
      }

      v113 = *(v1 + 456);
      v114 = *(v1 + 464);
      v115 = *(v1 + 448);
      v208 = *(v1 + 392);
      v116 = *(v1 + 376);
      v117 = *(v1 + 352);
      v118 = sub_22C3F9618();
      sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v118);
      *v119 = xmmword_22C9114A0;
      swift_willThrow();
      sub_22C38B120(v115, v113);

      v67 = v116;
      v68 = v117;
      goto LABEL_36;
    }
  }

  sub_22C90403C();
  v32 = sub_22C9063CC();
  v33 = sub_22C90AACC();
  if (sub_22C370048(v33))
  {
    *sub_22C36D240() = 0;
    sub_22C372114();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_22C36D69C();
  }

  v40 = *(v1 + 456);
  v39 = *(v1 + 464);
  v41 = *(v1 + 448);
  v42 = *(v1 + 384);
  v205 = *(v1 + 376);
  v208 = *(v1 + 392);
  v201 = *(v1 + 352);
  v43 = *(v1 + 328);
  v44 = *(v1 + 272);

  v42(v43, v44);
  sub_22C3825E4();
  sub_22C90AF5C();

  sub_22C3819C0();
  v212 = 0xD000000000000017;
  v213 = v45;
  *(v1 + 88) = [v17 statusCode];
  v46 = sub_22C90B47C();
  MEMORY[0x2318B7850](v46);

  v47 = sub_22C3F9618();
  v48 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v47);
  sub_22C37B550(v48, v49, v50, v51);
  v52 = v41;
  v53 = v40;
LABEL_16:
  sub_22C38B120(v52, v53);

LABEL_20:
  v68 = v201;
  v67 = v205;
LABEL_36:
  v208(v67, v68);
LABEL_37:
  sub_22C379820();

  sub_22C369A24();
LABEL_38:

  return v120();
}

void sub_22C3F774C()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[44];

  v1(v2, v3);
  sub_22C379820();

  sub_22C369A24();
  sub_22C381608();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C3F78FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F79A4;

  return sub_22C3F54E4();
}

uint64_t sub_22C3F79A4()
{
  sub_22C380484();
  v4 = *v3;
  sub_22C369970();
  *v5 = v4;

  sub_22C37FCB8();
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_22C3F7AF8()
{
  sub_22C3715A0();
  v0 = sub_22C36BAFC();
  return v1(v0);
}

uint64_t sub_22C3F7B38()
{
  sub_22C3715A0();
  v0 = sub_22C36BAFC();
  return v1(v0);
}

uint64_t sub_22C3F7B78()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v5);
  v1[6] = sub_22C3699D4();
  v1[7] = sub_22C9063DC();
  sub_22C369B5C();
  v1[8] = v6;
  v1[9] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F7C54(uint64_t a1)
{
  sub_22C903F7C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "Running completion request using TokenGeneration", v1, 2u);
    sub_22C372FB0();
  }

  v6 = v2[6];
  v8 = v2[4];
  v7 = v2[5];

  v9 = sub_22C36BAFC();
  v10(v9);
  v11 = *(v7 + 3);
  sub_22C374168(v7, v11);
  v12 = (*(*(v8 + 24) + 8))(*(v8 + 16));
  v14 = v13;
  v2[10] = v13;
  v15 = *(v8 + 36);
  v16 = sub_22C901B3C();
  sub_22C36985C();
  (*(v17 + 16))(v6, &v7[v15], v16);
  sub_22C36C640(v6, 0, 1, v16);
  v18 = swift_task_alloc();
  v2[11] = v18;
  *v18 = v2;
  v18[1] = sub_22C3F7E38;
  v19 = v2[6];
  v20 = v2[3];

  return sub_22C3EE398(v12, v14, v20, 0, 0, 255, v19, v11);
}

uint64_t sub_22C3F7E38()
{
  sub_22C3743E4();
  sub_22C3819CC();
  v5 = *v3;
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;
  *v7 = *v3;
  v6[12] = v1;

  v8 = v5[6];
  if (!v1)
  {
    v6[13] = v2;
    v6[14] = v0;
    v6[15] = v4;
  }

  sub_22C36DD28(v8, &qword_27D9BBC20, &qword_22C911290);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F7FBC()
{
  sub_22C369980();

  sub_22C37FCB8();
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1(v2, v3);
}

uint64_t sub_22C3F8034()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3F80B0()
{
  sub_22C36D5EC();
  sub_22C374168(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22C382F3C();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22C3F81B8;
  v3 = sub_22C36BAFC();

  return v5(v3);
}

uint64_t sub_22C3F81B8()
{
  sub_22C380484();
  v4 = *v3;
  sub_22C369970();
  *v5 = v4;

  sub_22C37FCB8();
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_22C3F82B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F7B78();
}

uint64_t sub_22C3F8364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F809C();
}

uint64_t sub_22C3F83F0()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v7);
  v1[13] = sub_22C3699D4();
  v8 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  v1[14] = v8;
  sub_22C369914(v8);
  v1[15] = sub_22C3699D4();
  v1[16] = sub_22C9063DC();
  sub_22C369B5C();
  v1[17] = v9;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C3F8514(uint64_t a1)
{
  v54 = v1;
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C37B204(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Running completion request using TokenGeneration");
    sub_22C372FB0();
  }

  v7 = *(v1 + 136);
  v8 = *(v1 + 80);

  v9 = *(v7 + 8);
  v10 = sub_22C36BAFC();
  v9(v10);
  if (v8)
  {
    v11 = *(v1 + 120);
    v12 = *(v1 + 96);

    sub_22C903F7C();
    sub_22C3F9498(v12, v11);
    v13 = sub_22C9063CC();
    v14 = sub_22C90AACC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 152);
    v17 = *(v1 + 128);
    v18 = *(v1 + 120);
    if (v15)
    {
      v52 = *(v1 + 152);
      v19 = sub_22C36FB44();
      v51 = v9;
      v20 = sub_22C370060();
      v53 = v20;
      *v19 = 136315138;
      *(v1 + 208) = *(v18 + 40);
      v21 = sub_22C90A1AC();
      v23 = v22;
      sub_22C36BBD8();
      v24 = sub_22C36F9F4(v21, v23, &v53);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_22C366000, v13, v14, "Sending grammar with completion request. Mode=%s", v19, 0xCu);
      sub_22C36FF94(v20);
      sub_22C3699EC();
      sub_22C3699EC();

      (v51)(v52, v17);
    }

    else
    {

      sub_22C36BBD8();
      (v9)(v16, v17);
    }

    v35 = *(v1 + 104);
    v36 = *(v1 + 112);
    v37 = *(v1 + 96);
    sub_22C378A4C(v37, v1 + 16);
    v38 = *(v1 + 40);
    v39 = *(v1 + 48);
    sub_22C374168((v1 + 16), v38);
    v40 = *(v37 + 40) != 0;
    v41 = *(v36 + 24);
    v42 = sub_22C901B3C();
    sub_22C36985C();
    (*(v43 + 16))(v35, v37 + v41, v42);
    sub_22C36C640(v35, 0, 1, v42);
    v44 = swift_task_alloc();
    *(v1 + 168) = v44;
    *v44 = v1;
    v44[1] = sub_22C3F8900;
    v45 = *(v1 + 104);
    v47 = *(v1 + 80);
    v46 = *(v1 + 88);
    v48 = *(v1 + 64);
    v49 = *(v1 + 72);
    v50 = *(v1 + 56);
    v56 = v39;

    return sub_22C3EE398(v50, v48, v46, v49, v47, v40, v45, v38);
  }

  else
  {
    sub_22C903F7C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (sub_22C37B204(v26))
    {
      v27 = sub_22C36D240();
      sub_22C36C890(v27);
      sub_22C36BB14(&dword_22C366000, v28, v29, "Constrained decoding interface is in use but no grammar was generated");
      sub_22C372FB0();
    }

    v30 = sub_22C36BAFC();
    v9(v30);
    v31 = sub_22C3F010C();
    sub_22C36FBE4(&type metadata for FullPlannerModelClientError, v31);
    *v32 = 3;
    swift_willThrow();
    sub_22C385564();

    sub_22C369A24();

    return v33();
  }
}

uint64_t sub_22C3F8900()
{
  sub_22C3743E4();
  sub_22C3819CC();
  v5 = *v3;
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;
  *v7 = *v3;
  v6[22] = v1;

  v8 = v5[13];
  if (!v1)
  {
    v6[23] = v2;
    v6[24] = v0;
    v6[25] = v4;
  }

  sub_22C36DD28(v8, &qword_27D9BBC20, &qword_22C911290);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F8A84()
{
  sub_22C36D5EC();
  sub_22C385564();

  sub_22C36FF94(v0 + 2);

  sub_22C37FCB8();
  v3 = v0[24];
  v2 = v0[25];

  return v1(v2, v3);
}

uint64_t sub_22C3F8B2C()
{
  sub_22C36D5EC();
  sub_22C36FF94((v0 + 16));
  sub_22C385564();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C3F8BD8()
{
  sub_22C36D5EC();
  sub_22C374168(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22C382F3C();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22C3F9728;
  v3 = sub_22C36BAFC();

  return v5(v3);
}

uint64_t sub_22C3F8CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F83F0();
}

uint64_t sub_22C3F8D9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3F9724;

  return sub_22C3F8BC4();
}

uint64_t sub_22C3F8E28@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a5;
  v21[0] = a4;
  v21[1] = a2;
  v23 = a3;
  v10 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v13 = sub_22C90046C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  sub_22C3F966C(a6, v12);
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v17, v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url, v13);
    if (sub_22C370B74(v12, 1, v13) != 1)
    {
      sub_22C36DD28(v12, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  sub_22C9003BC();
  sub_22C8FFE3C();
  sub_22C8FFE5C();
  v26 = 0x3D6B63616361;
  v27 = 0xE600000000000000;
  swift_getKeyPath();
  sub_22C901F3C();

  MEMORY[0x2318B7850](v24, v25);

  sub_22C8FFE5C();

  if (v22)
  {
    sub_22C8FFE1C();
  }

  sub_22C8FFE2C();
  sub_22C8FFE0C();
  type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  sub_22C3F96DC(&qword_27D9BBCE0, type metadata accessor for PlannerHTTPClient.CompletionRequest, &protocol conformance descriptor for PlannerHTTPClient.CompletionRequest);
  v18 = v28;
  sub_22C8FFF3C();
  if (v18)
  {
    v19 = sub_22C8FFE7C();
    (*(*(v19 - 8) + 8))(a7, v19);
  }

  else
  {
    sub_22C8FFE6C();
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_22C3F9210(uint64_t a1)
{
  result = type metadata accessor for PlannerHTTPClient(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FullPlannerPreferences(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C3F92A4(uint64_t a1)
{
  result = sub_22C3F9368();
  if (v2 <= 0x3F)
  {
    result = sub_22C901B3C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C3F9368()
{
  result = qword_2814347A8[0];
  if (!qword_2814347A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2814347A8);
  }

  return result;
}

unint64_t sub_22C3F940C(uint64_t a1)
{
  result = sub_22C3F9368();
  if (v2 <= 0x3F)
  {
    result = sub_22C901B3C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C3F9498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F94FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F956C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C3F95C4()
{
  result = qword_27D9BBCD0;
  if (!qword_27D9BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBCD0);
  }

  return result;
}

unint64_t sub_22C3F9618()
{
  result = qword_27D9BBCD8;
  if (!qword_27D9BBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBCD8);
  }

  return result;
}

uint64_t sub_22C3F966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3F96DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3F9740(uint64_t a1, uint64_t a2)
{
  sub_22C9063DC();
  sub_22C369824();
  v49 = v5;
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v48 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = sub_22C90363C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v53[0] = a1;
  v53[1] = a2;
  v18 = sub_22C372678(v17);
  v24 = sub_22C37162C(v18, v19, v20, v21, v22, v23, MEMORY[0x277D837D0]);
  v51 = v25;
  v52 = v24;
  v26 = *MEMORY[0x277D1EC40];
  v27 = *(v12 + 104);
  v27(v16, v26, v10);
  LOBYTE(a2) = sub_22C90362C();
  v28 = *(v12 + 8);
  v28(v16, v10);
  if (a2)
  {
    v47 = v27;
    sub_22C903F7C();
    v29 = v51;

    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();

    v46 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_22C36FB44();
      v45 = v9;
      v33 = v32;
      v34 = v30;
      v35 = sub_22C370060();
      v53[0] = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_22C36F9F4(v52, v29, v53);
      _os_log_impl(&dword_22C366000, v34, v46, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v33, 0xCu);
      sub_22C36FF94(v35);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v49 + 8))(v45, v50);
    }

    else
    {

      (*(v49 + 8))(v9, v50);
    }

    v27 = v47;
  }

  v27(v16, v26, v10);
  v36 = sub_22C90362C();
  v28(v16, v10);
  v37 = v51;
  if (v36)
  {
    v38 = v48;
    sub_22C903F7C();

    v39 = sub_22C9063CC();
    v40 = sub_22C90AABC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_22C36FB44();
      v42 = sub_22C370060();
      v53[0] = v42;
      *v41 = 136315138;

      v43 = sub_22C36F9F4(v52, v37, v53);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_22C366000, v39, v40, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v41, 0xCu);
      sub_22C36FF94(v42);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v49 + 8))(v38, v50);
  }

  return v52;
}

uint64_t sub_22C3F9B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v70 = a3;
  v66 = sub_22C909D9C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v64 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v65 = &v61 - v10;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v71 = v12;
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v67 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_22C90363C();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v23 = v22 - v21;
  v73[0] = a1;
  v73[1] = a2;
  v25 = sub_22C372678(v24);
  v31 = sub_22C37162C(v25, v26, v27, v28, v29, v30, MEMORY[0x277D837D0]);
  v33 = v32;
  v34 = *(v19 + 104);
  v69 = *MEMORY[0x277D1EC40];
  v68 = v34;
  v34(v23);
  LOBYTE(a1) = sub_22C90362C();
  v35 = *(v19 + 8);
  v35(v23, v17);
  if (a1)
  {
    v63 = v6;
    sub_22C903F7C();

    v36 = sub_22C9063CC();
    v37 = sub_22C90AABC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_22C36FB44();
      v62 = v16;
      v39 = v38;
      v40 = sub_22C370060();
      v61 = v36;
      v41 = v40;
      v73[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22C36F9F4(v31, v33, v73);
      v42 = v37;
      v43 = v61;
      _os_log_impl(&dword_22C366000, v61, v42, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v39, 0xCu);
      sub_22C36FF94(v41);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v71 + 8))(v62, v72);
    }

    else
    {

      (*(v71 + 8))(v16, v72);
    }

    v6 = v63;
  }

  v44 = v70;
  sub_22C3FA68C(v31, v33, v70);

  v68(v23, v69, v17);
  v45 = sub_22C90362C();
  result = (v35)(v23, v17);
  if (v45)
  {
    v47 = v67;
    sub_22C903F7C();
    v48 = v6;
    v49 = *(v6 + 16);
    v50 = v65;
    v51 = v66;
    v49(v65, v44, v66);
    v52 = sub_22C9063CC();
    v53 = sub_22C90AABC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = sub_22C36FB44();
      v55 = v64;
      v56 = v54;
      v70 = sub_22C370060();
      v73[0] = v70;
      *v56 = 136315138;
      v49(v55, v50, v51);
      v57 = sub_22C90A1AC();
      v59 = v58;
      (*(v48 + 8))(v50, v51);
      v60 = sub_22C36F9F4(v57, v59, v73);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_22C366000, v52, v53, "Reformatted prompt to be sent to the model follows on the next line:\n%s", v56, 0xCu);
      sub_22C36FF94(v70);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v48 + 8))(v50, v51);
    }

    return (*(v71 + 8))(v47, v72);
  }

  return result;
}

uint64_t sub_22C3F9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_22C909D6C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C909D3C();
  v15 = sub_22C3FB2B0(v14);
  (*(v10 + 8))(v14, v8);
  sub_22C90A73C();
  v16 = sub_22C90A75C();
  sub_22C36C640(v7, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a2;
  v17[6] = a3;

  sub_22C59D038(0, 0, v7, &unk_22C9116D8, v17);

  return sub_22C3FC848(v7);
}

uint64_t sub_22C3FA19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v68 = a3;
  v5 = 0;
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v66 - v7;
  sub_22C36BA0C();
  v8 = sub_22C909D6C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v73 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v76 = &v66 - v14;
  v15 = sub_22C90440C();
  v66 = v16;
  v67 = v15;
  sub_22C3A5908(&qword_27D9BBD00, &qword_22C911690);
  result = sub_22C90B1CC();
  v18 = result;
  v74 = a2;
  v75 = v8;
  v21 = *(a2 + 64);
  v20 = a2 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v77 = result + 64;
  v79 = result;
  v80 = v10;
  v71 = 0;
  v72 = v10 + 32;
  if ((v23 & v19) != 0)
  {
    while (1)
    {
      sub_22C36D6B8();
LABEL_10:
      v28 = v26 | (v5 << 6);
      v29 = *(v74 + 56);
      v30 = (*(v74 + 48) + 16 * v28);
      v31 = v30[1];
      v78 = *v30;
      sub_22C378A4C(v29 + 40 * v28, v81);
      sub_22C374168(v81, v81[3]);

      v32 = v73;
      sub_22C909DBC();
      sub_22C36FF94(v81);
      *(v77 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v18 = v79;
      v33 = (*(v79 + 48) + 16 * v28);
      *v33 = v78;
      v33[1] = v31;
      v34 = v32;
      v8 = v75;
      result = (*(v80 + 32))(*(v18 + 56) + *(v80 + 72) * v28, v34, v75);
      v35 = *(v18 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(v18 + 16) = v37;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v27 = v5;
    while (1)
    {
      v5 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v25)
      {
        break;
      }

      ++v27;
      if (*(v20 + 8 * v5))
      {
        sub_22C3700F4();
        goto LABEL_10;
      }
    }

    sub_22C3A5908(&qword_27D9BBD08, &qword_22C911698);
    result = sub_22C90B1CC();
    v38 = 0;
    v39 = 1 << *(v18 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v18 + 64);
    v42 = (v39 + 63) >> 6;
    v73 = v80 + 16;
    v74 = v80 + 8;
    v78 = result;
    v72 = result + 64;
    v43 = v71;
    while (1)
    {
      v44 = v76;
      if (!v41)
      {
        break;
      }

      sub_22C36D6B8();
LABEL_23:
      v47 = v45 | (v38 << 6);
      v48 = (*(v79 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      (*(v80 + 16))(v44, *(v79 + 56) + *(v80 + 72) * v47, v8);

      v51 = sub_22C3FB2B0(v44);
      if (v43)
      {

        v64 = sub_22C388EA8();
        v65(v64, v8);

        v78 = 0;
LABEL_27:
        v59 = v69;
        sub_22C90A73C();
        v60 = sub_22C90A75C();
        sub_22C36C640(v59, 0, 1, v60);
        v61 = swift_allocObject();
        v61[2] = 0;
        v61[3] = 0;
        v62 = v67;
        v63 = v68;
        v61[4] = v78;
        v61[5] = v63;
        v61[6] = v70;
        v61[7] = v62;
        v61[8] = v66;

        sub_22C59D038(0, 0, v59, &unk_22C9116A8, v61);

        return sub_22C3FC848(v59);
      }

      v52 = v51;
      v53 = sub_22C388EA8();
      result = v54(v53, v8);
      *(v72 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v55 = v78;
      v56 = (*(v78 + 48) + 16 * v47);
      *v56 = v49;
      v56[1] = v50;
      *(*(v55 + 56) + 8 * v47) = v52;
      v57 = *(v55 + 16);
      v36 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v36)
      {
        goto LABEL_32;
      }

      *(v78 + 16) = v58;
    }

    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v38 >= v42)
      {

        goto LABEL_27;
      }

      ++v46;
      if (*(v77 + 8 * v38))
      {
        sub_22C3700F4();
        goto LABEL_23;
      }
    }

LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22C3FA68C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9063DC();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22C9043DC();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v72 = a2;
  sub_22C3858B4();
  v15 = sub_22C90AD9C();
  v16 = *(v15 + 16);
  if (v16)
  {
    v65 = v10;
    v69 = a3;
    v71 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v16, 0, v11, v12, v13, v14);
    v17 = 0;
    v18 = v71;
    v19 = (v15 + 56);
    while (v17 < *(v15 + 16))
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v23 = *(v19 - 1);
      v22 = *v19;

      v24 = MEMORY[0x2318B76D0](v20, v21, v23, v22);
      v26 = v25;

      v71 = v18;
      v32 = v18[2];
      v31 = v18[3];
      if (v32 >= v31 >> 1)
      {
        sub_22C3B5E2C(v31 > 1, v32 + 1, 1, v27, v28, v29, v30);
        v18 = v71;
      }

      ++v17;
      v18[2] = v32 + 1;
      v33 = &v18[2 * v32];
      v33[4] = v24;
      v33[5] = v26;
      v19 += 4;
      if (v16 == v17)
      {

        a3 = v69;
        v10 = v65;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_9:
  v34 = v18[2];
  if (v34)
  {
    v35 = v18[4];
    v36 = v18[5];
    if (v34 == 1 || (v37 = sub_22C3A5968(v18), !v38))
    {

      MEMORY[0x28223BE20](v55);
      *(&v64 - 2) = v35;
      *(&v64 - 1) = v36;
      sub_22C909DAC();
    }

    else
    {
      v65 = v37;
      v66 = v38;
      v67 = v35;
      v68 = v36;

      v39 = sub_22C862EFC(1, v18);
      v43 = sub_22C46BC60(1, v39, v40, v41, v42);
      v47 = v46 >> 1;
      v48 = (v46 >> 1) - v45;
      if (__OFSUB__(v46 >> 1, v45))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v48)
      {
        v49 = v44;
        v50 = v45;
        v64 = v43;
        v69 = a3;
        v71 = MEMORY[0x277D84F90];
        sub_22C3B6324(0, v48 & ~(v48 >> 63), 0);
        if (v48 < 0)
        {
LABEL_31:
          __break(1u);
          return;
        }

        v51 = v71;
        v52 = v49 + 16 * v50 + 8;
        while (v50 < v47)
        {

          sub_22C9043EC();
          v71 = v51;
          v54 = v51[2];
          v53 = v51[3];
          if (v54 >= v53 >> 1)
          {
            sub_22C3B6324(v53 > 1, v54 + 1, 1);
            v51 = v71;
          }

          v51[2] = v54 + 1;
          (*(v8 + 32))(v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v54, v10, v70);
          ++v50;
          v52 += 16;
          if (v47 == v50)
          {
            v60 = swift_unknownObjectRelease();
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v60 = swift_unknownObjectRelease();
      v51 = MEMORY[0x277D84F90];
LABEL_26:
      MEMORY[0x28223BE20](v60);
      v61 = v68;
      *(&v64 - 6) = v67;
      *(&v64 - 5) = v61;
      v62 = v65;
      v63 = v66;
      *(&v64 - 4) = v51;
      *(&v64 - 3) = v62;
      *(&v64 - 2) = v63;
      sub_22C909DAC();
    }

    return;
  }

  v56 = v66;
  sub_22C903F7C();
  v57 = sub_22C9063CC();
  v58 = sub_22C90AADC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_22C366000, v57, v58, "Found no splits when separating the prompt on tool definition. This indicates an empty prompt", v59, 2u);
    MEMORY[0x2318B9880](v59, -1, -1);
  }

  (*(v67 + 8))(v56, v68);
  sub_22C909D2C();
}

uint64_t sub_22C3FABF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C909D9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;

  v8 = MEMORY[0x277D837D0];
  v9 = sub_22C90A49C();
  v18 = v8;
  v19 = MEMORY[0x277D42EC0];
  v16 = v9;
  v17 = v10;
  v11 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(&v16);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F800;
  (*(v5 + 16))(v13 + v12, v7, v4);
  MEMORY[0x2318B71C0](v13, v4, v11);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22C3FADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v9 = sub_22C909D9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v28 = &v26 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D42EC0];
  v33 = a1;
  v34 = a2;

  v27 = v16;
  sub_22C909CFC();
  sub_22C36FF94(&v33);
  v35 = sub_22C3A5908(&qword_27D9BBD78, &unk_22C9116E0);
  v36 = sub_22C3FCC54();
  v33 = a3;

  sub_22C909CFC();
  sub_22C36FF94(&v33);
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D42EC0];
  v33 = v30;
  v34 = v31;

  v17 = v29;
  sub_22C909CFC();
  sub_22C36FF94(&v33);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v18 = *(v10 + 72);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90FB40;
  v21 = v20 + v19;
  v22 = *(v10 + 16);
  v22(v21, v16, v9);
  v23 = v28;
  v22(v21 + v18, v28, v9);
  v22(v21 + 2 * v18, v17, v9);
  MEMORY[0x2318B71C0](v20, v9, MEMORY[0x277D42E18]);

  v24 = *(v10 + 8);
  v24(v17, v9);
  v24(v23, v9);
  return (v24)(v27, v9);
}

uint64_t sub_22C3FB0D0()
{
  result = sub_22C3FB0F0();
  qword_27D9BBCE8 = result;
  return result;
}

uint64_t sub_22C3FB0F0()
{
  v0 = sub_22C8FFEFC();
  MEMORY[0x28223BE20](v0);
  sub_22C8FFF5C();
  swift_allocObject();
  v1 = sub_22C8FFF4C();
  sub_22C3A5908(&qword_27D9BBD48, &qword_22C9116C0);
  *(swift_allocObject() + 16) = xmmword_22C90F870;
  sub_22C8FFEEC();
  sub_22C8FFEDC();
  sub_22C3FCD08(&qword_27D9BBD50, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_22C3A5908(&qword_27D9BBD58, &qword_22C9116C8);
  sub_22C3FC974();
  sub_22C90AE4C();
  sub_22C8FFF0C();
  return v1;
}

uint64_t sub_22C3FB2B0(uint64_t a1)
{
  v86 = sub_22C909D8C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v85 = v7 - v6;
  sub_22C36BA0C();
  v8 = sub_22C909D9C();
  sub_22C369824();
  v78 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v87 = sub_22C90748C();
  sub_22C369824();
  v82 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v83 = v17 - v16;
  sub_22C36BA0C();
  v79 = sub_22C9043DC();
  sub_22C369824();
  v76 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v77 = v21 - v20;
  sub_22C36BA0C();
  sub_22C909D5C();
  sub_22C369824();
  v80 = v23;
  v81 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C909D6C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  v84 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v34 = (&v75 - v33);
  (*(v29 + 16))(&v75 - v33, a1, v27);
  v35 = (*(v29 + 88))(v34, v27);
  if (v35 != *MEMORY[0x277D42DC8])
  {
    if (v35 == *MEMORY[0x277D42DD0])
    {
      (*(v29 + 96))(v34, v27);
      v61 = v34[1];
      v62 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v62 = *v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        sub_22C3A5908(&qword_27D9BBCF0, &unk_22C91DC20);
        sub_22C9074AC();
        sub_22C3FCD74();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_22C90F800;
        v63 = sub_22C3FCD8C();
        v64(v63);
        sub_22C90749C();
        return v42;
      }
    }

    else
    {
      if (v35 == *MEMORY[0x277D42DC0])
      {
        (*(v29 + 96))(v34, v27);
        v66 = v80;
        v65 = v81;
        (*(v80 + 32))(v26, v34, v81);
        sub_22C3A5908(&qword_27D9BBCF0, &unk_22C91DC20);
        sub_22C9074AC();
        sub_22C3FCD74();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_22C90F800;
        sub_22C3FCD08(&qword_27D9BBCF8, MEMORY[0x277D0E660], MEMORY[0x277D0E658]);
        v67 = v77;
        v68 = v79;
        sub_22C909D4C();
        if (v1)
        {
          (*(v66 + 8))(v26, v65);
          *(v42 + 16) = 0;
        }

        else
        {
          sub_22C9043CC();
          (*(v76 + 8))(v67, v68);
          v73 = sub_22C3FCD8C();
          v74(v73);
          sub_22C90749C();
          (*(v66 + 8))(v26, v65);
        }

        return v42;
      }

      (*(v29 + 8))(v34, v27);
    }

    return MEMORY[0x277D84F90];
  }

  v87 = v1;
  v36 = *(v29 + 96);
  v82 = v27;
  v36(v34, v27);
  v37 = v78;
  v38 = *(v78 + 32);
  v77 = v8;
  v38(v13, v34, v8);
  v76 = v13;
  result = sub_22C909D1C();
  v40 = result;
  v41 = 0;
  v83 = *(result + 16);
  v79 = v4 + 16;
  v80 = v29 + 8;
  v81 = v4 + 8;
  v42 = MEMORY[0x277D84F90];
  v43 = v4;
  while (1)
  {
    v44 = v84;
    v45 = v86;
    if (v83 == v41)
    {
      (*(v37 + 8))(v76, v77);

      return v42;
    }

    if (v41 >= *(v40 + 16))
    {
      break;
    }

    v46 = v40;
    (*(v43 + 16))(v85, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41, v86);
    sub_22C909D7C();
    v47 = v87;
    v48 = sub_22C3FB2B0(v44);
    v87 = v47;
    if (v47)
    {

      v69 = sub_22C37FCC4();
      v70(v69);
      v71 = sub_22C388EA8();
      v72(v71, v45);

      (*(v37 + 8))(v76, v77);
      return v42;
    }

    v49 = v48;
    v50 = sub_22C37FCC4();
    v51(v50);
    v52 = sub_22C388EA8();
    result = v53(v52, v45);
    v54 = *(v49 + 16);
    v55 = *(v42 + 16);
    if (__OFADD__(v55, v54))
    {
      goto LABEL_33;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v55 + v54 > *(v42 + 24) >> 1)
    {
      sub_22C590EF0();
      v42 = v56;
    }

    if (*(v49 + 16))
    {
      v57 = (*(v42 + 24) >> 1) - *(v42 + 16);
      result = sub_22C9074AC();
      if (v57 < v54)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v40 = v46;
      if (v54)
      {
        v58 = *(v42 + 16);
        v59 = __OFADD__(v58, v54);
        v60 = v58 + v54;
        if (v59)
        {
          goto LABEL_36;
        }

        *(v42 + 16) = v60;
      }
    }

    else
    {

      v40 = v46;
      if (v54)
      {
        goto LABEL_34;
      }
    }

    ++v41;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22C3FBB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  sub_22C90A17C();
  v8[8] = swift_task_alloc();
  v9 = sub_22C90747C();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FBCB8, 0, 0);
}

uint64_t sub_22C3FBCB8(uint64_t a1)
{
  v50 = v1;
  v2 = v1[3];
  if (v2)
  {

    sub_22C90746C();
    sub_22C900F8C();
    v3 = MEMORY[0x277D1E000];
    sub_22C3FCD08(&qword_27D9BBD10, MEMORY[0x277D1E000], MEMORY[0x277D1E010]);
    sub_22C3FCD08(&qword_27D9BBD18, v3, MEMORY[0x277D1E008]);

    sub_22C900F7C();

    if (qword_27D9BA5F8 != -1)
    {
      sub_22C3FCD54(&qword_27D9BA5F8);
    }

    v1[2] = v2;
    sub_22C3A5908(&qword_27D9BBD20, &qword_22C9116B0);
    sub_22C3FC8B0();
    sub_22C8FFF3C();
    sub_22C90A15C();
    sub_22C377B94();
    v12 = sub_22C90A13C();
    if (v13)
    {
      v14 = v13;
      v45 = v12;
      sub_22C903F7C();

      v15 = sub_22C9063CC();
      v16 = sub_22C90AABC();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v1[13];
      v19 = v1[11];
      v46 = v1[12];
      v47 = v1[14];
      v20 = v1[9];
      v21 = v1[10];
      if (v17)
      {
        v42 = v1[7];
        v44 = v1[9];
        v22 = v1[6];
        v43 = v1[11];
        v23 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_22C36F9F4(v22, v42, v49);
        *(v23 + 12) = 2080;
        v24 = sub_22C36F9F4(v45, v14, v49);

        *(v23 + 14) = v24;
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
        v25 = sub_22C377B94();
        sub_22C38B120(v25, v26);

        (*(v18 + 8))(v47, v46);
        (*(v21 + 8))(v43, v44);
      }

      else
      {
        v38 = sub_22C377B94();
        sub_22C38B120(v38, v39);

        (*(v18 + 8))(v47, v46);
        (*(v21 + 8))(v19, v20);
      }
    }

    else
    {
      sub_22C903F7C();
      v27 = sub_22C9063CC();
      v28 = sub_22C90AADC();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v1[15];
      v32 = v1[12];
      v31 = v1[13];
      v33 = v1[10];
      v34 = v1[11];
      v48 = v1[9];
      if (v29)
      {
        v35 = sub_22C36D240();
        *v35 = 0;
        _os_log_impl(&dword_22C366000, v27, v28, "Couldn't string-encode the structured GMS prompt for logging!", v35, 2u);
        sub_22C3699EC();
      }

      v36 = sub_22C377B94();
      sub_22C38B120(v36, v37);

      (*(v31 + 8))(v30, v32);
      (*(v33 + 8))(v34, v48);
    }
  }

  else
  {
    sub_22C903F7C();
    v4 = sub_22C9063CC();
    v5 = sub_22C90AADC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[16];
    v8 = v1[12];
    v9 = v1[13];
    if (v6)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v10, v11, "Couldn't flatten the GMS prompt for logging!");
      sub_22C3699EC();
    }

    (*(v9 + 8))(v7, v8);
  }

  sub_22C369A24();

  return v40();
}

uint64_t sub_22C3FC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_22C90A17C();
  v6[7] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FC32C, 0, 0);
}

uint64_t sub_22C3FC32C(uint64_t a1)
{
  v42 = v1;
  v2 = v1[4];
  if (v2)
  {
    sub_22C900F8C();
    v1[2] = v2;

    sub_22C3A5908(&qword_27D9BBD38, &qword_22C9116B8);
    sub_22C3FCB78(&qword_27D9BBD68, &qword_27D9BBD70, MEMORY[0x277D1E038], MEMORY[0x277D83978]);
    sub_22C3FCB78(&qword_27D9BBD30, &qword_27D9BBD40, MEMORY[0x277D1E030], MEMORY[0x277D83948]);
    sub_22C900F7C();

    if (qword_27D9BA5F8 != -1)
    {
      sub_22C3FCD54(&qword_27D9BA5F8);
    }

    v1[3] = v2;
    sub_22C8FFF3C();
    sub_22C90A15C();
    sub_22C377B94();
    v11 = sub_22C90A13C();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      sub_22C903F7C();

      v15 = sub_22C9063CC();
      v16 = sub_22C90AABC();

      v17 = os_log_type_enabled(v15, v16);
      v19 = v1[9];
      v18 = v1[10];
      v20 = v1[8];
      if (v17)
      {
        v40 = v1[8];
        v21 = sub_22C36FB44();
        v39 = v18;
        v22 = sub_22C370060();
        v41 = v22;
        *v21 = 136315138;
        v23 = sub_22C36F9F4(v13, v14, &v41);

        *(v21 + 4) = v23;
        sub_22C36FF94(v22);
        sub_22C3699EC();
        sub_22C3699EC();
        v24 = sub_22C377B94();
        sub_22C38B120(v24, v25);

        (*(v19 + 8))(v39, v40);
      }

      else
      {

        v35 = sub_22C377B94();
        sub_22C38B120(v35, v36);

        (*(v19 + 8))(v18, v20);
      }
    }

    else
    {
      sub_22C903F7C();
      v26 = sub_22C9063CC();
      v27 = sub_22C90AADC();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v1[11];
      v30 = v1[8];
      v31 = v1[9];
      if (v28)
      {
        v32 = sub_22C36D240();
        *v32 = 0;
        _os_log_impl(&dword_22C366000, v26, v27, "Couldn't string-encode the structured GMS prompt for logging!", v32, 2u);
        sub_22C3699EC();
      }

      v33 = sub_22C377B94();
      sub_22C38B120(v33, v34);

      (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    sub_22C903F7C();
    v3 = sub_22C9063CC();
    v4 = sub_22C90AADC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[12];
    v7 = v1[8];
    v8 = v1[9];
    if (v5)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v9, v10, "Couldn't flatten the GMS prompt for logging!");
      sub_22C3699EC();
    }

    (*(v8 + 8))(v6, v7);
  }

  sub_22C369A24();

  return v37();
}

uint64_t sub_22C3FC784()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_22C38B7E4(v5);

  return sub_22C3FBB50(v6, v7, v8, v9, v10, v2, v3, v4);
}

uint64_t sub_22C3FC848(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3FC8B0()
{
  result = qword_27D9BBD28;
  if (!qword_27D9BBD28)
  {
    sub_22C3AC1A0(&qword_27D9BBD20, &qword_22C9116B0);
    sub_22C3FCB78(&qword_27D9BBD30, &qword_27D9BBD40, MEMORY[0x277D1E030], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD28);
  }

  return result;
}

unint64_t sub_22C3FC974()
{
  result = qword_27D9BBD60;
  if (!qword_27D9BBD60)
  {
    sub_22C3AC1A0(&qword_27D9BBD58, &qword_22C9116C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD60);
  }

  return result;
}

uint64_t sub_22C3FC9D8()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_22C38B7E4(v3);

  return sub_22C3FC224(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_22C3FCA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C3FCB78(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BBD38, &qword_22C9116B8);
    sub_22C3FCD08(a2, MEMORY[0x277D1E028], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C3FCC54()
{
  result = qword_27D9BBD80;
  if (!qword_27D9BBD80)
  {
    sub_22C3AC1A0(&qword_27D9BBD78, &unk_22C9116E0);
    sub_22C3FCD08(&qword_27D9BBD88, MEMORY[0x277D0E660], MEMORY[0x277D0E650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD80);
  }

  return result;
}

uint64_t sub_22C3FCD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3FCD54(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_22C3FCDA0()
{
  sub_22C90414C();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  if (sub_22C90875C())
  {
    sub_22C90410C();

LABEL_5:
    v1 = sub_22C9040EC();
    v2 = 0;
    return v1 | (v2 << 32);
  }

  sub_22C90874C();
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = 0;
  v2 = 1;
  return v1 | (v2 << 32);
}

uint64_t sub_22C3FCEFC()
{
  v0 = sub_22C90035C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90046C();
  sub_22C369824();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - v14;
  sub_22C3F0160(v13, qword_27D9E3EA8);
  v22 = sub_22C37AA60(v6, qword_27D9E3EA8);
  sub_22C903F5C();
  v23 = 0x65686361434D4C4CLL;
  v24 = 0xE800000000000000;
  v21 = *MEMORY[0x277CC91D8];
  v20 = *(v2 + 104);
  v20(v5);
  sub_22C3858B4();
  sub_22C90043C();
  v16 = *(v2 + 8);
  v19 = v2 + 8;
  v16(v5, v0);
  v17 = *(v8 + 8);
  v17(v12, v6);
  v23 = 0x6E616C506C6C7546;
  v24 = 0xEB0000000072656ELL;
  (v20)(v5, v21, v0);
  sub_22C90043C();
  v16(v5, v0);
  return (v17)(v15, v6);
}

_BYTE *storeEnumTagSinglePayload for FullPlannerModelClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C3FD27C(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  sub_22C38C740(v4, v2);
  return sub_22C90B66C();
}

uint64_t sub_22C3FD2C0(uint64_t a1)
{
  v2 = sub_22C3FD3B4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3FD2FC(uint64_t a1)
{
  v2 = sub_22C3FD3B4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C3FD360()
{
  result = qword_27D9BBD90;
  if (!qword_27D9BBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD90);
  }

  return result;
}

unint64_t sub_22C3FD3B4()
{
  result = qword_27D9BBD98;
  if (!qword_27D9BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBD98);
  }

  return result;
}

uint64_t sub_22C3FD408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v168 = a5;
  v171 = a4;
  v174 = a2;
  v160 = a1;
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  sub_22C3698F8(v7);
  v8 = sub_22C90745C();
  v9 = sub_22C36A7A4(v8, v183);
  v165 = v10;
  MEMORY[0x28223BE20](v9);
  sub_22C36D234(&v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C36D234(&v143 - v14);
  sub_22C3A5908(&qword_27D9BBDA0, &qword_22C911840);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36D5B4();
  sub_22C3698F8(v16);
  v17 = sub_22C9073FC();
  v18 = sub_22C36A7A4(v17, v181);
  v156 = v19;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  sub_22C3698F8(v20);
  v21 = sub_22C90741C();
  v22 = sub_22C36A7A4(v21, &v184);
  v161 = v23;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C36D234(v24);
  v25 = sub_22C3A5908(&qword_27D9BBDA8, &qword_22C911848);
  sub_22C36A7A4(v25, &v176);
  v145 = v26;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  sub_22C36D5B4();
  sub_22C36D234(v28);
  v29 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  sub_22C36A7A4(v29, &v179);
  v147 = v30;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C36D5B4();
  sub_22C3698F8(v32);
  v33 = sub_22C909D6C();
  v34 = sub_22C36A7A4(v33, &v185);
  v172 = v35;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v37 = sub_22C90441C();
  v38 = sub_22C36A7A4(v37, v180);
  v154 = v39;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C36D234(v40);
  v177 = 0;
  type metadata accessor for CompletionPromptProperty(0);
  sub_22C369824();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = (&v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (&v143 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v149 = &v143 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v53 = &v143 - v52;
  v54 = *(a3 + 16);
  v179 = v50;
  v150 = a3;
  v148 = v51;
  if (v54)
  {
    v55 = a3 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v56 = *(v51 + 72);
    v57 = MEMORY[0x277D84F90];
    v58 = v54;
    v175 = v56;
    do
    {
      sub_22C3E8EF4(v55, v53);
      sub_22C3F02F0(v53, v47);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C3E8F58(v47);
      }

      else
      {
        v59 = *v47;
        v60 = v47[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C590270(0, *(v57 + 16) + 1, 1, v57);
          v57 = v65;
        }

        v63 = *(v57 + 16);
        v62 = *(v57 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_22C590270(v62 > 1, v63 + 1, 1, v57);
          v57 = v66;
        }

        *(v57 + 16) = v63 + 1;
        v64 = v57 + 16 * v63;
        *(v64 + 32) = v178;
        *(v64 + 40) = v60;
        v56 = v175;
      }

      v55 += v56;
      --v58;
    }

    while (v58);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v152 = sub_22C3A5968(v57);
  v151 = v67;

  if (v54)
  {
    v68 = v150 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v69 = *(v148 + 72);
    v70 = MEMORY[0x277D84F90];
    v71 = v149;
    do
    {
      sub_22C3E8EF4(v68, v71);
      sub_22C3F02F0(v71, v44);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v72 = *v44;
        v73 = v44[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590270(0, *(v70 + 16) + 1, 1, v70);
          v70 = v77;
        }

        v75 = *(v70 + 16);
        v74 = *(v70 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_22C590270(v74 > 1, v75 + 1, 1, v70);
          v70 = v78;
        }

        *(v70 + 16) = v75 + 1;
        v76 = v70 + 16 * v75;
        *(v76 + 32) = v72;
        *(v76 + 40) = v73;
      }

      else
      {
        sub_22C3E8F58(v44);
      }

      v68 += v69;
      --v54;
    }

    while (v54);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

  v150 = sub_22C3A5968(v70);
  v149 = v79;

  sub_22C3A5908(&qword_27D9BBD08, &qword_22C911698);
  v80 = v174;
  result = sub_22C90B1CC();
  v178 = result;
  v82 = 0;
  v85 = *(v80 + 64);
  v84 = v80 + 64;
  v83 = v85;
  v86 = 1 << *(v84 - 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v83;
  v89 = (v86 + 63) >> 6;
  v175 = (v172 + 8);
  v172 = result + 64;
  if ((v87 & v83) == 0)
  {
LABEL_29:
    v91 = v82;
    while (1)
    {
      v82 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v82 >= v89)
      {
        break;
      }

      v92 = *(v84 + 8 * v82);
      ++v91;
      if (v92)
      {
        v90 = __clz(__rbit64(v92));
        v88 = (v92 - 1) & v92;
        goto LABEL_34;
      }
    }

    v107 = v153;
    sub_22C90443C();
    v108 = v154;
    v109 = v155;
    v110 = (*(v154 + 88))(v107, v155);
    if (v110 == *MEMORY[0x277D0E688])
    {
      (*(v108 + 96))(v107, v109);
      v111 = v147;
      v112 = *(v147 + 32);
      v113 = v146;
      v114 = v146;
      v115 = v107;
      v116 = &v179;
    }

    else
    {
      if (v110 != *MEMORY[0x277D0E690])
      {
        (*(v108 + 8))(v107, v109);
        goto LABEL_46;
      }

      (*(v108 + 96))(v107, v109);
      v111 = v145;
      v112 = *(v145 + 32);
      v113 = v144;
      v114 = v144;
      v115 = v107;
      v116 = &v176;
    }

    v117 = *(v116 - 32);
    v112(v114, v115, v117);
    sub_22C90126C();
    (*(v111 + 8))(v113, v117);
LABEL_46:
    sub_22C90440C();
    (*(v156 + 104))(v158, *MEMORY[0x277D1DFE0], v157);
    v118 = *MEMORY[0x277D1DFE8];
    v119 = sub_22C90742C();
    v120 = v159;
    (*(*(v119 - 8) + 104))(v159, v118, v119);
    sub_22C36C640(v120, 0, 1, v119);
    sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xEF746E65746E6F43;
    v122 = sub_22C9043FC();
    if (v123)
    {
      v124 = v122;
    }

    else
    {
      v124 = 0;
    }

    v125 = 0xE000000000000000;
    if (v123)
    {
      v126 = v123;
    }

    else
    {
      v126 = 0xE000000000000000;
    }

    *(inited + 48) = v124;
    *(inited + 56) = v126;
    strcpy((inited + 64), "interactionId");
    *(inited + 78) = -4864;
    v127 = v168;
    v128 = v171;
    if (v168)
    {
      v125 = v168;
    }

    else
    {
      v128 = 0;
    }

    *(inited + 80) = v128;
    *(inited + 88) = v125;

    sub_22C909F0C();
    v129 = v169;
    sub_22C90740C();
    sub_22C3A5908(&qword_27D9BBDB0, &qword_22C911850);
    v130 = v161;
    v131 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_22C90F800;
    (*(v130 + 16))(v132 + v131, v129, v170);
    v133 = v164;
    sub_22C90743C();
    v134 = v167;
    sub_22C90A73C();
    v135 = sub_22C90A75C();
    sub_22C36C640(v134, 0, 1, v135);
    v136 = v165;
    v137 = v163;
    v138 = v166;
    (*(v165 + 16))(v163, v133, v166);
    v139 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v140 = (v162 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    *(v141 + 16) = 0;
    *(v141 + 24) = 0;
    (*(v136 + 32))(v141 + v139, v137, v138);
    v142 = (v141 + v140);
    *v142 = v171;
    v142[1] = v127;

    sub_22C59D038(0, 0, v134, &unk_22C911860, v141);

    sub_22C3FC848(v134);
    (*(v136 + 8))(v133, v138);
    return (*(v130 + 8))(v169, v170);
  }

  while (1)
  {
    v90 = __clz(__rbit64(v88));
    v88 &= v88 - 1;
LABEL_34:
    v93 = v90 | (v82 << 6);
    v94 = *(v174 + 56);
    v95 = (*(v174 + 48) + 16 * v93);
    v96 = v95[1];
    v179 = *v95;
    sub_22C378A4C(v94 + 40 * v93, v182);
    sub_22C374168(v182, v182[3]);

    v97 = v176;
    sub_22C909DBC();
    v98 = v97;
    v99 = v177;
    v100 = sub_22C3FB2B0(v98);
    if (v99)
    {

      v177 = 0;
      v101 = MEMORY[0x277D84F90];
    }

    else
    {
      v101 = v100;
      v177 = 0;
    }

    v102 = v178;
    (*v175)(v176, v173);
    result = sub_22C36FF94(v182);
    *(v172 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v93;
    v103 = (v102[6] + 16 * v93);
    *v103 = v179;
    v103[1] = v96;
    *(v102[7] + 8 * v93) = v101;
    v104 = v102[2];
    v105 = __OFADD__(v104, 1);
    v106 = v104 + 1;
    if (v105)
    {
      break;
    }

    v102[2] = v106;
    if (!v88)
    {
      goto LABEL_29;
    }
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_22C3FE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22C9063DC();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = sub_22C90363C();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3FE3BC, 0, 0);
}

uint64_t sub_22C3FE3BC()
{
  v28 = v0;
  v1 = sub_22C90744C();
  v2 = v0[11];
  v3 = v1;
  v5 = v4;
  v6 = v0[9];
  v7 = v0[10];
  (*(v7 + 104))(v2, *MEMORY[0x277D1EC40], v6);
  v8 = sub_22C90362C();
  (*(v7 + 8))(v2, v6);
  if (v8)
  {
    sub_22C903F7C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AABC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136380675;
      v17 = sub_22C36F9F4(v3, v5, &v27);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_22C366000, v9, v10, "AutomationJSON for replay:\n%{private}s", v15, 0xCu);
      sub_22C36FF94(v16);
      MEMORY[0x2318B9880](v16, -1, -1);
      MEMORY[0x2318B9880](v15, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v12, v13);
  }

  else
  {

    sub_22C903F7C();
    v18 = sub_22C9063CC();
    v19 = sub_22C90AABC();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22C366000, v18, v19, "AutomationJSON logging disabled due to redaction policy.", v24, 2u);
      MEMORY[0x2318B9880](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
  }

  sub_22C900F8C();
  sub_22C90745C();
  sub_22C3FE878(&qword_27D9BBDB8, MEMORY[0x277D1DFF8]);
  sub_22C3FE878(qword_27D9BBDC0, MEMORY[0x277D1DFF0]);

  sub_22C900F7C();

  v25 = v0[1];

  return v25();
}

uint64_t sub_22C3FE748(uint64_t a1)
{
  v4 = *(sub_22C90745C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22C3B00E8;

  return sub_22C3FE290(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_22C3FE878(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C90745C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C3FE8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullPlannerPreferences.init()(v7);
  v8 = sub_22C4DE310();
  if (v2)
  {
    return sub_22C3FEA64(v7);
  }

  v10 = off_278729438[v8];
  v11 = off_278729468[v8];
  v12 = type metadata accessor for ToolFetcher(0);
  a2[3] = v12;
  a2[4] = &off_283FB6BE0;
  v13 = sub_22C36D548(a2);
  v13[3] = v10;
  v13[4] = v11;
  v14 = swift_allocObject();
  *v13 = v14;
  v15 = type metadata accessor for AppNameRenderer_v1_0(0);
  v14[5] = v15;
  v14[6] = &off_283FB8878;
  v16 = sub_22C36D548(v14 + 2);
  sub_22C9006AC();
  sub_22C3E17AC(v7, v16 + *(v15 + 20));
  v17 = *(v12 + 20);
  v18 = sub_22C908AEC();
  return (*(*(v18 - 8) + 16))(v13 + v17, a1, v18);
}

uint64_t sub_22C3FEA64(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerPreferences(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3FEAC0()
{
  v0 = 0;
  v3 = MEMORY[0x277D84F98];
  while (v0 != 5)
  {
    v2 = byte_283FAF020[v0 + 32];
    result = sub_22C3FEB54(&v3, &v2);
    ++v0;
  }

  qword_2814335C8 = v3;
  return result;
}

uint64_t sub_22C3FEB54(uint64_t *a1, char *a2)
{
  v3 = *a2;
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C90FB40;
  *(v4 + 32) = 0x6E655F6E7275743CLL;
  *(v4 + 40) = 0xEB00000000203E64;
  *(v4 + 48) = sub_22C45CFCC(v3);
  *(v4 + 56) = v5;
  *(v4 + 64) = 4091452;
  *(v4 + 72) = 0xE300000000000000;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  sub_22C90A04C();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_22C62C7D4();

  *a1 = v9;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90D070;
  *(v6 + 32) = 0x6E655F6E7275743CLL;
  *(v6 + 40) = 0xEA00000000003E64;
  strcpy((v6 + 48), "<turn_start> ");
  *(v6 + 62) = -4864;
  *(v6 + 64) = sub_22C45CFCC(v3);
  *(v6 + 72) = v7;
  *(v6 + 80) = 4091452;
  *(v6 + 88) = 0xE300000000000000;
  sub_22C90A04C();

  swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  sub_22C62C7D4();

  *a1 = v10;
  return result;
}

uint64_t sub_22C3FED78(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_22C3A5908(&qword_27D9BBF48, qword_22C911948);
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  v35 = inited;
  v36 = 15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_22:

    v25 = sub_22C90A43C();

    if (v25)
    {
      v26 = sub_22C90A30C();
      sub_22C3FF5F8(v26);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36A7BC();
      v10 = v33;
    }

    v28 = *(v10 + 16);
    v27 = *(v10 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_22C592574(v27 > 1, v28 + 1, 1, v10);
      v10 = v34;
    }

    *(v10 + 16) = v28 + 1;
    v29 = v10 + 24 * v28;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0xE000000000000000;
    *(v29 + 48) = 1;

    return v10;
  }

  v37 = v4;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = sub_22C3FF11C(&v35, a3);
    if (!v12)
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v15 = sub_22C605514(v13, v14, qword_2814335C8);

    if (v15 == 5)
    {

      v30 = 0;
      goto LABEL_31;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36A7BC();
      v10 = v23;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_22C592574(v16 > 1, v17 + 1, 1, v10);
      v10 = v24;
    }

    *(v10 + 16) = v17 + 1;
    v18 = v10 + 24 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
LABEL_17:
    v21 = *(inited + 24);
    v22 = *(inited + 16) & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v21) & 0xF;
    }

    if (v36 >> 14 >= 4 * v22)
    {
      goto LABEL_22;
    }
  }

  v19 = sub_22C3FF360();
  if (v20)
  {
    MEMORY[0x2318B7840](v19);

    goto LABEL_17;
  }

  v30 = 3;
  v10 = 0xE000000000000000;
LABEL_31:

  sub_22C3FF9F8();
  swift_allocError();
  *v31 = v30;
  swift_willThrow();
  swift_setDeallocating();

  return v10;
}

uint64_t sub_22C3FF11C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = v5;
  while (!a2[4])
  {
    v7 = *(v4 + 24);
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v6 >> 14 == 4 * v8)
    {

      goto LABEL_18;
    }

    v9 = sub_22C90A46C();
    v11 = v10;

    v6 = sub_22C90A31C();

    v12 = a2[2];
    if (!*(v12 + 16) || (v13 = sub_22C628790(v9, v11), (v14 & 1) == 0))
    {

LABEL_18:

      return 0;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    a2 = v15;
  }

  v16 = a2[3];
  swift_bridgeObjectRetain_n();
  while (1)
  {
    sub_22C90A3AC();
    if (!v17)
    {
      break;
    }

    v18 = *(v4 + 24);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v5 >> 14 != 4 * v19)
    {

      sub_22C90A46C();

      v5 = sub_22C90A31C();

      a1[1] = v5;
    }
  }

  return v16;
}

uint64_t sub_22C3FF360()
{
  v1 = *(*v0 + 24);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(*v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v0[1] >> 14 == 4 * v2)
  {
    return 0;
  }

  v3 = sub_22C90A46C();

  v4 = sub_22C90A31C();

  v0[1] = v4;
  return v3;
}

uint64_t sub_22C3FF430(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      v8 = 0x6D6574737973;
      v9 = 0xE600000000000000;
      v10 = a1;
      v11 = 0x6D6574737973;
      switch(v10)
      {
        case 1:
          v11 = 0x6E61747369737361;
          v9 = 0xE900000000000074;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v11 = 1919251317;
          break;
        case 3:
          v11 = 0x746C75736572;
          break;
        case 4:
          v9 = 0xE400000000000000;
          v11 = 1819242356;
          break;
        default:
          break;
      }

      v12 = 0xE600000000000000;
      switch(a4)
      {
        case 1:
          v8 = 0x6E61747369737361;
          v12 = 0xE900000000000074;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v8 = 1919251317;
          break;
        case 3:
          v8 = 0x746C75736572;
          break;
        case 4:
          v12 = 0xE400000000000000;
          v8 = 1819242356;
          break;
        default:
          break;
      }

      if (v11 != v8 || v9 != v12)
      {
        v14 = sub_22C90B4FC();

        return v14 & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_22C90B4FC();
}

uint64_t sub_22C3FF5F8(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = sub_22C90A33C();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x2821FBD18]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBD18]();
  }

  return result;
}

uint64_t sub_22C3FF6C4(uint64_t a1)
{
  result = sub_22C90AC6C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_22C3FF768()
{

  v1 = *(*v0 + 112);
  v2 = sub_22C90AC6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22C3FF7FC()
{
  sub_22C3FF768();

  return swift_deallocClassInstance();
}

uint64_t sub_22C3FF86C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C3FF970()
{
  sub_22C3FF900();

  return swift_deallocClassInstance();
}

unint64_t sub_22C3FF9F8()
{
  result = qword_27D9BBF50[0];
  if (!qword_27D9BBF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D9BBF50);
  }

  return result;
}

uint64_t sub_22C3FFA58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3FFA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_22C3FFB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerResponseParsingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C3FFCA8()
{
  result = qword_27D9BBFD8;
  if (!qword_27D9BBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFD8);
  }

  return result;
}

uint64_t sub_22C3FFCFC(uint64_t a1)
{
  v2 = sub_22C3FFD74();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3FFD38(uint64_t a1)
{
  v2 = sub_22C3FFD74();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C3FFD74()
{
  result = qword_27D9BBFE0;
  if (!qword_27D9BBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFE0);
  }

  return result;
}

uint64_t sub_22C3FFDDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22C9063DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C3FED78(a1, a2, a3);
  if (!v4)
  {
    v14 = result;
    v15 = sub_22C3A5BD0(result);
    if (v17 == -1 || (v18 = v17, (v17 & 1) == 0))
    {

      sub_22C3FF9F8();
      swift_allocError();
      v30 = 1;
LABEL_9:
      *v29 = v30;
      return swift_willThrow();
    }

    v19 = v15;
    v47 = v16;
    v41 = a4;
    if (*(v14 + 16) < 2uLL)
    {
    }

    else
    {
      v20 = sub_22C46BD18(1, v14);
      sub_22C3A5C2C(v20, v21, v22, v23);
      v39 = v25;
      v40 = v24;
      v27 = v26;
      v28 = ~v26;
      swift_unknownObjectRelease();
      if (!v28)
      {
LABEL_16:
        sub_22C40016C(v19, v47, v18);
        sub_22C3FF9F8();
        swift_allocError();
        v30 = 2;
        goto LABEL_9;
      }

      if (v27)
      {
        sub_22C40016C(v40, v39, v27);
        goto LABEL_16;
      }

      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    v31 = v47;
    v46[0] = v19;
    v46[1] = v47;
    v44 = 4091452;
    v45 = 0xE300000000000000;
    v42 = 10;
    v43 = 0xE100000000000000;
    sub_22C3858B4();
    v40 = sub_22C90AD4C();
    v33 = v32;
    sub_22C40016C(v19, v31, v18);
    sub_22C903F7C();

    v34 = sub_22C9063CC();
    v35 = sub_22C90AACC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136380675;
      *(v36 + 4) = sub_22C36F9F4(v40, v33, v46);
      _os_log_impl(&dword_22C366000, v34, v35, "Model response, parsed for role-content pairs, and newline formatting, follows on next line:\n%{private}s", v36, 0xCu);
      sub_22C36FF94(v37);
      MEMORY[0x2318B9880](v37, -1, -1);
      MEMORY[0x2318B9880](v36, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    sub_22C90870C();
  }

  return result;
}

uint64_t sub_22C40016C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22C400184(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22C400184(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22C400194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = sub_22C9070DC();
  v5 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22C3A5908(&qword_27D9BC018, &qword_22C911CA8);
  v7 = MEMORY[0x28223BE20](v59);
  v58 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = v45 - v9;
  v56 = sub_22C3A5908(&qword_27D9BC020, &unk_22C911CB0);
  v10 = MEMORY[0x28223BE20](v56);
  v55 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = v45 - v13;
  MEMORY[0x28223BE20](v12);
  v53 = v45 - v14;
  v15 = *(a3 + 16);
  v71 = MEMORY[0x277D84F90];
  sub_22C3B6D88();
  v16 = v71;
  v52 = v15;
  if (!v15)
  {
    return v16;
  }

  result = sub_22C901FAC();
  v18 = 0;
  v68 = result;
  v19 = *(result - 8);
  v48 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v47 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v46 = a3 + v47;
  v51 = *(a2 + 16);
  v45[3] = v19 + 16;
  v67 = v5 + 16;
  v49 = v19;
  v45[2] = v19 + 32;
  v50 = v5;
  v66 = v5 + 32;
  while (v51 != v18)
  {
    v20 = v59;
    v21 = *(v59 + 48);
    v22 = v49;
    v23 = v48 + *(v49 + 72) * v18;
    v24 = *(v49 + 16);
    v65 = v16;
    v25 = v57;
    v26 = v68;
    v24(v57, v23, v68);
    v64 = *(v5 + 72);
    v62 = *(v5 + 16);
    v27 = &v25[v21];
    v28 = v70;
    v62(v27, v46 + v64 * v18, v70);
    v29 = v58;
    sub_22C407C2C();
    v30 = *(v20 + 48);
    v31 = v56;
    v63 = v18;
    v32 = *(v56 + 48);
    v33 = *(v22 + 32);
    v60 = v30;
    v61 = v33;
    v34 = v53;
    v33(v53, v29, v26);
    v35 = *(v5 + 32);
    v36 = v34 + v32;
    v37 = v28;
    v38 = v69;
    v35(v36, &v29[v60], v28);
    v39 = v54;
    sub_22C3A7214();
    v40 = *(v31 + 48);
    v41 = v55;
    v61(v55, v39, v68);
    v35(&v41[v40], &v39[v40], v37);
    v62(v38, &v41[v40], v37);
    v42 = v41;
    v16 = v65;
    sub_22C36DD28(v42, &qword_27D9BC020, &unk_22C911CB0);
    sub_22C36DD28(v34, &qword_27D9BC020, &unk_22C911CB0);
    v71 = v16;
    v43 = *(v16 + 16);
    if (v43 >= *(v16 + 24) >> 1)
    {
      sub_22C3B6D88();
      v16 = v71;
    }

    v44 = v64;
    v18 = v63 + 1;
    *(v16 + 16) = v43 + 1;
    result = (v35)(v16 + v47 + v43 * v44, v69, v70);
    v5 = v50;
    if (v52 == v18)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4006B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v248 = a2;
  v262 = a1;
  v5 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v6);
  v8 = (&v244 - v7);
  v9 = sub_22C9070DC();
  sub_22C369824();
  v275 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v254 = v16;
  v282 = sub_22C3A5908(&qword_27D9BBFE8, &qword_22C911C48);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v281 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v287 = v20;
  v21 = sub_22C3A5908(&qword_27D9BBFF0, &unk_22C911C50);
  MEMORY[0x28223BE20](v21 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v294 = v25;
  sub_22C36BA0C();
  v293 = sub_22C901FAC();
  sub_22C369824();
  v288 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v284 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  KeyPath = v32;
  sub_22C36BA0C();
  v265 = sub_22C906ECC();
  sub_22C369824();
  v245 = v33;
  MEMORY[0x28223BE20](v34);
  v264 = (&v244 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C36BA0C();
  v290 = sub_22C9089DC();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  v41 = &v244 - v40;
  v292 = sub_22C9088CC();
  sub_22C369824();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  v280 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  v267 = v47;
  sub_22C36BA0C();
  v48 = sub_22C908A0C();
  sub_22C369824();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  v285 = v52;
  sub_22C369930();
  MEMORY[0x28223BE20](v53);
  sub_22C37FCD8();
  v257 = a3;
  v54 = sub_22C9087DC();
  v55 = v43;
  v56 = *(v54 + 16);
  v291 = v9;
  v286 = v8;
  v289 = v48;
  v268 = v50;
  v261 = v55;
  v255 = v37;
  if (v56)
  {
    v273 = *(v50 + 16);
    sub_22C36BA94();
    v250 = v57;
    v59 = v57 + v58;
    v272 = *(v60 + 56);
    v274 = v60;
    v271 = v60 - 8;
    v61 = (v37 + 88);
    LODWORD(v270) = *MEMORY[0x277D1E6F8];
    v259 = v37 + 8;
    v258 = v37 + 96;
    v269 = (v62 + 32);
    v63 = MEMORY[0x277D84F90];
    do
    {
      (v273)(v3, v59, v48);
      sub_22C9089EC();
      sub_22C388574();
      v64(v3, v48);
      v65 = v290;
      v66 = (*v61)(v41, v290);
      if (v66 == v270)
      {
        sub_22C36BA4C();
        v67(v41, v65);
        v68 = *v269;
        (*v269)(v280, v41, v292);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v63;
        }

        else
        {
          sub_22C36D270();
          sub_22C5925A4();
          v69 = v76;
        }

        v70 = *(v69 + 16);
        if (v70 >= *(v69 + 24) >> 1)
        {
          sub_22C5925A4();
          v69 = v77;
        }

        *(v69 + 16) = v70 + 1;
        sub_22C37054C();
        v63 = v71;
        v68(v71 + v72 + *(v73 + 72) * v70, v280, v292);
        v48 = v289;
      }

      else
      {
        sub_22C36BA4C();
        v74(v41, v65);
      }

      sub_22C37B968();
      v59 += v75;
      --v56;
    }

    while (v56);

    v78 = v63;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v79 = *(v78 + 16);
  if (v79)
  {
    v280 = *(v261 + 16);
    sub_22C36BA94();
    v273 = v81;
    v83 = v81 + v82;
    v274 = *(v80 + 56);
    v84 = (v80 - 8);
    v85 = MEMORY[0x277D84F90];
    while (1)
    {
      v86 = v267;
      v87 = v292;
      v88 = v80;
      (v280)(v267, v83, v292);
      v89 = sub_22C90887C();
      (*v84)(v86, v87);
      v90 = *(v89 + 16);
      v91 = *(v85 + 16);
      if (__OFADD__(v91, v90))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v91 + v90 > *(v85 + 24) >> 1)
      {
        sub_22C5916E4();
        v85 = v92;
      }

      if (*(v89 + 16))
      {
        if ((*(v85 + 24) >> 1) - *(v85 + 16) < v90)
        {
          goto LABEL_91;
        }

        swift_arrayInitWithCopy();

        v80 = v88;
        if (v90)
        {
          v93 = *(v85 + 16);
          v94 = __OFADD__(v93, v90);
          v95 = v93 + v90;
          if (v94)
          {
            goto LABEL_93;
          }

          *(v85 + 16) = v95;
        }
      }

      else
      {

        v80 = v88;
        if (v90)
        {
          goto LABEL_84;
        }
      }

      v83 += v274;
      if (!--v79)
      {
        sub_22C37B56C();

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
LABEL_29:
    v298 = v85;

    sub_22C3CD204(v96);

    v97 = v256;
    v98 = sub_22C401F34(v250);
    v99 = sub_22C40235C(v98);

    v246 = sub_22C40292C(v99);
    v249 = v97;

    v292 = *(sub_22C9087DC() + 16);
    if (!v292)
    {
      v105 = MEMORY[0x277D84F98];
      sub_22C370108();
      v125 = v294;
LABEL_47:
      v265 = v105;

      v139 = v249;
      sub_22C4056BC(v250);
      v266 = v140;
      v274 = v141;
      v143 = v142;
      v267 = v139;
      KeyPath = swift_getKeyPath();
      sub_22C406978(MEMORY[0x277D84F90]);
      v269 = v144;
      v145 = 0;
      v298 = v146;
      v299 = v147;
      v280 = (v288 + 16);
      v272 = v143 + 32;
      v273 = v143;
      v285 = *(v143 + 16);
      v292 = (v288 + 32);
      v270 = v275 + 32;
      v271 = v275 + 16;
      v268 = v275 + 8;
      v290 = v288 + 8;
      v148 = &qword_27D9BC000;
      v149 = &qword_22C911C98;
      v150 = v287;
      while (1)
      {
        if (v145 >= v285)
        {
          v163 = sub_22C36CC9C();
          v165 = sub_22C3A5908(v163, v164);
          sub_22C36C640(v99, 1, 1, v165);
          v162 = v293;
        }

        else
        {
          if ((v145 & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

          if (v145 >= *(v274 + 2))
          {
            goto LABEL_87;
          }

          v151 = v282;
          v152 = *(v282 + 48);
          sub_22C37054C();
          v153 = sub_22C407CB4();
          v154(v153);
          if (v145 >= *(v273 + 16))
          {
            goto LABEL_88;
          }

          sub_22C37B968();
          *(v150 + v152) = *(v155 + 8 * v145);
          sub_22C372124();
          sub_22C407C2C();
          v156 = *(v151 + 48);
          v157 = sub_22C36CC9C();
          v159 = sub_22C3A5908(v157, v158);
          v160 = *(v159 + 48);
          (*v292)(v99, v150, v293);
          v161 = *(v150 + v156);
          v150 = v287;
          *(v99 + v160) = v161;
          v162 = v293;
          sub_22C36C640(v99, 0, 1, v159);
          v125 = v294;
        }

        sub_22C407C2C();
        v166 = sub_22C36CC9C();
        v168 = sub_22C3A5908(v166, v167);
        if (sub_22C370B74(v125, 1, v168) == 1)
        {
          break;
        }

        v289 = v145;
        v169 = v150;
        v170 = v149;
        v171 = v148;
        v172 = *(v168 + 48);
        v173 = v284;
        (*v292)(v284, v294, v162);
        v174 = *(v294 + v172);
        v125 = v294;
        v301 = v174;

        v175 = v286;
        swift_getAtKeyPath();

        if (sub_22C370B74(v175, 1, v291) == 1)
        {
          sub_22C38A894();
          v176(v173, v162);

          sub_22C36DD28(v175, &qword_27D9BAA18, &qword_22C911C40);
          v148 = v171;
          v149 = v170;
          v150 = v169;
          v145 = v289;
        }

        else
        {
          sub_22C407CC8();
          v178 = *v177;
          v179 = v291;
          (*v177)(v254, v175, v291);
          sub_22C405D48(v173);
          sub_22C388574();
          v180(v252, v254, v179);
          v181 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v296 = v181;
          v264 = v178;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22C3B6D88();
            v181 = v296;
          }

          v148 = v171;
          v150 = v169;
          v183 = v181[2];
          v99 = v263;
          v149 = v170;
          v145 = v289;
          if (v183 >= v181[3] >> 1)
          {
            sub_22C3B6D88();
          }

          v184 = sub_22C37F05C();
          v185(v184);
          sub_22C38A894();
          v186(v284, v293);
          v296[2] = (v183 + 1);
          sub_22C36BA94();
          v269 = v187;
          sub_22C407CC8();
          v264();
          v125 = v294;
        }
      }

      sub_22C37B56C();

      v274 = v298;
      v273 = v299;

      v189 = v267;
      sub_22C4056BC(v188);
      v272 = v190;
      v192 = v191;
      v194 = v193;
      v286 = v189;
      v289 = swift_getKeyPath();
      sub_22C406978(MEMORY[0x277D84F90]);
      v296 = v195;
      v297 = v196;
      KeyPath = v197;
      v284 = (v194 + 32);
      v285 = v194;
      v294 = *(v194 + 16);
      while (1)
      {
        if (v294 <= 0)
        {
          sub_22C36C640(v279, 1, 1, v168);
        }

        else
        {
          if (!*(v192 + 16))
          {
            goto LABEL_89;
          }

          v198 = v282;
          v199 = *(v282 + 48);
          sub_22C37054C();
          v200 = sub_22C407CB4();
          v201(v200);
          if (!*(v285 + 16))
          {
            goto LABEL_90;
          }

          *(v150 + v199) = *v284;
          sub_22C372124();
          sub_22C407C2C();
          v202 = *(v198 + 48);
          v203 = *(v168 + 48);
          v204 = v162;
          v205 = v279;
          (*v292)(v279, v150, v204);
          v206 = *(v150 + v202);
          v150 = v287;
          *(v205 + v203) = v206;
          sub_22C36C640(v205, 0, 1, v168);
        }

        v207 = v278;
        sub_22C407C2C();
        if (sub_22C370B74(v207, 1, v168) == 1)
        {
          break;
        }

        v208 = v150;
        v209 = v192;
        v210 = *(v168 + 48);
        v211 = v293;
        v212 = v277;
        (*v292)(v277, v207, v293);
        v295 = *(v207 + v210);

        v213 = v276;
        swift_getAtKeyPath();

        v214 = v291;
        if (sub_22C370B74(v213, 1, v291) == 1)
        {
          sub_22C38A894();
          v215(v212, v211);

          sub_22C36DD28(v213, &qword_27D9BAA18, &qword_22C911C40);
          v162 = v211;
          v192 = v209;
          v150 = v208;
        }

        else
        {
          sub_22C407CC8();
          v217 = *v216;
          (*v216)(v253, v213, v214);
          sub_22C405D48(v212);
          sub_22C388574();
          v218(v251, v253, v214);
          v219 = KeyPath;
          v220 = swift_isUniquelyReferenced_nonNull_native();
          v301 = v219;
          v267 = v217;
          if ((v220 & 1) == 0)
          {
            sub_22C377BA0();
            sub_22C3B6D88();
            v219 = v301;
          }

          v162 = v293;
          v192 = v209;
          v221 = *(v219 + 16);
          v150 = v208;
          if (v221 >= *(v219 + 24) >> 1)
          {
            sub_22C3B6D88();
          }

          v222 = sub_22C37F05C();
          v223(v222);
          sub_22C38A894();
          v224(v277, v162);
          *(v301 + 16) = v221 + 1;
          sub_22C36BA94();
          KeyPath = v225;
          sub_22C407CC8();
          v267();
        }
      }

      v226 = 0;
      v298 = v296;
      v299 = v297;
      v300 = KeyPath;
      v227 = *(v262 + 16);
      v228 = v248;
      v229 = v247;
      v230 = v291;
      v231 = v246;
      v232 = v265;
      v233 = v268;
      while (v227 != v226)
      {
        sub_22C37054C();
        (*(v235 + 16))(v229, v262 + v234 + *(v235 + 72) * v226, v230);
        v236 = v286;
        v237 = sub_22C403030(v229, v231, v232, &v298);
        if (v236)
        {
          v238 = v237;

          sub_22C406E04();
          swift_allocError();
          *v239 = v238;
          sub_22C37B56C();

          sub_22C379838();

          (*v233)(v229, v230);

          return v238;
        }

        sub_22C403D60(v229, v228, &v298);
        v286 = 0;
        (*v233)(v229, v230);
        ++v226;
      }

      v240 = v300;
      v241 = sub_22C36FBFC();
      v238 = sub_22C400194(v241, v242, v240);

      sub_22C379838();

      sub_22C37B56C();

      return v238;
    }

    v100 = 0;
    sub_22C37054C();
    v280 = (v101 + v102);
    v274 = (v103 + 16);
    v273 = v104 + 88;
    LODWORD(v272) = *MEMORY[0x277D1E798];
    v271 = v103 + 8;
    v269 = (v104 + 8);
    v267 = (v104 + 96);
    v261 = v245 + 32;
    v257 = v288 + 16;
    v256 = v288 + 32;
    v259 = v288 + 8;
    v258 = v245 + 8;
    v105 = MEMORY[0x277D84F98];
    v255 = v288 + 40;
    sub_22C370108();
    v107 = v260;
    v270 = v106;
    while (v100 < *(v106 + 16))
    {
      v108 = v285;
      v109 = v289;
      (*(v268 + 16))(v285, &v280[*(v268 + 72) * v100], v289);
      sub_22C9089EC();
      sub_22C36BA4C();
      v110 = v290;
      v112 = v111(v107, v290);
      if (v112 == v272)
      {
        sub_22C36BA4C();
        v113(v107, v110);
        sub_22C36BA4C();
        v114(v264, v107, v265);
        sub_22C906E1C();
        sub_22C906DFC();
        swift_isUniquelyReferenced_nonNull_native();
        v298 = v105;
        sub_22C628274();
        v117 = *(v105 + 2);
        v118 = (v116 & 1) == 0;
        v99 = v117 + v118;
        if (__OFADD__(v117, v118))
        {
          goto LABEL_92;
        }

        v119 = v115;
        v120 = v116;
        sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          v99 = v263;
          if ((v120 & 1) != (v122 & 1))
          {
            goto LABEL_95;
          }

          v119 = v121;
        }

        else
        {
          sub_22C370108();
        }

        v105 = v298;
        if (v120)
        {
          v126 = v288;
          v127 = v293;
          (*(v288 + 40))(*(v298 + 7) + *(v288 + 72) * v119, v266, v293);
          (*(v126 + 8))(KeyPath, v127);
          sub_22C36BA4C();
          v128 = sub_22C407CA0();
          v129(v128);
          sub_22C388574();
          v130(v285, v289);
        }

        else
        {
          *(v298 + (v119 >> 6) + 8) |= 1 << v119;
          v99 = v288;
          v131 = *(v288 + 72) * v119;
          v132 = KeyPath;
          v133 = v293;
          (*(v288 + 16))(*(v105 + 6) + v131, KeyPath, v293);
          (*(v99 + 32))(*(v105 + 7) + v131, v266, v133);
          (*(v99 + 8))(v132, v133);
          sub_22C36BA4C();
          v134 = sub_22C407CA0();
          v135(v134);
          sub_22C388574();
          v136(v285, v289);
          v137 = *(v105 + 2);
          v94 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v94)
          {
            goto LABEL_94;
          }

          *(v105 + 2) = v138;
          sub_22C370108();
        }

        v125 = v294;
        v107 = v260;
      }

      else
      {
        sub_22C388574();
        v123(v108, v109);
        sub_22C36BA4C();
        v124(v107, v110);
        v125 = v294;
      }

      v106 = v270;
      if (v292 == ++v100)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C401F34(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C9070DC();
  v5 = MEMORY[0x28223BE20](v48);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v34 - v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  v44 = v11;
  v45 = v10;
  v43 = v11 + 16;
  v46 = (v11 + 32);
  v37 = v3 + 32;
  v38 = v3;
  v36 = (v3 + 8);
  v35 = xmmword_22C90F800;
  v39 = v2;
  v40 = a1;
  while (1)
  {
    if (v45 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v13 = *(v44 + 72);
    (*(v44 + 16))(v47, a1 + v12 + v13 * v8, v48);
    sub_22C9068FC();
    sub_22C628274();
    v16 = v15;
    v17 = v9[2];
    v18 = (v14 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v9[3] < v17 + v18)
    {
      sub_22C88E1DC();
      v9 = v50;
      sub_22C628274();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      (*v36)(v49, v2);
      v22 = v9[7];
      v23 = *v46;
      (*v46)(v42, v47, v48);
      v24 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v24;
      v41 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5916E4();
        v24 = v31;
        *(v22 + 8 * v16) = v31;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22C5916E4();
        v24 = v32;
        *(v22 + 8 * v16) = v32;
      }

      v2 = v39;
      *(v24 + 16) = v26 + 1;
      v41((v24 + v12 + v26 * v13), v42, v48);
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      (*v46)((v27 + v12), v47, v48);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v38 + 32))(v9[6] + *(v38 + 72) * v16, v49, v2);
      *(v9[7] + 8 * v16) = v27;
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v9[2] = v30;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C40235C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v54 - v3;
  v68 = sub_22C9070DC();
  v4 = *(v68 - 8);
  v5 = MEMORY[0x28223BE20](v68);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - v7;
  v8 = &qword_22C911C98;
  v67 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v9 = MEMORY[0x28223BE20](v67);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v54 - v12;
  MEMORY[0x28223BE20](v11);
  v64 = &v54 - v13;
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v60 = MEMORY[0x277D84F98];
  v71 = MEMORY[0x277D84F98];
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v55 = v4;
  v57 = (v4 + 32);
  v69 = a1;

  v21 = 0;
  v62 = v19;
  for (i = a1 + 64; ; v15 = i)
  {
    v22 = v21;
    if (!v18)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v23 = v8;
      v21 = v22;
LABEL_11:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v69;
      v27 = *(v69 + 48);
      v28 = sub_22C901FAC();
      v61 = *(v28 - 8);
      v29 = *(v61 + 72);
      v30 = v64;
      (*(v61 + 16))(v64, v27 + v29 * v25, v28);
      v31 = v67;
      *&v30[*(v67 + 48)] = *(*(v26 + 56) + 8 * v25);
      v8 = v23;
      v32 = v65;
      sub_22C407C2C();
      v33 = *(v31 + 48);
      swift_getKeyPath();
      v70 = *(v32 + v33);

      v34 = v66;
      swift_getAtKeyPath();

      if (sub_22C370B74(v34, 1, v68) != 1)
      {
        break;
      }

      sub_22C36DD28(v32, &qword_27D9BC000, v8);
      result = sub_22C36DD28(v34, &qword_27D9BAA18, &qword_22C911C40);
      v22 = v21;
      v19 = v62;
      v15 = i;
      if (!v18)
      {
LABEL_7:
        while (1)
        {
          v21 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v21 >= v19)
          {

            return v60;
          }

          v18 = *(v15 + 8 * v21);
          ++v22;
          if (v18)
          {
            v23 = v8;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v54 = v29;
    v35 = v56;
    v36 = *v57;
    v37 = v34;
    v38 = v68;
    (*v57)(v56, v37, v68);
    sub_22C407C2C();
    v36(v58, v35, v38);
    if (v60[3] <= v60[2])
    {
      sub_22C88DF64();
    }

    v39 = v71;
    sub_22C4075B8();
    v40 = v28;
    result = sub_22C909F7C();
    v41 = v39 + 64;
    v60 = v39;
    v42 = -1 << *(v39 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v39 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = v36;
    v46 = __clz(__rbit64((-1 << v43) & ~*(v39 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v47 = v61;
    v48 = v54;
LABEL_25:
    *(v41 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v53 = v60;
    (*(v47 + 32))(v60[6] + v46 * v48, v59, v40);
    v45((v53[7] + *(v55 + 72) * v46), v58, v68);
    ++v53[2];

    v19 = v62;
  }

  v49 = 0;
  v50 = (63 - v42) >> 6;
  v47 = v61;
  v48 = v54;
  while (++v44 != v50 || (v49 & 1) == 0)
  {
    v51 = v44 == v50;
    if (v44 == v50)
    {
      v44 = 0;
    }

    v49 |= v51;
    v52 = *(v41 + 8 * v44);
    if (v52 != -1)
    {
      v45 = v36;
      v46 = __clz(__rbit64(~v52)) + (v44 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22C40292C(uint64_t a1)
{
  v84 = sub_22C90654C();
  v2 = *(v84 - 8);
  MEMORY[0x28223BE20](v84 - 8);
  v83 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22C90832C();
  v4 = *(v69 - 8);
  v5 = MEMORY[0x28223BE20](v69);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = &v61 - v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v61 - v9;
  v85 = sub_22C3A5908(&qword_27D9BC020, &unk_22C911CB0);
  v10 = MEMORY[0x28223BE20](v85);
  v71 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v81 = &v61 - v14;
  v16 = a1 + 64;
  v15 = *(a1 + 64);
  v72 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v80 = (v2 + 88);
  v79 = *MEMORY[0x277D1DA48];
  v76 = (v2 + 8);
  v65 = (v2 + 96);
  v64 = v4;
  v67 = (v4 + 32);
  v86 = a1;

  v22 = 0;
  v77 = v20;
  for (i = a1 + 64; ; v16 = i)
  {
    v23 = v22;
    if (!v19)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v22 = v23;
LABEL_10:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v22 << 6);
      v26 = v86;
      v27 = *(v86 + 48);
      v28 = sub_22C901FAC();
      v75 = *(v28 - 8);
      v74 = *(v75 + 72);
      v29 = v27 + v74 * v25;
      v30 = *(v75 + 16);
      v31 = v81;
      v73 = v28;
      v30(v81, v29);
      v32 = *(v26 + 56);
      v33 = sub_22C9070DC();
      v34 = *(v33 - 8);
      (*(v34 + 16))(&v31[*(v85 + 48)], v32 + *(v34 + 72) * v25, v33);
      v35 = v82;
      sub_22C407C2C();
      v36 = v83;
      sub_22C90702C();
      v37 = v84;
      v38 = (*v80)(v36, v84);
      if (v38 == v79)
      {
        break;
      }

      (*v76)(v36, v37);
      result = sub_22C36DD28(v35, &qword_27D9BC020, &unk_22C911CB0);
      v23 = v22;
      v20 = v77;
      v16 = i;
      if (!v19)
      {
LABEL_7:
        while (1)
        {
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v22 >= v20)
          {

            return v72;
          }

          v19 = *(v16 + 8 * v22);
          ++v23;
          if (v19)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v63 = v34;
    v62 = v33;
    (*v65)(v36, v37);
    v39 = *v67;
    v40 = v66;
    v41 = v36;
    v42 = v69;
    (*v67)(v66, v41, v69);
    v39(v70, v40, v42);
    sub_22C407C2C();
    v61 = v39;
    v39(v68, v70, v42);
    if (v72[3] <= v72[2])
    {
      sub_22C88DCEC();
    }

    v43 = v87;
    sub_22C4075B8();
    v44 = v73;
    result = sub_22C909F7C();
    v45 = v43 + 64;
    v72 = v43;
    v46 = -1 << *(v43 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    v49 = v62;
    if (((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    v50 = __clz(__rbit64((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
    v52 = v74;
    v51 = v75;
    v53 = v63;
LABEL_24:
    v58 = *(v85 + 48);
    *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v59 = v72;
    v60 = v71;
    (*(v51 + 32))(v72[6] + v50 * v52, v71, v44);
    v61((v59[7] + *(v64 + 72) * v50), v68, v69);
    ++v59[2];
    result = (*(v53 + 8))(&v60[v58], v49);
    v20 = v77;
  }

  v54 = 0;
  v55 = (63 - v46) >> 6;
  v52 = v74;
  v51 = v75;
  v53 = v63;
  while (++v48 != v55 || (v54 & 1) == 0)
  {
    v56 = v48 == v55;
    if (v48 == v55)
    {
      v48 = 0;
    }

    v54 |= v56;
    v57 = *(v45 + 8 * v48);
    if (v57 != -1)
    {
      v50 = __clz(__rbit64(~v57)) + (v48 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C403030(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v122 = a4;
  v127 = a3;
  v128 = a2;
  v4 = sub_22C90827C();
  v5 = *(v4 - 8);
  v131 = v4;
  v132 = v5;
  MEMORY[0x28223BE20](v4);
  v130 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v116 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v121 = &v107 - v10;
  v123 = sub_22C9070DC();
  v119 = *(v123 - 8);
  v11 = MEMORY[0x28223BE20](v123);
  v115 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v107 - v13;
  v14 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = &v107 - v15;
  v133 = sub_22C901FAC();
  v135 = *(v133 - 8);
  v16 = MEMORY[0x28223BE20](v133);
  v126 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v107 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  v134 = sub_22C90832C();
  v124 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v129 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C90654C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v114 = (&v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v118 = &v107 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v107 - v30;
  v32 = sub_22C906D7C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90702C();
  v117 = *(v25 + 88);
  if ((v117)(v31, v24) == *MEMORY[0x277D1DA98])
  {
    v113 = v25 + 88;
    v111 = v25;
    v36 = *(v25 + 96);
    v112 = v24;
    v110 = v25 + 96;
    v109 = v36;
    v36(v31, v24);
    v37 = (*(v33 + 32))(v35, v31, v32);
    MEMORY[0x2318B4220](v37);
    sub_22C4051E0(v20, v127, v22);
    v39 = v135 + 8;
    v38 = *(v135 + 8);
    v40 = v133;
    (v38)(v20, v133);
    v41 = v125;
    sub_22C6055A4(v22, v128);
    v128 = v38;
    (v38)(v22, v40);
    v42 = v134;
    if (sub_22C370B74(v41, 1, v134) == 1)
    {
      (*(v33 + 8))(v35, v32);
      v43 = &qword_27D9BC038;
      v44 = &unk_22C922590;
      v45 = v41;
LABEL_10:
      sub_22C36DD28(v45, v43, v44);
      return 1;
    }

    v135 = v39;
    v107 = v20;
    v108 = v33;
    v127 = v32;
    v46 = v124;
    (*(v124 + 32))(v129, v41, v42);
    v47 = v126;
    v48 = sub_22C906D6C();
    MEMORY[0x28223BE20](v48);
    *(&v107 - 4) = v50;
    *(&v107 - 3) = v49;
    *(&v107 - 2) = v47;
    v51 = v137;
    v52 = sub_22C7D5C98(sub_22C407C84, (&v107 - 6), v49);
    v137 = v51;
    v53 = v35;
    if (v54)
    {
      v55 = 1;
      v56 = v123;
      v57 = v127;
      v58 = v108;
      v59 = v121;
    }

    else
    {
      v59 = v121;
      sub_22C4054E8(v52);
      v55 = 0;
      v56 = v123;
      v57 = v127;
      v58 = v108;
    }

    v60 = v133;
    sub_22C36C640(v59, v55, 1, v56);
    (v128)(v126, v60);
    if (sub_22C370B74(v59, 1, v56) == 1)
    {
      (*(v46 + 8))(v129, v134);
      (*(v58 + 8))(v53, v57);
      v43 = &qword_27D9BAA18;
      v44 = &qword_22C911C40;
      v45 = v59;
      goto LABEL_10;
    }

    v128 = v53;
    v63 = v119;
    v62 = v120;
    (*(v119 + 32))(v120, v59, v56);
    v64 = v118;
    sub_22C90702C();
    v65 = v112;
    v66 = (v117)(v64, v112);
    if (v66 == *MEMORY[0x277D1DAA8])
    {
      LODWORD(v126) = v66;
      v109(v64, v65);
      v67 = sub_22C906F2C();
      v68 = *(v67 - 8);
      v69 = (*(v68 + 88))(v64, v67);
      if (v69 == *MEMORY[0x277D1DEF8])
      {
        LODWORD(v113) = v69;
        v117 = v68;
        v70 = *(v68 + 96);
        v121 = v67;
        v70(v64, v67);
        v71 = sub_22C90A27C();
        v125 = v72;

        v77 = sub_22C9082EC();
        v78 = *(v77 + 16);
        if (v78)
        {
          v118 = v71;
          v136[0] = MEMORY[0x277D84F90];
          sub_22C3B5E2C(0, v78, 0, v73, v74, v75, v76);
          v79 = v136[0];
          v135 = *(v132 + 16);
          v80 = (*(v132 + 80) + 32) & ~*(v132 + 80);
          v110 = v77;
          v81 = v77 + v80;
          v82 = *(v132 + 72);
          v132 += 16;
          v133 = v82;
          v83 = (v132 - 8);
          do
          {
            v84 = v130;
            v85 = v131;
            (v135)(v130, v81, v131);
            v86 = sub_22C90825C();
            v88 = v87;
            (*v83)(v84, v85);
            v136[0] = v79;
            v94 = *(v79 + 16);
            v93 = *(v79 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_22C3B5E2C(v93 > 1, v94 + 1, 1, v89, v90, v91, v92);
              v79 = v136[0];
            }

            *(v79 + 16) = v94 + 1;
            v95 = v79 + 16 * v94;
            *(v95 + 32) = v86;
            *(v95 + 40) = v88;
            v81 += v133;
            --v78;
          }

          while (v78);

          v56 = v123;
          v46 = v124;
          v71 = v118;
          v63 = v119;
          v58 = v108;
        }

        else
        {

          v79 = MEMORY[0x277D84F90];
        }

        v97 = v125;
        v136[0] = v71;
        v136[1] = v125;
        MEMORY[0x28223BE20](v96);
        *(&v107 - 2) = v136;
        v98 = v137;
        v99 = sub_22C5EC08C(sub_22C3AC11C, (&v107 - 4), v79);
        v137 = v98;

        if (v99)
        {
          v100 = *(v63 + 16);
          v101 = v115;
          v100(v115, v120, v56);
          v102 = v100;
          v103 = v114;
          *v114 = v71;
          v103[1] = v97;
          (*(v117 + 104))(v103, v113, v121);
          (*(v111 + 104))(v103, v126, v112);
          sub_22C90703C();
          v104 = v128;
          sub_22C906D6C();
          v105 = v116;
          v102(v116, v101, v56);
          sub_22C36C640(v105, 0, 1, v56);
          sub_22C7C6728();
          v106 = *(v63 + 8);
          v106(v101, v56);
          v106(v120, v56);
          (*(v124 + 8))(v129, v134);
          (*(v58 + 8))(v104, v127);
        }

        else
        {

          LOBYTE(v136[0]) = 1;
          sub_22C406E04();
          swift_willThrowTypedImpl();
          (*(v63 + 8))(v120, v56);
          (*(v46 + 8))(v129, v134);
          (*(v58 + 8))(v128, v127);
        }
      }

      else
      {
        (*(v63 + 8))(v62, v56);
        (*(v46 + 8))(v129, v134);
        (*(v58 + 8))(v128, v57);
        (*(v68 + 8))(v64, v67);
      }
    }

    else
    {
      (*(v63 + 8))(v62, v56);
      (*(v46 + 8))(v129, v134);
      (*(v58 + 8))(v128, v57);
      (*(v111 + 8))(v64, v65);
    }
  }

  else
  {
    (*(v25 + 8))(v31, v24);
  }

  return 1;
}

uint64_t sub_22C403D60(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v188 = a3;
  v173 = a2;
  v4 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v4 - 8);
  v170 = &v142 - v5;
  v161 = sub_22C9094EC();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22C90952C();
  v164 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v169 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v172 = &v142 - v11;
  v177 = sub_22C90941C();
  v175 = *(v177 - 8);
  v12 = MEMORY[0x28223BE20](v177);
  v165 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v176 = &v142 - v14;
  v189 = sub_22C9070DC();
  v185 = *(v189 - 8);
  v15 = MEMORY[0x28223BE20](v189);
  v168 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v179 = &v142 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v180 = &v142 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v184 = &v142 - v22;
  MEMORY[0x28223BE20](v21);
  v187 = &v142 - v23;
  v24 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v182 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v142 - v27;
  v29 = sub_22C901FAC();
  v191 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v167 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v181 = &v142 - v33;
  MEMORY[0x28223BE20](v32);
  v190 = &v142 - v34;
  v35 = sub_22C90654C();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v166 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v178 = &v142 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v183 = (&v142 - v42);
  MEMORY[0x28223BE20](v41);
  v44 = &v142 - v43;
  v45 = sub_22C90832C();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v174 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v142 - v49;
  v171 = a1;
  sub_22C90702C();
  v51 = v35;
  v52 = v36 + 88;
  v186 = *(v36 + 88);
  v53 = v186(v44, v51);
  if (v53 != *MEMORY[0x277D1DA48])
  {
    (*(v36 + 8))(v44, v51);
    return v52;
  }

  v193 = v53;
  v54 = *(v36 + 96);
  v158 = v51;
  v157 = v36 + 96;
  v156 = v54;
  v54(v44, v51);
  v55 = (*(v46 + 32))(v50, v44, v45);
  v56 = MEMORY[0x2318B57A0](v55);
  sub_22C90752C();
  sub_22C6053E0(v56, v28);

  if (sub_22C370B74(v28, 1, v29) == 1)
  {
    (*(v46 + 8))(v50, v45);
    sub_22C36DD28(v28, &qword_27D9BC030, &unk_22C911CC0);
    return v52;
  }

  v152 = v36;
  v153 = v50;
  v154 = v46;
  v155 = v45;
  v59 = v190;
  v58 = v191;
  v60 = v191 + 32;
  v150 = *(v191 + 32);
  v61 = v150(v190, v28, v29);
  v63 = *v188;
  v62 = v188[1];
  v64 = v188[2];
  MEMORY[0x28223BE20](v61);
  *(&v142 - 4) = v63;
  *(&v142 - 3) = v62;
  *(&v142 - 2) = v59;
  v65 = v192;
  v66 = sub_22C7D5C98(sub_22C3E33E8, (&v142 - 6), v62);
  v192 = v65;
  if (v67)
  {
    (*(v154 + 8))(v153, v155);
    (*(v58 + 8))(v59, v29);
    return v52;
  }

  v149 = v60;
  v151 = v29;
  v68 = v184;
  sub_22C4054E8(v66);
  v69 = v185;
  v70 = v185 + 32;
  v71 = v187;
  v184 = *(v185 + 32);
  (v184)(v187, v68, v189);
  v72 = v183;
  sub_22C90702C();
  v73 = v158;
  v74 = v186(v72, v158);
  if (v74 != *MEMORY[0x277D1DAA8])
  {
    (*(v152 + 8))(v72, v73);
    goto LABEL_16;
  }

  v146 = v74;
  v147 = v70;
  v148 = v64;
  v156(v72, v73);
  v75 = sub_22C906F2C();
  v76 = *(v75 - 8);
  v145 = *(v76 + 88);
  if (v145(v72, v75) != *MEMORY[0x277D1DEE8])
  {
    (*(v76 + 8))(v72, v75);
    goto LABEL_16;
  }

  v143 = v76;
  v77 = *(v76 + 96);
  v144 = v75;
  v142 = v77;
  v77(v72, v75);
  v78 = *v72;
  if (*(*v72 + 16) != 1)
  {

    goto LABEL_16;
  }

  v79 = v182;
  sub_22C58B0E0(v78, v182);

  v80 = v151;
  if (sub_22C370B74(v79, 1, v151) == 1)
  {
    sub_22C36DD28(v79, &qword_27D9BC030, &unk_22C911CC0);
LABEL_16:
    v81 = v189;
    v82 = v191;
LABEL_17:
    v83 = v190;
    v52 = 3;
    v195 = 3;
    sub_22C406E04();
    swift_willThrowTypedImpl();
    (*(v69 + 8))(v71, v81);
    (*(v154 + 8))(v153, v155);
    (*(v82 + 8))(v83, v151);
    return v52;
  }

  v84 = v181;
  v85 = v150(v181, v79, v80);
  MEMORY[0x28223BE20](v85);
  *(&v142 - 4) = v63;
  *(&v142 - 3) = v62;
  *(&v142 - 2) = v84;
  v86 = v192;
  v87 = sub_22C7D5C98(sub_22C407C84, (&v142 - 6), v62);
  v192 = v86;
  if (v88)
  {
    v82 = v191;
    (*(v191 + 8))(v84, v80);
    v81 = v189;
LABEL_27:
    v71 = v187;
    goto LABEL_17;
  }

  v89 = v179;
  sub_22C4054E8(v87);
  v90 = v180;
  v91 = v189;
  (v184)(v180, v89, v189);
  v92 = v178;
  sub_22C90702C();
  v93 = v158;
  v94 = v186(v92, v158);
  if (v94 != v146)
  {
    (*(v69 + 8))(v90, v91);
    v82 = v191;
    (*(v191 + 8))(v181, v151);
    (*(v152 + 8))(v92, v93);
    v81 = v91;
    goto LABEL_27;
  }

  v156(v92, v93);
  v95 = v144;
  v96 = v145(v92, v144);
  v97 = v181;
  if (v96 != *MEMORY[0x277D1DEF8])
  {
    v81 = v189;
    (*(v69 + 8))(v90, v189);
    v82 = v191;
    (*(v191 + 8))(v97, v151);
    (*(v143 + 8))(v92, v95);
    goto LABEL_27;
  }

  v142(v92, v95);
  v98 = v172;
  sub_22C6055D0(v173, v172);

  v99 = v177;
  v100 = sub_22C370B74(v98, 1, v177);
  v101 = v189;
  v102 = v187;
  if (v100 == 1)
  {
    sub_22C36DD28(v98, &qword_27D9BC028, &unk_22C9134B0);
    v52 = 4;
    v194 = 4;
    sub_22C406E04();
    swift_willThrowTypedImpl();
    v103 = *(v69 + 8);
    v103(v90, v101);
    v103(v102, v101);
    (*(v154 + 8))(v153, v155);
    v104 = *(v191 + 8);
    v105 = v151;
    v104(v97, v151);
    v104(v190, v105);
  }

  else
  {
    v106 = v175;
    v107 = v176;
    (*(v175 + 32))(v176, v98, v99);
    v108 = *(v106 + 16);
    v109 = v165;
    v108(v165, v107, v99);
    v110 = (*(v106 + 88))(v109, v99);
    v111 = v154;
    v112 = v99;
    if (v110 == *MEMORY[0x277D72AD0])
    {
      v113 = v110;
      (*(v106 + 96))(v109, v99);
      v114 = swift_projectBox();
      v115 = v164;
      v116 = v162;
      v117 = v163;
      (*(v164 + 16))(v162, v114, v163);
      if ((*(v115 + 88))(v116, v117) == *MEMORY[0x277D72D50])
      {
        LODWORD(v183) = v113;
        (*(v115 + 96))(v116, v117);
        v118 = swift_projectBox();
        v186 = v108;
        v119 = v160;
        v120 = v159;
        v121 = v161;
        (*(v160 + 16))(v159, v118, v161);
        LODWORD(v184) = (*(v119 + 88))(v120, v121);
        v122 = *MEMORY[0x277D72CD8];
        (*(v119 + 8))(v120, v121);
        v108 = v186;

        v112 = v177;
        if (v184 == v122)
        {
          v184 = swift_allocBox();
          v124 = v123;
          v125 = swift_allocObject();
          *(v125 + 16) = 0xD00000000000001BLL;
          *(v125 + 24) = 0x800000022C92EBF0;
          v126 = v175;
          v127 = v112;
          v128 = v176;
          (*(v175 + 8))(v176, v127);
          strcpy((v125 + 32), "ContactEntity");
          *(v125 + 46) = -4864;
          *v124 = v125;
          (*(v164 + 104))(v124, *MEMORY[0x277D72D28], v117);
          *v128 = v184;
          v129 = v128;
          v112 = v127;
          (*(v126 + 104))(v129, v183, v127);
        }
      }

      else
      {
        (*(v115 + 8))(v116, v117);
      }
    }

    else
    {
      (*(v106 + 8))(v109, v99);
    }

    v186 = *(v111 + 16);
    v130 = v174;
    v131 = v155;
    (v186)(v174, v153, v155);
    v132 = v169;
    v108(v169, v176, v112);
    sub_22C36C640(v132, 0, 1, v112);
    sub_22C90830C();
    v133 = v185;
    v184 = *(v185 + 16);
    v134 = v168;
    v135 = v189;
    (v184)(v168, v171, v189);
    v136 = v166;
    (v186)(v166, v130, v131);
    (*(v152 + 104))(v136, v193, v158);
    sub_22C90703C();
    sub_22C9068FC();
    v137 = v170;
    (v184)(v170, v134, v135);
    sub_22C36C640(v137, 0, 1, v135);
    sub_22C7C6728();
    v138 = *(v133 + 8);
    v138(v134, v135);
    v139 = *(v154 + 8);
    v140 = v155;
    v139(v174, v155);
    (*(v175 + 8))(v176, v177);
    v138(v180, v135);
    v138(v187, v135);
    v139(v153, v140);
    v52 = *(v191 + 8);
    v141 = v151;
    (v52)(v181, v151);
    (v52)(v190, v141);
  }

  return v52;
}

void sub_22C4051E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(a3, a1, v6);
  while (*(a2 + 16))
  {
    sub_22C628274();
    if ((v12 & 1) == 0)
    {
      break;
    }

    v10(v9, *(a2 + 56) + *(v7 + 72) * v11, v6);
    (*(v7 + 8))(a3, v6);
    (*(v7 + 32))(a3, v9, v6);
  }
}

uint64_t sub_22C40538C(uint64_t a1)
{
  v2 = sub_22C407BD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4053C8(uint64_t a1)
{
  v2 = sub_22C407BD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_22C405404(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C374A2C();
    if (!v2 & v1)
    {
      v3 = sub_22C36FBFC();
      v5 = sub_22C3A5908(v3, v4);
      sub_22C3699B8(v5);
      sub_22C3A7214();
      return;
    }
  }

  __break(1u);
}

void sub_22C4054E8(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  sub_22C374A2C();
  if (!(!v6 & v5))
  {
    goto LABEL_8;
  }

  v4(0);
  sub_22C36985C();
  v9 = *(v8 + 16);
  v10 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v2;

  v9(v1, v10, v7);
}

unint64_t sub_22C405578(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

void sub_22C4055C0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C374A2C();
    if (!v2 & v1)
    {
      v3 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
      sub_22C3699B8(v3);
      sub_22C369BAC();
      sub_22C40799C();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_22C405658()
{
  result = qword_27D9BBFF8;
  if (!qword_27D9BBFF8)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBFF8);
  }

  return result;
}

void sub_22C4056BC(uint64_t a1)
{
  v56 = sub_22C901FAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9070DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v57 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA58();
  v51 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  v64 = v17 + 16;
  v18 = *(a1 + 16);
  v59 = v3;
  v60 = v18;
  v54 = (v3 + 8);
  v55 = v17 + 32;
  v58 = v17;
  v52 = a1;
  v53 = (v17 + 8);
  v61 = v6;
  while (1)
  {
    if (v60 == v15)
    {

      return;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    sub_22C37054C();
    v62 = *(v19 + 72);
    v63 = v20;
    v21 = *(v19 + 16);
    v21(v14, a1 + v20 + v62 * v15, v7);
    sub_22C9068FC();
    if (v65)
    {

      sub_22C7DBC48();
      v23 = v22;
      v25 = v24;

      if (v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_22C7D9A98(v6, v66 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), *(v66 + 16));
      if (v27)
      {
LABEL_8:
        sub_22C7D4F14();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_22C377BA0();
          sub_22C3B6E5C(v29, v30, v31);
          v16 = v67;
        }

        v32 = *(v16 + 16);
        if (v32 >= *(v16 + 24) >> 1)
        {
          sub_22C379FA0();
          sub_22C3B6E5C(v43, v44, v45);
          v16 = v67;
        }

        *(v16 + 16) = v32 + 1;
        v33 = v16 + 32;
        *(v16 + 32 + 8 * v32) = MEMORY[0x277D84F90];
        v21(v57, v14, v7);
        v34 = *(v16 + 32 + 8 * v32);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 32 + 8 * v32) = v34;
        if ((v35 & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5916E4();
          v34 = v46;
          *(v33 + 8 * v32) = v46;
        }

        v36 = *(v34 + 16);
        v37 = v36 + 1;
        if (v36 >= *(v34 + 24) >> 1)
        {
          sub_22C379FA0();
          sub_22C5916E4();
          v34 = v47;
          *(v33 + 8 * v32) = v47;
        }

        goto LABEL_26;
      }

      v23 = v26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C300();
      v16 = v38;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if (v23 >= *(v16 + 16))
    {
      goto LABEL_30;
    }

    v39 = v16 + 32;
    v21(v51, v14, v7);
    v34 = *(v16 + 32 + 8 * v23);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 32 + 8 * v23) = v34;
    if ((v40 & 1) == 0)
    {
      sub_22C36D270();
      sub_22C5916E4();
      v34 = v48;
      *(v39 + 8 * v23) = v48;
    }

    v41 = *(v34 + 16);
    v37 = v41 + 1;
    if (v41 >= *(v34 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C5916E4();
      v34 = v49;
      *(v39 + 8 * v23) = v49;
    }

LABEL_26:
    a1 = v52;
    *(v34 + 16) = v37;
    sub_22C38A894();
    v42();
    v6 = v61;
    (*v54)(v61, v56);
    (*v53)(v14, v7);
    ++v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22C405B44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C3A7214();
  v6 = v1 + 1;
  v7 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_22C36D270();
    sub_22C3B6D28(v9, v10, v11);
    v7 = *v6;
  }

  v13 = *(v7 + 16);
  v12 = *(v7 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_22C3B6D28((v12 > 1), v13 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v13 + 1;
  sub_22C36BA94();
  result = sub_22C407C2C();
  v2[1] = v7;
  v15 = *v2;
  if (!*v2)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_22C36CA70(v15 + 16, v17);
  if (MEMORY[0x2318B0640](*(v15 + 16) & 0x3FLL) <= v13)
  {
    if (v13 <= 0xE && (*(v15 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v13 + 1);
    return sub_22C7D5F44();
  }

  result = sub_22C7E4358();
  v16 = *v2;
  if (*v2)
  {

    sub_22C407408((v16 + 16), v16 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C405D48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C901FAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v10 = v1[1];
  v8 = v1 + 1;
  v9 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C3B6EDC();
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  if (v12 >= *(v9 + 24) >> 1)
  {
    sub_22C3B6EDC();
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  v14 = *v2;
  if (!*v2)
  {
    if (v12 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v14 + 16) & 0x3FLL) <= v12)
  {
    if (v12 <= 0xE && (*(v14 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return result;
    }

LABEL_14:
    v16 = MEMORY[0x2318B0670](v12 + 1);
    return sub_22C7D5F5C(v16);
  }

  result = sub_22C7E4358();
  v15 = *v2;
  if (*v2)
  {

    sub_22C4074D8((v15 + 16), v15 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22C405F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_22C36D270();
    sub_22C3B5E2C(v14, v15, v16, v17, v18, v19, v20);
    v7 = *v6;
  }

  v22 = *(v7 + 16);
  v21 = *(v7 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_22C3B5E2C(v21 > 1, v22 + 1, 1, v10, v11, v12, v13);
    v7 = *v6;
  }

  *(v7 + 16) = v22 + 1;
  v23 = v7 + 16 * v22;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  v3[1] = v7;
  v24 = *v3;
  if (!*v3)
  {
    if (v22 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C36CA70(v24 + 16, v28);
  if (MEMORY[0x2318B0640](*(v24 + 16) & 0x3FLL) <= v22)
  {
    if (v22 <= 0xE && (*(v24 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v27 = MEMORY[0x2318B0670](v22 + 1);
    sub_22C7D5E80(v27);
    return;
  }

  sub_22C7E4358();
  v25 = *v3;
  if (*v3)
  {

    sub_22C407610((v25 + 16), v25 + 32, a1, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C4060D8(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v4 = sub_22C3699B8(v3);
  v47[2] = v5;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v55 = v10;
  v11 = sub_22C36BA0C();
  v12 = type metadata accessor for PromptTreeIdentifier(v11);
  v13 = sub_22C3699B8(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22C37FCD8();
  sub_22C3A5908(&qword_27D9BC040, &unk_22C911CD0);
  sub_22C369824();
  v50 = v19;
  v51 = v18;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v49 = v47 - v21;
  v22 = MEMORY[0x277D84F90];
  v57 = 0;
  v58 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B44, sub_22C7D5EB0, sub_22C7E4358);
  v56 = v22;
  v23 = sub_22C36D6CC();
  sub_22C3B661C(v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = 0;
  v32 = v56;
  v52 = *(a1 + 16);
  v48 = a1;
  v47[1] = v8;
  while (1)
  {
    if (v31 == v52)
    {

      return;
    }

    if (v31 >= *(a1 + 16))
    {
      break;
    }

    v53 = v32;
    sub_22C37054C();
    sub_22C3A7214();
    sub_22C4079F4();
    sub_22C407C2C();
    v33 = *(v58 + 16);
    if (v57)
    {

      sub_22C7DAB7C();
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v36 = 0;
      while (v33 != v36)
      {
        sub_22C40799C();
        sub_22C36CC9C();
        sub_22C488E5C();
        v38 = v37;
        sub_22C407A4C(v16, type metadata accessor for PromptTreeIdentifier);
        ++v36;
        if (v38)
        {
          goto LABEL_16;
        }
      }
    }

    sub_22C7D4550();
    v39 = v55;
    sub_22C3A7214();
    v32 = v53;
    v56 = v53;
    v46 = *(v53 + 16);
    v45 = *(v53 + 24);
    v54 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      sub_22C3B661C(v45 > 1, v54, 1, v40, v41, v42, v43, v44);
      v32 = v56;
    }

    ++v31;
    sub_22C36DD28(v39, &qword_27D9BAEC8, &unk_22C90D770);
    *(v32 + 16) = v54;
    sub_22C37054C();
    sub_22C407C2C();
    sub_22C407A4C(v1, type metadata accessor for PromptTreeIdentifier);
    a1 = v48;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C406550(uint64_t a1)
{
  v3 = sub_22C9081CC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  sub_22C37FCD8();
  v11 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v11);
  v51 = v12;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  sub_22C3A5908(&qword_27D9BC060, &unk_22C911E50);
  sub_22C369824();
  v49 = v17;
  v50 = v16;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v48 = v43 - v19;
  v20 = MEMORY[0x277D84F90];
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B74, sub_22C7D5F44, sub_22C7E4358);
  v54 = v20;
  v21 = v3;
  v22 = sub_22C36D6CC();
  sub_22C3B6170(v22, v23, v24);
  v25 = 0;
  v26 = v54;
  v52 = *(a1 + 16);
  v53 = (v5 + 32);
  v46 = v5;
  v47 = a1;
  v43[1] = v5 + 8;
  v43[2] = v5 + 16;
  v44 = v15;
  v45 = v9;
  while (1)
  {
    if (v52 == v25)
    {

      return;
    }

    if (v25 >= *(a1 + 16))
    {
      break;
    }

    sub_22C37054C();
    v27 = v48;
    sub_22C3A7214();
    v28 = *(v50 + 48);
    sub_22C407C2C();
    v29 = *v53;
    (*v53)(v1, &v27[v28], v21);
    if (v55)
    {

      sub_22C7DB87C();
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22C7D9774();
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v33 = v44;
    sub_22C7D4D7C();
    v34 = v45;
    v35 = sub_22C36CC9C();
    v36(v35);
    v54 = v26;
    v37 = *(v26 + 16);
    if (v37 >= *(v26 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C3B6170(v40, v41, v42);
    }

    v38 = v46;
    (*(v46 + 8))(v1, v21);
    v26 = v54;
    *(v54 + 16) = v37 + 1;
    sub_22C36BA94();
    v29(v26 + v39 + *(v38 + 72) * v37, v34, v21);
    sub_22C36DD28(v33, &qword_27D9BB0C0, &qword_22C90D960);
    ++v25;
    a1 = v47;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_22C406978(uint64_t a1)
{
  v2 = sub_22C9070DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v32 - v7;
  v46 = sub_22C901FAC();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC018, &qword_22C911CA8);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v32 - v12;
  v13 = MEMORY[0x277D84F90];
  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5B8C, sub_22C7D5F5C, sub_22C7E4358);
  v47 = v13;
  sub_22C3B6D88();
  v14 = 0;
  v15 = v47;
  v37 = a1;
  v38 = v8 + 32;
  v16 = *(a1 + 16);
  v43 = v6;
  v44 = v16;
  v17 = (v3 + 32);
  v35 = (v3 + 16);
  v36 = v3;
  v42 = v8;
  v33 = (v8 + 8);
  v34 = v3 + 8;
  while (1)
  {
    if (v44 == v14)
    {

      return;
    }

    if (v14 >= *(a1 + 16))
    {
      break;
    }

    v18 = v39;
    sub_22C3A7214();
    v19 = v42;
    v20 = *(v41 + 48);
    (*(v42 + 32))(v10, v18, v46);
    v21 = *v17;
    v22 = v2;
    (*v17)(v45, &v18[v20], v2);
    if (v48)
    {

      sub_22C7DBC48();
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22C7D9A98(v10, v49 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), *(v49 + 16));
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v26 = v45;
    sub_22C7D4F14();
    v27 = v43;
    (*v35)(v43, v26, v22);
    v47 = v15;
    v29 = *(v15 + 16);
    v28 = *(v15 + 24);
    v30 = v26;
    if (v29 >= v28 >> 1)
    {
      sub_22C3B6D88();
      v27 = v43;
    }

    v31 = v36;
    (*(v36 + 8))(v30, v22);
    v15 = v47;
    *(v47 + 16) = v29 + 1;
    v21((v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29), v27, v22);
    (*v33)(v10, v46);
    ++v14;
    a1 = v37;
    v2 = v22;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_22C406E04()
{
  result = qword_27D9BC008;
  if (!qword_27D9BC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC008);
  }

  return result;
}

uint64_t sub_22C406E58(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C369824();
  v65 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v7 = (v5 - v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v54 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  sub_22C369824();
  v57 = v14;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v56 = &v54 - v16;
  v17 = MEMORY[0x277D84F90];
  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  sub_22C4077AC(*(a1 + 16), 0, sub_22C3B5BA4, sub_22C7D5FA4, sub_22C7E4358);
  v70 = v17;
  v18 = sub_22C36D6CC();
  sub_22C3B63D4(v18, v19, v20);
  v21 = 0;
  v22 = v70;
  v59 = *(a1 + 16);
  v64 = v2;
  v55 = a1;
  while (1)
  {
    if (v21 == v59)
    {

      return v71;
    }

    if (v21 >= *(a1 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_22C36A7E0();
      sub_22C407A4C(v11, v52);
      sub_22C379838();

      goto LABEL_27;
    }

    sub_22C37054C();
    v23 = v56;
    sub_22C3A7214();
    v24 = *(v58 + 48);
    sub_22C369BAC();
    sub_22C4079F4();
    v62 = *&v23[v24];
    v25 = v71;
    v26 = v72 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v63 = v22;
    if (!v71)
    {
      break;
    }

    v60 = v21;
    v27 = v71 + 16;
    sub_22C90B62C();
    v28 = *v13;

    sub_22C48A828(&v66, v28);
    v61 = sub_22C901FAC();
    sub_22C4075B8();
    sub_22C909F8C();
    v29 = *(v13 + *(v2 + 24));
    sub_22C48A9B4(&v66, v29);
    v30 = sub_22C90B66C();
    v31 = 1 << *(v25 + 16);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      goto LABEL_24;
    }

    v61 = v25;
    v34 = v33 & v30;
    v35 = sub_22C9030FC();
    *&v77 = v27;
    *(&v77 + 1) = v25 + 32;
    *&v78 = v34;
    *(&v78 + 1) = v35;
    v2 = v64;
    *&v79 = v36;
    *(&v79 + 1) = v37;
    v80 = 0;
    sub_22C90313C();
    v66 = v77;
    v67 = v78;
    v68 = v79;
    v69 = v80;
    if ((v38 & 1) == 0)
    {
      do
      {
        sub_22C369BAC();
        sub_22C40799C();
        if (sub_22C48865C(*v11, v28) & 1) != 0 && (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v11 + *(v2 + 24)), v29))
        {
          goto LABEL_25;
        }

        sub_22C36A7E0();
        sub_22C407A4C(v11, v39);
        sub_22C90315C();
        v73 = v66;
        v74 = v67;
        v75 = v68;
        v76 = v69;
        sub_22C90313C();
      }

      while ((v40 & 1) == 0);
    }

    sub_22C379838();

    a1 = v55;
    v21 = v60;
LABEL_19:
    sub_22C7D5308();
    v22 = v63;
    v70 = v63;
    v46 = *(v63 + 16);
    if (v46 >= *(v63 + 24) >> 1)
    {
      sub_22C379FA0();
      sub_22C3B63D4(v48, v49, v50);
      v22 = v70;
    }

    ++v21;
    *(v22 + 16) = v46 + 1;
    *(v22 + 8 * v46 + 32) = v62;
    sub_22C36A7E0();
    sub_22C407A4C(v13, v47);
  }

  v41 = *(v72 + 16);
  if (!v41)
  {
    goto LABEL_19;
  }

  v42 = *v13;
  v43 = *(v65 + 72);
  while (1)
  {
    sub_22C369BAC();
    sub_22C40799C();
    if (sub_22C48865C(*v7, v42))
    {
      sub_22C37B968();
      if (sub_22C901F6C())
      {
        sub_22C37B968();
        if (sub_22C48819C(*(v7 + *(v44 + 24)), *(v13 + *(v44 + 24))))
        {
          break;
        }
      }
    }

    sub_22C36A7E0();
    sub_22C407A4C(v7, v45);
    v26 += v43;
    if (!--v41)
    {
      v2 = v64;
      goto LABEL_19;
    }
  }

  sub_22C36A7E0();
  result = sub_22C407A4C(v7, v53);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C407408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C90B62C();
  sub_22C7E3060(&v22, v6, v7, v8, v9, v10, v11, v12, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  result = sub_22C90B66C();
  v14 = 1 << *a1;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 & result;
    v18 = sub_22C9030FC();
    v22 = a1;
    v23 = a2;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    LOBYTE(v28) = 0;
    while (v25)
    {
      sub_22C90315C();
    }

    return sub_22C90314C();
  }

  return result;
}

uint64_t sub_22C4074D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C901FAC();
  sub_22C4075B8();
  result = sub_22C909F7C();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_22C9030FC())
    {
      while (1)
      {
        sub_22C90315C();
      }
    }

    return sub_22C90314C();
  }

  return result;
}

unint64_t sub_22C4075B8()
{
  result = qword_2814357B0;
  if (!qword_2814357B0)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814357B0);
  }

  return result;
}

uint64_t sub_22C407610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C90B62C();
  sub_22C909FFC();
  result = sub_22C90B66C();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_22C9030FC())
    {
      while (1)
      {
        sub_22C90315C();
      }
    }

    return sub_22C90314C();
  }

  return result;
}

uint64_t sub_22C4077AC(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    sub_22C36CA70(v11 + 16, v18);
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x2318B0670](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    sub_22C36CA70(v11 + 16, v19);
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x2318B0670](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}

void sub_22C4078F4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2)
  {

    sub_22C36FBFC();
    sub_22C7DBC48();
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = sub_22C36FBFC();
    sub_22C7D9A98(v11, v12, a1);
    v6 = v13;
    v8 = v14;
    v10 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = v10;
}

uint64_t sub_22C40799C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C4079F4()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C407A4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for BuiltinPostProcessing.BuiltinPostProcessingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C407B84()
{
  result = qword_27D9BC050;
  if (!qword_27D9BC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC050);
  }

  return result;
}

unint64_t sub_22C407BD8()
{
  result = qword_27D9BC058;
  if (!qword_27D9BC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC058);
  }

  return result;
}

uint64_t sub_22C407C2C()
{
  sub_22C36986C();
  sub_22C3A5908(v1, v2);
  sub_22C36985C();
  v3 = sub_22C36BA00();
  v4(v3);
  return v0;
}

void sub_22C407CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v21 = sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22C3B6E7C(0, v8, 0);
    v9 = v24;
    v10 = *(v5 + 72);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v10 * (v8 - 1);
    v20 = -v10;
    while (1)
    {
      sub_22C3DB138(v11, v7, &qword_27D9BAE60, &unk_22C911F20);
      v12 = *&v7[*(v21 + 48)];
      v13 = sub_22C40A630(v11);
      if (v3)
      {
        break;
      }

      v14 = v13;
      v23 = 0;
      v15 = sub_22C9070DC();
      (*(*(v15 - 8) + 8))(v7, v15);
      v24 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22C3B6E7C(v16 > 1, v17 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      v11 += v20;
      --v8;
      v3 = v23;
      if (!v8)
      {
        return;
      }
    }

    v19 = sub_22C9070DC();
    (*(*(v19 - 8) + 8))(v7, v19);
  }
}

uint64_t sub_22C407F20(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v91 = a2;
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v93 = &v74 - v12;
  v13 = sub_22C3A5908(&qword_27D9BC0E8, &qword_22C911FC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v74 - v17;
  v18 = a4 + 64;
  v19 = 1 << *(a4 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a4 + 64);
  v74 = (v19 + 63) >> 6;
  v85 = (v7 + 32);
  v90 = v7;
  v95 = v7 + 16;
  v96 = (v7 + 8);
  v82 = a4;

  v23 = 0;
  v81 = v16;
  v75 = a4 + 64;
  v77 = a1;
  v97 = v6;
  if (v21)
  {
    while (2)
    {
      v79 = v23;
      v24 = v23;
LABEL_11:
      v78 = (v21 - 1) & v21;
      v26 = __clz(__rbit64(v21)) | (v24 << 6);
      v27 = v82;
      v28 = v90;
      v29 = v93;
      (*(v90 + 16))(v93, *(v82 + 48) + *(v90 + 72) * v26, v6);
      v30 = *(*(v27 + 56) + 8 * v26);
      v31 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v16 = v81;
      v33(v81, v29, v6);
      *&v16[v32] = v30;
      sub_22C36C640(v16, 0, 1, v31);

      v25 = v80;
LABEL_12:
      sub_22C3DB08C(v16, v25, &qword_27D9BC0E8, &qword_22C911FC8);
      v34 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      v35 = sub_22C370B74(v25, 1, v34);
      v36 = v91;
      if (v35 == 1)
      {
        v71 = v82;

        swift_retain_n();
        swift_retain_n();
        v72 = v76;
        swift_retain_n();
        sub_22C41D7D4(v71, a1, v36, v72);
      }

      else
      {
        v37 = *(v25 + *(v34 + 48));
        v38 = v86;
        v39 = (*v85)(v86, v25, v6);
        MEMORY[0x28223BE20](v39);
        *(&v74 - 4) = a1;
        *(&v74 - 3) = v36;
        *(&v74 - 2) = v38;

        v40 = v87;
        sub_22C7D5C98(sub_22C3E33E8, (&v74 - 6), v36);
        LOBYTE(v38) = v41;

        if ((v38 & 1) == 0)
        {
          v87 = v40;
          v42 = 0;
          v43 = *(v37 + 56);
          v84 = v37 + 56;
          v44 = 1 << *(v37 + 32);
          if (v44 < 64)
          {
            v45 = ~(-1 << v44);
          }

          else
          {
            v45 = -1;
          }

          v46 = v45 & v43;
          v83 = (v44 + 63) >> 6;
          v47 = v94;
          v89 = v37;
LABEL_18:
          while (v46)
          {
LABEL_23:
            v49 = __clz(__rbit64(v46));
            v46 &= v46 - 1;
            v50 = v90;
            v51 = *(v90 + 72);
            v52 = *(v90 + 16);
            v52(v47, *(v37 + 48) + v51 * (v49 | (v42 << 6)), v97);
            v53 = v91 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
            v54 = *(v91 + 16);
            v55 = v96;
            v88 = v96 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (!a1)
            {
              v92 = v52;

              v59 = v54 + 1;
              v70 = v97;
              while (--v59)
              {
                v60 = v53 + v51;
                v61 = v51;
                v62 = v93;
                v92(v93, v53, v70);
                sub_22C4208F4(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
                v63 = sub_22C90A0BC();
                v70 = v97;
                v64 = v63;
                v65 = *v96;
                v66 = v62;
                v51 = v61;
                (*v96)(v66, v97);
                v53 = v60;
                if (v64)
                {

                  a1 = v77;

                  v67 = v94;
                  result = v65(v94, v70);
                  v47 = v67;
                  v37 = v89;
                  goto LABEL_18;
                }
              }

              a1 = v77;

              v58 = *v96;
              (*v96)(v94, v70);
              goto LABEL_34;
            }

            sub_22C7DBC48();
            v57 = v56;

            v58 = *v55;
            result = (*v55)(v47, v97);
            v37 = v89;
            if (v57)
            {
              v70 = v97;
LABEL_34:

              sub_22C3A5908(&qword_27D9BC0F8, &qword_22C911FD8);
              sub_22C3D32C8(&qword_27D9BC100, &qword_27D9BC0F8, &qword_22C911FD8, &unk_22C910B80);
              swift_allocError();
              *v69 = 0;
              swift_willThrow();

              v58(v86, v70);
              return a1;
            }
          }

          while (1)
          {
            v48 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_39;
            }

            if (v48 >= v83)
            {
              break;
            }

            v46 = *(v84 + 8 * v48);
            ++v42;
            if (v46)
            {
              v42 = v48;
              goto LABEL_23;
            }
          }

          v6 = v97;
          (*v96)(v86, v97);

          v18 = v75;
          v21 = v78;
          v23 = v79;
          v16 = v81;
          if (v78)
          {
            continue;
          }

          break;
        }

        sub_22C3A5908(&qword_27D9BC0F8, &qword_22C911FD8);
        sub_22C3D32C8(&qword_27D9BC100, &qword_27D9BC0F8, &qword_22C911FD8, &unk_22C910B80);
        swift_allocError();
        *v73 = 0;
        swift_willThrow();

        (*v96)(v86, v6);
      }

      return a1;
    }
  }

  v25 = v80;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v74)
    {
      v79 = v23;
      v68 = sub_22C3A5908(&qword_27D9BC0F0, &qword_22C911FD0);
      sub_22C36C640(v16, 1, 1, v68);
      v78 = 0;
      goto LABEL_12;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v79 = v24;
      goto LABEL_11;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

void *sub_22C408814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v15 = a1;
  result = sub_22C7D5C98(sub_22C407C84, v12, a4);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    result = sub_22C7D5C98(sub_22C407C84, v11, a4);
    if ((v10 & 1) == 0)
    {
      return (result < v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4088E4(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = sub_22C901FAC();
  v8 = *(v73 - 8);
  v9 = MEMORY[0x28223BE20](v73);
  v74 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v62 = *(a2 + 16);
  v56 = a2;
  v57 = a3;
  v55 = a1;
  if (v62)
  {
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v60 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v61 = a2 + v60;
    v71 = *(v17 + 56);
    v72 = v18;
    v19 = (v17 - 8);

    v20 = 0;
    v75 = 0;
    v21 = 0;
    v22 = 0;
    v23 = MEMORY[0x277D84F98];
    a1 = v73;
    v59 = a4;
    v68 = v16;
    v69 = v17;
    v67 = (v17 - 8);
    while (1)
    {
      v64 = v22;
      v72(v16, v61 + v71 * v22, a1);
      if (*(a4 + 16) && (sub_22C628274(), (v25 & 1) != 0))
      {
        v26 = (*(a4 + 56) + 16 * v24);
        v27 = v26[1];
        v65 = *v26;
      }

      else
      {
        sub_22C7F5258();
        v65 = v28;
        v27 = v29;
      }

      v30 = *(v27 + 16);
      v70 = v27;
      if (v30)
      {
        break;
      }

      v48 = *v19;
      v49 = v64;
LABEL_20:
      v50 = v49 + 1;
      a1 = v73;
      v48(v16, v73);

      v22 = v50;
      if (v50 == v62)
      {
        goto LABEL_23;
      }
    }

    v63 = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31 = 0;
    v32 = v27 + v60;
    v33 = v73;
    while (v31 < v30)
    {
      v34 = v72;
      v72(v76, v32, v33);
      sub_22C372F94(v20, 0);
      v34(v74, v68, v33);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_22C408E58;
      *(v35 + 24) = 0;
      sub_22C372F94(v75, v21);
      swift_isUniquelyReferenced_nonNull_native();
      v77 = v23;
      sub_22C628274();
      if (__OFADD__(v23[2], (v37 & 1) == 0))
      {
        goto LABEL_27;
      }

      v38 = v36;
      v39 = v37;
      sub_22C3A5908(&qword_27D9BC0D8, &qword_22C911FB8);
      v40 = sub_22C90B15C();
      v23 = v77;
      if (v40)
      {
        sub_22C628274();
        if ((v39 & 1) != (v42 & 1))
        {
          goto LABEL_29;
        }

        v38 = v41;
      }

      if ((v39 & 1) == 0)
      {
        v43 = (*(v35 + 16))();
        v23[(v38 >> 6) + 8] |= 1 << v38;
        v72((v23[6] + v38 * v71), v76, v73);
        *(v23[7] + 8 * v38) = v43;
        v44 = v23[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_28;
        }

        v23[2] = v46;
      }

      ++v31;
      v47 = v66;
      sub_22C6A54FC();
      v48 = *v67;
      v33 = v73;
      (*v67)(v76, v73);
      v48(v47, v33);
      v30 = *(v70 + 16);
      v32 += v71;
      v75 = sub_22C420FE0;
      v20 = sub_22C408E58;
      v21 = v35;
      if (v31 == v30)
      {
        v21 = v35;
        a4 = v59;
        v19 = v67;
        v16 = v68;
        v49 = v64;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_22C90B54C();
    __break(1u);
  }

  else
  {

    v20 = 0;
    v75 = 0;
    v21 = 0;
    v23 = MEMORY[0x277D84F98];
LABEL_23:
    v51 = v58;
    v52 = sub_22C407F20(v55, v56, v57, v23);
    if (!v51)
    {
      a1 = v52;
    }

    sub_22C372F94(v20, 0);
    sub_22C372F94(v75, v21);
    return a1;
  }

  return result;
}

void (*sub_22C408E64(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v152 = a3;
  v163 = a2;
  v140 = sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v143 = &v139 - v4;
  v149 = sub_22C3A5908(&qword_27D9BC0C8, &qword_22C911FB0);
  v5 = MEMORY[0x28223BE20](v149);
  v148 = (&v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v147 = &v139 - v8;
  MEMORY[0x28223BE20](v7);
  v146 = (&v139 - v9);
  v10 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v153 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v158 = &v139 - v13;
  v14 = sub_22C901FAC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v141 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v139 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = (&v139 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v139 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v139 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v139 - v28;
  v30 = sub_22C9070DC();
  v31 = MEMORY[0x28223BE20](v30);
  v142 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v159 = &v139 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v139 - v36;
  v38 = 0;
  v172 = 0;
  v173 = MEMORY[0x277D84F90];
  v174 = MEMORY[0x277D84F90];
  v160 = a1;
  v161 = v35;
  v165 = *(a1 + 16);
  v166 = v39 + 16;
  v168 = (v15 + 16);
  v169 = v15;
  v170 = (v15 + 8);
  v164 = v39;
  v162 = (v39 + 8);
  v156 = v24;
  v167 = v27;
  v157 = &v139 - v36;
  v40 = v15;
  while (v38 != v165)
  {
    v41 = v38;
    v42 = v160 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v38;
    v171 = *(v164 + 16);
    (v171)(v37, v42, v30);
    swift_getAtKeyPath();
    v154 = v174;
    v43 = v173 + ((v169[80] + 32) & ~v169[80]);
    v155 = v173;
    v44 = *(v173 + 16);
    if (v172)
    {

      sub_22C7DBC48();
      i = v45;
      v48 = v47;

      if ((v48 & 1) == 0)
      {
LABEL_10:
        v53 = v158;
        sub_22C4054D0(i, v154);
        v54 = v161;
        sub_22C36C640(v53, 0, 1, v161);
        sub_22C36DD28(v53, &qword_27D9BAA18, &qword_22C911C40);
        sub_22C420F8C();
        swift_allocError();
        swift_willThrow();
        (*v170)(v29, v14);
        (*v162)(v157, v54);

        goto LABEL_11;
      }
    }

    else
    {
      for (i = 0; v44 != i; ++i)
      {
        v51 = v167;
        (*(v40 + 16))(v167, v43 + *(v40 + 72) * i, v14);
        sub_22C4208F4(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v52 = sub_22C90A0BC();
        (*(v40 + 8))(v51, v14);
        if (v52)
        {
          goto LABEL_10;
        }
      }
    }

    v49 = v158;
    v30 = v161;
    sub_22C36C640(v158, 1, 1, v161);
    sub_22C36DD28(v49, &qword_27D9BAA18, &qword_22C911C40);
    (*v168)(v167, v29, v14);
    v50 = v153;
    v37 = v157;
    (v171)(v153, v157, v30);
    sub_22C36C640(v50, 0, 1, v30);
    sub_22C7C6728();
    (*v170)(v29, v14);
    (*v162)(v37, v30);
    v38 = v41 + 1;
    v24 = v156;
  }

  v56 = 0;
  v58 = v172;
  v57 = v173;
  v59 = v174;
  v158 = MEMORY[0x277D84F98];
  v154 = v172;
  v155 = v173;
  v54 = v145;
  for (j = v174; ; v59 = j)
  {
    if (v56 == v165)
    {

      v83 = v144;
      v84 = sub_22C407F20(v58, v57, v59, v158);
      if (v83)
      {

        goto LABEL_11;
      }

      v171 = v84;
      v88 = sub_22C4088E4(v84, v85, v86, v87);
      v90 = v89;
      v92 = v91;
      v159 = v93;

      v94 = v90;
      v95 = v92;
      v96 = v159;

      v97 = sub_22C3E2748(MEMORY[0x277D84F90], v88, v94, v95, v96);
      v156 = v95;
      v157 = v94;
      v158 = v88;
      v153 = 0;
      sub_22C5AD878(v97);
      v167 = v98;
      sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v99 = sub_22C909F0C();
      for (k = 0; v165 != k; k = v171 + 1)
      {
        v101 = v164;
        v102 = v160 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * k;
        v103 = v149;
        v104 = *(v149 + 48);
        v105 = v146;
        v171 = k;
        *v146 = k;
        (*(v101 + 16))(&v105[v104], v102, v30);
        sub_22C3DB138(v105, v147, &qword_27D9BC0C8, &qword_22C911FB0);
        v106 = *(v103 + 48);
        swift_getAtKeyPath();
        v107 = v148;
        sub_22C3DB138(v105, v148, &qword_27D9BC0C8, &qword_22C911FB0);
        v108 = *v107;
        swift_isUniquelyReferenced_nonNull_native();
        v172 = v99;
        sub_22C628274();
        if (__OFADD__(v99[2], (v110 & 1) == 0))
        {
          goto LABEL_57;
        }

        v111 = v109;
        v112 = v110;
        sub_22C3A5908(&qword_27D9BC0E0, &qword_22C911FC0);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          if ((v112 & 1) != (v114 & 1))
          {
            goto LABEL_60;
          }

          v111 = v113;
        }

        v99 = v172;
        if (v112)
        {
          *(*(v172 + 56) + 8 * v111) = v108;
        }

        else
        {
          *(v172 + 8 * (v111 >> 6) + 64) |= 1 << v111;
          (*(v169 + 2))(v99[6] + *(v169 + 9) * v111, v150, v14);
          *(v99[7] + 8 * v111) = v108;
          v115 = v99[2];
          v81 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v81)
          {
            goto LABEL_58;
          }

          v99[2] = v116;
        }

        v30 = v161;
        v117 = *(v149 + 48);
        (*v170)(v150, v14);
        v118 = *v162;
        (*v162)(v148 + v117, v30);
        v118((v147 + v106), v30);
        sub_22C36DD28(v146, &qword_27D9BC0C8, &qword_22C911FB0);
      }

      v119 = v167;
      v120 = *(v167 + 2);
      if (!v120)
      {
LABEL_51:

        sub_22C8D5374();
        v54 = v138;

        return v54;
      }

      v172 = MEMORY[0x277D84F90];
      sub_22C3B6EBC(0, v120, 0);
      v121 = 0;
      v122 = v172;
      v169 = &v119[(*(v164 + 80) + 32) & ~*(v164 + 80)];
      while (1)
      {
        v171 = v122;
        if (v121 >= *(v119 + 2))
        {
          goto LABEL_59;
        }

        v123 = *(v164 + 16);
        v124 = v142;
        v123(v142, &v169[*(v164 + 72) * v121], v30);
        v123(v143, v124, v30);
        v125 = v141;
        swift_getAtKeyPath();
        if (!v99[2])
        {
          goto LABEL_54;
        }

        sub_22C628274();
        v127 = *v170;
        if ((v128 & 1) == 0)
        {
          goto LABEL_55;
        }

        v129 = *(v140 + 48);
        v130 = v30;
        v131 = *(v99[7] + 8 * v126);
        v127(v125, v14);
        v132 = v143;
        *&v143[v129] = v131;
        (*v162)(v142, v130);
        v122 = v171;
        v172 = v171;
        v134 = *(v171 + 16);
        v133 = *(v171 + 24);
        if (v134 >= v133 >> 1)
        {
          sub_22C3B6EBC((v133 > 1), v134 + 1, 1);
          v122 = v172;
        }

        ++v121;
        *(v122 + 16) = v134 + 1;
        sub_22C3DB08C(v132, v122 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v134, &qword_27D9BAE70, &unk_22C90FA90);
        v30 = v161;
        v119 = v167;
        if (v120 == v121)
        {
          goto LABEL_51;
        }
      }
    }

    v60 = v160 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v61 = *(v164 + 72);
    v157 = v56;
    (*(v164 + 16))(v159, v60 + v61 * v56, v30);
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v30 = v172;
    v62 = *(v172 + 16);
    v63 = sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v64 = MEMORY[0x2318B7DB0](v62, v14, v63);
    v178 = v64;
    v65 = *(v30 + 16);
    if (v65)
    {
      v66 = (v169[80] + 32) & ~v169[80];
      v153 = v30;
      v30 += v66;
      v171 = *(v169 + 9);
      v67 = *(v169 + 2);
      v68 = v170;
      v69 = v167;
      do
      {
        v67(v54, v30, v14);
        sub_22C6A54FC();
        (*v68)(v69, v14);
        v30 += v171;
        --v65;
      }

      while (v65);

      v70 = v178;
      v58 = v154;
      v57 = v155;
      v24 = v156;
    }

    else
    {
      v70 = v64;
    }

    v71 = sub_22C420A2C(v58, v57, v70);
    v72 = v158;
    swift_isUniquelyReferenced_nonNull_native();
    v172 = v72;
    sub_22C628274();
    if (__OFADD__(*(v72 + 16), (v74 & 1) == 0))
    {
      break;
    }

    v75 = v73;
    v76 = v74;
    sub_22C3A5908(&qword_27D9BC0D8, &qword_22C911FB8);
    if (sub_22C90B15C())
    {
      sub_22C628274();
      v57 = v155;
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_60;
      }

      v75 = v77;
    }

    else
    {
      v57 = v155;
    }

    v79 = v172;
    v158 = v172;
    if (v76)
    {
      *(*(v172 + 56) + 8 * v75) = v71;

      goto LABEL_29;
    }

    *(v172 + 8 * (v75 >> 6) + 64) |= 1 << v75;
    (*(v169 + 2))(v79[6] + *(v169 + 9) * v75, v24, v14);
    *(v79[7] + 8 * v75) = v71;
    v80 = v79[2];
    v81 = __OFADD__(v80, 1);
    v82 = v80 + 1;
    if (v81)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v79[2] = v82;
LABEL_29:
    v56 = v157 + 1;
    (*v170)(v24, v14);
    v30 = v161;
    (*v162)(v159, v161);
    v58 = v154;
  }

  __break(1u);
LABEL_54:
  v127 = *v170;
LABEL_55:
  v127(v141, v14);
  sub_22C90735C();
  sub_22C3A5F00();
  swift_allocError();
  v135 = v177;
  v136 = v176;
  *v137 = v175;
  *(v137 + 16) = v136;
  *(v137 + 32) = v135;
  swift_willThrow();
  v54 = *v162;
  (*v162)(v143, v30);

  v54(v142, v30);
LABEL_11:

  return v54;
}