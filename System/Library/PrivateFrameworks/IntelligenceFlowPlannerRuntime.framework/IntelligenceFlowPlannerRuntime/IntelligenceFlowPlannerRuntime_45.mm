uint64_t sub_22C7A2EEC()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v2 + 1104) = v0;

  sub_22C376988();
  if (v0)
  {

    v6 = sub_22C7A3FFC;
  }

  else
  {
    v6 = sub_22C7A300C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C7A300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v17 = v12[74];
  v18 = v12[71];
  v19 = sub_22C3707B4();
  v21 = sub_22C370B74(v19, v20, v17);
  v22 = v12[134];
  if (v21 == 1)
  {
    sub_22C36DD28(v18, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F8C();

    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v12[135];
    if (v25)
    {
      v13 = v12[134];
      v14 = v12[133];
      v168 = v12[93];
      v27 = v12[82];
      v15 = sub_22C36FB44();
      v16 = sub_22C370060();
      *v15 = 136315138;
      v28 = sub_22C371510();
      *(v15 + 4) = sub_22C36F9F4(v28, v29, v30);
      sub_22C383C58(&dword_22C366000, v31, v32, "cannot convert %s to Date.");
      sub_22C36FF94(v16);
      sub_22C3699EC();
      sub_22C3699EC();

      v33 = v168;
    }

    else
    {
      v59 = v12[93];
      v24 = v12[83];
      v27 = v12[82];

      v33 = v59;
    }

    (v26)(v33, v27);
    sub_22C375018();
    v60 = sub_22C36CCF8();
    sub_22C36C640(v60, v61, 1, v62);
    sub_22C907D5C();
    sub_22C36C640(v13, 0, 1, v27);
    sub_22C907D2C();
    sub_22C90931C();
    v63 = swift_allocBox();
    sub_22C7A724C(v63, v64, v65, v66, v67, v68, v69, v70, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    sub_22C36BBA8();
    (*(v71 + 104))();
    *v26 = v15;
    (*(v24 + 104))(v26, *MEMORY[0x277D72A58]);
    sub_22C7A72A8();
    (*(v14 + 104))(v16, *MEMORY[0x277D1CBE0]);
    sub_22C9026AC();
    v72 = sub_22C36CCF8();
    sub_22C36C640(v72, v73, 1, v74);
    sub_22C385DE8();
    v75 = sub_22C7A71F0();
    v76(v75);
    sub_22C9068FC();
    sub_22C7A7184();
    v77 = sub_22C383E48();
    v159(v77);
    v78 = sub_22C7A7274();
    v79(v78);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();

    (v159)(v164, v24 + 104);
    (*(v166 + 8))(v23, v168);
  }

  else
  {
    sub_22C7A7288();
    v34 = sub_22C37B0B8();
    v35(v34);

    sub_22C3838DC();
    v167 = v36;
    v169 = v37;
    v165 = v38;
    sub_22C3813E0();
    v162 = v39;
    v163 = v40;
    sub_22C372D7C();
    sub_22C3828DC(v41);
    v42();
    sub_22C7A6FF0();
    sub_22C7A6F08(v43, v44, MEMORY[0x277D1C348]);
    sub_22C909F0C();
    v45 = sub_22C7A7020();
    v46(v45);
    v47 = sub_22C901ECC();
    sub_22C7A7084(v47);
    sub_22C381BBC();
    v48 = sub_22C36CD64();
    v49(v48);
    v50 = sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v51 = sub_22C383450(v50);
    v52 = sub_22C38AB54(v51, xmmword_22C90F800);
    v53(v52);
    sub_22C7A7208();
    v54 = sub_22C386DCC();
    v55(v54);
    (*(v13 + 8))(v160, v22);
    v161(v163, v162);
    v56 = sub_22C7A7174();
    v57(v56);
    v58 = type metadata accessor for StepResolution(0);
    sub_22C385FDC(v58);
    (*(v165 + 8))(v169, v167);
  }

  sub_22C36C3C0();
  v110 = v81;
  v112 = v80;
  sub_22C382E00();
  v114 = v83;
  v116 = v82;
  sub_22C7A7148();
  v118 = v85;
  v120 = v84;
  sub_22C7A713C();
  v122 = v87;
  v124 = v86;
  sub_22C3883F4();
  v126 = v89;
  v128 = v88;
  sub_22C37BC2C();
  v130 = v91;
  v132 = v90;
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  sub_22C3739A0(v92, v93, v94, v95, v96, v97, v98, v99, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132);

  sub_22C369A24();
  sub_22C372034();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12);
}

uint64_t sub_22C7A3774()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v2 + 1144) = v0;

  sub_22C7A703C();
  if (v0)
  {

    v6 = sub_22C7A439C;
  }

  else
  {
    v6 = sub_22C7A3894;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C7A3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v18 = v12[74];
  v19 = v12[70];
  v20 = sub_22C3707B4();
  v22 = sub_22C370B74(v20, v21, v18);
  v23 = v12[140];
  if (v22 == 1)
  {
    sub_22C36DD28(v19, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F8C();

    v24 = sub_22C9063CC();
    v25 = sub_22C90AADC();

    if (os_log_type_enabled(v24, v25))
    {
      v13 = v12[140];
      v14 = v12[139];
      v26 = v12[83];
      v27 = v12[82];
      v15 = sub_22C36FB44();
      v16 = sub_22C370060();
      *v15 = 136315138;
      v28 = sub_22C371510();
      *(v15 + 4) = sub_22C36F9F4(v28, v29, v30);
      sub_22C383C58(&dword_22C366000, v31, v32, "cannot convert %s to DateComponents.");
      sub_22C36FF94(v16);
      sub_22C3699EC();
      sub_22C3699EC();

      v17 = (v26 + 8);
    }

    else
    {
      v60 = v12[83];
      v27 = v12[82];

      v25 = v60 + 8;
    }

    v33 = sub_22C36BAFC();
    v34(v33);
    sub_22C375018();
    v61 = sub_22C36CCF8();
    sub_22C36C640(v61, v62, 1, v63);
    sub_22C907D5C();
    sub_22C36C640(v13, 0, 1, v27);
    sub_22C907D2C();
    sub_22C90931C();
    v64 = swift_allocBox();
    sub_22C7A724C(v64, v65, v66, v67, v68, v69, v70, v71, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
    sub_22C36BBA8();
    (*(v72 + 104))();
    *v17 = v15;
    (*(v25 + 104))(v17, *MEMORY[0x277D72A58]);
    sub_22C7A72A8();
    (*(v14 + 104))(v16, *MEMORY[0x277D1CBE0]);
    sub_22C9026AC();
    v73 = sub_22C36CCF8();
    sub_22C36C640(v73, v74, 1, v75);
    sub_22C385DE8();
    v76 = sub_22C7A71F0();
    v77(v76);
    sub_22C9068FC();
    sub_22C7A7184();
    v78 = sub_22C383E48();
    v160(v78);
    v79 = sub_22C7A7274();
    v80(v79);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();

    (v160)(v165, v25 + 104);
    (*(v167 + 8))(v24);
  }

  else
  {
    sub_22C7A7288();
    v35 = sub_22C37B0B8();
    v36(v35);

    sub_22C3838DC();
    v168 = v37;
    v169 = v38;
    v166 = v39;
    sub_22C3813E0();
    v163 = v40;
    v164 = v41;
    sub_22C372D7C();
    sub_22C3828DC(v42);
    v43();
    sub_22C7A6FF0();
    sub_22C7A6F08(v44, v45, MEMORY[0x277D1C348]);
    sub_22C909F0C();
    v46 = sub_22C7A7020();
    v47(v46);
    v48 = sub_22C901ECC();
    sub_22C7A7084(v48);
    sub_22C381BBC();
    v49 = sub_22C36CD64();
    v50(v49);
    v51 = sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v52 = sub_22C383450(v51);
    v53 = sub_22C38AB54(v52, xmmword_22C90F800);
    v54(v53);
    sub_22C7A7208();
    v55 = sub_22C386DCC();
    v56(v55);
    (*(v13 + 8))(v161, v23);
    v162(v164, v163);
    v57 = sub_22C7A7174();
    v58(v57);
    v59 = type metadata accessor for StepResolution(0);
    sub_22C385FDC(v59);
    (*(v166 + 8))(v169, v168);
  }

  sub_22C36C3C0();
  v111 = v82;
  v113 = v81;
  sub_22C382E00();
  v115 = v84;
  v117 = v83;
  sub_22C7A7148();
  v119 = v86;
  v121 = v85;
  sub_22C7A713C();
  v123 = v88;
  v125 = v87;
  sub_22C3883F4();
  v127 = v90;
  v129 = v89;
  sub_22C37BC2C();
  v131 = v92;
  v133 = v91;
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  sub_22C3739A0(v93, v94, v95, v96, v97, v98, v99, v100, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133);

  sub_22C369A24();
  sub_22C372034();

  return v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12);
}

uint64_t sub_22C7A3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = *(v13 + 1088);
  v16 = sub_22C37F524();
  v12(v16);
  v17 = sub_22C36ECB4();
  v15(v17);

  v18 = sub_22C370114();
  v12(v18);
  (*(v14 + 8))();
  sub_22C387564();
  sub_22C7A7164();
  v48 = v20;
  v49 = v19;
  sub_22C382E00();
  v50 = v22;
  v51 = v21;
  sub_22C7A7148();
  v52 = v24;
  v53 = v23;
  sub_22C7A713C();
  v54 = v26;
  v55 = v25;
  sub_22C3883F4();
  v56 = v28;
  v57 = v27;
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  sub_22C3739A0(v29, v30, v31, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);

  sub_22C369A24();
  sub_22C372034();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_22C7A439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = *(v13 + 1128);
  v16 = sub_22C37F524();
  v12(v16);
  v17 = sub_22C36ECB4();
  v15(v17);

  v18 = sub_22C370114();
  v12(v18);
  (*(v14 + 8))();
  sub_22C387564();
  sub_22C7A7164();
  v48 = v20;
  v49 = v19;
  sub_22C382E00();
  v50 = v22;
  v51 = v21;
  sub_22C7A7148();
  v52 = v24;
  v53 = v23;
  sub_22C7A713C();
  v54 = v26;
  v55 = v25;
  sub_22C3883F4();
  v56 = v28;
  v57 = v27;
  sub_22C37BC2C();
  sub_22C37600C();
  sub_22C36EE0C();
  sub_22C3745C0();
  sub_22C38C4BC();
  sub_22C37ED84();
  sub_22C7A7114();
  sub_22C7A7108();
  sub_22C7A70FC();
  sub_22C7A70F0();
  sub_22C7A70E4();
  sub_22C7A70D8();
  sub_22C7A70CC();
  sub_22C7A70C0();
  sub_22C3739A0(v29, v30, v31, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);

  sub_22C369A24();
  sub_22C372034();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_22C7A473C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C908AAC();
  v5[2] = a2;
  sub_22C6B0844(sub_22C713E94, v5, v3);
}

uint64_t sub_22C7A47BC()
{
  sub_22C369A48();
  v0 = sub_22C9070DC();
  sub_22C369824();
  v148 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  v120 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v110 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v119 = &v110 - v9;
  MEMORY[0x28223BE20](v8);
  sub_22C3698F8(&v110 - v10);
  v122 = sub_22C9088CC();
  sub_22C369824();
  i = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C3698F8(v14 - v13);
  v151 = sub_22C901FAC();
  sub_22C369824();
  v149 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v141 = v17;
  MEMORY[0x28223BE20](v18);
  v150 = &v110 - v19;
  v20 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v21 = sub_22C369914(v20);
  MEMORY[0x28223BE20](v21);
  sub_22C3698F8(&v110 - v22);
  v116 = sub_22C906A3C();
  sub_22C369824();
  v147 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  sub_22C3698F8(v26 - v25);
  v27 = sub_22C9089DC();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v33 = v32 - v31;
  v139 = sub_22C908A0C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v137 = v38 - v37;
  v39 = sub_22C90880C();
  sub_22C369824();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v45 = v44 - v43;

  sub_22C3ADC38();
  v153 = v46;
  sub_22C90878C();
  v47 = sub_22C9087DC();
  v48 = v45;
  v49 = v39;
  v50 = v33;
  v51 = v121;
  result = (*(v41 + 8))(v48, v49);
  v53 = v122;
  v111 = 0;
  v129 = 0;
  v54 = *(v47 + 16);
  v135 = v35 + 16;
  v133 = v29 + 88;
  v132 = *MEMORY[0x277D1E6F8];
  v136 = v35;
  v134 = (v35 + 8);
  v114 = v29 + 8;
  v130 = v29 + 96;
  v125 = *MEMORY[0x277D1E720];
  v113 = v147 + 32;
  ++v149;
  v112 = v147 + 8;
  v124 = i + 32;
  v147 = v148 + 16;
  v146 = (v148 + 8);
  v140 = (v148 + 32);
  v123 = i + 8;
  v142 = v7;
  v126 = v33;
  v127 = v27;
  v131 = v47;
  while (1)
  {
    if (!v54)
    {
      goto LABEL_27;
    }

    v55 = v54 - 1;
    if (v55 >= *(v47 + 16))
    {
      break;
    }

    v56 = v137;
    v57 = v47 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v58 = *(v136 + 72);
    v138 = v55;
    (*(v136 + 16))(v137, v57 + v58 * v55, v139);
    v59 = v153;
    if (!v153[2])
    {
      v108 = sub_22C3857CC();
      v109(v108);

      goto LABEL_25;
    }

    sub_22C9089EC();
    v60 = sub_22C370A40();
    v62 = v61(v60);
    if (v62 == v132)
    {
      v63 = sub_22C370A40();
      v64(v63);
      sub_22C36BA4C();
      v65(v51, v50, v53);
      v66 = sub_22C90887C();
      v67 = v66;
      v152 = *(v66 + 16);
      if (v152)
      {
        v128 = v59;
        v68 = v66 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
        v143 = *(v148 + 16);
        v144 = v68;
        v143(v7);
        v69 = 1;
        v70 = v120;
        for (i = v67; ; v67 = i)
        {
          if (v152 == v69)
          {

            v94 = *v140;
            v95 = v119;
            (*v140)(v119, v7, v0);
            v96 = v118;
            v94(v118, v95, v0);
            v97 = v150;
            v98 = sub_22C9068FC();
            MEMORY[0x28223BE20](v98);
            *(&v110 - 2) = v97;
            v99 = v128;

            v100 = v129;
            v101 = sub_22C806CDC(sub_22C7A6FC0, &v110 - 4, v99);
            v129 = v100;
            (*v146)(v96, v0);
            sub_22C36BA4C();
            v51 = v121;
            v53 = v122;
            v102(v121, v122);
            (*v134)(v137, v139);

            v153 = v101;
            result = (*v149)(v97, v151);
            v50 = v126;
            goto LABEL_23;
          }

          if (v69 >= *(v67 + 16))
          {
            break;
          }

          v71 = v148;
          (v143)(v70, v144 + *(v148 + 72) * v69, v0);
          sub_22C9068FC();
          v72 = v141;
          sub_22C9068FC();
          sub_22C6AF3F0();
          v73 = sub_22C901F5C();
          v74 = v7;
          v75 = v0;
          v76 = *v149;
          (*v149)(v72, v151);
          v77 = sub_22C6AF3F0();
          (v76)(v77);
          v78 = *(v71 + 8);
          if (v73)
          {
            v78(v74, v75);
            (*v140)(v74, v70, v75);
          }

          else
          {
            v78(v70, v75);
          }

          v0 = v75;
          ++v69;
          v7 = v142;
        }

        __break(1u);
LABEL_27:

LABEL_25:

        return v111;
      }

      sub_22C36BA4C();
      v107(v51, v53);
      v105 = sub_22C3857CC();
LABEL_22:
      result = v106(v105);
LABEL_23:
      v47 = v131;
      v54 = v138;
    }

    else
    {
      if (v62 != v125)
      {
        v103 = sub_22C3857CC();
        v104(v103);
        v105 = sub_22C370A40();
        goto LABEL_22;
      }

      v79 = sub_22C370A40();
      v80(v79);
      sub_22C36BA4C();
      v81(v115, v50, v116);
      v82 = v150;
      sub_22C9068FC();
      v83 = v51;
      v84 = v53;
      v85 = v56;
      v86 = v117;
      sub_22C8C3990();
      v87 = v82;
      v50 = v126;
      v88 = v151;
      (*v149)(v87, v151);
      sub_22C36BA4C();
      v89 = sub_22C371510();
      v90(v89);
      v91 = v85;
      v53 = v84;
      v51 = v83;
      (*v134)(v91, v139);
      LODWORD(v88) = sub_22C370B74(v86, 1, v88);
      result = sub_22C36DD28(v86, &qword_27D9BC030, &unk_22C911CC0);
      v92 = v88 == 1;
      v47 = v131;
      v54 = v138;
      if (!v92 && __OFADD__(v111++, 1))
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_22C7A5284()
{
  v0 = sub_22C90880C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  sub_22C90878C();
  v11 = sub_22C9087DC();
  (*(v2 + 8))(v6, v0);
  v20[1] = v11;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EEC();

  v12 = sub_22C9079FC();
  v13 = sub_22C36CCF8();
  if (sub_22C370B74(v13, v14, v12) == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BD798, &unk_22C919070);
    return 0;
  }

  else
  {
    v16 = sub_22C90797C();
    sub_22C36BBA8();
    v17 = sub_22C36BAFC();
    v18(v17);
    v15 = [v16 location];
  }

  return v15;
}

uint64_t sub_22C7A5464(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v39 = a3;
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v7 = sub_22C90952C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9093BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = sub_22C90906C();
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  if (sub_22C5FB484())
  {
    v36 = a1;
    sub_22C90774C();
    if ((*(v11 + 88))(v18, v10) == *MEMORY[0x277D729E0])
    {
      (*(v11 + 96))(v18, v10);
      v22 = swift_projectBox();
      v23 = v37;
      (*(v37 + 16))(v21, v22, v19);

      v24 = sub_22C90905C();
      (*(v23 + 8))(v21, v19);
      v25 = *(v24 + 16);

      if (!v25)
      {
        v26 = 1;
        return v26 & 1;
      }
    }

    else
    {
      (*(v11 + 8))(v18, v10);
    }
  }

  sub_22C9093DC();
  sub_22C90774C();
  sub_22C90935C();
  v27 = *(v11 + 8);
  v27(v16, v10);
  sub_22C5E94F0();
  v29 = v28;

  (*(v41 + 8))(v9, v42);
  if ((v29 & 1) == 0)
  {
    v30 = v38;
    sub_22C90774C();
    v31 = v40;
    v32 = v44;
    sub_22C5F52EC(v39, v40);
    if (v32)
    {
      v27(v30, v10);
      return v26 & 1;
    }

    v27(v30, v10);
    v33 = sub_22C90941C();
    v34 = sub_22C370B74(v31, 1, v33);
    sub_22C36DD28(v31, &qword_27D9BC028, &unk_22C9134B0);
    if (v34 == 1)
    {
      v26 = 0;
      return v26 & 1;
    }
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_22C7A58D0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v173 = a5;
  v7 = v6;
  v187 = a4;
  v185 = a3;
  v157 = a6;
  v166 = sub_22C90941C();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_22C9063DC();
  v170 = *(v171 - 8);
  v11 = MEMORY[0x28223BE20](v171);
  v167 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v172 = &v153 - v13;
  v14 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v162 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v163 = &v153 - v17;
  v168 = sub_22C90952C();
  v161 = *(v168 - 8);
  v18 = MEMORY[0x28223BE20](v168);
  v154 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v155 = &v153 - v20;
  v180 = sub_22C9093BC();
  v21 = *(v180 - 8);
  v22 = MEMORY[0x28223BE20](v180);
  v194 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v160 = &v153 - v25;
  MEMORY[0x28223BE20](v24);
  v156 = (&v153 - v26);
  v195 = sub_22C908C5C();
  v27 = *(v195 - 8);
  v28 = MEMORY[0x28223BE20](v195);
  v159 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v158 = &v153 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v182 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v199 = &v153 - v34;
  v198 = sub_22C901FAC();
  v35 = *(v198 - 8);
  v36 = MEMORY[0x28223BE20](v198);
  v169 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v197 = &v153 - v38;
  v39 = &qword_27D9BF318;
  v40 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v178 = &v153 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v174 = &v153 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v153 - v48;
  v188 = *a1;
  v204 = MEMORY[0x277D84F98];
  v50 = sub_22C901ECC();
  v175 = v49;
  v177 = v50;
  sub_22C36C640(v49, 1, 1, v50);
  v190 = a2;
  v51 = *(a2 + 2);
  sub_22C5903C0();
  v196 = v52;
  sub_22C3A5908(&qword_27D9C0100, &qword_22C925F08);
  v192 = v51;
  sub_22C909EEC();
  v53 = 0;
  v193 = v35 + 16;
  v186 = v27 + 16;
  v181 = v27 + 32;
  v179 = v21;
  v176 = v21 + 32;
  v183 = v27;
  v184 = (v27 + 8);
  v189 = v35;
  v191 = (v35 + 8);
  while (1)
  {
    if (v192 == v53)
    {
      sub_22C90906C();
      v97 = swift_allocBox();
      v98 = sub_22C9093DC();
      v99 = v163;
      sub_22C58B0F8(v98);

      v100 = v162;
      sub_22C3E8FB4(v99, v162, &qword_27D9BB0C0, &qword_22C90D960);
      v101 = v168;
      if (sub_22C370B74(v100, 1, v168) != 1)
      {
        sub_22C36DD28(v99, &qword_27D9BB0C0, &qword_22C90D960);
        (*(v161 + 32))(v155, v100, v101);
        sub_22C90903C();
        v147 = v156;
        *v156 = v97;
        v148 = v179;
        v149 = v180;
        (*(v179 + 104))(v147, *MEMORY[0x277D729E0], v180);
        (*(v148 + 16))(v160, v147, v149);
        v150 = v175;
        sub_22C3E8FB4(v175, v174, &qword_27D9BF318, &qword_22C9225A0);
        sub_22C906CFC();
        (*(v148 + 8))(v147, v149);
        return sub_22C36DD28(v150, &qword_27D9BF318, &qword_22C9225A0);
      }

      sub_22C36DD28(v100, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C90735C();
      sub_22C3A5F00();
      v70 = swift_allocError();
      v102 = v203;
      v103 = v202;
      *v104 = v201;
      *(v104 + 16) = v103;
      *(v104 + 32) = v102;
      swift_willThrow();
      sub_22C36DD28(v99, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36DD28(v175, &qword_27D9BF318, &qword_22C9225A0);

      result = swift_deallocBox();
      goto LABEL_23;
    }

    v54 = v43;
    v55 = v195;
    v56 = v7;
    v57 = *(v189 + 16);
    v58 = v197;
    v57(v197, &v190[((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v53], v198);
    v59 = v188;
    if (!*(v188 + 16) || (sub_22C628274(), (v61 & 1) == 0))
    {

      v82 = v172;
      sub_22C903F8C();
      v83 = v169;
      v84 = v198;
      v57(v169, v58, v198);
      v85 = sub_22C9063CC();
      v86 = sub_22C90AADC();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = v83;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v200 = v89;
        *v88 = 136315138;
        sub_22C7A6F08(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v90 = sub_22C90B47C();
        v92 = v91;
        v93 = v87;
        v94 = *v191;
        (*v191)(v93, v198);
        v95 = sub_22C36F9F4(v90, v92, &v200);
        v84 = v198;

        *(v88 + 4) = v95;
        _os_log_impl(&dword_22C366000, v85, v86, "cannot find array value for %s", v88, 0xCu);
        sub_22C36FF94(v89);
        v96 = v89;
        v58 = v197;
        MEMORY[0x2318B9880](v96, -1, -1);
        MEMORY[0x2318B9880](v88, -1, -1);

        (*(v170 + 8))(v172, v171);
      }

      else
      {

        v94 = *v191;
        (*v191)(v83, v84);
        (*(v170 + 8))(v82, v171);
      }

      v106 = v175;
      type metadata accessor for InterpreterError(0);
      sub_22C7A6F08(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
      v107 = swift_allocError();
      v57(v108, v58, v84);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v109 = v58;
      v70 = v107;
      v94(v109, v84);
      result = sub_22C36DD28(v106, &qword_27D9BF318, &qword_22C9225A0);
      goto LABEL_23;
    }

    v62 = v39;
    v63 = v183;
    v64 = *(v183 + 16);
    v65 = v182;
    v64(v182, *(v59 + 56) + *(v183 + 72) * v60, v55);
    v66 = *(v63 + 32);
    v67 = v199;
    v66(v199, v65, v55);
    v68 = type metadata accessor for ValueResolver(0);
    v69 = sub_22C7A5464(v67, v187, (v185 + *(v68 + 20)));
    v70 = v56;
    if (v56)
    {
      (*v184)(v199, v55);
      (*v191)(v197, v198);
      sub_22C36DD28(v175, &qword_27D9BF318, &qword_22C9225A0);

LABEL_23:
      v110 = v173;
      goto LABEL_29;
    }

    if ((v69 & 1) == 0)
    {
      break;
    }

    sub_22C90774C();
    v71 = v196;
    v72 = *(v196 + 16);
    if (v72 >= *(v196 + 24) >> 1)
    {
      sub_22C5903C0();
      v71 = v81;
    }

    v39 = v62;
    v43 = v54;
    *(v71 + 16) = v72 + 1;
    v73 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v196 = v71;
    (*(v179 + 32))(v71 + v73 + *(v179 + 72) * v72, v194, v180);
    v74 = v178;
    v75 = v199;
    sub_22C908B8C();
    v76 = v177;
    if (sub_22C370B74(v74, 1, v177) == 1)
    {
      (*v184)(v75, v195);
      (*v191)(v197, v198);
      v77 = v74;
    }

    else
    {
      sub_22C36DD28(v74, v62, &qword_22C9225A0);
      v78 = v175;
      sub_22C3E8FB4(v175, v54, v62, &qword_22C9225A0);
      if (sub_22C370B74(v54, 1, v76) == 1)
      {
        sub_22C36DD28(v54, v62, &qword_22C9225A0);
        v79 = v174;
        sub_22C908B8C();
        (*v184)(v75, v195);
        (*v191)(v197, v198);
        sub_22C36DD28(v78, v62, &qword_22C9225A0);
        v80 = v79;
        v43 = v54;
        sub_22C7A6F50(v80, v78);
        goto LABEL_15;
      }

      (*v184)(v75, v195);
      (*v191)(v197, v198);
      v77 = v54;
    }

    sub_22C36DD28(v77, v62, &qword_22C9225A0);
LABEL_15:
    v7 = v56;
    v53 = (v53 + 1);
  }

  v111 = v167;
  sub_22C903F8C();
  v112 = v158;
  v113 = v199;
  v114 = v55;
  v64(v158, v199, v55);
  v115 = v159;
  v64(v159, v113, v55);
  v116 = v165;
  v117 = v164;
  v118 = v166;
  (*(v165 + 16))(v164, v187, v166);
  v119 = sub_22C9063CC();
  v120 = sub_22C90AADC();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v200 = v194;
    *v121 = 136315650;
    LODWORD(v193) = v120;
    v122 = v160;
    sub_22C90774C();
    v189 = sub_22C90938C();
    v124 = v123;
    v190 = *(v179 + 8);
    (v190)(v122, v180);
    v192 = v119;
    v125 = *v184;
    v196 = v184 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v125(v112, v114);
    v126 = sub_22C36F9F4(v189, v124, &v200);

    *(v121 + 4) = v126;
    *(v121 + 12) = 2080;
    sub_22C90774C();
    v127 = v115;
    v128 = v154;
    sub_22C90935C();
    v129 = v122;
    v130 = v125;
    (v190)(v129, v180);
    v131 = sub_22C9094FC();
    v133 = v132;
    (*(v161 + 8))(v128, v168);
    v134 = v127;
    v135 = v195;
    v125(v134, v195);
    v136 = sub_22C36F9F4(v131, v133, &v200);

    *(v121 + 14) = v136;
    *(v121 + 22) = 2080;
    v137 = v164;
    v138 = sub_22C9093EC();
    v140 = v139;
    (*(v165 + 8))(v137, v166);
    v141 = sub_22C36F9F4(v138, v140, &v200);

    *(v121 + 24) = v141;
    v142 = v192;
    _os_log_impl(&dword_22C366000, v192, v193, "value %s has type %s and cannot be stored in Array<%s>", v121, 0x20u);
    v143 = v194;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v143, -1, -1);
    MEMORY[0x2318B9880](v121, -1, -1);

    (*(v170 + 8))(v167, v171);
    v110 = v173;
    v144 = v175;
    v146 = v197;
    v145 = v198;
  }

  else
  {

    (*(v116 + 8))(v117, v118);
    v130 = *v184;
    v196 = v184 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v130(v115, v114);
    v130(v112, v114);
    (*(v170 + 8))(v111, v171);
    v110 = v173;
    v144 = v175;
    v146 = v197;
    v145 = v198;
    v135 = v114;
  }

  type metadata accessor for InterpreterError(0);
  sub_22C7A6F08(&qword_27D9BAA40, type metadata accessor for InterpreterError, &protocol conformance descriptor for InterpreterError);
  v151 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v130(v199, v135);
  v152 = v146;
  v70 = v151;
  (*v191)(v152, v145);
  result = sub_22C36DD28(v144, &qword_27D9BF318, &qword_22C9225A0);
LABEL_29:
  *v110 = v70;
  return result;
}

unint64_t sub_22C7A6D50(unint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v3 = sub_22C9093BC();
    v4 = sub_22C7A6F08(&qword_28142FA90, MEMORY[0x277D72A78], MEMORY[0x277D72A88]);
    v7 = MEMORY[0x2318B7DB0](v2, v3, v4);

    v1 = sub_22C79E7B0(v5, &v7);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22C7A6E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C7A6E8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C7A6F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C7A6F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7A703C()
{
  v2 = *(v0 + 312);

  return sub_22C7A6E8C(v2, type metadata accessor for DateComponentsResolver);
}

uint64_t sub_22C7A7084(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

void sub_22C7A70A4()
{
  v2 = *(v0 + 984);
  *(v1 - 168) = *(v0 + 928);
  *(v1 - 160) = v2;
}

uint64_t sub_22C7A7120()
{
  v3 = *(v1 + 8);
  *(v2 - 136) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 128) = v3;
  return v0;
}

uint64_t sub_22C7A7184()
{

  return sub_22C906E7C();
}

uint64_t sub_22C7A71AC()
{
  v6 = (v2 + *(v0 + 20));
  *v6 = v3;
  v6[1] = v4;

  return sub_22C776074(v1);
}

uint64_t sub_22C7A7208()
{

  return sub_22C90690C();
}

BOOL sub_22C7A7224(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_22C7A724C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  result = a2;
  *a2 = a45;
  a2[1] = a46;
  return result;
}

uint64_t sub_22C7A7288()
{
}

uint64_t sub_22C7A72A8()
{

  return sub_22C902B8C();
}

uint64_t sub_22C7A72C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22C90B1BC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t PersonCandidateGenerator.search(personQuery:parameter:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_22C9093BC();
  v2[8] = v3;
  sub_22C3699B8(v3);
  v2[9] = v4;
  v2[10] = sub_22C3699D4();
  v5 = sub_22C90173C();
  v2[11] = v5;
  sub_22C3699B8(v5);
  v2[12] = v6;
  v2[13] = sub_22C3699D4();
  v7 = sub_22C90171C();
  v2[14] = v7;
  sub_22C3699B8(v7);
  v2[15] = v8;
  v2[16] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C0108, &qword_22C925F18);
  v2[17] = v9;
  sub_22C3699B8(v9);
  v2[18] = v10;
  v2[19] = sub_22C3699D4();
  v11 = sub_22C90155C();
  v2[20] = v11;
  sub_22C3699B8(v11);
  v2[21] = v12;
  v2[22] = sub_22C3699D4();
  v13 = sub_22C9063DC();
  v2[23] = v13;
  sub_22C3699B8(v13);
  v2[24] = v14;
  v2[25] = sub_22C36D0D4();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v15 = sub_22C90158C();
  v2[31] = v15;
  sub_22C3699B8(v15);
  v2[32] = v16;
  v2[33] = sub_22C3699D4();
  v17 = sub_22C90152C();
  v2[34] = v17;
  sub_22C3699B8(v17);
  v2[35] = v18;
  v2[36] = sub_22C36D0D4();
  v2[37] = swift_task_alloc();
  v19 = sub_22C90159C();
  v2[38] = v19;
  sub_22C3699B8(v19);
  v2[39] = v20;
  v2[40] = sub_22C3699D4();
  v21 = sub_22C90167C();
  v2[41] = v21;
  sub_22C3699B8(v21);
  v2[42] = v22;
  v2[43] = sub_22C3699D4();
  v23 = sub_22C90162C();
  sub_22C369914(v23);
  v2[44] = sub_22C3699D4();
  v24 = sub_22C90077C();
  sub_22C369914(v24);
  v2[45] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9C0110, &unk_22C925F20);
  sub_22C369914(v25);
  v2[46] = sub_22C3699D4();
  v26 = sub_22C90160C();
  v2[47] = v26;
  sub_22C3699B8(v26);
  v2[48] = v27;
  v2[49] = sub_22C36D0D4();
  v2[50] = swift_task_alloc();
  v28 = sub_22C90969C();
  v2[51] = v28;
  sub_22C3699B8(v28);
  v2[52] = v29;
  v2[53] = sub_22C3699D4();
  v30 = sub_22C90941C();
  v2[54] = v30;
  sub_22C3699B8(v30);
  v2[55] = v31;
  v2[56] = sub_22C3699D4();
  v32 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v32);
  v2[57] = sub_22C36D0D4();
  v2[58] = swift_task_alloc();
  v33 = sub_22C90981C();
  v2[59] = v33;
  sub_22C3699B8(v33);
  v2[60] = v34;
  v2[61] = sub_22C36D0D4();
  v2[62] = swift_task_alloc();
  v35 = sub_22C9016EC();
  v2[63] = v35;
  sub_22C3699B8(v35);
  v2[64] = v36;
  v2[65] = sub_22C36D0D4();
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7A78E4, 0, 0);
}

uint64_t sub_22C7A78E4()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[7];
  sub_22C9016BC();
  sub_22C7A9D18(v3, v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C36DD28(v0[58], &qword_27D9BC0C0, &unk_22C911FA0);
    goto LABEL_9;
  }

  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[51];
  v9 = v0[52];
  v10 = (*(v0[60] + 32))(v0[62], v0[58], v0[59]);
  MEMORY[0x2318B6CE0](v10);
  v11 = sub_22C9093FC();
  v53 = *(v5 + 8);
  v53(v4, v7);
  v12 = *MEMORY[0x277D72F88];
  v13 = sub_22C90968C();
  sub_22C36985C();
  v51 = *(v14 + 104);
  v51(v6, v12, v13);
  v50 = *MEMORY[0x277D72E80];
  v48 = *(v9 + 104);
  v48(v6);
  sub_22C5E9738();
  v16 = v15;

  v19 = *(v9 + 8);
  v18 = v9 + 8;
  v17 = v19;
  v20 = (v19)(v6, v8);
  if (v16)
  {
    sub_22C36C3F4();
    sub_22C9016CC();
LABEL_7:
    (*(v18 + 8))(v8, v17);
    (*(v16 + 8))(v11, v6);
    (*(v16 + 32))(v11, v13, v6);
    goto LABEL_9;
  }

  v21 = v0[56];
  v16 = v0[53];
  v8 = v0[54];
  v46 = v0[51];
  MEMORY[0x2318B6CE0](v20);
  v11 = sub_22C9093FC();
  v53(v21, v8);
  v51(v16, *MEMORY[0x277D72F90], v13);
  v6 = v46;
  (v48)(v16, v50, v46);
  sub_22C5E9738();
  v13 = v22;

  v17(v16, v46);
  if (v13)
  {
    sub_22C36C3F4();
    sub_22C9016DC();
    goto LABEL_7;
  }

  (*(v0[60] + 8))(v0[62], v0[59]);
LABEL_9:
  v23 = v0[63];
  v49 = v0[50];
  v24 = v0[48];
  v52 = v0[49];
  v54 = v0[47];
  v25 = v0[46];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[40];
  v44 = v0[41];
  v45 = v0[38];
  v47 = v0[37];
  (*(v0[64] + 16))(v25, v0[66], v23);
  sub_22C36C640(v25, 0, 1, v23);
  sub_22C90073C();
  sub_22C90161C();
  (*(v27 + 104))(v26, *MEMORY[0x277D56148], v44);
  (*(v28 + 104))(v29, *MEMORY[0x277D560D0], v45);
  sub_22C9015FC();
  sub_22C7A92DC(v47);
  (*(v24 + 16))(v52, v49, v54);
  sub_22C90156C();
  sub_22C90409C();
  v30 = sub_22C9063CC();
  v31 = sub_22C90AACC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_22C36D240();
    *v32 = 0;
    _os_log_impl(&dword_22C366000, v30, v31, "Running PersonCandidateGenerator", v32, 2u);
    sub_22C3699EC();
  }

  v34 = v0[36];
  v33 = v0[37];
  v35 = v0[34];
  v36 = v0[35];
  v37 = v0[30];
  v38 = v0[23];
  v39 = v0[24];

  v40 = *(v39 + 8);
  v0[67] = v40;
  v40(v37, v38);
  (*(v36 + 16))(v34, v33, v35);
  sub_22C90154C();
  v41 = swift_task_alloc();
  v0[68] = v41;
  *v41 = v0;
  v41[1] = sub_22C7A7E2C;
  v42 = v0[22];

  return MEMORY[0x2821B89B8](v42);
}

uint64_t sub_22C7A7E2C()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 552) = v7;
  *(v8 + 560) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v9 = sub_22C7A908C;
  }

  else
  {
    v9 = sub_22C7A7F9C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_22C7A7F9C()
{
  v195 = v0;
  v1 = v0[69];
  v177 = *(v1 + 16);
  if (!v177)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_35:
    v186 = v5;
    if (!sub_22C7A72C8(v5))
    {
      sub_22C90409C();
      v51 = sub_22C9063CC();
      v52 = sub_22C90AADC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = sub_22C36D240();
        *v53 = 0;
        _os_log_impl(&dword_22C366000, v51, v52, "ContactSearcher found no candidates", v53, 2u);
        sub_22C3699EC();
      }

      v165 = v0[67];
      v190 = v0[66];
      v54 = v51;
      v55 = v0[64];
      v178 = v0[50];
      v183 = v0[63];
      v56 = v0[48];
      v170 = v0[37];
      v174 = v0[47];
      v57 = v0[35];
      v167 = v0[34];
      v58 = v0[29];
      v59 = v0[23];

      v165(v58, v59);
      v60 = sub_22C3726C4();
      v61(v60);
      (*(v57 + 8))(v170, v167);
      (*(v56 + 8))(v178, v174);
      (*(v55 + 8))(v190, v183);
      goto LABEL_95;
    }

    sub_22C90409C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AAFC();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[67];
    if (v38)
    {
      v189 = v0[67];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v194 = v41;
      *v40 = 136315138;
      v42 = sub_22C7A9D88();

      v44 = MEMORY[0x2318B7AD0](v43, v42);
      v46 = v45;

      v47 = sub_22C36F9F4(v44, v46, &v194);

      *(v40 + 4) = v47;
      sub_22C37B250(&dword_22C366000, v48, v49, "ContactSearcher results: %s");
      sub_22C36FF94(v41);
      sub_22C3699EC();
      sub_22C3699EC();

      v50 = sub_22C378794();
      v189(v50);
    }

    else
    {

      v62 = sub_22C378794();
      v39(v62);
    }

    v63 = v182;
    v64 = v182[59];
    v65 = v182[57];
    sub_22C7A9D18(v182[7], v65);
    if (sub_22C370B74(v65, 1, v64) == 1)
    {
      sub_22C36DD28(v182[57], &qword_27D9BC0C0, &unk_22C911FA0);
LABEL_80:
      v97 = v186;
      goto LABEL_81;
    }

    v66 = v182[56];
    v67 = v182[54];
    v68 = v182[55];
    v70 = v182[52];
    v69 = v182[53];
    v71 = v182[51];
    v72 = (*(v182[60] + 32))(v182[61], v182[57], v182[59]);
    MEMORY[0x2318B6CE0](v72);
    sub_22C9093FC();
    v74 = *(v68 + 8);
    v73 = v68 + 8;
    v191 = v74;
    v74(v66, v67);
    v75 = *MEMORY[0x277D72F88];
    v76 = sub_22C90968C();
    sub_22C36985C();
    v179 = *(v77 + 104);
    v179(v69, v75, v76);
    v171 = *MEMORY[0x277D72E80];
    v168 = *(v70 + 104);
    v168(v69);
    sub_22C5E9738();
    LOBYTE(v75) = v78;

    v79 = *(v70 + 8);
    v80 = v79(v69, v71);
    if (v75)
    {
      sub_22C7AA108(MEMORY[0x277D84F90]);
      for (i = 0; v76 != i; ++i)
      {
        if (v182)
        {
          v82 = MEMORY[0x2318B8460](i, v73);
        }

        else
        {
          if (i >= *(v71 + 16))
          {
            goto LABEL_106;
          }

          v82 = *(v73 + 8 * i + 32);
        }

        v83 = v82;
        if (__OFADD__(i, 1))
        {
          goto LABEL_105;
        }

        v84 = [v82 personHandle];
        if (v84 && (v85 = v84, v86 = [v84 type], v85, v86 == 1))
        {
          sub_22C90AFEC();
          sub_22C90B02C();
          sub_22C90B03C();
          sub_22C90AFFC();
        }

        else
        {
        }
      }

      swift_bridgeObjectRelease_n();
      v97 = v194;
      if (!sub_22C7A72C8(v194))
      {
        v186 = v97;
        sub_22C90409C();
        v98 = sub_22C9063CC();
        v99 = sub_22C90AADC();
        v100 = os_log_type_enabled(v98, v99);
        v101 = v182[67];
        v102 = v182[60];
        v103 = v182[61];
        v104 = v182[59];
        v105 = v182[27];
        v106 = v182[23];
        if (v100)
        {
          v107 = sub_22C36D240();
          *v107 = 0;
          v108 = "No candidates had valid email addresses.";
LABEL_78:
          _os_log_impl(&dword_22C366000, v98, v99, v108, v107, 2u);
          sub_22C3699EC();
          goto LABEL_79;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v87 = v182[56];
      v88 = v182[53];
      v89 = v182[54];
      v163 = v182[51];
      MEMORY[0x2318B6CE0](v80);
      sub_22C9093FC();
      v191(v87, v89);
      v179(v88, *MEMORY[0x277D72F90], v76);
      (v168)(v88, v171, v163);
      sub_22C5E9738();
      LOBYTE(v87) = v90;

      v79(v88, v163);
      if ((v87 & 1) == 0)
      {
        (*(v182[60] + 8))(v182[61], v182[59]);
        v63 = v182;
        goto LABEL_80;
      }

      sub_22C7AA108(MEMORY[0x277D84F90]);
      for (j = 0; v163 != j; ++j)
      {
        if (v182)
        {
          v92 = MEMORY[0x2318B8460](j, v73);
        }

        else
        {
          if (j >= *(v89 + 16))
          {
            goto LABEL_108;
          }

          v92 = *(v73 + 8 * j + 32);
        }

        v93 = v92;
        if (__OFADD__(j, 1))
        {
          goto LABEL_107;
        }

        v94 = [v92 personHandle];
        if (v94 && (v95 = v94, v96 = [v94 type], v95, v96 == 2))
        {
          sub_22C90AFEC();
          sub_22C90B02C();
          sub_22C90B03C();
          sub_22C90AFFC();
        }

        else
        {
        }
      }

      swift_bridgeObjectRelease_n();
      v97 = v194;
      if (!sub_22C7A72C8(v194))
      {
        v186 = v97;
        sub_22C90409C();
        v98 = sub_22C9063CC();
        v99 = sub_22C90AADC();
        v109 = os_log_type_enabled(v98, v99);
        v101 = v182[67];
        v102 = v182[60];
        v103 = v182[61];
        v104 = v182[59];
        v105 = v182[26];
        v106 = v182[23];
        if (v109)
        {
          v107 = sub_22C36D240();
          *v107 = 0;
          v108 = "No candidates had valid phone numbers.";
          goto LABEL_78;
        }

LABEL_79:

        v101(v105, v106);
        (*(v102 + 8))(v103, v104);
        v63 = v182;
        goto LABEL_80;
      }
    }

    v63 = v182;
    (*(v182[60] + 8))(v182[61], v182[59]);
LABEL_81:
    sub_22C90409C();

    v110 = sub_22C9063CC();
    v111 = sub_22C90AAFC();
    v112 = os_log_type_enabled(v110, v111);
    v113 = v63[67];
    if (v112)
    {
      v114 = swift_slowAlloc();
      v192 = v113;
      v194 = swift_slowAlloc();
      v115 = v194;
      *v114 = 136315138;
      v116 = sub_22C7A9D88();
      v117 = MEMORY[0x2318B7AD0](v97, v116);
      v119 = v118;

      v120 = sub_22C36F9F4(v117, v119, &v194);

      *(v114 + 4) = v120;
      sub_22C37B250(&dword_22C366000, v121, v122, "ContactSearcher results post-filtering: %s");
      sub_22C36FF94(v115);
      sub_22C3699EC();
      sub_22C3699EC();

      v123 = sub_22C378794();
      v192(v123);
    }

    else
    {

      v124 = sub_22C378794();
      v113(v124);
    }

    v125 = sub_22C7A72C8(v97);
    v126 = v182;
    v187 = v97;
    if (v125)
    {
      v127 = v125;
      v194 = MEMORY[0x277D84F90];
      v128 = v125 & ~(v125 >> 63);

      sub_22C3B74E0(0, v128, 0);
      if (v127 < 0)
      {
        goto LABEL_109;
      }

      v129 = 0;
      v130 = v182[9];
      v131 = v194;
      v180 = v97 & 0xC000000000000001;
      v175 = *MEMORY[0x277D729B0];
      v172 = *MEMORY[0x277D72A58];
      do
      {
        if (v180)
        {
          MEMORY[0x2318B8460](v129, v187);
        }

        else
        {
          v132 = *(v187 + 8 * v129 + 32);
        }

        v133 = v126[10];
        v134 = v126[8];
        v135 = sub_22C90931C();
        v136 = swift_allocBox();
        v137 = v126;
        v139 = v138;
        sub_22C9092BC();
        (*(*(v135 - 8) + 104))(v139, v175, v135);
        *v133 = v136;
        (*(v130 + 104))(v133, v172, v134);
        v194 = v131;
        v141 = *(v131 + 16);
        v140 = *(v131 + 24);
        if (v141 >= v140 >> 1)
        {
          sub_22C3B74E0(v140 > 1, v141 + 1, 1);
          v131 = v194;
        }

        v142 = v137[10];
        v143 = v137[8];
        ++v129;
        *(v131 + 16) = v141 + 1;
        (*(v130 + 32))(v131 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v141, v142, v143);
        v126 = v137;
      }

      while (v127 != v129);
      v193 = v137[66];
      v144 = v137[64];
      v181 = v137[50];
      v184 = v137[63];
      v145 = v137[48];
      v173 = v137[37];
      v176 = v137[47];
      v147 = v137[34];
      v146 = v126[35];
      v0 = v126;

      v148 = sub_22C3726C4();
      v149(v148);
      (*(v146 + 8))(v173, v147);
      (*(v145 + 8))(v181, v176);
      (*(v144 + 8))(v193, v184);

      goto LABEL_96;
    }

    v150 = v182[66];
    v152 = v182[63];
    v151 = v182[64];
    v153 = v182[50];
    v0 = v182;
    v154 = v182[47];
    v155 = v182[48];
    v156 = v182[37];
    v157 = v182[34];
    v158 = v182[35];
    (*(v182[32] + 8))(v182[33], v182[31]);
    (*(v158 + 8))(v156, v157);
    (*(v155 + 8))(v153, v154);
    (*(v151 + 8))(v150, v152);
LABEL_95:

    v131 = MEMORY[0x277D84F90];
LABEL_96:

    v159 = v0[1];

    v159(v131);
    return;
  }

  v2 = 0;
  v3 = v0 + 2;
  v4 = v0[18];
  v169 = *(v4 + 16);
  v166 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v162 = (v0[12] + 8);
  v164 = *(v4 + 72);
  v161 = (v4 + 8);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = v5;
    v7 = v182[19];
    v8 = v182[17];
    v9 = v182[13];
    v10 = v182[11];
    v169(v7, v166 + v2 * v164, v8);
    sub_22C9016FC();
    sub_22C90172C();
    (*v162)(v9, v10);
    v11 = sub_22C90170C();
    v12 = sub_22C3726C4();
    v13(v12);
    (*v161)(v7, v8);
    v14 = v11 >> 62 ? sub_22C90B1BC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v6;
    v15 = v6 & 0xFFFFFFFFFFFFFF8;
    v16 = v6 >> 62;
    v17 = v16 ? sub_22C90B1BC() : *(v15 + 16);
    v18 = v17 + v14;
    if (__OFADD__(v17, v14))
    {
      break;
    }

    v188 = v2;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v19 = v5 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v20 >= v18)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_22C90B1BC();
      goto LABEL_14;
    }

    if (v16)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 = sub_22C90AF9C();
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_15:
    v21 = *(v19 + 16);
    v22 = v20 - v21;
    v23 = v19 + 8 * v21;
    if (v11 >> 62)
    {
      v25 = sub_22C90B1BC();
      if (v25)
      {
        v26 = v25;
        v27 = sub_22C90B1BC();
        if (v22 < v27)
        {
          goto LABEL_102;
        }

        if (v26 < 1)
        {
          goto LABEL_104;
        }

        v160 = v27;
        v185 = v5;
        v28 = v23 + 32;
        sub_22C7A9DCC();
        for (k = 0; k != v26; ++k)
        {
          sub_22C3A5908(&qword_27D9C0120, &qword_22C925F30);
          v30 = sub_22C7A9C84(v3, k, v11);
          v32 = *v31;
          (v30)(v3, 0);
          *(v28 + 8 * k) = v32;
        }

        v5 = v185;
        v24 = v160;
        goto LABEL_25;
      }
    }

    else
    {
      v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        if (v22 < v24)
        {
          goto LABEL_103;
        }

        sub_22C7A9D88();
        swift_arrayInitWithCopy();
LABEL_25:

        if (v24 < v14)
        {
          goto LABEL_100;
        }

        if (v24 > 0)
        {
          v33 = *(v19 + 16);
          v34 = __OFADD__(v33, v24);
          v35 = v33 + v24;
          if (v34)
          {
            goto LABEL_101;
          }

          *(v19 + 16) = v35;
        }

        goto LABEL_30;
      }
    }

    if (v14 > 0)
    {
      goto LABEL_100;
    }

LABEL_30:
    v2 = v188 + 1;
    if (v188 + 1 == v177)
    {
      v0 = v182;

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_22C7A908C()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  (*(v0[32] + 8))();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = sub_22C3726C4();
  v8(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22C7A92DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BF968, &qword_22C925FA0);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  sub_22C90153C();
  sub_22C369824();
  v57 = v9;
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v54 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v53 = &v53 - v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = sub_22C3A5908(&qword_27D9C0130, &qword_22C925FA8);
  v17 = sub_22C369914(v16);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v55 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  v22 = sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  v23 = sub_22C369914(v22);
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v56 = v24;
  sub_22C369930();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v53 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - v29;
  v31 = sub_22C90663C();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_22C90151C();
  v59 = v2;
  sub_22C90664C();
  if (sub_22C370B74(v30, 1, v31) == 1)
  {
    sub_22C36DD28(v30, &qword_27D9BF7A8, &unk_22C923360);
  }

  else
  {
    (*(v33 + 32))(v36, v30, v31);
    sub_22C90662C();
    v37 = sub_22C90660C();
    if (sub_22C370B74(v7, 1, v37) == 1)
    {
      sub_22C36DD28(v7, &qword_27D9BF968, &qword_22C925FA0);
      (*(v57 + 104))(v15, *MEMORY[0x277D56018], v58);
    }

    else
    {
      v38 = v53;
      sub_22C7A9A30(v53);
      (*(*(v37 - 8) + 8))(v7, v37);
      (*(v57 + 32))(v15, v38, v58);
    }

    sub_22C9015DC();
    v39 = sub_22C9015EC();
    sub_22C36C640(v21, 0, 1, v39);
    sub_22C9014FC();
    (*(v33 + 8))(v36, v31);
  }

  sub_22C9065EC();
  if (v40)
  {
    sub_22C90664C();
    v41 = sub_22C370B74(v28, 1, v31);
    sub_22C36DD28(v28, &qword_27D9BF7A8, &unk_22C923360);
    if (v41 == 1)
    {
      v42 = sub_22C90A0EC();
      v43 = [v42 _appearsToBeEmail];

      if (v43)
      {
        v44 = MEMORY[0x277D56008];
LABEL_14:
        (*(v57 + 104))(v54, *v44, v58);
        v49 = v55;
        sub_22C9015DC();
        v50 = sub_22C9015EC();
        sub_22C36C640(v49, 0, 1, v50);
        sub_22C9014FC();
        goto LABEL_16;
      }
    }

    v45 = v56;
    sub_22C90664C();
    v46 = sub_22C370B74(v45, 1, v31);
    sub_22C36DD28(v45, &qword_27D9BF7A8, &unk_22C923360);
    if (v46 == 1)
    {
      v47 = sub_22C90A0EC();
      v48 = [v47 _appearsToBePhoneNumber];

      if (v48)
      {
        v44 = MEMORY[0x277D56010];
        goto LABEL_14;
      }
    }

    sub_22C90150C();
  }

LABEL_16:
  sub_22C9065AC();
  if (v51)
  {
    sub_22C9014DC();
  }

  sub_22C9065BC();
  return sub_22C9014EC();
}

uint64_t sub_22C7A989C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C7A9938;

  return PersonCandidateGenerator.search(personQuery:parameter:)(a1, a2);
}

uint64_t sub_22C7A9938(uint64_t a1)
{
  v4 = *v2;
  sub_22C369970();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_22C7A9A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90660C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v4);
  v10 = (*(v6 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D1DB68])
  {
    goto LABEL_5;
  }

  if (v10 == *MEMORY[0x277D1DB60])
  {
    v11 = MEMORY[0x277D56008];
LABEL_6:
    v12 = *v11;
    sub_22C90153C();
    sub_22C36985C();
    return (*(v13 + 104))(a1, v12);
  }

  if (v10 == *MEMORY[0x277D1DB70])
  {
LABEL_5:
    v11 = MEMORY[0x277D56010];
    goto LABEL_6;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

void (*sub_22C7A9BA4(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  sub_22C387584(a1, a2, a3);
  sub_22C633A2C();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318B8460](v5, v4);
  }

  *v3 = v7;
  return sub_22C7AA100;
}

uint64_t (*sub_22C7A9C10(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_22C387584(a1, a2, a3);
  sub_22C633A2C();
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x2318B8460](v5, v4);
  }

  *v3 = v7;
  return sub_22C7A9C7C;
}

void (*sub_22C7A9C84(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_22C387754(a3);
  sub_22C633A2C();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318B8460](a2, a3);
  }

  *a1 = v7;
  return sub_22C7A9D10;
}

uint64_t sub_22C7A9D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C7A9D88()
{
  result = qword_27D9C0118;
  if (!qword_27D9C0118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0118);
  }

  return result;
}

unint64_t sub_22C7A9DCC()
{
  result = qword_27D9C0128;
  if (!qword_27D9C0128)
  {
    sub_22C3AC1A0(&qword_27D9C0120, &qword_22C925F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0128);
  }

  return result;
}

uint64_t dispatch thunk of PersonCandidateGenerating.search(personQuery:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C7A9F60;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_22C7A9F60(uint64_t a1)
{
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

_BYTE *storeEnumTagSinglePayload for PersonCandidateGenerator(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C7AA108@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
  sub_22C7A72C8(*(v1 - 96));
}

uint64_t PlanResolverService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C9089DC();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v1[17] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v1[18] = v6;
  sub_22C3699B8(v6);
  v1[19] = v7;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for StepResolution(0);
  v1[22] = sub_22C3699D4();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v1[23] = sub_22C3699D4();
  v8 = sub_22C90069C();
  v1[24] = v8;
  sub_22C3699B8(v8);
  v1[25] = v9;
  v1[26] = sub_22C3699D4();
  type metadata accessor for Interpreter(0);
  v1[27] = sub_22C3699D4();
  v10 = sub_22C90634C();
  v1[28] = v10;
  sub_22C3699B8(v10);
  v1[29] = v11;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[32] = v12;
  sub_22C3699B8(v12);
  v1[33] = v13;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7AA3DC, 0, 0);
}

uint64_t sub_22C7AA3DC(uint64_t a1)
{
  v47 = v1;
  v2 = v1[34];
  v3 = v1[32];
  v4 = v1[33];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v41 = *(v4 + 8);
  v41(v2, v3);
  v5 = sub_22C90635C();
  v6 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v5, v6, v8, "PlanResolverService.run", "", v7, 2u);
    sub_22C3699EC();
  }

  v9 = v1[35];
  v11 = v1[31];
  v10 = v1[32];
  v13 = v1[29];
  v12 = v1[30];
  v14 = v1[28];
  v42 = v1[27];
  v15 = v1[14];

  (*(v13 + 16))(v12, v11, v14);
  sub_22C9063AC();
  swift_allocObject();
  v1[36] = sub_22C90639C();
  (*(v13 + 8))(v11, v14);
  v41(v9, v10);
  v1[5] = &type metadata for PlanResolutionBiomeTelemetryStream;
  v1[6] = &off_283FC01A8;
  v16 = v15[4];
  v17 = v15[5];
  v18 = sub_22C374168(v15 + 1, v16);
  v19 = v15[9];
  v20 = v15[10];
  sub_22C374168(v15 + 6, v19);
  v21 = *v15;
  v22 = *(v16 - 8);
  v23 = sub_22C3699D4();
  (*(v22 + 16))(v23, v18, v16);
  v24 = *(v19 - 8);
  sub_22C3699D4();
  (*(v24 + 16))();
  sub_22C3B5C4C((v1 + 2), (v1 + 7));

  sub_22C3B2528(v43);
  v45 = &type metadata for PersonCandidateGenerator;
  v46 = &protocol witness table for PersonCandidateGenerator;
  sub_22C649FEC(v21, v23, sub_22C3B5AC0, 0, (v1 + 7), v43, &v44, v42, v16, v19, v17, v20);
  v25 = v1[23];
  v26 = v1[24];
  v27 = v1[13];

  v28 = type metadata accessor for PlannerServiceContext(0);
  sub_22C3E8FB4(v27 + *(v28 + 20), v25, &qword_27D9BB190, qword_22C90DD90);
  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    sub_22C36DD28(v1[23], &qword_27D9BB190, qword_22C90DD90);
    sub_22C903FEC();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22C366000, v29, v30, "Plan Resolution has been called, but we don't have a plan cycle id. Throwing", v31, 2u);
      sub_22C3699EC();
    }

    v32 = v1[27];
    v34 = v1[19];
    v33 = v1[20];
    v35 = v1[18];

    (*(v34 + 8))(v33, v35);
    sub_22C7AB8F8();
    swift_allocError();
    swift_willThrow();
    sub_22C36B728();
    sub_22C7AB96C(v32, v36);
    sub_22C3B5CA8((v1 + 2));
    v37 = v1[36];
    sub_22C371D64();
    sub_22C388A20();
    sub_22C7AB0D8(v37);

    v38 = v1[1];

    return v38();
  }

  else
  {
    (*(v1[25] + 32))(v1[26], v1[23], v1[24]);
    v40 = swift_task_alloc();
    v1[37] = v40;
    *v40 = v1;
    v40[1] = sub_22C7AA9A0;

    return Interpreter.resolve(sessionState:contextId:planCycleId:)();
  }
}

uint64_t sub_22C7AA9A0()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 304) = v0;

  if (v0)
  {
    v5 = sub_22C7AAFA8;
  }

  else
  {
    v5 = sub_22C7AAAA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C7AAAA8()
{
  v66 = v0;
  v1 = v0;
  v2 = StepResolution.toEventPayloads(omittingResponseEvents:)(0);
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64 = v60;
    buf = v5;
    *v5 = 136315138;
    v10 = *(v2 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v58 = v4;
      v59 = v3;
      v12 = v0[16];
      v65 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v10, 0, v6, v7, v8, v9);
      v11 = v65;
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v62 = *(v12 + 56);
      v63 = v13;
      v15 = (v12 - 8);
      do
      {
        v16 = v1[17];
        v17 = v1;
        v18 = v1[15];
        v63(v16, v14, v18);
        v19 = sub_22C9089BC();
        v21 = v20;
        (*v15)(v16, v18);
        v65 = v11;
        v27 = *(v11 + 16);
        v26 = *(v11 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22C3B5E2C(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
          v11 = v65;
        }

        *(v11 + 16) = v27 + 1;
        v28 = v11 + 16 * v27;
        *(v28 + 32) = v19;
        *(v28 + 40) = v21;
        v14 += v62;
        --v10;
        v1 = v17;
      }

      while (v10);
      v3 = v59;
      v4 = v58;
    }

    v32 = v1[21];
    v34 = v1[18];
    v33 = v1[19];
    v35 = MEMORY[0x2318B7AD0](v11, MEMORY[0x277D837D0]);
    v37 = v36;

    v38 = sub_22C36F9F4(v35, v37, &v64);

    *(buf + 4) = v38;
    _os_log_impl(&dword_22C366000, v3, v4, "resolved to %s", buf, 0xCu);
    sub_22C36FF94(v60);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
    v29 = v0[21];
    v31 = v0[18];
    v30 = v0[19];

    (*(v30 + 8))(v29, v31);
  }

  v39 = v1[38];
  v40 = v1[12];
  *(swift_task_alloc() + 16) = v40;
  sub_22C3B25C8();
  if (v39)
  {
    v43 = v1[26];
    v42 = v1[27];
    v45 = v1[24];
    v44 = v1[25];

    sub_22C36A37C();
    (*(v44 + 8))(v43, v45);
    sub_22C36B728();
    sub_22C7AB96C(v42, v46);
    sub_22C3B5CA8((v1 + 2));
    v47 = v1[36];
    sub_22C371D64();
    sub_22C388A20();
    sub_22C7AB0D8(v47);

    v48 = v1[1];

    return v48();
  }

  else
  {
    v50 = v41;
    v51 = v1[36];
    v52 = v1[26];
    v53 = v1[27];
    v55 = v1[24];
    v54 = v1[25];

    sub_22C36A37C();
    (*(v54 + 8))(v52, v55);
    sub_22C36B728();
    sub_22C7AB96C(v53, v56);
    sub_22C3B5CA8((v1 + 2));
    sub_22C7AB0D8(v51);

    v57 = v1[1];

    return v57(v50);
  }
}

uint64_t sub_22C7AAFA8()
{
  v1 = v0[27];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_22C36B728();
  sub_22C7AB96C(v1, v2);
  sub_22C3B5CA8((v0 + 2));
  v3 = v0[36];
  sub_22C371D64();
  sub_22C7AB0D8(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22C7AB0D8(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "PlanResolverService.run", v29, v17, 0xCu);
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

uint64_t sub_22C7AB47C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v23[1] = a1;
  v23[0] = a3;
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_22C90880C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908A0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v17 = sub_22C9087DC();
  (*(v10 + 8))(v12, v9);
  sub_22C3A5950(v17);

  sub_22C3E8FB4(v8, v6, &qword_27D9BA808, &qword_22C90C6E0);
  if (sub_22C370B74(v6, 1, v13) == 1)
  {
    sub_22C36DD28(v6, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    v18 = swift_allocError();
    v19 = v26;
    v20 = v25;
    *v21 = v24;
    *(v21 + 16) = v20;
    *(v21 + 32) = v19;
    swift_willThrow();
    result = sub_22C36DD28(v8, &qword_27D9BA808, &qword_22C90C6E0);
    *v27 = v18;
  }

  else
  {
    sub_22C36DD28(v8, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v14 + 32))(v16, v6, v13);
    sub_22C90893C();
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_22C7AB7C0(uint64_t a1)
{
  v2 = sub_22C7ABBD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7AB7FC(uint64_t a1)
{
  v2 = sub_22C7ABBD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C7AB854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0B10;

  return PlanResolverService.handle(_:plannerServiceContext:)();
}

unint64_t sub_22C7AB8F8()
{
  result = qword_27D9C0138;
  if (!qword_27D9C0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0138);
  }

  return result;
}

uint64_t sub_22C7AB96C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C7AB9C4(uint64_t a1)
{
  result = sub_22C7AB9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C7AB9EC()
{
  result = qword_281433E28[0];
  if (!qword_281433E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281433E28);
  }

  return result;
}

uint64_t sub_22C7ABA40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22C7ABA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22C7ABAD4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C7ABB84()
{
  result = qword_27D9C0140;
  if (!qword_27D9C0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0140);
  }

  return result;
}

unint64_t sub_22C7ABBD8()
{
  result = qword_27D9C0148;
  if (!qword_27D9C0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0148);
  }

  return result;
}

uint64_t sub_22C7ABC38()
{
  v0 = sub_22C9063DC();
  MEMORY[0x28223BE20](v0);
  sub_22C9061EC();
  sub_22C7ADB8C();
  return sub_22C90620C();
}

uint64_t sub_22C7ABE3C(uint64_t a1)
{
  v1 = sub_22C9063DC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  type metadata accessor for PlanResolutionBiomeTelemetryStream.CancellationStatus();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_22C90416C();
  swift_allocObject();

  sub_22C90417C();
  if ((*(v8 + 16) & 1) == 0)
  {
    if (qword_27D9BA720 != -1)
    {
      swift_once();
    }

    if (qword_27D9C0168)
    {
      sub_22C378A4C(&xmmword_27D9C0150, &v13);
    }

    else
    {
      v13 = xmmword_27D9C0150;
      v14 = unk_27D9C0160;
      v15 = qword_27D9C0170;
    }

    if (*(&v14 + 1))
    {
      sub_22C374168(&v13, *(&v14 + 1));
      sub_22C9062BC();
    }

    else
    {

      if (!*(&v14 + 1))
      {
      }
    }

    sub_22C36FF94(&v13);
  }

  sub_22C9040DC();
  v9 = sub_22C9063CC();
  v10 = sub_22C90AABC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v9, v10, "Skipping sending a plan resolution event to Biome, a termination signal was received", v11, 2u);
    MEMORY[0x2318B9880](v11, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_22C7AC0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F8C();
  v8 = sub_22C9063CC();
  v9 = sub_22C90AAFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22C366000, v8, v9, "PlanResolutionBiomeTelemetryStream received SIGTERM.", v10, 2u);
    MEMORY[0x2318B9880](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(a1 + 16) = 1;
  v11 = *MEMORY[0x277D41D58];
  v12 = sub_22C90415C();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

void sub_22C7AC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_22C90592C();
  sub_22C369824();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v30 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v30);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_22C90A73C();
  sub_22C90A75C();
  sub_22C36BECC();
  sub_22C36C640(v34, v35, v36, v37);
  (*(v26 + 16))(&a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v24);
  v38 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v26 + 32))(v39 + v38, &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_22C8FAAA0(0, 0, v33, &unk_22C926298, v39);

  sub_22C36DD28(v33, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C36CC48();
}

uint64_t sub_22C7AC438()
{
  sub_22C7ABE3C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for PlanResolverTelemetryRequestContext(uint64_t a1)
{
  result = qword_27D9C0180;
  if (!qword_27D9C0180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C7AC540(uint64_t a1)
{
  v1 = sub_22C90069C();
  if (v2 <= 0x3F)
  {
    sub_22C7AC60C(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_22C7AC664();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_22C7AC60C(uint64_t a1)
{
  if (!qword_27D9C0190)
  {
    sub_22C90069C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C0190);
    }
  }
}

void sub_22C7AC664()
{
  if (!qword_27D9C0198)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0198);
    }
  }
}

void sub_22C7AC6D4()
{
  sub_22C36BA7C();
  v3 = sub_22C90587C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C371BB4();
  v7 = sub_22C9058CC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v11 = sub_22C36EC5C();
  v12 = type metadata accessor for PlanResolverTelemetryRequestContext(v11);
  v13 = *(v12 + 24);
  v17 = *(v12 + 20);
  sub_22C9062CC();
  (*(v9 + 16))(v1, v2, v7);
  sub_22C36BECC();
  sub_22C36C640(v14, v15, v16, v7);
  (*(v5 + 104))(v1, *MEMORY[0x277D1FFD0], v3);
  sub_22C7ACFB0(v1, v0 + v13, v0 + v17);
  (*(v5 + 8))(v1, v3);
  (*(v9 + 8))(v2, v7);
  sub_22C36CC48();
}

void sub_22C7AC8E8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90587C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C90584C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C9062CC();
  (*(v13 + 16))(v10, v17, v11);
  sub_22C36BECC();
  sub_22C36C640(v18, v19, v20, v11);
  (*(v6 + 104))(v10, *MEMORY[0x277D1FFD8], v4);
  sub_22C7ACFB0(v10, v3, v1);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
  sub_22C36CC48();
}

void sub_22C7ACAC0()
{
  sub_22C36BA7C();
  v3 = v2;
  v40 = v4;
  v41 = v5;
  v42 = sub_22C90587C();
  sub_22C369824();
  v39 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C36EC5C();
  v8 = sub_22C90586C();
  sub_22C369824();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C3A5908(&qword_27D9C01A0, &qword_22C926278);
  sub_22C369914(v14);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for InterpreterError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C371BB4();
  v20 = sub_22C90581C();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = (v25 - v24);
  v43 = v3;
  v27 = v3;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    sub_22C36BECC();
    sub_22C36C640(v28, v29, v30, v18);
    sub_22C7AD9FC(v17, v0);
    sub_22C7AD164(v0, v26);
    v31 = sub_22C5F889C(v0);
  }

  else
  {
    sub_22C36C640(v17, 1, 1, v18);
    sub_22C36DD28(v17, &qword_27D9C01A0, &qword_22C926278);
    *v26 = 0;
    v31 = (*(v22 + 104))(v26, *MEMORY[0x277D1FFA8], v20);
  }

  MEMORY[0x28223BE20](v31);
  *(&v38 - 2) = v26;
  sub_22C9062CC();
  v32 = v38;
  (*(v38 + 16))(v1, v13, v8);
  sub_22C36BECC();
  sub_22C36C640(v33, v34, v35, v8);
  v36 = v39;
  v37 = v42;
  (*(v39 + 104))(v1, *MEMORY[0x277D1FFE0], v42);
  sub_22C7ACFB0(v1, v40, v41);
  (*(v36 + 8))(v1, v37);
  (*(v32 + 8))(v13, v8);
  (*(v22 + 8))(v26, v20);
  sub_22C36CC48();
}

uint64_t sub_22C7ACE7C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C9058BC();
  sub_22C9058AC();
  sub_22C90589C();
  v7 = sub_22C90625C();
  sub_22C9062CC();
  sub_22C36BECC();
  sub_22C36C640(v8, v9, v10, v7);
  return sub_22C90588C();
}

uint64_t sub_22C7AD164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for InterpreterError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  sub_22C70D42C(a1, v6 - v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = MEMORY[0x277D1FF58];
      goto LABEL_12;
    case 1u:
      sub_22C5F889C(v7);
      v9 = MEMORY[0x277D1FF30];
      goto LABEL_22;
    case 2u:
      sub_22C5F889C(v7);
      v9 = MEMORY[0x277D1FF98];
      goto LABEL_22;
    case 3u:
      sub_22C5F889C(v7);
      v9 = MEMORY[0x277D1FF50];
      goto LABEL_22;
    case 4u:
      v8 = MEMORY[0x277D1FF28];
      goto LABEL_12;
    case 5u:
      sub_22C5F889C(v7);
      v9 = MEMORY[0x277D1FF20];
      goto LABEL_22;
    case 6u:
      v13 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      v14 = *MEMORY[0x277D1FF78];
      sub_22C90581C();
      sub_22C36985C();
      (*(v15 + 104))(a2, v14);
      sub_22C9093BC();
      sub_22C36985C();
      (*(v16 + 8))(v7 + v13);
      sub_22C90941C();
      sub_22C36985C();
      return (*(v17 + 8))(v7);
    case 0xDu:
      v9 = MEMORY[0x277D1FFA0];
      goto LABEL_22;
    case 0xEu:
      v9 = MEMORY[0x277D1FF48];
      goto LABEL_22;
    case 0xFu:
      v9 = MEMORY[0x277D1FF68];
      goto LABEL_22;
    case 0x10u:
      v9 = MEMORY[0x277D1FF38];
      goto LABEL_22;
    case 0x11u:
      v9 = MEMORY[0x277D1FF18];
      goto LABEL_22;
    case 0x12u:
      v9 = MEMORY[0x277D1FF80];
      goto LABEL_22;
    case 0x13u:
      v9 = MEMORY[0x277D1FF60];
      goto LABEL_22;
    case 0x14u:
      v9 = MEMORY[0x277D1FF40];
      goto LABEL_22;
    case 0x15u:
      v9 = MEMORY[0x277D1FF88];
      goto LABEL_22;
    case 0x16u:
      v9 = MEMORY[0x277D1FF90];
      goto LABEL_22;
    case 0x17u:
      v9 = MEMORY[0x277D1FF70];
LABEL_22:
      v18 = *v9;
      sub_22C90581C();
      sub_22C36985C();
      result = (*(v19 + 104))(a2, v18);
      break;
    default:
      *a2 = 0;
      v8 = MEMORY[0x277D1FFA8];
LABEL_12:
      v10 = *v8;
      sub_22C90581C();
      sub_22C36985C();
      (*(v11 + 104))(a2, v10);
      result = sub_22C5F889C(v7);
      break;
  }

  return result;
}

uint64_t sub_22C7AD440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9C01B8, &unk_22C9262A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_22C3A5908(&qword_27D9C01C0, &qword_22C9262B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_22C90591C();
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  sub_22C36C640(v13, 0, 1, v14);
  sub_22C90582C();
  sub_22C90621C();
  v15 = sub_22C90622C();
  sub_22C36C640(v10, 0, 1, v15);
  sub_22C9058DC();
  v16 = sub_22C90587C();
  (*(*(v16 - 8) + 16))(v7, a3, v16);
  sub_22C36C640(v7, 0, 1, v16);
  return sub_22C90585C();
}

uint64_t sub_22C7AD654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-v6];
  v8 = sub_22C90625C();
  v13 = a2;
  sub_22C9062CC();
  sub_22C36C640(v7, 0, 1, v8);
  sub_22C9058EC();
  sub_22C9073EC();
  v9 = v15;
  v10 = sub_22C59EAEC(&v14);
  if ((v9 & 1) == 0)
  {
    v10 = sub_22C90590C();
  }

  MEMORY[0x28223BE20](v10);
  *&v12[-16] = a3;
  sub_22C9062CC();
  sub_22C36C640(v7, 0, 1, v8);
  return sub_22C9058FC();
}

uint64_t sub_22C7AD804(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C59F604(a2, &v6 - v4);
  return sub_22C90623C();
}

uint64_t sub_22C7AD8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v10 = sub_22C3A5908(a3, a4);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C36EC5C();
  v13 = a5(v12);
  sub_22C36985C();
  (*(v14 + 16))(v6, a2, v13);
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v13);
  return a6(v6);
}

uint64_t sub_22C7AD9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpreterError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7ADA98(uint64_t a1)
{
  v4 = sub_22C90592C();
  sub_22C369914(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22C3B00E8;

  return sub_22C7AC418(a1, v7, v8, v1 + v6);
}

unint64_t sub_22C7ADB8C()
{
  result = qword_27D9C01B0;
  if (!qword_27D9C01B0)
  {
    sub_22C9061EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C01B0);
  }

  return result;
}

uint64_t sub_22C7ADC6C()
{
  v1 = v0;
  v2 = sub_22C90363C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D1EC38], v2);
  v8 = sub_22C90362C();
  (*(v4 + 8))(v7, v2);
  if (v8)
  {
    sub_22C374168((v1 + 16), *(v1 + 40));
    sub_22C586B68();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_22C7ADD94()
{
  v0 = sub_22C9063DC();
  sub_22C369824();
  v161 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v157 = &v155 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v159 = &v155 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v160 = &v155 - v11;
  v168 = sub_22C90977C();
  sub_22C369824();
  v170 = v12;
  MEMORY[0x28223BE20](v13);
  v167 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v164 = v17 - v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v21 = &v155 - v20;
  v178 = sub_22C9036EC();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v165 = (v25 - v26);
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v29 = &v155 - v28;
  v169 = sub_22C9037EC();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v174 = (v33 - v34);
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  v172 = &v155 - v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  v39 = &v155 - v38;
  v40 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v41 = sub_22C369914(v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v155 - v42;
  sub_22C903D5C();
  v44 = sub_22C903F4C();
  if (sub_22C370B74(v43, 1, v44) == 1)
  {
    sub_22C376B84(v43, &qword_27D9BD290, &qword_22C917EC0);
    sub_22C90400C();
    v45 = sub_22C9063CC();
    v46 = sub_22C90AACC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22C366000, v45, v46, "App pre launch: No queryDecorationToolRetrievalResponse present. Selection not possible.", v47, 2u);
      sub_22C3699EC();
    }

    (*(v161 + 8))(v5, v0);
    return 0;
  }

  v155 = v0;
  v48 = sub_22C903F1C();
  sub_22C36BBA8();
  (*(v49 + 8))(v43, v44);
  v50 = 0;
  v173 = *(v48 + 16);
  v176 = (v23 + 8);
  v177 = v31 + 16;
  v171 = (v31 + 32);
  v175 = (v31 + 8);
  v163 = MEMORY[0x277D84F90];
  v51 = v169;
  while (v173 != v50)
  {
    if (v50 >= *(v48 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v52 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v53 = *(v31 + 72);
    (*(v31 + 16))(v39, v48 + v52 + v53 * v50, v51);
    v54 = v51;
    sub_22C90371C();
    sub_22C9036BC();
    (*v176)(v29, v178);
    v55 = sub_22C908EAC();
    v56 = sub_22C370B74(v21, 1, v55);
    sub_22C376B84(v21, &qword_27D9BC1E8, &qword_22C9123B0);
    if (v56 == 1)
    {
      (*v175)(v39, v54);
      ++v50;
      v51 = v54;
    }

    else
    {
      v166 = *v171;
      (v166)(v172, v39, v54);
      v57 = v163;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v57;
      v179[0] = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v54;
      }

      else
      {
        sub_22C3B60C0(0, *(v57 + 16) + 1, 1);
        v51 = v169;
        v59 = v179[0];
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v163 = v61 + 1;
        sub_22C3B60C0(v60 > 1, v61 + 1, 1);
        v62 = v163;
        v51 = v169;
        v59 = v179[0];
      }

      ++v50;
      *(v59 + 16) = v62;
      v163 = v59;
      (v166)(v59 + v52 + v61 * v53, v172, v51);
    }
  }

  v63 = *(v163 + 16);
  if (!v63)
  {

    return 0;
  }

  v64 = v163;
  v173 = sub_22C909F0C();
  v65 = 0;
  v66 = 0;
  v156 = 0;
  v162 = 0;
  v67 = v64 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v68 = *(v31 + 16);
  v171 = *(v31 + 72);
  v172 = v68;
  v166 = (v170 + 8);
  v69 = 0.0;
  v70 = 0.0;
  v71 = v164;
  v72 = v165;
  do
  {
    v73 = v66;
    v74 = v65;
    v75 = v174;
    (v172)(v174, v67, v51);
    sub_22C90371C();
    sub_22C9036BC();
    (*v176)(v72, v178);
    v76 = sub_22C908EAC();
    if (sub_22C370B74(v71, 1, v76) == 1)
    {
      (*v175)(v75, v51);
      sub_22C376B84(v71, &qword_27D9BC1E8, &qword_22C9123B0);
      v65 = v74;
      v66 = v73;
      goto LABEL_56;
    }

    v170 = v73;
    v77 = v167;
    sub_22C908DDC();
    sub_22C36BBA8();
    (*(v78 + 8))(v71, v76);
    v79 = sub_22C9096FC();
    v81 = v80;
    v82 = v77;
    v83 = v174;
    (*v166)(v82, v168);
    sub_22C90373C();
    v85 = v84;
    v86 = v173;
    if (*(v173 + 16) && (v87 = sub_22C36E2BC(v79, v81), v86 = v173, (v88 & 1) != 0))
    {
      if (*(*(v173 + 56) + 4 * v87) >= v85)
      {
        goto LABEL_23;
      }
    }

    else if (v85 <= 0.0)
    {
LABEL_23:

      v51 = v169;
      (*v175)(v83, v169);
      v65 = v74;
      v66 = v170;
      goto LABEL_56;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v179[0] = v86;
    v89 = v79;
    v90 = v79;
    v91 = v81;
    v92 = sub_22C36E2BC(v90, v81);
    if (__OFADD__(*(v86 + 16), (v93 & 1) == 0))
    {
      goto LABEL_95;
    }

    v94 = v92;
    v95 = v93;
    sub_22C3A5908(&qword_27D9C0218, &qword_22C9263E8);
    if (sub_22C90B15C())
    {
      v66 = v91;
      v96 = sub_22C36E2BC(v89, v91);
      v72 = v165;
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_97;
      }

      v94 = v96;
    }

    else
    {
      v66 = v91;
      v72 = v165;
    }

    v98 = v74;
    v99 = v179[0];
    v51 = v169;
    v100 = v170;
    if (v95)
    {
      *(*(v179[0] + 56) + 4 * v94) = v85;
    }

    else
    {
      *(v179[0] + 8 * (v94 >> 6) + 64) |= 1 << v94;
      v101 = (v99[6] + 16 * v94);
      *v101 = v89;
      v101[1] = v66;
      *(v99[7] + 4 * v94) = v85;
      v102 = v99[2];
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (v103)
      {
        goto LABEL_96;
      }

      v99[2] = v104;
      v105 = v99;

      v99 = v105;
    }

    v71 = v164;
    v173 = v99;
    if (v70 >= v85)
    {
      if (v69 >= v85)
      {
        goto LABEL_50;
      }

      if (v100)
      {
        if (v89 == v98 && v100 == v66)
        {
LABEL_50:
          v115 = sub_22C373A14();
          v116(v115);
        }

        else
        {
          v111 = sub_22C36DAF0();
          v112 = sub_22C373A14();
          v113(v112);
          if ((v111 & 1) == 0)
          {
            v114 = v66;
            sub_22C37F564();
            v69 = v85;
            v65 = v98;
            v66 = v100;
            v156 = v89;
            v162 = v114;
            v51 = v169;
            goto LABEL_56;
          }
        }

        v65 = v98;
        v66 = v100;
        goto LABEL_56;
      }

      v121 = sub_22C373A14();
      v122(v121);
      sub_22C37F564();
      v162 = v66;
      v69 = v85;
      v65 = v98;
      v156 = v89;
      v66 = 0;
    }

    else
    {
      if (v100)
      {
        if (v89 == v98 && v100 == v66)
        {
          v119 = sub_22C373A14();
          v120(v119);
        }

        else
        {
          v107 = sub_22C36DAF0();
          v108 = sub_22C373A14();
          v109(v108);
          if ((v107 & 1) == 0)
          {
            sub_22C37F564();
            v69 = v70;
            v70 = v85;
            v65 = v89;
            v156 = v98;
            v162 = v100;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v117 = sub_22C373A14();
        v118(v117);
      }

      v70 = v85;
      v65 = v89;
    }

LABEL_56:
    v67 += v171;
    --v63;
  }

  while (v63);
  v178 = v66;
  v123 = v160;
  sub_22C90400C();
  v124 = v163;

  v125 = sub_22C9063CC();
  v126 = sub_22C90AACC();
  if (sub_22C36D08C(v126))
  {
    v128 = swift_slowAlloc();
    v179[0] = swift_slowAlloc();
    *v128 = 136316162;
    if (v178)
    {
      v129 = v65;
    }

    else
    {
      v129 = 7104878;
    }

    v130 = v162;
    if (v178)
    {
      v131 = v178;
    }

    else
    {
      v131 = 0xE300000000000000;
    }

    v132 = sub_22C36F9F4(v129, v131, v179);

    *(v128 + 4) = v132;
    *(v128 + 12) = 2048;
    *(v128 + 14) = v70;
    *(v128 + 22) = 2080;
    if (v130)
    {
      v133 = v156;
    }

    else
    {
      v133 = 7104878;
    }

    if (v130)
    {
      v134 = v130;
    }

    else
    {
      v134 = 0xE300000000000000;
    }

    v135 = sub_22C36F9F4(v133, v134, v179);

    *(v128 + 24) = v135;
    *(v128 + 32) = 2048;
    *(v128 + 34) = v69;
    *(v128 + 42) = 2048;
    v136 = *(v124 + 16);

    *(v128 + 44) = v136;

    _os_log_impl(&dword_22C366000, v125, v71, "App pre launch: Best tool: %s %f. Second best tool: %s %f. Original tool count: %ld.", v128, 0x34u);
    swift_arrayDestroy();
    sub_22C36BAE0();
    sub_22C3699EC();

    sub_22C7B1E84();
    v137 = v160;
  }

  else
  {

    sub_22C7B1E84();
    v137 = v123;
  }

  v138 = v155;
  (v124)(v137, v155);
  v139 = v159;
  v140 = sub_22C374168((v158 + 16), *(v158 + 40));
  if ((v69 + sub_22C586FCC(0xD000000000000024, 0x800000022C935430, 1, *v140, 0.17)) <= v70 || v162 == 0)
  {
    sub_22C90400C();
    v142 = sub_22C9063CC();
    v143 = sub_22C90AACC();
    if (sub_22C36D08C(v143))
    {
      v144 = sub_22C36FB44();
      v145 = swift_slowAlloc();
      v179[0] = v145;
      *v144 = 136315138;
      if (v178)
      {
        v146 = v65;
      }

      else
      {
        v146 = 7104878;
      }

      if (v178)
      {
        v147 = v178;
      }

      else
      {
        v147 = 0xE300000000000000;
      }

      v148 = sub_22C36F9F4(v146, v147, v179);

      *(v144 + 4) = v148;
      _os_log_impl(&dword_22C366000, v142, v71, "App pre launch: PREDICTED: %s", v144, 0xCu);
      sub_22C36FF94(v145);
      sub_22C3699EC();
      sub_22C3699EC();

      (v124)(v159, v155);

      sub_22C37F564();
    }

    else
    {

      (v124)(v139, v138);

      sub_22C37F564();
    }
  }

  else
  {
    v149 = v157;
    sub_22C90400C();
    v150 = sub_22C9063CC();
    v151 = sub_22C90AACC();
    if (os_log_type_enabled(v150, v151))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_22C366000, v150, v151, "App pre launch: NO PREDICTION", v153, 2u);
      sub_22C3699EC();
    }

    (v124)(v149, v138);

    sub_22C37F564();

    return 0;
  }

  return v65;
}

uint64_t sub_22C7AED14()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C9063DC();
  v1[10] = v4;
  sub_22C3699B8(v4);
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7AEDD0()
{
  sub_22C369980();
  type metadata accessor for QueryDecorationSignposter(0);
  swift_allocObject();
  sub_22C90B0FC();
  if (qword_27D9BA7A0 != -1)
  {
    swift_once();
  }

  sub_22C385028(qword_27D9C0618, (v0 + 16));

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22C7AEED4;

  return sub_22C7AF240();
}

uint64_t sub_22C7AEED4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22C7AEFC0(uint64_t a1)
{
  v3 = v1[16];
  if (v3)
  {
    sub_22C90400C();

    v4 = sub_22C9063CC();
    v5 = sub_22C90AACC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[15];
      v7 = v1[13];
      v8 = v1[10];
      v9 = v1[11];
      v10 = sub_22C36FB44();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;

      v12 = sub_22C36F9F4(v6, v3, &v29);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_22C366000, v4, v5, "App pre Launch: Found pre selected app %s", v10, 0xCu);
      sub_22C36FF94(v11);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v9 + 8))(v7, v8);
    }

    else
    {
      v20 = v1[13];
      v21 = v1[10];
      v22 = v1[11];

      (*(v22 + 8))(v20, v21);
    }

    v23 = v1[15];
    v24 = v1[16];
    sub_22C374168((v1[9] + 56), *(v1[9] + 80));
    sub_22C7B1118(v23, v24);
  }

  else
  {
    sub_22C90400C();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AACC();
    v15 = sub_22C36D08C(v14);
    v17 = v1[11];
    v16 = v1[12];
    v18 = v1[10];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22C366000, v13, v2, "App pre launch: No pre selected app found", v19, 2u);
      sub_22C36BAE0();
    }

    (*(v17 + 8))(v16, v18);
  }

  sub_22C374168(v1 + 2, v1[5]);
  v25 = sub_22C36ECB4();
  v26(v25);
  sub_22C36FF94(v1 + 2);

  sub_22C369A24();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C7AF240()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_22C9063DC();
  v1[17] = v4;
  sub_22C3699B8(v4);
  v1[18] = v5;
  v1[19] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9C0208, &qword_22C9297A0);
  v1[20] = v6;
  sub_22C369914(v6);
  v1[21] = sub_22C3699D4();
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7AF318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 120))
  {
    v9 = sub_22C5FA1AC(*(v8 + 128) + 16, v8 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    if (*(v8 + 80))
    {
      sub_22C36C730((v8 + 56), v8 + 16);
    }

    else
    {
      if (qword_281431278 != -1)
      {
        v9 = sub_22C38A0F4(&qword_281431278);
      }

      v37 = sub_22C36FAB8(v9);
      *(v8 + 40) = type metadata accessor for QueryDecorationCache(0);
      *(v8 + 48) = &off_283FC17B8;
      *(v8 + 16) = v37;
      if (*(v8 + 80))
      {
        sub_22C376B84(v8 + 56, &qword_27D9C01C8, &qword_22C9298B0);
      }
    }

    v11 = *(v8 + 160);
    v10 = *(v8 + 168);
    v13 = *(v8 + 112);
    v12 = *(v8 + 120);
    v14 = v11[10];
    v15 = sub_22C902DBC();
    sub_22C374D84(v10 + v14, v16, v17, v15);
    v18 = v11[13];
    v19 = sub_22C903D4C();
    sub_22C374D84(v10 + v18, v20, v21, v19);
    v22 = sub_22C3A5908(&qword_27D9C0210, &qword_22C9263E0);
    sub_22C374D84(v10, v23, v24, v22);
    v25 = (v10 + v11[7]);
    *v25 = v13;
    v25[1] = v12;
    v26 = (v10 + v11[8]);
    *v26 = 0xD000000000000015;
    v26[1] = 0x800000022C92EF70;
    v27 = (v10 + v11[9]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v10 + v11[11]);
    *v28 = 0;
    v28[1] = 0;
    *(v10 + v11[12]) = 0;
    v29 = *(v8 + 40);
    v30 = *(v8 + 48);
    sub_22C374168((v8 + 16), v29);
    v31 = *(v30 + 8);

    v39 = (v31 + *v31);
    v32 = swift_task_alloc();
    *(v8 + 176) = v32;
    v33 = sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    *v32 = v8;
    v32[1] = sub_22C7AF730;
    v34 = *(v8 + 168);

    return v39(v8 + 96, v34, v33, v29, v30);
  }

  else
  {
    v36 = *(v8 + 112);

    v38 = *(v8 + 8);

    return v38(v36, 0);
  }
}

uint64_t sub_22C7AF730()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 184) = v0;

  if (v0)
  {
    v7 = sub_22C7AF8E8;
  }

  else
  {
    v7 = sub_22C7AF830;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C7AF830()
{
  sub_22C376B84(v0[21], &qword_27D9C0208, &qword_22C9297A0);
  v1 = v0[13];
  if (v1 == 1)
  {
    v2 = 0;
    v1 = 0;
  }

  else
  {
    v2 = v0[12];
  }

  sub_22C36FF94(v0 + 2);

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22C7AF8E8()
{
  sub_22C376B84(v0[21], &qword_27D9C0208, &qword_22C9297A0);
  sub_22C36FF94(v0 + 2);
  v2 = v0[23];
  sub_22C90400C();
  v3 = v2;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    sub_22C36FB44();
    v6 = sub_22C382768();
    *v1 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v8);
    sub_22C3750D0(&dword_22C366000, v9, v5, "App pre launch failed: %@");
    sub_22C376B84(v6, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v10 = v0[1];

  return v10(0, 0);
}

uint64_t sub_22C7AFA68()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_22C9063DC();
  v1[16] = v5;
  sub_22C3699B8(v5);
  v1[17] = v6;
  v1[18] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C01F0, &qword_22C9263C0);
  v1[19] = v7;
  sub_22C369914(v7);
  v1[20] = sub_22C3699D4();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7AFB40()
{
  v1 = sub_22C5FA1AC(*(v0 + 120) + 16, v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
  if (*(v0 + 80))
  {
    sub_22C36C730((v0 + 56), v0 + 16);
  }

  else
  {
    if (qword_281431278 != -1)
    {
      v1 = sub_22C38A0F4(&qword_281431278);
    }

    v29 = sub_22C36FAB8(v1);
    *(v0 + 40) = type metadata accessor for QueryDecorationCache(0);
    *(v0 + 48) = &off_283FC17B8;
    *(v0 + 16) = v29;
    if (*(v0 + 80))
    {
      sub_22C376B84(v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    }
  }

  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = v3[10];
  v7 = sub_22C902DBC();
  sub_22C374D84(v2 + v6, v8, v9, v7);
  v10 = v3[13];
  v11 = sub_22C903D4C();
  sub_22C374D84(v2 + v10, v12, v13, v11);
  v14 = sub_22C3A5908(&qword_27D9C01F8, &qword_22C9263C8);
  sub_22C374D84(v2, v15, v16, v14);
  v17 = (v2 + v3[7]);
  *v17 = v5;
  v17[1] = v4;
  v18 = (v2 + v3[8]);
  *v18 = 0x676E6967676F6CLL;
  v18[1] = 0xE700000000000000;
  v19 = (v2 + v3[9]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v2 + v3[11]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + v3[12]) = 0;
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_22C374168((v0 + 16), v21);
  v23 = *(v22 + 8);

  v30 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  v25 = sub_22C3A5908(&qword_27D9C0200, &unk_22C9263D0);
  *v24 = v0;
  v24[1] = sub_22C7AFF1C;
  v26 = *(v0 + 160);
  v27 = *(v0 + 96);

  return v30(v27, v26, v25, v21, v22);
}

uint64_t sub_22C7AFF1C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_22C7B00A0;
  }

  else
  {
    v7 = sub_22C7B001C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C7B001C()
{
  sub_22C369980();
  sub_22C376B84(*(v0 + 160), &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94((v0 + 16));

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C7B00A0()
{
  sub_22C376B84(v0[20], &qword_27D9C01F0, &qword_22C9263C0);
  sub_22C36FF94(v0 + 2);
  v2 = v0[22];
  sub_22C90400C();
  v3 = v2;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    sub_22C36FB44();
    v6 = sub_22C382768();
    *v1 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v8);
    sub_22C3750D0(&dword_22C366000, v9, v5, "Failed to retrieve SELFLogger: %@");
    sub_22C376B84(v6, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  v10 = sub_22C382904();
  v12 = v11(v10);
  sub_22C37A3B8(v12, v13, v14, v15, v16, v17, v18, v19);

  sub_22C369A24();

  return v20();
}

void sub_22C7B0204(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_22C908EAC();
  sub_22C369824();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9087BC();
  sub_22C369824();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v17 = sub_22C369914(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_22C90A73C();
  v20 = sub_22C90A75C();
  sub_22C36C640(v19, 0, 1, v20);
  (*(v11 + 16))(v15, a1, v9);
  v21 = v3;
  (*(v5 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v3);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = (v13 + *(v5 + 80) + v22) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v11 + 32))(v24 + v22, v15, v9);
  (*(v5 + 32))(v24 + v23, v26, v21);
  *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_22C82B8E4();
}

uint64_t sub_22C7B0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[36] = a4;
  v7 = sub_22C90622C();
  v6[39] = v7;
  v6[40] = *(v7 - 8);
  v6[41] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v9 = sub_22C90977C();
  v6[45] = v9;
  v6[46] = *(v9 - 8);
  v6[47] = swift_task_alloc();
  v10 = sub_22C90880C();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B0668, 0, 0);
}

uint64_t sub_22C7B0668(uint64_t a1)
{
  v2 = v1[47];
  v4 = v1[45];
  v3 = v1[46];
  sub_22C90878C();
  sub_22C3A8E40();
  v24 = v5;
  v7 = v6;
  v1[51] = v6;
  v8 = sub_22C36ECB4();
  v9(v8);
  sub_22C908DDC();
  v1[52] = sub_22C9096FC();
  v1[53] = v10;
  (*(v3 + 8))(v2, v4);
  if (!v7)
  {

    sub_22C37FA8C(v14, v15, v16, v17, v18, v19, v20, v21);

    sub_22C369A24();
    sub_22C372034();

    __asm { BRAA            X1, X16 }
  }

  v1[54] = v24;

  v11 = swift_task_alloc();
  v1[55] = v11;
  *v11 = v1;
  v11[1] = sub_22C7B0800;
  sub_22C372034();

  return sub_22C7AFA68();
}

uint64_t sub_22C7B0800()
{
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 448) = v4;
  *v4 = v3;
  v4[1] = sub_22C7B0970;

  return sub_22C7AF240();
}

uint64_t sub_22C7B0970()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v7 + 456) = v5;
  *(v7 + 464) = v6;

  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C7B0A74()
{
  v56 = v0;
  v1 = v0[58];
  if (v1)
  {
    if (v0[57] == v0[52] && v1 == v0[53])
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_22C90B4FC();
    }
  }

  else
  {
    v3 = 0;
  }

  v54 = v3;

  sub_22C90400C();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AACC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[57];
    v6 = v0[58];
    v8 = v0[53];
    v50 = v0[52];
    v51 = v0[43];
    v52 = v0[42];
    v53 = v0[44];
    v9 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v9 = 136315906;
    v0[34] = v7;
    v0[35] = v6;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    v10 = sub_22C90A1AC();
    v12 = sub_22C36F9F4(v10, v11, &v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_22C36F9F4(v50, v8, &v55);

    *(v9 + 14) = v13;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v1 != 0;
    *(v9 + 28) = 1024;
    *(v9 + 30) = v54 & 1;
    _os_log_impl(&dword_22C366000, v4, v5, "App pre launch: Logging Tool call. Predicted app: %s, selected app: %s, predictedAppExists: %{BOOL}d, outcome: %{BOOL}d", v9, 0x22u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v51 + 8))(v53, v52);
  }

  else
  {
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[42];

    (*(v15 + 8))(v14, v16);
  }

  type metadata accessor for QueryDecorationCoreAnalyticsEvent();
  swift_allocObject();
  v17 = sub_22C824368(0xD000000000000029, 0x800000022C9353C0, 0, 0);
  if (v1)
  {

    sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000022C935410;
    *(inited + 48) = sub_22C90A6BC();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000022C9353F0;
    sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
    *(inited + 72) = sub_22C90ABDC();
    sub_22C36E278(0, &qword_28142F970, 0x277D82BB8);
    v19 = sub_22C909F0C();
    sub_22C8243B8(v19, v20);

    sub_22C5FA1AC((v0 + 19), (v0 + 29), &qword_27D9C01E8, &unk_22C9263B0);
    v21 = v0[32];
    if (v21)
    {
      v22 = v0[41];
      v23 = v0[33];
      sub_22C3857E0(v0 + 29);
      sub_22C90621C();
      (*(v23 + 112))(v54 & 1, 1, v22, v21, v23);
      v24 = sub_22C36ECB4();
      v25(v24);
      v26 = v0 + 29;
LABEL_17:
      sub_22C36FF94(v26);
      goto LABEL_21;
    }

    v35 = (v0 + 29);
  }

  else
  {
    sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_22C90F800;
    *(v27 + 32) = 0xD000000000000012;
    *(v27 + 40) = 0x800000022C9353F0;
    sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
    *(v27 + 48) = sub_22C90ABDC();
    sub_22C36E278(0, &qword_28142F970, 0x277D82BB8);
    v28 = sub_22C909F0C();
    sub_22C8243B8(v28, v29);

    sub_22C5FA1AC((v0 + 19), (v0 + 24), &qword_27D9C01E8, &unk_22C9263B0);
    v30 = v0[27];
    if (v30)
    {
      v31 = v0[41];
      v32 = v0[28];
      sub_22C3857E0(v0 + 24);
      sub_22C90621C();
      (*(v32 + 112))(2, 0, v31, v30, v32);
      v33 = sub_22C36ECB4();
      v34(v33);
      v26 = v0 + 24;
      goto LABEL_17;
    }

    v35 = (v0 + 24);
  }

  sub_22C376B84(v35, &qword_27D9C01E8, &unk_22C9263B0);
LABEL_21:
  v36 = v0[38];
  v37 = v36[15];
  v38 = v36[16];
  sub_22C3857E0(v36 + 12);
  (*(v39 + 16))(v17, v37, v38);

  v40 = sub_22C376B84((v0 + 19), &qword_27D9C01E8, &unk_22C9263B0);
  sub_22C37FA8C(v40, v41, v42, v43, v44, v45, v46, v47);

  sub_22C369A24();

  return v48();
}

uint64_t sub_22C7B1080()
{
  sub_22C376B84(v0 + 16, &qword_27D9C01C8, &qword_22C9298B0);
  sub_22C36FF94((v0 + 56));
  sub_22C36FF94((v0 + 96));
  return v0;
}

uint64_t sub_22C7B10C0()
{
  sub_22C7B1080();

  return swift_deallocClassInstance();
}

void sub_22C7B1118(uint64_t a1, unint64_t a2)
{
  v37 = a1;
  v38 = sub_22C9063DC();
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = sub_22C9096CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D72FC0];
  v17 = sub_22C9096AC();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(v13 + 104))(v15, *MEMORY[0x277D72FC8], v12);
  LOBYTE(v16) = sub_22C9096BC();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (a2)
    {
      sub_22C90400C();

      v18 = sub_22C9063CC();
      v19 = sub_22C90AACC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v39 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_22C36F9F4(v37, a2, &v39);
        _os_log_impl(&dword_22C366000, v18, v19, "App pre launch: Loading selected app %s", v20, 0xCu);
        sub_22C36FF94(v21);
        MEMORY[0x2318B9880](v21, -1, -1);
        MEMORY[0x2318B9880](v20, -1, -1);
      }

      (*(v3 + 8))(v11, v38);
      sub_22C36E278(0, &qword_27D9C01D0, 0x277D0AD60);
      sub_22C3A5908(&qword_27D9C01D8, &qword_22C926390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90FB40;
      v39 = 0xD000000000000012;
      v40 = 0x800000022C935330;
      sub_22C90AECC();
      v23 = MEMORY[0x277D839B0];
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      v39 = 0xD000000000000013;
      v40 = 0x800000022C935350;
      sub_22C90AECC();
      *(inited + 168) = v23;
      *(inited + 144) = 1;
      v39 = 0xD000000000000011;
      v40 = 0x800000022C935370;
      sub_22C90AECC();
      *(inited + 240) = v23;
      *(inited + 216) = 1;
      v24 = sub_22C909F0C();
      v25 = sub_22C7B1788(v24);
      v26 = swift_allocObject();
      *(v26 + 16) = v37;
      *(v26 + 24) = a2;
      v27 = objc_opt_self();

      v28 = [v27 serviceWithDefaultShellEndpoint];
      if (v28)
      {
        v29 = sub_22C90A0EC();
        v43 = sub_22C7B1C88;
        v44 = v26;
        v39 = MEMORY[0x277D85DD0];
        v40 = 1107296256;
        v41 = sub_22C7B1BD8;
        v42 = &unk_283FC0218;
        v30 = _Block_copy(&v39);

        [v28 openApplication:v29 withOptions:v25 completion:v30];

        _Block_release(v30);
      }

      else
      {
      }
    }

    else
    {
      sub_22C90400C();
      v34 = sub_22C9063CC();
      v35 = sub_22C90AADC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_22C366000, v34, v35, "App pre launch failed. No bundle ID", v36, 2u);
        MEMORY[0x2318B9880](v36, -1, -1);
      }

      (*(v3 + 8))(v9, v38);
    }
  }

  else
  {
    sub_22C90400C();
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22C366000, v31, v32, "App pre launch will not run. Device is locked.", v33, 2u);
      MEMORY[0x2318B9880](v33, -1, -1);
    }

    (*(v3 + 8))(v6, v38);
  }
}

id sub_22C7B1788(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_22C909EAC();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_22C7B1814(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (a2)
  {
    v15 = a2;
    sub_22C90400C();
    v16 = a2;

    v17 = sub_22C9063CC();
    v18 = sub_22C90AADC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v8;
      v39 = v21;
      v22 = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_22C36F9F4(a3, a4, &v39);
      *(v19 + 12) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v24;
      *v20 = v24;
      _os_log_impl(&dword_22C366000, v17, v18, "App pre launch: Error opening app %s: %@", v19, 0x16u);
      sub_22C376B84(v20, &qword_27D9BB158, qword_22C910FD0);
      MEMORY[0x2318B9880](v20, -1, -1);
      sub_22C36FF94(v22);
      MEMORY[0x2318B9880](v22, -1, -1);
      MEMORY[0x2318B9880](v19, -1, -1);

      v25 = *(v9 + 8);
      v26 = v14;
LABEL_13:
      v35 = v38;
      return v25(v26, v35);
    }

    v25 = *(v9 + 8);
    v26 = v14;
  }

  else
  {
    sub_22C90400C();
    v27 = a1;

    v28 = sub_22C9063CC();
    v29 = sub_22C90AACC();

    if (os_log_type_enabled(v28, v29))
    {
      v38 = v8;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_22C36F9F4(a3, a4, &v39);
      *(v30 + 12) = 2080;
      if (a1 && (v32 = sub_22C7B1CA8(v27), v33))
      {
        v34 = v33;
      }

      else
      {

        v34 = 0xE400000000000000;
        v32 = 1701736302;
      }

      v36 = sub_22C36F9F4(v32, v34, &v39);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_22C366000, v28, v29, "App pre launch: Opened %s successfully. Process handle: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v31, -1, -1);
      MEMORY[0x2318B9880](v30, -1, -1);

      v25 = *(v9 + 8);
      v26 = v12;
      goto LABEL_13;
    }

    v25 = *(v9 + 8);
    v26 = v12;
  }

  v35 = v8;
  return v25(v26, v35);
}

void sub_22C7B1BD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22C7B1C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C7B1CA8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C7B1D0C(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C9087BC();
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_22C908EAC();
  sub_22C3699B8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_22C382AF4;

  return sub_22C7B0490(a1, v14, v15, v1 + v7, v1 + v12, v16);
}

uint64_t sub_22C7B1EC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C422A58;

  return MEMORY[0x282176200](a1);
}

uint64_t sub_22C7B1F5C()
{
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v0 = sub_22C90355C();
  sub_22C369824();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C9263F0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  (v8)(v7, *MEMORY[0x277D1EAB8], v0);
  (v8)(v7 + v4, *MEMORY[0x277D1EB38], v0);
  (v8)(v7 + 2 * v4, *MEMORY[0x277D1EB28], v0);
  v9 = sub_22C36C410(3 * v4);
  v8(v9);
  (v8)(v7 + 4 * v4, *MEMORY[0x277D1EB00], v0);
  v10 = sub_22C36C410(5 * v4);
  v8(v10);
  (v8)(v7 + 6 * v4, *MEMORY[0x277D1EA80], v0);
  v11 = sub_22C36C410(7 * v4);
  v8(v11);
  (v8)(v7 + 8 * v4, *MEMORY[0x277D1EA50], v0);
  v12 = sub_22C36C410(9 * v4);
  v8(v12);
  (v8)(v7 + 10 * v4, *MEMORY[0x277D1EA98], v0);
  (v8)(v7 + 11 * v4, *MEMORY[0x277D1EAB0], v0);
  (v8)(v7 + 12 * v4, *MEMORY[0x277D1EA88], v0);
  (v8)(v7 + 13 * v4, *MEMORY[0x277D1EB40], v0);
  (v8)(v7 + 14 * v4, *MEMORY[0x277D1EAD8], v0);
  v13 = sub_22C36C410(15 * v4);
  result = (v8)(v13);
  qword_281437510 = v6;
  return result;
}

uint64_t ContextRetrievalService.__allocating_init(contextClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v2 + 112);
  return v2;
}

uint64_t ContextRetrievalService.init(contextClient:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v1 + 112);
  return v1;
}

uint64_t sub_22C7B22E0(unsigned int *a1)
{
  v3 = sub_22C90363C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369BE8();
  (*(v5 + 104))(v1, *a1, v3);
  LOBYTE(a1) = sub_22C90362C();
  (*(v5 + 8))(v1, v3);
  return a1 & 1;
}

uint64_t static ContextRetrievalService.filterMediaContextGivenFeatureFlag(retrievedContextResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C90363C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369BE8();
  (*(v7 + 104))(v2, *MEMORY[0x277D1EC88], v5);
  v9 = sub_22C90362C();
  (*(v7 + 8))(v2, v5);
  if (v9)
  {
    sub_22C903E7C();
    sub_22C36BBA8();
    return (*(v10 + 16))(a2, a1);
  }

  else
  {
    v12 = sub_22C903E4C();
    static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(v12);

    sub_22C903E5C();
    return sub_22C903E3C();
  }
}

uint64_t static ContextRetrievalService.filterMediaRetrievedContext(retrievedContext:)(uint64_t a1)
{
  v40 = sub_22C90355C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v47 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  v46 = &v35 - v7;
  sub_22C36BA0C();
  v8 = sub_22C90399C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v36 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v48 = a1;
  v49 = v15;
  v44 = v16 + 16;
  v43 = *MEMORY[0x277D1EAD8];
  v41 = v3 + 8;
  v42 = (v3 + 104);
  v35 = (v16 + 32);
  v45 = v16;
  v38 = (v16 + 8);
  v37 = MEMORY[0x277D84F90];
  v17 = (v3 + 8);
  while (v49 != v14)
  {
    v39 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v18 = *(v45 + 72);
    (*(v45 + 16))(v13, v48 + v39 + v18 * v14, v8);
    v19 = v46;
    sub_22C90394C();
    v20 = v13;
    v21 = v47;
    v22 = v40;
    (*v42)(v47, v43, v40);
    sub_22C7B3B44(&qword_281435780, MEMORY[0x277D1EB70]);
    v23 = sub_22C90A0BC();
    v24 = v8;
    v25 = *v17;
    (*v17)(v21, v22);
    v25(v19, v22);
    if (v23)
    {
      (*v38)(v20, v24);
      ++v14;
      v8 = v24;
      v13 = v20;
    }

    else
    {
      v26 = v18;
      v27 = v39;
      v28 = *v35;
      (*v35)(v36, v20, v24);
      v29 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v29;
      v8 = v24;
      v13 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7C48(0, *(v29 + 16) + 1, 1);
        v29 = v50;
      }

      v31 = v27;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22C3B7C48(v32 > 1, v33 + 1, 1);
        v29 = v50;
      }

      ++v14;
      *(v29 + 16) = v33 + 1;
      v37 = v29;
      v28(v29 + v31 + v33 * v26, v36, v24);
    }
  }

  return v37;
}

uint64_t static ContextRetrievalService.shouldFilterMusicToolsGivenContext(retrievedContext:)(uint64_t a1)
{
  v90 = a1;
  v2 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v72 - v3;
  v4 = sub_22C3A5908(&qword_27D9C0220, &qword_22C926408);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v72 - v5;
  sub_22C36BA0C();
  v6 = sub_22C90355C();
  sub_22C369824();
  v84 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v72 - v12;
  sub_22C36BA0C();
  v91 = sub_22C90399C();
  sub_22C369824();
  v89 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v78 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = sub_22C9063DC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v79 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  sub_22C36BA0C();
  v27 = sub_22C90363C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369BE8();
  (*(v29 + 104))(v1, *MEMORY[0x277D1EC88], v27);
  v31 = sub_22C90362C();
  (*(v29 + 8))(v1, v27);
  if ((v31 & 1) == 0)
  {
    sub_22C90400C();
    v57 = sub_22C9063CC();
    v58 = sub_22C90AABC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v94 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_22C372DA4("shouldFilterMusicToolsGivenContext(retrievedContext:)");
      sub_22C7B41AC(&dword_22C366000, v61, v62, "%s Music tools should not be filtered given FF state");
      sub_22C36FF94(v60);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v21 + 8))(v26, v19);
    return 0;
  }

  v75 = v21;
  v76 = v19;
  v32 = 0;
  v33 = v89;
  v88 = *(v90 + 16);
  v87 = v89 + 16;
  v86 = *MEMORY[0x277D1EAD8];
  v85 = (v84 + 13);
  v34 = v84 + 1;
  v74 = (v89 + 32);
  v84 = (v89 + 8);
  v77 = MEMORY[0x277D84F90];
  v35 = v81;
  while (v88 != v32)
  {
    v36 = *(v33 + 72);
    v83 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    (*(v33 + 16))(v18, v90 + v83 + v36 * v32, v91);
    sub_22C90394C();
    (*v85)(v11, v86, v6);
    sub_22C7B3B44(&qword_281435778, MEMORY[0x277D1EB78]);
    sub_22C90A56C();
    sub_22C90A56C();
    if (v94 == v92 && v95 == v93)
    {

      v40 = *v34;
      (*v34)(v11, v6);
      v40(v35, v6);
LABEL_11:
      v41 = v82;
      sub_22C9038EC();
      v42 = sub_22C903BCC();
      if (sub_22C370B74(v41, 1, v42) == 1)
      {
        sub_22C376B84(v41, &qword_27D9BF248, &qword_22C926400);
        goto LABEL_27;
      }

      v43 = v11;
      v44 = v80;
      sub_22C903B4C();
      sub_22C36BBA8();
      (*(v45 + 8))(v41, v42);
      v46 = sub_22C903B3C();
      if (sub_22C370B74(v44, 1, v46) == 1)
      {
        sub_22C376B84(v44, &qword_27D9C0220, &qword_22C926408);
        v11 = v43;
LABEL_26:
        v35 = v81;
        goto LABEL_27;
      }

      v47 = sub_22C903B2C();
      v49 = v48;
      sub_22C36BBA8();
      (*(v50 + 8))(v44, v46);
      v51 = v47 == 0x6C7070612E6D6F63 && v49 == 0xEF636973754D2E65;
      v11 = v43;
      if (v51)
      {

        goto LABEL_26;
      }

      v52 = sub_22C90B4FC();

      v35 = v81;
      if (v52)
      {
        goto LABEL_27;
      }

      v73 = *v74;
      v73(v78, v18, v91);
      v53 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7C48(0, *(v53 + 16) + 1, 1);
        v53 = v96;
      }

      v56 = *(v53 + 16);
      v55 = *(v53 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22C3B7C48(v55 > 1, v56 + 1, 1);
        v53 = v96;
      }

      ++v32;
      *(v53 + 16) = v56 + 1;
      v77 = v53;
      v73(v53 + v83 + v56 * v36, v78, v91);
      v33 = v89;
    }

    else
    {
      v38 = sub_22C90B4FC();

      v39 = *v34;
      (*v34)(v11, v6);
      v39(v35, v6);
      if (v38)
      {
        goto LABEL_11;
      }

LABEL_27:
      (*v84)(v18, v91);
      ++v32;
      v33 = v89;
    }
  }

  v63 = *(v77 + 16);

  if (!v63)
  {
    return 0;
  }

  v64 = v79;
  sub_22C90400C();
  v65 = sub_22C9063CC();
  v66 = sub_22C90AABC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v94 = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_22C372DA4("shouldFilterMusicToolsGivenContext(retrievedContext:)");
    sub_22C7B41AC(&dword_22C366000, v69, v70, "%s any Music tools should be filtered out given the presence of now-playing context");
    sub_22C36FF94(v68);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v75 + 8))(v64, v76);
  return 1;
}

uint64_t sub_22C7B3158(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22C3787A4(a1, v1);
}

uint64_t sub_22C7B3170()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_22C384F20;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_22C7B32A0()
{
  sub_22C369980();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 168) = v3;
  *(v1 + 16) = v4;
  v5 = sub_22C90637C();
  *(v1 + 40) = v5;
  sub_22C3699B8(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = swift_task_alloc();
  v7 = sub_22C903E7C();
  *(v1 + 64) = v7;
  sub_22C3699B8(v7);
  *(v1 + 72) = v8;
  *(v1 + 80) = swift_task_alloc();
  v9 = sub_22C90634C();
  *(v1 + 88) = v9;
  sub_22C3699B8(v9);
  *(v1 + 96) = v10;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v11 = sub_22C90636C();
  *(v1 + 128) = v11;
  sub_22C3699B8(v11);
  *(v1 + 136) = v12;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B3488, v0, 0);
}

uint64_t sub_22C7B3488()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_22C90368C();
  sub_22C90368C();
  sub_22C90635C();
  sub_22C90631C();
  v37 = *(v3 + 8);
  v37(v1, v2);
  v4 = sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v7, "ContextAPI.retrieveContextValuesWithFailures", "", v6, 2u);
    sub_22C3699EC();
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 32);

  (*(v13 + 16))(v11, v10, v12);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C90639C();
  v36 = *(v13 + 8);
  v36(v10, v12);
  v37(v8, v9);
  v15 = v14[17];
  v16 = v14[18];
  sub_22C374168(v14 + 14, v15);
  if (qword_281432E48 != -1)
  {
    swift_once();
  }

  (*(v16 + 8))(qword_281437510, *(v0 + 24), *(v0 + 168) & 1, v15, v16);
  sub_22C90368C();
  v17 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v19 = *(v0 + 48);
    v20 = *(v0 + 56);
    v21 = *(v0 + 40);

    sub_22C9063BC();

    if ((*(v19 + 88))(v20, v21) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v17, v18, v24, "ContextAPI.retrieveContextValuesWithFailures", v22, v23, 2u);
    sub_22C3699EC();
  }

  v25 = *(v0 + 144);
  v26 = *(v0 + 128);
  v27 = *(v0 + 104);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = *(v0 + 72);
  v35 = *(v0 + 64);
  v31 = v17;
  v32 = *(v0 + 16);

  v36(v27, v28);
  v37(v25, v26);
  type metadata accessor for ContextRetrievalService();
  static ContextRetrievalService.filterMediaContextGivenFeatureFlag(retrievedContextResponse:)(v29, v32);

  (*(v30 + 8))(v29, v35);

  sub_22C369A24();

  return v33();
}

uint64_t sub_22C7B392C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22C3787A4(a1, v1);
}

uint64_t sub_22C7B3944()
{
  v1 = *(v0 + 24);
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v4 = sub_22C90355C();
  sub_22C369824();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C90F870;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x277D1EAB8], v4);
  v12(v11 + v8, *MEMORY[0x277D1EB18], v4);
  (*(v3 + 8))(v10, 0x3FD3333333333333, 0, v2, v3);

  sub_22C369A24();

  return v13();
}

uint64_t ContextRetrievalService.deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C7B3B44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C90355C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ContextRetrievalClient.refresh(contextTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  v7 = sub_22C374D1C(v6);
  *v7 = v8;
  v7[1] = sub_22C422A58;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ContextRetrievalService.refresh(contextTypes:)(uint64_t a1)
{
  v7 = (*(*v1 + 104) + **(*v1 + 104));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C46263C;

  return v7(a1);
}

uint64_t dispatch thunk of ContextRetrievalService.retrieveContext(timeout:)(uint64_t a1, uint64_t a2, char a3)
{
  v11 = (*(*v3 + 112) + **(*v3 + 112));
  v7 = swift_task_alloc();
  v8 = sub_22C374D1C(v7);
  *v8 = v9;
  v8[1] = sub_22C46263C;

  return v11(a1, a2, a3 & 1);
}

uint64_t dispatch thunk of ContextRetrievalService.retrieveContextForTools()(uint64_t a1)
{
  v7 = (*(*v1 + 120) + **(*v1 + 120));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C46263C;

  return v7(a1);
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7B4158()
{
  result = qword_27D9C0228;
  if (!qword_27D9C0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0228);
  }

  return result;
}

void sub_22C7B41AC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OnScreenContentRetrievalService.__allocating_init()()
{
  sub_22C373A24();
  v0 = swift_allocObject();
  v1 = sub_22C9043BC();
  swift_allocObject();
  v2 = sub_22C9043AC();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContextRetrieval;
  v0[2] = v2;
  return v0;
}

void *OnScreenContentRetrievalService.init()()
{
  v1 = sub_22C9043BC();
  swift_allocObject();
  v2 = sub_22C9043AC();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContextRetrieval;
  v0[2] = v2;
  return v0;
}

uint64_t OnScreenContentRetrievalService.__allocating_init(client:)(__int128 *a1)
{
  sub_22C373A24();
  v2 = swift_allocObject();
  sub_22C36C730(a1, v2 + 16);
  return v2;
}

uint64_t static OnScreenContentRetrievalService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D1EC98], v0);
  v4 = sub_22C90362C();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_22C7B43D4()
{
  v1[6] = v0;
  v2 = sub_22C90355C();
  v1[7] = v2;
  sub_22C3699B8(v2);
  v1[8] = v3;
  v1[9] = sub_22C36D0D4();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_22C90399C();
  v1[12] = v4;
  sub_22C3699B8(v4);
  v1[13] = v5;
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = sub_22C903E7C();
  v1[17] = v6;
  sub_22C3699B8(v6);
  v1[18] = v7;
  v1[19] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v1[20] = v8;
  sub_22C3699B8(v8);
  v1[21] = v9;
  v1[22] = sub_22C36D0D4();
  v1[23] = swift_task_alloc();
  v10 = sub_22C90634C();
  v1[24] = v10;
  sub_22C3699B8(v10);
  v1[25] = v11;
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[28] = v12;
  sub_22C3699B8(v12);
  v1[29] = v13;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B4658, 0, 0);
}

uint64_t sub_22C7B4658(uint64_t a1)
{
  sub_22C90367C();
  sub_22C90633C();
  v2 = sub_22C90635C();
  v3 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v5, "QueryDecorationOnScreenContentRetrieval", "", v4, 2u);
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v7 = v1[29];
  v6 = v1[30];
  v9 = v1[27];
  v8 = v1[28];
  v11 = v1[25];
  v10 = v1[26];
  v12 = v1[24];

  (*(v11 + 16))(v10, v9, v12);
  sub_22C9063AC();
  swift_allocObject();
  v64 = sub_22C90639C();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  sub_22C90400C();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22C366000, v13, v14, "[OnScreenContentRetrievalService] Retrieving on-screen documents and images...", v15, 2u);
    MEMORY[0x2318B9880](v15, -1, -1);
  }

  v16 = v1[23];
  v17 = v1[20];
  v18 = v1[21];
  v19 = v1[7];
  v20 = v1[8];
  v21 = v1[6];

  v74 = *(v18 + 8);
  v74(v16, v17);
  v22 = v21[5];
  v23 = v21[6];
  sub_22C374168(v21 + 2, v22);
  sub_22C3A5908(&qword_27D9BFAB0, &unk_22C923E20);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22C90F800;
  v26 = *MEMORY[0x277D1EB40];
  v27 = *(v20 + 104);
  v27(v25 + v24, *MEMORY[0x277D1EB40], v19);
  (*(v23 + 8))(v25, 0x3FE0000000000000, 0, v22, v23);

  v72 = v27;
  v69 = v26;
  v29 = v1[18];
  v28 = v1[19];
  v30 = v1[17];
  v31 = sub_22C903E4C();
  (*(v29 + 8))(v28, v30);
  sub_22C90400C();

  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(v31 + 16);

    _os_log_impl(&dword_22C366000, v32, v33, "[OnScreenContentRetrievalService] Got %ld on-screen content results", v34, 0xCu);
    MEMORY[0x2318B9880](v34, -1, -1);
  }

  else
  {
  }

  v35 = v26;

  v74(v1[22], v1[20]);
  v36 = *(v31 + 16);
  if (v36)
  {
    v37 = v1[13];
    v38 = *(v37 + 16);
    v37 += 16;
    v71 = v38;
    v39 = v31 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v66 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v67 = (v37 - 8);
    v65 = *MEMORY[0x277D1EB08];
    v70 = (v37 + 16);
    v40 = MEMORY[0x277D84F90];
    v68 = *(v37 + 56);
    while (1)
    {
      v73 = v36;
      v75 = v40;
      v41 = v1[10];
      v42 = v1[7];
      v71(v1[16], v39, v1[12]);
      sub_22C90394C();
      v72(v41, v35, v42);
      sub_22C7B51F4();
      sub_22C90A56C();
      sub_22C90A56C();
      v43 = v1[11];
      v44 = v1[7];
      if (v1[2] == v1[4] && v1[3] == v1[5])
      {
        break;
      }

      v46 = sub_22C90B4FC();
      v47 = sub_22C36A3A4();
      (v35)(v47);
      (v35)(v43, v44);

      if (v46)
      {
        goto LABEL_17;
      }

      (*v67)(v1[16], v1[12]);
      v48 = v68;
      v35 = v69;
      v40 = v75;
LABEL_22:
      v39 += v48;
      v36 = v73 - 1;
      if (v73 == 1)
      {

        v76 = v40;
        goto LABEL_25;
      }
    }

    v49 = sub_22C36A3A4();
    (v35)(v49);
    (v35)(v43, v44);

LABEL_17:
    v51 = v1[15];
    v50 = v1[16];
    v52 = v1[14];
    v53 = v1[12];
    v54 = v1[9];
    v55 = v1[7];
    v71(v52, v50, v53);
    v72(v54, v65, v55);
    sub_22C90395C();
    (*v67)(v50, v53);
    v56 = *v70;
    (*v70)(v51, v52, v53);
    v40 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C595C60();
      v40 = v60;
    }

    v35 = v69;
    v57 = *(v40 + 16);
    if (v57 >= *(v40 + 24) >> 1)
    {
      sub_22C595C60();
      v40 = v61;
    }

    v58 = v1[15];
    v59 = v1[12];
    *(v40 + 16) = v57 + 1;
    v48 = v68;
    v56(v40 + v66 + v57 * v68, v58, v59);
    goto LABEL_22;
  }

  v76 = MEMORY[0x277D84F90];
LABEL_25:
  sub_22C7B4EE8(v64);

  v62 = v1[1];

  return v62(v76);
}

uint64_t sub_22C7B4EE8(uint64_t a1)
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
  sub_22C90367C();
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
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "QueryDecorationOnScreenContentRetrieval", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_22C7B51F4()
{
  result = qword_281435778;
  if (!qword_281435778)
  {
    sub_22C90355C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281435778);
  }

  return result;
}

uint64_t dispatch thunk of OnScreenContentRetrievalService.retrieveOnScreenContent()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22C3CC1B8;

  return v4();
}

void sub_22C7B53C8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v21[1] = v1;
  v14 = *(v3 + 16);
  if (v14)
  {
    v17 = *(v6 + 16);
    v15 = v6 + 16;
    v16 = v17;
    v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v21[0] = v3;
    v19 = v3 + v18;
    v20 = *(v15 + 56);
    do
    {
      v16(v10, v19, v4);
      sub_22C6A521C();
      (*(v15 - 8))(v13, v4);
      v19 += v20;
      --v14;
    }

    while (v14);
  }

  sub_22C36CC48();
}

void sub_22C7B551C()
{
  sub_22C36BA7C();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v29 - v17;
  v19 = 0;
  v31 = v4;
  v32 = v2;
  v22 = *(v4 + 56);
  v21 = v4 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[1] = v8 + 32;
  v29[2] = v8 + 16;
  v29[0] = v8 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v8 + 16))(v18, *(v31 + 48) + *(v8 + 72) * (v28 | (v27 << 6)), v6);
      (*(v8 + 32))(v12, v18, v6);
      v30(v16, v12);
      (*(v8 + 8))(v16, v6);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      sub_22C36CC48();
      return;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22C7B5724()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C905A5C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v1[8] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[9] = v7;
  sub_22C3699B8(v7);
  v1[10] = v8;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  sub_22C369914(v9);
  v1[13] = sub_22C3699D4();
  v10 = sub_22C903E7C();
  v1[14] = v10;
  sub_22C3699B8(v10);
  v1[15] = v11;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7B58C8()
{
  sub_22C3743E4();
  if (sub_22C83AB78())
  {
    swift_task_alloc();
    sub_22C36CC90();
    v0[19] = v1;
    *v1 = v2;
    v1[1] = sub_22C7B5A7C;
    v3 = v0[13];
    v4 = v0[3];

    return sub_22C7B6258(v3, v4);
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    sub_22C374168((v10 + 16), *(v10 + 40));
    (*(v7 + 104))(v6, *MEMORY[0x277D20068], v8);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    swift_task_alloc();
    sub_22C36CC90();
    v0[22] = v12;
    *v12 = v13;
    v12[1] = sub_22C7B5E68;

    return QueryDecorationSELFLogging.logSubComponentExecution<A>(_:_:)();
  }
}

uint64_t sub_22C7B5A7C()
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

uint64_t sub_22C7B5B74()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_22C370B74(v2, 1, v1);
  v4 = v0[18];
  if (v3 == 1)
  {
    sub_22C3770B0(v2, &qword_27D9C0238, &qword_22C9266F0);
    sub_22C903E3C();
    sub_22C90400C();
    v5 = sub_22C9063CC();
    v6 = sub_22C90AADC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22C366000, v5, v6, "This is a remote request but no remote context for tool retrieval was found.", v11, 2u);
      sub_22C3699EC();
    }

    v12 = (*(v9 + 8))(v8, v10);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[15];
    (*(v14 + 32))(v13, v2, v1);
    (*(v14 + 16))(v4, v13, v1);
    sub_22C90400C();
    v15 = sub_22C9063CC();
    v16 = sub_22C90AACC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[15];
    v6 = v0[12];
    v21 = v0[9];
    v22 = v0[10];
    if (v17)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22C366000, v15, v16, "Using remote context for tool retrieval", v23, 2u);
      sub_22C3699EC();
    }

    (*(v22 + 8))(v6, v21);
    v12 = (*(v20 + 8))(v18, v19);
  }

  v24 = sub_22C7B8EAC(v12);
  sub_22C37FAAC(v24, v25, v26, v27, v28, v29, v30);

  sub_22C903E4C();
  sub_22C7B742C();

  sub_22C7B7C34();
  v32 = v31;

  v33 = type metadata accessor for RetrievedToolContext(0);
  v34 = sub_22C380048(v33);
  v35(v34);
  *v6 = v38;
  v6[1] = v32;

  sub_22C369C50();

  return v36();
}

uint64_t sub_22C7B5E68()
{
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7B5FE4()
{
  v2 = (*(v0[15] + 32))(v0[18], v0[16], v0[14]);
  v3 = sub_22C7B8EAC(v2);
  sub_22C37FAAC(v3, v4, v5, v6, v7, v8, v9);

  sub_22C903E4C();
  sub_22C7B742C();

  sub_22C7B7C34();
  v11 = v10;

  v12 = type metadata accessor for RetrievedToolContext(0);
  v13 = sub_22C380048(v12);
  v14(v13);
  *v1 = v17;
  v1[1] = v11;

  sub_22C369C50();

  return v15();
}

uint64_t sub_22C7B6118()
{
  sub_22C3743E4();
  sub_22C382918(v0, v1, v2, v3, v4, v5, v6, v7);

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C7B61B8()
{
  sub_22C3743E4();
  sub_22C382918(v0, v1, v2, v3, v4, v5, v6, v7);

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C7B6258(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_22C90355C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_22C90399C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C0238, &qword_22C9266F0);
  v2[32] = swift_task_alloc();
  v5 = sub_22C903E7C();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B6438, 0, 0);
}

uint64_t sub_22C7B6438(uint64_t a1)
{
  if (qword_281431278 != -1)
  {
    a1 = swift_once();
  }

  v2 = sub_22C36FAB8(a1);
  *(v1 + 80) = type metadata accessor for QueryDecorationCache(0);
  *(v1 + 88) = &off_283FC17B8;
  *(v1 + 56) = v2;
  sub_22C36C730((v1 + 56), v1 + 16);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 288) = v3;
  *v3 = v4;
  v3[1] = sub_22C7B6614;

  return sub_22C7B8144();
}

uint64_t sub_22C7B6614()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v3 + 296) = v0;

  sub_22C7B8E10(v3 + 16);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7B671C()
{
  v1 = v0[32];
  v2 = v0[33];
  if (sub_22C370B74(v1, 1, v2) != 1)
  {
    v7 = v0[29];
    v8 = v0[23];
    (*(v0[34] + 32))(v0[35], v1, v2);
    result = sub_22C903E4C();
    v10 = 0;
    v45 = *(result + 16);
    v42 = *MEMORY[0x277D1EAB8];
    v49 = (v8 + 104);
    v11 = (v8 + 8);
    v41 = *MEMORY[0x277D1EB18];
    v40 = (v7 + 8);
    v43 = v7;
    v38 = (v7 + 32);
    v39 = MEMORY[0x277D84F90];
    for (i = result; ; result = i)
    {
      while (1)
      {
        if (v45 == v10)
        {
          v33 = v0[34];
          v34 = v0[35];
          v35 = v0[33];
          v36 = v0[20];

          sub_22C903E3C();
          (*(v33 + 8))(v34, v35);
          v3 = v36;
          v4 = 0;
          v5 = 1;
          v6 = v35;
          goto LABEL_26;
        }

        if (v10 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v0[26];
        v13 = v0[22];
        v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v46 = *(v43 + 72);
        (*(v43 + 16))(v0[31], result + v47 + v46 * v10, v0[28]);
        sub_22C90394C();
        v14 = *v49;
        (*v49)(v12, v42, v13);
        sub_22C7B8E64(&qword_281435778, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
        sub_22C90A56C();
        sub_22C90A56C();
        v15 = v0[12] == v0[14] && v0[13] == v0[15];
        v48 = v10;
        v16 = v15 ? 1 : sub_22C90B4FC();
        v17 = v0[27];
        v18 = v0[22];
        v19 = *v11;
        (*v11)(v0[26], v18);
        v19(v17, v18);

        if ((v16 & 1) == 0)
        {
          break;
        }

LABEL_20:
        v27 = *v38;
        (*v38)(v0[30], v0[31], v0[28]);
        v28 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C3B7C48(0, *(v39 + 16) + 1, 1);
          v28 = v39;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22C3B7C48(v29 > 1, v30 + 1, 1);
          v28 = v39;
        }

        v10 = v48 + 1;
        v31 = v0[30];
        v32 = v0[28];
        *(v28 + 16) = v30 + 1;
        v39 = v28;
        v27(v28 + v47 + v30 * v46, v31, v32);
        result = i;
      }

      v20 = v0[24];
      v21 = v0[22];
      sub_22C90394C();
      v14(v20, v41, v21);
      sub_22C90A56C();
      sub_22C90A56C();
      v22 = v0[24];
      v23 = v0[25];
      v24 = v0[22];
      if (v0[16] == v0[18] && v0[17] == v0[19])
      {
        v19(v0[24], v0[22]);
        v19(v23, v24);

        goto LABEL_20;
      }

      v26 = sub_22C90B4FC();
      v19(v22, v24);
      v19(v23, v24);

      if (v26)
      {
        goto LABEL_20;
      }

      (*v40)(v0[31], v0[28]);
      v10 = v48 + 1;
    }
  }

  sub_22C3770B0(v1, &qword_27D9C0238, &qword_22C9266F0);
  sub_22C36A748();
  v6 = v2;
LABEL_26:
  sub_22C36C640(v3, v4, v5, v6);

  sub_22C369C50();

  return v37();
}

uint64_t sub_22C7B6C50()
{
  sub_22C3743E4();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C7B6D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22C382AF4;

  return sub_22C7B6DBC(a1, a3);
}

uint64_t sub_22C7B6DBC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22C9063DC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22C903E7C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B6EE8, 0, 0);
}

uint64_t sub_22C7B6EE8()
{
  v1 = v0[8];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA750 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  (*(v3 + 8))(qword_27D9C05C8, v2, v3);
  sub_22C374168((v4 + 16), *(v4 + 40));
  swift_task_alloc();
  sub_22C36CC90();
  v0[17] = v5;
  *v5 = v6;
  v5[1] = sub_22C7B7004;
  v7 = v0[16];

  return sub_22C7B392C(v7);
}

uint64_t sub_22C7B7004()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7B70FC(uint64_t a1)
{
  v29 = v1;
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[13];
  v5 = v1[14];
  sub_22C90400C();
  (*(v5 + 16))(v2, v3, v4);
  v6 = sub_22C9063CC();
  v7 = sub_22C90AABC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[14];
  v9 = v1[15];
  v11 = v1[12];
  v12 = v1[13];
  v13 = v1[10];
  v14 = v1[11];
  if (v8)
  {
    v25 = v1[13];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_22C36F9F4(0xD000000000000027, 0x800000022C9356B0, &v28);
    *(v15 + 12) = 2080;
    sub_22C903E4C();
    sub_22C80F388();
    v26 = v13;
    v27 = v11;
    v17 = v16;
    v19 = v18;

    (*(v10 + 8))(v9, v25);
    v20 = sub_22C36F9F4(v17, v19, &v28);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_22C366000, v6, v7, "QDInternal: Output of Tool Context Retrieval| %s\n    %s", v15, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v14 + 8))(v27, v26);
  }

  else
  {

    (*(v10 + 8))(v9, v12);
    (*(v14 + 8))(v11, v13);
  }

  (*(v1[14] + 32))(v1[7], v1[16], v1[13]);
  sub_22C374168(v1 + 2, v1[5]);
  v21 = sub_22C38AB6C();
  v22(v21);
  sub_22C36FF94(v1 + 2);

  sub_22C369C50();

  return v23();
}

uint64_t sub_22C7B737C()
{
  sub_22C374168((v0 + 16), *(v0 + 40));
  v1 = sub_22C38AB6C();
  v2(v1);
  sub_22C36FF94((v0 + 16));

  sub_22C369A24();

  return v3();
}

void sub_22C7B742C()
{
  sub_22C36BA7C();
  v1 = v0;
  v100 = sub_22C9063DC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v86 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  v98 = sub_22C903CCC();
  sub_22C369824();
  v105 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v97 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v85 - v15;
  v104 = sub_22C9093BC();
  sub_22C369824();
  v101 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v95 = v19 - v18;
  v20 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v21 = sub_22C369914(v20);
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v99 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v27 = sub_22C90355C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v103 = sub_22C90399C();
  sub_22C369824();
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v35 = v34 - v33;
  v112[1] = MEMORY[0x277D84FA0];
  v36 = *(v1 + 16);
  if (v36)
  {
    v38 = *(v32 + 16);
    v37 = v32 + 16;
    v39 = v1 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v109 = v29 + 88;
    v110 = v38;
    v108 = *MEMORY[0x277D1EB18];
    v106 = v29 + 8;
    v107 = v37 - 8;
    v93 = (v101 + 32);
    v92 = v101 + 16;
    v91 = *MEMORY[0x277D1F0D0];
    v90 = v105 + 104;
    v89 = v105 + 8;
    v88 = v101 + 8;
    v85 = v3;
    v87 = v3 + 8;
    v105 = *(v37 + 56);
    v40 = v99;
    v101 = v26;
    v102 = v27;
    v41 = v103;
    v94 = v9;
    v111 = v37;
    do
    {
      v110(v35, v39, v41);
      sub_22C90394C();
      v42 = sub_22C3892A0();
      v44 = v43(v42);
      if (v44 == v108)
      {
        v45 = sub_22C3892A0();
        v46(v45);
        sub_22C90391C();
        sub_22C5652C0(v26, v40, &qword_27D9BB908, &qword_22C910960);
        if (sub_22C370B74(v40, 1, v104) == 1)
        {
          sub_22C3770B0(v40, &qword_27D9BB908, &qword_22C910960);
          sub_22C90400C();
          v47 = sub_22C9063CC();
          v48 = v9;
          v49 = sub_22C90AADC();
          if (os_log_type_enabled(v47, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_22C366000, v47, v49, "getOnScreenAppEntities: typedValue is nil", v50, 2u);
            v26 = v101;
            sub_22C3699EC();
          }

          sub_22C36BA4C();
          v51(v48, v100);
          sub_22C3770B0(v26, &qword_27D9BB908, &qword_22C910960);
          v52 = sub_22C370A54();
          v41 = v103;
          v53(v52, v103);
          v9 = v48;
        }

        else
        {
          v58 = v95;
          v59 = v40;
          v60 = v104;
          (*v93)(v95, v59, v104);
          v61 = sub_22C3A5908(&qword_27D9C0258, &qword_22C926728);
          v62 = v97;
          v63 = (v97 + *(v61 + 48));
          sub_22C36BA4C();
          v64(v62, v58, v60);
          *v63 = sub_22C90390C();
          v63[1] = v65;
          sub_22C36BA4C();
          v66 = v98;
          v67(v62, v91, v98);
          v68 = v96;
          v26 = v101;
          sub_22C6A5D9C();
          sub_22C36BA4C();
          v69 = v68;
          v70 = v60;
          v40 = v99;
          v71 = v66;
          v9 = v94;
          v72(v69, v71);
          sub_22C36BA4C();
          v73(v58, v70);
          sub_22C3770B0(v26, &qword_27D9BB908, &qword_22C910960);
          v74 = sub_22C370A54();
          v41 = v103;
          v75(v74, v103);
        }
      }

      else
      {
        v54 = sub_22C370A54();
        v55(v54, v41);
        v56 = sub_22C3892A0();
        v57(v56);
      }

      v39 += v105;
      --v36;
    }

    while (v36);
    v3 = v85;
  }

  v76 = v86;
  sub_22C90400C();

  v77 = sub_22C9063CC();
  v78 = sub_22C90AABC();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v79 = 136315394;
    *(v79 + 4) = sub_22C36F9F4(0xD000000000000024, 0x800000022C935680, v112);
    *(v79 + 12) = 2080;
    sub_22C36C41C();
    sub_22C7B8E64(v80, v81, MEMORY[0x277D1F0E8]);
    v82 = sub_22C90A8CC();
    v84 = sub_22C36F9F4(v82, v83, v112);

    *(v79 + 14) = v84;
    _os_log_impl(&dword_22C366000, v77, v78, "QDInternal: AppEntities on screen from current context for Stage Three Tool Retrieval | %s\nOn-screen entities retrieved: %s", v79, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v3 + 8))(v76, v100);
  sub_22C36CC48();
}

void sub_22C7B7C34()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C9063DC();
  sub_22C369824();
  v42 = v3;
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  v14 = sub_22C903DEC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C5652C0(v1, v13, &qword_27D9C0250, &unk_22C929510);
  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    sub_22C3770B0(v13, &qword_27D9C0250, &unk_22C929510);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    if (sub_22C903DDC())
    {

      sub_22C7B551C();
      sub_22C90400C();

      v21 = sub_22C9063CC();
      v22 = sub_22C90AABC();

      v41 = v21;
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v44 = v40;
        *v23 = 136315650;
        *(v23 + 4) = sub_22C7B8EE4("compileAppEntitiesList(currentAppEntities:qdLookback:)");
        *(v23 + 12) = 2080;
        v38[1] = sub_22C903CCC();
        sub_22C36C41C();
        sub_22C7B8E64(v24, v25, MEMORY[0x277D1F0E8]);
        v39 = v22;
        v26 = sub_22C90A8CC();
        v28 = v27;

        v29 = sub_22C36F9F4(v26, v28, &v44);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2080;
        v30 = sub_22C90A8CC();
        v32 = sub_22C36F9F4(v30, v31, &v44);

        *(v23 + 24) = v32;
        v33 = v41;
        _os_log_impl(&dword_22C366000, v41, v39, "QDInternal: AppEntities for Stage Three Tool Retrieval | %s\nAppEntities from previous request (list of bundle IDs): %s\nAppEntities after union with previousAppEntities (list of bundle IDs): %s", v23, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v42 + 8))(v9, v43);
      (*(v16 + 8))(v20, v14);
      goto LABEL_12;
    }

    (*(v16 + 8))(v20, v14);
  }

  sub_22C90400C();
  v34 = sub_22C9063CC();
  v35 = sub_22C90AABC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_22C7B8EE4("compileAppEntitiesList(currentAppEntities:qdLookback:)");
    _os_log_impl(&dword_22C366000, v34, v35, "QDInternal: AppEntities for Stage Three Tool Retrieval | %s\nNo previous app entities found from QueryDecorationLookback, returning original list.", v36, 0xCu);
    sub_22C36FF94(v37);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v42 + 8))(v6, v43);

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C7B8144()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v1[7] = v6;
  sub_22C369914(v6);
  v1[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C7B81D8()
{
  v1 = sub_22C903BFC();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v10, v11, v12, v13);
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v14, v15, v16, v17);
    sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
    sub_22C36A748();
    sub_22C36C640(v18, v19, v20, v21);
    v22 = (v5 + v6[7]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v5 + v6[8]);
    *v23 = v9;
    v23[1] = v7;
    v24 = (v5 + v6[9]);
    *v24 = 0;
    v24[1] = 0;
    v25 = (v5 + v6[11]);
    *v25 = v3;
    v25[1] = v4;
    *(v5 + v6[12]) = 1;
    sub_22C374168(v8, v8[3]);
    sub_22C3769B0();
    v26 = swift_task_alloc();
    v0[9] = v26;
    sub_22C903E7C();
    *v26 = v0;
    v26[1] = sub_22C7B841C;
    sub_22C37A3DC();
    sub_22C36D5F8();

    __asm { BRAA            X5, X16 }
  }

  sub_22C903E7C();
  sub_22C36A748();
  sub_22C36C640(v29, v30, v31, v32);

  sub_22C369C50();
  sub_22C36D5F8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C7B841C()
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

uint64_t sub_22C7B8514()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0240, &qword_22C926718);

  sub_22C369C50();

  return v1();
}

uint64_t sub_22C7B8584()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0240, &qword_22C926718);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C7B85FC()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v1[7] = v5;
  sub_22C369914(v5);
  v1[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22C7B868C()
{
  v1 = sub_22C903BFC();
  v3 = v0[8];
  if (v2)
  {
    v4 = v1;
    v5 = v2;
    v6 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    sub_22C902DBC();
    sub_22C36A748();
    sub_22C36C640(v10, v11, v12, v13);
    sub_22C903D4C();
    sub_22C36A748();
    sub_22C36C640(v14, v15, v16, v17);
    sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
    sub_22C36A748();
    sub_22C36C640(v18, v19, v20, v21);
    v22 = (v3 + v7[7]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v3 + v7[8]);
    *v23 = v9;
    v23[1] = v8;
    v24 = (v3 + v7[9]);
    *v24 = 0;
    v24[1] = 0;
    v25 = (v3 + v7[11]);
    *v25 = v4;
    v25[1] = v5;
    *(v3 + v7[12]) = 1;
    sub_22C374168(v6, v6[3]);
    sub_22C3769B0();
    v26 = swift_task_alloc();
    v0[9] = v26;
    sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    *v26 = v0;
    v26[1] = sub_22C7B88CC;
    sub_22C37A3DC();
    sub_22C36D5F8();

    __asm { BRAA            X5, X16 }
  }

  sub_22C36D5F8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C7B88CC()
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

uint64_t sub_22C7B89C4()
{
  sub_22C369980();
  sub_22C3770B0(v0[8], &qword_27D9C0260, &unk_22C926740);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22C7B8A44()
{
  sub_22C369980();
  sub_22C3770B0(*(v0 + 64), &qword_27D9C0260, &unk_22C926740);

  sub_22C369A24();

  return v1();
}

void sub_22C7B8AE4(uint64_t a1)
{
  sub_22C7B8B80();
  if (v1 <= 0x3F)
  {
    sub_22C7B8BD0(319);
    if (v2 <= 0x3F)
    {
      sub_22C903E7C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C7B8B80()
{
  if (!qword_281434870)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281434870);
    }
  }
}

void sub_22C7B8BD0(uint64_t a1)
{
  if (!qword_28142F9D8)
  {
    sub_22C3AC1A0(&qword_27D9C0230, qword_22C9266A8);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142F9D8);
    }
  }
}

uint64_t sub_22C7B8C34(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!*a1)
  {
    if (!v5)
    {

      goto LABEL_9;
    }

LABEL_6:

    return 0;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  swift_bridgeObjectRetain_n();

  sub_22C7494C4(v4, v5);
  v7 = v6;
  swift_bridgeObjectRelease_n();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (!a1[1])
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_22C5DB014();
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v12 = *(type metadata accessor for RetrievedToolContext(0) + 24);

  return MEMORY[0x2821794F8](a1 + v12, a2 + v12);
}

uint64_t sub_22C7B8D68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_task_alloc();
  sub_22C36CC90();
  *(v2 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_22C382AF4;

  return sub_22C7B6D0C(a1, v5, v4);
}

uint64_t sub_22C7B8E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C7B8EAC(uint64_t a1)
{

  return sub_22C903E4C();
}

unint64_t sub_22C7B8EE4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000036, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

_BYTE *storeEnumTagSinglePayload for ProtocolResolver(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C7B8FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_22C36BB08();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C7B8FE4()
{
  sub_22C36FB38();
  v1 = *(v0[5] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[7] = 0;
  v0[8] = v2;
  v0[6] = v1;
  if (v1)
  {
    v3 = sub_22C9093BC();
    sub_22C369914(v3);
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v4;
    *v4 = v5;
    sub_22C37B3FC(v4);
    sub_22C7C29F0();

    return v6();
  }

  else
  {
    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_22C7B9148()
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
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7B9248()
{
  v2 = v1[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v1[8];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C591324();
    v4 = v21;
  }

  v5 = *(v4 + 16);
  sub_22C7C2A88();
  if (v7)
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v0;
  *(v6 + 8 * v5 + 32) = v2;
  v8 = v1[6];
  v9 = v1[7] + 1;
  v1[7] = v9;
  v1[8] = v6;
  if (v9 == v8)
  {
    sub_22C36D5E0();

    return v10(v11);
  }

  else
  {
    v13 = v1[5];
    v14 = v1[3];
    v15 = sub_22C9093BC();
    sub_22C3699B8(v15);
    v18 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v17 + 72) * v9;
    v23 = (v14 + *v14);
    swift_task_alloc();
    sub_22C36CC90();
    v1[9] = v19;
    *v19 = v20;
    sub_22C37B3FC(v19);

    return (v23)(v1 + 2, v18);
  }
}

uint64_t sub_22C7B943C()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C902D0C();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v0[7] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7B94E8()
{
  sub_22C36FB38();
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 32) + 16);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 72) = 0;
  *(v0 + 80) = v3;
  *(v0 + 64) = v2;
  if (v2)
  {
    *(v0 + 112) = *(v1 + 80);
    *(v0 + 88) = *(v1 + 72);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 96) = v4;
    *v4 = v5;
    sub_22C375B58(v4);
    sub_22C7C29F0();

    return v6();
  }

  else
  {

    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_22C7B9638()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7B9738()
{
  sub_22C36FB38();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 80);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C36C44C();
    sub_22C592484();
    v3 = v20;
  }

  v4 = *(v3 + 16);
  sub_22C7C2A88();
  if (v5)
  {
    sub_22C7C29B0();
    sub_22C592484();
    v3 = v21;
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 112);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 40);
  *(v3 + 16) = v0;
  (*(v9 + 32))(v3 + ((v7 + 32) & ~v7) + v6 * v4, v8, v10);
  v11 = *(v1 + 64);
  v12 = *(v1 + 72) + 1;
  *(v1 + 72) = v12;
  *(v1 + 80) = v3;
  if (v12 == v11)
  {

    sub_22C36D5E0();
    v13 = sub_22C792134();

    return v14(v13);
  }

  else
  {
    *(v1 + 112) = *(*(v1 + 48) + 80);
    sub_22C7C2A74();
    *(v1 + 88) = v16;
    sub_22C372480();
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 96) = v17;
    *v17 = v18;
    sub_22C375B58(v17);
    sub_22C38A114();

    return v19();
  }
}

uint64_t sub_22C7B98BC()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C7B9918()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_22C906D2C();
  v0[6] = v4;
  sub_22C3699B8(v4);
  v0[7] = v5;
  v0[8] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7B99C4()
{
  sub_22C36FB38();
  v1 = *(v0 + 40);
  v2 = *(v1 + 32);
  *(v0 + 120) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  *(v0 + 72) = MEMORY[0x277D84F90];

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 80) = v5;
    *(v0 + 88) = v7;
    v9 = *(*(v6 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 96) = v9;
    *(v0 + 16) = v9;

    sub_22C37FA44();
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 104) = v10;
    *v10 = v11;
    sub_22C3817F8(v10);
    sub_22C38A114();

    return v12();
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_22C36D5E0();
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_22C7B9B58()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7B9C58()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    sub_22C36C44C();
    sub_22C59593C();
    v2 = v20;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_22C7C29B0();
    sub_22C59593C();
    v2 = v21;
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  *(v2 + 16) = v3 + 1;
  (*(v5 + 32))(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, v4, v6);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  *(v0 + 72) = v2;
  v9 = (v8 - 1) & v8;
  if (v9)
  {
    v10 = *(v0 + 40);
LABEL_10:
    *(v0 + 80) = v9;
    *(v0 + 88) = v7;
    v12 = *(*(v10 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v9)))));
    *(v0 + 96) = v12;
    *(v0 + 16) = v12;

    sub_22C37FA44();
    v22 = v13;
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 104) = v14;
    *v14 = v15;
    v16 = sub_22C3817F8(v14);

    return v22(v16, v0 + 16);
  }

  else
  {
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v11 >= (((1 << *(v0 + 120)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 40);
      v9 = *(v10 + 8 * v11 + 56);
      ++v7;
      if (v9)
      {
        v7 = v11;
        goto LABEL_10;
      }
    }

    sub_22C36D5E0();
    v18 = sub_22C792134();

    return v19(v18);
  }
}

uint64_t sub_22C7B9E70()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C7B9EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *(type metadata accessor for RetrievedToolWithAttribution(0) - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7B9FA4, 0, 0);
}

uint64_t sub_22C7B9FA4()
{
  sub_22C36FB38();
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 16);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 64) = 0;
  *(v0 + 72) = v3;
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 104) = *(v1 + 80);
    *(v0 + 80) = *(v1 + 72);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 88) = v4;
    *v4 = v5;
    sub_22C37B7A4(v4);
    sub_22C7C29F0();

    return v6();
  }

  else
  {

    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_22C7BA0F0()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7BA1F0()
{
  sub_22C36FB38();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C36C44C();
    sub_22C595EE4();
    v3 = v18;
  }

  v4 = *(v3 + 16);
  sub_22C7C2A88();
  if (v5)
  {
    sub_22C7C29B0();
    sub_22C595EE4();
    v3 = v19;
  }

  v6 = *(v1 + 80);
  v7 = *(v1 + 104);
  v8 = *(v1 + 48);
  *(v3 + 16) = v0;
  sub_22C7C2730(v8, v3 + ((v7 + 32) & ~v7) + v6 * v4);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64) + 1;
  *(v1 + 64) = v10;
  *(v1 + 72) = v3;
  if (v10 == v9)
  {

    sub_22C36D5E0();
    v11 = sub_22C792134();

    return v12(v11);
  }

  else
  {
    *(v1 + 104) = *(*(v1 + 40) + 80);
    sub_22C7C2A74();
    *(v1 + 80) = v14;
    sub_22C372480();
    swift_task_alloc();
    sub_22C36CC90();
    *(v1 + 88) = v15;
    *v15 = v16;
    sub_22C37B7A4(v15);
    sub_22C38A114();

    return v17();
  }
}

uint64_t sub_22C7BA374()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

void *sub_22C7BA3D0(void *a1)
{
  v97 = sub_22C90384C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = v4 - v3;
  v99 = sub_22C9099FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3698F8(v8 - v7);
  v107 = sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v106 = sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v105 = v15 - v14;
  v16 = type metadata accessor for RetrievedToolWithAttribution(0);
  v17 = sub_22C3699B8(v16);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C9063DC();
  sub_22C369824();
  v108 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = a1[10];
  v28 = a1[11];
  sub_22C374168(a1 + 7, v27);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v28 + 8))(&v109, inited, v27, v28);
  sub_22C3B4ED8();
  if (v103)
  {
    goto LABEL_26;
  }

  a1 = v30;
  v102 = v20;
  v104 = v21;
  sub_22C90400C();

  v31 = sub_22C9063CC();
  v32 = sub_22C90AACC();

  if (!os_log_type_enabled(v31, v32))
  {

    (*(v108 + 8))(v26, v21);
    goto LABEL_26;
  }

  v92 = v32;
  v94 = v31;
  sub_22C37FE78();
  v33 = swift_slowAlloc();
  sub_22C36FE8C();
  v110 = swift_slowAlloc();
  *v33 = 136315394;
  *(v33 + 4) = sub_22C36F9F4(0xD000000000000058, 0x800000022C935830, &v110);
  v93 = v33;
  *(v33 + 12) = 2080;
  v38 = a1;
  v39 = a1[2];
  v40 = MEMORY[0x277D84F90];
  v41 = v104;
  v42 = v108;
  v95 = v38;
  if (!v39)
  {
    goto LABEL_25;
  }

  v91 = v26;
  sub_22C3B5E2C(0, v39, 0, v34, v35, v36, v37);
  sub_22C36BA94();
  v44 = v38 + v43;
  v100 = *(v45 + 72);
  v96 = *MEMORY[0x277D1ECD0];
  v101 = v5;
  v46 = v102;
  do
  {
    sub_22C373A34();
    sub_22C7C2788(v44, v46);
    sub_22C90371C();
    sub_22C36BA4C();
    v47(v12, v107);
    sub_22C369908();
    if (v58)
    {
LABEL_7:
      v48 = sub_22C38293C();
      v49(v48);
      sub_22C36BA4C();
      v50 = sub_22C372FA4();
      v51(v50);
      v52 = sub_22C908E7C();
      v54 = v53;
      sub_22C36BA4C();
      v56 = v105;
      v57 = v106;
      goto LABEL_12;
    }

    sub_22C369908();
    if (v58)
    {
      v59 = sub_22C38293C();
      v60(v59);
      sub_22C36BA4C();
      v61 = sub_22C372FA4();
      v62 = v99;
      v63(v61);
      v52 = sub_22C9099DC();
      v54 = v64;
      sub_22C36BA4C();
      v56 = v98;
      goto LABEL_11;
    }

    sub_22C369908();
    if (v69)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70 == v96;
    }

    if (v71)
    {
      goto LABEL_7;
    }

    sub_22C369908();
    if (v58)
    {
      v72 = sub_22C38293C();
      v73(v72);
      sub_22C36BA4C();
      v62 = v97;
      v74(v5, v12, v97);
      v52 = sub_22C9037FC();
      v54 = v75;
      sub_22C36BA4C();
LABEL_11:
      v57 = v62;
LABEL_12:
      v55(v56, v57);
      goto LABEL_13;
    }

    v76 = sub_22C38293C();
    v77(v76);
    v52 = 0xD000000000000013;
    v54 = 0x800000022C935760;
LABEL_13:
    v46 = v102;
    sub_22C36B740();
    sub_22C7C27E0(v102, v65);
    v67 = *(v40 + 16);
    v66 = *(v40 + 24);
    if (v67 >= v66 >> 1)
    {
      v78 = sub_22C369AB0(v66);
      sub_22C3B5E2C(v78, v67 + 1, 1, v79, v80, v81, v82);
      v46 = v102;
    }

    *(v40 + 16) = v67 + 1;
    v68 = v40 + 16 * v67;
    *(v68 + 32) = v52;
    *(v68 + 40) = v54;
    v5 = v101;
    v44 += v100;
    --v39;
    v41 = v104;
    v42 = v108;
  }

  while (v39);
  v26 = v91;
LABEL_25:
  MEMORY[0x2318B7AD0](v40, MEMORY[0x277D837D0]);

  v83 = sub_22C36BA00();
  v86 = sub_22C36F9F4(v83, v84, v85);

  *(v93 + 14) = v86;
  _os_log_impl(&dword_22C366000, v94, v92, "%s optimizedTools: %s", v93, 0x16u);
  swift_arrayDestroy();
  v87 = sub_22C36D66C();
  MEMORY[0x2318B9880](v87);
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  (*(v42 + 8))(v26, v41);
  a1 = v95;
LABEL_26:
  v88 = sub_22C3703C0();
  v89(v88);
  sub_22C36FF94(&v109);
  return a1;
}

uint64_t sub_22C7BACB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t x8_0@<X8>)
{
  result = sub_22C7BACF0(a2, a1, a4, a5, x8_0);
  if (v7)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t sub_22C7BACF0@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v262 = sub_22C90977C();
  sub_22C369824();
  v238 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v261 = v12 - v11;
  v13 = sub_22C9037DC();
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C3698F8(v16 - v15);
  v17 = sub_22C90377C();
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  sub_22C3698F8(v20 - v19);
  v240 = sub_22C9037EC();
  sub_22C369824();
  v235 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v234 = v26;
  v27 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v28 = sub_22C369914(v27);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  v31 = sub_22C3698F8(v30);
  type metadata accessor for RetrievedToolWithAttribution(v31);
  sub_22C36985C();
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  v263 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  sub_22C3698F8(v37);
  v259 = sub_22C908EAC();
  sub_22C369824();
  v264 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C3698F8(v44);
  sub_22C9063DC();
  sub_22C369824();
  v248 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C3698F8(v52);
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v56 = v55 - v54;
  v250 = sub_22C9099FC();
  sub_22C369824();
  v249 = v57;
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v61 = v60 - v59;
  v62 = a1[10];
  v63 = a1[11];
  sub_22C374168(a1 + 7, v62);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v63 + 8))(&v268, inited, v62, v63);
  sub_22C90371C();
  v65 = sub_22C377B94();
  if (v66(v65) == *MEMORY[0x277D1ECE8])
  {
    v226 = a3;
    v67 = sub_22C377B94();
    v68(v67);
    (*(v249 + 32))(v61, v56, v250);
    sub_22C908A3C();
    sub_22C374168(v267, v267[3]);
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    sub_22C369A48();
    v69 = sub_22C908D4C();
    sub_22C369824();
    v71 = v70;
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_22C90F800;
    v74 = (v73 + v72);
    *v74 = sub_22C9099DC();
    v74[1] = v75;
    (*(v71 + 104))(v74, *MEMORY[0x277D720F0], v69);
    sub_22C36BB08();
    v76 = sub_22C90667C();
    v77 = v61;
    if (v251)
    {
      sub_22C36DB14();
      sub_22C36EE3C();
      v78();

      sub_22C36FF94(v267);
    }

    else
    {
      v84 = v76;

      sub_22C36FF94(v267);
      sub_22C90400C();
      v85 = sub_22C9063CC();
      v86 = sub_22C90AACC();
      v258 = v61;
      if (os_log_type_enabled(v85, v86))
      {
        v225 = v86;
        sub_22C37FE78();
        v87 = swift_slowAlloc();
        sub_22C36FE8C();
        v267[0] = swift_slowAlloc();
        *v87 = 136315394;
        v88 = sub_22C36F9F4(0xD000000000000054, 0x800000022C935890, v267);
        sub_22C7C292C(v88);
        v89 = v84;
        v90 = *(v84 + 16);
        v91 = MEMORY[0x277D84F90];
        if (v90)
        {
          v223 = v87;
          v224 = v85;
          v266 = MEMORY[0x277D84F90];

          sub_22C3B5E2C(0, v90, 0, v92, v93, v94, v95);
          v91 = v266;
          v256 = *(v264 + 16);
          sub_22C36BA94();
          v97 = v89 + v96;
          v254 = *(v98 + 56);
          v99 = (v98 - 8);
          v100 = v259;
          do
          {
            v256(v253, v97, v100);
            v100 = v259;
            v101 = sub_22C908E7C();
            v103 = v102;
            (*v99)(v253, v259);
            v105 = *(v266 + 16);
            v104 = *(v266 + 24);
            if (v105 >= v104 >> 1)
            {
              v107 = sub_22C369AB0(v104);
              sub_22C3B5E2C(v107, v105 + 1, 1, v108, v109, v110, v111);
              v100 = v259;
            }

            *(v266 + 16) = v105 + 1;
            v106 = v266 + 16 * v105;
            *(v106 + 32) = v101;
            *(v106 + 40) = v103;
            v97 += v254;
            --v90;
          }

          while (v90);

          v77 = v258;
          v85 = v224;
          v87 = v223;
        }

        v112 = MEMORY[0x2318B7AD0](v91, MEMORY[0x277D837D0]);
        v114 = v113;

        v115 = sub_22C36F9F4(v112, v114, v267);

        *(v87 + 14) = v115;
        _os_log_impl(&dword_22C366000, v85, v225, "%s implementingTools: %s", v87, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v116 = *(v248 + 8);
      sub_22C38636C();
      v116();

      v117 = sub_22C36D264();
      v119 = sub_22C7BF4A4(v117, v118, a5);
      swift_bridgeObjectRelease_n();
      sub_22C90400C();

      v120 = sub_22C9063CC();
      v121 = sub_22C90AACC();
      v260 = v119;
      if (os_log_type_enabled(v120, v121))
      {
        sub_22C37FE78();
        v122 = swift_slowAlloc();
        sub_22C36FE8C();
        v267[0] = swift_slowAlloc();
        *v122 = 136315394;
        *(v122 + 4) = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
        *(v122 + 12) = 2080;
        v123 = sub_22C7BFC90(v119);
        v125 = v124;

        v126 = sub_22C36F9F4(v123, v125, v267);

        *(v122 + 14) = v126;
        v119 = v260;
        _os_log_impl(&dword_22C366000, v120, v121, "%s implementingTools post filtering: %s", v122, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      sub_22C3750EC();
      sub_22C38636C();
      v116();
      v127 = v226;
      v128 = v259;
      v129 = *(v119 + 16);
      if (v129 == 1)
      {
        sub_22C58AF70(v119, v242);
        if (sub_22C370B74(v242, 1, v259) != 1)
        {
          (*(v264 + 32))(v245, v242, v259);
          (*(v264 + 16))(v253, v245, v259);
          sub_22C90373C();
          v183 = v182;
          sub_22C90374C();
          sub_22C90378C();
          sub_22C90379C();
          sub_22C90372C(v183);
          sub_22C90400C();
          sub_22C373A34();
          v184 = v228;
          sub_22C7C2788(v226, v228);
          v185 = v244;
          v186 = v232;
          (*(v235 + 16))(v232, v234, v240);
          v187 = sub_22C9063CC();
          v188 = sub_22C90AABC();
          if (sub_22C7C2A58(v188))
          {
            sub_22C370220();
            v184 = swift_slowAlloc();
            v267[0] = swift_slowAlloc();
            *v184 = 136315650;
            v189 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
            sub_22C7C29E0(v189);
            sub_22C7FE524();
            sub_22C386DDC();
            sub_22C36B740();
            sub_22C7C27E0(v228, v190);
            sub_22C382E0C();
            sub_22C792018();
            *(v184 + 14) = v228;
            *(v184 + 22) = 2080;
            v186 = v232;
            v185 = v232;
            sub_22C7FE524();
            sub_22C386DDC();
            v191 = sub_22C7C2984();
            v192(v191);
            sub_22C382E0C();
            sub_22C792018();
            *(v184 + 24) = v232;
            sub_22C7C29C0();
            _os_log_impl(v193, v194, v195, v196, v197, 0x20u);
            swift_arrayDestroy();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v198 = sub_22C36D66C();
            MEMORY[0x2318B9880](v198);
          }

          else
          {

            v217 = sub_22C7C2984();
            v218(v217);
            sub_22C36B740();
            sub_22C7C27E0(v228, v219);
          }

          sub_22C3750EC();
          v199 = sub_22C36C434();
          v200(v199);
          v201 = sub_22C7C2A00();
          v202(v201);
          sub_22C36DB14();
          sub_22C36EE3C();
          v220();
          sub_22C36EE18();
          (*(v235 + 32))(v185, v234, v186);

          *(v185 + *(v184 + 20)) = v187;
          goto LABEL_5;
        }

        sub_22C36DD28(v242, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else if (!v129)
      {
        sub_22C90400C();
        sub_22C373A34();
        sub_22C7C2788(v226, v233);
        v130 = sub_22C9063CC();
        v131 = sub_22C90AABC();
        if (sub_22C7C2A58(v131))
        {
          sub_22C37FE78();
          v132 = swift_slowAlloc();
          sub_22C36FE8C();
          v267[0] = swift_slowAlloc();
          *v132 = 136315394;
          v133 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
          sub_22C7C29E0(v133);
          v134 = sub_22C7FE524();
          v136 = v135;
          sub_22C36B740();
          sub_22C7C27E0(v233, v137);
          v138 = v134;
          v127 = v226;
          sub_22C36F9F4(v138, v136, v267);
          sub_22C792018();
          *(v132 + 14) = v233;
          sub_22C7C29C0();
          _os_log_impl(v139, v140, v141, v142, v143, 0x16u);
          swift_arrayDestroy();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v144 = sub_22C36D66C();
          MEMORY[0x2318B9880](v144);
        }

        else
        {

          sub_22C36B740();
          sub_22C7C27E0(v233, v179);
        }

        sub_22C3750EC();
        sub_22C38636C();
        v116();
        sub_22C36DB14();
        sub_22C36EE3C();
        v180();
        sub_22C373A34();
        sub_22C7C2788(v127, v181);

        goto LABEL_5;
      }

      v243 = v116;
      static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(a4, a5, v267);
      v255 = sub_22C3AE694(v267[0]);
      v257 = *(v119 + 16);
      v145 = v264;
      v246 = (v264 + 32);

      v146 = 0;
      v247 = MEMORY[0x277D84F90];
LABEL_24:
      v147 = v263;
      while (v257 != v146)
      {
        if (v146 >= *(v119 + 16))
        {
          __break(1u);
          return result;
        }

        v148 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v149 = *(v145 + 72);
        (*(v145 + 16))(v237, v119 + v148 + v149 * v146, v128);
        v150 = v128;
        sub_22C47FCDC();
        sub_22C9096FC();
        (*(v238 + 8))(v261, v262);
        v151 = sub_22C372FA4();
        v153 = sub_22C5E935C(v151, v152, v255);

        if (v153)
        {
          v155 = *v246;
          (*v246)(v241, v237, v150);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v157 = v247;
          v267[0] = v247;
          if (isUniquelyReferenced_nonNull_native)
          {
            v128 = v150;
            v158 = v155;
          }

          else
          {
            v158 = v155;
            sub_22C3B7AE0(0, *(v247 + 16) + 1, 1);
            v128 = v259;
            v157 = v267[0];
          }

          v160 = *(v157 + 16);
          v159 = *(v157 + 24);
          if (v160 >= v159 >> 1)
          {
            v161 = sub_22C369AB0(v159);
            sub_22C3B7AE0(v161, v160 + 1, 1);
            v128 = v259;
            v157 = v267[0];
          }

          ++v146;
          *(v157 + 16) = v160 + 1;
          v247 = v157;
          result = v158(v157 + v148 + v160 * v149, v241, v128);
          v77 = v258;
          v119 = v260;
          v145 = v264;
          goto LABEL_24;
        }

        sub_22C36BA4C();
        result = v154(v237, v150);
        ++v146;
        v77 = v258;
        v128 = v150;
        v119 = v260;
        v147 = v263;
        v145 = v264;
      }

      if (*(v247 + 16) == 1)
      {
        sub_22C58AF70(v247, v230);

        v162 = v236;
        if (sub_22C370B74(v230, 1, v128) != 1)
        {
          sub_22C36BA4C();
          v203 = v229;
          v204 = sub_22C377B94();
          v205(v204);
          (*(v264 + 16))(v253, v229, v128);
          sub_22C90373C();
          v207 = v206;
          sub_22C90374C();
          sub_22C90378C();
          sub_22C90379C();
          sub_22C90372C(v207);
          sub_22C90400C();
          sub_22C373A34();
          sub_22C7C2788(v226, v147);
          v208 = v235;
          v209 = v240;
          (*(v235 + 16))(v227, v231, v240);
          v210 = sub_22C9063CC();
          v211 = sub_22C90AABC();
          if (os_log_type_enabled(v210, v211))
          {
            sub_22C370220();
            v203 = swift_slowAlloc();
            v267[0] = swift_slowAlloc();
            *v203 = 136315650;
            *(v203 + 4) = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
            *(v203 + 12) = 2080;
            v265 = v211;
            sub_22C7FE524();
            sub_22C386DDC();
            sub_22C36B740();
            sub_22C7C27E0(v147, v212);
            sub_22C382E0C();
            sub_22C792018();
            *(v203 + 14) = v147;
            *(v203 + 22) = 2080;
            v211 = v227;
            sub_22C7FE524();
            sub_22C386DDC();
            (*(v235 + 8))(v227, v240);
            sub_22C382E0C();
            sub_22C792018();
            *(v203 + 24) = v227;
            _os_log_impl(&dword_22C366000, v210, v265, "%s Only one app-directed tool for protocol: %s, return it: %s", v203, 0x20u);
            swift_arrayDestroy();
            v208 = v235;
            v209 = v240;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v213 = sub_22C36D66C();
            MEMORY[0x2318B9880](v213);
          }

          else
          {

            (*(v235 + 8))(v227, v240);
            sub_22C36B740();
            sub_22C7C27E0(v147, v221);
          }

          sub_22C3750EC();
          v214 = sub_22C36C434();
          v215(v214);
          sub_22C36BA4C();
          v216(v229, v259);
          sub_22C36DB14();
          sub_22C36EE3C();
          v222();
          sub_22C36EE18();
          (*(v208 + 32))(v211, v231, v209);

          *(v211 + *(v203 + 20)) = v210;
          goto LABEL_5;
        }

        sub_22C36DD28(v230, &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {

        v162 = v236;
      }

      sub_22C90400C();
      sub_22C373A34();
      sub_22C7C2788(v226, v162);
      v163 = sub_22C9063CC();
      v164 = sub_22C90AABC();
      if (sub_22C7C2A58(v164))
      {
        sub_22C37FE78();
        v165 = swift_slowAlloc();
        sub_22C36FE8C();
        v267[0] = swift_slowAlloc();
        *v165 = 136315394;
        v166 = sub_22C37A3F4("replaceProtocolWithSingularImplementationTool(qdContext:toolbox:tool:spans:context:)");
        sub_22C7C29E0(v166);
        sub_22C7FE524();
        sub_22C386DDC();
        sub_22C36B740();
        sub_22C7C27E0(v162, v167);
        sub_22C382E0C();
        sub_22C792018();
        *(v165 + 14) = v162;
        sub_22C7C29C0();
        _os_log_impl(v168, v169, v170, v171, v172, 0x16u);
        swift_arrayDestroy();
        v173 = sub_22C3816C4();
        MEMORY[0x2318B9880](v173);
        v174 = sub_22C36D66C();
        MEMORY[0x2318B9880](v174);

        sub_22C3750EC();
        v175 = sub_22C36C434();
        v176(v175);
        (*(v249 + 8))(v258, v250);
      }

      else
      {

        sub_22C36B740();
        sub_22C7C27E0(v162, v177);
        sub_22C3750EC();
        sub_22C38636C();
        v243();
        (*(v249 + 8))(v77, v250);
      }

      sub_22C373A34();
      sub_22C7C2788(v226, v178);
    }
  }

  else
  {
    v79 = sub_22C377B94();
    v80(v79);
    sub_22C373A34();
    sub_22C7C2788(a3, x8_0);
  }

LABEL_5:
  v81 = sub_22C3703C0();
  v82(v81);
  return sub_22C36FF94(&v268);
}

uint64_t sub_22C7BC5B0()
{
  sub_22C369980();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v0[7] = v7;
  v8 = sub_22C90384C();
  v0[14] = v8;
  sub_22C3699B8(v8);
  v0[15] = v9;
  v0[16] = sub_22C3699D4();
  v10 = sub_22C9099FC();
  v0[17] = v10;
  sub_22C3699B8(v10);
  v0[18] = v11;
  v0[19] = sub_22C3699D4();
  v12 = sub_22C9036EC();
  v0[20] = v12;
  sub_22C3699B8(v12);
  v0[21] = v13;
  v0[22] = sub_22C3699D4();
  v14 = sub_22C908EAC();
  v0[23] = v14;
  sub_22C3699B8(v14);
  v0[24] = v15;
  v0[25] = sub_22C3699D4();
  v16 = type metadata accessor for RetrievedToolWithAttribution(0);
  sub_22C3699B8(v16);
  v0[26] = v17;
  v0[27] = sub_22C3699D4();
  v18 = sub_22C9063DC();
  v0[28] = v18;
  sub_22C3699B8(v18);
  v0[29] = v19;
  v0[30] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C7BC7DC()
{
  v10 = *(v0 + 56);
  v1 = *(v10 + 80);
  v2 = *(v10 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  sub_22C374168((v10 + 56), v1);
  sub_22C369A48();
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  (*(v2 + 8))(inited, v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v4[1] = v10;
  v4[2] = v9;
  v4[3] = v8;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_22C7BC91C;
  v6 = *(v0 + 88);

  return sub_22C7B9EE4(&unk_22C926788, v4, v6);
}

uint64_t sub_22C7BC91C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v5 + 264) = v4;
  *(v5 + 272) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7BCA3C(uint64_t a1)
{
  v87 = v1;
  sub_22C90400C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();

  if (!os_log_type_enabled(v2, v3))
  {

    v59 = sub_22C36BBCC();
    v60(v59);
    goto LABEL_23;
  }

  v4 = v1[33];
  sub_22C37FE78();
  v5 = swift_slowAlloc();
  sub_22C36FE8C();
  v85 = swift_slowAlloc();
  *v5 = 136315394;
  *(v5 + 4) = sub_22C36F9F4(0xD000000000000070, 0x800000022C9356E0, &v85);
  *(v5 + 12) = 2080;
  v10 = *(v4 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_22;
  }

  v73 = v3;
  v74 = v5;
  v75 = v2;
  v12 = v1[33];
  v13 = v1[26];
  v14 = v1[21];
  v86 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v10, 0, v6, v7, v8, v9);
  v11 = v86;
  sub_22C36BA94();
  v16 = v12 + v15;
  v82 = (v14 + 88);
  v83 = *(v13 + 72);
  v81 = *MEMORY[0x277D1ECE0];
  v79 = *MEMORY[0x277D1ECE8];
  v78 = *MEMORY[0x277D1ECD8];
  v77 = *MEMORY[0x277D1ECD0];
  v76 = *MEMORY[0x277D1ECF8];
  v80 = (v14 + 96);
  do
  {
    v17 = v1[27];
    v18 = v1[22];
    v19 = v1[20];
    sub_22C373A34();
    sub_22C7C2788(v16, v17);
    sub_22C90371C();
    v20 = (*v82)(v18, v19);
    if (v20 == v81)
    {
LABEL_5:
      v21 = v1[27];
      v23 = v1[22];
      v22 = v1[23];
      (*v80)(v23, v1[20]);
      v24 = sub_22C38C41C();
      v25(v24, v23, v22);
      v26 = sub_22C908E7C();
      v28 = v27;
      v29 = sub_22C38C41C();
      v30(v29, v22);
      sub_22C36B740();
      v32 = v21;
      goto LABEL_9;
    }

    if (v20 == v79)
    {
      v33 = v1[27];
      v34 = v1[22];
      v35 = v1[17];
      (*v80)(v34, v1[20]);
      v36 = sub_22C38C41C();
      v37(v36, v34, v35);
      v26 = sub_22C9099DC();
      v28 = v38;
      v39 = sub_22C36BBCC();
      goto LABEL_8;
    }

    if (v20 == v78 || v20 == v77)
    {
      goto LABEL_5;
    }

    v33 = v1[27];
    v45 = v1[20];
    if (v20 == v76)
    {
      v46 = sub_22C38C41C();
      v47(v46, v45);
      v48 = sub_22C36BA00();
      v49(v48);
      v26 = sub_22C9037FC();
      v28 = v50;
      v39 = sub_22C36BAFC();
LABEL_8:
      v40(v39);
      sub_22C36B740();
      v32 = v33;
LABEL_9:
      sub_22C7C27E0(v32, v31);
      goto LABEL_10;
    }

    sub_22C36B740();
    sub_22C7C27E0(v33, v51);
    v52 = sub_22C38C41C();
    v53(v52, v45);
    v26 = 0xD000000000000013;
    v28 = 0x800000022C935760;
LABEL_10:
    v86 = v11;
    v42 = *(v11 + 16);
    v41 = *(v11 + 24);
    if (v42 >= v41 >> 1)
    {
      v54 = sub_22C369AB0(v41);
      sub_22C3B5E2C(v54, v42 + 1, 1, v55, v56, v57, v58);
      v11 = v86;
    }

    *(v11 + 16) = v42 + 1;
    v43 = v11 + 16 * v42;
    *(v43 + 32) = v26;
    *(v43 + 40) = v28;
    v16 += v83;
    --v10;
  }

  while (v10);
  v5 = v74;
  v2 = v75;
  v3 = v73;
LABEL_22:
  MEMORY[0x2318B7AD0](v11, MEMORY[0x277D837D0]);

  v61 = sub_22C50B478();
  v64 = sub_22C36F9F4(v61, v62, v63);

  *(v5 + 14) = v64;
  _os_log_impl(&dword_22C366000, v2, v3, "%s optimizedTools: %s", v5, 0x16u);
  swift_arrayDestroy();
  v65 = sub_22C36D66C();
  MEMORY[0x2318B9880](v65);
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  v66 = sub_22C372FA4();
  v67(v66);
LABEL_23:
  v84 = v1[33];
  v69 = v1[5];
  v68 = v1[6];
  sub_22C374168(v1 + 2, v69);
  sub_22C7C293C();
  v70(v69, v68);
  sub_22C36FF94(v1 + 2);

  sub_22C36D5E0();

  return v71(v84);
}

uint64_t sub_22C7BCFFC()
{
  sub_22C374168((v0 + 16), *(v0 + 40));
  sub_22C7C293C();
  v1 = sub_22C36CC9C();
  v2(v1);
  sub_22C36FF94((v0 + 16));

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7BD0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v9[1] = sub_22C382AF4;

  return sub_22C7BD1D4();
}

uint64_t sub_22C7BD1D4()
{
  sub_22C369980();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v0[24] = v5;
  v0[25] = v6;
  v0[22] = v7;
  v0[23] = v8;
  v9 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v9);
  v0[30] = sub_22C3699D4();
  v10 = sub_22C9037EC();
  v0[31] = v10;
  sub_22C3699B8(v10);
  v0[32] = v11;
  v0[33] = sub_22C36D0D4();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v12 = sub_22C90977C();
  v0[37] = v12;
  sub_22C3699B8(v12);
  v0[38] = v13;
  v0[39] = sub_22C3699D4();
  v14 = type metadata accessor for RetrievedToolWithAttribution(0);
  v0[40] = v14;
  sub_22C3699B8(v14);
  v0[41] = v15;
  v0[42] = sub_22C36D0D4();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v16 = sub_22C908EAC();
  v0[48] = v16;
  sub_22C3699B8(v16);
  v0[49] = v17;
  v0[50] = sub_22C36D0D4();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v18 = sub_22C9063DC();
  v0[53] = v18;
  sub_22C3699B8(v18);
  v0[54] = v19;
  v0[55] = sub_22C36D0D4();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v20 = sub_22C9036EC();
  v0[65] = v20;
  sub_22C3699B8(v20);
  v0[66] = v21;
  v0[67] = sub_22C3699D4();
  v22 = sub_22C9099FC();
  v0[68] = v22;
  sub_22C3699B8(v22);
  v0[69] = v23;
  v0[70] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v24, v25, v26);
}