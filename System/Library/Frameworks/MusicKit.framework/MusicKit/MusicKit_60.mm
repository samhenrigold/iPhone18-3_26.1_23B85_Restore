uint64_t Song.convertToLegacyModelStorageDictionary(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_1();
  v598 = v5 - v6;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v597 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_99();
  v597 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v597 - v13;
  v15 = *a1;
  sub_2172A546C(v16, v17, v18);
  v603 = sub_217751DC8();
  if (qword_280BE9708 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA860(v19, v20, v21, v22, v23, v24, v25, v26, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14]);
  memcpy(v604, v602, 0x221uLL);
  memcpy(v605, v602, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v605) == 1)
  {
    memset(v601, 0, 32);
  }

  else
  {
    memcpy(v600, v605, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v601);
    sub_2171F0738(v604, &qword_27CB24400, &unk_21775E9A0);
  }

  v33 = &v603;
  sub_21729D81C(v601, 0, v27, v28, v29, v30, v31, v32, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE98C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA86C(v34, v35, v36, v37, v38, v39, v40, v41, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14]);
  if ((v602[0] & 0xFF00) == 0x200)
  {
    v42 = OUTLINED_FUNCTION_12_70();
  }

  else
  {
    v33 = sub_2176FE84C((LODWORD(v602[0]) | (BYTE4(v602[0]) << 32)) & 0x1010101FFLL);
    v42 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
  }

  v602[0] = v33;
  v602[3] = v42;
  v43 = OUTLINED_FUNCTION_4_55();
  sub_21729D81C(v43, 35, v44, v45, v46, v47, v48, v49, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE98A0 != -1)
  {
    swift_once();
  }

  v50 = sub_2172A41AC();
  if (v51)
  {
    v52 = MEMORY[0x277D837D0];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v602[2] = 0;
  }

  v602[0] = v50;
  v602[1] = v51;
  v53 = OUTLINED_FUNCTION_1_54(v52);
  sub_21729D81C(v53, 1, v54, v55, v56, v57, v58, v59, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE9868 != -1)
  {
    swift_once();
  }

  v60 = sub_2172A41C0();
  if (v61)
  {
    v60 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v62 = MEMORY[0x277D83B88];
  }

  v63 = OUTLINED_FUNCTION_2_136(v60, v62);
  sub_21729D81C(v63, 2, v64, v65, v66, v67, v68, v69, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE9808 != -1)
  {
    swift_once();
  }

  v70 = sub_2172A41C0();
  if (v71)
  {
    v70 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v72 = MEMORY[0x277D83B88];
  }

  v73 = OUTLINED_FUNCTION_2_136(v70, v72);
  sub_21729D81C(v73, 3, v74, v75, v76, v77, v78, v79, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE96C8 != -1)
  {
    swift_once();
  }

  v80 = sub_2172A41AC();
  if (v81)
  {
    v82 = MEMORY[0x277D837D0];
  }

  else
  {
    v80 = 0;
    v82 = 0;
    v602[2] = 0;
  }

  v602[0] = v80;
  v602[1] = v81;
  v83 = OUTLINED_FUNCTION_1_54(v82);
  sub_21729D81C(v83, 4, v84, v85, v86, v87, v88, v89, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
  if (qword_280BE9910 != -1)
  {
    swift_once();
  }

  v90 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_17_20();
  sub_2176CA8FC(v91, v92, v93, v94, v95, v96, v97, v98, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
  v99 = LOBYTE(v602[0]);
  switch(LOBYTE(v602[0]))
  {
    case 1:
      v99 = 1;
      goto LABEL_44;
    case 2:
      v99 = 2;
      goto LABEL_44;
    case 3:
      v99 = 3;
      goto LABEL_44;
    case 4:
      v99 = 4;
      goto LABEL_44;
    case 5:
      v99 = 5;
      goto LABEL_44;
    case 6:
      v99 = 6;
      goto LABEL_44;
    case 7:
      v99 = 7;
      goto LABEL_44;
    case 8:
      v99 = 8;
      goto LABEL_44;
    case 9:
      v99 = 9;
      goto LABEL_44;
    case 0xA:
      memset(v602, 0, 32);
      goto LABEL_45;
    default:
LABEL_44:
      v100 = [objc_opt_self() rawValueForCloudStatus_];
      v602[3] = v90;
      v602[0] = v100;
LABEL_45:
      v101 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v101, 5, v102, v103, v104, v105, v106, v107, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9950 != -1)
      {
        swift_once();
      }

      v108 = sub_2172A41C0();
      if (v109)
      {
        v108 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v110 = MEMORY[0x277D83B88];
      }

      v111 = OUTLINED_FUNCTION_2_136(v108, v110);
      sub_21729D81C(v111, 6, v112, v113, v114, v115, v116, v117, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE96D8 != -1)
      {
        swift_once();
      }

      v118 = sub_2172A41F0();
      if (v119)
      {
        v118 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v120 = MEMORY[0x277D839F8];
      }

      HIDWORD(v599) = v15;
      v121 = OUTLINED_FUNCTION_2_136(v118, v120);
      sub_21729D81C(v121, 7, v122, v123, v124, v125, v126, v127, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA5B8(v128, v129, v130, v131, v132, v133, v134, v135, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      v136 = MEMORY[0x277D839B0];
      v602[3] = MEMORY[0x277D839B0];
      LOBYTE(v602[0]) &= 1u;
      v137 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v137, 8, v138, v139, v140, v141, v142, v143, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9840 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C028F0, v144, v145, v146, v147, v148, v149, v150, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      sub_2177517D8();
      OUTLINED_FUNCTION_9(v14);
      if (v151)
      {
        sub_2171F0738(v14, &qword_27CB241C0, &qword_217759480);
        memset(v602, 0, 32);
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v152 + 32))();
      }

      v153 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v153, 12, v154, v155, v156, v157, v158, v159, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE97C8 != -1)
      {
        swift_once();
      }

      v167 = (v2 + 16);
      sub_2172A43D0(qword_280C02890, v160, v161, v162, v163, v164, v165, v166, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      OUTLINED_FUNCTION_7_1();
      if (v151)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v168);
        v169 = MEMORY[0x277D839B0];
      }

      v170 = OUTLINED_FUNCTION_1_54(v169);
      sub_21729D81C(v170, 9, v171, v172, v173, v174, v175, v176, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v602[3] = v136;
      LOBYTE(v602[0]) = 0;
      v177 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v177, 10, v178, v179, v180, v181, v182, v183, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE97E8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA910(v184, v185, v186, v187, v188, v189, v190, v191, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      if (LOBYTE(v602[0]) == 2)
      {
        v192 = OUTLINED_FUNCTION_12_70();
      }

      else
      {
        v167 = sub_2176FE78C(v602[0] & 1);
        v192 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      v193 = v9;
      v602[0] = v167;
      v602[3] = v192;
      v194 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v194, 38, v195, v196, v197, v198, v199, v200, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v602[3] = v136;
      LOBYTE(v602[0]) = 0;
      v201 = OUTLINED_FUNCTION_4_55();
      v208 = sub_21729D81C(v201, 11, v202, v203, v204, v205, v206, v207, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE8040 != -1)
      {
        v208 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
      }

      v211 = qword_280BE8048;
      v212 = unk_280BE8050;
      v213 = byte_280BE8058;
      v214 = qword_280BE8060;
      v215 = unk_280BE8068;
      v216 = byte_280BE8070;
      v602[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
      v602[4] = sub_2171FEF88(v208, v209, v210);
      v217 = swift_allocObject();
      v602[0] = v217;
      *(v217 + 16) = v211;
      *(v217 + 24) = v212;
      *(v217 + 32) = v213;
      *(v217 + 40) = v214;
      *(v217 + 48) = v215;
      *(v217 + 56) = v216;
      LOBYTE(v211) = sub_217751978();
      __swift_destroy_boxed_opaque_existential_1(v602);
      v218 = v193;
      v219 = v597;
      v220 = v598;
      if (v211)
      {
        if (qword_280BE97F8 != -1)
        {
          OUTLINED_FUNCTION_102_1(&qword_280BE97F8);
        }

        OUTLINED_FUNCTION_17_20();
        sub_2176CA924(v221, v222, v223, v224, v225, v226, v227, v228, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
        v602[3] = MEMORY[0x277D839B0];
        LOBYTE(v602[0]) = LOBYTE(v602[0]) == 2;
        v229 = OUTLINED_FUNCTION_4_55();
        sub_21729D81C(v229, 13, v230, v231, v232, v233, v234, v235, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      }

      if (qword_280BE97F8 != -1)
      {
        OUTLINED_FUNCTION_102_1(&qword_280BE97F8);
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA924(v236, v237, v238, v239, v240, v241, v242, v243, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      v244 = MEMORY[0x277D839B0];
      v602[3] = MEMORY[0x277D839B0];
      LOBYTE(v602[0]) = LOBYTE(v602[0]) == 1;
      v245 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v245, 14, v246, v247, v248, v249, v250, v251, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9830 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C028E0, v252, v253, v254, v255, v256, v257, v258, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      OUTLINED_FUNCTION_7_1();
      if (v151)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v259);
        v260 = MEMORY[0x277D839B0];
      }

      v261 = OUTLINED_FUNCTION_1_54(v260);
      sub_21729D81C(v261, 15, v262, v263, v264, v265, v266, v267, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE97A8 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02880, v268, v269, v270, v271, v272, v273, v274, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      OUTLINED_FUNCTION_7_1();
      if (v151)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v275);
        v276 = MEMORY[0x277D839B0];
      }

      v277 = OUTLINED_FUNCTION_1_54(v276);
      sub_21729D81C(v277, 16, v278, v279, v280, v281, v282, v283, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE8248 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C024F8, v284, v285, v286, v287, v288, v289, v290, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v602[3] = v244;
      OUTLINED_FUNCTION_18_4(v291);
      v292 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v292, 18, v293, v294, v295, v296, v297, v298, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE8270 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02520, v299, v300, v301, v302, v303, v304, v305, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v602[3] = v244;
      OUTLINED_FUNCTION_18_4(v306);
      v307 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v307, 19, v308, v309, v310, v311, v312, v313, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE97A0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA938(v314, v315, v316, v317, v318, v319, v320, v321, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      v322 = LOBYTE(v602[0]);
      switch(LOBYTE(v602[0]))
      {
        case 1:
          v322 = 1;
          goto LABEL_101;
        case 2:
          v322 = 2;
          goto LABEL_101;
        case 3:
          v322 = 3;
          goto LABEL_101;
        case 4:
          v322 = 4;
          goto LABEL_101;
        case 5:
          OUTLINED_FUNCTION_37_40();
          goto LABEL_102;
        default:
LABEL_101:
          v323 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
          v602[3] = MEMORY[0x277D83B88];
          v602[0] = v323;
LABEL_102:
          v324 = OUTLINED_FUNCTION_4_55();
          sub_21729D81C(v324, 20, v325, v326, v327, v328, v329, v330, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
          if (qword_280BE9798 != -1)
          {
            swift_once();
          }

          break;
      }

      break;
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA94C(v331, v332, v333, v334, v335, v336, v337, v338, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
  v339 = LOBYTE(v602[0]);
  switch(LOBYTE(v602[0]))
  {
    case 1:
      v339 = 1;
      goto LABEL_113;
    case 2:
      v339 = 2;
      goto LABEL_113;
    case 3:
      v339 = 3;
      goto LABEL_113;
    case 4:
      v339 = 4;
      goto LABEL_113;
    case 5:
      v339 = 5;
      goto LABEL_113;
    case 6:
      v339 = 6;
      goto LABEL_113;
    case 7:
      OUTLINED_FUNCTION_37_40();
      goto LABEL_114;
    default:
LABEL_113:
      v340 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
      v602[3] = MEMORY[0x277D83B88];
      v602[0] = v340;
LABEL_114:
      v341 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v341, 21, v342, v343, v344, v345, v346, v347, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9780 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA960(v348, v349, v350, v351, v352, v353, v354, v355, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      if (v602[1])
      {
        v356 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v600[0] = v602[0];
        v356 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
        v357 = MEMORY[0x277D83B88];
      }

      v358 = OUTLINED_FUNCTION_2_136(v356, v357);
      sub_21729D81C(v358, 22, v359, v360, v361, v362, v363, v364, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9820 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C028D8, v365, v366, v367, v368, v369, v370, v371, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      OUTLINED_FUNCTION_9(v219);
      if (v151)
      {
        sub_2171F0738(v219, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v372 + 32))();
      }

      v373 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v373, 23, v374, v375, v376, v377, v378, v379, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE97D8 != -1)
      {
        swift_once();
      }

      v387 = v2;
      sub_2176CA580(qword_280C028A0, v380, v381, v382, v383, v384, v385, v386, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      OUTLINED_FUNCTION_9(v218);
      if (v151)
      {
        sub_2171F0738(v218, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v388 + 32))();
      }

      v389 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v389, 24, v390, v391, v392, v393, v394, v395, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9818 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA974(v396, v397, v398, v399, v400, v401, v402, v403, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16]);
      if (v602[1])
      {
        v387 = sub_2176FE688(v602[0] & 0xFF01, v602[1], v602[2] & 1);
        v404 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      else
      {
        v404 = OUTLINED_FUNCTION_12_70();
      }

      v602[0] = v387;
      v602[3] = v404;
      v405 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v405, 39, v406, v407, v408, v409, v410, v411, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE8260 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA5A0(v412, v413, v414, v415, v416, v417, v418, v419, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14]);
      if (v602[2] == 1)
      {
        v420 = OUTLINED_FUNCTION_12_70();
      }

      else
      {
        v387 = sub_2176FE58C(v602[0] & 0xFFFFFF, v602[1], v602[2]);
        v420 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      v602[0] = v387;
      v602[3] = v420;
      v421 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v421, 40, v422, v423, v424, v425, v426, v427, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9690 != -1)
      {
        swift_once();
      }

      v428 = sub_2172A41C0();
      if (v429)
      {
        v428 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v430 = MEMORY[0x277D83B88];
      }

      v431 = OUTLINED_FUNCTION_2_136(v428, v430);
      sub_21729D81C(v431, 25, v432, v433, v434, v435, v436, v437, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE98F0 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C02950, v438, v439, v440, v441, v442, v443, v444, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      OUTLINED_FUNCTION_9(v220);
      if (v151)
      {
        sub_2171F0738(v220, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v445 + 32))();
      }

      v446 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v446, 26, v447, v448, v449, v450, v451, v452, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE82A0 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02540, v453, v454, v455, v456, v457, v458, v459, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v602[3] = v244;
      OUTLINED_FUNCTION_18_4(v460);
      v461 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v461, 27, v462, v463, v464, v465, v466, v467, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      v468 = sub_2172A41AC();
      if (v469)
      {
        v470 = v468;
      }

      else
      {
        v470 = 0;
      }

      v471 = 0xE000000000000000;
      v602[3] = MEMORY[0x277D837D0];
      if (v469)
      {
        v471 = v469;
      }

      v602[0] = v470;
      v602[1] = v471;
      v472 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v472, 28, v473, v474, v475, v476, v477, v478, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v479 = BYTE4(v599);
      if (qword_280BE98E8 != -1)
      {
        swift_once();
      }

      v480 = sub_2172A41C0();
      if (v481)
      {
        v480 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v482 = MEMORY[0x277D83B88];
      }

      v483 = OUTLINED_FUNCTION_2_136(v480, v482);
      sub_21729D81C(v483, 29, v484, v485, v486, v487, v488, v489, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      if (qword_280BE9880 != -1)
      {
        swift_once();
      }

      v497 = sub_2172A43DC(qword_280BE9888);
      if (qword_280BE97B8 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02888, v490, v491, v492, v493, v494, v495, v496, v597, v598, v599, v600[0], v600[1], v600[2], SWORD2(v600[2]), SBYTE6(v600[2]), HIBYTE(v600[2]), v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      v499 = sub_217659BD4(v497, v498);
      v501 = v500;

      if (v501)
      {
        v499 = 0;
        v502 = 0;
        v602[2] = 0;
        v602[1] = 0;
      }

      else
      {
        v502 = MEMORY[0x277D83B88];
      }

      v602[0] = v499;
      v503 = OUTLINED_FUNCTION_1_54(v502);
      sub_21729D81C(v503, 30, v504, v505, v506, v507, v508, v509, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9928 != -1)
      {
        swift_once();
      }

      v510 = sub_2172A41F0();
      if (v511)
      {
        v510 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v512 = MEMORY[0x277D839F8];
      }

      v513 = OUTLINED_FUNCTION_2_136(v510, v512);
      sub_21729D81C(v513, 31, v514, v515, v516, v517, v518, v519, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE98D8 != -1)
      {
        swift_once();
      }

      v520 = sub_2172A41C0();
      if (v521)
      {
        v520 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v522 = MEMORY[0x277D83B88];
      }

      v523 = OUTLINED_FUNCTION_2_136(v520, v522);
      sub_21729D81C(v523, 32, v524, v525, v526, v527, v528, v529, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9738 != -1)
      {
        OUTLINED_FUNCTION_1_33(&qword_280BE9738);
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA544(v530, v531, v532, v533, v534, v535, v536, v537, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      if (v602[11])
      {
        sub_2172CE9F8();
        sub_2171F0738(v602, &qword_27CB25388, &unk_21775D410);
        if (v600[1])
        {
          sub_21725CF0C(v600, v601);
          sub_2176FDE74();
          v539 = v538;
          sub_21725CE44(v600);
          goto LABEL_188;
        }

        v540 = &unk_27CB275E0;
        v541 = &qword_2177589D0;
        v542 = v600;
      }

      else
      {
        v540 = &qword_27CB25318;
        v541 = &qword_2177657C0;
        v542 = v602;
      }

      sub_2171F0738(v542, v540, v541);
      v539 = 0;
LABEL_188:
      v543 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      v602[3] = v543;
      if (!v539)
      {
        if (qword_280BE9960 != -1)
        {
          swift_once();
        }

        v544 = sub_2172A41AC();
        v539 = sub_2176FD620(25, v544, v545);
      }

      v602[0] = v539;
      v546 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v546, 33, v547, v548, v549, v550, v551, v552, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9710 != -1)
      {
        OUTLINED_FUNCTION_21_51(&qword_280BE9710);
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA50C(v553, v554, v555, v556, v557, v558, v559, v560, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      if (!v602[11])
      {
        v563 = &qword_27CB25310;
        v564 = &unk_21775D3D0;
        v565 = v602;
LABEL_200:
        sub_2171F0738(v565, v563, v564);
        v602[3] = v543;
        goto LABEL_201;
      }

      sub_2172CE9BC();
      sub_2171F0738(v602, &qword_27CB25398, &unk_21776C4F0);
      if (!v600[1])
      {
        v563 = &qword_27CB2CD90;
        v564 = &unk_21775A2C0;
        v565 = v600;
        goto LABEL_200;
      }

      sub_21725CF68(v600, v601);
      sub_2176FDD58();
      v562 = v561;
      sub_217284498(v600);
      v602[3] = v543;
      if (v562)
      {
        goto LABEL_210;
      }

LABEL_201:
      if (qword_280BE9958 != -1)
      {
        swift_once();
      }

      v566 = sub_2172A41AC();
      if (v567)
      {
        v568 = v566;
      }

      else
      {
        v568 = 0;
      }

      if (v567)
      {
        v569 = v567;
      }

      else
      {
        v569 = 0xE000000000000000;
      }

      v562 = sub_2176FD724(11, v568, v569);

LABEL_210:
      v602[0] = v562;
      v570 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v570, 34, v571, v572, v573, v574, v575, v576, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      if (qword_280BE9720 != -1)
      {
        OUTLINED_FUNCTION_4_39(&qword_280BE9720);
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA528(v577, v578, v579, v580, v581, v582, v583, v584, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10], v600[11], v600[12], v600[13], v600[14], v600[15], v600[16], v600[17], v600[18]);
      if (!v602[11])
      {
        v586 = &qword_27CB25320;
        v587 = &unk_21776E020;
        v588 = v602;
LABEL_217:
        sub_2171F0738(v588, v586, v587);
        OUTLINED_FUNCTION_37_40();
        goto LABEL_218;
      }

      sub_2172CE898();
      sub_2171F0738(v602, &qword_27CB27C80, &unk_21775D420);
      if (!v600[1])
      {
        v586 = &unk_27CB27760;
        v587 = &unk_21775A2D0;
        v588 = v600;
        goto LABEL_217;
      }

      LOBYTE(v601[0]) = v479;
      v585 = sub_2172A2B9C(v601);
      sub_21728418C(v600);
      v602[3] = v543;
      v602[0] = v585;
LABEL_218:
      v589 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v589, 37, v590, v591, v592, v593, v594, v595, v597, v598, v599, v600[0], v600[1], v600[2], v600[3], v600[4], v600[5], v600[6], v600[7], v600[8], v600[9], v600[10]);
      return v603;
  }
}

id sub_2176FD620(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = Album.LegacyModelAlbumPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_217751DE8();
  v7 = sub_217751DC8();
  v8 = [objc_opt_self() emptyIdentifierSet];
  v9 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v8, 0, v7);
}

id sub_2176FD724(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = Artist.LegacyModelArtistPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_217751DE8();
  v7 = sub_217751DC8();
  v8 = [objc_opt_self() emptyIdentifierSet];
  v9 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v8, 2, v7);
}

void Song.LegacyModelSongPropertyKey.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_217753158();

  v5 = 0;
  v6 = 24;
  switch(v4)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
LABEL_39:
      v6 = v5;
      break;
    case 24:
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    default:
      v6 = 42;
      break;
  }

  *a3 = v6;
}

unint64_t sub_2176FDA28@<X0>(unint64_t *a1@<X8>)
{
  result = Song.LegacyModelSongPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Double_optional __swiftcall Double.init(legacyModelRawValue:)(Swift::Double legacyModelRawValue)
{
  v1 = LOBYTE(legacyModelRawValue);
  result.value = legacyModelRawValue;
  result.is_nil = v1;
  return result;
}

uint64_t sub_2176FDA80@<X0>(Swift::Double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Double.init(legacyModelRawValue:)(*a1);
  *a2 = *&v4.is_nil;
  *(a2 + 8) = 0;
  LOBYTE(result) = v4.is_nil;
  return result;
}

double sub_2176FDAB0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2176FDABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2176FDB20()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D588(v3, v4, v5, v6);
  v178[3] = &type metadata for Song;
  v178[4] = &protocol witness table for Song;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_91();
  v9 = sub_217283AFC(v7, v8);
  v17 = OUTLINED_FUNCTION_45_36(v9, v10, v11, v12, v13, v14, v15, v16, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175[0], v175[1], v175[2], v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v25 = OUTLINED_FUNCTION_1_138();
  v26(v25);
  sub_217283B58(v0);
  sub_21729C644(v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v27 = sub_2172B7F78(28);
  OUTLINED_FUNCTION_10_73(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v175[0], v175[1], v175[2], v176, v177);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v35 = OUTLINED_FUNCTION_33_47();
  [v35 v36];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDC3C()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D5D0(v3, v4, v5, v6);
  v178[3] = &type metadata for MusicVideo;
  v178[4] = &protocol witness table for MusicVideo;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_91();
  v9 = sub_217283BAC(v7, v8);
  v17 = OUTLINED_FUNCTION_45_36(v9, v10, v11, v12, v13, v14, v15, v16, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175[0], v175[1], v175[2], v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v25 = OUTLINED_FUNCTION_1_138();
  v26(v25);
  sub_217283C08(v0);
  sub_21729C644(v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v27 = sub_2172B7F78(14);
  OUTLINED_FUNCTION_10_73(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v175[0], v175[1], v175[2], v176, v177);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v35 = OUTLINED_FUNCTION_33_47();
  [v35 v36];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDD58()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D6A8(v3, v4, v5, v6);
  v178[3] = &type metadata for Artist;
  v178[4] = &protocol witness table for Artist;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_91();
  v9 = sub_21725CF68(v7, v8);
  v17 = OUTLINED_FUNCTION_45_36(v9, v10, v11, v12, v13, v14, v15, v16, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175[0], v175[1], v175[2], v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v25 = OUTLINED_FUNCTION_1_138();
  v26(v25);
  sub_217284498(v0);
  sub_21729C644(v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v27 = sub_2172B7F78(2);
  OUTLINED_FUNCTION_10_73(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v175[0], v175[1], v175[2], v176, v177);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v35 = OUTLINED_FUNCTION_33_47();
  [v35 v36];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDE74()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D86C(v3, v4, v5, v6);
  v178[3] = &type metadata for Album;
  v178[4] = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_91();
  v9 = sub_21725CF0C(v7, v8);
  v17 = OUTLINED_FUNCTION_45_36(v9, v10, v11, v12, v13, v14, v15, v16, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175[0], v175[1], v175[2], v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v25 = OUTLINED_FUNCTION_1_138();
  v26(v25);
  sub_21725CE44(v0);
  sub_21729C644(v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v27 = sub_2172B7F78(0);
  OUTLINED_FUNCTION_10_73(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v175[0], v175[1], v175[2], v176, v177);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v35 = OUTLINED_FUNCTION_33_47();
  [v35 v36];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

uint64_t sub_2176FDF90(void *a1, char a2)
{
  LOBYTE(__dst[0]) = a2;
  Genre.convertToRawDictionary(for:)();
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v4 = OUTLINED_FUNCTION_36_14();
  v5(v4, v3);
  __swift_project_boxed_opaque_existential_1(__dst, v186);
  v6 = OUTLINED_FUNCTION_36_14();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  if (v47 == qword_280BE4A90 && v50 == *algn_280BE4A98)
  {

    v10 = 8;
  }

  else
  {
    v9 = sub_217753058();

    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 1;
    }
  }

  LOBYTE(__dst[0]) = v10;
  v11 = sub_21721478C();
  v186 = &type metadata for Genre;
  v187 = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_9_91();
  v14 = sub_217284130(v12, v13);
  v22 = OUTLINED_FUNCTION_45_36(v14, v15, v16, v17, v18, v19, v20, v21, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182[0], v182[1], v182[2], v183, v184, __dst[0]);
  OUTLINED_FUNCTION_51_27(v22, v23, v24, v25, v26, v27, v28, v29, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180);
  __swift_project_boxed_opaque_existential_1(v182, v183);
  v30 = OUTLINED_FUNCTION_39_33();
  v31(v30);
  sub_21728418C(a1);
  sub_21729C644(v182);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  OUTLINED_FUNCTION_8_90();
  v32 = sub_2172B7F78(v11);
  OUTLINED_FUNCTION_10_73(v32, v33, v34, v35, v36, v37, v38, v39, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v182[0], v182[1], v182[2], v183, v184);
  sub_217269F50(__dst);
  v40 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v41 = OUTLINED_FUNCTION_33_47();
  [v41 v42];

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_46();
}

id sub_2176FE1C0(uint64_t a1, char a2)
{
  sub_21753D6F0(a2);
  sub_217275710(a1, v80);
  sub_21727576C(v80);
  v4 = sub_21721478C();
  v78 = &type metadata for Track;
  v79 = &protocol witness table for Track;
  *__dst = swift_allocObject();
  v5 = sub_217275710(a1, *__dst + 16);
  OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v27, *v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1], v74[2], v75, v76, *__dst);
  Track.propertyProvider.getter();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v13 = OUTLINED_FUNCTION_39_33();
  v14(v13);
  sub_21727576C(a1);
  sub_21729C644(v74);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  LOBYTE(v74[0]) = a2;
  v15 = sub_2172B7F78(v4);
  OUTLINED_FUNCTION_10_73(v15, v16, v17, v18, v19, v20, v21, v22, v28, *v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1], v74[2], v75, v76);
  sub_217269F50(__dst);
  v23 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v24 = OUTLINED_FUNCTION_46_35();
  v25 = [v23 initWithIdentifierSet:v29 modelObjectType:v4 storageDictionary:{v24, }];

  swift_unknownObjectRelease();
  return v25;
}

void sub_2176FE354()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D540(v3);
  v175[3] = &type metadata for Playlist.Entry;
  v175[4] = &protocol witness table for Playlist.Entry;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_9_91();
  v6 = sub_217275858(v4, v5);
  v14 = OUTLINED_FUNCTION_45_36(v6, v7, v8, v9, v10, v11, v12, v13, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172[0], v172[1], v172[2], v173, v174, v175[0]);
  OUTLINED_FUNCTION_51_27(v14, v15, v16, v17, v18, v19, v20, v21, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170);
  __swift_project_boxed_opaque_existential_1(v172, v173);
  v22 = OUTLINED_FUNCTION_1_138();
  v23(v22);
  sub_2172758B4(v0);
  sub_21729C644(v172);
  __swift_destroy_boxed_opaque_existential_1(v175);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(19);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172[0], v172[1], v172[2], v173, v174);
  sub_217269F50(v175);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FE470()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D3A4(v3, v4, v5, v6);
  v178[3] = &type metadata for Playlist;
  v178[4] = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_9_91();
  v9 = sub_2172757C0(v7, v8);
  v17 = OUTLINED_FUNCTION_45_36(v9, v10, v11, v12, v13, v14, v15, v16, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175[0], v175[1], v175[2], v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173);
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v25 = OUTLINED_FUNCTION_1_138();
  v26(v25);
  sub_21726B8C4(v0);
  sub_21729C644(v175);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v27 = sub_2172B7F78(17);
  OUTLINED_FUNCTION_10_73(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v175[0], v175[1], v175[2], v176, v177);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v35 = OUTLINED_FUNCTION_33_47();
  [v35 v36];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

id sub_2176FE58C(int a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v4 = [objc_opt_self() emptyIdentifierSet];
  v10 = 0;
  v7 = MusicLyrics.convertToLegacyModelStorageDictionary(for:)(&v10, v5, v6);
  sub_2172A27AC();

  sub_217751D88();
  OUTLINED_FUNCTION_36_14();
  v8 = [v3 initWithIdentifierSet:v4 modelObjectType:12 storageDictionary:{v7, }];
  swift_unknownObjectRelease();

  return v8;
}

id sub_2176FE688(__int16 a1, uint64_t a2, char a3)
{
  LOBYTE(v13) = a3;
  LOWORD(v10) = a1;
  LOBYTE(v12) = a3;
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v4 = [objc_opt_self() emptyIdentifierSet];
  LOBYTE(v13) = 0;
  v7 = FileAsset.convertToLegacyModelStorageDictionary(for:)(&v13, v5, v6);
  sub_2172A211C(v7);

  sub_217751D88();
  OUTLINED_FUNCTION_36_14();
  v8 = [v3 initWithIdentifierSet:v4 modelObjectType:8 storageDictionary:{v7, }];
  swift_unknownObjectRelease();

  return v8;
}

id sub_2176FE78C(uint64_t a1)
{
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v4 = [objc_opt_self() emptyIdentifierSet];
  sub_21763E284(0, a1);
  sub_217751D88();
  v5 = [v3 initWithIdentifierSet:v4 modelObjectType:10 storageDictionary:{v1, OUTLINED_FUNCTION_44_31()}];
  swift_unknownObjectRelease();

  return v5;
}

id sub_2176FE84C(uint64_t a1)
{
  v9 = a1;
  v10 = BYTE4(a1);
  v1 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v2 = [objc_opt_self() emptyIdentifierSet];
  v8 = 0;
  CatalogAsset.convertToLegacyModelStorageDictionary(for:)(&v8, v3, v4);
  sub_2172A25C4();

  v5 = sub_217751D88();
  v6 = [v1 initWithIdentifierSet:v2 modelObjectType:30 storageDictionary:{v5, }];
  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_2176FE940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8610;
  if (!qword_280BE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8610);
  }

  return result;
}

unint64_t sub_2176FE994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A546C(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2176FE9C4(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2176FE9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D430;
  if (!qword_27CB2D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D430);
  }

  return result;
}

uint64_t _s26LegacyModelSongPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD7)
  {
    if (a2 + 41 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 41) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 42;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v5 = v6 - 42;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s26LegacyModelSongPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD6)
  {
    v6 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_51(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_41(uint64_t a1)
{
  v5 = *(v1 + 120);

  return sub_2171F5110(a1, v5, v2, v3);
}

void *OUTLINED_FUNCTION_45_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{

  return __swift_project_boxed_opaque_existential_1(&a60, v60);
}

uint64_t OUTLINED_FUNCTION_46_35()
{

  return sub_217751D88();
}

uint64_t OUTLINED_FUNCTION_48_25(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  v55 = a1 + 16;

  return sub_21729C5E8(v55, va);
}

uint64_t OUTLINED_FUNCTION_53_30()
{

  return sub_2171F0738(v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_55_28()
{
  *(v0 + 960) = 0;
  *v1 = 0u;
  v1[1] = 0u;

  return swift_unknownObjectRetain();
}

void MusicAPI.Error.source.getter(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2172838F8(v2, v3, v4, v5);
}

uint64_t MusicAPI.Error.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  *a1 = v2;
  a1[1] = v3;
  return sub_2171FB568(v2, v3);
}

unint64_t sub_2176FED50(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2176FEDC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2176FED50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2176FEDF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2176FEE28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2176FED9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2176FEE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176FFAF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176FEE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176FFAF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void MusicAPI.Error.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v114 = v0;
  v2 = v1;
  v112 = v3;
  v4 = sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v113 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D438, &qword_21779AFC8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = (&v104 - v13);
  v15 = *(v2 + 24);
  v130 = v2;
  v16 = OUTLINED_FUNCTION_160(v2, v15);
  v19 = sub_2176FFAF8(v16, v17, v18);
  v20 = v114;
  sub_2177532C8();
  if (v20)
  {
    OUTLINED_FUNCTION_18_59();
    v21 = v2;
    goto LABEL_83;
  }

  v111 = v19;
  v22 = v113;
  v114 = v11;
  LOBYTE(v116) = 0;
  OUTLINED_FUNCTION_13_74();
  v23 = sub_217752E68();
  v24 = v23;
  v26 = v25;
  v27 = HIBYTE(v25) & 0xF;
  v28 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v110 = v4;
  v4 = v22;
  v21 = v2;
  v30 = v8;
  if (!v29)
  {
    goto LABEL_72;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    LOBYTE(v115[0]) = 0;
    v59 = v26;
    v60 = v8;
    v61 = v23;
    sub_217751DE8();
    v62 = sub_2175B1ECC();
    v64 = v63;

    v24 = v61;
    v30 = v60;
    v4 = v113;
    v26 = v59;
    if (v64)
    {
      goto LABEL_72;
    }

    v33 = v62;
    goto LABEL_80;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v116 = v23;
    v117 = v26 & 0xFFFFFFFFFFFFFFLL;
    if (v23 == 43)
    {
      if (v27)
      {
        if (v27 != 1)
        {
          OUTLINED_FUNCTION_30_47();
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v35 & v34)
            {
              break;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v35)
            {
              break;
            }

            v33 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v35)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v23 != 45)
    {
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v35 & v34)
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (!v35)
          {
            break;
          }

          v33 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v35)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        OUTLINED_FUNCTION_30_47();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v35 & v34)
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (!v35)
          {
            break;
          }

          v33 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v35)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_109;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v31 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v102 = v26;
    v15 = v4;
    v103 = v23;
    v31 = sub_217752B88();
    v24 = v103;
    v30 = v8;
    v26 = v102;
  }

  v32 = *v31;
  if (v32 == 43)
  {
    if (v28 >= 1)
    {
      if (v28 != 1)
      {
        v33 = 0;
        if (v31)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v35 & v34)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v35)
            {
              goto LABEL_70;
            }

            v33 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_5();
            if (v35)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    goto LABEL_110;
  }

  if (v32 == 45)
  {
    if (v28 >= 1)
    {
      if (v28 != 1)
      {
        v33 = 0;
        if (v31)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v35 & v34)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v35)
            {
              goto LABEL_70;
            }

            v33 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_5();
            if (v35)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v38 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v28)
  {
    v33 = 0;
    if (v31)
    {
      while (1)
      {
        v45 = *v31 - 48;
        if (v45 > 9)
        {
          goto LABEL_70;
        }

        v46 = 10 * v33;
        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
        {
          goto LABEL_70;
        }

        v33 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_70;
        }

        ++v31;
        if (!--v28)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  v33 = 0;
  v38 = 1;
LABEL_71:
  LOBYTE(v115[0]) = v38;
  if (v38)
  {
LABEL_72:
    v49 = v4;
    v4 = v30;
    v50 = v24;
    v51 = v26;
    v113 = v14;
    v52 = v130[4];
    OUTLINED_FUNCTION_160(v130, v130[3]);
    sub_217753298();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_27_53();
    }

    OUTLINED_FUNCTION_24_52();
    if (v34)
    {
      OUTLINED_FUNCTION_14_69(v53);
      v53 = v112;
    }

    v119 = &_s5ErrorV10CodingKeysON;
    v120 = v52;
    LOBYTE(v116) = 0;
    OUTLINED_FUNCTION_25_61(v53);
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000040, 0x80000002177B5CA0);
    MEMORY[0x21CEA23B0](v50, v51);

    OUTLINED_FUNCTION_21_52();
    sub_217752B08();
    v2 = sub_217752B48();
    swift_allocError();
    v14 = v54;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v14 = MEMORY[0x277D83B88];
    v56 = v110;
    (*(v49 + 16))(v14 + v55, v4, v110);
    (*(*(v2 - 8) + 104))(v14, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    (*(v49 + 8))(v4, v56);
LABEL_77:
    OUTLINED_FUNCTION_10_74();
    v58 = v113;
LABEL_82:
    v57(v58, v9);
    OUTLINED_FUNCTION_18_59();
LABEL_83:
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v14)
    {

      if (v4)
      {
        goto LABEL_85;
      }
    }

    else if (v4)
    {
LABEL_85:

      if ((v2 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (!v2)
    {
      goto LABEL_90;
    }

LABEL_89:

    goto LABEL_90;
  }

LABEL_80:

  v65 = OUTLINED_FUNCTION_9_92(1);
  v2 = v66;
  v109 = v30;
  v67 = v65;
  sub_217751DE8();
  v30 = v67;
  sub_2175AFCBC();
  if (v69)
  {
    v15 = v2;
    v113 = v14;
    v14 = v130[4];
    OUTLINED_FUNCTION_160(v130, v130[3]);
    sub_217753298();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      OUTLINED_FUNCTION_24_52();
      if (v34)
      {
        OUTLINED_FUNCTION_14_69(v70);
        v70 = v112;
      }

      v119 = &_s5ErrorV10CodingKeysON;
      v120 = v14;
      LOBYTE(v116) = 1;
      OUTLINED_FUNCTION_25_61(v70);
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177B5CF0);
      MEMORY[0x21CEA23B0](v30, v15);

      OUTLINED_FUNCTION_21_52();
      v71 = v109;
      sub_217752B08();
      v2 = sub_217752B48();
      swift_allocError();
      v14 = v72;
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
      *v14 = MEMORY[0x277D83B88];
      v74 = v110;
      (*(v4 + 16))(v14 + v73, v71, v110);
      (*(*(v2 - 8) + 104))(v14, *MEMORY[0x277D84160], v2);
      swift_willThrow();
      v75 = *(v4 + 8);
      LODWORD(v4) = v4 + 8;
      v75(v71, v74);
      goto LABEL_77;
    }

LABEL_112:
    OUTLINED_FUNCTION_27_53();
    goto LABEL_93;
  }

  v4 = v68;

  v76 = OUTLINED_FUNCTION_9_92(4);
  if (v67)
  {
    OUTLINED_FUNCTION_10_74();
    v58 = v14;
    goto LABEL_82;
  }

  v110 = v76;
  v113 = v77;
  v78 = OUTLINED_FUNCTION_9_92(2);
  v111 = v79;
  LOBYTE(v116) = 3;
  OUTLINED_FUNCTION_13_74();
  if (sub_217752EC8())
  {
    LOBYTE(v116) = 3;
    OUTLINED_FUNCTION_13_74();
    v108 = sub_217752E68();
    v109 = v78;
    v81 = v80;
  }

  else
  {
    v109 = v78;
    v108 = 0;
    v81 = 0;
  }

  LOBYTE(v116) = 5;
  OUTLINED_FUNCTION_13_74();
  v82 = sub_217752EC8();
  if (v82)
  {
    LOBYTE(v115[0]) = 5;
    sub_21770162C(v82, v83, v84);
    sub_217752EA8();
    v106 = v33;
    v85 = v9;
    v87 = v116;
    v86 = v117;
    v88 = v118;
    v89 = v119;
  }

  else
  {
    v106 = v33;
    v85 = v9;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 1;
  }

  LOBYTE(v116) = 6;
  v107 = v85;
  v90 = sub_217752EC8();
  if (v90)
  {
    LOBYTE(v115[0]) = 6;
    sub_2177015D8(v90, v91, v92);
    sub_217752EA8();
    v95 = OUTLINED_FUNCTION_4_132();
    v96(v95);
    v97 = v116;
    v98 = v117;
  }

  else
  {
    v93 = OUTLINED_FUNCTION_4_132();
    v94(v93);
    v97 = 0;
    v98 = 1;
  }

  v107 = v97;
  v114 = v98;
  v99 = v106;
  v115[0] = v106;
  v104 = v4;
  v115[1] = v4;
  v115[2] = v109;
  v100 = v111;
  v115[3] = v111;
  v115[4] = v108;
  v105 = v81;
  v115[5] = v81;
  v115[6] = v110;
  v101 = v113;
  v115[7] = v113;
  v115[8] = v87;
  v115[9] = v86;
  v115[10] = v88;
  v115[11] = v89;
  v115[12] = v97;
  v115[13] = v98;
  memcpy(v112, v115, 0x70uLL);
  sub_21728399C(v115, &v116);
  __swift_destroy_boxed_opaque_existential_1(v130);
  v116 = v99;
  v117 = v104;
  v118 = v109;
  v119 = v100;
  v120 = v108;
  v121 = v105;
  v122 = v110;
  v123 = v101;
  v124 = v87;
  v125 = v86;
  v126 = v88;
  v127 = v89;
  v128 = v107;
  v129 = v114;
  sub_2172839F8(&v116);
LABEL_90:
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176FFAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D440;
  if (!qword_27CB2D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D440);
  }

  return result;
}

void MusicAPI.Error.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D458, &qword_21779AFD0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = v0[3];
  v32 = v0[2];
  v33 = v10;
  v13 = v0[5];
  v27 = v0[4];
  v28 = v13;
  v29 = v12;
  v14 = v0[6];
  v30 = v0[7];
  v31 = v14;
  v15 = *(v0 + 5);
  v25 = *(v0 + 4);
  v26 = v15;
  v16 = v0[12];
  v23 = v0[13];
  v24 = v16;
  v17 = OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2176FFAF8(v17, v18, v19);
  sub_2177532F8();
  *&v34 = v11;
  sub_217752FC8();
  LOBYTE(v34) = 0;
  OUTLINED_FUNCTION_44_2();
  sub_217752F48();
  if (v1)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {

    *&v34 = v33;
    sub_217752FC8();
    OUTLINED_FUNCTION_29_47(1);
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();

    OUTLINED_FUNCTION_29_47(4);
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();
    OUTLINED_FUNCTION_29_47(2);
    OUTLINED_FUNCTION_44_2();
    v20 = sub_217752F48();
    v22 = v28;
    if (v28)
    {
      OUTLINED_FUNCTION_29_47(3);
      OUTLINED_FUNCTION_44_2();
      v20 = sub_217752F48();
    }

    if (*(&v25 + 1) != 1)
    {
      v34 = v25;
      v35 = v26;
      sub_2177016D4(v20, v22, v21);
      OUTLINED_FUNCTION_44_2();
      v20 = sub_217752F88();
    }

    if (v23 != 1)
    {
      *&v34 = v24;
      *(&v34 + 1) = v23;
      sub_217701680(v20, v22, v21);
      OUTLINED_FUNCTION_44_2();
      sub_217752F88();
    }

    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t static MusicAPI.Error.Metadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2176FFEB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2176FFF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176FFEB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176FFF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217701728(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176FFFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217701728(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void MusicAPI.Error.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D470, &qword_21779AFD8);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_217701728(v7, v8, v9);
  sub_2177532F8();
  OUTLINED_FUNCTION_131_1();
  sub_217752EF8();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.Error.Metadata.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Error.Metadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void MusicAPI.Error.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D480, &qword_21779AFE0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_131_0();
  v6 = OUTLINED_FUNCTION_131_1();
  v8 = OUTLINED_FUNCTION_160(v6, v7);
  v11 = sub_217701728(v8, v9, v10);
  OUTLINED_FUNCTION_26_46(&_s5ErrorV8MetadataV10CodingKeysON, v12, v11);
  if (!v0)
  {
    v13 = sub_217752E18();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_0_129();
    v17(v16);
    *v4 = v13;
    v4[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t static MusicAPI.Error.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[9];
  v105 = a1[8];
  v106 = a1[10];
  v107 = a1[11];
  v100 = a1[13];
  v101 = a1[12];
  v10 = a2[4];
  v11 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  v104 = a2[9];
  v14 = a2[11];
  v102 = a2[8];
  v103 = a2[10];
  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  v98 = a2[13];
  v99 = a2[12];
  if (!v15 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = v5 == v10 && v6 == v11;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = v7 == v13 && v8 == v12;
  if (!v17 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v9 == 1)
  {
    v18 = OUTLINED_FUNCTION_73_0();
    sub_2172838F8(v18, v19, v106, v107);
    if (v104 == 1)
    {
      OUTLINED_FUNCTION_33_48();
      v20 = OUTLINED_FUNCTION_73_0();
      sub_217283940(v20, v21, v106, v107);
      goto LABEL_34;
    }

    v30 = OUTLINED_FUNCTION_7_90();
    sub_2172838F8(v30, v31, v32, v33);
    goto LABEL_32;
  }

  v109[0] = v105;
  v109[1] = v9;
  v109[2] = v106;
  v109[3] = v107;
  if (v104 == 1)
  {
    v22 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v22, v23, v24, v25);
    OUTLINED_FUNCTION_33_48();
    v26 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v26, v27, v28, v29);

LABEL_32:
    v34 = OUTLINED_FUNCTION_5_1();
    sub_217283940(v34, v35, v36, v37);
    v38 = OUTLINED_FUNCTION_7_90();
    sub_217283940(v38, v39, v40, v41);
    return 0;
  }

  v108[0] = v102;
  v108[1] = v104;
  v108[2] = v103;
  v108[3] = v14;
  v42 = static MusicAPI.Source.== infix(_:_:)(v109, v108);
  v43 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_7_90();
  sub_2172838F8(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v51, v52, v53, v54);

  v55 = OUTLINED_FUNCTION_5_1();
  sub_217283940(v55, v56, v57, v58);
  if (v42)
  {
LABEL_34:
    if (v100 == 1)
    {
      sub_2171FB568(v101, 1);
      if (v98 == 1)
      {
        v3 = 1;
        v59 = OUTLINED_FUNCTION_73_0();
        sub_2171FB568(v59, v60);
        sub_217283988(v101, 1);
        return v3;
      }

      v67 = OUTLINED_FUNCTION_204();
      sub_2171FB568(v67, v68);
      goto LABEL_40;
    }

    if (v98 == 1)
    {
      v61 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v61, v62);
      v63 = OUTLINED_FUNCTION_73_0();
      sub_2171FB568(v63, v64);
      v65 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v65, v66);

LABEL_40:
      v69 = OUTLINED_FUNCTION_35();
      sub_217283988(v69, v70);
      v71 = OUTLINED_FUNCTION_204();
LABEL_54:
      sub_217283988(v71, v72);
      return 0;
    }

    if (v100)
    {
      if (v98)
      {
        if (v101 != v99 || v100 != v98)
        {
          v74 = sub_217753058();
          v75 = OUTLINED_FUNCTION_35();
          sub_2171FB568(v75, v76);
          v77 = OUTLINED_FUNCTION_204();
          sub_2171FB568(v77, v78);
          v79 = OUTLINED_FUNCTION_35();
          sub_2171FB568(v79, v80);
          v81 = OUTLINED_FUNCTION_204();
          sub_217283988(v81, v82);
          if (v74)
          {
            goto LABEL_57;
          }

LABEL_53:

          v71 = OUTLINED_FUNCTION_35();
          goto LABEL_54;
        }

        sub_2171FB568(v101, v100);
        v92 = OUTLINED_FUNCTION_35();
        sub_2171FB568(v92, v93);
        v94 = OUTLINED_FUNCTION_35();
        sub_2171FB568(v94, v95);
        v84 = OUTLINED_FUNCTION_35();
LABEL_56:
        sub_217283988(v84, v85);
LABEL_57:

        v96 = OUTLINED_FUNCTION_35();
        sub_217283988(v96, v97);
        return 1;
      }

      v86 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v86, v87);
      v83 = v100;
    }

    else
    {
      sub_2171FB568(v101, 0);
      v83 = 0;
      if (!v98)
      {
        sub_2171FB568(v99, 0);
        sub_2171FB568(v101, 0);
        v84 = v99;
        v85 = 0;
        goto LABEL_56;
      }
    }

    v88 = OUTLINED_FUNCTION_204();
    sub_2171FB568(v88, v89);
    sub_2171FB568(v101, v83);
    v90 = OUTLINED_FUNCTION_204();
    sub_217283988(v90, v91);
    goto LABEL_53;
  }

  return 0;
}

uint64_t MusicAPI.Error.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[5];
  v4 = v1[9];
  v7 = v1[11];
  v5 = v1[13];
  MEMORY[0x21CEA3550](*v1);
  MEMORY[0x21CEA3550](v2);
  sub_217751FF8();
  sub_217753208();
  if (v3)
  {
    sub_217751FF8();
  }

  sub_217751FF8();
  if (v4 == 1)
  {
    goto LABEL_8;
  }

  sub_217753208();
  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  if (!v7)
  {
LABEL_8:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  if (v5 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (!v5)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MusicAPI.Error.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2177008F8(uint64_t a1)
{
  sub_2177531E8();
  MusicAPI.Error.hash(into:)(v2);
  return sub_217753238();
}

uint64_t static MusicAPI.Source.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_93();
      if (sub_217753058())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_217700A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E696F70 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_217700B00(char a1)
{
  if (a1)
  {
    return 0x7265746E696F70;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_217700B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217700A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217700B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770177C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217700BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770177C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void MusicAPI.Source.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D488, &qword_21779AFE8);
  OUTLINED_FUNCTION_0_0();
  v14 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = *(v0 + 16);
  v13[1] = *(v0 + 24);
  v13[2] = v9;
  v10 = OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21770177C(v10, v11, v12);
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752EF8();
  if (!v1)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
  }

  (*(v14 + 8))(v8, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.Source.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Source.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void MusicAPI.Source.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D498, &qword_21779AFF0);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  v34 = OUTLINED_FUNCTION_131_1();
  v36 = OUTLINED_FUNCTION_160(v34, v35);
  sub_21770177C(v36, v37, v38);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v39 = sub_217752E18();
    v41 = v40;
    v42 = sub_217752E18();
    v44 = v43;
    v45 = *(v30 + 8);
    v47 = v42;
    v45(v33, v28);
    *v27 = v39;
    v27[1] = v41;
    v27[2] = v47;
    v27[3] = v44;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2177010A0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  MusicAPI.Source.hash(into:)(v4);
  return sub_217753238();
}

uint64_t sub_2177010FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217701188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177010FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2177011B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177017D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177011F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177017D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void MusicAPI.ErrorResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4A0, &qword_21779AFF8);
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  v32 = OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_2177017D0(v32, v33, v34);
  sub_217751DE8();
  sub_2177532F8();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4B0, &qword_21779B000);
  sub_217701878(&qword_27CB2D4B8, sub_217701824, MEMORY[0x277D83948]);
  sub_217752F88();

  (*(v27 + 8))(v30, v25, v35);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.ErrorResponse.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_21727FF50();
  return sub_217753238();
}

void MusicAPI.ErrorResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4C8, &qword_21779B008);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_131_0();
  v16 = OUTLINED_FUNCTION_131_1();
  v18 = OUTLINED_FUNCTION_160(v16, v17);
  v21 = sub_2177017D0(v18, v19, v20);
  OUTLINED_FUNCTION_26_46(&_s13ErrorResponseV10CodingKeysON, v22, v21);
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4B0, &qword_21779B000);
    sub_217701878(&qword_27CB2D4D0, sub_2177018F0, MEMORY[0x277D83978]);
    sub_217752EA8();
    v23 = OUTLINED_FUNCTION_0_129();
    v24(v23);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217701594(uint64_t a1)
{
  sub_2177531E8();
  sub_21727FF50();
  return sub_217753238();
}

unint64_t sub_2177015D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D448;
  if (!qword_27CB2D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D448);
  }

  return result;
}

unint64_t sub_21770162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D450;
  if (!qword_27CB2D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D450);
  }

  return result;
}

unint64_t sub_217701680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D460;
  if (!qword_27CB2D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D460);
  }

  return result;
}

unint64_t sub_2177016D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D468;
  if (!qword_27CB2D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D468);
  }

  return result;
}

unint64_t sub_217701728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D478;
  if (!qword_27CB2D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D478);
  }

  return result;
}

unint64_t sub_21770177C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D490;
  if (!qword_27CB2D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D490);
  }

  return result;
}

unint64_t sub_2177017D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4A8;
  if (!qword_27CB2D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4A8);
  }

  return result;
}

unint64_t sub_217701824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4C0;
  if (!qword_27CB2D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4C0);
  }

  return result;
}

uint64_t sub_217701878(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D4B0, &qword_21779B000);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2177018F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4D8;
  if (!qword_27CB2D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4D8);
  }

  return result;
}

unint64_t sub_217701948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4E0;
  if (!qword_27CB2D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4E0);
  }

  return result;
}

unint64_t sub_2177019A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4E8;
  if (!qword_27CB2D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4E8);
  }

  return result;
}

unint64_t sub_2177019F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4F0;
  if (!qword_27CB2D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4F0);
  }

  return result;
}

unint64_t sub_217701A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D4F8;
  if (!qword_27CB2D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4F8);
  }

  return result;
}

uint64_t sub_217701AA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_217701AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s6SourceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_217701C5C(_BYTE *result, int a2, int a3)
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

_BYTE *_s5ErrorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217701DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D500;
  if (!qword_27CB2D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D500);
  }

  return result;
}

unint64_t sub_217701E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D508;
  if (!qword_27CB2D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D508);
  }

  return result;
}

unint64_t sub_217701E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D510;
  if (!qword_27CB2D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D510);
  }

  return result;
}

unint64_t sub_217701EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D518;
  if (!qword_27CB2D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D518);
  }

  return result;
}

unint64_t sub_217701F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D520;
  if (!qword_27CB2D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D520);
  }

  return result;
}

unint64_t sub_217701FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D528;
  if (!qword_27CB2D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D528);
  }

  return result;
}

unint64_t sub_217701FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D530;
  if (!qword_27CB2D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D530);
  }

  return result;
}

unint64_t sub_217702050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D538;
  if (!qword_27CB2D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D538);
  }

  return result;
}

unint64_t sub_2177020A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D540;
  if (!qword_27CB2D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D540);
  }

  return result;
}

unint64_t sub_217702100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D548;
  if (!qword_27CB2D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D548);
  }

  return result;
}

unint64_t sub_217702158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D550;
  if (!qword_27CB2D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D550);
  }

  return result;
}

unint64_t sub_2177021B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D558;
  if (!qword_27CB2D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D558);
  }

  return result;
}

void OUTLINED_FUNCTION_14_69(uint64_t a1@<X8>)
{
  *(v1 - 336) = a1;

  sub_2172B240C();
}

void OUTLINED_FUNCTION_21_52()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_26_46(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177532C8();
}

MusicKit::LegacyModelPlaylistType_optional __swiftcall LegacyModelPlaylistType.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() playlistTypeForRawValue_];
  if ((v3 - 1) < 9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return v3;
}

Swift::Int __swiftcall LegacyModelPlaylistType.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForPlaylistType_];
}

uint64_t sub_217702358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7472616D73 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7375696E6567 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657469726F766166 && a2 == 0xED000073676E6F53;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265646C6F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696445656C707061 && a2 == 0xEE006C6169726F74;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000002177B5D30 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C616E6F73726570 && a2 == 0xEB0000000078694DLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x64656B6E6172 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_217753058();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_217702668(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 0x7472616D73;
      break;
    case 2:
      result = 0x7375696E6567;
      break;
    case 3:
      result = 0x657469726F766166;
      break;
    case 4:
      result = 0x7265646C6F66;
      break;
    case 5:
      result = 0x696445656C707061;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646572616873;
      break;
    case 8:
      result = 0x6C616E6F73726570;
      break;
    case 9:
      result = 0x64656B6E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21770278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703678(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177027C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703678(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21770280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217702358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217702834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177034D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177034D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2177028AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703624(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177028E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703624(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703720(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703720(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21770299C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177036CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2177029D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177036CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703774(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703774(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770357C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770357C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703528(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217703528(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770381C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21770381C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177035D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177035D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217702C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177037C8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217702CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2177037C8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelPlaylistType.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D560, &qword_21779B8B0);
  OUTLINED_FUNCTION_0_0();
  v89 = v5;
  v90 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_150();
  v88 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D568, &qword_21779B8B8);
  OUTLINED_FUNCTION_0_0();
  v86 = v9;
  v87 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v85 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D570, &qword_21779B8C0);
  OUTLINED_FUNCTION_0_0();
  v83 = v13;
  v84 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v82 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D578, &qword_21779B8C8);
  OUTLINED_FUNCTION_0_0();
  v80 = v17;
  v81 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v79 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D580, &qword_21779B8D0);
  OUTLINED_FUNCTION_0_0();
  v77 = v21;
  v78 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v76 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D588, &qword_21779B8D8);
  OUTLINED_FUNCTION_0_0();
  v74 = v25;
  v75 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v73 = v27;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D590, &qword_21779B8E0);
  OUTLINED_FUNCTION_0_0();
  v71 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v70 = v30;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D598, &qword_21779B8E8);
  OUTLINED_FUNCTION_0_0();
  v68 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_150();
  v67 = v33;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5A0, &qword_21779B8F0);
  OUTLINED_FUNCTION_0_0();
  v65[2] = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = v65 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5A8, &qword_21779B8F8);
  OUTLINED_FUNCTION_0_0();
  v65[1] = v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5B0, &qword_21779B900);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = v65 - v44;
  v46 = *v2;
  v47 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177034D4(v47, v48, v49);
  v50 = sub_2177532F8();
  v53 = (v42 + 8);
  switch(v46)
  {
    case 1:
      v93[0] = 1;
      sub_2177037C8(v50, v51, v52);
      v62 = v91;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1();
      v63(v37, v66);
      return (*v53)(v45, v62);
    case 2:
      v94 = 2;
      sub_217703774(v50, v51, v52);
      v59 = v67;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.GeniusCodingKeys, &v94);
      OUTLINED_FUNCTION_12_1();
      v54 = v59;
      v60 = &v102;
      goto LABEL_7;
    case 3:
      v95 = 3;
      sub_217703720(v50, v51, v52);
      v61 = v70;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.FavoriteSongsCodingKeys, &v95);
      OUTLINED_FUNCTION_12_1();
      v54 = v61;
      v60 = &v103;
LABEL_7:
      v56 = *(v60 - 32);
      break;
    case 4:
      v96 = 4;
      sub_2177036CC(v50, v51, v52);
      v57 = v73;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.FolderCodingKeys, &v96);
      v58 = v74;
      v56 = v75;
      goto LABEL_13;
    case 5:
      v97 = 5;
      sub_217703678(v50, v51, v52);
      v57 = v76;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.AppleEditorialCodingKeys, &v97);
      v58 = v77;
      v56 = v78;
      goto LABEL_13;
    case 6:
      v98 = 6;
      sub_217703624(v50, v51, v52);
      v57 = v79;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.ExternalEditorialCodingKeys, &v98);
      v58 = v80;
      v56 = v81;
      goto LABEL_13;
    case 7:
      v99 = 7;
      sub_2177035D0(v50, v51, v52);
      v57 = v82;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.SharedCodingKeys, &v99);
      v58 = v83;
      v56 = v84;
      goto LABEL_13;
    case 8:
      v100 = 8;
      sub_21770357C(v50, v51, v52);
      v57 = v85;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.PersonalMixCodingKeys, &v100);
      v58 = v86;
      v56 = v87;
      goto LABEL_13;
    case 9:
      v101 = 9;
      sub_217703528(v50, v51, v52);
      v57 = v88;
      OUTLINED_FUNCTION_1_85(&type metadata for LegacyModelPlaylistType.RankedCodingKeys, &v101);
      v58 = v89;
      v56 = v90;
LABEL_13:
      v55 = *(v58 + 8);
      v54 = v57;
      break;
    default:
      v92 = 0;
      sub_21770381C(v50, v51, v52);
      v37 = v91;
      sub_217752EE8();
      v54 = OUTLINED_FUNCTION_4_77();
      v56 = v38;
      break;
  }

  v55(v54, v56);
  return (*v53)(v45, v37);
}

unint64_t sub_2177034D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5B8;
  if (!qword_27CB2D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5B8);
  }

  return result;
}

unint64_t sub_217703528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5C0;
  if (!qword_27CB2D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5C0);
  }

  return result;
}

unint64_t sub_21770357C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5C8;
  if (!qword_27CB2D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5C8);
  }

  return result;
}

unint64_t sub_2177035D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5D0;
  if (!qword_27CB2D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5D0);
  }

  return result;
}

unint64_t sub_217703624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5D8;
  if (!qword_27CB2D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5D8);
  }

  return result;
}

unint64_t sub_217703678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5E0;
  if (!qword_27CB2D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5E0);
  }

  return result;
}

unint64_t sub_2177036CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5E8;
  if (!qword_27CB2D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5E8);
  }

  return result;
}

unint64_t sub_217703720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5F0;
  if (!qword_27CB2D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5F0);
  }

  return result;
}

unint64_t sub_217703774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D5F8;
  if (!qword_27CB2D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5F8);
  }

  return result;
}

unint64_t sub_2177037C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D600;
  if (!qword_27CB2D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D600);
  }

  return result;
}

unint64_t sub_21770381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D608;
  if (!qword_27CB2D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D608);
  }

  return result;
}

uint64_t LegacyModelPlaylistType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelPlaylistType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v121 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D610, &qword_21779B908);
  OUTLINED_FUNCTION_0_0();
  v114 = v4;
  v115 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v120 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D618, &qword_21779B910);
  OUTLINED_FUNCTION_0_0();
  v112 = v8;
  v113 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v119 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D620, &qword_21779B918);
  OUTLINED_FUNCTION_0_0();
  v110 = v12;
  v111 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v124 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D628, &qword_21779B920);
  OUTLINED_FUNCTION_0_0();
  v108 = v16;
  v109 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v123 = v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D630, &qword_21779B928);
  OUTLINED_FUNCTION_0_0();
  v106 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_150();
  v122 = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D638, &qword_21779B930);
  OUTLINED_FUNCTION_0_0();
  v104 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_150();
  v118 = v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D640, &qword_21779B938);
  OUTLINED_FUNCTION_0_0();
  v102 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  v117 = v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D648, &qword_21779B940);
  OUTLINED_FUNCTION_0_0();
  v100 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  v116 = v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D650, &qword_21779B948);
  OUTLINED_FUNCTION_0_0();
  v98 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D658, &qword_21779B950);
  OUTLINED_FUNCTION_0_0();
  v97 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = &v91 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D660, &unk_21779B958);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = &v91 - v44;
  v46 = a1[3];
  v125 = a1;
  v47 = __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_2177034D4(v47, v48, v49);
  v50 = v126;
  sub_2177532C8();
  if (v50)
  {
    goto LABEL_11;
  }

  v94 = v39;
  v93 = v35;
  v95 = v34;
  v51 = v122;
  v52 = v123;
  v53 = v124;
  v126 = v42;
  v54 = v45;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v57 == v58 >> 1)
  {
    v96 = result;
    v59 = v126;
    v60 = v45;
LABEL_10:
    v76 = sub_217752B48();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v78 = &type metadata for LegacyModelPlaylistType;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    OUTLINED_FUNCTION_20_7();
    (*(v59 + 8))(v60, v40);
LABEL_11:
    v79 = v125;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v92 = 0;
  if (v57 < (v58 >> 1))
  {
    v61 = v40;
    v62 = *(v56 + v57);
    v63 = sub_21733CF64();
    v65 = v64;
    v67 = v66;
    v68 = swift_unknownObjectRelease();
    v96 = v63;
    v60 = v54;
    if (v65 == v67 >> 1)
    {
      v71 = v62;
      v72 = v121;
      v73 = v92;
      switch(v62)
      {
        case 1:
          v128 = 1;
          sub_2177037C8(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.SmartCodingKeys, &v128);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v137;
          goto LABEL_19;
        case 2:
          v129 = 2;
          sub_217703774(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.GeniusCodingKeys, &v129);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v138;
          goto LABEL_19;
        case 3:
          v130 = 3;
          sub_217703720(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.FavoriteSongsCodingKeys, &v130);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v139;
          goto LABEL_19;
        case 4:
          v131 = 4;
          sub_2177036CC(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.FolderCodingKeys, &v131);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v82 = &v140;
LABEL_19:
          v83 = *(v82 - 32);
          goto LABEL_25;
        case 5:
          v132 = 5;
          sub_217703678(v68, v69, v70);
          OUTLINED_FUNCTION_3_77(&type metadata for LegacyModelPlaylistType.AppleEditorialCodingKeys, &v132);
          OUTLINED_FUNCTION_20_7();
          v80 = OUTLINED_FUNCTION_4_77();
          v83 = v107;
          goto LABEL_25;
        case 6:
          v133 = 6;
          sub_217703624(v68, v69, v70);
          v53 = v52;
          OUTLINED_FUNCTION_3_77(&type metadata for LegacyModelPlaylistType.ExternalEditorialCodingKeys, &v133);
          OUTLINED_FUNCTION_20_7();
          v84 = v108;
          v83 = v109;
          goto LABEL_24;
        case 7:
          v134 = 7;
          sub_2177035D0(v68, v69, v70);
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.SharedCodingKeys, &v134);
          OUTLINED_FUNCTION_20_7();
          v84 = v110;
          v83 = v111;
          goto LABEL_24;
        case 8:
          v135 = 8;
          sub_21770357C(v68, v69, v70);
          v53 = v119;
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.PersonalMixCodingKeys, &v135);
          OUTLINED_FUNCTION_20_7();
          v84 = v112;
          v83 = v113;
          goto LABEL_24;
        case 9:
          v136 = 9;
          sub_217703528(v68, v69, v70);
          v53 = v120;
          OUTLINED_FUNCTION_2_86(&type metadata for LegacyModelPlaylistType.RankedCodingKeys, &v136);
          OUTLINED_FUNCTION_20_7();
          v84 = v114;
          v83 = v115;
LABEL_24:
          v81 = *(v84 + 8);
          v80 = v53;
LABEL_25:
          v81(v80, v83);
          v89 = OUTLINED_FUNCTION_12_38();
          v90(v89, v51);
          v79 = v125;
          goto LABEL_26;
        default:
          v127 = 0;
          sub_21770381C(v68, v69, v70);
          v74 = v94;
          sub_217752DE8();
          if (v73)
          {
            v75 = OUTLINED_FUNCTION_12_38();
            v85(v75, v61);
            OUTLINED_FUNCTION_20_7();
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_20_7();
          OUTLINED_FUNCTION_12_1();
          v86(v74, v93);
          v87 = OUTLINED_FUNCTION_12_38();
          v88(v87, v61);
          v79 = v125;
          v71 = v62;
LABEL_26:
          *v72 = v71;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    v59 = v126;
    v40 = v61;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21770439C(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelPlaylistType.hash(into:)();
  return sub_217753238();
}

Swift::Int sub_2177043EC@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelPlaylistType.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_217704418()
{
  result = qword_27CB2D668;
  if (!qword_27CB2D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D670, &qword_21779B968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D668);
  }

  return result;
}

unint64_t sub_217704480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D678;
  if (!qword_27CB2D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D678);
  }

  return result;
}

_BYTE *sub_2177044E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217704664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D680;
  if (!qword_27CB2D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D680);
  }

  return result;
}

unint64_t sub_2177046BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D688;
  if (!qword_27CB2D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D688);
  }

  return result;
}

unint64_t sub_217704714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D690;
  if (!qword_27CB2D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D690);
  }

  return result;
}

unint64_t sub_21770476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D698;
  if (!qword_27CB2D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D698);
  }

  return result;
}

unint64_t sub_2177047C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6A0;
  if (!qword_27CB2D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6A0);
  }

  return result;
}

unint64_t sub_21770481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6A8;
  if (!qword_27CB2D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6A8);
  }

  return result;
}

unint64_t sub_217704874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6B0;
  if (!qword_27CB2D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6B0);
  }

  return result;
}

unint64_t sub_2177048CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6B8;
  if (!qword_27CB2D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6B8);
  }

  return result;
}

unint64_t sub_217704924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6C0;
  if (!qword_27CB2D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6C0);
  }

  return result;
}

unint64_t sub_21770497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6C8;
  if (!qword_27CB2D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6C8);
  }

  return result;
}

unint64_t sub_2177049D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6D0;
  if (!qword_27CB2D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6D0);
  }

  return result;
}

unint64_t sub_217704A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6D8;
  if (!qword_27CB2D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6D8);
  }

  return result;
}

unint64_t sub_217704A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6E0;
  if (!qword_27CB2D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6E0);
  }

  return result;
}

unint64_t sub_217704ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6E8;
  if (!qword_27CB2D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6E8);
  }

  return result;
}

unint64_t sub_217704B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6F0;
  if (!qword_27CB2D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6F0);
  }

  return result;
}

unint64_t sub_217704B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D6F8;
  if (!qword_27CB2D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D6F8);
  }

  return result;
}

unint64_t sub_217704BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D700;
  if (!qword_27CB2D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D700);
  }

  return result;
}

unint64_t sub_217704C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D708;
  if (!qword_27CB2D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D708);
  }

  return result;
}

unint64_t sub_217704C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D710;
  if (!qword_27CB2D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D710);
  }

  return result;
}

unint64_t sub_217704CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D718;
  if (!qword_27CB2D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D718);
  }

  return result;
}

unint64_t sub_217704D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D720;
  if (!qword_27CB2D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D720);
  }

  return result;
}

unint64_t sub_217704D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D728;
  if (!qword_27CB2D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D728);
  }

  return result;
}

unint64_t sub_217704DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D730;
  if (!qword_27CB2D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D730);
  }

  return result;
}

__n128 Artwork._TextGradient.init(leadingColor:trailingColor:_leadingColor:_trailingColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = a4[1].n128_u64[0];
  v9 = a4[1].n128_u64[1];
  v10 = a4[2].n128_u64[0];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  *(a5 + 40) = v6;
  *(a5 + 48) = v7;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v8;
  *(a5 + 80) = v9;
  *(a5 + 88) = v10;
  return result;
}

id Artwork._TextGradient.leadingColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Artwork._TextGradient.trailingColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t static Artwork._TextGradient.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v34 = a1[8];
  v35 = a1[7];
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v32 = *(a2 + 56);
  v33 = a1[9];
  v16 = *(a2 + 72);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v28 = *(a2 + 88);
    v29 = *(a2 + 80);
    v30 = *(a1 + 11);
    v31 = *(a1 + 10);
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    v17 = v8;
    v18 = sub_217751988();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(a2 + 88);
    v29 = *(a2 + 80);
    v30 = *(a1 + 11);
    v31 = *(a1 + 10);
    if (v8)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (v9)
    {
      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v19 = v9;
      v20 = sub_217751988();

      result = 0;
      if ((v20 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    return 0;
  }

  result = 0;
  if (v9)
  {
    return result;
  }

LABEL_11:
  if (v3 == v11 && v4 == v10 && v5 == v12)
  {
    v24 = v6 == v13 && v7 == v14;
    if (v24 || (sub_217753058() & 1) != 0)
    {
      v25 = v35 == v32 && v34 == v15;
      if (v25 && v33 == v16)
      {
        v27 = v31 == v29 && v30 == v28;
        if (v27 || (sub_217753058() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t Artwork._TextGradient.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  if (!*v1)
  {
    sub_217753208();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_217753208();
    goto LABEL_6;
  }

  sub_217753208();
  type metadata accessor for CGColor(0);
  sub_2175B79C4();
  sub_217751998();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_217753208();
  type metadata accessor for CGColor(0);
  sub_2175B79C4();
  sub_217751998();
LABEL_6:
  Artwork.Color.hash(into:)(a1);
  return Artwork.Color.hash(into:)(a1);
}

uint64_t Artwork._TextGradient.hashValue.getter()
{
  sub_2177531E8();
  Artwork._TextGradient.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217705248(uint64_t a1)
{
  sub_2177531E8();
  Artwork._TextGradient.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_217705288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D738;
  if (!qword_27CB2D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D738);
  }

  return result;
}

uint64_t sub_2177052E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_217705324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MusicLibraryRequest.filter<A>(matching:contains:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*a1 + *MEMORY[0x277D84DE8]);
  v27 = *(v8[1] + 16);
  v9 = *(v27 + 16);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  type metadata accessor for MusicPredicateValue(0, v9, v15, v16);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = *v8;
  v21 = *(*(a3 + 24) + 8);
  v28[0] = *(a3 + 16);
  v28[1] = v20;
  v28[2] = v9;
  v28[3] = v21;
  type metadata accessor for MusicPredicate(0, v28);
  v22 = *(v11 + 16);
  v22(v19, a2, v9);
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(a1, v19);

  MEMORY[0x21CEA25D0](v23);
  sub_217204C78(*((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_217752378();
  sub_2171F91B8(sub_2172B1884);
  v24 = *(*(v4 + 64) + 16);
  sub_2171F9338(v24, sub_2172B1884);

  v22(v14, a2, v9);
  return sub_21770BBF4(v24, v14, (v4 + 64), v9, *(v27 + 24));
}

uint64_t MusicLibraryRequest.sort<A>(by:ascending:)(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_2_15();
  type metadata accessor for MusicSortDescriptor(0, *(v6 + *MEMORY[0x277D84DE8]), v7, v8);
  MusicSortDescriptor.__allocating_init(_:ascending:)(v3, a2);

  MEMORY[0x21CEA25D0](v9);
  sub_217204C78(*((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_217752378();
}

uint64_t sub_21770568C()
{
  OUTLINED_FUNCTION_10();
  *(*v0 + 576) = *(*v0 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_217705794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = v4;
  v5 = *(v4 + 184);
  if (*(v4 + 456) != 1)
  {
    v30 = *(v4 + 377);
    v31 = *(v4 + 528);
    v32 = *(v4 + 520);
    *v91 = *(v4 + 552);
    *v95 = *(v4 + 536);
    *(v4 + 504) = sub_217752338();
    v33 = v5;
    v34 = [v33 results];
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    v36 = *(v32 + 24);
    *(v35 + 24) = v36;
    *(v35 + 32) = *v91;
    *(v35 + 48) = v33;
    *(v35 + 56) = *v95;
    *(v35 + 72) = v30;
    *(v35 + 80) = v4 + 504;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_21770BCA4;
    *(v37 + 24) = v35;
    *(v4 + 112) = sub_21770BCE8;
    *(v4 + 120) = v37;
    *(v4 + 80) = MEMORY[0x277D85DD0];
    *(v4 + 88) = 1107296256;
    *(v4 + 96) = sub_2177094CC;
    *(v4 + 104) = &block_descriptor_6_0;
    v38 = _Block_copy((v4 + 80));

    [v34 enumerateItemIdentifiersUsingBlock_];

    _Block_release(v38);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if ((v34 & 1) == 0)
    {
      v95[0] = v33;
      v39 = *(v4 + 392);
      if (!v39)
      {
        goto LABEL_15;
      }

      sub_217751DE8();
      v40 = sub_217752388();

      if (__OFADD__(v39, 1))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v40 == v39 + 1)
      {
        v41 = *(v4 + 528);
        *(v4 + 464) = *(v4 + 504);
        sub_217752418();
        swift_getWitnessTable();
        sub_217751DE8();
        sub_217752748();
        v42 = *(v4 + 304);
        *(v4 + 464) = *(v4 + 288);
        *(v4 + 480) = v42;
        v43 = sub_2177529E8();
        v44 = *(v36 + 8);
        WitnessTable = swift_getWitnessTable();
        v54 = MusicItemCollection.init<A>(_:)(v4 + 464, v41, v43, v44, WitnessTable, v4 + 80);
        v55 = *(v4 + 400);
        v56 = v55 + v39;
        if (__OFADD__(v55, v39))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v57 = *(v4 + 568);
        v58 = *(v4 + 528);
        OUTLINED_FUNCTION_64_26(v46, v47, v48, v49, v50, v51, v52, v53, v4 + 96, v91[1], v95[0], v95[1], v98, v99, v100, v54);
        OUTLINED_FUNCTION_41_0();
        (*(v59 + 16))(v4 + 288, v4 + 384, v41);
        sub_2173B978C(v56, __dst, v58, v36, (v4 + 184));
        memcpy((v4 + 288), (v4 + 184), 0x59uLL);
        v61 = type metadata accessor for MusicLibraryIncrementalLoader(0, v58, v36, v60);
        MusicItemCollectionIncrementalLoader.eraseToAnyIncrementalLoader()(v61, &off_282966C30, (v4 + 464));

        OUTLINED_FUNCTION_41_0();
        v62 = OUTLINED_FUNCTION_95_6();
        v63(v62);
        sub_21770BD10(v4 + 464, v92);
      }

      else
      {
LABEL_15:
        v74 = *(v4 + 568);
        *(v4 + 184) = *(v4 + 504);
        v75 = sub_217752418();
        v44 = *(v36 + 8);
        sub_217751DE8();
        swift_getWitnessTable();
        v76 = OUTLINED_FUNCTION_727();
        MusicItemCollection.init<A>(_:)(v76, v77, v75, v44, v78, v79);
      }

      v80 = OUTLINED_FUNCTION_51_28();
      v83 = type metadata accessor for MusicItemCollection(v80, v81, v44, v82);
      v84 = *(v83 - 8);
      v85 = OUTLINED_FUNCTION_132();
      v86(v85);
      v87 = OUTLINED_FUNCTION_727();
      sub_2173AA804(v87, v88);
      (*(v84 + 8))(v4 + 80, v83);

      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(*(v4 + 520) + 24);
  v7 = *(v6 + 8);
  type metadata accessor for LegacySectionedCollectionItemLoader(0, *(v4 + 528), v7, a4);
  *__dst = 0;
  v102 = 1;
  v99 = &unk_28295BA18;
  HIBYTE(v100) = 1;
  v8 = sub_21774D4B8([v5 results], __dst, &v99, &v100 + 7);
  v9 = *(v4 + 392);
  if (!v9)
  {
LABEL_13:
    v64 = *(v4 + 568);
    MusicItemCollection.init(_:)(v8, v4 + 80);

    goto LABEL_14;
  }

  v10 = [v5 results];
  v11 = [v10 totalItemCount];

  if (__OFADD__(v9, 1))
  {
    goto LABEL_21;
  }

  if (v11 != (v9 + 1))
  {
    goto LABEL_13;
  }

  sub_21774E428();

  v21 = MusicItemCollection.init(_:)(v12, v4 + 80);
  v22 = *(v4 + 400);
  v23 = v22 + v9;
  if (__OFADD__(v22, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = *(v4 + 528);
  OUTLINED_FUNCTION_64_26(v13, v14, v15, v16, v17, v18, v19, v20, v90, v93, *(v4 + 568), v97, v98, v99, v100, v21);
  OUTLINED_FUNCTION_41_0();
  (*(v25 + 16))(v4 + 288, v4 + 384, v9);
  sub_2173B978C(v23, __dst, v24, v6, (v4 + 184));
  memcpy((v4 + 288), (v4 + 184), 0x59uLL);
  v27 = type metadata accessor for MusicLibraryIncrementalLoader(0, v24, v6, v26);
  MusicItemCollectionIncrementalLoader.eraseToAnyIncrementalLoader()(v27, &off_282966C30, (v4 + 464));

  OUTLINED_FUNCTION_41_0();
  v28 = OUTLINED_FUNCTION_95_6();
  v29(v28);
  sub_21770BD10(v4 + 464, v4 + 96);
LABEL_14:
  v65 = OUTLINED_FUNCTION_51_28();
  v68 = type metadata accessor for MusicItemCollection(v65, v66, v7, v67);
  v69 = *(v68 - 8);
  v70 = OUTLINED_FUNCTION_132();
  v71(v70);
  v72 = OUTLINED_FUNCTION_727();
  sub_2173AA804(v72, v73);
  (*(v69 + 8))(v4 + 80, v68);
LABEL_17:
  OUTLINED_FUNCTION_20_0();

  v89();
}

uint64_t sub_217705EB8(uint64_t a1)
{
  v2 = *(v1 + 576);
  v3 = *(v1 + 568);
  v4 = swift_willThrow();
  sub_21728FC9C(v4, v5, v6);
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v8();
}

uint64_t sub_217705F68(uint64_t a1, uint64_t a2)
{
  v2 = sub_217751F48();
  v4 = v3;
  v5 = sub_217751F48();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_217705FE0(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "ileAssetNonPurgeable";
    }

    else
    {
      v2 = "ileAssetProtectionType";
    }
  }

  else
  {
    v2 = "MPModelPropertyLyricsText";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_33();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2177060AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  else
  {
    return OUTLINED_FUNCTION_25_62(a1, a2, a4, a5);
  }
}

uint64_t sub_217706110(char a1)
{
  v2 = "hipPlaylistCurator";
  switch(a1)
  {
    case 1:
      v2 = "adioStationArtwork";
      break;
    case 2:
      v2 = "adioStationEditorNotes";
      break;
    case 3:
      v2 = "adioStationHasExplicitContent";
      break;
    case 4:
      v2 = "MPModelPropertyRadioStationLive";
      break;
    case 5:
      v2 = "MPModelPropertyRadioStationName";
      break;
    case 6:
      v2 = "derBundleIdentifier";
      break;
    case 7:
      v2 = "adioStationProviderName";
      break;
    case 8:
      v2 = "derUniversalLink";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_42_41();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2177062CC(char a1)
{
  v2 = "ecordLabelDescriptionText";
  switch(a1)
  {
    case 1:
      v2 = "MPModelPropertyCuratorKind";
      break;
    case 2:
      v2 = "rtistLibraryAddedDate";
      break;
    case 3:
      v2 = "MPModelPropertyCuratorHandle";
      break;
    case 4:
      v2 = "MPModelPropertyCuratorShortName";
      break;
    case 5:
      v2 = "uratorShortEditorNotes";
      break;
    case 6:
      v2 = "uratorEditorNotes";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_42_41();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_217706468(char a1)
{
  OUTLINED_FUNCTION_61_21(a1, 0xD000000000000018);
  if (v9)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 | 0x8000000000000000;
  OUTLINED_FUNCTION_13_75();
  OUTLINED_FUNCTION_43_33();
  v9 = v9 && v5 == v1;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_108(v6, v7, v8);
  }

  return v10 & 1;
}

uint64_t sub_21770651C(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000007374;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_2177065C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_108(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_217706658(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "musicKit_identifierSet";
    }

    else
    {
      v2 = "nalQueryParameters";
    }
  }

  else
  {
    v2 = "tors";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_33();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21770672C()
{
  OUTLINED_FUNCTION_2_137();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_41_41();
      break;
    case 2:
      v0 = 0xEE0073726F746172;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_4_133();
      break;
    case 5:
      OUTLINED_FUNCTION_8_91();
      break;
    case 6:
      OUTLINED_FUNCTION_24_53();
      break;
    case 7:
      OUTLINED_FUNCTION_19_52();
      break;
    case 8:
      v0 = 0xE800000000000000;
      break;
    case 9:
      v0 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_40_39();
  switch(v6)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_65();
      break;
    case 2:
      v5 = 0x75632D656C707061;
      v1 = 0xEE0073726F746172;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v5 = 0x73726F7461727563;
      break;
    case 4:
      OUTLINED_FUNCTION_3_125();
      break;
    case 5:
      OUTLINED_FUNCTION_7_91();
      break;
    case 6:
      OUTLINED_FUNCTION_22_63();
      break;
    case 7:
      OUTLINED_FUNCTION_15_68();
      break;
    case 8:
      v1 = 0xE800000000000000;
      v5 = 0x736E6F6974617473;
      break;
    case 9:
      v5 = 0x6C75736552706F74;
      v1 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_2177068F8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1635018093;
  }

  else
  {
    v3 = 0x73746C75736572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1635018093;
  }

  else
  {
    v5 = 0x73746C75736572;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_217706984(char a1, char a2)
{
  v2 = 0xEB00000000646579;
  v3 = 0x616C702D74736F6DLL;
  if (a1)
  {
    OUTLINED_FUNCTION_26_47();
    v4 = OUTLINED_FUNCTION_62_24();
    if (v14)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v4 = 0x616C702D74736F6DLL;
    v7 = 0xEB00000000646579;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_26_47();
    v13 = (v12 - 32) | 0x8000000000000000;
    if (v8 == 1)
    {
      v3 = v10;
    }

    else
    {
      v3 = v11;
    }

    if (v8 == 1)
    {
      v2 = v9;
    }

    else
    {
      v2 = v13;
    }
  }

  v14 = v4 == v3 && v7 == v2;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_11_82(v4);
  }

  return v15 & 1;
}

uint64_t sub_217706A3C()
{
  OUTLINED_FUNCTION_2_137();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_4_133();
      break;
    case 2:
      OUTLINED_FUNCTION_8_91();
      break;
    case 3:
      OUTLINED_FUNCTION_19_52();
      break;
    case 4:
      v0 = 0xEA00000000007374;
      break;
    case 5:
      OUTLINED_FUNCTION_34_42(20);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_40_39();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_3_125();
      break;
    case 2:
      OUTLINED_FUNCTION_7_91();
      break;
    case 3:
      OUTLINED_FUNCTION_15_68();
      break;
    case 4:
      v5 = 0x7261684379746963;
      v1 = 0xEA00000000007374;
      break;
    case 5:
      OUTLINED_FUNCTION_29_48();
      v1 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_217706B60(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217706BF4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572707865;
  v4 = a1;
  v5 = 0x6973736572707865;
  v6 = 0xEC00000064496E6FLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x6E6F6973726576;
      break;
    case 2:
      v5 = 0x666E49726F6C6F63;
      v6 = 0xE90000000000006FLL;
      break;
    case 3:
      v5 = 0x6F6C6F4374786574;
      v6 = 0xE900000000000072;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x6E6F6973726576;
      break;
    case 2:
      v3 = 0x666E49726F6C6F63;
      v2 = 0xE90000000000006FLL;
      break;
    case 3:
      v3 = 0x6F6C6F4374786574;
      v2 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v8 & 1;
}

uint64_t sub_217706D54(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217706DE0(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217706E6C(char a1, uint64_t a2)
{
  v2 = 0x726F6A616DLL;
  if (a1)
  {
    OUTLINED_FUNCTION_58_23();
    if (v3)
    {
      v5 = 0x726F6E696DLL;
    }

    else
    {
      v5 = 0x6C61727475656ELL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x726F6A616DLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_58_23();
    if (v7)
    {
      v2 = 0x726F6E696DLL;
    }

    else
    {
      v2 = 0x6C61727475656ELL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_108(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_217706F48(char a1)
{
  if (a1)
  {
    v1 = 0xEC00000073657361;
  }

  else
  {
    v1 = 0xEF73657361656C65;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217706FEC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000736F6DLL;
  v3 = 0x74612D79626C6F64;
  v4 = a1;
  v5 = 0x74612D79626C6F64;
  v6 = 0xEB00000000736F6DLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x75612D79626C6F64;
      v6 = 0xEB000000006F6964;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7373656C73736F6CLL;
      break;
    case 4:
      v5 = 0x6C2D7365722D6968;
      v6 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v5 = 0x74732D7973736F6CLL;
      v6 = 0xEC0000006F657265;
      break;
    case 6:
      v5 = 0x2D6C616974617073;
      v6 = 0xED00006F69647561;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v5 = 0x6C616974617073;
      break;
    case 8:
      v5 = 0xD000000000000013;
      v6 = 0x80000002177AA7E0;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v5 = 0x736F6D7461;
      break;
    case 10:
      v6 = 0xE800000000000000;
      v5 = 0x646E756F72727573;
      break;
    default:
      v6 = 0x80000002177AA770;
      v5 = 0xD000000000000014;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x75612D79626C6F64;
      v2 = 0xEB000000006F6964;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7373656C73736F6CLL;
      break;
    case 4:
      v3 = 0x6C2D7365722D6968;
      v2 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v3 = 0x74732D7973736F6CLL;
      v2 = 0xEC0000006F657265;
      break;
    case 6:
      v3 = 0x2D6C616974617073;
      v2 = 0xED00006F69647561;
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6C616974617073;
      break;
    case 8:
      OUTLINED_FUNCTION_29_48();
      v2 = v7 | 0x8000000000000000;
      break;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x736F6D7461;
      break;
    case 10:
      v2 = 0xE800000000000000;
      v3 = 0x646E756F72727573;
      break;
    default:
      v2 = 0x80000002177AA770;
      v3 = 0xD000000000000014;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v9 & 1;
}

uint64_t sub_2177072D0(uint64_t a1, uint64_t a2)
{
  v2 = 0x726F7461727543;
  if (a1)
  {
    OUTLINED_FUNCTION_58_23();
    if (v3)
    {
      v5 = 0x65726E6547;
    }

    else
    {
      v5 = 2003789907;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x726F7461727543;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_58_23();
    if (v7)
    {
      v2 = 0x65726E6547;
    }

    else
    {
      v2 = 2003789907;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_108(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_2177073A0()
{
  OUTLINED_FUNCTION_10_75();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_34_42(23);
      break;
    case 4:
      OUTLINED_FUNCTION_18_60();
      break;
    case 5:
      v1 = 0xE600000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_57_28();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_34();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_29_48();
      v0 = v7 | 0x8000000000000000;
      break;
    case 2:
      v5 = 0x726F7461727563;
      break;
    case 3:
      v5 = 0x73656972746E65;
      break;
    case 4:
      OUTLINED_FUNCTION_16_73();
      break;
    case 5:
      v0 = 0xE600000000000000;
      v5 = 0x746E65726170;
      break;
    case 6:
      OUTLINED_FUNCTION_54_27();
      break;
    default:
      break;
  }

  if (v3 == v5 && v1 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_2177074FC()
{
  OUTLINED_FUNCTION_23_59();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x7473696C79616C70;
    }

    if (v4 == 1)
    {
      v6 = 0x80000002177AA6E0;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x7473696C79616C70;
    }

    if (v2 == 1)
    {
      v0 = 0x80000002177AA6E0;
    }

    else
    {
      v0 = 0xE900000000000073;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v8 & 1;
}

uint64_t sub_2177075E0()
{
  OUTLINED_FUNCTION_23_59();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = 0x75626972746E6F63;
      v6 = 0xEC00000073726F74;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x80000002177AA6B0;
      break;
    case 3:
      v5 = 0x2D79622D65726F6DLL;
      v6 = 0xEF726F7461727563;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x75626972746E6F63;
      v0 = 0xEC00000073726F74;
      break;
    case 2:
      OUTLINED_FUNCTION_29_48();
      v0 = v7 | 0x8000000000000000;
      break;
    case 3:
      v2 = 0x2D79622D65726F6DLL;
      v0 = 0xEF726F7461727563;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v9 & 1;
}

uint64_t sub_217707734(char a1)
{
  v2 = "omeSharingAssetAvailable";
  switch(a1)
  {
    case 1:
      v2 = "toreAssetRedownloadable";
      break;
    case 2:
      v2 = "toreAssetSubscriptionRequired";
      break;
    case 3:
      v2 = "toreAssetNeedsUserUpload";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_42_41();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_217707858(char a1)
{
  v2 = "SocialContributor";
  switch(a1)
  {
    case 1:
      v2 = "ecordLabelArtwork";
      break;
    case 2:
      v2 = "MPModelPropertyRecordLabelName";
      break;
    case 3:
      v2 = "ecordLabelShortDescriptionText";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_42_41();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21770797C()
{
  OUTLINED_FUNCTION_2_137();
  switch(v2)
  {
    case 1:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_20_55();
      break;
    case 2:
      OUTLINED_FUNCTION_34_42(24);
      break;
    case 3:
      OUTLINED_FUNCTION_36_39();
      break;
    case 4:
      OUTLINED_FUNCTION_4_133();
      break;
    case 5:
      OUTLINED_FUNCTION_8_91();
      break;
    case 6:
      v0 = 0xE700000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_40_39();
  switch(v6)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_10_75();
      break;
    case 2:
      OUTLINED_FUNCTION_29_48();
      v1 = v7 | 0x8000000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_35_40();
      break;
    case 4:
      OUTLINED_FUNCTION_3_125();
      break;
    case 5:
      OUTLINED_FUNCTION_7_91();
      break;
    case 6:
      v1 = 0xE700000000000000;
      v5 = 0x6E6F6974617473;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_217707AB0(unsigned __int8 a1, char a2)
{
  v2 = 0xEF736D75626C612DLL;
  v3 = 0x6465727574616566;
  v4 = a1;
  v5 = 0x6465727574616566;
  v6 = 0xEF736D75626C612DLL;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000012;
      v8 = "appears-on-albums";
      goto LABEL_7;
    case 2:
      break;
    case 3:
      v5 = 0xD000000000000012;
      v8 = "ms";
LABEL_7:
      v6 = v8 | 0x8000000000000000;
      break;
    case 4:
      v7 = 1819047270;
      goto LABEL_11;
    case 5:
      v5 = 0x722D74736574616CLL;
      v6 = 0xEE00657361656C65;
      break;
    case 6:
      v7 = 1702259052;
LABEL_11:
      v5 = v7 | 0x626C612D00000000;
      v6 = 0xEB00000000736D75;
      break;
    case 7:
      v5 = 0x2D72616C696D6973;
      v6 = 0xEF73747369747261;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x73656C676E6973;
      break;
    case 9:
      v6 = 0x80000002177AA630;
      v5 = 0xD000000000000010;
      break;
    case 10:
      v5 = 0x676E6F732D706F74;
      v6 = 0xE900000000000073;
      break;
    default:
      v6 = 0x80000002177AA580;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000012;
      v10 = "appears-on-albums";
      goto LABEL_20;
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_29_48();
LABEL_20:
      v2 = v10 | 0x8000000000000000;
      break;
    case 4:
      v9 = 1819047270;
      goto LABEL_24;
    case 5:
      v3 = 0x722D74736574616CLL;
      v2 = 0xEE00657361656C65;
      break;
    case 6:
      v9 = 1702259052;
LABEL_24:
      v3 = v9 | 0x626C612D00000000;
      v2 = 0xEB00000000736D75;
      break;
    case 7:
      v3 = 0x2D72616C696D6973;
      v2 = 0xEF73747369747261;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x73656C676E6973;
      break;
    case 9:
      v2 = 0x80000002177AA630;
      v3 = 0xD000000000000010;
      break;
    case 10:
      v3 = 0x676E6F732D706F74;
      v2 = 0xE900000000000073;
      break;
    default:
      v2 = 0x80000002177AA580;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v12 & 1;
}

uint64_t sub_217707D80(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6465776F6C6C61;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E692D74706FLL;
    }

    else
    {
      v4 = 0x74696269686F7270;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006465;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6465776F6C6C61;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E692D74706FLL;
    }

    else
    {
      v2 = 0x74696269686F7270;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_217707E70(char a1)
{
  OUTLINED_FUNCTION_61_21(a1, 0xD000000000000014);
  if (v9)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 | 0x8000000000000000;
  OUTLINED_FUNCTION_13_75();
  OUTLINED_FUNCTION_43_33();
  v9 = v9 && v5 == v1;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_108(v6, v7, v8);
  }

  return v10 & 1;
}

uint64_t sub_217707EF4()
{
  OUTLINED_FUNCTION_17_65();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_20_55();
      break;
    case 2:
      v1 = 0xE600000000000000;
      OUTLINED_FUNCTION_36_39();
      break;
    case 3:
      OUTLINED_FUNCTION_57_28();
      break;
    case 4:
      OUTLINED_FUNCTION_18_60();
      break;
    case 5:
      OUTLINED_FUNCTION_24_53();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_34();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_10_75();
      break;
    case 2:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_35_40();
      break;
    case 3:
      OUTLINED_FUNCTION_54_27();
      break;
    case 4:
      OUTLINED_FUNCTION_16_73();
      break;
    case 5:
      OUTLINED_FUNCTION_22_63();
      break;
    default:
      break;
  }

  if (v3 == v5 && v1 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_217707FEC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x2D73726165707061;
  v4 = a1;
  v5 = 0x2D73726165707061;
  v6 = 0xEA00000000006E6FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x65762D726568746FLL;
      v7 = 0x736E6F697372;
      goto LABEL_5;
    case 2:
      v5 = OUTLINED_FUNCTION_52_31();
      v7 = 0x736D75626C61;
      goto LABEL_5;
    case 3:
      v5 = OUTLINED_FUNCTION_52_31();
      v7 = 0x736F65646976;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x65762D726568746FLL;
      v8 = 0x736E6F697372;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_49_34();
      v8 = 0x736D75626C61;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_49_34();
      v8 = 0x736F65646976;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v10 & 1;
}

uint64_t sub_21770813C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1684957547;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1684957547;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_2177081C4()
{
  OUTLINED_FUNCTION_9_93();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      v3 = "";
      goto LABEL_6;
    case 2:
      v1 = 0xEF6D657449646441;
      break;
    case 3:
      v3 = "offset";
LABEL_6:
      v1 = v3 | 0x8000000000000000;
      break;
    case 4:
      v4 = "itemAlreadyAdded";
      goto LABEL_10;
    case 5:
      v1 = 0x80000002177AA470;
      break;
    case 6:
      v4 = "addToPlaylistFailed";
LABEL_10:
      v1 = v4 | 0x8000000000000000;
      break;
    case 7:
      v1 = 0x80000002177AA4B0;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_34();
  switch(v15)
  {
    case 1:
      v16 = v14 - 32;
      goto LABEL_16;
    case 2:
      v7 = 0x6F54656C62616E75;
      v0 = 0xEF6D657449646441;
      break;
    case 3:
      v16 = v13 - 32;
LABEL_16:
      v0 = v16 | 0x8000000000000000;
      v7 = 0xD000000000000010;
      break;
    case 4:
      v17 = v12 - 32;
      goto LABEL_20;
    case 5:
      v0 = (v11 - 32) | 0x8000000000000000;
      v7 = v8 + 3;
      break;
    case 6:
      v17 = v10 - 32;
LABEL_20:
      v0 = v17 | 0x8000000000000000;
      v7 = v8 + 4;
      break;
    case 7:
      v0 = (v9 - 32) | 0x8000000000000000;
      v7 = v8 + 2;
      break;
    default:
      break;
  }

  if (v5 == v7 && v1 == v0)
  {
    v19 = 1;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_5_108(v5, v6, v7);
  }

  return v19 & 1;
}

uint64_t sub_217708384(char a1)
{
  v2 = "MPModelPropertyCuratorSubKind";
  switch(a1)
  {
    case 1:
      v2 = "yricsHasLibraryLyrics";
      break;
    case 2:
      v2 = "yricsHasTimeSyncedLyrics";
      break;
    case 3:
      v2 = "yricsHasStoreLyrics";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_42_41();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2177084A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1954047342;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E6572727563636FLL;
    }

    else
    {
      v4 = 0x74657366666FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000736563;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1954047342;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E6572727563636FLL;
    }

    else
    {
      v2 = 0x74657366666FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000736563;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21770859C(char a1)
{
  v2 = 0xE700000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xEC000000746E6569;
      break;
    case 4:
      v2 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_34();
  switch(v6)
  {
    case 1:
      v5 = 0x6369666675736E69;
      v1 = 0xEC000000746E6569;
      break;
    case 2:
      v7 = 0x657269707865;
      goto LABEL_9;
    case 3:
      v7 = 0x696C61766E69;
LABEL_9:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      v1 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_2177086F8(unsigned __int8 a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE400000000000000;
      break;
    case 2u:
      v2 = 0xE500000000000000;
      break;
    case 4u:
      v2 = 0xE200000000000000;
      break;
    case 6u:
      v2 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_40_39();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1701080931;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x656C746974;
      break;
    case 3:
      v5 = 0x6C6961746564;
      break;
    case 4:
      v1 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 5:
      v5 = 0x656372756F73;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v5 = 1635018093;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_217708860(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_44_32();
    v2 = OUTLINED_FUNCTION_62_24();
    if (v14)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v2 = 25705;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_44_32();
    v11 = (v10 - 32) | 0x8000000000000000;
    if (v6 == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v6 == 1)
    {
      v13 = v7;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    v12 = 25705;
  }

  v14 = v2 == v12 && v5 == v13;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_108(v2, a2, v12);
  }

  return v15 & 1;
}

uint64_t sub_217708908(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217708988(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1836213620;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7079742D6D657469;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA00000000007365;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1836213620;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1954047342;
    }

    else
    {
      v2 = 0x7079742D6D657469;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA00000000007365;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_217708A6C(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217708AE8(unsigned __int8 a1, char a2)
{
  v2 = 0xED000064656E696DLL;
  v3 = 0x7265746544746F6ELL;
  v4 = a1;
  v5 = 0x7265746544746F6ELL;
  v6 = 0xED000064656E696DLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6465696E6564;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_8_21();
      goto LABEL_5;
    case 3:
      v5 = 0x7A69726F68747561;
LABEL_5:
      v6 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6465696E6564;
      break;
    case 2:
      v3 = 0x7463697274736572;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_7_17();
LABEL_10:
      v2 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_82(v5);
  }

  return v8 & 1;
}

uint64_t sub_217708C14()
{
  OUTLINED_FUNCTION_9_93();
  v4 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 + 14;
    }

    if (v4 == 1)
    {
      v6 = 0x80000002177AA2C0;
    }

    else
    {
      v6 = 0x80000002177AA2E0;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = v3;
    }

    else
    {
      v2 = v3 + 14;
    }

    if (v1 == 1)
    {
      v7 = 0x80000002177AA2C0;
    }

    else
    {
      v7 = 0x80000002177AA2E0;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v5, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_217708CE0()
{
  OUTLINED_FUNCTION_9_93();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      v3 = "";
      goto LABEL_5;
    case 2:
      v3 = "ied";
LABEL_5:
      v1 = v3 | 0x8000000000000000;
      break;
    case 3:
      v1 = 0xEF6E4964656E6769;
      break;
    case 4:
      v1 = 0x80000002177AA2E0;
      break;
    case 5:
      v1 = 0x80000002177AA360;
      break;
    case 6:
      v1 = 0x80000002177AA380;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_34();
  switch(v13)
  {
    case 1:
      v14 = v12 - 32;
      goto LABEL_13;
    case 2:
      v14 = v11 - 32;
LABEL_13:
      v0 = v14 | 0x8000000000000000;
      v6 = 0xD000000000000010;
      break;
    case 3:
      v6 = 0x53746F4E72657375;
      v0 = 0xEF6E4964656E6769;
      break;
    case 4:
      v0 = (v10 - 32) | 0x8000000000000000;
      v6 = v7 + 14;
      break;
    case 5:
      v0 = (v9 - 32) | 0x8000000000000000;
      v6 = v7 + 11;
      break;
    case 6:
      v0 = (v8 - 32) | 0x8000000000000000;
      v6 = v7 + 6;
      break;
    default:
      break;
  }

  if (v4 == v6 && v1 == v0)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v16 & 1;
}

uint64_t sub_217708E88(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x726568746FLL;
    }

    if (v2 == 1)
    {
      v4 = 0x80000002177AA290;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0x80000002177AA270;
    v3 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x726568746FLL;
    }

    if (a2 == 1)
    {
      v6 = 0x80000002177AA290;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0x80000002177AA270;
    v5 = 0xD000000000000015;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_217708F60()
{
  OUTLINED_FUNCTION_2_137();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_41_41();
      break;
    case 2:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_20_55();
      break;
    case 3:
      OUTLINED_FUNCTION_36_39();
      break;
    case 4:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_18_60();
      break;
    case 5:
      OUTLINED_FUNCTION_19_52();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_40_39();
  switch(v6)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_65();
      break;
    case 2:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_10_75();
      break;
    case 3:
      OUTLINED_FUNCTION_35_40();
      break;
    case 4:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_16_73();
      break;
    case 5:
      OUTLINED_FUNCTION_15_68();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_21770905C(char a1)
{
  if (a1)
  {
    v1 = 0xED000065726E6567;
  }

  else
  {
    v1 = 0xEE00747369747261;
  }

  OUTLINED_FUNCTION_13_75();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_108(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_217709104(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "-incremental-loaders";
    }

    else
    {
      v2 = "ncremental-loaders";
    }
  }

  else
  {
    v2 = "d";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_33();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_108(v4, v5, v6);
  }

  return v8 & 1;
}

void sub_2177091D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = (a1 + 56);
  if (!v3)
  {
    return;
  }

  while (1)
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = qword_21779C650[*v4];
    v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    sub_217751DE8();
    v9 = [v8 initWithInteger_];
    if (v9)
    {
      break;
    }

    v17 = sub_21763246C(v5, v6);
    if ((v18 & 1) == 0)
    {

LABEL_15:

      goto LABEL_16;
    }

    v19 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D768, &unk_21779C640);
    sub_217752CB8();

    v20 = *(v30[7] + 8 * v19);
    sub_21770BDE8();
    sub_217752CD8();
    *v2 = v30;

LABEL_16:
    v4 += 32;
    if (!--v3)
    {
      return;
    }
  }

  v28 = v9;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v29 = *v2;
  v11 = sub_21763246C(v5, v6);
  if (!__OFADD__(v10[2], (v12 & 1) == 0))
  {
    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D768, &unk_21779C640);
    if (sub_217752CB8())
    {
      v15 = sub_21763246C(v5, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_20;
      }

      v13 = v15;
    }

    if (v14)
    {
      v21 = v29[7];
      v22 = *(v21 + 8 * v13);
      *(v21 + 8 * v13) = v28;
    }

    else
    {
      v29[(v13 >> 6) + 8] |= 1 << v13;
      v23 = (v29[6] + 16 * v13);
      *v23 = v5;
      v23[1] = v6;
      *(v29[7] + 8 * v13) = v28;
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_19;
      }

      v29[2] = v26;
      sub_217751DE8();
    }

    v2 = a2;
    *a2 = v29;

    goto LABEL_15;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_217753178();
  __break(1u);
}

uint64_t sub_2177094CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_217751968();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  sub_217751948();
  swift_unknownObjectRetain();
  v13(v12, a3, a4);
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v12, v7);
}

uint64_t static MusicLibraryRequest.augment(_:with:legacyModelRelationshipConfigurations:library:)()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v0[54] = v1;
  v0[55] = v3;
  v0[52] = v4;
  v0[53] = v5;
  v0[50] = v6;
  v0[51] = v7;
  v0[49] = v8;
  v9 = sub_2177528F8();
  v0[56] = v9;
  v0[57] = *(v9 - 8);
  v0[58] = swift_task_alloc();
  v10 = *(v2 - 8);
  v0[59] = v10;
  v0[60] = *(v10 + 64);
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_21770970C()
{
  v38 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v2 + 16);
  *(v0 + 504) = v5;
  *(v0 + 512) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0;
    sub_21770BD80(v0 + 232);
    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_132();
    sub_217753018();
    OUTLINED_FUNCTION_21_53();
    MEMORY[0x21CEA23B0](v27 + 15, v28 | 0x8000000000000000);
    return OUTLINED_FUNCTION_0_88("Fatal error");
  }

  v6 = sub_2171F3F0C((v0 + 232), v0 + 192);
  v8 = OUTLINED_FUNCTION_23_9(v6, v7, &protocol descriptor for MusicItemTypeValueProviding);
  *(v0 + 520) = v8;
  *(v0 + 528) = v9;
  if (!v8)
  {
    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    v29 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v29);
    v30 = OUTLINED_FUNCTION_27_8();
    MEMORY[0x21CEA23B0](v30);

    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v31);
    return OUTLINED_FUNCTION_0_88("Fatal error");
  }

  v10 = OUTLINED_FUNCTION_23_9(v8, v9, &protocol descriptor for PropertyProviderBasedInitializable);
  *(v0 + 536) = v10;
  *(v0 + 544) = v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    v32 = OUTLINED_FUNCTION_8();
    MEMORY[0x21CEA23B0](v32);
    v33 = sub_217753348();
    MEMORY[0x21CEA23B0](v33);

    OUTLINED_FUNCTION_21_53();
    MEMORY[0x21CEA23B0](v34 + 7, v35 | 0x8000000000000000);
    return OUTLINED_FUNCTION_0_88("Fatal error");
  }

  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  v14 = *(v0 + 408);
  sub_21770BDE8();
  *(v0 + 368) = sub_217751DC8();
  sub_2177091D0(v12, (v0 + 368));
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), v15);
  LOBYTE(v37) = 5;
  sub_2173AAEE8(&v37, v15, v16);
  v17 = *(v0 + 216);
  v18 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), v17);
  (*(v18 + 32))(&v37, v17, v18);
  sub_21721478C();
  v19 = *(v0 + 368);
  *(v0 + 552) = v19;
  v20 = *(v13 + 16);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v21 = v20;
  sub_217751DE8();
  sub_217751DE8();
  v22 = OUTLINED_FUNCTION_727();
  v24 = sub_21770B480(v22, v23, v14, v19, v20);
  *(v0 + 560) = v24;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 376;
  *(v0 + 24) = sub_217709B48;
  v25 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_246();
  *(v0 + 104) = v26;
  *(v0 + 112) = v25;
  [v24 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_217709B48()
{
  OUTLINED_FUNCTION_10();
  *(*v0 + 568) = *(*v0 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_217709C50()
{
  v49 = v0;
  v1 = v0[52];
  v43 = v0[47];
  v2 = *(v1 + 16);
  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    sub_217752BF8();
    v3 = v1 + 32;
    do
    {
      v3 += 32;

      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      --v2;
    }

    while (v2);
    v4 = v0 + 48;
    v42 = v45;
  }

  else
  {
    v4 = v0 + 48;
    v42 = MEMORY[0x277D84F90];
  }

  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[61];
  v8 = v0[59];
  v9 = v0[50];
  v0[48] = 0;
  v38 = *(v0 + 27);
  v10 = v0[54];
  v40 = *(v0 + 65);
  v41 = [v43 results];
  v5(v7, v9, v10);
  v11 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v38;
  *(v12 + 32) = v40;
  v13 = v4;
  *(v12 + 48) = v4;
  *(v12 + 56) = v43;
  v39 = *(v8 + 32);
  v39(v12 + v11, v7, v10);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21770BE2C;
  *(v14 + 24) = v12;
  v0[22] = sub_21770C13C;
  v0[23] = v14;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2177094CC;
  v0[21] = &block_descriptor_20_1;
  v15 = _Block_copy(v0 + 18);
  v16 = v43;
  sub_217751DE8();

  [v41 enumerateItemIdentifiersUsingBlock_];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v44 = v16;
    v19 = *v13;
    if (*v13)
    {
      v20 = v0[68];
      v21 = v0[67];
      v47 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
      v48 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
      v45 = v19;
      v22 = *(v20 + 16);
      v0[37] = v21;
      v0[38] = v20;
      __swift_allocate_boxed_opaque_existential_0(v0 + 34);
      swift_retain_n();
      v22(&v45, v21, v20);
      sub_21749A32C((v0 + 34), (v0 + 39));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v35 = v0[57];
        v34 = v0[58];
        v36 = v0[56];
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v0[54]);
        (*(v35 + 8))(v34, v36);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_217752AA8();
        v37 = v46;
        v0[44] = v45;
        v0[45] = v37;
        MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
        sub_217752C78();
        MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AE360);
        OUTLINED_FUNCTION_132();
        sub_217753018();
        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        return OUTLINED_FUNCTION_0_88("Fatal error");
      }

      v23 = v0[70];
      v24 = v0[58];
      v25 = v0[54];
      v26 = v0[49];

      __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
      v39(v26, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(v0 + 34);
    }

    else
    {
      v27 = v0[70];
      v28 = v0[63];
      v29 = v0[54];
      v31 = v0[49];
      v30 = v0[50];

      v28(v31, v30, v29, v32);
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 24);

    OUTLINED_FUNCTION_20_0();

    return v33();
  }

  return result;
}

uint64_t sub_21770A1EC(uint64_t a1)
{
  v2 = *(v1 + 560);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t MusicLibraryRequest._library.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MusicLibraryRequest.filter(matching:contains:)()
{
  OUTLINED_FUNCTION_3_10();
  v1 = *(v0 + *MEMORY[0x277D84DE8]);
  v3 = *(*(v2 + 24) + 8);
  v14 = *(v2 + 16);
  v15 = v1;
  v16 = MEMORY[0x277D837D0];
  v17 = v3;
  v4 = type metadata accessor for MusicPredicate(0, &v14);
  OUTLINED_FUNCTION_6_4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

{
  OUTLINED_FUNCTION_3_10();
  v1 = *(*(v0 + 24) + 8);
  v3 = *(v2 + *MEMORY[0x277D84DE8]);
  v14 = *(v0 + 16);
  v15 = v3;
  v16 = v1;
  v4 = type metadata accessor for MusicPredicate(0, &v14);
  OUTLINED_FUNCTION_6_4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, SBYTE8(v15));
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

uint64_t _s8MusicKit0A14LibraryRequestV6filter8matching7equalToys7KeyPathCy0C6FilterQzqd__G_qd__tAA0acdK14ValueEquatableRd__lF_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicPredicateValue(0, v5, v6, v7);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_27();
  OUTLINED_FUNCTION_48_26(v9);
  OUTLINED_FUNCTION_41_0();
  (*(v10 + 16))(v2, a2, v5);
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_95_6();
  MusicPredicate.__allocating_init(_:_:)(v11, v12);

  MEMORY[0x21CEA25D0](v13);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

uint64_t sub_21770A838(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  type metadata accessor for MusicPredicateValue(0, *(v4 + *MEMORY[0x277D84DE8] + 8), v5, v6);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_27();
  OUTLINED_FUNCTION_48_26(v8);
  *v2 = a2;
  swift_storeEnumTagMultiPayload();
  v9 = OUTLINED_FUNCTION_95_6();
  MusicPredicate.__allocating_init(_:_:)(v9, v10);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v11);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

Swift::Void __swiftcall MusicLibraryRequest.filter(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  sub_217751DE8();

  *(v1 + 32) = countAndFlagsBits;
  *(v1 + 40) = object;
}

uint64_t MusicLibraryRequest.filter(matching:equalTo:)(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, 0x161uLL);
  v6 = *(*(a3 + 24) + 8);
  __src[0] = *(a3 + 16);
  __src[1] = __src[0];
  __src[2] = &type metadata for MusicIdentifierSet;
  __src[3] = v6;
  type metadata accessor for MusicPredicate(0, __src);
  memcpy(__src, a2, 0x161uLL);
  sub_21770BED8(__src);
  memcpy(v9, __src, 0x162uLL);
  MusicPredicate.__allocating_init(_:_:)(a1, v9);
  sub_217269EF4(__dst, v9);

  MEMORY[0x21CEA25D0](v7);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

uint64_t MusicLibraryRequest.filter(matching:memberOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 8);
  __src[0] = *(a3 + 16);
  __src[1] = __src[0];
  __src[2] = &type metadata for MusicIdentifierSet;
  __src[3] = v5;
  type metadata accessor for MusicPredicate(0, __src);
  __src[0] = a2;
  sub_21770BEE0(__src);
  memcpy(v8, __src, 0x162uLL);
  MusicPredicate.__allocating_init(_:_:)(a1, v8);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v6);
  OUTLINED_FUNCTION_1_139();
  return sub_217752378();
}

void sub_21770AB1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = MEMORY[0x21CEA3980](a1, a2, a3);
  sub_21770ABDC(a2, a4, a5, a1, a6, a7, a8, a9, a10, a11);

  objc_autoreleasePoolPop(v19);
}

uint64_t sub_21770ABDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v54 = a8;
  v45 = a7;
  v46 = a6;
  v41 = a4;
  v42 = a5;
  v44 = a10;
  v13 = sub_2177528F8();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v43 = &v36 - v14;
  v40 = *(a10 - 8);
  MEMORY[0x28223BE20](v15);
  v36 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v36 - v18;
  v19 = sub_217751968();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 8);
  swift_unknownObjectRetain();
  v23(&v48, a2, a3);
  v52 = v48;
  v53 = v49;
  *&v47[0] = &unk_282960310;
  v55 = 4;
  sub_2172B6904(a1, &v52, v47, &v55, v51);
  (*(v20 + 16))(v22, v41, v19);
  v24 = [v42 results];
  v25 = [v24 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v25;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v23(&v52, a2, a3);
  v26 = v43;
  v47[0] = v52;
  v47[1] = v53;
  v55 = 1;
  v27 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v49 + 1) = v27;
  v50 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v48 = v28;
  LOBYTE(v52) = v54;
  v30 = v45;
  v29 = v46;
  v31 = *(v45 + 24);
  v51[3] = v46;
  v51[4] = v45;
  __swift_allocate_boxed_opaque_existential_0(v51);

  v31(&v48, &v52, v29, v30);
  v32 = v44;
  sub_21749A32C(v51, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v32);
    v33 = v40;
    v34 = v37;
    (*(v40 + 32))(v37, v26, v32);
    (*(v33 + 16))(v36, v34, v32);
    sub_217752418();
    sub_2177523C8();

    (*(v33 + 8))(v34, v32);
  }

  else
  {

    __swift_storeEnumTagSinglePayload(v26, 1, 1, v32);
    (*(v38 + 8))(v26, v39);
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_21770B0B4(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a8;
  v25 = a1;
  v26 = a7;
  v31 = a6;
  v32 = a3;
  v28 = a11;
  v30 = a9;
  v14 = sub_217751968();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a5 + 8);
  v18 = v27;
  swift_unknownObjectRetain();
  v18(&v36, a4, a5);
  v42 = v36;
  v43 = v37;
  v44 = v38;
  *&v33 = &unk_282960550;
  v41 = 4;
  sub_2172B6904(a2, &v42, &v33, &v41, &v40);
  (*(v15 + 16))(v17, v25, v14);
  v19 = [v26 results];
  v20 = [v19 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v20;
  v21 = *(v28 + 8);
  v38 = a10;
  v39 = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(a10 - 8) + 16))(boxed_opaque_existential_0, v29, a10);
  v27(&v42, a4, a5);
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v41 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v31 = v23;

  *v32 = 1;
  return result;
}

uint64_t MusicLibraryRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

id MusicLibraryRequest.legacyModelRequest.getter(uint64_t a1)
{
  memcpy(v6, v1, sizeof(v6));
  v3 = sub_21721EDBC(a1);
  v4 = [v3 underlyingRequest];

  return v4;
}

id sub_21770B480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_217752288();

  sub_21770BDE8();
  OUTLINED_FUNCTION_95_6();
  v10 = sub_217751D88();
  v11 = [v5 initWithLegacyModelObject:a1 itemType:a2 properties:v9 relationships:v10 mediaLibrary:{a5, }];

  return v11;
}

uint64_t sub_21770B54C(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_217752AA8();
  return 0;
}

uint64_t sub_21770BBF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_0(&v10);
  OUTLINED_FUNCTION_41_0();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_2171F3F0C(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_21770BD10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21770BD80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB281E0, &qword_2177871A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21770BDE8()
{
  result = qword_27CB2D740;
  if (!qword_27CB2D740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2D740);
  }

  return result;
}

uint64_t block_copy_helper_18_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21770BEF0()
{
  result = qword_27CB2D750;
  if (!qword_27CB2D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D758, &qword_21779C470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D750);
  }

  return result;
}

unint64_t sub_21770BF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D760;
  if (!qword_27CB2D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D760);
  }

  return result;
}

uint64_t sub_21770BFAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_21770BFEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicLibraryRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_11_82(uint64_t a1)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_48_26@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 + 8);
  *(v4 - 96) = v1;
  *(v4 - 88) = a1;
  *(v4 - 80) = v3;
  *(v4 - 72) = v6;

  return type metadata accessor for MusicPredicate(0, v4 - 96);
}

uint64_t OUTLINED_FUNCTION_61_21@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return a2;
  }
}

uint64_t OUTLINED_FUNCTION_62_24()
{
  if (v0 == 1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *OUTLINED_FUNCTION_64_26(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return memcpy(va, (v15 + 200), 0x49uLL);
}

uint64_t Playlist.Entry.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v168 = a3;
  v166 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v8 - 8);
  v155 = v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = v154 - v11;
  MEMORY[0x28223BE20](v12);
  v157 = v154 - v13;
  MEMORY[0x28223BE20](v14);
  v156 = v154 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29728, &unk_217778720);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v154 - v17;
  v19 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  v22 = v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v154 - v24;
  memcpy(v182, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v26 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v27 = v26;
    v28 = sub_217751D98();
  }

  else
  {
    v28 = sub_217751DC8();
  }

  v171 = sub_21729F3F8(v28);
  memcpy(v180, a1, 0x161uLL);
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  v175[0] = xmmword_280BE8AD0;
  LOBYTE(v175[1]) = byte_280BE8AE0;
  v174[0] = xmmword_280BE8AD0;
  LOBYTE(v174[1]) = byte_280BE8AE0;
  swift_bridgeObjectRetain_n();
  v183.value.rawValue._countAndFlagsBits = v175;
  v183.value.rawValue._object = v174;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v176, v183, v184);

  countAndFlagsBits = v176[0].type.rawValue._countAndFlagsBits;
  *&v169 = v176[0].type.rawValue._object;
  LODWORD(v162) = v176[0].type.isLibraryType;
  v163 = v176[0].href.value._countAndFlagsBits;
  object = v176[0].id.rawValue._object;
  v170 = v176[0].href.value._object;
  sub_2171F50C0(v168, v176, &qword_27CB27590, &qword_21776ADF0);
  v167 = a2;
  v159 = v28;
  v160 = a4;
  if (!v176[0].type.rawValue._object)
  {
    sub_2171F0738(v176, &qword_27CB27590, &qword_21776ADF0);
    OUTLINED_FUNCTION_16_74();
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((OUTLINED_FUNCTION_9_94(v29) & 1) == 0)
  {
    OUTLINED_FUNCTION_14_70();
    goto LABEL_14;
  }

  if (!*(&v180[1] + 1))
  {
LABEL_14:
    sub_2171F0738(v180, &qword_27CB24B68, &qword_217759430);
    goto LABEL_15;
  }

  sub_2171F3F0C(v180, v181);
  v30 = *(&v181[1] + 1);
  v31 = *&v181[2];
  __swift_project_boxed_opaque_existential_1(v181, *(&v181[1] + 1));
  PropertyProviderBackedItem.staticPropertyProvider.getter(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
    sub_2176F27A4(v18, v22);
    sub_21770DA64(v22, v25);
    memcpy(v180, v182, 0x161uLL);
    v32 = v19[19];
    memcpy(v174, &v22[v32], 0x161uLL);
    memcpy(v172, &v22[v32], sizeof(v172));
    sub_217269EF4(v174, v176);
    MusicIdentifierSet.union(_:)();
    memcpy(v175, v172, 0x161uLL);
    sub_217269F50(v175);
    sub_2176F2808(v22);
    v33 = v19[19];
    memcpy(v180, &v25[v33], 0x161uLL);
    sub_217269F50(v180);
    memcpy(&v25[v33], v176, 0x161uLL);
    v34 = &v25[v19[20]];
    v35 = v169;
    sub_217751DE8();

    *v34 = countAndFlagsBits;
    *(v34 + 1) = v35;
    v34[16] = v162;
    v36 = &v25[v19[21]];
    v37 = v170;
    sub_217751DE8();

    *v36 = v163;
    *(v36 + 1) = v37;
    __swift_destroy_boxed_opaque_existential_1(v181);
    goto LABEL_20;
  }

  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_2171F0738(v18, &qword_27CB29728, &unk_217778720);
  __swift_destroy_boxed_opaque_existential_1(v181);
LABEL_15:
  memset(v176, 0, 56);
  LOBYTE(v176[1].id.rawValue._countAndFlagsBits) = -1;
  sub_217269EF4(v182, v180);
  sub_217751DE8();
  sub_217751DE8();
  v158 = OUTLINED_FUNCTION_1_140();
  v38 = OUTLINED_FUNCTION_1_140();
  v39 = OUTLINED_FUNCTION_1_140();
  v40 = OUTLINED_FUNCTION_1_140();
  memset(v175, 0, 40);
  sub_2172A497C(v180);
  memcpy(v25, v180, 0x221uLL);
  *(v25 + 69) = 0;
  v25[560] = 1;
  *(v25 + 568) = 0u;
  *(v25 + 584) = 0u;
  v41 = v19[8];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(&v25[v41]);
  OUTLINED_FUNCTION_15_10(&v25[v19[9]]);
  v42 = &v25[v19[10]];
  *(v42 + 48) = 0;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *v42 = 0u;
  *(v42 + 56) = -1;
  v43 = &v25[v19[11]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v43[16] = 0;
  v44 = &v25[v19[12]];
  *(v44 + 14) = 0;
  *(v44 + 5) = 0u;
  *(v44 + 6) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *v44 = 0u;
  v45 = &v25[v19[14]];
  *v45 = 0;
  *(v45 + 1) = 0;
  OUTLINED_FUNCTION_15_10(&v25[v19[15]]);
  v46 = &v25[v19[16]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &v25[v19[17]];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  if (qword_280BE3168 != -1)
  {
    swift_once();
  }

  v48 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    v152 = qword_280C01FB0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FB0 < 0)
    {
      v152 = qword_280C01FB0;
    }

    v154[1] = v152;
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v153 = sub_217752D28();

    v48 = v153;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v49 = &v25[v19[13]];
  *&v25[v19[18]] = v48;
  v50 = &v25[v19[21]];
  memcpy(&v25[v19[19]], v182, 0x161uLL);
  v51 = &v25[v19[20]];
  v52 = v169;
  *v51 = countAndFlagsBits;
  *(v51 + 1) = v52;
  v51[16] = v162;
  v53 = v170;
  *v50 = v163;
  *(v50 + 1) = v53;
  *&v25[v19[22]] = v158;
  *&v25[v19[23]] = v38;
  *&v25[v19[24]] = v39;
  *&v25[v19[25]] = v40;
  sub_21729C968(v176, v42, &qword_27CB27D20, &qword_217758B80);
  *v49 = 0;
  v49[8] = 1;
  sub_21729C968(v175, v47, &qword_27CB24BA8, &unk_217772FF0);
  a2 = v167;
  a4 = v160;
LABEL_20:
  v54 = static LegacyModel.innerModelObject(for:)(a2);
  v55 = &xmmword_27822A000;
  if (!v54)
  {
    result = sub_217752D08();
    __break(1u);
    return result;
  }

  v56 = v54;

  sub_217751DE8();
  Playlist.Entry.Kind.init(from:)(v180);
  if (LOBYTE(v180[0]) == 3)
  {
    v57 = 1;
  }

  else
  {
    v57 = LOBYTE(v180[0]);
  }

  if (([v56 respondsToSelector_] & 1) != 0 && (v58 = objc_msgSend(v56, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v59 = v58;
    v60 = sub_217751D98();
  }

  else
  {
    v60 = sub_217751DC8();
  }

  v170 = sub_21729F3F8(v60);

  memset(v172, 0, 56);
  v172[56] = -1;
  memset(v181, 0, 40);
  v61 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry, &type metadata for Playlist.Entry, &protocol descriptor for UnderlyingLegacyModelObjectExtendedConvertible);
  if (v61)
  {
    v63 = v61;
    v64 = v62;
    memcpy(v180, v182, 0x161uLL);
    (*(v64 + 16))(v176, v180, a2, v168, a4, v63, v64);
    sub_2171F0738(v181, &qword_27CB24BA8, &unk_217772FF0);
    v181[0] = v176[0].id;
    *&v181[1] = v176[0].type;
  }

  if (v57)
  {
    if (v57 == 1)
    {
      if (([v56 respondsToSelector_] & 1) != 0 && (v65 = objc_msgSend(v56, sel_musicKit_modelObjectStorageDictionary)) != 0)
      {
        v66 = v65;
        v67 = sub_217751D98();
      }

      else
      {
        v67 = sub_217751DC8();
      }

      sub_2173ACA4C(0xD000000000000028, 0x80000002177A8CA0, v67);
      if (*(&v180[1] + 1))
      {
        if (OUTLINED_FUNCTION_17_66(v77, v78, v79, MEMORY[0x277D839B0]))
        {
          countAndFlagsBits_low = LOBYTE(v176[0].id.rawValue._countAndFlagsBits);
          goto LABEL_49;
        }
      }

      else
      {
        sub_2171F0738(v180, &qword_27CB2AD40, &qword_2177583F0);
      }

      countAndFlagsBits_low = 0;
LABEL_49:
      sub_2173ACA4C(0xD00000000000001BLL, 0x80000002177A8C80, v67);

      if (*(&v180[1] + 1))
      {
        if (OUTLINED_FUNCTION_17_66(v81, v82, v83, MEMORY[0x277D839B0]))
        {
          if (countAndFlagsBits_low)
          {
            v84 = LOBYTE(v176[0].id.rawValue._countAndFlagsBits);
LABEL_56:

            OUTLINED_FUNCTION_5_109();
            a2 = *(&v180[1] + 1);
            OUTLINED_FUNCTION_158();
            sub_2171F0738(v85, v86, v87);
            if (a2)
            {
              OUTLINED_FUNCTION_15_69();
            }

            else
            {
              if (v84)
              {
                if (qword_280BE4B18 != -1)
                {
                  swift_once();
                }

                OUTLINED_FUNCTION_0_155(qword_280BE4B20);
                sub_217751DE8();
                swift_unknownObjectRetain();
                v93 = 33;
              }

              else
              {
                if (qword_280BE4B40 != -1)
                {
                  swift_once();
                }

                OUTLINED_FUNCTION_0_155(qword_280BE4B48);
                swift_unknownObjectRetain();
                sub_217751DE8();
                v93 = 32;
              }

              v163 = v93;
              *&v169 = v56;
            }

            swift_getKeyPath(byte_21779C760);
            object = 6;
            a4 = 8;
            v68 = 9;
            v55 = 27;
            goto LABEL_81;
          }

          goto LABEL_58;
        }
      }

      else
      {
        sub_2171F0738(v180, &qword_27CB2AD40, &qword_2177583F0);
      }

      if (countAndFlagsBits_low)
      {
        v84 = 0;
        goto LABEL_56;
      }

LABEL_58:
      v88 = v168;
      sub_2171F50C0(v168, v175, &qword_27CB27590, &qword_21776ADF0);
      sub_2171F50C0(v88, v176, &qword_27CB27590, &qword_21776ADF0);
      if (v176[0].type.rawValue._object)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD70, &unk_217787190);
        if (OUTLINED_FUNCTION_9_94(v89))
        {
          if (*(&v180[1] + 1))
          {
            sub_2171F3F0C(v180, v174);
            v90 = *(&v174[1] + 1);
            v91 = *&v174[2];
            __swift_project_boxed_opaque_existential_1(v174, *(&v174[1] + 1));
            (*(v91 + 8))(v180, v90, v91);
            sub_2171F0738(v175, &qword_27CB27590, &qword_21776ADF0);
            v175[0] = v180[0];
            v175[1] = v180[1];
            *&v175[2] = *&v180[2];
            __swift_destroy_boxed_opaque_existential_1(v174);
LABEL_73:
            if (qword_280BE62A0 != -1)
            {
              swift_once();
            }

            v94 = xmmword_280BE62B8;
            *&v177 = v182[35];
            a2 = LOBYTE(v182[44]);
            v169 = xmmword_280BE62A8;
            v95 = objc_opt_self();
            sub_21770DAC8(&v177, v180);
            v96 = [v95 identifierSetFromLegacyModelObject_];
            v176[0].id = v169;
            v176[0].type.rawValue = v94;
            v179[0] = v177;
            v173 = a2;
            sub_217751DE8();
            sub_2172B6904(v96, &v176[0].id.rawValue._countAndFlagsBits, v179, &v173, v180);
            sub_2171F50C0(v175, v179, &qword_27CB27590, &qword_21776ADF0);
            swift_unknownObjectRetain();
            Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v180, v56, v179, v176);
            OUTLINED_FUNCTION_158();
            sub_2171F0738(v97, v98, v99);
            sub_2171F0738(v172, &qword_27CB27D20, &qword_217758B80);
            OUTLINED_FUNCTION_15_69();
            *v172 = v176[0];
            v172[56] = (v176[1].id.rawValue._countAndFlagsBits & 1) == 0;
            v55 = 27;
            v68 = 27;
            a4 = 27;
            object = 27;
            goto LABEL_86;
          }
        }

        else
        {
          OUTLINED_FUNCTION_14_70();
        }
      }

      else
      {
        sub_2171F0738(v176, &qword_27CB27590, &qword_21776ADF0);
        OUTLINED_FUNCTION_16_74();
      }

      sub_2171F0738(v180, &qword_27CB243F8, &qword_21779C830);
      goto LABEL_73;
    }

    if (qword_280BE49D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_155(qword_280BE49E0);
    v68 = &unk_217772FF0;
    OUTLINED_FUNCTION_5_109();
    v73 = *(&v180[1] + 1);
    sub_217751DE8();
    OUTLINED_FUNCTION_158();
    sub_2171F0738(v74, v75, v76);
    swift_getKeyPath(byte_21779C760);
    if (v73)
    {
      *&v169 = 0;
      v163 = 0;
      object = 17;
      OUTLINED_FUNCTION_11_83();
      goto LABEL_81;
    }

    swift_unknownObjectRetain();
    object = 17;
    OUTLINED_FUNCTION_11_83();
    v92 = 29;
  }

  else
  {

    if (qword_280BE8B48 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_155(qword_280BE8B50);
    v68 = &unk_217772FF0;
    OUTLINED_FUNCTION_5_109();
    v69 = *(&v180[1] + 1);
    sub_217751DE8();
    OUTLINED_FUNCTION_158();
    sub_2171F0738(v70, v71, v72);
    swift_getKeyPath(byte_21779C760);
    if (v69)
    {
      *&v169 = 0;
      v163 = 0;
      object = 11;
      OUTLINED_FUNCTION_12_71();
      goto LABEL_81;
    }

    swift_unknownObjectRetain();
    object = 11;
    OUTLINED_FUNCTION_12_71();
    v92 = 11;
  }

  v163 = v92;
  *&v169 = v56;
LABEL_81:
  sub_2174AFB6C(v56, &v177);
  if (v178)
  {
    sub_2171F3F0C(&v177, v179);
    sub_2171FF30C(v179, v180);
    v175[0] = 1uLL;
    v175[1] = 0uLL;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v180, 0, 0, v175, v176);
    memcpy(v180, v176, 0x221uLL);
    nullsub_1();
    memcpy(v175, v180, 0x221uLL);
    sub_217284028(v176, v174);
    swift_setAtWritableKeyPath();
    sub_217284084(v176);
    __swift_destroy_boxed_opaque_existential_1(v179);
  }

  else
  {
    sub_2171F0738(&v177, &qword_27CB28308, &qword_21776C430);
  }

  v100 = sub_2172A3AAC();
  if ((v101 & 1) == 0)
  {
    *(v25 + 69) = v100;
    v25[560] = 0;
  }

LABEL_86:
  v102 = sub_2172A3A48(0, v171);
  if (v103)
  {
    v104 = v102;
    v105 = v103;

    *(v25 + 71) = v104;
    *(v25 + 72) = v105;
  }

  v106 = sub_2172A3A48(1, v171);
  if (v107)
  {
    v108 = v106;
    v109 = v107;

    *(v25 + 73) = v108;
    *(v25 + 74) = v109;
  }

  KeyPath = swift_getKeyPath(byte_21779C788);
  sub_2172A07D0(KeyPath, v162, a2, countAndFlagsBits, 1);

  v112 = swift_getKeyPath(byte_21779C7A8, v111);
  sub_2172A0858(v112, v172, 1);

  if (a4 != 27)
  {
    v113 = v156;
    sub_2172A3A80(a4, v170, v156);
    v114 = sub_2177517D8();
    if (__swift_getEnumTagSinglePayload(v113, 1, v114) != 1)
    {
      OUTLINED_FUNCTION_7_92();
      sub_2171F50C0(v115, v116, v117, &qword_217759480);
      v118 = v19[8];
      sub_2171F0738(&v25[v118], &qword_27CB241C0, &qword_217759480);
      v119 = &v25[v118];
      v113 = v156;
      sub_217260E5C(a4, v119);
    }

    sub_2171F0738(v113, &qword_27CB241C0, &qword_217759480);
  }

  if (v68 != 27)
  {
    v120 = v165;
    sub_2172A3A80(v68, v170, v165);
    v121 = sub_2177517D8();
    if (__swift_getEnumTagSinglePayload(v120, 1, v121) != 1)
    {
      OUTLINED_FUNCTION_7_92();
      sub_2171F50C0(v122, v123, v124, &qword_217759480);
      v125 = v19[9];
      OUTLINED_FUNCTION_158();
      v120 = v165;
      sub_2171F0738(v126, v127, v128);
      sub_217260E5C(a4, &v25[v125]);
    }

    sub_2171F0738(v120, &qword_27CB241C0, &qword_217759480);
  }

  v129 = sub_2172A3A60();
  v131 = v130;

  if ((v131 & 1) == 0)
  {
    v133 = &v25[v19[13]];
    *v133 = v129;
    v133[8] = 0;
  }

  v134 = swift_getKeyPath(byte_21779C7C8, v132);
  sub_2172A08F4(v134, v163, v169, 1);

  if (v55 != 27)
  {
    v135 = v55;
    v136 = v155;
    sub_2172A3A80(v135, v170, v155);
    v137 = sub_2177517D8();
    if (__swift_getEnumTagSinglePayload(v136, 1, v137) != 1)
    {
      OUTLINED_FUNCTION_7_92();
      sub_2171F50C0(v138, v139, v140, &qword_217759480);
      v141 = v19[15];
      OUTLINED_FUNCTION_158();
      sub_2171F0738(v142, v143, v144);
      sub_217260E5C(a4, &v25[v141]);
    }

    sub_2171F0738(v136, &qword_27CB241C0, &qword_217759480);
  }

  if (object == 27)
  {
  }

  else
  {
    v146 = sub_2172A3A48(object, v170);
    v148 = v147;

    if (v148)
    {
      v149 = &v25[v19[16]];

      *v149 = v146;
      v149[1] = v148;
    }
  }

  swift_getKeyPath(byte_21779C7E8, v145);
  sub_2174AEADC();

  sub_217269F50(v182);
  swift_getKeyPath("pQ>e");
  sub_2172A54C4();

  *(&v180[1] + 1) = v19;
  *&v180[2] = &protocol witness table for PlaylistEntryPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v180);
  sub_21770DA64(v25, boxed_opaque_existential_0);
  Playlist.Entry.init(propertyProvider:)(v180, v166);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2171F0738(v168, &qword_27CB27590, &qword_21776ADF0);
  sub_2171F0738(v181, &qword_27CB24BA8, &unk_217772FF0);
  sub_2171F0738(v172, &qword_27CB27D20, &qword_217758B80);
  return sub_2176F2808(v25);
}