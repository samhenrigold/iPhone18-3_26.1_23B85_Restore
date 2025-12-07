uint64_t sub_24A538760(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v380) = a1;
  v388 = sub_24A62EA94();
  v394 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v386 = &v366 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = sub_24A62EAD4();
  v393 = *(v387 - 8);
  MEMORY[0x28223BE20](v387);
  v385 = &v366 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_24A62EAF4();
  v377 = *(v392 - 8);
  MEMORY[0x28223BE20](v392);
  v375 = &v366 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v376 = &v366 - v11;
  v12 = sub_24A62E654();
  v400 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v395 = &v366 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_24A62E984();
  v382 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v381 = &v366 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v15);
  v366 = &v366 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v367 = &v366 - v18;
  MEMORY[0x28223BE20](v19);
  v379 = (&v366 - v20);
  MEMORY[0x28223BE20](v21);
  v384 = (&v366 - v22);
  MEMORY[0x28223BE20](v23);
  v378 = &v366 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v366 - v26);
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 1;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v28 = sub_24A506EB8(v15, qword_27EF5CAF0);
  v398 = a2;
  dispatch_group_enter(a2);
  v29 = objc_opt_self();
  [v29 begin];
  sub_24A5461E8(v28, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v389 = v15;
  if (EnumCaseMultiPayload == 1)
  {
    v31 = v27[1];
  }

  else
  {
    v32 = v382;
    v33 = v381;
    v34 = v383;
    (*(v382 + 32))(v381, v27, v383);
    sub_24A62E934();
    v31 = v35;
    (*(v32 + 8))(v33, v34);
  }

  [v29 setDuration_];
  v36 = sub_24A6268BC();
  [v29 setTimingFunction_];

  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v38 = v398;
  v37[4] = v398;
  v406 = sub_24A547994;
  v407 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v403 = 1107296256;
  v404 = sub_24A5A8458;
  v405 = &unk_285DA3450;
  v39 = _Block_copy(&aBlock);
  v40 = v38;

  [v29 setCompletionBlock_];
  _Block_release(v39);
  v390 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v42 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v43 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v405 = v42;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  v397 = v12;
  v391 = v29;
  [v29 commit];
  if (qword_27EF4EB88 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v40);
  v44 = v395;
  v45 = sub_24A62E644();
  MEMORY[0x28223BE20](v45);
  *(&v366 - 2) = v4;
  *(&v366 - 8) = 0;
  v46 = swift_allocObject();
  v399 = v4;
  v46[2] = 0;
  v46[3] = 0;
  v47 = v398;
  v46[4] = v398;
  v48 = v40;
  sub_24A62E3E4();

  v49 = *(v400 + 8);
  v400 += 8;
  v396 = v49;
  v49(v44, v397);
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v48);
  v50 = sub_24A62E644();
  MEMORY[0x28223BE20](v50);
  v51 = v399;
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 0;
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v47;
  v53 = v48;
  sub_24A62E3E4();
  v374 = 0;

  v396(v44, v397);
  dispatch_group_enter(v53);
  v368 = sub_24A545E8C();
  v54 = sub_24A62F014();
  v55 = v375;
  sub_24A62EAE4();
  v56 = v376;
  sub_24A62EB54();
  isa = v377[1].isa;
  (isa)(v55, v392);
  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = 0;
  *(v57 + 48) = v47;
  v406 = sub_24A547A30;
  v407 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v403 = 1107296256;
  v404 = sub_24A5A8458;
  v405 = &unk_285DA34F0;
  v58 = _Block_copy(&aBlock);
  v377 = v53;

  v59 = v385;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v60 = sub_24A545F60();
  v61 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v62 = sub_24A529464();
  v63 = v386;
  v370 = v61;
  v369 = v62;
  v64 = v388;
  v371 = v60;
  sub_24A62F254();
  MEMORY[0x24C21A910](v56, v59, v63, v58);
  _Block_release(v58);

  v65 = v394[1];
  ++v394;
  v372 = v65;
  v65(v63, v64);
  v66 = *(v393 + 8);
  v393 += 8;
  v375 = v66;
  (v66)(v59, v387);
  (isa)(v56, v392);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v67 = qword_27EF5C980;
  v68 = v377;
  dispatch_group_enter(v377);
  v69 = sub_24A62E644();
  MEMORY[0x28223BE20](v69);
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 1;
  v70 = swift_allocObject();
  v70[2] = 0;
  v70[3] = 0;
  v71 = v398;
  v70[4] = v398;
  v72 = v68;
  v73 = v374;
  sub_24A62E3E4();

  v396(v44, v397);
  sub_24A52AE18(0, v67, v71, 0, 0);
  v74 = v44;
  if (qword_27EF4EC80 != -1)
  {
    swift_once();
  }

  v75 = sub_24A506EB8(v389, qword_27EF5CA78);
  dispatch_group_enter(v72);
  v76 = v391;
  [v391 begin];
  v77 = v378;
  sub_24A5461E8(v75, v378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v78 = *(v77 + 8);
  }

  else
  {
    v79 = v382;
    v80 = v381;
    v81 = v77;
    v82 = v383;
    (*(v382 + 32))(v381, v81, v383);
    sub_24A62E934();
    v78 = v83;
    (*(v79 + 8))(v80, v82);
  }

  [v76 setDuration_];
  v84 = sub_24A6268BC();
  [v76 setTimingFunction_];

  v85 = swift_allocObject();
  v85[2] = 0;
  v85[3] = 0;
  v85[4] = v71;
  v406 = sub_24A547994;
  v407 = v85;
  aBlock = MEMORY[0x277D85DD0];
  v403 = 1107296256;
  v404 = sub_24A5A8458;
  v405 = &unk_285DA3568;
  v86 = _Block_copy(&aBlock);
  v87 = v72;

  [v76 setCompletionBlock_];
  _Block_release(v86);
  v88 = swift_weakLoadStrong();
  if (v88)
  {
    v89 = *(v88 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v405 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(9, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v76 commit];
  v90 = v399;
  sub_24A52B554(v71, 0, 0);
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v87);
  sub_24A62E644();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = 0;
  v91[4] = 0;
  v91[5] = v71;
  v92 = v87;

  sub_24A62E3E4();

  v94 = v396;
  v93 = v397;
  v396(v74, v397);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v95 = qword_27EF5C848;
  dispatch_group_enter(v92);
  v96 = sub_24A62E644();
  v377 = &v366;
  MEMORY[0x28223BE20](v96);
  *(&v366 - 2) = v90;
  *(&v366 - 8) = 0;
  v97 = swift_allocObject();
  v97[2] = 0;
  v97[3] = 0;
  v97[4] = v71;
  v98 = v92;
  v392 = v95;
  sub_24A62E3E4();
  v378 = v73;

  v94(v74, v93);
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v99 = sub_24A506EB8(v389, qword_27EF5CAD8);
  v100 = v384;
  sub_24A5461E8(v99, v384);
  dispatch_group_enter(v98);
  v101 = v391;
  [v391 begin];
  v102 = v379;
  sub_24A5461E8(v100, v379);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v103 = v102[1];
  }

  else
  {
    v104 = v382;
    v105 = v381;
    v106 = v102;
    v107 = v383;
    (*(v382 + 32))(v381, v106, v383);
    sub_24A62E934();
    v103 = v108;
    v109 = v104;
    v100 = v384;
    (*(v109 + 8))(v105, v107);
  }

  [v101 setDuration_];
  v110 = sub_24A6268BC();
  [v101 setTimingFunction_];

  v111 = swift_allocObject();
  v111[2] = 0;
  v111[3] = 0;
  v111[4] = v71;
  v406 = sub_24A547994;
  v407 = v111;
  aBlock = MEMORY[0x277D85DD0];
  v403 = 1107296256;
  v404 = sub_24A5A8458;
  v405 = &unk_285DA3608;
  v112 = _Block_copy(&aBlock);
  v384 = v98;

  [v101 setCompletionBlock_];
  _Block_release(v112);
  v113 = swift_weakLoadStrong();
  if (v113)
  {
    v114 = *(v113 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v405 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v101 commit];
  sub_24A54624C(v100);
  if (v380 > 3u)
  {
    if (v380 - 4 < 2)
    {
      v171 = v399;
      *(v399 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      *(v171 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC5C28F5C28F5C3;
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v391 = qword_27EF5C910;
      v172 = dispatch_group_create();
      dispatch_group_enter(v172);
      v173 = sub_24A62E644();
      MEMORY[0x28223BE20](v173);
      v174 = v399;
      *(&v366 - 2) = v399;
      v175 = v174;
      *(&v366 - 8) = 0;
      *(swift_allocObject() + 16) = v172;
      v176 = v172;
      v177 = v378;
      sub_24A62E3E4();

      v178 = v396;
      v179 = v397;
      v396(v395, v397);
      dispatch_group_enter(v176);
      v180 = sub_24A62E644();
      MEMORY[0x28223BE20](v180);
      *(&v366 - 2) = v175;
      *(&v366 - 8) = 0;
      *(swift_allocObject() + 16) = v176;
      v390 = v176;
      sub_24A62E3E4();
      v391 = v177;

      v178(v395, v179);
      v181 = v384;
      dispatch_group_enter(v384);
      v182 = sub_24A62F014();
      v183 = swift_allocObject();
      v183[2] = 0;
      v183[3] = 0;
      v184 = v398;
      v183[4] = v398;
      v406 = sub_24A547994;
      v407 = v183;
      aBlock = MEMORY[0x277D85DD0];
      v403 = 1107296256;
      v404 = sub_24A5A8458;
      v405 = &unk_285DA3748;
      v185 = _Block_copy(&aBlock);
      v186 = v181;
      v187 = v385;
      sub_24A62EAB4();
      v401 = MEMORY[0x277D84F90];
      v188 = v386;
      v189 = v388;
      sub_24A62F254();
      v190 = v390;
      sub_24A62EFB4();
      _Block_release(v185);

      v372(v188, v189);
      v191 = v399;
      v170 = v395;
      (v375)(v187, v387);

      dispatch_group_enter(v186);
      v192 = sub_24A62E644();
      v394 = &v366;
      MEMORY[0x28223BE20](v192);
      *(&v366 - 2) = v191;
      *(&v366 - 8) = 1;
      v193 = swift_allocObject();
      v193[2] = 0;
      v193[3] = 0;
      v193[4] = v184;
      v194 = v186;
      sub_24A62E3E4();

      v195 = v396;
      v396(v170, v179);
      dispatch_group_enter(v194);
      v196 = sub_24A62E644();
      MEMORY[0x28223BE20](v196);
      *(&v366 - 2) = v191;
      v197 = v398;
      *(&v366 - 8) = 1;
      *(swift_allocObject() + 16) = v197;
      v198 = v194;
      sub_24A62E3E4();

      v195(v170, v179);
      if (qword_27EF4EB18 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v198);
      v199 = sub_24A62E644();
      MEMORY[0x28223BE20](v199);
      *(&v366 - 2) = v399;
      *(&v366 - 8) = 1;
      v200 = swift_allocObject();
      v200[2] = 0;
      v200[3] = 0;
      v200[4] = v197;
      v201 = v198;
      sub_24A62E3E4();

      v195(v170, v179);
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v201);
      v202 = sub_24A62E644();
      MEMORY[0x28223BE20](v202);
      *(&v366 - 2) = v399;
      *(&v366 - 8) = 1;
      v203 = swift_allocObject();
      v203[2] = 0;
      v203[3] = 0;
      v203[4] = v398;
      v204 = v201;
      sub_24A62E3E4();

      v195(v170, v179);
      if (qword_27EF4EBF8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v204);
      v205 = sub_24A62E644();
      MEMORY[0x28223BE20](v205);
      *(&v366 - 2) = v399;
      *(&v366 - 8) = 1;
      v206 = swift_allocObject();
      v206[2] = 0;
      v206[3] = 0;
      v206[4] = v398;
      v207 = v204;
      sub_24A62E3E4();

      v195(v170, v179);
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v207);
      v208 = sub_24A62E644();
      MEMORY[0x28223BE20](v208);
      v209 = v399;
      *(&v366 - 2) = v399;
      *(&v366 - 8) = 0;
      v210 = swift_allocObject();
      v210[2] = 0;
      v210[3] = 0;
      v211 = v398;
      v210[4] = v398;
      v212 = v207;
      sub_24A62E3E4();

      v213 = v396;
      v214 = v397;
      v396(v170, v397);
      dispatch_group_enter(v212);
      v215 = sub_24A62E644();
      v394 = &v366;
      MEMORY[0x28223BE20](v215);
      *(&v366 - 2) = v209;
      *(&v366 - 8) = 1;
      v216 = swift_allocObject();
      v216[2] = 0;
      v216[3] = 0;
      v216[4] = v211;
      v217 = v212;
      sub_24A62E3E4();

      v213(v170, v214);
      if (qword_27EF4EC08 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v217);
      v218 = sub_24A62E644();
      MEMORY[0x28223BE20](v218);
      v158 = v399;
      *(&v366 - 2) = v399;
      *(&v366 - 8) = 1;
      v219 = swift_allocObject();
      v219[2] = 0;
      v219[3] = 0;
      v219[4] = v398;
      v220 = v217;
      sub_24A62E3E4();

      goto LABEL_65;
    }

LABEL_106:
    v158 = v399;
    goto LABEL_124;
  }

  if (!v380)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0xBFE47AE147AE147BLL;

    sub_24A62E364();
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v380 = qword_27EF5C910;
    v222 = dispatch_group_create();
    dispatch_group_enter(v222);
    v223 = sub_24A62E644();
    MEMORY[0x28223BE20](v223);
    v224 = v399;
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 0;
    *(swift_allocObject() + 16) = v222;
    v225 = v222;
    sub_24A62E3E4();

    v227 = v395;
    v226 = v396;
    v228 = v397;
    v396(v395, v397);
    dispatch_group_enter(v225);
    v229 = sub_24A62E644();
    MEMORY[0x28223BE20](v229);
    *(&v366 - 2) = v224;
    *(&v366 - 8) = 0;
    *(swift_allocObject() + 16) = v225;
    v379 = v225;
    sub_24A62E3E4();

    v226(v227, v228);
    v230 = v384;
    dispatch_group_enter(v384);
    v231 = sub_24A62F014();
    v232 = swift_allocObject();
    v232[2] = 0;
    v232[3] = 0;
    v233 = v398;
    v232[4] = v398;
    v406 = sub_24A547994;
    v407 = v232;
    aBlock = MEMORY[0x277D85DD0];
    v403 = 1107296256;
    v404 = sub_24A5A8458;
    v405 = &unk_285DA3D60;
    v234 = _Block_copy(&aBlock);
    v235 = v230;
    v236 = v385;
    sub_24A62EAB4();
    v401 = MEMORY[0x277D84F90];
    v237 = v386;
    v238 = v388;
    sub_24A62F254();
    v239 = v379;
    sub_24A62EFB4();
    _Block_release(v234);

    v372(v237, v238);
    v240 = v399;
    (v375)(v236, v387);

    sub_24A62EA04();
    dispatch_group_enter(v235);
    v241 = sub_24A62E644();
    MEMORY[0x28223BE20](v241);
    *(&v366 - 2) = v240;
    *(&v366 - 8) = 0;
    v242 = swift_allocObject();
    v242[2] = 0;
    v242[3] = 0;
    v242[4] = v233;
    v243 = v235;
    sub_24A62E3E4();

    v244 = v397;
    (v396)(v227);
    *(v240 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
    *(v240 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD1EB851EB851ECLL;
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v243);
    v245 = sub_24A62E644();
    MEMORY[0x28223BE20](v245);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v246 = swift_allocObject();
    v246[2] = 0;
    v246[3] = 0;
    v246[4] = v398;
    v247 = v243;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EBF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v247);
    v248 = sub_24A62E644();
    MEMORY[0x28223BE20](v248);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v249 = swift_allocObject();
    v249[2] = 0;
    v249[3] = 0;
    v249[4] = v398;
    v250 = v247;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v250);
    v251 = sub_24A62E644();
    MEMORY[0x28223BE20](v251);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 0;
    v252 = swift_allocObject();
    v252[2] = 0;
    v252[3] = 0;
    v252[4] = v398;
    v253 = v250;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v253);
    v254 = sub_24A62E644();
    MEMORY[0x28223BE20](v254);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v255 = swift_allocObject();
    v255[2] = 0;
    v255[3] = 0;
    v255[4] = v398;
    v256 = v253;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v256);
    v257 = sub_24A62E644();
    MEMORY[0x28223BE20](v257);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v258 = swift_allocObject();
    v258[2] = 0;
    v258[3] = 0;
    v258[4] = v398;
    v259 = v256;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v259);
    v260 = sub_24A62E644();
    MEMORY[0x28223BE20](v260);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    *(swift_allocObject() + 16) = v398;
    v261 = v259;
    sub_24A62E3E4();

    v396(v227, v244);
    if (qword_27EF4EC58 != -1)
    {
      swift_once();
    }

    v262 = sub_24A506EB8(v389, qword_27EF5CA00);
    dispatch_group_enter(v261);
    v263 = v391;
    [v391 begin];
    v264 = v367;
    sub_24A5461E8(v262, v367);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v265 = *(v264 + 8);
    }

    else
    {
      v306 = v382;
      v307 = v381;
      v308 = v264;
      v309 = v383;
      (*(v382 + 32))(v381, v308, v383);
      sub_24A62E934();
      v265 = v310;
      (*(v306 + 8))(v307, v309);
    }

    [v263 setDuration_];
    v311 = sub_24A6268BC();
    [v263 setTimingFunction_];

    v312 = swift_allocObject();
    v312[2] = 0;
    v312[3] = 0;
    v312[4] = v398;
    v406 = sub_24A547994;
    v407 = v312;
    aBlock = MEMORY[0x277D85DD0];
    v403 = 1107296256;
    v404 = sub_24A5A8458;
    v405 = &unk_285DA3EC8;
    v313 = _Block_copy(&aBlock);
    v314 = v261;

    [v263 setCompletionBlock_];
    _Block_release(v313);
    v315 = swift_weakLoadStrong();
    if (v315)
    {
      v316 = *(v315 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v405 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v263 commit];
    if (qword_27EF4EAE8 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v314);
    v317 = sub_24A62E644();
    MEMORY[0x28223BE20](v317);
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v318 = swift_allocObject();
    v318[2] = 0;
    v318[3] = 0;
    v319 = v398;
    v318[4] = v398;
    v320 = v314;
    sub_24A62E3E4();

    v396(v227, v397);
    if (qword_27EF4EC08 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v320);
    v321 = sub_24A62E644();
    MEMORY[0x28223BE20](v321);
    v322 = v399;
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v323 = swift_allocObject();
    v323[2] = 0;
    v323[3] = 0;
    v323[4] = v319;
    v324 = v320;
    sub_24A62E3E4();

    v158 = v322;
    v221 = v397;
    v170 = v227;
    goto LABEL_123;
  }

  if (v380 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0x3FB5810624DD2F1BLL;

    sub_24A62E364();
    if (qword_27EF4EBB0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBB8 != -1)
    {
      swift_once();
    }

    v380 = qword_27EF5C920;
    v266 = dispatch_group_create();
    dispatch_group_enter(v266);
    v267 = sub_24A62E644();
    MEMORY[0x28223BE20](v267);
    v268 = v399;
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 0;
    *(swift_allocObject() + 16) = v266;
    v269 = v266;
    sub_24A62E3E4();

    v271 = v395;
    v270 = v396;
    v272 = v397;
    v396(v395, v397);
    dispatch_group_enter(v269);
    v273 = sub_24A62E644();
    MEMORY[0x28223BE20](v273);
    *(&v366 - 2) = v268;
    *(&v366 - 8) = 0;
    *(swift_allocObject() + 16) = v269;
    v274 = v269;
    sub_24A62E3E4();

    v270(v271, v272);
    v275 = v384;
    dispatch_group_enter(v384);
    v276 = sub_24A62F014();
    v277 = swift_allocObject();
    v277[2] = 0;
    v277[3] = 0;
    v277[4] = v398;
    v406 = sub_24A547994;
    v407 = v277;
    aBlock = MEMORY[0x277D85DD0];
    v403 = 1107296256;
    v404 = sub_24A5A8458;
    v405 = &unk_285DA3B08;
    v278 = _Block_copy(&aBlock);
    v279 = v275;
    v280 = v385;
    sub_24A62EAB4();
    v401 = MEMORY[0x277D84F90];
    v281 = v386;
    v282 = v388;
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v278);

    v372(v281, v282);
    (v375)(v280, v387);

    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v279);
    v283 = sub_24A62E644();
    MEMORY[0x28223BE20](v283);
    v284 = v399;
    *(&v366 - 2) = v399;
    *(&v366 - 8) = 1;
    v285 = swift_allocObject();
    v285[2] = 0;
    v285[3] = 0;
    v285[4] = v398;
    v286 = v279;
    sub_24A62E3E4();

    v396(v271, v397);
    if (qword_27EF4EBF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v286);
    v287 = sub_24A62E644();
    MEMORY[0x28223BE20](v287);
    *(&v366 - 2) = v284;
    *(&v366 - 8) = 1;
    v288 = swift_allocObject();
    v288[2] = 0;
    v288[3] = 0;
    v288[4] = v398;
    v289 = v286;
    sub_24A62E3E4();

    v290 = v397;
    v396(v271, v397);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v289);
    v291 = sub_24A62E644();
    MEMORY[0x28223BE20](v291);
    *(&v366 - 2) = v284;
    *(&v366 - 8) = 0;
    v292 = swift_allocObject();
    v292[2] = 0;
    v292[3] = 0;
    v292[4] = v398;
    v293 = v289;
    sub_24A62E3E4();

    v396(v271, v290);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v293);
    v294 = sub_24A62E644();
    MEMORY[0x28223BE20](v294);
    *(&v366 - 2) = v284;
    *(&v366 - 8) = 1;
    v295 = swift_allocObject();
    v295[2] = 0;
    v295[3] = 0;
    v295[4] = v398;
    v296 = v293;
    sub_24A62E3E4();

    v396(v271, v290);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v296);
    v297 = sub_24A62E644();
    MEMORY[0x28223BE20](v297);
    *(&v366 - 2) = v284;
    *(&v366 - 8) = 1;
    v298 = swift_allocObject();
    v298[2] = 0;
    v298[3] = 0;
    v298[4] = v398;
    v299 = v296;
    sub_24A62E3E4();

    v396(v271, v290);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v299);
    v300 = sub_24A62E644();
    MEMORY[0x28223BE20](v300);
    *(&v366 - 2) = v284;
    *(&v366 - 8) = 1;
    *(swift_allocObject() + 16) = v398;
    v301 = v299;
    sub_24A62E3E4();

    v396(v271, v290);
    if (qword_27EF4EC58 != -1)
    {
      swift_once();
    }

    v302 = sub_24A506EB8(v389, qword_27EF5CA00);
    dispatch_group_enter(v301);
    v303 = v391;
    [v391 begin];
    v304 = v366;
    sub_24A5461E8(v302, v366);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v305 = *(v304 + 8);
    }

    else
    {
      v325 = v382;
      v326 = v381;
      v327 = v304;
      v328 = v383;
      (*(v382 + 32))(v381, v327, v383);
      sub_24A62E934();
      v305 = v329;
      (*(v325 + 8))(v326, v328);
    }

    [v303 setDuration_];
    v330 = sub_24A6268BC();
    [v303 setTimingFunction_];

    v331 = swift_allocObject();
    v331[2] = 0;
    v331[3] = 0;
    v331[4] = v398;
    v406 = sub_24A547994;
    v407 = v331;
    aBlock = MEMORY[0x277D85DD0];
    v403 = 1107296256;
    v404 = sub_24A5A8458;
    v405 = &unk_285DA3C48;
    v332 = _Block_copy(&aBlock);
    v333 = v301;

    [v303 setCompletionBlock_];
    _Block_release(v332);
    v334 = swift_weakLoadStrong();
    if (v334)
    {
      v335 = *(v334 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v405 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v303 commit];
    v336 = v399;
    *(v399 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
    *(v336 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC1EB851EB851ECLL;
    sub_24A62EA04();
    dispatch_group_enter(v333);
    v337 = sub_24A62E644();
    MEMORY[0x28223BE20](v337);
    *(&v366 - 2) = v336;
    *(&v366 - 8) = 0;
    v338 = swift_allocObject();
    v338[2] = 0;
    v338[3] = 0;
    v338[4] = v398;
    v339 = v333;
    sub_24A62E3E4();

    v341 = v396;
    v340 = v397;
    v170 = v271;
    v396(v271, v397);
    if (qword_27EF4EAF0 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v339);
    v342 = sub_24A62E644();
    v394 = &v366;
    MEMORY[0x28223BE20](v342);
    *(&v366 - 2) = v336;
    *(&v366 - 8) = 1;
    v343 = swift_allocObject();
    v343[2] = 0;
    v343[3] = 0;
    v343[4] = v398;
    v344 = v339;
    sub_24A62E3E4();

    v341(v271, v340);
    if (qword_27EF4EC08 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v344);
    v345 = sub_24A62E644();
    MEMORY[0x28223BE20](v345);
    *(&v366 - 2) = v336;
    *(&v366 - 8) = 1;
    v346 = swift_allocObject();
    v158 = v336;
    v346[2] = 0;
    v346[3] = 0;
    v346[4] = v398;
    v347 = v344;
    sub_24A62E3E4();

    v221 = v397;
    goto LABEL_123;
  }

  if (v380 != 2)
  {
    goto LABEL_106;
  }

  v115 = v399;
  *(v399 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
  *(v115 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
  if (qword_27EF4EBA0 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EBA8 != -1)
  {
    swift_once();
  }

  v391 = qword_27EF5C910;
  v116 = dispatch_group_create();
  dispatch_group_enter(v116);
  v117 = sub_24A62E644();
  MEMORY[0x28223BE20](v117);
  v118 = v399;
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 0;
  *(swift_allocObject() + 16) = v116;
  v119 = v116;
  sub_24A62E3E4();

  v121 = v395;
  v120 = v396;
  v122 = v397;
  v396(v395, v397);
  dispatch_group_enter(v119);
  v123 = sub_24A62E644();
  MEMORY[0x28223BE20](v123);
  *(&v366 - 2) = v118;
  *(&v366 - 8) = 0;
  *(swift_allocObject() + 16) = v119;
  v124 = v119;
  sub_24A62E3E4();

  v120(v121, v122);
  v125 = v384;
  dispatch_group_enter(v384);
  v126 = sub_24A62F014();
  v127 = swift_allocObject();
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v398;
  v406 = sub_24A547994;
  v407 = v127;
  aBlock = MEMORY[0x277D85DD0];
  v403 = 1107296256;
  v404 = sub_24A5A8458;
  v405 = &unk_285DA3928;
  v128 = _Block_copy(&aBlock);
  v129 = v125;
  v130 = v385;
  sub_24A62EAB4();
  v401 = MEMORY[0x277D84F90];
  v131 = v386;
  v132 = v388;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v128);

  v372(v131, v132);
  (v375)(v130, v387);

  if (qword_27EF4EB00 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v129);
  v133 = sub_24A62E644();
  MEMORY[0x28223BE20](v133);
  v134 = v399;
  *(&v366 - 2) = v399;
  v135 = v134;
  *(&v366 - 8) = 1;
  v136 = swift_allocObject();
  v137 = v398;
  *(v136 + 16) = v398;
  v138 = v129;
  sub_24A62E3E4();

  v396(v121, v397);
  sub_24A62EA04();
  dispatch_group_enter(v138);
  v139 = sub_24A62E644();
  MEMORY[0x28223BE20](v139);
  *(&v366 - 2) = v135;
  *(&v366 - 8) = 1;
  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  v141 = v137;
  v140[4] = v137;
  v142 = v138;
  sub_24A62E3E4();

  v144 = v396;
  v143 = v397;
  v396(v121, v397);
  dispatch_group_enter(v142);
  v145 = sub_24A62E644();
  v394 = &v366;
  MEMORY[0x28223BE20](v145);
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 1;
  v146 = swift_allocObject();
  v146[2] = 0;
  v146[3] = 0;
  v146[4] = v141;
  v147 = v142;
  sub_24A62E3E4();

  v144(v121, v143);
  dispatch_group_enter(v147);
  v148 = sub_24A62E644();
  MEMORY[0x28223BE20](v148);
  v149 = v399;
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 0;
  v150 = swift_allocObject();
  v150[2] = 0;
  v150[3] = 0;
  v150[4] = v398;
  v151 = v147;
  sub_24A62E3E4();

  v152 = v397;
  v396(v121, v397);
  if (qword_27EF4EB90 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v151);
  v153 = sub_24A62E644();
  MEMORY[0x28223BE20](v153);
  *(&v366 - 2) = v149;
  *(&v366 - 8) = 1;
  v154 = swift_allocObject();
  v154[2] = 0;
  v154[3] = 0;
  v154[4] = v398;
  v155 = v151;
  sub_24A62E3E4();

  v396(v121, v152);
  v156 = v152;
  if (qword_27EF4EB98 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v155);
  v157 = sub_24A62E644();
  MEMORY[0x28223BE20](v157);
  v158 = v399;
  *(&v366 - 2) = v399;
  *(&v366 - 8) = 1;
  v159 = swift_allocObject();
  v159[2] = 0;
  v159[3] = 0;
  v160 = v398;
  v159[4] = v398;
  v161 = v155;
  sub_24A62E3E4();

  v162 = v156;
  v163 = v396;
  v396(v121, v162);
  dispatch_group_enter(v161);
  v164 = sub_24A62E644();
  v394 = &v366;
  MEMORY[0x28223BE20](v164);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 1;
  v165 = swift_allocObject();
  v165[2] = 0;
  v165[3] = 0;
  v165[4] = v160;
  v166 = v161;
  sub_24A62E3E4();

  v163(v121, v397);
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v166);
  v167 = sub_24A62E644();
  MEMORY[0x28223BE20](v167);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 1;
  v168 = swift_allocObject();
  v168[2] = 0;
  v168[3] = 0;
  v168[4] = v398;
  v169 = v166;
  sub_24A62E3E4();
  v170 = v121;
LABEL_65:
  v221 = v397;
LABEL_123:

  v396(v170, v221);
  v71 = v398;
LABEL_124:
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  v348 = v395;
  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  v349 = v384;
  dispatch_group_enter(v384);
  sub_24A62EA04();

  v350 = sub_24A62E644();
  MEMORY[0x28223BE20](v350);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 1;
  v351 = swift_allocObject();
  *(v351 + 16) = v71;
  *(v351 + 24) = 1;
  *(v351 + 40) = 0;
  *(v351 + 48) = 0;
  *(v351 + 32) = v158;
  v352 = v349;

  sub_24A62E3E4();

  v353 = v71;
  v354 = v396;
  v396(v348, v397);
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  sub_24A62EA04();
  dispatch_group_enter(v352);
  v355 = sub_24A62E644();
  MEMORY[0x28223BE20](v355);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 1;
  v356 = swift_allocObject();
  v356[2] = 0;
  v356[3] = 0;
  v356[4] = v353;
  v357 = v352;
  sub_24A62E3E4();

  v358 = v397;
  v354(v348, v397);
  dispatch_group_enter(v357);
  v359 = sub_24A62E644();
  v394 = &v366;
  MEMORY[0x28223BE20](v359);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 0;
  v360 = swift_allocObject();
  v360[2] = 0;
  v360[3] = 0;
  v360[4] = v353;
  v361 = v357;
  sub_24A62E3E4();

  v354(v348, v358);
  dispatch_group_enter(v361);
  v362 = sub_24A62E644();
  MEMORY[0x28223BE20](v362);
  *(&v366 - 2) = v158;
  *(&v366 - 8) = 0;
  v363 = swift_allocObject();
  v363[2] = 0;
  v363[3] = 0;
  v363[4] = v398;
  v364 = v361;
  sub_24A62E3E4();

  return (v354)(v348, v397);
}

uint64_t sub_24A53D71C(int a1, int a2, NSObject *a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v609) = a2;
  LODWORD(v615) = a1;
  v612 = sub_24A62E984();
  v611 = *(v612 - 8);
  MEMORY[0x28223BE20](v612);
  v610 = &v600 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v625 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v625);
  v601 = &v600 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v603 = &v600 - v11;
  MEMORY[0x28223BE20](v12);
  v602 = &v600 - v13;
  MEMORY[0x28223BE20](v14);
  v607 = (&v600 - v15);
  MEMORY[0x28223BE20](v16);
  v608 = (&v600 - v17);
  MEMORY[0x28223BE20](v18);
  p_isa = (&v600 - v19);
  v624 = sub_24A62EA94();
  v629 = *(v624 - 8);
  MEMORY[0x28223BE20](v624);
  v623 = &v600 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A62EAD4();
  v630 = *(v21 - 8);
  v631 = v21;
  MEMORY[0x28223BE20](v21);
  v628 = &v600 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v634 = sub_24A62EAF4();
  v632 = *(v634 - 1);
  MEMORY[0x28223BE20](v634);
  v617 = &v600 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v613 = &v600 - v25;
  v26 = sub_24A62E654();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v600 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v604 = a4;
  *(a4 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 1;
  if (qword_27EF4EB48 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a3);
  v30 = sub_24A62E644();
  MEMORY[0x28223BE20](v30);
  *(&v600 - 2) = v5;
  *(&v600 - 8) = 1;
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a3;
  v32 = a3;
  sub_24A62E3E4();

  v33 = *(v27 + 8);
  v637 = v27 + 8;
  v638 = v29;
  v636 = v33;
  v33(v29, v26);
  if (qword_27EF4EB40 != -1)
  {
    swift_once();
  }

  sub_24A52AE18(1, qword_27EF5C8A8, a3, 0, 0);
  v34 = v5;
  v35 = a3;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  v36 = qword_27EF5C978;
  dispatch_group_enter(v32);
  v37 = v638;
  v38 = sub_24A62E644();
  MEMORY[0x28223BE20](v38);
  *(&v600 - 2) = v34;
  *(&v600 - 8) = 0;
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v35;
  v40 = v32;
  v600 = v36;
  sub_24A62E3E4();
  v606 = 0;

  v639 = v26;
  v636(v37, v26);
  dispatch_group_enter(v40);
  v616 = sub_24A545E8C();
  v41 = sub_24A62F014();
  v42 = v617;
  sub_24A62EAE4();
  v43 = v613;
  sub_24A62EB54();
  v627 = *(v632 + 8);
  v632 += 8;
  v627(v42, v634);
  v44 = swift_allocObject();
  *(v44 + 16) = v34;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = v35;
  v646 = sub_24A547A30;
  v647 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA3FB8;
  v45 = _Block_copy(&aBlock);
  v633 = v40;

  v46 = v628;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v620 = sub_24A545F60();
  v618 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v619 = sub_24A529464();
  v640 = v35;
  v47 = v623;
  v48 = v624;
  sub_24A62F254();
  MEMORY[0x24C21A910](v43, v46, v47, v45);
  _Block_release(v45);

  v49 = v629 + 8;
  v621 = *(v629 + 8);
  v621(v47, v48);
  v50 = v34;
  v51 = v630 + 8;
  v622 = *(v630 + 8);
  v622(v46, v631);
  v52 = v634;
  v53 = v627;
  v627(v43, v634);
  dispatch_group_enter(v633);
  v630 = sub_24A62F014();
  v54 = v617;
  sub_24A62EAE4();
  sub_24A62EB54();
  v53(v54, v52);
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 40) = 0;
  *(v55 + 48) = v640;
  v646 = sub_24A547A54;
  v647 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA4008;
  v56 = _Block_copy(&aBlock);
  v57 = v633;
  v635 = v50;

  v58 = v628;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  sub_24A62F254();
  v59 = v630;
  MEMORY[0x24C21A910](v43, v58, v47, v56);
  _Block_release(v56);

  v629 = v49;
  v621(v47, v48);
  v630 = v51;
  v622(v58, v631);
  v627(v43, v634);
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v60 = sub_24A506EB8(v625, qword_27EF5CAF0);
  dispatch_group_enter(v57);
  v633 = objc_opt_self();
  [v633 begin];
  v61 = p_isa;
  sub_24A5461E8(v60, p_isa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = *(v61 + 8);
  }

  else
  {
    v63 = v611;
    v64 = v610;
    v65 = v612;
    (*(v611 + 32))(v610, v61, v612);
    sub_24A62E934();
    v62 = v66;
    (*(v63 + 8))(v64, v65);
  }

  v68 = v639;
  v67 = v640;
  v69 = v635;
  v70 = v633;
  [v633 setDuration:v62];
  v71 = sub_24A6268BC();
  [v70 setTimingFunction:v71];

  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v67;
  v646 = sub_24A547994;
  v647 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA4058;
  v73 = _Block_copy(&aBlock);
  v605 = v57;

  [v70 setCompletionBlock:v73];
  _Block_release(v73);
  v614 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v75 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v76 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v645 = v75;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v633 commit];
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v77 = qword_27EF5C848;
  v78 = dispatch_group_create();
  dispatch_group_enter(v78);
  v79 = v638;
  v80 = sub_24A62E644();
  MEMORY[0x28223BE20](v80);
  *(&v600 - 2) = v69;
  *(&v600 - 8) = 0;
  *(swift_allocObject() + 16) = v78;
  v81 = v78;
  v82 = v606;
  sub_24A62E3E4();

  v83 = v636;
  v636(v79, v68);
  dispatch_group_enter(v81);
  v84 = sub_24A62E644();
  MEMORY[0x28223BE20](v84);
  *(&v600 - 2) = v69;
  *(&v600 - 8) = 0;
  *(swift_allocObject() + 16) = v81;
  v85 = v81;
  p_isa = v77;
  sub_24A62E3E4();
  v606 = v82;

  v83(v79, v639);
  v86 = v605;
  dispatch_group_enter(v605);
  v87 = sub_24A62F014();
  v88 = swift_allocObject();
  v88[2] = 0;
  v88[3] = 0;
  v89 = v640;
  v88[4] = v640;
  v646 = sub_24A547994;
  v647 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA40F8;
  v90 = _Block_copy(&aBlock);
  v91 = v86;
  v92 = v628;
  sub_24A62EAB4();
  v641 = MEMORY[0x277D84F90];
  v93 = v623;
  v94 = v624;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v90);

  v621(v93, v94);
  v622(v92, v631);

  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v91);
  v95 = sub_24A62E644();
  MEMORY[0x28223BE20](v95);
  *(&v600 - 2) = v635;
  *(&v600 - 8) = 0;
  v96 = swift_allocObject();
  v96[2] = 0;
  v96[3] = 0;
  v96[4] = v89;
  v97 = v91;
  v98 = v606;
  sub_24A62E3E4();

  v99 = v79;
  v100 = v636;
  v636(v99, v639);
  v101 = v633;
  v102 = v608;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v103 = sub_24A506EB8(v625, qword_27EF5CAD8);
  sub_24A5461E8(v103, v102);
  dispatch_group_enter(v97);
  [v101 begin];
  v104 = v607;
  sub_24A5461E8(v102, v607);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v105 = *(v104 + 8);
  }

  else
  {
    v106 = v611;
    v107 = v610;
    v108 = v104;
    v109 = v612;
    (*(v611 + 32))(v610, v108, v612);
    sub_24A62E934();
    v105 = v110;
    (*(v106 + 8))(v107, v109);
  }

  v111 = v635;
  v112 = v640;
  [v101 setDuration:v105];
  v113 = sub_24A6268BC();
  [v101 setTimingFunction:v113];

  v114 = swift_allocObject();
  v114[2] = 0;
  v114[3] = 0;
  v114[4] = v112;
  v646 = sub_24A547994;
  v647 = v114;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA4170;
  v115 = _Block_copy(&aBlock);
  v116 = v97;

  [v101 setCompletionBlock:v115];
  _Block_release(v115);
  v117 = swift_weakLoadStrong();
  if (v117)
  {
    v118 = *(v117 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v645 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v101 commit];
  sub_24A54624C(v102);
  if (v615 > 3u)
  {
    v119 = v100;
    if (v615 > 5u)
    {
      v120 = v116;
    }

    else
    {
      v120 = v116;
      if (v615 == 4)
      {

LABEL_32:
        if (qword_27EF4EB10 != -1)
        {
          swift_once();
        }

        result = sub_24A52A5D8(qword_27EF5C878, v640, 0, 0);
        goto LABEL_38;
      }
    }
  }

  else
  {
    v119 = v100;
    v120 = v116;
  }

  v121 = sub_24A62F634();

  if (v121)
  {
    goto LABEL_32;
  }

  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v120);
  v123 = v638;
  sub_24A62E644();
  v124 = swift_allocObject();
  v124[2] = v111;
  v124[3] = 0;
  v125 = v640;
  v124[4] = 0;
  v124[5] = v125;
  v126 = v120;

  sub_24A62E3E4();

  result = v119(v123, v639);
LABEL_38:
  if (v609 <= 2u)
  {
    if (v609)
    {
      if (v609 != 1)
      {
        v127 = v635;
        if (v609 != 2)
        {
          return result;
        }

        v614 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue;
        *(v635 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
        v633 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
        *(v127 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD3333333333333;
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v120);
        v128 = v638;
        v129 = sub_24A62E644();
        MEMORY[0x28223BE20](v129);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 1;
        v130 = swift_allocObject();
        v130[2] = 0;
        v130[3] = 0;
        v130[4] = v640;
        v131 = v120;
        v132 = v128;
        v133 = v131;
        sub_24A62E3E4();

        v119(v132, v639);
        if (qword_27EF4EB90 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v133);
        v134 = sub_24A62E644();
        MEMORY[0x28223BE20](v134);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 0;
        v135 = swift_allocObject();
        v135[2] = 0;
        v135[3] = 0;
        v136 = v640;
        v135[4] = v640;
        v137 = v133;
        sub_24A62E3E4();

        v138 = v639;
        v119(v132, v639);
        dispatch_group_enter(v137);
        v139 = sub_24A62E644();
        v625 = &v600;
        MEMORY[0x28223BE20](v139);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 0;
        v140 = swift_allocObject();
        v140[2] = 0;
        v140[3] = 0;
        v140[4] = v136;
        v141 = v137;
        sub_24A62E3E4();

        v119(v132, v138);
        if (qword_27EF4EB78 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v141);
        v142 = sub_24A62E644();
        MEMORY[0x28223BE20](v142);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 1;
        v143 = swift_allocObject();
        v143[2] = 0;
        v143[3] = 0;
        v144 = v640;
        v143[4] = v640;
        v145 = v141;
        sub_24A62E3E4();

        v119(v638, v639);
        if (qword_27EF4EBE8 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v145);
        v146 = sub_24A62E644();
        MEMORY[0x28223BE20](v146);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 1;
        *(swift_allocObject() + 16) = v144;
        v147 = v145;
        sub_24A62E3E4();

        v119(v638, v639);
        if (qword_27EF4EB68 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v147);
        v148 = sub_24A62E644();
        MEMORY[0x28223BE20](v148);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 0;
        v149 = swift_allocObject();
        v149[2] = 0;
        v149[3] = 0;
        v149[4] = v144;
        v150 = v147;
        sub_24A62E3E4();
        v625 = v98;

        v636(v638, v639);
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        sub_24A62EA04();
        dispatch_group_enter(v150);
        v151 = sub_24A62E644();
        MEMORY[0x28223BE20](v151);
        *(&v600 - 2) = v127;
        *(&v600 - 8) = 1;
        v152 = swift_allocObject();
        v152[2] = 0;
        v152[3] = 0;
        v152[4] = v144;
        v153 = v150;
        v154 = v625;
        sub_24A62E3E4();

        v636(v638, v639);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_24A62E354();

        sub_24A62EA04();
        dispatch_group_enter(v153);
        v155 = sub_24A62E644();
        MEMORY[0x28223BE20](v155);
        v156 = v635;
        *(&v600 - 2) = v635;
        *(&v600 - 8) = 0;
        v157 = swift_allocObject();
        v157[2] = 0;
        v157[3] = 0;
        v158 = v640;
        v157[4] = v640;
        v159 = v153;
        sub_24A62E3E4();

        v161 = v638;
        v160 = v639;
        v162 = v636;
        v636(v638, v639);
        dispatch_group_enter(v159);
        v163 = sub_24A62E644();
        v625 = &v600;
        MEMORY[0x28223BE20](v163);
        *(&v600 - 2) = v156;
        *(&v600 - 8) = 0;
        v164 = swift_allocObject();
        v164[2] = 0;
        v164[3] = 0;
        v164[4] = v158;
        v165 = v159;
        sub_24A62E3E4();

        v162(v161, v160);
        if (qword_27EF4EC18 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v165);
        v166 = sub_24A62E644();
        MEMORY[0x28223BE20](v166);
        *(&v600 - 2) = v156;
        *(&v600 - 8) = 1;
        v167 = swift_allocObject();
        v167[2] = 0;
        v167[3] = 0;
        v167[4] = v640;
        v168 = v165;
        sub_24A62E3E4();

        v169 = v638;
        v636(v638, v639);
        v625 = v168;
        if (v615 <= 3u || v615 > 5u || v615 == 4)
        {
          v406 = sub_24A62F634();

          if ((v406 & 1) == 0)
          {
            p_isa = &v154->isa;
LABEL_237:
            if (qword_27EF4EB20 != -1)
            {
              swift_once();
            }

            v194 = v639;
            if (qword_27EF4EB28 != -1)
            {
              swift_once();
            }

            v560 = v625;
            dispatch_group_enter(v625);
            v561 = v635;
            sub_24A62EA04();

            v562 = sub_24A62E644();
            MEMORY[0x28223BE20](v562);
            *(&v600 - 2) = v561;
            *(&v600 - 8) = 1;
            v563 = swift_allocObject();
            *(v563 + 16) = v640;
            *(v563 + 24) = 1;
            v201 = v638;
            *(v563 + 40) = 0;
            *(v563 + 48) = 0;
            *(v563 + 32) = v561;
            v564 = v560;

            goto LABEL_257;
          }
        }

        else
        {
        }

        *(v635 + v614) = 0x3FED70A3D70A3D71;
        v407 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
        v408 = (v407 >> 13) & 3;
        if (v408)
        {
          if (v408 == 1)
          {
            v409 = (v407 >> 8) & 0xFFFFFF9F;
          }

          else if ((v407 & 0x8000) != 0)
          {
            v409 = (v407 >> 8) & 0x1F;
          }

          else
          {
            v409 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
          }
        }

        else
        {
          v409 = v407 >> 8;
        }

        if (v409 == 2)
        {
          if (qword_27EF4EC28 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v168);
          v527 = sub_24A62E644();
          MEMORY[0x28223BE20](v527);
          *(&v600 - 2) = v635;
          *(&v600 - 8) = 1;
          v528 = swift_allocObject();
          v528[2] = 0;
          v528[3] = 0;
          v529 = v640;
          v528[4] = v640;
          v530 = v168;
          sub_24A62E3E4();

          v531 = v639;
          v532 = v636;
          v636(v169, v639);
          if (qword_27EF4EC30 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v530);
          v533 = sub_24A62E644();
          MEMORY[0x28223BE20](v533);
          *(&v600 - 2) = v635;
          *(&v600 - 8) = 1;
          v534 = swift_allocObject();
          v534[2] = 0;
          v534[3] = 0;
          v534[4] = v529;
          v535 = v530;
          sub_24A62E3E4();
          p_isa = &v154->isa;

          v532(v638, v531);
        }

        else
        {
          if (qword_27EF4EAE8 != -1)
          {
            swift_once();
          }

          sub_24A62EA04();
          dispatch_group_enter(v168);
          v536 = sub_24A62E644();
          MEMORY[0x28223BE20](v536);
          v537 = v635;
          *(&v600 - 2) = v635;
          *(&v600 - 8) = 1;
          v538 = swift_allocObject();
          v538[2] = 0;
          v538[3] = 0;
          v538[4] = v640;
          v539 = v168;
          sub_24A62E3E4();

          v540 = v639;
          v541 = v636;
          v636(v638, v639);
          sub_24A62EA04();
          dispatch_group_enter(v539);
          v542 = sub_24A62E644();
          v615 = &v600;
          MEMORY[0x28223BE20](v542);
          *(&v600 - 2) = v537;
          *(&v600 - 8) = 0;
          v543 = swift_allocObject();
          v543[2] = 0;
          v543[3] = 0;
          v544 = v640;
          v543[4] = v640;
          v545 = v539;
          sub_24A62E3E4();

          v541(v638, v540);
          sub_24A62EA04();
          dispatch_group_enter(v545);
          v546 = sub_24A62E644();
          MEMORY[0x28223BE20](v546);
          *(&v600 - 2) = v537;
          *(&v600 - 8) = 0;
          v547 = swift_allocObject();
          v547[2] = 0;
          v547[3] = 0;
          v547[4] = v544;
          v548 = v545;
          sub_24A62E3E4();
          p_isa = &v154->isa;

          v636(v638, v639);
          dispatch_group_enter(v548);
          v549 = sub_24A62F014();
          v550 = v617;
          sub_24A62EAE4();
          v551 = v613;
          sub_24A62EB54();
          v552 = v634;
          v553 = v627;
          v627(v550, v634);
          v554 = swift_allocObject();
          *(v554 + 16) = v635;
          *(v554 + 24) = 1;
          *(v554 + 32) = 0;
          *(v554 + 40) = 0;
          *(v554 + 48) = v640;
          v646 = sub_24A547A30;
          v647 = v554;
          aBlock = MEMORY[0x277D85DD0];
          v643 = 1107296256;
          v644 = sub_24A5A8458;
          v645 = &unk_285DA4918;
          v555 = _Block_copy(&aBlock);
          v556 = v548;

          v557 = v628;
          sub_24A62EAB4();
          aBlock = MEMORY[0x277D84F90];
          v558 = v623;
          v559 = v624;
          sub_24A62F254();
          MEMORY[0x24C21A910](v551, v557, v558, v555);
          _Block_release(v555);

          v621(v558, v559);
          v622(v557, v631);
          v553(v551, v552);
        }

        goto LABEL_237;
      }

      v297 = v604;
      *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v297 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
      sub_24A62EA04();
      dispatch_group_enter(v120);
      v298 = v638;
      v299 = sub_24A62E644();
      v609 = &v600;
      MEMORY[0x28223BE20](v299);
      v300 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 0;
      v301 = swift_allocObject();
      v301[2] = 0;
      v301[3] = 0;
      v302 = v119;
      v303 = v640;
      v301[4] = v640;
      v304 = v120;
      v305 = v298;
      v306 = v304;
      sub_24A62E3E4();

      v307 = v639;
      v302(v305, v639);
      v308 = v300;
      *(v300 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      v609 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
      *(v300 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC70A3D70A3D70ALL;
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v306);
      v309 = sub_24A62E644();
      MEMORY[0x28223BE20](v309);
      *(&v600 - 2) = v300;
      *(&v600 - 8) = 1;
      v310 = swift_allocObject();
      v310[2] = 0;
      v310[3] = 0;
      v310[4] = v303;
      v311 = v306;
      sub_24A62E3E4();

      v312 = v638;
      v636(v638, v307);
      if (qword_27EF4EB90 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v311);
      v313 = sub_24A62E644();
      MEMORY[0x28223BE20](v313);
      *(&v600 - 2) = v300;
      *(&v600 - 8) = 0;
      v314 = swift_allocObject();
      v314[2] = 0;
      v314[3] = 0;
      v314[4] = v303;
      v315 = v311;
      sub_24A62E3E4();

      v316 = v639;
      v317 = v636;
      v636(v312, v639);
      dispatch_group_enter(v315);
      v318 = sub_24A62E644();
      MEMORY[0x28223BE20](v318);
      *(&v600 - 2) = v308;
      *(&v600 - 8) = 0;
      v319 = swift_allocObject();
      v319[2] = 0;
      v319[3] = 0;
      v319[4] = v303;
      v320 = v315;
      sub_24A62E3E4();

      v317(v312, v316);
      v321 = v303;
      if (qword_27EF4EBE8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v320);
      v322 = sub_24A62E644();
      MEMORY[0x28223BE20](v322);
      v323 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      *(swift_allocObject() + 16) = v321;
      v324 = v320;
      sub_24A62E3E4();

      v636(v312, v639);
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v324);
      v325 = sub_24A62E644();
      MEMORY[0x28223BE20](v325);
      *(&v600 - 2) = v323;
      *(&v600 - 8) = 0;
      v326 = swift_allocObject();
      v326[2] = 0;
      v326[3] = 0;
      v326[4] = v321;
      v327 = v324;
      sub_24A62E3E4();

      v636(v312, v639);
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v327);
      v328 = sub_24A62E644();
      MEMORY[0x28223BE20](v328);
      *(&v600 - 2) = v323;
      *(&v600 - 8) = 1;
      v329 = swift_allocObject();
      v329[2] = 0;
      v329[3] = 0;
      v329[4] = v321;
      v330 = v327;
      sub_24A62E3E4();

      v331 = v638;
      v332 = v639;
      v333 = v323;
      v334 = v636;
      v636(v638, v639);
      dispatch_group_enter(v330);
      v335 = sub_24A62E644();
      MEMORY[0x28223BE20](v335);
      *(&v600 - 2) = v333;
      *(&v600 - 8) = 1;
      v336 = swift_allocObject();
      v336[2] = 0;
      v336[3] = 0;
      v336[4] = v321;
      v337 = v330;
      sub_24A62E3E4();

      v334(v331, v332);
      if (qword_27EF4EC00 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v337);
      v338 = sub_24A62E644();
      MEMORY[0x28223BE20](v338);
      v339 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 0;
      v340 = swift_allocObject();
      v340[2] = 0;
      v340[3] = 0;
      v341 = v640;
      v340[4] = v640;
      v342 = v337;
      sub_24A62E3E4();

      v343 = v639;
      v344 = v636;
      v636(v331, v639);
      dispatch_group_enter(v342);
      v345 = sub_24A62E644();
      v607 = &v600;
      MEMORY[0x28223BE20](v345);
      *(&v600 - 2) = v339;
      *(&v600 - 8) = 0;
      v346 = swift_allocObject();
      v346[2] = 0;
      v346[3] = 0;
      v346[4] = v341;
      v347 = v342;
      sub_24A62E3E4();
      v608 = v98;

      v344(v331, v343);
      v348 = v339;
      if (qword_27EF4EC60 != -1)
      {
        swift_once();
      }

      v349 = sub_24A506EB8(v625, qword_27EF5CA18);
      dispatch_group_enter(v347);
      v350 = v633;
      [v633 begin];
      v351 = v601;
      sub_24A5461E8(v349, v601);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v352 = *(v351 + 8);
      }

      else
      {
        v381 = v611;
        v382 = v610;
        v383 = v351;
        v384 = v612;
        (*(v611 + 32))(v610, v383, v612);
        sub_24A62E934();
        v352 = v385;
        (*(v381 + 8))(v382, v384);
        v350 = v633;
      }

      v386 = v331;
      [v350 setDuration:v352];
      v387 = sub_24A6268BC();
      [v350 setTimingFunction:v387];

      v388 = swift_allocObject();
      v388[2] = 0;
      v388[3] = 0;
      v388[4] = v640;
      v646 = sub_24A547994;
      v647 = v388;
      aBlock = MEMORY[0x277D85DD0];
      v643 = 1107296256;
      v644 = sub_24A5A8458;
      v645 = &unk_285DA4B48;
      v389 = _Block_copy(&aBlock);
      v390 = v347;

      [v350 setCompletionBlock:v389];
      _Block_release(v389);
      v391 = swift_weakLoadStrong();
      if (v391)
      {
        v392 = *(v391 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v645 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v350 commit];
      dispatch_group_enter(v390);
      v393 = sub_24A62E644();
      MEMORY[0x28223BE20](v393);
      *(&v600 - 2) = v348;
      *(&v600 - 8) = 0;
      v394 = swift_allocObject();
      v394[2] = 0;
      v394[3] = 0;
      v394[4] = v640;
      v395 = v390;
      v396 = v608;
      sub_24A62E3E4();

      v636(v386, v639);
      v633 = v395;
      if (v615 <= 3u || v615 > 5u || v615 == 4)
      {
        v410 = sub_24A62F634();

        if ((v410 & 1) == 0)
        {
LABEL_252:
          if (qword_27EF4EB20 != -1)
          {
            swift_once();
          }

          v194 = v639;
          if (qword_27EF4EB28 != -1)
          {
            swift_once();
          }

          v595 = v633;
          dispatch_group_enter(v633);
          v596 = v635;
          sub_24A62EA04();

          v597 = sub_24A62E644();
          MEMORY[0x28223BE20](v597);
          *(&v600 - 2) = v596;
          *(&v600 - 8) = 1;
          v598 = swift_allocObject();
          *(v598 + 16) = v640;
          *(v598 + 24) = 1;
          v201 = v638;
          *(v598 + 40) = 0;
          *(v598 + 48) = 0;
          *(v598 + 32) = v596;
          v599 = v595;

          goto LABEL_257;
        }
      }

      else
      {
      }

      v411 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      v412 = (v411 >> 13) & 3;
      if (v412)
      {
        if (v412 == 1)
        {
          v413 = (v411 >> 8) & 0xFFFFFF9F;
        }

        else if ((v411 & 0x8000) != 0)
        {
          v413 = (v411 >> 8) & 0x1F;
        }

        else
        {
          v413 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
        }
      }

      else
      {
        v413 = v411 >> 8;
      }

      if (v413 == 2)
      {
        if (qword_27EF4EC28 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v395);
        v565 = sub_24A62E644();
        MEMORY[0x28223BE20](v565);
        *(&v600 - 2) = v635;
        *(&v600 - 8) = 1;
        v566 = swift_allocObject();
        v566[2] = 0;
        v566[3] = 0;
        v567 = v640;
        v566[4] = v640;
        v568 = v395;
        sub_24A62E3E4();

        v569 = v639;
        v570 = v636;
        v636(v386, v639);
        if (qword_27EF4EC30 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v568);
        v571 = sub_24A62E644();
        MEMORY[0x28223BE20](v571);
        *(&v600 - 2) = v635;
        *(&v600 - 8) = 1;
        v572 = swift_allocObject();
        v572[2] = 0;
        v572[3] = 0;
        v572[4] = v567;
        v573 = v568;
        sub_24A62E3E4();

        v570(v638, v569);
      }

      else
      {
        if (qword_27EF4EAE8 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v395);
        v574 = sub_24A62E644();
        MEMORY[0x28223BE20](v574);
        v575 = v635;
        *(&v600 - 2) = v635;
        *(&v600 - 8) = 1;
        v576 = swift_allocObject();
        v576[2] = 0;
        v576[3] = 0;
        v577 = v640;
        v576[4] = v640;
        v578 = v395;
        sub_24A62E3E4();

        v579 = v639;
        v580 = v636;
        v636(v638, v639);
        sub_24A62EA04();
        dispatch_group_enter(v578);
        v581 = sub_24A62E644();
        v625 = &v600;
        MEMORY[0x28223BE20](v581);
        *(&v600 - 2) = v575;
        *(&v600 - 8) = 0;
        v582 = swift_allocObject();
        v582[2] = 0;
        v582[3] = 0;
        v582[4] = v577;
        v583 = v577;
        v584 = v578;
        sub_24A62E3E4();
        p_isa = v396;

        v580(v638, v579);
        dispatch_group_enter(v584);
        v585 = sub_24A62F014();
        v586 = v617;
        sub_24A62EAE4();
        v587 = v613;
        sub_24A62EB54();
        v588 = v627;
        v627(v586, v634);
        v589 = swift_allocObject();
        *(v589 + 16) = v635;
        *(v589 + 24) = 1;
        *(v589 + 32) = 0;
        *(v589 + 40) = 0;
        *(v589 + 48) = v583;
        v646 = sub_24A547A30;
        v647 = v589;
        aBlock = MEMORY[0x277D85DD0];
        v643 = 1107296256;
        v644 = sub_24A5A8458;
        v645 = &unk_285DA4C38;
        v590 = _Block_copy(&aBlock);
        v591 = v584;

        v592 = v628;
        sub_24A62EAB4();
        aBlock = MEMORY[0x277D84F90];
        v593 = v623;
        v594 = v624;
        sub_24A62F254();
        MEMORY[0x24C21A910](v587, v592, v593, v590);
        _Block_release(v590);

        v621(v593, v594);
        v622(v592, v631);
        v588(v587, v634);
      }

      goto LABEL_252;
    }

    v203 = v604;
    *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
    *(v203 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
    sub_24A62EA04();
    dispatch_group_enter(v120);
    v204 = v638;
    v205 = sub_24A62E644();
    MEMORY[0x28223BE20](v205);
    v206 = v635;
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v207 = swift_allocObject();
    v207[2] = 0;
    v207[3] = 0;
    v207[4] = v640;
    v208 = v120;
    v209 = v204;
    v210 = v208;
    sub_24A62E3E4();

    v211 = v639;
    v119(v209, v639);
    *(v206 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
    v608 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
    *(v206 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FD1EB851EB851ECLL;
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v210);
    v212 = sub_24A62E644();
    MEMORY[0x28223BE20](v212);
    *(&v600 - 2) = v206;
    *(&v600 - 8) = 1;
    v213 = swift_allocObject();
    v213[2] = 0;
    v213[3] = 0;
    v213[4] = v640;
    v214 = v210;
    sub_24A62E3E4();

    v215 = v638;
    v119(v638, v211);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v214);
    v216 = sub_24A62E644();
    MEMORY[0x28223BE20](v216);
    *(&v600 - 2) = v206;
    *(&v600 - 8) = 0;
    v217 = swift_allocObject();
    v217[2] = 0;
    v217[3] = 0;
    v218 = v640;
    v217[4] = v640;
    v219 = v214;
    sub_24A62E3E4();

    v220 = v639;
    v221 = v636;
    v636(v215, v639);
    dispatch_group_enter(v219);
    v222 = sub_24A62E644();
    v609 = &v600;
    MEMORY[0x28223BE20](v222);
    *(&v600 - 2) = v206;
    *(&v600 - 8) = 0;
    v223 = swift_allocObject();
    v223[2] = 0;
    v223[3] = 0;
    v223[4] = v218;
    v224 = v219;
    sub_24A62E3E4();

    v221(v215, v220);
    dispatch_group_enter(v224);
    v225 = sub_24A62E644();
    v609 = &v600;
    MEMORY[0x28223BE20](v225);
    *(&v600 - 2) = v206;
    *(&v600 - 8) = 1;
    v226 = swift_allocObject();
    v226[2] = 0;
    v226[3] = 0;
    v226[4] = v640;
    v227 = v224;
    sub_24A62E3E4();

    v221(v215, v220);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v227);
    v228 = sub_24A62E644();
    MEMORY[0x28223BE20](v228);
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 1;
    *(swift_allocObject() + 16) = v640;
    v229 = v227;
    sub_24A62E3E4();

    v221(v215, v220);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v229);
    v230 = sub_24A62E644();
    MEMORY[0x28223BE20](v230);
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v231 = swift_allocObject();
    v231[2] = 0;
    v231[3] = 0;
    v231[4] = v640;
    v232 = v229;
    sub_24A62E3E4();

    v221(v215, v639);
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v232);
    v233 = sub_24A62E644();
    MEMORY[0x28223BE20](v233);
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 1;
    v234 = swift_allocObject();
    v234[2] = 0;
    v234[3] = 0;
    v234[4] = v640;
    v235 = v232;
    sub_24A62E3E4();

    v221(v215, v639);
    if (qword_27EF4EC00 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v235);
    v236 = sub_24A62E644();
    MEMORY[0x28223BE20](v236);
    v237 = v635;
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v238 = swift_allocObject();
    v238[2] = 0;
    v238[3] = 0;
    v239 = v640;
    v238[4] = v640;
    v240 = v235;
    sub_24A62E3E4();

    v241 = v639;
    v242 = v636;
    v636(v215, v639);
    dispatch_group_enter(v240);
    v243 = sub_24A62E644();
    v609 = &v600;
    MEMORY[0x28223BE20](v243);
    *(&v600 - 2) = v237;
    *(&v600 - 8) = 0;
    v244 = swift_allocObject();
    v244[2] = 0;
    v244[3] = 0;
    v244[4] = v239;
    v245 = v240;
    sub_24A62E3E4();

    v242(v215, v241);
    dispatch_group_enter(v245);
    v246 = sub_24A62E644();
    MEMORY[0x28223BE20](v246);
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v247 = swift_allocObject();
    v247[2] = 0;
    v247[3] = 0;
    v247[4] = v640;
    v248 = v245;
    sub_24A62E3E4();
    v609 = v98;

    v242(v215, v639);
    if (qword_27EF4EC70 != -1)
    {
      swift_once();
    }

    v249 = sub_24A506EB8(v625, qword_27EF5CA48);
    dispatch_group_enter(v248);
    v250 = v633;
    [v633 begin];
    v251 = v602;
    sub_24A5461E8(v249, v602);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v252 = *(v251 + 8);
    }

    else
    {
      v357 = v611;
      v358 = v610;
      v359 = v251;
      v360 = v612;
      (*(v611 + 32))(v610, v359, v612);
      sub_24A62E934();
      v252 = v361;
      v362 = v357;
      v250 = v633;
      (*(v362 + 8))(v358, v360);
    }

    [v250 setDuration:v252];
    v363 = sub_24A6268BC();
    [v250 setTimingFunction:v363];

    v364 = swift_allocObject();
    v364[2] = 0;
    v364[3] = 0;
    v364[4] = v640;
    v646 = sub_24A547994;
    v647 = v364;
    aBlock = MEMORY[0x277D85DD0];
    v643 = 1107296256;
    v644 = sub_24A5A8458;
    v645 = &unk_285DA4E90;
    v365 = _Block_copy(&aBlock);
    v366 = v248;

    [v250 setCompletionBlock:v365];
    _Block_release(v365);
    v367 = swift_weakLoadStrong();
    if (v367)
    {
      v368 = *(v367 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v645 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v250 commit];
    dispatch_group_enter(v366);
    [v250 begin];
    v369 = v603;
    sub_24A5461E8(v249, v603);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v370 = *(v369 + 8);
    }

    else
    {
      v371 = v611;
      v372 = v610;
      v373 = v369;
      v374 = v612;
      (*(v611 + 32))(v610, v373, v612);
      sub_24A62E934();
      v370 = v375;
      (*(v371 + 8))(v372, v374);
      v250 = v633;
    }

    [v250 setDuration:v370];
    v376 = sub_24A6268BC();
    [v250 setTimingFunction:v376];

    v377 = swift_allocObject();
    v377[2] = 0;
    v377[3] = 0;
    v377[4] = v640;
    v646 = sub_24A547994;
    v647 = v377;
    aBlock = MEMORY[0x277D85DD0];
    v643 = 1107296256;
    v644 = sub_24A5A8458;
    v645 = &unk_285DA4EE0;
    v378 = _Block_copy(&aBlock);
    v633 = v366;

    [v250 setCompletionBlock:v378];
    _Block_release(v378);
    v379 = swift_weakLoadStrong();
    if (v379)
    {
      v380 = *(v379 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v645 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v250 commit];
    if (v615 <= 3u || v615 > 5u || v615 == 4)
    {
      v402 = sub_24A62F634();

      v397 = v609;
      if ((v402 & 1) == 0)
      {
LABEL_222:
        if (qword_27EF4EB20 != -1)
        {
          swift_once();
        }

        v194 = v639;
        if (qword_27EF4EB28 != -1)
        {
          swift_once();
        }

        v522 = v633;
        dispatch_group_enter(v633);
        v523 = v635;
        sub_24A62EA04();

        v524 = sub_24A62E644();
        MEMORY[0x28223BE20](v524);
        *(&v600 - 2) = v523;
        *(&v600 - 8) = 1;
        v525 = swift_allocObject();
        *(v525 + 16) = v640;
        *(v525 + 24) = 1;
        v201 = v638;
        *(v525 + 40) = 0;
        *(v525 + 48) = 0;
        *(v525 + 32) = v523;
        v526 = v522;

        goto LABEL_257;
      }
    }

    else
    {

      v397 = v609;
    }

    v403 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v404 = (v403 >> 13) & 3;
    if (v404)
    {
      if (v404 == 1)
      {
        v405 = (v403 >> 8) & 0xFFFFFF9F;
      }

      else if ((v403 & 0x8000) != 0)
      {
        v405 = (v403 >> 8) & 0x1F;
      }

      else
      {
        v405 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v405 = v403 >> 8;
    }

    if (v405 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      v492 = v633;
      dispatch_group_enter(v633);
      v493 = sub_24A62E644();
      MEMORY[0x28223BE20](v493);
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v494 = swift_allocObject();
      v494[2] = 0;
      v494[3] = 0;
      v495 = v640;
      v494[4] = v640;
      v496 = v492;
      sub_24A62E3E4();
      v634 = &v397->isa;

      v497 = v639;
      v498 = v636;
      v636(v215, v639);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v496);
      v499 = sub_24A62E644();
      MEMORY[0x28223BE20](v499);
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v500 = swift_allocObject();
      v500[2] = 0;
      v500[3] = 0;
      v500[4] = v495;
      v501 = v496;
      sub_24A62E3E4();

      v498(v638, v497);
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      v502 = v633;
      dispatch_group_enter(v633);
      v503 = sub_24A62E644();
      MEMORY[0x28223BE20](v503);
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v504 = swift_allocObject();
      v504[2] = 0;
      v504[3] = 0;
      v505 = v640;
      v504[4] = v640;
      v506 = v502;
      sub_24A62E3E4();

      v507 = v639;
      v508 = v636;
      v636(v638, v639);
      sub_24A62EA04();
      dispatch_group_enter(v506);
      v509 = sub_24A62E644();
      p_isa = &v600;
      MEMORY[0x28223BE20](v509);
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 0;
      v510 = swift_allocObject();
      v510[2] = 0;
      v510[3] = 0;
      v510[4] = v505;
      v511 = v506;
      sub_24A62E3E4();
      v609 = v397;

      v508(v638, v507);
      dispatch_group_enter(v511);
      v512 = sub_24A62F014();
      v513 = v617;
      sub_24A62EAE4();
      v514 = v613;
      sub_24A62EB54();
      v515 = v627;
      v627(v513, v634);
      v516 = swift_allocObject();
      *(v516 + 16) = v635;
      *(v516 + 24) = 1;
      *(v516 + 32) = 0;
      *(v516 + 40) = 0;
      *(v516 + 48) = v640;
      v646 = sub_24A547A30;
      v647 = v516;
      aBlock = MEMORY[0x277D85DD0];
      v643 = 1107296256;
      v644 = sub_24A5A8458;
      v645 = &unk_285DA4FA8;
      v517 = _Block_copy(&aBlock);
      v518 = v511;

      v519 = v628;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v520 = v623;
      v521 = v624;
      sub_24A62F254();
      MEMORY[0x24C21A910](v514, v519, v520, v517);
      _Block_release(v517);

      v621(v520, v521);
      v622(v519, v631);
      v515(v514, v634);
    }

    goto LABEL_222;
  }

  if (v609 == 3)
  {
    *(v111 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF0A3D70A3D70A4;
    if (qword_27EF4EBE0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v120);
    v253 = v638;
    v254 = sub_24A62E644();
    MEMORY[0x28223BE20](v254);
    *(&v600 - 2) = v111;
    *(&v600 - 8) = 0;
    v255 = swift_allocObject();
    v255[2] = 0;
    v255[3] = 0;
    v255[4] = v640;
    v256 = v120;
    v257 = v253;
    v258 = v256;
    sub_24A62E3E4();

    v259 = v639;
    v260 = v636;
    v636(v257, v639);
    if (qword_27EF4EB78 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v258);
    v261 = sub_24A62E644();
    MEMORY[0x28223BE20](v261);
    *(&v600 - 2) = v111;
    *(&v600 - 8) = 1;
    v262 = swift_allocObject();
    v262[2] = 0;
    v262[3] = 0;
    v262[4] = v640;
    v263 = v258;
    sub_24A62E3E4();

    v260(v257, v259);
    if (qword_27EF4EB90 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v263);
    v264 = sub_24A62E644();
    MEMORY[0x28223BE20](v264);
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v265 = swift_allocObject();
    v265[2] = 0;
    v265[3] = 0;
    v265[4] = v640;
    v266 = v263;
    sub_24A62E3E4();

    v260(v257, v259);
    if (qword_27EF4EAF8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v266);
    v267 = sub_24A62E644();
    MEMORY[0x28223BE20](v267);
    v268 = v635;
    *(&v600 - 2) = v635;
    *(&v600 - 8) = 0;
    v269 = swift_allocObject();
    v269[2] = 0;
    v269[3] = 0;
    v269[4] = v640;
    v270 = v266;
    sub_24A62E3E4();

    v260(v257, v639);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v270);
    v271 = sub_24A62E644();
    MEMORY[0x28223BE20](v271);
    *(&v600 - 2) = v268;
    *(&v600 - 8) = 1;
    *(swift_allocObject() + 16) = v640;
    v272 = v270;
    sub_24A62E3E4();

    v260(v257, v639);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v272);
    v273 = sub_24A62E644();
    MEMORY[0x28223BE20](v273);
    *(&v600 - 2) = v268;
    *(&v600 - 8) = 0;
    v274 = swift_allocObject();
    v274[2] = 0;
    v274[3] = 0;
    v274[4] = v640;
    v275 = v272;
    sub_24A62E3E4();

    v260(v257, v639);
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v275);
    v276 = sub_24A62E644();
    MEMORY[0x28223BE20](v276);
    *(&v600 - 2) = v268;
    *(&v600 - 8) = 1;
    v277 = swift_allocObject();
    v277[2] = 0;
    v277[3] = 0;
    v278 = v640;
    v277[4] = v640;
    v279 = v275;
    sub_24A62E3E4();

    v281 = v638;
    v280 = v639;
    v282 = v636;
    v636(v638, v639);
    dispatch_group_enter(v279);
    v283 = sub_24A62E644();
    v633 = &v600;
    MEMORY[0x28223BE20](v283);
    *(&v600 - 2) = v268;
    *(&v600 - 8) = 0;
    v284 = swift_allocObject();
    v284[2] = 0;
    v284[3] = 0;
    v284[4] = v278;
    v285 = v279;
    sub_24A62E3E4();

    v282(v281, v280);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v285);
    v286 = sub_24A62E644();
    MEMORY[0x28223BE20](v286);
    *(&v600 - 2) = v268;
    *(&v600 - 8) = 1;
    v287 = swift_allocObject();
    v287[2] = 0;
    v287[3] = 0;
    v288 = v268;
    v289 = v640;
    v287[4] = v640;
    v290 = v285;
    sub_24A62E3E4();

    v292 = v638;
    v291 = v639;
    v293 = v636;
    v636(v638, v639);
    dispatch_group_enter(v290);
    v294 = sub_24A62E644();
    v633 = &v600;
    MEMORY[0x28223BE20](v294);
    *(&v600 - 2) = v288;
    *(&v600 - 8) = 0;
    v295 = swift_allocObject();
    v295[2] = 0;
    v295[3] = 0;
    v295[4] = v289;
    v296 = v290;
    sub_24A62E3E4();

    v293(v292, v291);
    if (v615 <= 3u || v615 > 5u || v615 == 4)
    {
      v398 = sub_24A62F634();

      if ((v398 & 1) == 0)
      {
LABEL_207:
        if (qword_27EF4EB20 != -1)
        {
          swift_once();
        }

        v194 = v639;
        if (qword_27EF4EB28 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v296);
        v487 = v296;
        v488 = v635;
        sub_24A62EA04();

        v489 = sub_24A62E644();
        MEMORY[0x28223BE20](v489);
        *(&v600 - 2) = v488;
        *(&v600 - 8) = 1;
        v490 = swift_allocObject();
        *(v490 + 16) = v640;
        *(v490 + 24) = 1;
        v201 = v638;
        *(v490 + 40) = 0;
        *(v490 + 48) = 0;
        *(v490 + 32) = v488;
        v491 = v487;

        goto LABEL_257;
      }
    }

    else
    {
    }

    v399 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v400 = (v399 >> 13) & 3;
    if (v400)
    {
      if (v400 == 1)
      {
        v401 = (v399 >> 8) & 0xFFFFFF9F;
      }

      else if ((v399 & 0x8000) != 0)
      {
        v401 = (v399 >> 8) & 0x1F;
      }

      else
      {
        v401 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v401 = v399 >> 8;
    }

    v625 = v296;
    if (v401 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v296);
      v452 = sub_24A62E644();
      MEMORY[0x28223BE20](v452);
      v453 = v292;
      v454 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v455 = swift_allocObject();
      v455[2] = 0;
      v455[3] = 0;
      v456 = v640;
      v455[4] = v640;
      v457 = v296;
      sub_24A62E3E4();

      v458 = v453;
      v459 = v639;
      v460 = v636;
      v636(v458, v639);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v457);
      v461 = sub_24A62E644();
      v634 = &v600;
      MEMORY[0x28223BE20](v461);
      *(&v600 - 2) = v454;
      *(&v600 - 8) = 1;
      v462 = swift_allocObject();
      v462[2] = 0;
      v462[3] = 0;
      v462[4] = v456;
      v463 = v457;
      sub_24A62E3E4();

      v460(v638, v459);
      v296 = v625;
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v296);
      v464 = sub_24A62E644();
      MEMORY[0x28223BE20](v464);
      v465 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v466 = swift_allocObject();
      v466[2] = 0;
      v466[3] = 0;
      v467 = v640;
      v466[4] = v640;
      v468 = v296;
      sub_24A62E3E4();

      v469 = v639;
      v470 = v636;
      v636(v638, v639);
      sub_24A62EA04();
      dispatch_group_enter(v468);
      v471 = sub_24A62E644();
      p_isa = &v600;
      MEMORY[0x28223BE20](v471);
      *(&v600 - 2) = v465;
      *(&v600 - 8) = 0;
      v472 = swift_allocObject();
      v472[2] = 0;
      v472[3] = 0;
      v472[4] = v467;
      v473 = v467;
      v474 = v468;
      sub_24A62E3E4();
      v633 = v98;

      v470(v638, v469);
      dispatch_group_enter(v474);
      v475 = sub_24A62F014();
      v476 = v617;
      sub_24A62EAE4();
      v477 = v613;
      sub_24A62EB54();
      v478 = v634;
      v479 = v627;
      v627(v476, v634);
      v480 = swift_allocObject();
      *(v480 + 16) = v635;
      *(v480 + 24) = 1;
      *(v480 + 32) = 0;
      *(v480 + 40) = 0;
      *(v480 + 48) = v473;
      v646 = sub_24A547A30;
      v647 = v480;
      aBlock = MEMORY[0x277D85DD0];
      v643 = 1107296256;
      v644 = sub_24A5A8458;
      v645 = &unk_285DA4648;
      v481 = _Block_copy(&aBlock);
      v482 = v474;

      v483 = v628;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v484 = v623;
      v485 = v624;
      sub_24A62F254();
      MEMORY[0x24C21A910](v477, v483, v484, v481);
      _Block_release(v481);

      v621(v484, v485);
      v622(v483, v631);
      v486 = v477;
      v296 = v625;
      v479(v486, v478);
    }

    goto LABEL_207;
  }

  if (v609 == 4)
  {
    v353 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
    *(v111 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
    *(v111 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF1EB851EB851ECLL;
    v354 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
    v355 = (v354 >> 13) & 3;
    if (v355)
    {
      if (v355 == 1)
      {
        v356 = (v354 >> 8) & 0xFFFFFF9F;
      }

      else if ((v354 & 0x8000) != 0)
      {
        v356 = (v354 >> 8) & 0x1F;
      }

      else
      {
        v356 = *(v604 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);
      }
    }

    else
    {
      v356 = v354 >> 8;
    }

    v633 = v353;
    if (v356 == 2)
    {
      if (qword_27EF4EC28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v120);
      v414 = v638;
      v415 = sub_24A62E644();
      MEMORY[0x28223BE20](v415);
      v416 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v417 = swift_allocObject();
      v417[2] = 0;
      v417[3] = 0;
      v418 = v640;
      v417[4] = v640;
      v419 = v120;
      sub_24A62E3E4();

      v636(v414, v639);
      if (qword_27EF4EC30 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v419);
      v420 = sub_24A62E644();
      MEMORY[0x28223BE20](v420);
      *(&v600 - 2) = v416;
      *(&v600 - 8) = 1;
      v421 = swift_allocObject();
      v421[2] = 0;
      v421[3] = 0;
      v421[4] = v418;
      v422 = v419;
      sub_24A62E3E4();
      v423 = v639;
      v424 = v636;
    }

    else
    {
      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v120);
      v414 = v638;
      v425 = sub_24A62E644();
      MEMORY[0x28223BE20](v425);
      v426 = v635;
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 1;
      v427 = swift_allocObject();
      v427[2] = 0;
      v427[3] = 0;
      v427[4] = v640;
      v428 = v120;
      sub_24A62E3E4();

      v429 = v636;
      v636(v414, v639);
      sub_24A62EA04();
      dispatch_group_enter(v428);
      v430 = sub_24A62E644();
      v615 = &v600;
      MEMORY[0x28223BE20](v430);
      *(&v600 - 2) = v426;
      *(&v600 - 8) = 0;
      v431 = swift_allocObject();
      v431[2] = 0;
      v431[3] = 0;
      v432 = v640;
      v431[4] = v640;
      v433 = v428;
      sub_24A62E3E4();
      v625 = v98;

      v429(v414, v639);
      dispatch_group_enter(v433);
      v616 = sub_24A62F014();
      v434 = v617;
      sub_24A62EAE4();
      v435 = v613;
      sub_24A62EB54();
      v627(v434, v634);
      v436 = swift_allocObject();
      *(v436 + 16) = v635;
      *(v436 + 24) = 1;
      *(v436 + 32) = 0;
      *(v436 + 40) = 0;
      *(v436 + 48) = v432;
      v646 = sub_24A547A30;
      v647 = v436;
      aBlock = MEMORY[0x277D85DD0];
      v643 = 1107296256;
      v644 = sub_24A5A8458;
      v645 = &unk_285DA4350;
      v437 = _Block_copy(&aBlock);
      v438 = v433;

      v439 = v628;
      sub_24A62EAB4();
      aBlock = MEMORY[0x277D84F90];
      v440 = v623;
      v441 = v624;
      sub_24A62F254();
      v442 = v616;
      MEMORY[0x24C21A910](v435, v439, v440, v437);
      _Block_release(v437);

      v443 = v441;
      v424 = v636;
      v621(v440, v443);
      v622(v439, v631);
      v627(v435, v634);
      sub_24A62EA04();
      dispatch_group_enter(v438);
      v444 = sub_24A62E644();
      MEMORY[0x28223BE20](v444);
      *(&v600 - 2) = v635;
      *(&v600 - 8) = 0;
      v445 = swift_allocObject();
      v445[2] = 0;
      v445[3] = 0;
      v445[4] = v640;
      v446 = v438;
      v423 = v639;
      sub_24A62E3E4();
    }

    v424(v414, v423);
    if (qword_27EF4EB30 != -1)
    {
      swift_once();
    }

    v447 = v635;
    if (qword_27EF4EB38 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v120);
    sub_24A62EA04();

    v448 = v638;
    v449 = sub_24A62E644();
    MEMORY[0x28223BE20](v449);
    *(&v600 - 2) = v447;
    *(&v600 - 8) = 1;
    v450 = swift_allocObject();
    *(v450 + 16) = v640;
    *(v450 + 24) = 1;
    *(v450 + 40) = 0;
    *(v450 + 48) = 0;
    *(v450 + 32) = v447;
    v451 = v120;
    v201 = v448;

    sub_24A62E3E4();
    v194 = v423;
    goto LABEL_258;
  }

  if (v609 != 5)
  {
    return result;
  }

  v633 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay;
  *(v111 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
  *(v111 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
  dispatch_group_enter(v120);
  v170 = v638;
  v171 = sub_24A62E644();
  v172 = v111;
  MEMORY[0x28223BE20](v171);
  *(&v600 - 2) = v111;
  *(&v600 - 8) = 0;
  v173 = swift_allocObject();
  v173[2] = 0;
  v173[3] = 0;
  v174 = v640;
  v173[4] = v640;
  v175 = v174;
  v176 = v120;
  sub_24A62E3E4();

  v636(v170, v639);
  dispatch_group_enter(v176);
  v177 = sub_24A62E644();
  MEMORY[0x28223BE20](v177);
  *(&v600 - 2) = v111;
  *(&v600 - 8) = 0;
  v178 = swift_allocObject();
  v178[2] = 0;
  v178[3] = 0;
  v178[4] = v175;
  v179 = v176;
  sub_24A62E3E4();

  v180 = v639;
  v636(v170, v639);
  dispatch_group_enter(v179);
  v181 = sub_24A62E644();
  MEMORY[0x28223BE20](v181);
  *(&v600 - 2) = v111;
  *(&v600 - 8) = 0;
  v182 = swift_allocObject();
  v182[2] = 0;
  v182[3] = 0;
  v182[4] = v175;
  v183 = v179;
  sub_24A62E3E4();
  v625 = v98;

  v636(v170, v180);
  dispatch_group_enter(v183);
  v616 = sub_24A62F014();
  v184 = v617;
  sub_24A62EAE4();
  v185 = v613;
  sub_24A62EB54();
  v186 = v627;
  v627(v184, v634);
  v187 = swift_allocObject();
  *(v187 + 16) = v172;
  *(v187 + 24) = 0;
  *(v187 + 32) = 0;
  *(v187 + 40) = 0;
  *(v187 + 48) = v175;
  v646 = sub_24A547A30;
  v647 = v187;
  aBlock = MEMORY[0x277D85DD0];
  v643 = 1107296256;
  v644 = sub_24A5A8458;
  v645 = &unk_285DA4260;
  v188 = _Block_copy(&aBlock);
  v189 = v183;

  v190 = v628;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v191 = v623;
  v192 = v624;
  sub_24A62F254();
  v193 = v616;
  MEMORY[0x24C21A910](v185, v190, v191, v188);
  _Block_release(v188);

  v621(v191, v192);
  v622(v190, v631);
  v186(v185, v634);
  v194 = v639;
  dispatch_group_enter(v189);
  v195 = sub_24A62E644();
  MEMORY[0x28223BE20](v195);
  *(&v600 - 2) = v635;
  *(&v600 - 8) = 1;
  v196 = swift_allocObject();
  v196[2] = 0;
  v196[3] = 0;
  v196[4] = v640;
  v197 = v189;
  sub_24A62E3E4();

  v636(v170, v194);
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v197);
  v198 = v635;
  sub_24A62EA04();

  v199 = sub_24A62E644();
  MEMORY[0x28223BE20](v199);
  *(&v600 - 2) = v198;
  *(&v600 - 8) = 1;
  v200 = swift_allocObject();
  *(v200 + 16) = v640;
  *(v200 + 24) = 1;
  v201 = v638;
  *(v200 + 40) = 0;
  *(v200 + 48) = 0;
  *(v200 + 32) = v198;
  v202 = v197;

LABEL_257:
  sub_24A62E3E4();
LABEL_258:

  return (v636)(v201, v194);
}

double sub_24A54592C@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_24A5459BC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A545C50(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a4 = v5;
}

uint64_t sub_24A545CE0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

unint64_t sub_24A545E8C()
{
  result = qword_27EF4F9C0;
  if (!qword_27EF4F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F9C0);
  }

  return result;
}

uint64_t sub_24A545ED8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A545F18()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24A545F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A545F60()
{
  result = qword_27EF4F970;
  if (!qword_27EF4F970)
  {
    sub_24A62EA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F970);
  }

  return result;
}

uint64_t sub_24A5461E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFVFXAnimation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A54624C(uint64_t a1)
{
  v2 = type metadata accessor for PFVFXAnimation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A546A48()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_24A546A78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A546BFC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A546C54()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A546CA4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A546D34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A546D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

uint64_t sub_24A546DD8(uint64_t a1)
{
  v53 = a1;
  v2 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v46 - v3;
  v4 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v48 = v4;
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__performPump;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12 = *(v8 + 32);
  v12(v1 + v11, v10, v7);
  v13 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showAirTagVideo;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v13, v10, v7);
  v14 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPlayingAirTagVideo;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v14, v10, v7);
  v15 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__checkMarkWriteOn;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v15, v10, v7);
  v16 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCheckMarkVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isRingADot;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v17, v10, v7);
  v18 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isVFXVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v18, v10, v7);
  v19 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isConeVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v19, v10, v7);
  v20 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArrowVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v20, v10, v7);
  v21 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcFull;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v21, v10, v7);
  v22 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isFillPuckVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v22, v10, v7);
  v23 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCircleArcVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v23, v10, v7);
  v24 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showGreenBackground;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v24, v10, v7);
  v25 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v25, v10, v7);
  v26 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPulseActive;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v26, v10, v7);
  v27 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pulseNearProgress;
  v55 = 0x3FF0000000000000;
  v47 = v6;
  sub_24A62E344();
  v28 = *(v54 + 32);
  v54 += 32;
  v49 = v28;
  v28(v1 + v27, v6, v4);
  v29 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingOpacity;
  v55 = 0x3FB999999999999ALL;
  v30 = v50;
  sub_24A62E344();
  v31 = v52;
  v32 = *(v51 + 32);
  v32(v1 + v29, v30, v52);
  v33 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingScale;
  v55 = 0x3FF0000000000000;
  sub_24A62E344();
  v32(v1 + v33, v30, v31);
  v34 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckParticleDistance;
  v55 = 0xBFC70A3D70A3D70ALL;
  v35 = v47;
  sub_24A62E344();
  v49(v1 + v34, v35, v48);
  v36 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckLineWidthScale;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v36, v10, v7);
  v37 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticleScale;
  LOBYTE(v55) = 1;
  sub_24A62E344();
  v12(v1 + v37, v10, v7);
  v38 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticlePosition;
  LOBYTE(v55) = 1;
  sub_24A62E344();
  v12(v1 + v38, v10, v7);
  v39 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__requiresArrow;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v39, v10, v7);
  v40 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pushBackArrow;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v40, v10, v7);
  v41 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isGrayRingForwardDotVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v41, v10, v7);
  v42 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcBetweenVisible;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v42, v10, v7);
  v43 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckInCorrectDirection;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v43, v10, v7);
  v44 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcDiameter;
  LOBYTE(v55) = 0;
  sub_24A62E344();
  v12(v1 + v44, v10, v7);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC999999999999ALL;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
  swift_weakInit();
  swift_weakAssign();
  return v1;
}

uint64_t sub_24A548028()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingViewCtrl: Resetiing", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  sub_24A5F571C();
  sub_24A5F53E8();

  return sub_24A610228();
}

id sub_24A548158(void *a1)
{
  v2 = v1;
  v4 = sub_24A62F124();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = sub_24A62F134();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v42 - v16;
  v18 = [a1 camera];
  sub_24A62F144();

  sub_24A5494E4(v17, v13, MEMORY[0x277D82DB0]);
  v19 = (*(v5 + 48))(v13, 2, v4);
  if (v19)
  {
    if (v19 != 1)
    {
      if (*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame))
      {
        goto LABEL_8;
      }

      *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame) = 1;
      if (qword_27EF4E9A0 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v20 = sub_24A62E314();
        sub_24A506EB8(v20, qword_27EF5C118);
        v21 = sub_24A62E2F4();
        v22 = sub_24A62EF64();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMFindingViewCtrl: Got initial AR Frame", v23, 2u);
          MEMORY[0x24C21BBE0](v23, -1, -1);
        }

LABEL_8:
        v24 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (!v25)
        {
          break;
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

      *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount) = v26;
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v26 + 0x888888888888888, 1) <= 0x888888888888888uLL)
      {
        sub_24A58FF64();
      }
    }

    return sub_24A54954C(v17, MEMORY[0x277D82DB0]);
  }

  (*(v5 + 32))(v10, v13, v4);
  swift_beginAccess();
  if (sub_24A62715C() != 4)
  {
    v27 = sub_24A62715C();
    if (v27 <= 1)
    {
      if (!v27)
      {

        goto LABEL_19;
      }
    }

    else if (v27 != 2 && v27 != 3)
    {
      goto LABEL_28;
    }

    v28 = sub_24A62F634();

    if ((v28 & 1) == 0)
    {
LABEL_28:
      (*(v5 + 8))(v10, v4);
      return sub_24A54954C(v17, MEMORY[0x277D82DB0]);
    }
  }

LABEL_19:
  (*(v5 + 16))(v7, v10, v4);
  v29 = (*(v5 + 88))(v7, v4);
  if (v29 == *MEMORY[0x277D82D90] || v29 == *MEMORY[0x277D82DA0])
  {
    goto LABEL_28;
  }

  if (v29 == *MEMORY[0x277D82DA8])
  {
    v30 = [a1 lightEstimate];
    if (v30)
    {
      v31 = v30;
      result = [v30 ambientIntensity];
      if (v33 <= 500.0)
      {
        v34 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount);
        v25 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v25)
        {
          __break(1u);
          return result;
        }

        *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount) = v35;
        if (v35 >= 2)
        {
          sub_24A590DEC(1, 1);
          v36 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v37 = v36[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState];
          v36[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 6;
          v38 = v36;
          sub_24A5FFD04(v37);
        }
      }
    }

    goto LABEL_28;
  }

  v39 = *MEMORY[0x277D82D98];
  v40 = *(v5 + 8);
  v41 = v29;
  v40(v10, v4);
  result = sub_24A54954C(v17, MEMORY[0x277D82DB0]);
  if (v41 != v39)
  {
    return (v40)(v7, v4);
  }

  return result;
}

void sub_24A548700(uint64_t a1)
{
  v31 = sub_24A62E074();
  v2 = [v31 domain];
  v3 = sub_24A62EC14();
  v5 = v4;

  if (v3 == sub_24A62EC14() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24A62F634();

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v31 code])
  {
LABEL_9:
    if (v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild] == 1)
    {
      sub_24A5D2200(0xD00000000000001ALL, 0x800000024A63E940);
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_24A633830;
      swift_getErrorValue();
      v10 = sub_24A62F6A4();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_24A508FEC();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      v13 = sub_24A62EC24();
      v15 = v14;

      v16 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v16 >= 3)
      {
      }

      else
      {
        *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v16 + 1;
        sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
        v17 = sub_24A62EBE4();

        v18 = sub_24A62EBE4();
        v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001FLL, 0x800000024A63E960);
        v20 = swift_allocObject();
        v20[2] = v1;
        v20[3] = v13;
        v20[5] = 0;
        v20[6] = 0;
        v20[4] = v15;
        v21 = v1;
        v22 = sub_24A62EBE4();

        v36 = sub_24A549480;
        v37 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A5BE9EC;
        v35 = &unk_285DA5150;
        v23 = _Block_copy(&aBlock);

        v24 = objc_opt_self();
        v25 = [v24 actionWithTitle:v22 style:2 handler:v23];
        _Block_release(v23);

        [v19 addAction_];
        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v26 = swift_allocObject();
        v26[3] = 0;
        v26[4] = 0;
        v26[2] = v21;
        v27 = v21;
        v28 = sub_24A62EBE4();

        v36 = sub_24A5494D8;
        v37 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A5BE9EC;
        v35 = &unk_285DA51A0;
        v29 = _Block_copy(&aBlock);

        v30 = [v24 actionWithTitle:v28 style:0 handler:v29];
        _Block_release(v29);

        [v19 addAction_];
        v27[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v27 presentViewController:v19 animated:1 completion:0];
      }
    }

    sub_24A548028();

    return;
  }

  sub_24A548028();
}

void sub_24A548C24(double a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = objc_opt_self();
  v1;
  if ([v12 isMainThread])
  {
    sub_24A5FB45C(a1);
  }

  else
  {
    sub_24A545E8C();
    v13 = sub_24A62F014();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_24A549380;
    *(v14 + 24) = v11;
    aBlock[4] = sub_24A5493F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA5100;
    v15 = _Block_copy(aBlock);
    v18 = v7;
    v16 = v15;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v10, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v18);
  }
}

uint64_t sub_24A548F6C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_24A596B24(v3);
  v49 = v3;
  if (v10 == 0xD00000000000001DLL && 0x800000024A63CD70 == v11)
  {

LABEL_5:
    v13 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    sub_24A50A204(v13, v13[3]);
    v51 = 0u;
    v52 = 0u;
    sub_24A5803DC(&v51);
    goto LABEL_6;
  }

  v12 = sub_24A62F634();

  if (v12)
  {
    goto LABEL_5;
  }

  if (sub_24A596B24(v3) == 0xD00000000000001CLL && 0x800000024A63CD90 == v40)
  {
  }

  else
  {
    v41 = sub_24A62F634();

    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v42 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  swift_beginAccess();
  sub_24A50A204(v42, v42[3]);
  v51 = 0u;
  v52 = 0u;
  sub_24A580990(&v51);
LABEL_6:
  sub_24A50EC28(&v51);
LABEL_7:
  v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5494E4(v2 + v14, v6, type metadata accessor for FMFindingViewState);
  v48 = *v6;
  v15 = v4[5];
  v16 = sub_24A62E214();
  (*(*(v16 - 8) + 16))(&v9[v15], &v6[v15], v16);
  v17 = v4[7];
  v18 = &v6[v4[6]];
  v19 = *(v18 + 1);
  v43 = *v18;
  v20 = v6[v17];
  v21 = &v6[v4[8]];
  *(v56 + 13) = *(v21 + 93);
  v22 = *(v21 + 5);
  v55 = *(v21 + 4);
  v56[0] = v22;
  v23 = *(v21 + 3);
  v53 = *(v21 + 2);
  v54 = v23;
  v24 = v4[11];
  LODWORD(v17) = v6[v4[10]];
  v44 = v20;
  v45 = v17;
  v46 = v6[v24];
  v26 = *v21;
  v25 = *(v21 + 1);
  v27 = v4[12];
  v28 = v4[13];
  v47 = v2;
  v29 = v6[v27];
  v51 = v26;
  v52 = v25;
  v30 = v6[v28];
  v31 = v6[v4[14]];

  sub_24A508CE4(&v51, &v50);
  sub_24A54954C(v6, type metadata accessor for FMFindingViewState);
  v32 = &v9[v4[15]];
  *v32 = 0;
  *(v32 + 1) = 0;
  *v9 = v48;
  v33 = &v9[v4[6]];
  *v33 = v43;
  *(v33 + 1) = v19;
  v9[v4[7]] = v44;
  v34 = &v9[v4[8]];
  v35 = v56[0];
  *(v34 + 4) = v55;
  *(v34 + 5) = v35;
  *(v34 + 93) = *(v56 + 13);
  v36 = v52;
  *v34 = v51;
  *(v34 + 1) = v36;
  v37 = v54;
  *(v34 + 2) = v53;
  *(v34 + 3) = v37;
  v9[v4[9]] = v49;
  v38 = v46;
  v9[v4[10]] = v45;
  v9[v4[11]] = v38;
  v9[v4[12]] = v29;
  v9[v4[13]] = v30;
  v9[v4[14]] = v31;
  sub_24A60AB3C(v9);
  return sub_24A54954C(v9, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A549348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5493B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A549418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A549430()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A549490()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A5494E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A54954C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A5495BC@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v7 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 104);
    v6 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 112);
    v8 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 48);
    v12 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 32);
    v13 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 56);
    v9 = *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 72);
    type metadata accessor for PFAnimationCoordinator(0);
    sub_24A50E0A8(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);

    sub_24A62E444();
    swift_getKeyPath();
    sub_24A62E464();

    v10 = sub_24A62E414();
    result = sub_24A62E684();
    *a5 = v7;
    *(a5 + 8) = v6;
    *(a5 + 16) = 7761773;
    *(a5 + 24) = 0xE300000000000000;
    *(a5 + 32) = v12;
    *(a5 + 48) = v8;
    *(a5 + 56) = 0;
    *(a5 + 60) = v13;
    *(a5 + 76) = v9;
    *(a5 + 84) = 0;
    *(a5 + 88) = v14;
    *(a5 + 96) = v15;
    *(a5 + 104) = v16;
    *(a5 + 112) = v10;
    *(a5 + 120) = result;
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

id sub_24A549798()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13[0] = *(v0 + 32);
  *(v13 + 9) = *(v0 + 41);
  v12[0] = *(v0 + 60);
  *(v12 + 9) = *(v0 + 69);
  v5 = type metadata accessor for LoopingVideoView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = 0;
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = 0;
  *&v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = 0;
  v7 = &v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 1;
  v8 = &v6[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
  *v7 = v13[0];
  *(v7 + 9) = *(v13 + 9);
  *v8 = v12[0];
  *(v8 + 9) = *(v12 + 9);
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A549B94(v1, v2, v3, v4);

  return v9;
}

id sub_24A549908()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = v1;
  v8 = v2;
  v3 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v5, v3);
  return sub_24A54A1A0(v5);
}

uint64_t sub_24A5499C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A54A588();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A549A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A54A588();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A549A88(uint64_t a1)
{
  sub_24A54A588();
  sub_24A62E5D4();
  __break(1u);
}

id sub_24A549AB0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopFromTime];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LoopingVideoView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_24A549B94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_24A62E0F4();
  isa = v10[-1].isa;
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &isa - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() mainBundle];
  v14 = sub_24A62EBE4();
  v15 = sub_24A62EBE4();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_24A62E0D4();

    v17 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v18 = sub_24A62E0B4();
    v19 = [v17 initWithURL_];

    v20 = &v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
    if (v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime + 24])
    {
      v21 = MEMORY[0x277CC0898];
      v22 = *(MEMORY[0x277CC0898] + 8);
      v23 = *(MEMORY[0x277CC0898] + 12);
    }

    else
    {
      v22 = *(v20 + 2);
      v23 = *(v20 + 3);
      v21 = &v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_loopToTime];
    }

    v28 = v21[2];
    *&v46 = *v21;
    *(&v46 + 1) = __PAIR64__(v23, v22);
    *&v47 = v28;
    [v19 setForwardPlaybackEndTime_];
    v29 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
    v30 = OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer;
    v31 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer];
    *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer] = v29;
    v32 = v29;

    if (v32)
    {
      [v32 insertItem:v19 afterItem:0];
    }

    v33 = *&v5[v30];
    if (v33)
    {
      v34 = v33;
      sub_24A62EF04();
      v35 = objc_allocWithZone(MEMORY[0x277CE65E0]);
      v45[0] = v46;
      v45[1] = v47;
      v45[2] = v48;
      v36 = [v35 initWithPlayer:v34 templateItem:v19 timeRange:v45 existingItemsOrdering:1];
      v37 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper];
      *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLooper] = v36;

      v38 = [objc_opt_self() playerLayerWithPlayer_];
      v39 = *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer];
      *&v5[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer] = v38;
      v40 = v38;

      if (v40)
      {
        [v40 setVideoGravity_];
        v41 = [v5 layer];
        [v41 addSublayer_];

        (*(isa + 1))(v12, v44);
      }

      else
      {
        (*(isa + 1))(v12, v44);
      }
    }

    else
    {
      (*(isa + 1))(v12, v44);
    }
  }

  else
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A62E314();
    sub_24A506EB8(v24, qword_27EF5C130);

    v44 = sub_24A62E2F4();
    v25 = sub_24A62EF44();

    if (os_log_type_enabled(v44, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v46 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_24A509BA8(a1, a2, &v46);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_24A509BA8(a3, a4, &v46);
      _os_log_impl(&dword_24A503000, v44, v25, "Video file %{public}s wit extension %{public}s not found.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v27, -1, -1);
      MEMORY[0x24C21BBE0](v26, -1, -1);
    }

    else
    {
      v42 = v44;
    }
  }
}

id sub_24A54A1A0(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer;
  result = *(v1 + OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_queuePlayer);
  if (result && (result = [result rate], v5 != 0.0))
  {
    if ((a1 & 1) == 0)
    {
      result = *(v1 + v3);
      if (result)
      {
        v8 = *(MEMORY[0x277CC08F0] + 16);
        v9 = *MEMORY[0x277CC08F0];
        v10 = *(MEMORY[0x277CC08F0] + 8);
        v11 = v8;
        [result seekToTime_];
        result = *(v1 + v3);
        if (result)
        {
          v7 = &selRef_pause;
          return [result *v7];
        }
      }
    }
  }

  else if (a1)
  {
    result = *(v1 + v3);
    if (result)
    {
      v6 = *(MEMORY[0x277CC08F0] + 16);
      v9 = *MEMORY[0x277CC08F0];
      v10 = *(MEMORY[0x277CC08F0] + 8);
      v11 = v6;
      [result seekToTime_];
      result = *(v1 + v3);
      if (result)
      {
        v7 = &selRef_play;
        return [result *v7];
      }
    }
  }

  return result;
}

id sub_24A54A2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoopingVideoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A54A3B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A54A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A54A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A54A498()
{
  result = qword_27EF4FCA0;
  if (!qword_27EF4FCA0)
  {
    sub_24A50E1E0(&qword_27EF4FCA8, &qword_24A635AF8);
    sub_24A54A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCA0);
  }

  return result;
}

unint64_t sub_24A54A524()
{
  result = qword_27EF4FCB0;
  if (!qword_27EF4FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCB0);
  }

  return result;
}

unint64_t sub_24A54A588()
{
  result = qword_27EF4FCC0;
  if (!qword_27EF4FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FCC0);
  }

  return result;
}

uint64_t sub_24A54A5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 96);
  v6 = *(a2 + 100);
  v7 = *(a5 + 8);
  v8 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v8;
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v10 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v10;
  v14 = v6;
  v13 = v5;
  return v7(a1, v12, a3, a4);
}

uint64_t sub_24A54A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 96);
  v7 = *(a2 + 98);
  v8 = *(a6 + 16);
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v10 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v10;
  v11 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v11;
  v14 = v6;
  v15 = v7;
  return v8(a1, v13, a3, a4, a5);
}

unint64_t *sub_24A54A7B0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_24A54A854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingLocalizer.DelegateTrampoline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24A54A8E8(uint64_t a1, __int16 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v167 = a3;
  v165 = a1;
  v9 = sub_24A508FA4(&unk_27EF4FF00, &unk_24A635E20);
  MEMORY[0x28223BE20](v9 - 8);
  v176 = &v157 - v10;
  v178 = sub_24A508FA4(&unk_27EF52460, &unk_24A63C120);
  v172 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v175 = &v157 - v11;
  v174 = sub_24A508FA4(&unk_27EF4FF10, &unk_24A635E30);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v177 = (&v157 - v12);
  v13 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v13 - 8);
  v180 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v157 - v16;
  v179 = sub_24A62E214();
  v159 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v171 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v157 - v20;
  v161 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer] = 0;
  v22 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider] = 0;
  v23 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager] = 0;
  v24 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID] = MEMORY[0x277D84F98];
  v25 = *a2;
  v26 = &v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement];
  *v26 = 0;
  v26[98] = 0;
  v164 = v5;
  v27 = &v5[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_mockIndex];
  *v27 = 0;
  v27[8] = 1;
  v163 = [objc_allocWithZone(type metadata accessor for FMFindingLocalizer.DelegateTrampoline()) init];
  *&v163[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate + 8] = a5;
  v160 = a4;
  swift_unknownObjectWeakAssign();
  v28 = (v25 >> 13) & 3;
  v166 = v25;
  v162 = v28;
  if (v28)
  {
    if (v28 == 1)
    {
      if ((v25 & 1) == 0)
      {
        v29 = (v25 >> 8) & 0x9F;
LABEL_10:
        LODWORD(v170) = v29;
        v30 = v165;
        v31 = *(v165 + 16);
        if (v31)
        {
          v191 = MEMORY[0x277D84F90];
          sub_24A62F404();
          v32 = v30 + 32;
          v168 = (v159 + 56);
          v169 = (v159 + 48);
          v33 = (v159 + 8);
          do
          {
            sub_24A508AE4(v32, &v188);
            sub_24A508AE4(&v188, v182);
            sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
            sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v187 = 0;
              v185 = 0u;
              v186 = 0u;
            }

            v35 = *(&v189 + 1);
            v36 = v190;
            sub_24A50A204(&v188, *(&v189 + 1));
            (*(v36 + 16))(v35, v36);
            sub_24A50D63C(&v185, v182, &unk_27EF50520, &unk_24A633B10);
            v37 = v183;
            if (v183)
            {
              v38 = v184;
              sub_24A50A204(v182, v183);
              (*(v38 + 16))(v37, v38);
              sub_24A508C54(v182);
              v39 = v179;
            }

            else
            {
              sub_24A50D6A4(v182, &unk_27EF50520, &unk_24A633B10);
              v39 = v179;
              (*v168)(v17, 1, 1, v179);
            }

            v40 = sub_24A62E1D4();
            if ((*v169)(v17, 1, v39) == 1)
            {
              v34 = 0;
            }

            else
            {
              v34 = sub_24A62E1D4();
              (*v33)(v17, v39);
            }

            [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v40 productUUID:v34 isOwned:v170 != 1];

            (*v33)(v21, v39);
            sub_24A50D6A4(&v185, &unk_27EF50520, &unk_24A633B10);
            sub_24A508C54(&v188);
            sub_24A62F3E4();
            sub_24A62F414();
            sub_24A62F424();
            sub_24A62F3F4();
            v32 += 40;
            --v31;
          }

          while (v31);
          v30 = v165;
        }

        sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
        v41 = v163;
        v42 = sub_24A62F014();
        v43 = objc_allocWithZone(MEMORY[0x277D43C38]);
        sub_24A50D7EC(0, &qword_27EF4FED8, 0x277D43C48);
        v44 = sub_24A62ED54();

        v45 = [v43 initWithDelegate:v41 queue:v42 id:v44];

        v46 = *&v164[v161];
        *&v164[v161] = v45;

LABEL_23:
        v47 = v176;
        v48 = v180;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if ((v25 & 0x80000000) == 0)
    {
      if ((v25 & 0xFE) != 2)
      {
        v29 = v25;
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    if ((v25 & 0x1E00) == 0x200)
    {
LABEL_25:
      if (qword_27EF4E9C8 != -1)
      {
        swift_once();
      }

      v49 = qword_27EF5C218;
      v50 = *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession);
      v51 = v167;
      *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession) = v167;
      v52 = v51;
      v53 = v49;

      v54 = *&v164[v24];
      *&v164[v24] = v53;

      v47 = v176;
LABEL_28:
      v48 = v180;
      v30 = v165;
      goto LABEL_29;
    }
  }

  else if (v25)
  {
    goto LABEL_25;
  }

  v30 = v165;
  v100 = *(v165 + 16);
  if (v100 && v167)
  {
    v101 = qword_27EF4E9C0;
    v102 = v167;
    v47 = v176;
    if (v101 != -1)
    {
      swift_once();
    }

    v103 = qword_27EF5C210;
    v104 = v164;
    v105 = *&v164[v23];
    *&v164[v23] = qword_27EF5C210;
    v106 = v103;

    v107 = objc_allocWithZone(type metadata accessor for FMR1DevicePoseProvider());
    v108 = v163;
    v109 = [v107 initWithARSession_];
    *&v109[OBJC_IVAR____TtC11FMFindingUI22FMR1DevicePoseProvider_frameDelegate + 8] = &off_285DA5368;
    swift_unknownObjectWeakAssign();
    v110 = v109;
    [v110 setDelegate_];

    v111 = *&v104[v22];
    *&v104[v22] = v110;

    goto LABEL_28;
  }

  v47 = v176;
  v48 = v180;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v119 = sub_24A62E314();
  sub_24A506EB8(v119, qword_27EF5C118);
  v120 = v167;

  v121 = sub_24A62E2F4();
  v122 = sub_24A62EF44();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *&v185 = v124;
    *v123 = 136315394;
    if (v100)
    {
      if (!*(v30 + 16))
      {
        __break(1u);
        goto LABEL_126;
      }

      sub_24A508AE4(v30 + 32, &v188);
    }

    else
    {
      v190 = 0;
      v188 = 0u;
      v189 = 0u;
    }

    sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
    v150 = sub_24A62EC44();
    v152 = sub_24A509BA8(v150, v151, &v185);

    *(v123 + 4) = v152;
    *(v123 + 12) = 2080;
    *&v188 = v167;
    v153 = v120;
    sub_24A508FA4(&unk_27EF4FF50, &unk_24A635E70);
    v154 = sub_24A62EC44();
    v156 = sub_24A509BA8(v154, v155, &v185);

    *(v123 + 14) = v156;
    _os_log_impl(&dword_24A503000, v121, v122, "No valid findable object (%s), or no valid ARSession object (%s).", v123, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v124, -1, -1);
    MEMORY[0x24C21BBE0](v123, -1, -1);

    goto LABEL_23;
  }

LABEL_29:
  v55 = *(v30 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    *&v185 = MEMORY[0x277D84F90];
    sub_24A58D8E8(0, v55, 0);
    v56 = v185;
    v57 = v30 + 32;
    do
    {
      sub_24A508AE4(v57, &v188);
      v58 = *(v174 + 48);
      v59 = *(&v189 + 1);
      v60 = v190;
      sub_24A50A204(&v188, *(&v189 + 1));
      (*(v60 + 16))(v59, v60);
      v61 = v177;
      *(v177 + v58) = 1;
      sub_24A508C54(&v188);
      *&v185 = v56;
      v63 = v56[2];
      v62 = v56[3];
      if (v63 >= v62 >> 1)
      {
        sub_24A58D8E8((v62 > 1), v63 + 1, 1);
        v61 = v177;
        v56 = v185;
      }

      v56[2] = v63 + 1;
      sub_24A55B7E0(v61, v56 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v63, &unk_27EF4FF10, &unk_24A635E30);
      v57 += 40;
      --v55;
    }

    while (v55);
    v47 = v176;
    v48 = v180;
  }

  if (v56[2])
  {
    sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
    v64 = sub_24A62F494();
  }

  else
  {
    v64 = MEMORY[0x277D84F98];
  }

  v65 = v165;
  *&v188 = v64;
  sub_24A559C88(v56, 1, &v188);
  v161 = 0;
  *&v164[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID] = v188;
  v66 = *(v65 + 16);
  v67 = MEMORY[0x277D84F90];
  v158 = v66;
  if (v66)
  {
    v68 = v65 + 32;
    v177 = (v159 + 48);
    v170 = (v159 + 32);
    v69 = (v172 + 56);
    v173 = v159 + 56;
    v70 = (v172 + 48);
    v169 = (v172 + 56);
    v168 = (v172 + 48);
    while (1)
    {
      sub_24A508AE4(v68, &v188);
      sub_24A508AE4(&v188, v182);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v187 = 0;
        v185 = 0u;
        v186 = 0u;
      }

      sub_24A50D63C(&v185, v182, &unk_27EF50520, &unk_24A633B10);
      v71 = v183;
      if (!v183)
      {
        break;
      }

      v72 = v184;
      sub_24A50A204(v182, v183);
      v73 = *(v72 + 16);
      v74 = v72;
      v48 = v180;
      v73(v71, v74);
      sub_24A508C54(v182);
      if ((*v177)(v48, 1, v179) == 1)
      {
        goto LABEL_48;
      }

      v75 = *v170;
      v76 = v171;
      v174 = v67;
      v77 = v179;
      v75(v171, v48, v179);
      v78 = *(v178 + 48);
      v79 = *(&v189 + 1);
      v80 = v190;
      sub_24A50A204(&v188, *(&v189 + 1));
      v81 = *(v80 + 16);
      v82 = v80;
      v48 = v180;
      v81(v79, v82);
      v83 = &v176[v78];
      v47 = v176;
      v84 = v76;
      v70 = v168;
      v85 = v77;
      v67 = v174;
      v75(v83, v84, v85);
      v69 = v169;
      v86 = 0;
LABEL_49:
      v87 = v178;
      (*v69)(v47, v86, 1, v178);
      sub_24A50D6A4(&v185, &unk_27EF50520, &unk_24A633B10);
      sub_24A508C54(&v188);
      if ((*v70)(v47, 1, v87) == 1)
      {
        sub_24A50D6A4(v47, &unk_27EF4FF00, &unk_24A635E20);
      }

      else
      {
        sub_24A55B7E0(v47, v175, &unk_27EF52460, &unk_24A63C120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_24A61781C(0, v67[2] + 1, 1, v67);
        }

        v89 = v67[2];
        v88 = v67[3];
        if (v89 >= v88 >> 1)
        {
          v67 = sub_24A61781C((v88 > 1), v89 + 1, 1, v67);
        }

        v67[2] = v89 + 1;
        sub_24A55B7E0(v175, v67 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v89, &unk_27EF52460, &unk_24A63C120);
      }

      v68 += 40;
      if (!--v66)
      {
        goto LABEL_55;
      }
    }

    sub_24A50D6A4(v182, &unk_27EF50520, &unk_24A633B10);
    (*v173)(v48, 1, 1, v179);
LABEL_48:
    sub_24A50D6A4(v48, &unk_27EF4FEE0, &qword_24A6369F0);
    v86 = 1;
    goto LABEL_49;
  }

LABEL_55:
  if (v67[2])
  {
    sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
    v90 = sub_24A62F494();
  }

  else
  {
    v90 = MEMORY[0x277D84F98];
  }

  v91 = v165;
  v92 = v166;
  *&v188 = v90;

  v94 = v161;
  sub_24A5596B4(v93, 1, &v188);
  if (!v94)
  {

    v95 = v164;
    *&v164[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_productUUIDsByFindableUUID] = v188;
    *&v95[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType] = v92;
    v96 = v163;
    *&v95[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline] = v163;
    v97 = type metadata accessor for FMFindingLocalizer();
    v181.receiver = v95;
    v181.super_class = v97;
    v180 = v96;
    v98 = objc_msgSendSuper2(&v181, sel_init);
    swift_unknownObjectWeakAssign();
    v99 = v162;
    if (v162)
    {
      if (v162 == 1)
      {
        if ((v92 & 1) == 0)
        {

          swift_unknownObjectRelease();
LABEL_107:

          return v98;
        }

        goto LABEL_74;
      }

      if ((v92 & 0x80000000) == 0)
      {
        if ((v92 & 0xFE) != 2)
        {

          swift_unknownObjectRelease();

          goto LABEL_107;
        }

LABEL_74:
        if (v158)
        {
          if (*(v91 + 16))
          {
            sub_24A508AE4(v91 + 32, &v188);
            v112 = *&v98[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager];
            if (v112)
            {
              if (v99 && (v99 == 1 || (v92 & 0x80000000) == 0))
              {
                v113 = v98;
                v114 = v112;
              }

              else
              {
                v125 = v98;
                v126 = v112;

                sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
                v91 = swift_allocObject();
                *(v91 + 16) = xmmword_24A633830;
                sub_24A508AE4(&v188, v91 + 32);
              }

              v182[0] = MEMORY[0x277D84F90];
              v127 = *(v91 + 16);
              if (v127)
              {
                v179 = v98;
                v165 = v91;
                v128 = v91 + 32;
                do
                {
                  v129 = sub_24A508AE4(v128, &v185);
                  MEMORY[0x28223BE20](v129);
                  v130 = v167;
                  *(&v157 - 6) = v112;
                  *(&v157 - 5) = v130;
                  *(&v157 - 4) = &v185;
                  *(&v157 - 12) = v166;
                  *(&v157 - 2) = v180;
                  *(&v157 - 1) = &off_285DA5380;
                  type metadata accessor for FMNearbyInteractionManagerSubscription(0);
                  sub_24A62F024();
                  v131 = sub_24A508C54(&v185);
                  MEMORY[0x24C21A660](v131);
                  if (*((v182[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v178 = *((v182[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_24A62ED84();
                  }

                  sub_24A62EDA4();
                  v128 += 40;
                  --v127;
                }

                while (v127);
                v132 = v182[0];

                v98 = v179;
              }

              else
              {

                v132 = MEMORY[0x277D84F90];
              }

              swift_unknownObjectRelease();
              sub_24A508C54(&v188);
              *&v98[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions] = v132;

              return v98;
            }

            v94 = v98;

            if (qword_27EF4E9A0 == -1)
            {
              goto LABEL_82;
            }

            goto LABEL_124;
          }

          __break(1u);
          goto LABEL_122;
        }

LABEL_103:
        v94 = v98;

        if (qword_27EF4E9A0 == -1)
        {
LABEL_104:
          v142 = sub_24A62E314();
          sub_24A506EB8(v142, qword_27EF5C118);
          v143 = sub_24A62E2F4();
          v144 = sub_24A62EF44();
          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            *v145 = 0;
            _os_log_impl(&dword_24A503000, v143, v144, "No valid findable object!.", v145, 2u);
            MEMORY[0x24C21BBE0](v145, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_107;
        }

LABEL_122:
        swift_once();
        goto LABEL_104;
      }

      if ((BYTE1(v92) & 0x1E) == 2)
      {
        goto LABEL_74;
      }
    }

    else if (v92)
    {
      goto LABEL_74;
    }

    if (v158)
    {
      if (*(v91 + 16))
      {
        sub_24A508AE4(v91 + 32, &v188);
        v133 = v98;

        v135 = *&v133[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager];
        if (v135)
        {
          MEMORY[0x28223BE20](v134);
          *(&v157 - 6) = &v188;
          *(&v157 - 5) = v135;
          v136 = v180;
          *(&v157 - 4) = v180;
          *(&v157 - 3) = &off_285DA53D8;
          *(&v157 - 16) = v137;
          type metadata accessor for FMR1ProximityManagerSubscription(0);
          v138 = v136;
          v139 = v135;
          sub_24A62F024();
          swift_unknownObjectRelease();

          v140 = v185;
          sub_24A508C54(&v188);
          v141 = *&v133[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription];
          *&v133[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription] = v140;

          return v98;
        }

        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v146 = sub_24A62E314();
        sub_24A506EB8(v146, qword_27EF5C118);
        v116 = sub_24A62E2F4();
        v147 = sub_24A62EF44();
        if (os_log_type_enabled(v116, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_24A503000, v116, v147, "No valid proximity manager object!", v148, 2u);
          MEMORY[0x24C21BBE0](v148, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_114;
        }

LABEL_116:
        swift_unknownObjectRelease();
        goto LABEL_117;
      }

      __break(1u);
LABEL_124:
      swift_once();
LABEL_82:
      v115 = sub_24A62E314();
      sub_24A506EB8(v115, qword_27EF5C118);
      v116 = sub_24A62E2F4();
      v117 = sub_24A62EF44();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_24A503000, v116, v117, "No valid NI manager object!", v118, 2u);
        MEMORY[0x24C21BBE0](v118, -1, -1);
        swift_unknownObjectRelease();

LABEL_114:
LABEL_117:

        sub_24A508C54(&v188);
        return v98;
      }

      goto LABEL_116;
    }

    goto LABEL_103;
  }

LABEL_126:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_24A54C214()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManager];
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      sub_24A5744B0(v4);
    }
  }

  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions];
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {
    v26 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager;

    if (!i)
    {
      break;
    }

    v8 = 0;
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v25 = v6 & 0xC000000000000001;
    v22 = v6;
    v23 = i;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x24C21ACB0](v8, v6);
      }

      else
      {
        if (v8 >= *(v24 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *&v1[v26];
      if (v12)
      {
        v13 = v1;
        v14 = *&v12[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        *(v15 + 24) = v10;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_24A55B77C;
        *(v16 + 24) = v15;
        aBlock[4] = sub_24A517E48;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A592ED8;
        aBlock[3] = &unk_285DA55A0;
        v17 = _Block_copy(aBlock);
        v18 = v12;
        v19 = v10;

        v20 = v14;
        v1 = v13;
        v6 = v22;
        dispatch_sync(v20, v17);

        _Block_release(v17);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v8;
      if (v11 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_18:

  v27.receiver = v1;
  v27.super_class = type metadata accessor for FMFindingLocalizer();
  return objc_msgSendSuper2(&v27, sel_dealloc);
}

uint64_t sub_24A54C688()
{
  v0 = sub_24A62F784();
  sub_24A516B88(9, v0, v1);

  sub_24A55B6E8();
  sub_24A62ECA4();

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  return 7876668;
}

void sub_24A54C770()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingLocalizer: Resetting", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A54D0E8();
  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType];
  v7 = (v6 >> 13) & 3;
  if (!v7)
  {
    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v7 != 1)
  {
    if ((v6 & 0x80000000) != 0)
    {
      return;
    }

    if ((v6 & 0xFE) != 2)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (qword_27EF4E9C8 != -1)
    {
      swift_once();
    }

    v8 = qword_27EF5C218;
    v9 = *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession);
    *(qword_27EF5C218 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession) = 0;

    v20 = *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager];
    *&v1[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManager] = v8;
    v10 = v8;
    v11 = v20;
    goto LABEL_18;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v6 = (v6 >> 8) & 0x9F;
LABEL_17:
  v12 = v1;

  sub_24A55A5C8(v13, v12, v6);

  v14 = *&v12[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline];
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v15 = v14;
  v16 = sub_24A62F014();
  v17 = objc_allocWithZone(MEMORY[0x277D43C38]);
  sub_24A50D7EC(0, &qword_27EF4FED8, 0x277D43C48);
  v18 = sub_24A62ED54();

  v19 = [v17 initWithDelegate:v15 queue:v16 id:v18];

  v11 = *&v12[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer];
  *&v12[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer] = v19;
LABEL_18:
}

void sub_24A54CA30()
{
  v45[5] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v0;
    v0 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v0, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v45[0] = v8;
      *v7 = 136315138;
      sub_24A62E214();
      type metadata accessor for PRBTLocalizerState(0);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v9 = sub_24A62EB94();
      v11 = sub_24A509BA8(v9, v10, v45);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A503000, v0, v6, "🧭 FMFindingLocalizer: Starting localizer for %s", v7, 0xCu);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v12 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType);
    v13 = (v12 >> 13) & 3;
    if (v13)
    {
      break;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_19:
    v3 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
    if (v3 >> 62)
    {
      v18 = sub_24A62F464();
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
LABEL_31:

      return;
    }

    v1 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C21ACB0](v1, v3);
      }

      else
      {
        if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v19 = *(v3 + 8 * v1 + 32);
      }

      v0 = v19;
      v20 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] = 1;
      }

      sub_24A5621CC(0, v22);

      ++v1;
      if (v20 == v18)
      {
        goto LABEL_31;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  if (v13 == 1)
  {
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_40;
    }

    if ((v12 & 0xFE) == 2)
    {
LABEL_7:
      v3 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
      if (v3 >> 62)
      {
        v14 = sub_24A62F464();
      }

      else
      {
        v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v14)
      {
        goto LABEL_31;
      }

      v1 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C21ACB0](v1, v3);
        }

        else
        {
          if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v15 = *(v3 + 8 * v1 + 32);
        }

        v0 = v15;
        v17 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        sub_24A5621CC(1, v16);

        ++v1;
        if (v17 == v14)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  v23 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer);
  if (!v23)
  {
    return;
  }

  v44 = v1;
  v24 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
  v25 = *(v24 + 16);
  if (v25)
  {
    v0 = sub_24A5E5054(*(v24 + 16), 0);
    v26 = *(sub_24A62E214() - 8);
    sub_24A5CE9D8(v45, v0 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25, v24);
    v27 = v45[0];
    v42 = v45[4];
    v43 = v28;
    v29 = v23;

    sub_24A55B6D4(v27);
    LOWORD(v12) = v43;
    if (v43 == v25)
    {
      goto LABEL_46;
    }

    __break(1u);
LABEL_40:
    if ((v12 & 0x1E00) != 0x200)
    {
LABEL_41:
      v30 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
      if (v30)
      {
        v31 = *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_poseProvider);
        v32 = v30;
        v44 = v31;
        sub_24A5722F0(v31, v33);

        v34 = v44;
      }

      return;
    }

    goto LABEL_19;
  }

  v29 = v23;
LABEL_46:
  sub_24A62E214();
  v35 = sub_24A62ED54();

  v45[0] = 0;
  v36 = [v29 startRangingOn:v35 withError:v45];

  v37 = v45[0];
  if (v36)
  {

    v38 = v37;
  }

  else
  {
    v43 = v45[0];
    v39 = v45[0];
    v40 = sub_24A62E084();

    swift_willThrow();
    *v3 = v40;
    swift_storeEnumTagMultiPayload();
    v41 = v40;
    sub_24A54D82C(v3, 0);

    sub_24A55B484(v3, type metadata accessor for FMFindingLocalizerError);
  }
}

void sub_24A54D0E8()
{
  v51[5] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF4E9A0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v4 = sub_24A62E314();
  v5 = sub_24A506EB8(v4, qword_27EF5C118);
  v6 = v0;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  v9 = os_log_type_enabled(v7, v8);
  v49 = v5;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51[0] = v11;
    *v10 = 136315138;
    sub_24A62E214();
    type metadata accessor for PRBTLocalizerState(0);
    sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v12 = sub_24A62EB94();
    v14 = sub_24A509BA8(v12, v13, v51);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMFindingLocalizer: Stopping localizer for %s", v10, 0xCu);
    sub_24A508C54(v11);
    MEMORY[0x24C21BBE0](v11, -1, -1);
    MEMORY[0x24C21BBE0](v10, -1, -1);
  }

  v0 = *(*(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline) + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem);
  if (v0)
  {

    sub_24A62EB34();
  }

  v15 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType);
  v16 = (v15 >> 13) & 3;
  if (v16)
  {
    if (v16 == 1)
    {
      if (v15)
      {
        goto LABEL_19;
      }

LABEL_14:
      v17 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_localizer);
      if (!v17)
      {
        return;
      }

      v50 = v1;
      v18 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findableStatesByUUID);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = sub_24A5E5054(*(v18 + 16), 0);
        v21 = *(sub_24A62E214() - 8);
        sub_24A5CE9D8(v51, &v20[(*(v21 + 80) + 32) & ~*(v21 + 80)], v19, v18);
        v49 = v22;
        v23 = v51[0];
        v48[0] = v51[4];
        v0 = v17;

        sub_24A55B6D4(v23);
        LOWORD(v15) = v49;
        if (v49 != v19)
        {
          __break(1u);
LABEL_18:
          if ((v15 & 0x1E00) == 0x200)
          {
            goto LABEL_19;
          }

LABEL_37:
          v39 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
          if (v39)
          {
            v50 = v39;
            sub_24A572914();
            v40 = v50;
          }

          return;
        }
      }

      else
      {
        v0 = v17;
      }

      sub_24A62E214();
      v41 = sub_24A62ED54();

      v51[0] = 0;
      v42 = [v0 stopRangingOn:v41 withError:v51];

      v43 = v51[0];
      if (v42)
      {

        v44 = v43;
      }

      else
      {
        v49 = v51[0];
        v45 = v51[0];
        v46 = sub_24A62E084();

        swift_willThrow();
        *v3 = v46;
        swift_storeEnumTagMultiPayload();
        v47 = v46;
        sub_24A54D82C(v3, 0);

        sub_24A55B484(v3, type metadata accessor for FMFindingLocalizerError);
      }

      return;
    }

    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    if ((v15 & 0xFE) != 2)
    {
      goto LABEL_14;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  v50 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_nearbyInteractionManagerSubscriptions);
  if (v50 >> 62)
  {
    v24 = sub_24A62F464();
  }

  else
  {
    v24 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v26 = 0;
    v27 = v50 & 0xC000000000000001;
    v1 = v50 & 0xFFFFFFFFFFFFFF8;
    *&v25 = 138412290;
    *v48 = v25;
    do
    {
      if (v27)
      {
        v28 = MEMORY[0x24C21ACB0](v26, v50);
        v3 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
LABEL_33:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v28 = *(v50 + 8 * v26 + 32);
        v3 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          goto LABEL_33;
        }
      }

      v29 = v28;
      v0 = sub_24A62E2F4();
      v30 = sub_24A62EF64();

      if (os_log_type_enabled(v0, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v1;
        v33 = v27;
        v34 = v24;
        v35 = swift_slowAlloc();
        *v31 = v48[0];
        *(v31 + 4) = v29;
        *v35 = v29;
        v36 = v29;
        _os_log_impl(&dword_24A503000, v0, v30, "🧭 FMR1NISubscr%@: asking to stop localizer", v31, 0xCu);
        sub_24A50D6A4(v35, &qword_27EF4FED0, &unk_24A635E00);
        v37 = v35;
        v24 = v34;
        v27 = v33;
        v1 = v32;
        MEMORY[0x24C21BBE0](v37, -1, -1);
        MEMORY[0x24C21BBE0](v31, -1, -1);
      }

      *(&v29->isa + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v0 = Strong;
        sub_24A560664();

        v29 = v0;
      }

      ++v26;
    }

    while (v3 != v24);
  }
}

void sub_24A54D82C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = *&v2[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_delegateTrampoline] + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v31 = sub_24A62E314();
    sub_24A506EB8(v31, qword_27EF5C118);
    sub_24A55B670(a1, v8);
    v32 = sub_24A62E2F4();
    v33 = sub_24A62EF64();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46[0] = v35;
      *v34 = 136315394;
      sub_24A55B670(v8, v11);
      v36 = sub_24A62EC44();
      v38 = v37;
      sub_24A55B484(v8, type metadata accessor for FMFindingLocalizerError);
      v39 = sub_24A509BA8(v36, v38, v46);

      *(v34 + 4) = v39;
      *(v34 + 12) = 1024;
      *(v34 + 14) = a2 & 1;
      _os_log_impl(&dword_24A503000, v32, v33, "🧭 FMFindingLocalizer: Did fail without delegate: %s, shouldRestart: %{BOOL}d", v34, 0x12u);
      sub_24A508C54(v35);
      MEMORY[0x24C21BBE0](v35, -1, -1);
      MEMORY[0x24C21BBE0](v34, -1, -1);

      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      sub_24A55B484(v8, type metadata accessor for FMFindingLocalizerError);
      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  v16 = *(v15 + 8);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  sub_24A55B670(a1, v14);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a1;
    v21 = a2;
    v22 = v20;
    v23 = swift_slowAlloc();
    v44 = v16;
    v24 = v23;
    v46[0] = v23;
    *v22 = 136315394;
    sub_24A55B670(v14, v11);
    v25 = sub_24A62EC44();
    v27 = v26;
    sub_24A55B484(v14, type metadata accessor for FMFindingLocalizerError);
    v28 = sub_24A509BA8(v25, v27, v46);

    *(v22 + 4) = v28;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v21 & 1;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMFindingLocalizer: Did fail with error: %s, shouldRestart: %{BOOL}d", v22, 0x12u);
    sub_24A508C54(v24);
    v29 = v24;
    v16 = v44;
    MEMORY[0x24C21BBE0](v29, -1, -1);
    v30 = v22;
    a2 = v21;
    a1 = v45;
    MEMORY[0x24C21BBE0](v30, -1, -1);
  }

  else
  {

    sub_24A55B484(v14, type metadata accessor for FMFindingLocalizerError);
  }

  ObjectType = swift_getObjectType();
  v46[3] = type metadata accessor for FMFindingLocalizer();
  v46[4] = &off_285DA5430;
  v46[0] = v3;
  v41 = *(v16 + 24);
  v42 = v3;
  v41(v46, a1, ObjectType, v16);
  swift_unknownObjectRelease();
  sub_24A508C54(v46);
  if (a2)
  {
LABEL_13:
    sub_24A54C770();
    sub_24A54CA30();
  }
}

void sub_24A54DD9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_proximityManagerSubscription);
  if (v1)
  {
    v3 = v1;
    sub_24A575834(v3, v2);
  }
}

uint64_t sub_24A54DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62E1F4();
  sub_24A55AAE4(v9, a5);
  return (*(v7 + 8))(v9, v6);
}

void *sub_24A54DF58(void *a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v41 = v5;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C118);
    v11 = a1;
    v12 = sub_24A62E2F4();
    v13 = sub_24A62EF64();

    v14 = &property descriptor for FMFindingViewController.dismissedHandler;
    if (os_log_type_enabled(v12, v13))
    {
      v15 = swift_slowAlloc();
      v39 = v9;
      v40 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      *&v49[0] = v17;
      *v16 = 136315394;
      v18 = [v11 uuid];
      sub_24A62E1F4();

      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_24A62F614();
      v20 = v2;
      v22 = v21;
      (*(v41 + 8))(v7, v40);
      v23 = sub_24A509BA8(v19, v22, v49);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2080;
      *&v43 = [v11 proximityLevel];
      type metadata accessor for PRBTProximityLevel(0);
      v24 = sub_24A62EC44();
      v26 = sub_24A509BA8(v24, v25, v49);

      *(v16 + 14) = v26;
      v2 = v20;
      _os_log_impl(&dword_24A503000, v12, v13, "FMFindingLocalizer: Did update BT proximity measurement for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      v27 = v17;
      v14 = &property descriptor for FMFindingViewController.dismissedHandler;
      MEMORY[0x24C21BBE0](v27, -1, -1);
      v28 = v16;
      v9 = v39;
      v4 = v40;
      MEMORY[0x24C21BBE0](v28, -1, -1);
    }

    v29 = [v11 v14[299]];
    if ((v29 - 1) >= 4)
    {
      if (!v29)
      {
        v47 = 0u;
        v48[0] = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        BYTE4(v48[1]) = 0;
        v33 = 83886080;
LABEL_13:
        LODWORD(v48[1]) = v33;
LABEL_14:
        v49[4] = v47;
        v50[0] = v48[0];
        *(v50 + 13) = *(v48 + 13);
        v49[0] = v43;
        v49[1] = v44;
        v34 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
        v49[2] = v45;
        v49[3] = v46;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v34 + 8);
          ObjectType = swift_getObjectType();
          v42[3] = type metadata accessor for FMFindingLocalizer();
          v42[4] = &off_285DA5430;
          v42[0] = v9;
          v37 = v9;
          v38 = [v11 uuid];
          sub_24A62E1F4();

          (*(v35 + 8))(v42, v49, v7, ObjectType, v35);
          swift_unknownObjectRelease();
          sub_24A517ABC(&v43);

          (*(v41 + 8))(v7, v4);
          return sub_24A508C54(v42);
        }

        else
        {

          return sub_24A517ABC(&v43);
        }
      }
    }

    else
    {
      v30 = [v11 v14[299]];
      v31 = v30 - 1;
      if ((v30 - 1) <= 3)
      {
        v32 = [v11 proximityTrend];
        if (v32 >= 4)
        {
          result = sub_24A62F444();
          __break(1u);
          return result;
        }

        *&v43 = 0;
        BYTE2(v48[1]) = 0x2010100u >> (8 * v31);
        BYTE3(v48[1]) = 0x1030200u >> (8 * v32);
        BYTE4(v48[1]) = 3;
        goto LABEL_14;
      }
    }

    v47 = 0u;
    v48[0] = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    BYTE4(v48[1]) = 0;
    v33 = 0x4000000;
    goto LABEL_13;
  }

  return result;
}

void sub_24A54E4BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C118);
    (*(v5 + 16))(v7, a1, v4);
    v11 = sub_24A62E2F4();
    v12 = sub_24A62EF64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = a1;
      v14 = v13;
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v14 = 136315138;
      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_24A62F614();
      v16 = v2;
      v18 = v17;
      (*(v5 + 8))(v7, v4);
      v19 = sub_24A509BA8(v15, v18, v31);
      v2 = v16;

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMFindingLocalizer: Did find item: %s", v14, 0xCu);
      v20 = v28;
      sub_24A508C54(v28);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      v21 = v14;
      a1 = v29;
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v31[0] = 0;
    v32 = 771;
    v33 = 3;
    v22 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v30[3] = type metadata accessor for FMFindingLocalizer();
      v30[4] = &off_285DA5430;
      v30[0] = v9;
      v25 = *(v23 + 8);
      v26 = v9;
      v25(v30, v31, a1, ObjectType, v23);
      swift_unknownObjectRelease();

      sub_24A508C54(v30);
    }

    else
    {
    }
  }
}

uint64_t sub_24A54E8DC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v40 = result;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C118);
    v38 = *(v8 + 16);
    v39 = v8 + 16;
    v38(v10, a2, v7);
    v13 = a1;
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = a2;
      v17 = v16;
      v35 = swift_slowAlloc();
      v41 = v35;
      *v17 = 136315394;
      sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_24A62F614();
      v37 = v4;
      v20 = v19;
      (*(v8 + 8))(v10, v7);
      v21 = sub_24A509BA8(v18, v20, &v41);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_24A62F6A4();
      v24 = sub_24A509BA8(v22, v23, &v41);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMFindingLocalizer: Did fail ranging on: %s error: %s", v17, 0x16u);
      v25 = v35;
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v25, -1, -1);
      v26 = v17;
      a2 = v36;
      MEMORY[0x24C21BBE0](v26, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    swift_getErrorValue();
    if (sub_24A62F684() == 304)
    {
      swift_getErrorValue();
      v27 = sub_24A62F694();
      v29 = v28;
      if (v27 == sub_24A62EC14() && v29 == v30)
      {

LABEL_12:
        v38(v6, a2, v7);
        swift_storeEnumTagMultiPayload();
        v32 = 0;
LABEL_14:
        v34 = v40;
        sub_24A54D82C(v6, v32);

        return sub_24A55B484(v6, type metadata accessor for FMFindingLocalizerError);
      }

      v31 = sub_24A62F634();

      if (v31)
      {
        goto LABEL_12;
      }
    }

    *v6 = a1;
    swift_storeEnumTagMultiPayload();
    v33 = a1;
    v32 = 1;
    goto LABEL_14;
  }

  return result;
}

void sub_24A54EE54(unsigned __int8 a1, void *a2)
{
  v5 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62E214();
  v182 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  *&v178 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v176 = &v173 - v11;
  MEMORY[0x28223BE20](v12);
  *&v177 = &v173 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v173 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v173 - v18;
  MEMORY[0x28223BE20](v20);
  v181 = &v173 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v173 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v179 = a2;
  v180 = v8;
  v26 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType;
  v27 = *&Strong[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType];
  v28 = (v27 >> 13) & 3;
  v183 = Strong;
  if (v28)
  {
    if (v28 == 1)
    {
      v29 = sub_24A62DF44();
      *(&v206 + 1) = v29;
      *&v207 = sub_24A55B628(&qword_27EF4FE90, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
      v30 = sub_24A5292E8(&v205);
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D089D0], v29);
      LOBYTE(v29) = MEMORY[0x24C219850](&v205);
      sub_24A508C54(&v205);
      Strong = v183;
      if (v29)
      {
        goto LABEL_97;
      }
    }

    else if ((v27 & 0x8100) == 0x100)
    {

      goto LABEL_97;
    }
  }

  if (a1 <= 4u)
  {
    if (a1 <= 2u)
    {
      if (a1 != 1)
      {
        v31 = v179;
        if (a1 == 2)
        {
          v32 = v2;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v33 = sub_24A62E314();
          sub_24A506EB8(v33, qword_27EF5C118);
          v34 = sub_24A62E2F4();
          v35 = sub_24A62EF64();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_24A503000, v34, v35, "🧭 FMFindingLocalizer: item state changed to: reconnecting", v36, 2u);
            MEMORY[0x24C21BBE0](v36, -1, -1);
          }

          v37 = v31[3];
          v38 = v31[4];
          sub_24A50A204(v31, v37);
          (*(v38 + 8))(v196, v37, v38);
          v39 = v197;
          v40 = v198;
          sub_24A50A204(v196, v197);
          v41 = v181;
          (*(v40 + 16))(v39, v40);
          swift_beginAccess();
          v42 = sub_24A554CF0(v41, &v189);
          (*(v182 + 8))(v41, v180, v42);
          v209 = v193;
          *v210 = v194;
          *&v210[16] = v195;
          v205 = v189;
          v206 = v190;
          v207 = v191;
          v208 = v192;
          sub_24A50D6A4(&v205, &qword_27EF4F650, &unk_24A633E00);
          swift_endAccess();
          sub_24A508C54(v196);
          v199 = 0u;
          v200 = 0u;
          v201 = 0u;
          v202 = 0u;
          v203 = 0u;
          v204[0] = 0u;
          BYTE4(v204[1]) = 0;
          LODWORD(v204[1]) = 0x4000000;
          goto LABEL_94;
        }

LABEL_97:

        return;
      }

      v94 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v95 = sub_24A62E314();
      sub_24A506EB8(v95, qword_27EF5C118);
      v96 = sub_24A62E2F4();
      v97 = sub_24A62EF64();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_24A503000, v96, v97, "🧭 FMFindingLocalizer: item state changed to: findable", v98, 2u);
        MEMORY[0x24C21BBE0](v98, -1, -1);
      }

      v99 = *&v183[v26];
      v100 = (v99 >> 13) & 3;
      if (v100)
      {
        v32 = v94;
        if (v100 == 1 || (v99 & 0x80000000) == 0)
        {
          v203 = 0u;
          v204[0] = 0u;
          v201 = 0u;
          v202 = 0u;
          v199 = 0u;
          v200 = 0u;
          BYTE4(v204[1]) = 0;
          LODWORD(v204[1]) = 83886080;
LABEL_93:
          v31 = v179;
          goto LABEL_94;
        }
      }

      v31 = v179;
      v149 = v179[3];
      v150 = v179[4];
      sub_24A50A204(v179, v149);
      (*(v150 + 8))(v196, v149, v150);
      v151 = v197;
      v152 = v198;
      sub_24A50A204(v196, v197);
      (*(v152 + 16))(v151, v152);
      v153 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v154 = *&v183[v153];
      if (*(v154 + 16))
      {

        v155 = sub_24A515AC8(v24);
        if (v156)
        {
          v157 = *(v154 + 56) + 104 * v155;
          v159 = *(v157 + 16);
          v158 = *(v157 + 32);
          v205 = *v157;
          v206 = v159;
          v207 = v158;
          v160 = *(v157 + 48);
          v161 = *(v157 + 64);
          v162 = *(v157 + 80);
          *&v210[16] = *(v157 + 96);
          v209 = v161;
          *v210 = v162;
          v208 = v160;
          sub_24A51C914(&v205, &v189);
          (*(v182 + 8))(v24, v180);

          v177 = v205;
          v178 = v206;
          v175 = v208;
          v176 = v207;
          v173 = *v210;
          v174 = v209;
          v124 = *&v210[16];
LABEL_88:
          v32 = v94;
          goto LABEL_89;
        }
      }

      (*(v182 + 8))(v24, v180);
      v124 = 0;
      v177 = 0u;
      v178 = xmmword_24A635BF0;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      goto LABEL_88;
    }

    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_97;
      }

      v51 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v52 = sub_24A62E314();
      sub_24A506EB8(v52, qword_27EF5C118);
      v53 = sub_24A62E2F4();
      v54 = sub_24A62EF64();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_24A503000, v53, v54, "🧭 FMFindingLocalizer: item state changed to: startedMoving", v55, 2u);
        MEMORY[0x24C21BBE0](v55, -1, -1);
      }

      v56 = v179[3];
      v57 = v179[4];
      sub_24A50A204(v179, v56);
      v58 = *(v57 + 8);
      v58(v196, v56, v57);
      v59 = v197;
      v60 = v198;
      sub_24A50A204(v196, v197);
      (*(v60 + 24))(v187, v59, v60);
      if (!v188 || v188 != 1)
      {
        sub_24A508C54(v196);
        v58(v184, v56, v57);
        v145 = v185;
        v146 = v186;
        sub_24A50A204(v184, v185);
        v147 = v181;
        (*(v146 + 16))(v145, v146);
        swift_beginAccess();
        v148 = sub_24A554CF0(v147, &v189);
        (*(v182 + 8))(v147, v180, v148);
        v209 = v193;
        *v210 = v194;
        *&v210[16] = v195;
        v205 = v189;
        v206 = v190;
        v207 = v191;
        v208 = v192;
        sub_24A50D6A4(&v205, &qword_27EF4F650, &unk_24A633E00);
        swift_endAccess();
        sub_24A508C54(v184);
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204[0] = 0u;
        BYTE4(v204[1]) = 0;
        LODWORD(v204[1]) = 100663296;
        v32 = v51;
        goto LABEL_93;
      }

      v58(v184, v56, v57);
      v61 = v185;
      v62 = v186;
      sub_24A50A204(v184, v185);
      v63 = v176;
      (*(v62 + 16))(v61, v62);
      v64 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v65 = *&v183[v64];
      if (*(v65 + 16))
      {

        v66 = sub_24A515AC8(v63);
        if (v67)
        {
          v68 = *(v65 + 56) + 104 * v66;
          v70 = *(v68 + 16);
          v69 = *(v68 + 32);
          v205 = *v68;
          v206 = v70;
          v207 = v69;
          v71 = *(v68 + 48);
          v72 = *(v68 + 64);
          v73 = *(v68 + 80);
          *&v210[16] = *(v68 + 96);
          v209 = v72;
          *v210 = v73;
          v208 = v71;
          sub_24A51C914(&v205, &v189);
          (*(v182 + 8))(v63, v180);

          v177 = v205;
          v178 = v206;
          v175 = v208;
          v176 = v207;
          v173 = *v210;
          v174 = v209;
          v74 = *&v210[16];
LABEL_92:
          v32 = v51;
          sub_24A508C54(v184);
          sub_24A508C54(v196);
          v199 = v177;
          v200 = v178;
          v201 = v176;
          v202 = v175;
          v203 = v174;
          v204[0] = v173;
          LOWORD(v204[1]) = v74;
          WORD1(v204[1]) = 4;
          BYTE4(v204[1]) = 2;
          goto LABEL_93;
        }
      }

      (*(v182 + 8))(v63, v180);
      v74 = 0;
      v177 = 0u;
      v178 = xmmword_24A635BF0;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      goto LABEL_92;
    }

    v32 = v2;
    v31 = v179;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v108 = sub_24A62E314();
    sub_24A506EB8(v108, qword_27EF5C118);
    v102 = sub_24A62E2F4();
    v103 = sub_24A62EF64();
    v109 = os_log_type_enabled(v102, v103);
    v105 = v177;
    if (v109)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "🧭 FMFindingLocalizer: item state changed to: reconnected";
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v31 = v179;
  if (a1 > 6u)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
        goto LABEL_97;
      }

      v32 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v75 = sub_24A62E314();
      sub_24A506EB8(v75, qword_27EF5C118);
      v76 = sub_24A62E2F4();
      v77 = sub_24A62EF64();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_24A503000, v76, v77, "🧭 FMFindingLocalizer: item state changed to: insufficient horizontal movement", v78, 2u);
        MEMORY[0x24C21BBE0](v78, -1, -1);
      }

      v79 = v31[3];
      v80 = v31[4];
      sub_24A50A204(v31, v79);
      (*(v80 + 8))(v196, v79, v80);
      v81 = v197;
      v82 = v198;
      sub_24A50A204(v196, v197);
      (*(v82 + 16))(v81, v82);
      v83 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
      swift_beginAccess();
      v84 = *&v183[v83];
      if (*(v84 + 16))
      {

        v85 = sub_24A515AC8(v16);
        if (v86)
        {
          v87 = *(v84 + 56) + 104 * v85;
          v89 = *(v87 + 16);
          v88 = *(v87 + 32);
          v205 = *v87;
          v206 = v89;
          v207 = v88;
          v90 = *(v87 + 48);
          v91 = *(v87 + 64);
          v92 = *(v87 + 80);
          *&v210[16] = *(v87 + 96);
          v209 = v91;
          *v210 = v92;
          v208 = v90;
          sub_24A51C914(&v205, &v189);
          (*(v182 + 8))(v16, v180);

          v177 = v205;
          v178 = v206;
          v175 = v208;
          v176 = v207;
          v173 = *v210;
          v174 = v209;
          v93 = *&v210[16];
LABEL_85:
          sub_24A508C54(v196);
          v199 = v177;
          v200 = v178;
          v201 = v176;
          v202 = v175;
          v203 = v174;
          v204[0] = v173;
          LOWORD(v204[1]) = v93;
          WORD1(v204[1]) = 4;
          BYTE4(v204[1]) = 0;
          goto LABEL_94;
        }
      }

      (*(v182 + 8))(v16, v180);
      v93 = 0;
      v177 = 0u;
      v178 = xmmword_24A635BF0;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      goto LABEL_85;
    }

    v125 = v2;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v126 = sub_24A62E314();
    sub_24A506EB8(v126, qword_27EF5C118);
    v127 = sub_24A62E2F4();
    v128 = sub_24A62EF64();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_24A503000, v127, v128, "🧭 FMFindingLocalizer: item state changed to: insufficient horizontal movement", v129, 2u);
      MEMORY[0x24C21BBE0](v129, -1, -1);
    }

    v130 = v31[3];
    v131 = v31[4];
    sub_24A50A204(v31, v130);
    (*(v131 + 8))(v196, v130, v131);
    v132 = v197;
    v133 = v198;
    sub_24A50A204(v196, v197);
    (*(v133 + 16))(v132, v133);
    v134 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
    swift_beginAccess();
    v135 = *&v183[v134];
    if (*(v135 + 16))
    {

      v136 = sub_24A515AC8(v19);
      if (v137)
      {
        v138 = *(v135 + 56) + 104 * v136;
        v140 = *(v138 + 16);
        v139 = *(v138 + 32);
        v205 = *v138;
        v206 = v140;
        v207 = v139;
        v141 = *(v138 + 48);
        v142 = *(v138 + 64);
        v143 = *(v138 + 80);
        *&v210[16] = *(v138 + 96);
        v209 = v142;
        *v210 = v143;
        v208 = v141;
        sub_24A51C914(&v205, &v189);
        (*(v182 + 8))(v19, v180);

        v177 = v205;
        v178 = v206;
        v175 = v208;
        v176 = v207;
        v173 = *v210;
        v174 = v209;
        v144 = *&v210[16];
LABEL_82:
        v32 = v125;
        sub_24A508C54(v196);
        v199 = v177;
        v200 = v178;
        v201 = v176;
        v202 = v175;
        v203 = v174;
        v204[0] = v173;
        LOWORD(v204[1]) = v144;
        WORD1(v204[1]) = 4;
        BYTE4(v204[1]) = 1;
LABEL_94:
        v209 = v203;
        *v210 = v204[0];
        *&v210[13] = *(v204 + 13);
        v205 = v199;
        v206 = v200;
        v163 = v32 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
        v207 = v201;
        v208 = v202;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v164 = *(v163 + 8);
          ObjectType = swift_getObjectType();
          *(&v190 + 1) = type metadata accessor for FMFindingLocalizer();
          *&v191 = &off_285DA5430;
          *&v189 = v183;
          v166 = v31[3];
          v167 = v31[4];
          sub_24A50A204(v31, v166);
          v168 = *(v167 + 8);
          v169 = v183;
          v168(v196, v166, v167);
          v170 = v197;
          v171 = v198;
          sub_24A50A204(v196, v197);
          v172 = v181;
          (*(v171 + 16))(v170, v171);
          (*(v164 + 8))(&v189, &v205, v172, ObjectType, v164);
          swift_unknownObjectRelease();
          sub_24A517ABC(&v199);

          (*(v182 + 8))(v172, v180);
          sub_24A508C54(v196);
          sub_24A508C54(&v189);
          return;
        }

        sub_24A517ABC(&v199);
        Strong = v183;
        goto LABEL_97;
      }
    }

    (*(v182 + 8))(v19, v180);
    v144 = 0;
    v177 = 0u;
    v178 = xmmword_24A635BF0;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    goto LABEL_82;
  }

  if (a1 == 5)
  {
    v32 = v2;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v101 = sub_24A62E314();
    sub_24A506EB8(v101, qword_27EF5C118);
    v102 = sub_24A62E2F4();
    v103 = sub_24A62EF64();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v178;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "🧭 FMFindingLocalizer: item state changed to: stoppedMoving";
LABEL_63:
      _os_log_impl(&dword_24A503000, v102, v103, v107, v106, 2u);
      MEMORY[0x24C21BBE0](v106, -1, -1);
    }

LABEL_64:

    v110 = v31[3];
    v111 = v31[4];
    sub_24A50A204(v31, v110);
    (*(v111 + 8))(v196, v110, v111);
    v112 = v197;
    v113 = v198;
    sub_24A50A204(v196, v197);
    (*(v113 + 16))(v112, v113);
    v114 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
    swift_beginAccess();
    v115 = *&v183[v114];
    if (*(v115 + 16))
    {

      v116 = sub_24A515AC8(v105);
      if (v117)
      {
        v118 = *(v115 + 56) + 104 * v116;
        v120 = *(v118 + 16);
        v119 = *(v118 + 32);
        v205 = *v118;
        v206 = v120;
        v207 = v119;
        v121 = *(v118 + 48);
        v122 = *(v118 + 64);
        v123 = *(v118 + 80);
        *&v210[16] = *(v118 + 96);
        v209 = v122;
        *v210 = v123;
        v208 = v121;
        sub_24A51C914(&v205, &v189);
        (*(v182 + 8))(v105, v180);

        v177 = v205;
        v178 = v206;
        v175 = v208;
        v176 = v207;
        v173 = *v210;
        v174 = v209;
        v124 = *&v210[16];
LABEL_89:
        sub_24A508C54(v196);
        v199 = v177;
        v200 = v178;
        v201 = v176;
        v202 = v175;
        v203 = v174;
        v204[0] = v173;
        LOWORD(v204[1]) = v124;
        WORD1(v204[1]) = 4;
        BYTE4(v204[1]) = 3;
        goto LABEL_94;
      }
    }

    (*(v182 + 8))(v105, v180);
    v124 = 0;
    v177 = 0u;
    v178 = xmmword_24A635BF0;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    goto LABEL_89;
  }

  if (a1 != 6)
  {
    goto LABEL_97;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v43 = sub_24A62E314();
  sub_24A506EB8(v43, qword_27EF5C118);
  v44 = sub_24A62E2F4();
  v45 = sub_24A62EF64();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_24A503000, v44, v45, "🧭 FMFindingLocalizer: item state changed to: inUse", v46, 2u);
    MEMORY[0x24C21BBE0](v46, -1, -1);
  }

  v47 = v31[3];
  v48 = v31[4];
  sub_24A50A204(v31, v47);
  (*(v48 + 8))(&v205, v47, v48);
  v49 = *(&v206 + 1);
  v50 = v207;
  sub_24A50A204(&v205, *(&v206 + 1));
  (*(v50 + 16))(v49, v50);
  swift_storeEnumTagMultiPayload();
  sub_24A54D82C(v7, 0);

  sub_24A55B484(v7, type metadata accessor for FMFindingLocalizerError);
  sub_24A508C54(&v205);
}

void sub_24A550494(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v83 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = (v73 - v10);
  v11 = sub_24A62EB14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = v73 - v16;
  v17 = sub_24A62EA94();
  MEMORY[0x28223BE20](v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v76 = v11;
  v77 = v12;
  v78 = v8;
  v80 = v6;
  v75 = OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem;
  if (*(v3 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem))
  {

    sub_24A62EB34();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = a1;
  sub_24A508AE4(a1, v135);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_24A508CA0(v135, v19 + 24);
  *&v121 = sub_24A55B364;
  *(&v121 + 1) = v19;
  *&v119 = MEMORY[0x277D85DD0];
  *(&v119 + 1) = 1107296256;
  *&v120 = sub_24A5A8458;
  *(&v120 + 1) = &unk_285DA54D8;
  v73[1] = _Block_copy(&v119);
  *&v128 = MEMORY[0x277D84F90];
  sub_24A55B628(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  ObjectType = v3;
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v20 = ObjectType;
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v21 = sub_24A62EB24();
  v22 = v74;

  *(v20 + v75) = v21;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v23 = sub_24A62F014();
  sub_24A62EB04();
  v24 = v79;
  sub_24A62EB54();
  v25 = *(v77 + 8);
  v26 = v14;
  v27 = v76;
  v25(v26, v76);
  v77 = v21;
  sub_24A62EFE4();

  v25(v24, v27);
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v28 = v22[3];
  v29 = v22[4];
  sub_24A50A204(v22, v28);
  (*(v29 + 8))(&v128, v28, v29);
  v30 = *(&v129 + 1);
  v31 = v130;
  sub_24A50A204(&v128, *(&v129 + 1));
  v32 = v82;
  (*(v31 + 16))(v30, v31);
  v33 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  v34 = Strong;
  swift_beginAccess();
  v35 = *(v34 + v33);
  if (!*(v35 + 16))
  {
    v45 = *(v83 + 8);
    v46 = v32;
    v37 = v80;
LABEL_11:
    v82 = v45;
    v45(v46, v37);
    v105 = 0uLL;
    *v106 = 1;
    memset(&v106[8], 0, 74);
    goto LABEL_12;
  }

  v36 = sub_24A515AC8(v32);
  v37 = v80;
  if ((v38 & 1) == 0)
  {

    v45 = *(v83 + 8);
    v46 = v32;
    goto LABEL_11;
  }

  v39 = *(v35 + 56) + 104 * v36;
  v41 = *(v39 + 16);
  v40 = *(v39 + 32);
  v119 = *v39;
  v120 = v41;
  v121 = v40;
  v42 = *(v39 + 48);
  v43 = *(v39 + 64);
  v44 = *(v39 + 80);
  v125 = *(v39 + 96);
  v123 = v43;
  v124 = v44;
  v122 = v42;
  sub_24A51C914(&v119, v135);
  v82 = *(v83 + 8);
  v82(v32, v37);

  *&v106[48] = v123;
  *&v106[64] = v124;
  *&v106[80] = v125;
  v105 = v119;
  *v106 = v120;
  *&v106[16] = v121;
  *&v106[32] = v122;
LABEL_12:
  v47 = v78;
  v135[4] = *&v106[48];
  v135[5] = *&v106[64];
  v136 = *&v106[80];
  v135[0] = v105;
  v135[1] = *v106;
  v135[2] = *&v106[16];
  v135[3] = *&v106[32];
  sub_24A508C54(&v128);
  v48 = v22[3];
  v49 = v22[4];
  sub_24A50A204(v22, v48);
  (*(v49 + 8))(&v119, v48, v49);
  v50 = *(&v120 + 1);
  v51 = v121;
  sub_24A50A204(&v119, *(&v120 + 1));
  (*(v51 + 24))(&v128, v50, v51);
  v52 = v128;
  v53 = v129;
  v54 = BYTE8(v129);
  sub_24A508C54(&v119);
  if (v54 == 1)
  {
  }

  else
  {
    sub_24A55B284(v52, *(&v52 + 1), v53, v54);
  }

  v55 = Strong;
  if (*v106 == 1)
  {
    v56 = v54 == 1;
  }

  else
  {
    v57 = v106[81];
    sub_24A50D63C(&v105, &v119, &qword_27EF4F650, &unk_24A633E00);
    v56 = v57 & 1;
  }

  sub_24A51BBD0(a2, 0, 0, 0, v135, v56, &v107);
  *&v91 = v107;
  BYTE8(v91) = v108;
  v92 = v109;
  *&v93 = v110;
  BYTE8(v93) = v111;
  *&v94 = v112;
  WORD4(v94) = v113;
  *&v95 = v114;
  WORD4(v95) = v115;
  BYTE10(v95) = v116;
  v96 = v117;
  v97 = v118;
  v134 = v118;
  v132 = v95;
  v133 = v117;
  v130 = v93;
  v131 = v94;
  v128 = v91;
  v129 = v109;
  v58 = v22[3];
  v59 = v22[4];
  sub_24A50A204(v22, v58);
  (*(v59 + 8))(v88, v58, v59);
  v60 = v89;
  v61 = v90;
  sub_24A50A204(v88, v89);
  (v61[2])(v60, v61);
  v102 = v95;
  v103 = v96;
  v104 = v97;
  v98 = v91;
  v99 = v92;
  v100 = v93;
  v101 = v94;
  swift_beginAccess();
  sub_24A51C914(&v91, &v119);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v119 = *&v55[v33];
  *&v55[v33] = 0x8000000000000000;
  sub_24A557AB0(&v128, v47, isUniquelyReferenced_nonNull_native);
  v63 = v82;
  v64 = v83 + 8;
  v82(v47, v37);
  *&v55[v33] = v119;
  swift_endAccess();
  sub_24A508C54(v88);
  v123 = v102;
  v124 = v103;
  v125 = v104;
  v119 = v98;
  v120 = v99;
  v121 = v100;
  v122 = v101;
  v126 = 772;
  v65 = ObjectType + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v127 = 3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v82 = v63;
    v83 = v64;
    v66 = *(v65 + 8);
    ObjectType = swift_getObjectType();
    v89 = type metadata accessor for FMFindingLocalizer();
    v90 = &off_285DA5430;
    v88[0] = v55;
    v67 = v22[3];
    v68 = v22[4];
    sub_24A50A204(v22, v67);
    v69 = *(v68 + 8);
    v70 = v55;
    v69(v85, v67, v68);
    v71 = v86;
    v72 = v87;
    sub_24A50A204(v85, v86);
    (*(v72 + 16))(v71, v72);
    (*(v66 + 8))(v88, &v119, v47, ObjectType, v66);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v91);

    sub_24A50D6A4(&v105, &qword_27EF4F650, &unk_24A633E00);

    v82(v47, v80);
    sub_24A508C54(v85);
    sub_24A508C54(v88);
  }

  else
  {

    sub_24A50D6A4(&v105, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v91);
  }
}

void sub_24A550F90(uint64_t a1, void *a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v30 = v4;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v31 = v3;
      v11 = sub_24A62E314();
      sub_24A506EB8(v11, qword_27EF5C118);
      v12 = sub_24A62E2F4();
      v13 = sub_24A62EF64();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24A503000, v12, v13, "🧭 FMFindingLocalizer: Did not update range estimate so reset state", v14, 2u);
        MEMORY[0x24C21BBE0](v14, -1, -1);
      }

      v15 = a2[3];
      v16 = a2[4];
      v17 = sub_24A50A204(a2, v15);
      v18 = *(v16 + 8);
      v27[1] = v17;
      v28 = v18;
      v29 = v16;
      v18(v35, v15, v16);
      v20 = v36;
      v19 = v37;
      sub_24A50A204(v35, v36);
      (v19[2])(v20, v19);
      swift_beginAccess();
      v21 = sub_24A554CF0(v6, &v40);
      v30 = *(v30 + 8);
      (v30)(v6, v31, v21);
      v38[4] = *&v41[48];
      v38[5] = *&v41[64];
      v39 = *&v41[80];
      v38[0] = v40;
      v38[1] = *v41;
      v38[2] = *&v41[16];
      v38[3] = *&v41[32];
      sub_24A50D6A4(v38, &qword_27EF4F650, &unk_24A633E00);
      swift_endAccess();
      sub_24A508C54(v35);
      v40 = 0uLL;
      *v41 = 1;
      memset(&v41[8], 0, 74);
      v42 = 4;
      v22 = &v8[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 1);
        v27[0] = swift_getObjectType();
        v36 = type metadata accessor for FMFindingLocalizer();
        v37 = &off_285DA5430;
        v35[0] = v10;
        v24 = v10;
        v28(v32, v15, v29);
        v25 = v33;
        v26 = v34;
        sub_24A50A204(v32, v33);
        (*(v26 + 16))(v25, v26);
        (*(v23 + 16))(v35, &v40, 3, v6, v27[0], v23);

        swift_unknownObjectRelease();
        (v30)(v6, v31);
        sub_24A508C54(v32);
        sub_24A508C54(v35);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_24A55138C(void *a1, void *a2)
{
  v82 = a1;
  v4 = sub_24A62E214();
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v79 = v6;
  v80 = v2;
  v12 = a2[3];
  v13 = a2[4];
  v14 = sub_24A50A204(a2, v12);
  v15 = *(v13 + 8);
  v86 = v14;
  v87 = v13;
  v81 = v12;
  v16 = (v13 + 8);
  v85 = v15;
  v15(&v119, v12, v13);
  v17 = *(&v120 + 1);
  v18 = v121;
  sub_24A50A204(&v119, *(&v120 + 1));
  (*(v18 + 16))(v17, v18);
  v19 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  swift_beginAccess();
  v20 = *&v11[v19];
  if (!*(v20 + 16))
  {
    goto LABEL_6;
  }

  v21 = sub_24A515AC8(v9);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    v83 = *(v84 + 8);
    v83(v9, v4);
    v108 = 0uLL;
    *v109 = 1;
    memset(&v109[8], 0, 74);
    goto LABEL_7;
  }

  v23 = *(v20 + 56) + 104 * v21;
  v25 = *(v23 + 16);
  v24 = *(v23 + 32);
  v111 = *v23;
  v112 = v25;
  v113 = v24;
  v26 = *(v23 + 48);
  v27 = *(v23 + 64);
  v28 = *(v23 + 80);
  v117 = *(v23 + 96);
  v115 = v27;
  v116 = v28;
  v114 = v26;
  sub_24A51C914(&v111, &v128);
  v83 = *(v84 + 8);
  v83(v9, v4);

  *&v109[48] = v115;
  *&v109[64] = v116;
  *&v109[80] = v117;
  v108 = v111;
  *v109 = v112;
  *&v109[16] = v113;
  *&v109[32] = v114;
LABEL_7:
  v29 = v87;
  v30 = v85;
  v126[4] = *&v109[48];
  v126[5] = *&v109[64];
  v127 = *&v109[80];
  v126[0] = v108;
  v126[1] = *v109;
  v126[2] = *&v109[16];
  v126[3] = *&v109[32];
  sub_24A508C54(&v119);
  v30(&v111, v81, v29);
  v31 = *(&v112 + 1);
  v32 = v113;
  sub_24A50A204(&v111, *(&v112 + 1));
  (*(v32 + 24))(&v128, v31, v32);
  v34 = v128;
  v33 = v129;
  v35 = v130;
  v36 = v131;
  sub_24A508C54(&v111);
  if (v36 == 1)
  {
  }

  else
  {
    sub_24A55B284(v34, v33, v35, v36);
  }

  v37 = v79;
  v38 = v16;
  if (v82)
  {
    v39 = v4;
    if (*v109 == 1)
    {
      v40 = v82;
      v41 = v82;
      v42 = &v128;
      v43 = &v128;
      v44 = v126;
      v45 = 0.0;
      v46 = 1;
      v47 = v40;
      v48 = v36 == 1;
    }

    else
    {
      v49 = v109[81];
      sub_24A50D63C(&v108, &v111, &qword_27EF4F650, &unk_24A633E00);
      v50 = v82;
      v51 = v82;
      v42 = &v128;
      v43 = &v128;
      v44 = v126;
      v48 = v49 & 1;
      v45 = 0.0;
      v47 = v50;
      v46 = 1;
    }
  }

  else
  {
    v39 = v4;
    v48 = v36 == 1;
    if (*v109 == 1)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = *&v108;
    }

    v128 = 0;
    v129 = 0;
    v130 = 1;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    memset(v134, 0, sizeof(v134));
    v42 = v110;
    v43 = v110;
    v46 = (*v109 == 1) | BYTE8(v108) & 1;
    v44 = &v128;
    v47 = 0;
  }

  sub_24A51BBD0(v45, v46, v47, 0, v44, v48, v43);
  v52 = *(v42 + 97);
  v53 = v42[11];
  v54 = *(v42 + 96);
  v55 = v42[10];
  v56 = *(v42 + 74);
  v57 = *(v42 + 73);
  v58 = *(v42 + 72);
  v59 = v42[8];
  v60 = *(v42 + 57);
  v61 = *(v42 + 56);
  v62 = v42[6];
  v63 = *(v42 + 40);
  v64 = v42[4];
  v65 = *(v42 + 8);
  *&v94 = *v42;
  BYTE8(v94) = v65;
  v95 = *(v42 + 1);
  *&v96 = v64;
  BYTE8(v96) = v63;
  *&v97 = v62;
  BYTE8(v97) = v61;
  BYTE9(v97) = v60;
  *&v98 = v59;
  BYTE8(v98) = v58;
  BYTE9(v98) = v57;
  BYTE10(v98) = v56;
  *&v99 = v55;
  *(&v99 + 1) = v53;
  LOBYTE(v100) = v54;
  HIBYTE(v100) = v52;
  v125 = v100;
  v123 = v98;
  v124 = v99;
  v121 = v96;
  v122 = v97;
  v119 = v94;
  v120 = v95;
  v66 = v81;
  v85(v91, v81, v87);
  v82 = v38;
  v67 = v92;
  v68 = v93;
  sub_24A50A204(v91, v92);
  (v68[2])(v67, v68);
  v105 = v98;
  v106 = v99;
  v107 = v100;
  v101 = v94;
  v102 = v95;
  v103 = v96;
  v104 = v97;
  swift_beginAccess();
  sub_24A51C914(&v94, &v111);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *&v11[v19];
  *&v11[v19] = 0x8000000000000000;
  sub_24A557AB0(&v119, v37, isUniquelyReferenced_nonNull_native);
  v70 = v83;
  v71 = v84 + 8;
  v83(v37, v39);
  *&v11[v19] = v111;
  swift_endAccess();
  sub_24A508C54(v91);
  v115 = v105;
  v116 = v106;
  v117 = v107;
  v111 = v101;
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v72 = v80 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v118 = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v83 = v70;
    v84 = v71;
    v73 = *(v72 + 8);
    v74 = v66;
    ObjectType = swift_getObjectType();
    v92 = type metadata accessor for FMFindingLocalizer();
    v93 = &off_285DA5430;
    v91[0] = v11;
    v76 = v11;
    v85(v88, v74, v87);
    v77 = v89;
    v78 = v90;
    sub_24A50A204(v88, v89);
    (*(v78 + 16))(v77, v78);
    (*(v73 + 16))(v91, &v111, 3, v37, ObjectType, v73);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v94);

    sub_24A50D6A4(&v108, &qword_27EF4F650, &unk_24A633E00);
    v83(v37, v39);
    sub_24A508C54(v88);
    sub_24A508C54(v91);
  }

  else
  {
    sub_24A50D6A4(&v108, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v94);
  }
}

void sub_24A551B14(void *a1, void *a2)
{
  v5 = sub_24A62E214();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v59 = a1;
  v60 = v2;
  v61 = v7;
  v13 = a2[3];
  v14 = a2[4];
  v15 = sub_24A50A204(a2, v13);
  v16 = v14[1];
  v65 = v15;
  v66 = v14 + 1;
  v67 = v13;
  v17 = v14;
  v62 = v16;
  v16(&v110, v13, v14);
  v18 = *(&v111 + 1);
  v19 = v112;
  sub_24A50A204(&v110, *(&v111 + 1));
  (*(v19 + 16))(v18, v19);
  v20 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  swift_beginAccess();
  v21 = *&v12[v20];
  if (!*(v21 + 16))
  {
    goto LABEL_6;
  }

  v22 = sub_24A515AC8(v10);
  if ((v23 & 1) == 0)
  {

LABEL_6:
    v63 = *(v64 + 8);
    v63(v10, v5);
    v88 = 0uLL;
    *v89 = 1;
    memset(&v89[8], 0, 74);
    goto LABEL_7;
  }

  v24 = *(v21 + 56) + 104 * v22;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  v102 = *v24;
  v103 = v26;
  v104 = v25;
  v27 = *(v24 + 48);
  v28 = *(v24 + 64);
  v29 = *(v24 + 80);
  v108 = *(v24 + 96);
  v106 = v28;
  v107 = v29;
  v105 = v27;
  sub_24A51C914(&v102, v117);
  v63 = *(v64 + 8);
  v63(v10, v5);

  *&v89[48] = v106;
  *&v89[64] = v107;
  *&v89[80] = v108;
  v88 = v102;
  *v89 = v103;
  *&v89[16] = v104;
  *&v89[32] = v105;
LABEL_7:
  v30 = v67;
  v31 = v62;
  v117[4] = *&v89[48];
  v117[5] = *&v89[64];
  v118 = *&v89[80];
  v117[0] = v88;
  v117[1] = *v89;
  v117[2] = *&v89[16];
  v117[3] = *&v89[32];
  sub_24A508C54(&v110);
  v31(&v102, v30, v17);
  v32 = *(&v103 + 1);
  v33 = v104;
  sub_24A50A204(&v102, *(&v103 + 1));
  (*(v33 + 24))(&v110, v32, v33);
  v34 = v110;
  v35 = v111;
  v36 = BYTE8(v111);
  sub_24A508C54(&v102);
  if (v36 == 1)
  {
  }

  else
  {
    sub_24A55B284(v34, *(&v34 + 1), v35, v36);
  }

  v37 = v61;
  v38 = v17;
  if (*v89 == 1)
  {
    v39 = v59;
    v40 = v59;
    v41 = v39;
    v42 = v36 == 1;
  }

  else
  {
    v43 = v89[81];
    sub_24A50D63C(&v88, &v102, &qword_27EF4F650, &unk_24A633E00);
    v44 = v59;
    v45 = v59;
    v42 = v43 & 1;
    v41 = v44;
  }

  sub_24A51BBD0(0.0, 1, 0, v41, v117, v42, &v90);
  *&v74 = v90;
  BYTE8(v74) = v91;
  v75 = v92;
  *&v76 = v93;
  BYTE8(v76) = v94;
  *&v77 = v95;
  WORD4(v77) = v96;
  *&v78 = v97;
  WORD4(v78) = v98;
  BYTE10(v78) = v99;
  v79 = v100;
  v80 = v101;
  v116 = v101;
  v114 = v78;
  v115 = v100;
  v112 = v76;
  v113 = v77;
  v110 = v74;
  v111 = v92;
  v46 = v62;
  v62(v71, v67, v38);
  v59 = v38;
  v47 = v72;
  v48 = v73;
  sub_24A50A204(v71, v72);
  (v48[2])(v47, v48);
  v85 = v78;
  v86 = v79;
  v87 = v80;
  v81 = v74;
  v82 = v75;
  v83 = v76;
  v84 = v77;
  swift_beginAccess();
  sub_24A51C914(&v74, &v102);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v102 = *&v12[v20];
  *&v12[v20] = 0x8000000000000000;
  sub_24A557AB0(&v110, v37, isUniquelyReferenced_nonNull_native);
  v50 = v63;
  v51 = v64 + 8;
  v63(v37, v5);
  *&v12[v20] = v102;
  swift_endAccess();
  sub_24A508C54(v71);
  v106 = v85;
  v107 = v86;
  v108 = v87;
  v102 = v81;
  v103 = v82;
  v104 = v83;
  v105 = v84;
  v52 = v60 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  v109 = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = v50;
    v64 = v51;
    v53 = *(v52 + 8);
    v54 = v37;
    ObjectType = swift_getObjectType();
    v72 = type metadata accessor for FMFindingLocalizer();
    v73 = &off_285DA5430;
    v71[0] = v12;
    v56 = v12;
    v46(v68, v67, v59);
    v57 = v69;
    v58 = v70;
    sub_24A50A204(v68, v69);
    (*(v58 + 16))(v57, v58);
    (*(v53 + 16))(v71, &v102, 3, v54, ObjectType, v53);
    swift_unknownObjectRelease();
    sub_24A51C94C(&v74);

    sub_24A50D6A4(&v88, &qword_27EF4F650, &unk_24A633E00);
    v63(v54, v5);
    sub_24A508C54(v68);
    sub_24A508C54(v71);
  }

  else
  {
    sub_24A50D6A4(&v88, &qword_27EF4F650, &unk_24A633E00);
    sub_24A51C94C(&v74);
  }
}

uint64_t sub_24A552288(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  v8 = v7;
  v185 = a6;
  ObjectType = a5;
  v170 = a3;
  v183 = a1;
  v12 = sub_24A62E214();
  v181 = *(v12 - 8);
  v182 = v12;
  MEMORY[0x28223BE20](v12);
  v180 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v179 = &v163 - v15;
  v16 = sub_24A62EB14();
  v177 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  *&v175 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v176 = &v163 - v19;
  v173 = sub_24A62EA94();
  MEMORY[0x28223BE20](v173);
  v174 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FindingEstimate(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v163 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v163 - v31;
  result = swift_unknownObjectWeakLoadStrong();
  v184 = result;
  if (!result)
  {
    return result;
  }

  v168 = v16;
  v178 = a2;
  v171 = a4;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v34 = sub_24A62E314();
  sub_24A506EB8(v34, qword_27EF5C118);
  v35 = sub_24A62E2F4();
  v36 = sub_24A62EF34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v8;
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_24A503000, v35, v36, "🧭 FMFindingLocalizer: Did update estimates", v38, 2u);
    v39 = v38;
    v8 = v37;
    MEMORY[0x24C21BBE0](v39, -1, -1);
  }

  v169 = OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType;
  v40 = *(v184 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_findingType);
  v172 = v8;
  if ((v40 & 0x6000) == 0)
  {
    v41 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
    v164 = *(*(v41 - 8) + 56);
    v164(v32, 1, 1, v41);
    if ((v178 & 0x100000000) != 0)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = *&v178;
    }

    v43 = *&v170;
    if ((v170 & 0x100000000) != 0)
    {
      v43 = 0.0;
    }

    v165 = v42;
    v166 = v43;
    if ((v183 & 0x100000000) == 0)
    {
      v44 = [objc_opt_self() meters];
      sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
      sub_24A62DFC4();
      sub_24A50D6A4(v32, &unk_27EF4FE20, &qword_24A634BA0);
      v164(v29, 0, 1, v41);
      v8 = v172;
      sub_24A55B7E0(v29, v32, &unk_27EF4FE20, &qword_24A634BA0);
    }

    v45 = v8 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v45 + 8);
      *(&v237 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v238 = &off_285DA5430;
      v47 = v184;
      *&v236 = v184;
      sub_24A50D63C(v32, v26, &unk_27EF4FE20, &qword_24A634BA0);
      if (ObjectType == 2)
      {
        v48 = 2;
      }

      else
      {
        v48 = ObjectType == 1;
      }

      ObjectType = swift_getObjectType();
      *v23 = v165;
      *(v23 + 8) = BYTE4(v178) & 1;
      sub_24A55B7E0(v26, v23 + v21[5], &unk_27EF4FE20, &qword_24A634BA0);
      *(v23 + v21[6]) = v48;
      *(v23 + v21[7]) = v171;
      v49 = v23 + v21[8];
      *v49 = v166;
      v49[8] = BYTE4(v170) & 1;
      v50 = *(v46 + 40);
      v51 = v47;
      v50(&v236, v23, ObjectType, v46);
      v8 = v172;
      swift_unknownObjectRelease();
      sub_24A55B484(v23, type metadata accessor for FindingEstimate);
      sub_24A50D6A4(v32, &unk_27EF4FE20, &qword_24A634BA0);
      sub_24A508C54(&v236);
    }

    else
    {
      sub_24A50D6A4(v32, &unk_27EF4FE20, &qword_24A634BA0);
    }
  }

  v52 = OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem;
  if (*(v8 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_updateRangeEstimateWatchdogWorkItem))
  {

    sub_24A62EB34();
  }

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24A508AE4(v185, &v198);
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  sub_24A508CA0(&v198, v54 + 24);
  *&v238 = sub_24A55B478;
  *(&v238 + 1) = v54;
  *&v236 = MEMORY[0x277D85DD0];
  *(&v236 + 1) = 1107296256;
  *&v237 = sub_24A5A8458;
  *(&v237 + 1) = &unk_285DA5528;
  _Block_copy(&v236);
  *&v192 = MEMORY[0x277D84F90];
  sub_24A55B628(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v55 = sub_24A62EB24();

  *(v8 + v52) = v55;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v56 = sub_24A62F014();
  v57 = v175;
  sub_24A62EB04();
  v58 = v176;
  sub_24A62EB54();
  v59 = *(v177 + 8);
  v60 = v57;
  v61 = v168;
  v59(*&v60, v168);
  v177 = v55;
  sub_24A62EFE4();

  v59(v58, v61);
  v62 = 0.0;
  if ((v183 & 0x100000000) == 0)
  {
    v63 = *&v183;
    if (*&v183 < 0.0)
    {
      v63 = 0.0;
    }

    v62 = v63;
  }

  v64 = v185[3];
  v65 = v185[4];
  sub_24A50A204(v185, v64);
  (*(v65 + 8))(&v192, v64, v65);
  v66 = *(&v193 + 1);
  v67 = v194;
  sub_24A50A204(&v192, *(&v193 + 1));
  v68 = v179;
  (*(v67 + 16))(v66, v67);
  v69 = v184 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_preciseDistancesByUUID;
  swift_beginAccess();
  v70 = *v69;
  if (*(*v69 + 16))
  {

    v71 = sub_24A515AC8(v68);
    if (v72)
    {
      v73 = *(v70 + 56) + 104 * v71;
      v75 = *(v73 + 16);
      v74 = *(v73 + 32);
      v236 = *v73;
      v237 = v75;
      v238 = v74;
      v76 = *(v73 + 48);
      v77 = *(v73 + 64);
      v78 = *(v73 + 80);
      LOWORD(v241[1]) = *(v73 + 96);
      v240 = v77;
      v241[0] = v78;
      v239 = v76;
      sub_24A51C914(&v236, &v198);
      v179 = *(v181 + 8);
      (v179)(v68, v182);

      *&v219[48] = v240;
      *&v219[64] = v241[0];
      *&v219[80] = v241[1];
      v218 = v236;
      *v219 = v237;
      *&v219[16] = v238;
      *&v219[32] = v239;
      goto LABEL_32;
    }

    v179 = *(v181 + 8);
    (v179)(v68, v182);
    v218 = 0uLL;
    *v219 = 1;
  }

  else
  {
    v179 = *(v181 + 8);
    (v179)(v68, v182);
    v218 = 0uLL;
    *v219 = 1;
  }

  memset(&v219[8], 0, 74);
LABEL_32:
  sub_24A508C54(&v192);
  v79 = v185[3];
  v80 = v185[4];
  sub_24A50A204(v185, v79);
  (*(v80 + 8))(&v236, v79, v80);
  v81 = *(&v237 + 1);
  v82 = v238;
  sub_24A50A204(&v236, *(&v237 + 1));
  (*(v82 + 24))(&v198, v81, v82);
  v83 = v198;
  v84 = v199;
  v85 = BYTE8(v199);
  sub_24A508C54(&v236);
  v86 = v85 == 1;
  if (v85 == 1)
  {
  }

  else
  {
    sub_24A55B284(v83, *(&v83 + 1), v84, v85);
  }

  v87 = v178;
  if ((v183 & 0x100000000) != 0)
  {
    if ((v178 & 0x100000000) != 0)
    {
      v91 = 1.79769313e308;
    }

    else
    {
      v91 = *&v178 / 3.14159265 * -180.0;
    }

    v96 = 0;
    v101 = (v178 & 0x100000000) == 0;
    v104 = fabs(v91);
    v95 = 1;
    if (v171 == 2)
    {
      v97 = 1;
    }

    else
    {
      v97 = 0;
      if (v171 == 5)
      {
LABEL_52:
        v62 = 0.0;
        v98 = 0;
        v92 = 0;
        v100 = 22.0;
        v99 = v104 <= 22.0;
        v102 = 0uLL;
        v88 = 0.0;
        v103 = 1;
        v94 = 0;
        v93 = 1;
        goto LABEL_67;
      }

      v95 = v171;
      v97 = v171 == 4;
      v96 = 1;
      if (v171 == 1)
      {
        v96 = v171 == 4;
        goto LABEL_52;
      }

      if (v171 != 3)
      {
        v96 = v171 == 4;
      }
    }

    v95 = v171 == 0;
    goto LABEL_52;
  }

  if (*v219 != 1)
  {
    v244 = v218;
    v245 = *v219;
    v247 = *&v219[24];
    v248 = *&v219[40];
    v249[0] = *&v219[56];
    *(v249 + 10) = *&v219[66];
    v246 = *&v219[8];
    v236 = v218;
    v237 = *v219;
    LOWORD(v241[1]) = *&v219[80];
    v240 = *&v219[48];
    v241[0] = *&v219[64];
    v238 = *&v219[16];
    v239 = *&v219[32];
    sub_24A51C914(&v236, &v198);
    sub_24A51ACB4(*&v62, 0, v87 | ((HIDWORD(v87) & 1) << 32), v171, &v220);
    sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);
    v86 = v235;
    v92 = v233;
    v93 = v234;
    v94 = v232;
    v95 = v231;
    v96 = v230;
    v97 = v229;
    v88 = v228;
    v98 = v227;
    v99 = v226;
    v100 = v225;
    v101 = v224;
    v91 = v223;
    v102 = v222;
    v62 = v220;
    v103 = v221;
    goto LABEL_67;
  }

  v88 = v62;
  v89 = (v62 + -1.0) / 9.0;
  v90 = fmin(v89, 1.0);
  if (v89 < 0.0)
  {
    v90 = 0.0;
  }

  if ((v178 & 0x100000000) != 0)
  {
    v91 = 1.79769313e308;
  }

  else
  {
    v91 = *&v178 / 3.14159265 * -180.0;
  }

  v105 = v90 * 45.0 + (1.0 - v90) * 20.0;
  v106 = 1.1;
  if (v85 == 1)
  {
    v107 = 1.9842;
    v108 = v171;
  }

  else
  {
    v108 = v171;
    if (qword_27EF4EA98 != -1)
    {
      *&v183 = v62;
      v175 = v90 * 45.0 + (1.0 - v90) * 20.0;
      *&v176 = 1.1;
      swift_once();
      v105 = v175;
      v106 = *&v176;
      v88 = *&v183;
    }

    v107 = *&qword_27EF5C770;
  }

  v96 = 0;
  v100 = v105 * v106;
  v101 = (v87 & 0x100000000) == 0;
  v109 = v88;
  v98 = v107 > v109;
  v110 = fabs(v91);
  v95 = 1;
  if (v108 == 2)
  {
    v97 = 1;
LABEL_65:
    v95 = v108 == 0;
    goto LABEL_66;
  }

  v97 = 0;
  if (v108 != 5)
  {
    v95 = v108;
    v97 = v108 == 4;
    v96 = 1;
    if (v108 == 1)
    {
      v96 = v108 == 4;
      goto LABEL_66;
    }

    if (v108 != 3)
    {
      v96 = v108 == 4;
    }

    goto LABEL_65;
  }

LABEL_66:
  v103 = 0;
  v92 = 0;
  v99 = v110 <= v100;
  v102 = 0uLL;
  v93 = 1;
  v94 = 0;
LABEL_67:
  *&v204 = v62;
  BYTE8(v204) = v103;
  v205 = v102;
  *&v206 = v91;
  BYTE8(v206) = v101;
  *&v207 = v100;
  BYTE8(v207) = v99;
  BYTE9(v207) = v98;
  *&v208 = v88;
  BYTE8(v208) = v97;
  BYTE9(v208) = v96;
  BYTE10(v208) = v95;
  *&v209 = v94;
  *(&v209 + 1) = v92;
  LOBYTE(v210) = v93;
  HIBYTE(v210) = v86;
  v242[0] = v204;
  v242[1] = v102;
  v243 = v210;
  v242[4] = v208;
  v242[5] = v209;
  v242[2] = v206;
  v242[3] = v207;
  v111 = v185[3];
  v112 = v185[4];
  sub_24A50A204(v185, v111);
  (*(v112 + 8))(&v198, v111, v112);
  v113 = *(&v199 + 1);
  v114 = v200;
  sub_24A50A204(&v198, *(&v199 + 1));
  v115 = v180;
  (*(v114 + 16))(v113, v114);
  v214 = v207;
  v215 = v208;
  v216 = v209;
  v217 = v210;
  v211 = v204;
  v212 = v205;
  v213 = v206;
  swift_beginAccess();
  sub_24A51C914(&v204, &v236);
  sub_24A51C914(&v204, &v236);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v236 = *v69;
  *v69 = 0x8000000000000000;
  sub_24A557AB0(v242, v115, isUniquelyReferenced_nonNull_native);
  v183 = v181 + 8;
  (v179)(v115, v182);
  *v69 = v236;
  swift_endAccess();
  sub_24A508C54(&v198);
  v117 = v184;
  v118 = v169;
  v119 = *(v184 + v169);
  v120 = (v119 >> 13) & 3;
  v121 = v172;
  if (!v120)
  {
    goto LABEL_75;
  }

  if (v120 != 1)
  {
    if ((v119 & 0x8100) == 0x100)
    {
      goto LABEL_70;
    }

LABEL_75:
    sub_24A51C94C(&v204);
    if ((*(v117 + v118) & 0x6000) != 0x2000)
    {
      v143 = v121 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v144 = *(v143 + 8);
        v181 = swift_getObjectType();
        *(&v199 + 1) = type metadata accessor for FMFindingLocalizer();
        *&v200 = &off_285DA5430;
        *&v198 = v117;
        v240 = v215;
        v241[0] = v216;
        LOWORD(v241[1]) = v217;
        v236 = v211;
        v237 = v212;
        v238 = v213;
        v239 = v214;
        BYTE2(v241[1]) = 4;
        v145 = v185[3];
        v146 = v185[4];
        sub_24A50A204(v185, v145);
        v147 = v117;
        v148 = *(v146 + 8);
        v149 = v147;
        v148(&v192, v145, v146);
        v150 = *(&v193 + 1);
        v151 = v194;
        sub_24A50A204(&v192, *(&v193 + 1));
        v152 = v180;
        (*(v151 + 16))(v150, v151);
        (*(v144 + 16))(&v198, &v236, 3, v152, v181, v144);
        swift_unknownObjectRelease();
        sub_24A51C94C(&v204);
        sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);

        (v179)(v152, v182);
        sub_24A508C54(&v192);
        return sub_24A508C54(&v198);
      }

      else
      {

        sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);

        return sub_24A51C94C(&v204);
      }
    }

    v141 = *(v117 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 98);
    if (v141 <= 1)
    {
      *&v198 = a7;
      if (v141)
      {
        v142 = 769;
      }

      else
      {
        v142 = 768;
      }
    }

    else
    {
      if (v141 != 2 && v141 != 3)
      {
        v202 = 0u;
        *v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v203[20] = 0;
        *&v203[16] = 0x4000000;
        goto LABEL_89;
      }

      *&v198 = a7;
      v142 = 770;
    }

    *&v203[18] = v142;
    v203[20] = 3;
LABEL_89:
    v240 = v202;
    v241[0] = *v203;
    *(v241 + 13) = *&v203[13];
    v236 = v198;
    v237 = v199;
    v153 = v121 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    v238 = v200;
    v239 = v201;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v154 = *(v153 + 8);
      v155 = swift_getObjectType();
      *(&v193 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v194 = &off_285DA5430;
      *&v192 = v117;
      v156 = v185[3];
      v157 = v185[4];
      sub_24A50A204(v185, v156);
      v158 = *(v157 + 8);
      v159 = v117;
      v158(v189, v156, v157);
      v160 = v190;
      v161 = v191;
      sub_24A50A204(v189, v190);
      v162 = v180;
      (v161[2])(v160, v161);
      (*(v154 + 8))(&v192, &v236, v162, v155, v154);
      swift_unknownObjectRelease();
      sub_24A517ABC(&v198);
      sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);

      sub_24A51C94C(&v204);

      (v179)(v162, v182);
      sub_24A508C54(v189);
      return sub_24A508C54(&v192);
    }

    else
    {
      sub_24A51C94C(&v204);

      sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);

      return sub_24A517ABC(&v198);
    }
  }

  v122 = sub_24A62DF44();
  *(&v237 + 1) = v122;
  *&v238 = sub_24A55B628(&qword_27EF4FE90, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v123 = sub_24A5292E8(&v236);
  (*(*(v122 - 8) + 104))(v123, *MEMORY[0x277D089D0], v122);
  LOBYTE(v122) = MEMORY[0x24C219850](&v236);
  sub_24A508C54(&v236);
  if ((v122 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_70:
  v124 = v117 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement;
  v125 = *(v117 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 98);
  if (v125 >= 4)
  {
    v202 = v215;
    *v203 = v216;
    *&v203[16] = v217;
    v198 = v211;
    v199 = v212;
    v200 = v213;
    v201 = v214;
  }

  else
  {
    sub_24A51C94C(&v204);
    *&v198 = a7;
  }

  v203[18] = v125;
  v240 = v202;
  v241[0] = *v203;
  v236 = v198;
  v237 = v199;
  v238 = v200;
  v239 = v201;
  *(v241 + 15) = *&v203[15];
  v127 = *(v124 + 1);
  v126 = *(v124 + 2);
  v192 = *v124;
  v193 = v127;
  v194 = v126;
  v129 = *(v124 + 4);
  v128 = *(v124 + 5);
  v130 = *(v124 + 3);
  *(v197 + 15) = *(v124 + 95);
  v196 = v129;
  v197[0] = v128;
  v195 = v130;
  memmove(v124, &v198, 0x63uLL);
  sub_24A55B388(&v198, v189);
  sub_24A55B3E4(&v192);
  v131 = v121 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v132 = *(v131 + 8);
    v133 = swift_getObjectType();
    v190 = type metadata accessor for FMFindingLocalizer();
    v191 = &off_285DA5430;
    v189[0] = v117;
    v134 = v185[3];
    v135 = v185[4];
    sub_24A50A204(v185, v134);
    v136 = *(v135 + 8);
    v137 = v117;
    v136(v186, v134, v135);
    v138 = v187;
    v139 = v188;
    sub_24A50A204(v186, v187);
    v140 = v180;
    (*(v139 + 16))(v138, v139);
    (*(v132 + 16))(v189, &v236, 3, v140, v133, v132);
    swift_unknownObjectRelease();
    sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);
    sub_24A55B3E4(&v198);

    sub_24A51C94C(&v204);

    (v179)(v140, v182);
    sub_24A508C54(v186);
    return sub_24A508C54(v189);
  }

  else
  {
    sub_24A51C94C(&v204);

    sub_24A50D6A4(&v218, &qword_27EF4F650, &unk_24A633E00);

    return sub_24A55B3E4(&v198);
  }
}

void sub_24A553A10(uint64_t a1, void *a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v35 = v4;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v36 = v3;
      v11 = sub_24A62E314();
      sub_24A506EB8(v11, qword_27EF5C118);
      v12 = sub_24A62E2F4();
      v13 = sub_24A62EF64();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24A503000, v12, v13, "🧭 FMFindingLocalizer: Did not update range estimate so reset state", v14, 2u);
        MEMORY[0x24C21BBE0](v14, -1, -1);
      }

      v16 = a2[3];
      v15 = a2[4];
      v17 = sub_24A50A204(a2, v16);
      v18 = *(v15 + 8);
      v33 = v17;
      v34 = v18;
      v18(v37, v16, v15);
      v19 = v38;
      v20 = v39;
      sub_24A50A204(v37, v38);
      (*(v20 + 16))(v19, v20);
      swift_beginAccess();
      v21 = sub_24A554CF0(v6, &v43);
      v35 = *(v35 + 8);
      (v35)(v6, v36, v21);
      v41[4] = v47;
      v41[5] = *v48;
      v42 = *&v48[16];
      v41[0] = v43;
      v41[1] = v44;
      v41[2] = v45;
      v41[3] = v46;
      sub_24A50D6A4(v41, &qword_27EF4F650, &unk_24A633E00);
      swift_endAccess();
      sub_24A508C54(v37);
      v22 = &v8[OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v22 + 1);
        ObjectType = swift_getObjectType();
        v40[3] = type metadata accessor for FMFindingLocalizer();
        v40[4] = &off_285DA5430;
        v40[0] = v10;
        v24 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 16];
        v23 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 32];
        v43 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement];
        v44 = v24;
        v45 = v23;
        v26 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 64];
        v25 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 80];
        v27 = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 48];
        *&v48[15] = *&v10[OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 95];
        v47 = v26;
        *v48 = v25;
        v46 = v27;
        v28 = v10;
        sub_24A55B388(&v43, v37);
        v34(v37, v16, v15);
        v29 = v38;
        v30 = v39;
        sub_24A50A204(v37, v38);
        (*(v30 + 16))(v29, v30);
        (*(v31 + 16))(v40, &v43, 3, v6, ObjectType);
        sub_24A55B3E4(&v43);

        swift_unknownObjectRelease();
        (v35)(v6, v36);
        sub_24A508C54(v37);
        sub_24A508C54(v40);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void *sub_24A553E20(__int128 *a1, uint64_t a2, void *a3)
{
  v74 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[2];
  v95 = a1[3];
  v96 = v6;
  v97[0] = v7;
  v9 = a1[1];
  v92 = *a1;
  v93 = v9;
  *(v97 + 15) = *(a1 + 95);
  v94 = v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v72 = v11;
    v73 = v10;
    v15 = *(a1 + 98);
    if (v15 == 255)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0x4000000;
    }

    else
    {
      v29 = *a1;
      v30 = *(a1 + 1);
      v31 = *(a1 + 3);
      v70 = *(a1 + 2);
      ObjectType = v29;
      v69 = v31;
      v32 = *(a1 + 4);
      v67 = *(a1 + 5);
      v68 = v32;
      v33 = *(a1 + 7);
      v66 = *(a1 + 6);
      v64 = a2;
      v65 = v33;
      v34 = *(a1 + 8);
      v61 = *(a1 + 9);
      v62 = v34;
      v35 = *(a1 + 48) | (v15 << 16);
      v36 = *(a1 + 10);
      v60 = *(a1 + 11);
      Strong = swift_unknownObjectWeakLoadStrong();
      v63 = v36;
      if (Strong)
      {
        v38 = Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement;
        v40 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 16);
        v39 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 32);
        v79 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement);
        v80 = v40;
        v81 = v39;
        v42 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 64);
        v41 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 80);
        v43 = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 48);
        *(v84 + 15) = *(Strong + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_measurement + 95);
        v83 = v42;
        v84[0] = v41;
        v82 = v43;
        v44 = v70;
        *v38 = ObjectType;
        *(v38 + 8) = v30;
        v59 = v30;
        v45 = v68;
        v46 = v69;
        *(v38 + 16) = v44;
        *(v38 + 24) = v46;
        *(v38 + 32) = v45;
        v47 = v66;
        *(v38 + 40) = v67;
        *(v38 + 48) = v47;
        v25 = v61;
        v24 = v62;
        *(v38 + 56) = v65;
        *(v38 + 64) = v24;
        *(v38 + 72) = v25;
        *(v38 + 80) = v36;
        v48 = v60;
        *(v38 + 88) = v60;
        *(v38 + 98) = BYTE2(v35);
        *(v38 + 96) = v35;
        *&v90[15] = *(v97 + 15);
        v89 = v96;
        *v90 = v97[0];
        v87 = v94;
        v88 = v95;
        v85 = v92;
        v86 = v93;
        v49 = Strong;
        sub_24A50D63C(a1, v76, &qword_27EF50210, &qword_24A635DE0);
        sub_24A55B388(&v85, v76);
        sub_24A55B3E4(&v79);

        v18 = v70;
        v16 = ObjectType;
        v17 = v59;
        v20 = v68;
        v19 = v69;
        v22 = v66;
        v21 = v67;
        v23 = v65;
        v27 = v48;
      }

      else
      {
        v89 = v96;
        *v90 = v97[0];
        *&v90[15] = *(v97 + 15);
        v85 = v92;
        v86 = v93;
        v87 = v94;
        v88 = v95;
        sub_24A55B388(&v85, &v79);
        v18 = v70;
        v16 = ObjectType;
        v17 = v30;
        v20 = v68;
        v19 = v69;
        v22 = v66;
        v21 = v67;
        v23 = v65;
        v25 = v61;
        v24 = v62;
        v27 = v60;
      }

      v26 = v63;
      v28 = v35 & 0xFFFFFFFF00FFFFFFLL | (v64 << 24) | 0x300000000;
    }

    *&v85 = v16;
    *(&v85 + 1) = v17;
    *&v86 = v18;
    *(&v86 + 1) = v19;
    *&v87 = v20;
    *(&v87 + 1) = v21;
    *&v88 = v22;
    *(&v88 + 1) = v23;
    *&v89 = v24;
    *(&v89 + 1) = v25;
    *v90 = v26;
    *&v90[8] = v27;
    *&v90[16] = v28;
    v50 = v3 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    v91 = BYTE4(v28);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v51 = *(v50 + 8);
      ObjectType = swift_getObjectType();
      *(&v80 + 1) = type metadata accessor for FMFindingLocalizer();
      *&v81 = &off_285DA5430;
      *&v79 = v14;
      v52 = v74[3];
      v53 = v74[4];
      sub_24A50A204(v74, v52);
      v54 = *(v53 + 8);
      v55 = v14;
      v54(v76, v52, v53);
      v56 = v77;
      v57 = v78;
      sub_24A50A204(v76, v77);
      v58 = v75;
      (*(v57 + 16))(v56, v57);
      (*(v51 + 8))(&v79, &v85, v58, ObjectType, v51);
      swift_unknownObjectRelease();
      sub_24A50D6A4(a1, &qword_27EF50210, &qword_24A635DE0);

      (*(v72 + 8))(v58, v73);
      sub_24A508C54(v76);
      return sub_24A508C54(&v79);
    }

    else
    {

      return sub_24A50D6A4(a1, &qword_27EF50210, &qword_24A635DE0);
    }
  }

  return result;
}