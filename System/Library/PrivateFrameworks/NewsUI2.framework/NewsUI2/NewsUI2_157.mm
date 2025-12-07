void sub_219853908(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v32 = a3;
  v34 = a1;
  v12 = sub_219BE85F4();
  v35 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v33 = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C0EE20;
  v36 = 0.0;
  v37 = -2.68156159e154;
  sub_219BE9F74();
  sub_219BF7484();
  v17 = v36;
  v16 = v37;
  v18 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v15 + 64) = v19;
  *(v15 + 32) = v17;
  *(v15 + 40) = v16;
  v40 = 0;
  v41 = 0xE000000000000000;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v20 = v40;
  v21 = v41;
  *(v15 + 96) = v18;
  *(v15 + 104) = v19;
  *(v15 + 72) = v20;
  *(v15 + 80) = v21;
  v36 = 0.0;
  v37 = -2.68156159e154;
  v22 = v34;
  sub_219BF7484();
  v23 = v36;
  v24 = v37;
  *(v15 + 136) = v18;
  *(v15 + 144) = v19;
  *(v15 + 112) = v23;
  *(v15 + 120) = v24;
  sub_219BF5CD4();
  v25 = MEMORY[0x277D83A80];
  *(v15 + 176) = MEMORY[0x277D839F8];
  *(v15 + 184) = v25;
  *(v15 + 152) = v26;
  v27 = sub_219BF6214();
  sub_219BE5314("Tag feed visible relayout for trigger %{public}@ with bounds %{public}@, result=%{public}@, time=%fms", 101, 2, &dword_2186C1000, v33, v27, v15, v32);

  v28 = v35;
  (*(v35 + 16))(v14, v22, v12);
  v29 = (*(v28 + 88))(v14, v12);
  if (v29 != *MEMORY[0x277D6DF98] && (v29 == *MEMORY[0x277D6DF90] || v29 == *MEMORY[0x277D6DFA0]))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      sub_219850FB0();
    }
  }

  else
  {
    (*(v28 + 8))(v14, v12);
  }
}

double sub_219853C74(uint64_t a1, uint64_t a2)
{
  v8 = (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 32))(a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  sub_218718690(a1, v7);
  v4 = swift_allocObject();
  sub_2186CB1F0(v7, v4 + 16);
  v5 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v5, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_219853E04(uint64_t a1, char a2, uint64_t a3)
{
  v24 = a3;
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v25[-1] - v6);
  v8 = type metadata accessor for TagFeedRouteModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v17 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v16, *v17, v12, v14);
  sub_219854174(a1, v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_219869D68(v7, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  else
  {
    sub_219867CDC(v7, v11, type metadata accessor for TagFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      sub_21898BF70(0);
      v21 = sub_219BE5F84();
      v23 = v22;
      __swift_project_boxed_opaque_existential_1((v20 + 48), *(v20 + 72));
      v25[0] = v21;
      v25[1] = v23;
      v25[2] = 0;
      v25[3] = 0;
      v26 = 0;
      sub_218E40BA4(v11, v24, v25);
      sub_219869D08(v11, type metadata accessor for TagFeedRouteModel);
      (*(v13 + 8))(v16, v12);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_219869D08(v11, type metadata accessor for TagFeedRouteModel);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t *sub_219854174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v382 = a2;
  v388 = a3;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v303 = &v290 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v365 = &v290 - v8;
  v355 = sub_219BEDAE4();
  v353 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v351 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E38, MEMORY[0x277D31D50], sub_2197160E4, sub_219716118);
  v349 = v10;
  v348 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v345 = &v290 - v11;
  v356 = sub_219BF0B74();
  v354 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v352 = &v290 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v347 = &v290 - v14;
  v363 = sub_219BDEB14();
  v361 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v359 = &v290 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_219BDEA14();
  v362 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v360 = &v290 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v343 = &v290 - v18;
  v341 = sub_219BDDED4();
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v342 = (&v290 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = sub_219BDDBF4();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v344 = &v290 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v379 = &v290 - v22;
  sub_219867BD8(0, &qword_280E90D90, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v350 = v23;
  v377 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v346 = &v290 - v24;
  v339 = sub_219BEDB94();
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v337 = &v290 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E28, MEMORY[0x277D31DE8], sub_218CF5F8C, sub_218CF5FC4);
  v336 = v26;
  v335 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v332 = &v290 - v27;
  v331 = sub_219BF0AC4();
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v329 = &v290 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v334);
  v333 = &v290 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90DB0, MEMORY[0x277D32FB8], sub_218CF6140, sub_218CF6178);
  v328 = v30;
  v327 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v326 = &v290 - v31;
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v4);
  MEMORY[0x28223BE20](v32 - 8);
  v294 = &v290 - v33;
  v293 = sub_219BDDDA4();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v290 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = sub_219BDE4D4();
  v383 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v298 = &v290 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v36 - 8);
  v373 = &v290 - v37;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  MEMORY[0x28223BE20](v38 - 8);
  v381 = &v290 - v39;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  MEMORY[0x28223BE20](v40 - 8);
  v325 = &v290 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v302 = &v290 - v43;
  MEMORY[0x28223BE20](v44);
  v366 = &v290 - v45;
  v322 = sub_219BF07A4();
  v321 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v320 = &v290 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90DD0, MEMORY[0x277D32F68], sub_218CF61B0, sub_218CF61E8);
  v375 = *(v47 - 8);
  v376 = v47;
  MEMORY[0x28223BE20](v47);
  v374 = &v290 - v48;
  v316 = sub_219BEC504();
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v314 = &v290 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v319 = v50;
  v318 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v317 = &v290 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90A30, MEMORY[0x277D33058], v4);
  MEMORY[0x28223BE20](v52 - 8);
  v297 = &v290 - v53;
  sub_2198668E4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v54 - 8);
  v301 = &v290 - v55;
  v305 = sub_219BDB954();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v296 = &v290 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280E90180, MEMORY[0x277D33E20], v4);
  MEMORY[0x28223BE20](v57 - 8);
  v300 = (&v290 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v370 = &v290 - v60;
  v313 = sub_219BF1094();
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v295 = &v290 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v299 = &v290 - v63;
  MEMORY[0x28223BE20](v64);
  v311 = &v290 - v65;
  sub_219867BD8(0, &qword_280E90D30, MEMORY[0x277D330F8], sub_218CF606C, sub_218CF60A4);
  v324 = v66;
  v369 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v323 = &v290 - v67;
  v310 = sub_219BF04A4();
  v309 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v308 = &v290 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E00, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v307 = v69;
  v306 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v71 = &v290 - v70;
  v72 = sub_219BF0634();
  v385 = *(v72 - 8);
  v386 = v72;
  MEMORY[0x28223BE20](v72);
  WitnessTable = &v290 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_219BF0F34();
  v367 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v75 = &v290 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54(0);
  v372 = v76;
  v371 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v78 = &v290 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v290 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v84 = &v290 - v83;
  v85 = sub_219BF0614();
  v86 = *(v85 - 8);
  v389 = v85;
  v390 = v86;
  MEMORY[0x28223BE20](v85);
  v88 = (&v290 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70(0);
  sub_219BE5FC4();
  v391 = v88;
  sub_218F2994C(v88);
  sub_219869D08(v84, type metadata accessor for TagFeedModel);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v390 + 8))(v391, v389);
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v183 = *(v182 + 48);
      v184 = sub_219BF1584();
      (*(*(v184 - 8) + 8))(&v81[v183], v184);
      v89 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v148 = v371;
      v149 = v372;
      (*(v371 + 32))(v78, v81, v372);
      sub_219BF07D4();
      v150 = sub_219BF0F14();
      (*(v367 + 8))(v75, v368);
      sub_219BF07F4();
      v151 = v392;
      v152 = WitnessTable;
      sub_219BF63B4();

      v153 = v391;
      sub_219857EE4(v150, v152, v387, a1, v391, v382, v388);
      swift_unknownObjectRelease();
      (*(v385 + 8))(v152, v386);
      (*(v148 + 8))(v78, v149);
      return (*(v390 + 8))(v153, v389);
    case 3u:
      v154 = v306;
      v155 = v307;
      (*(v306 + 32))(v71, v81, v307);
      v156 = v308;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v309 + 8))(v156, v310);
      v119 = v388;
      sub_219BDD644();
      (*(v154 + 8))(v71, v155);
      goto LABEL_14;
    case 4u:
      v121 = v369;
      v122 = v323;
      v123 = v324;
      (*(v369 + 32))(v323, v81, v324);
      v124 = v311;
      sub_219BF07D4();
      v125 = v370;
      sub_219BF1034();
      v126 = *(v312 + 8);
      v127 = v313;
      v126(v124, v313);
      v128 = sub_219BF3484();
      v129 = *(v128 - 8);
      if ((*(v129 + 48))(v125, 1, v128) == 1)
      {
        v130 = v299;
        sub_219BF07D4();
        v131 = v301;
        sub_219BF1084();
        v132 = v131;
        v126(v130, v127);
        v133 = v304;
        v134 = v305;
        v135 = (*(v304 + 48))(v132, 1, v305);
        v136 = v391;
        if (v135 == 1)
        {
          sub_219869D68(v132, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v137 = v295;
          sub_219BF07D4();
          v138 = v297;
          sub_219BF1074();
          v126(v137, v127);
          v139 = v367;
          v140 = v368;
          v141 = (*(v367 + 48))(v138, 1, v368);
          v142 = v388;
          if (v141 == 1)
          {
            (*(v369 + 8))(v122, v123);
            (*(v390 + 8))(v391, v389);
            sub_219869D68(v138, &unk_280E90A30, MEMORY[0x277D33058]);
            v143 = type metadata accessor for TagFeedRouteModel(0);
            (*(*(v143 - 8) + 56))(v142, 1, 1, v143);
          }

          else
          {
            v260 = sub_219BF0F14();
            (*(v139 + 8))(v138, v140);
            sub_219BF07F4();
            v261 = v392;
            v262 = WitnessTable;
            sub_219BF63B4();

            v263 = v391;
            sub_219857EE4(v260, v262, v387, a1, v391, v382, v142);
            swift_unknownObjectRelease();
            (*(v385 + 8))(v262, v386);
            (*(v369 + 8))(v122, v123);
            (*(v390 + 8))(v263, v389);
          }
        }

        else
        {
          (*(v369 + 8))(v122, v123);
          (*(v390 + 8))(v136, v389);
          v241 = *(v133 + 32);
          v242 = v296;
          v241(v296, v132, v134);
          v243 = v388;
          v241(v388, v242, v134);
          v244 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
        }

        return sub_219869D68(v370, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v223 = v300;
      sub_219869C88(v125, v300, &qword_280E90180, MEMORY[0x277D33E20]);
      v224 = (*(v129 + 88))(v223, v128);
      v225 = v391;
      if (v224 == *MEMORY[0x277D33DF0])
      {
        (*(v129 + 96))(v223, v128);
        v226 = *v223;

        v227 = sub_219BF4024();
        if (v227)
        {
          v228 = [v227 identifier];
          v229 = sub_219BF5414();
          v387 = v226;
          v230 = v225;
          v231 = v123;
          v232 = v229;
          v234 = v233;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v231);
          (*(v390 + 8))(v230, v389);
          v235 = v388;
          *v388 = v232;
          v235[1] = v234;
          v236 = 8;
LABEL_51:
          v235[2] = v236;
          v272 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v272 - 8) + 56))(v235, 0, 1, v272);
LABEL_53:

          return sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_52;
      }

      if (v224 == *MEMORY[0x277D33E08])
      {
        (*(v129 + 96))(v223, v128);
        v245 = *v223;

        v246 = sub_219BF46D4();
        if (v246)
        {
          v247 = [v246 identifier];
          v248 = v225;
          v249 = v123;
          v250 = sub_219BF5414();
          v387 = v245;
          v252 = v251;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v249);
          (*(v390 + 8))(v248, v389);
          v235 = v388;
          *v388 = v250;
          v235[1] = v252;
          v236 = 4;
          goto LABEL_51;
        }

LABEL_52:

        (*(v121 + 8))(v122, v123);
        (*(v390 + 8))(v225, v389);
        v273 = type metadata accessor for TagFeedRouteModel(0);
        (*(*(v273 - 8) + 56))(v388, 1, 1, v273);
        goto LABEL_53;
      }

      if (v224 == *MEMORY[0x277D33DF8])
      {
        (*(v129 + 96))(v223, v128);
        v264 = *v223;

        v265 = sub_219BF4BE4();
        if (v265)
        {
          v266 = [v265 identifier];
          v267 = v225;
          v268 = v123;
          v269 = sub_219BF5414();
          v387 = v264;
          v271 = v270;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v268);
          (*(v390 + 8))(v267, v389);
          v235 = v388;
          *v388 = v269;
          v235[1] = v271;
          v236 = 7;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      v281 = *MEMORY[0x277D33E00];
      v282 = v224;
      (*(v121 + 8))(v122, v123);
      (*(v390 + 8))(v225, v389);
      (*(v129 + 8))(v223, v128);
      if (v282 != v281 && v282 != *MEMORY[0x277D33E18] && v282 != *MEMORY[0x277D33DE8] && v282 != *MEMORY[0x277D33E10])
      {
        v283 = type metadata accessor for TagFeedRouteModel(0);
        (*(*(v283 - 8) + 56))(v388, 1, 1, v283);
        return sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_5:
      v92 = type metadata accessor for TagFeedRouteModel(0);
      return (*(*(v92 - 8) + 56))(v388, 1, 1, v92);
    case 5u:
    case 6u:
    case 8u:
    case 0xDu:
      (*(v390 + 8))(v391, v389);
      v89 = type metadata accessor for TagFeedModel;
LABEL_3:
      v90 = v89;
      v91 = v81;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      v186 = *(v185 + 48);
      v187 = v318;
      v188 = v317;
      v189 = v319;
      (*(v318 + 32))(v317, v81, v319);
      v190 = v371;
      v191 = v372;
      (*(v371 + 32))(v78, &v81[v186], v372);
      v192 = v314;
      sub_219BF07D4();
      v193 = sub_219BEC4F4();
      (*(v315 + 8))(v192, v316);
      sub_219BF07F4();
      v194 = v392;
      v195 = WitnessTable;
      sub_219BF63B4();

      v196 = v391;
      sub_219857EE4(v193, v195, v387, a1, v391, v382, v388);
      swift_unknownObjectRelease();
      (*(v385 + 8))(v195, v386);
      (*(v190 + 8))(v78, v191);
      (*(v187 + 8))(v188, v189);
      return (*(v390 + 8))(v196, v389);
    case 9u:
      v197 = v348;
      v198 = v345;
      v199 = v81;
      v200 = v349;
      (*(v348 + 32))(v345, v199, v349);
      v201 = v351;
      sub_219BF07D4();
      v202 = v365;
      sub_219BEDAD4();
      (*(v353 + 8))(v201, v355);
      (*(v197 + 8))(v198, v200);
      (*(v390 + 8))(v391, v389);
      v203 = sub_219BF1DA4();
      v204 = *(v203 - 8);
      if ((*(v204 + 48))(v202, 1, v203) == 1)
      {
        v205 = type metadata accessor for TagFeedRouteModel(0);
        v206 = *(*(v205 - 8) + 56);
        v207 = v388;
      }

      else
      {
        v237 = v303;
        sub_219869C88(v202, v303, &qword_280E905C0, MEMORY[0x277D33610]);
        v238 = (*(v204 + 88))(v237, v203);
        v239 = v388;
        if (v238 == *MEMORY[0x277D33608])
        {
          (*(v204 + 96))(v237, v203);
          (*(v304 + 32))(v239, v237, v305);
          v240 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
          return sub_219869D68(v202, &qword_280E905C0, MEMORY[0x277D33610]);
        }

        (*(v204 + 8))(v237, v203);
        v205 = type metadata accessor for TagFeedRouteModel(0);
        v206 = *(*(v205 - 8) + 56);
        v207 = v239;
      }

      v206(v207, 1, 1, v205);
      return sub_219869D68(v202, &qword_280E905C0, MEMORY[0x277D33610]);
    case 0xAu:
      (*(v375 + 32))(v374, v81, v376);
      v157 = (v387 + *((*MEMORY[0x277D85000] & *v387) + 0xA8));
      v158 = __swift_project_boxed_opaque_existential_1(v157, v157[3]);
      v159 = v320;
      sub_219BF07D4();
      v160 = sub_219BF06B4();
      (*(v321 + 8))(v159, v322);
      v161 = sub_219BF07B4();
      v382 = v162;
      WitnessTable = swift_getWitnessTable();
      v163 = v391;
      v164 = sub_219BF04D4();
      sub_2198587BC(v164, v165, v381);

      v167 = v385;
      v166 = v386;
      v168 = v373;
      (*(v385 + 104))(v373, *MEMORY[0x277D32EB0], v386);
      (*(v167 + 56))(v168, 0, 1, v166);
      v169 = v366;
      sub_219BDE4B4();
      v170 = v378;
      (*(v383 + 56))(v169, 0, 1, v378);
      v171 = *v158;
      v172 = *(*v158 + 16);
      v173 = [objc_msgSend(v160 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v173)
      {
        sub_219BF5414();
        v173 = sub_219BF53D4();
      }

      v174 = [v172 hasMutedSubscriptionForTagID_];

      if (!v174)
      {
        goto LABEL_56;
      }

      v175 = v302;
      sub_219869C88(v169, v302, &unk_280EE8C40, MEMORY[0x277D30018]);
      v176 = v383;
      if ((*(v383 + 48))(v175, 1, v170) == 1)
      {
        v177 = MEMORY[0x277D30018];
        sub_219869D68(v169, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        v178 = v175;
        v179 = &unk_280EE8C40;
        v180 = v177;
LABEL_20:
        sub_219869D68(v178, v179, v180);
LABEL_57:
        v274 = v387;
        v275 = v388;
        v276 = WitnessTable;
        v277 = v382;
        v278 = 0;
        goto LABEL_58;
      }

      v253 = v298;
      (*(v176 + 32))(v298, v175, v170);
      if ((sub_219BDE4A4() & 1) == 0)
      {
        (*(v176 + 8))(v253, v170);
LABEL_56:
        sub_219869D68(v169, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        goto LABEL_57;
      }

      __swift_project_boxed_opaque_existential_1((v171 + 24), *(v171 + 48));
      v254 = v381;
      sub_219BDE4C4();
      v255 = v294;
      sub_219BDEA24();
      v256 = v255;
      sub_219869D68(v254, &qword_280EE8D20, MEMORY[0x277D2FD40]);
      v257 = v292;
      v258 = v255;
      v259 = v293;
      if ((*(v292 + 48))(v258, 1, v293) == 1)
      {
        (*(v383 + 8))(v298, v170);
        sub_219869D68(v366, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        v179 = &unk_280EE8D10;
        v180 = MEMORY[0x277D2FD50];
        v178 = v256;
        goto LABEL_20;
      }

      v284 = *(v257 + 32);
      v285 = v291;
      v284(v291, v256, v259);
      v286 = swift_allocObject();
      *(v286 + 40) = v259;
      *(v286 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v286 + 16));
      v284(boxed_opaque_existential_1, v285, v259);
      (*(v383 + 8))(v298, v170);
      sub_219869D68(v366, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v375 + 8))(v374, v376);
      (*(v390 + 8))(v163, v389);
      v274 = 0;
      v288 = v382;
      *(v286 + 56) = v161;
      *(v286 + 64) = v288;
      v289 = v387;
      *(v286 + 72) = v160;
      *(v286 + 80) = v289;
      v278 = 1;
      v161 = v286;
      *(v286 + 88) = WitnessTable;
      *(v286 + 96) = 0;
      v277 = 0;
      v160 = 0;
      v276 = 0;
      v275 = v388;
LABEL_58:
      *v275 = v161;
      v275[1] = v277;
      v275[2] = v160;
      v275[3] = v274;
      v275[4] = v276;
      *(v275 + 40) = v278;
      v279 = type metadata accessor for TagFeedRouteModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v279 - 8) + 56))(v275, 0, 1, v279);
      v280 = v387;

      return v280;
    case 0xBu:
      v208 = v327;
      v209 = v326;
      v210 = v328;
      (*(v327 + 32))(v326, v81, v328);
      v211 = v329;
      sub_219BF07D4();
      v212 = sub_219BF0AA4();
      (*(v330 + 8))(v211, v331);
      v213 = v334;
      v214 = *(v334 + 20);
      v215 = sub_219BF24E4();
      v216 = v333;
      (*(*(v215 - 8) + 56))(&v333[v214], 1, 1, v215);
      v217 = sub_219BE5F84();
      v219 = v218;
      (*(v208 + 8))(v209, v210);
      (*(v390 + 8))(v391, v389);
      *v216 = v212;
      *(v216 + 8) = 0;
      *(v216 + 16) = 1;
      v220 = (v216 + v213[6]);
      *v220 = v217;
      v220[1] = v219;
      v221 = (v216 + v213[7]);
      *v221 = 0;
      v221[1] = 0;
      v222 = (v216 + v213[8]);
      *v222 = 0;
      v222[1] = 0;
      v119 = v388;
      sub_219867CDC(v216, v388, type metadata accessor for PuzzleModel);
      v120 = type metadata accessor for TagFeedRouteModel(0);
      goto LABEL_28;
    case 0xCu:
      v144 = v335;
      v145 = v332;
      v146 = v336;
      (*(v335 + 32))(v332, v81, v336);
      v147 = v337;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v338 + 8))(v147, v339);
      v119 = v388;
      sub_219BDD644();
      (*(v144 + 8))(v145, v146);
LABEL_14:
      (*(v390 + 8))(v391, v389);
      v120 = type metadata accessor for TagFeedRouteModel(0);
      goto LABEL_28;
    case 0xEu:
      v94 = v346;
      v95 = v350;
      (*(v377 + 32))(v346, v81, v350);
      v96 = sub_219BE5F84();
      v97 = v342;
      *v342 = v96;
      v97[1] = v98;
      (*(v340 + 104))(v97, *MEMORY[0x277D2FDC8], v341);
      v99 = sub_219BDD944();
      (*(*(v99 - 8) + 56))(v343, 1, 1, v99);
      v100 = v379;
      sub_219BDDBD4();
      v382 = *(v387 + *((*MEMORY[0x277D85000] & *v387) + 0xB0));
      v101 = v347;
      sub_219BF07D4();
      v102 = sub_219BF0AF4();
      v375 = v103;
      v376 = v102;
      v104 = *(v354 + 8);
      v105 = v356;
      v104(v101, v356);
      v106 = v352;
      sub_219BF07D4();
      sub_219BF0B44();
      v104(v106, v105);
      v107 = v357;
      v108 = v358;
      (*(v357 + 16))(v344, v100, v358);
      v109 = sub_219BF04D4();
      sub_2198587BC(v109, v110, v381);

      v112 = v385;
      v111 = v386;
      v113 = v373;
      (*(v385 + 104))(v373, *MEMORY[0x277D32EB0], v386);
      (*(v112 + 56))(v113, 0, 1, v111);
      v114 = v325;
      sub_219BDE4B4();
      (*(v383 + 56))(v114, 0, 1, v378);
      sub_219BF07F4();
      v115 = v392;
      sub_219BF63B4();

      v116 = v359;
      sub_219BDEB04();
      swift_getWitnessTable();
      v117 = v360;
      sub_219BDE2F4();
      (*(v361 + 8))(v116, v363);
      sub_219BDEA04();
      sub_219BDEBC4();

      v118 = sub_219BDE9F4();
      (*(v362 + 8))(v117, v364);
      (*(v107 + 8))(v379, v108);
      (*(v377 + 8))(v94, v95);
      (*(v390 + 8))(v391, v389);
      v119 = v388;
      *v388 = v118;
      v120 = type metadata accessor for TagFeedRouteModel(0);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    default:
      (*(v390 + 8))(v391, v389);

      sub_2186F0CC0(0);
      v90 = type metadata accessor for TagFeedGapLocation;
      v91 = &v81[*(v181 + 48)];
LABEL_4:
      sub_219869D08(v91, v90);
      goto LABEL_5;
  }
}

double sub_219857580()
{
  v1 = v0;
  v2 = type metadata accessor for SportsScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsNavigationTagFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BE8C14();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagFeedRouteModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v49 = sub_219BE6944();
  v15 = v14;
  sub_219BE6934();
  switch((v56 >> 58) & 0x3C | (v56 >> 1) & 3)
  {
    case 0xCuLL:
      v35 = swift_projectBox();
      sub_219867D44(v35, v7, type metadata accessor for SportsNavigationTagFeedGroup);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        *v13 = *v7;
        swift_storeEnumTagMultiPayload();
        swift_unknownObjectRetain();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
        sub_219869D08(v7, type metadata accessor for SportsNavigationTagFeedGroup);
        goto LABEL_22;
      }

      sub_219869D08(v7, type metadata accessor for SportsNavigationTagFeedGroup);
      goto LABEL_3;
    case 0xFuLL:

      v38 = swift_unknownObjectWeakLoadStrong();
      if (!v38)
      {
        goto LABEL_26;
      }

      v39 = v38;
      swift_storeEnumTagMultiPayload();
      sub_219BE8C04();
      __swift_project_boxed_opaque_existential_1((v39 + 48), *(v39 + 72));
      v51 = v49;
      v52 = v15;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      sub_218E40BA4(v13, v10, &v51);
      (*(v50 + 8))(v10, v8);
      sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
      goto LABEL_23;
    case 0x10uLL:
      if ([*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) feedConfiguration] == 3)
      {
        v25 = swift_unknownObjectWeakLoadStrong();
        if (!v25)
        {

LABEL_26:

          return result;
        }

        v26 = v25;
        *v13 = 5;
        swift_storeEnumTagMultiPayload();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        v27 = type metadata accessor for TagFeedRouteModel;
        v28 = v13;
      }

      else
      {
        v46 = swift_projectBox();
        sub_219867D44(v46, v4, type metadata accessor for SportsScoresTagFeedGroup);
        v47 = swift_unknownObjectWeakLoadStrong();
        if (!v47)
        {

          sub_219869D08(v4, type metadata accessor for SportsScoresTagFeedGroup);
LABEL_3:

          return result;
        }

        v48 = v47;
        *v13 = *v4;
        swift_storeEnumTagMultiPayload();
        swift_unknownObjectRetain();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v48 + 48), *(v48 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
        v27 = type metadata accessor for SportsScoresTagFeedGroup;
        v28 = v4;
      }

      sub_219869D08(v28, v27);
LABEL_22:

LABEL_23:

      swift_unknownObjectRelease();
      return result;
    case 0x13uLL:

      v29 = MEMORY[0x277D85000];
      v30 = swift_unknownObjectWeakLoadStrong();
      if (!v30)
      {
        goto LABEL_26;
      }

      v19 = v30;
      v31 = [objc_msgSend(*(*(v1 + *((*v29 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v32 = sub_219BF5414();
      v34 = v33;

      *v13 = v32;
      *(v13 + 1) = v34;
      v24 = 4;
      goto LABEL_18;
    case 0x14uLL:

      v17 = MEMORY[0x277D85000];
      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_26;
      }

      v19 = v18;
      v20 = [objc_msgSend(*(*(v1 + *((*v17 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v21 = sub_219BF5414();
      v23 = v22;

      *v13 = v21;
      *(v13 + 1) = v23;
      v24 = 7;
      goto LABEL_18;
    case 0x25uLL:

      v40 = MEMORY[0x277D85000];
      v41 = swift_unknownObjectWeakLoadStrong();
      if (!v41)
      {
        goto LABEL_26;
      }

      v19 = v41;
      v42 = [objc_msgSend(*(*(v1 + *((*v40 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v43 = sub_219BF5414();
      v45 = v44;

      *v13 = v43;
      *(v13 + 1) = v45;
      v24 = 11;
LABEL_18:
      *(v13 + 2) = v24;
      swift_storeEnumTagMultiPayload();
      sub_219BE8C04();
      __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
      v51 = v49;
      v52 = v15;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      sub_218E40BA4(v13, v10, &v51);
      (*(v50 + 8))(v10, v8);
      sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);

      swift_unknownObjectRelease();
      return result;
    default:

      goto LABEL_3;
  }
}

uint64_t sub_219857EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v70 = a6;
  v65 = a1;
  v66 = a5;
  v60 = a4;
  v68 = a2;
  v73 = a7;
  v52 = *a3;
  v53 = *MEMORY[0x277D85000];
  v7 = sub_219BDE744();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BF0634();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v67 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v50 - v12;
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v50 - v14;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v54 = &v50 - v16;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v50 - v18;
  sub_21898BF70(0);
  v50 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v51 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDE7A4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_218954350;
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v10);
  MEMORY[0x28223BE20](v28 - 8);
  v74 = &v50 - v29;
  sub_219BE6EC4();
  v75 = v76;
  v30 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v30, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v31 = v50;
  v32 = v60;
  sub_219BE5F84();
  sub_219BEB244();

  (*(v25 + 8))(v27, v24);
  (*(v20 + 16))(v51, v32, v31);
  swift_unknownObjectRetain();
  v33 = sub_219BF04D4();
  sub_2198587BC(v33, v34, v54);

  v35 = v62;
  v36 = *(v62 + 16);
  v37 = v57;
  v38 = v68;
  v39 = v64;
  v36(v57, v68, v64);
  v40 = *(v35 + 56);
  v41 = v39;
  v40(v37, 0, 1, v39);
  v42 = v56;
  sub_219BDE4B4();
  v43 = sub_219BDE4D4();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_219858DA0(v74, v63);
  v36(v67, v38, v41);
  type metadata accessor for TagFeedModel(0);
  sub_218CF5CE4();
  v44 = v55;
  sub_219BDE794();
  type metadata accessor for TagFeedInteractor(255, *((v53 & v52) + 0x50), *((v53 & v52) + 0x58), v45);
  swift_getWitnessTable();
  v46 = v69;
  sub_219BDEB64();
  sub_219BDE734();
  sub_219BDEC64();

  v47 = v73;
  sub_219BDE724();
  (*(v71 + 8))(v46, v72);
  (*(v59 + 8))(v44, v61);
  sub_219869D68(v74, &unk_280EE5830, v58);
  v48 = type metadata accessor for TagFeedRouteModel(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
}

uint64_t sub_2198587BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v4 = sub_219BE0674();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v36 - v7;
  sub_218954408(0);
  v40 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  sub_218954350(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v44 = v45;
  v20 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v20, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v21 = v40;
  sub_219BEB244();
  (*(v9 + 8))(v11, v21);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_219869D68(v14, &unk_280EE5830, sub_218954350);
    v22 = sub_219BDDD94();
    return (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  }

  (*(v17 + 32))(v19, v14, v16);
  sub_219BE6934();
  (*(v17 + 8))(v19, v16);
  v24 = (v45 >> 58) & 0x3C | (v45 >> 1) & 3;

  v25 = **(&unk_278243208 + v24);
  v27 = v38;
  v26 = v39;
  v28 = v36;
  (*(v38 + 104))(v36, v25, v39);
  v29 = v37;
  (*(v27 + 32))(v37, v28, v26);
  v30 = (*(v27 + 88))(v29, v26);
  v31 = v43;
  if (v30 == *MEMORY[0x277D2E6C0] || v30 == *MEMORY[0x277D2E6B0] || v30 == *MEMORY[0x277D2E6A0])
  {
LABEL_9:
    v32 = MEMORY[0x277D2FD28];
    goto LABEL_10;
  }

  if (v30 != *MEMORY[0x277D2E6B8])
  {
    if (v30 != *MEMORY[0x277D2E6A8])
    {
      v35 = *MEMORY[0x277D2FD28];
      v34 = sub_219BDDD94();
      (*(*(v34 - 8) + 104))(v31, v35, v34);
      (*(v27 + 8))(v29, v26);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v32 = MEMORY[0x277D2FD38];
LABEL_10:
  v33 = *v32;
  v34 = sub_219BDDD94();
  (*(*(v34 - 8) + 104))(v31, v33, v34);
LABEL_11:
  sub_219BDDD94();
  return (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
}

uint64_t sub_219858DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  sub_219869C88(a1, v16 - v5, &unk_280EE5830, sub_218954350);
  sub_218954350(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    sub_219869D68(v6, &unk_280EE5830, sub_218954350);
    v10 = sub_219BDEA34();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_219BE6934();
    v12 = v16[1];
    (*(v9 + 8))(v6, v8);
    v18 = &type metadata for TagFeedSectionDescriptor;
    v19 = sub_219867C88();
    *&v17 = v12;
    sub_2186CB1F0(&v17, v20);
    sub_2186CB1F0(v20, a2);
    v13 = *MEMORY[0x277D30258];
    v14 = sub_219BDEA34();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a2, v13, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t sub_219859004(void (*a1)(char *, uint64_t))
{
  v95 = a1;
  ObjectType = swift_getObjectType();
  v89 = *MEMORY[0x277D85000] & *v1;
  v2 = sub_219BE9944();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v85 = v3;
  v86 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BED174();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BED1D4();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BED214();
  v76 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v73 - v8;
  v9 = sub_219BE9C04();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v73 - v12;
  sub_218954408(0);
  v91 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE61B4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v96 = v1;
  sub_219BE6EC4();
  sub_219BE6F74();

  v24 = *(v18 + 104);
  v24(v20, *MEMORY[0x277D6D510], v17);
  v100 = v23;
  v25 = sub_219BE61A4();
  v26 = *(v18 + 8);
  v98 = v18 + 8;
  v99 = v17;
  v97 = v26;
  v26(v20, v17);
  if (v25)
  {
    sub_219BE6EC4();
    v107 = aBlock;
    v28 = MEMORY[0x277D6D8B8];
    sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
    sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v28, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v29 = sub_219759E94();
    (*(v14 + 8))(v16, v91);
    if ((~v29 & 0xF000000000000007) != 0)
    {
      v27.n128_f64[0] = sub_21885AB78(v29);
    }

    else
    {
      v30 = v92;
      sub_219BE9934();
      v31 = v93;
      v32 = v94;
      v33 = v83;
      (*(v93 + 104))(v83, *MEMORY[0x277D6E830], v94);
      v34 = sub_219BE9BF4();
      v35 = *(v31 + 8);
      v35(v33, v32);
      v35(v30, v32);
      if (v34)
      {
        if (qword_280E8D7F8 != -1)
        {
          swift_once();
        }

        v36 = qword_280F61708;
        v37 = sub_219BF6214();
        v38 = MEMORY[0x277D84F90];
        sub_219BE5314("Tag feed will attempt auto refresh after coming back to foreground", 66, 2, &dword_2186C1000, v36, v37, MEMORY[0x277D84F90]);
        Strong = swift_unknownObjectWeakLoadStrong();
        v40 = v97;
        if (Strong)
        {
          v41 = swift_unknownObjectWeakLoadStrong();
          if (v41)
          {
            *(swift_allocObject() + 16) = v41;
            swift_unknownObjectRetain();
            sub_219BE3494();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
        v94 = sub_219BF66A4();
        v42 = v74;
        sub_219BED1F4();
        v43 = v75;
        sub_219BED244();
        v95 = *(v76 + 8);
        v95(v42, v84);
        v44 = swift_allocObject();
        v45 = v96;
        *(v44 + 16) = v96;
        v105 = sub_219869E58;
        v106 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = sub_218793E0C;
        v104 = &block_descriptor_178;
        v46 = _Block_copy(&aBlock);
        v47 = v45;

        v48 = v77;
        sub_219BED1A4();
        aBlock = v38;
        sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v49 = v79;
        v50 = v82;
        sub_219BF7164();
        v51 = v94;
        MEMORY[0x21CECD420](v43, v48, v49, v46);
        _Block_release(v46);

        (*(v81 + 8))(v49, v50);
        v52 = v48;
        v53 = v100;
        (*(v78 + 8))(v52, v80);
        v95(v43, v84);
        v54 = v99;
        return v40(v53, v54);
      }
    }
  }

  v54 = v99;
  (v24)(v20, *MEMORY[0x277D6D520], v99, v27);
  sub_2186CC41C(&qword_280EE5AF0, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
  v53 = v100;
  v55 = sub_219BF53A4();
  v40 = v97;
  v97(v20, v54);
  if ((v55 & 1) == 0)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v56 = qword_280F61708;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v102 = 0xE000000000000000;
    v58 = v92;
    v59 = v95;
    sub_219BE9934();
    v60 = v94;
    sub_219BF7484();
    (*(v93 + 8))(v58, v60);
    v61 = aBlock;
    v62 = v102;
    *(v57 + 56) = MEMORY[0x277D837D0];
    *(v57 + 64) = sub_2186FC3BC();
    *(v57 + 32) = v61;
    *(v57 + 40) = v62;
    v63 = sub_219BF6214();
    sub_219BE5314("Tag feed will check auto refresh triggered by session=%{public}@", 64, 2, &dword_2186C1000, v56, v63, v57);

    MEMORY[0x28223BE20](v64);
    *(&v73 - 2) = v96;
    sub_219BE3204();
    v66 = v87;
    v65 = v88;
    v67 = v86;
    (*(v87 + 16))(v86, v59, v88);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    v70 = v89;
    *(v69 + 16) = *(v89 + 80);
    *(v69 + 24) = *(v70 + 88);
    (*(v66 + 32))(v69 + v68, v67, v65);
    v71 = sub_219BE2E54();
    sub_219BE2F94();

    v53 = v100;
  }

  return v40(v53, v54);
}

void sub_219859CD4(_BYTE *a1, void *a2)
{
  v30 = a2;
  v4 = sub_219BED174();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BED1D4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BED214();
  v31 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = sub_219BE9C04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v29 = v2;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v17 = qword_280F61708;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v38 = 0xE000000000000000;
    sub_219BE9934();
    sub_219BF7484();
    (*(v14 + 8))(v16, v13);
    v19 = aBlock;
    v20 = v38;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = sub_219BF6214();
    sub_219BE5314("Tag feed will auto refresh triggered by session=%{public}@", 58, 2, &dword_2186C1000, v17, v21, v18);

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v22 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v31 = *(v31 + 8);
    (v31)(v9, v43);
    v23 = swift_allocObject();
    v24 = v30;
    *(v23 + 16) = v30;
    v41 = sub_219866DBC;
    v42 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_218793E0C;
    v40 = &block_descriptor_45_5;
    v25 = _Block_copy(&aBlock);
    v26 = v24;

    sub_219BED1A4();
    aBlock = MEMORY[0x277D84F90];
    sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v27 = v33;
    v28 = v36;
    sub_219BF7164();
    MEMORY[0x21CECD420](v12, v7, v27, v25);
    _Block_release(v25);

    (*(v35 + 8))(v27, v28);
    (*(v32 + 8))(v7, v34);
    (v31)(v12, v43);
  }
}

uint64_t sub_21985A274(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
      if (!v3 || (*(v3 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) & 1) == 0)
      {
        sub_219BE1E74();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21985A374()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0xD0));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = off_282A2FF28[0];
  v3 = type metadata accessor for PuzzleBadgingCoordinator();
  return v2(v3);
}

double sub_21985A3F4(uint64_t a1)
{
  if (sub_21985A4F4())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_21984E25C(a1);
  }

  return result;
}

uint64_t sub_21985A4F4()
{
  v40 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v40);
  v1 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v3 = v2;
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D4F0, sub_218954350, sub_2196AB238, MEMORY[0x277D84310]);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  sub_218954408(0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_218954350(0);
  v11 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v14;
  MEMORY[0x28223BE20](v15);
  v38 = &v34 - v16;
  sub_219BE6EC4();
  v41[4] = v41[0];
  v17 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v17, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v18 = sub_218B18E00();
  if (*(v18 + 2))
  {
    v19 = v39;
    v20 = *(v39 + 16);
    v21 = v35;
    v20(v35, &v18[(*(v39 + 80) + 32) & ~*(v39 + 80)], v11);

    v22 = *(v19 + 32);
    v23 = v38;
    v22(v38, v21, v11);
    v20(v36, v23, v11);
    sub_2186CC41C(&unk_280EE5860, sub_218954350, MEMORY[0x277D6D728]);
    sub_219BF56A4();
    v24 = *(v37 + 36);
    sub_2196AB238();
    sub_219BF5E84();
    v25 = v39;
    if (*&v8[v24] == v41[0])
    {
      v26 = 0;
    }

    else
    {
      v27 = (v34 + 16);
      v28 = (v34 + 8);
      while (1)
      {
        v29 = sub_219BF5EC4();
        (*v27)(v5);
        v29(v41, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v28)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_219869D08(v1, type metadata accessor for TagFeedModel);
        sub_219BF5E84();
        if (*&v8[v24] == v41[0])
        {
          v26 = 0;
          goto LABEL_10;
        }
      }

      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v31 = *(v30 + 48);
      v32 = sub_219BF1584();
      (*(*(v32 - 8) + 8))(&v1[v31], v32);
      sub_219869D08(v1, type metadata accessor for TagFeedGapLocation);
      v26 = 1;
LABEL_10:
      v23 = v38;
      v25 = v39;
    }

    sub_219866C74(v8, &qword_280E8D4F0, sub_218954350, sub_2196AB238);
    (*(v25 + 8))(v23, v11);
  }

  else
  {

    return 1;
  }

  return v26;
}

uint64_t sub_21985AB44(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219866F58(v3, a1, Strong, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21985ABEC()
{
  v0 = sub_219BDB1D4();
  if (v0)
  {
    v2 = sub_21985ACC0(v0);

    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          sub_219867178(v4, v2, v5);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21985ACC0(uint64_t a1)
{
  v9 = 0x6168436465646461;
  sub_219BF72A4();
  if (*(a1 + 16) && (v2 = sub_21931EECC(v10), (v3 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v2, v11);
    sub_218B6B67C(v10);
    sub_2186E2394();
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_218B6B67C(v10);
  }

  v9 = 0xD000000000000011;
  sub_219BF72A4();
  if (*(a1 + 16) && (v4 = sub_21931EECC(v10), (v5 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v4, v11);
    sub_218B6B67C(v10);
    sub_2186E2394();
    if (swift_dynamicCast())
    {
LABEL_9:
      sub_21984D97C(v9);
      v7 = v6;

      return v7;
    }
  }

  else
  {
    sub_218B6B67C(v10);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21985AE58(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BDB1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB1A4();
  v8 = a1;
  sub_21985ABEC();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21985AF80(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xA8)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD8)]);
  return __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE0)]);
}

void sub_21985B29C(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v91 = a2;
  v81 = a4;
  v90 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v67 - v7;
  v8 = sub_219BDC104();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v67 - v12;
  v13 = sub_219BEBE64();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE42A0, MEMORY[0x277D6E740], v5);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v67 - v16;
  v77 = sub_219BE16D4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v5);
  MEMORY[0x28223BE20](v18 - 8);
  v85 = &v67 - v19;
  sub_218954350(0);
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5CD0, sub_21898BF70, v5);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v67 - v24;
  sub_21898BF70(0);
  v27 = v26;
  v89 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDEDB4();
  if (v36)
  {
    sub_21985BF58(a1, v91, v90, v35, v36);
  }

  else
  {
    v71 = v29;
    v70 = v22;
    v72 = v32;
    v37 = v88;
    v38 = *(v92 + *((*MEMORY[0x277D85000] & *v92) + 0x98));
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    v39 = v89;
    if ((*(v89 + 48))(v25, 1, v27) == 1)
    {
      (*(v72 + 8))(v34, v31);
      sub_219869D68(v25, &unk_280EE5CD0, sub_21898BF70);
    }

    else
    {
      v69 = v38;
      v40 = v71;
      (*(v39 + 32))(v71, v25, v27);
      sub_219BDEDC4();
      v41 = v85;
      sub_219BEB244();

      v43 = v86;
      v42 = v87;
      if ((*(v86 + 48))(v41, 1, v87) == 1)
      {
        (*(v39 + 8))(v40, v27);
        (*(v72 + 8))(v34, v31);
        sub_219869D68(v41, &unk_280EE5830, sub_218954350);
      }

      else
      {
        v68 = v27;
        v44 = *(v43 + 32);
        v45 = v70;
        v44(v70, v41, v42);
        v46 = sub_219BE97D4();
        v47 = v74;
        (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
        v48 = v75;
        sub_21968E4D8(v45, v47, 0, 0, v75);
        sub_219869D68(v47, &qword_280EE42A0, MEMORY[0x277D6E740]);
        sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
        v49 = v77;
        sub_219BDD1F4();
        (*(v76 + 8))(v48, v49);
        sub_2198680A8();
        v50 = v78;
        v91 = v34;
        sub_219BEB264();
        v51 = v79;
        v52 = v80;
        if ((*(v79 + 48))(v50, 1, v80) == 1)
        {
          sub_219869D68(v50, &qword_280EE3450, MEMORY[0x277D2D430]);
          v53 = v84;
          v54 = v82;
          v55 = v37;
        }

        else
        {
          v56 = v73;
          (*(v51 + 32))(v73, v50, v52);
          sub_219717458(v90, v93);
          v53 = v84;
          v54 = v82;
          v55 = v37;
          if (v94)
          {
            __swift_project_boxed_opaque_existential_1(v93, v94);
            sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
            sub_219BEC144();
            (*(v51 + 8))(v56, v52);
            __swift_destroy_boxed_opaque_existential_1(v93);
          }

          else
          {
            (*(v51 + 8))(v56, v52);
            sub_219308EE0(v93);
          }
        }

        v57 = v72;
        v58 = v71;
        v59 = v91;
        sub_219BEB2F4();
        v60 = v83;
        v61 = (*(v53 + 48))(v55, 1, v83);
        v62 = v81;
        if (v61 == 1)
        {
          (*(v86 + 8))(v70, v87);
          (*(v89 + 8))(v58, v68);
          (*(v57 + 8))(v59, v31);
          sub_219869D68(v55, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        else
        {
          (*(v53 + 32))(v54, v55, v60);
          if (v62)
          {
            (*(v53 + 8))(v54, v60);
            (*(v86 + 8))(v70, v87);
            (*(v89 + 8))(v71, v68);
          }

          else
          {
            v63 = sub_219BDEC24();
            v64 = v68;
            if (v63)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              v66 = v89;
              if (Strong)
              {
                if (swift_unknownObjectWeakLoadStrong())
                {
                  sub_2198688EC(v54);
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
              }

              (*(v53 + 8))(v54, v60);
              (*(v86 + 8))(v70, v87);
              (*(v66 + 8))(v71, v64);
            }

            else
            {
              (*(v53 + 8))(v54, v60);
              (*(v86 + 8))(v70, v87);
              (*(v89 + 8))(v71, v64);
            }
          }

          (*(v57 + 8))(v91, v31);
        }
      }
    }
  }
}

uint64_t sub_21985BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  v62 = a5;
  v58 = a3;
  v52 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v49 - v9;
  v10 = sub_219BEBE64();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v49 - v13;
  v14 = sub_219BE16D4();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v7);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  sub_218954350(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D85000];
  sub_219BDEC74();
  sub_219BEB244();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    (*(v26 + 8))(v28, v25);
    v30 = &unk_280EE5830;
    v31 = sub_218954350;
    v32 = v18;
    return sub_219869D68(v32, v30, v31);
  }

  v49 = v21;
  v50 = v26;
  v62 = v25;
  (*(v21 + 32))(v23, v18, v20);
  v33 = (v6 + *((*v29 & *v6) + 0xE0));
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v61 = v20;
  sub_219BE6944();
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  v34 = sub_219BF00E4();

  v35 = v53;
  sub_2190600D0(v34, 0, v53);
  v37 = v54;
  v36 = v55;
  v38 = v23;
  if ((*(v54 + 48))(v35, 1, v55) == 1)
  {
    sub_219869D68(v35, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v39 = v51;
    (*(v37 + 32))(v51, v35, v36);
    sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDD1F4();
    (*(v37 + 8))(v39, v36);
  }

  v41 = v59;
  v40 = v60;
  v42 = v56;
  v43 = v57;
  v44 = v62;
  v45 = v50;
  sub_2198680A8();
  sub_219BEB274();
  v46 = (*(v41 + 48))(v42, 1, v40);
  v47 = v58;
  if (v46 == 1)
  {
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    v30 = &qword_280EE3450;
    v31 = MEMORY[0x277D2D430];
    v32 = v42;
    return sub_219869D68(v32, v30, v31);
  }

  (*(v41 + 32))(v43, v42, v40);
  sub_219717458(v47, v63);
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1(v63, v64);
    sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
    sub_219BEC144();
    (*(v41 + 8))(v43, v40);
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    (*(v41 + 8))(v43, v40);
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    return sub_219308EE0(v63);
  }
}

void sub_21985C748(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v91 = a3;
  v89 = a4;
  v93 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = v70 - v7;
  v78 = sub_219BDC104();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5CD0, sub_21898BF70, v5);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v70 - v10;
  sub_21898BF70(0);
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = v70 - v14;
  v15 = sub_219BEBE64();
  v16 = *(v15 - 8);
  v87 = v15;
  v88 = v16;
  MEMORY[0x28223BE20](v15);
  v79 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE42A0, MEMORY[0x277D6E740], v5);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = v70 - v19;
  v83 = sub_219BE16D4();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v21 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v5);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v70 - v23;
  sub_218954350(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDD334();
  if (v36)
  {
    sub_2198680FC(a1, v93, v91, v35, v36);

    return;
  }

  v71 = v21;
  v72 = v29;
  v74 = v27;
  v37 = v26;
  v73 = v32;
  v38 = sub_219BDD344();
  if (!v39)
  {
    return;
  }

  v40 = *(v92 + *((*MEMORY[0x277D85000] & *v92) + 0xB8));
  v41 = v39;
  v42 = v38;
  sub_219BDEBD4();
  v70[1] = v42;
  v70[2] = v41;
  sub_219BEB244();
  v43 = v74;
  v44 = v37;
  if ((*(v74 + 48))(v24, 1, v37) == 1)
  {
    sub_219869D68(v24, &unk_280EE5830, sub_218954350);
    v45 = v90;
    if (v89)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v70[0] = v40;
    v46 = v72;
    (*(v43 + 32))(v72, v24, v44);
    v47 = sub_219BE97D4();
    v48 = v84;
    (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
    v49 = v71;
    sub_21968E4D8(v46, v48, 0, 0, v71);
    sub_219869D68(v48, &qword_280EE42A0, MEMORY[0x277D6E740]);
    sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    v50 = v83;
    v51 = v46;
    sub_219BDD1F4();
    (*(v85 + 8))(v49, v50);
    sub_2198680A8();
    v52 = v86;
    v53 = v31;
    sub_219BEB274();
    v54 = v87;
    v55 = v88;
    if ((*(v88 + 48))(v52, 1, v87) == 1)
    {
      (*(v43 + 8))(v51, v44);
      sub_219869D68(v52, &qword_280EE3450, MEMORY[0x277D2D430]);
      v56 = v89;
    }

    else
    {
      v57 = v79;
      (*(v55 + 32))(v79, v52, v54);
      sub_219717458(v91, v94);
      v56 = v89;
      if (v95)
      {
        v93 = v44;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
        sub_219BEC144();
        (*(v55 + 8))(v57, v54);
        (*(v74 + 8))(v51, v93);
        __swift_destroy_boxed_opaque_existential_1(v94);
      }

      else
      {
        (*(v55 + 8))(v57, v54);
        (*(v74 + 8))(v51, v44);
        sub_219308EE0(v94);
      }
    }

    v31 = v53;
    v45 = v90;
    if (v56)
    {
      goto LABEL_18;
    }
  }

  if ((sub_219BDEB84() & 1) == 0)
  {
LABEL_18:

    (*(v73 + 8))(v34, v31);
    return;
  }

  v58 = v80;
  sub_219BEB1C4();

  v59 = v81;
  v60 = v31;
  v61 = v82;
  if ((*(v81 + 48))(v58, 1, v82) == 1)
  {
    (*(v73 + 8))(v34, v60);
    sub_219869D68(v58, &unk_280EE5CD0, sub_21898BF70);
  }

  else
  {
    v62 = v76;
    (*(v59 + 32))(v76, v58, v61);
    v63 = v61;
    v64 = v59;
    sub_219BEB2F4();
    v65 = v77;
    v66 = v78;
    if ((*(v77 + 48))(v45, 1, v78) == 1)
    {
      (*(v64 + 8))(v62, v63);
      (*(v73 + 8))(v34, v60);
      sub_219869D68(v45, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    }

    else
    {
      v67 = v75;
      (*(v65 + 32))(v75, v45, v66);
      Strong = swift_unknownObjectWeakLoadStrong();
      v69 = v73;
      if (Strong)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2198688EC(v67);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v66 = v78;
        v65 = v77;
      }

      (*(v65 + 8))(v67, v66);
      (*(v81 + 8))(v62, v82);
      (*(v69 + 8))(v34, v60);
    }
  }
}

double sub_21985D3AC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 96))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_21985D4F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v294 = a4;
  v297 = a2;
  v298 = a3;
  v303 = a5;
  v304 = a1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v250 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v260 = &v226 - v9;
  v258 = sub_219BEDAE4();
  v256 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v254 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_219BDEA14();
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v244 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_219BDEB14();
  v243 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v242 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v238 = &v226 - v14;
  v236 = sub_219BDDED4();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v237 = (&v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v253 = sub_219BDDBF4();
  v241 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v239 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v240 = &v226 - v18;
  v252 = sub_219BF0B74();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v249 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_219BF04A4();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_219BEDB94();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v227 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v234);
  v233 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_219BF0AC4();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v230 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v255 = &v226 - v25;
  v259 = sub_219BDDDA4();
  v257 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v248 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDE4D4();
  v299 = *(v27 - 8);
  v300 = v27;
  MEMORY[0x28223BE20](v27);
  v264 = &v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v29 - 8);
  v275 = &v226 - v30;
  v293 = sub_219BF13A4();
  MEMORY[0x28223BE20](v293);
  v270 = &v226 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v32 - 8);
  v277 = &v226 - v33;
  v281 = sub_219BF07A4();
  v280 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v276 = &v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v35 - 8);
  v267 = &v226 - v36;
  sub_2198668E4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v37 - 8);
  v269 = &v226 - v38;
  v274 = sub_219BDB954();
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v265 = &v226 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  MEMORY[0x28223BE20](v40 - 8);
  v268 = &v226 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v284 = &v226 - v43;
  v278 = sub_219BF1094();
  v279 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v282 = &v226 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BDE744();
  v291 = *(v45 - 8);
  v292 = v45;
  MEMORY[0x28223BE20](v45);
  v290 = &v226 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_219BF0634();
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v296 = &v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v48 - 8);
  v286 = &v226 - v49;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  MEMORY[0x28223BE20](v50 - 8);
  v266 = &v226 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v283 = &v226 - v53;
  MEMORY[0x28223BE20](v54);
  v295 = &v226 - v55;
  sub_219866BF4(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v57 = v56;
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v285 = &v226 - v59;
  v60 = sub_219BDE7A4();
  v288 = *(v60 - 8);
  v289 = v60;
  MEMORY[0x28223BE20](v60);
  v287 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BF0F34();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v226 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF0614();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v226 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v226 - v71;
  sub_219BE5FD4();
  v73 = (*(v67 + 88))(v72, v66);
  if (v73 == *MEMORY[0x277D32DB8] || v73 == *MEMORY[0x277D32D10] || v73 == *MEMORY[0x277D32E00])
  {
    goto LABEL_22;
  }

  if (v73 != *MEMORY[0x277D32E10])
  {
    if (v73 == *MEMORY[0x277D32E18])
    {
      (*(v67 + 96))(v72, v66);
      v84 = v279;
      v85 = v282;
      v86 = v72;
      v87 = v278;
      (*(v279 + 32))(v282, v86, v278);
      v88 = v284;
      sub_219BF1034();
      v89 = sub_219BF3484();
      v90 = *(v89 - 8);
      if ((*(v90 + 48))(v88, 1, v89) == 1)
      {
        v91 = v269;
        sub_219BF1084();
        v92 = v273;
        v93 = v274;
        if ((*(v273 + 48))(v91, 1, v274) == 1)
        {
          sub_219869D68(v91, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v94 = v267;
          sub_219BF1074();
          if ((*(v63 + 48))(v94, 1, v62) == 1)
          {
            (*(v84 + 8))(v85, v87);
            sub_219869D68(v94, &unk_280E90A30, MEMORY[0x277D33058]);
            v95 = type metadata accessor for TagFeedRouteModel(0);
            (*(*(v95 - 8) + 56))(v303, 1, 1, v95);
LABEL_36:
            sub_219869D68(v284, &qword_280E90180, MEMORY[0x277D33E20]);
            return;
          }

          sub_219BF0F14();
          (*(v63 + 8))(v94, v62);
          (*(v58 + 16))(v285, v304, v57);
          (*(v299 + 56))(v295, 1, 1, v300);
          v146 = sub_219BDEA34();
          (*(*(v146 - 8) + 56))(v286, 1, 1, v146);
          v147 = *(*(v302 + *((*MEMORY[0x277D85000] & *v302) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
          swift_unknownObjectRetain();
          v148 = v147;
          sub_219BF63B4();

          sub_2191FD45C();
          v149 = v287;
          sub_219BDE794();
          swift_getWitnessTable();
          v150 = v290;
          sub_219BDEB54();
          sub_219BDE734();
          sub_219BDEC64();

          v151 = v303;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v291 + 8))(v150, v292);
          (*(v288 + 8))(v149, v289);
          (*(v84 + 8))(v282, v87);
          v131 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v132 = *(*(v131 - 8) + 56);
          v133 = v151;
        }

        else
        {
          (*(v84 + 8))(v85, v87);
          v128 = *(v92 + 32);
          v129 = v265;
          v128(v265, v91, v93);
          v130 = v303;
          v128(v303, v129, v93);
          v131 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v132 = *(*(v131 - 8) + 56);
          v133 = v130;
        }

        v132(v133, 0, 1, v131);
        goto LABEL_36;
      }

      v116 = v268;
      sub_219869C88(v88, v268, &qword_280E90180, MEMORY[0x277D33E20]);
      v117 = (*(v90 + 88))(v116, v89);
      if (v117 == *MEMORY[0x277D33DF0])
      {
        (*(v90 + 96))(v116, v89);

        v118 = sub_219BF4024();
        if (v118)
        {
          v119 = v85;
          v120 = [v118 identifier];
          v121 = v84;
          v122 = sub_219BF5414();
          v123 = v87;
          v125 = v124;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v119, v123);
          v126 = v303;
          *v303 = v122;
          v126[1] = v125;
          v127 = 8;
LABEL_43:
          v126[2] = v127;
          v165 = type metadata accessor for TagFeedRouteModel(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v165 - 8) + 56))(v126, 0, 1, v165);
LABEL_45:

LABEL_46:
          sub_219869D68(v88, &qword_280E90180, MEMORY[0x277D33E20]);
          return;
        }

        goto LABEL_44;
      }

      if (v117 == *MEMORY[0x277D33E08])
      {
        (*(v90 + 96))(v116, v89);

        v134 = sub_219BF46D4();
        if (v134)
        {
          v135 = v85;
          v136 = [v134 identifier];
          v137 = v84;
          v138 = sub_219BF5414();
          v139 = v87;
          v141 = v140;
          swift_unknownObjectRelease();

          (*(v137 + 8))(v135, v139);
          v126 = v303;
          *v303 = v138;
          v126[1] = v141;
          v127 = 4;
          goto LABEL_43;
        }

LABEL_44:

        (*(v84 + 8))(v85, v87);
        v166 = type metadata accessor for TagFeedRouteModel(0);
        (*(*(v166 - 8) + 56))(v303, 1, 1, v166);
        goto LABEL_45;
      }

      if (v117 == *MEMORY[0x277D33DF8])
      {
        (*(v90 + 96))(v116, v89);

        v157 = sub_219BF4BE4();
        if (v157)
        {
          v158 = v85;
          v159 = [v157 identifier];
          v160 = v84;
          v161 = sub_219BF5414();
          v162 = v87;
          v164 = v163;
          swift_unknownObjectRelease();

          (*(v160 + 8))(v158, v162);
          v126 = v303;
          *v303 = v161;
          v126[1] = v164;
          v127 = 7;
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v181 = v85;
      v182 = *MEMORY[0x277D33E00];
      v183 = v117;
      (*(v84 + 8))(v181, v87);
      (*(v90 + 8))(v116, v89);
      if (v183 != v182 && v183 != *MEMORY[0x277D33E18] && v183 != *MEMORY[0x277D33DE8] && v183 != *MEMORY[0x277D33E10])
      {
        v184 = type metadata accessor for TagFeedRouteModel(0);
        (*(*(v184 - 8) + 56))(v303, 1, 1, v184);
        goto LABEL_46;
      }

      sub_219869D68(v88, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_23:
      v83 = type metadata accessor for TagFeedRouteModel(0);
      v80 = *(*(v83 - 8) + 56);
      v81 = v303;
      v82 = 1;
      goto LABEL_24;
    }

    if (v73 == *MEMORY[0x277D32DD8])
    {
      (*(v67 + 96))(v72, v66);
      v96 = v276;
      (*(v280 + 32))(v276, v72, v281);
      v97 = v302;
      v98 = (v302 + *((*MEMORY[0x277D85000] & *v302) + 0xA8));
      v99 = __swift_project_boxed_opaque_existential_1(v98, v98[3]);
      v100 = sub_219BF06B4();
      ObjectType = swift_getWitnessTable();
      v101 = v270;
      sub_219BE5FC4();
      sub_219BF1394();
      sub_219869D08(v101, MEMORY[0x277D33320]);
      v102 = sub_219BF04D4();
      v104 = v103;
      (*(v67 + 8))(v69, v66);
      sub_2198587BC(v102, v104, v277);

      v105 = v271;
      v106 = v275;
      v107 = v272;
      (*(v271 + 104))(v275, *MEMORY[0x277D32EB0], v272);
      (*(v105 + 56))(v106, 0, 1, v107);
      v108 = v283;
      sub_219BDE4B4();
      v110 = v299;
      v109 = v300;
      (*(v299 + 56))(v108, 0, 1, v300);
      v111 = *v99;
      v112 = *(*v99 + 16);
      v113 = [objc_msgSend(v100 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v113)
      {
        sub_219BF5414();
        v113 = sub_219BF53D4();
      }

      v114 = [v112 hasMutedSubscriptionForTagID_];

      if (v114)
      {
        v115 = v266;
        sub_219869C88(v283, v266, &unk_280EE8C40, MEMORY[0x277D30018]);
        if ((*(v110 + 48))(v115, 1, v109) == 1)
        {
          sub_219869D68(v115, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        else
        {
          v152 = v264;
          (*(v110 + 32))(v264, v115, v109);
          if (sub_219BDE4A4())
          {
            __swift_project_boxed_opaque_existential_1((v111 + 24), *(v111 + 48));
            v153 = v277;
            sub_219BDE4C4();
            v154 = v255;
            sub_219BDEA24();
            sub_219869D68(v153, &qword_280EE8D20, MEMORY[0x277D2FD40]);
            v155 = v257;
            v156 = v259;
            if ((*(v257 + 48))(v154, 1, v259) != 1)
            {
              v204 = *(v155 + 32);
              v205 = v248;
              v204(v248, v154, v156);
              v176 = swift_allocObject();
              *(v176 + 40) = v156;
              *(v176 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v176 + 16));
              v204(boxed_opaque_existential_1, v205, v156);
              (*(v110 + 8))(v264, v109);
              v178 = 0;
              *(v176 + 56) = 0;
              *(v176 + 64) = 0;
              *(v176 + 72) = v100;
              *(v176 + 80) = v97;
              v177 = 1;
              *(v176 + 88) = ObjectType;
              *(v176 + 96) = 0;
              v100 = 0;
              v179 = 0;
              v96 = v276;
              goto LABEL_53;
            }

            (*(v110 + 8))(v264, v109);
            sub_219869D68(v154, &unk_280EE8D10, MEMORY[0x277D2FD50]);
            v96 = v276;
          }

          else
          {
            (*(v110 + 8))(v152, v109);
          }
        }
      }

      v176 = 0;
      v177 = 0;
      v178 = v97;
      v179 = ObjectType;
LABEL_53:
      swift_unknownObjectRetain();
      sub_219869D68(v283, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v280 + 8))(v96, v281);
      v180 = v303;
      *v303 = v176;
      v180[1] = 0;
      v180[2] = v100;
      v180[3] = v178;
      v180[4] = v179;
      *(v180 + 40) = v177;
      v79 = type metadata accessor for TagFeedRouteModel(0);
      swift_storeEnumTagMultiPayload();
      v80 = *(*(v79 - 8) + 56);
      v81 = v180;
      goto LABEL_6;
    }

    if (v73 == *MEMORY[0x277D32CF8])
    {
LABEL_22:
      (*(v67 + 8))(v72, v66);
      goto LABEL_23;
    }

    if (v73 == *MEMORY[0x277D32DC0])
    {
      (*(v67 + 96))(v72, v66);
      v142 = v262;
      v143 = v261;
      v144 = v263;
      (*(v262 + 32))(v261, v72, v263);
      sub_219BF0404();
      goto LABEL_32;
    }

    if (v73 != *MEMORY[0x277D32CF0])
    {
      if (v73 == *MEMORY[0x277D32E08] || v73 == *MEMORY[0x277D32DB0] || v73 == *MEMORY[0x277D32DE0])
      {
        goto LABEL_22;
      }

      if (v73 == *MEMORY[0x277D32DF0])
      {
        (*(v67 + 96))(v72, v66);
        (*(v251 + 32))(v249, v72, v252);
        v185 = v298;

        v186 = sub_219BE5F84();
        v187 = v297;
        v188 = v237;
        *v237 = v297;
        v188[1] = v185;
        v188[2] = v186;
        v188[3] = v189;
        (*(v235 + 104))(v188, *MEMORY[0x277D2FDC0], v236);
        v190 = sub_219BDD944();
        (*(*(v190 - 8) + 56))(v238, 1, 1, v190);
        v191 = v240;
        sub_219BDDBD4();
        v304 = sub_219BF0AF4();
        v294 = v192;
        v293 = sub_219BF0B44();
        v193 = v241;
        (*(v241 + 16))(v239, v191, v253);
        v194 = v302;
        sub_2198587BC(v187, v185, v277);
        v195 = *(v194 + *((*MEMORY[0x277D85000] & *v194) + 0x78));
        v196 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor;
        v197 = *(v195 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
        v198 = v275;
        sub_219BF63B4();

        (*(v271 + 56))(v198, 0, 1, v272);
        v199 = v295;
        sub_219BDE4B4();
        (*(v299 + 56))(v199, 0, 1, v300);
        v200 = *(v195 + v196);
        sub_219BF63B4();

        v201 = v242;
        sub_219BDEB04();
        swift_getWitnessTable();
        v202 = v244;
        sub_219BDE2F4();
        sub_219BDEA04();
        sub_219BDEBC4();

        v203 = sub_219BDE9F4();
        (*(v246 + 8))(v202, v247);
        (*(v243 + 8))(v201, v245);
        (*(v193 + 8))(v191, v253);
        (*(v251 + 8))(v249, v252);
        v145 = v303;
        *v303 = v203;
        v79 = type metadata accessor for TagFeedRouteModel(0);
        goto LABEL_33;
      }

      if (v73 == *MEMORY[0x277D32D38])
      {
        goto LABEL_22;
      }

      if (v73 == *MEMORY[0x277D32DE8])
      {
        (*(v67 + 96))(v72, v66);
        v208 = v231;
        v209 = v230;
        v210 = v232;
        (*(v231 + 32))(v230, v72, v232);
        v211 = sub_219BF0AA4();
        v212 = v234;
        v213 = *(v234 + 20);
        v214 = sub_219BF24E4();
        v215 = v233;
        (*(*(v214 - 8) + 56))(&v233[v213], 1, 1, v214);
        v216 = sub_219BE5F84();
        v218 = v217;
        (*(v208 + 8))(v209, v210);
        *v215 = v211;
        *(v215 + 8) = 0;
        *(v215 + 16) = 1;
        v219 = (v215 + v212[6]);
        *v219 = v216;
        v219[1] = v218;
        v220 = (v215 + v212[7]);
        v221 = v298;
        *v220 = v297;
        v220[1] = v221;
        v222 = (v215 + v212[8]);
        *v222 = 0;
        v222[1] = 0;
        v223 = v303;
        sub_219867CDC(v215, v303, type metadata accessor for PuzzleModel);
        v224 = type metadata accessor for TagFeedRouteModel(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v224 - 8) + 56))(v223, 0, 1, v224);

        return;
      }

      if (v73 != *MEMORY[0x277D32D18])
      {
        if (v73 != *MEMORY[0x277D32DD0])
        {
          v225 = type metadata accessor for TagFeedRouteModel(0);
          (*(*(v225 - 8) + 56))(v303, 1, 1, v225);
          (*(v67 + 8))(v72, v66);
          return;
        }

        goto LABEL_23;
      }

      (*(v67 + 96))(v72, v66);
      v142 = v228;
      v143 = v227;
      v144 = v229;
      (*(v228 + 32))(v227, v72, v229);
      sub_219BEDB74();
LABEL_32:
      v145 = v303;
      sub_219BDD644();
      (*(v142 + 8))(v143, v144);
      v79 = type metadata accessor for TagFeedRouteModel(0);
LABEL_33:
      swift_storeEnumTagMultiPayload();
      v80 = *(*(v79 - 8) + 56);
      v81 = v145;
      goto LABEL_6;
    }

    (*(v67 + 96))(v72, v66);
    v167 = v256;
    v168 = v254;
    v169 = v258;
    (*(v256 + 32))(v254, v72, v258);
    v170 = v260;
    sub_219BEDAD4();
    (*(v167 + 8))(v168, v169);
    v171 = sub_219BF1DA4();
    v172 = *(v171 - 8);
    if ((*(v172 + 48))(v170, 1, v171) != 1)
    {
      v173 = v250;
      sub_219869C88(v170, v250, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v172 + 88))(v173, v171) == *MEMORY[0x277D33608])
      {
        (*(v172 + 96))(v173, v171);
        v174 = v303;
        (*(v273 + 32))(v303, v173, v274);
        v175 = type metadata accessor for TagFeedRouteModel(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
LABEL_68:
        sub_219869D68(v170, &qword_280E905C0, MEMORY[0x277D33610]);
        return;
      }

      (*(v172 + 8))(v173, v171);
    }

    v207 = type metadata accessor for TagFeedRouteModel(0);
    (*(*(v207 - 8) + 56))(v303, 1, 1, v207);
    goto LABEL_68;
  }

  (*(v67 + 96))(v72, v66);
  (*(v63 + 32))(v65, v72, v62);
  (*(v58 + 16))(v285, v304, v57);
  v304 = sub_219BF0F14();
  (*(v299 + 56))(v295, 1, 1, v300);
  v74 = sub_219BDEA34();
  (*(*(v74 - 8) + 56))(v286, 1, 1, v74);
  v75 = *(*(v302 + *((*MEMORY[0x277D85000] & *v302) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  sub_2191FD45C();
  v76 = v287;
  sub_219BDE794();
  swift_getWitnessTable();
  v77 = v290;
  sub_219BDEB54();
  sub_219BDE734();
  sub_219BDEC64();

  v78 = v303;
  sub_219BDE724();
  (*(v291 + 8))(v77, v292);
  (*(v288 + 8))(v76, v289);
  (*(v63 + 8))(v65, v62);
  v79 = type metadata accessor for TagFeedRouteModel(0);
  swift_storeEnumTagMultiPayload();
  v80 = *(*(v79 - 8) + 56);
  v81 = v78;
LABEL_6:
  v82 = 0;
  v83 = v79;
LABEL_24:
  v80(v81, v82, 1, v83);
}

uint64_t sub_21986027C()
{
  v0 = sub_219BF0644();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  sub_218954408(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE7B04();
  if (v12 >> 62 != 1)
  {
    sub_21880BB00(v12);
    goto LABEL_5;
  }

  v21 = v1;
  v22 = v0;
  sub_219BE6EC4();
  v23 = v24;
  v13 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v13, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_219759E94();
  (*(v9 + 8))(v11, v8);
  if ((~v14 & 0xF000000000000007) == 0)
  {
LABEL_5:
    v19 = 0;
    return v19 & 1;
  }

  sub_2196A039C(v6);
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  sub_219BEE844();
  sub_2186CC41C(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
  v15 = v22;
  v16 = sub_219BF53A4();
  v17 = sub_21885AB78(v14);
  v18 = *(v21 + 8);
  v18(v3, v15, v17);
  (v18)(v6, v15);
  v19 = v16 ^ 1;
  return v19 & 1;
}

uint64_t sub_2198605D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_219BE3204();
  v6 = sub_219BE2E54();
  sub_219866BF4(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
  type metadata accessor for TagFeedDataManager();
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v7 = sub_219BF66A4();
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0x6D726177657270;
  *(v10 + 24) = 0xE700000000000000;
  v11 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 32);
  v12 = v9;
  v13 = v8;
  sub_219BE2F84();

  v14 = sub_219BE2E54();
  v15 = sub_219BE2F84();

  return v15;
}

uint64_t sub_219860804(uint64_t *a1, void *a2)
{
  v2 = *MEMORY[0x277D85000] & *a2;
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = *(v3 + 48);
    type metadata accessor for TagFeedServiceConfig(0);
    sub_2186F7CA4();

    if (sub_219BEF394())
    {
      v5 = *(sub_219BEF3E4() + 16);

      if (!v5)
      {
        type metadata accessor for TagFeedInteractor.Errors(0, *(v2 + 80), *(v2 + 88), v6);
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();

        return v4;
      }
    }
  }

  (*(*(v2 + 88) + 8))(v3, *(v2 + 80));
  v7 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v7, MEMORY[0x277D6D890]);
  sub_219BE6E84();
  *(swift_allocObject() + 16) = v3;

  v8 = sub_219BE2E54();
  v4 = sub_219BE2F74();

  return v4;
}

uint64_t sub_219860A88(uint64_t *a1, void *a2)
{
  sub_219866778(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v11 = *MEMORY[0x277D85000] & *a2;
  v19[1] = *(a2 + *(v11 + 0xC8));
  v19[2] = *(a2 + *(v11 + 104));
  sub_219BE6EC4();
  v23 = v24;
  v12 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  v19[0] = v13;
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v12, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  sub_219BE7AE4();
  v14 = v20;
  (*(v8 + 8))(v10, v20);
  sub_219BE7B14();
  sub_219850FB0();
  v15 = v21;

  sub_219BE6EC4();
  v23 = v24;
  sub_219BE7B94();

  v16 = *(v5 + 56);
  v17 = v22;
  *v22 = v15;
  (*(v8 + 32))(&v17[v16], v10, v14);
  sub_2198668E4(0, &qword_280EE6E68, sub_219866778, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219860DA8(void *a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61708;
  v3 = sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to prewarm content for TagFeedViewController, error=%{public}@", 69, 2, &dword_2186C1000, v2, v3, v4);

  v5 = a1;
  sub_219BE7B14();
  return sub_219860F50(a1);
}

uint64_t sub_219860F50(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = sub_219BF1584();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v44 - v9;
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE66C4();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v49 = a1;
  v19 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  type metadata accessor for TagFeedInteractor.Errors(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v20);
  v21 = MEMORY[0x277D85000];
  if (swift_dynamicCast())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_2198615A4(*(*(v2 + *((*v21 & *v2) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v26 = v46;
        v25 = v47;
        (*(v46 + 16))(v15, v18, v47);
        v27 = (*(v26 + 80) + 24) & ~*(v26 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = v24;
        (*(v26 + 32))(v28 + v27, v15, v25);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return (*(v26 + 8))(v18, v25);
      }

      else
      {
        swift_unknownObjectRelease();
        return (*(v46 + 8))(v18, v47);
      }
    }
  }

  else
  {
    sub_219BF1B74();
    v29 = v48;
    if ((*(v48 + 48))(v12, 1, v6) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_280ECFF68 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v6, qword_280F61E40);
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = v44;
          (*(v29 + 16))(v44, v30, v6);
          v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = v32;
          (*(v29 + 32))(v35 + v34, v33, v6);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v36 = *(v29 + 32);
      v37 = v45;
      v36(v45, v12, v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = swift_unknownObjectWeakLoadStrong();
        if (v38)
        {
          v39 = v38;
          v40 = v37;
          v41 = v44;
          (*(v29 + 16))(v44, v40, v6);
          v42 = (*(v29 + 80) + 24) & ~*(v29 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = v39;
          v36((v43 + v42), v41, v6);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return (*(v29 + 8))(v40, v6);
        }

        swift_unknownObjectRelease();
      }

      return (*(v29 + 8))(v37, v6);
    }
  }

  return result;
}

void sub_2198615A4(void *a1)
{
  v1 = [a1 alternativeFeedDescriptor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219861F84(v1);
    v5 = v4;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09BA0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2186FC3BC();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    sub_219BF5454();

    sub_219BE66B4();

    v9 = v2;
  }

  else
  {
    [a1 feedConfiguration];
    type metadata accessor for Localized();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_219BE66B4();
    v9 = a1;
  }
}

uint64_t sub_2198618CC()
{
  sub_218954408(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[1] = v9[3];
  v5 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v5, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v6 = off_282A80EA0[0];
  type metadata accessor for TagFeedDataManager();
  v7 = v6(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_219861AAC(void *a1, void *a2)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 72))(*a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2, MEMORY[0x277D6D890]);
  v3 = sub_219BE6E84();

  return v3;
}

void sub_219861BF4(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v6 = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = sub_219BF6214();
  sub_219BE5314(a3, a4, 2, &dword_2186C1000, v6, v10, v7);
}

double sub_219861D24(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61708;
  v6 = sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_219BE5314(a2, a3, 2, &dword_2186C1000, v5, v6, v7);

  return result;
}

uint64_t sub_219861EA8()
{
  v1 = (*(v0 + 16) + *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xD8));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_218B0699C;

  return MEMORY[0x282192A20](v2, v3);
}

uint64_t sub_219861F84(void *a1)
{
  v2 = [a1 feedConfiguration];
  if (v2 > 6)
  {
    if (v2 == 7 || v2 == 11)
    {
      goto LABEL_8;
    }
  }

  else if (v2 == 4 || v2 == 6)
  {
LABEL_8:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();
    goto LABEL_9;
  }

  v3 = [a1 name];
  v4 = sub_219BF5414();
LABEL_9:
  v6 = v4;

  return v6;
}

uint64_t sub_21986220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v67 = a2;
  v82 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_219BDE294();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDE744();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0634();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v65 - v14;
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v12);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v12);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = &v65 - v19;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - v21;
  v23 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v12);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  v30 = sub_219BF0F34();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDE7A4();
  v69 = *(v34 - 8);
  v70 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v68 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, a1, v30, v35);
  v37 = v67;
  v65 = v29;
  sub_219869C88(v67, v29, qword_27CC1E440, v23);
  sub_219869C88(v37, v26, qword_27CC1E440, v23);
  v38 = sub_219BF0614();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v26, 1, v38) == 1)
  {
    sub_219869D68(v26, qword_27CC1E440, MEMORY[0x277D32E20]);
    v40 = sub_219BF0E44();
    v42 = v41;
  }

  else
  {
    v40 = sub_219BF04D4();
    v42 = v43;
    (*(v39 + 8))(v26, v38);
  }

  sub_2198587BC(v40, v42, v66);

  v44 = *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78));
  v45 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor;
  v46 = *(v44 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  (*(v71 + 56))(v17, 0, 1, v72);
  sub_219BDE4B4();
  v47 = sub_219BDE4D4();
  (*(*(v47 - 8) + 56))(v22, 0, 1, v47);
  v48 = sub_219BDEA34();
  (*(*(v48 - 8) + 56))(v73, 1, 1, v48);
  v49 = *(v44 + v45);
  sub_219BF63B4();

  v50 = v68;
  sub_219BDE784();
  swift_getWitnessTable();
  v52 = v77;
  v51 = v78;
  v53 = v75;
  (*(v77 + 104))(v75, *MEMORY[0x277D2FF08], v78);
  v54 = v79;
  sub_219BDEB64();
  (*(v52 + 8))(v53, v51);
  sub_219BDE734();
  sub_219BDEC64();

  sub_2187B2C48(0);
  v56 = v55;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = *(v56 + 48);
  sub_2187B2DA0(0);
  v62 = *(v61 + 48);
  sub_219BDE724();
  v63 = MEMORY[0x277D84F90];
  *(v59 + v62) = MEMORY[0x277D84F90];
  (*(v80 + 8))(v54, v81);
  result = (*(v69 + 8))(v50, v70);
  *(v59 + v60) = v63;
  *v82 = v57 | 2;
  return result;
}

uint64_t sub_219862AB0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v80 = a2;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v67 - v6;
  v7 = sub_219BDDDA4();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BDE4D4();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  sub_218718690(v3 + *((*MEMORY[0x277D85000] & *v3) + 0xA8), v83);
  v74 = __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  v27 = sub_219BF06B4();
  v28 = sub_219BF0664();
  v77 = v29;
  v78 = v28;
  sub_219869C88(v75, v16, qword_27CC1E440, v13);
  v30 = sub_219BF0614();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v16, 1, v30) == 1)
  {
    sub_219869D68(v16, qword_27CC1E440, MEMORY[0x277D32E20]);
    v32 = sub_219BF0664();
    v34 = v33;
  }

  else
  {
    v32 = sub_219BF04D4();
    v34 = v35;
    (*(v31 + 8))(v16, v30);
  }

  WitnessTable = swift_getWitnessTable();
  sub_2198587BC(v32, v34, v21);

  v37 = *(*(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  v38 = sub_219BF0634();
  (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
  sub_219BDE4B4();
  v39 = v81;
  v40 = v79;
  (*(v81 + 56))(v26, 0, 1, v79);
  v41 = *v74;
  v42 = *(*v74 + 16);
  v43 = [objc_msgSend(v27 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v43)
  {
    sub_219BF5414();
    v43 = sub_219BF53D4();
  }

  v44 = [v42 hasMutedSubscriptionForTagID_];

  if (!v44)
  {
    goto LABEL_13;
  }

  v45 = v73;
  sub_219869C88(v26, v73, &unk_280EE8C40, MEMORY[0x277D30018]);
  if ((*(v39 + 48))(v45, 1, v40) == 1)
  {
    v46 = MEMORY[0x277D30018];
    sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
    v47 = v45;
    v48 = v46;
LABEL_14:
    sub_219869D68(v47, &unk_280EE8C40, v48);
    goto LABEL_15;
  }

  v49 = v72;
  (*(v39 + 32))(v72, v45, v40);
  if ((sub_219BDE4A4() & 1) == 0)
  {
    (*(v39 + 8))(v49, v40);
LABEL_13:
    v48 = MEMORY[0x277D30018];
    v47 = v26;
    goto LABEL_14;
  }

  v75 = WitnessTable;
  v50 = v27;
  __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
  v51 = v68;
  sub_219BDE4C4();
  v52 = v69;
  ObjectType = v50;
  sub_219BDEA24();
  sub_219869D68(v51, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  v54 = v70;
  v53 = v71;
  if ((*(v70 + 48))(v52, 1, v71) != 1)
  {
    v61 = *(v54 + 32);
    v62 = v67;
    v61(v67, v52, v53);
    v63 = swift_allocObject();
    *(v63 + 40) = v53;
    *(v63 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50], MEMORY[0x277D2FD48]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v63 + 16));
    v61(boxed_opaque_existential_1, v62, v53);
    (*(v81 + 8))(v72, v40);
    sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
    v56 = 0;
    v65 = v77;
    *(v63 + 56) = v78;
    *(v63 + 64) = v65;
    v66 = v75;
    *(v63 + 72) = ObjectType;
    *(v63 + 80) = v3;
    v55 = 1;
    v58 = v63;
    *(v63 + 88) = v66;
    *(v63 + 96) = 0;
    v57 = 0;
    v27 = 0;
    WitnessTable = 0;
    goto LABEL_16;
  }

  (*(v81 + 8))(v72, v40);
  sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
  sub_219869D68(v52, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  WitnessTable = v75;
  v27 = ObjectType;
LABEL_15:
  v55 = 0;
  v56 = v3;
  v57 = v77;
  v58 = v78;
LABEL_16:
  v59 = v3;
  __swift_destroy_boxed_opaque_existential_1(v83);
  result = swift_allocObject();
  v82 = v55;
  *(result + 16) = v58;
  *(result + 24) = v57;
  *(result + 32) = v27;
  *(result + 40) = v56;
  *(result + 48) = WitnessTable;
  *(result + 56) = v55;
  *(result + 63) = 0;
  *(result + 61) = 0;
  *(result + 57) = 0;
  *(result + 64) = MEMORY[0x277D84F90];
  *v80 = result | 0x5000000000000000;
  return result;
}

uint64_t sub_219863468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v80 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_219BDEA14();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0634();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v58 - v13;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v58 - v15;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = &v58 - v17;
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v58 - v19;
  v20 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  MEMORY[0x28223BE20](v21 - 8);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v59 = sub_219BDDED4();
  v26 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v28 = (&v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BDDBF4();
  MEMORY[0x28223BE20](v29 - 8);
  v65 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDEB14();
  v67 = *(v31 - 8);
  v68 = v31;
  MEMORY[0x28223BE20](v31);
  v66 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BF0AF4();
  v63 = v34;
  v64 = v33;
  v62 = sub_219BF0B44();
  v70 = a2;
  sub_219869C88(a2, v25, qword_27CC1E440, v20);
  v35 = sub_219BF0614();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v25, 1, v35);
  v58 = a1;
  if (v38 == 1)
  {
    sub_219869D68(v25, qword_27CC1E440, MEMORY[0x277D32E20]);
    v39 = sub_219BF0AF4();
    v41 = v40;
  }

  else
  {
    v39 = sub_219BF04D4();
    v41 = v42;
    (*(v36 + 8))(v25, v35);
  }

  *v28 = v39;
  v28[1] = v41;
  (*(v26 + 104))(v28, *MEMORY[0x277D2FDC8], v59);
  v43 = sub_219BDD944();
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  sub_219BDDBD4();
  v44 = v61;
  sub_219869C88(v70, v61, qword_27CC1E440, MEMORY[0x277D32E20]);
  if (v37(v44, 1, v35) == 1)
  {
    sub_219869D68(v44, qword_27CC1E440, MEMORY[0x277D32E20]);
    v45 = sub_219BF0AF4();
    v47 = v46;
  }

  else
  {
    v48 = sub_219BF04D4();
    v47 = v49;
    (*(v36 + 8))(v44, v35);
    v45 = v48;
  }

  sub_2198587BC(v45, v47, v69);

  (*(v73 + 56))(v71, 1, 1, v74);
  v50 = v72;
  sub_219BDE4B4();
  v51 = sub_219BDE4D4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = *(*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  v53 = v66;
  sub_219BDEB04();
  swift_getWitnessTable();
  v54 = v77;
  sub_219BDE2F4();
  sub_219BDEA04();
  sub_219BDEBC4();

  v55 = swift_allocObject();
  v56 = sub_219BDE9F4();
  (*(v78 + 8))(v54, v79);
  result = (*(v67 + 8))(v53, v68);
  *(v55 + 16) = v56;
  *v80 = v55 | 0x7000000000000004;
  return result;
}

uint64_t sub_219863D54(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v3;
    sub_218B3CC28(a1, &v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219863DDC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v183 = a1;
  v185 = a2;
  v2 = type metadata accessor for PaywallTagFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v161 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = &v154 - v5;
  sub_218A125B4(0);
  v175 = v6;
  v178 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v165 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v177 = &v154 - v9;
  sub_218954350(0);
  v186 = v10;
  v174 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v14 = v13;
  v181 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v180 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, MEMORY[0x277D84310]);
  v179 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v154 - v17;
  sub_2198668E4(0, &qword_280EE6370, MEMORY[0x277D35050], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = &v154 - v22;
  MEMORY[0x28223BE20](v23);
  v167 = &v154 - v24;
  MEMORY[0x28223BE20](v25);
  v173 = (&v154 - v26);
  MEMORY[0x28223BE20](v27);
  v170 = &v154 - v28;
  v29 = sub_219BE4864();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v169 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v166 = &v154 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v154 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v154 - v38;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v40 = sub_219BE5434();
  v41 = __swift_project_value_buffer(v40, qword_280F62598);
  v42 = *(v30 + 16);
  v42(v39, v183, v29);
  v164 = v30 + 16;
  v163 = v42;
  v42(v36, v185, v29);
  v182 = v41;
  v43 = sub_219BE5414();
  v44 = sub_219BF6214();
  v45 = os_log_type_enabled(v43, v44);
  v184 = v29;
  v176 = v30;
  if (v45)
  {
    v158 = v44;
    v159 = v43;
    v172 = v36;
    v46 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v187 = v157;
    v171 = v46;
    *v46 = 136315394;
    v47 = v170;
    sub_219BE47F4();
    v48 = sub_219BE4304();
    v49 = *(v48 - 8);
    v156 = *(v49 + 48);
    v50 = v156(v47, 1, v48);
    v155 = v49;
    if (v50 == 1)
    {
      sub_219869D68(v47, &qword_280EE6370, MEMORY[0x277D35050]);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = sub_219BE42F4();
      v52 = v54;
      (*(v49 + 8))(v47, v48);
    }

    v188 = v51;
    v189 = v52;
    sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v170 = v55;
    v56 = sub_219BF5484();
    v58 = v57;
    v59 = *(v176 + 8);
    v59(v39, v184);
    v60 = sub_2186D1058(v56, v58, &v187);

    v61 = v171;
    *(v171 + 1) = v60;
    *(v61 + 6) = 2080;
    v62 = v173;
    sub_219BE47F4();
    if (v156(v62, 1, v48) == 1)
    {
      sub_219869D68(v62, &qword_280EE6370, MEMORY[0x277D35050]);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v63 = sub_219BE42F4();
      v64 = v65;
      (*(v155 + 8))(v62, v48);
    }

    v188 = v63;
    v189 = v64;
    v66 = sub_219BF5484();
    v68 = v67;
    v173 = v59;
    v59(v172, v184);
    v69 = sub_2186D1058(v66, v68, &v187);

    v70 = v171;
    *(v171 + 14) = v69;
    v71 = v159;
    _os_log_impl(&dword_2186C1000, v159, v158, "Tag feed check for paywall for best offer did change from=%s to=%s", v70, 0x16u);
    v72 = v157;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v72, -1, -1);
    MEMORY[0x21CECF960](v70, -1, -1);
  }

  else
  {

    v53 = *(v30 + 8);
    v53(v36, v29);
    v173 = v53;
    v53(v39, v29);
  }

  sub_219BE6EC4();
  v187 = v188;
  v73 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v73, MEMORY[0x277D6D8C8]);
  v74 = v180;
  sub_219BE7B94();

  v75 = v181;
  (*(v181 + 16))(v18, v74, v14);
  v76 = *(v179 + 36);
  sub_2196AA74C();
  sub_219BF5DF4();
  (*(v75 + 8))(v74, v14);
  sub_219BF5E84();
  if (*&v18[v76] != v188)
  {
    v77 = (v174 + 16);
    v78 = (v174 + 8);
    while (1)
    {
      v79 = sub_219BF5EC4();
      v80 = v186;
      (*v77)(v12);
      v79(&v188, 0);
      sub_219BF5E94();
      sub_219BE6934();
      (*v78)(v12, v80);
      if (((v188 >> 58) & 0x3C | (v188 >> 1) & 3) == 7)
      {
        break;
      }

      sub_219BF5E84();
      if (*&v18[v76] == v188)
      {
        goto LABEL_16;
      }
    }

    v84 = swift_projectBox();
    v85 = *(v178 + 16);
    v86 = v175;
    v85(v177, v84, v175);

    v87 = v168;
    sub_219BEDE64();
    v89 = *(v87 + 16);
    v88 = *(v87 + 24);

    sub_219869D08(v87, type metadata accessor for PaywallTagFeedGroup);
    v90 = v167;
    sub_219BE47F4();
    v91 = sub_219BE4304();
    v92 = *(v91 - 8);
    v93 = *(v92 + 48);
    v180 = (v92 + 48);
    v186 = v93;
    v94 = v93(v90, 1, v91);
    v181 = v92;
    if (v94 == 1)
    {
      sub_219869D68(v90, &qword_280EE6370, MEMORY[0x277D35050]);

      v95 = v91;
LABEL_21:
      v96 = v165;
      v85(v165, v177, v86);
      v97 = v166;
      v98 = v184;
      v99 = v163;
      v163(v166, v183, v184);
      v100 = v169;
      v99(v169, v185, v98);
      v101 = sub_219BE5414();
      v102 = sub_219BF6214();
      if (os_log_type_enabled(v101, v102))
      {
        LODWORD(v183) = v102;
        v103 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v187 = v182;
        *v103 = 136315650;
        v104 = v161;
        sub_219BEDE64();
        v185 = *(v178 + 8);
        v185(v96, v86);
        v105 = *(v104 + 16);
        v106 = *(v104 + 24);

        sub_219869D08(v104, type metadata accessor for PaywallTagFeedGroup);
        v107 = sub_2186D1058(v105, v106, &v187);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2080;
        v108 = v160;
        sub_219BE47F4();
        if (v186(v108, 1, v95) == 1)
        {
          sub_219869D68(v108, &qword_280EE6370, MEMORY[0x277D35050]);
          v109 = 0;
          v110 = 0;
        }

        else
        {
          v109 = sub_219BE42F4();
          v110 = v120;
          (*(v181 + 8))(v108, v95);
        }

        v188 = v109;
        v189 = v110;
        sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v121 = sub_219BF5484();
        v123 = v122;
        v173(v166, v184);
        v124 = sub_2186D1058(v121, v123, &v187);

        *(v103 + 14) = v124;
        *(v103 + 22) = 2080;
        v125 = v162;
        sub_219BE47F4();
        if (v186(v125, 1, v95) == 1)
        {
          sub_219869D68(v125, &qword_280EE6370, MEMORY[0x277D35050]);
          v126 = 0;
          v127 = 0;
        }

        else
        {
          v126 = sub_219BE42F4();
          v128 = v125;
          v127 = v129;
          (*(v181 + 8))(v128, v95);
        }

        v115 = v185;
        v188 = v126;
        v189 = v127;
        v130 = sub_219BF5484();
        v132 = v131;
        v173(v169, v184);
        v133 = sub_2186D1058(v130, v132, &v187);

        *(v103 + 24) = v133;
        _os_log_impl(&dword_2186C1000, v101, v183, "Tag feed request reload for best offer did change, loaded=%s from=%s to=%s", v103, 0x20u);
        v134 = v182;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v134, -1, -1);
        MEMORY[0x21CECF960](v103, -1, -1);

        v86 = v175;
      }

      else
      {

        v114 = v173;
        v173(v100, v98);
        v114(v97, v98);
        v115 = *(v178 + 8);
        v115(v96, v86);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v136 = Strong;
        v137 = swift_unknownObjectWeakLoadStrong();
        if (v137)
        {
          v138 = v137;
          sub_219BE86E4();
          v139 = objc_allocWithZone(sub_219BE9274());
          v140 = sub_219BE9254();
          v141 = *&v138[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
          v142 = [v138 view];
          if (v142)
          {
            v143 = v142;
            [v142 bounds];
            v145 = v144;
            v147 = v146;
            v149 = v148;
            v151 = v150;

            v188 = v140;
            v189 = v141;
            v190 = v145;
            v191 = v147;
            v192 = v149;
            v193 = v151;
            v152 = *(v136 + 40);
            ObjectType = swift_getObjectType();
            (*(v152 + 104))(&v188, ObjectType, v152);
            swift_unknownObjectRelease();

            v115(v177, v175);
            sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      v115(v177, v86);
LABEL_43:
      sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
      return;
    }

    v111 = sub_219BE42F4();
    v113 = v112;
    (*(v92 + 8))(v90, v91);
    v95 = v91;
    if (v89 == v111 && v88 == v113)
    {

      v86 = v175;
    }

    else
    {
      v116 = sub_219BF78F4();

      v86 = v175;
      if ((v116 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v117 = sub_219BE5414();
    v118 = sub_219BF6214();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_2186C1000, v117, v118, "Tag feed best offer did change but is already loaded in the feed, will skip reload", v119, 2u);
      MEMORY[0x21CECF960](v119, -1, -1);
    }

    (*(v178 + 8))(v177, v86);
    goto LABEL_43;
  }

LABEL_16:
  sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
  v81 = sub_219BE5414();
  v82 = sub_219BF6214();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_2186C1000, v81, v82, "Tag feed check for paywall best offer did change did not find a paywall loaded in the feed; skipping reload", v83, 2u);
    MEMORY[0x21CECF960](v83, -1, -1);
  }
}

void sub_219865278(uint64_t a1)
{
  v2 = type metadata accessor for PaywallTagFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v137 = &v125 - v5;
  sub_218A125B4(0);
  v139 = v6;
  v145 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v133 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v125 - v9;
  sub_218954350(0);
  v11 = v10;
  v141 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v15 = v14;
  v148 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v147 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, MEMORY[0x277D84310]);
  v146 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v125 - v18;
  sub_2198668E4(0, &qword_280EE6370, MEMORY[0x277D35050], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v136 = &v125 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v125 - v25;
  v27 = sub_219BE4864();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v135 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v125 - v31;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v33 = sub_219BE5434();
  v34 = __swift_project_value_buffer(v33, qword_280F62598);
  v35 = *(v28 + 16);
  v132 = v28 + 16;
  v131 = v35;
  v35(v32, a1, v27);
  v149 = v34;
  v36 = sub_219BE5414();
  v140 = sub_219BF6214();
  v37 = os_log_type_enabled(v36, v140);
  v138 = a1;
  v142 = v27;
  v143 = v28;
  if (v37)
  {
    v128 = v36;
    v38 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v150 = v126;
    v127 = v38;
    *v38 = 136315138;
    sub_219BE47F4();
    v39 = sub_219BE4304();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v26, 1, v39) == 1)
    {
      sub_219869D68(v26, &qword_280EE6370, MEMORY[0x277D35050]);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = sub_219BE42F4();
      v42 = v43;
      (*(v40 + 8))(v26, v39);
    }

    v151 = v41;
    v152 = v42;
    sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v44 = sub_219BF5484();
    v46 = v45;
    v134 = *(v143 + 8);
    v134(v32, v142);
    v47 = sub_2186D1058(v44, v46, &v150);

    v48 = v127;
    *(v127 + 1) = v47;
    v49 = v128;
    _os_log_impl(&dword_2186C1000, v128, v140, "Tag feed check for paywall for did obtain offer offer=%s", v48, 0xCu);
    v50 = v126;
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x21CECF960](v50, -1, -1);
    MEMORY[0x21CECF960](v48, -1, -1);
  }

  else
  {

    v134 = *(v28 + 8);
    v134(v32, v27);
  }

  sub_219BE6EC4();
  v150 = v151;
  v51 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v51, MEMORY[0x277D6D8C8]);
  v52 = v147;
  sub_219BE7B94();

  v53 = v148;
  (*(v148 + 16))(v19, v52, v15);
  v54 = *(v146 + 36);
  sub_2196AA74C();
  sub_219BF5DF4();
  (*(v53 + 8))(v52, v15);
  sub_219BF5E84();
  if (*&v19[v54] != v151)
  {
    v55 = (v141 + 16);
    v56 = (v141 + 8);
    while (1)
    {
      v57 = sub_219BF5EC4();
      (*v55)(v13);
      v57(&v151, 0);
      sub_219BF5E94();
      sub_219BE6934();
      (*v56)(v13, v11);
      if (((v151 >> 58) & 0x3C | (v151 >> 1) & 3) == 7)
      {
        break;
      }

      sub_219BF5E84();
      if (*&v19[v54] == v151)
      {
        goto LABEL_13;
      }
    }

    v61 = swift_projectBox();
    v62 = v139;
    v148 = *(v145 + 16);
    (v148)(v144, v61, v139);

    v63 = v137;
    sub_219BEDE64();
    v65 = *(v63 + 16);
    v64 = *(v63 + 24);

    sub_219869D08(v63, type metadata accessor for PaywallTagFeedGroup);
    v66 = v136;
    v67 = v138;
    sub_219BE47F4();
    v68 = sub_219BE4304();
    v69 = *(v68 - 8);
    v147 = *(v69 + 48);
    v70 = (v147)(v66, 1, v68);
    v146 = v69;
    if (v70 == 1)
    {
      sub_219869D68(v66, &qword_280EE6370, MEMORY[0x277D35050]);

      v71 = v68;
LABEL_18:
      v72 = v133;
      (v148)(v133, v144, v62);
      v73 = v135;
      v74 = v62;
      v75 = v142;
      v131(v135, v67, v142);
      v76 = sub_219BE5414();
      v77 = sub_219BF6214();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v72;
        v79 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v150 = v148;
        *v79 = 136315394;
        v80 = v130;
        sub_219BEDE64();
        v149 = *(v145 + 8);
        v149(v78, v74);
        v81 = *(v80 + 2);
        v82 = *(v80 + 3);

        v83 = v80;
        v84 = v135;
        sub_219869D08(v83, type metadata accessor for PaywallTagFeedGroup);
        v85 = sub_2186D1058(v81, v82, &v150);

        *(v79 + 4) = v85;
        *(v79 + 12) = 2080;
        v86 = v129;
        sub_219BE47F4();
        if ((v147)(v86, 1, v71) == 1)
        {
          sub_219869D68(v86, &qword_280EE6370, MEMORY[0x277D35050]);
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v87 = sub_219BE42F4();
          v99 = v86;
          v88 = v100;
          (*(v146 + 8))(v99, v71);
        }

        v151 = v87;
        v152 = v88;
        sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v101 = sub_219BF5484();
        v103 = v102;
        v134(v84, v75);
        v104 = sub_2186D1058(v101, v103, &v150);

        *(v79 + 14) = v104;
        _os_log_impl(&dword_2186C1000, v76, v77, "Tag feed request reload for did obtain offer, loaded=%s, offer=%s", v79, 0x16u);
        v105 = v148;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v105, -1, -1);
        MEMORY[0x21CECF960](v79, -1, -1);

        v74 = v139;
        v94 = v149;
      }

      else
      {

        v134(v73, v75);
        v94 = *(v145 + 8);
        v94(v72, v74);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v107 = Strong;
        v108 = swift_unknownObjectWeakLoadStrong();
        if (v108)
        {
          v109 = v108;
          sub_219BE86E4();
          v110 = objc_allocWithZone(sub_219BE9274());
          v111 = sub_219BE9254();
          v112 = *&v109[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
          v113 = [v109 view];
          if (v113)
          {
            v114 = v113;
            [v113 bounds];
            v116 = v115;
            v118 = v117;
            v120 = v119;
            v122 = v121;

            v151 = v111;
            v152 = v112;
            v153 = v116;
            v154 = v118;
            v155 = v120;
            v156 = v122;
            v123 = *(v107 + 40);
            ObjectType = swift_getObjectType();
            (*(v123 + 104))(&v151, ObjectType, v123);
            swift_unknownObjectRelease();

            v94(v144, v74);
            sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      v94(v144, v74);
LABEL_37:
      sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
      return;
    }

    v89 = sub_219BE42F4();
    v90 = v66;
    v91 = v89;
    v93 = v92;
    (*(v69 + 8))(v90, v68);
    v71 = v68;
    if (v65 == v91 && v64 == v93)
    {
    }

    else
    {
      v95 = sub_219BF78F4();

      v67 = v138;
      if ((v95 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v96 = sub_219BE5414();
    v97 = sub_219BF6214();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_2186C1000, v96, v97, "Tag feed did obtain offer but is already loaded in the feed, will skip reload", v98, 2u);
      MEMORY[0x21CECF960](v98, -1, -1);
    }

    (*(v145 + 8))(v144, v62);
    goto LABEL_37;
  }

LABEL_13:
  sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
  v58 = sub_219BE5414();
  v59 = sub_219BF6214();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2186C1000, v58, v59, "Tag feed check for paywall for did obtain offer did not find a paywall loaded in the feed; skipping reload", v60, 2u);
    MEMORY[0x21CECF960](v60, -1, -1);
  }
}

void sub_219866398(const char *a1)
{
  if (sub_21986027C())
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v3 = qword_280F61708;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    v5 = [*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) identifier];
    v6 = sub_219BF5414();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_219BF6214();
    sub_219BE5314(a1, 95, 2, &dword_2186C1000, v3, v9, v4);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        sub_219BE86E4();
        v14 = objc_allocWithZone(sub_219BE9274());
        v28 = sub_219BE9254();
        v15 = *&v13[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
        v16 = [v13 view];
        if (v16)
        {
          v17 = v16;
          [v16 bounds];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;

          v29[0] = v28;
          v29[1] = v15;
          v29[2] = v19;
          v29[3] = v21;
          v29[4] = v23;
          v29[5] = v25;
          v26 = *(v11 + 40);
          ObjectType = swift_getObjectType();
          (*(v26 + 104))(v29, ObjectType, v26);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_219866778(uint64_t a1)
{
  if (!qword_280ECCBA8[0])
  {
    sub_218954408(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280ECCBA8);
    }
  }
}

void sub_219866854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_218CF5CE4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2198668E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_7Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_219866A14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_219866A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedLayoutModel(255);
    v8[2] = sub_218B58A80();
    v8[3] = sub_2186CC41C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219866B54(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_219866854(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_219866B98@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void sub_219866BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_219866C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_219866BF4(0, a2, a3, a4, MEMORY[0x277D84310]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_28Tm_1()
{

  return swift_deallocObject();
}

void sub_219866F58(uint64_t a1, void *a2, char *a3, __n128 a4)
{
  v7 = *&a3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  v8 = [sub_219BF6394() isFoodHub];
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [sub_219BF6394() isRecipeCatalog];
  swift_unknownObjectRelease();
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = [a2 bundleChannelIDs];
  v11 = [v7 backingChannelID];
  if (!v11)
  {
    sub_219BF5414();
    v11 = sub_219BF53D4();
  }

  v12 = [v10 containsObject_];

  if (v12)
  {
LABEL_6:
    sub_219BE86E4();
    v13 = objc_allocWithZone(sub_219BE9274());
    v27 = sub_219BE9254();
    v14 = v7;
    v15 = [a3 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v28[0] = v27;
      v28[1] = v14;
      v28[2] = v18;
      v28[3] = v20;
      v28[4] = v22;
      v28[5] = v24;
      v25 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v25 + 104))(v28, ObjectType, v25);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_219867178(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  v7 = [v6 backingChannelID];
  v8 = sub_219BF5414();
  v10 = v9;

  v27 = v8;
  v28 = v10;
  v26[2] = &v27;
  LOBYTE(a2) = sub_2186D128C(sub_2186D1338, v26, a2);

  if (a2)
  {
    sub_219BE86E4();
    v11 = objc_allocWithZone(sub_219BE9274());
    v12 = sub_219BE9254();
    v13 = v6;
    v14 = [a3 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v27 = v12;
      v28 = v13;
      v29 = v17;
      v30 = v19;
      v31 = v21;
      v32 = v23;
      v24 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v24 + 104))(&v27, ObjectType, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_219867310()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_219BE86E4();
      v4 = objc_allocWithZone(sub_219BE9274());
      v18 = sub_219BE9254();
      v5 = *&v3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v19[0] = v18;
        v19[1] = v5;
        v19[2] = v9;
        v19[3] = v11;
        v19[4] = v13;
        v19[5] = v15;
        v16 = *(v1 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 104))(v19, ObjectType, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2198674E4(uint64_t a1, int a2)
{
  v28 = a2;
  v25 = a1;
  v2 = sub_219BEFAD4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE93C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  sub_219BE8674();
  v11 = *(v5 + 104);
  v11(v7, *MEMORY[0x277D6E578], v4);
  v12 = sub_219BE93B4();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (v12 & 1) != 0 || (sub_219BE8674(), v11(v7, *MEMORY[0x277D6E570], v4), v14 = sub_219BE93B4(), v13(v7, v4), v13(v10, v4), (v14))
  {
    sub_219BE8664();
    v15 = sub_219BE7BC4();

    v16 = sub_219BF60A4();

    if (v28)
    {
      if (v16)
      {
        v18 = v26;
        v17 = v27;
        v19 = v24;
        (*(v26 + 104))(v24, *MEMORY[0x277D328C8], v27);
        v20 = *(v25 + 40);
        ObjectType = swift_getObjectType();
        (*(v20 + 112))(v19, ObjectType, v20);
        return (*(v18 + 8))(v19, v17);
      }

      goto LABEL_7;
    }

LABEL_8:
    v30 = 3;
    return sub_219BE1E74();
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v29 = 2;
  return sub_219BE1E74();
}

uint64_t sub_2198678EC(uint64_t a1, void *a2)
{
  v5 = *(sub_219BEE644() - 8);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_21984F58C(a1, a2, v8, v6, v7);
}

uint64_t sub_2198679F0()
{
  v1 = *(sub_219BEE644() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_21984FC00(v2, v3);
}

uint64_t sub_219867A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_219861E88(a1, v4, v5, v6);
}

void sub_219867B08(uint64_t a1)
{
  v3 = *(sub_219BE9F74() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_219853908(a1, v1 + v4, v13, v8, v9, v10, v11, v12);
}

void sub_219867BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_2186C6148(255, &qword_280E8E560, 0x277D30FB0);
    a4();
    a5();
    v8 = sub_219BF0854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_219867C88()
{
  result = qword_27CC20060;
  if (!qword_27CC20060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20060);
  }

  return result;
}

uint64_t sub_219867CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219867D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219867E00(uint64_t *a1, void *a2)
{
  sub_21898BF70(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  return sub_219852884(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

double sub_219867F00(uint64_t a1, void *a2)
{
  sub_21898BF70(0);
  v6 = (*(*(v5 - 8) + 80) + 72) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_219852FA8(a1, a2, (v2 + 32), v2 + v6, v9);
}

void sub_219867FE8(uint64_t a1)
{
  if (!qword_280E91650)
  {
    sub_219866BF4(255, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    sub_219BF0644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91650);
    }
  }
}

unint64_t sub_2198680A8()
{
  result = qword_27CC20070;
  if (!qword_27CC20070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20070);
  }

  return result;
}

uint64_t sub_2198680FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v49 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v46 - v9;
  v10 = sub_219BEBE64();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v46 - v13;
  v14 = sub_219BE16D4();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v7);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  sub_218954350(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D85000];
  sub_219BDEBD4();
  sub_219BEB244();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    (*(v26 + 8))(v28, v25);
    return sub_219869D68(v18, &unk_280EE5830, sub_218954350);
  }

  else
  {
    v46 = v21;
    v47 = v26;
    v59 = v25;
    (*(v21 + 32))(v23, v18, v20);
    v31 = (v6 + *((*v29 & *v6) + 0xE0));
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v58 = v20;
    sub_219BE6944();
    type metadata accessor for TagFeedModel(0);
    sub_2186F7410();
    sub_218CF5CE4();
    v32 = sub_219BF00E4();

    v33 = v50;
    sub_2190600D0(v32, 0, v50);
    v35 = v51;
    v34 = v52;
    v36 = v23;
    if ((*(v51 + 48))(v33, 1, v52) == 1)
    {
      sub_219869D68(v33, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v37 = v48;
      (*(v35 + 32))(v48, v33, v34);
      sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
      sub_219BDD1F4();
      (*(v35 + 8))(v37, v34);
    }

    v39 = v56;
    v38 = v57;
    v40 = v53;
    v41 = v54;
    v42 = v59;
    v43 = v47;
    sub_2198680A8();
    sub_219BEB274();
    v44 = (*(v39 + 48))(v40, 1, v38);
    v45 = v55;
    if (v44 == 1)
    {
      (*(v46 + 8))(v36, v58);
      (*(v43 + 8))(v28, v42);
      return sub_219869D68(v40, &qword_280EE3450, MEMORY[0x277D2D430]);
    }

    else
    {
      (*(v39 + 32))(v41, v40, v38);
      sub_219717458(v45, v60);
      if (v61)
      {
        __swift_project_boxed_opaque_existential_1(v60, v61);
        sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
        sub_219BEC144();
        (*(v39 + 8))(v41, v38);
        (*(v46 + 8))(v36, v58);
        (*(v43 + 8))(v28, v42);
        return __swift_destroy_boxed_opaque_existential_1(v60);
      }

      else
      {
        (*(v39 + 8))(v41, v38);
        (*(v46 + 8))(v36, v58);
        (*(v43 + 8))(v28, v42);
        return sub_219308EE0(v60);
      }
    }
  }
}

void sub_2198688EC(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

double sub_219868A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  (*(v6 + 64))(a1, a2, a3, a4, v7, v6);
  v8 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v8, MEMORY[0x277D6D890]);
  sub_219BE6EF4();
  (*(v6 + 56))(a1, a2, a3, a4, v7, v6);
  sub_219BE6EF4();

  return result;
}

void sub_219868BCC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_219BE86E4();
      v4 = objc_allocWithZone(sub_219BE9274());
      v18 = sub_219BE9254();
      v5 = *&v3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v19[0] = v18;
        v19[1] = v5;
        v19[2] = v9;
        v19[3] = v11;
        v19[4] = v13;
        v19[5] = v15;
        v16 = *(v1 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 96))(v19, ObjectType, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

double sub_219868DA0(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 48))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v3, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_219868EDC(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_219BE8C14();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v33 - v14);
  v39 = type metadata accessor for TagFeedRouteModel(0);
  v16 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_219BF4B14();
  v19 = v18;
  v33 = a2;
  sub_219BF4B34();
  v20 = (*(v6 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D345E0])
  {
    (*(v6 + 96))(v8, v5);
    (*(v36 + 8))(v8, v37);
    goto LABEL_3;
  }

  if (v20 == *MEMORY[0x277D345D0])
  {
    v21 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v21 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v21, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  sub_21985D4F0(v40, v38, v19, v12, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v39) == 1)
  {
    return sub_219869D68(v15, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  v23 = v35;
  sub_219867CDC(v15, v35, type metadata accessor for TagFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_219869D08(v23, type metadata accessor for TagFeedRouteModel);
  }

  v25 = Strong;
  v26 = v34;
  sub_219BF4B44();
  v27 = sub_219BF4B14();
  v29 = v28;
  sub_219866BF4(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v30 = sub_219BE5F84();
  v32 = v31;
  __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  v41[0] = v27;
  v41[1] = v29;
  v41[2] = v30;
  v41[3] = v32;
  v42 = 2;
  sub_218E40BA4(v23, v26, v41);
  (*(v36 + 8))(v26, v37);
  sub_219869D08(v23, type metadata accessor for TagFeedRouteModel);

  return swift_unknownObjectRelease();
}

void *sub_219869480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v20 - v10);
  v12 = type metadata accessor for TagFeedRouteModel(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5, v14);
  sub_21985D4F0(a1, a2, v21, v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_219869D68(v11, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  else
  {
    sub_219867CDC(v11, v16, type metadata accessor for TagFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v18 = sub_218E457F8(v16);
      sub_219869D08(v16, type metadata accessor for TagFeedRouteModel);
      swift_unknownObjectRelease();
      return v18;
    }

    sub_219869D08(v16, type metadata accessor for TagFeedRouteModel);
  }

  return 0;
}

uint64_t sub_219869790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - v6;
  sub_218954350(0);
  v9 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v12 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0894();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v30 - v20;
  sub_219BEDF44();
  if ((*(v16 + 88))(v21, v15) == *MEMORY[0x277D32F88])
  {
    v31 = v9;
    (*(v16 + 16))(v18, v21, v15);
    (*(v16 + 96))(v18, v15);
    v22 = sub_219BF13B4();
    v23 = *(v22 - 8);
    if ((*(v23 + 88))(v18, v22) == *MEMORY[0x277D33330])
    {
      sub_219BE6EC4();
      v37 = v38;
      v24 = MEMORY[0x277D6D8B8];
      sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
      v30[1] = v4;
      sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v24, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      sub_219BEB244();
      v25 = v34;
      v26 = v31;
      if ((*(v34 + 48))(v7, 1, v31) == 1)
      {
        (*(v33 + 8))(v14, v12);
        sub_219869D68(v7, &unk_280EE5830, sub_218954350);
      }

      else
      {
        v27 = v32;
        (*(v25 + 32))(v32, v7, v26);
        v28 = sub_219857580();
        (*(v25 + 8))(v27, v26, v28);
        (*(v33 + 8))(v14, v12);
      }
    }

    else
    {
      (*(v23 + 8))(v18, v22);
    }
  }

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_219869C88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2198668E4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219869D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219869D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2198668E4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219869E90(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  sub_21986D4D4(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v38 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = *(v10 + 16);
  v36 = a1;
  v37 = v15;
  v35 = v14;
  (v14)(v13, a1, v11);
  v16 = *(*v3 + 16);
  if (v16)
  {
    v17 = (*v3 + 40);
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = v20 >> 6;
      if (v20 >> 6 > 1)
      {
        if (v21 == 2)
        {

          sub_21986B604(v18, v20 & 0x3F, v13);
        }

        else
        {

          sub_21986C10C(v23, v20 & 0x3F, v13);
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_5;
        }

        sub_21986A254(v22, v20, v13);
      }

      j__swift_release(v19);
LABEL_5:
      v17 += 16;
      --v16;
    }

    while (v16);
  }

  type metadata accessor for FollowingModel(0);
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  if (sub_219BE6E54())
  {
    v24 = MEMORY[0x277D6DF80];
    v25 = v40;
    v27 = v37;
    v26 = v38;
  }

  else
  {
    sub_218A7BB4C(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v27 = v37;
    v35(v8, v13, v37);
    sub_218718690(v41, &v8[v29]);
    v31 = *MEMORY[0x277D6D868];
    v32 = sub_219BE6DF4();
    (*(*(v32 - 8) + 104))(&v8[v30], v31, v32);
    v24 = MEMORY[0x277D6DF78];
    v25 = v40;
    v26 = v38;
  }

  (*(v6 + 104))(v8, *v24, v26);
  v25(v8);
  (*(v6 + 8))(v8, v26);
  (*(v10 + 8))(v13, v27);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

void sub_21986A254(uint64_t a1, int a2, uint64_t a3)
{
  v136 = a3;
  LODWORD(v128) = a2;
  LODWORD(v127) = a2;
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v129);
  v122 = (&v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v114 = &v112 - v9;
  sub_218748D40(0);
  v117 = v10;
  v115 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v113 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v130 = *(v14 - 8);
  v131 = v14;
  MEMORY[0x28223BE20](v14);
  v124 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v119 = &v112 - v17;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v126 = &v112 - v21;
  sub_218950928(0);
  v133 = *(v22 - 8);
  v134 = v22;
  MEMORY[0x28223BE20](v22);
  v116 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v123 = &v112 - v25;
  MEMORY[0x28223BE20](v26);
  v125 = &v112 - v27;
  v28 = sub_219BF2CB4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_219BF2634();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v3 + 32);
  v132 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 8), v36);
  v135 = a1;
  *v31 = *(a1 + 16);
  (*(v29 + 104))(v31, *MEMORY[0x277D33B98], v28);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v29 + 8))(v31, v28);
  v37 = sub_219BF2614();
  (*(v33 + 8))(v35, v32);
  if (v127 <= 2)
  {
    v127 = type metadata accessor for FollowingTagModel();
    v38 = swift_allocObject();
    *(v38 + 16) = v128;
    *(v38 + 24) = v135;
    *(v38 + 32) = v37 & 1;
    sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
    v40 = v39;

    v41 = v126;
    sub_219BEB354();
    v42 = v133;
    v43 = v134;
    v44 = *(v133 + 48);
    v45 = v44(v41, 1, v134);
    v128 = v40;
    if (v45 == 1)
    {
      sub_21986D854(v41, sub_218A2D984);
    }

    else
    {
      v46 = v125;
      (*(v42 + 32))(v125, v41, v43);
      v47 = v120;
      sub_219BE6A64();
      v49 = v130;
      v48 = v131;
      if ((*(v130 + 48))(v47, 1, v131) != 1)
      {
        v86 = v119;
        (*(v49 + 32))(v119, v47, v48);
        v87 = v114;
        sub_219BE5FC4();
        v88 = v49;
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          (*(v49 + 8))(v86, v48);
          (*(v42 + 8))(v125, v43);
          sub_21986D854(v87, type metadata accessor for FollowingModel);
          v70 = v136;
          goto LABEL_16;
        }

        sub_218748BF4(0);
        v90 = v89;
        v91 = v113;
        (*(v115 + 32))(v113, v87 + *(v89 + 48), v117);
        v137[0] = v38;
        sub_2186D596C(&qword_27CC142D8, sub_218748D40, MEMORY[0x277D6CC40]);
        v92 = sub_219BF5744();
        v93 = v132;
        if (v92 == 2)
        {
          MEMORY[0x28223BE20](v92);
          v111 = v137;
          LOBYTE(v92) = sub_218FAEA04(sub_21986D8B4, (&v112 - 4));
        }

        if (v92)
        {
          (*(v115 + 8))(v91, v117);
          (*(v88 + 8))(v119, v131);
          (*(v42 + 8))(v125, v43);
          v70 = v136;
          goto LABEL_16;
        }

        v137[0] = v38;
        sub_219BE2404();
        v94 = *(v42 + 16);
        v127 = v38;
        v95 = v123;
        v94(v123, v125, v43);
        v96 = *(v90 + 48);
        __swift_project_boxed_opaque_existential_1((v93 + 8), *(v93 + 32));
        v97 = sub_219BF4784();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v99 = [objc_opt_self() bundleForClass_];
        v111 = 0x8000000219D39EE0;
        v100 = sub_219BDB5E4();
        v102 = v101;

        type metadata accessor for FollowingButtonModel();
        v103 = swift_allocObject();
        *(v103 + 16) = 0x64656B696C736964;
        *(v103 + 24) = 0xE800000000000000;
        *(v103 + 32) = v100;
        *(v103 + 40) = v102;
        *(v103 + 48) = v97 & 1;
        v104 = v122;
        *v122 = v103;
        v105 = v115;
        (*(v115 + 16))(v104 + v96, v91, v117);
        swift_storeEnumTagMultiPayload();
        sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
        v106 = v124;
        sub_219BE5FB4();
        v107 = v134;
        sub_219BE69E4();
        v84 = v136;
        sub_219BEB234();
        v108 = *(v88 + 8);
        v109 = v131;
        v108(v106, v131);
        v110 = *(v133 + 8);
        v110(v95, v107);
        (*(v105 + 8))(v113, v117);
        v108(v119, v109);
        v110(v125, v107);
        goto LABEL_9;
      }

      (*(v42 + 8))(v46, v43);
      sub_21986D854(v47, sub_218A7BA30);
    }

    v50 = v121;
    sub_219BEB354();
    if (v44(v50, 1, v43) == 1)
    {
      sub_21986D854(v50, sub_218A2D984);
      sub_218748BF4(0);
      __swift_project_boxed_opaque_existential_1((v132 + 8), *(v132 + 32));
      v51 = sub_219BF4784();
      type metadata accessor for Localized();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
      v111 = 0x8000000219D39EE0;
      v54 = sub_219BDB5E4();
      v56 = v55;

      type metadata accessor for FollowingButtonModel();
      v57 = swift_allocObject();
      *(v57 + 16) = 0x64656B696C736964;
      *(v57 + 24) = 0xE800000000000000;
      *(v57 + 32) = v54;
      *(v57 + 40) = v56;
      *(v57 + 48) = v51 & 1;
      *v122 = v57;
      sub_218725F94();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_219C146A0;
      *(v58 + 32) = v38;
      v59 = sub_2186D596C(&unk_280ED6630, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
      v60 = sub_2186D596C(&qword_280ED6640, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);

      MEMORY[0x21CEB9150](v58, v127, v59, v60);
      v127 = v38;
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      v61 = v124;
      sub_219BE5FB4();
      sub_2197EC7A0(v137);
      v138 = 9;
      sub_21986D7F0(0, &unk_280E8BFD0, sub_218950B84, MEMORY[0x277D84560]);
      v62 = v130;
      v63 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_219C09BA0;
      v65 = v131;
      (*(v62 + 16))(v64 + v63, v61, v131);
      v66 = sub_2186D596C(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
      v67 = sub_2186D596C(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
      v68 = v136;
      MEMORY[0x21CEB9150](v64, v65, v66, v67);
      sub_2187490E4();
      v69 = v123;
      sub_219BE6924();
      sub_218B0632C();
      sub_219BEB324();
      (*(v133 + 8))(v69, v134);
      (*(v62 + 8))(v61, v65);
      v70 = v68;
LABEL_16:
      sub_21986CD10(v70, v135);

      return;
    }

    v71 = v116;
    (*(v42 + 32))(v116, v50, v43);
    sub_218748BF4(0);
    __swift_project_boxed_opaque_existential_1((v132 + 8), *(v132 + 32));
    v72 = sub_219BF4784();
    type metadata accessor for Localized();
    v73 = swift_getObjCClassFromMetadata();
    v74 = [objc_opt_self() bundleForClass_];
    v111 = 0x8000000219D39EE0;
    v75 = sub_219BDB5E4();
    v77 = v76;

    type metadata accessor for FollowingButtonModel();
    v78 = swift_allocObject();
    *(v78 + 16) = 0x64656B696C736964;
    *(v78 + 24) = 0xE800000000000000;
    *(v78 + 32) = v75;
    *(v78 + 40) = v77;
    *(v78 + 48) = v72 & 1;
    *v122 = v78;
    sub_218725F94();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_219C146A0;
    *(v79 + 32) = v38;
    v80 = sub_2186D596C(&unk_280ED6630, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v81 = sub_2186D596C(&qword_280ED6640, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);

    MEMORY[0x21CEB9150](v79, v127, v80, v81);
    swift_storeEnumTagMultiPayload();
    sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v82 = v124;
    sub_219BE5FB4();
    v83 = v123;
    (*(v42 + 16))(v123, v71, v43);
    sub_2186D596C(&qword_27CC20108, type metadata accessor for FollowingModel, &unk_219C483B0);
    sub_219BE6A44();
    v84 = v136;
    sub_219BEB234();
    v85 = *(v42 + 8);
    v85(v83, v43);
    (*(v130 + 8))(v82, v131);
    v85(v71, v43);
LABEL_9:
    v70 = v84;
    goto LABEL_16;
  }

  sub_219BF7514();
  __break(1u);
}

uint64_t sub_21986B604(uint64_t a1, int a2, uint64_t a3)
{
  v87 = a2;
  v88 = a1;
  v4 = sub_219BF2CB4();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v92);
  v80 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  sub_218748D40(0);
  v94 = v13;
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v93 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v72 - v23;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v89 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - v32;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v78 = v34;
  v81 = a3;
  sub_219BEB354();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    v35 = sub_218A2D984;
    v36 = v26;
    return sub_21986D854(v36, v35);
  }

  (*(v29 + 32))(v33, v26, v28);
  sub_219BE6A64();
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = sub_218A7BA30;
    v36 = v17;
    return sub_21986D854(v36, v35);
  }

  v37 = v95;
  (*(v20 + 32))(v95, v17, v19);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    (*(v20 + 8))(v37, v19);
    (*(v29 + 8))(v33, v28);
    v35 = type metadata accessor for FollowingModel;
    v36 = v12;
    return sub_21986D854(v36, v35);
  }

  v77 = v33;
  v75 = v20;
  v76 = v19;

  sub_218748BF4(0);
  v73 = v38;
  (*(v91 + 32))(v93, &v12[*(v38 + 48)], v94);
  __swift_project_boxed_opaque_existential_1((v90 + 8), *(v90 + 32));
  v39 = v88;
  v40 = *(v88 + 16);
  *v6 = v40;
  v42 = v85;
  v41 = v86;
  (*(v85 + 104))(v6, *MEMORY[0x277D33B98], v86);
  v74 = v40;
  swift_unknownObjectRetain();
  v43 = v82;
  sub_219BF4794();
  (*(v42 + 8))(v6, v41);
  v44 = sub_219BF2614();
  (*(v83 + 8))(v43, v84);
  v45 = v87;
  if (v87 > 2u)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    type metadata accessor for FollowingTagModel();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v39;
    *(v46 + 32) = v44 & 1;
    v97 = 0;
    v98 = 0xE000000000000000;
    LOBYTE(v96) = v45;

    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v47 = [v74 identifier];
    v48 = sub_219BF5414();
    v50 = v49;

    MEMORY[0x21CECC330](v48, v50);

    v51 = v93;
    v52 = v94;
    sub_219BE2464();

    v53 = v77;
    if (v97)
    {
      v96 = v46;
      sub_219BE2434();
      (*(v29 + 16))(v89, v53, v28);
      v88 = *(v73 + 48);
      v54 = v52;
      v55 = v51;
      __swift_project_boxed_opaque_existential_1((v90 + 8), *(v90 + 32));
      v56 = sub_219BF4784();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass_];
      v59 = sub_219BDB5E4();
      v61 = v60;

      type metadata accessor for FollowingButtonModel();
      v62 = swift_allocObject();
      *(v62 + 16) = 0x64656B696C736964;
      *(v62 + 24) = 0xE800000000000000;
      *(v62 + 32) = v59;
      *(v62 + 40) = v61;
      *(v62 + 48) = v56 & 1;
      v63 = v80;
      *v80 = v62;
      v64 = v91;
      (*(v91 + 16))(v63 + v88, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      v65 = v79;
      sub_219BE5FB4();
      v66 = v95;
      v67 = v89;
      sub_219BE69E4();
      sub_219BEB234();

      v68 = *(v75 + 8);
      v69 = v76;
      v68(v65, v76);
      v70 = *(v29 + 8);
      v70(v67, v28);
      (*(v64 + 8))(v93, v94);
      v68(v66, v69);
      return (v70)(v77, v28);
    }

    else
    {

      (*(v91 + 8))(v51, v52);
      (*(v75 + 8))(v95, v76);
      return (*(v29 + 8))(v53, v28);
    }
  }

  return result;
}

uint64_t sub_21986C10C(uint64_t a1, int a2, uint64_t a3)
{
  v89 = a1;
  v82 = a2;
  v4 = sub_219BF2CB4();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v90);
  v76 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  sub_218748D40(0);
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x28223BE20](v13);
  v92 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v75 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v69 - v23;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v84 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v69 - v32;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v83 = v34;
  v85 = a3;
  sub_219BEB354();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    v35 = sub_218A2D984;
    v36 = v26;
    return sub_21986D854(v36, v35);
  }

  (*(v29 + 32))(v33, v26, v28);
  sub_219BE6A64();
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = sub_218A7BA30;
    v36 = v17;
    return sub_21986D854(v36, v35);
  }

  v74 = v29;
  v37 = v91;
  (*(v20 + 32))(v91, v17, v19);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    (*(v20 + 8))(v37, v19);
    (*(v74 + 8))(v33, v28);
    v35 = type metadata accessor for FollowingModel;
    v36 = v12;
    return sub_21986D854(v36, v35);
  }

  v73 = v33;
  v71 = v20;
  v72 = v19;

  sub_218748BF4(0);
  v70 = v38;
  (*(v86 + 32))(v92, &v12[*(v38 + 48)], v87);
  __swift_project_boxed_opaque_existential_1((v88 + 8), *(v88 + 32));
  v39 = *(v89 + 16);
  *v6 = v39;
  v41 = v80;
  v40 = v81;
  (*(v80 + 104))(v6, *MEMORY[0x277D33B98], v81);
  swift_unknownObjectRetain();
  v42 = v77;
  sub_219BF4794();
  (*(v41 + 8))(v6, v40);
  sub_219BF2614();
  (*(v78 + 8))(v42, v79);
  if (v82 > 2u)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    LOBYTE(v93) = v82;

    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v43 = [v39 identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    MEMORY[0x21CECC330](v44, v46);

    v47 = v87;
    sub_219BE2414();

    v48 = v84;
    (*(v74 + 16))(v84, v73, v28);
    sub_2186D596C(&qword_27CC142D0, sub_218748D40, MEMORY[0x277D6CC48]);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (v94 == v93)
    {
      v49 = v47;
      sub_219BE5F84();
      sub_219BE69C4();

      sub_2186D596C(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      sub_219BF5E84();
      v50 = v85;
      if (v94 == v93)
      {
        sub_219BE6944();
        sub_219BEB214();
      }

      else
      {
        sub_219BEB234();
      }

      v61 = v86;
      v66 = v48;
      v67 = v72;
      v64 = v71;
      v63 = v91;
    }

    else
    {
      v52 = *(v70 + 48);
      __swift_project_boxed_opaque_existential_1((v88 + 8), *(v88 + 32));
      v53 = sub_219BF4784();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v55 = [objc_opt_self() bundleForClass_];
      v56 = sub_219BDB5E4();
      v58 = v57;

      type metadata accessor for FollowingButtonModel();
      v59 = swift_allocObject();
      *(v59 + 16) = 0x64656B696C736964;
      *(v59 + 24) = 0xE800000000000000;
      *(v59 + 32) = v56;
      *(v59 + 40) = v58;
      *(v59 + 48) = v53 & 1;
      v60 = v76;
      *v76 = v59;
      v61 = v86;
      (*(v86 + 16))(v60 + v52, v92, v47);
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      v49 = v47;
      v62 = v75;
      sub_219BE5FB4();
      v63 = v91;
      sub_219BE69E4();
      v50 = v85;
      sub_219BEB234();
      v64 = v71;
      v65 = v62;
      v66 = v48;
      v67 = v72;
      (*(v71 + 8))(v65, v72);
    }

    sub_21986CD10(v50, v89);

    v68 = *(v74 + 8);
    v68(v66, v28);
    (*(v61 + 8))(v92, v49);
    (*(v64 + 8))(v63, v67);
    return (v68)(v73, v28);
  }

  return result;
}

uint64_t sub_21986CD10(uint64_t a1, uint64_t a2)
{
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2CB4();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF2634();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v56 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v57 = v26;
  sub_219BEB354();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    return sub_21986D854(v18, sub_218A2D984);
  }

  v49 = a1;
  (*(v21 + 32))(v25, v18, v20);
  v46 = v25;
  v47 = v8;
  v48 = v7;
  v58 = v21;
  __swift_project_boxed_opaque_existential_1(v55 + 1, v55[4]);
  v28 = *(a2 + 16);
  *v12 = v28;
  v55 = v28;
  v30 = v53;
  v29 = v54;
  (*(v53 + 104))(v12, *MEMORY[0x277D33B98], v54);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v30 + 8))(v12, v29);
  v31 = sub_219BF2614();
  (*(v51 + 8))(v15, v52);
  type metadata accessor for FollowingTagModel();
  inited = swift_initStackObject();
  *(inited + 16) = 1;
  *(inited + 24) = a2;
  *(inited + 32) = v31 & 1;
  v33 = v48;
  v34 = v56;
  v35 = v46;
  (*(v58 + 16))(v56);
  v61 = 0;
  v62 = 0xE000000000000000;
  LOBYTE(v60) = 1;

  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v36 = [v55 identifier];
  v37 = sub_219BF5414();
  v39 = v38;

  MEMORY[0x21CECC330](v37, v39);

  v40 = v59;
  sub_219BE6A64();

  v41 = v47;
  if ((*(v47 + 48))(v40, 1, v33) == 1)
  {
    sub_21986D854(v40, sub_218A7BA30);
  }

  else
  {
    v42 = v50;
    (*(v41 + 32))(v50, v40, v33);
    v43 = *(a2 + 27);
    if (v43 < 0 && (v43 & 1) != 0)
    {
      sub_219BE69D4();
    }

    (*(v41 + 8))(v42, v33);
  }

  sub_2186D596C(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v61 == v60)
  {
    sub_219BE6944();
    sub_219BEB214();
  }

  else
  {
    sub_219BEB234();
  }

  v44 = *(v58 + 8);
  v44(v34, v20);
  return (v44)(v35, v20);
}

uint64_t sub_21986D3F8(uint64_t a1)
{
  v2 = sub_218B13014();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21986D438()
{
  result = qword_27CC20100;
  if (!qword_27CC20100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20100);
  }

  return result;
}

void sub_21986D4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21986D594(uint64_t a1, uint64_t a2)
{
  sub_218B7E48C(0);
  sub_2186D596C(&qword_27CC12E60, sub_218B7E48C, MEMORY[0x277D6D408]);
  return sub_219BF53A4() & 1;
}

BOOL sub_21986D624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v4 = [*(v3 + 16) identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  MEMORY[0x21CECC330](v5, v7);

  v8 = *(a2 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v9 = [*(v8 + 16) identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  MEMORY[0x21CECC330](v10, v12);

  if (v16 == __PAIR128__(0xE000000000000000, 0))
  {

    return _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(v3, v8);
  }

  v13 = sub_219BF78F4();

  v14 = 0;
  if (v13)
  {
    return _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(v3, v8);
  }

  return v14;
}

void sub_21986D7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21986D854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21986D8DC()
{
  v1 = [*(v0 + 16) connectedScenes];
  sub_219004C80();
  sub_21986E0E0(&qword_280E8DA40, sub_219004C80, MEMORY[0x277D85378]);
  sub_219BF5D44();

  sub_21986E04C(0);
  swift_getTupleTypeMetadata2();
  sub_21986E0E0(qword_27CC20118, sub_21986E04C, MEMORY[0x277D83B68]);
  v2 = sub_219BF57E4();

  return v2;
}

id sub_21986DA44@<X0>(id *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  result = [*a1 delegate];
  if (result)
  {
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      *a3 = v4;
      a3[1] = v6;
      return v4;
    }

    result = swift_unknownObjectRelease();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_21986DAC8()
{
  v1 = *v0;
  sub_2186DCF58(0);
  sub_219BDBD34();
  v2 = *(v1 + 80);
  v8 = sub_21986D8DC();
  sub_219004C80();
  swift_getTupleTypeMetadata2();
  sub_219BF5B14();
  swift_getWitnessTable();
  sub_219BF5804();

  swift_getWitnessTable();
  sub_219BF5EA4();

  if (v8)
  {
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v3 = qword_280F61750;
    v4 = sub_219BF6214();
    sub_219BE5314("NotificationScenePicker could not find a scene.", 47, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
    type metadata accessor for NotificationScenePicker.Errors(0, v2, v5, v6);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_21986DCDC(uint64_t a1, uint64_t a2)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v25[-v15];
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  v19 = qword_280F621D8;
  swift_beginAccess();
  sub_2187D96F4(v17 + v19, v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_219BDBBB4();
    if (v20(v9, 1, v10) != 1)
    {
      sub_2189DD39C(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = qword_280F621D8;
  swift_beginAccess();
  sub_2187D96F4(v18 + v21, v6);
  if (v20(v6, 1, v10) == 1)
  {
    sub_219BDBBB4();
    if (v20(v6, 1, v10) != 1)
    {
      sub_2189DD39C(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = sub_219BDBC14();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

id sub_21986DFC8@<X0>(void *a1@<X8>)
{
  result = sub_21986DAC8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_21986E04C(uint64_t a1)
{
  if (!qword_27CC20110)
  {
    sub_219004C80();
    sub_21986E0E0(&qword_280E8DA40, sub_219004C80, MEMORY[0x277D85378]);
    v1 = sub_219BF5DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20110);
    }
  }
}

uint64_t sub_21986E0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21986E128(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21986E184(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21986E304(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void __swiftcall PuzzleSettingsModule.createViewController(config:)(UIViewController *__return_ptr retstr, NewsUI2::PuzzleSettingsConfiguration config)
{
  v4 = *config.title._countAndFlagsBits;
  v3 = *(config.title._countAndFlagsBits + 8);
  v5 = *(config.title._countAndFlagsBits + 16);
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PuzzleSettingsViewController();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;

  v8 = sub_219BE1E04();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21986E684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1BA4();
}

uint64_t PuzzleSettingsModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t PuzzleSettingsModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_21986E7B4(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PuzzleSettingsViewController();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;

  v8 = sub_219BE1E04();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21986E950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_2186F64EC(0);
  v99 = v3;
  v95 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v94 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14(0);
  v90 = v7;
  v89 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v91 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = v69 - v10;
  v100 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v100);
  v101 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = v69 - v16;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = v69 - v20;
  sub_21986FF3C(0, &qword_280E8C8D8, sub_21986FE84, &type metadata for FeaturedIssueMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v69 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21986FE84();
  v26 = v102;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v83 = v23;
  v85 = 0;
  v87 = v14;
  v86 = a1;
  LOBYTE(v113) = 0;
  sub_2186EC6C8(&qword_280E919C8, sub_2186E3B14, MEMORY[0x277D321B0]);
  v28 = v97;
  v29 = v90;
  sub_219BF7674();
  LOBYTE(v113) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v78 = v118;
  sub_2186F9548();
  LOBYTE(v113) = 2;
  v30 = MEMORY[0x277D32620];
  sub_2186EC6C8(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v102 = v115;
  LOBYTE(v108) = 8;
  sub_219BF7674();
  v77 = v113;
  v76 = v114;
  LOBYTE(v108) = 3;
  sub_219BF7674();
  v80 = v112;
  sub_2186F95C4();
  v32 = v31;
  LOBYTE(v108) = 4;
  sub_2186EC6C8(&qword_280E913F8, sub_2186F95C4, v30);
  v69[1] = v32;
  sub_219BF7674();
  v81 = v111;
  sub_2186ECA28();
  v34 = v33;
  LOBYTE(v108) = 5;
  sub_2186EC6C8(&qword_280E913D8, sub_2186ECA28, v30);
  v69[2] = v34;
  sub_219BF7674();
  v79 = v110;
  LOBYTE(v108) = 6;
  sub_218CE8BEC();
  sub_219BF7674();
  v116 = v117;
  LOBYTE(v106) = 9;
  sub_219BF7674();
  v75 = v108;
  v74 = v109;
  LOBYTE(v104) = 10;
  sub_219BF7674();
  v73 = v106;
  v72 = v107;
  LOBYTE(v103) = 11;
  sub_219BF7674();
  v71 = v104;
  v70 = v105;
  LOBYTE(v103) = 7;
  sub_2186EC6C8(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  v84 = v22;
  v82 = v25;
  sub_219BF7674();
  v35 = v88;
  sub_218CE8CA0(v28, v88, sub_218CE8B24);
  v36 = v89;
  v37 = *(v89 + 48);
  v38 = v37(v35, 1, v29);
  v39 = v29;
  v40 = v36;
  if (v38 == 1)
  {
    v41 = v100;
    v42 = v101;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v39, qword_280F61818);
    v44 = v91;
    (*(v40 + 16))(v91, v43, v39);
    v45 = v44;
    if (v37(v35, 1, v39) != 1)
    {
      sub_218CE8C40(v35, sub_218CE8B24);
    }
  }

  else
  {
    v45 = v91;
    (*(v36 + 32))(v91, v35, v39);
    v41 = v100;
    v42 = v101;
  }

  v46 = sub_219BEDB04();
  v47 = v93;
  (*(*(v46 - 8) + 56))(v93, 1, 1, v46);
  v48 = v92;
  sub_219BEEA04();
  sub_218CE8C40(v47, sub_218CE8A90);
  (*(v40 + 8))(v45, v39);
  (*(v40 + 32))(v42, v48, v39);
  v49 = v78;
  if (v78 == 3)
  {
    v49 = 0;
  }

  v42[v41[5]] = v49;
  if (v102)
  {
    v50 = v102;
  }

  else
  {
    v103 = 4;
    swift_allocObject();
    v50 = sub_219BEF534();
  }

  v51 = v80;
  v52 = v79;
  *&v42[v41[6]] = v50;
  v53 = v81;
  if (v51)
  {

    v54 = v51;
  }

  else
  {
    v103 = 4;
    swift_allocObject();

    v54 = sub_219BEF534();
  }

  v55 = v95;
  *&v42[v41[7]] = v54;
  if (v53)
  {

    v56 = v53;
  }

  else
  {
    LOBYTE(v103) = 1;
    swift_allocObject();

    v56 = sub_219BEF534();
  }

  *&v42[v41[8]] = v56;
  if (v52)
  {
  }

  else
  {
    v103 = 0;
    swift_allocObject();

    v52 = sub_219BEF534();
  }

  *&v42[v41[9]] = v52;
  v57 = v116;
  if (v116 == 4)
  {
    v57 = 0;
  }

  v42[v41[10]] = v57;
  v58 = v98;
  v59 = v87;
  sub_218CE8CA0(v98, v87, sub_218CE8AB0);
  v60 = *(v55 + 48);
  v61 = v99;
  if (v60(v59, 1, v99) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v62 = v94;
    sub_219BEEC74();

    v63 = v58;
    v64 = v87;
    sub_218CE8C40(v63, sub_218CE8AB0);
    sub_218CE8C40(v97, sub_218CE8B24);
    (*(v83 + 8))(v82, v84);
    v65 = v60(v64, 1, v61);
    v66 = v62;
    v67 = v86;
    if (v65 != 1)
    {
      sub_218CE8C40(v64, sub_218CE8AB0);
    }
  }

  else
  {

    sub_218CE8C40(v58, sub_218CE8AB0);
    sub_218CE8C40(v97, sub_218CE8B24);
    (*(v83 + 8))(v82, v84);
    v66 = v94;
    (*(v55 + 32))(v94, v59, v61);
    v67 = v86;
  }

  v68 = v101;
  (*(v55 + 32))(&v101[*(v100 + 44)], v66, v61);
  sub_21986FED8(v68, v96);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_21986F734(void *a1, __n128 a2)
{
  v4 = v2;
  sub_21986FF3C(0, &qword_280E8C290, sub_21986FFA4, &type metadata for FeaturedIssueMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21986FFA4();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2186E3B14(0);
  sub_2186EC6C8(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(0);
    LOBYTE(v14) = *(v4 + v11[5]);
    v15 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v14 = *(v4 + v11[6]);
    v15 = 2;
    sub_2186F9548();
    sub_2186EC6C8(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v4 + v11[7]);
    v15 = 3;
    sub_219BF7834();
    v14 = *(v4 + v11[8]);
    v15 = 4;
    sub_2186F95C4();
    sub_2186EC6C8(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v4 + v11[9]);
    v15 = 5;
    sub_2186ECA28();
    sub_2186EC6C8(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    LOBYTE(v14) = *(v4 + v11[10]);
    v15 = 6;
    sub_218CE8E7C();
    sub_219BF7834();
    LOBYTE(v14) = 7;
    sub_2186F64EC(0);
    sub_2186EC6C8(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21986FBA8(uint64_t a1)
{
  v2 = sub_21986FE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21986FBE4(uint64_t a1)
{
  v2 = sub_21986FE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21986FC20(uint64_t a1)
{
  v2 = sub_21986FFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21986FC5C(uint64_t a1)
{
  v2 = sub_21986FFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21986FCCC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(0);
  if (*&aNone_17[8 * *(a1 + *(v4 + 20))] == *&aNone_17[8 * *(a2 + *(v4 + 20))])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_21908B134(*(a1 + *(v4 + 40)), *(a2 + *(v4 + 40))) & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_21986FE84()
{
  result = qword_280E9DB58;
  if (!qword_280E9DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB58);
  }

  return result;
}

uint64_t sub_21986FED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21986FF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_21986FFA4()
{
  result = qword_280E9DB80;
  if (!qword_280E9DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB80);
  }

  return result;
}

unint64_t sub_21987001C()
{
  result = qword_27CC20220;
  if (!qword_27CC20220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20220);
  }

  return result;
}

unint64_t sub_219870074()
{
  result = qword_27CC20228;
  if (!qword_27CC20228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20228);
  }

  return result;
}

unint64_t sub_2198700CC()
{
  result = qword_280E9DB70;
  if (!qword_280E9DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB70);
  }

  return result;
}

unint64_t sub_219870124()
{
  result = qword_280E9DB78;
  if (!qword_280E9DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB78);
  }

  return result;
}

unint64_t sub_21987017C()
{
  result = qword_280E9DB60;
  if (!qword_280E9DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB60);
  }

  return result;
}

unint64_t sub_2198701D4()
{
  result = qword_280E9DB68;
  if (!qword_280E9DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB68);
  }

  return result;
}

uint64_t FeatureAvailability.__allocating_init(featureAvailabilityProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 32) = 2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v4 = a1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for FeatureAvailability;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t FeatureAvailability.init(featureAvailabilityProvider:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = 2;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = a1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for FeatureAvailability;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t FeatureAvailability.puzzlesEnabled.getter()
{
  if ((sub_2187AFEC4() & 1) == 0)
  {
    return 0;
  }

  return sub_2187D9FE0();
}

uint64_t FeatureAvailability.paidBundleViaOfferAvailability.getter()
{
  sub_218831784();
  sub_218831908();
  sub_218831A20();
  sub_218831A48();
  sub_218831BB4();
  sub_218831C34();
  sub_218831CE4();
  v0 = objc_allocWithZone(sub_219BE4554());
  return sub_219BE4544();
}

uint64_t FeatureAvailability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeatureAvailability.add(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v4 = *(v2 + 24);
    v18 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v17 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v17;
          v13 = v18;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v12 = Strong, swift_unknownObjectRelease(), v12 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:

  *(v2 + 24) = v13;

  type metadata accessor for FeatureAvailabilityObserverProxy();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = swift_beginAccess();
  MEMORY[0x21CECC690](v14);
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

double FeatureAvailability.remove(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v4 = *(v2 + 24);
    v17 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v16;
          v13 = v17;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v12 = Strong, swift_unknownObjectRelease(), v12 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:

  *(v2 + 24) = v13;

  return result;
}

double sub_219871574(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();

  return result;
}

void FeatureAvailability.notifyObservers(block:)(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    v9 = sub_219BF7214();
    if (!v9)
    {
      return;
    }

    goto LABEL_4;
  }

  swift_beginAccess();
  v2 = *(v2 + 24);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

LABEL_4:
  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](i, v2);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        a1();
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall FeatureAvailability.sportsTopicNotifications(didChange:)(Swift::Bool didChange)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    v9 = sub_219BF7214();
    if (!v9)
    {
      return;
    }

    goto LABEL_4;
  }

  swift_beginAccess();
  v8 = *(v2 + 24);
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

LABEL_4:
  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](i, v8);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong sportsTopicNotificationsWithDidChange_];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_219871A6C()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t PuzzleArchiveFilterOption.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    result = 0x6C75636966666964;
    if (!*(v0 + 8))
    {
      if (v1)
      {
        v4 = 0xEA00000000007974;
      }

      else
      {
        result = 0x7461745379616C70;
        v4 = 0xE900000000000065;
      }

      MEMORY[0x21CECC330](result, v4);

      return 544829025;
    }
  }

  else if (v2 == 2)
  {
    return 0xD000000000000012;
  }

  else if (v2 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    v5 = 0x6F5474736577656ELL;
    v6 = 0xD000000000000011;
    v7 = 0xD000000000000013;
    if (v1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (v1 != 2)
    {
      v6 = v7;
    }

    if (v1)
    {
      v5 = 0x6F54747365646C6FLL;
    }

    if (v1 <= 1)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

void PuzzleArchiveFilterOption.groupType.getter(_BYTE *a1@<X8>)
{
  v2 = 0x202uLL >> (8 * *v1);
  if (!v1[8])
  {
    LOBYTE(v2) = *v1 & 1;
  }

  if (v1[8] - 1 < 3)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

uint64_t PuzzleArchiveFilterOption.GroupType.identifier.getter()
{
  if (*v0)
  {
    return 0x6C75636966666964;
  }

  else
  {
    return 0x7461745379616C70;
  }
}

uint64_t PuzzleArchiveFilterOption.GroupType.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t PuzzleArchiveFilterOption.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v3 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v1 &= 1u;
  }

  else
  {
    if (v2 == 2)
    {
      v3 = 7;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v3);
      return MEMORY[0x21CECE850](v1);
    }

    ++v1;
  }

  return MEMORY[0x21CECE850](v1);
}

uint64_t PuzzleArchiveFilterOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_219BF7AA4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v1 &= 1u;
  }

  else
  {
    if (v2 == 2)
    {
      v3 = 7;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v3);
      goto LABEL_11;
    }

    ++v1;
  }

LABEL_11:
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_219871EB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_219BF7AA4();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v2 &= 1u;
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 7;
      goto LABEL_10;
    }

    if (v3 == 3)
    {
      v4 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v4);
      goto LABEL_11;
    }

    ++v2;
  }

LABEL_11:
  MEMORY[0x21CECE850](v2);
  return sub_219BF7AE4();
}

BOOL _s7NewsUI225PuzzleArchiveFilterOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8))
      {
        return ((v4 ^ v2) & 1) == 0;
      }

      return 0;
    }

    if (v5 == 1)
    {
      return v2 == v4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v2 <= 1)
    {
      if (v2)
      {
        if (v5 == 4 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v5 == 4 && !v4)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      if (v5 == 4 && v4 == 2)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v5 == 4 && v4 == 3)
      {
        return 1;
      }
    }

    else if (v5 == 4 && v4 == 4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_219872060()
{
  result = qword_27CC20230;
  if (!qword_27CC20230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20230);
  }

  return result;
}

unint64_t sub_2198720B8()
{
  result = qword_280EBD6D0;
  if (!qword_280EBD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBD6D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PuzzleArchiveFilterOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleArchiveFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_219872198(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_2198721B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2198721E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  sub_219374410(a1, &v12);
  *&v11[9] = *&v13[9];
  v10 = v12;
  *v11 = *v13;
  if (v13[24] > 2u)
  {
    if (v13[24] == 3)
    {
LABEL_5:
      v3 = sub_2186CB1F0(&v10, v14);
      MEMORY[0x28223BE20](v3);
      v4 = sub_219BE3204();
      __swift_destroy_boxed_opaque_existential_1(v14);
      type metadata accessor for SearchMoreFeedPool();
      result = swift_allocObject();
      *(result + 16) = v4;
      return result;
    }
  }

  else if (v13[24] - 1 >= 2)
  {
    goto LABEL_5;
  }

  sub_2186CB1F0(&v10, v14);
  sub_219ADE0C0();
  MEMORY[0x28223BE20](v6);
  sub_219873858(0, &unk_27CC179C8, sub_2186D8870, type metadata accessor for StreamingPage);
  sub_219BE3204();

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2F74();

  __swift_destroy_boxed_opaque_existential_1(v14);
  type metadata accessor for SearchMoreFeedPool();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

void *sub_219872480(uint64_t a1)
{
  result = sub_219BF08B4();
  if (!v1)
  {
    sub_219BE3204();

    v3 = sub_219BE2E54();
    v4 = sub_219BE2F84();

    type metadata accessor for SearchMoreFeedPool();
    result = swift_allocObject();
    result[2] = v4;
  }

  return result;
}

uint64_t sub_2198725AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedServiceConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_219BF0944();
  sub_219374410(v6, &v20);
  sub_219872A2C(v6);
  *&v19[9] = *&v21[9];
  v18 = v20;
  *v19 = *v21;
  if (v21[24] > 2u)
  {
    if (v21[24] == 3)
    {
      goto LABEL_3;
    }
  }

  else if (v21[24] - 1 >= 2)
  {
LABEL_3:
    v9 = sub_2186CB1F0(&v18, v22);
    MEMORY[0x28223BE20](v9);
    *(&v18 - 4) = v22;
    *(&v18 - 3) = v10;
    *(&v18 - 16) = v11 & 1;
    *(&v18 - 1) = a2;
    v12 = sub_219BE3204();
    goto LABEL_8;
  }

  sub_2186CB1F0(&v18, v22);
  if (v8 >> 6 > 2)
  {
    v7 = 1;
    LOBYTE(v8) = 1;
  }

  sub_219ADE0C0();
  MEMORY[0x28223BE20](v13);
  *(&v18 - 4) = v22;
  *(&v18 - 3) = v7;
  *(&v18 - 16) = v8 & 1;
  *(&v18 - 1) = v14;
  sub_219873858(0, &unk_27CC179C8, sub_2186D8870, type metadata accessor for StreamingPage);
  sub_219BE3204();

  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v8 & 1;
  v16 = sub_219BE2E54();
  v12 = sub_219BE2F74();

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v12;
}

uint64_t sub_219872908()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_219872998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2198721E8(a1);
  *a2 = result;
  return result;
}

void *sub_2198729C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_219872480(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219872A2C(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreFeedServiceConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219872A88(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v14 = a2;
  v15 = a3 & 1;
  v9 = *(v8 + 32);

  v9(&v14, sub_2198737D4, a4, v7, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219872BB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v3, 0);
    v4 = v22;
    v6 = a1 + 32;
    do
    {
      sub_218718690(v6, v19);
      v7 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v15 = a2[7];
  v16 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v15);
  v17 = MEMORY[0x21CEC9610](v4, *MEMORY[0x277D30B98], v15, v16);

  return v17;
}

uint64_t sub_219872D10(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v14 = a2;
  v15 = a3 & 1;
  v9 = *(v8 + 32);

  v9(&v14, sub_219873814, a4, v7, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219872E3C(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_219873858(0, &qword_280EE6A00, sub_218799754, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  return sub_219BE2F54();
}

uint64_t sub_219872F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_219872F30, 0, 0);
}

uint64_t sub_219872F30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 56);
    if (v3 >> 62)
    {
      v4 = sub_219BF7214();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v26 = MEMORY[0x277D84F90];
      v6 = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        return MEMORY[0x282192298](v6, v7, v8);
      }

      v9 = 0;
      v5 = v26;
      v24 = v2;
      v25 = *(v0 + 56) + 32;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CECE0F0](v9, *(v0 + 56));
        }

        else
        {
          v10 = *(v25 + 8 * v9);
        }

        v11 = v10;
        v12 = [v10 identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        v17 = *(v26 + 16);
        v16 = *(v26 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
        }

        ++v9;
        *(v26 + 16) = v17 + 1;
        v18 = v26 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v4 != v9);
      v2 = v24;
    }

    *(v0 + 72) = v5;
    v19 = v2[12];
    v20 = v2[13];
    __swift_project_boxed_opaque_existential_1(v2 + 9, v19);
    v21 = swift_task_alloc();
    *(v0 + 80) = v21;
    *v21 = v0;
    v21[1] = sub_21987319C;
    v6 = v5;
    v7 = v19;
    v8 = v20;

    return MEMORY[0x282192298](v6, v7, v8);
  }

  **(v0 + 40) = MEMORY[0x277D84F90];
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21987319C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_21987333C;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = sub_2198732CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2198732CC()
{

  **(v0 + 40) = *(v0 + 96);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21987333C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2198733A8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v13 = a2;
  v14 = a3 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  v10 = *(v8 + 24);

  v11 = v10(&v13, sub_219873968, v9, v7, v8);

  return v11;
}

uint64_t sub_219873484(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_25:
    v19 = a1;
    v3 = sub_219BF7214();
    a1 = v19;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
      v24 = a1 & 0xC000000000000001;
      v22 = a1;
      v5 = a1 + 32;
      v6 = a2 + 56;
      while (1)
      {
        if (v24)
        {
          v7 = MEMORY[0x21CECE0F0](v4, v22);
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v7 = *(v5 + 8 * v4);
          swift_unknownObjectRetain();
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
            goto LABEL_22;
          }
        }

        v9 = [v7 identifier];
        v10 = sub_219BF5414();
        v12 = v11;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v13 = sub_219BF7AE4(), v14 = -1 << *(a2 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v10 && v17[1] == v12;
            if (v18 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v4 == v3)
          {
            break;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          a1 = sub_219BF73E4();
          if (v4 == v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_218A354D8(0);
  sub_219873970(&qword_280E8ECF0, sub_218A354D8, MEMORY[0x277D83970]);
  v20 = sub_219BF56E4();

  return v20;
}

double sub_2198737DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;

  return result;
}

double sub_21987381C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16) | 0x40;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;

  return result;
}

void sub_219873858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2198738BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_219872F0C(a1, v5, v4);
}

uint64_t sub_219873970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2198739B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16) | 0x80;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;

  return result;
}

void sub_219873A80()
{
  qword_280F62270 = MEMORY[0x277D84F90];
  *algn_280F62278 = MEMORY[0x277D84F90];
  qword_280F62280 = MEMORY[0x277D84F90];
  unk_280F62288 = 0;
  xmmword_280F62290 = 0uLL;
}

char *sub_219873AA0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_72:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = v65;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v8, v2);
        v9 = [swift_unknownObjectRetain() identifier];
        v10 = sub_219BF5414();
        v12 = v11;
        swift_unknownObjectRelease_n();

        v14 = *(v65 + 16);
        v13 = *(v65 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21870B65C((v13 > 1), v14 + 1, 1);
        }

        ++v8;
        *(v65 + 16) = v14 + 1;
        v15 = v65 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v5 != v8);
    }

    else
    {
      v16 = v2 + 32;
      do
      {
        v17 = [swift_unknownObjectRetain_n() identifier];
        v18 = sub_219BF5414();
        v20 = v19;
        swift_unknownObjectRelease_n();

        v22 = *(v65 + 16);
        v21 = *(v65 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21870B65C((v21 > 1), v22 + 1, 1);
        }

        *(v65 + 16) = v22 + 1;
        v23 = v65 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v16 += 8;
        --v5;
      }

      while (v5);
    }
  }

  v24 = sub_218845F78(v6);

  if (v4)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_219BF7214();
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = a1;
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = 0;
    a1 = v2 & 0xC000000000000001;
    v64 = MEMORY[0x277D84F90];
    while (2)
    {
      v28 = v27;
      while (1)
      {
        if (a1)
        {
          MEMORY[0x21CECE0F0](v28, v2);
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v28 >= *(v4 + 16))
          {
            goto LABEL_70;
          }

          swift_unknownObjectRetain();
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        v29 = [swift_unknownObjectRetain() clusterID];
        if (v29)
        {
          break;
        }

        swift_unknownObjectRelease_n();
        ++v28;
        if (v27 == v25)
        {
          goto LABEL_37;
        }
      }

      v30 = v29;
      v31 = sub_219BF5414();
      v63 = v32;
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_218840D24(0, *(v64 + 2) + 1, 1, v64);
      }

      v34 = *(v64 + 2);
      v33 = *(v64 + 3);
      if (v34 >= v33 >> 1)
      {
        v64 = sub_218840D24((v33 > 1), v34 + 1, 1, v64);
      }

      *(v64 + 2) = v34 + 1;
      v35 = &v64[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v63;
      v26 = MEMORY[0x277D84F90];
      if (v27 != v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

LABEL_37:
  v2 = sub_218845F78(v64);

  v66 = v26;
  if (v61 >> 62)
  {
    v36 = sub_219BF7214();
    if (v36)
    {
      goto LABEL_39;
    }

LABEL_74:
    v60 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v36 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_74;
  }

LABEL_39:
  v37 = 0;
  v62 = v36;
  a1 = v24 + 56;
  v4 = v2 + 56;
  while ((v61 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x21CECE0F0](v37, v61);
    v39 = __OFADD__(v37++, 1);
    if (v39)
    {
      goto LABEL_67;
    }

LABEL_45:
    v40 = [v38 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    if (*(v24 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v44 = sub_219BF7AE4();
      v45 = -1 << *(v24 + 32);
      v46 = v44 & ~v45;
      if ((*(a1 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
      {
        v47 = ~v45;
        do
        {
          v48 = (*(v24 + 48) + 16 * v46);
          v49 = *v48 == v41 && v48[1] == v43;
          if (v49 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_64;
          }

          v46 = (v46 + 1) & v47;
        }

        while (((*(a1 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
      }
    }

    v50 = [v38 identifier];
    v51 = sub_219BF5414();
    v53 = v52;

    if (*(v2 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v54 = sub_219BF7AE4();
      v55 = -1 << *(v2 + 32);
      v56 = v54 & ~v55;
      if ((*(v4 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = (*(v2 + 48) + 16 * v56);
          v59 = *v58 == v51 && v58[1] == v53;
          if (v59 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v4 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_64:
        swift_unknownObjectRelease();

        goto LABEL_41;
      }
    }

LABEL_40:

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
LABEL_41:
    if (v37 == v62)
    {
      goto LABEL_68;
    }
  }

  if (v37 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  v38 = *(v61 + 32 + 8 * v37);
  swift_unknownObjectRetain();
  v39 = __OFADD__(v37++, 1);
  if (!v39)
  {
    goto LABEL_45;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v60 = v66;
LABEL_75:

  return v60;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI211TagFeedPoolV0D5BatchO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2198740F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219874144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}