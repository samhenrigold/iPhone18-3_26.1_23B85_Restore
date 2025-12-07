double sub_22C5056B8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  *(inited + 32) = v4;
  v7 = swift_allocObject();

  *(v7 + 16) = sub_22C90A49C();
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22C90A49C();
  *(v9 + 24) = v10;
  *(inited + 56) = v9;
  v11 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v12 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = v13;
  *a3 = v12 | 0x6000000000000000;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  return result;
}

uint64_t sub_22C505848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = sub_22C36ECB4();
  sub_22C456C94(v12, v13, v10);
  result = a3(v7, a2);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = v11;
  return result;
}

uint64_t sub_22C5058CC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = v5 + 1;
  if (v6 <= v5)
  {
    sub_22C591324();
    v4 = v25;
    v6 = *(v25 + 24) >> 1;
  }

  *(v4 + 16) = v7;
  *(v4 + 8 * v5 + 32) = v2;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_22C591324();
    v4 = v26;
  }

  *(v4 + 16) = v8;
  *(v4 + 8 * v7 + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 46;
  *(v9 + 24) = 0xE100000000000000;
  v10 = *(v4 + 24);
  v11 = v5 + 3;

  if (v11 > (v10 >> 1))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v11;
  *(v4 + 8 * v8 + 32) = v9;
  sub_22C90908C();
  sub_22C90A28C();

  sub_22C501204();
  v13 = v12;
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v18 = *(v4 + 16);
  v17 = *(v4 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v18 + 1;
  *(v4 + 8 * v18 + 32) = v16;

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  v20 = *(v4 + 16);
  if (v20 >= *(v4 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v29;
  }

  *(v4 + 16) = v20 + 1;
  *(v4 + 8 * v20 + 32) = v19;
  v21 = sub_22C3DB9B0(v4);

  v22 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = v23;
  return v22 | 0x6000000000000000;
}

double sub_22C505B90@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v225 = a1;
  v226 = a2;
  v3 = sub_22C90926C();
  v4 = sub_22C36A7A4(v3, &v227);
  v208 = v5;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v7 = sub_22C90929C();
  v8 = sub_22C36A7A4(v7, v231);
  v211 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C3698F8(v10);
  v11 = sub_22C9092DC();
  v12 = sub_22C36A7A4(v11, v230);
  v210 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  sub_22C3698F8(v14);
  v15 = sub_22C90930C();
  v16 = sub_22C36A7A4(v15, &v232[24]);
  v214 = v17;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C3698F8(v18);
  v19 = sub_22C9091EC();
  v20 = sub_22C36A7A4(v19, &v234);
  v217 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v216 = v22;
  v23 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  sub_22C3698F8(v27);
  v28 = sub_22C90922C();
  v29 = sub_22C36A7A4(v28, &v235);
  v219 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v218 = v31;
  v32 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C36A7A4(v32, &v236);
  v221 = v33;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C3698F8(&v205 - v35);
  v36 = sub_22C90046C();
  sub_22C369824();
  v222 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  sub_22C36D0FC();
  v39 = sub_22C90014C();
  v40 = sub_22C36A7A4(v39, &v237);
  v223 = v41;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v42);
  sub_22C90083C();
  sub_22C369824();
  *&v224 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  sub_22C36BE24();
  v45 = sub_22C90063C();
  sub_22C369824();
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v47 = sub_22C90931C();
  sub_22C369824();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v53 = (v52 - v51);
  (*(v49 + 16))(v52 - v51, v225, v47);
  v54 = sub_22C37B988();
  v56 = v55(v54);
  if (v56 == *MEMORY[0x277D72988])
  {
    v57 = sub_22C50B318();
    v58(v57);
    v59 = *v53;
    sub_22C36A83C();
    v60 = swift_allocObject();
    if (v59 == 1)
    {
      v61 = 1702195796;
      v62 = 0xE400000000000000;
    }

    else
    {
      v61 = 0x65736C6146;
      v62 = 0xE500000000000000;
    }

    *v232 = v61;
    *&v232[8] = v62;
    *(v60 + 16) = sub_22C90A49C();
    *(v60 + 24) = v69;
    *v232 = v60;
    goto LABEL_13;
  }

  if (v56 == *MEMORY[0x277D72978])
  {
    v63 = sub_22C50B318();
    v64(v63);
    v65 = *v53;
    sub_22C36A83C();
    v66 = swift_allocObject();
    *v232 = v65;
    v67 = sub_22C90B47C();
LABEL_10:
    *(v66 + 16) = v67;
    *(v66 + 24) = v68;
LABEL_11:
    sub_22C36D2A8();
    v72 = swift_allocObject();
    sub_22C38A010(v72);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v73 = swift_allocObject();
    *(v73 + 16) = v66;
    *(v72 + 32) = v73;
    sub_22C36D2A8();
    v74 = swift_allocObject();
    sub_22C50B3E8(v74);
    sub_22C369AEC();
    v75 = swift_allocObject();
    *(v75 + 16) = v72 | 0xA000000000000000;
    *(v66 + 32) = v75;
    v76 = v66 | 0xA000000000000000;
LABEL_12:
    *v232 = v76;
LABEL_13:
    memset(&v232[8], 0, 32);
    v233 = 0;
    goto LABEL_14;
  }

  if (v56 == *MEMORY[0x277D729A8])
  {
    v70 = sub_22C50B318();
    v71(v70);
    sub_22C36A83C();
    v66 = swift_allocObject();
    v67 = sub_22C90A84C();
    goto LABEL_10;
  }

  if (v56 == *MEMORY[0x277D729C0])
  {
    v82 = sub_22C50B318();
    v83(v82);
    sub_22C36A83C();
    v84 = swift_allocObject();
    *(v84 + 16) = sub_22C90AC4C();
    *(v84 + 24) = v85;
    sub_22C36D2A8();
    v86 = swift_allocObject();
    sub_22C38A010(v86);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v87 = swift_allocObject();
    *(v87 + 16) = v84;
    *(v86 + 32) = v87;
    sub_22C36D2A8();
    v88 = swift_allocObject();
    sub_22C50B3E8(v88);
    sub_22C369AEC();
    v89 = swift_allocObject();
    *(v89 + 16) = v86 | 0xA000000000000000;
    qword_283FB9070 = v89;
    v76 = 0xA000000283FB9050;
    goto LABEL_12;
  }

  if (v56 == *MEMORY[0x277D729B8])
  {
    v90 = sub_22C50B318();
    v91(v90);
    v92 = *v53;
    v93 = v53[1];
    sub_22C36A83C();
    v66 = swift_allocObject();
    *(v66 + 16) = v92;
    *(v66 + 24) = v93;
    goto LABEL_11;
  }

  if (v56 == *MEMORY[0x277D72990])
  {
    v94 = sub_22C50B318();
    v95(v94);
    v96 = sub_22C37B9B0();
    v97(v96);
    sub_22C36A83C();
    v98 = swift_allocObject();
    sub_22C90082C();
    v99 = sub_22C56D8A4(0xD000000000000013, 0x800000022C931D40);
    v100 = sub_22C377B94();
    v101(v100);
    v102 = sub_22C9005AC();
    v103 = [v99 stringFromDate_];

    v104 = sub_22C90A11C();
    v106 = v105;

    v107 = sub_22C379FC8();
    v108(v107);
    *(v98 + 16) = v104;
    *(v98 + 24) = v106;
LABEL_21:
    sub_22C36D2A8();
    v109 = swift_allocObject();
    sub_22C38A010(v109);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v110 = swift_allocObject();
    *(v110 + 16) = v98;
    *(v109 + 32) = v110;
    sub_22C36D2A8();
    v111 = swift_allocObject();
    sub_22C50B3E8(v111);
    sub_22C369AEC();
    v112 = swift_allocObject();
    *(v112 + 16) = v109 | 0xA000000000000000;
    qword_283FB9070 = v112;
    v76 = 0xA000000283FB9050;
    goto LABEL_12;
  }

  if (v56 == *MEMORY[0x277D72958])
  {
    v113 = sub_22C50B318();
    v114(v113);
    sub_22C385E64();
    sub_22C50B3B4();
    sub_22C50B63C();
    v115();
    if (qword_27D9BA6C8 != -1)
    {
      swift_once();
    }

    v116 = qword_27D9E3FC0;
    v117 = sub_22C9000BC();
    v118 = [v116 stringFromDateComponents_];

    if (v118)
    {
      sub_22C90A11C();
      sub_22C385630();

      v227 = v117;
      v228 = v53;
      sub_22C506EB8(&v227, v232);

      v119 = *&v232[32];
      v120 = v233;
      v224 = *&v232[16];
      v225 = *v232;
      v121 = sub_22C37186C();
      v122(v121);
      *v232 = v225;
      *&v232[16] = v224;
      *&v232[32] = v119;
      v233 = v120;
      goto LABEL_14;
    }

    v133 = sub_22C37186C();
    v134(v133);
    *v232 = 2;
    memset(&v232[8], 0, 32);
LABEL_33:
    v233 = 1;
    goto LABEL_14;
  }

  if (v56 == *MEMORY[0x277D72980])
  {
    v123 = sub_22C50B318();
    v124(v123);
    sub_22C38169C();
    v125(v2, v53, v36);
    sub_22C36A83C();
    v126 = swift_allocObject();
    sub_22C90036C();
    sub_22C385D88();
    v127 = sub_22C36FC74();
    v128(v127);
    *(v126 + 16) = v2;
    *(v126 + 24) = v49;
    sub_22C36D2A8();
    v129 = swift_allocObject();
    sub_22C37B2A4(v129, 3);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v130 = swift_allocObject();
    *(v130 + 16) = v126;
    *(v129 + 32) = v130;
    v76 = v129 | 0xA000000000000000;
    goto LABEL_12;
  }

  if (v56 == *MEMORY[0x277D72968])
  {
    goto LABEL_30;
  }

  if (v56 == *MEMORY[0x277D72940])
  {
    v135 = sub_22C50B318();
    v136(v135);
    sub_22C38169C();
    v137 = v220;
    v138 = sub_22C36D384();
    v139(v138);
    sub_22C36A83C();
    v66 = swift_allocObject();
    sub_22C8FFF6C();
    sub_22C385630();
    v140 = sub_22C372FCC();
    v141(v140);
    *(v66 + 16) = v137;
    *(v66 + 24) = v53;
    goto LABEL_11;
  }

  if (v56 == *MEMORY[0x277D72950])
  {
    v142 = sub_22C50B318();
    v143(v142);
    sub_22C385E64();
    sub_22C50B3B4();
    sub_22C50B63C();
    v144();
    sub_22C36A83C();
    v66 = swift_allocObject();
    sub_22C37443C();
    sub_22C90920C();
LABEL_40:
    v148 = sub_22C90993C();
    sub_22C36D0A8(v45, 1, v148);
    if (v149)
    {
      sub_22C36DD28(v45, &qword_27D9BC390, &qword_22C912AC0);
      v150 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v150 = v45;
      sub_22C9098BC();
      sub_22C385D88();
      sub_22C36BBA8();
      (*(v151 + 8))(v45, v148);
    }

    v152 = sub_22C37186C();
    v153(v152);
    goto LABEL_44;
  }

  if (v56 == *MEMORY[0x277D72948])
  {
    v145 = sub_22C50B318();
    v146(v145);
    sub_22C385E64();
    sub_22C50B3B4();
    sub_22C50B63C();
    v147();
    sub_22C36A83C();
    v66 = swift_allocObject();
    sub_22C37443C();
    sub_22C9091DC();
    goto LABEL_40;
  }

  if (v56 != *MEMORY[0x277D729D0])
  {
    if (v56 == *MEMORY[0x277D729B0])
    {
      v175 = sub_22C50B318();
      v176(v175);
      sub_22C38169C();
      v177 = sub_22C37B9B0();
      v178(v177);
      sub_22C374168(v215 + 10, v215[13]);
      v179 = sub_22C9092CC();
      sub_22C507FF8(v179, 0, v232);

      v180 = sub_22C37170C();
      v181(v180);
      goto LABEL_14;
    }

    if (v56 == *MEMORY[0x277D72998])
    {
      v182 = sub_22C50B318();
      v183(v182);
      v184 = sub_22C37B9B0();
      v185(v184);
      v186 = sub_22C90928C();
      v187 = [v186 filename];

      sub_22C90A11C();
      sub_22C50B5FC();

      v188 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v188 = v186 & 0xFFFFFFFFFFFFLL;
      }

      if (v188)
      {
        v189 = sub_22C90928C();
        v190 = [v189 filename];

        v191 = sub_22C90A11C();
        v193 = v192;
      }

      else
      {
        v191 = 0;
        v193 = 0xE000000000000000;
      }

      sub_22C36A83C();
      v98 = swift_allocObject();
      sub_22C36FB04();
      v201(v213, v212);
      *(v98 + 16) = v191;
      *(v98 + 24) = v193;
      goto LABEL_21;
    }

    if (v56 != *MEMORY[0x277D72970])
    {
      if (v56 != *MEMORY[0x277D72960])
      {
        if (v56 == *MEMORY[0x277D72938])
        {
LABEL_30:
          v131 = sub_22C37B988();
          v132(v131);
LABEL_31:
          memset(v232, 0, sizeof(v232));
          goto LABEL_33;
        }

        if (v56 == *MEMORY[0x277D729A0])
        {
          goto LABEL_31;
        }
      }

      memset(v232, 0, sizeof(v232));
      v233 = 1;
      v199 = sub_22C37B988();
      v200(v199);
      goto LABEL_14;
    }

    v194 = sub_22C50B318();
    v195(v194);
    v196 = sub_22C37B9B0();
    v197(v196);
    sub_22C36A83C();
    v66 = swift_allocObject();
    v49 = v206;
    sub_22C90925C();
    v198 = sub_22C90993C();
    sub_22C36D0A8(v49, 1, v198);
    if (v149)
    {
      sub_22C36DD28(v206, &qword_27D9BC390, &qword_22C912AC0);
      v150 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v150 = v206;
      sub_22C9098BC();
      sub_22C385D88();
      sub_22C36BBA8();
      v202 = sub_22C36EBF0();
      v203(v202);
    }

    sub_22C36FB04();
    v204(v207, v209);
LABEL_44:
    *(v66 + 16) = v150;
    *(v66 + 24) = v49;
    goto LABEL_11;
  }

  v154 = sub_22C50B318();
  v155(v154);
  sub_22C38169C();
  v156 = sub_22C37B9B0();
  v157(v156);
  sub_22C374168(v215 + 5, v215[8]);
  v158 = sub_22C9092FC();
  sub_22C507BC0(v158, &v227);

  v159 = sub_22C37170C();
  v160(v159);
  v162 = v227;
  v161 = v228;
  v163 = v229;
  v164 = v230[0];
  v165 = v230[1];
  v166 = v231[0];
  if ((v231[0] & 1) == 0)
  {
    sub_22C36D2A8();
    v167 = swift_allocObject();
    *(v167 + 16) = 3;
    *(v167 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v168 = swift_allocObject();
    *(v168 + 16) = v162;
    *(v167 + 32) = v168;
    sub_22C36D2A8();
    v169 = swift_allocObject();
    *(v169 + 16) = 4;
    *(v169 + 24) = 1;
    sub_22C369AEC();
    v170 = swift_allocObject();
    *(v170 + 16) = v167 | 0xA000000000000000;
    *(v169 + 32) = v170;
    v171 = sub_22C36BA00();
    sub_22C456C94(v171, v172, v164);

    v173 = sub_22C377B94();
    sub_22C456CE4(v173, v174, v163, v164, v165, 0);
    v162 = v169 | 0xA000000000000000;
  }

  *v232 = v162;
  *&v232[8] = v161;
  *&v232[16] = v163;
  *&v232[24] = v164;
  *&v232[32] = v165;
  v233 = v166;
LABEL_14:
  v77 = *&v232[32];
  v78 = v233;
  result = *v232;
  v80 = *&v232[16];
  v81 = v226;
  *v226 = *v232;
  v81[1] = v80;
  *(v81 + 4) = v77;
  *(v81 + 40) = v78;
  return result;
}

uint64_t sub_22C506EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = 3;
  *(v6 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 4;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v6 | 0xA000000000000000;
  *(v8 + 32) = v9;
  *a2 = v8 | 0xA000000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
}

void sub_22C506FDC()
{
  sub_22C36BA7C();
  v97 = v0;
  v98 = v3;
  v99 = v4;
  v100 = v5;
  sub_22C3704C4();
  v6 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  sub_22C3698F8(v10);
  sub_22C90910C();
  sub_22C369824();
  v87 = v12;
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v13);
  sub_22C90963C();
  sub_22C369824();
  v95 = v15;
  v96 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v94 = v16;
  sub_22C36BA0C();
  sub_22C90919C();
  sub_22C369824();
  v91 = v18;
  v92 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C50B3FC();
  sub_22C90906C();
  sub_22C369824();
  v89 = v20;
  v90 = v19;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v23 = v22 - v21;
  type metadata accessor for DirectionalTypedValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22C50B4C8();
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  sub_22C36CAC0();
  sub_22C50B2E8();
  sub_22C50A6A4();
  sub_22C36CA88();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C50B2E8();
    sub_22C3806B8();
    sub_22C50A6A4();
    v40 = sub_22C36D7F0();
    v42 = v41(v40);
    if (v42 == *MEMORY[0x277D72A38])
    {
      v43 = sub_22C36D7F0();
      v44(v43);
      swift_projectBox();
      v45 = sub_22C383BD4();
      v46(v45);
      sub_22C378AB0(v97 + 56, v101);
      sub_22C3766E0(v101, v102);
      (*(v95 + 104))(v94, *MEMORY[0x277D72E10], v96);
      sub_22C37E2B0();
      v47(v1);
      v48 = sub_22C50B61C();
      v49(v48, v96);
      v50 = sub_22C37B988();
      v51(v50);
    }

    else
    {
      if (v42 == *MEMORY[0x277D729E0])
      {
        v60 = sub_22C36D7F0();
        v61(v60);
        v62 = swift_projectBox();
        (*(v89 + 16))(v23, v62, v90);
        v63 = sub_22C90905C();
        MEMORY[0x28223BE20](v63);
        sub_22C388200();
        v65 = sub_22C3B2C0C(sub_22C507B78, v64, v63);

        sub_22C47F330(v65, v100);

        (*(v89 + 8))(v23, v90);
        goto LABEL_11;
      }

      if (v42 != *MEMORY[0x277D729F8])
      {
        goto LABEL_16;
      }

      v74 = sub_22C36D7F0();
      v75(v74);
      v76 = swift_projectBox();
      (*(v87 + 16))(v86, v76, v88);
      sub_22C378AB0(v97 + 96, v101);
      sub_22C3766E0(v101, v102);
      (*(v95 + 104))(v94, *MEMORY[0x277D72E10], v96);
      sub_22C50B590();
      v77 = sub_22C50B648();
      v78(v77);
      (*(v95 + 8))(v94, v96);
      v79 = sub_22C3728B8();
      v80(v79);
    }

    sub_22C36FF94(v101);
    goto LABEL_11;
  }

  sub_22C50B2E8();
  sub_22C374C34();
  sub_22C50A6A4();
  v31 = (*(v8 + 88))(v2, v6);
  if (v31 != *MEMORY[0x277D72A38])
  {
    if (v31 == *MEMORY[0x277D729E0])
    {
      v52 = sub_22C36CAB0();
      v53(v52);
      v54 = swift_projectBox();
      (*(v89 + 16))(v23, v54, v90);
      v55 = sub_22C90905C();
      MEMORY[0x28223BE20](v55);
      sub_22C388200();
      v57 = sub_22C3B2C0C(sub_22C507B5C, v56, v55);

      sub_22C47F330(v57, v100);

      v58 = sub_22C38644C();
      v59(v58);
      goto LABEL_11;
    }

    if (v31 == *MEMORY[0x277D729F8])
    {
      v66 = sub_22C36CAB0();
      v67(v66);
      v68 = swift_projectBox();
      (*(v87 + 16))(v86, v68, v88);
      sub_22C378AB0(v97 + 96, v101);
      v69 = v102;
      v70 = v103;
      sub_22C3766E0(v101, v102);
      (*(v95 + 104))(v94, *MEMORY[0x277D72E08], v96);
      sub_22C50B590();
      v71(v86, v94, v98, v99, v69, v70);
      v72 = sub_22C379ED8();
      v73(v72);
      (*(v87 + 8))(v86, v88);
      sub_22C36FF94(v101);
      goto LABEL_11;
    }

LABEL_16:
    v93 = *(v8 + 8);
    v81 = sub_22C36D7F0();
    v82(v81);
    sub_22C378AB0(v97 + 16, v101);
    sub_22C3766E0(v101, v102);
    sub_22C50B2E8();
    sub_22C50A6A4();
    (*(v8 + 32))(v85, v27, v6);
    (*(v95 + 104))(v94, *MEMORY[0x277D72E08], v96);
    sub_22C37E2B0();
    v83();
    (*(v95 + 8))(v94, v96);
    v84 = sub_22C36BE34();
    v93(v84);
    sub_22C36FF94(v101);
    goto LABEL_17;
  }

  v32 = sub_22C36CAB0();
  v33(v32);
  v34 = swift_projectBox();
  (*(v91 + 16))(v1, v34, v92);
  sub_22C378AB0(v97 + 56, v101);
  sub_22C3766E0(v101, v102);
  (*(v95 + 104))(v94, *MEMORY[0x277D72E08], v96);
  sub_22C37E2B0();
  v35(v1);
  v36 = sub_22C3728B8();
  v37(v36);
  v38 = sub_22C36BC58();
  v39(v38);
  sub_22C36FF94(v101);
LABEL_11:

LABEL_17:
  sub_22C50B370();
  sub_22C50A6FC();
  sub_22C36CC48();
}

void sub_22C5079DC()
{
  sub_22C370030();
  type metadata accessor for DirectionalTypedValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  sub_22C38B184();
  sub_22C9093BC();
  sub_22C36985C();
  v1 = sub_22C383CCC();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  sub_22C506FDC();
  sub_22C50B370();
  sub_22C50A6FC();
  sub_22C36FB20();
}

void *sub_22C507ACC()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  return v0;
}

uint64_t sub_22C507AFC()
{
  sub_22C507ACC();

  return swift_deallocClassInstance();
}

void sub_22C507BC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BAD88, &unk_22C90D630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C919310;
  *(inited + 32) = sub_22C8F8EA4(a1);
  *(inited + 40) = v6;
  v7 = sub_22C387D48();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 street];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v2;
  v10 = sub_22C387D48();
  v11 = v10;
  if (v10)
  {
    v12 = [v10 city];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 64) = v11;
  *(inited + 72) = v2;
  v13 = sub_22C387D48();
  v14 = v13;
  if (v13)
  {
    v15 = [v13 state];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 80) = v14;
  *(inited + 88) = v2;
  v16 = sub_22C387D48();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 postalCode];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 96) = v17;
  *(inited + 104) = v2;
  v19 = sub_22C387D48();
  v20 = v19;
  if (v19)
  {
    v21 = [v19 country];

    sub_22C90A11C();
    sub_22C385630();
  }

  else
  {
    v17 = 0;
  }

  v22 = 0;
  *(inited + 112) = v20;
  *(inited + 120) = v17;
  v23 = MEMORY[0x277D84F90];
  while (v22 != 6)
  {
    if (v22 > 5)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v24 = inited + 16 * v22;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);
    if (v26 && (!v25 ? (v27 = v26 == 0xE000000000000000) : (v27 = 0), v27 || (v59 = *(v24 + 32), v28 = sub_22C90B4FC(), v25 = v59, (v28 & 1) != 0)))
    {
      ++v22;
    }

    else
    {
      v60 = v25;

      v61 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22C373310();
        sub_22C3B6D08(v29, v30, v31);
        v23 = v61;
      }

      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      v34 = v60;
      if (v33 >= v32 >> 1)
      {
        sub_22C369AB0(v32);
        sub_22C375CCC();
        sub_22C3B6D08(v35, v36, v37);
        v34 = v60;
        v23 = v61;
      }

      ++v22;
      *(v23 + 16) = v33 + 1;
      *(v23 + 16 * v33 + 32) = v34;
    }
  }

  swift_setDeallocating();
  sub_22C590040();
  v38 = 0;
  v39 = *(v23 + 16);
  v40 = MEMORY[0x277D84F90];
LABEL_32:
  v41 = 16 * v38 + 40;
  while (v39 != v38)
  {
    if (v38 >= *(v23 + 16))
    {
      goto LABEL_43;
    }

    ++v38;
    v42 = v41 + 16;
    v43 = *(v23 + v41);
    v41 += 16;
    if (v43)
    {
      v44 = *(v23 + v42 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_22C373310();
        sub_22C590270(v48, v49, v50, v40);
        v40 = v51;
      }

      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_22C369AB0(v45);
        sub_22C375CCC();
        sub_22C590270(v52, v53, v54, v40);
        v40 = v55;
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      goto LABEL_32;
    }
  }

  v61 = v40;
  v56 = sub_22C37B9B0();
  sub_22C3A5908(v56, v57);
  sub_22C50B388(&qword_28142F9F0);
  sub_22C90A04C();
  sub_22C385630();

  sub_22C36A83C();
  v58 = swift_allocObject();
  *(v58 + 16) = &v61;
  *(v58 + 24) = &unk_22C9112A0;
  *a2 = v58;
  sub_22C37274C();
  *(a2 + 40) = 0;
}

void sub_22C507FF8(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_22C36A83C();
  v8 = swift_allocObject();
  v9 = [a1 displayName];
  sub_22C90A11C();
  sub_22C50B42C();

  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_22C36D2A8();
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *(v10 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v10 + 32) = v11;
  sub_22C36D2A8();
  v12 = swift_allocObject();
  *(v12 + 16) = 4;
  *(v12 + 24) = 1;
  sub_22C369AEC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10 | 0xA000000000000000;
  *(v12 + 32) = v13;
  v14 = v12 | 0xA000000000000000;
  if (a2)
  {
    sub_22C36A83C();
    v15 = swift_allocObject();
    *(v15 + 16) = 0x203A656D616ELL;
    *(v15 + 24) = 0xE600000000000000;
    v46 = sub_22C47D60C(v15, v12 | 0xA000000000000000);

    v16 = sub_22C50AE34(a1);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = sub_22C36E2B8();
    for (i = 0; ; ++i)
    {
      if (v19 == i)
      {

        goto LABEL_17;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_22C372FCC();
        v21 = MEMORY[0x2318B8460](v23);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      if (__OFADD__(i, 1))
      {
        goto LABEL_46;
      }

      if ([v21 type] == 2)
      {
        break;
      }
    }

    v24 = sub_22C8E62D8(v22);
    if (v25)
    {
      v48 = v24;
      v49 = v25;
      sub_22C50849C(&v48, 0x203A656E6F6870, &v47);

      v26 = v47;
      goto LABEL_18;
    }

LABEL_17:
    v26 = 0xF000000000000007;
LABEL_18:
    v27 = sub_22C50AE34(a1);
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v17;
    }

    v29 = sub_22C36E2B8();
    for (j = 0; ; ++j)
    {
      if (v29 == j)
      {

        goto LABEL_33;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2318B8460](j, v28);
      }

      else
      {
        if (j >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v31 = *(v28 + 8 * j + 32);
      }

      v32 = v31;
      if (__OFADD__(j, 1))
      {
        goto LABEL_48;
      }

      if ([v31 type] == 1)
      {
        break;
      }
    }

    v33 = sub_22C8E62D8(v32);
    if (v34)
    {
      v48 = v33;
      v49 = v34;
      sub_22C50849C(&v48, 0x203A6C69616D65, &v47);

      v35 = v47;
      goto LABEL_34;
    }

LABEL_33:
    v35 = 0xF000000000000007;
LABEL_34:
    sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90FB40;
    *(inited + 32) = v46;
    *(inited + 40) = v26;
    *(inited + 48) = v35;

    sub_22C454710(v26);
    sub_22C454710(v35);
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37 == 3)
      {
        swift_setDeallocating();
        sub_22C590054();
        v14 = sub_22C47D738(8236, 0xE200000000000000, v38);
        sub_22C4546F8(v35);
        sub_22C4546F8(v26);

        goto LABEL_44;
      }

      if (v37 > 2)
      {
        break;
      }

      v39 = *(inited + 8 * v37++ + 32);
      if ((~v39 & 0xF000000000000007) != 0)
      {
        v40 = a3;

        v41 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C373310();
          sub_22C591324();
          v38 = v44;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22C369AB0(v42);
          sub_22C591324();
          v38 = v45;
        }

        *(v38 + 16) = v43 + 1;
        *(v38 + 8 * v43 + 32) = v39;
        v26 = v41;
        a3 = v40;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_44:
    *a3 = v14;
    sub_22C37274C();
    *(a3 + 40) = 0;
  }
}

uint64_t sub_22C50849C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_22C36A83C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_22C36D2A8();
  v7 = swift_allocObject();
  *(v7 + 16) = 3;
  *(v7 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 32) = v8;
  sub_22C36D2A8();
  v9 = swift_allocObject();
  *(v9 + 16) = 4;
  *(v9 + 24) = 1;
  sub_22C369AEC();
  v10 = swift_allocObject();
  *(v10 + 16) = v7 | 0xA000000000000000;
  *(v9 + 32) = v10;
  sub_22C36A83C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = 0xE700000000000000;

  v12 = sub_22C47D60C(v11, v9 | 0xA000000000000000);

  *a3 = v12;
  return result;
}

uint64_t sub_22C5085D8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  if (*(a1 + 16) && (sub_22C6284D4(), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for DynamicEnumeration(0);
    sub_22C50A6A4();
    v7 = 1;
    sub_22C36C640(v4, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for DynamicEnumeration(0);
    sub_22C36C640(v4, 1, 1, v8);
    v7 = 0;
  }

  sub_22C36DD28(v4, &qword_27D9BD8B0, &qword_22C919AA8);
  return v7;
}

void sub_22C50870C()
{
  sub_22C36BA7C();
  v30 = v0;
  v3 = sub_22C90941C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22C382E94();
  v11 = sub_22C90952C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C37FDDC();
  v15 = *(v5 + 16);
  v15(v9, v30, v3);
  v16 = sub_22C37170C();
  v18 = v17(v16);
  if (v18 != *MEMORY[0x277D72AD0])
  {
    if (v18 == *MEMORY[0x277D72AB0] || v18 == *MEMORY[0x277D72AE8])
    {
      v25 = sub_22C37170C();
      v26(v25);
      v27 = swift_projectBox();
      v15(v1, v27, v3);

      sub_22C50870C();
      (*(v5 + 8))(v1, v3);
      goto LABEL_11;
    }

    if (v18 != *MEMORY[0x277D72AB8])
    {
      v28 = sub_22C37170C();
      v29(v28);
      goto LABEL_11;
    }
  }

  v19 = sub_22C37170C();
  v20(v19);
  v21 = swift_projectBox();
  (*(v13 + 16))(v2, v21, v11);

  sub_22C4F6400();
  v22 = sub_22C36D384();
  v23(v22);
LABEL_11:
  sub_22C36CC48();
}

void sub_22C5089A0()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377D60();
  v5 = sub_22C90941C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C3804A4();
  MEMORY[0x28223BE20](v13);
  sub_22C387B64();
  v14 = *(v7 + 16);
  v15 = sub_22C36D384();
  v14(v15);
  v16 = sub_22C372FCC();
  v18 = v17(v16);
  if (v18 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  if (v18 == *MEMORY[0x277D72AB0] || v18 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_8;
  }

  if (v18 != *MEMORY[0x277D72AD8])
  {
    if (v18 == *MEMORY[0x277D72AB8])
    {
LABEL_2:
      v19 = sub_22C372FCC();
      v20(v19);
      sub_22C508DF8(v3);

LABEL_27:
      sub_22C36CC48();
      return;
    }

    if (v18 != *MEMORY[0x277D72AE0])
    {
      sub_22C903F7C();
      v42 = sub_22C9063CC();
      v43 = sub_22C90AADC();
      if (sub_22C370048(v43))
      {
        *sub_22C36D240() = 0;
        sub_22C3699EC();
      }

      v45 = sub_22C50B584();
      v46(v45);
      sub_22C508DF8(v3);

      (*(v7 + 8))(v0, v5);
      goto LABEL_27;
    }

LABEL_8:
    v22 = sub_22C372FCC();
    v23(v22);
    v24 = swift_projectBox();
    (v14)(v1, v24, v5);

    sub_22C5089A0();
    (*(v7 + 8))(v1, v5);
    goto LABEL_27;
  }

  v25 = sub_22C372FCC();
  v26(v25);
  v27 = *(*v0 + 16);
  v30 = *(v27 + 56);
  v29 = v27 + 56;
  v28 = v30;
  v31 = 1 << *(*(*v0 + 16) + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v47 = *(*v0 + 16);

  v35 = 0;
  while (v33)
  {
    v36 = v35;
LABEL_19:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    (v14)(v11, *(v47 + 48) + *(v7 + 72) * (v37 | (v36 << 6)), v5);
    sub_22C5089A0();
    v39 = v38;
    v40 = sub_22C37170C();
    v41(v40);
    if (v39)
    {
LABEL_26:

      goto LABEL_27;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      goto LABEL_26;
    }

    v33 = *(v29 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C508DF8(uint64_t a1)
{
  v2 = sub_22C90430C();
  v38 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = sub_22C90963C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D72E10], v8);
  sub_22C47E8FC();
  v34 = v13;
  v35 = v12;
  (*(v9 + 8))(v11, v8);
  sub_22C9093DC();
  v41 = a1;
  sub_22C3B2ED0();
  v15 = v14;

  v16 = 0;
  v17 = *(v15 + 16);
  v18 = v15 + 40;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      v20 = v19;

      v42 = v35;
      v43 = v34;
      v40 = v38 + 16;
      v21 = (v38 + 8);
      v36 = *(v20 + 16);
      v37 = v20;

      v22 = 0;
      for (i = v7; ; (*v21)(i, v2))
      {
        if (v22 == v36)
        {

          return;
        }

        v24 = *(v38 + 72);
        v25 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v39 = v22;
        v26 = v37 + v25 + v24 * v22;
        v27 = *(v38 + 16);
        v27(v7, v26, v2);
        v28 = v43 + v25;
        if (!v42)
        {
          break;
        }

        sub_22C7DB73C();
        v30 = v29;

        if (v30)
        {
          goto LABEL_14;
        }

LABEL_15:
        v22 = v39 + 1;
        v7 = i;
      }

      v31 = *(v43 + 16) + 1;
      while (--v31)
      {
        v27(v5, v28, v2);
        sub_22C50B0D4(&qword_27D9BC808, MEMORY[0x277D85578]);
        v32 = sub_22C90A0BC();
        (*v21)(v5, v2);
        v28 += v24;
        if (v32)
        {
          goto LABEL_15;
        }
      }

LABEL_14:
      sub_22C7D4BE0();
      goto LABEL_15;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    ++v16;
    v42 = v19;

    sub_22C3CDDE8();
    v19 = v42;
    v18 += 16;
  }

  __break(1u);
}

void sub_22C50920C(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v3 = sub_22C90963C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C9095CC();
  v39 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C90077C();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C908A8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_22C90947C();
  v43 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v46 = &v38 - v20;
  v21 = sub_22C908B2C();
  MEMORY[0x2318B6010](v21);
  v22 = v49;
  sub_22C908B1C();
  if (v22)
  {

    (*(v6 + 8))(v8, v47);
    (*(v10 + 8))(v12, v9);
    sub_22C36C640(v15, 1, 1, v16);
    sub_22C36DD28(v15, &qword_27D9BC3B0, &unk_22C912AF0);
LABEL_6:
    sub_22C7F4FB4();
    v31 = v35;
    v33 = v36;
    goto LABEL_7;
  }

  (*(v6 + 8))(v8, v47);
  (*(v10 + 8))(v12, v9);
  sub_22C36C640(v15, 0, 1, v16);
  v23 = v43;
  v24 = v46;
  (*(v43 + 32))(v46, v15, v16);
  (*(v23 + 16))(v19, v24, v16);
  if ((*(v23 + 88))(v19, v16) != *MEMORY[0x277D72B68])
  {
    v34 = *(v23 + 8);
    v34(v46, v16);
    v34(v19, v16);
    goto LABEL_6;
  }

  (*(v23 + 96))(v19, v16);
  v25 = v39;
  (*(v39 + 32))(v44, v19, v45);
  v27 = v40;
  v26 = v41;
  v28 = v23;
  v29 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277D72E10], v42);
  sub_22C47E38C();
  v31 = v30;
  v33 = v32;
  (*(v26 + 8))(v27, v29);
  (*(v25 + 8))(v44, v45);
  (*(v28 + 8))(v46, v16);
LABEL_7:
  v37 = v50;
  *v50 = v31;
  v37[1] = v33;
}

uint64_t sub_22C5097BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  v9 = sub_22C36E2BC(a3, a4);
  if (__OFADD__(*(v17 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
  if (sub_22C90B15C())
  {
    v13 = sub_22C36E2BC(a3, a4);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v12)
  {
    v15 = (*(v17 + 56) + 16 * v11);
    result = *v15;
    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
    sub_22C62F600(v11, a3, a4, a1, a2, v17);

    result = 0;
  }

  *v4 = v17;
  return result;
}

uint64_t sub_22C509938(uint64_t a1)
{
  result = sub_22C90077C();
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

uint64_t sub_22C509A64(uint64_t a1)
{
  result = sub_22C457168(319, &qword_281430160, &protocol descriptor for EnumerationDefinitionPromptRendering);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430018, &protocol descriptor for PrimitiveTypeIdentifierPromptRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
      if (v4 <= 0x3F)
      {
        result = sub_22C908AEC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C509B90(uint64_t a1)
{
  result = sub_22C457168(319, qword_281430CF8, &protocol descriptor for ToolDefinitionPromptRendering);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430538, &protocol descriptor for AssistantSchemaIdentifierRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281431C28, &protocol descriptor for EntitySetterPromptRendering);
      if (v4 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_281432550, &protocol descriptor for UIControlPromptRendering);
        if (v5 <= 0x3F)
        {
          result = sub_22C908AEC();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22C509D04(uint64_t a1)
{
  sub_22C457168(319, &qword_27D9BD838, &protocol descriptor for EnumerationCaseDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, &qword_27D9BD840, &protocol descriptor for Hack_EnumerationDefinition_TypeReferenceRendering);
    if (v2 <= 0x3F)
    {
      sub_22C50A654(319, &qword_27D9BD848, MEMORY[0x277D1E8F0]);
      if (v3 <= 0x3F)
      {
        sub_22C50A654(319, &qword_281435830, MEMORY[0x277CC9788]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C509E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return sub_22C375CC0(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return sub_22C375CC0(result, a2);
    }
  }

  return result;
}

void sub_22C509EC0(uint64_t a1)
{
  sub_22C50A22C(319, qword_281430748, &qword_27D9BD860, qword_22C919668);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FullPlannerPreferences(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C509FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return sub_22C375CC0(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return sub_22C375CC0(result, a2);
    }
  }

  return result;
}

uint64_t sub_22C50A014()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  v3 = sub_22C374A1C();
  v4(v3);
  v5 = sub_22C36ECCC(*(v0 + 32));

  return sub_22C370B74(v5, v6, v7);
}

void sub_22C50A090()
{
  sub_22C3700E0();
  if (v1)
  {
    sub_22C50B5F0();
  }

  else
  {
    v2 = sub_22C36D3B4();
    v3(v2);
    v4 = sub_22C36FCD8(*(v0 + 32));

    sub_22C36C640(v4, v5, v6, v7);
  }
}

void sub_22C50A118(uint64_t a1)
{
  sub_22C457168(319, qword_281430480, &protocol descriptor for ParameterDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258, &protocol descriptor for ToolNameRendering);
    if (v2 <= 0x3F)
    {
      sub_22C50A22C(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558, &protocol descriptor for ToolDescriptionProviding);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C50A22C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    sub_22C37FDE8();
    v5 = sub_22C90AC6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22C50A2C4(uint64_t a1)
{
  result = sub_22C457168(319, &qword_27D9BD7A0, &protocol descriptor for DynamicEnumerationCasePromptRendering);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430540, &protocol descriptor for StaticTypeInstancePromptRendering);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FullPlannerPreferences(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C50A3C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_22C50A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22C50A4C8(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430540, &protocol descriptor for StaticTypeInstancePromptRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, qword_281430548, &protocol descriptor for DynamicEnumerationPromptRendering);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C50A5CC(uint64_t a1)
{
  sub_22C50A654(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C50A654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22C37FDE8();
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C50A6A4()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C50A6FC()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_22C50A750(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v69 = a2;
  v70 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  v74 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v67[0] = v67 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v67 - v12;
  v77 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v67[1] = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v68 = v67 - v14;
  v15 = sub_22C3A5908(&qword_27D9BD928, &qword_22C919B20);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v80 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v67 - v18;
  v20 = sub_22C3A5908(&qword_27D9BD930, &unk_22C919B28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v79 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (v67 - v23);
  v81 = a4;
  v27 = a4[2];
  v25 = a4 + 2;
  v26 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C3D8();
    v26 = v28;
  }

  v29 = 0;
  v81[2] = v26;
  v30 = *(a1 + 16);
  v84 = v13;
  v72 = v24;
  v73 = v25;
  v71 = v30;
  v75 = a1;
  v76 = v19;
  while (1)
  {
    v83 = v26;
    if (v29 == v30)
    {
      v31 = 1;
      v82 = v30;
      goto LABEL_9;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(a1 + 16))
    {
      goto LABEL_32;
    }

    sub_22C3A7214();
    v31 = 0;
    v82 = v29 + 1;
LABEL_9:
    v32 = 1;
    v33 = v77;
    sub_22C36C640(v19, v31, 1, v77);
    v34 = v80;
    sub_22C407C2C();
    if (sub_22C370B74(v34, 1, v33) != 1)
    {
      v35 = v68;
      sub_22C407C2C();
      v69(v35);
      sub_22C36DD28(v35, &qword_27D9BB100, &qword_22C90D9A0);
      v32 = 0;
    }

    v36 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
    sub_22C36C640(v79, v32, 1, v36);
    sub_22C407C2C();
    v37 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
    if (sub_22C370B74(v24, 1, v37) == 1)
    {

      return;
    }

    v38 = v9;
    v39 = *v24;
    sub_22C407C2C();
    v43 = *v81;
    v42 = v81[1];
    v44 = v42 + 32;
    v45 = *(v42 + 16);
    if (*v81)
    {

      sub_22C7DD014(v39, v44, v45, (v43 + 16));
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v26 = v83;
      if (v49)
      {
LABEL_21:
        v54 = v81;
        sub_22C7D5818(v39, v51, v40, v41);
        v55 = v84;
        sub_22C3A7214();
        v54[2] = v26;
        v62 = *(v26 + 16);
        v61 = *(v26 + 24);
        v63 = v73;
        if (v62 >= v61 >> 1)
        {
          sub_22C3B731C(v61 > 1, v62 + 1, 1, v56, v57, v58, v59, v60);
        }

        sub_22C36DD28(v55, &qword_27D9BB0F0, &qword_22C90D990);
        v26 = *v63;
        *(*v63 + 16) = v62 + 1;
        sub_22C407C2C();
        v19 = v76;
        v9 = v38;
        goto LABEL_28;
      }

      v19 = v76;
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v47 = 0;
      v26 = v83;
      while (1)
      {
        if (v45 == v47)
        {
          v51 = 0;
          goto LABEL_21;
        }

        v52 = *(v44 + 8 * v47);

        v53 = sub_22C48819C(v52, v39);

        if (v53)
        {
          break;
        }

        ++v47;
      }

      v19 = v76;
    }

    if (v47 >= *(v26 + 16))
    {
      goto LABEL_34;
    }

    v64 = v26 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v47;
    v65 = v84;
    v66 = v78;
    sub_22C4FFD14(v64, v67[0]);
    sub_22C36DD28(v65, &qword_27D9BB0F0, &qword_22C90D990);
    v78 = v66;
    if (v66)
    {

      *v73 = v26;
      return;
    }

    sub_22C36DD28(v64, &qword_27D9BB0F0, &qword_22C90D990);
    sub_22C407C2C();
    v9 = v38;
    v63 = v73;
LABEL_28:
    *v63 = v26;
    a1 = v75;
    v30 = v71;
    v24 = v72;
    v29 = v82;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C50AE34(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C50AE94();
  v3 = sub_22C90A5EC();

  return v3;
}

unint64_t sub_22C50AE94()
{
  result = qword_27D9BD8A0;
  if (!qword_27D9BD8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BD8A0);
  }

  return result;
}

void sub_22C50AF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_22C456C30(result, a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_22C50AF74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_22C50AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_22C456D48(a1, a2, a3);
  }
}

uint64_t sub_22C50AF90(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_22C50AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_22C456C94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22C50B070(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C50B07C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C50B0D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C50B118(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s15PiranaClassTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C50B26C()
{
  result = qword_27D9BD948;
  if (!qword_27D9BD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD948);
  }

  return result;
}

double sub_22C50B300()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_22C50B388(unint64_t *a1)
{

  return sub_22C50B118(a1, v1, v2);
}

unint64_t sub_22C50B3C4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000048, (a1 - 32) | 0x8000000000000000, (v1 - 224));
}

uint64_t sub_22C50B3E8(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = v1;
  return result;
}

double sub_22C50B450(uint64_t a1)
{
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return result;
}

BOOL sub_22C50B484(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_22C50B518()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 88) = -1;
  return result;
}

void sub_22C50B59C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

unint64_t sub_22C50B5B8()
{
  *(v0 - 112) = 95;
  *(v0 - 104) = 0xE100000000000000;
  *(v0 - 128) = 32;
  *(v0 - 120) = 0xE100000000000000;

  return sub_22C3858B4();
}

void *sub_22C50B694()
{

  return sub_22C3B68D4(0, v0 & ~(v0 >> 63), 0);
}

void sub_22C50B6B4()
{
  v3 = *(v1 - 216);

  sub_22C54DBA0(v0, v3);
}

uint64_t sub_22C50B6D4()
{

  return swift_projectBox();
}

uint64_t sub_22C50B6EC()
{
}

double sub_22C50B704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v16 == 1)
  {
    sub_22C903F7C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AADC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      MEMORY[0x2318B9880](v13, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    *(a2 + 24) = type metadata accessor for RouteRequestToSearch(0);
    *(a2 + 32) = &off_283FBBB40;
    v14 = sub_22C36D548(a2);
    sub_22C3E17AC(a1, v14);
  }

  else
  {
    sub_22C3FEA64(a1);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_22C50B8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22C902D3C();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369838();
  v7 = sub_22C90888C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C50BB18(v3, &v26);
  if (v27 && (sub_22C36C730(&v26, v23), v14 = v24, v15 = v25, sub_22C374168(v23, v24), v16 = (*(v15 + 8))(a1, v14, v15), sub_22C36FF94(v23), v16))
  {
    (*(v9 + 104))(v13, *MEMORY[0x277D1E6C0], v7);

    sub_22C9088AC();
    sub_22C90889C();
    v17 = *MEMORY[0x277D1E6F8];
    v18 = sub_22C9089DC();
    (*(*(v18 - 8) + 104))(a2, v17, v18);

    v19 = a2;
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v21 = sub_22C9089DC();
    v19 = a2;
    v20 = 1;
  }

  return sub_22C36C640(v19, v20, 1, v21);
}

uint64_t sub_22C50BAF0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C50BB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD950, &unk_22C919C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ToolRenderer_v1_0(uint64_t a1)
{
  result = qword_281434248;
  if (!qword_281434248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C50BF60(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v37 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v33 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - v7;
  v36 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    swift_getKeyPath();
    v38[0] = v18;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v37) == 1)
    {

      result = sub_22C3770B0(v4, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      v19 = v34;
      sub_22C50D904(v4, v34, type metadata accessor for _PromptMapper._ToolPromptMap);
      sub_22C50D904(v19, v35, type metadata accessor for _PromptMapper._ToolPromptMap);
      v20 = v36;
      if (v36[3] <= v36[2])
      {
        sub_22C88D114();
        v20 = v39;
      }

      v21 = v20;
      sub_22C90B62C();
      sub_22C48A9B4(v38, v17);
      result = sub_22C90B66C();
      v22 = v21 + 8;
      v36 = v21;
      v23 = -1 << *(v21 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v21[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v21[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = v36;
      *(v36[6] + 8 * v26) = v17;
      result = sub_22C50D904(v35, v31[7] + *(v33 + 72) * v26, type metadata accessor for _PromptMapper._ToolPromptMap);
      ++v31[2];
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v36;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C50C338()
{
  v0 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v3 = sub_22C9079FC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  sub_22C907EEC();

  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C3770B0(v2, &qword_27D9BD798, &unk_22C919070);
    return sub_22C4B9B90(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v5 + 32))(v8, v2, v3);
    v10 = sub_22C90799C();
    v9 = sub_22C4B9B90(v10);
    (*(v5 + 8))(v8, v3);
  }

  return v9;
}

uint64_t sub_22C50C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v194 = a3;
  v195 = a2;
  v185 = a4;
  type metadata accessor for RenderableTool(0);
  sub_22C369824();
  v204 = v6;
  v205 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v187 = &v184 - v11;
  v12 = sub_22C9036EC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  v18 = &v184 - v17;
  v203 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C3698D4();
  v24 = MEMORY[0x28223BE20](v23);
  v202 = &v184 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v196 = &v184 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v184 - v28;
  v186 = a1;
  v30 = v20;
  v31 = sub_22C4AF928();
  v32 = 0;
  v207 = *(v31 + 16);
  v213 = v14 + 16;
  *&v210 = v14 + 88;
  LODWORD(v206) = *MEMORY[0x277D1ECE0];
  LODWORD(v208) = *MEMORY[0x277D1ECE8];
  LODWORD(v201) = *MEMORY[0x277D1ECD8];
  v33 = *MEMORY[0x277D1ECD0];
  v199 = *MEMORY[0x277D1ECF8];
  LODWORD(v200) = v33;
  v190 = v14;
  v209 = (v14 + 8);
  v197 = MEMORY[0x277D84F90];
  v198 = v20;
  while (v207 != v32)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_81:
        sub_22C50D998();
        v165 = v181;
        v166 = *(v181 + 24) >> 1;
LABEL_66:
        *(v165 + 16) = v29;
        *(v165 + 8 * v20 + 32) = v14;
        v167 = v20 + 2;
        if (v166 < (v20 + 2))
        {
          sub_22C591324();
          v165 = v182;
        }

        *(v165 + 16) = v167;
        *(v165 + 8 * v29 + 32) = v9;
        sub_22C36A83C();
        v168 = swift_allocObject();
        *(v168 + 16) = 1616928778;
        *(v168 + 24) = 0xE400000000000000;
        v169 = *(v165 + 24);
        v170 = v20 + 3;

        if ((v20 + 3) > (v169 >> 1))
        {
          sub_22C50D998();
          v165 = v183;
        }

        v161 = v31;
        *(v165 + 16) = v170;
        *(v165 + 8 * v167 + 32) = v168;
        v171 = sub_22C3DB9B0(v165);

        sub_22C369AEC();
        v172 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v173 = swift_allocObject();
        *(v173 + 16) = v171;
        *(v172 + 16) = v173;
        v14 = v172 | 0x6000000000000000;
LABEL_71:
        v211 = v12;
        v9 = *(v32 + 16);
        if (!v9)
        {
          break;
        }

        v31 = v161;
        type metadata accessor for _PromptToolData(0);
        v29 = 0;
        sub_22C36BA94();
        v20 = v32 + v174 + 24;
        while (v29 < *(v32 + 16))
        {
          ++v29;

          sub_22C3CD230();
          if (v9 == v29)
          {
            v12 = v211;
            goto LABEL_76;
          }
        }
      }

LABEL_76:
      sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
      sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
      v175 = sub_22C909F0C();
      sub_22C36A83C();
      v176 = swift_allocObject();
      v211 = 0;
      v212 = 0xE000000000000000;
      v177 = sub_22C90A49C();
      v179 = v178;

      *(v176 + 16) = v177;
      *(v176 + 24) = v179;
      v180 = v185;
      *v185 = v14;
      v180[1] = v175;
      v180[2] = v208;
      v180[3] = v12;
      *(v180 + 2) = 0u;
      *(v180 + 3) = 0u;
      v180[8] = v176;
      return result;
    }

    v14 = v9;
    v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    sub_22C36AB10();
    sub_22C50D8A8(v34, v29, v35);
    (*v213)(v18, v29, v12);
    v36 = sub_22C37FDF4();
    v38 = v37(v36);
    if (v38 == v206 || v38 != v208 && (v38 != v201 ? (v39 = v38 == v200) : (v39 = 1), !v39 ? (v40 = v38 == v199) : (v40 = 1), v40))
    {
      v43 = sub_22C37FDF4();
      v44(v43);
      sub_22C36AAF8();
      sub_22C50D904(v29, v196, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v197;
      v211 = v197;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C50D978(*(v197 + 16));
        v30 = v198;
        v47 = v211;
      }

      v49 = *(v47 + 16);
      v48 = *(v47 + 24);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v53 = sub_22C37187C(v48);
        v197 = v54;
        v184 = v55;
        sub_22C3B685C(v53, v54, 1);
        v50 = v197;
        v30 = v198;
        v47 = v211;
      }

      ++v32;
      *(v47 + 16) = v50;
      v197 = v47;
      sub_22C36AAF8();
      sub_22C50D904(v196, v51, v52);
    }

    else
    {
      v41 = sub_22C37FDF4();
      v42(v41);
      sub_22C50D820(v29);
      ++v32;
    }
  }

  v206 = v9;

  v56 = *(v197 + 16);
  if (v56)
  {
    v211 = MEMORY[0x277D84F90];
    v57 = sub_22C372264();
    v59 = v58;
    sub_22C3B696C(v57, v60, v61);
    v62 = v211;
    sub_22C36BA94();
    v64 = v59 + v63;
    v207 = *(v65 + 72);
    v66 = (v190 + 32);
    v32 = v187;
    do
    {
      sub_22C36AB10();
      v67 = v202;
      sub_22C50D8A8(v64, v202, v68);
      v69 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v66)(v32, v67, v12);
      v70 = *(v203 + 24);
      sub_22C9037DC();
      sub_22C369A9C();
      (*(v71 + 32))(v32 + v69, v67 + v70);
      swift_storeEnumTagMultiPayload();
      v211 = v62;
      v73 = *(v62 + 16);
      v72 = *(v62 + 24);
      if (v73 >= v72 >> 1)
      {
        v76 = sub_22C37187C(v72);
        sub_22C3B696C(v76, v73 + 1, 1);
        v62 = v211;
      }

      *(v62 + 16) = v73 + 1;
      sub_22C36BA94();
      sub_22C377D78();
      sub_22C50D904(v32, v74, v75);
      v64 += v207;
      --v56;
    }

    while (v56);
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v77);
  sub_22C387180();
  v79 = *(v78 - 256);
  v80 = v194;
  v81 = v195;
  *(v82 - 32) = v79;
  *(v82 - 24) = v81;
  *(v82 - 16) = v80;
  v83 = v191;
  sub_22C792A18(sub_22C50D87C, v84, v62);
  v31 = v192;
  if (v83)
  {
  }

  v200 = v85;
  v201 = 0;

  v29 = sub_22C4AF928();
  v14 = 0;
  v20 = *(v29 + 16);
  v207 = MEMORY[0x277D84F90];
  v86 = v198;
LABEL_28:
  v9 = v189;
  while (v20 != v14)
  {
    if (v14 >= *(v29 + 16))
    {
      goto LABEL_78;
    }

    v32 = *(v86 + 72);
    sub_22C36AB10();
    sub_22C50D8A8(v87, v31, v88);
    (*v213)(v9, v31, v12);
    v89 = (*v210)(v9, v12);
    (*v209)(v9, v12);
    if (v89 == v208)
    {
      sub_22C36AAF8();
      sub_22C50D904(v31, v188, v90);
      v91 = v207;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v211 = v91;
      if ((v92 & 1) == 0)
      {
        sub_22C50D978(*(v91 + 16));
        v91 = v211;
      }

      v86 = v198;
      v94 = *(v91 + 16);
      v93 = *(v91 + 24);
      v95 = v91;
      if (v94 >= v93 >> 1)
      {
        v98 = sub_22C37187C(v93);
        sub_22C3B685C(v98, v94 + 1, 1);
        v86 = v198;
        v95 = v211;
      }

      ++v14;
      *(v95 + 16) = v94 + 1;
      v207 = v95;
      sub_22C36AAF8();
      sub_22C50D904(v188, v96, v97);
      v31 = v192;
      goto LABEL_28;
    }

    sub_22C50D820(v31);
    ++v14;
    v86 = v198;
  }

  v99 = v207;
  v100 = *(v207 + 16);
  if (v100)
  {
    v211 = MEMORY[0x277D84F90];
    v101 = v86;
    v102 = sub_22C372264();
    sub_22C3B696C(v102, v103, v104);
    v105 = v211;
    sub_22C36BA94();
    v31 = v99 + v106;
    v213 = *(v101 + 72);
    v107 = (v190 + 32);
    v108 = v206;
    do
    {
      sub_22C36AB10();
      v109 = v202;
      sub_22C50D8A8(v31, v202, v110);
      v111 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v107)(v108, v109, v12);
      v112 = *(v203 + 24);
      sub_22C9037DC();
      sub_22C369A9C();
      (*(v113 + 32))(v108 + v111, v109 + v112);
      swift_storeEnumTagMultiPayload();
      v211 = v105;
      v115 = *(v105 + 16);
      v114 = *(v105 + 24);
      if (v115 >= v114 >> 1)
      {
        v118 = sub_22C37187C(v114);
        sub_22C3B696C(v118, v115 + 1, 1);
        v105 = v211;
      }

      *(v105 + 16) = v115 + 1;
      sub_22C36BA94();
      sub_22C377D78();
      sub_22C50D904(v108, v116, v117);
      v31 += v213;
      --v100;
    }

    while (v100);
  }

  else
  {

    v105 = MEMORY[0x277D84F90];
  }

  v9 = &v184;
  MEMORY[0x28223BE20](v119);
  sub_22C387180();
  v121 = *(v120 - 256);
  v122 = v194;
  v123 = v195;
  *(v124 - 32) = v121;
  *(v124 - 24) = v123;
  *(v124 - 16) = v122;
  v125 = v201;
  sub_22C792A18(sub_22C50D960, v126, v105);
  v128 = v125;
  if (v125)
  {
  }

  v130 = v127;

  v211 = v130;
  sub_22C3CD560(v200);
  v209 = sub_22C7F4DE0(v211);
  v32 = v131;
  v29 = *(v131 + 16);
  v12 = MEMORY[0x277D84F90];
  v213 = v131;
  if (v29)
  {
    v201 = 0;
    v211 = MEMORY[0x277D84F90];
    v132 = sub_22C372264();
    sub_22C3B63D4(v132, v133, v134);
    v12 = v211;
    v14 = 0;
    v135 = *(type metadata accessor for _PromptToolData(0) - 8);
    sub_22C36BA94();
    v20 = v32 + v136 + 8;
    while (v14 < *(v32 + 16))
    {
      v31 = *(v20 + *(v135 + 72) * v14);
      v211 = v12;
      v138 = *(v12 + 16);
      v137 = *(v12 + 24);
      v9 = (v138 + 1);

      if (v138 >= v137 >> 1)
      {
        sub_22C3B63D4(v137 > 1, v138 + 1, 1);
        v12 = v211;
      }

      ++v14;
      *(v12 + 16) = v9;
      *(v12 + 8 * v138 + 32) = v31;
      v32 = v213;
      if (v29 == v14)
      {
        v121 = v193;
        v128 = v201;
        goto LABEL_55;
      }
    }

    goto LABEL_79;
  }

LABEL_55:
  v139 = v209;

  v140 = sub_22C50BBFC(v139, v32);
  v208 = sub_22C50BF60(v140);
  v141 = v128;

  v142 = sub_22C4AF4A0();
  v143 = MEMORY[0x28223BE20](v142);
  v145 = v194;
  v144 = v195;
  *(&v184 - 4) = v121;
  *(&v184 - 3) = v144;
  *(&v184 - 2) = v145;
  sub_22C566700(v143, &unk_283FAF1C8, v121, v144, sub_22C50D89C, (&v184 - 6));
  v147 = v146;

  v148 = *(v147 + 16);
  if (v148)
  {
    v206 = v12;
    v207 = v128;
    v211 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v148, 0);
    v149 = 32;
    v150 = v211;
    v210 = xmmword_22C919C60;
    do
    {
      v151 = v147;
      v152 = *(v147 + v149);
      v153 = swift_allocObject();
      *(v153 + 16) = v210;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v154 = swift_allocObject();
      *(v154 + 16) = v152;
      *(v153 + 32) = v154;
      sub_22C369AEC();
      v155 = swift_allocObject();
      sub_22C369AEC();
      v156 = swift_allocObject();
      *(v156 + 16) = v153 | 0x8000000000000000;
      *(v155 + 16) = v156;
      v211 = v150;
      v158 = *(v150 + 16);
      v157 = *(v150 + 24);

      if (v158 >= v157 >> 1)
      {
        sub_22C3B63D4(v157 > 1, v158 + 1, 1);
        v150 = v211;
      }

      *(v150 + 16) = v158 + 1;
      *(v150 + 8 * v158 + 32) = v155 | 0x6000000000000000;
      v149 += 8;
      --v148;
      v147 = v151;
    }

    while (v148);

    v32 = v213;
    v12 = v206;
    v141 = v207;
  }

  else
  {

    v150 = MEMORY[0x277D84F90];
  }

  v211 = v150;
  sub_22C3CD124(v12);
  v9 = sub_22C47D738(2570, 0xE200000000000000, v211);

  v12 = MEMORY[0x277D84F90];
  v211 = MEMORY[0x277D84F90];
  sub_22C496A94();
  if (!v141)
  {
    v160 = v159;
    v161 = 0;

    sub_22C36A83C();
    v162 = swift_allocObject();
    v14 = v162;
    v213 = v9;
    if ((v160 & 1) == 0)
    {
      v31 = 0;
      *(v162 + 16) = 0x6F68747970606060;
      *(v162 + 24) = 0xEA00000000000A6ELL;
      sub_22C591324();
      v165 = v164;
      v20 = *(v164 + 16);
      v166 = *(v164 + 24) >> 1;
      v29 = v20 + 1;
      if (v166 > v20)
      {
        goto LABEL_66;
      }

      goto LABEL_81;
    }

    v211 = 0;
    v212 = 0xE000000000000000;
    *(v162 + 16) = sub_22C90A49C();
    *(v14 + 24) = v163;
    goto LABEL_71;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C50D600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a4;
  v14[2] = a5;
  v5 = sub_22C90963C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90941C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolRenderer_v1_0(0);
  sub_22C483378();
  sub_22C374168(v15, v15[3]);
  MEMORY[0x2318B6CE0]();
  (*(v6 + 104))(v8, *MEMORY[0x277D72E08], v5);
  sub_22C4FCD10();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return sub_22C36FF94(v15);
}

uint64_t sub_22C50D820(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C50D8A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C369A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C50D904(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C369A9C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_22C50D978(uint64_t a1@<X8>)
{

  sub_22C3B685C(0, a1 + 1, 1);
}

void sub_22C50D998()
{

  sub_22C591324();
}

uint64_t sub_22C50D9B8()
{
  v1 = sub_22C90399C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C9063DC();
  sub_22C369824();
  v43 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90355C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  sub_22C90394C();
  v21 = (*(v16 + 88))(v20, v14);
  v27 = v21 == *MEMORY[0x277D1EAB8] || v21 == *MEMORY[0x277D1EB38] || v21 == *MEMORY[0x277D1EB28] || v21 == *MEMORY[0x277D1EB48] || v21 == *MEMORY[0x277D1EB00] || v21 == *MEMORY[0x277D1EB18] || v21 == *MEMORY[0x277D1EA80];
  result = v27;
  if (!v27)
  {
    v41 = result;
    v42 = v8;
    sub_22C903F7C();
    (*(v3 + 16))(v7, v0, v1);
    v29 = sub_22C9063CC();
    v30 = sub_22C90AACC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_22C36FB44();
      v38 = v1;
      v32 = v31;
      v40 = swift_slowAlloc();
      v44 = v40;
      *v32 = 136315138;
      v39 = v30;
      sub_22C90394C();
      v33 = sub_22C90A1AC();
      v35 = v34;
      (*(v3 + 8))(v7, v38);
      v36 = sub_22C36F9F4(v33, v35, &v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_22C366000, v29, v39, "Context type unsupported in prompt: %s", v32, 0xCu);
      sub_22C36FF94(v40);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v3 + 8))(v7, v1);
    }

    (*(v43 + 8))(v13, v42);
    (*(v16 + 8))(v20, v14);
    return v41;
  }

  return result;
}

uint64_t sub_22C50DD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v226 = a4;
  v214 = a3;
  v218 = sub_22C901FAC();
  sub_22C369824();
  v212 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3698F8(v8 - v7);
  v225 = sub_22C902D0C();
  sub_22C369824();
  v211 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = sub_22C3698F8(v12 - v11);
  v223 = type metadata accessor for DirectionalTypedValue(v13);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C36D234(v16 - v15);
  v17 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C3698F8(&v209 - v19);
  v240 = sub_22C9093BC();
  sub_22C369824();
  v210 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  sub_22C3698F8(v23 - v22);
  v256 = sub_22C9063DC();
  sub_22C369824();
  v259 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  sub_22C3698D4();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v209 - v29;
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  sub_22C3698F8(v31);
  v32 = sub_22C90355C();
  sub_22C369824();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  ObjectType = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v42 = sub_22C90399C();
  sub_22C369824();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  sub_22C3698D4();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (&v209 - v48);
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  v53 = (&v209 - v52);
  isa = sub_22C9081CC();
  sub_22C369824();
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA64();
  sub_22C36D234(v63);
  v65 = *(v227 + 272);
  v260 = v66 + 16;
  v253 = v34 + 11;
  v248 = v44 + 16;
  v255 = (v259 + 1);
  v247 = v34 + 1;
  v257 = (v66 + 8);
  v254 = v66;
  v216 = (v66 + 32);
  v259 = (v44 + 8);
  v246 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v245 = v42;
  v258 = isa;
  v244 = a1;
  if (v65 == 1)
  {
    v67 = 0;
    v239 = *(a1 + 16);
    LODWORD(v236) = *MEMORY[0x277D1EAB8];
    LODWORD(v235) = *MEMORY[0x277D1EB38];
    LODWORD(v234) = *MEMORY[0x277D1EB28];
    LODWORD(v233) = *MEMORY[0x277D1EB48];
    v232 = *MEMORY[0x277D1EB00];
    v231 = *MEMORY[0x277D1EB18];
    v213 = MEMORY[0x277D84F90];
    LODWORD(v230) = *MEMORY[0x277D1EA80];
    *&v64 = 136315138;
    v229 = v64;
    v228 = v53;
LABEL_4:
    v104 = v219;
    while (v239 != v67)
    {
      ObjectType = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v251 = v67;
      v68 = sub_22C3826F0();
      v69(v68);
      sub_22C9081AC();
      sub_22C36D818();
      sub_22C90394C();
      sub_22C36BA4C();
      v71 = v70(v34, v32);
      if (v71 == v236 || v71 == v235 || v71 == v234 || v71 == v233 || v71 == v232 || v71 == v231 || v71 == v230)
      {
        v91 = v53;
        v92 = v32;
        v93 = v91;
        (*v259)();
        v94 = *v216;
        (*v216)(v215, v250, isa);
        sub_22C37FE04(&v239);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v261[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = sub_22C373310();
          sub_22C3B6170(v96, v97, v98);
          v34 = v261[0];
        }

        v99 = v251;
        v100 = v34;
        isa = v34[2].isa;
        v101 = v34[3].isa;
        v34 = (isa + 1);
        if (isa >= v101 >> 1)
        {
          v102 = sub_22C369AB0(v101);
          sub_22C3B6170(v102, isa + 1, 1);
          v99 = v251;
          v100 = v261[0];
        }

        v67 = (&v99->isa + 1);
        *(v100 + 16) = v34;
        v213 = v100;
        sub_22C383068();
        v94();
        v32 = v92;
        v53 = v93;
        goto LABEL_4;
      }

      sub_22C903F7C();
      sub_22C36BA4C();
      ObjectType = v237;
      v78(v237, v53, v42);
      v34 = sub_22C9063CC();
      v79 = v42;
      v80 = sub_22C90AACC();
      if (sub_22C36FBB4(v80))
      {
        sub_22C36FB44();
        v81 = sub_22C379928();
        v264 = v81;
        *ObjectType = v229;
        sub_22C90394C();
        v82 = sub_22C90A1AC();
        v84 = v83;
        v85 = v32;
        v86 = *v259;
        (*v259)(ObjectType, v79);
        v87 = sub_22C36F9F4(v82, v84, &v264);

        *(ObjectType + 4) = v87;
        _os_log_impl(&dword_22C366000, v34, v80, "Context type unsupported in prompt: %s", ObjectType, 0xCu);
        sub_22C36FF94(v81);
        isa = v258;
        sub_22C3699EC();
        sub_22C372FB0();

        v104 = v219;
        (*v255)(v219, v256);
      }

      else
      {

        v85 = v32;
        v86 = *v259;
        (*v259)(ObjectType, v79);
        (*v255)(v104, v256);
      }

      v42 = v79;
      v88 = v251;
      sub_22C36BA4C();
      v89(v249, v85);
      v90 = sub_22C37FE04(&v257);
      (v86)(v90, v79);
      (*v257)(v250, isa);
      v67 = (&v88->isa + 1);
      v32 = v85;
      v53 = v34;
    }

    sub_22C50F694(v213);
    v139 = v138;

    sub_22C38A944();
  }

  else
  {
    v228 = v49;
    v230 = v30;
    v103 = 0;
    v249 = *(a1 + 16);
    LODWORD(v237) = *MEMORY[0x277D1EAB8];
    LODWORD(v236) = *MEMORY[0x277D1EB38];
    LODWORD(v235) = *MEMORY[0x277D1EB28];
    LODWORD(v234) = *MEMORY[0x277D1EB48];
    LODWORD(v233) = *MEMORY[0x277D1EB00];
    v232 = *MEMORY[0x277D1EB18];
    v215 = MEMORY[0x277D84F90];
    v231 = *MEMORY[0x277D1EA80];
    *&v64 = 136315138;
    v219 = v64;
    v104 = v239;
    *&v229 = ObjectType;
LABEL_34:
    sub_22C38A944();
    while (v249 != v103)
    {
      v53 = *(v254 + 72);
      v250 = v103;
      v105 = sub_22C3826F0();
      v106(v105);
      sub_22C9081AC();
      sub_22C90394C();
      sub_22C36BA4C();
      v108 = v107(ObjectType, v32);
      if (v108 == v237 || v108 == v236 || v108 == v235 || v108 == v234 || v108 == v233 || v108 == v232 || v108 == v231)
      {
        v34 = v32;
        (*v259)(v104, v42);
        v129 = *v216;
        (*v216)(v213, v251, isa);
        v130 = v215;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v261[0] = v130;
        if ((v131 & 1) == 0)
        {
          v132 = sub_22C373310();
          sub_22C3B6170(v132, v133, v134);
          v130 = v261[0];
        }

        isa = *(v130 + 16);
        v135 = *(v130 + 24);
        if (isa >= v135 >> 1)
        {
          v137 = sub_22C369AB0(v135);
          sub_22C3B6170(v137, isa + 1, 1);
          v130 = v261[0];
        }

        v136 = (v250 + 1);
        *(v130 + 16) = isa + 1;
        v215 = v130;
        v103 = v136;
        sub_22C383068();
        v129();
        v32 = v34;
        goto LABEL_34;
      }

      v115 = v230;
      sub_22C903F7C();
      sub_22C36BA4C();
      v116 = v104;
      v104 = v228;
      v117(v228, v116, v42);
      v53 = sub_22C9063CC();
      v118 = sub_22C90AACC();
      if (os_log_type_enabled(v53, v118))
      {
        v119 = sub_22C36FB44();
        v120 = swift_slowAlloc();
        v264 = v120;
        *v119 = v219;
        sub_22C36D818();
        sub_22C90394C();
        v121 = sub_22C90A1AC();
        v42 = v122;
        v123 = sub_22C37BA50();
        (v32)(v123, v245);
        sub_22C36F9F4(v121, v42, &v264);
        sub_22C512138();
        *(v119 + 4) = v121;
        _os_log_impl(&dword_22C366000, v53, v118, "Context type unsupported in prompt: %s", v119, 0xCu);
        sub_22C36FF94(v120);
        isa = v258;
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        v124 = sub_22C37BA50();
        (v32)(v124, v42);
      }

      sub_22C37F230();
      v125(v115);
      v126 = v250;
      sub_22C36BA4C();
      ObjectType = v229;
      v127(v229, v34);
      v128 = sub_22C372274(v263);
      (v32)(v128, v42);
      (*v257)(v251, isa);
      v103 = (v126 + 1);
      sub_22C38A944();
      v32 = v34;
    }

    v139 = v215;
  }

  sub_22C512164();
  v140 = v240;
  sub_22C3701EC();
  if (v141)
  {
    LODWORD(v248) = v214 == 0;
    sub_22C37054C();
    v215 = v139;
    v233 = v143;
    v144 = (v139 + v143);
    v251 = *(v145 + 72);
    v146 = *(v145 + 16);
    v247 = v210 + 4;
    v246 = &v210[2];
    LODWORD(v244) = *MEMORY[0x277D1D7F8];
    v239 = v211 + 13;
    v238 = v211 + 1;
    v237 = &v210[1];
    v249 = MEMORY[0x277D84F90];
    v235 = v212 + 8;
    *&v148 = *(v147 + 32);
    v234 = v148;
    v250 = v146;
    do
    {
      v254 = v142;
      v253 = v144;
      v149 = v258;
      (v146)(v53);
      sub_22C36D818();
      sub_22C9081AC();
      sub_22C90391C();
      (*v259)(v139, v42);
      if (sub_22C370B74(ObjectType, 1, v140) == 1)
      {
        sub_22C36DD28(ObjectType, &qword_27D9BB908, &qword_22C910960);
        sub_22C903F7C();
        (v146)(v221, v53, v149);
        v139 = sub_22C9063CC();
        v150 = sub_22C90AACC();
        if (sub_22C36FBB4(v150))
        {
          sub_22C36FB44();
          v236 = sub_22C379928();
          sub_22C512118(v236);
          sub_22C9068FC();
          sub_22C5117E8();
          sub_22C372274(&v245);
          v151 = sub_22C90B47C();
          v42 = v152;
          sub_22C36BA4C();
          v153(v140, v104);
          v104 = *v257;
          v154 = sub_22C512158();
          (v104)(v154);
          sub_22C36F9F4(v151, v42, v261);
          sub_22C512138();
          *(ObjectType + 4) = v151;
          _os_log_impl(&dword_22C366000, v139, v150, "TypedValue for contextual entity with statementID: %s is nil.", ObjectType, 0xCu);
          sub_22C36FF94(v236);
          sub_22C3699EC();
          sub_22C372FB0();

          sub_22C37F230();
          v155(v243);
          (v104)(v53, v149);
          sub_22C3701EC();
          v140 = v240;
          sub_22C512164();
        }

        else
        {

          v139 = *v257;
          v174 = sub_22C512158();
          (v139)(v174);
          sub_22C37F230();
          v175(v104);
          (v139)(v53, v149);
        }

        v146 = v250;
      }

      else
      {
        sub_22C36BA4C();
        v156 = v242;
        v157(v242, ObjectType, v140);
        v158 = *(v227 + 168);
        ObjectType = swift_getObjectType();
        sub_22C36BA4C();
        v53 = v222;
        v159(v222, v156, v140);
        swift_storeEnumTagMultiPayload();
        v160 = *(v226 + 32);
        sub_22C36BA4C();
        v104 = v224;
        v140 = v225;
        v161(v224, v244, v225);
        (*(v158 + 8))(v261, v53, v248, v160, v104, ObjectType, v158);
        sub_22C36BA4C();
        v162(v104, v140);
        sub_22C5120C0(v53, type metadata accessor for DirectionalTypedValue);
        if (v262)
        {
          v163 = v217;
          sub_22C903F7C();
          sub_22C372274(v241);
          sub_22C38A944();
          v164 = v258;
          v146 = v250;
          v250();
          v139 = sub_22C9063CC();
          v165 = sub_22C90AADC();
          if (sub_22C36FBB4(v165))
          {
            sub_22C36FB44();
            v53 = sub_22C379928();
            sub_22C512118(v53);
            sub_22C9068FC();
            sub_22C5117E8();
            v166 = v104;
            sub_22C372274(&v245);
            v167 = sub_22C90B47C();
            v42 = v168;
            sub_22C36BA4C();
            v169(v140, v104);
            v104 = v257;
            v140 = *v257;
            (*v257)(v166, v164);
            sub_22C36F9F4(v167, v42, v261);
            sub_22C512138();
            *(ObjectType + 4) = v167;
            _os_log_impl(&dword_22C366000, v139, v165, "Unable to render the contextual entity due to a rendering failure. StatementID: %s", ObjectType, 0xCu);
            sub_22C36FF94(v53);
            sub_22C38A944();
            sub_22C3699EC();
            sub_22C372FB0();

            sub_22C37F230();
            v170(v217);
            v171 = sub_22C377D90();
            v172(v171);
            v173 = sub_22C512158();
            (v140)(v173);
            v146 = v250;
          }

          else
          {

            ObjectType = v257;
            v139 = *v257;
            (*v257)(v104, v164);
            sub_22C37F230();
            v185(v163);
            v186 = sub_22C377D90();
            v187(v186);
            v188 = sub_22C512158();
            (v139)(v188);
          }

          sub_22C512164();
          sub_22C3701EC();
        }

        else
        {
          v176 = v261[0];
          v177 = v261[1];
          ObjectType = v261[2];
          v178 = v261[3];
          v179 = v261[4];
          v146 = v250;
          (v250)(v220, v252, v258);
          v180 = v249;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C373310();
            sub_22C59238C();
            v180 = v189;
          }

          v104 = *(v180 + 16);
          v181 = *(v180 + 24);
          if (v104 >= v181 >> 1)
          {
            sub_22C369AB0(v181);
            sub_22C59238C();
            v249 = v190;
          }

          else
          {
            v249 = v180;
          }

          sub_22C456CE4(v176, v177, ObjectType, v178, v179, 0);
          v182 = sub_22C377D90();
          v183(v182);
          v139 = v258;
          v53 = v252;
          (*v257)(v252, v258);
          *(v249 + 16) = &v104->isa + 1;
          sub_22C36BA4C();
          v184();
          sub_22C512164();
          sub_22C3701EC();
          v42 = v245;
        }
      }

      v144 = (v251 + v253);
      v142 = v254 - 1;
    }

    while (v254 != 1);

    v192 = v248;
    v193 = v249;
  }

  else
  {
    v192 = v214 == 0;

    v193 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v191);
  *(&v209 - 4) = v227;
  *(&v209 - 24) = v192;
  v194 = v226;
  *(&v209 - 2) = v226;
  v195 = sub_22C792DEC(sub_22C5117C4, (&v209 - 6), v193);

  if (*(v195 + 16))
  {
    sub_22C374168((v194 + 40), *(v194 + 64));
    sub_22C47D738(8202, 0xE200000000000000, v195);

    v196 = sub_22C512170(5);

    sub_22C374168((v194 + 40), *(v194 + 64));
    sub_22C36A83C();
    v197 = swift_allocObject();
    strcpy(v261, "get_context()");
    HIWORD(v261[1]) = -4864;
    *(v197 + 16) = sub_22C90A49C();
    *(v197 + 24) = v198;
    v199 = sub_22C512170(1);

    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_22C90F800;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = v199;
    *(inited + 40) = v196;

    v202 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v203 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v204 = swift_allocObject();
    *(v204 + 16) = v202;
    *(v203 + 16) = v204;
    v205 = v203 | 0x6000000000000000;
    sub_22C36A83C();
    v206 = swift_allocObject();
    *(v206 + 16) = v192;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v207 = swift_allocObject();
    *(v207 + 16) = v205;
    *(v206 + 24) = v207;
    *(v200 + 32) = v206 | 0x8000000000000000;
    *(v200 + 40) = 0;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v200;
}

void sub_22C50F694(uint64_t a1)
{
  v183 = sub_22C3A5908(&qword_27D9BC060, &unk_22C911E50);
  v2 = sub_22C369914(v183);
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v3);
  sub_22C36BA64();
  sub_22C36D234(v4);
  v190 = sub_22C3A5908(&qword_27D9BD970, &qword_22C919DA8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C3698F8(v10);
  v201 = sub_22C90399C();
  sub_22C369824();
  v199 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C36D234(v14);
  v15 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  v19 = v162 - v18;
  v205 = sub_22C9081CC();
  sub_22C369824();
  v203 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v204 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v198 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C36D234(v28);
  v29 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v196 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8);
  sub_22C36D234(v162 - v30);
  v173 = sub_22C3A5908(&qword_27D9BD980, &qword_22C919DC0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C36D234(v33);
  v34 = sub_22C3A5908(&qword_27D9BD988, &qword_22C919DC8);
  v35 = sub_22C369914(v34);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v200 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v195 = v38;
  v39 = sub_22C9063DC();
  sub_22C369824();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22C369ABC();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = v162 - v47;
  sub_22C903F7C();
  v49 = a1;

  v50 = sub_22C9063CC();
  v51 = sub_22C90AACC();
  v52 = os_log_type_enabled(v50, v51);
  v168 = v39;
  v167 = v41;
  v166 = v45;
  v192 = v19;
  if (v52)
  {
    swift_slowAlloc();
    v53 = sub_22C379928();
    v207 = v53;
    *v45 = 136315394;
    *(v45 + 4) = sub_22C36FCE8(":identifierResolvedAST:)");
    *(v45 + 12) = 2048;
    *(v45 + 14) = *(v49 + 16);

    _os_log_impl(&dword_22C366000, v50, v51, "%s Before size=%ld", v45, 0x16u);
    sub_22C36FF94(v53);
    sub_22C3699EC();
    sub_22C372FB0();
  }

  else
  {
  }

  v165 = *(v41 + 8);
  v165(v48, v39);

  sub_22C511840(v54);
  v164 = v55;
  v57 = v56;
  v59 = v58;
  sub_22C406550(MEMORY[0x277D84F90]);
  v184 = v60;
  v61 = 0;
  v207 = v62;
  v208 = v63;
  v171 = v59 + 32;
  v202 = v203 + 16;
  v174 = v59;
  v194 = *(v59 + 16);
  v163 = (v199 + 1);
  v199 = (v203 + 8);
  v197 = (v203 + 32);
  v193 = v57;
  v64 = v176;
  v65 = v175;
  v66 = v200;
  while (2)
  {
    v67 = v195;
LABEL_6:
    if (v61 >= v194)
    {
      v76 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
      sub_22C36C640(v66, 1, 1, v76);
    }

    else
    {
      if ((v61 & 0x8000000000000000) != 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v61 >= *(v57 + 16))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v68 = v173;
      v69 = *(v173 + 48);
      sub_22C37054C();
      sub_22C3DB138(v57 + v70 + *(v71 + 72) * v61, v65, &qword_27D9BB0C0, &qword_22C90D960);
      if (v61 >= *(v174 + 16))
      {
LABEL_54:
        __break(1u);
        return;
      }

      *(v65 + v69) = *(v171 + 8 * v61);
      v72 = v172;
      sub_22C3DB08C(v65, v172, &qword_27D9BD980, &qword_22C919DC0);
      v73 = *(v68 + 48);
      v74 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
      v75 = *(v74 + 48);
      ++v61;
      sub_22C3DB08C(v72, v200, &qword_27D9BB0C0, &qword_22C90D960);
      *&v200[v75] = *(v72 + v73);
      v66 = v200;
      v65 = v175;
      v64 = v176;
      sub_22C36C640(v200, 0, 1, v74);
    }

    sub_22C3DB08C(v66, v67, &qword_27D9BD988, &qword_22C919DC8);
    v77 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
    if (sub_22C370B74(v67, 1, v77) != 1)
    {
      v78 = *(v77 + 48);
      sub_22C3DB08C(v67, v64, &qword_27D9BB0C0, &qword_22C90D960);
      v79 = *(v67 + v78);
      v80 = *(v79 + 16);
      if (!v80)
      {

        sub_22C36DD28(v64, &qword_27D9BB0C0, &qword_22C90D960);
        v57 = v193;
        continue;
      }

      sub_22C37054C();
      v162[0] = v81;
      v83 = *(v82 + 16);
      v186 = (v79 + v81);
      v191 = v83;
      (v83)(v198);
      v84 = 1;
      v85 = v192;
      v86 = v163;
      while (1)
      {
        if (v80 == v84)
        {
          v95 = *v197;
          v96 = sub_22C37FE04(&v194);
          v97 = v205;
          v95(v96);
          v98 = v169;
          (v95)(v169, v64, v97);
          sub_22C405B44(v176);
          v191(v170, v98, v97);
          sub_22C37FE04(&v209);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v206 = v64;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = sub_22C373310();
            sub_22C3B6170(v100, v101, v102);
            v64 = v206;
          }

          v67 = v195;
          v104 = *(v64 + 16);
          v103 = *(v64 + 24);
          if (v104 >= v103 >> 1)
          {
            v109 = sub_22C369AB0(v103);
            sub_22C3B6170(v109, v104 + 1, 1);
          }

          v105 = v203;
          v106 = v205;
          (*(v203 + 8))(v169, v205);
          v107 = sub_22C37FE04(&v208);
          sub_22C36DD28(v107, &qword_27D9BB0C0, &qword_22C90D960);
          v108 = v206;
          *(v206 + 16) = v104 + 1;
          v184 = v108;
          (v95)(v108 + v162[0] + *(v105 + 72) * v104, v170, v106);
          v57 = v193;
          v65 = v175;
          v66 = v200;
          goto LABEL_6;
        }

        if (v84 >= *(v79 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v191(v204, v186 + *(v203 + 72) * v84, v205);
        sub_22C36D818();
        sub_22C9081AC();
        sub_22C90398C();
        v87 = *v86;
        (*v86)(v64, v201);
        v88 = sub_22C90352C();
        if (sub_22C370B74(v85, 1, v88) == 1)
        {
          sub_22C36DD28(v85, &qword_27D9BD978, &unk_22C919DB0);
          v89 = 0.0;
        }

        else
        {
          sub_22C90351C();
          v89 = v90;
          (*(*(v88 - 8) + 8))(v85, v88);
        }

        sub_22C36D818();
        sub_22C9081AC();
        v91 = v187;
        sub_22C90398C();
        v87(v64, v201);
        if (sub_22C370B74(v91, 1, v88) == 1)
        {
          sub_22C36DD28(v91, &qword_27D9BD978, &unk_22C919DB0);
          if (v89 >= 0.0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_22C90351C();
          v93 = v92;
          (*(*(v88 - 8) + 8))(v91, v88);
          if (v89 >= v93)
          {
LABEL_22:
            (*v199)(v204, v205);
            goto LABEL_25;
          }
        }

        v64 = v198;
        v94 = v205;
        (*v199)(v198, v205);
        (*v197)(v64, v204, v94);
LABEL_25:
        v85 = v192;
        ++v84;
      }
    }

    break;
  }

  v110 = v208;
  v186 = v207;
  sub_22C406550(MEMORY[0x277D84F90]);
  v112 = v111;
  v207 = v113;
  v208 = v114;
  v192 = *(v184 + 16);
  v195 = v110;
  if (v192)
  {
    v194 = v111;
    v115 = 0;
    v191 = (v110 + ((*(v196 + 80) + 32) & ~*(v196 + 80)));
    v116 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v189 = *(v190 + 48);
    v187 = v116;
    v188 = v184 + v116;
    v117 = &qword_27D9BB0C0;
    v118 = &qword_22C90D960;
    v119 = v183;
    v120 = v184;
    while (v115 < *(v110 + 16))
    {
      v121 = *(v119 + 48);
      v122 = v182;
      sub_22C3DB138(v191 + *(v196 + 72) * v115, v182, v117, v118);
      if (v115 >= *(v120 + 16))
      {
        goto LABEL_51;
      }

      v123 = *(v203 + 72);
      v204 = v115;
      v198 = v123;
      v201 = *(v203 + 16);
      v124 = v203;
      v125 = v205;
      v201(v122 + v121, v188 + v123 * v115, v205);
      v126 = v122;
      v127 = v181;
      sub_22C3DB08C(v126, v181, &qword_27D9BC060, &unk_22C911E50);
      v128 = *(v119 + 48);
      v129 = v177;
      sub_22C3DB08C(v127, v177, v117, v118);
      v130 = *(v124 + 32);
      v131 = v189;
      v130(v129 + v189, v127 + v128, v125);
      v132 = v190;
      v133 = *(v190 + 48);
      v134 = v118;
      v135 = v117;
      v136 = v185;
      sub_22C3DB08C(v129, v185, v135, v134);
      v200 = v130;
      v130(v136 + v133, v129 + v131, v125);
      v137 = v178;
      sub_22C3DB138(v136, v178, &qword_27D9BD970, &qword_22C919DA8);
      v138 = *(v132 + 48);
      v139 = v179;
      sub_22C3DB138(v137, v179, v135, v134);
      v201(v139 + *(v132 + 48), v137 + v138, v125);
      v140 = sub_22C90952C();
      LODWORD(v130) = sub_22C370B74(v139, 1, v140);
      sub_22C36DD28(v139, &qword_27D9BD970, &qword_22C919DA8);
      (*(v203 + 8))(v137 + v138, v125);
      v141 = v135;
      v142 = v135;
      v118 = v134;
      sub_22C36DD28(v137, v142, v134);
      if (v130 == 1)
      {
        sub_22C36DD28(v136, &qword_27D9BD970, &qword_22C919DA8);
        v110 = v195;
        v117 = v141;
        v143 = v204;
      }

      else
      {
        sub_22C405B44(v136);
        sub_22C3DB138(v136, v180, &qword_27D9BD970, &qword_22C919DA8);
        v144 = v194;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v206 = v144;
        if ((v145 & 1) == 0)
        {
          v146 = sub_22C373310();
          sub_22C3B6170(v146, v147, v148);
          v144 = v206;
        }

        v117 = v141;
        v143 = v204;
        v149 = v198;
        v151 = *(v144 + 16);
        v150 = *(v144 + 24);
        if (v151 >= v150 >> 1)
        {
          v155 = sub_22C369AB0(v150);
          sub_22C3B6170(v155, v151 + 1, 1);
          v144 = v206;
        }

        v152 = *(v190 + 48);
        sub_22C36DD28(v185, &qword_27D9BD970, &qword_22C919DA8);
        *(v144 + 16) = v151 + 1;
        v194 = v144;
        v153 = v144 + v187 + v151 * v149;
        v154 = v180;
        (v200)(v153, v180 + v152, v205);
        sub_22C36DD28(v154, v141, v118);
        v110 = v195;
      }

      v115 = v143 + 1;
      v119 = v183;
      v120 = v184;
      if (v192 == v115)
      {
        v112 = v194;
        goto LABEL_45;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_45:

  v156 = v166;
  sub_22C903F7C();

  v157 = sub_22C9063CC();
  v158 = sub_22C90AACC();
  v159 = sub_22C36FBB4(v158);
  v160 = v168;
  if (v159)
  {
    swift_slowAlloc();
    v161 = sub_22C379928();
    v207 = v161;
    *v110 = 136315394;
    *(v110 + 4) = sub_22C36FCE8(":identifierResolvedAST:)");
    *(v110 + 12) = 2048;
    *(v110 + 14) = *(v112 + 16);

    _os_log_impl(&dword_22C366000, v157, v158, "%s After size=%ld", v110, 0x16u);
    sub_22C36FF94(v161);
    sub_22C3699EC();
    sub_22C372FB0();
  }

  else
  {
  }

  v165(v156, v160);
}

uint64_t sub_22C5108B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  v97 = a2;
  v98 = a4;
  LODWORD(v99) = a3;
  v107 = a5;
  v101 = sub_22C901FAC();
  v91 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v90 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v87);
  v88 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22C902D0C();
  v96 = *(v100 - 1);
  MEMORY[0x28223BE20](v100);
  v95 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DirectionalTypedValue(0);
  MEMORY[0x28223BE20](v92);
  v94 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9081CC();
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v86 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &ObjectType - v13;
  v14 = sub_22C9063DC();
  v104 = *(v14 - 8);
  v105 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v89 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v106 = &ObjectType - v17;
  v18 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &ObjectType - v19;
  v21 = sub_22C90399C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &ObjectType - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C9093BC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &ObjectType - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9081AC();
  sub_22C90391C();
  (*(v22 + 8))(v24, v21);
  v29 = v25;
  if (sub_22C370B74(v20, 1, v25) == 1)
  {
    sub_22C36DD28(v20, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F7C();
    v30 = v102;
    v31 = v93;
    v32 = v103;
    (*(v102 + 16))(v93, a1, v103);
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v108[0] = v100;
      *v35 = 136315138;
      v36 = v90;
      sub_22C9068FC();
      sub_22C5117E8();
      v37 = v101;
      v99 = sub_22C90B47C();
      v38 = v31;
      v40 = v39;
      (*(v91 + 8))(v36, v37);
      (*(v30 + 8))(v38, v32);
      v41 = sub_22C36F9F4(v99, v40, v108);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_22C366000, v33, v34, "Ommitting empty context entity with statementID: %s", v35, 0xCu);
      v42 = v100;
      sub_22C36FF94(v100);
      MEMORY[0x2318B9880](v42, -1, -1);
      MEMORY[0x2318B9880](v35, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

    result = (*(v104 + 8))(v106, v105);
    goto LABEL_9;
  }

  v93 = a1;
  (*(v26 + 32))(v28, v20, v25);
  v43 = *(v97 + 168);
  ObjectType = swift_getObjectType();
  v97 = v26;
  v44 = v94;
  (*(v26 + 16))(v94, v28, v29);
  swift_storeEnumTagMultiPayload();
  v106 = v29;
  v45 = *(v98 + 4);
  v46 = *MEMORY[0x277D1D7F8];
  v47 = v95;
  v48 = v96;
  v49 = v100;
  v98 = *(v96 + 104);
  (v98)(v95, v46, v100);
  (*(v43 + 8))(v108, v44, v99 & 1, v45, v47, ObjectType, v43);
  (*(v48 + 8))(v47, v49);
  sub_22C5120C0(v44, type metadata accessor for DirectionalTypedValue);
  if (v109 == 1)
  {
    v50 = v106;
    v51 = v89;
    sub_22C903F7C();
    v52 = v102;
    v53 = v103;
    v54 = v86;
    (*(v102 + 16))(v86, v93, v103);
    v55 = sub_22C9063CC();
    v56 = sub_22C90AADC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v98 = v57;
      v58 = swift_slowAlloc();
      v99 = v28;
      v100 = v58;
      v108[0] = v58;
      *v57 = 136315138;
      v59 = v90;
      sub_22C9068FC();
      sub_22C5117E8();
      v60 = v54;
      v61 = v101;
      v62 = sub_22C90B47C();
      v64 = v63;
      (*(v91 + 8))(v59, v61);
      (*(v52 + 8))(v60, v53);
      v65 = sub_22C36F9F4(v62, v64, v108);

      v66 = v98;
      *(v98 + 1) = v65;
      v67 = v66;
      _os_log_impl(&dword_22C366000, v55, v56, "Unable to produce a rendering for contextual entity with statementID: %s", v66, 0xCu);
      v68 = v100;
      sub_22C36FF94(v100);
      MEMORY[0x2318B9880](v68, -1, -1);
      MEMORY[0x2318B9880](v67, -1, -1);

      (*(v104 + 8))(v89, v105);
      result = (*(v97 + 8))(v99, v106);
    }

    else
    {

      (*(v52 + 8))(v54, v53);
      (*(v104 + 8))(v51, v105);
      result = (*(v97 + 8))(v28, v50);
    }

LABEL_9:
    v70 = 0xF000000000000007;
LABEL_12:
    *v107 = v70;
    return result;
  }

  v99 = v28;
  v71 = v108[0];
  v104 = v108[2];
  v105 = v108[1];
  v103 = v108[3];
  v72 = v108[4];
  v73 = v88;
  sub_22C36C640(v88, 2, 3, v49);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v74 = swift_allocBox();

  sub_22C9068FC();
  v75 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v73 + v75) = v74;
  (v98)(v73 + v75, *MEMORY[0x277D1D798], v49);
  swift_storeEnumTagMultiPayload();
  v76 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v77 = swift_allocBox();
  v79 = v78;
  sub_22C45769C(v73, v78);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v80 = swift_allocBox();
  sub_22C486784();
  v81 = v110;
  v82 = sub_22C511458(v80 | 0x2000000000000000, v71);
  if (!v81)
  {
    v83 = v82;

    v84 = *(v76 + 48);

    sub_22C456CE4(v71, v105, v104, v103, v72, 0);
    sub_22C5120C0(v73, type metadata accessor for PromptTreeIdentifier);
    (*(v97 + 8))(v99, v106);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    result = swift_allocObject();
    *(result + 16) = v83;
    *(v79 + v84) = result;
    v70 = v77 | 0x4000000000000000;
    goto LABEL_12;
  }

  sub_22C5120C0(v79, type metadata accessor for PromptTreeIdentifier);
  result = swift_deallocBox();
  __break(1u);
  return result;
}

uint64_t sub_22C511458(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 2112800;
  *(v11 + 24) = 0xE300000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C5116EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
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

uint64_t sub_22C51172C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22C5117E8()
{
  result = qword_27D9BAA48;
  if (!qword_27D9BAA48)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA48);
  }

  return result;
}

void sub_22C511840(uint64_t a1)
{
  v71 = sub_22C90952C();
  v2 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  v9 = sub_22C90399C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v74 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v84 = sub_22C9081CC();
  v18 = MEMORY[0x28223BE20](v84);
  v69 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v83 = &v60 - v22;
  v23 = 0;
  v85 = 0;
  v86 = MEMORY[0x277D84F90];
  v81 = v24 + 16;
  v62 = (v2 + 16);
  v61 = (v2 + 8);
  v75 = *(a1 + 16);
  v76 = v17;
  v72 = (v10 + 8);
  v73 = v24;
  v66 = (v24 + 8);
  v67 = (v24 + 32);
  v82 = MEMORY[0x277D84F90];
  for (i = a1; ; a1 = i)
  {
    if (v75 == v23)
    {

      return;
    }

    if (v23 >= *(a1 + 16))
    {
      break;
    }

    v25 = *(v73 + 72);
    v78 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v79 = v23;
    v77 = v25;
    v80 = *(v73 + 16);
    v80(v83, a1 + v78 + v25 * v23, v84);
    sub_22C9081AC();
    sub_22C90391C();
    v26 = sub_22C9093BC();
    if (sub_22C370B74(v8, 1, v26) == 1)
    {
      v27 = v70;
      sub_22C36C640(v70, 1, 1, v71);
    }

    else
    {
      v28 = v8;
      v29 = v12;
      v30 = v8;
      v31 = v63;
      sub_22C3DB138(v28, v63, &qword_27D9BB908, &qword_22C910960);
      v32 = v64;
      sub_22C90935C();
      v27 = v70;
      v33 = v71;
      (*v62)(v70, v32, v71);
      sub_22C36C640(v27, 0, 1, v33);
      v17 = v76;
      (*v61)(v32, v33);
      v34 = v31;
      v8 = v30;
      v12 = v29;
      (*(*(v26 - 8) + 8))(v34, v26);
    }

    sub_22C36DD28(v8, &qword_27D9BB908, &qword_22C910960);
    (*v72)(v12, v9);
    sub_22C3DB08C(v27, v17, &qword_27D9BB0C0, &qword_22C90D960);
    if (v85)
    {

      sub_22C7DB87C();
      v36 = v35;
      v38 = v37;

      if (v38)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_22C7D9774();
      if (v40)
      {
LABEL_11:
        sub_22C7D4D7C();
        v41 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B6D48(0, *(v41 + 16) + 1, 1);
          v41 = v87;
        }

        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_22C3B6D48(v43 > 1, v44 + 1, 1);
          v41 = v87;
        }

        *(v41 + 16) = v44 + 1;
        v45 = v41 + 32;
        *(v41 + 32 + 8 * v44) = MEMORY[0x277D84F90];
        v80(v69, v83, v84);
        v46 = *(v41 + 32 + 8 * v44);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v41 + 32 + 8 * v44) = v46;
        v82 = v41;
        if ((v47 & 1) == 0)
        {

          sub_22C59238C();
          *(v45 + 8 * v44) = v56;

          v46 = *(v45 + 8 * v44);
        }

        v48 = *(v46 + 16);
        v49 = v48 + 1;
        if (v48 >= *(v46 + 24) >> 1)
        {
          sub_22C59238C();
          v46 = v57;
          *(v45 + 8 * v44) = v57;
        }

        v50 = v69;
        goto LABEL_30;
      }

      v36 = v39;
    }

    v51 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C270();
      v51 = v52;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v36 >= *(v51 + 16))
    {
      goto LABEL_34;
    }

    v53 = v51 + 32;
    v80(v65, v83, v84);
    v46 = *(v51 + 32 + 8 * v36);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 32 + 8 * v36) = v46;
    v82 = v51;
    if ((v54 & 1) == 0)
    {

      sub_22C59238C();
      *(v53 + 8 * v36) = v58;

      v46 = *(v53 + 8 * v36);
    }

    v48 = *(v46 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v46 + 24) >> 1)
    {
      sub_22C59238C();
      v46 = v59;
      *(v53 + 8 * v36) = v59;
    }

    v50 = v65;
LABEL_30:
    *(v46 + 16) = v49;
    v55 = v84;
    (*v67)(v46 + v78 + v48 * v77, v50, v84);
    v17 = v76;
    sub_22C36DD28(v76, &qword_27D9BB0C0, &qword_22C90D960);
    (*v66)(v83, v55);
    v23 = v79 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C5120C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 sub_22C512118(uint64_t a1)
{
  *(v2 - 200) = a1;
  result = *(v2 - 432);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_22C512138()
{
}

uint64_t sub_22C512170(char a1)
{

  return sub_22C457454(a1, v3, v1, v2);
}

uint64_t sub_22C5121E8(uint64_t a1)
{
  result = sub_22C457168(319, qword_281430CF8, &protocol descriptor for ToolDefinitionPromptRendering);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430538, &protocol descriptor for AssistantSchemaIdentifierRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281431C28, &protocol descriptor for EntitySetterPromptRendering);
      if (v4 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_281432550, &protocol descriptor for UIControlPromptRendering);
        if (v5 <= 0x3F)
        {
          result = sub_22C457168(319, qword_2814328F8, &protocol descriptor for SystemProtocolRendering);
          if (v6 <= 0x3F)
          {
            result = sub_22C908AEC();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C51234C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_22C51238C(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_22C512414()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  sub_22C908AEC();
  v3 = sub_22C36ECCC(*(v0 + 36));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C51248C()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C908AEC();
    v5 = sub_22C36ECCC(*(v4 + 36));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

void sub_22C51251C(uint64_t a1)
{
  sub_22C457168(319, &qword_281430160, &protocol descriptor for EnumerationDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, &qword_281430018, &protocol descriptor for PrimitiveTypeIdentifierPromptRendering);
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, &qword_281433340, &protocol descriptor for UTTypePromptRendering);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
        if (v4 <= 0x3F)
        {
          sub_22C512640(319);
          if (v5 <= 0x3F)
          {
            sub_22C908AEC();
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

void sub_22C512640(uint64_t a1)
{
  if (!qword_281431C20)
  {
    sub_22C3AC1A0(&qword_27D9BD998, &unk_22C919FD0);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281431C20);
    }
  }
}

uint64_t sub_22C5126EC(uint64_t a1)
{
  result = sub_22C457168(319, &qword_27D9BD9B0, &protocol descriptor for TypeIdentifierPromptRendering);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_27D9BD9B8, &protocol descriptor for CLPlacemarkPromptRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_27D9BD9C0, &protocol descriptor for INPersonPromptRendering);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FullPlannerPreferences(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C512848()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  sub_22C908AEC();
  v3 = sub_22C36ECCC(*(v0 + 24));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C5128C0()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C908AEC();
    v5 = sub_22C36ECCC(*(v4 + 24));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C512964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  result = sub_22C457168(319, &qword_281430170, &protocol descriptor for DynamicTypeIdentifierPromptRendering);
  if (v8 <= 0x3F)
  {
    result = sub_22C457168(319, a4, a5);
    if (v9 <= 0x3F)
    {
      result = sub_22C908AEC();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C512A28(void (*a1)(uint64_t *)@<X0>, _OWORD *a2@<X8>)
{
  if (v2[5])
  {
    v3 = *(v2 + 1);
    *a2 = *v2;
    a2[1] = v3;
    *(a2 + 25) = *(v2 + 25);
  }

  else
  {
    v6 = v2[3];
    v5 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v12 = *v2;
    v13 = v8;
    v14 = v7;
    v15 = v6;
    v16 = v5;

    sub_22C456C94(v8, v7, v6);
    a1(&v12);
    v9 = v13;
    v10 = v14;
    v11 = v15;

    sub_22C456D48(v9, v10, v11);
  }
}

uint64_t sub_22C512B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v114 = a2;
  v7 = sub_22C9099FC();
  sub_22C369824();
  v111 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C9037DC();
  v14 = sub_22C36A7A4(v13, &v134);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  sub_22C3698F8(v19);
  v20 = sub_22C908EAC();
  v21 = sub_22C36A7A4(v20, &v132);
  v116 = v22;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  v26 = &v105 - v25;
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v30 = (v29 - v28);
  sub_22C383080();
  sub_22C51E114(a1, v30, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v30;
    v33 = v4[23];
    v34 = v4[24];
    sub_22C3766E0(v4 + 20, v33);
    (*(v34 + 8))(v32, v118, v33, v34);
  }

  v105 = a4;
  v107 = v16;
  v36 = sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
  sub_22C51E39C(*(v36 + 48));
  sub_22C9036EC();
  v37 = sub_22C372158();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x277D1ECE0])
  {
    v40 = sub_22C51E260();
    v41(v40);
    sub_22C370208();
    v42 = sub_22C37A06C();
    v43 = v115;
    v44(v42);
    v45 = sub_22C51E33C();
    sub_22C51E2B8(v45, &v129);
    *&v123[0] = MEMORY[0x277D84F90];
    sub_22C377480();
    sub_22C51E1E4(v46, v47, MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3766F8(&qword_27D9BB830);
    v48 = v117;
    v49 = v113;
    sub_22C90AE4C();
    sub_22C481D88(v26, v114, &v124, v118, v49, v7, v112);
    sub_22C383CD8();
    v50 = sub_22C36FC2C();
    v7(v50);
    (*(a4 + 8))(v26, v43);
    v51 = v30 + v106;
    v52 = v48;
    return (v7)(v51, v52);
  }

  v53 = v116;
  if (v39 == *MEMORY[0x277D1ECE8])
  {
    v54 = sub_22C51E260();
    v55(v54);
    sub_22C3701F8();
    v56(v12, v30, v7);
    sub_22C3766E0(v4 + 5, v4[8]);
    v57 = sub_22C51E2E4();
    v58(v57);
    v59 = sub_22C371530();
    v60(v59);
    sub_22C36FB04();
    v61 = sub_22C51E308();
    return v62(v61);
  }

  else if (v39 == *MEMORY[0x277D1ECD8])
  {
    v63 = sub_22C51E260();
    v64(v63);
    v65 = v110;
    (*(v53 + 32))(v110, v30, v115);
    v66 = v107;
    sub_22C51E3FC();
    v67 = v30 + v106;
    v68 = v117;
    v69(v112, v67, v117);
    v70 = sub_22C3766E0(v4 + 10, v4[13]);
    sub_22C378AB0(v70, &v128);
    v111 = v131;
    v113 = v130;
    v109 = sub_22C374168(&v128, v130);
    v71 = v4[3];
    v72 = v4[4];
    v73 = sub_22C372FA4();
    sub_22C3766E0(v73, v74);
    v75 = v118;
    v76 = v133;
    (*(v72 + 32))(&v124, v65, v118, v71, v72);
    if (v76)
    {
      (*(v66 + 8))(v112, v68);
      v77 = sub_22C37BD98();
      v78(v77);
    }

    else
    {
      v123[0] = v124;
      v123[1] = v125;
      v123[2] = v126;
      v123[3] = v127;
      v133 = 0;
      v96 = v124;
      v97 = v125;
      v98 = v126;
      v99 = BYTE8(v126);
      v100 = sub_22C372FA4();
      sub_22C456C30(v100, v101, v97, *(&v97 + 1), v98, v99);
      sub_22C3E022C(v123);
      v119 = v96;
      v120 = v97;
      v121 = v98;
      v122 = v99;
      v102 = v112;
      sub_22C481D88(v65, v114, &v119, v75, v112, v113, v111);
      sub_22C36FB04();
      v103(v102, v117);
      sub_22C36FB04();
      v104(v65, v115);
      sub_22C51E1CC(v119, *(&v119 + 1), v120, *(&v120 + 1), v121, v122);
    }

    return sub_22C36FF94(&v128);
  }

  else
  {
    v7 = v115;
    if (v39 == *MEMORY[0x277D1ECD0])
    {
      v79 = sub_22C51E260();
      v80(v79);
      v81 = v108;
      (*(v53 + 32))(v108, v30, v7);
      v82 = sub_22C51E33C();
      sub_22C51E2B8(v82, &v131);
      *&v123[0] = MEMORY[0x277D84F90];
      sub_22C377480();
      sub_22C51E1E4(v83, v84, MEMORY[0x277D1ED78]);
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      sub_22C3766F8(&qword_27D9BB830);
      v85 = v117;
      sub_22C90AE4C();
      v86 = sub_22C51E2E4();
      v87(v86);
      sub_22C383CD8();
      v88 = sub_22C51E290();
      v7(v88);
      (*(v53 + 8))(v81, v115);
      v51 = v30 + v106;
      v52 = v85;
      return (v7)(v51, v52);
    }

    if (v39 == *MEMORY[0x277D1ECF8])
    {
      v89 = sub_22C372158();
      v90(v89);
      type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
      v91 = MEMORY[0x277D84F90];
      v92 = sub_22C909F0C();
      v93 = v105;
      *v105 = 0u;
      v93[1] = 0u;
      *(v93 + 4) = 0;
      *(v93 + 40) = 1;
      *(v93 + 6) = v92;
      *(v93 + 7) = v91;
      sub_22C36FB04();
      v94 = sub_22C51E308();
      return v95(v94);
    }

    else
    {
      result = sub_22C90B4EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C513518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v92 = a1;
  sub_22C90384C();
  sub_22C369824();
  v85 = v6;
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v87 = v8 - v7;
  sub_22C9099FC();
  sub_22C369824();
  v88 = v10;
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C908EAC();
  sub_22C369824();
  v90 = v15;
  v91 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  v23 = type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  sub_22C383080();
  v28 = sub_22C38A024();
  sub_22C51E114(v28, v29, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C374168(v3 + 20, v3[23]);
    sub_22C3869E0();
    v31 = sub_22C37BD98();
    v32(v31);
  }

  v83 = a2;
  v84 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v34 = sub_22C9036EC();
  v35 = (*(*(v34 - 8) + 88))(v27, v34);
  if (v35 == *MEMORY[0x277D1ECE0])
  {
    v36 = sub_22C370720();
    v37(v36);
    v38 = sub_22C51E388();
    v39(v38, v27, v13);
    v40 = v3[3];
    v41 = v3[4];
    sub_22C3766E0(v3, v40);
    (*(v41 + 32))(v22, v92, v40, v41);
    (*(v23 + 8))(v22, v13);
  }

  else if (v35 == *MEMORY[0x277D1ECE8])
  {
    v42 = sub_22C370720();
    v43(v42);
    v45 = v88;
    v44 = v89;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v46();
    v47 = v3[8];
    v48 = v3[9];
    sub_22C374168(v3 + 5, v47);
    sub_22C3869E0();
    v49(v13, v47, v48);
    (*(v45 + 8))(v13, v44);
  }

  else if (v35 == *MEMORY[0x277D1ECD8])
  {
    v50 = sub_22C370720();
    v51(v50);
    v53 = v90;
    v52 = v91;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v54();
    v55 = sub_22C374168(v3 + 10, v3[13]);
    v56 = v55[3];
    v57 = v55[4];
    sub_22C3766E0(v55, v56);
    (*(v57 + 32))(v18, v92, v56, v57);
    (*(v53 + 8))(v18, v52);
  }

  else if (v35 == *MEMORY[0x277D1ECD0])
  {
    v58 = sub_22C370720();
    v59(v58);
    v61 = v90;
    v60 = v91;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v62();
    v63 = v3[3];
    v64 = v3[4];
    sub_22C3766E0(v3, v63);
    (*(v64 + 40))(v2, 1, v92, v63, v64);
    (*(v61 + 8))(v2, v60);
  }

  else
  {
    if (v35 != *MEMORY[0x277D1ECF8])
    {
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    v66 = sub_22C370720();
    v67(v66);
    v69 = v85;
    v68 = v86;
    v70 = v87;
    (*(v85 + 32))(v87, v27, v86);
    v71 = sub_22C374168(v3 + 15, v3[18]);
    v72 = v71[3];
    v73 = v71[4];
    sub_22C374168(v71, v72);
    sub_22C3869E0();
    v74(v93, v70, v92, v72, v73);
    v75 = v93[1];
    v76 = v94;
    if (v94)
    {

      v77 = 2;
    }

    else
    {
      v78 = v93[0];
      sub_22C36A83C();
      v77 = swift_allocObject();
      *(v77 + 16) = v78;
      *(v77 + 24) = v75;
    }

    v79 = v83;
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v80 = MEMORY[0x277D84F90];
    v81 = sub_22C909F0C();
    (*(v69 + 8))(v87, v68);
    *v79 = v77;
    *(v79 + 8) = 0u;
    *(v79 + 24) = 0u;
    *(v79 + 40) = v76;
    *(v79 + 48) = v81;
    *(v79 + 56) = v80;
  }

  sub_22C9037DC();
  sub_22C36985C();
  return (*(v65 + 8))(v27 + v84);
}

uint64_t sub_22C513BCC(uint64_t a1)
{
  v2 = sub_22C908D6C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_22C908EAC();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a1 + 16);
  v35 = a1;
  v36 = v14;
  v33 = v15 + 16;
  v16 = *MEMORY[0x277D72188];
  v38 = *MEMORY[0x277D72178];
  v17 = (v3 + 8);
  v34 = v15;
  v29 = v6;
  v30 = (v15 + 8);
  v31 = v12;
  v32 = v10;
  while (1)
  {
    if (v13 == v36)
    {
      return v13 == v36;
    }

    v18 = v13;
    (*(v34 + 16))(v12, v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v9);
    v28 = v18;
    v37 = v18 + 1;
    v19 = sub_22C908DEC();
    v20 = 0;
    v21 = *(v19 + 16);
    while (1)
    {
      if (v21 == v20)
      {
        v20 = v21;
        goto LABEL_10;
      }

      (*(v3 + 16))(v8, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v2);
      v22 = (*(v3 + 88))(v8, v2);
      if (v22 == v16)
      {
        break;
      }

      if (v22 == v38)
      {
        goto LABEL_10;
      }

      (*v17)(v8, v2);
      ++v20;
    }

    (*v17)(v8, v2);
LABEL_10:
    v23 = *(v19 + 16);
    if (v20 == v23)
    {

      (*v30)(v31, v32);
      v13 = v28;
      return v13 == v36;
    }

    if (v20 >= v23)
    {
      break;
    }

    v24 = v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20;
    v20 = v29;
    (*(v3 + 16))(v29, v24, v2);
    v25 = (*(v3 + 88))(v20, v2);
    if (v25 == v16)
    {
      (*v17)(v20, v2);
    }

    else if (v25 != v38)
    {
      goto LABEL_19;
    }

    v12 = v31;
    v9 = v32;
    (*v30)(v31, v32);
    v13 = v37;
  }

  __break(1u);
LABEL_19:
  result = (*v17)(v20, v2);
  __break(1u);
  return result;
}

void sub_22C513F8C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_22C3B34E0(sub_22C51E0AC, v25, a1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 64;
  v24 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v5 + 40 * v3); ; i += 40)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    if (*i)
    {
      v8 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      if (v8 == 0x695F686372616573 && v7 == 0xED00007070615F6ELL)
      {
        v8 = 0x695F686372616573;
        v22 = 0xED00007070615F6ELL;
LABEL_14:

        sub_22C36FC2C();
        sub_22C90A28C();
        v12 = sub_22C90A2AC();
        v23 = v13;
        sub_22C43627C(v8, v22, v9, v10, 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590270(0, *(v24 + 16) + 1, 1, v24);
          v24 = v17;
        }

        v15 = *(v24 + 16);
        v14 = *(v24 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22C369AB0(v14);
          sub_22C3726E0();
          sub_22C590270(v18, v19, v20, v24);
          v24 = v21;
        }

        ++v3;
        *(v24 + 16) = v15 + 1;
        v16 = v24 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v23;
        v5 = v2 + 64;
        goto LABEL_2;
      }

      sub_22C372280();
      if (sub_22C90B4FC())
      {
        v22 = v7;
        goto LABEL_14;
      }
    }

    ++v3;
  }

  __break(1u);
}

uint64_t sub_22C514170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_22C374168(a2, v5);
  return (*(v6 + 8))(a1, 0, a3, v5, v6);
}

void sub_22C5141F4()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C513BCC(v3);
  v14 = MEMORY[0x277D84F90];
  if ((v13 & 1) == 0)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v22 = sub_22C909F0C();
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
LABEL_9:
    *(v5 + 40) = 1;
    goto LABEL_10;
  }

  sub_22C513F8C(v3, v1);
  v16 = v15;
  v17 = *(v3 + 16);
  if (*(v15 + 16) != v17)
  {
    sub_22C903F7C();

    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      v26 = *(v16 + 16);

      *(v25 + 4) = v26;

      *(v25 + 12) = 2048;
      *(v25 + 14) = v17;

      _os_log_impl(&dword_22C366000, v23, v24, "Failed to render system protocol because count of applications %ld does not equal to count of conforming tools %ld.", v25, 0x16u);
      v14 = MEMORY[0x277D84F90];
      sub_22C3699EC();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v8 + 8))(v12, v6);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    sub_22C909F0C();
    *v5 = 2;
    sub_22C37274C();
    goto LABEL_9;
  }

  sub_22C90AF5C();
  MEMORY[0x2318B7850](543581540, 0xE400000000000000);
  MEMORY[0x2318B7850](0x695F686372616573, 0xED00007070615F6ELL);
  MEMORY[0x2318B7850](0x4C203D2070706128, 0xEF5B6C6172657469);
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
  v18 = sub_22C90A04C();
  v20 = v19;

  MEMORY[0x2318B7850](v18, v20);

  MEMORY[0x2318B7850](0xD000000000000094, 0x800000022C931DD0);
  sub_22C36A83C();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0xE000000000000000;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C909F0C();
  *v5 = v21;
  sub_22C37274C();
  *(v5 + 40) = 0;
LABEL_10:
  *(v5 + 48) = v22;
  *(v5 + 56) = v14;
  sub_22C36CC48();
}

void sub_22C5145AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_22C513BCC(a1);
  if (v3)
  {
    sub_22C36A83C();
    v4 = swift_allocObject();
    strcpy((v4 + 16), "search_in_app");
    *(v4 + 30) = -4864;
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v5 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *a2 = v4;
  sub_22C37274C();
  *(a2 + 40) = (v3 & 1) == 0;
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
}

void sub_22C514820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v360 = v24;
  v365 = v25;
  v345 = v26;
  v338 = v27;
  v369 = v28;
  v30 = sub_22C51E39C(v29);
  v31 = type metadata accessor for TypeIdentifierRenderer_v2_0(v30);
  sub_22C36985C();
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  sub_22C3698F8(v35);
  v36 = sub_22C9094EC();
  v37 = sub_22C36A7A4(v36, &v378);
  v355 = v38;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  sub_22C3698F8(v40 - v39);
  v41 = sub_22C90952C();
  v42 = sub_22C36A7A4(v41, &v387);
  v364 = v43;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  sub_22C3698F8(v46);
  v47 = sub_22C9063DC();
  v48 = sub_22C36A7A4(v47, &v386);
  v361 = v49;
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  sub_22C3698F8(v53);
  v54 = sub_22C90430C();
  sub_22C369824();
  v373 = v55;
  MEMORY[0x28223BE20](v56);
  sub_22C369ABC();
  v59 = v57 - v58;
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  v376 = v61;
  v62 = sub_22C9095CC();
  v63 = sub_22C36A7A4(v62, &v377);
  v347 = v64;
  MEMORY[0x28223BE20](v63);
  sub_22C369838();
  sub_22C3698F8(v66 - v65);
  v67 = sub_22C90998C();
  v68 = sub_22C36A7A4(v67, &v375);
  v343 = v69;
  MEMORY[0x28223BE20](v68);
  sub_22C369838();
  sub_22C3698F8(v71 - v70);
  v72 = sub_22C90947C();
  v73 = sub_22C36A7A4(v72, &a11);
  v359 = v74;
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA64();
  sub_22C3698F8(v78);
  v375 = sub_22C90077C();
  sub_22C369824();
  v80 = v79;
  MEMORY[0x28223BE20](v81);
  sub_22C369838();
  v84 = v83 - v82;
  v85 = sub_22C908A8C();
  v86 = sub_22C36A7A4(v85, &a16);
  v88 = v87;
  MEMORY[0x28223BE20](v86);
  sub_22C369838();
  v91 = v90 - v89;
  v92 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v93 = sub_22C369914(v92);
  MEMORY[0x28223BE20](v93);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v95);
  v97 = &v334 - v96;
  v337 = v31;
  v98 = sub_22C908B2C();
  MEMORY[0x2318B6010](v98);
  v366 = v20;
  v370 = v97;
  sub_22C908B1C();
  v354 = 0;
  (*(v80 + 8))(v84, v375);
  (*(v88 + 8))(v91, v372);
  v99 = v370;
  v100 = v367;
  sub_22C36C640(v370, 0, 1, v367);
  sub_22C3E8FB4(v99, v21, &qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C36D0A8(v21, 1, v100);
  v101 = v360;
  if (v102)
  {
    sub_22C36DD28(v21, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C51E3F0();
  }

  else
  {
    sub_22C37A078();
    v103 = v351;
    v104 = sub_22C37A06C();
    v105(v104);
    v106 = v350;
    MEMORY[0x10](v350, v103, v100);
    v107 = sub_22C36FC74();
    v109 = v108(v107);
    v91 = v368;
    if (v109 == *MEMORY[0x277D72B48])
    {
      v110 = sub_22C36FC74();
      v111(v110);
      sub_22C3701F8();
      v112 = v342;
      v113(v342, v106, v344);
      v114 = v366[3];
      v115 = v366[4];
      sub_22C374168(v366, v114);
      (*(v115 + 16))(v112, v345, v114, v115);
      v116 = sub_22C51E290();
      v117(v116);
      MEMORY[8](v103, v100);
      v118 = sub_22C381A64();
      sub_22C36DD28(v118, v119, v120);
      goto LABEL_64;
    }

    v121 = MEMORY[8];
    MEMORY[8](v103, v100);
    v122 = sub_22C36FC74();
    v121(v122);
  }

  v385 = v365;
  v386 = v101;
  v123 = sub_22C381A64();
  v124 = v352;
  sub_22C3E8FB4(v123, v352, v125, v126);
  v127 = v367;
  sub_22C36D0A8(v124, 1, v367);
  v128 = v374;
  v129 = v371;
  if (v102)
  {

    sub_22C36DD28(v124, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_24;
  }

  sub_22C370208();
  (*(v130 + 32))(v128, v124, v127);
  v131 = sub_22C372158();
  v132(v131);
  v133 = (*(v100 + 88))(v129, v127);
  if (v133 != *MEMORY[0x277D72B68])
  {
    v146 = *(v100 + 8);

    v146(v128, v127);
    v146(v129, v127);
    goto LABEL_24;
  }

  (*(v100 + 96))(v129, v127);
  (*(v347 + 32))(v346, v129, v348);

  sub_22C47E38C();
  v352 = v134;
  v135 = 0;
  v372 = v136;
  v371 = *(v136 + 16);
  v91 = v373 + 8;
  v137 = v376;
  while (v135 != v371)
  {
    v138 = *(v373 + 72);
    v139 = (*(v373 + 80) + 32) & ~*(v373 + 80);
    v375 = v135;
    v140 = *(v373 + 16);
    v140(v137, v372 + v139 + v138 * v135, v54);
    v141 = v386 + v139;
    if (!v385)
    {
      v144 = *(v386 + 16) + 1;
      while (--v144)
      {
        v140(v59, v141, v54);
        sub_22C51E1E4(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v145 = sub_22C90A0BC();
        (*v91)(v59, v54);
        v141 += v138;
        if (v145)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      sub_22C372280();
      sub_22C7D4BE0();
      goto LABEL_21;
    }

    sub_22C7DB73C();
    v143 = v142;

    if (v143)
    {
      goto LABEL_20;
    }

LABEL_21:
    v137 = v376;
    v135 = v375 + 1;
    (*v91)(v376, v54);
    v128 = v374;
  }

  sub_22C36FB04();
  v147(v346, v348);
  sub_22C36FB04();
  v148(v128, v367);
  sub_22C51E3F0();
  v101 = v360;
LABEL_24:
  v376 = v386;
  v149 = v353;
  if (*(v386 + 16))
  {
    v150 = v357;
    sub_22C903F7C();
    v151 = v364;
    v152 = v101;
    v153 = *(v364 + 16);
    v154 = v363;
    v153(v149, v369, v363);
    v91 = v365;

    v155 = sub_22C9063CC();
    v156 = sub_22C90AACC();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = v151;
      v151 = swift_slowAlloc();
      v375 = swift_slowAlloc();
      v378 = v375;
      *v151 = 136315394;
      v91 = v341;
      v153(v341, v149, v154);
      v158 = sub_22C90A1AC();
      v159 = v154;
      v161 = v160;
      (*(v157 + 8))(v149, v159);
      v162 = sub_22C36F9F4(v158, v161, &v378);

      *(v151 + 4) = v162;
      *(v151 + 12) = 2080;
      sub_22C557B40();
      v165 = sub_22C36F9F4(v163, v164, &v378);

      *(v151 + 14) = v165;
      _os_log_impl(&dword_22C366000, v155, v156, "Rendering type identifier %s with supplimentary UTTypes: %s", v151, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v166 = *(v361 + 8);
      v166(v357, v362);
    }

    else
    {

      (*(v151 + 8))(v149, v154);
      v166 = *(v361 + 8);
      v166(v150, v362);
    }

    sub_22C386758();
    sub_22C903F7C();
    v167 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C383098();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = sub_22C36FB44();
      v91 = sub_22C370060();
      v378 = v91;
      *v169 = 136315138;
      swift_beginAccess();

      sub_22C557B40();

      v170 = sub_22C36FC2C();
      v173 = sub_22C36F9F4(v170, v171, v172);

      *(v169 + 4) = v173;
      _os_log_impl(&dword_22C366000, v167, v151, "Final list of UTTypes after extracting those from the type identifier: %s", v169, 0xCu);
      sub_22C36FF94(v91);
      sub_22C36D69C();
      sub_22C3699EC();
    }

    v166(v152, v362);
    sub_22C51E3F0();
  }

  v174 = swift_beginAccess();
  v175 = v385;
  MEMORY[0x28223BE20](v174);
  *(&v334 - 2) = v366;

  v176 = v376;

  v177 = v354;
  sub_22C792C70(sub_22C51E0F8, (&v334 - 4), v175, v176, v178, v179, v180, v181, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
  v183 = v182;

  v375 = v175;

  v184 = sub_22C3DB9B0(v183);

  sub_22C36D2A8();
  v185 = swift_allocObject();
  *(v185 + 16) = 0;
  *(v185 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v186 = swift_allocObject();
  *(v186 + 16) = v184;
  *(v185 + 32) = v186;
  v187 = sub_22C529D00(2128928, 0xE300000000000000, v185 | 0x8000000000000000);

  sub_22C369AEC();
  v188 = swift_allocObject();
  sub_22C369AEC();
  v189 = swift_allocObject();
  *(v189 + 16) = v187;
  *(v188 + 16) = v189;
  v378 = MEMORY[0x277D84F90];
  sub_22C496A94();
  v191 = v190;

  sub_22C36A83C();
  v192 = swift_allocObject();
  v193 = v192;
  if (v191)
  {
    *(v192 + 16) = 0;
    *(v192 + 24) = 0xE000000000000000;
    v194 = v355;
  }

  else
  {
    *(v192 + 16) = 60;
    *(v192 + 24) = 0xE100000000000000;
    sub_22C374C14();
    sub_22C591324();
    v196 = v195;
    v198 = *(v195 + 16);
    v197 = *(v195 + 24);
    v199 = v197 >> 1;
    v200 = v198 + 1;
    v194 = v355;
    if (v197 >> 1 <= v198)
    {
      sub_22C369AB0(v197);
      sub_22C388CAC();
      sub_22C591324();
      v196 = v331;
      v197 = *(v331 + 24);
      v199 = v197 >> 1;
    }

    *(v196 + 16) = v200;
    *(v196 + 8 * v198 + 32) = v193;
    v201 = v198 + 2;
    if (v199 < (v198 + 2))
    {
      sub_22C369AB0(v197);
      sub_22C591324();
      v196 = v332;
    }

    *(v196 + 16) = v201;
    *(v196 + 8 * v200 + 32) = v188 | 0x6000000000000000;
    sub_22C36A83C();
    v202 = swift_allocObject();
    *(v202 + 16) = 62;
    *(v202 + 24) = 0xE100000000000000;
    v203 = *(v196 + 24);

    if ((v198 + 3) > (v203 >> 1))
    {
      sub_22C388CAC();
      sub_22C591324();
      v196 = v333;
    }

    *(v196 + 16) = v198 + 3;
    *(v196 + 8 * v201 + 32) = v202;
    v204 = sub_22C3DB9B0(v196);

    sub_22C369AEC();
    v91 = swift_allocObject();
    sub_22C369AEC();
    v205 = swift_allocObject();
    *(v205 + 16) = v204;
    *(v91 + 16) = v205;
    v193 = v91 | 0x6000000000000000;
    sub_22C51E3F0();
  }

  v206 = v356;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v356);
  v207 = v363;
  v208 = (*(v364 + 88))(v206, v363);
  if (v208 == *MEMORY[0x277D72D50])
  {
    v209 = v193;
    v374 = v188;
    v210 = sub_22C371510();
    v211(v210);
    v373 = *v206;
    v212 = swift_projectBox();
    v213 = v349;
    (*(v194 + 16))(v91, v212, v349);
    sub_22C374168(v366 + 5, v366[8]);
    sub_22C51E2FC();
    v214();
    v216 = v378;
    v215 = v379;
    v217 = v380;
    v218 = v381;
    v219 = v382;
    v220 = v383;
    if (v383)
    {

      (*(v194 + 8))(v91, v213);
      v221 = sub_22C381A64();
      sub_22C36DD28(v221, v222, v223);
    }

    else
    {
      v243 = sub_22C51E244();
      sub_22C456C30(v243, v244, v245, v246, v247, v248);
      sub_22C51E2FC();
      sub_22C456C94(v249, v250, v251);
      v372 = sub_22C47D60C(v216, v209);

      v252 = sub_22C51E244();
      sub_22C456CE4(v252, v253, v254, v255, v256, v257);

      (*(v194 + 8))(v91, v213);
      v258 = sub_22C381A64();
      sub_22C36DD28(v258, v259, v260);
      v261 = sub_22C51E244();
      sub_22C456CE4(v261, v262, v263, v264, v265, v266);
      v216 = v372;
    }

    v267 = v358;
    *v358 = v216;
    v267[1] = v215;
    v267[2] = v217;
    v267[3] = v218;
    v267[4] = v219;
    *(v267 + 40) = v220;
  }

  else
  {
    v224 = v366;
    if (v208 == *MEMORY[0x277D72D30])
    {
      v225 = sub_22C371510();
      v226(v225);
      sub_22C36D818();
      sub_22C903F7C();
      sub_22C377DB4();
      sub_22C37E2C4();
      sub_22C51E114(v227, v228, v229);
      v230 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C383098();
      if (os_log_type_enabled(v230, v231))
      {
        sub_22C36FB44();
        v232 = sub_22C379928();
        v378 = v232;
        *v177 = 136315138;
        sub_22C377DB4();
        sub_22C37E2C4();
        sub_22C51E114(v233, v234, v235);
        sub_22C90A1AC();
        sub_22C51E22C();
        sub_22C51E174(v207, v236);
        v237 = sub_22C374C34();
        v240 = sub_22C36F9F4(v237, v238, v239);

        *(v177 + 4) = v240;
        sub_22C51E43C(&dword_22C366000, v241, v242, "%s .builtin: Unsupported type in action");
        sub_22C36FF94(v232);
        sub_22C3699EC();
        sub_22C372FB0();
      }

      else
      {

        sub_22C51E22C();
        sub_22C51E174(v207, v279);
      }

      sub_22C36FB04();
      v280(v194, v362);
      v281 = sub_22C381A64();
      sub_22C36DD28(v281, v282, v283);

      sub_22C386198();
    }

    else if (v208 == *MEMORY[0x277D72D28])
    {
      v374 = v188;
      v268 = sub_22C371510();
      v269(v268);
      v270 = *(*v206 + 16);
      v271 = *(*v206 + 24);
      sub_22C900AAC();
      sub_22C54CE60();

      sub_22C3AD9E8();
      v273 = v272;
      if (qword_27D9BA698 != -1)
      {
        sub_22C37B648(&qword_27D9BA698);
      }

      v274 = v193;

      sub_22C7B539C(v275, v273);
      sub_22C5E94F0();
      v277 = v276;

      v278 = v366;
      if ((v277 & 1) == 0)
      {
        v299 = sub_22C374168(v366 + 15, v366[18]);
        v300 = MEMORY[0x28223BE20](v299);
        *(&v334 - 4) = v270;
        *(&v334 - 3) = v271;
        *(&v334 - 2) = v345;
        *(&v334 - 1) = v300;
        v301 = sub_22C374C34();
        sub_22C4FB170(v301, v302, v303, v304, v305);
      }

      v306 = sub_22C90A28C();
      v308 = v307;

      v309 = sub_22C90A28C();
      v311 = v310;
      v378 = v306;
      v379 = v308;

      MEMORY[0x2318B7850](v309, v311);

      v312 = v378;
      v313 = v379;
      sub_22C3E8FB4((v278 + 20), &v378, &qword_27D9BD9C8, &qword_22C91A118);
      if (v381)
      {
        sub_22C374168(&v378, v381);
        sub_22C533B78(v384);
        v314 = v384[0];
        v315 = v384[1];
        v316 = v384[2];
        v317 = v384[3];
        sub_22C36FF94(&v378);
      }

      else
      {
        sub_22C36DD28(&v378, &qword_27D9BD9C8, &qword_22C91A118);
        v314 = 0;
        v315 = 0;
        v316 = 0;
        v317 = 0;
      }

      sub_22C36A83C();
      v325 = swift_allocObject();
      *(v325 + 16) = v312;
      *(v325 + 24) = v313;
      v326 = sub_22C47D60C(v325, v274);

      v327 = sub_22C381A64();
      sub_22C36DD28(v327, v328, v329);

      v330 = v358;
      *v358 = v326;
      v330[1] = v314;
      v330[2] = v315;
      v330[3] = v316;
      v330[4] = v317;
      *(v330 + 40) = 0;
    }

    else
    {
      sub_22C36D818();
      sub_22C903F7C();
      sub_22C377DB4();
      v284 = v335;
      sub_22C51E114(v224, v335, v285);
      v286 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C383098();
      if (os_log_type_enabled(v286, v287))
      {
        sub_22C36FB44();
        v288 = sub_22C379928();
        v378 = v288;
        *v284 = 136315138;
        sub_22C377DB4();
        sub_22C37E2C4();
        sub_22C51E114(v289, v290, v291);
        sub_22C90A1AC();
        sub_22C51E22C();
        sub_22C51E174(v284, v292);
        v293 = sub_22C374C34();
        v296 = sub_22C36F9F4(v293, v294, v295);

        *(v284 + 4) = v296;
        sub_22C51E43C(&dword_22C366000, v297, v298, "%s unknown: Unsupported type in action");
        sub_22C36FF94(v288);
        sub_22C3699EC();
        sub_22C372FB0();
      }

      else
      {

        sub_22C51E22C();
        sub_22C51E174(v284, v318);
      }

      sub_22C36FB04();
      v319(v194, v362);
      v320 = sub_22C381A64();
      sub_22C36DD28(v320, v321, v322);
      sub_22C386198();
      sub_22C36FB04();
      v323 = sub_22C371510();
      v324(v323);
    }
  }

LABEL_64:
  sub_22C36CC48();
}

void sub_22C516270(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_22C90422C();
  *(v2 + 24) = v3;
  sub_22C456D48(0, 0, 0);
  *a1 = v2;
}

void sub_22C5162E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v115 = v23;
  v116 = v24;
  v112 = v26;
  v113 = v25;
  v114 = v27;
  v117 = v28;
  v29 = sub_22C9063DC();
  v30 = sub_22C36A7A4(v29, &a13);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C3698F8(v33);
  v34 = sub_22C90906C();
  v35 = sub_22C36A7A4(v34, &a16);
  v110 = v36;
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C3698F8(v38 - v37);
  v39 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  v43 = v42 - v41;
  v111 = sub_22C9090BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v47 = v46 - v45;
  v48 = sub_22C90931C();
  sub_22C369824();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v54 = v53 - v52;
  v55 = sub_22C9093BC();
  sub_22C369824();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v61 = v60 - v59;
  (*(v57 + 16))(v60 - v59, v113, v55);
  v62 = sub_22C36A724();
  v64 = v63(v62);
  if (v64 == *MEMORY[0x277D72A58])
  {
    v65 = sub_22C36A724();
    v66(v65);
    v67 = swift_projectBox();
    (*(v50 + 16))(v54, v67, v48);
    v68 = v20[8];
    v69 = v20[9];
    sub_22C374168(v20 + 5, v68);
    (*(v69 + 8))(v54, v114 & 1, v115, v116, v68, v69);
    (*(v50 + 8))(v54, v48);
LABEL_5:

    goto LABEL_6;
  }

  if (v64 == *MEMORY[0x277D729E8])
  {
    v70 = sub_22C36A724();
    v71(v70);
    swift_projectBox();
    sub_22C36D818();
    (*(v72 + 16))(v47);
    v73 = v20[3];
    v74 = v20[4];
    sub_22C374168(v20, v73);
    sub_22C9090AC();
    (*(v74 + 24))(&v118, v43, v112, v115, v73, v74);
    sub_22C36FB04();
    v75 = sub_22C38A024();
    v76(v75);
    sub_22C386560();
    MEMORY[0x28223BE20](v77);
    sub_22C369920();
    *(v78 - 16) = v47;
    v79 = sub_22C51E430();
    sub_22C54DBA0(v79, v117);
    sub_22C36DD28(&v119, &qword_27D9BAB08, &qword_22C91A110);
    (*(v55 + 8))(v47, v111);
    goto LABEL_5;
  }

  if (v64 == *MEMORY[0x277D72A38])
  {
    goto LABEL_8;
  }

  if (v64 == *MEMORY[0x277D729E0])
  {
    v82 = sub_22C36A724();
    v83(v82);
    v84 = swift_projectBox();
    (*(v110 + 16))(v109, v84);
    v85 = sub_22C90905C();
    MEMORY[0x28223BE20](v85);
    sub_22C51E2D4();
    *(v86 - 48) = v20;
    *(v86 - 40) = v114 & 1;
    *(v86 - 32) = v112;
    *(v86 - 24) = v115;
    *(v86 - 16) = v116;
    v88 = sub_22C3B2C0C(sub_22C51B35C, v87, v85);

    sub_22C47FA7C(v88, v117);

    (*(v110 + 8))();
    goto LABEL_5;
  }

  if (v64 == *MEMORY[0x277D72A30])
  {
    goto LABEL_12;
  }

  if (v64 == *MEMORY[0x277D72A40])
  {
    v97 = sub_22C37BA64();
    v98(v97);
    v91 = v107;
    sub_22C903F7C();
    v92 = sub_22C9063CC();
    v93 = sub_22C90AADC();
    if (os_log_type_enabled(v92, v93))
    {
      sub_22C36FB44();
      v94 = sub_22C379928();
      v119 = v94;
      *v61 = 136315138;
      *(v61 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      v96 = "[%s] Unexpected TypedValue found: TypedValue.DeferredValue";
      goto LABEL_17;
    }

LABEL_18:

    sub_22C36FB04();
    v99(v91);
    goto LABEL_19;
  }

  if (v64 == *MEMORY[0x277D729F8])
  {
LABEL_8:
    v80 = sub_22C37BA64();
    v81(v80);
LABEL_19:
    sub_22C51E29C();
    goto LABEL_6;
  }

  if (v64 == *MEMORY[0x277D72A60])
  {
LABEL_12:
    v89 = sub_22C37BA64();
    v90(v89);
    v91 = v108;
    sub_22C903F7C();
    v92 = sub_22C9063CC();
    v93 = sub_22C90AACC();
    if (os_log_type_enabled(v92, v93))
    {
      sub_22C36FB44();
      v94 = sub_22C379928();
      v119 = v94;
      *v61 = 136315138;
      *(v61 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      v96 = "[%s] Unsupported type: skipping event";
LABEL_17:
      sub_22C51E320(&dword_22C366000, v95, v93, v96);
      sub_22C36FF94(v94);
      sub_22C3699EC();
      sub_22C372FB0();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  sub_22C386758();
  sub_22C903F7C();
  v100 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C383098();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = sub_22C36FB44();
    v103 = sub_22C370060();
    v119 = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
    _os_log_impl(&dword_22C366000, v100, v39, "[%s] Unsupported type: skipping event", v102, 0xCu);
    sub_22C36FF94(v103);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  sub_22C36FB04();
  v104(v43);
  sub_22C51E29C();
  v105 = sub_22C37BA64();
  v106(v105);
LABEL_6:
  sub_22C36CC48();
}

uint64_t sub_22C516BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_22C456C94(v5, v6, v7);
  result = sub_22C516C28(v4);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  return result;
}

uint64_t sub_22C516C28(uint64_t a1)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  *(inited + 32) = a1;
  v3 = swift_allocObject();

  *(v3 + 16) = sub_22C90A49C();
  *(v3 + 24) = v4;
  *(inited + 40) = v3;
  v5 = swift_allocObject();
  sub_22C90908C();
  sub_22C90A28C();

  sub_22C501204();
  v7 = v6;
  v9 = v8;

  *(v5 + 16) = v7;
  *(v5 + 24) = v9;
  *(inited + 48) = v5;
  v10 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v11 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = v12;
  return v11 | 0x6000000000000000;
}

void sub_22C516DB0()
{
  sub_22C36BA7C();
  v3 = v1;
  v186 = v4;
  v185 = v5;
  v184 = v6;
  v189 = v7;
  v9 = v8;
  sub_22C51E39C(v10);
  v11 = sub_22C90919C();
  v12 = sub_22C36A7A4(v11, &v200);
  v173 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C36D83C();
  v14 = sub_22C9063DC();
  v15 = sub_22C36A7A4(v14, v199);
  v166 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C36D234(v18);
  v183 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  sub_22C36985C();
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v197 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  sub_22C36D234(v22);
  v23 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v24 = sub_22C369914(v23);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C38822C();
  v169 = 0;
  v27 = sub_22C90952C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  v33 = &v163 - v32;
  if (qword_27D9BA698 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    sub_22C9090AC();
    sub_22C38A024();
    sub_22C5E94F0();
    v35 = v34;
    v36 = v29[1];
    v36(v33, v27);
    v176 = v9;
    v174 = v29 + 1;
    v170 = v36;
    v172 = v33;
    if (v35)
    {
      sub_22C9090AC();
      v37 = v175;
      TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v175);
      v36(v33, v27);
      if (qword_27D9BA668 != -1)
      {
        sub_22C51E270(&qword_27D9BA668);
      }

      sub_22C37AA60(v27, qword_27D9E3EE0);
      sub_22C51E1E4(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v38 = sub_22C90A0BC();
      v36(v37, v27);
      if ((v38 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if ((v189 & 1) == 0)
    {
LABEL_31:
      sub_22C36A83C();
      v79 = swift_allocObject();
      sub_22C90915C();
      v80 = sub_22C90993C();
      sub_22C36D0A8(v0, 1, v80);
      if (v124)
      {
        sub_22C36DD28(v0, &qword_27D9BC390, &qword_22C912AC0);
        v81 = 0;
        v83 = 0xE000000000000000;
      }

      else
      {
        v81 = sub_22C9098BC();
        v83 = v82;
        sub_22C36BBA8();
        v84 = sub_22C37BD98();
        v85(v84);
      }

      goto LABEL_96;
    }

    v164 = v27;
    v9 = v176;
    v29 = sub_22C90914C();
    v0 = v29[2];
    v187 = v2;
    v188 = v3;
    if (v0)
    {
      v201[0] = MEMORY[0x277D84F90];
      v9 = v201;
      sub_22C3B6CE8(0, v0, 0);
      v33 = v201[0];
      v41 = sub_22C6339F8();
      v42 = 0;
      v43 = v29 + 8;
      v178 = v39;
      v177 = v29 + 9;
      v181 = v29;
      v179 = v0;
      v180 = v29 + 8;
      while ((v41 & 0x8000000000000000) == 0 && v41 < 1 << *(v29 + 32))
      {
        if ((v43[v41 >> 6] & (1 << v41)) == 0)
        {
          goto LABEL_100;
        }

        if (*(v29 + 9) != v39)
        {
          goto LABEL_101;
        }

        v194 = v41 >> 6;
        v195 = 1 << v41;
        v192 = v42;
        v193 = v39;
        v190 = v40;
        v196 = v33;
        v44 = v183;
        v45 = *(v183 + 48);
        v46 = v29[6];
        v47 = v29[7];
        v48 = (v46 + 16 * v41);
        v27 = *v48;
        v2 = v48[1];
        v49 = sub_22C9093BC();
        sub_22C369824();
        v51 = v50;
        v53 = v47 + *(v52 + 72) * v41;
        v54 = v182;
        (*(v50 + 16))(v182 + v45, v53, v49);
        v55 = v197;
        v191 = v27;
        *v197 = v27;
        *(v55 + 1) = v2;
        v56 = *(v44 + 48);
        (*(v51 + 32))(&v55[v56], v54 + v45, v49);
        v57 = *(v3 + 72);
        v58 = *(v3 + 80);
        sub_22C374168((v3 + 48), v57);
        v59 = *(v58 + 8);

        v59(&v198, &v55[v56], v189 & 1, v184, v185, v186, v57, v58);
        if (v200)
        {
          v0 = 0;
          v2 = 0;
          v60 = 0;
          v33 = v196;
        }

        else
        {
          v62 = v199[2];
          v61 = v199[3];
          v64 = v199[0];
          v63 = v199[1];
          v60 = v198;

          sub_22C456CE4(v60, v64, v63, v62, v61, 0);

          v33 = v196;
          v0 = v191;
        }

        sub_22C36DD28(v197, &qword_27D9BADA0, &unk_22C90FA80);
        v201[0] = v33;
        v66 = *(v33 + 2);
        v65 = *(v33 + 3);
        v3 = v188;
        if (v66 >= v65 >> 1)
        {
          sub_22C369AB0(v65);
          sub_22C3726E0();
          sub_22C3B6CE8(v76, v77, v78);
          v33 = v201[0];
        }

        *(v33 + 2) = v66 + 1;
        v67 = &v33[24 * v66];
        *(v67 + 4) = v0;
        *(v67 + 5) = v2;
        *(v67 + 6) = v60;
        v29 = v181;
        v9 = 1 << *(v181 + 32);
        if (v41 >= v9)
        {
          goto LABEL_102;
        }

        v43 = v180;
        v68 = v180[v194];
        if ((v68 & v195) == 0)
        {
          goto LABEL_103;
        }

        if (*(v181 + 9) != v193)
        {
          goto LABEL_104;
        }

        v69 = v68 & (-2 << (v41 & 0x3F));
        if (v69)
        {
          v9 = __clz(__rbit64(v69)) | v41 & 0x7FFFFFFFFFFFFFC0;
          v2 = v187;
          v70 = v192;
        }

        else
        {
          v71 = v194 << 6;
          v72 = v194 + 1;
          v73 = &v177[v194];
          v2 = v187;
          while (v72 < (v9 + 63) >> 6)
          {
            v75 = *v73++;
            v74 = v75;
            v71 += 64;
            ++v72;
            if (v75)
            {
              sub_22C3A5038(v41, v193, v190 & 1);
              v9 = __clz(__rbit64(v74)) + v71;
              goto LABEL_28;
            }
          }

          sub_22C3A5038(v41, v193, v190 & 1);
LABEL_28:
          v70 = v192;
        }

        v40 = 0;
        v42 = v70 + 1;
        v41 = v9;
        v39 = v178;
        v0 = v179;
        if (v42 == v179)
        {

          goto LABEL_35;
        }
      }

LABEL_99:
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
      goto LABEL_105;
    }

    v33 = MEMORY[0x277D84F90];
LABEL_35:
    v86 = 0;
    v27 = *(v33 + 2);
    v29 = v33 + 40;
    v0 = MEMORY[0x277D84F90];
LABEL_36:
    v87 = &v29[3 * v86];
    while (v27 != v86)
    {
      if (v86 >= *(v33 + 2))
      {
        __break(1u);
        goto LABEL_99;
      }

      ++v86;
      v88 = v87 + 3;
      v9 = *v87;
      v87 += 3;
      if (v9)
      {
        v89 = v33;
        v90 = *(v88 - 4);
        v91 = *(v88 - 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C51E3E4();
          sub_22C5922A4();
          v0 = v95;
        }

        v93 = *(v0 + 16);
        v92 = *(v0 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_22C369AB0(v92);
          sub_22C51E3E4();
          sub_22C5922A4();
          v0 = v96;
        }

        *(v0 + 16) = v93 + 1;
        v94 = (v0 + 24 * v93);
        v94[4] = v90;
        v94[5] = v9;
        v94[6] = v91;
        v2 = v187;
        v3 = v188;
        v33 = v89;
        goto LABEL_36;
      }
    }

    v198 = v0;

    v97 = v169;
    sub_22C51B3A0(&v198, sub_22C56C1F4, sub_22C51B424);
    v98 = v176;
    if (v97)
    {

      __break(1u);
      return;
    }

    v197 = v198;
    v0 = v164;
    v99 = v171;
    v100 = v173;
    v29 = v175;
    v101 = v172;
    if (!v198[2])
    {
      sub_22C36D818();
      sub_22C903F7C();
      (*(v100 + 16))(v2, v98, v99);
      v102 = sub_22C9063CC();
      v29 = sub_22C90AACC();
      if (os_log_type_enabled(v102, v29))
      {
        v195 = 0;
        v103 = sub_22C36FB44();
        v104 = sub_22C370060();
        v198 = v104;
        *v103 = 136642819;
        v105 = v163;
        sub_22C90915C();
        v106 = sub_22C90993C();
        sub_22C36D0A8(v105, 1, v106);
        if (v124)
        {
          sub_22C36DD28(v105, &qword_27D9BC390, &qword_22C912AC0);
          v109 = 0;
          v111 = 0xE000000000000000;
        }

        else
        {
          v109 = sub_22C9098BC();
          v111 = v110;
          sub_22C36BBA8();
          (*(v112 + 8))(v113, v106);
        }

        v97 = v195;
        sub_22C36FB04();
        v114(v187, v99);
        v2 = sub_22C36F9F4(v109, v111, &v198);

        *(v103 + 4) = v2;
        _os_log_impl(&dword_22C366000, v102, v29, "Empty argument list found for entity with display representation: %{sensitive}s", v103, 0xCu);
        sub_22C36FF94(v104);
        sub_22C3699EC();
        sub_22C36D69C();

        v115 = sub_22C37EC08();
        v116(v115);
        sub_22C36FD08();
        v101 = v172;
      }

      else
      {

        (*(v100 + 8))(v2, v99);
        v107 = sub_22C37EC08();
        v108(v107);
        sub_22C36FD08();
      }
    }

    sub_22C9090AC();
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v29);
    v27 = v170;
    v170(v101, v0);
    if (qword_27D9BA660 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v0, qword_27D9E3EC8);
    v9 = sub_22C90950C();
    v117 = sub_22C372280();
    (v27)(v117);
    if (v9)
    {
      v33 = 0;
      v3 = v197[2];
      v195 = v97;
      v196 = (v197 + 4);
      v118 = MEMORY[0x277D84F90];
LABEL_57:
      while (v33 != v3)
      {
        if (v33 >= v197[2])
        {
          goto LABEL_106;
        }

        v119 = &v196[24 * v33];
        v120 = *v119;
        v29 = *(v119 + 1);
        v121 = *(v119 + 2);
        v0 = qword_27D9BA6A0;

        if (v0 != -1)
        {
          swift_once();
        }

        ++v33;
        v2 = qword_27D9E3F78;
        if (*(qword_27D9E3F78 + 16))
        {
          sub_22C90B62C();
          sub_22C909FFC();
          v122 = sub_22C90B66C();
          v9 = v2 + 56;
          v0 = ~(-1 << *(v2 + 32));
          while (1)
          {
            v27 = v122 & v0;
            if (((*(v9 + (((v122 & v0) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v122 & v0)) & 1) == 0)
            {
              break;
            }

            v123 = (*(v2 + 48) + 16 * v27);
            v124 = *v123 == v120 && v123[1] == v29;
            if (!v124)
            {
              v125 = sub_22C90B4FC();
              v122 = v27 + 1;
              if ((v125 & 1) == 0)
              {
                continue;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v201[0] = v118;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = v201;
              sub_22C3B6CC8(0, v118[2] + 1, 1);
              v118 = v201[0];
            }

            v0 = v118[2];
            v127 = v118[3];
            v2 = v0 + 1;
            if (v0 >= v127 >> 1)
            {
              sub_22C369AB0(v127);
              v9 = v201;
              sub_22C388CAC();
              sub_22C3B6CC8(v129, v130, v131);
              v118 = v201[0];
            }

            v118[2] = v2;
            v128 = &v118[3 * v0];
            v128[4] = v120;
            v128[5] = v29;
            v128[6] = v121;
            goto LABEL_57;
          }
        }
      }

      v3 = v188;
      v97 = v195;
    }

    else
    {
      v118 = v197;
    }

    v0 = v118[2];
    if (!v0)
    {
      break;
    }

    v198 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v0, 0);
    v33 = 0;
    v9 = v198;
    v2 = (v118 + 6);
    while (v33 < v118[2])
    {
      v132 = *(v2 - 16);
      v133 = *(v2 - 8);
      v134 = *v2;

      v27 = sub_22C517FBC(v132, v133, v134);

      v198 = v9;
      v136 = *(v9 + 16);
      v135 = *(v9 + 24);
      v29 = (v136 + 1);
      if (v136 >= v135 >> 1)
      {
        v137 = sub_22C369AB0(v135);
        sub_22C3B63D4(v137, v136 + 1, 1);
        v9 = v198;
      }

      ++v33;
      *(v9 + 16) = v29;
      *(v9 + 8 * v136 + 32) = v27;
      v2 += 24;
      if (v0 == v33)
      {

        goto LABEL_85;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    sub_22C37B648(&qword_27D9BA698);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_85:
  v138 = sub_22C47D738(8236, 0xE200000000000000, v9);

  if (*(v3 + 40))
  {
    v139 = v138;
  }

  else
  {
    v140 = *(v3 + 32);
    sub_22C36D2A8();
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = 0;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v142 = swift_allocObject();
    *(v142 + 16) = v138;
    *(v141 + 32) = v142;
    v139 = v141 | 0xA000000000000000;
  }

  v198 = MEMORY[0x277D84F90];

  sub_22C496A94();
  v144 = v143;

  if ((v144 & 1) == 0)
  {

    sub_22C36D2A8();
    v151 = swift_allocObject();
    sub_22C51E41C(v151);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    goto LABEL_97;
  }

  sub_22C37A078();
  sub_22C903F7C();
  v145 = sub_22C9063CC();
  v146 = sub_22C90AACC();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_22C366000, v145, v146, "Falling back on display representation because there are no properties to render", v147, 2u);
    sub_22C36D69C();
  }

  sub_22C36FB04();
  v148(v168, v167);
  sub_22C36A83C();
  v79 = swift_allocObject();
  v149 = v165;
  sub_22C90915C();
  v150 = sub_22C90993C();
  sub_22C36D0A8(v149, 1, v150);
  if (v124)
  {
    sub_22C36DD28(v149, &qword_27D9BC390, &qword_22C912AC0);
    v81 = 0;
    v83 = 0xE000000000000000;
  }

  else
  {
    v81 = sub_22C9098BC();
    v83 = v152;
    sub_22C36BBA8();
    v153 = sub_22C371510();
    v154(v153);
  }

LABEL_96:
  *(v79 + 16) = v81;
  *(v79 + 24) = v83;
  sub_22C36D2A8();
  v155 = swift_allocObject();
  *(v155 + 16) = 3;
  *(v155 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v156 = swift_allocObject();
  *(v156 + 16) = v79;
  *(v155 + 32) = v156;
  v97 = 0xA000000000000000;
  v157 = v155 | 0xA000000000000000;
  sub_22C36D2A8();
  v158 = swift_allocObject();
  *(v158 + 16) = 4;
  *(v158 + 24) = 1;
  sub_22C369AEC();
  v159 = swift_allocObject();
  *(v159 + 16) = v157;
  *(v158 + 32) = v159;
  v139 = v158 | 0xA000000000000000;
  sub_22C36D2A8();
  v160 = swift_allocObject();
  sub_22C51E41C(v160);
LABEL_97:
  sub_22C369AEC();
  v161 = swift_allocObject();
  *(v161 + 16) = v139;
  *(v97 + 32) = v161;
  sub_22C36CCD8(v97 | 0xA000000000000000);
  *(v162 + 40) = 0;
  sub_22C36CC48();
}

uint64_t sub_22C517FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7 >= *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v27;
  }

  *(v6 + 16) = v7 + 1;
  *(v6 + 8 * v7 + 32) = v4;
  v8 = sub_22C90A2CC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  if (v12 >= v13 >> 1)
  {
    sub_22C591324();
    v6 = v28;
  }

  *(v6 + 16) = v12 + 1;
  *(v6 + 8 * v12 + 32) = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = 8250;
  *(v14 + 24) = 0xE200000000000000;
  v15 = *(v6 + 16);
  v16 = v15 + 1;
  if (v15 >= *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v29;
  }

  *(v6 + 16) = v16;
  *(v6 + 8 * v15 + 32) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  *(v17 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v17 + 32) = v18;
  v19 = v17 | 0xA000000000000000;
  v20 = *(v6 + 24);
  v21 = v15 + 2;

  if ((v15 + 2) > (v20 >> 1))
  {
    sub_22C591324();
    v6 = v30;
  }

  *(v6 + 16) = v21;
  *(v6 + 8 * v16 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  if ((v15 + 3) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v31;
  }

  *(v6 + 16) = v15 + 3;
  *(v6 + 8 * v21 + 32) = v22;
  v23 = sub_22C3DB9B0(v6);

  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  return v24 | 0x6000000000000000;
}

void sub_22C5182A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v238 = v25;
  v239 = v21;
  v235 = v26;
  v236 = v27;
  v233 = v28;
  v234 = v29;
  v31 = v30;
  v32 = sub_22C90077C();
  v33 = sub_22C36A7A4(v32, &a17);
  v230 = v34;
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C3698F8(v36 - v35);
  v37 = sub_22C908A8C();
  v38 = sub_22C36A7A4(v37, &a15);
  v228 = v39;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  sub_22C36D234(v41 - v40);
  v42 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v42);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  sub_22C3698F8(&v206 - v44);
  v45 = sub_22C9095CC();
  v46 = sub_22C36A7A4(v45, &v241);
  v212 = v47;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  sub_22C3698F8(v49 - v48);
  v50 = sub_22C90919C();
  v51 = sub_22C36A7A4(v50, &v244);
  v221 = v52;
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA64();
  sub_22C3698F8(v55);
  v56 = sub_22C9063DC();
  v57 = sub_22C36A7A4(v56, &a10);
  v224 = v58;
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  sub_22C3698F8(v61);
  v62 = sub_22C9091CC();
  v63 = sub_22C36A7A4(v62, &v242);
  v216 = v64;
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA64();
  sub_22C36D234(v66);
  v67 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v67);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v68);
  v70 = &v206 - v69;
  v71 = sub_22C9093BC();
  v72 = sub_22C36A7A4(v71, &a12);
  v220 = v73;
  MEMORY[0x28223BE20](v72);
  sub_22C369ABC();
  v76 = v74 - v75;
  MEMORY[0x28223BE20](v77);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  sub_22C3698F8(v79);
  v80 = sub_22C90952C();
  sub_22C369824();
  v82 = v81;
  MEMORY[0x28223BE20](v83);
  sub_22C369ABC();
  v86 = (v84 - v85);
  MEMORY[0x28223BE20](v87);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v88);
  v90 = &v206 - v89;
  v91 = v31;
  sub_22C9090AC();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v20);
  v92 = v80;
  v93 = v82 + 8;
  v94 = *(v82 + 8);
  v94(v90, v92);
  if (qword_27D9BA668 != -1)
  {
    sub_22C51E270(&qword_27D9BA668);
  }

  sub_22C37AA60(v92, qword_27D9E3EE0);
  v95 = sub_22C90950C();
  v96 = v92;
  v97 = v95;
  v237 = v96;
  (v94)(v20);
  if (v97)
  {
    v98 = v91;
    v99 = sub_22C90914C();
    sub_22C6053C8(v99, v70);

    v100 = v227;
    sub_22C36D0A8(v70, 1, v227);
    if (v101)
    {
      sub_22C36DD28(v70, &qword_27D9BB908, &qword_22C910960);
      sub_22C386758();
      sub_22C903F7C();
      v102 = v221;
      v103 = v219;
      v104 = v222;
      (*(v221 + 16))(v219, v98, v222);
      v105 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C383098();
      if (os_log_type_enabled(v105, v106))
      {
        sub_22C36FB44();
        v107 = sub_22C379928();
        v243 = v107;
        *v70 = 136315138;
        sub_22C90908C();
        sub_22C37E16C();
        (*(v102 + 8))(v103, v104);
        v108 = sub_22C372FA4();
        sub_22C36F9F4(v108, v109, v110);
        sub_22C38B194();

        *(v70 + 4) = v103;
        sub_22C51E320(&dword_22C366000, v111, v93, "Could not access AppEntity property of SearchAppEntity: %s");
        sub_22C36FF94(v107);
        sub_22C36D69C();
        sub_22C372FB0();
      }

      else
      {

        (*(v102 + 8))(v103, v104);
      }

      sub_22C36FB04();
      sub_22C3837F8();
      v160();
    }

    else
    {
      sub_22C3701F8();
      v114 = v223;
      v115(v223, v70, v100);
      v116 = v86[2];
      v116(v22, v114, v100);
      v117 = v86 + 11;
      v118 = v86[11];
      v119 = sub_22C372158();
      if (v118(v119) == *MEMORY[0x277D72A40])
      {
        v120 = sub_22C372158();
        v121(v120);
        v122 = swift_projectBox();
        v123 = v216;
        v124 = *(v216 + 16);
        v125 = v218;
        v126 = v217;
        v124(v218, v122, v217);

        sub_22C370208();
        sub_22C903F7C();
        v127 = v215;
        v124(v215, v125, v126);
        v128 = sub_22C9063CC();
        v129 = sub_22C90AADC();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = sub_22C36FB44();
          v239 = v130;
          v131 = v123;
          v132 = sub_22C370060();
          v243 = v132;
          *v130 = 136315138;
          sub_22C9091AC();
          sub_22C37E16C();
          v133 = *(v131 + 8);
          v133(v127);
          v134 = sub_22C372FA4();
          sub_22C36F9F4(v134, v135, v136);
          sub_22C38B194();

          v137 = v239;
          *(v239 + 4) = v127;
          _os_log_impl(&dword_22C366000, v128, v129, "❗️Deferred value is not supported: %s", v137, 0xCu);
          sub_22C36FF94(v132);
          sub_22C36D69C();
          sub_22C3699EC();

          sub_22C36FB04();
          sub_22C3837F8();
          v138();
          (v133)(v218, v126);
        }

        else
        {

          v188 = *(v123 + 8);
          v189 = sub_22C38A024();
          v188(v189);
          sub_22C36FB04();
          sub_22C3837F8();
          v190();
          (v188)(v125, v126);
        }

        (v86[1])(v223, v100);
        v161 = v238;
        *(v238 + 4) = 0;
        *v161 = 0u;
        v161[1] = 0u;
        goto LABEL_23;
      }

      v162 = v22;
      v163 = v86 + 1;
      v237 = v86[1];
      v237(v162, v100);
      v116(v76, v114, v100);
      v164 = sub_22C374C34();
      if (v118(v164) == *MEMORY[0x277D72A38])
      {
        v165 = sub_22C374C34();
        v166(v165);
        v167 = swift_projectBox();
        v168 = v221;
        v169 = v209;
        v170 = v222;
        (*(v221 + 16))(v209, v167, v222);

        sub_22C5182A8(v169, v234 & 1, v233, v235, v236, v171, v172, v173, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
        (*(v168 + 8))(v169, v170);
        v174 = sub_22C374C34();
        (v237)(v174);
        goto LABEL_24;
      }

      v191 = sub_22C374C34();
      v239 = v86 + 1;
      (v237)(v191);
      sub_22C37A078();
      sub_22C903F7C();
      sub_22C386758();
      v193 = v210;
      v194 = v91;
      v195 = v222;
      (*(v192 + 16))(v210, v194, v222);
      v196 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C383098();
      if (os_log_type_enabled(v196, v197))
      {
        sub_22C36FB44();
        v198 = sub_22C379928();
        v243 = v198;
        *v117 = 136315138;
        sub_22C90908C();
        sub_22C37E16C();
        (v163[1])(v193, v195);
        v199 = sub_22C372FA4();
        sub_22C36F9F4(v199, v200, v201);
        sub_22C38B194();

        *(v117 + 4) = v193;
        sub_22C51E320(&dword_22C366000, v202, v118, "Got a non-entity AppEntity property of SearchAppEntity: %s");
        sub_22C36FF94(v198);
        sub_22C36D69C();
        sub_22C372FB0();

        sub_22C36FB04();
        sub_22C3837F8();
        v203();
        v204 = v223;
      }

      else
      {

        (v163[1])(v193, v195);
        sub_22C36FB04();
        sub_22C3837F8();
        v205();
        v204 = v114;
      }

      v237(v204, v100);
    }

    sub_22C36CCD8(2);
LABEL_23:
    *(v161 + 40) = 1;
    goto LABEL_24;
  }

  v225 = v94;
  v227 = v93;
  type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  sub_22C9090AC();
  v112 = v226;
  sub_22C908B2C();
  sub_22C370208();
  MEMORY[0x2318B6010]();
  v113 = v232;
  sub_22C36FC2C();
  sub_22C908B1C();
  v208 = v90;
  sub_22C36FB04();
  v139(v76, v231);
  sub_22C36FB04();
  v140(v112, v229);
  sub_22C36D824();
  v141();
  v142 = sub_22C90947C();
  sub_22C51E3E4();
  sub_22C36C640(v143, v144, v145, v146);
  v147 = sub_22C371530();
  if (v148(v147) == *MEMORY[0x277D72B68])
  {
    v149 = sub_22C371530();
    v150(v149);
    sub_22C37A078();
    v142 = v213;
    (*(v151 + 32))(v211, v113, v213);
    v152 = v91;
    v153 = v233;
    sub_22C47D7E8();
    v155 = v154;
    v157 = v156;
    v158 = sub_22C372280();
    v159(v158);
  }

  else
  {
    v152 = v91;
    v175 = sub_22C371530();
    v176(v175);
    v153 = v233;
    sub_22C7F4FB4();
    v155 = v177;
    v157 = v178;
  }

  v179 = v239;
  v180 = v239[3];
  v181 = v239[4];
  sub_22C374168(v239, v180);

  sub_22C36D818();
  v207 = v152;
  sub_22C9090AC();
  v182 = v235;
  (*(v181 + 16))(&v240, v142, v153, v235, v155, v157, v180, v181);

  sub_22C36D824();
  v183();
  sub_22C386560();
  MEMORY[0x28223BE20](v184);
  sub_22C51E2D4();
  v185 = v207;
  *(v186 - 48) = v179;
  *(v186 - 40) = v185;
  *(v186 - 32) = v234 & 1;
  *(v186 - 24) = v153;
  *(v186 - 16) = v182;
  *(v186 - 8) = v236;
  v187 = sub_22C51E430();
  sub_22C512A28(v187, v238);

  sub_22C36DD28(&v243, &qword_27D9BAB08, &qword_22C91A110);
LABEL_24:
  sub_22C36CC48();
}

uint64_t sub_22C519298@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1[2];
  v33 = a1[3];
  v34 = a1[1];
  v31 = *a1;
  v32 = a1[4];
  v15 = a2[8];
  v16 = a2[9];
  sub_22C374168(a2 + 5, v15);
  (*(v16 + 8))(v35, a3, a4 & 1, a5, a6, a7, v15, v16);
  if (v36 == 1)
  {
    v17 = 0xF000000000000007;
    v19 = v33;
    v18 = v34;
    v20 = v14;
  }

  else
  {
    v22 = v35[3];
    v21 = v35[4];
    v24 = v35[1];
    v23 = v35[2];
    v17 = v35[0];

    sub_22C456CE4(v17, v24, v23, v22, v21, 0);
    v35[0] = MEMORY[0x277D84F90];

    sub_22C496A94();
    v26 = v25;

    v19 = v33;
    v18 = v34;
    v20 = v14;
    if ((v26 & 1) == 0)
    {
      v30 = v14;
      v27 = v32;
      sub_22C456C94(v34, v30, v33);
      v28 = sub_22C519F18(v31, v17);

      goto LABEL_6;
    }
  }

  v27 = v32;
  sub_22C456C94(v18, v20, v19);
  v28 = sub_22C51A900(v31, 0, 0xE000000000000000, 10536, 0xE200000000000000);
  result = sub_22C4546F8(v17);
LABEL_6:
  *a8 = v28;
  *(a8 + 8) = v18;
  *(a8 + 16) = v20;
  *(a8 + 24) = v19;
  *(a8 + 32) = v27;
  *(a8 + 40) = 0;
  return result;
}

void sub_22C519484(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  sub_22C36A83C();
  v7 = swift_allocObject();
  sub_22C9090DC();
  v8 = sub_22C90993C();
  sub_22C36D0A8(v6, 1, v8);
  if (v9)
  {
    sub_22C36DD28(v6, &qword_27D9BC390, &qword_22C912AC0);
    v10 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v10 = v6;
    sub_22C9098BC();
    sub_22C37E16C();
    sub_22C36BBA8();
    (*(v11 + 8))(v6, v8);
  }

  *(v7 + 16) = v10;
  *(v7 + 24) = v1;
  sub_22C3716D4();
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v12 + 32) = v13;
  sub_22C3716D4();
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  *(v14 + 24) = 1;
  sub_22C369AEC();
  v15 = swift_allocObject();
  *(v15 + 16) = v12 | 0xA000000000000000;
  *(v14 + 32) = v15;
  sub_22C3716D4();
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  *(v16 + 24) = 1;
  sub_22C369AEC();
  v17 = swift_allocObject();
  *(v17 + 16) = v14 | 0xA000000000000000;
  *(v16 + 32) = v17;
  *a1 = v16 | 0xA000000000000000;
  sub_22C37274C();
  *(a1 + 40) = 0;
}

void sub_22C519668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v102 = v20;
  v92 = v23;
  v97 = v24;
  v101 = v25;
  v27 = v26;
  sub_22C51E39C(v28);
  v29 = sub_22C90077C();
  v30 = sub_22C36A7A4(v29, &a12);
  v32 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v33 = sub_22C908A8C();
  v34 = sub_22C36A7A4(v33, &a11);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  sub_22C36D83C();
  v35 = sub_22C90952C();
  v36 = sub_22C36A7A4(v35, &a18);
  v95 = v37;
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C38822C();
  v39 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v39);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  v42 = &v90 - v41;
  v43 = sub_22C9095CC();
  sub_22C369824();
  v93 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  v48 = v47 - v46;
  type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v98 = v27;
  sub_22C9090AC();
  v49 = sub_22C908B2C();
  MEMORY[0x2318B6010](v49);
  sub_22C908B1C();
  v91 = v48;
  v50 = v93;
  v51 = sub_22C51E3D0();
  v52(v51);
  v53 = sub_22C51E408();
  v54(v53);
  v55 = *(v95 + 8);
  sub_22C37E2C4();
  v55();
  v56 = sub_22C90947C();
  sub_22C51E3E4();
  sub_22C36C640(v57, v58, v59, v60);
  v61 = *(v56 - 8);
  if ((*(v61 + 88))(v42, v56) == *MEMORY[0x277D72B68])
  {
    (*(v61 + 96))(v42, v56);
    v62 = *(v50 + 32);
    v90 = v43;
    v62(v91, v42, v43);
    v63 = v101;
    sub_22C47E38C();
    v65 = v64;
    v95 = v64;
    v94 = v66;
    v67 = v102;
    v68 = v102[3];
    v69 = v102[4];
    v70 = sub_22C37BD98();
    sub_22C374168(v70, v71);
    v72 = v96;
    sub_22C90959C();
    v73 = v63;
    v74 = v97;
    (*(v69 + 16))(v103, v72, v73, v97, v65, v94, v68, v69);
    (v55)(v72, v100);
    sub_22C51E3A8();
    MEMORY[0x28223BE20](v75);
    sub_22C51E2D4();
    v76 = v98;
    *(v77 - 48) = v67;
    *(v77 - 40) = v76;
    *(v77 - 32) = v101;
    *(v77 - 24) = v74;
    *(v77 - 16) = v92;
    v78 = sub_22C51E430();
    sub_22C512A28(v78, v99);

    sub_22C36DD28(v107, &qword_27D9BAB08, &qword_22C91A110);
    sub_22C36FB04();
    v79(v91, v90);
  }

  else
  {
    (*(v61 + 8))(v42, v56);
    v80 = v102[3];
    v81 = v102[4];
    sub_22C374168(v102, v80);
    v105 = v80;
    v106 = *(v81 + 8);
    sub_22C36D548(v104);
    sub_22C36BBA8();
    (*(v82 + 16))();
    v83 = v105;
    v84 = v106;
    sub_22C374168(v104, v105);
    sub_22C386758();
    v85 = v98;
    sub_22C9090AC();
    (*(v84 + 24))(v103, v32, v101, v97, v83, v84);
    v86 = sub_22C36FC74();
    (v55)(v86);
    sub_22C51E3A8();
    MEMORY[0x28223BE20](v87);
    sub_22C369920();
    *(v88 - 16) = v85;
    v89 = sub_22C51E430();
    sub_22C54DBA0(v89, v99);
    sub_22C36DD28(v107, &qword_27D9BAB08, &qword_22C91A110);
    sub_22C4BF148(v104);
  }

  sub_22C36CC48();
}

uint64_t sub_22C519D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1[1];
  v13 = a1[2];
  v32 = a1[3];
  v30 = *a1;
  v31 = a1[4];
  v14 = a2[8];
  v15 = a2[9];
  sub_22C374168(a2 + 5, v14);
  (*(v15 + 8))(v33, a3, a4, a5, a6, v14, v15);
  if (v34 == 1)
  {
    v16 = 0xF000000000000007;
    v17 = v12;
    v18 = v13;
  }

  else
  {
    v20 = v33[3];
    v19 = v33[4];
    v22 = v33[1];
    v21 = v33[2];
    v16 = v33[0];

    sub_22C456CE4(v16, v22, v21, v20, v19, 0);
    v33[0] = MEMORY[0x277D84F90];

    sub_22C496A94();
    LOBYTE(v22) = v23;

    v17 = v12;
    v18 = v13;
    if ((v22 & 1) == 0)
    {
      v28 = v12;
      v29 = v13;
      v25 = v31;
      v24 = v32;
      sub_22C456C94(v28, v29, v32);
      v26 = sub_22C519F18(v30, v16);

      goto LABEL_6;
    }
  }

  v25 = v31;
  v24 = v32;
  sub_22C456C94(v17, v18, v32);
  v26 = sub_22C51A900(v30, 0, 0xE000000000000000, 10536, 0xE200000000000000);
  result = sub_22C4546F8(v16);
LABEL_6:
  *a7 = v26;
  *(a7 + 8) = v17;
  *(a7 + 16) = v18;
  *(a7 + 24) = v24;
  *(a7 + 32) = v25;
  *(a7 + 40) = 0;
  return result;
}

uint64_t sub_22C519F18(uint64_t a1, uint64_t a2)
{
  sub_22C36A83C();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v19;
    v8 = *(v19 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v20;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  sub_22C36A83C();
  v11 = swift_allocObject();
  *(v11 + 16) = 40;
  *(v11 + 24) = 0xE100000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v21;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  sub_22C36A83C();
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  sub_22C3DB9B0(v6);

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v17 = swift_allocObject();
  return sub_22C51E360(v17);
}

uint64_t sub_22C51A14C()
{
  sub_22C51E374();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_22C372FA4();
  sub_22C374168(v3, v4);
  v7[3] = v1;
  v7[4] = *(v2 + 8);
  sub_22C36D548(v7);
  sub_22C36BBA8();
  (*(v5 + 16))();
  sub_22C3E8FB4(v0 + 40, &v8, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C4FC044();
  return sub_22C4BF340(v7);
}

void sub_22C51A210()
{
  sub_22C36BA7C();
  v59 = v3;
  v60 = v2;
  v5 = v4;
  v7 = v6;
  v58 = sub_22C90952C();
  sub_22C369824();
  v56 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v55 = v11 - v10;
  v12 = sub_22C90941C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v54 - v21);
  MEMORY[0x28223BE20](v20);
  sub_22C38822C();
  v23 = *(v14 + 16);
  v57 = v7;
  v23(v22, v7, v12);
  v24 = sub_22C51E290();
  v26 = v25(v24);
  if (v26 != *MEMORY[0x277D72AB0])
  {
    v32 = v5;
    v33 = v59;
    if (v26 != *MEMORY[0x277D72AE8])
    {
      if (v26 == *MEMORY[0x277D72AD8])
      {
        v37 = sub_22C51E290();
        v39 = v38(v37);
        MEMORY[0x28223BE20](v39);
        *(&v54 - 4) = v1;
        *(&v54 - 3) = v32;
        *(&v54 - 2) = v60;
        sub_22C3B31C4();
        v41 = sub_22C47F410(v40);
        v43 = v42;

        if (v43)
        {

          *v33 = v41;
          *(v33 + 8) = 0u;
          *(v33 + 24) = 0u;
          *(v33 + 40) = 1;
          goto LABEL_6;
        }

        v61[0] = v41;
        sub_22C51AA90(v61, v33);
        sub_22C50B2CC(v41, 0);
        *(v33 + 40) = 0;
        goto LABEL_3;
      }

      if (v26 == *MEMORY[0x277D72AB8])
      {
        v44 = sub_22C51E290();
        v45(v44);
        v54 = *v22;
        v46 = swift_projectBox();
        v48 = v55;
        v47 = v56;
        (*(v56 + 16))(v55, v46, v58);
        sub_22C47E8FC();
        sub_22C374168(v1, v1[3]);
        v49 = sub_22C371510();
        v50(v49);

        (*(v47 + 8))(v48, v58);
        goto LABEL_3;
      }

      if (v26 != *MEMORY[0x277D72AE0])
      {
        v51 = v1[3];
        v52 = v1[4];
        sub_22C374168(v1, v51);
        v61[3] = v51;
        v61[4] = *(v52 + 8);
        sub_22C36D548(v61);
        sub_22C36BBA8();
        (*(v53 + 16))();
        sub_22C3E8FB4((v1 + 5), &v62, &qword_27D9BD8A8, &qword_22C919AA0);
        sub_22C4FC314();
        sub_22C4BF340(v61);
        (*(v14 + 8))(v22, v12);
        goto LABEL_6;
      }
    }

    v34 = sub_22C51E290();
    v35(v34);
    v36 = swift_projectBox();
    v23(v0, v36, v12);

    sub_22C51A210();
    (*(v14 + 8))(v0, v12);
    goto LABEL_6;
  }

  v27 = sub_22C51E290();
  v28(v27);
  v29 = swift_projectBox();
  v23(v18, v29, v12);
  sub_22C37A06C();
  sub_22C51A210();
  MEMORY[0x28223BE20](v30);
  sub_22C369920();
  *(v31 - 16) = v1;
  sub_22C54DBA0(sub_22C51E0A4, v59);
  sub_22C36DD28(v61, &qword_27D9BAB08, &qword_22C91A110);
  (*(v14 + 8))(v18, v12);
LABEL_3:

LABEL_6:
  sub_22C36CC48();
}

void sub_22C51A77C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  sub_22C456C94(v5, v8, v7);
  v10 = sub_22C51A900(v6, 0x5B7473696CLL, 0xE500000000000000, 93, 0xE100000000000000);
  if (v8)
  {
    sub_22C3E8FB4(a2 + 40, v18, &qword_27D9BD8A8, &qword_22C919AA0);
    v15 = v10;
    if (v19)
    {
      sub_22C374168(v18, v19);
      v16[0] = v5;
      v16[1] = v8;
      v16[2] = v7;
      v16[3] = v9;

      sub_22C533804(v16, v17);
      v12 = v17[0];
      v11 = v17[1];
      v14 = v17[2];
      v13 = v17[3];
      sub_22C36FF94(v18);
    }

    else
    {

      sub_22C36DD28(v18, &qword_27D9BD8A8, &qword_22C919AA0);
      v12 = 0;
      v11 = 0;
      v14 = 0;
      v13 = 0;
    }

    sub_22C456D48(v5, v8, v7);
    v5 = v12;
    v7 = v14;
    v9 = v13;
    v10 = v15;
  }

  else
  {
    sub_22C456D48(v5, 0, v7);
    v11 = 0;
  }

  *a3 = v10;
  a3[1] = v5;
  a3[2] = v11;
  a3[3] = v7;
  a3[4] = v9;
}

uint64_t sub_22C51A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_22C374C14();
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C388CAC();
    sub_22C591324();
    v12 = v21;
    v14 = *(v21 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C3726E0();
    sub_22C591324();
    v12 = v22;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = a1;
  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = *(v12 + 24);

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C591324();
    v12 = v23;
  }

  *(v12 + 16) = v13 + 3;
  *(v12 + 8 * v16 + 32) = v17;
  sub_22C3DB9B0(v12);
  sub_22C38B194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v19 = swift_allocObject();
  return sub_22C51E360(v19);
}

uint64_t sub_22C51AA90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = (*a1 + 32);
  v7 = *a1 + 24;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v7 + 40 * v2;
  while (v5 != v2)
  {
    if (v2 >= *(v4 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    ++v2;
    v10 = (v9 + 40);
    v11 = *(v9 + 24);
    v9 += 40;
    if (v11)
    {
      v59 = *(v10 - 3);
      v60 = v7;
      v12 = *(v10 - 1);
      v13 = *v10;

      v61 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591018(0, *(v8 + 16) + 1, 1, v8);
        v8 = v17;
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22C591018(v14 > 1, v15 + 1, 1, v8);
        v8 = v18;
      }

      *(v8 + 16) = v15 + 1;
      v16 = (v8 + 32 * v15);
      v7 = v60;
      v16[4] = v59;
      v16[5] = v11;
      v16[6] = v12;
      v16[7] = v13;
      v3 = v61;
      goto LABEL_2;
    }
  }

  v66 = v8;

  sub_22C51B3A0(&v66, sub_22C56C3F0, sub_22C51B528);

  v23 = v66;
  v24 = *(v66 + 16);
  if (v24)
  {
    v66 = 0x5F6E6F696E75;
    v67 = 0xE600000000000000;
    v65 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v24, 0, v19, v20, v21, v22);
    v62 = v23;
    v25 = (v23 + 40);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v29 = *(v65 + 16);
      v28 = *(v65 + 24);

      if (v29 >= v28 >> 1)
      {
        sub_22C3B5E2C(v28 > 1, v29 + 1, 1, v30, v31, v32, v33);
      }

      *(v65 + 16) = v29 + 1;
      v34 = v65 + 16 * v29;
      *(v34 + 32) = v27;
      *(v34 + 40) = v26;
      v25 += 4;
      --v24;
    }

    while (v24);
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
    v35 = sub_22C90A04C();
    v37 = v36;

    MEMORY[0x2318B7850](v35, v37);

    sub_22C46BF90(v66, v67, v62, v38, v39, v40, v41, &v66);

    v42 = v67;
    v63 = v66;
    v44 = v68;
    v43 = v69;
  }

  else
  {

    v63 = 0;
    v42 = 0;
    v44 = 0;
    v43 = 0;
  }

  v45 = *(v4 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v66 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v45, 0);
    v46 = v66;
    v47 = *(v66 + 16);
    do
    {
      v49 = *v6;
      v6 += 5;
      v48 = v49;
      v66 = v46;
      v50 = *(v46 + 24);

      if (v47 >= v50 >> 1)
      {
        sub_22C3B63D4(v50 > 1, v47 + 1, 1);
        v46 = v66;
      }

      *(v46 + 16) = v47 + 1;
      *(v46 + 8 * v47++ + 32) = v48;
      --v45;
    }

    while (v45);
  }

  v51 = sub_22C3DB9B0(v46);

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22C9114A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v52 + 32) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = v52 | 0x8000000000000000;
  *(v54 + 32) = v55;
  v56 = sub_22C529D00(2128928, 0xE300000000000000, v54 | 0x8000000000000000);

  v57 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = v56;
  *(v57 + 16) = result;
  *a2 = v57 | 0x6000000000000000;
  a2[1] = v63;
  a2[2] = v42;
  a2[3] = v44;
  a2[4] = v43;
  return result;
}

void sub_22C51AF44()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22C90046C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C36D83C();
  v10 = sub_22C90931C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, v6, v10);
  v17 = sub_22C37A06C();
  v19 = v18(v17);
  if (v19 != *MEMORY[0x277D72988] && v19 != *MEMORY[0x277D72978] && v19 != *MEMORY[0x277D729A8] && v19 != *MEMORY[0x277D729C0])
  {
    if (v19 == *MEMORY[0x277D729B8] || v19 == *MEMORY[0x277D72990] || v19 == *MEMORY[0x277D72958])
    {
      goto LABEL_19;
    }

    if (v19 == *MEMORY[0x277D72980])
    {
      v27 = sub_22C37A06C();
      v28(v27);
      v29 = sub_22C51E388();
      v30(v29, v16, v4);
      type metadata accessor for PrimitiveValueRenderer_v2_0(0);
      type metadata accessor for FullPlannerPreferences(0);
      sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
      sub_22C901EDC();
      sub_22C36A83C();
      v31 = swift_allocObject();
      v32 = sub_22C90036C();
      v34 = v33;
      (*(v2 + 8))(v0, v4);
      *(v31 + 16) = v32;
      *(v31 + 24) = v34;
      sub_22C3716D4();
      v35 = swift_allocObject();
      *(v35 + 16) = *v50;
      *(v35 + 24) = 0;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      *(v35 + 32) = v36;
      sub_22C3716D4();
      v37 = swift_allocObject();
      *(v37 + 16) = 3;
      *(v37 + 24) = 1;
      sub_22C369AEC();
      v38 = swift_allocObject();
      *(v38 + 16) = v35 | 0xA000000000000000;
      *(v37 + 32) = v38;
      *v50 = v37 | 0xA000000000000000;
      memset(&v50[8], 0, 32);
      v51 = 0;
      goto LABEL_21;
    }

    v39 = v19 == *MEMORY[0x277D72968] || v19 == *MEMORY[0x277D72940];
    v40 = v39 || v19 == *MEMORY[0x277D72950];
    v41 = v40 || v19 == *MEMORY[0x277D72948];
    v42 = v41 || v19 == *MEMORY[0x277D729D0];
    v43 = v42 || v19 == *MEMORY[0x277D729B0];
    v44 = v43 || v19 == *MEMORY[0x277D72998];
    v45 = v44 || v19 == *MEMORY[0x277D72970];
    v46 = v45 || v19 == *MEMORY[0x277D72960];
    if (v46 || v19 == *MEMORY[0x277D72938])
    {
LABEL_19:
      v25 = sub_22C37A06C();
      v26(v25);
    }

    else if (v19 != *MEMORY[0x277D729A0])
    {
      sub_22C38129C();
      v48 = sub_22C37A06C();
      v49(v48);
      goto LABEL_21;
    }
  }

  sub_22C38129C();
LABEL_21:
  *v8 = *v50;
  *(v8 + 16) = *&v50[16];
  *(v8 + 32) = *&v50[32];
  *(v8 + 40) = v51;
  sub_22C36CC48();
}

uint64_t sub_22C51B3A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_22C51B424(uint64_t *a1)
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
        sub_22C3A5908(&qword_27D9BAB18, &qword_22C91D700);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C51BEA0(v7, v8, a1, v4);
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
    return sub_22C51B61C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C51B528(uint64_t *a1)
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C51C3F0(v7, v8, a1, v4);
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
    return sub_22C51B6F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C51B61C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_22C90B4FC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}