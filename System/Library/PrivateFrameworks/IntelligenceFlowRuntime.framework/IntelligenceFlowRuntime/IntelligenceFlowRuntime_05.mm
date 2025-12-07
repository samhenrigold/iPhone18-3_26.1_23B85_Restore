uint64_t sub_22BBD1194(uint64_t a1, uint64_t a2)
{
  sub_22BDB7764();
  sub_22BB30444();
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v6 = sub_22BDB7734();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB3ABC8();
  v10 = sub_22BDB5664();
  v11 = sub_22BB2F0C8(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB7754();
  sub_22BB30444();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BDB6124();
  sub_22BB35D70();
  sub_22BB388FC(a2, v14);
  v19 = sub_22BDB7744();
  sub_22BDB7774();
  v38 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v36 = v19;
    v37 = v8;

    sub_22BDB77B4();

    v20 = sub_22BB37074();
    if (v21(v20) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v23 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      v27 = sub_22BB37074();
      v28(v27);
      v39 = "[SessionCoordinator %{public}s] | End bringup.";
      v23 = 2;
      v22 = 1;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = v23;
    *(v29 + 1) = v22;
    *(v29 + 2) = 2082;
    v31 = sub_22BDB5624();
    v33 = v32;
    sub_22BB309AC();
    sub_22BB698E8();
    v34 = sub_22BB32EE0(v31, v33, &v40);

    *(v29 + 4) = v34;
    v35 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v36, v38, v35, "SessionBringup", v39, v29, 0xCu);
    sub_22BB32FA4(v30);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v37 + 8))(v3, v6);
    return (*(v17 + 8))(v2, v15);
  }

  else
  {

    (*(v8 + 8))(v3, v6);
    sub_22BB309AC();
    sub_22BB698E8();
    v24 = sub_22BB3AAD8();
    return v25(v24);
  }
}

uint64_t sub_22BBD1688(uint64_t a1)
{
  v17 = a1;
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SessionCoordinatorCommand(0);
  MEMORY[0x28223BE20](v19);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v16 - v8;
  v16[1] = *(*v1 + 176);
  v10 = (v7 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
  sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
  v11 = (type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22BDBCBD0;
  v14 = sub_22BDB82B4();
  (*(*(v14 - 8) + 16))(v5, v17, v14);
  (*(v3 + 104))(v5, *MEMORY[0x277D1E700], v2);
  sub_22BDB43D4();
  (*(v3 + 32))(v13 + v12 + v11[7], v5, v2);
  *v7 = v13;
  v7[1] = 0;
  v7[2] = 0xE000000000000000;
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  swift_storeEnumTagMultiPayload();
  *v10 = sub_22BB70024;
  v10[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v18 + 8))(v9, v20);
}

uint64_t sub_22BBD1A6C()
{
  sub_22BB34E84();
  sub_22BB35760();
  v0 = sub_22BDB5664();
  sub_22BB30434(v0);
  sub_22BBC3AC8();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB37AC0();

  return sub_22BBD1B68(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BBD1B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_22BDB52C4();
  v6[8] = swift_task_alloc();
  sub_22BDB5664();
  v6[9] = swift_task_alloc();
  v7 = sub_22BDB77D4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    swift_once();
  }

  v6[13] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB3B194(&unk_28142A918, type metadata accessor for SessionControlActor);

  v9 = sub_22BDBAE44();
  v6[14] = v9;
  v6[15] = v8;

  return MEMORY[0x2822009F8](sub_22BBD1D28, v9, v8);
}

uint64_t sub_22BBD1D28()
{
  sub_22BB2F35C();
  sub_22BB31B88();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {
    return sub_22BDBB4D4();
  }

  sub_22BB32A48(&unk_22BDCE300);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_22BBADFBC;

  return v5();
}

void sub_22BBD2110(uint64_t a1, void *a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_22BB956CC(a1, &v12 - v6);
  v8 = sub_22BDB43E4();
  v9 = 0;
  if (sub_22BB3AA28(v7, 1, v8) != 1)
  {
    v9 = sub_22BDB43A4();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  if (a2)
  {
    a2 = sub_22BDB4234();
  }

  v10 = sub_22BB32908();
  v11(v10);
}

uint64_t sub_22BBD2230()
{
  *(v0 + 1864) = v1;

  return swift_getErrorValue();
}

uint64_t sub_22BBD2268(uint64_t a1)
{

  return sub_22BB3AA28(v1, 1, a1);
}

uint64_t sub_22BBD22B0(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v2 = a2(0);
    sub_22BB2F330();
    v3 = sub_22BBBE718();
    v4(v3);
    v5 = sub_22BB72084();
    v8 = v2;
  }

  else
  {
    a2(0);
    sub_22BB384BC();
    sub_22BB30B28();
  }

  return sub_22BB336D0(v5, v6, v7, v8);
}

uint64_t sub_22BBD2364()
{
  sub_22BB2F0D4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_22BDB77D4();
  v1[14] = v3;
  sub_22BB30434(v3);
  v1[15] = v4;
  v1[16] = sub_22BB3307C();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_22BDB4B94();
  v1[19] = v5;
  sub_22BB30434(v5);
  v1[20] = v6;
  v1[21] = sub_22BB30ACC();
  v7 = sub_22BDB97A4();
  v1[22] = v7;
  sub_22BB30434(v7);
  v1[23] = v8;
  v1[24] = sub_22BB30ACC();
  v9 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  sub_22BB2F0C8(v9);
  v1[25] = sub_22BB30ACC();
  v10 = sub_22BDB9B14();
  v1[26] = v10;
  sub_22BB30434(v10);
  v1[27] = v11;
  v1[28] = sub_22BB30ACC();
  v12 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB2F0C8(v12);
  v1[29] = sub_22BB3307C();
  v1[30] = swift_task_alloc();
  v13 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v13);
  v1[31] = sub_22BB30ACC();
  v14 = sub_22BDB9774();
  v1[32] = v14;
  sub_22BB30434(v14);
  v1[33] = v15;
  v1[34] = sub_22BB30ACC();
  v16 = sub_22BDB9B54();
  v1[35] = v16;
  sub_22BB30434(v16);
  v1[36] = v17;
  v1[37] = sub_22BB3307C();
  v1[38] = swift_task_alloc();
  v18 = sub_22BDB7734();
  v1[39] = v18;
  sub_22BB30434(v18);
  v1[40] = v19;
  v1[41] = sub_22BB3307C();
  v1[42] = swift_task_alloc();
  v20 = sub_22BDB7754();
  v1[43] = v20;
  sub_22BB30434(v20);
  v1[44] = v21;
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v22 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22BBD26FC(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[44];
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v4 = (v3 + 8);
  v5 = sub_22BB2F3F0();
  v694 = v6;
  v6(v5);
  v7 = sub_22BDB7744();
  v8 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v9 = sub_22BB37F30();
    sub_22BB360F0(v9);
    v10 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v7, v8, v10, "StandardPlanner.run", "", v2, 2u);
    sub_22BB35600();
  }

  v11 = v1[42];
  v562 = v1[43];
  v595 = v1[46];
  v12 = v1[40];
  v13 = v1[39];
  v14 = v1[34];
  v15 = v1[33];
  v628 = v1[32];
  v661 = v1[35];
  v16 = v1[31];
  v528 = v1[12];

  v17 = sub_22BB3459C();
  v18(v17, v11, v13);
  v19 = sub_22BDB77A4();
  sub_22BB34ED4(v19);
  sub_22BB3A190();
  v1[47] = sub_22BDB7794();
  v21 = *(v12 + 8);
  v20 = v12 + 8;
  v21(v11, v13);
  v694(v595, v562);
  sub_22BDB96A4();
  v22 = sub_22BDB9744();
  v24 = *(v15 + 8);
  v23 = v15 + 8;
  v24(v14, v628);
  sub_22BB3090C();
  sub_22BBD22B0(v22, v25);

  sub_22BB31814(v16, 1, v661);
  if (v26)
  {
    sub_22BB58728(v1[31], &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BDB63D4();
    v27 = sub_22BDB77C4();
    v28 = sub_22BDBB114();
    if (sub_22BB333C0(v28))
    {
      v29 = sub_22BB37F30();
      sub_22BB360F0(v29);
      sub_22BB2F0A8(&dword_22BB2C000, v30, v31, "no events in the transcript");
      sub_22BB35600();
    }

    v32 = v1[19];
    v33 = v1[15];
    v34 = v1[14];

    v35 = v33 + 8;
    v36 = sub_22BB2F0E0();
    v37(v36);
    sub_22BBC788C();
    sub_22BB33E40();
    v40 = sub_22BB8C540(v38, 255, v39, &unk_22BDCDE18);
    v41 = sub_22BB37F10(v40);
    sub_22BB336D0(v42, 1, 6, v32);
    v694 = v41;
    swift_willThrow();
    goto LABEL_21;
  }

  v43 = v1[13];
  v44 = (*(v1[36] + 32))(v1[38], v1[31], v1[35]);
  if (*(v43 + 112))
  {
    sub_22BB72224(v44);
    sub_22BB72FA8(v16, v13);
    v45 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
    sub_22BB31814(v13, 1, v45);
    if (!v26)
    {
      v71 = v1[29];
      sub_22BC5E5C4();
      sub_22BB31F54();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v35 = v1[35];
          v221 = v1[36];
          v628 = v1[38];
          v661 = v1[30];
          v20 = v1[24];
          v222 = v1[21];
          v4 = v1[22];
          v224 = v1[19];
          v223 = v1[20];
          (*(v1[23] + 32))(v20, v1[29], v4);
          sub_22BDB9784();
          sub_22BDB9794();
          v225 = sub_22BDB4B84();
          v226 = *(v223 + 8);
          v34 = v223 + 8;
          v226(v222, v224);
          v694 = v225;
          swift_willThrow();
          v227 = sub_22BB35464();
          v228(v227);
          (*(v221 + 8))(v628, v35);
          v91 = v661;
          goto LABEL_20;
        case 2:
          v217 = sub_22BB6BE80();
          v71 = v1[30];
          (*(v218 + 8))(v217);
          goto LABEL_32;
        case 3:
        case 5:
          sub_22BB58728(v1[30], &qword_27D8E6320, &qword_22BDCDD00);
          swift_task_alloc();
          sub_22BB30B34();
          v1[50] = v73;
          *v73 = v74;
          sub_22BB2F26C(v73);
          goto LABEL_39;
        case 4:
          v358 = swift_task_alloc();
          v1[53] = v358;
          *v358 = v1;
          sub_22BB692F8(v358);
          sub_22BB374A0();

          return sub_22BD3B850();
        case 6:
          swift_task_alloc();
          sub_22BB30B34();
          v1[59] = v360;
          *v360 = v361;
          sub_22BB34128(v360);
LABEL_39:
          sub_22BB374A0();

          result = sub_22BD3DE98();
          break;
        case 7:
          sub_22BDB63D4();
          v45 = sub_22BDB77C4();
          v229 = sub_22BDBB0F4();
          if (sub_22BB333C0(v229))
          {
            v230 = sub_22BB37F30();
            sub_22BB360F0(v230);
            sub_22BB2F0A8(&dword_22BB2C000, v231, v232, "Received STOP request. Not doing work");
            sub_22BB35600();
          }

          sub_22BD42530();
          v23 += 8;
          v233 = sub_22BB32E04();
          v234(v233);
          v235 = sub_22BB2F0E0();
          v236(v235);
LABEL_32:
          sub_22BB58728(v71, &qword_27D8E6320, &qword_22BDCDD00);
          sub_22BB391D4();
          sub_22BBBD410();

          v23, v237, v238, v239, v240, v241, v242, v243, v363, v396, v429, v462, v495, v528, v562, v595, v628, v661, v694, v727, v760, v793, v826, v859, v892;
          v11, v244, v245, v246, v247, v248, v249, v250, v380, v413, v446, v479, v512, v546, v579, v612, v645, v678, v711, v744, v777, v810, v843, v876, v909;
          v45, v251, v252, v253, v254, v255, v256, v257, v381, v414, v447, v480, v513, v547, v580, v613, v646, v679, v712, v745, v778, v811, v844, v877, v910;
          v71, v258, v259, v260, v261, v262, v263, v264, v382, v415, v448, v481, v514, v548, v581, v614, v647, v680, v713, v746, v779, v812, v845, v878, v911;
          v16, v265, v266, v267, v268, v269, v270, v271, v383, v416, v449, v482, v515, v549, v582, v615, v648, v681, v714, v747, v780, v813, v846, v879, v912;
          v7, v272, v273, v274, v275, v276, v277, v278, v384, v417, v450, v483, v516, v550, v583, v616, v649, v682, v715, v748, v781, v814, v847, v880, v913;
          v14, v279, v280, v281, v282, v283, v284, v285, v385, v418, v451, v484, v517, v551, v584, v617, v650, v683, v716, v749, v782, v815, v848, v881, v914;
          v20, v286, v287, v288, v289, v290, v291, v292, v386, v419, v452, v485, v518, v552, v585, v618, v651, v684, v717, v750, v783, v816, v849, v882, v915;
          v453, v293, v294, v295, v296, v297, v298, v299, v387, v420, v453, v486, v519, v553, v586, v619, v652, v685, v718, v751, v784, v817, v850, v883, v916;
          v487, v300, v301, v302, v303, v304, v305, v306, v388, v421, v454, v487, v520, v554, v587, v620, v653, v686, v719, v752, v785, v818, v851, v884, v917;
          v521, v307, v308, v309, v310, v311, v312, v313, v389, v422, v455, v488, v521, v555, v588, v621, v654, v687, v720, v753, v786, v819, v852, v885, v918;
          v556, v314, v315, v316, v317, v318, v319, v320, v390, v423, v456, v489, v522, v556, v589, v622, v655, v688, v721, v754, v787, v820, v853, v886, v919;
          v590, v321, v322, v323, v324, v325, v326, v327, v391, v424, v457, v490, v523, v557, v590, v623, v656, v689, v722, v755, v788, v821, v854, v887, v920;
          v624, v328, v329, v330, v331, v332, v333, v334, v392, v425, v458, v491, v524, v558, v591, v624, v657, v690, v723, v756, v789, v822, v855, v888, v921;
          v658, v335, v336, v337, v338, v339, v340, v341, v393, v426, v459, v492, v525, v559, v592, v625, v658, v691, v724, v757, v790, v823, v856, v889, v922;
          v692, v342, v343, v344, v345, v346, v347, v348, v394, v427, v460, v493, v526, v560, v593, v626, v659, v692, v725, v758, v791, v824, v857, v890, v923;
          v726, v349, v350, v351, v352, v353, v354, v355, v395, v428, v461, v494, v527, v561, v594, v627, v660, v693, v726, v759, v792, v825, v858, v891, v924;
          sub_22BB39738();
          sub_22BB374A0();

          __asm { BRAA            X2, X16 }

          return result;
        default:
          sub_22BB898C8();
          v219 = swift_task_alloc();
          v1[56] = v219;
          *v219 = v1;
          sub_22BB3B3E0(v219);
          sub_22BB374A0();

          result = sub_22BD3BC4C();
          break;
      }

      return result;
    }

    sub_22BB3A8A8();
    v46 = sub_22BB31F54();
    v47(v46);
    v48 = sub_22BDB77C4();
    v49 = sub_22BDBB114();
    v50 = sub_22BB3805C(v49);
    v4 = v1[37];
    v51 = v1[35];
    if (v50)
    {
      v529 = sub_22BB315E4();
      v595 = sub_22BB314C8();
      v727 = v595;
      sub_22BB70C1C(v595, 4.8149e-34);
      sub_22BB3AFA0();
      sub_22BB8C540(v52, 255, v53, MEMORY[0x277D1E878]);
      v54 = sub_22BDBB684();
      v20 += 8;
      v55 = sub_22BB2F0E0();
      v56(v55);
      v57 = sub_22BB37364();
      v58(v57, v51);
      v59 = sub_22BB3CB04();
      sub_22BB32EE0(v59, v60, v61);
      sub_22BB3935C();

      *(v529 + 4) = v54;
      sub_22BB3FE04(&dword_22BB2C000, v62, v63, "unhandled event payload: %s", v64, v65, v66, v67, v363, v396, v429, v462, v495, v529, v562);
      sub_22BB32FA4(v595);
      sub_22BB30AF0();
      sub_22BB35600();

      (*(v628 + 8))(v694, v661);
    }

    else
    {

      v75 = sub_22BB37364();
      v76(v75, v51);
      v77 = sub_22BB2F3F0();
      v78(v77);
    }

    v34 = v1[35];
    v35 = v1[30];
    sub_22BBC788C();
    sub_22BB33E40();
    v81 = sub_22BB8C540(v79, 255, v80, &unk_22BDCDE18);
    v82 = sub_22BB37F10(v81);
    sub_22BB3961C(v82, v83, v84, v85, v86, v87, v88, v89, v363);
    v90 = sub_22BB33728();
    v4(v90);
    v91 = v35;
LABEL_20:
    sub_22BB58728(v91, &qword_27D8E6320, &qword_22BDCDD00);
LABEL_21:
    v92 = v1[46];
    v93 = v1[45];
    v95 = v1[41];
    v94 = v1[42];
    sub_22BB35C30();
    sub_22BBBD410();

    v92, v96, v97, v98, v99, v100, v101, v102, v363, v396, v429, v462, v495, v528, v562, v595, v628, v661, v694, v727, v760, v793, v826, v859, v892;
    v93, v103, v104, v105, v106, v107, v108, v109, v364, v397, v430, v463, v496, v530, v563, v596, v629, v662, v695, v728, v761, v794, v827, v860, v893;
    v94, v110, v111, v112, v113, v114, v115, v116, v365, v398, v431, v464, v497, v531, v564, v597, v630, v663, v696, v729, v762, v795, v828, v861, v894;
    v95, v117, v118, v119, v120, v121, v122, v123, v366, v399, v432, v465, v498, v532, v565, v598, v631, v664, v697, v730, v763, v796, v829, v862, v895;
    v34, v124, v125, v126, v127, v128, v129, v130, v367, v400, v433, v466, v499, v533, v566, v599, v632, v665, v698, v731, v764, v797, v830, v863, v896;
    v35, v131, v132, v133, v134, v135, v136, v137, v368, v401, v434, v467, v500, v534, v567, v600, v633, v666, v699, v732, v765, v798, v831, v864, v897;
    v20, v138, v139, v140, v141, v142, v143, v144, v369, v402, v435, v468, v501, v535, v568, v601, v634, v667, v700, v733, v766, v799, v832, v865, v898;
    v4, v145, v146, v147, v148, v149, v150, v151, v370, v403, v436, v469, v502, v536, v569, v602, v635, v668, v701, v734, v767, v800, v833, v866, v899;
    v404, v152, v153, v154, v155, v156, v157, v158, v371, v404, v437, v470, v503, v537, v570, v603, v636, v669, v702, v735, v768, v801, v834, v867, v900;
    v438, v159, v160, v161, v162, v163, v164, v165, v372, v405, v438, v471, v504, v538, v571, v604, v637, v670, v703, v736, v769, v802, v835, v868, v901;
    v472, v166, v167, v168, v169, v170, v171, v172, v373, v406, v439, v472, v505, v539, v572, v605, v638, v671, v704, v737, v770, v803, v836, v869, v902;
    v506, v173, v174, v175, v176, v177, v178, v179, v374, v407, v440, v473, v506, v540, v573, v606, v639, v672, v705, v738, v771, v804, v837, v870, v903;
    v541, v180, v181, v182, v183, v184, v185, v186, v375, v408, v441, v474, v507, v541, v574, v607, v640, v673, v706, v739, v772, v805, v838, v871, v904;
    v575, v187, v188, v189, v190, v191, v192, v193, v376, v409, v442, v475, v508, v542, v575, v608, v641, v674, v707, v740, v773, v806, v839, v872, v905;
    v609, v194, v195, v196, v197, v198, v199, v200, v377, v410, v443, v476, v509, v543, v576, v609, v642, v675, v708, v741, v774, v807, v840, v873, v906;
    v643, v201, v202, v203, v204, v205, v206, v207, v378, v411, v444, v477, v510, v544, v577, v610, v643, v676, v709, v742, v775, v808, v841, v874, v907;
    v677, v208, v209, v210, v211, v212, v213, v214, v379, v412, v445, v478, v511, v545, v578, v611, v644, v677, v710, v743, v776, v809, v842, v875, v908;
    sub_22BB31044();
    sub_22BB374A0();

    __asm { BRAA            X1, X16 }
  }

  v68 = swift_task_alloc();
  v1[48] = v68;
  *v68 = v1;
  v68[1] = sub_22BBBD69C;
  sub_22BB3487C(v1[12]);
  sub_22BB374A0();

  return sub_22BBD30EC();
}

uint64_t sub_22BBD30EC()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB77D4();
  v1[4] = v3;
  sub_22BB30434(v3);
  v1[5] = v4;
  v1[6] = sub_22BB30ACC();
  v5 = sub_22BDB7734();
  v1[7] = v5;
  sub_22BB30434(v5);
  v1[8] = v6;
  v1[9] = sub_22BB3307C();
  v1[10] = swift_task_alloc();
  v7 = sub_22BDB7754();
  v1[11] = v7;
  sub_22BB30434(v7);
  v1[12] = v8;
  v1[13] = sub_22BB3307C();
  v1[14] = swift_task_alloc();
  v9 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBD3240(uint64_t a1)
{
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v2 = sub_22BB2F3F0();
  v25 = v3;
  v3(v2);
  v4 = sub_22BDB7744();
  v5 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v6 = sub_22BB37F30();
    *v6 = 0;
    v7 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v4, v5, v7, "StandardPlanner.setup", "", v6, 2u);
    sub_22BB30AF0();
  }

  v8 = v1[10];
  v9 = v1[7];
  v10 = v1[3];
  v23 = v1[2];

  v11 = sub_22BB3459C();
  v12(v11, v8, v9);
  v13 = sub_22BDB77A4();
  sub_22BB34ED4(v13);
  sub_22BB3A190();
  v1[15] = sub_22BDB7794();
  v14 = sub_22BB35464();
  v15(v14);
  v16 = sub_22BB331D4();
  v25(v16);
  sub_22BB72F44();
  sub_22BB8C540(v17, v18, v19, &protocol conformance descriptor for StandardPlanner);
  v20 = swift_task_alloc();
  v1[16] = v20;
  *(v20 + 16) = v10;
  *(v20 + 24) = v23;
  v21 = swift_task_alloc();
  v1[17] = v21;
  *v21 = v1;
  v21[1] = sub_22BBBE180;

  return MEMORY[0x282200740](v21);
}

uint64_t sub_22BBD3498()
{
  sub_22BB2F35C();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22BBF90EC;

  return sub_22BBD3544(v5, v3, v7, v6);
}

uint64_t sub_22BBD3544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  v6 = sub_22BDB96E4();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBD3658, a3, 0);
}

uint64_t sub_22BBD3658()
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v1 = sub_22BBD3A7C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v31 = **(v0 + 112);
    v32 = *(v0 + 144);
    v4 = sub_22BDBAEF4();
    do
    {
      v34 = v2;
      v5 = *(v0 + 160);
      v6 = *(v0 + 128);
      v7 = *(v0 + 136);
      sub_22BB30B28();
      sub_22BB336D0(v8, v9, v10, v4);
      v33 = v3;
      sub_22BB690EC(v3, v0 + 16);
      (*(v32 + 16))(v5, v6, v7);
      v11 = v4;
      v12 = (*(v32 + 80) + 72) & ~*(v32 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_22BB382E8((v0 + 16), v13 + 32);
      v14 = v13 + v12;
      v4 = v11;
      (*(v32 + 32))(v14, v5, v7);
      sub_22BC5E5C4();
      v15 = sub_22BB3A190();
      v17 = sub_22BB3AA28(v15, v16, v11);
      v18 = *(v0 + 168);
      if (v17 == 1)
      {
        sub_22BB58728(*(v0 + 168), &qword_27D8E2978, &qword_22BDBD020);
      }

      else
      {
        sub_22BDBAEE4();
        (*(*(v11 - 8) + 8))(v18, v11);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_22BDBAE44();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      if (v21 | v19)
      {
        v22 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v19;
        *(v0 + 80) = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v0 + 176);
      *(v0 + 88) = 1;
      *(v0 + 96) = v22;
      *(v0 + 104) = v31;
      swift_task_create();

      sub_22BB58728(v23, &qword_27D8E2978, &qword_22BDBD020);
      v3 = v33 + 40;
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  sub_22BB72F44();
  *(v0 + 184) = sub_22BB8C540(v24, v25, v26, &protocol conformance descriptor for StandardPlanner);
  v27 = swift_task_alloc();
  *(v0 + 192) = v27;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  *v27 = v0;
  sub_22BB3A2C4();
  sub_22BB38C7C();

  return MEMORY[0x2822004D0](v28);
}

uint64_t sub_22BBD39BC()
{
  v1 = sub_22BDB96E4();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v0 + 32));
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBD3A7C()
{
  sub_22BBE6DE0(&qword_27D8E6360, &unk_22BDCDD70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22BDBD160;
  sub_22BB690EC(v0 + 280, v1 + 32);
  sub_22BB690EC(v0 + 320, v1 + 72);
  sub_22BB690EC(v0 + 360, v1 + 112);
  sub_22BB690EC(v0 + 400, v1 + 152);
  return v1;
}

uint64_t sub_22BBD3AFC()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = sub_22BDB96E4();
  sub_22BB2F0C8(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22BB3C48C;

  return sub_22BBD3BE4(v3, v7, v8, v0 + 32, v0 + v6);
}

uint64_t sub_22BBD3BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StandardPlanner();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22BBF90EC;

  return sub_22BBD3C94(a4, a5);
}

uint64_t sub_22BBD3C94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22BDB8334();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22BDB8134();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_22BDB77D4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_22BDB80E4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = sub_22BDB9774();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v8 = sub_22BDB82C4();
  v2[20] = v8;
  v2[21] = *(v8 - 8);
  v2[22] = swift_task_alloc();
  v9 = sub_22BDB43E4();
  v2[23] = v9;
  v2[24] = *(v9 - 8);
  v2[25] = swift_task_alloc();
  v10 = sub_22BDB7734();
  v2[26] = v10;
  v2[27] = *(v10 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v11 = sub_22BDB7754();
  v2[30] = v11;
  v2[31] = *(v11 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8A630, 0, 0);
}

void sub_22BBD40D4()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v61 = sub_22BDB6574();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v58 = v10 - v9;
  v57 = sub_22BDB77D4();
  sub_22BB30444();
  v56 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22BDBAA04();
  sub_22BB30444();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v21 = (v20 - v19);
  v22 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_encoder;
  v23 = sub_22BDB4164();
  sub_22BB34ED4(v23);
  *&v0[v22] = sub_22BDB4154();
  v24 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_decoder;
  v25 = sub_22BDB4134();
  sub_22BB34ED4(v25);
  *&v0[v24] = sub_22BDB4124();
  *v21 = 10;
  (*(v17 + 104))(v21, *MEMORY[0x277D85188], v15);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v26 = sub_22BDB6614();
  sub_22BB34ED4(v26);
  v27 = v3;
  v28 = sub_22BDB65F4();
  v29 = sub_22BDB64C4();
  sub_22BB34ED4(v29);
  *&v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_transaction] = sub_22BDB64D4();
  v30 = sub_22BDB6564();
  v31 = &v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier];
  *v31 = v30;
  v31[1] = v32;
  sub_22BDB7A44();

  sub_22BDB7A14();
  v33 = sub_22BDB7A24();
  MEMORY[0x2318A1A00](&v63, v33);
  *&v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_queryDecorationCollector] = sub_22BDB7A04();
  v34 = sub_22BDBABE4();
  v35 = [v3 valueForEntitlement_];

  if (v35)
  {
    sub_22BDBB274();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66[0] = v64;
  v66[1] = v65;
  v36 = v60;
  v37 = v61;
  v38 = v58;
  if (*(&v65 + 1))
  {
    if (swift_dynamicCast())
    {
      v39 = sub_22BDB4E54();
      v40 = &v1[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
      *v40 = v39;
      v40[1] = v41;
      goto LABEL_19;
    }

    v55 = v28;
  }

  else
  {
    v55 = v28;
    sub_22BB58780(v66, &qword_27D8E6D10, &unk_22BDBD9A0);
  }

  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v42 = v5;
  (*(v7 + 16))(v38, v5, v37);
  v43 = sub_22BDB77C4();
  v44 = sub_22BDBB134();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_22BB31AD8();
    v46 = sub_22BB314C8();
    *&v66[0] = v46;
    *v45 = 136315138;
    v47 = sub_22BDB6564();
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0x6E776F6E6B6E75;
    }

    v50 = v38;
    v51 = v27;
    if (v48)
    {
      v52 = v48;
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    (*(v7 + 8))(v50, v61);
    v53 = sub_22BB32EE0(v49, v52, v66);
    v27 = v51;

    *(v45 + 4) = v53;
    _os_log_impl(&dword_22BB2C000, v43, v44, "QueryDecorationXPCServiceServer: client %s is missing group-identifier entitlement, setting clientGroupIdentifier to nil.", v45, 0xCu);
    sub_22BB32FA4(v46);
    sub_22BB30AF0();
    v37 = v61;
    sub_22BB30AF0();

    (*(v56 + 8))(v60, v57);
  }

  else
  {

    (*(v7 + 8))(v38, v37);
    (*(v56 + 8))(v36, v57);
  }

  v54 = &v1[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  *v54 = 0;
  *(v54 + 1) = 0;
  v5 = v42;
LABEL_19:
  sub_22BDB6604();

  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, sel_init);

  (*(v7 + 8))(v5, v37);
  sub_22BB314EC();
}

uint64_t sub_22BBD46EC(char a1)
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BDB6384();
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB104();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v12 = sub_22BDBAC14();
    v14 = sub_22BB32EE0(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22BB2C000, v8, v9, "TaskStepLoggingSubscriber received completion: %s", v10, 0xCu);
    sub_22BB32FA4(v11);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_22BBD488C()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime25TaskStepLoggingSubscriber_id);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4900()
{
  sub_22BB6ECF4(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriber);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4974(char a1)
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BDB6384();
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB104();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v12 = sub_22BDBAC14();
    v14 = sub_22BB32EE0(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22BB2C000, v8, v9, "CurareFSServiceSubscriber received completion: %s", v10, 0xCu);
    sub_22BB32FA4(v11);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_22BBD4B30()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime25CurareFSServiceSubscriber_id);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4BD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22BDBB674();
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
        sub_22BDB8F04();
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BDB8F04() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_22BCD294C(v8, v9, a1, v4);
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
    return sub_22BCD25B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BBD4D00(uint64_t a1)
{
  v77 = sub_22BDB43E4();
  sub_22BB30444();
  v93 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  sub_22BB30B8C(v4);
  v101 = sub_22BDB5404();
  sub_22BB30444();
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v100 = v6;
  sub_22BB2F120();
  v92 = sub_22BDB90B4();
  sub_22BB30444();
  v82 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v91 = v9;
  sub_22BB2F120();
  v102 = sub_22BDB9B14();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v15 = v14 - v13;
  v16 = sub_22BDB87F4();
  sub_22BB30444();
  v79 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v99 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v72 - v21;
  v98 = _s20StatementResultEventVMa(0);
  sub_22BB30444();
  v75 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  v90 = v25;
  sub_22BB2F120();
  v26 = sub_22BDB9B54();
  sub_22BB30444();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  v32 = v31 - v30;
  v33 = *(a1 + 16);
  if (v33)
  {
    v36 = *(v28 + 16);
    v35 = v28 + 16;
    v34 = v36;
    sub_22BB2F390();
    v38 = a1 + v37;
    v39 = *(v35 + 56);
    v96 = v11 + 88;
    v97 = v39;
    v95 = *MEMORY[0x277D1E798];
    v94 = (v35 - 8);
    v85 = v11 + 96;
    v86 = v11 + 8;
    v40 = (v79 + 32);
    ++v82;
    v81 = v41 + 88;
    v80 = *MEMORY[0x277D1CBB0];
    v72[2] = v79 + 8;
    v72[1] = v93 + 32;
    v79 = v41 + 8;
    v93 = MEMORY[0x277D84F90];
    v73 = v16;
    v74 = v15;
    v88 = v35;
    v89 = v22;
    v87 = v36;
    v83 = v26;
    v84 = v40;
    v78 = v32;
    while (1)
    {
      v34(v32, v38, v26);
      sub_22BDB9B24();
      v42 = sub_22BB3919C();
      v44 = v43(v42);
      if (v44 == v95)
      {
        v45 = sub_22BB3919C();
        v46(v45);
        v47 = *v84;
        v48 = sub_22BB53C48();
        v47(v48);
        v49 = v91;
        sub_22BDB87E4();
        v50 = v100;
        sub_22BDB9094();
        (*v82)(v49, v92);
        sub_22BB30F88();
        v51(v50, v101);
        sub_22BB33FE8();
        if (v52)
        {
          v53 = v76;
          v32 = v78;
          sub_22BDB8F24();
          v26 = v83;
          (*v94)(v32, v83);
          v63 = v98;
          v54 = v89;
          (v47)(&v89[*(v98 + 20)], v99, v16);
          v22 = v54;
          v55 = sub_22BB355C8();
          v56(v55, v53, v77);
          v62 = 0;
        }

        else
        {
          sub_22BB30F88();
          v61(v99, v16);
          v32 = v78;
          v26 = v83;
          (*v94)(v78, v83);
          v62 = 1;
          v22 = v89;
          v63 = v98;
        }

        sub_22BB336D0(v22, v62, 1, v63);
        sub_22BB30F88();
        v64(v100, v101);
        v65 = sub_22BB3AA28(v22, 1, v63);
        v34 = v87;
        if (v65 != 1)
        {
          sub_22BB3A6B4();
          sub_22BCD404C(v22, v90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BD90298();
            v93 = v69;
          }

          v67 = *(v93 + 16);
          v66 = *(v93 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_22BB2F158(v66);
            sub_22BD90298();
            v93 = v70;
          }

          *(v93 + 16) = v67 + 1;
          sub_22BB2F390();
          sub_22BB3A6B4();
          sub_22BCD404C(v90, v68);
          v16 = v73;
          goto LABEL_15;
        }
      }

      else
      {
        v57 = sub_22BB35470();
        v58(v57);
        v59 = sub_22BB3919C();
        v60(v59);
        sub_22BB336D0(v22, 1, 1, v98);
      }

      sub_22BB58728(v22, &qword_27D8E3DE8, &unk_22BDC1220);
LABEL_15:
      v38 += v97;
      if (!--v33)
      {
        return v93;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22BBD544C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_22BD28118(0, v5, 0);
  v6 = v19;
  v8 = _s20StatementResultEventVMa(0);
  sub_22BB30434(v8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v12 = *(v11 + 72);
  while (1)
  {
    a1(&v18, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v18;
    v19 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_22BD28118(v14 > 1, v15 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v13;
    v10 += v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBD55A0(uint64_t a1)
{
  v2 = &qword_27D8E3E00;
  v3 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - v7;
  v8 = _s16CandidateSummaryVMa(0);
  result = MEMORY[0x28223BE20](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0;
  v53 = 0;
  v13 = 0;
  v46 = *(v14 + 80);
  v47 = v14;
  v54 = MEMORY[0x277D84F90];
  v49 = (v46 + 32) & ~v46;
  v51 = (MEMORY[0x277D84F90] + v49);
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        goto LABEL_5;
      }

      v15 = *(v12 + 16);
      if (v11 == v15)
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_41;
      }

      v48 = *(v47 + 72);
      sub_22BBCE8FC();
      sub_22BB336D0(v6, 0, 1, v8);
      v19 = v52;
      sub_22BCE1778();
      if (sub_22BB3AA28(v19, 1, v8) == 1)
      {
        goto LABEL_36;
      }

      result = sub_22BCE17CC();
      v20 = v53;
      if (v53)
      {
        v21 = v54;
        goto LABEL_33;
      }

      v22 = *(v54 + 24);
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_44;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      sub_22BBE6DE0(&qword_27D8E3E48, &unk_22BDC2FF0);
      v25 = v49;
      v53 = swift_allocObject();
      result = j__malloc_size(v53);
      v26 = v48;
      if (!v48)
      {
        goto LABEL_45;
      }

      v27 = result - v25;
      if (result - v25 == 0x8000000000000000 && v48 == -1)
      {
        goto LABEL_46;
      }

      v29 = v25;
      v30 = v27 / v48;
      v32 = v53;
      v31 = v54;
      *(v53 + 2) = v24;
      *(v32 + 3) = 2 * (v27 / v26);
      v33 = &v32[v29];
      v34 = *(v31 + 3);
      v35 = (v34 >> 1) * v26;
      if (*(v31 + 2))
      {
        if (v32 >= v31 && v33 < &v31[v29 + v35])
        {
          if (v32 != v31)
          {
            v51 = &v32[v29];
            v45 = v35;
            swift_arrayInitWithTakeBackToFront();
LABEL_30:
            v35 = v45;
            v33 = v51;
          }

          *(v54 + 16) = 0;
          goto LABEL_32;
        }

        v51 = &v32[v29];
        v45 = v35;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_30;
      }

LABEL_32:
      v51 = &v33[v35];

      v20 = ((v30 & 0x7FFFFFFFFFFFFFFFLL) - (v34 >> 1));
      v21 = v53;
LABEL_33:
      v37 = __OFSUB__(v20, 1);
      v38 = v20 - 1;
      if (v37)
      {
        goto LABEL_42;
      }

      v53 = v38;
      ++v11;
      v39 = v51;
      v40 = v2;
      v41 = v21;
      result = sub_22BCE17CC();
      v51 = &v39[v48];
      v54 = v41;
      v2 = v40;
    }

    sub_22BB336D0(v6, 1, 1, v8);
    result = sub_22BB58728(v6, v2, &qword_22BDC1248);
LABEL_5:
    v16 = *(a1 + 16);
    if (v13 == v16)
    {
      break;
    }

    if (v13 >= v16)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v17 = v13 + 1;
    v18 = *(a1 + 32 + 8 * v13);

    v11 = 0;
    v12 = v18;
    v13 = v17;
  }

  v19 = v52;
  sub_22BB336D0(v52, 1, 1, v8);
LABEL_36:

  sub_22BB58728(v19, &qword_27D8E3E00, &qword_22BDC1248);
  result = v54;
  v42 = *(v54 + 24);
  if (v42 < 2)
  {
    return result;
  }

  v43 = v42 >> 1;
  v37 = __OFSUB__(v43, v53);
  v44 = v43 - v53;
  if (!v37)
  {
    *(v54 + 16) = v44;
    return result;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_22BBD5A40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      sub_22BB314BC();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_22BDB7B44();
        sub_22BB314BC();
        if (*(v18 + 84) != a3)
        {
          *(v4 + a4[8]) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
          return;
        }

        v10 = v17;
        v14 = a4[7];
      }
    }

    v11 = v4 + v14;
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBD5BC4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      sub_22BB314BC();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_22BDB7B44();
        sub_22BB314BC();
        if (*(v16 + 84) != a2)
        {
          v18 = *(v3 + a3[8]);
          v19 = v18 & 0x3C | (v18 >> 6);
          v20 = v19 ^ 0x3F;
          v21 = 64 - v19;
          if (v20 >= 0x3D)
          {
            return 0;
          }

          else
          {
            return v21;
          }
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = v3 + v12;
  }

  return sub_22BB3AA28(v9, a2, v8);
}

void sub_22BBD5D64()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E3E48, &unk_22BDC2FF0);
  v8 = sub_22BB38F5C();
  _s16CandidateSummaryVMa(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD275AC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BBD5E2C()
{
  sub_22BB30F94();
  v2 = v1;
  v67 = v3;
  v78 = *MEMORY[0x277D85DE8];
  v73 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v7 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB319F8();
  v10 = type metadata accessor for FeedbackLearning.FlowExpression(v9);
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30560();
  v74 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v16);
  sub_22BB3FBEC();
  MEMORY[0x28223BE20](v17);
  sub_22BB2F39C();
  v68 = v18;
  sub_22BBD6508(v2);
  v20 = v19;
  v76 = sub_22BBD9554(v2);
  v75 = sub_22BBDAFE4(v2);
  v21 = *(v20 + 16);
  if (v21)
  {
    v70 = v10;
    *&v71 = v0;
    v77 = MEMORY[0x277D84F90];
    sub_22BD28358(0, v21, 0);
    v22 = v77;
    sub_22BB2F390();
    v69 = v20;
    v23 = v5;
    v25 = v20 + v24;
    v26 = *(v23 + 72);
    do
    {
      sub_22BB2F254();
      sub_22BD1FA4C();
      sub_22BD44B04();
      sub_22BD66840();
      v28 = v27;
      v29 = sub_22BB3A86C();
      sub_22BD215F8(v29, v28, v30);

      sub_22BD2EAAC();
      v77 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        v33 = sub_22BB2F158(v31);
        sub_22BD28358(v33, v32 + 1, 1);
        v22 = v77;
      }

      *(v22 + 16) = v32 + 1;
      sub_22BB2F390();
      sub_22BB529F8();
      sub_22BD2EB00();
      v25 += v26;
      --v21;
    }

    while (v21);

    v10 = v70;
    v0 = v71;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  sub_22BBDB6C8(v22, v0);
  if (sub_22BB3AA28(v0, 1, v10) == 1)
  {

    sub_22BB58728(v0, &qword_27D8E4348, &qword_22BDC2FA8);
  }

  else
  {
    sub_22BB529F8();
    sub_22BD2EB00();
    v66 = sub_22BCAE850(1, v22);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_22BBE6DE0(&qword_27D8E60B8, &qword_22BDCD600);
    inited = swift_initStackObject();
    v71 = xmmword_22BDBCBD0;
    *(inited + 16) = xmmword_22BDBCBD0;
    v41 = sub_22BBE6DE0(&qword_27D8E60C0, &qword_22BDCD608);
    v42 = *(v12 + 72);
    v69 = *(v12 + 80);
    v70 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v71;
    sub_22BB323D0();
    sub_22BD1FA4C();
    *(inited + 32) = v43;
    v44 = (v39 >> 1) - v37;
    if (v39 >> 1 != v37)
    {
      if ((v39 >> 1) <= v37)
      {
        goto LABEL_29;
      }

      v53 = v35 + v37 * v42;
      do
      {
        sub_22BB323D0();
        sub_22BD1FA4C();
        v54 = *(inited + 16);
        if (v54 && (v55 = *(inited + 32 + 8 * v54 - 8), *(v55 + 16)))
        {
          sub_22BB323D0();
          sub_22BD1FA4C();

          if (sub_22BDB4C04())
          {
            v56 = *(inited + 16);
            if (!v56)
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            *(inited + 16) = v56 - 1;

            v57 = swift_allocObject();
            *(v57 + 16) = v71;
            sub_22BB323D0();
            sub_22BD1FA4C();
            v77 = v55;
            sub_22BD66C34(v57);
            v59 = *(inited + 16);
            v58 = *(inited + 24);
            if (v59 >= v58 >> 1)
            {
              sub_22BB2F158(v58);
              sub_22BD90D94();
              inited = v64;
            }

            sub_22BD2EAAC();
            sub_22BD2EAAC();
            *(inited + 16) = v59 + 1;
            *(inited + 8 * v59 + 32) = v55;
          }

          else
          {

            v60 = swift_allocObject();
            *(v60 + 16) = v71;
            sub_22BB323D0();
            sub_22BD1FA4C();
            v62 = *(inited + 16);
            v61 = *(inited + 24);
            if (v62 >= v61 >> 1)
            {
              sub_22BB2F158(v61);
              sub_22BD90D94();
              inited = v63;
            }

            sub_22BD2EAAC();
            sub_22BB3ADA8();
            sub_22BD2EAAC();
            *(inited + 16) = v62 + 1;
            *(inited + 8 * v62 + 32) = v60;
          }
        }

        else
        {
          sub_22BB38E5C();
          sub_22BD2EAAC();
        }

        v53 += v42;
        --v44;
      }

      while (v44);
    }

    v45 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v45);
    v47 = v75;
    v46 = v76;
    *(&v65 - 4) = v67;
    *(&v65 - 3) = v46;
    *(&v65 - 2) = v47;
    sub_22BCA8B0C(sub_22BD2F67C, (&v65 - 6), inited, v48, v49, v50, v51, v52, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75);

    sub_22BB38E5C();
    sub_22BD2EAAC();
  }

  sub_22BB314EC();
}

void sub_22BBD6508(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v7;
  v91 = sub_22BDB4C34();
  v8 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22BDB8F04();
  v65 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22BDB9954();
  v64 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22BDB9B14();
  *&v62 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v14 = *(v86 - 8);
  v15 = MEMORY[0x28223BE20](v86);
  v85 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = (&v60 - v18);
  MEMORY[0x28223BE20](v17);
  v84 = (&v60 - v19);
  v20 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v82 = *(v20 - 8);
  v83 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = sub_22BDB9B54();
  v88 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22BBD7224(a1);
  v27 = *(v26 + 16);
  v28 = MEMORY[0x277D84F90];
  v73 = v10;
  v89 = v23;
  v90 = v25;
  v74 = v26;
  v66 = v8;
  if (v27)
  {
    v29 = v26;
    v61 = a1;
    v94 = MEMORY[0x277D84F90];
    sub_22BD28318(0, v27, 0);
    v28 = v94;
    v30 = v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v79 = v8 + 1;
    v80 = (v8 + 2);
    v78 = *(v14 + 72);
    do
    {
      v93 = v27;
      sub_22BC5E5C4();
      v92 = *(v83 + 48);
      v31 = v81;
      sub_22BC5E5C4();
      v32 = v91;
      (*v80)(v22, v31 + *(v86 + 48), v91);
      sub_22BD2EAAC();
      v33 = v85;
      sub_22BC8D26C();
      sub_22BD2EB00();
      v34 = *v79;
      (*v79)(v33, v32);
      v34(v31, v32);
      v94 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BD28318(v35 > 1, v36 + 1, 1);
        v28 = v94;
      }

      *(v28 + 16) = v36 + 1;
      sub_22BC8D26C();
      v30 += v78;
      v27 = v93 - 1;
    }

    while (v93 != 1);
    v23 = v89;
    v25 = v90;
    a1 = v61;
  }

  v80 = sub_22BBD93F4(v28);
  v37 = *(a1 + 16);
  v38 = v87;
  if (v37)
  {
    v93 = *(v88 + 16);
    v39 = a1 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v85 = *(v88 + 72);
    v40 = (v62 + 88);
    LODWORD(v92) = *MEMORY[0x277D1E6F8];
    LODWORD(v83) = *MEMORY[0x277D1E830];
    v88 += 16;
    v86 = v88 - 8;
    v79 = (v62 + 8);
    v84 = (v62 + 96);
    v78 = (v65 + 4);
    ++v66;
    ++v65;
    v82 = (v64 + 4);
    v41 = MEMORY[0x277D84F90];
    v81 = (v64 + 1);
    v62 = xmmword_22BDBCBD0;
    v64 = v40;
    while (1)
    {
      v93(v25, v39, v23);
      sub_22BDB9B24();
      v42 = v77;
      v43 = (*v40)(v38, v77);
      if (v43 == v92)
      {
        (*v84)(v38, v42);
        v44 = v23;
        v45 = v69;
        v46 = v70;
        (*v82)(v69, v38, v70);
        v47 = sub_22BD2329C(v45, v74);
        (*v81)(v45, v46);
        v48 = v44;
        v25 = v90;
        (*v86)(v90, v48);
      }

      else if (v43 == v83)
      {
        (*v84)(v38, v42);
        (*v78)(v71, v38, v72);
        sub_22BDB8174();
        if (*(v80 + 16))
        {
          sub_22BBDAE68();
          if (v49)
          {
            sub_22BD1FA4C();
            v50 = 0;
          }

          else
          {
            v50 = 1;
          }

          v51 = v67;
        }

        else
        {
          v50 = 1;
          v51 = v67;
        }

        v52 = v68;
        v53 = v76;
        sub_22BB336D0(v68, v50, 1, v76);
        sub_22BC5E5C4();
        if (sub_22BB3AA28(v51, 1, v53) == 1)
        {
          sub_22BB58728(v52, &qword_27D8E60E8, &qword_22BDCD640);
          (*v66)(v73, v91);
          (*v65)(v71, v72);
          v25 = v90;
          (*v86)(v90, v23);
          v47 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_22BD2EB00();
          sub_22BBE6DE0(&qword_27D8E60A0, &unk_22BDD0410);
          v47 = swift_allocObject();
          *(v47 + 16) = v62;
          sub_22BD2EB00();
          sub_22BB58728(v52, &qword_27D8E60E8, &qword_22BDCD640);
          (*v66)(v73, v91);
          (*v65)(v71, v72);
          v25 = v90;
          (*v86)(v90, v89);
        }

        v40 = v64;
      }

      else
      {
        (*v86)(v25, v23);
        (*v79)(v38, v42);
        v47 = MEMORY[0x277D84F90];
      }

      v54 = *(v47 + 16);
      v55 = *(v41 + 16);
      if (__OFADD__(v55, v54))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v55 + v54 > *(v41 + 24) >> 1)
      {
        sub_22BBD948C();
        v41 = v56;
      }

      v38 = v87;
      v23 = v89;
      if (*(v47 + 16))
      {
        if ((*(v41 + 24) >> 1) - *(v41 + 16) < v54)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v54)
        {
          v57 = *(v41 + 16);
          v58 = __OFADD__(v57, v54);
          v59 = v57 + v54;
          if (v58)
          {
            goto LABEL_38;
          }

          *(v41 + 16) = v59;
        }
      }

      else
      {

        if (v54)
        {
          goto LABEL_36;
        }
      }

      v39 += v85;
      if (!--v37)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t sub_22BBD7224(uint64_t a1)
{
  v135 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  MEMORY[0x28223BE20](v135);
  v134 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_22BDB43E4();
  v133 = *(v174 - 8);
  v3 = MEMORY[0x28223BE20](v174);
  v141 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v140 = &v132 - v5;
  v6 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v139 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v138 = &v132 - v9;
  v157 = sub_22BDB8F04();
  v132 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E6160, &qword_22BDCD6C0);
  MEMORY[0x28223BE20](v11 - 8);
  v148 = &v132 - v12;
  v149 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v155 = &v132 - v13;
  v183 = sub_22BDB80F4();
  v185 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v15 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22BDB4C34();
  v16 = *(v187 - 8);
  v17 = MEMORY[0x28223BE20](v187);
  v137 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v173 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v132 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v132 - v24;
  v145 = sub_22BDB89F4();
  v26 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_22BDB9954();
  v28 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22BDB9B14();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v147 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v162 = &v132 - v34;
  v35 = sub_22BDB9B54();
  v36 = MEMORY[0x28223BE20](v35);
  v166 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v171 = &v132 - v39;
  v189 = MEMORY[0x277D84FA0];
  v190 = MEMORY[0x277D84FA0];
  v40 = *(a1 + 16);
  v168 = v41 + 16;
  v167 = (v31 + 88);
  LODWORD(v161) = *MEMORY[0x277D1E6F8];
  v159 = (v31 + 8);
  v158 = (v31 + 96);
  v42 = v38;
  *&v152 = v28 + 32;
  v172 = v16;
  v43 = (v16 + 8);
  v44 = v41;
  v186 = v43;
  v180 = (v185 + 88);
  v181 = v26 + 16;
  LODWORD(v179) = *MEMORY[0x277D1DAD0];
  LODWORD(v178) = *MEMORY[0x277D1DA48];
  v144 = v26;
  v177 = (v26 + 8);
  v176 = *MEMORY[0x277D1DAE8];
  v175 = (v185 + 8);
  v151 = (v28 + 8);
  v169 = (v41 + 8);
  v136 = 0;
  v45 = 0;
  v46 = v40;
  v150 = a1;
  v188 = v25;
  v153 = v30;
  v160 = v38;
  v165 = v40;
  v182 = v15;
  v142 = v41;
  while (v45 != v46)
  {
    v47 = a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v48 = *(v44 + 72);
    v170 = v45;
    (*(v44 + 16))(v171, v47 + v48 * v45, v42);
    v49 = v162;
    sub_22BDB9B24();
    v50 = (*v167)(v49, v30);
    if (v50 == v161)
    {
      (*v158)(v49, v30);
      (*v152)(v163, v49, v164);
      v51 = sub_22BDB9914();
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v154 = v51;
        v54 = v51 + v53;
        v55 = *(v144 + 72);
        v184 = *(v144 + 16);
        v185 = v55;
        v56 = v145;
        v57 = v143;
        do
        {
          (v184)(v57, v54, v56);
          sub_22BDB8174();
          sub_22BBB97EC();
          v58 = *v186;
          v59 = v25;
          v60 = v187;
          (*v186)(v59, v187);
          v61 = v23;
          v62 = v182;
          sub_22BDB89D4();
          v63 = v183;
          v64 = (*v180)(v62, v183);
          if (v64 == v179 || v64 == v178 || v64 == v176)
          {
            (*v175)(v62, v63);
            sub_22BDB8174();
            v67 = v188;
            sub_22BBB97EC();
            v58(v67, v60);
            (*v177)(v57, v56);
          }

          else
          {
            (*v177)(v57, v56);
            (*v175)(v62, v63);
          }

          v23 = v61;
          v54 += v185;
          --v52;
          v25 = v188;
        }

        while (v52);

        a1 = v150;
        v30 = v153;
        v42 = v160;
        v46 = v165;
        v44 = v142;
      }

      else
      {
      }

      (*v151)(v163, v164);
    }

    else
    {
      (*v159)(v49, v30);
    }

    v45 = v170 + 1;
    (*v169)(v171, v42);
  }

  v175 = v189;
  v68 = v46;
  v69 = v149;
  v185 = v190;
  if (v68)
  {
    v70 = 0;
    v71 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v179 = a1 + v71;
    v171 = (v132 + 32);
    v72 = *(v44 + 72);
    v182 = (v190 + 56);
    v183 = v172 + 16;
    v177 = *(v44 + 16);
    v170 = (v132 + 8);
    v73 = (v133 + 8);
    v176 = *MEMORY[0x277D1E830];
    v162 = (v172 + 32);
    v164 = a1 + v71 + v72 * (v68 - 1);
    v178 = v72;
    v184 = -v72;
    v181 = MEMORY[0x277D84F90];
    v163 = ((v133 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v152 = xmmword_22BDBCBD0;
    v74 = v141;
    v75 = v140;
    v76 = v148;
    v77 = v147;
    v78 = v166;
    do
    {
      (v177)(v78, v179 + v178 * v70, v42);
      sub_22BDB9B24();
      v79 = (*v167)(v77, v30);
      if (v79 == v176)
      {
        (*v158)(v77, v30);
        (*v171)(v156, v77, v157);
        v80 = v173;
        sub_22BDB8174();
        v81 = v185;
        v82 = *(v185 + 16);
        v180 = v70;
        if (v82)
        {
          sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
          v83 = sub_22BDBABA4();
          v84 = ~(-1 << *(v81 + 32));
          while (1)
          {
            v85 = v83 & v84;
            if (((*&v182[((v83 & v84) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v83 & v84)) & 1) == 0)
            {
              break;
            }

            v86 = v172;
            v88 = v187;
            v87 = v188;
            (*(v172 + 16))(v188, *(v185 + 48) + *(v172 + 72) * v85, v187);
            sub_22BBB9968(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
            v89 = sub_22BDBABD4();
            v90 = *(v86 + 8);
            v90(v87, v88);
            v83 = v85 + 1;
            if (v89)
            {
              v90(v173, v187);
              (*v170)(v156, v157);
              v42 = v160;
              (*v169)(v166, v160);
              v76 = v148;
              v69 = v149;
              sub_22BB336D0(v148, 1, 1, v149);
              v30 = v153;
              v77 = v147;
              v70 = v180;
              goto LABEL_41;
            }
          }

          v91 = v187;
          v80 = v173;
          v30 = v153;
          v77 = v147;
          v70 = v180;
        }

        else
        {
          v91 = v187;
        }

        (*v186)(v80, v91);
        sub_22BDB8F24();

        v92 = v164;
        v93 = v165;
        while (v93)
        {
          --v93;
          sub_22BDB8F24();
          v94 = sub_22BDB43B4();
          v95 = *v73;
          (*v73)(v74, v174);
          v92 += v184;
          if (v94)
          {
            sub_22BB8EC88(0, v93, v150);
            v97 = v96;
            v99 = v98;
            v101 = v100;
            v103 = v102;
            v104 = v175;

            v105 = v101;
            v75 = v140;
            v106 = v136;
            v107 = sub_22BD1CBF4(v97, v99, v105, v103, v104);
            v136 = v106;
            v74 = v141;
            swift_unknownObjectRelease();
            sub_22BC7420C(v107, v139);
            v70 = v180;

            v108 = v187;
            goto LABEL_37;
          }
        }

        v108 = v187;
        sub_22BB336D0(v139, 1, 1, v187);
        v95 = *v73;
LABEL_37:
        v95(v75, v174);
        v109 = v138;
        sub_22BC8D26C();
        if (sub_22BB3AA28(v109, 1, v108) == 1)
        {
          (*v170)(v156, v157);
          v110 = v160;
          (*v169)(v166, v160);
          v111 = v109;
          v42 = v110;
          sub_22BB58728(v111, &qword_27D8E27C0, &qword_22BDBCDF0);
          v76 = v148;
          v112 = v148;
          v113 = 1;
          v69 = v149;
        }

        else
        {
          v114 = v172;
          v161 = *(v172 + 32);
          v115 = v137;
          v161(v137, v109, v108);
          v116 = v135;
          v154 = *(v135 + 20);
          v117 = v134;
          v118 = v156;
          sub_22BDB8174();
          v119 = *(v116 + 24);
          sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
          v120 = v108;
          v121 = (*(v114 + 80) + 32) & ~*(v114 + 80);
          v122 = swift_allocObject();
          *(v122 + 16) = v152;
          v123 = *(v114 + 16);
          v123(v122 + v121, v115, v120);
          (*v170)(v118, v157);
          v124 = v160;
          (*v169)(v166, v160);
          *&v117[v119] = v122;
          type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
          swift_storeEnumTagMultiPayload();
          v123(v117, &v117[v154], v120);
          v75 = v140;
          v69 = v149;
          v76 = v148;
          v125 = v120;
          v70 = v180;
          v161(v148, v137, v125);
          v74 = v141;
          v42 = v124;
          v77 = v147;
          sub_22BD2EB00();
          v112 = v76;
          v113 = 0;
        }

        sub_22BB336D0(v112, v113, 1, v69);
      }

      else
      {
        (*v169)(v78, v42);
        sub_22BB336D0(v76, 1, 1, v69);
        (*v159)(v77, v30);
      }

LABEL_41:
      if (sub_22BB3AA28(v76, 1, v69) == 1)
      {
        sub_22BB58728(v76, &qword_27D8E6160, &qword_22BDCD6C0);
      }

      else
      {
        sub_22BC8D26C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD90C00();
          v181 = v127;
        }

        v126 = *(v181 + 16);
        if (v126 >= *(v181 + 24) >> 1)
        {
          sub_22BD90C00();
          v181 = v128;
        }

        *(v181 + 16) = v126 + 1;
        sub_22BC8D26C();
        v42 = v160;
      }

      v70 = (v70 + 1);
      v78 = v166;
    }

    while (v70 != v165);
  }

  else
  {
    v181 = MEMORY[0x277D84F90];
  }

  sub_22BBD8DCC();
  v130 = v129;

  return v130;
}

uint64_t sub_22BBD8928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = sub_22BDB7764();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5664();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB7754();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB388FC(a2, v12);
  v17 = sub_22BDB7744();
  sub_22BDB7774();
  v44 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v38 = v16;
    v39 = v17;
    v40 = v14;
    v41 = v7;

    v18 = v43;
    sub_22BDB77B4();

    v20 = v45;
    v19 = v46;
    v21 = (*(v45 + 88))(v18, v46);
    v22 = *MEMORY[0x277D85B00];
    v42 = v6;
    if (v21 == v22)
    {
      v23 = 0;
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v18, v19);
      v24 = "[SessionCoordinator %s] | [TX %s] Finished notifying FeatureStore about session end.";
      v23 = 2;
    }

    v26 = v13;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v49 = v28;
    *v27 = v23;
    *(v27 + 1) = v23;
    *(v27 + 2) = 2080;
    v29 = sub_22BDB5624();
    v31 = v30;
    sub_22BB698E8();
    v32 = sub_22BB32EE0(v29, v31, &v49);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v48 = v47;
    sub_22BB70194();
    v33 = sub_22BDBB684();
    v35 = sub_22BB32EE0(v33, v34, &v49);

    *(v27 + 14) = v35;
    v36 = sub_22BDB7714();
    v37 = v39;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v39, v44, v36, "FSWait", v24, v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v28, -1, -1);
    MEMORY[0x2318A6080](v27, -1, -1);

    (*(v41 + 8))(v9, v42);
    return (*(v40 + 8))(v38, v26);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_22BB698E8();
    return (*(v14 + 8))(v16, v13);
  }
}

void sub_22BBD8DCC()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB89D4C();
  sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3B818();
  if (v1)
  {
    v7 = sub_22BBDB908();
    sub_22BD282D8(v7, v8, v9);
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E60F8, &qword_22BDCD650);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v10)
      {
        sub_22BB95BB8();
        sub_22BD282D8(v13, v14, v15);
      }

      v11 = sub_22BB38E98();
      sub_22BBDB5D0(v11, v12, &qword_27D8E60F0, &qword_22BDCD648);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBD8F58(uint64_t a1, char a2, void *a3)
{
  v52 = a3;
  v5 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v48 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = sub_22BDB4C34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v14 = MEMORY[0x28223BE20](v13);
  v49 = &v39 - v16;
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v17 = 0;
  v46 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v44 = v15;
  v45 = v18;
  v50 = (v11 + 32);
  v41 = v11;
  v40 = (v11 + 8);
  v43 = a1;
  while (v17 < *(a1 + 16))
  {
    v19 = v49;
    sub_22BC5E5C4();
    v20 = *v50;
    v21 = v10;
    (*v50)(v51, v19, v10);
    v22 = v9;
    sub_22BD2EB00();
    v23 = *v52;
    sub_22BBDAE68();
    v26 = v25;
    v27 = v23[2];
    v28 = (v24 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = v24;
    if (v23[3] >= v27 + v28)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6150, &unk_22BDCD6B0);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5C5AC();
      sub_22BBDAE68();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_20;
      }

      v26 = v30;
    }

    v32 = *v52;
    if (v29)
    {
      v33 = *(v48 + 72) * v26;
      v34 = v42;
      sub_22BD1FA4C();
      v9 = v22;
      sub_22BD2EAAC();
      v10 = v21;
      (*v40)(v51, v21);
      sub_22BD2F6BC(v34, v32[7] + v33);
    }

    else
    {
      v32[(v26 >> 6) + 8] |= 1 << v26;
      v10 = v21;
      v20((v32[6] + *(v41 + 72) * v26), v51, v21);
      v9 = v22;
      sub_22BD2EB00();
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v32[2] = v37;
    }

    ++v17;
    a2 = 1;
    a1 = v43;
    if (v47 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBD93F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6148, &qword_22BDCD6A8);
    v3 = sub_22BDBB524();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22BBD8F58(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_22BBD948C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E60A0, &unk_22BDD0410);
  v8 = sub_22BB38F5C();
  type metadata accessor for FeedbackLearning.FlowExpressionValue(v8);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v10 = sub_22BB32D98(v9);
    sub_22BD277A4(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void *sub_22BBD9554(uint64_t a1)
{
  v53 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = v45 - v2;
  v3 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v45 - v4;
  v56 = sub_22BDB4C34();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v9 = MEMORY[0x28223BE20](v8);
  v52 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - v11;
  v13 = 0;
  v14 = a1;
  v15 = *(a1 + 16);
  v51 = (v6 + 32);
  v45[1] = v6 + 16;
  v46 = v6;
  v49 = (v6 + 8);
  for (i = MEMORY[0x277D84F98]; ; i = v30)
  {
    while (1)
    {
      if (v15 == v13)
      {
        return i;
      }

      v17 = sub_22BDB9B54();
      v18 = *(v17 - 8);
      v19 = v18;
      v20 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v18 + 72) * v13;
      v21 = *(v8 + 48);
      *v12 = v13;
      (*(v18 + 16))(&v12[v21], v20, v17);
      sub_22BBD9B04(v5);
      if (sub_22BB3AA28(v5, 1, v56) != 1)
      {
        break;
      }

      sub_22BB58728(v12, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v5, &qword_27D8E27C0, &qword_22BDBCDF0);
      ++v13;
    }

    (*v51)(v55, v5, v56);
    v22 = v52;
    sub_22BC5E5C4();
    v23 = *(v8 + 48);
    v24 = v54;
    v25 = *(v53 + 48);
    *v54 = *v22;
    (*(v19 + 32))(&v24[v25], &v22[v23], v17);
    swift_isUniquelyReferenced_nonNull_native();
    v57 = i;
    sub_22BBDAE68();
    if (__OFADD__(i[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    LODWORD(v48) = v27;
    sub_22BBE6DE0(&qword_27D8E60E0, &unk_22BDCD630);
    v29 = sub_22BDBB4A4();
    v30 = v57;
    if (v29)
    {
      sub_22BBDAE68();
      if ((v48 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v33 = v31;
      if (v48)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v33 = v28;
      if (v48)
      {
        goto LABEL_13;
      }
    }

    v30[(v33 >> 6) + 8] |= 1 << v33;
    (*(v46 + 16))(v30[6] + *(v46 + 72) * v33, v55, v56);
    *(v30[7] + 8 * v33) = MEMORY[0x277D84F90];
    v34 = v30[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    v30[2] = v36;
LABEL_13:
    v37 = v30[7];
    v38 = *(v37 + 8 * v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 8 * v33) = v38;
    v48 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BBDAF18();
      v38 = v42;
      *(v37 + 8 * v33) = v42;
    }

    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    v47 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      sub_22BBDAF18();
      *(v37 + 8 * v48) = v43;
    }

    ++v13;
    (*v49)(v55, v56);
    sub_22BB58728(v12, &qword_27D8E42E0, &unk_22BDD03F0);
    *(*(v37 + 8 * v48) + 16) = v47;
    sub_22BC8D26C();
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBD9B04@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v77 = sub_22BDB8494();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22BDB8EB4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22BDB9014();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22BDB8F44();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22BDB88E4();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22BDB8674();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22BDB8D84();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22BDB8DB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22BDB87F4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5264();
  v106 = *(v10 - 8);
  v107 = v10;
  MEMORY[0x28223BE20](v10);
  v105 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB8F04();
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x28223BE20](v12);
  v108 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB81A4();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x28223BE20](v14);
  v111 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB8C14();
  v115 = *(v16 - 8);
  v116 = v16;
  MEMORY[0x28223BE20](v16);
  v114 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB9564();
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v118 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BDB8634();
  v123 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v98 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - v23;
  v25 = sub_22BDB8624();
  v121 = *(v25 - 8);
  v122 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v93 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v117 = &v74 - v28;
  v29 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v97 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - v32;
  v34 = sub_22BDB9624();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22BDB9B14();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v42 = (*(v39 + 88))(v41, v38);
  if (v42 == *MEMORY[0x277D1E858])
  {
    (*(v39 + 96))(v41, v38);
    (*(v35 + 32))(v37, v41, v34);
    sub_22BDB8DA4();
    v43 = v123;
    if ((*(v123 + 88))(v24, v20) == *MEMORY[0x277D1DD78])
    {
      (*(v43 + 96))(v24, v20);
      v45 = v121;
      v44 = v122;
      v46 = v117;
      (*(v121 + 32))(v117, v24, v122);
      sub_22BDB8604();
      (*(v45 + 8))(v46, v44);
      (*(v35 + 8))(v37, v34);
      v47 = 0;
    }

    else
    {
      (*(v35 + 8))(v37, v34);
      (*(v43 + 8))(v24, v20);
      v47 = 1;
    }

    v55 = sub_22BDB4C34();
    sub_22BB336D0(v33, v47, 1, v55);
    return sub_22BC8D26C();
  }

  v48 = v123;
  if (v42 == *MEMORY[0x277D1E710])
  {
    (*(v39 + 96))(v41, v38);
    v49 = v118;
    v50 = v119;
    v51 = v120;
    (*(v119 + 32))(v118, v41, v120);
    v52 = v124;
    sub_22BDB8174();
LABEL_6:
    (*(v50 + 8))(v49, v51);
    v53 = sub_22BDB4C34();
    return sub_22BB336D0(v52, 0, 1, v53);
  }

  if (v42 == *MEMORY[0x277D1E728])
  {
    (*(v39 + 96))(v41, v38);
    v56 = v114;
    v57 = v115;
    v58 = v41;
    v59 = v116;
    (*(v115 + 32))(v114, v58, v116);
    sub_22BDB8C04();
    return (*(v57 + 8))(v56, v59);
  }

  if (v42 == *MEMORY[0x277D1E7A0])
  {
    (*(v39 + 96))(v41, v38);
    v49 = v111;
    v50 = v112;
    v51 = v113;
    (*(v112 + 32))(v111, v41, v113);
    v52 = v124;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E830])
  {
    (*(v39 + 96))(v41, v38);
    v49 = v108;
    v50 = v109;
    v51 = v110;
    (*(v109 + 32))(v108, v41, v110);
    v52 = v124;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E820])
  {
    (*(v39 + 96))(v41, v38);
    v56 = v105;
    v57 = v106;
    v60 = v41;
    v59 = v107;
    (*(v106 + 32))(v105, v60, v107);
    sub_22BD271CC(v124);
    return (*(v57 + 8))(v56, v59);
  }

  if (v42 == *MEMORY[0x277D1E798])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v103;
    v49 = v102;
    v51 = v104;
    (*(v103 + 32))(v102, v41, v104);
    v52 = v124;
    sub_22BDB8794();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E7C8])
  {
    v61 = v20;
    (*(v39 + 96))(v41, v38);
    v62 = v100;
    v63 = v99;
    v64 = v41;
    v65 = v101;
    (*(v100 + 32))(v99, v64, v101);
    v66 = v98;
    sub_22BDB8DA4();
    if ((*(v48 + 88))(v66, v61) == *MEMORY[0x277D1DD78])
    {
      (*(v48 + 96))(v66, v61);
      v68 = v121;
      v67 = v122;
      v69 = v93;
      (*(v121 + 32))(v93, v66, v122);
      v70 = v97;
      sub_22BDB8604();
      (*(v68 + 8))(v69, v67);
      (*(v62 + 8))(v63, v65);
      v71 = 0;
    }

    else
    {
      (*(v62 + 8))(v63, v65);
      (*(v48 + 8))(v66, v61);
      v71 = 1;
      v70 = v97;
    }

    v72 = sub_22BDB4C34();
    sub_22BB336D0(v70, v71, 1, v72);
    return sub_22BC8D26C();
  }

  if (v42 == *MEMORY[0x277D1E7C0])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v95;
    v49 = v94;
    v51 = v96;
    (*(v95 + 32))(v94, v41, v96);
    v52 = v124;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E738])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v91;
    v49 = v90;
    v51 = v92;
    (*(v91 + 32))(v90, v41, v92);
    v52 = v124;
    sub_22BDB8654();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E750])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v88;
    v49 = v87;
    v51 = v89;
    (*(v88 + 32))(v87, v41, v89);
    v52 = v124;
    sub_22BDB88A4();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E800])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v85;
    v49 = v84;
    v51 = v86;
    (*(v85 + 32))(v84, v41, v86);
    v52 = v124;
    sub_22BDB8F14();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E810])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v82;
    v49 = v81;
    v51 = v83;
    (*(v82 + 32))(v81, v41, v83);
    v52 = v124;
    sub_22BDB8FE4();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E7D8])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v79;
    v49 = v78;
    v51 = v80;
    (*(v79 + 32))(v78, v41, v80);
    v52 = v124;
    sub_22BDB8E94();
    goto LABEL_6;
  }

  if (v42 == *MEMORY[0x277D1E720])
  {
    (*(v39 + 96))(v41, v38);
    v50 = v76;
    v49 = v75;
    v51 = v77;
    (*(v76 + 32))(v75, v41, v77);
    v52 = v124;
    sub_22BDB8174();
    goto LABEL_6;
  }

  v73 = sub_22BDB4C34();
  sub_22BB336D0(v124, 1, 1, v73);
  return (*(v39 + 8))(v41, v38);
}

void sub_22BBDAE68()
{
  sub_22BB32888();
  sub_22BDB4C34();
  v0 = sub_22BB3CC18(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
  v1 = sub_22BB69BE0(v0);
  sub_22BB38850(v1, v1, MEMORY[0x277D1C338], &qword_28142DD10);
}

void sub_22BBDAF18()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E60D0, &qword_22BDCD618);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD277BC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BBDAFE4(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v34[1] = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v34[2] = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v39 = a1;
  v40 = v15;
  v16 = (v3 + 88);
  v38 = *MEMORY[0x277D1E6F8];
  v37 = *MEMORY[0x277D1E718];
  v36 = *MEMORY[0x277D1E860];
  v35 = *MEMORY[0x277D1E868];
  v17 = (v3 + 8);
  v18 = MEMORY[0x277D84F90];
  while (v40 != v14)
  {
    v19 = sub_22BDB9B54();
    v20 = *(v19 - 8);
    v21 = *(v20 + 16);
    v22 = v39 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14;
    v23 = *(v6 + 48);
    *v11 = v14;
    v21(&v11[v23], v22, v19);
    sub_22BC8D26C();
    sub_22BDB9B24();
    v24 = (*v16)(v5, v2);
    if (v24 == v38 || v24 == v37)
    {
      (*v17)(v5, v2);
      goto LABEL_13;
    }

    if (v24 == v36 || v24 == v35)
    {
LABEL_13:
      sub_22BC8D26C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BBDB3C4(0, *(v18 + 16) + 1, 1);
        v18 = v41;
      }

      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v34[0] = v29 + 1;
        sub_22BBDB3C4(v28 > 1, v29 + 1, 1);
        v30 = v34[0];
        v18 = v41;
      }

      ++v14;
      *(v18 + 16) = v30;
      sub_22BC8D26C();
    }

    else
    {
      (*v17)(v5, v2);
      sub_22BB58728(v13, &qword_27D8E42E0, &unk_22BDD03F0);
      ++v14;
    }
  }

  sub_22BBDB404();
  v32 = v31;

  return v32;
}

void sub_22BBDB404()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB89D4C();
  sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3B818();
  if (v1)
  {
    v7 = sub_22BBDB908();
    sub_22BBDB590(v7, v8, v9);
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v10)
      {
        sub_22BB95BB8();
        sub_22BBDB590(v13, v14, v15);
      }

      v11 = sub_22BB38E98();
      sub_22BBDB5D0(v11, v12, &qword_27D8E60D8, &unk_22BDCD620);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBDB5D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8();
  v5 = sub_22BB31F54();
  v6(v5);
  return v4;
}

uint64_t sub_22BBDB618@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_22BC7E324(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = sub_22BB36830();

  return sub_22BB336D0(v9, v10, v11, v12);
}

void sub_22BBDB708()
{
  v4 = sub_22BB31C98();
  type metadata accessor for FeedbackLearning.FlowExpressionValue(v4);
  sub_22BB314BC();
  if (*(v5 + 84) == v3)
  {
    sub_22BB33224();
    sub_22BB313F4();

    sub_22BB336D0(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_22BBDB7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB35760();
  type metadata accessor for FeedbackLearning.FlowExpressionValue(v6);
  sub_22BB314BC();
  if (*(v8 + 84) != a2)
  {
    return sub_22BB32714(*(v3 + *(a3 + 20)));
  }

  return sub_22BB3AA28(v3, a2, v7);
}

void *sub_22BBDB920()
{
  v2 = *(v0 + 40);

  return sub_22BB69FEC((v0 + 16), v2);
}

void sub_22BBDB944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_22BB32FA4(a20);

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BBDB97C()
{

  return sub_22BDB77D4();
}

uint64_t sub_22BBDB99C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22BBDB9F4()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3DF0, &qword_22BDC1230);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  type metadata accessor for FeedbackLearning.TaskEvaluation(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1230);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, type metadata accessor for FeedbackLearning.TaskEvaluation);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90FE8();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BD90FE8();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BCAD538(v29, v30, type metadata accessor for FeedbackLearning.TaskEvaluation);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

uint64_t sub_22BBDBBF8()
{
  sub_22BB32FA4((v0 + 16));

  return v0;
}

uint64_t sub_22BBDBC28()
{
  sub_22BBDBBF8();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22BBDBC5C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BBDBC94(uint64_t a1)
{
  v29 = sub_22BDB7764();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDB7734();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB7754();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6144();
  v11 = sub_22BDB7744();
  sub_22BDB7774();
  v28 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22BDB77B4();

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
    sub_22BDB60E4();
    v19 = sub_22BDBB354();
    v21 = sub_22BB32EE0(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v11, v28, v22, "FeedbackLearning.evaluate", v29, v17, 0xCu);
    sub_22BB32FA4(v18);
    MEMORY[0x2318A6080](v18, -1, -1);
    MEMORY[0x2318A6080](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_22BBDC038()
{
  result = qword_281428868;
  if (!qword_281428868)
  {
    sub_22BBEB2E0(&qword_27D8E5ED8, &unk_22BDCCD10);
    sub_22BBB8FCC(qword_28142C890, _s18TaskDefinitionThinO18TaskEvaluationThinVMa, &unk_22BDC761C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428868);
  }

  return result;
}

uint64_t sub_22BBDC0EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v96 = a2;
  v105 = sub_22BDB77D4();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_22BDB5714();
  v79 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22BDB6BF4();
  v76 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22BDB4354();
  v75 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FeedbackLearningInteractionRecord(0);
  MEMORY[0x28223BE20](v97);
  v106 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22BDB6C34();
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22BDB6C24();
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22BDB43E4();
  v74 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v104 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v107 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22BDB7734();
  v13 = *(v101 - 8);
  v14 = MEMORY[0x28223BE20](v101);
  v100 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = sub_22BDB7754();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v71 - v23;
  v25 = sub_22BDB60B4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *a1;
  v99 = *(a1 + 1);
  (*(v26 + 104))(v28, *MEMORY[0x277D1EBC0], v25);
  LOBYTE(a1) = sub_22BDB60A4();
  (*(v26 + 8))(v28, v25);
  if (a1)
  {
    sub_22BDB6144();
    sub_22BDB6144();
    sub_22BDB7744();
    sub_22BDB7704();
    v29 = *(v19 + 8);
    v29(v22, v18);
    v105 = v24;
    v30 = sub_22BDB7744();
    v31 = sub_22BDBB1D4();
    v32 = v18;
    if (sub_22BDBB244())
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v30, v31, v34, "FeedbackLearning.donate", "", v33, 2u);
      v35 = v33;
      v32 = v18;
      MEMORY[0x2318A6080](v35, -1, -1);
    }

    v36 = v101;
    (*(v13 + 16))(v100, v17, v101);
    sub_22BDB77A4();
    swift_allocObject();
    v72 = sub_22BDB7794();
    (*(v13 + 8))(v17, v36);
    v29(v105, v32);
    v37 = v98;
    v38 = *(v99 + 16);
    v39 = v73;
    v40 = v97;
    v42 = v106;
    v41 = v107;
    if (v38)
    {
      v43 = v99 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v83 = *(v83 + 72);
      v82 = (v78 + 2);
      v81 = *MEMORY[0x277D1F898];
      v102 = (v80 + 1);
      v103 = (v80 + 13);
      v80 = (v78 + 1);
      ++v79;
      v78 = (v76 + 2);
      v77 = *MEMORY[0x277D1F890];
      ++v76;
      ++v75;
      ++v74;
      do
      {
        v105 = v43;
        v101 = v38;
        sub_22BD1CA68(v43, v41);
        sub_22BDB43D4();
        v44 = v85;
        sub_22BDB6A04();
        sub_22BDB69F4();
        v45 = v84;
        v46 = v89;
        (*v82)(v84, v44, v89);
        v99 = *v103;
        v47 = v90;
        (v99)(v45, v81, v90);
        v48 = v39;
        v49 = v96;
        sub_22BD1C03C(v45, v96, v104, v37);
        v100 = *v102;
        (v100)(v45, v47);
        (*v80)(v44, v46);
        v50 = *(v40 + 20);
        sub_22BD18CBC(v107, v42 + v50);
        v51 = sub_22BD19F48(v107);
        v52 = v87;
        v53 = *(v87 + 24);
        v54 = sub_22BDB7A84();
        (*(*(v54 - 8) + 16))(v106, v107 + v53, v54);
        *&v106[*(v40 + 24)] = v51;
        v55 = v91;
        sub_22BDB7A64();
        v56 = *(v52 + 20);
        v108 = v86;
        v57 = &v106[v50];
        v37 = v98;
        v58 = FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(v57, v51, v107, v55, v107 + v56, &v108);
        sub_22BDB9994();
        v59 = v94;
        sub_22BDB5704();
        v60 = v104;

        sub_22BCA4138();
        v61 = v59;
        v62 = v93;
        (*v79)(v61, v95);
        (*v78)(v45, v48, v62);
        (v99)(v45, v77, v47);
        v41 = v107;
        v63 = v49;
        v39 = v48;
        v64 = v92;
        sub_22BD1C03C(v45, v63, v60, v37);

        v42 = v106;
        (v100)(v45, v47);
        (*v76)(v39, v62);
        v65 = v55;
        v40 = v97;
        (*v75)(v65, v64);
        (*v74)(v60, v88);
        sub_22BD1CB30(v41, type metadata accessor for FeedbackLearning.TaskEvaluation);
        sub_22BD1CB30(v42, type metadata accessor for FeedbackLearningInteractionRecord);
        v43 = v105 + v83;
        v38 = v101 - 1;
      }

      while (v101 != 1);
    }

    sub_22BBDCE44(v72, "FeedbackLearning.donate");
  }

  else
  {
    v67 = v102;
    sub_22BDB6404();
    v68 = sub_22BDB77C4();
    v69 = sub_22BDBB0F4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22BB2C000, v68, v69, "Feedback Learning is not enabled, skipping evaluation donation.", v70, 2u);
      MEMORY[0x2318A6080](v70, -1, -1);
    }

    return (v103[1])(v67, v105);
  }
}

uint64_t type metadata accessor for FeedbackLearningInteractionRecord(uint64_t a1)
{
  result = qword_281428F40;
  if (!qword_281428F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBDCE44(uint64_t a1, const char *a2)
{
  sub_22BDB7764();
  sub_22BB30444();
  v34 = v3;
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v6 = v5 - v4;
  v7 = sub_22BDB7734();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  v14 = sub_22BDB7754();
  sub_22BB30444();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = v19 - v18;
  sub_22BDB6144();
  v21 = sub_22BDB7744();
  sub_22BDB7774();
  v33 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v32 = v9;

    sub_22BDB77B4();

    if ((*(v34 + 88))(v6, v35) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v23 = 0;
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v6, v35);
      v36 = "%s";
      v23 = 2;
      v22 = 1;
    }

    v25 = v16;
    v26 = swift_slowAlloc();
    v27 = sub_22BB314C8();
    v38 = v27;
    *v26 = v23;
    *(v26 + 1) = v22;
    *(v26 + 2) = 2080;
    sub_22BDB60E4();
    v28 = sub_22BDBB354();
    v30 = sub_22BB32EE0(v28, v29, &v38);

    *(v26 + 4) = v30;
    v31 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v21, v33, v31, a2, v36, v26, 0xCu);
    sub_22BB32FA4(v27);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v32 + 8))(v13, v7);
    return (*(v25 + 8))(v20, v14);
  }

  else
  {

    (*(v9 + 8))(v13, v7);
    return (*(v16 + 8))(v20, v14);
  }
}

uint64_t sub_22BBDD188()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB6B138;

  return sub_22BBDD218();
}

uint64_t sub_22BBDD234()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox;
  sub_22BDB9C14();
  sub_22BB2F330();
  (*(v2 + 8))(v0 + v1);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22BBDD3E4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v10 = *(a3 + 56);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

void *sub_22BBDD4C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v10 = *(a4 + 56);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBDD5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBDD5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBDD674(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBDD6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBDD788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BDB4E24();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_22BB3AA28(v9, a2, v8);
  }

  sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BB314BC();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_22BBDD88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BDB4E24();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB314BC();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBDD980()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = (type metadata accessor for QueryExecutor(0, v5, v6, a4) - 8);
  v8 = (*(*v7 + 80) + 48) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v11 = *(type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, v5, v6, v10) - 8);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v14 = v4 + v8;
  sub_22BDBA764();
  sub_22BB2F330();
  (*(v15 + 8))(v4 + v8);
  v16 = v7[11];
  sub_22BDBA014();
  sub_22BB2F330();
  (*(v17 + 8))(v14 + v16);
  (*(*(v5 - 8) + 8))(v14 + v7[12], v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_22BB2F330();
  (*(v18 + 8))(v4 + v12);

  sub_22BB32FA4((v4 + v13));

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_22BBDDC38()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDDCE4()
{
  v15 = *(v0 + 32);
  v1 = *(v15 - 8);
  v14 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = sub_22BDBA594();
  sub_22BB30444();
  v5 = v4;
  v6 = (v14 + v2 + *(v4 + 80)) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = sub_22BDB89A4();
  sub_22BB30444();
  v11 = v10;
  v12 = (v6 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v14, v15);
  (*(v5 + 8))(v0 + v6, v3);
  (*(v11 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDDEA8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDDEE8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB314BC();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[9];
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      sub_22BB314BC();
      if (*(v14 + 84) != a2)
      {
        return sub_22BB392FC(*(v3 + a3[11]));
      }

      v8 = v13;
      v12 = a3[10];
    }

    v9 = v3 + v12;
  }

  return sub_22BB3AA28(v9, a2, v8);
}

void sub_22BBDE01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      sub_22BB314BC();
      if (*(v16 + 84) != a3)
      {
        *(v4 + a4[11]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[10];
    }

    v11 = v4 + v14;
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBDE158(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_22BB392FC(*(v3 + a3[10] + 8));
    }

    sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB314BC();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[11];
    }

    else
    {
      v8 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v13 = a3[12];
    }

    v9 = v3 + v13;
  }

  return sub_22BB3AA28(v9, a2, v8);
}

void sub_22BBDE270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[10] + 8) = a2;
      return;
    }

    sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      v10 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v14 = a4[12];
    }

    v11 = v4 + v14;
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBDE3D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDE418()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDE580()
{
  v1 = *(v0 + 40);
  sub_22BB30418();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  sub_22BB52D84();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDE644()
{
  v2 = *(v0 + 40);
  sub_22BB30418();
  v4 = v3;
  v5 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = sub_22BDBA014();
  sub_22BB30444();
  v10 = v9;
  v11 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  sub_22BB52D84();
  v12 = type metadata accessor for InvocationOptions(0);
  v19 = *(*(v12 - 8) + 80);
  v13 = (v1 + v19 + 8) & ~v19;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v5, v2);
  (*(v10 + 8))(v0 + v11, v8);

  v14 = v0 + v13;
  v15 = sub_22BDB8274();
  if (!sub_22BB3AA28(v0 + v13, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v0 + v13, v15);
  }

  v16 = *(v12 + 28);
  v17 = sub_22BDBA234();
  if (!sub_22BB3AA28(v14 + v16, 1, v17))
  {
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDE980()
{
  sub_22BB30F68();
  sub_22BDB89A4();
  v0 = sub_22BB2F324();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBDE9C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_22BDB89A4();
  v5 = sub_22BB33224();

  return sub_22BB336D0(v5, v4, a3, v6);
}

uint64_t sub_22BBDEA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB90B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22BBDEAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  result = sub_22BDB90B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_22BB33224();

    return sub_22BB336D0(v9, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22BBDEC50(uint64_t a1, uint64_t a2)
{
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = a1;
  }

  else
  {
    sub_22BDB9CA4();
    v7 = sub_22BB35180();
  }

  return sub_22BB3AA28(v7, a2, v6);
}

uint64_t sub_22BBDECE4()
{
  sub_22BB348AC();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v4 + 84) == v2)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_22BDB9CA4();
    v6 = sub_22BB35180();
  }

  return sub_22BB336D0(v6, v0, v0, v5);
}

uint64_t sub_22BBDED74(uint64_t a1, uint64_t a2)
{
  sub_22BBE6DE0(&qword_27D8E3010, &qword_22BDBDED0);
  sub_22BB314BC();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = a1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
    v7 = sub_22BB35180();
  }

  return sub_22BB3AA28(v7, a2, v6);
}

uint64_t sub_22BBDEE20()
{
  sub_22BB348AC();
  sub_22BBE6DE0(&qword_27D8E3010, &qword_22BDBDED0);
  sub_22BB314BC();
  if (*(v4 + 84) == v2)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
    v6 = sub_22BB35180();
  }

  return sub_22BB336D0(v6, v0, v0, v5);
}

uint64_t sub_22BBDEF10()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDEF50()
{
  if (*(v0 + 40))
  {
    sub_22BB32FA4((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDF038(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
      v10 = *(a3 + 32);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

uint64_t sub_22BBDF110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
      v10 = *(a4 + 32);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBDF1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BC5FD04();
  *a1 = result;
  return result;
}

uint64_t sub_22BBDF298()
{

  v0 = sub_22BB36CEC();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDF2E0()
{
  sub_22BB30F94();
  v1 = sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  sub_22BB30434(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22BDB7614();
  sub_22BB30444();
  v8 = v7;
  v9 = *(v7 + 80);
  swift_unknownObjectRelease();

  v10 = sub_22BDB9B14();
  if (!sub_22BB3AA28(v0 + v3, 1, v10))
  {
    sub_22BB30474();
    (*(v11 + 8))(v0 + v3, v10);
  }

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v12);
}

uint64_t sub_22BBDF450()
{
  sub_22BB30F94();
  sub_22BDB43E4();
  sub_22BB30444();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22BDB7614();
  sub_22BB30444();
  v6 = v5;
  v7 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v8 = sub_22BB58A60();
  v9(v8);

  (*(v6 + 8))(v0 + v7, v4);
  sub_22BB3B31C();
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v10);
}

uint64_t sub_22BBDF5A0()
{
  sub_22BB30F94();
  sub_22BDB43E4();
  sub_22BB30444();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22BDB7614();
  sub_22BB30444();
  v7 = v6;
  v8 = (v4 + *(v6 + 80) + ((v2 + 40) & ~v2) + 1) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  v9 = sub_22BB58A60();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  sub_22BB3B31C();
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v11);
}

uint64_t sub_22BBDF6E0()
{
  sub_22BDB7614();
  sub_22BB30444();
  swift_unknownObjectRelease();

  v1 = sub_22BB541E8();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDF7A0()
{
  sub_22BDB7614();
  sub_22BB30444();
  swift_unknownObjectRelease();

  v1 = sub_22BB541E8();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDFA20(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22BDBA634();
    v9 = a1 + *(a3 + 20);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

void *sub_22BBDFAA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22BDBA634();
    v8 = v5 + *(a4 + 20);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBDFB50()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBDFBA4(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BB32714(*(a1 + 8));
  }

  sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0);
  v3 = sub_22BB394B8();

  return sub_22BB3AA28(v3, v4, v5);
}

void sub_22BBDFC24()
{
  sub_22BB35F54();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0);
    v3 = sub_22BB394B8();

    sub_22BB336D0(v3, v4, v0, v5);
  }
}

uint64_t sub_22BBDFCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v7 + 84) != a2)
  {
    return sub_22BB32714(*(a1 + *(a3 + 24) + 8));
  }

  return sub_22BB3AA28(a1, a2, v6);
}

void sub_22BBDFD84()
{
  sub_22BB348AC();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_22BB33224();

    sub_22BB336D0(v3, v0, v0, v4);
  }

  else
  {
    sub_22BC8DAC8();
  }
}

uint64_t sub_22BBDFE10(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB314BC();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_22BB32714(*(v4 + a3[6] + 8));
    }

    v8 = sub_22BBE6DE0(&qword_27D8E3028, &unk_22BDBF700);
    v9 = a3[8];
  }

  return sub_22BB3AA28(v4 + v9, v3, v8);
}

void sub_22BBDFEE8()
{
  sub_22BB348AC();
  sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB314BC();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = *(v2 + 20);
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_22BC8DAC8();
      return;
    }

    v6 = sub_22BBE6DE0(&qword_27D8E3028, &unk_22BDBF700);
    v7 = *(v2 + 32);
  }

  sub_22BB336D0(v1 + v7, v0, v0, v6);
}

uint64_t sub_22BBDFFB4(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BB32714(*(a1 + 8));
  }

  sub_22BDBA594();
  v3 = sub_22BB394B8();

  return sub_22BB3AA28(v3, v4, v5);
}

void sub_22BBE0028()
{
  sub_22BB35F54();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22BDBA594();
    v3 = sub_22BB394B8();

    sub_22BB336D0(v3, v4, v0, v5);
  }
}

uint64_t sub_22BBE009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  sub_22BB314BC();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_10:

    return sub_22BB3AA28(v9, v3, v8);
  }

  if (v3 != 2147483646)
  {
    v8 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
    v9 = v4 + *(a3 + 28);
    goto LABEL_10;
  }

  v10 = *(v4 + *(a3 + 20) + 8);
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

void sub_22BBE018C()
{
  sub_22BB348AC();
  sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB33224();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return;
    }

    v6 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
    v5 = v1 + *(v2 + 28);
  }

  sub_22BB336D0(v5, v0, v0, v6);
}

uint64_t sub_22BBE0290()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE02F0()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE057C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
    v10 = a1 + *(a3 + 20);

    return sub_22BB3AA28(v10, a2, v9);
  }
}

uint64_t sub_22BBE061C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
    v8 = v5 + *(a4 + 20);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBE074C()
{
  sub_22BB2F474();
  v2 = sub_22BDBA044();

  return sub_22BB3AA28(v1, v0, v2);
}

uint64_t sub_22BBE078C()
{
  sub_22BB2F474();
  sub_22BDBA044();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE07C4()
{
  sub_22BB2F474();
  v2 = sub_22BDB5014();

  return sub_22BB3AA28(v1, v0, v2);
}

uint64_t sub_22BBE0804()
{
  sub_22BB2F474();
  sub_22BDB5014();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE0868()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE08A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE08F0()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE0A68()
{
  sub_22BB30CF8();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v3 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 24)));
  }

  v4 = sub_22BB313E4();

  return sub_22BB3AA28(v4, v5, v6);
}

void sub_22BBE0AF0()
{
  sub_22BB31C98();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB34284();

    sub_22BB336D0(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_22BBE0BD0()
{
  sub_22BB30CF8();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v3 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20) + 24));
  }

  v4 = sub_22BB313E4();

  return sub_22BB3AA28(v4, v5, v6);
}

void sub_22BBE0C5C()
{
  sub_22BB31C98();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB34284();

    sub_22BB336D0(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 24) = (v0 - 1);
  }
}

uint64_t sub_22BBE0CE8()
{
  sub_22BB30CF8();
  sub_22BDB9C14();
  sub_22BB314BC();
  if (*(v3 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20)));
  }

  v4 = sub_22BB313E4();

  return sub_22BB3AA28(v4, v5, v6);
}

void sub_22BBE0D70()
{
  sub_22BB31C98();
  sub_22BDB9C14();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB34284();

    sub_22BB336D0(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_22BBE0E70(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 61)
  {
    v4 = *a1 & 0x3C | (*a1 >> 6);
    v5 = v4 ^ 0x3F;
    v6 = 64 - v4;
    if (v5 >= 0x3D)
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
    v10 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = sub_22BDB7B44();
      v12 = *(a3 + 24);
    }

    return sub_22BB3AA28(&a1[v12], a2, v11);
  }
}

_BYTE *sub_22BBE0F44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 61)
  {
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
  }

  else
  {
    v8 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_22BDB7B44();
      v10 = *(a4 + 24);
    }

    return sub_22BB336D0(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBE1088(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB314BC();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[6];
    }

    else
    {
      sub_22BDB5404();
      sub_22BB314BC();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[7];
      }

      else
      {
        v8 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
        v12 = a3[8];
      }
    }

    v9 = v3 + v12;
  }

  return sub_22BB3AA28(v9, a2, v8);
}

uint64_t sub_22BBE119C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_22BDB5404();
      sub_22BB314BC();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
        v14 = a4[8];
      }
    }

    v11 = v4 + v14;
  }

  return sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBE12B8()
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    v2 = sub_22BB69A84();
  }

  else
  {
    _s25ValueDisambiguationResultVMa(0);
    v2 = sub_22BB39610();
  }

  return sub_22BB3AA28(v2, v0, v3);
}

uint64_t sub_22BBE1340()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    _s25ValueDisambiguationResultVMa(0);
    sub_22BB39610();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v2, v3, v4, v5);
}

uint64_t sub_22BBE1440(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BDB43E4();
    v5 = sub_22BB35180();

    return sub_22BB3AA28(v5, a2, v6);
  }
}

_BYTE *sub_22BBE14BC(_BYTE *result, char a2, int a3)
{
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB35180();
    sub_22BB313F4();

    return sub_22BB336D0(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_22BBE1530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB69A84();
  }

  else
  {
    sub_22BDB8384();
    sub_22BB314BC();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = *(a3 + 24);
    }

    else
    {
      v8 = _s19ParameterStepResultOMa(0);
      v11 = *(a3 + 28);
    }

    v7 = v4 + v11;
  }

  return sub_22BB3AA28(v7, v3, v8);
}

uint64_t sub_22BBE15FC()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    sub_22BDB8384();
    sub_22BB314BC();
    if (*(v2 + 84) != v0)
    {
      _s19ParameterStepResultOMa(0);
    }
  }

  sub_22BB313F4();

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBE16C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB69A84();
  }

  else
  {
    if (v3 == 253)
    {
      v9 = *(v4 + *(a3 + 20));
      if (v9 >= 3)
      {
        return v9 - 2;
      }

      else
      {
        return 0;
      }
    }

    sub_22BDB43E4();
    v7 = sub_22BB39610();
  }

  return sub_22BB3AA28(v7, v3, v8);
}

void sub_22BBE177C()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return;
    }

    sub_22BDB43E4();
    sub_22BB39610();
  }

  sub_22BB313F4();

  sub_22BB336D0(v5, v6, v7, v8);
}

uint64_t sub_22BBE1904(uint64_t a1, uint64_t a2)
{
  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  v3 = sub_22BB69A84();
  v5 = sub_22BB3AA28(v3, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE1954(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  v5 = sub_22BB33224();

  return sub_22BB336D0(v5, v4, a3, v6);
}

uint64_t sub_22BBE19B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB69A84();
  }

  else
  {
    _s14ToolStepResultOMa(0);
    v9 = *(a3 + 20);
    v8 = _s24ToolDisambiguationResultVMa(0);
    v7 = v4 + v9;
  }

  return sub_22BB3AA28(v7, v3, v8);
}

uint64_t sub_22BBE1A4C()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    _s14ToolStepResultOMa(0);
    _s24ToolDisambiguationResultVMa(0);
  }

  sub_22BB313F4();

  return sub_22BB336D0(v2, v3, v4, v5);
}

uint64_t sub_22BBE1B50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BBE1B30();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BBE1C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9C14();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE1D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9C14();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  sub_22BDB9C14();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return sub_22BB3AA28(v9, a2, v8);
  }

  type metadata accessor for FeedbackLearning.TaskEvaluator(0);
  sub_22BB314BC();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_22BBE1F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  sub_22BDB9C14();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for FeedbackLearning.TaskEvaluator(0);
    sub_22BB314BC();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBE203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9C14();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE20EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9C14();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE23BC(char a1)
{
  if (a1)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22BBE240C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BCF3A94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BBE2448(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      sub_22BD00D44();
LABEL_4:
      result = 0x6465727265666E69;
      break;
    case 3:
      result = sub_22BD00D14();
      break;
    case 4:
      result = 0x6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BBE2508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF4478();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE259C(char a1)
{
  if (a1)
  {
    return 0x745374706D6F7270;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_22BBE25E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF5300();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE2630(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22BBE2660(char a1)
{
  if (a1)
  {
    return 0x656C706D6F636E69;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_22BBE26E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF281C();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE2718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF315C();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE27A0()
{
  sub_22BB2F474();
  sub_22BDB9D04();
  v0 = sub_22BB347EC();

  return sub_22BB3AA28(v0, v1, v2);
}

uint64_t sub_22BBE27D8()
{
  sub_22BB2F474();
  sub_22BDB9D04();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2810(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB69A84();
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v9 + 84) == v3)
    {
      sub_22BD00CCC();
    }

    else
    {
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      sub_22BB314BC();
      if (*(v12 + 84) == v3)
      {
        v8 = v11;
        v10 = a3[6];
      }

      else
      {
        sub_22BDB7B44();
        sub_22BB314BC();
        if (*(v14 + 84) != v3)
        {
          return sub_22BD00E04(a3[8]);
        }

        v8 = v13;
        v10 = a3[7];
      }
    }

    v7 = v4 + v10;
  }

  return sub_22BB3AA28(v7, v3, v8);
}

void sub_22BBE295C()
{
  sub_22BB31C98();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v5 + 84) == v3)
    {
      sub_22BD00CF0();
    }

    else
    {
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      sub_22BB314BC();
      if (*(v6 + 84) != v3)
      {
        sub_22BDB7B44();
        sub_22BB314BC();
        if (*(v7 + 84) != v3)
        {
          *(v1 + *(v2 + 32)) = v0 + 3;
          return;
        }
      }
    }
  }

  sub_22BB313F4();

  sub_22BB336D0(v8, v9, v10, v11);
}

uint64_t sub_22BBE2AA8()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 5)
  {
    return v3 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE2AF0()
{
  sub_22BB97610();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB2F474();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v6);
  sub_22BB314BC();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    sub_22BDBA014();
    sub_22BB314BC();
    if (*(v10 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 24));
      if (v13 >= 2)
      {
        return sub_22BD00DD8(v13);
      }

      else
      {
        return 0;
      }
    }

    sub_22BD00CCC();
    v8 = v4 + v11;
  }

  return sub_22BB3AA28(v8, v3, v9);
}

void sub_22BBE2C8C()
{
  v4 = sub_22BB31C98();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v4);
  sub_22BB314BC();
  if (*(v5 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    sub_22BDBA014();
    sub_22BB314BC();
    if (*(v6 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = v0 + 1;
      return;
    }

    sub_22BD00CF0();
  }

  sub_22BB313F4();

  sub_22BB336D0(v7, v8, v9, v10);
}

uint64_t sub_22BBE2D58()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE2D98()
{
  sub_22BD00924();
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2E68()
{
  v2 = sub_22BB2F474();
  type metadata accessor for FeedbackLearning.CandidateDefinition(v2);
  sub_22BB314BC();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_22BB69A84();
  }

  else
  {
    sub_22BDB7B94();
    sub_22BD00CCC();
    v4 = v1 + v6;
  }

  return sub_22BB3AA28(v4, v0, v5);
}

uint64_t sub_22BBE2EF0()
{
  v1 = sub_22BB31C98();
  type metadata accessor for FeedbackLearning.CandidateDefinition(v1);
  sub_22BB314BC();
  if (*(v2 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    sub_22BDB7B94();
    sub_22BD00CF0();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBE2FF4()
{
  sub_22BB30CF8();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v3 + 84) == v1)
  {
    v4 = sub_22BD00E84();

    return sub_22BB3AA28(v4, v1, v5);
  }

  else
  {
    v7 = *(v0 + *(v2 + 20));
    if (v7 >= 2)
    {
      return sub_22BD00DD8(v7);
    }

    else
    {
      return 0;
    }
  }
}

void sub_22BBE3090()
{
  sub_22BB31C98();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB34284();

    sub_22BB336D0(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_22BBE3118()
{
  sub_22BB2F474();
  sub_22BDB4C84();
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE3148()
{
  sub_22BD00924();
  sub_22BDB4C84();
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE318C()
{
  sub_22BB2F474();
  sub_22BDB4354();
  v0 = sub_22BB347EC();

  return sub_22BB3AA28(v0, v1, v2);
}

uint64_t sub_22BBE31C4()
{
  sub_22BB2F474();
  sub_22BDB4354();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE31FC()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE323C()
{
  sub_22BD00924();
  sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE32BC()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 5)
  {
    return v3 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE3304()
{
  sub_22BB97610();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE3354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB69A84();
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v9 + 84) == v3)
    {
      sub_22BD00CCC();
    }

    else
    {
      sub_22BDB7B44();
      sub_22BB314BC();
      if (*(v12 + 84) != v3)
      {
        return sub_22BD00E04(*(a3 + 28));
      }

      v8 = v11;
      v10 = *(a3 + 24);
    }

    v7 = v4 + v10;
  }

  return sub_22BB3AA28(v7, v3, v8);
}

void sub_22BBE3460()
{
  sub_22BB31C98();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC();
    if (*(v5 + 84) == v3)
    {
      sub_22BD00CF0();
    }

    else
    {
      sub_22BDB7B44();
      sub_22BB314BC();
      if (*(v6 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0 + 3;
        return;
      }
    }
  }

  sub_22BB313F4();

  sub_22BB336D0(v7, v8, v9, v10);
}

uint64_t sub_22BBE36BC(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_22BBE3780(uint64_t a1, uint64_t a2)
{
  result = sub_22BD00D14();
  switch(v3)
  {
    case 1:
      return result;
    case 2:
      result = sub_22BD10FF0();
      break;
    case 3:
      result = sub_22BB8B738();
      break;
    case 4:
      result = 0x64656C65636E6163;
      break;
    case 5:
      result = 0x64657070696B73;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_22BBE3880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BCF3B3C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BBE38B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BD06D00();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE38E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BD07238();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE3914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BD09590(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BBE396C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5 = _s28StatementResolutionReferenceOMa(v4);

  return sub_22BB3AA28(v2, a2, v5);
}

uint64_t sub_22BBE39B0()
{
  v0 = sub_22BB30F68();
  _s28StatementResolutionReferenceOMa(v0);
  v1 = sub_22BB34284();

  return sub_22BB336D0(v1, v2, v3, v4);
}

uint64_t sub_22BBE3A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BD07F24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BBE3A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s28StatementResolutionReferenceOMa(0);
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_22BBE3B18(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = sub_22BB30F68();
  _s28StatementResolutionReferenceOMa(v8);
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = sub_22BB34284();

    sub_22BB336D0(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_22BBE3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9774();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE3D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9774();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  sub_22BDB7A84();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return sub_22BB3AA28(v9, a2, v8);
  }

  sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BB314BC();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_22BBE401C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  sub_22BDB7A84();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
    sub_22BB314BC();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

char *sub_22BBE410C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

uint64_t sub_22BBE4134()
{
  sub_22BB2F474();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    type metadata accessor for FeedbackLearning.ActionValue(0);
    v5 = sub_22BB35180();
  }

  return sub_22BB3AA28(v5, v0, v4);
}

uint64_t sub_22BBE41C0()
{
  sub_22BB31C98();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.ActionValue(0);
    sub_22BB35180();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v2, v3, v4, v5);
}

uint64_t sub_22BBE4244()
{
  sub_22BB2F474();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
    v5 = sub_22BB39610();
  }

  return sub_22BB3AA28(v5, v0, v4);
}

uint64_t sub_22BBE42D0()
{
  sub_22BB31C98();
  sub_22BDB4C34();
  sub_22BB314BC();
  if (*(v1 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
    sub_22BB39610();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v2, v3, v4, v5);
}

uint64_t sub_22BBE4354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDB5F24();
  sub_22BB314BC();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_22BDB4C34();
    sub_22BB314BC();
    if (*(v10 + 84) != v3)
    {
      return sub_22BB32714(*(v4 + *(a3 + 24)));
    }

    v9 = sub_22BB35180();
  }

  return sub_22BB3AA28(v9, v3, v8);
}

void sub_22BBE4428()
{
  sub_22BB31C98();
  sub_22BDB5F24();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    sub_22BDB4C34();
    sub_22BB314BC();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    sub_22BB35180();
  }

  sub_22BB313F4();

  sub_22BB336D0(v6, v7, v8, v9);
}

uint64_t sub_22BBE458C()
{
  v1 = sub_22BDB96E4();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v0 + 32));
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE4680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDB4B64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BBE4710(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB4B94();
  v5 = sub_22BB3AA28(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE4758(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BDB4B94();

  return sub_22BB336D0(a1, v5, a3, v6);
}

uint64_t sub_22BBE47C8()
{
  sub_22BB30CF8();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v4 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20) + 8));
  }

  return sub_22BB3AA28(v0, v1, v3);
}

void sub_22BBE485C()
{
  sub_22BB31C98();
  sub_22BDBA594();
  sub_22BB314BC();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_22BB34284();

    sub_22BB336D0(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_22BBE48FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9C14();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBE4944(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9C14();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBE49F0()
{
  sub_22BDB5B44();
  sub_22BB30444();
  swift_unknownObjectRelease();

  v1 = sub_22BB541E8();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE4B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  sub_22BDB9B54();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_22BBE4BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB2F474();
  sub_22BDB9B54();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {

    sub_22BB336D0(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }
}

uint64_t sub_22BBE4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  sub_22BDB8F54();
  sub_22BB314BC();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB314BC();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_22BDB9774();
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return sub_22BB3AA28(v9, v3, v8);
}

uint64_t sub_22BBE4D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB2F474();
  sub_22BDB8F54();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_22BDB9774();
      v14 = *(a4 + 24);
    }

    v11 = v5 + v14;
  }

  return sub_22BB336D0(v11, v4, v4, v10);
}

uint64_t sub_22BBE4E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  v6 = sub_22BDB5664();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE4EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB5664();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE5010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_22BBE5030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35760();
  sub_22BDB96E4();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {

    return sub_22BB3AA28(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_22BBE50D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  sub_22BDB96E4();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {

    sub_22BB336D0(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_22BBE51A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      v10 = *(a3 + 52);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

uint64_t sub_22BBE527C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      v10 = *(a4 + 52);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBE5350(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BDB5F24();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_22BB3AA28(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_22BDB7F64();
    sub_22BB314BC();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = sub_22BDB9C14();
      v14 = a3[8];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_22BBE545C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BDB5F24();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    sub_22BDB7F64();
    sub_22BB314BC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = sub_22BDB9C14();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBE55C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = sub_22BDB5AB4();
    v9 = v3 + *(a3 + 20);
  }

  return sub_22BB3AA28(v9, a2, v8);
}

uint64_t sub_22BBE5658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  sub_22BDB43E4();
  sub_22BB314BC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_22BDB5AB4();
    v11 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v11, a2, a2, v10);
}

uint64_t sub_22BBE56F8(uint64_t a1, uint64_t a2)
{
  sub_22BB30F68();
  v4 = sub_22BDB43E4();

  return sub_22BB3AA28(v2, a2, v4);
}

uint64_t sub_22BBE579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBE57F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6968, &qword_22BDCFDE8);

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBE5848()
{

  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE587C()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BBE58B0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE595C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5994()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));
  sub_22BB3531C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE59DC()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5A14()
{

  sub_22BB3531C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5AA0()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BBE5AD8()
{
  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BBE5B14()
{
  v1 = sub_22BDB43E4();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5BD4()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5CA0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E6DC8, &qword_22BDD0D80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BBE5CD0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5D0C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5D50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5D88()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5DC4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5E08()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5E5C()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5E90()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5EE8()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5F88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5FC0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE5FFC()
{
  sub_22BB3531C(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBE6104@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BC587B4(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t default argument 0 of StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB80C4();
  v3 = MEMORY[0x277D1D938];
  a1[3] = v2;
  a1[4] = v3;
  sub_22BB8B8A0(a1, v4, v5, v6, v7, v8, v9, v10);
  return _s23IntelligenceFlowRuntime28StandardToolboxConfigurationV011makeMutableE08delegate22planGenerationDelegate0aB14PlannerSupport0hE0Cx_q_tKAG0eL0RzAG0e4PlankL0R_r0_lFfA__0();
}

uint64_t default argument 1 of StandardToolboxConfiguration.makeQueryableToolbox(delegate:planGenerationDelegate:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB77E4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BB358B4();
  a1[3] = sub_22BDB7814();
  a1[4] = sub_22BBE6218();
  sub_22BB8B8A0(a1, v3, v4, v5, v6, v7, v8, v9);
  return sub_22BDB77F4();
}

unint64_t sub_22BBE6218()
{
  result = qword_281428AD8;
  if (!qword_281428AD8)
  {
    sub_22BDB7814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428AD8);
  }

  return result;
}

uint64_t sub_22BBE6278()
{
  v0 = sub_22BDB77E4();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BB358B4();
  return sub_22BDB77F4();
}

uint64_t sub_22BBE62E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE6308(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_22BBE636C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_22BBE63C8()
{
  v0 = sub_22BDB77D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB0F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22BB2C000, v4, v5, "IntelligenceFlowDaemonEventHandlers: registerLaunchEvents called: registering for com.apple.notifyd.matching and BiomeLibrary.device.metadata", v6, 2u);
    MEMORY[0x2318A6080](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_22BB6ECB0();
  v7 = sub_22BDBB184();
  v23 = sub_22BBE6760;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22BBE6E38;
  v22 = &unk_283F73788;
  v8 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v7, v8);
  _Block_release(v8);

  v9 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v10 = [v9 Metadata];
  swift_unknownObjectRelease();
  v11 = sub_22BDBB184();
  v12 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v13 = sub_22BBE6D04(0xD000000000000029, 0x800000022BDD1440, v11, 1);
  v14 = [v10 DSLPublisher];
  v15 = [v14 subscribeOn_];

  v23 = sub_22BBE6980;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22BBE6B08;
  v22 = &unk_283F737B0;
  v16 = _Block_copy(&aBlock);
  v23 = sub_22BBE6B70;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22BBE6E38;
  v22 = &unk_283F737D8;
  v17 = _Block_copy(&aBlock);
  v18 = [v15 sinkWithCompletion:v16 receiveInput:v17];
  _Block_release(v17);
  _Block_release(v16);
}

void sub_22BBE6760(void *a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB9D84();
  if (xpc_dictionary_get_string(a1, v6))
  {
    v7 = sub_22BDBAC84();
    v9 = v8;
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();

    v10 = sub_22BDB77C4();
    v11 = sub_22BDBB0F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22BB32EE0(v7, v9, &v17);
      _os_log_impl(&dword_22BB2C000, v10, v11, "DaemonEventHandlers: Got Darwin notification: %s", v12, 0xCu);
      sub_22BB32FA4(v13);
      MEMORY[0x2318A6080](v13, -1, -1);
      MEMORY[0x2318A6080](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v14 = [objc_opt_self() defaultCenter];
    v15 = sub_22BDBABE4();

    [v14 postNotificationName:v15 object:0];
  }
}

uint64_t sub_22BBE6980(void *a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v6 = a1;
  v7 = sub_22BDB77C4();
  v8 = sub_22BDBB0F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_22BB2C000, v7, v8, "DaemonEventHandlers: Device upgrade listener completed: %@", v9, 0xCu);
    sub_22BBE6D78(v10);
    MEMORY[0x2318A6080](v10, -1, -1);
    MEMORY[0x2318A6080](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_22BBE6B08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22BBE6B70()
{
  v0 = sub_22BDB77D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB0F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22BB2C000, v4, v5, "DaemonEventHandlers: Got Device upgrade notification.", v6, 2u);
    MEMORY[0x2318A6080](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22BBE6CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_22BBE6D04(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_22BDBABE4();

  v8 = [v4 initWithIdentifier:v7 targetQueue:a3 waking:a4 & 1];

  return v8;
}

uint64_t sub_22BBE6D78(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&unk_27D8E6A70, &unk_22BDBCDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBE6DE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void static IntelligenceFlowDaemon.start()()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2510, &qword_22BDBCA00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_22BDB77D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB134();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22BB2C000, v10, v11, "Starting intelligenceflowd", v12, 2u);
    MEMORY[0x2318A6080](v12, -1, -1);
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB336D0(v2, 0, 1, v3);
  sub_22BDB6534();
  sub_22BDB6544();
  sub_22BBE7244();
  sub_22BDB6554();
  type metadata accessor for InternalXPCServiceServer();
  sub_22BBE72EC(&qword_281429EA8, type metadata accessor for InternalXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  type metadata accessor for ToolboxXPCServiceServer();
  sub_22BBE72EC(&qword_281429F50, type metadata accessor for ToolboxXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  type metadata accessor for QueryDecorationXPCServiceServer();
  sub_22BBE72EC(&qword_281429470, type metadata accessor for QueryDecorationXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6474();
  sub_22BBE7298();
  sub_22BDB6554();
  type metadata accessor for SnippetStreamingXPCServiceServer();
  sub_22BBE72EC(&qword_281428FE8, type metadata accessor for SnippetStreamingXPCServiceServer);
  sub_22BB358DC();
  sub_22BDB6554();
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v14 = sub_22BDB77C4();
  v15 = sub_22BDBB134();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22BB2C000, v14, v15, "Setting up real time event monitors", v16, 2u);
    MEMORY[0x2318A6080](v16, -1, -1);
  }

  v13(v7, v3);
  sub_22BD30378();
  sub_22BBE63C8();
}

unint64_t sub_22BBE7244()
{
  result = qword_281429F60;
  if (!qword_281429F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429F60);
  }

  return result;
}

unint64_t sub_22BBE7298()
{
  result = qword_281428C20;
  if (!qword_281428C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428C20);
  }

  return result;
}

uint64_t sub_22BBE72EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowDaemon(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowDaemon(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BBE7438()
{
  sub_22BDBB814();
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

uint64_t sub_22BBE7480(uint64_t a1)
{
  sub_22BDBB814();
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

uint64_t static SimilarityFunctions.cosine<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[1] = a5;
  sub_22BB30418();
  v29 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v28 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v28 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v28 - v22;
  result = sub_22BBE76A4(v21, v24, v25, (v28 - v22));
  if (!v5)
  {
    sub_22BBE79B8(a1, a3, a4, v17);
    sub_22BBE79B8(a2, a3, a4, v14);
    sub_22BDBB0B4();
    v27 = *(v29 + 8);
    v27(v14, a3);
    v27(v17, a3);
    sub_22BDBAB94();
    v27(v20, a3);
    return (v27)(v23, a3);
  }

  return result;
}

uint64_t sub_22BBE76A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X8>)
{
  v36 = a2;
  v35 = a1;
  sub_22BB30418();
  v28 = v4;
  v29 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v32 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v13;
  v34 = *(*(v14 + 16) + 8);
  swift_getAssociatedTypeWitness();
  sub_22BB33860();
  MEMORY[0x28223BE20](v15);
  sub_22BB30428();
  swift_getAssociatedConformanceWitness();
  sub_22BDBB714();
  v16 = a4;
  sub_22BDBB6B4();
  v17 = sub_22BDBADF4();
  result = sub_22BDBADF4();
  if (v17 != result)
  {
LABEL_9:
    sub_22BBE7CF8();
    swift_allocError();
    swift_willThrow();
    return (*(v29 + 8))(v16, a3);
  }

  v19 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v19 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v30 = a4;
  v20 = 0;
  v21 = (v29 + 8);
  v22 = v32;
  while (1)
  {
    sub_22BDBAE34();
    v23 = v33;
    sub_22BDBAE34();
    v24 = a3;
    v25 = v31;
    sub_22BDBB0B4();
    v16 = *v21;
    (*v21)(v23, v24);
    v16(v22, v24);
    sub_22BDBB4E4();
    v26 = v25;
    a3 = v24;
    result = (v16)(v26, v24);
    if (v19 == v20)
    {
      return result;
    }

    if (__OFADD__(v20++, 1))
    {
      __break(1u);
      goto LABEL_9;
    }
  }
}

uint64_t sub_22BBE79B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v26[2] = a3;
  swift_getAssociatedTypeWitness();
  sub_22BB33860();
  MEMORY[0x28223BE20](v6);
  sub_22BB30418();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v26[0] = v16;
  MEMORY[0x28223BE20](v13);
  v18 = v26 - v17;
  swift_getAssociatedConformanceWitness();
  sub_22BDBB714();
  v27 = v18;
  sub_22BDBB6B4();
  sub_22BB30428();
  v19 = sub_22BDBAD74();
  v29 = v19;
  sub_22BB30428();
  if (v19 == sub_22BDBADF4())
  {
LABEL_2:
    v20 = v27;
    sub_22BDBAB84();
    return (*(v8 + 8))(v20, a2);
  }

  v22 = (v8 + 8);
  while (1)
  {
    sub_22BB30428();
    v23 = sub_22BDBADD4();
    sub_22BDBAD94();
    if ((v23 & 1) == 0)
    {
      break;
    }

    (*(v8 + 16))(v15, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, a2);
LABEL_6:
    sub_22BDBAE14();
    sub_22BDBB0B4();
    v24 = *v22;
    (*v22)(v15, a2);
    sub_22BDBB4E4();
    v24(v12, a2);
    sub_22BB30428();
    v25 = sub_22BDBADF4();
    v19 = v29;
    if (v29 == v25)
    {
      goto LABEL_2;
    }
  }

  result = sub_22BDBB364();
  if (v26[0] == 8)
  {
    v28 = result;
    (*(v8 + 16))(v15, &v28, a2);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_22BBE7CF8()
{
  result = qword_27D8E2518;
  if (!qword_27D8E2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2518);
  }

  return result;
}

_BYTE *sub_22BBE7D4C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BBE7DFC()
{
  result = qword_27D8E2520;
  if (!qword_27D8E2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2520);
  }

  return result;
}

uint64_t sub_22BBE7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v15[3] = a8;
  v13 = type metadata accessor for AppEntityCandidateGenerator.Results(0, v15);
  sub_22BBE9C14(a2, a9 + v13[13], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBE9C14(a3, a9 + v13[14], &qword_27D8E2528, &unk_22BDBD190);
  *(a9 + v13[15]) = a4;
  return result;
}

uint64_t sub_22BBE7F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  v6[14] = sub_22BB30ACC();
  sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v6[15] = sub_22BB30ACC();
  v8 = sub_22BDBA4B4();
  v6[16] = v8;
  sub_22BB30434(v8);
  v6[17] = v9;
  v6[18] = sub_22BB30ACC();
  v10 = sub_22BDBA594();
  v6[19] = v10;
  sub_22BB30434(v10);
  v6[20] = v11;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v12 = a5[3];
  v6[24] = v12;
  v13 = a5[5];
  v6[25] = v13;
  v6[26] = type metadata accessor for EntitySearchableItemCandidateGenerator(0, v12, v13, v14);
  sub_22BB30444();
  v6[27] = v15;
  v6[28] = sub_22BB30ACC();
  v16 = sub_22BDB9854();
  v6[29] = v16;
  sub_22BB30434(v16);
  v6[30] = v17;
  v6[31] = sub_22BB30ACC();
  v18 = sub_22BDB9864();
  v6[32] = v18;
  sub_22BB30434(v18);
  v6[33] = v19;
  v6[34] = sub_22BB30ACC();
  v20 = a5[2];
  v6[35] = v20;
  v21 = a5[4];
  v6[36] = v21;
  v23 = type metadata accessor for SearchToolExecutor(0, v20, v21, v22);
  v6[37] = v23;
  sub_22BB30434(v23);
  v6[38] = v24;
  v6[39] = sub_22BB30ACC();
  v26 = type metadata accessor for SearchToolExecutor.HydratedSearchResults(255, v20, v21, v25);
  v6[40] = v26;
  v27 = sub_22BDBB254();
  v6[41] = v27;
  sub_22BB30434(v27);
  v6[42] = v28;
  v6[43] = sub_22BB30ACC();
  v6[44] = *(v26 - 8);
  v6[45] = sub_22BB30ACC();
  v29 = sub_22BDBB254();
  v6[46] = v29;
  sub_22BB30434(v29);
  v6[47] = v30;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v31 = sub_22BDB77D4();
  v6[50] = v31;
  sub_22BB30434(v31);
  v6[51] = v32;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBE8360, 0, 0);
}

uint64_t sub_22BBE8360()
{
  sub_22BDB63A4();
  v1 = sub_22BDB77C4();
  v2 = sub_22BDBB104();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_22BB2F0A8(&dword_22BB2C000, v4, v5, "Running AppEntityCandidateGenerator");
    MEMORY[0x2318A6080](v3, -1, -1);
  }

  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);
  v9 = *(v0 + 376);
  v50 = *(v0 + 208);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  *(v0 + 432) = *(v6 + 8);
  v12 = sub_22BB30AE4();
  v13(v12);
  v14 = *(v10 + 60);
  *(v0 + 544) = v14;
  v15 = *(v9 + 16);
  *(v0 + 440) = v15;
  *(v0 + 448) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v7, v11 + v14, v8);
  LODWORD(v10) = sub_22BB3AA28(v7, 1, v50);
  v16 = *(v9 + 8);
  *(v0 + 456) = v16;
  v16(v7, v8);
  sub_22BBE6DE0(&qword_27D8E2538, &qword_22BDBCBF8);
  sub_22BDBA634();
  sub_22BB30444();
  v19 = v18;
  v21 = *(v20 + 72);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  if (v10 == 1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22BDBCBD0;
    sub_22BDB81D4();
  }

  else
  {
    v24 = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22BDBCBC0;
    v25 = v23 + v22;
    sub_22BDB81D4();
    v26 = sub_22BDBA604();
    v34 = swift_allocBox(v26, v27, v28, v29, v30, v31, v32, v33, v47, v48, v49);
    (*(*(v26 - 8) + 104))(v35, *MEMORY[0x277D72CC0], v26);
    *(v25 + v21) = v34;
    (*(v19 + 104))(v25 + v21, *MEMORY[0x277D72D50], v24);
  }

  v37 = *(v0 + 72);
  v36 = *(v0 + 80);
  (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 104) + *(*(v0 + 96) + 52), *(v0 + 296));
  v38 = sub_22BDB8234();
  sub_22BBFA1E4(v37, v36, v38, v39, v23);

  sub_22BD4477C();
  v41 = v40;
  *(v0 + 464) = v40;

  v42 = swift_task_alloc();
  *(v0 + 472) = v42;
  *v42 = v0;
  v42[1] = sub_22BBE87F8;
  v43 = *(v0 + 344);
  v44 = *(v0 + 296);
  v45 = *(v0 + 88);

  return sub_22BBFAD34(v43, v41, v45, v44);
}

uint64_t sub_22BBE9794()
{
  v1 = sub_22BDBA594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBA3A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v9(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D729E0])
  {
    (*(v2 + 96))(v4, v1);
    v10 = swift_projectBox();
    (*(v6 + 16))(v8, v10, v5);

    v11 = sub_22BDBA394();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22BDBCBD0;
    v9((v11 + v12), v0, v1);
  }

  return v11;
}

uint64_t sub_22BBE99FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_22BDB8254();
  sub_22BB30ED8();
  (*(v18 + 32))(a9, a1);
  v29[0] = a5;
  v29[1] = a6;
  v29[2] = a7;
  v29[3] = a8;
  v19 = type metadata accessor for AppEntityCandidateGenerator(0, v29);
  v20 = v19[13];
  type metadata accessor for SearchToolExecutor(0, a5, a7, v21);
  sub_22BB30ED8();
  (*(v22 + 32))(a9 + v20, a2);
  v23 = a9 + v19[14];
  v24 = *(a3 + 16);
  *v23 = *a3;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a3 + 32);
  v25 = v19[15];
  type metadata accessor for EntitySearchableItemCandidateGenerator(255, a6, a8, v26);
  sub_22BDBB254();
  sub_22BB30ED8();
  return (*(v27 + 32))(a9 + v25, a4);
}

uint64_t sub_22BBE9B48(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2540, &unk_22BDBCC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBE9BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_22BBE9C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void sub_22BBE9C78(void *a1)
{
  sub_22BDB8254();
  if (v3 <= 0x3F)
  {
    type metadata accessor for SearchToolExecutor(319, a1[2], a1[4], v2);
    if (v4 <= 0x3F)
    {
      sub_22BBEB27C(319);
      if (v6 <= 0x3F)
      {
        type metadata accessor for EntitySearchableItemCandidateGenerator(255, a1[3], a1[5], v5);
        sub_22BDBB254();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22BBE9D48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v96 = sub_22BDB8254();
  v108 = *(v96 - 8);
  v114 = *(v108 + 84);
  v91 = sub_22BDB8E14();
  v106 = *(v91 - 8);
  v4 = *(v106 + 84);
  v90 = sub_22BDBA014();
  v105 = *(v90 - 8);
  v5 = *(v105 + 84);
  v94 = v4;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v105 + 84);
  }

  v85 = *(a3 + 16);
  v104 = *(v85 - 8);
  v88 = *(v104 + 84);
  if (v88 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v104 + 84);
  }

  v78 = sub_22BDB8274();
  v101 = *(v78 - 8);
  v113 = *(v101 + 84);
  if (v113)
  {
    v8 = v113 - 1;
  }

  else
  {
    v8 = 0;
  }

  v80 = sub_22BDBA234();
  v100 = *(v80 - 8);
  v112 = *(v100 + 84);
  v9 = v112 - 1;
  if (!v112)
  {
    v9 = 0;
  }

  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v83 = v8;
  v84 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v82 = v11;
  if (v11 > v7)
  {
    v7 = v11;
  }

  v77 = sub_22BDB89A4();
  v98 = *(v77 - 8);
  v12 = *(v98 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v81 = v13;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v75 = sub_22BDB9774();
  v99 = *(v75 - 8);
  v76 = *(v99 + 84);
  if (v7 <= v76)
  {
    v14 = *(v99 + 84);
  }

  else
  {
    v14 = v7;
  }

  v74 = sub_22BDB9C14();
  v15 = *(v74 - 8);
  v73 = *(v15 + 84);
  if (v14 <= v73)
  {
    v16 = *(v15 + 84);
  }

  else
  {
    v16 = v14;
  }

  v79 = v16;
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v95 = v17;
  if (v17 <= v114)
  {
    v18 = v114;
  }

  else
  {
    v18 = v17;
  }

  v89 = sub_22BDBA764();
  v19 = *(v89 - 8);
  v20 = *(v19 + 84);
  v92 = v20;
  v93 = v5;
  if (v5 > v20)
  {
    v20 = v5;
  }

  v87 = *(a3 + 24);
  v21 = *(v87 - 8);
  v86 = *(v21 + 84);
  if (v86 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v21 + 84);
  }

  v23 = v22 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  if (v18 > v23)
  {
    v23 = v18;
  }

  v103 = v23;
  v110 = *(v108 + 64);
  v24 = *(v105 + 80);
  v25 = *(v104 + 80);
  v26 = *(v100 + 80);
  v27 = *(v98 + 80);
  v28 = *(v99 + 80);
  v29 = *(v15 + 80);
  v30 = *(v105 + 64);
  v31 = *(v104 + 64);
  if (v113)
  {
    v32 = *(v101 + 64);
  }

  else
  {
    v32 = *(v101 + 64) + 1;
  }

  if (v112)
  {
    v33 = *(v100 + 64);
  }

  else
  {
    v33 = *(v100 + 64) + 1;
  }

  v107 = v12;
  if (v12)
  {
    v34 = *(v98 + 64);
  }

  else
  {
    v34 = *(v98 + 64) + 1;
  }

  v109 = v22;
  v35 = *(v99 + 64);
  v36 = *(v19 + 80);
  v37 = *(v21 + 80);
  result = a2;
  if (v22)
  {
    v39 = *(v21 + 64);
  }

  else
  {
    v39 = *(v21 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v40 = *(v105 + 80);
  v41 = *(v101 + 80) & 0xF8 | v26 | 7;
  v42 = *(v106 + 80) & 0xF8 | *(v105 + 80) | v25 | v41 | v27 | v28 | v29;
  v43 = v110 + v42;
  v44 = *(v106 + 64) + v24;
  v45 = v33 + v27 + ((v26 + 16 + ((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26);
  v46 = ((v29 + 8 + ((((v35 + 7 + ((v28 + 40 + ((v34 + 7 + ((v45 + ((v31 + v41 + ((v30 + v25 + (v44 & ~v40)) & ~v25)) & ~v41)) & ~v27)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(v15 + 64);
  v47 = v36 | v24;
  v48 = *(v21 + 80);
  v49 = (v47 | v37);
  v50 = v49 + 40;
  v51 = *(*(v89 - 8) + 64) + v24;
  v52 = v30 + v37;
  v53 = a1;
  if (a2 > v103)
  {
    v54 = v39 + ((v52 + (v51 & ~v40)) & ~v48) + ((v50 + ((v46 + (v43 & ~v42) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v49);
    v55 = 8 * v54;
    if (v54 > 3)
    {
      goto LABEL_60;
    }

    v57 = ((a2 - v103 + ~(-1 << v55)) >> v55) + 1;
    if (HIWORD(v57))
    {
      v56 = *(a1 + v54);
      if (!v56)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    if (v57 > 0xFF)
    {
      v56 = *(a1 + v54);
      if (!*(a1 + v54))
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    if (v57 >= 2)
    {
LABEL_60:
      v56 = *(a1 + v54);
      if (!*(a1 + v54))
      {
        goto LABEL_75;
      }

LABEL_67:
      v58 = (v56 - 1) << v55;
      if (v54 > 3)
      {
        v58 = 0;
      }

      if (v54)
      {
        if (v54 > 3)
        {
          LODWORD(v54) = 4;
        }

        switch(v54)
        {
          case 2:
            LODWORD(v54) = *a1;
            break;
          case 3:
            LODWORD(v54) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v54) = *a1;
            break;
          default:
            LODWORD(v54) = *a1;
            break;
        }
      }

      return v103 + (v54 | v58) + 1;
    }
  }

LABEL_75:
  v59 = v114;
  if (v114 == v103)
  {
    v60 = v96;
    goto LABEL_77;
  }

  v61 = ~v40;
  v53 = ((a1 + v43) & ~v42);
  if (v103 == v95)
  {
    v59 = v94;
    if (v94 == v95)
    {
      v60 = v91;
      goto LABEL_77;
    }

    v53 = ((v53 + v44) & v61);
    v59 = v93;
    if (v93 == v95)
    {
      v60 = v90;
      goto LABEL_77;
    }

    v53 = ((v53 + v30 + v25) & ~v25);
    v59 = v88;
    if (v88 == v95)
    {
      v60 = v85;
      goto LABEL_77;
    }

    v67 = (v53 + v31 + v41) & ~v41;
    if (v84 == v95)
    {
      if (v83 == v82)
      {
        v68 = v113;
        if (v113 >= 2)
        {
          v69 = v78;
          goto LABEL_108;
        }

        return 0;
      }

      v67 = (v26 + 16 + ((((v32 + 7 + v67) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
      v68 = v112;
      v69 = v80;
LABEL_108:
      v70 = sub_22BB3AA28(v67, v68, v69);
      if (v70 >= 2)
      {
        return v70 - 1;
      }

      else
      {
        return 0;
      }
    }

    v67 = (v45 + v67) & ~v27;
    if (v81 == v95)
    {
      v68 = v107;
      if (v107 < 2)
      {
        return 0;
      }

      v69 = v77;
      goto LABEL_108;
    }

    v71 = (v34 + 7 + v67) & 0xFFFFFFFFFFFFFFF8;
    if ((v79 & 0x80000000) != 0)
    {
      v53 = ((v28 + 40 + v71) & ~v28);
      v59 = v76;
      if (v76 == v95)
      {
        v60 = v75;
      }

      else
      {
        v53 = ((v29 + 8 + ((((v53 + v35 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29);
        v59 = v73;
        v60 = v74;
      }

LABEL_77:

      return sub_22BB3AA28(v53, v59, v60);
    }

    v72 = *(v71 + 24);
    if (v72 >= 0xFFFFFFFF)
    {
      LODWORD(v72) = -1;
    }

    return (v72 + 1);
  }

  else
  {
    if (!v109)
    {
      return 0;
    }

    v62 = (v50 + ((v53 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v49;
    v63 = v92;
    if (v92 == v109)
    {
      v64 = v89;
    }

    else
    {
      v62 = (v51 + v62) & v61;
      v63 = v93;
      if (v93 == v109)
      {
        v64 = v90;
      }

      else
      {
        v62 = (v52 + v62) & ~v48;
        v63 = v86;
        v64 = v87;
      }
    }

    v65 = sub_22BB3AA28(v62, v63, v64);
    v66 = v65 != 0;
    result = (v65 - 1);
    if (result == 0 || !v66)
    {
      return 0;
    }
  }

  return result;
}

void sub_22BBEA6A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v103 = sub_22BDB8254();
  v112 = *(v103 - 8);
  v5 = *(v112 + 84);
  v100 = sub_22BDB8E14();
  v120 = *(v100 - 8);
  v6 = *(v120 + 84);
  v99 = sub_22BDBA014();
  v118 = *(v99 - 8);
  v7 = *(v118 + 84);
  v101 = v6;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v118 + 84);
  }

  v96 = *(a4 + 16);
  v115 = *(v96 - 8);
  v98 = *(v115 + 84);
  if (v98 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v115 + 84);
  }

  v88 = sub_22BDB8274();
  v106 = *(v88 - 8);
  v125 = *(v106 + 84);
  if (v125)
  {
    v10 = v125 - 1;
  }

  else
  {
    v10 = 0;
  }

  v87 = sub_22BDBA234();
  v105 = *(v87 - 8);
  v124 = *(v105 + 84);
  v11 = v124 - 1;
  if (!v124)
  {
    v11 = 0;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v95 = v12;
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v93 = v13;
  if (v13 > v9)
  {
    v9 = v13;
  }

  v90 = sub_22BDB89A4();
  v14 = *(v90 - 8);
  v126 = *(v14 + 84);
  v15 = v126 - 1;
  if (!v126)
  {
    v15 = 0;
  }

  v92 = v15;
  if (v15 > v9)
  {
    v9 = v15;
  }

  v85 = sub_22BDB9774();
  v110 = *(v85 - 8);
  v86 = *(v110 + 84);
  if (v9 <= v86)
  {
    v9 = *(v110 + 84);
  }

  v84 = sub_22BDB9C14();
  v109 = *(v84 - 8);
  v83 = *(v109 + 84);
  if (v9 <= v83)
  {
    v16 = *(v109 + 84);
  }

  else
  {
    v16 = v9;
  }

  v89 = v16;
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v104 = v5;
  v102 = v17;
  if (v17 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v17;
  }

  v127 = 0;
  v94 = sub_22BDBA764();
  v19 = *(v94 - 8);
  v20 = *(a4 + 24);
  v108 = v7;
  v97 = *(v19 + 84);
  if (v7 <= v97)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v7;
  }

  v91 = v20;
  v22 = *(v20 - 8);
  v23 = *(v14 + 64);
  v114 = *(v112 + 64);
  v24 = *(v118 + 80);
  v25 = *(v115 + 80);
  v26 = *(v105 + 80);
  v27 = *(v106 + 80) & 0xF8 | v26 | 7;
  v28 = *(v14 + 80);
  v29 = *(v110 + 80);
  v30 = *(v109 + 80);
  v31 = *(v120 + 80) & 0xF8 | v24 | v25 | v27 | v28 | v29 | v30;
  v32 = *(v118 + 64);
  v33 = *(v115 + 64);
  v119 = *(v22 + 84);
  if (v119 > v21)
  {
    v21 = *(v22 + 84);
  }

  if (v21)
  {
    v34 = v21 - 1;
  }

  else
  {
    v34 = 0;
  }

  v121 = v34;
  if (v18 <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v18;
  }

  if (v125)
  {
    v36 = *(v106 + 64);
  }

  else
  {
    v36 = *(v106 + 64) + 1;
  }

  if (v124)
  {
    v37 = *(v105 + 64);
  }

  else
  {
    v37 = *(v105 + 64) + 1;
  }

  v116 = v36 + 7;
  v117 = v26 + 16;
  v113 = v37;
  v38 = ((v26 + 16 + ((((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + v37 + v28;
  v39 = *(v110 + 64);
  if (v126)
  {
    v40 = v23;
  }

  else
  {
    v40 = v23 + 1;
  }

  v41 = *(v120 + 64) + v24;
  v42 = v32 + v25;
  v43 = v33 + v27;
  v111 = v39 + 7;
  v44 = ((v30 + 8 + ((((v39 + 7 + ((v29 + 40 + ((v40 + 7 + ((v38 + ((v33 + v27 + ((v32 + v25 + (v41 & ~v24)) & ~v25)) & ~v27)) & ~v28)) & 0xFFFFFFFFFFFFFFF8)) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v30) + *(v109 + 64);
  v45 = *(v22 + 80);
  v46 = *(v19 + 80) | v24;
  v47 = *(*(v94 - 8) + 64) + v24;
  v48 = *(*(v20 - 8) + 64);
  LOBYTE(v51) = v46 | v45;
  v49 = v32 + v45;
  v50 = ((v49 + (v47 & ~v24)) & ~v45) + v48;
  v51 = v51;
  v52 = (v51 + 40 + ((v44 + ((v114 + v31) & ~v31) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v51;
  if (v21)
  {
    v53 = ((v49 + (v47 & ~v24)) & ~v45) + v48;
  }

  else
  {
    v53 = v50 + 1;
  }

  v54 = v52 + v53;
  v55 = 8 * (v52 + v53);
  if (a3 > v35)
  {
    if (v54 <= 3)
    {
      v57 = ((a3 - v35 + ~(-1 << v55)) >> v55) + 1;
      if (HIWORD(v57))
      {
        v56 = 4;
      }

      else
      {
        if (v57 < 0x100)
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        if (v57 >= 2)
        {
          v56 = v58;
        }

        else
        {
          v56 = 0;
        }
      }
    }

    else
    {
      v56 = 1;
    }

    v127 = v56;
  }

  if (v35 < a2)
  {
    v59 = ~v35 + a2;
    if (v54 < 4)
    {
      v60 = (v59 >> v55) + 1;
      if (v54)
      {
        v65 = v59 & ~(-1 << v55);
        bzero(a1, v54);
        if (v54 == 3)
        {
          *a1 = v65;
          a1[2] = BYTE2(v65);
        }

        else
        {
          if (v54 != 2)
          {
            v74 = v127;
            *a1 = v59;
LABEL_103:
            switch(v74)
            {
              case 1:
                a1[v54] = v60;
                break;
              case 2:
                *&a1[v54] = v60;
                break;
              case 3:
                goto LABEL_158;
              case 4:
                *&a1[v54] = v60;
                break;
              default:
                return;
            }

            return;
          }

          *a1 = v65;
        }
      }
    }

    else
    {
      bzero(a1, v54);
      *a1 = v59;
      v60 = 1;
    }

    v74 = v127;
    goto LABEL_103;
  }

  v61 = ~v26;
  v62 = ~v24;
  v63 = ~v27;
  v64 = ~v28;
  switch(v127)
  {
    case 1:
      a1[v54] = 0;
      if (a2)
      {
        goto LABEL_82;
      }

      return;
    case 2:
      *&a1[v54] = 0;
      if (a2)
      {
        goto LABEL_82;
      }

      return;
    case 3:
LABEL_158:
      __break(1u);
      return;
    case 4:
      *&a1[v54] = 0;
      goto LABEL_81;
    default:
LABEL_81:
      if (!a2)
      {
        return;
      }

LABEL_82:
      v66 = v104;
      if (v104 == v35)
      {
        v67 = a1;
        v68 = a2;
        v69 = v103;
LABEL_84:

        sub_22BB336D0(v67, v68, v66, v69);
        return;
      }

      v67 = (&a1[v114 + v31] & ~v31);
      if (v35 == v102)
      {
        v66 = v101;
        if (v101 == v102)
        {
          v68 = a2;
          v69 = v100;
          goto LABEL_84;
        }

        v67 = (&v67[v41] & v62);
        v66 = v108;
        if (v108 == v102)
        {
          v68 = a2;
LABEL_111:
          v69 = v99;
          goto LABEL_84;
        }

        v67 = (&v67[v42] & ~v25);
        v66 = v98;
        if (v98 == v102)
        {
          v68 = a2;
          v69 = v96;
          goto LABEL_84;
        }

        v77 = (&v67[v43] & v63);
        if (v95 != v102)
        {
          v67 = (&v77[v38] & v64);
          if (v92 == v102)
          {
            v68 = a2 + 1;
            v66 = v126;
            v69 = v90;
          }

          else
          {
            v82 = &v67[v40 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((v89 & 0x80000000) == 0)
            {
              if ((a2 & 0x80000000) != 0)
              {
                *(v82 + 8) = 0u;
                *(v82 + 24) = 0u;
                *v82 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *(v82 + 24) = a2 - 1;
              }

              return;
            }

            v67 = ((v29 + 40 + v82) & ~v29);
            v66 = v86;
            if (v86 == v102)
            {
              v68 = a2;
              v69 = v85;
            }

            else
            {
              v67 = ((v30 + 8 + (((&v67[v111] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v30);
              v68 = a2;
              v66 = v83;
              v69 = v84;
            }
          }

          goto LABEL_84;
        }

        if (v93 >= a2)
        {
          if (v10 == v93)
          {
            v68 = a2 + 1;
            v67 = (&v67[v43] & v63);
            v66 = v125;
            v69 = v88;
          }

          else
          {
            v67 = ((v117 + (((&v77[v116] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v61);
            v68 = a2 + 1;
            v66 = v124;
            v69 = v87;
          }

          goto LABEL_84;
        }

        v78 = ((v117 + (((v116 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v61) + v113;
        if (v78 <= 3)
        {
          v79 = ~(-1 << (8 * (((v117 + (((v116 & 0xF8) + 23) & 0xF8)) & v61) + v113)));
        }

        else
        {
          v79 = -1;
        }

        if (v78)
        {
          v80 = v79 & (~v93 + a2);
          if (v78 <= 3)
          {
            v81 = ((v117 + (((v116 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v61) + v113;
          }

          else
          {
            v81 = 4;
          }

          bzero(v77, v78);
          switch(v81)
          {
            case 2:
              *v77 = v80;
              break;
            case 3:
              *v77 = v80;
              v77[2] = BYTE2(v80);
              break;
            case 4:
              *v77 = v80;
              break;
            default:
              *v77 = v80;
              break;
          }
        }
      }

      else
      {
        v70 = (v51 + 40 + (&v67[v44 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v51;
        if (v121 >= a2)
        {
          if (a2 < v21)
          {
            v66 = v97;
            if (v97 == v21)
            {
              v68 = a2 + 1;
              v67 = ((v51 + 40 + (&v67[v44 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v51);
              v69 = v94;
              goto LABEL_84;
            }

            v67 = ((v47 + v70) & v62);
            v66 = v108;
            if (v108 != v21)
            {
              v67 = (&v67[v49] & ~v45);
              v68 = a2 + 1;
              v66 = v119;
              v69 = v91;
              goto LABEL_84;
            }

            v68 = a2 + 1;
            goto LABEL_111;
          }

          if (v50 <= 3)
          {
            v75 = ~(-1 << (8 * v50));
          }

          else
          {
            v75 = -1;
          }

          if (v50)
          {
            v72 = v75 & (a2 - v21);
            if (v50 <= 3)
            {
              v76 = v50;
            }

            else
            {
              v76 = 4;
            }

            bzero(((v51 + 40 + (&v67[v44 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v51), v50);
            switch(v76)
            {
              case 2:
LABEL_141:
                *v70 = v72;
                break;
              case 3:
LABEL_139:
                *v70 = v72;
                *(v70 + 2) = BYTE2(v72);
                break;
              case 4:
LABEL_140:
                *v70 = v72;
                break;
              default:
LABEL_125:
                *v70 = v72;
                break;
            }
          }
        }

        else
        {
          if (v53 <= 3)
          {
            v71 = ~(-1 << (8 * v53));
          }

          else
          {
            v71 = -1;
          }

          if (v53)
          {
            v72 = v71 & (~v121 + a2);
            if (v53 <= 3)
            {
              v73 = v53;
            }

            else
            {
              v73 = 4;
            }

            bzero(((v51 + 40 + (&v67[v44 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v51), v53);
            switch(v73)
            {
              case 2:
                goto LABEL_141;
              case 3:
                goto LABEL_139;
              case 4:
                goto LABEL_140;
              default:
                goto LABEL_125;
            }
          }
        }
      }

      return;
  }
}