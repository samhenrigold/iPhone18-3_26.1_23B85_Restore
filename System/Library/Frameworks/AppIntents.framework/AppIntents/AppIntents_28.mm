uint64_t sub_18F3822BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 7)
    {
      v5 = v3[3];
      v6 = v3[4];
      v8 = i[3];
      v7 = i[4];
      v9 = v3[1] == i[1] && v3[2] == i[2];
      if (!v9 && (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v8 && v6 == v7;
      if (!v10 && (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v11 = sub_18F478C9C();
      v13 = v12;
      v14 = sub_18F478C9C();
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_35;
        }

        if (v11 == v14 && v13 == v15)
        {
        }

        else
        {
          v17 = sub_18F522D5C();

          if ((v17 & 1) == 0)
          {

            return 0;
          }
        }
      }

      else if (v15)
      {
LABEL_35:

        return 0;
      }

      v18 = sub_18F478C84();
      v20 = v19;
      if (v18 == sub_18F478C84() && v20 == v21)
      {
      }

      else
      {
        v23 = sub_18F522D5C();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_18F382640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_18F0F21A8(0, &qword_1EACCE798, 0x1E69E58C0);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = v7;
      OUTLINED_FUNCTION_82();
      v10 = sub_18F52243C();

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_18F382710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 88)
    {
      memcpy(__dst, v3, 0x51uLL);
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, 0x51uLL);
      memcpy(__src, i, sizeof(__src));
      sub_18F383DD4(__dst, v8);
      sub_18F383DD4(v12, v8);
      static MessageParticipantPrototype.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, 0x51uLL);
      sub_18F383E30(v13);
      memcpy(v14, v10, 0x51uLL);
      sub_18F383E30(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18F382820(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520B3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_18F383C1C(qword_1EACD0B78, MEMORY[0x1E6968E10], MEMORY[0x1E6968E20]);
    v21 = sub_18F52180C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_18F382A34()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    do
    {
      v5 = 0xE700000000000000;
      v6 = 0x646574656C6564;
      switch(*v3)
      {
        case 1:
          v6 = 0x6564726177726F66;
          v5 = 0xE900000000000064;
          break;
        case 2:
          v6 = 0x6465696C706572;
          break;
        case 3:
          v6 = 0x7463657269646572;
          v5 = 0xEA00000000006465;
          break;
        default:
          break;
      }

      v7 = 0xE700000000000000;
      v8 = 0x646574656C6564;
      switch(*v4)
      {
        case 1:
          v8 = 0x6564726177726F66;
          v7 = 0xE900000000000064;
          break;
        case 2:
          v8 = 0x6465696C706572;
          break;
        case 3:
          v8 = 0x7463657269646572;
          v7 = 0xEA00000000006465;
          break;
        default:
          break;
      }

      if (v6 == v8 && v5 == v7)
      {
      }

      else
      {
        v10 = sub_18F522D5C();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F382BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (1)
  {
    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v7 = *v4;
    v392 = *(v4 - 1);
    v8 = *(v3 - 3);
    HIDWORD(v410) = *(v3 - 16);
    v9 = *v3;
    v419 = *(v3 - 1);
    v428 = *(v3 - 4);
    if (!*(v4 - 16))
    {
      if (*(v3 - 16))
      {
        v310 = OUTLINED_FUNCTION_32_35();
        v303 = BYTE4(v410);
        v312 = OUTLINED_FUNCTION_2_84(v310, v311, BYTE4(v410));
        v307 = OUTLINED_FUNCTION_2_84(v312, v313, 0);
        v309 = 0;
        goto LABEL_66;
      }

      if (v6 == v428 && v5 == v8)
      {
LABEL_28:
        v141 = OUTLINED_FUNCTION_0_106();
        v144 = sub_18F172BEC(v141, v142, v143);
        v152 = OUTLINED_FUNCTION_29_35(v144, v145, v146, v147, v148, v149, v150, v151, v359, v375, v392);
        sub_18F383E9C(v152, v153);
        v154 = OUTLINED_FUNCTION_0_106();
        v157 = sub_18F172BEC(v154, v155, v156);
        v165 = OUTLINED_FUNCTION_13_43(v157, v158, v159, v160, v161, v162, v163, v164, v366, v383, v400, v410, v419);
        sub_18F383E9C(v165, v166);
        v167 = OUTLINED_FUNCTION_0_106();
        sub_18F172BEC(v167, v168, v169);
        v170 = OUTLINED_FUNCTION_0_106();
        sub_18F172BEC(v170, v171, v172);
        v173 = OUTLINED_FUNCTION_0_106();
        sub_18F383E84(v173, v174, v175);
        v176 = OUTLINED_FUNCTION_0_106();
        v51 = sub_18F383E84(v176, v177, v178);
        goto LABEL_29;
      }

      v60 = OUTLINED_FUNCTION_22();
      LODWORD(v379) = OUTLINED_FUNCTION_15_42(v60, v61, v62, v63, v64, v65, v66, v67, v359, v375, v392, v410, v419, v428);
      v68 = OUTLINED_FUNCTION_22();
      v70 = sub_18F172BEC(v68, v69, 0);
      v78 = OUTLINED_FUNCTION_29_35(v70, v71, v72, v73, v74, v75, v76, v77, v362, v379, v396);
      sub_18F383E9C(v78, v79);
      v80 = OUTLINED_FUNCTION_11_42();
      v82 = sub_18F172BEC(v80, v81, 0);
      v90 = OUTLINED_FUNCTION_13_43(v82, v83, v84, v85, v86, v87, v88, v89, v363, v380, v397, v412, v422);
      sub_18F383E9C(v90, v91);
      v92 = OUTLINED_FUNCTION_11_42();
      v94 = OUTLINED_FUNCTION_2_84(v92, v93, 0);
      v96 = OUTLINED_FUNCTION_2_84(v94, v95, 0);
      sub_18F383E84(v96, v97, 0);
      v98 = OUTLINED_FUNCTION_11_42();
      v51 = sub_18F383E84(v98, v99, 0);
      if ((v378 & 1) == 0)
      {
        v332 = OUTLINED_FUNCTION_18_42(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395, v410, v421, v428);
        v334 = sub_18F383E84(v332, v333, 0);
        v342 = OUTLINED_FUNCTION_13_43(v334, v335, v336, v337, v338, v339, v340, v341, v373, v390, v407, v416, v426);
        sub_18F383EB0(v342, v343);
        v356 = OUTLINED_FUNCTION_22();
        v358 = 0;
        goto LABEL_67;
      }

      goto LABEL_29;
    }

    if (*(v4 - 16) != 1)
    {
      if (HIDWORD(v410) != 2)
      {
        v314 = OUTLINED_FUNCTION_32_35();
        v303 = BYTE4(v410);
        v316 = OUTLINED_FUNCTION_2_84(v314, v315, BYTE4(v410));
        v307 = OUTLINED_FUNCTION_2_84(v316, v317, 2u);
        v309 = 2;
        goto LABEL_66;
      }

      if (v6 == v428 && v5 == v8)
      {
        goto LABEL_28;
      }

      v101 = OUTLINED_FUNCTION_22();
      LODWORD(v381) = OUTLINED_FUNCTION_15_42(v101, v102, v103, v104, v105, v106, v107, v108, v359, v375, v392, v410, v419, v428);
      v109 = OUTLINED_FUNCTION_22();
      v111 = sub_18F172BEC(v109, v110, 2u);
      v119 = OUTLINED_FUNCTION_29_35(v111, v112, v113, v114, v115, v116, v117, v118, v364, v381, v398);
      sub_18F383E9C(v119, v120);
      v121 = OUTLINED_FUNCTION_11_42();
      v123 = sub_18F172BEC(v121, v122, 2u);
      v131 = OUTLINED_FUNCTION_13_43(v123, v124, v125, v126, v127, v128, v129, v130, v365, v382, v399, v413, v423);
      sub_18F383E9C(v131, v132);
      v133 = OUTLINED_FUNCTION_11_42();
      v135 = OUTLINED_FUNCTION_2_84(v133, v134, 2u);
      v137 = OUTLINED_FUNCTION_2_84(v135, v136, 2u);
      sub_18F383E84(v137, v138, 2u);
      v139 = OUTLINED_FUNCTION_11_42();
      v51 = sub_18F383E84(v139, v140, 2u);
      if ((v378 & 1) == 0)
      {
        v320 = OUTLINED_FUNCTION_18_42(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395, v410, v421, v428);
        v322 = sub_18F383E84(v320, v321, 2u);
        v330 = OUTLINED_FUNCTION_13_43(v322, v323, v324, v325, v326, v327, v328, v329, v372, v389, v406, v415, v425);
        sub_18F383EB0(v330, v331);
        v356 = OUTLINED_FUNCTION_22();
        v358 = 2;
        goto LABEL_67;
      }

      goto LABEL_29;
    }

    if (HIDWORD(v410) != 1)
    {
      v302 = OUTLINED_FUNCTION_32_35();
      v303 = BYTE4(v410);
      v305 = OUTLINED_FUNCTION_2_84(v302, v304, BYTE4(v410));
      v307 = OUTLINED_FUNCTION_2_84(v305, v306, 1u);
      v309 = 1;
LABEL_66:
      sub_18F383E84(v307, v308, v309);
      v318 = OUTLINED_FUNCTION_32_35();
      sub_18F383E84(v318, v319, v303);
      return 0;
    }

    if (v6 == v428 && v5 == v8)
    {
      goto LABEL_28;
    }

    v11 = OUTLINED_FUNCTION_22();
    LODWORD(v376) = OUTLINED_FUNCTION_15_42(v11, v12, v13, v14, v15, v16, v17, v18, v359, v375, v392, v410, v419, v428);
    v19 = OUTLINED_FUNCTION_22();
    v21 = sub_18F172BEC(v19, v20, 1u);
    v29 = OUTLINED_FUNCTION_29_35(v21, v22, v23, v24, v25, v26, v27, v28, v360, v376, v393);
    sub_18F383E9C(v29, v30);
    v31 = OUTLINED_FUNCTION_11_42();
    v33 = sub_18F172BEC(v31, v32, 1u);
    v41 = OUTLINED_FUNCTION_13_43(v33, v34, v35, v36, v37, v38, v39, v40, v361, v377, v394, v411, v420);
    sub_18F383E9C(v41, v42);
    v43 = OUTLINED_FUNCTION_11_42();
    v45 = OUTLINED_FUNCTION_2_84(v43, v44, 1u);
    v47 = OUTLINED_FUNCTION_2_84(v45, v46, 1u);
    sub_18F383E84(v47, v48, 1u);
    v49 = OUTLINED_FUNCTION_11_42();
    v51 = sub_18F383E84(v49, v50, 1u);
    if ((v378 & 1) == 0)
    {
      break;
    }

LABEL_29:
    switch(v7)
    {
      case 0uLL:
        if (!v9)
        {
          goto LABEL_47;
        }

        goto LABEL_62;
      case 1uLL:
        if (v9 != 1)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      case 2uLL:
        if (v9 != 2)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      case 3uLL:
        if (v9 != 3)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      case 4uLL:
        if (v9 != 4)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      case 5uLL:
        if (v9 != 5)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      case 6uLL:
        if (v9 != 6)
        {
          goto LABEL_62;
        }

LABEL_47:
        v195 = OUTLINED_FUNCTION_115();
        sub_18F383E9C(v195, v196);
        v375 = v4;
        v197 = v8;
        v8 = v395;
        sub_18F383EB0(v395, v7);
        v198 = OUTLINED_FUNCTION_115();
        sub_18F383EB0(v198, v199);
        sub_18F383EB0(v395, v7);
        sub_18F383E84(v428, v197, BYTE4(v410));
        v200 = OUTLINED_FUNCTION_115();
        sub_18F383EB0(v200, v201);
        goto LABEL_48;
      case 7uLL:
        if (v9 != 7)
        {
          goto LABEL_62;
        }

        v187 = OUTLINED_FUNCTION_24_38(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395);
        sub_18F383EB0(v187, 7uLL);
        v194 = OUTLINED_FUNCTION_14_39(v421, 7uLL, v188, v189, v190, v191, v192, v193, v368, v385, v402, v410, BYTE4(v410), v421, v428);
        sub_18F383EB0(v194, 7uLL);
        v7 = 7;
        goto LABEL_48;
      case 8uLL:
        if (v9 != 8)
        {
          goto LABEL_62;
        }

        v246 = OUTLINED_FUNCTION_24_38(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395);
        sub_18F383EB0(v246, 8uLL);
        v253 = OUTLINED_FUNCTION_14_39(v421, 8uLL, v247, v248, v249, v250, v251, v252, v371, v388, v405, v410, BYTE4(v410), v421, v428);
        sub_18F383EB0(v253, 8uLL);
        v7 = 8;
        goto LABEL_48;
      case 9uLL:
        if (v9 != 9)
        {
          goto LABEL_62;
        }

        v179 = OUTLINED_FUNCTION_24_38(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395);
        sub_18F383EB0(v179, 9uLL);
        v186 = OUTLINED_FUNCTION_14_39(v421, 9uLL, v180, v181, v182, v183, v184, v185, v367, v384, v401, v410, BYTE4(v410), v421, v428);
        sub_18F383EB0(v186, 9uLL);
        v7 = 9;
        goto LABEL_48;
      default:
        if (v9 < 0xA)
        {
LABEL_62:
          v273 = v395;
          v274 = OUTLINED_FUNCTION_82();
          sub_18F383E9C(v274, v275);
          v276 = OUTLINED_FUNCTION_82();
          sub_18F383E9C(v276, v277);
          v278 = OUTLINED_FUNCTION_115();
          sub_18F383E9C(v278, v279);
          v280 = OUTLINED_FUNCTION_82();
          sub_18F383EB0(v280, v281);
          v282 = OUTLINED_FUNCTION_115();
          sub_18F383EB0(v282, v283);
          v284 = OUTLINED_FUNCTION_82();
          v286 = sub_18F383EB0(v284, v285);
          v294 = OUTLINED_FUNCTION_18_42(v286, v287, v288, v289, v290, v291, v292, v293, v359, v378, v395, v410, v421, v428);
          sub_18F383E84(v294, v295, v418);
          v296 = OUTLINED_FUNCTION_115();
          sub_18F383EB0(v296, v297);
          v298 = OUTLINED_FUNCTION_0_106();
          sub_18F383E84(v298, v299, v300);
          v301 = v273;
          goto LABEL_68;
        }

        v205 = v395;
        if (v395 == v421 && v7 == v9)
        {
          sub_18F383E9C(v395, v7);
          v254 = OUTLINED_FUNCTION_21_35();
          sub_18F383E9C(v254, v255);
          v256 = OUTLINED_FUNCTION_21_35();
          sub_18F383EB0(v256, v257);
          v258 = OUTLINED_FUNCTION_21_35();
          v260 = sub_18F383EB0(v258, v259);
          v268 = OUTLINED_FUNCTION_18_42(v260, v261, v262, v263, v264, v265, v266, v267, v359, v378, v395, v410, v421, v428);
          sub_18F383E84(v268, v269, BYTE4(v410));
          v270 = OUTLINED_FUNCTION_21_35();
          sub_18F383EB0(v270, v271);
          v8 = v205;
LABEL_48:
          v202 = OUTLINED_FUNCTION_0_106();
          sub_18F383E84(v202, v203, v204);
          sub_18F383EB0(v8, v7);
        }

        else
        {
          v207 = sub_18F522D5C();
          LODWORD(v378) = v207;
          v215 = OUTLINED_FUNCTION_13_43(v207, v208, v209, v210, v211, v212, v213, v214, v9, v378, v395, v410, v421);
          sub_18F383E9C(v215, v216);
          v217 = OUTLINED_FUNCTION_21_35();
          sub_18F383E9C(v217, v218);
          v219 = OUTLINED_FUNCTION_21_35();
          sub_18F383EB0(v219, v220);
          v221 = v424;
          v222 = v369;
          v223 = sub_18F383EB0(v424, v369);
          v231 = OUTLINED_FUNCTION_18_42(v223, v224, v225, v226, v227, v228, v229, v230, v369, v386, v403, v414, v424, v428);
          sub_18F383E84(v231, v232, BYTE4(v410));
          sub_18F383EB0(v221, v222);
          v233 = OUTLINED_FUNCTION_0_106();
          v236 = sub_18F383E84(v233, v234, v235);
          v244 = OUTLINED_FUNCTION_29_35(v236, v237, v238, v239, v240, v241, v242, v243, v370, v387, v404);
          sub_18F383EB0(v244, v245);
          if ((v375 & 1) == 0)
          {
            return 0;
          }
        }

        v4 += 5;
        v3 += 5;
        if (!--v2)
        {
          return 1;
        }

        break;
    }
  }

  v344 = OUTLINED_FUNCTION_18_42(v51, v52, v53, v54, v55, v56, v57, v58, v359, v378, v395, v410, v421, v428);
  v346 = sub_18F383E84(v344, v345, 1u);
  v354 = OUTLINED_FUNCTION_13_43(v346, v347, v348, v349, v350, v351, v352, v353, v374, v391, v408, v417, v427);
  sub_18F383EB0(v354, v355);
  v356 = OUTLINED_FUNCTION_22();
  v358 = 1;
LABEL_67:
  sub_18F383E84(v356, v357, v358);
  v301 = v409;
LABEL_68:
  sub_18F383EB0(v301, v7);
  return 0;
}

uint64_t sub_18F383214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18F3832A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t DisplayRepresentation.title.getter()
{
  OUTLINED_FUNCTION_4_17();
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v0 = OUTLINED_FUNCTION_56();

  return v1(v0);
}

uint64_t DisplayRepresentation.title.setter()
{
  OUTLINED_FUNCTION_57_0();
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t DisplayRepresentation.subtitle.getter()
{
  v2 = OUTLINED_FUNCTION_4_17();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0F9F88(v1 + *(v3 + 20), v0, &qword_1EACCF7A8, &qword_18F540440);
}

uint64_t DisplayRepresentation.subtitle.setter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0FF5DC(v0, v1 + *(v3 + 20), &qword_1EACCF7A8, &qword_18F540440);
}

uint64_t DisplayRepresentation.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for DisplayRepresentation(v0);
  return OUTLINED_FUNCTION_7_2();
}

uint64_t DisplayRepresentation.image.getter()
{
  v2 = OUTLINED_FUNCTION_4_17();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0F9F88(v1 + *(v3 + 24), v0, &qword_1EACD0270, &unk_18F5407C0);
}

uint64_t DisplayRepresentation.image.setter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0FF5DC(v0, v1 + *(v3 + 24), &qword_1EACD0270, &unk_18F5407C0);
}

uint64_t DisplayRepresentation.image.modify()
{
  v0 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for DisplayRepresentation(v0);
  return OUTLINED_FUNCTION_7_2();
}

uint64_t DisplayRepresentation.sharedIndexedViewData.getter()
{
  type metadata accessor for DisplayRepresentation(0);
  v0 = OUTLINED_FUNCTION_56();
  sub_18F11D008(v0, v1);
  return OUTLINED_FUNCTION_56();
}

uint64_t DisplayRepresentation.sharedIndexedViewData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for DisplayRepresentation(0) + 28);
  result = sub_18F190748(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t DisplayRepresentation.sharedIndexedViewData.modify()
{
  v0 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for DisplayRepresentation(v0);
  return OUTLINED_FUNCTION_7_2();
}

uint64_t DisplayRepresentation.synonyms.getter()
{
  type metadata accessor for DisplayRepresentation(0);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t DisplayRepresentation.synonyms.setter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = *(type metadata accessor for DisplayRepresentation(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DisplayRepresentation.synonyms.modify()
{
  v0 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for DisplayRepresentation(v0);
  return OUTLINED_FUNCTION_7_2();
}

uint64_t DisplayRepresentation.descriptionText.getter()
{
  v2 = OUTLINED_FUNCTION_4_17();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0F9F88(v1 + *(v3 + 40), v0, &qword_1EACCF7A8, &qword_18F540440);
}

uint64_t DisplayRepresentation.descriptionText.setter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  return sub_18F0FF5DC(v0, v1 + *(v3 + 40), &qword_1EACCF7A8, &qword_18F540440);
}

uint64_t DisplayRepresentation.descriptionText.modify()
{
  v0 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for DisplayRepresentation(v0);
  return OUTLINED_FUNCTION_7_2();
}

uint64_t DisplayRepresentation.init(title:subtitle:image:synonyms:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_4_17();
  v8 = type metadata accessor for DisplayRepresentation(v7);
  v9 = v8[5];
  v10 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = v8[6];
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *(v5 + v8[7]) = xmmword_18F540410;
  *(v5 + v8[8]) = 0;
  v19 = v8[9];
  v20 = v8[10];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);
  v24 = *(*(v10 - 8) + 32);
  v24(v5, a1, v10);
  sub_18F0FF5DC(a2, v5 + v9, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0FF5DC(a3, v5 + v14, &qword_1EACD0270, &unk_18F5407C0);
  *(v5 + v19) = a4;
  sub_18F0EF1A8(v5 + v20, &qword_1EACCF7A8, &qword_18F540440);
  v24(v5 + v20, a5, v10);

  return __swift_storeEnumTagSinglePayload(v5 + v20, 0, 1, v10);
}

void DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_4_17();
  v12 = type metadata accessor for DisplayRepresentation(v11);
  v13 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v0 + v12[7]) = xmmword_18F540410;
  v21 = v12[8];
  *(v0 + v12[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  v25 = *(v13 - 8);
  (*(v25 + 16))(v0, v10, v13);
  v26 = objc_allocWithZone(MEMORY[0x1E69ACA70]);
  v27 = sub_18F383AFC(v8, v6, v4, v2);
  (*(v25 + 8))(v10, v13);
  *(v0 + v21) = v27;
  OUTLINED_FUNCTION_16();
}

AppIntents::DisplayRepresentation::Components sub_18F383A94@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DisplayRepresentation.Components.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F383AD4@<X0>(uint64_t *a1@<X8>)
{
  result = DisplayRepresentation.Components.rawValue.getter();
  *a1 = result;
  return result;
}

id sub_18F383AFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18F520D2C();
  v8 = sub_18F5218AC();

  v9 = [v4 initWithPluginModelData:v7 bundleIdentifier:v8];

  sub_18F123A1C(a1, a2);
  return v9;
}

uint64_t sub_18F383C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18F383C68()
{
  result = qword_1EACD7B00;
  if (!qword_1EACD7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7B00);
  }

  return result;
}

unint64_t sub_18F383CC0()
{
  result = qword_1EACD7B08;
  if (!qword_1EACD7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7B08);
  }

  return result;
}

unint64_t sub_18F383D18()
{
  result = qword_1EACCE0A8;
  if (!qword_1EACCE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE0A8);
  }

  return result;
}

unint64_t sub_18F383D70()
{
  result = qword_1EACCE0A0;
  if (!qword_1EACCE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE0A0);
  }

  return result;
}

uint64_t sub_18F383E84(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_18F383E9C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F383EB0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_18F383EF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 56) = a8;
  *(v9 + 64) = v8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 89) = a6;
  *(v9 + 24) = a2;
  *(v9 + 32) = a4;
  *(v9 + 88) = a3;
  *(v9 + 16) = a1;
  v10 = swift_task_alloc();
  *(v9 + 72) = v10;
  *v10 = v9;
  v10[1] = sub_18F383FB8;

  return sub_18F139E28();
}

uint64_t sub_18F383FB8()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 89);
    v8 = *(v2 + 88);
    OUTLINED_FUNCTION_1_88(*(v2 + 56));
    v17 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v2 + 80) = v10;
    *v10 = v3;
    v10[1] = sub_18F3841B0;
    v11 = *(v2 + 56);
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);
    v14 = *(v2 + 24);
    v15 = *(v2 + 32);
    v16 = *(v2 + 16);

    return (v17)(v16, v14, v8 & 1, v15, v12, v7 & 1, v13, v11);
  }
}

uint64_t sub_18F3841B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t static EntityPropertyQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntentDescription(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t EntityQueryComparatorMode.hashValue.getter(char a1)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a1 & 1);
  return sub_18F522F4C();
}

uint64_t sub_18F384398(uint64_t a1)
{
  v2 = *v1;
  sub_18F522EFC();
  EntityQueryComparatorMode.hash(into:)(v4, v2);
  return sub_18F522F4C();
}

unint64_t sub_18F3843E0()
{
  result = qword_1EACD7B10[0];
  if (!qword_1EACD7B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD7B10);
  }

  return result;
}

uint64_t dispatch thunk of EntityPropertyQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_88(a8);
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_18F224D20;

  return (v20)(a1, a2, a3 & 1, a4, a5, a6 & 1, a7, a8);
}

_BYTE *storeEnumTagSinglePayload for EntityQueryComparatorMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F3846A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a4 + 32))(v4, a4);
  swift_getAssociatedConformanceWitness();
  v10 = sub_18F5220DC();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  result = 0;
  if (v10)
  {
    return sub_18F52168C();
  }

  return result;
}

void static Array<A>.defaultResolverSpecification.getter(uint64_t a1)
{
  sub_18F521DBC();
  swift_getWitnessTable();
  EmptyResolverSpecification.init()();
}

uint64_t sub_18F3848D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();

  return _SequenceIntentValue<>.sequence.getter(a1, a2);
}

void static Set<>.defaultResolverSpecification.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F52207C();
  type metadata accessor for SetFromArrayResolver(0, a1, a2, a3);
  OUTLINED_FUNCTION_3_68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18F3935AC();
}

uint64_t sub_18F384A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();

  return _SequenceIntentValue<>.sequence.getter(a1, a2);
}

uint64_t sub_18F384A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a3;
  v5[20] = a5;
  v5[18] = a1;
  v5[21] = *(a3 - 8);
  v5[22] = swift_task_alloc();
  sub_18F52254C();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F384B5C, 0, 0);
}

void *sub_18F384B5C()
{
  *(v0 + 136) = *(v0 + 144);
  v1 = *(v0 + 152);
  sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_2_66();
  swift_getWitnessTable();
  v2 = sub_18F52208C();
  *(v0 + 192) = v2;
  if (!dynamic_cast_existential_2_conditional(v1, v1, &protocol descriptor for AppEntity, MEMORY[0x1E69E5EA0]))
  {
    goto LABEL_23;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F52269C();
    result = sub_18F52205C();
    v2 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v5 = 0;
  }

  *(v0 + 200) = v2;
  *(v0 + 208) = v4;
  v11 = *(v0 + 168);
  *(v0 + 224) = v5;
  *(v0 + 232) = v7;
  *(v0 + 216) = v6;
  if (v2 < 0)
  {
    v16 = sub_18F5226CC();
    if (v16)
    {
      OUTLINED_FUNCTION_12_51(v16);
      swift_unknownObjectRelease();
      v13 = v5;
      v15 = v7;
      goto LABEL_17;
    }

LABEL_22:
    OUTLINED_FUNCTION_6_64();
    sub_18F125D0C();
LABEL_23:

    v22 = OUTLINED_FUNCTION_9_50();

    return v23(v22);
  }

  v12 = v7;
  v13 = v5;
  if (v7)
  {
LABEL_14:
    v15 = (v12 - 1) & v12;
    (*(v11 + 16))(*(v0 + 184), *(v2 + 48) + *(v11 + 72) * (__clz(__rbit64(v12)) | (v13 << 6)), *(v0 + 152));
LABEL_17:
    *(v0 + 240) = v13;
    *(v0 + 248) = v15;
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v20);
    (*(v19 + 32))(v18, v17, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28, &qword_18F55E020);
    if (swift_dynamicCast())
    {
      sub_18F0FF968((v0 + 96), v0 + 56);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
      v21 = swift_task_alloc();
      *(v0 + 256) = v21;
      *v21 = v0;
      OUTLINED_FUNCTION_4_69(v21);

      return sub_18F35EB98();
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_18F125D0C();
    sub_18F2DE854(v0 + 96);
    goto LABEL_23;
  }

  v14 = v5;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F384EDC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 264) = v0;

  if (v0)
  {

    v6 = sub_18F385268;
  }

  else
  {
    v6 = sub_18F384FF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F384FF0()
{
  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  *(v0 + 224) = v2;
  *(v0 + 232) = v3;
  v4 = *(v0 + 200);
  if (v4 < 0)
  {
    v9 = sub_18F5226CC();
    if (!v9)
    {
LABEL_15:
      OUTLINED_FUNCTION_6_64();
      sub_18F125D0C();
LABEL_16:

      v15 = OUTLINED_FUNCTION_9_50();

      return v16(v15);
    }

    OUTLINED_FUNCTION_12_51(v9);
    swift_unknownObjectRelease();
    v6 = v2;
    v8 = v3;
LABEL_10:
    *(v0 + 240) = v6;
    *(v0 + 248) = v8;
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 168);
    v13 = *(v0 + 152);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    (*(v12 + 32))(v11, v10, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28, &qword_18F55E020);
    if (swift_dynamicCast())
    {
      sub_18F0FF968((v0 + 96), v0 + 56);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      OUTLINED_FUNCTION_4_69(v14);

      return sub_18F35EB98();
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_18F125D0C();
    sub_18F2DE854(v0 + 96);
    goto LABEL_16;
  }

  v5 = v3;
  v6 = v2;
  if (v3)
  {
LABEL_7:
    v8 = (v5 - 1) & v5;
    (*(*(v0 + 168) + 16))(*(v0 + 184), *(v4 + 48) + *(*(v0 + 168) + 72) * (__clz(__rbit64(v5)) | (v6 << 6)), *(v0 + 152));
    goto LABEL_10;
  }

  v7 = v2;
  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= ((*(v0 + 216) + 64) >> 6))
    {
      goto LABEL_15;
    }

    v5 = *(*(v0 + 208) + 8 * v6);
    ++v7;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F385268()
{
  sub_18F125D0C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F3852F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  *v7 = v4;
  v7[1] = sub_18F385394;

  return sub_18F384A6C(v6, v8, v10, v9, v11);
}

uint64_t sub_18F385394(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t IntentCollectionSize.init(min:max:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

AppIntents::IntentCollectionSize __swiftcall IntentCollectionSize.init(integerLiteral:)(Swift::Int integerLiteral)
{
  *v1 = integerLiteral;
  v1[1] = integerLiteral;
  result.min = integerLiteral;
  return result;
}

id static Array<A>.valueType.getter()
{
  OUTLINED_FUNCTION_8_22();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id Array<A>._asValue.getter()
{
  OUTLINED_FUNCTION_43_3();
  sub_18F521DBC();
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  OUTLINED_FUNCTION_2_66();
  swift_getWitnessTable();
  v0 = sub_18F521B3C();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v4[0] = v0;
  v1 = static Array<A>.valueType.getter();
  v2 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v4, v1);
}

void sub_18F385630(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = (*(a2 + 16))(a1, a2);
  v5 = [v4 value];
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0F21A8(0, qword_1EACCF090, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    v4 = 0;
  }

  *a3 = v4;
}

uint64_t Array<A>.defaultDisplayRepresentation.getter()
{
  type metadata accessor for DisplayRepresentation(0);
  v0 = OUTLINED_FUNCTION_4_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id Optional<A>._asValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v17[3] = sub_18F0F21A8(0, qword_1EACCF090, 0x1E695DFB0);
    v17[0] = v12;
    v13 = [objc_allocWithZone(MEMORY[0x1E69AC8D0]) init];
    v14 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    return sub_18F166E58(v17, v13);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    v15 = (*(a2 + 16))(v3, a2);
    (*(v4 + 8))(v7, v3);
  }

  return v15;
}

id sub_18F385A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v18[0] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[2] = a3;
  v17[3] = swift_getKeyPath();
  sub_18F521DBC();
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  WitnessTable = swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_13_44(WitnessTable, v17, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v18[0] = v13;
  v14 = sub_18F3860F8(a2, a3, a6, 3);
  v15 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v18, v14);
}

id sub_18F385B88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = sub_18F143370(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_18F385C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = _IntentValueRepresentable.asValue.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

id static Set<>.valueType.getter()
{
  OUTLINED_FUNCTION_8_22();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v1 capabilities:0];

  return v2;
}

id Set<>._asValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43_3();
  v25[0] = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v19 = v4;
  v20 = a4;
  KeyPath = swift_getKeyPath();
  v10 = sub_18F52207C();
  v11 = sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  OUTLINED_FUNCTION_0_107();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_18F10C138(sub_18F3869C4, &v18, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v25[0] = v14;
  v15 = static Set<>.valueType.getter();
  v16 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v25, v15);
}

uint64_t Set<>.defaultDisplayRepresentation.getter()
{
  type metadata accessor for DisplayRepresentation(0);
  v0 = OUTLINED_FUNCTION_4_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id sub_18F385F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v20[0] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = swift_getKeyPath();
  sub_18F52207C();
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  OUTLINED_FUNCTION_0_107();
  WitnessTable = swift_getWitnessTable();
  v14 = OUTLINED_FUNCTION_13_44(WitnessTable, v19, v11, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v20[0] = v14;
  v16 = sub_18F3862F0(a2, a3, v15, a7);
  v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v20, v16);
}

id sub_18F386038@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = AppEntity.asValue.getter(*(a1 + a2 - 24), *(a1 + a2 - 16));
  *a3 = result;
  return result;
}

id sub_18F3860F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  v6 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v5 capabilities:a4];

  return v6;
}

id sub_18F386154()
{
  OUTLINED_FUNCTION_43_3();
  v18[0] = v2;
  v16 = v3;
  v17 = v4;
  v14 = v0;
  KeyPath = swift_getKeyPath();
  v5 = sub_18F52207C();
  v6 = sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  OUTLINED_FUNCTION_0_107();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_18F10C138(sub_18F265878, &v13, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v18[0] = v9;
  v10 = sub_18F3860F8(v1, v0, sub_18F1435A0, 0);
  v11 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v18, v10);
}

id sub_18F3862F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  v5 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v4 capabilities:0];

  return v5;
}

uint64_t sub_18F386348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = _IntentValueRepresentable.asValue.getter(*(a1 + a2 - 24), *(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t static Array<A>.persistentIdentifier.getter()
{
  OUTLINED_FUNCTION_8_22();
  v1 = v0();
  MEMORY[0x193ADB000](v1);

  MEMORY[0x193ADB000](93, 0xE100000000000000);
  return 91;
}

uint64_t static Set<>.persistentIdentifier.getter()
{
  OUTLINED_FUNCTION_8_22();
  v1 = v0();
  MEMORY[0x193ADB000](v1);

  MEMORY[0x193ADB000](62, 0xE100000000000000);
  return 1014261075;
}

uint64_t sub_18F3865AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3866A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3866F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F386734(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F386800(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3868E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentCollectionSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v62 = v26;
  v64 = v27;
  v68 = v28;
  v61 = v29;
  v69 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_29_36(v31);
  v65 = a22;
  v66 = a23;
  v60 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v36);
  v67 = v23;
  v37 = *(v23 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  v57 = v39;
  OUTLINED_FUNCTION_11_0();
  v41 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v56 - v43;
  v45 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  (*(v47 + 16))(v50 - v49, v32, v45);
  v51 = v61;
  (*(v41 + 16))(v44, v61, v39);
  OUTLINED_FUNCTION_22_0(&a15);
  v64();
  sub_18F35E9D8(v37, &v70);
  v52 = v68;
  sub_18F116908(v68, v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  v53 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v63, v54, v55, v53);
  sub_18F116B3C();

  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v41 + 8))(v51, v57);
  sub_18F0EF148(v69, &qword_1EACCF7A8, &qword_18F540440);
  (*(v47 + 8))(v58, v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v29;
  a20 = v30;
  v78 = v31;
  v72 = v32;
  v76 = v34;
  v77 = v33;
  v36 = v35;
  v79 = v37;
  v39 = v38;
  v69 = v38;
  v71 = a25;
  v70 = a26;
  v74 = a24;
  OUTLINED_FUNCTION_23_35(a23);
  OUTLINED_FUNCTION_61_0(v40);
  v67 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v43 = OUTLINED_FUNCTION_10(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v64 - v45;
  v75 = v26;
  v47 = *(v26 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  v65 = v49;
  OUTLINED_FUNCTION_11_0();
  v51 = v50;
  v66 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  v53 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_36(v53);
  OUTLINED_FUNCTION_11_0();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_32();
  (*(v55 + 16))(v28, v39);
  (*(v51 + 16))(v27, v79, v49);
  OUTLINED_FUNCTION_22_0(&a11);
  v72();
  sub_18F35E9D8(v47, &v81);
  sub_18F116908(v36, v46, &qword_1EACCF7A0, &unk_18F53E6F0);
  v57 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v57);
  v58 = v73;
  v80[3] = v73;
  v80[4] = v74;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
  v60 = *(v58 - 8);
  v61 = v76;
  (*(v60 + 16))(boxed_opaque_existential_1, v76, v58);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v60 + 8))(v61, v58);
  sub_18F0EF148(v36, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v66 + 8))(v79, v65);
  sub_18F0EF148(v77, &qword_1EACCF7A8, &qword_18F540440);
  v62 = OUTLINED_FUNCTION_28_44();
  v63(v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v54[2] = v26;
  v54[1] = v27;
  v54[3] = v28;
  v55 = v29;
  v58 = v30;
  v32 = v31;
  v54[0] = v31;
  v60 = v33;
  v56 = a22;
  v57 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v54 - v40;
  v59 = v22;
  v42 = *(v22 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v46 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_35_0();
  v49 = OUTLINED_FUNCTION_10(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_32();
  OUTLINED_FUNCTION_25_0();
  (*(v46 + 16))(v23, v32, v44);
  OUTLINED_FUNCTION_22_0(&a17);
  v55();
  sub_18F35E9D8(v42, &v61);
  v50 = v58;
  sub_18F116908(v58, v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v38, v52, v53, v51);
  sub_18F116B3C();

  sub_18F0EF148(v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v46 + 8))(v54[0], v44);
  sub_18F0EF148(v60, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v56 = v26;
  v57 = v25;
  v58 = v27;
  v29 = v28;
  v60 = v30;
  v32 = v31;
  v54 = v31;
  v61 = v33;
  v55 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v53 - v37;
  v59 = v21;
  v39 = *(v21 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v43 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_32_36();
  v46 = OUTLINED_FUNCTION_10(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_32();
  OUTLINED_FUNCTION_25_0();
  (*(v43 + 16))(v22, v32, v41);
  OUTLINED_FUNCTION_90();
  sub_18F35E9D8(v39, v47);
  v48 = v57;
  sub_18F116908(v57, v38, &qword_1EACCF7A0, &unk_18F53E6F0);
  v49 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a17, v49);
  v62[3] = v29;
  v62[4] = v58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  v51 = *(v29 - 8);
  v52 = v60;
  (*(v51 + 16))(boxed_opaque_existential_1, v60, v29);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v51 + 8))(v52, v29);
  sub_18F0EF148(v48, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v43 + 8))(v54, v41);
  sub_18F0EF148(v61, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_26_39(v26, v27, v28, v29, v30, &a16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v57 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v35);
  v36 = *(v20 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30_32();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  v49 = v48 - v47;

  sub_18F116908(v23, v21, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v21, 1, v43);
  if (v50)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v21, 1, v43);
    if (!v50)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v45 + 32))(v49, v21, v43);
  }

  (*(v39 + 16))(v22, v59, v55);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_25_34(v36, v51);
  sub_18F116908(v58, v56, &qword_1EACCF7A0, &unk_18F53E6F0);
  v52 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v57, v53, v54, v52);
  sub_18F116B3C();
  OUTLINED_FUNCTION_30_2(v58);
  (*(v39 + 8))(v59, v55);
  OUTLINED_FUNCTION_30_2(v60);
  OUTLINED_FUNCTION_30_2(v23);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v83 = v23;
  v86 = v24;
  v84 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v31);
  v32 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v88 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  v90 = v36 - v35;
  OUTLINED_FUNCTION_27_37();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v37 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v41 = OUTLINED_FUNCTION_51(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_21_1();
  v89 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v47);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v49 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4();
  v55 = v54 - v53;

  sub_18F116908(v27, v20, &qword_1EACCF7A8, &qword_18F540440);
  v56 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_106(v56, v57, v49);
  v85 = v27;
  if (v58)
  {
    OUTLINED_FUNCTION_25_0();
    v59 = OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_106(v59, v60, v49);
    if (!v58)
    {
      sub_18F0EF148(v20, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v51 + 32))(v55, v20, v49);
  }

  v61 = *(v86 + 16);
  if (v61)
  {
    OUTLINED_FUNCTION_8_54();
    v64 = v62 + v63;
    v66 = *(v65 + 72);
    v67 = MEMORY[0x1E69E7CC0];
    v68 = &qword_1EACD0360;
    v87 = v32;
    do
    {
      sub_18F116908(v64, v89, v68, &qword_18F5407D0);
      sub_18F178778(v89, v44);
      OUTLINED_FUNCTION_106(v44, 1, v32);
      if (v58)
      {
        sub_18F0EF148(v44, v68, &qword_18F5407D0);
      }

      else
      {
        v69 = v68;
        v70 = *(v88 + 32);
        OUTLINED_FUNCTION_46_20();
        v70();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18_30();
          sub_18F167ED8();
          v67 = v77;
        }

        v73 = *(v67 + 16);
        v72 = *(v67 + 24);
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_52_15(v72);
          sub_18F167ED8();
          v67 = v78;
        }

        *(v67 + 16) = v73 + 1;
        OUTLINED_FUNCTION_8_54();
        v76 = v67 + v74 + *(v75 + 72) * v73;
        v32 = v87;
        (v70)(v76, v90, v87);
        v68 = v69;
      }

      v64 += v66;
      --v61;
    }

    while (v61);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810, &unk_18F549080);
  OUTLINED_FUNCTION_41_20();
  v79 = OUTLINED_FUNCTION_34_27();
  OUTLINED_FUNCTION_53_0(v81, v79 ^ 1u);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_48_18(v83, v82);
  v80 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a11, v80);
  OUTLINED_FUNCTION_14_40();
  OUTLINED_FUNCTION_51_12();
  sub_18F116B3C();
  OUTLINED_FUNCTION_30_2(v83);
  OUTLINED_FUNCTION_30_2(v84);
  OUTLINED_FUNCTION_30_2(v85);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v75 = v28;
  OUTLINED_FUNCTION_26_39(v29, v30, v31, v32, v33, &a15);
  v71 = a24;
  OUTLINED_FUNCTION_23_35(a23);
  OUTLINED_FUNCTION_61_0(v34);
  v69 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v39);
  v41 = *(v24 + 80);
  v40 = *(v24 + 88);
  v74 = v24;
  v67[1] = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v67 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v67 - v50;
  v52 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_4();
  v58 = v57 - v56;

  v79 = v25;
  sub_18F116908(v25, v51, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v51, 1, v52);
  if (v59)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v51, 1, v52);
    if (!v59)
    {
      sub_18F0EF148(v51, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v54 + 32))(v58, v51, v52);
  }

  v60 = v47;
  v61 = v77;
  v62 = v68;
  (*(v44 + 16))(v60, v77, v68);
  OUTLINED_FUNCTION_22_0(&a13);
  v70();
  sub_18F35E9D8(v41, &v80);
  v63 = v76;
  sub_18F116908(v76, v72, &qword_1EACCF7A0, &unk_18F53E6F0);
  v64 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v73, v65, v66, v64);
  sub_18F116B3C();

  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v44 + 8))(v61, v62);
  OUTLINED_FUNCTION_30_2(v78);
  OUTLINED_FUNCTION_30_2(v79);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v72 = v27;
  v71 = v28;
  v73 = v30;
  v74 = v29;
  v75 = v31;
  v76 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_23_35(a23);
  OUTLINED_FUNCTION_61_0(v35);
  v68 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v40);
  v42 = *(v23 + 80);
  v41 = *(v23 + 88);
  v70 = v23;
  v67 = v41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v46 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v67 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v50);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_4();
  v77 = v57 - v56;

  v76 = v34;
  sub_18F116908(v34, v24, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v24, 1, v52);
  if (v58)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v24, 1, v52);
    if (!v58)
    {
      sub_18F0EF148(v24, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v54 + 32))(v77, v24, v52);
  }

  v59 = v74;
  (*(v46 + 16))(v49, v74, v44);
  OUTLINED_FUNCTION_90();
  sub_18F35E9D8(v42, v60);
  v61 = v73;
  sub_18F116908(v73, v69, &qword_1EACCF7A0, &unk_18F53E6F0);
  v62 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a16, v62);
  v63 = v72;
  v78[3] = v72;
  v78[4] = v68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
  v65 = *(v63 - 8);
  v66 = v71;
  (*(v65 + 16))(boxed_opaque_existential_1, v71, v63);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v65 + 8))(v66, v63);
  sub_18F0EF148(v61, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v46 + 8))(v59, v44);
  OUTLINED_FUNCTION_30_2(v75);
  OUTLINED_FUNCTION_30_2(v76);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_18();
  a19 = v28;
  a20 = v29;
  v72 = v30;
  v79 = v32;
  v80 = v31;
  v81 = v33;
  v82 = v34;
  v84 = v35;
  v37 = v36;
  v73 = a27;
  v71[3] = a26;
  v75 = a25;
  v71[2] = a24;
  OUTLINED_FUNCTION_23_35(a23);
  OUTLINED_FUNCTION_61_0(v38);
  v74 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v41 = OUTLINED_FUNCTION_10(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v43);
  v45 = *(v27 + 80);
  v44 = *(v27 + 88);
  v78 = v27;
  v71[0] = v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v48 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v71 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v52);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v71 - v54;
  v56 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v58 = v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_4();
  v62 = v61 - v60;

  v82 = v37;
  sub_18F116908(v37, v55, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v55, 1, v56);
  if (v63)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v55, 1, v56);
    if (!v63)
    {
      sub_18F0EF148(v55, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v58 + 32))(v62, v55, v56);
  }

  (*(v48 + 16))(v51, v84, v83);
  v64 = OUTLINED_FUNCTION_22_0(&a9);
  v72(v64);
  sub_18F35E9D8(v45, &v86);
  v65 = v80;
  sub_18F116908(v80, v76, &qword_1EACCF7A0, &unk_18F53E6F0);
  v66 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a16, v66);
  v67 = v77;
  v85[3] = v77;
  v85[4] = v75;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  v69 = *(v67 - 8);
  v70 = v79;
  (*(v69 + 16))(boxed_opaque_existential_1, v79, v67);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v69 + 8))(v70, v67);
  sub_18F0EF148(v65, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v48 + 8))(v84, v83);
  OUTLINED_FUNCTION_30_2(v81);
  OUTLINED_FUNCTION_30_2(v82);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

id PerformActionExecutorDelegateProxy.init(connection:interface:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___LNPerformActionExecutorDelegateProxy_interface] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PerformActionExecutorDelegateProxy();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t sub_18F38924C()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B3F4(v3, v4, v5);
}

void (*sub_18F3892E8(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D738;
}

void sub_18F389350(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_194;
  v6 = _Block_copy(v7);

  [a4 requestActionConfirmation:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F389418(uint64_t a1))()
{
  v1 = sub_18F3892E8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F389490(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F38924C();
}

uint64_t sub_18F389554()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B5D4(v3, v4, v5);
}

void (*sub_18F3895F0(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D5E0;
}

void sub_18F389658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_179;
  v6 = _Block_copy(v7);

  [a4 requestParameterConfirmation:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F389720(uint64_t a1))()
{
  v1 = sub_18F3895F0(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F389798(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F389554();
}

uint64_t sub_18F38985C()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B6B4(v3, v4, v5);
}

void (*sub_18F3898F8(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D598;
}

void sub_18F389960(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_164;
  v6 = _Block_copy(v7);

  [a4 requestParameterDisambiguation:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F389A28(uint64_t a1))()
{
  v1 = sub_18F3898F8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F389AA0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F38985C();
}

uint64_t sub_18F389B64()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B794(v3, v4, v5);
}

void (*sub_18F389C00(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D550;
}

void sub_18F389C68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_149;
  v6 = _Block_copy(v7);

  [a4 requestParameterNeedsValue:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F389D30(uint64_t a1))()
{
  v1 = sub_18F389C00(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F389DA8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F389B64();
}

uint64_t sub_18F389E6C()
{
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F389E98()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BB0, &qword_18F54D848);
  *v3 = v0;
  v3[1] = sub_18F389F98;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DDE0](v4);
}

uint64_t sub_18F389F98()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F38A09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BC8, &qword_18F55E160);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = sub_18F38C1E0();
  if (v6)
  {
    v7 = v6;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v5, v2);
    aBlock[4] = sub_18F38D460;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18F38A2CC;
    aBlock[3] = &block_descriptor_134;
    v10 = _Block_copy(aBlock);

    [v7 requestViewSnippetEnvironmentWithCompletion_];
    _Block_release(v10);
    return swift_unknownObjectRelease();
  }

  else
  {
    aBlock[0] = 0;
    return sub_18F521E3C();
  }
}

uint64_t sub_18F38A27C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BC8, &qword_18F55E160);
  return sub_18F521E3C();
}

void sub_18F38A2CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_18F38A3B4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_18F38A45C;

  return sub_18F389E6C();
}

uint64_t sub_18F38A45C()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  v4[2](v4, v2);
  _Block_release(v4);
  swift_unknownObjectRelease();
  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_18F38A59C()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B87C(v3, v4, v5);
}

void (*sub_18F38A638(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D458;
}

void sub_18F38A6A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_128;
  v6 = _Block_copy(v7);

  [a4 requestChoice:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F38A768(uint64_t a1))()
{
  v1 = sub_18F38A638(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D42C;
}

uint64_t sub_18F38A7E0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F38A59C();
}

uint64_t sub_18F38A8A4()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F130C90;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38B95C(v3, v4, v5);
}

void (*sub_18F38A940(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D3E4;
}

void sub_18F38A9A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_113;
  v6 = _Block_copy(v7);

  [a4 requestContinueInApp:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t (*sub_18F38AA70(uint64_t a1))()
{
  v1 = sub_18F38A940(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F38AAE8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F378190;

  return sub_18F38A8A4();
}

uint64_t sub_18F38ABAC()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F18C9E0;
  v3 = OUTLINED_FUNCTION_5_64();

  return sub_18F38BBB8(v3, v4, v5);
}

void (*sub_18F38AC48(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_18F38D39C;
}

void sub_18F38ACB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18F38D7A8;
  v7[3] = &block_descriptor_98;
  v6 = _Block_copy(v7);

  [a4 requestOpenURL:a1 completionHandler:v6];
  _Block_release(v6);
}

void sub_18F38AD78(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t (*sub_18F38AE04(uint64_t a1))()
{
  v1 = sub_18F38AC48(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_18F38D768;
}

uint64_t sub_18F38AE7C(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  swift_unknownObjectRetain();
  v9 = a1;

  return sub_18F10B344();
}

uint64_t sub_18F38AF04(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_18F38D770;

  return sub_18F38ABAC();
}

uint64_t sub_18F38B058(uint64_t a1, uint64_t a2, SEL *a3)
{
  v15 = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = *(v3 + OBJC_IVAR___LNPerformActionExecutorDelegateProxy_interface);
  v8 = 0;
  if ([v7 respondsToSelector_])
  {
    v14[4] = a1;
    v14[5] = v6;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_18F38D7A4;
    v14[3] = a2;
    v9 = _Block_copy(v14);
    swift_unknownObjectRetain();
    swift_retain_n();
    v10 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v9);
    sub_18F52261C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD7BB8, &qword_18F55E0C8);
    if (swift_dynamicCast())
    {
      v8 = v14[0];
    }

    else
    {
      v8 = 0;
    }
  }

  swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {
    swift_willThrow();
    v12 = v11;

    return swift_unknownObjectRelease();
  }

  else if (v8)
  {
    [v8 *v15];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_18F38B27C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id sub_18F38B334()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result hash];

    return v2;
  }

  return result;
}

BOOL sub_18F38B3B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t sub_18F38B3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B418, 0, 0);
}

uint64_t sub_18F38B418()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38B4D4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F38B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B5F8, 0, 0);
}

uint64_t sub_18F38B5F8()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38B6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B6D8, 0, 0);
}

uint64_t sub_18F38B6D8()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38B794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B7B8, 0, 0);
}

uint64_t sub_18F38B7B8()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38B87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B8A0, 0, 0);
}

uint64_t sub_18F38B8A0()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38B980, 0, 0);
}

uint64_t sub_18F38B980()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38BA3C;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38BA3C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F38BB58()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F38BBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38BBDC, 0, 0);
}

uint64_t sub_18F38BBDC()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_2_85(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_56(v1);
  *v2 = v3;
  v2[1] = sub_18F38B4D4;
  v4 = OUTLINED_FUNCTION_0_108();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_18F38BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v24[1] = a7;
  v25 = a8;
  v24[0] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_21_36();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v15 = sub_18F38BF90();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v26 = v17;
      v18 = (v24[0])(v16);
      (*(v11 + 16))(v14, a1, v9);
      v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v19, v14, v9);
      v18(&v26, v25, v20);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_18F133EDC();
  v22 = swift_allocError();
  *v23 = 1;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 7;
  v26 = v22;
  return sub_18F521E2C();
}

uint64_t sub_18F38BEC4(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);
    return sub_18F521E3C();
  }

  else
  {
    if (!a2)
    {
      sub_18F133EDC();
      swift_allocError();
      *v4 = 1;
      *(v4 + 8) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 40) = 7;
    }

    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);
    return sub_18F521E2C();
  }
}

uint64_t sub_18F38BF90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_21_36();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_20_35();
  v3(v2);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_22_36(v4);
  v6(v5);
  OUTLINED_FUNCTION_12_52();
  OUTLINED_FUNCTION_13_45(COERCE_DOUBLE(1107296256));
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_44;
  v8 = _Block_copy(aBlock);

  v9 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_18F52261C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD7BB8, &qword_18F55E0C8);
  v10 = OUTLINED_FUNCTION_25_35();
  return OUTLINED_FUNCTION_24_39(v10);
}

uint64_t sub_18F38C128(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);
  return sub_18F521E2C();
}

void sub_18F38C178(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_18F38C1E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BC8, &qword_18F55E160);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_21_36();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_20_35();
  v3(v2);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_22_36(v4);
  v6(v5);
  OUTLINED_FUNCTION_12_52();
  OUTLINED_FUNCTION_13_45(COERCE_DOUBLE(1107296256));
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_38_0;
  v8 = _Block_copy(aBlock);

  v9 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_18F52261C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD7BB8, &qword_18F55E0C8);
  v10 = OUTLINED_FUNCTION_25_35();
  return OUTLINED_FUNCTION_24_39(v10);
}

id PerformActionExecutorDelegateProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PerformActionExecutorDelegateProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformActionExecutorDelegateProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestActionConfirmation(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestParameterConfirmation(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestParameterDisambiguation(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestParameterNeedsValue(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestViewSnippetEnvironment()()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_43();
  v5 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  v2[1] = sub_18F2D0A8C;

  return v5();
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestChoice(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestContinueInApp(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PerformActionExecutorDelegateProxy.requestOpenURL(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_15_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_69(v1);

  return v4(v3);
}

uint64_t sub_18F38CEC4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38CF54()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38CFE4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38D074()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_1(v3);
  *v4 = v5;
  v4[1] = sub_18F38D774;

  return sub_18F38A3B4(v1, v2);
}

uint64_t sub_18F38D118()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38D1A8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38D238()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38D2C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_19(v1);

  return v4(v3);
}

uint64_t sub_18F38D488(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_34Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_18F38D6AC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BD0, &qword_18F55E168);

  return sub_18F38BEC4(a1, a2);
}

uint64_t AppContext.fetchActionOutputValue(connection:identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F38D7D4, 0, 0);
}

uint64_t sub_18F38D7D4()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  sub_18F52245C();
  v1 = sub_18F3E7858();

  if (v1)
  {
    sub_18F19E728(v1, v0 + 72);

    if (*(v0 + 72))
    {
      v2 = *(v0 + 104);
      *(v0 + 64) = *(v0 + 120);
      v3 = *(v0 + 88);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 32) = v3;
      *(v0 + 48) = v2;
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      *(v0 + 144) = v4;
      __swift_project_boxed_opaque_existential_1Tm((v0 + 32), v4);
      v6 = (*(v5 + 40))(v4, v5);
      *(v0 + 152) = v7;
      *(v0 + 160) = *(v5 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 168) = AssociatedTypeWitness;
      *(v0 + 176) = *(AssociatedTypeWitness - 8);
      *(v0 + 184) = swift_task_alloc();
      v9 = swift_task_alloc();
      *(v0 + 192) = v9;
      v14 = (v6 + *v6);
      v10 = swift_task_alloc();
      *(v0 + 200) = v10;
      *v10 = v0;
      v10[1] = sub_18F38DACC;

      return v14(v9);
    }
  }

  else
  {
    *(v0 + 120) = 0;
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
  }

  sub_18F0EF148(v0 + 72, &qword_1EACD7BD8, &qword_18F55E1F8);
  sub_18F133EDC();
  swift_allocError();
  *v12 = 9;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 7;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_18F38DACC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v1;
  v3[26] = v0;

  v5 = v2[24];
  if (v0)
  {

    v6 = sub_18F38DD14;
  }

  else
  {
    v8 = v3[22];
    v7 = v3[23];
    v9 = v3[21];

    (*(v8 + 32))(v7, v5, v9);

    v6 = sub_18F38DC40;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F38DC40()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  swift_getAssociatedConformanceWitness();
  v4 = sub_18F142A38(v3);
  (*(v2 + 8))(v1, v3);

  sub_18F0EF148((v0 + 2), &qword_1EACD07E8, &unk_18F550A40);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_18F38DD14()
{

  sub_18F0EF148(v0 + 16, &qword_1EACD07E8, &unk_18F550A40);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F38DE28(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = sub_18F520E6C();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[6] = v9;
  v4[7] = _Block_copy(a3);
  sub_18F520E4C();
  v10 = a1;
  v11 = a4;
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_18F38DF68;

  return AppContext.fetchActionOutputValue(connection:identifier:)(v10, v9);
}

uint64_t sub_18F38DF68(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[7];
  v10 = v5[3];
  v11 = v5[2];
  (*(v5[5] + 8))(v5[6], v5[4]);

  if (v3)
  {
    v12 = sub_18F520A7C();

    (v9)[2](v9, 0, v12);
    _Block_release(v9);
  }

  else
  {
    v9[2](v9, a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v13 = v8[1];

  return v13();
}

uint64_t sub_18F38E174()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F224D20;

  return sub_18F38DE28(v2, v3, v5, v4);
}

uint64_t URLFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F38E260, 0, 0);
}

uint64_t sub_18F38E260()
{
  sub_18F520C6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F38E30C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18F10DF80;

  return URLFromStringResolver.resolve(from:context:)(a1, v4, v5);
}

id static URL.valueType.getter()
{
  v0 = [objc_opt_self() URLValueType];

  return v0;
}

uint64_t URL.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F520BAC();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for DisplayRepresentation(0);
  v18 = v17[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  v22 = v17[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  *(a1 + v17[7]) = xmmword_18F540410;
  *(a1 + v17[8]) = 0;
  *(a1 + v17[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  sub_18F0FF628(v7, a1 + v18, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0FF628(v4, a1 + v22, &qword_1EACD0270, &unk_18F5407C0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
}

unint64_t sub_18F38E698(uint64_t a1)
{
  result = sub_18F38E6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F38E6C0()
{
  result = qword_1EACCEA50;
  if (!qword_1EACCEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEA50);
  }

  return result;
}

unint64_t sub_18F38E718()
{
  result = qword_1EACCEA48;
  if (!qword_1EACCEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEA48);
  }

  return result;
}

uint64_t sub_18F38E76C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BE8, &qword_18F55E378);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F38E9F8();
  sub_18F522FEC();
  sub_18F522BFC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18F38E8B8(uint64_t a1)
{
  v2 = sub_18F38E9F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F38E8F4(uint64_t a1)
{
  v2 = sub_18F38E9F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F38E94C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F38E234(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_18F38E984()
{
  result = qword_1EACCE918;
  if (!qword_1EACCE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7BE0, &qword_18F55E318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE918);
  }

  return result;
}

unint64_t sub_18F38E9F8()
{
  result = qword_1EACD7BF0;
  if (!qword_1EACD7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7BF0);
  }

  return result;
}

_BYTE *sub_18F38EA4C(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F38EAFC()
{
  result = qword_1EACD7BF8;
  if (!qword_1EACD7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7BF8);
  }

  return result;
}

unint64_t sub_18F38EB54()
{
  result = qword_1EACD7C00;
  if (!qword_1EACD7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7C00);
  }

  return result;
}

unint64_t sub_18F38EBAC()
{
  result = qword_1EACD7C08;
  if (!qword_1EACD7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7C08);
  }

  return result;
}

uint64_t _AssistantIntent.PhraseToken.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t _AssistantIntent.Phrase.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  a4[1] = a1;
  a4[2] = a2;
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  return result;
}

double _AssistantIntent.Phrase.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  _AssistantIntent.Phrase.init(_:)(a1, a2, &v7);
  result = *&v7;
  v6 = v8;
  *a4 = v7;
  *(a4 + 16) = v6;
  return result;
}

__n128 _AssistantIntent.Phrase.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  a4[1] = 0;
  a4[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_80(a1, a2);
  sub_18F521D7C();
  v4 = sub_18F522C9C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  swift_allocObject();
  v5 = sub_18F521CDC();
  *v6 = v2;
  sub_18F129FD4(v5, v3);

  sub_18F521D5C();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_80(a1, a2);
  sub_18F521D7C();
  v4 = sub_18F522C9C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  swift_allocObject();
  v5 = sub_18F521CDC();
  *v6 = v2;
  sub_18F129FD4(v5, v3);

  sub_18F521D5C();
}

unint64_t sub_18F39173C()
{
  result = qword_1EACD7C10[0];
  if (!qword_1EACD7C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD7C10);
  }

  return result;
}

_BYTE *_s11PhraseTokenOwst(_BYTE *result, int a2, int a3)
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

void IntentParameter<>.init(title:description:default:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v35 = v1;
  v36 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  v34 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  v31 = v14;
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v32 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v24 = OUTLINED_FUNCTION_6_65(v23);
  v25(v24, v7);
  (*(v16 + 16))(v19, v5, v14);
  sub_18F174310(v3);

  OUTLINED_FUNCTION_2_0();
  v26 = v35;
  sub_18F15F1BC(v35, v13);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  sub_18F0EF148(v26, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v16 + 8))(v5, v31);
  sub_18F0EF148(v36, &qword_1EACCF7A8, &qword_18F540440);
  (*(v21 + 8))(v33, v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v61 = v23;
  v62 = v22;
  v57 = v24;
  v26 = v25;
  v54 = v25;
  v63 = v27;
  v29 = v28;
  v55 = v28;
  v59 = a22;
  v58 = a21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v60 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  v56 = &v52 - v34;
  swift_getAssociatedTypeWitness();
  v35 = sub_18F52254C();
  v53 = v35;
  OUTLINED_FUNCTION_11_0();
  v37 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v52 - v39;
  v41 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  (*(v43 + 16))(v46 - v45, v29, v41);
  (*(v37 + 16))(v40, v26, v35);
  sub_18F174310(v57);

  v67[3] = v58;
  v67[4] = v59;
  __swift_allocate_boxed_opaque_existential_1(v67);
  v61();
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v47 = v62;
  sub_18F15F1BC(v62, v56);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();

  sub_18F0EF148(v47, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v37 + 8))(v54, v53);
  sub_18F0EF148(v63, &qword_1EACCF7A8, &qword_18F540440);
  (*(v43 + 8))(v55, v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v41 = v3;
  v42 = v2;
  v5 = v4;
  v7 = v6;
  v43 = v8;
  v10 = v9;
  v40 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v38[1] = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v39 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v24 = OUTLINED_FUNCTION_6_65(v23);
  v25(v24, v10);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, AssociatedTypeWitness);
  v38[0] = sub_18F174310(v7);

  OUTLINED_FUNCTION_2_0();
  sub_18F15F1BC(v5, v16);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v41;
  v44[3] = v41;
  v44[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v35 = v33;
  v36 = *(v33 - 8);
  v37 = v42;
  (*(v36 + 16))(boxed_opaque_existential_1, v42, v35);
  sub_18F116B3C();
  (*(v36 + 8))(v37, v35);
  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v43, &qword_1EACCF7A8, &qword_18F540440);
  (*(v21 + 8))(v40, v39);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  v59[0] = v24;
  v65 = v26;
  v66 = v25;
  v68 = v28;
  v69 = v27;
  v30 = v29;
  v32 = v31;
  v64 = v31;
  v67 = a24;
  v62 = a23;
  v61 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  v63 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  v60 = v59 - v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  v41 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  (*(v43 + 16))(v46 - v45, v32, v41);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, AssociatedTypeWitness);
  v59[1] = sub_18F174310(v30);

  v74[3] = v61;
  v74[4] = v62;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  v65(boxed_opaque_existential_1);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v51 = v66;
  sub_18F15F1BC(v66, v60);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v70[3] = a22;
  v70[4] = v67;
  v56 = __swift_allocate_boxed_opaque_existential_1(v70);
  v57 = *(a22 - 8);
  v58 = v68;
  (*(v57 + 16))(v56, v68, a22);
  sub_18F116B3C();

  (*(v57 + 8))(v58, a22);
  sub_18F0EF148(v51, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v69, &qword_1EACCF7A8, &qword_18F540440);
  (*(v43 + 8))(v64, v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

double static _IntentTarget.main.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18F540420;
  return result;
}

uint64_t static _IntentTarget.bundleIdentifier(_:conditions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t _IntentTarget.Condition.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t sub_18F392594(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_18F522D5C();
  }

  return 1;
}

uint64_t sub_18F3925E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x193ADC4F0](v3, a2);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x193ADC4F0](v3, a2);
  }

  MEMORY[0x193ADC4F0](2);

  return sub_18F5219CC();
}

uint64_t sub_18F392660(uint64_t a1, uint64_t a2)
{
  sub_18F522EFC();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x193ADC4F0](2);
      sub_18F5219CC();
      return sub_18F522F4C();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x193ADC4F0](v3);
  return sub_18F522F4C();
}

uint64_t sub_18F392724(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18F522EFC();
  sub_18F3925E0(v5, v2, v3);
  return sub_18F522F4C();
}

BOOL static _IntentTarget.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 != 1)
  {
    if (v4 >= 2)
    {
      v6 = *a1 == *a2 && v3 == v4;
      if (v6 || (sub_18F522D5C() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4 == 1;
}

uint64_t _IntentTarget.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x193ADC4F0](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x193ADC4F0](v3);
  }

  MEMORY[0x193ADC4F0](2);

  return sub_18F5219CC();
}

uint64_t _IntentTarget.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_18F522EFC();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x193ADC4F0](2);
      sub_18F5219CC();
      return sub_18F522F4C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x193ADC4F0](v2);
  return sub_18F522F4C();
}

uint64_t sub_18F392908(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18F522EFC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x193ADC4F0](2);
      sub_18F5219CC();
      return sub_18F522F4C();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x193ADC4F0](v3);
  return sub_18F522F4C();
}

uint64_t static Array<A>.bundleIdentifier(_:conditions:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7D18, &qword_18F55E6E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

unint64_t sub_18F392A10()
{
  result = qword_1EACD7D20;
  if (!qword_1EACD7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7D20);
  }

  return result;
}

unint64_t sub_18F392A68()
{
  result = qword_1EACD7D28;
  if (!qword_1EACD7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7D28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents13_IntentTargetV7Storage33_4D35A13FE7DD015C087DE42555C29BF9LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F392AD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
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

uint64_t sub_18F392B28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_18F392BA8(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F392C68()
{
  result = qword_1EACD7D30;
  if (!qword_1EACD7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7D30);
  }

  return result;
}

unint64_t sub_18F392CC0()
{
  result = qword_1EACD7D38;
  if (!qword_1EACD7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7D38);
  }

  return result;
}

uint64_t sub_18F392D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a3;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  return sub_18F39373C(v9);
}

uint64_t sub_18F392DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    v3 = sub_18F39373C(v5);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v3;
}

uint64_t sub_18F392E38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v7 + 16))(v6 - v5, v2, a1);
  return sub_18F521BBC();
}

uint64_t sub_18F392F40(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v15;
  v41 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v38 - v18;
  v19 = sub_18F52254C();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v38 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v52 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v31 = &v38 - v30;
  v32 = sub_18F521B2C();
  v59 = sub_18F52290C();
  v54 = sub_18F52291C();
  sub_18F5228BC();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_18F521B1C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_18F52257C();
      result = __swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v25, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v25, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v25, AssociatedTypeWitness);
      sub_18F5228FC();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_18F52257C();
    if (__swift_getEnumTagSinglePayload(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v22, v40);
      return v59;
    }

    (*v35)(v37, v22, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_18F5228FC();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void sub_18F3935AC()
{
  OUTLINED_FUNCTION_18();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_11_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v12 + 16))(v10, v8);
  v16 = *(v12 + 32);
  v16(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v4);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v6;
  *(v18 + 3) = v4;
  v19 = v22;
  *(v18 + 4) = v2;
  *(v18 + 5) = v19;
  v16(v18 + v17, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v20 = (v10 + *(type metadata accessor for _ResolverSpecification(0, v6, v4, v2) + 44));
  *v20 = sub_18F1D63B8;
  v20[1] = v18;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F39373C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_18F393784(a1);
  sub_18F3953E4(a1);
  return v3;
}

uint64_t sub_18F393784(uint64_t a1)
{
  sub_18F39546C(a1, &v16);
  if (!v17)
  {
    return sub_18F3953E4(&v16);
  }

  sub_18F0FF968(&v16, v19);
  sub_18F0FD724(v19, &v16);
  sub_18F166F84();
  v2 = *(*v1 + 16);
  sub_18F16703C(v2, v3, v4, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v8 = v17;
  v9 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(&v16, v17);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  sub_18F394D38(v2, v13, v1, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
}

uint64_t sub_18F3938B8()
{
  v0 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F25D8DC(v0);
}

uint64_t sub_18F3938E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InternalResolverSpecificationBuilder.ResolverAccumulator(0, a3, a4, a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_70();
  v12 = sub_18F392F40(v4, v5, v6, v7, v8, v9, v10, v11);
  sub_18F1A59D8(v12);
  OUTLINED_FUNCTION_4_70();
  v21 = sub_18F392F40(v13, v14, v15, v16, v17, v18, v19, v20);
  v22 = sub_18F1A59D8(v21);
  v23 = OUTLINED_FUNCTION_9_51(v22);

  return v23 & 1;
}

uint64_t sub_18F3939F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v25 = result + 56;
  v26 = result;
  v24 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_13:
    sub_18F1A7FEC(*(result + 48) + 40 * (v10 | (v3 << 6)), v37);
    v34 = v37[0];
    v35 = v37[1];
    v36 = v38;
    sub_18F522EFC();
    sub_18F0FD724(&v34, v30);
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x193ADC4F0](DynamicType);
    __swift_project_boxed_opaque_existential_1Tm(&v34, *(&v35 + 1));
    sub_18F52178C();
    v14 = sub_18F522F4C();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_23:
      sub_18F1A8048(&v34);
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      sub_18F1A7FEC(*(a2 + 48) + 40 * v16, v30);
      sub_18F0FD724(v30, v32);
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v18 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      sub_18F0FD724(&v34, v32);
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v19 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      if (v18 == v19)
      {
        break;
      }

      sub_18F1A8048(v30);
LABEL_18:
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_18F522EFC();
    sub_18F0FD724(v30, v28);
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v20 = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x193ADC4F0](v20);
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    sub_18F52178C();
    v21 = sub_18F522F4C();
    sub_18F522EFC();
    sub_18F0FD724(&v34, v28);
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v22 = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x193ADC4F0](v22);
    __swift_project_boxed_opaque_existential_1Tm(&v34, *(&v35 + 1));
    sub_18F52178C();
    v23 = sub_18F522F4C();
    sub_18F1A8048(v30);
    if (v21 != v23)
    {
      goto LABEL_18;
    }

    sub_18F1A8048(&v34);
    v4 = v25;
    result = v26;
    v8 = v24;
    v7 = v27;
  }

  while (v27);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F393DA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 32;
    do
    {
      sub_18F0FD724(v3, v14);
      v4 = __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
      OUTLINED_FUNCTION_6_66(v4, v5, v6, v7, v8, v9);
      sub_18F0FD724(v13, v12);
      v10 = OUTLINED_FUNCTION_13_8(v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x193ADC4F0](v10);
      __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
      sub_18F52178C();
      sub_18F1A8048(v13);
      v11 = __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return v11;
}

uint64_t sub_18F393E78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F393E80()
{
  v0 = OUTLINED_FUNCTION_8_51();
  v8 = OUTLINED_FUNCTION_13_46(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_18F393DA4(v8, v9);
  return sub_18F522F4C();
}

uint64_t sub_18F393EC8(uint64_t a1)
{
  sub_18F522EFC();
  sub_18F393DA4(v3, *v1);
  return sub_18F522F4C();
}

uint64_t sub_18F393F08@<X0>(void *a1@<X8>)
{
  sub_18F393E78(*v1, a1);
}

uint64_t sub_18F394008(uint64_t a1, uint64_t a2)
{
  v17 = sub_18F1D5DCC(a2);
  v18 = v2;
  v19 = v3;
  while (1)
  {
    sub_18F3940F8(&v15);
    if (!v16)
    {
      break;
    }

    sub_18F0FF968(&v15, v14);
    v4 = __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
    OUTLINED_FUNCTION_6_66(v4, v5, v6, v7, v8, v9);
    sub_18F0FD724(v13, v12);
    v10 = OUTLINED_FUNCTION_13_8(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x193ADC4F0](v10);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    sub_18F52178C();
    sub_18F1A8048(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_18F3940F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1[1])(v16, *v1);
  if (v16[3])
  {
    v12 = OUTLINED_FUNCTION_13_46(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16[0]);
    result = sub_18F0FF968(v12, v13);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      *v1 = v3 + 1;
    }
  }

  else
  {
    result = sub_18F3953E4(v16);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F39417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ResolverSpecification(0, a3, a4, a5);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_2_86();
  v13 = sub_18F392F40(v5, v6, v7, v8, v9, v10, v11, v12);
  sub_18F1A59D8(v13);
  v14 = OUTLINED_FUNCTION_2_86();
  v22 = sub_18F392F40(v14, v15, v16, v17, v18, v19, v20, v21);
  v23 = sub_18F1A59D8(v22);
  v24 = OUTLINED_FUNCTION_9_51(v23);

  return v24 & 1;
}

uint64_t sub_18F394278()
{
  v0 = OUTLINED_FUNCTION_8_51();
  v8 = OUTLINED_FUNCTION_13_46(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_18F394008(v8, v9);
  return sub_18F522F4C();
}

BOOL sub_18F3942E4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = sub_18F410C04(v3, v4);
  return v5 == swift_getAssociatedTypeWitness();
}

void static ResolverSpecificationBuilder.buildBlock<A>(_:)()
{
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v2 - v1);
  sub_18F3935AC();
}

void ResolverSpecificationBuilder.Specification.hash(into:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v30 = v0;
  v3 = *(v1 + 16);
  if (v3 != 1)
  {
    MEMORY[0x1EEE9AC00](v0);
    OUTLINED_FUNCTION_0_109();
    while (v3 != v5)
    {
      OUTLINED_FUNCTION_5_65(v4, v5);
    }

    OUTLINED_FUNCTION_7_57(0, v3, v4);
  }

  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v27 = v11;
  v28 = v10;
  v12 = *(v11 + 16);
  v31 = v9;
  v12();
  if (v3)
  {
    v13 = (*(v2 + 40) & 0xFFFFFFFFFFFFFFFELL);
    v14 = (*(v2 + 64) & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v28 + 32);
    v16 = v3;
    v29 = v3;
    do
    {
      v32 = &v27;
      v17 = *v13;
      v18 = *v14;
      OUTLINED_FUNCTION_11_0();
      v20 = v19;
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_4();
      v24 = v23 - v22;
      if (v3 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v15;
      }

      (*(v20 + 16))(v24, v31 + v25, v17);
      sub_18F29E4F8(v17, v18, v34);
      sub_18F0FD724(v34, v33);
      v26 = OUTLINED_FUNCTION_13_8(v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x193ADC4F0](v26);
      __swift_project_boxed_opaque_existential_1Tm(v34, v34[3]);
      sub_18F52178C();
      (*(v20 + 8))(v24, v17);
      sub_18F1A8048(v34);
      v15 += 4;
      ++v14;
      ++v13;
      --v16;
      v3 = v29;
    }

    while (v16);
  }

  (*(v27 + 8))(v31, v28);
  OUTLINED_FUNCTION_16();
}

uint64_t static ResolverSpecificationBuilder.Specification.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[0] = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  v30[4] = a7;
  v30[5] = a8;
  v30[6] = a9;
  type metadata accessor for ResolverSpecificationBuilder.Specification(0, v30);
  swift_getWitnessTable();
  v9 = OUTLINED_FUNCTION_2_86();
  v17 = sub_18F392F40(v9, v10, v11, v12, v13, v14, v15, v16);
  sub_18F1A59D8(v17);
  v18 = OUTLINED_FUNCTION_2_86();
  v26 = sub_18F392F40(v18, v19, v20, v21, v22, v23, v24, v25);
  v27 = sub_18F1A59D8(v26);
  v28 = OUTLINED_FUNCTION_9_51(v27);

  return v28 & 1;
}

uint64_t sub_18F3947F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return sub_18F29E4F8(v3, v4, a2);
}

void ResolverSpecificationBuilder.Specification.makeIterator()()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 == 1)
  {
    v3 = *(*(v0 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    OUTLINED_FUNCTION_0_109();
    while (v2 != v5)
    {
      OUTLINED_FUNCTION_5_65(v4, v5);
    }

    v3 = OUTLINED_FUNCTION_7_57(0, v2, v4);
  }

  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v38 = v10;
  v11 = *(v10 + 16);
  v41 = v9;
  v11();
  v39 = v3;
  if (v2)
  {
    v12 = (*(v1 + 40) & 0xFFFFFFFFFFFFFFFELL);
    v13 = (*(v1 + 64) & 0xFFFFFFFFFFFFFFFELL);
    v49 = MEMORY[0x1E69E7CC0];
    v14 = v2;
    v40 = v2;
    do
    {
      v45 = v13;
      v46 = v14;
      v44 = &v37;
      v48 = v12;
      v15 = *v12;
      v43 = *v13;
      OUTLINED_FUNCTION_11_0();
      v17 = v16;
      v19 = *(v18 + 64);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = &v37 - v22;
      v47 = v21;
      if (v2 == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v21;
      }

      v25 = v49;
      v26 = *(v17 + 16);
      v27 = v26(&v37 - v22, v41 + v24, v15);
      v42 = &v37;
      MEMORY[0x1EEE9AC00](v27);
      v28 = &v37 - v22;
      v26(v28, v23, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F167108();
        v25 = v35;
        v50 = v35;
      }

      v30 = *(v25 + 16);
      if (v30 >= *(v25 + 24) >> 1)
      {
        sub_18F167108();
        v49 = v36;
        v50 = v36;
      }

      else
      {
        v49 = v25;
      }

      v31 = v46;
      v32 = *(v17 + 8);
      v33 = v32(v23, v15);
      MEMORY[0x1EEE9AC00](v33);
      v34 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26(v34, v28, v15);
      sub_18F394D38(v30, v34, &v50, v15, v43);
      v32(v28, v15);
      v13 = v45 + 1;
      v12 = v48 + 1;
      v14 = v31 - 1;
      v2 = v40;
    }

    while (v14);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  (*(v38 + 8))(v41, v39);
  OUTLINED_FUNCTION_16();
}

uint64_t ResolverSpecificationBuilder.Specification.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_8_51();
  OUTLINED_FUNCTION_13_46(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ResolverSpecificationBuilder.Specification.hash(into:)();
  return sub_18F522F4C();
}

uint64_t sub_18F394C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  sub_18F522EFC();
  a4(v7, a2);
  return sub_18F522F4C();
}

uint64_t sub_18F394C94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ResolverSpecificationBuilder.Specification.makeIterator()();
  v6 = v5;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v6;
  a2[1] = 0;
  return result;
}

uint64_t sub_18F394D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_18F0FF968(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_18F394E5C()
{
  result = qword_1ED6FBF38;
  if (!qword_1ED6FBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD7D40, &qword_18F55EAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBF38);
  }

  return result;
}

_BYTE *sub_18F394F3C(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F395018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F39506C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_18F3951A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F395390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F3953E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7EC8, &qword_18F55EF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F39546C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7EC8, &qword_18F55EF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall IntentMessageConversation.init(messageConversationIdentifier:groupName:recipients:)(AppIntents::IntentMessageConversation *__return_ptr retstr, Swift::String messageConversationIdentifier, Swift::String_optional groupName, Swift::OpaquePointer_optional recipients)
{
  retstr->messageConversationIdentifier = messageConversationIdentifier;
  retstr->groupName = groupName;
  retstr->recipients.value._rawValue = recipients.value._rawValue;
}

uint64_t IntentMessageConversation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v82 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80 - v9;
  v11 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v83 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v29 = sub_18F52187C();
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  v31 = v1;
  if (!*(v1 + 24))
  {
    v52 = v10;
    v53 = *(v31 + 32);
    v51 = v20;
    v54 = v83;
    v55 = v16;
    v81 = v16;
    if (v53)
    {
      sub_18F33B834(v53, v52);
      v56 = type metadata accessor for IntentPerson(0);
      if (__swift_getEnumTagSinglePayload(v52, 1, v56) != 1)
      {
        v60 = v82;
        IntentPerson.displayRepresentation.getter();
        OUTLINED_FUNCTION_0_110();
        sub_18F396D78(v52, v61);
        (*(v54 + 16))(v25, v60, v11);
        sub_18F396D78(v60, type metadata accessor for DisplayRepresentation);
        __swift_storeEnumTagSinglePayload(v25, 0, 1, v11);
        (*(v54 + 32))(v55, v25, v11);
LABEL_9:
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v11);
        v65 = type metadata accessor for DisplayRepresentation.Image(0);
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
        v39 = a1 + v3[5];
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v11);
        v43 = a1 + v3[6];
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v65);
        OUTLINED_FUNCTION_8_52(v3[7], xmmword_18F540410);
        *(a1 + v75) = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v11);
        (*(v54 + 32))(a1, v81, v11);
        goto LABEL_10;
      }

      sub_18F0EF1A8(v52, &qword_1EACD0318, &qword_18F5583A0);
    }

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v11);
    sub_18F520ACC();
    if (__swift_getEnumTagSinglePayload(v25, 1, v11) != 1)
    {
      sub_18F0EF1A8(v25, &qword_1EACCF7A8, &qword_18F540440);
    }

    goto LABEL_9;
  }

  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v11);
  v35 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = a1 + v3[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v11);
  v43 = a1 + v3[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v35);
  OUTLINED_FUNCTION_8_52(v3[7], xmmword_18F540410);
  *(a1 + v47) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v11);
  v51 = v20;
LABEL_10:
  sub_18F0FF800(v28, v39, &qword_1EACCF7A8, &qword_18F540440);
  return sub_18F0FF800(v51, v43, &qword_1EACD0270, &unk_18F5407C0);
}

id static IntentMessageConversation.valueType.getter()
{
  v0 = [objc_opt_self() messageConversationValueType];

  return v0;
}

id IntentMessageConversation.projectedAsValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = sub_18F0F21A8(0, &qword_1EACD30D8, 0x1E69AC8B8);
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v7;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  result = sub_18F395BF0(v10);
  a1[3] = v8;
  *a1 = result;
  return result;
}

id sub_18F395BF0(void *a1)
{
  v3 = type metadata accessor for IntentPerson(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = a1[1];
  v12 = a1[3];
  v13 = a1[4];
  v14 = sub_18F5218AC();
  if (!v12)
  {
    v15 = 0;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_11;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = sub_18F5218AC();

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v27 = v4;
  v16 = v13[2];
  if (v16)
  {
    v23[2] = v11;
    v24 = v15;
    v25 = v14;
    v26 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    sub_18F0F21A8(0, &qword_1EACD30B8, 0x1E696E940);
    v17 = *(v27 + 80);
    v23[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v19 = *(v27 + 72);
    do
    {
      sub_18F396D1C(v18, v10, type metadata accessor for IntentPerson);
      sub_18F396D1C(v10, v7, type metadata accessor for IntentPerson);
      INPerson.init(_:)();
      OUTLINED_FUNCTION_0_110();
      sub_18F396D78(v10, v20);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v18 += v19;
      --v16;
    }

    while (v16);

    v14 = v25;
    v15 = v24;
  }

  else
  {
  }

  sub_18F0F21A8(0, &qword_1EACD30B8, 0x1E696E940);
  v13 = sub_18F521C8C();
LABEL_11:

  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMessageConversationIdentifier:v14 groupName:v15 recipients:v13];

  return v21;
}

unint64_t sub_18F395EBC(uint64_t a1)
{
  result = sub_18F395EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F395EE4()
{
  result = qword_1EACD7ED0;
  if (!qword_1EACD7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7ED0);
  }

  return result;
}

unint64_t sub_18F395F38(uint64_t a1)
{
  result = sub_18F395F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F395F60()
{
  result = qword_1EACD7ED8;
  if (!qword_1EACD7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7ED8);
  }

  return result;
}

unint64_t sub_18F395FB8()
{
  result = qword_1EACD7EE0;
  if (!qword_1EACD7EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7EE8, &qword_18F55EFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7EE0);
  }

  return result;
}

uint64_t sub_18F396028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x800000018F52B160 == a2;
  if (v3 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F522D5C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18F396150(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001DLL;
  }

  if (a1 == 1)
  {
    return 0x6D614E70756F7267;
  }

  return 0x6E65697069636572;
}

uint64_t sub_18F3961B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7EF0, &qword_18F55F108);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F396C44();
  sub_18F522FEC();
  v15 = 0;
  sub_18F522BFC();
  if (!v2)
  {
    v14 = 1;
    sub_18F522BFC();
    v13 = *(v3 + 32);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7F00, &qword_18F55F110);
    sub_18F396C98();
    sub_18F522C2C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F396368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F396028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F396390(uint64_t a1)
{
  v2 = sub_18F396C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F3963CC(uint64_t a1)
{
  v2 = sub_18F396C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18F396420(void *a1@<X8>)
{
  v3 = type metadata accessor for IntentPerson.Name(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v84 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  v78 = sub_18F5209EC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v74 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - v16;
  v83 = type metadata accessor for IntentPerson(0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v82 = v21 - v20;
  v22 = *v1;
  v23 = v1[1];
  v24 = v1[3];
  v73 = v1[2];
  v25 = v1[4];
  if (v25)
  {
    v26 = *(v25 + 16);
    v72 = v24;
    if (v26)
    {
      v70 = v22;
      v71 = a1;
      v97 = MEMORY[0x1E69E7CC0];
      v69 = v23;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F3AAD8C(0, v26, 0);
      v27 = v97;
      v28 = v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v79 = *(v18 + 72);
      v77 = (v11 + 32);
      v76 = v11 + 8;
      v80 = v9;
      v81 = v3;
      while (1)
      {
        v95 = v27;
        v29 = v82;
        sub_18F396D1C(v28, v82, type metadata accessor for IntentPerson);
        v30 = OUTLINED_FUNCTION_3_70();
        sub_18F396D1C(v30, v9, v31);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v77)(v75, v9, v78);
          v32 = sub_18F52096C();
          v93 = v33;
          v94 = v32;
          v34 = sub_18F52098C();
          v91 = v35;
          v92 = v34;
          v36 = sub_18F52097C();
          v89 = v37;
          v90 = v36;
          v38 = sub_18F5209CC();
          v87 = v39;
          v88 = v38;
          v40 = OUTLINED_FUNCTION_7_58();
          v41(v40);
        }

        else
        {
          sub_18F396D78(v9, type metadata accessor for IntentPerson.Name);
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
        }

        v42 = OUTLINED_FUNCTION_3_70();
        sub_18F396D1C(v42, v84, v43);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            (*v77)(v74, v84, v78);
            v45 = sub_18F5209DC();
            v85 = v46;
            v86 = v45;
            v47 = OUTLINED_FUNCTION_7_58();
            v48(v47);
          }

          else
          {
            v85 = 0xE000000000000000;
            v86 = 0;
          }
        }

        else
        {
          v49 = *v84;
          v85 = v84[1];
          v86 = v49;
        }

        v96 = v26;
        v50 = v29 + *(v83 + 28);
        if (*(v50 + 32) == 10)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
        }

        else
        {
          v53 = *v50;
          v54 = *(v50 + 8);
          sub_18F172BEC(*v50, v54, *(v50 + 16));
          if (*(v50 + 32) != 10)
          {
            v57 = *(v50 + 16);
            v52 = *&aPhonenumemaila_0[8 * v57];
            v51 = *&aBer_0[8 * v57];
            v55 = sub_18F5218DC();
            v56 = v58;
            goto LABEL_18;
          }

          v51 = 0;
          v52 = 0;
        }

        v55 = 0;
        v56 = 0;
LABEL_18:
        OUTLINED_FUNCTION_0_110();
        sub_18F396D78(v29, v59);
        v27 = v95;
        v97 = v95;
        v61 = *(v95 + 16);
        v60 = *(v95 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_18F3AAD8C(v60 > 1, v61 + 1, 1);
          v27 = v97;
        }

        *(v27 + 16) = v61 + 1;
        v62 = v27 + 160 * v61;
        v63 = v93;
        *(v62 + 32) = v94;
        *(v62 + 40) = v63;
        v64 = v91;
        *(v62 + 48) = v92;
        *(v62 + 56) = v64;
        v65 = v89;
        *(v62 + 64) = v90;
        *(v62 + 72) = v65;
        v66 = v87;
        *(v62 + 80) = v88;
        *(v62 + 88) = v66;
        v67 = v85;
        *(v62 + 96) = v86;
        *(v62 + 104) = v67;
        *(v62 + 112) = 0;
        *(v62 + 120) = 0;
        *(v62 + 128) = 0;
        *(v62 + 136) = v53;
        *(v62 + 144) = v54;
        *(v62 + 152) = v52;
        *(v62 + 160) = v51;
        *(v62 + 168) = v55;
        *(v62 + 176) = v56;
        v9 = v80;
        v28 += v79;
        *(v62 + 184) = 0;
        v26 = v96 - 1;
        if (v96 == 1)
        {
          a1 = v71;
          v22 = v70;
          v23 = v69;
          goto LABEL_24;
        }
      }
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v27 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v68 = v72;
  }

  else
  {
    v68 = v24;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v27 = 0;
  }

  *a1 = v22;
  a1[1] = v23;
  a1[2] = v73;
  a1[3] = v68;
  a1[4] = v27;
}

double sub_18F39697C@<D0>(uint64_t a1@<X8>)
{
  sub_18F396420(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t dispatch thunk of MessageConversationRepresentableEntity.messageConversationRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F396AEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_18F396B2C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F396B84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_18F396BD8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F396C44()
{
  result = qword_1EACD7EF8;
  if (!qword_1EACD7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7EF8);
  }

  return result;
}

unint64_t sub_18F396C98()
{
  result = qword_1EACD7F08;
  if (!qword_1EACD7F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7F00, &qword_18F55F110);
    sub_18F295A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F08);
  }

  return result;
}

uint64_t sub_18F396D1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F396D78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentMessageConversation.MessageConversationNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F396EB0()
{
  result = qword_1EACD7F10;
  if (!qword_1EACD7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F10);
  }

  return result;
}

unint64_t sub_18F396F08()
{
  result = qword_1EACD7F18;
  if (!qword_1EACD7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F18);
  }

  return result;
}

unint64_t sub_18F396F60()
{
  result = qword_1EACD7F20;
  if (!qword_1EACD7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F20);
  }

  return result;
}

uint64_t Array<A>.items.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F521DBC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_111();
  return sub_18F521B3C();
}

uint64_t Array<A>.promptLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F520B3C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_18F3970B4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v8 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_18F3971F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  return IntentItem.init(_:)(v8, a2, a3, a4);
}

uint64_t sub_18F3972F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.empty.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t AppShortcutParameterPresentationSummaryString.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  a4[1] = a1;
  a4[2] = a2;
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  return result;
}

double AppShortcutParameterPresentationSummaryString.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  AppShortcutParameterPresentationSummaryString.init(_:)(a1, a2, &v7);
  result = *&v7;
  v6 = v8;
  *a4 = v7;
  *(a4 + 16) = v6;
  return result;
}

uint64_t AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  a4[1] = 0;
  a4[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F397570(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_18F3975B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F39766C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18F522EFC();
  a4(v8, v6);
  return sub_18F522F4C();
}

id static IntentToggleOperation.valueType.getter()
{
  v0 = [objc_opt_self() intentToggleOperationValueType];

  return v0;
}

uint64_t IntentToggleOperation.projectedAsValue.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 7628147;
  if ((result & 1) == 0)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE600000000000000;
  a2[3] = MEMORY[0x1E69E6158];
  if (result)
  {
    v3 = 0xE300000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_18F397744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_18F520B3C();
  OUTLINED_FUNCTION_15_44(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_34_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7F28, &unk_18F55F538);
  OUTLINED_FUNCTION_10(v6);
  v3[8] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for IntentToggleOperation.DisplayName(0);
  v3[9] = v7;
  OUTLINED_FUNCTION_10(v7);
  v3[10] = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F397844, 0, 0);
}

uint64_t sub_18F397844()
{
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  sub_18F397AC8(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
  {
    v15 = OUTLINED_FUNCTION_21_37();
    sub_18F399784(v15, v6);
    v16 = *(v1 + 16);
    v17 = OUTLINED_FUNCTION_56();
    v16(v17);
    v18 = sub_18F52193C();
    if (v18 == v3 && v19 == v2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_8_53(v18);
      OUTLINED_FUNCTION_102_0();
      if ((v4 & 1) == 0)
      {
        v21 = v0[2] == 0x656C67676F74 && v0[3] == 0xE600000000000000;
        if (!v21 && (sub_18F522D5C() & 1) == 0)
        {
          v22 = OUTLINED_FUNCTION_7_59();
          v16(v22);
          v23 = sub_18F52193C();
          if (v23 == v5 && v24 == v4)
          {
          }

          else
          {
            OUTLINED_FUNCTION_8_53(v23);
            v26 = OUTLINED_FUNCTION_102_0();
            if ((v4 & 1) == 0)
            {
              v28 = v0[2];
              v29 = v0[3];
              v30 = v0[10];
              if (v28 != 7628147 || v29 != 0xE300000000000000)
              {
                OUTLINED_FUNCTION_22_37(v26, v27, v28, v29);
                sub_18F3997DC(v30, type metadata accessor for IntentToggleOperation.DisplayName);
                goto LABEL_34;
              }

              v39 = type metadata accessor for IntentToggleOperation.DisplayName;
              v37 = v0[10];
              goto LABEL_39;
            }
          }

          v37 = OUTLINED_FUNCTION_2_87();
          v39 = v38;
LABEL_39:
          sub_18F3997DC(v37, v39);
          goto LABEL_34;
        }
      }
    }

    v32 = OUTLINED_FUNCTION_2_87();
    sub_18F3997DC(v32, v33);
    goto LABEL_34;
  }

  v8 = v0[2];
  v7 = v0[3];
  sub_18F0EF1A8(v0[8], &qword_1EACD7F28, &unk_18F55F538);
  if (v8 != 0x656C67676F74 || v7 != 0xE600000000000000)
  {
    v10 = OUTLINED_FUNCTION_24_40();
    if ((v10 & 1) == 0)
    {
      v12 = v0[2];
      v13 = v0[3];
      if (v12 != 7628147 || v13 != 0xE300000000000000)
      {
        OUTLINED_FUNCTION_22_37(v10, v11, v12, v13);
      }
    }
  }

LABEL_34:

  v34 = OUTLINED_FUNCTION_12_7();

  return v35(v34);
}

uint64_t sub_18F397AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_18F0F713C(0xD00000000000001ALL, 0x800000018F52B180), (v5 & 1) != 0))
  {
    sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v10);
    v6 = type metadata accessor for IntentToggleOperation.DisplayName(0);
    v7 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    v9 = type metadata accessor for IntentToggleOperation.DisplayName(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t sub_18F397BA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_18F399894;

  return sub_18F397744(v5, v6, a3);
}

id static IntentToggleState.valueType.getter()
{
  v0 = [objc_opt_self() intentToggleStateValueType];

  return v0;
}

uint64_t IntentToggleState.projectedAsValue.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x657669746361;
  if (result)
  {
    v2 = 0x6576697463616E69;
  }

  v3 = 0xE600000000000000;
  a2[3] = MEMORY[0x1E69E6158];
  if (result)
  {
    v3 = 0xE800000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_18F397CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_18F520B3C();
  OUTLINED_FUNCTION_15_44(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_34_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7F30, &qword_18F55F548);
  OUTLINED_FUNCTION_10(v6);
  v3[8] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for IntentToggleState.DisplayName(0);
  v3[9] = v7;
  OUTLINED_FUNCTION_10(v7);
  v3[10] = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F397DE4, 0, 0);
}

uint64_t sub_18F397DE4()
{
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  sub_18F398100(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
  {
    v18 = OUTLINED_FUNCTION_21_37();
    sub_18F399784(v18, v6);
    v19 = *(v1 + 16);
    v20 = OUTLINED_FUNCTION_56();
    v19(v20);
    v21 = sub_18F52193C();
    if (v21 == v3 && v22 == v2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_8_53(v21);
      OUTLINED_FUNCTION_102_0();
      if ((v4 & 1) == 0)
      {
        v24 = v0[2] == 0x657669746361 && v0[3] == 0xE600000000000000;
        if (!v24 && (sub_18F522D5C() & 1) == 0)
        {
          v25 = v0[2] == 28271 && v0[3] == 0xE200000000000000;
          if (!v25 && (sub_18F522D5C() & 1) == 0)
          {
            v26 = OUTLINED_FUNCTION_7_59();
            v19(v26);
            v27 = sub_18F52193C();
            if (v27 == v5 && v28 == v4)
            {
            }

            else
            {
              OUTLINED_FUNCTION_8_53(v27);
              OUTLINED_FUNCTION_102_0();
              if ((v4 & 1) == 0)
              {
                OUTLINED_FUNCTION_11_43();
                if (!v9 || v30 != 0xE800000000000000)
                {
                  v32 = sub_18F522D5C();
                  if ((v32 & 1) == 0)
                  {
                    v34 = v0[2];
                    v35 = v0[3];
                    v36 = v0[10];
                    if (v34 != 6710895 || v35 != 0xE300000000000000)
                    {
                      OUTLINED_FUNCTION_26_40(v32, v33, v34, v35);
                      sub_18F3997DC(v36, type metadata accessor for IntentToggleState.DisplayName);
                      goto LABEL_54;
                    }

                    v45 = type metadata accessor for IntentToggleState.DisplayName;
                    v43 = v0[10];
                    goto LABEL_59;
                  }
                }
              }
            }

            v43 = OUTLINED_FUNCTION_3_71();
            v45 = v44;
LABEL_59:
            sub_18F3997DC(v43, v45);
            goto LABEL_54;
          }
        }
      }
    }

    v38 = OUTLINED_FUNCTION_3_71();
    sub_18F3997DC(v38, v39);
    goto LABEL_54;
  }

  v8 = v0[2];
  v7 = v0[3];
  sub_18F0EF1A8(v0[8], &qword_1EACD7F30, &qword_18F55F548);
  v9 = v8 == 0x657669746361 && v7 == 0xE600000000000000;
  if (!v9 && (OUTLINED_FUNCTION_24_40() & 1) == 0)
  {
    v10 = v0[2] == 28271 && v0[3] == 0xE200000000000000;
    if (!v10 && (sub_18F522D5C() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_43();
      if (!v9 || v11 != 0xE800000000000000)
      {
        v13 = sub_18F522D5C();
        if ((v13 & 1) == 0)
        {
          v15 = v0[2];
          v16 = v0[3];
          if (v15 != 6710895 || v16 != 0xE300000000000000)
          {
            OUTLINED_FUNCTION_26_40(v13, v14, v15, v16);
          }
        }
      }
    }
  }

LABEL_54:

  v40 = OUTLINED_FUNCTION_12_7();

  return v41(v40);
}

uint64_t sub_18F398100@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_18F0F713C(0xD000000000000016, 0x800000018F52B1A0), (v5 & 1) != 0))
  {
    sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v10);
    v6 = type metadata accessor for IntentToggleState.DisplayName(0);
    v7 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    v9 = type metadata accessor for IntentToggleState.DisplayName(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t sub_18F3981DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_18F398288;

  return sub_18F397CE4(v5, v6, a3);
}

uint64_t sub_18F398288(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_18F398918(a1, a2, a3, a4, a5, a6, sub_18F398430, &qword_1EACD7F28, &unk_18F55F538);
}

{
  return sub_18F398918(a1, a2, a3, a4, a5, a6, sub_18F398C34, &qword_1EACD7F30, &qword_18F55F548);
}

uint64_t sub_18F398430()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7F28, &unk_18F55F538);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_5_66();
  v5 = type metadata accessor for IntentToggleOperation.DisplayName(v4);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_53();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_18F0EF1A8(v1, &qword_1EACD7F28, &unk_18F55F538);
    sub_18F1168B4();
    return sub_18F5216CC();
  }

  else
  {
    sub_18F399784(v1, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8, &unk_18F540C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    v9 = OUTLINED_FUNCTION_25_36(inited, 0x800000018F52B180);
    sub_18F399834(v0, v9);
    sub_18F1168B4();
    v7 = sub_18F5216CC();
    sub_18F3997DC(v0, type metadata accessor for IntentToggleOperation.DisplayName);
  }

  return v7;
}

uint64_t IntentParameter<>.init<A>(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  return sub_18F398E44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_18F398430, &qword_1EACD7F28, &unk_18F55F538);
}

{
  return sub_18F398E44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_18F398C34, &qword_1EACD7F30, &qword_18F55F548);
}

uint64_t IntentParameter<>.displayName.getter()
{
  v1 = *(v0 + *(*v0 + 112));
  if (*(v1 + 16) && (v2 = sub_18F0F713C(0xD00000000000001ALL, 0x800000018F52B180), (v3 & 1) != 0))
  {
    sub_18F0FECD4(*(v1 + 56) + 32 * v2, v18);
    v4 = type metadata accessor for IntentToggleOperation.DisplayName(0);
    v12 = OUTLINED_FUNCTION_13_4(v4, v5, v6, v7, v8, v9, v10, v11, v18[0]);
    return OUTLINED_FUNCTION_14_2(v12);
  }

  else
  {
    type metadata accessor for IntentToggleOperation.DisplayName(0);
    OUTLINED_FUNCTION_11();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

{
  v1 = *(v0 + *(*v0 + 112));
  if (*(v1 + 16) && (v2 = sub_18F0F713C(0xD000000000000016, 0x800000018F52B1A0), (v3 & 1) != 0))
  {
    sub_18F0FECD4(*(v1 + 56) + 32 * v2, v18);
    v4 = type metadata accessor for IntentToggleState.DisplayName(0);
    v12 = OUTLINED_FUNCTION_13_4(v4, v5, v6, v7, v8, v9, v10, v11, v18[0]);
    return OUTLINED_FUNCTION_14_2(v12);
  }

  else
  {
    type metadata accessor for IntentToggleState.DisplayName(0);
    OUTLINED_FUNCTION_11();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

{
  v1 = *(v0 + *(*v0 + 112));
  if (*(v1 + 16) && (v2 = OUTLINED_FUNCTION_2_110(), (v3 & 1) != 0))
  {
    sub_18F0FECD4(*(v1 + 56) + 32 * v2, v18);
    v4 = type metadata accessor for Bool.IntentDisplayName(0);
    v12 = OUTLINED_FUNCTION_13_4(v4, v5, v6, v7, v8, v9, v10, v11, v18[0]);
    return OUTLINED_FUNCTION_14_2(v12);
  }

  else
  {
    type metadata accessor for Bool.IntentDisplayName(0);
    OUTLINED_FUNCTION_11();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

uint64_t sub_18F39870C()
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v0 = OUTLINED_FUNCTION_56();

  return v1(v0);
}

uint64_t sub_18F398780@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_18F398814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v12 = *(v9 + 32);
  v12(a4, a1, v8);
  v10 = a4 + *(a3(0) + 20);

  return (v12)(v10, a2, v8);
}

uint64_t sub_18F398918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t *a8, uint64_t *a9)
{
  v46 = a8;
  v47 = a2;
  v42 = a1;
  v45 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v43 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v40 = v39 - v19;
  v44 = v9;
  swift_getAssociatedTypeWitness();
  v20 = sub_18F52254C();
  OUTLINED_FUNCTION_2_2(v20, &v54);
  v22 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v39 - v24;
  v26 = sub_18F520B3C();
  v27 = OUTLINED_FUNCTION_2_2(v26, &v55);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4();
  (*(v29 + 16))(v31 - v30, a1);
  (*(v22 + 16))(v25, a3, v20);
  a7(a4);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_18F116970(a5, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  v37 = v36;
  sub_18F0EF1A8(a5, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF1A8(a4, v46, v45);
  (*(v22 + 8))(a3, v39[1]);
  sub_18F0EF1A8(v47, &qword_1EACCF7A8, &qword_18F540440);
  (*(v29 + 8))(v42, v41);
  return v37;
}

uint64_t sub_18F398C34()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7F30, &qword_18F55F548);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_5_66();
  v5 = type metadata accessor for IntentToggleState.DisplayName(v4);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_53();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_18F0EF1A8(v1, &qword_1EACD7F30, &qword_18F55F548);
    sub_18F1168B4();
    return sub_18F5216CC();
  }

  else
  {
    sub_18F399784(v1, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8, &unk_18F540C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    v9 = OUTLINED_FUNCTION_25_36(inited, 0x800000018F52B1A0);
    sub_18F399834(v0, v9);
    sub_18F1168B4();
    v7 = sub_18F5216CC();
    sub_18F3997DC(v0, type metadata accessor for IntentToggleState.DisplayName);
  }

  return v7;
}

uint64_t sub_18F398E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t *a12, uint64_t *a13)
{
  v52 = a5;
  v43 = a3;
  v55 = a2;
  v46 = a1;
  v54 = a13;
  v49 = a10;
  v48 = a9;
  v53 = a12;
  v47 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3();
  v50 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v44 = &v42 - v23;
  v51 = v13;
  swift_getAssociatedTypeWitness();
  v24 = sub_18F52254C();
  OUTLINED_FUNCTION_2_2(v24, &v60);
  v26 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_66();
  v28 = sub_18F520B3C();
  v29 = OUTLINED_FUNCTION_2_2(v28, &v61);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  (*(v31 + 16))(v33 - v32, a1);
  (*(v26 + 16))(v14, a3, v24);
  v47(a4);
  v59[3] = v48;
  v59[4] = v49;
  __swift_allocate_boxed_opaque_existential_1(v59);
  a7();
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v34 = v52;
  sub_18F116970(v52, v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  v40 = v39;

  sub_18F0EF1A8(v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF1A8(a4, v53, v54);
  (*(v26 + 8))(v43, v42);
  sub_18F0EF1A8(v55, &qword_1EACCF7A8, &qword_18F540440);
  (*(v31 + 8))(v46, v45);
  return v40;
}

unint64_t sub_18F3992BC()
{
  result = qword_1EACD7F38;
  if (!qword_1EACD7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F38);
  }

  return result;
}

unint64_t sub_18F399314()
{
  result = qword_1EACD7F40;
  if (!qword_1EACD7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F40);
  }

  return result;
}

unint64_t sub_18F399384(uint64_t a1)
{
  result = sub_18F3993AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3993AC()
{
  result = qword_1EACD7F48;
  if (!qword_1EACD7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F48);
  }

  return result;
}

unint64_t sub_18F399404()
{
  result = qword_1EACD7F50;
  if (!qword_1EACD7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F50);
  }

  return result;
}

unint64_t sub_18F399474(uint64_t a1)
{
  result = sub_18F39949C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F39949C()
{
  result = qword_1EACD7F58;
  if (!qword_1EACD7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F58);
  }

  return result;
}

unint64_t sub_18F3994F4()
{
  result = qword_1EACD7F60;
  if (!qword_1EACD7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7F60);
  }

  return result;
}

_BYTE *sub_18F399558(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  v4 = sub_18F520B3C();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  v4 = sub_18F520B3C();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_18F399710(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F399784(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_3();
  v4(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_56();
  v6(v5);
  return a2;
}

uint64_t sub_18F3997DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F399834(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_3();
  v4(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_56();
  v6(v5);
  return a2;
}

uint64_t _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0090, &unk_18F53FE50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18F53F800;
  *(v2 + 32) = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v2;
}

void static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_18F1697C4();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

_BYTE *_s37NegativeAssistantIntentPhrasesBuilderOwst(_BYTE *result, int a2, int a3)
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

id sub_18F399B30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntentPerson(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_18F1169CC(a1, v6, &qword_1EACD0318, &qword_18F5583A0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_18F0EF1A8(v6, &qword_1EACD0318, &qword_18F5583A0);
    v12 = 0;
  }

  else
  {
    sub_18F1CC878(v6, v11);
    sub_18F39AFDC();
    sub_18F1CC8DC(v11, v1);
    INPerson.init(_:)();
    v12 = v13;
    OUTLINED_FUNCTION_0_113();
    sub_18F39AF84(v11, v14);
  }

  v15 = *(a1 + *(type metadata accessor for IntentEventParticipant(0) + 20));
  if (v15 == 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = sub_18F521E0C();
  v19 = sub_18F521E0C();
  v20 = [v17 initWithPerson:v12 status:v16 isUser:v18 isEventOrganizer:v19];

  sub_18F39AF84(a1, type metadata accessor for IntentEventParticipant);
  return v20;
}

double sub_18F399D30@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-v6 - 16];
  sub_18F1169CC(v2, &v17[-v6 - 16], &qword_1EACD0318, &qword_18F5583A0);
  v8 = type metadata accessor for IntentPerson(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_18F0EF1A8(v7, &qword_1EACD0318, &qword_18F5583A0);
    sub_18F172B7C(__dst);
  }

  else
  {
    sub_18F3FC1D0();
    OUTLINED_FUNCTION_0_113();
    sub_18F39AF84(v7, v9);
    memcpy(v18, v17, 0x9AuLL);
    nullsub_1();
    memcpy(__dst, v18, 0x9AuLL);
  }

  v10 = type metadata accessor for IntentEventParticipant(0);
  v11 = xmmword_18F55F8F0;
  v12 = 0uLL;
  switch(*(v2 + v10[5]))
  {
    case 1:
      v11 = xmmword_18F55F950;
      goto LABEL_11;
    case 2:
      v11 = xmmword_18F55F940;
      goto LABEL_11;
    case 3:
      v11 = xmmword_18F55F930;
      goto LABEL_11;
    case 4:
      v11 = xmmword_18F55F920;
      goto LABEL_11;
    case 5:
      v11 = xmmword_18F55F910;
      goto LABEL_11;
    case 6:
      v11 = xmmword_18F55F900;
      goto LABEL_11;
    case 7:
      goto LABEL_12;
    default:
LABEL_11:
      v12 = v11;
LABEL_12:
      v16 = v12;
      v13 = *(v2 + v10[6]);
      v14 = *(v2 + v10[7]);
      memcpy(v18, __dst, 0x9AuLL);
      memcpy(a1, v18, 0xA0uLL);
      result = *&v16;
      *(a1 + 160) = v16;
      *(a1 + 176) = v13;
      *(a1 + 177) = v14;
      return result;
  }
}

AppIntents::IntentEventParticipant::Status_optional __swiftcall IntentEventParticipant.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18F399F40@<X0>(uint64_t *a1@<X8>)
{
  result = IntentEventParticipant.Status.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentEventParticipant.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntentEventParticipant(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for IntentEventParticipant(uint64_t a1)
{
  result = qword_1EACCE068;
  if (!qword_1EACCE068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *IntentEventParticipant.init(person:status:isUser:isEventOrganizer:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_18F39A0BC(a1, a5);
  result = type metadata accessor for IntentEventParticipant(0);
  *(a5 + result[5]) = v8;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_18F39A0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentEventParticipant.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - v5;
  v6 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F1169CC(v50, v13, &qword_1EACD0318, &qword_18F5583A0);
  v25 = type metadata accessor for IntentPerson(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v25) == 1)
  {
    sub_18F0EF1A8(v13, &qword_1EACD0318, &qword_18F5583A0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v19);
    sub_18F520ACC();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_18F0EF1A8(v18, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    IntentPerson.displayRepresentation.getter();
    OUTLINED_FUNCTION_0_113();
    sub_18F39AF84(v13, v29);
    (*(v21 + 16))(v18, v9, v19);
    sub_18F39AF84(v9, type metadata accessor for DisplayRepresentation);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
    (*(v21 + 32))(v24, v18, v19);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  v33 = type metadata accessor for DisplayRepresentation.Image(0);
  v34 = v51;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  v38 = v6[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v19);
  v42 = v6[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
  *(a1 + v6[7]) = xmmword_18F540410;
  *(a1 + v6[8]) = 0;
  *(a1 + v6[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v19);
  (*(v21 + 32))(a1, v24, v19);
  sub_18F0FF690(v1, a1 + v38, &qword_1EACCF7A8, &qword_18F540440);
  return sub_18F0FF690(v34, a1 + v42, &qword_1EACD0270, &unk_18F5407C0);
}

unint64_t sub_18F39A554()
{
  result = qword_1EACD7FA8;
  if (!qword_1EACD7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7FA8);
  }

  return result;
}

uint64_t sub_18F39A5A8(uint64_t a1)
{
  result = sub_18F39A698(&qword_1EACD7FB0, &protocol conformance descriptor for IntentEventParticipant);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F39A5EC(uint64_t a1)
{
  result = sub_18F39A698(&qword_1EACD7FB8, &protocol conformance descriptor for IntentEventParticipant);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F39A634()
{
  result = qword_1EACD7FC0;
  if (!qword_1EACD7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7FC8, &qword_18F55FA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7FC0);
  }

  return result;
}

uint64_t sub_18F39A698(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentEventParticipant(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F39A6E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726573557369 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000018F52B1E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F522D5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18F39A838(char a1)
{
  result = 0x6E6F73726570;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x726573557369;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F39A8AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7FD8, &qword_18F55FC18);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F39AF30();
  sub_18F522FEC();
  memcpy(__dst, v3, 0x9AuLL);
  memcpy(v14, v3, sizeof(v14));
  v17 = 0;
  sub_18F1169CC(__dst, v13, &qword_1EACD7FE8, &qword_18F55FC20);
  sub_18F295A4C();
  OUTLINED_FUNCTION_4_71();
  sub_18F522C2C();
  if (v2)
  {
    memcpy(v13, v14, 0x9AuLL);
    sub_18F0EF1A8(v13, &qword_1EACD7FE8, &qword_18F55FC20);
  }

  else
  {
    memcpy(v13, v14, 0x9AuLL);
    sub_18F0EF1A8(v13, &qword_1EACD7FE8, &qword_18F55FC20);
    v16 = 1;
    sub_18F522BFC();
    v16 = 2;
    OUTLINED_FUNCTION_4_71();
    sub_18F522C4C();
    v16 = 3;
    OUTLINED_FUNCTION_4_71();
    sub_18F522C4C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F39AAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F39A6E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F39AB08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F31ED98();
  *a1 = result;
  return result;
}

uint64_t sub_18F39AB30(uint64_t a1)
{
  v2 = sub_18F39AF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F39AB6C(uint64_t a1)
{
  v2 = sub_18F39AF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18F39AC28(uint64_t a1)
{
  sub_18F39ACBC(319);
  if (v1 <= 0x3F)
  {
    sub_18F39AD14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F39ACBC(uint64_t a1)
{
  if (!qword_1EACCE6B8)
  {
    type metadata accessor for IntentPerson(255);
    v1 = sub_18F52254C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EACCE6B8);
    }
  }
}

void sub_18F39AD14()
{
  if (!qword_1EACCE078)
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCE078);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IntentEventParticipant.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F39AE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 178))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 168);
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

uint64_t sub_18F39AE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

unint64_t sub_18F39AF30()
{
  result = qword_1EACD7FE0;
  if (!qword_1EACD7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7FE0);
  }

  return result;
}

uint64_t sub_18F39AF84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_18F39AFDC()
{
  result = qword_1EACD30B8;
  if (!qword_1EACD30B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD30B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentEventParticipant.EventParticipantNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F39B100()
{
  result = qword_1EACD7FF0;
  if (!qword_1EACD7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7FF0);
  }

  return result;
}

unint64_t sub_18F39B158()
{
  result = qword_1EACD7FF8;
  if (!qword_1EACD7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7FF8);
  }

  return result;
}

unint64_t sub_18F39B1B0()
{
  result = qword_1EACD8000;
  if (!qword_1EACD8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8000);
  }

  return result;
}

id sub_18F39B210(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F5218AC();

  v4 = [v2 initWithSpokenPhrase_];

  return v4;
}

uint64_t IntentReminderTaskList.createdDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntentReminderTaskList(0) + 28);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for IntentReminderTaskList(uint64_t a1)
{
  result = qword_1EACCE058;
  if (!qword_1EACCE058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentReminderTaskList.modifiedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntentReminderTaskList(0) + 32);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntentReminderTaskList.identifier.getter()
{
  type metadata accessor for IntentReminderTaskList(0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_56();
}

uint64_t IntentReminderTaskList.init(title:tasks:groupName:createdDateComponents:modifiedDateComponents:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v14 = type metadata accessor for IntentReminderTaskList(0);
  v15 = v14[7];
  v16 = sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v18 = *(v17 + 32);
  v18(&a9[v15], a6, v16);
  result = (v18)(&a9[v14[8]], a7, v16);
  v20 = &a9[v14[9]];
  *v20 = a8;
  *(v20 + 1) = a10;
  return result;
}

uint64_t IntentReminderTaskList.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation(0);
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF800(v9, a1 + v21, &qword_1EACCF7A8, &qword_18F540440);
  return sub_18F0FF800(v5, a1 + v25, &qword_1EACD0270, &unk_18F5407C0);
}

id static IntentReminderTaskList.valueType.getter()
{
  v0 = [objc_opt_self() taskListValueType];

  return v0;
}

id IntentReminderTaskList.projectedAsValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for IntentReminderTaskList(0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  v8 = sub_18F0F21A8(0, &qword_1EACD30C8, 0x1E696EAA0);
  sub_18F39CD7C(v1, v7, type metadata accessor for IntentReminderTaskList);
  result = sub_18F39B86C(v7);
  a1[3] = v8;
  *a1 = result;
  return result;
}

id sub_18F39B86C(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntentReminderTask(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_5();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = sub_18F0F21A8(0, &qword_1EACD1AA8, 0x1E696EA50);
  v14 = *a1;
  v13 = a1[1];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = sub_18F39B210(v14, v13);
  v16 = v15;
  v17 = a1[2];
  v18 = *(v17 + 16);
  if (v18)
  {
    v31[0] = v12;
    v31[1] = v2;
    v32 = v15;
    v33 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    sub_18F0F21A8(0, &qword_1EACD3120, 0x1E696EA98);
    v19 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_18F39CD7C(v19, v11, type metadata accessor for IntentReminderTask);
      sub_18F39CD7C(v11, v8, type metadata accessor for IntentReminderTask);
      sub_18F239BF4(v8);
      sub_18F39CDD8(v11, type metadata accessor for IntentReminderTask);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v19 += v20;
      --v18;
    }

    while (v18);
    v16 = v32;
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACD3120, 0x1E696EA98);
  v22 = sub_18F521C8C();

  v23 = a1[3];
  v24 = a1[4];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v25 = sub_18F39B210(v23, v24);
  type metadata accessor for IntentReminderTaskList(0);
  v26 = sub_18F52082C();
  v27 = sub_18F52082C();
  v28 = sub_18F5218AC();
  v29 = [v21 initWithTitle:v16 tasks:v22 groupName:v25 createdDateComponents:v26 modifiedDateComponents:v27 identifier:v28];

  sub_18F39CDD8(a1, type metadata accessor for IntentReminderTaskList);
  return v29;
}

uint64_t sub_18F39BB6C(uint64_t a1)
{
  result = sub_18F39BC5C(&qword_1EACD8008, &protocol conformance descriptor for IntentReminderTaskList);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F39BBB0(uint64_t a1)
{
  result = sub_18F39BC5C(&qword_1EACD8010, &protocol conformance descriptor for IntentReminderTaskList);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F39BBF8()
{
  result = qword_1EACD8018;
  if (!qword_1EACD8018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD8020, &qword_18F55FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8018);
  }

  return result;
}

uint64_t sub_18F39BC5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentReminderTaskList(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F39BCAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736B736174 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000018F527830 == a2;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x800000018F527850 == a2;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F522D5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F39BEA8(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x736B736174;
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F39BF64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8028, &qword_18F55FF48);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F39CCA4();
  sub_18F522FEC();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v20) = 0;
  OUTLINED_FUNCTION_1_3(v11, v12);
  if (!v2)
  {
    *&v20 = *(v3 + 16);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8038, &qword_18F55FF50);
    sub_18F39CCF8();
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v20) = 2;
    OUTLINED_FUNCTION_1_3(v13, v14);
    v15 = *(v3 + 56);
    v20 = *(v3 + 40);
    v21 = v15;
    v22 = 3;
    sub_18F1728C8();
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
    v16 = *(v3 + 88);
    v20 = *(v3 + 72);
    v21 = v16;
    v22 = 4;
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
    v17 = *(v3 + 104);
    v18 = *(v3 + 112);
    LOBYTE(v20) = 5;
    OUTLINED_FUNCTION_1_3(v17, v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F39C180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F39BCAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F39C1A8(uint64_t a1)
{
  v2 = sub_18F39CCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F39C1E4(uint64_t a1)
{
  v2 = sub_18F39CCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F39C238@<X0>(void *a1@<X8>)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8048, &qword_18F565D70);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v93 - v8;
  v10 = sub_18F520F7C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v116 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08, &qword_18F55B7A0);
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v102 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  v118 = type metadata accessor for IntentReminderTask(0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v29 = v1[1];
  v94 = *v1;
  v95 = v1;
  v30 = v1[2];
  v31 = *(v30 + 16);
  if (v31)
  {
    v119 = MEMORY[0x1E69E7CC0];
    v93 = v29;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F3AAD6C(0, v31, 0);
    v32 = v30 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v115 = (v12 + 8);
    v117 = v119;
    v97 = *(v24 + 72);
    v101 = v6;
    v100 = v9;
    v99 = v10;
    v98 = v22;
    do
    {
      v114 = v31;
      sub_18F39CD7C(v32, v28, type metadata accessor for IntentReminderTask);
      v34 = *v28;
      v33 = *(v28 + 8);
      v35 = *(v28 + 16) == 0;
      v36 = 0x6574656C706D6F63;
      if (!*(v28 + 16))
      {
        v36 = 0x6C706D6F43746F6ELL;
      }

      v111 = v36;
      v112 = v34;
      if (v35)
      {
        v37 = 0xEC00000064657465;
      }

      else
      {
        v37 = 0xE900000000000064;
      }

      v38 = *(v28 + 17) == 0;
      v39 = 0x6174656C706D6F63;
      if (*(v28 + 17))
      {
        v39 = 0x6C706D6F43746F6ELL;
      }

      v109 = v39;
      v110 = v37;
      v40 = 0xEB00000000656C62;
      if (!v38)
      {
        v40 = 0xEE00656C62617465;
      }

      v108 = v40;
      v41 = (v28 + *(v118 + 32));
      v42 = v41[1];
      v106 = *v41;
      v113 = v33;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v107 = v42;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v43 = v116;
      sub_18F520F5C();
      sub_18F520F4C();
      v44 = *v115;
      (*v115)(v43, v10);
      v45 = sub_18F520DEC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v45);
      if (EnumTagSinglePayload == 1)
      {
        sub_18F0EF1A8(v22, &qword_1EACD6A08, &qword_18F55B7A0);
        v46 = 0;
      }

      else
      {
        sub_18F520D8C();
        v46 = v47;
        OUTLINED_FUNCTION_31_0();
        (*(v48 + 8))(v22, v45);
      }

      sub_18F52084C();
      v49 = sub_18F520FDC();
      if (__swift_getEnumTagSinglePayload(v9, 1, v49) == 1)
      {
        sub_18F0EF1A8(v9, &qword_1EACD8048, &qword_18F565D70);
        v103 = 0;
        v104 = 0;
      }

      else
      {
        v50 = sub_18F520F8C();
        v103 = v51;
        v104 = v50;
        OUTLINED_FUNCTION_31_0();
        (*(v52 + 8))(v9, v49);
      }

      v53 = v116;
      sub_18F520F5C();
      v54 = v102;
      sub_18F520F4C();
      v44(v53, v10);
      v55 = v54;
      v56 = __swift_getEnumTagSinglePayload(v54, 1, v45);
      if (v56 == 1)
      {
        sub_18F0EF1A8(v55, &qword_1EACD6A08, &qword_18F55B7A0);
        v57 = 0;
      }

      else
      {
        sub_18F520D8C();
        v57 = v58;
        OUTLINED_FUNCTION_31_0();
        (*(v59 + 8))(v55, v45);
      }

      sub_18F52084C();
      if (__swift_getEnumTagSinglePayload(v6, 1, v49) == 1)
      {
        sub_18F0EF1A8(v6, &qword_1EACD8048, &qword_18F565D70);
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v60 = sub_18F520F8C();
        v61 = v62;
        OUTLINED_FUNCTION_31_0();
        (*(v63 + 8))(v6, v49);
      }

      if (*(v28 + *(v118 + 44)))
      {
        v64 = 0x64656767616C66;
      }

      else
      {
        v64 = 0x6767616C46746F6ELL;
      }

      if (*(v28 + *(v118 + 44)))
      {
        v65 = 0xE700000000000000;
      }

      else
      {
        v65 = 0xEA00000000006465;
      }

      sub_18F39CDD8(v28, type metadata accessor for IntentReminderTask);
      v66 = v117;
      v119 = v117;
      v68 = *(v117 + 16);
      v67 = *(v117 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_18F3AAD6C(v67 > 1, v68 + 1, 1);
        v66 = v119;
      }

      *(v66 + 16) = v68 + 1;
      v69 = EnumTagSinglePayload == 1;
      v117 = v66;
      v70 = (v66 + 144 * v68);
      v70[4] = v112;
      v70[5] = v113;
      v70[6] = v111;
      v70[7] = v110;
      v70[8] = v109;
      v70[9] = v108;
      v70[10] = v106;
      v70[11] = v107;
      v70[12] = v46;
      v70[13] = v69;
      v71 = v103;
      v70[14] = v104;
      v70[15] = v71;
      v70[16] = v57;
      v70[17] = v56 == 1;
      v70[18] = v60;
      v70[19] = v61;
      v70[20] = v64;
      v32 += v97;
      v70[21] = v65;
      v31 = v114 - 1;
      v6 = v101;
      v9 = v100;
      v10 = v99;
      v22 = v98;
    }

    while (v114 != 1);
    v72 = v93;
  }

  else
  {
    v72 = v29;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v117 = MEMORY[0x1E69E7CC0];
  }

  v73 = v95;
  v75 = v95[3];
  v74 = v95[4];
  v76 = type metadata accessor for IntentReminderTaskList(0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v77 = sub_18F4506B8();
  v79 = v78;
  v81 = v80;
  v83 = v82 & 1;
  v84 = sub_18F4506B8();
  v85 = (v73 + *(v76 + 36));
  v87 = *v85;
  v86 = v85[1];
  v89 = v96;
  *v96 = v94;
  v89[1] = v72;
  v89[2] = v117;
  v89[3] = v75;
  v89[4] = v74;
  v89[5] = v77;
  v89[6] = v83;
  v89[7] = v79;
  v89[8] = v81;
  v89[9] = v84;
  v89[10] = v88 & 1;
  v89[11] = v90;
  v89[12] = v91;
  v89[13] = v87;
  v89[14] = v86;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}