uint64_t sub_1BD04A6B0()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(*(v2 - 1) + 80);
  v1052 = *(*(v2 - 1) + 64);
  v1051 = (v3 + 17) & ~v3;
  v4 = v0 + v1051;
  v5 = (v0 + v1051 + v2[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5[1], v7, v8, v9, v10, v11, v12, v13;
    v5[3], v14, v15, v16, v17, v18, v19, v20;
    v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v22 = sub_1BE04CF34();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v23 = type metadata accessor for AvailablePass(0);
  v24 = (v5 + v23[6]);
  v1055 = type metadata accessor for IdentityCredential(0);
  v1050 = *(*(v1055 - 1) + 48);
  if (!v1050(v24, 1))
  {
    v24[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v1055[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v24 + v32, v33);
    *(v24 + v1055[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v24 + v1055[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v24 + v1055[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v55 = (v5 + v23[7]);
  v1057 = type metadata accessor for BalanceInfo(0);
  v1049 = *(*(v1057 - 8) + 48);
  if (!v1049(v55, 1))
  {

    v56 = *(v1057 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v5 + v23[10];
  v1054 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1048 = *(*(v1054 - 8) + 48);
  v1056 = v23;
  v1053 = v1;
  if (!v1048(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1054 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1054 + 32);
    if (!v100(&v59[v101], 1, v98))
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v102 = (v5 + v23[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v5 + v23[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v5 + v23[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v5 + v23[15]), v118, v119, v120, v121, v122, v123, v124;

  v125 = (v4 + v2[7]);
  v1047 = *(*(v23 - 1) + 48);
  if (!v1047(v125, 1, v23))
  {
    v126 = swift_getEnumCaseMultiPayload();
    if (v126 == 2)
    {
      v125[1], v127, v128, v129, v130, v131, v132, v133;
      v125[3], v134, v135, v136, v137, v138, v139, v140;
      v141 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v142 = sub_1BE04CF34();
      (*(*(v142 - 8) + 8))(v125 + v141, v142);
    }

    else if (v126 <= 1)
    {
    }

    v143 = (v125 + v23[6]);
    if (!(v1050)(v143, 1, v1055))
    {
      v143[1], v144, v145, v146, v147, v148, v149, v150;
      v151 = v1055[5];
      v152 = sub_1BE04DA84();
      (*(*(v152 - 8) + 8))(v143 + v151, v152);
      *(v143 + v1055[6] + 8), v153, v154, v155, v156, v157, v158, v159;
      *(v143 + v1055[7] + 8), v160, v161, v162, v163, v164, v165, v166;
      *(v143 + v1055[8] + 8), v167, v168, v169, v170, v171, v172, v173;
    }

    v174 = (v125 + v23[7]);
    if (!(v1049)(v174, 1, v1057))
    {

      v175 = *(v1057 + 28);
      v176 = sub_1BE04AF64();
      v177 = *(v176 - 8);
      if (!(*(v177 + 48))(v174 + v175, 1, v176))
      {
        (*(v177 + 8))(v174 + v175, v176);
      }
    }

    v178 = v125 + v23[10];
    if (!(v1048)(v178, 1, v1054))
    {
      v186 = *(v178 + 2);
      if (v186 != 1)
      {
        v186, v179, v180, v181, v182, v183, v184, v185;
        *(v178 + 4), v187, v188, v189, v190, v191, v192, v193;
        *(v178 + 6), v194, v195, v196, v197, v198, v199, v200;
      }

      v201 = *(v178 + 9);
      if (v201 != 1)
      {
        v201, v179, v180, v181, v182, v183, v184, v185;
        *(v178 + 11), v202, v203, v204, v205, v206, v207, v208;
        *(v178 + 13), v209, v210, v211, v212, v213, v214, v215;
      }

      v216 = *(v1054 + 28);
      v217 = sub_1BE04AF64();
      v218 = *(v217 - 8);
      v219 = *(v218 + 48);
      if (!v219(&v178[v216], 1, v217))
      {
        (*(v218 + 8))(&v178[v216], v217);
      }

      v220 = *(v1054 + 32);
      if (!v219(&v178[v220], 1, v217))
      {
        (*(v218 + 8))(&v178[v220], v217);
      }
    }

    v221 = (v125 + v23[12]);
    if (*v221)
    {

      v221[4], v222, v223, v224, v225, v226, v227, v228;
    }

    v229 = (v125 + v23[13]);
    if (*v229)
    {

      v229[2], v230, v231, v232, v233, v234, v235, v236;
    }

    *(v125 + v23[14]), v179, v180, v181, v182, v183, v184, v185;
    *(v125 + v23[15]), v237, v238, v239, v240, v241, v242, v243;
  }

  v244 = type metadata accessor for Passes(0);

  *(v125 + v244[7]), v245, v246, v247, v248, v249, v250, v251;
  *(v125 + v244[9]), v252, v253, v254, v255, v256, v257, v258;
  *(v125 + v244[11]), v259, v260, v261, v262, v263, v264, v265;
  v273 = v4 + v2[8];
  if (*(v273 + 48))
  {
    sub_1BD0D455C(*v273, *(v273 + 8), *(v273 + 16));

    *(v273 + 48), v274, v275, v276, v277, v278, v279, v280;
    *(v273 + 64), v281, v282, v283, v284, v285, v286, v287;
  }

  *(v4 + v2[9] + 8), v266, v267, v268, v269, v270, v271, v272;
  *(v4 + v2[10] + 8), v288, v289, v290, v291, v292, v293, v294;
  *(v4 + v2[11] + 8), v295, v296, v297, v298, v299, v300, v301;
  *(v4 + v2[12] + 8), v302, v303, v304, v305, v306, v307, v308;
  *(v4 + v2[13] + 8), v309, v310, v311, v312, v313, v314, v315;
  v316 = (v4 + v2[14]);
  v317 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v317 - 1) + 48))(v316, 1, v317))
  {

    v316[4], v318, v319, v320, v321, v322, v323, v324;
    v316[6], v325, v326, v327, v328, v329, v330, v331;
    v332 = _s11TotalAmountVMa(0);
    v333 = (v316 + v332[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v334 = swift_getEnumCaseMultiPayload();
    switch(v334)
    {
      case 2:
        v333[1], v335, v336, v337, v338, v339, v340, v341;
        break;
      case 1:
        v377 = sub_1BE04AF64();
        (*(*(v377 - 8) + 8))(v333, v377);
        break;
      case 0:
        v1041 = v244;
        v1044 = v317;
        v342 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v343 = v342[6];
        v344 = sub_1BE04AF64();
        v345 = *(v344 - 8);
        v346 = *(v345 + 48);
        if (!v346(v333 + v343, 1, v344))
        {
          (*(v345 + 8))(v333 + v343, v344);
        }

        v347 = v345;
        v348 = v342[7];
        if (!v346(v333 + v348, 1, v344))
        {
          (*(v347 + 8))(v333 + v348, v344);
        }

        *(v333 + v342[9] + 8), v349, v350, v351, v352, v353, v354, v355;
        *(v333 + v342[10] + 8), v356, v357, v358, v359, v360, v361, v362;
        *(v333 + v342[11] + 8), v363, v364, v365, v366, v367, v368, v369;
        *(v333 + v342[12] + 8), v370, v371, v372, v373, v374, v375, v376;
        v23 = v1056;
        v244 = v1041;
        v317 = v1044;
        break;
    }

    v378 = (v316 + v332[15]);
    v379 = v332;
    v380 = type metadata accessor for PeerPaymentModel(0);
    if ((*(*(v380 - 1) + 48))(v378, 1, v380))
    {
      goto LABEL_91;
    }

    v1039 = v379;
    v1042 = v244;

    v381 = (v378 + v380[5]);
    v382 = swift_getEnumCaseMultiPayload();
    v1045 = v317;
    if (v382 == 2)
    {
      v381[1], v383, v384, v385, v386, v387, v388, v389;
      v381[3], v391, v392, v393, v394, v395, v396, v397;
      v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v399 = sub_1BE04CF34();
      (*(*(v399 - 8) + 8))(v381 + v398, v399);
    }

    else
    {
      if (v382 != 1)
      {
        v390 = v1055;
        if (!v382)
        {

          v390 = v1055;
        }

        goto LABEL_68;
      }
    }

    v390 = v1055;
LABEL_68:
    v400 = (v381 + v1056[6]);
    if (!(v1050)(v400, 1, v390))
    {
      v400[1], v401, v402, v403, v404, v405, v406, v407;
      v408 = v1055[5];
      v409 = sub_1BE04DA84();
      (*(*(v409 - 8) + 8))(v400 + v408, v409);
      *(v400 + v1055[6] + 8), v410, v411, v412, v413, v414, v415, v416;
      *(v400 + v1055[7] + 8), v417, v418, v419, v420, v421, v422, v423;
      *(v400 + v1055[8] + 8), v424, v425, v426, v427, v428, v429, v430;
    }

    v431 = (v381 + v1056[7]);
    if (!(v1049)(v431, 1, v1057))
    {

      v432 = *(v1057 + 28);
      v433 = sub_1BE04AF64();
      v434 = *(v433 - 8);
      if (!(*(v434 + 48))(v431 + v432, 1, v433))
      {
        (*(v434 + 8))(v431 + v432, v433);
      }
    }

    v435 = v381 + v1056[10];
    if (!(v1048)(v435, 1, v1054))
    {
      v443 = *(v435 + 2);
      if (v443 != 1)
      {
        v443, v436, v437, v438, v439, v440, v441, v442;
        *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
        *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
      }

      v458 = *(v435 + 9);
      if (v458 != 1)
      {
        v458, v436, v437, v438, v439, v440, v441, v442;
        *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
        *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
      }

      v473 = *(v1054 + 28);
      v474 = sub_1BE04AF64();
      v1037 = *(v474 - 8);
      v1036 = v473;
      v475 = &v435[v473];
      v476 = *(v1037 + 48);
      if (!v476(v475, 1, v474))
      {
        (*(v1037 + 8))(&v435[v1036], v474);
      }

      v477 = *(v1054 + 32);
      if (!v476(&v435[v477], 1, v474))
      {
        (*(v1037 + 8))(&v435[v477], v474);
      }
    }

    v478 = (v381 + v1056[12]);
    if (*v478)
    {

      v478[4], v479, v480, v481, v482, v483, v484, v485;
    }

    v486 = (v381 + v1056[13]);
    v317 = v1045;
    if (*v486)
    {

      v486[2], v487, v488, v489, v490, v491, v492, v493;
    }

    v23 = v1056;
    *(v381 + v1056[14]), v436, v437, v438, v439, v440, v441, v442;
    *(v381 + v1056[15]), v494, v495, v496, v497, v498, v499, v500;
    v501 = v378;
    v502 = (v378 + v380[6]);
    v244 = v1042;
    if (*v502 != 1)
    {

      v510 = v502[3];
      if (v510)
      {
        v510, v503, v504, v505, v506, v507, v508, v509;
        v502[5], v511, v512, v513, v514, v515, v516, v517;
        v502[7], v518, v519, v520, v521, v522, v523, v524;
        v502[9], v525, v526, v527, v528, v529, v530, v531;
      }

      v501 = v378;
    }

    v379 = v1039;
LABEL_91:
    v532 = (v316 + v379[16]);
    v1 = v1053;
    if (!(*(*(v244 - 1) + 48))(v532, 1, v244))
    {
      if (!v1047(v532, 1, v23))
      {
        v540 = swift_getEnumCaseMultiPayload();
        v1043 = v244;
        if (v540 == 2)
        {
          v532[1], v541, v542, v543, v544, v545, v546, v547;
          v532[3], v548, v549, v550, v551, v552, v553, v554;
          v555 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v556 = sub_1BE04CF34();
          (*(*(v556 - 8) + 8))(v532 + v555, v556);
        }

        else if (v540 <= 1)
        {
        }

        v557 = (v532 + v23[6]);
        if (!(v1050)(v557, 1, v1055))
        {
          v557[1], v558, v559, v560, v561, v562, v563, v564;
          v565 = v317;
          v566 = v1055[5];
          v567 = sub_1BE04DA84();
          v568 = v557 + v566;
          v317 = v565;
          v1 = v1053;
          (*(*(v567 - 8) + 8))(v568, v567);
          *(v557 + v1055[6] + 8), v569, v570, v571, v572, v573, v574, v575;
          *(v557 + v1055[7] + 8), v576, v577, v578, v579, v580, v581, v582;
          *(v557 + v1055[8] + 8), v583, v584, v585, v586, v587, v588, v589;
        }

        v1046 = v317;
        v590 = (v532 + v23[7]);
        if (!(v1049)(v590, 1, v1057))
        {

          v591 = *(v1057 + 28);
          v592 = sub_1BE04AF64();
          v593 = *(v592 - 8);
          if (!(*(v593 + 48))(v590 + v591, 1, v592))
          {
            (*(v593 + 8))(v590 + v591, v592);
          }
        }

        v594 = v532 + v1056[10];
        if (!(v1048)(v594, 1, v1054))
        {
          v602 = *(v594 + 2);
          if (v602 != 1)
          {
            v602, v595, v596, v597, v598, v599, v600, v601;
            *(v594 + 4), v603, v604, v605, v606, v607, v608, v609;
            *(v594 + 6), v610, v611, v612, v613, v614, v615, v616;
          }

          v617 = *(v594 + 9);
          if (v617 != 1)
          {
            v617, v595, v596, v597, v598, v599, v600, v601;
            *(v594 + 11), v618, v619, v620, v621, v622, v623, v624;
            *(v594 + 13), v625, v626, v627, v628, v629, v630, v631;
          }

          v632 = *(v1054 + 28);
          v633 = sub_1BE04AF64();
          v1040 = *(v633 - 8);
          v1038 = v632;
          v634 = &v594[v632];
          v635 = *(v1040 + 48);
          if (!v635(v634, 1, v633))
          {
            (*(v1040 + 8))(&v594[v1038], v633);
          }

          v636 = *(v1054 + 32);
          if (!v635(&v594[v636], 1, v633))
          {
            (*(v1040 + 8))(&v594[v636], v633);
          }
        }

        v637 = (v532 + v1056[12]);
        if (*v637)
        {

          v637[4], v638, v639, v640, v641, v642, v643, v644;
        }

        v645 = (v532 + v1056[13]);
        v317 = v1046;
        if (*v645)
        {

          v645[2], v646, v647, v648, v649, v650, v651, v652;
        }

        v23 = v1056;
        *(v532 + v1056[14]), v595, v596, v597, v598, v599, v600, v601;
        *(v532 + v1056[15]), v653, v654, v655, v656, v657, v658, v659;
        v244 = v1043;
      }

      *(v532 + v244[7]), v660, v661, v662, v663, v664, v665, v666;
      *(v532 + v244[9]), v667, v668, v669, v670, v671, v672, v673;
      *(v532 + v244[11]), v674, v675, v676, v677, v678, v679, v680;
    }

    *(v316 + v317[5]), v533, v534, v535, v536, v537, v538, v539;
    *(v316 + v317[6] + 8), v681, v682, v683, v684, v685, v686, v687;
    v695 = v316 + v317[7];
    v696 = *(v695 + 1);
    if (v696)
    {
      v696, v688, v689, v690, v691, v692, v693, v694;
      *(v695 + 3), v697, v698, v699, v700, v701, v702, v703;
    }

    v704 = v316 + v317[9];
    v705 = *(v704 + 1);
    if (v705)
    {
      v705, v688, v689, v690, v691, v692, v693, v694;
      *(v704 + 3), v706, v707, v708, v709, v710, v711, v712;
      *(v704 + 5), v713, v714, v715, v716, v717, v718, v719;
    }

    v720 = v316 + v317[10];
    v721 = *(v720 + 1);
    if (v721)
    {
      v721, v688, v689, v690, v691, v692, v693, v694;
      *(v720 + 3), v722, v723, v724, v725, v726, v727, v728;
      *(v720 + 5), v729, v730, v731, v732, v733, v734, v735;
    }

    v736 = (v316 + v317[11]);
    v737 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v737 - 1) + 48))(v736, 1, v737))
    {
      v745 = v317;
      v736[1], v738, v739, v740, v741, v742, v743, v744;
      v736[3], v746, v747, v748, v749, v750, v751, v752;
      v736[5], v753, v754, v755, v756, v757, v758, v759;
      v760 = v737[7];
      v761 = sub_1BE04AF64();
      v762 = *(v761 - 8);
      if (!(*(v762 + 48))(v736 + v760, 1, v761))
      {
        (*(v762 + 8))(v736 + v760, v761);
      }

      v763 = v737[8];
      v764 = sub_1BE04B3B4();
      v765 = *(v764 - 8);
      if (!(*(v765 + 48))(v736 + v763, 1, v764))
      {
        (*(v765 + 8))(v736 + v763, v764);
      }

      v23 = v1056;
      v317 = v745;
      v1 = v1053;
    }

    *(v316 + v317[12]), v738, v739, v740, v741, v742, v743, v744;
  }

  *(v4 + v2[19] + 8), v766, v767, v768, v769, v770, v771, v772;
  *(v4 + v2[20]), v773, v774, v775, v776, v777, v778, v779;
  *(v4 + v2[21]), v780, v781, v782, v783, v784, v785, v786;
  *(v4 + v2[22]), v787, v788, v789, v790, v791, v792, v793;
  v794 = (v4 + v2[23]);

  v794[1], v795, v796, v797, v798, v799, v800, v801;
  v802 = (v4 + v2[24]);
  v803 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v803 - 8) + 48))(v802, 1, v803))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v804 = v802 + 2;
    }

    else
    {
      if (!v1047(v802, 1, v23))
      {
        v805 = swift_getEnumCaseMultiPayload();
        if (v805 == 2)
        {
          v802[1], v806, v807, v808, v809, v810, v811, v812;
          v802[3], v814, v815, v816, v817, v818, v819, v820;
          v821 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v822 = sub_1BE04CF34();
          (*(*(v822 - 8) + 8))(v802 + v821, v822);
          v813 = v1057;
        }

        else
        {
          v813 = v1057;
          if (v805 <= 1)
          {
          }
        }

        v823 = (v802 + v23[6]);
        if (!(v1050)(v823, 1, v1055))
        {
          v823[1], v824, v825, v826, v827, v828, v829, v830;
          v831 = v1055[5];
          v832 = sub_1BE04DA84();
          (*(*(v832 - 8) + 8))(v823 + v831, v832);
          *(v823 + v1055[6] + 8), v833, v834, v835, v836, v837, v838, v839;
          *(v823 + v1055[7] + 8), v840, v841, v842, v843, v844, v845, v846;
          *(v823 + v1055[8] + 8), v847, v848, v849, v850, v851, v852, v853;
        }

        v854 = (v802 + v23[7]);
        if (!(v1049)(v854, 1, v813))
        {

          v855 = *(v813 + 28);
          v856 = sub_1BE04AF64();
          v857 = *(v856 - 8);
          if (!(*(v857 + 48))(v854 + v855, 1, v856))
          {
            (*(v857 + 8))(v854 + v855, v856);
          }
        }

        v858 = v802 + v23[10];
        if (!(v1048)(v858, 1, v1054))
        {
          v866 = *(v858 + 2);
          if (v866 != 1)
          {
            v866, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 4), v867, v868, v869, v870, v871, v872, v873;
            *(v858 + 6), v874, v875, v876, v877, v878, v879, v880;
          }

          v881 = *(v858 + 9);
          if (v881 != 1)
          {
            v881, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 11), v882, v883, v884, v885, v886, v887, v888;
            *(v858 + 13), v889, v890, v891, v892, v893, v894, v895;
          }

          v896 = *(v1054 + 28);
          v897 = sub_1BE04AF64();
          v898 = *(v897 - 8);
          v899 = *(v898 + 48);
          if (!v899(&v858[v896], 1, v897))
          {
            (*(v898 + 8))(&v858[v896], v897);
          }

          v900 = *(v1054 + 32);
          v1 = v1053;
          v23 = v1056;
          if (!v899(&v858[v900], 1, v897))
          {
            (*(v898 + 8))(&v858[v900], v897);
          }
        }

        v901 = (v802 + v23[12]);
        if (*v901)
        {

          v901[4], v902, v903, v904, v905, v906, v907, v908;
        }

        v909 = (v802 + v23[13]);
        if (*v909)
        {

          v909[2], v910, v911, v912, v913, v914, v915, v916;
        }

        *(v802 + v23[14]), v859, v860, v861, v862, v863, v864, v865;
        *(v802 + v23[15]), v917, v918, v919, v920, v921, v922, v923;
      }

      v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v925 = (v802 + *(v924 + 64));
      v925[1], v926, v927, v928, v929, v930, v931, v932;
      v925[3], v933, v934, v935, v936, v937, v938, v939;
      v804 = v925 + 4;
    }
  }

  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v802 + *(v940 + 28)), v941, v942, v943, v944, v945, v946, v947;
  v948 = (v4 + v2[25]);
  v949 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v950 = sub_1BE04AA64();
      (*(*(v950 - 8) + 8))(v948, v950);
    }

    else
    {

      v948[2], v951, v952, v953, v954, v955, v956, v957;
    }
  }

  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v948 + *(v958 + 28)), v959, v960, v961, v962, v963, v964, v965;
  v966 = (v4 + v2[26]);

  v966[1], v967, v968, v969, v970, v971, v972, v973;
  v974 = (v4 + v2[27]);
  *v974, v975, v976, v977, v978, v979, v980, v981;
  v974[1], v982, v983, v984, v985, v986, v987, v988;
  *(v4 + v2[28] + 8), v989, v990, v991, v992, v993, v994, v995;
  *(v4 + v2[29] + 8), v996, v997, v998, v999, v1000, v1001, v1002;
  v1003 = (v4 + v2[30]);

  v1003[1], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
  *(v4 + v2[31] + 48), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  v1018 = (v4 + v2[32]);

  v1018[1], v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = v2[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1034 = sub_1BE04E354();
    (*(*(v1034 - 8) + 8))(v4 + v1026, v1034);
  }

  else
  {
    *(v4 + v1026), v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04C4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1BD04C634(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AvailablePass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1BD04C768()
{
  v1 = type metadata accessor for PeerPaymentToggleSection(0);
  v303 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v303 + 16) & ~v303);
  v3 = (v2 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v304 = v2;
  if (EnumCaseMultiPayload == 2)
  {
    v3[1], v5, v6, v7, v8, v9, v10, v11;
    v3[3], v12, v13, v14, v15, v16, v17, v18;
    v19 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v20 = sub_1BE04CF34();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v21 = type metadata accessor for AvailablePass(0);
  v22 = (v3 + v21[6]);
  v23 = type metadata accessor for IdentityCredential(0);
  v300 = *(*(v23 - 1) + 48);
  if (!v300(v22, 1, v23))
  {
    v22[1], v24, v25, v26, v27, v28, v29, v30;
    v31 = v23[5];
    v32 = sub_1BE04DA84();
    (*(*(v32 - 8) + 8))(v22 + v31, v32);
    *(v22 + v23[6] + 8), v33, v34, v35, v36, v37, v38, v39;
    *(v22 + v23[7] + 8), v40, v41, v42, v43, v44, v45, v46;
    *(v22 + v23[8] + 8), v47, v48, v49, v50, v51, v52, v53;
  }

  v54 = (v3 + v21[7]);
  v55 = type metadata accessor for BalanceInfo(0);
  v299 = *(*(v55 - 8) + 48);
  if (!v299(v54, 1, v55))
  {

    v56 = *(v55 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v54 + v56, 1, v57))
    {
      (*(v58 + 8))(v54 + v56, v57);
    }
  }

  v301 = v55;

  v59 = v3 + v21[10];
  v60 = type metadata accessor for PassEligibleRewardsInfo(0);
  v298 = *(*(v60 - 8) + 48);
  if (!v298(v59, 1, v60))
  {
    v68 = *(v59 + 2);
    if (v68 != 1)
    {
      v68, v61, v62, v63, v64, v65, v66, v67;
      *(v59 + 4), v69, v70, v71, v72, v73, v74, v75;
      *(v59 + 6), v76, v77, v78, v79, v80, v81, v82;
    }

    v297 = v1;
    v83 = *(v59 + 9);
    if (v83 != 1)
    {
      v83, v61, v62, v63, v64, v65, v66, v67;
      *(v59 + 11), v84, v85, v86, v87, v88, v89, v90;
      *(v59 + 13), v91, v92, v93, v94, v95, v96, v97;
    }

    v98 = *(v60 + 28);
    v99 = sub_1BE04AF64();
    v100 = *(v99 - 8);
    v101 = v60;
    v102 = *(v100 + 48);
    if (!v102(&v59[v98], 1, v99))
    {
      (*(v100 + 8))(&v59[v98], v99);
    }

    v103 = *(v101 + 32);
    v104 = v102(&v59[v103], 1, v99);
    v60 = v101;
    v1 = v297;
    if (!v104)
    {
      (*(v100 + 8))(&v59[v103], v99);
    }
  }

  v105 = (v3 + v21[12]);
  if (*v105)
  {

    v105[4], v106, v107, v108, v109, v110, v111, v112;
  }

  v113 = (v3 + v21[13]);
  if (*v113)
  {

    v113[2], v114, v115, v116, v117, v118, v119, v120;
  }

  *(v3 + v21[14]), v61, v62, v63, v64, v65, v66, v67;
  *(v3 + v21[15]), v121, v122, v123, v124, v125, v126, v127;
  v128 = v304;
  *(v304 + v1[6]), v129, v130, v131, v132, v133, v134, v135;
  v136 = (v304 + v1[7]);
  v137 = type metadata accessor for PeerPaymentModel(0);
  if (!(*(*(v137 - 1) + 48))(v136, 1, v137))
  {

    v145 = (v136 + v137[5]);
    v146 = swift_getEnumCaseMultiPayload();
    v296 = v60;
    if (v146 == 2)
    {
      v145[1], v147, v148, v149, v150, v151, v152, v153;
      v145[3], v154, v155, v156, v157, v158, v159, v160;
      v161 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v162 = sub_1BE04CF34();
      (*(*(v162 - 8) + 8))(v145 + v161, v162);
    }

    else if (v146 <= 1)
    {
    }

    v163 = (v145 + v21[6]);
    if (!v300(v163, 1, v23))
    {
      v163[1], v164, v165, v166, v167, v168, v169, v170;
      v171 = v23[5];
      v172 = sub_1BE04DA84();
      (*(*(v172 - 8) + 8))(v163 + v171, v172);
      *(v163 + v23[6] + 8), v173, v174, v175, v176, v177, v178, v179;
      *(v163 + v23[7] + 8), v180, v181, v182, v183, v184, v185, v186;
      *(v163 + v23[8] + 8), v187, v188, v189, v190, v191, v192, v193;
    }

    v194 = (v145 + v21[7]);
    if (!v299(v194, 1, v301))
    {

      v195 = *(v301 + 28);
      v196 = sub_1BE04AF64();
      v197 = *(v196 - 8);
      if (!(*(v197 + 48))(v194 + v195, 1, v196))
      {
        (*(v197 + 8))(v194 + v195, v196);
      }
    }

    v198 = v145 + v21[10];
    if (!v298(v198, 1, v296))
    {
      v206 = *(v198 + 2);
      if (v206 != 1)
      {
        v206, v199, v200, v201, v202, v203, v204, v205;
        *(v198 + 4), v207, v208, v209, v210, v211, v212, v213;
        *(v198 + 6), v214, v215, v216, v217, v218, v219, v220;
      }

      v221 = *(v198 + 9);
      if (v221 != 1)
      {
        v221, v199, v200, v201, v202, v203, v204, v205;
        *(v198 + 11), v222, v223, v224, v225, v226, v227, v228;
        *(v198 + 13), v229, v230, v231, v232, v233, v234, v235;
      }

      v236 = *(v296 + 28);
      v237 = sub_1BE04AF64();
      v302 = *(v237 - 8);
      v238 = *(v302 + 48);
      if (!v238(&v198[v236], 1, v237))
      {
        (*(v302 + 8))(&v198[v236], v237);
      }

      v239 = *(v296 + 32);
      if (!v238(&v198[v239], 1, v237))
      {
        (*(v302 + 8))(&v198[v239], v237);
      }
    }

    v240 = (v145 + v21[12]);
    if (*v240)
    {

      v240[4], v241, v242, v243, v244, v245, v246, v247;
    }

    v248 = (v145 + v21[13]);
    if (*v248)
    {

      v248[2], v249, v250, v251, v252, v253, v254, v255;
    }

    *(v145 + v21[14]), v199, v200, v201, v202, v203, v204, v205;
    *(v145 + v21[15]), v256, v257, v258, v259, v260, v261, v262;
    v263 = (v136 + v137[6]);
    v128 = v304;
    if (*v263 != 1)
    {

      v271 = v263[3];
      if (v271)
      {
        v271, v264, v265, v266, v267, v268, v269, v270;
        v263[5], v272, v273, v274, v275, v276, v277, v278;
        v263[7], v279, v280, v281, v282, v283, v284, v285;
        v263[9], v286, v287, v288, v289, v290, v291, v292;
      }
    }
  }

  v293 = v128 + v1[8];
  if (*v293)
  {
    *(v293 + 8), v138, v139, v140, v141, v142, v143, v144;
  }

  v294 = v128 + v1[9];
  if (*v294)
  {
    *(v294 + 8), v138, v139, v140, v141, v142, v143, v144;
  }

  *(v128 + v1[10] + 8), v138, v139, v140, v141, v142, v143, v144;

  return swift_deallocObject();
}

uint64_t sub_1BD04D230()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD04D270(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD04D38C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04D3C4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04D3FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  v8[9], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

void sub_1BD04D458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  sub_1BD115DD4(v1, v2);
}

uint64_t sub_1BD04D4A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 48) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD04D4F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04D52C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD04D57C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04D5E4(uint64_t *a1)
{
  type metadata accessor for MerchantOriginIconImage(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10, &qword_1BE0B9710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BD1291DC();
  sub_1BD129234();
  swift_getWitnessTable();
  sub_1BE04C6F4();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Passes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD04D85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Passes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD04D914()
{
  v1 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v2 = *(*(v1 - 1) + 80);
  sub_1BD0D455C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  *(v0 + 64), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + 80), v10, v11, v12, v13, v14, v15, v16;

  v17 = (v0 + ((v2 + 96) & ~v2));
  v18 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v17[1], v20, v21, v22, v23, v24, v25, v26;
      v17[3], v27, v28, v29, v30, v31, v32, v33;
      v34 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v35 = sub_1BE04CF34();
      (*(*(v35 - 8) + 8))(v17 + v34, v35);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v36 = (v17 + v18[6]);
    v37 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v37 - 1) + 48))(v36, 1, v37))
    {
      v36[1], v38, v39, v40, v41, v42, v43, v44;
      v45 = v37[5];
      v46 = sub_1BE04DA84();
      (*(*(v46 - 8) + 8))(v36 + v45, v46);
      *(v36 + v37[6] + 8), v47, v48, v49, v50, v51, v52, v53;
      *(v36 + v37[7] + 8), v54, v55, v56, v57, v58, v59, v60;
      *(v36 + v37[8] + 8), v61, v62, v63, v64, v65, v66, v67;
    }

    v68 = (v17 + v18[7]);
    v69 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
    {

      v70 = *(v69 + 28);
      v71 = sub_1BE04AF64();
      v72 = *(v71 - 8);
      if (!(*(v72 + 48))(v68 + v70, 1, v71))
      {
        (*(v72 + 8))(v68 + v70, v71);
      }
    }

    v73 = v17 + v18[10];
    v74 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
    {
      v82 = *(v73 + 2);
      if (v82 != 1)
      {
        v82, v75, v76, v77, v78, v79, v80, v81;
        *(v73 + 4), v83, v84, v85, v86, v87, v88, v89;
        *(v73 + 6), v90, v91, v92, v93, v94, v95, v96;
      }

      v97 = *(v73 + 9);
      if (v97 != 1)
      {
        v97, v75, v76, v77, v78, v79, v80, v81;
        *(v73 + 11), v98, v99, v100, v101, v102, v103, v104;
        *(v73 + 13), v105, v106, v107, v108, v109, v110, v111;
      }

      v112 = *(v74 + 28);
      v113 = sub_1BE04AF64();
      v205 = *(v113 - 8);
      v114 = *(v205 + 48);
      if (!v114(&v73[v112], 1, v113))
      {
        (*(v205 + 8))(&v73[v112], v113);
      }

      v115 = *(v74 + 32);
      if (!v114(&v73[v115], 1, v113))
      {
        (*(v205 + 8))(&v73[v115], v113);
      }
    }

    v116 = (v17 + v18[12]);
    if (*v116)
    {

      v116[4], v117, v118, v119, v120, v121, v122, v123;
    }

    v124 = (v17 + v18[13]);
    if (*v124)
    {

      v124[2], v125, v126, v127, v128, v129, v130, v131;
    }

    *(v17 + v18[14]), v75, v76, v77, v78, v79, v80, v81;
    *(v17 + v18[15]), v132, v133, v134, v135, v136, v137, v138;
  }

  v139 = type metadata accessor for Passes(0);

  *(v17 + v139[7]), v140, v141, v142, v143, v144, v145, v146;
  *(v17 + v139[9]), v147, v148, v149, v150, v151, v152, v153;
  *(v17 + v139[11]), v154, v155, v156, v157, v158, v159, v160;
  v168 = (v17 + v1[5]);
  if (v168[6])
  {
    sub_1BD0D455C(*v168, v168[1], *(v168 + 16));

    v168[6], v169, v170, v171, v172, v173, v174, v175;
    v168[8], v176, v177, v178, v179, v180, v181, v182;
  }

  *(v17 + v1[6] + 8), v161, v162, v163, v164, v165, v166, v167;
  *(v17 + v1[7] + 8), v183, v184, v185, v186, v187, v188, v189;
  *(v17 + v1[8] + 8), v190, v191, v192, v193, v194, v195, v196;
  *(v17 + v1[9] + 8), v197, v198, v199, v200, v201, v202, v203;

  return swift_deallocObject();
}

uint64_t sub_1BD04DF0C()
{
  v1 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  v4 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v3[1], v6, v7, v8, v9, v10, v11, v12;
      v3[3], v13, v14, v15, v16, v17, v18, v19;
      v20 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v21 = sub_1BE04CF34();
      (*(*(v21 - 8) + 8))(v3 + v20, v21);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v22 = (v3 + v4[6]);
    v23 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v23 - 1) + 48))(v22, 1, v23))
    {
      v22[1], v24, v25, v26, v27, v28, v29, v30;
      v31 = v23[5];
      v32 = sub_1BE04DA84();
      (*(*(v32 - 8) + 8))(v22 + v31, v32);
      *(v22 + v23[6] + 8), v33, v34, v35, v36, v37, v38, v39;
      *(v22 + v23[7] + 8), v40, v41, v42, v43, v44, v45, v46;
      *(v22 + v23[8] + 8), v47, v48, v49, v50, v51, v52, v53;
    }

    v54 = (v3 + v4[7]);
    v55 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
    {

      v56 = *(v55 + 28);
      v57 = sub_1BE04AF64();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v54 + v56, 1, v57))
      {
        (*(v58 + 8))(v54 + v56, v57);
      }
    }

    v59 = v3 + v4[10];
    v60 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
    {
      v68 = *(v59 + 2);
      if (v68 != 1)
      {
        v68, v61, v62, v63, v64, v65, v66, v67;
        *(v59 + 4), v69, v70, v71, v72, v73, v74, v75;
        *(v59 + 6), v76, v77, v78, v79, v80, v81, v82;
      }

      v83 = *(v59 + 9);
      if (v83 != 1)
      {
        v83, v61, v62, v63, v64, v65, v66, v67;
        *(v59 + 11), v84, v85, v86, v87, v88, v89, v90;
        *(v59 + 13), v91, v92, v93, v94, v95, v96, v97;
      }

      v98 = *(v60 + 28);
      v99 = sub_1BE04AF64();
      v191 = *(v99 - 8);
      v100 = *(v191 + 48);
      if (!v100(&v59[v98], 1, v99))
      {
        (*(v191 + 8))(&v59[v98], v99);
      }

      v101 = *(v60 + 32);
      if (!v100(&v59[v101], 1, v99))
      {
        (*(v191 + 8))(&v59[v101], v99);
      }
    }

    v102 = (v3 + v4[12]);
    if (*v102)
    {

      v102[4], v103, v104, v105, v106, v107, v108, v109;
    }

    v110 = (v3 + v4[13]);
    if (*v110)
    {

      v110[2], v111, v112, v113, v114, v115, v116, v117;
    }

    *(v3 + v4[14]), v61, v62, v63, v64, v65, v66, v67;
    *(v3 + v4[15]), v118, v119, v120, v121, v122, v123, v124;
  }

  v125 = type metadata accessor for Passes(0);

  *(v3 + v125[7]), v126, v127, v128, v129, v130, v131, v132;
  *(v3 + v125[9]), v133, v134, v135, v136, v137, v138, v139;
  *(v3 + v125[11]), v140, v141, v142, v143, v144, v145, v146;
  v154 = (v3 + v1[5]);
  if (v154[6])
  {
    sub_1BD0D455C(*v154, v154[1], *(v154 + 16));

    v154[6], v155, v156, v157, v158, v159, v160, v161;
    v154[8], v162, v163, v164, v165, v166, v167, v168;
  }

  *(v3 + v1[6] + 8), v147, v148, v149, v150, v151, v152, v153;
  *(v3 + v1[7] + 8), v169, v170, v171, v172, v173, v174, v175;
  *(v3 + v1[8] + 8), v176, v177, v178, v179, v180, v181, v182;
  *(v3 + v1[9] + 8), v183, v184, v185, v186, v187, v188, v189;

  return swift_deallocObject();
}

id sub_1BD04E4D8(id result, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v5 = result;
    v4 = a2;
    result = v5;
  }

  return result;
}

uint64_t sub_1BD04E528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD04E5E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD04E694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DB8, &qword_1BE0B9980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD04E714(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04E74C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD04E7A8(uint64_t *a1)
{
  type metadata accessor for PassImage(255);
  type metadata accessor for PassDetails(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD1331E8(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
  sub_1BD1331E8(&qword_1EBD39FE8, type metadata accessor for PassDetails, &unk_1BE105080);
  sub_1BD1103C8();
  sub_1BE04C6F4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD1331E8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  return swift_getWitnessTable();
}

uint64_t sub_1BD04E984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD04E9B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04E9E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD04EA24()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04EA5C()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + 32), v13, v14, v15, v16, v17, v18, v19;
  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4), v20, v21, v22, v23, v24, v25, v26;
  *(v0 + v5 + 8), v27, v28, v29, v30, v31, v32, v33;

  return swift_deallocObject();
}

uint64_t sub_1BD04EB7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1BE04C944();
  v14 = v7;
  v15 = v1;
  v13 = v4;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v8 = v4;
  v20 = v6;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B8, &qword_1BE0BA028);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4DFD0, &qword_1BE0BA030);
  sub_1BE04EBD4();
  v14 = v7;
  v15 = v1;
  v9 = MEMORY[0x1E6981E70];
  v16 = v2;
  v17 = MEMORY[0x1E6981E70];
  v18 = v8;
  v19 = v5;
  v10 = MEMORY[0x1E6981E60];
  v20 = MEMORY[0x1E6981E60];
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  v14 = v7;
  v15 = v9;
  v16 = v2;
  v17 = v3;
  v18 = v10;
  v19 = v5;
  v20 = v6;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v14 = v7;
  v15 = v9;
  v16 = v2;
  v17 = v9;
  v18 = v10;
  v19 = v5;
  v20 = v10;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  v14 = v7;
  v15 = v1;
  v16 = v9;
  v17 = v3;
  v18 = v13;
  v19 = v10;
  v20 = v6;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v14 = v7;
  v15 = v1;
  v16 = v9;
  v17 = v9;
  v18 = v13;
  v19 = v10;
  v20 = v10;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  v14 = v7;
  v15 = v9;
  v16 = v9;
  v17 = v3;
  v18 = v10;
  v19 = v10;
  v20 = v6;
  type metadata accessor for AuthenticatedTransactionSheet(255, &v14);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A0B0, &qword_1BE0BA020);
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  v11 = MEMORY[0x1E6980A18];
  sub_1BD0DE4F4(&qword_1EBD3A0D0, &qword_1EBD3A0B8, &qword_1BE0BA028, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD3A0D8, &unk_1EBD4DFD0, &qword_1BE0BA030, v11);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BD145E20();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 104);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 108);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD04F2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 104);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 108);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD04F440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04CBF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD04F4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD04F4FC()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 72) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BD04F584(void *a1)
{
  v1 = a1[1];
  v2 = a1[4];
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A218, &qword_1BE0BA210);
  v4 = type metadata accessor for PaymentSheetHeader(255, v1, v2, v3);
  v5 = sub_1BE04C674();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A48, &qword_1BE0B7578);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = v4;
  v29 = v5;
  v30 = sub_1BE051854();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v25 = type metadata accessor for PaymentRequestView(255, &v28);
  v6 = sub_1BE04EBD4();
  v7 = sub_1BE04C614();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A230, &unk_1BE0BA230);
  v27 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = sub_1BD145DD8(&qword_1EBD3A238, MEMORY[0x1E69BC8F0], MEMORY[0x1E69BC900]);
  v11 = sub_1BD0DE4F4(&qword_1EBD3A240, &qword_1EBD3A230, &unk_1BE0BA230, MEMORY[0x1E697C278]);
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_1BE04CB04();
  sub_1BE04C864();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  v12 = sub_1BE04F9B4();
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1BD145DD8(&qword_1EBD3A248, MEMORY[0x1E69BCAC0], MEMORY[0x1E69BCAC8]);
  sub_1BD145DD8(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v28 = OpaqueTypeMetadata2;
  v29 = v23;
  v30 = v12;
  v31 = OpaqueTypeConformance2;
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SecondarySheet(255, v25, v27, v16);
  v17 = sub_1BE04EBD4();
  v28 = OpaqueTypeMetadata2;
  v29 = v23;
  v30 = v12;
  v31 = OpaqueTypeConformance2;
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v28 = v17;
  v29 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = sub_1BD0DE4F4(&qword_1EBD3A250, &qword_1EBD3A218, &qword_1BE0BA210, MEMORY[0x1E695C068]);
  v28 = v17;
  v29 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v28 = v26;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  sub_1BE04EE14();
  return swift_getWitnessTable();
}

uint64_t sub_1BD04FB54()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04FC40()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FC78()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04FCB0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;
  v8[9], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

uint64_t sub_1BD04FD18(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD04FD60(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD04FDB0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD04FDF8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD04FE58(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;
  v8[6], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD04FEB0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD04FEE8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[6], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD04FF38(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD04FF80()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04FFB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s11TotalAmountVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD050064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s11TotalAmountVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05012C()
{
  v0 = sub_1BE0489B4();
  v1 = sub_1BE0489B4();
  v2 = sub_1BE0489B4();
  v3 = sub_1BE0489B4();
  v4 = sub_1BE0489B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0BA730;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1BE0489A4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

double sub_1BD050264@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void *sub_1BD0502B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

void *sub_1BD050328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

double sub_1BD05039C@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD0503E0(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_1BD0303B8(v8, v7);
  return sub_1BE048884();
}

void *sub_1BD05043C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

void *sub_1BD050500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE048874();
  *a1 = v3;
  return result;
}

double sub_1BD050574@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1BD0505EC@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD05065C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A6A8, &qword_1BE0BACD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0506E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0507E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0508FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD0509C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD050A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A820, &unk_1BE0BAED0);
  sub_1BD16131C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD050B00()
{

  return swift_deallocObject();
}

uint64_t sub_1BD050B38@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F264();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD050C08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD050C50()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD050CF8()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD050D90()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD050DD0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD050E8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD050F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD051014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0510D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AB90, &qword_1BE0BB688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  sub_1BD0E5E8C(255, &qword_1EBD45E80, 0x1E696ABC0);
  sub_1BD0DE4F4(&qword_1EBD3ABB0, &qword_1EBD3AB90, &qword_1BE0BB688, MEMORY[0x1E697C278]);
  sub_1BD170E70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0511FC()
{
  v1 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  v12 = (v3 + v1[5]);

  v12[3], v13, v14, v15, v16, v17, v18, v19;
  *(v3 + v1[6] + 8), v20, v21, v22, v23, v24, v25, v26;
  *(v3 + v1[7] + 8), v27, v28, v29, v30, v31, v32, v33;

  return swift_deallocObject();
}

uint64_t sub_1BD051360()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC28, &qword_1BE0BB7E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACB8, &unk_1BE0BB840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC20, &qword_1BE0BB7D8);
  sub_1BE04ECF4();
  sub_1BD0DE4F4(&qword_1EBD3ACA8, &qword_1EBD3AC20, &qword_1BE0BB7D8, MEMORY[0x1E697CCF0]);
  sub_1BD1710E4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACC0, &qword_1BE0F8B90);
  sub_1BD171868();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_So20PKAccountDestinationVIegy_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD051598(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0515D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B238, &qword_1BE0BC350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD051664()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0516EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD051728(uint64_t *a1)
{
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE04E5B4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD051B8C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD051BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BAD8, &qword_1BE0BD058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD051C4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD051C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD051D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD051E04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD051E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04B2F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD051EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04B2F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD051F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BE0493F4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1BD052030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1BE0493F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD05216C(void *a1)
{
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BCC0, &qword_1BE0BD508);
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0, &qword_1BE0B89C0);
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD1A36A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD052634()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05266C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0526A8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0526E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD052728(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD052760(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD052838(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C0C8, &unk_1BE0BDE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE4F4(&qword_1EBD3C0D0, &qword_1EBD3C0C8, &unk_1BE0BDE90, MEMORY[0x1E6981870]);
  sub_1BD1B9AAC();
  sub_1BE04C6F4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0F15A0();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0529DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C120, &qword_1BE0BDF18);
  sub_1BD1BC204();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052A50(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[8], v30, v31, v32, v33, v34, v35, v36;
  v8[11], v37, v38, v39, v40, v41, v42, v43;

  return swift_deallocObject();
}

uint64_t sub_1BD052AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C238, &unk_1BE0BE190);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C240, &unk_1BE0BE1A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C248, &qword_1BE111830);
  sub_1BD0DE4F4(&qword_1EBD3C250, &qword_1EBD3C240, &unk_1BE0BE1A0, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD1BCD34();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052C40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C288, &qword_1BE0BE3A0);
  sub_1BD1BEDCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD052D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD052E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C378, &qword_1BE0BE540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD052E98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C378, &qword_1BE0BE540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C390, &qword_1BE0BE550);
  sub_1BD1C07FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD052F5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD052FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD053068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD053118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C428, &qword_1BE0BE768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD053188()
{
  v1 = (type metadata accessor for SheetButton(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v2[5], v10, v11, v12, v13, v14, v15, v16;

  v17 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1BE04E354();
    (*(*(v25 - 8) + 8))(v2 + v17, v25);
  }

  else
  {
    *(v2 + v17), v18, v19, v20, v21, v22, v23, v24;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0532F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD053354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD0533AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1BD053418(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[9], v16, v17, v18, v19, v20, v21, v22;
  v8[11], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD05348C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = _s22SummaryItemPricingTypeOMa(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD053610(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = _s22SummaryItemPricingTypeOMa(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD053794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD053864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD053930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50, &qword_1BE0BF338);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0539C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD053A2C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD053B78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1BD053C2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD053CEC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD053D24(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD053E34()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD053EF8()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD054078()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0540B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054104(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048, &qword_1BE0C0970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050, &unk_1BE0C0978);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD1E9CCC();
  return swift_getWitnessTable();
}

uint64_t sub_1BD054278(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0542B8()
{
  v1 = sub_1BE04E6A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  *(v0 + 16), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + 24), v11, v12, v13, v14, v15, v16, v17;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1BD054388@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id sub_1BD0543E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) isHidden];
  *a2 = result;
  return result;
}

id sub_1BD054420(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  [*(*a2 + OBJC_IVAR___PKFlightShareMessageBubbleView_followButton) setHidden_];

  return [v2 setNeedsLayout];
}

uint64_t sub_1BD054478()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0544B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0544F8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0545F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0546B0()
{
  v1 = type metadata accessor for FrequencySelectionRow(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[5];
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v20 = v2 + v1[8];
  if (*v20)
  {
    *(v20 + 8), v13, v14, v15, v16, v17, v18, v19;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD054808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D2D0, &qword_1BE0C1028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD05487C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0548D4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD054930(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0549B0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0549EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD054AA0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054AD8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD054B10(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD054C28()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD054E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD054F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD055048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC20, &qword_1BE0C2570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0550B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD055100()
{
  swift_unknownObjectRelease();

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 88), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 104), v15, v16, v17, v18, v19, v20, v21;
  v29 = *(v0 + 112);
  if (v29)
  {

    *(v0 + 136), v30, v31, v32, v33, v34, v35, v36;
  }

  *(v0 + 144), v22, v23, v24, v25, v26, v27, v28;

  *(v0 + 160), v37, v38, v39, v40, v41, v42, v43;
  *(v0 + 176), v44, v45, v46, v47, v48, v49, v50;

  *(v0 + 192), v51, v52, v53, v54, v55, v56, v57;
  *(v0 + 208), v58, v59, v60, v61, v62, v63, v64;

  return swift_deallocObject();
}

uint64_t sub_1BD0551C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DC20, &qword_1BE0C2570);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57BE0, &qword_1BE0C2590);
  sub_1BD21403C();
  sub_1BD2140F4();
  type metadata accessor for PaymentOfferActionExplanationView(255);
  sub_1BD213F8C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0552E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCD0, &qword_1BE0C2768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD05537C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BD030394(*a1, v2);
  sub_1BD218070(v1, v2);
}

uint64_t sub_1BD05544C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055518()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD055558(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1BD0555AC()
{
  swift_unknownObjectRelease();

  *(v0 + 88), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 104), v8, v9, v10, v11, v12, v13, v14;
  sub_1BD0D4604(*(v0 + 112), *(v0 + 120), v15, v16, v17, v18, v19, v20);
  sub_1BD0D4604(*(v0 + 128), *(v0 + 136), v21, v22, v23, v24, v25, v26);

  return swift_deallocObject();
}

uint64_t sub_1BD055660()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE80, &qword_1BE0B1188);
  sub_1BD223E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD055708()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

void sub_1BD055768(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227288(v1);
}

void sub_1BD0557C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD2276F8(v1);
}

void sub_1BD055898(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227098(v1);
}

void sub_1BD0559A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD228F98(v1);
}

uint64_t sub_1BD0559FC()
{
  swift_unknownObjectRelease();

  v0[7], v1, v2, v3, v4, v5, v6, v7;
  v0[9], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD055A80()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055B2C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD055B64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD055BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for RecurringPaymentSheet(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  *(v7 + 8), v8, v9, v10, v11, v12, v13, v14;
  v15 = (v7 + *(_s8MerchantVMa(0) + 20));
  _s14MerchantOriginOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v38 = sub_1BE04AA64();
    v39 = *(v38 - 8);
    v56 = *(v39 + 8);
    v56(v15, v38);
    v40 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v39 + 48))(v15 + v40, 1, v38))
    {
      v56((v15 + v40), v38);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v15[1], v17, v18, v19, v20, v21, v22, v23;
    v15[3], v24, v25, v26, v27, v28, v29, v30;
    v15[5], v31, v32, v33, v34, v35, v36, v37;
  }

  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);
  *(v7 + v6[10] + 8), v41, v42, v43, v44, v45, v46, v47;
  *(v7 + v6[11] + 8), v48, v49, v50, v51, v52, v53, v54;

  return swift_deallocObject();
}

uint64_t sub_1BD055E04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RecurringPaymentContent(255, *a1, a1[1], a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for DetailNavigationView(255, v4, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_1BD055E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD055EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD055F6C(uint64_t *a1)
{
  v7[10] = type metadata accessor for RecurringPaymentMerchantDetailsView(255);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880, &qword_1BE0C3FA8);
  v7[11] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888, &qword_1BE0C3FB0);
  sub_1BE051854();
  sub_1BE04EBD4();
  v3 = sub_1BE04EBD4();
  v4 = sub_1BD238AEC();
  v7[8] = swift_getWitnessTable();
  v7[9] = MEMORY[0x1E697EBF8];
  v7[6] = swift_getWitnessTable();
  v7[7] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v7[0] = v2;
  v7[1] = MEMORY[0x1E6981E70];
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = MEMORY[0x1E6981E60];
  v7[5] = WitnessTable;
  v7[12] = type metadata accessor for SheetSection(255, v7);
  v7[13] = v1;
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0, &qword_1BE0C3FB8);
  v7[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8, &unk_1BE0C3FC0);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE04E2F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E20, &unk_1BE0E4C40);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
  return swift_getWitnessTable();
}

uint64_t sub_1BD056284()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0562C4()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD056310(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0563CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD056480()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[4], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD0564EC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD056524()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05655C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0565A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0565EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD056634()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[6], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD05669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD056758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0569EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ED40, &qword_1BE0C4A88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE4F4(&qword_1EBD3ED70, &qword_1EBD3ED40, &qword_1BE0C4A88, MEMORY[0x1E697C278]);
  sub_1BD2477C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD056AB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD056B74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD056C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF70, &qword_1BE0C50E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD056D54()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;

  *(v0 + 96), v22, v23, v24, v25, v26, v27, v28;
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 104), v29, v30, v31, v32, v33, v34, v35);
  }

  *(v0 + 144), v29, v30, v31, v32, v33, v34, v35;
  sub_1BD0D45CC(*(v0 + 152), *(v0 + 160), *(v0 + 168), v36, v37, v38, v39, v40);
  sub_1BD0D4604(*(v0 + 176), *(v0 + 184), v41, v42, v43, v44, v45, v46);

  return swift_deallocObject();
}

uint64_t sub_1BD056F30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[13];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[25];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[27];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0, &unk_1BE0B7300);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[28];

  return v16(v17, a2, v15);
}

uint64_t sub_1BD057114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[25];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[27];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0, &unk_1BE0B7300);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[28];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD057354()
{
  v1 = type metadata accessor for PaymentSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v194 = *(*(v1 - 1) + 64);
  v3 = sub_1BE04C614();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v195 = v0;
  v6 = v0 + ((v2 + 16) & ~v2);
  *(v6 + 8), v7, v8, v9, v10, v11, v12, v13;
  *(v6 + 24), v14, v15, v16, v17, v18, v19, v20;
  *(v6 + 32), v21, v22, v23, v24, v25, v26, v27;

  *(v6 + 56), v28, v29, v30, v31, v32, v33, v34;
  *(v6 + 80), v35, v36, v37, v38, v39, v40, v41;
  if (*(v6 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + 88), v42, v43, v44, v45, v46, v47, v48);
  }

  *(v6 + 128), v42, v43, v44, v45, v46, v47, v48;
  v56 = *(v6 + 144);
  if (v56)
  {
    v56, v49, v50, v51, v52, v53, v54, v55;
    *(v6 + 160), v57, v58, v59, v60, v61, v62, v63;
    *(v6 + 176), v64, v65, v66, v67, v68, v69, v70;
  }

  *(v6 + 184), v49, v50, v51, v52, v53, v54, v55;
  v71 = v6 + v1[13];
  v72 = *(v4 + 48);
  if (!v72(v71, 1, v3))
  {
    (*(v4 + 8))(v71, v3);
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  *(v71 + *(v73 + 28)), v74, v75, v76, v77, v78, v79, v80;
  *(v6 + v1[14] + 8), v81, v82, v83, v84, v85, v86, v87;
  v88 = v6 + v1[15];
  if (!v72(v88, 1, v3))
  {
    (*(v4 + 8))(v88, v3);
  }

  *(v88 + *(v73 + 28)), v89, v90, v91, v92, v93, v94, v95;
  *(v6 + v1[16] + 8), v96, v97, v98, v99, v100, v101, v102;
  *(v6 + v1[17] + 8), v103, v104, v105, v106, v107, v108, v109;
  v110 = (v6 + v1[18]);

  v110[1], v111, v112, v113, v114, v115, v116, v117;
  *(v6 + v1[19] + 8), v118, v119, v120, v121, v122, v123, v124;
  v125 = (v6 + v1[20]);

  v125[1], v126, v127, v128, v129, v130, v131, v132;
  v133 = (v6 + v1[21]);

  v133[1], v134, v135, v136, v137, v138, v139, v140;
  *(v6 + v1[22]), v141, v142, v143, v144, v145, v146, v147;
  sub_1BD0D45CC(*(v6 + v1[23]), *(v6 + v1[23] + 8), *(v6 + v1[23] + 16), v148, v149, v150, v151, v152);

  v153 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v161 = sub_1BE04C884();
    (*(*(v161 - 8) + 8))(v6 + v153, v161);
  }

  else
  {
    *(v6 + v153), v154, v155, v156, v157, v158, v159, v160;
  }

  sub_1BD0D4604(*(v6 + v1[26]), *(v6 + v1[26] + 8), v162, v163, v164, v165, v166, v167);
  v168 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v176 = sub_1BE04EB24();
    (*(*(v176 - 8) + 8))(v6 + v168, v176);
  }

  else
  {
    *(v6 + v168), v169, v170, v171, v172, v173, v174, v175;
  }

  v177 = v1[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v185 = sub_1BE04FD04();
    v186 = *(v185 - 8);
    if (!(*(v186 + 48))(v6 + v177, 1, v185))
    {
      (*(v186 + 8))(v6 + v177, v185);
    }
  }

  else
  {
    *(v6 + v177), v178, v179, v180, v181, v182, v183, v184;
  }

  sub_1BD0D4604(*(v6 + v1[29]), *(v6 + v1[29] + 8), v187, v188, v189, v190, v191, v192);
  (*(v4 + 8))(v195 + ((((v2 + 16) & ~v2) + v194 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1BD057848()
{
  v1 = sub_1BE04C614();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PaymentSheet(0);
  v195 = *(*(v5 - 1) + 80);
  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v195) & ~v195);
  *(v7 + 8), v8, v9, v10, v11, v12, v13, v14;
  *(v7 + 24), v15, v16, v17, v18, v19, v20, v21;
  *(v7 + 32), v22, v23, v24, v25, v26, v27, v28;

  *(v7 + 56), v29, v30, v31, v32, v33, v34, v35;
  *(v7 + 80), v36, v37, v38, v39, v40, v41, v42;
  if (*(v7 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v7 + 88), v43, v44, v45, v46, v47, v48, v49);
  }

  *(v7 + 128), v43, v44, v45, v46, v47, v48, v49;
  v57 = *(v7 + 144);
  if (v57)
  {
    v57, v50, v51, v52, v53, v54, v55, v56;
    *(v7 + 160), v58, v59, v60, v61, v62, v63, v64;
    *(v7 + 176), v65, v66, v67, v68, v69, v70, v71;
  }

  *(v7 + 184), v50, v51, v52, v53, v54, v55, v56;
  v72 = v7 + v5[13];
  v73 = *(v2 + 48);
  if (!v73(v72, 1, v1))
  {
    v6(v72, v1);
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  *(v72 + *(v74 + 28)), v75, v76, v77, v78, v79, v80, v81;
  *(v7 + v5[14] + 8), v82, v83, v84, v85, v86, v87, v88;
  v89 = v7 + v5[15];
  if (!v73(v89, 1, v1))
  {
    v6(v89, v1);
  }

  *(v89 + *(v74 + 28)), v90, v91, v92, v93, v94, v95, v96;
  *(v7 + v5[16] + 8), v97, v98, v99, v100, v101, v102, v103;
  *(v7 + v5[17] + 8), v104, v105, v106, v107, v108, v109, v110;
  v111 = (v7 + v5[18]);

  v111[1], v112, v113, v114, v115, v116, v117, v118;
  *(v7 + v5[19] + 8), v119, v120, v121, v122, v123, v124, v125;
  v126 = (v7 + v5[20]);

  v126[1], v127, v128, v129, v130, v131, v132, v133;
  v134 = (v7 + v5[21]);

  v134[1], v135, v136, v137, v138, v139, v140, v141;
  *(v7 + v5[22]), v142, v143, v144, v145, v146, v147, v148;
  sub_1BD0D45CC(*(v7 + v5[23]), *(v7 + v5[23] + 8), *(v7 + v5[23] + 16), v149, v150, v151, v152, v153);

  v154 = v5[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v162 = sub_1BE04C884();
    (*(*(v162 - 8) + 8))(v7 + v154, v162);
  }

  else
  {
    *(v7 + v154), v155, v156, v157, v158, v159, v160, v161;
  }

  sub_1BD0D4604(*(v7 + v5[26]), *(v7 + v5[26] + 8), v163, v164, v165, v166, v167, v168);
  v169 = v5[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v177 = sub_1BE04EB24();
    (*(*(v177 - 8) + 8))(v7 + v169, v177);
  }

  else
  {
    *(v7 + v169), v170, v171, v172, v173, v174, v175, v176;
  }

  v178 = v5[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v186 = sub_1BE04FD04();
    v187 = *(v186 - 8);
    if (!(*(v187 + 48))(v7 + v178, 1, v186))
    {
      (*(v187 + 8))(v7 + v178, v186);
    }
  }

  else
  {
    *(v7 + v178), v179, v180, v181, v182, v183, v184, v185;
  }

  sub_1BD0D4604(*(v7 + v5[29]), *(v7 + v5[29] + 8), v188, v189, v190, v191, v192, v193);

  return swift_deallocObject();
}

uint64_t sub_1BD057DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnavailablePass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD057E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnavailablePass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BD057F2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD057F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428, &qword_1BE0C6128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD057FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428, &qword_1BE0C6128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD058058(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD25D6D4(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0580A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0580E0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD058118()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BD0581E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BD05826C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0582A4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0582DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD058314()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05834C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD058384(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0583C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0583FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD058470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BE0493F4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD058594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BE0493F4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD058828()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD058860()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD058898()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F990, &qword_1BE0C6910);
  sub_1BD0DE4F4(&qword_1EBD3F9A0, &qword_1EBD3F990, &qword_1BE0C6910, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD058A28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD058B34()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD058BC0()
{
  v1 = (type metadata accessor for PeerPaymentGroupedPaymentsView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0 + v2;

  *(v0 + v2 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1BE04E664();
    (*(*(v20 - 8) + 8))(v4 + v12, v20);
  }

  else
  {
    *(v4 + v12), v13, v14, v15, v16, v17, v18, v19;
  }

  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v21, v22, v23, v24, v25, v26, v27;

  return swift_deallocObject();
}

uint64_t sub_1BD058D54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD058E90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD059010(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04E664();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1BD059140(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04E664();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD059274(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0592AC()
{
  v1 = (type metadata accessor for PeerPaymentFraudPageView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FCC8, &qword_1BE0C6E78);
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1BE04E664();
    (*(*(v20 - 8) + 8))(v2 + v12, v20);
  }

  else
  {
    *(v2 + v12), v13, v14, v15, v16, v17, v18, v19;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05947C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0594B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0594EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05953C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD059584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0595F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059644()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05967C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0596BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD059794()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0597CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD059804(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD059854(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  if (*(v8 + 32))
  {
    *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  }

  *(v8 + 64), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0598B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD05991C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD05999C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 253)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 3)
    {
      return v14 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BD059B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 253)
  {
    *(a1 + a4[6]) = a2 + 2;
  }

  else
  {
    v15 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1BD059D60(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD059D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD059DD8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD059E1C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD059E54()
{

  return swift_deallocObject();
}

uint64_t sub_1BD059E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContactFormItemRow(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80)));
  v6[1], v7, v8, v9, v10, v11, v12, v13;

  v6[6], v14, v15, v16, v17, v18, v19, v20;
  v21 = v5[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v110 = *(v23 + 8);
  v110(v6 + v21, AssociatedTypeWitness);
  *(v6 + v5[14] + 8), v24, v25, v26, v27, v28, v29, v30;
  *(v6 + v5[15] + 8), v31, v32, v33, v34, v35, v36, v37;
  v38 = (v6 + v5[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v46 - 8) + 48))(v38, 1, v46))
    {
      *v38, v47, v48, v49, v50, v51, v52, v53;
      v38[1], v54, v55, v56, v57, v58, v59, v60;
      v61 = *(v46 + 32);
      v62 = sub_1BE051AD4();
      (*(*(v62 - 8) + 8))(v38 + v61, v62);
    }
  }

  else
  {
    *v38, v39, v40, v41, v42, v43, v44, v45;
  }

  v63 = (v6 + v5[17]);
  v63[1], v47, v48, v49, v50, v51, v52, v53;
  v63[2], v64, v65, v66, v67, v68, v69, v70;
  v71 = (v6 + v5[18]);
  v71[1], v72, v73, v74, v75, v76, v77, v78;
  v71[2], v79, v80, v81, v82, v83, v84, v85;
  *(v6 + v5[19] + 8), v86, v87, v88, v89, v90, v91, v92;
  v93 = (v6 + v5[20]);
  *v93, v94, v95, v96, v97, v98, v99, v100;
  v93[1], v101, v102, v103, v104, v105, v106, v107;
  sub_1BE0534B4();
  v108 = *(sub_1BE051964() + 32);
  if (!(*(v23 + 48))(v93 + v108, 1, AssociatedTypeWitness))
  {
    v110(v93 + v108, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05A1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40488, &qword_1BE0C8080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05A240(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460, &qword_1BE0C8070);
  swift_getAssociatedTypeWitness();
  sub_1BE0534B4();
  sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &qword_1BE0C8070, sub_1BD2A1FE8);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0, &qword_1BE0C80A0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8, &qword_1BE0C80A8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404D0, &unk_1BE0C80B0);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD404D8, &qword_1EBD404D0, &unk_1BE0C80B0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60, &qword_1BE0C3580);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD05A654()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05A68C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40790, &qword_1BE0C8470);
  sub_1BE04EBD4();
  sub_1BD2AFA64();
  return swift_getWitnessTable();
}

uint64_t sub_1BD05A714(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD05A7D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70, &unk_1BE0BB610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05A898()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05A8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05A918(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD05A968(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05A9B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05A9E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD05AA38(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD05AA90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05AAC8()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04DC44();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  *(v0 + 16), v8, v9, v10, v11, v12, v13, v14;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1BD05AC20()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD05AC6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  *(v0 + 32), v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1BE04AFE4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2, 1, v10))
  {
    (*(v11 + 8))(v0 + v2, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD05AD98(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05ADE0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05AE18(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

void sub_1BD05B0A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40566C(v1);
}

void sub_1BD05B104(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40252C(v1);
}

uint64_t sub_1BD05B144(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40, &qword_1BE0C9410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD05B200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C40, &qword_1BE0C9410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05B2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD05B330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD05B3B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05B420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E60, qword_1BE0C9858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05B498()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40CA0, &qword_1BE0C9688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C98, &qword_1BE0C9680);
  sub_1BD2D5018();
  sub_1BD2D5100();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B5E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA8, &unk_1BE0C97A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA0, &qword_1BE0C9798);
  sub_1BD2D57F4();
  sub_1BD2D58AC();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B6E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC8, &qword_1BE0C97E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0, &qword_1BE0C97E0);
  sub_1BD2D5A00();
  sub_1BD2D5AE8();
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05B7F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD05B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD05BA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05BC68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AF64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05BD0C()
{
  v1 = (type metadata accessor for PKDashboardRewardsBalanceView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[8];
  v18 = sub_1BE04AF64();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);
  *(v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;

  return swift_deallocObject();
}

uint64_t sub_1BD05BECC()
{
  v1 = type metadata accessor for AvailablePass(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v3[1], v5, v6, v7, v8, v9, v10, v11;
    v3[3], v12, v13, v14, v15, v16, v17, v18;
    v19 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v20 = sub_1BE04CF34();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v21 = (v3 + v1[6]);
  v22 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v21[1], v23, v24, v25, v26, v27, v28, v29;
    v30 = v22[5];
    v31 = sub_1BE04DA84();
    (*(*(v31 - 8) + 8))(v21 + v30, v31);
    *(v21 + v22[6] + 8), v32, v33, v34, v35, v36, v37, v38;
    *(v21 + v22[7] + 8), v39, v40, v41, v42, v43, v44, v45;
    *(v21 + v22[8] + 8), v46, v47, v48, v49, v50, v51, v52;
  }

  v53 = (v3 + v1[7]);
  v54 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
  {

    v55 = *(v54 + 28);
    v56 = sub_1BE04AF64();
    v57 = *(v56 - 8);
    if (!(*(v57 + 48))(v53 + v55, 1, v56))
    {
      (*(v57 + 8))(v53 + v55, v56);
    }
  }

  v58 = v3 + v1[10];
  v59 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    v67 = *(v58 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v58 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v58 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v58 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v58 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v58 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v59 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v58[v97], 1, v98))
    {
      (*(v99 + 8))(&v58[v97], v98);
    }

    v101 = *(v59 + 32);
    if (!v100(&v58[v101], 1, v98))
    {
      (*(v99 + 8))(&v58[v101], v98);
    }
  }

  v102 = (v3 + v1[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v3 + v1[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v3 + v1[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v3 + v1[15]), v118, v119, v120, v121, v122, v123, v124;

  return swift_deallocObject();
}

uint64_t sub_1BD05C388(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05C48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD05C4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD05C584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD415A0, &qword_1BE0CA990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05C640()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C680()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05C6B8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05C6F0()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05C730()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05C780()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;

  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD05C7E0()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD05C828()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05C878(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD05C8D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05C908(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05C9A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05C9D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05CA68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD05CAC8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[9], v16, v17, v18, v19, v20, v21, v22;
  v8[14], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD05CB80(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05CC18()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;

  v0[7], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1BD05CD28()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CD60()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05CDBC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05CDF4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05CE34(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD05CE84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05CEC4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05CEFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05CF38()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05CF70(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05CFB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD05D134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05D270()
{
  v1 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v2 + 24), v12, v13, v14, v15, v16, v17, v18;
  v19 = v1[6];
  v20 = sub_1BE04AF64();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v2 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  *(v4 + v1[7] + 8), v22, v23, v24, v25, v26, v27, v28;
  *(v4 + v1[8] + 8), v29, v30, v31, v32, v33, v34, v35;
  *(v4 + v1[9] + 8), v36, v37, v38, v39, v40, v41, v42;
  v43 = v1[10];
  v44 = sub_1BE04AA64();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v4 + v43, 1, v44))
  {
    (*(v45 + 8))(v4 + v43, v44);
  }

  v53 = v4 + v1[11];
  if (*v53)
  {
    *(v53 + 8), v46, v47, v48, v49, v50, v51, v52;
  }

  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v46, v47, v48, v49, v50, v51, v52;

  return swift_deallocObject();
}

uint64_t sub_1BD05D49C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 40);
  if (v9 != 255)
  {
    sub_1BD3068D8(*(v8 + 32), v9 & 1);
  }

  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 64), v10, v11, v12, v13, v14, v15, v16;
  *(v8 + 80), v17, v18, v19, v20, v21, v22, v23;

  return swift_deallocObject();
}

uint64_t sub_1BD05D4FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05D534()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41AF0, &qword_1BE0CB7B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD05D604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD05D63C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05D674(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

id sub_1BD05D6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BD05D71C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD308A68(v1);
}

uint64_t sub_1BD05D7F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05D82C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05D864(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05D8D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[6], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05D930(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD05D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1BE04A884();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *sub_1BD05DB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v8 = sub_1BE04A884();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD05DC7C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05DCEC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BD05DDBC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DDFC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DE34()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05DE6C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05DEAC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05DEF4()
{
  v1 = sub_1BE04C384();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD05DF90(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05DFF4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05E05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE049364();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05E108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE049364();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD05E1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FB0, &qword_1BE0CC7D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FD8, &unk_1BE0CC7E8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0, &qword_1BE0CC7D0, MEMORY[0x1E697CCF0]);
  sub_1BD325E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05E26C()
{
  v1 = (type metadata accessor for ACHCredentialDetailsView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  *(v0 + v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = sub_1BE049364();
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  *(v0 + v2 + v1[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = v0 + v2 + v1[10];
  *(v26 + 8), v27, v28, v29, v30, v31, v32, v33;
  *(v26 + 16), v34, v35, v36, v37, v38, v39, v40;
  v41 = v0 + v2 + v1[11];
  *(v41 + 8), v42, v43, v44, v45, v46, v47, v48;
  *(v41 + 16), v49, v50, v51, v52, v53, v54, v55;

  return swift_deallocObject();
}

uint64_t sub_1BD05E3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040, &qword_1BE0CC8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD05E42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040, &qword_1BE0CC8E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD05E4A8()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05E4EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05E524(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD05E57C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05E5B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E5EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD05E624()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E65C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BD05E6B8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD05E790()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;
  v0[8], v8, v9, v10, v11, v12, v13, v14;
  v0[9], v15, v16, v17, v18, v19, v20, v21;
  v0[11], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD05E834()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E87C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD05E8BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E8F4()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD05E94C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD05E988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42330, &unk_1BE0CD220);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1BD05EB04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42330, &unk_1BE0CD220);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD05ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD05ED5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1BD05EE34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1A3C(v1);
}

void sub_1BD05EE98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD7B1BD4(v1);
}

uint64_t sub_1BD05EF10()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD05EFB4()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD05F034()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD05F06C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42608, &qword_1BE0CDBB0);
  sub_1BD0DE4F4(&qword_1EBD42638, &qword_1EBD42608, &qword_1BE0CDBB0, MEMORY[0x1E697CD20]);
  sub_1BD0DDEBC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD05F118()
{
  swift_unknownObjectRelease();

  v0[6], v1, v2, v3, v4, v5, v6, v7;
  v0[7], v8, v9, v10, v11, v12, v13, v14;
  v0[10], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD05F1D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = _s8MerchantVMa(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = _s14PaymentSummaryVMa(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[12];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[13] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[21];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BD05F454(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = _s8MerchantVMa(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = _s14PaymentSummaryVMa(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[21];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1BD05F6F4()
{
  v1 = type metadata accessor for PaymentSummarySheet(0);
  v950 = *(*(v1 - 1) + 80);
  *(v0 + 16), v2, v3, v4, v5, v6, v7, v8;
  v9 = v0 + ((v950 + 24) & ~v950);
  sub_1BD0D45CC(*v9, *(v9 + 8), *(v9 + 16), v10, v11, v12, v13, v14);
  v15 = (v9 + v1[5]);
  v16 = type metadata accessor for AvailablePass(0);
  v946 = *(*(v16 - 1) + 48);
  v952 = v16;
  if (!v946(v15, 1, v16))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v15[1], v25, v26, v27, v28, v29, v30, v31;
      v15[3], v32, v33, v34, v35, v36, v37, v38;
      v39 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v40 = sub_1BE04CF34();
      (*(*(v40 - 8) + 8))(v15 + v39, v40);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v41 = (v15 + v16[6]);
    v42 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v42 - 1) + 48))(v41, 1, v42))
    {
      v41[1], v43, v44, v45, v46, v47, v48, v49;
      v50 = v42[5];
      v51 = sub_1BE04DA84();
      (*(*(v51 - 8) + 8))(v41 + v50, v51);
      *(v41 + v42[6] + 8), v52, v53, v54, v55, v56, v57, v58;
      *(v41 + v42[7] + 8), v59, v60, v61, v62, v63, v64, v65;
      *(v41 + v42[8] + 8), v66, v67, v68, v69, v70, v71, v72;
    }

    v73 = (v15 + v16[7]);
    v74 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
    {

      v75 = *(v74 + 28);
      v76 = sub_1BE04AF64();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v73 + v75, 1, v76))
      {
        (*(v77 + 8))(v73 + v75, v76);
      }
    }

    v78 = v15 + v16[10];
    v79 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
    {
      v87 = *(v78 + 2);
      if (v87 != 1)
      {
        v87, v80, v81, v82, v83, v84, v85, v86;
        *(v78 + 4), v88, v89, v90, v91, v92, v93, v94;
        *(v78 + 6), v95, v96, v97, v98, v99, v100, v101;
      }

      v102 = *(v78 + 9);
      if (v102 != 1)
      {
        v102, v80, v81, v82, v83, v84, v85, v86;
        *(v78 + 11), v103, v104, v105, v106, v107, v108, v109;
        *(v78 + 13), v110, v111, v112, v113, v114, v115, v116;
      }

      v117 = *(v79 + 28);
      v118 = sub_1BE04AF64();
      v119 = *(v118 - 8);
      v120 = *(v119 + 48);
      if (!v120(&v78[v117], 1, v118))
      {
        (*(v119 + 8))(&v78[v117], v118);
      }

      v121 = *(v79 + 32);
      v122 = v120(&v78[v121], 1, v118);
      v16 = v952;
      if (!v122)
      {
        (*(v119 + 8))(&v78[v121], v118);
      }
    }

    v123 = (v15 + v16[12]);
    if (*v123)
    {

      v123[4], v124, v125, v126, v127, v128, v129, v130;
    }

    v131 = (v15 + v16[13]);
    if (*v131)
    {

      v131[2], v132, v133, v134, v135, v136, v137, v138;
    }

    *(v15 + v16[14]), v80, v81, v82, v83, v84, v85, v86;
    *(v15 + v16[15]), v139, v140, v141, v142, v143, v144, v145;
  }

  v146 = v9 + v1[6];
  *(v146 + 8), v17, v18, v19, v20, v21, v22, v23;
  v147 = (v146 + *(_s8MerchantVMa(0) + 20));
  _s14MerchantOriginOMa(0);
  v148 = swift_getEnumCaseMultiPayload();
  if (v148 == 1)
  {
    v170 = sub_1BE04AA64();
    v171 = *(v170 - 8);
    v172 = *(v171 + 8);
    v172(v147, v170);
    v173 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v171 + 48))(v147 + v173, 1, v170))
    {
      v172((v147 + v173), v170);
    }
  }

  else if (!v148)
  {
    v147[1], v149, v150, v151, v152, v153, v154, v155;
    v147[3], v156, v157, v158, v159, v160, v161, v162;
    v147[5], v163, v164, v165, v166, v167, v168, v169;
  }

  v174 = (v9 + v1[7]);

  v174[4], v175, v176, v177, v178, v179, v180, v181;
  v174[6], v182, v183, v184, v185, v186, v187, v188;
  v189 = _s11TotalAmountVMa(0);
  v190 = (v174 + v189[10]);
  _s22SummaryItemPricingTypeOMa(0);
  v191 = swift_getEnumCaseMultiPayload();
  switch(v191)
  {
    case 2:
      v190[1], v192, v193, v194, v195, v196, v197, v198;
      break;
    case 1:
      v233 = sub_1BE04AF64();
      (*(*(v233 - 8) + 8))(v190, v233);
      break;
    case 0:
      v944 = v189;
      v199 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v200 = v199[6];
      v201 = sub_1BE04AF64();
      v202 = *(v201 - 8);
      v203 = *(v202 + 48);
      if (!v203(v190 + v200, 1, v201))
      {
        (*(v202 + 8))(v190 + v200, v201);
      }

      v204 = v199[7];
      if (!v203(v190 + v204, 1, v201))
      {
        (*(v202 + 8))(v190 + v204, v201);
      }

      *(v190 + v199[9] + 8), v205, v206, v207, v208, v209, v210, v211;
      *(v190 + v199[10] + 8), v212, v213, v214, v215, v216, v217, v218;
      *(v190 + v199[11] + 8), v219, v220, v221, v222, v223, v224, v225;
      *(v190 + v199[12] + 8), v226, v227, v228, v229, v230, v231, v232;
      v16 = v952;
      v189 = v944;
      break;
  }

  v234 = (v174 + v189[15]);
  v235 = type metadata accessor for PeerPaymentModel(0);
  v948 = *(*(v235 - 8) + 48);
  v951 = v235;
  if (!v948(v234, 1, v235))
  {

    v236 = (v234 + *(v235 + 20));
    type metadata accessor for WrappedPass(0);
    v237 = swift_getEnumCaseMultiPayload();
    v943 = v234;
    if (v237 == 2)
    {
      v236[1], v238, v239, v240, v241, v242, v243, v244;
      v236[3], v245, v246, v247, v248, v249, v250, v251;
      v252 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v253 = sub_1BE04CF34();
      (*(*(v253 - 8) + 8))(v236 + v252, v253);
    }

    else if (v237 <= 1)
    {
    }

    v254 = (v236 + v16[6]);
    v255 = v16;
    v256 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v256 - 1) + 48))(v254, 1, v256))
    {
      v254[1], v257, v258, v259, v260, v261, v262, v263;
      v264 = v256[5];
      v265 = sub_1BE04DA84();
      (*(*(v265 - 8) + 8))(v254 + v264, v265);
      *(v254 + v256[6] + 8), v266, v267, v268, v269, v270, v271, v272;
      *(v254 + v256[7] + 8), v273, v274, v275, v276, v277, v278, v279;
      *(v254 + v256[8] + 8), v280, v281, v282, v283, v284, v285, v286;
    }

    v287 = (v236 + v255[7]);
    v288 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v288 - 8) + 48))(v287, 1, v288))
    {

      v289 = *(v288 + 28);
      v290 = sub_1BE04AF64();
      v291 = *(v290 - 8);
      if (!(*(v291 + 48))(v287 + v289, 1, v290))
      {
        (*(v291 + 8))(v287 + v289, v290);
      }
    }

    v292 = v236 + v952[10];
    v293 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v293 - 8) + 48))(v292, 1, v293))
    {
      v301 = *(v292 + 2);
      if (v301 != 1)
      {
        v301, v294, v295, v296, v297, v298, v299, v300;
        *(v292 + 4), v302, v303, v304, v305, v306, v307, v308;
        *(v292 + 6), v309, v310, v311, v312, v313, v314, v315;
      }

      v316 = *(v292 + 9);
      if (v316 != 1)
      {
        v316, v294, v295, v296, v297, v298, v299, v300;
        *(v292 + 11), v317, v318, v319, v320, v321, v322, v323;
        *(v292 + 13), v324, v325, v326, v327, v328, v329, v330;
      }

      v331 = *(v293 + 28);
      v332 = sub_1BE04AF64();
      v333 = *(*(v332 - 8) + 48);
      v941 = v331;
      v334 = &v292[v331];
      v335 = *(v332 - 8);
      if (!v333(v334, 1, v332))
      {
        (*(v335 + 8))(&v292[v941], v332);
      }

      v942 = v335;
      v336 = *(v293 + 32);
      if (!v333(&v292[v336], 1, v332))
      {
        (*(v942 + 8))(&v292[v336], v332);
      }
    }

    v16 = v952;
    v337 = (v236 + v952[12]);
    if (*v337)
    {

      v337[4], v338, v339, v340, v341, v342, v343, v344;
    }

    v345 = (v236 + v952[13]);
    v235 = v951;
    if (*v345)
    {

      v345[2], v346, v347, v348, v349, v350, v351, v352;
    }

    *(v236 + v952[14]), v294, v295, v296, v297, v298, v299, v300;
    *(v236 + v952[15]), v353, v354, v355, v356, v357, v358, v359;
    v360 = (v943 + *(v951 + 24));
    if (*v360 != 1)
    {

      v368 = v360[3];
      if (v368)
      {
        v368, v361, v362, v363, v364, v365, v366, v367;
        v360[5], v369, v370, v371, v372, v373, v374, v375;
        v360[7], v376, v377, v378, v379, v380, v381, v382;
        v360[9], v383, v384, v385, v386, v387, v388, v389;
      }
    }
  }

  v390 = (v174 + v189[16]);
  v391 = type metadata accessor for Passes(0);
  if (!(*(*(v391 - 1) + 48))(v390, 1, v391))
  {
    if (!v946(v390, 1, v16))
    {
      type metadata accessor for WrappedPass(0);
      v392 = swift_getEnumCaseMultiPayload();
      if (v392 == 2)
      {
        v390[1], v393, v394, v395, v396, v397, v398, v399;
        v390[3], v400, v401, v402, v403, v404, v405, v406;
        v407 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v408 = sub_1BE04CF34();
        (*(*(v408 - 8) + 8))(v390 + v407, v408);
      }

      else if (v392 <= 1)
      {
      }

      v409 = (v390 + v16[6]);
      v410 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v410 - 1) + 48))(v409, 1, v410))
      {
        v409[1], v411, v412, v413, v414, v415, v416, v417;
        v418 = v410[5];
        v419 = sub_1BE04DA84();
        (*(*(v419 - 8) + 8))(v409 + v418, v419);
        *(v409 + v410[6] + 8), v420, v421, v422, v423, v424, v425, v426;
        *(v409 + v410[7] + 8), v427, v428, v429, v430, v431, v432, v433;
        *(v409 + v410[8] + 8), v434, v435, v436, v437, v438, v439, v440;
      }

      v441 = (v390 + v16[7]);
      v442 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v442 - 8) + 48))(v441, 1, v442))
      {

        v443 = *(v442 + 28);
        v444 = sub_1BE04AF64();
        v445 = *(v444 - 8);
        if (!(*(v445 + 48))(v441 + v443, 1, v444))
        {
          (*(v445 + 8))(v441 + v443, v444);
        }
      }

      v446 = v390 + v952[10];
      v447 = type metadata accessor for PassEligibleRewardsInfo(0);
      if (!(*(*(v447 - 8) + 48))(v446, 1, v447))
      {
        v455 = *(v446 + 2);
        if (v455 != 1)
        {
          v455, v448, v449, v450, v451, v452, v453, v454;
          *(v446 + 4), v456, v457, v458, v459, v460, v461, v462;
          *(v446 + 6), v463, v464, v465, v466, v467, v468, v469;
        }

        v470 = *(v446 + 9);
        if (v470 != 1)
        {
          v470, v448, v449, v450, v451, v452, v453, v454;
          *(v446 + 11), v471, v472, v473, v474, v475, v476, v477;
          *(v446 + 13), v478, v479, v480, v481, v482, v483, v484;
        }

        v485 = *(v447 + 28);
        v486 = sub_1BE04AF64();
        v947 = *(v486 - 8);
        v945 = v485;
        v487 = &v446[v485];
        v488 = *(v947 + 48);
        if (!v488(v487, 1, v486))
        {
          (*(v947 + 8))(&v446[v945], v486);
        }

        v489 = *(v447 + 32);
        if (!v488(&v446[v489], 1, v486))
        {
          (*(v947 + 8))(&v446[v489], v486);
        }
      }

      v16 = v952;
      v490 = (v390 + v952[12]);
      if (*v490)
      {

        v490[4], v491, v492, v493, v494, v495, v496, v497;
      }

      v498 = (v390 + v952[13]);
      v235 = v951;
      if (*v498)
      {

        v498[2], v499, v500, v501, v502, v503, v504, v505;
      }

      *(v390 + v952[14]), v448, v449, v450, v451, v452, v453, v454;
      *(v390 + v952[15]), v506, v507, v508, v509, v510, v511, v512;
    }

    *(v390 + v391[7]), v513, v514, v515, v516, v517, v518, v519;
    *(v390 + v391[9]), v520, v521, v522, v523, v524, v525, v526;
    *(v390 + v391[11]), v527, v528, v529, v530, v531, v532, v533;
  }

  v534 = _s14PaymentSummaryVMa(0);
  *(v174 + v534[5]), v535, v536, v537, v538, v539, v540, v541;
  *(v174 + v534[6] + 8), v542, v543, v544, v545, v546, v547, v548;
  v556 = v174 + v534[7];
  v557 = *(v556 + 1);
  if (v557)
  {
    v557, v549, v550, v551, v552, v553, v554, v555;
    *(v556 + 3), v558, v559, v560, v561, v562, v563, v564;
  }

  v565 = v174 + v534[9];
  v566 = *(v565 + 1);
  if (v566)
  {
    v566, v549, v550, v551, v552, v553, v554, v555;
    *(v565 + 3), v567, v568, v569, v570, v571, v572, v573;
    *(v565 + 5), v574, v575, v576, v577, v578, v579, v580;
  }

  v581 = v174 + v534[10];
  v582 = *(v581 + 1);
  if (v582)
  {
    v582, v549, v550, v551, v552, v553, v554, v555;
    *(v581 + 3), v583, v584, v585, v586, v587, v588, v589;
    *(v581 + 5), v590, v591, v592, v593, v594, v595, v596;
  }

  v597 = (v174 + v534[11]);
  v598 = type metadata accessor for DeferredPaymentRequest(0);
  if (!(*(*(v598 - 1) + 48))(v597, 1, v598))
  {
    v597[1], v599, v600, v601, v602, v603, v604, v605;
    v597[3], v606, v607, v608, v609, v610, v611, v612;
    v597[5], v613, v614, v615, v616, v617, v618, v619;
    v620 = v598[7];
    v621 = sub_1BE04AF64();
    v622 = *(v621 - 8);
    if (!(*(v622 + 48))(v597 + v620, 1, v621))
    {
      (*(v622 + 8))(v597 + v620, v621);
    }

    v623 = v598[8];
    v624 = sub_1BE04B3B4();
    v625 = *(v624 - 8);
    if (!(*(v625 + 48))(v597 + v623, 1, v624))
    {
      (*(v625 + 8))(v597 + v623, v624);
    }

    v16 = v952;
    v235 = v951;
  }

  *(v174 + v534[12]), v599, v600, v601, v602, v603, v604, v605;
  *(v9 + v1[9] + 8), v626, v627, v628, v629, v630, v631, v632;
  v633 = (v9 + v1[10]);
  if (!v948(v633, 1, v235))
  {

    v634 = (v633 + *(v235 + 20));
    type metadata accessor for WrappedPass(0);
    v635 = swift_getEnumCaseMultiPayload();
    if (v635 == 2)
    {
      v634[1], v636, v637, v638, v639, v640, v641, v642;
      v634[3], v643, v644, v645, v646, v647, v648, v649;
      v650 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v651 = sub_1BE04CF34();
      (*(*(v651 - 8) + 8))(v634 + v650, v651);
    }

    else if (v635 <= 1)
    {
    }

    v652 = (v634 + v16[6]);
    v653 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v653 - 1) + 48))(v652, 1, v653))
    {
      v652[1], v654, v655, v656, v657, v658, v659, v660;
      v661 = v653[5];
      v662 = sub_1BE04DA84();
      (*(*(v662 - 8) + 8))(v652 + v661, v662);
      *(v652 + v653[6] + 8), v663, v664, v665, v666, v667, v668, v669;
      *(v652 + v653[7] + 8), v670, v671, v672, v673, v674, v675, v676;
      *(v652 + v653[8] + 8), v677, v678, v679, v680, v681, v682, v683;
    }

    v684 = (v634 + v16[7]);
    v685 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v685 - 8) + 48))(v684, 1, v685))
    {

      v686 = *(v685 + 28);
      v687 = sub_1BE04AF64();
      v688 = *(v687 - 8);
      if (!(*(v688 + 48))(v684 + v686, 1, v687))
      {
        (*(v688 + 8))(v684 + v686, v687);
      }
    }

    v689 = v634 + v16[10];
    v690 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v690 - 8) + 48))(v689, 1, v690))
    {
      v698 = *(v689 + 2);
      if (v698 != 1)
      {
        v698, v691, v692, v693, v694, v695, v696, v697;
        *(v689 + 4), v699, v700, v701, v702, v703, v704, v705;
        *(v689 + 6), v706, v707, v708, v709, v710, v711, v712;
      }

      v713 = *(v689 + 9);
      if (v713 != 1)
      {
        v713, v691, v692, v693, v694, v695, v696, v697;
        *(v689 + 11), v714, v715, v716, v717, v718, v719, v720;
        *(v689 + 13), v721, v722, v723, v724, v725, v726, v727;
      }

      v728 = *(v690 + 28);
      v729 = sub_1BE04AF64();
      v949 = *(v729 - 8);
      v730 = *(v949 + 48);
      if (!v730(&v689[v728], 1, v729))
      {
        (*(v949 + 8))(&v689[v728], v729);
      }

      v731 = *(v690 + 32);
      if (!v730(&v689[v731], 1, v729))
      {
        (*(v949 + 8))(&v689[v731], v729);
      }
    }

    v732 = (v634 + v952[12]);
    if (*v732)
    {

      v732[4], v733, v734, v735, v736, v737, v738, v739;
    }

    v740 = (v634 + v952[13]);
    if (*v740)
    {

      v740[2], v741, v742, v743, v744, v745, v746, v747;
    }

    *(v634 + v952[14]), v691, v692, v693, v694, v695, v696, v697;
    *(v634 + v952[15]), v748, v749, v750, v751, v752, v753, v754;
    v755 = (v633 + *(v951 + 24));
    if (*v755 != 1)
    {

      v763 = v755[3];
      if (v763)
      {
        v763, v756, v757, v758, v759, v760, v761, v762;
        v755[5], v764, v765, v766, v767, v768, v769, v770;
        v755[7], v771, v772, v773, v774, v775, v776, v777;
        v755[9], v778, v779, v780, v781, v782, v783, v784;
      }
    }
  }

  v785 = v9 + v1[12];
  v786 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v786 - 8) + 48))(v785, 1, v786))
  {
    v794 = *(v785 + 16);
    if (v794 != 1)
    {
      v794, v787, v788, v789, v790, v791, v792, v793;
      *(v785 + 32), v795, v796, v797, v798, v799, v800, v801;
      *(v785 + 48), v802, v803, v804, v805, v806, v807, v808;
    }

    v809 = *(v785 + 72);
    if (v809 != 1)
    {
      v809, v787, v788, v789, v790, v791, v792, v793;
      *(v785 + 88), v810, v811, v812, v813, v814, v815, v816;
      *(v785 + 104), v817, v818, v819, v820, v821, v822, v823;
    }

    v824 = *(v786 + 28);
    v825 = sub_1BE04AF64();
    v826 = *(v825 - 8);
    v827 = *(v826 + 48);
    if (!v827(v785 + v824, 1, v825))
    {
      (*(v826 + 8))(v785 + v824, v825);
    }

    v828 = *(v786 + 32);
    if (!v827(v785 + v828, 1, v825))
    {
      (*(v826 + 8))(v785 + v828, v825);
    }
  }

  v829 = v9 + v1[13];
  *(v829 + 8), v787, v788, v789, v790, v791, v792, v793;
  sub_1BD0D45CC(*(v829 + 16), *(v829 + 24), *(v829 + 32), v830, v831, v832, v833, v834);
  sub_1BD0D4604(*(v829 + 40), *(v829 + 48), v835, v836, v837, v838, v839, v840);
  *(v829 + 56), v841, v842, v843, v844, v845, v846, v847;
  *(v829 + 80), v848, v849, v850, v851, v852, v853, v854;
  if (*(v829 + 88))
  {
    *(v829 + 96), v855, v856, v857, v858, v859, v860, v861;
  }

  *(v9 + v1[14] + 8), v855, v856, v857, v858, v859, v860, v861;
  *(v9 + v1[15] + 8), v862, v863, v864, v865, v866, v867, v868;
  *(v9 + v1[16] + 8), v869, v870, v871, v872, v873, v874, v875;

  *(v9 + v1[19]), v876, v877, v878, v879, v880, v881, v882;
  *(v9 + v1[20] + 8), v883, v884, v885, v886, v887, v888, v889;
  v890 = (v9 + v1[21]);
  v891 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v891 - 8) + 48))(v890, 1, v891))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v892 = sub_1BE04AA64();
      (*(*(v892 - 8) + 8))(v890, v892);
    }

    else
    {

      v890[2], v893, v894, v895, v896, v897, v898, v899;
    }
  }

  v900 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v890 + *(v900 + 28)), v901, v902, v903, v904, v905, v906, v907;
  *(v9 + v1[22] + 8), v908, v909, v910, v911, v912, v913, v914;
  sub_1BD0D4604(*(v9 + v1[23]), *(v9 + v1[23] + 8), v915, v916, v917, v918, v919, v920);
  sub_1BD0D4604(*(v9 + v1[24]), *(v9 + v1[24] + 8), v921, v922, v923, v924, v925, v926);
  sub_1BD0D4604(*(v9 + v1[25]), *(v9 + v1[25] + 8), v927, v928, v929, v930, v931, v932);
  *(v9 + v1[26]), v933, v934, v935, v936, v937, v938, v939;

  return swift_deallocObject();
}

uint64_t sub_1BD061264(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD06129C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0612D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD061310()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD061358(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0613AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0613FC()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[6], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD061568(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD061624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42948, &unk_1BE0CE200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0616EC()
{
  v1 = type metadata accessor for MeCardAddressSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  *(v0 + v2), v5, v6, v7, v8, v9, v10, v11;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40), v12, v13, v14, v15, v16, v94, v95, v96);
  *(v4 + 56), v17, v18, v19, v20, v21, v22, v23;
  *(v4 + 72), v24, v25, v26, v27, v28, v29, v30;

  *(v4 + 104), v31, v32, v33, v34, v35, v36, v37;
  *(v4 + 120), v38, v39, v40, v41, v42, v43, v44;
  *(v4 + 136), v45, v46, v47, v48, v49, v50, v51;

  v52 = (v4 + *(v1 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v60 - 8) + 48))(v52, 1, v60))
    {
      *v52, v61, v62, v63, v64, v65, v66, v67;
      v52[1], v68, v69, v70, v71, v72, v73, v74;
      v75 = *(v60 + 32);
      v76 = sub_1BE051AD4();
      (*(*(v76 - 8) + 8))(v52 + v75, v76);
    }
  }

  else
  {
    *v52, v53, v54, v55, v56, v57, v58, v59;
  }

  v77 = (v4 + *(v1 + 40));

  v77[1], v78, v79, v80, v81, v82, v83, v84;
  v92 = *(v0 + v3 + 8);
  if (v92 >= 4)
  {
    v92, v85, v86, v87, v88, v89, v90, v91;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD061900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42970, &qword_1BE0CE280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD0E5E8C(255, &qword_1EBD406E0, 0x1E695CD58);
  sub_1BD35CE1C();
  sub_1BD35CEE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0619D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 216);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04C894();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD061A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 216) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04C894();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1BD061B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  sub_1BD921B90(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD061BA4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD061BDC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD061C28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD061CE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD061DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D40, &qword_1BE0CE990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD061E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD061F18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8, &unk_1BE0CEC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD062000(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2())
  {
    return a4(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD06205C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06209C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1BD0620F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD91752C(v1);
}

uint64_t sub_1BD062128(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD062174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510, &qword_1BE0D4430);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD062230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510, &qword_1BE0D4430);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0622E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD062350()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0623F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD062444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD06248C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD0624CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD06254C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0625A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0625DC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062614()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062654(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD06268C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0626E0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD062718()
{

  return swift_deallocObject();
}

uint64_t sub_1BD062750()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 40) & ~*(*(v6 - 1) + 80);
  *(v4 + 32), v8, v9, v10, v11, v12, v13, v14;
  v15 = v4 + v7;

  *(v4 + v7 + 32), v16, v17, v18, v19, v20, v21, v22;
  v23 = v6[12];
  v24 = *(v5 - 8);
  if (!(*(v24 + 48))(v4 + v7 + v23, 1, v5))
  {
    (*(v24 + 8))(v15 + v23, v5);
  }

  v32 = v15 + v6[14];
  if (*v32)
  {
    *(v32 + 8), v25, v26, v27, v28, v29, v30, v31;
  }

  *(v15 + v6[15]), v25, v26, v27, v28, v29, v30, v31;

  return swift_deallocObject();
}

uint64_t sub_1BD062938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PaymentOfferInstallmentPlanSummaryView(0, v5, *(v4 + 24), a4);
  v7 = (v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80)));

  v7[4], v8, v9, v10, v11, v12, v13, v14;
  v15 = v6[12];
  v16 = *(v5 - 8);
  if (!(*(v16 + 48))(v7 + v15, 1, v5))
  {
    (*(v16 + 8))(v7 + v15, v5);
  }

  v24 = (v7 + v6[14]);
  if (*v24)
  {
    v24[1], v17, v18, v19, v20, v21, v22, v23;
  }

  *(v7 + v6[15]), v17, v18, v19, v20, v21, v22, v23;

  return swift_deallocObject();
}

uint64_t sub_1BD062AB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD062B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0D45CC(*(v8 + 16), *(v8 + 24), *(v8 + 32), a4, a5, a6, a7, a8);

  return swift_deallocObject();
}

uint64_t sub_1BD062B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PassEligibleRewardsInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD062C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PassEligibleRewardsInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD062D28()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

id sub_1BD062D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD062DCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_memo);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD062E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BD062EA8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD062EE0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD063084(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD063108(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD063140(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD063188(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0631D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD063210(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[5], v9, v10, v11, v12, v13, v14, v15;
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD063260()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1BD0632E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD06341C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD063564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BD06362C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0636DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D78, &qword_1BE0D0E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD063750()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0637A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D80, &qword_1BE0D0EA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D90, &unk_1BE0D0EB0);
  sub_1BD3A2C60();
  sub_1BD3A2D18(&qword_1EBD43DA8, &qword_1EBD43D90, &unk_1BE0D0EB0, sub_1BD3A2C60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD063890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE0, &qword_1BE0D1020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD063960(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[5], a2, a3, a4, a5, a6, a7, a8;
  v8[7], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[10], v23, v24, v25, v26, v27, v28, v29;
  v8[12], v30, v31, v32, v33, v34, v35, v36;
  v8[14], v37, v38, v39, v40, v41, v42, v43;
  v8[17], v44, v45, v46, v47, v48, v49, v50;
  v8[19], v51, v52, v53, v54, v55, v56, v57;
  v8[20], v58, v59, v60, v61, v62, v63, v64;
  v8[22], v65, v66, v67, v68, v69, v70, v71;
  v8[24], v72, v73, v74, v75, v76, v77, v78;
  v8[26], v79, v80, v81, v82, v83, v84, v85;
  v8[28], v86, v87, v88, v89, v90, v91, v92;
  v8[30], v93, v94, v95, v96, v97, v98, v99;
  v8[32], v100, v101, v102, v103, v104, v105, v106;

  return swift_deallocObject();
}

uint64_t sub_1BD063A08(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD063A50(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD063A90(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD063AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048964();
}

uint64_t sub_1BD063B30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1BD063BF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD063D00()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v0[3], v4, v5, v6, v7, v8, v9, v10;
  v0[5], v11, v12, v13, v14, v15, v16, v17;
  v0[7], v18, v19, v20, v21, v22, v23, v24;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD063DDC()
{
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v0[5], v4, v5, v6, v7, v8, v9, v10;
  v0[7], v11, v12, v13, v14, v15, v16, v17;
  v0[9], v18, v19, v20, v21, v22, v23, v24;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD063EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD063F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalanceInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD064060()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  if (*(v0 + 32))
  {
    *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0640B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0640F0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD064128(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD064178()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0641B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();
  v8[8], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD064210()
{
  swift_unknownObjectRelease();
  v0[7], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD064288(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0642C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD064318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0643D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0644A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A8, &qword_1BE0D2058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD064514()
{
  v1 = type metadata accessor for DownloadDocumentCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11;

  *(v0 + v2 + 24), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + 48), v19, v20, v21, v22, v23, v24, v25;
  if (*(v0 + v2 + 72))
  {
    *(v4 + 64), v26, v27, v28, v29, v30, v31, v32;
    *(v4 + 72), v33, v34, v35, v36, v37, v38, v39;
    *(v4 + 80), v40, v41, v42, v43, v44, v45, v46;
    *(v4 + 88), v47, v48, v49, v50, v51, v52, v53;
    if (*(v4 + 96))
    {
      *(v4 + 104), v26, v27, v28, v29, v30, v31, v32;
    }
  }

  *(v4 + 112), v26, v27, v28, v29, v30, v31, v32;
  *(v4 + 128), v54, v55, v56, v57, v58, v59, v60;
  v61 = v4 + v1[11];
  v62 = sub_1BE04AA64();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v61, 1, v62))
  {
    (*(v63 + 8))(v61, v62);
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500, &unk_1BE0D1ED0);
  *(v61 + *(v64 + 28)), v65, v66, v67, v68, v69, v70, v71;

  *(v4 + v1[13]), v72, v73, v74, v75, v76, v77, v78;
  v79 = (v4 + v1[14]);
  v79[1], v80, v81, v82, v83, v84, v85, v86;
  v79[3], v87, v88, v89, v90, v91, v92, v93;
  v79[5], v94, v95, v96, v97, v98, v99, v100;
  *(v4 + v1[15] + 8), v101, v102, v103, v104, v105, v106, v107;
  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v108, v109, v110, v111, v112, v113, v114;

  return swift_deallocObject();
}

uint64_t sub_1BD06473C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44558, &qword_1BE0D2010);
  sub_1BD3BA60C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0647B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  return sub_1BD3BE268(v3 + v4, a2, v5);
}

uint64_t sub_1BD064814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0648D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD064998(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD064A54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42328, &unk_1BE0CD210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD064BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD3C0E70();
  *a1 = result;
  return result;
}

uint64_t sub_1BD064C30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0, &unk_1BE0D28C8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD064DC0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B0, &unk_1BE0D28C8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD064FBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD065078(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD065130()
{
  v1 = (type metadata accessor for BeneficiaryCell(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  *(v0 + v2 + 16), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + v2 + 56), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + v2 + 80), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v2 + 96), v24, v25, v26, v27, v28, v29, v30;
  v31 = v0 + v2 + v1[10];
  v32 = sub_1BE04FCC4();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v31, 1, v32))
  {
    (*(v33 + 8))(v31, v32);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
  *(v31 + *(v34 + 28)), v35, v36, v37, v38, v39, v40, v41;

  return swift_deallocObject();
}

uint64_t sub_1BD0652AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44C68, &qword_1BE0D2E60);
  sub_1BD0DE4F4(&qword_1EBD44C78, &qword_1EBD44C68, &qword_1BE0D2E60, MEMORY[0x1E697BF80]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD065380()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0653B8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0653F8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD065430()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD065478(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD065608(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD065798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE0493F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BE04AF64();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0658BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE0493F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BE04AF64();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0659E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD065B10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD065C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD065CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD065D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD065E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD065F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04A004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD06600C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04A004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0660C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BE04A474();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0661C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BE04A474();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0662C8()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD066310()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD066348(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD066388(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

id sub_1BD0663F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BD066458(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD3DE600(v1);
}

uint64_t sub_1BD0664F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1BD0665B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD3DD86C(v1);
}

uint64_t sub_1BD06663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0666F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD066840()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0668C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD066A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD066B3C()
{
  v1 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_1BD0D45CC(*(v8 + *(v1 + 20)), *(v8 + *(v1 + 20) + 8), *(v8 + *(v1 + 20) + 16), v9, v10, v11, v12, v13);
  v14 = (v8 + *(v1 + 24));
  v15 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v6 + 8))(v14, v5);
    }

    else
    {

      v14[2], v16, v17, v18, v19, v20, v21, v22;
    }
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v14 + *(v23 + 28)), v24, v25, v26, v27, v28, v29, v30;
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1BD066E50(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[13], v16, v17, v18, v19, v20, v21, v22;

  v8[16], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD066EA8()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD066F94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD06703C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD067074(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD0670AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD0670EC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BD0671A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0671DC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD067230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD067308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD0673D0()
{
  v1 = type metadata accessor for WebIconImage(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  *(v3 + *(v1 + 28) + 8), v6, v7, v8, v9, v10, v11, v12;
  sub_1BD0D4604(*(v3 + *(v1 + 32)), *(v3 + *(v1 + 32) + 8), v13, v14, v15, v16, v17, v18);

  return swift_deallocObject();
}

uint64_t sub_1BD067528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0675E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}