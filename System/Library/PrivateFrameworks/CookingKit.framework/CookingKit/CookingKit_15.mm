void sub_21A2A9E24(uint64_t a1, uint64_t a2)
{
  sub_21A176C98(&qword_27CD043F8, &qword_21A3128B0);
  v3 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  v4 = *(v3 + 32);

  if (v4 == a2)
  {
    goto LABEL_6;
  }

  v5 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  v6 = *(v5 + 72);
  sub_21A2F5434();

  if (!*(v6 + 16) || (sub_21A25A398(a2, v7), (v8 & 1) == 0))
  {

LABEL_6:
    sub_21A2F7714();
    sub_21A2F7434();
    swift_getKeyPath();
    sub_21A2F5094();

    swift_getKeyPath();
    sub_21A2F50B4();

    sub_21A1BEE14();
    sub_21A2F59D4();
    sub_21A28B748();
    swift_getKeyPath();
    goto LABEL_7;
  }

  sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A2F59C4();
  sub_21A28B748();
  swift_getKeyPath();
LABEL_7:
  sub_21A2F50A4();
}

double sub_21A2AA154(uint64_t a1, unsigned __int8 a2)
{
  sub_21A176C98(&qword_27CD043F8, &qword_21A3128B0);
  v3 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v4)
  {
    v6 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();

    sub_21A18FAD4(a2, v6, v4, 0, 0, 0, 5u);
  }

  else
  {
  }

  return result;
}

void sub_21A2AA298(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A2F5984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16 - v9;
  if (sub_21A2F5674())
  {
    sub_21A2F63E4();
    sub_21A2F5974();
    v12 = v11;
    v13 = *(v3 + 8);
    v13(v10, v2);
    sub_21A2F63E4();
    sub_21A2F5964();
    v15 = v14;
    v13(v6, v2);
    sub_21A176C98(&qword_27CD043F8, &qword_21A3128B0);
    sub_21A2F7714();
    sub_21A28F808(v12 + v15);
  }
}

uint64_t sub_21A2AA41C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  sub_21A2F5434();

  return sub_21A2F5434();
}

void sub_21A2AA464(uint64_t a1, unsigned __int8 a2)
{
  sub_21A176C98(&qword_27CD043F8, &qword_21A3128B0);
  v3 = sub_21A2F7714();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_21A14FB78();
  sub_21A2F5434();
  sub_21A2F75E4();

  sub_21A18FAD4(v4, v5, 0, 0, 0, 0, a2);
}

double sub_21A2AA51C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_21A2F5ED4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_21A2F7DE4();
    v10 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v6 + 8))(v9, v5);
    a2 = v12[1];
  }

  sub_21A28A270(a2);

  return result;
}

double sub_21A2AA678()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;

  j__swift_retain(v2);
  sub_21A176C98(&qword_27CD04430, &qword_21A312C28);
  sub_21A1772F8(&qword_27CD04438, &qword_27CD04430, &qword_21A312C28, MEMORY[0x277CE04B0]);
  sub_21A2F6CE4();

  return result;
}

double sub_21A2AA770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_21A2F5ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a5 & 1) == 0)
  {
    sub_21A2F7DE4();
    v13 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release(a4);
    (*(v8 + 8))(v11, v7);
    a4 = v14[1];
  }

  if (a4)
  {
    if (sub_21A2F5674() & 1) != 0 && ((sub_21A2F5674() & 1) != 0 || (sub_21A2F5674()))
    {
      ++*(a4 + 16);
    }
  }

  return result;
}

double sub_21A2AA908()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  j__swift_retain(v1);
  sub_21A176C98(&qword_27CD04440, &qword_21A312C30);
  sub_21A1772F8(&qword_27CD04448, &qword_27CD04440, &qword_21A312C30, MEMORY[0x277CE04B0]);
  sub_21A2F6CB4();

  return result;
}

uint64_t sub_21A2AA9F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v205 = a1;
  v202 = sub_21A176C98(&qword_27CD04450, &qword_21A312C38);
  MEMORY[0x28223BE20](v202, v3);
  v201 = (&v176 - v4);
  v200 = sub_21A176C98(&qword_27CD04458, &qword_21A312C40);
  MEMORY[0x28223BE20](v200, v5);
  v204 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v203 = &v176 - v9;
  v198 = sub_21A176C98(&qword_27CD04460, &qword_21A312C48);
  MEMORY[0x28223BE20](v198, v10);
  v12 = &v176 - v11;
  v195 = sub_21A176C98(&qword_27CD04468, &qword_21A312C50);
  MEMORY[0x28223BE20](v195, v13);
  v197 = &v176 - v14;
  v196 = sub_21A176C98(&qword_27CD04470, &qword_21A312C58);
  MEMORY[0x28223BE20](v196, v15);
  v193 = &v176 - v16;
  v189 = type metadata accessor for InstructionsView(0);
  MEMORY[0x28223BE20](v189, v17);
  v192 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v209 = (&v176 - v21);
  v188 = sub_21A2F67D4();
  v186 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v22);
  v187 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21A2F7894();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_21A176C98(&qword_27CD04478, &qword_21A312C60);
  MEMORY[0x28223BE20](v185, v32);
  v191 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v208 = (&v176 - v36);
  v184 = sub_21A176C98(&qword_27CD04480, &qword_21A312C68);
  MEMORY[0x28223BE20](v184, v37);
  v190 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v207 = (&v176 - v41);
  v181 = type metadata accessor for RecipeAdView(0);
  MEMORY[0x28223BE20](v181, v42);
  v182 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_21A176C98(&qword_27CD04488, &qword_21A312C70);
  MEMORY[0x28223BE20](v183, v44);
  v194 = &v176 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v206 = &v176 - v48;
  v49 = sub_21A2F5ED4();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v176 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A176C98(&qword_27CD04490, &qword_21A312C78);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v199 = &v176 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v210 = &v176 - v59;
  v259 = *(v2 + 136);
  v60 = *(v2 + 128);
  v258 = v60;
  if (v259 == 1)
  {
    if ((v60 & 1) == 0)
    {
LABEL_3:
      v61 = MEMORY[0x277D84F90];
      v62 = *(v2 + 64);
      *(v12 + 8) = *v2;
      v63 = *(v2 + 48);
      *(v12 + 24) = *(v2 + 32);
      v64 = *(v2 + 72);
      v65 = *(v2 + 80);
      *v12 = v62;
      *(v12 + 40) = v63;
      *(v12 + 7) = v64;
      v12[64] = v65;
      *&v242 = 0;

      sub_21A2F7014();
      v66 = *(&v216 + 1);
      *(v12 + 9) = v216;
      *(v12 + 10) = v66;
      *&v242 = 0;
      sub_21A2F7014();
      v67 = *(&v216 + 1);
      *(v12 + 11) = v216;
      *(v12 + 12) = v67;
      *&v242 = 0;
      sub_21A2F7014();
      v68 = *(&v216 + 1);
      *(v12 + 13) = v216;
      *(v12 + 14) = v68;
      *(v12 + 15) = sub_21A2E029C;
      *(v12 + 16) = 0;
      v12[136] = 0;
      v242 = 0uLL;
      *&v243 = 0;
      BYTE8(v243) = -1;
      sub_21A176C98(&qword_27CD04498, &qword_21A315F70);
      sub_21A2F7014();
      v69 = v217;
      v70 = v218;
      v71 = v219;
      *(v12 + 9) = v216;
      *(v12 + 20) = v69;
      v12[168] = v70;
      *(v12 + 22) = v71;
      v72 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
      v73 = v72[14];
      *&v12[v73] = swift_getKeyPath();
      sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
      swift_storeEnumTagMultiPayload();
      v74 = &v12[v72[15]];
      *v74 = swift_getKeyPath();
      v74[8] = 0;
      v75 = &v12[v72[16]];
      *v75 = swift_getKeyPath();
      v75[40] = 0;
      v76 = &v12[v72[17]];
      *&v242 = sub_21A2604E8(v61);
      sub_21A176C98(&qword_27CD044A0, &qword_21A312CF0);
      sub_21A2F7014();
      v77 = *(&v216 + 1);
      *v76 = v216;
      *(v76 + 1) = v77;
      v78 = &v12[v72[18]];
      *&v242 = v61;
      sub_21A176C98(&qword_27CD044A8, &qword_21A312CF8);
      sub_21A2F7014();
      v79 = *(&v216 + 1);
      *v78 = v216;
      *(v78 + 1) = v79;
      v80 = &v12[v72[19]];
      *&v242 = 0;
      sub_21A2F7014();
      v81 = *(&v216 + 1);
      *v80 = v216;
      *(v80 + 1) = v81;
      v82 = sub_21A2F7334();
      v84 = v83;
      v85 = sub_21A2F6F14();
      sub_21A2F7344();
      sub_21A2F57C4();
      v86 = v252;
      v87 = v253;
      v88 = v254;
      v89 = v255;
      v90 = v256;
      v91 = v257;
      *&v242 = v85;
      *(&v242 + 1) = v252;
      LOBYTE(v243) = v253;
      *(&v243 + 1) = *v241;
      DWORD1(v243) = *&v241[3];
      *(&v243 + 1) = v254;
      LOBYTE(v244) = v255;
      DWORD1(v244) = *&v240[3];
      *(&v244 + 1) = *v240;
      *(&v244 + 1) = v256;
      *&v245 = v257;
      *(&v245 + 1) = 1;
      v246 = 0uLL;
      LOBYTE(v247) = 0;
      DWORD1(v247) = *&v239[3];
      *(&v247 + 1) = *v239;
      v249 = 0;
      *(&v247 + 1) = 2;
      v248 = 0;
      LOBYTE(v250) = 0;
      *(&v250 + 1) = v82;
      v251 = v84;
      v92 = &v12[*(v198 + 36)];
      v93 = v250;
      *(v92 + 6) = 0u;
      *(v92 + 7) = v93;
      *(v92 + 16) = v84;
      v94 = v245;
      *(v92 + 2) = v244;
      *(v92 + 3) = v94;
      v95 = v247;
      *(v92 + 4) = v246;
      *(v92 + 5) = v95;
      v96 = v243;
      *v92 = v242;
      *(v92 + 1) = v96;
      *&v216 = v85;
      *(&v216 + 1) = v86;
      LOBYTE(v217) = v87;
      *(&v217 + 1) = *v241;
      HIDWORD(v217) = *&v241[3];
      v218 = v88;
      LOBYTE(v219) = v89;
      *(&v219 + 1) = *v240;
      HIDWORD(v219) = *&v240[3];
      v220 = v90;
      v221 = v91;
      v223 = 0;
      v224 = 0;
      v222 = 1;
      v225 = 0;
      *&v226[3] = *&v239[3];
      *v226 = *v239;
      v228 = 0;
      v229 = 0;
      v227 = 2;
      v230 = 0;
      v231 = v82;
      v232 = v84;
      sub_21A183960(&v242, &v233, &qword_27CD044B0, &unk_21A312D00);
      sub_21A1427A8(&v216, &qword_27CD044B0, &unk_21A312D00);
      sub_21A183960(v12, v197, &qword_27CD04460, &qword_21A312C48);
      swift_storeEnumTagMultiPayload();
      sub_21A1772F8(&qword_27CD044B8, &qword_27CD04470, &qword_21A312C58, MEMORY[0x277CE14C0]);
      sub_21A2ADA08();
      v97 = v210;
      sub_21A2F6114();
      sub_21A1427A8(v12, &qword_27CD04460, &qword_21A312C48);
      goto LABEL_10;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v98 = sub_21A2F65B4();
    v180 = v49;
    v99 = v98;
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1427A8(&v258, &qword_27CD00098, &qword_21A2FF0B0);
    (*(v50 + 8))(v53, v180);
    if (v216 != 1)
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF8D0, type metadata accessor for RecipeAdViewModel, &unk_21A2FCF5C);
  v100 = v182;
  sub_21A2F7754();
  swift_getKeyPath();
  LOBYTE(v216) = 0;
  sub_21A2AF4FC(&qword_27CD04518, type metadata accessor for RecipeAdView, &unk_21A315678);
  v101 = v206;
  sub_21A2F6A24();

  sub_21A2AF1E0(v100, type metadata accessor for RecipeAdView);
  v102 = sub_21A2F65F4();
  sub_21A2F55A4();
  v103 = v101 + *(v183 + 36);
  *v103 = v102;
  *(v103 + 8) = v104;
  *(v103 + 16) = v105;
  *(v103 + 24) = v106;
  *(v103 + 32) = v107;
  *(v103 + 40) = 0;
  v108 = sub_21A2F6014();
  v109 = v207;
  *v207 = v108;
  v109[1] = 0;
  *(v109 + 16) = 0;
  v110 = sub_21A176C98(&qword_27CD04520, &qword_21A312D88);
  sub_21A2AC10C(v2, v109 + *(v110 + 44));
  v111 = v109 + *(v184 + 52);
  *(v111 + 1) = 0;
  *(v111 + 2) = 0;
  *v111 = 1;
  v111[24] = 0;
  sub_21A2F7344();
  sub_21A2F57C4();
  v183 = v254;
  v184 = v252;
  v181 = v257;
  v182 = v256;
  LOBYTE(v242) = 1;
  v215 = v253;
  v214 = v255;
  sub_21A2F7884();
  sub_21A2F4A54();
  v112 = sub_21A2F7934(v31, 0, 0, 0, v27, "The navigation header title for the directions section of the recipe card", 73, 2);
  v114 = v113;
  v115 = *(v2 + 64);
  swift_getKeyPath();
  *&v216 = v115;
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  v116 = *(v115 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader);
  v117 = *(v115 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader + 8);
  v118 = v208;
  *v208 = v112;
  v118[1] = v114;
  v118[2] = v116;
  v118[3] = v117;
  v118[4] = swift_getKeyPath();
  *(v118 + 40) = 0;
  type metadata accessor for SectionHeaderView(0);
  *&v216 = 0x4034000000000000;
  (*(v186 + 104))(v187, *MEMORY[0x277CE0A90], v188);
  sub_21A1CD5C0();
  sub_21A2F5434();
  sub_21A2F56D4();
  *&v216 = 0x402C000000000000;
  sub_21A2F56E4();
  v119 = v118 + *(v185 + 52);
  *(v119 + 1) = 0;
  *(v119 + 2) = 0;
  *v119 = 2;
  v119[24] = 0;
  sub_21A1D4544();
  v120 = v209;
  *v209 = 0u;
  v120[1] = 0u;
  *(v120 + 26) = 0u;
  sub_21A2F55D4();
  v121 = v189;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFFF70, type metadata accessor for InstructionsViewModel, &unk_21A2FE7B4);
  sub_21A2F7754();
  v122 = v120 + *(v121 + 36);
  *v122 = swift_getKeyPath();
  v122[8] = 0;
  v123 = v120 + *(v121 + 40);
  KeyPath = swift_getKeyPath();
  *(v123 + 1) = 0;
  *(v123 + 2) = 0;
  *v123 = KeyPath;
  *(v123 + 12) = 0;
  v216 = *(v2 + 112);
  sub_21A176C98(&qword_27CD01740, &unk_21A30E570);
  sub_21A2F7024();
  if ((v233 & 1) != 0 || (v216 = *(v2 + 88), LOBYTE(v217) = *(v2 + 104), v125 = sub_21A176C98(&qword_27CCFF938, &qword_21A2FD258), MEMORY[0x21CED5C20](&v233, v125), v233 == 1))
  {
    sub_21A2F7344();
    sub_21A2F57C4();
    LODWORD(v188) = 0;
    v189 = v233;
    v186 = v237;
    v187 = v235;
    v185 = v238;
    v213 = 1;
    v212 = v234;
    v211 = v236;
    v178 = 1;
    v179 = v234;
    v180 = v236;
    LOBYTE(v216) = 0;
  }

  else
  {
    v189 = 0;
    v186 = 0;
    v187 = 0;
    v185 = 0;
    v179 = 0;
    v180 = 0;
    v178 = 0;
    LODWORD(v188) = 1;
  }

  v126 = v194;
  sub_21A183960(v206, v194, &qword_27CD04488, &qword_21A312C70);
  v127 = v190;
  sub_21A183960(v207, v190, &qword_27CD04480, &qword_21A312C68);
  v128 = v242;
  v176 = v215;
  v177 = v214;
  v129 = v191;
  sub_21A183960(v208, v191, &qword_27CD04478, &qword_21A312C60);
  v130 = v192;
  sub_21A2ADF0C(v209, v192, type metadata accessor for InstructionsView);
  v131 = v126;
  v132 = v193;
  sub_21A183960(v131, v193, &qword_27CD04488, &qword_21A312C70);
  v133 = sub_21A176C98(&qword_27CD04528, &qword_21A312E10);
  sub_21A183960(v127, v132 + v133[12], &qword_27CD04480, &qword_21A312C68);
  v134 = v132 + v133[16];
  *v134 = 0;
  *(v134 + 8) = v128;
  *(v134 + 16) = v184;
  *(v134 + 24) = v176;
  *(v134 + 32) = v183;
  *(v134 + 40) = v177;
  v135 = v181;
  *(v134 + 48) = v182;
  *(v134 + 56) = v135;
  sub_21A183960(v129, v132 + v133[20], &qword_27CD04478, &qword_21A312C60);
  sub_21A2ADF0C(v130, v132 + v133[24], type metadata accessor for InstructionsView);
  v136 = v132 + v133[28];
  v137 = v178;
  *v136 = 0;
  *(v136 + 8) = v137;
  v138 = v179;
  *(v136 + 16) = v189;
  *(v136 + 24) = v138;
  v139 = v180;
  *(v136 + 32) = v187;
  *(v136 + 40) = v139;
  v140 = v185;
  *(v136 + 48) = v186;
  *(v136 + 56) = v140;
  *(v136 + 64) = v188;
  sub_21A2AF1E0(v130, type metadata accessor for InstructionsView);
  sub_21A1427A8(v129, &qword_27CD04478, &qword_21A312C60);
  sub_21A1427A8(v127, &qword_27CD04480, &qword_21A312C68);
  sub_21A1427A8(v194, &qword_27CD04488, &qword_21A312C70);
  sub_21A183960(v132, v197, &qword_27CD04470, &qword_21A312C58);
  swift_storeEnumTagMultiPayload();
  sub_21A1772F8(&qword_27CD044B8, &qword_27CD04470, &qword_21A312C58, MEMORY[0x277CE14C0]);
  sub_21A2ADA08();
  v97 = v210;
  sub_21A2F6114();
  sub_21A1427A8(v132, &qword_27CD04470, &qword_21A312C58);
  sub_21A2AF1E0(v209, type metadata accessor for InstructionsView);
  sub_21A1427A8(v208, &qword_27CD04478, &qword_21A312C60);
  sub_21A1427A8(v207, &qword_27CD04480, &qword_21A312C68);
  sub_21A1427A8(v206, &qword_27CD04488, &qword_21A312C70);
LABEL_10:
  v242 = *(v2 + 112);
  sub_21A176C98(&qword_27CD01740, &unk_21A30E570);
  sub_21A2F7044();
  v209 = *(&v216 + 1);
  v141 = v216;
  LODWORD(v208) = v217;
  LODWORD(v207) = sub_21A2F65F4();
  sub_21A2F55A4();
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  LOBYTE(v216) = 0;
  v150 = sub_21A2F6014();
  v151 = v201;
  *v201 = v150;
  *(v151 + 8) = 0;
  *(v151 + 16) = 0;
  v152 = sub_21A176C98(&qword_27CD044D8, &qword_21A312D10);
  sub_21A2AC5DC(v2, v151 + *(v152 + 44));
  v153 = swift_allocObject();
  v154 = *(v2 + 112);
  v153[7] = *(v2 + 96);
  v153[8] = v154;
  *(v153 + 137) = *(v2 + 121);
  v155 = *(v2 + 48);
  v153[3] = *(v2 + 32);
  v153[4] = v155;
  v156 = *(v2 + 80);
  v153[5] = *(v2 + 64);
  v153[6] = v156;
  v157 = *(v2 + 16);
  v153[1] = *v2;
  v153[2] = v157;
  v158 = (v151 + *(v202 + 36));
  *v158 = sub_21A2ACC00;
  v158[1] = 0;
  v158[2] = sub_21A2ADAF0;
  v158[3] = v153;
  v159 = swift_allocObject();
  v160 = *(v2 + 112);
  v159[7] = *(v2 + 96);
  v159[8] = v160;
  *(v159 + 137) = *(v2 + 121);
  v161 = *(v2 + 48);
  v159[3] = *(v2 + 32);
  v159[4] = v161;
  v162 = *(v2 + 80);
  v159[5] = *(v2 + 64);
  v159[6] = v162;
  v163 = *(v2 + 16);
  v159[1] = *v2;
  v159[2] = v163;
  sub_21A2ADBB4(v2, &v216);
  sub_21A2ADBB4(v2, &v216);
  sub_21A2ADBEC();
  v164 = v203;
  sub_21A2F6D54();

  sub_21A1427A8(v151, &qword_27CD04450, &qword_21A312C38);
  v165 = v199;
  v166 = v164 + *(v200 + 52);
  *(v166 + 8) = 0;
  *(v166 + 16) = 0;
  *v166 = 3;
  *(v166 + 24) = 0;
  sub_21A183960(v97, v165, &qword_27CD04490, &qword_21A312C78);
  v167 = v204;
  sub_21A183960(v164, v204, &qword_27CD04458, &qword_21A312C40);
  v168 = v205;
  sub_21A183960(v165, v205, &qword_27CD04490, &qword_21A312C78);
  v169 = sub_21A176C98(&qword_27CD04508, &qword_21A312D28);
  v170 = v168 + *(v169 + 48);
  *&v242 = v141;
  v171 = v209;
  *(&v242 + 1) = v209;
  v172 = v208;
  LOBYTE(v243) = v208;
  LOBYTE(v151) = v207;
  BYTE8(v243) = v207;
  *&v244 = v143;
  *(&v244 + 1) = v145;
  *&v245 = v147;
  *(&v245 + 1) = v149;
  LOBYTE(v246) = 0;
  *(v170 + 64) = 0;
  v173 = v243;
  *v170 = v242;
  *(v170 + 16) = v173;
  v174 = v245;
  *(v170 + 32) = v244;
  *(v170 + 48) = v174;
  sub_21A183960(v167, v168 + *(v169 + 64), &qword_27CD04458, &qword_21A312C40);
  sub_21A183960(&v242, &v216, &qword_27CD04510, &qword_21A312D30);
  sub_21A1427A8(v164, &qword_27CD04458, &qword_21A312C40);
  sub_21A1427A8(v210, &qword_27CD04490, &qword_21A312C78);
  sub_21A1427A8(v167, &qword_27CD04458, &qword_21A312C40);
  *&v216 = v141;
  *(&v216 + 1) = v171;
  LOBYTE(v217) = v172;
  LOBYTE(v218) = v151;
  v219 = v143;
  v220 = v145;
  v221 = v147;
  v222 = v149;
  LOBYTE(v223) = 0;
  sub_21A1427A8(&v216, &qword_27CD04510, &qword_21A312D30);
  return sub_21A1427A8(v165, &qword_27CD04490, &qword_21A312C78);
}

uint64_t sub_21A2AC10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for IngredientsView(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v41 = &v40 - v8;
  v40 = sub_21A2F67D4();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21A2F7894();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SectionHeaderView(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v40 - v27;
  sub_21A2F7884();
  sub_21A2F4A54();
  v29 = sub_21A2F7934(v20, 0, 0, 0, v16, "The navigation header title for the ingredients section of the recipe card", 74, 2);
  v31 = v30;
  v32 = *(a1 + 64);
  swift_getKeyPath();
  v44 = v32;
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  v33 = *(v32 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader);
  v34 = *(v32 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader + 8);
  *v28 = v29;
  *(v28 + 1) = v31;
  *(v28 + 2) = v33;
  *(v28 + 3) = v34;
  *(v28 + 4) = swift_getKeyPath();
  v28[40] = 0;
  v44 = 0x4034000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A90], v40);
  sub_21A1CD5C0();
  sub_21A2F5434();
  sub_21A2F56D4();
  v44 = 0x402C000000000000;
  sub_21A2F56E4();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFFA78, type metadata accessor for IngredientsViewModel, &unk_21A2FD688);
  v35 = v41;
  sub_21A2F7754();
  sub_21A2ADF0C(v28, v24, type metadata accessor for SectionHeaderView);
  v36 = v42;
  sub_21A2ADF0C(v35, v42, type metadata accessor for IngredientsView);
  v37 = v43;
  sub_21A2ADF0C(v24, v43, type metadata accessor for SectionHeaderView);
  v38 = sub_21A176C98(&qword_27CD04538, &qword_21A312E68);
  sub_21A2ADF0C(v36, v37 + *(v38 + 48), type metadata accessor for IngredientsView);
  sub_21A2AF1E0(v35, type metadata accessor for IngredientsView);
  sub_21A2AF1E0(v28, type metadata accessor for SectionHeaderView);
  sub_21A2AF1E0(v36, type metadata accessor for IngredientsView);
  return sub_21A2AF1E0(v24, type metadata accessor for SectionHeaderView);
}

uint64_t sub_21A2AC5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EndOfRecipeContainerView(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CD04540, &qword_21A312E98);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v57 - v10;
  v12 = sub_21A176C98(&qword_27CD04548, &qword_21A312EA0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v57 - v14;
  v16 = sub_21A176C98(&qword_27CD04550, &qword_21A312EA8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v57 - v18;
  v20 = sub_21A176C98(&qword_27CD04558, &qword_21A312EB0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v24, v25);
  if (*(a1 + 81))
  {
    v30 = *(v27 + 56);

    return v30(a2, 1, 1, v29);
  }

  else
  {
    v58 = v12;
    v59 = v16;
    v60 = &v57 - v28;
    v61 = v27;
    v62 = v26;
    v63 = a2;
    swift_getKeyPath();
    sub_21A2AF4FC(&qword_27CD002D8, type metadata accessor for EndOfRecipeViewModel, &unk_21A311EE4);
    sub_21A2F7754();
    sub_21A2F7344();
    sub_21A2F5C14();
    sub_21A2ADE00(v7, v11, type metadata accessor for EndOfRecipeContainerView);
    v32 = &v11[*(v8 + 36)];
    v33 = v71;
    *(v32 + 4) = v70;
    *(v32 + 5) = v33;
    *(v32 + 6) = v72;
    v34 = v67;
    *v32 = v66;
    *(v32 + 1) = v34;
    v35 = v69;
    *(v32 + 2) = v68;
    *(v32 + 3) = v35;
    v64 = a1;
    v36 = *(a1 + 64);
    swift_getKeyPath();
    *&v73[0] = v36;
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
    sub_21A2F5094();

    v37 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled;
    sub_21A2F7354();
    sub_21A2F57C4();
    sub_21A149B18(v11, v15, &qword_27CD04540, &qword_21A312E98);
    v38 = &v15[*(v58 + 36)];
    v39 = v73[1];
    v40 = v73[2];
    *v38 = v73[0];
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    swift_getKeyPath();
    v65 = v36;
    sub_21A2F5094();

    v41 = 0.0;
    if (*(v36 + v37) == 1)
    {
      v41 = -*(v64 + 40);
    }

    sub_21A149B18(v15, v19, &qword_27CD04548, &qword_21A312EA0);
    v42 = &v19[*(v59 + 36)];
    *v42 = v41;
    *(v42 + 1) = 0;
    v43 = sub_21A2F65F4();
    sub_21A2F55A4();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_21A149B18(v19, v23, &qword_27CD04550, &qword_21A312EA8);
    v52 = v62;
    v53 = &v23[*(v62 + 36)];
    *v53 = v43;
    *(v53 + 1) = v45;
    *(v53 + 2) = v47;
    *(v53 + 3) = v49;
    *(v53 + 4) = v51;
    v53[40] = 0;
    v54 = v60;
    sub_21A149B18(v23, v60, &qword_27CD04558, &qword_21A312EB0);
    v55 = v54;
    v56 = v63;
    sub_21A149B18(v55, v63, &qword_27CD04558, &qword_21A312EB0);
    return (*(v61 + 56))(v56, 0, 1, v52);
  }
}

void sub_21A2ACC00(BOOL *a1@<X8>)
{
  v2 = sub_21A2F6134();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6304();
  sub_21A2F5824();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetHeight(v16) > 1.0;
}

double sub_21A2ACD28(char a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(v2 + 33) = a1;
  if ((a1 & 1) != 0 && *(v2 + 32) != 3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A2ACF20@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for RecipeAdView(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v8 = v2[1];
  v10 = *(v2 + 16);
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF8D0, type metadata accessor for RecipeAdViewModel, &unk_21A2FCF5C);
  sub_21A2F7754();
  swift_getKeyPath();
  v14[15] = 1;
  sub_21A2AF4FC(&qword_27CD04518, type metadata accessor for RecipeAdView, &unk_21A315678);
  sub_21A2F6A24();

  sub_21A2AF1E0(v7, type metadata accessor for RecipeAdView);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  v12 = (a1 + *(sub_21A176C98(&qword_27CD04788, &unk_21A313370) + 36));
  *v12 = sub_21A2ACE90;
  v12[1] = 0;
  v12[2] = sub_21A2AF620;
  v12[3] = v11;
}

uint64_t sub_21A2AD12C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A2AD15C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DE4();
  *a1 = result & 1;
  return result;
}

void *sub_21A2AD1AC@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_21A2F7644();
  *a3 = v5;
  return result;
}

uint64_t type metadata accessor for RecipeCardView(uint64_t a1)
{
  result = qword_27CD04408;
  if (!qword_27CD04408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A2AD2B8(uint64_t a1)
{
  sub_21A2AD3F8(319);
  if (v1 <= 0x3F)
  {
    sub_21A2AD4E0(319, &qword_27CCFF428, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21A2AD48C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_21A2AD48C(319, &qword_27CCFEE48, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_21A2AD4E0(319, &qword_27CD016D8, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A2AD3F8(uint64_t a1)
{
  if (!qword_27CD04418)
  {
    type metadata accessor for RecipeCardViewModel(255);
    sub_21A2AF4FC(&qword_27CCFED68, type metadata accessor for RecipeCardViewModel, &unk_21A310CDC);
    v1 = sub_21A2F7744();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD04418);
    }
  }
}

void sub_21A2AD48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F5664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A2AD4E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21A2AD534()
{
  result = qword_27CD04420;
  if (!qword_27CD04420)
  {
    sub_21A176D98(&qword_27CD04400, &qword_21A3128E0);
    sub_21A1772F8(&qword_27CD04428, &qword_27CD043E8, &qword_21A3128A0, MEMORY[0x277CE11A8]);
    sub_21A1772F8(&qword_27CD009B0, &qword_27CD009B8, &unk_21A309250, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04420);
  }

  return result;
}

uint64_t sub_21A2AD618(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21A2AD660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A2AD6B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A2AD6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_21A2AD74C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21A2AD780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A2AD7C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A2AD8A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_21A2F7654();
}

uint64_t sub_21A2AD90C@<X0>(void *__src@<X0>, char a2@<W1>, char *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = &a3[*(sub_21A176C98(&qword_27CD04728, &qword_21A313288) + 36)];
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CD02B90, type metadata accessor for HorizontalParallaxOffset, &unk_21A311CF8);
  sub_21A2F7754();
  v6[*(type metadata accessor for HorizontalParallaxViewModifier(0) + 20)] = a2;
  memcpy(a3, __src, 0x160uLL);
  return sub_21A183960(__dst, &v8, &qword_27CD04720, &qword_21A313280);
}

unint64_t sub_21A2ADA08()
{
  result = qword_27CD044C0;
  if (!qword_27CD044C0)
  {
    sub_21A176D98(&qword_27CD04460, &qword_21A312C48);
    sub_21A2AF4FC(&qword_27CD044C8, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView, &unk_21A315F80);
    sub_21A1772F8(&qword_27CD044D0, &qword_27CD044B0, &unk_21A312D00, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD044C0);
  }

  return result;
}

uint64_t sub_21A2ADB50()
{

  sub_21A1478E8(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

unint64_t sub_21A2ADBEC()
{
  result = qword_27CD044E0;
  if (!qword_27CD044E0)
  {
    sub_21A176D98(&qword_27CD04450, &qword_21A312C38);
    sub_21A1772F8(&qword_27CD044E8, &qword_27CD044F0, &qword_21A312D18, MEMORY[0x277CE1198]);
    sub_21A1772F8(&qword_27CD044F8, &qword_27CD04500, &qword_21A312D20, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD044E0);
  }

  return result;
}

unint64_t sub_21A2ADCD0()
{
  result = qword_27CD04530;
  if (!qword_27CD04530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04530);
  }

  return result;
}

uint64_t sub_21A2ADD24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21A2F5434();
  return a5(v7, v6);
}

unint64_t sub_21A2ADDAC()
{
  result = qword_27CD04560;
  if (!qword_27CD04560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04560);
  }

  return result;
}

uint64_t sub_21A2ADE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2ADE68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A2A6E50(v4, a1);
}

uint64_t sub_21A2ADF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A2ADF74()
{
  result = qword_27CD045C0;
  if (!qword_27CD045C0)
  {
    sub_21A176D98(&qword_27CD04578, &qword_21A312F20);
    sub_21A1772F8(&qword_27CD045C8, &qword_27CD045D0, &qword_21A312FE8, MEMORY[0x277CDF7D8]);
    sub_21A1772F8(&qword_27CD00D88, &qword_27CD00D68, &qword_21A301950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD045C0);
  }

  return result;
}

unint64_t sub_21A2AE058()
{
  result = qword_27CD045D8;
  if (!qword_27CD045D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD045D8);
  }

  return result;
}

unint64_t sub_21A2AE0AC()
{
  result = qword_27CD045E0;
  if (!qword_27CD045E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD045E0);
  }

  return result;
}

unint64_t sub_21A2AE100()
{
  result = qword_27CD045E8;
  if (!qword_27CD045E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD045E8);
  }

  return result;
}

unint64_t sub_21A2AE154()
{
  result = qword_27CD045F0;
  if (!qword_27CD045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD045F0);
  }

  return result;
}

unint64_t sub_21A2AE224()
{
  result = qword_27CD04600;
  if (!qword_27CD04600)
  {
    sub_21A176D98(&qword_27CD045B8, &qword_21A312F60);
    sub_21A2AE2E0();
    sub_21A2AF4FC(&qword_27CD04628, type metadata accessor for SetupUserDidScrollTriggerModifier, &unk_21A2FDA64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04600);
  }

  return result;
}

unint64_t sub_21A2AE2E0()
{
  result = qword_27CD04608;
  if (!qword_27CD04608)
  {
    sub_21A176D98(&qword_27CD045B0, &qword_21A312F58);
    sub_21A2AE39C();
    sub_21A2AF4FC(&qword_27CD04620, type metadata accessor for SetupScrollToTopTriggerModifier, &unk_21A309E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04608);
  }

  return result;
}

unint64_t sub_21A2AE39C()
{
  result = qword_27CD04610;
  if (!qword_27CD04610)
  {
    sub_21A176D98(&qword_27CD045A8, &qword_21A312F50);
    sub_21A2AE428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04610);
  }

  return result;
}

unint64_t sub_21A2AE428()
{
  result = qword_27CD04618;
  if (!qword_27CD04618)
  {
    sub_21A176D98(&qword_27CD045A0, &qword_21A312F48);
    sub_21A176D98(&qword_27CD04590, &qword_21A312F38);
    sub_21A176D98(&qword_27CD04588, &qword_21A312F30);
    sub_21A176D98(&qword_27CD04580, &qword_21A312F28);
    sub_21A176D98(&qword_27CD04578, &qword_21A312F20);
    sub_21A2ADF74();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A2AE058();
    sub_21A2AE0AC();
    swift_getOpaqueTypeConformance2();
    sub_21A2AE100();
    sub_21A2AE154();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04618);
  }

  return result;
}

unint64_t sub_21A2AE610()
{
  result = qword_27CD04630;
  if (!qword_27CD04630)
  {
    sub_21A176D98(&qword_27CD045F8, &qword_21A313068);
    sub_21A2AE224();
    sub_21A2AF4FC(&qword_27CD025A0, type metadata accessor for HorizontalParallaxViewModifier, &unk_21A310930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04630);
  }

  return result;
}

void *sub_21A2AE6CC@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_21A2F7644();
  *a3 = v5;
  return result;
}

unint64_t sub_21A2AE768()
{
  result = qword_27CD04690;
  if (!qword_27CD04690)
  {
    sub_21A176D98(&qword_27CD04688, &qword_21A313118);
    sub_21A176D98(&qword_27CD04698, &qword_21A313120);
    sub_21A176D98(&qword_27CD046A0, &qword_21A313128);
    sub_21A1772F8(&qword_27CD046A8, &qword_27CD046A0, &qword_21A313128, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD046B0, &qword_27CD046B8, &qword_21A313130, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04690);
  }

  return result;
}

unint64_t sub_21A2AE8D4()
{
  result = qword_27CD046C8;
  if (!qword_27CD046C8)
  {
    sub_21A176D98(&qword_27CD04658, &qword_21A3130E8);
    sub_21A176D98(&qword_27CD04648, &qword_21A3130D8);
    sub_21A1772F8(&qword_27CD046C0, &qword_27CD04648, &qword_21A3130D8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD03148, &qword_27CD03150, &qword_21A30B5E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD046C8);
  }

  return result;
}

void sub_21A2AE9FC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for RecipeCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21A2A9388(a1, a2, v6);
}

void sub_21A2AEA7C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for RecipeCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21A2A9B08(a1, a2, v6);
}

uint64_t sub_21A2AEAFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A2AEB78()
{
  v1 = type metadata accessor for RecipeCardView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_21A176C98(&qword_27CD043F8, &qword_21A3128B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_21A1478E8(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  sub_21A1478E8(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v4 = v1[7];
  sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21A2F5654();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_21A1478E8(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v6 = v1[9];
  sub_21A176C98(&qword_27CCFED70, &qword_21A2FAC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21A2F5A64();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_21A2AED98(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecipeCardView(0);

  sub_21A2AA298(a1, a2);
}

unint64_t sub_21A2AEE20()
{
  result = qword_27CD046E0;
  if (!qword_27CD046E0)
  {
    sub_21A176D98(&qword_27CD04678, &qword_21A313108);
    sub_21A176D98(&qword_27CD04668, &qword_21A3130F8);
    sub_21A176D98(&qword_27CD046D0, &qword_21A3131C0);
    sub_21A176D98(&qword_27CD04660, &qword_21A3130F0);
    sub_21A176D98(&qword_27CD00380, &unk_21A2FF810);
    sub_21A176D98(&qword_27CD04658, &qword_21A3130E8);
    sub_21A2AE8D4();
    swift_getOpaqueTypeConformance2();
    sub_21A2AEAFC(&qword_27CD00378, &qword_27CD00380, &unk_21A2FF810, sub_21A17A0F8);
    swift_getOpaqueTypeConformance2();
    sub_21A2AEAFC(&qword_27CD046D8, &qword_27CD046D0, &qword_21A3131C0, sub_21A280DAC);
    swift_getOpaqueTypeConformance2();
    sub_21A2AF014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD046E0);
  }

  return result;
}

unint64_t sub_21A2AF014()
{
  result = qword_27CD046E8;
  if (!qword_27CD046E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD046E8);
  }

  return result;
}

double sub_21A2AF088()
{
  v1 = *(type metadata accessor for RecipeCardView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_21A2AA154(v2, v3);
}

double sub_21A2AF14C()
{
  v1 = *(type metadata accessor for RecipeCardView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  return sub_21A2A99B8(v0 + v2, v4, v5, v6);
}

uint64_t sub_21A2AF1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A2AF248()
{
  result = qword_27CD04730;
  if (!qword_27CD04730)
  {
    sub_21A176D98(&qword_27CD04720, &qword_21A313280);
    sub_21A2AF2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04730);
  }

  return result;
}

unint64_t sub_21A2AF2D4()
{
  result = qword_27CD04738;
  if (!qword_27CD04738)
  {
    sub_21A176D98(&qword_27CD04740, &qword_21A313290);
    sub_21A2AF360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04738);
  }

  return result;
}

unint64_t sub_21A2AF360()
{
  result = qword_27CD04748;
  if (!qword_27CD04748)
  {
    sub_21A176D98(&qword_27CD04750, &qword_21A313298);
    sub_21A2AF3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04748);
  }

  return result;
}

unint64_t sub_21A2AF3EC()
{
  result = qword_27CD04758;
  if (!qword_27CD04758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04758);
  }

  return result;
}

unint64_t sub_21A2AF440()
{
  result = qword_27CD04760;
  if (!qword_27CD04760)
  {
    sub_21A176D98(&qword_27CD04728, &qword_21A313288);
    sub_21A2AF248();
    sub_21A2AF4FC(&qword_27CD025A0, type metadata accessor for HorizontalParallaxViewModifier, &unk_21A310930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04760);
  }

  return result;
}

uint64_t sub_21A2AF4FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A2AF578(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_21A176D98(a2, a3);
  sub_21A1772F8(a4, a2, a3, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21A2AF62C()
{
  result = qword_27CD04790;
  if (!qword_27CD04790)
  {
    sub_21A176D98(&qword_27CD04788, &unk_21A313370);
    type metadata accessor for RecipeAdView(255);
    sub_21A176D98(&qword_27CCFF8B0, &qword_21A2FCFF0);
    sub_21A2AF4FC(&qword_27CD04518, type metadata accessor for RecipeAdView, &unk_21A315678);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD044F8, &qword_27CD04500, &qword_21A312D20, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04790);
  }

  return result;
}

uint64_t sub_21A2AF770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = *a1;
  v8 = sub_21A2F8024();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v12 = (v7 + *MEMORY[0x277D84DE8]);
  v13 = *v12;
  v21 = v12[1];
  v24 = v13;
  swift_getTupleTypeMetadata2();
  v20 = sub_21A2F8114();
  v15 = MEMORY[0x28223BE20](v20, v14);
  MEMORY[0x21CED6550](a2, a3, v15);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v17 = v22;
  v16[4] = v22;
  v16[5] = a1;

  swift_getWitnessTable();
  sub_21A2F81B4();

  (*(v23 + 8))(v11, v8);
  v25 = a2;
  v26 = v21;
  v27 = a3;
  v28 = v17;
  swift_getWitnessTable();
  return sub_21A2F77B4();
}

uint64_t sub_21A2AF9F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAtKeyPath();
  v7 = *(*(v5 - 8) + 16);

  return v7(a3 + v6, a1, v5);
}

uint64_t RecipeIndexableFields.description.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeIndexableFields.ingredients.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeIndexableFields.instructions.getter()
{
  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2AFC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = sub_21A2F6974();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v3);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v1 + 24);
  sub_21A2F5434();
  sub_21A2F67B4();
  v5 = sub_21A2F68E4();
  v7 = v6;
  v9 = v8;

  v10 = [objc_opt_self() secondaryLabelColor];
  *&v44[0] = sub_21A2F6EF4();
  v11 = sub_21A2F68A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_21A1834EC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v39[0] = v15 & 1;
  v43 = 0;
  *&v40 = v11;
  *(&v40 + 1) = v13;
  LOBYTE(v41) = v15 & 1;
  *(&v41 + 1) = v17;
  *v42 = KeyPath;
  *&v42[8] = 4;
  v42[16] = 0;
  *&v42[17] = 256;
  v19 = sub_21A2B0428();
  v21 = v20;
  v23 = v22;
  v24 = v34;
  sub_21A2F6964();
  sub_21A1834EC(v19, v21, v23 & 1);

  sub_21A176C98(&qword_27CD04798, &qword_21A3134F8);
  sub_21A2B05B4();
  v25 = v38;
  sub_21A2F6AB4();
  (*(v35 + 8))(v24, v37);
  v44[0] = v40;
  v44[1] = v41;
  v45[0] = *v42;
  *(v45 + 15) = *&v42[15];
  sub_21A2B0640(v44);
  *&v40 = *v2;
  BYTE8(v40) = *(v2 + 8);
  v26 = swift_allocObject();
  v27 = *(v2 + 16);
  *(v26 + 1) = *v2;
  *(v26 + 2) = v27;
  *(v26 + 3) = *(v2 + 32);
  sub_21A2F5434();
  sub_21A2B06B0(&v40, v39);

  v28 = sub_21A2F7344();
  v30 = v29;
  v31 = (v25 + *(sub_21A176C98(&qword_27CD047A8, &qword_21A313508) + 36));
  *v31 = sub_21A2B06A8;
  v31[1] = v26;
  v31[2] = v28;
  v31[3] = v30;
  v32 = (v25 + *(sub_21A176C98(&qword_27CD047B0, &qword_21A313510) + 36));
  *v32 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0, &unk_21A2FCEA0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for RecipeLabelVibrancyViewModifier(0);
  *(v32 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_21A2AFFE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v33 = sub_21A176C98(&qword_27CD047B8, &qword_21A313548);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v6);
  v32 = &v31 - v7;
  v8 = sub_21A2F6994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F6954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v31 - v21;
  if (!*(*a1 + 16))
  {
    goto LABEL_6;
  }

  (*(v9 + 16))(v12, *a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8, v20);
  sub_21A2F6984();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 32))(v22, v17, v13);
  if ((sub_21A2F68F4() & 1) == 0)
  {
    v23 = sub_21A2F6904();
    sub_21A2B08F8(&qword_27CD047C0, MEMORY[0x277CE0B80], MEMORY[0x277CE0B98]);
    sub_21A2F7D04();
    sub_21A2F7D54();
    if (v23 >= sub_21A2F7D44())
    {
      (*(v14 + 8))(v22, v13);
LABEL_6:
      v29 = 1;
      v28 = v33;
      v27 = v34;
      return (*(v5 + 56))(v27, v29, 1, v28);
    }
  }

  v37 = *a2;
  v38 = *(a2 + 8);
  v36 = *(a2 + 1);
  v24 = swift_allocObject();
  v25 = *(a2 + 1);
  v24[1] = *a2;
  v24[2] = v25;
  v24[3] = *(a2 + 2);
  sub_21A2B06B0(&v37, v35);
  sub_21A294420(&v36, v35);

  v26 = v32;
  sub_21A2F7094();
  (*(v14 + 8))(v22, v13);
  v28 = v33;
  v27 = v34;
  (*(v5 + 32))(v34, v26, v33);
  v29 = 0;
  return (*(v5 + 56))(v27, v29, 1, v28);
}

uint64_t sub_21A2B03FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21A2F6F14();
  *a2 = result;
  return result;
}

uint64_t sub_21A2B0428()
{
  sub_21A2F5F54();
  LOWORD(v13) = 2;
  v0 = sub_21A2F69A4();
  v2 = v1;
  v4 = v3;
  sub_21A2F67A4();
  sub_21A2F66F4();
  sub_21A2F6764();

  v5 = sub_21A2F68E4();
  v7 = v6;
  v9 = v8;

  sub_21A1834EC(v0, v2, v4 & 1);

  v10 = [objc_opt_self() labelColor];
  sub_21A2F6EF4();
  v11 = sub_21A2F68A4();
  sub_21A1834EC(v5, v7, v9 & 1);

  return v11;
}

unint64_t sub_21A2B05B4()
{
  result = qword_27CD047A0;
  if (!qword_27CD047A0)
  {
    sub_21A176D98(&qword_27CD04798, &qword_21A3134F8);
    sub_21A1F532C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD047A0);
  }

  return result;
}

uint64_t sub_21A2B0640(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04798, &qword_21A3134F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A2B06B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD00098, &qword_21A2FF0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A2B0748()
{
  result = qword_27CD047C8;
  if (!qword_27CD047C8)
  {
    sub_21A176D98(&qword_27CD047B0, &qword_21A313510);
    sub_21A2B0804();
    sub_21A2B08F8(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier, &unk_21A2FBDF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD047C8);
  }

  return result;
}

unint64_t sub_21A2B0804()
{
  result = qword_27CD047D0;
  if (!qword_27CD047D0)
  {
    sub_21A176D98(&qword_27CD047A8, &qword_21A313508);
    sub_21A176D98(&qword_27CD04798, &qword_21A3134F8);
    sub_21A2B05B4();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD047D8, &qword_27CD047E0, &unk_21A313550, MEMORY[0x277CE07F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD047D0);
  }

  return result;
}

uint64_t sub_21A2B08F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A2B0940(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21A176C98(&qword_27CD047F0, &qword_21A3136B0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_21A2F4AB4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_21A2F49B4();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_21A2B0B70;

  return sub_21A15561C();
}

uint64_t sub_21A2B0B70(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_21A2B0C88, v2, 0);
}

unint64_t sub_21A2B0C88()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[2];
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v92 = (v0[12] + 8);
  v93 = (v0[9] + 8);
  v97 = v0[16];
  v87 = (v2 + 48);
  v88 = (v2 + 56);
  sub_21A2F5434();
  v96 = v3;
  sub_21A2F5434();
  v9 = 0;
  v89 = v1;
  v103 = v1;
  v94 = v8;
  v95 = v3 + 64;
LABEL_4:
  v10 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v10;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v96 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v96 + 56) + 8 * v12);
    if (!v1[2])
    {
      v30 = *(*(v96 + 56) + 8 * v12);
      v26 = v13[1];
      sub_21A2F5434();
      sub_21A2F5434();
      goto LABEL_19;
    }

    swift_bridgeObjectRetain_n();
    v101 = v16;
    sub_21A2F5434();
    v17 = sub_21A261F58(v15, v14);
    if ((v18 & 1) == 0)
    {
      v26 = v14;

LABEL_18:
      v30 = v101;
LABEL_19:
      v102 = v0[15];
      v31 = v0[5];
      *v31 = v30;
      sub_21A2F5434();
      sub_21A2F4974();
      v100 = *v88;
      (*v88)(v31, 0, 1, v102);

      if ((*v87)(v31, 1, v102) == 1)
      {
        sub_21A1427A8(v0[5], &qword_27CD047F0, &qword_21A3136B0);
        v32 = sub_21A261F58(v15, v26);
        v34 = v33;

        if (v34)
        {
          v35 = v89;
          v36 = v100;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_21A2B7A5C();
            v35 = v89;
          }

          v37 = v0[4];

          sub_21A2B1FD8(*(v35 + 56) + *(v97 + 72) * v32, v37, type metadata accessor for PersistentSelectedIngredients.Entry);
          v89 = v35;
          sub_21A2B64E8(v32, v35);
          v38 = 0;
        }

        else
        {
          v38 = 1;
          v36 = v100;
        }

        v58 = v0[15];
        v59 = v0[4];
        goto LABEL_46;
      }

      sub_21A2B1FD8(v0[5], v0[17], type metadata accessor for PersistentSelectedIngredients.Entry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      v41 = isUniquelyReferenced_nonNull_native;
      v42 = v40;
      result = sub_21A261F58(v40, v26);
      v45 = v89[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v49 = v44;
      if (v89[3] >= v48)
      {
        if ((v41 & 1) == 0)
        {
          v77 = result;
          sub_21A2B7A5C();
          result = v77;
          v60 = v0[17];
          if (v49)
          {
LABEL_37:
            v61 = result;

            v62 = v89[7] + *(v97 + 72) * v61;
LABEL_43:
            sub_21A2B1D1C(v60, v62);
            v1 = v103;
            goto LABEL_4;
          }

          goto LABEL_54;
        }
      }

      else
      {
        sub_21A26DF1C(v48, v41);
        result = sub_21A261F58(v42, v26);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_60;
        }
      }

      v60 = v0[17];
      if (v49)
      {
        goto LABEL_37;
      }

LABEL_54:
      v73 = v89;
      v89[(result >> 6) + 8] |= 1 << result;
      v78 = (v89[6] + 16 * result);
      *v78 = v42;
      v78[1] = v26;
      result = sub_21A2B1FD8(v60, v89[7] + *(v97 + 72) * result, type metadata accessor for PersistentSelectedIngredients.Entry);
      v79 = v89[2];
      v47 = __OFADD__(v79, 1);
      v76 = v79 + 1;
      if (v47)
      {
        goto LABEL_64;
      }

LABEL_55:
      v89 = v73;
      v73[2] = v76;
      v1 = v103;
      goto LABEL_4;
    }

    v91 = v15;
    v19 = v0[19];
    v20 = v0[20];
    v21 = v0[13];
    v22 = v0[14];
    v99 = v14;
    v23 = v0[10];
    v24 = v0[11];
    v98 = v0[8];
    v90 = *(v97 + 72);
    sub_21A2B1F70(v103[7] + v90 * v17, v19, type metadata accessor for PersistentSelectedIngredients.Entry);
    sub_21A2B1FD8(v19, v20, type metadata accessor for PersistentSelectedIngredients.Entry);
    sub_21A2F4974();
    sub_21A2F4A94();
    sub_21A2F4834();
    (*v93)(v23, v98);
    v25 = *v92;
    (*v92)(v21, v24);
    sub_21A14486C(&qword_27CCFF338, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    LOBYTE(v21) = sub_21A2F7844();
    v26 = v99;

    v25(v22, v24);
    v27 = v0[20];
    if ((v21 & 1) == 0)
    {
      sub_21A1DAD88(v0[20]);
      v8 = v94;
      v4 = v95;
      v15 = v91;
      goto LABEL_18;
    }

    v28 = *v27;
    sub_21A2F5434();
    sub_21A1DAD88(v27);
    v29 = sub_21A20106C(v101, v28);

    v4 = v95;
    if ((v29 & 1) == 0)
    {
      v51 = v0[15];
      v52 = v0[7];
      *v52 = v101;
      sub_21A2F5434();
      sub_21A2F4974();
      v36 = *v88;
      (*v88)(v52, 0, 1, v51);

      v8 = v94;
      if ((*v87)(v52, 1, v51) == 1)
      {
        sub_21A1427A8(v0[7], &qword_27CD047F0, &qword_21A3136B0);
        v53 = sub_21A261F58(v91, v99);
        v55 = v54;

        if (v55)
        {
          v56 = v89;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_21A2B7A5C();
            v56 = v89;
          }

          v57 = v0[6];

          sub_21A2B1FD8(*(v56 + 56) + v53 * v90, v57, type metadata accessor for PersistentSelectedIngredients.Entry);
          v89 = v56;
          sub_21A2B64E8(v53, v56);
          v38 = 0;
        }

        else
        {
          v38 = 1;
        }

        v58 = v0[15];
        v59 = v0[6];
LABEL_46:
        v36(v59, v38, 1, v58);
        sub_21A1427A8(v59, &qword_27CD047F0, &qword_21A3136B0);
        v1 = v103;
        goto LABEL_4;
      }

      sub_21A2B1FD8(v0[7], v0[18], type metadata accessor for PersistentSelectedIngredients.Entry);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v99;
      result = sub_21A261F58(v91, v99);
      v66 = v89[2];
      v67 = (v65 & 1) == 0;
      v47 = __OFADD__(v66, v67);
      v68 = v66 + v67;
      if (v47)
      {
        goto LABEL_65;
      }

      v69 = v65;
      if (v89[3] >= v68)
      {
        if ((v63 & 1) == 0)
        {
          v80 = result;
          sub_21A2B7A5C();
          result = v80;
          v64 = v99;
        }

        v70 = v91;
        v60 = v0[18];
        if (v69)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_21A26DF1C(v68, v63);
        v70 = v91;
        result = sub_21A261F58(v91, v99);
        if ((v69 & 1) != (v71 & 1))
        {
LABEL_60:

          return sub_21A2F83D4();
        }

        v60 = v0[18];
        if (v69)
        {
LABEL_42:
          v72 = result;

          v62 = v89[7] + v72 * v90;
          goto LABEL_43;
        }
      }

      v73 = v89;
      v89[(result >> 6) + 8] |= 1 << result;
      v74 = (v89[6] + 16 * result);
      *v74 = v70;
      v74[1] = v64;
      result = sub_21A2B1FD8(v60, v89[7] + result * v90, type metadata accessor for PersistentSelectedIngredients.Entry);
      v75 = v89[2];
      v47 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v47)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }

    v10 = v9;
    v1 = v103;
    v8 = v94;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v81 = v0[3];

  sub_21A14537C(v89);
  v83 = v82;

  v84 = *(v81 + 120);
  *(v81 + 120) = v83;
  v85 = *(v81 + 128);
  *(v81 + 128) = 1;
  sub_21A1448F0(v84, v85);
  v86 = swift_task_alloc();
  v0[23] = v86;
  *v86 = v0;
  v86[1] = sub_21A2B1648;

  return sub_21A2B1840();
}

uint64_t sub_21A2B1648()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_21A2B1758, v1, 0);
}

uint64_t sub_21A2B1758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A2B1860()
{
  sub_21A2F44D4();
  swift_allocObject();
  *(v0 + 32) = sub_21A2F44C4();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_21A2B1910;

  return sub_21A15561C();
}

uint64_t sub_21A2B1910(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_21A2B1A28, v2, 0);
}

uint64_t sub_21A2B1A28()
{
  v0[2] = v0[6];
  sub_21A2B1CC8();
  v1 = sub_21A2F44B4();
  v2 = v0[3];
  v3 = v1;
  v5 = v4;

  v6 = *(v2 + 112);
  v7 = sub_21A2F4804();
  v8 = sub_21A2F78A4();
  [v6 setObject:v7 forKey:v8];

  sub_21A180748(v3, v5);
  v9 = v0[1];

  return v9();
}

uint64_t sub_21A2B1C9C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t sub_21A2B1CC8()
{
  result = qword_27CD047E8;
  if (!qword_27CD047E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD047E8);
  }

  return result;
}

uint64_t sub_21A2B1D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_21A2B1D80(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_21A1454DC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_21A2B1DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD047F8, &unk_21A3136B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A2B1E68()
{
  result = qword_27CD04800;
  if (!qword_27CD04800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04800);
  }

  return result;
}

uint64_t sub_21A2B1EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A144B6C(a1, v4, v5, v6);
}

uint64_t sub_21A2B1F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2B1FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2B2040@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GroceriesButtonViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  MEMORY[0x21CED60A0]();
  sub_21A2F50C4();
  *a1 = v2;
  type metadata accessor for GroceriesButtonViewModelSource(0);
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  return sub_21A2F75B4();
}

uint64_t sub_21A2B2110()
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v1 = *(v0 + 56);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2B21C0()
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v1 = *(v0 + 72);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2B2270()
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  return *(v0 + 32);
}

uint64_t sub_21A2B2310@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A2B23BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

double sub_21A2B2468(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A2B24A4(v4);
}

double sub_21A2B24A4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }

  return result;
}

void sub_21A2B2608(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  *a2 = *(v3 + 32);
}

void sub_21A2B26B0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2 == *(*a2 + 32))
  {
    *(*a2 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();
  }
}

uint64_t sub_21A2B27C4()
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v1 = *(v0 + 40);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2B2874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
  return sub_21A2F5434();
}

double sub_21A2B2920(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return result;
}

uint64_t sub_21A2B2A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
  return sub_21A2F5434();
}

double sub_21A2B2B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

uint64_t sub_21A2B2CC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A2B2D88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21A2F5434();
  return a5(v7, v6);
}

double sub_21A2B2DD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 72) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;

  return result;
}

void sub_21A2B2F40()
{
  v1 = v0;
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v2 + 24);
  v5 = (v2 + 16);
  sub_21A2F5434();
  LOBYTE(v3) = sub_21A18F608(v3, v4, 0, 0);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10, v11);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    if (*(v1 + 48))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *v5 = 0;
  v5[1] = 0;

  if (*(v1 + 32))
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v1 + 32) = 0;
  if (*(v1 + 48))
  {
LABEL_4:
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8, v9);
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5084();

    return;
  }

LABEL_7:
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

void sub_21A2B3218()
{
  swift_getKeyPath();
  v10 = v0;
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = qword_27CCFE7A0;
    sub_21A2F5434();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_21A2F53E4();
    sub_21A177CBC(v4, qword_27CD23C20);
    sub_21A2F5434();
    v5 = sub_21A2F53C4();
    v6 = sub_21A2F7DC4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      sub_21A2F5434();
      v9 = sub_21A25B5DC(v2, v1, &v10);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_21A137000, v5, v6, "GroceriesButtonViewModel tapped open grocery list for recipeID %s.", v7, 0xCu);
      sub_21A142808(v8);
      MEMORY[0x21CED7BA0](v8, -1, -1);
      MEMORY[0x21CED7BA0](v7, -1, -1);
    }

    v10 = v2;
    v11 = v1;
    v12 = 0u;
    v13 = 0u;
    v14 = -96;
    sub_21A14FB78();
    sub_21A2F75E4();
    sub_21A18FAD4(v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  }
}

uint64_t sub_21A2B3448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  sub_21A176C98(&qword_27CCFEA80, &unk_21A2FD6C0);
  v8[15] = swift_task_alloc();
  v8[16] = sub_21A2F7C34();
  v8[17] = sub_21A2F7C24();
  v10 = sub_21A2F7BD4();
  v8[18] = v10;
  v8[19] = v9;

  return MEMORY[0x2822009F8](sub_21A2B3524, v10, v9);
}

uint64_t sub_21A2B3524()
{
  v27 = v0;
  v1 = v0[10];
  sub_21A2B41A4();
  swift_getKeyPath();
  v0[8] = v1;
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v0[20] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[21] = v2;
  if (v2 && (v3 = v0[10], sub_21A2F5434(), swift_getKeyPath(), v0[9] = v3, sub_21A2F5094(), , v0[22] = *(v3 + 40), v4 = *(v3 + 48), (v0[23] = v4) != 0))
  {
    v24 = v0[11];
    v5 = *(v24 + 16);
    if (v5)
    {
      v23 = v0;
      v26 = MEMORY[0x277D84F90];
      sub_21A2F5434();
      sub_21A25D94C(0, v5, 0);
      v6 = 0;
      v7 = v26;
      v8 = *(v26 + 16);
      v9 = 24 * v8;
      do
      {
        v11 = *(v24 + v6 + 32);
        v10 = *(v24 + v6 + 40);
        v12 = *(v24 + v6 + 48);
        v26 = v7;
        v13 = *(v7 + 24);
        sub_21A2F5434();
        if (v8 >= v13 >> 1)
        {
          sub_21A25D94C((v13 > 1), v8 + 1, 1);
          v7 = v26;
        }

        *(v7 + 16) = v8 + 1;
        v14 = v7 + v9 + v6;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        *(v14 + 48) = v12;
        v6 += 24;
        ++v8;
        --v5;
      }

      while (v5);
      v0 = v23;
    }

    else
    {
      sub_21A2F5434();
      v7 = MEMORY[0x277D84F90];
    }

    v0[24] = v7;
    v0[25] = sub_21A2F7C24();
    v22 = sub_21A2F7BD4();
    v0[26] = v22;
    v0[27] = v21;

    return MEMORY[0x2822009F8](sub_21A2B38B8, v22, v21);
  }

  else
  {

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v15 = sub_21A2F53E4();
    sub_21A177CBC(v15, qword_27CD23C20);
    v16 = sub_21A2F53C4();
    v17 = sub_21A2F7DD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21A137000, v16, v17, "GroceriesButtonViewModel unable to add ingredients due to recipe ID being nil", v18, 2u);
      MEMORY[0x21CED7BA0](v18, -1, -1);
    }

    v25 = 2;
    sub_21A2B4520(&v25);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_21A2B38B8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = sub_21A25A1C4(0xD000000000000013, 0x800000021A319BF0, 0);
  if (v2)
  {
    v12 = v0[23];
    v11 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];
    v16 = v0[15];
    v17 = v0[13];

    static ExportToGroceryListUtility.configureUserActivity(with:recipeURL:recipeID:recipeTitle:)(v11, v17, v15, v14, v13, v12);

    sub_21A176C98(&qword_27CCFFBC0, &qword_21A30C970);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FC020;
    sub_21A183960(v17, v16, &qword_27CCFEA80, &unk_21A2FD6C0);
    v19 = sub_21A2F4794();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v16, 1, v19);
    v22 = v0[15];
    if (v21 == 1)
    {
      sub_21A1427A8(v0[15], &qword_27CCFEA80, &unk_21A2FD6C0);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v23 = sub_21A2F46A4();
      v24 = v25;
      (*(v20 + 8))(v22, v19);
    }

    v26 = v0[12];
    *(inited + 32) = v23;
    *(inited + 40) = v24;
    sub_21A2571E8(inited);
    swift_setDeallocating();
    sub_21A26151C(inited + 32);
    v27 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v28 = sub_21A2F7B04();

    v29 = [v27 initWithActivityItems:v28 applicationActivities:0];
    v0[29] = v29;

    v30 = sub_21A2F7C24();
    v0[30] = v30;
    v31 = swift_task_alloc();
    v0[31] = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v26;
    v32 = swift_task_alloc();
    v0[32] = v32;
    *v32 = v0;
    v32[1] = sub_21A2B3D38;
    v33 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 34, v30, v33, 0xD000000000000040, 0x800000021A319E80, sub_21A261570, v31, &type metadata for ExportToGroceryListUtility.Result);
  }

  else
  {

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v3 = sub_21A2F53E4();
    v0[28] = sub_21A177CBC(v3, qword_27CD23C20);
    v4 = sub_21A2F53C4();
    v5 = sub_21A2F7DD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21A137000, v4, v5, "Reminders app not installed. Presenting alert to download app and throwing not installed error.", v6, 2u);
      MEMORY[0x21CED7BA0](v6, -1, -1);
    }

    v7 = v0[12];

    sub_21A2610E0(v7);
    sub_21A2614C8();
    v0[33] = swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[18];
    v10 = v0[19];

    return MEMORY[0x2822009F8](sub_21A2B4020, v9, v10);
  }
}

uint64_t sub_21A2B3D38()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21A2B3E98, v3, v2);
}

uint64_t sub_21A2B3E98()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_21A2B3F08, v1, v2);
}

uint64_t sub_21A2B3F08()
{
  v6 = v0;

  v1 = *(v0 + 272);
  if (*(v0 + 272) && v1 == 1)
  {
  }

  else
  {
    v2 = sub_21A2F8394();

    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_21A2B5A4C(*(v0 + 96), *(v0 + 160), *(v0 + 168), *(v0 + 112));
LABEL_6:

  v5 = v1;
  sub_21A2B4520(&v5);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21A2B4020()
{
  v14 = v0;
  v1 = *(v0 + 264);

  v2 = v1;
  v3 = sub_21A2F53C4();
  v4 = sub_21A2F7DD4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21A137000, v3, v4, "GroceriesButtonViewModel unable to add ingredients to grocery list due to error %@", v7, 0xCu);
    sub_21A1427A8(v8, &qword_27CD01020, &qword_21A302830);
    MEMORY[0x21CED7BA0](v8, -1, -1);
    MEMORY[0x21CED7BA0](v7, -1, -1);
  }

  else
  {
  }

  v13 = 2;
  sub_21A2B4520(&v13);

  v11 = *(v0 + 8);

  return v11();
}

void sub_21A2B41A4()
{
  swift_getKeyPath();
  v10 = v0;
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = qword_27CCFE7A0;
    sub_21A2F5434();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_21A2F53E4();
    sub_21A177CBC(v4, qword_27CD23C20);
    sub_21A2F5434();
    v5 = sub_21A2F53C4();
    v6 = sub_21A2F7DC4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      sub_21A2F5434();
      v9 = sub_21A25B5DC(v2, v1, &v10);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_21A137000, v5, v6, "GroceriesButtonViewModel tapped add to grocery list for recipeID %s.", v7, 0xCu);
      sub_21A142808(v8);
      MEMORY[0x21CED7BA0](v8, -1, -1);
      MEMORY[0x21CED7BA0](v7, -1, -1);
    }

    v10 = v2;
    v11 = v1;
    v12 = 66;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -96;
    sub_21A14FB78();
    sub_21A2F75E4();
    sub_21A18FAD4(v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_21A2B43D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_21A2F7C34();
  v8[7] = sub_21A2F7C24();
  v10 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A2B4474, v10, v9);
}

uint64_t sub_21A2B4474()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_21A25F060(v3, v1);
  [v4 presentViewController:v5 animated:1 completion:0];

  if (v2)
  {
    sub_21A27EEC4(v0[6]);
  }

  v6 = v0[1];

  return v6();
}

void sub_21A2B4520(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v17 = v1;
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    v5 = qword_27CCFE7A0;
    sub_21A2F5434();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_21A2F53E4();
    sub_21A177CBC(v6, qword_27CD23C20);
    sub_21A2F5434();
    v7 = sub_21A2F53C4();
    v8 = sub_21A2F7DC4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      sub_21A2F5434();
      v11 = sub_21A25B5DC(v4, v3, &v17);

      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      v12 = 0xE700000000000000;
      v13 = 0x73736563637573;
      if (v2 != 1)
      {
        v13 = 1818845542;
        v12 = 0xE400000000000000;
      }

      if (v2)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x657373696D736964;
      }

      if (v2)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0xE900000000000064;
      }

      v16 = sub_21A25B5DC(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_21A137000, v7, v8, "GroceriesButtonViewModel finished adding recipeID %s to grocery list with result: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v10, -1, -1);
      MEMORY[0x21CED7BA0](v9, -1, -1);
    }

    v17 = v4;
    v18 = v3;
    v19 = v2 | 0x80;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -96;
    sub_21A14FB78();
    sub_21A2F75E4();
    sub_21A18FAD4(v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_21A2B47E0()
{

  v1 = OBJC_IVAR____TtC10CookingKit24GroceriesButtonViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit24GroceriesButtonViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2B4904(uint64_t a1)
{
  result = sub_21A2F7614();
  if (v2 <= 0x3F)
  {
    result = sub_21A2F50D4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21A2B4A34()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  MEMORY[0x21CED60A0]();
  sub_21A2F50C4();
  return v0;
}

double sub_21A2B4AC0(uint64_t *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v4 = v1[3];
  v5 = *a1;
  v6 = a1[1];
  if (!v4)
  {
    if (!v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    sub_21A2F5434();

LABEL_9:
    v7 = v2[2];
    v8 = v2[3];
    sub_21A2F5434();
    sub_21A2F5434();
    LOBYTE(v7) = sub_21A18F608(v7, v8, v5, v6);

    if (v7)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v10);
      sub_21A2F5084();

      goto LABEL_13;
    }

    v2[2] = v5;
    v2[3] = v6;
    goto LABEL_12;
  }

  if ((v2[2] != v5 || v4 != v6) && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  swift_getKeyPath();
  sub_21A2F5094();

  v12 = v2[6];
  v13 = a1[2];
  v14 = a1[3];
  if (!v12)
  {
LABEL_19:
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15, v16);
    sub_21A2F5434();
    sub_21A2F5084();

    return result;
  }

  if ((v2[5] != v13 || v12 != v14) && (sub_21A2F8394() & 1) == 0)
  {
    if (sub_21A2F8394())
    {
      v2[5] = v13;
      v2[6] = v14;
      sub_21A2F5434();

      return result;
    }

    goto LABEL_19;
  }

  return result;
}

double sub_21A2B4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
  sub_21A2F5094();

  v9 = v4[8];
  if (!v9)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!a2 || (v4[7] != a1 || v9 != a2) && (sub_21A2F8394() & 1) == 0)
  {
LABEL_8:
    sub_21A2F5434();
    sub_21A2B2B54(a1, a2);
  }

LABEL_9:
  swift_getKeyPath();
  sub_21A2F5094();

  v11 = v4[10];
  if (!v11)
  {
    if (!a4)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!a4 || (v4[9] != a3 || v11 != a4) && (sub_21A2F8394() & 1) == 0)
  {
LABEL_16:
    sub_21A2F5434();
    return sub_21A2B2DD0(a3, a4);
  }

  return result;
}

uint64_t sub_21A2B4F94()
{
  sub_21A23782C();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A2B4FD0@<X0>(uint64_t *a3@<X8>)
{
  sub_21A2B58A8(&qword_27CD00468, type metadata accessor for GroceriesButtonViewModel, &unk_21A31377C);
  result = sub_21A2F7664();
  *a3 = result;
  return result;
}

uint64_t sub_21A2B5048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04810, &qword_21A313A18);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for GroceriesButtonViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD04810, &qword_21A313A18);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A2B58A8(&qword_27CD04818, type metadata accessor for GroceriesButtonViewModelSource, &unk_21A313888);
    v8 = sub_21A156050(a1);
    return sub_21A2B5DD8(v5, v8, type metadata accessor for GroceriesButtonViewModelSource);
  }

  return result;
}

void sub_21A2B51A4()
{
  v1 = sub_21A176C98(&qword_27CCFF058, &unk_21A2FC890);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v35 - v3;
  v5 = type metadata accessor for GroceriesButtonViewModelSource(0);
  MEMORY[0x28223BE20](v5, v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for Recipe(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A2B58F0(v0, v19);
  sub_21A176C98(&qword_27CCFFA38, &unk_21A2FEB60);
  sub_21A2F7594();
  sub_21A2B5954(v19, type metadata accessor for GroceriesButtonViewModelSource);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    sub_21A1427A8(v4, &qword_27CCFF058, &unk_21A2FC890);
    sub_21A2B2F40();
  }

  else
  {
    sub_21A2B5DD8(v4, v24, type metadata accessor for Recipe);
    v25 = *v0;
    sub_21A2B4AC0(v24);
    sub_21A2B58F0(v0, v15);
    sub_21A176C98(&qword_27CCFF110, &unk_21A301100);
    sub_21A2F7594();
    sub_21A2B5954(v15, type metadata accessor for GroceriesButtonViewModelSource);
    v26 = v39;
    if (v39 != 1)
    {
      v28 = v40;
      v27 = v41;
      v29 = v38;
      sub_21A2B4DF4(v38, v39, v40, v41);
      sub_21A18F700(v29, v26, v28, v27);
    }

    swift_getKeyPath();
    v37 = v25;
    sub_21A2B58A8(&qword_27CD004D8, type metadata accessor for GroceriesButtonViewModel, &unk_21A313760);
    sub_21A2F5094();

    v30 = *(v25 + 32);
    sub_21A2B58F0(v0, v11);
    sub_21A176C98(&qword_27CCFF118, &unk_21A2FB7E0);
    sub_21A2F7594();
    sub_21A2B5954(v11, type metadata accessor for GroceriesButtonViewModelSource);
    if (v30 == v37)
    {
      sub_21A2B5954(v24, type metadata accessor for Recipe);
    }

    else
    {
      v31 = v36;
      sub_21A2B58F0(v0, v36);
      sub_21A2F7594();
      sub_21A2B5954(v31, type metadata accessor for GroceriesButtonViewModelSource);
      v32 = v37;
      if (v37 == *(v25 + 32))
      {
        sub_21A2B5954(v24, type metadata accessor for Recipe);
        *(v25 + 32) = v32;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v34);
        *(&v35 - 2) = v25;
        *(&v35 - 8) = v32;
        v37 = v25;
        sub_21A2F5084();

        sub_21A2B5954(v24, type metadata accessor for Recipe);
      }
    }
  }
}

void *sub_21A2B56B8@<X0>(_BYTE *a1@<X8>)
{
  sub_21A27099C();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

void sub_21A2B578C(uint64_t a1)
{
  type metadata accessor for GroceriesButtonViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_21A13F3C4(319);
    if (v2 <= 0x3F)
    {
      sub_21A13D4CC(319, &qword_2811B3D48, &type metadata for RecipeFeaturesConfiguration);
      if (v3 <= 0x3F)
      {
        sub_21A13D4CC(319, &qword_2811B3CF0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21A2B58A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A2B58F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroceriesButtonViewModelSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2B5954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A2B59B4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
  sub_21A2F5434();
}

uint64_t sub_21A2B59F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21A2F5434();
  return a5(v7, v6);
}

uint64_t sub_21A2B5A4C(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v7 = sub_21A176C98(&qword_27CCFEB08, &qword_21A2FC200);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_21A176C98(&qword_27CD004F8, &qword_21A3003A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v29 - v18;
  sub_21A258084(a2, a3, &v29 - v18);
  v20 = sub_21A2F7C64();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_21A183960(v19, v15, &qword_27CD004F8, &qword_21A3003A0);
  sub_21A2F7C34();
  v21 = a4;

  v22 = v30;
  sub_21A2F5434();
  v23 = sub_21A2F7C24();
  v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v23;
  v25[3] = v26;
  v27 = v29;
  v25[4] = v22;
  v25[5] = v27;
  v25[6] = a3;
  v25[7] = v21;
  sub_21A261B84(v15, v25 + v24);
  sub_21A199D08(0, 0, v10, &unk_21A313A10, v25);

  return sub_21A1427A8(v19, &qword_27CD004F8, &qword_21A3003A0);
}

uint64_t sub_21A2B5CB4(uint64_t a1)
{
  v4 = *(sub_21A176C98(&qword_27CD004F8, &qword_21A3003A0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21A145E2C;

  return sub_21A2B43D4(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_21A2B5DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Dependencies.selectedIngredients.getter()
{
  sub_21A143808();
  sub_21A14385C();
  sub_21A2F7624();
  return v1;
}

uint64_t sub_21A2B5E90(uint64_t a1)
{
  v3 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    sub_21A2F5434();
    sub_21A18BD3C(v7, v6);
    v8 = sub_21A2B6180(&v26, v5, v4);
    if (*v9)
    {
      sub_21A2BED44(v7, v6);
      sub_21A1997F4(v7, v6);
    }

    else
    {
      sub_21A1997F4(v7, v6);
    }

    (v8)(&v26, 0);

    v24 = 0;
    goto LABEL_16;
  }

  sub_21A2F5434();
  sub_21A18BD3C(v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 16);
  v26 = v3[2];
  v3[2] = 0x8000000000000000;
  v13 = sub_21A261F58(v5, v4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

LABEL_18:
    sub_21A2B9124();
    v11 = v26;
    goto LABEL_9;
  }

  sub_21A26FC04(v16, isUniquelyReferenced_nonNull_native);
  v11 = v26;
  v17 = sub_21A261F58(v5, v4);
  if ((v2 & 1) != (v18 & 1))
  {
    goto LABEL_20;
  }

  v13 = v17;
LABEL_9:
  v3[2] = v11;

  v19 = v3[2];
  if (v2)
  {

LABEL_13:
    sub_21A2BA648(&v26, v7, v6);

    v24 = sub_21A2B6170;
LABEL_16:
    v26 = v3;
    sub_21A1444BC(&qword_2811B57B0, type metadata accessor for SelectedIngredientsSource, &unk_21A313A94);
    sub_21A2F75C4();
    return sub_21A18EAA0(v24, 0);
  }

  v19[(v13 >> 6) + 8] |= 1 << v13;
  v20 = (v19[6] + 16 * v13);
  *v20 = v5;
  v20[1] = v4;
  *(v19[7] + 8 * v13) = MEMORY[0x277D84FA0];
  v21 = v19[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    v19[2] = v23;
    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t (*sub_21A2B6180(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21A2BF654(v6, a2, a3);
  return sub_21A2B6208;
}

void sub_21A2B6208(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21A2B6254()
{

  v1 = OBJC_IVAR____TtC10CookingKit25SelectedIngredientsSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21A142808((v0 + OBJC_IVAR____TtC10CookingKit25SelectedIngredientsSource_selectedIngredientsManager));

  return swift_deallocClassInstance();
}

void sub_21A2B6320(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A2F7F54() + 1) & ~v5;
    do
    {
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      v9 = sub_21A2F8474();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_21A2B6548(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2;
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v38 = a2 + 64;
    v36 = (sub_21A2F7F54() + 1) & ~v6;
    v37 = v8;
    while (1)
    {
      v40 = v4;
      v9 = 56 * v7;
      v10 = *(v3 + 48) + 56 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = *(v10 + 32);
      v15 = *(v10 + 40);
      v17 = *(v10 + 48);
      sub_21A2F8434();
      if (v17)
      {
        MEMORY[0x21CED6EE0](1);
        sub_21A2F5434();
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v13);
        MEMORY[0x21CED6EE0](v14);
        MEMORY[0x21CED6EE0](v16);
        MEMORY[0x21CED6EE0](v15);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        sub_21A2F5434();
        sub_21A2F79A4();
      }

      v18 = sub_21A2F8474();
      result = sub_21A1997F4(v11, v12);
      v19 = v18 & v37;
      v4 = v40;
      if (v40 >= v36)
      {
        break;
      }

      v5 = v38;
      v3 = a2;
      if (v19 < v36)
      {
        goto LABEL_13;
      }

LABEL_14:
      v20 = *(v3 + 48);
      v21 = v20 + 56 * v40;
      v22 = (v20 + v9);
      if (56 * v40 < v9 || v21 >= v22 + 56 || v40 != v7)
      {
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        *(v21 + 48) = *(v22 + 6);
        *(v21 + 16) = v24;
        *(v21 + 32) = v25;
        *v21 = v23;
      }

      v26 = *(v3 + 56);
      v27 = *(*(a3(0) - 8) + 72);
      v28 = v27 * v40;
      result = v26 + v27 * v40;
      v29 = v27 * v7;
      v30 = v26 + v27 * v7 + v27;
      if (v28 < v29 || result >= v30)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v28 == v29)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v37;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v5 = v38;
    v3 = a2;
    if (v19 < v36)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v40 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_24:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v32 = *(v3 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v34;
    ++*(v3 + 36);
  }

  return result;
}

void sub_21A2B6810(int64_t a1, uint64_t a2)
{
  v39 = sub_21A2F4794();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v40 = v6;
    v12 = sub_21A2F7F54();
    v13 = v39;
    v6 = v40;
    v14 = v11;
    v37 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v35 = a2 + 64;
    v36 = v16;
    v17 = *(v15 + 56);
    v34 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v38;
      v21 = v14;
      v22 = v15;
      v36(v38, *(v6 + 48) + v17 * v10, v13);
      sub_21A1444BC(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v23 = sub_21A2F77F4();
      (*v34)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v37)
      {
        if (v24 >= v37 && a1 >= v24)
        {
LABEL_15:
          v6 = v40;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v40 + 48) + v18 * a1 >= (*(v40 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v40;
            v17 = v18;
            v14 = v21;
            v8 = v35;
          }

          else
          {
            v8 = v35;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v40;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v10);
          if (a1 != v10 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v37 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v35;
      v17 = v18;
      v6 = v40;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v6 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v32;
    ++*(v6 + 36);
  }
}

void sub_21A2B6B48(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_21A2F7F54() + 1) & ~v6;
    while (1)
    {
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      v11 = sub_21A2F8474();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_21A2B6D3C(int64_t a1, uint64_t a2)
{
  v4 = sub_21A2F8144();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_21A2F7F54();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      v21 = sub_21A2F77F4();
      (*v37)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v39)
      {
        if (v22 >= v39 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v40 * a1;
          v27 = v25 + v18 + v40;
          v28 = v40 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v40 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 32 * a1);
          v32 = (v30 + 32 * v11);
          if (a1 != v11 || v31 >= v32 + 2)
          {
            v33 = v32[1];
            *v31 = *v32;
            v31[1] = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v39 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void sub_21A2B6FF0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A2F7F54() + 1) & ~v5;
    do
    {
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      v9 = sub_21A2F8474();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_21A2B71AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_21A2B7220(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = type metadata accessor for RecipeTimer(0);
  result = sub_21A2BFB3C(a3, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RecipeTimer);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_21A2B72E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = sub_21A2F4A24();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_21A2B73AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21A2F4794();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_21A2B7464(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_21A2B74D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_21A2BFB3C(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

_OWORD *sub_21A2B7580(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21A2F8144();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_21A261578(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_21A2B7640(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_21A2B7694()
{
  v1 = v0;
  v2 = type metadata accessor for CookingSession(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD039E8, &qword_21A30E718);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A2BFAD4(*(v5 + 56) + v27, v31, type metadata accessor for CookingSession);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A2BFB3C(v26, *(v28 + 56) + v27, type metadata accessor for CookingSession);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B78EC()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03A10, &unk_21A30E7A0);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_21A2F5434();
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
}

void sub_21A2B7A5C()
{
  v1 = v0;
  v2 = type metadata accessor for PersistentSelectedIngredients.Entry(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD034F8, &qword_21A30CCC0);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A2BFAD4(*(v5 + 56) + v27, v31, type metadata accessor for PersistentSelectedIngredients.Entry);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A2BFB3C(v26, *(v28 + 56) + v27, type metadata accessor for PersistentSelectedIngredients.Entry);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B7CB4()
{
  v1 = v0;
  v2 = type metadata accessor for PersistentCookingSessions.Entry(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03530, &qword_21A30CCF0);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A2BFAD4(*(v5 + 56) + v27, v31, type metadata accessor for PersistentCookingSessions.Entry);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A2BFB3C(v26, *(v28 + 56) + v27, type metadata accessor for PersistentCookingSessions.Entry);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B7F0C()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03478, &qword_21A30CC10);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
        sub_21A2F5434();
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
}

void sub_21A2B808C()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeTimer(0);
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD034A8, &qword_21A30CC40);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v0;
    v36 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v44 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 56 * v20;
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + 56 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
        v28 = *(v23 + 40);
        v41 = *(v23 + 32);
        v29 = v41;
        v43 = v28;
        v42 = *(v23 + 48);
        v30 = v38;
        v31 = *(v39 + 72) * v20;
        sub_21A2BFAD4(v22 + v31, v38, type metadata accessor for RecipeTimer);
        v32 = v40;
        v33 = *(v40 + 48) + v21;
        *v33 = v24;
        *(v33 + 8) = v25;
        *(v33 + 16) = v26;
        *(v33 + 24) = v27;
        v34 = v43;
        *(v33 + 32) = v29;
        *(v33 + 40) = v34;
        *(v33 + 48) = v42;
        sub_21A2BFB3C(v30, *(v32 + 56) + v31, type metadata accessor for RecipeTimer);
        v5 = v37;
        sub_21A18BD3C(v24, v25);
        v15 = v44;
      }

      while (v44);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        v7 = v40;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B8340()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeTimer(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03490, &unk_21A30E7C0);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 48 * v21;
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 48 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v34;
        v28 = *(v35 + 72) * v21;
        v29 = *(v24 + 16);
        v37 = *(v24 + 32);
        v38 = v29;
        sub_21A2BFAD4(v23 + v28, v34, type metadata accessor for RecipeTimer);
        v30 = v36;
        v31 = *(v36 + 48) + v22;
        *v31 = v25;
        *(v31 + 8) = v26;
        v32 = v37;
        *(v31 + 16) = v38;
        *(v31 + 32) = v32;
        sub_21A2BFB3C(v27, *(v30 + 56) + v28, type metadata accessor for RecipeTimer);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v33;
        v7 = v36;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B85AC()
{
  v1 = v0;
  v44 = sub_21A2F4A24();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v2);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03520, &qword_21A30CCE0);
  v4 = *v0;
  v5 = sub_21A2F8174();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v37 = v0;
    v38 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v45 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v39 = v15;
    v42 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 56 * v19;
        v21 = *(v4 + 56);
        v22 = *(v4 + 48) + 56 * v19;
        v23 = *v22;
        v51 = *(v22 + 8);
        v25 = *(v22 + 24);
        v47 = *(v22 + 16);
        v24 = v47;
        v48 = v23;
        v50 = *(v22 + 32);
        v49 = *(v22 + 40);
        v26 = *(v22 + 48);
        v27 = v46;
        v28 = *(v46 + 72) * v19;
        v30 = v43;
        v29 = v44;
        (*(v46 + 16))(v43, v21 + v28, v44);
        v31 = v45;
        v32 = *(v45 + 48) + v20;
        v33 = v51;
        *v32 = v23;
        *(v32 + 8) = v33;
        *(v32 + 16) = v24;
        *(v32 + 24) = v25;
        v34 = v49;
        *(v32 + 32) = v50;
        *(v32 + 40) = v34;
        *(v32 + 48) = v26;
        v35 = *(v31 + 56);
        v36 = *(v27 + 32);
        v4 = v42;
        v36(v35 + v28, v30, v29);
        sub_21A18BD3C(v48, v33);
        v14 = v52;
        v15 = v39;
      }

      while (v52);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v37;
        v6 = v45;
        goto LABEL_18;
      }

      v18 = *(v38 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v52 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_21A2B888C()
{
  v1 = v0;
  v33 = sub_21A2F4A24();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v2);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03510, &qword_21A30CCD0);
  v4 = *v0;
  v5 = sub_21A2F8174();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v36 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v35 + 72) * v19;
        v23 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v4 + 48) + v21, v33);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v34;
        (*(v20 + 32))(*(v34 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v26 = v24;
        v14 = v36;
      }

      while (v36);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_21A2B8B00()
{
  v1 = v0;
  v34 = sub_21A2F4794();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD039F8, &qword_21A30E780);
  v4 = *v0;
  v5 = sub_21A2F8174();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_21A2B8D80()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03470, &unk_21A30E7B0);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_21A2B8ECC()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeStore.Entry(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03A00, &qword_21A30E788);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A2BFAD4(*(v5 + 56) + v27, v31, type metadata accessor for RecipeStore.Entry);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A2BFB3C(v26, *(v28 + 56) + v27, type metadata accessor for RecipeStore.Entry);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B9124()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03468, &unk_21A30CC00);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_21A2F5434();
        sub_21A2F5434();
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
}

void sub_21A2B9294()
{
  v1 = v0;
  v27 = sub_21A2F8144();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD03A18, &unk_21A313BA0);
  v4 = *v0;
  v5 = sub_21A2F8174();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_21A261AD4(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        sub_21A261578(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_21A2B9518()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03A08, &unk_21A30E790);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 56 * v17;
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 8);
        v21 = *(v19 + 48);
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *(v4 + 48) + v18;
        v24 = *(v19 + 16);
        v25 = *(v19 + 32);
        v26 = *v22;
        v27 = v22[1];
        *v23 = *v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v24;
        *(v23 + 32) = v25;
        *(v23 + 48) = v21;
        v28 = (*(v4 + 56) + v17);
        *v28 = v26;
        v28[1] = v27;
        sub_21A2F5434();
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
}

void sub_21A2B96A0()
{
  v1 = v0;
  v2 = type metadata accessor for ImageAsset(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD034E0, &unk_21A313B80);
  v5 = *v0;
  v6 = sub_21A2F8174();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A2BFAD4(*(v5 + 56) + v27, v31, type metadata accessor for ImageAsset);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A2BFB3C(v26, *(v28 + 56) + v27, type metadata accessor for ImageAsset);
        sub_21A2F5434();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_21A2B98F8()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD03498, &qword_21A30CC30);
  v2 = *v0;
  v3 = sub_21A2F8174();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;
        sub_21A2F5434();
        sub_21A17FE08(v22, v24);
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
}

uint64_t sub_21A2B9A84(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_21A2F8424();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21A2BBB94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21A2B9B64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21A2F4794();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_21A1444BC(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v34 = a2;
  v12 = sub_21A2F77F4();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_21A1444BC(&qword_27CCFF320, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_21A2F7874();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_21A2BBCB4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_21A2B9E44(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_21A2F8434();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v34 = a2;
  v10 = a2[4];
  v9 = a2[5];
  sub_21A2F79A4();
  v39 = v7;
  MEMORY[0x21CED6EE0](v7);
  v38 = v8;
  MEMORY[0x21CED6EE0](v8);
  v37 = v10;
  MEMORY[0x21CED6EE0](v10);
  v36 = v9;
  MEMORY[0x21CED6EE0](v9);
  v11 = sub_21A2F8474();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v32 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = (v16 + 48 * v14);
      v19 = v17[2];
      v18 = v17[3];
      v21 = v17[4];
      v20 = v17[5];
      v22 = *v17 == v5 && v17[1] == v6;
      if (v22 || (sub_21A2F8394() & 1) != 0)
      {
        v23 = v19 == v39 && v18 == v38;
        v24 = v23 && v21 == v37;
        if (v24 && v20 == v36)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_21A192C5C(v34);
    v29 = *(v32 + 48) + 48 * v14;
    v30 = *(v29 + 8);
    *a1 = *v29;
    *(a1 + 8) = v30;
    v31 = *(v29 + 32);
    *(a1 + 16) = *(v29 + 16);
    *(a1 + 32) = v31;
    sub_21A2F5434();
    return 0;
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;
    sub_21A2022B8(v34, v41);
    sub_21A2BBF58(v34, v14, isUniquelyReferenced_nonNull_native);
    *v33 = v40;
    v27 = *(v34 + 1);
    *a1 = *v34;
    *(a1 + 16) = v27;
    *(a1 + 32) = *(v34 + 2);
    return 1;
  }
}

uint64_t sub_21A2BA044(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v53 = *v2;
  sub_21A2F8434();
  if (v11)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v8);
    MEMORY[0x21CED6EE0](v7);
    MEMORY[0x21CED6EE0](v9);
    MEMORY[0x21CED6EE0](v10);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }

  v45 = a1;
  v12 = sub_21A2F8474();
  v13 = -1 << *(v53 + 32);
  v14 = v12 & ~v13;
  if (((*(v53 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v44;
    sub_21A199798(a2, v55);
    sub_21A2BC160(a2, v14, isUniquelyReferenced_nonNull_native);
    *v44 = v54;
    v34 = *(a2 + 16);
    *v45 = *a2;
    *(v45 + 16) = v34;
    *(v45 + 32) = *(a2 + 32);
    *(v45 + 48) = *(a2 + 48);
    return 1;
  }

  v51 = ~v13;
  v52 = v6;
  while (1)
  {
    v15 = *(v53 + 48) + 56 * v14;
    v17 = *v15;
    v16 = *(v15 + 8);
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    v22 = *a2;
    v23 = *(a2 + 8);
    if ((*(v15 + 48) & 1) == 0)
    {
      break;
    }

    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }

    v50 = 56 * v14;
    v24 = *(a2 + 32);
    v25 = v17 == v22 && v16 == v23;
    v48 = *(a2 + 24);
    v49 = *(a2 + 40);
    v47 = *(a2 + 16);
    if (v25)
    {
      sub_21A199798(a2, v55);
      sub_21A18BD3C(v17, v16);
      sub_21A1997F4(v17, v16);
      sub_21A1997F4(v5, v52);
      v28 = v19 == v47 && v18 == v48 && v20 == v24;
    }

    else
    {
      v46 = *(a2 + 32);
      v26 = sub_21A2F8394();
      sub_21A199798(a2, v55);
      sub_21A18BD3C(v17, v16);
      sub_21A1997F4(v17, v16);
      sub_21A1997F4(v5, v52);
      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }

      v28 = v19 == v47 && v18 == v48 && v20 == v46;
    }

    if (v28 && v21 == v49)
    {
LABEL_39:
      sub_21A192AB0(a2);
      goto LABEL_42;
    }

LABEL_7:
    v14 = (v14 + 1) & v51;
    if (((*(v53 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  if (*(a2 + 48))
  {
LABEL_6:
    sub_21A199798(a2, v55);
    sub_21A18BD3C(v17, v16);
    sub_21A1997F4(v17, v16);
    sub_21A1997F4(v5, v52);
    goto LABEL_7;
  }

  v50 = 56 * v14;
  if (v17 != v22 || v16 != v23)
  {
    v30 = sub_21A2F8394();
    sub_21A199798(a2, v55);
    sub_21A18BD3C(v17, v16);
    sub_21A1997F4(v17, v16);
    sub_21A1997F4(v5, v52);
    if (v30)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  sub_21A2F5434();
  sub_21A1997F4(v17, v16);
  sub_21A1997F4(v5, v52);
LABEL_42:
  v36 = *(v53 + 48) + v50;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  v40 = *(v36 + 24);
  v41 = *(v36 + 32);
  v42 = *(v36 + 40);
  v43 = *(v36 + 48);
  *v45 = *v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v39;
  *(v45 + 24) = v40;
  *(v45 + 32) = v41;
  *(v45 + 40) = v42;
  *(v45 + 48) = v43;
  sub_21A18BD3C(v37, v38);
  return 0;
}

uint64_t sub_21A2BA508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](a2);
  MEMORY[0x21CED6EE0](a3);
  MEMORY[0x21CED6EE0](a4);
  v10 = sub_21A2F8474();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v9 + 48) + 24 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v15 == a2 && v16 == a3;
      if (v18 && v17 == a4)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_21A2BC630(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t sub_21A2BA648(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A2F8434();
  sub_21A2F79A4();
  v8 = sub_21A2F8474();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A2F8394() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_21A2F5434();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21A2F5434();
    sub_21A2BC7C4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A2BA798(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A2F8434();
  sub_21A2F79A4();
  v8 = sub_21A2F8474();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A2F8394() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_21A2F5434();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21A2F5434();
    sub_21A2BC944(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_21A2BA8E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04838, &qword_21A313B70);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_21A2F8424();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21A2BAB0C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_21A2F4794();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_21A176C98(&qword_27CD04830, &unk_21A313B60);
  v7 = sub_21A2F7FB4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_21A1444BC(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = sub_21A2F77F4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21A2BAE68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04828, &qword_21A313B58);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v3 + 48) + 48 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      sub_21A2F8434();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v20);
      MEMORY[0x21CED6EE0](v21);
      MEMORY[0x21CED6EE0](v23);
      MEMORY[0x21CED6EE0](v22);
      v24 = sub_21A2F8474();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      v13[5] = v22;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v16 = v34[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21A2BB124(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04848, &unk_21A313B90);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v40 = v1;
    v41 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v42 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 56 * (v17 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v45 = *(v20 + 24);
      v25 = *(v20 + 32);
      v24 = *(v20 + 40);
      v26 = *(v20 + 48);
      sub_21A2F8434();
      v44 = v21;
      v46 = v22;
      v47 = v23;
      if (v26)
      {
        MEMORY[0x21CED6EE0](1);
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v23);
        v27 = v45;
        MEMORY[0x21CED6EE0](v45);
        MEMORY[0x21CED6EE0](v25);
        MEMORY[0x21CED6EE0](v24);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        sub_21A2F79A4();
        v27 = v45;
      }

      v28 = v25;
      v29 = sub_21A2F8474();
      v5 = v42;
      v30 = -1 << *(v42 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v15 = v46;
        v14 = v47;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v15 = v46;
      v14 = v47;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v42 + 48) + 56 * v13;
      v10 = v43;
      *v16 = v44;
      *(v16 + 8) = v15;
      *(v16 + 16) = v14;
      *(v16 + 24) = v27;
      *(v16 + 32) = v28;
      *(v16 + 40) = v24;
      *(v16 + 48) = v26;
      ++*(v42 + 16);
      v3 = v41;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      v38 = v5;
      bzero(v7, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v38;
    }

    else
    {
      *v7 = -1 << v37;
    }

    v2 = v40;
    *(v3 + 16) = 0;
  }

  v39 = v5;

  *v2 = v39;
}

void sub_21A2BB44C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CCFF378, &unk_21A2FC1F0);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_21A2F8434();
      MEMORY[0x21CED6EE0](v19);
      MEMORY[0x21CED6EE0](v20);
      MEMORY[0x21CED6EE0](v21);
      v22 = sub_21A2F8474();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21A2BB6D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04820, &qword_21A313B50);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21A2F8434();
      sub_21A2F79A4();
      v21 = sub_21A2F8474();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21A2BB934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04840, &qword_21A313B78);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21A2F8434();
      sub_21A2F79A4();
      v21 = sub_21A2F8474();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21A2BBB94(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21A2BA8E8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_21A2BCAC4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21A2BD52C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_21A2F8424();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21A2F83C4();
  __break(1u);
}

uint64_t sub_21A2BBCB4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_21A2F4794();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21A2BAB0C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_21A2BCC04();
      goto LABEL_12;
    }

    sub_21A2BD71C(v12 + 1);
  }

  v14 = *v3;
  sub_21A1444BC(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v15 = sub_21A2F77F4();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_21A1444BC(&qword_27CCFF320, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v23 = sub_21A2F7874();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21A2F83C4();
  __break(1u);
  return result;
}

void sub_21A2BBF58(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_21A2BAE68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21A2BCE3C();
      goto LABEL_26;
    }

    sub_21A2BDA38(v6 + 1);
  }

  v8 = *v3;
  sub_21A2F8434();
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v14 = result[4];
  v13 = result[5];
  sub_21A2F79A4();
  v40 = v11;
  MEMORY[0x21CED6EE0](v11);
  v39 = v12;
  MEMORY[0x21CED6EE0](v12);
  v38 = v14;
  MEMORY[0x21CED6EE0](v14);
  v37 = v13;
  MEMORY[0x21CED6EE0](v13);
  v15 = sub_21A2F8474();
  v16 = v8 + 56;
  v17 = -1 << *(v8 + 32);
  a2 = v15 & ~v17;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v8 + 48);
    do
    {
      v20 = (v19 + 48 * a2);
      v22 = v20[2];
      v21 = v20[3];
      v24 = v20[4];
      v23 = v20[5];
      v25 = *v20 == v9 && v20[1] == v10;
      if (v25 || (sub_21A2F8394() & 1) != 0)
      {
        v26 = v22 == v40 && v21 == v39;
        v27 = v26 && v24 == v38;
        if (v27 && v23 == v37)
        {
          goto LABEL_29;
        }
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v29 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + 48 * a2);
  v31 = *(result + 1);
  *v30 = *result;
  v30[1] = v31;
  v30[2] = *(result + 2);
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v29 + 16) = v34;
    return;
  }

  __break(1u);
LABEL_29:
  sub_21A2F83C4();
  __break(1u);
}

void sub_21A2BC160(__int128 *result, unint64_t a2, char a3)
{
  v48 = *(result + 1);
  v49 = *result;
  v45 = *(result + 3);
  v46 = *(result + 2);
  v43 = *(result + 5);
  v44 = *(result + 4);
  v47 = *(result + 48);
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21A2BB124(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_21A2BCFA4();
        goto LABEL_47;
      }

      sub_21A2BDCEC(v8 + 1);
    }

    v42 = *v3;
    sub_21A2F8434();
    if (v47)
    {
      MEMORY[0x21CED6EE0](1);
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v46);
      MEMORY[0x21CED6EE0](v45);
      MEMORY[0x21CED6EE0](v44);
      MEMORY[0x21CED6EE0](v43);
    }

    else
    {
      MEMORY[0x21CED6EE0](0);
      sub_21A2F79A4();
    }

    v10 = sub_21A2F8474();
    v11 = -1 << *(v42 + 32);
    a2 = v10 & ~v11;
    if ((*(v42 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v41 = ~v11;
      do
      {
        v12 = *(v42 + 48) + 56 * a2;
        v5 = *v12;
        v4 = *(v12 + 8);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        v16 = *(v12 + 32);
        v15 = *(v12 + 40);
        v17 = *result;
        v18 = *(result + 1);
        if (*(v12 + 48))
        {
          if ((result[3] & 1) == 0)
          {
            goto LABEL_13;
          }

          v19 = *(result + 2);
          v20 = *(result + 4);
          v21 = v5 == v17 && v4 == v18;
          v39 = *(result + 3);
          v40 = *(result + 5);
          if (v21)
          {
            sub_21A199798(result, v50);
            sub_21A18BD3C(v5, v4);
            sub_21A1997F4(v5, v4);
            sub_21A1997F4(v49, v48);
            v24 = v14 == v19 && v13 == v39 && v16 == v20;
          }

          else
          {
            v37 = *(result + 2);
            v22 = sub_21A2F8394();
            sub_21A199798(result, v50);
            sub_21A18BD3C(v5, v4);
            sub_21A1997F4(v5, v4);
            sub_21A1997F4(v49, v48);
            if ((v22 & 1) == 0)
            {
              goto LABEL_14;
            }

            v24 = v14 == v37 && v13 == v39 && v16 == v20;
          }

          if (v24 && v15 == v40)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (result[3])
          {
LABEL_13:
            sub_21A199798(result, v50);
            sub_21A18BD3C(v5, v4);
            sub_21A1997F4(v5, v4);
            sub_21A1997F4(v49, v48);
            goto LABEL_14;
          }

          if (v5 == v17 && v4 == v18)
          {
            goto LABEL_50;
          }

          v26 = sub_21A2F8394();
          sub_21A199798(result, v50);
          sub_21A18BD3C(v5, v4);
          sub_21A1997F4(v5, v4);
          sub_21A1997F4(v49, v48);
          if (v26)
          {
            goto LABEL_51;
          }
        }

LABEL_14:
        a2 = (a2 + 1) & v41;
      }

      while (((*(v42 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_47:
  v29 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = *(v29 + 48) + 56 * a2;
  v31 = *result;
  v32 = result[1];
  v33 = result[2];
  *(v30 + 48) = *(result + 48);
  *(v30 + 16) = v32;
  *(v30 + 32) = v33;
  *v30 = v31;
  v34 = *(v29 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_50:
    sub_21A199798(result, v50);
    sub_21A18BD3C(v5, v4);
    sub_21A1997F4(v5, v4);
    sub_21A1997F4(v49, v48);
LABEL_51:
    sub_21A2F83C4();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v36;
  }
}

void sub_21A2BC630(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_21A2BB44C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      sub_21A2BD11C();
      a4 = v11;
      goto LABEL_18;
    }

    sub_21A2BDFF0(v9 + 1);
  }

  v12 = *v5;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](result);
  MEMORY[0x21CED6EE0](a2);
  MEMORY[0x21CED6EE0](a3);
  v13 = sub_21A2F8474();
  v14 = -1 << *(v12 + 32);
  a4 = v13 & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 24 * a4);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v17 == result && v18 == a2;
      if (v20 && v19 == a3)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = result;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_21:
  sub_21A2F83C4();
  __break(1u);
}

void sub_21A2BC7C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21A2BB6D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21A2BD274();
      goto LABEL_16;
    }

    sub_21A2BE248(v8 + 1);
  }

  v10 = *v4;
  sub_21A2F8434();
  sub_21A2F79A4();
  v11 = sub_21A2F8474();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_21A2F83C4();
  __break(1u);
}

void sub_21A2BC944(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21A2BB934(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21A2BD3D0();
      goto LABEL_16;
    }

    sub_21A2BE480(v8 + 1);
  }

  v10 = *v4;
  sub_21A2F8434();
  sub_21A2F79A4();
  v11 = sub_21A2F8474();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_21A2F83C4();
  __break(1u);
}

void sub_21A2BCAC4()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD04838, &qword_21A313B70);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_21A2BCC04()
{
  v1 = v0;
  v2 = sub_21A2F4794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD04830, &unk_21A313B60);
  v7 = *v0;
  v8 = sub_21A2F7FA4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    v10 = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v11 + 8 * v12)
    {
      memmove(v10, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    v25 = v3 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
      (*(v3 + 32))(*(v9 + 48) + v21, v6, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_21A2BCE3C()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD04828, &qword_21A313B58);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 16);
        v22 = *(v18 + 32);
        *v20 = *v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = v21;
        *(v20 + 32) = v22;
        sub_21A2F5434();
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21A2BCFA4()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD04848, &unk_21A313B90);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v18 + 48);
        v26 = *(v4 + 48) + v17;
        *v26 = *v18;
        *(v26 + 8) = v20;
        *(v26 + 16) = v21;
        *(v26 + 24) = v22;
        *(v26 + 32) = v23;
        *(v26 + 40) = v24;
        *(v26 + 48) = v25;
        sub_21A18BD3C(v19, v20);
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21A2BD11C()
{
  v1 = v0;
  sub_21A176C98(&qword_27CCFF378, &unk_21A2FC1F0);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_21A2BD274()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD04820, &qword_21A313B50);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        sub_21A2F5434();
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21A2BD3D0()
{
  v1 = v0;
  sub_21A176C98(&qword_27CD04840, &qword_21A313B78);
  v2 = *v0;
  v3 = sub_21A2F7FA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        sub_21A2F5434();
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21A2BD52C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04838, &qword_21A313B70);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_21A2F8424();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_21A2BD71C(uint64_t a1)
{
  v2 = v1;
  v35 = sub_21A2F4794();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_21A176C98(&qword_27CD04830, &unk_21A313B60);
  v8 = sub_21A2F7FB4();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_21A1444BC(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = sub_21A2F77F4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_21A2BDA38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04828, &qword_21A313B58);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v36 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v22);
      MEMORY[0x21CED6EE0](v21);
      MEMORY[0x21CED6EE0](v24);
      MEMORY[0x21CED6EE0](v23);
      v25 = sub_21A2F8474();
      v5 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v36 + 48) + 48 * v13);
      *v14 = v19;
      v14[1] = v20;
      v10 = v37;
      v14[2] = v22;
      v14[3] = v21;
      v14[4] = v24;
      v14[5] = v23;
      ++*(v36 + 16);
      v3 = v35;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v33 = v5;

        v2 = v34;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v33 = v4;

LABEL_26:
    *v2 = v33;
  }
}

void sub_21A2BDCEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21A176C98(&qword_27CD04848, &unk_21A313B90);
  v4 = sub_21A2F7FB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
    v37 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v38 = v4;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
LABEL_15:
      v19 = *(v3 + 48) + 56 * (v16 | (v6 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v41 = *(v19 + 24);
      v24 = *(v19 + 32);
      v23 = *(v19 + 40);
      v25 = *(v19 + 48);
      sub_21A2F8434();
      v40 = v20;
      v42 = v22;
      if (v25)
      {
        MEMORY[0x21CED6EE0](1);
        sub_21A2F5434();
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v22);
        v26 = v41;
        MEMORY[0x21CED6EE0](v41);
        MEMORY[0x21CED6EE0](v24);
        MEMORY[0x21CED6EE0](v23);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        sub_21A2F5434();
        sub_21A2F79A4();
        v26 = v41;
      }

      v27 = sub_21A2F8474();
      v5 = v38;
      v28 = -1 << *(v38 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v14 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v14 = v42;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v38 + 48) + 56 * v13;
      v10 = v39;
      *v15 = v40;
      *(v15 + 8) = v21;
      *(v15 + 16) = v14;
      *(v15 + 24) = v26;
      *(v15 + 32) = v24;
      *(v15 + 40) = v23;
      *(v15 + 48) = v25;
      ++*(v38 + 16);
      v3 = v37;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v35 = v5;

        v2 = v36;
        goto LABEL_29;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v35 = v4;

LABEL_29:
    *v2 = v35;
  }
}