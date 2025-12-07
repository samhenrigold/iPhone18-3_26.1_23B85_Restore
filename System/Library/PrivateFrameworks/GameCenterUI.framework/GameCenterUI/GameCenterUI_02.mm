void sub_24DF932C8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v5 = type metadata accessor for DashboardSidebarItemData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E347208();
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  sub_24E3471C8();
  v12 = swift_allocObject();
  v49 = v3;
  *(v12 + 16) = v3;
  *(v12 + 24) = v1;
  v47 = sub_24E347238();
  v56[3] = v47;
  v56[4] = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v56);
  v50 = v1;

  sub_24E347228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF048, qword_24E36A2D8);
  OUTLINED_FUNCTION_25_0();
  v51 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24E367D20;
  v15 = v14 + v6;
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  sub_24DF95B98(v56, v15 + 72, &qword_27F1DEE90, &unk_24E369E90);
  v48 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  memcpy(v57, (v52 + *(v48 + 28)), 0x70uLL);
  v22 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v53[0] = 0x7974697669746361;
  v53[1] = 0xE800000000000000;
  sub_24DF95B98(v57, v55, &qword_27F1DF038, &unk_24E36F2B0);
  sub_24E348918();
  *(v15 + 40) = v19;
  *(v15 + 48) = v21;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  memcpy((v15 + 128), v57, 0x70uLL);
  v26 = [objc_opt_self() local];
  v27 = [v26 internal];

  LODWORD(v26) = [v27 isArcadeSubscriber];
  if (v26)
  {
    sub_24E3471C8();
    v28 = swift_allocObject();
    *(v28 + 16) = v49;
    *(v28 + 24) = v50;
    *(v28 + 32) = 0;
    *(v28 + 40) = 4;
    v54[3] = v47;
    v54[4] = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(v54);

    sub_24E347228();
    v29 = sub_24E347CB8();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();

    v32 = sub_24E347CF8();
    v34 = v33;

    v35 = sub_24E347CB8();
    v36 = GKGameCenterUIFrameworkBundle();
    v37 = GKGetLocalizedStringFromTableInBundle();

    v38 = sub_24E347CF8();
    v40 = v39;

    sub_24DF95B98(v54, v9 + 72, &qword_27F1DEE90, &unk_24E369E90);
    memcpy(v55, (v52 + *(v48 + 72)), sizeof(v55));
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
    v53[14] = 0x656461637261;
    v53[15] = 0xE600000000000000;
    sub_24DF95B98(v55, v53, &qword_27F1DF038, &unk_24E36F2B0);
    sub_24E348918();
    *(v9 + 40) = v32;
    *(v9 + 48) = v34;
    *(v9 + 56) = v38;
    *(v9 + 64) = v40;
    *(v9 + 112) = 0;
    *(v9 + 120) = 4;
    memcpy((v9 + 128), v55, 0x70uLL);
    sub_24E077170();
    *(v44 + 16) = 2;
    OUTLINED_FUNCTION_7_6();
    sub_24DF95A20(v9, v45 + v51, v46);
    sub_24DF8BFF4(v54, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DF8BFF4(v56, &qword_27F1DEE90, &unk_24E369E90);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24DF93894()
{
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = sub_24E347478();
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0x6973736572706D69;
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  OUTLINED_FUNCTION_13_1();
  v7[15] = v9;
  v7[16] = v8;
  v11 = OUTLINED_FUNCTION_2_9(v7, v10);
  v13 = OUTLINED_FUNCTION_23_1(v11, v12);
  v13[25] = v14;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v15 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v15);
  sub_24E347488();
  sub_24E3474B8();
  OUTLINED_FUNCTION_22_1();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_24DF93A80(void *__src, void *a2, void *a3)
{
  memcpy(__dst, __src, 0x199uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF040, &qword_24E372C10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24E367D20;
  *(v5 + 32) = a2;
  *(v5 + 40) = 0;
  v6 = a2;
  if ([a3 supportsAchievements])
  {
    v7 = a3;
    sub_24E077094(1, 2, 1, v5);
    v5 = v8;
    *(v8 + 16) = 2;
    *(v8 + 48) = a3;
    *(v8 + 56) = 1;
  }

  if ([a3 supportsLeaderboards])
  {
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = a3;
    if (v9 >= v10 >> 1)
    {
      sub_24E077094(v10 > 1, v9 + 1, 1, v5);
      v5 = v22;
    }

    *(v5 + 16) = v9 + 1;
    v12 = v5 + 16 * v9;
    *(v12 + 32) = v11;
    *(v12 + 40) = 2;
  }

  memcpy(v26, __dst, 0x199uLL);
  if (sub_24DF8BF80(v26) != 1 && LOBYTE(v26[51]) == 1)
  {
    v13 = a3;
    sub_24DF95B98(__dst, &v25, &qword_27F1DF030, &qword_24E36A2D0);
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24E077094(v14 > 1, v15 + 1, 1, v5);
      v5 = v24;
    }

    sub_24DF8BFF4(__dst, &qword_27F1DF030, &qword_24E36A2D0);
    *(v5 + 16) = v15 + 1;
    v16 = v5 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = 3;
  }

  if ([a3 isArcadeGame])
  {
    v17 = *(v5 + 16);
    v18 = *(v5 + 24);
    v19 = a3;
    if (v17 >= v18 >> 1)
    {
      sub_24E077094(v18 > 1, v17 + 1, 1, v5);
      v5 = v23;
    }

    *(v5 + 16) = v17 + 1;
    v20 = v5 + 16 * v17;
    *(v20 + 32) = v19;
    *(v20 + 40) = 4;
  }

  return v5;
}

id sub_24DF93CC4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v171 = a4;
  *&v165 = a3;
  v163 = a1;
  v169 = a7;
  *&v162 = &v178[35];
  v10 = sub_24E347458();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24E3474B8();
  v166 = *(v12 - 8);
  v167 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v179, a2, sizeof(v179));
  sub_24E2A07FC();
  sub_24E3488D8();
  v170 = v15;
  sub_24DF8BE60(v178);
  v168 = a5;
  sub_24E2A07FC();
  v16 = sub_24E3488D8();
  v18 = v17;
  sub_24DF8BE60(v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24E369E30;
  strcpy((v19 + 32), "impressionType");
  *(v19 + 47) = -18;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 48) = 0x74656C63696863;
  *(v19 + 56) = 0xE700000000000000;
  *(v19 + 72) = v20;
  *(v19 + 80) = 0x6973736572706D69;
  v21 = MEMORY[0x277D83B88];
  v22 = v171;
  *(v19 + 88) = 0xEF7865646E496E6FLL;
  *(v19 + 96) = v22;
  *(v19 + 120) = v21;
  *(v19 + 128) = 0x657079546469;
  *(v19 + 136) = 0xE600000000000000;
  *(v19 + 144) = 0x636974617473;
  *(v19 + 152) = 0xE600000000000000;
  *(v19 + 168) = v20;
  *(v19 + 176) = 1701667182;
  *(v19 + 216) = v20;
  *(v19 + 184) = 0xE400000000000000;
  *(v19 + 192) = v16;
  *(v19 + 200) = v18;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v23 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v23);
  v171 = v14;
  sub_24E347488();
  v24 = a6;
  switch(a6)
  {
    case 1:
      v164 = a6;
      v82 = sub_24E347CB8();
      v83 = GKGameCenterUIFrameworkBundle();
      v84 = GKGetLocalizedStringFromTableInBundle();

      v170 = sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_24E36A270;
      memcpy(v178, v179, 0x199uLL);
      v86 = sub_24DF8BF80(v178) == 1;
      if ((v86 | LOBYTE(v178[6])))
      {
        v87 = 0;
      }

      else
      {
        v87 = v178[5];
      }

      v88 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v89 = objc_opt_self();
      v90 = [v89 localizedStringFromNumber:v88 numberStyle:1];
      v91 = sub_24E347CF8();
      v93 = v92;

      v94 = MEMORY[0x277D837D0];
      *(v85 + 56) = MEMORY[0x277D837D0];
      v95 = sub_24DF95A7C();
      *(v85 + 64) = v95;
      *(v85 + 32) = v91;
      *(v85 + 40) = v93;
      memcpy(v177, v179, 0x199uLL);
      v96 = sub_24DF8BF80(v177) == 1;
      if ((v96 | LOBYTE(v177[4])))
      {
        v97 = 0;
      }

      else
      {
        v97 = v177[3];
      }

      v98 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v99 = [v89 localizedStringFromNumber:v98 numberStyle:1];
      v100 = sub_24E347CF8();
      v102 = v101;

      *(v85 + 96) = v94;
      *(v85 + 104) = v95;
      *(v85 + 72) = v100;
      *(v85 + 80) = v102;
      v103 = sub_24E347D18();
      v105 = v104;

      v106 = sub_24E347CB8();
      v107 = GKGameCenterUIFrameworkBundle();
      v108 = GKGetLocalizedStringFromTableInBundle();

      v109 = sub_24E347CF8();
      v111 = v110;

      sub_24DF95B98(v165, v174, &qword_27F1DEE90, &unk_24E369E90);
      memcpy(v176, v179, 0x199uLL);
      v112 = sub_24DF8BF80(v176);
      v170 = v103;
      v163 = v105;
      *&v162 = v111;
      if (v112 == 1)
      {
        v113 = 0;
        v114 = 0;
        v165 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
      }

      else
      {
        sub_24DF95B98(&v176[3] + 8, v172, &qword_27F1DF038, &unk_24E36F2B0);
        v165 = *(&v176[3] + 8);
        v160 = *(&v176[5] + 8);
        v161 = *(&v176[4] + 8);
        v157 = *(&v176[8] + 8);
        v158 = *(&v176[7] + 8);
        v159 = *(&v176[6] + 8);
        v114 = *(&v176[9] + 1);
        v113 = *&v176[10];
      }

      v143 = v169;
      v116 = type metadata accessor for DashboardSidebarItemData(0);
      v144 = *(v116 + 40);
      v146 = v166;
      v145 = v167;
      v147 = v171;
      (*(v166 + 16))(v143 + v144, v171, v167);
      __swift_storeEnumTagSinglePayload(v143 + v144, 0, 1, v145);
      v148 = v168;
      sub_24E2A07FC();
      (*(v146 + 8))(v147, v145);
      v149 = v174[1];
      *(v143 + 72) = v174[0];
      v150 = v162;
      *(v143 + 40) = v109;
      *(v143 + 48) = v150;
      v38 = v148;
      v151 = v163;
      *(v143 + 56) = v170;
      *(v143 + 64) = v151;
      *(v143 + 120) = 1;
      *(v143 + 88) = v149;
      *(v143 + 104) = v175;
      *(v143 + 112) = v148;
      v152 = v161;
      *(v143 + 128) = v165;
      *(v143 + 144) = v152;
      v153 = v159;
      *(v143 + 160) = v160;
      *(v143 + 176) = v153;
      v154 = v157;
      *(v143 + 192) = v158;
      *(v143 + 208) = v154;
      *(v143 + 224) = v114;
      *(v143 + 232) = v113;
      v127 = v143;
      goto LABEL_26;
    case 2:
      v60 = sub_24E347CB8();
      v61 = GKGameCenterUIFrameworkBundle();
      v62 = GKGetLocalizedStringFromTableInBundle();

      v63 = sub_24E347CF8();
      v65 = v64;

      memcpy(v178, v179, 0x199uLL);
      v66 = 0;
      v67 = 0;
      if (sub_24DF8BF80(v178) != 1)
      {
        v66 = v178[49];
        v67 = v178[50];
      }

      sub_24DF95B98(v165, v172, &qword_27F1DEE90, &unk_24E369E90);
      memcpy(v177, v179, 0x199uLL);
      v68 = sub_24DF8BF80(v177);
      v163 = v65;
      v164 = a6;
      v170 = v63;
      *&v162 = v66;
      if (v68 == 1)
      {
        *&v165 = 0;
        v69 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
      }

      else
      {
        sub_24DF95B98(&v177[21], v176, &qword_27F1DF038, &unk_24E36F2B0);
        v160 = *&v177[23];
        v161 = *&v177[21];
        v158 = *&v177[27];
        v159 = *&v177[25];
        v156 = *&v177[31];
        v157 = *&v177[29];
        *&v165 = v177[33];
        v69 = v177[34];
      }

      v116 = type metadata accessor for DashboardSidebarItemData(0);
      v117 = *(v116 + 40);
      v119 = v166;
      v118 = v167;
      v120 = v169;
      v121 = v171;
      (*(v166 + 16))(v169 + v117, v171, v167);
      __swift_storeEnumTagSinglePayload(v120 + v117, 0, 1, v118);
      v38 = v168;
      sub_24E2A07FC();
      (*(v119 + 8))(v121, v118);
      v122 = v172[1];
      *(v120 + 72) = v172[0];
      v123 = v163;
      *(v120 + 40) = v170;
      *(v120 + 48) = v123;
      *(v120 + 56) = v162;
      *(v120 + 64) = v67;
      *(v120 + 120) = 2;
      *(v120 + 88) = v122;
      *(v120 + 104) = v173;
      *(v120 + 112) = v38;
      v124 = v160;
      *(v120 + 128) = v161;
      *(v120 + 144) = v124;
      v125 = v158;
      *(v120 + 160) = v159;
      *(v120 + 176) = v125;
      v126 = v156;
      *(v120 + 192) = v157;
      *(v120 + 208) = v126;
      *(v120 + 224) = v165;
      *(v120 + 232) = v69;
      v127 = v120;
      goto LABEL_26;
    case 3:
      v164 = a6;
      v70 = sub_24E347CB8();
      v71 = GKGameCenterUIFrameworkBundle();
      v72 = GKGetLocalizedStringFromTableInBundle();

      v170 = sub_24E347CF8();
      v163 = v73;

      v74 = sub_24E347CB8();
      v75 = GKGameCenterUIFrameworkBundle();
      v76 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_24E367D20;
      v78 = MEMORY[0x277D83C10];
      *(v77 + 56) = MEMORY[0x277D83B88];
      *(v77 + 64) = v78;
      *(v77 + 32) = 0;
      *&v161 = sub_24E347D18();
      *&v160 = v79;

      sub_24DF95B98(v165, v176, &qword_27F1DEE90, &unk_24E369E90);
      memcpy(v178, v179, 0x199uLL);
      if (sub_24DF8BF80(v178) == 1)
      {
        v80 = 0;
        v81 = 0;
        v165 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v162 = 0u;
      }

      else
      {
        v128 = v162;
        sub_24DF95B98(v162, v177, &qword_27F1DF038, &unk_24E36F2B0);
        v129 = v128[1];
        v165 = *v128;
        v130 = v128[3];
        v158 = v128[2];
        v159 = v129;
        v131 = v128[4];
        v156 = v128[5];
        v157 = v130;
        v162 = v131;
        v80 = v178[47];
        v81 = v178[48];
      }

      v116 = type metadata accessor for DashboardSidebarItemData(0);
      v132 = *(v116 + 40);
      v134 = v166;
      v133 = v167;
      v135 = v169;
      v136 = v171;
      (*(v166 + 16))(v169 + v132, v171, v167);
      __swift_storeEnumTagSinglePayload(v135 + v132, 0, 1, v133);
      v38 = v168;
      sub_24E2A07FC();
      (*(v134 + 8))(v136, v133);
      v137 = v176[1];
      *(v135 + 72) = v176[0];
      v138 = v163;
      *(v135 + 40) = v170;
      *(v135 + 48) = v138;
      v139 = v160;
      *(v135 + 56) = v161;
      *(v135 + 64) = v139;
      *(v135 + 120) = 3;
      *(v135 + 88) = v137;
      *(v135 + 104) = *&v176[2];
      *(v135 + 112) = v38;
      v140 = v159;
      *(v135 + 128) = v165;
      *(v135 + 144) = v140;
      v141 = v157;
      *(v135 + 160) = v158;
      *(v135 + 176) = v141;
      v142 = v156;
      *(v135 + 192) = v162;
      *(v135 + 208) = v142;
      *(v135 + 224) = v80;
      *(v135 + 232) = v81;
      v127 = v135;
LABEL_26:
      __swift_storeEnumTagSinglePayload(v127, 0, 1, v116);
      v24 = v164;
      return sub_24DF959BC(v38, v24);
    case 4:
      v41 = sub_24E347CB8();
      v42 = GKGameCenterUIFrameworkBundle();
      v43 = GKGetLocalizedStringFromTableInBundle();

      v170 = sub_24E347CF8();
      *&v162 = v44;

      v45 = sub_24E347CB8();
      v46 = GKGameCenterUIFrameworkBundle();
      v164 = a6;
      v47 = v46;
      v48 = GKGetLocalizedStringFromTableInBundle();

      v49 = sub_24E347CF8();
      v51 = v50;

      v52 = v169;
      sub_24DF95B98(v165, v169 + 72, &qword_27F1DEE90, &unk_24E369E90);
      v53 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
      memcpy(v178, (v163 + *(v53 + 72)), 0x70uLL);
      v54 = type metadata accessor for DashboardSidebarItemData(0);
      v55 = *(v54 + 40);
      v57 = v166;
      v56 = v167;
      v58 = v171;
      (*(v166 + 16))(v52 + v55, v171, v167);
      __swift_storeEnumTagSinglePayload(v52 + v55, 0, 1, v56);
      sub_24DF95B98(v178, v177, &qword_27F1DF038, &unk_24E36F2B0);
      v38 = v168;
      sub_24E2A07FC();
      (*(v57 + 8))(v58, v56);
      v59 = v162;
      *(v52 + 40) = v170;
      *(v52 + 48) = v59;
      *(v52 + 56) = v49;
      *(v52 + 64) = v51;
      v24 = v164;
      *(v52 + 112) = v38;
      *(v52 + 120) = 4;
      memcpy((v52 + 128), v178, 0x70uLL);
      v39 = v52;
      v40 = v54;
      goto LABEL_4;
    case 5:
      (*(v166 + 8))(v171, v167);
      v115 = type metadata accessor for DashboardSidebarItemData(0);
      __swift_storeEnumTagSinglePayload(v169, 1, 1, v115);
      v38 = v168;
      return sub_24DF959BC(v38, v24);
    default:
      v25 = sub_24E347CB8();
      v26 = GKGameCenterUIFrameworkBundle();
      v27 = GKGetLocalizedStringFromTableInBundle();

      v28 = sub_24E347CF8();
      v30 = v29;

      v164 = a6;
      v31 = v169;
      sub_24DF95B98(v165, v169 + 72, &qword_27F1DEE90, &unk_24E369E90);
      v32 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
      memcpy(v178, (v163 + *(v32 + 28)), 0x70uLL);
      v33 = type metadata accessor for DashboardSidebarItemData(0);
      v34 = *(v33 + 40);
      v36 = v166;
      v35 = v167;
      v37 = v171;
      (*(v166 + 16))(v31 + v34, v171, v167);
      __swift_storeEnumTagSinglePayload(v31 + v34, 0, 1, v35);
      sub_24DF95B98(v178, v177, &qword_27F1DF038, &unk_24E36F2B0);
      v38 = v168;
      sub_24E2A07FC();
      (*(v36 + 8))(v37, v35);
      *(v31 + 40) = v28;
      *(v31 + 48) = v30;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      *(v31 + 112) = v38;
      *(v31 + 120) = 0;
      memcpy((v31 + 128), v178, 0x70uLL);
      v39 = v31;
      v24 = v164;
      v40 = v33;
LABEL_4:
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
      return sub_24DF959BC(v38, v24);
  }
}

void sub_24DF94CB4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = sub_24E347458();
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v161 = v6 - v5;
  OUTLINED_FUNCTION_18_1();
  v7 = sub_24E347478();
  v8 = OUTLINED_FUNCTION_4_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v160 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v150 - v13;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v158 = v16;
  v159 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  OUTLINED_FUNCTION_4_5(v17);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v163 = &v150 - v19;
  v20 = OUTLINED_FUNCTION_18_1();
  v21 = type metadata accessor for TitleHeaderView.Style(v20);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  v27 = OUTLINED_FUNCTION_4_5(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v150 - v32;
  v34 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = *(v0 + 24);
  if (v38)
  {
    v156 = v14;
    v162 = v38;
    ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
    v157 = v33;
    if (ShouldUsePadUI)
    {
      sub_24E09A0F8(v25);
      type metadata accessor for TitleHeaderView.TextConfiguration(0);
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
      }

      v44 = type metadata accessor for PlayerCardTheme(0);
      __swift_project_value_buffer(v44, qword_27F20BF00);
      OUTLINED_FUNCTION_9_4();
      *(v25 + v45) = 0;
      OUTLINED_FUNCTION_16_1(v46);
      *(v25 + v47) = 1;
      *(v25 + *(v21 + 48)) = 0;
      v49 = v48;
      v50 = [v162 name];
      v51 = sub_24E347CF8();
      v154 = v52;
      v155 = v51;

      v53.n128_f64[0] = OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_28_0(v53);
      v166 = 0u;
      v167 = 0u;
      v168 = 0;
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      sub_24E343398();
      v58 = sub_24E343378();
      v60 = OUTLINED_FUNCTION_27_0(v58, v59);
      v61(v60);
      v62 = v30 + v34[7];
      *(v62 + 32) = 0u;
      *(v62 + 48) = 0u;
      *v62 = 0u;
      *(v62 + 16) = 0u;
      *(v62 + 64) = 1;
      v63 = v30 + v34[9];
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 64) = 1;
      v64 = (v30 + v34[10]);
      v65 = v30 + v34[11];
      *(v65 + 32) = 0;
      *v65 = 0u;
      *(v65 + 16) = 0u;
      OUTLINED_FUNCTION_17_1(0);
      v159 = v34[14];
      v158 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      v164 = v152;
      v165 = v151;
      sub_24E348918();
      OUTLINED_FUNCTION_5_7();
      v70 = (v30 + v34[6]);
      v71 = v154;
      *v70 = v155;
      v70[1] = v71;

      sub_24DF95B4C(v170, v62, &qword_27F1DEE88, &unk_24E36BF90);
      v72 = (v30 + v34[8]);
      *v72 = 0;
      v72[1] = 0;
      sub_24DF95B4C(v169, v63, &qword_27F1DEE88, &unk_24E36BF90);
      *(v30 + v153) = 0;
      *v64 = 0;
      v64[1] = 0;
      sub_24DF95B4C(&v166, v65, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF95B98(v163, v30 + v34[17], &qword_27F1DF050, &unk_24E36B8D0);
      OUTLINED_FUNCTION_14_1();
      *(v30 + v73) = xmmword_24E3699A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v75 = OUTLINED_FUNCTION_4_7(inited, xmmword_24E369E30);
      v75[4].n128_u64[1] = MEMORY[0x277D837D0];
      v75[5].n128_u64[0] = v76;
      v75[5].n128_u64[1] = 0xEF7865646E496E6FLL;
      v75[6].n128_u64[0] = 0;
      OUTLINED_FUNCTION_13_1();
      v77[15] = v79;
      v77[16] = v78;
      v81 = OUTLINED_FUNCTION_2_9(v77, v80);
      v81[27] = v82;
      v83 = v154;
      v84 = v155;
      v81[23] = 0xE400000000000000;
      v81[24] = v84;
    }

    else
    {
      sub_24E098FB8();
      sub_24E099250();
      type metadata accessor for TitleHeaderView.TextConfiguration(0);
      OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
      }

      v92 = type metadata accessor for PlayerCardTheme(0);
      __swift_project_value_buffer(v92, qword_27F20BF00);
      OUTLINED_FUNCTION_9_4();
      *(v25 + v93) = 1;
      OUTLINED_FUNCTION_16_1(v94);
      *(v25 + v95) = 0;
      *(v25 + *(v21 + 48)) = 0;
      OUTLINED_FUNCTION_15_1();
      v97 = v96;
      v98 = [v162 name];
      v99 = sub_24E347CF8();
      v154 = v100;
      v155 = v99;

      OUTLINED_FUNCTION_28_0(0);
      v166 = 0u;
      v167 = 0u;
      v168 = 0;
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      sub_24E343398();
      v105 = sub_24E343378();
      v107 = OUTLINED_FUNCTION_27_0(v105, v106);
      v108(v107);
      v109 = v30 + v34[7];
      *(v109 + 32) = 0u;
      *(v109 + 48) = 0u;
      *v109 = 0u;
      *(v109 + 16) = 0u;
      *(v109 + 64) = 1;
      v110 = v30 + v34[9];
      *(v110 + 32) = 0u;
      *(v110 + 48) = 0u;
      *v110 = 0u;
      *(v110 + 16) = 0u;
      *(v110 + 64) = 1;
      v111 = (v30 + v34[10]);
      v112 = v30 + v34[11];
      *(v112 + 32) = 0;
      *v112 = 0u;
      *(v112 + 16) = 0u;
      OUTLINED_FUNCTION_17_1(0);
      v159 = v34[14];
      v158 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
      v164 = v152;
      v165 = v151;
      sub_24E348918();
      OUTLINED_FUNCTION_5_7();
      v117 = (v30 + v34[6]);
      *v117 = 0;
      v117[1] = 0xE000000000000000;
      sub_24DF95B4C(v170, v109, &qword_27F1DEE88, &unk_24E36BF90);
      v118 = (v30 + v34[8]);
      v119 = v154;
      *v118 = v155;
      v118[1] = v119;
      sub_24DF95B4C(v169, v110, &qword_27F1DEE88, &unk_24E36BF90);
      *(v30 + v153) = 0;
      *v111 = 0;
      v111[1] = 0;
      sub_24DF95B4C(&v166, v112, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF95B98(v163, v30 + v34[17], &qword_27F1DF050, &unk_24E36B8D0);
      OUTLINED_FUNCTION_14_1();
      *(v30 + v120) = xmmword_24E3699A0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      v121 = swift_initStackObject();
      v122 = OUTLINED_FUNCTION_4_7(v121, xmmword_24E369E30);
      v122[4].n128_u64[1] = MEMORY[0x277D837D0];
      v122[5].n128_u64[0] = v123;
      v122[5].n128_u64[1] = 0xEF7865646E496E6FLL;
      v122[6].n128_u64[0] = 0;
      OUTLINED_FUNCTION_13_1();
      v124[15] = v126;
      v124[16] = v125;
      v128 = OUTLINED_FUNCTION_2_9(v124, v127);
      v81 = OUTLINED_FUNCTION_23_1(v128, v129);
    }

    v81[25] = v83;
    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v130 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v130);
    v131 = v156;
    sub_24E347488();
    sub_24DF8BFF4(v163, &qword_27F1DF050, &unk_24E36B8D0);
    sub_24DF8BFF4(&v166, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8BFF4(v169, &qword_27F1DEE88, &unk_24E36BF90);
    sub_24DF8BFF4(v170, &qword_27F1DEE88, &unk_24E36BF90);
    sub_24DF95C8C(v25, type metadata accessor for TitleHeaderView.Style);
    OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v158);
    sub_24DF95BE4(v131, v30 + v159, &qword_27F1E58A0, &unk_24E36BF80);
    OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v34);
    v33 = v157;
    sub_24DF95BE4(v30, v157, &qword_27F1DF058, &unk_24E36F980);
    v138 = v162;
    v139 = sub_24E22A3C4();

    if (v139)
    {
      if (!__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        *&v33[v34[12]] = v139;
      }
    }
  }

  else
  {
    sub_24DF8BFF4(v33, &qword_27F1DF058, &unk_24E36F980);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v34);
  }

  sub_24DF95B98(v33, v2, &qword_27F1DF058, &unk_24E36F980);
  v140 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  v145 = v2 + v140[11];
  *v145 = 0u;
  *(v145 + 16) = 0u;
  *(v145 + 32) = 1;
  v146 = v2 + v140[12];
  *v146 = 0;
  *(v146 + 8) = 1;
  v147 = (v2 + v140[13]);
  v148 = (v2 + v140[14]);
  v149 = (v2 + v140[15]);
  *(v2 + v140[6]) = 1;
  *v147 = 0;
  v147[1] = 0;
  *v148 = 0;
  v148[1] = 0;
  *v149 = 0;
  v149[1] = 0;
  *(v2 + v140[7]) = 1;
  *(v2 + v140[8]) = 1;
  *(v2 + v140[9]) = 1;
  *(v2 + v140[10]) = 0;
  sub_24DF8BFF4(v33, &qword_27F1DF058, &unk_24E36F980);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24DF956F4()
{
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_requiredData, &qword_27F1DF018, &qword_24E372030);
}

uint64_t sub_24DF9575C()
{
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_requiredData, &qword_27F1DF018, &qword_24E372030);

  return v0;
}

uint64_t sub_24DF957BC()
{
  sub_24DF9575C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SidebarSection(uint64_t a1)
{
  result = qword_27F1DEFF8;
  if (!qword_27F1DEFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DF95868(uint64_t a1)
{
  sub_24DF95920(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24DF95920(uint64_t a1)
{
  if (!qword_27F1DF008)
  {
    type metadata accessor for DashboardRequiredDataPresenter.Data(255);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DF008);
    }
  }
}

unint64_t sub_24DF95978()
{
  result = qword_27F1DF028;
  if (!qword_27F1DF028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1DF028);
  }

  return result;
}

id sub_24DF959BC(id result, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
    return result;
  }

  return result;
}

void sub_24DF959D0(id a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }
}

uint64_t sub_24DF95A20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

unint64_t sub_24DF95A7C()
{
  result = qword_27F1E58C0;
  if (!qword_27F1E58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E58C0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  sub_24DF959D0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24DF95B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return v4;
}

uint64_t sub_24DF95B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return v4;
}

uint64_t sub_24DF95BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return v4;
}

uint64_t sub_24DF95C30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24DF95C8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_2_9(void *result, uint64_t a2)
{
  result[17] = 0xE600000000000000;
  result[18] = 0x636974617473;
  result[19] = 0xE600000000000000;
  result[21] = a2;
  result[22] = 1701667182;
  return result;
}

__n128 *OUTLINED_FUNCTION_4_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "impressionType");
  result[2].n128_u8[15] = -18;
  result[3].n128_u64[0] = 0x666C656873;
  result[3].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v4 = v1 + *(v0 + 20);

  return sub_24DF95C30(v2, v4, type metadata accessor for TitleHeaderView.Style);
}

void OUTLINED_FUNCTION_9_4()
{
  v3 = v1[8];
  *(v2 + v1[6]) = 0;
  *(v2 + v1[7]) = v0;
  *(v2 + v3) = 0;
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_14_1()
{
  v2 = v1 + *(v0 + 64);
  *v2 = 0;
  *(v2 + 8) = 0;
}

double OUTLINED_FUNCTION_15_1()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 96) = -1;
  return result;
}

void OUTLINED_FUNCTION_17_1(__n128 a1)
{
  v4 = *(v2 + 52);
  *(v1 + 24) = *(v2 + 48);
  v5 = (v3 + v4);
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
}

void *OUTLINED_FUNCTION_23_1(void *result, uint64_t a2)
{
  result[27] = a2;
  result[23] = 0xE400000000000000;
  result[24] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  *(v2 + 16) = a1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_28_0(__n128 a1)
{
  *(v2 - 208) = a1;
  *(v2 - 192) = a1;
  *(v2 - 240) = a1;
  *(v2 - 224) = a1;
  *(v2 - 176) = v1;

  return sub_24E3444F8();
}

id sub_24DF95F4C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset] = 1;
  v4[OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromSafeAreaInset] = 1;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_24DF96014()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromSafeAreaInset) = 1;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24DF960EC()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset] != 1)
  {
    return 14;
  }

  if (v0[OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromSafeAreaInset] != 1)
  {
    return 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_edgesInsettingLayoutMarginsFromSafeArea);
}

id sub_24DF961B0(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setEdgesInsettingLayoutMarginsFromSafeArea_, a1);
}

uint64_t sub_24DF961F8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) != 1)
  {
    return 14;
  }

  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI30InsetViewControllerContentView_insetLayoutMarginsFromSafeAreaInset) == 1)
  {
    return sub_24DF960EC();
  }

  return 0;
}

id _s12GameCenterUI28DashboardSplitViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24DF962F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24DF9634C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_24DF963BC()
{
  type metadata accessor for ProfileAvatarView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_24DF963F8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  sub_24E0D8E24(a3);
  v8 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_isArcadeSubscriber;
  swift_beginAccess();
  *(a1 + v8) = a4;
  return sub_24E1DDE84();
}

uint64_t sub_24DF964D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DF9661C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24DF96538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DF9661C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24DF9659C(uint64_t a1)
{
  sub_24DF9661C();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24DF965C8()
{
  result = qword_27F1DF078;
  if (!qword_27F1DF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF078);
  }

  return result;
}

unint64_t sub_24DF9661C()
{
  result = qword_27F1DF080;
  if (!qword_27F1DF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF080);
  }

  return result;
}

char *sub_24DF96670(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0B0, &unk_24E36A4F0));
  *&v4[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView] = OUTLINED_FUNCTION_4_8(v10);
  v11 = objc_allocWithZone(type metadata accessor for ContinuePlayingEmptyStateView());
  *&v4[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView] = OUTLINED_FUNCTION_4_8(v11);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OUTLINED_FUNCTION_1_16();
  [v14 v15];
  [v12 addSubview_];
  [v12 addSubview_];

  return v12;
}

id sub_24DF96830()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView];
  [v0 bounds];
  return [v2 setFrame_];
}

double sub_24DF9693C(void *a1, double a2, double a3)
{
  sub_24DF979D4(v6);
  if (sub_24E2541B4(*(v6[9] + 16), v6, a1, a2) < 1)
  {
    a2 = *MEMORY[0x277D22A78];
  }

  sub_24DF97F28(v6);
  return a2;
}

void sub_24DF96A84(uint64_t a1)
{
  v2 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  swift_getObjectType();
  v6 = sub_24DFC1764();
  sub_24DF97E18(a1, v5, type metadata accessor for ContinuePlayingData);
  v7 = *(v5 + 40);

  OUTLINED_FUNCTION_0_22();
  sub_24DF97D7C(v5, v8);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v9 = OUTLINED_FUNCTION_1_16();
      sub_24DF96CF8(v10, v6, v9, v11);
      swift_unknownObjectRelease();
    }

    else
    {

      v14 = OUTLINED_FUNCTION_1_16();
      sub_24DF96CF8(1, v6, v14, v15);
      type metadata accessor for ContinuePlayingEmptyStateView();
      v16 = sub_24E347CB8();
      v17 = GKGameCenterUIFrameworkBundle();
      v18 = GKGetLocalizedStringFromTableInBundle();

      v19 = sub_24E347CF8();
      v21 = v20;

      v22 = sub_24E347CB8();
      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();

      v25 = sub_24E347CF8();
      v27 = v26;

      v28 = OUTLINED_FUNCTION_1_16();
      sub_24E2FD4EC(v28, v29, v19, v21, v25, v27, v6);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_1_16();
    sub_24DF96CF8(1, v6, v12, v13);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_1_16();
}

double sub_24DF96CF8(uint64_t a1, void *a2, double a3, double a4)
{
  type metadata accessor for TitledAppIconView();
  v7 = sub_24E2EB0B4(a2);
  v9 = v8;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v12 = 8.0;
  if (ShouldUsePadUI)
  {
    v12 = 2.0;
  }

  v18[5] = MEMORY[0x277D85048];
  v18[6] = MEMORY[0x277D225F8];
  *&v18[2] = v12;
  *v18 = v7;
  v18[1] = v9;
  v18[7] = sub_24DF975E8(a2, v11);
  v19 = v13 & 1;
  sub_24E344788();
  swift_allocObject();
  v14 = sub_24E344768();
  sub_24DF97C3C(v14, a1);
  sub_24DF97E78(v18, v20);
  sub_24E079A70();
  v16 = v15;

  sub_24DF97ED4(v18);
  v21 = v16;
  if (sub_24E2541B4(*(v16 + 16), v20, a2, a3) < 1)
  {
    a3 = *MEMORY[0x277D22A78];
  }

  sub_24DF97F28(v20);
  return a3;
}

id sub_24DF96E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for ExternalUrlAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for ContinuePlayingData(0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0A0, &unk_24E36A4E0);
  sub_24E347148();
  v21 = *(v20 + 40);

  OUTLINED_FUNCTION_0_22();
  sub_24DF97D7C(v20, v22);
  if (!v21)
  {
    [*&v6[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView] setHidden_];
    [*&v6[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView] setHidden_];
    return [v7 setNeedsLayout];
  }

  if (*(v21 + 16))
  {
    [*&v6[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView] setHidden_];
    v23 = *&v6[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView];
    [*&v7[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView] setHidden_];
    sub_24DF97324(v21, a6);
    [v23 setNeedsLayout];

    return [v7 setNeedsLayout];
  }

  v24 = *&v6[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView];
  [*&v7[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_emptyStateView] setHidden_];
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = OUTLINED_FUNCTION_5_8(v26);

  v42 = sub_24E347CF8();
  v43 = v28;

  v29 = sub_24E347CB8();
  v30 = GKGameCenterUIFrameworkBundle();
  v31 = OUTLINED_FUNCTION_5_8(v30);

  v32 = sub_24E347CF8();
  v34 = v33;

  sub_24E343268();
  v35 = sub_24E343288();
  result = __swift_getEnumTagSinglePayload(v11, 1, v35);
  if (result != 1)
  {
    sub_24E3471C8();
    (*(*(v35 - 8) + 32))(v16, v11, v35);
    *(v16 + *(v12 + 20)) = 0;
    *(v16 + *(v12 + 24)) = 1;
    v45[3] = v12;
    v45[4] = sub_24DF97CC8(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction, &unk_24E36D6C0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_24DF97E18(v16, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);
    sub_24DFFA600(v42, v43, *&v24[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_titleLabel]);

    sub_24DF89628(v45, v44);
    v38 = swift_allocObject();
    *(v38 + 16) = a6;
    sub_24DE56CE8(v44, v38 + 24);
    v39 = &v24[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler];
    v40 = *&v24[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler];
    v41 = *&v24[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_buttonHandler + 8];
    *v39 = sub_24DF97D10;
    v39[1] = v38;

    sub_24DE73FA0(v40, v41);
    sub_24DF97D1C(v32, v34, 0, *&v24[OBJC_IVAR____TtC12GameCenterUI29ContinuePlayingEmptyStateView_button]);

    [v24 setNeedsLayout];
    sub_24DF97D7C(v16, type metadata accessor for ExternalUrlAction);
    __swift_destroy_boxed_opaque_existential_1(v45);
    [*&v7[OBJC_IVAR____TtC12GameCenterUI27ContinuePlayingEmbeddedView_gridView] setHidden_];
    return [v7 setNeedsLayout];
  }

  __break(1u);
  return result;
}

uint64_t sub_24DF97324(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_27F1E5DA0) = a2;

  *(v2 + qword_27F1E5DA8) = a1;

  v5 = sub_24DF97AC4(a1, a2);

  return sub_24DF97988(v5);
}

void sub_24DF973E0()
{
  v1 = *(v0 + qword_27F1E5DB0);
  if (v1 >> 62)
  {
    v2 = sub_24E348878();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25303F560](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = type metadata accessor for FocusableTitledAppIconView();
      v7.receiver = v5;
      v7.super_class = v6;
      objc_msgSendSuper2(&v7, sel_prepareForReuse);
      sub_24E2EACA0();
    }

    while (v2 != v3);
  }
}

uint64_t sub_24DF975E8(void *a1, uint64_t a2)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 3;
  }

  v4 = [a1 traitCollection];
  v5 = sub_24E3483C8();

  if (v5)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

void sub_24DF97650()
{
  v1 = *(v0 + qword_27F1E5DB0);
  if (v1 >> 62)
  {
    v2 = sub_24E348878();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25303F560](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 removeFromSuperview];
    }
  }
}

uint64_t sub_24DF9773C()
{
  ObjectType = swift_getObjectType();
  v19 = v0;
  v20 = *&v0[qword_27F1E5DB0];
  result = sub_24DFD8654();
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v17 = v2;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25303F560](v3, v20);
      }

      else
      {
        v4 = *(v20 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v22 = ObjectType;
      v21[0] = v19;
      v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
      v7 = v19;
      v8 = sub_24E2BE570(v21, sel_didTapItem_);
      v9 = v5;
      [v9 addGestureRecognizer_];
      v22 = ObjectType;
      v21[0] = v7;
      v10 = objc_allocWithZone(MEMORY[0x277D75B80]);
      v11 = v7;
      v12 = sub_24E2BE570(v21, sel_didTapItem_);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24E369990;
      v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v15 = v12;
      *(v13 + 32) = [v14 initWithInteger_];
      sub_24DF97DD4();
      v16 = sub_24E347EE8();

      [v15 setAllowedPressTypes_];

      [v9 addGestureRecognizer_];
      [v11 addSubview_];
    }

    while (v17 != v3);
  }

  return [v19 setNeedsLayout];
}

uint64_t sub_24DF97988(uint64_t a1)
{
  sub_24DF97650();
  *(v1 + qword_27F1E5DB0) = a1;

  return sub_24DF9773C();
}

uint64_t sub_24DF979D4@<X0>(uint64_t a1@<X8>)
{
  sub_24DF97A30(v1, a1);

  sub_24E079A58(v3);
  v5 = v4;

  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_24DF97A30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TitledAppIconView();
  v4 = sub_24E2EB0B4(a1);
  v6 = v5;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v9 = 8.0;
  v10 = MEMORY[0x277D225F8];
  if (ShouldUsePadUI)
  {
    v9 = 2.0;
  }

  *(a2 + 40) = MEMORY[0x277D85048];
  *(a2 + 48) = v10;
  *(a2 + 16) = v9;
  result = sub_24DF975E8(a1, v8);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 56) = result;
  *(a2 + 64) = v12 & 1;
  return result;
}

uint64_t sub_24DF97AC4(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = type metadata accessor for FocusableTitledAppIconView();
    v7 = (a1 + 80);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      v18[0] = *(v7 - 6);
      v18[1] = v8;
      v18[2] = v9;
      v18[3] = v10;
      v18[4] = v11;
      v18[5] = v12;
      v19 = v13;
      v14 = objc_allocWithZone(v6);

      v15 = v13;
      v16 = [v14 initWithFrame_];
      sub_24E2872F8(v18, a2);

      v17 = v16;
      MEMORY[0x25303EA30]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      v7 += 7;
      sub_24E347F88();

      --v4;
    }

    while (v4);
    return v20;
  }

  return result;
}

uint64_t sub_24DF97C3C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_24E344788();
      v4 = sub_24E347F68();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_24DF97CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24DF97D1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24E347CB8();
  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_24DF97D7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_24DF97DD4()
{
  result = qword_27F1E50D0;
  if (!qword_27F1E50D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E50D0);
  }

  return result;
}

uint64_t sub_24DF97E18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id OUTLINED_FUNCTION_4_8(void *a1)
{

  return [a1 (v1 + 760)];
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t get_enum_tag_for_layout_string_5JetUI14LayoutTextView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DF98004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 328))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_24DF98044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicTypeLabel.DirectionalTextAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_24DF98178(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24DF98254()
{
  result = qword_27F1DF0B8;
  if (!qword_27F1DF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF0B8);
  }

  return result;
}

uint64_t sub_24DF982A8(unsigned __int8 a1)
{
  sub_24E348D18();
  MEMORY[0x25303F880](a1);
  return sub_24E348D68();
}

uint64_t sub_24DF982F8(uint64_t a1)
{
  v2 = *v1;
  sub_24E348D18();
  MEMORY[0x25303F880](v2);
  return sub_24E348D68();
}

uint64_t sub_24DF9833C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = sub_24E348BC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  sub_24E3484F8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_1_17((v5 + 8));
  v17 = OUTLINED_FUNCTION_0_23();
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_26_0();
  v18(v19);
  OUTLINED_FUNCTION_1_17((v5 + 48));
  v20 = OUTLINED_FUNCTION_0_23();
  v21 = OUTLINED_FUNCTION_26_0();
  v18(v21);
  sub_24DF98AC8(v5 + 208, &v37);
  if (v38)
  {
    sub_24DF88BF0(&v37, v39);
    OUTLINED_FUNCTION_1_17((v5 + 88));
    v22 = OUTLINED_FUNCTION_0_23();
    v23 = OUTLINED_FUNCTION_26_0();
    v18(v23);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_24E3440D8(v14, v16);
    v36 = v24;
    if (*v5)
    {
      if (*v5 == 1)
      {
        sub_24DF987CC(a1, v10, v12, v14, v16);
        OUTLINED_FUNCTION_1_17((v5 + 128));
        v25 = OUTLINED_FUNCTION_0_23();
        v26 = OUTLINED_FUNCTION_26_0();
        v27 = (v18)(v26);
        *&v37 = v25;
        OUTLINED_FUNCTION_2_10(v27, MEMORY[0x277D85048], MEMORY[0x277D225F8]);
        v41.origin.x = OUTLINED_FUNCTION_5_9();
        CGRectGetMinX(v41);
      }

      else
      {
        sub_24DF987CC(a1, v10, v12, v14, v16);
        OUTLINED_FUNCTION_1_17((v5 + 128));
        v31 = OUTLINED_FUNCTION_0_23();
        v32 = OUTLINED_FUNCTION_26_0();
        v33 = (v18)(v32);
        *&v37 = v31;
        OUTLINED_FUNCTION_2_10(v33, MEMORY[0x277D85048], MEMORY[0x277D225F8]);
        v47.origin.x = OUTLINED_FUNCTION_5_9();
        CGRectGetMidX(v47);
      }

      __swift_project_boxed_opaque_existential_1((v5 + 248), *(v5 + 272));
      sub_24E344078();
      CGRectGetMaxY(v48);
    }

    else
    {
      v42.origin.x = v10;
      v42.origin.y = v12;
      v42.size.width = v14;
      v42.size.height = v16;
      CGRectGetMinX(v42);
      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      CGRectGetMinY(v43);
      v44.origin.x = OUTLINED_FUNCTION_3_9();
      v44.size.height = v36;
      v35 = v22 + CGRectGetMaxX(v44);
      v45.origin.x = OUTLINED_FUNCTION_3_9();
      v45.size.height = v36;
      MidY = CGRectGetMidY(v45);
      v46.origin.x = v10;
      v46.origin.y = v12;
      v46.size.width = v14;
      v46.size.height = v16;
      MaxX = CGRectGetMaxX(v46);
      if (v17 > v20)
      {
        v30 = v17;
      }

      else
      {
        v30 = v20;
      }

      sub_24DF987CC(a1, v35, MidY + v17 * -0.5, MaxX - v35, v30);
    }

    __swift_project_boxed_opaque_existential_1(v39, v40);
    OUTLINED_FUNCTION_3_9();
    sub_24E344088();
    sub_24E343FD8();
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_24DF98B38(&v37);
    sub_24DF987CC(a1, v10, v12, v14, v16);
    return sub_24E343FD8();
  }
}

void sub_24DF987CC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_24E348BC8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[4];
  v16 = v6[5];
  __swift_project_boxed_opaque_existential_1(v6 + 1, v15);
  sub_24E2548A0(v15, v16);
  sub_24E344198();
  v21[1] = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v19 = v6[9];
  v20 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 6, v19);
  sub_24E2548A0(v19, v20);
  sub_24E344198();
  v18(v14, v11);
  __swift_project_boxed_opaque_existential_1(v6 + 31, v6[34]);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMidY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  sub_24E344088();
  __swift_project_boxed_opaque_existential_1(v6 + 36, v6[39]);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidY(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetWidth(v27);
  sub_24E344088();
}

double sub_24DF98A70(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_24DF98BA0(a1, v3, a2, a3);
}

uint64_t sub_24DF98AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0C0, &unk_24E36B630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF98B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF0C0, &unk_24E36B630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24DF98BA0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E348538();
  v11 = v10;
  v13 = v12;
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  __swift_project_boxed_opaque_existential_1((a2 + 8), v14);
  sub_24E2548A0(v14, v15);
  sub_24E344198();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v17);
  sub_24E2548A0(v17, v18);
  sub_24E344198();
  v16(v9, v6);
  sub_24DF98AC8(a2 + 208, v21);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_24E3440D8(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (*a2)
    {
      __swift_project_boxed_opaque_existential_1((a2 + 128), *(a2 + 152));
      sub_24E3441B8();
    }
  }

  else
  {
    sub_24DF98B38(v21);
  }

  return a3;
}

uint64_t sub_24DF98E44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_24DF98E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_0_23()
{

  sub_24E344198();
  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

double OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_24E3441B8();
  return result;
}

uint64_t sub_24DF98FC4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v79 = sub_24E344908();
  OUTLINED_FUNCTION_2_7();
  v78 = v2;
  MEMORY[0x28223BE20](v3);
  v77 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0);
  v6 = v5 - 8;
  v75 = *(v5 - 8);
  v83 = *(v75 + 64);
  MEMORY[0x28223BE20](v5);
  v82 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24E344988();
  OUTLINED_FUNCTION_2_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v12);
  v14 = (v66 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (v66 - v16);
  v18 = sub_24E344428();
  v81 = v18;
  OUTLINED_FUNCTION_2_7();
  v20 = v19;
  v76 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v68 = v66 - v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v28);
  v74 = v66 - v29;
  sub_24E344408();
  sub_24E344418();
  v67 = *(v20 + 8);
  v66[1] = v20 + 8;
  v67(v23, v18);
  sub_24DF89628(v1, v90);
  v30 = (v1 + *(v6 + 40));
  v31 = v1;
  v32 = *(v30 + 5);
  v33 = MEMORY[0x277D85048];
  v34 = MEMORY[0x277D225F8];
  v17[3] = MEMORY[0x277D85048];
  v17[4] = v34;
  *v17 = v32;
  v35 = *MEMORY[0x277D22980];
  v36 = *(v9 + 104);
  v37 = v69;
  v36(v17, v35, v69);
  v38 = *(v30 + 6);
  v14[3] = v33;
  v14[4] = v34;
  *v14 = v38;
  v36(v14, v35, v37);
  v39 = *MEMORY[0x277D22988];
  v36(v70, v39, v37);
  v36(v71, v39, v37);
  v40 = sub_24E344998();
  OUTLINED_FUNCTION_3_10(v40, MEMORY[0x277D22998]);
  sub_24E3449A8();
  v41 = v31;
  v42 = v82;
  sub_24DF998DC(v31, v82);
  v43 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v44 = OUTLINED_FUNCTION_2_11(&unk_2861134F0);
  sub_24DF99940(v42, v44 + v43);
  v45 = v72;
  v46 = v68;
  sub_24E344418();

  v47 = v81;
  v48 = v67;
  v67(v46, v81);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v49 = v73;
  sub_24E344418();
  v48(v45, v47);
  v50 = sub_24E3442D8();
  OUTLINED_FUNCTION_3_10(v50, MEMORY[0x277D226E0]);
  sub_24E3442B8();
  v51 = v82;
  sub_24DF998DC(v41, v82);
  v52 = OUTLINED_FUNCTION_2_11(&unk_286113518);
  sub_24DF99940(v51, v52 + v43);
  v53 = v74;
  sub_24E344418();

  v54 = v81;
  v48(v49, v81);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v55 = *v30;
  v56 = v30[1];
  v57 = v30[2];
  v58 = v30[3];
  sub_24DF89628(v41 + 80, v90);
  sub_24E344938();
  v59 = sub_24E344958();
  OUTLINED_FUNCTION_3_10(v59, MEMORY[0x277D22970]);
  sub_24E344968();
  v60 = *(v30 + *(type metadata accessor for ActivityFeedLeaderboardRowView.Metrics(0) + 40));
  v88 = MEMORY[0x277D85048];
  v89 = MEMORY[0x277D225F8];
  v87 = v60;
  v61 = sub_24E3442F8();
  v62 = MEMORY[0x277D226F0];
  v86[3] = v61;
  v86[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v86);
  sub_24E3442E8();
  v85[3] = v61;
  v85[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v85);
  sub_24E3442E8();
  v84[3] = v61;
  v84[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v84);
  sub_24E3442E8();
  v90[3] = sub_24E3449C8();
  v90[4] = MEMORY[0x277D229A8];
  __swift_allocate_boxed_opaque_existential_1(v90);
  sub_24E3449D8();
  (*(v78 + 104))(v77, *MEMORY[0x277D22950], v79);
  v88 = v54;
  v89 = MEMORY[0x277D22778];
  v63 = __swift_allocate_boxed_opaque_existential_1(&v87);
  (*(v76 + 16))(v63, v53, v54);
  v64 = sub_24E344918();
  OUTLINED_FUNCTION_3_10(v64, MEMORY[0x277D22960]);
  sub_24E344928();
  MEMORY[0x25303B510](&v91, v55, v56, v57, v58);
  return (v48)(v53, v54);
}

uint64_t type metadata accessor for ActivityFeedLeaderboardRowViewLayout(uint64_t a1)
{
  result = qword_27F1DF0C8;
  if (!qword_27F1DF0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DF99860(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0);
  sub_24E3443C8();
  return sub_24E3443D8();
}

uint64_t sub_24DF998DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF99940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF999BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0);
  type metadata accessor for ActivityFeedLeaderboardRowView.Metrics(0);
  return sub_24E3443D8();
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + 120));
  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics(0);
  v7 = v6[8];
  v8 = sub_24E344158();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v6[9], v8);
  v9(v5 + v6[11], v8);
  v9(v5 + v6[12], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24DF99BD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityFeedLeaderboardRowViewLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24DF99C8C(uint64_t a1)
{
  result = sub_24DF99D14();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24DF99D14()
{
  result = qword_27F1DF0D8;
  if (!qword_27F1DF0D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F1DF0D8);
  }

  return result;
}

uint64_t sub_24DF99D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DF99E64(&qword_27F1DF0F0, &unk_24E36A730);

  return MEMORY[0x282180C48](a1, a2, v4);
}

uint64_t sub_24DF99E64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivityFeedLeaderboardRowViewLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_3_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 160));
}

uint64_t sub_24DF99EF0(uint64_t a1)
{
  v64 = MEMORY[0x277D84F90];
  v6 = sub_24DFD8654();
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = &selRef_iconURLString;
  while (v6 != v7)
  {
    if (v8)
    {
      v11 = MEMORY[0x25303F560](v7, a1);
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v10)
      {
        goto LABEL_54;
      }

      v11 = *(a1 + 8 * v7 + 32);
    }

    v2 = v11;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v41 = OUTLINED_FUNCTION_14_2(v10);
      sub_24E077238(v41, v4, 1, v2);
      v2 = v42;
      goto LABEL_14;
    }

    if ([v11 isCompleted])
    {
      sub_24E348A48();
      v3 = *(v64 + 16);
      sub_24E348A78();
      sub_24E348A88();
      v1 = &v64;
      sub_24E348A58();
    }

    else
    {
    }

    v7 = (v7 + 1);
  }

  v64 = sub_24E0834B0(v12);
  sub_24DF9B4B0(&v64);
  v62 = 0;

  v1 = v64;
  v3 = sub_24DFD8654();
  v9 = sub_24DFD8654();
  v2 = MEMORY[0x277D84F90];
  if (v3 <= 0)
  {
    goto LABEL_15;
  }

  sub_24E077238(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = v13;
  v7 = *(v13 + 16);
  v10 = *(v13 + 24);
  v4 = v7 + 1;
  if (v7 >= v10 >> 1)
  {
    goto LABEL_57;
  }

LABEL_14:
  *(v2 + 16) = v4;
  v14 = v2 + 24 * v7;
  *(v14 + 32) = v3;
  *(v14 + 40) = v9;
  *(v14 + 48) = 0;
LABEL_15:
  v15 = sub_24DF9A3E0(v3, v9);
  if (v17 != 0xFF)
  {
    v18 = v15;
    v9 = v16;
    v4 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = OUTLINED_FUNCTION_5_10();
      sub_24E077238(v43, v44, v45, v2);
      v2 = v46;
    }

    v19 = v2;
    v20 = *(v2 + 16);
    v21 = v19;
    v22 = *(v19 + 24);
    if (v20 >= v22 >> 1)
    {
      v47 = OUTLINED_FUNCTION_14_2(v22);
      sub_24E077238(v47, v20 + 1, 1, v48);
      v21 = v49;
    }

    *(v21 + 16) = v20 + 1;
    v23 = v21 + 24 * v20;
    v2 = v21;
    *(v23 + 32) = v18;
    *(v23 + 40) = v9;
    *(v23 + 48) = v4;
  }

  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x25303F560](0, v1);
    }

    else
    {
      v24 = *(v1 + 32);
    }

    v25 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = OUTLINED_FUNCTION_5_10();
      sub_24E077238(v50, v51, v52, v2);
      v2 = v53;
    }

    v27 = *(v2 + 16);
    v26 = *(v2 + 24);
    v1 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v54 = OUTLINED_FUNCTION_14_2(v26);
      sub_24E077238(v54, v27 + 1, 1, v2);
      v2 = v55;
    }

    *(v2 + 16) = v1;
    v63 = v2;
    v28 = v2 + 24 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = 0;
    *(v28 + 48) = 3;
  }

  else
  {
    v63 = v2;
  }

  v3 = 0;
  v64 = MEMORY[0x277D84F90];
  v7 = &selRef_local;
  v2 = 0x4059000000000000;
  while (v6 != v3)
  {
    if (v8)
    {
      v29 = MEMORY[0x25303F560](v3, a1);
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= v10)
      {
        goto LABEL_56;
      }

      v29 = *(a1 + 8 * v3 + 32);
    }

    v9 = v29;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_55;
    }

    [v29 percentComplete];
    if (v30 <= 0.0 || ([v9 percentComplete], v31 >= 100.0))
    {
    }

    else
    {
      sub_24E348A48();
      v4 = *(v64 + 16);
      sub_24E348A78();
      sub_24E348A88();
      v1 = &v64;
      sub_24E348A58();
    }

    ++v3;
  }

  v64 = sub_24E0834B0(v32);
  sub_24DF9B4B0(&v64);
  if (v62)
  {

    __break(1u);
  }

  else
  {

    v33 = v64;
    v34 = v63;
    if (sub_24DFD8654())
    {
      sub_24DFFA844();
      if ((v33 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x25303F560](0, v33);
      }

      else
      {
        v35 = *(v33 + 32);
      }

      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = OUTLINED_FUNCTION_5_10();
        sub_24E077238(v56, v57, v58, v63);
        v34 = v59;
      }

      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      if (v38 >= v37 >> 1)
      {
        v60 = OUTLINED_FUNCTION_14_2(v37);
        sub_24E077238(v60, v38 + 1, 1, v34);
        v34 = v61;
      }

      *(v34 + 16) = v38 + 1;
      v39 = v34 + 24 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = 0;
      *(v39 + 48) = 4;
    }

    else
    {
    }

    return v34;
  }

  return result;
}

uint64_t sub_24DF9A3E0(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    return a2;
  }

  if (result == 1)
  {
    return 0;
  }

  if (a2 >= 2)
  {
    if (result < 2 || result >= a2)
    {
      return 2 * (a2 == result);
    }

    else
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_24DF9A440(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a1;
  switch(a3)
  {
    case 1:
      v98 = OUTLINED_FUNCTION_2_12();
      v99 = GKGameCenterUIFrameworkBundle();
      v100 = OUTLINED_FUNCTION_1_12(v99);

      v101 = sub_24E347CF8();
      v168 = v102;
      v172 = v101;

      v103 = sub_24E347CB8();
      v104 = GKGameCenterUIFrameworkBundle();
      v105 = OUTLINED_FUNCTION_1_12(v104);

      sub_24E347CF8();
      OUTLINED_FUNCTION_12_2();

      v29 = sub_24E347CB8();
      v106 = GKGameCenterUIFrameworkBundle();
      v107 = OUTLINED_FUNCTION_1_12(v106);

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();

      v108 = sub_24E347CB8();
      v109 = GKGameCenterUIFrameworkBundle();
      v110 = GKGetLocalizedStringFromTableInBundle();

      v5 = sub_24E347CF8();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v6 = OUTLINED_FUNCTION_17_2(v111);
      v112 = MEMORY[0x277D83B88];
      *(v6 + 16) = xmmword_24E367D20;
      v113 = MEMORY[0x277D83C10];
      *(v6 + 56) = v112;
      *(v6 + 64) = v113;
      *(v6 + 32) = v9;
      sub_24E347CC8();
      OUTLINED_FUNCTION_7_7();

      v20 = OUTLINED_FUNCTION_9_5();
      v114 = GKGameCenterUIFrameworkBundle();
      v115 = OUTLINED_FUNCTION_1_18(v114);
      goto LABEL_15;
    case 2:
      v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v4 = [objc_opt_self() localizedStringFromNumber:v56 numberStyle:1];
      v5 = sub_24E347CF8();
      v9 = v57;

      v58 = sub_24E347CB8();
      v59 = GKGameCenterUIFrameworkBundle();
      v60 = OUTLINED_FUNCTION_1_12(v59);

      v61 = sub_24E347CF8();
      v167 = v62;
      v170 = v61;

      v63 = sub_24E347CB8();
      v64 = GKGameCenterUIFrameworkBundle();
      v65 = OUTLINED_FUNCTION_1_12(v64);

      v66 = sub_24E347CF8();
      v163 = v67;
      v165 = v66;

      v29 = sub_24E347CB8();
      v68 = GKGameCenterUIFrameworkBundle();
      v69 = OUTLINED_FUNCTION_1_12(v68);

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();

      v70 = sub_24E347CB8();
      v71 = GKGameCenterUIFrameworkBundle();
      v72 = OUTLINED_FUNCTION_1_18(v71);

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_24E36A270;
      v74 = MEMORY[0x277D837D0];
      *(v73 + 56) = MEMORY[0x277D837D0];
      v75 = sub_24DF95A7C();
      *(v73 + 32) = v5;
      *(v73 + 40) = v9;
      *(v73 + 96) = v74;
      *(v73 + 104) = v75;
      *(v73 + 64) = v75;
      *(v73 + 72) = v5;
      *(v73 + 80) = v9;

      sub_24E347D18();
      OUTLINED_FUNCTION_7_7();

      v76 = sub_24E347CB8();
      v20 = GKGameCenterUIFrameworkBundle();
      v77 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      v39 = 0;
      *a4 = v170;
      *(a4 + 8) = v167;
      v78 = v163;
      *(a4 + 16) = v165;
      goto LABEL_16;
    case 3:
      v79 = [a1 imageURL];
      v80 = sub_24E347CF8();
      v82 = v81;

      type metadata accessor for Artwork();
      v174 = v80;
      v175 = v82;
      v173[0] = 25186;
      v173[1] = 0xE200000000000000;
      v83 = Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(&v174, 0, v173, MEMORY[0x277D84F90], 512.0, 512.0);
      v84 = OUTLINED_FUNCTION_3_11();
      v85 = GKGameCenterUIFrameworkBundle();
      v86 = OUTLINED_FUNCTION_1_12(v85);

      v171 = sub_24E347CF8();
      v88 = v87;

      v89 = sub_24E347CB8();
      v90 = GKGameCenterUIFrameworkBundle();
      v91 = OUTLINED_FUNCTION_1_12(v90);

      v29 = sub_24E347CF8();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v4 = OUTLINED_FUNCTION_17_2(v92);
      v39 = 1;
      v4[2] = 1;
      v4[3] = 2;
      v93 = [v9 title];
      v6 = sub_24E347CF8();
      v95 = v94;

      v4[7] = MEMORY[0x277D837D0];
      v4[8] = sub_24DF95A7C();
      v4[4] = v6;
      v4[5] = v95;
      sub_24E347D18();
      OUTLINED_FUNCTION_6_9();

      v96 = sub_24E347CB8();
      v20 = GKGameCenterUIFrameworkBundle();
      v97 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      v9 = 0;
      *a4 = v171;
      *(a4 + 8) = v88;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = v83;
      v38 = 6;
      goto LABEL_6;
    case 4:
      v6 = 0xD00000000000001BLL;
      v40 = sub_24E347CB8();
      v41 = GKGameCenterUIFrameworkBundle();
      v42 = OUTLINED_FUNCTION_1_12(v41);

      v43 = sub_24E347CF8();
      v45 = v44;

      [v9 percentComplete];
      v47 = v46;
      v29 = sub_24E347CB8();
      v48 = GKGameCenterUIFrameworkBundle();
      v49 = OUTLINED_FUNCTION_1_12(v48);

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();

      v50 = [v9 title];
      v51 = sub_24E347CF8();
      v20 = v52;

      v174 = v29;
      v175 = v4;

      MEMORY[0x25303E950](v51, v20);

      v53 = sub_24E347CB8();
      v54 = GKGameCenterUIFrameworkBundle();
      v55 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      v9 = 0;
      *a4 = v43;
      *(a4 + 8) = v45;
      *(a4 + 16) = v47;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v38 = 7;
      v39 = 1;
LABEL_6:
      v5 = 0xE000000000000000;
      goto LABEL_7;
    case 5:
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          v146 = OUTLINED_FUNCTION_2_12();
          v147 = GKGameCenterUIFrameworkBundle();
          v148 = OUTLINED_FUNCTION_1_12(v147);

          v149 = sub_24E347CF8();
          v168 = v150;
          v172 = v149;

          v151 = sub_24E347CB8();
          v152 = GKGameCenterUIFrameworkBundle();
          v153 = OUTLINED_FUNCTION_1_12(v152);

          sub_24E347CF8();
          OUTLINED_FUNCTION_12_2();

          v29 = sub_24E347CB8();
          v154 = GKGameCenterUIFrameworkBundle();
          v155 = OUTLINED_FUNCTION_1_12(v154);

          sub_24E347CF8();
          OUTLINED_FUNCTION_6_9();

          v156 = sub_24E347CB8();
          v157 = GKGameCenterUIFrameworkBundle();
          v158 = OUTLINED_FUNCTION_4_9(v157);

          v9 = sub_24E347CF8();
          v6 = v159;

          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
          v161 = OUTLINED_FUNCTION_17_2(v160);
          *(v161 + 16) = xmmword_24E367D20;
          OUTLINED_FUNCTION_11_2(v161, MEMORY[0x277D83B88]);
          OUTLINED_FUNCTION_7_7();

          v20 = OUTLINED_FUNCTION_9_5();
        }

        else
        {
          v116 = OUTLINED_FUNCTION_3_11();
          v117 = GKGameCenterUIFrameworkBundle();
          v118 = OUTLINED_FUNCTION_1_12(v117);

          v119 = sub_24E347CF8();
          v168 = v120;
          v172 = v119;

          v121 = sub_24E347CB8();
          v122 = GKGameCenterUIFrameworkBundle();
          v123 = OUTLINED_FUNCTION_1_12(v122);

          sub_24E347CF8();
          OUTLINED_FUNCTION_12_2();

          v29 = sub_24E347CB8();
          v124 = GKGameCenterUIFrameworkBundle();
          v125 = OUTLINED_FUNCTION_1_12(v124);

          sub_24E347CF8();
          OUTLINED_FUNCTION_6_9();

          v9 = sub_24E347CB8();
          v126 = GKGameCenterUIFrameworkBundle();
          v127 = OUTLINED_FUNCTION_4_9(v126);

          sub_24E347CF8();
          OUTLINED_FUNCTION_7_7();

          v20 = sub_24E347CB8();
        }

        v128 = GKGameCenterUIFrameworkBundle();
        v115 = OUTLINED_FUNCTION_1_18(v128);
      }

      else
      {
        v129 = OUTLINED_FUNCTION_2_12();
        v130 = GKGameCenterUIFrameworkBundle();
        v131 = OUTLINED_FUNCTION_1_12(v130);

        v132 = sub_24E347CF8();
        v168 = v133;
        v172 = v132;

        v134 = sub_24E347CB8();
        v135 = GKGameCenterUIFrameworkBundle();
        v136 = OUTLINED_FUNCTION_1_12(v135);

        sub_24E347CF8();
        OUTLINED_FUNCTION_12_2();

        v29 = sub_24E347CB8();
        v137 = GKGameCenterUIFrameworkBundle();
        v138 = OUTLINED_FUNCTION_1_12(v137);

        sub_24E347CF8();
        OUTLINED_FUNCTION_6_9();

        v139 = sub_24E347CB8();
        v140 = GKGameCenterUIFrameworkBundle();
        v141 = OUTLINED_FUNCTION_4_9(v140);

        v9 = sub_24E347CF8();
        v6 = v142;

        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
        v144 = OUTLINED_FUNCTION_17_2(v143);
        *(v144 + 16) = xmmword_24E367D20;
        OUTLINED_FUNCTION_11_2(v144, MEMORY[0x277D83B88]);
        OUTLINED_FUNCTION_7_7();

        v20 = OUTLINED_FUNCTION_9_5();
        v145 = GKGameCenterUIFrameworkBundle();
        v115 = OUTLINED_FUNCTION_1_18(v145);
      }

LABEL_15:
      v162 = v115;

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      v39 = 0;
      *a4 = v172;
      *(a4 + 8) = v168;
      *(a4 + 16) = v7;
      v78 = v164;
LABEL_16:
      *(a4 + 24) = v78;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      goto LABEL_17;
    default:
      v11 = OUTLINED_FUNCTION_3_11();
      v12 = GKGameCenterUIFrameworkBundle();
      v13 = OUTLINED_FUNCTION_16_2(v12);

      v14 = sub_24E347CF8();
      v166 = v15;
      v169 = v14;

      v16 = sub_24E347CB8();
      v17 = GKGameCenterUIFrameworkBundle();
      v18 = OUTLINED_FUNCTION_16_2(v17);

      sub_24E347CF8();
      v5 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v20 = swift_allocObject();
      *(v20 + 1) = xmmword_24E36A270;
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v22 = objc_opt_self();
      v4 = &selRef_local;
      v23 = [v22 localizedStringFromNumber:v21 numberStyle:1];
      v24 = sub_24E347CF8();
      v26 = v25;

      v27 = MEMORY[0x277D837D0];
      *(v20 + 7) = MEMORY[0x277D837D0];
      v28 = sub_24DF95A7C();
      *(v20 + 8) = v28;
      *(v20 + 4) = v24;
      *(v20 + 5) = v26;
      v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v30 = [v22 localizedStringFromNumber:v29 numberStyle:1];
      v31 = sub_24E347CF8();
      v6 = v32;

      *(v20 + 12) = v27;
      *(v20 + 13) = v28;
      *(v20 + 9) = v31;
      *(v20 + 10) = v6;
      sub_24E347D18();
      OUTLINED_FUNCTION_6_9();

      v9 = sub_24E347CB8();
      v33 = GKGameCenterUIFrameworkBundle();
      v34 = OUTLINED_FUNCTION_4_9(v33);

      sub_24E347CF8();
      OUTLINED_FUNCTION_7_7();

      v35 = OUTLINED_FUNCTION_9_5();
      v36 = GKGameCenterUIFrameworkBundle();
      v37 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_8_7();

      *a4 = v169;
      *(a4 + 8) = v166;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      v38 = 8;
      v39 = 1;
LABEL_7:
      *(a4 + 40) = v38;
LABEL_17:
      *(a4 + 48) = v29;
      *(a4 + 56) = v4;
      *(a4 + 64) = v9;
      *(a4 + 72) = v5;
      *(a4 + 80) = v39;
      *(a4 + 88) = v20;
      *(a4 + 96) = v6;
      *(a4 + 104) = 0;
      return;
  }
}

uint64_t sub_24DF9B4B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24DF9B52C(v6);
  return sub_24E348A58();
}

void sub_24DF9B52C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E15530C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24DF9B810(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24DF9B60C(0, v3, 1, a1);
  }
}

void sub_24DF9B60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_24E343368();
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v32 = v14;
      v33 = a3;
      v16 = *(v36 + 8 * a3);
      v31 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 lastReportedDate];
        sub_24E343328();

        v22 = [v20 lastReportedDate];
        v23 = v34;
        sub_24E343328();

        LOBYTE(v22) = sub_24E3432F8();
        v24 = *v13;
        v25 = v23;
        v26 = v35;
        (*v13)(v25, v35);
        v24(v12, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v27 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v27;
        v14 -= 8;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v33 + 1;
      v14 = v32 + 8;
      v15 = v31 - 1;
      if (v33 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24DF9B810(void ***a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v137 = a1;
  v149 = sub_24E343368();
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v6);
  v148 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_4();
  v142 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_92:
    v149 = *v137;
    if (!v149)
    {
      goto LABEL_136;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v122 = v143;
      v123 = a4;
LABEL_95:
      v125 = (v123 + 16);
      for (i = *(v123 + 2); ; *v125 = i)
      {
        if (i < 2)
        {

          v143 = v122;
          return;
        }

        OUTLINED_FUNCTION_13_2();
        if (!v127)
        {
          goto LABEL_133;
        }

        a4 = v126;
        v128 = &v126[16 * i];
        v129 = *v128;
        v130 = &v125[2 * i];
        v131 = *(v130 + 1);
        sub_24DF9C0A0((v127 + 8 * *v128), (v127 + 8 * *v130), (v127 + 8 * v131), v149);
        if (v122)
        {
          break;
        }

        if (v131 < v129)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v125)
        {
          goto LABEL_122;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        v132 = *v125 - i;
        if (*v125 < i)
        {
          goto LABEL_123;
        }

        i = *v125 - 1;
        sub_24E081A34(v130 + 16, v132, v130);
      }

      v143 = v122;
LABEL_105:

      return;
    }

LABEL_130:
    v122 = v143;
    v123 = sub_24E081A20(a4);
    goto LABEL_95;
  }

  v135 = a4;
  v144 = 0;
  v146 = (v9 + 8);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v144++;
    v138 = v12;
    if (v12 + 1 < v10)
    {
      v136 = v11;
      OUTLINED_FUNCTION_13_2();
      v141 = v13;
      v15 = *(v14 + 8 * v144);
      v17 = v16;
      v18 = (v14 + 8 * v16);
      v134 = 8 * v16;
      v20 = *v18;
      v19 = v18 + 2;
      v21 = v15;
      v22 = v20;
      v23 = [v21 lastReportedDate];
      v24 = v147;
      sub_24E343328();

      v25 = [v22 lastReportedDate];
      v26 = v148;
      sub_24E343328();

      LODWORD(v140) = sub_24E3432F8();
      v27 = *v146;
      v28 = v26;
      a4 = v149;
      (*v146)(v28, v149);
      v139 = v27;
      (v27)(v24, a4);

      v29 = v141;
      v30 = (v17 + 2);
      while (1)
      {
        v31 = v30;
        if (v144 + 1 >= v29)
        {
          break;
        }

        v32 = v144 + 1;
        v34 = *(v19 - 1);
        v33 = *v19;
        v145 = v31;
        v35 = v33;
        v36 = v34;
        v37 = [v35 lastReportedDate];
        v144 = v32;
        v38 = v147;
        sub_24E343328();

        v39 = [v36 lastReportedDate];
        v40 = v148;
        sub_24E343328();

        LODWORD(v39) = sub_24E3432F8() & 1;
        v41 = v40;
        a4 = v149;
        v42 = v139;
        (v139)(v41, v149);
        (v42)(v38, a4);

        v31 = v145;
        ++v19;
        v30 = (v145 + 1);
        v29 = v141;
        if ((v140 & 1) != v39)
        {
          goto LABEL_9;
        }
      }

      v144 = v29;
LABEL_9:
      if (v140)
      {
        v12 = v138;
        if (v144 < v138)
        {
          goto LABEL_127;
        }

        if (v138 >= v144)
        {
          v11 = v136;
        }

        else
        {
          if (v29 >= v31)
          {
            v43 = v31;
          }

          else
          {
            v43 = v29;
          }

          v44 = 8 * v43 - 8;
          v45 = v144;
          v46 = v138;
          v11 = v136;
          v47 = v134;
          do
          {
            if (v46 != --v45)
            {
              v48 = *v142;
              if (!*v142)
              {
                goto LABEL_134;
              }

              v49 = *(v48 + v47);
              *(v48 + v47) = *(v48 + v44);
              *(v48 + v44) = v49;
            }

            ++v46;
            v44 -= 8;
            v47 += 8;
          }

          while (v46 < v45);
        }
      }

      else
      {
        v11 = v136;
        v12 = v138;
      }
    }

    v50 = v142[1];
    if (v144 < v50)
    {
      if (__OFSUB__(v144, v12))
      {
        goto LABEL_126;
      }

      if (v144 - v12 < v135)
      {
        break;
      }
    }

LABEL_39:
    if (v144 < v12)
    {
      goto LABEL_125;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = a4;
    }

    else
    {
      v116 = OUTLINED_FUNCTION_5_10();
      sub_24E076FA4(v116, v117, v118, v119);
      v11 = v120;
    }

    v70 = *(v11 + 2);
    v69 = *(v11 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      sub_24E076FA4(v69 > 1, v70 + 1, 1, v11);
      v11 = v121;
    }

    *(v11 + 2) = v71;
    v72 = v11 + 32;
    v73 = &v11[16 * v70 + 32];
    v74 = v144;
    *v73 = v138;
    v73[1] = v74;
    v145 = *v137;
    if (!v145)
    {
      goto LABEL_135;
    }

    if (v70)
    {
      while (1)
      {
        v75 = v71 - 1;
        v76 = &v72[2 * v71 - 2];
        v77 = &v11[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v78 = *(v11 + 4);
          v79 = *(v11 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_59:
          if (v81)
          {
            goto LABEL_112;
          }

          v93 = *v77;
          v92 = *(v77 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_115;
          }

          v97 = v76[1];
          v98 = v97 - *v76;
          if (__OFSUB__(v97, *v76))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v95, v98))
          {
            goto LABEL_120;
          }

          if (v95 + v98 >= v80)
          {
            if (v80 < v98)
            {
              v75 = v71 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v71 < 2)
        {
          goto LABEL_114;
        }

        v100 = *v77;
        v99 = *(v77 + 1);
        v88 = __OFSUB__(v99, v100);
        v95 = v99 - v100;
        v96 = v88;
LABEL_74:
        if (v96)
        {
          goto LABEL_117;
        }

        v102 = *v76;
        v101 = v76[1];
        v88 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v88)
        {
          goto LABEL_119;
        }

        if (v103 < v95)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v75 - 1 >= v71)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_13_2();
        if (!v108)
        {
          goto LABEL_132;
        }

        a4 = v107;
        v110 = &v72[2 * v109];
        v111 = *v110;
        v112 = &v72[2 * v75];
        v113 = *(v112 + 1);
        v114 = v143;
        sub_24DF9C0A0((v108 + 8 * *v110), (v108 + 8 * *v112), (v108 + 8 * v113), v145);
        v143 = v114;
        if (v114)
        {
          goto LABEL_105;
        }

        if (v113 < v111)
        {
          goto LABEL_107;
        }

        v115 = *(a4 + 2);
        if (v75 > v115)
        {
          goto LABEL_108;
        }

        *v110 = v111;
        v110[1] = v113;
        if (v75 >= v115)
        {
          goto LABEL_109;
        }

        v71 = v115 - 1;
        sub_24E081A34(v112 + 16, v115 - 1 - v75, &v72[2 * v75]);
        v11 = a4;
        *(a4 + 2) = v115 - 1;
        if (v115 <= 2)
        {
          goto LABEL_88;
        }
      }

      v82 = &v72[2 * v71];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_110;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_111;
      }

      v89 = *(v77 + 1);
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_113;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_116;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = v76[1];
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_124;
        }

        if (v80 < v106)
        {
          v75 = v71 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v142[1];
    if (v144 >= v10)
    {
      goto LABEL_92;
    }
  }

  v51 = v135 + v12;
  if (__OFADD__(v12, v135))
  {
    goto LABEL_128;
  }

  if (v51 >= v50)
  {
    v51 = v142[1];
  }

  if (v51 < v12)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v144 == v51)
  {
    goto LABEL_39;
  }

  v136 = v11;
  OUTLINED_FUNCTION_13_2();
  v145 = v52;
  v53 = &v52[v144 - 1];
  v55 = v54 - v144;
  v139 = v56;
LABEL_32:
  v57 = v145[v144];
  v140 = v55;
  v141 = v53;
  while (1)
  {
    v58 = *v53;
    v59 = v57;
    v60 = v58;
    v61 = [v59 lastReportedDate];
    v62 = v147;
    sub_24E343328();

    v63 = [v60 lastReportedDate];
    v64 = v148;
    sub_24E343328();

    LOBYTE(v63) = sub_24E3432F8();
    a4 = *v146;
    v65 = v64;
    v66 = v149;
    (*v146)(v65, v149);
    (a4)(v62, v66);

    if ((v63 & 1) == 0)
    {
LABEL_37:
      v53 = v141 + 8;
      v55 = v140 - 1;
      if (++v144 == v139)
      {
        v144 = v139;
        v11 = v136;
        v12 = v138;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v145)
    {
      break;
    }

    v67 = *v53;
    v57 = *(v53 + 8);
    *v53 = v57;
    *(v53 + 8) = v67;
    v53 -= 8;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_24DF9C0A0(id *a1, id *a2, id *a3, void **a4)
{
  v55 = sub_24E343368();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - v9;
  v10 = a2 - a1;
  v52 = (v11 + 8);
  v12 = a3 - a2;
  if (v10 < v12)
  {
    sub_24E130EB0(a1, a2 - a1, a4);
    v13 = &a4[v10];
    v50 = v13;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v13 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v56 = a1;
      v15 = *a4;
      v16 = *a2;
      v17 = v15;
      v18 = [v16 lastReportedDate];
      v19 = v53;
      sub_24E343328();

      v20 = [v17 lastReportedDate];
      v21 = v54;
      sub_24E343328();

      LOBYTE(v20) = sub_24E3432F8();
      v22 = a4;
      v23 = *v52;
      v24 = v21;
      v25 = v55;
      (*v52)(v24, v55);
      v23(v19, v25);

      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = a2;
      v27 = v56;
      if (v56 != a2++)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v27 + 1;
      v13 = v50;
    }

    v26 = a4++;
    v27 = v56;
    if (v56 == v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v27 = *v26;
    goto LABEL_13;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v13 = &a4[v12];
  v56 = a1;
  v48 = a4;
  v29 = v52;
LABEL_15:
  v30 = a2 - 1;
  --a3;
  v49 = a2 - 1;
  v50 = a2;
  while (v13 > a4 && a2 > a1)
  {
    v32 = *v30;
    v33 = *(v13 - 1);
    i = v33;
    v34 = v32;
    v35 = [v33 lastReportedDate];
    v36 = v53;
    sub_24E343328();

    v37 = [v34 lastReportedDate];
    v38 = v54;
    sub_24E343328();

    LOBYTE(v37) = sub_24E3432F8();
    v39 = *v29;
    v40 = v38;
    v41 = v55;
    (*v29)(v40, v55);
    v39(v36, v41);

    v42 = a3 + 1;
    if (v37)
    {
      v43 = v49;
      a2 = v49;
      a4 = v48;
      a1 = v56;
      if (v42 != v50)
      {
        *a3 = *v49;
        a2 = v43;
      }

      goto LABEL_15;
    }

    if (v13 != v42)
    {
      *a3 = *(v13 - 1);
    }

    --a3;
    --v13;
    a4 = v48;
    v30 = v49;
    a2 = v50;
    a1 = v56;
  }

LABEL_28:
  v44 = v13 - a4;
  if (a2 != a4 || a2 >= &a4[v44])
  {
    memmove(a2, a4, 8 * v44);
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI21AchievementsHighlightO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DF9C49C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_24DF9C4DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_24DF9C520(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  a1[7] = a3;
  a1[8] = v3;
  a1[4] = 1;

  return sub_24E347D18();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for DashboardLeaderboardsChicletAction(uint64_t a1)
{
  result = qword_27F1DF0F8;
  if (!qword_27F1DF0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DF9C740(uint64_t a1)
{
  sub_24DF88A8C(319, &qword_27F1DF108, 0x277D0C068);
  if (v1 <= 0x3F)
  {
    sub_24DF9C7EC(319);
    if (v2 <= 0x3F)
    {
      sub_24E347208();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24DF9C7EC(uint64_t a1)
{
  if (!qword_27F1DF110)
  {
    sub_24DF88A8C(255, &qword_27F1DF118, off_279666DA0);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DF110);
    }
  }
}

uint64_t sub_24DF9C854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DF9C8C8()
{
  type metadata accessor for SignInProfileSection();
  result = swift_allocObject();
  *(result + 16) = 280;
  return result;
}

uint64_t sub_24DF9C8F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v43 = v5 - v4;
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v41 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v42 = &v37[-v12];
  v13 = sub_24E3433A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v37[-v18];
  v48[0] = 0;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E343398();
  v40 = *(v14 + 16);
  v40(v16, v19, v13);
  v39 = sub_24DF9D4DC(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  v21 = *(v14 + 8);
  v21(v19, v13);

  v49 = sub_24DF9D478;
  v50 = v20;
  v51 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24E367D20;
  sub_24E343AA8();
  v23 = sub_24E343648();
  v25 = v24;
  sub_24DF9D480(v48, v47);
  if (qword_27F1DDE48 != -1)
  {
    swift_once();
  }

  v38 = byte_27F20B8B0;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_24E343398();
  v40(v16, v19, v13);
  sub_24E348918();
  v21(v19, v13);
  v26 = type metadata accessor for DetailData(0);
  *(v22 + 56) = v26;
  *(v22 + 64) = sub_24DF9D4DC(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  *(boxed_opaque_existential_1 + 25) = 0u;
  boxed_opaque_existential_1[27] = 0;
  *(boxed_opaque_existential_1 + 23) = 0u;
  v28 = *(v26 + 56);
  v29 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v28, 1, 1, v29);
  v30 = boxed_opaque_existential_1 + *(v26 + 60);
  sub_24DF8BD34(v44, boxed_opaque_existential_1);
  *(boxed_opaque_existential_1 + 40) = 0;
  boxed_opaque_existential_1[6] = v23;
  boxed_opaque_existential_1[7] = v25;
  boxed_opaque_existential_1[9] = 0;
  boxed_opaque_existential_1[10] = 0;
  boxed_opaque_existential_1[8] = 0;
  sub_24DF8BD90(v47, (boxed_opaque_existential_1 + 11), &qword_27F1DEE88, &unk_24E36BF90);
  boxed_opaque_existential_1[20] = 0;
  boxed_opaque_existential_1[21] = 0;
  *(boxed_opaque_existential_1 + 176) = 0;
  *(boxed_opaque_existential_1 + 177) = v38;
  *v30 = 0;
  v30[8] = 0;

  sub_24DF8BDF0(v45, (boxed_opaque_existential_1 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v32 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x74656C63696863;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v32;
  *(inited + 80) = 0x6973736572706D69;
  v33 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v33;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v32;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v32;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v23;
  *(inited + 200) = v25;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v34 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v34);
  v35 = v42;
  sub_24E347488();
  sub_24DF8BE60(v44);
  sub_24DF8BFF4(v45, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v47, &qword_27F1DEE88, &unk_24E36BF90);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v29);
  sub_24DF8BEB4(v35, boxed_opaque_existential_1 + v28);
  sub_24DF9D524(v48);
  return v22;
}

void sub_24DF9CF34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24E24EAA8();
  }
}

uint64_t sub_24DF9CF88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v6 = type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = [objc_opt_self() linkWithBundleIdentifier_];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 flow];

    v12 = sub_24E028F3C(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24E367D20;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24DF95A7C();
  if (v15)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v15)
  {
    v21 = v15;
  }

  *(v19 + 32) = v20;
  *(v19 + 40) = v21;

  v22 = sub_24E347D18();
  v24 = v23;

  v38[0] = v12;
  v38[1] = v15;
  v38[5] = &type metadata for PrivacyPolicyAction;
  v38[6] = sub_24DF9D364();
  v39 = 1;
  v25 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
  *v10 = v22;
  v10[1] = v24;
  sub_24DF8BBD0(v38, (v10 + 3));
  sub_24DF8BD90(v5, v10 + *(v6 + 28), &qword_27F1DEE70, &unk_24E369E70);
  v26 = objc_opt_self();
  v27 = [v26 labelColor];
  sub_24DF8BFF4(v5, &qword_27F1DEE70, &unk_24E369E70);
  sub_24DF8BC2C(v38);
  v28 = [v26 secondaryLabelColor];

  v10[2] = v28;
  v29 = type metadata accessor for HeaderData(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v29);
  v30 = type metadata accessor for Shelf.Presentation(0);
  v31 = v30[5];
  sub_24DF9D3B8(v10, a1 + v31);
  __swift_storeEnumTagSinglePayload(a1 + v31, 0, 1, v6);
  v32 = a1 + v30[11];
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 1;
  v33 = a1 + v30[12];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (a1 + v30[13]);
  v35 = (a1 + v30[14]);
  v36 = (a1 + v30[15]);
  *(a1 + v30[6]) = 1;
  *v34 = 0;
  v34[1] = 0;
  *v35 = 0;
  v35[1] = 0;
  *v36 = 0;
  v36[1] = 0;
  *(a1 + v30[7]) = 1;
  *(a1 + v30[8]) = 1;
  *(a1 + v30[9]) = 1;
  *(a1 + v30[10]) = 0;
  return sub_24DF9D41C(v10);
}

unint64_t sub_24DF9D364()
{
  result = qword_27F1DF120;
  if (!qword_27F1DF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF120);
  }

  return result;
}

uint64_t sub_24DF9D3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FooterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF9D41C(uint64_t a1)
{
  v2 = type metadata accessor for FooterData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF9D4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DF9D578@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v38 = a1;
  v4 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  sub_24E3442B8();
  sub_24E344408();
  sub_24DF9D9D0((v3 + 5), &v41);
  v37 = v6;
  v39 = v12;
  if (v42)
  {
    sub_24DE56CE8(&v41, __src);
    sub_24E344418();
    __swift_destroy_boxed_opaque_existential_1(__src);
    (*(v6 + 8))(v12, v4);
    (*(v6 + 32))(v12, v9, v4);
    v22 = *(v3 + 14);
  }

  else
  {
    sub_24DF9DA40(&v41);
    v22 = 0;
  }

  *(swift_allocObject() + 16) = v22;
  sub_24E3442C8();

  v34 = *(v15 + 8);
  v34(v21, v13);
  v35 = *(v15 + 32);
  v35(v21, v18, v13);
  v23 = v4;
  v42 = v4;
  v43 = MEMORY[0x277D22778];
  v36 = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  v25 = v37;
  (*(v37 + 16))(boxed_opaque_existential_1, v39, v23);
  sub_24DF9DB44(v3, __src);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0x80uLL);
  sub_24E3442C8();

  v27 = v34;
  v34(v21, v13);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v35(v21, v18, v13);
  v28 = v3[10];
  v29 = v3[11];
  v30 = v3[12];
  v31 = v3[13];
  __src[3] = v13;
  __src[4] = MEMORY[0x277D226E0];
  v32 = __swift_allocate_boxed_opaque_existential_1(__src);
  (*(v15 + 16))(v32, v21, v13);
  MEMORY[0x25303B510](__src, v28, v29, v30, v31);
  (*(v25 + 8))(v39, v36);
  return v27(v21, v13);
}

uint64_t sub_24DF9D9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF60, &qword_24E36A900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF9DA40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF60, &qword_24E36A900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF9DB98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24DF9DBD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DF9DC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DF9DD68();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24DF9DCA0()
{
  result = qword_27F1DF128;
  if (!qword_27F1DF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF128);
  }

  return result;
}

unint64_t sub_24DF9DCF8()
{
  result = qword_27F1DF130;
  if (!qword_27F1DF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF130);
  }

  return result;
}

unint64_t sub_24DF9DD68()
{
  result = qword_27F1DF138;
  if (!qword_27F1DF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF138);
  }

  return result;
}

uint64_t type metadata accessor for LargePlayerLockupData(uint64_t a1)
{
  result = qword_27F1DF148;
  if (!qword_27F1DF148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DF9DEAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_24DF9DF3C(uint64_t a1)
{
  sub_24DF9E030(319, &qword_280BDFCA8, &type metadata for AvatarArtworkLoaderConfig);
  if (v1 <= 0x3F)
  {
    sub_24DF9E030(319, &qword_280BE0128, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24DF9E07C(319);
      if (v3 <= 0x3F)
      {
        sub_24DF9E0E0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24DF9E030(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24DF9E07C(uint64_t a1)
{
  if (!qword_280BE0130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF158, &unk_24E37CFA0);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0130);
    }
  }
}

void sub_24DF9E0E0(uint64_t a1)
{
  if (!qword_280BE0650)
  {
    sub_24E3474B8();
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0650);
    }
  }
}

uint64_t sub_24DF9E138(uint64_t a1)
{
  result = sub_24DF9E17C(qword_27F1DF160, &unk_24E36AA30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DF9E17C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LargePlayerLockupData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24DF9E1C4(uint64_t a1)
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

uint64_t sub_24DF9E2C8()
{
  v0 = sub_24DF9E258();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DF9E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DF9E394(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = OUTLINED_FUNCTION_2_13();
  v4(v3);
  return sub_24E347D28();
}

uint64_t sub_24DF9E444(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = OUTLINED_FUNCTION_2_13();
  v4(v3);
  v5 = sub_24E347D28();
  MEMORY[0x25303E950](v5);

  MEMORY[0x25303E950](41, 0xE100000000000000);
  return 0x7463657269646E49;
}

uint64_t sub_24DF9E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = *(v7 + 16);
  (v15)(&v20 - v13, v16 + *(*v16 + 88), v12);
  v15(v10, a2 + *(*a2 + 88), a3);
  v17 = sub_24E347CA8();
  v18 = *(v7 + 8);
  v18(v10, a3);
  v18(v14, a3);
  return v17 & 1;
}

uint64_t sub_24DF9E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v11 + *(*v11 + 88));
  sub_24E347C58();
  return (*(v6 + 8))(v10, a3);
}

uint64_t sub_24DF9E814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E348D18();
  sub_24DF9E720(v7, a1, a2, a3);
  return sub_24E348D68();
}

uint64_t sub_24DF9E89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_24E348D18();
  sub_24DF9E720(v7, *v3, *(a2 + 16), v5);
  return sub_24E348D68();
}

uint64_t sub_24DF9E938()
{
  v1 = v0;
  v2 = sub_24E3442D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-v5];
  v7 = sub_24E3442B8();
  sub_24E2D4E50(v7, v8);
  sub_24DF9EC2C(v1, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0xA0uLL);
  sub_24E3442C8();

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_1_19();
  v10(v11);
  v12 = *(v3 + 32);
  v13 = OUTLINED_FUNCTION_0_25();
  v12(v13);
  sub_24DF9D9D0((v1 + 5), v25);
  if (v26)
  {
    OUTLINED_FUNCTION_2_14();
    __swift_destroy_boxed_opaque_existential_1(__src);
    v14 = OUTLINED_FUNCTION_1_19();
    v10(v14);
    v15 = OUTLINED_FUNCTION_0_25();
    v12(v15);
  }

  else
  {
    sub_24DF9DA40(v25);
  }

  sub_24DF9D9D0((v1 + 10), v25);
  if (v26)
  {
    OUTLINED_FUNCTION_2_14();
    __swift_destroy_boxed_opaque_existential_1(__src);
    v16 = OUTLINED_FUNCTION_1_19();
    v10(v16);
    v17 = OUTLINED_FUNCTION_0_25();
    v12(v17);
  }

  else
  {
    sub_24DF9DA40(v25);
  }

  v18 = v1[15];
  v19 = v1[16];
  v20 = v1[17];
  v21 = v1[18];
  __src[3] = v2;
  __src[4] = MEMORY[0x277D226E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  MEMORY[0x25303B510](__src, v18, v19, v20, v21);
  v23 = OUTLINED_FUNCTION_1_19();
  return (v10)(v23);
}

uint64_t sub_24DF9EC80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24DF9ECC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DF9ED38(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DF9EE58();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24DF9ED90()
{
  result = qword_27F1DF268;
  if (!qword_27F1DF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF268);
  }

  return result;
}

unint64_t sub_24DF9EDE8()
{
  result = qword_27F1DF270;
  if (!qword_27F1DF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF270);
  }

  return result;
}

unint64_t sub_24DF9EE58()
{
  result = qword_27F1DF278;
  if (!qword_27F1DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF278);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  sub_24DE56CE8((v0 - 320), v0 - 280);

  return sub_24E3442C8();
}

uint64_t sub_24DF9EF04()
{
  if (![v0 userInterfaceIdiom] || (result = GKIsXRUIIdiomShouldUsePhoneUI(), result))
  {

    return sub_24E348398();
  }

  return result;
}

uint64_t type metadata accessor for AchievementHighlight(uint64_t a1)
{
  result = qword_27F1DF288;
  if (!qword_27F1DF288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DF9F0EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_2();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_24DF9F180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_2();
  (*(v6 + 40))(v4, v5);
  return v4;
}

unint64_t sub_24DF9F218()
{
  result = qword_27F1DF280;
  if (!qword_27F1DF280)
  {
    type metadata accessor for AchievementHighlight(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF280);
  }

  return result;
}

void sub_24DF9F2A4(uint64_t a1)
{
  sub_24DF9E07C(319);
  if (v1 <= 0x3F)
  {
    sub_24DF9E0E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI20AchievementHighlightV5StyleO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24DF9F368(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_24DF9F3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24DF9F3EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24DF9F414(uint64_t a1, uint64_t a2)
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v3 = 12.0;
  if (result)
  {
    v4 = 12.0;
  }

  else
  {
    v4 = 14.0;
  }

  if (!result)
  {
    v3 = 16.0;
  }

  v5 = 55.0;
  if (result)
  {
    v5 = 40.0;
  }

  qword_27F20A910 = MEMORY[0x277D839F8];
  unk_27F20A918 = MEMORY[0x277D22A30];
  v6 = 22.0;
  qword_27F20A938 = MEMORY[0x277D839F8];
  unk_27F20A940 = MEMORY[0x277D22A30];
  qword_27F20A920 = *&v3;
  if (!result)
  {
    v6 = 30.0;
  }

  qword_27F20A8E8 = *&v5;
  qword_27F20A8F0 = *&v6;
  unk_27F20A8F8 = *&v4;
  byte_27F20A948 = 0;
  return result;
}

char *GKAddFriendsLockupView.__allocating_init(frame:metricsPageId:metricsPageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_29();
  v9 = objc_allocWithZone(v4);
  OUTLINED_FUNCTION_28();
  return GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(2, a1, a2, a3, a4);
}

char *GKAddFriendsLockupView.__allocating_init(frame:friendState:metricsPageId:metricsPageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29();
  v11 = objc_allocWithZone(v5);
  OUTLINED_FUNCTION_28();
  return GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(a1, a2, a3, a4, a5);
}

char *GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v74 = a3;
  v75 = a5;
  v73 = a1;
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - v11;
  v13 = (v5 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_24E1A5748(0x332E6E6F73726570, 0xED00006C6C69662ELL, 0);
  if (v14)
  {
    v15 = v14;
    v16 = [v14 imageWithRenderingMode_];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  *(v6 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_imageView) = v17;
  if (qword_27F1DDD08 != -1)
  {
    swift_once();
  }

  v18 = sub_24E344158();
  v19 = __swift_project_value_buffer(v18, qword_27F20B720);
  v20 = *(*(v18 - 8) + 16);
  v20(v12, v19, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  *(v6 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_textLabel) = sub_24E0AEF24(v12, 0, 0, 0, 1, 1);
  if (qword_27F1DDD28 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_27F20B768);
  v20(v12, v22, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  v23 = objc_allocWithZone(type metadata accessor for RoundedButton(0));
  *(v6 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_button) = sub_24E2C2254(v12);
  v24 = (v6 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_metricsPageId);
  v25 = v74;
  v26 = v75;
  *v24 = a2;
  v24[1] = v25;
  v27 = (v6 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_metricsPageType);
  *v27 = a4;
  v27[1] = v26;
  v76 = v6;
  v77 = ObjectType;

  v28 = OUTLINED_FUNCTION_28();
  v31 = objc_msgSendSuper2(v29, v30, v28);
  [v31 setLayoutMargins_];
  v32 = objc_opt_self();
  v33 = [v32 clearColor];
  [v31 setBackgroundColor_];

  v34 = [v31 layer];
  v35 = *MEMORY[0x277CDA5E8];
  [v34 setCompositingFilter_];

  v36 = OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_imageView;
  v37 = *&v31[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_imageView];
  v38 = [v32 secondaryLabelColor];
  [v37 setTintColor_];

  v39 = [*&v31[v36] layer];
  [v39 setCompositingFilter_];

  v40 = OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_textLabel;
  v41 = *&v31[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_textLabel];
  v42 = sub_24E2EC87C(v73);
  sub_24DFA0B40(v42, v43, v41);

  v44 = *&v31[v40];
  v45 = GKIsRemoteUI();
  v46 = &selRef_labelColor;
  if (!v45)
  {
    v46 = &selRef_secondaryLabelColor;
  }

  v47 = [v32 *v46];
  [v44 setTextColor_];

  v48 = [*&v31[v40] layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for PlayerCardTheme(0);
  if (*(__swift_project_value_buffer(v49, qword_27F20BF00) + *(v49 + 56) + 8))
  {
    v50 = sub_24E347CB8();
  }

  else
  {
    v50 = 0;
  }

  [v48 setCompositingFilter_];

  swift_unknownObjectRelease();
  v51 = OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_button;
  v52 = *&v31[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_button];
  if (GKIsRemoteUI())
  {
    if (qword_27F1DDDA8 != -1)
    {
      swift_once();
    }

    v53 = qword_27F20B7D0;
  }

  else
  {
    v53 = [v32 tertiarySystemFillColor];
  }

  v54 = v53;
  [v52 setBackgroundColor_];

  [*&v31[v51] setTitleEdgeInsets_];
  v55 = [*&v31[v51] layer];
  [v55 setCompositingFilter_];

  v56 = qword_27F1DDD30;
  v57 = *&v31[v51];
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = sub_24E347CB8();
  [v57 setTitle:v58 forState:0];

  v59 = *&v31[v51];
  v60 = GKIsRemoteUI();
  v61 = &selRef_systemBlueColor;
  if (v60)
  {
    v61 = &selRef_labelColor;
  }

  v62 = [v32 *v61];
  [v59 setTitleColor:v62 forState:0];

  [*&v31[v51] addTarget:v31 action:sel_didTapButton_ forControlEvents:0x2000];
  v63 = objc_opt_self();
  result = [v63 shared];
  if (!result)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v65 = result;
  v66 = [result isAccountModificationRestricted];

  if (v66)
  {
LABEL_28:

    goto LABEL_29;
  }

  result = [v63 shared];
  if (!result)
  {
    goto LABEL_35;
  }

  v67 = result;
  v68 = [result isAddingFriendsRestricted];

  if (v68)
  {
    goto LABEL_28;
  }

  result = [v63 shared];
  if (result)
  {
    v70 = result;

    v71 = [v70 isGameCenterDisabled];

    if ((v71 & 1) == 0)
    {
      v69 = [objc_opt_self() _gkIsOnline];
      goto LABEL_30;
    }

LABEL_29:
    v69 = 0;
LABEL_30:
    [*&v31[v51] setEnabled_];
    [v31 addSubview_];
    [v31 addSubview_];
    [v31 addSubview_];

    return v31;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_24DF9FE98()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t GKAddFriendsLockupView.addFriendsHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t GKAddFriendsLockupView.addFriendsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6, v7);
}

uint64_t sub_24DFA0128@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DFA0D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4, v5);
}

uint64_t sub_24DFA01C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DFA0D28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24DE56C38(v3, v4);
  return sub_24DE73FA0(v8, v9);
}

Swift::Void __swiftcall GKAddFriendsLockupView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_layoutSubviews, v5);
  if (qword_27F1DD5E8 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_27F1DD5E8);
  }

  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_24E348458();
  byte_27F20A948 = v8 & 1;
  sub_24DFA0BB4(&qword_27F20A8E8, v18);
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_imageView];
  v11 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v12 = MEMORY[0x277D22A58];
  v20 = v11;
  v21 = MEMORY[0x277D22A58];
  v19 = v10;
  v13 = *&v1[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_textLabel];
  v23 = type metadata accessor for DynamicTypeLabel(0);
  v24 = MEMORY[0x277D22A68];
  v22 = v13;
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_button];
  v26 = type metadata accessor for RoundedButton(0);
  v27 = v12;
  v25 = v14;
  v15 = v10;
  v16 = v13;
  v17 = v14;
  [v1 bounds];
  [v1 layoutMargins];
  sub_24E2EC98C(v1);
  (*(v4 + 8))(v7, v3);
  sub_24DFA0C10(v18);
}

double GKAddFriendsLockupView.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (qword_27F1DD5E8 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_27F1DD5E8);
  }

  sub_24DFA0BB4(&qword_27F20A8E8, v18);
  v7 = *(v3 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_imageView);
  v8 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v9 = MEMORY[0x277D22A58];
  v18[16] = v8;
  v18[17] = MEMORY[0x277D22A58];
  v18[13] = v7;
  v10 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_textLabel);
  v18[21] = type metadata accessor for DynamicTypeLabel(0);
  v18[22] = MEMORY[0x277D22A68];
  v18[18] = v10;
  v11 = *(v4 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_button);
  v18[26] = type metadata accessor for RoundedButton(0);
  v18[27] = v9;
  v18[23] = v11;
  v12 = v7;
  v13 = v10;
  v14 = v11;
  OUTLINED_FUNCTION_3_12();
  sub_24E2ED024(a1, a2 - v15 - v16);
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_3_12();
  sub_24DFA0C10(v18);
  return a2;
}

uint64_t sub_24DFA07AC()
{
  v1 = v0;
  v14[3] = &type metadata for GKFeatureFlags;
  v14[4] = sub_24DFA0CB4();
  LOBYTE(v14[0]) = 15;
  v2 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v2)
  {
    type metadata accessor for GKMetricsBridge();
    static GKMetricsBridge.recordInviteFriendClickEvent(type:pageType:pageId:)();
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
    v4 = sub_24E347CB8();
    v5 = sub_24E347CB8();
    v6 = sub_24E347CB8();
    v7 = sub_24E347CB8();
    v8 = sub_24E347CB8();
    [v3 recordClickWithAction:v4 targetId:v5 targetType:v6 pageId:v7 pageType:v8];
  }

  v9 = v1 + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(v13);
    return sub_24DE73FA0(v11, v12);
  }

  return result;
}

id GKAddFriendsLockupView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id GKAddFriendsLockupView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24DFA0B40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setText_];
}

unint64_t sub_24DFA0CB4()
{
  result = qword_280BE0070;
  if (!qword_280BE0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE0070);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_12()
{

  return [v0 (v1 + 3448)];
}

void sub_24DFA0DB8(uint64_t a1)
{
  sub_24DFA8548(319, &qword_27F1DF770, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_24DFA0F60(319, &qword_27F1DF2E0, &qword_27F1E21A0, off_279667088, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24DFA0FC4(319);
      if (v3 <= 0x3F)
      {
        sub_24DFA1058();
        if (v4 <= 0x3F)
        {
          sub_24DFA7E4C(319, &qword_280BE0100, &qword_27F1DF2F8, &unk_24E3800B0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24E347638();
            if (v6 <= 0x3F)
            {
              sub_24DFA0F60(319, &qword_27F1DF300, &unk_27F1DFCF0, 0x277D0C048, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24DFA0F60(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_24DF88A8C(255, a3, a4);
    v7 = OUTLINED_FUNCTION_11_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24DFA0FC4(uint64_t a1)
{
  if (!qword_27F1DF2E8)
  {
    type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts(255);
    sub_24DFA8020(&unk_27F1DFD20);
    v1 = sub_24E3455D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DF2E8);
    }
  }
}

unint64_t sub_24DFA1058()
{
  result = qword_27F1DF2F0;
  if (!qword_27F1DF2F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F1DF2F0);
  }

  return result;
}

uint64_t sub_24DFA10BC@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + v4[7]);
  v34 = v1;
  sub_24E310ABC(sub_24DFA206C, v33, v5);
  v32 = v6;
  sub_24DFA8080();
  v7 = swift_allocObject();
  sub_24DFA7C18();
  v8 = (v1 + v4[9]);
  v9 = v8[1];
  v31 = *v8;
  v10 = v4[12];
  v11 = type metadata accessor for Content(0);
  v12 = v11[8];
  sub_24E347638();
  OUTLINED_FUNCTION_5_2();
  (*(v13 + 16))(&a1[v12], v1 + v10);
  v14 = *(v1 + v4[13]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v14;

  v30 = sub_24DFA16A4();
  v18 = v17;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  swift_storeEnumTagMultiPayload();
  *&a1[v11[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *&a1[v11[6]] = v32;
  v19 = &a1[v11[7]];
  *v19 = v31;
  *(v19 + 1) = v9;
  *&a1[v11[9]] = v14;
  swift_unknownObjectWeakInit();

  v20 = &a1[v11[11]];
  *v20 = v30;
  *(v20 + 1) = v18;
  v21 = &a1[v11[12]];
  *v21 = sub_24DFA208C;
  *(v21 + 1) = v7;
  v22 = sub_24E345CF8();
  v23 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF308, &qword_24E36B0A8) + 36)];
  sub_24DFA1798(sub_24DFA208C, v7, v23);

  v24 = sub_24E345398();
  LOBYTE(v9) = MEMORY[0x25303CDB0]((2 * v24));
  v25 = sub_24E345728();
  v26 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF310, &qword_24E36B0B0) + 36)];
  *v26 = v25;
  *(v26 + 1) = 0;
  v26[16] = 1;
  v26[17] = v9;
  *(v26 + 3) = v22;
  sub_24DFA8080();
  v27 = swift_allocObject();
  sub_24DFA7C18();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF318, &qword_24E36B0B8);
  v29 = &a1[*(result + 36)];
  *v29 = sub_24DFA3CE0;
  *(v29 + 1) = v27;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  return result;
}

id sub_24DFA1484@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for FriendsSuggestionsOnboardingView(0);
  v4 = sub_24E25EF48();
  v5 = [v3 contact];
  v6 = [v5 identifier];

  v7 = sub_24E347CF8();
  v9 = v8;

  LOBYTE(v7) = sub_24E00D4BC(v7, v9, v4);

  *a2 = v3;
  *(a2 + 8) = v7 & 1;
  return v3;
}

uint64_t sub_24DFA1568(uint64_t a1)
{
  sub_24DFA15A8();
  v2 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  return (*(a1 + *(v2 + 32)))();
}

uint64_t sub_24DFA15A8()
{
  v1 = objc_opt_self();
  v2 = [v1 local];
  v3 = [v2 shouldShowContactsIntegrationConsentScreen];

  v4 = [v1 local];
  v5 = [v4 shouldShowContactsIntegrationConsentScreen];

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v6 = *(type metadata accessor for FriendsSuggestionsOnboardingView(0) + 40);
  if (v5)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  return sub_24E32E900(6, 8, 1, v7, v3 ^ 1u, v0 + v6);
}

uint64_t sub_24DFA16A4()
{
  v0 = [objc_opt_self() local];
  [v0 shouldShowContactsIntegrationConsentScreen];

  v1 = sub_24E347CB8();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = sub_24E347CF8();
  return v4;
}

uint64_t sub_24DFA1798@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *&v34 = a2;
  *&v33 = a1;
  v35 = a3;
  v3 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF320, &qword_24E36B0C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v10 = sub_24E345658();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E028BC4(v13);
  v14 = sub_24E345638();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = 1;
    v16 = v35;
  }

  else
  {
    v17 = sub_24DFA16A4();
    v19 = v18;
    *v5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
    swift_storeEnumTagMultiPayload();
    *(v5 + v3[5]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v5 + v3[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
    swift_storeEnumTagMultiPayload();
    v20 = (v5 + v3[7]);
    *v20 = v17;
    v20[1] = v19;
    v21 = (v5 + v3[8]);
    v22 = v34;
    *v21 = v33;
    v21[1] = v22;
    *(v5 + v3[9]) = 0x4049000000000000;

    v23 = sub_24E3461D8();
    sub_24E3242B4(0, 0, 0, 0, 0x4030000000000000, 0, 0);
    v25 = v24;
    v26 = 0uLL;
    v27 = 0uLL;
    if ((v24 & 1) == 0)
    {
      sub_24E3451B8();
      *(&v27 + 1) = v28;
      *(&v26 + 1) = v29;
    }

    v33 = v27;
    v34 = v26;
    sub_24DFA7C18();
    v30 = &v8[*(v6 + 36)];
    *v30 = v23;
    v31 = v34;
    *(v30 + 24) = v33;
    *(v30 + 8) = v31;
    v30[40] = v25 & 1;
    sub_24DFA9344();
    v16 = v35;
    sub_24DFA9344();
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v16, v15, 1, v6);
}

uint64_t sub_24DFA1B1C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24E348698();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_24DFA1B88()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  v3 = [v2 origin];

  v4 = [v1 shared];
  [v4 setOrigin_];

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  return sub_24E32E770(6, 8, 3u, v3, v0 + *(v5 + 40), 0);
}

uint64_t sub_24DFA1C80()
{
  v1 = sub_24E345B68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  MEMORY[0x28223BE20](v5);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24DFA9344();
  }

  sub_24E348268();
  v7 = sub_24E346198();
  sub_24E343EA8();

  sub_24E345B58();
  swift_getAtKeyPath();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24DFA1E60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for Content(0);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E345658();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_24DFA208C()
{
  v1 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_24DFA1568(v3);
}

uint64_t sub_24DFA2108@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF368, &qword_24E36B160);
  MEMORY[0x28223BE20](v109);
  v2 = &v96[-v1];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF370, &qword_24E36B168);
  MEMORY[0x28223BE20](v119);
  v110 = &v96[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v111 = &v96[-v5];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF378, &qword_24E36B170);
  MEMORY[0x28223BE20](v115);
  v118 = &v96[-v6];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF380, &qword_24E36B178);
  MEMORY[0x28223BE20](v117);
  v99 = &v96[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF388, &unk_24E36B180);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v96[-v9];
  v103 = sub_24E345658();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v113 = sub_24E345F38();
  v121 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v100 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890, &qword_24E3714C0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v112 = &v96[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338, qword_24E36F580);
  MEMORY[0x28223BE20](v15 - 8);
  v104 = &v96[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v96[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v96[-v21];
  v23 = type metadata accessor for OnboardingHeaderView(0);
  v24 = (v23 - 8);
  v105 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = &v96[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v96[-v27];
  sub_24E343AA8();
  v29 = sub_24E343798();
  v31 = v30;
  v32 = sub_24E3437E8();
  v34 = v33;
  *v28 = swift_getKeyPath();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *(v28 + v24[7]) = xmmword_24E36AF70;
  v35 = (v28 + v24[8]);
  *v35 = v29;
  v35[1] = v31;
  v36 = v113;
  v37 = v24[9];
  v38 = v114;
  v39 = (v28 + v37);
  *v39 = v32;
  v39[1] = v34;
  sub_24DFA1C80();
  (v121[13])(v19, *MEMORY[0x277CE0558], v36);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v36);
  v40 = *(v13 + 56);
  v41 = v112;
  sub_24DFA9240();
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v41, 1, v36) != 1)
  {
    v98 = v22;
    v42 = v41;
    v43 = v104;
    sub_24DFA9240();
    if (__swift_getEnumTagSinglePayload(v42 + v40, 1, v36) != 1)
    {
      v44 = v121;
      v45 = v42 + v40;
      v46 = v100;
      (v121[4])(v100, v45, v36);
      sub_24DFA8020(&unk_27F1DF3C8);
      v97 = sub_24E347CA8();
      v47 = v44[1];
      v47(v46, v36);
      sub_24DFA9298(v19, &qword_27F1DF338, qword_24E36F580);
      sub_24DFA9298(v98, &qword_27F1DF338, qword_24E36F580);
      v47(v104, v36);
      sub_24DFA9298(v42, &qword_27F1DF338, qword_24E36F580);
      if ((v97 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_24DFA9298(v19, &qword_27F1DF338, qword_24E36F580);
    sub_24DFA9298(v98, &qword_27F1DF338, qword_24E36F580);
    (v121[1])(v43, v36);
    v41 = v42;
LABEL_6:
    sub_24DFA9298(v41, &unk_27F1DF890, &qword_24E3714C0);
    goto LABEL_9;
  }

  sub_24DFA9298(v19, &qword_27F1DF338, qword_24E36F580);
  sub_24DFA9298(v22, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v36) != 1)
  {
    goto LABEL_6;
  }

  sub_24DFA9298(v41, &qword_27F1DF338, qword_24E36F580);
LABEL_8:
  v48 = v101;
  sub_24DFA1E60(v101);
  v49 = sub_24E345638();
  (*(v102 + 8))(v48, v103);
  if ((v49 & 1) == 0)
  {
    v85 = sub_24E345BF8();
    v86 = v99;
    *v99 = v85;
    *(v86 + 8) = 0;
    *(v86 + 16) = 1;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF3C0, &qword_24E36B1D0);
    sub_24DFA2E2C(v38, v86 + *(v87 + 44));
    v88 = sub_24E3461D8();
    v89 = type metadata accessor for OnboardingTemplateView();
    static OnboardingTemplateView.horizontalLayoutHorizontalMargin.getter(v89, v90);
    sub_24E3451B8();
    v91 = v86 + *(v117 + 36);
    *v91 = v88;
    *(v91 + 8) = v92;
    *(v91 + 16) = v93;
    *(v91 + 24) = v94;
    *(v91 + 32) = v95;
    *(v91 + 40) = 0;
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24DFA8144();
    sub_24DFA81FC();
    sub_24E345E38();
    sub_24DFA9298(v86, &qword_27F1DF380, &qword_24E36B178);
    goto LABEL_12;
  }

LABEL_9:
  v121 = v28;
  sub_24DFA8080();
  *&v113 = swift_allocObject();
  sub_24DFA7C18();
  v50 = type metadata accessor for Content(0);
  v51 = *(v38 + v50[6]);
  v52 = v38 + v50[7];
  v53 = *(v52 + 8);
  v112 = *v52;
  v54 = v50[8];
  v55 = v109;
  v56 = *(v109 + 44);
  v57 = sub_24E347638();
  (*(*(v57 - 8) + 16))(v2 + v56, v38 + v54, v57);
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = v50[12];
  v60 = v38 + v50[11];
  v61 = *(v60 + 8);
  v107 = *v60;
  v62 = *(v38 + v59 + 8);
  *&v114 = *(v38 + v59);
  swift_unknownObjectWeakInit();
  *(v2 + v55[15]) = 0x404A000000000000;
  v63 = v2 + v55[16];
  v122 = 0;

  sub_24E346B78();
  v64 = v124;
  *v63 = v123;
  *(v63 + 1) = v64;
  *(v2 + v55[17]) = 3;
  v65 = v55[18];
  *(v2 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  swift_storeEnumTagMultiPayload();
  v66 = v55[19];
  *(v2 + v66) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v67 = v55[20];
  *(v2 + v67) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  v68 = v55[21];
  *(v2 + v68) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v69 = v112;
  v70 = v113;
  *v2 = sub_24DFA80D8;
  v2[1] = v70;
  v2[2] = v51;
  v2[3] = v69;
  v2[4] = v53;
  swift_unknownObjectWeakAssign();

  v71 = (v2 + v55[13]);
  *v71 = v107;
  v71[1] = v61;
  v72 = (v2 + v55[14]);
  *v72 = v114;
  v72[1] = v62;
  v73 = sub_24E3461D8();
  sub_24E3242B4(0x405C000000000000, 0, 0x4056000000000000, 0, 0x4020000000000000, 0, 0);
  v75 = v74;
  v76 = 0uLL;
  v77 = 0uLL;
  if ((v74 & 1) == 0)
  {
    sub_24E3451B8();
    *(&v77 + 1) = v78;
    *(&v76 + 1) = v79;
  }

  v113 = v77;
  v114 = v76;
  v80 = v110;
  sub_24DFA9344();
  v81 = &v80[*(v119 + 36)];
  *v81 = v73;
  v82 = v114;
  *(v81 + 24) = v113;
  *(v81 + 8) = v82;
  v81[40] = v75 & 1;
  v83 = v111;
  sub_24DFA9344();
  sub_24DFA9240();
  swift_storeEnumTagMultiPayload();
  sub_24DFA8144();
  sub_24DFA81FC();
  sub_24E345E38();
  sub_24DFA9298(v83, &qword_27F1DF370, &qword_24E36B168);
  v28 = v121;
LABEL_12:
  sub_24DFA9344();
  return sub_24DFA8BF8(v28, type metadata accessor for OnboardingHeaderView);
}

uint64_t sub_24DFA2E2C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF368, &qword_24E36B160);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v50 - v6);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF3D0, &qword_24E36B1D8) - 8;
  MEMORY[0x28223BE20](v57);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF3D8, &qword_24E36B1E0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v53 = &v50 - v20;
  sub_24E346E28();
  sub_24E3457F8();
  sub_24DFA8080();
  memcpy(&v18[*(v14 + 44)], __src, 0x70uLL);
  sub_24DFA9344();
  v21 = type metadata accessor for Content(0);
  v22 = *(a2 + v21[6]);
  v23 = (a2 + v21[7]);
  v24 = v23[1];
  v52 = *v23;
  v25 = v21[8];
  v26 = v5[13];
  v27 = sub_24E347638();
  (*(*(v27 - 8) + 16))(v7 + v26, a2 + v25, v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = v21[12];
  v30 = (a2 + v21[11]);
  v31 = v30[1];
  v50 = *v30;
  v32 = a2 + v29;
  v33 = *(a2 + v29);
  v34 = *(v32 + 8);
  v51 = v33;
  swift_unknownObjectWeakInit();
  *(v7 + v5[17]) = 0x404A000000000000;
  v35 = v7 + v5[18];
  v60 = 0;

  sub_24E346B78();
  v36 = v62[1];
  *v35 = v62[0];
  *(v35 + 1) = v36;
  *(v7 + v5[19]) = 3;
  v37 = v5[20];
  *(v7 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  swift_storeEnumTagMultiPayload();
  v38 = v5[21];
  *(v7 + v38) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v5[22];
  *(v7 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  v40 = v5[23];
  *(v7 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v7 = sub_24DFA367C;
  v7[1] = 0;
  v41 = v52;
  v7[2] = v22;
  v7[3] = v41;
  v7[4] = v24;
  swift_unknownObjectWeakAssign();

  v42 = (v7 + v5[15]);
  *v42 = v50;
  v42[1] = v31;
  v43 = (v7 + v5[16]);
  *v43 = v51;
  v43[1] = v34;
  sub_24E346E28();
  sub_24E3457F8();
  v44 = v55;
  sub_24DFA9344();
  memcpy(&v44[*(v57 + 44)], v62, 0x70uLL);
  v45 = v56;
  sub_24DFA9344();
  v46 = v53;
  v47 = v54;
  sub_24DFA9240();
  v48 = v58;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF3E0, &qword_24E36B1E8);
  sub_24DFA9240();
  sub_24DFA9298(v45, &qword_27F1DF3D0, &qword_24E36B1D8);
  sub_24DFA9298(v46, &qword_27F1DF3D8, &qword_24E36B1E0);
  sub_24DFA9298(v48, &qword_27F1DF3D0, &qword_24E36B1D8);
  return sub_24DFA9298(v47, &qword_27F1DF3D8, &qword_24E36B1E0);
}

uint64_t sub_24DFA3498(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_24E346EA8();
}

uint64_t sub_24DFA3614@<X0>(uint64_t a2@<X8>)
{
  sub_24DFA8080();
  v3 = type metadata accessor for OnboardingHeaderView(0);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t sub_24DFA367C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OnboardingHeaderView(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_24DFA36C4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  return sub_24E32E900(6, 8, 1, v3, 0, v2 + *(a1 + 44));
}

uint64_t sub_24DFA374C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24E345238();
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  else
  {
    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24DFA3950@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E345B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24E345658();
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  else
  {
    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t objectdestroyTm_1()
{
  type metadata accessor for FriendsSuggestionsOnboardingView(0);
  OUTLINED_FUNCTION_3_13();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  OUTLINED_FUNCTION_11_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_0_26();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_10(v0[6]);

  OUTLINED_FUNCTION_6_10(v0[7]);

  OUTLINED_FUNCTION_6_10(v0[8]);

  if (*(v7 + v0[9]))
  {
  }

  v9 = v0[10];
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v10 + 8))(v7 + v9);

  MEMORY[0x253040FB0](v7 + v0[12]);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_24DFA3CE0()
{
  v0 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v0);
  return sub_24DFA1B88();
}

uint64_t sub_24DFA3D38(uint64_t a1)
{
  v1 = sub_24E345238();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_24DFA374C(&v12 - v6);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v8 = sub_24E345228();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  result = 0;
  if ((v8 & 1) == 0)
  {
    v11 = [objc_opt_self() systemGroupedBackgroundColor];
    return sub_24E346948();
  }

  return result;
}

uint64_t sub_24DFA3EA0(uint64_t a1)
{
  v1 = sub_24E345238();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_24DFA374C(&v12 - v6);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v8 = sub_24E345228();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  result = 0;
  if (v8)
  {
    v11 = [objc_opt_self() systemGroupedBackgroundColor];
    return sub_24E346948();
  }

  return result;
}

uint64_t sub_24DFA4008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v80 = *(a1 + 16);
  v81 = a2;
  v79 = v4;
  sub_24E345338();
  sub_24E3456D8();
  sub_24E3456D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF488, &qword_24E379970);
  sub_24E3456D8();
  sub_24E3456D8();
  sub_24E348698();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF490, &qword_24E36B280);
  type metadata accessor for ListFooter(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF498, &qword_24E36B288);
  swift_getTupleTypeMetadata();
  v5 = sub_24E346E98();
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x277D84A98];
  v88 = v5;
  v72 = v5;
  v89 = MEMORY[0x277D84AA8];
  v90 = WitnessTable;
  v70 = WitnessTable;
  v7 = sub_24E3463C8();
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v56 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF4A0, &unk_24E36B290);
  v9 = sub_24E3456D8();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v56 - v10;
  v77 = v7;
  v11 = swift_getWitnessTable();
  v12 = sub_24DFA982C(&unk_27F1DF810);
  v64 = v11;
  v85 = v11;
  v86 = v12;
  v13 = swift_getWitnessTable();
  v87 = v9;
  v88 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v61 = &v56 - v15;
  v87 = v9;
  v88 = v13;
  v62 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeConformance2;
  v60 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v68 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v63 = &v56 - v18;
  v69 = v19;
  v20 = sub_24E3456D8();
  v71 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v66 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v67 = &v56 - v23;
  v24 = sub_24E345658();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (v2 + *(a1 + 64));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v87) = v29;
  v88 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  v78 = a1;
  if (v84 == 1)
  {

    goto LABEL_11;
  }

  v59 = v2;

  v32 = sub_24E2A4370();
  v34 = v33;
  v36 = v35;
  if ((v35 & 1) == 0)
  {
    goto LABEL_4;
  }

  v57 = v31;
  v37 = sub_24E348C28();
  swift_unknownObjectRetain_n();
  v58 = v37;
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v36 >> 1, v34))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v39 != (v36 >> 1) - v34)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v31 = v57;
LABEL_4:
    sub_24E09C664(v32, v31, v34, v36);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v40 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v40)
  {
    swift_unknownObjectRelease();
  }

LABEL_11:
  sub_24DFA3950(v27);
  v41 = sub_24E345638();
  v42 = (*(v25 + 8))(v27, v24);
  if ((v41 & 1) == 0)
  {
    v42 = sub_24E327150();
  }

  MEMORY[0x28223BE20](v42);
  v43 = v75;
  sub_24E3463B8();

  v44 = [objc_opt_self() systemBackgroundColor];
  v87 = sub_24E346948();
  sub_24E3461E8();
  v45 = v73;
  v46 = v77;
  sub_24E346538();

  (*(v76 + 8))(v43, v46);
  v47 = v61;
  sub_24E3467D8();
  (*(v74 + 8))(v45, v9);
  sub_24E3461F8();
  v48 = v63;
  v49 = v60;
  sub_24E3465E8();
  (*(v65 + 8))(v47, OpaqueTypeMetadata2);
  v87 = OpaqueTypeMetadata2;
  v88 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  sub_24E346E28();
  v51 = v69;
  v52 = v66;
  sub_24E346858();
  (*(v68 + 8))(v48, v51);
  v82 = v50;
  v83 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v53 = v67;
  sub_24E042E44();
  v54 = *(v71 + 8);
  v54(v52, v20);
  sub_24E042E44();
  return (v54)(v53, v20);
}

uint64_t sub_24DFA4A38@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v161 = a1;
  v162 = a2;
  v159 = a5;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF320, &qword_24E36B0C0);
  MEMORY[0x28223BE20](v156);
  v143 = (&v131 - v8);
  v9 = sub_24E345658();
  v150 = *(v9 - 8);
  v151 = v9;
  MEMORY[0x28223BE20](v9);
  v149 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF498, &qword_24E36B288);
  MEMORY[0x28223BE20](v155);
  v158 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v131 - v13;
  v167 = type metadata accessor for ListFooter(0);
  MEMORY[0x28223BE20](v167);
  v170 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v169 = &v131 - v16;
  v160 = type metadata accessor for SuggestionsListView(0, a3, a4, v17);
  v148 = *(v160 - 8);
  v146 = *(v148 + 64);
  MEMORY[0x28223BE20](v160);
  v147 = &v131 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF490, &qword_24E36B280);
  MEMORY[0x28223BE20](v166);
  v168 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v175 = &v131 - v21;
  v172 = a4;
  v22 = sub_24E345338();
  v135 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v133 = &v131 - v23;
  v24 = sub_24E3456D8();
  v136 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v134 = &v131 - v25;
  v26 = sub_24E3456D8();
  v139 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v137 = &v131 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF488, &qword_24E379970);
  v164 = v26;
  v28 = sub_24E3456D8();
  v141 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v138 = &v131 - v29;
  v163 = v30;
  v31 = sub_24E3456D8();
  v145 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v142 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v140 = &v131 - v34;
  v35 = sub_24E348698();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v131 - v37;
  v144 = *(a3 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_24E348698();
  v176 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v174 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v43);
  v173 = &v131 - v45;
  (*v161)(v44);
  v171 = a3;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, a3);
  v47 = MEMORY[0x277CDF918];
  v153 = v24;
  v154 = v22;
  v152 = v31;
  if (EnumTagSinglePayload == 1)
  {
    (*(v36 + 8))(v38, v35);
    v48 = v174;
    __swift_storeEnumTagSinglePayload(v174, 1, 1, v31);
    v199[10] = swift_getWitnessTable();
    v199[11] = v47;
    v199[8] = swift_getWitnessTable();
    v199[9] = v47;
    WitnessTable = swift_getWitnessTable();
    v50 = sub_24DFA982C(&qword_27F1DF4A8);
    v199[6] = WitnessTable;
    v199[7] = v50;
    v199[4] = swift_getWitnessTable();
    v199[5] = MEMORY[0x277CE06C0];
    swift_getWitnessTable();
    sub_24DFA1B1C(v48, v173);
    v145 = *(v176 + 8);
    v51 = (v145)(v48, v165);
    v52 = v161;
  }

  else
  {
    v53 = *(v144 + 32);
    v54 = v41;
    v55 = v41;
    v132 = v41;
    v56 = v171;
    v57 = v53(v54, v38);
    MEMORY[0x28223BE20](v57);
    v58 = v172;
    *(&v131 - 4) = v56;
    *(&v131 - 3) = v58;
    *(&v131 - 2) = v55;
    v59 = v133;
    sub_24E345328();
    sub_24E3461F8();
    v60 = swift_getWitnessTable();
    v61 = v134;
    sub_24E3468A8();
    (*(v135 + 8))(v59, v22);
    sub_24E3461D8();
    v183 = v60;
    v184 = v47;
    v62 = swift_getWitnessTable();
    v63 = v137;
    sub_24E3468A8();
    (*(v136 + 8))(v61, v24);
    v64 = v161;
    v199[0] = sub_24DFA3D38(v160);
    v181 = v62;
    v182 = v47;
    v65 = v164;
    v66 = swift_getWitnessTable();
    v67 = v138;
    sub_24E3466F8();

    (*(v139 + 8))(v63, v65);
    sub_24E3461D8();
    v68 = sub_24DFA982C(&qword_27F1DF4A8);
    v179 = v66;
    v180 = v68;
    v69 = v163;
    v70 = swift_getWitnessTable();
    v71 = v142;
    sub_24E346788();
    (*(v141 + 8))(v67, v69);
    v177 = v70;
    v178 = MEMORY[0x277CE06C0];
    swift_getWitnessTable();
    v72 = v140;
    sub_24E042E44();
    v73 = v145;
    v74 = *(v145 + 8);
    v74(v71, v31);
    sub_24E042E44();
    v74(v72, v31);
    v75 = v174;
    (*(v73 + 32))(v174, v71, v31);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v31);
    sub_24DFA1B1C(v75, v173);
    v145 = *(v176 + 8);
    (v145)(v75, v165);
    v51 = (*(v144 + 8))(v132, v171);
    v52 = v64;
  }

  MEMORY[0x28223BE20](v51);
  *(&v131 - 4) = v76;
  *(&v131 - 3) = v77;
  *(&v131 - 2) = v162;
  *(&v131 - 1) = v52;
  MEMORY[0x28223BE20](v78);
  *(&v131 - 4) = v79;
  *(&v131 - 3) = v80;
  *(&v131 - 2) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF4B0, &qword_24E36B2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF4B8, &qword_24E36B2A8);
  sub_24DFA86F0();
  sub_24DFA893C(&unk_27F1DF500);
  v81 = v175;
  sub_24E345318();
  v82 = sub_24E345CE8();
  v84 = v147;
  v83 = v148;
  v85 = v160;
  (*(v148 + 16))(v147, v52, v160);
  v86 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v87 = swift_allocObject();
  v88 = v172;
  *(v87 + 16) = v171;
  *(v87 + 24) = v88;
  (*(v83 + 32))(v87 + v86, v84, v85);
  v89 = (v81 + *(v166 + 36));
  *v89 = v82;
  v89[1] = sub_24DFA89FC;
  v89[2] = v87;
  LOBYTE(v86) = *(v162 + 16) != 0;
  v91 = v52[3];
  v90 = v52[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  KeyPath = swift_getKeyPath();
  v94 = v169;
  *&v169[*(v167 + 28)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  *v94 = v86;
  *(v94 + 1) = v91;
  *(v94 + 2) = v90;
  swift_unknownObjectWeakInit();

  v95 = v149;
  sub_24DFA3950(v149);
  LOBYTE(v90) = sub_24E345638();
  (*(v150 + 8))(v95, v151);
  if (v90)
  {
    v96 = v52;
    v97 = *(v85 + 56);
    v98 = (v52 + *(v85 + 52));
    v100 = *v98;
    v99 = v98[1];
    v102 = *(v96 + v97);
    v101 = *(v96 + v97 + 8);
    v103 = swift_getKeyPath();
    v104 = v143;
    *v143 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
    swift_storeEnumTagMultiPayload();
    v105 = swift_getKeyPath();
    v106 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
    *(v104 + v106[5]) = v105;
    swift_storeEnumTagMultiPayload();
    *(v104 + v106[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
    swift_storeEnumTagMultiPayload();
    v107 = (v104 + v106[7]);
    *v107 = v100;
    v107[1] = v99;
    v108 = (v104 + v106[8]);
    *v108 = v102;
    v108[1] = v101;
    *(v104 + v106[9]) = 0x4049000000000000;

    LOBYTE(v101) = sub_24E3461D8();
    sub_24E3451B8();
    v109 = v156;
    v110 = v157;
    v111 = v104 + *(v156 + 36);
    *v111 = v101;
    *(v111 + 1) = v112;
    *(v111 + 2) = v113;
    *(v111 + 3) = v114;
    *(v111 + 4) = v115;
    v111[40] = 0;
    sub_24DFA9344();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v109 = v156;
    v110 = v157;
  }

  v117 = v173;
  v118 = v174;
  v119 = v176;
  __swift_storeEnumTagSinglePayload(v110, v116, 1, v109);
  v120 = *(v119 + 16);
  v176 = v119 + 16;
  v121 = v165;
  v120(v118, v117, v165);
  v199[0] = v118;
  v122 = v168;
  sub_24DFA9240();
  v199[1] = v122;
  v123 = v169;
  v124 = v170;
  sub_24DFA8080();
  v199[2] = v124;
  v125 = v158;
  sub_24DFA9240();
  v199[3] = v125;
  v198[0] = v121;
  v198[1] = v166;
  v198[2] = v167;
  v198[3] = v155;
  v192 = swift_getWitnessTable();
  v126 = MEMORY[0x277CDF918];
  v193 = MEMORY[0x277CDF918];
  v190 = swift_getWitnessTable();
  v191 = v126;
  v127 = swift_getWitnessTable();
  v128 = sub_24DFA982C(&qword_27F1DF4A8);
  v188 = v127;
  v189 = v128;
  v186 = swift_getWitnessTable();
  v187 = MEMORY[0x277CE06C0];
  v185 = swift_getWitnessTable();
  v194 = swift_getWitnessTable();
  v195 = sub_24DFA8A84();
  v196 = sub_24DFA8020(&unk_27F1DF528);
  v197 = sub_24DFA893C(&unk_27F1DF530);
  sub_24DFA3498(v199, 4, v198);
  sub_24DFA9298(v110, &qword_27F1DF498, &qword_24E36B288);
  sub_24DFA8BF8(v123, type metadata accessor for ListFooter);
  sub_24DFA9298(v175, &qword_27F1DF490, &qword_24E36B280);
  v129 = v145;
  (v145)(v173, v121);
  sub_24DFA9298(v125, &qword_27F1DF498, &qword_24E36B288);
  sub_24DFA8BF8(v170, type metadata accessor for ListFooter);
  sub_24DFA9298(v168, &qword_27F1DF490, &qword_24E36B280);
  return v129(v174, v121);
}

uint64_t sub_24DFA5D78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E042E44();
  sub_24E042E44();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_24DFA5E54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a1)
  {

    a1 = sub_24E346C48();
  }

  *a6 = a2;
  *(a6 + 8) = a3 & 1;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 32) = a1;
  v11 = a2;
}

uint64_t sub_24DFA5EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a5;
  v10 = type metadata accessor for SuggestionsListView(0, a3, a4, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v17[1] = a1;
  swift_getKeyPath();
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v11 + 32))(v15 + v14, v13, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF548, &unk_24E36B310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF4D0, &qword_24E36B2B0);
  sub_24DFA982C(&unk_27F1DF550);
  sub_24DFA8774();
  return sub_24E346CC8();
}

uint64_t sub_24DFA60E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = type metadata accessor for SuggestionsListView(0, a3, a4, a4);
  v10 = v5;

  v11 = sub_24DFA3EA0(v9);
  sub_24DFA5E54(v11, v10, v6, v7, v8, __src);

  v28 = sub_24E346E28();
  v29 = v12;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = 1;
  sub_24E3457F8();
  memcpy(__dst, __src, sizeof(__dst));
  v13 = sub_24E347CB8();
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24E367D20;
  v17 = objc_opt_self();
  v18 = [v10 contact];
  v19 = [v17 stringFromContact:v18 style:0];

  if (v19)
  {
    v20 = sub_24E347CF8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_24DF95A7C();
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(v16 + 32) = v23;
  *(v16 + 40) = v24;
  sub_24E347D18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF4E0, &qword_24E36B2B8);
  sub_24DFA8830();
  sub_24DF90C4C();
  sub_24E346728();

  memcpy(v30, __dst, sizeof(v30));
  return sub_24DFA9298(v30, &qword_27F1DF4E0, &qword_24E36B2B8);
}

void sub_24DFA63C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v10 = type metadata accessor for SuggestionsListView(0, a2, a3, x3_0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    (*(v11 + 16))(v14, a1, v10, v12);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v11 + 32))(v18 + v17, v14, v10);
    v19 = *(v10 + 64);
    v20 = *(a1 + *(v10 + 68));
    v21 = *(v15 + 16);
    v22 = *(a1 + v19 + 8);
    v24[16] = *(a1 + v19);
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B88();
    if (v24[15])
    {
      LOWORD(v16) = 256;
    }

    else
    {
      LOWORD(v16) = 0;
    }

    if (v20 < v21)
    {
      LOWORD(v16) = v16 + 1;
    }

    v23 = sub_24DFA8C58;
  }

  else
  {
    v23 = 0;
    v18 = 0;
  }

  *a4 = v23;
  *(a4 + 8) = v18;
  *(a4 + 16) = v16;
}

uint64_t sub_24DFA657C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  v5 = type metadata accessor for SuggestionsListView(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v8)
  {
    v6 = 24;
  }

  else
  {
    v6 = 23;
  }

  sub_24DFA36C4(v5, v6);

  sub_24E346B88();
  sub_24E346B98();
}

double sub_24DFA6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24E345CE8();
  v8 = MEMORY[0x25303C140](v7);
  return v8 + *(a2 + *(type metadata accessor for SuggestionsListView(0, a3, a4, v9) + 60));
}

uint64_t sub_24DFA66D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_24E345BF8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF568, &qword_24E36B400);
  return sub_24DFA6744(a1, a2, a3 & 0x101, a4 + *(v8 + 44));
}

uint64_t sub_24DFA6744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF570, &qword_24E36B408);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF578, &qword_24E36B410);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_24E347CB8();
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();

  v18 = sub_24E347CF8();
  v20 = v19;

  v43 = v18;
  v44 = v20;
  sub_24DF90C4C();
  v21 = sub_24E3464E8();
  v23 = v22;
  v41 = v24;
  v26 = v25;
  v27 = 1;
  if (a3)
  {
    v28 = swift_allocObject();
    v40 = v7;
    *(v28 + 16) = v39;
    *(v28 + 24) = a2;
    *(v28 + 32) = 1;
    *(v28 + 33) = HIBYTE(a3) & 1;
    MEMORY[0x28223BE20](v28);
    *(&v39 - 4) = v30;
    *(&v39 - 3) = v29;
    *(&v39 - 16) = v31;
    *(&v39 - 15) = v32;

    sub_24E346BD8();
    v33 = &v9[*(v40 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF588, &qword_24E36B420) + 28);
    v35 = sub_24E346488();
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = swift_getKeyPath();
    v7 = v40;
    sub_24DFA9344();
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v27, 1, v7);
  v36 = v42;
  sub_24DFA9240();
  *a4 = v21;
  *(a4 + 8) = v23;
  v37 = v41 & 1;
  *(a4 + 16) = v41 & 1;
  *(a4 + 24) = v26;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF580, &qword_24E36B418);
  sub_24DFA9240();
  sub_24DF82DD4(v21, v23, v37);

  sub_24DFA9298(v14, &qword_27F1DF578, &qword_24E36B410);
  sub_24DFA9298(v36, &qword_27F1DF578, &qword_24E36B410);
  sub_24DFA92EC(v21, v23, v37);
}

uint64_t sub_24DFA6AFC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v6 = sub_24E3464E8();
  v8 = v7;
  LOBYTE(v5) = v9;
  sub_24E346378();
  v10 = sub_24E3464B8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_24DFA92EC(v6, v8, v5 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_24DFA6C48@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24DFA66D0(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

uint64_t sub_24DFA6C68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ListFooter(0);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E345238();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_24DFA6E70()
{
  v0 = sub_24E345238();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  sub_24DFA6C68(&v11 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D0], v0);
  v7 = sub_24E345228();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 0;
  if (v7)
  {
    v10 = [objc_opt_self() systemGroupedBackgroundColor];
    return sub_24E346948();
  }

  return result;
}

uint64_t sub_24DFA6FD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF590, &qword_24E36B458);
  sub_24DFA93A4(&unk_27F1DF598);
  return sub_24E346D28();
}

uint64_t sub_24DFA7074@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v11[0] = v3;
  v12 = v5;
  v13 = v4;
  swift_unknownObjectWeakInit();

  sub_24E346B78();
  v14 = v9;
  v15 = v10;
  if (sub_24DFA6E70())
  {
    v7 = sub_24E346C48();
  }

  else
  {
    v7 = 0;
  }

  result = sub_24DFA9498(v11, a2);
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_24DFA7154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_24E345778();
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5C8, &qword_24E36B508);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5D0, &qword_24E36B510);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  sub_24DFA9644(v2, v31);
  v15 = swift_allocObject();
  sub_24DFA9498(v31, v15 + 16);
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5D8, &qword_24E36B518);
  sub_24DFA982C(&unk_27F1DF5E0);
  sub_24E346BD8();
  sub_24E345768();
  v16 = sub_24DFA982C(&unk_27F1DF5E8);
  v17 = sub_24DFA8020(&qword_27F1DF5F0);
  v18 = v23;
  sub_24E346588();
  (*(v24 + 8))(v6, v18);
  (*(v8 + 8))(v10, v7);
  v19 = *(v2 + 40);
  v29 = *(v2 + 32);
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5F8, &qword_24E36B520);
  v31[0] = v7;
  v31[1] = v18;
  v31[2] = v16;
  v31[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_24DFA968C();
  v20 = v25;
  sub_24E346868();

  return (*(v26 + 8))(v14, v20);
}

uint64_t sub_24DFA7594(uint64_t a1)
{
  v5[3] = &type metadata for GKFeatureFlags;
  v5[4] = sub_24DFA0CB4();
  LOBYTE(v5[0]) = 15;
  v2 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if ((v2 & 1) == 0)
  {
    return (*(a1 + 8))(0);
  }

  v3 = *(a1 + 40);
  LOBYTE(v5[0]) = *(a1 + 32);
  v5[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  return sub_24E346B98();
}

uint64_t sub_24DFA7640@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24E345BF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF628, &qword_24E36B590);
  return sub_24DFA7698(a2 + *(v3 + 44));
}

uint64_t sub_24DFA7698@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF630, &qword_24E36B598);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = sub_24E346A58();
  v9 = sub_24E346288();
  KeyPath = swift_getKeyPath();
  v46 = v8;
  v47 = KeyPath;
  v48 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF638, &unk_24E36B5D0);
  sub_24DFA9774();
  sub_24E346818();

  v11 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF658, &unk_24E36B5E0) + 36)];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF660, &qword_24E37C8B0) + 28);
  v13 = *MEMORY[0x277CE1048];
  v14 = sub_24E346AC8();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  v15 = [objc_opt_self() systemBlueColor];
  *&v7[*(v3 + 44)] = sub_24E346948();
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  v46 = v19;
  v47 = v21;
  sub_24DF90C4C();
  v22 = sub_24E3464E8();
  v24 = v23;
  LOBYTE(v18) = v25;
  sub_24E346288();
  v26 = sub_24E3464B8();
  v28 = v27;
  LOBYTE(v12) = v29;

  sub_24DFA92EC(v22, v24, v18 & 1);

  v30 = sub_24E346498();
  v32 = v31;
  LOBYTE(v8) = v33;
  sub_24DFA92EC(v26, v28, v12 & 1);

  LODWORD(v46) = sub_24E345F18();
  v34 = sub_24E346478();
  v36 = v35;
  LOBYTE(v26) = v37;
  v39 = v38;
  sub_24DFA92EC(v30, v32, v8 & 1);

  v40 = v44;
  sub_24DE5858C();
  v41 = v45;
  sub_24DE5858C();
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF668, &unk_24E36B620) + 48);
  *v42 = v34;
  *(v42 + 8) = v36;
  *(v42 + 16) = v26 & 1;
  *(v42 + 24) = v39;
  sub_24DF82DD4(v34, v36, v26 & 1);

  sub_24DE585EC(v7);
  sub_24DFA92EC(v34, v36, v26 & 1);

  return sub_24DE585EC(v40);
}

uint64_t sub_24DFA7AB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FriendSuggestionInvitationStateManager(0);
  swift_allocObject();
  v2 = sub_24E155B14(0);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for InviteFriendsView(0);
  v4 = a1 + v3[5];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = a1 + v3[8];
  sub_24E346B78();
  *v5 = v11;
  *(v5 + 2) = v12;
  v6 = (a1 + v3[9]);
  sub_24E346B78();
  *v6 = v11;
  *(a1 + v3[6]) = v2;
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5F8, &qword_24E36B520);
  v10 = a1 + *(result + 36);
  *v10 = KeyPath;
  v10[8] = 0;
  return result;
}

uint64_t sub_24DFA7C18()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

unint64_t sub_24DFA7C98(uint64_t a1)
{
  sub_24DFA7E4C(319, &qword_27F1DF760, &qword_27F1DF338, qword_24E36F580, MEMORY[0x277CDF468]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_24DFA8548(319, &qword_27F1DF770, MEMORY[0x277CDFA28]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_24DFA84F8(319, &qword_27F1DF340, &type metadata for FriendsSuggestionsOnboardingViewModel, MEMORY[0x277D83940]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v2 = sub_24DFA1058();
        if (v8 <= 0x3F)
        {
          v9 = sub_24E347638();
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_24DFA0F60(319, &qword_27F1DF300, &unk_27F1DFCF0, 0x277D0C048, MEMORY[0x277D83D88]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_24DFA7E4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_11_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_24DFA7EAC()
{
  result = qword_27F1DF348;
  if (!qword_27F1DF348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF318, &qword_24E36B0B8);
    sub_24DFA7F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF348);
  }

  return result;
}

unint64_t sub_24DFA7F38()
{
  result = qword_27F1DF350;
  if (!qword_27F1DF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF308, &qword_24E36B0A8);
    sub_24DFA8020(&unk_27F1DF358);
    sub_24DFA982C(&unk_27F1DF360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF350);
  }

  return result;
}

unint64_t sub_24DFA8020(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24DFA8080()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24DFA80D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OnboardingHeaderView(0);
  OUTLINED_FUNCTION_4_5(v2);

  return sub_24DFA3614(a1);
}

unint64_t sub_24DFA8144()
{
  result = qword_27F1DF398;
  if (!qword_27F1DF398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF380, &qword_24E36B178);
    sub_24DFA982C(&unk_27F1DF3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF398);
  }

  return result;
}

unint64_t sub_24DFA81FC()
{
  result = qword_27F1DF3B0;
  if (!qword_27F1DF3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF370, &qword_24E36B168);
    sub_24DFA982C(&unk_27F1DF3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF3B0);
  }

  return result;
}

unint64_t sub_24DFA82BC(uint64_t a1)
{
  v1 = sub_24DFA1058();
  if (v2 <= 0x3F)
  {
    sub_24DFA84F8(319, &qword_27F1DF340, &type metadata for FriendsSuggestionsOnboardingViewModel, MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = sub_24E347638();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_24DFA84F8(319, &qword_27F1DF470, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        sub_24DFA7E4C(319, &qword_27F1DF760, &qword_27F1DF338, qword_24E36F580, MEMORY[0x277CDF468]);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_24DFA8548(319, &qword_27F1DF478, MEMORY[0x277CDF3E0]);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_24DFA8548(319, &qword_27F1DF770, MEMORY[0x277CDFA28]);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_24DFA84F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24DFA8548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24DFA859C()
{
  result = qword_27F1DF480;
  if (!qword_27F1DF480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF388, &unk_24E36B180);
    sub_24DFA8144();
    sub_24DFA81FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF480);
  }

  return result;
}

uint64_t sub_24DFA868C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24DFA86F0()
{
  result = qword_27F1DF4C0;
  if (!qword_27F1DF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF4B0, &qword_24E36B2A0);
    sub_24DFA8774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF4C0);
  }

  return result;
}

unint64_t sub_24DFA8774()
{
  result = qword_27F1DF4C8;
  if (!qword_27F1DF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF4D0, &qword_24E36B2B0);
    sub_24DFA8830();
    sub_24DFA8020(&qword_27F1DF850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF4C8);
  }

  return result;
}

unint64_t sub_24DFA8830()
{
  result = qword_27F1DF4D8;
  if (!qword_27F1DF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF4E0, &qword_24E36B2B8);
    sub_24DFA93A4(&unk_27F1DF4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF4D8);
  }

  return result;
}

unint64_t sub_24DFA88E8()
{
  result = qword_27F1DF4F8;
  if (!qword_27F1DF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF4F8);
  }

  return result;
}

unint64_t sub_24DFA893C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_6(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_24DFA89A8()
{
  result = qword_27F1DF508;
  if (!qword_27F1DF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF508);
  }

  return result;
}

double sub_24DFA89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for SuggestionsListView(0, v6, v7, a4);
  OUTLINED_FUNCTION_4_5(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_24DFA6668(a1, v10, v6, v7);
}

unint64_t sub_24DFA8A84()
{
  result = qword_27F1DF510;
  if (!qword_27F1DF510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF490, &qword_24E36B280);
    sub_24DFA982C(&unk_27F1DF518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF510);
  }

  return result;
}

unint64_t sub_24DFA8B3C()
{
  result = qword_27F1DF538;
  if (!qword_27F1DF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF320, &qword_24E36B0C0);
    sub_24DFA8020(&unk_27F1DF540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF538);
  }

  return result;
}

uint64_t sub_24DFA8BF8(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24DFA8C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SuggestionsListView(0, v5, v6, a4);
  OUTLINED_FUNCTION_4_5(v7);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_24DFA657C(v11, v5, v6, v9, v8);
}

uint64_t objectdestroy_42Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SuggestionsListView(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_3_13();
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = *(v9 + 64);
  v11 = v5 + v8;

  v12 = v4[11];
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v13 + 8))(v5 + v8 + v12);
  MEMORY[0x253040FB0](v5 + v8 + v4[12]);

  v14 = v4[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24E345F38();
    if (!__swift_getEnumTagSinglePayload(v11 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v11 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v4[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24E345F38();
    if (!__swift_getEnumTagSinglePayload(v11 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v11 + v16, v17);
    }
  }

  else
  {
  }

  v18 = v4[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345238();
    OUTLINED_FUNCTION_0_26();
    (*(v19 + 8))(v11 + v18);
  }

  else
  {
  }

  v20 = v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_0_26();
    (*(v21 + 8))(v11 + v20);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v5, v8 + v10, v7 | 7);
}

uint64_t sub_24DFA8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for SuggestionsListView(0, v6, v7, a4);
  OUTLINED_FUNCTION_4_5(v8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_24DFA60E4(a1, v11, v6, v7, v9);
}

void sub_24DFA90A8(uint64_t a1)
{
  sub_24DFA1058();
  if (v1 <= 0x3F)
  {
    sub_24DFA8548(319, &qword_27F1DF478, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DFA9178(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_24DFA91B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DFA9240()
{
  OUTLINED_FUNCTION_0_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5_2();
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  return v0;
}

uint64_t sub_24DFA9298(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_26();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24DFA92EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24DFA9344()
{
  OUTLINED_FUNCTION_0_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5_2();
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  return v0;
}

unint64_t sub_24DFA93A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_6(0, v4, v5);
    v2();
    sub_24DFA982C(&qword_27F1DF4A8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_24DFA9444()
{
  result = qword_27F1DF5A0;
  if (!qword_27F1DF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF5A0);
  }

  return result;
}

uint64_t sub_24DFA94D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_24DFA9510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24DFA956C()
{
  result = qword_27F1DF5B8;
  if (!qword_27F1DF5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF5C0, &qword_24E36B4B0);
    sub_24DFA93A4(&unk_27F1DF598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF5B8);
  }

  return result;
}

unint64_t sub_24DFA968C()
{
  result = qword_27F1DF600;
  if (!qword_27F1DF600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF5F8, &qword_24E36B520);
    sub_24DFA8020(&qword_27F1DF608);
    sub_24DFA982C(&qword_27F1DF610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF600);
  }

  return result;
}

unint64_t sub_24DFA9774()
{
  result = qword_27F1DF640;
  if (!qword_27F1DF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF638, &unk_24E36B5D0);
    sub_24DFA982C(&qword_27F1DF648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF640);
  }

  return result;
}

unint64_t sub_24DFA982C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_3(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_6(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_16@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
}

void sub_24DFA9908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_29();
  v30 = [v29 traitCollection];
  v31 = sub_24E3483C8();

  OUTLINED_FUNCTION_6_11();
  if (v31)
  {

    sub_24DFA99C8(a1, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {

    sub_24DFAA7B4(a1, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

void sub_24DFA99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_44();
  a27 = v30;
  a28 = v32;
  v33 = v29;
  v35 = v34;
  OUTLINED_FUNCTION_29();
  v144 = v36;
  v37 = sub_24E3446A8();
  v38 = OUTLINED_FUNCTION_0_27(v37, &v166);
  v145 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v40);
  v41 = sub_24E344648();
  v42 = OUTLINED_FUNCTION_0_27(v41, &v169);
  v153 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v44);
  v45 = sub_24E344658();
  v46 = OUTLINED_FUNCTION_0_27(v45, &a15);
  v152 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v48);
  v49 = sub_24E3445E8();
  v50 = OUTLINED_FUNCTION_0_27(v49, &a14);
  v52 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v53);
  v54 = sub_24E344688();
  v55 = OUTLINED_FUNCTION_0_27(v54, &v163);
  v57 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_38();
  v141 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_5_11(v134 - v60);
  v61 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v63 = v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_1();
  v67 = v66 - v65;
  v168 = MEMORY[0x277D84F90];
  sub_24DF8F3A8((v29 + 52), &v162, &qword_27F1DEE30, &qword_24E369B60);
  if (v163)
  {
    sub_24DE56CE8(&v162, v165);
    OUTLINED_FUNCTION_8_8(v165);
    v170.origin.x = OUTLINED_FUNCTION_6_11();
    v170.size.height = v31;
    CGRectGetMaxX(v170);
    v171.origin.x = OUTLINED_FUNCTION_6_11();
    v171.size.height = v31;
    CGRectGetMidY(v171);
    sub_24E344088();
    v28 = v167;
    OUTLINED_FUNCTION_8_8(v165);
    sub_24E344078();
    CGRectGetWidth(v172);
    *&v162 = v29[27];
    sub_24E343F98();
    sub_24E344198();
    (*(v63 + 8))(v67, v61);
    __swift_destroy_boxed_opaque_existential_1(v165);
  }

  else
  {
    sub_24DF8F34C(&v162, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24DF8F3A8((v29 + 32), &v162, &qword_27F1DEE30, &qword_24E369B60);
  v68 = MEMORY[0x277D227F0];
  v147 = v35;
  v142 = v57;
  if (v163)
  {
    v69 = MEMORY[0x277D85048];
    v70 = MEMORY[0x277D225F8];
    sub_24DE56CE8(&v162, v165);
    __swift_project_boxed_opaque_existential_1(v165, v167);
    v71 = v29[1];
    sub_24E3440B8();
    v160 = v69;
    v161 = v70;
    *&v159 = v71;
    v72 = OUTLINED_FUNCTION_9_6();
    (*(v52 + 104))(v149, *MEMORY[0x277D227D0], v155, v72);
    v73 = v152;
    v154 = v52;
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_24_1();
    v74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
    v75 = v153;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_24E367D20;
    sub_24E344618();
    v157 = v76;
    sub_24DF8A8A4();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
    sub_24DF8A8FC();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_32_0();
    sub_24E3487E8();
    sub_24E344678();
    (*(v75 + 8))(v70, v77);
    v52 = v154;
    (*(v73 + 8))(v35, v68);
    v78 = OUTLINED_FUNCTION_42();
    v79(v78);
    sub_24DF8F34C(v158, &qword_27F1DEE48, qword_24E36BF40);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    OUTLINED_FUNCTION_25_1();
    sub_24E076A38();
    v81 = v80;
    v83 = *(v80 + 16);
    v82 = *(v80 + 24);
    v28 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      OUTLINED_FUNCTION_16_3(v82);
      sub_24E076A38();
      v81 = v131;
    }

    v57 = v142;
    *(v81 + 16) = v28;
    OUTLINED_FUNCTION_17_3();
    v86(v81 + v84 + *(v85 + 40) * v83, v148, v143);
    v168 = v81;
    __swift_destroy_boxed_opaque_existential_1(v165);
    v68 = MEMORY[0x277D227F0];
  }

  else
  {
    sub_24DF8F34C(&v162, &qword_27F1DEE30, &qword_24E369B60);
    v81 = MEMORY[0x277D84F90];
  }

  sub_24DF89628((v33 + 7), v165);
  sub_24DF8F3A8((v33 + 37), &v159, &qword_27F1DF0C0, &unk_24E36B630);
  OUTLINED_FUNCTION_30_0();
  v87 = MEMORY[0x277D227C8];
  if (v88)
  {
    sub_24DE56CE8(&v159, &v162);
    v28 = v163;
    OUTLINED_FUNCTION_2_17(&v162);
    if (sub_24E344058())
    {
      __swift_destroy_boxed_opaque_existential_1(v165);
      sub_24DF89628((v33 + 12), v165);
      v89 = v163;
      v90 = v164;
      v35 = v87;
      OUTLINED_FUNCTION_8_8(&v162);
      v160 = v89;
      v161 = *(v90 + 8);
      __swift_allocate_boxed_opaque_existential_1(&v159);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_26_1();
      v91();
      OUTLINED_FUNCTION_9_6();
      v157 = MEMORY[0x277D84F90];
      sub_24DF8A8A4();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
      sub_24DF8A8FC();
      OUTLINED_FUNCTION_20_1();
      v94 = *(v93 - 256);
      OUTLINED_FUNCTION_31_0();
      sub_24E3487E8();
      v95 = OUTLINED_FUNCTION_37();
      v96 = v155;
      v97(v95);
      OUTLINED_FUNCTION_29_0();
      v99 = v52;
      v100 = v150;
      v101 = v156;
      (*(v98 + 104))(v150);
      OUTLINED_FUNCTION_43();
      sub_24E344678();
      v102 = v100;
      v52 = v99;
      (*(v92 + 8))(v102, v101);
      (*(v99 + 8))(v35, v96);
      (*(v153 + 8))(v90, v94);
      sub_24DF8F34C(v158, &qword_27F1DEE48, qword_24E36BF40);
      __swift_destroy_boxed_opaque_existential_1(&v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076A38();
        v81 = v132;
      }

      v104 = *(v81 + 16);
      v103 = *(v81 + 24);
      v28 = v104 + 1;
      v57 = v142;
      v68 = MEMORY[0x277D227F0];
      v87 = MEMORY[0x277D227C8];
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_16_3(v103);
        sub_24E076A38();
        v81 = v133;
      }

      *(v81 + 16) = v28;
      OUTLINED_FUNCTION_17_3();
      v107(v81 + v105 + *(v106 + 40) * v104, v141, v143);
      v168 = v81;
    }

    __swift_destroy_boxed_opaque_existential_1(&v162);
  }

  else
  {
    sub_24DF8F34C(&v159, &qword_27F1DF0C0, &unk_24E36B630);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10, &unk_24E369B80);
  v143 = *(v57 + 72);
  v108 = OUTLINED_FUNCTION_48();
  v148 = v108;
  *(v108 + 16) = xmmword_24E36A270;
  v134[1] = v108 + v28;
  v109 = v33[45];
  v110 = v33[46];
  OUTLINED_FUNCTION_8_8(v33 + 42);
  v163 = v109;
  v164 = *(v110 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v162);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_26_1();
  v111();
  OUTLINED_FUNCTION_22_2();
  v158[0] = MEMORY[0x277D84F90];
  v141 = sub_24DF8A8A4();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  v140 = v112;
  v142 = sub_24DF8A8FC();
  v113 = v151;
  OUTLINED_FUNCTION_32_0();
  sub_24E3487E8();
  v139 = *v87;
  v114 = *(v52 + 104);
  v137 = v52 + 104;
  v138 = v114;
  v115 = OUTLINED_FUNCTION_37();
  v116 = v155;
  v117(v115);
  v136 = *v68;
  v118 = v152;
  v119 = *(v152 + 104);
  v134[2] = v152 + 104;
  v135 = v119;
  v120 = v52;
  v121 = v150;
  OUTLINED_FUNCTION_24_1();
  v122();
  OUTLINED_FUNCTION_43();
  sub_24E344678();
  v152 = *(v118 + 8);
  (v152)(v121, v68);
  v123 = *(v120 + 8);
  v154 = v120 + 8;
  v134[0] = v123;
  v123(v35, v116);
  v153 = *(v153 + 8);
  v124 = v112;
  (v153)(v113, v112);
  sub_24DF8F34C(&v159, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v162);
  v125 = v33[50];
  v126 = v33[51];
  __swift_project_boxed_opaque_existential_1(v33 + 47, v125);
  v163 = v125;
  v164 = *(v126 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v162);
  OUTLINED_FUNCTION_22_0();
  (*(v127 + 16))();
  sub_24DF89628((v33 + 22), &v159);
  v158[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_0();
  sub_24E3487E8();
  v128 = v155;
  v138(v35, v139, v155);
  v129 = v156;
  v135(v121, v136, v156);
  OUTLINED_FUNCTION_43();
  sub_24E344678();
  (v152)(v121, v129);
  (v134[0])(v35, v128);
  (v153)(v113, v124);
  sub_24DF8F34C(&v159, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v162);
  sub_24E26C574(v148);
  OUTLINED_FUNCTION_29_0();
  sub_24E344668();
  OUTLINED_FUNCTION_6_11();
  sub_24E344608();
  OUTLINED_FUNCTION_34_0();
  v130(&v168, v146);
  __swift_destroy_boxed_opaque_existential_1(v165);
  OUTLINED_FUNCTION_45();
}

void sub_24DFAA7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_44();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = sub_24E344048();
  v41 = OUTLINED_FUNCTION_0_27(v40, &v147);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v42);
  v43 = sub_24E3446A8();
  v44 = OUTLINED_FUNCTION_0_27(v43, &v151);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v45);
  v46 = sub_24E344658();
  v47 = OUTLINED_FUNCTION_0_27(v46, &a9);
  v140 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v49);
  v50 = sub_24E3445E8();
  v51 = OUTLINED_FUNCTION_0_27(v50, &a13);
  v141 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v53);
  v54 = sub_24E344648();
  v55 = OUTLINED_FUNCTION_0_27(v54, &v152);
  v135 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_1();
  v59 = v58 - v57;
  v60 = sub_24E344688();
  v61 = OUTLINED_FUNCTION_0_27(v60, v144);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v62);
  v63 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_1();
  v69 = v68 - v67;
  v153.origin.x = OUTLINED_FUNCTION_41();
  MinX = CGRectGetMinX(v153);
  v150 = *(v28 + 216);
  sub_24E343F98();
  sub_24E344198();
  (*(v65 + 8))(v69, v63);
  sub_24DF8F3A8(v28 + 256, &v146, &qword_27F1DEE30, &qword_24E369B60);
  if (v148)
  {
    sub_24DE56CE8(&v146, &v150);
    v71 = *v28;
    v70 = *(v28 + 8);
    v154.origin.x = OUTLINED_FUNCTION_41();
    v72 = CGRectGetMidY(v154) + v70 * -0.5;
    v155.origin.x = MinX;
    v155.origin.y = v72;
    v155.size.width = v71;
    v155.size.height = v70;
    CGRectGetMaxX(v155);
    OUTLINED_FUNCTION_8_8(&v150);
    OUTLINED_FUNCTION_27_1();
    sub_24E344078();
    CGRectGetWidth(v156);
    OUTLINED_FUNCTION_8_8(&v150);
    v73 = v39;
    sub_24E348508();
    OUTLINED_FUNCTION_27_1();
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(&v150);
  }

  else
  {
    v73 = v39;
    sub_24DF8F34C(&v146, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24DF8F3A8(v28 + 416, &v146, &qword_27F1DEE30, &qword_24E369B60);
  if (v148)
  {
    sub_24DE56CE8(&v146, &v150);
    OUTLINED_FUNCTION_8_8(&v150);
    v157.origin.x = v73;
    v157.origin.y = v37;
    v157.size.width = v35;
    v157.size.height = v33;
    CGRectGetMaxX(v157);
    v158.origin.x = OUTLINED_FUNCTION_6_11();
    v158.size.height = v33;
    CGRectGetMidY(v158);
    OUTLINED_FUNCTION_6_11();
    sub_24E348508();
    OUTLINED_FUNCTION_27_1();
    sub_24E344088();
    OUTLINED_FUNCTION_8_8(&v150);
    OUTLINED_FUNCTION_27_1();
    sub_24E344078();
    CGRectGetWidth(v159);
    __swift_destroy_boxed_opaque_existential_1(&v150);
  }

  else
  {
    sub_24DF8F34C(&v146, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24DF89628(v28 + 56, &v150);
  v74 = MEMORY[0x277D84F90];
  v145 = MEMORY[0x277D84F90];
  sub_24DF8F3A8(v28 + 296, &v143, &qword_27F1DF0C0, &unk_24E36B630);
  OUTLINED_FUNCTION_30_0();
  v75 = MEMORY[0x277D227C8];
  v76 = MEMORY[0x277D227F0];
  if (v77)
  {
    sub_24DE56CE8(&v143, &v146);
    OUTLINED_FUNCTION_2_17(&v146);
    if (sub_24E344058())
    {
      __swift_destroy_boxed_opaque_existential_1(&v150);
      sub_24DF89628(v28 + 96, &v150);
      v78 = v76;
      v79 = v148;
      v80 = v149;
      OUTLINED_FUNCTION_8_8(&v146);
      v144[0] = v79;
      v144[1] = *(v80 + 8);
      __swift_allocate_boxed_opaque_existential_1(&v143);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_26_1();
      v81();
      OUTLINED_FUNCTION_9_6();
      sub_24DF8A8A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
      sub_24DF8A8FC();
      sub_24E3487E8();
      (*(v141 + 104))(v137, *v75);
      (*(v140 + 104))(v138, *v78);
      sub_24E344678();
      (*(v140 + 8))();
      v82 = OUTLINED_FUNCTION_42();
      v83(v82);
      v84 = MEMORY[0x277D84F90];
      (*(v135 + 8))(v59);
      sub_24DF8F34C(&v142, &qword_27F1DEE48, qword_24E36BF40);
      __swift_destroy_boxed_opaque_existential_1(&v143);
      OUTLINED_FUNCTION_25_1();
      v74 = v84;
      sub_24E076A38();
      v86 = v85;
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_33_0(v87);
        sub_24E076A38();
        v86 = v125;
      }

      v89 = v138;
      *(v86 + 16) = v88 + 1;
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_17_3();
      v92(v86 + v90 + *(v91 + 40) * v88);
      v145 = v86;
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v76 = MEMORY[0x277D227F0];
    }

    else
    {
      v89 = v138;
      __swift_destroy_boxed_opaque_existential_1(&v146);
    }
  }

  else
  {
    v89 = v138;
    sub_24DF8F34C(&v143, &qword_27F1DF0C0, &unk_24E36B630);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10, &unk_24E369B80);
  v133 = OUTLINED_FUNCTION_48();
  *(v133 + 16) = xmmword_24E36A270;
  v93 = *(v28 + 360);
  v94 = *(v28 + 368);
  OUTLINED_FUNCTION_8_8((v28 + 336));
  v148 = v93;
  v149 = *(v94 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v146);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_26_1();
  v95();
  OUTLINED_FUNCTION_22_2();
  v142 = v74;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  sub_24DF8A8FC();
  sub_24E3487E8();
  v132 = *MEMORY[0x277D227C8];
  v131 = *(v141 + 104);
  v131();
  v130 = *v76;
  v129 = *(v140 + 104);
  v129(v89);
  sub_24E344678();
  v128 = *(v140 + 8);
  v128(v89);
  v127 = *(v141 + 8);
  v127();
  v126 = *(v135 + 8);
  v126(v59);
  sub_24DF8F34C(&v143, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v146);
  v96 = *(v28 + 400);
  v97 = *(v31 + 408);
  v136 = (v31 + 376);
  __swift_project_boxed_opaque_existential_1((v31 + 376), *(v31 + 400));
  v148 = v96;
  v149 = *(v97 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v146);
  OUTLINED_FUNCTION_22_0();
  (*(v98 + 16))();
  sub_24DF89628(v31 + 176, &v143);
  v142 = MEMORY[0x277D84F90];
  sub_24E3487E8();
  (v131)(v137, v132);
  (v129)(v89, v130);
  sub_24E344678();
  v128(v89);
  v127();
  v126(v59);
  sub_24DF8F34C(&v143, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v146);
  sub_24E26C574(v133);
  sub_24E344668();
  v160.origin.x = OUTLINED_FUNCTION_6_11();
  v160.size.height = v33;
  CGRectGetMinY(v160);
  v161.origin.x = OUTLINED_FUNCTION_6_11();
  v161.size.height = v33;
  CGRectGetWidth(v161);
  OUTLINED_FUNCTION_6_11();
  sub_24E348508();
  sub_24E344608();
  OUTLINED_FUNCTION_34_0();
  v99();
  if (*(v31 + 248) == 1)
  {
    sub_24DF8F3A8(v31 + 296, &v143, &qword_27F1DF0C0, &unk_24E36B630);
    OUTLINED_FUNCTION_30_0();
    if (v100)
    {
      sub_24DE56CE8(&v143, &v146);
      OUTLINED_FUNCTION_2_17(&v146);
      sub_24E344058();
      OUTLINED_FUNCTION_7_8();
      if (v101)
      {
        OUTLINED_FUNCTION_2_17(&v146);
        if ((sub_24E344098() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_17(&v146);
          sub_24E344078();
          CGRectGetMinY(v168);
          __swift_destroy_boxed_opaque_existential_1(&v146);
LABEL_26:
          OUTLINED_FUNCTION_2_17(v136);
          if (sub_24E344058() & 1) == 0 || (OUTLINED_FUNCTION_2_17(v136), v104 = sub_24E344098(), v105 = (v31 + 376), (v104))
          {
            v105 = v134;
          }

          OUTLINED_FUNCTION_2_17(v105);
          sub_24E344078();
          CGRectGetMaxY(v163);
          v164.origin.x = OUTLINED_FUNCTION_6_11();
          v164.size.height = v33;
          MidY = CGRectGetMidY(v164);
          OUTLINED_FUNCTION_40(MidY);
          sub_24DF8F3A8(v31 + 296, &v146, &qword_27F1DF0C0, &unk_24E36B630);
          if (v148)
          {
            OUTLINED_FUNCTION_8_8(&v146);
            v107 = OUTLINED_FUNCTION_47();
            v109 = OUTLINED_FUNCTION_12_4(v107, v108);
            v110(&v143, 0, v109);
            __swift_destroy_boxed_opaque_existential_1(&v146);
          }

          else
          {
            sub_24DF8F34C(&v146, &qword_27F1DF0C0, &unk_24E36B630);
          }

          OUTLINED_FUNCTION_8_8(v134);
          v111 = sub_24E344068();
          v113 = OUTLINED_FUNCTION_12_4(v111, v112);
          v114(&v146, 0, v113);
          OUTLINED_FUNCTION_8_8(v136);
          goto LABEL_39;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v146);
    }

    else
    {
      sub_24DF8F34C(&v143, &qword_27F1DF0C0, &unk_24E36B630);
      OUTLINED_FUNCTION_7_8();
    }

    OUTLINED_FUNCTION_2_17(v134);
    sub_24E344078();
    CGRectGetMinY(v162);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_17(v136);
  if ((sub_24E344058() & 1) == 0)
  {
    sub_24DF8F3A8(v31 + 296, &v143, &qword_27F1DF0C0, &unk_24E36B630);
    OUTLINED_FUNCTION_30_0();
    if (v102)
    {
      sub_24DE56CE8(&v143, &v146);
      OUTLINED_FUNCTION_2_17(&v146);
      sub_24E344058();
      OUTLINED_FUNCTION_7_8();
      if (v103)
      {
        OUTLINED_FUNCTION_2_17(&v146);
        if ((sub_24E344098() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_17(&v146);
          sub_24E344078();
          CGRectGetMinY(v169);
          __swift_destroy_boxed_opaque_existential_1(&v146);
          goto LABEL_35;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v146);
    }

    else
    {
      sub_24DF8F34C(&v143, &qword_27F1DF0C0, &unk_24E36B630);
      OUTLINED_FUNCTION_7_8();
    }

    OUTLINED_FUNCTION_2_17(v134);
    sub_24E344078();
    CGRectGetMinY(v165);
LABEL_35:
    OUTLINED_FUNCTION_2_17(v134);
    sub_24E344078();
    CGRectGetMaxY(v166);
    v167.origin.x = OUTLINED_FUNCTION_6_11();
    v167.size.height = v33;
    v115 = CGRectGetMidY(v167);
    OUTLINED_FUNCTION_40(v115);
    sub_24DF8F3A8(v31 + 296, &v146, &qword_27F1DF0C0, &unk_24E36B630);
    if (v148)
    {
      OUTLINED_FUNCTION_8_8(&v146);
      v116 = OUTLINED_FUNCTION_47();
      v118 = OUTLINED_FUNCTION_12_4(v116, v117);
      v119(&v143, 0, v118);
      __swift_destroy_boxed_opaque_existential_1(&v146);
    }

    else
    {
      sub_24DF8F34C(&v146, &qword_27F1DF0C0, &unk_24E36B630);
    }

    OUTLINED_FUNCTION_8_8(v134);
LABEL_39:
    v120 = sub_24E344068();
    v122 = OUTLINED_FUNCTION_12_4(v120, v121);
    v123(&v146, 0, v122);
  }

  OUTLINED_FUNCTION_6_11();
  sub_24E343FD8();
  OUTLINED_FUNCTION_34_0();
  v124();
  __swift_destroy_boxed_opaque_existential_1(&v150);
  OUTLINED_FUNCTION_45();
}