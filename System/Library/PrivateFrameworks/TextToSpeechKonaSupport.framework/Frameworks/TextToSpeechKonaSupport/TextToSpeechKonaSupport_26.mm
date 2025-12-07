uint64_t strip_medial_prefix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v462 = *MEMORY[0x277D85DE8];
  v459[0] = 0;
  v459[1] = 0;
  v458[0] = 0;
  v458[1] = 0;
  v457[0] = 0;
  v457[1] = 0;
  v456[0] = 0;
  v456[1] = 0;
  v455[0] = 0;
  v455[1] = 0;
  v453 = 0;
  v454 = 0;
  v451 = 0;
  v452 = 0;
  OUTLINED_FUNCTION_6_40(a1, a2, a3, a4, a5, a6, a7, a8, v396, v398, v400, v402, v404, v406, v408, v410, v412, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434, v436, v438, v440, v442, v444, SHIDWORD(v444), v445, v446, v447, v448, v449, v450);
  OUTLINED_FUNCTION_22_32();
  v10 = v461;
  bzero(v461, v11);
  if (setjmp(v461))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_34_25();
  if (ventproc(a1, v12, v13, v14, v460, v461))
  {
    goto LABEL_3;
  }

  push_ptr_init(a1, v459);
  v18 = OUTLINED_FUNCTION_37_21();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_36_22();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_21_32();
  push_ptr_init(v22, v23);
  push_ptr_init(a1, v455);
  v24 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_33_25();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_31_28();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_20_33();
  push_ptr_init(v30, v31);
  v32 = OUTLINED_FUNCTION_16_38();
  push_ptr_init(v32, v33);
  OUTLINED_FUNCTION_27_29();
  OUTLINED_FUNCTION_35_24(v34, v35, &null_str_11);
  v36 = OUTLINED_FUNCTION_9_40();
  fence_43(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_30_28();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_15_38();
  if (lpta_loadp_setscan_r(v41, v42, v8))
  {
    while (2)
    {
      v43 = OUTLINED_FUNCTION_10_39();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_13_39();
      if (lpta_loadp_setscan_r(v45, v46, v47))
      {
LABEL_3:
        v15 = 94;
        goto LABEL_4;
      }

      v48 = OUTLINED_FUNCTION_10_39();
      bspush_ca_scan(v48, v49);
      OUTLINED_FUNCTION_3_42();
      v50 = test_string_s();
      v51 = v10;
      v52 = v10;
      if (v50)
      {
        goto LABEL_45;
      }

LABEL_8:
      v8 = v51;
      v53 = OUTLINED_FUNCTION_14_39();
      savescptr(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_10_39();
      starttest(v56, v57);
      v58 = OUTLINED_FUNCTION_7_40();
      if (!lpta_loadp_setscan_r(v58, v59, v60) && !advance_tok(a1, v61, v62, v63))
      {
        v74 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v74, v75);
        OUTLINED_FUNCTION_0_44();
        if (test_string_s())
        {
          v52 = v8;
        }

        else
        {
          v135 = OUTLINED_FUNCTION_10_39();
          bspush_ca_scan(v135, v136);
LABEL_182:
          OUTLINED_FUNCTION_0_44();
LABEL_184:
          v332 = test_string_s();
          v147 = v8;
          v52 = v8;
          if (!v332)
          {
LABEL_185:
            v333 = v147;
            OUTLINED_FUNCTION_43_18();
            v334 = OUTLINED_FUNCTION_8_40();
            v15 = test_ptr(v334, v335, v336);
            v52 = v333;
            if (!v15)
            {
              goto LABEL_4;
            }
          }
        }

        goto LABEL_45;
      }

LABEL_10:
      v64 = v8;
      v65 = OUTLINED_FUNCTION_18_35();
      lpta_loadpn(v65, v66);
      OUTLINED_FUNCTION_32_26();
      if (compare_ptas(a1) || testneq(a1))
      {
LABEL_12:
        v67 = OUTLINED_FUNCTION_33_25();
        lpta_loadpn(v67, v68);
        OUTLINED_FUNCTION_32_26();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_14:
          v69 = OUTLINED_FUNCTION_20_33();
          lpta_loadpn(v69, v70);
          OUTLINED_FUNCTION_32_26();
          if (!compare_ptas(a1) && !testneq(a1))
          {
            v71 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v71, v72, v73))
            {
              OUTLINED_FUNCTION_1_43();
              v8 = v64;
              if (!test_string_s())
              {
                goto LABEL_36;
              }

LABEL_31:
              v107 = OUTLINED_FUNCTION_10_39();
              starttest(v107, v108);
              v109 = OUTLINED_FUNCTION_13_39();
              v64 = v8;
              if (lpta_loadp_setscan_r(v109, v110, v111))
              {
LABEL_198:
                v15 = 0;
                goto LABEL_4;
              }

LABEL_32:
              if (!advance_tok(a1, v112, v113, v51))
              {
                v114 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v114, v115);
LABEL_34:
                v8 = v64;
                v116 = OUTLINED_FUNCTION_14_39();
                savescptr(v116, v117, v118);
                v119 = OUTLINED_FUNCTION_14_39();
                lpta_rpta_loadp(v119, v120, v121);
                v122 = OUTLINED_FUNCTION_11_39();
                v124 = setd_lookup(v122, v123, 354);
LABEL_35:
                v52 = v8;
                v64 = v8;
                if (v124)
                {
                  goto LABEL_45;
                }

                goto LABEL_36;
              }

LABEL_227:
              v52 = v64;
              goto LABEL_45;
            }
          }

LABEL_30:
          v8 = v64;
          goto LABEL_31;
        }

        v102 = OUTLINED_FUNCTION_10_39();
        starttest(v102, v103);
        v104 = OUTLINED_FUNCTION_13_39();
        if (lpta_loadp_setscan_r(v104, v105, v106))
        {
          goto LABEL_30;
        }

        v137 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v137, v138);
        OUTLINED_FUNCTION_0_44();
        if (test_string_s())
        {
          goto LABEL_227;
        }

        v139 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v139, v140);
        OUTLINED_FUNCTION_0_44();
        v101 = test_string_s();
LABEL_42:
        v52 = v64;
        if (v101)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      v76 = OUTLINED_FUNCTION_10_39();
      starttest(v76, v77);
      v78 = OUTLINED_FUNCTION_5_41();
      if (lpta_loadp_setscan_l(v78, v79, v80))
      {
LABEL_22:
        v81 = OUTLINED_FUNCTION_10_39();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_5_41();
        if (!lpta_loadp_setscan_r(v83, v84, v85))
        {
          OUTLINED_FUNCTION_0_44();
          if (!test_string_s())
          {
            v86 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v86, v87);
            v88 = v64;
LABEL_25:
            v64 = v88;
            v89 = OUTLINED_FUNCTION_2_43();
            if (testFldeq(v89, v90, v91, 1))
            {
              goto LABEL_227;
            }

            if (advance_tok(a1, v92, v93, v94))
            {
              goto LABEL_227;
            }

            v95 = OUTLINED_FUNCTION_2_43();
            if (testFldeq(v95, v96, v97, 2))
            {
              goto LABEL_227;
            }

            v101 = advance_tok(a1, v98, v99, v100);
            goto LABEL_42;
          }
        }

LABEL_212:
        v365 = OUTLINED_FUNCTION_10_39();
        starttest(v365, v366);
        v367 = OUTLINED_FUNCTION_13_39();
        v370 = lpta_loadp_setscan_l(v367, v368, v369);
        v364 = v64;
        v8 = v64;
        if (v370)
        {
LABEL_213:
          v64 = v8;
          lpta_rpta_loadp(a1, v456, v455);
          v371 = OUTLINED_FUNCTION_11_39();
          if (!setd_lookup(v371, v372, 351))
          {
LABEL_36:
            v8 = v64;
            v125 = OUTLINED_FUNCTION_10_39();
            starttest(v125, v126);
            v127 = OUTLINED_FUNCTION_7_40();
            move_i(v127, v128, v129);
            v130 = OUTLINED_FUNCTION_15_38();
            v15 = nonlex_prefixes(v130, v131, v132, &v444 + 2);
            goto LABEL_189;
          }

LABEL_214:
          v373 = OUTLINED_FUNCTION_10_39();
          starttest(v373, v374);
          v375 = OUTLINED_FUNCTION_5_41();
          v64 = v8;
          if (!lpta_loadp_setscan_l(v375, v376, v377))
          {
LABEL_225:
            savescptr(a1, 149, &v445);
            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_227;
            }

            v382 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v382, v383, v384))
            {
              goto LABEL_227;
            }

            OUTLINED_FUNCTION_0_44();
            v385 = test_string_s();
            v52 = v64;
            v8 = v64;
            if (v385)
            {
              goto LABEL_45;
            }

LABEL_235:
            v386 = OUTLINED_FUNCTION_14_39();
            savescptr(v386, v387, v388);
            v389 = OUTLINED_FUNCTION_10_39();
            starttest(v389, v390);
            v391 = OUTLINED_FUNCTION_7_40();
            if (!lpta_loadp_setscan_r(v391, v392, v393))
            {
              OUTLINED_FUNCTION_0_44();
              if (!test_string_s())
              {
                v394 = OUTLINED_FUNCTION_10_39();
                bspush_ca_scan(v394, v395);
                OUTLINED_FUNCTION_0_44();
                v124 = test_string_s();
                goto LABEL_35;
              }
            }
          }

          goto LABEL_31;
        }

LABEL_216:
        v8 = v364;
        OUTLINED_FUNCTION_29_28(145, v397, v399, v401, v403, v405, v407, v409, v411, v413, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433, v435, v437, v439, v441, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455[0]);
        v378 = OUTLINED_FUNCTION_10_39();
        bspush_ca_scan(v378, v379);
        OUTLINED_FUNCTION_0_44();
        v380 = test_string_s();
        v52 = v8;
        if (v380)
        {
          goto LABEL_45;
        }

LABEL_217:
        OUTLINED_FUNCTION_29_28(146, v397, v399, v401, v403, v405, v407, v409, v411, v413, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433, v435, v437, v439, v441, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455[0]);
        OUTLINED_FUNCTION_0_44();
        v381 = test_string_s();
        v52 = v8;
        if (!v381)
        {
          goto LABEL_213;
        }

LABEL_45:
        v144 = *(a1 + 104);
        if (v144)
        {
          v145 = OUTLINED_FUNCTION_19_35(v144);
        }

        else
        {
          v145 = vback(a1, v52);
          v8 = 0;
        }

        v146 = v145 - 1;
        v15 = 0;
        v113 = v8;
        v51 = v8;
        v147 = v8;
        v88 = v8;
        v64 = v8;
        switch(v146)
        {
          case 0:
            v10 = v8;
            continue;
          case 1:
          case 2:
          case 19:
          case 35:
          case 38:
          case 49:
            goto LABEL_148;
          case 3:
          case 7:
          case 11:
          case 15:
          case 18:
          case 23:
          case 32:
          case 36:
          case 40:
          case 46:
          case 50:
          case 56:
          case 59:
          case 62:
          case 65:
          case 68:
          case 71:
          case 76:
          case 77:
          case 80:
          case 85:
            goto LABEL_161;
          case 4:
            v278 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v278, v279);
            OUTLINED_FUNCTION_0_44();
            v280 = test_string_s();
            v52 = v8;
            if (v280)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 5:
            v179 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v179, v180);
            OUTLINED_FUNCTION_3_42();
            v181 = test_string_s();
            v52 = v8;
            if (v181)
            {
              goto LABEL_45;
            }

            goto LABEL_199;
          case 6:
          case 33:
          case 61:
          case 70:
          case 75:
          case 82:
            goto LABEL_156;
          case 8:
          case 16:
          case 45:
          case 51:
          case 84:
            goto LABEL_158;
          case 9:
LABEL_199:
            v359 = 10;
            v360 = v459;
            goto LABEL_208;
          case 10:
          case 53:
          case 64:
          case 66:
          case 79:
            goto LABEL_149;
          case 12:
            v295 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v295, v296);
            OUTLINED_FUNCTION_1_43();
            v297 = test_string_s();
            v52 = v8;
            if (v297)
            {
              goto LABEL_45;
            }

            goto LABEL_158;
          case 13:
            v281 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v281, v282);
            OUTLINED_FUNCTION_0_44();
            v283 = test_string_s();
            v52 = v8;
            if (v283)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 14:
            goto LABEL_63;
          case 17:
          case 43:
          case 47:
          case 58:
          case 67:
          case 83:
            goto LABEL_159;
          case 20:
            v152 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v152, v153);
            OUTLINED_FUNCTION_0_44();
            v154 = test_string_s();
            v52 = v8;
            if (v154)
            {
              goto LABEL_45;
            }

            goto LABEL_54;
          case 21:
            v149 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v149, v150);
            OUTLINED_FUNCTION_1_43();
            v151 = test_string_s();
            v52 = v8;
            if (v151)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 22:
            v198 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v198, v199);
            OUTLINED_FUNCTION_1_43();
            v200 = test_string_s();
            v52 = v8;
            if (v200)
            {
              goto LABEL_45;
            }

            v201 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v201, v202);
            v203 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v203, v204);
            goto LABEL_92;
          case 24:
            OUTLINED_FUNCTION_1_43();
            v292 = test_string_s();
            v52 = v8;
            if (v292)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 25:
          case 29:
          case 42:
            goto LABEL_137;
          case 26:
            OUTLINED_FUNCTION_0_44();
            v148 = test_string_s();
            v52 = v8;
            if (v148)
            {
              goto LABEL_45;
            }

            goto LABEL_50;
          case 27:
            goto LABEL_92;
          case 28:
LABEL_50:
            savescptr(a1, 29, v458);
LABEL_92:
            OUTLINED_FUNCTION_0_44();
            v205 = test_string_s();
            v52 = v8;
            if (!v205)
            {
              goto LABEL_137;
            }

            goto LABEL_45;
          case 30:
            v286 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v286, v287);
            OUTLINED_FUNCTION_0_44();
            v288 = test_string_s();
            v52 = v8;
            if (v288)
            {
              goto LABEL_45;
            }

            goto LABEL_158;
          case 31:
            OUTLINED_FUNCTION_0_44();
            v160 = test_string_s();
            v52 = v8;
            if (v160)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 34:
            v161 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v161, v162);
            OUTLINED_FUNCTION_0_44();
            v163 = test_string_s();
            v52 = v8;
            if (v163)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 37:
            v247 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v247, v248);
            OUTLINED_FUNCTION_0_44();
            v249 = test_string_s();
            v52 = v8;
            if (v249)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 39:
            goto LABEL_69;
          case 41:
          case 52:
            goto LABEL_155;
          case 44:
            v157 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v157, v158);
            OUTLINED_FUNCTION_0_44();
            v159 = test_string_s();
            v52 = v8;
            if (v159)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 48:
            v207 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v207, v208);
            OUTLINED_FUNCTION_0_44();
            v209 = test_string_s();
            v52 = v8;
            if (v209)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 54:
            v268 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v268, v269);
            OUTLINED_FUNCTION_3_42();
            v270 = test_string_s();
            v52 = v8;
            if (v270)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 55:
            v224 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v224, v225);
            OUTLINED_FUNCTION_0_44();
            v226 = test_string_s();
            v52 = v8;
            if (v226)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 57:
            v168 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v168, v169);
            OUTLINED_FUNCTION_0_44();
            v170 = test_string_s();
            v52 = v8;
            if (v170)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 60:
            v164 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v164, v165);
            OUTLINED_FUNCTION_0_44();
            v166 = test_string_s();
            v52 = v8;
            if (v166)
            {
              goto LABEL_45;
            }

            goto LABEL_69;
          case 63:
            v289 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v289, v290);
            OUTLINED_FUNCTION_0_44();
            v291 = test_string_s();
            v52 = v8;
            if (v291)
            {
              goto LABEL_45;
            }

LABEL_158:
            v298 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v298, v299);
LABEL_159:
            OUTLINED_FUNCTION_2_43();
            goto LABEL_160;
          case 69:
LABEL_54:
            v155 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v155, v156);
LABEL_63:
            OUTLINED_FUNCTION_11_39();
            goto LABEL_160;
          case 72:
            v272 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v272, v273);
            OUTLINED_FUNCTION_0_44();
            v274 = test_string_s();
            v52 = v8;
            if (v274)
            {
              goto LABEL_45;
            }

            v275 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v275, v276);
            OUTLINED_FUNCTION_0_44();
            v277 = test_string_s();
            v52 = v8;
            if (v277)
            {
              goto LABEL_45;
            }

            goto LABEL_155;
          case 73:
            v171 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v171, v172);
            OUTLINED_FUNCTION_0_44();
            v173 = test_string_s();
            v52 = v8;
            if (v173)
            {
              goto LABEL_45;
            }

            goto LABEL_69;
          case 74:
            v182 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v182, v183);
            OUTLINED_FUNCTION_0_44();
            v184 = test_string_s();
            v52 = v8;
            if (v184)
            {
              goto LABEL_45;
            }

            goto LABEL_148;
          case 78:
            OUTLINED_FUNCTION_0_44();
            v167 = test_string_s();
            v52 = v8;
            if (v167)
            {
              goto LABEL_45;
            }

LABEL_69:
            v174 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v174, v175);
LABEL_137:
            OUTLINED_FUNCTION_0_44();
            goto LABEL_160;
          case 81:
            OUTLINED_FUNCTION_0_44();
            v197 = test_string_s();
            v52 = v8;
            if (v197)
            {
              goto LABEL_45;
            }

LABEL_155:
            v293 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v293, v294);
LABEL_156:
            OUTLINED_FUNCTION_1_43();
            goto LABEL_160;
          case 86:
            OUTLINED_FUNCTION_0_44();
            v271 = test_string_s();
            v52 = v8;
            if (v271)
            {
              goto LABEL_45;
            }

LABEL_148:
            v284 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v284, v285);
LABEL_149:
            OUTLINED_FUNCTION_3_42();
LABEL_160:
            v300 = test_string_s();
            v113 = v8;
            v52 = v8;
            if (!v300)
            {
              goto LABEL_161;
            }

            goto LABEL_45;
          case 87:
            OUTLINED_FUNCTION_0_44();
            v185 = test_string_s();
            v52 = v8;
            if (v185)
            {
              goto LABEL_45;
            }

            goto LABEL_207;
          case 88:
LABEL_207:
            v359 = 89;
            v360 = v457;
LABEL_208:
            savescptr(a1, v359, v360);
            v113 = v8;
            goto LABEL_161;
          case 89:
            v64 = v8;
            goto LABEL_163;
          case 90:
            v64 = v8;
            goto LABEL_165;
          case 91:
          case 93:
          case 95:
          case 100:
            LODWORD(v64) = v8;
            goto LABEL_178;
          case 92:
          case 102:
            bspop_boa(a1);
            goto LABEL_198;
          case 94:
            v64 = v8;
            goto LABEL_167;
          case 96:
            goto LABEL_191;
          case 97:
            v64 = v8;
            goto LABEL_193;
          case 98:
            goto LABEL_172;
          case 99:
            goto LABEL_171;
          case 101:
            v233 = OUTLINED_FUNCTION_10_39();
            starttest(v233, v234);
            v235 = OUTLINED_FUNCTION_13_39();
            if (!lpta_loadp_setscan_r(v235, v236, v237))
            {
              goto LABEL_114;
            }

            v64 = v8;
            goto LABEL_36;
          case 103:
          case 106:
          case 139:
          case 151:
          case 156:
          case 158:
          case 166:
          case 172:
            goto LABEL_36;
          case 104:
LABEL_114:
            v238 = advance_tok(a1, v112, v113, v51);
            v52 = v8;
            if (v238)
            {
              goto LABEL_45;
            }

            v337 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v337, v338);
LABEL_187:
            v339 = OUTLINED_FUNCTION_14_39();
            savescptr(v339, v340, v341);
            v342 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v342, v343, v344);
            v345 = OUTLINED_FUNCTION_11_39();
            v347 = 350;
            goto LABEL_188;
          case 105:
            goto LABEL_187;
          case 108:
            v176 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v176, v177);
            OUTLINED_FUNCTION_1_43();
            v178 = test_string_s();
            v52 = v8;
            if (v178)
            {
              goto LABEL_45;
            }

            goto LABEL_200;
          case 109:
          case 117:
          case 121:
            goto LABEL_8;
          case 110:
            v221 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v221, v222);
            OUTLINED_FUNCTION_1_43();
            v223 = test_string_s();
            v52 = v8;
            if (v223)
            {
              goto LABEL_45;
            }

            goto LABEL_201;
          case 111:
LABEL_200:
            v361 = 112;
            goto LABEL_205;
          case 112:
            v188 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v188, v189);
            OUTLINED_FUNCTION_0_44();
            v190 = test_string_s();
            v52 = v8;
            if (v190)
            {
              goto LABEL_45;
            }

            v191 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v191, v192);
            OUTLINED_FUNCTION_0_44();
            v193 = test_string_s();
            v52 = v8;
            if (v193)
            {
              goto LABEL_45;
            }

            goto LABEL_209;
          case 113:
LABEL_201:
            v362 = 114;
            v363 = &v451;
            goto LABEL_206;
          case 114:
            v194 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v194, v195);
            OUTLINED_FUNCTION_0_44();
            v196 = test_string_s();
            v52 = v8;
            if (v196)
            {
              goto LABEL_45;
            }

            goto LABEL_134;
          case 115:
            OUTLINED_FUNCTION_0_44();
            v206 = test_string_s();
            v52 = v8;
            if (v206)
            {
              goto LABEL_45;
            }

            goto LABEL_204;
          case 116:
LABEL_209:
            v362 = 117;
            v363 = &v449;
            goto LABEL_206;
          case 118:
LABEL_204:
            v361 = 119;
            goto LABEL_205;
          case 119:
          case 125:
            goto LABEL_128;
          case 120:
          case 122:
LABEL_134:
            v265 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v265, v266);
            OUTLINED_FUNCTION_0_44();
            goto LABEL_135;
          case 123:
            OUTLINED_FUNCTION_0_44();
            v227 = test_string_s();
            v52 = v8;
            if (v227)
            {
              goto LABEL_45;
            }

            goto LABEL_203;
          case 124:
LABEL_203:
            v362 = 125;
            v363 = &v447;
            goto LABEL_206;
          case 126:
            OUTLINED_FUNCTION_1_43();
            v254 = test_string_s();
            v52 = v8;
            if (v254)
            {
              goto LABEL_45;
            }

LABEL_128:
            v255 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v255, v256);
            OUTLINED_FUNCTION_3_42();
LABEL_135:
            v267 = test_string_s();
            v51 = v8;
            v52 = v8;
            if (!v267)
            {
              goto LABEL_8;
            }

            goto LABEL_45;
          case 127:
            OUTLINED_FUNCTION_0_44();
            v186 = test_string_s();
            v52 = v8;
            if (v186)
            {
              goto LABEL_45;
            }

            goto LABEL_202;
          case 128:
LABEL_202:
            v361 = 129;
LABEL_205:
            v362 = v361;
            v363 = &v453;
LABEL_206:
            savescptr(a1, v362, v363);
            v51 = v8;
            goto LABEL_8;
          case 129:
            goto LABEL_10;
          case 130:
            OUTLINED_FUNCTION_3_42();
            goto LABEL_184;
          case 131:
            goto LABEL_182;
          case 132:
          case 133:
            goto LABEL_185;
          case 134:
          case 147:
          case 153:
          case 173:
            goto LABEL_31;
          case 135:
            v64 = v8;
            goto LABEL_12;
          case 136:
            v64 = v8;
            goto LABEL_22;
          case 137:
            goto LABEL_194;
          case 138:
            bspop_boa(a1);
            v257 = OUTLINED_FUNCTION_13_39();
            v260 = lpta_loadp_setscan_r(v257, v258, v259);
            v52 = v8;
            if (v260)
            {
              goto LABEL_45;
            }

            goto LABEL_130;
          case 140:
            v64 = v8;
            goto LABEL_212;
          case 141:
            OUTLINED_FUNCTION_0_44();
            v187 = test_string_s();
            v88 = v8;
            v52 = v8;
            if (!v187)
            {
              goto LABEL_25;
            }

            goto LABEL_45;
          case 142:
            goto LABEL_25;
          case 143:
            goto LABEL_213;
          case 144:
            v364 = v8;
            goto LABEL_216;
          case 145:
            goto LABEL_217;
          case 146:
            goto LABEL_214;
          case 148:
            v64 = v8;
            goto LABEL_225;
          case 149:
            goto LABEL_235;
          case 150:
          case 169:
            goto LABEL_112;
          case 152:
            v64 = v8;
            goto LABEL_14;
          case 154:
            v213 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v213, v214);
            OUTLINED_FUNCTION_0_44();
            v215 = test_string_s();
            v52 = v8;
            if (v215)
            {
              goto LABEL_45;
            }

            v216 = OUTLINED_FUNCTION_2_43();
            v219 = 2;
            goto LABEL_132;
          case 155:
            goto LABEL_119;
          case 157:
            OUTLINED_FUNCTION_3_42();
            goto LABEL_121;
          case 159:
            v250 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v250, v251);
            v252 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v252, v253);
            goto LABEL_130;
          case 160:
            v239 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v239, v240);
            OUTLINED_FUNCTION_2_43();
            goto LABEL_121;
          case 161:
LABEL_130:
            OUTLINED_FUNCTION_0_44();
            v261 = test_string_s();
            v52 = v8;
            if (!v261)
            {
              goto LABEL_131;
            }

            goto LABEL_45;
          case 162:
LABEL_131:
            v216 = OUTLINED_FUNCTION_2_43();
            v219 = 1;
LABEL_132:
            v262 = testFldeq(v216, v217, v218, v219);
            v52 = v8;
            if (v262)
            {
              goto LABEL_45;
            }

            v246 = advance_tok(a1, v8, v263, v264);
            goto LABEL_122;
          case 163:
            v241 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v241, v242);
            OUTLINED_FUNCTION_0_44();
            v243 = test_string_s();
            v52 = v8;
            if (v243)
            {
              goto LABEL_45;
            }

LABEL_119:
            v244 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v244, v245);
            goto LABEL_120;
          case 164:
            v228 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v228, v229);
            OUTLINED_FUNCTION_0_44();
            v230 = test_string_s();
            v52 = v8;
            if (v230)
            {
              goto LABEL_45;
            }

            goto LABEL_111;
          case 165:
            OUTLINED_FUNCTION_11_39();
            goto LABEL_121;
          case 167:
            v210 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v210, v211);
            OUTLINED_FUNCTION_0_44();
            v212 = test_string_s();
            v52 = v8;
            if (v212)
            {
              goto LABEL_45;
            }

LABEL_111:
            v231 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v231, v232);
            goto LABEL_112;
          case 168:
            OUTLINED_FUNCTION_0_44();
            v220 = test_string_s();
            v52 = v8;
            if (v220)
            {
              goto LABEL_45;
            }

LABEL_112:
            OUTLINED_FUNCTION_0_44();
            goto LABEL_121;
          case 170:
          case 171:
LABEL_120:
            OUTLINED_FUNCTION_1_43();
LABEL_121:
            v246 = test_string_s();
LABEL_122:
            v64 = v8;
            v52 = v8;
            if (!v246)
            {
              goto LABEL_36;
            }

            goto LABEL_45;
          case 174:
          case 177:
            goto LABEL_4;
          case 175:
            v64 = v8;
            goto LABEL_32;
          case 176:
            v64 = v8;
            goto LABEL_34;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_194:
    LODWORD(v64) = v8;
    savescptr(a1, 138, &v445);
    OUTLINED_FUNCTION_10_39();
    bspush_ca_scan_boa();
    if (advance_tok(a1, v356, v357, v358))
    {
      goto LABEL_227;
    }

    OUTLINED_FUNCTION_0_44();
    v322 = test_string_s();
LABEL_179:
    if (v322)
    {
      v52 = v64;
    }

    else
    {
      v52 = 1;
    }

    goto LABEL_45;
  }

  v133 = OUTLINED_FUNCTION_10_39();
  bspush_ca_scan(v133, v134);
  OUTLINED_FUNCTION_0_44();
  if (test_string_s())
  {
    v52 = 0;
    goto LABEL_45;
  }

  v141 = OUTLINED_FUNCTION_39_20();
  bspush_ca_scan(v141, v142);
  OUTLINED_FUNCTION_11_39();
  v143 = test_string_s();
  v113 = 0;
  v52 = 0;
  if (v143)
  {
    goto LABEL_45;
  }

LABEL_161:
  v64 = v113;
  savescptr(a1, 12, v456);
  if (*(a1 + 5938) != 1 || (OUTLINED_FUNCTION_4_41(), v15 = eng_roots_dict_lookup(), v15))
  {
LABEL_163:
    lpta_loadpn(a1, v459);
    OUTLINED_FUNCTION_32_26();
    if (compare_ptas(a1) || testneq(a1))
    {
LABEL_165:
      v301 = OUTLINED_FUNCTION_36_22();
      lpta_loadpn(v301, v302);
      OUTLINED_FUNCTION_32_26();
      if (compare_ptas(a1) || testneq(a1))
      {
LABEL_167:
        v303 = OUTLINED_FUNCTION_37_21();
        lpta_loadpn(v303, v304);
        OUTLINED_FUNCTION_32_26();
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v305 = OUTLINED_FUNCTION_13_39();
          if (!lpta_loadp_setscan_l(v305, v306, v307))
          {
            v8 = v64;
            if (!advance_tok(a1, v308, v309, v310))
            {
LABEL_171:
              OUTLINED_FUNCTION_29_28(100, v397, v399, v401, v403, v405, v407, v409, v411, v413, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433, v435, v437, v439, v441, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455[0]);
LABEL_172:
              LODWORD(v64) = v8;
            }
          }

          delete_inp_from_left(a1);
        }
      }

      else
      {
        v323 = OUTLINED_FUNCTION_10_39();
        starttest_l(v323, v324);
        v325 = OUTLINED_FUNCTION_13_39();
        v8 = v64;
        if (!lpta_loadp_setscan_r(v325, v326, v327))
        {
LABEL_191:
          v64 = v8;
          if (!advance_tok(a1, v112, v113, v51))
          {
            v348 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v348, v349);
LABEL_193:
            v8 = v64;
            v350 = OUTLINED_FUNCTION_14_39();
            savescptr(v350, v351, v352);
            v353 = OUTLINED_FUNCTION_14_39();
            lpta_rpta_loadp(v353, v354, v355);
            v345 = OUTLINED_FUNCTION_11_39();
            v347 = 343;
LABEL_188:
            v15 = setd_lookup(v345, v346, v347);
LABEL_189:
            v52 = v8;
            if (!v15)
            {
              goto LABEL_4;
            }

            goto LABEL_45;
          }

          goto LABEL_227;
        }
      }

LABEL_178:
      v328 = OUTLINED_FUNCTION_10_39();
      starttest(v328, v329);
      OUTLINED_FUNCTION_10_39();
      bspush_ca_boa();
      v330 = OUTLINED_FUNCTION_21_32();
      potential_prefix(v330, v331);
    }

    else
    {
      v311 = OUTLINED_FUNCTION_10_39();
      starttest_e(v311, v312);
      OUTLINED_FUNCTION_10_39();
      bspush_ca_boa();
      v313 = OUTLINED_FUNCTION_13_39();
      if (lpta_loadp_setscan_r(v313, v314, v315))
      {
        goto LABEL_227;
      }

      v316 = OUTLINED_FUNCTION_2_43();
      if (testFldeq(v316, v317, v318, 2))
      {
        goto LABEL_227;
      }

      v322 = advance_tok(a1, v319, v320, v321);
    }

    goto LABEL_179;
  }

LABEL_4:
  v16 = v15;
  vretproc(a1);
  return v16;
}

void potential_prefix(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45_17();
  v3 = v2;
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v43, v4);
  OUTLINED_FUNCTION_22_32();
  bzero(v49, v5);
  if (!setjmp(v49) && !ventproc(v3, v43, v48, v47, v46, v49))
  {
    v6 = OUTLINED_FUNCTION_14_39();
    get_parm(v6, v7, v8, -6);
    OUTLINED_FUNCTION_35_24(v9, v10, &null_str_11);
    v11 = OUTLINED_FUNCTION_9_40();
    fence_43(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_30_28();
    starttest(v14, v15);
    OUTLINED_FUNCTION_10_39();
    bspush_ca_boa();
    *(v3 + 136) = v49;
    v16 = OUTLINED_FUNCTION_8_40();
    if (setscan_nof_r(v16, v49, v17))
    {
      v21 = 0;
    }

    else
    {
      v21 = !advance_tok(v3, v18, v19, v20) && !advance_tok(v3, v22, v23, v24);
    }

    LODWORD(v25) = v21;
    while (1)
    {
      v26 = *(v3 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_25_30(v26);
        v30 = v25;
      }

      else
      {
        v27 = vback(v3, v25);
        v30 = 0;
      }

      switch(v27)
      {
        case 1:
          v31 = OUTLINED_FUNCTION_41_19();
          starttest(v31, v32);
          OUTLINED_FUNCTION_40_19();
          bspush_ca_boa();
          v33 = OUTLINED_FUNCTION_26_30();
          v35 = lpta_loadp_setscan_r(v33, v34, 1);
          goto LABEL_17;
        case 2:
        case 4:
        case 10:
          bspop_boa(v3);
          goto LABEL_25;
        case 3:
          starttest(v3, 9);
          bspush_ca_boa();
          v39 = OUTLINED_FUNCTION_26_30();
          v41 = legal_initial_consonants(v39, v40);
          goto LABEL_21;
        case 5:
          goto LABEL_18;
        case 6:
          v35 = advance_tok(v3, v25, v28, v29);
LABEL_17:
          LODWORD(v25) = v30;
          if (v35)
          {
            continue;
          }

LABEL_18:
          bspush_ca_scan(v3, 6);
          bspush_ca_scan(v3, 7);
          v36 = OUTLINED_FUNCTION_11_39();
          v38 = 1;
LABEL_19:
          v42 = testFldeq(v36, v37, 4, v38);
          v25 = v30;
          if (!v42)
          {
LABEL_20:
            v41 = advance_tok(v3, v25, v28, v29);
LABEL_21:
            if (v41)
            {
              LODWORD(v25) = v30;
            }

            else
            {
              LODWORD(v25) = 1;
            }
          }

          break;
        case 7:
          v36 = OUTLINED_FUNCTION_11_39();
          v38 = 3;
          goto LABEL_19;
        case 8:
          goto LABEL_20;
        default:
          goto LABEL_25;
      }
    }
  }

LABEL_25:
  vretproc(v3);
  OUTLINED_FUNCTION_44_18();
}

uint64_t legal_initial_consonants(uint64_t a1, __int16 *a2)
{
  v131 = *MEMORY[0x277D85DE8];
  v126[0] = 0;
  v126[1] = 0;
  v125[0] = 0;
  v125[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v124, v4);
  OUTLINED_FUNCTION_22_32();
  bzero(v130, v5);
  if (setjmp(v130) || ventproc(a1, v124, v129, v128, v127, v130))
  {
LABEL_3:
    v6 = 94;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_41_19();
    get_parm(v9, v10, a2, -6);
    v11 = push_ptr_init(a1, v125);
    OUTLINED_FUNCTION_35_24(v11, v12, &null_str_11);
    fence_43(a1, 1, &_MergedGlobals_36);
    starttest(a1, 1);
    v13 = OUTLINED_FUNCTION_41_19();
    if (!lpta_loadp_setscan_r(v13, v14, 1))
    {
      while (2)
      {
        while (1)
        {
          v15 = OUTLINED_FUNCTION_2_43();
          if (testFldeq(v15, v16, v17, 2) || advance_tok(a1, v18, v19, v20))
          {
            break;
          }

          v104 = OUTLINED_FUNCTION_39_20();
          bspush_ca_scan(v104, v105);
        }

LABEL_9:
        v21 = *(a1 + 104);
        if (v21)
        {
          v22 = OUTLINED_FUNCTION_25_30(v21);
        }

        else
        {
          v22 = vback(a1, 0);
        }

        v23 = v22 - 1;
        v6 = 0;
        switch(v23)
        {
          case 0:
            goto LABEL_4;
          case 1:
            savescptr(a1, 2, v125);
            v24 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v24, v25, v26))
            {
              goto LABEL_16;
            }

            if (advance_tok(a1, v27, v28, v29))
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_43_18();
            v30 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v30, v31, v32);
            if (v6)
            {
              goto LABEL_16;
            }

            goto LABEL_4;
          case 2:
            continue;
          case 3:
LABEL_16:
            v33 = OUTLINED_FUNCTION_10_39();
            starttest(v33, v34);
            v35 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v35, v36, v37))
            {
              goto LABEL_18;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_18;
            }

            goto LABEL_56;
          case 4:
LABEL_18:
            v38 = OUTLINED_FUNCTION_10_39();
            starttest(v38, v39);
            v40 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v40, v41, v42))
            {
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_52;
          case 5:
          case 7:
          case 8:
          case 9:
          case 10:
          case 12:
          case 18:
          case 20:
          case 21:
          case 29:
          case 36:
            goto LABEL_61;
          case 6:
          case 13:
          case 19:
          case 25:
          case 30:
          case 37:
          case 48:
          case 52:
            goto LABEL_63;
          case 11:
            v95 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v95, v96);
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

            goto LABEL_61;
          case 14:
          case 22:
          case 24:
          case 31:
          case 38:
          case 49:
          case 51:
            goto LABEL_62;
          case 15:
LABEL_19:
            v43 = OUTLINED_FUNCTION_10_39();
            starttest(v43, v44);
            v45 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v45, v46, v47))
            {
              goto LABEL_21;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_21;
            }

            goto LABEL_56;
          case 16:
LABEL_52:
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_55;
            }

            goto LABEL_9;
          case 17:
          case 28:
          case 34:
            goto LABEL_55;
          case 23:
LABEL_21:
            v48 = OUTLINED_FUNCTION_10_39();
            starttest(v48, v49);
            v50 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v50, v51, v52))
            {
              goto LABEL_22;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_45;
          case 26:
LABEL_22:
            v53 = OUTLINED_FUNCTION_10_39();
            starttest(v53, v54);
            v55 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v55, v56, v57))
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_54;
          case 27:
LABEL_45:
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_55;
            }

            goto LABEL_9;
          case 32:
LABEL_23:
            v58 = OUTLINED_FUNCTION_10_39();
            starttest(v58, v59);
            v60 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v60, v61, v62))
            {
              goto LABEL_24;
            }

            bspush_boa(a1);
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_57;
            }

            goto LABEL_9;
          case 33:
            v93 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v93, v94);
            goto LABEL_54;
          case 35:
LABEL_54:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_55:
            bspush_nboa(a1);
            goto LABEL_56;
          case 39:
LABEL_24:
            v63 = OUTLINED_FUNCTION_10_39();
            starttest(v63, v64);
            v65 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v65, v66, v67))
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_0_44();
            if (!test_string_s())
            {
              goto LABEL_42;
            }

            goto LABEL_9;
          case 40:
          case 42:
LABEL_57:
            v97 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v97, v98);
            goto LABEL_58;
          case 41:
            goto LABEL_59;
          case 43:
LABEL_58:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_59:
            OUTLINED_FUNCTION_9_40();
            if (test_string_s())
            {
              goto LABEL_9;
            }

            bspush_nboa(a1);
            *(a1 + 136) = v126;
            goto LABEL_65;
          case 44:
LABEL_25:
            v68 = OUTLINED_FUNCTION_10_39();
            starttest(v68, v69);
            v70 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v70, v71, v72))
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_27;
            }

LABEL_56:
            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
            goto LABEL_62;
          case 45:
LABEL_42:
            bspush_nboa(a1);
            v91 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v91, v92);
            OUTLINED_FUNCTION_0_44();
            goto LABEL_48;
          case 46:
            OUTLINED_FUNCTION_1_43();
LABEL_48:
            if (!test_string_s())
            {
              goto LABEL_49;
            }

            goto LABEL_9;
          case 47:
LABEL_49:
            OUTLINED_FUNCTION_10_39();
            bspush_ca_scan_boa();
LABEL_61:
            v99 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v99, v100);
LABEL_62:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_63:
            bspush_nboa(a1);
            goto LABEL_64;
          case 50:
LABEL_27:
            v73 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v73, v74, v75))
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_9_40();
            if (test_string_s())
            {
              goto LABEL_30;
            }

            *(a1 + 136) = v126;
            v76 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v76, v77, v78);
            if (v6)
            {
              goto LABEL_30;
            }

            goto LABEL_4;
          case 53:
LABEL_30:
            v79 = OUTLINED_FUNCTION_10_39();
            starttest(v79, v80);
            v81 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v81, v82, v83))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          case 54:
LABEL_32:
            v84 = OUTLINED_FUNCTION_10_39();
            starttest(v84, v85);
            v86 = OUTLINED_FUNCTION_13_39();
            if (lpta_loadp_setscan_r(v86, v87, v88))
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_1_43();
            if (test_string_s())
            {
              goto LABEL_72;
            }

LABEL_34:
            v89 = OUTLINED_FUNCTION_10_39();
            bspush_ca_scan(v89, v90);
LABEL_35:
            OUTLINED_FUNCTION_0_44();
            if (test_string_s())
            {
              goto LABEL_9;
            }

LABEL_64:
            OUTLINED_FUNCTION_43_18();
LABEL_65:
            v101 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v101, v102, v103);
            if (!v6)
            {
              goto LABEL_4;
            }

            goto LABEL_9;
          case 55:
          case 58:
            goto LABEL_35;
          case 56:
          case 59:
            goto LABEL_64;
          case 57:
LABEL_72:
            v106 = OUTLINED_FUNCTION_13_39();
            v109 = lpta_loadp_setscan_r(v106, v107, v108);
            if (v109)
            {
              goto LABEL_75;
            }

            if (OUTLINED_FUNCTION_46_17(v109, v110, v111, &unk_28058105C))
            {
              goto LABEL_75;
            }

            *(a1 + 136) = 2;
            v112 = OUTLINED_FUNCTION_8_40();
            v6 = test_ptr(v112, v113, v114);
            if (v6)
            {
              goto LABEL_75;
            }

            goto LABEL_4;
          case 60:
LABEL_75:
            v115 = OUTLINED_FUNCTION_13_39();
            v118 = lpta_loadp_setscan_r(v115, v116, v117);
            if (!v118 && !OUTLINED_FUNCTION_46_17(v118, v119, v120, &unk_28058105E))
            {
              *(a1 + 136) = 2;
              v121 = OUTLINED_FUNCTION_8_40();
              v6 = test_ptr(v121, v122, v123);
              if (!v6)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_3;
          default:
            goto LABEL_3;
        }
      }
    }

    v6 = 0;
  }

LABEL_4:
  v7 = v6;
  vretproc(a1);
  return v7;
}

uint64_t insert_prefix(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v23, v8);
  OUTLINED_FUNCTION_22_32();
  bzero(v35, v9);
  if (!setjmp(v35) && !ventproc(a1, v23, v34, v33, v32, v35))
  {
    v12 = OUTLINED_FUNCTION_40_19();
    get_parm(v12, v13, a2, -6);
    v14 = OUTLINED_FUNCTION_26_30();
    get_parm(v14, v15, a3, -6);
    get_parm(a1, &v27, a4, -4);
    LOWORD(v26) = 0;
    BYTE2(v26) = 0;
    LODWORD(v24) = -65533;
    OUTLINED_FUNCTION_35_24(v16, v17, &null_str_11);
    v18 = OUTLINED_FUNCTION_40_19();
    lpta_rpta_loadp(v18, v19, &v28);
    OUTLINED_FUNCTION_42_19();
    settvar_s();
    insert_2ptv();
    if (v20)
    {
      v21 = *(a1 + 104);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_25_30(v21);
      }

      else
      {
        v22 = vback(a1, 0);
      }

      if (v22 != 1)
      {
        goto LABEL_3;
      }
    }

    else if (HIWORD(v27) == 1)
    {
      lpta_rpta_loadp(a1, &v30, &v28);
      mark_s();
    }

    *(a1 + 5938) = 1;
    ++*(a1 + 4026);
    v31 = v29;
    *(a2 + 8) = v29;
    v10 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v10 = 94;
LABEL_4:
  vretproc(a1);
  return v10;
}

void strip_inner_prefix(uint64_t a1)
{
  OUTLINED_FUNCTION_45_17();
  v2 = v1;
  v93 = *MEMORY[0x277D85DE8];
  v88[0] = 0;
  v88[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v87, v3);
  OUTLINED_FUNCTION_22_32();
  bzero(v92, v4);
  if (setjmp(v92))
  {
    goto LABEL_3;
  }

  if (ventproc(v2, v87, v91, v90, v89, v92))
  {
    goto LABEL_3;
  }

  push_ptr_init(v2, v88);
  fence_43(v2, 0, &null_str_11);
  v5 = OUTLINED_FUNCTION_11_39();
  fence_43(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_4_41();
  has_lex_prefix(v8, v9);
  if (!v10)
  {
    goto LABEL_3;
  }

  v11 = 0;
  while (2)
  {
    starttest(v2, 3);
    v12 = OUTLINED_FUNCTION_15_38();
    if (!lpta_loadp_setscan_l(v12, v13, 3))
    {
      if (!testFldeq(v2, 3u, 1, 5))
      {
        v34 = advance_tok(v2, v31, v32, v33);
        v29 = v11;
        if (!v34)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }

LABEL_38:
      v29 = v11;
      goto LABEL_17;
    }

LABEL_7:
    v14 = OUTLINED_FUNCTION_13_39();
    if (!lpta_loadp_setscan_r(v14, v15, v16))
    {
      OUTLINED_FUNCTION_0_44();
      v17 = test_string_s();
      v18 = v11;
      if (!v17)
      {
LABEL_33:
        v11 = v18;
        v53 = OUTLINED_FUNCTION_39_20();
        savescptr(v53, v54, v88);
        v55 = OUTLINED_FUNCTION_4_41();
        lpta_rpta_loadp(v55, v56, v57);
        v58 = OUTLINED_FUNCTION_11_39();
        if (!setd_lookup(v58, v59, 355))
        {
LABEL_42:
          v79 = OUTLINED_FUNCTION_15_38();
          lex_prefixes(v79, v80, v81, v82, v83, v84, v85, v86);
          goto LABEL_3;
        }

LABEL_34:
        starttest(v2, 8);
        bspush_ca_boa();
        v60 = OUTLINED_FUNCTION_26_30();
        if (!lpta_loadp_setscan_r(v60, v61, 1))
        {
          v62 = OUTLINED_FUNCTION_2_43();
          if (!testFldeq(v62, v63, v64, 2) && !advance_tok(v2, v65, v66, v67) && !advance_tok(v2, v68, v69, v70))
          {
            v27 = advance_tok(v2, v71, v72, v73);
LABEL_29:
            if (v27)
            {
              v29 = v11;
            }

            else
            {
              v29 = 1;
            }

            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }
    }

LABEL_9:
    starttest(v2, 14);
    v19 = OUTLINED_FUNCTION_13_39();
    if (!lpta_loadp_setscan_r(v19, v20, v21))
    {
      bspush_ca_scan(v2, 15);
      OUTLINED_FUNCTION_1_43();
      v28 = test_string_s();
      v29 = v11;
      v30 = v11;
      if (!v28)
      {
LABEL_25:
        v11 = v30;
        savescptr(v2, 16, v88);
        starttest_l(v2, 18);
        bspush_ca_boa();
        v39 = OUTLINED_FUNCTION_4_41();
        lpta_rpta_loadp(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_11_39();
        v27 = setd_lookup(v42, v43, 357);
        goto LABEL_29;
      }

LABEL_17:
      v35 = v2[13];
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_19_35(v35);
      }

      else
      {
        v36 = vback(v2, v29);
        v11 = 0;
      }

      v30 = v11;
      switch(v36)
      {
        case 1:
          continue;
        case 2:
        case 7:
        case 18:
        case 24:
          goto LABEL_42;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_9;
        case 5:
          v18 = v11;
          goto LABEL_33;
        case 6:
          goto LABEL_34;
        case 8:
          v44 = OUTLINED_FUNCTION_4_41();
          lpta_rpta_loadp(v44, v45, v46);
          v47 = OUTLINED_FUNCTION_11_39();
          if (setd_lookup(v47, v48, 356))
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        case 9:
        case 12:
        case 13:
        case 19:
        case 23:
          bspop_boa(v2);
          goto LABEL_3;
        case 10:
LABEL_27:
          v49 = OUTLINED_FUNCTION_42_19();
          starttest(v49, v50);
          OUTLINED_FUNCTION_40_19();
          bspush_ca_boa();
          v51 = OUTLINED_FUNCTION_26_30();
          v27 = legal_initial_consonants(v51, v52);
          goto LABEL_29;
        case 11:
          starttest(v2, 7);
          bspush_ca_boa();
          OUTLINED_FUNCTION_26_30();
          v27 = one_eng_syllable();
          goto LABEL_29;
        case 14:
          goto LABEL_10;
        case 15:
          OUTLINED_FUNCTION_0_44();
          v37 = test_string_s();
          v29 = v11;
          if (v37)
          {
            goto LABEL_17;
          }

          bspush_ca_scan(v2, 17);
          OUTLINED_FUNCTION_0_44();
          goto LABEL_24;
        case 16:
          goto LABEL_25;
        case 17:
          OUTLINED_FUNCTION_0_44();
LABEL_24:
          v38 = test_string_s();
          v30 = v11;
          v29 = v11;
          if (!v38)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        case 21:
          goto LABEL_12;
        case 22:
          v74 = OUTLINED_FUNCTION_4_41();
          lpta_rpta_loadp(v74, v75, v76);
          v77 = OUTLINED_FUNCTION_11_39();
          if (setd_lookup(v77, v78, 358))
          {
            goto LABEL_42;
          }

          goto LABEL_3;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_10:
  v22 = OUTLINED_FUNCTION_13_39();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    OUTLINED_FUNCTION_11_39();
    if (!test_string_s())
    {
LABEL_12:
      savescptr(v2, 21, v88);
      starttest(v2, 22);
      bspush_ca_boa();
      v25 = OUTLINED_FUNCTION_26_30();
      potential_prefix(v25, v26);
      goto LABEL_29;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_44_18();
}

void has_lex_prefix(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45_17();
  v3 = v2;
  v5 = v4;
  v35 = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = 0;
  v29[0] = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_23_32();
  bzero(v28, v6);
  OUTLINED_FUNCTION_22_32();
  bzero(v34, v7);
  if (!setjmp(v34) && !ventproc(v5, v28, v33, v32, v31, v34))
  {
    get_parm(v5, v30, v3, -6);
    v8 = OUTLINED_FUNCTION_14_39();
    get_parm(v8, v9, v10, -6);
    fence_43(v5, 0, &null_str_11);
    if (*(v5 + 5942) != 1)
    {
      v11 = 0;
      while (2)
      {
        v12 = OUTLINED_FUNCTION_7_40();
        if (lpta_loadp_setscan_r(v12, v13, v14) || (OUTLINED_FUNCTION_1_43(), test_string_s()))
        {
          v15 = v11;
LABEL_17:
          v11 = v15;
          v26 = OUTLINED_FUNCTION_26_30();
          starttest(v26, v27);
        }

        else
        {
          v16 = OUTLINED_FUNCTION_42_19();
          starttest_l(v16, v17);
        }

        bspush_ca_boa();
        v18 = OUTLINED_FUNCTION_17_36();
        lpta_rpta_loadp(v18, v19, v29);
        v20 = OUTLINED_FUNCTION_11_39();
        if (setd_lookup(v20, v21, v22))
        {
          v23 = v11;
        }

        else
        {
          v23 = 1;
        }

        v24 = *(v5 + 104);
        if (v24)
        {
          *(v5 + 104) = 0;
          v25 = v24;
          v15 = v23;
        }

        else
        {
          v25 = vback(v5, v23);
          v15 = 0;
        }

        v11 = v15;
        switch(v25)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_17;
          case 3:
          case 5:
            *(v5 + 5942) = 1;
            break;
          case 4:
          case 6:
            bspop_boa(v5);
            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_44_18();
}

void OUTLINED_FUNCTION_6_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_8_40()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_12_39@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_28()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1336);
}

double OUTLINED_FUNCTION_29_28@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_26()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *OUTLINED_FUNCTION_35_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_43(v3, 0, a3);
}

double OUTLINED_FUNCTION_38_20@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_46_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return test_string_s();
}

void *fence_44(uint64_t a1, int a2, uint64_t a3)
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

uint64_t strip_eng_clitics()
{
  OUTLINED_FUNCTION_61_15();
  v51 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(v2, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46[0], v46[1], v47, v48, v49[0], v49[1]);
  OUTLINED_FUNCTION_30_29();
  bzero(v50, v10);
  if (!setjmp(v50))
  {
    OUTLINED_FUNCTION_37_22();
    if (!ventproc(v0, v11, v12, v13, v14, v50))
    {
      v16 = OUTLINED_FUNCTION_34_26();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_44_19();
      OUTLINED_FUNCTION_86_10(v19, v20);
      v21 = OUTLINED_FUNCTION_69_12();
      OUTLINED_FUNCTION_92_9(v21, v22);
      fence_44(v0, 0, &null_str_12);
      OUTLINED_FUNCTION_34_26();
      if (strip_possessive())
      {
        strip_contractions(v0, v49, &v47, v46);
      }

      *(v1 + 8) = v48;
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_100_7();
}

uint64_t strip_possessive()
{
  OUTLINED_FUNCTION_61_15();
  v53 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v42, v4);
  OUTLINED_FUNCTION_30_29();
  bzero(v52, v5);
  if (setjmp(v52))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_85_11();
  if (ventproc(v0, v6, v7, v8, v9, v52))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_74_11();
  get_parm(v11, v12, v3, -6);
  v13 = OUTLINED_FUNCTION_36_23();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_92_9(v16, v17);
  OUTLINED_FUNCTION_89_10();
  fence_44(v0, v18, &null_str_12);
  v19 = OUTLINED_FUNCTION_25_31();
  fence_44(v19, v20, v21);
  OUTLINED_FUNCTION_93_8();
  v22 = OUTLINED_FUNCTION_44_19();
  if (lpta_loadp_setscan_l(v22, v23, v2) || (OUTLINED_FUNCTION_5_42(), test_string_s()))
  {
LABEL_12:
    v33 = OUTLINED_FUNCTION_21_33();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_23_33();
    if (lpta_loadp_setscan_l(v35, v36, v37))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_14:
    OUTLINED_FUNCTION_60_15(5, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v43, v44, v45, v46, v47, v48);
    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  while (2)
  {
    OUTLINED_FUNCTION_47_17();
    savescptr(v0, v24, &v48);
    v25 = OUTLINED_FUNCTION_6_41();
    if (!testFldeq(v25, v26, v27, 1) && !advance_tok(v0, v28, v29, v30))
    {
LABEL_15:
      lpta_rpta_loadp(v0, &v48, &v46);
      if (!insert_2pt_s(v0, 2u, 1, &unk_280581184, 0))
      {
        lpta_rpta_loadp(v0, &v48, &v46);
        OUTLINED_FUNCTION_44_19();
        settvar_s();
        npush_s(v0);
        WORD1(v43) = 1;
        v38 = OUTLINED_FUNCTION_44_19();
        npop(v38, v39);
        insert_2ptv();
        if (!v40)
        {
          *(v1 + 8) = v49;
          break;
        }
      }
    }

LABEL_8:
    v31 = *(v0 + 104);
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_38_21(v31);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_96_8();
    }

    switch(v32)
    {
      case 1:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_15;
      case 5:
        goto LABEL_14;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return OUTLINED_FUNCTION_101_7();
}

void strip_contractions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_66_14();
  OUTLINED_FUNCTION_61_15();
  OUTLINED_FUNCTION_82_11();
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v65, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v83, v8);
  v9 = setjmp(v83);
  if (!v9 && !OUTLINED_FUNCTION_57_15(v9, v65, v10, v11, v12, v13, v14, v15, v59, v60, v61, v62, v63, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v65[15], v65[16], v65[17], v65[18], v65[19], v65[20], v65[21], v65[22], v66, v67, v68, v69, *v70, v71, v72[0], v72[1], v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]))
  {
    v16 = OUTLINED_FUNCTION_73_11();
    get_parm(v16, v17, v6, -6);
    v18 = OUTLINED_FUNCTION_72_11();
    v64 = v5;
    OUTLINED_FUNCTION_86_10(v18, v19);
    v20 = OUTLINED_FUNCTION_98_8();
    OUTLINED_FUNCTION_92_9(v20, v21);
    v22 = OUTLINED_FUNCTION_87_10();
    v24 = push_ptr_init(v22, v23);
    OUTLINED_FUNCTION_71_12(v24, v25, &null_str_12);
    startloop(v4, 1);
    v26 = 0;
    v27 = 0;
    OUTLINED_FUNCTION_97_8();
    while (1)
    {
LABEL_6:
      bspush_ca(v4);
      if (v27 > 1 || lpta_loadp_setscan_l(v4, v70, 1))
      {
        v28 = v64;
      }

      else
      {
        v29 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v29, v30);
        v31 = test_string_s();
        v32 = v26;
        v28 = v64;
        if (!v31)
        {
LABEL_23:
          v26 = v32;
          OUTLINED_FUNCTION_45_18();
          v45 = test_string_s();
          v46 = v26;
          if (!v45)
          {
LABEL_29:
            v26 = v46;
            v47 = OUTLINED_FUNCTION_78_11();
            savescptr(v47, v48, &v66);
            if (!testFldeq(v4, 1u, 3, 1) && !advance_tok(v4, v49, v50, v51))
            {
              OUTLINED_FUNCTION_102_7();
              bspush_ca_boa();
              v52 = lpta_loadp_setscan_r(v4, v72, 1);
              v53 = v26;
              if (!v52)
              {
LABEL_34:
                v26 = v53;
                while (!testFldeq(v4, 1u, 0, 16) && !advance_tok(v4, v54, v55, v56))
                {
                  v57 = OUTLINED_FUNCTION_64_14();
                  bspush_ca_scan(v57, v58);
                }
              }
            }
          }
        }
      }

      v33 = v26;
      while (2)
      {
        v26 = v33;
        v34 = *(v4 + 104);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_38_21(v34);
        }

        else
        {
          v35 = OUTLINED_FUNCTION_106_7();
          v26 = 0;
        }

        v32 = v26;
        switch(v35)
        {
          case 1:
            *(v28 + 8) = v71;
            vretproc(v4);
            goto LABEL_4;
          case 2:
            goto LABEL_26;
          case 3:
            v36 = OUTLINED_FUNCTION_40_20();
            bspush_ca_scan(v36, v37);
            OUTLINED_FUNCTION_45_18();
            goto LABEL_22;
          case 4:
            goto LABEL_23;
          case 5:
            OUTLINED_FUNCTION_45_18();
            v41 = test_string_s();
            v33 = v26;
            if (v41)
            {
              continue;
            }

            v42 = OUTLINED_FUNCTION_77_11();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_45_18();
            goto LABEL_22;
          case 6:
            OUTLINED_FUNCTION_45_18();
LABEL_22:
            v44 = test_string_s();
            v32 = v26;
            v33 = v26;
            if (!v44)
            {
              goto LABEL_23;
            }

            continue;
          case 7:
            v46 = v26;
            goto LABEL_29;
          case 8:
            bspop_boa(v4);
LABEL_26:
            clitics(v4, &v66, v70, v72, &v68);
            goto LABEL_27;
          case 9:
            *(v4 + 136) = 1;
            v38 = OUTLINED_FUNCTION_26_31();
            if (test_ptr(v38, v39, v40))
            {
              v33 = v26;
            }

            else
            {
              v33 = 1;
            }

            continue;
          case 10:
            v53 = v26;
            goto LABEL_34;
          case 11:
LABEL_27:
            ++v27;
            v71 = v67;
            while_iterate(v4, 1, 2);
            break;
          case 12:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v4);
LABEL_4:
  OUTLINED_FUNCTION_65_14();
}

void strip_s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v307 = *MEMORY[0x277D85DE8];
  v302 = 0;
  v300 = 0;
  v301 = 0;
  v299[0] = 0;
  v299[1] = 0;
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v296 = 0;
  v293 = 0;
  v294 = 0;
  v291 = 0;
  v292 = 0;
  v289 = 0;
  v290 = 0;
  v287 = 0;
  v288 = 0;
  v284 = 0;
  v285 = 0;
  v286 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(&v261, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v306, v8);
  if (setjmp(v306))
  {
    goto LABEL_5;
  }

  if (ventproc(v6, &v261, v305, v304, v303, v306))
  {
    goto LABEL_5;
  }

  v302 = 65532;
  push_ptr_init(v6, &v300);
  push_ptr_init(v6, v299);
  push_ptr_init(v6, &v297);
  push_ptr_init(v6, &v295);
  v9 = OUTLINED_FUNCTION_59_15();
  push_ptr_init(v9, v10);
  v11 = OUTLINED_FUNCTION_74_11();
  push_ptr_init(v11, v12);
  v13 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v15, v16);
  OUTLINED_FUNCTION_89_10();
  fence_44(v6, v17, &null_str_12);
  v18 = OUTLINED_FUNCTION_13_40();
  fence_44(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_91_9();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_24_31();
  if (lpta_loadp_setscan_l(v23, v24, v306))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_2_44();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_99_7();
  LODWORD(v25) = 0;
  while (2)
  {
    v26 = OUTLINED_FUNCTION_35_25();
    savescptr(v26, v27, &v300);
    OUTLINED_FUNCTION_44_19();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_2_44();
    v28 = test_string_s();
LABEL_8:
    if (v28)
    {
      v29 = v25;
    }

    else
    {
      v29 = 1;
    }

LABEL_11:
    v30 = *(v6 + 104);
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_38_21(v30);
      v25 = v32;
    }

    else
    {
      v31 = vback(v6, v29);
      v25 = 0;
    }

    switch(v31)
    {
      case 2:
        continue;
      case 3:
        bspop_boa(v6);
        goto LABEL_16;
      case 4:
LABEL_16:
        v36 = OUTLINED_FUNCTION_21_33();
        starttest(v36, v37);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        *(v6 + 136) = 1;
        v38 = OUTLINED_FUNCTION_26_31();
        setscan_nof_l(v38, v39, v40);
        v29 = v25;
        if (v43)
        {
          goto LABEL_11;
        }

        v44 = advance_tok(v6, v25, v41, v42);
        v29 = v25;
        if (v44)
        {
          goto LABEL_11;
        }

        v28 = advance_tok(v6, v25, v45, v46);
        goto LABEL_8;
      case 5:
        v58 = OUTLINED_FUNCTION_21_33();
        starttest(v58, v59);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_25;
        }

        v232 = OUTLINED_FUNCTION_55_16();
        v234 = testFldeq(v232, v233, 6, 1);
        v29 = v25;
        if (v234)
        {
          goto LABEL_11;
        }

        v57 = advance_tok(v6, v25, v235, v236);
        goto LABEL_93;
      case 6:
      case 64:
      case 74:
        bspop_boa(v6);
        goto LABEL_5;
      case 7:
      case 10:
      case 22:
      case 31:
      case 34:
      case 40:
      case 43:
      case 60:
      case 65:
      case 68:
        goto LABEL_103;
      case 8:
LABEL_25:
        v60 = OUTLINED_FUNCTION_16_39();
        starttest(v60, v61);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_26;
        }

        v207 = OUTLINED_FUNCTION_55_16();
        v209 = testFldeq(v207, v208, 6, 2);
        v29 = v25;
        if (v209)
        {
          goto LABEL_11;
        }

        v212 = advance_tok(v6, v25, v210, v211);
        v29 = v25;
        if (v212)
        {
          goto LABEL_11;
        }

        v213 = OUTLINED_FUNCTION_17_37();
        starttest_e(v213, v214);
        v215 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v215, v216, v217))
        {
          OUTLINED_FUNCTION_2_44();
          if (!test_string_s())
          {
LABEL_102:
            savescptr(v6, 11, &v300);
          }
        }

        goto LABEL_103;
      case 9:
LABEL_26:
        v62 = OUTLINED_FUNCTION_21_33();
        starttest(v62, v63);
        if (OUTLINED_FUNCTION_76_11())
        {
          goto LABEL_27;
        }

        v201 = OUTLINED_FUNCTION_55_16();
        v203 = testFldeq(v201, v202, 4, 2);
        v29 = v25;
        if (!v203)
        {
          v206 = advance_tok(v6, v25, v204, v205);
          v29 = v25;
          if (!v206)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_11;
      case 11:
        goto LABEL_102;
      case 12:
LABEL_27:
        v64 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v64, v65, v66);
        v67 = OUTLINED_FUNCTION_22_33();
        if (setd_lookup(v67, v68, 368))
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      case 13:
LABEL_28:
        v69 = OUTLINED_FUNCTION_21_33();
        starttest(v69, v70);
        v71 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v71, v72, v73))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      case 14:
LABEL_30:
        v74 = OUTLINED_FUNCTION_21_33();
        starttest(v74, v75);
        v76 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v76, v77, v78))
        {
          goto LABEL_31;
        }

        goto LABEL_43;
      case 15:
LABEL_38:
        v99 = OUTLINED_FUNCTION_75_11();
        savescptr(v99, v100, v101);
        OUTLINED_FUNCTION_2_44();
        v102 = test_string_s();
        v29 = v25;
        if (!v102)
        {
          goto LABEL_39;
        }

        goto LABEL_11;
      case 16:
LABEL_39:
        OUTLINED_FUNCTION_95_8(16, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295);
        v103 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v103, v104);
        goto LABEL_40;
      case 17:
        savescptr(v6, 17, &v297);
        goto LABEL_58;
      case 18:
LABEL_40:
        OUTLINED_FUNCTION_80_11(18, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299[0]);
        v105 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v105, v106);
        goto LABEL_58;
      case 19:
LABEL_58:
        OUTLINED_FUNCTION_2_44();
        v124 = test_string_s();
        v29 = v25;
        if (!v124)
        {
          goto LABEL_59;
        }

        goto LABEL_11;
      case 20:
      case 21:
LABEL_59:
        v125 = OUTLINED_FUNCTION_21_33();
        starttest(v125, v126);
        isolate_z_root(v6, &v302, v299, &v297, &v295);
        goto LABEL_103;
      case 23:
LABEL_31:
        v79 = OUTLINED_FUNCTION_21_33();
        starttest(v79, v80);
        v81 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v81, v82, v83))
        {
          goto LABEL_103;
        }

        v84 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v84, v85);
        goto LABEL_33;
      case 24:
LABEL_43:
        v107 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v107, v108);
        OUTLINED_FUNCTION_2_44();
        v109 = test_string_s();
        v29 = v25;
        if (!v109)
        {
          goto LABEL_63;
        }

        goto LABEL_11;
      case 25:
        goto LABEL_63;
      case 26:
        OUTLINED_FUNCTION_2_44();
        v127 = test_string_s();
        v29 = v25;
        if (v127)
        {
          goto LABEL_11;
        }

        goto LABEL_61;
      case 27:
LABEL_61:
        v128 = OUTLINED_FUNCTION_75_11();
        savescptr(v128, v129, v130);
        v131 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v131, v132);
        OUTLINED_FUNCTION_5_42();
        v133 = test_string_s();
        v29 = v25;
        if (!v133)
        {
          goto LABEL_62;
        }

        goto LABEL_11;
      case 28:
LABEL_62:
        savescptr(v6, 28, &v291);
LABEL_63:
        if (isolate_non_plural_root(v6, &v302, v6 + 1640, v6 + 1656))
        {
          goto LABEL_64;
        }

        goto LABEL_5;
      case 29:
LABEL_64:
        v134 = OUTLINED_FUNCTION_21_33();
        starttest(v134, v135);
        v136 = OUTLINED_FUNCTION_59_15();
        lpta_loadpn(v136, v137);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v6) || testneq(v6))
        {
          goto LABEL_103;
        }

        if (!isolate_es_root(v6, &v302, (v6 + 1640)))
        {
          goto LABEL_5;
        }

LABEL_67:
        v138 = OUTLINED_FUNCTION_21_33();
        starttest(v138, v139);
        v140 = OUTLINED_FUNCTION_74_11();
        lpta_loadpn(v140, v141);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v6) && !testneq(v6))
        {
          v142 = OUTLINED_FUNCTION_41_20();
          lpta_rpta_loadp(v142, v143, v144);
          v145 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v145, v146, 369))
          {
            OUTLINED_FUNCTION_58_15();
            OUTLINED_FUNCTION_14_40();
            if (!mark_s())
            {
              goto LABEL_83;
            }
          }
        }

LABEL_71:
        v147 = OUTLINED_FUNCTION_21_33();
        starttest(v147, v148);
        v149 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v149, v150, v151);
        v152 = OUTLINED_FUNCTION_22_33();
        if (!setd_lookup(v152, v153, 367))
        {
LABEL_83:
          v178 = OUTLINED_FUNCTION_75_11();
          copyvar(v178, v179, v180);
          goto LABEL_103;
        }

LABEL_72:
        v154 = OUTLINED_FUNCTION_21_33();
        starttest(v154, v155);
        v156 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v156, v157, v158);
        v159 = OUTLINED_FUNCTION_22_33();
        if (!setd_lookup(v159, v160, 366))
        {
          v198 = OUTLINED_FUNCTION_75_11();
          copyvar(v198, v199, v200);
          OUTLINED_FUNCTION_58_15();
          OUTLINED_FUNCTION_14_40();
          v57 = mark_s();
LABEL_93:
          v29 = v25;
          if (!v57)
          {
            goto LABEL_103;
          }

          goto LABEL_11;
        }

LABEL_73:
        v161 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v161, v162, v163) || (OUTLINED_FUNCTION_2_44(), test_string_s()))
        {
LABEL_75:
          v164 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v164, v165, v166))
          {
            OUTLINED_FUNCTION_2_44();
            if (!test_string_s())
            {
              v250 = OUTLINED_FUNCTION_21_33();
              starttest(v250, v251);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              OUTLINED_FUNCTION_41_20();
              v28 = one_eng_syllable();
              goto LABEL_8;
            }
          }

LABEL_77:
          v167 = OUTLINED_FUNCTION_21_33();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v169, v170, v171))
          {
            goto LABEL_103;
          }

          v172 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v172, v173);
          OUTLINED_FUNCTION_2_44();
          v174 = test_string_s();
          v29 = v25;
          if (!v174)
          {
LABEL_79:
            v175 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v175, v176);
LABEL_80:
            OUTLINED_FUNCTION_2_44();
LABEL_81:
            v177 = test_string_s();
            v29 = v25;
            if (!v177)
            {
LABEL_111:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_88_10();
LABEL_112:
              v242 = OUTLINED_FUNCTION_26_31();
              v28 = test_ptr(v242, v243, v244);
              goto LABEL_8;
            }
          }

          goto LABEL_11;
        }

LABEL_84:
        savescptr(v6, 39, &v289);
        v181 = OUTLINED_FUNCTION_21_33();
        starttest_l(v181, v182);
        v183 = OUTLINED_FUNCTION_69_12();
        if (!lpta_loadp_setscan_l(v183, v184, 1) && !advance_tok(v6, v185, v186, v187) && !advance_tok(v6, v188, v189, v190))
        {
          v252 = OUTLINED_FUNCTION_21_33();
          starttest(v252, v253);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_boa();
          v254 = OUTLINED_FUNCTION_41_20();
          lpta_rpta_loadp(v254, v255, v256);
          v257 = OUTLINED_FUNCTION_22_33();
          v259 = 373;
LABEL_114:
          v28 = setd_lookup(v257, v258, v259);
          goto LABEL_8;
        }

LABEL_103:
        move_i(v6, v6 + 5936, 1);
        v218 = OUTLINED_FUNCTION_39_21();
        lpta_rpta_loadp(v218, v219, v220);
        inserted = insert_2pt_s(v6, 2u, 1, &unk_280581184, 0);
        v29 = v25;
        if (inserted)
        {
          goto LABEL_11;
        }

        v222 = OUTLINED_FUNCTION_39_21();
        lpta_rpta_loadp(v222, v223, v224);
        OUTLINED_FUNCTION_70_12();
        settvar_s();
        v225 = OUTLINED_FUNCTION_55_16();
        npush_s(v225);
        WORD1(v284) = 1;
        v226 = OUTLINED_FUNCTION_70_12();
        npop(v226, v227);
        insert_2ptv();
        v29 = v25;
        if (v228)
        {
          goto LABEL_11;
        }

        *(v6 + 1664) = v301;
        v229 = OUTLINED_FUNCTION_21_33();
        starttest(v229, v230);
        v231 = OUTLINED_FUNCTION_21_33();
        bspush_ca(v231);
        v29 = v25;
        if (*(v6 + 4030) != 2)
        {
          goto LABEL_11;
        }

LABEL_117:
        OUTLINED_FUNCTION_9_41();
        if (eng_roots_dict_lookup())
        {
LABEL_118:
          if (*(v6 + 4030) == 2)
          {
            strip_er(v6, v32, v33, v34, v35);
          }
        }

LABEL_5:
        vretproc(v6);
        OUTLINED_FUNCTION_65_14();
        return;
      case 32:
        goto LABEL_67;
      case 35:
        goto LABEL_71;
      case 36:
        goto LABEL_72;
      case 37:
        goto LABEL_73;
      case 38:
        goto LABEL_75;
      case 39:
        goto LABEL_84;
      case 41:
        bspop_boa(v6);
        lpta_rpta_loadp(v6, &v289, &v300);
        v52 = OUTLINED_FUNCTION_2_44();
        v57 = insert_2pt_s(v52, v53, v54, v55, v56);
        goto LABEL_93;
      case 42:
        goto LABEL_77;
      case 44:
        bspop_boa(v6);
        v245 = OUTLINED_FUNCTION_21_33();
        starttest_l(v245, v246);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v247 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v247, v248, v249);
        v257 = OUTLINED_FUNCTION_22_33();
        v259 = 371;
        goto LABEL_114;
      case 45:
        bspop_boa(v6);
        goto LABEL_83;
      case 46:
      case 50:
        v122 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v122, v123);
        OUTLINED_FUNCTION_5_42();
        goto LABEL_81;
      case 47:
        goto LABEL_80;
      case 48:
      case 49:
        goto LABEL_111;
      case 51:
      case 52:
        goto LABEL_79;
      case 53:
        OUTLINED_FUNCTION_5_42();
        v118 = test_string_s();
        v29 = v25;
        if (v118)
        {
          goto LABEL_11;
        }

        goto LABEL_50;
      case 54:
LABEL_50:
        OUTLINED_FUNCTION_49_16(54, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v119 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v119, v120);
        goto LABEL_51;
      case 55:
        bspop_boa(v6);
        goto LABEL_111;
      case 56:
      case 71:
        v110 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v110, v111);
        goto LABEL_51;
      case 57:
      case 72:
        goto LABEL_53;
      case 58:
        goto LABEL_51;
      case 59:
        bspop_boa(v6);
        v47 = OUTLINED_FUNCTION_21_33();
        starttest_l(v47, v48);
        isolate_e_root(v6, &v302, &v287, &v293, &v300);
        if (v49)
        {
          goto LABEL_103;
        }

        v50 = OUTLINED_FUNCTION_21_33();
        starttest(v50, v51);
        if (HIWORD(v302) != 1)
        {
          goto LABEL_103;
        }

        goto LABEL_83;
      case 61:
LABEL_33:
        OUTLINED_FUNCTION_2_44();
        v86 = test_string_s();
        v29 = v25;
        if (!v86)
        {
          goto LABEL_34;
        }

        goto LABEL_11;
      case 62:
LABEL_34:
        v87 = OUTLINED_FUNCTION_21_33();
        starttest(v87, v88);
        v89 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v89, v90, v91) || test_string_s())
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        *(v6 + 136) = 1;
        goto LABEL_112;
      case 63:
LABEL_36:
        v92 = OUTLINED_FUNCTION_21_33();
        starttest(v92, v93);
        v94 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v94, v95, v96))
        {
          goto LABEL_109;
        }

        v97 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v97, v98);
        OUTLINED_FUNCTION_6_41();
        goto LABEL_55;
      case 66:
LABEL_109:
        v237 = OUTLINED_FUNCTION_21_33();
        starttest(v237, v238);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v239 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v239, v240, v241);
        v257 = OUTLINED_FUNCTION_22_33();
        v259 = 365;
        goto LABEL_114;
      case 67:
        OUTLINED_FUNCTION_2_44();
        v112 = test_string_s();
        v29 = v25;
        if (v112)
        {
          goto LABEL_11;
        }

        v113 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v113, v114);
        OUTLINED_FUNCTION_2_44();
        v115 = test_string_s();
        v29 = v25;
        if (v115)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v116 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v116, v117);
LABEL_51:
        OUTLINED_FUNCTION_2_44();
        v121 = test_string_s();
        goto LABEL_52;
      case 69:
        OUTLINED_FUNCTION_2_44();
LABEL_55:
        v57 = test_string_s();
        goto LABEL_93;
      case 70:
        bspop_boa(v6);
        goto LABEL_103;
      case 73:
        v191 = OUTLINED_FUNCTION_1_44();
        v195 = testFldeq(v191, v192, v193, v194);
        v29 = v25;
        if (v195)
        {
          goto LABEL_11;
        }

        v121 = advance_tok(v6, v25, v196, v197);
LABEL_52:
        v29 = v25;
        if (!v121)
        {
LABEL_53:
          v29 = 1;
        }

        goto LABEL_11;
      case 75:
        goto LABEL_118;
      case 76:
        v29 = v25;
        if (*(v6 + 5970) < 1)
        {
          goto LABEL_11;
        }

        goto LABEL_117;
      case 77:
        goto LABEL_117;
      default:
        goto LABEL_5;
    }
  }
}

void isolate_z_root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v97 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(v17, v15, v13, v11, v9, v7, v5, v19, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v90, v91, v93, v94);
  OUTLINED_FUNCTION_30_29();
  bzero(v96, v20);
  if (!setjmp(v96))
  {
    OUTLINED_FUNCTION_85_11();
    if (!ventproc(v18, v21, v22, v23, v24, v96))
    {
      v25 = OUTLINED_FUNCTION_59_15();
      get_parm(v25, v26, v16, -4);
      v27 = OUTLINED_FUNCTION_63_15();
      get_parm(v27, v28, v14, -6);
      v29 = OUTLINED_FUNCTION_53_16();
      get_parm(v29, v30, v12, -6);
      v31 = OUTLINED_FUNCTION_42_20();
      get_parm(v31, v32, v10, -6);
      v33 = OUTLINED_FUNCTION_33_26();
      get_parm(v33, v34, v8, -6);
      v35 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_86_10(v35, v36);
      v37 = 0;
      OUTLINED_FUNCTION_71_12(v38, v39, &null_str_12);
      v95 = 0;
      v40 = OUTLINED_FUNCTION_63_15();
      lpta_loadpn(v40, v41);
      OUTLINED_FUNCTION_67_14();
      if (!compare_ptas(v18))
      {
        if (!testneq(v18))
        {
          v52 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v52, v53, v54) || (OUTLINED_FUNCTION_5_42(), test_string_s()))
          {
            v37 = 0;
LABEL_14:
            v55 = OUTLINED_FUNCTION_41_20();
            lpta_rpta_loadp(v55, v56, v57);
            v58 = OUTLINED_FUNCTION_22_33();
            if (setd_lookup(v58, v59, 378))
            {
LABEL_15:
              v89 = v92;
              v60 = OUTLINED_FUNCTION_21_33();
              starttest(v60, v61);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              v42 = v37;
              goto LABEL_16;
            }
          }

LABEL_25:
          v16[1] = v95;
          *(v6 + 8) = v89;
          goto LABEL_3;
        }

        v37 = 0;
      }

      while (2)
      {
        v42 = v37;
        v43 = OUTLINED_FUNCTION_53_16();
        lpta_loadpn(v43, v44);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v18) && !testneq(v18))
        {
          v45 = OUTLINED_FUNCTION_44_19();
          lpta_rpta_loadp(v45, v46, v47);
          v48 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v48, v49, 379))
          {
            v89 = v92;
            v50 = OUTLINED_FUNCTION_16_39();
            starttest(v50, v51);
            OUTLINED_FUNCTION_17_37();
            bspush_ca_boa();
LABEL_16:
            OUTLINED_FUNCTION_46_18();
            if (one_eng_syllable())
            {
              v37 = v42;
            }

            else
            {
              v37 = 1;
            }

LABEL_19:
            v62 = *(v18 + 104);
            if (v62)
            {
              v63 = OUTLINED_FUNCTION_38_21(v62);
            }

            else
            {
              v63 = OUTLINED_FUNCTION_106_7();
              v37 = 0;
            }

            switch(v63)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_14;
              case 3:
              case 7:
              case 8:
                goto LABEL_25;
              case 4:
                goto LABEL_15;
              case 5:
              case 9:
                goto LABEL_24;
              case 6:
              case 10:
                bspop_boa(v18);
                OUTLINED_FUNCTION_58_15();
                OUTLINED_FUNCTION_14_40();
                if (mark_s())
                {
                  goto LABEL_19;
                }

LABEL_24:
                v95 = 1;
                goto LABEL_25;
              default:
                goto LABEL_3;
            }
          }
        }

        goto LABEL_25;
      }
    }
  }

LABEL_3:
  vretproc(v18);
  OUTLINED_FUNCTION_101_7();
  OUTLINED_FUNCTION_65_14();
}

uint64_t isolate_non_plural_root(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  OUTLINED_FUNCTION_81_11();
  v105 = *MEMORY[0x277D85DE8];
  LODWORD(v100) = 0;
  OUTLINED_FUNCTION_8_41(v7, v8, v9, v10, v11, v12, v13, v14, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  OUTLINED_FUNCTION_30_29();
  bzero(v104, v15);
  if (setjmp(v104) || (OUTLINED_FUNCTION_19_36(), OUTLINED_FUNCTION_107_7(v16, v17, v18, v19, v20, v21, v22, v23, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v100, v101, v102, v103)) || (v26 = OUTLINED_FUNCTION_36_23(), get_parm(v26, v27, v28, -4), v29 = OUTLINED_FUNCTION_34_26(), get_parm(v29, v30, v31, -6), v32 = OUTLINED_FUNCTION_44_19(), OUTLINED_FUNCTION_92_9(v32, v33), OUTLINED_FUNCTION_71_12(v34, v35, &null_str_12), v36 = OUTLINED_FUNCTION_34_26(), lpta_rpta_loadp(v36, v37, v38), v39 = OUTLINED_FUNCTION_25_31(), setd_lookup(v39, v40, 367)) && ((v41 = OUTLINED_FUNCTION_46_18(), lpta_rpta_loadp(v41, v42, v43), v44 = OUTLINED_FUNCTION_22_33(), setd_lookup(v44, v45, 366)) || (OUTLINED_FUNCTION_58_15(), OUTLINED_FUNCTION_14_40(), mark_s())))
  {
    v24 = 94;
  }

  else
  {
    *(v5 + 2) = a4;
    v24 = 0;
  }

  vretproc(v4);
  return v24;
}

uint64_t isolate_es_root(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_81_11();
  v80 = *MEMORY[0x277D85DE8];
  v78 = 0;
  OUTLINED_FUNCTION_7_41(v6, v7, v8, v9, v10, v11, v12, v13, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1], v76, v77);
  OUTLINED_FUNCTION_30_29();
  bzero(v79, v14);
  if (!setjmp(v79))
  {
    OUTLINED_FUNCTION_37_22();
    if (!ventproc(v3, v15, v16, v17, v18, v79))
    {
      v19 = OUTLINED_FUNCTION_36_23();
      get_parm(v19, v20, v21, -4);
      v22 = OUTLINED_FUNCTION_42_20();
      get_parm(v22, v23, a3, -6);
      v24 = OUTLINED_FUNCTION_34_26();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_32_27();
      OUTLINED_FUNCTION_92_9(v27, v28);
      OUTLINED_FUNCTION_71_12(v29, v30, &null_str_12);
      HIWORD(v78) = 0;
      OUTLINED_FUNCTION_93_8();
      v31 = OUTLINED_FUNCTION_40_20();
      if (lpta_loadp_setscan_l(v31, v32, 1))
      {
LABEL_4:
        lpta_rpta_loadp(v3, &v76, v75);
        v33 = OUTLINED_FUNCTION_22_33();
        if (setd_lookup(v33, v34, 370) || (OUTLINED_FUNCTION_58_15(), OUTLINED_FUNCTION_14_40(), mark_s()))
        {
LABEL_6:
          v35 = OUTLINED_FUNCTION_46_18();
          lpta_rpta_loadp(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_22_33();
          if (setd_lookup(v38, v39, 369))
          {
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_58_15();
          OUTLINED_FUNCTION_14_40();
          if (mark_s())
          {
            goto LABEL_8;
          }
        }

LABEL_17:
        HIWORD(v78) = 1;
        *(v4 + 2) = 1;
        goto LABEL_8;
      }

      while (2)
      {
        v41 = OUTLINED_FUNCTION_44_19();
        bspush_ca_scan(v41, v42);
        *(v3 + 136) = 1;
        *(v3 + 112) = v77;
        *(v3 + 128) = 0;
        if (!test_ptr(v3, v43, v44))
        {
          goto LABEL_17;
        }

LABEL_10:
        v45 = *(v3 + 104);
        if (v45)
        {
          *(v3 + 104) = 0;
          v46 = v45;
        }

        else
        {
          v46 = OUTLINED_FUNCTION_96_8();
        }

        switch(v46)
        {
          case 1:
            goto LABEL_4;
          case 2:
            continue;
          case 3:
            if (!testFldeq(v3, 1u, 4, 2) && !advance_tok(v3, v47, v48, v49))
            {
              continue;
            }

            goto LABEL_10;
          case 4:
            goto LABEL_17;
          case 5:
            goto LABEL_6;
          default:
            goto LABEL_8;
        }
      }
    }
  }

LABEL_8:
  vretproc(v3);
  return OUTLINED_FUNCTION_100_7();
}

void isolate_e_root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v8 = v7;
  OUTLINED_FUNCTION_81_11();
  v89 = *MEMORY[0x277D85DE8];
  v87 = 0;
  OUTLINED_FUNCTION_7_41(v9, v10, v11, v12, v13, v14, v15, v16, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1], v86[2], v86[3]);
  OUTLINED_FUNCTION_30_29();
  bzero(v88, v17);
  if (setjmp(v88))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_22();
  if (ventproc(v5, v18, v19, v20, v21, v88))
  {
    goto LABEL_3;
  }

  v22 = OUTLINED_FUNCTION_36_23();
  get_parm(v22, v23, v24, -4);
  v25 = OUTLINED_FUNCTION_42_20();
  get_parm(v25, v26, v8, -6);
  v27 = OUTLINED_FUNCTION_34_26();
  get_parm(v27, v28, v29, -6);
  v30 = OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_92_9(v30, v31);
  OUTLINED_FUNCTION_71_12(v32, v33, &null_str_12);
  HIWORD(v87) = 0;
  v34 = OUTLINED_FUNCTION_41_20();
  lpta_rpta_loadp(v34, v35, v86);
  v36 = OUTLINED_FUNCTION_22_33();
  if (!setd_lookup(v36, v37, 372))
  {
LABEL_22:
    *(v6 + 2) = HIWORD(v87);
    goto LABEL_3;
  }

  v38 = 0;
  while (2)
  {
    v39 = v38;
    v40 = OUTLINED_FUNCTION_44_19();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v42, v43, 1) || (OUTLINED_FUNCTION_22_33(), test_string_s()))
    {
LABEL_18:
      v56 = OUTLINED_FUNCTION_42_20();
      lpta_loadpn(v56, v57);
      OUTLINED_FUNCTION_67_14();
      if (compare_ptas(v5) || testneq(v5) || (v58 = OUTLINED_FUNCTION_41_20(), has_lex_prefix(v58, v59), v60))
      {
LABEL_21:
        HIWORD(v87) = 1;
      }

      goto LABEL_22;
    }

    v44 = OUTLINED_FUNCTION_22_33();
    v46 = testFldeq(v44, v45, 4, 2);
    if (v46 || (v46 = advance_tok(v5, v47, v48, v49)))
    {
      v50 = v39;
    }

    else
    {
      bspush_ca_boa();
      v52 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v52, v53, v86);
      v54 = OUTLINED_FUNCTION_22_33();
      v46 = setd_lookup(v54, v55, 374);
      if (v46)
      {
        v50 = v39;
      }

      else
      {
        v50 = 1;
      }
    }

    if (v5[13])
    {
      v38 = OUTLINED_FUNCTION_84_11(v46, v50);
    }

    else
    {
      v51 = vback(v5, v50);
      v38 = 0;
    }

    switch(v51)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_22;
      case 3:
        goto LABEL_18;
      case 4:
        bspop_boa(v5);
        goto LABEL_22;
      case 5:
        goto LABEL_21;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_100_7();
  OUTLINED_FUNCTION_65_14();
}

void strip_er(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v62 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v57[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v56, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v61, v8);
  if (!setjmp(v61) && !ventproc(v6, v56, v60, v59, v58, v61))
  {
    v9 = OUTLINED_FUNCTION_98_8();
    push_ptr_init(v9, v10);
    fence_44(v6, 0, &null_str_12);
    v11 = OUTLINED_FUNCTION_22_33();
    fence_44(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v14, v15, v16))
    {
      OUTLINED_FUNCTION_13_40();
      if (!test_string_s())
      {
        v17 = 0;
        while (2)
        {
          savescptr(v6, 2, v57);
LABEL_8:
          starttest(v6, 4);
          v18 = OUTLINED_FUNCTION_64_14();
          if (lpta_loadp_setscan_l(v18, v19, v61))
          {
LABEL_9:
            *(v6 + 5958) = v61;
            *(v6 + 5962) = v61;
            *(v6 + 5966) = v61;
            *(v6 + 5978) = v61;
            v20 = OUTLINED_FUNCTION_77_11();
            starttest(v20, v21);
            OUTLINED_FUNCTION_78_11();
            bspush_ca_boa();
            if (strip_suffix(v6))
            {
              v17 = v17;
            }

            else
            {
              v17 = 1;
            }
          }

          else
          {
            bspush_ca_scan(v6, 5);
            OUTLINED_FUNCTION_28_29();
            if (!test_string_s())
            {
              v22 = OUTLINED_FUNCTION_28_29();
              if (!testFldeq(v22, v23, 4, v61) && !advance_tok(v6, v24, v25, v26))
              {
                break;
              }
            }
          }

          v27 = v17;
LABEL_16:
          v17 = v27;
          v28 = *(v6 + 104);
          if (v28)
          {
            v29 = OUTLINED_FUNCTION_38_21(v28);
          }

          else
          {
            v29 = OUTLINED_FUNCTION_106_7();
            v17 = 0;
          }

          v36 = 0;
          switch(v29)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_8;
            case 4:
              goto LABEL_9;
            case 5:
              bspush_ca_scan(v6, 7);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_35;
            case 7:
              v43 = OUTLINED_FUNCTION_90_9();
              bspush_ca_scan(v43, v44);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_29;
            case 8:
              v37 = OUTLINED_FUNCTION_40_20();
              bspush_ca_scan(v37, v38);
              OUTLINED_FUNCTION_12_40();
LABEL_29:
              v45 = test_string_s();
              goto LABEL_30;
            case 9:
              v46 = OUTLINED_FUNCTION_63_15();
              bspush_ca_scan(v46, v47);
              OUTLINED_FUNCTION_28_29();
              goto LABEL_33;
            case 10:
              OUTLINED_FUNCTION_28_29();
LABEL_33:
              v48 = test_string_s();
              v27 = v17;
              if (!v48)
              {
                goto LABEL_34;
              }

              goto LABEL_16;
            case 11:
LABEL_34:
              OUTLINED_FUNCTION_12_40();
LABEL_35:
              v49 = test_string_s();
              v27 = v17;
              if (!v49)
              {
                v50 = OUTLINED_FUNCTION_28_29();
                v52 = testFldeq(v50, v51, 4, 2);
                v27 = v17;
                if (!v52)
                {
                  v45 = advance_tok(v6, v53, v17, v54);
LABEL_30:
                  v27 = v17;
                  if (!v45)
                  {
                    goto LABEL_5;
                  }
                }
              }

              goto LABEL_16;
            case 12:
              OUTLINED_FUNCTION_68_12();
              if (!v39)
              {
                goto LABEL_26;
              }

              goto LABEL_5;
            case 13:
              bspop_boa(v6);
              goto LABEL_5;
            case 14:
LABEL_26:
              v40 = OUTLINED_FUNCTION_69_12();
              starttest(v40, v41);
              v42 = OUTLINED_FUNCTION_70_12();
              bspush_ca(v42);
              v27 = v17;
              if (*(v6 + 5970) >= 2)
              {
                goto LABEL_5;
              }

              goto LABEL_16;
            case 16:
              if (split_final_compound(v6))
              {
                goto LABEL_40;
              }

              goto LABEL_5;
            case 17:
              v27 = v17;
              if (*(v6 + 4030) != 2)
              {
                goto LABEL_16;
              }

              goto LABEL_5;
            case 19:
LABEL_40:
              strip_ly_suffix(v6, v36, v30, v31, v32);
              if (v55)
              {
                goto LABEL_41;
              }

              goto LABEL_5;
            case 20:
LABEL_41:
              if (strip_inner_adj_suffix(v6, v36, v30, v31, v32, v33, v34, v35))
              {
                goto LABEL_42;
              }

              goto LABEL_5;
            case 21:
LABEL_42:
              if (strip_nounadj_suffix(v6, v36, v30, v31, v32, v33, v34, v35))
              {
                goto LABEL_43;
              }

              goto LABEL_5;
            case 22:
LABEL_43:
              strip_ize(v6, v36, v30, v31, v32);
              break;
            default:
              goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(v6);
  OUTLINED_FUNCTION_101_7();
  OUTLINED_FUNCTION_65_14();
}

void strip_ambig_suffix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_31_29();
  bzero(v92, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v105, v8);
  v9 = setjmp(v105);
  if (v9)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_57_15(v9, v92, v10, v11, v12, v13, v14, v15, v82, v83, v84, v85, v86, v87, v88, v89, v90, v92[0], v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7], v92[8], v92[9], v92[10], v92[11], v92[12], v92[13], v92[14], v92[15], v92[16], v92[17], v92[18], v92[19], v92[20], v92[21], v92[22], v93[0], v93[1], v94[0], v94[1], v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0]))
  {
    goto LABEL_4;
  }

  v16 = OUTLINED_FUNCTION_73_11();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_72_11();
  push_ptr_init(v18, v19);
  fence_44(v6, 0, &null_str_12);
  v20 = OUTLINED_FUNCTION_13_40();
  fence_44(v20, v21, v22);
  if (*(v6 + 4038) == 1)
  {
    goto LABEL_4;
  }

  v23 = 0;
  OUTLINED_FUNCTION_47_17();
  v91 = v24;
  while (2)
  {
    starttest(v6, v24);
    v25 = OUTLINED_FUNCTION_24_31();
    if (lpta_loadp_setscan_l(v25, v26, v105) || (OUTLINED_FUNCTION_12_40(), test_string_s()))
    {
LABEL_8:
      v27 = OUTLINED_FUNCTION_24_31();
      if (lpta_loadp_setscan_l(v27, v28, v105) || (OUTLINED_FUNCTION_28_29(), v29 = test_string_s(), v30 = v23, v29))
      {
LABEL_10:
        v31 = OUTLINED_FUNCTION_24_31();
        if (lpta_loadp_setscan_l(v31, v32, v105))
        {
          break;
        }

        OUTLINED_FUNCTION_28_29();
        if (test_string_s())
        {
          break;
        }

LABEL_12:
        v33 = OUTLINED_FUNCTION_77_11();
        savescptr(v33, v34, v94);
        v35 = OUTLINED_FUNCTION_78_11();
        starttest_l(v35, v36);
        OUTLINED_FUNCTION_64_14();
        bspush_ca_boa();
        v37 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v37, v38, v94);
        v39 = OUTLINED_FUNCTION_28_29();
        v41 = 376;
      }

      else
      {
LABEL_36:
        LODWORD(v23) = v30;
        savescptr(v6, 13, v94);
        starttest_l(v6, 14);
        bspush_ca_boa();
        v76 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v76, v77, v94);
        v39 = OUTLINED_FUNCTION_28_29();
        v41 = 377;
      }

      v42 = setd_lookup(v39, v40, v41);
      goto LABEL_22;
    }

    bspush_ca_scan(v6, 3);
    OUTLINED_FUNCTION_12_40();
LABEL_15:
    v43 = test_string_s();
    v44 = v23;
    if (!v43)
    {
LABEL_16:
      v23 = v44;
      OUTLINED_FUNCTION_12_40();
      v45 = test_string_s();
      v46 = v23;
      if (v45)
      {
        goto LABEL_25;
      }

LABEL_17:
      v23 = v46;
      savescptr(v6, 5, v93);
LABEL_18:
      v47 = OUTLINED_FUNCTION_70_12();
      savescptr(v47, v48, v94);
      v49 = OUTLINED_FUNCTION_69_12();
      starttest(v49, v50);
      OUTLINED_FUNCTION_63_15();
      bspush_ca_boa();
      v51 = OUTLINED_FUNCTION_40_20();
      if (!lpta_loadp_setscan_l(v51, v52, v105) && !advance_tok(v6, v53, v54, v55) && !advance_tok(v6, v56, v57, v58))
      {
        v42 = advance_tok(v6, v59, v60, v61);
LABEL_22:
        if (v42)
        {
          v23 = v23;
        }

        else
        {
          v23 = 1;
        }
      }
    }

LABEL_25:
    v62 = *(v6 + 104);
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_38_21(v62);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_106_7();
      v23 = 0;
    }

    v44 = v23;
    switch(v63)
    {
      case 1:
        v24 = v91;
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_12_40();
        goto LABEL_15;
      case 4:
        goto LABEL_16;
      case 5:
        v46 = v23;
        goto LABEL_17;
      case 6:
        goto LABEL_18;
      case 7:
        v67 = OUTLINED_FUNCTION_40_20();
        if (lpta_loadp_setscan_l(v67, v68, v105))
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_28_29();
        if (test_string_s())
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      case 8:
      case 22:
        bspop_boa(v6);
        goto LABEL_4;
      case 9:
      case 11:
        goto LABEL_33;
      case 10:
LABEL_32:
        v69 = OUTLINED_FUNCTION_41_20();
        lpta_rpta_loadp(v69, v70, v94);
        v71 = OUTLINED_FUNCTION_28_29();
        if (setd_lookup(v71, v72, 375))
        {
          goto LABEL_33;
        }

        goto LABEL_4;
      case 12:
        goto LABEL_10;
      case 13:
        v30 = v23;
        goto LABEL_36;
      case 14:
      case 16:
      case 19:
        *(v6 + 5990) = v105;
LABEL_33:
        v73 = OUTLINED_FUNCTION_51_16();
        starttest(v73, v74);
        OUTLINED_FUNCTION_90_9();
        bspush_ca_boa();
        v75 = OUTLINED_FUNCTION_40_20();
        v42 = strip_suffix(v75);
        goto LABEL_22;
      case 15:
      case 20:
        bspop_boa(v6);
        goto LABEL_4;
      case 18:
        goto LABEL_12;
      case 21:
        v78 = OUTLINED_FUNCTION_72_11();
        lpta_loadpn(v78, v79);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v6) && !testeq(v6))
        {
          *(v6 + 5950) = 0;
        }

        goto LABEL_44;
      case 23:
LABEL_44:
        if (!*(v6 + 5946) && strip_s(v6, v44, v64, v65, v66))
        {
          goto LABEL_46;
        }

        goto LABEL_4;
      case 25:
LABEL_46:
        v80 = OUTLINED_FUNCTION_72_11();
        lpta_loadpn(v80, v81);
        OUTLINED_FUNCTION_67_14();
        if (!compare_ptas(v6) && !testneq(v6))
        {
          split_final_compound(v6);
        }

        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

uint64_t strip_suffix(uint64_t a1)
{
  OUTLINED_FUNCTION_81_11();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v2, v3, v4, v5, v6, v7, v8, v9, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  OUTLINED_FUNCTION_30_29();
  bzero(v87, v10);
  v11 = setjmp(v87);
  if (v11 || OUTLINED_FUNCTION_15_39(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, SHIDWORD(v83), v84, SWORD2(v84), SHIWORD(v84), v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v86, v87[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_86_10(v20, v21);
  fence_44(v1, 0, &null_str_12);
  v22 = OUTLINED_FUNCTION_21_33();
  starttest(v22, v23);
  OUTLINED_FUNCTION_21_33();
  bspush_ca_boa();
  v24 = OUTLINED_FUNCTION_51_16();
  potential_suffix(v24, v25, v26, v27, v28);
  v30 = v1[13];
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_38_21(v30);
  }

  else
  {
    v31 = vback(v1, v29 == 0);
  }

  switch(v31)
  {
    case 3:
LABEL_12:
      vretproc(v1);
      return 0;
    case 2:
      bspop_boa(v1);
      break;
    case 1:
      v32 = OUTLINED_FUNCTION_32_27();
      insert_suffix(v32);
      goto LABEL_12;
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

uint64_t strip_suffixes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v129 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v100);
  OUTLINED_FUNCTION_30_29();
  bzero(v128, v9);
  v10 = setjmp(v128);
  if (v10 || (v18 = OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, SHIDWORD(v124), v125, SWORD2(v125), SHIWORD(v125), v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v127, v128[0]), v18))
  {
    v20 = 94;
  }

  else
  {
    v20 = 0;
    OUTLINED_FUNCTION_71_12(v18, v19, &null_str_12);
    if (strip_ing(a1, v22, v23, v24, v25, v26, v27, v28))
    {
      strip_ed(a1, v29, v30, v31, v32);
      if (v37)
      {
        strip_ly_suffix(a1, v33, v34, v35, v36);
        if (v45)
        {
          if (strip_outer_suffix(a1, v38, v39, v40, v41, v42, v43, v44))
          {
            if (strip_pname_suffixes(a1, v46, v47, v48, v49, v50, v51, v52))
            {
              strip_noun_verb_suffix(a1, v53, v54, v55, v56);
              if (v61)
              {
                strip_er(a1, v57, v58, v59, v60);
                if (v69)
                {
                  if (strip_inner_adj_suffix(a1, v62, v63, v64, v65, v66, v67, v68))
                  {
                    if (strip_medial_noun_suffix(a1, v70, v71, v72, v73, v74, v75, v76))
                    {
                      if (strip_inner_noun_suffix(a1, v77, v78, v79, v80, v81, v82, v83))
                      {
                        strip_ation(a1, v84, v85, v86, v87);
                        if (v95)
                        {
                          if (strip_nounadj_suffix(a1, v88, v89, v90, v91, v92, v93, v94))
                          {
                            strip_ize(a1, v96, v97, v98, v99);
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
      }

      v20 = 0;
    }
  }

  vretproc(a1);
  return v20;
}

uint64_t strip_ing(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v87 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3]);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v11, v12);
  v13 = setjmp(v8);
  if (v13 || OUTLINED_FUNCTION_104_7(v13, &v58, v86, v85, v84))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_32_27();
  v21 = push_ptr_init(v19, v20);
  v22 = 0;
  OUTLINED_FUNCTION_71_12(v21, v23, &null_str_12);
  v24 = OUTLINED_FUNCTION_25_31();
  fence_44(v24, v25, v26);
  OUTLINED_FUNCTION_93_8();
  v27 = OUTLINED_FUNCTION_24_31();
  v29 = lpta_loadp_setscan_l(v27, v28, v9);
  v30 = 0;
  if (v29)
  {
LABEL_6:
    v22 = v30;
    v31 = OUTLINED_FUNCTION_21_33();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v33, v34, v35))
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

LABEL_15:
    OUTLINED_FUNCTION_43_19(6, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
LABEL_16:
    OUTLINED_FUNCTION_48_16(7, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0]);
    OUTLINED_FUNCTION_5_42();
    v30 = v22;
    if (!test_string_s())
    {
LABEL_17:
      v22 = v30;
      OUTLINED_FUNCTION_49_16(8, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2]);
      v40 = OUTLINED_FUNCTION_23_33();
      if (!lpta_loadp_setscan_r(v40, v41, v42))
      {
LABEL_18:
        v22 = v30;
        v43 = OUTLINED_FUNCTION_16_39();
        if (test_synch(v43, v44, 1, v45))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_20;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_47_17();
    savescptr(a1, v36, v83);
    OUTLINED_FUNCTION_6_41();
    v30 = v22;
    if (!test_string_s())
    {
LABEL_10:
      OUTLINED_FUNCTION_49_16(3, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2]);
LABEL_11:
      OUTLINED_FUNCTION_20_34();
      v37 = OUTLINED_FUNCTION_17_37();
      starttest_l(v37, v38);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v39 = OUTLINED_FUNCTION_42_20();
      if (strip_suffix(v39))
      {
        v22 = v30;
      }

      else
      {
        v22 = 1;
      }
    }
  }

LABEL_20:
  v30 = v22;
  while (2)
  {
    v46 = *(a1 + 104);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_38_21(v46);
      v30 = v48;
    }

    else
    {
      v47 = vback(a1, v30);
      v30 = 0;
    }

    switch(v47)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v22 = v30;
        goto LABEL_9;
      case 3:
        goto LABEL_10;
      case 4:
        goto LABEL_11;
      case 6:
        v22 = v30;
        goto LABEL_15;
      case 7:
        v22 = v30;
        goto LABEL_16;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_18;
      case 10:
        v49 = OUTLINED_FUNCTION_24_31();
        lpta_rpta_loadp(v49, v50, v83);
        if (mark_s())
        {
          continue;
        }

        *(a1 + 5978) = 1;
        post_inflection_strip(a1, v51, v52, v53, v54, v55, v56, v57);
        break;
      case 11:
        bspop_boa(a1);
        break;
      case 12:
        goto LABEL_28;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_28:
  vretproc(a1);
  return 0;
}

void strip_ed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v53 = *MEMORY[0x277D85DE8];
  v48[0] = 0;
  v48[1] = 0;
  v47[0] = 0;
  v47[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v46, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v52, v8);
  if (!setjmp(v52) && !ventproc(v6, v46, v51, v50, v49, v52))
  {
    v9 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v9, v10);
    push_ptr_init(v6, v47);
    fence_44(v6, 0, &null_str_12);
    v11 = OUTLINED_FUNCTION_13_40();
    fence_44(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_91_9();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_24_31();
    if (!lpta_loadp_setscan_l(v16, v17, v52))
    {
      v18 = 0;
      OUTLINED_FUNCTION_97_8();
      while (2)
      {
        v19 = OUTLINED_FUNCTION_50_16();
        savescptr(v19, v20, v21);
        v22 = OUTLINED_FUNCTION_77_11();
        bspush_ca_scan(v22, v23);
        OUTLINED_FUNCTION_28_29();
        v24 = test_string_s();
        v25 = v18;
        v26 = v18;
        if (!v24)
        {
LABEL_7:
          v27 = v25;
          OUTLINED_FUNCTION_12_40();
          v28 = test_string_s();
          LODWORD(v18) = v27;
          v26 = v27;
          if (!v28)
          {
LABEL_8:
            v29 = OUTLINED_FUNCTION_64_14();
            savescptr(v29, v30, v48);
LABEL_9:
            *(v6 + 5958) = v52;
            *(v6 + 5962) = v52;
            *(v6 + 5966) = v52;
            v31 = OUTLINED_FUNCTION_78_11();
            starttest(v31, v32);
            OUTLINED_FUNCTION_102_7();
            bspush_ca_boa();
            v33 = OUTLINED_FUNCTION_63_15();
            if (strip_suffix(v33))
            {
              v26 = v18;
            }

            else
            {
              v26 = 1;
            }
          }
        }

        v18 = v26;
LABEL_13:
        v34 = *(v6 + 104);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_38_21(v34);
        }

        else
        {
          v35 = vback(v6, v18);
          v18 = 0;
        }

        v25 = v18;
        switch(v35)
        {
          case 2:
            continue;
          case 3:
            OUTLINED_FUNCTION_12_40();
            v36 = test_string_s();
            v25 = v18;
            if (!v36)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          case 4:
            goto LABEL_7;
          case 5:
            goto LABEL_8;
          case 6:
            goto LABEL_9;
          case 7:
            v37 = OUTLINED_FUNCTION_24_31();
            lpta_rpta_loadp(v37, v38, v47);
            if (mark_s())
            {
              goto LABEL_13;
            }

            post_inflection_strip(v6, v39, v40, v41, v42, v43, v44, v45);
            break;
          case 8:
            bspop_boa(v6);
            break;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

void strip_ly_suffix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v114 = *MEMORY[0x277D85DE8];
  v108 = 0;
  v109 = 0;
  v107[0] = 0;
  v107[1] = 0;
  v106[0] = 0;
  v106[1] = 0;
  v105[0] = 0;
  v105[1] = 0;
  v104[0] = 0;
  v104[1] = 0;
  v103[0] = 0;
  v103[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v102, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v113, v8);
  if (setjmp(v113))
  {
    goto LABEL_5;
  }

  if (ventproc(v6, v102, v112, v111, v110, v113))
  {
    goto LABEL_5;
  }

  push_ptr_init(v6, &v108);
  push_ptr_init(v6, v107);
  push_ptr_init(v6, v106);
  push_ptr_init(v6, v105);
  push_ptr_init(v6, v104);
  push_ptr_init(v6, v103);
  fence_44(v6, 0, &null_str_12);
  v9 = OUTLINED_FUNCTION_22_33();
  fence_44(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_4_42();
  if (lpta_loadp_setscan_l(v12, v13, v14))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_13_40();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  LODWORD(v15) = 0;
  OUTLINED_FUNCTION_47_17();
  v16 = &unk_280581200;
  while (2)
  {
    v17 = OUTLINED_FUNCTION_50_16();
    savescptr(v17, v18, v19);
LABEL_8:
    v20 = v15;
    if (*(v6 + 5970) >= 1)
    {
      goto LABEL_32;
    }

LABEL_9:
    LODWORD(v15) = v20;
    v21 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v21, v22, v113) || (OUTLINED_FUNCTION_28_29(), v23 = test_string_s(), v24 = v15, v23))
    {
LABEL_11:
      starttest(v6, 15);
      v25 = OUTLINED_FUNCTION_40_20();
      if (lpta_loadp_setscan_l(v25, v26, v113) || (OUTLINED_FUNCTION_12_40(), test_string_s()))
      {
LABEL_13:
        v27 = OUTLINED_FUNCTION_40_20();
        if (!lpta_loadp_setscan_l(v27, v28, v113))
        {
          OUTLINED_FUNCTION_28_29();
          v29 = test_string_s();
          v30 = v15;
          if (!v29)
          {
LABEL_15:
            LODWORD(v15) = v30;
            savescptr(v6, 26, &v108);
LABEL_16:
            v31 = OUTLINED_FUNCTION_77_11();
            savescptr(v31, v32, v103);
            *(v6 + 5958) = v113;
            *(v6 + 5962) = v113;
          }
        }

LABEL_23:
        *(v6 + 5966) = v113;
        goto LABEL_32;
      }

      bspush_ca_scan(v6, 16);
LABEL_18:
      savescptr(v6, 17, v105);
      OUTLINED_FUNCTION_12_40();
      v33 = test_string_s();
      LODWORD(v34) = v15;
      if (!v33)
      {
LABEL_19:
        LODWORD(v15) = v34;
        savescptr(v6, 18, v107);
        starttest(v6, 19);
        v35 = OUTLINED_FUNCTION_64_14();
        v37 = lpta_loadp_setscan_l(v35, v36, v113);
        v38 = v15;
        if (!v37)
        {
LABEL_51:
          LODWORD(v15) = v38;
          bspush_ca_scan(v6, 20);
          bspush_ca_scan(v6, 21);
          bspush_ca_scan_boa();
          v91 = OUTLINED_FUNCTION_28_29();
          v68 = testFldeq(v91, v92, 4, v113);
LABEL_33:
          if (!v68)
          {
            LODWORD(v15) = 1;
          }

          goto LABEL_35;
        }

LABEL_32:
        v65 = OUTLINED_FUNCTION_51_16();
        starttest(v65, v66);
        OUTLINED_FUNCTION_70_12();
        bspush_ca_boa();
        v67 = OUTLINED_FUNCTION_40_20();
        v68 = strip_suffix(v67);
        goto LABEL_33;
      }
    }

    else
    {
LABEL_21:
      v39 = v16;
      v40 = v24;
      savescptr(v6, 7, v107);
      starttest(v6, 8);
      v41 = OUTLINED_FUNCTION_63_15();
      v43 = lpta_loadp_setscan_l(v41, v42, v113);
      LODWORD(v15) = v40;
      v44 = v40;
      v16 = v39;
      if (v43)
      {
LABEL_22:
        LODWORD(v15) = v44;
        v45 = OUTLINED_FUNCTION_78_11();
        starttest(v45, v46);
        if (!lpta_loadp_setscan_l(v6, v107, v113))
        {
          v47 = OUTLINED_FUNCTION_28_29();
          if (!testFldeq(v47, v48, 4, 2))
          {
            v52 = advance_tok(v6, v49, v50, v51);
            LODWORD(v53) = v15;
            if (!v52)
            {
LABEL_26:
              LODWORD(v15) = v53;
              v54 = OUTLINED_FUNCTION_102_7();
              bspush_ca_scan(v54, v55);
              v56 = OUTLINED_FUNCTION_28_29();
              if (!testFldeq(v56, v57, 4, v113) && !advance_tok(v6, v58, v59, v60))
              {
                break;
              }
            }
          }

          goto LABEL_35;
        }

        goto LABEL_23;
      }

LABEL_29:
      v61 = OUTLINED_FUNCTION_44_19();
      savescptr(v61, v62, &v108);
LABEL_30:
      v63 = OUTLINED_FUNCTION_69_12();
      savescptr(v63, v64, v106);
      OUTLINED_FUNCTION_28_29();
      if (!test_string_s())
      {
        *(v6 + 5990) = v113;
        goto LABEL_32;
      }
    }

LABEL_35:
    LODWORD(v69) = v15;
LABEL_36:
    v70 = *(v6 + 104);
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_38_21(v70);
      v15 = v69;
    }

    else
    {
      v71 = vback(v6, v69);
      v15 = 0;
    }

    v53 = v15;
    v34 = v15;
    v38 = v15;
    switch(v71)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        v20 = v15;
        goto LABEL_9;
      case 5:
      case 11:
      case 19:
        goto LABEL_32;
      case 6:
        goto LABEL_11;
      case 7:
        v24 = v15;
        goto LABEL_21;
      case 8:
        v44 = v15;
        goto LABEL_22;
      case 9:
        goto LABEL_29;
      case 10:
        goto LABEL_30;
      case 12:
      case 25:
        goto LABEL_23;
      case 13:
        goto LABEL_26;
      case 14:
        v76 = advance_tok(v6, v69, v15, v15);
        LODWORD(v53) = v15;
        LODWORD(v69) = v15;
        if (!v76)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      case 15:
        goto LABEL_13;
      case 16:
        savescptr(v6, 16, v104);
        OUTLINED_FUNCTION_2_44();
        v81 = test_string_s();
        LODWORD(v34) = v15;
        LODWORD(v69) = v15;
        if (!v81)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      case 17:
        goto LABEL_18;
      case 18:
        goto LABEL_19;
      case 20:
        v82 = OUTLINED_FUNCTION_1_44();
        v86 = testFldeq(v82, v83, v84, v85);
        LODWORD(v69) = v15;
        if (v86)
        {
          goto LABEL_36;
        }

        v89 = advance_tok(v6, v15, v87, v88);
        LODWORD(v69) = v15;
        if (v89)
        {
          goto LABEL_36;
        }

        *(v6 + 168) = 1;
        *(v6 + 144) = v109;
        *(v6 + 128) = 0;
        insert_l(v6, 1);
        goto LABEL_32;
      case 21:
        v77 = OUTLINED_FUNCTION_10_40();
        v80 = testFldeq(v77, v78, v79, 30);
        v69 = v15;
        if (v80)
        {
          goto LABEL_36;
        }

        goto LABEL_50;
      case 22:
        bspop_boa(v6);
        goto LABEL_50;
      case 23:
LABEL_50:
        v90 = advance_tok(v6, v69, v53, v34);
        v38 = v15;
        LODWORD(v69) = v15;
        if (!v90)
        {
          goto LABEL_51;
        }

        goto LABEL_36;
      case 24:
        goto LABEL_51;
      case 26:
        v30 = v15;
        goto LABEL_15;
      case 27:
        goto LABEL_16;
      case 28:
        OUTLINED_FUNCTION_68_12();
        if (!v93)
        {
          goto LABEL_57;
        }

        goto LABEL_5;
      case 29:
        bspop_boa(v6);
        goto LABEL_5;
      case 30:
LABEL_57:
        lpta_loadpn(v6, v106);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v6) || testneq(v6))
        {
          goto LABEL_59;
        }

        goto LABEL_5;
      case 32:
LABEL_59:
        lpta_loadpn(v6, v105);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v6) || testneq(v6))
        {
          goto LABEL_61;
        }

        goto LABEL_5;
      case 33:
LABEL_61:
        lpta_loadpn(v6, v104);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v6) || testneq(v6))
        {
          goto LABEL_63;
        }

        strip_inner_adj_suffix(v6, v94, v95, v96, v97, v98, v99, v100);
        goto LABEL_5;
      case 34:
LABEL_63:
        lpta_loadpn(v6, v103);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(v6) || testneq(v6))
        {
          goto LABEL_65;
        }

        split_final_compound(v6);
        goto LABEL_5;
      case 36:
LABEL_65:
        strip_ambig_suffix(v6, v69, v53, v34, v72);
        if (v101)
        {
          goto LABEL_66;
        }

        goto LABEL_5;
      case 38:
LABEL_66:
        if (strip_ing(v6, v69, v53, v34, v72, v73, v74, v75))
        {
          goto LABEL_67;
        }

        goto LABEL_5;
      case 39:
LABEL_67:
        if (strip_inner_adj_suffix(v6, v69, v53, v34, v72, v73, v74, v75))
        {
          goto LABEL_68;
        }

        goto LABEL_5;
      case 40:
LABEL_68:
        strip_nounadj_suffix(v6, v69, v53, v34, v72, v73, v74, v75);
        break;
      default:
        goto LABEL_5;
    }

    break;
  }

LABEL_5:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

int *strip_outer_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v137 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v11, v12);
  v13 = setjmp(v8);
  if (v13 || OUTLINED_FUNCTION_104_7(v13, &v103, v136, v135, v134))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_32_27();
  v23 = push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_71_12(v23, v24, &null_str_12);
  v25 = OUTLINED_FUNCTION_25_31();
  fence_44(v25, v26, v27);
  OUTLINED_FUNCTION_93_8();
  v28 = OUTLINED_FUNCTION_24_31();
  v30 = lpta_loadp_setscan_l(v28, v29, v9);
  v31 = 0;
  if (!v30)
  {
    OUTLINED_FUNCTION_6_41();
    v32 = test_string_s();
    v33 = 0;
    v31 = 0;
    if (!v32)
    {
LABEL_6:
      v34 = v33;
      OUTLINED_FUNCTION_47_17();
      savescptr(a1, v35, &v130);
      OUTLINED_FUNCTION_2_44();
      v36 = test_string_s();
      v37 = v34;
      v38 = v34;
      if (v36)
      {
        goto LABEL_20;
      }

LABEL_7:
      OUTLINED_FUNCTION_62_15();
      v39 = OUTLINED_FUNCTION_36_23();
      savescptr(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v42, v43, 1))
      {
        v44 = v37;
      }

      else
      {
        OUTLINED_FUNCTION_5_42();
        v45 = test_string_s();
        v44 = v37;
        if (!v45)
        {
LABEL_13:
          OUTLINED_FUNCTION_48_16(5, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
LABEL_14:
          OUTLINED_FUNCTION_60_15(6, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
          OUTLINED_FUNCTION_20_34();
LABEL_15:
          OUTLINED_FUNCTION_103_7();
          v56 = v55;
          goto LABEL_16;
        }
      }

LABEL_10:
      v8 = v44;
      v46 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_22_33();
      if (!setd_lookup(v49, v50, 389))
      {
        strip_ess(a1, v51, v52, v53, v54);
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  while (2)
  {
    v72 = v31;
    v73 = OUTLINED_FUNCTION_17_37();
    starttest(v73, v74);
    v75 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v75, v76, v77))
    {
      v69 = v72;
    }

    else
    {
      OUTLINED_FUNCTION_6_41();
      v78 = test_string_s();
      v68 = v72;
      v69 = v72;
      if (!v78)
      {
LABEL_32:
        v57 = v68;
        OUTLINED_FUNCTION_60_15(11, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_44();
        if (test_string_s() || (v84 = OUTLINED_FUNCTION_0_45(), testFldeq(v84, v85, v86, v87)))
        {
          v38 = v57;
          goto LABEL_20;
        }

        v61 = advance_tok(a1, v88, v89, v90);
        goto LABEL_17;
      }
    }

LABEL_27:
    v8 = v69;
    v79 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v79, v80, v81))
    {
      break;
    }

    OUTLINED_FUNCTION_3_43();
    v82 = test_string_s();
    v70 = v8;
    if (v82)
    {
      break;
    }

LABEL_29:
    v83 = v70;
    OUTLINED_FUNCTION_43_19(14, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    v71 = v83;
LABEL_30:
    LODWORD(v8) = v71;
    OUTLINED_FUNCTION_60_15(15, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
LABEL_31:
    v56 = v8;
LABEL_16:
    v57 = v56;
    v58 = OUTLINED_FUNCTION_21_33();
    starttest(v58, v59);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    v60 = OUTLINED_FUNCTION_53_16();
    v61 = strip_suffix(v60);
LABEL_17:
    if (v61)
    {
      v38 = v57;
    }

    else
    {
      v38 = 1;
    }

LABEL_20:
    v62 = *(a1 + 104);
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_38_21(v62);
      v8 = v64;
    }

    else
    {
      v63 = vback(a1, v38);
      v8 = 0;
    }

    v33 = v8;
    v37 = v8;
    v65 = v8;
    v66 = v8;
    v44 = v8;
    v67 = v8;
    v31 = v8;
    v68 = v8;
    v69 = v8;
    v70 = v8;
    v71 = v8;
    v56 = v8;
    switch(v63)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_15;
      case 9:
        goto LABEL_16;
      case 10:
        goto LABEL_27;
      case 11:
        goto LABEL_32;
      case 12:
        bspop_boa(a1);
        OUTLINED_FUNCTION_20_34();
        *(a1 + 5966) = v91;
        *(a1 + 5978) = v91;
        goto LABEL_31;
      case 14:
        goto LABEL_29;
      case 15:
        goto LABEL_30;
      case 16:
        OUTLINED_FUNCTION_68_12();
        if (!v92)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      case 17:
        bspop_boa(a1);
        goto LABEL_3;
      case 18:
LABEL_39:
        v93 = OUTLINED_FUNCTION_33_26();
        lpta_loadpn(v93, v94);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_41;
        }

        goto LABEL_3;
      case 20:
LABEL_41:
        v95 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v95, v96);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_43;
        }

        strip_ambig_suffix(a1, v97, v98, v99, v100);
        goto LABEL_3;
      case 21:
LABEL_43:
        split_final_compound(a1);
        if (v101)
        {
          goto LABEL_44;
        }

        goto LABEL_3;
      case 23:
LABEL_44:
        strip_ly_suffix(a1, v33, v65, v44, v31);
        if (v102)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      case 24:
LABEL_45:
        if (strip_inner_adj_suffix(a1, v33, v65, v44, v31, v67, v66, v69))
        {
          goto LABEL_46;
        }

        goto LABEL_3;
      case 25:
LABEL_46:
        if (strip_nounadj_suffix(a1, v33, v65, v44, v31, v67, v66, v69))
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      case 26:
LABEL_47:
        strip_ing(a1, v33, v65, v44, v31, v67, v66, v69);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return v8;
}

int *strip_pname_suffixes(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v431 = *MEMORY[0x277D85DE8];
  v426 = 0;
  v427 = 0;
  v424 = 0;
  v425 = 0;
  v422 = 0;
  v423 = 0;
  v420 = 0;
  v421 = 0;
  v418 = 0;
  v419 = 0;
  v416 = 0;
  v417 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v11, v12);
  v13 = setjmp(v8);
  if (v13 || OUTLINED_FUNCTION_104_7(v13, &v387, v430, v429, v428))
  {
    goto LABEL_3;
  }

  push_ptr_init(a1, &v426);
  push_ptr_init(a1, &v424);
  push_ptr_init(a1, &v422);
  v15 = OUTLINED_FUNCTION_59_15();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_74_11();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_32_27();
  v27 = push_ptr_init(v25, v26);
  v8 = 0;
  OUTLINED_FUNCTION_71_12(v27, v28, &null_str_12);
  v29 = OUTLINED_FUNCTION_25_31();
  fence_44(v29, v30, v31);
  OUTLINED_FUNCTION_93_8();
  v32 = OUTLINED_FUNCTION_24_31();
  if (!lpta_loadp_setscan_l(v32, v33, v9))
  {
    v77 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v77, v78);
    OUTLINED_FUNCTION_3_43();
    v79 = test_string_s();
    LODWORD(v8) = 0;
    v80 = 0;
    if (v79)
    {
      goto LABEL_38;
    }

LABEL_23:
    LODWORD(v42) = v80;
    OUTLINED_FUNCTION_62_15();
    v81 = OUTLINED_FUNCTION_36_23();
    savescptr(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_21_33();
    starttest(v84, v85);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    v86 = OUTLINED_FUNCTION_35_25();
    goto LABEL_34;
  }

  while (2)
  {
    v34 = OUTLINED_FUNCTION_21_33();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v36, v37, v38))
    {
      v68 = OUTLINED_FUNCTION_91_9();
      bspush_ca_scan(v68, v69);
      OUTLINED_FUNCTION_22_33();
      v70 = test_string_s();
      LODWORD(v71) = v8;
      if (v70)
      {
        goto LABEL_38;
      }

LABEL_18:
      LODWORD(v42) = v71;
      v72 = 8;
LABEL_21:
      OUTLINED_FUNCTION_80_11(v72, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426);
LABEL_33:
      v104 = OUTLINED_FUNCTION_21_33();
      starttest(v104, v105);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v86 = a1;
LABEL_34:
      v106 = strip_suffix(v86);
LABEL_35:
      if (v106)
      {
        LODWORD(v8) = v42;
      }

      else
      {
        LODWORD(v8) = 1;
      }

      goto LABEL_38;
    }

LABEL_6:
    v39 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v39, v40, v41))
    {
      OUTLINED_FUNCTION_6_41();
      v42 = v8;
      if (!test_string_s())
      {
LABEL_193:
        v358 = OUTLINED_FUNCTION_36_23();
        savescptr(v358, v359, v360);
        v361 = OUTLINED_FUNCTION_21_33();
        starttest(v361, v362);
        v363 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v363, v364, 1))
        {
          LODWORD(v8) = v42;
LABEL_195:
          v365 = OUTLINED_FUNCTION_21_33();
          starttest(v365, v366);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_boa();
          v367 = OUTLINED_FUNCTION_23_33();
          v370 = lpta_loadp_setscan_l(v367, v368, v369);
          v110 = v8;
          if (!v370)
          {
LABEL_196:
            LODWORD(v8) = v110;
            v371 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v371, v372);
LABEL_197:
            OUTLINED_FUNCTION_21_33();
            bspush_ca_scan_boa();
            v373 = OUTLINED_FUNCTION_0_45();
            v377 = testFldeq(v373, v374, v375, v376);
            goto LABEL_204;
          }

          goto LABEL_38;
        }

LABEL_198:
        v378 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v378, v379);
        OUTLINED_FUNCTION_2_44();
        v8 = v42;
        if (!test_string_s())
        {
          goto LABEL_3;
        }

        goto LABEL_38;
      }
    }

LABEL_8:
    v43 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v43, v44, v45))
    {
      OUTLINED_FUNCTION_6_41();
      v42 = v8;
      if (!test_string_s())
      {
LABEL_184:
        v332 = OUTLINED_FUNCTION_36_23();
        savescptr(v332, v333, v334);
        v335 = OUTLINED_FUNCTION_21_33();
        starttest(v335, v336);
        v337 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v337, v338, 1))
        {
LABEL_185:
          v339 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v339, v340, v341))
          {
            OUTLINED_FUNCTION_2_44();
            LODWORD(v8) = v42;
            if (!test_string_s())
            {
LABEL_187:
              LODWORD(v42) = v8;
              v342 = OUTLINED_FUNCTION_36_23();
              savescptr(v342, v343, v344);
              v345 = OUTLINED_FUNCTION_21_33();
              starttest(v345, v346);
              v347 = OUTLINED_FUNCTION_35_25();
              if (!lpta_loadp_setscan_l(v347, v348, 1))
              {
                v349 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v349, v350);
                OUTLINED_FUNCTION_5_42();
                if (test_string_s())
                {
                  goto LABEL_16;
                }

                v351 = OUTLINED_FUNCTION_0_45();
                if (testFldeq(v351, v352, v353, v354))
                {
                  goto LABEL_16;
                }

                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v355 = OUTLINED_FUNCTION_10_40();
                v106 = testFldeq(v355, v356, v357, 19);
                goto LABEL_35;
              }
            }
          }

          goto LABEL_33;
        }

        goto LABEL_198;
      }
    }

LABEL_10:
    v46 = OUTLINED_FUNCTION_21_33();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v48, v49, v50))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        v96 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v96, v97);
        OUTLINED_FUNCTION_2_44();
        v98 = test_string_s();
        v99 = v8;
        if (v98)
        {
          goto LABEL_38;
        }

LABEL_29:
        v8 = v99;
        OUTLINED_FUNCTION_2_44();
        v42 = v8;
        if (!test_string_s())
        {
LABEL_175:
          v316 = OUTLINED_FUNCTION_36_23();
          savescptr(v316, v317, v318);
          v319 = OUTLINED_FUNCTION_21_33();
          starttest(v319, v320);
          v321 = OUTLINED_FUNCTION_35_25();
          if (lpta_loadp_setscan_l(v321, v322, 1))
          {
            goto LABEL_33;
          }

          v323 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v323, v324);
          v325 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v325, v326);
          v327 = OUTLINED_FUNCTION_10_40();
          v330 = testFldeq(v327, v328, v329, 25);
          v111 = v42;
          LODWORD(v8) = v42;
          if (v330)
          {
            goto LABEL_38;
          }

LABEL_177:
          v8 = v111;
          goto LABEL_178;
        }

        goto LABEL_38;
      }
    }

LABEL_12:
    v51 = OUTLINED_FUNCTION_21_33();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v53, v54, v55))
    {
      v73 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v73, v74);
      OUTLINED_FUNCTION_22_33();
      v75 = test_string_s();
      v76 = v8;
      if (v75)
      {
        goto LABEL_38;
      }

LABEL_20:
      LODWORD(v42) = v76;
      v72 = 63;
      goto LABEL_21;
    }

LABEL_13:
    v56 = OUTLINED_FUNCTION_21_33();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v58, v59, v60))
    {
      v87 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v87, v88);
      v89 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v89, v90);
      v91 = v8;
LABEL_25:
      LODWORD(v8) = v91;
      OUTLINED_FUNCTION_2_44();
      v92 = test_string_s();
      v93 = v8;
      if (!v92)
      {
LABEL_26:
        LODWORD(v8) = v93;
        OUTLINED_FUNCTION_95_8(69, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422);
        OUTLINED_FUNCTION_5_42();
        v94 = test_string_s();
        v95 = v8;
        if (v94)
        {
          goto LABEL_38;
        }

LABEL_202:
        LODWORD(v8) = v95;
        OUTLINED_FUNCTION_80_11(70, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v380 = OUTLINED_FUNCTION_0_45();
        if (!testFldeq(v380, v381, v382, v383))
        {
          v377 = advance_tok(a1, v384, v385, v386);
LABEL_204:
          if (!v377)
          {
            LODWORD(v8) = 1;
          }

          goto LABEL_38;
        }
      }

      goto LABEL_38;
    }

LABEL_14:
    LODWORD(v42) = v8;
    v61 = OUTLINED_FUNCTION_21_33();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v63, v64, v65))
    {
      v66 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v66, v67);
      OUTLINED_FUNCTION_6_41();
      if (test_string_s())
      {
LABEL_16:
        LODWORD(v8) = v42;
        goto LABEL_38;
      }

      v100 = OUTLINED_FUNCTION_21_33();
      bspush_ca_scan(v100, v101);
      OUTLINED_FUNCTION_2_44();
      v102 = test_string_s();
      v103 = v8;
      if (!v102)
      {
LABEL_151:
        v8 = v103;
        OUTLINED_FUNCTION_80_11(80, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426);
        v271 = OUTLINED_FUNCTION_74_11();
        lpta_loadpn(v271, v272);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_153:
          v273 = OUTLINED_FUNCTION_53_16();
          lpta_loadpn(v273, v274);
          OUTLINED_FUNCTION_67_14();
          if (compare_ptas(a1) || testneq(a1))
          {
LABEL_155:
            v275 = OUTLINED_FUNCTION_42_20();
            lpta_loadpn(v275, v276);
            OUTLINED_FUNCTION_67_14();
            if (compare_ptas(a1) || testneq(a1))
            {
LABEL_157:
              v277 = OUTLINED_FUNCTION_33_26();
              lpta_loadpn(v277, v278);
              OUTLINED_FUNCTION_67_14();
              if (compare_ptas(a1) || testneq(a1))
              {
LABEL_159:
                v279 = OUTLINED_FUNCTION_32_27();
                lpta_loadpn(v279, v280);
                OUTLINED_FUNCTION_67_14();
                if (!compare_ptas(a1) && !testneq(a1))
                {
                  v281 = OUTLINED_FUNCTION_21_33();
                  starttest(v281, v282);
                  v283 = OUTLINED_FUNCTION_23_33();
                  if (!lpta_loadp_setscan_l(v283, v284, v285))
                  {
                    OUTLINED_FUNCTION_21_33();
                    bspush_ca_scan_boa();
                    v286 = OUTLINED_FUNCTION_21_33();
                    bspush_ca_scan(v286, v287);
                    OUTLINED_FUNCTION_2_44();
                    if (!test_string_s())
                    {
LABEL_163:
                      LODWORD(v8) = 1;
                    }

                    goto LABEL_38;
                  }
                }

                goto LABEL_173;
              }

              v311 = OUTLINED_FUNCTION_21_33();
              starttest(v311, v312);
              v313 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v313, v314, v315))
              {
LABEL_173:
                LODWORD(v42) = v8;
                goto LABEL_33;
              }

              goto LABEL_197;
            }

            v304 = OUTLINED_FUNCTION_21_33();
            starttest(v304, v305);
            v306 = OUTLINED_FUNCTION_23_33();
            if (lpta_loadp_setscan_l(v306, v307, v308))
            {
              goto LABEL_173;
            }

            v309 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v309, v310);
            v300 = OUTLINED_FUNCTION_1_44();
            goto LABEL_170;
          }

          v295 = OUTLINED_FUNCTION_21_33();
          starttest(v295, v296);
          v297 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v297, v298, v299))
          {
            goto LABEL_173;
          }
        }

        else
        {
          v288 = OUTLINED_FUNCTION_21_33();
          starttest(v288, v289);
          v290 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v290, v291, v292))
          {
            goto LABEL_173;
          }

          v293 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v293, v294);
        }

        v300 = OUTLINED_FUNCTION_0_45();
LABEL_170:
        if (testFldeq(v300, v301, v302, v303))
        {
          goto LABEL_38;
        }

LABEL_178:
        if (!advance_tok(a1, v107, v71, v103))
        {
          goto LABEL_3;
        }
      }

LABEL_38:
      LODWORD(v107) = v8;
LABEL_39:
      v108 = *(a1 + 104);
      if (v108)
      {
        v109 = OUTLINED_FUNCTION_38_21(v108);
        v8 = v107;
      }

      else
      {
        v109 = vback(a1, v107);
        v8 = 0;
      }

      v80 = v8;
      v71 = v8;
      v110 = v8;
      v99 = v8;
      v111 = v8;
      v76 = v8;
      v91 = v8;
      v93 = v8;
      v103 = v8;
      LODWORD(v42) = v8;
      switch(v109)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_18_36();
          v167 = test_string_s();
          v80 = v8;
          LODWORD(v107) = v8;
          if (!v167)
          {
            goto LABEL_23;
          }

          goto LABEL_39;
        case 3:
          goto LABEL_23;
        case 4:
          OUTLINED_FUNCTION_68_12();
          if (!v331)
          {
            continue;
          }

          goto LABEL_3;
        case 5:
        case 22:
        case 117:
        case 121:
          bspop_boa(a1);
          goto LABEL_3;
        case 6:
          goto LABEL_6;
        case 7:
          v193 = OUTLINED_FUNCTION_16_39();
          bspush_ca_scan(v193, v194);
          goto LABEL_83;
        case 8:
          goto LABEL_18;
        case 9:
          v197 = OUTLINED_FUNCTION_17_37();
          bspush_ca_scan(v197, v198);
          goto LABEL_83;
        case 10:
          v191 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v191, v192);
LABEL_83:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_93;
        case 11:
          v142 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v142, v143);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_93;
        case 12:
        case 13:
          v165 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v165, v166);
          goto LABEL_92;
        case 14:
LABEL_92:
          OUTLINED_FUNCTION_18_36();
LABEL_93:
          v201 = test_string_s();
          LODWORD(v71) = v8;
          LODWORD(v107) = v8;
          if (!v201)
          {
            goto LABEL_18;
          }

          goto LABEL_39;
        case 15:
        case 21:
        case 44:
        case 46:
        case 55:
        case 72:
        case 102:
        case 106:
        case 108:
        case 110:
        case 114:
        case 116:
          goto LABEL_33;
        case 16:
          goto LABEL_8;
        case 17:
          v42 = v8;
          goto LABEL_193;
        case 18:
          goto LABEL_195;
        case 19:
        case 60:
        case 105:
        case 111:
          goto LABEL_88;
        case 23:
          goto LABEL_196;
        case 24:
          v139 = advance_tok(a1, v107, v8, v8);
          v110 = v8;
          LODWORD(v107) = v8;
          if (!v139)
          {
            goto LABEL_196;
          }

          goto LABEL_39;
        case 25:
          bspop_boa(a1);
          v176 = advance_tok(a1, v173, v174, v175);
          LODWORD(v107) = v8;
          if (v176)
          {
            goto LABEL_39;
          }

          goto LABEL_75;
        case 26:
LABEL_75:
          v177 = OUTLINED_FUNCTION_0_45();
          v181 = testFldeq(v177, v178, v179, v180);
          LODWORD(v107) = v8;
          if (v181)
          {
            goto LABEL_39;
          }

          v184 = advance_tok(a1, v8, v182, v183);
          LODWORD(v107) = v8;
          if (v184)
          {
            goto LABEL_39;
          }

          v185 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v185, v186);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v187 = OUTLINED_FUNCTION_0_45();
          goto LABEL_115;
        case 27:
          bspop_boa(a1);
          goto LABEL_120;
        case 28:
          goto LABEL_10;
        case 29:
          v42 = v8;
          goto LABEL_184;
        case 30:
          LODWORD(v42) = v8;
          goto LABEL_185;
        case 31:
        case 33:
        case 34:
        case 103:
          v171 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v171, v172);
          goto LABEL_88;
        case 35:
          v202 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v202, v203);
          OUTLINED_FUNCTION_5_42();
          goto LABEL_89;
        case 36:
          v133 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v133, v134);
          v135 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v135, v136);
          v137 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v137, v138);
          goto LABEL_84;
        case 37:
        case 56:
          v149 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v149, v150);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_89;
        case 38:
          goto LABEL_135;
        case 39:
LABEL_84:
          OUTLINED_FUNCTION_2_44();
          v199 = test_string_s();
          LODWORD(v107) = v8;
          if (v199)
          {
            goto LABEL_39;
          }

LABEL_135:
          while (1)
          {
            v258 = OUTLINED_FUNCTION_1_44();
            if (testFldeq(v258, v259, v260, v261) || advance_tok(a1, v262, v263, v264))
            {
              break;
            }

            v256 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v256, v257);
          }

          goto LABEL_38;
        case 40:
        case 41:
          goto LABEL_43;
        case 42:
          v151 = OUTLINED_FUNCTION_0_45();
          v155 = testFldeq(v151, v152, v153, v154);
          LODWORD(v107) = v8;
          if (v155)
          {
            goto LABEL_39;
          }

          v158 = advance_tok(a1, v8, v156, v157);
          LODWORD(v107) = v8;
          if (v158)
          {
            goto LABEL_39;
          }

LABEL_43:
          v112 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v112, v113);
          OUTLINED_FUNCTION_88_10();
          v114 = OUTLINED_FUNCTION_26_31();
          v117 = test_ptr(v114, v115, v116);
          goto LABEL_90;
        case 43:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_89;
        case 45:
          goto LABEL_187;
        case 47:
          OUTLINED_FUNCTION_5_42();
          v140 = test_string_s();
          goto LABEL_107;
        case 48:
          bspop_boa(a1);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v187 = OUTLINED_FUNCTION_10_40();
          v190 = 24;
          goto LABEL_115;
        case 49:
          bspop_boa(a1);
          v140 = advance_tok(a1, v226, v227, v228);
LABEL_107:
          LODWORD(v107) = v8;
          if (!v140)
          {
            goto LABEL_140;
          }

          goto LABEL_39;
        case 50:
LABEL_140:
          v427 = v425;
          goto LABEL_173;
        case 51:
          goto LABEL_12;
        case 52:
          OUTLINED_FUNCTION_2_44();
          v141 = test_string_s();
          v99 = v8;
          LODWORD(v107) = v8;
          if (!v141)
          {
            goto LABEL_29;
          }

          goto LABEL_39;
        case 53:
          goto LABEL_29;
        case 54:
          v42 = v8;
          goto LABEL_175;
        case 57:
          v144 = OUTLINED_FUNCTION_1_44();
          v148 = testFldeq(v144, v145, v146, v147);
          v111 = v8;
          v107 = v8;
          if (!v148)
          {
            goto LABEL_177;
          }

          goto LABEL_39;
        case 58:
          goto LABEL_177;
        case 61:
          goto LABEL_13;
        case 62:
          OUTLINED_FUNCTION_18_36();
          v200 = test_string_s();
          v76 = v8;
          LODWORD(v107) = v8;
          if (!v200)
          {
            goto LABEL_20;
          }

          goto LABEL_39;
        case 63:
          goto LABEL_20;
        case 64:
          goto LABEL_14;
        case 65:
          OUTLINED_FUNCTION_2_44();
          v124 = test_string_s();
          v93 = v8;
          LODWORD(v107) = v8;
          if (!v124)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        case 66:
          v125 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v125, v126);
          goto LABEL_109;
        case 67:
          goto LABEL_25;
        case 68:
LABEL_109:
          OUTLINED_FUNCTION_2_44();
          v229 = test_string_s();
          v91 = v8;
          LODWORD(v107) = v8;
          if (!v229)
          {
            goto LABEL_25;
          }

          goto LABEL_39;
        case 69:
          goto LABEL_26;
        case 70:
          v95 = v8;
          goto LABEL_202;
        case 71:
          bspop_boa(a1);
          v204 = OUTLINED_FUNCTION_21_33();
          starttest(v204, v205);
          v206 = OUTLINED_FUNCTION_23_33();
          if (lpta_loadp_setscan_l(v206, v207, v208))
          {
            goto LABEL_173;
          }

          goto LABEL_97;
        case 73:
LABEL_97:
          v209 = OUTLINED_FUNCTION_75_11();
          savescptr(v209, v210, v211);
          v215 = advance_tok(a1, v212, v213, v214);
          LODWORD(v107) = v8;
          if (v215)
          {
            goto LABEL_39;
          }

          v218 = advance_tok(a1, v8, v216, v217);
          LODWORD(v107) = v8;
          if (v218)
          {
            goto LABEL_39;
          }

          v219 = OUTLINED_FUNCTION_1_44();
          v223 = testFldeq(v219, v220, v221, v222);
          LODWORD(v107) = v8;
          if (v223)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v187 = OUTLINED_FUNCTION_10_40();
          v190 = 3;
LABEL_115:
          v120 = testFldeq(v187, v188, v189, v190);
          goto LABEL_121;
        case 74:
          bspop_boa(a1);
          v233 = advance_tok(a1, v230, v231, v232);
          LODWORD(v107) = v8;
          if (v233)
          {
            goto LABEL_39;
          }

          v234 = OUTLINED_FUNCTION_23_33();
          v237 = lpta_loadp_setscan_r(v234, v235, v236);
          LODWORD(v107) = v8;
          if (v237)
          {
            goto LABEL_39;
          }

LABEL_88:
          OUTLINED_FUNCTION_2_44();
LABEL_89:
          v117 = test_string_s();
          goto LABEL_90;
        case 75:
        case 120:
          goto LABEL_141;
        case 76:
          v159 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v159, v160);
          v161 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v161, v162);
          v163 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v163, v164);
          goto LABEL_128;
        case 77:
          OUTLINED_FUNCTION_2_44();
          v119 = test_string_s();
          LODWORD(v107) = v8;
          if (v119)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_2_44();
          v120 = test_string_s();
          goto LABEL_121;
        case 78:
        case 80:
          goto LABEL_151;
        case 79:
        case 100:
          bspop_boa(a1);
          goto LABEL_150;
        case 81:
          v121 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v121, v122);
          OUTLINED_FUNCTION_3_43();
          v123 = test_string_s();
          LODWORD(v107) = v8;
          if (v123)
          {
            goto LABEL_39;
          }

          goto LABEL_148;
        case 82:
          v245 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v245, v246);
          v247 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v247, v248);
          goto LABEL_125;
        case 83:
LABEL_128:
          OUTLINED_FUNCTION_2_44();
          v253 = test_string_s();
          LODWORD(v107) = v8;
          if (!v253)
          {
            goto LABEL_129;
          }

          goto LABEL_39;
        case 84:
LABEL_129:
          OUTLINED_FUNCTION_5_42();
          v254 = test_string_s();
          LODWORD(v107) = v8;
          if (!v254)
          {
            goto LABEL_130;
          }

          goto LABEL_39;
        case 85:
LABEL_130:
          v251 = 85;
          v252 = &v418;
          goto LABEL_131;
        case 86:
          goto LABEL_132;
        case 87:
        case 89:
          goto LABEL_125;
        case 88:
          OUTLINED_FUNCTION_2_44();
          v238 = test_string_s();
          LODWORD(v107) = v8;
          if (v238)
          {
            goto LABEL_39;
          }

LABEL_125:
          OUTLINED_FUNCTION_2_44();
          v249 = test_string_s();
          LODWORD(v107) = v8;
          if (!v249)
          {
            goto LABEL_126;
          }

          goto LABEL_39;
        case 90:
LABEL_126:
          OUTLINED_FUNCTION_5_42();
          v250 = test_string_s();
          LODWORD(v107) = v8;
          if (!v250)
          {
            goto LABEL_127;
          }

          goto LABEL_39;
        case 91:
LABEL_127:
          v251 = 91;
          v252 = &v416;
LABEL_131:
          savescptr(a1, v251, v252);
LABEL_132:
          OUTLINED_FUNCTION_2_44();
          v255 = test_string_s();
          v103 = v8;
          LODWORD(v107) = v8;
          if (!v255)
          {
            goto LABEL_151;
          }

          goto LABEL_39;
        case 92:
          v127 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v127, v128);
          v129 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v129, v130);
          v131 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v131, v132);
          OUTLINED_FUNCTION_6_41();
          goto LABEL_102;
        case 93:
LABEL_148:
          v265 = 93;
          v266 = &v414;
          goto LABEL_149;
        case 94:
          OUTLINED_FUNCTION_3_43();
          v239 = test_string_s();
          LODWORD(v107) = v8;
          if (v239)
          {
            goto LABEL_39;
          }

          goto LABEL_119;
        case 95:
          OUTLINED_FUNCTION_3_43();
          goto LABEL_104;
        case 96:
          OUTLINED_FUNCTION_5_42();
LABEL_102:
          v224 = test_string_s();
          LODWORD(v107) = v8;
          if (!v224)
          {
            goto LABEL_103;
          }

          goto LABEL_39;
        case 97:
LABEL_103:
          OUTLINED_FUNCTION_2_44();
LABEL_104:
          v225 = test_string_s();
          LODWORD(v107) = v8;
          if (!v225)
          {
            goto LABEL_139;
          }

          goto LABEL_39;
        case 98:
LABEL_139:
          v265 = 98;
          v266 = &v412;
LABEL_149:
          savescptr(a1, v265, v266);
LABEL_150:
          v103 = v8;
          goto LABEL_151;
        case 99:
LABEL_119:
          OUTLINED_FUNCTION_43_19(99, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410);
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v240 = OUTLINED_FUNCTION_1_44();
          v244 = testFldeq(v240, v241, v242, v243);
          v107 = v8;
          if (!v244)
          {
LABEL_120:
            v120 = advance_tok(a1, v107, v195, v196);
LABEL_121:
            if (v120)
            {
              LODWORD(v107) = v8;
            }

            else
            {
              LODWORD(v107) = 1;
            }
          }

          goto LABEL_39;
        case 101:
          goto LABEL_153;
        case 107:
          goto LABEL_155;
        case 109:
          goto LABEL_157;
        case 113:
          goto LABEL_159;
        case 115:
          bspop_boa(a1);
          v117 = advance_tok(a1, v168, v169, v170);
LABEL_90:
          LODWORD(v107) = v8;
          if (!v117)
          {
            goto LABEL_3;
          }

          goto LABEL_39;
        case 118:
          OUTLINED_FUNCTION_2_44();
          v118 = test_string_s();
          LODWORD(v107) = v8;
          if (!v118)
          {
            goto LABEL_163;
          }

          goto LABEL_39;
        case 119:
          goto LABEL_163;
        case 122:
          goto LABEL_142;
        case 123:
          goto LABEL_143;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_141:
  if (*(a1 + 5970))
  {
LABEL_142:
    *(a1 + 5950) = 0;
    if (*(a1 + 5946) != 1)
    {
LABEL_143:
      lpta_loadpn(a1, &v424);
      OUTLINED_FUNCTION_67_14();
      if (!compare_ptas(a1) && !testeq(a1))
      {
        strip_s(a1, v267, v268, v269, v270);
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return v8;
}

void strip_noun_verb_suffix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v124 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v5, v7, v8, v9, v10, v11, v12, v13, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117);
  OUTLINED_FUNCTION_30_29();
  bzero(v123, v14);
  v15 = setjmp(v123);
  if (!v15 && !OUTLINED_FUNCTION_15_39(v15, v16, v17, v18, v19, v20, v21, v22, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v119, SHIDWORD(v119), v120, SWORD2(v120), SHIWORD(v120), v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v122, v123[0]))
  {
    v23 = OUTLINED_FUNCTION_32_27();
    push_ptr_init(v23, v24);
    fence_44(v6, 0, &null_str_12);
    v25 = OUTLINED_FUNCTION_22_33();
    fence_44(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v28, v29, v30) || (OUTLINED_FUNCTION_6_41(), test_string_s()))
    {
      v31 = 0;
      while (2)
      {
        v32 = OUTLINED_FUNCTION_35_25();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_4_42();
        if (!lpta_loadp_setscan_l(v34, v35, v36))
        {
          OUTLINED_FUNCTION_5_42();
          if (!test_string_s())
          {
LABEL_9:
            v37 = OUTLINED_FUNCTION_50_16();
            savescptr(v37, v38, v39);
            OUTLINED_FUNCTION_69_12();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_22_33();
            v40 = test_string_s();
            if (v40)
            {
              v41 = v31;
            }

            else
            {
              v41 = 1;
            }

            if (v6[13])
            {
              v42 = OUTLINED_FUNCTION_84_11(v40, v41);
            }

            else
            {
              v43 = vback(v6, v41);
              v42 = 0;
            }

            v31 = v42;
            switch(v43)
            {
              case 1:
                v31 = v42;
                continue;
              case 2:
                goto LABEL_17;
              case 3:
                goto LABEL_19;
              case 5:
                goto LABEL_9;
              case 6:
                bspop_boa(v6);
                OUTLINED_FUNCTION_20_34();
                goto LABEL_19;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }
    }

    else
    {
LABEL_17:
      OUTLINED_FUNCTION_43_19(2, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116);
LABEL_19:
      v44 = OUTLINED_FUNCTION_32_27();
      strip_suffix(v44);
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

uint64_t strip_inner_adj_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v225 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223[0], v223[1]);
  OUTLINED_FUNCTION_30_29();
  bzero(v224, v10);
  if (setjmp(v224))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_22();
  if (ventproc(a1, v11, v12, v13, v14, v224))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_32_27();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_71_12(v22, v23, &null_str_12);
  v24 = OUTLINED_FUNCTION_25_31();
  fence_44(v24, v25, v26);
  OUTLINED_FUNCTION_93_8();
  v27 = OUTLINED_FUNCTION_24_31();
  v29 = lpta_loadp_setscan_l(v27, v28, v8);
  v30 = 0;
  LODWORD(v31) = 0;
  if (!v29)
  {
    v83 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v83, v84);
    OUTLINED_FUNCTION_3_43();
    v85 = test_string_s();
    v86 = 0;
    LODWORD(v87) = 0;
    v31 = 0;
    v82 = 0;
    if (v85)
    {
      goto LABEL_35;
    }

LABEL_30:
    LODWORD(v70) = v87;
    v31 = v86;
    OUTLINED_FUNCTION_49_16(3, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v223[0]);
    OUTLINED_FUNCTION_103_7();
    goto LABEL_31;
  }

  while (2)
  {
    v32 = v30;
    v33 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v33, v34, v35))
    {
      v36 = v32;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v37 = test_string_s();
      v38 = v32;
      v39 = v31;
      v36 = v32;
      if (!v37)
      {
LABEL_73:
        LODWORD(v70) = v39;
        v128 = v38;
        OUTLINED_FUNCTION_48_16(6, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220);
LABEL_74:
        v129 = OUTLINED_FUNCTION_36_23();
        savescptr(v129, v130, v131);
        v132 = OUTLINED_FUNCTION_35_25();
        if (lpta_loadp_setscan_l(v132, v133, 1))
        {
          v31 = v128;
        }

        else
        {
          OUTLINED_FUNCTION_5_42();
          v31 = v128;
          if (!test_string_s())
          {
            break;
          }
        }

LABEL_77:
        OUTLINED_FUNCTION_20_34();
        *(a1 + 5966) = v134;
        goto LABEL_104;
      }
    }

LABEL_8:
    v40 = v36;
    v41 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v41, v42, v43))
    {
      v44 = v40;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_6_41();
    v45 = test_string_s();
    v46 = v40;
    v47 = v31;
    v44 = v40;
    if (!v45)
    {
LABEL_102:
      LODWORD(v70) = v47;
      v31 = v46;
      OUTLINED_FUNCTION_43_19(10, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216);
LABEL_103:
      OUTLINED_FUNCTION_49_16(11, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v223[0]);
      OUTLINED_FUNCTION_20_34();
LABEL_104:
      *(a1 + 5978) = v134;
      goto LABEL_31;
    }

LABEL_11:
    v48 = v44;
    v49 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v49, v50, v51))
    {
      v52 = v48;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v53 = test_string_s();
      v54 = v31;
      v52 = v48;
      if (!v53)
      {
LABEL_106:
        LODWORD(v70) = v54;
        OUTLINED_FUNCTION_49_16(13, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v223[0]);
        v31 = 1;
        *(a1 + 5966) = 1;
        goto LABEL_31;
      }
    }

LABEL_14:
    v55 = v52;
    v56 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v56, v57, v58))
    {
      v59 = v55;
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v60 = test_string_s();
      v61 = v31;
      v59 = v55;
      if (!v60)
      {
LABEL_79:
        LODWORD(v70) = v61;
        OUTLINED_FUNCTION_49_16(16, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v223[0]);
LABEL_80:
        v31 = 1;
        goto LABEL_31;
      }
    }

LABEL_17:
    v62 = v59;
    v63 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v63, v64, v65))
    {
      v66 = v62;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_18_36();
    v67 = test_string_s();
    v68 = v62;
    v69 = v31;
    v66 = v62;
    if (v67)
    {
LABEL_20:
      v70 = v66;
      v71 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v71, v72, v73))
      {
        break;
      }

      OUTLINED_FUNCTION_6_41();
      v74 = v70;
      LODWORD(v70) = v31;
      if (test_string_s())
      {
        break;
      }

LABEL_22:
      v75 = OUTLINED_FUNCTION_36_23();
      savescptr(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_21_33();
      starttest_l(v78, v79);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v80 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v80, v81, 1))
      {
        OUTLINED_FUNCTION_6_41();
        if (!test_string_s())
        {
          v88 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v88, v89);
          OUTLINED_FUNCTION_2_44();
          v90 = test_string_s();
          v31 = v74;
          v82 = v70;
          v91 = v74;
          if (!v90)
          {
LABEL_52:
            v31 = v91;
            v82 = 1;
          }

          goto LABEL_35;
        }
      }

      v31 = v74;
LABEL_25:
      v82 = v70;
      goto LABEL_35;
    }

LABEL_87:
    LODWORD(v70) = v69;
    v135 = OUTLINED_FUNCTION_36_23();
    savescptr(v135, v136, v137);
    v138 = OUTLINED_FUNCTION_35_25();
    if (lpta_loadp_setscan_l(v138, v139, 1))
    {
LABEL_88:
      v140 = v70;
    }

    else
    {
      OUTLINED_FUNCTION_2_44();
      v140 = v70;
      if (!test_string_s())
      {
        break;
      }
    }

    v141 = OUTLINED_FUNCTION_21_33();
    starttest(v141, v142);
    OUTLINED_FUNCTION_41_20();
    if (one_eng_syllable())
    {
      LODWORD(v70) = v140;
      goto LABEL_93;
    }

    v143 = OUTLINED_FUNCTION_23_33();
    v146 = lpta_loadp_setscan_l(v143, v144, v145);
    v126 = v68;
    v127 = v140;
    LODWORD(v70) = v140;
    if (v146)
    {
LABEL_93:
      v147 = OUTLINED_FUNCTION_21_33();
      starttest(v147, v148);
      v31 = 1;
      if (!lpta_loadp_setscan_l(a1, v223, 1))
      {
        v149 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v149, v150);
        OUTLINED_FUNCTION_2_44();
        v151 = test_string_s();
        v31 = v68;
        v82 = v70;
        v100 = v70;
        if (v151)
        {
          goto LABEL_35;
        }

LABEL_95:
        v152 = v100;
        v153 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v153, v154);
        OUTLINED_FUNCTION_2_44();
        v155 = test_string_s();
        v31 = v68;
        v82 = v152;
        v101 = v68;
        v102 = v152;
        if (v155)
        {
          goto LABEL_35;
        }

LABEL_107:
        LODWORD(v70) = v102;
        v31 = v101;
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v162 = OUTLINED_FUNCTION_1_44();
        if (testFldeq(v162, v163, v164, v165))
        {
          goto LABEL_25;
        }

        v95 = advance_tok(a1, v166, v167, v168);
LABEL_32:
        if (v95)
        {
          v82 = v70;
        }

        else
        {
          v82 = 1;
        }

        goto LABEL_35;
      }

LABEL_31:
      v92 = OUTLINED_FUNCTION_21_33();
      starttest(v92, v93);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v94 = OUTLINED_FUNCTION_42_20();
      v95 = strip_suffix(v94);
      goto LABEL_32;
    }

LABEL_97:
    v156 = v127;
    v157 = v126;
    OUTLINED_FUNCTION_21_33();
    bspush_ca_scan_boa();
    v158 = OUTLINED_FUNCTION_1_44();
    if (testFldeq(v158, v159, v160, v161))
    {
      v82 = v156;
    }

    else
    {
      v82 = 1;
    }

    v31 = v157;
LABEL_35:
    v96 = *(a1 + 104);
    if (v96)
    {
      v97 = OUTLINED_FUNCTION_38_21(v96);
      v70 = v98;
    }

    else
    {
      v97 = vback(a1, v82);
      v70 = 0;
    }

    v86 = v31;
    LODWORD(v87) = v70;
    v68 = v31;
    v100 = v70;
    v101 = v31;
    v102 = v70;
    v91 = v31;
    switch(v97)
    {
      case 1:
        OUTLINED_FUNCTION_79_11();
        continue;
      case 2:
        OUTLINED_FUNCTION_6_41();
        v103 = test_string_s();
        v82 = v70;
        if (v103)
        {
          goto LABEL_35;
        }

        v86 = v31;
        LODWORD(v87) = v70;
        goto LABEL_30;
      case 3:
        goto LABEL_30;
      case 4:
        goto LABEL_31;
      case 5:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_8;
      case 6:
        v38 = v31;
        v39 = v70;
        goto LABEL_73;
      case 7:
        v128 = v31;
        goto LABEL_74;
      case 8:
        goto LABEL_77;
      case 9:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_11;
      case 10:
        v46 = v31;
        v47 = v70;
        goto LABEL_102;
      case 11:
        goto LABEL_103;
      case 12:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_14;
      case 13:
        v54 = v70;
        goto LABEL_106;
      case 14:
      case 23:
      case 32:
        goto LABEL_80;
      case 15:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_17;
      case 16:
        v61 = v70;
        goto LABEL_79;
      case 17:
        OUTLINED_FUNCTION_79_11();
        goto LABEL_20;
      case 18:
        v68 = v31;
        v69 = v70;
        goto LABEL_87;
      case 19:
        v68 = v31;
        goto LABEL_88;
      case 20:
        v68 = v31;
        goto LABEL_93;
      case 21:
        bspop_boa(a1);
        v111 = advance_tok(a1, v108, v109, v110);
        v82 = v70;
        if (v111)
        {
          goto LABEL_35;
        }

        v112 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v112, v113);
        v114 = OUTLINED_FUNCTION_1_44();
        v118 = testFldeq(v114, v115, v116, v117);
        v82 = v70;
        if (v118)
        {
          goto LABEL_35;
        }

        v121 = advance_tok(a1, v70, v119, v120);
        v82 = v70;
        if (v121)
        {
          goto LABEL_35;
        }

        goto LABEL_3;
      case 22:
        v126 = v31;
        v127 = v70;
        goto LABEL_97;
      case 24:
        v105 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v105, v106);
        goto LABEL_44;
      case 25:
        goto LABEL_95;
      case 26:
LABEL_44:
        OUTLINED_FUNCTION_2_44();
        v107 = test_string_s();
        v82 = v70;
        if (v107)
        {
          goto LABEL_35;
        }

        v68 = v31;
        v100 = v70;
        goto LABEL_95;
      case 27:
        OUTLINED_FUNCTION_2_44();
        v104 = test_string_s();
        v82 = v70;
        if (v104)
        {
          goto LABEL_35;
        }

        v101 = v31;
        v102 = v70;
        goto LABEL_107;
      case 28:
        goto LABEL_107;
      case 29:
        bspop_boa(a1);
        v31 = 1;
        *(a1 + 5958) = 1;
        goto LABEL_31;
      case 31:
        v74 = v31;
        goto LABEL_22;
      case 33:
      case 37:
        bspop_boa(a1);
        goto LABEL_3;
      case 34:
        OUTLINED_FUNCTION_2_44();
        v122 = test_string_s();
        v82 = v70;
        if (v122)
        {
          goto LABEL_35;
        }

        v91 = v31;
        goto LABEL_52;
      case 35:
        goto LABEL_52;
      case 36:
        OUTLINED_FUNCTION_68_12();
        v123 = v123 || v31 == 1;
        if (!v123)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      case 38:
        if (v31 != 1)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      case 40:
LABEL_61:
        v124 = OUTLINED_FUNCTION_33_26();
        lpta_loadpn(v124, v125);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_63;
        }

        strip_ize(a1, v98, v86, v87, v101);
        break;
      case 41:
LABEL_63:
        strip_ing(a1, v98, v86, v87, v101, v100, v91, v99);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return OUTLINED_FUNCTION_100_7();
}

int *strip_medial_noun_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v198 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196[0], v196[1]);
  OUTLINED_FUNCTION_30_29();
  v9 = v197;
  bzero(v197, v10);
  if (setjmp(v197))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v11, v12, v13, v14, v15, v16, v17, v18, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v196[0], v196[1], v196[2], v196[3], v196[4], v196[5]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_32_27();
  v24 = push_ptr_init(v22, v23);
  v25 = 0;
  OUTLINED_FUNCTION_71_12(v24, v26, &null_str_12);
  v9 = &unk_280581189;
  v27 = OUTLINED_FUNCTION_22_33();
  fence_44(v27, v28, &unk_280581189);
  v29 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v29, v30, v31))
  {
    OUTLINED_FUNCTION_6_41();
    v25 = 0;
    v32 = 0;
    if (!test_string_s())
    {
LABEL_8:
      OUTLINED_FUNCTION_47_17();
      savescptr(a1, v33, v196);
      v34 = OUTLINED_FUNCTION_51_16();
      if (lpta_loadp_setscan_l(v34, v35, 1))
      {
        v36 = v32;
      }

      else
      {
        OUTLINED_FUNCTION_2_44();
        v36 = v32;
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_11:
      v37 = OUTLINED_FUNCTION_21_33();
      starttest(v37, v38);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v39 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v39, v40, v41))
      {
        v42 = v36;
      }

      else
      {
        v43 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v43, v44);
        OUTLINED_FUNCTION_5_42();
        v42 = v36;
        if (!test_string_s())
        {
LABEL_14:
          v42 = 1;
        }
      }

      goto LABEL_31;
    }
  }

  while (2)
  {
    v45 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v45, v46, v47))
    {
      OUTLINED_FUNCTION_3_43();
      LODWORD(v48) = v25;
      if (!test_string_s())
      {
LABEL_59:
        OUTLINED_FUNCTION_43_19(16, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192);
LABEL_60:
        v42 = v48;
        OUTLINED_FUNCTION_56_16(17, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v196[0]);
        v109 = OUTLINED_FUNCTION_21_33();
        starttest(v109, v110);
        v111 = OUTLINED_FUNCTION_51_16();
        if (!lpta_loadp_setscan_l(v111, v112, 1))
        {
          v113 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v113, v114);
          OUTLINED_FUNCTION_2_44();
          if (!test_string_s())
          {
            break;
          }

          goto LABEL_31;
        }

LABEL_61:
        OUTLINED_FUNCTION_103_7();
        goto LABEL_86;
      }
    }

LABEL_19:
    v49 = OUTLINED_FUNCTION_21_33();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v51, v52, v53))
    {
LABEL_20:
      v54 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v54, v55, v56) || (OUTLINED_FUNCTION_18_36(), v42 = v25, test_string_s()))
      {
LABEL_22:
        v57 = OUTLINED_FUNCTION_4_42();
        if (lpta_loadp_setscan_l(v57, v58, v59))
        {
          break;
        }

        OUTLINED_FUNCTION_3_43();
        if (test_string_s())
        {
          break;
        }

LABEL_24:
        OUTLINED_FUNCTION_48_16(32, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v196[0]);
        OUTLINED_FUNCTION_103_7();
        goto LABEL_27;
      }

LABEL_83:
      OUTLINED_FUNCTION_56_16(28, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v196[0]);
      v119 = OUTLINED_FUNCTION_51_16();
      if (lpta_loadp_setscan_l(v119, v120, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_25_31();
      if (test_string_s())
      {
        break;
      }

      *(a1 + 5990) = v25;
LABEL_86:
      LODWORD(v48) = v42;
LABEL_28:
      v62 = OUTLINED_FUNCTION_21_33();
      starttest(v62, v63);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v64 = OUTLINED_FUNCTION_33_26();
      if (strip_suffix(v64))
      {
        v42 = v48;
      }

      else
      {
        v42 = 1;
      }

      goto LABEL_31;
    }

    v60 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v60, v61);
    OUTLINED_FUNCTION_6_41();
    v42 = v25;
    if (!test_string_s())
    {
LABEL_26:
      OUTLINED_FUNCTION_48_16(26, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v196[0]);
LABEL_27:
      LODWORD(v48) = v25;
      goto LABEL_28;
    }

LABEL_31:
    v65 = v42;
LABEL_32:
    v66 = *(a1 + 104);
    if (v66)
    {
      v67 = OUTLINED_FUNCTION_38_21(v66);
      v48 = v73;
    }

    else
    {
      v67 = vback(a1, v65);
      v48 = 0;
    }

    v74 = &unk_280581191;
    v75 = 13;
    v25 = v48;
    switch(v67)
    {
      case 1:
        v25 = v48;
        continue;
      case 2:
        v32 = v48;
        goto LABEL_8;
      case 3:
        v36 = v48;
        goto LABEL_11;
      case 4:
        goto LABEL_81;
      case 5:
        bspop_boa(a1);
        OUTLINED_FUNCTION_54_16();
LABEL_81:
        *(a1 + 5962) = 1;
        goto LABEL_28;
      case 6:
        v76 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v76, v77);
        OUTLINED_FUNCTION_5_42();
        goto LABEL_45;
      case 7:
        goto LABEL_14;
      case 8:
        v87 = OUTLINED_FUNCTION_16_39();
        bspush_ca_scan(v87, v88);
        OUTLINED_FUNCTION_2_44();
LABEL_45:
        v89 = test_string_s();
        v65 = v48;
        if (!v89)
        {
          goto LABEL_14;
        }

        goto LABEL_32;
      case 9:
        v84 = OUTLINED_FUNCTION_17_37();
        bspush_ca_scan(v84, v85);
        OUTLINED_FUNCTION_2_44();
        v86 = test_string_s();
        v65 = v48;
        if (v86)
        {
          goto LABEL_32;
        }

        goto LABEL_54;
      case 10:
        OUTLINED_FUNCTION_2_44();
        v107 = test_string_s();
        v65 = v48;
        if (v107)
        {
          goto LABEL_32;
        }

        goto LABEL_54;
      case 11:
        goto LABEL_54;
      case 12:
        bspop_boa(a1);
LABEL_54:
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          v65 = v48;
        }

        else
        {
          v65 = 1;
        }

        goto LABEL_32;
      case 13:
        bspop_boa(a1);
        goto LABEL_14;
      case 14:
      case 30:
        goto LABEL_28;
      case 15:
        v25 = v48;
        goto LABEL_19;
      case 16:
        goto LABEL_59;
      case 17:
        goto LABEL_60;
      case 18:
        v42 = v48;
        goto LABEL_61;
      case 19:
        v78 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v78, v79);
        OUTLINED_FUNCTION_2_44();
        v80 = test_string_s();
        goto LABEL_40;
      case 21:
        v90 = OUTLINED_FUNCTION_1_44();
        v94 = testFldeq(v90, v91, v92, v93);
        v65 = v48;
        if (v94)
        {
          goto LABEL_32;
        }

        v97 = advance_tok(a1, v48, v95, v96);
        v65 = v48;
        if (v97)
        {
          goto LABEL_32;
        }

        goto LABEL_49;
      case 22:
        OUTLINED_FUNCTION_88_10();
        v81 = OUTLINED_FUNCTION_26_31();
        v80 = test_ptr(v81, v82, v83);
LABEL_40:
        v65 = v48;
        if (!v80)
        {
          goto LABEL_3;
        }

        goto LABEL_32;
      case 23:
LABEL_49:
        while (1)
        {
          v98 = OUTLINED_FUNCTION_0_45();
          if (testFldeq(v98, v99, v100, v101) || advance_tok(a1, v102, v103, v104))
          {
            break;
          }

          v105 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v105, v106);
        }

        v65 = v48;
        goto LABEL_32;
      case 24:
        v25 = v48;
        goto LABEL_20;
      case 25:
        OUTLINED_FUNCTION_3_43();
        v108 = test_string_s();
        v25 = v48;
        v65 = v48;
        if (!v108)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      case 26:
        goto LABEL_26;
      case 27:
        v25 = v48;
        goto LABEL_22;
      case 28:
        v42 = v48;
        goto LABEL_83;
      case 32:
        v25 = v48;
        goto LABEL_24;
      case 33:
        *(a1 + 5950) = 0;
        if (*(a1 + 5946) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_3;
      case 34:
        bspop_boa(a1);
        goto LABEL_3;
      case 35:
LABEL_65:
        v115 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v115, v116);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_67;
        }

        strip_ize(a1, v75, v74, v68, v69);
        goto LABEL_3;
      case 37:
LABEL_67:
        strip_ly_suffix(a1, v75, v74, v68, v69);
        if (v117)
        {
          goto LABEL_68;
        }

        goto LABEL_3;
      case 39:
LABEL_68:
        strip_noun_verb_suffix(a1, v75, v74, v68, v69);
        if (v118)
        {
          goto LABEL_69;
        }

        goto LABEL_3;
      case 40:
LABEL_69:
        if (strip_inner_noun_suffix(a1, v75, v74, v68, v69, v70, v71, v72))
        {
          goto LABEL_70;
        }

        goto LABEL_3;
      case 41:
LABEL_70:
        if (strip_nounadj_suffix(a1, v75, v74, v68, v69, v70, v71, v72))
        {
          goto LABEL_71;
        }

        goto LABEL_3;
      case 42:
LABEL_71:
        strip_ambig_suffix(a1, v75, v74, v68, v69);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return v9;
}

uint64_t strip_inner_noun_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262);
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_105_7(v10, v11);
  if (setjmp(v8))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_104_7(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_32_27();
  v23 = push_ptr_init(v21, v22);
  v24 = 0;
  OUTLINED_FUNCTION_71_12(v23, v25, &null_str_12);
  v26 = OUTLINED_FUNCTION_22_33();
  fence_44(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v29, v30, v31))
  {
    OUTLINED_FUNCTION_5_42();
    v24 = 0;
    LODWORD(v32) = 0;
    if (!test_string_s())
    {
LABEL_16:
      OUTLINED_FUNCTION_27_30(2, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      v48 = OUTLINED_FUNCTION_21_33();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v50, v51, 1))
      {
LABEL_17:
        v24 = v32;
        v52 = OUTLINED_FUNCTION_21_33();
        starttest(v52, v53);
        v54 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v54, v55, v56))
        {
LABEL_18:
          v57 = OUTLINED_FUNCTION_17_37();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_23_33();
          if (!lpta_loadp_setscan_l(v59, v60, v61))
          {
            v62 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v62, v63);
            v64 = OUTLINED_FUNCTION_10_40();
            if (!testFldeq(v64, v65, v66, 25))
            {
              LODWORD(v32) = v24;
              if (!advance_tok(a1, v67, v68, v69))
              {
                do
                {
LABEL_21:
                  v70 = OUTLINED_FUNCTION_35_25();
                  bspush_ca_scan(v70, v71);
                  v72 = OUTLINED_FUNCTION_0_45();
                }

                while (!testFldeq(v72, v73, v74, v75) && !advance_tok(a1, v76, v77, v78));
                v24 = v32;
              }
            }

            goto LABEL_28;
          }

LABEL_111:
          v17 = 0;
          goto LABEL_4;
        }

        v81 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v81, v82);
        OUTLINED_FUNCTION_2_44();
        v83 = test_string_s();
        LODWORD(v84) = v32;
        if (v83)
        {
          goto LABEL_28;
        }

LABEL_27:
        v24 = v84;
        OUTLINED_FUNCTION_2_44();
        if (test_string_s())
        {
          goto LABEL_28;
        }
      }

      else
      {
        v79 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v79, v80);
        OUTLINED_FUNCTION_5_42();
        v24 = v32;
        if (test_string_s())
        {
          goto LABEL_28;
        }

LABEL_25:
        OUTLINED_FUNCTION_54_16();
      }

      goto LABEL_110;
    }
  }

LABEL_7:
  v33 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v33, v34, v35))
  {
    OUTLINED_FUNCTION_6_41();
    LODWORD(v32) = v24;
    if (!test_string_s())
    {
LABEL_84:
      OUTLINED_FUNCTION_27_30(19, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      v162 = OUTLINED_FUNCTION_21_33();
      starttest(v162, v163);
      v164 = OUTLINED_FUNCTION_35_25();
      if (lpta_loadp_setscan_l(v164, v165, 1))
      {
LABEL_85:
        v24 = v32;
        v166 = OUTLINED_FUNCTION_21_33();
        starttest(v166, v167);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v168 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v168, v169, v170))
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_42();
        v171 = test_string_s();
      }

      else
      {
        v190 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v190, v191);
        v192 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v192, v193);
        OUTLINED_FUNCTION_2_44();
        v194 = test_string_s();
        LODWORD(v89) = v32;
        v24 = v32;
        if (v194)
        {
          goto LABEL_28;
        }

LABEL_101:
        v24 = v89;
        v195 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v195, v196);
        OUTLINED_FUNCTION_2_44();
        v197 = test_string_s();
        LODWORD(v90) = v24;
        if (v197)
        {
          goto LABEL_28;
        }

LABEL_102:
        v24 = v90;
        v198 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v198, v199);
        OUTLINED_FUNCTION_2_44();
        v200 = test_string_s();
        v91 = v24;
        if (v200)
        {
          goto LABEL_28;
        }

LABEL_103:
        v24 = v91;
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v201 = OUTLINED_FUNCTION_0_45();
        v171 = testFldeq(v201, v202, v203, v204);
      }

      if (!v171)
      {
        v24 = 1;
      }

      goto LABEL_28;
    }
  }

LABEL_9:
  v36 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v36, v37, v38))
  {
    OUTLINED_FUNCTION_5_42();
    LODWORD(v32) = v24;
    if (!test_string_s())
    {
LABEL_87:
      OUTLINED_FUNCTION_27_30(38, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      v172 = OUTLINED_FUNCTION_21_33();
      starttest(v172, v173);
      OUTLINED_FUNCTION_21_33();
      bspush_ca_boa();
      v174 = OUTLINED_FUNCTION_35_25();
      v24 = v32;
      if (!lpta_loadp_setscan_l(v174, v175, 1))
      {
LABEL_88:
        v24 = v32;
        OUTLINED_FUNCTION_43_19(41, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257);
        v176 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v176, v177);
        OUTLINED_FUNCTION_2_44();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_21_33();
          bspush_ca_scan_boa();
          v178 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v178, v179);
          OUTLINED_FUNCTION_6_41();
          if (!test_string_s())
          {
LABEL_90:
            v24 = 1;
          }
        }
      }

      goto LABEL_28;
    }
  }

LABEL_11:
  v39 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v39, v40, v41))
  {
    OUTLINED_FUNCTION_3_43();
    if (!test_string_s())
    {
LABEL_13:
      OUTLINED_FUNCTION_27_30(48, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      v42 = OUTLINED_FUNCTION_21_33();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v44, v45, 1))
      {
        v46 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v46, v47);
        OUTLINED_FUNCTION_5_42();
        if (!test_string_s())
        {
          goto LABEL_111;
        }

LABEL_28:
        LODWORD(v85) = v24;
        while (1)
        {
          v86 = *(a1 + 104);
          if (v86)
          {
            v87 = OUTLINED_FUNCTION_38_21(v86);
            v32 = v88;
          }

          else
          {
            v87 = vback(a1, v85);
            v32 = 0;
          }

          v17 = 0;
          v84 = v32;
          v89 = v32;
          v90 = v32;
          v91 = v32;
          switch(v87)
          {
            case 1:
              v24 = v32;
              goto LABEL_7;
            case 2:
              goto LABEL_16;
            case 3:
              goto LABEL_17;
            case 4:
              OUTLINED_FUNCTION_5_42();
              v121 = test_string_s();
              LODWORD(v85) = v32;
              if (!v121)
              {
                goto LABEL_25;
              }

              continue;
            case 5:
              goto LABEL_25;
            case 6:
            case 17:
            case 33:
            case 39:
              goto LABEL_110;
            case 7:
              v24 = v32;
              goto LABEL_18;
            case 8:
              OUTLINED_FUNCTION_2_44();
              v122 = test_string_s();
              LODWORD(v84) = v32;
              LODWORD(v85) = v32;
              if (!v122)
              {
                goto LABEL_27;
              }

              continue;
            case 9:
              goto LABEL_27;
            case 10:
            case 30:
            case 51:
            case 64:
              goto LABEL_4;
            case 11:
              OUTLINED_FUNCTION_5_42();
              v144 = test_string_s();
              LODWORD(v85) = v32;
              if (v144)
              {
                continue;
              }

              goto LABEL_77;
            case 12:
            case 14:
LABEL_77:
              v145 = OUTLINED_FUNCTION_1_44();
              v149 = testFldeq(v145, v146, v147, v148);
              LODWORD(v85) = v32;
              if (!v149)
              {
                v152 = advance_tok(a1, v32, v150, v151);
                LODWORD(v85) = v32;
                if (!v152)
                {
                  goto LABEL_81;
                }
              }

              continue;
            case 13:
              goto LABEL_21;
            case 15:
              v123 = OUTLINED_FUNCTION_1_44();
              v127 = testFldeq(v123, v124, v125, v126);
              LODWORD(v85) = v32;
              if (!v127)
              {
                v130 = advance_tok(a1, v32, v128, v129);
                LODWORD(v85) = v32;
                if (!v130)
                {
                  goto LABEL_110;
                }
              }

              continue;
            case 16:
LABEL_81:
              while (1)
              {
                v155 = OUTLINED_FUNCTION_0_45();
                if (testFldeq(v155, v156, v157, v158) || advance_tok(a1, v159, v160, v161))
                {
                  break;
                }

                v153 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v153, v154);
              }

              LODWORD(v85) = v32;
              continue;
            case 18:
              v24 = v32;
              goto LABEL_9;
            case 19:
              goto LABEL_84;
            case 20:
              goto LABEL_85;
            case 21:
              OUTLINED_FUNCTION_2_44();
              v138 = test_string_s();
              LODWORD(v85) = v32;
              if (v138)
              {
                continue;
              }

              v139 = OUTLINED_FUNCTION_0_45();
              v143 = testFldeq(v139, v140, v141, v142);
              v85 = v32;
              if (v143)
              {
                continue;
              }

              goto LABEL_34;
            case 22:
              OUTLINED_FUNCTION_2_44();
              v120 = test_string_s();
              LODWORD(v89) = v32;
              LODWORD(v85) = v32;
              if (!v120)
              {
                goto LABEL_101;
              }

              continue;
            case 23:
              goto LABEL_101;
            case 24:
              OUTLINED_FUNCTION_2_44();
              v116 = test_string_s();
              LODWORD(v90) = v32;
              LODWORD(v85) = v32;
              if (!v116)
              {
                goto LABEL_102;
              }

              continue;
            case 25:
              goto LABEL_102;
            case 26:
              v117 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v117, v118);
              goto LABEL_55;
            case 27:
              goto LABEL_103;
            case 28:
LABEL_55:
              OUTLINED_FUNCTION_2_44();
              v119 = test_string_s();
              v91 = v32;
              LODWORD(v85) = v32;
              if (!v119)
              {
                goto LABEL_103;
              }

              continue;
            case 29:
            case 55:
              bspop_boa(a1);
LABEL_34:
              v94 = advance_tok(a1, v85, v92, v93);
              LODWORD(v85) = v32;
              if (!v94)
              {
                goto LABEL_111;
              }

              continue;
            case 31:
              goto LABEL_67;
            case 32:
              bspop_boa(a1);
              OUTLINED_FUNCTION_54_16();
LABEL_67:
              *(a1 + 5962) = 1;
              *(a1 + 5978) = 1;
              v131 = OUTLINED_FUNCTION_21_33();
              starttest(v131, v132);
              v133 = OUTLINED_FUNCTION_33_26();
              if (lpta_loadp_setscan_l(v133, v134, 1))
              {
                goto LABEL_110;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_110;
              }

              v135 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v135, v136);
LABEL_70:
              OUTLINED_FUNCTION_2_44();
LABEL_71:
              v137 = test_string_s();
              LODWORD(v85) = v32;
              if (v137)
              {
                continue;
              }

LABEL_91:
              *(a1 + 4066) = 2;
              goto LABEL_110;
            case 34:
              v101 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v101, v102);
              OUTLINED_FUNCTION_5_42();
              goto LABEL_71;
            case 35:
              goto LABEL_91;
            case 36:
              goto LABEL_70;
            case 37:
              v24 = v32;
              goto LABEL_11;
            case 38:
              goto LABEL_87;
            case 40:
              bspop_boa(a1);
              goto LABEL_3;
            case 41:
              goto LABEL_88;
            case 42:
              OUTLINED_FUNCTION_2_44();
              v104 = test_string_s();
              LODWORD(v85) = v32;
              if (v104)
              {
                continue;
              }

              goto LABEL_43;
            case 43:
              bspop_boa(a1);
              goto LABEL_43;
            case 44:
              OUTLINED_FUNCTION_5_42();
              v103 = test_string_s();
              LODWORD(v85) = v32;
              if (!v103)
              {
                goto LABEL_90;
              }

              continue;
            case 45:
              goto LABEL_90;
            case 46:
LABEL_43:
              v105 = OUTLINED_FUNCTION_23_33();
              v108 = lpta_loadp_setscan_r(v105, v106, v107);
              LODWORD(v85) = v32;
              if (v108)
              {
                continue;
              }

              OUTLINED_FUNCTION_5_42();
              v109 = test_string_s();
              goto LABEL_49;
            case 47:
              goto LABEL_92;
            case 48:
              v24 = v32;
              goto LABEL_13;
            case 49:
            case 58:
              goto LABEL_108;
            case 50:
              v99 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v99, v100);
              goto LABEL_45;
            case 52:
LABEL_45:
              OUTLINED_FUNCTION_2_44();
              v110 = test_string_s();
              LODWORD(v85) = v32;
              if (!v110)
              {
                goto LABEL_46;
              }

              continue;
            case 53:
LABEL_46:
              v111 = OUTLINED_FUNCTION_0_45();
              v115 = testFldeq(v111, v112, v113, v114);
              LODWORD(v85) = v32;
              if (v115)
              {
                continue;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v95 = OUTLINED_FUNCTION_10_40();
              v98 = 24;
LABEL_48:
              v109 = testFldeq(v95, v96, v97, v98);
LABEL_49:
              if (v109)
              {
                LODWORD(v85) = v32;
              }

              else
              {
                LODWORD(v85) = 1;
              }

              break;
            case 54:
              bspop_boa(a1);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v95 = OUTLINED_FUNCTION_10_40();
              v98 = 19;
              goto LABEL_48;
            case 56:
              goto LABEL_94;
            case 57:
              goto LABEL_106;
            case 59:
              goto LABEL_95;
            case 60:
              goto LABEL_97;
            case 61:
              goto LABEL_109;
            case 63:
              goto LABEL_99;
            default:
              goto LABEL_3;
          }
        }
      }

      goto LABEL_108;
    }
  }

LABEL_92:
  v180 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v180, v181, v182))
  {
    OUTLINED_FUNCTION_6_41();
    if (!test_string_s())
    {
LABEL_106:
      OUTLINED_FUNCTION_27_30(57, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      v205 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v205, v206, 1))
      {
        OUTLINED_FUNCTION_5_42();
        if (!test_string_s())
        {
          goto LABEL_111;
        }
      }

LABEL_108:
      OUTLINED_FUNCTION_20_34();
      *(a1 + 5966) = v207;
      goto LABEL_110;
    }
  }

LABEL_94:
  strip_ess(a1, v88, v84, v89, v90);
  if (!v183)
  {
LABEL_110:
    v209 = OUTLINED_FUNCTION_33_26();
    strip_suffix(v209);
    goto LABEL_111;
  }

LABEL_95:
  v184 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v184, v185, v186))
  {
    OUTLINED_FUNCTION_22_33();
    if (!test_string_s())
    {
LABEL_109:
      OUTLINED_FUNCTION_48_16(61, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      OUTLINED_FUNCTION_20_34();
      *(a1 + 5966) = v208;
      *(a1 + 5978) = v208;
      goto LABEL_110;
    }
  }

LABEL_97:
  v187 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v187, v188, v189))
  {
    OUTLINED_FUNCTION_6_41();
    if (!test_string_s())
    {
LABEL_99:
      OUTLINED_FUNCTION_48_16(63, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261);
      goto LABEL_110;
    }
  }

LABEL_3:
  v17 = 94;
LABEL_4:
  vretproc(a1);
  return v17;
}

void strip_ation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v102 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v5, v7, v8, v9, v10, v11, v12, v13, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v90);
  OUTLINED_FUNCTION_30_29();
  bzero(v101, v14);
  v15 = setjmp(v101);
  if (v15)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_15_39(v15, v16, v17, v18, v19, v20, v21, v22, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101[0]))
  {
    goto LABEL_5;
  }

  v23 = OUTLINED_FUNCTION_32_27();
  push_ptr_init(v23, v24);
  fence_44(v6, 0, &null_str_12);
  v25 = OUTLINED_FUNCTION_4_42();
  if (lpta_loadp_setscan_l(v25, v26, v27))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_18_36();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_99_7();
  while (2)
  {
    v28 = OUTLINED_FUNCTION_35_25();
    savescptr(v28, v29, &v89);
    v30 = OUTLINED_FUNCTION_44_19();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_51_16();
    if (lpta_loadp_setscan_l(v32, v33, 1))
    {
      goto LABEL_5;
    }

    v34 = OUTLINED_FUNCTION_40_20();
    bspush_ca_scan(v34, v35);
    OUTLINED_FUNCTION_2_44();
LABEL_9:
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_44();
    if (test_string_s())
    {
LABEL_10:
      v36 = *(v6 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_38_21(v36);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_96_8();
      }

      switch(v37)
      {
        case 2:
          continue;
        case 4:
          OUTLINED_FUNCTION_2_44();
          goto LABEL_9;
        case 5:
          goto LABEL_15;
        case 6:
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_18;
        default:
          goto LABEL_5;
      }

      goto LABEL_5;
    }

    break;
  }

  *(v6 + 5958) = 2;
LABEL_17:
  v42 = OUTLINED_FUNCTION_32_27();
  insert_suffix(v42);
LABEL_18:
  *(v6 + 5950) = 0;
  if (!*(v6 + 5946))
  {
    strip_ize(v6, v38, v39, v40, v41);
  }

LABEL_5:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

int *strip_nounadj_suffix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v267 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260);
  OUTLINED_FUNCTION_30_29();
  v9 = v266;
  bzero(v266, v10);
  if (setjmp(v266))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v11, v12, v13, v14, v15, v16, v17, v18, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v262, v263, v264, v265))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_32_27();
  v24 = push_ptr_init(v22, v23);
  v9 = 0;
  OUTLINED_FUNCTION_71_12(v24, v25, &null_str_12);
  v26 = OUTLINED_FUNCTION_22_33();
  fence_44(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_4_42();
  if (!lpta_loadp_setscan_l(v29, v30, v31))
  {
    OUTLINED_FUNCTION_2_44();
    v9 = 0;
    v32 = 0;
    if (!test_string_s())
    {
LABEL_14:
      OUTLINED_FUNCTION_27_30(2, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
      v53 = OUTLINED_FUNCTION_35_25();
      if (!lpta_loadp_setscan_l(v53, v54, 1))
      {
        OUTLINED_FUNCTION_5_42();
        v9 = v32;
        if (!test_string_s())
        {
LABEL_29:
          OUTLINED_FUNCTION_27_30(4, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
          v84 = OUTLINED_FUNCTION_35_25();
          if (lpta_loadp_setscan_l(v84, v85, 1))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_6_41();
          v86 = test_string_s();
          v50 = 5958;
          v51 = 5990;
          LODWORD(v52) = v9;
          if (v86)
          {
            goto LABEL_3;
          }

          goto LABEL_31;
        }
      }

LABEL_16:
      LODWORD(v9) = v32;
      v55 = OUTLINED_FUNCTION_21_33();
      starttest(v55, v56);
      v57 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v57, v58, v59))
      {
LABEL_17:
        v60 = OUTLINED_FUNCTION_17_37();
        starttest(v60, v61);
        v62 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v62, v63, v64))
        {
          v79 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v79, v80);
          OUTLINED_FUNCTION_5_42();
          v81 = test_string_s();
          v82 = 5958;
          v73 = v9;
          LODWORD(v83) = v9;
          if (v81)
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

LABEL_18:
        v65 = OUTLINED_FUNCTION_21_33();
        starttest(v65, v66);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        v67 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v67, v68, v69))
        {
          OUTLINED_FUNCTION_5_42();
          if (!test_string_s())
          {
            v70 = OUTLINED_FUNCTION_21_33();
            bspush_ca_scan(v70, v71);
            OUTLINED_FUNCTION_2_44();
            v72 = test_string_s();
            v73 = v9;
            if (!v72)
            {
LABEL_21:
              v73 = 1;
            }

            goto LABEL_38;
          }
        }

        goto LABEL_92;
      }

      OUTLINED_FUNCTION_16_39();
      bspush_ca_scan_boa();
      v74 = OUTLINED_FUNCTION_0_45();
      goto LABEL_23;
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_4_42();
    if (lpta_loadp_setscan_l(v33, v34, v35) || (OUTLINED_FUNCTION_5_42(), v36 = test_string_s(), v37 = v9, v36))
    {
LABEL_8:
      v38 = OUTLINED_FUNCTION_21_33();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_4_42();
      if (lpta_loadp_setscan_l(v40, v41, v42))
      {
        break;
      }

      OUTLINED_FUNCTION_18_36();
      if (test_string_s())
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_48_16(42, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
      v43 = OUTLINED_FUNCTION_1_44();
      if (!testFldeq(v43, v44, v45, v46) && !advance_tok(a1, v47, v48, v49))
      {
LABEL_12:
        OUTLINED_FUNCTION_83_11();
        LODWORD(v52) = v9;
LABEL_31:
        *(a1 + v51) = 1;
        v82 = v50;
        LODWORD(v83) = v52;
LABEL_32:
        *(a1 + 5962) = 1;
        *(a1 + v82) = 1;
        LODWORD(v87) = v83;
        goto LABEL_33;
      }

      goto LABEL_92;
    }

LABEL_76:
    v87 = v37;
    OUTLINED_FUNCTION_43_19(24, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253);
LABEL_77:
    OUTLINED_FUNCTION_27_30(25, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
    v144 = OUTLINED_FUNCTION_35_25();
    if (lpta_loadp_setscan_l(v144, v145, 1))
    {
      v9 = v87;
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_5_42();
    v9 = v87;
    if (test_string_s())
    {
LABEL_80:
      v146 = OUTLINED_FUNCTION_21_33();
      starttest(v146, v147);
      v148 = OUTLINED_FUNCTION_23_33();
      if (lpta_loadp_setscan_l(v148, v149, v150) || (OUTLINED_FUNCTION_2_44(), test_string_s()))
      {
LABEL_82:
        v151 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v151, v152, v153);
        v154 = OUTLINED_FUNCTION_13_40();
        if (!setd_lookup(v154, v155, 382))
        {
          *(a1 + 5990) = v9;
          OUTLINED_FUNCTION_83_11();
          LODWORD(v52) = v9;
          goto LABEL_31;
        }

LABEL_83:
        v156 = OUTLINED_FUNCTION_21_33();
        starttest(v156, v157);
        v158 = OUTLINED_FUNCTION_23_33();
        if (!lpta_loadp_setscan_l(v158, v159, v160))
        {
          v175 = OUTLINED_FUNCTION_21_33();
          bspush_ca_scan(v175, v176);
          OUTLINED_FUNCTION_3_43();
          test_string_s();
          OUTLINED_FUNCTION_83_11();
          v73 = v9;
          LODWORD(v52) = v9;
          if (v177)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

LABEL_84:
        v161 = OUTLINED_FUNCTION_21_33();
        starttest(v161, v162);
        v163 = OUTLINED_FUNCTION_23_33();
        if (lpta_loadp_setscan_l(v163, v164, v165))
        {
          break;
        }

        v166 = OUTLINED_FUNCTION_0_45();
        if (testFldeq(v166, v167, v168, v169) || advance_tok(a1, v170, v171, v172))
        {
LABEL_92:
          v73 = v9;
          goto LABEL_38;
        }

        v173 = OUTLINED_FUNCTION_21_33();
        starttest_l(v173, v174);
        OUTLINED_FUNCTION_21_33();
        bspush_ca_boa();
        OUTLINED_FUNCTION_41_20();
        v78 = one_eng_syllable();
LABEL_24:
        if (v78)
        {
          v73 = v9;
        }

        else
        {
          v73 = 1;
        }

        goto LABEL_38;
      }

      v178 = OUTLINED_FUNCTION_0_45();
      if (testFldeq(v178, v179, v180, v181))
      {
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_21_33();
      bspush_ca_scan_boa();
      v74 = OUTLINED_FUNCTION_10_40();
      v77 = 24;
LABEL_23:
      v78 = testFldeq(v74, v75, v76, v77);
      goto LABEL_24;
    }

LABEL_33:
    v88 = OUTLINED_FUNCTION_21_33();
    starttest(v88, v89);
    OUTLINED_FUNCTION_21_33();
    bspush_ca_boa();
    v90 = OUTLINED_FUNCTION_33_26();
    if (strip_suffix(v90))
    {
      v73 = v87;
    }

    else
    {
      v73 = 1;
    }

LABEL_38:
    v91 = *(a1 + 104);
    if (v91)
    {
      v92 = OUTLINED_FUNCTION_38_21(v91);
      v9 = v96;
    }

    else
    {
      v92 = vback(a1, v73);
      v9 = 0;
    }

    v50 = 5966;
    v97 = 5958;
    v82 = 5958;
    v51 = 5958;
    v52 = v9;
    v83 = v9;
    switch(v92)
    {
      case 1:
        continue;
      case 2:
        v32 = v9;
        goto LABEL_14;
      case 3:
        LODWORD(v32) = v9;
        goto LABEL_16;
      case 4:
        goto LABEL_29;
      case 6:
      case 7:
      case 12:
        goto LABEL_32;
      case 8:
        goto LABEL_17;
      case 9:
      case 29:
        bspop_boa(a1);
        v101 = advance_tok(a1, v98, v99, v100);
        v73 = v9;
        if (v101)
        {
          goto LABEL_38;
        }

        goto LABEL_3;
      case 10:
        goto LABEL_18;
      case 11:
        OUTLINED_FUNCTION_5_42();
        v107 = test_string_s();
        v73 = v9;
        if (v107)
        {
          goto LABEL_38;
        }

        v108 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v108, v109);
        OUTLINED_FUNCTION_5_42();
        v110 = test_string_s();
        goto LABEL_58;
      case 13:
        v122 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v122, v123);
        v124 = OUTLINED_FUNCTION_1_44();
        v128 = testFldeq(v124, v125, v126, v127);
        v73 = v9;
        if (v128)
        {
          goto LABEL_38;
        }

        v131 = advance_tok(a1, v9, v129, v130);
        goto LABEL_61;
      case 14:
        OUTLINED_FUNCTION_5_42();
        v131 = test_string_s();
LABEL_61:
        v73 = v9;
        if (!v131)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      case 15:
LABEL_62:
        OUTLINED_FUNCTION_21_33();
        bspush_ca_scan_boa();
        v135 = OUTLINED_FUNCTION_1_44();
        if (testFldeq(v135, v136, v137, v138))
        {
          v73 = v9;
        }

        else
        {
          v73 = 1;
        }

        goto LABEL_38;
      case 16:
        bspop_boa(a1);
        v110 = advance_tok(a1, v132, v133, v134);
        goto LABEL_58;
      case 18:
        bspop_boa(a1);
        OUTLINED_FUNCTION_41_20();
        v110 = one_eng_syllable();
LABEL_58:
        v73 = v9;
        if (v110)
        {
          goto LABEL_38;
        }

        v82 = 5958;
        LODWORD(v83) = v9;
        goto LABEL_32;
      case 19:
        v104 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v104, v105);
        goto LABEL_46;
      case 20:
        goto LABEL_21;
      case 21:
LABEL_46:
        OUTLINED_FUNCTION_2_44();
        v106 = test_string_s();
        v73 = v9;
        if (!v106)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      case 22:
      case 27:
        LODWORD(v87) = v9;
        goto LABEL_33;
      case 23:
        goto LABEL_8;
      case 24:
        v37 = v9;
        goto LABEL_76;
      case 25:
        v87 = v9;
        goto LABEL_77;
      case 26:
        goto LABEL_80;
      case 28:
        goto LABEL_82;
      case 30:
        goto LABEL_83;
      case 31:
      case 34:
      case 39:
        goto LABEL_31;
      case 32:
        goto LABEL_84;
      case 33:
        v111 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v111, v112);
        OUTLINED_FUNCTION_6_41();
        goto LABEL_52;
      case 35:
        v139 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v139, v140);
        goto LABEL_66;
      case 36:
        v102 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v102, v103);
        OUTLINED_FUNCTION_5_42();
LABEL_52:
        v113 = test_string_s();
        v73 = v9;
        if (v113)
        {
          goto LABEL_38;
        }

        v114 = OUTLINED_FUNCTION_0_45();
        v118 = testFldeq(v114, v115, v116, v117);
        v73 = v9;
        if (v118)
        {
          goto LABEL_38;
        }

        v121 = advance_tok(a1, v9, v119, v120);
LABEL_67:
        v73 = v9;
        if (!v121)
        {
          goto LABEL_12;
        }

        goto LABEL_38;
      case 37:
LABEL_66:
        OUTLINED_FUNCTION_6_41();
        v121 = test_string_s();
        goto LABEL_67;
      case 40:
      case 44:
        bspop_boa(a1);
        goto LABEL_3;
      case 42:
        goto LABEL_10;
      case 43:
        OUTLINED_FUNCTION_68_12();
        if (!v141)
        {
          goto LABEL_72;
        }

        goto LABEL_3;
      case 45:
LABEL_72:
        v142 = OUTLINED_FUNCTION_32_27();
        lpta_loadpn(v142, v143);
        OUTLINED_FUNCTION_67_14();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_74;
        }

        if (strip_inner_adj_suffix(a1, v97, v50, v52, v83, v93, v94, v95))
        {
          goto LABEL_97;
        }

        goto LABEL_3;
      case 47:
LABEL_74:
        strip_inner_noun_suffix(a1, v97, v50, v52, v83, v93, v94, v95);
        goto LABEL_3;
      case 48:
LABEL_97:
        strip_ation(a1, v97, v50, v52, v83);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_94_8();
  return v9;
}

void strip_ize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  OUTLINED_FUNCTION_82_11();
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v141, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v160, v8);
  v9 = setjmp(v160);
  if (!v9 && !OUTLINED_FUNCTION_57_15(v9, v141, v10, v11, v12, v13, v14, v15, v138, v139, v140, v141[0], v141[1], v141[2], v141[3], v141[4], v141[5], v141[6], v141[7], v141[8], v141[9], v141[10], v141[11], v141[12], v141[13], v141[14], v141[15], v141[16], v141[17], v141[18], v141[19], v141[20], v141[21], v141[22], v142, v143, v144, v145, v146, v147, *v148, *&v148[8], v149[0], v149[1], v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160[0]))
  {
    v16 = OUTLINED_FUNCTION_73_11();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_72_11();
    push_ptr_init(v18, v19);
    v20 = OUTLINED_FUNCTION_98_8();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_87_10();
    push_ptr_init(v22, v23);
    push_ptr_init(v6, &v142);
    fence_44(v6, 0, &null_str_12);
    v24 = OUTLINED_FUNCTION_13_40();
    fence_44(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_91_9();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_24_31();
    if (!lpta_loadp_setscan_l(v29, v30, v160))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        v31 = OUTLINED_FUNCTION_21_33();
        bspush_ca_scan(v31, v32);
        LODWORD(v33) = 0;
LABEL_7:
        v34 = OUTLINED_FUNCTION_35_25();
        savescptr(v34, v35, &v146);
        OUTLINED_FUNCTION_2_44();
        v36 = test_string_s();
        v37 = v33;
        if (!v36)
        {
LABEL_8:
          v38 = v37;
          v39 = OUTLINED_FUNCTION_77_11();
          savescptr(v39, v40, v148);
          v41 = v38;
LABEL_9:
          LODWORD(v33) = v41;
          OUTLINED_FUNCTION_2_44();
          v42 = test_string_s();
          v43 = v33;
          if (!v42)
          {
LABEL_10:
            LODWORD(v33) = v43;
            v44 = OUTLINED_FUNCTION_63_15();
            savescptr(v44, v45, v149);
LABEL_11:
            v46 = OUTLINED_FUNCTION_64_14();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_90_9();
            if (lpta_loadp_setscan_l(v48, v49, 1))
            {
LABEL_12:
              v50 = OUTLINED_FUNCTION_70_12();
              starttest(v50, v51);
              OUTLINED_FUNCTION_51_16();
              bspush_ca_boa();
              v52 = OUTLINED_FUNCTION_90_9();
              v54 = lpta_loadp_setscan_l(v52, v53, 1);
              LODWORD(v55) = v33;
              if (!v54)
              {
LABEL_13:
                LODWORD(v33) = v55;
                v56 = OUTLINED_FUNCTION_78_11();
                bspush_ca_scan(v56, v57);
                v58 = OUTLINED_FUNCTION_102_7();
                bspush_ca_scan(v58, v59);
                v60 = OUTLINED_FUNCTION_22_33();
                v62 = testFldeq(v60, v61, 4, 1);
                v65 = v33;
                if (!v62)
                {
LABEL_14:
                  LODWORD(v33) = v65;
                  if (!advance_tok(v6, v63, v64, v55))
                  {
                    LODWORD(v33) = 1;
                  }
                }
              }
            }

            else
            {
              v66 = OUTLINED_FUNCTION_22_33();
              if (!testFldeq(v66, v67, 4, 1) && !advance_tok(v6, v68, v69, v70))
              {
                goto LABEL_5;
              }
            }
          }
        }

        LODWORD(v63) = v33;
        while (2)
        {
          v71 = *(v6 + 104);
          if (v71)
          {
            v72 = OUTLINED_FUNCTION_38_21(v71);
            v33 = v63;
          }

          else
          {
            v72 = vback(v6, v63);
            v33 = 0;
          }

          v41 = v33;
          v55 = v33;
          v65 = v33;
          v64 = 0;
          switch(v72)
          {
            case 2:
              OUTLINED_FUNCTION_2_44();
              v76 = test_string_s();
              v41 = v33;
              LODWORD(v63) = v33;
              if (!v76)
              {
                goto LABEL_9;
              }

              continue;
            case 3:
              goto LABEL_7;
            case 4:
              v37 = v33;
              goto LABEL_8;
            case 5:
              goto LABEL_9;
            case 6:
              v43 = v33;
              goto LABEL_10;
            case 7:
              goto LABEL_11;
            case 8:
              goto LABEL_12;
            case 9:
              v95 = OUTLINED_FUNCTION_72_11();
              lpta_loadpn(v95, v96);
              OUTLINED_FUNCTION_67_14();
              if (compare_ptas(v6) || testneq(v6))
              {
                goto LABEL_37;
              }

              v127 = OUTLINED_FUNCTION_21_33();
              starttest_e(v127, v128);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              v110 = ise_to_ize(v6, v148, &v146, v129, v130, v131, v132, v133);
              goto LABEL_40;
            case 10:
            case 16:
              bspop_boa(v6);
              goto LABEL_5;
            case 11:
              goto LABEL_13;
            case 12:
              v77 = advance_tok(v6, v63, 0, v33);
              LODWORD(v55) = v33;
              LODWORD(v63) = v33;
              if (!v77)
              {
                goto LABEL_13;
              }

              continue;
            case 13:
              v78 = OUTLINED_FUNCTION_10_40();
              v81 = testFldeq(v78, v79, v80, 30);
              v65 = v33;
              v63 = v33;
              if (!v81)
              {
                goto LABEL_14;
              }

              continue;
            case 14:
              goto LABEL_14;
            case 15:
LABEL_37:
              v97 = OUTLINED_FUNCTION_21_33();
              starttest(v97, v98);
              v99 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v99, v100, v101))
              {
                goto LABEL_38;
              }

              v124 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v124, v125);
              goto LABEL_50;
            case 17:
LABEL_38:
              v102 = OUTLINED_FUNCTION_21_33();
              starttest(v102, v103);
              v104 = OUTLINED_FUNCTION_23_33();
              if (lpta_loadp_setscan_l(v104, v105, v106))
              {
                goto LABEL_39;
              }

              v111 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v111, v112);
              goto LABEL_44;
            case 18:
LABEL_50:
              OUTLINED_FUNCTION_2_44();
              v126 = test_string_s();
              LODWORD(v63) = v33;
              if (!v126)
              {
                goto LABEL_5;
              }

              continue;
            case 20:
              goto LABEL_39;
            case 21:
LABEL_44:
              OUTLINED_FUNCTION_2_44();
              v113 = test_string_s();
              LODWORD(v63) = v33;
              if (!v113)
              {
                goto LABEL_45;
              }

              continue;
            case 22:
LABEL_45:
              v114 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v114, v115);
              goto LABEL_46;
            case 23:
LABEL_46:
              OUTLINED_FUNCTION_2_44();
              v116 = test_string_s();
              LODWORD(v63) = v33;
              if (!v116)
              {
                goto LABEL_47;
              }

              continue;
            case 24:
LABEL_47:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v117 = OUTLINED_FUNCTION_1_44();
              v121 = testFldeq(v117, v118, v119, v120);
              LODWORD(v63) = v33;
              if (v121)
              {
                continue;
              }

              v110 = advance_tok(v6, v33, v122, v123);
LABEL_40:
              if (v110)
              {
                LODWORD(v63) = v33;
              }

              else
              {
                LODWORD(v63) = 1;
              }

              continue;
            case 25:
              bspop_boa(v6);
              OUTLINED_FUNCTION_54_16();
LABEL_39:
              v107 = OUTLINED_FUNCTION_21_33();
              starttest(v107, v108);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              v109 = OUTLINED_FUNCTION_73_11();
              v110 = strip_suffix(v109);
              goto LABEL_40;
            case 26:
              if (!*(v6 + 5946))
              {
                strip_nounadj_suffix(v6, v63, 0, v33, v33, v73, v74, v75);
              }

              goto LABEL_5;
            case 27:
              bspop_boa(v6);
              v82 = OUTLINED_FUNCTION_21_33();
              starttest(v82, v83);
              v84 = OUTLINED_FUNCTION_4_42();
              if (!lpta_loadp_setscan_r(v84, v85, v86))
              {
                goto LABEL_31;
              }

              goto LABEL_5;
            case 29:
LABEL_31:
              savescptr(v6, 29, &v142);
              OUTLINED_FUNCTION_18_36();
              v87 = test_string_s();
              LODWORD(v63) = v33;
              if (!v87)
              {
                v88 = OUTLINED_FUNCTION_23_33();
                v91 = lpta_loadp_setscan_l(v88, v89, v90);
                LODWORD(v63) = v33;
                if (!v91)
                {
                  v94 = advance_tok(v6, v33, v92, v93);
                  LODWORD(v63) = v33;
                  if (!v94)
                  {
                    goto LABEL_56;
                  }
                }
              }

              continue;
            case 30:
LABEL_56:
              v134 = OUTLINED_FUNCTION_36_23();
              savescptr(v134, v135, v136);
              v137 = OUTLINED_FUNCTION_35_25();
              delete_inp_from_left(v137);
              break;
            default:
              goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}