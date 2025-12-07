uint64_t noun_phrase()
{
  OUTLINED_FUNCTION_104_7();
  OUTLINED_FUNCTION_19_29(v5, v6, v7, v8, v9, v10, v11, v12, v264, v269, v274, v279, v284, v289, v294, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, SHIDWORD(v394), v399, v403, v407, v411);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16, v17, v18, v19, v20, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v404, v408, v412, v415, v417, v419, v421);
  if (!setjmp(v4))
  {
    OUTLINED_FUNCTION_25_27();
    if (!OUTLINED_FUNCTION_98_8(v21, v22, v23, v24, v25, v26, v27, v28, v266, v271, v276, v281, v286, v291, v296, v301, v306, v311, v316, v321, v326, v331, v336, v341, v346, v351, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v405, v409, v413, v416, v418, v420, v422))
    {
      v30 = OUTLINED_FUNCTION_46_16();
      OUTLINED_FUNCTION_82_11(v30, v31);
      v32 = OUTLINED_FUNCTION_49_16();
      get_parm(v32, v33, v3, -6);
      OUTLINED_FUNCTION_55_15(v34, v35, v36, v37, v38, v39, v40, v41, v267, v272, v277, v282, v287, v292, v297, v302, v307, v312, v317, v322, v327, v332, v337, v342, v347, v352, v357, v362, v367, v372, v377, v382, v387, v392, *v397, v397[4]);
      v42 = OUTLINED_FUNCTION_47_16();
      push_ptr_init(v42, v43);
      v44 = OUTLINED_FUNCTION_58_14();
      fence_38(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_84_11();
      fence_38(v47, v48, v49);
      v50 = OUTLINED_FUNCTION_105_6();
      starttest(v50, v51);
      OUTLINED_FUNCTION_27_25();
      bspush_ca_boa();
      v52 = OUTLINED_FUNCTION_22_27();
      if (lpta_loadp_setscan_r(v52, v53, v54))
      {
        v55 = 0;
      }

      else
      {
        v56 = OUTLINED_FUNCTION_8_37();
        if (testFldeq(v56, v57, v58, v59))
        {
          v55 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_31_22();
          bspush_ca_scan_boa();
          v60 = OUTLINED_FUNCTION_3_39();
          v55 = !testFldeq(v60, v61, v62, v63);
        }
      }

      LODWORD(v64) = v55;
      while (2)
      {
        v65 = *(v0 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_56_14(v65);
          v69 = v64;
        }

        else
        {
          v66 = vback(v0, v64);
          v69 = 0;
        }

        switch(v66)
        {
          case 1:
            v70 = OUTLINED_FUNCTION_88_10();
            starttest(v70, v71);
            OUTLINED_FUNCTION_0_41(v72, v73, v74, v75, v76, v77, v78, v79, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v402, v406, v410, v414);
            if (!lpta_tstmovel())
            {
              v80 = OUTLINED_FUNCTION_42_16();
              setscan_l(v80, v81, v82);
              if (!v83)
              {
                OUTLINED_FUNCTION_42_16();
                if (!test_string_s())
                {
                  goto LABEL_30;
                }
              }
            }

            goto LABEL_17;
          case 2:
            bspop_boa(v0);
            break;
          case 3:
            bspop_boa(v0);
            v163 = advance_tok(v0, v160, v161, v162);
            goto LABEL_80;
          case 4:
LABEL_17:
            v84 = OUTLINED_FUNCTION_38_18();
            starttest(v84, v85);
            v86 = OUTLINED_FUNCTION_20_29();
            if (lpta_loadp_setscan_r(v86, v87, v88) || advanc(v0))
            {
              goto LABEL_19;
            }

            v249 = OUTLINED_FUNCTION_4_38();
            v253 = testFldeq(v249, v250, v251, v252);
            LODWORD(v64) = v69;
            if (v253)
            {
              continue;
            }

            v254 = OUTLINED_FUNCTION_10_36();
            v257 = testFldeq(v254, v255, v256, 7);
            LODWORD(v64) = v69;
            if (v257)
            {
              continue;
            }

            v260 = advance_tok(v0, v69, v258, v259);
            LODWORD(v64) = v69;
            if (v260)
            {
              continue;
            }

            v156 = OUTLINED_FUNCTION_1_40();
            goto LABEL_60;
          case 5:
LABEL_30:
            v133 = OUTLINED_FUNCTION_13_35();
            v137 = test_synch(v133, v134, v135, v136);
            goto LABEL_62;
          case 6:
          case 28:
            goto LABEL_88;
          case 7:
LABEL_19:
            v89 = OUTLINED_FUNCTION_38_18();
            starttest(v89, v90);
            v91 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v91, v92, v93))
            {
              goto LABEL_20;
            }

            goto LABEL_25;
          case 8:
LABEL_20:
            v94 = OUTLINED_FUNCTION_38_18();
            starttest(v94, v95);
            v96 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v96, v97, v98))
            {
              goto LABEL_3;
            }

            v99 = OUTLINED_FUNCTION_34_19();
            bspush_ca_scan(v99, v100);
            v101 = OUTLINED_FUNCTION_10_36();
            v104 = testFldeq(v101, v102, v103, 28);
            LODWORD(v64) = v69;
            if (!v104)
            {
              v107 = advance_tok(v0, v69, v105, v106);
              LODWORD(v64) = v69;
              if (!v107)
              {
                goto LABEL_23;
              }
            }

            continue;
          case 9:
LABEL_25:
            OUTLINED_FUNCTION_45_16(9, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388);
            v116 = OUTLINED_FUNCTION_10_36();
            v119 = testFldeq(v116, v117, v118, 29);
            LODWORD(v64) = v69;
            if (!v119)
            {
              v122 = advance_tok(v0, v69, v120, v121);
              LODWORD(v64) = v69;
              if (!v122)
              {
                v123 = OUTLINED_FUNCTION_15_34();
                v126 = lpta_loadp_setscan_r(v123, v124, v125);
                LODWORD(v64) = v69;
                if (!v126)
                {
                  goto LABEL_28;
                }
              }
            }

            continue;
          case 10:
LABEL_28:
            v127 = OUTLINED_FUNCTION_13_35();
            v130 = chstream(v127, v128, v129);
            LODWORD(v64) = v69;
            if (v130)
            {
              continue;
            }

            v131 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v131, v132);
            OUTLINED_FUNCTION_17_34();
LABEL_40:
            v151 = test_string_s();
            LODWORD(v64) = v69;
            if (v151)
            {
              continue;
            }

LABEL_41:
            v152 = OUTLINED_FUNCTION_38_18();
            v154 = chstream(v152, v153, 4u);
            LODWORD(v64) = v69;
            if (v154)
            {
              continue;
            }

            v155 = advanc(v0);
            LODWORD(v64) = v69;
            if (v155)
            {
              continue;
            }

            v156 = OUTLINED_FUNCTION_10_36();
            v159 = 29;
            goto LABEL_60;
          case 11:
            OUTLINED_FUNCTION_17_34();
            v150 = test_string_s();
            LODWORD(v64) = v69;
            if (v150)
            {
              continue;
            }

            OUTLINED_FUNCTION_35_18();
            goto LABEL_40;
          case 12:
            goto LABEL_41;
          case 14:
LABEL_23:
            OUTLINED_FUNCTION_61_14(14, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v402, v406, v410);
            v108 = OUTLINED_FUNCTION_1_40();
            v112 = testFldeq(v108, v109, v110, v111);
            LODWORD(v64) = v69;
            if (v112)
            {
              continue;
            }

            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v113 = OUTLINED_FUNCTION_10_36();
LABEL_51:
            v170 = 3;
LABEL_79:
            v163 = testFldeq(v113, v114, v115, v170);
LABEL_80:
            if (v163)
            {
              LODWORD(v64) = v69;
            }

            else
            {
              LODWORD(v64) = 1;
            }

            continue;
          case 15:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v113 = OUTLINED_FUNCTION_10_36();
            v170 = 28;
            goto LABEL_79;
          case 16:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v113 = OUTLINED_FUNCTION_11_36();
            v170 = 2;
            goto LABEL_79;
          case 17:
            bspop_boa(v0);
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v113 = OUTLINED_FUNCTION_11_36();
            goto LABEL_51;
          case 18:
            bspop_boa(v0);
            v174 = advance_tok(v0, v171, v172, v173);
            LODWORD(v64) = v69;
            if (v174)
            {
              continue;
            }

            v175 = OUTLINED_FUNCTION_38_18();
            starttest(v175, v176);
            v177 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v177, v178, v179) || advance_tok(v0, v180, v181, v182))
            {
              goto LABEL_55;
            }

            v261 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v261, v262);
            goto LABEL_48;
          case 19:
LABEL_55:
            v183 = OUTLINED_FUNCTION_38_18();
            starttest(v183, v184);
            v193 = OUTLINED_FUNCTION_0_41(v185, v186, v187, v188, v189, v190, v191, v192, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v402, v406, v410, v414);
            setscan_nof_l(v193, 4, v194);
            if (v195)
            {
              goto LABEL_56;
            }

            goto LABEL_68;
          case 20:
            v164 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v164, v165);
            v142 = OUTLINED_FUNCTION_9_36();
            v145 = 6;
            goto LABEL_46;
          case 21:
            goto LABEL_48;
          case 22:
            v142 = OUTLINED_FUNCTION_10_36();
            v145 = 15;
LABEL_46:
            v166 = testFldeq(v142, v143, v144, v145);
            v64 = v69;
            if (!v166)
            {
              goto LABEL_47;
            }

            continue;
          case 23:
LABEL_47:
            v167 = advance_tok(v0, v64, v67, v68);
            LODWORD(v64) = v69;
            if (v167)
            {
              continue;
            }

LABEL_48:
            v168 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v168, v169);
            goto LABEL_49;
          case 24:
            v146 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v146, v147);
            v138 = OUTLINED_FUNCTION_4_38();
            goto LABEL_35;
          case 25:
            goto LABEL_49;
          case 26:
            v138 = OUTLINED_FUNCTION_3_39();
LABEL_35:
            v148 = testFldeq(v138, v139, v140, v141);
            v64 = v69;
            if (!v148)
            {
              goto LABEL_36;
            }

            continue;
          case 27:
LABEL_36:
            v149 = advance_tok(v0, v64, v67, v68);
            LODWORD(v64) = v69;
            if (v149)
            {
              continue;
            }

LABEL_49:
            v156 = OUTLINED_FUNCTION_2_39();
            goto LABEL_60;
          case 29:
LABEL_56:
            v196 = OUTLINED_FUNCTION_38_18();
            starttest(v196, v197);
            v206 = OUTLINED_FUNCTION_0_41(v198, v199, v200, v201, v202, v203, v204, v205, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v402, v406, v410, v414);
            setscan_nof_l(v206, 4, v207);
            if (v208)
            {
              goto LABEL_57;
            }

            goto LABEL_64;
          case 30:
LABEL_68:
            OUTLINED_FUNCTION_45_16(30, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388);
            goto LABEL_69;
          case 31:
LABEL_69:
            v228 = OUTLINED_FUNCTION_13_35();
            v231 = chstream(v228, v229, v230);
            LODWORD(v64) = v69;
            if (v231)
            {
              continue;
            }

            v232 = OUTLINED_FUNCTION_33_21();
            bspush_ca_scan(v232, v233);
            OUTLINED_FUNCTION_42_16();
LABEL_71:
            v234 = test_string_s();
            LODWORD(v64) = v69;
            if (v234)
            {
              continue;
            }

LABEL_72:
            v235 = test_synch(v0, 33, 1, &unk_28064B999);
            LODWORD(v64) = v69;
            if (v235)
            {
              continue;
            }

            *(v0 + 136) = 1;
            v236 = OUTLINED_FUNCTION_5_37();
            v239 = setscan_nof_r(v236, v237, v238);
            LODWORD(v64) = v69;
            if (v239)
            {
              continue;
            }

            v240 = OUTLINED_FUNCTION_9_36();
            v243 = testFldeq(v240, v241, v242, 6);
            LODWORD(v64) = v69;
            if (v243)
            {
              continue;
            }

            v244 = OUTLINED_FUNCTION_8_37();
            v248 = testFldeq(v244, v245, v246, v247);
            LODWORD(v64) = v69;
            if (v248)
            {
              continue;
            }

            v156 = OUTLINED_FUNCTION_10_36();
            v159 = 19;
LABEL_60:
            v217 = testFldeq(v156, v157, v158, v159);
            LODWORD(v64) = v69;
            if (v217)
            {
              continue;
            }

            v137 = advance_tok(v0, v69, v218, v219);
LABEL_62:
            LODWORD(v64) = v69;
            if (v137)
            {
              continue;
            }

LABEL_88:
            v263 = HIWORD(v398);
LABEL_90:
            *(v2 + 8) = v414;
            *(v1 + 2) = v263;
            break;
          case 32:
            OUTLINED_FUNCTION_42_16();
            goto LABEL_71;
          case 33:
            goto LABEL_72;
          case 34:
LABEL_57:
            v209 = OUTLINED_FUNCTION_38_18();
            starttest(v209, v210);
            v211 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v211, v212, v213) || advance_tok(v0, v214, v215, v216))
            {
              goto LABEL_89;
            }

            v156 = OUTLINED_FUNCTION_11_36();
            v159 = 9;
            goto LABEL_60;
          case 35:
LABEL_64:
            v220 = OUTLINED_FUNCTION_13_35();
            v223 = chstream(v220, v221, v222);
            LODWORD(v64) = v69;
            if (!v223)
            {
              OUTLINED_FUNCTION_42_16();
              v224 = test_string_s();
              LODWORD(v64) = v69;
              if (!v224)
              {
                goto LABEL_66;
              }
            }

            continue;
          case 36:
LABEL_66:
            v225 = OUTLINED_FUNCTION_38_18();
            v227 = chstream(v225, v226, 4u);
            LODWORD(v64) = v69;
            if (v227)
            {
              continue;
            }

            v156 = OUTLINED_FUNCTION_10_36();
            v159 = 23;
            goto LABEL_60;
          case 37:
LABEL_89:
            v263 = 2;
            goto LABEL_90;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_103_7();
}

uint64_t prep_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_16_34();
  v735 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v3, v4, v5, v6, v7, v8, v9, v10, v586, v591, v596, v601, v606, v611, v616, v621, v626, v631, v636, v641, v646, v651, v656, v661, v666, v671, v676, v681, v686, v691, v696, v701, v706, v711, v716, SHIDWORD(v716), v721, v725, v729, v730);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v11, v12, v13, v14, v15, v16, v17, v18, v587, v592, v597, v602, v607, v612, v617, v622, v627, v632, v637, v642, v647, v652, v657, v662, v667, v672, v677, v682, v687, v692, v697, v702, v707, v712, v717, v722, v726, v729, v730, v731, v732, v733, v734);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (OUTLINED_FUNCTION_98_8(v19, v20, v21, v22, v23, v24, v25, v26, v588, v593, v598, v603, v608, v613, v618, v623, v628, v633, v638, v643, v648, v653, v658, v663, v668, v673, v678, v683, v688, v693, v698, v703, v708, v713, v718, v723, v727, v729, v730, v731, v732, v733, v734))
  {
    goto LABEL_3;
  }

  v28 = &v729;
  OUTLINED_FUNCTION_43_16();
  v29 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v29, v30);
  OUTLINED_FUNCTION_55_15(v31, v32, v33, v34, v35, v36, v37, v38, v589, v594, v599, v604, v609, v614, v619, v624, v629, v634, v639, v644, v649, v654, v659, v664, v669, v674, v679, v684, v689, v694, v699, v704, v709, v714, *v719, v719[4]);
  v39 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v39, v40);
  v41 = OUTLINED_FUNCTION_58_14();
  fence_38(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_62_13();
  fence_38(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_89_10();
  starttest(v47, v48);
  OUTLINED_FUNCTION_27_25();
  bspush_ca_boa();
  v49 = OUTLINED_FUNCTION_22_27();
  if (lpta_loadp_setscan_r(v49, v50, v51))
  {
    v52 = 0;
  }

  else
  {
    v53 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v53, v54, v55, v56))
    {
      v52 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_31_22();
      bspush_ca_scan_boa();
      v57 = OUTLINED_FUNCTION_10_36();
      v52 = !testFldeq(v57, v58, v59, 21);
    }
  }

  LODWORD(v60) = v52;
  while (2)
  {
    v61 = *(v1 + 104);
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_56_14(v61);
      v69 = v60;
    }

    else
    {
      v62 = vback(v1, v60);
      v69 = 0;
    }

    switch(v62)
    {
      case 1:
        v111 = OUTLINED_FUNCTION_44_16();
        if (!lpta_loadp_setscan_r(v111, v112, v113))
        {
          OUTLINED_FUNCTION_42_16();
          v62 = test_string_s();
          if (!v62)
          {
            goto LABEL_222;
          }
        }

        goto LABEL_31;
      case 2:
        bspop_boa(v1);
        goto LABEL_3;
      case 3:
        bspop_boa(v1);
        LOBYTE(v28) = 4;
        bspush_ca_scan_boa();
        v102 = v1;
        v103 = 4;
        v104 = 2;
        v105 = 23;
        goto LABEL_140;
      case 4:
        bspop_boa(v1);
        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v102 = OUTLINED_FUNCTION_10_36();
        v105 = 18;
        goto LABEL_140;
      case 5:
        bspop_boa(v1);
        goto LABEL_203;
      case 6:
LABEL_31:
        v114 = OUTLINED_FUNCTION_38_18();
        starttest(v114, v115);
        v116 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v116, v117, v118))
        {
          goto LABEL_32;
        }

        v475 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v475, v476);
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 21;
        goto LABEL_170;
      case 7:
        goto LABEL_39;
      case 8:
LABEL_32:
        v119 = OUTLINED_FUNCTION_38_18();
        starttest(v119, v120);
        v121 = OUTLINED_FUNCTION_44_16();
        if (lpta_loadp_setscan_l(v121, v122, v123))
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_42_16();
        if (test_string_s())
        {
          goto LABEL_34;
        }

        goto LABEL_123;
      case 9:
        v471 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v471, v472);
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 23;
        goto LABEL_170;
      case 10:
      case 87:
      case 95:
        goto LABEL_171;
      case 11:
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 18;
        goto LABEL_170;
      case 12:
LABEL_34:
        v124 = OUTLINED_FUNCTION_34_19();
        starttest(v124, v125);
        v126 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v126, v127, v128))
        {
          goto LABEL_35;
        }

        goto LABEL_88;
      case 13:
      case 24:
        goto LABEL_123;
      case 14:
LABEL_35:
        v129 = OUTLINED_FUNCTION_38_18();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v131, v132, v133))
        {
          goto LABEL_36;
        }

        goto LABEL_95;
      case 15:
LABEL_88:
        OUTLINED_FUNCTION_45_16(15, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        v277 = OUTLINED_FUNCTION_4_38();
        v281 = testFldeq(v277, v278, v279, v280);
        LODWORD(v60) = v69;
        if (!v281)
        {
          v284 = advance_tok(v1, v69, v282, v283);
          LODWORD(v60) = v69;
          if (!v284)
          {
            v285 = OUTLINED_FUNCTION_2_39();
            v289 = testFldeq(v285, v286, v287, v288);
            LODWORD(v60) = v69;
            if (!v289)
            {
              v292 = advance_tok(v1, v69, v290, v291);
              LODWORD(v60) = v69;
              if (!v292)
              {
                v293 = OUTLINED_FUNCTION_15_34();
                v296 = lpta_loadp_setscan_r(v293, v294, v295);
                LODWORD(v60) = v69;
                if (!v296)
                {
                  goto LABEL_93;
                }
              }
            }
          }
        }

        continue;
      case 16:
LABEL_93:
        v297 = OUTLINED_FUNCTION_13_35();
        v300 = chstream(v297, v298, v299);
        LODWORD(v60) = v69;
        if (v300)
        {
          continue;
        }

        v301 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v301, v302);
        OUTLINED_FUNCTION_35_18();
        goto LABEL_159;
      case 17:
        v453 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v453, v454);
        goto LABEL_158;
      case 18:
        goto LABEL_160;
      case 19:
LABEL_158:
        OUTLINED_FUNCTION_28_24();
LABEL_159:
        v455 = test_string_s();
        LODWORD(v60) = v69;
        if (v455)
        {
          continue;
        }

LABEL_160:
        v456 = OUTLINED_FUNCTION_38_18();
        v458 = chstream(v456, v457, 4u);
        LODWORD(v60) = v69;
        if (v458)
        {
          continue;
        }

        v62 = advanc(v1);
        goto LABEL_172;
      case 20:
LABEL_36:
        v134 = OUTLINED_FUNCTION_38_18();
        starttest(v134, v135);
        v136 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v136, v137, v138))
        {
          goto LABEL_37;
        }

        goto LABEL_100;
      case 21:
LABEL_95:
        OUTLINED_FUNCTION_45_16(21, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        v303 = OUTLINED_FUNCTION_3_39();
        v307 = testFldeq(v303, v304, v305, v306);
        LODWORD(v60) = v69;
        if (!v307)
        {
          v310 = advance_tok(v1, v69, v308, v309);
          LODWORD(v60) = v69;
          if (!v310)
          {
            v311 = OUTLINED_FUNCTION_15_34();
            v314 = lpta_loadp_setscan_r(v311, v312, v313);
            LODWORD(v60) = v69;
            if (!v314)
            {
              goto LABEL_98;
            }
          }
        }

        continue;
      case 22:
LABEL_98:
        v315 = OUTLINED_FUNCTION_13_35();
        v318 = chstream(v315, v316, v317);
        LODWORD(v60) = v69;
        if (v318)
        {
          continue;
        }

        v319 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v319, v320);
        OUTLINED_FUNCTION_42_16();
LABEL_122:
        v371 = test_string_s();
        LODWORD(v60) = v69;
        if (v371)
        {
          continue;
        }

LABEL_123:
        v372 = OUTLINED_FUNCTION_13_35();
        v62 = test_synch(v372, v373, v374, v375);
        goto LABEL_172;
      case 23:
        OUTLINED_FUNCTION_42_16();
        goto LABEL_122;
      case 25:
LABEL_37:
        v139 = OUTLINED_FUNCTION_21_28();
        if (!lpta_loadp_setscan_r(v139, v140, v141))
        {
          OUTLINED_FUNCTION_42_16();
          v62 = test_string_s();
          if (!v62)
          {
            goto LABEL_222;
          }
        }

LABEL_39:
        v142 = OUTLINED_FUNCTION_33_21();
        starttest(v142, v143);
        v144 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v144, v145, v146))
        {
          goto LABEL_40;
        }

        goto LABEL_73;
      case 26:
LABEL_100:
        OUTLINED_FUNCTION_45_16(26, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        v321 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v321, v322);
        goto LABEL_101;
      case 27:
        v459 = OUTLINED_FUNCTION_10_36();
        v462 = testFldeq(v459, v460, v461, 8);
        LODWORD(v60) = v69;
        if (v462)
        {
          continue;
        }

        v463 = OUTLINED_FUNCTION_4_38();
        v467 = testFldeq(v463, v464, v465, v466);
        LODWORD(v60) = v69;
        if (v467)
        {
          continue;
        }

        v470 = advance_tok(v1, v69, v468, v469);
        LODWORD(v60) = v69;
        if (v470)
        {
          continue;
        }

        goto LABEL_101;
      case 28:
LABEL_101:
        v323 = OUTLINED_FUNCTION_2_39();
        v327 = testFldeq(v323, v324, v325, v326);
        LODWORD(v60) = v69;
        if (!v327)
        {
          v330 = advance_tok(v1, v69, v328, v329);
          LODWORD(v60) = v69;
          if (!v330)
          {
            v331 = OUTLINED_FUNCTION_15_34();
            v334 = lpta_loadp_setscan_r(v331, v332, v333);
            LODWORD(v60) = v69;
            if (!v334)
            {
              v337 = advance_tok(v1, v69, v335, v336);
              LODWORD(v60) = v69;
              if (!v337)
              {
                goto LABEL_20;
              }
            }
          }
        }

        continue;
      case 29:
        v414 = OUTLINED_FUNCTION_9_36();
        v417 = testFldeq(v414, v415, v416, 6);
        LODWORD(v60) = v69;
        if (v417)
        {
          continue;
        }

        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v102 = OUTLINED_FUNCTION_3_39();
LABEL_140:
        v418 = testFldeq(v102, v103, v104, v105);
        goto LABEL_204;
      case 30:
        goto LABEL_135;
      case 31:
        bspop_boa(v1);
        v411 = advance_tok(v1, v408, v409, v410);
        LODWORD(v60) = v69;
        if (v411)
        {
          continue;
        }

        goto LABEL_135;
      case 32:
LABEL_40:
        v147 = OUTLINED_FUNCTION_38_18();
        starttest(v147, v148);
        v149 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_r(v149, v150, v151))
        {
          goto LABEL_41;
        }

        v343 = OUTLINED_FUNCTION_11_36();
        v346 = testFldeq(v343, v344, v345, 12);
        LODWORD(v60) = v69;
        if (!v346)
        {
          v349 = advance_tok(v1, v69, v347, v348);
          LODWORD(v60) = v69;
          if (!v349)
          {
            goto LABEL_212;
          }
        }

        continue;
      case 33:
LABEL_73:
        OUTLINED_FUNCTION_45_16(33, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        goto LABEL_74;
      case 34:
LABEL_74:
        v241 = OUTLINED_FUNCTION_13_35();
        v244 = chstream(v241, v242, v243);
        LODWORD(v60) = v69;
        if (!v244)
        {
          OUTLINED_FUNCTION_75_13();
          v245 = test_string_s();
          LODWORD(v60) = v69;
          if (!v245)
          {
            *(v1 + 136) = v28;
            v252 = OUTLINED_FUNCTION_7_37(v245, v69, v246, v247, v248, v249, v250, v251, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724, v728, v729, v730);
            v255 = test_ptr(v252, v253, v254);
            LODWORD(v60) = v69;
            if (!v255)
            {
              goto LABEL_77;
            }
          }
        }

        continue;
      case 35:
LABEL_77:
        v256 = OUTLINED_FUNCTION_38_18();
        v258 = chstream(v256, v257, 4u);
        LODWORD(v60) = v69;
        if (!v258)
        {
          goto LABEL_200;
        }

        continue;
      case 36:
        bspop_boa(v1);
        v419 = OUTLINED_FUNCTION_15_34();
        v422 = lpta_loadp_setscan_r(v419, v420, v421);
        LODWORD(v60) = v69;
        if (v422)
        {
          continue;
        }

        v423 = OUTLINED_FUNCTION_10_36();
        v426 = testFldeq(v423, v424, v425, 21);
        LODWORD(v60) = v69;
        if (v426)
        {
          continue;
        }

        v429 = advance_tok(v1, v69, v427, v428);
        LODWORD(v60) = v69;
        if (v429)
        {
          continue;
        }

        goto LABEL_144;
      case 37:
      case 69:
      case 81:
        v70 = OUTLINED_FUNCTION_10_36();
        v73 = testFldeq(v70, v71, v72, 8);
        LODWORD(v60) = v69;
        if (v73)
        {
          continue;
        }

        v74 = OUTLINED_FUNCTION_4_38();
        v78 = testFldeq(v74, v75, v76, v77);
        LODWORD(v60) = v69;
        if (v78)
        {
          continue;
        }

        v81 = advance_tok(v1, v69, v79, v80);
        LODWORD(v60) = v69;
        if (v81)
        {
          continue;
        }

        goto LABEL_201;
      case 38:
      case 70:
      case 82:
        goto LABEL_201;
      case 39:
LABEL_144:
        OUTLINED_FUNCTION_79_12(39, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724);
        goto LABEL_145;
      case 40:
      case 47:
      case 52:
      case 65:
        goto LABEL_193;
      case 41:
LABEL_41:
        v152 = OUTLINED_FUNCTION_38_18();
        starttest(v152, v153);
        v154 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v154, v155, v156))
        {
          goto LABEL_42;
        }

        v350 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v350, v351);
        OUTLINED_FUNCTION_28_24();
        goto LABEL_113;
      case 42:
LABEL_42:
        v157 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v157, v158, v159))
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_28_24();
        if (test_string_s())
        {
          goto LABEL_44;
        }

        v562 = OUTLINED_FUNCTION_38_18();
        starttest(v562, v563);
        v564 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v564, v565, v566))
        {
          goto LABEL_191;
        }

        v567 = OUTLINED_FUNCTION_1_40();
        v571 = testFldeq(v567, v568, v569, v570);
        LODWORD(v60) = v69;
        if (v571)
        {
          continue;
        }

        v574 = advance_tok(v1, v69, v572, v573);
        LODWORD(v60) = v69;
        if (v574)
        {
          continue;
        }

        v108 = OUTLINED_FUNCTION_8_37();
        goto LABEL_170;
      case 43:
        OUTLINED_FUNCTION_35_18();
LABEL_113:
        v352 = test_string_s();
        LODWORD(v60) = v69;
        if (!v352)
        {
          goto LABEL_114;
        }

        continue;
      case 44:
LABEL_114:
        OUTLINED_FUNCTION_54_15();
        v353 = OUTLINED_FUNCTION_14_35();
        v356 = test_ptr(v353, v354, v355);
        LODWORD(v60) = v69;
        if (v356)
        {
          continue;
        }

        v357 = OUTLINED_FUNCTION_38_18();
        starttest(v357, v358);
        v359 = OUTLINED_FUNCTION_20_29();
        if (!lpta_loadp_setscan_r(v359, v360, v361))
        {
          v575 = OUTLINED_FUNCTION_9_36();
          v578 = testFldeq(v575, v576, v577, 4);
          LODWORD(v60) = v69;
          if (!v578)
          {
            v579 = OUTLINED_FUNCTION_11_36();
            v582 = testFldeq(v579, v580, v581, 9);
            LODWORD(v60) = v69;
            if (!v582)
            {
              v585 = advance_tok(v1, v69, v583, v584);
              LODWORD(v60) = v69;
              if (!v585)
              {
                OUTLINED_FUNCTION_38_18();
                bspush_ca_scan_boa();
                v550 = OUTLINED_FUNCTION_11_36();
LABEL_202:
                v553 = testFldeq(v550, v551, v552, 1);
                v60 = v69;
                if (!v553)
                {
LABEL_203:
                  v418 = advance_tok(v1, v60, v406, v407);
LABEL_204:
                  if (v418)
                  {
                    LODWORD(v60) = v69;
                  }

                  else
                  {
                    LODWORD(v60) = 1;
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_116:
        v362 = OUTLINED_FUNCTION_38_18();
        starttest(v362, v363);
        v364 = OUTLINED_FUNCTION_12_36();
        v62 = lpta_loadp_setscan_l(v364, v365, v366);
        if (!v62)
        {
          v478 = OUTLINED_FUNCTION_11_36();
          v481 = testFldeq(v478, v479, v480, 3);
          LODWORD(v60) = v69;
          if (!v481)
          {
            v484 = advance_tok(v1, v69, v482, v483);
            LODWORD(v60) = v69;
            if (!v484)
            {
              goto LABEL_193;
            }
          }

          continue;
        }

LABEL_117:
        OUTLINED_FUNCTION_0_41(v62, v60, v63, v64, v65, v66, v67, v68, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724, v728, v729, v730);
        if (lpta_tstmovel() || (v367 = OUTLINED_FUNCTION_42_16(), setscan_l(v367, v368, v369), v370) || (OUTLINED_FUNCTION_42_16(), test_string_s()))
        {
LABEL_145:
          v430 = 3;
LABEL_192:
          HIWORD(v720) = v430;
        }

LABEL_193:
        v522 = OUTLINED_FUNCTION_38_18();
        starttest(v522, v523);
        v524 = OUTLINED_FUNCTION_12_36();
        v62 = lpta_loadp_setscan_l(v524, v525, v526);
        if (v62)
        {
          goto LABEL_222;
        }

        v527 = OUTLINED_FUNCTION_6_37();
        v531 = testFldeq(v527, v528, v529, v530);
        LODWORD(v60) = v69;
        if (v531)
        {
          continue;
        }

        v534 = advance_tok(v1, v69, v532, v533);
        LODWORD(v60) = v69;
        if (v534)
        {
          continue;
        }

        v535 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v535, v536);
        v537 = OUTLINED_FUNCTION_10_36();
        v540 = testFldeq(v537, v538, v539, 13);
        LODWORD(v60) = v69;
        if (v540)
        {
          continue;
        }

        v543 = advance_tok(v1, v69, v541, v542);
        LODWORD(v60) = v69;
        if (v543)
        {
          continue;
        }

LABEL_221:
        OUTLINED_FUNCTION_61_14(109, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724, v728, v729);
LABEL_222:
        OUTLINED_FUNCTION_50_16(v62, v60, v63, v64, v65, v66, v67, v68, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, SWORD2(v720), SHIWORD(v720), v724, v728, v729, v730);
LABEL_3:
        vretproc(v1);
        return OUTLINED_FUNCTION_103_7();
      case 45:
        goto LABEL_116;
      case 46:
        bspop_boa(v1);
        goto LABEL_193;
      case 48:
        goto LABEL_117;
      case 49:
        goto LABEL_145;
      case 50:
LABEL_44:
        v160 = OUTLINED_FUNCTION_38_18();
        starttest(v160, v161);
        v162 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_r(v162, v163, v164))
        {
          goto LABEL_45;
        }

        goto LABEL_79;
      case 51:
      case 74:
      case 98:
        goto LABEL_191;
      case 53:
LABEL_45:
        v165 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v165, v166, v167))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_35_18();
        if (test_string_s())
        {
          goto LABEL_47;
        }

        v485 = OUTLINED_FUNCTION_38_18();
        starttest(v485, v486);
        v487 = OUTLINED_FUNCTION_20_29();
        if (!lpta_loadp_setscan_r(v487, v488, v489) && !advanc(v1))
        {
          goto LABEL_179;
        }

        goto LABEL_181;
      case 54:
LABEL_79:
        OUTLINED_FUNCTION_45_16(54, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        goto LABEL_80;
      case 55:
LABEL_80:
        v259 = OUTLINED_FUNCTION_13_35();
        v262 = chstream(v259, v260, v261);
        LODWORD(v60) = v69;
        if (!v262)
        {
          OUTLINED_FUNCTION_17_34();
          v263 = test_string_s();
          LODWORD(v60) = v69;
          if (!v263)
          {
            v264 = OUTLINED_FUNCTION_15_34();
            v267 = lpta_loadp_setscan_l(v264, v265, v266);
            LODWORD(v60) = v69;
            if (!v267)
            {
              v268 = advanc(v1);
              LODWORD(v60) = v69;
              if (!v268)
              {
                goto LABEL_84;
              }
            }
          }
        }

        continue;
      case 56:
LABEL_84:
        v269 = OUTLINED_FUNCTION_13_35();
        v272 = chstream(v269, v270, v271);
        LODWORD(v60) = v69;
        if (!v272)
        {
          OUTLINED_FUNCTION_35_18();
          v273 = test_string_s();
          LODWORD(v60) = v69;
          if (!v273)
          {
            goto LABEL_86;
          }
        }

        continue;
      case 57:
LABEL_86:
        v274 = OUTLINED_FUNCTION_38_18();
        v276 = chstream(v274, v275, 4u);
        LODWORD(v60) = v69;
        if (!v276)
        {
          goto LABEL_87;
        }

        continue;
      case 58:
LABEL_87:
        v222 = 58;
        goto LABEL_190;
      case 59:
LABEL_47:
        v168 = OUTLINED_FUNCTION_38_18();
        starttest(v168, v169);
        v170 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v170, v171, v172))
        {
          goto LABEL_48;
        }

        goto LABEL_67;
      case 60:
        goto LABEL_181;
      case 61:
LABEL_179:
        savescptr(v1, 61, v1 + 1768);
        v493 = advance_tok(v1, v490, v491, v492);
        LODWORD(v60) = v69;
        if (!v493)
        {
          goto LABEL_180;
        }

        continue;
      case 62:
LABEL_180:
        savescptr(v1, 62, v1 + 1784);
LABEL_181:
        v494 = OUTLINED_FUNCTION_44_16();
        if (lpta_loadp_setscan_r(v494, v495, v496))
        {
          goto LABEL_184;
        }

        OUTLINED_FUNCTION_75_13();
        if (test_string_s())
        {
          goto LABEL_184;
        }

        *(v1 + 136) = v28;
        v497 = OUTLINED_FUNCTION_14_35();
        if (test_ptr(v497, v498, v499))
        {
          goto LABEL_184;
        }

        goto LABEL_210;
      case 63:
LABEL_184:
        v500 = OUTLINED_FUNCTION_38_18();
        starttest(v500, v501);
        v502 = OUTLINED_FUNCTION_20_29();
        if (lpta_loadp_setscan_l(v502, v503, v504))
        {
          goto LABEL_185;
        }

        goto LABEL_199;
      case 64:
LABEL_210:
        v446 = 64;
        goto LABEL_211;
      case 66:
LABEL_185:
        v505 = OUTLINED_FUNCTION_38_18();
        starttest(v505, v506);
        v507 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v507, v508, v509))
        {
          goto LABEL_186;
        }

        v554 = OUTLINED_FUNCTION_1_40();
        v558 = testFldeq(v554, v555, v556, v557);
        LODWORD(v60) = v69;
        if (v558)
        {
          continue;
        }

        v561 = advance_tok(v1, v69, v559, v560);
        LODWORD(v60) = v69;
        if (v561)
        {
          continue;
        }

        HIWORD(v720) = 0;
        goto LABEL_193;
      case 67:
LABEL_199:
        OUTLINED_FUNCTION_45_16(67, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        v547 = advance_tok(v1, v544, v545, v546);
        LODWORD(v60) = v69;
        if (!v547)
        {
          goto LABEL_200;
        }

        continue;
      case 68:
        bspop_boa(v1);
        v376 = OUTLINED_FUNCTION_15_34();
        v379 = lpta_loadp_setscan_r(v376, v377, v378);
        LODWORD(v60) = v69;
        if (v379)
        {
          continue;
        }

        v380 = OUTLINED_FUNCTION_9_36();
        v383 = testFldeq(v380, v381, v382, 6);
        LODWORD(v60) = v69;
        if (v383)
        {
          continue;
        }

        v384 = OUTLINED_FUNCTION_8_37();
        v388 = testFldeq(v384, v385, v386, v387);
        LODWORD(v60) = v69;
        if (v388)
        {
          continue;
        }

        v389 = OUTLINED_FUNCTION_10_36();
        v392 = testFldeq(v389, v390, v391, 19);
        LODWORD(v60) = v69;
        if (v392)
        {
          continue;
        }

        v395 = advance_tok(v1, v69, v393, v394);
        LODWORD(v60) = v69;
        if (v395)
        {
          continue;
        }

        v396 = OUTLINED_FUNCTION_1_40();
        v400 = testFldeq(v396, v397, v398, v399);
        LODWORD(v60) = v69;
        if (v400)
        {
          continue;
        }

        v403 = advance_tok(v1, v69, v401, v402);
        LODWORD(v60) = v69;
        if (v403)
        {
          continue;
        }

        v404 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v404, v405);
        goto LABEL_23;
      case 71:
        v86 = OUTLINED_FUNCTION_1_40();
        v90 = testFldeq(v86, v87, v88, v89);
        LODWORD(v60) = v69;
        if (v90)
        {
          continue;
        }

        v93 = advance_tok(v1, v69, v91, v92);
        LODWORD(v60) = v69;
        if (v93)
        {
          continue;
        }

        goto LABEL_23;
      case 72:
LABEL_23:
        v94 = OUTLINED_FUNCTION_6_37();
        v98 = testFldeq(v94, v95, v96, v97);
        LODWORD(v60) = v69;
        if (!v98)
        {
          v101 = advance_tok(v1, v69, v99, v100);
          LODWORD(v60) = v69;
          if (!v101)
          {
            goto LABEL_145;
          }
        }

        continue;
      case 73:
LABEL_186:
        v510 = OUTLINED_FUNCTION_38_18();
        starttest(v510, v511);
        v512 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v512, v513, v514))
        {
          goto LABEL_191;
        }

        v515 = OUTLINED_FUNCTION_11_36();
        v518 = testFldeq(v515, v516, v517, 2);
        LODWORD(v60) = v69;
        if (v518)
        {
          continue;
        }

        v521 = advance_tok(v1, v69, v519, v520);
        LODWORD(v60) = v69;
        if (v521)
        {
          continue;
        }

LABEL_189:
        v222 = 75;
        goto LABEL_190;
      case 75:
        goto LABEL_189;
      case 76:
LABEL_48:
        v173 = OUTLINED_FUNCTION_21_28();
        if (lpta_loadp_setscan_r(v173, v174, v175))
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_75_13();
        if (test_string_s())
        {
          goto LABEL_51;
        }

        *(v1 + 136) = v28;
        v176 = OUTLINED_FUNCTION_14_35();
        if (test_ptr(v176, v177, v178))
        {
          goto LABEL_51;
        }

        goto LABEL_145;
      case 77:
LABEL_67:
        OUTLINED_FUNCTION_45_16(77, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        goto LABEL_68;
      case 78:
LABEL_68:
        v223 = OUTLINED_FUNCTION_13_35();
        v226 = chstream(v223, v224, v225);
        LODWORD(v60) = v69;
        if (!v226)
        {
          OUTLINED_FUNCTION_75_13();
          v227 = test_string_s();
          LODWORD(v60) = v69;
          if (!v227)
          {
            *(v1 + 136) = v28;
            v234 = OUTLINED_FUNCTION_7_37(v227, v69, v228, v229, v230, v231, v232, v233, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724, v728, v729, v730);
            v237 = test_ptr(v234, v235, v236);
            LODWORD(v60) = v69;
            if (!v237)
            {
              goto LABEL_71;
            }
          }
        }

        continue;
      case 79:
LABEL_71:
        v238 = OUTLINED_FUNCTION_38_18();
        v240 = chstream(v238, v239, 4u);
        LODWORD(v60) = v69;
        if (v240)
        {
          continue;
        }

LABEL_200:
        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v548 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v548, v549);
LABEL_201:
        v550 = OUTLINED_FUNCTION_9_36();
        goto LABEL_202;
      case 80:
        bspop_boa(v1);
        v435 = OUTLINED_FUNCTION_15_34();
        v438 = lpta_loadp_setscan_r(v435, v436, v437);
        LODWORD(v60) = v69;
        if (v438)
        {
          continue;
        }

        v439 = OUTLINED_FUNCTION_11_36();
        v442 = testFldeq(v439, v440, v441, 1);
        LODWORD(v60) = v69;
        if (v442)
        {
          continue;
        }

        v445 = advance_tok(v1, v69, v443, v444);
        LODWORD(v60) = v69;
        if (v445)
        {
          continue;
        }

        goto LABEL_152;
      case 83:
LABEL_152:
        v446 = 83;
LABEL_211:
        OUTLINED_FUNCTION_79_12(v446, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724);
LABEL_212:
        v430 = 2;
        goto LABEL_192;
      case 84:
LABEL_51:
        v179 = OUTLINED_FUNCTION_38_18();
        starttest(v179, v180);
        v181 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v181, v182, v183))
        {
          goto LABEL_52;
        }

        v338 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v338, v339);
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 1;
        goto LABEL_170;
      case 85:
LABEL_52:
        v184 = OUTLINED_FUNCTION_38_18();
        starttest(v184, v185);
        v186 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_l(v186, v187, v188))
        {
          goto LABEL_53;
        }

        v341 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v341, v342);
        v108 = OUTLINED_FUNCTION_9_36();
        v340 = 5;
        goto LABEL_170;
      case 86:
        v412 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v412, v413);
        v108 = OUTLINED_FUNCTION_10_36();
        goto LABEL_137;
      case 88:
        v447 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v447, v448);
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 3;
        goto LABEL_170;
      case 89:
        v106 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v106, v107);
        v108 = OUTLINED_FUNCTION_11_36();
        goto LABEL_137;
      case 90:
LABEL_20:
        v84 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v84, v85);
LABEL_135:
        v108 = OUTLINED_FUNCTION_9_36();
LABEL_137:
        v340 = 2;
        goto LABEL_170;
      case 91:
        v473 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v473, v474);
        v108 = OUTLINED_FUNCTION_9_36();
        goto LABEL_170;
      case 92:
        v449 = OUTLINED_FUNCTION_9_36();
        v452 = testFldeq(v449, v450, v451, 4);
        LODWORD(v60) = v69;
        if (v452)
        {
          continue;
        }

        v108 = OUTLINED_FUNCTION_11_36();
        goto LABEL_156;
      case 93:
LABEL_53:
        v189 = OUTLINED_FUNCTION_38_18();
        starttest(v189, v190);
        v191 = OUTLINED_FUNCTION_12_36();
        if (!lpta_loadp_setscan_r(v191, v192, v193))
        {
          goto LABEL_54;
        }

        goto LABEL_191;
      case 94:
        v433 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v433, v434);
        v108 = OUTLINED_FUNCTION_10_36();
        v340 = 6;
        goto LABEL_170;
      case 96:
        v431 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v431, v432);
        v108 = OUTLINED_FUNCTION_11_36();
        v340 = 12;
        goto LABEL_170;
      case 97:
        v108 = OUTLINED_FUNCTION_9_36();
LABEL_156:
        v340 = 9;
LABEL_170:
        v477 = testFldeq(v108, v109, v110, v340);
        v60 = v69;
        if (v477)
        {
          continue;
        }

LABEL_171:
        v62 = advance_tok(v1, v60, v63, v64);
LABEL_172:
        v60 = v69;
        if (!v62)
        {
          goto LABEL_222;
        }

        continue;
      case 99:
LABEL_54:
        OUTLINED_FUNCTION_45_16(99, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710);
        goto LABEL_55;
      case 100:
LABEL_55:
        v194 = OUTLINED_FUNCTION_13_35();
        v197 = chstream(v194, v195, v196);
        LODWORD(v60) = v69;
        if (v197)
        {
          continue;
        }

        v198 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v198, v199);
LABEL_57:
        OUTLINED_FUNCTION_35_18();
LABEL_58:
        v200 = test_string_s();
        LODWORD(v60) = v69;
        if (v200)
        {
          continue;
        }

LABEL_59:
        v201 = OUTLINED_FUNCTION_38_18();
        v203 = chstream(v201, v202, 4u);
        LODWORD(v60) = v69;
        if (v203)
        {
          continue;
        }

LABEL_60:
        v204 = OUTLINED_FUNCTION_13_35();
        v208 = test_synch(v204, v205, v206, v207);
        LODWORD(v60) = v69;
        if (v208)
        {
          continue;
        }

        v209 = OUTLINED_FUNCTION_15_34();
        v212 = lpta_loadp_setscan_l(v209, v210, v211);
        LODWORD(v60) = v69;
        if (v212)
        {
          continue;
        }

        v213 = advanc(v1);
        LODWORD(v60) = v69;
        if (v213)
        {
          continue;
        }

LABEL_63:
        v214 = OUTLINED_FUNCTION_13_35();
        v217 = chstream(v214, v215, v216);
        LODWORD(v60) = v69;
        if (v217)
        {
          continue;
        }

        OUTLINED_FUNCTION_28_24();
        v218 = test_string_s();
        LODWORD(v60) = v69;
        if (v218)
        {
          continue;
        }

LABEL_65:
        v219 = OUTLINED_FUNCTION_38_18();
        v221 = chstream(v219, v220, 4u);
        LODWORD(v60) = v69;
        if (v221)
        {
          continue;
        }

LABEL_66:
        v222 = 107;
LABEL_190:
        OUTLINED_FUNCTION_61_14(v222, v590, v595, v600, v605, v610, v615, v620, v625, v630, v635, v640, v645, v650, v655, v660, v665, v670, v675, v680, v685, v690, v695, v700, v705, v710, v715, v720, v724, v728, v729);
LABEL_191:
        v430 = 4;
        goto LABEL_192;
      case 101:
        v82 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v82, v83);
        OUTLINED_FUNCTION_28_24();
        goto LABEL_58;
      case 102:
        goto LABEL_59;
      case 103:
        goto LABEL_57;
      case 104:
        goto LABEL_60;
      case 105:
        goto LABEL_63;
      case 106:
        goto LABEL_65;
      case 107:
        goto LABEL_66;
      case 108:
        goto LABEL_222;
      case 109:
        goto LABEL_221;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t verb_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_16_34();
  v548 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v3, v4, v5, v6, v7, v8, v9, v10, v404, v409, v414, v419, v424, v429, v434, v439, v444, v449, v454, v459, v464, v469, v474, v479, v484, v489, v494, v499, v504, v509, v514, v519, v524, v529, v534, SHIDWORD(v534), v539, v543, *v547, *&v547[8]);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v11, v12, v13, v14, v15, v16, v17, v18, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v480, v485, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v544, *v547, *&v547[8], *&v547[16], *&v547[24], *&v547[32], *&v547[40]);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (OUTLINED_FUNCTION_98_8(v19, v20, v21, v22, v23, v24, v25, v26, v406, v411, v416, v421, v426, v431, v436, v441, v446, v451, v456, v461, v466, v471, v476, v481, v486, v491, v496, v501, v506, v511, v516, v521, v526, v531, v536, v541, v545, *v547, *&v547[8], *&v547[16], *&v547[24], *&v547[32], *&v547[40]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v28 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v28, v29);
  OUTLINED_FUNCTION_55_15(v30, v31, v32, v33, v34, v35, v36, v37, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v492, v497, v502, v507, v512, v517, v522, v527, v532, *v537, v537[4]);
  v38 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v38, v39);
  v40 = 0;
  v41 = OUTLINED_FUNCTION_58_14();
  fence_38(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_62_13();
  fence_38(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_89_10();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_22_27();
  v52 = 0;
  if (lpta_loadp_setscan_l(v49, v50, v51))
  {
LABEL_5:
    v53 = OUTLINED_FUNCTION_38_18();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_12_36();
    if (lpta_loadp_setscan_l(v55, v56, v57))
    {
LABEL_6:
      v58 = OUTLINED_FUNCTION_30_23();
      starttest(v58, v59);
      OUTLINED_FUNCTION_38_18();
      bspush_ca_boa();
      v60 = OUTLINED_FUNCTION_12_36();
      if (!lpta_loadp_setscan_r(v60, v61, v62))
      {
        v63 = OUTLINED_FUNCTION_2_39();
        if (!testFldeq(v63, v64, v65, v66))
        {
          v67 = OUTLINED_FUNCTION_11_36();
          v70 = 4;
          goto LABEL_141;
        }
      }

      goto LABEL_137;
    }

    v71 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v71, v72, v73, 25))
    {
      goto LABEL_137;
    }

    if (advance_tok(v1, v74, v75, v76))
    {
      goto LABEL_137;
    }

    v77 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v77, v78, v79, v80) || advance_tok(v1, v81, v82, v83))
    {
      goto LABEL_137;
    }

    v84 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v84, v85);
    v86 = v52;
LABEL_14:
    v52 = v86;
    v87 = OUTLINED_FUNCTION_1_40();
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_45_16(2, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528);
    v91 = OUTLINED_FUNCTION_31_22();
    bspush_ca_scan(v91, v92);
LABEL_17:
    v93 = OUTLINED_FUNCTION_6_37();
    if (testFldeq(v93, v94, v95, v96))
    {
      goto LABEL_32;
    }

    v100 = advance_tok(v1, v97, v98, v99);
    v101 = v40;
    LODWORD(v102) = v40;
    if (v100)
    {
      goto LABEL_38;
    }

LABEL_19:
    v52 = v101;
    OUTLINED_FUNCTION_61_14(5, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v542, v546, v547[0]);
    v103 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v103, v104, v105, v106))
    {
      goto LABEL_137;
    }

    if (advance_tok(v1, v107, v108, v109))
    {
      goto LABEL_137;
    }

    v110 = OUTLINED_FUNCTION_15_34();
    if (lpta_loadp_setscan_r(v110, v111, v112))
    {
      goto LABEL_137;
    }

    v113 = OUTLINED_FUNCTION_2_39();
    if (testFldeq(v113, v114, v115, v116))
    {
      goto LABEL_137;
    }

    v87 = OUTLINED_FUNCTION_11_36();
    v90 = 4;
  }

  if (testFldeq(v87, v88, v89, v90))
  {
    goto LABEL_137;
  }

  v120 = advance_tok(v1, v117, v118, v119);
  LODWORD(v102) = v52;
  if (v120)
  {
    goto LABEL_38;
  }

  HIWORD(v538) = 4;
LABEL_27:
  v121 = v52;
LABEL_28:
  v52 = v121;
  v122 = OUTLINED_FUNCTION_38_18();
  starttest(v122, v123);
  v124 = OUTLINED_FUNCTION_20_29();
  v127 = lpta_loadp_setscan_r(v124, v125, v126);
  v128 = v52;
  if (!v127)
  {
LABEL_128:
    v361 = v128;
    v362 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v362, v363);
    v364 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v364, v365);
    v139 = v361;
LABEL_129:
    v52 = v139;
    v366 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v366, v367);
    v368 = OUTLINED_FUNCTION_11_36();
    if (testFldeq(v368, v369, v370, 1))
    {
      goto LABEL_137;
    }

    v374 = advance_tok(v1, v371, v372, v373);
    LODWORD(v102) = v52;
    v140 = v52;
    if (v374)
    {
      goto LABEL_38;
    }

LABEL_131:
    v52 = v140;
    v375 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v375, v376);
    v377 = OUTLINED_FUNCTION_4_38();
    if (testFldeq(v377, v378, v379, v380))
    {
      goto LABEL_137;
    }

    v384 = advance_tok(v1, v381, v382, v383);
    LODWORD(v102) = v52;
    if (v384)
    {
      goto LABEL_38;
    }

LABEL_133:
    OUTLINED_FUNCTION_79_12(58, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v542);
  }

LABEL_29:
  v129 = OUTLINED_FUNCTION_38_18();
  starttest(v129, v130);
  v131 = OUTLINED_FUNCTION_12_36();
  v134 = lpta_loadp_setscan_l(v131, v132, v133);
  v135 = v52;
  LODWORD(v40) = v52;
  if (!v134)
  {
LABEL_134:
    v385 = v135;
    v386 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v386, v387);
    v153 = v385;
LABEL_135:
    v52 = v153;
    v388 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v388, v389);
LABEL_136:
    OUTLINED_FUNCTION_61_14(67, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v542, v546, v547[0]);
    OUTLINED_FUNCTION_38_18();
    bspush_ca_scan_boa();
    v390 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v390, v391);
    v392 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v392, v393, v394, 4))
    {
      v395 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v395, v396);
      v67 = OUTLINED_FUNCTION_10_36();
      v70 = 12;
LABEL_141:
      v403 = testFldeq(v67, v68, v69, v70);
      v152 = v52;
      v102 = v52;
      if (!v403)
      {
LABEL_142:
        LODWORD(v52) = v152;
        v402 = advance_tok(v1, v102, v138, v86);
LABEL_143:
        if (v402)
        {
          LODWORD(v102) = v52;
        }

        else
        {
          LODWORD(v102) = 1;
        }
      }

      while (1)
      {
LABEL_38:
        v149 = v1[13];
        if (v149)
        {
          v150 = OUTLINED_FUNCTION_56_14(v149);
          v52 = v102;
        }

        else
        {
          v150 = vback(v1, v102);
          v52 = 0;
        }

        v151 = v150 - 1;
        v148 = 4;
        v40 = v52;
        v86 = v52;
        v152 = v52;
        v121 = v52;
        v128 = v52;
        v139 = v52;
        v140 = v52;
        v135 = v52;
        v153 = v52;
        switch(v151)
        {
          case 0:
            goto LABEL_5;
          case 1:
            v40 = v52;
            goto LABEL_16;
          case 2:
            v154 = OUTLINED_FUNCTION_10_36();
            v157 = testFldeq(v154, v155, v156, 25);
            LODWORD(v102) = v52;
            if (!v157)
            {
              v160 = advance_tok(v1, v52, v158, v159);
              v40 = v52;
              LODWORD(v102) = v52;
              if (!v160)
              {
                goto LABEL_17;
              }
            }

            continue;
          case 3:
            goto LABEL_17;
          case 4:
            v101 = v52;
            goto LABEL_19;
          case 5:
            goto LABEL_28;
          case 6:
            goto LABEL_6;
          case 7:
            v248 = OUTLINED_FUNCTION_3_39();
            v252 = testFldeq(v248, v249, v250, v251);
            LODWORD(v102) = v52;
            if (!v252)
            {
              v255 = advance_tok(v1, v52, v253, v254);
              v86 = v52;
              LODWORD(v102) = v52;
              if (!v255)
              {
                goto LABEL_14;
              }
            }

            continue;
          case 8:
            goto LABEL_14;
          case 9:
            v198 = OUTLINED_FUNCTION_38_18();
            starttest(v198, v199);
            v200 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v200, v201, v202))
            {
              goto LABEL_59;
            }

            v344 = OUTLINED_FUNCTION_2_39();
            v348 = testFldeq(v344, v345, v346, v347);
            LODWORD(v102) = v52;
            if (v348)
            {
              continue;
            }

            v349 = OUTLINED_FUNCTION_11_36();
            v352 = testFldeq(v349, v350, v351, 1);
            LODWORD(v102) = v52;
            if (v352)
            {
              continue;
            }

            v121 = advance_tok(v1, v52, v353, v354);
            v102 = v52;
            if (v121)
            {
              continue;
            }

            v148 = 2;
            goto LABEL_36;
          case 10:
            bspop_boa(v1);
            goto LABEL_3;
          case 11:
LABEL_59:
            v203 = OUTLINED_FUNCTION_38_18();
            starttest(v203, v204);
            v205 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v205, v206, v207))
            {
              goto LABEL_60;
            }

            v340 = OUTLINED_FUNCTION_34_19();
            bspush_ca_scan(v340, v341);
            v264 = OUTLINED_FUNCTION_9_36();
            v267 = 5;
            goto LABEL_117;
          case 12:
LABEL_60:
            v208 = OUTLINED_FUNCTION_38_18();
            starttest(v208, v209);
            v210 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v210, v211, v212))
            {
              goto LABEL_61;
            }

            break;
          case 13:
            v264 = OUTLINED_FUNCTION_6_37();
            goto LABEL_117;
          case 14:
            goto LABEL_118;
          case 15:
LABEL_61:
            v213 = OUTLINED_FUNCTION_38_18();
            starttest(v213, v214);
            v215 = OUTLINED_FUNCTION_20_29();
            if (lpta_loadp_setscan_r(v215, v216, v217))
            {
              goto LABEL_62;
            }

            goto LABEL_68;
          case 16:
            v264 = OUTLINED_FUNCTION_3_39();
            goto LABEL_117;
          case 17:
            v294 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v294, v295);
            v258 = OUTLINED_FUNCTION_10_36();
            v261 = 17;
            goto LABEL_125;
          case 18:
            goto LABEL_126;
          case 19:
            v258 = OUTLINED_FUNCTION_10_36();
            v261 = 18;
            goto LABEL_125;
          case 20:
            break;
          case 21:
LABEL_62:
            v218 = OUTLINED_FUNCTION_38_18();
            starttest(v218, v219);
            v220 = OUTLINED_FUNCTION_12_36();
            if (lpta_loadp_setscan_l(v220, v221, v222))
            {
              goto LABEL_63;
            }

            goto LABEL_67;
          case 22:
LABEL_68:
            v236 = OUTLINED_FUNCTION_13_35();
            v239 = chstream(v236, v237, v238);
            LODWORD(v102) = v52;
            if (!v239)
            {
              OUTLINED_FUNCTION_42_16();
              v240 = test_string_s();
              LODWORD(v102) = v52;
              if (!v240)
              {
                goto LABEL_70;
              }
            }

            continue;
          case 23:
LABEL_70:
            v241 = OUTLINED_FUNCTION_38_18();
            v243 = chstream(v241, v242, 4u);
            LODWORD(v102) = v52;
            if (v243)
            {
              continue;
            }

            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v399 = OUTLINED_FUNCTION_9_36();
            v402 = testFldeq(v399, v400, v401, 4);
            goto LABEL_143;
          case 24:
            bspop_boa(v1);
            goto LABEL_118;
          case 25:
LABEL_63:
            v223 = OUTLINED_FUNCTION_38_18();
            starttest(v223, v224);
            v225 = OUTLINED_FUNCTION_12_36();
            if (!lpta_loadp_setscan_l(v225, v226, v227))
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          case 26:
LABEL_67:
            OUTLINED_FUNCTION_45_16(27, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528);
            goto LABEL_90;
          case 27:
            goto LABEL_90;
          case 28:
            v244 = OUTLINED_FUNCTION_10_36();
            v247 = 25;
            goto LABEL_88;
          case 29:
            v256 = OUTLINED_FUNCTION_33_21();
            bspush_ca_scan(v256, v257);
            v244 = OUTLINED_FUNCTION_10_36();
            v247 = 18;
            goto LABEL_88;
          case 30:
          case 32:
            goto LABEL_89;
          case 31:
            v244 = OUTLINED_FUNCTION_10_36();
            v247 = 17;
            goto LABEL_88;
          case 33:
            v274 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v274, v275);
            v276 = OUTLINED_FUNCTION_9_36();
            v279 = testFldeq(v276, v277, v278, 4);
            LODWORD(v102) = v52;
            if (v279)
            {
              continue;
            }

            v280 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v280, v281);
            v244 = OUTLINED_FUNCTION_10_36();
            v247 = 12;
LABEL_88:
            v282 = testFldeq(v244, v245, v246, v247);
            v102 = v52;
            if (v282)
            {
              continue;
            }

LABEL_89:
            v283 = advance_tok(v1, v102, v138, v86);
            LODWORD(v102) = v52;
            if (v283)
            {
              continue;
            }

LABEL_90:
            v284 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v284, v285);
            v286 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v286, v287);
            v288 = OUTLINED_FUNCTION_9_36();
            v291 = testFldeq(v288, v289, v290, 4);
            LODWORD(v102) = v52;
            if (v291)
            {
              continue;
            }

            v292 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v292, v293);
            v175 = OUTLINED_FUNCTION_10_36();
            v178 = 11;
            goto LABEL_96;
          case 34:
            v175 = OUTLINED_FUNCTION_9_36();
            v178 = 10;
            goto LABEL_96;
          case 35:
            v296 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v296, v297);
            v175 = OUTLINED_FUNCTION_10_36();
            v178 = 36;
            goto LABEL_96;
          case 36:
          case 38:
          case 47:
            goto LABEL_97;
          case 37:
            v175 = OUTLINED_FUNCTION_10_36();
            v178 = 14;
            goto LABEL_96;
          case 39:
LABEL_64:
            OUTLINED_FUNCTION_45_16(40, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528);
            goto LABEL_65;
          case 40:
            v181 = OUTLINED_FUNCTION_10_36();
            v184 = 25;
            goto LABEL_82;
          case 41:
            v179 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v179, v180);
            v181 = OUTLINED_FUNCTION_10_36();
            v184 = 18;
            goto LABEL_82;
          case 42:
          case 44:
            goto LABEL_83;
          case 43:
            v181 = OUTLINED_FUNCTION_10_36();
            v184 = 17;
            goto LABEL_82;
          case 45:
LABEL_65:
            v228 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v228, v229);
            v230 = OUTLINED_FUNCTION_9_36();
            v233 = testFldeq(v230, v231, v232, 4);
            LODWORD(v102) = v52;
            if (v233)
            {
              continue;
            }

            v234 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v234, v235);
            v181 = OUTLINED_FUNCTION_10_36();
            v184 = 12;
LABEL_82:
            v268 = testFldeq(v181, v182, v183, v184);
            v102 = v52;
            if (v268)
            {
              continue;
            }

LABEL_83:
            v269 = advance_tok(v1, v102, v138, v86);
            LODWORD(v102) = v52;
            if (v269)
            {
              continue;
            }

            v270 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v270, v271);
            v272 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v272, v273);
            v175 = OUTLINED_FUNCTION_1_40();
LABEL_96:
            v298 = testFldeq(v175, v176, v177, v178);
            v102 = v52;
            if (v298)
            {
              continue;
            }

LABEL_97:
            v299 = advance_tok(v1, v102, v138, v86);
            LODWORD(v102) = v52;
            if (v299)
            {
              continue;
            }

            v300 = OUTLINED_FUNCTION_15_34();
            v303 = lpta_loadp_setscan_r(v300, v301, v302);
            LODWORD(v102) = v52;
            if (v303)
            {
              continue;
            }

            v264 = OUTLINED_FUNCTION_2_39();
LABEL_117:
            v342 = testFldeq(v264, v265, v266, v267);
            v102 = v52;
            if (v342)
            {
              continue;
            }

LABEL_118:
            v343 = advance_tok(v1, v102, v138, v86);
            LODWORD(v102) = v52;
            if (!v343)
            {
              goto LABEL_3;
            }

            continue;
          case 46:
            v262 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v262, v263);
            v175 = OUTLINED_FUNCTION_9_36();
            goto LABEL_96;
          case 48:
            v173 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v173, v174);
            v175 = OUTLINED_FUNCTION_10_36();
            v178 = 6;
            goto LABEL_96;
          case 49:
            v175 = OUTLINED_FUNCTION_9_36();
            v178 = 5;
            goto LABEL_96;
          case 50:
            goto LABEL_29;
          case 51:
            goto LABEL_128;
          case 52:
            v304 = OUTLINED_FUNCTION_4_38();
            v308 = testFldeq(v304, v305, v306, v307);
            LODWORD(v102) = v52;
            if (!v308)
            {
              v309 = OUTLINED_FUNCTION_11_36();
              v312 = testFldeq(v309, v310, v311, 5);
              LODWORD(v102) = v52;
              if (!v312)
              {
                v315 = advance_tok(v1, v52, v313, v314);
                v128 = v52;
                LODWORD(v102) = v52;
                if (!v315)
                {
                  goto LABEL_128;
                }
              }
            }

            continue;
          case 53:
            v191 = OUTLINED_FUNCTION_11_36();
            v194 = testFldeq(v191, v192, v193, 2);
            LODWORD(v102) = v52;
            if (!v194)
            {
              v197 = advance_tok(v1, v52, v195, v196);
              v140 = v52;
              LODWORD(v102) = v52;
              if (!v197)
              {
                goto LABEL_131;
              }
            }

            continue;
          case 54:
            goto LABEL_129;
          case 55:
            v324 = OUTLINED_FUNCTION_10_36();
            v327 = testFldeq(v324, v325, v326, 12);
            LODWORD(v102) = v52;
            if (!v327)
            {
              v328 = OUTLINED_FUNCTION_9_36();
              v331 = testFldeq(v328, v329, v330, 4);
              LODWORD(v102) = v52;
              if (!v331)
              {
                v334 = advance_tok(v1, v52, v332, v333);
                v139 = v52;
                LODWORD(v102) = v52;
                if (!v334)
                {
                  goto LABEL_129;
                }
              }
            }

            continue;
          case 56:
            goto LABEL_131;
          case 57:
            goto LABEL_133;
          case 58:
            goto LABEL_149;
          case 59:
            goto LABEL_134;
          case 60:
            v161 = OUTLINED_FUNCTION_4_38();
            v165 = testFldeq(v161, v162, v163, v164);
            LODWORD(v102) = v52;
            if (!v165)
            {
              v166 = OUTLINED_FUNCTION_11_36();
              v169 = testFldeq(v166, v167, v168, 5);
              LODWORD(v102) = v52;
              if (!v169)
              {
                v172 = advance_tok(v1, v52, v170, v171);
                v135 = v52;
                LODWORD(v102) = v52;
                if (!v172)
                {
                  goto LABEL_134;
                }
              }
            }

            continue;
          case 61:
            goto LABEL_135;
          case 62:
            v189 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v189, v190);
            v185 = OUTLINED_FUNCTION_10_36();
            v188 = 18;
            goto LABEL_107;
          case 63:
            goto LABEL_108;
          case 64:
            v185 = OUTLINED_FUNCTION_10_36();
            v188 = 17;
            goto LABEL_107;
          case 65:
            v316 = OUTLINED_FUNCTION_9_36();
            v319 = testFldeq(v316, v317, v318, 4);
            LODWORD(v102) = v52;
            if (v319)
            {
              continue;
            }

            v320 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v320, v321);
            v185 = OUTLINED_FUNCTION_10_36();
            v188 = 12;
LABEL_107:
            v322 = testFldeq(v185, v186, v187, v188);
            v102 = v52;
            if (v322)
            {
              continue;
            }

LABEL_108:
            v323 = advance_tok(v1, v102, v138, v86);
            v153 = v52;
            LODWORD(v102) = v52;
            if (!v323)
            {
              goto LABEL_135;
            }

            continue;
          case 66:
            goto LABEL_136;
          case 67:
            bspop_boa(v1);
LABEL_149:
            LODWORD(v40) = v52;
            goto LABEL_30;
          case 68:
            v335 = OUTLINED_FUNCTION_4_38();
            v339 = testFldeq(v335, v336, v337, v338);
            LODWORD(v102) = v52;
            if (v339)
            {
              continue;
            }

            v67 = OUTLINED_FUNCTION_11_36();
            v70 = 5;
            goto LABEL_141;
          case 69:
            v397 = OUTLINED_FUNCTION_38_18();
            bspush_ca_scan(v397, v398);
            v67 = OUTLINED_FUNCTION_10_36();
            v70 = 18;
            goto LABEL_141;
          case 70:
          case 72:
            goto LABEL_142;
          case 71:
            v67 = OUTLINED_FUNCTION_10_36();
            v70 = 17;
            goto LABEL_141;
          case 73:
            goto LABEL_36;
          case 74:
            goto LABEL_34;
          case 75:
            goto LABEL_37;
          default:
            goto LABEL_3;
        }

        while (1)
        {
          v355 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v355, v356);
          v357 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v357, v358);
          v258 = OUTLINED_FUNCTION_10_36();
          v261 = 12;
LABEL_125:
          v359 = testFldeq(v258, v259, v260, v261);
          v102 = v52;
          if (v359)
          {
            break;
          }

LABEL_126:
          v360 = advance_tok(v1, v102, v138, v86);
          LODWORD(v102) = v52;
          if (v360)
          {
            goto LABEL_38;
          }
        }
      }
    }

LABEL_137:
    LODWORD(v102) = v52;
    goto LABEL_38;
  }

LABEL_30:
  v136 = OUTLINED_FUNCTION_38_18();
  starttest(v136, v137);
  v121 = lpta_loadp_setscan_l(v1, v547, 4);
  if (v121)
  {
    v148 = 4;
  }

  else
  {
    v141 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v141, v142, v143, 25))
    {
LABEL_32:
      LODWORD(v102) = v40;
      goto LABEL_38;
    }

    v147 = advance_tok(v1, v144, v145, v146);
    LODWORD(v102) = v40;
    if (v147)
    {
      goto LABEL_38;
    }

LABEL_34:
    OUTLINED_FUNCTION_61_14(75, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v542, v546, v547[0]);
    v148 = 3;
  }

LABEL_36:
  HIWORD(v538) = v148;
LABEL_37:
  OUTLINED_FUNCTION_50_16(v121, v102, v138, v86, v128, v139, v140, v135, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, SWORD2(v538), SHIWORD(v538), v542, v546, *v547, *&v547[8]);
LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_103_7();
}

void conjoined_words_same_category(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v118 = *MEMORY[0x277D85DE8];
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v103[0] = 0;
  v103[1] = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v102, v8);
  OUTLINED_FUNCTION_52_15();
  bzero(v117, v9);
  if (setjmp(v117) || ventproc(v5, v102, v116, v115, v114, v117) || (v10 = OUTLINED_FUNCTION_46_16(), OUTLINED_FUNCTION_82_11(v10, v11), v12 = OUTLINED_FUNCTION_59_14(), get_parm(v12, v13, v14, -6), v108 = 0uLL, LOWORD(v109) = 0, LODWORD(v107) = -65532, v105 = 0uLL, LOWORD(v106) = 0, LODWORD(v104) = -65532, v15 = OUTLINED_FUNCTION_94_9(), push_ptr_init(v15, v16), v17 = OUTLINED_FUNCTION_58_14(), fence_38(v17, v18, v19), v20 = OUTLINED_FUNCTION_95_9(), fence_38(v20, v21, v22), v23 = OUTLINED_FUNCTION_88_10(), starttest(v23, v24), v25 = OUTLINED_FUNCTION_22_27(), lpta_loadp_setscan_l(v25, v26, v27)))
  {
LABEL_4:
    vretproc(v5);
  }

  else
  {
    LODWORD(v28) = 0;
    OUTLINED_FUNCTION_65_13();
    v101 = v29;
    while (2)
    {
      savescptr(v5, v29, v103);
      v30 = OUTLINED_FUNCTION_46_16();
      if (!savetok(v30, v31) && !advance_tok(v5, v32, v33, v34))
      {
        v35 = OUTLINED_FUNCTION_83_11();
        if (!lpta_loadp_setscan_r(v35, v36, 4) && !advance_tok(v5, v37, v38, v39))
        {
          OUTLINED_FUNCTION_106_5();
          bspush_ca_scan_boa();
          bspush_ca_scan(v5, 4);
          if (!testFldeq(v5, 4u, 2, 21))
          {
LABEL_13:
            LODWORD(v28) = 1;
          }
        }
      }

      v40 = v28;
LABEL_15:
      v41 = v5[13];
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_56_14(v41);
        v28 = v43;
      }

      else
      {
        v42 = vback(v5, v40);
        v28 = 0;
      }

      switch(v42)
      {
        case 2:
          v29 = v101;
          continue;
        case 3:
          bspop_boa(v5);
          v47 = advance_tok(v5, v44, v45, v46);
          v40 = v28;
          if (v47)
          {
            goto LABEL_15;
          }

          v48 = savetok(v5, &v104);
          v40 = v28;
          if (v48)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        case 4:
          v52 = testFldeq(v5, 4u, 3, 10);
          v40 = v28;
          if (!v52)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 5:
          goto LABEL_13;
        case 6:
LABEL_21:
          v49 = OUTLINED_FUNCTION_110_5();
          starttest(v49, v50);
          v51 = 1;
          goto LABEL_32;
        case 7:
          WORD1(v107) = 1;
          v53 = OUTLINED_FUNCTION_46_16();
          npush_v(v53, v54, v55, v56, v57, v58, v59, v60);
          ncompare_s(v5, 1u);
          if (testeq(v5))
          {
            goto LABEL_25;
          }

          v78 = OUTLINED_FUNCTION_107_5();
          starttest_l(v78, v79);
          v51 = 3;
LABEL_32:
          bspush_ca_boa();
          WORD1(v107) = v51;
          v80 = OUTLINED_FUNCTION_46_16();
          npush_v(v80, v81, v82, v83, v84, v85, v86, v87);
          WORD1(v104) = v51;
          npush_v(v5, &v104, v88, v89, v90, v91, v92, v93);
          if (if_testeq(v5, v94, v95, v96, v97, v98, v99, v100))
          {
            v40 = v28;
          }

          else
          {
            v40 = 1;
          }

          goto LABEL_15;
        case 8:
        case 10:
          bspop_boa(v5);
          goto LABEL_4;
        case 9:
LABEL_25:
          starttest(v5, 11);
          if (!lpta_loadp_setscan_l(v5, &v112, 4))
          {
            goto LABEL_26;
          }

          goto LABEL_38;
        case 11:
          goto LABEL_38;
        case 12:
LABEL_26:
          v61 = OUTLINED_FUNCTION_67_13();
          savescptr(v61, v62, v103);
          v66 = advance_tok(v5, v63, v64, v65);
          v40 = v28;
          if (!v66)
          {
            goto LABEL_27;
          }

          goto LABEL_15;
        case 13:
LABEL_27:
          v67 = OUTLINED_FUNCTION_96_8();
          savescptr(v67, v68, &v112);
          v69 = OUTLINED_FUNCTION_83_11();
          v71 = lpta_loadp_setscan_r(v69, v70, 4);
          v40 = v28;
          if (!v71)
          {
            v74 = advance_tok(v5, v28, v72, v73);
            v40 = v28;
            if (!v74)
            {
              v77 = advance_tok(v5, v28, v75, v76);
              v40 = v28;
              if (!v77)
              {
                goto LABEL_37;
              }
            }
          }

          goto LABEL_15;
        case 14:
LABEL_37:
          savescptr(v5, 14, &v110);
LABEL_38:
          *(v7 + 8) = v113;
          *(v6 + 8) = v111;
          vretproc(v5);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_90_10();
}

uint64_t no_pause_btw_coordinated_NPs(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v499 = *MEMORY[0x277D85DE8];
  v493 = 0;
  v494 = 0;
  v491 = 0;
  v492 = 0;
  v489 = 0;
  v490 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v4, v5, v6, v7, v8, v9, v10, v11, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484);
  OUTLINED_FUNCTION_52_15();
  bzero(v498, v12);
  if (setjmp(v498) || ventproc(v1, &v458, v497, v496, v495, v498))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_29_24();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_59_14();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_60_14();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_41_16();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_49_16();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_70_13();
  push_ptr_init(v29, v30);
  v31 = 0;
  v32 = OUTLINED_FUNCTION_58_14();
  fence_38(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_84_11();
  fence_38(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_105_6();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_57_14();
  if (!lpta_loadp_setscan_l(v40, v41, 4))
  {
LABEL_12:
    savescptr(v1, 2, &v489);
    v57 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v57, v58, v59, 2) && !advance_tok(v1, v60, v61, v62))
    {
      v63 = OUTLINED_FUNCTION_18_33();
      if (!lpta_loadp_setscan_r(v63, v64, v65) && !advance_tok(v1, v66, v67, v68))
      {
        v69 = OUTLINED_FUNCTION_1_40();
        if (!testFldeq(v69, v70, v71, v72))
        {
          v76 = advance_tok(v1, v73, v74, v75);
          goto LABEL_151;
        }
      }
    }

    goto LABEL_18;
  }

  while (2)
  {
    v42 = 4;
    v43 = OUTLINED_FUNCTION_88_10();
    starttest(v43, v44);
    lpta_loadp_setscan_l(v1, &v493, 4);
    OUTLINED_FUNCTION_81_12();
    if (!v45)
    {
LABEL_7:
      OUTLINED_FUNCTION_71_13(5, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
LABEL_8:
      v46 = OUTLINED_FUNCTION_13_35();
      v49 = chstream(v46, v47, v48);
      v50 = v42;
      if (v49)
      {
        goto LABEL_126;
      }

LABEL_9:
      v51 = OUTLINED_FUNCTION_13_35();
      if (!test_synch(v51, v52, v53, v54))
      {
        v55 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v55, v56);
LABEL_132:
        OUTLINED_FUNCTION_17_34();
        test_string_s();
        OUTLINED_FUNCTION_81_12();
        if (v392)
        {
          goto LABEL_126;
        }

LABEL_133:
        v393 = OUTLINED_FUNCTION_30_23();
        if (!chstream(v393, v394, 4u))
        {
          v395 = OUTLINED_FUNCTION_9_36();
          if (!testFldeq(v395, v396, v397, 6) && !advance_tok(v1, v398, v399, v400))
          {
            v401 = OUTLINED_FUNCTION_18_33();
            if (!lpta_loadp_setscan_r(v401, v402, v403) && !advance_tok(v1, v404, v405, v406))
            {
              v407 = OUTLINED_FUNCTION_9_36();
              if (!testFldeq(v407, v408, v409, 6))
              {
                v413 = advance_tok(v1, v410, v411, v412);
                v50 = v42;
                if (!v413)
                {
                  goto LABEL_65;
                }

LABEL_126:
                v42 = v50;
LABEL_127:
                v389 = v1[13];
                if (v389)
                {
                  v390 = OUTLINED_FUNCTION_56_14(v389);
                  v42 = v391;
                }

                else
                {
                  v390 = vback(v1, v42);
                  v42 = 0;
                }

                switch(v390)
                {
                  case 1:
                    continue;
                  case 2:
                    v31 = v42;
                    goto LABEL_12;
                  case 3:
                    goto LABEL_65;
                  case 4:
                    goto LABEL_19;
                  case 5:
                    goto LABEL_7;
                  case 6:
                    goto LABEL_8;
                  case 7:
                    goto LABEL_9;
                  case 8:
                    OUTLINED_FUNCTION_42_16();
                    if (!test_string_s())
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_127;
                  case 9:
                    goto LABEL_132;
                  case 10:
                    goto LABEL_133;
                  case 11:
                    goto LABEL_20;
                  case 12:
                    goto LABEL_32;
                  case 13:
                    v150 = v42;
                    goto LABEL_38;
                  case 14:
                    v180 = v42;
                    goto LABEL_48;
                  case 15:
                    goto LABEL_50;
                  case 16:
                    v88 = v42;
                    goto LABEL_21;
                  case 17:
                    goto LABEL_51;
                  case 18:
                    v206 = v42;
                    goto LABEL_57;
                  case 19:
                    goto LABEL_62;
                  case 20:
                    goto LABEL_22;
                  case 21:
                    v31 = v42;
                    goto LABEL_75;
                  case 22:
                    goto LABEL_79;
                  case 23:
                    goto LABEL_85;
                  case 24:
                    goto LABEL_23;
                  case 25:
                    goto LABEL_67;
                  case 26:
                    v247 = v42;
                    goto LABEL_87;
                  case 27:
                    goto LABEL_95;
                  case 28:
                    goto LABEL_24;
                  case 29:
                    goto LABEL_96;
                  case 30:
                    v323 = v42;
                    goto LABEL_102;
                  case 31:
                    goto LABEL_108;
                  case 32:
                    v111 = v42;
                    goto LABEL_120;
                  case 33:
                    goto LABEL_25;
                  case 34:
                    v133 = v42;
                    goto LABEL_110;
                  case 35:
                    goto LABEL_118;
                  case 37:
                    goto LABEL_121;
                  case 38:
                    goto LABEL_122;
                  case 39:
                    v387 = v42;
                    goto LABEL_142;
                  case 40:
                    v424 = v42;
                    goto LABEL_154;
                  case 41:
                    v426 = v42;
                    goto LABEL_146;
                  case 42:
                    v434 = v42;
                    goto LABEL_150;
                  default:
                    goto LABEL_3;
                }
              }
            }
          }
        }
      }

LABEL_125:
      v50 = v42;
      goto LABEL_126;
    }

    break;
  }

LABEL_19:
  v77 = OUTLINED_FUNCTION_38_18();
  starttest(v77, v78);
  v79 = OUTLINED_FUNCTION_32_21();
  lpta_loadp_setscan_l(v79, v80, v81);
  OUTLINED_FUNCTION_81_12();
  if (!v82)
  {
LABEL_32:
    OUTLINED_FUNCTION_71_13(12, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
    v135 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v135, v136, v137, v138))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v139, v140, v141))
    {
      goto LABEL_125;
    }

    v142 = OUTLINED_FUNCTION_38_18();
    bspush_ca_scan(v142, v143);
    v144 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v144, v145, v146, 32))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v147, v148, v149);
    OUTLINED_FUNCTION_72_13();
    if (v151)
    {
      goto LABEL_126;
    }

LABEL_38:
    v42 = v150;
    v152 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v152, v153, v154, v155))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v156, v157, v158))
    {
      goto LABEL_125;
    }

    v159 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_r(v159, v160, v161))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v162, v163, v164))
    {
      goto LABEL_125;
    }

    v165 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v165, v166, v167, v168))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v169, v170, v171))
    {
      goto LABEL_125;
    }

    v172 = OUTLINED_FUNCTION_34_19();
    bspush_ca_scan(v172, v173);
    v174 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v174, v175, v176, 32))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v177, v178, v179);
    OUTLINED_FUNCTION_72_13();
    if (v181)
    {
      goto LABEL_126;
    }

LABEL_48:
    v42 = v180;
    v182 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v182, v183, v184, v185))
    {
      goto LABEL_125;
    }

    v189 = advance_tok(v1, v186, v187, v188);
    v50 = v42;
    if (v189)
    {
      goto LABEL_126;
    }

LABEL_50:
    v190 = 15;
    v191 = &v491;
LABEL_64:
    savescptr(v1, v190, v191);
LABEL_65:
    *(v3 + 8) = v494;
    *(v2 + 8) = v492;
    v13 = 0;
    goto LABEL_4;
  }

LABEL_20:
  v83 = OUTLINED_FUNCTION_38_18();
  starttest(v83, v84);
  v85 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v85, v86, v87);
  OUTLINED_FUNCTION_81_12();
  if (!v89)
  {
LABEL_51:
    OUTLINED_FUNCTION_71_13(17, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
    v192 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v192, v193, v194, v195))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v196, v197, v198))
    {
      goto LABEL_125;
    }

    v199 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v199, v200, v201, v202))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v203, v204, v205);
    OUTLINED_FUNCTION_72_13();
    if (v207)
    {
      goto LABEL_126;
    }

LABEL_57:
    v42 = v206;
    OUTLINED_FUNCTION_80_12(18, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v208 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v208, v209, v210))
    {
      goto LABEL_125;
    }

    v211 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v211, v212, v213, v214))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v215, v216, v217))
    {
      goto LABEL_125;
    }

    v218 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v218, v219, v220, v221))
    {
      goto LABEL_125;
    }

    v225 = advance_tok(v1, v222, v223, v224);
    v50 = v42;
    if (v225)
    {
      goto LABEL_126;
    }

LABEL_62:
    v226 = 19;
    goto LABEL_63;
  }

LABEL_21:
  v42 = v88;
  v90 = OUTLINED_FUNCTION_38_18();
  starttest(v90, v91);
  v92 = OUTLINED_FUNCTION_39_17();
  v31 = v42;
  if (!lpta_loadp_setscan_r(v92, v93, v94))
  {
LABEL_75:
    v42 = 21;
    savescptr(v1, 21, &v489);
    v249 = OUTLINED_FUNCTION_10_36();
    if (!testFldeq(v249, v250, v251, 21) && !advance_tok(v1, v252, v253, v254))
    {
      v255 = OUTLINED_FUNCTION_1_40();
      if (!testFldeq(v255, v256, v257, v258))
      {
        advance_tok(v1, v259, v260, v261);
        OUTLINED_FUNCTION_81_12();
        if (v262)
        {
          goto LABEL_126;
        }

LABEL_79:
        OUTLINED_FUNCTION_80_12(22, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
        v263 = OUTLINED_FUNCTION_18_33();
        if (lpta_loadp_setscan_l(v263, v264, v265))
        {
          goto LABEL_125;
        }

        if (advance_tok(v1, v266, v267, v268))
        {
          goto LABEL_125;
        }

        v269 = OUTLINED_FUNCTION_1_40();
        if (testFldeq(v269, v270, v271, v272))
        {
          goto LABEL_125;
        }

        if (advance_tok(v1, v273, v274, v275))
        {
          goto LABEL_125;
        }

        v276 = OUTLINED_FUNCTION_10_36();
        if (testFldeq(v276, v277, v278, 21))
        {
          goto LABEL_125;
        }

        v282 = advance_tok(v1, v279, v280, v281);
        v50 = v42;
        if (v282)
        {
          goto LABEL_126;
        }

LABEL_85:
        v226 = 23;
        goto LABEL_63;
      }
    }

LABEL_18:
    v50 = v31;
    goto LABEL_126;
  }

LABEL_22:
  v95 = OUTLINED_FUNCTION_38_18();
  starttest(v95, v96);
  v97 = OUTLINED_FUNCTION_39_17();
  if (!lpta_loadp_setscan_r(v97, v98, v99))
  {
LABEL_67:
    OUTLINED_FUNCTION_71_13(25, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
    v227 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v227, v228, v229, 21))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v230, v231, v232))
    {
      goto LABEL_125;
    }

    v233 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v233, v234, v235, v236))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v237, v238, v239))
    {
      goto LABEL_125;
    }

    v240 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v240, v241, v242, v243))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v244, v245, v246);
    OUTLINED_FUNCTION_72_13();
    if (v248)
    {
      goto LABEL_126;
    }

LABEL_87:
    v42 = v247;
    OUTLINED_FUNCTION_80_12(26, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v283 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v283, v284, v285))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v286, v287, v288))
    {
      goto LABEL_125;
    }

    v289 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v289, v290, v291, v292))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v293, v294, v295))
    {
      goto LABEL_125;
    }

    v296 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v296, v297, v298, v299))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v300, v301, v302))
    {
      goto LABEL_125;
    }

    v303 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v303, v304, v305, 21))
    {
      goto LABEL_125;
    }

    v309 = advance_tok(v1, v306, v307, v308);
    v50 = v42;
    if (v309)
    {
      goto LABEL_126;
    }

LABEL_95:
    v226 = 27;
    goto LABEL_63;
  }

LABEL_23:
  v100 = OUTLINED_FUNCTION_38_18();
  starttest(v100, v101);
  v102 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v102, v103, v104);
  OUTLINED_FUNCTION_81_12();
  if (!v105)
  {
LABEL_96:
    OUTLINED_FUNCTION_71_13(29, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
    v310 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v310, v311, v312, 23))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v313, v314, v315))
    {
      goto LABEL_125;
    }

    v316 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v316, v317, v318, v319))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v320, v321, v322);
    OUTLINED_FUNCTION_72_13();
    if (v324)
    {
      goto LABEL_126;
    }

LABEL_102:
    v42 = v323;
    OUTLINED_FUNCTION_80_12(30, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v325 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v325, v326, v327))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v328, v329, v330))
    {
      goto LABEL_125;
    }

    v331 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v331, v332, v333, v334))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v335, v336, v337))
    {
      goto LABEL_125;
    }

    v338 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v338, v339, v340, 23))
    {
      goto LABEL_125;
    }

    v344 = advance_tok(v1, v341, v342, v343);
    v50 = v42;
    if (v344)
    {
      goto LABEL_126;
    }

LABEL_108:
    v226 = 31;
LABEL_63:
    v190 = v226;
    v191 = &v493;
    goto LABEL_64;
  }

LABEL_24:
  v106 = OUTLINED_FUNCTION_33_21();
  starttest(v106, v107);
  v108 = OUTLINED_FUNCTION_39_17();
  lpta_loadp_setscan_r(v108, v109, v110);
  OUTLINED_FUNCTION_81_12();
  if (!v112)
  {
LABEL_25:
    OUTLINED_FUNCTION_71_13(33, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
    v113 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v113, v114, v115, 23))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v116, v117, v118))
    {
      goto LABEL_125;
    }

    v119 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v119, v120, v121, v122))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v123, v124, v125))
    {
      goto LABEL_125;
    }

    v126 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v126, v127, v128, v129))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v130, v131, v132);
    OUTLINED_FUNCTION_72_13();
    if (v134)
    {
      goto LABEL_126;
    }

LABEL_110:
    v42 = v133;
    OUTLINED_FUNCTION_80_12(34, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v345 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v345, v346, v347))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v348, v349, v350))
    {
      goto LABEL_125;
    }

    v351 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v351, v352, v353, v354))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v355, v356, v357))
    {
      goto LABEL_125;
    }

    v358 = OUTLINED_FUNCTION_8_37();
    if (testFldeq(v358, v359, v360, v361))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v362, v363, v364))
    {
      goto LABEL_125;
    }

    v365 = OUTLINED_FUNCTION_10_36();
    if (testFldeq(v365, v366, v367, 23))
    {
      goto LABEL_125;
    }

    v371 = advance_tok(v1, v368, v369, v370);
    v50 = v42;
    if (v371)
    {
      goto LABEL_126;
    }

LABEL_118:
    v226 = 35;
    goto LABEL_63;
  }

LABEL_120:
  v42 = v111;
  v372 = OUTLINED_FUNCTION_38_18();
  starttest(v372, v373);
  v374 = OUTLINED_FUNCTION_39_17();
  if (!lpta_loadp_setscan_r(v374, v375, v376))
  {
LABEL_121:
    OUTLINED_FUNCTION_71_13(37, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489);
LABEL_122:
    v377 = OUTLINED_FUNCTION_85_11();
    savescptr(v377, v378, v379);
    v380 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v380, v381, v382, v383))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v384, v385, v386);
    OUTLINED_FUNCTION_72_13();
    if (v388)
    {
      goto LABEL_126;
    }

LABEL_142:
    v42 = v387;
    v414 = OUTLINED_FUNCTION_101_7();
    savescptr(v414, v415, v416);
    v417 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v417, v418, v419, v420))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v421, v422, v423);
    OUTLINED_FUNCTION_72_13();
    if (v425)
    {
      goto LABEL_126;
    }

LABEL_154:
    v42 = v424;
    OUTLINED_FUNCTION_80_12(40, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v444 = OUTLINED_FUNCTION_18_33();
    if (lpta_loadp_setscan_l(v444, v445, v446))
    {
      goto LABEL_125;
    }

    if (advance_tok(v1, v447, v448, v449))
    {
      goto LABEL_125;
    }

    v450 = OUTLINED_FUNCTION_1_40();
    if (testFldeq(v450, v451, v452, v453))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v454, v455, v456);
    OUTLINED_FUNCTION_72_13();
    if (v457)
    {
      goto LABEL_126;
    }

LABEL_146:
    v42 = v426;
    OUTLINED_FUNCTION_79_12(41, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    v427 = OUTLINED_FUNCTION_3_39();
    if (testFldeq(v427, v428, v429, v430))
    {
      goto LABEL_125;
    }

    advance_tok(v1, v431, v432, v433);
    OUTLINED_FUNCTION_72_13();
    if (v435)
    {
      goto LABEL_126;
    }

LABEL_150:
    v31 = v434;
    savescptr(v1, 42, &v487);
    v436 = OUTLINED_FUNCTION_57_14();
    v76 = same_inp(v436, v437, v438, v439, v440, v441, v442, v443);
LABEL_151:
    v50 = v31;
    if (!v76)
    {
      goto LABEL_65;
    }

    goto LABEL_126;
  }

LABEL_3:
  v13 = 94;
LABEL_4:
  vretproc(v1);
  return v13;
}

uint64_t adjust_prev_phr_ending()
{
  OUTLINED_FUNCTION_111_5();
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  OUTLINED_FUNCTION_52_15();
  bzero(v58, v10);
  if (setjmp(v58) || (OUTLINED_FUNCTION_78_12(), ventproc(v0, v11, v12, v13, v14, v58)))
  {
    v1 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
    v16 = OUTLINED_FUNCTION_70_13();
    push_ptr_init(v16, v17);
    fence_38(v0, 0, &null_str_15);
    v18 = OUTLINED_FUNCTION_51_15();
    if (!lpta_loadp_setscan_l(v18, v19, 5) && !advance_tok(v0, v20, v21, v22))
    {
      OUTLINED_FUNCTION_65_13();
      v23 = OUTLINED_FUNCTION_101_7();
      savescptr(v23, v24, v25);
    }

    v26 = OUTLINED_FUNCTION_70_13();
    lpta_loadpn(v26, v27);
    OUTLINED_FUNCTION_112_5();
    if (compare_ptas(v0) || testneq(v0) || *(v0 + 3738) != *(v0 + 3706))
    {
      v1 = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v28, v29, v30);
      OUTLINED_FUNCTION_76_13();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_76_13();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_76_13();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_76_13();
            mark_s();
          }
        }
      }
    }
  }

  vretproc(v0);
  return v1;
}

uint64_t fren_post_comma_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v57 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54[0], v54[1], v55[0], v55[1]);
  OUTLINED_FUNCTION_52_15();
  bzero(v56, v10);
  if (!setjmp(v56))
  {
    OUTLINED_FUNCTION_78_12();
    if (!ventproc(v1, v11, v12, v13, v14, v56))
    {
      v17 = OUTLINED_FUNCTION_29_24();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_48_16();
      v15 = 0;
      v20 = OUTLINED_FUNCTION_58_14();
      fence_38(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_29_24();
      if (!tag_phrase(v23))
      {
        goto LABEL_4;
      }

      v24 = OUTLINED_FUNCTION_101_7();
      vocative_phrase(v24, v25, v26, v27, v28);
      if (!v29 || (said_phrase(v1, v55, v54, v1 + 2736), !v30))
      {
        v15 = 0;
        goto LABEL_4;
      }
    }
  }

  v15 = 94;
LABEL_4:
  vretproc(v1);
  return v15;
}

uint64_t tag_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v136 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  OUTLINED_FUNCTION_52_15();
  bzero(v135, v10);
  if (setjmp(v135))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_92_10();
  if (ventproc(v1, v11, v12, v13, v14, v135))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_29_24();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_59_14();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_70_13();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_58_14();
  fence_38(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_57_14();
  if (!lpta_loadp_setscan_r(v29, v30, 4))
  {
    if (!advance_tok(v1, v31, v32, v33) && !advance_tok(v1, v34, v35, v36))
    {
      OUTLINED_FUNCTION_54_15();
      v37 = OUTLINED_FUNCTION_14_35();
      if (!test_ptr(v37, v38, v39))
      {
        v63 = OUTLINED_FUNCTION_27_25();
        starttest_l(v63, v64);
        OUTLINED_FUNCTION_31_22();
        bspush_ca_boa();
        v65 = OUTLINED_FUNCTION_85_11();
        lpta_rpta_loadp(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_42_16();
        v70 = !setd_lookup(v68, v69, 169);
        goto LABEL_29;
      }
    }

    v25 = 0;
  }

  while (2)
  {
    v40 = OUTLINED_FUNCTION_20_29();
    if (lpta_loadp_setscan_r(v40, v41, v42) || advance_tok(v1, v43, v44, v45) || advance_tok(v1, v46, v47, v48) || advance_tok(v1, v49, v50, v51) || (OUTLINED_FUNCTION_54_15(), v52 = OUTLINED_FUNCTION_14_35(), test_ptr(v52, v53, v54)))
    {
LABEL_19:
      v71 = OUTLINED_FUNCTION_20_29();
      if (lpta_loadp_setscan_r(v71, v72, v73) || advance_tok(v1, v74, v75, v76) || advance_tok(v1, v77, v78, v79) || advance_tok(v1, v80, v81, v82) || advance_tok(v1, v83, v84, v85) || (OUTLINED_FUNCTION_54_15(), v86 = OUTLINED_FUNCTION_14_35(), test_ptr(v86, v87, v88)))
      {
LABEL_3:
        v15 = 94;
        break;
      }

      v89 = OUTLINED_FUNCTION_38_18();
      starttest_l(v89, v90);
      OUTLINED_FUNCTION_30_23();
      bspush_ca_boa();
      v91 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v91, v92, v93);
      v60 = OUTLINED_FUNCTION_42_16();
      v62 = 171;
    }

    else
    {
      v55 = OUTLINED_FUNCTION_38_18();
      starttest_l(v55, v56);
      OUTLINED_FUNCTION_38_18();
      bspush_ca_boa();
      v57 = OUTLINED_FUNCTION_85_11();
      lpta_rpta_loadp(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_42_16();
      v62 = 170;
    }

    if (setd_lookup(v60, v61, v62))
    {
      v70 = v25;
    }

    else
    {
      v70 = 1;
    }

LABEL_29:
    v94 = v70;
LABEL_30:
    v95 = *(v1 + 104);
    if (v95)
    {
      v96 = OUTLINED_FUNCTION_56_14(v95);
      v94 = v97;
    }

    else
    {
      v96 = vback(v1, v94);
      v94 = 0;
    }

    switch(v96)
    {
      case 1:
        v25 = v94;
        continue;
      case 2:
      case 4:
      case 6:
      case 9:
        v98 = OUTLINED_FUNCTION_63_13();
        adjust_prev_phr_pause(v98, v99, v100);
        goto LABEL_35;
      case 3:
      case 7:
      case 10:
        bspop_boa(v1);
        goto LABEL_3;
      case 5:
        v25 = v94;
        goto LABEL_19;
      case 11:
LABEL_35:
        v101 = OUTLINED_FUNCTION_51_15();
        starttest(v101, v102);
        v103 = OUTLINED_FUNCTION_63_13();
        lpta_loadpn(v103, v104);
        OUTLINED_FUNCTION_77_12();
        lpta_movel();
        v105 = OUTLINED_FUNCTION_57_14();
        lpta_storep(v105, v106, v107);
        OUTLINED_FUNCTION_57_14();
        if (!adjust_prev_phr_ending())
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      case 12:
LABEL_36:
        v15 = 0;
        *(v1 + 3382) = *(v1 + 3390);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

  vretproc(v1);
  return v15;
}

void vocative_phrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v102 = *MEMORY[0x277D85DE8];
  v97[0] = 0;
  v97[1] = 0;
  v96[0] = 0;
  v96[1] = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v92, v6);
  OUTLINED_FUNCTION_52_15();
  bzero(v101, v7);
  if (!setjmp(v101))
  {
    v8 = ventproc(v5, v92, v100, v99, v98, v101);
    if (!v8)
    {
      OUTLINED_FUNCTION_68_13(v8, v97);
      OUTLINED_FUNCTION_48_16();
      v9 = OUTLINED_FUNCTION_47_16();
      push_ptr_init(v9, v10);
      v93 = 65532;
      fence_38(v5, 0, &null_str_15);
      v11 = OUTLINED_FUNCTION_109_5();
      fence_38(v11, v12, v13);
      OUTLINED_FUNCTION_51_15();
      if (is_member_of_list())
      {
LABEL_6:
        v14 = OUTLINED_FUNCTION_51_15();
        if (lpta_loadp_setscan_r(v14, v15, 4) || advance_tok(v5, v16, v17, v18) || (*(v5 + 136) = 1, v19 = OUTLINED_FUNCTION_14_35(), test_ptr(v19, v20, v21)))
        {
LABEL_9:
          v22 = OUTLINED_FUNCTION_51_15();
          if (!lpta_loadp_setscan_r(v22, v23, 4) && !advance_tok(v5, v24, v25, v26) && !advance_tok(v5, v27, v28, v29))
          {
            *(v5 + 136) = 1;
            v30 = OUTLINED_FUNCTION_14_35();
            if (!test_ptr(v30, v31, v32))
            {
              v33 = OUTLINED_FUNCTION_51_15();
              lpta_rpta_loadp(v33, v34, v96);
              v35 = OUTLINED_FUNCTION_109_5();
              if (!setd_lookup(v35, v36, 173))
              {
LABEL_14:
                v37 = OUTLINED_FUNCTION_96_8();
                starttest(v37, v38);
                move_i(v5, &v93, 35);
                v39 = OUTLINED_FUNCTION_51_15();
                adjust_prev_phr_pause(v39, v40, &v93);
                if (v41)
                {
                  goto LABEL_16;
                }

LABEL_15:
                v42 = OUTLINED_FUNCTION_108_5();
                starttest(v42, v43);
                v44 = OUTLINED_FUNCTION_51_15();
                lpta_loadpn(v44, v45);
                OUTLINED_FUNCTION_77_12();
                lpta_movel();
                v46 = OUTLINED_FUNCTION_46_16();
                lpta_storep(v46, v47, v48);
                OUTLINED_FUNCTION_46_16();
                if (!adjust_prev_phr_ending())
                {
LABEL_29:
                  *(v5 + 3382) = *(v5 + 3394);
                  vretproc(v5);
                  goto LABEL_4;
                }

LABEL_16:
                while (1)
                {
                  v49 = *(v5 + 104);
                  if (v49)
                  {
                    v50 = OUTLINED_FUNCTION_56_14(v49);
                  }

                  else
                  {
                    v51 = OUTLINED_FUNCTION_69_13();
                    v50 = vback(v51, v52);
                  }

                  switch(v50)
                  {
                    case 1:
                      goto LABEL_6;
                    case 2:
                    case 5:
                    case 10:
                      goto LABEL_14;
                    case 3:
                      goto LABEL_9;
                    case 4:
                      v53 = OUTLINED_FUNCTION_51_15();
                      lpta_rpta_loadp(v53, v54, v96);
                      v55 = OUTLINED_FUNCTION_109_5();
                      if (!setd_lookup(v55, v56, 172))
                      {
                        goto LABEL_14;
                      }

                      break;
                    case 6:
                      break;
                    case 11:
                      goto LABEL_15;
                    case 12:
                      goto LABEL_29;
                    default:
                      goto LABEL_3;
                  }

                  v57 = OUTLINED_FUNCTION_83_11();
                  starttest(v57, v58);
                  v59 = OUTLINED_FUNCTION_51_15();
                  if (lpta_loadp_setscan_r(v59, v60, 4))
                  {
                    break;
                  }

                  v61 = OUTLINED_FUNCTION_95_9();
                  if (!testFldeq(v61, v62, 2, 29) && !advance_tok(v5, v63, v64, v65))
                  {
                    *(v5 + 136) = 1;
                    v66 = OUTLINED_FUNCTION_14_35();
                    if (!test_ptr(v66, v67, v68))
                    {
                      v69 = OUTLINED_FUNCTION_51_15();
                      lpta_loadpn(v69, v70);
                      OUTLINED_FUNCTION_77_12();
                      lpta_movel();
                      v71 = OUTLINED_FUNCTION_46_16();
                      lpta_storep(v71, v72, v73);
                      v74 = OUTLINED_FUNCTION_46_16();
                      prev_phrase_triggers_voc(v74, v75, v76, v77, v78);
                      if (!v79)
                      {
                        goto LABEL_14;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v80 = OUTLINED_FUNCTION_88_10();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_51_15();
          lpta_loadpn(v82, v83);
          OUTLINED_FUNCTION_77_12();
          lpta_movel();
          v84 = OUTLINED_FUNCTION_46_16();
          lpta_storep(v84, v85, v86);
          v87 = OUTLINED_FUNCTION_46_16();
          block_vocative(v87, v88, v96, v89, v90);
          if (v91)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v5);
LABEL_4:
  OUTLINED_FUNCTION_90_10();
}

uint64_t is_member_of_list()
{
  OUTLINED_FUNCTION_111_5();
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_27(v1, v2, v3, v4, v5, v6, v7, v8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3]);
  OUTLINED_FUNCTION_52_15();
  bzero(v71, v9);
  if (!setjmp(v71))
  {
    OUTLINED_FUNCTION_78_12();
    if (!ventproc(v0, v10, v11, v12, v13, v71))
    {
      OUTLINED_FUNCTION_48_16();
      v14 = OUTLINED_FUNCTION_70_13();
      push_ptr_init(v14, v15);
      v16 = OUTLINED_FUNCTION_58_14();
      fence_38(v16, v17, &null_str_15);
      v18 = OUTLINED_FUNCTION_58_14();
      fence_38(v18, v19, &null_str_15);
      v20 = OUTLINED_FUNCTION_38_18();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_51_15();
      if (!lpta_loadp_setscan_r(v22, v23, 4) && !advance_tok(v0, v24, v25, v26))
      {
        v34 = OUTLINED_FUNCTION_27_25();
        bspush_ca_scan(v34, v35);
        while (2)
        {
          v36 = OUTLINED_FUNCTION_63_13();
          savescptr(v36, v37, v70);
LABEL_13:
          v38 = OUTLINED_FUNCTION_46_16();
          if (test_synch(v38, v39, 1, &_MergedGlobals_34))
          {
LABEL_14:
            v40 = *(v0 + 104);
            if (v40)
            {
              v41 = OUTLINED_FUNCTION_56_14(v40);
            }

            else
            {
              v45 = OUTLINED_FUNCTION_69_13();
              v41 = vback(v45, v46);
            }

            switch(v41)
            {
              case 1:
                break;
              case 2:
                if (!advance_tok(v0, v42, v43, v44))
                {
                  continue;
                }

                goto LABEL_14;
              case 3:
                continue;
              case 4:
                goto LABEL_13;
              case 5:
                goto LABEL_7;
              case 7:
                goto LABEL_20;
              default:
                goto LABEL_9;
            }
          }

          break;
        }
      }

      v27 = OUTLINED_FUNCTION_70_13();
      lpta_loadpn(v27, v28);
      OUTLINED_FUNCTION_112_5();
      if (compare_ptas(v0) || testeq(v0))
      {
LABEL_7:
        v29 = OUTLINED_FUNCTION_44_16();
        if (!lpta_loadp_setscan_r(v29, v30, v31))
        {
          OUTLINED_FUNCTION_42_16();
          if (!test_string_s())
          {
LABEL_20:
            v32 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_9:
  v32 = 94;
LABEL_10:
  vretproc(v0);
  return v32;
}

void block_vocative(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v92 = *MEMORY[0x277D85DE8];
  v90[0] = 0;
  v90[1] = 0;
  OUTLINED_FUNCTION_23_27(v6, v7, v8, v9, v10, v11, v12, v13, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  OUTLINED_FUNCTION_52_15();
  bzero(v91, v14);
  if (!setjmp(v91))
  {
    OUTLINED_FUNCTION_92_10();
    if (!ventproc(v5, v15, v16, v17, v18, v91))
    {
      v19 = OUTLINED_FUNCTION_29_24();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_59_14();
      get_parm(v22, v23, v24, -6);
      v25 = OUTLINED_FUNCTION_70_13();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_58_14();
      fence_38(v27, v28, &null_str_15);
      v29 = OUTLINED_FUNCTION_58_14();
      fence_38(v29, v30, &null_str_15);
      v31 = OUTLINED_FUNCTION_57_14();
      if (!lpta_loadp_setscan_l(v31, v32, 5) && !advance_tok(v5, v33, v34, v35))
      {
LABEL_6:
        OUTLINED_FUNCTION_65_13();
        v36 = OUTLINED_FUNCTION_101_7();
        savescptr(v36, v37, v38);
      }

      while (2)
      {
        v39 = OUTLINED_FUNCTION_63_13();
        lpta_loadpn(v39, v40);
        OUTLINED_FUNCTION_112_5();
        if (compare_ptas(v5) || testeq(v5))
        {
LABEL_9:
          v41 = OUTLINED_FUNCTION_63_13();
          if (lpta_loadp_setscan_r(v41, v42, 4) || advance_tok(v5, v43, v44, v45) || (*(v5 + 136) = 1, v46 = OUTLINED_FUNCTION_14_35(), test_ptr(v46, v47, v48)))
          {
LABEL_12:
            v49 = OUTLINED_FUNCTION_63_13();
            lpta_rpta_loadp(v49, v50, v90);
            v51 = OUTLINED_FUNCTION_64_13();
            if (setd_lookup(v51, v52, 172))
            {
LABEL_13:
              v53 = OUTLINED_FUNCTION_46_16();
              starttest(v53, v54);
              v55 = OUTLINED_FUNCTION_67_13();
              if (!lpta_loadp_setscan_l(v55, v56, 1))
              {
                v57 = OUTLINED_FUNCTION_83_11();
                bspush_ca_scan(v57, v58);
                OUTLINED_FUNCTION_64_13();
LABEL_15:
                if (test_string_s())
                {
                  v59 = *(v5 + 104);
                  if (v59)
                  {
                    v60 = OUTLINED_FUNCTION_56_14(v59);
                  }

                  else
                  {
                    v61 = OUTLINED_FUNCTION_69_13();
                    v60 = vback(v61, v62);
                  }

                  switch(v60)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_6;
                    case 3:
                      goto LABEL_9;
                    case 4:
                      goto LABEL_12;
                    case 5:
                      goto LABEL_13;
                    case 8:
                      OUTLINED_FUNCTION_36_18();
                      goto LABEL_15;
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_90_10();
}

void prev_phrase_triggers_voc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_111_5();
  v123 = *MEMORY[0x277D85DE8];
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v115 = 0;
  v116 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v114, v6);
  OUTLINED_FUNCTION_52_15();
  bzero(v122, v7);
  if (!setjmp(v122) && !ventproc(v5, v114, v121, v120, v119, v122))
  {
    OUTLINED_FUNCTION_48_16();
    push_ptr_init(v5, v117);
    v8 = OUTLINED_FUNCTION_94_9();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_58_14();
    fence_38(v10, v11, &null_str_15);
    v12 = OUTLINED_FUNCTION_58_14();
    fence_38(v12, v13, &null_str_15);
    v14 = OUTLINED_FUNCTION_51_15();
    if (!lpta_loadp_setscan_l(v14, v15, 5) && !advance_tok(v5, v16, v17, v18))
    {
LABEL_6:
      OUTLINED_FUNCTION_65_13();
      savescptr(v5, v19, v117);
    }

    while (2)
    {
      v20 = OUTLINED_FUNCTION_63_13();
      lpta_loadpn(v20, v21);
      OUTLINED_FUNCTION_112_5();
      if (compare_ptas(v5) || testeq(v5))
      {
LABEL_9:
        v22 = OUTLINED_FUNCTION_93_10();
        starttest(v22, v23);
        v24 = OUTLINED_FUNCTION_57_14();
        if (!lpta_loadp_setscan_l(v24, v25, 4))
        {
          v85 = OUTLINED_FUNCTION_36_18();
          if (!testFldeq(v85, v86, v87, 29) && !advance_tok(v5, v88, v89, v90))
          {
            break;
          }

          goto LABEL_42;
        }

LABEL_10:
        OUTLINED_FUNCTION_63_13();
        get_nonpickup_word();
LABEL_11:
        v26 = OUTLINED_FUNCTION_63_13();
        lpta_rpta_loadp(v26, v27, v118);
        v28 = OUTLINED_FUNCTION_84_11();
        if (!setd_lookup(v28, v29, 174))
        {
          break;
        }

LABEL_12:
        starttest(v5, 8);
        v30 = OUTLINED_FUNCTION_63_13();
        if (lpta_loadp_setscan_r(v30, v31, 4))
        {
LABEL_13:
          v32 = OUTLINED_FUNCTION_96_8();
          starttest(v32, v33);
          v34 = OUTLINED_FUNCTION_63_13();
          if (lpta_loadp_setscan_r(v34, v35, 4))
          {
LABEL_14:
            v36 = OUTLINED_FUNCTION_83_11();
            starttest(v36, v37);
            v38 = OUTLINED_FUNCTION_63_13();
            if (!lpta_loadp_setscan_r(v38, v39, 4))
            {
              v78 = OUTLINED_FUNCTION_110_5();
              bspush_ca_scan(v78, v79);
LABEL_35:
              v80 = OUTLINED_FUNCTION_108_5();
              bspush_ca_scan(v80, v81);
LABEL_36:
              v49 = OUTLINED_FUNCTION_36_18();
              v52 = 6;
LABEL_37:
              if (!testFldeq(v49, v50, v51, v52) && !advance_tok(v5, v82, v83, v84))
              {
                break;
              }

              goto LABEL_42;
            }

LABEL_15:
            starttest(v5, 19);
            v40 = OUTLINED_FUNCTION_57_14();
            if (lpta_loadp_setscan_l(v40, v41, 4))
            {
              break;
            }

            v42 = OUTLINED_FUNCTION_64_13();
            if (!testFldeq(v42, v43, 1, 4) && !advance_tok(v5, v44, v45, v46))
            {
LABEL_18:
              v47 = OUTLINED_FUNCTION_107_5();
              if (!chstream(v47, v48, 1u))
              {
                OUTLINED_FUNCTION_84_11();
                if (!test_string_s())
                {
LABEL_20:
                  if (!chstream(v5, 21, 4u))
                  {
                    v49 = OUTLINED_FUNCTION_64_13();
                    v51 = 1;
                    v52 = 1;
                    goto LABEL_37;
                  }
                }
              }
            }

LABEL_42:
            v91 = *(v5 + 104);
            if (v91)
            {
              v92 = OUTLINED_FUNCTION_56_14(v91);
            }

            else
            {
              v93 = OUTLINED_FUNCTION_69_13();
              v92 = vback(v93, v94);
            }

            switch(v92)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_6;
              case 3:
                goto LABEL_9;
              case 4:
                goto LABEL_10;
              case 5:
                goto LABEL_11;
              case 6:
                goto LABEL_12;
              case 8:
                goto LABEL_13;
              case 9:
                goto LABEL_14;
              case 10:
                v95 = OUTLINED_FUNCTION_36_18();
                if (!testFldeq(v95, v96, v97, 25) && !advance_tok(v5, v98, v99, v100))
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              case 11:
                goto LABEL_29;
              case 12:
                v101 = OUTLINED_FUNCTION_36_18();
                if (!testFldeq(v101, v102, v103, 8))
                {
                  goto LABEL_26;
                }

                goto LABEL_42;
              case 13:
                goto LABEL_32;
              case 14:
                goto LABEL_15;
              case 15:
                v104 = OUTLINED_FUNCTION_64_13();
                if (!testFldeq(v104, v105, 3, 11) && !advance_tok(v5, v106, v107, v108))
                {
                  goto LABEL_35;
                }

                goto LABEL_42;
              case 16:
                goto LABEL_35;
              case 17:
                v109 = OUTLINED_FUNCTION_64_13();
                if (!testFldeq(v109, v110, 1, 8) && !advance_tok(v5, v111, v112, v113))
                {
                  goto LABEL_36;
                }

                goto LABEL_42;
              case 18:
                goto LABEL_36;
              case 20:
                goto LABEL_18;
              case 21:
                goto LABEL_20;
              default:
                goto LABEL_3;
            }

            break;
          }

          bspush_ca_scan(v5, 10);
LABEL_29:
          v68 = OUTLINED_FUNCTION_64_13();
          if (testFldeq(v68, v69, 1, 1) || advance_tok(v5, v70, v71, v72))
          {
            goto LABEL_42;
          }

          v73 = OUTLINED_FUNCTION_106_5();
          bspush_ca_scan(v73, v74);
        }

        else
        {
          v53 = OUTLINED_FUNCTION_36_18();
          if (testFldeq(v53, v54, v55, 13))
          {
            goto LABEL_42;
          }

          if (advance_tok(v5, v56, v57, v58))
          {
            goto LABEL_42;
          }

          v59 = OUTLINED_FUNCTION_36_18();
          if (testFldeq(v59, v60, v61, 1) || advance_tok(v5, v62, v63, v64))
          {
            goto LABEL_42;
          }

LABEL_26:
          if (advance_tok(v5, v65, v66, v67))
          {
            goto LABEL_42;
          }
        }

LABEL_32:
        *(v5 + 136) = 1;
        v75 = OUTLINED_FUNCTION_14_35();
        if (!test_ptr(v75, v76, v77))
        {
          break;
        }

        goto LABEL_42;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_90_10();
}

uint64_t fren_said_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_16_34();
  v299 = *MEMORY[0x277D85DE8];
  v287 = 0;
  v288 = 0;
  v285 = 0;
  v286 = 0;
  HIDWORD(v284) = 0;
  v282 = 0;
  v283 = 0;
  OUTLINED_FUNCTION_40_17(v2, v3, v4, v5, v6, v7, v8, v9, v276, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281);
  OUTLINED_FUNCTION_52_15();
  bzero(v298, v10);
  v11 = setjmp(v298);
  if (v11 || OUTLINED_FUNCTION_74_13(v11, v279, v12, v13, v14, v15, v16, v17, v277, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_16();
    v19 = OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_82_11(v19, v20);
    v21 = OUTLINED_FUNCTION_59_14();
    get_parm(v21, v22, v23, -4);
    push_ptr_init(v1, &v282);
    v24 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_58_14();
    fence_38(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_38_18();
    starttest(v29, v30);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v31 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v31, v32, v33))
    {
      v37 = 0;
    }

    else if (advance_tok(v1, v34, v35, v36))
    {
      v37 = 0;
    }

    else
    {
      v38 = OUTLINED_FUNCTION_31_22();
      bspush_ca_scan(v38, v39);
      v42 = 0;
LABEL_111:
      v275 = v42;
      *(v1 + 136) = 1;
      *(v1 + 112) = v286;
      *(v1 + 128) = 0;
      if (test_ptr(v1, v40, v41))
      {
        v37 = v275;
      }

      else
      {
        v37 = 1;
      }
    }

    LODWORD(v40) = v37;
    while (2)
    {
      v43 = *(v1 + 104);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_56_14(v43);
        v50 = v40;
      }

      else
      {
        v44 = vback(v1, v40);
        v50 = 0;
      }

      v42 = v50;
      switch(v44)
      {
        case 1:
          v60 = OUTLINED_FUNCTION_30_23();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v62, v63, v64))
          {
            goto LABEL_21;
          }

          v261 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v261, v262);
          goto LABEL_103;
        case 2:
          bspop_boa(v1);
          goto LABEL_3;
        case 3:
          v103 = advance_tok(v1, v40, v41, v45);
          LODWORD(v40) = v50;
          if (v103)
          {
            continue;
          }

          goto LABEL_110;
        case 4:
          goto LABEL_111;
        case 5:
          v59 = advance_tok(v1, v40, v41, v45);
          LODWORD(v40) = v50;
          if (v59)
          {
            continue;
          }

          goto LABEL_110;
        case 6:
          v162 = advance_tok(v1, v40, v41, v45);
          LODWORD(v40) = v50;
          if (v162)
          {
            continue;
          }

          goto LABEL_110;
        case 7:
          v127 = advance_tok(v1, v40, v41, v45);
          LODWORD(v40) = v50;
          if (v127)
          {
            continue;
          }

          goto LABEL_110;
        case 8:
          v146 = advance_tok(v1, v40, v41, v45);
          LODWORD(v40) = v50;
          if (v146)
          {
            continue;
          }

LABEL_110:
          v273 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v273, v274);
          v42 = v50;
          goto LABEL_111;
        case 9:
          v145 = advance_tok(v1, v40, v41, v45);
          v42 = v50;
          v40 = v50;
          if (!v145)
          {
            goto LABEL_111;
          }

          continue;
        case 10:
LABEL_21:
          v65 = OUTLINED_FUNCTION_38_18();
          starttest(v65, v66);
          v67 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v67, v68, v69))
          {
            goto LABEL_22;
          }

          v234 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v234, v235);
          goto LABEL_92;
        case 11:
          v207 = OUTLINED_FUNCTION_10_36();
          v210 = testFldeq(v207, v208, v209, 34);
          LODWORD(v40) = v50;
          if (v210)
          {
            continue;
          }

          v213 = advance_tok(v1, v50, v211, v212);
          LODWORD(v40) = v50;
          if (v213)
          {
            continue;
          }

          goto LABEL_103;
        case 12:
LABEL_103:
          v263 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v263, v264);
          goto LABEL_104;
        case 13:
          v120 = OUTLINED_FUNCTION_10_36();
          v123 = testFldeq(v120, v121, v122, 12);
          LODWORD(v40) = v50;
          if (v123)
          {
            continue;
          }

          v126 = advance_tok(v1, v50, v124, v125);
          LODWORD(v40) = v50;
          if (v126)
          {
            continue;
          }

          goto LABEL_104;
        case 14:
LABEL_104:
          OUTLINED_FUNCTION_66_13(14, v278, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281, v282);
          v265 = OUTLINED_FUNCTION_2_39();
          v269 = testFldeq(v265, v266, v267, v268);
          LODWORD(v40) = v50;
          if (!v269)
          {
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v270 = OUTLINED_FUNCTION_10_36();
            if (testFldeq(v270, v271, v272, 2))
            {
              LODWORD(v40) = v50;
            }

            else
            {
              LODWORD(v40) = 1;
            }
          }

          continue;
        case 15:
          bspop_boa(v1);
          v104 = OUTLINED_FUNCTION_11_36();
          v107 = testFldeq(v104, v105, v106, 4);
          LODWORD(v40) = v50;
          if (v107)
          {
            continue;
          }

          v110 = advance_tok(v1, v50, v108, v109);
          LODWORD(v40) = v50;
          if (v110)
          {
            continue;
          }

          goto LABEL_38;
        case 16:
LABEL_38:
          v111 = OUTLINED_FUNCTION_59_14();
          savescptr(v111, v112, v113);
          v114 = OUTLINED_FUNCTION_59_14();
          lpta_rpta_loadp(v114, v115, v116);
          v117 = OUTLINED_FUNCTION_42_16();
          v119 = 93;
          goto LABEL_99;
        case 17:
          goto LABEL_108;
        case 18:
LABEL_22:
          v70 = OUTLINED_FUNCTION_38_18();
          starttest(v70, v71);
          v72 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v72, v73, v74))
          {
            goto LABEL_23;
          }

          v214 = OUTLINED_FUNCTION_9_36();
          v217 = testFldeq(v214, v215, v216, 4);
          LODWORD(v40) = v50;
          if (v217)
          {
            continue;
          }

          v218 = OUTLINED_FUNCTION_10_36();
          v221 = testFldeq(v218, v219, v220, 12);
          LODWORD(v40) = v50;
          if (v221)
          {
            continue;
          }

          v224 = advance_tok(v1, v50, v222, v223);
          LODWORD(v40) = v50;
          if (v224)
          {
            continue;
          }

          v225 = OUTLINED_FUNCTION_10_36();
          v228 = testFldeq(v225, v226, v227, 1);
          LODWORD(v40) = v50;
          if (v228)
          {
            continue;
          }

          v231 = advance_tok(v1, v50, v229, v230);
          LODWORD(v40) = v50;
          if (v231)
          {
            continue;
          }

          v232 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v232, v233);
LABEL_78:
          v197 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v197, v198);
LABEL_79:
          OUTLINED_FUNCTION_66_13(30, v278, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281, v282);
          v199 = OUTLINED_FUNCTION_2_39();
          v203 = testFldeq(v199, v200, v201, v202);
          LODWORD(v40) = v50;
          if (!v203)
          {
            v206 = advance_tok(v1, v50, v204, v205);
            LODWORD(v40) = v50;
            if (!v206)
            {
              goto LABEL_98;
            }
          }

          continue;
        case 19:
          v163 = OUTLINED_FUNCTION_10_36();
          v166 = testFldeq(v163, v164, v165, 12);
          LODWORD(v40) = v50;
          if (v166)
          {
            continue;
          }

          v169 = advance_tok(v1, v50, v167, v168);
          LODWORD(v40) = v50;
          if (v169)
          {
            continue;
          }

          goto LABEL_92;
        case 20:
LABEL_92:
          v236 = OUTLINED_FUNCTION_10_36();
          v239 = testFldeq(v236, v237, v238, 2);
          LODWORD(v40) = v50;
          if (v239)
          {
            continue;
          }

          v242 = advance_tok(v1, v50, v240, v241);
          LODWORD(v40) = v50;
          if (v242)
          {
            continue;
          }

          v243 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v243, v244);
LABEL_95:
          v245 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v245, v246);
LABEL_96:
          OUTLINED_FUNCTION_66_13(24, v278, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281, v282);
          v247 = OUTLINED_FUNCTION_2_39();
          v251 = testFldeq(v247, v248, v249, v250);
          LODWORD(v40) = v50;
          if (v251)
          {
            continue;
          }

          v254 = advance_tok(v1, v50, v252, v253);
          LODWORD(v40) = v50;
          if (v254)
          {
            continue;
          }

LABEL_98:
          v255 = OUTLINED_FUNCTION_59_14();
          savescptr(v255, v256, v257);
          v258 = OUTLINED_FUNCTION_59_14();
          lpta_rpta_loadp(v258, v259, v260);
          v117 = OUTLINED_FUNCTION_42_16();
          v119 = 94;
LABEL_99:
          v189 = setd_lookup(v117, v118, v119);
          goto LABEL_100;
        case 21:
          v147 = OUTLINED_FUNCTION_10_36();
          v150 = testFldeq(v147, v148, v149, 11);
          LODWORD(v40) = v50;
          if (v150)
          {
            continue;
          }

          v153 = advance_tok(v1, v50, v151, v152);
          LODWORD(v40) = v50;
          if (v153)
          {
            continue;
          }

          goto LABEL_95;
        case 22:
          goto LABEL_95;
        case 23:
          v137 = OUTLINED_FUNCTION_4_38();
          v141 = testFldeq(v137, v138, v139, v140);
          LODWORD(v40) = v50;
          if (v141)
          {
            continue;
          }

          v144 = advance_tok(v1, v50, v142, v143);
          LODWORD(v40) = v50;
          if (v144)
          {
            continue;
          }

          goto LABEL_96;
        case 24:
          goto LABEL_96;
        case 25:
        case 31:
          goto LABEL_98;
        case 26:
LABEL_23:
          v75 = OUTLINED_FUNCTION_33_21();
          starttest(v75, v76);
          v77 = OUTLINED_FUNCTION_18_33();
          if (lpta_loadp_setscan_r(v77, v78, v79))
          {
            goto LABEL_3;
          }

          bspush_boa(v1);
LABEL_25:
          v80 = OUTLINED_FUNCTION_13_35();
          v83 = chstream(v80, v81, v82);
          LODWORD(v40) = v50;
          if (v83)
          {
            continue;
          }

          v84 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v84, v85);
          OUTLINED_FUNCTION_42_16();
LABEL_29:
          v86 = test_string_s();
          LODWORD(v40) = v50;
          if (v86)
          {
            continue;
          }

LABEL_30:
          v87 = OUTLINED_FUNCTION_38_18();
          v89 = chstream(v87, v88, 4u);
          LODWORD(v40) = v50;
          if (v89)
          {
            continue;
          }

          v90 = advanc(v1);
          LODWORD(v40) = v50;
          if (v90)
          {
            continue;
          }

          bspush_nboa(v1);
          v91 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v91, v92);
          v93 = OUTLINED_FUNCTION_9_36();
          v96 = testFldeq(v93, v94, v95, 4);
          LODWORD(v40) = v50;
          if (v96)
          {
            continue;
          }

          v97 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v97, v98);
          v99 = OUTLINED_FUNCTION_10_36();
          v102 = 11;
LABEL_45:
          v128 = testFldeq(v99, v100, v101, v102);
          v40 = v50;
          if (v128)
          {
            continue;
          }

LABEL_13:
          v44 = advance_tok(v1, v40, v41, v45);
          v40 = v50;
          if (!v44)
          {
            goto LABEL_75;
          }

          continue;
        case 27:
          v190 = OUTLINED_FUNCTION_10_36();
          v193 = testFldeq(v190, v191, v192, 11);
          LODWORD(v40) = v50;
          if (v193)
          {
            continue;
          }

          v196 = advance_tok(v1, v50, v194, v195);
          LODWORD(v40) = v50;
          if (v196)
          {
            continue;
          }

          goto LABEL_78;
        case 28:
          goto LABEL_78;
        case 29:
          v129 = OUTLINED_FUNCTION_4_38();
          v133 = testFldeq(v129, v130, v131, v132);
          LODWORD(v40) = v50;
          if (v133)
          {
            continue;
          }

          v136 = advance_tok(v1, v50, v134, v135);
          LODWORD(v40) = v50;
          if (v136)
          {
            continue;
          }

          goto LABEL_79;
        case 30:
          goto LABEL_79;
        case 33:
          goto LABEL_25;
        case 34:
          OUTLINED_FUNCTION_42_16();
          goto LABEL_29;
        case 35:
          goto LABEL_30;
        case 36:
          v51 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v51, v52);
          v53 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v53, v54);
          goto LABEL_72;
        case 37:
          v99 = OUTLINED_FUNCTION_11_36();
          v102 = 9;
          goto LABEL_45;
        case 38:
        case 46:
          goto LABEL_13;
        case 39:
        case 47:
          goto LABEL_75;
        case 40:
          v154 = OUTLINED_FUNCTION_8_37();
          v158 = testFldeq(v154, v155, v156, v157);
          LODWORD(v40) = v50;
          if (v158)
          {
            continue;
          }

          v161 = advance_tok(v1, v50, v159, v160);
          LODWORD(v40) = v50;
          if (v161)
          {
            continue;
          }

          v99 = OUTLINED_FUNCTION_1_40();
          goto LABEL_45;
        case 41:
          v55 = OUTLINED_FUNCTION_13_35();
          v58 = chstream(v55, v56, v57);
          LODWORD(v40) = v50;
          if (v58)
          {
            continue;
          }

          goto LABEL_68;
        case 42:
          goto LABEL_72;
        case 43:
LABEL_68:
          v170 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v170, v171);
          OUTLINED_FUNCTION_42_16();
          goto LABEL_69;
        case 44:
          goto LABEL_70;
        case 45:
          OUTLINED_FUNCTION_42_16();
LABEL_69:
          v172 = test_string_s();
          LODWORD(v40) = v50;
          if (v172)
          {
            continue;
          }

LABEL_70:
          v173 = OUTLINED_FUNCTION_38_18();
          v175 = chstream(v173, v174, 4u);
          LODWORD(v40) = v50;
          if (v175)
          {
            continue;
          }

          v176 = advanc(v1);
          LODWORD(v40) = v50;
          if (v176)
          {
            continue;
          }

LABEL_72:
          v177 = OUTLINED_FUNCTION_10_36();
          v180 = testFldeq(v177, v178, v179, 29);
          LODWORD(v40) = v50;
          if (v180)
          {
            continue;
          }

          v183 = advance_tok(v1, v50, v181, v182);
          LODWORD(v40) = v50;
          if (v183)
          {
            continue;
          }

          v184 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v184, v185);
LABEL_75:
          v186 = OUTLINED_FUNCTION_0_41(v44, v40, v41, v45, v46, v47, v48, v49, v278, *v279, *&v279[8], *&v279[16], *&v279[24], *&v279[32], *&v279[40], *&v279[48], *&v279[56], *&v279[64], *&v279[72], *&v279[80], *&v279[88], *&v279[96], *&v279[104], *&v279[112], *&v279[120], *&v279[128], *&v279[136], *&v279[144], *&v279[152], *&v279[160], *&v279[168], *&v279[176], v280, v281, v282, v283, v284, v285, v286);
          v189 = test_ptr(v186, v187, v188);
LABEL_100:
          LODWORD(v40) = v50;
          if (v189)
          {
            continue;
          }

LABEL_108:
          vretproc(v1);
          result = 0;
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

void apply_fren_comma_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v64 = *MEMORY[0x277D85DE8];
  v59[0] = 0;
  v59[1] = 0;
  OUTLINED_FUNCTION_40_17(v7, v8, v9, v10, v11, v12, v13, v14, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v57, v58);
  OUTLINED_FUNCTION_52_15();
  bzero(v63, v15);
  if (setjmp(v63) || ventproc(v5, v56, v62, v61, v60, v63))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_29_24();
  get_parm(v16, v17, v18, -6);
  OUTLINED_FUNCTION_48_16();
  fence_38(v5, 0, &null_str_15);
  v19 = OUTLINED_FUNCTION_29_24();
  if (!follows_cest_vrai(v19))
  {
    v50 = OUTLINED_FUNCTION_69_13();
    goto LABEL_27;
  }

  while (2)
  {
    v20 = OUTLINED_FUNCTION_57_14();
    starttest(v20, v21);
    if (!lpta_loadp_setscan_r(v5, v59, 4))
    {
      v34 = OUTLINED_FUNCTION_105_6();
      bspush_ca_scan(v34, v35);
LABEL_14:
      v36 = OUTLINED_FUNCTION_83_11();
      if (chstream(v36, v37, 1u) || test_string_s())
      {
        goto LABEL_18;
      }

LABEL_16:
      if (chstream(v5, 6, 4u) || (*(v5 + 136) = 1, v38 = OUTLINED_FUNCTION_14_35(), test_ptr(v38, v39, v40)))
      {
LABEL_18:
        v41 = *(v5 + 104);
        if (v41)
        {
          v42 = OUTLINED_FUNCTION_56_14(v41);
        }

        else
        {
          v43 = OUTLINED_FUNCTION_69_13();
          v42 = vback(v43, v44);
        }

        switch(v42)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_29;
          case 3:
            goto LABEL_7;
          case 4:
            v45 = OUTLINED_FUNCTION_84_11();
            if (!testFldeq(v45, v46, 1, 7) && !advance_tok(v5, v47, v48, v49) && !advanc(v5))
            {
              goto LABEL_14;
            }

            goto LABEL_18;
          case 5:
            goto LABEL_14;
          case 6:
            goto LABEL_16;
          case 7:
            goto LABEL_8;
          case 9:
            goto LABEL_30;
          default:
            goto LABEL_3;
        }
      }

      v53 = OUTLINED_FUNCTION_64_13();
      npush_s(v53);
      *(v5 + 3282) = 2;
      npop(v5, (v5 + 3280));
      v54 = OUTLINED_FUNCTION_58_14();
      npush_s(v54);
      *(v5 + 3282) = 3;
      npop(v5, (v5 + 3280));
      v50 = OUTLINED_FUNCTION_58_14();
LABEL_27:
      npush_s(v50);
      v51 = 4;
      goto LABEL_28;
    }

    break;
  }

LABEL_7:
  if (is_low_rising_comma_phrase(v5))
  {
LABEL_8:
    v22 = OUTLINED_FUNCTION_46_16();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_108_5();
    if (lpta_loadp_setscan_l(v24, v25, 4))
    {
LABEL_3:
      vretproc(v5);
      goto LABEL_4;
    }

    v26 = OUTLINED_FUNCTION_84_11();
    if (!testFldeq(v26, v27, 1, 7) && !advance_tok(v5, v28, v29, v30))
    {
      *(v5 + 136) = 1;
      v31 = OUTLINED_FUNCTION_14_35();
      if (!test_ptr(v31, v32, v33))
      {
        goto LABEL_31;
      }
    }

    goto LABEL_18;
  }

LABEL_31:
  v52 = OUTLINED_FUNCTION_69_13();
  npush_s(v52);
  v51 = 3;
LABEL_28:
  *(v5 + 3282) = v51;
  npop(v5, (v5 + 3280));
LABEL_29:
  insert_comma_phrase(v5, v59, &v57);
LABEL_30:
  *(v6 + 8) = v58;
  vretproc(v5);
LABEL_4:
  OUTLINED_FUNCTION_90_10();
}

uint64_t follows_cest_vrai(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v83 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v3, v4, v5, v6, v7, v8, v9, v10, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  OUTLINED_FUNCTION_52_15();
  bzero(v82, v11);
  v12 = setjmp(v82);
  if (v12 || OUTLINED_FUNCTION_98_8(v12, &v48, v81 + 7, &v80 + 6, &v79 + 4, v13, v14, v15, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0], v81[1]) || (v16 = OUTLINED_FUNCTION_29_24(), get_parm(v16, v17, v18, -6), v19 = OUTLINED_FUNCTION_49_16(), get_parm(v19, v20, v2, -6), v21 = OUTLINED_FUNCTION_87_10(), push_ptr_init(v21, v22), v23 = OUTLINED_FUNCTION_70_13(), push_ptr_init(v23, v24), fence_38(v1, 0, &null_str_15), v25 = OUTLINED_FUNCTION_38_18(), starttest(v25, v26), v27 = OUTLINED_FUNCTION_57_14(), lpta_loadp_setscan_l(v27, v28, 5)) || advanc(v1))
  {
LABEL_15:
    vretproc(v1);
    return 94;
  }

LABEL_5:
  v29 = OUTLINED_FUNCTION_63_13();
  savescptr(v29, v30, &v71);
  v31 = OUTLINED_FUNCTION_77_12();
  if (testFldeq(v31, v32, 1, 1) || advance_tok(v1, v33, v34, v35))
  {
    goto LABEL_10;
  }

  while (1)
  {
    v36 = OUTLINED_FUNCTION_46_16();
    savescptr(v36, v37, &v73);
    v38 = OUTLINED_FUNCTION_67_13();
    if (!lpta_loadp_setscan_r(v38, v39, 1))
    {
      OUTLINED_FUNCTION_95_9();
      if (!test_string_s())
      {
        *(v1 + 136) = 1;
        v40 = OUTLINED_FUNCTION_14_35();
        if (!test_ptr(v40, v41, v42))
        {
          break;
        }
      }
    }

LABEL_10:
    v43 = *(v1 + 104);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_56_14(v43);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_69_13();
      v44 = vback(v45, v46);
    }

    if (v44 == 2)
    {
      goto LABEL_5;
    }

    if (v44 != 3)
    {
      goto LABEL_15;
    }
  }

  vretproc(v1);
  return 0;
}

uint64_t is_low_rising_comma_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v248 = *MEMORY[0x277D85DE8];
  v236 = 0;
  v237 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v3, v4, v5, v6, v7, v8, v9, v10, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
  OUTLINED_FUNCTION_52_15();
  bzero(v247, v11);
  v12 = setjmp(v247);
  if (v12 || OUTLINED_FUNCTION_74_13(v12, &v205, v13, v14, v15, v16, v17, v18, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v20 = OUTLINED_FUNCTION_29_24();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_41_16();
  get_parm(v23, v24, v2, -6);
  v25 = OUTLINED_FUNCTION_49_16();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_70_13();
  push_ptr_init(v29, v30);
  v31 = OUTLINED_FUNCTION_58_14();
  fence_38(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_93_10();
  starttest(v34, v35);
  OUTLINED_FUNCTION_27_25();
  bspush_ca_boa();
  v36 = OUTLINED_FUNCTION_57_14();
  if (lpta_loadp_setscan_l(v36, v37, 1))
  {
    v38 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_34();
    if (test_string_s() || (v39 = OUTLINED_FUNCTION_21_28(), lpta_loadp_setscan_r(v39, v40, v41)))
    {
      v38 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_42_16();
      v38 = test_string_s() == 0;
    }
  }

  LODWORD(v42) = v38;
  while (2)
  {
    v43 = v1[13];
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_56_14(v43);
      v51 = v42;
    }

    else
    {
      v44 = vback(v1, v42);
      v51 = 0;
    }

    switch(v44)
    {
      case 1:
        starttest(v1, 4);
        OUTLINED_FUNCTION_38_18();
        bspush_ca_boa();
        v52 = OUTLINED_FUNCTION_60_14();
        v54 = lpta_loadp_setscan_r(v52, v53, 4);
        LODWORD(v42) = v51;
        if (v54)
        {
          continue;
        }

        v57 = advance_tok(v1, v51, v55, v56);
        LODWORD(v42) = v51;
        if (v57)
        {
          continue;
        }

        goto LABEL_50;
      case 2:
      case 5:
      case 23:
        bspop_boa(v1);
        goto LABEL_3;
      case 3:
        goto LABEL_79;
      case 4:
        v109 = OUTLINED_FUNCTION_38_18();
        starttest(v109, v110);
        v111 = OUTLINED_FUNCTION_12_36();
        if (lpta_loadp_setscan_r(v111, v112, v113))
        {
          goto LABEL_40;
        }

        v202 = OUTLINED_FUNCTION_34_19();
        bspush_ca_scan(v202, v203);
        v104 = OUTLINED_FUNCTION_10_36();
        v107 = 2;
        goto LABEL_73;
      case 6:
        v140 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v140)
        {
          continue;
        }

        goto LABEL_50;
      case 7:
        goto LABEL_51;
      case 8:
        v103 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v103)
        {
          continue;
        }

        goto LABEL_50;
      case 9:
        v139 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v139)
        {
          continue;
        }

        goto LABEL_50;
      case 10:
        v100 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v100)
        {
          continue;
        }

        goto LABEL_50;
      case 11:
        v108 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v108)
        {
          continue;
        }

LABEL_50:
        v141 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v141, v142);
        goto LABEL_51;
      case 12:
        v44 = advance_tok(v1, v42, v45, v46);
        v42 = v51;
        if (v44)
        {
          continue;
        }

LABEL_51:
        v143 = OUTLINED_FUNCTION_0_41(v44, v42, v45, v46, v47, v48, v49, v50, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
        v138 = test_ptr(v143, v144, v145);
        goto LABEL_76;
      case 13:
LABEL_40:
        v114 = OUTLINED_FUNCTION_38_18();
        starttest(v114, v115);
        v116 = OUTLINED_FUNCTION_18_33();
        if (lpta_loadp_setscan_r(v116, v117, v118))
        {
          goto LABEL_41;
        }

        v190 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v190, v191);
        goto LABEL_68;
      case 14:
        v104 = OUTLINED_FUNCTION_10_36();
        v107 = 1;
LABEL_73:
        v204 = testFldeq(v104, v105, v106, v107);
        LODWORD(v42) = v51;
        if (!v204)
        {
          goto LABEL_74;
        }

        continue;
      case 15:
LABEL_74:
        OUTLINED_FUNCTION_38_18();
        bspush_ca_scan_boa();
        v174 = OUTLINED_FUNCTION_11_36();
        v177 = 1;
        goto LABEL_75;
      case 16:
        bspop_boa(v1);
        v89 = advance_tok(v1, v94, v95, v96);
        goto LABEL_25;
      case 17:
LABEL_41:
        v119 = OUTLINED_FUNCTION_38_18();
        starttest(v119, v120);
        v121 = OUTLINED_FUNCTION_18_33();
        if (lpta_loadp_setscan_r(v121, v122, v123))
        {
          goto LABEL_42;
        }

        v178 = OUTLINED_FUNCTION_10_36();
        v181 = testFldeq(v178, v179, v180, 23);
        LODWORD(v42) = v51;
        if (v181)
        {
          continue;
        }

        v184 = advance_tok(v1, v51, v182, v183);
        LODWORD(v42) = v51;
        if (v184)
        {
          continue;
        }

        v185 = OUTLINED_FUNCTION_12_36();
        v188 = lpta_loadp_setscan_r(v185, v186, v187);
        LODWORD(v42) = v51;
        if (v188)
        {
          continue;
        }

        v165 = OUTLINED_FUNCTION_10_36();
        v168 = 23;
        goto LABEL_65;
      case 18:
        v146 = OUTLINED_FUNCTION_8_37();
        v150 = testFldeq(v146, v147, v148, v149);
        LODWORD(v42) = v51;
        if (v150)
        {
          continue;
        }

        v153 = advance_tok(v1, v51, v151, v152);
        v42 = v51;
        if (v153)
        {
          continue;
        }

        goto LABEL_68;
      case 19:
LABEL_68:
        v192 = advance_tok(v1, v42, v45, v46);
        LODWORD(v42) = v51;
        if (v192)
        {
          continue;
        }

        v199 = OUTLINED_FUNCTION_0_41(v192, v51, v193, v194, v195, v196, v197, v198, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
        v99 = test_ptr(v199, v200, v201);
        goto LABEL_70;
      case 20:
LABEL_42:
        v124 = OUTLINED_FUNCTION_38_18();
        starttest(v124, v125);
        v126 = OUTLINED_FUNCTION_18_33();
        if (lpta_loadp_setscan_r(v126, v127, v128))
        {
          goto LABEL_43;
        }

        v154 = OUTLINED_FUNCTION_10_36();
        v157 = testFldeq(v154, v155, v156, 21);
        LODWORD(v42) = v51;
        if (v157)
        {
          continue;
        }

        v160 = advance_tok(v1, v51, v158, v159);
        LODWORD(v42) = v51;
        if (v160)
        {
          continue;
        }

        v161 = OUTLINED_FUNCTION_12_36();
        v164 = lpta_loadp_setscan_r(v161, v162, v163);
        LODWORD(v42) = v51;
        if (v164)
        {
          continue;
        }

        v165 = OUTLINED_FUNCTION_10_36();
        v168 = 21;
LABEL_65:
        v189 = testFldeq(v165, v166, v167, v168);
        v42 = v51;
        if (v189)
        {
          continue;
        }

LABEL_28:
        v99 = advance_tok(v1, v42, v97, v98);
LABEL_70:
        LODWORD(v42) = v51;
        if (!v99)
        {
          goto LABEL_3;
        }

        continue;
      case 21:
LABEL_43:
        v129 = OUTLINED_FUNCTION_38_18();
        starttest(v129, v130);
        OUTLINED_FUNCTION_38_18();
        bspush_ca_boa();
        v131 = OUTLINED_FUNCTION_18_33();
        v134 = lpta_loadp_setscan_r(v131, v132, v133);
        LODWORD(v42) = v51;
        if (v134)
        {
          continue;
        }

        v135 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v135, v136);
        v90 = OUTLINED_FUNCTION_3_39();
LABEL_45:
        v137 = testFldeq(v90, v91, v92, v93);
        v42 = v51;
        if (v137)
        {
          continue;
        }

LABEL_46:
        v138 = advance_tok(v1, v42, v45, v46);
        goto LABEL_76;
      case 22:
        v58 = OUTLINED_FUNCTION_31_22();
        startloop(v58, v59);
        v60 = OUTLINED_FUNCTION_60_14();
        lpta_loadpn(v60, v61);
        OUTLINED_FUNCTION_37_18();
        lpta_mover();
        v62 = OUTLINED_FUNCTION_63_13();
        lpta_storep(v62, v63, v64);
        v65 = OUTLINED_FUNCTION_41_16();
        lpta_loadpn(v65, v66);
        OUTLINED_FUNCTION_37_18();
        lpta_mover();
        v67 = OUTLINED_FUNCTION_51_15();
        lpta_storep(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_63_13();
        v72 = forall_to_test(v70, v71, &v228);
        LODWORD(v42) = v51;
        if (v72)
        {
          continue;
        }

        goto LABEL_18;
      case 24:
        v101 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v101, v102);
        v90 = OUTLINED_FUNCTION_11_36();
        v93 = 12;
        goto LABEL_45;
      case 25:
        goto LABEL_46;
      case 26:
        v90 = OUTLINED_FUNCTION_11_36();
        v93 = 3;
        goto LABEL_45;
      case 27:
        goto LABEL_21;
      case 28:
        goto LABEL_22;
      case 29:
        goto LABEL_20;
      case 30:
        bspop_boa(v1);
        goto LABEL_28;
      case 31:
LABEL_18:
        v73 = OUTLINED_FUNCTION_38_18();
        bspush_ca(v73);
        v74 = OUTLINED_FUNCTION_20_29();
        v77 = lpta_loadp_setscan_r(v74, v75, v76);
        LODWORD(v42) = v51;
        if (v77)
        {
          continue;
        }

        v80 = advance_tok(v1, v51, v78, v79);
        LODWORD(v42) = v51;
        if (v80)
        {
          continue;
        }

LABEL_20:
        v81 = OUTLINED_FUNCTION_85_11();
        savescptr(v81, v82, v83);
LABEL_21:
        v84 = OUTLINED_FUNCTION_38_18();
        starttest(v84, v85);
        v86 = OUTLINED_FUNCTION_20_29();
        if (!lpta_loadp_setscan_r(v86, v87, v88))
        {
          v169 = OUTLINED_FUNCTION_2_39();
          v173 = testFldeq(v169, v170, v171, v172);
          LODWORD(v42) = v51;
          if (!v173)
          {
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v174 = OUTLINED_FUNCTION_11_36();
            v177 = 3;
LABEL_75:
            v138 = testFldeq(v174, v175, v176, v177);
LABEL_76:
            if (v138)
            {
              LODWORD(v42) = v51;
            }

            else
            {
              LODWORD(v42) = 1;
            }
          }

          continue;
        }

LABEL_22:
        v89 = OUTLINED_FUNCTION_97_8(3, 27, 31, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
LABEL_25:
        LODWORD(v42) = v51;
        if (v89)
        {
          continue;
        }

LABEL_79:
        vretproc(v1);
        return 0;
      default:
        goto LABEL_3;
    }
  }
}

void isit_fren_WH(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_24_27();
  v119 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v97, v7);
  OUTLINED_FUNCTION_52_15();
  bzero(v118, v8);
  v9 = setjmp(v118);
  if (v9 || OUTLINED_FUNCTION_99_8(v9, v97, v10, v11, v12, v13, v14, v15, v92, v93, v94, v95, v96, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v97[17], v97[18], v97[19], v97[20], v97[21], v97[22], v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118[0]))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_82_11(v16, v17);
  v18 = OUTLINED_FUNCTION_67_13();
  get_parm(v18, v19, v6, -6);
  v20 = OUTLINED_FUNCTION_63_13();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_51_15();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_94_9();
  push_ptr_init(v24, v25);
  v26 = 0;
  v27 = OUTLINED_FUNCTION_58_14();
  fence_38(v27, v28, v29);
  v103 = v107;
  OUTLINED_FUNCTION_46_16();
  get_nonpickup_word();
  while (2)
  {
    v30 = OUTLINED_FUNCTION_67_13();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_51_15();
    v34 = lpta_loadp_setscan_l(v32, v33, 4);
    v35 = v26;
    if (v34)
    {
LABEL_6:
      v36 = OUTLINED_FUNCTION_106_5();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_51_15();
      v40 = lpta_loadp_setscan_l(v38, v39, 4);
      v41 = v26;
      if (v40)
      {
LABEL_25:
        v26 = v41;
        v76 = OUTLINED_FUNCTION_96_8();
        starttest(v76, v77);
        v78 = OUTLINED_FUNCTION_63_13();
        if (lpta_loadp_setscan_r(v78, v79, 4))
        {
          goto LABEL_3;
        }

        v80 = OUTLINED_FUNCTION_62_13();
        if (!testFldeq(v80, v81, 2, 6) && !advance_tok(v5, v82, v83, v84))
        {
          goto LABEL_3;
        }
      }

      else
      {
LABEL_7:
        v42 = OUTLINED_FUNCTION_88_10();
        savescptr(v42, v43, &v98);
        v44 = OUTLINED_FUNCTION_62_13();
        if (!testFldeq(v44, v45, 1, 8) && !advance_tok(v5, v46, v47, v48))
        {
          v49 = lpta_loadp_setscan_r(v5, &v98, 4);
          v50 = v26;
          if (!v49)
          {
LABEL_32:
            v26 = v50;
            v85 = OUTLINED_FUNCTION_110_5();
            savescptr(v85, v86, &v102);
            v87 = OUTLINED_FUNCTION_62_13();
            if (!testFldeq(v87, v88, 2, 6))
            {
              OUTLINED_FUNCTION_107_5();
              bspush_ca_scan_boa();
              v89 = OUTLINED_FUNCTION_62_13();
              if (testFldeq(v89, v90, 3, 7))
              {
                v26 = v26;
              }

              else
              {
                v26 = 1;
              }
            }
          }
        }
      }

LABEL_18:
      v71 = v5[13];
      if (v71)
      {
        v72 = OUTLINED_FUNCTION_56_14(v71);
      }

      else
      {
        v72 = vback(v5, v26);
        v26 = 0;
      }

      switch(v72)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_6;
        case 3:
          v35 = v26;
          goto LABEL_11;
        case 4:
          v62 = v26;
          goto LABEL_16;
        case 5:
          goto LABEL_37;
        case 7:
          v41 = v26;
          goto LABEL_25;
        case 8:
          goto LABEL_7;
        case 9:
          v50 = v26;
          goto LABEL_32;
        case 10:
          bspop_boa(v5);
          if (advance_tok(v5, v73, v74, v75))
          {
            goto LABEL_18;
          }

          goto LABEL_36;
        case 11:
LABEL_36:
          v91 = 11;
          goto LABEL_38;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_11:
  v26 = v35;
  savescptr(v5, 3, &v98);
  v51 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v51, v52, 2, 13))
  {
    goto LABEL_18;
  }

  if (advance_tok(v5, v53, v54, v55))
  {
    goto LABEL_18;
  }

  if (lpta_loadp_setscan_r(v5, &v98, 4))
  {
    goto LABEL_18;
  }

  v56 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v56, v57, 2, 1))
  {
    goto LABEL_18;
  }

  v61 = advance_tok(v5, v58, v59, v60);
  v62 = v26;
  if (v61)
  {
    goto LABEL_18;
  }

LABEL_16:
  v26 = v62;
  v63 = OUTLINED_FUNCTION_59_14();
  savescptr(v63, v64, v65);
  v66 = OUTLINED_FUNCTION_62_13();
  if (testFldeq(v66, v67, 2, 6) || advance_tok(v5, v68, v69, v70))
  {
    goto LABEL_18;
  }

LABEL_37:
  v91 = 5;
LABEL_38:
  savescptr(v5, v91, &v100);
LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_90_10();
}

uint64_t isit_fren_Alt(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27();
  v110 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_23_27(v2, v3, v4, v5, v6, v7, v8, v9, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  OUTLINED_FUNCTION_52_15();
  bzero(v109, v10);
  v11 = setjmp(v109);
  if (!v11 && !OUTLINED_FUNCTION_74_13(v11, &v70, v12, v13, v14, v15, v16, v17, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0], v97[1], v97[2], v97[3], v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108))
  {
    v18 = OUTLINED_FUNCTION_29_24();
    get_parm(v18, v19, v20, -6);
    OUTLINED_FUNCTION_48_16();
    v21 = OUTLINED_FUNCTION_63_13();
    push_ptr_init(v21, v22);
    v23 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_46_16();
    push_ptr_init(v25, v26);
    fence_38(v1, 0, &null_str_15);
    v27 = OUTLINED_FUNCTION_38_18();
    startloop(v27, v28);
    v29 = OUTLINED_FUNCTION_57_14();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_37_18();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_63_13();
    lpta_storep(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_51_15();
    lpta_loadpn(v34, v35);
    OUTLINED_FUNCTION_37_18();
    lpta_mover();
    v36 = OUTLINED_FUNCTION_46_16();
    lpta_storep(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_63_13();
    if (forall_to_test(v39, v40, &v93))
    {
      goto LABEL_14;
    }

LABEL_4:
    v41 = OUTLINED_FUNCTION_31_22();
    bspush_ca(v41);
    v42 = OUTLINED_FUNCTION_20_29();
    if (lpta_loadp_setscan_r(v42, v43, v44))
    {
      goto LABEL_14;
    }

    v45 = OUTLINED_FUNCTION_11_36();
    if (testFldeq(v45, v46, v47, 11))
    {
      goto LABEL_14;
    }

    v48 = OUTLINED_FUNCTION_9_36();
    if (testFldeq(v48, v49, v50, 7) || advance_tok(v1, v51, v52, v53))
    {
      goto LABEL_14;
    }

LABEL_8:
    v54 = OUTLINED_FUNCTION_85_11();
    savescptr(v54, v55, v56);
    while (2)
    {
      v57 = OUTLINED_FUNCTION_31_22();
      starttest(v57, v58);
      v59 = OUTLINED_FUNCTION_44_16();
      if (!lpta_loadp_setscan_r(v59, v60, v61))
      {
        OUTLINED_FUNCTION_109_5();
        if (!test_string_s())
        {
          *(v1 + 136) = 1;
          v62 = OUTLINED_FUNCTION_14_35();
          if (!test_ptr(v62, v63, v64))
          {
            vretproc(v1);
            return 0;
          }
        }
      }

LABEL_13:
      if (OUTLINED_FUNCTION_97_8(1, 2, 5, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96))
      {
LABEL_14:
        v66 = *(v1 + 104);
        if (v66)
        {
          v67 = OUTLINED_FUNCTION_56_14(v66);
        }

        else
        {
          v68 = OUTLINED_FUNCTION_69_13();
          v67 = vback(v68, v69);
        }

        switch(v67)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_4;
          default:
            goto LABEL_18;
        }
      }

      break;
    }
  }

LABEL_18:
  vretproc(v1);
  return 94;
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 136) = 1;
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

uint64_t OUTLINED_FUNCTION_5_37()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

uint64_t OUTLINED_FUNCTION_14_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_40_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_43_16()
{

  get_parm(v0, v2, v1, -6);
}

double OUTLINED_FUNCTION_45_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_48_16()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_50_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, __int16 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 + 8) = a41;
  *(v42 + 8) = a39;
  *(v41 + 2) = a37;
}

void OUTLINED_FUNCTION_55_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36)
{

  get_parm(v36, &a36, v37, -4);
}

double OUTLINED_FUNCTION_61_14@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_66_13@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  *&result = savescptr(v28, a1, &a28).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_68_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_71_13@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, __int16 a45, __int16 a46, int a47, __int16 a48, char a49, char a50)
{

  return ventproc(v50, a2, &a50, &a46, &a43, v51 - 248);
}

double OUTLINED_FUNCTION_79_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_80_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  *&result = savescptr(v35, a1, &a35).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_82_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_86_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_97_8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return forto_adv_upto_r(v30, a1, a2, a3, 4, va);
}

uint64_t OUTLINED_FUNCTION_98_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  return ventproc(v43, a2, a3, a4, a5, va);
}

uint64_t OUTLINED_FUNCTION_99_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, __int16 a50, __int16 a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{

  return ventproc(v57, a2, &a55, &a51, &a48, &a57);
}

void OUTLINED_FUNCTION_100_7(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  bzero(va, a2);
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *fence_39(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

uint64_t strip_s(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v24[1] = 0;
  memset(v23, 0, sizeof(v23));
  bzero(v22, 0xB8uLL);
  bzero(v28, 0xC0uLL);
  if (setjmp(v28))
  {
    goto LABEL_5;
  }

  if (ventproc(a1, v22, v27, v26, v25, v28))
  {
    goto LABEL_5;
  }

  push_ptr_init(a1, v24);
  *&v23[16] = 0;
  *&v23[24] = 0;
  *&v23[30] = 0;
  *v23 = -65534;
  fence_39(a1, 0, &null_str_16);
  v2 = OUTLINED_FUNCTION_0_42();
  fence_39(v2, v3, v4);
  if (OUTLINED_FUNCTION_3_40())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_42();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v7 = OUTLINED_FUNCTION_1_41();
    savescptr(v7, v8, v24);
LABEL_8:
    if (!OUTLINED_FUNCTION_3_40())
    {
      OUTLINED_FUNCTION_0_42();
      if (!test_string_s())
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    v9 = OUTLINED_FUNCTION_2_40();
    lpta_rpta_loadp(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_0_42();
    if (!setd_lookup(v12, v13, 46))
    {
LABEL_5:
      v5 = 94;
      goto LABEL_6;
    }

LABEL_11:
    starttest(a1, 6);
    if (lpta_loadp_setscan_l(a1, v24, 1) || (OUTLINED_FUNCTION_0_42(), test_string_s()))
    {
LABEL_18:
      v18 = OUTLINED_FUNCTION_2_40();
      lpta_rpta_loadp(v18, v24, v19);
      settvar_s();
      v20 = OUTLINED_FUNCTION_0_42();
      npush_s(v20);
      *&v23[2] = 17;
      npop(a1, v23);
      insert_2ptv();
      if (v21)
      {
LABEL_14:
        v16 = a1[13];
        if (v16)
        {
          a1[13] = 0;
          v17 = v16;
        }

        else
        {
          v17 = vback(a1, 0);
        }

        switch(v17)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_11;
          case 6:
            goto LABEL_18;
          case 7:
            goto LABEL_13;
          case 8:
            goto LABEL_19;
          case 9:
            goto LABEL_20;
          default:
            goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_13:
      savescptr(a1, 7, v24);
      v14 = OUTLINED_FUNCTION_2_40();
      lpta_rpta_loadp(v14, v24, v15);
      if (insert_2pt_s(a1, 2u, 1, &unk_28064BAB9, 0))
      {
        goto LABEL_14;
      }
    }

    break;
  }

LABEL_19:
  insert_suffix(a1, v24);
LABEL_20:
  v5 = 0;
LABEL_6:
  vretproc(a1);
  return v5;
}

uint64_t insert_suffix(void *a1, __int16 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  bzero(v12, 0xB8uLL);
  bzero(v21, 0xC0uLL);
  if (!setjmp(v21) && !ventproc(a1, v12, v20, v19, v18, v21))
  {
    v6 = OUTLINED_FUNCTION_1_41();
    get_parm(v6, v7, a2, -6);
    LOBYTE(v15) = 0;
    LODWORD(v13) = -65533;
    fence_39(a1, 0, &null_str_16);
    v8 = OUTLINED_FUNCTION_1_41();
    lpta_rpta_loadp(v8, v9, v10);
    OUTLINED_FUNCTION_1_41();
    settvar_s();
    insert_2ptv();
    if (!v11)
    {
      v4 = 0;
      a1[208] = v17;
      goto LABEL_4;
    }

    if (a1[13])
    {
      a1[13] = 0;
    }

    else
    {
      vback(a1, 0);
    }
  }

  v4 = 94;
LABEL_4:
  vretproc(a1);
  return v4;
}

uint64_t strip_ment(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v22[1] = 0;
  bzero(v21, 0xB8uLL);
  bzero(v26, 0xC0uLL);
  if (setjmp(v26) || ventproc(a1, v21, v25, v24, v23, v26))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    push_ptr_init(a1, v22);
    fence_39(a1, 0, &null_str_16);
    fence_39(a1, 1, &_MergedGlobals_35);
    starttest(a1, 1);
    bspush_ca_boa();
    if (lpta_loadp_setscan_r(a1, (a1 + 165), 4))
    {
      v5 = 0;
    }

    else
    {
      v5 = !testFldeq(a1, 4u, 1, 3) && !advance_tok(a1, v6, v3, v4);
    }

    v7 = v5;
    while (2)
    {
      v8 = a1[13];
      if (v8)
      {
        a1[13] = 0;
        v9 = v8;
        v10 = v7;
      }

      else
      {
        v9 = vback(a1, v7);
        v10 = 0;
      }

      switch(v9)
      {
        case 1:
          v11 = OUTLINED_FUNCTION_1_41();
          starttest(v11, v12);
          if (OUTLINED_FUNCTION_3_40())
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_3;
          }

          goto LABEL_16;
        case 2:
          bspop_boa(a1);
          goto LABEL_3;
        case 3:
          goto LABEL_19;
        case 5:
LABEL_16:
          savescptr(a1, 5, v22);
          goto LABEL_17;
        case 6:
          goto LABEL_17;
        case 7:
          v20 = advance_tok(a1, v7, v3, v4);
          v7 = v10;
          if (v20)
          {
            continue;
          }

LABEL_17:
          bspush_ca_scan(a1, 7);
          v13 = OUTLINED_FUNCTION_0_42();
          v15 = testFldeq(v13, v14, 4, 1);
          v7 = v10;
          if (v15)
          {
            continue;
          }

          v16 = advance_tok(a1, v10, v3, v4);
          v7 = v10;
          if (v16)
          {
            continue;
          }

LABEL_19:
          v17 = OUTLINED_FUNCTION_2_40();
          lpta_rpta_loadp(v17, v22, v18);
          inserted = insert_2pt_s(a1, 2u, 2, &unk_28064BABA, 0);
          v7 = v10;
          if (inserted)
          {
            continue;
          }

          insert_suffix(a1, v22);
LABEL_23:
          vretproc(a1);
          result = 0;
          break;
        case 8:
          goto LABEL_23;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return lpta_loadp_setscan_l(v0, v0 + 1656, 1);
}

uint64_t print_fren_SPR(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v151 = *MEMORY[0x277D85DE8];
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  bzero(&v117, 0xB8uLL);
  bzero(v150, 0xC0uLL);
  if (!setjmp(v150) && !ventproc(a1, &v117, v149, v148, v147, v150))
  {
    v8 = OUTLINED_FUNCTION_6_38();
    get_parm(v8, v9, a2, -6);
    get_parm(a1, &v143, a3, -6);
    LOWORD(v142) = 0;
    LODWORD(v140) = -65529;
    fence_40(a1);
    v10 = OUTLINED_FUNCTION_9_37();
    starttest(v10, v11);
    v12 = OUTLINED_FUNCTION_6_38();
    v14 = lpta_loadp_setscan_r(v12, v13, 2);
    if (!v14)
    {
      v22 = OUTLINED_FUNCTION_4_39();
      if (testFldeq(v22, v23, v24, 1) || advance_tok(a1, v15, v16, v17))
      {
        goto LABEL_60;
      }

      *(a1 + 136) = 1;
      *(a1 + 112) = v146;
      *(a1 + 128) = 0;
      if (!lpta_tstctxtl())
      {
        setscan_r(a1, 7, v25);
        if (!v29 && !advance_tok(a1, v26, v27, v28))
        {
          savetok(a1, &v140);
        }
      }

LABEL_12:
      WORD1(v140) = 0;
      v30 = OUTLINED_FUNCTION_13_36();
      v14 = print_var(v30, v31, v32);
    }

    while (2)
    {
      if (!OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
      {
        OUTLINED_FUNCTION_4_39();
        if (!test_string_s())
        {
          goto LABEL_56;
        }
      }

LABEL_15:
      v33 = OUTLINED_FUNCTION_9_37();
      starttest(v33, v34);
      if (!OUTLINED_FUNCTION_8_38(v35, v36, v37, v38, v39, v40, v41, v42, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
      {
        v53 = OUTLINED_FUNCTION_7_38();
        if (testFldeq(v53, v54, 15, 6) || advance_tok(a1, v15, v16, v17) || advance_tok(a1, v15, v16, v17))
        {
          goto LABEL_60;
        }

LABEL_54:
        v87 = OUTLINED_FUNCTION_10_37();
        savescptr(v87, v88, v89);
        break;
      }

LABEL_16:
      v43 = OUTLINED_FUNCTION_9_37();
      starttest(v43, v44);
      v14 = OUTLINED_FUNCTION_8_38(v45, v46, v47, v48, v49, v50, v51, v52, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      if (!v14)
      {
        v55 = OUTLINED_FUNCTION_7_38();
        if (testFldeq(v55, v56, 15, 3) || advance_tok(a1, v15, v16, v17) || advance_tok(a1, v15, v16, v17))
        {
          goto LABEL_60;
        }

LABEL_30:
        v60 = OUTLINED_FUNCTION_10_37();
        savescptr(v60, v61, v62);
        v59 = "D";
        v57 = a1;
        v58 = 8;
        goto LABEL_29;
      }

LABEL_17:
      v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      if (!v14)
      {
        OUTLINED_FUNCTION_4_39();
        v14 = test_string_s();
        if (!v14)
        {
          break;
        }
      }

LABEL_31:
      v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      if (!v14)
      {
        OUTLINED_FUNCTION_4_39();
        v14 = test_string_s();
        if (!v14)
        {
          break;
        }
      }

LABEL_33:
      v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      if (v14 || (OUTLINED_FUNCTION_4_39(), v14 = test_string_s(), v14))
      {
LABEL_35:
        v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
        if (!v14)
        {
          OUTLINED_FUNCTION_4_39();
          v14 = test_string_s();
          if (!v14)
          {
            break;
          }
        }

LABEL_37:
        v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
        if (v14 || (OUTLINED_FUNCTION_4_39(), v14 = test_string_s(), v14))
        {
LABEL_39:
          v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
          if (!v14)
          {
            OUTLINED_FUNCTION_4_39();
            v14 = test_string_s();
            if (!v14)
            {
              break;
            }
          }

LABEL_41:
          v14 = OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
          if (v14 || (OUTLINED_FUNCTION_4_39(), v14 = test_string_s(), v14))
          {
LABEL_43:
            if (!OUTLINED_FUNCTION_8_38(v14, v15, v16, v17, v18, v19, v20, v21, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
            {
              OUTLINED_FUNCTION_4_39();
              if (!test_string_s())
              {
                break;
              }
            }

LABEL_45:
            v63 = OUTLINED_FUNCTION_9_37();
            starttest(v63, v64);
            if (!OUTLINED_FUNCTION_8_38(v65, v66, v67, v68, v69, v70, v71, v72, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
            {
              v85 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v85, v86, 15, 2) || advance_tok(a1, v15, v16, v17) || advance_tok(a1, v15, v16, v17))
              {
                goto LABEL_60;
              }

              goto LABEL_54;
            }

LABEL_46:
            v73 = OUTLINED_FUNCTION_9_37();
            starttest(v73, v74);
            if (!OUTLINED_FUNCTION_8_38(v75, v76, v77, v78, v79, v80, v81, v82, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
            {
              v83 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v83, v84, 15, 5) || advance_tok(a1, v15, v16, v17) || advance_tok(a1, v15, v16, v17))
              {
                goto LABEL_60;
              }

              goto LABEL_54;
            }

LABEL_55:
            v90 = OUTLINED_FUNCTION_10_37();
            lpta_rpta_loadp(v90, v91, v92);
            v93 = OUTLINED_FUNCTION_13_36();
            print_stream(v93, v94, 2, v95, v96);
LABEL_56:
            v97 = OUTLINED_FUNCTION_9_37();
            starttest(v97, v98);
            if (!OUTLINED_FUNCTION_8_38(v99, v100, v101, v102, v103, v104, v105, v106, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145))
            {
              v107 = OUTLINED_FUNCTION_7_38();
              if (testFldeq(v107, v108, 17, 1) || advance_tok(a1, v15, v16, v17))
              {
                goto LABEL_60;
              }

LABEL_59:
              v109 = OUTLINED_FUNCTION_9_37();
              if (test_synch(v109, v110, 1, v111))
              {
LABEL_60:
                v112 = *(a1 + 104);
                if (v112)
                {
                  *(a1 + 104) = 0;
                  v14 = v112;
                }

                else
                {
                  v14 = vback(a1, 0);
                }

                switch(v14)
                {
                  case 1:
                    continue;
                  case 2:
                    goto LABEL_12;
                  case 3:
                    goto LABEL_15;
                  case 4:
                    goto LABEL_56;
                  case 5:
                    goto LABEL_16;
                  case 6:
                  case 18:
                  case 20:
                    goto LABEL_54;
                  case 7:
                    goto LABEL_17;
                  case 8:
                    goto LABEL_30;
                  case 9:
                    goto LABEL_31;
                  case 10:
                    goto LABEL_33;
                  case 11:
                    goto LABEL_35;
                  case 12:
                    goto LABEL_37;
                  case 13:
                    goto LABEL_39;
                  case 14:
                    goto LABEL_41;
                  case 15:
                    goto LABEL_43;
                  case 16:
                    goto LABEL_45;
                  case 17:
                    goto LABEL_46;
                  case 19:
                    goto LABEL_55;
                  case 21:
                    goto LABEL_65;
                  case 22:
                    goto LABEL_59;
                  default:
                    goto LABEL_3;
                }
              }

              v113 = OUTLINED_FUNCTION_13_36();
              print_lit(v113, v114, v115);
            }

LABEL_65:
            *(a3 + 8) = v144;
            v6 = 0;
            goto LABEL_4;
          }
        }
      }

      break;
    }

    v57 = OUTLINED_FUNCTION_13_36();
LABEL_29:
    print_lit(v57, v58, v59);
    goto LABEL_56;
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(a1);
  return v6;
}

uint64_t insert_fren_spr_phone(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v766 = *MEMORY[0x277D85DE8];
  v761[0] = 0;
  v761[1] = 0;
  v759 = 0;
  v760 = 0;
  memset(v758, 0, sizeof(v758));
  v756 = 0;
  v757 = 0;
  v754 = 0;
  v755 = 0;
  bzero(&v731, 0xB8uLL);
  bzero(v765, 0xC0uLL);
  if (setjmp(v765) || ventproc(a1, &v731, v764, v763, v762, v765))
  {
    goto LABEL_3;
  }

  v7 = OUTLINED_FUNCTION_6_38();
  get_parm(v7, v8, a2, -6);
  get_parm(a1, &v759, a3, -6);
  *&v758[16] = 0;
  *&v758[24] = 0;
  *&v758[30] = 0;
  *v758 = -65534;
  push_ptr_init(a1, &v756);
  push_ptr_init(a1, &v754);
  fence_40(a1);
  v9 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v9, v10, 1) && !test_string_s())
  {
    *(a1 + 136) = 1;
    *(a1 + 112) = v760;
    *(a1 + 128) = 0;
    if (!test_ptr(a1, v11, v12))
    {
      lpta_rpta_loadp(a1, v761, &v759);
      v13 = OUTLINED_FUNCTION_4_39();
      if (!insert_2pt_s(v13, v14, v15, v16, v17))
      {
        goto LABEL_203;
      }
    }
  }

  v18 = 0;
  HIDWORD(v730) = 0;
  v729 = 47;
  v728 = 49;
  v727 = 50;
LABEL_10:
  v19 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v19, v20, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v21 = test_string_s();
    if (!v21 && !OUTLINED_FUNCTION_1_42(v21, v22, v23, v24, v25, v26, v27, v28, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v29 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v29, v30, &v759);
      v31 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v31, v32, v33, &unk_28064BACF, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_14:
  v34 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v34, v35, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v36 = test_string_s();
    if (!v36 && !OUTLINED_FUNCTION_1_42(v36, v37, v38, v39, v40, v41, v42, v43, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v44 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v44, v45, &v759);
      v46 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v46, v47, v48, &unk_28064BAD1, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_18:
  v49 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v49, v50, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v51 = test_string_s();
    if (!v51 && !OUTLINED_FUNCTION_1_42(v51, v52, v53, v54, v55, v56, v57, v58, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v59 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v59, v60, &v759);
      v61 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v61, v62, v63, &unk_28064BACC, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_22:
  v64 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v64, v65, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v66 = test_string_s();
    if (!v66 && !OUTLINED_FUNCTION_1_42(v66, v67, v68, v69, v70, v71, v72, v73, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v74 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v74, v75, &v759);
      v76 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v76, v77, v78, &unk_28064BAD4, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_26:
  v79 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v79, v80, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v81 = test_string_s();
    if (!v81 && !OUTLINED_FUNCTION_1_42(v81, v82, v83, v84, v85, v86, v87, v88, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v89 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v89, v90, &v759);
      v91 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v91, v92, v93, &unk_28064BAD6, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_30:
  v94 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v94, v95, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v96 = test_string_s();
    if (!v96 && !OUTLINED_FUNCTION_1_42(v96, v97, v98, v99, v100, v101, v102, v103, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v104 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v104, v105, &v759);
      v106 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v106, v107, v108, &unk_28064BAD8, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_34:
  v109 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v109, v110, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v111 = test_string_s();
    if (!v111 && !OUTLINED_FUNCTION_1_42(v111, v112, v113, v114, v115, v116, v117, v118, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v119 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v119, v120, &v759);
      v121 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v121, v122, v123, &unk_28064BADA, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_38:
  v124 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v124, v125, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v126 = test_string_s();
    if (!v126 && !OUTLINED_FUNCTION_1_42(v126, v127, v128, v129, v130, v131, v132, v133, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v134 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v134, v135, &v759);
      v136 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v136, v137, v138, &unk_28064BACD, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_42:
  v139 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v139, v140, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v141 = test_string_s();
    if (!v141 && !OUTLINED_FUNCTION_1_42(v141, v142, v143, v144, v145, v146, v147, v148, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v149 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v149, v150, &v759);
      v151 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v151, v152, v153, &unk_28064BADD, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_46:
  v154 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v154, v155, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v156 = test_string_s();
    if (!v156 && !OUTLINED_FUNCTION_1_42(v156, v157, v158, v159, v160, v161, v162, v163, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v164 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v164, v165, &v759);
      v166 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v166, v167, v168, &unk_28064BAD0, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_50:
  v169 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v169, v170, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v171 = test_string_s();
    if (!v171 && !OUTLINED_FUNCTION_1_42(v171, v172, v173, v174, v175, v176, v177, v178, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v179 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v179, v180, &v759);
      v181 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v181, v182, v183, &unk_28064BAE0, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_54:
  v184 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v184, v185, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v186 = test_string_s();
    if (!v186 && !OUTLINED_FUNCTION_1_42(v186, v187, v188, v189, v190, v191, v192, v193, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v194 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v194, v195, &v759);
      v196 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v196, v197, v198, &unk_28064BAD5, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_58:
  v199 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v199, v200, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v201 = test_string_s();
    if (!v201 && !OUTLINED_FUNCTION_1_42(v201, v202, v203, v204, v205, v206, v207, v208, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v209 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v209, v210, &v759);
      v211 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v211, v212, v213, &unk_28064BAE1, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_62:
  v214 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v214, v215, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v216 = test_string_s();
    if (!v216 && !OUTLINED_FUNCTION_1_42(v216, v217, v218, v219, v220, v221, v222, v223, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v224 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v224, v225, &v759);
      v226 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v226, v227, v228, &unk_28064BACA, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_66:
  v229 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v229, v230, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v231 = test_string_s();
    if (!v231 && !OUTLINED_FUNCTION_1_42(v231, v232, v233, v234, v235, v236, v237, v238, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v239 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v239, v240, &v759);
      v241 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v241, v242, v243, &unk_28064BACB, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_70:
  v244 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v244, v245, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v246 = test_string_s();
    if (!v246 && !OUTLINED_FUNCTION_1_42(v246, v247, v248, v249, v250, v251, v252, v253, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v254 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v254, v255, &v759);
      v256 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v256, v257, v258, &unk_28064BAE3, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_74:
  v259 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v259, v260, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v261 = test_string_s();
    if (!v261 && !OUTLINED_FUNCTION_1_42(v261, v262, v263, v264, v265, v266, v267, v268, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v269 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v269, v270, &v759);
      v271 = OUTLINED_FUNCTION_2_41();
      if (!insert_2pt_s(v271, v272, v273, &unk_28064BAE2, HIDWORD(v730)))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_78:
  v274 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v274, v275, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v276 = test_string_s();
    if (!v276 && !OUTLINED_FUNCTION_1_42(v276, v277, v278, v279, v280, v281, v282, v283, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v284 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v284, v285, &v759);
      v286 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v286, v287, v288, &unk_28064BADC, v289))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_82:
  v290 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v290, v291, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v292 = test_string_s();
    if (!v292 && !OUTLINED_FUNCTION_1_42(v292, v293, v294, v295, v296, v297, v298, v299, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v300 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v300, v301, &v759);
      v302 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v302, v303, v304, &unk_28064BAD2, v305))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_86:
  v306 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v306, v307, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v308 = test_string_s();
    if (!v308 && !OUTLINED_FUNCTION_1_42(v308, v309, v310, v311, v312, v313, v314, v315, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v316 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v316, v317, &v759);
      v318 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v318, v319, v320, &unk_28064BAD7, v321))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_90:
  v322 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v322, v323, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v324 = test_string_s();
    if (!v324 && !OUTLINED_FUNCTION_1_42(v324, v325, v326, v327, v328, v329, v330, v331, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v332 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v332, v333, &v759);
      v334 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v334, v335, v336, &unk_28064BAE8, v337))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_94:
  v338 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v338, v339, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v340 = test_string_s();
    if (!v340 && !OUTLINED_FUNCTION_1_42(v340, v341, v342, v343, v344, v345, v346, v347, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v348 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v348, v349, &v759);
      v350 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v350, v351, v352, &unk_28064BAD9, v353))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_98:
  v354 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v354, v355, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v356 = test_string_s();
    if (!v356 && !OUTLINED_FUNCTION_1_42(v356, v357, v358, v359, v360, v361, v362, v363, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v364 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v364, v365, &v759);
      v366 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v366, v367, v368, &unk_28064BAD3, v369))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_102:
  v370 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v370, v371, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v372 = test_string_s();
    if (!v372 && !OUTLINED_FUNCTION_1_42(v372, v373, v374, v375, v376, v377, v378, v379, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v380 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v380, v381, &v759);
      v382 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v382, v383, v384, &unk_28064BAC4, v385))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_106:
  v386 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v386, v387, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v388 = test_string_s();
    if (!v388 && !OUTLINED_FUNCTION_1_42(v388, v389, v390, v391, v392, v393, v394, v395, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v396 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v396, v397, &v759);
      v398 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v398, v399, v400, &unk_28064BAC5, v401))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_110:
  v402 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v402, v403, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v404 = test_string_s();
    if (!v404 && !OUTLINED_FUNCTION_1_42(v404, v405, v406, v407, v408, v409, v410, v411, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v412 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v412, v413, &v759);
      v414 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v414, v415, v416, &unk_28064BAC6, v417))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_114:
  v418 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v418, v419, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v420 = test_string_s();
    if (!v420 && !OUTLINED_FUNCTION_1_42(v420, v421, v422, v423, v424, v425, v426, v427, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v428 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v428, v429, &v759);
      v430 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v430, v431, v432, &unk_28064BAC7, v433))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_118:
  v434 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v434, v435, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v436 = test_string_s();
    if (!v436 && !OUTLINED_FUNCTION_1_42(v436, v437, v438, v439, v440, v441, v442, v443, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v444 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v444, v445, &v759);
      v446 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v446, v447, v448, &unk_28064BAC8, v449))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_122:
  v450 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v450, v451, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v452 = test_string_s();
    if (!v452 && !OUTLINED_FUNCTION_1_42(v452, v453, v454, v455, v456, v457, v458, v459, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v460 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v460, v461, &v759);
      v462 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v462, v463, v464, &unk_28064BAEB, v465))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_126:
  v466 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v466, v467, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v468 = test_string_s();
    if (!v468 && !OUTLINED_FUNCTION_1_42(v468, v469, v470, v471, v472, v473, v474, v475, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v476 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v476, v477, &v759);
      v478 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v478, v479, v480, &unk_28064BAED, v481))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_130:
  v482 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v482, v483, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v484 = test_string_s();
    if (!v484 && !OUTLINED_FUNCTION_1_42(v484, v485, v486, v487, v488, v489, v490, v491, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v492 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v492, v493, &v759);
      v494 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v494, v495, v496, &unk_28064BAEC, v497))
      {
LABEL_203:
        vretproc(a1);
        return 0;
      }
    }
  }

LABEL_134:
  v498 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v498, v499, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v500 = test_string_s();
    if (!v500 && !OUTLINED_FUNCTION_1_42(v500, v501, v502, v503, v504, v505, v506, v507, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v508 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v508, v509, &v759);
      v510 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v510, v511, v512, &unk_28064BADB, v513))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_138:
  v514 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v514, v515, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v516 = test_string_s();
    if (!v516 && !OUTLINED_FUNCTION_1_42(v516, v517, v518, v519, v520, v521, v522, v523, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v524 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v524, v525, &v759);
      v526 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v526, v527, v528, &unk_28064BAE5, v529))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_142:
  v530 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v530, v531, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v532 = test_string_s();
    if (!v532 && !OUTLINED_FUNCTION_1_42(v532, v533, v534, v535, v536, v537, v538, v539, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v540 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v540, v541, &v759);
      v542 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v542, v543, v544, &unk_28064BAEA, v545))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_146:
  v546 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v546, v547, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v548 = test_string_s();
    if (!v548 && !OUTLINED_FUNCTION_1_42(v548, v549, v550, v551, v552, v553, v554, v555, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v556 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v556, v557, &v759);
      v558 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v558, v559, v560, &unk_28064BAEF, v561))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_150:
  v562 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v562, v563, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v564 = test_string_s();
    if (!v564 && !OUTLINED_FUNCTION_1_42(v564, v565, v566, v567, v568, v569, v570, v571, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v572 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v572, v573, &v759);
      v574 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v574, v575, v576, &unk_28064BAE6, v577))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_154:
  v578 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v578, v579, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v580 = test_string_s();
    if (!v580 && !OUTLINED_FUNCTION_1_42(v580, v581, v582, v583, v584, v585, v586, v587, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v588 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v588, v589, &v759);
      v590 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v590, v591, v592, &unk_28064BAE9, v593))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_158:
  v594 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v594, v595, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v596 = test_string_s();
    if (!v596 && !OUTLINED_FUNCTION_1_42(v596, v597, v598, v599, v600, v601, v602, v603, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v604 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v604, v605, &v759);
      v606 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v606, v607, v608, &unk_28064BAF1, v609))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_162:
  v610 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v610, v611, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v612 = test_string_s();
    if (!v612 && !OUTLINED_FUNCTION_1_42(v612, v613, v614, v615, v616, v617, v618, v619, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v620 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v620, v621, &v759);
      v622 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v622, v623, v624, &unk_28064BAF3, v625))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_166:
  v626 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v626, v627, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v628 = test_string_s();
    if (!v628 && !OUTLINED_FUNCTION_1_42(v628, v629, v630, v631, v632, v633, v634, v635, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v636 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v636, v637, &v759);
      v638 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v638, v639, v640, &unk_28064BAF0, v641))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_170:
  v642 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v642, v643, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v644 = test_string_s();
    if (!v644 && !OUTLINED_FUNCTION_1_42(v644, v645, v646, v647, v648, v649, v650, v651, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v652 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v652, v653, &v759);
      v654 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v654, v655, v656, &unk_28064BAEE, v657))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_174:
  v658 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v658, v659, 1))
  {
    v660 = test_string_s();
    if (!v660 && !OUTLINED_FUNCTION_1_42(v660, v661, v662, v663, v664, v665, v666, v667, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v668 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v668, v669, &v759);
      v670 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v670, v671, v672, &unk_28064BAC9, v673))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_178:
  v674 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v674, v675, 1))
  {
    OUTLINED_FUNCTION_3_41();
    v676 = test_string_s();
    if (!v676 && !OUTLINED_FUNCTION_1_42(v676, v677, v678, v679, v680, v681, v682, v683, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v684 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v684, v685, &v759);
      v686 = OUTLINED_FUNCTION_0_43();
      if (!insert_2pt_s(v686, v687, v688, &unk_28064BAE7, v689))
      {
        goto LABEL_203;
      }
    }
  }

LABEL_182:
  v690 = OUTLINED_FUNCTION_12_37();
  starttest(v690, v691);
  v692 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v692, v693, 1))
  {
    OUTLINED_FUNCTION_5_38();
    v694 = test_string_s();
    if (!v694 && !OUTLINED_FUNCTION_1_42(v694, v695, v696, v697, v698, v699, v700, v701, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      v712 = OUTLINED_FUNCTION_6_38();
      lpta_rpta_loadp(v712, v713, &v759);
      settvar_s();
      npush_s(a1);
      strcpy(&v758[2], "\t");
      npop(a1, v758);
      OUTLINED_FUNCTION_7_38();
      insert_2ptv();
      if (v714)
      {
LABEL_195:
        v715 = v18;
        do
        {
          while (2)
          {
            v716 = *(a1 + 104);
            if (v716)
            {
              *(a1 + 104) = 0;
              v717 = v716;
              v18 = v715;
            }

            else
            {
              v717 = vback(a1, v715);
              v18 = 0;
            }

            switch(v717)
            {
              case 1:
                goto LABEL_10;
              case 2:
                goto LABEL_203;
              case 3:
                goto LABEL_14;
              case 4:
                goto LABEL_18;
              case 5:
                goto LABEL_22;
              case 6:
                goto LABEL_26;
              case 7:
                goto LABEL_30;
              case 8:
                goto LABEL_34;
              case 9:
                goto LABEL_38;
              case 10:
                goto LABEL_42;
              case 11:
                goto LABEL_46;
              case 12:
                goto LABEL_50;
              case 13:
                goto LABEL_54;
              case 14:
                goto LABEL_58;
              case 15:
                goto LABEL_62;
              case 16:
                goto LABEL_66;
              case 17:
                goto LABEL_70;
              case 18:
                goto LABEL_74;
              case 19:
                goto LABEL_78;
              case 20:
                goto LABEL_82;
              case 21:
                goto LABEL_86;
              case 22:
                goto LABEL_90;
              case 23:
                goto LABEL_94;
              case 24:
                goto LABEL_98;
              case 25:
                goto LABEL_102;
              case 26:
                goto LABEL_106;
              case 27:
                goto LABEL_110;
              case 28:
                goto LABEL_114;
              case 29:
                goto LABEL_118;
              case 30:
                goto LABEL_122;
              case 31:
                goto LABEL_126;
              case 32:
                goto LABEL_130;
              case 33:
                goto LABEL_134;
              case 34:
                goto LABEL_138;
              case 35:
                goto LABEL_142;
              case 36:
                goto LABEL_146;
              case 37:
                goto LABEL_150;
              case 38:
                goto LABEL_154;
              case 39:
                goto LABEL_158;
              case 40:
                goto LABEL_162;
              case 41:
                goto LABEL_166;
              case 42:
                goto LABEL_170;
              case 43:
                goto LABEL_174;
              case 44:
                goto LABEL_178;
              case 45:
                goto LABEL_182;
              case 46:
                goto LABEL_185;
              case 48:
                goto LABEL_186;
              case 49:
                bspop_boa(a1);
                v718 = testFldeq(a1, 1u, 4, 2);
                v715 = v18;
                if (v718)
                {
                  continue;
                }

                v721 = advance_tok(a1, v18, v719, v720);
                v715 = v18;
                if (v721)
                {
                  continue;
                }

                break;
              case 50:
                goto LABEL_191;
              case 51:
                goto LABEL_202;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_202:
          savescptr(a1, 51, &v756);
          v722 = OUTLINED_FUNCTION_11_37();
          lpta_rpta_loadp(v722, v723, v724);
          OUTLINED_FUNCTION_7_38();
          v725 = mark_s();
          v715 = v18;
        }

        while (v725);
        goto LABEL_203;
      }

      goto LABEL_203;
    }
  }

LABEL_185:
  starttest(a1, v729);
  v702 = OUTLINED_FUNCTION_6_38();
  if (!lpta_loadp_setscan_r(v702, v703, 1))
  {
LABEL_186:
    savescptr(a1, 48, &v754);
    OUTLINED_FUNCTION_3_41();
    v704 = test_string_s();
    if (!v704 && !OUTLINED_FUNCTION_1_42(v704, v705, v706, v707, v708, v709, v710, v711, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, *v758, *&v758[8], *&v758[16], *&v758[24], *&v758[32], v759, v760))
    {
      OUTLINED_FUNCTION_3_41();
      if (!test_string_s() && !lpta_loadp_setscan_l(a1, &v754, 1))
      {
        bspush_ca_scan_boa();
LABEL_191:
        if (test_synch(a1, v727, 1, &unk_28064BACC))
        {
          v18 = v18;
        }

        else
        {
          v18 = 1;
        }
      }
    }

    goto LABEL_195;
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

uint64_t next_phone_is_vowel(void *a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v44[0] = 0;
  v44[1] = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  bzero(v39, 0xB8uLL);
  bzero(v48, 0xC0uLL);
  if (setjmp(v48) || ventproc(a1, v39, v47, v46, v45, v48) || (v8 = OUTLINED_FUNCTION_11_37(), get_parm(v8, v9, a2, -6), v10 = OUTLINED_FUNCTION_6_38(), get_parm(v10, v11, a3, -6), v12 = OUTLINED_FUNCTION_12_37(), get_parm(v12, v13, a4, -6), fence_40(a1), v14 = OUTLINED_FUNCTION_11_37(), find_pair_of_single_quotes(v14, v15), v16))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

  else
  {
    lpta_loadpn(a1, &v42);
    rpta_loadpn(a1, &v40);
    if (compare_ptas(a1) || testeq(a1))
    {
      v18 = 0;
    }

    else
    {
      if (lpta_loadp_setscan_r(a1, v44, 1))
      {
        LODWORD(v22) = 0;
      }

      else
      {
        v23 = advance_tok(a1, v19, v20, v21);
        v24 = 0;
        LODWORD(v22) = 0;
        if (!v23)
        {
LABEL_13:
          LODWORD(v22) = v24;
          savescptr(a1, 4, &v42);
        }
      }

LABEL_14:
      v41 = v43;
      v18 = v22;
    }

    LODWORD(v22) = v18;
    while (2)
    {
      v25 = OUTLINED_FUNCTION_6_38();
      starttest(v25, v26);
      OUTLINED_FUNCTION_11_37();
      bspush_ca_boa();
      OUTLINED_FUNCTION_12_37();
      if (insert_spr_phone())
      {
        v27 = v22;
      }

      else
      {
        v27 = 1;
      }

LABEL_19:
      v28 = a1[13];
      if (v28)
      {
        a1[13] = 0;
        v29 = v28;
        v22 = v27;
      }

      else
      {
        v29 = vback(a1, v27);
        v22 = 0;
      }

      switch(v29)
      {
        case 2:
        case 5:
          continue;
        case 3:
          goto LABEL_14;
        case 4:
          v24 = v22;
          goto LABEL_13;
        case 6:
          starttest(a1, 8);
          v30 = OUTLINED_FUNCTION_12_37();
          if (lpta_loadp_setscan_r(v30, v31, 2))
          {
            goto LABEL_4;
          }

          v32 = OUTLINED_FUNCTION_4_39();
          v35 = testFldeq(v32, v33, v34, 1);
          v27 = v22;
          if (!v35)
          {
            v38 = advance_tok(a1, v22, v36, v37);
            v27 = v22;
            if (!v38)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_19;
        case 7:
          bspop_boa(a1);
          goto LABEL_4;
        case 9:
LABEL_26:
          *(a3 + 8) = v43;
          *(a4 + 8) = v41;
          vretproc(a1);
          result = 0;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 136) = v48;
  *(v47 + 112) = a47;
  *(v47 + 128) = 0;

  return test_ptr(v47, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return lpta_loadp_setscan_r(v38, &a38, 2);
}

uint64_t assign_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v30[0]);
  bzero(v35, 0xC0uLL);
  if (setjmp(v35) || ventproc(a1, v30, v34, v33, v32, v35))
  {
LABEL_3:
    v9 = 94;
    goto LABEL_4;
  }

  LOWORD(v31) = -4;
  fence_41(a1);
  HIWORD(v31) = 1;
  *(a1 + 6406) = *(a1 + 4014) - 1;
  if (*(a1 + 4050) == 1)
  {
    assign_user_stress(a1);
LABEL_21:
    v9 = 0;
    goto LABEL_4;
  }

  while (2)
  {
    if (*(a1 + 4014) != 1)
    {
LABEL_18:
      assign_primary_stress(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_19:
      assign_secondary_stress(a1, v12, v13, v14, v15, v16, v17, v18);
LABEL_20:
      insert_zero_sylls(a1);
      goto LABEL_21;
    }

    starttest(a1, 5);
    if (lpta_loadp_setscan_r(a1, a1 + 1320, 4))
    {
      goto LABEL_13;
    }

    if (!npush_fld(a1, 4u, 6u))
    {
      npush_i(a1);
      if (!if_testgt(a1, v19, v20, v21, v22, v23, v24, v25) && !advance_tok(a1, v12, v13, v14))
      {
        move_i(a1, &v31, 0);
LABEL_13:
        lpta_rpta_loadp(a1, a1 + 6240, a1 + 6256);
        insert_2ptv();
        if (!v26)
        {
          v9 = 0;
          break;
        }
      }
    }

    v27 = *(a1 + 104);
    if (v27)
    {
      *(a1 + 104) = 0;
      v28 = v27;
    }

    else
    {
      v28 = vback(a1, 0);
    }

    v29 = v28 - 1;
    v9 = 0;
    switch(v29)
    {
      case 0:
        continue;
      case 1:
      case 2:
        goto LABEL_4;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_13;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_20;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  v10 = v9;
  vretproc(a1);
  return v10;
}

uint64_t assign_primary_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v13[0] = 0;
  v13[1] = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v12[0]);
  bzero(v19, 0xC0uLL);
  if (setjmp(v19) || ventproc(a1, v12, v18, v17, v16, v19))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    push_ptr_init(a1, &v14);
    push_ptr_init(a1, v13);
    fence_41(a1);
    v15 = *(a1 + 6264);
    if (!lpta_loadp_setscan_l(a1, a1 + 6256, 2) && !test_string_s())
    {
      --*(a1 + 6406);
      if (!lpta_loadp_setscan_l(a1, &v14, 7) && !advanc(a1))
      {
LABEL_9:
        savescptr(a1, 2, &v14);
      }
    }

    while (2)
    {
      starttest(a1, 3);
      if (!lpta_loadp_setscan_l(a1, &v14, 7) && !advanc(a1))
      {
LABEL_12:
        savescptr(a1, 4, v13);
      }

LABEL_13:
      lpta_rpta_loadp(a1, v13, &v14);
      if (insert_2pt_i(a1, 7u, 2, &unk_28064BB0C, 0))
      {
        v10 = *(a1 + 104);
        if (v10)
        {
          *(a1 + 104) = 0;
          v11 = v10;
        }

        else
        {
          v11 = vback(a1, 0);
        }

        switch(v11)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_12;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t assign_secondary_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_0_44(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  bzero(v18, 0xC0uLL);
  if (setjmp(v18) || ventproc(a1, v13, v17, v16, v15, v18))
  {
LABEL_3:
    v9 = 94;
  }

  else
  {
    push_ptr_init(a1, v14);
    fence_41(a1);
    if (*(a1 + 6406) >= 2)
    {
      starttest(a1, 2);
      if (!lpta_loadp_setscan_r(a1, a1 + 6240, 7) && !advanc(a1))
      {
        goto LABEL_10;
      }

      do
      {
LABEL_11:
        lpta_rpta_loadp(a1, a1 + 6240, v14);
        if (!insert_2pt_i(a1, 7u, 2, &string_5_1, 0))
        {
          v9 = 0;
          goto LABEL_4;
        }

        v11 = *(a1 + 104);
        if (v11)
        {
          *(a1 + 104) = 0;
          v12 = v11;
        }

        else
        {
          v12 = vback(a1, 0);
        }
      }

      while (v12 == 2);
      if (v12 != 1)
      {
        if (v12 != 3)
        {
          goto LABEL_3;
        }

LABEL_10:
        savescptr(a1, 3, v14);
        goto LABEL_11;
      }
    }

    v9 = 0;
  }

LABEL_4:
  vretproc(a1);
  return v9;
}

void OUTLINED_FUNCTION_0_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void *fence_42(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

uint64_t create_syllables(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v90 = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = 0;
  v82[1] = 0;
  v81[0] = 0;
  v81[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  OUTLINED_FUNCTION_16_35();
  bzero(v89, v9);
  if (!setjmp(v89) && !ventproc(a1, &v56, v88, v87, v86, v89))
  {
    push_ptr_init(a1, v85);
    v11 = OUTLINED_FUNCTION_10_38();
    push_ptr_init(v11, v12);
    v13 = OUTLINED_FUNCTION_14_36();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_20_30();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_13_37();
    v19 = push_ptr_init(v17, v18);
    OUTLINED_FUNCTION_22_28(v19, v20, &null_str_17);
    fence_42(a1, 1, &_MergedGlobals_38);
    *(a1 + 4014) = 0;
    startloop(a1, 1);
    lpta_loadpn(a1, a1 + 1320);
    OUTLINED_FUNCTION_9_38();
    lpta_mover();
    lpta_storep(a1, v85, v21);
    lpta_loadpn(a1, a1 + 1336);
    OUTLINED_FUNCTION_9_38();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_14_36();
    lpta_storep(v22, v23, v24);
    if (forall_to_test(a1, v85, v82))
    {
      goto LABEL_17;
    }

LABEL_6:
    v25 = OUTLINED_FUNCTION_6_39();
    bspush_ca(v25);
    v26 = OUTLINED_FUNCTION_17_35();
    if (lpta_loadp_setscan_r(v26, v27, 2))
    {
      goto LABEL_17;
    }

    v28 = OUTLINED_FUNCTION_2_42();
    if (testFldeq(v28, v29, v30, 1) || advance_tok(a1, v31, v32, v33))
    {
      goto LABEL_17;
    }

LABEL_9:
    savescptr(a1, 4, &v83);
    while (2)
    {
      v34 = OUTLINED_FUNCTION_17_35();
      lpta_loadpn(v34, v35);
      lpta_ctxtl();
      v36 = OUTLINED_FUNCTION_20_30();
      lpta_storep(v36, v37, v38);
      v39 = OUTLINED_FUNCTION_10_38();
      assign_syll_coda(v39, v40, v41, v42, v43, v44, v45, v46);
LABEL_11:
      *(a1 + 136) = 1;
      OUTLINED_FUNCTION_21_29();
      ++*(a1 + 4014);
      v47 = OUTLINED_FUNCTION_6_39();
      starttest_l(v47, v48);
      if (*(a1 + 4014) == 1)
      {
        copyvar(a1, (a1 + 6240), v81);
      }

LABEL_13:
      if (!forto_adv_upto_r(a1, 1, 2, 6, 2, v85))
      {
LABEL_14:
        *(a1 + 6264) = v84;
        v49 = OUTLINED_FUNCTION_6_39();
        starttest(v49, v50);
        if (!lpta_loadp_setscan_r(a1, a1 + 6256, 4) && !advanc(a1))
        {
LABEL_16:
          OUTLINED_FUNCTION_12_38(8, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
          if (advance_tok(a1, v51, v52, v53))
          {
            goto LABEL_17;
          }

          *(a1 + 136) = 1;
          OUTLINED_FUNCTION_21_29();
        }

LABEL_22:
        vretproc(a1);
        return 0;
      }

LABEL_17:
      v54 = *(a1 + 104);
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_18_34(v54);
      }

      else
      {
        v55 = vback(a1, 0);
      }

      switch(v55)
      {
        case 1:
          goto LABEL_14;
        case 2:
          continue;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_6;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

uint64_t assign_syll_coda(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v211 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v199);
  OUTLINED_FUNCTION_16_35();
  bzero(v210, v10);
  v11 = setjmp(v210);
  if (v11 || OUTLINED_FUNCTION_15_35(v11, v12, v13, v14, v15, v16, v17, v18, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210[0]))
  {
LABEL_3:
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_14_36();
    get_parm(v21, v22, a2, -6);
    fence_42(a1, 0, &null_str_17);
    fence_42(a1, 1, &_MergedGlobals_38);
    starttest(a1, 1);
    v23 = OUTLINED_FUNCTION_14_36();
    if (!lpta_loadp_setscan_r(v23, v24, 2))
    {
      v25 = 0;
LABEL_7:
      while (1)
      {
        bspush_ca_scan(a1, 2);
        v26 = testFldeq(a1, 2u, 1, 2);
        v29 = v25;
        if (v26)
        {
          break;
        }

LABEL_8:
        if (advance_tok(a1, v29, v27, v28))
        {
          LODWORD(v29) = v25;
          break;
        }

        bspush_ca_scan(a1, 4);
      }

      while (2)
      {
        v30 = a1[13];
        if (v30)
        {
          v31 = OUTLINED_FUNCTION_18_34(v30);
          v32 = v29;
        }

        else
        {
          v31 = vback(a1, v29);
          v32 = 0;
        }

        v25 = v32;
        switch(v31)
        {
          case 1:
            break;
          case 2:
            v53 = OUTLINED_FUNCTION_2_42();
            v56 = testFldeq(v53, v54, v55, 3);
            v25 = v32;
            v29 = v32;
            if (!v56)
            {
              goto LABEL_8;
            }

            continue;
          case 3:
            goto LABEL_8;
          case 4:
            savescptr(a1, 4, &v198);
            v38 = OUTLINED_FUNCTION_6_39();
            starttest(v38, v39);
            OUTLINED_FUNCTION_6_39();
            bspush_ca_boa();
            v40 = lpta_loadp_setscan_r(a1, &v198, 2);
            LODWORD(v29) = v32;
            if (!v40)
            {
              if (advance_tok(a1, v32, v41, v42))
              {
                LODWORD(v29) = v32;
              }

              else
              {
                LODWORD(v29) = 1;
              }
            }

            continue;
          case 5:
            v25 = v32;
            goto LABEL_7;
          case 6:
            v45 = OUTLINED_FUNCTION_13_37();
            if (!lpta_loadp_setscan_r(v45, v46, 2))
            {
              OUTLINED_FUNCTION_2_42();
              if (!test_string_s())
              {
                goto LABEL_60;
              }
            }

            goto LABEL_23;
          case 7:
            bspop_boa(a1);
            goto LABEL_60;
          case 8:
LABEL_23:
            v47 = OUTLINED_FUNCTION_6_39();
            starttest(v47, v48);
            v49 = OUTLINED_FUNCTION_13_37();
            if (lpta_loadp_setscan_l(v49, v50, 2))
            {
              goto LABEL_60;
            }

            v51 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v51, v52);
            goto LABEL_46;
          case 9:
            v70 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v70, v71);
            v72 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v72, v73);
            v74 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v74, v75);
            goto LABEL_36;
          case 10:
          case 37:
            goto LABEL_49;
          case 11:
            v57 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v57, v58);
            v59 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v59, v60);
            v61 = OUTLINED_FUNCTION_5_39();
            v65 = testFldeq(v61, v62, v63, v64);
            LODWORD(v29) = v32;
            if (v65)
            {
              continue;
            }

            v68 = advance_tok(a1, v32, v66, v67);
            LODWORD(v29) = v32;
            if (v68)
            {
              continue;
            }

            goto LABEL_29;
          case 12:
            goto LABEL_37;
          case 13:
LABEL_36:
            OUTLINED_FUNCTION_2_42();
            v89 = test_string_s();
            LODWORD(v29) = v32;
            if (v89)
            {
              continue;
            }

LABEL_37:
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
LABEL_38:
            OUTLINED_FUNCTION_2_42();
            v90 = test_string_s();
            LODWORD(v29) = v32;
            if (v90)
            {
              continue;
            }

LABEL_39:
            bspush_nboa(a1);
LABEL_40:
            OUTLINED_FUNCTION_2_42();
            goto LABEL_47;
          case 14:
          case 16:
            v43 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v43, v44);
            goto LABEL_38;
          case 15:
            goto LABEL_39;
          case 17:
            goto LABEL_38;
          case 18:
            v76 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v76, v77);
            v78 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v78, v79);
            v80 = OUTLINED_FUNCTION_5_39();
            v84 = testFldeq(v80, v81, v82, v83);
            LODWORD(v29) = v32;
            if (v84)
            {
              continue;
            }

            v87 = advance_tok(a1, v32, v85, v86);
            LODWORD(v29) = v32;
            if (v87)
            {
              continue;
            }

            goto LABEL_34;
          case 19:
LABEL_29:
            OUTLINED_FUNCTION_2_42();
            v69 = test_string_s();
            LODWORD(v29) = v32;
            if (!v69)
            {
              goto LABEL_35;
            }

            continue;
          case 20:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 30:
          case 32:
          case 33:
            v91 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v91, v92);
            goto LABEL_42;
          case 21:
          case 31:
            goto LABEL_43;
          case 27:
          case 34:
            goto LABEL_42;
          case 28:
            v33 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v33, v34);
            OUTLINED_FUNCTION_2_42();
            v35 = test_string_s();
            LODWORD(v29) = v32;
            if (v35)
            {
              continue;
            }

            v36 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v36, v37);
            goto LABEL_40;
          case 29:
LABEL_34:
            OUTLINED_FUNCTION_2_42();
            v88 = test_string_s();
            LODWORD(v29) = v32;
            if (v88)
            {
              continue;
            }

LABEL_35:
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
LABEL_42:
            OUTLINED_FUNCTION_2_42();
            v93 = test_string_s();
            LODWORD(v29) = v32;
            if (v93)
            {
              continue;
            }

LABEL_43:
            bspush_nboa(a1);
            goto LABEL_49;
          case 35:
            v94 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v94, v95);
            v96 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v96, v97);
            v98 = OUTLINED_FUNCTION_5_39();
            v102 = testFldeq(v98, v99, v100, v101);
            LODWORD(v29) = v32;
            if (v102)
            {
              continue;
            }

            v105 = advance_tok(a1, v32, v103, v104);
            LODWORD(v29) = v32;
            if (v105)
            {
              continue;
            }

            goto LABEL_46;
          case 36:
            goto LABEL_40;
          case 38:
            v114 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v114, v115);
            v116 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v116, v117);
            v118 = OUTLINED_FUNCTION_5_39();
            v122 = testFldeq(v118, v119, v120, v121);
            LODWORD(v29) = v32;
            if (v122)
            {
              continue;
            }

            v125 = advance_tok(a1, v32, v123, v124);
            LODWORD(v29) = v32;
            if (v125)
            {
              continue;
            }

            goto LABEL_54;
          case 39:
LABEL_46:
            OUTLINED_FUNCTION_9_38();
LABEL_47:
            v106 = test_string_s();
            goto LABEL_48;
          case 40:
            v110 = OUTLINED_FUNCTION_5_39();
            goto LABEL_55;
          case 41:
LABEL_54:
            v110 = OUTLINED_FUNCTION_2_42();
            v113 = 2;
LABEL_55:
            v126 = testFldeq(v110, v111, v112, v113);
            LODWORD(v29) = v32;
            if (v126)
            {
              continue;
            }

            v106 = advance_tok(a1, v32, v127, v128);
LABEL_48:
            LODWORD(v29) = v32;
            if (v106)
            {
              continue;
            }

LABEL_49:
            v107 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v107, v108);
            v109 = advanc(a1);
            LODWORD(v29) = v32;
            if (v109)
            {
              continue;
            }

LABEL_59:
            OUTLINED_FUNCTION_12_38(42, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v198);
            break;
          case 42:
            goto LABEL_59;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

LABEL_60:
    *(a2 + 8) = v199;
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t estimate_fren_nsylls(void *a1, __int16 *a2, __int16 *a3, __int16 *a4, int a5, int a6, int a7, int a8)
{
  v428 = *MEMORY[0x277D85DE8];
  v423 = 0;
  v422[0] = 0;
  v422[1] = 0;
  memset(v421, 0, sizeof(v421));
  v420[0] = 0;
  v420[1] = 0;
  v419[0] = 0;
  v419[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418);
  OUTLINED_FUNCTION_16_35();
  bzero(v427, v12);
  if (!setjmp(v427) && !ventproc(a1, &v394, v426, v425, v424, v427))
  {
    get_parm(a1, &v423, a2, -4);
    get_parm(a1, v422, a3, -6);
    v15 = OUTLINED_FUNCTION_17_35();
    get_parm(v15, v16, a4, -6);
    v17 = OUTLINED_FUNCTION_10_38();
    push_ptr_init(v17, v18);
    push_ptr_init(a1, v420);
    v19 = OUTLINED_FUNCTION_20_30();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_13_37();
    v23 = push_ptr_init(v21, v22);
    v24 = 0;
    OUTLINED_FUNCTION_22_28(v23, v25, &null_str_17);
    fence_42(a1, 1, &unk_28064BB14);
    starttest(a1, 1);
    OUTLINED_FUNCTION_6_39();
    bspush_ca_boa();
    if (!lpta_loadp_setscan_r(a1, v422, 1))
    {
      v24 = !advance_tok(a1, v26, v27, v28);
    }

    LODWORD(v29) = v24;
    while (1)
    {
LABEL_8:
      v30 = a1[13];
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_18_34(v30);
        v33 = v32;
      }

      else
      {
        v31 = vback(a1, v29);
        v33 = 0;
      }

      switch(v31)
      {
        case 1:
          goto LABEL_13;
        case 2:
          bspop_boa(a1);
          v34 = OUTLINED_FUNCTION_14_36();
          lpta_loadpn(v34, v35);
          OUTLINED_FUNCTION_7_39();
          lpta_ctxtl();
          v36 = OUTLINED_FUNCTION_14_36();
          lpta_storep(v36, v37, v38);
LABEL_13:
          v39 = OUTLINED_FUNCTION_6_39();
          starttest(v39, v40);
          OUTLINED_FUNCTION_6_39();
          bspush_ca_boa();
          v41 = OUTLINED_FUNCTION_8_39();
          v44 = lpta_loadp_setscan_r(v41, v42, v43);
          goto LABEL_48;
        case 3:
          goto LABEL_19;
        case 4:
          bspop_boa(a1);
          v55 = OUTLINED_FUNCTION_14_36();
          lpta_loadpn(v55, v56);
          OUTLINED_FUNCTION_7_39();
          lpta_ctxtr();
          v57 = OUTLINED_FUNCTION_14_36();
          lpta_storep(v57, v58, v59);
LABEL_19:
          v60 = OUTLINED_FUNCTION_6_39();
          startloop(v60, v61);
          lpta_loadpn(a1, v422);
          OUTLINED_FUNCTION_7_39();
          lpta_mover();
          v62 = OUTLINED_FUNCTION_10_38();
          lpta_storep(v62, v63, v64);
          v65 = OUTLINED_FUNCTION_17_35();
          lpta_loadpn(v65, v66);
          OUTLINED_FUNCTION_7_39();
          lpta_mover();
          v67 = OUTLINED_FUNCTION_20_30();
          lpta_storep(v67, v68, v69);
          goto LABEL_37;
        case 5:
        case 50:
          goto LABEL_149;
        case 6:
          goto LABEL_41;
        case 7:
        case 66:
          goto LABEL_123;
        case 8:
          goto LABEL_40;
        case 9:
          goto LABEL_42;
        case 10:
        case 14:
        case 18:
        case 22:
        case 29:
        case 34:
        case 51:
        case 57:
        case 70:
          goto LABEL_143;
        case 11:
          goto LABEL_43;
        case 12:
          goto LABEL_53;
        case 13:
          goto LABEL_148;
        case 15:
          goto LABEL_54;
        case 16:
          goto LABEL_92;
        case 17:
          goto LABEL_93;
        case 19:
          goto LABEL_95;
        case 20:
          goto LABEL_96;
        case 21:
          goto LABEL_56;
        case 23:
          goto LABEL_58;
        case 24:
          goto LABEL_117;
        case 25:
          goto LABEL_134;
        case 26:
          goto LABEL_136;
        case 27:
          goto LABEL_140;
        case 28:
          goto LABEL_141;
        case 30:
          goto LABEL_118;
        case 31:
          goto LABEL_126;
        case 32:
          goto LABEL_62;
        case 33:
          goto LABEL_144;
        case 35:
          goto LABEL_63;
        case 36:
          goto LABEL_84;
        case 37:
          goto LABEL_87;
        case 38:
          v72 = OUTLINED_FUNCTION_0_45();
          v76 = testFldeq(v72, v73, v74, v75);
          LODWORD(v29) = v33;
          if (v76)
          {
            continue;
          }

          v79 = advance_tok(a1, v33, v77, v78);
          goto LABEL_86;
        case 39:
          goto LABEL_65;
        case 40:
          goto LABEL_107;
        case 41:
          goto LABEL_66;
        case 42:
          goto LABEL_77;
        case 43:
          goto LABEL_79;
        case 44:
          bspop_boa(a1);
          goto LABEL_78;
        case 45:
          OUTLINED_FUNCTION_6_39();
          bspush_ca_scan_boa();
          v95 = OUTLINED_FUNCTION_1_43();
          v98 = 1;
          goto LABEL_80;
        case 46:
          bspop_boa(a1);
          v104 = advance_tok(a1, v101, v102, v103);
          LODWORD(v29) = v33;
          if (v104)
          {
            continue;
          }

          v105 = OUTLINED_FUNCTION_8_39();
          v108 = lpta_loadp_setscan_r(v105, v106, v107);
          LODWORD(v29) = v33;
          if (v108)
          {
            continue;
          }

          v109 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v109, v110);
          OUTLINED_FUNCTION_7_39();
          v111 = test_string_s();
          LODWORD(v29) = v33;
          if (v111)
          {
            continue;
          }

          goto LABEL_36;
        case 47:
LABEL_36:
          v112 = OUTLINED_FUNCTION_6_39();
          v115 = test_synch(v112, v113, 1, v114);
          goto LABEL_124;
        case 48:
          goto LABEL_68;
        case 49:
          goto LABEL_109;
        case 52:
          goto LABEL_69;
        case 53:
          v80 = OUTLINED_FUNCTION_0_45();
          v84 = testFldeq(v80, v81, v82, v83);
          LODWORD(v29) = v33;
          if (v84)
          {
            continue;
          }

          v87 = advance_tok(a1, v33, v85, v86);
          LODWORD(v29) = v33;
          if (v87)
          {
            continue;
          }

          goto LABEL_29;
        case 54:
          v99 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v99, v100);
          goto LABEL_102;
        case 55:
          goto LABEL_104;
        case 56:
          goto LABEL_102;
        case 58:
LABEL_29:
          v92 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v92, v93);
          goto LABEL_30;
        case 59:
LABEL_30:
          OUTLINED_FUNCTION_7_39();
          v94 = test_string_s();
          goto LABEL_142;
        case 60:
          goto LABEL_71;
        case 61:
          bspop_boa(a1);
          goto LABEL_106;
        case 62:
          v47 = OUTLINED_FUNCTION_7_39();
          v50 = 20;
          goto LABEL_15;
        case 63:
          goto LABEL_16;
        case 64:
          goto LABEL_72;
        case 65:
          goto LABEL_73;
        case 67:
          goto LABEL_46;
        case 68:
          bspop_boa(a1);
          v88 = OUTLINED_FUNCTION_8_39();
          v91 = lpta_loadp_setscan_r(v88, v89, v90);
          LODWORD(v29) = v33;
          if (v91)
          {
            continue;
          }

          goto LABEL_47;
        case 69:
          bspop_boa(a1);
          goto LABEL_143;
        case 71:
          goto LABEL_37;
        case 72:
          goto LABEL_38;
        default:
          goto LABEL_3;
      }

      while (1)
      {
LABEL_38:
        v117 = OUTLINED_FUNCTION_6_39();
        bspush_ca(v117);
        v118 = OUTLINED_FUNCTION_3_42();
        v121 = lpta_loadp_setscan_r(v118, v119, v120);
        LODWORD(v29) = v33;
        if (v121)
        {
          goto LABEL_8;
        }

        v124 = advance_tok(a1, v33, v122, v123);
        LODWORD(v29) = v33;
        if (v124)
        {
          goto LABEL_8;
        }

LABEL_40:
        savescptr(a1, 8, v420);
LABEL_41:
        v125 = OUTLINED_FUNCTION_6_39();
        starttest(v125, v126);
        v127 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v127, v128, v129))
        {
          goto LABEL_76;
        }

LABEL_42:
        v130 = OUTLINED_FUNCTION_6_39();
        starttest(v130, v131);
        v132 = OUTLINED_FUNCTION_3_42();
        if (lpta_loadp_setscan_r(v132, v133, v134))
        {
LABEL_43:
          v135 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_r(v135, v136, v137))
          {
            OUTLINED_FUNCTION_7_39();
            if (!test_string_s())
            {
              v138 = OUTLINED_FUNCTION_6_39();
              starttest(v138, v139);
              v140 = OUTLINED_FUNCTION_4_40();
              if (lpta_loadp_setscan_l(v140, v141, v142))
              {
                goto LABEL_123;
              }

LABEL_46:
              OUTLINED_FUNCTION_12_38(67, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
              v146 = advance_tok(a1, v143, v144, v145);
              LODWORD(v29) = v33;
              if (!v146)
              {
LABEL_47:
                OUTLINED_FUNCTION_6_39();
                bspush_ca_scan_boa();
                v147 = OUTLINED_FUNCTION_1_43();
                v44 = testFldeq(v147, v148, v149, 1);
LABEL_48:
                LODWORD(v29) = v33;
                if (!v44)
                {
                  v150 = advance_tok(a1, v33, v45, v46);
LABEL_81:
                  if (v150)
                  {
                    LODWORD(v29) = v33;
                  }

                  else
                  {
                    LODWORD(v29) = 1;
                  }

                  goto LABEL_8;
                }
              }

              goto LABEL_8;
            }
          }

          goto LABEL_143;
        }

        v151 = OUTLINED_FUNCTION_1_43();
        v154 = testFldeq(v151, v152, v153, 1);
        LODWORD(v29) = v33;
        if (v154)
        {
          goto LABEL_8;
        }

        v157 = advance_tok(a1, v33, v155, v156);
        LODWORD(v29) = v33;
        if (v157)
        {
          goto LABEL_8;
        }

        v158 = OUTLINED_FUNCTION_6_39();
        starttest(v158, v159);
        v160 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v160, v161, v162))
        {
          v384 = OUTLINED_FUNCTION_1_43();
          v387 = testFldeq(v384, v385, v386, 1);
          LODWORD(v29) = v33;
          if (v387)
          {
            goto LABEL_8;
          }

          v388 = OUTLINED_FUNCTION_7_39();
          v390 = testFldeq(v388, v389, 5, 3);
          LODWORD(v29) = v33;
          if (v390)
          {
            goto LABEL_8;
          }

          v393 = advance_tok(a1, v33, v391, v392);
          LODWORD(v29) = v33;
          if (v393)
          {
            goto LABEL_8;
          }

LABEL_148:
          v265 = 13;
          goto LABEL_108;
        }

LABEL_53:
        v163 = OUTLINED_FUNCTION_6_39();
        starttest(v163, v164);
        v165 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v165, v166, v167))
        {
          v254 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v254, v255);
LABEL_92:
          OUTLINED_FUNCTION_7_39();
          v256 = test_string_s();
          LODWORD(v29) = v33;
          if (v256)
          {
            goto LABEL_8;
          }

LABEL_93:
          v257 = OUTLINED_FUNCTION_6_39();
          starttest(v257, v258);
          v259 = OUTLINED_FUNCTION_4_40();
          if (lpta_loadp_setscan_r(v259, v260, v261))
          {
            goto LABEL_143;
          }

          v262 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v262, v263);
LABEL_95:
          OUTLINED_FUNCTION_7_39();
          v264 = test_string_s();
          LODWORD(v29) = v33;
          if (v264)
          {
            goto LABEL_8;
          }

LABEL_96:
          v265 = 20;
          goto LABEL_108;
        }

LABEL_54:
        v168 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v168, v169, v170))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
            v305 = OUTLINED_FUNCTION_6_39();
            starttest_e(v305, v306);
LABEL_119:
            v319 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_r(v319, v320, v321))
            {
              goto LABEL_120;
            }

            goto LABEL_143;
          }
        }

LABEL_56:
        v171 = OUTLINED_FUNCTION_3_42();
        if (!lpta_loadp_setscan_r(v171, v172, v173))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
            v307 = OUTLINED_FUNCTION_6_39();
            starttest(v307, v308);
            v309 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_l(v309, v310, v311))
            {
LABEL_134:
              OUTLINED_FUNCTION_12_38(25, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
              v359 = advance_tok(a1, v356, v357, v358);
              LODWORD(v29) = v33;
              if (v359)
              {
                goto LABEL_8;
              }

              v360 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v360, v361);
              OUTLINED_FUNCTION_7_39();
              v362 = test_string_s();
              LODWORD(v29) = v33;
              if (v362)
              {
                goto LABEL_8;
              }

LABEL_136:
              v363 = OUTLINED_FUNCTION_0_45();
              v367 = testFldeq(v363, v364, v365, v366);
              LODWORD(v29) = v33;
              if (v367)
              {
                goto LABEL_8;
              }

              v370 = advance_tok(a1, v33, v368, v369);
              LODWORD(v29) = v33;
              if (v370)
              {
                goto LABEL_8;
              }

              v371 = OUTLINED_FUNCTION_8_39();
              v374 = lpta_loadp_setscan_r(v371, v372, v373);
              LODWORD(v29) = v33;
              if (v374)
              {
                goto LABEL_8;
              }

              v375 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v375, v376);
              OUTLINED_FUNCTION_7_39();
              v377 = test_string_s();
              LODWORD(v29) = v33;
              if (v377)
              {
                goto LABEL_8;
              }

LABEL_140:
              v378 = OUTLINED_FUNCTION_6_39();
              bspush_ca_scan(v378, v379);
              OUTLINED_FUNCTION_7_39();
              v380 = test_string_s();
              LODWORD(v29) = v33;
              if (v380)
              {
                goto LABEL_8;
              }

LABEL_141:
              v381 = OUTLINED_FUNCTION_6_39();
              v94 = test_synch(v381, v382, 1, v383);
              goto LABEL_142;
            }

LABEL_117:
            v312 = OUTLINED_FUNCTION_6_39();
            starttest(v312, v313);
            v314 = OUTLINED_FUNCTION_4_40();
            if (!lpta_loadp_setscan_l(v314, v315, v316))
            {
LABEL_126:
              OUTLINED_FUNCTION_12_38(31, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
              v331 = advance_tok(a1, v328, v329, v330);
              LODWORD(v29) = v33;
              if (v331)
              {
                goto LABEL_8;
              }

              v332 = OUTLINED_FUNCTION_0_45();
              v336 = testFldeq(v332, v333, v334, v335);
              LODWORD(v29) = v33;
              if (v336)
              {
                goto LABEL_8;
              }

              v337 = OUTLINED_FUNCTION_7_39();
              v340 = testFldeq(v337, v338, v339, 24);
              LODWORD(v29) = v33;
              if (v340)
              {
                goto LABEL_8;
              }

              v343 = advance_tok(a1, v33, v341, v342);
              LODWORD(v29) = v33;
              if (v343)
              {
                goto LABEL_8;
              }

              v344 = OUTLINED_FUNCTION_0_45();
              v348 = testFldeq(v344, v345, v346, v347);
              LODWORD(v29) = v33;
              if (v348)
              {
                goto LABEL_8;
              }

              v351 = advance_tok(a1, v33, v349, v350);
              LODWORD(v29) = v33;
              if (v351)
              {
                goto LABEL_8;
              }

              v352 = OUTLINED_FUNCTION_8_39();
              v355 = lpta_loadp_setscan_r(v352, v353, v354);
              LODWORD(v29) = v33;
              if (v355)
              {
                goto LABEL_8;
              }

              v286 = OUTLINED_FUNCTION_1_43();
              v289 = 1;
              goto LABEL_105;
            }

LABEL_118:
            v317 = OUTLINED_FUNCTION_6_39();
            starttest(v317, v318);
            goto LABEL_119;
          }
        }

LABEL_58:
        v174 = OUTLINED_FUNCTION_3_42();
        if (lpta_loadp_setscan_r(v174, v175, v176))
        {
          goto LABEL_143;
        }

        OUTLINED_FUNCTION_7_39();
        if (test_string_s())
        {
          goto LABEL_143;
        }

        v177 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v177, v178, v179))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
LABEL_144:
            v265 = 33;
            goto LABEL_108;
          }
        }

LABEL_62:
        v180 = OUTLINED_FUNCTION_6_39();
        starttest(v180, v181);
        v182 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_l(v182, v183, v184))
        {
          break;
        }

LABEL_63:
        v185 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_r(v185, v186, v187))
        {
          OUTLINED_FUNCTION_7_39();
          if (!test_string_s())
          {
LABEL_107:
            v265 = 40;
LABEL_108:
            savescptr(a1, v265, v420);
            goto LABEL_143;
          }
        }

LABEL_65:
        v188 = OUTLINED_FUNCTION_6_39();
        starttest(v188, v189);
        v190 = OUTLINED_FUNCTION_4_40();
        if (!lpta_loadp_setscan_l(v190, v191, v192))
        {
LABEL_77:
          OUTLINED_FUNCTION_12_38(42, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
LABEL_78:
          v234 = advance_tok(a1, v52, v53, v54);
          LODWORD(v29) = v33;
          if (!v234)
          {
LABEL_79:
            v235 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v235, v236);
            OUTLINED_FUNCTION_6_39();
            bspush_ca_scan_boa();
            v95 = OUTLINED_FUNCTION_0_45();
LABEL_80:
            v150 = testFldeq(v95, v96, v97, v98);
            goto LABEL_81;
          }

          goto LABEL_8;
        }

LABEL_66:
        v193 = OUTLINED_FUNCTION_6_39();
        starttest(v193, v194);
        v195 = OUTLINED_FUNCTION_4_40();
        if (lpta_loadp_setscan_r(v195, v196, v197) || (OUTLINED_FUNCTION_7_39(), test_string_s()))
        {
LABEL_68:
          v198 = OUTLINED_FUNCTION_6_39();
          starttest(v198, v199);
          v200 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v200, v201, v202))
          {
            v282 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v282, v283);
            v284 = OUTLINED_FUNCTION_6_39();
            bspush_ca_scan(v284, v285);
LABEL_102:
            OUTLINED_FUNCTION_7_39();
            v281 = test_string_s();
            goto LABEL_103;
          }

LABEL_69:
          v203 = OUTLINED_FUNCTION_6_39();
          starttest(v203, v204);
          v205 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v205, v206, v207))
          {
            OUTLINED_FUNCTION_7_39();
            if (!test_string_s())
            {
              v298 = OUTLINED_FUNCTION_0_45();
              v302 = testFldeq(v298, v299, v300, v301);
              LODWORD(v29) = v33;
              if (!v302)
              {
                OUTLINED_FUNCTION_6_39();
                bspush_ca_scan_boa();
                v303 = OUTLINED_FUNCTION_6_39();
                bspush_ca_scan(v303, v304);
                v47 = OUTLINED_FUNCTION_7_39();
                v50 = 21;
LABEL_15:
                v51 = testFldeq(v47, v48, v49, v50);
                LODWORD(v29) = v33;
                if (!v51)
                {
LABEL_16:
                  LODWORD(v29) = 1;
                }
              }

              goto LABEL_8;
            }
          }

LABEL_71:
          v208 = OUTLINED_FUNCTION_6_39();
          starttest(v208, v209);
          v210 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v210, v211, v212))
          {
            v266 = OUTLINED_FUNCTION_0_45();
            v270 = testFldeq(v266, v267, v268, v269);
            LODWORD(v29) = v33;
            if (v270)
            {
              goto LABEL_8;
            }

            v273 = advance_tok(a1, v33, v271, v272);
            LODWORD(v29) = v33;
            if (v273)
            {
              goto LABEL_8;
            }

            v274 = OUTLINED_FUNCTION_0_45();
            v278 = testFldeq(v274, v275, v276, v277);
            LODWORD(v29) = v33;
            if (v278)
            {
              goto LABEL_8;
            }

            v281 = advance_tok(a1, v33, v279, v280);
LABEL_103:
            LODWORD(v29) = v33;
            if (v281)
            {
              goto LABEL_8;
            }

LABEL_104:
            v286 = OUTLINED_FUNCTION_0_45();
LABEL_105:
            v290 = testFldeq(v286, v287, v288, v289);
            v29 = v33;
            if (v290)
            {
              goto LABEL_8;
            }

LABEL_106:
            v94 = advance_tok(a1, v29, v70, v71);
LABEL_142:
            LODWORD(v29) = v33;
            if (v94)
            {
              goto LABEL_8;
            }

            goto LABEL_143;
          }

LABEL_72:
          v213 = OUTLINED_FUNCTION_6_39();
          starttest(v213, v214);
          v215 = OUTLINED_FUNCTION_3_42();
          if (!lpta_loadp_setscan_l(v215, v216, v217))
          {
LABEL_73:
            OUTLINED_FUNCTION_12_38(65, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
            v218 = OUTLINED_FUNCTION_0_45();
            v222 = testFldeq(v218, v219, v220, v221);
            LODWORD(v29) = v33;
            if (!v222)
            {
              v225 = advance_tok(a1, v33, v223, v224);
              LODWORD(v29) = v33;
              if (!v225)
              {
                v226 = OUTLINED_FUNCTION_8_39();
                v229 = lpta_loadp_setscan_r(v226, v227, v228);
                LODWORD(v29) = v33;
                if (!v229)
                {
LABEL_76:
                  v230 = OUTLINED_FUNCTION_0_45();
                  goto LABEL_121;
                }
              }
            }

            goto LABEL_8;
          }
        }

        else
        {
LABEL_109:
          v291 = OUTLINED_FUNCTION_6_39();
          v294 = test_synch(v291, v292, 1, v293);
          LODWORD(v29) = v33;
          if (v294)
          {
            goto LABEL_8;
          }

          v295 = OUTLINED_FUNCTION_3_42();
          if (lpta_loadp_setscan_l(v295, v296, v297))
          {
            goto LABEL_149;
          }

          OUTLINED_FUNCTION_7_39();
          if (test_string_s())
          {
            goto LABEL_149;
          }
        }

LABEL_143:
        ++HIWORD(v423);
        OUTLINED_FUNCTION_19_30();
        forall_cont_from();
LABEL_37:
        v116 = forall_to_test(a1, v421, v419);
        LODWORD(v29) = v33;
        if (v116)
        {
          goto LABEL_8;
        }
      }

LABEL_84:
      OUTLINED_FUNCTION_12_38(36, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
      v240 = advance_tok(a1, v237, v238, v239);
      LODWORD(v29) = v33;
      if (!v240)
      {
        OUTLINED_FUNCTION_7_39();
        v79 = test_string_s();
LABEL_86:
        LODWORD(v29) = v33;
        if (!v79)
        {
LABEL_87:
          v241 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v241, v242);
          v243 = OUTLINED_FUNCTION_1_43();
          v246 = testFldeq(v243, v244, v245, 1);
          LODWORD(v29) = v33;
          if (!v246)
          {
            v249 = advance_tok(a1, v33, v247, v248);
            LODWORD(v29) = v33;
            if (!v249)
            {
              v250 = OUTLINED_FUNCTION_8_39();
              v253 = lpta_loadp_setscan_r(v250, v251, v252);
              LODWORD(v29) = v33;
              if (!v253)
              {
LABEL_120:
                v230 = OUTLINED_FUNCTION_1_43();
                v233 = 1;
LABEL_121:
                v322 = testFldeq(v230, v231, v232, v233);
                LODWORD(v29) = v33;
                if (!v322)
                {
                  v325 = advance_tok(a1, v33, v323, v324);
                  LODWORD(v29) = v33;
                  if (!v325)
                  {
LABEL_123:
                    OUTLINED_FUNCTION_19_30();
                    v115 = forto_adv_upto_r(a1, v326, v327, 72, 1, v421);
LABEL_124:
                    LODWORD(v29) = v33;
                    if (!v115)
                    {
LABEL_149:
                      a2[1] = HIWORD(v423);
                      v13 = 0;
                      goto LABEL_4;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_3:
  v13 = 94;
LABEL_4:
  vretproc(a1);
  return v13;
}