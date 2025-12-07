double MLS.OutgoingEventType.allMemberEvent()@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v680 = a2;
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  *&v686 = a1[2];
  v3 = v686;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v7 = type metadata accessor for MLS.OutgoingErrorOccurred(0, &v686);
  *(&v675 + 1) = *(v7 - 8);
  v676 = v7;
  MEMORY[0x28223BE20](v7);
  *&v675 = &v616 - v8;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v9 = type metadata accessor for MLS.OutgoingGroupRepaired(0, &v686);
  v672 = *(v9 - 8);
  v673 = v9;
  MEMORY[0x28223BE20](v9);
  v671 = (&v616 - v10);
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v655 = type metadata accessor for MLS.OutgoingProposalCommitted(0, &v686);
  v674 = *(v655 - 8);
  MEMORY[0x28223BE20](v655);
  v645 = &v616 - v11;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v656 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(0, &v686);
  v677 = *(v656 - 1);
  MEMORY[0x28223BE20](v656);
  v646 = &v616 - v12;
  v654 = type metadata accessor for MLS.OutgoingGroupNameChange(0, v4, v5, v13);
  v670 = *(v654 - 8);
  MEMORY[0x28223BE20](v654);
  v652 = &v616 - v14;
  v650 = type metadata accessor for MLS.OutgoingDowngrade(0, v4, v5, v15);
  v667 = *(v650 - 8);
  MEMORY[0x28223BE20](v650);
  v642 = &v616 - v16;
  v641 = type metadata accessor for MLS.OutgoingApplicationSend(0, v4, v5, v17);
  v666 = *(v641 - 8);
  MEMORY[0x28223BE20](v641);
  v640 = &v616 - v18;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v653 = type metadata accessor for MLS.OutgoingRecreateGroup(0, &v686);
  v669 = *(v653 - 1);
  MEMORY[0x28223BE20](v653);
  v644 = &v616 - v19;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v651 = type metadata accessor for MLS.OutgoingResurrectGroup(0, &v686);
  v668 = *(v651 - 1);
  MEMORY[0x28223BE20](v651);
  v643 = &v616 - v20;
  v22 = type metadata accessor for MLS.OutgoingFailureToDecrypt(0, v4, v5, v21);
  v664 = *(v22 - 1);
  v665 = v22;
  MEMORY[0x28223BE20](v22);
  v638 = &v616 - v23;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v639 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(0, &v686);
  v663 = *(v639 - 8);
  MEMORY[0x28223BE20](v639);
  v637 = &v616 - v24;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v649 = type metadata accessor for MLS.OutgoingResync(0, &v686);
  v662 = *(v649 - 8);
  MEMORY[0x28223BE20](v649);
  v635 = &v616 - v25;
  v647 = type metadata accessor for MLS.OutgoingKeyUpdate(0, v4, v5, v26);
  v658 = *(v647 - 8);
  MEMORY[0x28223BE20](v647);
  v633 = &v616 - v27;
  v632 = type metadata accessor for MLS.OutgoingRemoveSelf(0, v4, v5, v28);
  v657 = *(v632 - 8);
  MEMORY[0x28223BE20](v632);
  v631 = &v616 - v29;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v648 = type metadata accessor for MLS.OutgoingKickMember(0, &v686);
  v661 = *(v648 - 1);
  MEMORY[0x28223BE20](v648);
  v659 = &v616 - v30;
  *&v686 = v3;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *(&v687 + 1) = v5;
  v636 = type metadata accessor for MLS.OutgoingAddMember(0, &v686);
  v660 = *(v636 - 8);
  MEMORY[0x28223BE20](v636);
  v634 = &v616 - v31;
  v683 = type metadata accessor for Optional();
  v685 = *(v683 - 8);
  v32 = MEMORY[0x28223BE20](v683);
  v630 = &v616 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v629 = &v616 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v628 = &v616 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v627 = &v616 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v626 = &v616 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v625 = &v616 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v624 = &v616 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v623 = &v616 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v622 = &v616 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v621 = &v616 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v620 = &v616 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v619 = &v616 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v618 = &v616 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v617 = &v616 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v616 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v616 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v616 - v66;
  v678 = v6;
  v679 = v3;
  *&v686 = v3;
  v684 = v4;
  *(&v686 + 1) = v4;
  *&v687 = v6;
  *&v681 = v5;
  *(&v687 + 1) = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup(0, &v686);
  v69 = *(Group - 1);
  v70 = MEMORY[0x28223BE20](Group);
  v72 = (&v616 - v71);
  MEMORY[0x28223BE20](v70);
  v74 = &v616 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v74, v682, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v176 = v634;
      v177 = v636;
      (*(v660 + 32))(v634, v74, v636);
      v178 = *v176;
      v682 = *(v176 + 1);
      v179 = *(v176 + 3);
      *(&v675 + 1) = *(v176 + 2);
      v676 = v178;
      v180 = v685;
      v181 = v683;
      (*(v685 + 16))(v65, &v176[v177[14]], v683);
      v103 = v684;
      v182 = *(v684 - 8);
      v183 = (*(v182 + 48))(v65, 1, v684);
      v677 = v179;
      if (v183 == 1)
      {
        v184 = *(v180 + 8);

        v184(v65, v181);
        v683 = 0;
        *&v675 = 0xF000000000000000;
      }

      else
      {

        v271 = v693;
        v272 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v271)
        {
          (*(v660 + 8))(v176, v177);

          v248 = *(v182 + 8);
          v249 = v65;
          goto LABEL_47;
        }

        v693 = 0;
        v480 = *(v182 + 8);
        v683 = v272;
        *&v675 = v273;
        v480(v65, v103);
      }

      v667 = &v616;
      v481 = *&v176[v177[15]];
      v482 = &v176[v177[16]];
      v483 = *(v482 + 1);
      *&v681 = *v482;
      v672 = v483;
      v673 = v481;
      v484 = *(v482 + 3);
      v685 = *(v482 + 2);
      v485 = v177[18];
      v486 = &v176[v177[17]];
      v487 = v486[1];
      v674 = *v486;
      v670 = v487;
      v671 = v484;
      v489 = v486[2];
      v668 = v486[3];
      v488 = v668;
      v669 = v489;
      v665 = *&v176[v485];
      *&v686 = v665;
      MEMORY[0x28223BE20](v481);
      v666 = &v616 - 6;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v103;
      *(&v616 - 2) = v678;
      *(&v616 - 1) = v490;

      outlined copy of Data._Representation(v685, v484);

      outlined copy of Data._Representation(v489, v488);
      v491 = v177;
      v492 = type metadata accessor for Set();

      WitnessTable = swift_getWitnessTable();
      v494 = v693;
      v496 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType.allMemberEvent(), v666, v492, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v495);
      v693 = v494;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v496);

      v497 = v491[20];
      v498 = &v176[v491[19]];
      v499 = *v498;
      v500 = v498[1];
      v502 = *&v176[v497];
      v501 = *&v176[v497 + 8];
      v503 = &v176[v491[21]];
      v504 = *v503;
      v505 = v503[1];
      outlined copy of Data._Representation(v499, v500);
      outlined copy of Data?(v502, v501);
      outlined copy of Data._Representation(v504, v505);
      (*(v660 + 8))(v176, v491);
      *&v686 = v676;
      *(&v686 + 1) = v682;
      *&v687 = *(&v675 + 1);
      *(&v687 + 1) = v677;
      *&v688 = v683;
      *(&v688 + 1) = v675;
      *&v689[0] = v673;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v672;
      *(&v689[1] + 1) = v685;
      *&v689[2] = v671;
      *(&v689[2] + 1) = v674;
      *&v689[3] = v670;
      *(&v689[3] + 1) = v669;
      *&v689[4] = v668;
      *(&v689[4] + 1) = v684;
      *&v506 = v499;
      *(&v506 + 1) = v500;
      *&v507 = v502;
      *(&v507 + 1) = v501;
      v689[6] = v507;
      v689[5] = v506;
      *&v689[7] = v504;
      *(&v689[7] + 1) = v505;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi0_(&v686);
      goto LABEL_112;
    case 2u:
      v131 = v659;
      v132 = v648;
      (*(v661 + 32))(v659, v74, v648);
      v133 = *(v131 + 1);
      v682 = *v131;
      v134 = *(v131 + 3);
      v677 = *(v131 + 2);
      v135 = v685;
      v136 = v683;
      (*(v685 + 16))(v62, &v131[v132[14]], v683);
      v137 = v684;
      v138 = *(v684 - 8);
      if ((*(v138 + 48))(v62, 1, v684) == 1)
      {
        v139 = *(v135 + 8);

        v139(v62, v136);
        v685 = 0;
        v683 = 0xF000000000000000;
        *(&v675 + 1) = v133;
        v676 = v134;
        v140 = v681;
      }

      else
      {

        v254 = v133;
        v140 = v681;
        v255 = v693;
        v256 = MLS.ClientContext.dataRepresentation.getter(v137, v681);
        if (v255)
        {
          (*(v661 + 8))(v659, v132);

          (*(v138 + 8))(v62, v137);
          return result;
        }

        v693 = 0;
        v407 = *(v138 + 8);
        v685 = v256;
        v683 = v257;
        v407(v62, v137);
        *(&v675 + 1) = v254;
        v676 = v134;
      }

      v671 = &v616;
      v408 = v659;
      v409 = *&v659[v132[15]];
      v410 = &v659[v132[16]];
      v411 = *(v410 + 1);
      *&v681 = *v410;
      v674 = v411;
      *&v675 = v409;
      v412 = *(v410 + 2);
      v672 = *(v410 + 3);
      v413 = v672;
      v673 = v412;
      *&v686 = *&v659[v132[17]];
      MEMORY[0x28223BE20](v409);
      v670 = &v616 - 6;
      v414 = v678;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v137;
      *(&v616 - 2) = v414;
      *(&v616 - 1) = v140;

      outlined copy of Data._Representation(v412, v413);
      v415 = type metadata accessor for Set();

      v416 = swift_getWitnessTable();
      v417 = v693;
      v419 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v670, v415, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v416, MEMORY[0x277D84AC0], v418);
      v693 = v417;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v419);

      v420 = v648;
      v421 = v648[19];
      v422 = &v408[v648[18]];
      v423 = *v422;
      v424 = v422[1];
      v426 = *&v408[v421];
      v425 = *&v408[v421 + 8];
      v427 = &v408[v648[20]];
      v428 = *v427;
      v429 = v427[1];
      outlined copy of Data._Representation(v423, v424);
      outlined copy of Data?(v426, v425);
      outlined copy of Data._Representation(v428, v429);
      (*(v661 + 8))(v408, v420);
      *&v686 = v682;
      *(&v686 + 1) = *(&v675 + 1);
      *&v687 = v677;
      *(&v687 + 1) = v676;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v675;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v674;
      *(&v689[1] + 1) = v673;
      *&v689[2] = v672;
      *(&v689[2] + 1) = v684;
      *&v430 = v423;
      *(&v430 + 1) = v424;
      *&v431 = v426;
      *(&v431 + 1) = v425;
      v689[4] = v431;
      v689[3] = v430;
      *&v689[5] = v428;
      *(&v689[5] + 1) = v429;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi1_(&v686);
      goto LABEL_112;
    case 3u:
      v153 = v631;
      v154 = v74;
      v155 = v632;
      (*(v657 + 32))(v631, v154, v632);
      v156 = *v153;
      v682 = *(v153 + 1);
      v157 = *(v153 + 3);
      v678 = *(v153 + 2);
      v679 = v156;
      v158 = v685;
      v159 = v617;
      v160 = v683;
      (*(v685 + 16))(v617, &v153[v155[10]], v683);
      v161 = v684;
      v162 = *(v684 - 8);
      if ((*(v162 + 48))(v159, 1, v684) == 1)
      {
        v163 = *(v158 + 8);

        v163(v159, v160);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v261 = v693;
        v262 = MLS.ClientContext.dataRepresentation.getter(v161, v681);
        if (v261)
        {
          v264 = v657;
          goto LABEL_72;
        }

        v693 = 0;
        v436 = *(v162 + 8);
        v685 = v262;
        v683 = v263;
        v436(v159, v161);
      }

      v437 = v157;
      v438 = v155[12];
      v439 = *&v153[v155[11]];
      v440 = v155;
      v441 = *&v153[v438];
      v442 = *&v153[v438 + 8];
      v443 = *&v153[v438 + 16];
      v444 = *&v153[v438 + 24];

      outlined copy of Data._Representation(v443, v444);
      (*(v657 + 8))(v153, v440);
      *&v686 = v679;
      *(&v686 + 1) = v682;
      *&v687 = v678;
      *(&v687 + 1) = v437;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v439;
      *(&v689[0] + 1) = v441;
      *&v689[1] = v442;
      *(&v689[1] + 1) = v443;
      *&v689[2] = v444;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi2_(&v686);
      goto LABEL_108;
    case 4u:
      v96 = v633;
      v97 = v647;
      (*(v658 + 32))(v633, v74, v647);
      v111 = *v96;
      v682 = *(v96 + 1);
      v112 = *(v96 + 3);
      v678 = *(v96 + 2);
      v679 = v111;
      v113 = v685;
      v101 = v618;
      v114 = v683;
      (*(v685 + 16))(v618, &v96[v97[10]], v683);
      v103 = v684;
      v104 = *(v684 - 8);
      if ((*(v104 + 48))(v101, 1, v684) == 1)
      {
        v115 = *(v113 + 8);

        v115(v101, v114);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v242 = v693;
        v243 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v242)
        {
          v238 = v658;
          goto LABEL_46;
        }

        v693 = 0;
        v329 = *(v104 + 8);
        v685 = v243;
        v683 = v244;
        v329(v101, v103);
      }

      v684 = v112;
      v330 = *&v96[v97[11]];
      v331 = &v96[v97[12]];
      v332 = *(v331 + 1);
      *&v681 = *v331;
      v676 = v332;
      v677 = v330;
      v333 = *(v331 + 2);
      v334 = *(v331 + 3);
      v335 = v97[14];
      v336 = &v96[v97[13]];
      v337 = *(v336 + 1);
      *&v675 = *v336;
      *(&v675 + 1) = v334;
      v339 = *&v96[v335];
      v338 = *&v96[v335 + 8];
      v340 = &v96[v97[15]];
      v341 = *v340;
      v342 = v340[1];

      outlined copy of Data._Representation(v333, v334);
      v343 = v675;
      outlined copy of Data._Representation(v675, v337);
      outlined copy of Data?(v339, v338);
      outlined copy of Data._Representation(v341, v342);
      (*(v658 + 8))(v96, v647);
      *&v686 = v679;
      *(&v686 + 1) = v682;
      *&v687 = v678;
      *(&v687 + 1) = v684;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v677;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v676;
      *&v344 = v333;
      *(&v344 + 1) = *(&v675 + 1);
      *&v345 = v343;
      *(&v345 + 1) = v337;
      *(&v689[2] + 8) = v345;
      *&v345 = v339;
      *(&v345 + 1) = v338;
      *(&v689[1] + 8) = v344;
      *&v344 = v341;
      *(&v344 + 1) = v342;
      *(&v689[4] + 8) = v344;
      *(&v689[3] + 8) = v345;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi3_(&v686);
      goto LABEL_108;
    case 5u:
      v185 = v635;
      v186 = v649;
      (*(v662 + 32))(v635, v74, v649);
      v187 = *v185;
      v682 = *(v185 + 1);
      v188 = *(v185 + 3);
      v678 = *(v185 + 2);
      v679 = v187;
      v189 = v685;
      v190 = v619;
      v191 = v683;
      (*(v685 + 16))(v619, &v185[v186[14]], v683);
      v192 = v684;
      v193 = *(v684 - 8);
      if ((*(v193 + 48))(v190, 1, v684) == 1)
      {
        v194 = *(v189 + 8);

        v194(v190, v191);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v274 = v693;
        v275 = MLS.ClientContext.dataRepresentation.getter(v192, v681);
        if (v274)
        {
          (*(v662 + 8))(v185, v186);

          (*(v193 + 8))(v190, v192);
          return result;
        }

        v693 = 0;
        v508 = *(v193 + 8);
        v685 = v275;
        v683 = v276;
        v508(v190, v192);
      }

      v684 = v188;
      v509 = *&v185[v186[15]];
      v510 = &v185[v186[16]];
      v511 = *(v510 + 1);
      *&v681 = *v510;
      v676 = v511;
      v677 = v509;
      v512 = *(v510 + 2);
      v513 = *(v510 + 3);
      v514 = v186[18];
      v515 = &v185[v186[17]];
      v516 = *(v515 + 1);
      *&v675 = *v515;
      *(&v675 + 1) = v513;
      v518 = *&v185[v514];
      v517 = *&v185[v514 + 8];
      v519 = &v185[v186[19]];
      v520 = *v519;
      v521 = v519[1];

      outlined copy of Data._Representation(v512, v513);
      v522 = v675;
      outlined copy of Data._Representation(v675, v516);
      outlined copy of Data?(v518, v517);
      outlined copy of Data._Representation(v520, v521);
      (*(v662 + 8))(v185, v649);
      *&v686 = v679;
      *(&v686 + 1) = v682;
      *&v687 = v678;
      *(&v687 + 1) = v684;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v677;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v676;
      *&v523 = v512;
      *(&v523 + 1) = *(&v675 + 1);
      *&v524 = v522;
      *(&v524 + 1) = v516;
      *(&v689[2] + 8) = v524;
      *&v524 = v518;
      *(&v524 + 1) = v517;
      *(&v689[1] + 8) = v523;
      *&v523 = v520;
      *(&v523 + 1) = v521;
      *(&v689[4] + 8) = v523;
      *(&v689[3] + 8) = v524;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi4_(&v686);
      goto LABEL_108;
    case 6u:
      v205 = v637;
      v206 = v639;
      (*(v663 + 32))(v637, v74, v639);
      v207 = *v205;
      v682 = *(v205 + 1);
      v208 = *(v205 + 3);
      v676 = *(v205 + 2);
      v677 = v207;
      v209 = v685;
      v210 = v620;
      v211 = v683;
      (*(v685 + 16))(v620, &v205[v206[14]], v683);
      v212 = v684;
      v213 = *(v684 - 8);
      if ((*(v213 + 48))(v210, 1, v684) == 1)
      {
        v214 = *(v209 + 8);

        v214(v210, v211);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v280 = v693;
        v281 = MLS.ClientContext.dataRepresentation.getter(v212, v681);
        v693 = v280;
        if (v280)
        {
          (*(v663 + 8))(v205, v206);

          (*(v213 + 8))(v210, v212);
          return result;
        }

        v554 = *(v213 + 8);
        v685 = v281;
        v683 = v282;
        v554(v210, v212);
      }

      v684 = v208;
      v555 = *&v205[v206[15]];
      v556 = v678;
      v557 = v206;
      v558 = *(v678 + 40);

      v558(&v686, v679, v556);
      v681 = v686;
      v559 = v687;
      LODWORD(v679) = BYTE8(v687);
      v560 = &v205[v206[17]];
      v562 = *v560;
      v561 = *(v560 + 1);
      v563 = *&v205[v206[18]];
      v564 = *(v663 + 8);

      v564(v205, v557);
      *&v686 = v677;
      *(&v686 + 1) = v682;
      *&v687 = v676;
      *(&v687 + 1) = v684;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v555;
      *(v689 + 8) = v681;
      *(&v689[1] + 1) = v559;
      LOBYTE(v689[2]) = v679;
      *(&v689[2] + 1) = v562;
      *&v689[3] = v561;
      *(&v689[3] + 1) = v563;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi5_(&v686);
      goto LABEL_108;
    case 7u:
      v164 = v665;
      v165 = v638;
      (*(v664 + 32))(v638, v74, v665);
      v166 = *(v165 + 1);
      v682 = *v165;
      v167 = *(v165 + 3);
      v679 = *(v165 + 2);
      v168 = *(v164 + 10);
      v169 = v685;
      v170 = v621;
      v171 = v683;
      (*(v685 + 16))(v621, &v165[v168], v683);
      v172 = v684;
      v173 = *(v684 - 8);
      if ((*(v173 + 48))(v170, 1, v684) == 1)
      {
        v174 = *(v169 + 8);

        v174(v170, v171);
        v685 = 0;
        v175 = 0xF000000000000000;
      }

      else
      {

        v265 = v693;
        v266 = MLS.ClientContext.dataRepresentation.getter(v172, v681);
        if (v265)
        {
          (*(v664 + 8))(v165, v665);

          (*(v173 + 8))(v170, v172);
          return result;
        }

        v175 = v267;
        v693 = 0;
        v445 = *(v173 + 8);
        v685 = v266;
        v445(v170, v172);
      }

      v446 = v167;
      v447 = v665;
      v448 = *&v165[*(v665 + 11)];
      v449 = *&v165[*(v665 + 12)];
      v450 = *(v664 + 8);

      v450(v165, v447);
      *&v686 = v682;
      *(&v686 + 1) = v166;
      *&v687 = v679;
      *(&v687 + 1) = v446;
      *&v688 = v685;
      *(&v688 + 1) = v175;
      *&v689[0] = v448;
      *(&v689[0] + 1) = v449;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi6_(&v686);
      goto LABEL_108;
    case 8u:
      v221 = v643;
      v222 = v651;
      (*(v668 + 32))(v643, v74, v651);
      v223 = *v221;
      v224 = *(v221 + 1);
      v225 = *(v221 + 3);
      v676 = *(v221 + 2);
      v677 = v223;
      v682 = v225;
      v226 = v685;
      v227 = v622;
      v228 = v683;
      (*(v685 + 16))(v622, &v221[v222[14]], v683);
      v229 = v684;
      v230 = *(v684 - 8);
      if ((*(v230 + 48))(v227, 1, v684) == 1)
      {
        v231 = *(v226 + 8);

        v231(v227, v228);
        v683 = 0;
        *&v675 = v224;
        *(&v675 + 1) = 0xF000000000000000;
      }

      else
      {

        v286 = v693;
        v287 = MLS.ClientContext.dataRepresentation.getter(v229, v681);
        v693 = v286;
        if (v286)
        {
          (*(v668 + 8))(v221, v222);

          (*(v230 + 8))(v227, v229);
          return result;
        }

        v580 = *(v230 + 8);
        v683 = v287;
        *(&v675 + 1) = v288;
        v580(v227, v229);
        *&v675 = v224;
      }

      v666 = &v616;
      v581 = *&v221[v222[15]];
      v582 = &v221[v222[16]];
      v583 = *(v582 + 1);
      *&v681 = *v582;
      v672 = v583;
      v673 = v581;
      v584 = *(v582 + 3);
      v685 = *(v582 + 2);
      v585 = v222[18];
      v586 = &v221[v222[17]];
      v587 = v586[1];
      v674 = *v586;
      v670 = v587;
      v671 = v584;
      v589 = v586[3];
      v669 = v586[2];
      v588 = v669;
      v667 = v589;
      v665 = *&v221[v585];
      *&v686 = v665;
      MEMORY[0x28223BE20](v581);
      v590 = v678;
      v591 = v684;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v591;
      *(&v616 - 2) = v590;
      *(&v616 - 1) = v592;

      outlined copy of Data._Representation(v685, v584);

      outlined copy of Data._Representation(v588, v589);
      v593 = type metadata accessor for Set();

      v594 = swift_getWitnessTable();
      v595 = v693;
      v597 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), (&v616 - 6), v593, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v594, MEMORY[0x277D84AC0], v596);
      v693 = v595;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v597);

      v598 = v651;
      v599 = v651[20];
      v600 = &v221[v651[19]];
      v601 = *v600;
      v602 = v600[1];
      v603 = *&v221[v599];
      v604 = *&v221[v599 + 8];
      v605 = &v221[v651[21]];
      v606 = *v605;
      v607 = v605[1];
      outlined copy of Data._Representation(v601, v602);
      outlined copy of Data?(v603, v604);
      outlined copy of Data._Representation(v606, v607);
      (*(v668 + 8))(v221, v598);
      *&v686 = v677;
      *(&v686 + 1) = v675;
      *&v687 = v676;
      *(&v687 + 1) = v682;
      *&v688 = v683;
      *(&v688 + 1) = *(&v675 + 1);
      *&v689[0] = v673;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v672;
      *(&v689[1] + 1) = v685;
      *&v689[2] = v671;
      *(&v689[2] + 1) = v674;
      *&v689[3] = v670;
      *(&v689[3] + 1) = v669;
      *&v689[4] = v667;
      *(&v689[4] + 1) = v684;
      *&v608 = v601;
      *(&v608 + 1) = v602;
      *&v609 = v603;
      *(&v609 + 1) = v604;
      v689[6] = v609;
      v689[5] = v608;
      *&v689[7] = v606;
      *(&v689[7] + 1) = v607;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(&v686);
      goto LABEL_112;
    case 9u:
      v121 = v644;
      v122 = v653;
      (*(v669 + 32))(v644, v74, v653);
      v123 = *v121;
      v124 = *(v121 + 1);
      v125 = *(v121 + 3);
      v676 = *(v121 + 2);
      v677 = v123;
      v682 = v125;
      v126 = v685;
      v127 = v623;
      v128 = v683;
      (*(v685 + 16))(v623, &v121[v122[14]], v683);
      v103 = v684;
      v129 = *(v684 - 8);
      if ((*(v129 + 48))(v127, 1, v684) == 1)
      {
        v130 = *(v126 + 8);

        v130(v127, v128);
        v683 = 0;
        *&v675 = v124;
        *(&v675 + 1) = 0xF000000000000000;
      }

      else
      {

        v251 = v693;
        v252 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v251)
        {
          (*(v669 + 8))(v121, v122);

          v248 = *(v129 + 8);
          v249 = v127;
          goto LABEL_47;
        }

        v693 = 0;
        v378 = *(v129 + 8);
        v683 = v252;
        *(&v675 + 1) = v253;
        v378(v127, v103);
        *&v675 = v124;
      }

      v666 = &v616;
      v379 = *&v121[v122[15]];
      v380 = &v121[v122[16]];
      v381 = *(v380 + 1);
      *&v681 = *v380;
      v672 = v381;
      v673 = v379;
      v382 = *(v380 + 2);
      v685 = *(v380 + 3);
      v383 = v122[18];
      v384 = &v121[v122[17]];
      v385 = v384[1];
      v674 = *v384;
      v670 = v385;
      v671 = v382;
      v387 = v384[2];
      v667 = v384[3];
      v386 = v667;
      v668 = v387;
      *&v686 = *&v121[v383];
      MEMORY[0x28223BE20](v379);
      v665 = &v616 - 6;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v103;
      *(&v616 - 2) = v678;
      *(&v616 - 1) = v388;

      outlined copy of Data._Representation(v382, v685);

      outlined copy of Data._Representation(v387, v386);
      v389 = v121;
      v390 = type metadata accessor for Set();

      v391 = swift_getWitnessTable();
      v392 = v693;
      v394 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v665, v390, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v391, MEMORY[0x277D84AC0], v393);
      v693 = v392;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v394);

      v395 = v653;
      v396 = v653[20];
      v397 = (v389 + v653[19]);
      v398 = *v397;
      v399 = v397[1];
      v400 = *(v389 + v396);
      v401 = *(v389 + v396 + 8);
      v402 = (v389 + v653[21]);
      v403 = *v402;
      v404 = v402[1];
      outlined copy of Data._Representation(v398, v399);
      outlined copy of Data?(v400, v401);
      outlined copy of Data._Representation(v403, v404);
      (*(v669 + 8))(v389, v395);
      *&v686 = v677;
      *(&v686 + 1) = v675;
      *&v687 = v676;
      *(&v687 + 1) = v682;
      *&v688 = v683;
      *(&v688 + 1) = *(&v675 + 1);
      *&v689[0] = v673;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v672;
      *(&v689[1] + 1) = v671;
      *&v689[2] = v685;
      *(&v689[2] + 1) = v674;
      *&v689[3] = v670;
      *(&v689[3] + 1) = v668;
      *&v689[4] = v667;
      *(&v689[4] + 1) = v684;
      *&v405 = v398;
      *(&v405 + 1) = v399;
      *&v406 = v400;
      *(&v406 + 1) = v401;
      v689[6] = v406;
      v689[5] = v405;
      *&v689[7] = v403;
      *(&v689[7] + 1) = v404;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(&v686);
      goto LABEL_112;
    case 0xAu:
      v153 = v640;
      v215 = v74;
      v155 = v641;
      (v666[4])(v640, v215, v641);
      v216 = *v153;
      v682 = *(v153 + 1);
      v217 = *(v153 + 3);
      v678 = *(v153 + 2);
      v679 = v216;
      v218 = v685;
      v159 = v624;
      v219 = v683;
      (*(v685 + 16))(v624, &v153[v155[10]], v683);
      v161 = v684;
      v162 = *(v684 - 8);
      if ((*(v162 + 48))(v159, 1, v684) == 1)
      {
        v220 = *(v218 + 8);

        v220(v159, v219);
        v685 = 0;
        v683 = 0xF000000000000000;
LABEL_107:
        v566 = v217;
        v567 = v155[12];
        v568 = *&v153[v155[11]];
        v569 = v155;
        v570 = *&v153[v567];
        v571 = *&v153[v567 + 8];
        v572 = *&v153[v567 + 16];
        v573 = *&v153[v567 + 24];

        outlined copy of Data._Representation(v572, v573);
        (v666[1])(v153, v569);
        *&v686 = v679;
        *(&v686 + 1) = v682;
        *&v687 = v678;
        *(&v687 + 1) = v566;
        *&v688 = v685;
        *(&v688 + 1) = v683;
        *&v689[0] = v568;
        *(&v689[0] + 1) = v570;
        *&v689[1] = v571;
        *(&v689[1] + 1) = v572;
        *&v689[2] = v573;
        _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(&v686);
        goto LABEL_108;
      }

      v283 = v693;
      v284 = MLS.ClientContext.dataRepresentation.getter(v161, v681);
      if (!v283)
      {
        v693 = 0;
        v565 = *(v162 + 8);
        v685 = v284;
        v683 = v285;
        v565(v159, v161);
        goto LABEL_107;
      }

      v264 = v666;
LABEL_72:
      (*(v264 + 8))(v153, v155);

      (*(v162 + 8))(v159, v161);
      return result;
    case 0xBu:
      v96 = v642;
      v97 = v650;
      (v667[4])(v642, v74, v650);
      v106 = *v96;
      v682 = *(v96 + 1);
      v107 = *(v96 + 3);
      v678 = *(v96 + 2);
      v679 = v106;
      v108 = v685;
      v101 = v625;
      v109 = v683;
      (*(v685 + 16))(v625, &v96[v97[10]], v683);
      v103 = v684;
      v104 = *(v684 - 8);
      if ((*(v104 + 48))(v101, 1, v684) == 1)
      {
        v110 = *(v108 + 8);

        v110(v101, v109);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v239 = v693;
        v240 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v239)
        {
          v238 = v667;
          goto LABEL_46;
        }

        v693 = 0;
        v311 = *(v104 + 8);
        v685 = v240;
        v683 = v241;
        v311(v101, v103);
      }

      v684 = v107;
      v312 = *&v96[v97[11]];
      v313 = &v96[v97[12]];
      v314 = *(v313 + 1);
      *&v681 = *v313;
      v676 = v314;
      v677 = v312;
      v316 = *(v313 + 2);
      v315 = *(v313 + 3);
      v317 = v97[14];
      v318 = &v96[v97[13]];
      *&v675 = *v318;
      *(&v675 + 1) = v315;
      v319 = v97;
      v320 = *(v318 + 1);
      v322 = *&v96[v317];
      v321 = *&v96[v317 + 8];
      v323 = &v96[v319[15]];
      v325 = *v323;
      v324 = v323[1];

      outlined copy of Data._Representation(v316, v315);
      v326 = v675;
      outlined copy of Data._Representation(v675, v320);
      outlined copy of Data?(v322, v321);
      outlined copy of Data._Representation(v325, v324);
      (v667[1])(v96, v650);
      *&v686 = v679;
      *(&v686 + 1) = v682;
      *&v687 = v678;
      *(&v687 + 1) = v684;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v677;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v676;
      *&v327 = v316;
      *(&v327 + 1) = *(&v675 + 1);
      *&v328 = v326;
      *(&v328 + 1) = v320;
      *(&v689[2] + 8) = v328;
      *&v328 = v322;
      *(&v328 + 1) = v321;
      *(&v689[1] + 8) = v327;
      *&v327 = v325;
      *(&v327 + 1) = v324;
      *(&v689[4] + 8) = v327;
      *(&v689[3] + 8) = v328;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi10_(&v686);
      goto LABEL_108;
    case 0xCu:
      v96 = v652;
      v97 = v654;
      (v670[4])(v652, v74, v654);
      v116 = *v96;
      v682 = *(v96 + 1);
      v117 = *(v96 + 3);
      v678 = *(v96 + 2);
      v679 = v116;
      v118 = v685;
      v101 = v626;
      v119 = v683;
      (*(v685 + 16))(v626, &v96[v97[10]], v683);
      v103 = v684;
      v104 = *(v684 - 8);
      if ((*(v104 + 48))(v101, 1, v684) == 1)
      {
        v120 = *(v118 + 8);

        v120(v101, v119);
        v685 = 0;
        v683 = 0xF000000000000000;
      }

      else
      {

        v245 = v693;
        v246 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v245)
        {
          v238 = v670;
          goto LABEL_46;
        }

        v693 = 0;
        v346 = *(v104 + 8);
        v685 = v246;
        v683 = v247;
        v346(v101, v103);
      }

      v684 = v117;
      v347 = *&v96[v97[11]];
      v348 = &v96[v97[12]];
      v349 = *(v348 + 1);
      *&v681 = *v348;
      v676 = v349;
      v677 = v347;
      v350 = *(v348 + 3);
      *&v675 = *(v348 + 2);
      v351 = v675;
      *(&v675 + 1) = v350;
      v352 = &v96[v97[13]];
      v354 = *v352;
      v353 = v352[1];
      v355 = &v96[v97[14]];
      v357 = *v355;
      v356 = v355[1];
      v673 = v353;
      v674 = v356;
      v358 = v97[16];
      v359 = &v96[v97[15]];
      v361 = *v359;
      v360 = v359[1];
      v668 = v361;
      v669 = v360;
      v362 = &v96[v358];
      v363 = v96;
      v364 = v97;
      v366 = *v362;
      v365 = v362[1];
      v367 = (v363 + v364[17]);
      v369 = *v367;
      v368 = v367[1];
      v671 = v369;
      v672 = v368;

      outlined copy of Data._Representation(v351, v350);
      outlined copy of Data._Representation(v354, v353);
      outlined copy of Data._Representation(v357, v356);
      v370 = v668;
      v371 = v669;
      outlined copy of Data._Representation(v668, v669);
      v372 = v366;
      v373 = v365;
      outlined copy of Data?(v366, v365);
      v374 = v671;
      v375 = v672;
      outlined copy of Data._Representation(v671, v672);
      (v670[1])(v652, v654);
      *&v686 = v679;
      *(&v686 + 1) = v682;
      *&v687 = v678;
      *(&v687 + 1) = v684;
      *&v688 = v685;
      *(&v688 + 1) = v683;
      *&v689[0] = v677;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v676;
      *&v376 = v354;
      *(&v376 + 1) = v673;
      *(&v689[2] + 8) = v376;
      *(&v689[1] + 8) = v675;
      *&v377 = v357;
      *(&v377 + 1) = v674;
      *&v376 = v370;
      *(&v376 + 1) = v371;
      *(&v689[4] + 8) = v376;
      *&v376 = v372;
      *(&v376 + 1) = v373;
      *(&v689[3] + 8) = v377;
      *&v377 = v374;
      *(&v377 + 1) = v375;
      *(&v689[6] + 8) = v377;
      *(&v689[5] + 8) = v376;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi11_(&v686);
      goto LABEL_108;
    case 0xDu:
      v195 = v646;
      v196 = v656;
      (*(v677 + 32))(v646, v74, v656);
      v197 = *v195;
      v682 = *(v195 + 1);
      v198 = *(v195 + 3);
      *&v675 = *(v195 + 2);
      *(&v675 + 1) = v197;
      v199 = v685;
      v200 = v627;
      v201 = v683;
      (*(v685 + 16))(v627, &v195[v196[14]], v683);
      v103 = v684;
      v202 = *(v684 - 8);
      v203 = (*(v202 + 48))(v200, 1, v684);
      v676 = v198;
      if (v203 == 1)
      {
        v204 = *(v199 + 8);

        v204(v200, v201);
        v683 = 0;
        v674 = 0xF000000000000000;
      }

      else
      {

        v277 = v693;
        v278 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
        if (v277)
        {
          (*(v677 + 8))(v195, v196);

          v248 = *(v202 + 8);
          v249 = v200;
          goto LABEL_47;
        }

        v693 = 0;
        v525 = *(v202 + 8);
        v683 = v278;
        v674 = v279;
        v525(v200, v103);
      }

      v666 = &v616;
      v526 = *&v195[v196[15]];
      v527 = &v195[v196[16]];
      v528 = *(v527 + 1);
      *&v681 = *v527;
      v671 = v528;
      v672 = v526;
      v529 = *(v527 + 2);
      v685 = *(v527 + 3);
      v530 = v196[18];
      v531 = &v195[v196[17]];
      v532 = v531[1];
      v673 = *v531;
      v669 = v532;
      v670 = v529;
      v534 = v531[2];
      v667 = v531[3];
      v533 = v667;
      v668 = v534;
      *&v686 = *&v195[v530];
      MEMORY[0x28223BE20](v526);
      v665 = &v616 - 6;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v103;
      *(&v616 - 2) = v678;
      *(&v616 - 1) = v535;

      outlined copy of Data._Representation(v529, v685);

      outlined copy of Data._Representation(v534, v533);
      v536 = v195;
      v537 = type metadata accessor for Set();

      v538 = swift_getWitnessTable();
      v539 = v693;
      v541 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v665, v537, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v538, MEMORY[0x277D84AC0], v540);
      v693 = v539;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v541);

      v542 = v656;
      v543 = v656[20];
      v544 = (v536 + v656[19]);
      v545 = *v544;
      v546 = v544[1];
      v547 = *(v536 + v543);
      v548 = *(v536 + v543 + 8);
      v549 = (v536 + v656[21]);
      v550 = *v549;
      v551 = v549[1];
      outlined copy of Data._Representation(v545, v546);
      outlined copy of Data?(v547, v548);
      outlined copy of Data._Representation(v550, v551);
      (*(v677 + 8))(v536, v542);
      *&v686 = *(&v675 + 1);
      *(&v686 + 1) = v682;
      *&v687 = v675;
      *(&v687 + 1) = v676;
      *&v688 = v683;
      *(&v688 + 1) = v674;
      *&v689[0] = v672;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v671;
      *(&v689[1] + 1) = v670;
      *&v689[2] = v685;
      *(&v689[2] + 1) = v673;
      *&v689[3] = v669;
      *(&v689[3] + 1) = v668;
      *&v689[4] = v667;
      *(&v689[4] + 1) = v684;
      *&v552 = v545;
      *(&v552 + 1) = v546;
      *&v553 = v547;
      *(&v553 + 1) = v548;
      v689[6] = v553;
      v689[5] = v552;
      *&v689[7] = v550;
      *(&v689[7] + 1) = v551;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi12_(&v686);
      goto LABEL_112;
    case 0xEu:
      v96 = v645;
      v97 = v655;
      (*(v674 + 32))(v645, v74, v655);
      v98 = *v96;
      v682 = *(v96 + 1);
      v99 = *(v96 + 3);
      v678 = *(v96 + 2);
      v679 = v98;
      v100 = v685;
      v101 = v628;
      v102 = v683;
      (*(v685 + 16))(v628, &v96[v97[14]], v683);
      v103 = v684;
      v104 = *(v684 - 8);
      if ((*(v104 + 48))(v101, 1, v684) == 1)
      {
        v105 = *(v100 + 8);

        v105(v101, v102);
        v685 = 0;
        v683 = 0xF000000000000000;
LABEL_79:
        v684 = v99;
        v294 = *&v96[v97[15]];
        v295 = &v96[v97[16]];
        v296 = *(v295 + 1);
        *&v681 = *v295;
        v676 = v296;
        v677 = v294;
        v298 = *(v295 + 2);
        v297 = *(v295 + 3);
        v299 = v97[18];
        v300 = &v96[v97[17]];
        *&v675 = *v300;
        *(&v675 + 1) = v297;
        v301 = v97;
        v302 = *(v300 + 1);
        v304 = *&v96[v299];
        v303 = *&v96[v299 + 8];
        v305 = &v96[v301[19]];
        v307 = *v305;
        v306 = v305[1];

        outlined copy of Data._Representation(v298, v297);
        v308 = v675;
        outlined copy of Data._Representation(v675, v302);
        outlined copy of Data?(v304, v303);
        outlined copy of Data._Representation(v307, v306);
        (*(v674 + 8))(v96, v655);
        *&v686 = v679;
        *(&v686 + 1) = v682;
        *&v687 = v678;
        *(&v687 + 1) = v684;
        *&v688 = v685;
        *(&v688 + 1) = v683;
        *&v689[0] = v677;
        *(&v689[0] + 1) = v681;
        *&v689[1] = v676;
        *&v309 = v298;
        *(&v309 + 1) = *(&v675 + 1);
        *&v310 = v308;
        *(&v310 + 1) = v302;
        *(&v689[2] + 8) = v310;
        *&v310 = v304;
        *(&v310 + 1) = v303;
        *(&v689[1] + 8) = v309;
        *&v309 = v307;
        *(&v309 + 1) = v306;
        *(&v689[4] + 8) = v309;
        *(&v689[3] + 8) = v310;
        _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi13_(&v686);
        goto LABEL_108;
      }

      v235 = v693;
      v236 = MLS.ClientContext.dataRepresentation.getter(v103, v681);
      if (!v235)
      {
        v693 = 0;
        v293 = *(v104 + 8);
        v685 = v236;
        v683 = v237;
        v293(v101, v103);
        goto LABEL_79;
      }

      v238 = v674;
LABEL_46:
      (v238[1])(v96, v97);

      v248 = *(v104 + 8);
      v249 = v101;
LABEL_47:
      v248(v249, v103);
      return result;
    case 0xFu:
      v141 = v671;
      v142 = v673;
      (*(v672 + 32))(v671, v74, v673);
      v144 = *v141;
      v143 = v141[1];
      v145 = v141[3];
      v682 = v141[2];
      v146 = *(v142 + 56);
      v147 = v685;
      v148 = v141 + v146;
      v91 = v629;
      v149 = v683;
      (*(v685 + 16))(v629, v148, v683);
      v88 = v684;
      v92 = *(v684 - 8);
      if ((*(v92 + 48))(v91, 1, v684) == 1)
      {
        *&v681 = v144;
        v150 = *(v147 + 8);

        v150(v91, v149);
        v151 = 0;
        v152 = 0xF000000000000000;
      }

      else
      {

        v258 = v693;
        v259 = MLS.ClientContext.dataRepresentation.getter(v88, v681);
        v693 = v258;
        if (v258)
        {
          (*(v672 + 8))(v671, v673);

          goto LABEL_55;
        }

        v151 = v259;
        v152 = v260;
        *&v681 = v144;
        (*(v92 + 8))(v91, v88);
      }

      v432 = v673;
      v433 = v671;
      v434 = *(v671 + *(v673 + 60));
      v435 = *(v672 + 8);

      v435(v433, v432);
      *&v686 = v681;
      *(&v686 + 1) = v143;
      *&v687 = v682;
      *(&v687 + 1) = v145;
      *&v688 = v151;
      *(&v688 + 1) = v152;
      *&v689[0] = v434;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi14_(&v686);
      goto LABEL_108;
    case 0x10u:
      v84 = v675;
      v85 = v676;
      (*(*(&v675 + 1) + 32))(v675, v74, v676);
      v86 = *(v84 + 1);
      v682 = *v84;
      v87 = *(v84 + 3);
      v677 = *(v84 + 2);

      *&v686 = v679;
      v88 = v684;
      *(&v686 + 1) = v684;
      *&v687 = v678;
      v89 = v681;
      *(&v687 + 1) = v681;
      v90 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(0, &v686);
      MLS.OutgoingErrorOccurred.Trigger.allMemberTrigger()(v90, v691);
      v91 = v630;
      (*(v685 + 16))(v630, &v84[*(v85 + 60)], v683);
      v92 = *(v88 - 8);
      if ((*(v92 + 48))(v91, 1, v88) == 1)
      {
        v93 = 0;
        v94 = 0xF000000000000000;
        v95 = v683;
      }

      else
      {
        v232 = v693;
        v233 = MLS.ClientContext.dataRepresentation.getter(v88, v89);
        v693 = v232;
        if (v232)
        {

          outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(v691);
          (*(*(&v675 + 1) + 8))(v675, v676);
LABEL_55:
          (*(v92 + 8))(v91, v88);
          return result;
        }

        v93 = v233;
        v94 = v234;
        v685 = v92;
        v95 = v88;
      }

      (*(v685 + 8))(v91, v95);
      v289 = v676;
      v290 = v675;
      v291 = *(v675 + *(v676 + 64));
      v292 = *(*(&v675 + 1) + 8);

      v292(v290, v289);
      v689[3] = v691[4];
      v689[4] = v691[5];
      v689[5] = v691[6];
      LOBYTE(v689[6]) = v692;
      v688 = v691[0];
      v689[0] = v691[1];
      v689[1] = v691[2];
      v689[2] = v691[3];
      *&v686 = v682;
      *(&v686 + 1) = v86;
      *&v687 = v677;
      *(&v687 + 1) = v87;
      *(&v689[6] + 1) = v93;
      *&v689[7] = v94;
      *(&v689[7] + 1) = v291;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(&v686);
LABEL_108:
      v574 = v689[6];
      v575 = v680;
      *(v680 + 128) = v689[5];
      *(v575 + 144) = v574;
      *(v575 + 160) = v689[7];
      *(v575 + 176) = v690;
      v576 = v689[2];
      *(v575 + 64) = v689[1];
      *(v575 + 80) = v576;
      v577 = v689[4];
      *(v575 + 96) = v689[3];
      *(v575 + 112) = v577;
      v578 = v687;
      *v575 = v686;
      *(v575 + 16) = v578;
      result = *&v688;
      v579 = v689[0];
      *(v575 + 32) = v688;
      *(v575 + 48) = v579;
      return result;
    default:
      v677 = v69;
      (*(v69 + 32))(v72, v74, Group);
      v76 = *v72;
      v682 = v72[1];
      v77 = v72[3];
      *(&v675 + 1) = v72[2];
      v676 = v76;
      v78 = v685;
      v79 = v72;
      v80 = v683;
      (*(v685 + 16))(v67, v72 + Group[14], v683);
      v81 = v684;
      v82 = *(v684 - 8);
      if ((*(v82 + 48))(v67, 1, v684) == 1)
      {
        v83 = *(v78 + 8);

        v83(v67, v80);
        v683 = 0;
        v674 = v77;
        *&v675 = 0xF000000000000000;
      }

      else
      {

        v268 = v693;
        v269 = MLS.ClientContext.dataRepresentation.getter(v81, v681);
        if (v268)
        {
          (*(v677 + 8))(v79, Group);

          (*(v82 + 8))(v67, v81);
          return result;
        }

        v693 = 0;
        v451 = *(v82 + 8);
        v683 = v269;
        *&v675 = v270;
        v451(v67, v81);
        v674 = v77;
      }

      v666 = &v616;
      v452 = v79;
      v453 = *(v79 + Group[15]);
      v454 = (v79 + Group[16]);
      v455 = v454[1];
      *&v681 = *v454;
      v671 = v455;
      v672 = v453;
      v456 = v454[2];
      v685 = v454[3];
      v457 = Group[18];
      v458 = (v452 + Group[17]);
      v459 = v458[1];
      v673 = *v458;
      v669 = v459;
      v670 = v456;
      v461 = v458[2];
      v667 = v458[3];
      v460 = v667;
      v668 = v461;
      v664 = *(v452 + v457);
      *&v686 = v664;
      MEMORY[0x28223BE20](v453);
      v665 = &v616 - 6;
      *(&v616 - 4) = v679;
      *(&v616 - 3) = v81;
      *(&v616 - 2) = v678;
      *(&v616 - 1) = v462;

      outlined copy of Data._Representation(v456, v685);

      outlined copy of Data._Representation(v461, v460);
      v463 = Group;
      v464 = type metadata accessor for Set();

      v465 = swift_getWitnessTable();
      v466 = v693;
      v468 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v665, v464, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v465, MEMORY[0x277D84AC0], v467);
      v693 = v466;

      v684 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v468);

      v469 = v463[20];
      v470 = (v452 + v463[19]);
      v471 = *v470;
      v472 = v470[1];
      v473 = *(v452 + v469);
      v474 = *(v452 + v469 + 8);
      v475 = (v452 + v463[21]);
      v476 = *v475;
      v477 = v475[1];
      outlined copy of Data._Representation(v471, v472);
      outlined copy of Data?(v473, v474);
      outlined copy of Data._Representation(v476, v477);
      (*(v677 + 8))(v452, v463);
      *&v686 = v676;
      *(&v686 + 1) = v682;
      *&v687 = *(&v675 + 1);
      *(&v687 + 1) = v674;
      *&v688 = v683;
      *(&v688 + 1) = v675;
      *&v689[0] = v672;
      *(&v689[0] + 1) = v681;
      *&v689[1] = v671;
      *(&v689[1] + 1) = v670;
      *&v689[2] = v685;
      *(&v689[2] + 1) = v673;
      *&v689[3] = v669;
      *(&v689[3] + 1) = v668;
      *&v689[4] = v667;
      *(&v689[4] + 1) = v684;
      *&v478 = v471;
      *(&v478 + 1) = v472;
      *&v479 = v473;
      *(&v479 + 1) = v474;
      v689[6] = v479;
      v689[5] = v478;
      *&v689[7] = v476;
      *(&v689[7] + 1) = v477;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(&v686);
LABEL_112:
      v610 = v689[6];
      v611 = v680;
      *(v680 + 128) = v689[5];
      *(v611 + 144) = v610;
      *(v611 + 160) = v689[7];
      *(v611 + 176) = v690;
      v612 = v689[2];
      *(v611 + 64) = v689[1];
      *(v611 + 80) = v612;
      v613 = v689[4];
      *(v611 + 96) = v689[3];
      *(v611 + 112) = v613;
      v614 = v687;
      *v611 = v686;
      *(v611 + 16) = v614;
      result = *&v688;
      v615 = v689[0];
      *(v611 + 32) = v688;
      *(v611 + 48) = v615;
      return result;
  }
}

unint64_t lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector()
{
  result = lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector;
  if (!lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector;
  if (!lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput);
  }

  return result;
}

uint64_t outlined init with copy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for MLS.OutgoingEventType(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v29 = v2;
  v30 = v1;
  v31 = v4;
  v32 = v3;
  result = type metadata accessor for MLS.OutgoingCreateGroup(319, &v29);
  if (v6 <= 0x3F)
  {
    v32 = v3;
    v33 = result;
    v29 = v2;
    v30 = v1;
    v31 = v4;
    result = type metadata accessor for MLS.OutgoingAddMember(319, &v29);
    if (v7 <= 0x3F)
    {
      v34 = result;
      v29 = v2;
      v30 = v1;
      v31 = v4;
      v32 = v3;
      result = type metadata accessor for MLS.OutgoingKickMember(319, &v29);
      if (v9 <= 0x3F)
      {
        v35 = result;
        result = type metadata accessor for MLS.OutgoingRemoveSelf(319, v1, v3, v8);
        if (v11 <= 0x3F)
        {
          v36 = result;
          result = type metadata accessor for MLS.OutgoingKeyUpdate(319, v1, v3, v10);
          if (v12 <= 0x3F)
          {
            v37 = result;
            v29 = v2;
            v30 = v1;
            v31 = v4;
            v32 = v3;
            result = type metadata accessor for MLS.OutgoingResync(319, &v29);
            if (v13 <= 0x3F)
            {
              v38 = result;
              v29 = v2;
              v30 = v1;
              v31 = v4;
              v32 = v3;
              result = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2(319, &v29);
              if (v15 <= 0x3F)
              {
                v39 = result;
                result = type metadata accessor for MLS.OutgoingFailureToDecrypt(319, v1, v3, v14);
                if (v16 <= 0x3F)
                {
                  v40 = result;
                  v29 = v2;
                  v30 = v1;
                  v31 = v4;
                  v32 = v3;
                  result = type metadata accessor for MLS.OutgoingResurrectGroup(319, &v29);
                  if (v17 <= 0x3F)
                  {
                    v41 = result;
                    v29 = v2;
                    v30 = v1;
                    v31 = v4;
                    v32 = v3;
                    result = type metadata accessor for MLS.OutgoingRecreateGroup(319, &v29);
                    if (v19 <= 0x3F)
                    {
                      v42 = result;
                      result = type metadata accessor for MLS.OutgoingApplicationSend(319, v1, v3, v18);
                      if (v21 <= 0x3F)
                      {
                        v43 = result;
                        result = type metadata accessor for MLS.OutgoingDowngrade(319, v1, v3, v20);
                        if (v23 <= 0x3F)
                        {
                          v44 = result;
                          result = type metadata accessor for MLS.OutgoingGroupNameChange(319, v1, v3, v22);
                          if (v24 <= 0x3F)
                          {
                            v45 = result;
                            v29 = v2;
                            v30 = v1;
                            v31 = v4;
                            v32 = v3;
                            result = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials(319, &v29);
                            if (v25 <= 0x3F)
                            {
                              v46 = result;
                              v29 = v2;
                              v30 = v1;
                              v31 = v4;
                              v32 = v3;
                              result = type metadata accessor for MLS.OutgoingProposalCommitted(319, &v29);
                              if (v26 <= 0x3F)
                              {
                                v47 = result;
                                v29 = v2;
                                v30 = v1;
                                v31 = v4;
                                v32 = v3;
                                result = type metadata accessor for MLS.OutgoingGroupRepaired(319, &v29);
                                if (v27 <= 0x3F)
                                {
                                  v48 = result;
                                  v29 = v2;
                                  v30 = v1;
                                  v31 = v4;
                                  v32 = v3;
                                  result = type metadata accessor for MLS.OutgoingErrorOccurred(319, &v29);
                                  if (v28 <= 0x3F)
                                  {
                                    v49 = result;
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64) + 7;
  v7 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 60 > v7)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 60;
  }

  v8 = *(v5 + 80);
  v9 = v8;
  v10 = (v8 & 0xF8 ^ 0x1F8u) & (v8 + 32);
  if (*(v3 + 84))
  {
    v11 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v11 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  v12 = v11 + 7;
  v13 = (v12 + ((v4 + 32) & ~v4)) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((((((((v15 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = ((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 <= v16)
  {
    v17 = ((((((((v15 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = v14 + 32;
  if (v14 + 32 > v17)
  {
    v17 = v14 + 32;
  }

  v19 = (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 16;
  if (v19 + 16 > v17)
  {
    v17 = v19 + 16;
  }

  v21 = v13 + 8;
  v22 = ((((v6 + ((v21 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 <= v17)
  {
    v22 = v17;
  }

  v23 = v14 + 8;
  if (v23 > v22)
  {
    v22 = v23;
  }

  if (v16 > v22)
  {
    v22 = v16;
  }

  if (v18 > v22)
  {
    v22 = v18;
  }

  if (v20 > v22)
  {
    v22 = v19 + 16;
  }

  if (((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > v22)
  {
    v22 = ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 > v22)
  {
    v22 = v16;
  }

  if (v20 > v22)
  {
    v22 = v19 + 16;
  }

  if (v21 <= v22)
  {
    v21 = v22;
  }

  v24 = ((v12 + ((v4 + v10 + v7 + 1) & ~v4)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_55;
  }

  v26 = v25 + 1;
  v27 = 8 * (v25 + 1);
  if ((v25 + 1) <= 3)
  {
    v30 = ((a2 + ~(-1 << v27) - 239) >> v27) + 1;
    if (HIWORD(v30))
    {
      v28 = *(a1 + v26);
      if (!v28)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    if (v30 > 0xFF)
    {
      v28 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    if (v30 < 2)
    {
LABEL_55:
      v32 = *(a1 + v25);
      if (v32 >= 0x11)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v28 = *(a1 + v26);
  if (!*(a1 + v26))
  {
    goto LABEL_55;
  }

LABEL_44:
  v31 = (v28 - 1) << v27;
  if (v26 > 3)
  {
    v31 = 0;
  }

  if (v26)
  {
    if (v26 > 3)
    {
      LODWORD(v26) = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        LODWORD(v26) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v26) = *a1;
      }
    }

    else if (v26 == 1)
    {
      LODWORD(v26) = *a1;
    }

    else
    {
      LODWORD(v26) = *a1;
    }
  }

  return (v26 | v31) + 240;
}

void storeEnumTagSinglePayload for MLS.OutgoingEventType(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 64) + 7;
  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFFFFFFFFFF8) + 60 > v9)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 60;
  }

  v10 = *(v7 + 80);
  v11 = v10;
  v12 = (v10 & 0xF8 ^ 0x1F8u) & (v10 + 32);
  if (*(v5 + 84))
  {
    v13 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v13 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (v14 + ((v6 + 32) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = ((((((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 <= v18)
  {
    v19 = ((((((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = v16 + 32;
  if (v16 + 32 > v19)
  {
    v19 = v16 + 32;
  }

  v21 = (((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 16;
  if (v21 + 16 > v19)
  {
    v19 = v21 + 16;
  }

  v23 = v15 + 8;
  v24 = ((((v8 + ((v23 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v19)
  {
    v24 = v19;
  }

  v25 = v16 + 8;
  if (v25 > v24)
  {
    v24 = v25;
  }

  if (v18 > v24)
  {
    v24 = v18;
  }

  if (v20 > v24)
  {
    v24 = v20;
  }

  if (v22 > v24)
  {
    v24 = v21 + 16;
  }

  if (((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > v24)
  {
    v24 = ((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 > v24)
  {
    v24 = v18;
  }

  if (v22 > v24)
  {
    v24 = v21 + 16;
  }

  if (v23 <= v24)
  {
    v23 = v24;
  }

  v26 = ((v14 + ((v6 + v12 + v9 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 <= v23)
  {
    v26 = v23;
  }

  v27 = v26 + 1;
  if (a3 < 0xF0)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 + ~(-1 << (8 * v27)) - 239) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (a2 > 0xEF)
  {
    v29 = a2 - 240;
    if (v27 >= 4)
    {
      bzero(a1, v26 + 1);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v26 != -1)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
LABEL_68:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
            goto LABEL_68;
          }
        }

LABEL_65:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (v28 <= 1)
  {
    if (v28)
    {
      a1[v27] = 0;
      if (!a2)
      {
        return;
      }

LABEL_54:
      a1[v26] = -a2;
      return;
    }

LABEL_53:
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (v28 == 2)
  {
    *&a1[v27] = 0;
    goto LABEL_53;
  }

  *&a1[v27] = 0;
  if (a2)
  {
    goto LABEL_54;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType.MatchableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventType.MatchableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for MLS.OutgoingCreateGroup(void *a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for MLS.OutgoingKickMember(void *a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKickMember(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingKickMember(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingProposalCommitted(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingProposalCommitted(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingProposalCommitted(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingFailureToDecrypt_v2(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for [String], v1, MEMORY[0x277D83940]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt_v2(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v6 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(v8 + 80);
  if (v5)
  {
    v15 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v15 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v15 + 7;
  v17 = v14 + 8;
  if (v12 < a2)
  {
    v18 = ((((*(*(v7 - 8) + 64) + ((v17 + ((v16 + ((v13 + 32) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = a2 - v12;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_29:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v12 + (v26 | v25) + 1;
      }
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13;
  if (v6 == v12)
  {
    if (v5 >= 2)
    {
      v32 = (*(v4 + 48))(v29);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v9 + 48);
  v31 = (v17 + ((v16 + v29) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

  return v30(v31, v10, v7);
}

void *storeEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt_v2(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v6 + 80);
  v12 = *(*(*(a4 + 24) - 8) + 64);
  v13 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!v7)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    v18 = a3 - v15;
    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v15)
  {
    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v15;
    }

    else
    {
      v21 = 1;
    }

    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v15 + a2;
      v23 = result;
      bzero(result, v17);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *(result + v17) = 0;
LABEL_41:
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(result + v17) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_42:
  if ((v14 & 0x80000000) != 0)
  {
    result = ((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v8 == v15)
    {
      if (v7 >= 2)
      {
        v24 = *(v6 + 56);
        v25 = a2 + 1;

        return v24(result, v25);
      }
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = (v13 + 8 + ((result + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13;

      return v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for MLS.OutgoingFailureToDecrypt(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingRemoveSelf(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingRemoveSelf(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingRemoveSelf(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingKeyUpdate(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKeyUpdate(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingKeyUpdate(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingGroupNameChange(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingGroupNameChange(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingGroupNameChange(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingCreateGroup(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingCreateGroup(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingGroupRepaired(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingGroupRepaired(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingGroupRepaired(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingErrorOccurred(uint64_t a1)
{
  v8 = 0;
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D837D0];
  v1 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v1;
  result = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger(319, &v5);
  if (v3 <= 0x3F)
  {
    v9 = 0;
    v13 = result;
    result = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      v10 = 0;
      v14 = result;
      v15 = &type metadata for MetricCollector;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingErrorOccurred(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = (*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 60;
  v7 = ((v5 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v5 + 60 > v7;
  v9 = *(*(a3 + 24) - 8);
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 80);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 & 0xF8 | 7;
  v19 = v15 + v10 + 1;
  if (v13 >= a2)
  {
    goto LABEL_37;
  }

  v20 = ((v17 + v16 + ((v19 + (((v14 & 0xF8) + 39) & ~v18)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = a2 - v13;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v25 || (v26 = *(a1 + v20)) == 0)
  {
LABEL_37:
    if ((v12 & 0x80000000) != 0)
    {
      v30 = (*(*(*(a3 + 24) - 8) + 48))((v19 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18)) & ~v15);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = *(a1 + 8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }

  v28 = v26 - 1;
  if (v22)
  {
    v28 = 0;
    LODWORD(v22) = *a1;
  }

  return v13 + (v22 | v28) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingErrorOccurred(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = (*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 60;
  v9 = ((v7 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v7 + 60 > v9;
  v11 = *(*(a4 + 24) - 8);
  if (v10)
  {
    v9 = v8;
  }

  v12 = *(*(a4 + 24) - 8);
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = (v16 + 39) & ~(v16 | 7);
  v19 = *(v11 + 80);
  v20 = v19 + v9 + 1;
  v21 = *(v11 + 64);
  if (!v13)
  {
    ++v21;
  }

  v22 = ((v21 + ((v20 + v18) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    v23 = a3 - v15;
    if (((v21 + ((v20 + v18) & ~v19) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v15)
  {
    if (((v21 + ((v20 + v18) & ~v19) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a2 - v15;
    }

    else
    {
      v26 = 1;
    }

    if (((v21 + ((v20 + v18) & ~v19) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v27 = ~v15 + a2;
      v28 = a1;
      bzero(a1, v22);
      a1 = v28;
      *v28 = v27;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v22) = v26;
      }

      else
      {
        *(a1 + v22) = v26;
      }
    }

    else if (v5)
    {
      *(a1 + v22) = v26;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v22) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v5)
  {
    goto LABEL_39;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v14 & 0x80000000) != 0)
  {
    v29 = ((v20 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17)) & ~v19);
    if (v14 >= a2)
    {
      v33 = *(v12 + 56);
      v34 = a2 + 1;
      v35 = (v20 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17)) & ~v19;

      v33(v35, v34);
    }

    else
    {
      if (v21 <= 3)
      {
        v30 = ~(-1 << (8 * v21));
      }

      else
      {
        v30 = -1;
      }

      if (v21)
      {
        v31 = v30 & (~v14 + a2);
        if (v21 <= 3)
        {
          v32 = v21;
        }

        else
        {
          v32 = 4;
        }

        bzero(v29, v21);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *v29 = v31;
            v29[2] = BYTE2(v31);
          }

          else
          {
            *v29 = v31;
          }
        }

        else if (v32 == 1)
        {
          *v29 = v31;
        }

        else
        {
          *v29 = v31;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingErrorOccurred.Trigger(uint64_t a1)
{
  result = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingErrorOccurred.Trigger(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 60;
  v5 = ((v3 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v4 > v5)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void storeEnumTagSinglePayload for MLS.OutgoingErrorOccurred.Trigger(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 60;
  v7 = ((v5 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 254;
  v13 = (a2 - 254) >> 8;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingDowngrade.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingDowngrade.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKickMember.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingKickMember.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MLS.KickMembersOperation.group.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double MLS.KickMembersOperation.context.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);

  return result;
}

double MLS.KickMembersOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  a1[1] = v2;

  return result;
}

uint64_t MLS.KickMembersOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KickMembersOperation.__allocating_init(otherMembers:group:context:credentialProvider:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  v21 = a4[1];
  v22 = *a4;
  v17 = *(a4 + 4);
  v19 = *a8;
  v18 = a8[1];
  Logger.init(subsystem:category:)();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v22;
  *(v16 + 56) = v21;
  *(v16 + 72) = v17;
  outlined init with take of MLS.KeyUpdatePolicy(a5, v16 + 80);
  *(v16 + 120) = a6;
  *(v16 + 128) = a7;
  *(v16 + 136) = v19;
  *(v16 + 144) = v18;
  return v16;
}

uint64_t MLS.KickMembersOperation.init(otherMembers:group:context:credentialProvider:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v19 = a4[1];
  v20 = *a4;
  v15 = *(a4 + 4);
  v16 = *a8;
  v17 = a8[1];
  Logger.init(subsystem:category:)();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v20;
  *(v8 + 56) = v19;
  *(v8 + 72) = v15;
  outlined init with take of MLS.KeyUpdatePolicy(a5, v8 + 80);
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 136) = v16;
  *(v8 + 144) = v17;
  return v8;
}

uint64_t MLS.KickMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[138] = v3;
  v4[137] = a2;
  v4[136] = a1;
  v6 = type metadata accessor for MLS.MLSError();
  v4[139] = v6;
  v4[140] = *(v6 - 8);
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[144] = v7;
  v4[145] = *(v7 - 8);
  v4[146] = swift_task_alloc();
  v4[147] = type metadata accessor for MetricCollector.Event(0);
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v4[151] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v8, 0);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v19 = v0;
  v1 = v0[138];
  v0[135] = v0[150];
  v2 = *(v1 + 40);
  v0[152] = v2;
  v3 = *(v1 + 48);
  v0[153] = v3;
  v0[154] = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[138];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v18);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x266754630](*(v6 + 16), &type metadata for MLS.AllMember);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "KickMembersOperation finding identities of members { identifier: %s, identities: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = v0[137];
  outlined init with copy of ServerBag.MLS(v0[138] + 80, (v0 + 88));
  v13 = v0[91];
  v0[155] = v13;
  v0[156] = v0[92];
  v0[157] = __swift_project_boxed_opaque_existential_1(v0 + 88, v13);
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = swift_task_alloc();
  v0[158] = v16;
  *v16 = v0;
  v16[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v14, v15);
}

{
  v86 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  *(v0 + 1288) = *(*(v0 + 1104) + 16);

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v5);

  v7 = (*(v3 + 24))(v2, v6, v4, v3);
  if (v1)
  {
    v8 = v1;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
    *(v0 + 1040) = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 1144);
      v11 = *(v0 + 1136);
      v12 = *(v0 + 1128);
      v13 = *(v0 + 1120);
      v14 = *(v0 + 1112);

      (*(v13 + 32))(v11, v10, v14);
      v15 = v12;
      v16 = *(v13 + 16);
      v16(v15, v11, v14);

      v17 = Logger.logObject.getter();
      LOBYTE(v11) = static os_log_type_t.error.getter();

      v83 = v11;
      v18 = os_log_type_enabled(v17, v11);
      v19 = *(v0 + 1224);
      if (v18)
      {
        v20 = *(v0 + 1216);
        v21 = *(v0 + 1128);
        v22 = *(v0 + 1120);
        v23 = *(v0 + 1112);
        v24 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v85 = v82;
        *v24 = 136315394;
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v85);

        *(v24 + 4) = v25;
        *(v24 + 12) = 2112;
        _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v16(v26, v21, v23);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = *(v22 + 8);
        v29 = v23;
        v30 = v16;
        v28(v21, v29);
        *(v24 + 14) = v27;
        *v81 = v27;
        _os_log_impl(&dword_264F1F000, v17, v83, "KickMembersOperation failed to retrieve credentials in group { identifier: %s, error: %@ }", v24, 0x16u);
        outlined destroy of NSObject?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v81, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x266755550](v82, -1, -1);
        MEMORY[0x266755550](v24, -1, -1);
      }

      else
      {
        v67 = *(v0 + 1128);
        v68 = *(v0 + 1120);
        v69 = *(v0 + 1112);

        v28 = *(v68 + 8);
        v30 = v16;
        v28(v67, v69);
      }

      v70 = *(v0 + 1136);
      v71 = *(v0 + 1112);
      _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
      swift_allocError();
      v30(v72, v70, v71);
      swift_willThrow();
      v28(v70, v71);
      v73 = *(v0 + 1040);
LABEL_16:

      v78 = *(v0 + 8);

      return v78();
    }

LABEL_10:

    v55 = v8;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 1224);
    if (v58)
    {
      v60 = *(v0 + 1216);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v85 = v63;
      *v61 = 136315394;
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v85);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2112;
      v65 = v8;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v66;
      *v62 = v66;
      _os_log_impl(&dword_264F1F000, v56, v57, "KickMembersOperation failed to find credentials for members { identifier: %s, error: %@ }", v61, 0x16u);
      outlined destroy of NSObject?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266755550](v63, -1, -1);
      MEMORY[0x266755550](v61, -1, -1);
    }

    else
    {
    }

    swift_getErrorValue();
    v74 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
    v76 = v75;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v77 = 9;
    *(v77 + 8) = v74;
    *(v77 + 16) = v76;
    swift_willThrow();
    v73 = v8;
    goto LABEL_16;
  }

  v31 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 1224);
    v35 = *(v0 + 1216);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v85 = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v85);
    *(v36 + 12) = 2080;
    type metadata accessor for MLS.Identity.SigningIdentity();
    _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
    v38 = Set.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v85);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_264F1F000, v32, v33, "KickMembersOperation removing identities from group { identifier: %s, identities: %s }", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v37, -1, -1);
    MEMORY[0x266755550](v36, -1, -1);
  }

  v41 = *(v0 + 1192);
  v42 = *(v0 + 1184);
  v43 = *(v0 + 1176);
  v44 = *(v0 + 1096);
  Date.init()();
  v45 = *(v43 + 20);
  v46 = type metadata accessor for Date();
  (*(*(v46 - 8) + 56))(v41 + v45, 1, 1, v46);
  outlined init with take of MetricCollector.Event(v41, v42);
  v47 = *(v0 + 1080);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v47;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v49 = v85;
  *(v0 + 1296) = v85;

  *(v0 + 1080) = v49;
  v50 = v44[3];
  v8 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v50);
  v51 = *(v31 + 16);
  if (v51)
  {
    v52 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8SwiftMLS0I0O8IdentityO07SigningJ0V_Tt1g5(*(v31 + 16), 0);
    v53 = *(type metadata accessor for MLS.Identity.SigningIdentity() - 8);
    v54 = specialized Sequence._copySequenceContents(initializing:)(&v85, &v52[(*(v53 + 80) + 32) & ~*(v53 + 80)], v51, v31);
    outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant(v85);
    if (v54 != v51)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  *(v0 + 1304) = v52;
  v84 = (v8[24] + *v8[24]);
  v80 = swift_task_alloc();
  *(v0 + 1312) = v80;
  *v80 = v0;
  v80[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return v84(v0 + 744, v52, v50, v8);
}

{
  v2 = *v1;
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);

    v4 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 1208);

    v4 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v65 = v0;
  v1._countAndFlagsBits = 0x534C4D7466697753;
  v1._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v1);
  outlined init with copy of ServerBag.MLS(v0 + 744, v0 + 784);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v59 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v59);
    *(v6 + 12) = 2080;
    v8 = *(v0 + 808);
    __swift_project_boxed_opaque_existential_1((v0 + 784), v8);
    v9 = *(v8 - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v59);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "KickMembersOperation creating event { identifier: %s, commitOutput: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
  }

  v14 = *(v0 + 1320);
  v15 = *(v0 + 768);
  v16 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v15);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v15, v16, &v59);
  v18 = v59;
  v17 = v60;
  *(v0 + 1328) = v60;
  v20 = v61;
  v19 = v62;
  *(v0 + 1336) = v61;
  *(v0 + 1344) = v19;
  specialized MLS.GroupOperation.context(commitOutput:)((v0 + 744), &v59);
  v21 = v59;
  v22 = v60;
  *(v0 + 1352) = v59;
  *(v0 + 1360) = v22;
  v23 = v61;
  v24 = v62;
  *(v0 + 1368) = v61;
  *(v0 + 1376) = v24;
  v25 = v63;
  v26 = v64;
  *(v0 + 1384) = v63;
  *(v0 + 1392) = v26;
  if (v14)
  {

    outlined consume of Data._Representation(v20, v19);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 1288);
    v52 = *(v0 + 1224);
    v53 = v21;
    v54 = *(v0 + 1216);
    v55 = v26;
    v30 = *(v0 + 1168);
    v31 = *(v0 + 1160);
    v48 = v18;
    v49 = v22;
    v32 = *(v0 + 1152);
    v33 = *(v0 + 1104);
    v57 = v24;
    v58 = v23;
    v56 = v25;

    UUID.init()();
    v47 = UUID.uuidString.getter();
    v51 = v34;
    (*(v31 + 8))(v30, v32);
    v50 = v33;
    v35 = *(v33 + 56);
    v36 = *(v33 + 64);
    v37 = *(v0 + 1080);

    outlined copy of Data?(v35, v36);

    outlined copy of Data._Representation(v20, v19);
    v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v29);

    *(v0 + 344) = v54;
    *(v0 + 352) = v52;
    *(v0 + 360) = v47;
    *(v0 + 368) = v51;
    *(v0 + 376) = v35;
    *(v0 + 384) = v36;
    *(v0 + 392) = v37;
    *(v0 + 400) = v48;
    *(v0 + 408) = v17;
    *(v0 + 416) = v20;
    *(v0 + 424) = v19;
    *(v0 + 432) = v38;
    *(v0 + 440) = v53;
    *(v0 + 448) = v49;
    *(v0 + 456) = v58;
    *(v0 + 464) = v57;
    *(v0 + 472) = v56;
    *(v0 + 480) = v55;
    v39 = *(v0 + 360);
    *(v0 + 16) = *(v0 + 344);
    *(v0 + 32) = v39;
    v40 = *(v0 + 472);
    *(v0 + 128) = *(v0 + 456);
    *(v0 + 144) = v40;
    v41 = *(v0 + 440);
    *(v0 + 96) = *(v0 + 424);
    *(v0 + 112) = v41;
    v42 = *(v0 + 408);
    *(v0 + 64) = *(v0 + 392);
    *(v0 + 80) = v42;
    *(v0 + 48) = *(v0 + 376);
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi1_(v0 + 16);
    v43 = *(v50 + 56);
    v44 = *(v50 + 64);
    *(v0 + 632) = v47;
    *(v0 + 640) = v51;
    *(v0 + 648) = v29;
    *(v0 + 656) = 0;
    *(v0 + 664) = 2;
    *(v0 + 672) = v54;
    *(v0 + 680) = v52;
    *(v0 + 688) = v43;
    *(v0 + 696) = v44;
    *(v0 + 624) = v44;
    v45 = *(v0 + 680);
    *(v0 + 592) = *(v0 + 664);
    *(v0 + 608) = v45;
    v46 = *(v0 + 648);
    *(v0 + 560) = *(v0 + 632);
    *(v0 + 576) = v46;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    outlined copy of Data._Representation(v53, v49);
    outlined copy of Data?(v58, v57);
    outlined copy of Data._Representation(v56, v55);
    outlined init with copy of MLS.OutgoingKickMember<MLS.AllMember, Data>(v0 + 344, v0 + 200);

    outlined copy of Data?(v43, v44);
    outlined init with copy of MLS.OutgoingEventState(v0 + 632, v0 + 488);

    return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }
}

{
  v1 = v0[138];
  v2 = v1[16];
  ObjectType = swift_getObjectType();
  v4 = v1[3];
  v5 = v1[4];

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v6);
  v0[175] = v7;

  v8 = v1[18];
  v0[127] = v1[17];
  v0[128] = v8;

  v9 = swift_task_alloc();
  v0[176] = v9;
  *v9 = v0;
  v9[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:)(v4, v5, v7, v0 + 127, ObjectType, v2);
}

{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 632);

    v3 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 1208);

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v1, 0);
}

{
  v9 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1224);
    v4 = *(v0 + 1216);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v8);
    _os_log_impl(&dword_264F1F000, v1, v2, "KickMembersOperation returning operation result { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1104);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 880), *(v0 + 888));
  closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2, "KickMembersOperation failed to remove members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 904), *(v0 + 912));
  *(v0 + 1424) = v8;
  *(v0 + 1432) = v9;
  *(v0 + 920) = 8;
  *(v0 + 928) = v8;
  *(v0 + 936) = v9;
  *(v0 + 1440) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[179];
  v2 = v0[178];
  v12 = v0[173];
  v13 = v0[174];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[170];
  v6 = v0[169];
  v7 = v0[168];
  v8 = v0[167];
  swift_allocError();
  *v9 = 8;
  *(v9 + 8) = v2;
  *(v9 + 16) = v1;

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v12, v13);
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 79));
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 93);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 1096);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1448) = v4;
  *v4 = v0;
  v4[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 944, v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 632);
    v3 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v3 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v28 = *(v0 + 196);
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v25 = *(v0 + 1336);
  v26 = *(v0 + 1344);
  v29 = *(v0 + 1464);
  v27 = *(v0 + 1096);
  v7 = *(v0 + 1088);
  outlined destroy of NSObject?(v0 + 344, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);

  outlined consume of Data._Representation(v25, v26);
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v7 + 32) = *(v0 + 48);
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 128);
  *(v7 + 96) = *(v0 + 112);
  *(v7 + 112) = v13;
  *(v7 + 64) = v11;
  *(v7 + 80) = v12;
  v14 = *(v0 + 144);
  v15 = *(v0 + 160);
  v16 = *(v0 + 176);
  *(v7 + 176) = *(v0 + 192);
  *(v7 + 144) = v15;
  *(v7 + 160) = v16;
  *(v7 + 128) = v14;
  *(v7 + 184) = *(v0 + 560);
  v17 = *(v0 + 576);
  v18 = *(v0 + 592);
  v19 = *(v0 + 608);
  *(v7 + 248) = *(v0 + 624);
  *(v7 + 232) = v19;
  *(v7 + 216) = v18;
  *(v7 + 200) = v17;
  *(v7 + 256) = 0;
  *(v7 + 264) = v28;
  *(v7 + 272) = v28;
  *(v7 + 280) = v29;
  *(v7 + 288) = *(v0 + 632);
  v20 = *(v0 + 648);
  v21 = *(v0 + 664);
  v22 = *(v0 + 680);
  *(v7 + 352) = *(v0 + 696);
  *(v7 + 320) = v21;
  *(v7 + 336) = v22;
  *(v7 + 304) = v20;
  *(v7 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v27, v7 + 368);
  *(v7 + 408) = 0;
  *(v7 + 416) = *(v0 + 1080);
  *(v7 + 424) = 0;
  *(v7 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1104);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 976), *(v0 + 984));
  closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(v6, v7, v5, v3, v2, "KickMembersOperation failed to obtain era { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 1000), *(v0 + 1008));
  *(v0 + 1472) = v8;
  *(v0 + 1480) = v9;
  *(v0 + 824) = 6;
  *(v0 + 832) = v8;
  *(v0 + 840) = v9;
  *(v0 + 1488) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[185];
  v2 = v0[184];
  v12 = v0[173];
  v13 = v0[174];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[170];
  v6 = v0[169];
  v7 = v0[168];
  v8 = v0[167];
  swift_allocError();
  *v9 = 6;
  *(v9 + 8) = v2;
  *(v9 + 16) = v1;

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v12, v13);
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 79));
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 93);

  v10 = v0[1];

  return v10();
}

{
  v54 = v0;
  v1 = *(v0 + 1280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
  *(v0 + 1040) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1144);
    v4 = *(v0 + 1136);
    v5 = *(v0 + 1128);
    v6 = *(v0 + 1120);
    v7 = *(v0 + 1112);

    (*(v6 + 32))(v4, v3, v7);
    v8 = v7;
    v9 = *(v6 + 16);
    v9(v5, v4, v8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1224);
    if (v12)
    {
      v14 = *(v0 + 1216);
      v15 = *(v0 + 1128);
      v16 = *(v0 + 1120);
      v52 = v9;
      v17 = *(v0 + 1112);
      v50 = v11;
      v18 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v18 = 136315394;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v53);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2112;
      _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
      swift_allocError();
      v52(v20, v15, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = *(v16 + 8);
      v23 = v17;
      v9 = v52;
      v22(v15, v23);
      *(v18 + 14) = v21;
      *v49 = v21;
      _os_log_impl(&dword_264F1F000, v10, v50, "KickMembersOperation failed to retrieve credentials in group { identifier: %s, error: %@ }", v18, 0x16u);
      outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266755550](v51, -1, -1);
      MEMORY[0x266755550](v18, -1, -1);
    }

    else
    {
      v36 = *(v0 + 1128);
      v37 = *(v0 + 1120);
      v38 = *(v0 + 1112);

      v22 = *(v37 + 8);
      v22(v36, v38);
    }

    v39 = *(v0 + 1136);
    v40 = *(v0 + 1112);
    _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
    swift_allocError();
    v9(v41, v39, v40);
    swift_willThrow();
    v22(v39, v40);
    v42 = *(v0 + 1040);
  }

  else
  {

    v24 = v1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 1224);
    if (v27)
    {
      v29 = *(v0 + 1216);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v30 = 136315394;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v53);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2112;
      v34 = v1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v35;
      *v31 = v35;
      _os_log_impl(&dword_264F1F000, v25, v26, "KickMembersOperation failed to find credentials for members { identifier: %s, error: %@ }", v30, 0x16u);
      outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266755550](v32, -1, -1);
      MEMORY[0x266755550](v30, -1, -1);
    }

    else
    {
    }

    swift_getErrorValue();
    v43 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
    v45 = v44;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v46 = 9;
    *(v46 + 8) = v43;
    *(v46 + 16) = v45;
    swift_willThrow();
    v42 = v1;
  }

  v47 = *(v0 + 8);

  return v47();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v3[159] = a1;
  v3[160] = v1;

  if (v1)
  {
    v4 = v3[151];

    v5 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v6 = v4;
  }

  else
  {
    v6 = v3[151];
    v5 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 960);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1208);
    *(v3 + 1464) = v7;
    *(v3 + 196) = *(v3 + 952);

    a1 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v8;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

char *MLS.KickMembersOperation.deinit()
{

  v1 = *(v0 + 7);
  v2 = *(v0 + 8);

  outlined consume of Data?(v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  return v0;
}

uint64_t MLS.KickMembersOperation.__deallocating_deinit()
{

  v1 = *(v0 + 7);
  v2 = *(v0 + 8);

  outlined consume of Data?(v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.KickMembersOperation(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.KickMembersOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 200) + **(**v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.KickMembersOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingKickMember<MLS.AllMember, Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for MLS.KickMembersOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation, &protocol conformance descriptor for MLS.KickMembersOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MLS.KickMembersOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.KickMembersOperation;
  if (!type metadata singleton initialization cache for MLS.KickMembersOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.KickMembersOperation(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.KickMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 200) + **(*v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)();
}

{
  return MEMORY[0x2822009F8](MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:), 0, 0);
}

{
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();
  swift_allocError();
  *v1 = 5;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

uint64_t MLS.ReceiveResult.description.getter()
{
  v1 = 0x7466417972746552;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637553;
  }
}

uint64_t _s15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOs0I3KeyAAsAIP11stringValueSSvgTW_0()
{
  v1 = 0x7466417972746572;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t _s15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOs0I3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = MLS.FetchMemberResult.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ReceiveResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();
      v9 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();
      v9 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

uint64_t MLS.ReceiveResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = specialized Collection<>.popFirst()();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v24 = &type metadata for MLS.ReceiveResult;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();
          v26 = v17;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult()
{
  v1 = 0x7466417972746552;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637553;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

unint64_t MLS.ResendApplicationMessageResult.description.getter()
{
  v1 = 0x73736563637553;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    v1 = 0x7466417972746552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys()
{
  v1 = 0x73736563637573;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F64;
  }

  if (*v0)
  {
    v1 = 0x7466417972746572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.ResendApplicationMessageResult.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.ResendApplicationMessageResult.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys(uint64_t a1)
{
  DoesNotExistCodingKeys = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();

  return MEMORY[0x2821FE718](a1, DoesNotExistCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys(uint64_t a1)
{
  DoesNotExistCodingKeys = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();

  return MEMORY[0x2821FE720](a1, DoesNotExistCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ResendApplicationMessageResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();
      v18 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();
      v18 = v30;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();
    v18 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

uint64_t MLS.ResendApplicationMessageResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();
  v15 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = KeyedDecodingContainer.allKeys.getter();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = specialized Collection<>.popFirst()();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v28 = &type metadata for MLS.ResendApplicationMessageResult;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();
        v32 = v35;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();
        v25 = v35;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();
      v31 = v35;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();
      v33 = v35;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult()
{
  v1 = 0x73736563637553;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    v1 = 0x7466417972746552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

uint64_t MLS.GroupRecoveryInfo.rawGroupInfo.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.GroupRecoveryInfo.ratchetTree.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.GroupRecoveryInfo.init(groupInfo:ratchetTree:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double MLS.GroupRecoveryInfo.init(groupInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.GroupRecoveryInfo.description.getter()
{
  v1 = *(v0 + 24);
  _StringGuts.grow(_:)(31);

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  MEMORY[0x2667545A0](countAndFlagsBits);

  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
  if (v1 >> 60 != 15)
  {
    Data.base64EncodedString(options:)(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x2667545A0](v3);

  return 0x666E4970756F7247;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupRecoveryInfo.CodingKeys()
{
  if (*v0)
  {
    return 0x5474656863746172;
  }

  else
  {
    return 0x70756F7247776172;
  }
}