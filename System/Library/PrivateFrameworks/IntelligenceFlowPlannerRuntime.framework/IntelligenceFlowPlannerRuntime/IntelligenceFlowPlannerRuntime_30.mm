uint64_t sub_22C5FDAF0()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v2 + 904) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C5FDC68()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 368);
  v6 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  sub_22C90060C();
  v7 = (v1 + *(v3 + 20));
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  *(v7 + 41) = *(v0 + 121);
  v7[1] = v9;
  v7[2] = v10;
  *v7 = v8;
  *(v0 + 912) = *(v5 + 96);
  sub_22C36C640(v4, 1, 1, v2);
  v11 = sub_22C37EF1C();
  sub_22C36C640(v11, v12, 1, v2);
  v13 = swift_task_alloc();
  *(v0 + 920) = v13;
  *v13 = v0;
  v13[1] = sub_22C5FDD88;

  return sub_22C757604();
}

uint64_t sub_22C5FDD88(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = *(v3 + 488);
  v7 = *(v3 + 480);
  v8 = *v1;
  *v5 = *v1;
  *(v4 + 928) = a1;

  sub_22C36DD28(v7, &qword_27D9BF2C0, &qword_22C925300);
  sub_22C36DD28(v6, &qword_27D9BF2C0, &qword_22C925300);
  v9 = swift_task_alloc();
  *(v4 + 936) = v9;
  *v9 = v8;
  v9[1] = sub_22C5FDFA4;

  return sub_22C755550();
}

uint64_t sub_22C5FDFA4()
{
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  v7[118] = v6;
  v7[119] = v8;
  v7[120] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C5FE0DC()
{
  v1 = v0[101];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_22C600BDC(v1, "ActionResolver.run");

  sub_22C372AB0();
  sub_22C6023A0();
  sub_22C36C0C0();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C5FEF40(uint64_t a1)
{
  v4 = *v2;
  sub_22C369A30();
  *v5 = v4;
  v6 = *v2;
  sub_22C369970();
  *v7 = v6;
  *(v4 + 1024) = v1;

  if (!v1)
  {

    *(v4 + 1032) = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C5FF060()
{
  v30 = *(v1 + 1032);
  if (*(*(v1 + 864) + 16))
  {
    v2 = *(v1 + 73);
    sub_22C594D78();
    v5 = v4;
    v6 = *(v4 + 16);
    v3 = 2 * v6;
    do
    {
      v0 = v6 + 1;
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_22C379FA0();
        sub_22C594D78();
        v5 = v8;
      }

      sub_22C60231C();
    }

    while (!v7);
  }

  v9 = *(v1 + 1000);
  v10 = *(v1 + 888);
  sub_22C36FDAC(*(v1 + 992));
  sub_22C37FE84(v11);
  sub_22C3775C0(v12);
  v13 = sub_22C5C8B28(0x7FFuLL);
  v23 = sub_22C381B38(v13, v14, v15, v16, v17, v18, v19, v20, v21, v29, v22);
  *(v24 + 24) = v10;
  *(v0 + *(v3 + 24)) = v23;
  *(v0 + *(v3 + 28)) = v30;
  sub_22C37A234(v25);
  *(v0 + v26) = v9;
  sub_22C374168((v2 + 56), *(v2 + 80));
  v27 = swift_task_alloc();
  *(v1 + 1040) = v27;
  *v27 = v1;
  sub_22C374E44(v27);

  return sub_22C750500();
}

uint64_t sub_22C5FF1EC()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v2 + 1048) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C5FF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_22C60243C();
  v43 = v40[131];
  v46 = sub_22C7432D0(v44, v45);
  v107 = v43;
  if (v43)
  {
    v49 = v40[101];
    v106 = v40[66];
    v50 = v40[65];
    v104 = v40[63];
    v105 = v40[64];
    v51 = v40[49];
    v40[25] = v40[20];
    sub_22C36DD28((v40 + 25), &qword_27D9BAC08, &unk_22C91D830);
    v40[26] = v40[21];
    sub_22C36DD28((v40 + 26), &qword_27D9BF2D8, &unk_22C9239C0);
    v40[27] = v40[22];
    sub_22C36DD28((v40 + 27), &qword_27D9BF2D8, &unk_22C9239C0);

    sub_22C36A128();
    sub_22C601E24(v51, v52);
    sub_22C36ADB8();
    sub_22C601E24(v104, v53);
    (*(v50 + 8))(v106, v105);

    sub_22C600BDC(v49, "ActionResolver.run");

    sub_22C371AD0();
    sub_22C36D95C();
    v102 = v55;
    v103 = v54;
    a31 = v56;
    a32 = v40[55];
    a33 = v40[52];
    a34 = v40[49];

    sub_22C369A24();
  }

  else
  {
    v57 = v46;
    v58 = v47;
    v59 = v48;
    v40[28] = v40[20];
    sub_22C36DD28((v40 + 28), &qword_27D9BAC08, &unk_22C91D830);
    v40[29] = v40[21];
    sub_22C36DD28((v40 + 29), &qword_27D9BF2D8, &unk_22C9239C0);
    v40[30] = v40[22];
    sub_22C36DD28((v40 + 30), &qword_27D9BF2D8, &unk_22C9239C0);
    v60 = v40[106];
    v61 = v40[105];
    v62 = v40[104];
    switch(v59)
    {
      case 1:
        sub_22C602374();

        sub_22C36A128();
        sub_22C601E24(v42, v88);
        sub_22C36ADB8();
        sub_22C601E24(v41, v89);
        (*(v58 + 8))(0, v59);
        *a34 = v57;
        v76 = 1;
        goto LABEL_8;
      case 2:
        sub_22C3767FC();
        v65 = v40[31];
        v66 = v65 + *(sub_22C3A5908(&qword_27D9BF2E8, &unk_22C9225E0) + 48);
        *v65 = v57;
        sub_22C37EF1C();
        sub_22C633A30();
        sub_22C602358();
        v69(v66, v67 + v68 * v58, a30);

        sub_22C37EF1C();
        sub_22C633A30();
        v70 = *(v61 + v58 + 32);

        sub_22C37EF1C();
        sub_22C633A30();
        v71 = *(v62 + v58 + 32);

        sub_22C37EF1C();
        sub_22C633A30();
        v72 = *(v60 + v58 + 32);

        sub_22C36A128();
        sub_22C601E24(a31, v73);
        sub_22C36ADB8();
        sub_22C601E24(a32, v74);
        (*(a33 + 8))(0, a34);
        v75 = type metadata accessor for ActionResolver.Parameter(0);
        v66[v75[5]] = v70;
        v66[v75[7]] = v71;
        v66[v75[6]] = v72;
        v76 = 2;
LABEL_8:
        LODWORD(a19) = v76;
        break;
      case 3:
        sub_22C3767FC();
        v77 = v40[31];
        v78 = v77 + *(sub_22C3A5908(&qword_27D9BF2E0, &qword_22C922530) + 48);
        *v77 = v58;
        sub_22C3707B4();
        sub_22C633A30();
        sub_22C602358();
        v81(v78, v79 + v80 * v57, a30);

        sub_22C3707B4();
        sub_22C633A30();
        v82 = *(v61 + v57 + 32);

        sub_22C3707B4();
        sub_22C633A30();
        v83 = *(v62 + v57 + 32);

        sub_22C3707B4();
        sub_22C633A30();
        v84 = *(v60 + v57 + 32);
        LODWORD(a19) = 3;
        sub_22C601E0C(v57, v58, 3);

        sub_22C36A128();
        sub_22C601E24(a31, v85);
        sub_22C36ADB8();
        sub_22C601E24(a32, v86);
        (*(a33 + 8))(0, a34);
        v87 = type metadata accessor for ActionResolver.Parameter(0);
        v78[v87[5]] = v82;
        v78[v87[7]] = v83;
        v78[v87[6]] = v84;
        break;
      default:
        sub_22C602374();

        sub_22C36A128();
        sub_22C601E24(v42, v63);
        sub_22C36ADB8();
        sub_22C601E24(v41, v64);
        (*(v58 + 8))(0, v59);
        LODWORD(a19) = 0;
        *a34 = v57;
        break;
    }

    v90 = v40[101];
    a9 = v40[90];
    a10 = v40[89];
    a11 = v40[88];
    a12 = v40[85];
    sub_22C371AD0();
    a20 = v92;
    a21 = v91;
    a22 = v40[71];
    a23 = v40[70];
    a24 = v40[69];
    a25 = v40[66];
    a26 = v40[63];
    a27 = v40[61];
    a28 = v40[60];
    v102 = v40[59];
    v103 = v40[58];
    sub_22C36C0C0();
    type metadata accessor for ActionResolver.Decision(0);
    swift_storeEnumTagMultiPayload();

    sub_22C600BDC(v90, "ActionResolver.run");

    sub_22C369A24();
  }

  sub_22C37BEB8();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v102, v103, a31, a32, a33, a34, v107, a36, a37, a38, a39, a40);
}

uint64_t sub_22C5FFB10()
{
  v1 = v0[101];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  sub_22C36A128();
  sub_22C601E24(v6, v7);
  sub_22C36ADB8();
  sub_22C601E24(v5, v8);
  (*(v3 + 8))(v2, v4);

  sub_22C600BDC(v1, "ActionResolver.run");

  sub_22C372AB0();
  sub_22C6023A0();
  sub_22C36C0C0();

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C60094C()
{
  v3 = *(v0 + 1024);

  sub_22C903FAC();
  v4 = v3;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1024);
  if (v7)
  {
    v9 = sub_22C36FB44();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    sub_22C382D04(&dword_22C366000, v13, v14, "[Recoverable Error]: Candidate similarity scores can't be fetched: %@");
    sub_22C36DD28(v10, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  (*(v0 + 984))(*(v0 + 440), *(v0 + 424));
  v15 = MEMORY[0x277D84F90];
  if (*(*(v0 + 864) + 16))
  {
    v1 = *(v0 + 73);
    sub_22C594D78();
    v17 = v16;
    v18 = *(v16 + 16);
    v2 = 2 * v18;
    do
    {
      v8 = (v18 + 1);
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_22C379FA0();
        sub_22C594D78();
        v17 = v20;
      }

      sub_22C60231C();
    }

    while (!v19);
  }

  v41 = *(v0 + 1000);
  v21 = *(v0 + 888);
  sub_22C36FDAC(*(v0 + 992));
  sub_22C37FE84(v22);
  sub_22C3775C0(v23);
  v24 = sub_22C5C8B28(0x7FFuLL);
  v34 = sub_22C381B38(v24, v25, v26, v27, v28, v29, v30, v31, v32, v40, v33);
  *(v35 + 24) = v21;
  *&v8[*(v2 + 24)] = v34;
  *&v8[*(v2 + 28)] = v15;
  sub_22C37A234(v36);
  *&v8[v37] = v41;
  sub_22C374168((v1 + 56), *(v1 + 80));
  v38 = swift_task_alloc();
  *(v0 + 1040) = v38;
  *v38 = v0;
  sub_22C374E44(v38);

  return sub_22C750500();
}

uint64_t sub_22C600BDC(uint64_t a1, const char *a2)
{
  sub_22C90637C();
  sub_22C369824();
  v34 = v3;
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90365C();
  v21 = sub_22C90635C();
  sub_22C90638C();
  v33 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v32 = v9;

    sub_22C9063BC();

    if ((*(v34 + 88))(v6, v35) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v23 = 0;
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v6, v35);
      v36 = "%s";
      v23 = 2;
      v22 = 1;
    }

    v25 = v16;
    v26 = sub_22C36FB44();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = v23;
    *(v26 + 1) = v22;
    *(v26 + 2) = 2080;
    sub_22C90366C();
    v28 = sub_22C90AF7C();
    v30 = sub_22C36F9F4(v28, v29, &v38);

    *(v26 + 4) = v30;
    v31 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v21, v33, v31, a2, v36, v26, 0xCu);
    sub_22C36FF94(v27);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v32 + 8))(v13, v7);
    return (*(v25 + 8))(v20, v14);
  }

  else
  {

    (*(v9 + 8))(v13, v7);
    return (*(v16 + 8))(v20, v14);
  }
}

void sub_22C600F28(uint64_t a1)
{
  v119 = sub_22C90355C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v118 = v6 - v5;
  v7 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  v130 = &v105 - v9;
  v10 = sub_22C9032BC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v117 = v15 - v14;
  v16 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v17 = sub_22C369914(v16);
  MEMORY[0x28223BE20](v17);
  v134 = &v105 - v18;
  v140 = sub_22C90399C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v116 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v133 = &v105 - v24;
  v25 = sub_22C9093BC();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v128 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  v127 = &v105 - v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v34 = &v105 - v33;
  v107 = sub_22C9063DC();
  sub_22C369824();
  v106 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v105 = v38 - v37;
  v139 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
  sub_22C36985C();
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  v115 = v40;
  sub_22C369930();
  MEMORY[0x28223BE20](v41);
  v131 = &v105 - v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  v141 = &v105 - v44;
  v45 = 0;
  v135 = a1;
  v46 = *(a1 + 16);
  v138 = (v20 + 8);
  v125 = (v27 + 16);
  v126 = (v27 + 32);
  v114 = (v12 + 32);
  v124 = (v27 + 8);
  v47 = v34;
  v113 = (v12 + 8);
  v112 = (v3 + 8);
  v111 = "ActionResolver.run";
  v108 = MEMORY[0x277D84F90];
  v110 = "Couldn't convert typed value ";
  v129 = v10;
  v132 = v25;
  v136 = v46;
  v123 = v34;
  while (v46 != v45)
  {
    if (v45 >= v46)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v48 = sub_22C9081CC();
    v49 = *(v48 - 8);
    if (__OFADD__(v45, 1))
    {
      goto LABEL_21;
    }

    v50 = v48;
    v51 = *(v48 - 8);
    v52 = v135 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v45;
    v53 = v139;
    v54 = *(v139 + 48);
    v55 = v141;
    *v141 = v45;
    (*(v49 + 16))(&v55[v54], v52, v48);
    v56 = v55;
    v57 = v131;
    sub_22C601EDC(v56, v131);
    v58 = *(v53 + 48);
    v59 = v133;
    sub_22C9081AC();
    v137 = *(v51 + 8);
    v137(v57 + v58, v50);
    v60 = v134;
    sub_22C90391C();
    v61 = *v138;
    v62 = v59;
    v63 = v132;
    (*v138)(v62, v140);
    if (sub_22C370B74(v60, 1, v63) == 1)
    {
      sub_22C36DD28(v60, &qword_27D9BB908, &qword_22C910960);
      goto LABEL_11;
    }

    v122 = v45 + 1;
    (*v126)(v47, v60, v63);
    v64 = *v125;
    v65 = v127;
    (*v125)(v127, v47, v63);
    v66 = v128;
    v64(v128, v65, v63);
    v67 = v130;
    sub_22C766C2C(v66, v130);
    v68 = sub_22C3707B4();
    v69 = v129;
    if (sub_22C370B74(v68, v70, v129) == 1)
    {
      sub_22C36DD28(v67, &qword_27D9BF2F8, &unk_22C922540);
      v142[0] = 0;
      v142[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD00000000000001DLL, v111 | 0x8000000000000000);
      sub_22C90B12C();
      MEMORY[0x2318B7850](0xD000000000000029, v110 | 0x8000000000000000);
      v71 = *v124;
      v72 = sub_22C36ECB4();
      v71(v72);

      v47 = v123;
      v73 = sub_22C37B220();
      v71(v73);
      goto LABEL_11;
    }

    v74 = v117;
    (*v114)(v117, v67, v69);
    v109 = sub_22C90329C();
    v121 = v75;
    sub_22C9032AC();
    v120 = *v124;
    v76 = sub_22C37B220();
    v77(v76);
    (*v113)(v74, v69);

    v78 = v115;
    sub_22C601EDC(v141, v115);
    v79 = *(v139 + 48);
    v80 = v116;
    sub_22C9081AC();
    v137(v78 + v79, v50);
    v81 = v118;
    sub_22C90394C();
    v61(v80, v140);
    v82 = sub_22C90353C();
    (*v112)(v81, v119);
    v47 = v123;
    v83 = sub_22C37B220();
    v120(v83);
    if (v82)
    {
      v84 = v109;
      v85 = v121;
      sub_22C36DD28(v141, &qword_27D9BF300, &unk_22C922550);
      v86 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_22C36D270();
        sub_22C590270(v90, v91, v92, v86);
        v86 = v93;
      }

      v45 = v122;
      v88 = *(v86 + 16);
      v87 = *(v86 + 24);
      if (v88 >= v87 >> 1)
      {
        v94 = sub_22C369AB0(v87);
        sub_22C590270(v94, v88 + 1, 1, v86);
        v86 = v95;
      }

      *(v86 + 16) = v88 + 1;
      v108 = v86;
      v89 = v86 + 16 * v88;
      *(v89 + 32) = v84;
      *(v89 + 40) = v85;
      v46 = v136;
    }

    else
    {

LABEL_11:
      v46 = v136;
      sub_22C36DD28(v141, &qword_27D9BF300, &unk_22C922550);
      ++v45;
    }
  }

  v96 = v105;
  sub_22C903FAC();
  v97 = v108;

  v98 = sub_22C9063CC();
  v99 = sub_22C90AABC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = sub_22C36FB44();
    v101 = swift_slowAlloc();
    v142[0] = v101;
    *v100 = 136315138;
    v102 = MEMORY[0x2318B7AD0](v97, MEMORY[0x277D837D0]);
    v104 = sub_22C36F9F4(v102, v103, v142);

    *(v100 + 4) = v104;
    _os_log_impl(&dword_22C366000, v98, v99, "onScreenCandidateIDs = %s", v100, 0xCu);
    sub_22C36FF94(v101);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v106 + 8))(v96, v107);
}

void *sub_22C601980()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);

  sub_22C36FF94(v0 + 14);

  return v0;
}

uint64_t sub_22C6019C8()
{
  sub_22C601980();

  return swift_deallocClassInstance();
}

void sub_22C601A40(uint64_t a1)
{
  sub_22C601AC8();
  if (v1 <= 0x3F)
  {
    sub_22C601AF0(319);
    if (v2 <= 0x3F)
    {
      sub_22C601B7C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C601AC8()
{
  result = qword_27D9BF288;
  if (!qword_27D9BF288)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27D9BF288);
  }

  return result;
}

void sub_22C601AF0(uint64_t a1)
{
  if (!qword_27D9BF290)
  {
    type metadata accessor for ActionResolver.Parameter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF290);
    }
  }
}

void sub_22C601B7C(uint64_t a1)
{
  if (!qword_27D9BF298)
  {
    sub_22C3AC1A0(&qword_27D9BF2A0, &qword_22C922498);
    type metadata accessor for ActionResolver.Parameter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF298);
    }
  }
}

uint64_t sub_22C601C24(uint64_t a1)
{
  result = sub_22C9069BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C601CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C601D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF2C8, &unk_22C922520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C601DAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C601E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_22C601E24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C601E7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C601EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_22C601F4C(uint64_t a1, char a2, void *a3)
{
  v33 = a1;
  v32 = sub_22C90634C();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_22C90636C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v34[3] = &type metadata for GenerativeAssistantToolsRiskProvider;
  v34[4] = &off_283FBE918;
  v18 = MEMORY[0x277D84F98];
  LOBYTE(v34[0]) = a2;
  a3[3] = MEMORY[0x277D84F98];
  a3[4] = v18;
  a3[6] = 0;
  a3[7] = 0;
  a3[5] = 0;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v19 = *(v12 + 8);
  v31 = v11;
  v19(v15, v11);
  v20 = sub_22C90635C();
  v21 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v22 = swift_slowAlloc();
    v30 = v8;
    v23 = v22;
    *v22 = 0;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v20, v21, v24, "JointResolverTrialConfigProvider.init", "", v23, 2u);
    v25 = v23;
    v8 = v30;
    MEMORY[0x2318B9880](v25, -1, -1);
  }

  v26 = v32;
  (*(v5 + 16))(v8, v10, v32);
  sub_22C9063AC();
  swift_allocObject();
  v27 = sub_22C90639C();
  (*(v5 + 8))(v10, v26);
  v19(v17, v31);
  a3[2] = v33;
  sub_22C378A4C(v34, (a3 + 8));

  sub_22C763E98();
  sub_22C763B48(v27);

  sub_22C36FF94(v34);
  return a3;
}

void sub_22C60231C()
{
  v5 = *(v2 + 74);
  *(v1 + 16) = v0;
  v6 = v1 + v4;
  *(v6 + 32) = v5;
  *(v6 + 33) = v3;
}

uint64_t sub_22C602374()
{
  v3 = *(v0 + 528);
  *(v1 - 104) = *(v0 + 248);
  *(v1 - 96) = v3;
}

uint64_t sub_22C6023C8(uint64_t a1)
{

  return sub_22C903FAC();
}

uint64_t sub_22C602458(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C602478()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = v2;
  *(v3 - 96) = v1;
}

void sub_22C602498()
{
}

void sub_22C6024B8(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v4, a3, a2, v3, 0x16u);
}

uint64_t sub_22C6024D8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a2;
  v16 = a1;
  v5 = sub_22C908C5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_22C3D3364();
  v12 = 1;
  if (sub_22C370B74(v11, 1, v5) == 1)
  {
    v13 = a3;
    return sub_22C36C640(v13, v12, 1, v5);
  }

  (*(v6 + 32))(v8, v11, v5);
  v13 = a3;
  v16(v8);
  if (!v3)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    return sub_22C36C640(v13, v12, 1, v5);
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

void sub_22C6026CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v40 = v24;
  v25 = sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v26);
  sub_22C377578();
  v27 = sub_22C36CC9C();
  v29 = sub_22C3A5908(v27, v28);
  sub_22C369914(v29);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = &v39 - v31;
  sub_22C370114();
  sub_22C3D3364();
  if (sub_22C370B74(v32, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  v33 = sub_22C36CA88();
  v34(v33);
  v40(&a10, v21);
  if (!v20)
  {
    v35 = sub_22C36D384();
    v36(v35);
LABEL_4:
    sub_22C3772F0();
    sub_22C36FB20();
    return;
  }

  v37 = sub_22C36D384();
  v38(v37);
  __break(1u);
}

uint64_t sub_22C6029B4()
{
  sub_22C3865D8();
  v2 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36CD40();
  type metadata accessor for PlanPostProcessor.ExpressionContext(v4);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  v6 = sub_22C3707B4();
  sub_22C36D0A8(v6, v7, v8);
  if (v9)
  {
    v10 = sub_22C633C98();
    sub_22C3AC228(v10, v11, v12);
    sub_22C633CB8();
    sub_22C62B048(v13);
    sub_22C901FAC();
    sub_22C369848();
    (*(v14 + 8))(v0);
    v15 = sub_22C633C88();
    return sub_22C3AC228(v15, v16, v17);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C633DA4();
    sub_22C62CA30();
    *v1 = v20;
    sub_22C901FAC();
    sub_22C369848();
    return (*(v18 + 8))(v0);
  }
}

void sub_22C602E50()
{
  sub_22C3BDA38();
  sub_22C3865D8();
  v1 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C36CD40();
  v3 = sub_22C907F9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22C36C0E0();
  sub_22C36D0A8(v5, v6, v3);
  if (v7)
  {
    v8 = sub_22C633C98();
    sub_22C3AC228(v8, v9, v10);
    sub_22C633CB8();
    sub_22C62B1F8(v11);
    sub_22C9014CC();
    sub_22C369848();
    (*(v12 + 8))(v0);
    v13 = sub_22C633C88();
    sub_22C3AC228(v13, v14, v15);
  }

  else
  {
    v16 = sub_22C36CB1C();
    v17(v16);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_22C633B18();
    sub_22C62CD44(v18, v19, v20);
    sub_22C633E88();
    sub_22C9014CC();
    sub_22C369848();
    (*(v21 + 8))(v0);
  }

  sub_22C3BDA24();
}

void sub_22C603314()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v0 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v2 = sub_22C36FDCC();
  type metadata accessor for ToolPromptMap(v2);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36C0E0();
  sub_22C36D0A8(v4, v5, v6);
  if (v7)
  {
    v8 = sub_22C372FA4();
    sub_22C3AC228(v8, v9, &unk_22C912630);
    v10 = sub_22C37BED4();
    sub_22C62BCF8(v10, v11, v12, v13, v14, v15, v16, v17);

    v18 = sub_22C36ECB4();
    sub_22C3AC228(v18, v19, &unk_22C912630);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62D4CC(v20, v21, v22, v23);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C603470()
{
  sub_22C3865D8();
  v1 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  v3 = sub_22C36CD40();
  type metadata accessor for PromptTreeIdentifier.Label(v3);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37BDA4();
  v5 = sub_22C3707B4();
  sub_22C36D0A8(v5, v6, v7);
  if (v8)
  {
    v9 = sub_22C633C98();
    sub_22C3AC228(v9, v10, v11);
    v12 = sub_22C633CB8();
    sub_22C62B620(v12, v13);
    sub_22C634030();
    v14 = sub_22C633C88();
    return sub_22C3AC228(v14, v15, v16);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_22C633DA4();
    sub_22C62D6A4(v17, v18, v19);
    *v0 = v21;
    return sub_22C634030();
  }
}

void sub_22C603588()
{
  sub_22C3BDA38();
  sub_22C3865D8();
  v0 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FDCC();
  v2 = sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36C0E0();
  sub_22C36D0A8(v4, v5, v2);
  if (v6)
  {
    v7 = sub_22C372FA4();
    sub_22C3AC228(v7, v8, &unk_22C912190);
    sub_22C633FA8();
    sub_22C62B7D8(v9);
    v10 = sub_22C37BD98();
    v11(v10);
    v12 = sub_22C36ECB4();
    sub_22C3AC228(v12, v13, &unk_22C912190);
  }

  else
  {
    sub_22C51E3FC();
    v14 = sub_22C37A004();
    v15(v14);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_22C633B18();
    sub_22C62D8A8(v16, v17, v18);
    sub_22C633E88();
    v19 = sub_22C37BD98();
    v20(v19);
  }

  sub_22C3BDA24();
}

void sub_22C6036EC()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v0 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v2 = sub_22C36FDCC();
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v2);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36C0E0();
  sub_22C36D0A8(v4, v5, v6);
  if (v7)
  {
    v8 = sub_22C372FA4();
    sub_22C3AC228(v8, v9, &unk_22C919AE0);
    v10 = sub_22C37BED4();
    sub_22C62BCF8(v10, v11, v12, v13, v14, v15, v16, v17);

    v18 = sub_22C36ECB4();
    sub_22C3AC228(v18, v19, &unk_22C919AE0);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62DC28(v20, v21, v22, v23);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C603848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22C3A5908(&qword_27D9BF478, &qword_22C922738);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ActionParameterValue(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22C370B74(a1, 1, v14) == 1)
  {
    sub_22C3AC228(a1, &qword_27D9BF478, &qword_22C922738);
    sub_22C62BCF8(a2, a3, &qword_27D9BF488, &qword_22C922748, type metadata accessor for ActionParameterValue, type metadata accessor for ActionParameterValue, v15, v16);

    return sub_22C3AC228(v10, &qword_27D9BF478, &qword_22C922738);
  }

  else
  {
    sub_22C630194();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_22C62E614(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v20;
  }

  return result;
}

void sub_22C603D40()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v0 = sub_22C3A5908(&qword_27D9BF458, &qword_22C922718);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v2 = sub_22C36FDCC();
  type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(v2);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36C0E0();
  sub_22C36D0A8(v4, v5, v6);
  if (v7)
  {
    v8 = sub_22C372FA4();
    sub_22C3AC228(v8, v9, &qword_22C922718);
    v10 = sub_22C37BED4();
    sub_22C62BCF8(v10, v11, v12, v13, v14, v15, v16, v17);

    v18 = sub_22C36ECB4();
    sub_22C3AC228(v18, v19, &qword_22C922718);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62EA34(v20, v21, v22, v23);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C6041CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 255)
  {
    sub_22C3AC228(a1, &qword_27D9BF3C8, &qword_22C928BF0);
    sub_22C633FA8();
    sub_22C62BE24(v8);
    sub_22C3723BC();
    sub_22C62E9E0(a2, v9);
    return sub_22C3AC228(v11, &qword_27D9BF3C8, &qword_22C928BF0);
  }

  else
  {
    v4 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v4;
    v12 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_22C62EEA8(v11, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v10;
    sub_22C3723BC();
    return sub_22C62E9E0(a2, v6);
  }
}

uint64_t sub_22C6042A4()
{
  sub_22C3865D8();
  v2 = sub_22C3A5908(&qword_27D9BF3A8, &qword_22C922668);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C36CD40();
  type metadata accessor for DialogValuesResolver.CollectedValue(v4);
  sub_22C369A9C();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  v6 = sub_22C3707B4();
  sub_22C36D0A8(v6, v7, v8);
  if (v9)
  {
    v10 = sub_22C633C98();
    sub_22C3AC228(v10, v11, v12);
    v13 = sub_22C633CB8();
    sub_22C62BF4C(v13, v14);
    sub_22C9093BC();
    sub_22C369848();
    (*(v15 + 8))(v0);
    v16 = sub_22C633C88();
    return sub_22C3AC228(v16, v17, v18);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_22C633DA4();
    sub_22C62F348(v19, v20, v21);
    *v1 = v24;
    sub_22C9093BC();
    sub_22C369848();
    return (*(v22 + 8))(v0);
  }
}

uint64_t sub_22C604438(uint64_t a1, void (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v13 = a1;
  v8 = *(a5 + 16);
  while (v8 != v7)
  {
    v9 = sub_22C90430C();
    sub_22C3699B8(v9);
    sub_22C37BEE8();
    sub_22C369B5C();
    a2(&v13, v11 + *(v10 + 72) * v7++);
    if (v5)
    {
    }
  }

  return v13;
}

uint64_t sub_22C60450C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v13[1] = a2;
  v7 = 0;
  v13[0] = a1;
  v8 = *(a5 + 16);
  while (v8 != v7)
  {
    v9 = sub_22C9070DC();
    sub_22C3699B8(v9);
    sub_22C37BEE8();
    sub_22C369B5C();
    a3(v13, v11 + *(v10 + 72) * v7++);
    if (v5)
    {
    }
  }

  return v13[0];
}

void sub_22C6045F0()
{
  sub_22C370030();
  sub_22C63418C();
  v16[1] = v6;
  v16[0] = sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = (v16 - v8);
  sub_22C36D280();
  sub_22C634664();
  v10 = 0;
  while (v3)
  {
    v17 = v0;
LABEL_8:
    sub_22C634570();
    v12 = *(*(v16[2] + 48) + 8 * v5);
    v13 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
    sub_22C369914(v13);
    sub_22C62E98C();
    *v9 = v12;

    v14 = sub_22C63481C();
    v15(v14);
    v0 = v1;
    sub_22C3AC228(v9, &qword_27D9BC4B0, &unk_22C9134C0);
    if (v1)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v4)
    {

      goto LABEL_11;
    }

    v3 = *(v2 + 64 + 8 * v11);
    ++v10;
    if (v3)
    {
      v17 = v0;
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22C6047A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v70 = v20;
  v24 = v23;
  v26 = v25;
  v63 = v27;
  v64 = v28;
  v30 = v29;
  v62 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  sub_22C36985C();
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  v61 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  v60 = v34;
  v59 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v37 = &v57 - v36;
  a10 = v30;
  v65 = *(v24 + 16);

  v38 = 0;
  v57 = v24;
  v58 = v26;
  for (i = (v24 + 64); ; i += 5)
  {
    if (v65 == v38)
    {

LABEL_8:
      sub_22C36FB20();
      return;
    }

    if (v38 >= *(v26 + 16))
    {
      break;
    }

    v40 = v62;
    v41 = (v60 + *(v62 + 48));
    sub_22C90981C();
    sub_22C369824();
    v66 = v38;
    v42 = sub_22C634418();
    v43(v42);
    v45 = *(i - 4);
    v44 = *(i - 3);
    v47 = *(i - 1);
    v68 = *(i - 2);
    v46 = v68;
    v69 = v44;
    v67 = v47;
    v48 = *i;
    *v41 = v45;
    v41[1] = v44;
    v41[2] = v46;
    v41[3] = v47;
    v41[4] = v48;
    v49 = v61;
    sub_22C3D3310();
    v50 = v49 + *(v40 + 48);
    v51 = &v37[*(v59 + 48)];
    sub_22C36E644();
    v53(v52);
    v54 = *(v50 + 32);
    v55 = *(v50 + 16);
    *v51 = *v50;
    *(v51 + 1) = v55;
    *(v51 + 4) = v54;

    sub_22C456C94(v69, v68, v67);
    v56 = v70;
    v63(&a10, v37);
    v70 = v56;
    if (v56)
    {
      sub_22C3AC228(v37, &qword_27D9BD8E8, &unk_22C919AD0);

      goto LABEL_8;
    }

    v38 = v66 + 1;
    sub_22C3AC228(v37, &qword_27D9BD8E8, &unk_22C919AD0);
    v26 = v58;
  }

  __break(1u);
}

void sub_22C604A84()
{
  sub_22C370030();
  sub_22C63418C();
  v20[1] = v6;
  v20[0] = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = v2 + 64;
  sub_22C36D280();
  sub_22C634664();
  v11 = 0;
  while (v3)
  {
    v22 = v0;
LABEL_8:
    sub_22C634570();
    v13 = v21;
    v14 = *(v21 + 48);
    sub_22C902C9C();
    sub_22C369A9C();
    (*(v15 + 16))(v9, v14 + *(v15 + 72) * v5);
    v16 = *(v13 + 56);
    sub_22C902D0C();
    sub_22C369A9C();
    (*(v17 + 16))(&v9[*(v20[0] + 48)], v16 + *(v17 + 72) * v5);
    v18 = sub_22C63481C();
    v19(v18);
    v0 = v1;
    sub_22C3AC228(v9, &qword_27D9BAF30, &unk_22C90FAA0);
    if (v1)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v4)
    {

      goto LABEL_11;
    }

    v3 = *(v10 + 8 * v12);
    ++v11;
    if (v3)
    {
      v22 = v0;
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C604C58(uint64_t a1, void (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = 0;
  v14 = a1;
  v9 = *(a4 + 16);
  while (v9 != v8)
  {
    v10 = (a5)(0, a2, a3);
    sub_22C3699B8(v10);
    sub_22C37BEE8();
    sub_22C369B5C();
    a2(&v14, v12 + *(v11 + 72) * v8++);
    if (v5)
    {
    }
  }

  return v14;
}

uint64_t sub_22C604D3C(uint64_t a1)
{
  v16 = a1;
  sub_22C63418C();
  v4 = v3;
  v6 = v5 + 56;
  sub_22C36D280();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v9)))));

      v4(&v16, &v15);
      if (v1)
      {
        break;
      }

      v9 &= v9 - 1;

      v13 = v14;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v9 = *(v6 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C604EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v53 = v23;
  v54 = v24;
  v25 = v20;
  v27 = v26;
  v51 = v28;
  v52 = v29;
  v31 = v30;
  v50 = sub_22C3A5908(v29, v23);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C36D5B4();
  v49 = v33;
  a10 = v31;
  v34 = v27 + 64;
  sub_22C36D280();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v55 = v27;

  v40 = 0;
  while (v37)
  {
    v56 = v25;
    v41 = v40;
LABEL_8:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v41 << 6);
    v44 = *(v55 + 56);
    v45 = (*(v55 + 48) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];
    v54(0);
    sub_22C369A9C();
    (*(v48 + 16))(&v49[*(v50 + 48)], v44 + *(v48 + 72) * v43);
    *v49 = v47;
    *(v49 + 1) = v46;

    v51(&a10, v49);
    v25 = v56;
    sub_22C3AC228(v49, v52, v53);
    if (v56)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      goto LABEL_11;
    }

    v37 = *(v34 + 8 * v41);
    ++v40;
    if (v37)
    {
      v56 = v25;
      v40 = v41;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C605054(uint64_t a1)
{
  v20 = a1;
  sub_22C63418C();
  v18 = v3;
  v5 = v4 + 64;
  sub_22C36D280();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_6:
      v14 = __clz(__rbit64(v8)) | (v13 << 6);
      v15 = (*(v2 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v2 + 56) + 8 * v14);
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;

      v18(&v20, v19);
      if (v1)
      {
        break;
      }

      v8 &= v8 - 1;

      v12 = v13;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v20;
      }

      v8 = *(v5 + 8 * v13);
      ++v12;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C6051CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v48 = v25;
  v27 = v26;
  v50 = v28(0);
  sub_22C369824();
  v30 = v29;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = v47 - v32;
  a10 = v27;
  v34 = v24 + 56;
  sub_22C36D280();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v47[1] = v30 + 16;
  v49 = v30 + 8;
  v51 = v24;

  v40 = 0;
  if (v37)
  {
    while (1)
    {
      v41 = v40;
      v42 = v50;
LABEL_7:
      (*(v30 + 16))(v33, *(v51 + 48) + *(v30 + 72) * (__clz(__rbit64(v37)) | (v41 << 6)), v42);
      v48(&a10, v33);
      if (v20)
      {
        break;
      }

      v37 &= v37 - 1;
      v43 = sub_22C63478C();
      v44(v43);
      v40 = v41;
      if (!v37)
      {
        goto LABEL_3;
      }
    }

    v45 = sub_22C63478C();
    v46(v45);

LABEL_11:
    sub_22C3772F0();
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    v42 = v50;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        goto LABEL_11;
      }

      v37 = *(v34 + 8 * v41);
      ++v40;
      if (v37)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

unint64_t sub_22C6053F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0xF000000000000007;
  }

  sub_22C633A64();
  sub_22C628BA8(v3, v4, sub_22C6293AC);
  if ((v5 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  sub_22C634780();

  return v2;
}

unint64_t sub_22C605458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_22C633A64();
    sub_22C628BA8(v2, v3, sub_22C6293AC);
    if (v4)
    {
      sub_22C634780();
      sub_22C454710(0xD000000000000007);
    }
  }

  return 0xD000000000000007;
}

uint64_t sub_22C6054B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_22C3736B4();
    sub_22C36E5AC(v3, v4, v5, sub_22C36EF04);
    if (v6)
    {
      sub_22C634960();
    }
  }

  return sub_22C36BA00();
}

uint64_t sub_22C605514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 5;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if (v8)
  {
    return *(*(a3 + 56) + v7);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_22C605778()
{
  sub_22C634534();
  if (v0 && (sub_22C633A64(), sub_22C628BA8(v1, v2, sub_22C6293AC), (v3 & 1) != 0))
  {
    v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C36985C();
    sub_22C62E98C();
    v5 = sub_22C37049C();
    v8 = v4;
  }

  else
  {
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v5 = sub_22C37582C();
  }

  return sub_22C36C640(v5, v6, v7, v8);
}

uint64_t sub_22C605834(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_22C628AA0();
    if (v2)
    {
    }
  }

  return sub_22C36BA00();
}

uint64_t sub_22C6058B0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22C628620(a1 & 1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C605904(uint64_t a1, double a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_22C628B5C(a2);
  if (v4)
  {
    return *(*(a1 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22C60595C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0xF000000000000007;
  }

  sub_22C628164();
  if ((v3 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  sub_22C634780();

  return v2;
}

double sub_22C6059A4()
{
  sub_22C634534();
  if (v2 && (v3 = v1, sub_22C38AA00(), v6 = sub_22C628BA8(v4, v5, sub_22C62AA14), (v7 & 1) != 0))
  {
    v8 = *(v3 + 56) + 40 * v6;

    sub_22C6337B8(v8, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = -1;
  }

  return result;
}

void *sub_22C605A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C3736B4();
  sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_22C634780();
  v8 = v3;
  return v3;
}

uint64_t sub_22C605AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(a3 + 16) && (sub_22C3736B4(), sub_22C36E5AC(v5, v6, v7, sub_22C36EF04), (a2 & 1) != 0))
  {
    v8 = a4(0);
    sub_22C36985C();
    sub_22C37275C();
    sub_22C62E98C();
    v9 = sub_22C37049C();
    v12 = v8;
  }

  else
  {
    (a4)(0, a2);
    v9 = sub_22C37582C();
  }

  return sub_22C36C640(v9, v10, v11, v12);
}

uint64_t sub_22C605BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 6;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if (v8)
  {
    return *(*(a3 + 56) + v7);
  }

  else
  {
    return 6;
  }
}

double sub_22C605C48()
{
  sub_22C634534();
  if (v3 && (v4 = v2, v5 = sub_22C628DD0(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_22C36F998(v7, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_22C605CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22C634534();
  if (v5 && (v4(), (v6 & 1) != 0))
  {
    v7 = a3(0);
    sub_22C36985C();
    v8 = sub_22C634304();
    v9(v8);
    v10 = sub_22C37049C();
    v13 = v7;
  }

  else
  {
    a3(0);
    v10 = sub_22C37582C();
  }

  return sub_22C36C640(v10, v11, v12, v13);
}

uint64_t sub_22C605DA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a2 + 16))
  {
    a3(a1);
    if (v3)
    {
      sub_22C634960();
    }
  }

  return sub_22C36BA00();
}

double sub_22C605DE8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_22C3736B4(), v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04), (v8 & 1) != 0))
  {
    v9 = *(a1 + 56) + 32 * v7;

    sub_22C36F998(v9, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22C605EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C3736B4();
  sub_22C36E5AC(v3, v4, v5, sub_22C36EF04);
  if (v6)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C605F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22C634534();
  if (v5 && (v4(), (v6 & 1) != 0))
  {
    v7 = a3(0);
    sub_22C36985C();
    sub_22C37275C();
    sub_22C62E98C();
    v8 = sub_22C37049C();
    v11 = v7;
  }

  else
  {
    a3(0);
    v8 = sub_22C37582C();
  }

  return sub_22C36C640(v8, v9, v10, v11);
}

uint64_t sub_22C605FF8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C632604(a1, sub_22C6AC6A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t sub_22C6061B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_22C369914(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_22C60625C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t ActionResolverRequestEvaluator.init<A, B>(toolbox:actionRequirements:toolExecutionSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C634340();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_22C908AEC();
  sub_22C369824();
  v46 = v29;
  (*(v30 + 16))(v27, v25, v28);
  v31 = type metadata accessor for ActionResolverRequestEvaluator(0);
  v32 = (v27 + *(v31 + 20));
  v32[3] = v21;
  v32[4] = v17;
  v33 = sub_22C36D548(v32);
  v34 = *(v21 - 8);
  (*(v34 + 16))(v33, v23, v21);
  v35 = (v27 + *(v31 + 24));
  v35[3] = v19;
  v35[4] = v15;
  sub_22C36D548(v35);
  sub_22C36BBA8();
  sub_22C634004();
  v36();
  (*(v34 + 8))(v23, v21);
  sub_22C37BD98();
  sub_22C634220();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, a11, a12, a13, a14);
}

uint64_t ActionResolverRequestEvaluator.resolve(actionResolverRequest:sessionState:isJointResolverEnabled:contextId:originTaskStatementIdIndex:)()
{
  sub_22C369980();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 140) = v3;
  *(v1 + 137) = v4;
  *(v1 + 184) = v5;
  *(v1 + 192) = v6;
  *(v1 + 176) = v7;
  v8 = sub_22C902A4C();
  *(v1 + 216) = v8;
  sub_22C3699B8(v8);
  *(v1 + 224) = v9;
  *(v1 + 232) = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v10);
  *(v1 + 240) = sub_22C3699D4();
  v11 = type metadata accessor for ActionResolver.Parameter(0);
  sub_22C369914(v11);
  *(v1 + 248) = sub_22C36D0D4();
  *(v1 + 256) = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  sub_22C369914(v12);
  *(v1 + 264) = sub_22C36D0D4();
  *(v1 + 272) = swift_task_alloc();
  v13 = sub_22C908BBC();
  *(v1 + 280) = v13;
  sub_22C3699B8(v13);
  *(v1 + 288) = v14;
  *(v1 + 296) = sub_22C36D0D4();
  *(v1 + 304) = swift_task_alloc();
  v15 = sub_22C90221C();
  *(v1 + 312) = v15;
  sub_22C3699B8(v15);
  *(v1 + 320) = v16;
  *(v1 + 328) = sub_22C36D0D4();
  *(v1 + 336) = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9BF310, &qword_22C922578);
  sub_22C369914(v17);
  *(v1 + 344) = sub_22C36D0D4();
  *(v1 + 352) = swift_task_alloc();
  v18 = type metadata accessor for ActionParameterValue(0);
  *(v1 + 360) = v18;
  sub_22C3699B8(v18);
  *(v1 + 368) = v19;
  *(v1 + 376) = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  *(v1 + 384) = v20;
  sub_22C369914(v20);
  *(v1 + 392) = sub_22C36D0D4();
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  v21 = sub_22C90292C();
  *(v1 + 416) = v21;
  sub_22C3699B8(v21);
  *(v1 + 424) = v22;
  *(v1 + 432) = sub_22C3699D4();
  v23 = sub_22C90069C();
  *(v1 + 440) = v23;
  sub_22C3699B8(v23);
  *(v1 + 448) = v24;
  *(v1 + 456) = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v25);
  *(v1 + 464) = sub_22C3699D4();
  v26 = type metadata accessor for ActionResolver.Decision(0);
  *(v1 + 472) = v26;
  sub_22C369914(v26);
  *(v1 + 480) = sub_22C36D0D4();
  *(v1 + 488) = swift_task_alloc();
  *(v1 + 496) = swift_task_alloc();
  v27 = sub_22C908D6C();
  *(v1 + 504) = v27;
  sub_22C3699B8(v27);
  *(v1 + 512) = v28;
  *(v1 + 520) = sub_22C36D0D4();
  *(v1 + 528) = swift_task_alloc();
  v29 = sub_22C9099FC();
  *(v1 + 536) = v29;
  sub_22C3699B8(v29);
  *(v1 + 544) = v30;
  *(v1 + 552) = sub_22C36D0D4();
  *(v1 + 560) = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v31);
  *(v1 + 568) = sub_22C36D0D4();
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  v32 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v32);
  *(v1 + 608) = sub_22C3699D4();
  v33 = sub_22C903B1C();
  *(v1 + 616) = v33;
  sub_22C3699B8(v33);
  *(v1 + 624) = v34;
  *(v1 + 632) = sub_22C3699D4();
  v35 = _s5TupleVMa(0);
  *(v1 + 640) = v35;
  sub_22C3699B8(v35);
  *(v1 + 648) = v36;
  *(v1 + 656) = sub_22C36D0D4();
  *(v1 + 664) = swift_task_alloc();
  v37 = sub_22C9027EC();
  *(v1 + 672) = v37;
  sub_22C3699B8(v37);
  *(v1 + 680) = v38;
  *(v1 + 688) = sub_22C36D0D4();
  *(v1 + 696) = swift_task_alloc();
  v39 = sub_22C9089DC();
  *(v1 + 704) = v39;
  sub_22C3699B8(v39);
  *(v1 + 712) = v40;
  *(v1 + 720) = sub_22C3699D4();
  v41 = sub_22C906ECC();
  *(v1 + 728) = v41;
  sub_22C3699B8(v41);
  *(v1 + 736) = v42;
  *(v1 + 744) = sub_22C3699D4();
  v43 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v43);
  *(v1 + 752) = sub_22C3699D4();
  v44 = sub_22C908A0C();
  *(v1 + 760) = v44;
  sub_22C3699B8(v44);
  *(v1 + 768) = v45;
  *(v1 + 776) = sub_22C3699D4();
  v46 = sub_22C9025EC();
  *(v1 + 784) = v46;
  sub_22C3699B8(v46);
  *(v1 + 792) = v47;
  *(v1 + 800) = sub_22C36D0D4();
  *(v1 + 808) = swift_task_alloc();
  v48 = sub_22C9029AC();
  *(v1 + 816) = v48;
  sub_22C3699B8(v48);
  *(v1 + 824) = v49;
  *(v1 + 832) = sub_22C3699D4();
  v50 = sub_22C90827C();
  *(v1 + 840) = v50;
  sub_22C3699B8(v50);
  *(v1 + 848) = v51;
  *(v1 + 856) = sub_22C3699D4();
  v52 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v52);
  *(v1 + 864) = sub_22C36D0D4();
  *(v1 + 872) = swift_task_alloc();
  v53 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  sub_22C369914(v53);
  *(v1 + 880) = sub_22C3699D4();
  v54 = sub_22C90832C();
  *(v1 + 888) = v54;
  sub_22C3699B8(v54);
  *(v1 + 896) = v55;
  *(v1 + 904) = sub_22C3699D4();
  v56 = sub_22C90952C();
  *(v1 + 912) = v56;
  sub_22C3699B8(v56);
  *(v1 + 920) = v57;
  *(v1 + 928) = sub_22C3699D4();
  v58 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v58);
  *(v1 + 936) = sub_22C36D0D4();
  *(v1 + 944) = swift_task_alloc();
  v59 = sub_22C9093BC();
  *(v1 + 952) = v59;
  sub_22C3699B8(v59);
  *(v1 + 960) = v60;
  *(v1 + 968) = sub_22C36D0D4();
  *(v1 + 976) = swift_task_alloc();
  *(v1 + 984) = swift_task_alloc();
  v61 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v61);
  *(v1 + 992) = sub_22C36D0D4();
  *(v1 + 1000) = swift_task_alloc();
  v62 = sub_22C901ECC();
  *(v1 + 1008) = v62;
  sub_22C3699B8(v62);
  *(v1 + 1016) = v63;
  *(v1 + 1024) = sub_22C3699D4();
  v64 = sub_22C908C5C();
  *(v1 + 1032) = v64;
  sub_22C3699B8(v64);
  *(v1 + 1040) = v65;
  *(v1 + 1048) = sub_22C36D0D4();
  *(v1 + 1056) = swift_task_alloc();
  *(v1 + 1064) = swift_task_alloc();
  *(v1 + 1072) = swift_task_alloc();
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  v66 = sub_22C9069BC();
  *(v1 + 1104) = v66;
  sub_22C3699B8(v66);
  *(v1 + 1112) = v67;
  *(v1 + 1120) = sub_22C36D0D4();
  *(v1 + 1128) = swift_task_alloc();
  *(v1 + 1136) = swift_task_alloc();
  v68 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  sub_22C369914(v68);
  *(v1 + 1144) = sub_22C36D0D4();
  *(v1 + 1152) = swift_task_alloc();
  *(v1 + 1160) = swift_task_alloc();
  *(v1 + 1168) = swift_task_alloc();
  v69 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  sub_22C369914(v69);
  *(v1 + 1176) = sub_22C3699D4();
  v70 = sub_22C3A5908(&qword_27D9BEEB0, &unk_22C9214D8);
  *(v1 + 1184) = v70;
  sub_22C369914(v70);
  *(v1 + 1192) = sub_22C3699D4();
  v71 = sub_22C90363C();
  *(v1 + 1200) = v71;
  sub_22C3699B8(v71);
  *(v1 + 1208) = v72;
  *(v1 + 1216) = sub_22C3699D4();
  v73 = sub_22C3A5908(&qword_27D9BF320, &qword_22C9225B0);
  sub_22C369914(v73);
  *(v1 + 1224) = sub_22C3699D4();
  v74 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v74);
  *(v1 + 1232) = sub_22C3699D4();
  v75 = sub_22C90654C();
  *(v1 + 1240) = v75;
  sub_22C3699B8(v75);
  *(v1 + 1248) = v76;
  *(v1 + 1256) = sub_22C3699D4();
  v77 = sub_22C906ACC();
  *(v1 + 1264) = v77;
  sub_22C3699B8(v77);
  *(v1 + 1272) = v78;
  *(v1 + 1280) = sub_22C3699D4();
  v79 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v79);
  *(v1 + 1288) = sub_22C3699D4();
  v80 = sub_22C9026BC();
  *(v1 + 1296) = v80;
  sub_22C3699B8(v80);
  *(v1 + 1304) = v81;
  *(v1 + 1312) = sub_22C36D0D4();
  *(v1 + 1320) = swift_task_alloc();
  *(v1 + 1328) = swift_task_alloc();
  v82 = sub_22C907DEC();
  *(v1 + 1336) = v82;
  sub_22C3699B8(v82);
  *(v1 + 1344) = v83;
  *(v1 + 1352) = sub_22C36D0D4();
  *(v1 + 1360) = swift_task_alloc();
  v84 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v84);
  *(v1 + 1368) = sub_22C3699D4();
  v85 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v85);
  *(v1 + 1376) = sub_22C3699D4();
  v86 = sub_22C9026DC();
  *(v1 + 1384) = v86;
  sub_22C3699B8(v86);
  *(v1 + 1392) = v87;
  *(v1 + 1400) = sub_22C3699D4();
  v88 = sub_22C90880C();
  *(v1 + 1408) = v88;
  sub_22C3699B8(v88);
  *(v1 + 1416) = v89;
  *(v1 + 1424) = sub_22C36D0D4();
  *(v1 + 1432) = swift_task_alloc();
  *(v1 + 1440) = swift_task_alloc();
  *(v1 + 1448) = swift_task_alloc();
  *(v1 + 1456) = swift_task_alloc();
  v90 = sub_22C908EAC();
  *(v1 + 1464) = v90;
  sub_22C3699B8(v90);
  *(v1 + 1472) = v91;
  *(v1 + 1480) = sub_22C36D0D4();
  *(v1 + 1488) = swift_task_alloc();
  *(v1 + 1496) = swift_task_alloc();
  *(v1 + 1504) = swift_task_alloc();
  v92 = sub_22C90077C();
  *(v1 + 1512) = v92;
  sub_22C3699B8(v92);
  *(v1 + 1520) = v93;
  *(v1 + 1528) = sub_22C36D0D4();
  *(v1 + 1536) = swift_task_alloc();
  *(v1 + 1544) = swift_task_alloc();
  *(v1 + 1552) = swift_task_alloc();
  v94 = type metadata accessor for RequirementStatus(0);
  *(v1 + 1560) = v94;
  sub_22C369914(v94);
  *(v1 + 1568) = sub_22C36D0D4();
  *(v1 + 1576) = swift_task_alloc();
  v95 = sub_22C90769C();
  *(v1 + 1584) = v95;
  sub_22C3699B8(v95);
  *(v1 + 1592) = v96;
  *(v1 + 1600) = sub_22C36D0D4();
  *(v1 + 1608) = swift_task_alloc();
  *(v1 + 1616) = swift_task_alloc();
  *(v1 + 1624) = swift_task_alloc();
  *(v1 + 1632) = swift_task_alloc();
  *(v1 + 1640) = swift_task_alloc();
  v97 = sub_22C9078FC();
  *(v1 + 1648) = v97;
  sub_22C3699B8(v97);
  *(v1 + 1656) = v98;
  *(v1 + 1664) = sub_22C36D0D4();
  *(v1 + 1672) = swift_task_alloc();
  *(v1 + 1680) = swift_task_alloc();
  v99 = sub_22C9063DC();
  *(v1 + 1688) = v99;
  sub_22C3699B8(v99);
  *(v1 + 1696) = v100;
  *(v1 + 1704) = sub_22C36D0D4();
  *(v1 + 1712) = swift_task_alloc();
  *(v1 + 1720) = swift_task_alloc();
  *(v1 + 1728) = swift_task_alloc();
  *(v1 + 1736) = swift_task_alloc();
  *(v1 + 1744) = swift_task_alloc();
  *(v1 + 1752) = swift_task_alloc();
  *(v1 + 1760) = swift_task_alloc();
  *(v1 + 1768) = swift_task_alloc();
  *(v1 + 1776) = swift_task_alloc();
  *(v1 + 1784) = swift_task_alloc();
  *(v1 + 1792) = swift_task_alloc();
  v101 = sub_22C901FAC();
  *(v1 + 1800) = v101;
  sub_22C3699B8(v101);
  *(v1 + 1808) = v102;
  *(v1 + 1816) = sub_22C36D0D4();
  *(v1 + 1824) = swift_task_alloc();
  *(v1 + 1832) = swift_task_alloc();
  *(v1 + 1840) = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v103, v104, v105);
}

uint64_t sub_22C6076A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[207];
  sub_22C36BB08();
  sub_22C901F8C();
  sub_22C903F8C();
  v14 = *(v13 + 16);
  v12[231] = v14;
  v12[232] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_22C634004();
  v14();
  v15 = sub_22C36D29C();
  (v14)(v15);
  v16 = sub_22C9063CC();
  v17 = sub_22C90AABC();
  if (os_log_type_enabled(v16, v17))
  {
    v65 = v12[212];
    v66 = v12[211];
    v67 = v12[224];
    v18 = v12[210];
    v19 = v12[207];
    v63 = v12[206];
    v20 = swift_slowAlloc();
    swift_slowAlloc();
    *v20 = 136315394;
    v64 = v17;
    sub_22C9068FC();
    sub_22C37ACB8();
    sub_22C6339B0(v21, v22);
    sub_22C90B47C();
    sub_22C385D88();
    v23 = sub_22C36CC9C();
    v24(v23);
    v25 = *(v19 + 8);
    v25(v18, v63);
    v26 = sub_22C37170C();
    v29 = sub_22C36F9F4(v26, v27, v28);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    sub_22C9078EC();
    sub_22C90A1AC();
    sub_22C385D88();
    v30 = sub_22C36ECB4();
    (v25)(v30);
    v31 = sub_22C37170C();
    v34 = sub_22C36F9F4(v31, v32, v33);

    *(v20 + 14) = v34;
    _os_log_impl(&dword_22C366000, v16, v64, "Processing actionResolverRequest for request: statementId=%s and toolId=%s", v20, 0x16u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C370510();

    v35 = *(v65 + 8);
    v35(v67, v66);
  }

  else
  {
    v36 = v12[212];
    v37 = v12[207];

    v25 = *(v37 + 8);
    v38 = sub_22C36CA88();
    (v25)(v38);
    v39 = sub_22C50B478();
    (v25)(v39);
    v35 = *(v36 + 8);
    v40 = sub_22C37170C();
    (v35)(v40);
  }

  v12[234] = v35;
  v12[233] = v25;
  v41 = v12[26];
  v42 = type metadata accessor for ActionResolverRequestEvaluator(0);
  sub_22C378AB0(v41 + *(v42 + 20), (v12 + 2));
  sub_22C374168(v12 + 2, v12[5]);
  v43 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v43);
  sub_22C5CAA58();
  sub_22C908AFC();
  v44 = v12[204];
  v45 = v12[199];
  v46 = v12[198];
  v47 = v12[194];
  v48 = v12[190];
  v49 = v12[189];
  v50 = *(v48 + 8);
  v12[235] = v50;
  v12[236] = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v47, v49);
  v51 = *(v45 + 8);
  v12[237] = v51;
  v12[238] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v44, v46);
  sub_22C90878C();
  sub_22C369B5C();
  swift_task_alloc();
  sub_22C36CC90();
  v12[239] = v52;
  *v52 = v53;
  v52[1] = sub_22C608050;
  sub_22C372034();

  return v59(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_22C608050()
{
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *v4 = *v1;
  v3[240] = v0;

  v5 = v2[184];
  v6 = v2[182];
  v7 = v2[177];
  v8 = v2[176];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);
  }

  else
  {
    v3[241] = v10;
    v3[242] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v3[243] = *(v5 + 8);
    v3[244] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12 = sub_22C36ECB4();
  v13(v12);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C60824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C36FF94(v12 + 2);
  sub_22C36BBCC();
  sub_22C62E98C();
  sub_22C36BAFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v12[226];
  v76 = v12[225];
  if (EnumCaseMultiPayload == 1)
  {
    v74 = v12[197];
    v75 = v12[230];
    v15 = v12[175];
    v16 = v12[174];
    v17 = v12[173];
    v18 = v12[166];
    v19 = v12[163];
    v72 = v12[198];
    v73 = v12[162];
    v20 = v12[55];
    (*(v16 + 32))(v15, v12[196], v17);
    v21 = sub_22C381B6C();
    sub_22C36C640(v21, v22, v23, v20);
    sub_22C9078EC();
    v24 = sub_22C37049C();
    sub_22C36C640(v24, v25, v26, v72);
    v27 = sub_22C36FC74();
    v28(v27);
    (*(v19 + 104))(v18, *MEMORY[0x277D1CBA0], v73);
    sub_22C9026AC();
    v29 = sub_22C3702F4();
    sub_22C36C640(v29, v30, v31, v32);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    sub_22C9068FC();
    sub_22C906E7C();
    (*(v16 + 8))(v15, v17);
    sub_22C36A140();
    sub_22C62E9E0(v74, v33);
    (*(v14 + 8))(v75, v76);
    type metadata accessor for StepResolution(0);
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
    sub_22C374E7C();
    sub_22C37A264();
    sub_22C37E340();
    sub_22C633A7C(v34);

    sub_22C369C50();
    sub_22C372034();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }

  v44 = v12[241];
  v45 = v12[229];
  sub_22C36A140();
  sub_22C62E9E0(v46, v47);
  sub_22C90878C();
  sub_22C6341E4();
  sub_22C9068FC();
  sub_22C633FA8();
  sub_22C646D68();
  v48 = *(v14 + 8);
  v12[245] = v48;
  v12[246] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v45, v76);
  v49 = sub_22C36D264();
  v44(v49);
  sub_22C9070DC();
  sub_22C381514();
  sub_22C36D0A8(v50, v51, v52);
  if (v53)
  {
    sub_22C3AC228(v12[154], &qword_27D9BAA18, &qword_22C911C40);
LABEL_11:
    v62 = 0;
    goto LABEL_12;
  }

  sub_22C90702C();
  sub_22C36BBA8();
  v54 = sub_22C36BBCC();
  v55(v54);
  v56 = sub_22C36D264();
  if (v57(v56) != *MEMORY[0x277D1DA78])
  {
    (*(v12[156] + 8))(v12[157], v12[155]);
    goto LABEL_11;
  }

  v58 = sub_22C634528();
  v59(v58);
  v60 = sub_22C36BBCC();
  v61(v60);
  v62 = sub_22C906A8C();
  v63 = sub_22C37170C();
  v64(v63);

LABEL_12:
  v12[247] = v62;
  sub_22C90878C();
  swift_task_alloc();
  sub_22C36CC90();
  v12[248] = v65;
  *v65 = v66;
  v65[1] = sub_22C608AE4;
  sub_22C372034();

  return sub_22C61323C(v67, v68, v69, v70);
}

uint64_t sub_22C608AE4()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1992) = v0;

  (*(v2 + 1928))(*(v2 + 1440), *(v2 + 1408));

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C608C68()
{
  sub_22C3749D8();
  v1 = *(v0 + 1224);
  sub_22C376738(v1);
  if (!v105)
  {
    sub_22C634068();
    v572 = v18;
    v553 = *(v0 + 1808);
    v557 = *(v0 + 1816);
    v562 = *(v0 + 1800);
    v563 = *(v0 + 1840);
    v567 = *(v0 + 1576);
    v540 = *(v0 + 1584);
    v19 = *(v0 + 440);

    sub_22C51E3FC();
    v20 = sub_22C37A004();
    v21(v20);
    sub_22C36A748();
    sub_22C36C640(v22, v23, v24, v19);
    sub_22C9078EC();
    sub_22C36BECC();
    sub_22C36C640(v25, v26, v27, v540);
    sub_22C63489C();
    v28 = sub_22C372FA4();
    v29(v28);
    sub_22C9026AC();
    sub_22C36A748();
    sub_22C36C640(v30, v31, v32, v33);
    sub_22C380120();
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    sub_22C6341E4();
    sub_22C9068FC();
    (*(v553 + 16))(v557, v563, v562);
    sub_22C906E6C();
    v34 = sub_22C372FCC();
    v35(v34);
    sub_22C36A140();
    sub_22C62E9E0(v567, v36);
    v37 = sub_22C50B578();
    v572(v37);
    goto LABEL_7;
  }

  sub_22C3AC228(v1, &qword_27D9BF320, &qword_22C9225B0);
  v2 = sub_22C634304();
  v3(v2);
  v4 = sub_22C90362C();
  v5 = sub_22C36BAFC();
  v6(v5);
  v578 = v0;
  if ((v4 & 1) == 0)
  {
LABEL_59:
    if (sub_22C90776C())
    {
      sub_22C634068();
      v570 = v206;
      v207 = *(v0 + 1928);
      v208 = *(v0 + 1832);
      v565 = *(v0 + 1800);
      v582 = *(v0 + 760);
      sub_22C90878C();
      v209 = sub_22C9087DC();
      v210 = sub_22C36FC2C();
      v207(v210);
      *(v0 + 160) = v209;
      sub_22C9068FC();
      v211 = sub_22C38644C();
      sub_22C3A5908(v211, v212);
      sub_22C369E24();
      sub_22C50B118(v213, &qword_27D9BA9F0, &qword_22C912420);
      sub_22C3863FC();
      sub_22C907F1C();
      v570(v208, v565);

      v214 = sub_22C383C3C();
      sub_22C36D0A8(v214, v215, v582);
      if (v105)
      {
        v216 = *(v0 + 1856);
        v217 = *(v0 + 1848);
        v218 = *(v0 + 1664);
        v219 = *(v0 + 1648);
        v220 = *(v0 + 752);
        v221 = *(v0 + 184);

        sub_22C3AC228(v220, &qword_27D9BA808, &qword_22C90C6E0);
        sub_22C903F8C();
        v217(v218, v221, v219);
        v222 = sub_22C9063CC();
        v223 = sub_22C90AADC();
        if (os_log_type_enabled(v222, v223))
        {
          sub_22C634068();
          v558 = v224;
          v225 = *(v0 + 1832);
          v226 = *(v0 + 1800);
          v580 = *(v0 + 1752);
          v583 = *(v0 + 1872);
          v566 = *(v0 + 1864);
          v575 = *(v0 + 1688);
          v227 = *(v0 + 1664);
          v556 = *(v0 + 1648);
          sub_22C36FB44();
          v585 = sub_22C388D58();
          *v216 = 136315138;
          sub_22C9068FC();
          sub_22C37ACB8();
          sub_22C6339B0(v228, v229);
          sub_22C90B47C();
          v558(v225, v226);
          v566(v227, v556);
          v230 = sub_22C372164();
          v233 = sub_22C36F9F4(v230, v231, v232);

          *(v216 + 4) = v233;
          sub_22C5CD33C(&dword_22C366000, v222, v223, "Unable to find a statementEvaluatedEvent prior to a confirmed request for statementId %s.", v498);
          sub_22C36FF94(v585);
          sub_22C3699EC();
          sub_22C370510();

          v583(v580, v575);
        }

        else
        {
          v271 = *(v0 + 1872);
          v272 = *(v0 + 1864);

          v273 = sub_22C36ECB4();
          v272(v273);
          v274 = sub_22C37170C();
          v271(v274);
        }

        v275 = *(v0 + 1960);
        sub_22C633FB4();
        v276 = *(v0 + 1576);
        type metadata accessor for InterpreterError(0);
        sub_22C372ACC();
        v279 = sub_22C6339B0(v277, v278);
        v280 = sub_22C36D148(v279);
        sub_22C634864(v280, v281);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36A140();
        sub_22C62E9E0(v276, v282);
        v283 = sub_22C36BBCC();
        v275(v283);
        goto LABEL_82;
      }

      v234 = sub_22C36CB30();
      v235(v234);
      sub_22C9089EC();
      v236 = sub_22C36BAFC();
      v238 = v237(v236);
      if (v238 != *MEMORY[0x277D1E798])
      {

        v284 = sub_22C36BAFC();
        v285(v284);
        sub_22C903F8C();
        v286 = sub_22C9063CC();
        v287 = sub_22C90AADC();
        if (os_log_type_enabled(v286, v287))
        {
          *sub_22C36D240() = 0;
          sub_22C6349C0(&dword_22C366000, v288, v289, "The event found with latestStatementEvaluatedEvent was not a statementEvaluatedEvent.");
          sub_22C3699EC();
        }

        sub_22C634068();
        v571 = v290;
        v291 = *(v0 + 1872);
        sub_22C634474();
        v292 = *(v0 + 1576);

        v293 = sub_22C36CA88();
        v291(v293);
        type metadata accessor for InterpreterError(0);
        sub_22C372ACC();
        v296 = sub_22C6339B0(v294, v295);
        v297 = sub_22C36D148(v296);
        sub_22C634864(v297, v298);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v299 = sub_22C3726C4();
        v300(v299);
        sub_22C36A140();
        sub_22C62E9E0(v292, v301);
        v571(v565, v561);
        goto LABEL_82;
      }

      v239 = *(v0 + 1312);
      v240 = *(v578 + 1304);
      v241 = *(v578 + 1296);
      (*(*(v578 + 712) + 96))(*(v578 + 720), *(v578 + 704));
      v242 = sub_22C379FC8();
      v243(v242);
      sub_22C906EBC();
      sub_22C907DAC();
      v244 = sub_22C36BAFC();
      v245(v244);
      v246 = (*(v240 + 88))(v239, v241);
      v247 = *(v578 + 1304);
      v248 = *(v578 + 1296);
      if (v246 == *MEMORY[0x277D1CBA8])
      {
        v249 = *(v578 + 1776);
        v250 = *(v578 + 696);
        (*(v247 + 96))(*(v578 + 1312), v248);
        sub_22C44178C();
        v251();
        sub_22C903F8C();
        v252 = sub_22C9063CC();
        sub_22C90AABC();
        sub_22C37E84C();
        if (os_log_type_enabled(v252, v253))
        {
          v254 = sub_22C36D240();
          sub_22C36C890(v254);
          _os_log_impl(&dword_22C366000, v252, v249, "Request is already confirmed. Looking for action to execute.", v250, 2u);
          sub_22C372FB0();
        }

        v255 = *(v578 + 1976);
        v256 = *(v578 + 1872);
        v257 = *(v578 + 696);
        v258 = *(v578 + 184);

        v259 = sub_22C36ECB4();
        v260 = v256(v259);
        MEMORY[0x2318AFCB0](v260);
        v261 = sub_22C4E78D0();
        *(v261 + 16) = v255;
        *(v261 + 24) = v258;
        sub_22C604EA0(MEMORY[0x277D84F98], sub_22C63022C, v261, v257, &qword_27D9BF480, &qword_22C922740, MEMORY[0x277D1C8D0], v262, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509);
        *(v578 + 2000) = v263;

        swift_task_alloc();
        sub_22C36CC90();
        *(v578 + 2008) = v264;
        *v264 = v265;
        v264[1] = sub_22C60C0F4;
        sub_22C634074();
        sub_22C634924();

        return sub_22C6157D4(v266, v267, v268, v269);
      }

      (*(v247 + 8))(*(v578 + 1312), v248);
      sub_22C903F8C();
      v302 = sub_22C9063CC();
      sub_22C90AABC();
      sub_22C37E84C();
      if (os_log_type_enabled(v302, v303))
      {
        v304 = sub_22C36D240();
        sub_22C36C890(v304);
        sub_22C36BB14(&dword_22C366000, v305, v306, "Latest statementEvaluated of the confirmed action isn't a confirmation. Ensuring we've resolved all parameters");
        sub_22C372FB0();
      }

      v307 = *(v578 + 1872);
      v584 = *(v578 + 776);
      v308 = *(v578 + 768);
      v576 = *(v578 + 760);

      v0 = v578;
      v309 = sub_22C36BAFC();
      v307(v309);
      v310 = sub_22C36FC2C();
      v311(v310);
      (*(v308 + 8))(v584, v576);
    }

    if (*(v0 + 137) == 1)
    {
      v312 = *(v0 + 1992);
      sub_22C90789C();
      sub_22C90786C();
      v313 = sub_22C36FC2C();
      *(v0 + 2024) = sub_22C619D74(v313, v314);
      *(v0 + 2032) = v316;
      *(v0 + 2040) = v315;
      if (v312)
      {
        v317 = *(v0 + 1960);
        v318 = *(v0 + 1576);

        sub_22C36A140();
        sub_22C62E9E0(v318, v319);
        v320 = sub_22C36BAFC();
        v317(v320);
LABEL_82:
        sub_22C633E00();
        sub_22C386D54();
        sub_22C37A264();
        sub_22C37E340();

        sub_22C369A24();
        goto LABEL_83;
      }

      v333 = v315;

      v334 = *(v333 + 16);
      if (v334)
      {
        v335 = 0;
        v336 = *(v578 + 648);
        v337 = *(v578 + 640);
        while (v334 != v335)
        {
          if (v335 >= *(v333 + 16))
          {
            __break(1u);
            goto LABEL_156;
          }

          v338 = *(v578 + 664);
          *(v578 + 2224) = *(v336 + 80);
          sub_22C633E18();
          *(v339 + 2048) = *(v336 + 72);
          sub_22C633F90();
          sub_22C62E98C();
          ++v335;
          v340 = *(*(v338 + *(v337 + 24)) + 16);
          sub_22C633F78();
          sub_22C62E9E0(v338, v341);
          if (v340)
          {
            v0 = v578;
            v342 = *(v578 + 1928);
            v343 = *(v578 + 616);
            v344 = *(v578 + 608);
            sub_22C90878C();
            v345 = sub_22C9087DC();
            v346 = sub_22C36FC2C();
            v342(v346);
            *(v578 + 144) = v345;
            v347 = sub_22C38644C();
            sub_22C3A5908(v347, v348);
            sub_22C369E24();
            sub_22C50B118(v349, &qword_27D9BA9F0, &qword_22C912420);
            sub_22C36CA88();
            sub_22C907EAC();
            sub_22C36D0A8(v344, 1, v343);
            if (v105)
            {
              sub_22C3AC228(*(v578 + 608), &qword_27D9BD760, &qword_22C922200);

              goto LABEL_108;
            }

            v363 = sub_22C36CB30();
            v364(v363);

            v365 = sub_22C903A5C();
            if (v366)
            {
              SiriResponseMode.init(rawValue:)(*&v365);
              v367 = sub_22C37170C();
              v368(v367);
              goto LABEL_108;
            }

            goto LABEL_107;
          }
        }
      }

      sub_22C903F8C();
      v350 = sub_22C9063CC();
      sub_22C90AABC();
      sub_22C37E84C();
      if (os_log_type_enabled(v350, v351))
      {
        v352 = sub_22C36D240();
        sub_22C36C890(v352);
        sub_22C36BB14(&dword_22C366000, v353, v354, "tupleSet is empty or parameters are empty, resolving without JointResolver");
        sub_22C372FB0();
      }

      v355 = *(v578 + 1872);

      v356 = sub_22C36BAFC();
      v355(v356);
      swift_task_alloc();
      sub_22C36CC90();
      *(v578 + 2056) = v330;
      *v330 = v357;
      v332 = sub_22C60C6CC;
    }

    else
    {

      sub_22C903F8C();
      v323 = sub_22C9063CC();
      sub_22C90AABC();
      sub_22C37E84C();
      if (os_log_type_enabled(v323, v324))
      {
        v325 = sub_22C36D240();
        sub_22C36C890(v325);
        sub_22C36BB14(&dword_22C366000, v326, v327, "JointResolver is not enabled");
        sub_22C372FB0();
      }

      v328 = *(v0 + 1872);

      v329 = sub_22C36BAFC();
      v328(v329);
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 2192) = v330;
      *v330 = v331;
      v332 = sub_22C60FFA8;
    }

    v330[1] = v332;
    sub_22C634074();
    sub_22C634924();

    return sub_22C616CD0(v358, v359, v360, v361);
  }

  v7 = *(v0 + 1928);
  sub_22C90878C();
  v8 = sub_22C9087DC();
  v9 = sub_22C36D264();
  v7(v9);
  *(v0 + 168) = v8;
  v10 = sub_22C37170C();
  sub_22C3A5908(v10, v11);
  sub_22C369E24();
  sub_22C38399C();
  sub_22C50B118(v12, v13, v14);
  sub_22C907E2C();

  v15 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  v16 = sub_22C36CCF8();
  sub_22C36D0A8(v16, v17, v15);
  if (v105)
  {
    sub_22C3AC228(*(v0 + 1176), &qword_27D9BEEA8, &qword_22C9214D0);
    goto LABEL_59;
  }

  v573 = *(v0 + 1928);
  v46 = *(v0 + 1192);
  v47 = *(v0 + 1184);
  v48 = *(v0 + 1176);
  v49 = *(v0 + 768);
  v50 = *(v0 + 760);
  v51 = *(v15 + 48);
  v52 = *(v47 + 48);
  *v46 = *v48;
  (*(v49 + 32))(v46 + v52, v48 + v51, v50);
  v53 = *v46;
  (*(v49 + 8))(v46 + *(v47 + 48), v50);
  sub_22C90878C();
  v54 = sub_22C9087DC();
  v55 = sub_22C36D264();
  result = v573(v55);
  v57 = *(v54 + 16);
  if (v57 < v53)
  {
    __break(1u);
    goto LABEL_161;
  }

  v518 = *(v0 + 1808);
  v58 = *(v0 + 1112);
  v59 = *(v0 + 1040);
  v60 = *(v0 + 1016);
  v61 = *(v0 + 896);
  v62 = *(v0 + 848);
  v63 = sub_22C6061B4(v53, v57, v54, MEMORY[0x277D1E890]);
  v536 = v64;
  v537 = v63;
  v534 = v66;
  v535 = v65;

  v67 = sub_22C90789C();
  v68 = 0;
  v69 = v67 + 56;
  v522 = v67;
  v70 = -1 << *(v67 + 32);
  if (-v70 < 64)
  {
    v71 = ~(-1 << -v70);
  }

  else
  {
    v71 = -1;
  }

  v72 = v71 & *(v67 + 56);
  v73 = (63 - v70) >> 6;
  v568 = (v58 + 32);
  v543 = v59;
  v545 = v58;
  v550 = (v58 + 8);
  v561 = v62;
  v554 = v62 + 8;
  v519 = (v61 + 8);
  v512 = (v0 + 872);
  v551 = (v0 + 864);
  v511 = v67 + 56;
  v510 = v73;
  if (v72)
  {
LABEL_13:
    v74 = v68;
LABEL_17:
    v514 = (v72 - 1) & v72;
    v513 = v74;
    v75 = *(*(v522 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v72)))));
    v76 = v75 + 64;
    v77 = -1 << *(v75 + 32);
    if (-v77 < 64)
    {
      v78 = ~(-1 << -v77);
    }

    else
    {
      v78 = -1;
    }

    v581 = v78 & *(v75 + 64);
    v533 = (63 - v77) >> 6;
    v547 = v75;

    v60 = 0;
    v548 = v76;
LABEL_21:
    v79 = v581;
    if (v581)
    {
      v80 = v60;
      goto LABEL_27;
    }

    while (1)
    {
      v80 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v80 >= v533)
      {
        v581 = 0;
        v89 = 1;
        goto LABEL_28;
      }

      v79 = *(v76 + 8 * v80);
      ++v60;
      if (v79)
      {
        v60 = v80;
LABEL_27:
        v81 = *(v0 + 1096);
        v82 = *(v0 + 1032);
        v581 = (v79 - 1) & v79;
        v83 = __clz(__rbit64(v79)) | (v80 << 6);
        v59 = v545;
        v84 = sub_22C634304();
        v85(v84);
        v543[2](v81, *(v547 + 56) + v543[9] * v83, v82);
        v0 = v578;
        v86 = sub_22C36BBCC();
        v87(v86);
        sub_22C3839D8();
        v88();
        v89 = 0;
        v76 = v548;
LABEL_28:
        v90 = *(v0 + 1168);
        v53 = *(v0 + 1160);
        sub_22C36C640(v53, v89, 1, *(v0 + 384));
        sub_22C36BA00();
        sub_22C3D3310();
        sub_22C376738(v90);
        if (!v105)
        {
          v91 = *(v0 + 1008);
          v92 = *(v0 + 1000);
          (*v568)(*(v0 + 1128), *(v0 + 1168), *(v0 + 1104));
          v93 = sub_22C634304();
          v94(v93);
          sub_22C908B8C();
          sub_22C36D0A8(v92, 1, v91);
          if (v105)
          {
            v95 = *(v0 + 1000);
            sub_22C38A894();
            v96();
            v97 = sub_22C37453C();
            v98(v97);
            sub_22C3AC228(v95, &qword_27D9BF318, &qword_22C9225A0);
            goto LABEL_21;
          }

          v99 = *(v0 + 944);
          v100 = sub_22C6341CC();
          v101(v100);
          *(v0 + 96) = v537;
          *(v0 + 104) = v536;
          *(v0 + 112) = v535;
          *(v0 + 120) = v534;
          sub_22C3A5908(&qword_27D9BEED8, &unk_22C921500);
          sub_22C44178C();
          sub_22C50B118(v102, v103, v104);
          sub_22C907F8C();
          sub_22C376738(v99);
          if (v105)
          {
            v106 = *(v0 + 944);
            sub_22C63451C();
            v107();
            sub_22C38A894();
            v108 = sub_22C36D29C();
            v109(v108);
            v110 = sub_22C37453C();
            v111(v110);
            sub_22C3AC228(v106, &qword_27D9BB908, &qword_22C910960);
            goto LABEL_21;
          }

          v112 = sub_22C38C41C();
          v113(v112);
          sub_22C90935C();
          if (qword_27D9BA660 != -1)
          {
            swift_once();
          }

          sub_22C37AA60(*(v0 + 912), qword_27D9E3EC8);
          sub_22C37FDE8();
          v114 = sub_22C90950C();
          v115 = sub_22C37453C();
          v116(v115);
          if ((v114 & 1) == 0)
          {
            v136 = *(v0 + 1024);
            v137 = *(v0 + 1008);
            sub_22C6348DC();
            v138();
            sub_22C63451C();
            v139(v136, v137);
            sub_22C38A894();
            v140 = sub_22C36D29C();
            v141(v140);
            sub_22C634398();
            v142 = sub_22C377B94();
            v143(v142);
            goto LABEL_21;
          }

          v117 = *(v0 + 1960);
          v531 = *(v0 + 1928);
          v118 = *(v0 + 1832);
          v523 = *(v0 + 1800);
          v119 = *(v0 + 1448);
          v526 = *(v0 + 1408);
          v529 = *(v0 + 888);
          sub_22C90878C();
          sub_22C6341E4();
          MEMORY[0x2318AF390]();
          sub_22C6348E8();
          Session.Transcript.searchExpression(returning:)();
          v117(v118, v523);
          v531(v119, v526);
          v120 = sub_22C383C3C();
          v122 = sub_22C370B74(v120, v121, v529);
          v123 = *(v0 + 880);
          if (v122 == 1)
          {

            sub_22C3AC228(v123, &qword_27D9BC038, &unk_22C922590);
          }

          else
          {
            v124 = sub_22C36BA00();
            v126 = v125(v124);
            v127 = MEMORY[0x2318B57A0](v126);
            if (*(v127 + 16))
            {
              sub_22C3736B4();
              v129 = sub_22C36E5AC(0xD000000000000016, 0x800000022C933300, v128, sub_22C36EF04);
              if (v130)
              {
                v131 = *(v0 + 1800);
                (*(v518 + 16))(*(v0 + 872), *(v127 + 56) + *(v518 + 72) * v129, v131);

                sub_22C36BECC();
                sub_22C36C640(v132, v133, v134, v131);
                v135 = v512;
                goto LABEL_50;
              }
            }

            v144 = *(v0 + 1800);
            v145 = *(v0 + 872);

            sub_22C36A748();
            sub_22C36C640(v146, v147, v148, v144);
            sub_22C3AC228(v145, &qword_27D9BC030, &unk_22C911CC0);
            v131 = sub_22C9082EC();
            v149 = 0;
            v150 = *(v131 + 16);
            while (v150 != v149)
            {
              if (v149 >= *(v131 + 16))
              {
                __break(1u);
LABEL_144:
                v400 = v578;
                v443 = *(v578 + 592);
                v444 = *(v578 + 536);
                v445 = sub_22C634418();
                (v145)(v445);
                v446 = sub_22C3726A4();
                sub_22C36C640(v446, v447, v448, v444);
                sub_22C3AC228(v443, &qword_27D9BDC50, &unk_22C91B470);
                result = v554;
                goto LABEL_121;
              }

              v145 = *(v0 + 1800);
              v151 = *(v0 + 864);
              v152 = *(v0 + 856);
              v153 = *(v0 + 840);
              sub_22C633E18();
              (*(v561 + 16))(v152, v154 + *(v561 + 72) * v149, v153);
              sub_22C90823C();
              v155 = sub_22C38644C();
              v156(v155);
              sub_22C376738(v151);
              if (!v105)
              {

                v135 = v551;
LABEL_50:
                sub_22C3AC228(*v135, &qword_27D9BC030, &unk_22C911CC0);
                sub_22C903F8C();
                v157 = sub_22C9063CC();
                sub_22C90AABC();
                sub_22C37E84C();
                v159 = os_log_type_enabled(v157, v158);
                v160 = *(v0 + 1128);
                v59 = *(v0 + 1104);
                v161 = *(v0 + 1088);
                v532 = *(v0 + 1032);
                v530 = *(v0 + 1024);
                v527 = *(v0 + 1008);
                v524 = *(v0 + 984);
                v517 = *(v0 + 952);
                v76 = v548;
                if (v159)
                {
                  v162 = sub_22C36D240();
                  *v162 = 0;
                  _os_log_impl(&dword_22C366000, v157, v131, "skipping confirmation for answer derived from an on-screen reference", v162, 2u);
                  sub_22C37E124();

                  v163 = sub_22C6347F0();
                  v164(v163);
                  v165 = sub_22C5CAA58();
                  v166(v165);
                  sub_22C6348DC();
                  v167(v524, v517);
                  sub_22C63451C();
                  v168(v530, v527);
                  sub_22C38A894();
                  v170 = v161;
                }

                else
                {

                  v171 = sub_22C6347F0();
                  v172(v171);
                  v173 = sub_22C5CAA58();
                  v174(v173);
                  sub_22C6348DC();
                  v175(v524, v517);
                  sub_22C63451C();
                  v176(v530, v527);
                  v170 = sub_22C38C41C();
                }

                v169(v170, v532);
                sub_22C634398();
                v177(v160, v59);
                goto LABEL_21;
              }

              ++v149;
              sub_22C3AC228(*v551, &qword_27D9BC030, &unk_22C911CC0);
            }

            (*v519)(*(v0 + 904), *(v0 + 888));
          }

          sub_22C634068();
          v555 = v178;
          v520 = *(v0 + 1584);
          v552 = *(v0 + 1576);
          v521 = *(v0 + 1328);
          v525 = *(v0 + 1304);
          v528 = *(v0 + 1296);
          v549 = *(v0 + 1104);
          v179 = *(v0 + 1088);
          v544 = *(v0 + 1024);
          v546 = *(v0 + 1032);
          v538 = *(v0 + 1128);
          v541 = *(v0 + 1008);
          v579 = *(v0 + 984);
          v180 = *(v0 + 960);
          v569 = *(v0 + 952);
          v181 = *(v0 + 936);
          v515 = *(v0 + 832);
          v574 = *(v0 + 824);
          v564 = *(v0 + 816);
          v516 = *(v0 + 440);
          sub_22C9069AC();
          sub_22C90697C();
          sub_22C90774C();
          sub_22C908B8C();
          sub_22C634750();
          sub_22C9025CC();
          (*(v180 + 16))(v181, v579, v569);
          sub_22C633C54();
          sub_22C36C640(v182, v183, v184, v185);
          sub_22C90293C();
          sub_22C36A748();
          sub_22C36C640(v186, v187, v188, v516);
          sub_22C9078EC();
          sub_22C36BECC();
          sub_22C36C640(v189, v190, v191, v520);
          v192 = sub_22C372FA4();
          v193(v192);
          (*(v525 + 104))(v521, *MEMORY[0x277D1CBD0], v528);
          sub_22C9026AC();
          v194 = sub_22C381B6C();
          sub_22C36C640(v194, v195, v196, v197);
          sub_22C36BBCC();
          sub_22C907DCC();
          sub_22C9087AC();
          sub_22C90882C();

          sub_22C9068FC();
          sub_22C37275C();
          v198();
          sub_22C906E6C();
          swift_unknownObjectRelease();

          (*(v574 + 8))(v515, v564);
          sub_22C6348DC();
          v199 = sub_22C634624();
          v200(v199);
          sub_22C63451C();
          v201(v544, v541);
          sub_22C38A894();
          v202(v179, v546);
          sub_22C634398();
          v203(v538, v549);
          sub_22C36A140();
          sub_22C62E9E0(v552, v204);
          v205 = sub_22C36BAFC();
          v555(v205);
LABEL_7:
          type metadata accessor for StepResolution(0);
          swift_storeEnumTagMultiPayload();
          sub_22C374E7C();
          sub_22C36ADD0();
          sub_22C371B00(v38, v39, v40, v41, v42, v43, v44, v45, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509);

          sub_22C369C50();
LABEL_83:
          sub_22C634924();

          __asm { BRAA            X1, X16 }
        }

        v68 = v513;
        v69 = v511;
        v73 = v510;
        v72 = v514;
        if (!v514)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_107:
    v369 = sub_22C37170C();
    v370(v369);
LABEL_108:
    v371 = sub_22C9078EC();
    MEMORY[0x2318B5FE0](v371);
    sub_22C5CAA58();
    sub_22C908AFC();
    v372 = *(v0 + 1896);
    v373 = *(v0 + 1624);
    v374 = *(v0 + 1584);
    v375 = *(v0 + 544);
    v376 = *(v0 + 512);
    (*(v0 + 1880))(*(v0 + 1544), *(v0 + 1512));
    v377 = v373;
    v378 = v376;
    v372(v377, v374);
    result = sub_22C908DEC();
    v60 = 0;
    v559 = *(result + 16);
    v550 = (v375 + 32);
    v548 = 0x800000022C932110;
    v554 = result;
    v379 = (v0 + 528);
    v131 = v0 + 536;
    while (v559 != v60)
    {
      v380 = *v379;
      v381 = *(v0 + 504);
      sub_22C36BA94();
      (*(v378 + 16))(v380, v382 + v383 + *(v378 + 72) * v60, v381);
      (*(v378 + 88))(v380, v381);
      sub_22C6347B4();
      if (v105)
      {
        v387 = *v379;
        sub_22C38A894();
        v388(v387);
        v145 = *v550;
        v389 = sub_22C372FA4();
        (v145)(v389);
        sub_22C9099DC();
        sub_22C37BE28();
        if (v105)
        {
          v393 = 0x800000022C932110 == v391;
        }

        else
        {
          v393 = 0;
        }

        if (v393)
        {

          sub_22C6340AC();
        }

        else
        {
          v394 = sub_22C382CE4(v390, v391, v392, 0x800000022C932110);

          sub_22C6340AC();
          if ((v394 & 1) == 0)
          {
            goto LABEL_144;
          }
        }
      }

      (*v386)(*v384, *v385);
      v395 = *(v578 + 592);
      v396 = sub_22C3702F4();
      sub_22C36C640(v396, v397, v398, v399);
      sub_22C3AC228(v395, &qword_27D9BDC50, &unk_22C91B470);
      ++v60;
      result = v554;
    }

    v60 = v559;
    v400 = v578;
LABEL_121:
    v401 = *(result + 16);
    v539 = v131;
    if (v60 == v401)
    {
      v402 = 1;
      goto LABEL_125;
    }

    if (v60 < v401)
    {
      v403 = *(v400 + 584);
      sub_22C36BA94();
      sub_22C5791C0();
      sub_22C6300B4();
      sub_22C3AC228(v403, &qword_27D9BDC50, &unk_22C91B470);
      v402 = 0;
LABEL_125:
      v404 = *(v578 + 1944);
      v405 = *(v578 + 600);
      v406 = *(v578 + 536);
      sub_22C36C640(v405, v402, 1, v406);

      v407 = sub_22C372FA4();
      v404(v407);
      if (sub_22C370B74(v405, 1, v406) == 1)
      {
        sub_22C3AC228(*(v578 + 600), &qword_27D9BDC50, &unk_22C91B470);
        v408 = 0;
      }

      else
      {
        sub_22C9099DC();
        v408 = v409;
        v410 = sub_22C37170C();
        v411(v410);
      }

      *(v578 + 2072) = v408;
      v412 = sub_22C9078EC();
      MEMORY[0x2318B5FE0](v412);
      sub_22C36D29C();
      sub_22C908AFC();
      v413 = *(v578 + 1896);
      (*(v578 + 1880))(*(v578 + 1536), *(v578 + 1512));
      v414 = sub_22C372FCC();
      v413(v414);
      result = sub_22C908DEC();
      v53 = result;
      v60 = 0;
      v415 = *(result + 16);
      v416 = v539;
      v560 = v415;
      while (v415 != v60)
      {
        sub_22C633E18();
        v417 = sub_22C634418();
        v418(v417);
        v419 = sub_22C372FA4();
        v420(v419);
        sub_22C6347B4();
        if (v105)
        {
          v424 = v53;
          v425 = *(v578 + 552);
          v426 = *v416;
          v427 = v416;
          v428 = *(v578 + 520);
          sub_22C38A894();
          v429(v428);
          v59 = *v550;
          (*v550)(v425, v428, v426);
          sub_22C9099DC();
          sub_22C37BE28();
          if (v105)
          {
            v433 = v548 == v431;
          }

          else
          {
            v433 = 0;
          }

          if (v433)
          {

            sub_22C6340AC();
            v416 = v427;
            v53 = v424;
            v415 = v560;
          }

          else
          {
            v434 = sub_22C382CE4(v430, v431, v432, v548);

            sub_22C6340AC();
            v416 = v427;
            v53 = v424;
            v415 = v560;
            if ((v434 & 1) == 0)
            {
              goto LABEL_152;
            }
          }
        }

        (*v423)(*v421, *v422);
        v435 = *(v578 + 568);
        v436 = sub_22C3702F4();
        sub_22C36C640(v436, v437, v438, v439);
        result = sub_22C3AC228(v435, &qword_27D9BDC50, &unk_22C91B470);
        ++v60;
      }

      v60 = v415;
      goto LABEL_141;
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

LABEL_14:
  while (1)
  {
    v74 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v74 >= v73)
    {
      swift_unknownObjectRelease();

      goto LABEL_59;
    }

    v72 = *(v69 + 8 * v74);
    ++v68;
    if (v72)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_152:
  v465 = *(v578 + 568);
  v466 = *(v578 + 536);
  v467 = sub_22C634418();
  (v59)(v467);
  v468 = sub_22C3726A4();
  sub_22C36C640(v468, v469, v470, v466);
  result = sub_22C3AC228(v465, &qword_27D9BDC50, &unk_22C91B470);
LABEL_141:
  v440 = *(v53 + 16);
  if (v60 != v440)
  {
    v442 = v578;
    if (v60 < v440)
    {
      v449 = *(v578 + 584);
      sub_22C633E18();
      sub_22C5791C0();
      sub_22C6300B4();
      sub_22C3AC228(v449, &qword_27D9BDC50, &unk_22C91B470);
      v441 = 0;
      goto LABEL_147;
    }

LABEL_162:
    __break(1u);
    return result;
  }

  v441 = 1;
  v442 = v578;
LABEL_147:
  v450 = v442[243];
  v451 = v442[72];
  v452 = v442[67];
  sub_22C36C640(v451, v441, 1, v452);

  v453 = sub_22C372FA4();
  v450(v453);
  if (sub_22C370B74(v451, 1, v452) == 1)
  {
    sub_22C3AC228(v442[72], &qword_27D9BDC50, &unk_22C91B470);
    v454 = 0;
  }

  else
  {
    sub_22C9099EC();
    v454 = v455;
    v456 = sub_22C37170C();
    v457(v456);
  }

  v442[260] = v454;
  v458 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v458);
  sub_22C36D29C();
  sub_22C908AFC();
  v459 = v442[243];
  v460 = *(v578 + 1896);
  v461 = *(v578 + 1480);
  v577 = *(v578 + 208);
  (*(v578 + 1880))(*(v578 + 1528), *(v578 + 1512));
  v462 = sub_22C37170C();
  v460(v462);
  v0 = v578;
  *(v578 + 2088) = sub_22C908DEC();
  v463 = sub_22C374C34();
  v459(v463);
  *(v578 + 80) = type metadata accessor for UTTypeValueConverter(0);
  *(v578 + 88) = &off_283FBEC70;
  sub_22C36D548((v578 + 56));
  sub_22C369A48();
  sub_22C908AEC();
  sub_22C369A9C();
  (*(v464 + 16))(v461, v577);
  type metadata accessor for ActionResolver();
  swift_allocObject();
  *(v578 + 2096) = sub_22C5FC124((v578 + 56));
  v471 = *(v578 + 1928);
  v472 = *(v578 + 464);
  sub_22C90878C();
  v473 = sub_22C9087DC();
  v474 = sub_22C36D29C();
  v471(v474);
  *(v578 + 152) = v473;
  sub_22C907EEC();

  v475 = sub_22C9079FC();
  if (sub_22C370B74(v472, 1, v475) == 1)
  {
    sub_22C3AC228(*(v578 + 464), &qword_27D9BD798, &unk_22C919070);
    v476 = MEMORY[0x277D84F90];
  }

  else
  {
LABEL_156:
    v476 = sub_22C9079EC();
    sub_22C36BBA8();
    v477 = sub_22C37170C();
    v478(v477);
  }

  *(v0 + 2104) = v476;
  v479 = *(v0 + 1928);
  v480 = *(v0 + 1424);
  v481 = *(v0 + 1408);
  v482 = *(v0 + 448);
  v483 = *(v0 + 456);
  v542 = *(v0 + 440);
  sub_22C90878C();
  *(v0 + 2112) = sub_22C9087DC();
  v484 = sub_22C634768();
  v479(v484);
  sub_22C90878C();
  sub_22C9087FC();
  (v479)(v480, v481);
  sub_22C90065C();
  *(v0 + 2120) = v485;
  (*(v482 + 8))(v483, v542);
  sub_22C9078EC();
  sub_22C90878C();
  sub_22C90290C();
  v486 = sub_22C634768();
  v479(v486);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 2128) = v487;
  *v487 = v488;
  v487[1] = sub_22C60C7C8;
  sub_22C372034();

  return sub_22C5FC5C4(v489, v490, v491, v492, v493, v494, v495, v496);
}

uint64_t sub_22C60C0F4()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2016) = v0;

  sub_22C6343B0();

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C60C210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C634068();
  v32 = v13;
  sub_22C36CD54();
  v14 = sub_22C633FCC();
  v15(v14);
  v16 = sub_22C36FC2C();
  v17(v16);
  v18 = sub_22C36ECB4();
  v19(v18);
  sub_22C36A140();
  sub_22C62E9E0(v12, v20);
  v21 = sub_22C36BBCC();
  v32(v21);
  sub_22C378064();
  sub_22C633A7C(v22);

  sub_22C369C50();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C60C6CC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 2064) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C60C7C8()
{
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *v3 = *v1;
  v2[267] = v0;

  v18 = v2[237];
  if (v0)
  {
    v16 = v2[198];
    v17 = v2[200];
    v4 = v2[53];
    v15 = v2[54];
    v5 = v2[52];

    (*(v4 + 8))(v15, v5);
    v18(v17, v16);
  }

  else
  {
    v6 = v2[200];
    v7 = v2[198];
    v8 = v2[53];
    v9 = v2[54];
    v10 = v2[52];

    (*(v8 + 8))(v9, v10);
    v18(v6, v7);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22C60CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12;
  sub_22C630194();
  sub_22C36BBCC();
  sub_22C62E98C();
  sub_22C36BAFC();
  v454 = v12;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = *(v12 + 2040);
      v100 = *(v12 + 1112);
      v101 = *(v12 + 1040);
      v102 = *(v12 + 656);
      v103 = *(v12 + 640);
      v438 = *(v12 + 384);
      v104 = sub_22C383C3C();
      sub_22C62AE4C(v104, v105, v99);
      sub_22C633F90();
      sub_22C62E98C();

      v106 = *(v102 + *(v103 + 24));

      sub_22C633F78();
      sub_22C62E9E0(v102, v107);
      v108 = 0;
      v109 = v106 + 64;
      v110 = -1;
      v399 = v106;
      v111 = -1 << *(v106 + 32);
      if (-v111 < 64)
      {
        v110 = ~(-1 << -v111);
      }

      v112 = v110 & *(v106 + 64);
      v113 = (63 - v111) >> 6;
      v443 = v101;
      v451 = (v101 + 32);
      v420 = v100;
      v114 = MEMORY[0x277D84F98];
      v403 = v113;
      v407 = v109;
      if (v112)
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_31:
        v115 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v115 >= v113)
        {
          break;
        }

        v112 = *(v109 + 8 * v115);
        ++v108;
        if (v112)
        {
          v430 = v114;
          v108 = v115;
          goto LABEL_35;
        }
      }

      v112 = 0;
      for (i = 1; ; i = 0)
      {
        v124 = v13[144];
        v125 = v13[48];
        sub_22C36C640(v13[143], i, 1, v125);
        sub_22C3D3310();
        sub_22C36D0A8(v124, 1, v125);
        if (v51)
        {
          break;
        }

        v126 = v13[144];
        v127 = v13[134];
        v128 = v13[129];
        v129 = *(v438 + 48);
        v130 = sub_22C50B578();
        v131(v130);
        v132 = *v451;
        (*v451)(v127, (v126 + v129), v128);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C628D18();
        sub_22C369DA4();
        if (__OFADD__(v135, v136))
        {
          goto LABEL_122;
        }

        v137 = v133;
        v138 = v134;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          if ((v138 & 1) != (v140 & 1))
          {
            goto LABEL_115;
          }

          v137 = v139;
        }

        v141 = v454[140];
        v142 = v454[138];
        v143 = v454[134];
        v144 = v454[129];
        if (v138)
        {
          (*(v443 + 40))(v114[7] + *(v443 + 72) * v137, v454[134], v454[129]);
          v145 = sub_22C6341CC();
          v146(v145, v142);
        }

        else
        {
          sub_22C36ED48(&v114[v137 >> 6]);
          (*(v420 + 16))(v114[6] + *(v420 + 72) * v137, v141, v142);
          v132(v114[7] + *(v443 + 72) * v137, v143, v144);
          (*(v420 + 8))(v141, v142);
          v147 = v114[2];
          v55 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v55)
          {
            goto LABEL_124;
          }

          v114[2] = v148;
        }

        v13 = v454;
        v113 = v403;
        v109 = v407;
        if (!v112)
        {
          goto LABEL_31;
        }

LABEL_30:
        v430 = v114;
        v115 = v108;
LABEL_35:
        v425 = v13[143];
        v116 = v13[137];
        v117 = v13[129];
        v118 = __clz(__rbit64(v112));
        v112 &= v112 - 1;
        v119 = v118 | (v115 << 6);
        (*(v420 + 16))(v13[142], *(v399 + 48) + *(v420 + 72) * v119, v13[138]);
        (*(v443 + 16))(v116, *(v399 + 56) + *(v443 + 72) * v119, v117);
        v120 = *(v438 + 48);
        v121 = sub_22C372164();
        v122(v121);
        (*(v443 + 32))(v425 + v120, v116, v117);
        v114 = v430;
      }

      v427 = v13[44];
      v387 = v13[43];
      v182 = v13[40];
      v183 = v13[36];

      ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)();
      v184 = 0;
      v389 = v185;
      sub_22C37454C();
      v188 = v187 & v186;
      sub_22C634720();
      v373 = v190 >> 6;
      v412 = *MEMORY[0x277D1E908];
      v384 = *MEMORY[0x277D1E900];
      v371 = *MEMORY[0x277D1E910];
      v404 = (v183 + 8);
      v369 = *MEMORY[0x277D1CB00];
      v379 = *MEMORY[0x277D1CAF0];
      v433 = MEMORY[0x277D84F98];
      v400 = v182;
      v391 = v189;
      if (!v188)
      {
        goto LABEL_66;
      }

LABEL_65:
      v191 = v184;
LABEL_70:
      v192 = v13[43];
      v193 = __clz(__rbit64(v188));
      v188 &= v188 - 1;
      v194 = v193 | (v191 << 6);
      v195 = (*(v389 + 48) + 16 * v194);
      v197 = *v195;
      v196 = v195[1];
      (*(v443 + 16))(v13[137], *(v389 + 56) + *(v443 + 72) * v194, v13[129]);
      v198 = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
      *v192 = v197;
      *(v387 + 8) = v196;
      sub_22C38399C();
      v199();
      sub_22C36BECC();
      sub_22C36C640(v200, v201, v202, v198);

      while (1)
      {
        sub_22C3D3310();
        v203 = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
        v204 = sub_22C383C3C();
        sub_22C36D0A8(v204, v205, v203);
        if (v51)
        {
          break;
        }

        v206 = v13[133];
        v207 = v13[44];
        v439 = *v207;
        v208 = *(v427 + 8);
        (*v451)(v206, v207 + *(v203 + 48), v13[129]);
        sub_22C90774C();
        sub_22C908BCC();
        sub_22C38A894();
        v209 = sub_22C370114();
        v210(v209);
        v211 = sub_22C3726C4();
        v213 = v212(v211);
        if (v213 == v412)
        {
          v214 = v13[37];
          v215 = v13[33];
          (*v404)(v13[38], v13[35]);
          v216 = sub_22C37170C();
          v217(v216);
          *v215 = *v214;
          v218 = sub_22C90260C();
          sub_22C36985C();
          (*(v219 + 104))(v215, v379, v218);
          sub_22C633C54();
        }

        else if (v213 == v384)
        {
          v224 = sub_22C6345B8();
          v225(v224);
          sub_22C90260C();
          v220 = sub_22C3702F4();
        }

        else
        {
          if (v213 != v371)
          {
            sub_22C372034();

            sub_22C90B4EC();
            return;
          }

          v226 = sub_22C6345B8();
          v227(v226);
          v228 = sub_22C90260C();
          sub_22C36985C();
          (*(v229 + 104))(v206, v369, v228);
          v220 = sub_22C3726A4();
          v223 = v228;
        }

        sub_22C36C640(v220, v221, v222, v223);
        sub_22C3D3310();
        sub_22C379FC8();
        sub_22C9021FC();
        v230 = sub_22C372FCC();
        v231(v230);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C3736B4();
        sub_22C36E5AC(v439, v208, v232, sub_22C36EF04);
        sub_22C369DA4();
        if (__OFADD__(v235, v236))
        {
          goto LABEL_123;
        }

        v237 = v233;
        v238 = v234;
        sub_22C3A5908(&qword_27D9BF340, &unk_22C922600);
        if (sub_22C90B15C())
        {
          sub_22C3736B4();
          sub_22C36E5AC(v439, v208, v239, sub_22C36EF04);
          sub_22C385F54();
          if (!v51)
          {
            goto LABEL_115;
          }

          v237 = v240;
        }

        v241 = v454[129];
        v242 = v454[41];
        v243 = v454[39];
        if (v238)
        {

          (*(v400 + 40))(v433[7] + *(v400 + 72) * v237, v242, v243);
          v244 = sub_22C634750();
          v245(v244);
          v246 = sub_22C38C41C();
          v247(v246, v241);
        }

        else
        {
          sub_22C36ED48(&v433[v237 >> 6]);
          v248 = (v433[6] + 16 * v237);
          *v248 = v439;
          v248[1] = v208;
          (*(v400 + 32))(v433[7] + *(v400 + 72) * v237, v242, v243);
          v249 = sub_22C634750();
          v250(v249);
          v251 = sub_22C38C41C();
          v252(v251, v241);
          sub_22C6341D8();
          if (v55)
          {
            goto LABEL_125;
          }

          v433[2] = v253;
        }

        v13 = v454;
        v189 = v391;
        if (v188)
        {
          goto LABEL_65;
        }

        while (1)
        {
LABEL_66:
          v191 = v184 + 1;
          if (__OFADD__(v184, 1))
          {
            goto LABEL_119;
          }

          if (v191 >= v373)
          {
            break;
          }

          v188 = *(v189 + 8 * v191);
          ++v184;
          if (v188)
          {
            v184 = v191;
            goto LABEL_70;
          }
        }

        sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
        v254 = sub_22C3702F4();
        sub_22C36C640(v254, v255, v256, v257);
        v188 = 0;
      }

      sub_22C9027CC();
      if ((sub_22C90776C() & 1) == 0)
      {
        v453 = v13[245];
        v380 = v13[198];
        v446 = v13[197];
        v306 = v13;
        v307 = v13[166];
        v308 = v306[163];
        v382 = v306[162];
        v309 = v306[85];
        v394 = v306[84];
        v397 = v306[86];
        v434 = v306[62];
        v310 = v306[55];

        sub_22C36A748();
        sub_22C36C640(v311, v312, v313, v310);
        sub_22C9078EC();
        sub_22C36BECC();
        sub_22C36C640(v314, v315, v316, v380);
        sub_22C63489C();
        sub_22C37275C();
        v317();
        (*(v308 + 104))(v307, *MEMORY[0x277D1CBA8], v382);
        sub_22C9026AC();
        v318 = sub_22C3702F4();
        sub_22C36C640(v318, v319, v320, v321);
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        sub_22C38399C();
        v322();
        sub_22C906E6C();

        (*(v309 + 8))(v397, v394);
        sub_22C38BC50();
        sub_22C62E9E0(v434, v323);
        sub_22C36A140();
        sub_22C62E9E0(v446, v324);
        v325 = sub_22C37170C();
        v453(v325);
        type metadata accessor for StepResolution(0);
        goto LABEL_105;
      }

      sub_22C903F8C();
      v293 = sub_22C9063CC();
      v294 = sub_22C90AADC();
      if (os_log_type_enabled(v293, v294))
      {
        v295 = sub_22C36D240();
        *v295 = 0;
        _os_log_impl(&dword_22C366000, v293, v294, "Skipping requested confirmation since this action has been previously confirmed", v295, 2u);
        sub_22C3699EC();
      }

      v296 = v13[247];
      v297 = v13[234];
      v298 = v13[86];
      v299 = v13[23];

      v300 = sub_22C36CA88();
      v301 = v297(v300);
      MEMORY[0x2318AFCB0](v301);
      v302 = sub_22C4E78D0();
      *(v302 + 16) = v296;
      *(v302 + 24) = v299;
      sub_22C604EA0(MEMORY[0x277D84F98], sub_22C633A34, v302, v298, &qword_27D9BF480, &qword_22C922740, MEMORY[0x277D1C8D0], v303, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364);
      v13[271] = v304;

      v305 = swift_task_alloc();
      v13[272] = v305;
      *v305 = v13;
      v305[1] = sub_22C60F9E4;
      goto LABEL_61;
    case 2u:
      v61 = *(v12 + 1032);
      sub_22C36BA94();

      sub_22C3A5908(&qword_27D9BF2E8, &unk_22C9225E0);
      sub_22C380710();
      sub_22C630194();
      sub_22C381514();
      sub_22C62AE4C(v62, v63, v64);

      v65 = sub_22C36CA88();
      sub_22C605CD4(v65, v66, v67);

      v68 = sub_22C383C3C();
      v70 = sub_22C370B74(v68, v69, v61);
      v437 = *(v12 + 1960);
      v432 = *(v12 + 1840);
      if (v70 == 1)
      {
        v71 = *(v12 + 1800);
        v72 = *(v12 + 1576);
        v73 = *(v12 + 496);
        v74 = *(v12 + 256);
        sub_22C3AC228(*(v12 + 240), &qword_27D9BB628, &unk_22C920580);
        type metadata accessor for InterpreterError(0);
        sub_22C372ACC();
        v77 = sub_22C6339B0(v75, v76);
        sub_22C36D148(v77);
        v79 = v78;
        v455 = sub_22C9069AC();
        v456 = v80;
        MEMORY[0x2318B7850](14906, 0xE200000000000000);
        *(v12 + 128) = sub_22C90697C();
        *(v12 + 136) = v81 & 1;
        sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
        v82 = sub_22C90A1AC();
        MEMORY[0x2318B7850](v82);

        *v79 = v455;
        v79[1] = v456;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_22C382818();
        sub_22C62E9E0(v74, v83);
        sub_22C38BC50();
        sub_22C62E9E0(v73, v84);
        sub_22C36A140();
        sub_22C62E9E0(v72, v85);
        v437(v432, v71);
        goto LABEL_26;
      }

      v405 = *(v12 + 1808);
      v409 = *(v12 + 1816);
      v413 = *(v12 + 1800);
      v370 = *(v12 + 1584);
      v417 = *(v12 + 1576);
      v372 = *(v12 + 1328);
      v374 = *(v12 + 1304);
      v376 = *(v12 + 1296);
      v396 = *(v12 + 1032);
      v401 = *(v12 + 1040);
      v365 = *(v12 + 952);
      v422 = *(v12 + 832);
      v367 = *(v12 + 824);
      v368 = *(v12 + 816);
      v415 = *(v12 + 496);
      v366 = *(v12 + 440);
      v392 = *(v12 + 256);
      v385 = *(v12 + 1056);
      (*(v401 + 32))(v385, *(v12 + 240));
      sub_22C9069AC();
      sub_22C90697C();
      sub_22C6341E4();
      sub_22C90774C();
      sub_22C908B8C();
      sub_22C36BAFC();
      sub_22C9025CC();
      sub_22C36A748();
      sub_22C36C640(v258, v259, v260, v365);
      sub_22C634810();
      sub_22C90293C();
      sub_22C36A748();
      sub_22C36C640(v261, v262, v263, v366);
      sub_22C9078EC();
      sub_22C36BECC();
      sub_22C36C640(v264, v265, v266, v370);
      v267 = sub_22C36BBCC();
      v268(v267);
      (*(v374 + 104))(v372, *MEMORY[0x277D1CBD0], v376);
      sub_22C9026AC();
      v269 = sub_22C381B6C();
      sub_22C36C640(v269, v270, v271, v272);
      sub_22C36BBCC();
      sub_22C907DCC();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      (*(v405 + 16))(v409, v432, v413);
      sub_22C906E6C();

      (*(v367 + 8))(v422, v368);
      (*(v401 + 8))(v385, v396);
      sub_22C382818();
      sub_22C62E9E0(v392, v273);
      sub_22C38BC50();
      sub_22C62E9E0(v415, v274);
      sub_22C36A140();
      sub_22C62E9E0(v417, v275);
      v276 = sub_22C36BBCC();
      (v437)(v276);
      type metadata accessor for StepResolution(0);
      sub_22C633E0C();
LABEL_105:
      swift_storeEnumTagMultiPayload();
      goto LABEL_108;
    case 3u:
      v86 = *(v12 + 2136);
      v87 = *(v12 + 2024);
      v88 = v13[31];
      v450 = *(v13 + 127);

      sub_22C3A5908(&qword_27D9BF2E0, &qword_22C922530);
      sub_22C380710();
      sub_22C630194();
      v89 = swift_task_alloc();
      *(v89 + 18) = BYTE2(v87);
      *(v89 + 16) = v87;
      *(v89 + 21) = BYTE5(v87);
      *(v89 + 19) = v87 >> 24;
      *(v89 + 24) = v450;
      *(v89 + 40) = v88;
      sub_22C3B4604();
      if (v86)
      {
        v91 = v13[245];
        v92 = v13[197];
        v93 = v13[62];
        v94 = v454[31];

        sub_22C38BC50();
        sub_22C62E9E0(v93, v95);
        sub_22C36A140();
        sub_22C62E9E0(v92, v96);
        v97 = sub_22C36CA88();
        v91(v97);
        sub_22C382818();
        sub_22C62E9E0(v94, v98);
LABEL_26:
        sub_22C36ADD0();
        sub_22C6343C8();

        sub_22C369A24();
      }

      else
      {
        v277 = v90;

        v278 = *(v277 + 16);
        if (v278)
        {
          v279 = v13[99];
          sub_22C36BA94();
          v281 = v277 + v280;
          v440 = *(v282 + 56);
          v445 = v283;
          v284 = MEMORY[0x277D84F90];
          do
          {
            v285 = sub_22C37170C();
            v445(v285);
            sub_22C90774C();
            sub_22C908B8C();
            v286 = sub_22C372FA4();
            v287(v286);
            sub_22C370114();
            sub_22C9025CC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C36D270();
              sub_22C594FB4();
              v284 = v291;
            }

            v289 = *(v284 + 16);
            v288 = *(v284 + 24);
            if (v289 >= v288 >> 1)
            {
              sub_22C36A958(v288);
              sub_22C594FB4();
              v284 = v292;
            }

            *(v284 + 16) = v289 + 1;
            sub_22C633E18();
            (*(v279 + 32))(v290 + *(v279 + 72) * v289);
            v281 += v440;
            --v278;
          }

          while (v278);

          v13 = v454;
        }

        else
        {
        }

        v447 = v13[245];
        v428 = v13[230];
        v414 = v13[226];
        v416 = v13[227];
        v418 = v13[225];
        v381 = v13[198];
        v441 = v13[197];
        v383 = v13[166];
        v326 = v13[163];
        v386 = v13[162];
        v431 = v13[62];
        v375 = v13[55];
        v327 = v13[29];
        v377 = v13[28];
        v378 = v13[27];
        v423 = v13[31];
        sub_22C9069AC();
        sub_22C90697C();
        sub_22C5CAA58();
        sub_22C9029EC();
        sub_22C36A748();
        sub_22C36C640(v328, v329, v330, v375);
        sub_22C9078EC();
        v331 = sub_22C37049C();
        sub_22C36C640(v331, v332, v333, v381);
        sub_22C63489C();
        v334(v383, v327, v378);
        (*(v326 + 104))(v383, *MEMORY[0x277D1CBD8], v386);
        sub_22C9026AC();
        v335 = sub_22C381B6C();
        sub_22C36C640(v335, v336, v337, v338);
        sub_22C36BBCC();
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        (*(v414 + 16))(v416, v428, v418);
        sub_22C906E6C();

        (*(v377 + 8))(v327, v378);
        sub_22C38BC50();
        sub_22C62E9E0(v431, v339);
        sub_22C36A140();
        sub_22C62E9E0(v441, v340);
        v341 = sub_22C36BBCC();
        v447(v341);
        type metadata accessor for StepResolution(0);
        sub_22C633E0C();
        swift_storeEnumTagMultiPayload();
        sub_22C382818();
        sub_22C62E9E0(v423, v342);
LABEL_108:
        sub_22C378064();

        sub_22C369C50();
      }

      sub_22C372034();

      v344(v343, v344, v345, v346, v347, v348, v349, v350, a9, a10, a11, a12);
      return;
    default:
      v14 = *(v12 + 480);

      v15 = *v14;
      sub_22C903F8C();
      v16 = sub_22C9063CC();
      v17 = sub_22C90AACC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = sub_22C36FB44();
        *v18 = 134217984;
        *(v18 + 4) = v15;
        _os_log_impl(&dword_22C366000, v16, v17, "Found a confident output of JointResolver (tuples[%ld])", v18, 0xCu);
        sub_22C3699EC();
      }

      v19 = v13[256];
      v20 = *(v13 + 2224);
      v21 = v13[255];
      v435 = v13[234];
      v22 = v13[139];
      v23 = v13[130];
      v24 = v454[80];
      v442 = v454[48];
      v448 = v19;

      v25 = sub_22C36ECB4();
      v435(v25);
      sub_22C62AE4C(v15, 1, v21);
      v26 = *(v24 + 24);
      v27 = v454;
      v28 = *(v21 + ((v20 + 32) & ~v20) + v448 * v15 + v26) + 64;
      sub_22C37454C();
      v31 = v30 & v29;
      sub_22C634720();
      v33 = v32 >> 6;
      v436 = v23;
      v398 = v22;
      v402 = v34;
      v388 = (v23 + 40);
      v390 = (v22 + 8);
      v429 = (v23 + 8);
      swift_bridgeObjectRetain_n();
      v35 = 0;
      v36 = MEMORY[0x277D84F98];
      v393 = v33;
      v395 = v28;
      if (v31)
      {
        goto LABEL_5;
      }

      break;
  }

  while (1)
  {
LABEL_6:
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v37 >= v33)
    {
      break;
    }

    v31 = *(v28 + 8 * v37);
    ++v35;
    if (v31)
    {
      v449 = v36;
      v35 = v37;
      while (1)
      {
        v38 = v27[138];
        v424 = v27[135];
        v39 = v27[129];
        v40 = v27[51];
        v41 = v27[49];
        v42 = __clz(__rbit64(v31)) | (v35 << 6);
        v406 = *(v398 + 72);
        v410 = *(v398 + 16);
        v410(v40, *(v402 + 48) + v406 * v42, v38);
        v419 = *(v436 + 72);
        (*(v436 + 16))(v40 + *(v442 + 48), *(v402 + 56) + v419 * v42, v39);
        sub_22C3D3364();
        sub_22C36CC9C();
        sub_22C3D3364();
        v43 = *(v436 + 32);
        (v43)(v424, v41 + *(v442 + 48), v39);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C628D18();
        sub_22C369DA4();
        if (__OFADD__(v46, v47))
        {
          goto LABEL_126;
        }

        v48 = v44;
        v49 = v45;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          v27 = v454;
          sub_22C628D18();
          sub_22C633C04();
          if (!v51)
          {
LABEL_115:
            sub_22C372034();

            sub_22C90B54C();
            return;
          }

          v48 = v50;
        }

        else
        {
          v27 = v454;
        }

        if (v49)
        {
          v52 = v27[51];
          (*v388)(v449[7] + v48 * v419, v27[135], v27[129]);
          sub_22C3AC228(v52, &qword_27D9BF110, &unk_22C922580);
        }

        else
        {
          v53 = v27[51];
          sub_22C36ED48(&v449[v48 >> 6]);
          (v410)(v449[6] + v48 * v406);
          sub_22C3839D8();
          v43();
          sub_22C3AC228(v53, &qword_27D9BF110, &unk_22C922580);
          sub_22C634804();
          if (v55)
          {
            goto LABEL_128;
          }

          v449[2] = v54;
        }

        v31 &= v31 - 1;
        v56 = v27[129];
        v57 = v27[50];
        v58 = *(v442 + 48);
        v59 = *v390;
        (*v390)(v57, v27[138]);
        v60 = sub_22C36FC74();
        v59(v60);
        (*v429)(v57 + v58, v56);
        v33 = v393;
        v28 = v395;
        v36 = v449;
        if (!v31)
        {
          goto LABEL_6;
        }

LABEL_5:
        v449 = v36;
      }
    }
  }

  ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)();
  v150 = v149;

  sub_22C3A5908(&qword_27D9BF350, &qword_22C922610);
  v151 = sub_22C90B1CC();
  v152 = v27;
  v153 = 0;
  v152[268] = v151;
  v421 = v150;
  sub_22C38A0A8();
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v157 = v150 + 64;
  v158 = v156 & *(v150 + 64);
  v159 = (v155 + 63) >> 6;
  v408 = v154 + 64;
  v411 = v154;
  if (!v158)
  {
LABEL_52:
    v162 = v153;
    while (1)
    {
      v153 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        goto LABEL_121;
      }

      if (v153 >= v159)
      {

        v176 = swift_task_alloc();
        v454[269] = v176;
        *v176 = v454;
        v176[1] = sub_22C60F438;
LABEL_61:
        sub_22C372034();

        sub_22C6157D4(v177, v178, v179, v180);
        return;
      }

      ++v162;
      if (*(v157 + 8 * v153))
      {
        sub_22C37FCE8();
        v426 = v163;
        goto LABEL_57;
      }
    }
  }

  while (1)
  {
    sub_22C36C050();
    v426 = v161;
LABEL_57:
    v164 = v160 | (v153 << 6);
    v165 = (*(v421 + 48) + 16 * v164);
    v444 = v165[1];
    v452 = *v165;
    v166 = sub_22C634418();
    v167(v166);

    sub_22C90774C();
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v168, v169, v170, v171);
    sub_22C908BAC();
    v172 = sub_22C372FA4();
    v173(v172);
    *(v408 + ((v164 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v164;
    v174 = (*(v411 + 48) + 16 * v164);
    *v174 = v452;
    v174[1] = v444;
    sub_22C633AE8();
    sub_22C630194();
    sub_22C633FF8();
    if (v55)
    {
      break;
    }

    *(v411 + 16) = v175;
    if (!v426)
    {
      goto LABEL_52;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_22C60F438()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2160) = v0;

  sub_22C6343B0();

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C60F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C6340C8();
  sub_22C36CD54();
  v15 = *(v13 + 496);

  sub_22C38BC50();
  sub_22C62E9E0(v15, v16);
  sub_22C36A140();
  sub_22C62E9E0(v12, v17);
  v18 = sub_22C36BBCC();
  v14(v18);
  sub_22C378064();
  sub_22C633A7C(v19);

  sub_22C369C50();
  sub_22C372034();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22C60F9E4()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2184) = v0;

  sub_22C6343B0();

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C60FB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = *(v13 + 1960);
  sub_22C36CD54();
  sub_22C634980();
  v16 = sub_22C36ECB4();
  v17(v16);
  sub_22C38BC50();
  sub_22C62E9E0(v14, v18);
  sub_22C36A140();
  sub_22C62E9E0(v12, v19);
  v20 = sub_22C36BBCC();
  v15(v20);
  sub_22C378064();
  sub_22C633A7C(v21);

  sub_22C369C50();
  sub_22C372034();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_22C60FFA8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 2200) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C6100A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 1960);
  sub_22C633FB4();
  sub_22C36A140();
  sub_22C62E9E0(v14, v15);
  v16 = sub_22C36BBCC();
  v13(v16);
  sub_22C378064();
  sub_22C633A7C(v17);

  sub_22C369C50();
  sub_22C372034();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

void sub_22C610524()
{
  sub_22C36BA18();
  sub_22C3749D8();
  (*(v0[226] + 8))(v0[230], v0[225]);
  sub_22C36FF94(v0 + 2);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6109C8()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = *(v0 + 1960);
  sub_22C633FB4();
  sub_22C36A140();
  sub_22C62E9E0(v2, v3);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C610E68()
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C634068();
  v32 = v1;
  sub_22C36CD54();
  v2 = sub_22C633FCC();
  v3(v2);
  v4 = sub_22C36FC2C();
  v5(v4);
  v6 = sub_22C36ECB4();
  v7(v6);
  sub_22C36A140();
  sub_22C62E9E0(v0, v8);
  v9 = sub_22C36BBCC();
  v32(v9);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C611344()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = *(v0 + 1960);
  sub_22C633FB4();
  sub_22C36A140();
  sub_22C62E9E0(v2, v3);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6117E4()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = *(v0 + 1960);
  sub_22C633FB4();
  sub_22C36A140();
  sub_22C62E9E0(v2, v3);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C611C84()
{
  sub_22C36D5EC();
  v1 = v0[267];
  sub_22C903F8C();
  v2 = v1;
  v3 = sub_22C9063CC();
  v4 = sub_22C90AADC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[267];
    v6 = sub_22C36FB44();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22C366000, v3, v4, "Error calling action resolver: %@", v6, 0xCu);
    sub_22C3AC228(v7, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v10 = v0[234];

  v11 = sub_22C36D39C();
  v10(v11);
  sub_22C903F8C();
  v12 = sub_22C9063CC();
  sub_22C90AADC();
  sub_22C37E84C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_22C36D240();
    sub_22C36C890(v14);
    sub_22C36BB14(&dword_22C366000, v15, v16, "Resolving without action resolver");
    sub_22C372FB0();
  }

  v17 = v0[234];

  v18 = sub_22C36BAFC();
  v17(v18);
  swift_task_alloc();
  sub_22C36CC90();
  v0[276] = v19;
  *v19 = v20;
  v19[1] = sub_22C611E80;
  v21 = sub_22C634074();

  return sub_22C616CD0(v21, v22, v23, v24);
}

uint64_t sub_22C611E80()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 2216) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C611F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = *(v12 + 2136);
  sub_22C6340C8();
  v15 = *(v12 + 1576);

  sub_22C36A140();
  sub_22C62E9E0(v15, v16);
  v17 = sub_22C36BAFC();
  v13(v17);
  sub_22C378064();
  sub_22C633A7C(v18);

  sub_22C369C50();
  sub_22C372034();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

void sub_22C612410()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = *(v0 + 2136);
  sub_22C6340C8();
  v3 = *(v0 + 1576);

  sub_22C36A140();
  sub_22C62E9E0(v3, v4);
  v5 = sub_22C36BAFC();
  v1(v5);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6128C4()
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C6340C8();
  sub_22C36CD54();
  v3 = *(v1 + 496);

  sub_22C38BC50();
  sub_22C62E9E0(v3, v4);
  sub_22C36A140();
  sub_22C62E9E0(v0, v5);
  v6 = sub_22C36BBCC();
  v2(v6);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C612D74()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v3 = *(v1 + 1960);
  sub_22C36CD54();
  sub_22C634980();
  v4 = sub_22C36ECB4();
  v5(v4);
  sub_22C38BC50();
  sub_22C62E9E0(v2, v6);
  sub_22C36A140();
  sub_22C62E9E0(v0, v7);
  v8 = sub_22C36BBCC();
  v3(v8);
  sub_22C633E00();
  sub_22C386D54();
  sub_22C36ADD0();
  sub_22C371B00(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C61323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50);
  v5[8] = swift_task_alloc();
  v6 = sub_22C9094EC();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v5[12] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = sub_22C9093BC();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = sub_22C9025EC();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for ExpressionEvaluator(0);
  v5[24] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BEC58, &qword_22C922F70);
  v5[25] = swift_task_alloc();
  v10 = sub_22C906F2C();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF468, &unk_22C923080);
  v5[29] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v5[30] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v11 = sub_22C9097AC();
  v5[33] = v11;
  v5[34] = *(v11 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
  v5[38] = swift_task_alloc();
  v12 = sub_22C908BBC();
  v5[39] = v12;
  v5[40] = *(v12 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = sub_22C3A5908(&qword_27D9BF4E0, &qword_22C9227F8);
  v5[43] = swift_task_alloc();
  v13 = sub_22C908C5C();
  v5[44] = v13;
  v5[45] = *(v13 - 8);
  v5[46] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF4E8, &unk_22C922800);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF320, &qword_22C9225B0);
  v5[50] = swift_task_alloc();
  v14 = sub_22C9026BC();
  v5[51] = v14;
  v5[52] = *(v14 - 8);
  v5[53] = swift_task_alloc();
  v15 = sub_22C901FAC();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v16 = sub_22C90941C();
  v5[60] = v16;
  v5[61] = *(v16 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v17 = sub_22C90981C();
  v5[65] = v17;
  v5[66] = *(v17 - 8);
  v5[67] = swift_task_alloc();
  v18 = sub_22C90769C();
  v5[68] = v18;
  v5[69] = *(v18 - 8);
  v5[70] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v5[71] = swift_task_alloc();
  v19 = sub_22C908EAC();
  v5[72] = v19;
  v5[73] = *(v19 - 8);
  v5[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C613AC8, 0, 0);
}

void sub_22C613AC8(uint64_t a1)
{
  v344 = v1;
  sub_22C9078EC();
  sub_22C63475C();
  sub_22C908ADC();
  v2 = sub_22C36D264();
  v3(v2);
  v4 = sub_22C908ABC();
  v5 = sub_22C36CCF8();
  if (sub_22C370B74(v5, v6, v4) == 1)
  {
    sub_22C3AC228(v1[71], &qword_27D9BC0B0, &unk_22C912AD0);
LABEL_56:
    sub_22C36A748();
    goto LABEL_57;
  }

  sub_22C36A948();
  v8 = v7;
  if ((*(v9 + 88))() != *MEMORY[0x277D1E8E0])
  {
    (*(v8 + 8))(v1[71], v4);
    goto LABEL_56;
  }

  v10 = v1[7];
  v11 = v1[5];
  v12 = sub_22C36ECB4();
  v13(v12);
  v14 = sub_22C36D39C();
  v16 = v15(v14);
  sub_22C625F7C(v16);
  v17 = sub_22C4E78D0();
  *(v17 + 16) = v10;
  sub_22C3B4388(sub_22C633960, v17, v11);
  v19 = v18;

  v20 = sub_22C908DCC();
  v305 = *(v20 + 16);
  if (!v305)
  {
LABEL_61:

    v167 = v1[51];
    (*(v1[73] + 8))(v1[74], v1[72]);
    v162 = sub_22C36CCF8();
    goto LABEL_62;
  }

  v21 = 0;
  sub_22C36BA94();
  v309 = v20 + v22;
  v295 = (v1[55] + 16);
  v299 = v1[45];
  v23 = v1[40];
  v325 = (v23 + 104);
  v302 = (v23 + 8);
  v293 = (v1[52] + 8);
  v294 = v1[55];
  v24 = v1[61];
  v304 = (v24 + 16);
  v25 = (v24 + 8);
  v298 = (v1[34] + 8);
  v311 = v26;
  v322 = v1[42];
  v297 = v1[37];
  v27 = v1[6];
  v319 = *MEMORY[0x277D1E910];
  v303 = *MEMORY[0x277D72AE8];
  v313 = v27;
  v315 = (v24 + 8);
  v335 = v19;
  v306 = v20;
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

    v28 = (*(v311 + 16))(v1[67], v309 + *(v311 + 72) * v21, v1[65]);
    MEMORY[0x2318B6CE0](v28);
    v29 = sub_22C9097DC();
    v31 = v30;
    v334 = v30;
    v341 = v29;
    v329 = v21;
    if (v27)
    {
      if (*(v27 + 16))
      {
        sub_22C3736B4();
        v34 = sub_22C36E5AC(v32, v31, v33, sub_22C36EF04);
        if (v35)
        {
          v36 = v1[64];
          v37 = v1[59];
          v38 = v1[50];
          v39 = v1[4];
          (*(v294 + 16))(v1[58], *(v27 + 56) + *(v294 + 72) * v34, v1[54]);
          v40 = sub_22C36CA88();
          v41(v40);
          sub_22C626088(v341, v31, v37, v36, v39, v38);
          v42 = v1[50];
          sub_22C376738(v42);
          v43 = v335;
          if (!v44)
          {
            sub_22C38399C();
            v296 = v46;
            v46();
            v47 = 0;
            v316 = *(v335 + 16);
            while (1)
            {
              if (v316 == v47)
              {
                v178 = v1[73];
                v336 = v1[72];
                v342 = v1[74];
                v330 = v1[53];
                v179 = v1[51];
                v180 = v1[3];

                sub_22C634258();
                v181 = sub_22C36CC9C();
                v182(v181);
                sub_22C634398();
                v183 = sub_22C36CA88();
                v184(v183);
                sub_22C6341C0();
                v185 = sub_22C36D264();
                v186(v185);
                (*(v178 + 8))(v342, v336);
                (v296)(v180, v330, v179);
                v162 = sub_22C3726A4();
                v165 = v179;
                goto LABEL_57;
              }

              if (v47 >= *(v43 + 16))
              {
                __break(1u);
LABEL_93:
                v283 = v1[73];
                v328 = v1[72];
                v333 = v1[74];
                v321 = v1[65];
                v324 = v1[67];
                v318 = v1[64];
                v312 = v1[56];
                v314 = v1[60];
                v284 = v1[52];
                v340 = v1[51];
                v285 = v1[27];
                v308 = v1[28];
                v310 = v1[54];
                v307 = v1[26];
                v286 = v1[24];
                v287 = v1[3];
                sub_22C90207C();
                sub_22C634624();
                sub_22C902B8C();
                v288 = sub_22C372164();
                v289(v288);
                sub_22C37EF48();
                sub_22C62E9E0(v286, v290);
                (*(v285 + 8))(v308, v307);
                sub_22C634258();
                v291(v312, v310);
                (v296)(v318, v314);
                sub_22C6341C0();
                v292(v324, v321);
                (*(v283 + 8))(v333, v328);
                v167 = v340;
                (*(v284 + 104))(v287, *MEMORY[0x277D1CBE0], v340);
                v162 = v287;
                goto LABEL_89;
              }

              v48 = *(*(v43 + 8 * v47 + 32) + 16);

              if (v48 && (sub_22C3736B4(), v49 = sub_22C634624(), sub_22C36E5AC(v49, v50, v51, v52), (v53 & 1) != 0))
              {
                v54 = sub_22C634600();
                v55(v54);
                sub_22C908BCC();
                v56 = sub_22C36D39C();
                v57(v56);
                v58 = 0;
              }

              else
              {
                v58 = 1;
              }

              v59 = v1[48];
              v60 = v1[43];
              v61 = v1[39];
              sub_22C36C640(v1[49], v58, 1, v61);
              (*v325)(v59, v319, v61);
              sub_22C36BECC();
              sub_22C36C640(v62, v63, v64, v61);
              v65 = *(v322 + 48);
              sub_22C36BA00();
              sub_22C3D3364();
              sub_22C3D3364();
              v66 = sub_22C3707B4();
              v68 = sub_22C370B74(v66, v67, v61);
              v69 = v1[39];
              if (v68 == 1)
              {
                break;
              }

              sub_22C3D3364();
              v75 = sub_22C370B74(v60 + v65, 1, v69);
              v77 = v1[48];
              v76 = v1[49];
              if (v75 == 1)
              {

                sub_22C63413C();
                sub_22C3AC228(v78, v79, v80);
                sub_22C63413C();
                sub_22C3AC228(v81, v82, v83);
                v84 = sub_22C37A004();
                v85(v84);
                v43 = v335;
LABEL_25:
                sub_22C3AC228(v1[43], &qword_27D9BF4E0, &qword_22C9227F8);
                goto LABEL_27;
              }

              v300 = v1[43];
              v86 = sub_22C634600();
              v87(v86);
              sub_22C6339B0(&qword_27D9BF4F0, MEMORY[0x277D1E918]);
              sub_22C372280();
              v88 = sub_22C90A0BC();

              v89 = *v302;
              v90 = sub_22C36D39C();
              v89(v90);
              sub_22C3AC228(v77, &qword_27D9BF4E8, &unk_22C922800);
              sub_22C3AC228(v76, &qword_27D9BF4E8, &unk_22C922800);
              v91 = sub_22C3806B8();
              v89(v91);
              sub_22C3AC228(v300, &qword_27D9BF4E8, &unk_22C922800);
              v31 = v334;
              v43 = v335;
              if (v88)
              {
                goto LABEL_28;
              }

LABEL_27:
              ++v47;
            }

            sub_22C38AA18();
            sub_22C3AC228(v70, v71, v72);
            v73 = sub_22C36BAFC();
            sub_22C3AC228(v73, v74, &unk_22C922800);
            sub_22C36D0A8(v60 + v65, 1, v69);
            if (v44)
            {
              sub_22C38AA18();
              sub_22C3AC228(v92, v93, v94);
              v31 = v334;
LABEL_28:
              (*v293)(v1[53], v1[51]);
              v95 = sub_22C37453C();
              v96(v95);
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          sub_22C634258();
          v45();
          sub_22C3AC228(v42, &qword_27D9BF320, &qword_22C9225B0);
LABEL_29:
          v25 = v315;
        }
      }
    }

    v97 = *v304;
    (*v304)(v1[63], v1[64], v1[60]);
    v98 = sub_22C37453C();
    if (v99(v98) != v303)
    {
      break;
    }

    v100 = v1[60];
    v101 = v1[38];

    v102 = *v315;
    v103 = sub_22C50B478();
    (v102)(v103);
    v104 = sub_22C37453C();
    v105(v104);
    v106 = sub_22C36CA88();
    v107(v106);
    swift_projectBox();
    sub_22C3D3364();
    sub_22C3AC228(v101 + *(v297 + 48), &qword_27D9BB908, &qword_22C910960);
    v108 = v101;
    v25 = v315;
    (v102)(v108, v100);

LABEL_46:
    v27 = v313;
    v21 = v329 + 1;
    v20 = v306;
    if (v329 + 1 == v305)
    {
      goto LABEL_61;
    }
  }

  v301 = v97;
  v109 = v1[36];
  v110 = v1[33];
  v111 = *v25;
  (*v25)(v1[63], v1[60]);
  sub_22C9097FC();
  sub_22C908EDC();
  sub_22C6339B0(&qword_27D9BD8C8, MEMORY[0x277D73128]);
  v112 = sub_22C90AE0C();
  v113 = *v298;
  v114 = sub_22C36ECB4();
  v113(v114);
  (v113)(v109, v110);
  if (v112)
  {
    sub_22C634088();
    v115 = sub_22C36ECB4();
    (v111)(v115);
LABEL_34:
    v116 = sub_22C37453C();
    v117(v116);
    goto LABEL_46;
  }

  v296 = v111;
  v118 = 0;
  v119 = *(v335 + 16);
  while (v119 != v118)
  {
    if (v118 >= *(v335 + 16))
    {
      __break(1u);
LABEL_91:
      v339 = v1[64];
      v264 = v1[60];
      v265 = v1[23];
      v266 = v1[24];
      v267 = v1[7];
      (*(v1[27] + 32))(v1[28], v1[25], v1[26]);
      sub_22C90880C();
      sub_22C369A9C();
      v268 = sub_22C374C34();
      v269(v268);
      sub_22C37ACB8();
      sub_22C6339B0(v270, v271);
      sub_22C63413C();
      v272 = sub_22C909F0C();
      v273 = v265[6];
      sub_22C908AEC();
      sub_22C369A9C();
      (*(v274 + 16))(v266 + v273, v267);
      v275 = type metadata accessor for ActionResolverRequestEvaluator(0);
      sub_22C378AB0(v267 + *(v275 + 24), v266 + v265[7]);
      (v97)(v266 + v265[8], v339, v264);
      sub_22C36BECC();
      sub_22C36C640(v276, v277, v278, v264);
      *(v266 + v265[5]) = v272;
      v279 = sub_22C63475C();
      sub_22C63A848(v279, v280);
      goto LABEL_93;
    }

    v120 = *(v335 + 8 * v118 + 32);
    if (*(v120 + 16))
    {

      sub_22C3736B4();
      v121 = sub_22C3863FC();
      v125 = sub_22C36E5AC(v121, v122, v123, v124);
      if (v126)
      {
        v148 = *(v299 + 72);
        v149 = *(v299 + 16);
        v149(v1[32], *(v120 + 56) + v148 * v125, v1[44]);
        v150 = 0;
        for (i = v1 + 32; ; i = v1 + 31)
        {
          v152 = *i;
          v153 = v1[44];

          v154 = sub_22C37049C();
          sub_22C36C640(v154, v155, v156, v153);
          sub_22C3AC228(v152, &qword_27D9BB628, &unk_22C920580);
          if (v119 == v150)
          {
            sub_22C634088();
            v161 = sub_22C36ECB4();
            v25 = v315;
            (v296)(v161);
            goto LABEL_34;
          }

          if (v150 >= *(v335 + 16))
          {
            goto LABEL_95;
          }

          v157 = *(v335 + 8 * v150 + 32);
          sub_22C634714();

          if (!v152)
          {
            break;
          }

          sub_22C3736B4();
          v159 = sub_22C36E5AC(v341, v31, v158, sub_22C36EF04);
          if ((v160 & 1) == 0)
          {
            break;
          }

          v149(v1[31], *(v157 + 56) + v159 * v148, v1[44]);
          ++v150;
        }

        v168 = v1[44];
        v169 = v1[31];

        sub_22C36A748();
        sub_22C36C640(v170, v171, v172, v168);
        sub_22C3AC228(v169, &qword_27D9BB628, &unk_22C920580);
        sub_22C903F8C();

        v173 = sub_22C9063CC();
        v174 = sub_22C90AADC();

        if (os_log_type_enabled(v173, v174))
        {
          v175 = sub_22C36FB44();
          v176 = swift_slowAlloc();
          v343[0] = v176;
          *v175 = 136315138;
          v177 = sub_22C36F9F4(v341, v31, v343);

          *(v175 + 4) = v177;
          _os_log_impl(&dword_22C366000, v173, v174, "invalid parameter set found for key '%s'. Execution cannot proceed.", v175, 0xCu);
          sub_22C36FF94(v176);
          sub_22C3699EC();
          sub_22C3699EC();
        }

        else
        {
        }

        v187 = sub_22C36D29C();
        v188(v187);
        type metadata accessor for InterpreterError(0);
        sub_22C372ACC();
        sub_22C6339B0(v189, v190);
        v191 = sub_22C37FDE8();
        sub_22C36FBE4(v191, v192);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_68;
      }
    }

    v127 = sub_22C3702F4();
    sub_22C36C640(v127, v128, v129, v130);
    v131 = sub_22C38644C();
    sub_22C3AC228(v131, v132, &unk_22C920580);
    ++v118;
  }

  v133 = v1[54];
  v134 = v1[30];
  if (v313)
  {
    sub_22C633F60();
    sub_22C3863FC();
    sub_22C38B324(v313, v135, v136);
    sub_22C36D0A8(v134, 1, v133);
    if (!v44)
    {
      v137 = sub_22C6341CC();
      v138(v137);
      v1[2] = sub_22C9087DC();
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C369E24();
      sub_22C38399C();
      sub_22C50B118(v139, v140, v141);
      v142 = sub_22C907E1C();

      sub_22C634258();
      v143 = sub_22C36D39C();
      v144(v143);
      if (v142)
      {
        sub_22C634088();
        v145 = sub_22C36ECB4();
        (v111)(v145);
        v146 = sub_22C37453C();
        v147(v146);
        goto LABEL_46;
      }

      goto LABEL_73;
    }
  }

  else
  {

    sub_22C36A748();
    sub_22C36C640(v199, v200, v201, v133);
  }

  sub_22C3AC228(v1[30], &qword_27D9BC030, &unk_22C911CC0);
LABEL_73:
  v202 = sub_22C9078CC();
  sub_22C3863FC();
  sub_22C38B324(v202, v203, v204);

  v205 = sub_22C902D4C();
  v206 = sub_22C36CCF8();
  if (sub_22C370B74(v206, v207, v205) == 1)
  {
    sub_22C3AC228(v1[29], &qword_27D9BF468, &unk_22C923080);
  }

  else
  {
    sub_22C36A948();
    v209 = v208;
    if ((*(v210 + 88))() == *MEMORY[0x277D1D830])
    {
      v211 = v1[25];
      (*(v209 + 96))(v1[29], v205);
      sub_22C6341CC();
      sub_22C634004();
      v212();
      sub_22C649070();
      sub_22C376738(v211);
      if (v44)
      {
        v213 = v1[25];

        sub_22C3AC228(v213, &qword_27D9BEC58, &qword_22C922F70);
        sub_22C903F8C();
        v214 = sub_22C9063CC();
        v215 = sub_22C90AADC();
        if (os_log_type_enabled(v214, v215))
        {
          *sub_22C36D240() = 0;
          sub_22C6349C0(&dword_22C366000, v216, v217, "Unable to resolve variable name to expression in plan.");
          sub_22C3699EC();
        }

        v218 = v1[56];
        v219 = v1[54];

        v220 = sub_22C36ECB4();
        v221(v220);
        type metadata accessor for InterpreterError(0);
        sub_22C372ACC();
        v224 = sub_22C6339B0(v222, v223);
        sub_22C36D148(v224);
        (*v295)(v225, v218, v219);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v281 = sub_22C37453C();
        v282(v281);
LABEL_68:
        v193 = v1[74];
        v194 = v1[73];
        v195 = v1[72];
        v196 = v1[67];
        v197 = v1[65];
        (v296)(v1[64], v1[60]);
        sub_22C6341C0();
        v198(v196, v197);
        (*(v194 + 8))(v193, v195);

        sub_22C369A24();
        goto LABEL_58;
      }

      goto LABEL_91;
    }

    (*(v209 + 8))(v1[29], v205);
  }

  v226 = sub_22C9093DC();
  sub_22C58B0F8(v226);

  v227 = sub_22C90952C();
  v228 = sub_22C36CCF8();
  if (sub_22C370B74(v228, v229, v227) == 1)
  {
    sub_22C3AC228(v1[12], &qword_27D9BB0C0, &qword_22C90D960);
  }

  else
  {
    sub_22C36A948();
    if ((*(v230 + 88))() == *MEMORY[0x277D72D50])
    {
      v231 = sub_22C36A10C();
      v232(v231);
      swift_projectBox();
      v233 = sub_22C634600();
      v234(v233);
      v235 = sub_22C36D39C();
      v237 = v236(v235);
      v238 = *MEMORY[0x277D72CB0];
      v239 = sub_22C36D39C();
      v240(v239);

      if (v237 == v238)
      {
        v337 = v1[74];
        v241 = v1[73];
        v326 = v1[67];
        v331 = v1[72];
        v320 = v1[64];
        v323 = v1[65];
        v317 = v1[60];
        v167 = v1[51];
        v242 = v1[52];
        v243 = v1[18];
        v244 = v1[19];
        v245 = v1[17];
        v246 = v1[3];
        sub_22C90931C();
        v247 = swift_allocBox();
        *v248 = 1;
        sub_22C36BBA8();
        (*(v249 + 104))();
        *v244 = v247;
        (*(v243 + 104))(v244, *MEMORY[0x277D72A58], v245);
        sub_22C634624();
        sub_22C90294C();
        (v296)(v320, v317);
        sub_22C6341C0();
        v250(v326, v323);
        (*(v241 + 8))(v337, v331);
        (*(v242 + 104))(v246, *MEMORY[0x277D1CBD0], v167);
        v162 = v246;
        goto LABEL_89;
      }
    }

    else
    {
      v251 = sub_22C36A10C();
      v252(v251);
    }
  }

  v253 = v1[74];
  v254 = v1[73];
  v338 = v1[72];
  v327 = v1[65];
  v332 = v1[67];
  v167 = v1[51];
  v255 = v1[52];
  v256 = v1[3];
  v257 = sub_22C370114();
  v301(v257);
  sub_22C90285C();
  sub_22C36A748();
  sub_22C36C640(v258, v259, v260, v261);
  sub_22C634624();
  sub_22C90282C();
  v262 = sub_22C50B578();
  (v111)(v262);
  sub_22C6341C0();
  v263(v332, v327);
  (*(v254 + 8))(v253, v338);
  (*(v255 + 104))(v256, *MEMORY[0x277D1CBB8], v167);
  v162 = v256;
LABEL_89:
  v163 = 0;
LABEL_62:
  v164 = 1;
  v165 = v167;
LABEL_57:
  sub_22C36C640(v162, v163, v164, v165);
  sub_22C6346F4();

  sub_22C369C50();
LABEL_58:

  v166();
}

uint64_t sub_22C6157D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  v5[12] = swift_task_alloc();
  v6 = sub_22C9074CC();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_22C9086BC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for ActionParameterValue(0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_22C90855C();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_22C90077C();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v11 = sub_22C90944C();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v12 = sub_22C901FAC();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v13 = sub_22C90880C();
  v5[38] = v13;
  v5[39] = *(v13 - 8);
  v5[40] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v5[41] = swift_task_alloc();
  v14 = sub_22C90654C();
  v5[42] = v14;
  v5[43] = *(v14 - 8);
  v5[44] = swift_task_alloc();
  v15 = sub_22C906ACC();
  v5[45] = v15;
  v5[46] = *(v15 - 8);
  v5[47] = swift_task_alloc();
  v16 = sub_22C90769C();
  v5[48] = v16;
  v5[49] = *(v16 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v5[53] = swift_task_alloc();
  v17 = sub_22C908EAC();
  v5[54] = v17;
  v5[55] = *(v17 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C615DB8, 0, 0);
}

void sub_22C615DB8(uint64_t a1)
{
  v2 = v1[49];
  sub_22C9078EC();
  sub_22C63475C();
  sub_22C908ADC();
  v3 = *(v2 + 8);
  v4 = sub_22C36D264();
  v3(v4);
  v5 = sub_22C908ABC();
  v6 = sub_22C36CCF8();
  if (sub_22C370B74(v6, v7, v5) == 1)
  {
    v106 = v3;
    sub_22C3AC228(v1[53], &qword_27D9BC0B0, &unk_22C912AD0);
  }

  else
  {
    sub_22C36A948();
    v9 = v8;
    if ((*(v10 + 88))() == *MEMORY[0x277D1E8C8])
    {
      v11 = v1[55];
      v98 = v1[54];
      v100 = v1[57];
      v12 = v1[53];
      v13 = v1[40];
      v14 = v1[39];
      v107 = v1[38];
      v15 = v1[37];
      v16 = v1[34];
      v102 = v1[41];
      v104 = v1[33];
      v17 = sub_22C37A004();
      v18(v17);
      (*(v11 + 32))(v100, v12, v98);
      sub_22C90878C();
      sub_22C9068FC();
      sub_22C646D68();
      v19 = *(v16 + 8);
      v1[58] = v19;
      v1[59] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v15, v104);
      (*(v14 + 8))(v13, v107);
      sub_22C9070DC();
      sub_22C376738(v102);
      if (v20)
      {
        sub_22C3AC228(v1[41], &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        sub_22C90702C();
        sub_22C36BBA8();
        v70 = sub_22C37170C();
        v71(v70);
        v72 = sub_22C36D39C();
        v74 = v73(v72);
        if (v74 == *MEMORY[0x277D1DA78])
        {
          (*(v1[43] + 96))(v1[44], v1[42]);
          v75 = sub_22C36BAFC();
          v76(v75);
          sub_22C9068FC();
          v1[60] = sub_22C906A8C();
          swift_task_alloc();
          sub_22C36CC90();
          v1[61] = v77;
          *v77 = v78;
          v77[1] = sub_22C616848;
          sub_22C5CAD40();

          sub_22C61DE68(v79, v80, v81, v82, v83, v84, v85);
          return;
        }

        (*(v1[43] + 8))(v1[44], v1[42]);
      }

      type metadata accessor for InterpreterError(0);
      sub_22C372ACC();
      v89 = sub_22C6339B0(v87, v88);
      sub_22C36D148(v89);
      sub_22C9068FC();
      sub_22C372FCC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v90 = sub_22C36D39C();
      v91(v90);
      goto LABEL_28;
    }

    v106 = v3;
    (*(v9 + 8))(v1[53], v5);
  }

  v21 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v21);
  sub_22C50B478();
  sub_22C908AFC();
  v22 = sub_22C36FC2C();
  v23(v22);
  v24 = sub_22C36ECB4();
  v106(v24);
  v25 = v1[25];
  sub_22C908E1C();
  v26 = sub_22C36BBCC();
  v27(v26);
  sub_22C36ECB4();
  sub_22C3D3364();
  sub_22C376738(v25);
  if (v20)
  {
    sub_22C63413C();
    sub_22C3AC228(v28, v29, v30);
    sub_22C90735C();
    v31 = sub_22C3A5F00();
    v32 = sub_22C36FBE4(MEMORY[0x277D1DFB0], v31);
    sub_22C6348A8(v32, v33);
    swift_willThrow();
    v34 = sub_22C36BBCC();
    sub_22C3AC228(v34, v35, &unk_22C922750);
LABEL_28:
    sub_22C6342C4();
    sub_22C634890();
    sub_22C634884();

    sub_22C369A24();
LABEL_29:
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v36 = v1[30];
  v37 = v1[25];
  v38 = v1[17];
  v39 = v1[10];
  sub_22C3AC228(v1[26], &qword_27D9BF498, &unk_22C922750);
  v40 = sub_22C36CB30();
  v41(v40, v37, v36);
  sub_22C90943C();
  v42 = sub_22C372164();
  v43(v42);
  sub_22C9068FC();
  sub_22C9078EC();
  sub_22C3A5908(&qword_27D9BF4A0, &qword_22C922760);
  sub_22C90B1CC();
  v44 = 0;
  sub_22C36D280();
  v49 = (v47 + 63) >> 6;
  v95 = *MEMORY[0x277D1E040];
  v94 = v45 + 8;
  v97 = v38;
  v96 = v45;
  if ((v48 & v46) != 0)
  {
    goto LABEL_12;
  }

  while (2)
  {
    v52 = v44;
    do
    {
      v44 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v44 >= v49)
      {
        v68 = v1[23];
        v67 = v1[24];
        v69 = v1[22];
        sub_22C90776C();
        sub_22C36A724();
        sub_22C90867C();
        (*(v68 + 104))(v67, *MEMORY[0x277D1E560], v69);
        sub_22C630248();
        sub_22C9085BC();
        type metadata accessor for StepResolution(0);
        swift_storeEnumTagMultiPayload();
        sub_22C6342E4();
        sub_22C634890();
        sub_22C634884();

        sub_22C369C50();
        goto LABEL_29;
      }

      ++v52;
    }

    while (!*(v39 + 64 + 8 * v44));
    sub_22C37FCE8();
    v99 = v53;
LABEL_18:
    v54 = v50 | (v44 << 6);
    v55 = v1[21];
    v101 = v1[18];
    v56 = v1[15];
    v105 = v1[16];
    v57 = v1[13];
    v58 = (*(v39 + 48) + 16 * v54);
    v59 = v58[1];
    v103 = *v58;
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C9093BC();
    sub_22C369A9C();
    (*(v60 + 16))(v56, v55);
    v61 = sub_22C6341CC();
    v62(v61, v95, v57);
    sub_22C3D3364();

    sub_22C90869C();
    sub_22C633A4C();
    sub_22C62E9E0(v55, v63);
    *(v94 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    v64 = (v96[6] + 16 * v54);
    *v64 = v103;
    v64[1] = v59;
    (*(v97 + 32))(v96[7] + *(v97 + 72) * v54, v101, v105);
    sub_22C634804();
    if (!v66)
    {
      v96[2] = v65;
      if (!v99)
      {
        continue;
      }

LABEL_12:
      sub_22C36C050();
      v99 = v51;
      goto LABEL_18;
    }

    break;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_22C616848()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 496) = v0;

  v9 = sub_22C36D264();
  v5(v9);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C6169C8()
{
  v0 = sub_22C6345A0();
  v1(v0);
  v2 = sub_22C36BBCC();
  v3(v2);
  sub_22C6342E4();
  sub_22C634890();
  sub_22C634884();

  sub_22C369C50();

  return v4();
}

uint64_t sub_22C616B48()
{
  v0 = sub_22C6345A0();
  v1(v0);
  v2 = sub_22C36BBCC();
  v3(v2);
  sub_22C6342C4();
  sub_22C634890();
  sub_22C634884();

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C616CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_22C9078FC();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_22C9074CC();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_22C9086BC();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = sub_22C90855C();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v11 = sub_22C90944C();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  v12 = sub_22C90880C();
  v5[34] = v12;
  v5[35] = *(v12 - 8);
  v5[36] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v5[37] = swift_task_alloc();
  v13 = sub_22C90654C();
  v5[38] = v13;
  v5[39] = *(v13 - 8);
  v5[40] = swift_task_alloc();
  v14 = sub_22C906ACC();
  v5[41] = v14;
  v5[42] = *(v14 - 8);
  v5[43] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v15 = sub_22C908BBC();
  v5[47] = v15;
  v5[48] = *(v15 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v16 = type metadata accessor for ActionParameterValue(0);
  v5[51] = v16;
  v5[52] = *(v16 - 8);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v5[56] = swift_task_alloc();
  v5[57] = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v17 = sub_22C90077C();
  v5[63] = v17;
  v5[64] = *(v17 - 8);
  v5[65] = swift_task_alloc();
  v18 = sub_22C90769C();
  v5[66] = v18;
  v5[67] = *(v18 - 8);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v5[71] = swift_task_alloc();
  v19 = sub_22C908EAC();
  v5[72] = v19;
  v5[73] = *(v19 - 8);
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v20 = sub_22C901FAC();
  v5[76] = v20;
  v5[77] = *(v20 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v5[83] = swift_task_alloc();
  v21 = sub_22C9026BC();
  v5[84] = v21;
  v5[85] = *(v21 - 8);
  v5[86] = swift_task_alloc();
  sub_22C907DEC();
  v5[87] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v5[88] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v5[89] = swift_task_alloc();
  v22 = sub_22C902A4C();
  v5[90] = v22;
  v5[91] = *(v22 - 8);
  v5[92] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v5[93] = swift_task_alloc();
  v23 = sub_22C9093BC();
  v5[94] = v23;
  v5[95] = *(v23 - 8);
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v24 = sub_22C9025EC();
  v5[98] = v24;
  v5[99] = *(v24 - 8);
  v5[100] = swift_task_alloc();
  v25 = sub_22C908C5C();
  v5[101] = v25;
  v5[102] = *(v25 - 8);
  v5[103] = swift_task_alloc();
  v26 = sub_22C9069BC();
  v5[104] = v26;
  v5[105] = *(v26 - 8);
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C61780C, 0, 0);
}

void sub_22C61780C(uint64_t a1)
{
  v301 = v1;
  v2 = *(sub_22C90789C() + 16);

  if (v2 >= 2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = sub_22C90789C();
    swift_getKeyPath();
    v300[0] = v3;
    sub_22C37454C();
    v7 = v6 & v5;
    sub_22C634720();
    v9 = v8 >> 6;

    v10 = 0;
    if (!v7)
    {
      goto LABEL_4;
    }

    do
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v1[8] = *(*(v4 + 48) + ((v11 << 9) | (8 * v12)));

      swift_getAtKeyPath();

      sub_22C3CE540();
    }

    while (v7);
    while (1)
    {
LABEL_4:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v11 >= v9)
      {
        break;
      }

      v7 = *(v4 + 56 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    v13 = v1[105];

    sub_22C3AE31C();
    v15 = 0;
    v17 = v14 + 56;
    v16 = *(v14 + 56);
    v295 = v14;
    v18 = -1;
    v19 = -1 << *(v14 + 32);
    if (-v19 < 64)
    {
      v18 = ~(-1 << -v19);
    }

    v20 = v18 & v16;
    v21 = (63 - v19) >> 6;
    v272 = v14 + 56;
    v276 = (v13 + 8);
    v22 = v13;
    if ((v18 & v16) != 0)
    {
      while (1)
      {
        v23 = v15;
LABEL_18:
        v24 = v1[106];
        v25 = v1[10];
        (*(v22 + 16))(v1[107], *(v295 + 48) + *(v22 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v1[104]);
        v26 = sub_22C50B478();
        v27(v26);
        sub_22C90789C();
        v28 = sub_22C4E78D0();
        *(v28 + 16) = v24;
        sub_22C793D6C(sub_22C633944, v28, v25, v29, v30, v31, v32, v33, v233, v234, v235, v236, v237, v238, v239, v241, v242, v243, v245, v246);

        sub_22C3AE444();
        if (*(v34 + 16) >= 2uLL)
        {
          break;
        }

        v20 &= v20 - 1;
        v35 = sub_22C36ECB4();
        v36(v35);
        v15 = v23;
        v17 = v272;
        if (!v20)
        {
          goto LABEL_15;
        }
      }

      v300[0] = sub_22C4702AC(v34);
      sub_22C6304DC(v300);

      v198 = *(v300[0] + 16);
      if (v198)
      {
        v199 = v1[99];
        sub_22C36BA94();
        v202 = v200 + v201;
        v281 = *(v203 + 56);
        v284 = v204;
        v205 = MEMORY[0x277D84F90];
        do
        {
          v206 = v1[101];
          v207 = sub_22C372164();
          v284(v207);
          sub_22C90774C();
          sub_22C908B8C();
          v208 = sub_22C38C41C();
          v209(v208, v206);
          sub_22C36CC9C();
          sub_22C9025CC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C36D270();
            sub_22C594FB4();
            v205 = v213;
          }

          v211 = *(v205 + 16);
          v210 = *(v205 + 24);
          if (v211 >= v210 >> 1)
          {
            sub_22C36A958(v210);
            sub_22C594FB4();
            v205 = v214;
          }

          *(v205 + 16) = v211 + 1;
          sub_22C36BA94();
          (*(v199 + 32))(v205 + v212 + *(v199 + 72) * v211);
          v202 += v281;
          --v198;
        }

        while (v198);
      }

      v291 = v1[104];
      v217 = v1[92];
      v257 = v1[91];
      v259 = v1[90];
      v218 = v1[86];
      v219 = v1[85];
      v261 = v1[84];
      v275 = v1[80];
      v268 = v1[77];
      v282 = v1[76];
      v256 = v1[66];
      v271 = v1[12];
      v285 = v1[106];
      sub_22C9069AC();
      sub_22C90697C();
      sub_22C36FC2C();
      sub_22C9029EC();
      sub_22C90069C();
      sub_22C36A748();
      sub_22C36C640(v220, v221, v222, v223);
      sub_22C9078EC();
      v224 = sub_22C37049C();
      sub_22C36C640(v224, v225, v226, v256);
      (*(v257 + 16))(v218, v217, v259);
      (*(v219 + 104))(v218, *MEMORY[0x277D1CBD8], v261);
      sub_22C9026AC();
      v227 = sub_22C3702F4();
      sub_22C36C640(v227, v228, v229, v230);
      sub_22C907DCC();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      (*(v268 + 16))(v275, v271, v282);
      sub_22C906E6C();

      v231 = sub_22C36D29C();
      v232(v231);
      type metadata accessor for StepResolution(0);
      sub_22C37FDE8();
      swift_storeEnumTagMultiPayload();
      (*v276)(v285, v291);
      goto LABEL_70;
    }

    while (1)
    {
LABEL_15:
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_94;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v15;
      if (v20)
      {
        goto LABEL_18;
      }
    }
  }

  v37 = sub_22C90786C();
  v38 = sub_22C90789C();
  v39 = sub_22C58B5C4(v38);

  if (v39)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v300[0] = v37;
    sub_22C63210C(v39, sub_22C6AC6A0, 0, isUniquelyReferenced_nonNull_native, v300);
  }

  ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)();
  v42 = v41;
  v43 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v43);
  sub_22C36ECB4();
  sub_22C908AFC();
  v262 = v1[102];
  v286 = v1[95];
  v44 = v1[72];
  v258 = v1[61];
  v260 = v1[62];
  v296 = v1[57];
  v45 = v1[48];
  (*(v1[64] + 8))(v1[65], v1[63]);
  v46 = sub_22C36ECB4();
  v244 = v47;
  v47(v46);
  sub_22C36BECC();
  sub_22C36C640(v48, v49, v50, v44);
  sub_22C63472C();
  v240 = v51;
  v51();
  sub_22C909F0C();
  v52 = v42 + 64;
  sub_22C37454C();
  v55 = v54 & v53;
  sub_22C634720();
  v57 = v56 >> 6;
  v255 = *MEMORY[0x277D1E908];
  v250 = *MEMORY[0x277D1E900];
  v248 = *MEMORY[0x277D1E910];
  v253 = (v45 + 8);
  v247 = *MEMORY[0x277D1CB00];
  v59 = v58;
  v249 = *MEMORY[0x277D1CAF0];
  v254 = (v286 + 32);
  v264 = v60;

  v61 = 0;
  v251 = v57;
  v252 = v52;
LABEL_25:
  v1[108] = v59;
  v283 = v59;
  if (v55)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_95;
    }

    if (v62 >= v57)
    {
      break;
    }

    v55 = *(v52 + 8 * v62);
    ++v61;
    if (v55)
    {
      v61 = v62;
LABEL_30:
      v269 = v1[101];
      v63 = v1[62];
      v64 = v1[60];
      v287 = v1[59];
      v277 = v1[49];
      v65 = __clz(__rbit64(v55)) | (v61 << 6);
      v66 = (*(v264 + 48) + 16 * v65);
      v67 = *v66;
      v68 = v66[1];
      (*(v262 + 16))(&v63[*(v296 + 48)], *(v264 + 56) + *(v262 + 72) * v65);
      *v63 = v67;
      *(v260 + 8) = v68;
      sub_22C36A10C();
      sub_22C3D3364();
      v267 = *(v258 + 8);
      sub_22C370114();
      sub_22C3D3364();

      v69 = *(v296 + 48);
      sub_22C90774C();
      v70 = *(v262 + 8);
      v70(v64 + v69, v269);
      v71 = v287;
      sub_22C3D3364();

      v72 = *(v296 + 48);
      sub_22C908BCC();
      v288 = v70;
      v70(v71 + v72, v269);
      v73 = sub_22C36BBCC();
      v74(v73);
      v75 = sub_22C37453C();
      v77 = v76(v75);
      if (v77 == v255)
      {
        v78 = v1[49];
        v79 = v1[45];
        (*v253)(v1[50], v1[47]);
        v80 = sub_22C37453C();
        v81(v80);
        *v79 = *v78;
        v82 = sub_22C90260C();
        sub_22C36985C();
        (*(v83 + 104))(v79, v249, v82);
        sub_22C633C54();
      }

      else if (v77 == v250)
      {
        v88 = sub_22C634540();
        v89(v88);
        sub_22C90260C();
        v84 = sub_22C3702F4();
      }

      else
      {
        if (v77 != v248)
        {
          sub_22C379C40();

          sub_22C90B4EC();
          return;
        }

        v90 = sub_22C634540();
        v91(v90);
        v92 = sub_22C90260C();
        sub_22C36985C();
        (*(v93 + 104))(v277, v247, v92);
        v84 = sub_22C3726A4();
        v87 = v92;
      }

      sub_22C36C640(v84, v85, v86, v87);
      v94 = v1[101];
      v273 = v1[94];
      v278 = v1[96];
      v95 = v1[58];
      v96 = v1[55];
      sub_22C3D3310();
      sub_22C372FA4();
      sub_22C3D3364();

      v97 = *(v296 + 48);
      sub_22C908BAC();
      v288(v95 + v97, v94);
      (*v254)(v96, v278, v273);
      sub_22C3D3310();
      sub_22C633AE8();
      sub_22C630194();
      swift_isUniquelyReferenced_nonNull_native();
      v300[0] = v283;
      sub_22C3736B4();
      v98 = sub_22C370114();
      sub_22C36E5AC(v98, v99, v100, v101);
      sub_22C369DA4();
      if (__OFADD__(v102, v103))
      {
        goto LABEL_97;
      }

      sub_22C50B5FC();
      v104 = sub_22C3A5908(&qword_27D9BF488, &qword_22C922748);
      if (sub_22C634424(v104, v105, v104))
      {
        sub_22C3736B4();
        v106 = sub_22C370114();
        sub_22C36E5AC(v106, v107, v108, v109);
        sub_22C388D48();
        if (!v111)
        {
          sub_22C379C40();

          sub_22C90B54C();
          return;
        }

        v94 = v110;
      }

      v112 = v1[62];
      if (v97)
      {

        v59 = v300[0];
        sub_22C6347C8();
        sub_22C633630();
        sub_22C3AC228(v112, &qword_27D9BF338, &qword_22C9225F0);
        goto LABEL_45;
      }

      v59 = v300[0];
      sub_22C36ED48(v300[0] + 8 * (v94 >> 6));
      v113 = (*(v59 + 48) + 16 * v94);
      *v113 = v114;
      v113[1] = v267;
      sub_22C6347C8();
      sub_22C633AE8();
      sub_22C630194();
      sub_22C3AC228(v112, &qword_27D9BF338, &qword_22C9225F0);
      v115 = *(v59 + 16);
      v116 = __OFADD__(v115, 1);
      v117 = v115 + 1;
      if (v116)
      {
        goto LABEL_98;
      }

      *(v59 + 16) = v117;
LABEL_45:
      v55 &= v55 - 1;
      v288(v1[61] + *(v296 + 48), v1[101]);
      v57 = v251;
      v52 = v252;
      goto LABEL_25;
    }
  }

  sub_22C9078EC();
  sub_22C63417C();
  sub_22C908ADC();
  v118 = sub_22C36BAFC();
  v244(v118);
  v119 = sub_22C908ABC();
  v120 = sub_22C37EF1C();
  v122 = sub_22C370B74(v120, v121, v119);
  v123 = v1[56];
  if (v122 == 1)
  {

    sub_22C3AC228(v123, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  else
  {
    sub_22C36A948();
    v126 = sub_22C36BA00();
    if (v127(v126) == *MEMORY[0x277D1E8C8])
    {
      v128 = v1[82];
      v129 = v1[77];
      v130 = v1[36];
      v289 = v1[37];
      v131 = v1[35];
      v292 = v1[34];
      v297 = v1[76];

      v132 = sub_22C36A10C();
      v133(v132);
      v134 = sub_22C374C34();
      (v240)(v134);
      sub_22C90878C();
      sub_22C9068FC();
      sub_22C646D68();
      v135 = *(v129 + 8);
      v1[109] = v135;
      v1[110] = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v135(v128, v297);
      (*(v131 + 8))(v130, v292);
      sub_22C9070DC();
      sub_22C376738(v289);
      if (v111)
      {
        sub_22C3AC228(v1[37], &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        sub_22C90702C();
        sub_22C36BBA8();
        v179 = sub_22C37170C();
        v180(v179);
        v181 = sub_22C36D39C();
        v183 = v182(v181);
        if (v183 == *MEMORY[0x277D1DA78])
        {

          v184 = sub_22C36ECB4();
          v185(v184);
          v186 = sub_22C36D39C();
          v187(v186);
          sub_22C9068FC();
          v1[111] = sub_22C906A8C();
          swift_task_alloc();
          sub_22C36CC90();
          v1[112] = v188;
          *v188 = v189;
          v188[1] = sub_22C619624;
          sub_22C379C40();

          sub_22C61DE68(v190, v191, v192, v193, v194, v195, v196);
          return;
        }

        (*(v1[39] + 8))(v1[40], v1[38]);
      }

      sub_22C90B1AC();
      sub_22C379C40();
      return;
    }

    v136 = sub_22C36BA00();
    v137(v136);
  }

  v138 = v1[31];
  sub_22C908E1C();
  sub_22C36D264();
  sub_22C3D3364();
  v139 = sub_22C37EF1C();
  sub_22C36D0A8(v139, v140, v138);
  if (v111)
  {

    v141 = sub_22C36D264();
    sub_22C3AC228(v141, v142, &unk_22C922750);
    sub_22C90735C();
    v143 = sub_22C3A5F00();
    v144 = sub_22C36FBE4(MEMORY[0x277D1DFB0], v143);
    sub_22C6348A8(v144, v145);
    swift_willThrow();
    v146 = sub_22C3806B8();
    sub_22C3AC228(v146, v147, &unk_22C922750);
    v148 = sub_22C36BBCC();
    v149(v148);

    sub_22C633CF0();

    sub_22C369A24();
    goto LABEL_48;
  }

  v150 = v1[24];
  v151 = v1[21];
  sub_22C3AC228(v1[30], &qword_27D9BF498, &unk_22C922750);
  sub_22C51E3FC();
  v152 = sub_22C372FA4();
  v153(v152);
  sub_22C90943C();
  v154 = sub_22C372164();
  v155(v154);
  sub_22C6341E4();
  sub_22C9068FC();
  sub_22C9078EC();
  sub_22C3A5908(&qword_27D9BF4A0, &qword_22C922760);
  sub_22C90B1CC();
  v156 = 0;
  sub_22C36D280();
  v161 = (v159 + 63) >> 6;
  v266 = *MEMORY[0x277D1E040];
  v263 = v157 + 8;
  v265 = (v151 + 104);
  v270 = v157;
  if ((v160 & v158) != 0)
  {
    goto LABEL_60;
  }

  while (2)
  {
    v164 = v156;
    do
    {
      v156 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        goto LABEL_96;
      }

      if (v156 >= v161)
      {
        v175 = v1[73];
        v294 = v1[72];
        v299 = v1[75];
        v177 = v1[27];
        v176 = v1[28];
        v178 = v1[26];
        sub_22C90776C();
        sub_22C36D264();
        sub_22C90867C();
        (*(v177 + 104))(v176, *MEMORY[0x277D1E560], v178);
        sub_22C630248();

        sub_22C37A004();
        sub_22C9085BC();
        (*(v175 + 8))(v299, v294);
        type metadata accessor for StepResolution(0);
        swift_storeEnumTagMultiPayload();
LABEL_70:
        sub_22C633EE4();
        sub_22C6346F4();

        sub_22C369C50();
LABEL_48:
        sub_22C379C40();

        __asm { BRAA            X1, X16 }
      }

      ++v164;
    }

    while (!*(v283 + 64 + 8 * v156));
    sub_22C37FCE8();
    v274 = v165;
LABEL_66:
    v166 = v162 | (v156 << 6);
    v167 = v1[94];
    v168 = v1[53];
    v169 = v1[22];
    v298 = v1[23];
    v280 = v1[20];
    v170 = (*(v283 + 48) + 16 * v166);
    v290 = v1[25];
    v293 = *v170;
    v279 = v170[1];
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C38A894();
    v171(v169, v168, v167);
    (*v265)(v169, v266, v280);
    sub_22C3D3364();

    sub_22C90869C();
    sub_22C633A4C();
    sub_22C62E9E0(v168, v172);
    *(v263 + ((v166 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v166;
    v173 = (v270[6] + 16 * v166);
    *v173 = v293;
    v173[1] = v279;
    (*(v150 + 32))(v270[7] + *(v150 + 72) * v166, v290, v298);
    sub_22C634804();
    if (!v116)
    {
      v270[2] = v174;
      if (!v274)
      {
        continue;
      }

LABEL_60:
      sub_22C36C050();
      v274 = v163;
      goto LABEL_66;
    }

    break;
  }

LABEL_99:
  __break(1u);
}

uint64_t sub_22C619624()
{
  sub_22C36D5EC();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 904) = v0;

  sub_22C6343B0();
  (*(v1 + 872))(*(v1 + 632), *(v1 + 608));

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C6197BC()
{
  v1 = sub_22C634264();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = sub_22C36BAFC();
  v3(v4);
  v5 = sub_22C37170C();
  v3(v5);
  sub_22C633EE4();
  sub_22C6346F4();

  sub_22C369C50();

  return v6();
}

uint64_t sub_22C619AC4()
{
  v1 = sub_22C634264();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = sub_22C36BAFC();
  v3(v4);
  v5 = sub_22C37170C();
  v3(v5);
  sub_22C633CF0();
  sub_22C6346F4();

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C619D74(uint64_t a1, uint64_t a2)
{
  v302 = a1;
  v297 = _s5TupleVMa(0);
  v295 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v300 = &v289 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_22C9063DC();
  v299 = *(v296 - 8);
  v4 = MEMORY[0x28223BE20](v296);
  v293 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v290 = &v289 - v7;
  MEMORY[0x28223BE20](v6);
  v294 = &v289 - v8;
  v9 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v310 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v330 = &v289 - v12;
  v347 = sub_22C908BBC();
  v13 = *(v347 - 8);
  v14 = MEMORY[0x28223BE20](v347);
  v312 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v336 = &v289 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v327 = &v289 - v19;
  MEMORY[0x28223BE20](v18);
  v326 = &v289 - v20;
  v346 = sub_22C90931C();
  v21 = *(v346 - 8);
  v22 = MEMORY[0x28223BE20](v346);
  v311 = &v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v325 = &v289 - v24;
  v25 = sub_22C9093BC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v332 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v324 = &v289 - v29;
  v30 = sub_22C908C5C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v335 = &v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v292 = &v289 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v291 = &v289 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v298 = &v289 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v351 = &v289 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v323 = &v289 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v362 = &v289 - v45;
  MEMORY[0x28223BE20](v44);
  v334 = &v289 - v46;
  v47 = sub_22C9069BC();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v364 = &v289 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v368 = &v289 - v52;
  MEMORY[0x28223BE20](v51);
  v333 = &v289 - v53;
  v54 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v353 = &v289 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v331 = &v289 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v329 = &v289 - v60;
  MEMORY[0x28223BE20](v59);
  v328 = &v289 - v61;
  v63 = a2 + 64;
  v62 = *(a2 + 64);
  v64 = 1 << *(a2 + 32);
  v344 = *MEMORY[0x277D72A58];
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  else
  {
    v65 = -1;
  }

  v350 = v65 & v62;
  v321 = *MEMORY[0x277D729E8];
  v306 = (v64 + 63) >> 6;
  v355 = v48 + 16;
  v359 = (v31 + 16);
  v309 = *MEMORY[0x277D72A38];
  v360 = (v48 + 32);
  v365 = (v31 + 32);
  v305 = *MEMORY[0x277D729F8];
  v343 = (v26 + 88);
  v320 = (v26 + 8);
  v319 = (v26 + 96);
  v318 = (v21 + 16);
  v317 = (v21 + 88);
  v316 = *MEMORY[0x277D72990];
  v315 = *MEMORY[0x277D72958];
  v308 = *MEMORY[0x277D729D0];
  v304 = *MEMORY[0x277D729B0];
  v303 = *MEMORY[0x277D72998];
  v301 = *MEMORY[0x277D72970];
  v314 = (v21 + 8);
  v342 = (v13 + 16);
  v341 = (v13 + 88);
  v340 = *MEMORY[0x277D1E908];
  v313 = *MEMORY[0x277D1E900];
  v339 = (v13 + 8);
  v358 = v31;
  v337 = (v31 + 8);
  v307 = *MEMORY[0x277D1E910];
  v356 = v48;
  v66 = (v48 + 8);
  v67 = v47;
  v338 = v66;
  v352 = a2;

  v68 = 0;
  v69 = MEMORY[0x277D84F98];
  v354 = MEMORY[0x277D84F98];
  v357 = v67;
  v363 = v30;
  v345 = v25;
  for (i = v63; ; v63 = i)
  {
    v70 = v350;
    v361 = v69;
    if (v350)
    {
      v71 = v67;
      v72 = v68;
LABEL_12:
      v350 = (v70 - 1) & v70;
      v74 = __clz(__rbit64(v70)) | (v72 << 6);
      v75 = v352;
      v76 = v356;
      v77 = v333;
      (*(v356 + 16))(v333, *(v352 + 48) + *(v356 + 72) * v74, v71);
      v78 = v358;
      v79 = v334;
      v30 = v363;
      (*(v358 + 16))(v334, *(v75 + 56) + *(v358 + 72) * v74, v363);
      v80 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      v81 = *(v80 + 48);
      v82 = *(v76 + 32);
      v67 = v71;
      v83 = v329;
      v82(v329, v77, v67);
      (*(v78 + 32))(v83 + v81, v79, v30);
      sub_22C36C640(v83, 0, 1, v80);
      v73 = v353;
    }

    else
    {
      v73 = v353;
      while (1)
      {
        v72 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
          goto LABEL_160;
        }

        if (v72 >= v306)
        {
          break;
        }

        v70 = *(v63 + 8 * v72);
        ++v68;
        if (v70)
        {
          v71 = v67;
          v68 = v72;
          goto LABEL_12;
        }
      }

      v105 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      sub_22C36C640(v329, 1, 1, v105);
      v350 = 0;
    }

    v84 = v328;
    sub_22C3D3310();
    v85 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
    v86 = sub_22C370B74(v84, 1, v85);
    v87 = v330;
    if (v86 == 1)
    {
      break;
    }

    v88 = *(v85 + 48);
    (*v360)(v368, v84, v67);
    v89 = *v365;
    (*v365)(v362, v84 + v88, v30);
    v90 = v324;
    sub_22C90774C();
    v91 = v345;
    v92 = (*v343)(v90, v345);
    v93 = v361;
    if (v92 == v344)
    {
      (*v319)(v90, v91);
      v94 = swift_projectBox();
      v95 = v325;
      v96 = v346;
      (*v318)(v325, v94, v346);
      v97 = (*v317)(v95, v96);
      v98 = v97 == v316 || v97 == v315;
      v99 = v354;
      v100 = v326;
      if (v98)
      {
        v349 = 6;
        v101 = v347;
      }

      else
      {
        v101 = v347;
        if (v97 == v308)
        {
          v104 = 9;
        }

        else if (v97 == v304)
        {
          v104 = 8;
        }

        else if (v97 == v303)
        {
          v104 = 7;
        }

        else if (v97 == v301)
        {
          v104 = 5;
        }

        else
        {
          v104 = 4;
        }

        v349 = v104;
      }

      (*v314)(v325, v346);
    }

    else
    {
      v102 = v92;
      v99 = v354;
      v100 = v326;
      if (v92 == v321)
      {
        (*v320)(v90, v91);
        v103 = 10;
      }

      else if (v92 == v309)
      {
        (*v320)(v90, v91);
        v103 = 11;
      }

      else
      {
        (*v320)(v90, v91);
        if (v102 == v305)
        {
          v103 = 11;
        }

        else
        {
          v103 = 12;
        }
      }

      v349 = v103;
      v101 = v347;
    }

    sub_22C908BCC();
    v106 = v327;
    (*v342)(v327, v100, v101);
    v107 = (*v341)(v106, v101);
    v348 = v89;
    if (v107 != v340)
    {
      if (v107 == v313)
      {
        v108 = 0;
        goto LABEL_46;
      }

      if (v107 != v307)
      {
LABEL_171:
        sub_22C90B4EC();
        __break(1u);
        goto LABEL_172;
      }
    }

    v108 = 1;
LABEL_46:
    (*v339)(v100, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v366 = v99;
    sub_22C628D18();
    if (__OFADD__(*(v99 + 16), (v110 & 1) == 0))
    {
      goto LABEL_161;
    }

    v111 = v109;
    v112 = v110;
    sub_22C3A5908(&qword_27D9BF4C0, &unk_22C9227A0);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v115 = v363;
      if ((v112 & 1) != (v114 & 1))
      {
        goto LABEL_172;
      }

      v111 = v113;
    }

    else
    {
      v115 = v363;
    }

    v116 = v366;
    v117 = 3 * v111;
    v354 = v366;
    if (v112)
    {
      v118 = v366[7].isa + v117;
      *v118 = 1;
      v118[1] = v349;
      v118[2] = v108;
    }

    else
    {
      v366[(v111 >> 6) + 8].isa = (v366[(v111 >> 6) + 8].isa | (1 << v111));
      (*(v356 + 16))(v116[6].isa + *(v356 + 72) * v111, v368, v357);
      v119 = v116[7].isa + v117;
      *v119 = 1;
      v119[1] = v349;
      v119[2] = v108;
      isa = v116[2].isa;
      v121 = __OFADD__(isa, 1);
      v122 = (isa + 1);
      if (v121)
      {
        goto LABEL_164;
      }

      v116[2].isa = v122;
    }

    v123 = v323;
    (*v359)(v323, v362, v115);
    swift_isUniquelyReferenced_nonNull_native();
    v366 = v93;
    sub_22C628D18();
    if (__OFADD__(v93[2].isa, (v125 & 1) == 0))
    {
      goto LABEL_162;
    }

    v126 = v124;
    v127 = v125;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v30 = v363;
      if ((v127 & 1) != (v129 & 1))
      {
        goto LABEL_172;
      }

      v126 = v128;
    }

    else
    {
      v30 = v363;
    }

    v69 = v366;
    if (v127)
    {
      v130 = *(v358 + 72) * v126;
      v131 = v348;
      (v348)(v87, v366[7].isa + v130, v30);
      (v131)(v69[7].isa + v130, v123, v30);
      v132 = 0;
      v67 = v357;
    }

    else
    {
      v366[(v126 >> 6) + 8].isa = (v366[(v126 >> 6) + 8].isa | (1 << v126));
      v67 = v357;
      (*(v356 + 16))(v69[6].isa + *(v356 + 72) * v126, v368, v357);
      (v348)(v69[7].isa + *(v358 + 72) * v126, v123, v30);
      v133 = v69[2].isa;
      v121 = __OFADD__(v133, 1);
      v134 = (v133 + 1);
      if (v121)
      {
        goto LABEL_165;
      }

      v69[2].isa = v134;
      v132 = 1;
    }

    sub_22C36C640(v87, v132, 1, v30);
    sub_22C3AC228(v87, &qword_27D9BB628, &unk_22C920580);
    (*v337)(v362, v30);
    (*v338)(v368, v67);
  }

  v135 = v302 + 56;
  v136 = 1 << *(v302 + 32);
  if (v136 < 64)
  {
    v137 = ~(-1 << v136);
  }

  else
  {
    v137 = -1;
  }

  v138 = v137 & *(v302 + 56);
  v325 = ((v136 + 63) >> 6);

  LODWORD(v329) = 0;
  v139 = 0;
  v140 = MEMORY[0x277D84F90];
  v141 = v351;
  v142 = v361;
  v350 = v85;
  i = v135;
  while (2)
  {
    v326 = v140;
    if (!v138)
    {
      do
      {
        v143 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_168;
        }

        if (v143 >= v325)
        {

          v256 = v290;
          sub_22C903F8C();
          v257 = sub_22C9063CC();
          v258 = sub_22C90AABC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v366 = v260;
            *v259 = 136315138;

            v262 = MEMORY[0x2318B7AD0](v261, v297);
            v264 = v263;

            v265 = sub_22C36F9F4(v262, v264, &v366);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_22C366000, v257, v258, "TupleSet candidates: %s", v259, 0xCu);
            sub_22C36FF94(v260);
            MEMORY[0x2318B9880](v260, -1, -1);
            MEMORY[0x2318B9880](v259, -1, -1);
          }

          v266 = *(v299 + 8);
          v267 = v256;
          v268 = v296;
          v266(v267, v296);
          v269 = v293;
          sub_22C903F8C();
          v270 = sub_22C9063CC();
          v271 = sub_22C90AABC();
          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            v273 = swift_slowAlloc();
            v366 = v273;
            *v272 = 136315138;
            sub_22C6339B0(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);

            v274 = sub_22C909EDC();
            v276 = v275;

            v277 = sub_22C36F9F4(v274, v276, &v366);

            *(v272 + 4) = v277;
            _os_log_impl(&dword_22C366000, v270, v271, "TupleSet parameterMetadataDict: %s", v272, 0xCu);
            sub_22C36FF94(v273);
            MEMORY[0x2318B9880](v273, -1, -1);
            MEMORY[0x2318B9880](v272, -1, -1);

            v278 = v293;
          }

          else
          {

            v278 = v269;
          }

          v266(v278, v268);
          return 33554434;
        }

        v138 = *(v135 + 8 * v143);
        ++v139;
      }

      while (!v138);
      v139 = v143;
    }

    v144 = *(v302 + 48);
    v324 = v139;
    v145 = *(v144 + ((v139 << 9) | (8 * __clz(__rbit64(v138)))));
    v323 = ((v138 - 1) & v138);
    v146 = *(v145 + 8);
    v330 = v145 + 64;
    v147 = 1 << v145[32];
    if (v147 < 64)
    {
      v148 = ~(-1 << v147);
    }

    else
    {
      v148 = -1;
    }

    v149 = v148 & v146;
    v327 = ((v147 + 63) >> 6);
    v328 = v145;
    swift_bridgeObjectRetain_n();
    v150 = 0;
    v151 = v331;
LABEL_78:
    v361 = v142;
    if (v149)
    {
      v152 = v150;
LABEL_84:
      v368 = ((v149 - 1) & v149);
      v153 = __clz(__rbit64(v149)) | (v152 << 6);
      v154 = v328;
      v155 = v356;
      v156 = v333;
      (*(v356 + 16))(v333, *(v328 + 6) + *(v356 + 72) * v153, v67);
      v157 = *(v154 + 7);
      v158 = v358;
      v159 = v334;
      (*(v358 + 16))(v334, v157 + *(v358 + 72) * v153, v30);
      v85 = v350;
      v160 = *(v350 + 48);
      v161 = *(v155 + 32);
      v73 = v353;
      v162 = v156;
      v163 = v67;
      v161(v353, v162, v67);
      (*(v158 + 32))(v73 + v160, v159, v30);
      v164 = 0;
      v151 = v331;
      v141 = v351;
LABEL_85:
      sub_22C36C640(v73, v164, 1, v85);
      sub_22C3D3310();
      if (sub_22C370B74(v151, 1, v85) == 1)
      {
        v220 = v73;
        v221 = v30;

        v222 = sub_22C90769C();
        v223 = v300;
        sub_22C36C640(v300, 1, 1, v222);
        v224 = v297;
        v225 = *(v297 + 20);
        v226 = sub_22C9099FC();
        sub_22C36C640(v223 + v225, 1, 1, v226);
        v227 = v361;
        *(v223 + *(v224 + 24)) = v361;
        v228 = v227;

        v140 = v326;
        v67 = v163;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5952D4();
          v140 = v230;
        }

        v135 = i;
        v229 = *(v140 + 2);
        v142 = v228;
        if (v229 >= *(v140 + 3) >> 1)
        {
          sub_22C5952D4();
          v140 = v231;
        }

        v30 = v221;
        *(v140 + 2) = v229 + 1;
        sub_22C630194();
        LODWORD(v329) = 1;
        v73 = v220;
        v85 = v350;
        v141 = v351;
        v139 = v324;
        v138 = v323;
        continue;
      }

      v165 = *(v85 + 48);
      (*v360)(v364, v151, v163);
      v362 = *v365;
      (v362)(v141, v151 + v165, v30);
      v166 = v332;
      sub_22C90774C();
      v167 = v345;
      v168 = (*v343)(v166, v345);
      if (v168 == v344)
      {
        (*v319)(v166, v167);
        v169 = swift_projectBox();
        v170 = v311;
        v171 = v346;
        (*v318)(v311, v169, v346);
        v172 = (*v317)(v170, v171);
        if (v172 == v316 || v172 == v315)
        {
          v349 = 6;
          v174 = v347;
        }

        else
        {
          v174 = v347;
          if (v172 == v308)
          {
            v177 = 9;
          }

          else if (v172 == v304)
          {
            v177 = 8;
          }

          else if (v172 == v303)
          {
            v177 = 7;
          }

          else if (v172 == v301)
          {
            v177 = 5;
          }

          else
          {
            v177 = 4;
          }

          v349 = v177;
        }

        (*v314)(v311, v346);
      }

      else
      {
        v175 = v168;
        if (v168 == v321)
        {
          (*v320)(v332, v167);
          v176 = 10;
        }

        else if (v168 == v309)
        {
          (*v320)(v332, v167);
          v176 = 11;
        }

        else
        {
          (*v320)(v332, v167);
          if (v175 == v305)
          {
            v176 = 11;
          }

          else
          {
            v176 = 12;
          }
        }

        v349 = v176;
        v174 = v347;
      }

      v178 = v336;
      sub_22C908BCC();
      v179 = v312;
      (*v342)(v312, v178, v174);
      v180 = (*v341)(v179, v174);
      if (v180 == v340)
      {
        LODWORD(v348) = 1;
        v181 = v163;
        goto LABEL_118;
      }

      v181 = v163;
      if (v180 == v313)
      {
        LODWORD(v348) = 0;
LABEL_118:
        v182 = v361;
      }

      else
      {
        v182 = v361;
        if (v180 != v307)
        {
          goto LABEL_171;
        }

        LODWORD(v348) = 1;
      }

      (*v339)(v336, v174);
      if (*(v352 + 16))
      {
        sub_22C628D18();
        if (v184)
        {
          v232 = v183;
          v233 = v352;

          v234 = *(v233 + 56) + *(v358 + 72) * v232;
          v235 = *(v358 + 16);
          v236 = v298;
          v235(v298, v234, v30);

          v237 = v294;
          sub_22C903F8C();
          v238 = v291;
          v235(v291, v236, v30);
          v239 = v292;
          v235(v292, v141, v30);
          v240 = sub_22C9063CC();
          v241 = sub_22C90AADC();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = v30;
            v243 = swift_slowAlloc();
            v244 = v238;
            v362 = swift_slowAlloc();
            v366 = v362;
            *v243 = 136315394;
            sub_22C6339B0(&qword_27D9BF4C8, MEMORY[0x277D1E968]);
            v361 = v240;
            v245 = sub_22C90B47C();
            v247 = v246;
            LODWORD(v360) = v241;
            v248 = *v337;
            v365 = (v337 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v248(v244, v242);
            v249 = sub_22C36F9F4(v245, v247, &v366);
            v181 = v357;

            *(v243 + 4) = v249;
            *(v243 + 12) = 2080;
            v250 = sub_22C90B47C();
            v252 = v251;
            v368 = v248;
            v248(v239, v242);
            v253 = sub_22C36F9F4(v250, v252, &v366);

            *(v243 + 14) = v253;
            v254 = v361;
            _os_log_impl(&dword_22C366000, v361, v360, "a parameter may not be both resolved and unresolved: %s vs %s", v243, 0x16u);
            v255 = v362;
            swift_arrayDestroy();
            MEMORY[0x2318B9880](v255, -1, -1);
            MEMORY[0x2318B9880](v243, -1, -1);

            (*(v299 + 8))(v294, v296);
          }

          else
          {

            v279 = *v337;
            v365 = (v337 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v279(v239, v30);
            v368 = v279;
            v279(v238, v30);
            (*(v299 + 8))(v237, v296);
            v242 = v30;
          }

          type metadata accessor for InterpreterError(0);
          sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
          swift_allocError();
          v281 = v280;
          v366 = 0;
          v367 = 0xE000000000000000;
          sub_22C90AF5C();
          MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C933400);
          sub_22C6339B0(&qword_27D9BF4C8, MEMORY[0x277D1E968]);
          v282 = v298;
          v283 = sub_22C90B47C();
          MEMORY[0x2318B7850](v283);

          MEMORY[0x2318B7850](544437792, 0xE400000000000000);
          v284 = v351;
          v285 = sub_22C90B47C();
          MEMORY[0x2318B7850](v285);

          v286 = v367;
          *v281 = v366;
          v281[1] = v286;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v287 = v368;
          (v368)(v282, v242);
          (v287)(v284, v242);
          (*v338)(v364, v181);
        }
      }

      if ((v329 & 1) == 0)
      {
        v185 = v354;
        swift_isUniquelyReferenced_nonNull_native();
        v366 = v185;
        sub_22C628D18();
        if (__OFADD__(*(v185 + 16), (v187 & 1) == 0))
        {
          goto LABEL_166;
        }

        v188 = v186;
        v189 = v187;
        sub_22C3A5908(&qword_27D9BF4C0, &unk_22C9227A0);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          v192 = v357;
          if ((v189 & 1) != (v191 & 1))
          {
            goto LABEL_172;
          }

          v188 = v190;
        }

        else
        {
          v192 = v357;
        }

        v193 = v366;
        v194 = 3 * v188;
        v354 = v366;
        if (v189)
        {
          v195 = v366[7].isa + v194;
          *v195 = 0;
          v195[1] = v349;
          v195[2] = v348;
        }

        else
        {
          v366[(v188 >> 6) + 8].isa = (v366[(v188 >> 6) + 8].isa | (1 << v188));
          (*(v356 + 16))(v193[6].isa + *(v356 + 72) * v188, v364, v192);
          v196 = v193[7].isa + v194;
          *v196 = 0;
          v196[1] = v349;
          v196[2] = v348;
          v197 = v193[2].isa;
          v121 = __OFADD__(v197, 1);
          v198 = (v197 + 1);
          if (v121)
          {
            goto LABEL_169;
          }

          v193[2].isa = v198;
        }

        v30 = v363;
        v141 = v351;
      }

      (*v359)(v335, v141, v30);
      swift_isUniquelyReferenced_nonNull_native();
      v366 = v182;
      sub_22C628D18();
      if (__OFADD__(v182[2].isa, (v200 & 1) == 0))
      {
        goto LABEL_163;
      }

      v201 = v199;
      v202 = v200;
      sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
      if (sub_22C90B15C())
      {
        sub_22C628D18();
        v67 = v357;
        if ((v202 & 1) != (v204 & 1))
        {
          goto LABEL_172;
        }

        v201 = v203;
      }

      else
      {
        v67 = v357;
      }

      v205 = v310;
      v142 = v366;
      if (v202)
      {
        v206 = v358;
        v207 = *(v358 + 72) * v201;
        v30 = v363;
        v208 = v310;
        v209 = v151;
        v210 = v362;
        (v362)(v310, v366[7].isa + v207, v363);
        (v210)(v142[7].isa + v207, v335, v30);
        v151 = v209;
        v205 = v208;
        v67 = v357;
        v211 = *(v206 + 8);
        v141 = v351;
        v211(v351, v30);
        (*v338)(v364, v67);
        v212 = 0;
      }

      else
      {
        v366[(v201 >> 6) + 8].isa = (v366[(v201 >> 6) + 8].isa | (1 << v201));
        v213 = v356;
        v214 = v364;
        (*(v356 + 16))(v142[6].isa + *(v356 + 72) * v201, v364, v67);
        v215 = v358;
        v216 = v142[7].isa + *(v358 + 72) * v201;
        v30 = v363;
        (v362)(v216, v335, v363);
        v217 = *(v215 + 8);
        v141 = v351;
        v217(v351, v30);
        (*(v213 + 8))(v214, v67);
        v218 = v142[2].isa;
        v121 = __OFADD__(v218, 1);
        v219 = (v218 + 1);
        if (v121)
        {
          goto LABEL_167;
        }

        v142[2].isa = v219;
        v212 = 1;
        v151 = v331;
      }

      sub_22C36C640(v205, v212, 1, v30);
      sub_22C3AC228(v205, &qword_27D9BB628, &unk_22C920580);
      v73 = v353;
      v85 = v350;
      v149 = v368;
      goto LABEL_78;
    }

    break;
  }

  while (1)
  {
    v152 = v150 + 1;
    if (__OFADD__(v150, 1))
    {
      break;
    }

    if (v152 >= v327)
    {
      v163 = v67;
      v368 = 0;
      v164 = 1;
      goto LABEL_85;
    }

    v149 = *&v330[8 * v152];
    ++v150;
    if (v149)
    {
      v150 = v152;
      goto LABEL_84;
    }
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_172:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v196 = sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v3);
  sub_22C36BA64();
  sub_22C3698F8(v4);
  v185 = sub_22C90952C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  sub_22C3698F8(v9);
  v184 = sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  sub_22C3698F8(v12);
  v183 = sub_22C908BBC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  sub_22C3698F8(v15);
  v182 = sub_22C908C3C();
  sub_22C369824();
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C36D234(v18);
  v19 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C36D5B4();
  sub_22C3698F8(v21);
  v217 = sub_22C9069BC();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  sub_22C36D234(v26);
  v213 = sub_22C908C5C();
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  sub_22C36D234(v35);
  v212 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  sub_22C36985C();
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  v207 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  v206 = v40;
  sub_22C369930();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  v205 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  v211 = v48;
  v49 = *(v1 + 16);
  v50 = MEMORY[0x277D84F90];
  v214 = v1;
  v209 = v23;
  v210 = v28;
  if (!v49)
  {
LABEL_21:
    v81 = sub_22C3AD928(v50);
    v82 = v81;
    v83 = 0;
    v84 = v81 + 56;
    v85 = 1 << *(v81 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & *(v81 + 56);
    v88 = (v85 + 63) >> 6;
    v230 = (v209 + 8);
    v223 = (v28 + 32);
    v204 = *MEMORY[0x277D729E0];
    v174 = v6 + 8;
    v225 = MEMORY[0x277D84F98];
    sub_22C6348BC();
    v216 = v89;
    v221 = v88;
    v208 = v84;
    while (1)
    {
      while (1)
      {
        if (!v87)
        {
          while (1)
          {
            v90 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              break;
            }

            if (v90 >= v88)
            {

              sub_22C36CC48();
              return;
            }

            v87 = *(v84 + 8 * v90);
            ++v83;
            if (v87)
            {
              v83 = v90;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_29:
        v91 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
        v92 = (*(v82 + 48) + ((v83 << 10) | (16 * v91)));
        v93 = *v92;
        v94 = v92[1];
        swift_bridgeObjectRetain_n();
        sub_22C634768();
        sub_22C90699C();
        v227 = v93;
        if (*(v214 + 16))
        {
          sub_22C628D18();
          if (v96)
          {
            break;
          }
        }

        v229 = *v230;
        (*v230)(v28, v217);

        v97 = sub_22C37170C();
        v99 = sub_22C632B20(v97, v98, v94);
        sub_22C6347DC();
        v103 = v102 >> 6;
        v104 = 8;
        if (!v103)
        {
          goto LABEL_36;
        }

        while (1)
        {
          v105 = v99[v104];
          if (v105)
          {
            break;
          }

          v100 -= 64;
          --v103;
          ++v104;
          if (!v103)
          {
            goto LABEL_36;
          }
        }

        v106 = __clz(__rbit64(v105));
        if (v106 - v101 == v100)
        {
LABEL_36:

          v28 = v199;
          v107 = sub_22C381B6C();
          sub_22C36C640(v107, v108, v109, v213);
          goto LABEL_40;
        }

        v219 = v94;
        v110 = *(v212 + 48);
        sub_22C633328(v211, v211 + v110, v106 - v100, *(v99 + 9), 0, v99);
        v111 = sub_22C37F8AC();
        v112(v111);
        v113 = *(v212 + 48);
        v114 = *v223;
        (*v223)(v198 + v113, v211 + v110, v213);
        v114(v199, v198 + v113, v213);
        v115 = sub_22C3726A4();
        sub_22C36C640(v115, v116, v117, v213);
        v229(v198, v217);
        v118 = sub_22C3707B4();
        sub_22C36D0A8(v118, v119, v213);
        if (v120)
        {

          v28 = v199;
          v82 = v216;
          v88 = v221;
          v84 = v208;
LABEL_40:
          sub_22C3AC228(v28, &qword_27D9BB628, &unk_22C920580);
          sub_22C6348BC();
        }

        else
        {
          v172 = v114;
          v114(v186, v199, v213);
          sub_22C908C4C();
          sub_22C908BCC();
          sub_22C908BAC();
          sub_22C90774C();
          sub_22C90935C();
          sub_22C36BA4C();
          v143(v187, v196);
          v144 = v99[2];

          v82 = v216;
          v84 = v208;
          if (!v144)
          {
            goto LABEL_72;
          }

          v145 = v144;
          v146 = 0;
          v173 = MEMORY[0x277D84F90];
          v147 = v195;
          do
          {

            sub_22C90699C();
            v148 = v214;
            if (*(v214 + 16) && (sub_22C628D18(), (v150 & 1) != 0))
            {
              (*(v210 + 16))(v181, *(v214 + 56) + *(v210 + 72) * v149, v213);
              v229(v147, v217);
              sub_22C90774C();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C36D270();
                sub_22C5903C0();
                v173 = v157;
              }

              v152 = *(v173 + 16);
              v151 = *(v173 + 24);
              v148 = v152 + 1;
              if (v152 >= v151 >> 1)
              {
                sub_22C36A958(v151);
                sub_22C5903C0();
                v173 = v158;
              }

              sub_22C6343E4();
              v153(v181, v213);
              *(v173 + 16) = v148;
              sub_22C36BA94();
              (*(v156 + 32))(v155 + v154 + *(v156 + 72) * v152, v197, v196);
              v147 = v195;
            }

            else
            {
              v229(v147, v217);
            }

            ++v146;
          }

          while (v145 != v146);
          sub_22C90906C();
          swift_allocBox();
          sub_22C385D88();
          sub_22C36BA4C();
          v159(v180, v191, v185);
          sub_22C6348E8();
          sub_22C90903C();
          *v187 = v148;
          sub_22C36BA4C();
          v160(v187, v204, v196);
          sub_22C36BA4C();
          v161(v177, v188, v182);
          sub_22C36BA4C();
          v162(v178, v189, v183);
          sub_22C36BA4C();
          v163(v179, v190, v184);
          sub_22C37BD98();
          sub_22C908C1C();
          v164 = sub_22C634750();
          v28 = v213;
          v172(v164);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_22C62D35C(v176, v227, v219, isUniquelyReferenced_nonNull_native, &qword_27D9BF358, &qword_22C922618, MEMORY[0x277D1E968], MEMORY[0x277D1E968], v171, v172, v173, v174, v175, v176);

          sub_22C36BA4C();
          v166(v191, v185);
          sub_22C36BA4C();
          v167(v190, v184);
          sub_22C36BA4C();
          v168(v189, v183);
          sub_22C36BA4C();
          v169(v188, v182);
          sub_22C6343E4();
          v170(v186, v213);
          sub_22C6348BC();
          v88 = v221;
        }
      }

      v121 = *(v210 + 16);
      v121(v192, *(v214 + 56) + *(v210 + 72) * v95, v213);
      v122 = sub_22C38C41C();
      v123(v122, v217);
      v121(v193, v192, v213);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C3736B4();
      sub_22C36E5AC(v93, v94, v124, sub_22C36EF04);
      sub_22C369DA4();
      if (__OFADD__(v127, v128))
      {
        goto LABEL_70;
      }

      v28 = v125;
      v129 = v126;
      sub_22C3A5908(&qword_27D9BF358, &qword_22C922618);
      if (sub_22C90B15C())
      {
        sub_22C3736B4();
        v130 = sub_22C634768();
        v134 = sub_22C36E5AC(v130, v131, v132, v133);
        if ((v129 & 1) != (v135 & 1))
        {
          goto LABEL_73;
        }

        v28 = v134;
        if (v129)
        {
LABEL_48:

          sub_22C36BA4C();
          sub_22C634700();
          v141();
          sub_22C6343E4();
          v142(v192, v28);
          goto LABEL_49;
        }
      }

      else if (v129)
      {
        goto LABEL_48;
      }

      sub_22C36ED48(v225 + 8 * (v28 >> 6));
      v136 = (*(v225 + 48) + 16 * v28);
      *v136 = v93;
      v136[1] = v94;
      sub_22C634700();
      v137();
      sub_22C6343E4();
      v138(v192, v28);
      sub_22C634804();
      if (v140)
      {
        goto LABEL_71;
      }

      *(v225 + 16) = v139;
LABEL_49:
      sub_22C6348BC();
      v88 = v221;
    }
  }

  v194 = v6;
  v231 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v49, 0, v44, v45, v46, v47);
  v50 = v231;
  v53 = sub_22C4AAD90(v1);
  v54 = 0;
  v55 = v1 + 64;
  v201 = v51;
  v200 = v1 + 72;
  v202 = v49;
  v203 = v1 + 64;
  while (1)
  {
    if (v53 < 0 || v53 >= 1 << *(v1 + 32))
    {
      goto LABEL_64;
    }

    if ((*(v55 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
    {
      break;
    }

    if (*(v1 + 36) != v51)
    {
      goto LABEL_66;
    }

    v222 = 1 << v53;
    v224 = v53 >> 6;
    v218 = v54;
    v220 = v51;
    v215 = v52;
    v56 = *(v212 + 48);
    (*(v23 + 16))(v211, *(v1 + 48) + *(v23 + 72) * v53, v217);
    v228 = v53;
    (*(v28 + 16))(v211 + v56, *(v1 + 56) + *(v28 + 72) * v53, v213);
    v226 = *(v23 + 32);
    v57 = sub_22C372FCC();
    v58(v57);
    v59 = *(v28 + 32);
    v59(v205 + *(v212 + 48), v211 + v56, v213);
    sub_22C3D3364();
    v60 = *(v212 + 48);
    v61 = sub_22C37335C();
    v226(v61);
    v59(v207 + v60, v206 + v60, v213);
    v62 = sub_22C9069AC();
    v64 = v63;
    sub_22C3AC228(v207, &qword_27D9BF110, &unk_22C922580);
    v65 = sub_22C372280();
    sub_22C3AC228(v65, v66, &unk_22C922580);
    v72 = *(v231 + 16);
    v71 = *(v231 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_22C3B5E2C(v71 > 1, v72 + 1, 1, v67, v68, v69, v70);
    }

    *(v231 + 16) = v72 + 1;
    v73 = v231 + 16 * v72;
    *(v73 + 32) = v62;
    *(v73 + 40) = v64;
    v1 = v214;
    v53 = 1 << *(v214 + 32);
    if (v228 >= v53)
    {
      goto LABEL_67;
    }

    v55 = v203;
    v74 = *(v203 + 8 * v224);
    if ((v74 & v222) == 0)
    {
      goto LABEL_68;
    }

    if (*(v214 + 36) != v220)
    {
      goto LABEL_69;
    }

    v75 = v74 & (-2 << (v228 & 0x3F));
    if (v75)
    {
      v53 = __clz(__rbit64(v75)) | v228 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v76 = v224 << 6;
      v77 = v224 + 1;
      v78 = (v200 + 8 * v224);
      while (v77 < (v53 + 63) >> 6)
      {
        v80 = *v78++;
        v79 = v80;
        v76 += 64;
        ++v77;
        if (v80)
        {
          sub_22C3A5038(v228, v220, v215 & 1);
          v53 = __clz(__rbit64(v79)) + v76;
          goto LABEL_19;
        }
      }

      sub_22C3A5038(v228, v220, v215 & 1);
    }

LABEL_19:
    v52 = 0;
    v54 = v218 + 1;
    v51 = v201;
    v23 = v209;
    if (v218 + 1 == v202)
    {
      v6 = v194;
      goto LABEL_21;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C61D6B4()
{
  sub_22C370030();
  v75 = v1;
  v62[1] = v2;
  v66 = v3;
  v4 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v72 = v6;
  sub_22C36BA0C();
  v71 = sub_22C901FAC();
  sub_22C369824();
  v74 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v73 = v10 - v9;
  v11 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  sub_22C36BA0C();
  sub_22C9093BC();
  sub_22C369824();
  v69 = v14;
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C3A5908(&qword_27D9BF478, &qword_22C922738);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  v63 = v20;
  v21 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  sub_22C36985C();
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v62[0] = v23;
  sub_22C369930();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v62 - v26;
  MEMORY[0x28223BE20](v25);
  sub_22C385F64();
  MEMORY[0x28223BE20](v28);
  v30 = (v62 - v29);
  sub_22C36E644();
  sub_22C3D3364();
  v31 = *v30;
  v64 = v30[1];
  v65 = v31;
  v67 = v30;
  sub_22C50B478();
  sub_22C3D3364();

  v32 = *(v21 + 48);
  v68 = v17;
  sub_22C90207C();
  v33 = sub_22C90221C();
  sub_22C36985C();
  v35 = *(v34 + 8);
  v36 = v34 + 8;
  v37 = v0 + v32;
  v38 = v66;
  v35(v37, v33);
  sub_22C3D3364();

  v39 = *(v21 + 48);
  sub_22C9021EC();
  v76 = v35;
  v35(&v27[v39], v33);
  v62[2] = v36;
  if (v38)
  {
    v40 = v62[0];
    sub_22C3D3364();
    v41 = *(v21 + 48);
    sub_22C633F60();
    v42 = v72;
    sub_22C38B324(v38, v43, v72);

    v76(v40 + v41, v33);
    v44 = sub_22C37EF1C();
    v45 = v71;
    if (sub_22C370B74(v44, v46, v71) != 1)
    {
      v48 = v73;
      v47 = v74;
      sub_22C51E3FC();
      v49(v48, v42, v45);
      goto LABEL_7;
    }
  }

  else
  {
    v45 = v71;
    v42 = v72;
    sub_22C36A748();
    sub_22C36C640(v50, v51, v52, v45);
  }

  v48 = v73;
  sub_22C9068FC();
  v53 = sub_22C37EF1C();
  v55 = sub_22C370B74(v53, v54, v45);
  v47 = v74;
  if (v55 != 1)
  {
    sub_22C3AC228(v42, &qword_27D9BC030, &unk_22C911CC0);
  }

LABEL_7:
  v56 = *(v21 + 48);
  v57 = v63;
  (*(v69 + 32))(v63, v68, v70);
  v58 = type metadata accessor for ActionParameterValue(0);
  sub_22C3D3310();
  (*(v47 + 32))(v57 + *(v58 + 24), v48, v45);
  v59 = sub_22C37049C();
  sub_22C36C640(v59, v60, v61, v58);
  sub_22C603848(v57, v65, v64);
  v76(v67 + v56, v33);
  sub_22C36FB20();
}

uint64_t sub_22C61DBA0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v14 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = _s5TupleVMa(0);
  v16 = *(a2 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(*(v15 - 8) + 72) * v14 + *(v15 + 24));

  sub_22C605CD4(a3, v16, MEMORY[0x277D1E968]);

  v17 = sub_22C908C5C();
  if (sub_22C370B74(v13, 1, v17) != 1)
  {
    return (*(*(v17 - 8) + 32))(a5, v13, v17);
  }

  sub_22C3AC228(v13, &qword_27D9BB628, &unk_22C920580);
  type metadata accessor for InterpreterError(0);
  sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  v18 = swift_allocError();
  v20 = v19;
  v27 = sub_22C9069AC();
  v28 = v21;
  MEMORY[0x2318B7850](14906, 0xE200000000000000);
  v25 = sub_22C90697C();
  v26 = v22 & 1;
  sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
  v23 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v23);

  v24 = v28;
  *v20 = v27;
  v20[1] = v24;
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
  *a4 = v18;
  return result;
}