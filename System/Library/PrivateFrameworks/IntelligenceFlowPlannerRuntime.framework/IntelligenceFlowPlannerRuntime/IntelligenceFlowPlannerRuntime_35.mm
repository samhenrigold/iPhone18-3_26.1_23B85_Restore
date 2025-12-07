uint64_t sub_22C6985C0()
{
  v1 = v0[35];
  v11 = v0[34];
  v12 = v0[37];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[25];
  sub_22C36DD28(v0[13], &qword_27D9BC0C0, &unk_22C911FA0);
  v5 = sub_22C372FA4();
  v6(v5);
  (*(v3 + 8))(v2, v4);
  v7 = sub_22C36BAFC();
  v8(v7);
  (*(v1 + 8))(v12, v11);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C6987E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    sub_22C36EBF0();
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C698884(uint64_t a1)
{
  v2 = sub_22C901FAC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22C908C3C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22C9093BC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_22C908C4C();
  sub_22C908BAC();
  return sub_22C908C0C();
}

uint64_t sub_22C698A0C()
{
  sub_22C369980();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  sub_22C369914(v6);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v7);
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v8);
  v1[29] = sub_22C3699D4();
  v9 = sub_22C903B1C();
  v1[30] = v9;
  sub_22C3699B8(v9);
  v1[31] = v10;
  v1[32] = sub_22C3699D4();
  v11 = sub_22C908AEC();
  v1[33] = v11;
  sub_22C3699B8(v11);
  v1[34] = v12;
  v1[35] = sub_22C3699D4();
  Converter = type metadata accessor for StructuredQueryConverter(0);
  sub_22C369914(Converter);
  v1[36] = sub_22C3699D4();
  v14 = sub_22C90069C();
  v1[37] = v14;
  sub_22C3699B8(v14);
  v1[38] = v15;
  v1[39] = sub_22C3699D4();
  v16 = sub_22C900A4C();
  v1[40] = v16;
  sub_22C3699B8(v16);
  v1[41] = v17;
  v1[42] = sub_22C36D0D4();
  v1[43] = swift_task_alloc();
  v18 = sub_22C90952C();
  v1[44] = v18;
  sub_22C3699B8(v18);
  v1[45] = v19;
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v20 = sub_22C9039FC();
  v1[49] = v20;
  sub_22C3699B8(v20);
  v1[50] = v21;
  v1[51] = sub_22C3699D4();
  v22 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v22);
  v1[52] = sub_22C36D0D4();
  v1[53] = swift_task_alloc();
  v23 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v23);
  v1[54] = sub_22C36D0D4();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v24 = sub_22C9063DC();
  v1[57] = v24;
  sub_22C3699B8(v24);
  v1[58] = v25;
  v1[59] = sub_22C36D0D4();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v26 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v26);
  v1[62] = sub_22C36D0D4();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v27 = sub_22C901FAC();
  v1[65] = v27;
  sub_22C3699B8(v27);
  v1[66] = v28;
  v1[67] = sub_22C36D0D4();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v29 = sub_22C90654C();
  v1[70] = v29;
  sub_22C3699B8(v29);
  v1[71] = v30;
  v1[72] = sub_22C36D0D4();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v31 = sub_22C9070DC();
  v1[77] = v31;
  sub_22C3699B8(v31);
  v1[78] = v32;
  v1[79] = sub_22C36D0D4();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v33 = sub_22C9093BC();
  v1[84] = v33;
  sub_22C3699B8(v33);
  v1[85] = v34;
  v1[86] = sub_22C36D0D4();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v35 = sub_22C908A0C();
  v1[93] = v35;
  sub_22C3699B8(v35);
  v1[94] = v36;
  v1[95] = sub_22C3699D4();
  v37 = sub_22C90880C();
  v1[96] = v37;
  sub_22C3699B8(v37);
  v1[97] = v38;
  v1[98] = sub_22C36D0D4();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_22C69AE14()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 904) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C69AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 888);
  v14 = *(v12 + 872);
  sub_22C71BBF8(*(v12 + 696));
  v15 = sub_22C36D264();
  v14(v15);
  swift_isUniquelyReferenced_nonNull_native();
  v16 = sub_22C6AFE00();
  sub_22C62EC0C(v16, v17, v18, v19, v20, v21, v22, v23, v177, v179, v182, v184, v186, v188);
  v24 = v13;
  v25 = sub_22C900CCC();
  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  sub_22C3704C4();
  v26 = sub_22C90098C();
  sub_22C369824();
  v28 = v27;
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C90F800;
  (*(v28 + 104))(v30 + v29, *MEMORY[0x277D36E40], v26);
  if (v25)
  {
    sub_22C36BBCC();
    sub_22C46EC84();
    v32 = v31;

    swift_setDeallocating();
    sub_22C5900BC();
    if (v32)
    {
      sub_22C907D6C();
      v33 = sub_22C3707B4();
      sub_22C36D0A8(v33, v34, v35);
      if (!v50)
      {
        v198 = v24;
        v36 = *(v12 + 824);
        v37 = *(v12 + 808);
        v38 = *(v12 + 768);
        sub_22C90878C();
        v39 = sub_22C9087DC();
        v40 = sub_22C36CA88();
        v37(v40);
        *(v12 + 144) = v39;
        sub_22C907EAC();
        sub_22C6AF978();
        sub_22C36D0A8(v41, v42, v43);
        if (v50)
        {
          sub_22C36DD28(*(v12 + 232), &qword_27D9BD760, &qword_22C922200);
        }

        else
        {
          v127 = sub_22C36CB30();
          v128(v127);

          v129 = sub_22C903A7C();
          if (v129 & 1) != 0 || (v138 = sub_22C903A1C(), v138 != 2) && (v138)
          {
            sub_22C6AF2F8();
            type metadata accessor for InterpreterError(0);
            sub_22C371B74();
            sub_22C6A4290(v130, v131, &protocol conformance descriptor for InterpreterError);
            sub_22C6AF8C8();
            sub_22C37A198();
            v132 = swift_allocError();
            sub_22C6AF828(v132, v133);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v134 = sub_22C6AF6E8();
            v135(v134);
            v136 = *(v36 + 8);
            v137 = sub_22C37FE24();
            v136(v137);
            sub_22C36FDE0();
            sub_22C6A438C();
            (v136)(v192, v38);
            sub_22C36DD28(v193, &qword_27D9BD798, &unk_22C919070);
            (*(v39 + 8))();
            goto LABEL_24;
          }

          (*(*(v12 + 248) + 8))(*(v12 + 256), *(v12 + 240));
        }

        sub_22C903F8C();
        v139 = sub_22C9063CC();
        sub_22C90AAFC();
        sub_22C37E84C();
        if (os_log_type_enabled(v139, v140))
        {
          sub_22C3720F4();
          v141 = swift_slowAlloc();
          sub_22C36C890(v141);
          sub_22C36BB14(&dword_22C366000, v142, v143, "Forcing search to 1P photos to enable photo picker.");
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v144 = sub_22C36BAFC();
        v145(v144);
        v146 = swift_allocBox();
        if (qword_27D9BA6F8 != -1)
        {
          swift_once();
        }

        v147 = *(v12 + 672);
        v148 = *(v12 + 224);
        v149 = *(v12 + 200);
        sub_22C37AA60(*(v12 + 352), qword_27D9E3FD0);
        v150 = sub_22C6AFBEC();
        v151(v150);
        *v149 = v146;
        v152 = *MEMORY[0x277D72AD0];
        v153 = sub_22C90941C();
        sub_22C36985C();
        (*(v154 + 104))(v149, v152, v153);
        sub_22C36BECC();
        sub_22C36C640(v155, v156, v157, v153);
        sub_22C69C564(v149, v148);
        sub_22C36DD28(v149, &qword_27D9BC028, &unk_22C9134B0);
        v158 = sub_22C36FD7C();
        sub_22C36D0A8(v158, v159, v147);
        if (!v50)
        {
          (*(v12 + 856))(*(v12 + 736), *(v12 + 224), *(v12 + 672));
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C6AF718();
          sub_22C370018();
          sub_22C6B017C();
          sub_22C62EC0C(v168, v169, v170, v171, v172, v173, v174, v175, v178, v180, v183, v185, v187, v189);
          goto LABEL_22;
        }

        sub_22C36DD28(*(v12 + 224), &qword_27D9BB908, &qword_22C910960);
        v160 = sub_22C36E2BC(0x6E65644965707974, 0xEF73726569666974);
        if (v161)
        {
          v162 = v160;
          v163 = *(v12 + 856);
          v164 = *(v12 + 680);
          v165 = *(v12 + 672);
          v166 = *(v12 + 216);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C3A5908(&qword_27D9BF428, &qword_22C9226E8);
          sub_22C90B15C();

          v163(v166, *(v198 + 56) + *(v164 + 72) * v162, v165);
          sub_22C36BA00();
          sub_22C90B17C();
          v167 = 0;
        }

        else
        {
          v167 = 1;
        }

        v176 = *(v12 + 216);
        sub_22C36C640(v176, v167, 1, *(v12 + 672));
        v46 = v176;
LABEL_11:
        sub_22C36DD28(v46, &qword_27D9BB908, &qword_22C910960);
        goto LABEL_22;
      }
    }
  }

  else
  {
    swift_setDeallocating();
    sub_22C5900BC();
  }

  v45 = *(v12 + 200);
  v44 = *(v12 + 208);
  sub_22C9082FC();
  sub_22C69C564(v45, v44);
  sub_22C36DD28(v45, &qword_27D9BC028, &unk_22C9134B0);
  sub_22C369A54(v44);
  if (v50)
  {
    v46 = *(v12 + 208);
    goto LABEL_11;
  }

  (*(v12 + 856))(*(v12 + 688), *(v12 + 208), *(v12 + 672));
  sub_22C9082FC();
  v47 = sub_22C90941C();
  v48 = sub_22C36CCF8();
  sub_22C36D0A8(v48, v49, v47);
  if (v50)
  {
    sub_22C36DD28(*(v12 + 192), &qword_27D9BC028, &unk_22C9134B0);
LABEL_21:
    v69 = *(v12 + 736);
    v70 = sub_22C36BAFC();
    v71(v70);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6B017C();
    sub_22C62EC0C(v69, v72, v73, v74, v75, v76, v77, v78, v178, v180, v183, v185, v187, v189);
    v79 = sub_22C36D264();
    v80(v79);
    goto LABEL_22;
  }

  v52 = *(v12 + 360);
  v51 = *(v12 + 368);
  v53 = *(v12 + 352);
  sub_22C9093DC();
  sub_22C36BBA8();
  v54 = sub_22C372164();
  v55(v54);
  sub_22C9094EC();
  v56 = swift_allocBox();
  sub_22C36BBA8();
  (*(v57 + 104))();
  *v51 = v56;
  (*(v52 + 104))(v51, *MEMORY[0x277D72D50], v53);
  sub_22C37B220();
  sub_22C5E94F0();
  v59 = v58;

  v60 = sub_22C6AEEC0();
  v61(v60);
  if ((v59 & 1) == 0 || !sub_22C900CCC() && !sub_22C900DAC())
  {
    goto LABEL_21;
  }

  sub_22C903F8C();
  v62 = sub_22C9063CC();
  v63 = sub_22C90AADC();
  if (os_log_type_enabled(v62, v63))
  {
    sub_22C3720F4();
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_22C366000, v62, v63, "Ignoring required return type since this is a file search with filter/preferred type specified", v64, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v65 = sub_22C36ECB4();
  v66(v65);
  v67 = sub_22C36BBCC();
  v68(v67);
LABEL_22:
  v81 = *(v12 + 904);
  v82 = *(v12 + 160);
  sub_22C9082EC();
  *(sub_22C4E78D0() + 16) = v82;
  sub_22C37A060();
  sub_22C7944D8();
  if (v81)
  {
    v196 = *(v12 + 760);
    v84 = *(v12 + 752);
    v195 = *(v12 + 744);
    v85 = *(v12 + 680);
    v86 = *(v12 + 424);

    v87 = *(v85 + 8);
    v88 = sub_22C36FC2C();
    v87(v88);
    sub_22C36FDE0();
    sub_22C6A438C();
    v89 = sub_22C374C34();
    v87(v89);
    sub_22C36DD28(v86, &qword_27D9BD798, &unk_22C919070);
    (*(v84 + 8))(v196, v195);

LABEL_24:
    sub_22C6AF3BC();
    sub_22C6B01A4();
    sub_22C6B0364();
    sub_22C6B01BC();
    sub_22C6AEF40(*(v12 + 280));

    sub_22C369A24();
    sub_22C372034();

    return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12);
  }

  v99 = v83;

  if (*(v99 + 16))
  {
    v100 = *(v12 + 872);
    v197 = *(v12 + 856);
    v194 = *(v12 + 840);
    v101 = *(v12 + 736);
    v102 = *(v12 + 728);
    v103 = *(v12 + 672);
    sub_22C90906C();
    v191 = swift_allocBox();
    sub_22C36BA94();
    v104 = sub_22C6AFF38();
    v100(v104);
    sub_22C6B0310();
    sub_22C90935C();
    v105 = sub_22C37B220();
    v190 = v106;
    v106(v105);
    sub_22C51E290();
    sub_22C90903C();
    *v101 = v191;
    v194(v101, *MEMORY[0x277D729E0], v103);
    v107 = sub_22C36BAFC();
    v197(v107);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    sub_22C62EC0C(v102, 0xD000000000000013, 0x800000022C9338B0, v108, v109, v110, v111, v112, v178, v180, v183, v185, v187, v189);
  }

  else
  {
    v113 = *(v12 + 680);

    v190 = *(v113 + 8);
  }

  v114 = *(v12 + 760);
  v115 = *(v12 + 752);
  v181 = *(v12 + 744);
  sub_22C6B01A4();
  sub_22C6B0364();
  sub_22C6B01BC();
  v116 = *(v12 + 424);
  sub_22C6AEF40(*(v12 + 280));
  v117 = sub_22C36FC08();
  v190(v117);
  sub_22C36FDE0();
  sub_22C6A438C();
  v118 = sub_22C36EC8C();
  v190(v118);
  sub_22C36DD28(v116, &qword_27D9BD798, &unk_22C919070);
  (*(v115 + 8))(v114, v181);

  sub_22C6B03C8();
  sub_22C372034();

  return v121(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12);
}

uint64_t sub_22C69C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_22C6AFA14();
  sub_22C6AFDF4();
  v57 = v56[53];
  (*(v56[85] + 8))(v56[88], v56[84]);
  sub_22C36DD28(v57, &qword_27D9BD798, &unk_22C919070);
  v58 = sub_22C36BBCC();
  v59(v58);
  v118 = v56[113];
  sub_22C6AF3BC();
  v77 = v61;
  v78 = v60;
  v79 = v56[82];
  v80 = v56[81];
  v81 = v56[80];
  v82 = v56[79];
  v83 = v56[76];
  v84 = v56[75];
  sub_22C6B01A4();
  v85 = v63;
  v86 = v62;
  sub_22C6B0364();
  v87 = v65;
  v88 = v64;
  sub_22C6B01BC();
  v89 = v67;
  v90 = v66;
  v91 = v56[64];
  v92 = v56[63];
  v93 = v56[62];
  v94 = v56[61];
  v95 = v56[60];
  v96 = v56[59];
  v97 = v56[56];
  v98 = v56[55];
  v99 = v56[54];
  v100 = v56[53];
  v101 = v56[52];
  v102 = v56[51];
  v103 = v56[48];
  v104 = v56[47];
  v105 = v56[46];
  v106 = v56[43];
  v107 = v56[42];
  v108 = v56[39];
  v109 = v56[36];
  v110 = v56[35];
  v111 = v56[32];
  v112 = v56[29];
  v113 = v56[28];
  v114 = v56[27];
  v115 = v56[26];
  v116 = v56[25];
  v117 = v56[24];

  sub_22C375A9C();
  sub_22C6AF3FC();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, a53, a54, a55, a56);
}

void sub_22C69C310()
{
  sub_22C36BA7C();
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C37B6BC();
  v2 = sub_22C908A0C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C370654();
  v6 = sub_22C9087DC();
  v7 = 0;
  v20 = *(v6 + 16);
  v19 = *MEMORY[0x277D1E710];
  v18 = *MEMORY[0x277D1E730];
  v17 = *MEMORY[0x277D1E7C0];
  while (1)
  {
    if (v20 == v7)
    {

      goto LABEL_11;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    sub_22C36BA94();
    (*(v4 + 16))(v0, v6 + v8 + *(v4 + 72) * v7, v2);
    sub_22C6AF7EC();
    sub_22C9089EC();
    (*(v4 + 8))(v0, v2);
    v9 = sub_22C36A724();
    if (v10(v9) == v19 || (sub_22C6B01F4(), v12) || v11 == v18 || v11 == v17)
    {

      v15 = sub_22C36A724();
      v16(v15);
LABEL_11:
      sub_22C36CC48();
      return;
    }

    v13 = sub_22C36A724();
    v14(v13);
    ++v7;
  }

  __break(1u);
}

uint64_t sub_22C69C564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v30 = sub_22C9093BC();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_22C90952C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_22C6AEA50(a1, v7, &qword_27D9BC028, &unk_22C9134B0);
  v16 = sub_22C90941C();
  if (sub_22C370B74(v7, 1, v16) == 1)
  {
    sub_22C36DD28(v7, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C36C640(v10, 1, 1, v11);
LABEL_4:
    sub_22C36DD28(v10, &qword_27D9BB0C0, &qword_22C90D960);
    goto LABEL_5;
  }

  v17 = sub_22C9093DC();
  (*(*(v16 - 8) + 8))(v7, v16);
  sub_22C58B0F8(v17);

  if (sub_22C370B74(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v15, v10, v11);
  v22 = sub_22C69E818();
  if (v22)
  {
    v23 = v22;
    if (*(v22 + 16))
    {
      sub_22C90906C();
      v28 = swift_allocBox();
      v24 = v27;
      v25 = v30;
      (*(v27 + 16))(v4, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v30);
      sub_22C90935C();
      (*(v24 + 8))(v4, v25);
      sub_22C90903C();
      (*(v12 + 8))(v15, v11);
      v26 = v29;
      *v29 = v28;
      (*(v24 + 104))(v26, *MEMORY[0x277D729E0], v25);
      v18 = v26;
      v20 = 0;
      v19 = v25;
      return sub_22C36C640(v18, v20, 1, v19);
    }

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

LABEL_5:
  v18 = v29;
  v19 = v30;
  v20 = 1;
  return sub_22C36C640(v18, v20, 1, v19);
}

uint64_t sub_22C69C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v261 = a3;
  v258 = a2;
  v262 = sub_22C90919C();
  v227 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v226 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF810, &qword_22C923140);
  MEMORY[0x28223BE20](v5 - 8);
  v239 = &v221 - v6;
  v236 = sub_22C900C1C();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v237 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_22C900B1C();
  MEMORY[0x28223BE20](v241);
  v240 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90931C();
  v267 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v231 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v11 - 8);
  v229 = &v221 - v12;
  v243 = sub_22C9063DC();
  v242 = *(v243 - 8);
  v13 = MEMORY[0x28223BE20](v243);
  v232 = &v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v224 = &v221 - v16;
  MEMORY[0x28223BE20](v15);
  v233 = &v221 - v17;
  v253 = sub_22C90906C();
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v247 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for TranscriptValueFetcher(0);
  MEMORY[0x28223BE20](v256);
  v255 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v20 - 8);
  v257 = (&v221 - v21);
  v22 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v22 - 8);
  v263 = (&v221 - v23);
  v24 = sub_22C901FAC();
  v269 = *(v24 - 8);
  v270 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v225 = &v221 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v223 = &v221 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v221 - v30;
  MEMORY[0x28223BE20](v29);
  v268 = &v221 - v31;
  v32 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v32 - 8);
  v271 = &v221 - v33;
  v34 = sub_22C90952C();
  v272 = *(v34 - 8);
  v273 = v34;
  MEMORY[0x28223BE20](v34);
  v274 = (&v221 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_22C9093BC();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v246 = &v221 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v245 = &v221 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v238 = (&v221 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v250 = &v221 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v249 = &v221 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v259 = &v221 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v221 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = (&v221 - v53);
  v55 = swift_allocBox();
  v57 = v56;
  *v56 = sub_22C90825C();
  v57[1] = v58;
  v59 = *(v267 + 104);
  v230 = *MEMORY[0x277D729B8];
  v251 = v9;
  v59(v57);
  *v54 = v55;
  v61 = v37 + 104;
  v60 = *(v37 + 104);
  v244 = *MEMORY[0x277D72A58];
  v275 = v60;
  v60(v54);
  v254 = v37;
  v63 = *(v37 + 32);
  v62 = v37 + 32;
  v276 = v36;
  v266 = v63;
  v63(v52, v54, v36);
  v64 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v277 = v64;
  sub_22C62EC0C(v52, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v66, v67, v68, v69, v221, v222, v223, v224, v225, v226);
  v70 = v277;
  v264 = a1;
  v71 = sub_22C90826C();
  v72 = MEMORY[0x277D72D28];
  v260 = v61;
  v234 = v52;
  if (v73)
  {
    v265 = v71;
    sub_22C9090BC();
    v248 = swift_allocBox();
    v74 = swift_allocObject();
    v74[2] = 0xD000000000000028;
    v74[3] = 0x800000022C92EB40;
    v74[4] = 0xD000000000000012;
    v74[5] = 0x800000022C933990;
    v75 = v273;
    v76 = v274;
    *v274 = v74;
    (*(v272 + 104))(v76, *v72, v75);
    v77 = sub_22C90993C();
    sub_22C36C640(v271, 1, 1, v77);
    v78 = v276;
    sub_22C90909C();
    *v54 = v248;
    v275(v54, *MEMORY[0x277D729E8], v78);
    v266(v52, v54, v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v277 = v70;
    sub_22C62EC0C(v52, 1701869940, 0xE400000000000000, v79, v80, v81, v82, v83, v221, v222, v223, v224, v225, v226);
    v265 = v277;
  }

  else
  {
    v265 = v70;
  }

  v84 = v263;
  sub_22C90823C();
  v85 = v270;
  v86 = sub_22C370B74(v84, 1, v270);
  v87 = v269;
  if (v86 == 1)
  {
    v88 = v84;
    v89 = &qword_27D9BC030;
    v90 = &unk_22C911CC0;
LABEL_8:
    sub_22C36DD28(v88, v89, v90);
    v96 = v271;
    v97 = v274;
    v98 = v261;
LABEL_9:
    v99 = swift_allocBox();
    v100 = swift_allocObject();
    v100[2] = 0xD000000000000028;
    v100[3] = 0x800000022C92EB40;
    v100[4] = 0xD000000000000015;
    v100[5] = 0x800000022C933910;
    *v97 = v100;
    (*(v272 + 104))(v97, *MEMORY[0x277D72D28], v273);
    v101 = sub_22C90993C();
    sub_22C36C640(v96, 1, 1, v101);
    sub_22C90917C();
    *v98 = v99;
    v102 = v276;
    v275(v98, *MEMORY[0x277D72A38], v276);
    return sub_22C36C640(v98, 0, 1, v102);
  }

  v264 = v62;
  v91 = v268;
  (*(v269 + 32))(v268, v84, v85);
  v92 = v255;
  sub_22C90878C();
  sub_22C908C5C();
  sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
  *&v92[*(v256 + 20)] = sub_22C909F0C();
  v93 = v257;
  sub_22C729D78(v91, v257);
  sub_22C6A438C();
  v94 = v85;
  v95 = sub_22C9025EC();
  if (sub_22C370B74(v93, 1, v95) == 1)
  {
    (*(v87 + 8))(v268, v94);
    v89 = &qword_27D9BF610;
    v90 = &qword_22C922B50;
    v88 = v93;
    goto LABEL_8;
  }

  v222 = v54;
  v104 = v249;
  sub_22C90207C();
  (*(*(v95 - 8) + 8))(v93, v95);
  v105 = v259;
  v106 = v276;
  v266(v259, v104, v276);
  v107 = v254;
  v108 = v254 + 16;
  v109 = v250;
  v263 = *(v254 + 16);
  v263(v250, v105, v106);
  v110 = *(v107 + 88);
  if (v110(v109, v106) == *MEMORY[0x277D729E0])
  {
    (*(v107 + 96))(v109, v276);
    v111 = swift_projectBox();
    v112 = v247;
    (*(v252 + 16))(v247, v111, v253);

    v113 = *(sub_22C90905C() + 16);

    v114 = v251;
    if (v113 >= 2)
    {

      v115 = v233;
      sub_22C903F8C();
      v116 = v269;
      v117 = v228;
      v118 = v270;
      (*(v269 + 16))(v228, v268, v270);
      v119 = sub_22C9063CC();
      v120 = sub_22C90AADC();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v277 = v122;
        *v121 = 136315138;
        sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v123 = sub_22C90B47C();
        v124 = v117;
        v126 = v125;
        v127 = *(v116 + 8);
        v127(v124, v118);
        v128 = sub_22C36F9F4(v123, v126, &v277);

        *(v121 + 4) = v128;
        _os_log_impl(&dword_22C366000, v119, v120, "Collection with multiple elements passed into search call as hydration context: %s", v121, 0xCu);
        sub_22C36FF94(v122);
        MEMORY[0x2318B9880](v122, -1, -1);
        MEMORY[0x2318B9880](v121, -1, -1);

        v129 = *(v242 + 8);
        v130 = &v264;
LABEL_23:
        v157 = *(v130 - 32);
LABEL_25:
        v129(v157, v243);
        type metadata accessor for InterpreterError(0);
        sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v252 + 8))(v247, v253);
        (*(v254 + 8))(v259, v276);
        return (v127)(v268, v118);
      }

      goto LABEL_24;
    }

    v258 = v108;
    v147 = sub_22C90905C();
    v148 = v229;
    sub_22C58B008(v147, v229);

    if (sub_22C370B74(v148, 1, v276) == 1)
    {

      sub_22C36DD28(v148, &qword_27D9BB908, &qword_22C910960);
      v115 = v224;
      sub_22C903F8C();
      v116 = v269;
      v117 = v223;
      v118 = v270;
      (*(v269 + 16))(v223, v268, v270);
      v119 = sub_22C9063CC();
      v149 = sub_22C90AADC();
      if (os_log_type_enabled(v119, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v277 = v151;
        *v150 = 136315138;
        sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v152 = sub_22C90B47C();
        v153 = v117;
        v155 = v154;
        v127 = *(v116 + 8);
        v127(v153, v118);
        v156 = sub_22C36F9F4(v152, v155, &v277);

        *(v150 + 4) = v156;
        _os_log_impl(&dword_22C366000, v119, v149, "Empty collection passed into search call as hydration context: %s", v150, 0xCu);
        sub_22C36FF94(v151);
        MEMORY[0x2318B9880](v151, -1, -1);
        MEMORY[0x2318B9880](v150, -1, -1);

        v129 = *(v242 + 8);
        v130 = &v256;
        goto LABEL_23;
      }

LABEL_24:

      v158 = *(v116 + 8);
      v158(v117, v118);
      v127 = v158;
      v129 = *(v242 + 8);
      v157 = v115;
      goto LABEL_25;
    }

    (*(v252 + 8))(v112, v253);
    v107 = v254;
    v219 = v148;
    v220 = v276;
    v257 = *(v254 + 8);
    (v257)(v105, v276);
    v131 = v105;
    v266(v105, v219, v220);
  }

  else
  {
    v131 = v105;
    v257 = *(v107 + 8);
    v258 = v108;
    (v257)(v109, v276);
    v114 = v251;
  }

  v132 = v246;
  v133 = v245;
  v134 = v276;
  v263(v245, v131, v276);
  v135 = v110(v133, v134);
  if (v135 == v244)
  {
    (*(v107 + 96))(v133, v276);
    v136 = swift_projectBox();
    v137 = v267;
    v138 = v231;
    (*(v267 + 16))(v231, v136, v114);
    v139 = (*(v137 + 88))(v138, v114);
    if (v139 == v230)
    {
      (*(v137 + 96))(v138, v114);

      v140 = swift_allocBox();
      (*(v235 + 104))(v237, *MEMORY[0x277D36F70], v236);
      v141 = sub_22C90084C();
      sub_22C36C640(v239, 1, 1, v141);
      sub_22C900B0C();
      v142 = 0x800000022C92EB40;
      sub_22C6A4290(&qword_27D9BF818, MEMORY[0x277D36F08], MEMORY[0x277D36F00]);
      sub_22C90916C();
      v143 = v238;
      *v238 = v140;
      LODWORD(v267) = *MEMORY[0x277D72A38];
      v96 = v271;
      v144 = v275;
LABEL_29:
      v177 = v276;
      v144(v143, v267, v276);
      v271 = "searchAnswerValue";
      v255 = swift_allocBox();
      v253 = v178;
      v179 = swift_allocObject();
      v179[2] = 0xD000000000000028;
      v179[3] = v142;
      v256 = 0xD000000000000010;
      v179[4] = 0xD000000000000010;
      v179[5] = 0x800000022C933970;
      v180 = v273;
      v181 = v274;
      *v274 = v179;
      (*(v272 + 104))(v181, *MEMORY[0x277D72D28], v180);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v182 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v183 = (*(*v182 + 80) + 32) & ~*(*v182 + 80);
      v184 = swift_allocObject();
      *(v184 + 16) = xmmword_22C90F800;
      v185 = (v184 + v183);
      v186 = v182[14];
      *v185 = 0x797469746E65;
      v185[1] = 0xE600000000000000;
      v263((v184 + v183 + v186), v143, v177);
      sub_22C909F0C();
      v187 = sub_22C90993C();
      sub_22C36C640(v96, 1, 1, v187);
      sub_22C90917C();
      v188 = v222;
      *v222 = v255;
      v275(v188, v267, v177);
      v189 = v234;
      v266(v234, v188, v177);
      v190 = v265;
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v277 = v190;
      sub_22C62EC0C(v189, v256, v271 | 0x8000000000000000, v191, v192, v193, v194, v195, v221, v222, v223, v224, v225, v226);
      v196 = v257;
      (v257)(v143, v177);
      v196(v259, v177);
      (*(v269 + 8))(v268, v270);
      v98 = v261;
      v97 = v274;
      goto LABEL_9;
    }

    (*(v137 + 8))(v138, v114);

    v131 = v259;
    v146 = v257;
    v132 = v246;
  }

  else
  {
    v145 = v133;
    v146 = v257;
    (v257)(v145, v276);
  }

  v159 = v276;
  v263(v132, v131, v276);
  v160 = v110(v132, v159);
  v161 = *MEMORY[0x277D72A38];
  v257 = v146;
  if (v160 == v161)
  {
    LODWORD(v267) = v160;
    v162 = v132;
    v163 = v276;
    (v146)(v162, v276);
    (*(v235 + 104))(v237, *MEMORY[0x277D36F68], v236);
    v164 = sub_22C90084C();
    sub_22C36C640(v239, 1, 1, v164);
    sub_22C900B0C();
    v256 = 0x800000022C92EB40;
    sub_22C6A4290(&qword_27D9BF818, MEMORY[0x277D36F08], MEMORY[0x277D36F00]);
    v165 = v226;
    sub_22C90916C();
    v166 = sub_22C90914C();
    v167 = v222;
    v263(v222, v131, v163);
    v168 = swift_isUniquelyReferenced_nonNull_native();
    v277 = v166;
    sub_22C62EC0C(v167, 0xD000000000000011, 0x800000022C933930, v168, v169, v170, v171, v172, v221, v222, v223, v224, v225, v226);
    v253 = v277;
    v173 = v262;
    v255 = swift_allocBox();
    sub_22C9090AC();
    sub_22C90908C();
    v174 = sub_22C90993C();
    v175 = v271;
    sub_22C36C640(v271, 1, 1, v174);
    v144 = v275;
    v96 = v175;
    sub_22C90917C();
    v176 = v165;
    v142 = v256;
    (*(v227 + 8))(v176, v173);
    v143 = v238;
    *v238 = v255;
    goto LABEL_29;
  }

  v197 = (v107 + 8);
  (v146)(v132, v276);
  v198 = v232;
  sub_22C903F8C();
  v199 = v269;
  v200 = v225;
  v201 = v270;
  (*(v269 + 16))(v225, v268, v270);
  v202 = sub_22C9063CC();
  v203 = sub_22C90AADC();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = v200;
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v275 = v197;
    v207 = v206;
    v277 = v206;
    *v205 = 136315138;
    sub_22C6A4290(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
    v208 = v204;
    v209 = sub_22C90B47C();
    v211 = v210;
    v212 = *(v199 + 8);
    v212(v208, v270);
    v213 = sub_22C36F9F4(v209, v211, &v277);
    v214 = v259;

    *(v205 + 4) = v213;
    _os_log_impl(&dword_22C366000, v202, v203, "Non-string and non-entity value passed into search call as hydration context: %s", v205, 0xCu);
    sub_22C36FF94(v207);
    v215 = v207;
    v201 = v270;
    MEMORY[0x2318B9880](v215, -1, -1);
    v216 = v205;
    v217 = v214;
    v218 = v257;
    MEMORY[0x2318B9880](v216, -1, -1);

    (*(v242 + 8))(v232, v243);
  }

  else
  {

    v212 = *(v199 + 8);
    v212(v200, v201);
    (*(v242 + 8))(v198, v243);
    v217 = v259;
    v218 = v257;
  }

  type metadata accessor for InterpreterError(0);
  sub_22C6A4290(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v218(v217, v276);
  return (v212)(v268, v201);
}

uint64_t sub_22C69E818()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v120 = &v93[-v1];
  v2 = sub_22C9094EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v121 = &v93[-v7];
  v8 = sub_22C90952C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v93[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v93[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v93[-v16];
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000028;
  v18[3] = 0x800000022C92EB40;
  v18[4] = 0xD00000000000001ALL;
  v18[5] = 0x800000022C9339B0;
  *v17 = v18;
  v19 = *MEMORY[0x277D72D28];
  (*(v9 + 104))(v17, *MEMORY[0x277D72D28], v8);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v15);
  v20 = (*(v9 + 88))(v15, v8);
  if (v20 != *MEMORY[0x277D72D50])
  {
    if (v20 == v19)
    {
      (*(v9 + 96))(v15, v8);
      v116 = *v15;
      v62 = v116[3];
      v108 = v116[2];
      v105 = v62;
      v63 = v116[4];
      v112 = v116[5];
      v113 = v63;
      sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
      v110 = sub_22C9093BC();
      v121 = *(v110 - 8);
      v115 = (v121[80] + 32) & ~v121[80];
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_22C90F800;
      sub_22C90919C();
      v114 = swift_allocBox();
      v111 = v64;
      (*(v9 + 16))(v12, v17, v8);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v65 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v66 = *v65;
      v106 = *(*v65 + 72);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      v107 = v68;
      *(v68 + 16) = xmmword_22C90F870;
      v118 = v8;
      v69 = (v68 + v67);
      v70 = v65[14];
      *v69 = 0x6449656C646E7562;
      v69[1] = 0xE800000000000000;
      v71 = sub_22C90931C();
      v117 = v12;
      v72 = v71;
      v73 = swift_allocBox();
      v119 = v17;
      v74 = v73;
      *v75 = v108;
      v75[1] = v62;
      v76 = *MEMORY[0x277D729B8];
      v77 = *(v72 - 8);
      v108 = v9;
      v78 = *(v77 + 104);
      v78(v75, v76, v72);
      *(v69 + v70) = v74;
      v79 = *MEMORY[0x277D72A58];
      v80 = *(v121 + 13);
      v121 += 104;
      v104 = v80;
      v81 = v69 + v70;
      v82 = v110;
      v80(v81, v79, v110);
      v83 = (v69 + v106);
      v84 = v65[14];
      *v83 = 0x656D614E65707974;
      v83[1] = 0xE800000000000000;
      v85 = swift_allocBox();
      v86 = v112;
      *v87 = v113;
      v87[1] = v86;
      v78(v87, v76, v72);
      v43 = v109;
      *(v83 + v84) = v85;
      v88 = v104;
      v104(v83 + v84, v79, v82);

      sub_22C909F0C();
      v89 = sub_22C90993C();
      sub_22C36C640(v120, 1, 1, v89);
      sub_22C90917C();
      v90 = v115;
      *(v43 + v115) = v114;
      v88(v43 + v90, *MEMORY[0x277D72A38], v82);
      (*(v108 + 8))(v119, v118);
      goto LABEL_6;
    }

    v91 = *(v9 + 8);
    v91(v17, v8);
    v91(v15, v8);
    return 0;
  }

  (*(v9 + 96))(v15, v8);
  v116 = *v15;
  v21 = swift_projectBox();
  v22 = v3;
  v23 = *(v3 + 16);
  v24 = v121;
  v23(v121, v21, v2);
  v23(v6, v24, v2);
  v25 = (*(v22 + 88))(v6, v2);
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v26 = v28;
  if (v25 != *MEMORY[0x277D72CC0])
  {
    v26(v121, v2);
    (*(v9 + 8))(v17, v8);
    v26(v6, v2);

    return 0;
  }

  v106 = 0x800000022C9339D0;
  v112 = 0x800000022C933A00;
  v26(v6, v2);
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v114 = v26;
  v115 = sub_22C9093BC();
  v98 = *(v115 - 8);
  v113 = *(v98 + 72);
  v29 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C90F870;
  v107 = (v30 + v29);
  v110 = sub_22C90919C();
  v31 = swift_allocBox();
  v104 = v32;
  v105 = v31;
  v33 = *(v9 + 16);
  v108 = v9 + 16;
  v109 = v33;
  v33(v12, v17, v8);
  v102 = sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
  v34 = sub_22C3A5908(&qword_27D9BF828, &unk_22C923150);
  v119 = v17;
  v35 = v34 - 8;
  v36 = *(v34 - 8);
  v103 = *(v36 + 72);
  v101 = *(v36 + 80);
  v37 = (v101 + 32) & ~v101;
  v99 = v37;
  v38 = swift_allocObject();
  v111 = v27;
  v100 = xmmword_22C90F800;
  *(v38 + 16) = xmmword_22C90F800;
  v39 = (v38 + v37);
  v118 = v8;
  v40 = *(v35 + 56);
  *v39 = 0x6449656C646E7562;
  *(v39 + 1) = 0xE800000000000000;
  v41 = sub_22C90931C();
  v42 = swift_allocBox();
  v117 = v12;
  v43 = v30;
  v44 = v42;
  v45 = v106;
  *v46 = 0xD00000000000002BLL;
  v46[1] = v45;
  v96 = *MEMORY[0x277D729B8];
  v47 = *(v41 - 8);
  v95 = *(v47 + 104);
  v106 = v2;
  v97 = v47 + 104;
  v95(v46);
  *&v39[v40] = v44;
  v94 = *MEMORY[0x277D72A58];
  v48 = *(v98 + 104);
  v48(&v39[v40]);
  sub_22C909F0C();
  v98 = sub_22C90993C();
  sub_22C36C640(v120, 1, 1, v98);
  v49 = v117;
  sub_22C90917C();
  v50 = v107;
  *v107 = v105;
  LODWORD(v105) = *MEMORY[0x277D72A38];
  v48(v50);
  v110 = swift_allocBox();
  v104 = v51;
  (v109)(v49, v119, v118);
  v52 = v99;
  v53 = swift_allocObject();
  *(v53 + 16) = v100;
  v54 = (v53 + v52);
  v55 = *(v35 + 56);
  *v54 = 0x6449656C646E7562;
  v54[1] = 0xE800000000000000;
  v56 = swift_allocBox();
  v57 = v112;
  *v58 = 0xD000000000000023;
  v58[1] = v57;
  (v95)(v58, v96, v41);
  *(v54 + v55) = v56;
  v59 = v54 + v55;
  v60 = v115;
  (v48)(v59, v94, v115);
  sub_22C909F0C();
  sub_22C36C640(v120, 1, 1, v98);
  sub_22C90917C();
  v61 = v113;
  *&v50[v113] = v110;
  (v48)(&v50[v61], v105, v60);
  v114(v121, v106);
  (*(v9 + 8))(v119, v118);
LABEL_6:

  return v43;
}

uint64_t sub_22C69F490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v38 = sub_22C901FAC();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9089DC();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22C906A3C();
  v31 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C908A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9087DC();
  v14 = *(v13 + 16);
  if (v14)
  {
    v30[0] = a2;
    v30[1] = v2;
    v46 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v44 = v11 + 8;
    v45 = v11 + 16;
    v43 = (v41 + 11);
    v42 = *MEMORY[0x277D1E720];
    v34 = (v41 + 12);
    v35 = (v41 + 1);
    v41 = (v31 + 4);
    v32 = v11;
    ++v33;
    ++v31;
    v15 = v9;
    a2 = v13;
    v36 = v13;
    while (v14 <= *(a2 + 16))
    {
      --v14;
      v16 = v47;
      (*(v11 + 16))(v47, v46 + *(v11 + 72) * v14, v10);
      sub_22C9089EC();
      (*(v11 + 8))(v16, v10);
      v17 = (*v43)(v7, v5);
      if (v17 == v42)
      {
        v18 = v10;
        v19 = v5;
        (*v34)(v7, v5);
        v20 = v15;
        v21 = *v41;
        v22 = v7;
        v23 = v7;
        v24 = v40;
        (*v41)(v20, v23, v40);
        v25 = v37;
        sub_22C9068FC();
        v26 = sub_22C901F6C();
        (*v33)(v25, v38);
        if (v26)
        {

          a2 = v30[0];
          v21(v30[0], v20, v24);
          v27 = 0;
          v28 = v24;
          return sub_22C36C640(a2, v27, 1, v28);
        }

        (*v31)(v20, v24);
        v5 = v19;
        v15 = v20;
        v7 = v22;
        v10 = v18;
        v11 = v32;
        a2 = v36;
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v35)(v7, v5);
        if (!v14)
        {
LABEL_9:

          v27 = 1;
          a2 = v30[0];
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  v27 = 1;
LABEL_10:
  v28 = v40;
  return sub_22C36C640(a2, v27, 1, v28);
}

uint64_t sub_22C69F92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v104 = a3;
  v5 = sub_22C90769C();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - v9;
  v11 = sub_22C908A7C();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v83 - v14;
  v15 = sub_22C9063DC();
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v83 - v19;
  v94 = sub_22C9099FC();
  v87 = *(v94 - 8);
  v20 = MEMORY[0x28223BE20](v94);
  v86 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v83 - v22;
  v23 = sub_22C908DAC();
  v96 = *(v23 - 8);
  v97 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v84 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = &v83 - v26;
  v99 = sub_22C908EAC();
  v27 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  v33 = a1;
  v92 = a2;
  sub_22C908ADC();
  v34 = sub_22C908ABC();
  if (sub_22C370B74(v32, 1, v34) == 1)
  {
    sub_22C903F8C();
    v35 = v103[2];
    v35(v10, v33, v102);
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v105 = v39;
      *v38 = 136315138;
      v40 = v10;
      v99 = v18;
      v41 = v10;
      v42 = v102;
      v35(v98, v40, v102);
      v43 = sub_22C90A1AC();
      v45 = v44;
      (v103[1])(v41, v42);
      v46 = sub_22C36F9F4(v43, v45, &v105);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_22C366000, v36, v37, "no tool found for %s", v38, 0xCu);
      sub_22C36FF94(v39);
      MEMORY[0x2318B9880](v39, -1, -1);
      MEMORY[0x2318B9880](v38, -1, -1);

      result = (*(v100 + 8))(v99, v101);
    }

    else
    {

      (v103[1])(v10, v102);
      result = (*(v100 + 8))(v18, v101);
    }

    v53 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v48 = *(v34 - 8);
  v49 = (*(v48 + 88))(v32, v34);
  if (v49 == *MEMORY[0x277D1E8E0] || v49 == *MEMORY[0x277D1E8C8])
  {
    (*(v48 + 96))(v32, v34);
    v50 = *(v27 + 32);
    v51 = v99;
    v50(v29, v32, v99);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v52 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22C90F800;
    result = (v50)(v53 + v52, v29, v51);
LABEL_9:
    *v104 = v53;
    return result;
  }

  if (v49 == *MEMORY[0x277D1E8D0])
  {
    (*(v48 + 96))(v32, v34);
    v54 = v95;
    (*(v96 + 32))(v95, v32, v97);
    v55 = v93;
    sub_22C908D7C();
    sub_22C9099DC();
    v56 = *(v87 + 8);
    v57 = v94;
    v56(v55, v94);
    v58 = v86;
    sub_22C908D7C();
    sub_22C9099EC();
    v56(v58, v57);
    v59 = v92;
    v60 = sub_22C908A9C();

    if (v60)
    {
      MEMORY[0x28223BE20](v61);
      *(&v83 - 2) = v59;
      v53 = sub_22C47B8F0(sub_22C6AE7D8, (&v83 - 4), v60);
      result = (*(v96 + 8))(v54, v97);
    }

    else
    {
      v69 = v85;
      sub_22C903F8C();
      v70 = v96;
      v71 = v97;
      v72 = v84;
      (*(v96 + 16))(v84, v54, v97);
      v73 = sub_22C9063CC();
      v74 = sub_22C90AADC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = v70;
        v76 = v72;
        v77 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v105 = v103;
        *v77 = 136315138;
        sub_22C908D7C();
        v102 = sub_22C90A1AC();
        v79 = v78;
        v80 = *(v75 + 8);
        v80(v76, v97);
        v81 = sub_22C36F9F4(v102, v79, &v105);
        v71 = v97;

        *(v77 + 4) = v81;
        _os_log_impl(&dword_22C366000, v73, v74, "no tools found for schema %s", v77, 0xCu);
        v82 = v103;
        sub_22C36FF94(v103);
        MEMORY[0x2318B9880](v82, -1, -1);
        MEMORY[0x2318B9880](v77, -1, -1);
      }

      else
      {

        v80 = *(v70 + 8);
        v80(v72, v71);
      }

      (*(v100 + 8))(v69, v101);
      result = (v80)(v95, v71);
      v53 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  if (v49 == *MEMORY[0x277D1E8D8])
  {
    (*(v48 + 96))(v32, v34);
    v63 = v89;
    v62 = v90;
    v64 = v91;
    (*(v90 + 32))(v89, v32, v91);
    v65 = v88;
    (*(v62 + 16))(v88, v63, v64);
    if ((*(v62 + 88))(v65, v64) == *MEMORY[0x277D1E8B8])
    {
      (*(v62 + 96))(v65, v64);
      v66 = *(v27 + 32);
      v67 = v99;
      v66(v29, v65, v99);
      sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
      v68 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_22C90F800;
      v66((v53 + v68), v29, v67);
      result = (*(v62 + 8))(v63, v64);
      goto LABEL_9;
    }
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C6A04B0(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ToolResolver.run", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_22C6A0854()
{
  sub_22C36BA7C();
  v30 = v1;
  v36 = sub_22C901FAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v31 = v5;
  sub_22C36BA0C();
  v34 = sub_22C90654C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C36D83C();
  v33 = sub_22C9070DC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90887C();
  v16 = 0;
  v35 = *(v15 + 16);
  v32 = *MEMORY[0x277D1DA48];
  v17 = (v3 + 8);
  while (1)
  {
    if (v35 == v16)
    {
LABEL_6:

      v24 = 1;
      v25 = v30;
LABEL_8:
      sub_22C36C640(v25, v24, 1, v36);
      sub_22C36CC48();
      return;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    sub_22C36BA94();
    (*(v10 + 16))(v14, v15 + v18 + *(v10 + 72) * v16, v33);
    sub_22C6AFEF0();
    sub_22C90702C();
    if ((*(v7 + 88))(v0, v34) == v32)
    {

      v26 = sub_22C37A27C();
      v27(v26, v34);
      v25 = v30;
      sub_22C9068FC();
      v28 = sub_22C385558();
      v29(v28, v33);
      v24 = 0;
      goto LABEL_8;
    }

    ++v16;
    v19 = sub_22C37A27C();
    v20(v19, v34);
    sub_22C9068FC();
    v21 = sub_22C901F6C();
    (*v17)(v31, v36);
    v22 = sub_22C385558();
    v23(v22, v33);
    if (v21)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_22C6A0B4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22C90880C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v7 = sub_22C9087DC();
  (*(v4 + 8))(v6, v3);
  v10[1] = v7;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  v8 = sub_22C907E6C();

  *a2 = v8;
  return result;
}

void sub_22C6A0CB0()
{
  sub_22C36BA7C();
  v33 = v2;
  v34 = v3;
  v32 = sub_22C901FAC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v31 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v30 = v9;
  v10 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C37F478();
  v12 = sub_22C901FBC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C382784();
  v16 = sub_22C9026BC();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C387210();
  v20 = sub_22C907DEC();
  v21 = sub_22C369914(v20);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v22 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C37B6BC();
  v24 = sub_22C90069C();
  sub_22C6AEF78(v24);
  (*(v14 + 104))(v1, *MEMORY[0x277D1C3A0], v12);
  sub_22C36BD58();
  sub_22C901FFC();
  (*(v18 + 104))(v0, *MEMORY[0x277D1CBE8], v16);
  sub_22C9026AC();
  sub_22C6AFB90();
  sub_22C36A748();
  sub_22C36C640(v25, v26, v27, v28);
  sub_22C6AF3F0();
  sub_22C907DCC();
  v29 = *(v5 + 16);
  v29(v30, v33, v32);
  v29(v31, v34, v32);
  sub_22C36BB08();
  sub_22C906E4C();
  sub_22C36CC48();
}

uint64_t sub_22C6A0FAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C90880C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  sub_22C68D3A0(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22C6A10B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v130) = a4;
  v131 = a3;
  v128 = a2;
  v124 = a1;
  v116 = sub_22C9069BC();
  v104 = *(v116 - 8);
  v4 = MEMORY[0x28223BE20](v116);
  v129 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v134 = &v93 - v6;
  v7 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = &v93 - v8;
  v9 = sub_22C908C3C();
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  MEMORY[0x28223BE20](v122);
  v103 = (&v93 - v11);
  v12 = sub_22C3A5908(&qword_27D9BF7B0, &unk_22C923060);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v121 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v93 - v15;
  v123 = sub_22C9093BC();
  v105 = *(v123 - 8);
  v17 = MEMORY[0x28223BE20](v123);
  v118 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = (&v93 - v19);
  v96 = sub_22C90906C();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v114 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v93 - v24;
  v26 = sub_22C908C5C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v133 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v93 - v31;
  MEMORY[0x28223BE20](v30);
  v127 = &v93 - v32;
  v33 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - v34;
  v36 = sub_22C901FAC();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v117 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v93 - v40;
  v43 = v42;
  sub_22C6AEA50(v128, v35, &qword_27D9BAA30, &unk_22C911F70);

  v125 = v33;
  v126 = v35;
  v44 = *(v33 + 48);
  v45 = v37;
  (*(v37 + 32))(v41, &v35[v44], v43);
  sub_22C605B74(v41, v131);
  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    (*(v37 + 8))(v41, v43);
    return sub_22C36DD28(v25, &qword_27D9BB628, &unk_22C920580);
  }

  v115 = v41;
  v47 = *(v27 + 32);
  v48 = v127;
  v102 = v27 + 32;
  v101 = v47;
  v47(v127, v25, v26);
  if (v130)
  {
    goto LABEL_23;
  }

  v130 = v45;
  v131 = v26;
  v49 = v113;
  sub_22C90774C();
  v50 = v105;
  v51 = v123;
  if ((*(v105 + 88))(v49, v123) != *MEMORY[0x277D729E0])
  {
    (*(v50 + 8))(v49, v51);
    v45 = v130;
    v26 = v131;
LABEL_23:
    v89 = v126;
    sub_22C6AEA50(v128, v126, &qword_27D9BAA30, &unk_22C911F70);
    v90 = *(v125 + 48);
    sub_22C90699C();
    v91 = *(v45 + 8);
    v91(v89 + v90, v43);
    v92 = v114;
    (*(v27 + 16))(v114, v48, v26);
    sub_22C36C640(v92, 0, 1, v26);
    sub_22C603A20();
    (*(v27 + 8))(v48, v26);
    return (v91)(v115, v43);
  }

  v114 = v43;
  (*(v50 + 96))(v49, v51);
  v52 = swift_projectBox();
  (*(v95 + 16))(v94, v52, v96);

  v53 = sub_22C90905C();
  v54 = 0;
  v100 = v53;
  v55 = *(v53 + 16);
  v99 = v50 + 16;
  v111 = (v50 + 32);
  v110 = (v130 + 16);
  v113 = (v130 + 8);
  v109 = (v27 + 16);
  v98 = v104 + 16;
  v106 = (v104 + 8);
  v112 = (v27 + 8);
  v97 = v27 + 40;
  v57 = v121;
  v56 = v122;
  v58 = v51;
  v108 = v27;
  v107 = v55;
  while (1)
  {
    if (v54 == v55)
    {
      v59 = 1;
      v130 = v55;
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v54 >= *(v100 + 16))
      {
        goto LABEL_28;
      }

      v60 = v54 + 1;
      v61 = v105;
      v62 = v100 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v54;
      v63 = *(v56 + 48);
      v64 = v103;
      *v103 = v54;
      (*(v61 + 16))(v64 + v63, v62, v58);
      sub_22C6AE8BC(v64, v57, &qword_27D9BDCF0, qword_22C91B608);
      v59 = 0;
      v130 = v60;
    }

    sub_22C36C640(v57, v59, 1, v56);
    sub_22C6AE8BC(v57, v16, &qword_27D9BF7B0, &unk_22C923060);
    if (sub_22C370B74(v16, 1, v56) == 1)
    {

      (*(v95 + 8))(v94, v96);
      (*v112)(v127, v131);
      return (*v113)(v115, v114);
    }

    v129 = *v16;
    (*v111)(v118, &v16[*(v56 + 48)], v58);
    sub_22C908C4C();
    v65 = v114;
    (*v110)(v117, v115, v114);
    sub_22C908B8C();
    v66 = v124;
    v67 = v132;
    sub_22C908BFC();
    v68 = v126;
    sub_22C6AEA50(v128, v126, &qword_27D9BAA30, &unk_22C911F70);
    v69 = *(v125 + 48);
    sub_22C90699C();
    (*v113)((v68 + v69), v65);
    (*v109)(v133, v67, v131);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v66;
    v135 = *v66;
    v71 = v135;
    sub_22C628D18();
    if (__OFADD__(v71[2], (v73 & 1) == 0))
    {
      break;
    }

    v74 = v72;
    v75 = v73;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v55 = v107;
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_30;
      }

      v74 = v76;
      v78 = v108;
    }

    else
    {
      v78 = v108;
      v55 = v107;
    }

    v79 = v135;
    if (v75)
    {
      v80 = v131;
      (*(v78 + 40))(v135[7] + *(v78 + 72) * v74, v133, v131);
      (*v106)(v134, v116);
      (*(v78 + 8))(v132, v80);
    }

    else
    {
      v135[(v74 >> 6) + 8] |= 1 << v74;
      v81 = v104;
      v82 = v134;
      v83 = v116;
      (*(v104 + 16))(v79[6] + *(v104 + 72) * v74, v134, v116);
      v84 = v79[7] + *(v78 + 72) * v74;
      v85 = v131;
      v101(v84, v133, v131);
      (*(v81 + 8))(v82, v83);
      (*(v78 + 8))(v132, v85);
      v86 = v79[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_29;
      }

      v79[2] = v88;
    }

    *v70 = v79;
    v57 = v121;
    v56 = v122;
    v58 = v123;
    v54 = v130;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C6A1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v77 = a2;
  v93 = a1;
  v90 = type metadata accessor for DependencyId(0);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22C9070DC();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BD9E0, &qword_22C922F40);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v74 - v10;
  v95 = sub_22C90654C();
  v11 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22C3A5908(&qword_27D9BF730, &qword_22C9233A0);
  v13 = MEMORY[0x28223BE20](v101);
  v88 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v74 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = (&v74 - v18);
  MEMORY[0x28223BE20](v17);
  v91 = &v74 - v19;
  v20 = sub_22C906F2C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v23, v3, v20);
  if ((*(v21 + 88))(v23, v20) == *MEMORY[0x277D1DEE8])
  {
    v81 = v4;
    result = (*(v21 + 96))(v23, v20);
    v25 = *v23;
    v26 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v87 = *(v25 + 16);
    v79 = v7 + 16;
    v80 = v7;
    v78 = v7 + 8;
    v27 = 0;
    v74 = (v11 + 32);
    v75 = (v11 + 8);
    v84 = xmmword_22C90F800;
    v28 = v96;
    v85 = v6;
    for (i = v25; ; v25 = i)
    {
      if (v87 == v27)
      {

        return v26;
      }

      if (v27 >= *(v25 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = sub_22C901FAC();
      v30 = *(v29 - 8);
      v31 = v30;
      v32 = v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v30 + 72) * v27;
      v33 = v101;
      v34 = *(v101 + 48);
      v35 = v91;
      (*(v30 + 16))(&v91[v34], v32, v29);
      v36 = *(v33 + 48);
      v37 = v102;
      v100 = v27;
      *v102 = v27;
      v98 = *(v31 + 32);
      v98(v37 + v36, &v35[v34], v29);
      sub_22C6AEA50(v37, v28, &qword_27D9BF730, &qword_22C9233A0);
      v38 = *(v33 + 48);
      v39 = v92;
      v40 = *(v92 + 16);
      v99 = v31 + 32;
      v97 = v31;
      if (!v40)
      {
        break;
      }

      sub_22C628274();
      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = v80;
      v44 = v82;
      v45 = v83;
      (*(v80 + 16))(v82, *(v39 + 56) + *(v80 + 72) * v41, v83);
      sub_22C90702C();
      v46 = *(v43 + 8);
      v47 = v44;
      v48 = v31;
      v49 = v94;
      v50 = v95;
      v46(v47, v45);
      sub_22C36C640(v49, 0, 1, v50);
      v51 = v48;
      v52 = v39;
      v53 = *(v51 + 8);
      v53(&v96[v38], v29);
      if (sub_22C370B74(v49, 1, v50) == 1)
      {
        goto LABEL_11;
      }

      v54 = v76;
      (*v74)(v76, v49, v95);
      v55 = v81;
      sub_22C68AD24(v93, v77, v52, v56, v57, v58, v59, v60, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, *(&v84 + 1));
      v81 = v55;
      if (v55)
      {

        (*v75)(v54, v95);
        sub_22C36DD28(v102, &qword_27D9BF730, &qword_22C9233A0);

        return v26;
      }

      sub_22C3CC528(v61);
      (*v75)(v54, v95);
LABEL_12:
      sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      v63 = v102;
      v64 = v88;
      sub_22C6AEA50(v102, v88, &qword_27D9BF730, &qword_22C9233A0);
      v65 = *v64;
      v66 = v101;
      v53(v64 + *(v101 + 48), v29);
      *(inited + 32) = 0;
      *(inited + 40) = 0;
      *(inited + 48) = v65;
      *(inited + 56) = 0;
      v103 = v93;

      sub_22C3CC554(inited);
      v67 = v103;
      sub_22C6AEA50(v63, v64, &qword_27D9BF730, &qword_22C9233A0);
      v68 = *(v66 + 48);
      v69 = v85;
      *v85 = v67;
      v98((v69 + *(v90 + 20)), v64 + v68, v29);
      v26 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590550();
        v26 = v72;
      }

      v70 = v100;
      v71 = *(v26 + 16);
      v28 = v96;
      if (v71 >= *(v26 + 24) >> 1)
      {
        sub_22C590550();
        v26 = v73;
      }

      sub_22C36DD28(v102, &qword_27D9BF730, &qword_22C9233A0);
      *(v26 + 16) = v71 + 1;
      result = sub_22C6A43E0(v69, v26 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v71);
      v104 = v26;
      v27 = v70 + 1;
    }

    v53 = *(v31 + 8);
    v53((v28 + v38), v29);
    v49 = v94;
    sub_22C36C640(v94, 1, 1, v95);
LABEL_11:
    sub_22C36DD28(v49, &qword_27D9BD9E0, &qword_22C922F40);
    goto LABEL_12;
  }

  (*(v21 + 8))(v23, v20);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C6A27E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v49 = a5;
  v55 = a3;
  v58 = a2;
  v51 = type metadata accessor for DependencyId(0);
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v53 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22C901FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_22C90654C();
  v50 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v52 = a1;
  sub_22C90838C();
  sub_22C60539C(v10, v58);
  (*(v8 + 8))(v10, v7);
  v23 = sub_22C9070DC();
  if (sub_22C370B74(v13, 1, v23) == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BAA18, &qword_22C911C40);
    v24 = v56;
    v25 = v55;
LABEL_11:
    sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v40 = sub_22C90825C();
    v42 = v41;
    v43 = sub_22C90836C();
    *(inited + 32) = v40;
    *(inited + 40) = v42;
    *(inited + 48) = v43;
    *(inited + 56) = v44 & 1;
    v60 = v24;

    sub_22C3CC554(inited);
    v45 = v60;
    v46 = v53;
    sub_22C90838C();
    *v46 = v45;
    sub_22C3D0F08();
    v47 = *(*v25 + 16);
    sub_22C3D10E4(v47);
    v48 = *v25;
    *(v48 + 16) = v47 + 1;
    return sub_22C6A43E0(v46, v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47);
  }

  sub_22C90702C();
  (*(*(v23 - 8) + 8))(v13, v23);
  v26 = v50;
  (*(v50 + 4))(v22, v20, v14);
  (*(v26 + 2))(v17, v22, v14);
  if ((*(v26 + 11))(v17, v14) == *MEMORY[0x277D1DAA8])
  {
    (*(v26 + 12))(v17, v14);
    v27 = sub_22C906F2C();
    v28 = *(v27 - 8);
    v29 = v28[11](v17, v27);
    v24 = v56;
    v30 = v57;
    if (v29 == *MEMORY[0x277D1DEE0])
    {
      (*(v26 + 1))(v22, v14);
      return v28[1](v17, v27);
    }
  }

  else
  {
    v28 = v26;
    v27 = v14;
    v24 = v56;
    v30 = v57;
  }

  v28[1](v17, v27);
  sub_22C68AD24(v24, v49, v58, v32, v33, v34, v35, v36, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0], v59[1]);
  v38 = (v26 + 8);
  if (!v30)
  {
    v25 = v55;
    sub_22C3CC528(v37);
    (*v38)(v22, v14);
    goto LABEL_11;
  }

  return (*v38)(v22, v14);
}

uint64_t sub_22C6A2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v51 = a6;
  v57 = a4;
  v58 = a3;
  v54 = type metadata accessor for DependencyId(0);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v55 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v52 = sub_22C90654C();
  v49 = *(v52 - 8);
  v11 = MEMORY[0x28223BE20](v52);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v48 - v14;
  v15 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_22C901FAC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C906A8C();
  v53 = a1;
  sub_22C9097DC();
  sub_22C6053E0(v22, v17);

  if (sub_22C370B74(v17, 1, v18) == 1)
  {
    return sub_22C36DD28(v17, &qword_27D9BC030, &unk_22C911CC0);
  }

  (*(v19 + 32))(v21, v17, v18);
  v24 = v58;
  sub_22C60539C(v21, v58);
  v25 = sub_22C9070DC();
  if (sub_22C370B74(v10, 1, v25) == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BAA18, &qword_22C911C40);
    v26 = v59;
    v27 = v57;
  }

  else
  {
    sub_22C90702C();
    (*(*(v25 - 8) + 8))(v10, v25);
    v28 = v50;
    v29 = v49 + 32;
    v30 = v13;
    v31 = v52;
    (*(v49 + 4))(v50, v30, v52);
    v26 = v59;
    v32 = v60;
    sub_22C68AD24(v59, v51, v24, v33, v34, v35, v36, v37, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v39 = (v29 - 24);
    if (v32)
    {
      (*v39)(v28, v31);
      return (*(v19 + 8))(v21, v18);
    }

    v27 = v57;
    sub_22C3CC528(v38);
    (*v39)(v28, v52);
  }

  sub_22C3A5908(&qword_27D9BE3B0, &qword_22C91D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = sub_22C9097DC();
  *(inited + 40) = v41;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  v61 = v26;

  sub_22C3CC554(inited);
  v42 = v61;
  v43 = v19;
  v44 = *(v19 + 16);
  v45 = v55;
  v44(v55 + *(v54 + 20), v21, v18);
  *v45 = v42;
  sub_22C3D0F08();
  v46 = *(*v27 + 16);
  sub_22C3D10E4(v46);
  (*(v43 + 8))(v21, v18);
  v47 = *v27;
  *(v47 + 16) = v46 + 1;
  return sub_22C6A43E0(v45, v47 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46);
}

uint64_t sub_22C6A35B0(uint64_t a1, uint64_t a2)
{
  sub_22C46EBB8();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DependencyId(0);

  return sub_22C901F6C();
}

uint64_t sub_22C6A3618()
{
  sub_22C47102C();
  type metadata accessor for DependencyId(0);
  sub_22C901FAC();
  sub_22C6AEB50();
  sub_22C6A4290(v0, v1, MEMORY[0x277D1C348]);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C6A3694()
{
  sub_22C90B62C();
  sub_22C47102C();
  type metadata accessor for DependencyId(0);
  sub_22C901FAC();
  sub_22C6AEB50();
  sub_22C6A4290(v0, v1, MEMORY[0x277D1C348]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C6A3738(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C47102C();
  sub_22C901FAC();
  sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C6A37E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_22C6A3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    sub_22C90B64C();
    sub_22C372164();
    sub_22C909FFC();
    if (a5)
    {
      return sub_22C90B64C();
    }
  }

  else
  {
    sub_22C90B64C();
    if (a5)
    {
      return sub_22C90B64C();
    }
  }

  sub_22C90B64C();
  return MEMORY[0x2318B8B10](a4);
}

uint64_t sub_22C6A38EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_22C90B62C();
  sub_22C90B64C();
  if (a2)
  {
    sub_22C909FFC();
  }

  sub_22C90B64C();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x2318B8B10](a3);
  }

  return sub_22C90B66C();
}

uint64_t sub_22C6A39B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_22C90B62C();
  sub_22C90B64C();
  if (v2)
  {
    sub_22C909FFC();
  }

  sub_22C90B64C();
  if (!v4)
  {
    MEMORY[0x2318B8B10](v3);
  }

  return sub_22C90B66C();
}

void sub_22C6A3A80()
{
  sub_22C370030();
  v24 = v0;
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C36D0FC();
  sub_22C9088CC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C370654();
  sub_22C9089EC();
  v5 = sub_22C372158();
  if (v6(v5) == *MEMORY[0x277D1E6F8])
  {
    v7 = sub_22C372158();
    v8(v7);
    v9 = *(v3 + 32);
    v10 = sub_22C50B578();
    v9(v10);
    v11 = sub_22C90887C();
    MEMORY[0x28223BE20](v11);
    sub_22C369920();
    *(v12 - 16) = v24;
    v14 = sub_22C5EC5FC(sub_22C6AEB00, v13, v11);

    if (v14)
    {
      v15 = sub_22C38644C();
      v9(v15);
    }

    else
    {
      v18 = sub_22C3819EC();
      v19(v18);
    }
  }

  else
  {
    v16 = sub_22C372158();
    v17(v16);
  }

  sub_22C3D36A4();
  sub_22C36C640(v20, v21, v22, v23);
  sub_22C36FB20();
}

void sub_22C6A3CF0()
{
  sub_22C36BA7C();
  v46 = v2;
  v4 = v3;
  v6 = v5;
  v45 = sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C36BA0C();
  v8 = sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v48 = v10;
  v11 = sub_22C36BA0C();
  v12 = v4(v11);
  sub_22C369824();
  v42 = v13;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C38B638();
  v15 = sub_22C908A0C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  sub_22C37BDA4();
  v19 = sub_22C9087DC();
  v20 = *(v19 + 16);
  if (v20)
  {
    v47 = v12;
    v41 = v6;
    sub_22C36BA94();
    v12 = v19 + v21;
    v6 = v48;
    v43 = v19 + v21;
    v44 = v19;
    while (v20 <= *(v19 + 16))
    {
      --v20;
      (*(v17 + 16))(v0, v12 + *(v17 + 72) * v20, v15);
      sub_22C9089EC();
      v22 = sub_22C377B94();
      v23(v22);
      v24 = sub_22C6AF77C();
      v25(v24, v8);
      sub_22C6B01F4();
      if (v26)
      {
        v27 = sub_22C6AF77C();
        v28(v27, v8);
        v29 = v1;
        v30 = *(v42 + 32);
        v31 = sub_22C37B9B0();
        v12 = v47;
        v32 = (v30)(v31);
        v46(v32);
        v33 = sub_22C901F6C();
        v34 = sub_22C37A27C();
        v35(v34, v45);
        if (v33)
        {

          v6 = v41;
          sub_22C6AFBC4();
          v30();
          v40 = 0;
          goto LABEL_12;
        }

        v36 = sub_22C38644C();
        v37(v36);
        v1 = v29;
        v6 = v48;
        v19 = v44;
        v12 = v43;
        if (!v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v38 = sub_22C6AF77C();
        v39(v38, v8);
        if (!v20)
        {
LABEL_10:

          v40 = 1;
          v6 = v41;
          v12 = v47;
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  v40 = 1;
LABEL_12:
  sub_22C36C640(v6, v40, 1, v12);
  sub_22C36CC48();
}

uint64_t sub_22C6A40E4(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C377578();
  sub_22C9068FC();
  v3 = sub_22C901F6C();
  v4 = sub_22C3806B8();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_22C6A41CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = sub_22C6AF0F4(v6);

  return sub_22C661CC8(v8, v9, v10, v2, v3, v5, v4);
}

uint64_t sub_22C6A4290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C6A42D8()
{
  sub_22C36FB38();
  v2 = *(v0 + 32);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = sub_22C6AF0F4(v3);

  return sub_22C6619C8(v5, v6, v7, v2);
}

uint64_t sub_22C6A438C()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C6A43E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

void sub_22C6A4434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C6AFAEC();
  sub_22C909FFC();
  sub_22C90B66C();
  sub_22C386A8C();
  while (1)
  {
    sub_22C6AFC2C();
    if (v35)
    {
      break;
    }

    sub_22C6B0424();
    v35 = *v34 == v33 && v34[1] == v31;
    if (v35 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C6B0424();
      v37 = v36[1];
      *v30 = *v36;
      v30[1] = v37;

      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6B04A4();
  v38 = sub_22C6AEF20();
  sub_22C6A6BCC(v38);
  *v32 = a10;
  *v30 = v33;
  v30[1] = v31;
LABEL_10:
  sub_22C38C3F0();
}

void sub_22C6A4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C6AFAEC();
  sub_22C909FFC();
  sub_22C90B66C();
  sub_22C386A8C();
  while (1)
  {
    sub_22C6AFC2C();
    if (v35)
    {
      break;
    }

    sub_22C6B0424();
    v35 = *v34 == v33 && v34[1] == v31;
    if (v35 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C6B0424();
      v37 = v36[1];
      *v30 = *v36;
      v30[1] = v37;

      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6B04A4();
  v38 = sub_22C6AEF20();
  sub_22C6A6D34(v38);
  *v32 = a10;
  *v30 = v33;
  v30[1] = v31;
LABEL_10:
  sub_22C38C3F0();
}

void sub_22C6A45F4()
{
  sub_22C3744F8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B30](v6 >> 14);
  MEMORY[0x2318B8B30](v4 >> 14);
  MEMORY[0x2318B8B10](v2);
  v10 = sub_22C90B66C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v9 + 48) + 24 * v12;
      v15 = v6 >> 14 == *v14 >> 14 && *(v14 + 8) >> 14 == v4 >> 14;
      if (v15 && *(v14 + 16) == v2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v6 = *v14;
    v4 = *(v14 + 8);
  }

  else
  {
LABEL_10:
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v0;
    v16 = sub_22C36EBF0();
    sub_22C6A6E9C(v16, v17, v2, v12, v18);
    *v0 = v19;
  }

  *v8 = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  sub_22C38C3F0();
}

void sub_22C6A4738()
{
  sub_22C36BA7C();
  v3 = v2;
  v78 = v4;
  type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v7 = sub_22C90430C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v13 = sub_22C3698F8(v12);
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v13);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v95 = v15;
  sub_22C36BA0C();
  v92 = sub_22C902D0C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  sub_22C36D234(v19);
  v20 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22C37B6BC();
  type metadata accessor for PromptTreeIdentifier.Label(v22);
  sub_22C369824();
  v98 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v26 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v97 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v91 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v102 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C36D234(v34);
  v77 = v0;
  v35 = *v0;
  sub_22C90B62C();
  sub_22C48640C();
  sub_22C90B66C();
  sub_22C386A8C();
  v38 = v37 & ~v36;
  v100 = v39;
  if (((*(v39 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
  {
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AECD0();
    sub_22C6AAE30(v3, v76);
    v103 = *v77;
    sub_22C6A7048(v76, v38, isUniquelyReferenced_nonNull_native);
    *v77 = v103;
    sub_22C6A43E0(v3, v78);
LABEL_62:
    sub_22C36CC48();
    return;
  }

  v101 = v1;
  v84 = v7;
  v99 = *(v98 + 72);
  v86 = v9;
  v83 = (v9 + 8);
  v88 = (v17 + 8);
  v93 = v35;
  v94 = v20;
  v40 = ~v36;
  v96 = ~v36;
  v41 = v26;
  v80 = v3;
  v87 = v26;
  while (1)
  {
    v42 = v99 * v38;
    sub_22C6AAE30(*(v35 + 48) + v99 * v38, v102);
    v43 = *(v20 + 48);
    v44 = v101;
    sub_22C6AAE30(v102, v101);
    sub_22C6AAE30(v3, v101 + v43);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_22C6AECD0();
    sub_22C6AAE30(v101, v91);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C36BA4C();
      v60(v91, v92);
      v61 = v96;
      v44 = v101;
      goto LABEL_26;
    }

    sub_22C36BA4C();
    v65(v79, v101 + v43, v92);
    sub_22C3819EC();
    v90 = sub_22C902CFC();
    v66 = *v88;
    v67 = sub_22C3863FC();
    v66(v67);
    sub_22C6A438C();
    v68 = sub_22C36FC2C();
    v35 = v93;
    v66(v68);
    v20 = v94;
    sub_22C36D264();
    sub_22C6A438C();
    v61 = v96;
    if (v90)
    {
      v42 = v99 * v38;
      goto LABEL_63;
    }

LABEL_60:
    v40 = v61;
    v38 = (v38 + 1) & v61;
    if (((*(v100 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C6AECD0();
    v62 = sub_22C372280();
    sub_22C6AAE30(v62, v63);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C6A438C();
LABEL_25:
      v61 = v40;
LABEL_26:
      sub_22C36DD28(v44, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_60;
    }

    sub_22C6A43E0(v101 + v43, v81);
    v64 = *v81;
    switch(*v41)
    {
      case 3u:
        if (v64 == 3)
        {
          goto LABEL_41;
        }

        goto LABEL_58;
      case 4u:
        if (v64 != 4)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      case 5u:
        if (v64 != 5)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      case 6u:
        if (v64 != 6)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      default:
        if (*v41 != v64 || (v64 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_58;
        }

LABEL_41:
        v70 = *(v41 + 1) == v81[1] && *(v41 + 2) == v81[2];
        if (v70 || (sub_22C90B4FC()) && (*(v41 + 3) == v81[3] ? (v71 = *(v41 + 4) == v81[4]) : (v71 = 0), (v71 || (sub_22C90B4FC()) && (*(v41 + 5) == v81[5] ? (v72 = *(v41 + 6) == v81[6]) : (v72 = 0), v72 || (sub_22C90B4FC())))
        {
          v73 = sub_22C90067C();
          sub_22C36C140();
          sub_22C6A438C();
          if (v73)
          {
            sub_22C6AF580();
            sub_22C6A438C();
            sub_22C5CA640();
            sub_22C6A438C();
            sub_22C36C140();
            sub_22C6A438C();
            goto LABEL_63;
          }
        }

        else
        {
LABEL_58:
          sub_22C36C140();
          sub_22C6A438C();
        }

        sub_22C6AF580();
        sub_22C6A438C();
        sub_22C5CA640();
        sub_22C6A438C();
        sub_22C36C140();
        sub_22C6A438C();
        v61 = v96;
        break;
    }

    goto LABEL_60;
  }

  sub_22C6AECD0();
  sub_22C6AAE30(v101, v97);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C36C140();
    sub_22C6A438C();
    sub_22C6A438C();
    v41 = v87;
    goto LABEL_25;
  }

  sub_22C6A43E0(v101 + v43, v95);
  if ((sub_22C48819C(*v97, *v95) & 1) == 0 || (v46 = v97[1], v89 = *(v46 + 16), v89 != *(v95[1] + 16)))
  {
LABEL_27:
    sub_22C36C140();
    sub_22C6A438C();
    v41 = v87;
LABEL_28:
    sub_22C6AF598();
    sub_22C6A438C();
    sub_22C5CA640();
    sub_22C6A438C();
    sub_22C36C140();
    sub_22C6A438C();
    v3 = v80;
    v61 = v40;
    goto LABEL_60;
  }

  v47 = v86;
  if (!v89 || (sub_22C57A240(), v46 == v48))
  {
LABEL_15:
    v59 = sub_22C90962C();
    sub_22C36C140();
    sub_22C6A438C();
    v41 = v87;
    if (v59)
    {
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C6AF598();
      sub_22C6A438C();
      sub_22C5CA640();
      sub_22C6A438C();
      v42 = v99 * v38;
LABEL_63:
      sub_22C36C140();
      sub_22C6A438C();
      sub_22C6AECD0();
      sub_22C6AAE30(v75 + v42, v78);
      goto LABEL_62;
    }

    goto LABEL_28;
  }

  v49 = 0;
  sub_22C36BA94();
  v82 = v46 + v50;
  while (v49 < *(v46 + 16))
  {
    v51 = *(v47 + 72) * v49;
    v52 = *(v47 + 16);
    v52(v85, v82 + v51, v84);
    sub_22C57A240();
    if (v49 >= *(v53 + 16))
    {
      goto LABEL_65;
    }

    v54 = sub_22C6B02E0();
    (v52)(v54);
    sub_22C6A4290(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
    sub_22C51E290();
    v55 = sub_22C90A0BC();
    v56 = *v83;
    v57 = sub_22C5CA640();
    v56(v57);
    v58 = sub_22C36A10C();
    v56(v58);
    v35 = v93;
    v20 = v94;
    if ((v55 & 1) == 0)
    {
      goto LABEL_27;
    }

    ++v49;
    v47 = v86;
    if (v89 == v49)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_22C6A521C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF568();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D72D68]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A7CB4(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF568();
    v11 = sub_22C6A4290(&qword_28142FA78, v10, MEMORY[0x277D72D70]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A538C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF52C();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1D808]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A7F40(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF52C();
    v11 = sub_22C6A4290(&qword_27D9BC488, v10, MEMORY[0x277D1D810]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A54FC()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AEB50();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1C348]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A81CC(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AEB50();
    v11 = sub_22C6A4290(&qword_27D9BAA28, v10, MEMORY[0x277D1C358]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A566C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF514();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D72B10]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A8458(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF514();
    v11 = sub_22C6A4290(&qword_27D9BF510, v10, MEMORY[0x277D72B18]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

BOOL sub_22C6A57DC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2);
  v6 = sub_22C90B66C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_22C6A86E4(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_22C6A58CC()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF4E4();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1E970]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A8AF4(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF4E4();
    v11 = sub_22C6A4290(&qword_27D9BF838, v10, MEMORY[0x277D1E978]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A5A3C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C376828();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1DCF8]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A8D80(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C376828();
    v11 = sub_22C6A4290(&qword_27D9BF490, v10, MEMORY[0x277D1DD00]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A5C2C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AEE74();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D72A88]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A92FC(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AEE74();
    v11 = sub_22C6A4290(&qword_27D9BF1E8, v10, MEMORY[0x277D72A90]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A5D9C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C903CCC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF4CC();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1F0E8]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6A9588(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF4CC();
    v11 = sub_22C6A4290(&qword_27D9BF080, v10, MEMORY[0x277D1F0F0]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A5F0C()
{
  sub_22C36BA7C();
  v2 = v1;
  v37 = v3;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v35 = v12;
  sub_22C36BA0C();
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C38B638();
  v36 = v0;
  v14 = *v0;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C6A4290(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  v15 = sub_22C37A06C();
  v16(v15);
  v17 = *(v2 + *(DecorationTuple + 20));
  sub_22C7E6754();
  sub_22C90B66C();
  sub_22C386A8C();
  v20 = v19 & ~v18;
  if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v18;
    v22 = *(v6 + 72);
    while (1)
    {
      sub_22C38A0B4();
      sub_22C6AAE30(v23 + v22 * v20, v10);
      sub_22C38BB08();
      if (sub_22C90375C())
      {
        sub_22C5DB210(*(v10 + *(DecorationTuple + 20)), v17, v24, v25, v26, v27, v28, v29, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47);
        if (v30)
        {
          break;
        }
      }

      sub_22C6A438C();
      v20 = (v20 + 1) & v21;
      if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_22C6A438C();
    sub_22C37EF10();
    sub_22C6A438C();
    sub_22C38A0B4();
    sub_22C6AAE30(v34 + v22 * v20, v37);
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22C38A0B4();
    sub_22C6AAE30(v2, v35);
    v39 = *v36;
    v32 = sub_22C441720();
    sub_22C6A9814(v32, v33, isUniquelyReferenced_nonNull_native);
    *v36 = v39;
    sub_22C6A43E0(v2, v37);
  }

  sub_22C36CC48();
}

void sub_22C6A6244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v52 = v37;
  v39 = v38;
  v41 = v40;
  v53 = v42;
  v43 = *v32;
  sub_22C90B62C();
  v39(&a12, v41);
  sub_22C90B66C();
  sub_22C386A8C();
  v46 = ~v45;
  while (1)
  {
    v47 = v44 & v46;
    if (((1 << (v44 & v46)) & *(v43 + 56 + (((v44 & v46) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a12 = *v32;

      v52(v51, v47, isUniquelyReferenced_nonNull_native);
      *v32 = a12;
      *v53 = v41;
      goto LABEL_7;
    }

    v49 = v36(v48, v41);

    if (v49)
    {
      break;
    }

    v44 = v47 + 1;
  }

  *v53 = *(*(v43 + 48) + 8 * v47);

LABEL_7:
  sub_22C5E78F0();
}

void sub_22C6A637C()
{
  sub_22C36BA7C();
  v3 = v2;
  v30 = v4;
  v5 = sub_22C36ECB4();
  v7 = sub_22C3A5908(v5, v6);
  sub_22C369824();
  v9 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C37F478();
  v29 = v0;
  v11 = *v0;
  sub_22C6AF0E8();
  sub_22C3D32C8(v12, v13, v14, v15);
  v33 = v3;
  sub_22C909F7C();
  v31 = v11;
  v32 = v11 + 56;
  sub_22C386A8C();
  v18 = ~v17;
  while (1)
  {
    v19 = v16 & v18;
    if (((1 << (v16 & v18)) & *(v32 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v9 + 16))(v1, v33, v7);
      v34 = *v29;
      v26 = sub_22C50B578();
      sub_22C6AA2D0(v26, v27, isUniquelyReferenced_nonNull_native);
      *v29 = v34;
      (*(v9 + 32))(v30, v33, v7);
      goto LABEL_7;
    }

    v20 = *(v9 + 72) * v19;
    v21 = *(v9 + 16);
    v21(v1, *(v31 + 48) + v20, v7);
    sub_22C3D32C8(&qword_27D9BF188, &qword_27D9BF0B0, &unk_22C926980, MEMORY[0x277D1DBD8]);
    sub_22C6AFB90();
    v22 = sub_22C90A0BC();
    v23 = *(v9 + 8);
    v24 = sub_22C38BB08();
    v23(v24);
    if (v22)
    {
      break;
    }

    v16 = v19 + 1;
  }

  v28 = sub_22C37E5C0();
  v23(v28);
  v21(v30, *(v31 + 48) + v20, v7);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A65FC()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF4B4();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D1EDA0]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6AA55C(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF4B4();
    v11 = sub_22C6A4290(&qword_281435760, v10, MEMORY[0x277D1EDA8]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A676C()
{
  sub_22C36BA7C();
  sub_22C6AEEB0(v3);
  sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C3708E8();
  sub_22C6AF49C();
  v7 = sub_22C6A4290(v5, v6, MEMORY[0x277D72248]);
  sub_22C6AEDF8(v7);
  sub_22C388858();
  do
  {
    sub_22C389120();
    if (v8)
    {
      sub_22C6AFC8C();
      v13 = sub_22C3723E0();
      v14(v13);
      v15 = sub_22C382830();
      sub_22C6AA7E8(v15, v16, v17);
      v18 = sub_22C37F950();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_22C6AEB68();
    v2(v9);
    sub_22C6AF49C();
    v11 = sub_22C6A4290(&qword_27D9BC800, v10, MEMORY[0x277D72250]);
    sub_22C383854(v11);
    v12 = sub_22C375A84();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_22C37E5C0();
  v1(v20);
  v21 = sub_22C38574C();
  v2(v21);
LABEL_7:
  sub_22C36CC48();
}

void sub_22C6A68DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v53 = v39;
  v40 = *v32;
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C90B64C();
  sub_22C90B66C();
  sub_22C386A8C();
  v43 = v42 & ~v41;
  if ((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
  {
    v44 = ~v41;
    v45 = *(v40 + 48);
    while (1)
    {
      v46 = v45 + 24 * v43;
      v47 = *(v46 + 16);
      v48 = *v46 == v38 && *(v46 + 8) == v36;
      if (v48 || (sub_22C90B4FC()) && v47 == v34)
      {
        break;
      }

      v43 = (v43 + 1) & v44;
      if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v50 = *(v40 + 48) + 24 * v43;
    v52 = *v50;
    v51 = *(v50 + 8);
    LOBYTE(v50) = *(v50 + 16);
    *v53 = v52;
    *(v53 + 8) = v51;
    *(v53 + 16) = v50;
  }

  else
  {
LABEL_10:
    swift_isUniquelyReferenced_nonNull_native();
    v54 = *v32;

    v49 = sub_22C372FCC();
    sub_22C6AAA74(v49);
    *v32 = v54;
    *v53 = v38;
    *(v53 + 8) = v36;
    *(v53 + 16) = v34;
  }

  sub_22C5E78F0();
}

void sub_22C6A6A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  v34 = v33;
  v50 = v32;
  v51 = v35;
  v36 = *v32;
  sub_22C90A11C();
  sub_22C90B62C();
  sub_22C6AF0E8();
  sub_22C909FFC();
  v37 = sub_22C90B66C();

  sub_22C386A8C();
  v39 = ~v38;
  while (1)
  {
    v40 = v37 & v39;
    if (((1 << (v37 & v39)) & *(v36 + 56 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *v50;
      v47 = v34;
      sub_22C6AAC24();
      *v50 = v52;
      *v51 = v47;
      goto LABEL_13;
    }

    v41 = sub_22C90A11C();
    v43 = v42;
    if (v41 == sub_22C90A11C() && v43 == v44)
    {

      goto LABEL_12;
    }

    sub_22C371510();
    v46 = sub_22C90B4FC();

    if (v46)
    {
      break;
    }

    v37 = v40 + 1;
  }

LABEL_12:
  v48 = *(*(v36 + 48) + 8 * v40);
  *v51 = v48;
  v49 = v48;
LABEL_13:
  sub_22C5E78F0();
}

void sub_22C6A6E9C(unint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = a3;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_22C5DF694();
  }

  else
  {
    if (v11 > v10)
    {
      sub_22C5E2804();
      goto LABEL_18;
    }

    sub_22C5E38B4();
  }

  v12 = *v5;
  sub_22C90B62C();
  MEMORY[0x2318B8B30](result >> 14);
  MEMORY[0x2318B8B30](a2 >> 14);
  MEMORY[0x2318B8B10](v9);
  v13 = sub_22C90B66C();
  v14 = -1 << *(v12 + 32);
  a4 = v13 & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v12 + 48) + 24 * a4;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = v18 >> 14;
      v21 = result >> 14 == v17 >> 14 && v20 == a2 >> 14;
      if (v21 && v19 == v9)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v23 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = result;
  *(v24 + 8) = a2;
  *(v24 + 16) = v9;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_21:
  sub_22C90B53C();
  __break(1u);
}

uint64_t sub_22C6A7048(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v70 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  MEMORY[0x28223BE20](v70);
  v9 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22C90430C();
  v86 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v68 - v13;
  v69 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v69);
  v90 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22C902D0C();
  v16 = *(v15 - 8);
  v88 = v15;
  v89 = v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v79 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v87 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v91 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  v30 = *(*v4 + 16);
  v31 = *(*v4 + 24);
  if (v31 <= v30 || (a3 & 1) == 0)
  {
    v92 = v27;
    if (a3)
    {
      sub_22C5DF814();
    }

    else
    {
      if (v31 > v30)
      {
        sub_22C5E28CC();
        goto LABEL_66;
      }

      sub_22C5E3A20();
    }

    v32 = *v4;
    sub_22C90B62C();
    sub_22C48640C();
    v33 = sub_22C90B66C();
    v34 = v32 + 56;
    v96 = v32 + 56;
    v97 = v32;
    v35 = -1 << *(v32 + 32);
    a2 = v33 & ~v35;
    if ((*(v34 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v94 = ~v35;
      v77 = (v86 + 16);
      v95 = *(v79 + 72);
      v76 = (v86 + 8);
      v82 = (v89 + 8);
      v68 = (v89 + 32);
      v78 = v10;
      v89 = v21;
      v80 = v18;
      v81 = a1;
      v72 = v4;
      v71 = v9;
      while (1)
      {
        sub_22C6AAE30(*(v97 + 48) + v95 * a2, v29);
        v10 = *(v18 + 48);
        sub_22C6AAE30(v29, v20);
        sub_22C6AAE30(a1, &v20[v10]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v53 = v87;
          sub_22C6AAE30(v20, v87);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_22C6A43E0(&v20[v10], v9);
            v54 = *v9;
            v10 = v53;
            switch(*v53)
            {
              case 3u:
                if (v54 == 3)
                {
                  goto LABEL_46;
                }

                goto LABEL_63;
              case 4u:
                if (v54 != 4)
                {
                  goto LABEL_63;
                }

                goto LABEL_46;
              case 5u:
                if (v54 != 5)
                {
                  goto LABEL_63;
                }

                goto LABEL_46;
              case 6u:
                if (v54 != 6)
                {
                  goto LABEL_63;
                }

                goto LABEL_46;
              default:
                if (*v53 != v54 || (v54 - 7) >= 0xFFFFFFFC)
                {
                  goto LABEL_63;
                }

LABEL_46:
                v59 = *(v53 + 1) == v9[1] && *(v53 + 2) == v9[2];
                if (v59 || (sub_22C90B4FC()) && (*(v53 + 3) == v9[3] ? (v60 = *(v53 + 4) == v9[4]) : (v60 = 0), (v60 || (sub_22C90B4FC()) && (*(v53 + 5) == v9[5] ? (v61 = *(v53 + 6) == v9[6]) : (v61 = 0), v61 || (sub_22C90B4FC())))
                {
                  v62 = sub_22C90067C();
                  sub_22C6A438C();
                  if (v62)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
LABEL_63:
                  sub_22C6A438C();
                }

                sub_22C6A438C();
                sub_22C6A438C();
                sub_22C6A438C();
                break;
            }

            goto LABEL_65;
          }

LABEL_30:
          sub_22C6A438C();
          sub_22C6A438C();
LABEL_31:
          sub_22C36DD28(v20, &qword_27D9BCBA0, &unk_22C9166D0);
          goto LABEL_65;
        }

        v37 = v92;
        sub_22C6AAE30(v20, v92);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_30;
        }

        v38 = v90;
        sub_22C6A43E0(&v20[v10], v90);
        v39 = sub_22C48819C(*v37, *v38);
        v9 = v93;
        if ((v39 & 1) != 0 && (v10 = v90[1], v84 = v92[1], v40 = *(v10 + 16), v83 = *(v84 + 16), v83 == v40))
        {
          if (v83 && v84 != v10)
          {
            v41 = 0;
            v42 = (*(v86 + 80) + 32) & ~*(v86 + 80);
            v75 = v84 + v42;
            v74 = v10 + v42;
            while (v41 < *(v84 + 16))
            {
              v43 = *(v86 + 72) * v41;
              v44 = *(v86 + 16);
              v45 = v9;
              v46 = v78;
              v9 = v77;
              v44(v45, v75 + v43, v78);
              if (v41 >= *(v10 + 16))
              {
                goto LABEL_69;
              }

              v47 = v85;
              v44(v85, v74 + v43, v46);
              sub_22C6A4290(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
              v48 = sub_22C90A0BC();
              v49 = *v76;
              v50 = v47;
              v9 = v93;
              (*v76)(v50, v46);
              v49(v9, v46);
              if ((v48 & 1) == 0)
              {
                goto LABEL_32;
              }

              if (v83 == ++v41)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

LABEL_22:
          v51 = sub_22C90962C();
          sub_22C6A438C();
          if (v51)
          {
            goto LABEL_72;
          }
        }

        else
        {
LABEL_32:
          sub_22C6A438C();
        }

        sub_22C6A438C();
        sub_22C6A438C();
        sub_22C6A438C();
        a1 = v81;
        v4 = v72;
        v9 = v71;
        v18 = v80;
LABEL_65:
        a2 = (a2 + 1) & v94;
        if (((*(v96 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      v52 = v91;
      sub_22C6AAE30(v20, v91);
      if (!swift_getEnumCaseMultiPayload())
      {
        v55 = v73;
        v56 = v88;
        (*v68)(v73, &v20[v10], v88);
        LODWORD(v84) = sub_22C902CFC();
        v10 = v82;
        v57 = *v82;
        (*v82)(v55, v56);
        sub_22C6A438C();
        v57(v91, v56);
        if (v84)
        {
          goto LABEL_73;
        }

        sub_22C6A438C();
        v18 = v80;
        a1 = v81;
        goto LABEL_65;
      }

      sub_22C6A438C();
      (*v82)(v52, v88);
      goto LABEL_31;
    }
  }

LABEL_66:
  v63 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22C6A43E0(a1, *(v63 + 48) + *(v79 + 72) * a2);
  v65 = *(v63 + 16);
  v66 = __OFADD__(v65, 1);
  v67 = v65 + 1;
  if (v66)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    v90 = v9;
    v92 = v10;
LABEL_72:
    sub_22C6A438C();
    sub_22C6A438C();
LABEL_73:
    sub_22C6A438C();
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v63 + 16) = v67;
  }

  return result;
}

uint64_t sub_22C6A7CB4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C90952C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5DFA00();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E3C0C();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E29E8();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A7F40(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5DFBB0();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E3D90();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BC488, MEMORY[0x277D1D800], MEMORY[0x277D1D810]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2A10();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A81CC(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5DFD60();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E3F14();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2A38();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A8458(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C90941C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5DFF10();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E4098();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_27D9BAAA0, MEMORY[0x277D72B00], MEMORY[0x277D72B10]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BF510, MEMORY[0x277D72B00], MEMORY[0x277D72B18]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2A60();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_22C6A86E4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E00C0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_22C5E421C();
LABEL_10:
      v12 = *v3;
      sub_22C90B62C();
      MEMORY[0x2318B8B10](v5);
      v13 = sub_22C90B66C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_22C5E2A88();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_22C6A881C()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v41 = v6;
  v38 = _s14TypedCandidateVMa(0);
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  v10 = *(*v0 + 16);
  v11 = *(*v0 + 24);
  v35 = v8;
  v36 = v0;
  if (v11 <= v10 || (v3 & 1) == 0)
  {
    if (v3)
    {
      sub_22C5E0414();
    }

    else
    {
      if (v11 > v10)
      {
        sub_22C5E2C48();
        goto LABEL_25;
      }

      sub_22C5E4530();
    }

    v12 = *v0;
    sub_22C90B62C();
    sub_22C9093BC();
    sub_22C6AEE74();
    sub_22C6A4290(v13, v14, MEMORY[0x277D72A88]);
    sub_22C909F8C();
    v15 = (v41 + *(v38 + 20));
    v16 = v15[2];
    v17 = v15[3];
    v39 = v15[1];
    v40 = *v15;
    sub_22C909FFC();
    v37 = v17;
    sub_22C37A060();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C386A8C();
    v5 = v19 & ~v18;
    if ((*(v12 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v20 = ~v18;
      v21 = *(v8 + 72);
      do
      {
        sub_22C6AAE30(*(v12 + 48) + v21 * v5, v1);
        if (sub_22C9093AC() & 1) != 0 && ((v22 = (v1 + *(v38 + 20)), v23 = v22[2], v24 = v22[3], *v22 == v40) ? (v25 = v22[1] == v39) : (v25 = 0), (v25 || (sub_22C90B4FC()) && (v23 == v16 ? (v26 = v24 == v37) : (v26 = 0), v26 || (sub_22C36D7F0(), (sub_22C90B4FC()))))
        {
          v27 = sub_22C37170C();
          sub_22C749DA0(v27, v28);
          v30 = v29;
          sub_22C6AF5EC();
          if (v30)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_22C6AF5EC();
        }

        v5 = (v5 + 1) & v20;
      }

      while (((*(v12 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }
  }

LABEL_25:
  v31 = *v36;
  *(*v36 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  sub_22C6A43E0(v41, *(v31 + 48) + *(v35 + 72) * v5);
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_28:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v34;
    sub_22C36CC48();
  }
}

uint64_t sub_22C6A8AF4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C908C5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E0678();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E478C();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_27D9BAA90, MEMORY[0x277D1E968], MEMORY[0x277D1E970]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BF838, MEMORY[0x277D1E968], MEMORY[0x277D1E978]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2D64();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A8D80(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C9069BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E0828();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E4910();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BF490, MEMORY[0x277D1DCF0], MEMORY[0x277D1DD00]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2D8C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_22C6A900C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E09D8(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C5E4A94(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
LABEL_8:
      v13 = *v8;
      sub_22C90B62C();
      sub_22C7F3AA8();
      v14 = sub_22C90B66C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v9 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_22C3A5908(&qword_27D9BF738, &qword_22C922F48);

        sub_22C74B664();
        v17 = v16;

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = v9 + 1;
      }
    }

    sub_22C5E2DB4();
  }

LABEL_12:
  v18 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v18 + 48) + 8 * v9) = result;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_15:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_22C6A9184(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E0E7C(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C5E4EC0(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
LABEL_8:
      v13 = *v8;
      sub_22C90B62C();
      sub_22C7F3E64();
      v14 = sub_22C90B66C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v9 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_22C3A5908(&qword_27D9BF720, &qword_22C922F20);

        sub_22C74B9DC();
        v17 = v16;

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = v9 + 1;
      }
    }

    sub_22C5E2DC8();
  }

LABEL_12:
  v18 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v18 + 48) + 8 * v9) = result;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_15:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_22C6A92FC(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C9093BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E1320();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E52EC();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_28142FA90, MEMORY[0x277D72A78], MEMORY[0x277D72A88]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BF1E8, MEMORY[0x277D72A78], MEMORY[0x277D72A90]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2DDC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A9588(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C903CCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E14D0();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E5470();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_281435738, MEMORY[0x277D1F0E0], MEMORY[0x277D1F0E8]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BF080, MEMORY[0x277D1F0E0], MEMORY[0x277D1F0F0]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E2E04();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6A9814(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  v35[0] = *(DecorationTuple - 8);
  MEMORY[0x28223BE20](DecorationTuple);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9036EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_22C5E1680();
  }

  else
  {
    if (v16 > v15)
    {
      sub_22C5E2E2C();
      goto LABEL_13;
    }

    sub_22C5E55F4();
  }

  v17 = *v4;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C6A4290(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  (*(v12 + 8))(v14, v11);
  v18 = *(a1 + *(DecorationTuple + 20));
  sub_22C7E6754();
  v19 = sub_22C90B66C();
  v20 = -1 << *(v17 + 32);
  a2 = v19 & ~v20;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v35[0] + 72);
    do
    {
      sub_22C6AAE30(*(v17 + 48) + v22 * a2, v10);
      if (sub_22C90375C())
      {
        sub_22C5DB210(*&v10[*(DecorationTuple + 20)], v18, v23, v24, v25, v26, v27, v28, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11]);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      sub_22C6A438C();
      a2 = (a2 + 1) & v21;
    }

    while (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_13:
  v30 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22C6A43E0(a1, *(v30 + 48) + *(v35[0] + 72) * a2);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v30 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_16:
  sub_22C6A438C();
  result = sub_22C90B53C();
  __break(1u);
  return result;
}

void sub_22C6A9B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v88 = sub_22C90399C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C377578();
  v87 = sub_22C9039FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v33 = sub_22C36D83C();
  type metadata accessor for QueryDecorationEntityValue(v33);
  sub_22C36985C();
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v86 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  v85 = v37;
  v92 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C36D5B4();
  v93 = v39;
  v40 = sub_22C36BA0C();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v40);
  sub_22C369824();
  v91 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  v46 = v45 - v44;
  v47 = *(*v20 + 16);
  v48 = *(*v20 + 24);
  v89 = v20;
  if (v48 <= v47 || (v24 & 1) == 0)
  {
    if (v24)
    {
      sub_22C6AF900(v47);
      sub_22C5E197C();
    }

    else
    {
      if (v48 > v47)
      {
        sub_22C5E2F48();
        goto LABEL_32;
      }

      sub_22C6AF900(v47);
      sub_22C5E58C0();
    }

    v49 = *v20;
    sub_22C90B62C();
    QueryDecorationTupleParameter.hash(into:)(&v95);
    sub_22C90B66C();
    v50 = v49 + 56;
    sub_22C386A8C();
    v26 = v52 & ~v51;
    if ((*(v49 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
    {
      v53 = ~v51;
      v54 = *(v91 + 72);
      sub_22C5E7AA0(v30 + 8);
      v90 = DecorationTupleParameter;
      v94 = v54;
      do
      {
        sub_22C6AAE30(*(v49 + 48) + v54 * v26, v46);
        sub_22C459028();
        if (sub_22C9097CC())
        {
          v55 = *(DecorationTupleParameter + 20);
          v56 = v46 + v55;
          v57 = v28;
          v58 = (v28 + v55);
          if (*(v46 + v55) != *v58)
          {
            sub_22C38172C();
            v28 = v57;
            goto LABEL_26;
          }

          v59 = *(type metadata accessor for QueryDecorationEntity(0) + 20);
          v60 = *(v92 + 48);
          sub_22C6AAE30(v56 + v59, v93);
          sub_22C6AAE30(v58 + v59, v93 + v60);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            v28 = v57;
            if (EnumCaseMultiPayload != 1)
            {
              sub_22C38172C();
              v72 = swift_getEnumCaseMultiPayload() == 2;
              v73 = v93;
              DecorationTupleParameter = v90;
              if (v72)
              {
                goto LABEL_35;
              }

              goto LABEL_25;
            }

            v62 = sub_22C6AF380();
            sub_22C6AAE30(v62, v86);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_22C38172C();
              sub_22C36BA4C();
              v70 = v86;
              v71 = v88;
LABEL_24:
              v69(v70, v71);
              v73 = v93;
              DecorationTupleParameter = v90;
LABEL_25:
              sub_22C36DD28(v73, &qword_27D9BAA78, &unk_22C90D110);
              v50 = v49 + 56;
LABEL_26:
              v54 = v94;
              goto LABEL_27;
            }

            sub_22C36BA4C();
            v63 = v84;
            v64 = v86;
            v65 = v88;
            v66(v84, v93 + v60, v88);
            sub_22C37A06C();
            v83 = sub_22C90393C();
            v67 = &a18;
          }

          else
          {
            v68 = sub_22C6AF380();
            sub_22C6AAE30(v68, v85);
            if (swift_getEnumCaseMultiPayload())
            {
              v28 = v57;
              sub_22C38172C();
              sub_22C36BA4C();
              v70 = v85;
              v71 = v87;
              goto LABEL_24;
            }

            sub_22C36BA4C();
            v63 = v82;
            v64 = v85;
            v65 = v87;
            v74(v82, v93 + v60, v87);
            sub_22C37A06C();
            v83 = sub_22C9039EC();
            v67 = &a17;
          }

          v75 = *(v67 - 32);
          v76 = *v75;
          (*v75)(v63, v65);
          sub_22C38172C();
          v77 = v64;
          v28 = v57;
          v76(v77, v65);
          sub_22C6AF484();
          sub_22C6A438C();
          DecorationTupleParameter = v90;
          v50 = v49 + 56;
          v54 = v94;
          if (v83)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_22C38172C();
        }

LABEL_27:
        v26 = (v26 + 1) & v53;
      }

      while (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
    }
  }

LABEL_32:
  v78 = *v89;
  *(*v89 + 8 * (v26 >> 6) + 56) |= 1 << v26;
  sub_22C6A43E0(v28, *(v78 + 48) + *(v91 + 72) * v26);
  v79 = *(v78 + 16);
  v80 = __OFADD__(v79, 1);
  v81 = v79 + 1;
  if (v80)
  {
    __break(1u);
LABEL_35:
    sub_22C6AF484();
    sub_22C6A438C();
LABEL_36:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v78 + 16) = v81;
    sub_22C36CC48();
  }
}

void sub_22C6AA158(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E1CD4(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v54, v55, v56, v57, v58, v59, v60, vars0, vars8);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C5E5BE0(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v54, v55, v56, v57, v58, v59, v60, vars0, vars8);
LABEL_8:
      v30 = v8;
      v13 = *v8;
      sub_22C90B62C();
      sub_22C7E6754();
      v14 = sub_22C90B66C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v9 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        sub_22C3A5908(&qword_27D9BAA68, &qword_22C90D108);

        sub_22C5DB210(v16, result, v17, v18, v19, v20, v21, v22, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52);
        v24 = v23;

        if (v24)
        {
          goto LABEL_16;
        }

        v14 = v9 + 1;
      }

      v8 = v30;
      goto LABEL_13;
    }

    sub_22C5E3064();
  }

LABEL_13:
  v25 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v25 + 48) + 8 * v9) = result;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_16:
    sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v28;
  }
}

uint64_t sub_22C6AA2D0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E1E10();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E5CF4();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C3D32C8(&qword_27D9BF0C0, &qword_27D9BF0B0, &unk_22C926980, MEMORY[0x277D1DBD0]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C3D32C8(&qword_27D9BF188, &qword_27D9BF0B0, &unk_22C926980, MEMORY[0x277D1DBD8]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E3134();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6AA55C(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C9037EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E1FEC();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E5EF0();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_281435768, MEMORY[0x277D1ED90], MEMORY[0x277D1EDA0]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_281435760, MEMORY[0x277D1ED90], MEMORY[0x277D1EDA8]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E32B8();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6AA7E8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C5E219C();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_22C5E6074();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_22C6A4290(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      v13 = sub_22C909F7C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_22C6A4290(&qword_27D9BC800, MEMORY[0x277D72238], MEMORY[0x277D72250]);
        v15 = sub_22C90A0BC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_22C5E32E0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_22C90B53C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_22C6AAE30(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

void sub_22C6AAEAC(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281431C30, &protocol descriptor for ActionRequirementEvaluating);
    if (v2 <= 0x3F)
    {
      sub_22C4629F4();
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, &qword_28142FAA8, MEMORY[0x277D1E538]);
        if (v4 <= 0x3F)
        {
          sub_22C6AAFC8(319);
          if (v5 <= 0x3F)
          {
            sub_22C457168(319, &qword_27D9BF6F0, &protocol descriptor for PersonCandidateGenerating);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22C6AAFC8(uint64_t a1)
{
  if (!qword_27D9BF6E0)
  {
    sub_22C3AC1A0(&qword_27D9BF6E8, &qword_22C922E00);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BF6E0);
    }
  }
}

void sub_22C6AB054(uint64_t a1)
{
  sub_22C6AB0D8();
  if (v1 <= 0x3F)
  {
    sub_22C901FAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C6AB0D8()
{
  if (!qword_27D9BF708)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BF708);
    }
  }
}

__n128 sub_22C6AB128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22C6AB13C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C6AB190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_22C6AB1FC()
{
  result = qword_27D9BF710;
  if (!qword_27D9BF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF710);
  }

  return result;
}

uint64_t sub_22C6AB298(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4E0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C6AB34C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C6AB34C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C6AB6E0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C6AB494(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C6AB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  v8 = MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v21;
      v31 = v20;
      v22 = v20;
      do
      {
        sub_22C6AEA50(v21, v16, &qword_27D9BAD60, &qword_22C91D9D0);
        sub_22C6AEA50(v19, v12, &qword_27D9BAD60, &qword_22C91D9D0);
        v23 = *v16;
        v24 = *v12;
        sub_22C36DD28(v12, &qword_27D9BAD60, &qword_22C91D9D0);
        result = sub_22C36DD28(v16, &qword_27D9BAD60, &qword_22C91D9D0);
        if (v23 >= v24)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        v25 = v36;
        sub_22C6AE8BC(v21, v36, &qword_27D9BAD60, &qword_22C91D9D0);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C6AE8BC(v25, v19, &qword_27D9BAD60, &qword_22C91D9D0);
        v19 += v34;
        v21 += v34;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v20 = v31 - 1;
      v21 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C6AB6E0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v121 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  v113 = *(v121 - 8);
  v7 = MEMORY[0x28223BE20](v121);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v120 = &v105 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v123 = (&v105 - v12);
  MEMORY[0x28223BE20](v11);
  v122 = (&v105 - v13);
  v14 = a3[1];
  v115 = a3;
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_101:
    v117 = v16;
    v16 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v116;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v98 = (v117 + 16);
      for (i = *(v117 + 2); i >= 2; *v98 = i)
      {
        if (!*v115)
        {
          goto LABEL_138;
        }

        v100 = &v117[16 * i];
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        sub_22C6AC024(*v115 + *(v113 + 72) * *v100, *v115 + *(v113 + 72) * *v102, *v115 + *(v113 + 72) * v103, v16);
        if (v4)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_128;
        }

        i = *v98 - 1;
        sub_22C56BFF0(v102 + 16, v104, v102);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v117 = sub_22C56BFD8();
    goto LABEL_103;
  }

  v105 = a4;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v107 = v15;
    if (v15 + 1 < v14)
    {
      v117 = v16;
      v118 = v15 + 1;
      v19 = *v115;
      v20 = *(v113 + 72);
      v16 = *v115 + v20 * v18;
      v21 = v122;
      sub_22C6AEA50(v16, v122, &qword_27D9BAD60, &qword_22C91D9D0);
      v22 = v123;
      sub_22C6AEA50(v19 + v20 * v17, v123, &qword_27D9BAD60, &qword_22C91D9D0);
      v23 = *v21;
      v111 = *v22;
      v112 = v23;
      sub_22C36DD28(v22, &qword_27D9BAD60, &qword_22C91D9D0);
      sub_22C36DD28(v21, &qword_27D9BAD60, &qword_22C91D9D0);
      v24 = v17 + 2;
      v114 = v20;
      v25 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v24;
        if (++v118 >= v14)
        {
          break;
        }

        LODWORD(v119) = v112 < v111;
        v27 = v122;
        sub_22C6AEA50(v25, v122, &qword_27D9BAD60, &qword_22C91D9D0);
        v28 = v14;
        v29 = v123;
        sub_22C6AEA50(v16, v123, &qword_27D9BAD60, &qword_22C91D9D0);
        v4 = *v27;
        v30 = *v29;
        v31 = v29;
        v14 = v28;
        sub_22C36DD28(v31, &qword_27D9BAD60, &qword_22C91D9D0);
        sub_22C36DD28(v27, &qword_27D9BAD60, &qword_22C91D9D0);
        v25 += v114;
        v16 += v114;
        v24 = v26 + 1;
        if (((v119 ^ (v4 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v118 = v14;
LABEL_9:
      if (v112 >= v111)
      {
        v16 = v117;
        v18 = v118;
        v17 = v107;
      }

      else
      {
        v18 = v118;
        if (v118 < v107)
        {
          goto LABEL_132;
        }

        if (v107 >= v118)
        {
          v16 = v117;
          v17 = v107;
        }

        else
        {
          if (v14 >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v14;
          }

          v33 = v114 * (v32 - 1);
          v34 = v114 * v32;
          v4 = v107 * v114;
          v35 = v107;
          v17 = v107;
          do
          {
            if (v35 != --v18)
            {
              v36 = *v115;
              if (!*v115)
              {
                goto LABEL_139;
              }

              sub_22C6AE8BC(v36 + v4, v110, &qword_27D9BAD60, &qword_22C91D9D0);
              v37 = v4 < v33 || v36 + v4 >= (v36 + v34);
              if (v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C6AE8BC(v110, v36 + v33, &qword_27D9BAD60, &qword_22C91D9D0);
              v17 = v107;
            }

            ++v35;
            v33 -= v114;
            v34 -= v114;
            v4 += v114;
          }

          while (v35 < v18);
          v16 = v117;
          v18 = v118;
        }
      }
    }

    v38 = v115[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_131;
      }

      if (v18 - v17 < v105)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_130;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v18;
    if ((v50 & 1) == 0)
    {
      sub_22C590218(0, *(v16 + 16) + 1, 1, v16);
      v16 = v95;
    }

    v52 = *(v16 + 16);
    v51 = *(v16 + 24);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      sub_22C590218(v51 > 1, v52 + 1, 1, v16);
      v16 = v96;
    }

    *(v16 + 16) = v53;
    v54 = v16 + 32;
    v55 = (v16 + 32 + 16 * v52);
    v56 = v118;
    *v55 = v17;
    v55[1] = v56;
    v119 = *v106;
    if (!v119)
    {
      goto LABEL_140;
    }

    if (v52)
    {
      v117 = v16;
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v54 + 16 * (v53 - 1));
        v59 = (v16 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v16 + 32);
          v61 = *(v16 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_117;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_120;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_125;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_119;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_122;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v53)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v115)
        {
          goto LABEL_137;
        }

        v89 = (v54 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = v54;
        v92 = v57;
        v16 = v54 + 16 * v57;
        v4 = *(v16 + 8);
        v93 = v116;
        sub_22C6AC024(*v115 + *(v113 + 72) * *v89, *v115 + *(v113 + 72) * *v16, *v115 + *(v113 + 72) * v4, v119);
        v116 = v93;
        if (v93)
        {
          goto LABEL_99;
        }

        if (v4 < v90)
        {
          goto LABEL_112;
        }

        v94 = *(v117 + 2);
        if (v92 > v94)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        v89[1] = v4;
        if (v92 >= v94)
        {
          goto LABEL_114;
        }

        v53 = v94 - 1;
        sub_22C56BFF0((v16 + 16), v94 - 1 - v92, v16);
        v16 = v117;
        *(v117 + 2) = v94 - 1;
        v54 = v91;
        if (v94 <= 2)
        {
          goto LABEL_97;
        }
      }

      v64 = v54 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_115;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_116;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_118;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v115[1];
    v15 = v118;
    if (v118 >= v14)
    {
      goto LABEL_101;
    }
  }

  v39 = v17 + v105;
  if (__OFADD__(v17, v105))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v115[1];
  }

  if (v39 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v39)
  {
    goto LABEL_47;
  }

  v117 = v16;
  v40 = *(v113 + 72);
  v41 = *v115 + v40 * (v18 - 1);
  v4 = -v40;
  v42 = v17 - v18;
  v119 = *v115;
  v108 = v40;
  v109 = v39;
  v43 = v119 + v18 * v40;
LABEL_40:
  v118 = v18;
  v111 = v43;
  v112 = v42;
  v114 = v41;
  v44 = v41;
  while (1)
  {
    v45 = v122;
    sub_22C6AEA50(v43, v122, &qword_27D9BAD60, &qword_22C91D9D0);
    v46 = v123;
    sub_22C6AEA50(v44, v123, &qword_27D9BAD60, &qword_22C91D9D0);
    v47 = *v45;
    v48 = *v46;
    sub_22C36DD28(v46, &qword_27D9BAD60, &qword_22C91D9D0);
    sub_22C36DD28(v45, &qword_27D9BAD60, &qword_22C91D9D0);
    if (v47 >= v48)
    {
LABEL_45:
      v18 = v118 + 1;
      v41 = v114 + v108;
      v42 = v112 - 1;
      v43 = v111 + v108;
      if (v118 + 1 == v109)
      {
        v18 = v109;
        v16 = v117;
        v17 = v107;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v119)
    {
      break;
    }

    v49 = v120;
    sub_22C6AE8BC(v43, v120, &qword_27D9BAD60, &qword_22C91D9D0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C6AE8BC(v49, v44, &qword_27D9BAD60, &qword_22C91D9D0);
    v44 += v4;
    v43 += v4;
    v37 = __CFADD__(v42++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_22C6AC024(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  v8 = MEMORY[0x28223BE20](v59);
  v60 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v61 = (&v52 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v65 = a1;
  v64 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_22C3D7A00(a2, v16 / v13, a4);
    v34 = a4 + v19 * v13;
    v35 = -v13;
    v36 = v34;
    v55 = -v13;
    v56 = a4;
    v62 = a1;
LABEL_36:
    v37 = a2 + v35;
    v53 = v36;
    v57 = a2 + v35;
    while (1)
    {
      if (v34 <= a4)
      {
        v65 = a2;
        v63 = v36;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v36;
      v38 = a2;
      v39 = a3 + v35;
      v40 = v34 + v35;
      v41 = v61;
      v42 = v37;
      v43 = v34;
      sub_22C6AEA50(v34 + v35, v61, &qword_27D9BAD60, &qword_22C91D9D0);
      v44 = v42;
      v45 = v60;
      sub_22C6AEA50(v44, v60, &qword_27D9BAD60, &qword_22C91D9D0);
      v58 = *v41;
      v46 = v45;
      v47 = *v45;
      sub_22C36DD28(v46, &qword_27D9BAD60, &qword_22C91D9D0);
      sub_22C36DD28(v41, &qword_27D9BAD60, &qword_22C91D9D0);
      if (v58 < v47)
      {
        if (a3 < v38 || v39 >= v38)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v54;
          v35 = v55;
          a4 = v56;
          a3 = v39;
          a1 = v62;
          v34 = v43;
        }

        else
        {
          v35 = v55;
          v36 = v54;
          v15 = a3 == v38;
          a4 = v56;
          v50 = v57;
          a2 = v57;
          a3 = v39;
          a1 = v62;
          v34 = v43;
          if (!v15)
          {
            v51 = v54;
            swift_arrayInitWithTakeBackToFront();
            v34 = v43;
            a2 = v50;
            v36 = v51;
          }
        }

        goto LABEL_36;
      }

      v48 = a3 < v43 || v39 >= v43;
      a2 = v38;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v35;
        v34 = v40;
        v36 = v40;
        v35 = v55;
        a4 = v56;
        a1 = v62;
        v37 = v57;
      }

      else
      {
        v36 = v40;
        v15 = v43 == a3;
        a3 += v35;
        v34 = v40;
        v35 = v55;
        a4 = v56;
        a1 = v62;
        v37 = v57;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v39;
          v34 = v40;
          v36 = v40;
        }
      }
    }

    v65 = a2;
    v63 = v53;
  }

  else
  {
    sub_22C3D7A00(a1, v14 / v13, a4);
    v57 = a3;
    v58 = a4 + v18 * v13;
    v63 = v58;
    v20 = a1;
    while (a4 < v58 && a2 < a3)
    {
      v62 = v20;
      v22 = v13;
      v23 = a2;
      v24 = a2;
      v25 = v61;
      sub_22C6AEA50(v23, v61, &qword_27D9BAD60, &qword_22C91D9D0);
      v26 = a4;
      v27 = a4;
      v28 = v60;
      sub_22C6AEA50(v26, v60, &qword_27D9BAD60, &qword_22C91D9D0);
      v29 = *v25;
      v30 = *v28;
      sub_22C36DD28(v28, &qword_27D9BAD60, &qword_22C91D9D0);
      sub_22C36DD28(v25, &qword_27D9BAD60, &qword_22C91D9D0);
      if (v29 >= v30)
      {
        v13 = v22;
        a4 = v27 + v22;
        v31 = v62;
        if (v62 < v27 || v62 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v24;
        }

        else
        {
          a2 = v24;
          if (v62 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v27 + v22;
      }

      else
      {
        v13 = v22;
        a2 = v24 + v22;
        v31 = v62;
        v32 = v62 < v24 || v62 >= a2;
        a4 = v27;
        if (v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v62 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v20 = v31 + v13;
      v65 = v20;
      a3 = v57;
    }
  }

LABEL_58:
  sub_22C838240(&v65, &v64, &v63);
  return 1;
}

void *sub_22C6AC4E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_22C6AD3E4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22C6AC588(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C6AD938(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C6AC600(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22C6AE24C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_22C6AC6A0()
{
  sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);

  return sub_22C88FE78();
}

uint64_t sub_22C6AC71C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BF790, &qword_22C923048) + 48);
  v5 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
  result = sub_22C88FF10(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_22C6AC78C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *a4;
  sub_22C3806B8();
  sub_22C6ACD18();
  *a4 = v5;
}

uint64_t sub_22C6AC7FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v68 = a5;
  v48 = a4;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v47 - v11;
  v12 = sub_22C9069BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v47 - v17;
  sub_22C8920A0();
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v57 = (v8 + 32);
  v58 = (v13 + 32);
  v63 = v67;
  v52 = v8 + 16;
  v51 = v8 + 8;
  v53 = v13;
  v50 = (v13 + 8);
  v19 = v15;
  v20 = v48;
  v56 = v8;
  v49 = v8 + 40;
  v47[2] = a1;

  v47[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_22C89143C();
    v21 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v18, 1, v21) == 1)
    {
      sub_22C36A674(v60);
    }

    v22 = *(v21 + 48);
    v23 = *v58;
    (*v58)(v19, v18, v12);
    v24 = *v57;
    v25 = &v18[v22];
    v26 = v7;
    (*v57)(v59, v25, v7);
    v27 = *v68;
    sub_22C628D18();
    v30 = v29;
    v31 = v27[2];
    v32 = (v28 & 1) == 0;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v31 + v32)
    {
      if ((v20 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F148();
      sub_22C628D18();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_17;
      }

      v30 = v34;
    }

    v36 = *v68;
    if (v33)
    {
      v37 = v56;
      v38 = v54;
      v39 = v19;
      v40 = v12;
      v41 = v59;
      v7 = v26;
      (*(v56 + 16))(v54, v59, v26);
      v42 = v41;
      v12 = v40;
      v19 = v39;
      (*(v37 + 8))(v42, v26);
      (*v50)(v39, v12);
      (*(v37 + 40))(v36[7] + *(v37 + 72) * v30, v38, v26);
    }

    else
    {
      v36[(v30 >> 6) + 8] |= 1 << v30;
      v23((v36[6] + *(v53 + 72) * v30), v19, v12);
      v7 = v26;
      v24((v36[7] + *(v56 + 72) * v30), v59, v26);
      v43 = v36[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_16;
      }

      v36[2] = v45;
    }

    v20 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C6ACD18()
{
  sub_22C370030();
  v59 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v52 = sub_22C902D4C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v49 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v15 = sub_22C3A5908(&qword_27D9BF7A0, &unk_22C923350);
  sub_22C369914(v15);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C387210();
  sub_22C44178C();
  sub_22C8920A0();
  v53 = v56;
  v54 = v57;
  v55 = v58;
  sub_22C6AFE30();
  v50 = v9;
  v51 = (v9 + 32);
  v48[4] = v9 + 8;
  v48[5] = v9 + 16;
  sub_22C5E7AA0(v9 + 40);
  v48[1] = v7;

  v48[0] = v5;

  while (1)
  {
    sub_22C8917D4();
    v17 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
    v18 = sub_22C36CCF8();
    sub_22C36D0A8(v18, v19, v17);
    if (v20)
    {
      sub_22C36A674(v53);

      sub_22C36FB20();
      return;
    }

    v22 = *v0;
    v21 = *(v0 + 1);
    v23 = *v51;
    v24 = v14;
    (*v51)(v14, &v0[*(v17 + 48)], v52);
    v25 = *v59;
    v26 = sub_22C5CA738();
    v28 = sub_22C36E2BC(v26, v27);
    sub_22C369DA4();
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v29;
    if (v25[3] >= v32)
    {
      if ((v3 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF470, &qword_22C922730);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F3D0(v32);
      v34 = sub_22C5CA738();
      v36 = sub_22C36E2BC(v34, v35);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_16;
      }

      v28 = v36;
    }

    v38 = *v59;
    if (v33)
    {
      v40 = v49;
      v39 = v50;
      v14 = v24;
      v41 = v52;
      (*(v50 + 16))(v49, v24, v52);
      v42 = sub_22C36CA88();
      v43(v42);

      (*(v39 + 40))(v38[7] + *(v39 + 72) * v28, v40, v41);
      v3 = 1;
    }

    else
    {
      sub_22C36ED48(&v38[v28 >> 6]);
      v44 = (v38[6] + 16 * v28);
      *v44 = v22;
      v44[1] = v21;
      v14 = v24;
      v23((v38[7] + *(v50 + 72) * v28), v24, v52);
      v45 = v38[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_15;
      }

      v38[2] = v47;
      v3 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C90B54C();
  __break(1u);
}

void *sub_22C6AD0A8(uint64_t a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = sub_22C6AC4E0(v14, v9, a1, a2, a3);
      MEMORY[0x2318B9880](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v9, v11);

  v12 = sub_22C6AD3E4(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

void *sub_22C6AD280(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C6AC588(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C6AD938(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_22C6AD3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v71 = a4;
  v54[1] = a2;
  v55 = a1;
  v70 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v6 = MEMORY[0x28223BE20](v70);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = v54 - v9;
  v10 = sub_22C908C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9069BC();
  result = MEMORY[0x28223BE20](v14);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v72 = a3;
  v20 = *(a3 + 64);
  v58 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v56 = 0;
  v57 = (v21 + 63) >> 6;
  v67 = v16 + 2;
  v68 = v8;
  v77 = v16;
  v73 = v16 + 1;
  v69 = v11;
  v64 = (v11 + 8);
  v65 = v11 + 16;
  v62 = v10;
  v63 = v18;
  v61 = v13;
  while (v23)
  {
    v24 = v13;
    v25 = __clz(__rbit64(v23));
    v76 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v19 << 6);
    v29 = v72;
    v30 = *(v72 + 48) + v77[9] * v28;
    v75 = v77[2];
    v31 = v18;
    v75(v18, v30, v14);
    v32 = *(v29 + 56);
    v33 = *(v69 + 72);
    v60 = v28;
    v34 = *(v69 + 16);
    v35 = v62;
    v34(v24, v32 + v33 * v28, v62);
    v36 = v66;
    v75(v66, v31, v14);
    v37 = v70;
    v38 = v35;
    v34((v36 + *(v70 + 48)), v24, v35);
    v39 = v68;
    sub_22C6AEA50(v36, v68, &qword_27D9BF110, &unk_22C922580);
    v40 = sub_22C9069AC();
    v42 = v41;
    v43 = v14;
    v75 = v77[1];
    (v75)(v39, v14);
    if (v40 == v71 && v42 == v74)
    {

      v49 = *(v37 + 48);
      sub_22C36DD28(v36, &qword_27D9BF110, &unk_22C922580);
      v50 = *v64;
      (*v64)(v39 + v49, v38);
      v13 = v61;
      v50(v61, v38);
      v51 = v63;
      v14 = v43;
      result = (v75)(v63, v43);
      v18 = v51;
      v23 = v76;
    }

    else
    {
      v59 = sub_22C90B4FC();

      v45 = *(v37 + 48);
      sub_22C36DD28(v36, &qword_27D9BF110, &unk_22C922580);
      v46 = *v64;
      (*v64)(v39 + v45, v38);
      v13 = v61;
      v46(v61, v38);
      v47 = v63;
      result = (v75)(v63, v14);
      v18 = v47;
      v23 = v76;
      if ((v59 & 1) == 0)
      {
        *(v55 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        if (__OFADD__(v56++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v57)
    {
      sub_22C8392BC();
      v53 = v52;

      return v53;
    }

    v27 = *(v58 + 8 * v19);
    ++v26;
    if (v27)
    {
      v24 = v13;
      v25 = __clz(__rbit64(v27));
      v76 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_22C6AD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[1] = a2;
  v51 = a1;
  v68 = sub_22C9093BC();
  v4 = *(v68 - 8);
  v5 = MEMORY[0x28223BE20](v68);
  v67 = (v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v66 = v50 - v7;
  v65 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8 = MEMORY[0x28223BE20](v65);
  v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = v50 - v10;
  v77 = sub_22C908C5C();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22C9069BC();
  MEMORY[0x28223BE20](v75);
  v73 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v15 = 0;
  v69 = a3;
  v16 = *(a3 + 64);
  v54 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v53 = (v17 + 63) >> 6;
  v61 = v11 + 16;
  v62 = v13 + 2;
  v63 = v11;
  v72 = v11 + 8;
  v60 = *MEMORY[0x277D729A0];
  v59 = *MEMORY[0x277D72A58];
  v57 = (v4 + 8);
  v58 = (v4 + 104);
  v74 = v13;
  v56 = v13 + 1;
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v71 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v15 << 6);
    v24 = v69;
    v25 = v73;
    v26 = *(v69 + 48) + v74[9] * v23;
    v70 = v74[2];
    v27 = v75;
    v70(v73, v26, v75);
    v28 = *(v24 + 56);
    v29 = v63;
    v30 = *(v63 + 72);
    v55 = v23;
    v31 = *(v63 + 16);
    v32 = v76;
    v31(v76, v28 + v30 * v23, v77);
    v33 = v78;
    v70(v78, v25, v27);
    v34 = v65;
    v35 = v32;
    v36 = v77;
    v31((v33 + *(v65 + 48)), v35, v77);
    v37 = v64;
    sub_22C6AEA50(v33, v64, &qword_27D9BF110, &unk_22C922580);
    v38 = *(v34 + 48);
    v39 = v66;
    sub_22C90774C();
    v40 = *(v29 + 8);
    v40(v37 + v38, v36);
    v41 = sub_22C90931C();
    v42 = swift_allocBox();
    (*(*(v41 - 8) + 104))(v43, v60, v41);
    v44 = v67;
    v45 = v68;
    *v67 = v42;
    (*v58)(v44, v59, v45);
    sub_22C6A4290(&qword_27D9BF1E8, MEMORY[0x277D72A78], MEMORY[0x277D72A90]);
    LODWORD(v70) = sub_22C90A0BC();
    v46 = *v57;
    (*v57)(v44, v45);
    v46(v39, v45);
    sub_22C36DD28(v78, &qword_27D9BF110, &unk_22C922580);
    v47 = v75;
    v48 = v74[1];
    v48(v37, v75);
    v40(v76, v36);
    v48(v73, v47);
    v19 = v71;
    if ((v70 & 1) == 0)
    {
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22C8392BC();
        return;
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v53)
    {
      goto LABEL_15;
    }

    v22 = *(v54 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v71 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C6ADF80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = &v29;
    MEMORY[0x28223BE20](v9);
    v30 = v7;
    v31 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v7, v31);
    v33 = 0;
    v14 = 0;
    v7 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v8 = v19 | (v14 << 6);
      v35 = *(*(a1 + 48) + 8 * v8);

      v22 = sub_22C69015C(&v35, v34);
      if (v3)
      {

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        return v18;
      }

      v23 = v22;

      if (v23)
      {
        *(v31 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_17:
          sub_22C7EC7C4(v31, v30, v33, a1, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
          v18 = v25;
          swift_bridgeObjectRelease_n();
          return v18;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(v7 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v18 = sub_22C6AC600(v27, v7, a1, v28);

  MEMORY[0x2318B9880](v27, -1, -1);
  swift_bridgeObjectRelease_n();
  return v18;
}

uint64_t sub_22C6AE24C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v30[0] = *(*(a3 + 48) + 8 * v15);

    v16 = sub_22C69015C(v30, a4);
    if (v4)
    {
    }

    v17 = v16;

    if (v17)
    {
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22C7EC7C4(v26, a2, v27, a3, v19, v20, v21, v22, a2, v26, v27, a4, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]);
        v24 = v23;

        return v24;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C6AE3D4(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (v2)
  {
    sub_22C90A11C();
  }

  return sub_22C37170C();
}

uint64_t sub_22C6AE4F4()
{
  sub_22C3704C4();
  v2 = sub_22C901FAC();
  sub_22C369914(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22C58001C(v0, v4);
}

uint64_t sub_22C6AE598()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = sub_22C6AF0F4(v6);

  return sub_22C66DD0C(v8, v9, v10, v2, v3, v5, v4);
}

unint64_t sub_22C6AE694()
{
  result = qword_27D9BF788;
  if (!qword_27D9BF788)
  {
    sub_22C3AC1A0(&qword_27D9BF738, &qword_22C922F48);
    sub_22C6A4290(&qword_27D9BAA90, MEMORY[0x277D1E968], MEMORY[0x277D1E970]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF788);
  }

  return result;
}

uint64_t sub_22C6AE8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

uint64_t sub_22C6AE904()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_22C382AF4;

  return sub_22C6891AC(v5, v3, v6, v7, v9, v8);
}

uint64_t sub_22C6AE9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF7C0, &unk_22C923380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C6AEA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

uint64_t sub_22C6AEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[76];
  *(v9 - 256) = v8[79];
  *(v9 - 248) = v11;
  v12 = v8[72];
  *(v9 - 240) = v8[73];
  *(v9 - 232) = v12;
  v13 = v8[70];
  *(v9 - 224) = v8[71];
  *(v9 - 216) = v13;
  v15 = v8[63];
  v14 = v8[64];
  *(v9 - 208) = v8[67];
  *(v9 - 200) = v14;
  v17 = v8[59];
  v16 = v8[60];
  *(v9 - 192) = v15;
  *(v9 - 184) = v16;
  v18 = v8[56];
  *(v9 - 176) = v17;
  *(v9 - 168) = v18;
  v19 = v8[50];
  *(v9 - 160) = v8[53];
  *(v9 - 152) = v19;
  v21 = v8[43];
  v20 = v8[44];
  *(v9 - 144) = v8[47];
  *(v9 - 136) = v20;
  v23 = v8[39];
  v22 = v8[40];
  *(v9 - 128) = v21;
  *(v9 - 120) = v22;
  v24 = v8[38];
  *(v9 - 112) = v23;
  *(v9 - 104) = v24;
  v25 = v8[34];
  *(v9 - 96) = v8[35];
  *(v9 - 88) = v25;
}

uint64_t sub_22C6AEDF8(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_22C909F7C();
}

void sub_22C6AEE8C()
{

  sub_22C590550();
}

void sub_22C6AEF40(uint64_t a1@<X8>)
{
  *(v3 - 176) = v1;
  *(v3 - 168) = a1;
  v5 = v2[28];
  v4 = v2[29];
  *(v3 - 160) = v2[32];
  *(v3 - 152) = v4;
  v7 = v2[26];
  v6 = v2[27];
  *(v3 - 144) = v5;
  *(v3 - 136) = v6;
  v8 = v2[25];
  *(v3 - 128) = v7;
  *(v3 - 120) = v8;
}

uint64_t sub_22C6AEF78(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

uint64_t sub_22C6AF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[48];
  *(v9 - 256) = v8[49];
  *(v9 - 248) = v11;
  v12 = v8[45];
  *(v9 - 240) = v8[46];
  *(v9 - 232) = v12;
  v13 = v8[41];
  *(v9 - 224) = v8[42];
  *(v9 - 216) = v13;
  v14 = v8[39];
  *(v9 - 208) = v8[40];
  *(v9 - 200) = v14;
  v15 = v8[35];
  *(v9 - 192) = v8[36];
  *(v9 - 184) = v15;
  v16 = v8[29];
  *(v9 - 176) = v8[32];
  *(v9 - 168) = v16;
  v17 = v8[25];
  *(v9 - 160) = v8[26];
  *(v9 - 152) = v17;
  v18 = v8[23];
  *(v9 - 144) = v8[24];
  *(v9 - 136) = v18;
  v20 = v8[16];
  v19 = v8[17];
  *(v9 - 128) = v8[20];
  *(v9 - 120) = v19;
  v21 = v8[13];
  *(v9 - 112) = v20;
  *(v9 - 104) = v21;
}

uint64_t sub_22C6AF1CC()
{

  return sub_22C6A438C();
}

uint64_t sub_22C6AF230()
{
  v3 = v1 + *(type metadata accessor for Interpreter(0) + 28);
  v4 = v0 + *(v2 + 28);

  return sub_22C378AB0(v3, v4);
}

uint64_t sub_22C6AF2A0()
{
  *(v1 - 104) = *(v0 + 88);
  *(v1 - 120) = *(v0 + 64);
}

uint64_t sub_22C6AF2F8()
{
  v3 = v0[95];
  *(v1 - 128) = v0[93];
  *(v1 - 120) = v3;
  v4 = v0[53];
  *(v1 - 144) = v0[88];
  *(v1 - 136) = v4;
  *(v1 - 152) = v0[36];
}

uint64_t sub_22C6AF5EC()
{

  return sub_22C6A438C();
}

uint64_t sub_22C6AF85C(uint64_t a1)
{

  return sub_22C90445C();
}

uint64_t sub_22C6AF878(uint64_t a1)
{

  return sub_22C9068FC();
}

void sub_22C6AF8AC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t sub_22C6AF900@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 288) = v1;
  *(v4 - 296) = v3;
  *(v4 - 280) = v2;
  return a1 + 1;
}

uint64_t sub_22C6AF99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C6AFA30()
{
  v3 = *(*(v1 - 104) + 20);
  *(v1 - 112) = v0;
  *(v1 - 104) = v3;

  return swift_task_alloc();
}

uint64_t sub_22C6AFA50@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  *a2 = a7;
  a2[1] = a6;
  a2[2].n128_u64[0] = a5;
  *(v7 - 144) = a1;

  return swift_willThrow();
}

uint64_t sub_22C6AFA98()
{

  return sub_22C90699C();
}

uint64_t sub_22C6AFAEC()
{

  return sub_22C90B62C();
}

void sub_22C6AFBA8()
{
  v2 = *(v0 + 1296);
  *(v1 - 136) = *(v0 + 1272);
  *(v1 - 128) = v2;
}

void sub_22C6AFC10()
{
  v2 = *(v0 + 744);
  *(v1 - 128) = *(v0 + 720);
  *(v1 - 120) = v2;
}

uint64_t sub_22C6AFC8C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C6AFD74()
{

  return swift_allocObject();
}

uint64_t sub_22C6AFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

double sub_22C6AFFB0()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

void sub_22C6AFFE0()
{

  JUMPOUT(0x2318B57A0);
}

uint64_t sub_22C6B0004()
{

  return sub_22C6A438C();
}

void sub_22C6B0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *(v21 - 136);
  v24 = *(v21 - 168);

  sub_22C68AD24(v23, v24, v20, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22C6B0044()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C6B005C()
{

  return swift_projectBox();
}

void sub_22C6B0074(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C6B0090(uint64_t a1)
{

  return sub_22C90878C();
}

uint64_t sub_22C6B00B4()
{
}

void sub_22C6B00D8()
{

  sub_22C646D68();
}

void sub_22C6B00F4()
{
  v2 = *(v0 + 1176);
  *(v1 - 168) = *(v0 + 1128);
  *(v1 - 160) = v2;
}

uint64_t sub_22C6B0190(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 20) = v1;
  *(result + 24) = v3;
  *(result + 28) = v4;
  return result;
}

uint64_t sub_22C6B0214()
{
  result = v0;
  *(v1 - 184) += 8;
  return result;
}

void sub_22C6B0264(uint64_t a1@<X8>)
{
  *(a1 - 32) = *(v3 - 144);
  *(a1 - 24) = v1;
  v4 = *(v3 - 168);
  *(a1 - 16) = v2;
  *(a1 - 8) = v4;
}

void sub_22C6B0464()
{

  sub_22C3B74E0(0, v0, 0);
}

uint64_t sub_22C6B0484(uint64_t a1)
{

  return sub_22C908BFC();
}

uint64_t sub_22C6B04A4()
{
}

void sub_22C6B04C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_22C6B04E4()
{

  return type metadata accessor for StepResolution(0);
}

uint64_t sub_22C6B051C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C6B0534()
{

  return sub_22C90941C();
}

uint64_t sub_22C6B054C()
{

  return sub_22C908AEC();
}

uint64_t sub_22C6B0564@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  sub_22C374168((v1 + a1), *(v1 + a1 + 24));
  return v2 + 8;
}

void sub_22C6B05E8()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v31 = v4;
  v29 = v5;
  v6 = &qword_27D9BAA30;
  v32 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v35 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v30 = v10;
  v11 = v3 + 64;
  sub_22C36D280();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v33 = v3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v6;
      v34 = v1;
      v19 = v17;
LABEL_7:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = *(v33 + 56);
      v22 = (*(v33 + 48) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      sub_22C901FAC();
      sub_22C369A9C();
      (*(v25 + 16))(&v30[*(v32 + 48)], v21 + *(v25 + 72) * v20);
      *v30 = v23;
      *(v30 + 1) = v24;
      v6 = v18;
      sub_22C6AE8BC(v30, v35, v18, &unk_22C911F70);

      v26 = v31(v35);
      v1 = v34;
      if (v34)
      {
        sub_22C36DD80(v35, &qword_27D9BAA30);

        goto LABEL_13;
      }

      if (v26)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_22C36DD80(v35, v18);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_3;
      }
    }

    sub_22C6AE8BC(v35, v29, &qword_27D9BAA30, &unk_22C911F70);
    v27 = v29;
    v28 = 0;
LABEL_12:
    sub_22C36C640(v27, v28, 1, v32);
LABEL_13:
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v27 = v29;
        v28 = 1;
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v6;
        v34 = v1;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_22C6B0920()
{
  sub_22C370030();
  v3 = v2;
  v23 = v4;
  v6 = v5(0);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C38059C();
  v10 = 0;
  v11 = *(v3 + 16);
  while (v11 != v10)
  {
    sub_22C36BA94();
    (*(v8 + 16))(v1, v3 + v12 + *(v8 + 72) * v10, v6);
    v13 = v23(v1);
    if (v0)
    {
      v16 = sub_22C512158();
      v17(v16);
      goto LABEL_10;
    }

    if (v13)
    {
      v18 = sub_22C379FC8();
      v19(v18);
      break;
    }

    v14 = sub_22C512158();
    v15(v14);
    ++v10;
  }

  v20 = sub_22C70CF48();
  sub_22C36C640(v20, v21, v22, v6);
LABEL_10:
  sub_22C36FB20();
}

void sub_22C6B0AA0()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v30 = v4;
  v27 = v5;
  v34 = sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v33 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v28 = v9;
  v29 = v10;
  v11 = v3 + 64;
  sub_22C36D280();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v31 = v3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v32 = v1;
      v18 = v17;
LABEL_7:
      (*(v29 + 16))(v28, *(v31 + 56) + *(v29 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v34);
      v19 = *(v29 + 32);
      v20 = sub_22C36FC08();
      v19(v20);
      v21 = v30(v33);
      v1 = v32;
      if (v32)
      {
        sub_22C70CF08();
        v26(v33, v34);

        goto LABEL_13;
      }

      if (v21)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_22C70CF08();
      v22(v33, v34);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_3;
      }
    }

    (v19)(v27, v33, v34);
LABEL_12:
    v23 = sub_22C70CF48();
    sub_22C36C640(v23, v24, v25, v34);
LABEL_13:
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v32 = v1;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C6B0CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C369A9C();
  (*(v19 + 16))(a9, a1 + v18);
  v20 = type metadata accessor for Interpreter2(0);
  v21 = (a9 + v20[5]);
  v21[3] = a10;
  v21[4] = a12;
  v22 = sub_22C36D548(v21);
  (*(*(a10 - 8) + 16))(v22, a2, a10);
  v23 = (a9 + v20[6]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + v20[7]);
  v24[3] = a11;
  v24[4] = a13;
  sub_22C36D548(v24);
  sub_22C70C424();
  (*(v25 + 32))();

  v26 = sub_22C36FC2C();
  v27(v26);
  v28 = a9 + v20[8];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a6 + 32);
  v30 = a9 + v20[9];
  *(v30 + 32) = *(a7 + 32);
  v31 = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = v31;
  return sub_22C36C730(a8, a9 + v20[10]);
}

uint64_t Interpreter2.resolve(sessionState:contextId:planCycleId:)()
{
  sub_22C369980();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = sub_22C9078FC();
  v1[32] = v6;
  sub_22C3699B8(v6);
  v1[33] = v7;
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v8 = sub_22C9085EC();
  v1[36] = v8;
  sub_22C3699B8(v8);
  v1[37] = v9;
  v1[38] = sub_22C36D0D4();
  v1[39] = swift_task_alloc();
  v10 = type metadata accessor for ExecutionPreconditionEvaluator(0);
  sub_22C369914(v10);
  v1[40] = sub_22C3699D4();
  v11 = sub_22C90775C();
  v1[41] = v11;
  sub_22C3699B8(v11);
  v1[42] = v12;
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v13 = sub_22C906ECC();
  v1[45] = v13;
  sub_22C3699B8(v13);
  v1[46] = v14;
  v1[47] = sub_22C3699D4();
  v15 = sub_22C90684C();
  v1[48] = v15;
  sub_22C3699B8(v15);
  v1[49] = v16;
  v1[50] = sub_22C3699D4();
  v17 = sub_22C90711C();
  v1[51] = v17;
  sub_22C3699B8(v17);
  v1[52] = v18;
  v1[53] = sub_22C3699D4();
  v19 = sub_22C90654C();
  v1[54] = v19;
  sub_22C3699B8(v19);
  v1[55] = v20;
  v1[56] = sub_22C3699D4();
  v21 = sub_22C9070DC();
  v1[57] = v21;
  sub_22C3699B8(v21);
  v1[58] = v22;
  v1[59] = sub_22C36D0D4();
  v1[60] = swift_task_alloc();
  v23 = sub_22C90888C();
  v1[61] = v23;
  sub_22C3699B8(v23);
  v1[62] = v24;
  v1[63] = sub_22C36D0D4();
  v1[64] = swift_task_alloc();
  v25 = sub_22C90363C();
  v1[65] = v25;
  sub_22C3699B8(v25);
  v1[66] = v26;
  v1[67] = sub_22C3699D4();
  v27 = sub_22C9088CC();
  v1[68] = v27;
  sub_22C3699B8(v27);
  v1[69] = v28;
  v1[70] = sub_22C3699D4();
  v29 = type metadata accessor for StepResolution(0);
  sub_22C369914(v29);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v30 = sub_22C90587C();
  v1[74] = v30;
  sub_22C3699B8(v30);
  v1[75] = v31;
  v1[76] = sub_22C3699D4();
  v32 = sub_22C9058CC();
  v1[77] = v32;
  sub_22C3699B8(v32);
  v1[78] = v33;
  v1[79] = sub_22C3699D4();
  v34 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v34);
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v35 = sub_22C90451C();
  v1[85] = v35;
  sub_22C3699B8(v35);
  v1[86] = v36;
  v1[87] = sub_22C36D0D4();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v37 = sub_22C90069C();
  v1[92] = v37;
  sub_22C3699B8(v37);
  v1[93] = v38;
  v1[94] = sub_22C36D0D4();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v39 = sub_22C9087BC();
  v1[99] = v39;
  sub_22C3699B8(v39);
  v1[100] = v40;
  v1[101] = sub_22C36D0D4();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v41 = type metadata accessor for PlanResolverTelemetryRequestContext(0);
  v1[106] = v41;
  sub_22C369914(v41);
  v1[107] = sub_22C36D0D4();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v42 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  sub_22C369914(v42);
  v1[117] = sub_22C3699D4();
  v43 = sub_22C901FAC();
  v1[118] = v43;
  sub_22C3699B8(v43);
  v1[119] = v44;
  v1[120] = sub_22C36D0D4();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v45 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v1[131] = v45;
  sub_22C369914(v45);
  v1[132] = sub_22C36D0D4();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v46 = sub_22C906C4C();
  v1[146] = v46;
  sub_22C3699B8(v46);
  v1[147] = v47;
  v1[148] = sub_22C3699D4();
  v48 = sub_22C906C3C();
  v1[149] = v48;
  sub_22C3699B8(v48);
  v1[150] = v49;
  v1[151] = sub_22C3699D4();
  v50 = sub_22C90873C();
  v1[152] = v50;
  sub_22C3699B8(v50);
  v1[153] = v51;
  v1[154] = sub_22C3699D4();
  v52 = sub_22C9080CC();
  v1[155] = v52;
  sub_22C3699B8(v52);
  v1[156] = v53;
  v1[157] = sub_22C3699D4();
  v54 = sub_22C9089DC();
  v1[158] = v54;
  sub_22C3699B8(v54);
  v1[159] = v55;
  v1[160] = sub_22C36D0D4();
  v1[161] = swift_task_alloc();
  v56 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v56);
  v1[162] = sub_22C36D0D4();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v57 = sub_22C90880C();
  v1[168] = v57;
  sub_22C3699B8(v57);
  v1[169] = v58;
  v1[170] = sub_22C36D0D4();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v59 = sub_22C908A0C();
  v1[177] = v59;
  sub_22C3699B8(v59);
  v1[178] = v60;
  v1[179] = sub_22C36D0D4();
  v1[180] = swift_task_alloc();
  v61 = sub_22C9063DC();
  v1[181] = v61;
  sub_22C3699B8(v61);
  v1[182] = v62;
  v1[183] = sub_22C36D0D4();
  v1[184] = swift_task_alloc();
  v1[185] = swift_task_alloc();
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v63, v64, v65);
}

uint64_t sub_22C6B1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C903F8C();
  v14 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C37E84C();
  if (os_log_type_enabled(v14, v15))
  {
    sub_22C3720F4();
    v16 = swift_slowAlloc();
    sub_22C36C890(v16);
    sub_22C38C43C(&dword_22C366000, v14, v12, "running interpreter");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v17 = v13[182];
  v767 = v13[177];
  v18 = v13[169];
  v19 = v13[167];

  v20 = *(v17 + 8);
  v21 = sub_22C36BAFC();
  v20(v21);
  v22 = v20;
  sub_22C90878C();
  v23 = sub_22C9087DC();
  v24 = *(v18 + 8);
  v25 = sub_22C36CA88();
  v763 = v18 + 8;
  v24(v25);
  sub_22C3A5950(v23);

  sub_22C36D0A8(v19, 1, v767);
  if (v125)
  {
    sub_22C36DD80(v13[167], &qword_27D9BA808);
    sub_22C903F8C();
    v26 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    if (os_log_type_enabled(v26, v27))
    {
      sub_22C3720F4();
      v28 = swift_slowAlloc();
      sub_22C36C890(v28);
      sub_22C36BB14(&dword_22C366000, v29, v30, "transcript is empty");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v31 = sub_22C36BAFC();
    v20(v31);
    type metadata accessor for InterpreterError(0);
    sub_22C36A1EC();
    sub_22C70C380(v32, v33);
    sub_22C37FDE8();
    sub_22C37A198();
    v34 = swift_allocError();
    sub_22C6AF828(v34, v35);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v751 = v24;
  (*(v13[178] + 32))(v13[180], v13[167], v13[177]);
  sub_22C903F8C();
  v45 = sub_22C37FF20();
  v46(v45);
  v47 = sub_22C9063CC();
  v48 = sub_22C90AABC();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v13[192];
  v51 = v13[179];
  v52 = v13[178];
  v768 = v13[177];
  v758 = v20;
  if (v49)
  {
    v746 = v13[181];
    v53 = v13[161];
    v54 = v13[159];
    v55 = v13[157];
    v56 = v13[156];
    v691 = v13[158];
    v701 = v13[155];
    sub_22C36BED8();
    v723 = v48;
    v57 = swift_slowAlloc();
    sub_22C370220();
    v779 = swift_slowAlloc();
    *v57 = 136315138;
    v732 = v50;
    sub_22C9089EC();
    sub_22C90899C();
    (*(v54 + 8))(v53, v691);
    v58 = sub_22C9080BC();
    (*(v56 + 8))(v55, v701);
    v22 = v758;
    v59 = *(v52 + 8);
    v59(v51, v768);
    v60 = sub_22C36BBCC();
    sub_22C36F9F4(v60, v61, v62);
    sub_22C37BB14();

    *(v57 + 4) = v58;
    _os_log_impl(&dword_22C366000, v47, v723, "evaluating payload: %s", v57, 0xCu);
    sub_22C36FF94(v779);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v63 = v732;
    v64 = v746;
  }

  else
  {

    v59 = *(v52 + 8);
    v59(v51, v768);
    v63 = sub_22C36BBCC();
  }

  v22(v63, v64);
  v13[194] = v59;
  sub_22C9089EC();
  v65 = sub_22C36BAFC();
  v67 = v66(v65);
  if (v67 == *MEMORY[0x277D1E858])
  {
    v68 = v13[160];
    v69 = sub_22C634528();
    v70(v69);
    v71 = sub_22C37FF20();
    v72(v71);
    sub_22C903F8C();
    v73 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v73, v74))
    {
      sub_22C3720F4();
      v75 = swift_slowAlloc();
      sub_22C36C890(v75);
      sub_22C38C43C(&dword_22C366000, v73, v68, "handling request");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v76 = sub_22C36BAFC();
    (v22)(v76);
    sub_22C90763C();
    v77 = sub_22C36CA88();
    if (v78(v77) != *MEMORY[0x277D1DD78])
    {
      (*(v13[147] + 8))(v13[148], v13[146]);
      sub_22C903F8C();
      v128 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C375AAC();
      if (os_log_type_enabled(v128, v129))
      {
        sub_22C3720F4();
        v130 = swift_slowAlloc();
        sub_22C383878(v130);
        sub_22C6349C0(&dword_22C366000, v131, v132, "interpreter can only handle SystemPromptResolution");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v764 = v13[180];
      v133 = v13[177];

      v134 = sub_22C36ECB4();
      v758(v134);
      type metadata accessor for InterpreterError(0);
      sub_22C36A1EC();
      v137 = sub_22C70C380(v135, v136);
      v138 = sub_22C36D148(v137);
      sub_22C634864(v138, v139);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v140 = sub_22C36FC2C();
      v141(v140);
      v59(v764, v133);
      goto LABEL_8;
    }

    v769 = v13[144];
    v79 = v13[130];
    v702 = v13[145];
    v711 = v13[119];
    v724 = v13[118];
    v80 = v13[117];
    v759 = v13[105];
    v81 = v13[100];
    v739 = v13[99];
    v692 = v13[31];
    v82 = v13[28];
    v83 = sub_22C634528();
    v84(v83);
    v85 = sub_22C36BBCC();
    v86(v85);
    sub_22C906C0C();
    sub_22C90878C();
    sub_22C907D6C();
    v87 = sub_22C70C474();
    sub_22C36C640(v87, v88, v89, v90);
    sub_22C36BE34();
    Interpreter2.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)(v91, v80);
    sub_22C36DD80(v80, &qword_27D9BD7E8);
    sub_22C6B01E8();
    v92();
    v93 = *(v711 + 8);
    v93(v79, v724);
    v94 = type metadata accessor for Interpreter2(0);
    sub_22C3B5C4C(v692 + *(v94 + 32), (v13 + 22));
    (*(v81 + 16))(v759, v82, v739);
    sub_22C6AEA50(v702, v769, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C381514();
    v740 = sub_22C370B74(v95, v96, v97);
    if (v740 == 1)
    {
      sub_22C36DD80(v13[144], &qword_27D9BC030);
    }

    else
    {
      sub_22C901F9C();
      v145 = sub_22C36BBCC();
      (v93)(v145);
    }

    v712 = v13[177];
    v146 = v13[129];
    v771 = v13[106];
    v670 = v13[98];
    v675 = v13[115];
    v147 = v13[93];
    v660 = v13[30];
    v665 = v13[92];
    sub_22C6AFED8();
    sub_22C906C0C();
    sub_22C901F9C();
    v148 = sub_22C3863FC();
    (v93)(v148);
    sub_22C70CD00();
    sub_22C906C0C();
    v725 = sub_22C901F9C();
    v149 = sub_22C36FC2C();
    (v93)(v149);
    (*(v147 + 16))(v670, v660, v665);
    sub_22C3B5C4C((v13 + 22), v675);
    sub_22C90878C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v150 = v146();
    v151 = sub_22C6AF85C(v150);
    sub_22C70CD70(v151);
    sub_22C9087DC();
    v152 = sub_22C36D29C();
    (v146)(v152);
    v153 = sub_22C36BD58();
    sub_22C3A5950(v153);

    v154 = sub_22C36CCF8();
    sub_22C36D0A8(v154, v155, v712);
    if (v125)
    {
      v156 = v13[166];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v157 + 8))();
      v158 = sub_22C6AEEC0();
      v159(v158);
      sub_22C3B5CA8((v13 + 22));
      sub_22C36DD80(v156, &qword_27D9BA808);
      v160 = sub_22C6AEF30();
      sub_22C36C640(v160, v161, v162, v146);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v197 = sub_22C37B050();
      v198(v197);
      v199 = sub_22C372FD8();
      v200(v199);
      sub_22C3B5CA8((v13 + 22));
      v201 = sub_22C386808();
      v202(v201);
    }

    v752 = v13[151];
    v203 = v740 == 1;
    v204 = v13[116];
    v205 = v13[115];
    v206 = v13[106];
    v207 = v13[98];
    v208 = v13[93];
    v209 = v13[92];
    sub_22C6AFCF4();
    v684 = v210;
    v211 = v13[76];
    v694 = v13[75];
    v703 = v13[74];
    v714 = v13[31];
    v744 = v13[73];
    v748 = v13[28];
    sub_22C6AE8BC(v212, v205 + v206[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v206[7]);
    *(v213 + 4) = v203;
    sub_22C38B6D4(v205 + v206[8]);
    *(v205 + v206[9]) = v725;
    (*(v208 + 32))(v205 + v206[10], v207, v209);
    sub_22C387428();
    v214 = sub_22C372164();
    sub_22C70C0BC(v214, v215);
    v216 = v204 + v206[7];
    LODWORD(v205) = *v216;
    v217 = *(v216 + 4);
    v218 = (v204 + v206[8]);
    v219 = *v218;
    LOBYTE(v208) = *(v218 + 4);
    v220 = *(v204 + v206[9]);
    v221 = v204 + v206[10];
    v222 = sub_22C6AFA30();
    *(v222 + 16) = v205;
    *(v222 + 20) = v217;
    *(v222 + 24) = v219;
    *(v222 + 28) = v208;
    *(v222 + 32) = v220;
    *(v222 + 40) = v221;
    sub_22C3839D8();
    sub_22C6B0340();
    sub_22C9062CC();

    v223 = sub_22C379ED8();
    v224(v223);
    sub_22C36BECC();
    sub_22C36C640(v225, v226, v227, v684);
    (*(v694 + 104))(v211, *MEMORY[0x277D1FFD0], v703);
    sub_22C7ACFB0(v211, v204 + v763, v204 + v771);
    v228 = sub_22C3726C4();
    v229(v228);
    v230 = sub_22C6AF3F0();
    v231(v230);
    sub_22C6B745C(v714, v752, v748, v744);
    v232 = v13[178];
    v753 = v13[177];
    v760 = v13[180];
    v233 = v13[153];
    v745 = v13[152];
    v749 = v13[154];
    v234 = v13[145];
    v235 = v13[116];
    if (v217)
    {
      sub_22C6AF63C();
      sub_22C7ACAC0();
      swift_willThrow();
      sub_22C36DD80(v234, &qword_27D9BC030);
      v236 = sub_22C36CC9C();
      v237(v236);
      (*(v233 + 8))(v749, v745);
      (*(v232 + 8))(v760, v753);
LABEL_52:
      sub_22C70C2F0(v235, type metadata accessor for PlanResolverTelemetryRequestContext);
LABEL_8:
      sub_22C36B084();
      sub_22C70CE6C();

      sub_22C369A24();
LABEL_9:
      sub_22C372034();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    sub_22C36D9B8();
    sub_22C70C0BC(v238, v239);
    sub_22C6AF63C();
    sub_22C7AC8E8();
    sub_22C36DD80(v234, &qword_27D9BC030);
    v240 = sub_22C36CC9C();
    v241(v240);
    (*(v233 + 8))(v749, v745);
    (*(v232 + 8))(v760, v753);
    goto LABEL_54;
  }

  if (v67 == *MEMORY[0x277D1E6F8])
  {
    sub_22C6AF184();
    v98 = v13[67];
    v99 = sub_22C37EBDC();
    v100(v99);
    v101 = sub_22C36BA00();
    v102(v101);
    sub_22C6AFEE4();
    v103(v98);
    v104 = sub_22C90362C();
    v105 = sub_22C36ECB4();
    v106(v105);
    if (v104)
    {
      v107 = v13[62];
      sub_22C9088BC();
      v108 = sub_22C70C5C8();
      v109(v108);
      sub_22C70C380(&qword_27D9BF688, MEMORY[0x277D1E6D0]);
      sub_22C36BAFC();
      v110 = sub_22C90A0BC();
      v111 = *(v107 + 8);
      v112 = sub_22C36D264();
      v111(v112);
      v113 = sub_22C36D39C();
      v111(v113);
      if ((v110 & 1) == 0)
      {
        v747 = v59;
        v114 = v13[58];
        v115 = v13[55];
        result = sub_22C90887C();
        v116 = result;
        v117 = 0;
        v770 = *(result + 16);
        v741 = *MEMORY[0x277D1DA50];
        v118 = *MEMORY[0x277D1DA78];
        v119 = (v115 + 8);
        while (1)
        {
          if (v770 == v117)
          {

            goto LABEL_61;
          }

          if (v117 >= *(v116 + 16))
          {
            __break(1u);
            goto LABEL_118;
          }

          v120 = v13[59];
          sub_22C36BA94();
          (*(v114 + 16))(v120, v116 + v121 + *(v114 + 72) * v117);
          sub_22C90702C();
          v122 = sub_22C36D264();
          v124 = v123(v122);
          v125 = v124 == v741 || v124 == v118;
          if (v125)
          {
            break;
          }

          ++v117;
          (*v119)(v13[56], v13[54]);
          v126 = sub_22C37170C();
          result = v127(v126);
        }

        (*v119)(v13[56], v13[54]);

        v315 = sub_22C36D264();
        v316(v315);
        sub_22C903F8C();
        v317 = sub_22C9063CC();
        sub_22C90AAEC();
        sub_22C37E84C();
        if (os_log_type_enabled(v317, v318))
        {
          sub_22C3720F4();
          v319 = swift_slowAlloc();
          sub_22C36C890(v319);
          sub_22C36BB14(&dword_22C366000, v320, v321, "Actions are disabled! returning NoMatchingTool.");
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v322 = v317;
        v323 = v13[181];
        v774 = v13[180];
        v754 = v13[177];
        v324 = v13[130];
        v325 = v13[119];
        v696 = v13[189];
        v705 = v13[118];
        v734 = v13[70];
        v326 = v13[69];
        v327 = v13[60];
        v717 = v13[57];
        v728 = v13[68];

        (v758)(v696, v323);
        sub_22C9068FC();
        v328 = sub_22C36BE34();
        sub_22C6B7F9C(v328, v329, v330);
        (*(v325 + 8))(v324, v705);
        (*(v114 + 8))(v327, v717);
        (*(v326 + 8))(v734, v728);
        v747(v774, v754);
        goto LABEL_74;
      }
    }

LABEL_61:
    type metadata accessor for Interpreter2(0);
    swift_task_alloc();
    sub_22C36CC90();
    v13[195] = v142;
    *v142 = v293;
    v144 = sub_22C64EB00;
    goto LABEL_62;
  }

  if (v67 == *MEMORY[0x277D1E708])
  {
    type metadata accessor for Interpreter2(0);
    swift_task_alloc();
    sub_22C36CC90();
    v13[197] = v142;
    *v142 = v143;
    v144 = sub_22C64EFF0;
    goto LABEL_62;
  }

  if (v67 == *MEMORY[0x277D1E748])
  {
    sub_22C6AF184();
    v163 = v13[49];
    v164 = sub_22C37EBDC();
    v165(v164);
    v166 = sub_22C36BA00();
    v168 = v167(v166);
    result = MEMORY[0x2318B45C0](v168);
    v169 = result;
    v170 = 0;
    v171 = *(result + 16);
    do
    {
      if (v171 == v170)
      {

        type metadata accessor for Interpreter2(0);
        swift_task_alloc();
        sub_22C36CC90();
        v13[199] = v300;
        *v300 = v301;
        v300[1] = sub_22C64F0E8;
        goto LABEL_63;
      }

      if (v170 >= *(v169 + 16))
      {
LABEL_118:
        __break(1u);
        return result;
      }

      v172 = v13[50];
      v173 = v13[48];
      sub_22C36BA94();
      v175 = (*(v163 + 16))(v172, v169 + v174 + *(v163 + 72) * v170++, v173);
      v176 = MEMORY[0x2318B3D10](v175);
      v177 = sub_22C37170C();
      v178(v177);
      v179 = *(v176 + 16);
    }

    while (v179);

    sub_22C903F8C();
    v180 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v180, v181))
    {
      sub_22C3720F4();
      v182 = swift_slowAlloc();
      sub_22C36C890(v182);
      sub_22C38C43C(&dword_22C366000, v180, v169, "handling empty QueryStepResults");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v772 = v13[142];
    v183 = v13[130];
    v693 = v13[119];
    v184 = v13[117];
    v713 = v13[118];
    v726 = v13[100];
    v733 = v13[99];
    v742 = v13[104];
    v683 = v13[31];
    v687 = v13[143];
    v185 = v13[28];

    v186 = sub_22C36FCCC();
    v758(v186);
    sub_22C90710C();
    sub_22C90878C();
    sub_22C907D6C();
    v187 = sub_22C70C474();
    sub_22C36C640(v187, v188, v189, v190);
    Interpreter2.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)(v687, v184);
    sub_22C36DD80(v184, &qword_27D9BD7E8);
    sub_22C6B01E8();
    v191();
    v192 = *(v693 + 8);
    v192(v183, v713);
    v193 = type metadata accessor for Interpreter2(0);
    sub_22C3B5C4C(v683 + *(v193 + 32), (v13 + 17));
    (v726[2].isa)(v742, v185, v733);
    sub_22C6AEA50(v687, v772, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C381514();
    v743 = sub_22C370B74(v194, v195, v196);
    if (v743 == 1)
    {
      sub_22C36DD80(v13[142], &qword_27D9BC030);
    }

    else
    {
      sub_22C901F9C();
      v432 = sub_22C36BBCC();
      (v192)(v432);
    }

    v719 = v13[177];
    v433 = v13[126];
    v776 = v13[106];
    v672 = v13[97];
    v678 = v13[113];
    v434 = v13[93];
    v662 = v13[30];
    v667 = v13[92];
    sub_22C90710C();
    sub_22C901F9C();
    v435 = sub_22C6AF3F0();
    (v192)(v435);
    sub_22C90710C();
    v730 = sub_22C901F9C();
    v436 = sub_22C50B478();
    (v192)(v436);
    (*(v434 + 16))(v672, v662, v667);
    sub_22C3B5C4C((v13 + 17), v678);
    sub_22C90878C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v437 = v433();
    v438 = sub_22C6AF85C(v437);
    sub_22C70CD70(v438);
    sub_22C9087DC();
    v439 = sub_22C36D29C();
    (v433)(v439);
    v440 = sub_22C36BD58();
    sub_22C3A5950(v440);

    v441 = sub_22C36CCF8();
    sub_22C36D0A8(v441, v442, v719);
    if (v125)
    {
      v443 = v13[165];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v444 + 8))();
      v445 = sub_22C6AEEC0();
      v446(v445);
      sub_22C3B5CA8((v13 + 17));
      sub_22C36DD80(v443, &qword_27D9BA808);
      v447 = sub_22C6AEF30();
      sub_22C36C640(v447, v448, v449, v433);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v450 = sub_22C37B050();
      v451(v450);
      v452 = sub_22C372FD8();
      v453(v452);
      sub_22C3B5CA8((v13 + 17));
      v454 = sub_22C386808();
      v455(v454);
    }

    v756 = v13[143];
    v456 = v13[114];
    v457 = v13[113];
    v458 = v13[106];
    v459 = v13[97];
    v460 = v13[93];
    v461 = v13[92];
    sub_22C6AFCF4();
    v681 = v462;
    v463 = v13[76];
    v689 = v13[75];
    v720 = v13[72];
    v698 = v13[74];
    v708 = v13[28];
    sub_22C6AE8BC(v464, v457 + v458[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v458[7]);
    *(v465 + 4) = v743 == 1;
    sub_22C38B6D4(v457 + v458[8]);
    *(v457 + v458[9]) = v730;
    (*(v460 + 32))(v457 + v458[10], v459, v461);
    sub_22C387428();
    v466 = sub_22C372FA4();
    sub_22C70C0BC(v466, v467);
    v468 = *(v456 + v458[9]);
    v469 = v456 + v458[10];
    v470 = sub_22C6AFA30();
    v471 = sub_22C6B0190(v470);
    *(v471 + 32) = v468;
    *(v471 + 40) = v469;
    sub_22C9062CC();

    sub_22C63413C();
    v472();
    sub_22C36BECC();
    sub_22C36C640(v473, v474, v475, v681);
    v476 = sub_22C70CBB8();
    v477(v476);
    sub_22C7ACFB0(v463, v456 + v763, v456 + v776);
    (*(v689 + 8))(v463, v698);
    v478 = sub_22C36D39C();
    v479(v478);
    sub_22C6BB418(v708, v756, v720);
    v480 = v13[143];
    v235 = v13[114];
    sub_22C36D9B8();
    sub_22C70C0BC(v481, v482);
    sub_22C7AC8E8();
    sub_22C36DD80(v480, &qword_27D9BC030);
    v483 = sub_22C634768();
    v484(v483);
    v485 = sub_22C36D39C();
LABEL_108:
    v486(v485);
LABEL_54:
    sub_22C70C2F0(v235, type metadata accessor for PlanResolverTelemetryRequestContext);
LABEL_74:
    sub_22C378318();

    sub_22C369C50();
    goto LABEL_9;
  }

  if (v67 == *MEMORY[0x277D1E830])
  {
    v242 = sub_22C634528();
    v243(v242);
    v244 = sub_22C37FF20();
    v245(v244);
    sub_22C903F8C();
    v246 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    if (os_log_type_enabled(v246, v247))
    {
      sub_22C3720F4();
      v248 = swift_slowAlloc();
      sub_22C36C890(v248);
      sub_22C36BB14(&dword_22C366000, v249, v250, "handling action resolver request");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v251 = v13[185];
    v252 = v13[181];
    v253 = v13[175];
    v773 = v13[168];
    v254 = v13[130];
    v255 = v13[119];
    v685 = v13[134];
    v688 = v13[118];
    v256 = v13[117];
    v257 = v246;
    v258 = v13[35];
    v695 = v13[33];
    v704 = v13[32];
    v715 = v13[34];

    (v758)(v251, v252);
    sub_22C9068FC();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C6AFB90();
    sub_22C36A748();
    sub_22C36C640(v259, v260, v261, v262);
    sub_22C5CA738();
    Interpreter2.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)(v263, v256);
    sub_22C36DD80(v256, &qword_27D9BD7E8);
    v751(v253, v773);
    v264 = *(v255 + 8);
    v264(v254, v688);
    sub_22C6AFE60();
    sub_22C903F8C();
    (*(v695 + 16))(v715, v258, v704);
    v265 = sub_22C6AFF44();
    sub_22C6AEA50(v265, v266, v267, v268);
    v269 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    v727 = v269;
    v271 = os_log_type_enabled(v269, v270);
    v272 = v13[184];
    v273 = v13[181];
    if (v271)
    {
      v676 = v13[133];
      v716 = v13[181];
      v275 = v13[33];
      v274 = v13[34];
      v671 = v13[32];
      sub_22C383050();
      sub_22C37ACD0();
      *v272 = 136315394;
      sub_22C9068FC();
      sub_22C371B9C();
      sub_22C70C380(v276, v277);
      sub_22C90B47C();
      v278 = sub_22C38BD8C();
      (v264)(v278);
      v279 = *(v275 + 8);
      v279(v274, v671);
      v280 = sub_22C380120();
      sub_22C36F9F4(v280, v281, v282);

      sub_22C6AF194();
      sub_22C370018();
      sub_22C3890BC();
      sub_22C6AEA50(v283, v284, v285, v286);
      sub_22C90A1AC();
      v273 = v287;
      sub_22C36DD80(v676, &qword_27D9BC030);
      v288 = sub_22C634750();
      v291 = sub_22C36F9F4(v288, v289, v290);

      *(v272 + 14) = v291;
      sub_22C6B0074(&dword_22C366000, v292, v685, "Origin Task Statement ID for ActionResolver request %s: %s");
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (v758)(v272, v716);
    }

    else
    {
      v331 = v13[133];
      v332 = v13[33];

      sub_22C36DD80(v331, &qword_27D9BC030);
      v279 = *(v332 + 8);
      v333 = sub_22C36BAFC();
      (v279)(v333);
      v334 = sub_22C50B578();
      v758(v334);
    }

    v13[207] = v279;
    v335 = v13[118];
    v336 = sub_22C70C8D8();
    sub_22C3B5C4C(v273 + *(v336 + 32), (v13 + 2));
    v337 = sub_22C37E5D0();
    v338(v337);
    v339 = sub_22C36BBCC();
    sub_22C6AEA50(v339, v340, v341, v342);
    v343 = sub_22C36CCF8();
    v735 = sub_22C370B74(v343, v344, v335);
    if (v735 == 1)
    {
      sub_22C36DD80(v13[132], &qword_27D9BC030);
      v761 = 0;
      sub_22C6B011C();
    }

    else
    {
      v761 = sub_22C901F9C();
      sub_22C36BBCC();
      sub_22C6B011C();
      v273();
    }

    v390 = v13[175];
    v707 = v13[177];
    v661 = v13[94];
    v666 = v13[107];
    v391 = v13[93];
    v656 = v13[30];
    v657 = v13[92];
    sub_22C70CD00();
    sub_22C9068FC();
    sub_22C901F9C();
    v392 = sub_22C36BE34();
    (v273)(v392);
    sub_22C9068FC();
    v718 = sub_22C901F9C();
    v393 = sub_22C6AFC04();
    (v273)(v393);
    (*(v391 + 16))(v661, v656, v657);
    sub_22C3B5C4C((v13 + 2), v666);
    sub_22C90878C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v394 = v390();
    sub_22C6AF85C(v394);
    sub_22C90878C();
    sub_22C9087DC();
    v395 = sub_22C36D29C();
    (v390)(v395);
    v396 = sub_22C36BD58();
    sub_22C3A5950(v396);

    v397 = sub_22C36CCF8();
    sub_22C36D0A8(v397, v398, v707);
    if (v125)
    {
      v399 = v13[162];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v400 + 8))();
      v401 = sub_22C6AEEC0();
      v402(v401);
      sub_22C3B5CA8((v13 + 2));
      sub_22C36DD80(v399, &qword_27D9BA808);
      v403 = sub_22C6AEF30();
      sub_22C36C640(v403, v404, v405, v390);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v406 = sub_22C37B050();
      v407(v406);
      v408 = sub_22C372FD8();
      v409(v408);
      sub_22C3B5CA8((v13 + 2));
      v410 = sub_22C386808();
      v411(v410);
    }

    v412 = v13[107];
    v413 = v13[106];
    v755 = v13[35];
    v414 = v13[31];
    v415 = v13[28];
    v765 = v13[29];
    v775 = v13[134];
    sub_22C6AE8BC(v13[80], v412 + v413[6], &qword_27D9BB190, qword_22C90DD90);
    v416 = v412 + v413[7];
    *v416 = v761;
    *(v416 + 4) = v735 == 1;
    sub_22C38B6D4(v412 + v413[8]);
    *(v412 + v413[9]) = v718;
    v417 = sub_22C70CBC4(v413[10]);
    v418(v417);
    sub_22C387428();
    v419 = sub_22C36BA00();
    sub_22C70C0BC(v419, v420);
    v421 = swift_task_alloc();
    v13[208] = v421;
    *(v421 + 16) = v414;
    *(v421 + 24) = v755;
    *(v421 + 32) = v415;
    *(v421 + 40) = 1;
    *(v421 + 48) = v765;
    *(v421 + 56) = v775;
    sub_22C6AF7A4(&qword_22C923190);
    swift_task_alloc();
    sub_22C36CC90();
    v13[209] = v422;
    *v422 = v423;
    v422[1] = sub_22C6B5DE8;
    goto LABEL_86;
  }

  if (v67 == *MEMORY[0x277D1E798])
  {
    sub_22C6AF184();
    v302 = sub_22C37EBDC();
    v303(v302);
    v304 = sub_22C36BA00();
    v305(v304);
    type metadata accessor for Interpreter2(0);
    swift_task_alloc();
    sub_22C36CC90();
    v13[201] = v306;
    *v306 = v307;
    v306[1] = sub_22C64F5E0;
    sub_22C372034();

    return sub_22C6BC7C0(v308, v309, v310, v311, v312, v313);
  }

  if (v67 == *MEMORY[0x277D1E7D8])
  {
    sub_22C6AF184();
    v345 = v13[130];
    v697 = v13[141];
    v706 = v13[118];
    v346 = v13[117];
    v347 = sub_22C37EBDC();
    v348(v347);
    v349 = sub_22C37A004();
    v350(v349);
    sub_22C90772C();
    sub_22C6AFED8();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C36A748();
    sub_22C36C640(v351, v352, v353, v354);
    sub_22C5CA738();
    Interpreter2.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)(v355, v346);
    v356 = sub_22C6B02B4();
    sub_22C36DD80(v356, v357);
    sub_22C6B02D4();
    sub_22C6B01E8();
    v358();
    v359 = *(v346 + 8);
    v359(v345, v706);
    sub_22C6AFE60();
    sub_22C903F8C();
    sub_22C6AF770();
    v360();
    v361 = sub_22C6AFF44();
    sub_22C6AEA50(v361, v362, v363, v364);
    v365 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C37E84C();
    v367 = os_log_type_enabled(v365, v366);
    v368 = v13[181];
    v369 = v13[140];
    if (v367)
    {
      v729 = v13[187];
      v371 = v13[42];
      v370 = v13[43];
      v677 = v13[41];
      sub_22C383050();
      sub_22C37ACD0();
      *v368 = 136315394;
      sub_22C90772C();
      sub_22C371B9C();
      sub_22C70C380(v372, v373);
      sub_22C90B47C();
      v374 = sub_22C459028();
      (v359)(v374);
      (*(v371 + 8))(v370, v677);
      v375 = sub_22C379FC8();
      sub_22C36F9F4(v375, v376, v377);
      sub_22C3758E0();

      sub_22C6AF194();
      sub_22C3890BC();
      sub_22C6AEA50(v378, v379, v380, v381);
      sub_22C90A1AC();
      v382 = sub_22C4F6088();
      sub_22C36DD80(v382, v383);
      v384 = sub_22C634768();
      sub_22C36F9F4(v384, v385, v386);
      sub_22C3758E0();

      *(v368 + 14) = &qword_27D9BC030;
      sub_22C6B0074(&dword_22C366000, v387, v697, "Origin Task Statement ID for TypeConversionResult request %s: %s");
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v389 = v368;
      v388 = v729;
    }

    else
    {

      sub_22C36DD80(v369, &qword_27D9BC030);
      v534 = sub_22C6AEDE8();
      v535(v534);
      v388 = sub_22C36CA88();
    }

    (v758)(v388, v389);
    v536 = v13[118];
    v537 = sub_22C70C8D8();
    sub_22C3B5C4C(v369 + *(v537 + 32), (v13 + 12));
    v538 = sub_22C37E5D0();
    v539(v538);
    v540 = sub_22C36BBCC();
    sub_22C6AEA50(v540, v541, v542, v543);
    v544 = sub_22C36CCF8();
    v737 = sub_22C370B74(v544, v545, v536);
    if (v737 == 1)
    {
      sub_22C36DD80(v13[138], &qword_27D9BC030);
      v546 = v359;
    }

    else
    {
      sub_22C901F9C();
      v548 = sub_22C36BBCC();
      v546 = v359;
      (v359)(v548);
    }

    v709 = v13[177];
    v549 = v13[124];
    v778 = v13[106];
    v668 = v13[96];
    v673 = v13[111];
    v550 = v13[93];
    v658 = v13[30];
    v663 = v13[92];
    sub_22C90772C();
    sub_22C901F9C();
    v551 = sub_22C6AF3F0();
    v546(v551);
    sub_22C90772C();
    v721 = sub_22C901F9C();
    v552 = sub_22C50B478();
    v546(v552);
    (*(v550 + 16))(v668, v658, v663);
    sub_22C3B5C4C((v13 + 12), v673);
    sub_22C90878C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v553 = v549();
    sub_22C6AF85C(v553);
    sub_22C90878C();
    sub_22C9087DC();
    v554 = sub_22C36D29C();
    (v549)(v554);
    v555 = sub_22C36BD58();
    sub_22C3A5950(v555);

    v556 = sub_22C36CCF8();
    sub_22C36D0A8(v556, v557, v709);
    if (v125)
    {
      v558 = v13[164];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v559 + 8))();
      v560 = sub_22C6AEEC0();
      v561(v560);
      sub_22C3B5CA8((v13 + 12));
      sub_22C36DD80(v558, &qword_27D9BA808);
      v562 = sub_22C6AEF30();
      sub_22C36C640(v562, v563, v564, v549);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v565 = sub_22C37B050();
      v566(v565);
      v567 = sub_22C372FD8();
      v568(v567);
      sub_22C3B5CA8((v13 + 12));
      v569 = sub_22C386808();
      v570(v569);
    }

    v571 = v13[112];
    v572 = v13[111];
    v573 = v13[106];
    v574 = v13[96];
    v575 = v13[93];
    v576 = v13[92];
    sub_22C6AFCF4();
    v680 = v578;
    v682 = v577;
    v579 = v13[76];
    v686 = v580;
    v690 = v13[75];
    v750 = v13[44];
    v757 = v13[71];
    v700 = v13[74];
    v710 = v13[40];
    sub_22C6AE8BC(v581, v572 + v573[6], &qword_27D9BB190, qword_22C90DD90);
    sub_22C6AFCE4(v573[7]);
    *(v582 + 4) = v737 == 1;
    sub_22C38B6D4(v572 + v573[8]);
    *(v572 + v573[9]) = v721;
    (*(v575 + 32))(v572 + v573[10], v574, v576);
    sub_22C387428();
    v583 = sub_22C372164();
    sub_22C70C0BC(v583, v584);
    v585 = *(v571 + v573[8]);
    v586 = *(v571 + v573[9]);
    v587 = v571 + v573[10];
    v588 = sub_22C6AFA30();
    v589 = sub_22C6B0190(v588);
    *(v589 + 32) = v586;
    *(v589 + 40) = v587;
    sub_22C3839D8();
    sub_22C6B0340();
    sub_22C9062CC();

    (*(v686 + 16))(v579, v680, v682);
    sub_22C36BECC();
    sub_22C36C640(v590, v591, v592, v682);
    (*(v690 + 104))(v579, *MEMORY[0x277D1FFD0], v700);
    sub_22C7ACFB0(v579, v571 + v763, v571 + v778);
    (*(v690 + 8))(v579, v700);
    v593 = sub_22C6AF3F0();
    v594(v593);
    sub_22C908AEC();
    sub_22C369A9C();
    v595 = sub_22C6AFF44();
    v596(v595);
    sub_22C63763C(v750, v757);
    sub_22C70C82C();
    sub_22C70C2F0(v710, v597);
    v598 = v13[180];
    v599 = v13[178];
    v600 = v13[177];
    v601 = v13[141];
    v235 = v13[112];
    if (v585)
    {
      sub_22C6AF63C();
      sub_22C7ACAC0();
      swift_willThrow();
      sub_22C36DD80(v601, &qword_27D9BC030);
      v602 = sub_22C3726C4();
      v603(v602);
      (*(v599 + 8))(v598, v600);
      goto LABEL_52;
    }

    sub_22C36D9B8();
    sub_22C70C0BC(v604, v605);
    sub_22C6AF63C();
    sub_22C7AC8E8();
    sub_22C36DD80(v601, &qword_27D9BC030);
    v606 = sub_22C634768();
    v607(v606);
    v485 = sub_22C37B220();
    goto LABEL_108;
  }

  if (v67 == *MEMORY[0x277D1E850])
  {
    sub_22C6AF184();
    v487 = v13[130];
    v488 = v13[119];
    v777 = v13[118];
    v489 = v13[117];
    v699 = v13[31];
    v490 = sub_22C37EBDC();
    v491(v490);
    v492 = sub_22C37A004();
    v493(v492);
    sub_22C90856C();
    sub_22C6AFED8();
    sub_22C90878C();
    sub_22C907D6C();
    sub_22C36A748();
    sub_22C36C640(v494, v495, v496, v497);
    sub_22C5CA738();
    Interpreter2.findOriginTaskStatementId(statementId:transcript:actionParameterContext:)(v498, v489);
    sub_22C36DD80(v489, &qword_27D9BD7E8);
    sub_22C6B02D4();
    sub_22C6B01E8();
    v499();
    v500 = *(v488 + 8);
    v500(v487, v777);
    sub_22C6AFE60();
    sub_22C903F8C();
    sub_22C6AF770();
    v501();
    v502 = sub_22C6AFF44();
    sub_22C6AEA50(v502, v503, v504, v505);
    v506 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C375AAC();
    v508 = os_log_type_enabled(v506, v507);
    v509 = v13[186];
    v510 = v13[181];
    if (v508)
    {
      v736 = v13[181];
      v512 = v13[37];
      v511 = v13[38];
      v679 = v13[36];
      sub_22C383050();
      sub_22C37ACD0();
      *v509 = 136315394;
      sub_22C90856C();
      sub_22C371B9C();
      sub_22C70C380(v513, v514);
      sub_22C90B47C();
      v515 = sub_22C38BD8C();
      (v500)(v515);
      v516 = v506;
      v517 = *(v512 + 8);
      v517(v511, v679);
      v518 = sub_22C380120();
      sub_22C36F9F4(v518, v519, v520);

      sub_22C6AF194();
      sub_22C372FCC();
      sub_22C3890BC();
      sub_22C6AEA50(v521, v522, v523, v524);
      sub_22C90A1AC();
      v510 = v525;
      v526 = sub_22C37A004();
      sub_22C36DD80(v526, v527);
      v528 = sub_22C634750();
      v531 = sub_22C36F9F4(v528, v529, v530);

      *(v509 + 14) = v531;
      _os_log_impl(&dword_22C366000, v516, v699, "Origin Task Statement ID for ExecutionPreconditionEvaluator request %s: %s", v509, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v532 = v509;
      v533 = v736;
    }

    else
    {
      v608 = v13[136];
      v609 = v13[37];

      sub_22C36DD80(v608, &qword_27D9BC030);
      v517 = *(v609 + 8);
      v610 = sub_22C36BAFC();
      (v517)(v610);
      v532 = sub_22C50B578();
    }

    (v758)(v532, v533);
    v13[203] = v517;
    v611 = v13[118];
    v612 = sub_22C70C8D8();
    sub_22C3B5C4C(v510 + *(v612 + 32), (v13 + 7));
    v613 = sub_22C37E5D0();
    v614(v613);
    v615 = sub_22C36BBCC();
    sub_22C6AEA50(v615, v616, v617, v618);
    v619 = sub_22C36CCF8();
    v738 = sub_22C370B74(v619, v620, v611);
    if (v738 == 1)
    {
      sub_22C36DD80(v13[135], &qword_27D9BC030);
      v762 = 0;
      sub_22C6B011C();
    }

    else
    {
      v762 = sub_22C901F9C();
      sub_22C36BBCC();
      sub_22C6B011C();
      v510();
    }

    v621 = v13[175];
    v722 = v13[177];
    v669 = v13[95];
    v674 = v13[109];
    v622 = v13[93];
    v659 = v13[30];
    v664 = v13[92];
    sub_22C70CD00();
    sub_22C90856C();
    sub_22C901F9C();
    v623 = sub_22C36BE34();
    (v510)(v623);
    sub_22C90856C();
    v731 = sub_22C901F9C();
    v624 = sub_22C6AFC04();
    (v510)(v624);
    (*(v622 + 16))(v669, v659, v664);
    sub_22C3B5C4C((v13 + 7), v674);
    sub_22C90878C();
    sub_22C9087CC();
    sub_22C6AF1BC();
    v625 = v621();
    v626 = sub_22C6AF85C(v625);
    sub_22C70CD70(v626);
    sub_22C9087DC();
    v627 = sub_22C36D29C();
    (v621)(v627);
    v628 = sub_22C36BD58();
    sub_22C3A5950(v628);

    v629 = sub_22C36CCF8();
    sub_22C36D0A8(v629, v630, v722);
    if (v125)
    {
      v631 = v13[163];
      sub_22C38072C();
      sub_22C6AFE3C();
      (*(v632 + 8))();
      v633 = sub_22C6AEEC0();
      v634(v633);
      sub_22C3B5CA8((v13 + 7));
      sub_22C36DD80(v631, &qword_27D9BA808);
      v635 = sub_22C6AEF30();
      sub_22C36C640(v635, v636, v637, v621);
    }

    else
    {
      sub_22C382EA8();
      sub_22C6AFE18();
      sub_22C6AFE0C();
      sub_22C9088DC();
      v638 = sub_22C37B050();
      v639(v638);
      v640 = sub_22C372FD8();
      v641(v640);
      sub_22C3B5CA8((v13 + 7));
      v642 = sub_22C386808();
      v643(v642);
    }

    v644 = v13[109];
    v645 = v13[106];
    v766 = v13[39];
    v646 = v13[31];
    v647 = v13[28];
    sub_22C6AE8BC(v13[81], v644 + v645[6], &qword_27D9BB190, qword_22C90DD90);
    v648 = v644 + v645[7];
    *v648 = v762;
    *(v648 + 4) = v738 == 1;
    sub_22C38B6D4(v644 + v645[8]);
    *(v644 + v645[9]) = v731;
    v649 = sub_22C70CBC4(v645[10]);
    v650(v649);
    sub_22C387428();
    v651 = sub_22C36BA00();
    sub_22C70C0BC(v651, v652);
    v653 = swift_task_alloc();
    v13[204] = v653;
    v653[2] = v646;
    v653[3] = v766;
    v653[4] = v647;
    sub_22C6AF7A4(&qword_22C923190);
    swift_task_alloc();
    sub_22C36CC90();
    v13[205] = v654;
    *v654 = v655;
    v654[1] = sub_22C6B58A0;
LABEL_86:
    sub_22C372034();

    return v427(v424, v425, v426, v427, v428, v429, v430, v431, a9, a10, a11, a12);
  }

  type metadata accessor for Interpreter2(0);
  swift_task_alloc();
  sub_22C36CC90();
  v13[211] = v142;
  *v142 = v547;
  v144 = sub_22C650568;
LABEL_62:
  v142[1] = v144;
LABEL_63:
  sub_22C372034();

  return sub_22C6B8FE4(v294, v295, v296, v297, v298);
}