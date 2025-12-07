uint64_t sub_220D96EB4(uint64_t a1, void **a2)
{
  v23 = sub_220DC0300();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_220DC0A40();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = *a2;
  sub_220CF6B14(a1, &v21 - v10, &qword_27CF95648, &qword_220DC2D00);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    sub_220CE1ABC(v11, &qword_27CF95648, &qword_220DC2D00);
    return 0;
  }

  else
  {
    v15 = v8;
    sub_220DC02B0();
    sub_220DBF130();
    swift_allocObject();
    v21 = v13;
    v16 = v12;
    sub_220DBF120();
    v17 = [v16 symbol];
    sub_220DC0620();

    v18 = v23;
    (*(v4 + 104))(v6, *MEMORY[0x277D7B408], v23);
    sub_220CF6ABC();
    v19 = v22;
    v14 = sub_220DBE090();

    (*(v4 + 8))(v6, v18);
    (*(v24 + 8))(v15, v19);
    (*(*(v21 - 8) + 8))(v11);
  }

  return v14;
}

uint64_t sub_220D97208@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void (*)(void), uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v228 = a8;
  v247 = a7;
  v248 = a4;
  v254 = a6;
  v242 = a5;
  v243 = a2;
  v256 = a3;
  v244 = a1;
  v245 = a9;
  v233 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v231 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_4_4(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_4(&v223 - v16);
  v232 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v226 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_4(&v223 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_4(&v223 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v223 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v223 - v36;
  v39 = *a10;
  v38 = *(a10 + 8);
  v41 = *(a10 + 16);
  v40 = *(a10 + 24);
  v42 = *(a10 + 32);
  v43 = *(a10 + 40);
  v238 = v24;
  v44 = *(v24 + 16);
  v246 = v24 + 16;
  v241 = v44;
  v44(&v223 - v36, v256, v22);
  OUTLINED_FUNCTION_7();
  v255 = v22;
  v45 = v22;
  v46 = v43;
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v45);
  v257 = v39;
  v258 = v38;
  v259 = v41;
  v260 = v40;
  v261 = v42;
  v262 = v43;
  v50 = sub_220D96EB4(v37, &v257);
  v52 = v51;
  v240 = v37;
  sub_220CE1ABC(v37, &qword_27CF95648, &qword_220DC2D00);
  v251 = v39;
  v252 = v38;
  v257 = v39;
  v258 = v38;
  v249 = v41;
  v250 = v42;
  v259 = v41;
  v260 = v40;
  v253 = v40;
  v261 = v42;
  v262 = v46;
  v54 = v50 == sub_220D96EB4(v254, &v257) && v52 == v53;
  if (v54)
  {
  }

  else
  {
    v55 = sub_220DC0CA0();

    if ((v55 & 1) == 0)
    {
      v56 = 1;
      goto LABEL_14;
    }
  }

  v57 = v240;
  v58 = v255;
  v241(v240, v248, v255);
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  v62 = v251;
  v63 = v252;
  v257 = v251;
  v258 = v252;
  v65 = v249;
  v64 = v250;
  v66 = v253;
  v259 = v249;
  v260 = v253;
  v261 = v250;
  v262 = v46;
  v67 = sub_220D96EB4(v57, &v257);
  v69 = v68;
  sub_220CE1ABC(v57, &qword_27CF95648, &qword_220DC2D00);
  v257 = v62;
  v258 = v63;
  v259 = v65;
  v260 = v66;
  v261 = v64;
  v262 = v46;
  if (v67 == sub_220D96EB4(v247, &v257) && v69 == v70)
  {

    v56 = 0;
  }

  else
  {
    v72 = sub_220DC0CA0();

    v56 = v72 ^ 1;
  }

LABEL_14:
  sub_220CF6B14(v254, v35, &qword_27CF95648, &qword_220DC2D00);
  v73 = v255;
  if (__swift_getEnumTagSinglePayload(v35, 1, v255) == 1)
  {
LABEL_17:
    sub_220CE1ABC(v35, &qword_27CF95648, &qword_220DC2D00);
LABEL_18:
    OUTLINED_FUNCTION_14_17();
    v259 = v249;
    v260 = v253;
    v261 = v250;
    v262 = v46;
    sub_220D96618(v244, v243, v256, v248, v242, &v257);
    sub_220DC0240();
  }

  v74 = v238;
  v75 = *(v238 + 32);
  v76 = v239;
  v75(v239, v35, v73);
  v35 = v236;
  sub_220CF6B14(v247, v236, &qword_27CF95648, &qword_220DC2D00);
  if (__swift_getEnumTagSinglePayload(v35, 1, v73) == 1)
  {
    (*(v74 + 8))(v76, v73);
    goto LABEL_17;
  }

  v254 = v46;
  v78 = v237;
  v75(v237, v35, v73);
  if ((v56 & 1) == 0)
  {
    v87 = *(v74 + 8);
    v87(v78, v73);
    v87(v76, v73);
    v46 = v254;
    goto LABEL_18;
  }

  v79 = v225;
  sub_220CF6B14(v242, v225, &qword_27CF951E0, &unk_220DC1D80);
  v80 = v232;
  if (__swift_getEnumTagSinglePayload(v79, 1, v232) == 1)
  {
    v81 = v227;
    sub_220DBE3E0();
    OUTLINED_FUNCTION_23_12();
    sub_220DBE6A0();
    v82 = v224;
    sub_220DBE390();
    (*(v231 + 8))(v76, v233);
    OUTLINED_FUNCTION_23_12();
    v84 = v81;
    v85 = v82;
    (*(v83 + 8))(v84, v80);
    OUTLINED_FUNCTION_5_21(v79);
    v86 = v230;
    if (!v54)
    {
      sub_220CE1ABC(v79, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    v85 = v224;
    (*(v88 + 32))(v224, v79, v80);
    v86 = v230;
  }

  LODWORD(v247) = sub_220DBE440();
  v89 = *(v76 + 8);
  v89(v85, v80);
  sub_220CF6B14(v228, v86, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_5_21(v86);
  if (v54)
  {
    v90 = v227;
    sub_220DBE3E0();
    OUTLINED_FUNCTION_23_12();
    sub_220DBE6A0();
    v91 = v229;
    sub_220DBE390();
    v92 = v91;
    (*(v231 + 8))(v76, v233);
    v89(v90, v80);
    OUTLINED_FUNCTION_5_21(v86);
    if (!v54)
    {
      sub_220CE1ABC(v86, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    v92 = v229;
    (*(v76 + 32))(v229, v86, v80);
  }

  v93 = sub_220DBE440();
  v89(v92, v80);
  v94 = v247 & v93;
  v95 = v234;
  sub_220DBE110();
  v96 = v235;
  sub_220DBE110();
  sub_220D287C0();
  v97 = OUTLINED_FUNCTION_25_10();
  v98 = *(v74 + 8);
  v99 = v255;
  v98(v96, v255);
  v98(v95, v99);
  sub_220DBE110();
  v100 = v237;
  sub_220DBE110();
  v101 = OUTLINED_FUNCTION_25_10();
  v98(v96, v99);
  v238 = v74 + 8;
  v247 = v98;
  v98(v95, v99);
  if ((v97 & 1) == 0)
  {
    if ((v101 & 1) == 0)
    {
      if (v94)
      {
        OUTLINED_FUNCTION_19();
        if (!v54)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      else
      {
        OUTLINED_FUNCTION_19();
        if (!v54)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_6_0();
      v234 = sub_220DBE240();
      v233 = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v243 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_0();
      v181 = v180;
      v183 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v242 = *(v182 + 72);
      v184 = v242;
      v185 = swift_allocObject();
      v232 = v185;
      *(v185 + 16) = xmmword_220DC1CE0;
      v244 = (v185 + v183);
      v186 = v240;
      v187 = v255;
      OUTLINED_FUNCTION_10_22();
      v96();
      v188 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
      v191 = v251;
      v192 = v252;
      v257 = v251;
      v258 = v252;
      v259 = v249;
      v260 = v253;
      v193 = OUTLINED_FUNCTION_11_17();
      v195 = v194;
      sub_220CE1ABC(v186, &qword_27CF95648, &qword_220DC2D00);
      v196 = v244;
      *v244 = v193;
      *(v196 + 1) = v195;
      LODWORD(v236) = *MEMORY[0x277D7B3C8];
      v197 = *(v181 + 104);
      v235 = (v181 + 104);
      v256 = v197;
      (v197)(v196);
      v198 = &v196[v184];
      (v96)(v186, v248, v187);
      v199 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v187);
      v257 = v191;
      v258 = v192;
      v202 = v249;
      v203 = v250;
      v204 = v253;
      v259 = v249;
      v260 = v253;
      v261 = v250;
      v262 = v254;
      sub_220D96EB4(v186, &v257);
      v205 = OUTLINED_FUNCTION_20_7();
      sub_220CE1ABC(v205, &qword_27CF95648, &qword_220DC2D00);
      *v198 = v192;
      *(v198 + 1) = v196;
      (v256)(&v196[v184], v236, v243);
      v206 = &v244[2 * v242];
      v207 = v255;
      (v96)(v186, v239, v255);
      v208 = OUTLINED_FUNCTION_3_29();
      v209 = v207;
      __swift_storeEnumTagSinglePayload(v208, v210, v211, v207);
      OUTLINED_FUNCTION_14_17();
      v259 = v202;
      v260 = v204;
      v212 = v254;
      v261 = v203;
      v262 = v254;
      v213 = sub_220D96EB4(v186, &v257);
      v215 = v214;
      sub_220CE1ABC(v186, &qword_27CF95648, &qword_220DC2D00);
      *v206 = v213;
      *(v206 + 1) = v215;
      v216 = v236;
      v217 = v243;
      v100 = v256;
      (v256)(v206, v236, v243);
      v218 = &v244[3 * v242];
      v241(v186, v237, v209);
      v219 = OUTLINED_FUNCTION_3_29();
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v209);
      OUTLINED_FUNCTION_14_17();
      v259 = v202;
      v260 = v253;
      v261 = v250;
      v262 = v212;
      sub_220D96EB4(v186, &v257);
      v222 = OUTLINED_FUNCTION_21_10();
      sub_220CE1ABC(v222, &qword_27CF95648, &qword_220DC2D00);
      *v218 = v202;
      *(v218 + 1) = v213;
      (v100)(v218, v216, v217);
      sub_220DC0220();
      OUTLINED_FUNCTION_22_10();
      v100();
      v177 = v239;
      v178 = v209;
      return (v100)(v177, v178);
    }

    if (v94)
    {
      OUTLINED_FUNCTION_19();
      if (!v54)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v54)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v236 = sub_220DBE240();
    v235 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v244 = OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_0();
    v132 = v131;
    v133 = OUTLINED_FUNCTION_15_14(&v263);
    OUTLINED_FUNCTION_18_14(v133, &v264, xmmword_220DC1CC0);
    v134 = v255;
    OUTLINED_FUNCTION_10_22();
    v96();
    v135 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
    v138 = OUTLINED_FUNCTION_12_22();
    v140 = v139;
    sub_220CE1ABC(v98, &qword_27CF95648, &qword_220DC2D00);
    *v95 = v138;
    *(v95 + 1) = v140;
    LODWORD(v242) = *MEMORY[0x277D7B3C8];
    v141 = *(v132 + 104);
    v243 = v132 + 104;
    v256 = v141;
    (v141)(v95);
    v142 = v233;
    v143 = (v95 + v233);
    (v96)(v98, v248, v134);
    v144 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v134);
    OUTLINED_FUNCTION_17_11();
    v147 = OUTLINED_FUNCTION_20_7();
    sub_220CE1ABC(v147, &qword_27CF95648, &qword_220DC2D00);
    *v143 = v94;
    v143[1] = v101;
    v148 = v244;
    (v256)(v95 + v142, v242, v244);
    v149 = OUTLINED_FUNCTION_19_12();
    (v96)(v149);
    v150 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v134);
    OUTLINED_FUNCTION_14_17();
    v259 = v100;
    v260 = v253;
    OUTLINED_FUNCTION_11_17();
    v153 = OUTLINED_FUNCTION_21_10();
    sub_220CE1ABC(v153, &qword_27CF95648, &qword_220DC2D00);
    *v101 = v95;
    *(v101 + 8) = v143;
    (v256)(v101, v242, v148);
LABEL_57:
    sub_220DC0220();
    OUTLINED_FUNCTION_22_10();
    v100();
    v177 = v239;
    v178 = v134;
    return (v100)(v177, v178);
  }

  if ((v101 & 1) == 0)
  {
    if (v94)
    {
      OUTLINED_FUNCTION_19();
      if (!v54)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v54)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_6_0();
    v242 = sub_220DBE240();
    v236 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v256 = OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_0();
    v156 = v155;
    v157 = OUTLINED_FUNCTION_15_14(&v264);
    OUTLINED_FUNCTION_18_14(v157, &v265, xmmword_220DC1CC0);
    v134 = v255;
    OUTLINED_FUNCTION_10_22();
    v96();
    v158 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v134);
    v161 = OUTLINED_FUNCTION_12_22();
    v163 = v162;
    sub_220CE1ABC(v98, &qword_27CF95648, &qword_220DC2D00);
    *v95 = v161;
    *(v95 + 1) = v163;
    LODWORD(v243) = *MEMORY[0x277D7B3C8];
    v164 = *(v156 + 104);
    v244 = (v156 + 104);
    v248 = v164;
    (v164)(v95);
    v165 = v234;
    v166 = (v95 + v234);
    (v96)(v98, v239, v134);
    v167 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v134);
    OUTLINED_FUNCTION_17_11();
    v170 = OUTLINED_FUNCTION_20_7();
    sub_220CE1ABC(v170, &qword_27CF95648, &qword_220DC2D00);
    *v166 = v94;
    v166[1] = v101;
    v171 = v256;
    (v248)(v95 + v165, v243, v256);
    v172 = OUTLINED_FUNCTION_19_12();
    (v96)(v172);
    v173 = OUTLINED_FUNCTION_3_29();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v134);
    OUTLINED_FUNCTION_14_17();
    v259 = v100;
    v260 = v253;
    OUTLINED_FUNCTION_11_17();
    v176 = OUTLINED_FUNCTION_21_10();
    sub_220CE1ABC(v176, &qword_27CF95648, &qword_220DC2D00);
    *v101 = v95;
    *(v101 + 8) = v166;
    (v248)(v101, v243, v171);
    goto LABEL_57;
  }

  if (v94)
  {
    v102 = v240;
    OUTLINED_FUNCTION_19();
    if (!v54)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  else
  {
    v102 = v240;
    OUTLINED_FUNCTION_19();
    if (!v54)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_0();
  v256 = sub_220DBE240();
  v244 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v242 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0();
  v105 = v104;
  v107 = *(v106 + 72);
  v108 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v109 = swift_allocObject();
  v243 = v109;
  *(v109 + 16) = xmmword_220DC17C0;
  v110 = (v109 + v108);
  v111 = v255;
  OUTLINED_FUNCTION_31_6();
  v112();
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v111);
  OUTLINED_FUNCTION_14_17();
  v116 = OUTLINED_FUNCTION_26_8();
  v118 = v117;
  sub_220CE1ABC(v102, &qword_27CF95648, &qword_220DC2D00);
  *v110 = v116;
  v110[1] = v118;
  v119 = *MEMORY[0x277D7B3C8];
  v120 = *(v105 + 104);
  v105 += 104;
  v121 = v242;
  v120(v110, v119, v242);
  v122 = (v110 + v107);
  OUTLINED_FUNCTION_31_6();
  v123();
  OUTLINED_FUNCTION_7();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v111);
  OUTLINED_FUNCTION_14_17();
  v127 = OUTLINED_FUNCTION_26_8();
  v129 = v128;
  sub_220CE1ABC(v102, &qword_27CF95648, &qword_220DC2D00);
  *v122 = v127;
  v122[1] = v129;
  v120(v122, v119, v121);
  sub_220DC0220();
  OUTLINED_FUNCTION_22_10();
  (v105)();
  return (v105)(v239, v111);
}

uint64_t ChartViewModelInterpolationMode.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220D9882C()
{
  result = qword_27CF96450;
  if (!qword_27CF96450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF96450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChartViewModelInterpolationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FeelsLikeDifferenceRule(_BYTE *result, int a2, int a3)
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

uint64_t FeelsLikeNoDifferenceRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeNoDifferenceRule(_BYTE *result, int a2, int a3)
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

uint64_t static ConditionDetailChartHeaderInput.HeaderKind.== infix(_:_:)(char *a1, char *a2)
{
  v70 = a1;
  v71 = a2;
  v69 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v72 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &v65 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v68 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = (v17 - v16);
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_6();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96458, &unk_220DC7740);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v65 - v30;
  v32 = &v65 + *(v29 + 56) - v30;
  sub_220D34C0C(v70, &v65 - v30);
  sub_220D34C0C(v71, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D34C0C(v31, v25);
      v34 = swift_getEnumCaseMultiPayload();
      v35 = v72;
      if (v34 == 1)
      {
        v36 = v66;
        v37 = v69;
        (*(v72 + 32))(v66, v32, v69);
        v38 = sub_220DBE7F0();
        v39 = *(v35 + 8);
        v39(v36, v37);
        v39(v25, v37);
LABEL_15:
        sub_220D9914C(v31);
        return v38 & 1;
      }

      (*(v72 + 8))(v25, v69);
    }

    else
    {
      sub_220D34C0C(v31, v22);
      v43 = swift_getEnumCaseMultiPayload();
      v44 = v72;
      if (v43 == 2)
      {
        v45 = v67;
        v46 = v32;
        v47 = v69;
        (*(v72 + 32))(v67, v46, v69);
        v38 = sub_220DBE7F0();
        v48 = *(v44 + 8);
        v48(v45, v47);
        v48(v22, v47);
        goto LABEL_15;
      }

      (*(v72 + 8))(v22, v69);
    }

    goto LABEL_11;
  }

  v40 = v18;
  v71 = v10;
  v41 = v68;
  sub_220D34C0C(v31, v27);
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v72 + 8))(&v27[v42], v69);
    (*(v41 + 1))(v27, v13);
LABEL_11:
    sub_220CDA548(v31, &qword_27CF96458, &unk_220DC7740);
    goto LABEL_12;
  }

  v49 = *(v41 + 4);
  v50 = v40;
  v65 = v13;
  v49(v40, v32, v13);
  v51 = v72;
  v52 = *(v72 + 32);
  v70 = v12;
  v53 = v12;
  v54 = v69;
  v52(v53, &v27[v42], v69);
  v55 = &v32[v42];
  v56 = v71;
  v52(v71, v55, v54);
  v57 = sub_220DBEA00();
  v58 = *(v41 + 1);
  v59 = v27;
  v60 = v65;
  v58(v59, v65);
  if (v57)
  {
    v68 = v50;
    v61 = v70;
    v38 = sub_220DBE7F0();
    v62 = *(v51 + 8);
    v62(v56, v54);
    v62(v61, v54);
    v58(v68, v60);
    goto LABEL_15;
  }

  v64 = *(v51 + 8);
  v64(v56, v54);
  v64(v70, v54);
  v58(v50, v60);
  sub_220D9914C(v31);
LABEL_12:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_220D9914C(uint64_t a1)
{
  v2 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConditionDetailChartHeaderInput.condition.getter()
{
  result = OUTLINED_FUNCTION_5_29();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConditionDetailChartHeaderInput.hourlyForecast.getter()
{
  OUTLINED_FUNCTION_5_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_2_10();

  return v1(v0);
}

uint64_t ConditionDetailChartHeaderInput.selectedDate.getter()
{
  OUTLINED_FUNCTION_5_29();
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_2_10();

  return v1(v0);
}

uint64_t ConditionDetailChartHeaderInput.timeZone.getter()
{
  OUTLINED_FUNCTION_5_29();
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_2_10();

  return v1(v0);
}

uint64_t ConditionDetailChartHeaderInput.init(kind:condition:hourlyForecast:selectedDate:timeZone:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  sub_220D99458(a1, a6);
  v11 = type metadata accessor for ConditionDetailChartHeaderInput(0);
  *(a6 + v11[5]) = v10;
  v12 = v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(a6 + v12, a3);
  v14 = v11[7];
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  (*(v15 + 32))(a6 + v14, a4);
  v16 = v11[8];
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v18 = *(v17 + 32);

  return v18(a6 + v16, a5);
}

uint64_t sub_220D99458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConditionDetailChartHeaderInput.with(selectedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5];
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v31 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28[-v17];
  v19 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_220D34C0C(v2, v21 - v20);
  v23 = type metadata accessor for ConditionDetailChartHeaderInput(0);
  v24 = v23[6];
  v29 = *(v2 + v23[5]);
  (*(v15 + 16))(v18, v2 + v24, v13);
  sub_220D56F0C(v30, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v9 + 16))(v31, v2 + v23[7], v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_220CDA548(v6, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v9 + 32))(v31, v6, v7);
  }

  v25 = v23[8];
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  (*(v26 + 16))(a2 + v25, v2 + v25);
  sub_220D99458(v22, a2);
  *(a2 + v23[5]) = v29;
  (*(v15 + 32))(a2 + v23[6], v18, v13);
  return (*(v9 + 32))(a2 + v23[7], v31, v7);
}

uint64_t static ConditionDetailChartHeaderInput.== infix(_:_:)(char *a1, char *a2)
{
  if (static ConditionDetailChartHeaderInput.HeaderKind.== infix(_:_:)(a1, a2))
  {
    v4 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    if (sub_220D05D68(a1[*(v4 + 20)], a2[*(v4 + 20)]))
    {
      sub_220DBE960();
      sub_220D99924(&qword_280FA7758, MEMORY[0x277CE31B8]);
      sub_220D99924(&qword_280FA7768, MEMORY[0x277CE31A8]);
      sub_220D99924(&qword_280FA7760, MEMORY[0x277CE31B0]);
      if (sub_220DBEF80() & 1) != 0 && (sub_220DBE460())
      {

        JUMPOUT(0x223D96350);
      }
    }
  }

  return 0;
}

uint64_t sub_220D99924(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_220DBE960();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220D99994(uint64_t a1)
{
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(319);
  if (v1 <= 0x3F)
  {
    sub_220CD431C(319);
    if (v2 <= 0x3F)
    {
      sub_220DBE560();
      if (v3 <= 0x3F)
      {
        sub_220DBE740();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D99A50(uint64_t a1)
{
  sub_220D99AC4(319);
  if (v1 <= 0x3F)
  {
    sub_220D99B38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D99AC4(uint64_t a1)
{
  if (!qword_27CF96480)
  {
    sub_220DBEAD0();
    sub_220DBE830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96480);
    }
  }
}

void sub_220D99B38()
{
  if (!qword_27CF96488)
  {
    v0 = sub_220DBE830();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96488);
    }
  }
}

uint64_t HumidityTitleStringBuilder.makeAttributedHumidityString(_:symbolFont:symbolColor:symbolSpacing:)@<X0>(double a3@<X2>, double a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v55 = a4;
  v53 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96490, &qword_220DC7808);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_9();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96498, &qword_220DC7810);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v52 = v17;
  MEMORY[0x28223BE20](v18);
  v57 = (v51 - v19);
  v20 = sub_220DBE260();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_220DBE210();
  v58 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_220DBE250();
  sub_220DBE220();
  sub_220CEFE04();
  v24 = sub_220DC09F0();
  v25 = v21;
  v26 = sub_220CEFE48(v24);
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v54 = a5;
    v61 = v26;
    v62 = v27;
    sub_220DBE5E0();
    OUTLINED_FUNCTION_3_30();
    v30 = sub_220D9A174();
    v51[2] = sub_220CEFF14();
    sub_220DBE280();
    sub_220CE1ABC(v10, &qword_27CF95228, &unk_220DC1E60);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {

      sub_220CE1ABC(v15, &qword_27CF96490, &qword_220DC7808);
      a5 = v54;
    }

    else
    {
      v31 = v15;
      v32 = v57;
      sub_220D9A1CC(v31, v57);
      v51[0] = v30;
      v33 = v55;

      v51[1] = sub_220D9A23C();
      sub_220DBE230();
      OUTLINED_FUNCTION_21();
      v59 = v33;
      v34 = sub_220D9A2A0();
      OUTLINED_FUNCTION_4_25(v34, MEMORY[0x277CDF230]);
      v35 = OUTLINED_FUNCTION_1_37();
      v32(v35);
      v61 = 0x3D3F28645CLL;
      v62 = 0xE500000000000000;
      MEMORY[0x223D982B0](v28, v29);

      MEMORY[0x223D982B0](41, 0xE100000000000000);
      v36 = v62;
      OUTLINED_FUNCTION_3_30();
      v37 = v56;
      v38 = v25;
      sub_220DBE280();
      sub_220CE1ABC(v10, &qword_27CF95228, &unk_220DC1E60);

      if (__swift_getEnumTagSinglePayload(v37, 1, v16) == 1)
      {
        sub_220CE1ABC(v37, &qword_27CF96490, &qword_220DC7808);
        v39 = v57;
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v59 = a6;
        v60 = 0;
        v40 = sub_220D9A2F4();
        OUTLINED_FUNCTION_4_25(v40, MEMORY[0x277CDF278]);
        v41 = OUTLINED_FUNCTION_1_37();
        v36(v41);
        a5 = v54;
        v42 = v39;
      }

      else
      {
        v43 = v52;
        sub_220D9A1CC(v37, v52);
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v59 = a6;
        v60 = 0;
        v44 = sub_220D9A2F4();
        OUTLINED_FUNCTION_4_25(v44, MEMORY[0x277CDF278]);
        v45 = OUTLINED_FUNCTION_1_37();
        v36(v45);
        v46 = v53;

        v47 = v57;
        sub_220DBE230();
        OUTLINED_FUNCTION_21();
        v59 = v46;
        v48 = sub_220D9A348();
        OUTLINED_FUNCTION_4_25(v48, MEMORY[0x277CDF260]);
        v49 = OUTLINED_FUNCTION_1_37();
        v36(v49);
        sub_220CE1ABC(v43, &qword_27CF96498, &qword_220DC7810);
        a5 = v54;
        v42 = v47;
      }

      sub_220CE1ABC(v42, &qword_27CF96498, &qword_220DC7810);
      v25 = v38;
    }
  }

  return (*(v58 + 32))(a5, v23, v25);
}

unint64_t sub_220D9A174()
{
  result = qword_27CF964A0;
  if (!qword_27CF964A0)
  {
    sub_220DBE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964A0);
  }

  return result;
}

uint64_t sub_220D9A1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96498, &qword_220DC7810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220D9A23C()
{
  result = qword_27CF964A8;
  if (!qword_27CF964A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96498, &qword_220DC7810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964A8);
  }

  return result;
}

unint64_t sub_220D9A2A0()
{
  result = qword_27CF964B0;
  if (!qword_27CF964B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964B0);
  }

  return result;
}

unint64_t sub_220D9A2F4()
{
  result = qword_27CF964B8;
  if (!qword_27CF964B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964B8);
  }

  return result;
}

unint64_t sub_220D9A348()
{
  result = qword_27CF964C0;
  if (!qword_27CF964C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HumidityTitleStringBuilder(_BYTE *result, int a2, int a3)
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

double ChartSeriesValues.interpolationElements.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_18(v2 + 16, a2);

  return result;
}

uint64_t ChartSeriesValues.interpolationElements.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_23(v2 + 16, a2);
  *(v2 + 16) = a1;
}

uint64_t ChartSeriesValues.seriesMinValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 24, v3);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 40, v3);
  *(v1 + 40) = v2;
  *(v1 + 48) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMinSecondValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 56, v3);
  *(v1 + 56) = v2;
  *(v1 + 64) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxSecondValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 72, v3);
  *(v1 + 72) = v2;
  *(v1 + 80) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMinThirdValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 88, v3);
  *(v1 + 88) = v2;
  *(v1 + 96) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.seriesMaxThirdValue.setter()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_10_23(v1 + 104, v3);
  *(v1 + 104) = v2;
  *(v1 + 112) = v0 & 1;
  return result;
}

uint64_t ChartSeriesValues.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 113, 7);
}

uint64_t sub_220D9AA10()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  return result;
}

void sub_220D9AA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9)
{
  v174 = a7;
  v207 = a6;
  v206 = a5;
  v173 = a4;
  v204 = a2;
  v172 = a9;
  v171 = type metadata accessor for WeatherValueCalculationContext(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v13);
  v14 = sub_220DBE960();
  v15 = OUTLINED_FUNCTION_0_24(v14, &v220);
  v198 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v18);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14(&v161 - v20);
  v21 = sub_220DBF3B0();
  v22 = OUTLINED_FUNCTION_0_24(v21, &v194);
  v162 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v24);
  v25 = sub_220DBE560();
  v26 = OUTLINED_FUNCTION_0_24(v25, &v227);
  v28 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v29);
  v30 = sub_220DBF340();
  v31 = OUTLINED_FUNCTION_0_24(v30, v226);
  v33 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v37);
  v38 = a8[1];
  v170 = *a8;
  v169 = v38;
  v39 = a8[3];
  v186 = a8[2];
  v185 = v39;
  v40 = a8[5];
  v184 = a8[4];
  v183 = v40;
  sub_220D9D99C();
  v197 = sub_220DC0AD0();
  v41 = a1 + 56;
  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 56);
  v45 = (v42 + 63) >> 6;
  v177 = 0x8000000220DC8AA0;
  v176 = 0x8000000220DC8A80;
  v200 = v28;
  v203 = v28 + 2;
  v205 = v33;
  v175 = v33 + 32;
  v213 = a1;

  v46 = 0;
  v195 = MEMORY[0x277D84F98];
  v179 = a3;
  v210 = v45;
  if (v44)
  {
LABEL_8:
    while (2)
    {
      v48 = *(*(v213 + 48) + (__clz(__rbit64(v44)) | (v46 << 6)));
      type metadata accessor for ChartSeriesValues();
      v49 = swift_allocObject();
      sub_220D9AA10();

      v50 = v195;
      swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v50;
      v51 = sub_220D7FF10(v48);
      if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
      {
        goto LABEL_97;
      }

      v53 = v51;
      v54 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E0, &qword_220DC7980);
      if (sub_220DC0BD0())
      {
        v55 = sub_220D7FF10(v48);
        a3 = v179;
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_100;
        }

        v53 = v55;
      }

      else
      {
        a3 = v179;
      }

      v57 = v219[0];
      v195 = v219[0];
      if (v54)
      {
        *(*(v219[0] + 56) + 8 * v53) = v49;
      }

      else
      {
        *(v219[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
        *(v57[6] + v53) = v48;
        *(v57[7] + 8 * v53) = v49;
        v58 = v57[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_99;
        }

        v57[2] = v60;
      }

      v44 &= v44 - 1;
      v61 = 0x79746964696D7568;
      switch(v48)
      {
        case 1:
          v61 = OUTLINED_FUNCTION_4_5();
          goto LABEL_25;
        case 2:
          v61 = OUTLINED_FUNCTION_29_6();
          goto LABEL_25;
        case 3:
          v61 = OUTLINED_FUNCTION_12_23();
          goto LABEL_25;
        case 4:
          v61 = OUTLINED_FUNCTION_24_10();
          goto LABEL_25;
        case 5:
          v61 = OUTLINED_FUNCTION_15_15();
          goto LABEL_25;
        case 6:
          v61 = OUTLINED_FUNCTION_14_18();
          goto LABEL_25;
        case 7:
          v61 = 1684957559;
          goto LABEL_25;
        case 8:

          goto LABEL_26;
        default:
LABEL_25:
          v62 = OUTLINED_FUNCTION_18_15(v61);

          if (v62)
          {
LABEL_26:
            sub_220D9BE34(a3, v204, v206, v207);
            if ((v63 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_11();
              v64(v212, a3, v215);
              sub_220DBF320();
              OUTLINED_FUNCTION_19_13(v49 + 16, v225);
              v65 = *(v49 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v49 + 16) = v65;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_25_11();
                sub_220D56AA0();
                v65 = v68;
                *(v49 + 16) = v68;
              }

              if (*(v65 + 16) >= *(v65 + 24) >> 1)
              {
                OUTLINED_FUNCTION_25_11();
                sub_220D56AA0();
                v65 = v69;
              }

              OUTLINED_FUNCTION_17_12();
              OUTLINED_FUNCTION_27_8();
              v67();
              *(v49 + 16) = v65;
            }
          }

          v45 = v210;
          if (!v44)
          {
            goto LABEL_4;
          }

          continue;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_95;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v41 + 8 * v47);
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_8;
    }
  }

  v70 = v197;
  OUTLINED_FUNCTION_38_3();
  sub_220DBF3A0();
  sub_220DC0A90();
  v161 = v70;
  sub_220DBF390();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  v73 = v194;
  (*(v72 + 16))(v194, v207, v71);
  v74 = *(v201 + 36);
  v75 = sub_220D9D8E0();
  sub_220DC0880();
  v197 = v198 + 16;
  v192 = v198 + 32;
  OUTLINED_FUNCTION_30_8();
  v213 = v76;
  v202 = v205 + 16;
  v201 = v205 + 24;
  v200 = (v205 + 8);
  v187 = v77 + 8;
  v210 = v195;
  v78 = v214;
  v190 = v71;
  v189 = v74;
  v188 = v75;
LABEL_36:
  sub_220DC08B0();
  if (*(v73 + v74) == v219[0])
  {
    sub_220CDA548(v73, &qword_27CF959D8, &unk_220DC3B00);
    sub_220DC0A80();
    v159 = v161;
    v160 = v164;
    sub_220DBF390();

    (*(v162 + 8))(v160, v163);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v79 = sub_220DC08E0();
  v80 = v193;
  v81 = v199;
  v196 = *v197;
  v196(v193);
  v79(v219, 0);
  sub_220DC08C0();
  OUTLINED_FUNCTION_22_11();
  v82(v78, v80, v81);
  v83 = OUTLINED_FUNCTION_32_6();
  v84 = v83 + 64;
  v85 = 1 << *(v83 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v73 = v86 & *(v83 + 64);
  v87 = (v85 + 63) >> 6;
  v88 = 0;

  v206 = v87;
  while (2)
  {
    v89 = v88;
    if (!v73)
    {
      goto LABEL_43;
    }

LABEL_42:
    v88 = v89;
LABEL_46:
    v90 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v91 = v90 | (v88 << 6);
    v92 = *(*(v210 + 48) + v91);
    v78 = *(*(v210 + 56) + 8 * v91);
    v93 = 0x79746964696D7568;
    v207 = v92;
    switch(v92)
    {
      case 1:
        v93 = OUTLINED_FUNCTION_4_5();
        goto LABEL_54;
      case 2:
        v93 = OUTLINED_FUNCTION_29_6();
        goto LABEL_54;
      case 3:
        v93 = OUTLINED_FUNCTION_12_23();
        goto LABEL_54;
      case 4:
        v93 = OUTLINED_FUNCTION_24_10();
        goto LABEL_54;
      case 5:
        v93 = OUTLINED_FUNCTION_15_15();
        goto LABEL_54;
      case 6:
        v93 = OUTLINED_FUNCTION_14_18();
        goto LABEL_54;
      case 7:
        v93 = 1684957559;
        goto LABEL_54;
      case 8:

        OUTLINED_FUNCTION_26_9();
        goto LABEL_55;
      default:
LABEL_54:
        v94 = OUTLINED_FUNCTION_18_15(v93);

        OUTLINED_FUNCTION_26_9();
        if ((v94 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_55:
        sub_220DBE8F0();
        sub_220DBE470();
        v96 = v95;
        v97 = *v213;
        (*v213)(v74, v215);
        if (fabs(v96) > 600.0 || (sub_220DBE8F0(), v98 = sub_220DBE670(), v97(v74, v215), (v98 & 1) == 0))
        {
LABEL_64:
          v109 = v191;
          (v196)(v191, a3, v199);
          v110 = v171;
          v111 = *(v171 + 20);
          v112 = sub_220DBE830();
          OUTLINED_FUNCTION_6();
          (*(v113 + 16))(v109 + v111, v174, v112);
          OUTLINED_FUNCTION_25_11();
          __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
          v118 = v110[8];
          sub_220DBEAD0();
          OUTLINED_FUNCTION_6();
          (*(v119 + 16))(v109 + v118, v173);
          v120 = v110[9];
          sub_220DBE740();
          OUTLINED_FUNCTION_6();
          (*(v121 + 16))(v109 + v120, v172);
          *(v109 + v110[6]) = v207;
          v122 = (v109 + v110[7]);
          v123 = v170;
          v124 = v169;
          *v122 = v170;
          v122[1] = v124;
          v125 = v185;
          v122[2] = v186;
          v122[3] = v125;
          v126 = v183;
          v122[4] = v184;
          v122[5] = v126;
          v127 = v178[6];
          v182 = v178[5];
          v180 = __swift_project_boxed_opaque_existential_1(v178 + 2, v182);
          v181 = *(v127 + 8);
          v198 = v123;
          v128 = v124;
          v168 = v186;
          v167 = v185;
          v166 = v184;
          v165 = v183;
          v129 = v181(v191, v182, v127);
          sub_220DBE8F0();
          sub_220DBF320();
          OUTLINED_FUNCTION_19_13(v78 + 16, v224);
          v130 = *(v78 + 16);
          v131 = swift_isUniquelyReferenced_nonNull_native();
          *(v78 + 16) = v130;
          v132 = v198;
          if ((v131 & 1) == 0)
          {
            OUTLINED_FUNCTION_25_11();
            sub_220D56AA0();
            v130 = v153;
            *(v78 + 16) = v153;
          }

          v133 = v207;
          if (*(v130 + 16) >= *(v130 + 24) >> 1)
          {
            OUTLINED_FUNCTION_25_11();
            sub_220D56AA0();
            v130 = v154;
          }

          OUTLINED_FUNCTION_17_12();
          OUTLINED_FUNCTION_27_8();
          v134();
          *(v78 + 16) = v130;
          OUTLINED_FUNCTION_19_13(v78 + 24, v223);
          v135 = OUTLINED_FUNCTION_28_6(*(v78 + 32));
          if (v129 < v135)
          {
            v135 = v129;
          }

          *(v78 + 24) = v135;
          *(v78 + 32) = 0;
          OUTLINED_FUNCTION_19_13(v78 + 40, v222);
          v136 = OUTLINED_FUNCTION_28_6(*(v78 + 48));
          if (v136 <= v129)
          {
            v136 = v129;
          }

          *(v78 + 40) = v136;
          *(v78 + 48) = 0;
          if (v133 > 8 || ((1 << v133) & 0x167) == 0)
          {
            v221 = v133;
            v219[0] = v132;
            v219[1] = v128;
            v219[2] = v168;
            v219[3] = v167;
            v219[4] = v166;
            v220 = v165;
            v218 = 0;
            v150 = HourWeather.secondValue(for:units:useCase:)(&v221, v219, &v218);
            OUTLINED_FUNCTION_19_13(v78 + 56, v217);
            v151 = OUTLINED_FUNCTION_28_6(*(v78 + 64));
            if (v150 < v151)
            {
              v151 = v150;
            }

            *(v78 + 56) = v151;
            *(v78 + 64) = 0;
            OUTLINED_FUNCTION_19_13(v78 + 72, v216);
            v152 = OUTLINED_FUNCTION_28_6(*(v78 + 80));
            if (v152 <= v150)
            {
              v152 = v150;
            }

            *(v78 + 72) = v152;
            *(v78 + 80) = 0;
          }

          v137 = v195;
          swift_isUniquelyReferenced_nonNull_native();
          v219[0] = v137;
          v138 = sub_220D7FF10(v133);
          v140 = *(v137 + 16);
          v141 = (v139 & 1) == 0;
          v74 = v140 + v141;
          if (__OFADD__(v140, v141))
          {
            goto LABEL_96;
          }

          v142 = v138;
          v143 = v139;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E0, &qword_220DC7980);
          if (sub_220DC0BD0())
          {
            v144 = v207;
            v145 = sub_220D7FF10(v207);
            a3 = v179;
            if ((v143 & 1) != (v146 & 1))
            {
              goto LABEL_100;
            }

            v142 = v145;
          }

          else
          {
            a3 = v179;
            v144 = v207;
          }

          v195 = v219[0];
          if (v143)
          {
            v147 = v219[0];
            *(*(v219[0] + 56) + 8 * v142) = v78;

            sub_220D47338(v191);
          }

          else
          {
            v147 = v219[0];
            *(v219[0] + 8 * (v142 >> 6) + 64) |= 1 << v142;
            *(*(v147 + 6) + v142) = v144;
            *(*(v147 + 7) + 8 * v142) = v78;

            sub_220D47338(v191);
            v148 = *(v147 + 2);
            v59 = __OFADD__(v148, 1);
            v149 = v148 + 1;
            if (v59)
            {
              goto LABEL_98;
            }

            *(v147 + 2) = v149;
          }

          v198 = v147;
          v87 = v206;
          continue;
        }

        swift_beginAccess();
        v99 = *(v78 + 16);
        if (!*(v99 + 16))
        {

          OUTLINED_FUNCTION_32_6();

          v157 = OUTLINED_FUNCTION_16_18();
          v158(v157);
          OUTLINED_FUNCTION_20_8();
LABEL_90:
          v74 = v189;
          goto LABEL_36;
        }

        v100 = (*(v205 + 80) + 32) & ~*(v205 + 80);
        (*(v205 + 16))(v208, v99 + v100, v211);
        sub_220DBF330();
        sub_220DBE8B0();
        sub_220DC07C0();
        OUTLINED_FUNCTION_22_11();
        v101(v212, a3, v215);
        sub_220DBF320();
        swift_beginAccess();
        v102 = *(v78 + 16);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        *(v78 + 16) = v102;
        if ((v103 & 1) == 0)
        {
          sub_220D9D9E0();
          v102 = v108;
          *(v78 + 16) = v108;
        }

        if (!*(v102 + 16))
        {
          goto LABEL_94;
        }

        OUTLINED_FUNCTION_22_11();
        v104 = v102 + v100;
        v74 = v209;
        v105 = v211;
        v106(v104, v209, v211);
        *(v78 + 16) = v102;
        swift_endAccess();
        v107 = *v200;
        (*v200)(v74, v105);
        v107(v208, v105);

        v89 = v88;
        v87 = v206;
        if (v73)
        {
          goto LABEL_42;
        }

LABEL_43:
        while (1)
        {
          v88 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            break;
          }

          if (v88 >= v87)
          {
            v155 = OUTLINED_FUNCTION_16_18();
            v156(v155);
            OUTLINED_FUNCTION_32_6();

            OUTLINED_FUNCTION_20_8();
            goto LABEL_90;
          }

          v73 = *(v84 + 8 * v88);
          ++v89;
          if (v73)
          {
            goto LABEL_46;
          }
        }

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
LABEL_99:
        __break(1u);
LABEL_100:
        sub_220DC0CC0();
        __break(1u);
        return;
    }
  }
}

uint64_t sub_220D9BE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v66 = a1;
  v67 = 0;
  v6 = sub_220DBE560();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - v9;
  v10 = sub_220DBE960();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964E8, &qword_220DC7988);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v62 = sub_220DBE980();
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA8, &unk_220DC5430);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - v26;
  sub_220CFD2D8(a3, v23, &qword_27CF95CA8, &unk_220DC5430);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    v28 = a2;
    v29 = v66;
    sub_220CDA548(v23, &qword_27CF95CA8, &unk_220DC5430);
  }

  else
  {
    v30 = (*(v25 + 32))(v27, v23, v24);
    MEMORY[0x28223BE20](v30);
    v28 = a2;
    *(&v53 - 2) = a2;
    v29 = v66;
    *(&v53 - 1) = v66;
    sub_220D292D8();
    v31 = v62;
    if (__swift_getEnumTagSinglePayload(v18, 1, v62) != 1)
    {
      goto LABEL_13;
    }

    (*(v25 + 8))(v27, v24);
    sub_220CDA548(v18, &qword_27CF964E8, &qword_220DC7988);
  }

  v31 = v64;
  v20 = v68;
  v25 = v65;
  v32 = (*(v64 + 16))(v68, v63, v65);
  MEMORY[0x28223BE20](v32);
  *(&v53 - 2) = v28;
  *(&v53 - 1) = v29;
  v33 = sub_220D9D618(sub_220D9D9F4, (&v53 - 4));
  if (v34)
  {
    (*(v31 + 8))(v20, v25);
    return 0;
  }

  v36 = v33;
  sub_220D9D8E0();
  sub_220DC0880();
  sub_220DC08B0();
  result = sub_220DC08A0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result - 1 == v36)
  {
    sub_220DC0880();
    sub_220DC08B0();
    result = sub_220DC08A0();
    v18 = (result - 1);
    if (!__OFSUB__(result, 1))
    {
      if (!__OFSUB__(v18, 1))
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_13:
      v37 = v53;
      (*(v53 + 32))(v20, v18, v31);
      sub_220DBE970();
      sub_220DC07C0();
      v39 = v38;
      (*(v37 + 8))(v20, v31);
      (*(v25 + 8))(v27, v24);
      return v39;
    }

    goto LABEL_19;
  }

  if (__OFADD__(v36, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_15:
  v40 = v31;
  v41 = v55;
  sub_220DBEFD0();
  v42 = v56;
  sub_220DBEFD0();
  sub_220DBE8B0();
  sub_220DBE8B0();
  v43 = v57;
  sub_220DBE8F0();
  v44 = v54;
  sub_220DBE8F0();
  sub_220DBE470();
  v45 = *(v60 + 8);
  v46 = v44;
  v47 = v61;
  v45(v46, v61);
  v45(v43, v47);
  sub_220DBE8F0();
  sub_220DBE470();
  v45(v43, v47);
  sub_220DC07C0();
  v49 = v48;
  v50 = v59;
  v51 = *(v58 + 8);
  v51(v42, v59);
  v51(v41, v50);
  (*(v40 + 8))(v68, v25);
  v52 = 0.0;
  if (v49 > 0.0)
  {
    v52 = v49;
  }

  return *&v52;
}

void sub_220D9C630(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v116 = a6;
  v141 = a4;
  v135 = a3;
  v115 = a7;
  v10 = sub_220DBEF00();
  v11 = OUTLINED_FUNCTION_0_24(v10, &v147);
  v122 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4_4(v108 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v18 = OUTLINED_FUNCTION_0_24(v17, &v146);
  v121 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_4(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v24 = OUTLINED_FUNCTION_0_24(v23, &v148);
  v128 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  v131 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_57();
  v130 = v28;
  v132 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v120 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_21();
  v142 = v31;
  v137 = sub_220DBF340();
  OUTLINED_FUNCTION_0();
  v139 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_21();
  v138 = v34;
  v35 = sub_220DBE6E0();
  v36 = OUTLINED_FUNCTION_0_24(v35, &v141);
  v111 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v38);
  v39 = sub_220DBE560();
  v40 = OUTLINED_FUNCTION_0_24(v39, v144);
  v113 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9();
  v136 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v44);
  v45 = sub_220DBF350();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964C8, &unk_220DC7970);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v53);
  v55 = v108 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  MEMORY[0x28223BE20](v56 - 8);
  OUTLINED_FUNCTION_9();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  v61 = v108 - v60;
  v62 = *a1;
  v63 = *a2;
  v129 = *a5;
  v123 = a5[3];
  v140 = v63;
  if (v62 != 7)
  {
    switch(v63)
    {
      case 1:
        OUTLINED_FUNCTION_4_5();
        break;
      case 3:
        OUTLINED_FUNCTION_12_23();
        break;
      case 4:

        goto LABEL_9;
      case 5:
        OUTLINED_FUNCTION_15_15();
        break;
      case 6:
        OUTLINED_FUNCTION_14_18();
        break;
      default:
        break;
    }

    v64 = sub_220DC0CA0();

    if ((v64 & 1) == 0)
    {
      sub_220DBF310();
      OUTLINED_FUNCTION_29_0();

      __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
      return;
    }
  }

LABEL_9:
  (*(v47 + 104))(v61, *MEMORY[0x277D7B0B0], v45);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v45);
  v65 = *(v52 + 48);
  sub_220CFD2D8(v135, v55, &qword_27CF95B10, &qword_220DC4A50);
  sub_220CFD2D8(v61, &v55[v65], &qword_27CF95B10, &qword_220DC4A50);
  OUTLINED_FUNCTION_35_4(v55);
  if (!v69)
  {
    v68 = v58;
    sub_220CFD2D8(v55, v58, &qword_27CF95B10, &qword_220DC4A50);
    OUTLINED_FUNCTION_35_4(&v55[v65]);
    if (!v69)
    {
      v67 = v116;
      (*(v47 + 32))(v51, &v55[v65], v45);
      sub_220D9D944();
      v109 = sub_220DC05B0();
      v76 = *(v47 + 8);
      v47 += 8;
      v76(v51, v45);
      sub_220CDA548(v61, &qword_27CF95B10, &qword_220DC4A50);
      v76(v68, v45);
      sub_220CDA548(v55, &qword_27CF95B10, &qword_220DC4A50);
      OUTLINED_FUNCTION_31_7();
      v66 = v134;
      goto LABEL_22;
    }

    sub_220CDA548(v61, &qword_27CF95B10, &qword_220DC4A50);
    v70 = *(v47 + 8);
    v47 += 8;
    v70(v58, v45);
    v66 = v134;
    goto LABEL_17;
  }

  sub_220CDA548(v61, &qword_27CF95B10, &qword_220DC4A50);
  OUTLINED_FUNCTION_35_4(&v55[v65]);
  v66 = v134;
  if (!v69)
  {
LABEL_17:
    v67 = v116;
    sub_220CDA548(v55, &qword_27CF964C8, &unk_220DC7970);
    v109 = 0;
    goto LABEL_18;
  }

  v67 = v116;
  sub_220CDA548(v55, &qword_27CF95B10, &qword_220DC4A50);
  v109 = 1;
LABEL_18:
  OUTLINED_FUNCTION_31_7();
LABEL_22:
  v108[1] = *(v66 + 56);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v78 = sub_220D9D8E0();
  v79 = sub_220DC0890();
  if (v79)
  {
    v80 = v79;
    v145 = MEMORY[0x277D84F90];
    sub_220CFB724();
    v81 = v145;
    v135 = v78;
    sub_220DC0880();
    if ((v80 & 0x8000000000000000) == 0)
    {
      v133 = (v120 + 16);
      OUTLINED_FUNCTION_30_8();
      v128 = v82;
      OUTLINED_FUNCTION_30_8();
      v122 = v83;
      OUTLINED_FUNCTION_30_8();
      v121 = v84;
      v86 = (v85 + 8);
      v134 = v77;
      v67 = v135;
      v120 = v139 + 32;
      while (1)
      {
        v87 = sub_220DC08E0();
        v88 = v142;
        (*v133)(v142);
        v87(v143, 0);
        if (v140 == 3)
        {
          break;
        }

        if (v140 == 7)
        {
          OUTLINED_FUNCTION_38_3();
          sub_220DBE900();
          v90 = v125;
          sub_220DBEEE0();
          v91 = *v122;
          v92 = v88;
          v93 = v126;
          (*v122)(v67, v126);
          v94 = v124;
          if (__swift_getEnumTagSinglePayload(v90, 1, v124) == 1)
          {
            sub_220CDA548(v90, &qword_27CF95640, &qword_220DC45A0);
            OUTLINED_FUNCTION_38_3();
            sub_220DBE900();
            v95 = v119;
            sub_220DBEEF0();
            v91(v67, v93);
            v96 = v118;
            sub_220DBE130();
            v97 = *v121;
            v98 = v95;
            v47 = v127;
            (*v121)(v98, v94);
            sub_220DBE050();
            v97(v96, v94);
            v61 = v132;
            v88 = v142;
          }

          else
          {
            v104 = v90;
            v105 = v117;
            sub_220DBE130();
            v106 = *v121;
            (*v121)(v104, v94);
            sub_220DBE050();
            v106(v105, v94);
            v61 = v132;
            v88 = v92;
            v47 = v127;
          }
        }

        else if (v140 == 4)
        {
          v89 = v131;
          sub_220DBE850();
LABEL_32:
          v99 = v130;
          sub_220DBE130();
          v100 = *v128;
          v101 = v89;
          v61 = v132;
          (*v128)(v101, v47);
          sub_220DBE050();
          v100(v99, v47);
          v88 = v142;
        }

        sub_220DBE8F0();
        v102 = v138;
        sub_220DBF320();
        (*v86)(v88, v61);
        v145 = v81;
        v103 = *(v81 + 16);
        if (v103 >= *(v81 + 24) >> 1)
        {
          sub_220CFB724();
          v102 = v138;
          v81 = v145;
        }

        *(v81 + 16) = v103 + 1;
        (*(v139 + 32))(v81 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v103, v102, v137);
        v67 = v135;
        sub_220DC08C0();
        if (!--v80)
        {
          goto LABEL_38;
        }
      }

      v89 = v131;
      sub_220DBE890();
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    v107 = v110;
    sub_220DBE6A0();
    OUTLINED_FUNCTION_38_3();
    sub_220DBE3A0();
    (*(v111 + 8))(v107, v112);
    sub_220DBF2C0();

    (*(v113 + 8))(v67, v114);
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_220D9D480(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unsigned int *a5)
{
  v7 = sub_220DBE6C0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  a4();
  (*(v9 + 104))(v13, *a5, v7);
  v21 = sub_220DBE680();
  (*(v9 + 8))(v13, v7);
  (*(v16 + 8))(v20, v14);
  return v21 & 1;
}

uint64_t sub_220D9D618(uint64_t (*a1)(char *), uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v15 = sub_220DBE960();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  sub_220D9D8E0();
  sub_220DC0880();
  v13 = (v3 + 16);
  v14 = (v3 + 8);
  while (1)
  {
    sub_220DC08B0();
    v6 = v19;
    if (v19 == v18[0])
    {
      return 0;
    }

    v7 = sub_220DC08E0();
    v8 = v15;
    (*v13)(v5);
    v7(v18, 0);
    v9 = v16(v5);
    if (v2)
    {
      return (*v14)(v5, v8);
    }

    v10 = v9;
    (*v14)(v5, v8);
    if (v10)
    {
      break;
    }

    sub_220DC08C0();
  }

  return v6;
}

uint64_t sub_220D9D824()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220D9D8E0()
{
  result = qword_280FA7720;
  if (!qword_280FA7720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95270, &unk_220DC3AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7720);
  }

  return result;
}

unint64_t sub_220D9D944()
{
  result = qword_27CF964D0;
  if (!qword_27CF964D0)
  {
    sub_220DBF350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF964D0);
  }

  return result;
}

unint64_t sub_220D9D99C()
{
  result = qword_27CF964D8;
  if (!qword_27CF964D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF964D8);
  }

  return result;
}

uint64_t sub_220D9DB2C(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 40);
  if (sub_220DBE610())
  {
    v10 = sub_220DA0A68(a3, a5, a1);
    v33 = sub_220DA0E58(v10);
    v12 = v11;
    v13 = OUTLINED_FUNCTION_12_24();
    v16 = sub_220D9FE48(v13, v14, a5, v15);
    v18 = sub_220DA090C(v33, v12, v16, v17);
  }

  else
  {
    v19 = sub_220DBE640();
    v20 = sub_220DA0A68(a3, a5, a1);
    if (v19)
    {
      sub_220DA10D8(v20);
      v21 = OUTLINED_FUNCTION_7_23();
      v25 = sub_220D9F23C(v21, v22, v23, v24);
    }

    else
    {
      sub_220DA1354(v20, a3, a5);
      v27 = OUTLINED_FUNCTION_7_23();
      v25 = sub_220D9E778(v27, v28, v29, v30);
    }

    v18 = sub_220D9FD08(v19, v9, v25, v26);
  }

  v31 = v18;

  return v31;
}

uint64_t sub_220D9DC74(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_220DA0A68(a1, a4, a2);
  sub_220DA0E58(v5);
  v6 = OUTLINED_FUNCTION_1_39();
  sub_220D9FE48(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_6_25();
  sub_220DA090C(v10, v11, v12, v13);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9DCF0()
{
  OUTLINED_FUNCTION_5_30();
  v3 = sub_220DA0A68(v1, v2, v0);
  sub_220DA10D8(v3);
  v4 = OUTLINED_FUNCTION_1_39();
  sub_220D9F23C(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_6_25();
  sub_220D9FD08(v8, v9, v10, v11);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9DD60()
{
  OUTLINED_FUNCTION_5_30();
  v5 = sub_220DA0A68(v3, v4, v1);
  sub_220DA1354(v5, v2, v0);
  v6 = OUTLINED_FUNCTION_1_39();
  sub_220D9E778(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_6_25();
  sub_220D9FD08(v10, v11, v12, v13);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

void sub_220D9DDD8()
{
  OUTLINED_FUNCTION_28_3();
  v2 = v1;
  v61 = v3;
  v62 = v4;
  v60 = v5;
  v63 = v6;
  v7 = sub_220DBE5E0();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v55 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  OUTLINED_FUNCTION_0();
  v57 = v12;
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v56 = v51 - v13;
  v59 = sub_220DBECB0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v16 = *v2;
  v15 = v2[1];
  v17 = v2[2];
  v18 = v2[3];
  v20 = v2[4];
  v19 = v2[5];
  v21 = v60;
  if (sub_220DBE610())
  {
    sub_220DBE7A0();
    sub_220DBECA0();
    v22 = OUTLINED_FUNCTION_21_12();
    v23(v22);
    v24 = sub_220DA0E58(v0);
    v26 = v25;
    v65 = v16;
    v66 = v15;
    v67 = v17;
    v68 = v18;
    v69 = v20;
    v70 = v19;
    sub_220D9FE48(v21, v63, v62, &v65);
    OUTLINED_FUNCTION_11_19();
    sub_220DA090C(v24, v26, v27, v17);
  }

  else
  {
    v51[1] = v16;
    v51[2] = v15;
    v51[3] = v17;
    v52 = v18;
    v53 = v20;
    v54 = v19;
    v28 = v62;
    v29 = v21;
    v30 = sub_220DBE640();
    sub_220DBE7A0();
    sub_220DBECA0();
    v31 = OUTLINED_FUNCTION_21_12();
    v32(v31);
    if (v30)
    {
      v33 = v29;
      v64 = v0;
      sub_220DBE570();
      sub_220CEFCB0();
      sub_220DBE290();
      sub_220CEFD04();
      sub_220DC0520();
      v34 = OUTLINED_FUNCTION_12_24();
      v35(v34);
      v37 = v65;
      v36 = v66;
      v38 = v28;
      v28 = v63;
      v40 = v52;
      v39 = v53;
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      OUTLINED_FUNCTION_9_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_220DC17A0;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_220CEFDB0();
      *(v41 + 32) = v37;
      *(v41 + 40) = v36;
      OUTLINED_FUNCTION_3_1();
      v42 = sub_220DC05F0();
      v44 = v43;

      OUTLINED_FUNCTION_16_19();
      v67 = *(v45 - 256);
      v68 = v40;
      v69 = v39;
      v70 = v54;
      sub_220D9F23C(v33, v28, v38, &v65);
      OUTLINED_FUNCTION_11_19();
      v47 = v42;
    }

    else
    {
      v48 = sub_220DA1354(v0, v29, v28);
      v44 = v49;
      OUTLINED_FUNCTION_16_19();
      v67 = *(v50 - 256);
      v68 = v52;
      v69 = v53;
      v70 = v54;
      sub_220D9E778(v29, v63, v28, &v65);
      OUTLINED_FUNCTION_11_19();
      v47 = v48;
    }

    sub_220D9FD08(v47, v44, v46, v28);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220D9E228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30();
  sub_220DBECB0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_220DBE7A0();
  sub_220DBECA0();
  v12 = OUTLINED_FUNCTION_13_15();
  v13(v12);
  sub_220DA0E58(v6);
  v14 = OUTLINED_FUNCTION_8_17();
  sub_220D9FE48(v14, v15, v16, v17);
  OUTLINED_FUNCTION_11_19();
  sub_220DA090C(v11, a5, v18, v5);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

void sub_220D9E334()
{
  OUTLINED_FUNCTION_28_3();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v5 = v4;
  v6 = sub_220DBE5E0();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_220DBECB0();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = *v1;
  v31 = v1[1];
  v32 = v21;
  v30 = v1[2];
  sub_220DBE7A0();
  sub_220DBECA0();
  v23 = v22;
  (*(v16 + 8))(v20, v14);
  v36 = v23;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v10 + 8))(v13, v8);
  v24 = v35[0];
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220DC17A0;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_220CEFDB0();
  *(v25 + 32) = v24;
  v26 = sub_220DC05F0();
  v28 = v27;

  v35[0] = v32;
  v35[1] = v31;
  v35[2] = v30;
  sub_220D9F23C(v5, v33, v34, v35);
  OUTLINED_FUNCTION_11_19();
  sub_220D9FD08(v26, v28, v29, v24);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220D9E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30();
  sub_220DBECB0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_220DBE7A0();
  sub_220DBECA0();
  v13 = OUTLINED_FUNCTION_13_15();
  v14(v13);
  sub_220DA1354(v7, v6, v5);
  v15 = OUTLINED_FUNCTION_8_17();
  sub_220D9E778(v15, v16, v17, v18);
  OUTLINED_FUNCTION_11_19();
  sub_220D9FD08(v12, a5, v19, v5);
  OUTLINED_FUNCTION_9_15();

  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_220D9E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a2;
  v91 = a1;
  v5 = sub_220DC0300();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_220DC0A40();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v77 - v11;
  v12 = sub_220DBE740();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_220DBE560();
  v14 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v77 - v18;
  v20 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  v21 = MEMORY[0x28223BE20](v20);
  v78 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v77 - v23;
  v24 = *a4;
  v25 = *(a4 + 8);
  v26 = *(a4 + 16);
  v27 = *(a4 + 24);
  v29 = *(a4 + 32);
  v28 = *(a4 + 40);
  (*(v14 + 16))(v16, v91, v87);
  (*(v89 + 16))(v88, v92, v90);
  v98 = v24;
  v99 = v25;
  v100 = v26;
  v101 = v27;
  v102 = v29;
  v103 = v28;

  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v29;
  v35 = v28;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_220D3DD1C(v19, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v36 = sub_220DBF410();
    __swift_project_value_buffer(v36, qword_27CF95F48);
    v37 = sub_220DBF3F0();
    v38 = sub_220DC0980();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_220CD1000, v37, v38, "Failed to create future day platter string for Humidity due to missing dew point", v39, 2u);
      MEMORY[0x223D98FB0](v39, -1, -1);
    }

    return 0;
  }

  else
  {
    v41 = v94;
    sub_220DA27C8(v19, v94);
    v42 = v78;
    sub_220DA282C(v41, v78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v44 = *(v96 + 32);
      v45 = v97;
      v44(v95, v42, v97);
      v44(v79, v42 + v43, v45);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v46 = sub_220DBE240();
      v92 = v47;
      v93 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_220DC17C0;
      v49 = v80;
      sub_220DC02B0();
      LODWORD(v91) = *MEMORY[0x277D7B408];
      v51 = v84;
      v50 = v85;
      v90 = *(v84 + 104);
      v52 = v81;
      v90(v81);
      v89 = sub_220DBF100();
      sub_220DBF0D0();
      v88 = sub_220CF6ABC();
      v53 = v83;
      v78 = sub_220DBE0B0();
      v77 = v54;

      v87 = *(v51 + 8);
      v87(v52, v50);
      v86 = *(v82 + 8);
      (v86)(v49, v53);
      *(v48 + 56) = MEMORY[0x277D837D0];
      v84 = sub_220CEFDB0();
      *(v48 + 64) = v84;
      v55 = v77;
      *(v48 + 32) = v78;
      *(v48 + 40) = v55;
      sub_220DC02B0();
      (v90)(v52, v91, v50);
      sub_220DBF0D0();
      v56 = v79;
      v57 = sub_220DBE0B0();
      v59 = v58;

      v87(v52, v85);
      (v86)(v49, v53);
      v60 = v84;
      *(v48 + 96) = MEMORY[0x277D837D0];
      *(v48 + 104) = v60;
      *(v48 + 72) = v57;
      *(v48 + 80) = v59;
      v40 = sub_220DC05F0();

      v61 = v97;
      v62 = *(v96 + 8);
      v62(v56, v97);
      v62(v95, v61);
    }

    else
    {
      v63 = v95;
      (*(v96 + 32))(v95, v42, v97);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v64 = sub_220DBE240();
      v92 = v65;
      v93 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_220DC17A0;
      v67 = v80;
      sub_220DC02B0();
      v68 = v84;
      v69 = v85;
      v70 = v81;
      (*(v84 + 104))(v81, *MEMORY[0x277D7B408], v85);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v71 = v83;
      v72 = sub_220DBE0B0();
      v73 = v63;
      v75 = v74;

      (*(v68 + 8))(v70, v69);
      (*(v82 + 8))(v67, v71);
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_220CEFDB0();
      *(v66 + 32) = v72;
      *(v66 + 40) = v75;
      v40 = sub_220DC05F0();

      (*(v96 + 8))(v73, v97);
    }

    sub_220DA2890(v94);
  }

  return v40;
}

uint64_t sub_220D9F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a3;
  v94 = a2;
  v92 = a1;
  v5 = sub_220DC0300();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_220DC0A40();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v78 - v11;
  v12 = sub_220DBE740();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_220DBE560();
  v14 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  v21 = MEMORY[0x28223BE20](v20);
  v79 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v78 - v23;
  v24 = *a4;
  v25 = *(a4 + 8);
  v26 = *(a4 + 16);
  v27 = *(a4 + 24);
  v29 = *(a4 + 32);
  v28 = *(a4 + 40);
  (*(v14 + 16))(v16, v92, v88);
  (*(v90 + 16))(v89, v93, v91);
  v99 = v24;
  v100 = v25;
  v101 = v26;
  v102 = v27;
  v103 = v29;
  v104 = v28;

  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v29;
  v35 = v28;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_220D3DD1C(v19, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v36 = sub_220DBF410();
    __swift_project_value_buffer(v36, qword_27CF95F48);
    v37 = sub_220DBF3F0();
    v38 = sub_220DC0980();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_220CD1000, v37, v38, "Failed to create yesterday platter string for Humidity due to missing dew point", v39, 2u);
      MEMORY[0x223D98FB0](v39, -1, -1);
    }

    return 0;
  }

  else
  {
    v41 = v95;
    sub_220DA27C8(v19, v95);
    v42 = v41;
    v43 = v79;
    sub_220DA282C(v42, v79);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v45 = *(v97 + 32);
      v46 = v98;
      v45(v96, v43, v98);
      v45(v80, v43 + v44, v46);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v47 = sub_220DBE240();
      v93 = v48;
      v94 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_220DC17C0;
      v50 = v81;
      sub_220DC02B0();
      LODWORD(v92) = *MEMORY[0x277D7B408];
      v52 = v85;
      v51 = v86;
      v91 = *(v85 + 104);
      v53 = v82;
      v91(v82);
      v90 = sub_220DBF100();
      sub_220DBF0D0();
      v89 = sub_220CF6ABC();
      v54 = v84;
      v79 = sub_220DBE0B0();
      v78 = v55;

      v88 = *(v52 + 8);
      v88(v53, v51);
      v87 = *(v83 + 8);
      (v87)(v50, v54);
      *(v49 + 56) = MEMORY[0x277D837D0];
      v85 = sub_220CEFDB0();
      *(v49 + 64) = v85;
      v56 = v78;
      *(v49 + 32) = v79;
      *(v49 + 40) = v56;
      sub_220DC02B0();
      (v91)(v53, v92, v51);
      sub_220DBF0D0();
      v57 = v80;
      v58 = sub_220DBE0B0();
      v60 = v59;

      v88(v53, v86);
      (v87)(v50, v54);
      v61 = v85;
      *(v49 + 96) = MEMORY[0x277D837D0];
      *(v49 + 104) = v61;
      *(v49 + 72) = v58;
      *(v49 + 80) = v60;
      v40 = sub_220DC05F0();

      v62 = v98;
      v63 = *(v97 + 8);
      v63(v57, v98);
      v63(v96, v62);
    }

    else
    {
      v64 = v96;
      (*(v97 + 32))(v96, v43, v98);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v65 = sub_220DBE240();
      v93 = v66;
      v94 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_220DC17A0;
      v68 = v81;
      sub_220DC02B0();
      v69 = v85;
      v70 = v86;
      v71 = v82;
      (*(v85 + 104))(v82, *MEMORY[0x277D7B408], v86);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v72 = v84;
      v73 = sub_220DBE0B0();
      v74 = v64;
      v76 = v75;

      (*(v69 + 8))(v71, v70);
      (*(v83 + 8))(v68, v72);
      *(v67 + 56) = MEMORY[0x277D837D0];
      *(v67 + 64) = sub_220CEFDB0();
      *(v67 + 32) = v73;
      *(v67 + 40) = v76;
      v40 = sub_220DC05F0();

      (*(v97 + 8))(v74, v98);
    }

    sub_220DA2890(v95);
  }

  return v40;
}

uint64_t sub_220D9FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  v11 = sub_220DC05F0();

  return v11;
}

uint64_t sub_220D9FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a2;
  v91 = a1;
  v5 = sub_220DC0300();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_220DC0A40();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v77 - v11;
  v12 = sub_220DBE740();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_220DBE560();
  v14 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F0, &qword_220DC7A00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v77 - v18;
  v20 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  v21 = MEMORY[0x28223BE20](v20);
  v78 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v77 - v23;
  v24 = *a4;
  v25 = *(a4 + 8);
  v26 = *(a4 + 16);
  v27 = *(a4 + 24);
  v29 = *(a4 + 32);
  v28 = *(a4 + 40);
  (*(v14 + 16))(v16, v91, v87);
  (*(v89 + 16))(v88, v92, v90);
  v98 = v24;
  v99 = v25;
  v100 = v26;
  v101 = v27;
  v102 = v29;
  v103 = v28;

  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v29;
  v35 = v28;
  sub_220DA1824();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_220D3DD1C(v19, &qword_27CF964F0, &qword_220DC7A00);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v36 = sub_220DBF410();
    __swift_project_value_buffer(v36, qword_27CF95F48);
    v37 = sub_220DBF3F0();
    v38 = sub_220DC0980();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_220CD1000, v37, v38, "Failed to create today platter string for Humidity due to missing dew point", v39, 2u);
      MEMORY[0x223D98FB0](v39, -1, -1);
    }

    return 0;
  }

  else
  {
    v41 = v94;
    sub_220DA27C8(v19, v94);
    v42 = v78;
    sub_220DA282C(v41, v78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
      v44 = *(v96 + 32);
      v45 = v97;
      v44(v95, v42, v97);
      v44(v79, v42 + v43, v45);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v46 = sub_220DBE240();
      v92 = v47;
      v93 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_220DC17C0;
      v49 = v80;
      sub_220DC02B0();
      LODWORD(v91) = *MEMORY[0x277D7B408];
      v51 = v84;
      v50 = v85;
      v90 = *(v84 + 104);
      v52 = v81;
      v90(v81);
      v89 = sub_220DBF100();
      sub_220DBF0D0();
      v88 = sub_220CF6ABC();
      v53 = v83;
      v78 = sub_220DBE0B0();
      v77 = v54;

      v87 = *(v51 + 8);
      v87(v52, v50);
      v86 = *(v82 + 8);
      (v86)(v49, v53);
      *(v48 + 56) = MEMORY[0x277D837D0];
      v84 = sub_220CEFDB0();
      *(v48 + 64) = v84;
      v55 = v77;
      *(v48 + 32) = v78;
      *(v48 + 40) = v55;
      sub_220DC02B0();
      (v90)(v52, v91, v50);
      sub_220DBF0D0();
      v56 = v79;
      v57 = sub_220DBE0B0();
      v59 = v58;

      v87(v52, v85);
      (v86)(v49, v53);
      v60 = v84;
      *(v48 + 96) = MEMORY[0x277D837D0];
      *(v48 + 104) = v60;
      *(v48 + 72) = v57;
      *(v48 + 80) = v59;
      v40 = sub_220DC05F0();

      v61 = v97;
      v62 = *(v96 + 8);
      v62(v56, v97);
      v62(v95, v61);
    }

    else
    {
      v63 = v95;
      (*(v96 + 32))(v95, v42, v97);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v64 = sub_220DBE240();
      v92 = v65;
      v93 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_220DC17A0;
      v67 = v80;
      sub_220DC02B0();
      v68 = v84;
      v69 = v85;
      v70 = v81;
      (*(v84 + 104))(v81, *MEMORY[0x277D7B408], v85);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220CF6ABC();
      v71 = v83;
      v72 = sub_220DBE0B0();
      v73 = v63;
      v75 = v74;

      (*(v68 + 8))(v70, v69);
      (*(v82 + 8))(v67, v71);
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_220CEFDB0();
      *(v66 + 32) = v72;
      *(v66 + 40) = v75;
      v40 = sub_220DC05F0();

      (*(v96 + 8))(v73, v97);
    }

    sub_220DA2890(v94);
  }

  return v40;
}

uint64_t sub_220DA090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  v11 = sub_220DC05F0();

  return v11;
}

double sub_220DA0A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v45 = a3;
  v46 = sub_220DBE960();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220DBE6E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DBE560();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v6 + 8))(v8, v5);
  v44 = v15;
  v48 = v15;
  v49 = v13;
  v16 = v45;

  v17 = sub_220D28868(sub_220D3727C, v47, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v40 = v13;
    v41 = v10;
    v42 = v9;
    v50 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v18, 0);
    v19 = v50;
    v20 = v43 + 16;
    v45 = *(v43 + 16);
    v21 = *(v43 + 80);
    v39 = v17;
    v22 = v17 + ((v21 + 32) & ~v21);
    v23 = *(v43 + 72);
    v24 = (v43 + 8);
    v43 = v18;
    v25 = v18;
    v26 = v20;
    do
    {
      v27 = v46;
      v28 = v26;
      v45(v4, v22, v46);
      sub_220DBE930();
      v30 = v29;
      (*v24)(v4, v27);
      v50 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_220CFB704((v31 > 1), v32 + 1, 1);
        v19 = v50;
      }

      *(v19 + 16) = v32 + 1;
      *(v19 + 8 * v32 + 32) = v30;
      v22 += v23;
      --v25;
      v26 = v28;
    }

    while (v25);

    v10 = v41;
    v9 = v42;
    v13 = v40;
    v18 = v43;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v33 = *(v19 + 16);
  if (v33)
  {
    v34 = (v19 + 32);
    v35 = 0.0;
    do
    {
      v36 = *v34++;
      v35 = v35 + v36;
      --v33;
    }

    while (v33);
  }

  else
  {
    v35 = 0.0;
  }

  v37 = *(v10 + 8);
  v37(v13, v9);
  v37(v44, v9);
  return v35 / v18;
}

uint64_t sub_220DA0E58(double a1)
{
  v2 = sub_220DBE5E0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  *&v12[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v4 + 8))(v6, v3);
  v7 = v12[2];
  v8 = v12[3];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220DC17A0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_220CEFDB0();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_220DC05F0();

  return v10;
}

uint64_t sub_220DA10D8(double a1)
{
  v2 = sub_220DBE5E0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  *&v12[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v4 + 8))(v6, v3);
  v7 = v12[2];
  v8 = v12[3];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220DC17A0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_220CEFDB0();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_220DC05F0();

  return v10;
}

uint64_t sub_220DA1354(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_220DBE5E0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = sub_220DBE520();
  *&v15[1] = a1;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v6 + 8))(v8, v5);
  v10 = v15[2];
  v11 = v15[3];
  switch(v9)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220DC17A0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_220CEFDB0();
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  v13 = sub_220DC05F0();

  return v13;
}

void sub_220DA1824()
{
  OUTLINED_FUNCTION_28_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v83 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v72 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v74 = v25;
  OUTLINED_FUNCTION_23();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v27);
  v81 = &v68 - v30;
  v82 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_1();
  v73 = (v32 - v31);
  v33 = *v1;
  v79 = *(v1 + 8);
  v80 = v33;
  v34 = *(v1 + 16);
  v77 = *(v1 + 24);
  v78 = v34;
  v35 = *(v1 + 32);
  v75 = *(v1 + 40);
  v76 = v35;
  v84 = v3;
  v85 = v5;
  v86 = sub_220CFACFC();

  sub_220DA290C(&v86);

  v36 = v86;
  sub_220D101AC(v86, v15);
  v37 = sub_220DBE960();
  if (__swift_getEnumTagSinglePayload(v15, 1, v37) == 1)
  {
  }

  else
  {
    v69 = v7;
    v70 = v3;
    v71 = v5;
    sub_220DBE920();
    v38 = *(*(v37 - 8) + 8);
    v38(v15, v37);
    v39 = v83;
    v40 = v29;
    v41 = *(v83 + 32);
    v41(v81, v40, v16);
    sub_220D10980(v36, v12);

    if (__swift_getEnumTagSinglePayload(v12, 1, v37) != 1)
    {
      v48 = v72;
      sub_220DBE920();
      v38(v12, v37);
      v49 = v74;
      v41(v74, v48, v16);
      v50 = v80;
      v51 = v81;
      sub_220DBE130();
      sub_220DBE050();
      v53 = v52;
      v54 = *(v83 + 8);
      v83 += 8;
      v54(v21, v16);
      v55 = round(v53);
      sub_220DBE130();

      sub_220DBE050();
      v57 = v56;
      v54(v21, v16);
      if (v55 == round(v57))
      {
        v54(v51, v16);
        v58 = v73;
      }

      else
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08);
        v58 = &v73[*(v59 + 48)];
        v60 = OUTLINED_FUNCTION_12_24();
        (v41)(v60);
      }

      v61 = v71;
      v62 = v69;
      v41(v58, v49, v16);
      v63 = v82;
      swift_storeEnumTagMultiPayload();
      v64 = OUTLINED_FUNCTION_12_24();
      sub_220DA27C8(v64, v65);
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v66 + 8))(v70);
      sub_220DBE560();
      OUTLINED_FUNCTION_1_0();
      (*(v67 + 8))(v61);
      goto LABEL_14;
    }

    (*(v39 + 8))(v81, v16);

    v15 = v12;
    v5 = v71;
    v3 = v70;
    v7 = v69;
  }

  sub_220D3DD1C(v15, &qword_27CF959E0, &unk_220DC3C00);
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v42 = sub_220DBF410();
  __swift_project_value_buffer(v42, qword_27CF95F48);
  v43 = sub_220DBF3F0();
  v44 = sub_220DC0980();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_220CD1000, v43, v44, "Failed determine the Humidity second sentence kind due to missing dew point", v45, 2u);
    MEMORY[0x223D98FB0](v45, -1, -1);
  }

  sub_220DBE740();
  OUTLINED_FUNCTION_1_0();
  (*(v46 + 8))(v3);
  sub_220DBE560();
  OUTLINED_FUNCTION_1_0();
  (*(v47 + 8))(v5);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v82);
LABEL_14:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_220DA1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v16[1] = a1;
  v3 = sub_220DBE6C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220DBE560();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBE6E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  sub_220DBE8F0();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  v14 = sub_220DBE680();
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v17);
  (*(v11 + 8))(v13, v10);
  return v14 & 1;
}

BOOL sub_220DA21C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_220DBE920();
  sub_220DBE050();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_220DBE920();
  sub_220DBE050();
  v11 = v10;
  v9(v4, v0);
  return v8 < v11;
}

uint64_t sub_220DA231C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v46 = v8 - v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v48 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v47 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96528, &unk_220DC7A50);
  v25 = OUTLINED_FUNCTION_18(v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v45 - v27;
  v29 = &v45 + *(v26 + 56) - v27;
  sub_220DA282C(a1, &v45 - v27);
  sub_220DA282C(a2, v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220DA282C(v28, v23);
    OUTLINED_FUNCTION_12_24();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v16, v29, v4);
      sub_220D287C0();
      v36 = sub_220DBE020();
      v41 = *(v6 + 8);
      v41(v16, v4);
      v42 = OUTLINED_FUNCTION_30();
      (v41)(v42);
      goto LABEL_11;
    }

    v38 = OUTLINED_FUNCTION_30();
    v39(v38);
    goto LABEL_8;
  }

  sub_220DA282C(v28, v20);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF964F8, &qword_220DC7A08) + 48);
  OUTLINED_FUNCTION_12_24();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *(v6 + 8);
    v40(v20 + v30, v4);
    v40(v20, v4);
LABEL_8:
    sub_220D3DD1C(v28, &qword_27CF96528, &unk_220DC7A50);
    goto LABEL_9;
  }

  v31 = *(v6 + 32);
  v31(v47, v29, v4);
  v31(v48, (v20 + v30), v4);
  v32 = v46;
  v31(v46, &v29[v30], v4);
  sub_220D287C0();
  v33 = sub_220DBE020();
  v34 = *(v6 + 8);
  v34(v20, v4);
  if (v33)
  {
    v35 = v48;
    v36 = sub_220DBE020();
    v34(v32, v4);
    v34(v35, v4);
    v37 = OUTLINED_FUNCTION_30();
    (v34)(v37);
LABEL_11:
    sub_220DA2890(v28);
    return v36 & 1;
  }

  v34(v32, v4);
  v34(v48, v4);
  v44 = OUTLINED_FUNCTION_30();
  (v34)(v44);
  sub_220DA2890(v28);
LABEL_9:
  v36 = 0;
  return v36 & 1;
}

uint64_t type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(uint64_t a1)
{
  result = qword_27CF96500;
  if (!qword_27CF96500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DA27C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA2890(uint64_t a1)
{
  v2 = type metadata accessor for HumidityPlatterStringBuilder.SecondSentenceKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220DA290C(void *a1)
{
  v2 = *(sub_220DBE960() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A78();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220DA29B4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220DA29B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_220DC0C60();
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
        sub_220DBE960();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBE960() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_220DA2EB4(v8, v9, a1, v4);
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
    return sub_220DA2AE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220DA2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v61 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v42 - v11;
  v12 = sub_220DBE960();
  v13 = MEMORY[0x28223BE20](v12);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v42 - v16;
  result = MEMORY[0x28223BE20](v15);
  v58 = &v42 - v19;
  v44 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v54 = (v8 + 8);
    v55 = v22;
    v53 = (v21 - 8);
    v57 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v49 = -v23;
    v50 = (v21 + 16);
    v25 = a1 - a3;
    v51 = v20;
    v43 = v23;
    v26 = v20 + v23 * a3;
    v56 = v12;
    while (2)
    {
      v47 = v24;
      v48 = a3;
      v45 = v26;
      v46 = v25;
      v63 = v25;
      do
      {
        v27 = v58;
        v28 = v55;
        v55(v58, v26, v12);
        v29 = v59;
        v28(v59, v24, v12);
        v30 = v60;
        sub_220DBE920();
        v31 = v62;
        sub_220DBE050();
        v33 = v32;
        v34 = *v54;
        (*v54)(v30, v31);
        v35 = v61;
        sub_220DBE920();
        sub_220DBE050();
        v37 = v36;
        v34(v35, v31);
        v12 = v56;
        v38 = *v53;
        (*v53)(v29, v56);
        result = v38(v27, v12);
        if (v33 >= v37)
        {
          break;
        }

        if (!v51)
        {
          __break(1u);
          return result;
        }

        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = (v39)(v24, v40, v12);
        v24 += v49;
        v26 += v49;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v48 + 1;
      v24 = v47 + v43;
      v25 = v46 - 1;
      v26 = v45 + v43;
      if (v48 + 1 != v44)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220DA2EB4(char **a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4)
{
  v146 = a1;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v6 = *(v168 - 8);
  v7 = MEMORY[0x28223BE20](v168);
  v167 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v166 = &v140 - v9;
  v10 = a3;
  v11 = sub_220DBE960();
  v12 = MEMORY[0x28223BE20](v11);
  v149 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v159 = &v140 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v165 = &v140 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v164 = &v140 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v24 = *(a3 + 1);
  v153 = v22;
  v154 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_102:
    v171 = *v146;
    if (!v171)
    {
      goto LABEL_145;
    }

    v6 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v155;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v141 = &v140 - v21;
  v142 = v23;
  v25 = 0;
  v169 = v22 + 16;
  v170 = (v22 + 8);
  v161 = (v22 + 32);
  v162 = (v6 + 8);
  v26 = MEMORY[0x277D84F90];
  v145 = a4;
  v163 = v11;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v25 + 1 < v24)
    {
      v158 = v24;
      v29 = *v10;
      v30 = *(v153 + 72);
      v156 = v25 + 1;
      v6 = v29 + v30 * v28;
      v31 = *(v153 + 16);
      v32 = v25;
      v33 = v141;
      v31(v141, v6, v11);
      v171 = v29;
      v34 = v29 + v30 * v32;
      v35 = v142;
      v152 = v31;
      v31(v142, v34, v11);
      v36 = v155;
      LODWORD(v157) = sub_220DA21C0();
      v10 = v36;
      if (v36)
      {
        v139 = *v170;
        (*v170)(v35, v11);
        (v139)(v33, v11);
LABEL_114:

        return;
      }

      v155 = 0;
      v143 = v26;
      v37 = *v170;
      (*v170)(v35, v11);
      v151 = v37;
      (v37)(v33, v11);
      v144 = v32;
      v38 = v32 + 2;
      v39 = v171 + v30 * (v32 + 2);
      v40 = v30;
      v160 = v30;
      v41 = v158;
      while (1)
      {
        v42 = v38;
        if (++v156 >= v41)
        {
          break;
        }

        v43 = v164;
        v44 = v152;
        v171 = v38;
        (v152)(v164, v39, v11);
        v45 = v165;
        v44(v165, v6, v11);
        v46 = v166;
        sub_220DBE920();
        v47 = v168;
        sub_220DBE050();
        v49 = v48;
        v10 = *v162;
        (*v162)(v46, v47);
        v50 = v167;
        sub_220DBE920();
        sub_220DBE050();
        v52 = v51;
        v53 = v47;
        v11 = v163;
        v10(v50, v53);
        v54 = v151;
        (v151)(v45, v11);
        v54(v43, v11);
        v42 = v171;
        v41 = v158;
        v40 = v160;
        v39 += v160;
        v6 += v160;
        v38 = v171 + 1;
        if (((v157 ^ (v49 >= v52)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v156 = v41;
LABEL_10:
      a4 = v145;
      if (v157)
      {
        v28 = v156;
        v27 = v144;
        if (v156 < v144)
        {
          goto LABEL_138;
        }

        v10 = v154;
        if (v144 >= v156)
        {
          v26 = v143;
          goto LABEL_33;
        }

        if (v41 >= v42)
        {
          v55 = v42;
        }

        else
        {
          v55 = v41;
        }

        v56 = v40 * (v55 - 1);
        v57 = v40 * v55;
        v58 = v144;
        v59 = v144 * v40;
        do
        {
          if (v58 != --v28)
          {
            v60 = *v10;
            if (!v60)
            {
              goto LABEL_143;
            }

            v6 = v60 + v59;
            v61 = *v161;
            (*v161)(v149, v60 + v59, v11);
            v62 = v59 < v56 || v6 >= v60 + v57;
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v61((v60 + v56), v149, v11);
            v10 = v154;
            v40 = v160;
          }

          ++v58;
          v56 -= v40;
          v57 -= v40;
          v59 += v40;
        }

        while (v58 < v28);
        a4 = v145;
      }

      else
      {
        v10 = v154;
      }

      v26 = v143;
      v28 = v156;
      v27 = v144;
    }

LABEL_33:
    v63 = *(v10 + 1);
    if (v28 < v63)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_135;
      }

      if (v28 - v27 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v28 < v27)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D562D4();
      v26 = v127;
    }

    v6 = *(v26 + 2);
    v85 = v6 + 1;
    v10 = v154;
    if (v6 >= *(v26 + 3) >> 1)
    {
      sub_220D562D4();
      v10 = v154;
      v26 = v128;
    }

    *(v26 + 2) = v85;
    v86 = v26 + 32;
    v87 = &v26[16 * v6 + 32];
    *v87 = v27;
    *(v87 + 1) = v28;
    v171 = *v146;
    if (!v171)
    {
      goto LABEL_144;
    }

    v156 = v28;
    if (v6)
    {
      while (1)
      {
        v88 = v85 - 1;
        v89 = &v86[16 * v85 - 16];
        v90 = &v26[16 * v85];
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v91 = *(v26 + 4);
          v92 = *(v26 + 5);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_69:
          if (v94)
          {
            goto LABEL_121;
          }

          v106 = *v90;
          v105 = *(v90 + 1);
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_124;
          }

          v110 = *(v89 + 1);
          v111 = v110 - *v89;
          if (__OFSUB__(v110, *v89))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v108, v111))
          {
            goto LABEL_129;
          }

          if (v108 + v111 >= v93)
          {
            if (v93 < v111)
            {
              v88 = v85 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v85 < 2)
        {
          goto LABEL_123;
        }

        v113 = *v90;
        v112 = *(v90 + 1);
        v101 = __OFSUB__(v112, v113);
        v108 = v112 - v113;
        v109 = v101;
LABEL_84:
        if (v109)
        {
          goto LABEL_126;
        }

        v115 = *v89;
        v114 = *(v89 + 1);
        v101 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v101)
        {
          goto LABEL_128;
        }

        if (v116 < v108)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v88 - 1 >= v85)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v10)
        {
          goto LABEL_141;
        }

        v120 = &v86[16 * v88 - 16];
        v121 = *v120;
        v122 = v86;
        v6 = &v86[16 * v88];
        v123 = *(v6 + 8);
        v124 = v155;
        sub_220DA3B04(*v10 + *(v153 + 72) * *v120, *v10 + *(v153 + 72) * *v6, *v10 + *(v153 + 72) * v123, v171);
        v155 = v124;
        if (v124)
        {
          goto LABEL_114;
        }

        if (v123 < v121)
        {
          goto LABEL_116;
        }

        v10 = v26;
        v125 = *(v26 + 2);
        if (v88 > v125)
        {
          goto LABEL_117;
        }

        *v120 = v121;
        *(v120 + 1) = v123;
        if (v88 >= v125)
        {
          goto LABEL_118;
        }

        v85 = v125 - 1;
        sub_220D81848((v6 + 16), v125 - 1 - v88, v6);
        *(v10 + 2) = v125 - 1;
        v126 = v125 > 2;
        v26 = v10;
        v10 = v154;
        v86 = v122;
        if (!v126)
        {
          goto LABEL_98;
        }
      }

      v95 = &v86[16 * v85];
      v96 = *(v95 - 8);
      v97 = *(v95 - 7);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_119;
      }

      v100 = *(v95 - 6);
      v99 = *(v95 - 5);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_120;
      }

      v102 = *(v90 + 1);
      v103 = v102 - *v90;
      if (__OFSUB__(v102, *v90))
      {
        goto LABEL_122;
      }

      v101 = __OFADD__(v93, v103);
      v104 = v93 + v103;
      if (v101)
      {
        goto LABEL_125;
      }

      if (v104 >= v98)
      {
        v118 = *v89;
        v117 = *(v89 + 1);
        v101 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v101)
        {
          goto LABEL_133;
        }

        if (v93 < v119)
        {
          v88 = v85 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = *(v10 + 1);
    v25 = v156;
    a4 = v145;
    if (v156 >= v24)
    {
      goto LABEL_102;
    }
  }

  v64 = v27 + a4;
  if (__OFADD__(v27, a4))
  {
    goto LABEL_136;
  }

  if (v64 >= v63)
  {
    v64 = *(v10 + 1);
  }

  if (v64 < v27)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v26 = sub_220D81650();
LABEL_104:
    v130 = v6;
    v131 = v26 + 16;
    v132 = *(v26 + 2);
    while (v132 >= 2)
    {
      v133 = *v130;
      if (!v133)
      {
        goto LABEL_142;
      }

      v6 = v26;
      v134 = &v26[16 * v132];
      v135 = *v134;
      v136 = &v131[2 * v132];
      v137 = *(v136 + 1);
      sub_220DA3B04(v133 + *(v153 + 72) * *v134, v133 + *(v153 + 72) * *v136, v133 + *(v153 + 72) * v137, v171);
      if (v10)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_130;
      }

      if (v132 - 2 >= *v131)
      {
        goto LABEL_131;
      }

      *v134 = v135;
      *(v134 + 1) = v137;
      v138 = *v131 - v132;
      if (*v131 < v132)
      {
        goto LABEL_132;
      }

      v132 = *v131 - 1;
      sub_220D81848(v136 + 16, v138, v136);
      *v131 = v132;
      v130 = v154;
      v26 = v6;
    }

    goto LABEL_114;
  }

  if (v28 == v64)
  {
    goto LABEL_49;
  }

  v143 = v26;
  v65 = *v10;
  v66 = *(v153 + 72);
  v160 = *(v153 + 16);
  v67 = (v65 + v66 * (v28 - 1));
  v157 = -v66;
  v144 = v27;
  v68 = (v27 - v28);
  v158 = v65;
  v147 = v66;
  v6 = v65 + v28 * v66;
  v148 = v64;
LABEL_42:
  v156 = v28;
  v150 = v6;
  v151 = v68;
  v69 = v68;
  v152 = v67;
  v70 = v67;
  while (1)
  {
    v171 = v69;
    v71 = v164;
    v72 = v160;
    (v160)(v164, v6, v11);
    v73 = v165;
    v72(v165, v70, v11);
    v74 = v166;
    sub_220DBE920();
    v10 = v168;
    sub_220DBE050();
    v76 = v75;
    v77 = *v162;
    (*v162)(v74, v10);
    v78 = v167;
    sub_220DBE920();
    sub_220DBE050();
    v80 = v79;
    v77(v78, v10);
    v11 = v163;
    v81 = *v170;
    (*v170)(v73, v163);
    (v81)(v71, v11);
    if (v76 >= v80)
    {
LABEL_47:
      v28 = v156 + 1;
      v67 = &v152[v147];
      v68 = v151 - 1;
      v6 = v150 + v147;
      if (v156 + 1 == v148)
      {
        v28 = v148;
        v26 = v143;
        v27 = v144;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v82 = v171;
    if (!v158)
    {
      break;
    }

    v83 = *v161;
    v84 = v159;
    (*v161)(v159, v6, v11);
    swift_arrayInitWithTakeFrontToBack();
    v83(v70, v84, v11);
    v70 += v157;
    v6 += v157;
    v62 = __CFADD__(v82, 1);
    v69 = v82 + 1;
    if (v62)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_220DA3B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v89 = a4;
  v86 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v6 = *(v81 - 8);
  v7 = MEMORY[0x28223BE20](v81);
  v84 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = v72 - v9;
  v88 = sub_220DBE960();
  v10 = MEMORY[0x28223BE20](v88);
  v82 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v85 = v72 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = v86 - a2;
  if (v86 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v16;
  v92 = a1;
  v91 = v89;
  v79 = (v6 + 8);
  v80 = (v13 + 16);
  v78 = (v13 + 8);
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    v44 = v89;
    sub_220CFB4E0(a2, v18 / v16, v89);
    v45 = v44 + v21 * v16;
    v46 = -v16;
    v47 = v45;
    v48 = v86;
    v87 = a1;
    v74 = -v16;
LABEL_36:
    v49 = a2 + v46;
    v50 = v48;
    v72[0] = v47;
    v51 = v47;
    v75 = a2 + v46;
    v76 = a2;
    while (1)
    {
      if (v45 <= v89)
      {
        v92 = a2;
        v90 = v51;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v73 = v51;
      v86 = v50 + v46;
      v52 = v45 + v46;
      v53 = v45;
      v54 = *v80;
      v55 = v88;
      v77 = v50;
      v54();
      v56 = v82;
      (v54)(v82, v49, v55);
      v57 = v83;
      sub_220DBE920();
      v58 = v81;
      sub_220DBE050();
      v60 = v59;
      v61 = *v79;
      (*v79)(v57, v58);
      v62 = v58;
      v63 = v84;
      sub_220DBE920();
      sub_220DBE050();
      v65 = v64;
      v61(v63, v62);
      v66 = *v78;
      (*v78)(v56, v55);
      v66(v85, v55);
      if (v60 < v65)
      {
        v45 = v53;
        v48 = v86;
        if (v77 < v76 || v86 >= v76)
        {
          a2 = v75;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v73;
          v46 = v74;
          a1 = v87;
        }

        else
        {
          v70 = v73;
          v46 = v74;
          v47 = v73;
          v71 = v75;
          a2 = v75;
          a1 = v87;
          if (v77 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v71;
            v47 = v70;
          }
        }

        goto LABEL_36;
      }

      v67 = v86;
      if (v77 < v53 || v86 >= v53)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = v67;
        v45 = v52;
        v51 = v52;
        a1 = v87;
        v49 = v75;
        a2 = v76;
        v46 = v74;
      }

      else
      {
        v51 = v52;
        v17 = v53 == v77;
        v50 = v86;
        v45 = v52;
        a1 = v87;
        v49 = v75;
        a2 = v76;
        v46 = v74;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v50 = v67;
          v45 = v52;
          v51 = v52;
        }
      }
    }

    v92 = a2;
    v90 = v72[0];
  }

  else
  {
    v22 = v89;
    sub_220CFB4E0(a1, (a2 - a1) / v16, v89);
    v76 = v16;
    v77 = v22 + v20 * v16;
    v90 = v77;
    v23 = v86;
    v24 = v82;
    while (v89 < v77 && a2 < v23)
    {
      v87 = a1;
      v26 = *v80;
      v27 = v85;
      v28 = v88;
      (*v80)(v85, a2, v88);
      (v26)(v24, v89, v28);
      v29 = v83;
      sub_220DBE920();
      v30 = v81;
      sub_220DBE050();
      v32 = v31;
      v33 = *v79;
      (*v79)(v29, v30);
      v34 = a2;
      v35 = v84;
      sub_220DBE920();
      sub_220DBE050();
      v37 = v36;
      v33(v35, v30);
      v38 = *v78;
      (*v78)(v24, v28);
      v38(v27, v28);
      if (v32 >= v37)
      {
        v39 = v76;
        v42 = v89 + v76;
        v40 = v87;
        if (v87 < v89 || v87 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v34;
        }

        else
        {
          a2 = v34;
          if (v87 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v91 = v42;
        v89 = v42;
      }

      else
      {
        v39 = v76;
        a2 = v34 + v76;
        v40 = v87;
        if (v87 < v34 || v87 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v87 != v34)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v40 + v39;
      v92 = a1;
      v23 = v86;
    }
  }

LABEL_58:
  sub_220D81768(&v92, &v91, &v90);
  return 1;
}

void sub_220DA41B8(uint64_t a1)
{
  sub_220DA422C();
  if (v1 <= 0x3F)
  {
    sub_220DA42CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220DA422C()
{
  if (!qword_27CF96510)
  {
    sub_220DA4274(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96510);
    }
  }
}

void sub_220DA4274(uint64_t a1)
{
  if (!qword_27CF96518)
  {
    sub_220D287C0();
    v1 = sub_220DBE140();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF96518);
    }
  }
}

void sub_220DA42CC(uint64_t a1)
{
  if (!qword_27CF96520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94FA0, &unk_220DC17F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96520);
    }
  }
}

id static NSBundle.weatherAppSupport.getter()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v1 = qword_280FA6608;

  return v1;
}

uint64_t SunriseSunsetNextEventFutureDayCountdown.init(date:location:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v62 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v59 = sub_220DBE1A0();
  OUTLINED_FUNCTION_0();
  v57 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v68 = sub_220DC03C0();
  OUTLINED_FUNCTION_0();
  v66 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v65 = sub_220DC04D0();
  OUTLINED_FUNCTION_0();
  v61 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_220DBE600();
  sub_220DC04C0();
  v64 = a2;
  sub_220DBF180();
  v63 = a3;
  sub_220DC04B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v31 = sub_220DBE6C0();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_220DC17A0;
  (*(v33 + 104))(v35 + v34, *MEMORY[0x277CC9980], v31);
  sub_220CE05C8(v35);
  v36 = v21;
  sub_220DC03B0();
  v37 = a1;
  sub_220DBE620();

  v38 = *(v62 + 8);
  v38(v11, v58);
  v39 = sub_220DBE160();
  LOBYTE(v31) = v40;
  (*(v57 + 8))(v16, v59);
  if (v31)
  {
    v39 = 0;
  }

  v69 = 0;
  v70 = 1;
  if (v39 <= 48)
  {
    sub_220DBE740();
    OUTLINED_FUNCTION_1_0();
    (*(v46 + 8))(v63);
    sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0();
    (*(v47 + 8))(v64);
    v38(a1, v58);
    (*(v61 + 8))(v26, v65);
    v48 = OUTLINED_FUNCTION_14_19();
    v49(v48);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48);
    *a4 = v39;
    (*(v66 + 32))(a4 + v50, v36, v68);
    type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  }

  else
  {
    v41 = v36;
    if (sub_220DA573C(&v69, v30, v37, v36) < 8)
    {
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48);
      v51 = v69;
      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v52 + 8))(v63);
      sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0();
      (*(v53 + 8))(v64);
      v38(v37, v58);
      (*(v61 + 8))(v26, v65);
      v54 = OUTLINED_FUNCTION_14_19();
      v55(v54);
      *a4 = v51;
      (*(v66 + 32))(a4 + v60, v41, v68);
    }

    else
    {
      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v42 + 8))(v63);
      sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0();
      (*(v43 + 8))(v64);
      v38(v37, v58);
      (*(v61 + 8))(v26, v65);
      v44 = OUTLINED_FUNCTION_14_19();
      v45(v44);
      (*(v66 + 32))(a4, v36, v68);
    }

    type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  }

  return swift_storeEnumTagMultiPayload();
}

char *SunriseSunsetNextEventFutureDayCountdown.description.getter()
{
  sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v132 = v2;
  v133 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v130 = v3 - v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  v131 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v7);
  v9 = &v128 - v8;
  v138 = sub_220DC03C0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v134 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v136 = v19;
  OUTLINED_FUNCTION_23();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v128 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v137 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v135 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v129 = v28;
  OUTLINED_FUNCTION_23();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v128 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v128 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v128 - v36;
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  MEMORY[0x28223BE20](EventFutureDayCountdown);
  OUTLINED_FUNCTION_1();
  sub_220DA5CF8(v0, v40 - v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78);
    OUTLINED_FUNCTION_23_13();
    v53 = v138;
    v54(v37);
    v55 = *(v11 + 16);
    v55(v35, v37, v53);
    v56 = OUTLINED_FUNCTION_9_24();
    v58 = v57(v56);
    if (v58 == *MEMORY[0x277D7B448])
    {
      OUTLINED_FUNCTION_11_20();
      v59 = OUTLINED_FUNCTION_9_24();
      v60(v59);
      v52 = "of hours until next sunset";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_18();
    }

    else
    {
      if (v58 != *MEMORY[0x277D7B440])
      {
        v137 = v35;
        sub_220DBF3D0();
        v136 = v37;
        v55(v32, v37, v53);
        v105 = sub_220DBF3F0();
        v106 = sub_220DC0980();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v139 = v135;
          *v107 = 136446210;
          v55(v129, v32, v53);
          OUTLINED_FUNCTION_9_24();
          v108 = sub_220DC0630();
          v110 = v109;
          v111 = *(v11 + 8);
          v111(v32, v138);
          v112 = sub_220D3F210(v108, v110, &v139);
          v53 = v138;

          *(v107 + 4) = v112;
          _os_log_impl(&dword_220CD1000, v105, v106, "Unexpected sunEvent type: %{public}s", v107, 0xCu);
          OUTLINED_FUNCTION_16_20();
          MEMORY[0x223D98FB0](v107, -1, -1);
        }

        else
        {

          v111 = *(v11 + 8);
          v124 = OUTLINED_FUNCTION_17_13();
          (v111)(v124);
        }

        (*(v132 + 8))(v9, v133);
        v111(v136, v53);
        v111(v137, v53);
        return 0;
      }

      OUTLINED_FUNCTION_11_20();
      v80 = OUTLINED_FUNCTION_9_24();
      v81(v80);
      v52 = "of days until next sunrise";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_31();
    }

    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    OUTLINED_FUNCTION_13_4();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v83 = OUTLINED_FUNCTION_24_3(v82);
    v84 = MEMORY[0x277D83B88];
    *(v83 + 16) = xmmword_220DC17A0;
    OUTLINED_FUNCTION_7_24(v83, v84);
    OUTLINED_FUNCTION_17_0();

    v85 = OUTLINED_FUNCTION_17_13();
    v86(v85);
    sub_220DBE560();
    OUTLINED_FUNCTION_1_0();
    (*(v87 + 8))(v35);
    return v52;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v61 = v136;
    v62 = OUTLINED_FUNCTION_9_24();
    v63 = v138;
    v64(v62);
    v65 = *(v11 + 16);
    v66 = v134;
    OUTLINED_FUNCTION_22_12();
    v65();
    v67 = OUTLINED_FUNCTION_24_8();
    v69 = v68(v67);
    if (v69 == *MEMORY[0x277D7B448])
    {
      OUTLINED_FUNCTION_11_20();
      v70 = OUTLINED_FUNCTION_24_8();
      v71(v70);
      v52 = "than 7 days in the future";
      if (qword_280FA6600 == -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v69 != *MEMORY[0x277D7B440])
      {
        v113 = v130;
        sub_220DBF3D0();
        OUTLINED_FUNCTION_22_12();
        v65();
        v114 = sub_220DBF3F0();
        v115 = sub_220DC0980();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v135 = v116;
          v137 = swift_slowAlloc();
          v139 = v137;
          *v116 = 136446210;
          (v65)(v129, v15, v63);
          v117 = sub_220DC0630();
          v119 = v118;
          v120 = OUTLINED_FUNCTION_18_16();
          v61(v120);
          v121 = sub_220D3F210(v117, v119, &v139);

          v122 = v135;
          *(v135 + 4) = v121;
          _os_log_impl(&dword_220CD1000, v114, v115, "Unexpected sunEvent type: %{public}s", v122, 0xCu);
          OUTLINED_FUNCTION_16_20();
          MEMORY[0x223D98FB0](v122, -1, -1);

          (*(v132 + 8))(v130, v133);
        }

        else
        {

          v125 = OUTLINED_FUNCTION_18_16();
          v61(v125);
          (*(v132 + 8))(v113, v133);
        }

        (v61)(v136, v63);
        v126 = OUTLINED_FUNCTION_24_8();
        v61(v126);
        return 0;
      }

      OUTLINED_FUNCTION_11_20();
      v88 = OUTLINED_FUNCTION_24_8();
      v89(v88);
      v52 = "D750A44512BundleLookup";
      if (qword_280FA6600 == -1)
      {
LABEL_26:
        OUTLINED_FUNCTION_5_31();
        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_13_4();
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v91 = OUTLINED_FUNCTION_24_3(v90);
        v92 = MEMORY[0x277D83B88];
        *(v91 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_7_24(v91, v92);
        OUTLINED_FUNCTION_17_0();

        v93 = OUTLINED_FUNCTION_9_24();
        v94(v93);
        sub_220DBE560();
        OUTLINED_FUNCTION_1_0();
        (*(v95 + 8))(v66);
        return v52;
      }
    }

    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78);
  OUTLINED_FUNCTION_23_13();
  v42 = v135;
  v43 = v138;
  v44(v135);
  v45 = *(v11 + 16);
  v46 = v137;
  OUTLINED_FUNCTION_22_12();
  v45();
  v47 = OUTLINED_FUNCTION_17_13();
  v49 = v48(v47);
  if (v49 != *MEMORY[0x277D7B448])
  {
    if (v49 == *MEMORY[0x277D7B440])
    {
      OUTLINED_FUNCTION_11_20();
      v72 = OUTLINED_FUNCTION_17_13();
      v73(v72);
      v52 = " than 7 days in the future";
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_8_18();
      goto LABEL_18;
    }

    v96 = v131;
    sub_220DBF3D0();
    OUTLINED_FUNCTION_22_12();
    v45();
    v97 = sub_220DBF3F0();
    v98 = sub_220DC0980();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v139 = v136;
      *v99 = 136446210;
      (v45)(v129, v23, v43);
      sub_220DC0630();
      v100 = OUTLINED_FUNCTION_21_13();
      v42(v100, v138);
      v101 = OUTLINED_FUNCTION_24_8();
      v104 = sub_220D3F210(v101, v102, v103);
      v43 = v138;

      *(v99 + 4) = v104;
      _os_log_impl(&dword_220CD1000, v97, v98, "Unexpected sunEvent type: %{public}s", v99, 0xCu);
      OUTLINED_FUNCTION_16_20();
      MEMORY[0x223D98FB0](v99, -1, -1);

      (*(v132 + 8))(v131, v133);
    }

    else
    {

      v123 = OUTLINED_FUNCTION_21_13();
      v42(v123, v43);
      (*(v132 + 8))(v96, v133);
    }

    v42(v135, v43);
    v42(v137, v43);
    return 0;
  }

  OUTLINED_FUNCTION_11_20();
  v50 = OUTLINED_FUNCTION_17_13();
  v51(v50);
  v52 = "of days until next sunset";
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_5_31();
LABEL_18:
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  OUTLINED_FUNCTION_13_4();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v75 = OUTLINED_FUNCTION_24_3(v74);
  v76 = MEMORY[0x277D83B88];
  *(v75 + 16) = xmmword_220DC17A0;
  OUTLINED_FUNCTION_7_24(v75, v76);
  OUTLINED_FUNCTION_17_0();

  v77 = OUTLINED_FUNCTION_9_24();
  v78(v77);
  sub_220DBE560();
  OUTLINED_FUNCTION_1_0();
  (*(v79 + 8))(v46);
  return v52;
}

uint64_t sub_220DA573C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220DBE1A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8] != 1)
  {
    return *a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v26[3] = a3;
  v16 = sub_220DBE6C0();
  v26[2] = a4;
  v17 = v16;
  v18 = *(v16 - 8);
  v27 = v8;
  v19 = v18;
  v20 = *(v18 + 80);
  v26[1] = a2;
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220DC17A0;
  (*(v19 + 104))(v22 + v21, *MEMORY[0x277CC9968], v17);
  sub_220CE05C8(v22);
  sub_220DC03B0();
  sub_220DBE620();

  (*(v9 + 8))(v11, v27);
  v23 = sub_220DBE150();
  LOBYTE(v21) = v24;
  (*(v13 + 8))(v15, v12);
  if (v21)
  {
    v23 = 0;
  }

  swift_beginAccess();
  *a1 = v23;
  a1[8] = 0;
  return v23;
}

uint64_t SunriseSunsetNextEventFutureDayCountdown.shortDescription.getter()
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  MEMORY[0x28223BE20](EventFutureDayCountdown);
  OUTLINED_FUNCTION_1();
  v4 = (v3 - v2);
  sub_220DA5CF8(v0, v3 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *v4;
    v4 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48));
    if (qword_280FA6600 == -1)
    {
LABEL_6:
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      goto LABEL_10;
    }

LABEL_11:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v4;
    v4 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96530, &unk_220DC7A78) + 48));
    if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  v6 = 7;
LABEL_10:
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = OUTLINED_FUNCTION_24_3(v7);
  v9 = MEMORY[0x277D83B88];
  *(v8 + 16) = xmmword_220DC17A0;
  v10 = MEMORY[0x277D83C10];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v6;
  v11 = sub_220DC05F0();

  sub_220DC03C0();
  OUTLINED_FUNCTION_1_0();
  (*(v12 + 8))(v4);
  return v11;
}

uint64_t type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(uint64_t a1)
{
  result = qword_27CF96538;
  if (!qword_27CF96538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DA5CF8(uint64_t a1, uint64_t a2)
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  (*(*(EventFutureDayCountdown - 8) + 16))(a2, a1, EventFutureDayCountdown);
  return a2;
}

void sub_220DA5D5C(uint64_t a1)
{
  sub_220DA5DD0(319);
  if (v1 <= 0x3F)
  {
    sub_220DA5E3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220DA5DD0(uint64_t a1)
{
  if (!qword_27CF96548)
  {
    sub_220DC03C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF96548);
    }
  }
}

void sub_220DA5E3C()
{
  if (!qword_27CF96550)
  {
    v0 = sub_220DC03C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF96550);
    }
  }
}

uint64_t RandomAccessCollection<>.averagePressure(from:timeZone:unit:)@<X0>(uint64_t a1@<X0>, void *a3@<X2>, void (**a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a1;
  v80 = a5;
  v70 = a4;
  v78 = a3;
  v68 = a6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v69 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v77 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v76 = v63 - v12;
  v75 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v79 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v73 = v16 - v15;
  v17 = *(a4 - 1);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v67 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v63 - v36;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v24 + 8))(v28, v22);
  (*(v17 + 16))(v21, v72, v70);
  v81 = v37;
  v82 = v34;
  v38 = sub_220DC0700();
  v39 = *(v38 + 16);
  if (v39)
  {
    v64 = v37;
    v65 = v34;
    v66 = v29;
    v83 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v39, 0);
    v40 = v83;
    v72 = *(v79 + 16);
    v41 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v63[1] = v38;
    v42 = v38 + v41;
    v43 = *(v79 + 72);
    v70 = v69 + 1;
    v71 = v43;
    v69 = (v79 + 8);
    v63[2] = v39;
    v79 += 16;
    v44 = v74;
    v45 = v70;
    do
    {
      v80 = v40;
      v46 = v73;
      v47 = v75;
      v72(v73, v42, v75);
      v48 = v77;
      sub_220DBE940();
      v49 = v76;
      sub_220DBE130();
      v50 = *v45;
      (*v45)(v48, v44);
      sub_220DBE050();
      v52 = v51;
      v50(v49, v44);
      v53 = v46;
      v40 = v80;
      (*v69)(v53, v47);
      v83 = v40;
      v55 = *(v40 + 16);
      v54 = *(v40 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_220CFB704((v54 > 1), v55 + 1, 1);
        v40 = v83;
      }

      *(v40 + 16) = v55 + 1;
      *(v40 + 8 * v55 + 32) = v52;
      v42 += v71;
      --v39;
    }

    while (v39);

    v29 = v66;
    v34 = v65;
    v37 = v64;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v56 = *(v40 + 16);
  if (v56)
  {
    v57 = (v40 + 32);
    v58 = 0.0;
    do
    {
      v59 = *v57++;
      v58 = v58 + v59;
      --v56;
    }

    while (v56);
  }

  sub_220D5E724();
  v60 = v78;
  sub_220DBE040();
  v61 = *(v67 + 8);
  v61(v34, v29);
  return (v61)(v37, v29);
}

double RandomAccessCollection<>.averageHumidity(from:timeZone:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v56 = a1;
  v59 = a4;
  v55 = a3;
  v60 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v53 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v54 = v13 - v12;
  v14 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v58 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v16 + 8))(v20, v14);
  (*(v10 + 16))(v54, v57, v55);
  v56 = v29;
  v57 = v26;
  v61 = v29;
  v62 = v26;
  v30 = sub_220DC0700();
  v31 = *(v30 + 16);
  if (v31)
  {
    v55 = v22;
    v63 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v31, 0);
    v32 = v63;
    v33 = v53 + 16;
    v59 = *(v53 + 16);
    v34 = *(v53 + 80);
    v53 = v30;
    v54 = v31;
    v35 = v30 + ((v34 + 32) & ~v34);
    v36 = *(v33 + 56);
    v37 = (v33 - 8);
    v38 = v31;
    v39 = v33;
    do
    {
      v40 = v60;
      v41 = v39;
      v59(v9, v35, v60);
      sub_220DBE930();
      v43 = v42;
      (*v37)(v9, v40);
      v63 = v32;
      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_220CFB704((v44 > 1), v45 + 1, 1);
        v32 = v63;
      }

      *(v32 + 16) = v45 + 1;
      *(v32 + 8 * v45 + 32) = v43;
      v35 += v36;
      --v38;
      v39 = v41;
    }

    while (v38);

    v46 = v58;
    v31 = v54;
    v22 = v55;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
    v46 = v58;
  }

  v47 = *(v32 + 16);
  if (v47)
  {
    v48 = (v32 + 32);
    v49 = 0.0;
    do
    {
      v50 = *v48++;
      v49 = v49 + v50;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = 0.0;
  }

  v51 = *(v22 + 8);
  v51(v57, v46);
  v51(v56, v46);
  return v49 / v31;
}

uint64_t sub_220DA6898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_220DBE8F0();
  sub_220CD9B24();
  v10 = sub_220DC0580();
  v11 = *(v5 + 8);
  v11(v9, v3);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v12 = sub_220DBE440();
    v11(v9, v3);
  }

  return v12 & 1;
}

uint64_t sub_220DA6A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220DA6A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220DA6B04()
{
  v1 = sub_220DBFE80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220DBF9C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      return sub_220DBFF20();
    }
  }

  else
  {

    sub_220DC0990();
    v11 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();
    sub_220DA9DA4(v9, 0);
    (*(v6 + 8))(v8, v5);
    if (v12[15] != 1)
    {
      return sub_220DBFF20();
    }
  }

  (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
  return sub_220DBFF30();
}

uint64_t sub_220DA6D1C(SEL *a1)
{
  v3 = sub_220DBFE80();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_220DBF9C0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
LABEL_3:
      v16 = [objc_opt_self() *a1];
      return sub_220DBFF40();
    }
  }

  else
  {

    sub_220DC0990();
    v18 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();
    sub_220DA9DA4(v15, 0);
    (*(v11 + 8))(v14, v9);
    if (v19[15] != 1)
    {
      goto LABEL_3;
    }
  }

  (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v3);
  return sub_220DBFF30();
}

uint64_t sub_220DA6F3C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *a1 = sub_220DC0120();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96560, &qword_220DC7C00);
  return sub_220DA6FA0(__dst, a1 + *(v4 + 44));
}

uint64_t sub_220DA6FA0@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v48 = a2;
  v43 = sub_220DBF9F0();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96568, &qword_220DC7C08) - 8;
  v4 = MEMORY[0x28223BE20](v46);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = sub_220DC04E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96578, &qword_220DC7C18);
  v44 = *(v45 - 8);
  v15 = MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = &v37 - v17;
  memcpy(__dst, a1, 0x88uLL);
  sub_220DA7650(v14);
  sub_220DBFA20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96580, &qword_220DC7C20);
  v18 = sub_220DA9B0C();
  sub_220DA9EC0(&qword_280FA6668, MEMORY[0x277D7B460], MEMORY[0x277D7B458]);
  v49 = v12;
  v50 = v18;
  swift_getOpaqueTypeConformance2();
  sub_220DBFE40();
  (*(v9 + 8))(v11, v8);
  sub_220CEC81C(v14);
  v19 = v38;
  memcpy(__dst, v38, 0x88uLL);
  v20 = sub_220DA6D1C(&selRef_tertiarySystemFillColor);
  memcpy(__dst, v19, 0x88uLL);
  v21 = sub_220DA6D1C(&selRef_secondarySystemFillColor);
  v22 = swift_allocObject();
  memcpy(v22 + 2, v19, 0x88uLL);
  v22[19] = v21;
  v22[20] = v20;
  (*(v41 + 104))(v40, *MEMORY[0x277CE00F0], v43);
  sub_220DA9DBC(v19, __dst);

  sub_220DC0010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A0, &unk_220DC7C40);
  sub_220DBFFF0();
  sub_220DC0000();
  LODWORD(v22) = sub_220DBFB30();

  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96598, &qword_220DC7C38) + 36)] = v22;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96588, &qword_220DC7C28) + 36);
  v24 = *MEMORY[0x277CE13B8];
  v25 = sub_220DC0150();
  (*(*(v25 - 8) + 104))(&v7[v23], v24, v25);
  v26 = &v7[*(v46 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  v27 = v44;
  v28 = *(v44 + 16);
  v29 = v42;
  v30 = v39;
  v31 = v45;
  v28(v42, v39, v45);
  v32 = v47;
  sub_220DA9DF4(v7, v47);
  v33 = v48;
  v28(v48, v29, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A8, &qword_220DC7C50);
  sub_220DA9DF4(v32, &v33[*(v34 + 48)]);
  sub_220D3DD1C(v7, &qword_27CF96568, &qword_220DC7C08);
  v35 = *(v27 + 8);
  v35(v30, v31);
  sub_220D3DD1C(v32, &qword_27CF96568, &qword_220DC7C08);
  return (v35)(v29, v31);
}

uint64_t sub_220DA7650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96590, &qword_220DC7C30);
  MEMORY[0x28223BE20](v39);
  v43 = &v35 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96588, &qword_220DC7C28);
  MEMORY[0x28223BE20](v44);
  v42 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965B8, &qword_220DC7C60);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v6;
  v7 = sub_220DBF9F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965A0, &unk_220DC7C40);
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_220DBFC80();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v47, v2, 0x88uLL);
  if (v47[16] == 2)
  {
    memcpy(v46, v2, sizeof(v46));
    v18 = sub_220DA6B04();
    v19 = swift_allocObject();
    memcpy((v19 + 16), v47, 0x88uLL);
    v45 = v19;
    *(v19 + 152) = v18;
    v20 = MEMORY[0x277CDF9E8];
  }

  else
  {
    if (v47[16])
    {
      (*(v15 + 104))(v17, *MEMORY[0x277CE0AA8], v14);
      sub_220DBFC10();
      v21 = sub_220DBFBE0();
      (*(v15 + 8))(v17, v14);
      v22 = swift_allocObject();
      memcpy((v22 + 16), v47, 0x88uLL);
      v45 = v22;
      *(v22 + 152) = v21;
    }

    else
    {
      v45 = swift_allocObject();
      memcpy((v45 + 16), v2, 0x88uLL);
    }

    v20 = MEMORY[0x277CDF9D8];
  }

  (*(v8 + 104))(v10, *MEMORY[0x277CE00F0], v7);

  sub_220DA9DBC(v47, v46);
  sub_220DC0010();
  sub_220DBFFF0();
  sub_220DC0000();
  v23 = sub_220DBFB40();
  v25 = v41;
  v24 = v42;
  (*(v41 + 16))(v42, v13, v11);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96598, &qword_220DC7C38) + 36)) = v23;
  v26 = *(v44 + 36);
  v27 = *MEMORY[0x277CE13B8];
  v28 = sub_220DC0150();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  v29 = sub_220DBF7D0();
  v30 = v43;
  (*(*(v29 - 8) + 104))(v43, *v20, v29);
  sub_220DA9EC0(&qword_280FA6710, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_220DC05B0();
  if (result)
  {
    sub_220DA9C34();
    sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30, MEMORY[0x277D84470]);
    v32 = v36;
    sub_220DBFDA0();

    sub_220D3DD1C(v30, &qword_27CF96590, &qword_220DC7C30);
    sub_220D3DD1C(v24, &qword_27CF96588, &qword_220DC7C28);
    (*(v25 + 8))(v13, v11);
    v33 = v40;
    (*(v37 + 32))(v40, v32, v38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
    v34 = v33 + *(result + 36);
    *v34 = 0x3FF0000000000000;
    *(v34 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220DA7D48()
{
  v0 = sub_220DBF9F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CE00F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96570, &qword_220DC7C10);
  sub_220DA9B0C();
  sub_220DBFD80();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_220DA7E6C(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_220DBFC80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = *(a2 + 80);
  v66 = *(a2 + 72);
  v67 = v15;
  v16 = *(a2 + 96);
  v64 = *(a2 + 88);
  v65 = v16;
  v17 = *(a2 + 112);
  v68 = *(a2 + 104);
  v69 = v17;
  v18 = *(a2 + 120);
  v19 = *(a2 + 128);
  v20 = 0.0;
  if (v14 == 2)
  {
    v21 = MEMORY[0x277CE0A58];
  }

  else
  {
    if (v14)
    {
      v22 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
      v20 = 1.0;
      if (v22)
      {
        v20 = 4.0;
      }
    }

    v21 = MEMORY[0x277CE0AA8];
  }

  if (a5 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = a5;
  }

  v24 = v23 * 0.5 - v20;
  memcpy(__dst, a2, sizeof(__dst));
  sub_220DA83DC(v24, v25);
  memcpy(__dst, a2, sizeof(__dst));
  sub_220DA848C(a1, a3, v24);
  (*(v11 + 104))(v13, *v21, v10);
  sub_220DBFC10();
  v63[1] = sub_220DBFBE0();
  (*(v11 + 8))(v13, v10);
  v26 = *a1;
  __dst[0] = v18;
  __dst[1] = v19;
  v27 = sub_220CEFF14();

  v63[2] = v27;
  v28 = sub_220DBFD40();
  v30 = v29;
  v32 = v31;

  v33 = sub_220DBFD10();
  v35 = v34;
  v37 = v36;
  sub_220CF0978(v28, v30, v32 & 1);

  sub_220DC01B0();
  v70 = v26;
  sub_220DBF810();
  sub_220CF0978(v33, v35, v37 & 1);

  __dst[0] = v64;
  __dst[1] = v65;

  v38 = sub_220DBFD40();
  v40 = v39;
  LOBYTE(v33) = v41;
  v42 = sub_220DBFD10();
  v44 = v43;
  LOBYTE(v30) = v45;
  sub_220CF0978(v38, v40, v33 & 1);

  sub_220DC01C0();
  sub_220DBF810();
  sub_220CF0978(v42, v44, v30 & 1);

  __dst[0] = v66;
  __dst[1] = v67;

  v46 = sub_220DBFD40();
  v48 = v47;
  LOBYTE(v33) = v49;
  v50 = sub_220DBFD10();
  v52 = v51;
  LOBYTE(v30) = v53;
  sub_220CF0978(v46, v48, v33 & 1);

  sub_220DC0180();
  sub_220DBF810();
  sub_220CF0978(v50, v52, v30 & 1);

  __dst[0] = v68;
  __dst[1] = v69;

  v54 = sub_220DBFD40();
  v56 = v55;
  LOBYTE(v33) = v57;
  v58 = sub_220DBFD10();
  v60 = v59;
  LOBYTE(v52) = v61;

  sub_220CF0978(v54, v56, v33 & 1);

  sub_220DC0190();
  sub_220DBF810();
  sub_220CF0978(v58, v60, v52 & 1);
}

uint64_t sub_220DA83DC(double a1, __n128 a2)
{
  v3 = *(v2 + 16);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  return sub_220DBF7E0();
}

void sub_220DA848C(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = sub_220DBF850();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBF830();
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v9);
  v7 = *(v4 + 8);
  v7(v6, v3);
  sub_220DBF830();
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v11);
  v7(v6, v3);
  sub_220DBF830();
  sub_220DBFCA0();
  sub_220DBF840();
  sub_220DBF820();
  sub_220DA9E64(v10);
  v7(v6, v3);
  sub_220DBF830();
}

uint64_t sub_220DA86AC(uint64_t *a1, unsigned __int8 *__src, double a3, double a4)
{
  v8 = __src[16];
  v9 = 0.0;
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v10 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    v9 = 1.0;
    if (v10)
    {
      v9 = 4.0;
    }
  }

  if (a4 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  v12 = v11 * 0.5 - v9;
  memcpy(__dst, __src, sizeof(__dst));
  sub_220DA83DC(v12, v13);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  v14 = sub_220DA6B04();
  sub_220DA848C(a1, v14, v12);
}

uint64_t sub_220DA87B4(uint64_t *a1, void *__src, uint64_t a3, double a4, double a5)
{
  v8 = *(__src + 16);
  v56 = __src[9];
  v57 = __src[10];
  v54 = __src[11];
  v55 = __src[12];
  v58 = __src[13];
  v59 = __src[14];
  v9 = __src[15];
  v10 = __src[16];
  v11 = 0.0;
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v12 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    v11 = 1.0;
    if (v12)
    {
      v11 = 4.0;
    }
  }

  if (a5 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a5;
  }

  v14 = v13 * 0.5 - v11;
  memcpy(__dst, __src, sizeof(__dst));
  sub_220DA83DC(v14, v15);
  __dst[0] = v9;
  __dst[1] = v10;
  sub_220CEFF14();

  v16 = sub_220DBFD40();
  v18 = v17;
  v20 = v19;
  v21 = sub_220DBFD10();
  v23 = v22;
  v25 = v24;
  sub_220CF0978(v16, v18, v20 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v21, v23, v25 & 1);

  __dst[0] = v54;
  __dst[1] = v55;

  v26 = sub_220DBFD40();
  v28 = v27;
  v30 = v29;
  v31 = sub_220DBFD10();
  v33 = v32;
  LOBYTE(v16) = v34;
  sub_220CF0978(v26, v28, v30 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v31, v33, v16 & 1);

  __dst[0] = v56;
  __dst[1] = v57;

  v35 = sub_220DBFD40();
  v37 = v36;
  v39 = v38;
  v40 = sub_220DBFD10();
  v42 = v41;
  LOBYTE(v16) = v43;
  sub_220CF0978(v35, v37, v39 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v40, v42, v16 & 1);

  __dst[0] = v58;
  __dst[1] = v59;

  v44 = sub_220DBFD40();
  v46 = v45;
  v48 = v47;
  v49 = sub_220DBFD10();
  v51 = v50;
  LOBYTE(v42) = v52;
  sub_220CF0978(v44, v46, v48 & 1);

  sub_220DC01A0();
  sub_220DBF810();
  sub_220CF0978(v49, v51, v42 & 1);
}

uint64_t sub_220DA8BAC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v36 = a4;
  v35 = a3;
  v34 = sub_220DBF850();
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6 >= a5)
  {
    a6 = a5;
  }

  v30 = a2;
  v13 = a2[16];
  v14 = 0.0;
  v37 = v13;
  if (v13 == 2)
  {
    v32 = 0;
    v15 = 168;
  }

  else
  {
    if (v13)
    {
      v16 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
      v14 = 1.0;
      if (v16)
      {
        v14 = 4.0;
      }

      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    v15 = 108;
  }

  v17 = a6 * 0.5 - v14;
  memcpy(__dst, v30, sizeof(__dst));
  sub_220DA83DC(v17, v18);
  v19 = 0;
  v20 = 0;
  v31 = 360.0 / v15;
  v33 = v15 - 1;
  v29 = v17;
  v21 = (v10 + 8);
  v22 = v37;
  do
  {
    v23 = v19 % (v15 >> 2);
    if (v22 == 2)
    {
      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_28:

      sub_220DBFCA0();
      sub_220DBF840();
      sub_220DBF820();
      sub_220DA9E64(v39);

      (*v21)(v12, v34);
      v22 = v37;
      goto LABEL_29;
    }

    if ((v32 & 1) == 0)
    {
      if (!v23)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (!v20)
    {
      memcpy(__dst, v30, sizeof(__dst));
      v20 = sub_220DA8F40(*a1, v29);
    }

    v24 = *(v20 + 16);
    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = v31 * v19;
    v26 = (v20 + 40);
    while (*(v26 - 1) > v25 || v25 > *v26)
    {
      v26 += 2;
      if (!--v24)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    ++v19;
    sub_220DBF830();
  }

  while (v19 != v15);
}

uint64_t sub_220DA8F40(uint64_t a1, double a2)
{
  v147 = a1;
  v4 = sub_220DBF800();
  v5 = *(v4 - 8);
  v149 = v4;
  v150 = v5;
  MEMORY[0x28223BE20](v4);
  v145 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBFC80();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v13 = *(v2 + 72);
  v12 = *(v2 + 80);
  v14 = *(v2 + 88);
  v139 = *(v2 + 96);
  v140 = v14;
  v15 = *(v2 + 104);
  v141 = *(v2 + 112);
  v142 = v15;
  v16 = *(v8 + 104);
  v17 = MEMORY[0x277CE0A58];
  v18 = *(v2 + 120);
  v143 = *(v2 + 128);
  v144 = v18;
  v128 = v11;
  if (v11 != 2)
  {
    v17 = MEMORY[0x277CE0AA8];
  }

  v16(v10, *v17, v7);

  sub_220DBFC10();
  v19 = sub_220DBFBE0();
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965B0, &qword_220DC7C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220DC1CE0;
  v151 = v13;
  v152 = v12;
  v146 = sub_220CEFF14();
  v21 = sub_220DBFD40();
  v23 = v22;
  v25 = v24;
  v148 = v19;

  v26 = sub_220DBFD10();
  v130 = v27;
  v131 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v132 = v31;
  sub_220CF0978(v21, v23, v25 & 1);

  *(inited + 32) = v26;
  *(inited + 40) = v28;
  v129 = v30 & 1;
  *(inited + 48) = v30 & 1;
  *(inited + 56) = v32;
  *(inited + 64) = 0x4070E00000000000;
  v151 = v140;
  v152 = v139;
  v33 = sub_220DBFD40();
  v35 = v34;
  v37 = v36;
  v38 = sub_220DBFD10();
  v40 = v39;
  LODWORD(v140) = v41;
  v43 = v42;
  sub_220CF0978(v33, v35, v37 & 1);

  v134 = v40;
  v135 = v38;
  *(inited + 72) = v38;
  *(inited + 80) = v40;
  v133 = v140 & 1;
  *(inited + 88) = v140 & 1;
  v136 = v43;
  *(inited + 96) = v43;
  *(inited + 104) = 0;
  v151 = v142;
  v152 = v141;
  v44 = sub_220DBFD40();
  v46 = v45;
  LOBYTE(v35) = v47;
  v48 = sub_220DBFD10();
  v50 = v49;
  LODWORD(v43) = v51;
  v53 = v52;
  sub_220CF0978(v44, v46, v35 & 1);

  v138 = v50;
  v139 = v48;
  *(inited + 112) = v48;
  *(inited + 120) = v50;
  v137 = v43;
  *(inited + 128) = v43 & 1;
  v140 = v53;
  *(inited + 136) = v53;
  *(inited + 144) = 0x4056800000000000;
  v151 = v144;
  v152 = v143;
  v54 = sub_220DBFD40();
  v56 = v55;
  LOBYTE(v46) = v57;
  v146 = v58;
  v59 = sub_220DBFD10();
  v61 = v60;
  LODWORD(v50) = v62;
  v64 = v63;

  sub_220CF0978(v54, v56, v46 & 1);

  v142 = v61;
  v143 = v59;
  *(inited + 152) = v59;
  *(inited + 160) = v61;
  LODWORD(v141) = v50;
  *(inited + 168) = v50 & 1;
  v144 = v64;
  *(inited + 176) = v64;
  *(inited + 184) = 0x4066800000000000;
  v151 = MEMORY[0x277D84F90];
  sub_220CFB834(0, 4, 0);
  v65 = v151;
  v67 = v130;
  v66 = v131;
  LOBYTE(v61) = v129;
  sub_220CFD2C8(v131, v130, v129);

  v68 = v145;
  sub_220DBF860();
  sub_220DBF7F0();
  v70 = v69;
  v71 = *(v150 + 8);
  v150 += 8;
  (v71)(v68, v149);
  sub_220CF0978(v66, v67, v61);

  v151 = v65;
  v73 = *(v65 + 16);
  v72 = *(v65 + 24);
  v74 = v73 + 1;
  v75 = v68;
  if (v73 >= v72 >> 1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    *(v65 + 16) = v74;
    *(v65 + 8 * v73 + 32) = v70;
    v77 = v134;
    v76 = v135;
    v78 = v133;
    sub_220CFD2C8(v135, v134, v133);

    sub_220DBF860();
    sub_220DBF7F0();
    v80 = v79;
    (v71)(v75, v149);
    sub_220CF0978(v76, v77, v78);

    v151 = v65;
    v82 = *(v65 + 16);
    v81 = *(v65 + 24);
    v146 = v71;
    if (v82 >= v81 >> 1)
    {
      sub_220CFB834((v81 > 1), v82 + 1, 1);
      v65 = v151;
    }

    *(v65 + 16) = v82 + 1;
    *(v65 + 8 * v82 + 32) = v80;
    v83 = v137;
    v85 = v138;
    v84 = v139;
    sub_220CFD2C8(v139, v138, v137 & 1);

    v71 = v147;
    sub_220DBF860();
    v86 = v75;
    sub_220DBF7F0();
    v88 = v87;
    v146(v75, v149);
    sub_220CF0978(v84, v85, v83 & 1);

    v151 = v65;
    v90 = *(v65 + 16);
    v89 = *(v65 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_220CFB834((v89 > 1), v90 + 1, 1);
      v86 = v75;
      v65 = v151;
    }

    *(v65 + 16) = v90 + 1;
    *(v65 + 8 * v90 + 32) = v88;
    v91 = v141;
    v93 = v142;
    v92 = v143;
    sub_220CFD2C8(v143, v142, v141 & 1);

    sub_220DBF860();
    sub_220DBF7F0();
    v95 = v94;
    v146(v86, v149);
    sub_220CF0978(v92, v93, v91 & 1);

    v151 = v65;
    v97 = *(v65 + 16);
    v96 = *(v65 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_220CFB834((v96 > 1), v97 + 1, 1);
      v65 = v151;
    }

    *(v65 + 16) = v97 + 1;
    *(v65 + 8 * v97 + 32) = v95;
    *&v98 = COERCE_DOUBLE(sub_220DA9AC4(v65));
    if (v99)
    {
      break;
    }

    v109 = *&v98;

    v110 = 9.0;
    if (v128 == 2)
    {
      v110 = 7.0;
    }

    v111 = 0;
    v112 = acos(((a2 - v110) * (a2 - v110) + (a2 - v110) * (a2 - v110) - v109 * v109) / ((a2 - v110) * (a2 - v110 + a2 - v110))) * 57.2957795 * 0.5;
    v74 = MEMORY[0x277D84F90];
    a2 = 360.0;
    while (1)
    {
      v113 = *(inited + v111 + 32);
      v114 = *(inited + v111 + 40);
      v75 = *(inited + v111 + 48);
      v73 = *(inited + v111 + 56);
      v115 = *(inited + v111 + 64);
      v116 = v112 + v115;
      v117 = fmod(v115 - v112 + 360.0, 360.0);
      v70 = fmod(v116 + 360.0, 360.0);
      if (v70 >= v117)
      {
        sub_220CFD2C8(v113, v114, v75);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220D56B68(0, *(v74 + 16) + 1, 1, v74);
          v74 = v125;
        }

        v119 = *(v74 + 16);
        v120 = *(v74 + 24);
        v71 = v119 + 1;
        if (v119 < v120 >> 1)
        {
          goto LABEL_30;
        }

LABEL_26:
        sub_220D56B68(v120 > 1, v71, 1, v74);
        v74 = v121;
        goto LABEL_30;
      }

      if (v117 > 360.0)
      {
        break;
      }

      sub_220CFD2C8(v113, v114, v75);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220D56B68(0, *(v74 + 16) + 1, 1, v74);
        v74 = v123;
      }

      v71 = *(v74 + 16);
      v118 = *(v74 + 24);
      v119 = v71 + 1;
      if (v71 >= v118 >> 1)
      {
        sub_220D56B68(v118 > 1, v71 + 1, 1, v74);
        v74 = v124;
      }

      *(v74 + 16) = v119;
      v72 = v74 + 16 * v71;
      *(v72 + 32) = v117;
      *(v72 + 40) = 0x4076800000000000;
      if (v70 < 0.0)
      {
        goto LABEL_36;
      }

      v120 = *(v74 + 24);
      v71 += 2;
      v117 = 0.0;
      if (v71 > (v120 >> 1))
      {
        goto LABEL_26;
      }

LABEL_30:
      sub_220CF0978(v113, v114, v75);

      *(v74 + 16) = v71;
      v122 = v74 + 16 * v119;
      *(v122 + 32) = v117;
      *(v122 + 40) = v70;
      v111 += 40;
      if (v111 == 160)
      {

        swift_setDeallocating();
        sub_220D7FE28();
        return v74;
      }
    }

    __break(1u);
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_220CFB834((v72 > 1), v74, 1);
    v65 = v151;
  }

  swift_setDeallocating();
  sub_220D7FE28();
  if (qword_27CF94F58 != -1)
  {
    swift_once();
  }

  v100 = sub_220DBF410();
  __swift_project_value_buffer(v100, qword_27CF95F90);

  v101 = sub_220DBF3F0();
  v102 = sub_220DC0980();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v151 = v104;
    *v103 = 136446210;
    v105 = MEMORY[0x223D98370](v65, MEMORY[0x277D85048]);
    v107 = v106;

    v108 = sub_220D3F210(v105, v107, &v151);

    *(v103 + 4) = v108;
    _os_log_impl(&dword_220CD1000, v101, v102, "Failed to find max amount to knockout when drawing wind compass; knockoutAmounts=%{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x223D98FB0](v104, -1, -1);
    MEMORY[0x223D98FB0](v103, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_220DA9AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_220DA9B0C()
{
  result = qword_280FA66F8;
  if (!qword_280FA66F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96570, &qword_220DC7C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96588, &qword_220DC7C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96590, &qword_220DC7C30);
    sub_220DA9C34();
    sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66F8);
  }

  return result;
}

unint64_t sub_220DA9C34()
{
  result = qword_280FA66D0;
  if (!qword_280FA66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96588, &qword_220DC7C28);
    sub_220DA9CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66D0);
  }

  return result;
}

unint64_t sub_220DA9CC0()
{
  result = qword_280FA66E8;
  if (!qword_280FA66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96598, &qword_220DC7C38);
    sub_220CE161C(&qword_280FA6680, &qword_27CF965A0, &unk_220DC7C40, MEMORY[0x277CE10D0]);
    sub_220CE161C(&qword_280FA66B0, &qword_27CF962A8, &qword_220DC6F90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66E8);
  }

  return result;
}

uint64_t sub_220DA9DA4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_220DA9DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96568, &qword_220DC7C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220DA9EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_7Tm()
{
  OUTLINED_FUNCTION_0_25();

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t WindComponentCompassViewStyle.maxDynamicTypeSizeRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_220DBF7D0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CDF9E8];
  if (v3 != 2)
  {
    v6 = MEMORY[0x277CDF9D8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t WindComponentCompassViewStyle.compassDirectionFont.getter()
{
  v1 = sub_220DBFC80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CE0A58];
  if (*v0 != 2)
  {
    v5 = MEMORY[0x277CE0AA8];
  }

  (*(v2 + 104))(v4, *v5, v1);
  sub_220DBFC10();
  v6 = sub_220DBFBE0();
  (*(v2 + 8))(v4, v1);
  return v6;
}

double WindComponentCompassViewStyle.tickMarkHeight.getter()
{
  result = 9.0;
  if (*v0 == 2)
  {
    return 7.0;
  }

  return result;
}

uint64_t WindComponentCompassViewStyle.numberOfTicks.getter()
{
  if (*v0 == 2)
  {
    return 168;
  }

  else
  {
    return 108;
  }
}

double WindComponentCompassViewStyle.circlePadding.getter()
{
  v1 = *v0;
  result = 0.0;
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v3 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    result = 1.0;
    if (v3)
    {
      return 4.0;
    }
  }

  return result;
}

uint64_t static WindComponentCompassViewStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

double WindComponentCompassViewStyle.windCompassNorthTriangleSize.getter()
{
  result = 10.1818182;
  if (*v0 == 2)
  {
    return 8.0;
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for WindComponentCompassViewStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindComponentCompassViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220DAA3C4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_220DAA3E0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *WindComponentCompassContainerView.init(model:showCircleOutline:primaryLabelFont:secondaryLabelFont:)@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965C8, &qword_220DC7D40);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for WindComponentCompassContainerView(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D0, &qword_220DC7D78);
  swift_storeEnumTagMultiPayload();
  result = memcpy(a5 + v10[6], a1, 0x78uLL);
  *(a5 + v10[7]) = a2;
  *(a5 + v10[8]) = a3;
  *(a5 + v10[9]) = a4;
  return result;
}

double sub_220DAA4F4()
{
  v17 = sub_220DBF9C0();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D0, &qword_220DC7D78);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = sub_220DBF870();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WindComponentCompassContainerView(0);
  v12 = *(v0 + *(v11 + 24) + 8);
  sub_220D07944(v0 + *(v11 + 20), v6, &qword_27CF965D0, &qword_220DC7D78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_220DC0990();
    v13 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v14 = v12 * 0.0174532925;
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 != *MEMORY[0x277CDFA88])
  {
    if (v15 == *MEMORY[0x277CDFA90])
    {
      v18 = 0x401921FB54442D18;
      sub_220DBFE50();
      sub_220DBFE50();
      sub_220DBFE60();
      return *&v18;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  return v14;
}

uint64_t WindComponentCompassContainerView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_220DC0120();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965D8, &qword_220DC7D80);
  return sub_220DAA860(v2, a2 + *(v5 + 44));
}

uint64_t sub_220DAA860@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF965F8, &qword_220DC7E20);
  v4 = MEMORY[0x28223BE20](v3);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96600, &qword_220DC7E28);
  v9 = MEMORY[0x28223BE20](v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v27 - v11);
  v13 = *(type metadata accessor for WindComponentCompassContainerView(0) + 24);
  memcpy(__dst, (a1 + v13), 0x78uLL);
  KeyPath = swift_getKeyPath();
  LOBYTE(v37[0]) = 0;
  memcpy(&v38[7], __dst, 0x78uLL);
  v31 = 0;
  v14 = *(a1 + v13);
  if (v14 == 2 || (v14 & 1) == 0)
  {
    sub_220DAC24C(__dst, v37);
    v15 = sub_220DBFA40();
    v36 = 0;
    sub_220DAAD70(v37);
    memcpy(v34, v37, 0x79uLL);
    memcpy(v33, v37, 0x79uLL);
    sub_220D07944(v34, v32, &qword_27CF96608, &qword_220DC7E60);
    sub_220CDA548(v33, &qword_27CF96608, &qword_220DC7E60);
    memcpy(&v35[7], v34, 0x79uLL);
    v37[0] = v15;
    v37[1] = 0;
    LOBYTE(v37[2]) = v36;
    memcpy(&v37[2] + 1, v35, 0x80uLL);
    v37[19] = 0x3FF0000000000000;
    LOWORD(v37[20]) = 256;
    nullsub_1();
  }

  else
  {
    sub_220DAC2A8(v37);
    sub_220DAC24C(__dst, v33);
  }

  memcpy(v39, v37, sizeof(v39));
  *v12 = sub_220DC0120();
  v12[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96610, &qword_220DC7E68);
  sub_220DAB010(a1, (v12 + *(v17 + 44)));
  v18 = v12 + *(v8 + 36);
  *v18 = 0x3FF0000000000000;
  *(v18 + 4) = 256;
  *v7 = sub_220DBFA40();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96618, &qword_220DC7E70);
  sub_220DAB518(a1, &v7[*(v19 + 44)]);
  v20 = &v7[*(v3 + 36)];
  *v20 = 0x3FD999999999999ALL;
  *(v20 + 4) = 0;
  v21 = v29;
  sub_220D07944(v12, v29, &qword_27CF96600, &qword_220DC7E28);
  v22 = v30;
  sub_220D07944(v7, v30, &qword_27CF965F8, &qword_220DC7E20);
  v23 = KeyPath;
  v32[0] = KeyPath;
  LOBYTE(v32[1]) = v31;
  memcpy(&v32[1] + 1, v38, 0x7FuLL);
  v32[17] = 0x3FF0000000000000;
  v24 = v27;
  memcpy(v27, v32, 0x90uLL);
  memcpy(v33, v39, 0xA2uLL);
  memcpy(v24 + 144, v39, 0xA2uLL);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96620, &qword_220DC7E78);
  sub_220D07944(v21, &v24[*(v25 + 64)], &qword_27CF96600, &qword_220DC7E28);
  sub_220D07944(v22, &v24[*(v25 + 80)], &qword_27CF965F8, &qword_220DC7E20);
  sub_220D07944(v32, v37, &qword_27CF96628, &qword_220DC7E80);
  sub_220D07944(v33, v37, &qword_27CF96630, &qword_220DC7E88);
  sub_220CDA548(v7, &qword_27CF965F8, &qword_220DC7E20);
  sub_220CDA548(v12, &qword_27CF96600, &qword_220DC7E28);
  sub_220CDA548(v22, &qword_27CF965F8, &qword_220DC7E20);
  sub_220CDA548(v21, &qword_27CF96600, &qword_220DC7E28);
  memcpy(v37, v39, 0xA2uLL);
  sub_220CDA548(v37, &qword_27CF96630, &qword_220DC7E88);
  v34[0] = v23;
  LOBYTE(v34[1]) = v31;
  memcpy(&v34[1] + 1, v38, 0x7FuLL);
  v34[17] = 0x3FF0000000000000;
  return sub_220CDA548(v34, &qword_27CF96628, &qword_220DC7E80);
}

uint64_t sub_220DAAD70@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_220DBFF90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_220DBFF50();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_220DBFFE0();

  (*(v4 + 8))(v6, v3);
  type metadata accessor for WindComponentCompassContainerView(0);
  sub_220DC0120();
  sub_220DBF760();
  v25 = 1;
  *&v24[6] = v26[0];
  *&v24[22] = v26[1];
  *&v24[38] = v26[2];
  v8 = sub_220DBFF20();
  KeyPath = swift_getKeyPath();
  LODWORD(v6) = sub_220DBFB40();
  *(&v14[1] + 2) = *v24;
  v14[0] = v7;
  LOWORD(v14[1]) = 1;
  *(&v14[2] + 2) = *&v24[16];
  *(&v14[3] + 2) = *&v24[32];
  *&v14[4] = *&v24[46];
  *(&v14[4] + 1) = KeyPath;
  *&v14[5] = v8;
  DWORD2(v14[5]) = v6;
  v12 = xmmword_220DC7CF0;
  v14[6] = xmmword_220DC7CF0;
  v13[112] = 1;
  memcpy(a2, v14, 0x70uLL);
  v10 = *&v24[16];
  v17 = *v24;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v15[0] = v7;
  v15[1] = 0;
  v16 = 1;
  v18 = v10;
  *v19 = *&v24[32];
  *&v19[14] = *&v24[46];
  v20 = KeyPath;
  v21 = v8;
  v22 = v6;
  v23 = v12;
  sub_220D07944(v14, v13, &qword_27CF966E0, &unk_220DC8030);
  return sub_220CDA548(v15, &qword_27CF966E0, &unk_220DC8030);
}

uint64_t sub_220DAB010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966C8, &qword_220DC7FE8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_220DBFF90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBFF60();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v43 = sub_220DBFFE0();

  (*(v11 + 8))(v13, v10);
  v14 = sub_220DAA4F4();
  sub_220DC01A0();
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for WindComponentCompassContainerView(0);
  v20 = *(a1 + *(v19 + 24));
  if (v20 != 2 && (v20 & 1) != 0)
  {
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  }

  v42 = sub_220DBFBC0();
  sub_220DBF700();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v64 = 1;
  v60 = 0;
  if (*(a1 + *(v19 + 28)))
  {
    sub_220DBFED0();
    v29 = sub_220DBFF10();

    v41 = 0x4018000000000000;
    v30 = 0x3FE0000000000000;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v41 = 0;
  }

  v31 = sub_220DBFED0();
  v32 = *(v4 + 36);
  v33 = *MEMORY[0x277CE13C0];
  v34 = sub_220DC0150();
  (*(*(v34 - 8) + 104))(&v9[v32], v33, v34);
  *v9 = v31;
  *(v9 + 4) = 256;
  *(v9 + 2) = 0x3FE051EB851EB852;
  *(v9 + 12) = 0;
  sub_220D07944(v9, v7, &qword_27CF966C8, &qword_220DC7FE8);
  v35 = v43;
  __src[0] = v43;
  __src[1] = 0;
  LOWORD(__src[2]) = 1;
  *(&__src[2] + 2) = v62;
  HIWORD(__src[2]) = v63;
  *&__src[3] = v14;
  __src[4] = v16;
  __src[5] = v18;
  v36 = v42;
  LOBYTE(__src[6]) = v42;
  *(&__src[6] + 1) = *v61;
  HIDWORD(__src[6]) = *&v61[3];
  __src[7] = v22;
  __src[8] = v24;
  __src[9] = v26;
  __src[10] = v28;
  LOBYTE(__src[11]) = 0;
  memcpy(a2, __src, 0x59uLL);
  a2[12] = v30;
  a2[13] = 0;
  v37 = v41;
  a2[14] = v29;
  a2[15] = v37;
  a2[16] = 0;
  a2[17] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966D0, &qword_220DC7FF0);
  sub_220D07944(v7, a2 + *(v38 + 64), &qword_27CF966C8, &qword_220DC7FE8);
  sub_220D07944(__src, v45, &qword_27CF966D8, &qword_220DC7FF8);

  sub_220CDA548(v9, &qword_27CF966C8, &qword_220DC7FE8);
  sub_220CDA548(v7, &qword_27CF966C8, &qword_220DC7FE8);

  v45[0] = v35;
  v45[1] = 0;
  v46 = 1;
  v47 = 0;
  v48 = v62;
  v49 = v63;
  v50 = v14;
  v51 = v16;
  v52 = v18;
  v53 = v36;
  *v54 = *v61;
  *&v54[3] = *&v61[3];
  v55 = v22;
  v56 = v24;
  v57 = v26;
  v58 = v28;
  v59 = 0;
  return sub_220CDA548(v45, &qword_27CF966D8, &qword_220DC7FF8);
}

uint64_t sub_220DAB518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96638, &qword_220DC7E90);
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = v92 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96640, &qword_220DC7E98);
  MEMORY[0x28223BE20](v105);
  v96 = v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96648, &unk_220DC7EA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v107 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v106 = v92 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96590, &qword_220DC7C30);
  MEMORY[0x28223BE20](v115);
  v117 = v92 - v10;
  v116 = sub_220DBFB90();
  v119 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v12 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96650, &qword_220DC7EB0);
  MEMORY[0x28223BE20](v113);
  v118 = v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96658, &qword_220DC7EB8);
  v111 = *(v14 - 8);
  v112 = v14;
  MEMORY[0x28223BE20](v14);
  v110 = v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96660, &qword_220DC7EC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v104 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = v92 - v19;
  v20 = type metadata accessor for WindComponentCompassContainerView(0);
  v21 = (a1 + *(v20 + 24));
  v22 = v21[3];
  v121[0] = v21[2];
  v121[1] = v22;
  v23 = sub_220CEFF14();

  v100 = v23;
  v24 = sub_220DBFD40();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v101 = v20;
  v32 = *(v20 + 32);
  v103 = a1;
  v33 = *(a1 + v32);
  v34 = swift_getKeyPath();
  v28 &= 1u;
  LOBYTE(v121[0]) = v28;
  v109 = v21;
  v35 = v21[6];
  v36 = swift_getKeyPath();
  LOBYTE(v120[0]) = 0;
  v121[0] = v24;
  v121[1] = v26;
  LOBYTE(v121[2]) = v28;
  v121[3] = v30;
  v121[4] = KeyPath;
  v121[5] = 0x3FE0000000000000;
  v121[6] = v34;
  v37 = v117;
  v121[7] = v33;
  v121[8] = v36;
  v121[9] = v35;
  LOBYTE(v121[10]) = 0;

  sub_220DBFB80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96668, &qword_220DC7F58);
  sub_220DAC338();
  v38 = v118;
  v39 = v113;
  sub_220DBFE00();
  v40 = *(v119 + 8);
  v102 = v12;
  v119 += 8;
  v40(v12, v116);
  memcpy(__dst, v121, 0x51uLL);
  sub_220CDA548(__dst, &qword_27CF96668, &qword_220DC7F58);
  v41 = swift_getKeyPath();
  v42 = &v38[*(v39 + 36)];
  *v42 = v41;
  v42[8] = 1;
  v43 = *MEMORY[0x277CDF9D8];
  v44 = sub_220DBF7D0();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v47 = v45 + 104;
  v46(v37, v43, v44);
  v48 = sub_220DAC560();
  result = sub_220DC05B0();
  if (result)
  {
    v92[0] = v40;
    v92[1] = v48;
    v92[2] = v47;
    v93 = v46;
    v94 = v43;
    v95 = v44;
    v50 = sub_220DAC5B8();
    v51 = sub_220CE161C(qword_280FA6560, &qword_27CF96590, &qword_220DC7C30, MEMORY[0x277D84470]);
    v52 = v110;
    v53 = v115;
    v54 = v118;
    sub_220DBFDA0();
    sub_220CDA548(v37, &qword_27CF96590, &qword_220DC7C30);
    sub_220CDA548(v54, &qword_27CF96650, &qword_220DC7EB0);
    v121[0] = v39;
    v121[1] = v53;
    v121[2] = v50;
    v121[3] = v51;
    v118 = v51;
    swift_getOpaqueTypeConformance2();
    v55 = v114;
    v56 = v112;
    sub_220DBFDF0();
    (*(v111 + 8))(v52, v56);
    v57 = v109[5];
    if (!v57)
    {
      v87 = v106;
      __swift_storeEnumTagSinglePayload(v106, 1, 1, v105);
      goto LABEL_6;
    }

    v121[0] = v109[4];
    v121[1] = v57;

    v58 = sub_220DBFD40();
    v60 = v59;
    v62 = v61;
    v63 = sub_220DBFD10();
    v65 = v64;
    v67 = v66;
    sub_220CF0978(v58, v60, v62 & 1);

    v68 = v102;
    sub_220DBFB80();
    v113 = sub_220DBFD00();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    sub_220CF0978(v63, v65, v67 & 1);

    (v92[0])(v68, v116);
    v75 = swift_getKeyPath();
    v76 = v72 & 1;
    LOBYTE(v120[0]) = v72 & 1;
    v77 = swift_getKeyPath();
    LOBYTE(v121[0]) = 0;
    v78 = swift_getKeyPath();
    *&v120[0] = v113;
    *(&v120[0] + 1) = v70;
    LOBYTE(v120[1]) = v76;
    *(&v120[1] + 1) = v74;
    v120[2] = xmmword_220DC7D00;
    *&v120[3] = v75;
    BYTE8(v120[3]) = 1;
    *&v120[4] = v77;
    *(&v120[4] + 1) = 2;
    LOBYTE(v120[5]) = 0;
    *(&v120[5] + 1) = v78;
    *&v120[6] = 0x3FE0000000000000;
    v79 = v117;
    v93(v117, v94, v95);
    result = sub_220DC05B0();
    if (result)
    {
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966A8, &qword_220DC7FC8);
      v81 = sub_220DAC6AC();
      v82 = v97;
      v83 = v115;
      v84 = v118;
      sub_220DBFDA0();
      sub_220CDA548(v79, &qword_27CF96590, &qword_220DC7C30);
      memcpy(v121, v120, sizeof(v121));
      sub_220CDA548(v121, &qword_27CF966A8, &qword_220DC7FC8);
      *&v120[0] = v80;
      *(&v120[0] + 1) = v83;
      *&v120[1] = v81;
      *(&v120[1] + 1) = v84;
      swift_getOpaqueTypeConformance2();
      v85 = v96;
      v86 = v99;
      sub_220DBFDF0();
      (*(v98 + 8))(v82, v86);
      v87 = v106;
      sub_220CECE0C(v85, v106);
      __swift_storeEnumTagSinglePayload(v87, 0, 1, v105);
      v55 = v114;
LABEL_6:
      v88 = v104;
      sub_220D07944(v55, v104, &qword_27CF96660, &qword_220DC7EC0);
      v89 = v107;
      sub_220D07944(v87, v107, &qword_27CF96648, &unk_220DC7EA0);
      v90 = v108;
      sub_220D07944(v88, v108, &qword_27CF96660, &qword_220DC7EC0);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF966A0, &qword_220DC7FC0);
      sub_220D07944(v89, v90 + *(v91 + 48), &qword_27CF96648, &unk_220DC7EA0);
      sub_220CDA548(v87, &qword_27CF96648, &unk_220DC7EA0);
      sub_220CDA548(v55, &qword_27CF96660, &qword_220DC7EC0);
      sub_220CDA548(v89, &qword_27CF96648, &unk_220DC7EA0);
      return sub_220CDA548(v88, &qword_27CF96660, &qword_220DC7EC0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WindComponentCompassContainerView(uint64_t a1)
{
  result = qword_280FA6B80;
  if (!qword_280FA6B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220DAC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_220DAC118(uint64_t a1)
{
  sub_220DAC1F8(319, &qword_280FA6718, MEMORY[0x277CE02A8]);
  if (v1 <= 0x3F)
  {
    sub_220DAC1F8(319, qword_280FA6720, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220DAC1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220DBF710();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_220DAC338()
{
  result = qword_280FA66C0;
  if (!qword_280FA66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96668, &qword_220DC7F58);
    sub_220DAC3F0();
    sub_220CE161C(&qword_280FA6690, &qword_27CF96690, &qword_220DC7F80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66C0);
  }

  return result;
}

unint64_t sub_220DAC3F0()
{
  result = qword_280FA66D8;
  if (!qword_280FA66D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96670, &qword_220DC7F60);
    sub_220DAC4A8();
    sub_220CE161C(&qword_280FA6698, &qword_27CF96688, &qword_220DC7F78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66D8);
  }

  return result;
}

unint64_t sub_220DAC4A8()
{
  result = qword_280FA6700;
  if (!qword_280FA6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96678, &qword_220DC7F68);
    sub_220CE161C(&qword_280FA66A8, &qword_27CF96680, &qword_220DC7F70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6700);
  }

  return result;
}

unint64_t sub_220DAC560()
{
  result = qword_280FA6710;
  if (!qword_280FA6710)
  {
    sub_220DBF7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6710);
  }

  return result;
}

unint64_t sub_220DAC5B8()
{
  result = qword_280FA66F0;
  if (!qword_280FA66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96650, &qword_220DC7EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96668, &qword_220DC7F58);
    sub_220DAC338();
    swift_getOpaqueTypeConformance2();
    sub_220CE161C(&qword_280FA66A0, &qword_27CF96698, &qword_220DC7FB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66F0);
  }

  return result;
}

unint64_t sub_220DAC6AC()
{
  result = qword_280FA66B8;
  if (!qword_280FA66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966A8, &qword_220DC7FC8);
    sub_220DAC764();
    sub_220CE161C(&qword_280FA66A8, &qword_27CF96680, &qword_220DC7F70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66B8);
  }

  return result;
}

unint64_t sub_220DAC764()
{
  result = qword_280FA66C8;
  if (!qword_280FA66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966B0, &qword_220DC7FD0);
    sub_220DAC81C();
    sub_220CE161C(&qword_280FA6690, &qword_27CF96690, &qword_220DC7F80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66C8);
  }

  return result;
}

unint64_t sub_220DAC81C()
{
  result = qword_280FA66E0;
  if (!qword_280FA66E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966B8, &qword_220DC7FD8);
    sub_220DAC8D4();
    sub_220CE161C(&qword_280FA66A0, &qword_27CF96698, &qword_220DC7FB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA66E0);
  }

  return result;
}

unint64_t sub_220DAC8D4()
{
  result = qword_280FA6708;
  if (!qword_280FA6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF966C0, &qword_220DC7FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6708);
  }

  return result;
}

_BYTE *WindComponentCompassViewModel.init(style:angle:primaryLabel:secondaryLabel:primaryLabelLineLimit:northString:eastString:southString:westString:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = *result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  return result;
}

uint64_t static WindComponentCompassViewModel.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 5);
  v9 = *(a1 + 6);
  v11 = *(a1 + 7);
  v12 = *(a1 + 8);
  v14 = *(a1 + 9);
  v13 = *(a1 + 10);
  v16 = *(a1 + 11);
  v15 = *(a1 + 12);
  v17 = *(a1 + 13);
  v18 = *(a1 + 14);
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 2);
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(a2 + 5);
  v25 = *(a2 + 6);
  v26 = *(a2 + 7);
  v28 = *(a2 + 8);
  v27 = *(a2 + 9);
  v29 = *(a2 + 10);
  v30 = *(a2 + 11);
  v32 = *(a2 + 12);
  v31 = *(a2 + 13);
  v33 = *(a2 + 14);
  if (v4 == 2)
  {
    if (v19 != 2 || v5 != v20)
    {
      return 0;
    }
  }

  else
  {
    v35 = 0;
    if (v19 == 2 || ((v19 ^ v4) & 1) != 0 || v5 != v20)
    {
      return v35;
    }
  }

  if (v6 != v21 || v7 != v22)
  {
    v76 = v14;
    v78 = v9;
    v80 = v32;
    v72 = v15;
    v74 = v30;
    v68 = v33;
    v70 = v16;
    v66 = v12;
    v67 = v31;
    v65 = v18;
    v37 = v17;
    v64 = v23;
    v38 = v13;
    v39 = v27;
    v40 = v29;
    v41 = v11;
    v42 = v26;
    v43 = v28;
    v44 = v10;
    v45 = v25;
    v46 = v8;
    v47 = sub_220DC0CA0();
    v8 = v46;
    v25 = v45;
    v10 = v44;
    v28 = v43;
    v26 = v42;
    v11 = v41;
    v29 = v40;
    v27 = v39;
    v13 = v38;
    v23 = v64;
    v17 = v37;
    v18 = v65;
    v12 = v66;
    v31 = v67;
    v33 = v68;
    v16 = v70;
    v15 = v72;
    v30 = v74;
    v32 = v80;
    v14 = v76;
    v9 = v78;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v10)
  {
    v35 = 0;
    if (v24 || v9 != v25)
    {
      return v35;
    }

    goto LABEL_28;
  }

  if (!v24)
  {
    return 0;
  }

  if (v8 == v23 && v10 == v24)
  {
    if (v9 == v25)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v49 = v25;
  v77 = v29;
  v79 = v9;
  v71 = v28;
  v73 = v26;
  v75 = v11;
  v81 = v27;
  v69 = v13;
  v62 = v17;
  v50 = sub_220DC0CA0();
  v35 = 0;
  if ((v50 & 1) == 0)
  {
    return v35;
  }

  v29 = v77;
  v17 = v62;
  v13 = v69;
  v28 = v71;
  v27 = v81;
  v26 = v73;
  v11 = v75;
  if (v79 != v49)
  {
    return v35;
  }

LABEL_28:
  v63 = v17;
  v82 = v32;
  v51 = v30;
  v52 = v15;
  if (v11 != v26 || v12 != v28)
  {
    v54 = v13;
    v55 = v27;
    v56 = v29;
    v57 = sub_220DC0CA0();
    v29 = v56;
    v27 = v55;
    v13 = v54;
    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  v58 = v14 == v27 && v13 == v29;
  if (!v58 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v59 = v16 == v51 && v52 == v82;
  if (!v59 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v63 == v31 && v18 == v33)
  {
    return 1;
  }

  return sub_220DC0CA0();
}

double static WindComponentCompassViewModel.mock(style:northString:eastString:southString:westString:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = *a1;
  *(a9 + 8) = 0x4066800000000000;
  *(a9 + 16) = 12849;
  *(a9 + 24) = 0xE200000000000000;
  *(a9 + 32) = xmmword_220DC8040;
  *(a9 + 48) = 1;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;

  return result;
}

uint64_t sub_220DACE50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_220DACE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PolarType.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220DACF88()
{
  result = qword_27CF966E8;
  if (!qword_27CF966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF966E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PolarType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220DAD0B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void **a3@<X4>, uint64_t a4@<X8>)
{
  v67 = a2;
  v63 = a1;
  v70 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v64 = &v58 - v8;
  v68 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v65 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_0();
  v69 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v24 = *a3;
  v23 = a3[1];
  v25 = a3[2];
  v26 = a3[3];
  v27 = a3[4];
  v28 = a3[5];
  sub_220CEF48C(v67, v4);
  v29 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v29, v30, v17) == 1)
  {
    v31 = v68;
    sub_220CE1ABC(v4, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v70;
    if (v35)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_14(&dword_220CD1000, v37, v38, "Failed to create platter string for Feels Like due to missing extrema values");
      OUTLINED_FUNCTION_19_14();
    }

    v39 = 1;
  }

  else
  {
    (*(v69 + 32))(v22, v4, v17);
    sub_220DBF300();
    sub_220DBF2F0();
    v71 = v24;
    v72 = v23;
    v73 = v25;
    v74 = v26;
    v75 = v27;
    v76 = v28;
    sub_220DAD640(&v71, v14);
    v71 = v24;
    v72 = v23;
    v73 = v25;
    v74 = v26;
    v75 = v27;
    v76 = v28;
    v40 = v64;
    sub_220DADF68(v63, &v71, v64);
    v41 = OUTLINED_FUNCTION_16_21();
    v31 = v68;
    if (__swift_getEnumTagSinglePayload(v41, v42, v68) == 1)
    {
      (*(v69 + 8))(v22, v17);
      sub_220CE1ABC(v40, &qword_27CF951F8, &qword_220DC1DA0);
      v36 = v70;
      (*(v66 + 32))(v70, v14, v31);
    }

    else
    {
      v67 = v17;
      v43 = v66;
      (*(v66 + 32))(v65, v40, v31);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_2_35();
      v44 = sub_220DBE240();
      v63 = v45;
      v64 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v46 = sub_220DC0250();
      v58 = v46;
      v47 = *(v46 - 8);
      v60 = *(v47 + 72);
      v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v49 = swift_allocObject();
      v61 = v49;
      v62 = v14;
      *(v49 + 16) = xmmword_220DC17C0;
      v50 = v49 + v48;
      v59 = *(v43 + 16);
      v59(v49 + v48, v14, v31);
      v51 = *MEMORY[0x277D7B3C0];
      v52 = v31;
      v53 = *(v47 + 104);
      v53(v50, v51, v46);
      v54 = v60;
      v55 = v65;
      v59(v50 + v60, v65, v52);
      v53(v50 + v54, v51, v58);
      v31 = v52;
      v36 = v70;
      sub_220DC0220();
      v56 = *(v43 + 8);
      v56(v55, v52);
      v56(v62, v52);
      (*(v69 + 8))(v22, v67);
    }

    v39 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v36, v39, 1, v31);
}

uint64_t sub_220DAD640@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v78 = sub_220DC0300();
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_220DC0A40();
  v87 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v86 = *(v75 - 8);
  v10 = MEMORY[0x28223BE20](v75);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v80 = &v68 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v68 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  v88 = &v68 - v18;
  v19 = *a1;
  sub_220D287C0();
  v20 = v19;
  sub_220DBE040();
  sub_220DBE040();
  sub_220DC02B0();
  sub_220DBF130();
  swift_allocObject();
  v21 = v20;
  v72 = v21;
  sub_220DBF120();
  v22 = [v21 symbol];
  sub_220DC0620();

  LODWORD(v76) = *MEMORY[0x277D7B408];
  v23 = *(v5 + 104);
  v68 = v5 + 104;
  v74 = v23;
  v24 = v7;
  v25 = v78;
  v23(v7);
  v73 = sub_220CF6ABC();
  v26 = v75;
  v27 = v77;
  v82 = sub_220DBE090();
  v83 = v28;

  v29 = *(v5 + 8);
  v70 = v5 + 8;
  v71 = v29;
  v29(v24, v25);
  v30 = *(v87 + 8);
  v87 += 8;
  v69 = v30;
  v31 = v27;
  v30(v9, v27);
  v32 = v9;
  sub_220DC02B0();
  swift_allocObject();
  v33 = v72;
  sub_220DBF120();
  v34 = [v33 symbol];
  sub_220DC0620();

  v74(v24, v76, v25);
  v35 = v31;
  v36 = v85;
  v74 = sub_220DBE090();
  v76 = v37;

  v38 = v86;

  v71(v24, v25);
  v69(v32, v35);
  v39 = *(v38 + 16);
  v40 = v79;
  v39(v79, v88, v26);
  v41 = v80;
  v39(v80, v36, v26);
  v42 = v81;
  sub_220DBE130();
  sub_220DBE050();
  v44 = v43;
  v47 = *(v38 + 8);
  v46 = v38 + 8;
  v45 = v47;
  v47(v42, v26);
  v48 = round(v44);
  sub_220DBE130();
  sub_220DBE050();
  v50 = v49;
  v47(v42, v26);
  v47(v41, v26);
  v47(v40, v26);
  if (v48 == round(v50))
  {

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v51 = *(sub_220DC0250() - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_220DC17A0;
    v54 = (v53 + v52);
    v55 = v83;
    *v54 = v82;
    v54[1] = v55;
    (*(v51 + 104))();
    sub_220DC0220();
  }

  else
  {
    v56 = v74;
    v86 = v46;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v87 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v57 = sub_220DC0250();
    v58 = *(v57 - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220DC17C0;
    v62 = (v61 + v60);
    v63 = v76;
    *v62 = v56;
    v62[1] = v63;
    v64 = *(v58 + 104);
    (v64)(v62, *MEMORY[0x277D7B3C8], v57);
    v65 = (v62 + v59);
    v66 = v83;
    *v65 = v82;
    v65[1] = v66;
    v64();
    sub_220DC0220();
    v36 = v85;
  }

  v45(v36, v26);
  return (v45)(v88, v26);
}

uint64_t sub_220DADF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v118 = a1;
  v119 = a3;
  v110 = sub_220DBE5C0();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_220DBE5E0();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v123 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v104 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v101 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v101 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v101 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v101 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v101 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v101 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v101 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v101 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v31 = *a2;
  v30 = *(a2 + 8);
  v32 = *(a2 + 24);
  v112 = *(a2 + 16);
  v113 = v32;
  v33 = *(a2 + 40);
  v114 = *(a2 + 32);
  v115 = v33;
  sub_220DBF2F0();
  sub_220D287C0();
  v34 = v31;
  sub_220DBE040();
  sub_220DBF300();
  v111 = v27;
  sub_220DBE040();
  sub_220DBE7B0();
  v120 = v21;
  sub_220DBE780();
  v35 = *(v123 + 16);
  v36 = v116;
  v122 = v29;
  v35(v116, v29, v6);
  v37 = v117;
  v121 = v24;
  v118 = v6;
  v35(v117, v24, v6);
  v124[0] = v34;
  v124[1] = v30;
  v39 = v112;
  v38 = v113;
  v124[2] = v112;
  v124[3] = v113;
  v41 = v114;
  v40 = v115;
  v124[4] = v114;
  v124[5] = v115;
  v42 = v34;
  v43 = v30;
  v44 = v39;
  v45 = v38;
  v46 = v41;
  v47 = v40;
  switch(sub_220DB14E4(v36, v37, v124))
  {
    case 1u:
      v59 = v105;
      sub_220DBE580();
      v60 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v59, v107);
      LOBYTE(v59) = sub_220DBE5A0();
      (*(v109 + 8))(v60, v110);
      v48 = v118;
      v49 = v111;
      if (v59)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 2u:
      v54 = v105;
      sub_220DBE580();
      v55 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v54, v107);
      LOBYTE(v54) = sub_220DBE5A0();
      (*(v109 + 8))(v55, v110);
      v48 = v118;
      v49 = v111;
      if (v54)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_29;
    case 3u:
      v57 = v105;
      sub_220DBE580();
      v58 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v57, v107);
      LOBYTE(v57) = sub_220DBE5A0();
      (*(v109 + 8))(v58, v110);
      v48 = v118;
      v49 = v111;
      if (v57)
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v56 = v122;
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_29;
        }
      }

LABEL_36:
      swift_once();
LABEL_29:
      sub_220DBE240();
      v50 = v119;
      goto LABEL_30;
    case 4u:
      v52 = v105;
      sub_220DBE580();
      v53 = v108;
      sub_220DBE5D0();
      (*(v106 + 8))(v52, v107);
      LOBYTE(v52) = sub_220DBE5A0();
      (*(v109 + 8))(v53, v110);
      v48 = v118;
      v49 = v111;
      if (v52)
      {
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v51 = v123;
        if (qword_280FA6600 == -1)
        {
          goto LABEL_22;
        }
      }

      swift_once();
LABEL_22:
      sub_220DBE240();
      v50 = v119;
LABEL_23:
      v56 = v122;
LABEL_30:
      sub_220DC0210();
      v96 = *(v51 + 8);
      v96(v120, v48);
      v96(v121, v48);
      v96(v49, v48);
      v96(v56, v48);
      v97 = 0;
LABEL_31:
      v98 = sub_220DC0260();
      return __swift_storeEnumTagSinglePayload(v50, v97, 1, v98);
    case 5u:
      v61 = v118;
      v62 = v111;
      v63 = v120;
      v64 = v121;
      if (qword_27CF94F40 != -1)
      {
        swift_once();
      }

      v65 = sub_220DBF410();
      __swift_project_value_buffer(v65, qword_27CF95F48);
      v66 = v101;
      v67 = v122;
      v35(v101, v122, v61);
      v68 = v102;
      v35(v102, v62, v61);
      v35(v103, v64, v61);
      v35(v104, v63, v61);
      v69 = v62;
      v70 = sub_220DBF3F0();
      v71 = sub_220DC0980();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v124[0] = v117;
        *v72 = 136446978;
        sub_220DB1ED4(&qword_27CF96720, MEMORY[0x277CC8800]);
        LODWORD(v116) = v71;
        v73 = sub_220DC0C70();
        v115 = v70;
        v74 = v69;
        v76 = v75;
        v77 = *(v123 + 8);
        v77(v66, v61);
        v78 = sub_220D3F210(v73, v76, v124);

        *(v72 + 4) = v78;
        v79 = v74;
        *(v72 + 12) = 2082;
        v80 = sub_220DC0C70();
        v82 = v81;
        v77(v68, v61);
        v83 = sub_220D3F210(v80, v82, v124);

        *(v72 + 14) = v83;
        *(v72 + 22) = 2082;
        v84 = v103;
        v85 = sub_220DC0C70();
        v87 = v86;
        v77(v84, v61);
        v88 = sub_220D3F210(v85, v87, v124);

        *(v72 + 24) = v88;
        *(v72 + 32) = 2082;
        v89 = v104;
        v90 = sub_220DC0C70();
        v92 = v91;
        v77(v89, v61);
        v93 = sub_220D3F210(v90, v92, v124);

        *(v72 + 34) = v93;
        v94 = v115;
        _os_log_impl(&dword_220CD1000, v115, v116, "Failed to make future day platter string for Feels Like due to unhandled case with maxApparentTemperature:%{public}s, minApparentTemperature:%{public}s, maxActualTemperature:%{public}s, minActualTemperature:%{public}s", v72, 0x2Au);
        v95 = v117;
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v95, -1, -1);
        MEMORY[0x223D98FB0](v72, -1, -1);

        v77(v120, v61);
        v77(v121, v61);
        v77(v79, v61);
        v77(v122, v61);
      }

      else
      {

        v100 = *(v123 + 8);
        v100(v104, v61);
        v100(v103, v61);
        v100(v68, v61);
        v100(v66, v61);
        v100(v63, v61);
        v100(v64, v61);
        v100(v69, v61);
        v100(v67, v61);
      }

      v97 = 1;
      v50 = v119;
      goto LABEL_31;
    default:
      v48 = v118;
      v49 = v111;
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v50 = v119;
      v51 = v123;
      goto LABEL_23;
  }
}