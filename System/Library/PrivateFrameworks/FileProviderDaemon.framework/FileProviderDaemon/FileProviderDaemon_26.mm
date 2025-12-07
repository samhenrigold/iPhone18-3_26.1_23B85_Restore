void sub_1CF306B48(void *a1, void (*a2)(void, id), uint64_t a3, char *a4, uint64_t a5)
{
  v443 = a5;
  v445 = a4;
  v450 = a2;
  v451 = a3;
  v6 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v403 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v433 = (&v403 - v12);
  v432 = type metadata accessor for LocalContainer(0);
  v427 = *(v432 - 8);
  MEMORY[0x1EEE9AC00](v432);
  v422 = &v403 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v428 = &v403 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v437 = &v403 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v426 = &v403 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v430 = &v403 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v442 = &v403 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v441 = &v403 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v444 = &v403 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v440 = &v403 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v449 = &v403 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v434 = &v403 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v403 - v35;
  v435 = sub_1CF9E5A58();
  v447 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435);
  v424 = &v403 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v429 = &v403 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v448 = &v403 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v439 = &v403 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v438 = &v403 - v45;
  v431 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v431);
  v425 = &v403 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v423 = &v403 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v436 = (&v403 - v50);
  v51 = *MEMORY[0x1E6967258];
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  v446 = v51;
  v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v55;
  if (v52 == v56 && v54 == v55)
  {
    goto LABEL_3;
  }

  v70 = sub_1CF9E8048();
  v54, v71, v72, v73, v74, v75, v76, v77;
  v62, v78, v79, v80, v81, v82, v83, v84;
  if (v70)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v86 = v85;
  v87 = sub_1CF9E6AE8();
  v86, v88, v89, v90, v91, v92, v93, v94;
  if (v87)
  {
    goto LABEL_6;
  }

  v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v97;
  v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v55;
  if (v96 == v56 && v54 == v55)
  {
LABEL_3:
    v54, v55, v56, v57, v58, v59, v60, v61;
    v62, v63, v64, v65, v66, v67, v68, v69;
LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v95 = sub_1CF9E50D8();
    (*(v8 + 8))(v10, v7);
LABEL_7:
    v450(0, v95);

    return;
  }

  v98 = sub_1CF9E8048();
  v54, v99, v100, v101, v102, v103, v104, v105;
  v62, v106, v107, v108, v109, v110, v111, v112;
  if (v98)
  {
    goto LABEL_6;
  }

  v413 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v113 = v436;
  sub_1CEFFD30C(&v445[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v436, type metadata accessor for LocalDomain);
  v114 = a1;
  v115 = sub_1CEFFD444(v114, v113);
  if (!v115)
  {
    v249 = sub_1CF9E6888();
    v95 = FPInvalidParameterError();

    goto LABEL_7;
  }

  v409 = v114;
  v116 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  v117 = v115;
  swift_beginAccess();
  v415 = v117;
  v414 = v116;
  sub_1CEFCCBDC(&v117[v116], v36, &unk_1EC4BE310, qword_1CF9FCBE0);
  v118 = v447;
  v120 = v447 + 48;
  v119 = *(v447 + 48);
  v121 = v435;
  if (v119(v36, 1, v435) == 1)
  {
    goto LABEL_82;
  }

  v122 = *(v118 + 32);
  v417 = v118 + 32;
  v416 = v122;
  v122(v438, v36, v121);
  v124 = *(v118 + 56);
  v123 = v118 + 56;
  v125 = v434;
  v419 = v124;
  v124(v434, 1, 1, v121);
  v126 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
  v418 = (v123 - 48);
  v127 = v449;
  sub_1CEFCCBDC(v125, v449, &unk_1EC4BE310, qword_1CF9FCBE0);
  v421 = v119;
  v420 = v120;
  v128 = v119(v127, 1, v121);
  sub_1CEFCCC44(v127, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v128 != 1)
  {
    goto LABEL_71;
  }

  v129 = 0;
  v130 = v415;
  v412 = &v415[v126];
  v406 = (v123 - 40);
  v408 = (v427 + 56);
  v405 = &v455;
  v404 = (v427 + 48);
  v447 = v123;
  while (v129 <= 1)
  {
    v133 = v448;
    if (!v129)
    {
      if (v443)
      {
        v134 = v437;
        sub_1CEFFD89C(&v445[v413], 1u, v443, v437);
        sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
        v136 = (*(*(v135 - 8) + 48))(v134, 1, v135);
        v137 = v440;
        if (v136 == 1)
        {
          sub_1CEFCCC44(v134, &qword_1EC4BF5F8, &qword_1CFA01DB8);
          goto LABEL_35;
        }

        v190 = *(v135 + 48);
        v416(v440, v134, v121);
        v419(v137, 0, 1, v121);
        sub_1CEFCCC44(&v134[v190], &unk_1EC4BEC00, &unk_1CF9FCB60);
      }

      else
      {
        sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
        v137 = v440;
LABEL_35:
        v419(v137, 1, 1, v121);
      }

      sub_1CEFE55D0(v137, v125, &unk_1EC4BE310, qword_1CF9FCBE0);
      v129 = 1;
      goto LABEL_16;
    }

    v142 = v441;
    sub_1CEFCCBDC(v130 + v414, v441, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v421(v142, 1, v121) == 1)
    {
      sub_1CEFCCC44(v142, &unk_1EC4BE310, qword_1CF9FCBE0);
      aBlock = 0;
      v454 = 0xE000000000000000;
      sub_1CF9E7948();
      v454, v383, v384, v385, v386, v387, v388, v389;
      aBlock = 0x20676E697373696DLL;
      v454 = 0xEF206E6F204C5255;
      v390 = [v130 description];
      v391 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v393 = v392;

      MEMORY[0x1D3868CC0](v391, v393);
      v393, v394, v395, v396, v397, v398, v399, v400;
      LODWORD(v402) = 0;
      p_aBlock = 608;
      sub_1CF9E7B68();
      __break(1u);
LABEL_86:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
    }

    v143 = (v416)(v133, v142, v121);
    aBlock = 0;
    v454 = 0;
    MEMORY[0x1EEE9AC00](v143);
    p_aBlock = &aBlock;
    v144 = sub_1CF9E5848();
    if ((v144 & 1) == 0)
    {
      goto LABEL_84;
    }

    MEMORY[0x1EEE9AC00](v144);
    p_aBlock = sub_1CF3262F8;
    v402 = (&v403 - 4);
    v145 = v452;
    sub_1CF9E59B8();
    if (v145)
    {
      v427 = *v418;
      v427(v133, v121);

      v454, v146, v147, v148, v149, v150, v151, v152;
      v452 = 0;
LABEL_29:
      v153 = 1;
      v130 = v415;
      goto LABEL_30;
    }

    v452 = 0;
    v159 = v454;
    if (!v454)
    {
      v427 = *v418;
      v427(v133, v121);
      goto LABEL_29;
    }

    v160 = aBlock;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
    }

    if ((sub_1CF9E5848() & 1) == 0)
    {
      goto LABEL_87;
    }

    sub_1CF9E5A18();
    v162 = v161;
    v163 = sub_1CF9E6AE8();
    v162, v164, v165, v166, v167, v168, v169, v170;
    v411 = v159;
    v410 = v160;
    if (v163)
    {
      v171 = sub_1CF9E5A18();
      v173 = v172;
      aBlock = 0x657461766972702FLL;
      v454 = 0xE800000000000000;
      MEMORY[0x1D3868CC0](v171);
      v173, v174, v175, v176, v177, v178, v179, v180;
      v181 = v454;
      v182 = v429;
      sub_1CF9E58C8();
      v181, v183, v184, v185, v186, v187, v188, v189;
    }

    else
    {
      v182 = v429;
      (*v406)(v429, v133, v121);
    }

    v191 = sub_1CF9E5A18();
    v193 = v192;
    v427 = *v418;
    v427(v182, v121);
    v194 = v412;
    sub_1CF9E5A18();
    v196 = v195;
    v407 = v191;
    v197 = sub_1CF9E6AE8();
    v196, v198, v199, v200, v201, v202, v203, v204;
    if (v197)
    {
      v193, v205, v206, v207, v208, v209, v210, v211;
      v212 = v436;
      sub_1CEFFD30C(v194, v436, type metadata accessor for LocalDomain);
      v213 = v433;
      sub_1CF000318(v212, v433);
      (*v408)(v213, 0, 1, v432);
      v125 = v434;
    }

    else
    {
      (*v408)(v433, 1, 1, v432);
      v214 = type metadata accessor for LocalContainerMonitor(0);
      if (qword_1EDEA56B8 != -1)
      {
        v214 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v214);
      v215 = v412;
      v216 = v452;
      v217 = sub_1CF9E7398();
      v452 = v216;
      v403 = &v403;
      v218 = aBlock;
      MEMORY[0x1EEE9AC00](v217);
      *(&v403 - 4) = v407;
      *(&v403 - 3) = v193;
      p_aBlock = v433;
      v402 = v215;
      v219 = *&v218[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
      v220 = swift_allocObject();
      v220[2] = v218;
      v220[3] = sub_1CF326300;
      v220[4] = &v403 - 6;
      v221 = swift_allocObject();
      *(v221 + 16) = sub_1CF32630C;
      *(v221 + 24) = v220;
      v457 = sub_1CEFFD054;
      v458 = v221;
      aBlock = MEMORY[0x1E69E9820];
      v454 = 1107296256;
      v455 = sub_1CEFFD02C;
      v456 = &block_descriptor_130;
      v222 = _Block_copy(&aBlock);
      v223 = v218;

      dispatch_sync(v219, v222);

      v193, v224, v225, v226, v227, v228, v229, v230;
      _Block_release(v222);
      LOBYTE(v219) = swift_isEscapingClosureAtFileLocation();

      if (v219)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
      }

      v213 = v433;
      v231 = (*v404)(v433, 1, v432);
      v121 = v435;
      v125 = v434;
      v133 = v448;
      if (v231 == 1)
      {
        v427(v448, v435);
        v411, v232, v233, v234, v235, v236, v237, v238;
        sub_1CEFCCC44(v213, &unk_1EC4C1110, &qword_1CFA08100);
        v153 = 1;
        v130 = v415;
        goto LABEL_30;
      }
    }

    v130 = v415;
    v239 = v213;
    v240 = v428;
    sub_1CEFFC48C(v239, v428, type metadata accessor for LocalContainer);
    v241 = v411;
    sub_1CF9E5958();
    v241, v242, v243, v244, v245, v246, v247, v248;
    sub_1CF007BF8(v240, type metadata accessor for LocalContainer);
    v427(v133, v121);
    v153 = 0;
LABEL_30:
    v154 = v444;
    v419(v444, v153, 1, v121);
    v155 = v421(v154, 1, v121);
    v156 = v439;
    if (v155 == 1)
    {
      sub_1CEFCCC44(v154, &unk_1EC4BE310, qword_1CF9FCBE0);
      v129 = 2;
    }

    else
    {
      v416(v439, v154, v121);
      v157 = sub_1CF9E5848();
      if ((v157 & 1) == 0)
      {
        goto LABEL_86;
      }

      MEMORY[0x1EEE9AC00](v157);
      LODWORD(p_aBlock) = 4;
      v158 = v452;
      sub_1CF9E59B8();
      if (v158)
      {

        v427(v156, v121);
        v452 = 0;
LABEL_58:
        v129 = 2;
        goto LABEL_16;
      }

      v452 = 0;
      if ((aBlock & 1) == 0)
      {
        v427(v156, v121);
        goto LABEL_58;
      }

      sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
      v416(v125, v156, v121);
      v419(v125, 0, 1, v121);
      v129 = 2;
    }

LABEL_16:
    v131 = v449;
    sub_1CEFCCBDC(v125, v449, &unk_1EC4BE310, qword_1CF9FCBE0);
    v132 = v421(v131, 1, v121);
    sub_1CEFCCC44(v131, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v132 != 1)
    {
      goto LABEL_72;
    }
  }

  if (v129 == 2)
  {
    v138 = sub_1CF4F1CC8();
    sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v138)
    {
      v139 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
      swift_beginAccess();
      v140 = v138 + v139;
      v141 = v442;
      sub_1CEFCCBDC(v140, v442, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v141 = v442;
      v419(v442, 1, 1, v121);
    }

    sub_1CEFE55D0(v141, v125, &unk_1EC4BE310, qword_1CF9FCBE0);
    v129 = 3;
    goto LABEL_16;
  }

  v250 = v423;
  sub_1CEFFD30C(&v445[v413], v423, type metadata accessor for LocalDomain);
  v251 = *v406;
  (*v406)(v424, (v250 + *(v431 + 32)), v121);
  sub_1CEFFD30C(v250, v425, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v253 = v252;
  LOBYTE(v250) = sub_1CF9E6AE8();
  v253, v254, v255, v256, v257, v258, v259, v260;
  v261 = v422;
  if ((v250 & 1) == 0)
  {
    v262 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v264 = v263;
    v266 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v272 = v262;
    v273 = v265;
    if (v272 == v266 && v264 == v265)
    {
      v264, v265, v266, v267, v268, v269, v270, v271;
      v273, v274, v275, v276, v277, v278, v279, v280;
    }

    else
    {
      v281 = sub_1CF9E8048();
      v264, v282, v283, v284, v285, v286, v287, v288;
      v273, v289, v290, v291, v292, v293, v294, v295;
      if ((v281 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  v296 = v424;
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  *(v261 + 1) = 0;
  *(v261 + 2) = 0;
  v297 = v446;
  *v261 = v446;
  v298 = v432;
  sub_1CEFFD30C(v425, &v261[*(v432 + 24)], type metadata accessor for LocalDomain);
  v299 = v297;
  if ((sub_1CF9E5848() & 1) == 0)
  {
LABEL_87:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
  }

  v300 = v296;
  v301 = *(v298 + 28);
  sub_1CF9E5A18();
  v303 = v302;
  v304 = sub_1CF9E6AE8();
  v303, v305, v306, v307, v308, v309, v310, v311;
  if (v304)
  {
    v312 = sub_1CF9E5A18();
    v314 = v313;
    aBlock = 0x657461766972702FLL;
    v454 = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v312);
    v314, v315, v316, v317, v318, v319, v320, v321;
    v322 = v454;
    sub_1CF9E58C8();
    v322, v323, v324, v325, v326, v327, v328, v329;
    sub_1CF007BF8(v425, type metadata accessor for LocalDomain);
    (*v418)(v300, v121);
    sub_1CF007BF8(v423, type metadata accessor for LocalDomain);
  }

  else
  {
    sub_1CF007BF8(v425, type metadata accessor for LocalDomain);
    sub_1CF007BF8(v423, type metadata accessor for LocalDomain);
    v416(&v261[v301], v300, v121);
  }

  v261[*(v432 + 32)] = 1;
  sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
  v251(v125, &v261[v301], v121);
  sub_1CF007BF8(v261, type metadata accessor for LocalContainer);
  v419(v125, 0, 1, v121);
LABEL_71:
  v130 = v415;
LABEL_72:
  v330 = v430;
  sub_1CEFCCBDC(v125, v430, &unk_1EC4BE310, qword_1CF9FCBE0);
  v331 = v421;
  v332 = v421(v330, 1, v121);
  sub_1CEFCCC44(v330, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v332 == 1)
  {
    aBlock = 0;
    v454 = 0xE000000000000000;
    sub_1CF9E7948();
    v454, v333, v334, v335, v336, v337, v338, v339;
    aBlock = 0xD000000000000027;
    v454 = 0x80000001CFA3F4B0;
    v340 = [v130 description];
    v341 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v342 = v130;
    v344 = v343;

    MEMORY[0x1D3868CC0](v341, v344);
    v344, v345, v346, v347, v348, v349, v350, v351;
    v352 = aBlock;
    v353 = v454;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v354 = qword_1EDEBB5A0;
    v355 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v356 = swift_allocObject();
    *(v356 + 16) = xmmword_1CF9FA450;
    *(v356 + 56) = MEMORY[0x1E69E6158];
    *(v356 + 64) = sub_1CEFD51C4();
    *(v356 + 32) = v352;
    *(v356 + 40) = v353;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v354, v355, v356);
    v356, v357, v358, v359, v360, v361, v362, v363;
    v364 = sub_1CF9E6888();
    v365 = FPInvalidParameterError();

    v450(0, v365);
    sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
    (*v418)(v438, v121);
  }

  else
  {
    v449 = sub_1CF9E5928();
    v366 = v426;
    sub_1CEFCCBDC(v125, v426, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v331(v366, 1, v121) == 1)
    {
      goto LABEL_83;
    }

    v367 = v121;
    v368 = sub_1CF9E5928();
    v369 = *v418;
    (*v418)(v366, v367);
    v370 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v371 = sub_1CF9E6888();
    v372 = [v370 initWithSuiteName_];

    if (v372)
    {
      v373 = sub_1CF9E6888();
      v374 = [v372 BOOLForKey_];

      v375 = v374 ^ 1;
    }

    else
    {
      v375 = 1;
    }

    v376 = swift_allocObject();
    v377 = v445;
    v378 = v450;
    v379 = v451;
    v376[2] = v445;
    v376[3] = v378;
    v376[4] = v379;
    v457 = sub_1CF326318;
    v458 = v376;
    aBlock = MEMORY[0x1E69E9820];
    v454 = 1107296256;
    v455 = sub_1CF90535C;
    v456 = &block_descriptor_136;
    v380 = _Block_copy(&aBlock);
    v381 = v377;

    v382 = v449;
    [v449 fp:v368 reparentUnderFolder:1 allowBouncing:v375 allowCoordination:v380 completionHandler:?];
    _Block_release(v380);

    sub_1CEFCCC44(v125, &unk_1EC4BE310, qword_1CF9FCBE0);
    v369(v438, v435);
  }
}

void sub_1CF308AA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  if (a2)
  {
    swift_getErrorValue();
    v26 = sub_1CF7DBA58(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v62, v63);
    v27 = v26;
LABEL_3:
    v60(0, v27);
LABEL_9:

    return;
  }

  sub_1CEFCCBDC(v59, &v56 - v24, &unk_1EC4BE310, qword_1CF9FCBE0);
  v57 = *(v11 + 48);
  v58 = v11 + 48;
  if (v57(v25, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1CEFFD30C(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v19, type metadata accessor for LocalDomain);
    (*(v11 + 16))(v13, v25, v10);
    sub_1CEFFD30C(v19, v16, type metadata accessor for LocalDomain);
    v28 = type metadata accessor for VFSItem(0);
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v30 = sub_1CF001704(v13, v16, v9);
    sub_1CF007BF8(v19, type metadata accessor for LocalDomain);
    v31 = *(v11 + 8);
    v31(v25, v10);
    if (v30)
    {
      sub_1CF4F1D38();
      v64 = 2113085;
      v65 = 0xE300000000000000;
      v32 = [v30 description];
      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;

      MEMORY[0x1D3868CC0](v33, v35);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v43 = v64;
      v44 = v65;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDEBB5A0;
      v46 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1CF9FA450;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = sub_1CEFD51C4();
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v45, v46, v47);
      v47, v48, v49, v50, v51, v52, v53, v54;
      v26 = v30;
      v60(v30, 0);

      goto LABEL_9;
    }

    sub_1CEFCCBDC(v59, v22, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v57(v22, 1, v10) != 1)
    {
      v55 = sub_1CF9E5928();
      v31(v22, v10);
      v26 = FPInvalidURLError();

      v27 = v26;
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1CF309098(uint64_t a1, char *a2, void (**a3)(const void *, void *))
{
  v174 = a2;
  v5 = type metadata accessor for FSDirectoryEnumerator(0);
  v6 = *(v5 - 8);
  v167 = v5;
  v168 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v169 = v7;
  v170 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v175 = (&v163 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  *&v173 = &v163 - v13;
  v176 = sub_1CF9E5A58();
  v14 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v166 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v163 - v17;
  v18 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_1CF9E5268();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = swift_allocObject();
  v178 = a3;
  *(v177 + 16) = a3;
  v23 = a1;
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;
  if (v24 == v27 && v26 == v28)
  {
    v30 = v178;
    _Block_copy(v178);
    v26, v31, v32, v33, v34, v35, v36, v37;
    v29, v38, v39, v40, v41, v42, v43, v44;
LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v60 = sub_1CF9E50D8();
    (*(v20 + 8))(v22, v19);
    v61 = sub_1CF9E57E8();
    v30[2](v30, v61);

LABEL_6:
    v62 = v30;
LABEL_7:
    _Block_release(v62);
    return;
  }

  v165 = v14;
  v45 = sub_1CF9E8048();
  v30 = v178;
  _Block_copy(v178);
  v26, v46, v47, v48, v49, v50, v51, v52;
  v29, v53, v54, v55, v56, v57, v58, v59;
  if (v45)
  {
    goto LABEL_5;
  }

  v63 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v64 = v172;
  sub_1CEFFD89C(&v174[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1u, v23, v172);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    sub_1CEFCCC44(v64, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v66 = v173;
    (*(v165 + 56))(v173, 1, 1, v176);
LABEL_11:
    sub_1CEFCCC44(v66, &unk_1EC4BE310, qword_1CF9FCBE0);
    v71 = FPItemNotFoundError();
    if (v71)
    {
      v72 = sub_1CF9E57E8();
    }

    else
    {
      v72 = 0;
    }

    v73 = v178;
    v178[2](v178, v72);

    v62 = v73;
    goto LABEL_7;
  }

  v67 = *(v65 + 48);
  v68 = v165;
  v69 = *(v165 + 32);
  v66 = v173;
  v70 = v176;
  v69(v173, v64, v176);
  (*(v68 + 56))(v66, 0, 1, v70);
  sub_1CEFCCC44(&v64[v67], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v68 + 48))(v66, 1, v70) == 1)
  {
    goto LABEL_11;
  }

  v74 = v171;
  v69(v171, v66, v70);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v75;
  v77 = sub_1CF9E6AE8();
  v76, v78, v79, v80, v81, v82, v83, v84;
  if ((v77 & 1) == 0)
  {
    v152 = sub_1CF9E5928();
    v153 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v154 = sub_1CF9E6888();
    v155 = [v153 initWithSuiteName_];

    if (v155)
    {
      v156 = sub_1CF9E6888();
      v157 = [v155 BOOLForKey_];

      v158 = v157 ^ 1;
    }

    else
    {
      v158 = 1;
    }

    v30 = v178;
    v159 = swift_allocObject();
    v160 = v177;
    *(v159 + 16) = sub_1CF067718;
    *(v159 + 24) = v160;
    v184 = sub_1CF326E6C;
    v185 = v159;
    aBlock = MEMORY[0x1E69E9820];
    v181 = 1107296256;
    v182 = sub_1CF00A468;
    v183 = &block_descriptor_246;
    v161 = _Block_copy(&aBlock);

    [v152 fp:v158 deleteAllowingCoordination:v161 completionHandler:?];
    _Block_release(v161);

    (*(v165 + 8))(v74, v176);

    goto LABEL_6;
  }

  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v87 = v86;
  v88 = sub_1CF4F5F14(1uLL, v85, v86);
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v87, v89, v91, v93, v95, v96, v97, v98;
  v99 = MEMORY[0x1D3868C10](v88, v90, v92, v94);
  v101 = v100;
  v94, v100, v102, v103, v104, v105, v106, v107;
  aBlock = 0;
  v181 = 0xE000000000000000;
  sub_1CF9E7948();
  v181, v108, v109, v110, v111, v112, v113, v114;
  aBlock = 0xD000000000000012;
  v181 = 0x80000001CFA3F7C0;
  MEMORY[0x1D3868CC0](v99, v101);
  v101, v115, v116, v117, v118, v119, v120, v121;
  MEMORY[0x1D3868CC0](0x20656874206F7420, 0xED00006873617274);
  v122 = aBlock;
  v123 = v181;
  if (qword_1EDEA3408 != -1)
  {
LABEL_31:
    swift_once();
  }

  v124 = qword_1EDEBB5A0;
  v125 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v126 = swift_allocObject();
  v173 = xmmword_1CF9FA450;
  *(v126 + 16) = xmmword_1CF9FA450;
  *(v126 + 56) = MEMORY[0x1E69E6158];
  *(v126 + 64) = sub_1CEFD51C4();
  *(v126 + 32) = v122;
  *(v126 + 40) = v123;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v124, v125, v126);
  v126, v127, v128, v129, v130, v131, v132, v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v134 = v165;
  v135 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v164 = *(v165 + 72);
  v122 = swift_allocObject();
  *(v122 + 16) = v173;
  v136 = v122 + v135;
  v123 = v176;
  v172 = *(v134 + 16);
  *&v173 = v134 + 16;
  (v172)(v122 + v135, v74, v176);
  v137 = v167;
  v138 = v175;
  v139 = v174;
  sub_1CEFFD30C(&v174[v63], v175 + v167[5], type metadata accessor for LocalDomain);
  v140 = (v138 + v137[9]);
  *v140 = 0;
  v140[1] = 0;
  *v138 = v122;
  *(v138 + v137[6]) = 0;
  *(v138 + v137[7]) = 0;
  *(v138 + v137[8]) = -1;
  v141 = swift_allocObject();
  *(v141 + 2) = v139;
  v142 = v170;
  sub_1CEFFD30C(v138, v170, type metadata accessor for FSDirectoryEnumerator);
  v143 = (*(v168 + 80) + 16) & ~*(v168 + 80);
  v144 = (v169 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = swift_allocObject();
  sub_1CEFFC48C(v142, v145 + v143, type metadata accessor for FSDirectoryEnumerator);
  v146 = (v145 + v144);
  *v146 = sub_1CF326E74;
  v146[1] = v141;
  aBlock = 0;
  v186 = 1;
  v63 = *(v122 + 16);
  v147 = v174;
  v174 = v141;

  if (!v63)
  {
LABEL_29:

    v162 = v178;
    v178[2](v178, 0);
    sub_1CF007BF8(v175, type metadata accessor for FSDirectoryEnumerator);
    (*(v165 + 8))(v171, v123);

    v62 = v162;
    goto LABEL_7;
  }

  v74 = 0;
  v148 = (v165 + 8);
  v149 = v166;
  while (1)
  {
    if (v74 >= *(v122 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    (v172)(v149, v136, v123);
    if ((v186 & 1) == 0)
    {
      (*v148)(v149, v123);
      goto LABEL_29;
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v150 = objc_autoreleasePoolPush();
    MEMORY[0x1EEE9AC00](v150);
    *(&v163 - 8) = v149;
    *(&v163 - 7) = &aBlock;
    *(&v163 - 6) = v175;
    *(&v163 - 5) = &v186;
    *(&v163 - 4) = 7;
    *(&v163 - 3) = sub_1CF326E94;
    *(&v163 - 2) = v145;
    *(&v163 - 8) = 1;
    v151 = v179;
    sub_1CF9E59B8();
    v179 = v151;
    if (v151)
    {
      break;
    }

    ++v74;
    objc_autoreleasePoolPop(v150);
    v123 = v176;
    (*v148)(v149, v176);
    v136 += v164;
    if (v63 == v74)
    {
      goto LABEL_29;
    }
  }

  _Block_release(v178);
  objc_autoreleasePoolPop(v150);
  (*v148)(v149, v176);
  __break(1u);
}

uint64_t sub_1CF309DD8(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_semaphore_create(0);
  sub_1CF31A1E8(*(a1 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier), a2, v4);
  sub_1CF9E74A8();

  return 1;
}

uint64_t sub_1CF309E44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = [objc_opt_self() defaultManager];
    v5 = *MEMORY[0x1E6967298];
    v8[4] = nullsub_1;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1CF00A468;
    v8[3] = &block_descriptor_270;
    v6 = _Block_copy(v8);
    [v4 signalEnumeratorForContainerItemIdentifier:v5 completionHandler:v6];
    _Block_release(v6);

    a1 = v3;
  }

  return a2(a1);
}

void sub_1CF309F84(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a1;
  sub_1CF31A77C(v13, v14, v12, a5, a6, a7);
  _Block_release(v12);
  _Block_release(v12);
}

void sub_1CF30A030(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v234 = a4;
  v226 = a3;
  v230 = a2;
  v5 = sub_1CF9E53C8();
  v224 = *(v5 - 8);
  v225 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v221 = &v216 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v220 = &v216 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v219 = &v216 - v10;
  v11 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v217 = (&v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v218 = &v216 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v216 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v228 = &v216 - v19;
  v229 = sub_1CF9E5A58();
  v231 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v222 = &v216 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v223 = &v216 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v227 = &v216 - v24;
  v25 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v26 = sub_1CF9E5268();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v216 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = a1;
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v40 = v33;
  if (v30 == v34 && v32 == v33)
  {
    goto LABEL_3;
  }

  v48 = sub_1CF9E8048();
  v32, v49, v50, v51, v52, v53, v54, v55;
  v40, v56, v57, v58, v59, v60, v61, v62;
  if (v48)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v64 = v63;
  v65 = sub_1CF9E6AE8();
  v64, v66, v67, v68, v69, v70, v71, v72;
  if (v65)
  {
    goto LABEL_6;
  }

  v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v77;
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v40 = v33;
  if (v76 == v34 && v32 == v33)
  {
LABEL_3:
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40, v41, v42, v43, v44, v45, v46, v47;
LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v73 = sub_1CF9E50D8();
    (*(v27 + 8))(v29, v26);
    v74 = sub_1CF9E57E8();
    v75 = v234;
    (v234)[2](v234, 0, v74);

    goto LABEL_7;
  }

  v78 = sub_1CF9E8048();
  v32, v79, v80, v81, v82, v83, v84, v85;
  v40, v86, v87, v88, v89, v90, v91, v92;
  if (v78)
  {
    goto LABEL_6;
  }

  v93 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v230 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v232, v17);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v94 - 8) + 48))(v17, 1, v94) == 1)
  {
    sub_1CEFCCC44(v17, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v95 = v228;
    (*(v231 + 56))(v228, 1, 1, v229);
LABEL_14:
    sub_1CEFCCC44(v95, &unk_1EC4BE310, qword_1CF9FCBE0);
    v104 = FPItemNotFoundError();
    if (v104)
    {
      v105 = sub_1CF9E57E8();
    }

    else
    {
      v105 = 0;
    }

    v75 = v234;
    (v234)[2](v234, 0, v105);

    goto LABEL_7;
  }

  v96 = *(v94 + 48);
  v97 = v231;
  v98 = *(v231 + 32);
  v99 = v228;
  v100 = v229;
  v98(v228, v17, v229);
  (*(v97 + 56))(v99, 0, 1, v100);
  v101 = &v17[v96];
  v95 = v99;
  sub_1CEFCCC44(v101, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v102 = (*(v97 + 48))(v99, 1, v100);
  v103 = v233;
  if (v102 == 1)
  {
    goto LABEL_14;
  }

  v106 = v227;
  v107 = (v98)(v227, v95, v100);
  MEMORY[0x1EEE9AC00](v107);
  *(&v216 - 2) = v226;
  v108 = sub_1CF9E5848();
  if ((v108 & 1) == 0)
  {
    _Block_release(v234);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v108);
  *(&v216 - 2) = sub_1CF326E64;
  *(&v216 - 1) = (&v216 - 4);
  sub_1CF9E59B8();
  if (v103)
  {
    v235 = 0;
    v236 = 0xE000000000000000;
    sub_1CF9E7948();
    v236, v109, v110, v111, v112, v113, v114, v115;
    v235 = 0xD00000000000001CLL;
    v236 = 0x80000001CFA3F7A0;
    sub_1CF9E5A18();
    v117 = v116;
    v118 = sub_1CF9E6888();
    v117, v119, v120, v121, v122, v123, v124, v125;
    v126 = [v118 fp_prettyPath];

    v127 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v129 = v128;

    MEMORY[0x1D3868CC0](v127, v129);
    v129, v130, v131, v132, v133, v134, v135, v136;
    v138 = v235;
    v137 = v236;
    v235 = v103;
    v139 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v140 = v220;
    v141 = v225;
    if (swift_dynamicCast())
    {
      v142 = *(v224 + 8);
      v224 += 8;
      v142(v140, v141);
      v235 = v103;
      v143 = v103;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v144 = sub_1CF9E6148();
      if (sub_1CF008830(v144, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v145 = qword_1EDEBB5A0;
        v146 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_1CF9FA440;
        *(v147 + 56) = MEMORY[0x1E69E6158];
        *(v147 + 64) = sub_1CEFD51C4();
        *(v147 + 32) = v138;
        *(v147 + 40) = v137;
        v148 = v225;
        v149 = v221;
        sub_1CF9E57A8();
        v150 = sub_1CF9E6148();
        v151 = MEMORY[0x1E69E7358];
        *(v147 + 96) = MEMORY[0x1E69E72F0];
        *(v147 + 104) = v151;
        *(v147 + 72) = v150;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v145, v146, v147);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v205 = qword_1EDEBB5A0;
        v206 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_1CF9FA440;
        *(v147 + 56) = MEMORY[0x1E69E6158];
        *(v147 + 64) = sub_1CEFD51C4();
        *(v147 + 32) = v138;
        *(v147 + 40) = v137;
        v148 = v225;
        v149 = v221;
        sub_1CF9E57A8();
        v207 = sub_1CF9E6148();
        v208 = MEMORY[0x1E69E7358];
        *(v147 + 96) = MEMORY[0x1E69E72F0];
        *(v147 + 104) = v208;
        *(v147 + 72) = v207;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v205, v206, v147);
      }

      v147, v152, v153, v154, v155, v156, v157, v158;
      v142(v149, v148);
      v100 = v229;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v194 = qword_1EDEBB5A0;
      v195 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_1CF9FA440;
      *(v196 + 56) = MEMORY[0x1E69E6158];
      *(v196 + 64) = sub_1CEFD51C4();
      *(v196 + 32) = v138;
      *(v196 + 40) = v137;
      v197 = sub_1CF9E57E8();
      *(v196 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v196 + 104) = sub_1CF326DD0();
      *(v196 + 72) = v197;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v194, v195, v196);
      v196, v198, v199, v200, v201, v202, v203, v204;
    }

    v209 = v231;
    v210 = v227;
    v211 = v103;
    v212 = sub_1CF9E57E8();
    v75 = v234;
    (v234)[2](v234, 0, v212);

    (*(v209 + 8))(v210, v100);
  }

  else
  {
    v159 = *(v97 + 16);
    v160 = v223;
    v159(v223, v106, v100);
    v161 = v230 + v93;
    v162 = v218;
    sub_1CEFFD30C(v161, v218, type metadata accessor for LocalDomain);
    v159(v222, v160, v100);
    v163 = v217;
    sub_1CEFFD30C(v162, v217, type metadata accessor for LocalDomain);
    v164 = type metadata accessor for VFSItem(0);
    v165 = v219;
    (*(*(v164 - 8) + 56))(v219, 1, 1, v164);
    v166 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v167 = sub_1CF001704(v222, v163, v165);
    sub_1CF007BF8(v162, type metadata accessor for LocalDomain);
    v170 = *(v97 + 8);
    v169 = v97 + 8;
    v168 = v170;
    v170(v223, v100);
    if (v167)
    {
      v231 = v169;
      v235 = 2113085;
      v236 = 0xE300000000000000;
      v171 = [v167 description];
      v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v174 = v173;

      MEMORY[0x1D3868CC0](v172, v174);
      v174, v175, v176, v177, v178, v179, v180, v181;
      v182 = v235;
      v183 = v236;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v184 = qword_1EDEBB5A0;
      v185 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_1CF9FA450;
      *(v186 + 56) = MEMORY[0x1E69E6158];
      *(v186 + 64) = sub_1CEFD51C4();
      *(v186 + 32) = v182;
      *(v186 + 40) = v183;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v184, v185, v186);
      v186, v187, v188, v189, v190, v191, v192, v193;
      v75 = v234;
      (v234)[2](v234, v167, 0);

      v168(v227, v100);
    }

    else
    {
      v213 = sub_1CF9E5928();
      v214 = FPInvalidURLError();

      if (v214)
      {
        v215 = sub_1CF9E57E8();
      }

      else
      {
        v215 = 0;
      }

      v75 = v234;
      (v234)[2](v234, 0, v215);

      v168(v106, v100);
    }
  }

LABEL_7:
  _Block_release(v75);
}

uint64_t sub_1CF30B018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1CEFCCBDC(a2, &v11 - v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v8 = sub_1CF9E5C48();
    (*(v7 + 8))(v5, v6);
  }

  UsedDate = FPFileMetadataSetLastUsedDate();

  return (UsedDate - 1);
}

void sub_1CF30B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v207 = a5;
  v199 = a3;
  v200 = a4;
  v203 = a2;
  v6 = sub_1CF9E53C8();
  v197 = *(v6 - 8);
  v198 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v194 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v189 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192 = &v189 - v11;
  v12 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v190 = (&v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v191 = &v189 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v189 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v189 - v20;
  v202 = sub_1CF9E5A58();
  v204 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v195 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v196 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v189 - v26;
  v27 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v28 = sub_1CF9E5268();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = a1;
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v35;
  if (v32 == v36 && v34 == v35)
  {
    v34, v35, v36, v37, v38, v39, v40, v41;
    v42, v43, v44, v45, v46, v47, v48, v49;
LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v65 = sub_1CF9E50D8();
    (*(v29 + 8))(v31, v28);
    v66 = sub_1CF9E57E8();
    v67 = v207;
    (v207)[2](v207, 0, v66);

    goto LABEL_6;
  }

  v50 = sub_1CF9E8048();
  v34, v51, v52, v53, v54, v55, v56, v57;
  v42, v58, v59, v60, v61, v62, v63, v64;
  if (v50)
  {
    goto LABEL_5;
  }

  v68 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v203 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v205, v18);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v69 - 8) + 48))(v18, 1, v69) == 1)
  {
    sub_1CEFCCC44(v18, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v204 + 56))(v21, 1, 1, v202);
LABEL_10:
    sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);
    v76 = FPItemNotFoundError();
    if (v76)
    {
      v77 = sub_1CF9E57E8();
    }

    else
    {
      v77 = 0;
    }

    v67 = v207;
    (v207)[2](v207, 0, v77);

    goto LABEL_6;
  }

  v70 = *(v69 + 48);
  v71 = v204;
  v72 = *(v204 + 32);
  v73 = v202;
  v72(v21, v18, v202);
  (*(v71 + 56))(v21, 0, 1, v73);
  sub_1CEFCCC44(&v18[v70], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v74 = (*(v71 + 48))(v21, 1, v73);
  v75 = v206;
  if (v74 == 1)
  {
    goto LABEL_10;
  }

  v78 = v201;
  v79 = (v72)(v201, v21, v73);
  MEMORY[0x1EEE9AC00](v79);
  v80 = v200;
  *(&v189 - 2) = v199;
  *(&v189 - 1) = v80;
  v81 = sub_1CF9E5848();
  if ((v81 & 1) == 0)
  {
    _Block_release(v207);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v81);
  *(&v189 - 2) = sub_1CF326E5C;
  *(&v189 - 1) = (&v189 - 4);
  sub_1CF9E59B8();
  if (v75)
  {
    v208 = 0;
    v209 = 0xE000000000000000;
    sub_1CF9E7948();
    v209, v82, v83, v84, v85, v86, v87, v88;
    v208 = 0xD000000000000016;
    v209 = 0x80000001CFA3F760;
    sub_1CF9E5A18();
    v90 = v89;
    v91 = sub_1CF9E6888();
    v90, v92, v93, v94, v95, v96, v97, v98;
    v99 = [v91 fp_prettyPath];

    v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v102 = v101;

    MEMORY[0x1D3868CC0](v100, v102);
    v102, v103, v104, v105, v106, v107, v108, v109;
    v111 = v208;
    v110 = v209;
    v208 = v75;
    v112 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v113 = v193;
    v114 = v198;
    if (swift_dynamicCast())
    {
      v115 = *(v197 + 8);
      v197 += 8;
      v115(v113, v114);
      v208 = v75;
      v116 = v75;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v117 = sub_1CF9E6148();
      if (sub_1CF008830(v117, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v118 = qword_1EDEBB5A0;
        v119 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1CF9FA440;
        *(v120 + 56) = MEMORY[0x1E69E6158];
        *(v120 + 64) = sub_1CEFD51C4();
        *(v120 + 32) = v111;
        *(v120 + 40) = v110;
        v121 = v198;
        v122 = v194;
        sub_1CF9E57A8();
        v123 = sub_1CF9E6148();
        v124 = MEMORY[0x1E69E7358];
        *(v120 + 96) = MEMORY[0x1E69E72F0];
        *(v120 + 104) = v124;
        *(v120 + 72) = v123;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v118, v119, v120);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v178 = qword_1EDEBB5A0;
        v179 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1CF9FA440;
        *(v120 + 56) = MEMORY[0x1E69E6158];
        *(v120 + 64) = sub_1CEFD51C4();
        *(v120 + 32) = v111;
        *(v120 + 40) = v110;
        v121 = v198;
        v122 = v194;
        sub_1CF9E57A8();
        v180 = sub_1CF9E6148();
        v181 = MEMORY[0x1E69E7358];
        *(v120 + 96) = MEMORY[0x1E69E72F0];
        *(v120 + 104) = v181;
        *(v120 + 72) = v180;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v178, v179, v120);
      }

      v120, v125, v126, v127, v128, v129, v130, v131;
      v115(v122, v121);
      v73 = v202;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v167 = qword_1EDEBB5A0;
      v168 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_1CF9FA440;
      *(v169 + 56) = MEMORY[0x1E69E6158];
      *(v169 + 64) = sub_1CEFD51C4();
      *(v169 + 32) = v111;
      *(v169 + 40) = v110;
      v170 = sub_1CF9E57E8();
      *(v169 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v169 + 104) = sub_1CF326DD0();
      *(v169 + 72) = v170;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v167, v168, v169);
      v169, v171, v172, v173, v174, v175, v176, v177;
    }

    v182 = v204;
    v183 = v201;
    v184 = v75;
    v185 = sub_1CF9E57E8();
    v67 = v207;
    (v207)[2](v207, 0, v185);

    (*(v182 + 8))(v183, v73);
  }

  else
  {
    v132 = *(v71 + 16);
    v133 = v196;
    v132(v196, v78, v73);
    v134 = v203 + v68;
    v135 = v191;
    sub_1CEFFD30C(v134, v191, type metadata accessor for LocalDomain);
    v132(v195, v133, v73);
    v136 = v190;
    sub_1CEFFD30C(v135, v190, type metadata accessor for LocalDomain);
    v137 = type metadata accessor for VFSItem(0);
    v138 = v192;
    (*(*(v137 - 8) + 56))(v192, 1, 1, v137);
    v139 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v140 = sub_1CF001704(v195, v136, v138);
    sub_1CF007BF8(v135, type metadata accessor for LocalDomain);
    v143 = *(v71 + 8);
    v142 = v71 + 8;
    v141 = v143;
    v143(v196, v73);
    if (v140)
    {
      v204 = v142;
      v208 = 2113085;
      v209 = 0xE300000000000000;
      v144 = [v140 description];
      v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v147 = v146;

      MEMORY[0x1D3868CC0](v145, v147);
      v147, v148, v149, v150, v151, v152, v153, v154;
      v155 = v208;
      v156 = v209;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v157 = qword_1EDEBB5A0;
      v158 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_1CF9FA450;
      *(v159 + 56) = MEMORY[0x1E69E6158];
      *(v159 + 64) = sub_1CEFD51C4();
      *(v159 + 32) = v155;
      *(v159 + 40) = v156;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v157, v158, v159);
      v159, v160, v161, v162, v163, v164, v165, v166;
      v67 = v207;
      (v207)[2](v207, v140, 0);

      v141(v201, v73);
    }

    else
    {
      v186 = sub_1CF9E5928();
      v187 = FPInvalidURLError();

      if (v187)
      {
        v188 = sub_1CF9E57E8();
      }

      else
      {
        v188 = 0;
      }

      v67 = v207;
      (v207)[2](v207, 0, v188);

      v141(v78, v73);
    }
  }

LABEL_6:
  _Block_release(v67);
}

uint64_t sub_1CF30C220(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1CF9E5B48();
  }

  v4 = FPFileMetadataSetTagData();

  return (v4 - 1);
}

void sub_1CF30C360(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v204 = a4;
  v197 = a3;
  v200 = a2;
  v5 = sub_1CF9E53C8();
  v195 = *(v5 - 8);
  v196 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v192 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v187 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v190 = &v187 - v10;
  v11 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v188 = (&v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v187 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v187 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v187 - v19;
  v199 = sub_1CF9E5A58();
  v201 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v193 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v194 = &v187 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v187 - v25;
  v26 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v27 = sub_1CF9E5268();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v187 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = a1;
  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;
  v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v34;
  if (v31 == v35 && v33 == v34)
  {
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41, v42, v43, v44, v45, v46, v47, v48;
LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v64 = sub_1CF9E50D8();
    (*(v28 + 8))(v30, v27);
    v65 = sub_1CF9E57E8();
    v66 = v204;
    (v204)[2](v204, 0, v65);

    goto LABEL_6;
  }

  v49 = sub_1CF9E8048();
  v33, v50, v51, v52, v53, v54, v55, v56;
  v41, v57, v58, v59, v60, v61, v62, v63;
  if (v49)
  {
    goto LABEL_5;
  }

  v67 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v200 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v202, v17);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v68 - 8) + 48))(v17, 1, v68) == 1)
  {
    sub_1CEFCCC44(v17, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v201 + 56))(v20, 1, 1, v199);
LABEL_10:
    sub_1CEFCCC44(v20, &unk_1EC4BE310, qword_1CF9FCBE0);
    v75 = FPItemNotFoundError();
    if (v75)
    {
      v76 = sub_1CF9E57E8();
    }

    else
    {
      v76 = 0;
    }

    v66 = v204;
    (v204)[2](v204, 0, v76);

    goto LABEL_6;
  }

  v69 = *(v68 + 48);
  v70 = v201;
  v71 = *(v201 + 32);
  v72 = v199;
  v71(v20, v17, v199);
  (*(v70 + 56))(v20, 0, 1, v72);
  sub_1CEFCCC44(&v17[v69], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v73 = (*(v70 + 48))(v20, 1, v72);
  v74 = v203;
  if (v73 == 1)
  {
    goto LABEL_10;
  }

  v77 = v198;
  v78 = (v71)(v198, v20, v72);
  MEMORY[0x1EEE9AC00](v78);
  *(&v187 - 2) = v197;
  v79 = sub_1CF9E5848();
  if ((v79 & 1) == 0)
  {
    _Block_release(v204);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v79);
  *(&v187 - 2) = sub_1CF326E38;
  *(&v187 - 1) = (&v187 - 4);
  sub_1CF9E59B8();
  if (v74)
  {
    v205 = 0;
    v206 = 0xE000000000000000;
    sub_1CF9E7948();
    v206, v80, v81, v82, v83, v84, v85, v86;
    v205 = 0xD00000000000001BLL;
    v206 = 0x80000001CFA3F740;
    sub_1CF9E5A18();
    v88 = v87;
    v89 = sub_1CF9E6888();
    v88, v90, v91, v92, v93, v94, v95, v96;
    v97 = [v89 fp_prettyPath];

    v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v100 = v99;

    MEMORY[0x1D3868CC0](v98, v100);
    v100, v101, v102, v103, v104, v105, v106, v107;
    v109 = v205;
    v108 = v206;
    v205 = v74;
    v110 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v111 = v191;
    v112 = v196;
    if (swift_dynamicCast())
    {
      v113 = *(v195 + 8);
      v195 += 8;
      v113(v111, v112);
      v205 = v74;
      v114 = v74;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v115 = sub_1CF9E6148();
      if (sub_1CF008830(v115, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v116 = qword_1EDEBB5A0;
        v117 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_1CF9FA440;
        *(v118 + 56) = MEMORY[0x1E69E6158];
        *(v118 + 64) = sub_1CEFD51C4();
        *(v118 + 32) = v109;
        *(v118 + 40) = v108;
        v119 = v196;
        v120 = v192;
        sub_1CF9E57A8();
        v121 = sub_1CF9E6148();
        v122 = MEMORY[0x1E69E7358];
        *(v118 + 96) = MEMORY[0x1E69E72F0];
        *(v118 + 104) = v122;
        *(v118 + 72) = v121;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v116, v117, v118);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v176 = qword_1EDEBB5A0;
        v177 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_1CF9FA440;
        *(v118 + 56) = MEMORY[0x1E69E6158];
        *(v118 + 64) = sub_1CEFD51C4();
        *(v118 + 32) = v109;
        *(v118 + 40) = v108;
        v119 = v196;
        v120 = v192;
        sub_1CF9E57A8();
        v178 = sub_1CF9E6148();
        v179 = MEMORY[0x1E69E7358];
        *(v118 + 96) = MEMORY[0x1E69E72F0];
        *(v118 + 104) = v179;
        *(v118 + 72) = v178;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v176, v177, v118);
      }

      v118, v123, v124, v125, v126, v127, v128, v129;
      v113(v120, v119);
      v72 = v199;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v165 = qword_1EDEBB5A0;
      v166 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_1CF9FA440;
      *(v167 + 56) = MEMORY[0x1E69E6158];
      *(v167 + 64) = sub_1CEFD51C4();
      *(v167 + 32) = v109;
      *(v167 + 40) = v108;
      v168 = sub_1CF9E57E8();
      *(v167 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v167 + 104) = sub_1CF326DD0();
      *(v167 + 72) = v168;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v165, v166, v167);
      v167, v169, v170, v171, v172, v173, v174, v175;
    }

    v180 = v201;
    v181 = v198;
    v182 = v74;
    v183 = sub_1CF9E57E8();
    v66 = v204;
    (v204)[2](v204, 0, v183);

    (*(v180 + 8))(v181, v72);
  }

  else
  {
    v130 = *(v70 + 16);
    v131 = v194;
    v130(v194, v77, v72);
    v132 = v200 + v67;
    v133 = v189;
    sub_1CEFFD30C(v132, v189, type metadata accessor for LocalDomain);
    v130(v193, v131, v72);
    v134 = v188;
    sub_1CEFFD30C(v133, v188, type metadata accessor for LocalDomain);
    v135 = type metadata accessor for VFSItem(0);
    v136 = v190;
    (*(*(v135 - 8) + 56))(v190, 1, 1, v135);
    v137 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v138 = sub_1CF001704(v193, v134, v136);
    sub_1CF007BF8(v133, type metadata accessor for LocalDomain);
    v141 = *(v70 + 8);
    v140 = v70 + 8;
    v139 = v141;
    v141(v194, v72);
    if (v138)
    {
      v201 = v140;
      v205 = 2113085;
      v206 = 0xE300000000000000;
      v142 = [v138 description];
      v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v145 = v144;

      MEMORY[0x1D3868CC0](v143, v145);
      v145, v146, v147, v148, v149, v150, v151, v152;
      v153 = v205;
      v154 = v206;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v155 = qword_1EDEBB5A0;
      v156 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_1CF9FA450;
      *(v157 + 56) = MEMORY[0x1E69E6158];
      *(v157 + 64) = sub_1CEFD51C4();
      *(v157 + 32) = v153;
      *(v157 + 40) = v154;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v155, v156, v157);
      v157, v158, v159, v160, v161, v162, v163, v164;
      v66 = v204;
      (v204)[2](v204, v138, 0);

      v139(v198, v72);
    }

    else
    {
      v184 = sub_1CF9E5928();
      v185 = FPInvalidURLError();

      if (v185)
      {
        v186 = sub_1CF9E57E8();
      }

      else
      {
        v186 = 0;
      }

      v66 = v204;
      (v204)[2](v204, 0, v186);

      v139(v77, v72);
    }
  }

LABEL_6:
  _Block_release(v66);
}

uint64_t sub_1CF30D444(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v75 = a2;
  v76 = a4;
  v74 = a3;
  v4 = a1;
  v5 = sub_1CF9E5A58();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  v12 = sub_1CF9E5678();
  v13 = sub_1CF4F257C(0xD000000000000017, 0x80000001CFA3F6B0, v4, v12);

  v69 = v6;
  v70 = v7;
  v14 = v76;
  v71 = v11;
  v72 = v9;
  if (v13)
  {
    if (*v13->tree)
    {
      v16 = v71;
      v15 = v72;
      v9 = v8;
      (*(v72 + 16))(v71, v13 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v8);
      v13, v17, v18, v19, v20, v21, v22, v23;
      if (sub_1CF9E5CD8() != -1)
      {
LABEL_10:
        (*(v15 + 8))(v16, v9);
        return 0;
      }

      v24 = v74;
      swift_beginAccess();
      if (!__OFADD__(*v24, 1))
      {
        ++*v24;
        aBlock = 0x676E6974656C6564;
        v78 = 0xE900000000000020;
        sub_1CF9E5A18();
        v26 = v25;
        v27 = sub_1CF9E6888();
        v26, v28, v29, v30, v31, v32, v33, v34;
        v35 = [v27 fp_prettyPath];

        v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v38 = v37;

        MEMORY[0x1D3868CC0](v36, v38);
        v38, v39, v40, v41, v42, v43, v44, v45;
        v11 = aBlock;
        v7 = v78;
        if (qword_1EDEA3408 == -1)
        {
LABEL_6:
          v46 = qword_1EDEBB5A0;
          v47 = sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_1CF9FA450;
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = sub_1CEFD51C4();
          *(v48 + 32) = v11;
          *(v48 + 40) = v7;
          sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v46, v47, v48);
          v48, v49, v50, v51, v52, v53, v54, v55;
          v56 = sub_1CF9E5928();
          v57 = objc_allocWithZone(MEMORY[0x1E695E000]);
          v58 = sub_1CF9E6888();
          v59 = [v57 initWithSuiteName_];

          if (v59)
          {
            v60 = sub_1CF9E6888();
            v61 = [v59 BOOLForKey_];

            v62 = v61 ^ 1;
          }

          else
          {
            v62 = 1;
          }

          v63 = v73;
          v64 = v70;
          (*(v73 + 16))(v70, v14, v5);
          v65 = (*(v63 + 80) + 16) & ~*(v63 + 80);
          v66 = swift_allocObject();
          (*(v63 + 32))(v66 + v65, v64, v5);
          v81 = sub_1CF326D60;
          v82 = v66;
          aBlock = MEMORY[0x1E69E9820];
          v78 = 1107296256;
          v79 = sub_1CF00A468;
          v80 = &block_descriptor_233;
          v67 = _Block_copy(&aBlock);

          [v56 fp:v62 deleteAllowingCoordination:v67 completionHandler:?];
          _Block_release(v67);

          v16 = v71;
          v15 = v72;
          goto LABEL_10;
        }

LABEL_14:
        swift_once();
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return 0;
}

void sub_1CF30D98C(void *a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - v7;
  if (a1)
  {
    strcpy(v64, "can't delete ");
    HIWORD(v64[1]) = -4864;
    v9 = a1;
    sub_1CF9E5A18();
    v11 = v10;
    v12 = sub_1CF9E6888();
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = [v12 fp_prettyPath];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = v64[0];
    v32 = v64[1];
    v64[0] = a1;
    v33 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v63 = *(v3 + 8);
      v63(v8, v2);
      v64[0] = a1;
      v34 = a1;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v35 = sub_1CF9E6148();
      if (sub_1CF008830(v35, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v62 = qword_1EDEBB5A0;
        v36 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1CF9FA440;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1CEFD51C4();
        *(v37 + 32) = v31;
        *(v37 + 40) = v32;
        sub_1CF9E57A8();
        v38 = sub_1CF9E6148();
        v39 = MEMORY[0x1E69E7358];
        *(v37 + 96) = MEMORY[0x1E69E72F0];
        *(v37 + 104) = v39;
        *(v37 + 72) = v38;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v62, v36, v37);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v62 = qword_1EDEBB5A0;
        v51 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1CF9FA440;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1CEFD51C4();
        *(v37 + 32) = v31;
        *(v37 + 40) = v32;
        sub_1CF9E57A8();
        v52 = sub_1CF9E6148();
        v53 = MEMORY[0x1E69E7358];
        *(v37 + 96) = MEMORY[0x1E69E72F0];
        *(v37 + 104) = v53;
        *(v37 + 72) = v52;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v62, v51, v37);
      }

      v37, v54, v55, v56, v57, v58, v59, v60;
      v63(v5, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v40 = qword_1EDEBB5A0;
      v41 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1CF9FA440;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1CEFD51C4();
      *(v42 + 32) = v31;
      *(v42 + 40) = v32;
      v43 = sub_1CF9E57E8();
      *(v42 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v42 + 104) = sub_1CF326DD0();
      *(v42 + 72) = v43;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v40, v41, v42);

      v42, v44, v45, v46, v47, v48, v49, v50;
    }
  }
}

BOOL sub_1CF30DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 16);
  v7 = sub_1CF9E5848();
  if ((v7 & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1CF9E59B8();
  if (v4)
  {
  }

  swift_beginAccess();
  return *v6 < a4;
}

BOOL sub_1CF30DFC4(void *a1, uint64_t a2, void (**a3)(char *, int *), uint64_t a4, uint64_t a5)
{
  v73 = a4;
  v74 = a5;
  v76 = a3;
  v71 = a2;
  v82 = sub_1CF9E5CF8();
  v77 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v72 = v6;
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_1CF9E5A58();
  v9 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1CF9E7948();
  v85, v17, v18, v19, v20, v21, v22, v23;
  v84 = 0xD000000000000012;
  v85 = 0x80000001CFA3F690;
  v80 = a1;
  v24 = [a1 bundleID];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v35 = v84;
  v36 = v85;
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v37 = qword_1EDEBB5A0;
    v38 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v39 = swift_allocObject();
    v79 = xmmword_1CF9FA450;
    *(v39 + 16) = xmmword_1CF9FA450;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1CEFD51C4();
    *(v39 + 32) = v35;
    *(v39 + 40) = v36;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v37, v38, v39);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v47 = [v80 documentsURL];
    sub_1CF9E59D8();

    v68 = v16;
    sub_1CF9E5958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v48 = (v9[80] + 32) & ~v9[80];
    v78 = *(v9 + 9);
    v49 = swift_allocObject();
    *(v49 + 16) = v79;
    v50 = v49 + v48;
    v51 = *(v9 + 2);
    v69 = v13;
    v80 = v9 + 16;
    *&v79 = v51;
    v51(v49 + v48, v13, v75);
    v52 = v70;
    sub_1CEFFD30C(v71 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v70 + v7[5], type metadata accessor for LocalDomain);
    v53 = (v52 + v7[9]);
    *v53 = 0;
    v53[1] = 0;
    *v52 = v49;
    *(v52 + v7[6]) = 0;
    *(v52 + v7[7]) = 0;
    *(v52 + v7[8]) = -1;
    v54 = v77;
    v55 = v82;
    (*(v77 + 16))(v83, v76, v82);
    v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v54 + 32))(&v13[v56], v83, v55);
    v58 = v74;
    *&v13[v57] = v73;
    v82 = v49;
    v83 = v13;
    *&v13[(v57 + 15) & 0xFFFFFFFFFFFFFFF8] = v58;
    v84 = 0;
    v86 = 1;
    v59 = *(v49 + 16);

    v7 = v75;
    v77 = v59;
    if (!v59)
    {
      break;
    }

    v36 = 0;
    v16 = 0;
    v76 = (v9 + 8);
    while (v36 < *(v82 + 16))
    {
      v60 = v81;
      (v79)(v81, v50, v7);
      if ((v86 & 1) == 0)
      {
        (*v76)(v60, v7);
        goto LABEL_9;
      }

      v13 = v9;
      v61 = v7;
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v62 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v62);
      *(&v67 - 8) = v60;
      *(&v67 - 7) = &v84;
      v64 = v63;
      *(&v67 - 6) = v63;
      *(&v67 - 5) = &v86;
      *(&v67 - 4) = 7;
      *(&v67 - 3) = sub_1CF327420;
      *(&v67 - 2) = v83;
      *(&v67 - 8) = 1;
      sub_1CF9E59B8();
      v36 = (v36 + 1);
      objc_autoreleasePoolPop(v62);
      v7 = v61;
      (*v76)(v60, v61);
      v50 += v78;
      v52 = v64;
      v9 = v13;
      if (v77 == v36)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_9:

  sub_1CF007BF8(v52, type metadata accessor for FSDirectoryEnumerator);
  v65 = *(v9 + 1);
  v65(v69, v7);
  v65(v68, v7);
  swift_beginAccess();
  return *(v35 + 16) < v74;
}

void sub_1CF30E7C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v42 - v9;
  v10 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - v13;
  v51 = sub_1CF9E5A58();
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for LocalContainerMonitor(0);
  v19 = v18;
  v20 = a1 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  if (qword_1EDEA56B8 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v42 - 2) = v19;
  *(&v42 - 1) = v20;
  v21 = sub_1CF9E7398();
  v22 = v54;
  MEMORY[0x1EEE9AC00](v21);
  *(&v42 - 4) = v22;
  *(&v42 - 3) = a2;
  v45 = a2;
  v46 = a3;
  *(&v42 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF640, qword_1CFA01DD8);
  sub_1CF9E7398();
  v23 = v54;
  if (v54)
  {
    v43 = v22;
    v44 = v4;
    v24 = [v54 documentsURL];
    v25 = v17;
    sub_1CF9E59D8();

    v26 = v50;
    sub_1CEFFD30C(v20, v50, type metadata accessor for LocalDomain);
    v27 = v47;
    v28 = v48;
    v29 = v51;
    (*(v48 + 16))(v47, v25, v51);
    v30 = v49;
    sub_1CEFFD30C(v26, v49, type metadata accessor for LocalDomain);
    v31 = type metadata accessor for VFSItem(0);
    v32 = v52;
    (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
    v33 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v34 = sub_1CF001704(v27, v30, v32);
    sub_1CF007BF8(v26, type metadata accessor for LocalDomain);
    (*(v28 + 8))(v25, v29);
    if (v34)
    {
      v35 = v53;
      v36 = v53[2];
      v37 = v34;
      v36(v35, v37, 0);

      v38 = v37;
      v39 = v43;
      goto LABEL_11;
    }

    v22 = v43;
  }

  v40 = sub_1CF9E6888();
  v41 = sub_1CF9E6888();
  v37 = FPInvalidParameterError();

  if (v37)
  {
    v39 = sub_1CF9E57E8();
  }

  else
  {
    v39 = 0;
  }

  v35 = v53;
  (v53[2])(v53, 0, v39);
  v38 = v22;
LABEL_11:

  _Block_release(v35);
}

uint64_t sub_1CF30ED50(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = a3;
  v79 = a5;
  v80 = a4;
  v78 = a2;
  v75 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v75);
  v85 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v71 - v8;
  v9 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v71 - v23;
  v25 = *(v15 + 16);
  v74 = a1;
  v25(&v71 - v23, a1, v14, v22);
  v72 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD30C(v78 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v13, type metadata accessor for LocalDomain);
  v83 = v25;
  v84 = v15 + 16;
  (v25)(v20, v24, v14);
  v26 = v14;
  v27 = v82;
  sub_1CEFFD30C(v13, v82, type metadata accessor for LocalDomain);
  v28 = type metadata accessor for VFSItem(0);
  v29 = v86;
  (*(*(v28 - 8) + 56))(v86, 1, 1, v28);
  v30 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v31 = sub_1CF001704(v20, v27, v29);
  sub_1CF007BF8(v13, type metadata accessor for LocalDomain);
  v73 = v15;
  v32 = *(v15 + 8);
  v86 = v26;
  v81 = v32;
  v82 = (v15 + 8);
  v32(v24, v26);
  if (!v31)
  {
    return 1;
  }

  v33 = v79;
  v34 = sub_1CF9E6888();
  v35 = v76;
  [v76 put_];

  v36 = [v31 description];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v37;

  v39 = sub_1CF9E6888();
  v38, v40, v41, v42, v43, v44, v45, v46;
  [v35 put_];

  v47 = sub_1CF9E6888();
  [v35 put_];

  v71 = v31;
  v48 = v31[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder];
  v49 = v77;
  if (v48 != 1)
  {
LABEL_13:

    return 1;
  }

  v87 = v80;
  v88 = v33;

  MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
  v50 = v88;
  v80 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v51 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v79 = *(v73 + 72);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  v53 = v52 + v51;
  v83(v52 + v51, v74, v86);
  v54 = v75;
  v55 = v78;
  v56 = v85;
  sub_1CEFFD30C(v78 + v72, v85 + *(v75 + 20), type metadata accessor for LocalDomain);
  v57 = (v56 + v54[9]);
  *v57 = 0;
  v57[1] = 0;
  *v56 = v52;
  *(v56 + v54[6]) = 0;
  *(v56 + v54[7]) = 0;
  *(v56 + v54[8]) = -1;
  v58 = swift_allocObject();
  v58[2] = v55;
  v58[3] = v35;
  v58[4] = v80;
  v58[5] = v50;
  v87 = 0;
  v89 = 1;
  v80 = v52;
  v59 = *(v52 + 16);
  v60 = v55;
  v61 = v35;
  v78 = v50;

  if (!v59)
  {
LABEL_12:

    sub_1CF007BF8(v85, type metadata accessor for FSDirectoryEnumerator);
    v78, v63, v64, v65, v66, v67, v68, v69;
    goto LABEL_13;
  }

  v62 = 0;
  while (v62 < *(v80 + 16))
  {
    v83(v17, v53, v86);
    if ((v89 & 1) == 0)
    {
      v81(v17, v86);
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v56 = objc_autoreleasePoolPush();
    MEMORY[0x1EEE9AC00](v56);
    *(&v71 - 8) = v17;
    *(&v71 - 7) = &v87;
    *(&v71 - 6) = v85;
    *(&v71 - 5) = &v89;
    *(&v71 - 4) = 7;
    *(&v71 - 3) = sub_1CF3272EC;
    *(&v71 - 2) = v58;
    *(&v71 - 8) = 1;
    sub_1CF9E59B8();
    if (v49)
    {
      goto LABEL_16;
    }

    v49 = 0;
    ++v62;
    objc_autoreleasePoolPop(v56);
    v81(v17, v86);
    v53 += v79;
    if (v59 == v62)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_16:
  objc_autoreleasePoolPop(v56);
  result = (v81)(v17, v86);
  __break(1u);
  return result;
}

void sub_1CF30F448(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v132 = a6;
  v142 = sub_1CF9E5A58();
  v133 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v124 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v131);
  v141 = (&v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for LocalContainer(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = 8224;
  v145 = 0xE200000000000000;
  MEMORY[0x1D3868CC0](a3, a4, v15);
  MEMORY[0x1D3868CC0](2120480, 0xE300000000000000);
  v18 = v145;
  v19 = sub_1CF9E6888();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = &selRef_initWithTarget_;
  [a5 put_];

  [a5 startFgColor_];
  v28 = type metadata accessor for LocalContainerSnapshot(0);
  sub_1CF9E5D98();
  sub_1CEFD5B1C(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  sub_1CF9E7F98();
  v30 = v29;
  v31 = sub_1CF9E6888();
  v30, v32, v33, v34, v35, v36, v37, v38;
  [a5 put_];

  [a5 reset];
  v39 = sub_1CF9E6888();
  [a5 put_];

  v144 = *(a1 + *(v28 + 32));

  sub_1CF315B94(&v144);
  v136 = *(v144 + 16);
  if (v136)
  {
    v40 = 0;
    v41 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v123 = v144;
    v135 = v144 + v41;
    v130 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v140 = v133 + 16;
    v134 = *(v14 + 72);
    v138 = (v133 + 8);
    v129 = xmmword_1CF9FA450;
    v128 = a5;
    v127 = a2;
    v126 = v13;
    v125 = v17;
    while (1)
    {
      v137 = v40;
      sub_1CEFFD30C(v135 + v134 * v40, v17, type metadata accessor for LocalContainer);
      v42 = sub_1CF9E6888();
      [a5 v27[394]];

      [a5 startFgColor:9 attr:2];
      v43 = *v17;
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = v44;
      v46 = sub_1CF9E6AE8();
      v45, v47, v48, v49, v50, v51, v52, v53;
      if (v46)
      {
        v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v56 = v55;
        v57 = sub_1CF4F5F14(1uLL, v54, v55);
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v56, v58, v60, v62, v64, v65, v66, v67;
        v68 = v61;
        v27 = &selRef_initWithTarget_;
        MEMORY[0x1D3868C10](v57, v59, v68, v63);
        v70 = v69;
        v63, v69, v71, v72, v73, v74, v75, v76;
      }

      else
      {
        NSFileProviderItemIdentifier.description.getter(v43);
        v70 = v77;
      }

      v78 = sub_1CF9E6888();
      v70, v79, v80, v81, v82, v83, v84, v85;
      [a5 v27[394]];

      [a5 reset];
      v144 = 32;
      v145 = 0xE100000000000000;
      v86 = *(v13 + 28);
      v87 = sub_1CF9E5928();
      v88 = [v87 fp_shortDescription];

      v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v91 = v90;

      MEMORY[0x1D3868CC0](v89, v91);
      v91, v92, v93, v94, v95, v96, v97, v98;
      MEMORY[0x1D3868CC0](10, 0xE100000000000000);
      v99 = v145;
      v100 = sub_1CF9E6888();
      v99, v101, v102, v103, v104, v105, v106, v107;
      [a5 v27[394]];

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v108 = v133;
        v109 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v139 = *(v133 + 72);
        v110 = swift_allocObject();
        *(v110 + 16) = v129;
        v111 = v110 + v109;
        v112 = *(v108 + 16);
        v112(v110 + v109, v17 + v86, v142);
        v114 = v131;
        v113 = v132;
        v115 = v141;
        sub_1CEFFD30C(v132 + v130, v141 + *(v131 + 20), type metadata accessor for LocalDomain);
        v116 = (v115 + v114[9]);
        *v116 = 0;
        v116[1] = 0;
        *v115 = v110;
        *(v115 + v114[6]) = 0;
        *(v115 + v114[7]) = 0;
        *(v115 + v114[8]) = -1;
        v117 = swift_allocObject();
        v117[2] = v113;
        v117[3] = a5;
        v117[4] = 0x2020202020202020;
        v117[5] = 0xE800000000000000;
        v144 = 0;
        v143 = 1;
        v118 = *(v110 + 16);
        v119 = v113;
        v120 = a5;
        if (v118)
        {
          v121 = 0;
          v122 = v124;
          while (v121 < *(v110 + 16))
          {
            v112(v122, v111, v142);
            if ((v143 & 1) == 0)
            {
              (*v138)(v122, v142);
              goto LABEL_4;
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v114 = objc_autoreleasePoolPush();
            MEMORY[0x1EEE9AC00](v114);
            *(&v123 - 8) = v122;
            *(&v123 - 7) = &v144;
            *(&v123 - 6) = v141;
            *(&v123 - 5) = &v143;
            *(&v123 - 4) = 7;
            *(&v123 - 3) = sub_1CF326B3C;
            *(&v123 - 2) = v117;
            *(&v123 - 8) = 1;
            sub_1CF9E59B8();
            ++v121;
            objc_autoreleasePoolPop(v114);
            (*v138)(v122, v142);
            v111 += v139;
            if (v118 == v121)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          objc_autoreleasePoolPop(v114);
          (*v138)(v122, v142);
          __break(1u);

          __break(1u);
          return;
        }

LABEL_4:

        sub_1CF007BF8(v141, type metadata accessor for FSDirectoryEnumerator);
        a5 = v128;
        LOBYTE(a2) = v127;
        v13 = v126;
        v17 = v125;
        v27 = &selRef_initWithTarget_;
      }

      v40 = v137 + 1;
      sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
      if (v40 == v136)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
}

uint64_t sub_1CF30FD54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v157 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v155 = &v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v156 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v154 = &v138 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v138 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v138 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v138 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v138 - v22;
  MEMORY[0x1EEE9AC00](v23);
  *&v142 = &v138 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v159 = &v138 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v138 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v139 = &v138 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v138 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v138 - v36;
  v166 = sub_1CF9E5FF8();
  v37 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v160 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v138 - v40;
  *&v43 = MEMORY[0x1EEE9AC00](v42).n128_u64[0];
  v163 = &v138 - v44;
  if (([a1 respondsToSelector_] & 1) == 0 || (v45 = objc_msgSend(a1, sel_documentSize)) == 0)
  {
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v45 = sub_1CF9E7548();
  }

  v150 = sub_1CF9E8198();

  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    if ([a1 respondsToSelector_])
    {
      v46 = ([a1 fileSystemFlags] << 7) & 0x100;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 292;
  }

  if ([a1 respondsToSelector_])
  {
    v46 |= (32 * [a1 fileSystemFlags]) & 0x80;
  }

  if ([a1 respondsToSelector_])
  {
    v46 |= ([a1 fileSystemFlags] & 1) << 6;
  }

  if ([a1 respondsToSelector_])
  {
    v153 = ([a1 fileSystemFlags] >> 3) & 1;
  }

  else
  {
    v153 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v152 = ([a1 fileSystemFlags] >> 4) & 1;
  }

  else
  {
    v152 = 0;
  }

  v47 = [a1 respondsToSelector_];
  v165 = v5;
  if (v47)
  {
    v48 = [a1 extendedAttributes];
    v151 = sub_1CF9E6638();
  }

  else
  {
    v151 = 0;
  }

  v49 = v4;
  v149 = v46;
  if ([a1 respondsToSelector_])
  {
    v50 = [a1 contentType];
    sub_1CF9E5F48();

    v51 = v41;
    v52 = v166;
    (*(v37 + 32))(v163, v51, v166);
    v53 = v160;
    sub_1CF9E5F18();
    LOBYTE(v50) = sub_1CF9E5FB8();
    v54 = *(v37 + 8);
    v54(v53, v52);
    v161 = v37 + 8;
    v158 = v54;
    if (v50)
    {
      v147 = 0x200000000;
    }

    else
    {
      sub_1CF9E5FC8();
      v55 = sub_1CF9E5FB8();
      v54(v53, v52);
      if (v55)
      {
        v147 = 0x300000000;
      }

      else
      {
        sub_1CF9E5FD8();
        v56 = sub_1CF9E5FB8();
        v54(v53, v52);
        if ((v56 & 1) != 0 && (v57 = v160, sub_1CF9E5FA8(), v58 = sub_1CF9E5FB8(), v54(v57, v52), (v58 & 1) == 0))
        {
          v147 = 0x100000001;
        }

        else
        {
          v147 = 0;
        }
      }
    }

    v59 = v162;
    v60 = v49;
    if ([a1 respondsToSelector_])
    {
      v61 = [a1 tagData];
      v62 = v165;
      if (v61)
      {
        v63 = v61;
        v64 = sub_1CF9E5B88();
        v66 = v65;

        v67 = sub_1CF9E5B48();
        v68 = FPGetTagsFromTagsData();

        if (v68)
        {
          sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
          v76 = sub_1CF9E6D48();
        }

        else
        {
          v76 = 0;
        }

        v148 = sub_1CEFF6864(v76, v69, v70, v71, v72, v73, v74, v75);
        sub_1CEFE4714(v64, v66);
        v59 = v162;
        v52 = v166;
      }

      else
      {
        v148 = 0;
      }
    }

    else
    {
      v148 = 0;
      v62 = v165;
    }

    if ([a1 respondsToSelector_])
    {
      v77 = [a1 creationDate];
      if (v77)
      {
        v78 = v140;
        v79 = v77;
        sub_1CF9E5CB8();

        v80 = 0;
      }

      else
      {
        v80 = 1;
        v78 = v140;
      }

      v81 = *(v62 + 56);
      v81(v78, v80, 1, v60);
      v82 = v139;
      sub_1CEFE55D0(v78, v139, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v83 = v82;
      v84 = v138;
      sub_1CEFE55D0(v83, v138, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v84, v164, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v52 = v166;
    }

    else
    {
      v81 = *(v62 + 56);
      v81(v164, 1, 1, v60);
    }

    if ([a1 respondsToSelector_])
    {
      v85 = [a1 contentModificationDate];
      if (v85)
      {
        v86 = v143;
        v87 = v85;
        sub_1CF9E5CB8();

        v88 = 0;
      }

      else
      {
        v88 = 1;
        v86 = v143;
      }

      v81(v86, v88, 1, v60);
      v89 = v142;
      sub_1CEFE55D0(v86, v142, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v90 = v89;
      v91 = v141;
      sub_1CEFE55D0(v90, v141, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v91, v159, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v52 = v166;
    }

    else
    {
      v81(v159, 1, 1, v60);
    }

    v92 = [a1 respondsToSelector_];
    v93 = v160;
    if (v92)
    {
      v94 = [a1 lastUsedDate];
      v95 = v59;
      if (v94)
      {
        v96 = v146;
        v97 = v94;
        sub_1CF9E5CB8();

        v98 = 0;
      }

      else
      {
        v98 = 1;
        v96 = v146;
      }

      v81(v96, v98, 1, v60);
      v99 = v145;
      sub_1CEFE55D0(v96, v145, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v100 = v99;
      v101 = v144;
      sub_1CEFE55D0(v100, v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v101, v95, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v52 = v166;
    }

    else
    {
      v81(v59, 1, 1, v60);
    }

    if (([a1 respondsToSelector_] & 1) != 0 && (v102 = objc_msgSend(a1, sel_favoriteRank)) != 0)
    {
      v103 = v102;
      v146 = [v102 unsignedLongLongValue];

      LODWORD(v145) = 0;
    }

    else
    {
      v146 = 0;
      LODWORD(v145) = 1;
    }

    sub_1CF9E5FA8();
    v104 = sub_1CF9E5FB8();
    v158(v93, v52);
    LODWORD(v160) = [a1 respondsToSelector_];
    if (v160)
    {
      v144 = [a1 typeAndCreator];
    }

    else
    {
      v144 = 0;
    }

    v105 = v155;
    v106 = v159;
    v107 = type metadata accessor for ItemMetadata(0);
    v108 = (a2 + v107[14]);
    *v108 = 0;
    *(v108 + 1) = 0;
    v155 = v108;
    *(a2 + v107[17]) = 2;
    v159 = v107[23];
    *(a2 + v159) = 6;
    v141 = v107[30];
    v81(a2 + v141, 1, 1, v60);
    v143 = (a2 + v107[34]);
    v142 = xmmword_1CF9F4E20;
    *v143 = xmmword_1CF9F4E20;
    v109 = (a2 + v107[38]);
    v110 = v147 | v104;
    *v109 = 0;
    v109[1] = 0;
    if (fpfs_supports_vfs_ignore_permissions_iopolicy())
    {
      v111 = v149 | 0x40;
      if ((v110 & 1) == 0)
      {
        v111 = v149;
      }
    }

    else
    {
      v112 = v149 | (v149 >> 2) & 0x40 | 0x80;
      if ((v110 & 1) == 0)
      {
        LOWORD(v112) = v149;
      }

      v111 = (4 * v112) & 0x100 | v112;
    }

    v113 = v154;
    v114 = a2 + v107[37];
    *a2 = BYTE4(v147);
    *(a2 + v107[20]) = 0;
    *(a2 + v107[28]) = v104 & 1;
    *(a2 + v107[29]) = v104 & 1;
    v115 = v150;
    *(a2 + v107[26]) = v150;
    *(a2 + v107[27]) = v115;
    *(a2 + 4) = 0;
    *(a2 + 8) = 1;
    *v114 = 0;
    *(v114 + 4) = 1;
    *(a2 + 10) = v111;
    sub_1CEFCCBDC(v164, v113, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v116 = *(v62 + 48);
    if (v116(v113, 1, v60) == 1)
    {
      sub_1CF9E5C88();
      if (v116(v113, 1, v60) != 1)
      {
        sub_1CEFCCC44(v113, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v62 + 32))(v105, v113, v60);
    }

    v118 = v62 + 32;
    v117 = *(v62 + 32);
    v117(a2 + v107[7], v105, v60);
    v119 = v156;
    sub_1CEFCCBDC(v106, v156, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v120 = v116(v119, 1, v60);
    v165 = v118;
    if (v120 == 1)
    {
      v121 = v157;
      sub_1CF9E5C88();
      sub_1CEFCCC44(v106, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v164, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v158(v163, v166);
      if (v116(v119, 1, v60) != 1)
      {
        sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      sub_1CEFCCC44(v106, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v164, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v158(v163, v166);
      v122 = v157;
      v117(v157, v119, v60);
      v121 = v122;
    }

    v123 = v107[31];
    v124 = a2 + v107[32];
    v125 = v107[33];
    v126 = a2 + v107[35];
    v117(a2 + v107[8], v121, v60);
    *(a2 + v107[9]) = 0;
    v127 = v152;
    *(a2 + v107[10]) = v153;
    *(a2 + v107[13]) = v127;
    *(a2 + v107[19]) = 0;
    *(a2 + v107[21]) = 0;
    *(a2 + v107[15]) = 0;
    *(a2 + v107[16]) = 0;
    *(a2 + v107[11]) = 0;
    *(a2 + v107[12]) = 0;
    *(a2 + v107[18]) = 0;
    sub_1CEFE4804(v162, a2 + v141);
    *(a2 + v123) = v148;
    *v124 = v146;
    *(v124 + 8) = v145;
    *(a2 + v125) = v151;
    v128 = v155;
    *(v155 + 1), v129, v130, v131, v132, v133, v134, v135;
    *v128 = 0;
    v128[1] = 0;
    v136 = v143;
    result = sub_1CEFE48D8(*v143, *(v143 + 1));
    *v136 = v142;
    *v126 = v144;
    *(v126 + 8) = (v160 & 1) == 0;
    *(a2 + v107[36]) = 0;
    *(a2 + v107[24]) = 0;
    *(a2 + v107[25]) = 0;
    *(a2 + v107[22]) = 0;
    *(a2 + v159) = 6;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF310E18(uint64_t a1, void *a2, void (*a3)(uint64_t, void, void, void *), uint64_t a4, char *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a8;
  v42 = a7;
  v47 = a4;
  v40 = a9;
  v43 = sub_1CF9E63A8();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v39 - v22;
  if (a2)
  {
    v24 = a2;
    v25 = [a6 itemIdentifier];
    sub_1CEFFCBA8(v25);
    v37 = v36;

    v38 = a2;
    a3(v37, 0, 0, a2);

    swift_unknownObjectRelease();
  }

  else
  {
    v39[1] = *&a5[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
    sub_1CEFCCBDC(a10, v23, &unk_1EC4BE310, qword_1CF9FCBE0);
    v26 = (*(v20 + 80) + 56) & ~*(v20 + 80);
    v27 = swift_allocObject();
    v27[2] = a5;
    v27[3] = a6;
    v28 = v41;
    v29 = v42;
    v27[4] = v42;
    v27[5] = v28;
    v27[6] = v40;
    sub_1CEFE55D0(v23, v27 + v26, &unk_1EC4BE310, qword_1CF9FCBE0);
    v30 = (v27 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v47;
    *v30 = a3;
    v30[1] = v31;
    aBlock[4] = sub_1CF326324;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_142_0;
    v32 = _Block_copy(aBlock);
    v33 = a5;
    swift_unknownObjectRetain();
    v34 = v29;

    sub_1CF9E63F8();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1CEFD5B1C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v35 = v43;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v18, v15, v32);
    _Block_release(v32);
    (*(v46 + 8))(v15, v35);
    (*(v44 + 8))(v18, v45);
  }
}

double sub_1CF3112CC(char *a1, void *a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), void (*a7)(uint64_t, void, void, id), _OWORD *a8)
{
  v14 = a4 & ~a5;

  sub_1CF31C694(a2, a3, v14 & 0xFFFFFFFFFFFFFFFBLL, a6, a1, a7, a8);

  return result;
}

void sub_1CF311358(uint64_t a1@<X0>, _DWORD *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = aBlock - v6;
  sub_1CEFCCBDC(a1, aBlock - v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1CF9E5A18();
    v11 = v10;
    (*(v9 + 8))(v7, v8);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CF36581C;
    *(v12 + 24) = 0;
    aBlock[4] = sub_1CF19BE7C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9B8AD8;
    aBlock[3] = &block_descriptor_187;
    v13 = _Block_copy(aBlock);

    sub_1CF9E6978();
    v11, v14, v15, v16, v17, v18, v19, v20;
    v21 = fpfs_set_metadata();

    _Block_release(v13);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      *a3 = v21;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF3115C4(uint64_t a1, uint64_t a2, unint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, uint64_t a6)
{
  v105 = a5;
  v106 = a2;
  v10 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v94 - v12;
  v13 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v101 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5268();
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF51B588(&v107);
  v24 = v108;
  v25 = v111;
  if (v109)
  {

    v24, v26, v27, v28, v29, v30, v31, v32;
    v25, v33, v34, v35, v36, v37, v38, v39;
    v40 = a3;
    v24 = a4;
  }

  else
  {
    v40 = v107;
    if (v111)
    {
      v41 = a6;
      v42 = v110;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      v43 = v42;
      a6 = v41;
      MEMORY[0x1D3868CC0](v43, v25);
      v25, v44, v45, v46, v47, v48, v49, v50;
      v40 = v107;
      v24 = v108;
    }
  }

  if (v40 == a3 && v24 == a4 || (v51 = v40, (sub_1CF9E8048() & 1) != 0))
  {
    v24, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v99 = a1;
    v53 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v54 = sub_1CF9E6888();
    v55 = [v53 initWithSuiteName_];

    if (v55 && (v98 = a6, v63 = sub_1CF9E6888(), v64 = [v55 BOOLForKey_], v55, v63, (v64 & 1) != 0))
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      sub_1CF9E7948();
      v108, v65, v66, v67, v68, v69, v70, v71;
      v107 = 0xD00000000000001BLL;
      v108 = 0x80000001CFA3F4F0;
      MEMORY[0x1D3868CC0](v51, v24);
      v72 = v107;
      v73 = v108;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v74 = qword_1EDEBB5A0;
      v75 = sub_1CF9E7298();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v76 = swift_allocObject();
      v96 = xmmword_1CF9FA450;
      *(v76 + 16) = xmmword_1CF9FA450;
      *(v76 + 56) = MEMORY[0x1E69E6158];
      v95 = sub_1CEFD51C4();
      *(v76 + 64) = v95;
      *(v76 + 32) = v72;
      *(v76 + 40) = v73;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v74, v75, v76);
      v76, v77, v78, v79, v80, v81, v82, v83;
      MEMORY[0x1EEE9AC00](v84);
      *(&v94 - 4) = v99;
      *(&v94 - 3) = v51;
      *(&v94 - 2) = v24;
      sub_1CEFE1894(sub_1CF326AA4);
      v24, v87, v88, v89, v90, v91, v92, v93;
    }

    else
    {
      v24, v56, v57, v58, v59, v60, v61, v62;
    }

    a1 = v99;
  }

  MEMORY[0x1EEE9AC00](v52);
  v85 = v106;
  *(&v94 - 2) = a1;
  *(&v94 - 1) = v85;
  return sub_1CEFE1894(sub_1CF326A88);
}

void sub_1CF311E94(_DWORD *a4@<X8>)
{
  sub_1CF9E5A18();
  v6 = v5;
  sub_1CF9E6978();
  v6, v7, v8, v9, v10, v11, v12, v13;
  sub_1CF9E6978();
  v14 = fpfs_set_before_bounce_filename_on_path();

  *a4 = v14;
}

void sub_1CF311F24(int *a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  sub_1CF9E5A18();
  v4 = v3;
  sub_1CF9E5A18();
  v6 = v5;
  v7 = sub_1CF9E6978();
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1CF9E6978();
  v6, v16, v17, v18, v19, v20, v21, v22;
  v23 = renamex_np((v7 + 32), (v15 + 32), 4u);

  if (v23)
  {
    if (MEMORY[0x1D38683F0](v24) == 22)
    {
      memset(&v45, 0, sizeof(v45));
      memset(&v46, 0, sizeof(v46));
      sub_1CF9E5A18();
      v26 = v25;
      v27 = sub_1CF9E6978();
      v26, v28, v29, v30, v31, v32, v33, v34;
      LODWORD(v26) = lstat((v27 + 32), &v46);

      if (!v26)
      {
        sub_1CF9E5A18();
        v36 = v35;
        v37 = sub_1CF9E6978();
        v36, v38, v39, v40, v41, v42, v43, v44;
        LODWORD(v36) = lstat((v37 + 32), &v45);

        if (!v36)
        {
          MEMORY[0x1D3868400](17);
        }
      }
    }
  }

  *a2 = v23;
}

uint64_t sub_1CF3120D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  v11(v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  return (v12)(v10, v4);
}

void sub_1CF312210(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a5;
  v113 = a8;
  v107 = a7;
  v108 = a6;
  v106 = a1;
  v114 = 0;
  v119 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v101 - v17;
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v26;
  v28 = (a2 + 16);
  v29 = swift_projectBox();
  swift_beginAccess();
  if ((*(a2 + 16) & 8) != 0)
  {
    v109 = v29;
    if (([a3 respondsToSelector_] & 1) == 0 || (objc_msgSend(a3, sel_fileSystemFlags) & 4) == 0)
    {
      v30 = v109;
      swift_beginAccess();
      (*(v20 + 16))(v27, v30, v19);
      v31 = sub_1CF9E5928();
      (*(v20 + 8))(v27, v19);
      *&v117[0] = 0;
      v32 = [v31 fp:v117 makeWritableWithError:?];

      if (v32)
      {
        v33 = *&v117[0];
      }

      else
      {
        v34 = *&v117[0];
        v35 = sub_1CF9E57F8();

        swift_willThrow();
        v114 = 0;
      }

      swift_beginAccess();
      if ((*v28 & 4) == 0)
      {
        *v28 |= 4uLL;
      }
    }

    sub_1CEFCCBDC(v112, v18, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      __break(1u);
      return;
    }

    sub_1CF9E5A18();
    v37 = v36;
    v38 = *(v20 + 8);
    v38(v18, v19);
    v39 = v110;
    sub_1CF9E58C8();
    v37, v40, v41, v42, v43, v44, v45, v46;
    v47 = [objc_opt_self() defaultManager];
    v48 = v109;
    swift_beginAccess();
    (*(v20 + 16))(v22, v48, v19);
    v49 = v111;
    v50 = v114;
    sub_1CF9E7278();
    v114 = v50;
    if (v50)
    {

      v38(v22, v19);
      v38(v39, v19);
LABEL_25:
      v99 = v113;
      swift_beginAccess();
      v100 = *(v99 + 16);
      *(v99 + 16) = v114;

      return;
    }

    v38(v22, v19);
    sub_1CEFCCC44(v49, &unk_1EC4BE310, qword_1CF9FCBE0);
    v38(v39, v19);
  }

  swift_beginAccess();
  v51 = *v28 & 0xFFFFFFFFFFFFFFF4;
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((v51 & (qword_1EDEABDE8 | 0x409000000C000)) != 0)
  {
    swift_beginAccess();
    if ((*v28 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;
    v56 = sub_1CF9E6AE8();
    v55, v57, v58, v59, v60, v61, v62, v63;
    if ((v56 & 1) == 0)
    {
      v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v65;
      v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v74 = v67;
      if (v64 == v68 && v66 == v67)
      {
        v66, v67, v68, v69, v70, v71, v72, v73;
        v74, v75, v76, v77, v78, v79, v80, v81;
      }

      else
      {
        v82 = sub_1CF9E8048();
        v66, v83, v84, v85, v86, v87, v88, v89;
        v74, v90, v91, v92, v93, v94, v95, v96;
        if ((v82 & 1) == 0)
        {
LABEL_17:
          sub_1CEFE528C(v115);
          v118 = v116;
          v117[12] = v115[12];
          v117[13] = v115[13];
          v117[14] = v115[14];
          v117[8] = v115[8];
          v117[9] = v115[9];
          v117[10] = v115[10];
          v117[11] = v115[11];
          v117[4] = v115[4];
          v117[5] = v115[5];
          v117[6] = v115[6];
          v117[7] = v115[7];
          v117[0] = v115[0];
          v117[1] = v115[1];
          v117[2] = v115[2];
          v117[3] = v115[3];
          MEMORY[0x1EEE9AC00](v52);
          *(&v101 - 2) = v106;
          *(&v101 - 1) = v28;
          v53 = v114;
          sub_1CF9BA920(v117, sub_1CF327330, &v101 - 32);
          v114 = v53;
          if (!v53)
          {
            return;
          }

          goto LABEL_25;
        }
      }
    }

    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v97 = v102;
    v98 = v105;
    sub_1CF9E57D8();
    v114 = sub_1CF9E50D8();
    (*(v104 + 8))(v97, v98);
    swift_willThrow();
    goto LABEL_25;
  }
}

uint64_t sub_1CF312A00@<X0>(uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  sub_1CF9E5A18();
  v7 = v6;
  swift_beginAccess();
  aBlock[0] = *a3;
  sub_1CF2ACEBC(aBlock);
  aBlock[4] = sub_1CF36581C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF9B8AD8;
  aBlock[3] = &block_descriptor_190_0;
  v8 = _Block_copy(aBlock);

  sub_1CF9E6978();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = fpfs_set_metadata();

  _Block_release(v8);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a4 = v16;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF312B6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  result = sub_1CF0089A8();
  if (result)
  {
    v6 = result;
    sub_1CF55A020(0xD000000000000015, 0x80000001CFA3F550, v4);
    if (a3 >> 62)
    {
      if (sub_1CF9E7818())
      {
        goto LABEL_6;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v32 = MEMORY[0x1E69E7CC0];

      sub_1CF3172FC(a3, v6, &v32);
      swift_bridgeObjectRelease_n();
      sub_1CF9E5438();
      swift_allocObject();
      sub_1CF9E5428();
      v14 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
      sub_1CF1E15C0();
      v15 = sub_1CF9E5418();
      v17 = v16;

      v14, v18, v19, v20, v21, v22, v23, v24;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF4F2F98(0xD000000000000015, 0x80000001CFA3F550, v15, v17, v4);

      sub_1CEFE4714(v15, v17);
      v14, v25, v26, v27, v28, v29, v30, v31;
      return 0;
    }

    v6, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  return result;
}

void sub_1CF312D90(unint64_t a1, void *a2, char *a3, unint64_t *a4, uint64_t (**a5)(char *, uint64_t, uint64_t), void (*a6)(void *, void, void, id), uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
  v57 = a1;
  v9 = sub_1CF7F5844(a1);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](544108320, 0xE400000000000000);
  v19 = [a2 itemIdentifier];
  v20 = NSFileProviderItemIdentifier.description.getter(v19);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);

  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  sub_1CF9E7B58();
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBB5A0;
  v31 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v33 = sub_1CF9E7718();
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1CEFD51C4();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  *(v32 + 96) = v36;
  *(v32 + 104) = v37;
  *(v32 + 64) = v37;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0xE000000000000000;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v30, v31, v32);
  v32, v38, v39, v40, v41, v42, v43, v44;

  sub_1CF32090C(v56, a4, v57, a5, a3, a6, a7);

  v45 = sub_1CF9E7298();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CF9FA450;
  v47 = sub_1CF9E7718();
  *(v46 + 56) = v36;
  *(v46 + 64) = v37;
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v30, v45, v46);
  v46, v49, v50, v51, v52, v53, v54, v55;
}

uint64_t sub_1CF313088(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  if (a1)
  {
    v7 = a1;
    v8 = a4;
    v9 = a2;
    v10 = [objc_opt_self() legacyDefaultManager];
    v11 = *MEMORY[0x1E6967298];
    v14[4] = nullsub_1;
    v14[5] = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1CF00A468;
    v14[3] = &block_descriptor_193;
    v12 = _Block_copy(v14);
    [v10 signalEnumeratorForContainerItemIdentifier:v11 completionHandler:v12];
    _Block_release(v12);

    a1 = v7;
    a2 = v9;
    a4 = v8;
  }

  return (a5)(a1, a2, a3 & 1, a4);
}

void sub_1CF31337C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = sub_1CF9E57E8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, a1, a2, a3 & 1);
}

void sub_1CF313404(uint64_t a1, uint64_t a2)
{
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEBB5A0;
  v4 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v6 = sub_1CF9E7718();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1CEFD51C4();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 64) = v10;
  *(v5 + 72) = 0xD000000000000016;
  *(v5 + 80) = 0x80000001CFA3EF90;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v3, v4, v5);
  v5, v11, v12, v13, v14, v15, v16, v17;
  type metadata accessor for LocalFileProvider.BarrierDelegate(0);
  swift_allocObject();
  v18 = (sub_1CF31448C(v32) + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  v19 = *v18;
  v20 = v18[1];
  *v18 = a1;
  v18[1] = a2;

  sub_1CEFF7124(v19, v20);
  sub_1CF315174();

  v21 = sub_1CF9E7298();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CF9FA450;
  v23 = sub_1CF9E7718();
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = v10;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v3, v21, v22);
  v22, v25, v26, v27, v28, v29, v30, v31;
}

id sub_1CF3136F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CF3137AC(uint64_t a1)
{
  result = type metadata accessor for LocalDomain(319);
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

uint64_t sub_1CF313858@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_1EC4BCD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EC4BF380);
  swift_endAccess();
  if (qword_1EC4BF378 == 1 || qword_1EC4BF350 != a1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
LABEL_14:
    swift_beginAccess();
    os_unfair_lock_unlock(&dword_1EC4BF380);
    return swift_endAccess();
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  result = MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3F3F0);
  if (qword_1EC4BF378 != 1)
  {
    sub_1CF9E7B58();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDEBB5A0;
    v7 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1CF9FA450;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1CEFD51C4();
    *(v8 + 32) = v21;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v6, v7, v8);
    v8, v9, v10, v11, v12, v13, v14, v15;
    v16 = qword_1EC4BF378;
    v17 = 0uLL;
    v18 = 0uLL;
    if (qword_1EC4BF378 != 1)
    {
      v19 = *&qword_1EC4BF368;
      v20 = unk_1EC4BF358;

      v18 = v19;
      v17 = v20;
    }

    *a2 = v17;
    *(a2 + 16) = v18;
    *(a2 + 32) = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1CF313AD0(void (*a1)(void))
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  a1();
}

void sub_1CF313CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_3:
      v11 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_1CF9E5B48();
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = v11;
  (*(a6 + 16))(a6, a1, a2, v10);
}

void sub_1CF313F20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1CF9E5B48();
  }

  if (a6 >> 60 == 15)
  {
    v14 = 0;
    if (a7)
    {
LABEL_6:
      v15 = sub_1CF9E57E8();
      goto LABEL_9;
    }
  }

  else
  {
    v14 = sub_1CF9E5B48();
    if (a7)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = v15;
  (*(a8 + 16))(a8, a1, a2, v13, v14);
}

uint64_t sub_1CF314014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  v15 = sub_1CF9E5A58();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  a6(a1, a2, v14, a3, a4, a5);
  return sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF3142DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  sub_1CEFCCBDC(a3, &v20 - v14, &unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v18 = sub_1CF9E5928();
    (*(v17 + 8))(v15, v16);
  }

  if (a5 >> 60 == 15)
  {
    v19 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = sub_1CF9E5B48();
  if (a6)
  {
LABEL_7:
    a6 = sub_1CF9E57E8();
  }

LABEL_8:
  (*(a7 + 16))(a7, a1, a2, v18, v19, a6);
}

uint64_t sub_1CF31448C(char *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  v89 = sub_1CF9E63A8();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CF9E73D8();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1CF9E6448();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E7388();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5D98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5A58();
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) = 0;
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified) = 0;
  v95 = v1;
  v20 = (v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  *v20 = 0;
  v20[1] = 0;
  v21 = a1;
  v22 = &a1[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain];
  sub_1CF9E5988();
  aBlock = 0x726569727261622ELL;
  v97 = 0xE90000000000002DLL;
  sub_1CF9E5D88();
  sub_1CEFD5B1C(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  (*(v11 + 8))(v13, v10);
  v33 = v97;
  v91 = v19;
  sub_1CF9E5958();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = [objc_opt_self() defaultManager];
  v92 = v16;
  v42 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(v25) = [v41 removeItemAtURL:v42 error:&aBlock];

  if (v25)
  {
    v43 = aBlock;
  }

  else
  {
    v44 = aBlock;
    v45 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v46 = v95;
  swift_unknownObjectWeakAssign();
  v47 = v93 + 16;
  v48 = *(v93 + 16);
  v49 = v46 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_barrierURL;
  v50 = v94;
  v48(v49, v92, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v51 = (*(v47 + 64) + 32) & ~*(v47 + 64);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  v74 = v52;
  v48(v52 + v51, v91, v50);
  sub_1CEFFD30C(v22, v90, type metadata accessor for LocalDomain);
  v53 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v54 = sub_1CF9E6888();
  v55 = [v53 initWithSuiteName_];

  v88 = v21;
  if (v55 && (v56 = sub_1CF9E6888(), v57 = [v55 BOOLForKey_], v55, v56, v57))
  {
    v58 = 0.1;
  }

  else
  {
    v58 = 0.5;
  }

  v73 = 0x80000001CFA3F000;
  type metadata accessor for FSEventReader(0);
  v59 = swift_allocObject();
  v59[2] = 0;
  *(v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v75 + 104))(v77, *MEMORY[0x1E69E8098], v76);
  v60 = v80;
  sub_1CF9E63F8();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v61 = MEMORY[0x1E69E6328];
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v59[3] = sub_1CF9E73B8();
  v59[6] = v74;
  sub_1CEFFC48C(v90, v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  v59[4] = -1;
  v59[5] = -1;
  *(v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 0;
  *(v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v58;
  *(v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 0;
  v62 = (v59 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
  v63 = v73;
  *v62 = 0xD000000000000014;
  v62[1] = v63;
  v64 = v95;
  *(v95 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader) = v59;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, v61);
  v65 = v81;
  v66 = v83;
  sub_1CF9E77B8();
  v67 = sub_1CF9E73E8();
  (*(v82 + 8))(v65, v66);
  swift_getObjectType();
  v100 = sub_1CF315B8C;
  v101 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1CEFCA444;
  v99 = &block_descriptor_12;
  v68 = _Block_copy(&aBlock);

  sub_1CF9E63F8();
  v69 = v86;
  sub_1CEFD5A30();
  sub_1CF9E7408();
  _Block_release(v68);

  (*(v87 + 8))(v69, v89);
  (*(v84 + 8))(v60, v85);
  v70 = *(v93 + 8);
  v71 = v94;
  v70(v92, v94);
  v70(v91, v71);

  *(v64 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer) = v67;
  swift_unknownObjectRelease();
  return v64;
}

uint64_t sub_1CF315070(uint64_t a1)
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBB5A0;
  v2 = sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CF9FA450;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1CEFD51C4();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x80000001CFA3F080;
  sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v1, v2, v3);
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF31559C();
}

id sub_1CF315174()
{
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6388();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - v7);
  v9 = sub_1CF9E6498();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v35 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer;
  v36 = v0;
  if (*(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer))
  {
    v34 = v14;
    ObjectType = swift_getObjectType();
    v32 = v5;
    swift_unknownObjectRetain();
    sub_1CF9E6478();
    *v8 = 5;
    (*(v3 + 104))(v8, *MEMORY[0x1E69E7F48], v2);
    MEMORY[0x1D3868740](v12, v8);
    v33 = v1;
    v17 = *(v3 + 8);
    v17(v8, v2);
    v30 = v2;
    v18 = *(v10 + 8);
    v18(v12, v34);
    v19 = ObjectType;
    sub_1CEFD5B64(v8);
    v20 = v32;
    sub_1CEFD5BD8(v32);
    MEMORY[0x1D3869770](v16, v8, v20, v19);
    swift_unknownObjectRelease();
    v21 = v30;
    v17(v20, v30);
    v17(v8, v21);
    v18(v16, v34);
  }

  v22 = v36;
  *(*(v36 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4BFACC8;
  swift_unknownObjectWeakAssign();
  v23 = v35;
  if (*(v22 + v35))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7428();
    swift_unknownObjectRelease();
  }

  sub_1CF01C124();
  v24 = [objc_opt_self() defaultManager];
  v25 = sub_1CF9E5928();
  v37[0] = 0;
  v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v37];

  if (v26)
  {
    return v37[0];
  }

  v28 = v37[0];
  sub_1CF9E57F8();

  swift_willThrow();
  sub_1CF02AA74();
  if (*(v22 + v23))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  *(v22 + v23) = 0;
  swift_unknownObjectRelease();
  return swift_willThrow();
}

uint64_t sub_1CF31559C()
{
  v3 = v0;
  v4 = sub_1CF9E64A8();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader);
  v10 = v9[3];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v11 = v10;
  LOBYTE(v10) = sub_1CF9E64D8();
  result = (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_11:
    v17 = qword_1EDEBB5A0;
    v18 = sub_1CF9E7288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1CF9FA450;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1CEFD51C4();
    *(v19 + 32) = 0xD000000000000030;
    *(v19 + 40) = v2;
    sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v17, v18, v19);
    v19, v20, v21, v22, v23, v24, v25, v26;
    sub_1CF313404(v4, v8);

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified))
  {
    return result;
  }

  *(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified) = 1;
  sub_1CF02AA74();
  v13 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer;
  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  *(v3 + v13) = 0;
  swift_unknownObjectRelease();
  v1 = &qword_1EC4BF000;
  v14 = v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize;
  v4 = *(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) != 1)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v8 = *(v14 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v9 = Strong;
    v2 = 0x80000001CFA3F0F0;
    v16 = qword_1EDEA3408;

    if (v16 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v4)
  {
    v8 = *(v14 + 8);

    v4(0);
LABEL_12:
    sub_1CEFF7124(v4, v8);
  }

LABEL_13:
  v27 = (v3 + v1[156]);
  v28 = *v27;
  v29 = v27[1];
  *v27 = 0;
  v27[1] = 0;
  return sub_1CEFF7124(v28, v29);
}

uint64_t sub_1CF315898()
{
  v1 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_barrierURL;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  MEMORY[0x1D386CEF0](v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_provider);
  sub_1CEFF7124(*(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize), *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1CF3159A0(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF315A80(uint64_t a1)
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBB5A0;
  v2 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CF9FA450;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1CEFD51C4();
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x80000001CFA3F0B0;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v1, v2, v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  return sub_1CF31559C();
}

void sub_1CF315B94(uint64_t *a1)
{
  v2 = *(type metadata accessor for LocalContainer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CF6F3780(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CF315C3C(v5);
  *a1 = v3;
}

void sub_1CF315C3C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CF9E7F88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LocalContainer(0);
        v6 = sub_1CF9E6DB8();
        *v6->tree = v5;
      }

      v7 = *(type metadata accessor for LocalContainer(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1CF316044(v15, v16, a1, v4);
      *v6->tree = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CF315D68(0, v2, 1, a1);
  }
}

void sub_1CF315D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for LocalContainer(0);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v30 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = *(v14 + 72);
  v19 = *a4 + v18 * (a3 - 1);
  v20 = -v18;
  v21 = a1 - a3;
  v35 = v17;
  v29 = v18;
  v22 = v17 + v18 * a3;
LABEL_6:
  v33 = v19;
  v34 = a3;
  v31 = v22;
  v32 = v21;
  while (1)
  {
    sub_1CEFFD30C(v22, v16, type metadata accessor for LocalContainer);
    sub_1CEFFD30C(v19, v12, type metadata accessor for LocalContainer);
    v23 = *(v16 + 2);
    v24 = *(v12 + 2);
    if (!v23)
    {
      break;
    }

    if (!v24 || (*(v16 + 1) == *(v12 + 1) ? (v25 = v23 == v24) : (v25 = 0), v25))
    {
      sub_1CF007BF8(v12, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
LABEL_5:
      a3 = v34 + 1;
      v19 = v33 + v29;
      v21 = v32 - 1;
      v22 = v31 + v29;
      if (v34 + 1 == v30)
      {
        return;
      }

      goto LABEL_6;
    }

    v26 = sub_1CF9E8048();
    sub_1CF007BF8(v12, type metadata accessor for LocalContainer);
    sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v35)
    {
      goto LABEL_21;
    }

LABEL_18:
    sub_1CEFFC48C(v22, v9, type metadata accessor for LocalContainer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CEFFC48C(v9, v19, type metadata accessor for LocalContainer);
    v19 += v20;
    v22 += v20;
    if (__CFADD__(v21++, 1))
    {
      goto LABEL_5;
    }
  }

  if (!v24)
  {
    goto LABEL_22;
  }

  sub_1CF007BF8(v12, type metadata accessor for LocalContainer);
  sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1CF316044(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v148 = type metadata accessor for LocalContainer(0);
  v141 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v137 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v128 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v128 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v128 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v128 - v32;
  v33 = *(a3 + 8);
  if (v33 < 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v5 = *v134;
    if (!*v134)
    {
      goto LABEL_164;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v149 = v35;
      v123 = *v35->tree;
      if (v123 >= 2)
      {
        while (*a3)
        {
          v124 = v35;
          v35 = *(&v35->super.isa + 2 * v123);
          v118 = v124;
          v125 = *&v124->tester[16 * v123];
          sub_1CF316B40(*a3 + *(v141 + 72) * v35, *a3 + *(v141 + 72) * *&v124->tree[16 * v123], *a3 + *(v141 + 72) * v125, v5);
          if (v6)
          {
            goto LABEL_132;
          }

          if (v125 < v35)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_1CF6F3368(v118, v25, v26, v27, v28, v29, v30, v31);
          }

          if (v123 - 2 >= *v118->tree)
          {
            goto LABEL_150;
          }

          v126 = &v118->super.isa + 2 * v123;
          *v126 = v35;
          v126[1] = v125;
          v149 = v118;
          sub_1CF6F32DC(v123 - 1);
          v35 = v149;
          v123 = *v149->tree;
          if (v123 <= 1)
          {
            goto LABEL_133;
          }
        }

        goto LABEL_162;
      }

LABEL_133:
      v127 = v35;
LABEL_134:
      v127, v25, v26, v27, v28, v29, v30, v31;
      return;
    }

LABEL_156:
    v35 = sub_1CF6F3368(v35, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_123;
  }

  v128 = a4;
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v142 = a3;
  v138 = v17;
  while (2)
  {
    v36 = v34;
    v37 = v34 + 1;
    if (v34 + 1 >= v33)
    {
      goto LABEL_43;
    }

    v139 = v33;
    v129 = v35;
    v38 = *a3;
    v39 = *(v141 + 72);
    v40 = (v34 + 1);
    v41 = v132;
    sub_1CEFFD30C(v38 + v39 * v37, v132, type metadata accessor for LocalContainer);
    v143 = v39;
    v42 = v38 + v39 * v36;
    v43 = v133;
    sub_1CEFFD30C(v42, v133, type metadata accessor for LocalContainer);
    v44 = *(v41 + 16);
    v45 = *(v43 + 16);
    v130 = v6;
    if (v44)
    {
      if (!v45 || *(v132 + 8) == *(v133 + 8) && v44 == v45)
      {
        LODWORD(v140) = 0;
      }

      else
      {
        LODWORD(v140) = sub_1CF9E8048();
      }
    }

    else
    {
      if (!v45)
      {
        goto LABEL_165;
      }

      LODWORD(v140) = 1;
    }

    sub_1CF007BF8(v133, type metadata accessor for LocalContainer);
    sub_1CF007BF8(v132, type metadata accessor for LocalContainer);
    v131 = v36;
    v46 = v36 + 2;
    v47 = v143 * (v36 + 2);
    v48 = v38 + v47;
    v49 = v40;
    v50 = v143 * v40;
    a3 = v38 + v143 * v40;
    do
    {
      v52 = v46;
      v35 = v49;
      v5 = v50;
      v53 = v47;
      v144 = v46;
      if (v46 >= v139)
      {
        break;
      }

      v54 = v14;
      v55 = v145;
      sub_1CEFFD30C(v48, v145, type metadata accessor for LocalContainer);
      v56 = v146;
      sub_1CEFFD30C(a3, v146, type metadata accessor for LocalContainer);
      v57 = *(v55 + 16);
      v58 = *(v56 + 16);
      if (v57)
      {
        if (v58)
        {
          v14 = v54;
          if (*(v145 + 8) == *(v146 + 8) && v57 == v58)
          {
            v51 = 0;
          }

          else
          {
            v51 = sub_1CF9E8048();
          }

          goto LABEL_16;
        }

        v51 = 0;
      }

      else
      {
        if (!v58)
        {
          goto LABEL_160;
        }

        v51 = 1;
      }

      v14 = v54;
LABEL_16:
      v17 = v138;
      v6 = type metadata accessor for LocalContainer;
      sub_1CF007BF8(v146, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v145, type metadata accessor for LocalContainer);
      v52 = v144;
      v46 = v144 + 1;
      v48 += v143;
      a3 += v143;
      v49 = (&v35->super.isa + 1);
      v50 = v5 + v143;
      v47 = v53 + v143;
    }

    while (((v140 ^ v51) & 1) == 0);
    if ((v140 & 1) == 0)
    {
      v37 = v52;
      goto LABEL_42;
    }

    if (v52 < v131)
    {
      goto LABEL_153;
    }

    if (v131 >= v52)
    {
      v37 = v52;
      v35 = v129;
      v6 = v130;
      a3 = v142;
      v36 = v131;
    }

    else
    {
      v59 = v131 * v143;
      v60 = v131;
      do
      {
        if (v60 != v35)
        {
          v62 = *v142;
          if (!*v142)
          {
            goto LABEL_161;
          }

          sub_1CEFFC48C(v62 + v59, v137, type metadata accessor for LocalContainer);
          if (v59 < v5 || v62 + v59 >= (v62 + v53))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v59 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CEFFC48C(v137, v62 + v5, type metadata accessor for LocalContainer);
        }

        v60 = (v60 + 1);
        v5 -= v143;
        v53 -= v143;
        v59 += v143;
        v61 = v60 < v35;
        v35 = (v35 - 1);
      }

      while (v61);
      v37 = v144;
LABEL_42:
      v35 = v129;
      v6 = v130;
      a3 = v142;
      v36 = v131;
    }

LABEL_43:
    v63 = *(a3 + 8);
    if (v37 >= v63)
    {
      goto LABEL_70;
    }

    if (__OFSUB__(v37, v36))
    {
      goto LABEL_152;
    }

    if (v37 - v36 >= v128)
    {
LABEL_70:
      if (v37 < v36)
      {
        goto LABEL_151;
      }

      v144 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1CF1F6594(0, *v35->tree + 1, 1, v35, v28, v29, v30, v31);
      }

      v77 = *v35->tree;
      v76 = *v35->tester;
      v78 = v77 + 1;
      v34 = v144;
      if (v77 >= v76 >> 1)
      {
        v122 = sub_1CF1F6594((v76 > 1), v77 + 1, 1, v35, v28, v29, v30, v31);
        v34 = v144;
        v35 = v122;
      }

      *v35->tree = v78;
      v79 = v35 + 16 * v77;
      *(v79 + 4) = v36;
      *(v79 + 5) = v34;
      v5 = *v134;
      if (!*v134)
      {
        goto LABEL_163;
      }

      if (!v77)
      {
LABEL_3:
        a3 = v142;
        v33 = v142[1];
        if (v34 >= v33)
        {
          goto LABEL_121;
        }

        continue;
      }

      while (1)
      {
        a3 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          isa = v35[1].super.isa;
          v81 = *v35[1]._anon_8;
          v90 = __OFSUB__(v81, isa);
          v82 = v81 - isa;
          v83 = v90;
LABEL_90:
          if (v83)
          {
            goto LABEL_140;
          }

          v96 = &v35->super.isa + 2 * v78;
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_143;
          }

          v102 = &v35[1].super.isa + 2 * a3;
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_147;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              a3 = v78 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        v106 = &v35->super.isa + 2 * v78;
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_104:
        if (v101)
        {
          goto LABEL_142;
        }

        v109 = v35 + 16 * a3;
        v111 = *(v109 + 4);
        v110 = *(v109 + 5);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_145;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_111:
        v117 = a3 - 1;
        if (a3 - 1 >= v78)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v142)
        {
          goto LABEL_159;
        }

        v118 = v35;
        v119 = v35 + 1;
        v35 = *(&v35[1].super.isa + 2 * v117);
        v120 = *&v119->_anon_8[16 * a3];
        sub_1CF316B40(*v142 + *(v141 + 72) * v35, *v142 + *(v141 + 72) * *(&v119->super.isa + 2 * a3), *v142 + *(v141 + 72) * v120, v5);
        if (v6)
        {
LABEL_132:
          v127 = v118;
          goto LABEL_134;
        }

        if (v120 < v35)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1CF6F3368(v118, v25, v26, v27, v28, v29, v30, v31);
        }

        if (v117 >= *v118->tree)
        {
          goto LABEL_137;
        }

        v121 = v118 + 16 * v117;
        *(v121 + 4) = v35;
        *(v121 + 5) = v120;
        v149 = v118;
        sub_1CF6F32DC(a3);
        v35 = v149;
        v78 = *v149->tree;
        v34 = v144;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = &v35[1] + 16 * v78;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_138;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_139;
      }

      v91 = &v35->super.isa + 2 * v78;
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_141;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_144;
      }

      if (v95 >= v87)
      {
        v113 = &v35[1].super.isa + 2 * a3;
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_148;
        }

        if (v82 < v116)
        {
          a3 = v78 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_90;
    }

    break;
  }

  v64 = v36 + v128;
  if (__OFADD__(v36, v128))
  {
    goto LABEL_154;
  }

  if (v64 >= v63)
  {
    v64 = *(a3 + 8);
  }

  if (v64 < v36)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v37 == v64)
  {
    goto LABEL_70;
  }

  v129 = v35;
  v130 = v6;
  a3 = *a3;
  v65 = *(v141 + 72);
  v66 = a3 + v65 * (v37 - 1);
  v67 = v36;
  v68 = -v65;
  v131 = v67;
  v69 = v67 - v37;
  v135 = v65;
  v136 = v64;
  v5 = a3 + v37 * v65;
  while (2)
  {
    v143 = v66;
    v144 = v37;
    v139 = v5;
    v140 = v69;
LABEL_55:
    sub_1CEFFD30C(v5, v17, type metadata accessor for LocalContainer);
    sub_1CEFFD30C(v66, v14, type metadata accessor for LocalContainer);
    v70 = *(v17 + 2);
    v71 = *(v14 + 2);
    if (v70)
    {
      if (!v71 || (*(v17 + 1) == *(v14 + 1) ? (v72 = v70 == v71) : (v72 = 0), v72))
      {
        sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
        sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
LABEL_53:
        v37 = v144 + 1;
        v66 = v143 + v135;
        v69 = v140 - 1;
        v5 = v139 + v135;
        if (v144 + 1 == v136)
        {
          v37 = v136;
          v35 = v129;
          v6 = v130;
          v36 = v131;
          goto LABEL_70;
        }

        continue;
      }

      v73 = sub_1CF9E8048();
      sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
      if ((v73 & 1) == 0)
      {
        goto LABEL_53;
      }

      if (!a3)
      {
        goto LABEL_157;
      }

      goto LABEL_66;
    }

    break;
  }

  if (!v71)
  {
    goto LABEL_158;
  }

  sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
  sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
  if (a3)
  {
LABEL_66:
    v74 = v147;
    sub_1CEFFC48C(v5, v147, type metadata accessor for LocalContainer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CEFFC48C(v74, v66, type metadata accessor for LocalContainer);
    v66 += v68;
    v5 += v68;
    if (__CFADD__(v69++, 1))
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
}

void sub_1CF316B40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for LocalContainer(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_78;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_79;
  }

  v20 = (a2 - a1) / v18;
  v48 = a1;
  v47 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v22;
    if (v22 >= 1)
    {
      v29 = -v18;
      v30 = a4 + v22;
      v42 = -v18;
      do
      {
        v39 = v28;
        v31 = a2;
        a2 += v29;
        v41 = v31;
        while (1)
        {
          if (v31 <= a1)
          {
            v48 = v31;
            v46 = v39;
            goto LABEL_76;
          }

          v32 = a3;
          v40 = v28;
          v33 = v30 + v29;
          v34 = v44;
          sub_1CEFFD30C(v30 + v29, v44, type metadata accessor for LocalContainer);
          v35 = v45;
          sub_1CEFFD30C(a2, v45, type metadata accessor for LocalContainer);
          v36 = *(v34 + 16);
          v37 = *(v35 + 16);
          if (v36)
          {
            v38 = !v37 || *(v44 + 8) == *(v45 + 8) && v36 == v37 ? 0 : sub_1CF9E8048();
          }

          else
          {
            if (!v37)
            {
              goto LABEL_81;
            }

            v38 = 1;
          }

          a3 = v32 + v42;
          sub_1CF007BF8(v45, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v44, type metadata accessor for LocalContainer);
          if (v38)
          {
            break;
          }

          v28 = v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = v33;
          v31 = v41;
          v29 = v42;
          if (v33 <= a4)
          {
            a2 = v41;
            goto LABEL_75;
          }
        }

        if (v32 < v41 || a3 >= v41)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v40;
        }

        else
        {
          v28 = v40;
          if (v32 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > a4);
    }

LABEL_75:
    v48 = a2;
    v46 = v28;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v21;
    v46 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        sub_1CEFFD30C(a2, v16, type metadata accessor for LocalContainer);
        sub_1CEFFD30C(a4, v13, type metadata accessor for LocalContainer);
        v25 = *(v16 + 2);
        v26 = *(v13 + 2);
        if (v25)
        {
          if (!v26 || (*(v16 + 1) == *(v13 + 1) ? (v27 = v25 == v26) : (v27 = 0), v27))
          {
            sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
            sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
LABEL_29:
            if (a1 < a4 || a1 >= a4 + v18)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v47 = a4 + v18;
            a4 += v18;
            goto LABEL_43;
          }

          LODWORD(v45) = sub_1CF9E8048();
          sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
          if ((v45 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (!v26)
          {
            goto LABEL_80;
          }

          sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v16, type metadata accessor for LocalContainer);
        }

        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
LABEL_43:
        a1 += v18;
        v48 = a1;
      }

      while (a4 < v23 && a2 < a3);
    }
  }

LABEL_76:
  sub_1CF317128(&v48, &v47, &v46);
}

uint64_t sub_1CF317128(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LocalContainer(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CF31720C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1CF3172FC(unint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester **a3)
{
  v36 = a3;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v6 = 0;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3869C30](v6, a1);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (*(a2 + 16) && (v11 = sub_1CF7BF928(v8), (v12 & 1) != 0))
      {
        v13 = (*(a2 + 56) + (v11 << 6));
        v14 = v13[3];
        v16 = *v13;
        v15 = v13[1];
        v34 = v13[2];
        v35 = v14;
        v32 = v16;
        v33 = v15;
        v17 = v36;
        v18 = *v36;
        sub_1CEFCCBDC(&v32, v31, &unk_1EC4BF250, &unk_1CFA01B50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1CF1F6F14(0, (*v18->tree + 1), 1, v18, v20, v21, v22, v23);
          *v36 = v18;
        }

        v25 = *v18->tree;
        v24 = *v18->tester;
        if (v25 >= v24 >> 1)
        {
          v18 = sub_1CF1F6F14((v24 > 1), (v25 + 1), 1, v18, v20, v21, v22, v23);
          *v36 = v18;
        }

        *v18->tree = v25 + 1;
        v26 = &v18[2 * v25];
        v27 = v32;
        v28 = v33;
        v29 = v35;
        *&v26[2].super.isa = v34;
        *v26[2].tree = v29;
        *&v26[1].super.isa = v27;
        *v26[1].tree = v28;

        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        i = v30;
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_1CF3174C8(uint64_t a1, uint64_t a2, char *a3, void (**a4)(const void *, void, void *))
{
  v106 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v102 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v102 - v11;
  v111 = sub_1CF9E5A58();
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = swift_allocObject();
  *(v112 + 16) = a4;
  aBlock = 0;
  v115 = 0xE000000000000000;
  v104 = a4;
  _Block_copy(a4);
  sub_1CF9E7948();
  v115, v14, v15, v16, v17, v18, v19, v20;
  aBlock = 0x2074726F706D69;
  v115 = 0xE700000000000000;
  v102 = a1;
  sub_1CF9E5A18();
  v22 = v21;
  v23 = sub_1CF9E6888();
  v22, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v23 fp_prettyPath];

  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;

  MEMORY[0x1D3868CC0](v32, v34);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0x65726170206E6920, 0xEB0000000020746ELL);
  v105 = a2;
  v42 = NSFileProviderItemIdentifier.description.getter(a2);
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v53 = aBlock;
  v52 = v115;
  v54 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDEBB5A0;
  v56 = sub_1CF9E7298();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CF9FA440;
  v109 = v54;
  aBlock = v54;
  v107 = sub_1CEFFD0A8();
  v58 = sub_1CF9E7718();
  v60 = v59;
  v61 = MEMORY[0x1E69E6158];
  *(v57 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1CEFD51C4();
  *(v57 + 32) = v58;
  *(v57 + 40) = v60;
  *(v57 + 96) = v61;
  *(v57 + 104) = v62;
  v63 = v62;
  *(v57 + 64) = v62;
  *(v57 + 72) = v53;
  *(v57 + 80) = v52;
  v110 = v55;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v55, v56, v57);
  v57, v64, v65, v66, v67, v68, v69, v70;
  v71 = v106;
  sub_1CEFFD89C(&v106[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1u, v105, v9);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v72 - 8) + 48))(v9, 1, v72) == 1)
  {
    sub_1CEFCCC44(v9, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v113 + 56))(v12, 1, 1, v111);
LABEL_6:
    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
    v77 = FPItemNotFoundError();
    if (v77)
    {
      v78 = sub_1CF9E57E8();
    }

    else
    {
      v78 = 0;
    }

    v104[2](v104, 0, v78);

    goto LABEL_14;
  }

  v73 = *(v72 + 48);
  v74 = v113;
  v75 = *(v113 + 32);
  v76 = v111;
  v75(v12, v9, v111);
  (*(v74 + 56))(v12, 0, 1, v76);
  sub_1CEFCCC44(&v9[v73], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v74 + 48))(v12, 1, v76) == 1)
  {
    goto LABEL_6;
  }

  v75(v103, v12, v76);
  v79 = sub_1CF9E5928();
  v80 = sub_1CF9E5928();
  v81 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v82 = sub_1CF9E6888();
  v83 = [v81 initWithSuiteName_];

  if (v83)
  {
    v84 = sub_1CF9E6888();
    v85 = [v83 BOOLForKey_];

    v86 = v85 ^ 1;
  }

  else
  {
    v86 = 1;
  }

  v87 = v112;
  v88 = swift_allocObject();
  v88[2] = v71;
  v88[3] = sub_1CF024BB0;
  v88[4] = v87;
  v118 = sub_1CF327394;
  v119 = v88;
  aBlock = MEMORY[0x1E69E9820];
  v115 = 1107296256;
  v116 = sub_1CF90535C;
  v117 = &block_descriptor_364;
  v89 = _Block_copy(&aBlock);
  v90 = v71;

  [v79 fp:v80 importUnderFolder:v86 allowCoordination:v89 completionHandler:?];
  _Block_release(v89);

  (*(v113 + 8))(v103, v76);
LABEL_14:
  v91 = sub_1CF9E7298();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CF9FA450;
  aBlock = v109;
  v93 = sub_1CF9E7718();
  *(v92 + 56) = MEMORY[0x1E69E6158];
  *(v92 + 64) = v63;
  *(v92 + 32) = v93;
  *(v92 + 40) = v94;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v110, v91, v92);

  v92, v95, v96, v97, v98, v99, v100, v101;
}

void sub_1CF317C3C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void (**a5)(const void *, void, void *))
{
  v83 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v79 - v13;
  v15 = sub_1CF9E5A58();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v80 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = swift_allocObject();
  *&aBlock = 0;
  *(v90 + 16) = a5;
  *(&aBlock + 1) = 0xE000000000000000;
  v81 = a5;
  _Block_copy(a5);
  sub_1CF9E7948();
  *(&aBlock + 1), v17, v18, v19, v20, v21, v22, v23;
  strcpy(&aBlock, "create dir '");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v79[0] = a1;
  v79[1] = a2;
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0x726170206E692027, 0xEC00000020746E65);
  v82 = a3;
  v24 = NSFileProviderItemIdentifier.description.getter(a3);
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = aBlock;
  v35 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBB5A0;
  v37 = sub_1CF9E7298();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA440;
  v87 = v35;
  *&aBlock = v35;
  v85 = sub_1CEFFD0A8();
  v39 = sub_1CF9E7718();
  v41 = v40;
  v42 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1CEFD51C4();
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  *(v38 + 96) = v42;
  *(v38 + 104) = v43;
  v84 = v43;
  *(v38 + 64) = v43;
  *(v38 + 72) = v34;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v36, v37, v38);
  v38, v44, v45, v46, v47, v48, v49, v50;
  v51 = v83;
  sub_1CEFFD89C(&v83[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1u, v82, v11);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v52 - 8) + 48))(v11, 1, v52) == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v88 + 56))(v14, 1, 1, v89);
  }

  else
  {
    v53 = *(v52 + 48);
    v54 = v88;
    v55 = v89;
    v56 = *(v88 + 32);
    v56(v14, v11, v89);
    (*(v54 + 56))(v14, 0, 1, v55);
    sub_1CEFCCC44(&v11[v53], &unk_1EC4BEC00, &unk_1CF9FCB60);
    v57 = (*(v54 + 48))(v14, 1, v55);
    v58 = v90;
    if (v57 != 1)
    {
      v61 = v80;
      v56(v80, v14, v55);
      v62 = sub_1CF9E5928();
      v63 = sub_1CF9E6888();
      v64 = swift_allocObject();
      v64[2] = v51;
      v64[3] = sub_1CF024BB0;
      v64[4] = v58;
      v94 = sub_1CF327394;
      v95 = v64;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v92 = sub_1CF90535C;
      v93 = &block_descriptor_354_0;
      v65 = _Block_copy(&aBlock);
      v66 = v51;

      [v62 fp:v63 createSubFolder:v65 completionHandler:?];
      _Block_release(v65);

      (*(v54 + 8))(v61, v55);
      goto LABEL_11;
    }
  }

  sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
  v59 = FPItemNotFoundError();
  if (v59)
  {
    v60 = sub_1CF9E57E8();
  }

  else
  {
    v60 = 0;
  }

  v81[2](v81, 0, v60);

LABEL_11:
  v67 = sub_1CF9E7298();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CF9FA450;
  *&aBlock = v87;
  v69 = sub_1CF9E7718();
  v70 = v84;
  *(v68 + 56) = MEMORY[0x1E69E6158];
  *(v68 + 64) = v70;
  *(v68 + 32) = v69;
  *(v68 + 40) = v71;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v36, v67, v68);

  v68, v72, v73, v74, v75, v76, v77, v78;
}

void sub_1CF3182B4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *aBlock)
{
  HIDWORD(v65[1]) = -335544320;
  _Block_copy(aBlock);
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  strcpy(v65, "rename item ");
  v60 = a1;
  v15 = NSFileProviderItemIdentifier.description.getter(a1);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0x27206F7420, 0xE500000000000000);
  v61 = a2;
  v63 = a3;
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  v25 = v65[1];
  v59 = v65[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDEBB5A0;
  v27 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v29 = sub_1CF9E7718();
  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1CEFD51C4();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  *(v28 + 96) = v32;
  *(v28 + 104) = v33;
  *(v28 + 64) = v33;
  *(v28 + 72) = v59;
  *(v28 + 80) = v25;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v26, v27, v28);
  v28, v34, v35, v36, v37, v38, v39, v40;
  sub_1CF2FF458(v60, a4, v61, v63, aBlock);
  v25, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1CF9E7298();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CF9FA450;
  v50 = sub_1CF9E7718();
  *(v49 + 56) = v32;
  *(v49 + 64) = v33;
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v26, v48, v49);
  v49, v52, v53, v54, v55, v56, v57, v58;
}

void sub_1CF3185E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v178 = a5;
  v168 = a4;
  v167 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v170 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v174 = &v165 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v171 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v165 - v16;
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v176 = v17;
  v177 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v173 = &v165 - v21;
  v22 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v179 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E5268();
  v180 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = swift_allocObject();
  *(v186 + 16) = a6;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v181 = a6;
  _Block_copy(a6);
  sub_1CF9E7948();
  *(&aBlock + 1), v27, v28, v29, v30, v31, v32, v33;
  strcpy(&aBlock, "reparent item ");
  HIBYTE(aBlock) = -18;
  v187 = a1;
  v34 = NSFileProviderItemIdentifier.description.getter(a1);
  v36 = v35;
  MEMORY[0x1D3868CC0](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](0x65726170206F7420, 0xEB0000000020746ELL);
  v172 = a2;
  v44 = NSFileProviderItemIdentifier.description.getter(a2);
  v46 = v45;
  MEMORY[0x1D3868CC0](v44);
  v46, v47, v48, v49, v50, v51, v52, v53;
  v54 = aBlock;
  v55 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v56 = qword_1EDEBB5A0;
  v57 = sub_1CF9E7298();
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CF9FA440;
  v185 = v55;
  *&aBlock = v55;
  v183 = sub_1CEFFD0A8();
  v59 = sub_1CF9E7718();
  v61 = v60;
  v62 = MEMORY[0x1E69E6158];
  *(v58 + 56) = MEMORY[0x1E69E6158];
  v63 = sub_1CEFD51C4();
  *(v58 + 32) = v59;
  *(v58 + 40) = v61;
  v64 = v56;
  *(v58 + 96) = v62;
  *(v58 + 104) = v63;
  v182 = v63;
  *(v58 + 64) = v63;
  *(v58 + 72) = v54;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v56, v57, v58);
  v58, v65, v66, v67, v68, v69, v70, v71;
  v72 = v187;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v74 = v73;
  LOBYTE(v58) = sub_1CF9E6AE8();
  v74, v75, v76, v77, v78, v79, v80, v81;
  if (v58)
  {
    goto LABEL_8;
  }

  v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v84 = v83;
  v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v92 = v85;
  if (v82 == v86 && v84 == v85)
  {
    v84, v85, v86, v87, v88, v89, v90, v91;
    v92, v93, v94, v95, v96, v97, v98, v99;
LABEL_8:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v115 = sub_1CF9E50D8();
    (*(v180 + 8))(v26, v24);
    v116 = sub_1CF9E57E8();
    v181[2](v181, 0, v116);

    goto LABEL_9;
  }

  v100 = sub_1CF9E8048();
  v84, v101, v102, v103, v104, v105, v106, v107;
  v92, v108, v109, v110, v111, v112, v113, v114;
  if (v100)
  {
    goto LABEL_8;
  }

  v180 = v64;
  v129 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v130 = v174;
  sub_1CEFFD89C(&v178[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1u, v72, v174);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  v132 = *(*(v131 - 8) + 48);
  if (v132(v130, 1, v131) == 1)
  {
    sub_1CEFCCC44(v130, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v133 = v175;
    (*(v177 + 56))(v175, 1, 1, v176);
LABEL_13:
    sub_1CEFCCC44(v133, &unk_1EC4BE310, qword_1CF9FCBE0);
    v139 = FPItemNotFoundError();
    if (v139)
    {
      v140 = sub_1CF9E57E8();
    }

    else
    {
      v140 = 0;
    }

    v64 = v180;
    v62 = MEMORY[0x1E69E6158];
    v181[2](v181, 0, v140);

    goto LABEL_9;
  }

  v134 = *(v131 + 48);
  v135 = v176;
  v136 = v177;
  v137 = *(v177 + 32);
  v133 = v175;
  v179 = (v177 + 32);
  v166 = v137;
  v137(v175, v130, v176);
  v165 = *(v136 + 56);
  v165(v133, 0, 1, v135);
  sub_1CEFCCC44(&v130[v134], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v138 = *(v136 + 48);
  if (v138(v133, 1, v135) == 1)
  {
    goto LABEL_13;
  }

  v141 = v133;
  v142 = v166;
  v166(v173, v141, v135);
  v143 = &v178[v129];
  v144 = v170;
  sub_1CEFFD89C(v143, 1u, v172, v170);
  if (v132(v144, 1, v131) == 1)
  {
    sub_1CEFCCC44(v144, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v145 = v171;
    v165(v171, 1, 1, v135);
    v62 = MEMORY[0x1E69E6158];
LABEL_20:
    sub_1CEFCCC44(v145, &unk_1EC4BE310, qword_1CF9FCBE0);
    v149 = FPItemNotFoundError();
    v64 = v180;
    if (v149)
    {
      v150 = sub_1CF9E57E8();
    }

    else
    {
      v150 = 0;
    }

    v181[2](v181, 0, v150);

    (*(v177 + 8))(v173, v135);
    goto LABEL_9;
  }

  v146 = *(v131 + 48);
  v145 = v171;
  v142(v171, v144, v135);
  v165(v145, 0, 1, v135);
  sub_1CEFCCC44(&v144[v146], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v147 = v138(v145, 1, v135);
  v148 = v186;
  v62 = MEMORY[0x1E69E6158];
  if (v147 == 1)
  {
    goto LABEL_20;
  }

  v142(v169, v145, v135);
  v151 = sub_1CF9E5928();
  v152 = sub_1CF9E5928();
  if (v168)
  {
    v153 = sub_1CF9E6888();
  }

  else
  {
    v153 = 0;
  }

  v154 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v155 = sub_1CF9E6888();
  v156 = [v154 initWithSuiteName_];

  if (v156)
  {
    v157 = sub_1CF9E6888();
    v158 = [v156 BOOLForKey_];

    v159 = v158 ^ 1;
  }

  else
  {
    v159 = 1;
  }

  v160 = swift_allocObject();
  v161 = v178;
  v160[2] = v178;
  v160[3] = sub_1CF024BB0;
  v160[4] = v148;
  v191 = sub_1CF327394;
  v192 = v160;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v189 = sub_1CF90535C;
  v190 = &block_descriptor_334;
  v162 = _Block_copy(&aBlock);
  v163 = v161;

  [v151 fp:v152 reparentUnderFolder:v153 withNewName:v159 allowCoordination:v162 completionHandler:?];
  _Block_release(v162);

  v164 = *(v177 + 8);
  v164(v169, v135);
  v164(v173, v135);
  v64 = v180;
LABEL_9:
  v117 = sub_1CF9E7298();
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1CF9FA450;
  *&aBlock = v185;
  v119 = sub_1CF9E7718();
  v120 = v182;
  *(v118 + 56) = v62;
  *(v118 + 64) = v120;
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v64, v117, v118);

  v118, v122, v123, v124, v125, v126, v127, v128;
}

void sub_1CF319228(uint64_t a1, char a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  strcpy(v73, "trash item at ");
  HIBYTE(v73[1]) = -18;
  v71 = a1;
  v14 = sub_1CF9E5928();
  v15 = [v14 fp_shortDescription];

  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  v70 = a2;
  if (a2)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (a2)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v26, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v35 = v73[1];
  v69 = v73[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBB5A0;
  v37 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v39 = sub_1CF9E7718();
  v41 = v40;
  v42 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1CEFD51C4();
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  *(v38 + 96) = v42;
  *(v38 + 104) = v43;
  *(v38 + 64) = v43;
  *(v38 + 72) = v69;
  *(v38 + 80) = v35;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v36, v37, v38);
  v38, v44, v45, v46, v47, v48, v49, v50;
  _Block_copy(aBlock);
  sub_1CF300898(v71, a3, v70 & 1, aBlock);
  v35, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_1CF9E7298();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CF9FA450;
  v60 = sub_1CF9E7718();
  *(v59 + 56) = v42;
  *(v59 + 64) = v43;
  *(v59 + 32) = v60;
  *(v59 + 40) = v61;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v36, v58, v59);
  v59, v62, v63, v64, v65, v66, v67, v68;
  _Block_release(aBlock);
}

uint64_t sub_1CF3195D4(void *a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  if (a1)
  {
    v43 = a1;
    v9 = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v42 = *(v3 + 8);
      v42(v8, v2);
      v43 = a1;
      v11 = a1;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v12 = sub_1CF9E6148();
      if (sub_1CF008830(v12, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v13 = qword_1EDEBB5A0;
        v14 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1CF9FA440;
        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = sub_1CEFD51C4();
        *(v15 + 32) = 0xD000000000000010;
        *(v15 + 40) = 0x80000001CFA3F7E0;
        sub_1CF9E57A8();
        v16 = sub_1CF9E6148();
        v17 = MEMORY[0x1E69E7358];
        *(v15 + 96) = MEMORY[0x1E69E72F0];
        *(v15 + 104) = v17;
        *(v15 + 72) = v16;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v13, v14, v15);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v29 = qword_1EDEBB5A0;
        v30 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1CF9FA440;
        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = sub_1CEFD51C4();
        *(v15 + 32) = 0xD000000000000010;
        *(v15 + 40) = 0x80000001CFA3F7E0;
        sub_1CF9E57A8();
        v31 = sub_1CF9E6148();
        v32 = MEMORY[0x1E69E7358];
        *(v15 + 96) = MEMORY[0x1E69E72F0];
        *(v15 + 104) = v32;
        *(v15 + 72) = v31;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v29, v30, v15);
      }

      v15, v33, v34, v35, v36, v37, v38, v39;
      v42(v5, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v18 = qword_1EDEBB5A0;
      v19 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CF9FA440;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1CEFD51C4();
      *(v20 + 32) = 0xD000000000000010;
      *(v20 + 40) = 0x80000001CFA3F7E0;
      v21 = sub_1CF9E57E8();
      *(v20 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v20 + 104) = sub_1CF326DD0();
      *(v20 + 72) = v21;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v18, v19, v20);

      v20, v22, v23, v24, v25, v26, v27, v28;
    }
  }

  return sub_1CF9E74B8();
}

void sub_1CF319A8C(uint64_t a1, char a2, char *a3, void *a4)
{
  v70 = a4;
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  strcpy(v74, "trash item at ");
  HIBYTE(v74[1]) = -18;
  v72 = a1;
  v13 = sub_1CF9E5928();
  v14 = [v13 fp_shortDescription];

  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  v71 = a2;
  if (a2)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (a2)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v25, v26);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v34 = v74[1];
  v69 = v74[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDEBB5A0;
  v36 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v38 = sub_1CF9E7718();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1CEFD51C4();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  *(v37 + 96) = v41;
  *(v37 + 104) = v42;
  *(v37 + 64) = v42;
  *(v37 + 72) = v69;
  *(v37 + 80) = v34;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v35, v36, v37);
  v37, v43, v44, v45, v46, v47, v48, v49;
  v50 = v70;
  sub_1CF3013B4(v72, a3, v71 & 1, v50);
  v34, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_1CF9E7298();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CF9FA450;
  v60 = sub_1CF9E7718();
  *(v59 + 56) = v41;
  *(v59 + 64) = v42;
  *(v59 + 32) = v60;
  *(v59 + 40) = v61;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v35, v58, v59);

  v59, v62, v63, v64, v65, v66, v67, v68;
}

void sub_1CF319E34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{

  sub_1CF9E7948();
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  strcpy(v76, "trash item at ");
  HIBYTE(v76[1]) = -18;
  v72 = a1;
  v16 = sub_1CF9E5928();
  v17 = [v16 fp_shortDescription];

  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  if (a2)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (a2)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v28, v29);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v37 = v76[1];
  v71 = v76[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDEBB5A0;
  v39 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v41 = sub_1CF9E7718();
  v43 = v42;
  v44 = MEMORY[0x1E69E6158];
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1CEFD51C4();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  *(v40 + 96) = v44;
  *(v40 + 104) = v45;
  *(v40 + 64) = v45;
  *(v40 + 72) = v71;
  *(v40 + 80) = v37;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v38, v39, v40);
  v40, v46, v47, v48, v49, v50, v51, v52;

  a6(v72, a3, a2 & 1, a4, a5);
  v37, v53, v54, v55, v56, v57, v58, v59;
  v60 = sub_1CF9E7298();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CF9FA450;
  v62 = sub_1CF9E7718();
  *(v61 + 56) = v44;
  *(v61 + 64) = v45;
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v38, v60, v61);

  v61, v64, v65, v66, v67, v68, v69, v70;
}

void sub_1CF31A1E8(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = a3;
  v48 = a1;
  v4 = NSFileProviderItemIdentifier.description.getter(a1);
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDEBB5A0;
  v15 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v17 = sub_1CF9E7718();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1CEFD51C4();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 64) = v21;
  *(v16 + 72) = 0x7469206873617274;
  *(v16 + 80) = 0xEB00000000206D65;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v14, v15, v16);
  v16, v22, v23, v24, v25, v26, v27, v28;
  sub_1CF303A28(v48, a2, v47);
  0xEB00000000206D65, v29, v30, v31, v32, v33, v34, v35;
  v36 = sub_1CF9E7298();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  v38 = sub_1CF9E7718();
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = v21;
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v14, v36, v37);
  v37, v40, v41, v42, v43, v44, v45, v46;
}

void sub_1CF31A4B8(void *a1, uint64_t a2, char *a3, void *aBlock)
{
  strcpy(v54, "untrash item ");
  HIWORD(v54[1]) = -4864;
  _Block_copy(aBlock);
  v51 = a1;
  v6 = NSFileProviderItemIdentifier.description.getter(a1);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = v54[1];
  v50 = v54[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBB5A0;
  v18 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v20 = sub_1CF9E7718();
  v22 = v21;
  v23 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1CEFD51C4();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 64) = v24;
  *(v19 + 72) = v50;
  *(v19 + 80) = v16;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v17, v18, v19);
  v19, v25, v26, v27, v28, v29, v30, v31;
  sub_1CF3049FC(v51, a3, a2, aBlock);
  v16, v32, v33, v34, v35, v36, v37, v38;
  v39 = sub_1CF9E7298();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  v41 = sub_1CF9E7718();
  *(v40 + 56) = v23;
  *(v40 + 64) = v24;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v17, v39, v40);
  v40, v43, v44, v45, v46, v47, v48, v49;
}

void sub_1CF31A77C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, void (*a6)(uint64_t, uint64_t, void *))
{
  _Block_copy(aBlock);
  v51 = a1;
  v8 = NSFileProviderItemIdentifier.description.getter(a1);
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBB5A0;
  v19 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v21 = sub_1CF9E7718();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1CEFD51C4();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 64) = v25;
  *(v20 + 72) = a4;
  *(v20 + 80) = a5;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v18, v19, v20);
  v20, v26, v27, v28, v29, v30, v31, v32;
  a6(v51, a2, aBlock);
  a5, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_1CF9E7298();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  v42 = sub_1CF9E7718();
  *(v41 + 56) = v24;
  *(v41 + 64) = v25;
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v18, v40, v41);
  v41, v44, v45, v46, v47, v48, v49, v50;
}

void sub_1CF31AA24(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v84 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v79 - v8;
  v86 = 0;
  v87 = 0xE000000000000000;
  v85 = a4;
  _Block_copy(a4);
  sub_1CF9E7948();
  v87, v10, v11, v12, v13, v14, v15, v16;
  v86 = 0xD000000000000013;
  v87 = 0x80000001CFA3F780;
  v83 = a1;
  sub_1CEFCCBDC(a1, v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v19 = 0xE600000000000000;
    v20 = 0x3E6C6C756E3CLL;
  }

  else
  {
    v21 = sub_1CF9E5C08();
    v19 = v22;
    (*(v18 + 8))(v9, v17);
    v20 = v21;
  }

  MEMORY[0x1D3868CC0](v20, v19);
  v19, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](544108320, 0xE400000000000000);
  v30 = NSFileProviderItemIdentifier.description.getter(a2);
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = v87;
  v80 = v86;
  v41 = sub_1CEFFCE80();
  v81 = a2;
  v42 = v41;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBB5A0;
  v44 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA440;
  v86 = v42;
  sub_1CEFFD0A8();
  v82 = v42;
  v46 = sub_1CF9E7718();
  v48 = v47;
  v49 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v50 = sub_1CEFD51C4();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v51 = v43;
  *(v45 + 96) = v49;
  *(v45 + 104) = v50;
  v52 = v80;
  *(v45 + 64) = v50;
  *(v45 + 72) = v52;
  *(v45 + 80) = v40;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v43, v44, v45);
  v45, v53, v54, v55, v56, v57, v58, v59;
  v60 = v85;
  _Block_copy(v85);
  sub_1CF30A030(v81, v84, v83, v60);
  v40, v61, v62, v63, v64, v65, v66, v67;
  v68 = sub_1CF9E7298();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CF9FA450;
  v86 = v82;
  v70 = sub_1CF9E7718();
  *(v69 + 56) = v49;
  *(v69 + 64) = v50;
  *(v69 + 32) = v70;
  *(v69 + 40) = v71;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v51, v68, v69);
  v69, v72, v73, v74, v75, v76, v77, v78;
  _Block_release(v60);
}

void sub_1CF31AE70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  aBlocka = aBlock;
  v71 = a1;
  if (a2 >> 60 == 15)
  {
    v9 = 0xE600000000000000;
    v10 = 0x65766F6D6572;
  }

  else
  {
    v11 = sub_1CF9E5AB8();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1D3868CC0](6713120, 0xE300000000000000);
    v10 = 544499059;
    v9 = 0xE400000000000000;
  }

  v73 = a2;
  MEMORY[0x1D3868CC0](v10, v9);
  v9, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x7461642067617420, 0xED0000206E6F2061);
  v28 = NSFileProviderItemIdentifier.description.getter(a3);
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDEBB5A0;
  v39 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v41 = sub_1CF9E7718();
  v43 = v42;
  v44 = MEMORY[0x1E69E6158];
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1CEFD51C4();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  *(v40 + 96) = v44;
  *(v40 + 104) = v45;
  *(v40 + 64) = v45;
  *(v40 + 72) = 0;
  *(v40 + 80) = 0xE000000000000000;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v38, v39, v40);
  v40, v46, v47, v48, v49, v50, v51, v52;
  _Block_copy(aBlocka);
  sub_1CF30B2CC(a3, a4, v71, v73, aBlocka);
  0xE000000000000000, v53, v54, v55, v56, v57, v58, v59;
  v60 = sub_1CF9E7298();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CF9FA450;
  v62 = sub_1CF9E7718();
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = v45;
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v38, v60, v61);
  v61, v64, v65, v66, v67, v68, v69, v70;
  _Block_release(aBlocka);
}

void sub_1CF31B224(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  aBlocka = aBlock;
  v71 = a1;
  if (a1)
  {
    v7 = [a1 description];
    v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v10 = v9;

    MEMORY[0x1D3868CC0](v8, v10);
    v10, v11, v12, v13, v14, v15, v16, v17;
    MEMORY[0x1D3868CC0](7561504, 0xE300000000000000);
    v18 = 544499059;
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE600000000000000;
    v18 = 0x65766F6D6572;
  }

  MEMORY[0x1D3868CC0](v18, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA3F720);
  v27 = NSFileProviderItemIdentifier.description.getter(a2);
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_1CEFFCE80();
  v70 = a2;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDEBB5A0;
  v38 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v40 = sub_1CF9E7718();
  v42 = v41;
  v43 = MEMORY[0x1E69E6158];
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v44 = sub_1CEFD51C4();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  *(v39 + 96) = v43;
  *(v39 + 104) = v44;
  *(v39 + 64) = v44;
  *(v39 + 72) = 0;
  *(v39 + 80) = 0xE000000000000000;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v37, v38, v39);
  v39, v45, v46, v47, v48, v49, v50, v51;
  _Block_copy(aBlocka);
  sub_1CF30C360(v70, a3, v71, aBlocka);
  0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
  v59 = sub_1CF9E7298();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CF9FA450;
  v61 = sub_1CF9E7718();
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = v44;
  *(v60 + 32) = v61;
  *(v60 + 40) = v62;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v37, v59, v60);
  v60, v63, v64, v65, v66, v67, v68, v69;
  _Block_release(aBlocka);
}

void sub_1CF31B5E0(unint64_t a1, unint64_t a2, const void *a3)
{
  v131 = a3;
  v141 = a2;
  v4 = sub_1CF9E5CF8();
  v139 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v137 = v5;
  v138 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v135);
  v136 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CF9E5A58();
  v144 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v150 = v128 - v9;
  v10 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v146 = (v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for LocalContainer(0);
  MEMORY[0x1EEE9AC00](v147);
  v13 = (v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = swift_allocObject();
  *(v143 + 16) = 0;
  aBlock = 0;
  v153 = 0xE000000000000000;
  sub_1CF9E7948();
  v153, v14, v15, v16, v17, v18, v19, v20;
  aBlock = 0xD000000000000025;
  v153 = 0x80000001CFA3F660;
  sub_1CEFD5B1C(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v142 = a1;
  v149 = v4;
  v21 = sub_1CF9E7F98();
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = aBlock;
  v145 = v153;
  v32 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v33 = qword_1EDEBB5A0;
    v34 = sub_1CF9E7298();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1CF9FA440;
    v129 = v32;
    aBlock = v32;
    v128[1] = sub_1CEFFD0A8();
    v37 = sub_1CF9E7718();
    v39 = v38;
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1CEFD51C4();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    *(v36 + 96) = v40;
    *(v36 + 104) = v41;
    *(v36 + 64) = v41;
    *(v36 + 72) = v31;
    *(v36 + 80) = v145;
    sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v33, v34, v36);
    v36, v42, v43, v44, v45, v46, v47, v48;
    v49 = v141 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v134 = type metadata accessor for LocalDomain;
    v50 = v146;
    sub_1CEFFD30C(v141 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v146, type metadata accessor for LocalDomain);
    sub_1CF000318(v50, v13);
    aBlock = 0;
    v153 = 0xE000000000000000;
    sub_1CF9E7948();
    v153, v51, v52, v53, v54, v55, v56, v57;
    aBlock = 0xD000000000000012;
    v153 = 0x80000001CFA3F690;
    v58 = NSFileProviderItemIdentifier.description.getter(*v13);
    v60 = v59;
    MEMORY[0x1D3868CC0](v58);
    v60, v61, v62, v63, v64, v65, v66, v67;
    v68 = aBlock;
    v69 = v153;
    v70 = sub_1CF9E7298();
    v128[2] = v35;
    v71 = swift_allocObject();
    v140 = xmmword_1CF9FA450;
    *(v71 + 16) = xmmword_1CF9FA450;
    *(v71 + 56) = MEMORY[0x1E69E6158];
    *(v71 + 64) = v41;
    v128[0] = v41;
    *(v71 + 32) = v68;
    *(v71 + 40) = v69;
    v130 = v33;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v33, v70, v71);
    v71, v72, v73, v74, v75, v76, v77, v78;
    v133 = v13;
    v79 = v150;
    sub_1CF9E5958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v80 = v79;
    v81 = v144;
    v82 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v145 = *(v144 + 72);
    v83 = swift_allocObject();
    *(v83 + 16) = v140;
    v84 = v83 + v82;
    v146 = *(v81 + 16);
    v147 = v81 + 16;
    (v146)(v83 + v82, v80, v151);
    v85 = v135;
    v31 = v136;
    v86 = &v136[*(v135 + 20)];
    v132 = v49;
    sub_1CEFFD30C(v49, v86, v134);
    v87 = (v31 + v85[9]);
    *v87 = 0;
    v87[1] = 0;
    *v31 = v83;
    *(v31 + v85[6]) = 0;
    *(v31 + v85[7]) = 0;
    *(v31 + v85[8]) = -1;
    v88 = v139;
    v89 = v138;
    v90 = v149;
    (*(v139 + 16))(v138, v142, v149);
    v91 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v92 = (v137 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    (*(v88 + 32))(v93 + v91, v89, v90);
    *(v93 + v92) = v143;
    *(v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8)) = 1000;
    aBlock = 0;
    v158 = 1;
    v149 = v83;
    v94 = *(v83 + 16);

    v13 = v144;
    if (!v94)
    {
      break;
    }

    v95 = 0;
    v96 = (v144 + 8);
    v97 = v150;
    v32 = v151;
    while (v95 < *(v149 + 16))
    {
      v98 = v148;
      (v146)(v148, v84, v32);
      if ((v158 & 1) == 0)
      {
        (*v96)(v98, v32);
        goto LABEL_10;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v99 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v99);
      v128[-8] = v98;
      v128[-7] = &aBlock;
      v100 = v98;
      v13 = v101;
      v128[-6] = v101;
      v128[-5] = &v158;
      v128[-4] = 7;
      v128[-3] = sub_1CF326BE0;
      v128[-2] = v93;
      LOBYTE(v128[-1]) = 1;
      sub_1CF9E59B8();
      ++v95;
      objc_autoreleasePoolPop(v99);
      v102 = v100;
      v32 = v151;
      (*v96)(v102, v151);
      v84 += v145;
      v31 = v13;
      v97 = v150;
      if (v94 == v95)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v97 = v150;
  v32 = v151;
LABEL_10:

  sub_1CF007BF8(v31, type metadata accessor for FSDirectoryEnumerator);
  (*(v144 + 8))(v97, v32);
  v103 = type metadata accessor for LocalContainerMonitor(0);
  v104 = v103;
  if (qword_1EDEA56B8 != -1)
  {
    v103 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v103);
  v105 = v132;
  v128[-2] = v104;
  v128[-1] = v105;
  v106 = sub_1CF9E7398();
  v107 = aBlock;
  MEMORY[0x1EEE9AC00](v106);
  v108 = v142;
  v128[-4] = v141;
  v128[-3] = v108;
  v128[-2] = v143;
  v128[-1] = 1000;
  v109 = *&v107[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v110 = swift_allocObject();
  v110[2] = v107;
  v110[3] = sub_1CF326BFC;
  v110[4] = &v128[-6];
  v111 = swift_allocObject();
  *(v111 + 16) = sub_1CF327480;
  *(v111 + 24) = v110;
  v156 = sub_1CF1C0B54;
  v157 = v111;
  aBlock = MEMORY[0x1E69E9820];
  v153 = 1107296256;
  v154 = sub_1CEFFD02C;
  v155 = &block_descriptor_220;
  v112 = _Block_copy(&aBlock);
  v113 = v157;
  v114 = v107;

  dispatch_sync(v109, v112);
  _Block_release(v112);
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  v115 = v133;
  if (v109)
  {
    __break(1u);
    _Block_release(v131);
    objc_autoreleasePoolPop(v113);
    (*v114)(v111, v151);
    __break(1u);
  }

  else
  {
    (*(v131 + 2))();
    sub_1CF007BF8(v115, type metadata accessor for LocalContainer);
    v116 = sub_1CF9E7298();
    v117 = swift_allocObject();
    *(v117 + 16) = v140;
    aBlock = v129;
    v118 = sub_1CF9E7718();
    v119 = v128[0];
    *(v117 + 56) = MEMORY[0x1E69E6158];
    *(v117 + 64) = v119;
    *(v117 + 32) = v118;
    *(v117 + 40) = v120;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v130, v116, v117);

    v117, v121, v122, v123, v124, v125, v126, v127;
  }
}

uint64_t sub_1CF31C1B0(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  v49 = a1;
  v51 = a2;
  MEMORY[0x1D3868CC0](a1, a2);
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDEBB5A0;
  v15 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v17 = sub_1CF9E7718();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1CEFD51C4();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v22 = v14;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 64) = v21;
  *(v16 + 72) = 0xD00000000000001CLL;
  *(v16 + 80) = 0x80000001CFA3F640;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v14, v15, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  sub_1CF30E7C0(a3, v49, v51, aBlock);
  0x80000001CFA3F640, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1CF9E7298();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA450;
  v39 = sub_1CF9E7718();
  *(v38 + 56) = v20;
  *(v38 + 64) = v21;
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v22, v37, v38);
  v38, v41, v42, v43, v44, v45, v46, v47;
  return 0;
}

uint64_t sub_1CF31C48C(void *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalContainerSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v13 = type metadata accessor for LocalContainerMonitor(0);
  v14 = v13;
  if (qword_1EDEA56B8 != -1)
  {
    v13 = swift_once();
  }

  v15 = &a2[v12];
  MEMORY[0x1EEE9AC00](v13);
  v18[-2] = v14;
  v18[-1] = &a2[v12];
  sub_1CF9E7398();
  v16 = v18[1];
  sub_1CEFFF6AC(v11);

  sub_1CF30F448(v11, 1, 0xD000000000000021, 0x80000001CFA3F5E0, a1, a2);
  sub_1CF00BF00(v15, v8);
  sub_1CF30F448(v8, 0, 0xD000000000000021, 0x80000001CFA3F610, a1, a2);
  (*(a3 + 16))(a3, 0);
  sub_1CF007BF8(v8, type metadata accessor for LocalContainerSnapshot);
  return sub_1CF007BF8(v11, type metadata accessor for LocalContainerSnapshot);
}

void sub_1CF31C694(void *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), char *a5, void (*a6)(uint64_t, void, void, id), _OWORD *a7)
{
  v907 = a4;
  v909 = a2;
  v917 = a1;
  v942 = *MEMORY[0x1E69E9840];
  v898 = sub_1CF9E5CF8();
  v875 = *(v898 - 8);
  MEMORY[0x1EEE9AC00](v898);
  v892 = &v852 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v893 = &v852 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v891 = &v852 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v897 = &v852 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v899 = &v852 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v889 = &v852 - v21;
  v22 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v887 = (&v852 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v888 = &v852 - v25;
  v26 = sub_1CF9E53C8();
  v885 = *(v26 - 8);
  v886 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v884 = &v852 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E5A58();
  v903 = *(v28 - 8);
  v904 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v873 = &v852 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v874 = &v852 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v876 = &v852 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v895 = &v852 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v870 = &v852 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v896 = &v852 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v883 = &v852 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v882 = &v852 - v43;
  v44 = type metadata accessor for ItemMetadata(0);
  v878 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v890 = &v852 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v880 = &v852 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v902 = &v852 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v900 = &v852 - v51;
  v879 = v52;
  MEMORY[0x1EEE9AC00](v53);
  v901 = &v852 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v906 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v852 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v872 = &v852 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v871 = &v852 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v894 = &v852 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v877 = &v852 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v881 = (&v852 - v67);
  v905 = v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v852 - v70;
  v72 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v72 - 8);
  v910 = &v852 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1CF9E5268();
  v912 = *(v74 - 8);
  v913 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v911 = &v852 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E64A8();
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v79 = (&v852 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = swift_allocObject();
  v914 = a6;
  *(v80 + 16) = a6;
  *(v80 + 24) = a7;
  v916 = v80;
  v918 = a5;
  v81 = *&a5[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
  *v79 = v81;
  (*(v77 + 104))(v79, *MEMORY[0x1E69E8020], v76);
  v915 = a7;

  v82 = v81;
  LOBYTE(v81) = sub_1CF9E64D8();
  (*(v77 + 8))(v79, v76);
  if ((v81 & 1) == 0)
  {
    __break(1u);
    goto LABEL_113;
  }

  v908 = a3;
  if ((a3 & 0x40000000) != 0)
  {
    v83 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v84 = sub_1CF9E6888();
    v85 = [v83 initWithSuiteName_];

    if (!v85 || (v86 = sub_1CF9E6888(), v87 = [v85 BOOLForKey_], v85, v86, !v87))
    {
      sub_1CEFCCBDC(v907, v57, &unk_1EC4BE310, qword_1CF9FCBE0);
      v110 = (*(v906 + 80) + 72) & ~*(v906 + 80);
      v111 = swift_allocObject();
      v112 = v916;
      v111[2] = sub_1CF3263CC;
      v111[3] = v112;
      v88 = v918;
      v113 = v917;
      v111[4] = v918;
      v111[5] = v113;
      v115 = v908;
      v114 = v909;
      v111[6] = v909;
      v111[7] = v115;
      v111[8] = 0x40000000;
      sub_1CEFE55D0(v57, v111 + v110, &unk_1EC4BE310, qword_1CF9FCBE0);
      v116 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      if (([v113 respondsToSelector_] & 1) == 0)
      {

        __break(1u);
        goto LABEL_214;
      }

      v117 = v88;

      swift_unknownObjectRetain();
      v118 = v114;
      v119 = [v113 isTrashed];
      v120 = [v113 itemIdentifier];
      v121 = v120;
      if (v119)
      {
        sub_1CF3030B4(v120, sub_1CF32741C, v111);

        goto LABEL_15;
      }

      if ((v115 & 4) != 0)
      {
        v146 = [v113 parentItemIdentifier];
      }

      else
      {
        v146 = 0;
      }

      sub_1CF304734(v121, v146, sub_1CF32741C, v111);

      return;
    }
  }

  v88 = v917;
  v89 = [v917 itemIdentifier];
  v90 = *MEMORY[0x1E6967258];
  v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v93 = v92;
  v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v101 = v91;
  v102 = v94;
  if (v101 == v95 && v93 == v94)
  {
    v93, v94, v95, v96, v97, v98, v99, v100;
    v102, v103, v104, v105, v106, v107, v108, v109;
LABEL_12:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v137 = v911;
    v138 = v913;
    sub_1CF9E57D8();
    v139 = sub_1CF9E50D8();
    (*(v912 + 8))(v137, v138);
    swift_willThrow();

LABEL_13:
    v909 = 0;
    v140 = 0;
    v114 = 0;
    v116 = 0;
    goto LABEL_14;
  }

  v122 = sub_1CF9E8048();
  v93, v123, v124, v125, v126, v127, v128, v129;
  v102, v130, v131, v132, v133, v134, v135, v136;
  if (v122)
  {
    goto LABEL_12;
  }

  v866 = v90;
  v147 = [v88 itemIdentifier];
  sub_1CEFFCBA8(v147);
  v869 = 0;
  v867 = v89;
  v868 = v148;

  v149 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v150 = [objc_opt_self() legacyDefaultManager];
  v151 = [v150 providerIdentifier];

  if (!v151)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v153 = v152;
    v151 = sub_1CF9E6888();
    v153, v154, v155, v156, v157, v158, v159, v160;
  }

  [v149 setPurposeIdentifier_];

  v161 = v904;
  v162 = swift_allocBox();
  v164 = v163;
  v165 = [v88 itemIdentifier];
  sub_1CF2FD4F4(v165, v71);
  v166 = v161;

  v113 = v903;
  v167 = v903 + 48;
  v864 = *(v903 + 48);
  if (v864(v71, 1, v166) == 1)
  {
    sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_deallocBox();
    v168 = [v88 itemIdentifier];
    v139 = FPItemNotFoundError();

    if (v139)
    {
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

LABEL_224:

    __break(1u);
    goto LABEL_225;
  }

  v858 = v167;
  v859 = v164;
  v863 = v149;
  v865 = v162;
  v857 = v113[4];
  v857(v164, v71, v166);
  v115 = v908;
  if ((v908 & 1) == 0)
  {
    v169 = 0;
    v862 = 0;
    v170 = v867;
    goto LABEL_40;
  }

  v861 = v113 + 4;
  v171 = v113;
  v172 = v868;
  if ([v868 respondsToSelector_])
  {
    v173 = [v172 itemVersion];
    v174 = [v173 contentVersion];

    v175 = sub_1CF9E5B88();
    v177 = v176;
  }

  else
  {
    v175 = 0;
    v177 = 0xF000000000000000;
  }

  v178 = [(FSTester *)v909 contentVersion];
  v179 = sub_1CF9E5B88();
  v181 = v180;

  if (v177 >> 60 == 15)
  {
    v170 = v867;
    if (v181 >> 60 == 15)
    {
      sub_1CEFE48D8(v175, v177);
LABEL_39:
      v862 = 0;
      v169 = 1;
      v113 = v171;
      goto LABEL_40;
    }
  }

  else
  {
    v170 = v867;
    if (v181 >> 60 != 15)
    {
      sub_1CEFF05F4(v175, v177);
      sub_1CEFE42D4(v179, v181);
      v192 = sub_1CF328660(v175, v177, v179, v181);
      sub_1CEFE4714(v179, v181);
      sub_1CEFE48D8(v175, v177);
      sub_1CEFE48D8(v179, v181);
      sub_1CEFE48D8(v175, v177);
      if (v192)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  sub_1CEFE48D8(v175, v177);
  sub_1CEFE48D8(v179, v181);
LABEL_36:
  v116 = 0x80000001CFA3F320;
  v113 = v171;
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_212;
  }

  while (1)
  {
    v182 = qword_1EDEBB5A0;
    v183 = sub_1CF9E7288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1CF9FA450;
    *(v184 + 56) = MEMORY[0x1E69E6158];
    *(v184 + 64) = sub_1CEFD51C4();
    *(v184 + 32) = 0xD000000000000039;
    *(v184 + 40) = v116;
    sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v182, v183, v184);
    v184, v185, v186, v187, v188, v189, v190, v191;
    v169 = 0;
    v115 &= 0xFFFFFFFFFFFFFF7ELL;
    v862 = 1;
    v170 = v867;
LABEL_40:
    *&v940[0] = v169;
    type metadata accessor for NSFileProviderItemFields(0);
    sub_1CEFD5B1C(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields, &unk_1CF9F6070);
    if (sub_1CF9E7798())
    {
      v193 = v868;
      if ([v868 respondsToSelector_])
      {
        v194 = [v193 itemVersion];
        v195 = [v194 metadataVersion];

        v196 = sub_1CF9E5B88();
        v198 = v197;
      }

      else
      {
        v196 = 0;
        v198 = 0xF000000000000000;
      }

      v199 = [(FSTester *)v909 metadataVersion];
      v200 = sub_1CF9E5B88();
      v202 = v201;

      if (v198 >> 60 == 15)
      {
        if (v202 >> 60 == 15)
        {
          sub_1CEFE48D8(v196, v198);
        }

        else
        {
LABEL_48:
          sub_1CEFE48D8(v196, v198);
          sub_1CEFE48D8(v200, v202);
LABEL_49:
          *&v940[0] = 0;
          *(&v940[0] + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3F2D0);
          v203 = sub_1CF7F5844(v115);
          v205 = v204;
          MEMORY[0x1D3868CC0](v203);
          v205, v206, v207, v208, v209, v210, v211, v212;
          v213 = v940[0];
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          v214 = qword_1EDEBB5A0;
          v215 = sub_1CF9E7288();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v216 = swift_allocObject();
          *(v216 + 16) = xmmword_1CF9FA450;
          *(v216 + 56) = MEMORY[0x1E69E6158];
          *(v216 + 64) = sub_1CEFD51C4();
          *(v216 + 32) = v213;
          sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v214, v215, v216);
          v216, v217, v218, v219, v220, v221, v222, v223;
        }

        v170 = v867;
        goto LABEL_53;
      }

      if (v202 >> 60 == 15)
      {
        goto LABEL_48;
      }

      sub_1CEFF05F4(v196, v198);
      sub_1CEFE42D4(v200, v202);
      v270 = sub_1CF328660(v196, v198, v200, v202);
      sub_1CEFE4714(v200, v202);
      sub_1CEFE48D8(v196, v198);
      sub_1CEFE48D8(v200, v202);
      sub_1CEFE48D8(v196, v198);
      v170 = v867;
      if (!v270)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    if (!v115)
    {
      v254 = swift_unknownObjectRetain();
      v914(v254, 0, v862, 0);

      swift_unknownObjectRelease_n();
      return;
    }

    v224 = swift_allocObject();
    Fields.init(_:)(v115);
    v225 = v901;
    sub_1CF30FD54(v868, v901);
    v226 = v900;
    sub_1CF30FD54(v88, v900);
    v227 = *(v224 + 16);
    v228 = v902;
    sub_1CEFFD30C(v225, v902, type metadata accessor for ItemMetadata);
    *&v940[0] = v227;
    sub_1CF677700(v940, v226);
    v229 = swift_allocObject();
    v860 = v224;
    v861 = v229;
    *(v229 + 16) = 0;
    v856 = (v229 + 16);
    v230 = *(v224 + 16);
    v231 = (v224 + 16);
    v908 = v231;
    if (v230)
    {
      v232 = [v868 filename];
      v233 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v235 = v234;

      v236 = [v88 filename];
      v237 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v239 = v238;

      if (v233 == v237 && v235 == v239)
      {
        v235, v240, v241, v242, v243, v244, v245, v246;
        v239, v247, v248, v249, v250, v251, v252, v253;
        v231 = v908;
      }

      else
      {
        v255 = sub_1CF9E8048();
        v235, v256, v257, v258, v259, v260, v261, v262;
        v239, v263, v264, v265, v266, v267, v268, v269;
        v231 = v908;
        if ((v255 & 1) == 0)
        {
          v230 = *v908;
          v228 = v902;
          goto LABEL_65;
        }
      }

      v230 = *v231;
      v228 = v902;
      if (*v231)
      {
        v230 &= ~1uLL;
        *v231 = v230;
      }
    }

LABEL_65:
    v271 = v907;
    if ((v230 & 2) == 0)
    {
      goto LABEL_73;
    }

    v272 = [v868 parentItemIdentifier];
    v273 = [v88 parentItemIdentifier];
    v274 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v276 = v275;
    v278 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v279 = v274;
    v280 = v277;
    if (v279 == v278 && v276 == v277)
    {

      v276, v281, v282, v283, v284, v285, v286, v287;
      v280, v288, v289, v290, v291, v292, v293, v294;
    }

    else
    {
      v295 = sub_1CF9E8048();

      v276, v296, v297, v298, v299, v300, v301, v302;
      v280, v303, v304, v305, v306, v307, v308, v309;
      if ((v295 & 1) == 0)
      {
        v271 = v907;
        v231 = v908;
        v230 = *v908;
        v228 = v902;
        goto LABEL_73;
      }
    }

    v271 = v907;
    v231 = v908;
    v230 = *v908;
    v228 = v902;
    if ((*v908 & 2) != 0)
    {
      v230 &= ~2uLL;
      *v908 = v230;
    }

LABEL_73:
    a7 = v922;
    if ((v230 & 8) != 0)
    {
      sub_1CEFE528C(&v924);
      v941 = v939;
      v940[12] = v936;
      v940[13] = v937;
      v940[14] = v938;
      v940[8] = v932;
      v940[9] = v933;
      v940[10] = v934;
      v940[11] = v935;
      v940[4] = v928;
      v940[5] = v929;
      v940[6] = v930;
      v940[7] = v931;
      v940[0] = v924;
      v940[1] = v925;
      v940[2] = v926;
      v940[3] = v927;
      MEMORY[0x1EEE9AC00](v310);
      *(&v852 - 2) = v271;
      v311 = v869;
      sub_1CF9BA920(v940, sub_1CF327348, &v852 - 32);
      v869 = v311;
      if (v311)
      {
        swift_unknownObjectRelease();

        sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
        sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

        sub_1CF007BF8(v228, type metadata accessor for ItemMetadata);

        v909 = 0;
        v140 = 0;
        v114 = 0;
        v116 = 0;
        v88 = v917;
        v139 = v869;
        goto LABEL_14;
      }

      v230 = *v231;
    }

    v312 = v917;
    if ((v230 & 2) == 0)
    {
      v312 = v868;
      if ((v230 & 1) == 0)
      {
        v909 = 0;
        v881 = 0;
        v313 = v904;
        goto LABEL_80;
      }
    }

    v315 = [v312 parentItemIdentifier];
    if (*v231)
    {
      v316 = v917;
    }

    else
    {
      v316 = v868;
    }

    v317 = [v316 &selRef_fp_isSyncAnchorExpiredError];
    v318 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v909 = v319;

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v321 = v320;
    v322 = sub_1CF9E6AE8();
    v321, v323, v324, v325, v326, v327, v328, v329;
    if (v322)
    {
      v337 = v315;
      v338 = v909;
      goto LABEL_93;
    }

    v339 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v341 = v340;
    v343 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v349 = v339;
    v338 = v342;
    if (v349 == v343 && v341 == v342)
    {
      v337 = v315;
      v909, v342, v343, v344, v345, v346, v347, v348;
      v341, v350, v351, v352, v353, v354, v355, v356;
      goto LABEL_93;
    }

    v357 = sub_1CF9E8048();
    v341, v358, v359, v360, v361, v362, v363, v364;
    v338, v365, v366, v367, v368, v369, v370, v371;
    if (v357)
    {
      v337 = v315;
      v338 = v909;
      v228 = v902;
LABEL_93:
      v338, v330, v331, v332, v333, v334, v335, v336;
      sub_1CF9E5208();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v372 = v911;
      v373 = v913;
      sub_1CF9E57D8();
      v139 = sub_1CF9E50D8();
      (*(v912 + 8))(v372, v373);
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

      v374 = v228;
LABEL_94:
      sub_1CF007BF8(v374, type metadata accessor for ItemMetadata);

      v909 = 0;
      v140 = 0;
      v114 = 0;
      v116 = 0;
      v88 = v917;
LABEL_14:
      v141 = [v88 itemIdentifier];
      sub_1CEFFCBA8(v141);
      v143 = v142;

      v144 = v909;
      v145 = v139;
      v914(v143, 0, 0, v139);

      swift_unknownObjectRelease();
      sub_1CEFF7124(v144, v140);
      sub_1CEFF7124(v114, v116);
      goto LABEL_15;
    }

    v416 = v881;
    sub_1CF2FD4F4(v315, v881);
    v417 = v904;
    if (v864(v416, 1, v904) == 1)
    {
      sub_1CEFCCC44(v416, &unk_1EC4BE310, qword_1CF9FCBE0);
      v418 = FPItemNotFoundError();
      if (v418)
      {
        v426 = v315;
        v139 = v418;
        v909, v419, v420, v421, v422, v423, v424, v425;
        swift_willThrow();
        swift_unknownObjectRelease();

        sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
        sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

        v374 = v902;
        goto LABEL_94;
      }

LABEL_225:

      __break(1u);
LABEL_226:

      __break(1u);
LABEL_227:

      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
    }

    v853 = v315;
    v857(v882, v416, v417);
    v427 = v896;
    v854 = v113[2];
    v855 = v113 + 2;
    v854(v896, v859, v417);
    v428 = sub_1CF9E5928();
    v857 = v113[1];
    (v857)(v427, v417);
    v429 = sub_1CF9E5928();
    v430 = [v428 fp:v429 relationshipToItemAtURL:?];

    if (v430)
    {
      v431 = v318;
      sub_1CF9E5958();
      v432 = v868;
      v433 = v904;
      v434 = v859;
    }

    else
    {
      *&v924 = 0;
      *(&v924 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA3F2A0);
      v460 = v896;
      v433 = v904;
      v854(v896, v859, v904);
      sub_1CEFD5B1C(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v461 = sub_1CF9E7F98();
      v463 = v462;
      MEMORY[0x1D3868CC0](v461);
      v463, v464, v465, v466, v467, v468, v469, v470;
      (v857)(v460, v433);
      MEMORY[0x1D3868CC0](0x206F746E6920, 0xE600000000000000);
      v471 = sub_1CF9E7F98();
      v473 = v472;
      MEMORY[0x1D3868CC0](v471);
      v473, v474, v475, v476, v477, v478, v479, v480;
      v481 = v924;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v482 = qword_1EDEBB5A0;
      v483 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v484 = swift_allocObject();
      *(v484 + 16) = xmmword_1CF9FA450;
      *(v484 + 56) = MEMORY[0x1E69E6158];
      *(v484 + 64) = sub_1CEFD51C4();
      *(v484 + 32) = v481;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v482, v483, v484);
      v484, v485, v486, v487, v488, v489, v490, v491;
      v492 = v859;
      v854(v883, v859, v433);
      v432 = v868;
      v434 = v492;
      v431 = v318;
    }

    v493 = v896;
    v854(v896, v434, v433);
    sub_1CEFD5B1C(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v494 = sub_1CF9E6868();
    (v857)(v493, v433);
    if (v494)
    {
      *&v924 = 0;
      *(&v924 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v924 + 1), v495, v496, v497, v498, v499, v500, v501;
      *&v924 = 0xD00000000000001ALL;
      *(&v924 + 1) = 0x80000001CFA3F280;
      v502 = [v432 parentItemIdentifier];
      v503 = NSFileProviderItemIdentifier.description.getter(v502);
      v505 = v504;
      MEMORY[0x1D3868CC0](v503);

      v505, v506, v507, v508, v509, v510, v511, v512;
      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v513 = [v432 filename];
      v514 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v516 = v515;

      MEMORY[0x1D3868CC0](v514, v516);
      v516, v517, v518, v519, v520, v521, v522, v523;
      MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
      v452 = v853;
      v524 = NSFileProviderItemIdentifier.description.getter(v853);
      v526 = v525;
      MEMORY[0x1D3868CC0](v524);
      v526, v527, v528, v529, v530, v531, v532, v533;
      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v534 = v909;
      MEMORY[0x1D3868CC0](v431, v909);
      v534, v535, v536, v537, v538, v539, v540, v541;
      v450 = *(&v924 + 1);
      v116 = v924;
      if (qword_1EDEA3408 != -1)
      {
        goto LABEL_222;
      }

      goto LABEL_125;
    }

    *&v924 = 0;
    *(&v924 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v924 + 1), v553, v554, v555, v556, v557, v558, v559;
    *&v924 = 0xD000000000000011;
    *(&v924 + 1) = 0x80000001CFA3F240;
    v560 = [v432 parentItemIdentifier];
    v561 = NSFileProviderItemIdentifier.description.getter(v560);
    v563 = v562;
    MEMORY[0x1D3868CC0](v561);

    v563, v564, v565, v566, v567, v568, v569, v570;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v571 = [v432 filename];
    v572 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v574 = v573;

    MEMORY[0x1D3868CC0](v572, v574);
    v574, v575, v576, v577, v578, v579, v580, v581;
    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v582 = NSFileProviderItemIdentifier.description.getter(v853);
    v584 = v583;
    MEMORY[0x1D3868CC0](v582);
    v584, v585, v586, v587, v588, v589, v590, v591;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v431, v909);
    v592 = v924;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v593 = qword_1EDEBB5A0;
    v594 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v595 = swift_allocObject();
    *(v595 + 16) = xmmword_1CF9FA450;
    *(v595 + 56) = MEMORY[0x1E69E6158];
    *(v595 + 64) = sub_1CEFD51C4();
    *(v595 + 32) = v592;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v593, v594, v595);
    v595, v596, v597, v598, v599, v600, v601, v602;
    v603 = swift_allocObject();
    v604 = v909;
    v603[2] = v431;
    v603[3] = v604;
    v605 = v918;
    v606 = v861;
    v881 = v603;
    v603[4] = v918;
    v603[5] = v606;
    v607 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v608 = v605;

    v609 = sub_1CF9E6888();
    v610 = [v607 initWithSuiteName_];

    if (v610 && (v618 = sub_1CF9E6888(), v619 = [v610 BOOLForKey_], v610, v618, (v619 & 1) != 0))
    {
      v620 = v896;
      v621 = v859;
      v313 = v904;
      v854(v896, v859, v904);
      v622 = v883;
      v623 = v909;
      sub_1CF3115C4(v620, v883, v431, v909, v608, v861);

      v623, v624, v625, v626, v627, v628, v629, v630;
      v631 = v857;
      (v857)(v620, v313);
      v631(v882, v313);
      v113 = v903;
      (*(v903 + 40))(v621, v622, v313);

      v909 = 0;
      v881 = 0;
      v228 = v902;
    }

    else
    {
      v909, v611, v612, v613, v614, v615, v616, v617;
      v632 = v896;
      v633 = v904;
      v854(v896, v859, v904);
      v909 = sub_1CF9E5928();
      v634 = v857;
      (v857)(v632, v633);
      v635 = sub_1CF9E5928();
      v636 = swift_allocObject();
      v637 = v881;
      *(v636 + 16) = sub_1CF3272E8;
      *(v636 + 24) = v637;
      *&v926 = sub_1CF327308;
      *(&v926 + 1) = v636;
      *&v924 = MEMORY[0x1E69E9820];
      *(&v924 + 1) = 1107296256;
      *&v925 = sub_1CF3120D4;
      *(&v925 + 1) = &block_descriptor_176;
      v638 = _Block_copy(&v924);

      *&v924 = 0;
      v639 = v909;
      [v863 coordinateWritingItemAtURL:v909 options:2 writingItemAtURL:v635 options:0 error:&v924 byAccessor:v638];
      _Block_release(v638);

      v634(v882, v633);
      v640 = v924;
      LOBYTE(v639) = swift_isEscapingClosureAtFileLocation();

      v113 = v903;
      if (v639)
      {
        __break(1u);
        goto LABEL_224;
      }

      (*(v903 + 40))(v859, v883, v633);

      v909 = sub_1CF3272E8;
      v228 = v902;
      v313 = v633;
      v883 = v640;
      if (v640)
      {
        v114 = 0;
        v116 = 0;
        goto LABEL_82;
      }
    }

    while (1)
    {
      v231 = v908;
LABEL_80:
      v314 = v856;
      swift_beginAccess();
      if (*v314)
      {
        v114 = 0;
        v116 = 0;
        v883 = 0;
LABEL_82:
        v88 = v917;
        goto LABEL_161;
      }

      if ((*v231 & 8) == 0)
      {
        v375 = *v231 & 0xFFFFFFFFFFFFFFF4;
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        if ((v375 & (qword_1EDEABDE8 | 0x409000000C000)) == 0)
        {
          v114 = 0;
          v116 = 0;
          v883 = 0;
          v88 = v917;
          v313 = v904;
          goto LABEL_161;
        }
      }

      *&v924 = 0;
      *(&v924 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v924 + 1), v376, v377, v378, v379, v380, v381, v382;
      *&v924 = 0xD000000000000027;
      *(&v924 + 1) = 0x80000001CFA3F130;
      v383 = sub_1CF0720C8();
      v385 = v384;
      MEMORY[0x1D3868CC0](v383);
      v385, v386, v387, v388, v389, v390, v391, v392;
      v393 = v228;
      v394 = v924;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v395 = qword_1EDEBB5A0;
      v396 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v397 = swift_allocObject();
      *(v397 + 16) = xmmword_1CF9FA450;
      *(v397 + 56) = MEMORY[0x1E69E6158];
      *(v397 + 64) = sub_1CEFD51C4();
      *(v397 + 32) = v394;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v395, v396, v397);
      v397, v398, v399, v400, v401, v402, v403, v404;
      v405 = v877;
      sub_1CEFCCBDC(v907, v877, &unk_1EC4BE310, qword_1CF9FCBE0);
      v406 = v880;
      v907 = type metadata accessor for ItemMetadata;
      sub_1CEFFD30C(v393, v880, type metadata accessor for ItemMetadata);
      sub_1CEFCCBDC(v405, v894, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFFD30C(v406, v890, type metadata accessor for ItemMetadata);
      v407 = (*(v906 + 80) + 40) & ~*(v906 + 80);
      v408 = (v905 + v407 + 7) & 0xFFFFFFFFFFFFFFF8;
      v409 = (*(v878 + 80) + v408 + 8) & ~*(v878 + 80);
      v410 = (v879 + v409 + 7) & 0xFFFFFFFFFFFFFFF8;
      v411 = swift_allocObject();
      v412 = v860;
      v413 = v868;
      *(v411 + 16) = v860;
      *(v411 + 24) = v413;
      *(v411 + 32) = v865;
      sub_1CEFE55D0(v405, v411 + v407, &unk_1EC4BE310, qword_1CF9FCBE0);
      v414 = v867;
      *(v411 + v408) = v867;
      sub_1CEFFC48C(v406, v411 + v409, v907);
      v907 = v411;
      *(v411 + v410) = v861;
      swift_beginAccess();
      if ((*(v412 + 16) & 8) == 0)
      {
        swift_unknownObjectRetain();

        v415 = v414;
        a3 = v903;
        break;
      }

      v435 = objc_allocWithZone(MEMORY[0x1E695E000]);
      swift_unknownObjectRetain();

      v436 = v414;
      v437 = sub_1CF9E6888();
      v438 = [v435 initWithSuiteName_];

      a3 = v903;
      if (v438)
      {
        v439 = sub_1CF9E6888();
        v440 = [v438 BOOLForKey_];

        if (v440)
        {
          break;
        }
      }

LABEL_113:
      sub_1CF007BF8(v890, type metadata accessor for ItemMetadata);
      sub_1CEFCCC44(v894, &unk_1EC4BE310, qword_1CF9FCBE0);
      v446 = v859;
      swift_beginAccess();
      v447 = v896;
      v448 = v904;
      (*(a3 + 16))(v896, v446, v904);
      v449 = sub_1CF9E5928();
      (*(a3 + 8))(v447, v448);
      v116 = swift_allocObject();
      v450 = v907;
      v116[2] = sub_1CF327418;
      v116[3] = v450;
      v451 = swift_allocObject();
      v114 = sub_1CF327478;
      *(v451 + 16) = sub_1CF327478;
      *(v451 + 24) = v116;
      *&v926 = sub_1CF327478;
      *(&v926 + 1) = v451;
      *&v924 = MEMORY[0x1E69E9820];
      *(&v924 + 1) = 1107296256;
      *&v925 = sub_1CF2FCAB8;
      *(&v925 + 1) = &block_descriptor_165;
      v452 = _Block_copy(&v924);

      *&v924 = 0;
      [v863 coordinateWritingItemAtURL:v449 options:0 error:&v924 byAccessor:v452];

      _Block_release(v452);

      v883 = v924;
      v453 = v924;
      LOBYTE(v449) = swift_isEscapingClosureAtFileLocation();

      if ((v449 & 1) == 0)
      {
        v88 = v917;
        v113 = v903;
        v313 = v904;
        goto LABEL_161;
      }

      __break(1u);
LABEL_222:
      swift_once();
LABEL_125:
      v542 = qword_1EDEBB5A0;
      v543 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v544 = swift_allocObject();
      *(v544 + 16) = xmmword_1CF9FA450;
      *(v544 + 56) = MEMORY[0x1E69E6158];
      *(v544 + 64) = sub_1CEFD51C4();
      *(v544 + 32) = v116;
      *(v544 + 40) = v450;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v542, v543, v544);

      v544, v545, v546, v547, v548, v549, v550, v551;
      v313 = v904;
      v552 = v857;
      (v857)(v883, v904);
      v552(v882, v313);
      v909 = 0;
      v881 = 0;
      v228 = v902;
      v113 = v903;
    }

    v441 = v859;
    swift_beginAccess();
    v442 = *(a3 + 16);
    v443 = v876;
    v442(v876, v441, v904);
    v444 = *v908;
    if ((*v908 & 8) != 0)
    {
      v454 = v868;
      if (([v868 respondsToSelector_] & 1) != 0 && (objc_msgSend(v454, sel_fileSystemFlags) & 4) != 0)
      {
        v643 = v904;
        v458 = v871;
      }

      else
      {
        v455 = v896;
        v456 = v904;
        v442(v896, v859, v904);
        v457 = sub_1CF9E5928();
        (*(a3 + 8))(v455, v456);
        *&v924 = 0;
        LODWORD(v456) = [v457 fp:&v924 makeWritableWithError:?];

        v458 = v871;
        if (v456)
        {
          v459 = v924;
        }

        else
        {
          v641 = v924;
          v642 = sub_1CF9E57F8();

          swift_willThrow();
          v869 = 0;
        }

        v643 = v904;
        if ((*v908 & 4) == 0)
        {
          *v908 |= 4uLL;
        }
      }

      sub_1CEFCCBDC(v894, v458, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v864(v458, 1, v643) == 1)
      {
        goto LABEL_226;
      }

      sub_1CF9E5A18();
      v645 = v644;
      v646 = *(a3 + 8);
      v646(v458, v643);
      v647 = v874;
      sub_1CF9E58C8();
      v645, v648, v649, v650, v651, v652, v653, v654;
      v655 = [objc_opt_self() defaultManager];
      v656 = v873;
      v442(v873, v859, v643);
      v657 = v656;
      v658 = v872;
      v659 = v869;
      sub_1CF9E7278();
      if (v659)
      {

        v646(v657, v643);
        v646(v647, v643);
        sub_1CF007BF8(v890, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v894, &unk_1EC4BE310, qword_1CF9FCBE0);
        v660 = v659;
        v869 = 0;
        v113 = v903;
        v443 = v876;
        goto LABEL_159;
      }

      v869 = 0;

      v646(v657, v643);
      sub_1CEFCCC44(v658, &unk_1EC4BE310, qword_1CF9FCBE0);
      v646(v647, v643);
      v445 = v908;
      v444 = *v908;
      v443 = v876;
    }

    else
    {
      v445 = v908;
    }

    v661 = v444 & 0xFFFFFFFFFFFFFFF4;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v113 = v903;
    if ((v661 & (qword_1EDEABDE8 | 0x409000000C000)) != 0)
    {
      if ((*v445 & 0x20) != 0)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v677 = v676;
        v678 = sub_1CF9E6AE8();
        v677, v679, v680, v681, v682, v683, v684, v685;
        if (v678)
        {
          goto LABEL_157;
        }

        v686 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v688 = v687;
        v690 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v696 = v686;
        v697 = v689;
        if (v696 == v690 && v688 == v689)
        {
          v688, v689, v690, v691, v692, v693, v694, v695;
          v697, v698, v699, v700, v701, v702, v703, v704;
LABEL_157:
          sub_1CF9E5208();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v720 = v911;
          v721 = v913;
          sub_1CF9E57D8();
          v660 = sub_1CF9E50D8();
          (*(v912 + 8))(v720, v721);
          swift_willThrow();

          sub_1CF007BF8(v890, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v894, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_158:
          v869 = 0;
LABEL_159:
          v722 = *v856;
          *v856 = v660;

          goto LABEL_160;
        }

        v705 = sub_1CF9E8048();
        v688, v706, v707, v708, v709, v710, v711, v712;
        v697, v713, v714, v715, v716, v717, v718, v719;
        if (v705)
        {
          goto LABEL_157;
        }
      }

      sub_1CEFE528C(v922);
      v662 = a7[13];
      v663 = a7[14];
      v664 = a7[11];
      a7[32] = a7[12];
      a7[33] = v662;
      a7[34] = v663;
      v665 = a7[9];
      v666 = a7[10];
      v667 = a7[7];
      a7[28] = a7[8];
      a7[29] = v665;
      a7[30] = v666;
      a7[31] = v664;
      v668 = a7[5];
      v669 = a7[6];
      v670 = a7[3];
      a7[24] = a7[4];
      a7[25] = v668;
      v939 = v923;
      a7[26] = v669;
      a7[27] = v667;
      v671 = v922[1];
      a7[20] = v922[0];
      a7[21] = v671;
      a7[22] = v922[2];
      a7[23] = v670;
      MEMORY[0x1EEE9AC00](v672);
      *(&v852 - 2) = v443;
      *(&v852 - 1) = v445;
      v673 = v890;
      v674 = v869;
      sub_1CF9BA920(&v924, sub_1CF327330, &v852 - 32);
      if (v674)
      {

        sub_1CF007BF8(v673, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v894, &unk_1EC4BE310, qword_1CF9FCBE0);
        v660 = v674;
        goto LABEL_158;
      }

      v869 = 0;

      v675 = v673;
    }

    else
    {

      v675 = v890;
    }

    sub_1CF007BF8(v675, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v894, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_160:
    v88 = v917;
    v313 = v904;
    (v113[1])(v443, v904);
    v114 = 0;
    v116 = 0;
    v883 = 0;
LABEL_161:
    v723 = v908;
    swift_beginAccess();
    if ((*(v723 + 6) & 4) == 0)
    {
      goto LABEL_162;
    }

    v919 = &unk_1F4C7EB30;
    v757 = swift_dynamicCastObjCProtocolUnconditional();
    v758 = [v757 respondsToSelector_];
    v115 = v883;
    if ((v758 & 1) == 0)
    {
      goto LABEL_218;
    }

    v759 = [v757 conflictingVersions];
    if (!v759)
    {
      goto LABEL_218;
    }

    v760 = v759;
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    v112 = sub_1CF9E6D48();

    if (!(v112 >> 62))
    {
      v913 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v913)
      {
        goto LABEL_217;
      }

      v921 = MEMORY[0x1E69E7CC0];
      v768 = v904;
      goto LABEL_171;
    }

LABEL_214:
    if (!sub_1CF9E7818())
    {
LABEL_217:
      v112, v761, v762, v763, v764, v765, v766, v767;
LABEL_218:
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v839 = qword_1EDEBB5A0;
      v840 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v841 = swift_allocObject();
      *(v841 + 16) = xmmword_1CF9FA450;
      *(v841 + 56) = MEMORY[0x1E69E6158];
      *(v841 + 64) = sub_1CEFD51C4();
      *(v841 + 32) = 0x1000000000000038;
      *(v841 + 40) = 0x80000001CFA3F180;
      sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v839, v840, v841);
      v841, v842, v843, v844, v845, v846, v847, v848;
      LODWORD(v921) = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v849 = v884;
      v850 = v886;
      sub_1CF9E57D8();
      v851 = sub_1CF9E53A8();
      (*(v885 + 8))(v849, v850);
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

      sub_1CF007BF8(v902, type metadata accessor for ItemMetadata);

      v139 = v851;
      v140 = v881;
      goto LABEL_14;
    }

    v797 = MEMORY[0x1E69E7CC0];
    v921 = MEMORY[0x1E69E7CC0];
    v838 = sub_1CF9E7818();
    v768 = v904;
    v913 = v838;
    if (!v838)
    {
      break;
    }

LABEL_171:
    v769 = 0;
    v912 = v112 & 0xC000000000000001;
    v770 = v112 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v912)
      {
        v115 = v112;
        v779 = MEMORY[0x1D3869C30](v769, v112);
      }

      else
      {
        if (v769 >= *(v770 + 16))
        {
          goto LABEL_211;
        }

        v115 = v112;
        v779 = *(v112 + 8 * v769 + 32);
      }

      v113 = v779;
      v780 = (v769 + 1);
      if (__OFADD__(v769, 1))
      {
        break;
      }

      if ([v779 conflictResolved])
      {
      }

      else
      {
        sub_1CF9E7A18();
        sub_1CF9E7A58();
        v88 = v917;
        sub_1CF9E7A68();
        sub_1CF9E7A28();
        v768 = v904;
      }

      ++v769;
      v778 = v780 == v913;
      v113 = v903;
      v112 = v115;
      if (v778)
      {
        v797 = v921;
        goto LABEL_185;
      }
    }

    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    swift_once();
  }

LABEL_185:
  v112, v771, v772, v773, v774, v775, v776, v777;
  v798 = v859;
  swift_beginAccess();
  v799 = v870;
  v800 = (v113[2])(v870, v798, v768);
  MEMORY[0x1EEE9AC00](v800);
  *(&v852 - 2) = v902;
  *(&v852 - 1) = v797;
  v801 = sub_1CF9E5848();
  if ((v801 & 1) == 0)
  {
    goto LABEL_227;
  }

  MEMORY[0x1EEE9AC00](v801);
  *(&v852 - 2) = sub_1CF327474;
  *(&v852 - 1) = (&v852 - 4);
  v802 = v869;
  sub_1CF9E59B8();
  v869 = v802;
  if (v802)
  {
    swift_unknownObjectRelease();

    (*(v903 + 8))(v799, v904);
    sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
    sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

    sub_1CF007BF8(v902, type metadata accessor for ItemMetadata);

    v139 = v869;
    v140 = v881;
    goto LABEL_14;
  }

  v832 = v903;
  v313 = v904;
  (*(v903 + 8))(v799, v904);

  v113 = v832;
LABEL_162:
  v724 = v859;
  swift_beginAccess();
  v725 = v113[2];
  v726 = v896;
  v725(v896, v724, v313);
  v727 = v888;
  sub_1CEFFD30C(&v918[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v888, type metadata accessor for LocalDomain);
  v725(v895, v726, v313);
  v728 = v887;
  sub_1CEFFD30C(v727, v887, type metadata accessor for LocalDomain);
  v729 = type metadata accessor for VFSItem(0);
  v730 = v889;
  (*(*(v729 - 8) + 56))(v889, 1, 1, v729);
  v731 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v732 = sub_1CF001704(v895, v728, v730);
  sub_1CF007BF8(v727, type metadata accessor for LocalDomain);
  (*(v903 + 8))(v726, v904);
  if (v732)
  {
    v733 = *&v732[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v734 = [v88 itemIdentifier];
    v735 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v737 = v736;
    v739 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v740 = v735;
    v741 = v738;
    if (v740 == v739 && v737 == v738)
    {

      v737, v742, v743, v744, v745, v746, v747, v748;
      v741, v749, v750, v751, v752, v753, v754, v755;
      v756 = v883;
      goto LABEL_182;
    }

    v781 = sub_1CF9E8048();

    v737, v782, v783, v784, v785, v786, v787, v788;
    v741, v789, v790, v791, v792, v793, v794, v795;
    v756 = v883;
    if (v781)
    {
LABEL_182:
      if (v756)
      {
        v796 = v756;
      }

      else
      {
        v803 = v856;
        swift_beginAccess();
        v756 = *v803;
        v804 = *v803;
        v796 = 0;
      }

      v805 = v863;
      v806 = v732;
      v807 = v796;
      v914(v732, 0, v862, v756);

      swift_unknownObjectRelease();
      sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

      sub_1CF007BF8(v902, type metadata accessor for ItemMetadata);

      sub_1CEFF7124(v909, v881);
      sub_1CEFF7124(v114, v116);
      goto LABEL_15;
    }

    v88 = v917;
  }

  v808 = v875;
  v911 = *(v875 + 56);
  v912 = v875 + 56;
  (v911)(v899, 1, 1, v898);
  v809 = [v88 itemIdentifier];
  v810 = v869;
  sub_1CEFFCBA8(v809);
  if (!v810)
  {
    goto LABEL_202;
  }

  v139 = v810;
  v913 = (v808 + 48);
  v908 = v808 + 32;
  v910 = (v808 + 8);
  v811 = v897;

  v813 = v810;
  LODWORD(v920) = sub_1CF9E5298();
  sub_1CF196978();
  v814 = sub_1CF9E5658();

  if (v814)
  {

    v88 = v917;
    goto LABEL_194;
  }

  _s3__C4CodeOMa_1(0);
  v920 = -1005;
  v815 = v810;
  sub_1CEFD5B1C(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
  v816 = sub_1CF9E5658();

  v88 = v917;
  if ((v816 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_209;
  }

  v817 = v899;
  sub_1CEFCCBDC(v899, v811, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v818 = v898;
  if ((*v913)(v811, 1, v898) != 1)
  {
    v820 = v893;
    (*v908)(v893, v811, v818);
    v821 = v892;
    sub_1CF9E5CE8();
    sub_1CF9E5C28();
    v823 = v822;
    v824 = *v910;
    (*v910)(v821, v818);
    if (v823 <= 2.0)
    {
      v824(v820, v818);
      v812 = &selRef_initWithTarget_;
      goto LABEL_195;
    }

    v833 = v818;
    v834 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v835 = sub_1CF9E6888();
    v836 = [v834 initWithDomain:v835 code:-1005 userInfo:0];

    swift_willThrow();
    swift_unknownObjectRelease();

    v837 = v820;
    v139 = v836;
    v824(v837, v833);
LABEL_209:
    sub_1CEFCCC44(v899, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
    sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

    sub_1CF007BF8(v902, type metadata accessor for ItemMetadata);

    v140 = v881;
    goto LABEL_14;
  }

  sub_1CEFCCC44(v811, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v819 = v891;
  sub_1CF9E5CE8();
  sub_1CEFCCC44(v817, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (v911)(v819, 0, 1, v818);
  sub_1CEFE55D0(v819, v817, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_194:
  v812 = &selRef_initWithTarget_;
LABEL_195:
  usleep(0x64u);
  v809 = [v88 v812[113]];
  sub_1CEFFCBA8(v809);
LABEL_202:

  v825 = v863;
  v826 = v883;
  if (v883)
  {
    v827 = v883;
  }

  else
  {
    v828 = v856;
    swift_beginAccess();
    v826 = *v828;
    v829 = *v828;
    v827 = 0;
  }

  v830 = v827;
  v831 = swift_unknownObjectRetain();
  v914(v831, 0, v862, v826);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v899, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CF007BF8(v900, type metadata accessor for ItemMetadata);
  sub_1CF007BF8(v901, type metadata accessor for ItemMetadata);

  sub_1CF007BF8(v902, type metadata accessor for ItemMetadata);

  sub_1CEFF7124(v909, v881);
  sub_1CEFF7124(v114, v116);
LABEL_15:
}

void sub_1CF32090C(void *a1, unint64_t *a2, unint64_t a3, uint64_t (**a4)(char *, uint64_t, uint64_t), char *a5, void (*a6)(void *, void, void, id), uint64_t a7)
{
  v910 = a4;
  v911 = a2;
  v921 = a1;
  v971 = *MEMORY[0x1E69E9840];
  v901 = sub_1CF9E5CF8();
  v878 = *(v901 - 8);
  MEMORY[0x1EEE9AC00](v901);
  v896 = &v854 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v897 = &v854 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v895 = &v854 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v900 = &v854 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v902 = &v854 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v893 = &v854 - v21;
  v22 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v891 = (&v854 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v892 = &v854 - v25;
  v26 = sub_1CF9E53C8();
  v888 = *(v26 - 8);
  v889 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v887 = &v854 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E5A58();
  v906 = *(v28 - 8);
  v907 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v876 = &v854 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v877 = &v854 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v879 = &v854 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v890 = &v854 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v873 = &v854 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v899 = &v854 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v886 = &v854 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v885 = &v854 - v43;
  v44 = type metadata accessor for ItemMetadata(0);
  v881 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v894 = &v854 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v883 = &v854 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v905 = &v854 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v903 = &v854 - v51;
  v882 = v52;
  MEMORY[0x1EEE9AC00](v53);
  v904 = &v854 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v909 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v854 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v875 = &v854 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v874 = &v854 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v898 = &v854 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v880 = &v854 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v884 = (&v854 - v67);
  v908 = v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v854 - v70;
  v72 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v72 - 8);
  v913 = (&v854 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_1CF9E5268();
  v915 = *(v74 - 8);
  v916 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v914 = &v854 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E64A8();
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v79 = (&v854 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = swift_allocObject();
  v917 = a6;
  *(v80 + 16) = a6;
  *(v80 + 24) = a7;
  v919 = v80;
  v920 = a5;
  v81 = *&a5[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
  *v79 = v81;
  (*(v77 + 104))(v79, *MEMORY[0x1E69E8020], v76);
  v918 = a7;

  v82 = v81;
  LOBYTE(v81) = sub_1CF9E64D8();
  (*(v77 + 8))(v79, v76);
  if ((v81 & 1) == 0)
  {
    __break(1u);
    goto LABEL_115;
  }

  v912 = a3;
  if ((a3 & 0x40000000) == 0 || (v83 = objc_allocWithZone(MEMORY[0x1E695E000]), v84 = sub_1CF9E6888(), v85 = [v83 initWithSuiteName_], v84, v85) && (v86 = sub_1CF9E6888(), v87 = objc_msgSend(v85, sel_BOOLForKey_, v86), v85, v86, v87))
  {
    v88 = &selRef_initWithTarget_;
    v89 = v921;
    v90 = [v921 itemIdentifier];
    v91 = *MEMORY[0x1E6967258];
    v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v94 = v93;
    v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v102 = v92;
    v103 = v95;
    if (v102 == v96 && v94 == v95)
    {
      v94, v95, v96, v97, v98, v99, v100, v101;
      v103, v104, v105, v106, v107, v108, v109, v110;
LABEL_12:
      sub_1CF9E5208();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v139 = v914;
      v140 = v916;
      sub_1CF9E57D8();
      v141 = sub_1CF9E50D8();
      (*(v915 + 8))(v139, v140);
      swift_willThrow();

      goto LABEL_13;
    }

    v124 = sub_1CF9E8048();
    v94, v125, v126, v127, v128, v129, v130, v131;
    v103, v132, v133, v134, v135, v136, v137, v138;
    if (v124)
    {
      goto LABEL_12;
    }

    v155 = [v89 itemIdentifier];
    sub_1CEFFCBA8(v155);
    v872 = 0;
    v868 = v91;
    v870 = v90;
    v871 = v156;

    v157 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v869 = objc_opt_self();
    v158 = [v869 legacyDefaultManager];
    v159 = [v158 providerIdentifier];

    if (!v159)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v161 = v160;
      v159 = sub_1CF9E6888();
      v161, v162, v163, v164, v165, v166, v167, v168;
    }

    [v157 setPurposeIdentifier_];

    v169 = v907;
    v170 = swift_allocBox();
    v172 = v171;
    v173 = v921;
    v174 = [v921 itemIdentifier];
    sub_1CF2FD4F4(v174, v71);
    v175 = v169;

    v115 = v906;
    v176 = v906 + 48;
    v866 = *(v906 + 48);
    if (v866(v71, 1, v175) == 1)
    {
      sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);
      swift_deallocBox();
      v177 = [v173 itemIdentifier];
      v141 = FPItemNotFoundError();

      if (!v141)
      {
LABEL_223:

        __break(1u);
        goto LABEL_224;
      }

      v88 = &selRef_initWithTarget_;
      swift_willThrow();

      swift_unknownObjectRelease();
LABEL_13:
      v912 = 0;
      v142 = 0;
      v116 = 0;
      v118 = 0;
      goto LABEL_14;
    }

    v860 = v176;
    v865 = v157;
    v867 = v170;
    v863 = v115[4];
    v863(v172, v71, v175);
    v113 = v172;
    if ((v912 & 1) == 0)
    {
      v178 = 0;
      v864 = 0;
      goto LABEL_41;
    }

    v179 = v871;
    if ([v871 respondsToSelector_])
    {
      v180 = [v179 itemVersion];
      v181 = [v180 contentVersion];

      v182 = sub_1CF9E5B88();
      v184 = v183;
    }

    else
    {
      v182 = 0;
      v184 = 0xF000000000000000;
    }

    v185 = [v911 contentVersion];
    v186 = sub_1CF9E5B88();
    v188 = v187;

    if (v184 >> 60 == 15)
    {
      if (v188 >> 60 == 15)
      {
        sub_1CEFE48D8(v182, v184);
LABEL_40:
        v864 = 0;
        v178 = 1;
        goto LABEL_41;
      }
    }

    else if (v188 >> 60 != 15)
    {
      sub_1CEFF05F4(v182, v184);
      sub_1CEFE42D4(v186, v188);
      v199 = sub_1CF328660(v182, v184, v186, v188);
      sub_1CEFE4714(v186, v188);
      sub_1CEFE48D8(v182, v184);
      sub_1CEFE48D8(v186, v188);
      sub_1CEFE48D8(v182, v184);
      if (v199)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    sub_1CEFE48D8(v182, v184);
    sub_1CEFE48D8(v186, v188);
LABEL_37:
    v118 = 0x80000001CFA3F320;
    if (qword_1EDEA3408 != -1)
    {
      goto LABEL_211;
    }

    while (1)
    {
      v189 = qword_1EDEBB5A0;
      v190 = sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_1CF9FA450;
      *(v191 + 56) = MEMORY[0x1E69E6158];
      *(v191 + 64) = sub_1CEFD51C4();
      *(v191 + 32) = 0xD000000000000039;
      *(v191 + 40) = v118;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v189, v190, v191);
      v191, v192, v193, v194, v195, v196, v197, v198;
      v178 = 0;
      v912 &= 0xFFFFFFFFFFFFFF7ELL;
      v864 = 1;
LABEL_41:
      *&v955 = v178;
      type metadata accessor for NSFileProviderItemFields(0);
      sub_1CEFD5B1C(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields, &unk_1CF9F6070);
      if (sub_1CF9E7798())
      {
        break;
      }

LABEL_53:
      v231.rawValue = v912;
      if (!v912)
      {
        v261 = v871;
        swift_unknownObjectRetain();
        v262 = [v869 legacyDefaultManager];
        v263 = *MEMORY[0x1E6967298];
        *&v957 = nullsub_1;
        *(&v957 + 1) = 0;
        *&v955 = MEMORY[0x1E69E9820];
        *(&v955 + 1) = 1107296256;
        *&v956 = sub_1CF00A468;
        *(&v956 + 1) = &block_descriptor_109;
        v264 = _Block_copy(&v955);
        [v262 signalEnumeratorForContainerItemIdentifier:v263 completionHandler:v264];
        _Block_release(v264);

        v917(v261, 0, v864, 0);

        swift_unknownObjectRelease_n();
        return;
      }

      v859 = v113;
      v232 = swift_allocObject();
      v911 = (v232 + 16);
      Fields.init(_:)(v231);
      v233 = v904;
      sub_1CF30FD54(v871, v904);
      v234 = v903;
      sub_1CF30FD54(v921, v903);
      v235 = *(v232 + 16);
      v236 = v905;
      sub_1CEFFD30C(v233, v905, type metadata accessor for ItemMetadata);
      *&v955 = v235;
      sub_1CF677700(&v955, v234);
      v237 = swift_allocObject();
      v861 = v232;
      v862 = v237;
      *(v237 + 16) = 0;
      v858 = (v237 + 16);
      v238 = *(v232 + 16);
      if (v238)
      {
        v239 = [v871 filename];
        v240 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v242 = v241;

        v243 = [v921 filename];
        v244 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v246 = v245;

        if (v240 == v244 && v242 == v246)
        {
          v242, v247, v248, v249, v250, v251, v252, v253;
          v246, v254, v255, v256, v257, v258, v259, v260;
        }

        else
        {
          v265 = sub_1CF9E8048();
          v242, v266, v267, v268, v269, v270, v271, v272;
          v246, v273, v274, v275, v276, v277, v278, v279;
          if ((v265 & 1) == 0)
          {
            v238 = *v911;
            v236 = v905;
            goto LABEL_65;
          }
        }

        v238 = *v911;
        v236 = v905;
        if (*v911)
        {
          v238 &= ~1uLL;
          *v911 = v238;
        }
      }

LABEL_65:
      v281 = v910;
      if ((v238 & 2) == 0)
      {
        goto LABEL_73;
      }

      v282 = [v871 parentItemIdentifier];
      v283 = [v921 parentItemIdentifier];
      v284 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v286 = v285;
      v288 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v289 = v284;
      v290 = v287;
      if (v289 == v288 && v286 == v287)
      {

        v286, v291, v292, v293, v294, v295, v296, v297;
        v290, v298, v299, v300, v301, v302, v303, v304;
      }

      else
      {
        v305 = sub_1CF9E8048();

        v286, v306, v307, v308, v309, v310, v311, v312;
        v290, v313, v314, v315, v316, v317, v318, v319;
        if ((v305 & 1) == 0)
        {
          v281 = v910;
          v238 = *v911;
          v236 = v905;
          goto LABEL_73;
        }
      }

      v281 = v910;
      v238 = *v911;
      v236 = v905;
      if ((*v911 & 2) != 0)
      {
        v238 &= ~2uLL;
        *v911 = v238;
      }

LABEL_73:
      if ((v238 & 8) != 0)
      {
        sub_1CEFE528C(&v939);
        v970 = v954;
        v967 = v951;
        v968 = v952;
        v969 = v953;
        v963 = v947;
        v964 = v948;
        v965 = v949;
        v966 = v950;
        v959 = v943;
        v960 = v944;
        v961 = v945;
        v962 = v946;
        v955 = v939;
        v956 = v940;
        v957 = v941;
        v958 = v942;
        MEMORY[0x1EEE9AC00](v320);
        *(&v854 - 2) = v281;
        v321 = v872;
        sub_1CF9BA920(&v955, sub_1CF3262AC, &v854 - 32);
        v872 = v321;
        if (v321)
        {
          swift_unknownObjectRelease();

          sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
          sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

          sub_1CF007BF8(v236, type metadata accessor for ItemMetadata);

          v912 = 0;
          v142 = 0;
          v116 = 0;
          v118 = 0;
          v141 = v872;
          v88 = &selRef_initWithTarget_;
          goto LABEL_14;
        }

        v238 = *v911;
      }

      v322 = v921;
      if ((v238 & 2) == 0)
      {
        v322 = v871;
        if ((v238 & 1) == 0)
        {
          v912 = 0;
          v884 = 0;
          v323 = v907;
          v114 = v859;
          goto LABEL_80;
        }
      }

      v367 = v863;
      v368 = [v322 parentItemIdentifier];
      if (*v911)
      {
        v369 = v921;
      }

      else
      {
        v369 = v871;
      }

      v370 = [v369 filename];
      v857 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v912 = v371;

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v373 = v372;
      v374 = sub_1CF9E6AE8();
      v373, v375, v376, v377, v378, v379, v380, v381;
      if (v374)
      {
        v389 = v368;
        v390 = v912;
        goto LABEL_99;
      }

      v391 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v393 = v392;
      v395 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v401 = v391;
      v390 = v394;
      if (v401 == v395 && v393 == v394)
      {
        v389 = v368;
        v912, v394, v395, v396, v397, v398, v399, v400;
        v393, v402, v403, v404, v405, v406, v407, v408;
        goto LABEL_99;
      }

      v409 = sub_1CF9E8048();
      v393, v410, v411, v412, v413, v414, v415, v416;
      v390, v417, v418, v419, v420, v421, v422, v423;
      if (v409)
      {
        v389 = v368;
        v390 = v912;
        v236 = v905;
LABEL_99:
        v425 = v915;
        v424 = v916;
        v426 = v914;
        v390, v382, v383, v384, v385, v386, v387, v388;
        sub_1CF9E5208();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        sub_1CF9E57D8();
        v141 = sub_1CF9E50D8();
        (*(v425 + 8))(v426, v424);
        swift_willThrow();
        swift_unknownObjectRelease();

        sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
        sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

        v427 = v236;
LABEL_100:
        sub_1CF007BF8(v427, type metadata accessor for ItemMetadata);

        v912 = 0;
        v142 = 0;
        v116 = 0;
        v118 = 0;
LABEL_101:
        v88 = &selRef_initWithTarget_;
LABEL_14:
        v143 = [v921 v88[113]];
        sub_1CEFFCBA8(v143);
        v145 = v144;

        v146 = objc_opt_self();
        v147 = v141;
        v148 = [v146 legacyDefaultManager];
        v149 = *MEMORY[0x1E6967298];
        *&v925 = nullsub_1;
        *(&v925 + 1) = 0;
        *&v923 = MEMORY[0x1E69E9820];
        *(&v923 + 1) = 1107296256;
        *&v924 = sub_1CF00A468;
        *(&v924 + 1) = &block_descriptor_73;
        v150 = _Block_copy(&v923);
        [v148 signalEnumeratorForContainerItemIdentifier:v149 completionHandler:v150];
        _Block_release(v150);

        v151 = v912;
        v917(v145, 0, 0, v141);

        swift_unknownObjectRelease();
        v152 = v151;
        v153 = v142;
        goto LABEL_15;
      }

      v428 = v884;
      sub_1CF2FD4F4(v368, v884);
      v429 = v907;
      if (v866(v428, 1, v907) == 1)
      {
        sub_1CEFCCC44(v428, &unk_1EC4BE310, qword_1CF9FCBE0);
        v430 = FPItemNotFoundError();
        if (v430)
        {
          v141 = v430;
          v912, v431, v432, v433, v434, v435, v436, v437;
          swift_willThrow();
          swift_unknownObjectRelease();

          sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
          sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

          v427 = v905;
          goto LABEL_100;
        }

LABEL_224:

        __break(1u);
LABEL_225:

        __break(1u);
LABEL_226:

        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
      }

      v855 = v368;
      v367(v885, v428, v429);
      v438 = v899;
      v856 = v115[2];
      v856(v899, v859, v429);
      v439 = sub_1CF9E5928();
      v863 = v115[1];
      (v863)(v438, v429);
      v440 = sub_1CF9E5928();
      v441 = [v439 fp:v440 relationshipToItemAtURL:?];

      if (v441)
      {
        sub_1CF9E5958();
        v442 = v871;
        v443 = v907;
        v445 = v855;
        v444 = v856;
      }

      else
      {
        *&v939 = 0;
        *(&v939 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA3F2A0);
        v468 = v899;
        v443 = v907;
        v856(v899, v859, v907);
        sub_1CEFD5B1C(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v469 = sub_1CF9E7F98();
        v471 = v470;
        MEMORY[0x1D3868CC0](v469);
        v471, v472, v473, v474, v475, v476, v477, v478;
        (v863)(v468, v443);
        MEMORY[0x1D3868CC0](0x206F746E6920, 0xE600000000000000);
        v479 = sub_1CF9E7F98();
        v481 = v480;
        MEMORY[0x1D3868CC0](v479);
        v481, v482, v483, v484, v485, v486, v487, v488;
        v489 = v939;
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v490 = qword_1EDEBB5A0;
        v491 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v492 = swift_allocObject();
        *(v492 + 16) = xmmword_1CF9FA450;
        *(v492 + 56) = MEMORY[0x1E69E6158];
        *(v492 + 64) = sub_1CEFD51C4();
        *(v492 + 32) = v489;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v490, v491, v492);
        v492, v493, v494, v495, v496, v497, v498, v499;
        v500 = v856;
        v856(v886, v859, v443);
        v442 = v871;
        v445 = v855;
        v444 = v500;
      }

      v501 = v899;
      v444(v899, v859, v443);
      sub_1CEFD5B1C(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v502 = sub_1CF9E6868();
      (v863)(v501, v443);
      if (v502)
      {
        *&v939 = 0;
        *(&v939 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v939 + 1), v503, v504, v505, v506, v507, v508, v509;
        *&v939 = 0xD00000000000001ALL;
        *(&v939 + 1) = 0x80000001CFA3F280;
        v510 = [v442 parentItemIdentifier];
        v511 = NSFileProviderItemIdentifier.description.getter(v510);
        v513 = v512;
        MEMORY[0x1D3868CC0](v511);

        v513, v514, v515, v516, v517, v518, v519, v520;
        MEMORY[0x1D3868CC0](58, 0xE100000000000000);
        v521 = [v442 filename];
        v522 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v524 = v523;

        MEMORY[0x1D3868CC0](v522, v524);
        v524, v525, v526, v527, v528, v529, v530, v531;
        MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
        v532 = NSFileProviderItemIdentifier.description.getter(v445);
        v534 = v533;
        MEMORY[0x1D3868CC0](v532);
        v534, v535, v536, v537, v538, v539, v540, v541;
        MEMORY[0x1D3868CC0](58, 0xE100000000000000);
        v465 = v445;
        v542 = v912;
        MEMORY[0x1D3868CC0](v857, v912);
        v542, v543, v544, v545, v546, v547, v548, v549;
        v463 = *(&v939 + 1);
        v118 = v939;
        v466 = v885;
        if (qword_1EDEA3408 != -1)
        {
          goto LABEL_221;
        }

        goto LABEL_123;
      }

      *&v939 = 0;
      *(&v939 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v939 + 1), v561, v562, v563, v564, v565, v566, v567;
      *&v939 = 0xD000000000000011;
      *(&v939 + 1) = 0x80000001CFA3F240;
      v568 = [v442 parentItemIdentifier];
      v569 = NSFileProviderItemIdentifier.description.getter(v568);
      v571 = v570;
      MEMORY[0x1D3868CC0](v569);

      v571, v572, v573, v574, v575, v576, v577, v578;
      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v579 = [v442 filename];
      v580 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v582 = v581;

      MEMORY[0x1D3868CC0](v580, v582);
      v582, v583, v584, v585, v586, v587, v588, v589;
      MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
      v590 = NSFileProviderItemIdentifier.description.getter(v445);
      v592 = v591;
      MEMORY[0x1D3868CC0](v590);
      v592, v593, v594, v595, v596, v597, v598, v599;
      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v600 = v857;
      MEMORY[0x1D3868CC0](v857, v912);
      v601 = v939;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v602 = qword_1EDEBB5A0;
      v603 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v604 = swift_allocObject();
      *(v604 + 16) = xmmword_1CF9FA450;
      *(v604 + 56) = MEMORY[0x1E69E6158];
      *(v604 + 64) = sub_1CEFD51C4();
      *(v604 + 32) = v601;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v602, v603, v604);
      v604, v605, v606, v607, v608, v609, v610, v611;
      v612 = swift_allocObject();
      v613 = v912;
      v612[2] = v600;
      v612[3] = v613;
      v614 = v920;
      v615 = v862;
      v612[4] = v920;
      v612[5] = v615;
      v616 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v617 = v614;

      v618 = sub_1CF9E6888();
      v619 = [v616 initWithSuiteName_];

      v884 = v612;
      if (v619 && (v627 = sub_1CF9E6888(), v628 = [v619 BOOLForKey_], v619, v627, (v628 & 1) != 0))
      {
        v629 = v617;
        v630 = v899;
        v114 = v859;
        v323 = v907;
        v856(v899, v859, v907);
        v631 = v886;
        v632 = v912;
        sub_1CF3115C4(v630, v886, v600, v912, v629, v862);

        v632, v633, v634, v635, v636, v637, v638, v639;
        v640 = v863;
        (v863)(v630, v323);
        v640(v885, v323);
        v115 = v906;
        (*(v906 + 40))(v114, v631, v323);

        v912 = 0;
        v884 = 0;
        v236 = v905;
      }

      else
      {
        v912, v620, v621, v622, v623, v624, v625, v626;
        v641 = v899;
        v642 = v907;
        v856(v899, v859, v907);
        v643 = sub_1CF9E5928();
        v644 = v863;
        (v863)(v641, v642);
        v645 = sub_1CF9E5928();
        v646 = swift_allocObject();
        *(v646 + 16) = sub_1CF326278;
        *(v646 + 24) = v612;
        *&v941 = sub_1CF326284;
        *(&v941 + 1) = v646;
        *&v939 = MEMORY[0x1E69E9820];
        *(&v939 + 1) = 1107296256;
        *&v940 = sub_1CF3120D4;
        *(&v940 + 1) = &block_descriptor_106;
        v647 = _Block_copy(&v939);

        *&v939 = 0;
        [v865 coordinateWritingItemAtURL:v643 options:2 writingItemAtURL:v645 options:0 error:&v939 byAccessor:v647];
        _Block_release(v647);

        v644(v885, v642);
        v648 = v939;
        LOBYTE(v643) = swift_isEscapingClosureAtFileLocation();

        if (v643)
        {
          __break(1u);
          goto LABEL_223;
        }

        v115 = v906;
        v114 = v859;
        (*(v906 + 40))(v859, v886, v642);

        v912 = sub_1CF326278;
        v236 = v905;
        v323 = v642;
        v886 = v648;
        if (v648)
        {
          v116 = 0;
          v118 = 0;
          goto LABEL_160;
        }
      }

      while (1)
      {
        v281 = v910;
LABEL_80:
        v324 = v858;
        swift_beginAccess();
        if (*v324)
        {
          goto LABEL_159;
        }

        if ((*v911 & 8) == 0)
        {
          v325 = *v911 & 0xFFFFFFFFFFFFFFF4;
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          if ((v325 & (qword_1EDEABDE8 | 0x409000000C000)) == 0)
          {
            v116 = 0;
            v118 = 0;
            v886 = 0;
            v323 = v907;
            goto LABEL_160;
          }
        }

        *&v939 = 0;
        *(&v939 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v939 + 1), v326, v327, v328, v329, v330, v331, v332;
        *&v939 = 0xD000000000000027;
        *(&v939 + 1) = 0x80000001CFA3F130;
        v333 = sub_1CF0720C8();
        v335 = v334;
        MEMORY[0x1D3868CC0](v333);
        v335, v336, v337, v338, v339, v340, v341, v342;
        v343 = v939;
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v344 = qword_1EDEBB5A0;
        v345 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v346 = swift_allocObject();
        *(v346 + 16) = xmmword_1CF9FA450;
        *(v346 + 56) = MEMORY[0x1E69E6158];
        *(v346 + 64) = sub_1CEFD51C4();
        *(v346 + 32) = v343;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v344, v345, v346);
        v346, v347, v348, v349, v350, v351, v352, v353;
        v354 = v281;
        v355 = v880;
        sub_1CEFCCBDC(v354, v880, &unk_1EC4BE310, qword_1CF9FCBE0);
        v356 = v883;
        sub_1CEFFD30C(v236, v883, type metadata accessor for ItemMetadata);
        sub_1CEFCCBDC(v355, v898, &unk_1EC4BE310, qword_1CF9FCBE0);
        sub_1CEFFD30C(v356, v894, type metadata accessor for ItemMetadata);
        v357 = (*(v909 + 80) + 40) & ~*(v909 + 80);
        v358 = (v908 + v357 + 7) & 0xFFFFFFFFFFFFFFF8;
        v359 = (*(v881 + 80) + v358 + 8) & ~*(v881 + 80);
        v360 = (v882 + v359 + 7) & 0xFFFFFFFFFFFFFFF8;
        v361 = swift_allocObject();
        v362 = v861;
        v363 = v871;
        v361[2] = v861;
        v361[3] = v363;
        v361[4] = v867;
        sub_1CEFE55D0(v355, v361 + v357, &unk_1EC4BE310, qword_1CF9FCBE0);
        v364 = v870;
        *(v361 + v358) = v870;
        sub_1CEFFC48C(v356, v361 + v359, type metadata accessor for ItemMetadata);
        v910 = v361;
        *(v361 + v360) = v862;
        v365 = v911;
        swift_beginAccess();
        if ((*(v362 + 16) & 8) == 0)
        {
          swift_unknownObjectRetain();

          v366 = v364;
          a3 = v906;
          break;
        }

        v446 = objc_allocWithZone(MEMORY[0x1E695E000]);
        swift_unknownObjectRetain();

        v447 = v364;
        v448 = sub_1CF9E6888();
        v449 = [v446 initWithSuiteName_];

        a3 = v906;
        if (v449)
        {
          v450 = sub_1CF9E6888();
          v451 = [v449 BOOLForKey_];

          if (v451)
          {
            break;
          }
        }

LABEL_115:
        sub_1CF007BF8(v894, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v898, &unk_1EC4BE310, qword_1CF9FCBE0);
        v114 = v859;
        swift_beginAccess();
        v460 = v899;
        v461 = v907;
        (*(a3 + 16))(v899, v114, v907);
        v462 = sub_1CF9E5928();
        (*(a3 + 8))(v460, v461);
        v118 = swift_allocObject();
        v463 = v910;
        v118[2] = sub_1CF326210;
        v118[3] = v463;
        v464 = swift_allocObject();
        v116 = sub_1CF326250;
        *(v464 + 16) = sub_1CF326250;
        *(v464 + 24) = v118;
        *&v941 = sub_1CF326250;
        *(&v941 + 1) = v464;
        *&v939 = MEMORY[0x1E69E9820];
        *(&v939 + 1) = 1107296256;
        *&v940 = sub_1CF2FCAB8;
        *(&v940 + 1) = &block_descriptor_97;
        v465 = _Block_copy(&v939);
        v466 = *(&v941 + 1);

        *&v939 = 0;
        [v865 coordinateWritingItemAtURL:v462 options:0 error:&v939 byAccessor:v465];

        _Block_release(v465);

        v886 = v939;
        v467 = v939;
        LOBYTE(v462) = swift_isEscapingClosureAtFileLocation();

        if ((v462 & 1) == 0)
        {
          v115 = v906;
          v323 = v907;
          goto LABEL_160;
        }

        __break(1u);
LABEL_221:
        swift_once();
LABEL_123:
        v550 = qword_1EDEBB5A0;
        v551 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v552 = swift_allocObject();
        *(v552 + 16) = xmmword_1CF9FA450;
        *(v552 + 56) = MEMORY[0x1E69E6158];
        *(v552 + 64) = sub_1CEFD51C4();
        *(v552 + 32) = v118;
        *(v552 + 40) = v463;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v550, v551, v552);

        v552, v553, v554, v555, v556, v557, v558, v559;
        v323 = v907;
        v560 = v863;
        (v863)(v886, v907);
        v560(v466, v323);
        v912 = 0;
        v884 = 0;
        v236 = v905;
        v115 = v906;
        v114 = v859;
      }

      v114 = v859;
      swift_beginAccess();
      v452 = *(a3 + 16);
      v453 = v879;
      v452(v879, v114, v907);
      v454 = *v365;
      if ((*v365 & 8) != 0)
      {
        if (([v871 respondsToSelector_] & 1) != 0 && (objc_msgSend(v871, sel_fileSystemFlags) & 4) != 0)
        {
          v651 = v907;
          v458 = v874;
        }

        else
        {
          v455 = v899;
          v456 = v907;
          v452(v899, v114, v907);
          v457 = sub_1CF9E5928();
          (*(a3 + 8))(v455, v456);
          *&v939 = 0;
          LODWORD(v456) = [v457 fp:&v939 makeWritableWithError:?];

          v458 = v874;
          if (v456)
          {
            v459 = v939;
          }

          else
          {
            v649 = v939;
            v650 = sub_1CF9E57F8();

            swift_willThrow();
            v872 = 0;
          }

          v651 = v907;
          if ((*v365 & 4) == 0)
          {
            *v365 |= 4uLL;
          }
        }

        sub_1CEFCCBDC(v898, v458, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (v866(v458, 1, v651) == 1)
        {
          goto LABEL_225;
        }

        sub_1CF9E5A18();
        v653 = v652;
        v654 = *(a3 + 8);
        v654(v458, v651);
        v655 = v877;
        sub_1CF9E58C8();
        v653, v656, v657, v658, v659, v660, v661, v662;
        v663 = [objc_opt_self() defaultManager];
        v664 = v876;
        v452(v876, v114, v651);
        v665 = v664;
        v666 = v875;
        v667 = v872;
        sub_1CF9E7278();
        if (v667)
        {

          v654(v665, v651);
          v654(v655, v651);
          sub_1CF007BF8(v894, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v898, &unk_1EC4BE310, qword_1CF9FCBE0);
          v668 = v667;
          v872 = 0;
          v115 = v906;
          v453 = v879;
          goto LABEL_157;
        }

        v872 = 0;

        v654(v665, v651);
        sub_1CEFCCC44(v666, &unk_1EC4BE310, qword_1CF9FCBE0);
        v654(v655, v651);
        v454 = *v911;
        v453 = v879;
      }

      v669 = v454 & 0xFFFFFFFFFFFFFFF4;
      v670 = v894;
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v115 = v906;
      if ((v669 & (qword_1EDEABDE8 | 0x409000000C000)) != 0)
      {
        if ((*v911 & 0x20) != 0)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v675 = v674;
          v676 = sub_1CF9E6AE8();
          v675, v677, v678, v679, v680, v681, v682, v683;
          if (v676)
          {
            goto LABEL_155;
          }

          v684 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v686 = v685;
          v688 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v694 = v684;
          v695 = v687;
          if (v694 == v688 && v686 == v687)
          {
            v686, v687, v688, v689, v690, v691, v692, v693;
            v695, v696, v697, v698, v699, v700, v701, v702;
LABEL_155:
            sub_1CF9E5208();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            v718 = v914;
            v719 = v916;
            sub_1CF9E57D8();
            v668 = sub_1CF9E50D8();
            (*(v915 + 8))(v718, v719);
            swift_willThrow();

            sub_1CF007BF8(v670, type metadata accessor for ItemMetadata);
            sub_1CEFCCC44(v898, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_156:
            v872 = 0;
LABEL_157:
            v720 = *v858;
            *v858 = v668;

            goto LABEL_158;
          }

          v703 = sub_1CF9E8048();
          v686, v704, v705, v706, v707, v708, v709, v710;
          v695, v711, v712, v713, v714, v715, v716, v717;
          if (v703)
          {
            goto LABEL_155;
          }
        }

        sub_1CEFE528C(&v923);
        v954 = v938;
        v951 = v935;
        v952 = v936;
        v953 = v937;
        v947 = v931;
        v948 = v932;
        v949 = v933;
        v950 = v934;
        v943 = v927;
        v944 = v928;
        v945 = v929;
        v946 = v930;
        v939 = v923;
        v940 = v924;
        v941 = v925;
        v942 = v926;
        MEMORY[0x1EEE9AC00](v671);
        v672 = v911;
        *(&v854 - 2) = v453;
        *(&v854 - 1) = v672;
        v673 = v872;
        sub_1CF9BA920(&v939, sub_1CF326214, &v854 - 32);
        if (v673)
        {

          sub_1CF007BF8(v670, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v898, &unk_1EC4BE310, qword_1CF9FCBE0);
          v668 = v673;
          goto LABEL_156;
        }

        v872 = 0;
      }

      else
      {
      }

      sub_1CF007BF8(v670, type metadata accessor for ItemMetadata);
      sub_1CEFCCC44(v898, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_158:
      v323 = v907;
      (v115[1])(v453, v907);
LABEL_159:
      v116 = 0;
      v118 = 0;
      v886 = 0;
LABEL_160:
      v721 = v911;
      swift_beginAccess();
      if ((*(v721 + 6) & 4) == 0)
      {
        goto LABEL_161;
      }

      v922 = &unk_1F4C7EB30;
      v755 = swift_dynamicCastObjCProtocolUnconditional();
      if (([v755 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_217;
      }

      v756 = [v755 conflictingVersions];
      if (!v756)
      {
        goto LABEL_217;
      }

      v757 = v756;
      sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
      v113 = sub_1CF9E6D48();

      if (v113 >> 62)
      {
LABEL_213:
        if (!sub_1CF9E7818())
        {
LABEL_216:
          v113, v758, v759, v760, v761, v762, v763, v764;
LABEL_217:
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          v842 = qword_1EDEBB5A0;
          v843 = sub_1CF9E72A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v844 = swift_allocObject();
          *(v844 + 16) = xmmword_1CF9FA450;
          *(v844 + 56) = MEMORY[0x1E69E6158];
          *(v844 + 64) = sub_1CEFD51C4();
          *(v844 + 32) = 0x1000000000000038;
          *(v844 + 40) = 0x80000001CFA3F180;
          sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v842, v843, v844);
          v844, v845, v846, v847, v848, v849, v850, v851;
          LODWORD(v923) = 22;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v852 = v887;
          v853 = v889;
          sub_1CF9E57D8();
          v141 = sub_1CF9E53A8();
          (*(v888 + 8))(v852, v853);
          swift_willThrow();
          swift_unknownObjectRelease();

          sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
          sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

          sub_1CF007BF8(v905, type metadata accessor for ItemMetadata);

          v88 = &selRef_initWithTarget_;
          v142 = v884;
          goto LABEL_14;
        }

        v795 = MEMORY[0x1E69E7CC0];
        *&v923 = MEMORY[0x1E69E7CC0];
        v841 = sub_1CF9E7818();
        v765 = v907;
        v916 = v841;
        if (!v841)
        {
LABEL_184:
          v113, v768, v769, v770, v771, v772, v773, v774;
          swift_beginAccess();
          v796 = v873;
          v797 = (v115[2])(v873, v114, v765);
          MEMORY[0x1EEE9AC00](v797);
          *(&v854 - 2) = v905;
          *(&v854 - 1) = v795;
          v798 = sub_1CF9E5848();
          if ((v798 & 1) == 0)
          {
            goto LABEL_226;
          }

          MEMORY[0x1EEE9AC00](v798);
          *(&v854 - 2) = sub_1CF32622C;
          *(&v854 - 1) = (&v854 - 4);
          v799 = v872;
          sub_1CF9E59B8();
          v872 = v799;
          if (v799)
          {
            swift_unknownObjectRelease();

            (*(v906 + 8))(v796, v907);
            sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
            sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

            sub_1CF007BF8(v905, type metadata accessor for ItemMetadata);

            v88 = &selRef_initWithTarget_;
            v141 = v872;
            v142 = v884;
            goto LABEL_14;
          }

          v835 = v906;
          v323 = v907;
          (*(v906 + 8))(v796, v907);

          v115 = v835;
LABEL_161:
          swift_beginAccess();
          v722 = v115[2];
          v723 = v899;
          v722(v899, v114, v323);
          v724 = v892;
          sub_1CEFFD30C(&v920[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v892, type metadata accessor for LocalDomain);
          v725 = v890;
          v722(v890, v723, v323);
          v726 = v891;
          sub_1CEFFD30C(v724, v891, type metadata accessor for LocalDomain);
          v727 = type metadata accessor for VFSItem(0);
          v728 = v893;
          (*(*(v727 - 8) + 56))(v893, 1, 1, v727);
          v729 = objc_allocWithZone(type metadata accessor for LocalItem(0));
          v730 = sub_1CF001704(v725, v726, v728);
          sub_1CF007BF8(v724, type metadata accessor for LocalDomain);
          (*(v906 + 8))(v723, v907);
          v731 = v921;
          if (v730)
          {
            v732 = *&v730[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
            v733 = [v731 itemIdentifier];
            v734 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v736 = v735;
            v738 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v739 = v734;
            v740 = v737;
            if (v739 == v738 && v736 == v737)
            {

              v736, v741, v742, v743, v744, v745, v746, v747;
              v740, v748, v749, v750, v751, v752, v753, v754;
              goto LABEL_181;
            }

            v778 = sub_1CF9E8048();

            v736, v779, v780, v781, v782, v783, v784, v785;
            v740, v786, v787, v788, v789, v790, v791, v792;
            if (v778)
            {
LABEL_181:
              v793 = v886;
              if (v886)
              {
                v794 = v886;
              }

              else
              {
                v800 = v858;
                swift_beginAccess();
                v793 = *v800;
                v801 = *v800;
                v794 = 0;
              }

              v802 = v869;
              v803 = v730;
              v804 = v794;
              v805 = [v802 legacyDefaultManager];
              v806 = *MEMORY[0x1E6967298];
              *&v925 = nullsub_1;
              *(&v925 + 1) = 0;
              *&v923 = MEMORY[0x1E69E9820];
              *(&v923 + 1) = 1107296256;
              *&v924 = sub_1CF00A468;
              *(&v924 + 1) = &block_descriptor_88;
              v807 = _Block_copy(&v923);
              [v805 signalEnumeratorForContainerItemIdentifier:v806 completionHandler:v807];
              _Block_release(v807);

              v917(v730, 0, v864, v793);
              swift_unknownObjectRelease();

              goto LABEL_205;
            }

            v731 = v921;
          }

          v808 = v878;
          v913 = *(v878 + 56);
          v914 = (v878 + 56);
          v913(v902, 1, 1, v901);
          v809 = [v731 itemIdentifier];
          v810 = v872;
          sub_1CEFFCBA8(v809);
          if (v810)
          {
            v141 = v810;
            v915 = v808 + 48;
            v910 = (v808 + 32);
            v911 = (v808 + 8);
            v812 = v900;

            v814 = v810;
            LODWORD(v923) = sub_1CF9E5298();
            sub_1CF196978();
            v815 = sub_1CF9E5658();

            if (v815)
            {

              v813 = v921;
              v88 = &selRef_initWithTarget_;
            }

            else
            {
              _s3__C4CodeOMa_1(0);
              *&v923 = -1005;
              v816 = v810;
              sub_1CEFD5B1C(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
              v817 = sub_1CF9E5658();

              v88 = &selRef_initWithTarget_;
              v142 = v884;
              if ((v817 & 1) == 0)
              {
                swift_unknownObjectRelease();

                sub_1CEFCCC44(v902, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
                sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

                sub_1CF007BF8(v905, type metadata accessor for ItemMetadata);

                goto LABEL_14;
              }

              LODWORD(v916) = v815;
              v818 = v902;
              sub_1CEFCCBDC(v902, v812, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              v819 = v901;
              if ((*v915)(v812, 1, v901) == 1)
              {
                sub_1CEFCCC44(v812, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                v820 = v895;
                sub_1CF9E5CE8();
                sub_1CEFCCC44(v818, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                v913(v820, 0, 1, v819);
                sub_1CEFE55D0(v820, v818, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              }

              else
              {
                v821 = v897;
                (*v910)(v897, v812, v819);
                v822 = v896;
                sub_1CF9E5CE8();
                sub_1CF9E5C28();
                v824 = v823;
                v825 = *v911;
                (*v911)(v822, v819);
                if (v824 > 2.0)
                {
                  v836 = v819;
                  v837 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
                  v838 = sub_1CF9E6888();
                  v839 = [v837 initWithDomain:v838 code:-1005 userInfo:0];

                  swift_willThrow();
                  swift_unknownObjectRelease();

                  v840 = v821;
                  v141 = v839;
                  v825(v840, v836);
                  sub_1CEFCCC44(v902, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                  sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
                  sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

                  sub_1CF007BF8(v905, type metadata accessor for ItemMetadata);

                  goto LABEL_101;
                }

                v825(v821, v819);
                v88 = &selRef_initWithTarget_;
              }

              v813 = v921;
            }

            usleep(0x64u);
            v809 = [v813 v88[113]];
            sub_1CEFFCBA8(v809);
          }

          v826 = v811;

          v827 = v865;
          v828 = v886;
          if (v886)
          {
            v829 = v886;
          }

          else
          {
            v830 = v858;
            swift_beginAccess();
            v828 = *v830;
            v831 = *v830;
            v829 = 0;
          }

          v804 = v829;
          swift_unknownObjectRetain();
          v832 = [v869 legacyDefaultManager];
          v833 = *MEMORY[0x1E6967298];
          *&v925 = nullsub_1;
          *(&v925 + 1) = 0;
          *&v923 = MEMORY[0x1E69E9820];
          *(&v923 + 1) = 1107296256;
          *&v924 = sub_1CF00A468;
          *(&v924 + 1) = &block_descriptor_85;
          v834 = _Block_copy(&v923);
          [v832 signalEnumeratorForContainerItemIdentifier:v833 completionHandler:v834];
          _Block_release(v834);

          v917(v826, 0, v864, v828);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1CEFCCC44(v902, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_205:
          sub_1CF007BF8(v903, type metadata accessor for ItemMetadata);
          sub_1CF007BF8(v904, type metadata accessor for ItemMetadata);

          sub_1CF007BF8(v905, type metadata accessor for ItemMetadata);

          v152 = v912;
          v153 = v884;
LABEL_15:
          sub_1CEFF7124(v152, v153);
          sub_1CEFF7124(v116, v118);
LABEL_16:

          return;
        }
      }

      else
      {
        v916 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v916)
        {
          goto LABEL_216;
        }

        *&v923 = MEMORY[0x1E69E7CC0];
        v765 = v907;
      }

      v766 = 0;
      v915 = v113 & 0xC000000000000001;
      v767 = v113 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v915)
        {
          v776 = v113;
          v777 = MEMORY[0x1D3869C30](v766, v113);
        }

        else
        {
          if (v766 >= *(v767 + 16))
          {
            goto LABEL_210;
          }

          v776 = v113;
          v777 = *(v113 + 8 * v766 + 32);
        }

        v115 = v777;
        v113 = v766 + 1;
        if (__OFADD__(v766, 1))
        {
          break;
        }

        if ([v777 conflictResolved])
        {
        }

        else
        {
          sub_1CF9E7A18();
          sub_1CF9E7A58();
          v114 = v859;
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v765 = v907;
        }

        ++v766;
        v775 = v113 == v916;
        v115 = v906;
        v113 = v776;
        if (v775)
        {
          v795 = v923;
          goto LABEL_184;
        }
      }

      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      swift_once();
    }

    v200 = v871;
    if ([v871 respondsToSelector_])
    {
      v201 = [v200 itemVersion];
      v202 = [v201 metadataVersion];

      v203 = sub_1CF9E5B88();
      v205 = v204;
    }

    else
    {
      v203 = 0;
      v205 = 0xF000000000000000;
    }

    v206 = [v911 metadataVersion];
    v207 = sub_1CF9E5B88();
    v209 = v208;

    if (v205 >> 60 == 15)
    {
      if (v209 >> 60 == 15)
      {
        sub_1CEFE48D8(v203, v205);
        goto LABEL_53;
      }
    }

    else if (v209 >> 60 != 15)
    {
      sub_1CEFF05F4(v203, v205);
      sub_1CEFE42D4(v207, v209);
      v280 = sub_1CF328660(v203, v205, v207, v209);
      sub_1CEFE4714(v207, v209);
      sub_1CEFE48D8(v203, v205);
      sub_1CEFE48D8(v207, v209);
      sub_1CEFE48D8(v203, v205);
      if (v280)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    sub_1CEFE48D8(v203, v205);
    sub_1CEFE48D8(v207, v209);
LABEL_50:
    *&v955 = 0;
    *(&v955 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3F2D0);
    v210 = sub_1CF7F5844(v912);
    v212 = v211;
    MEMORY[0x1D3868CC0](v210);
    v212, v213, v214, v215, v216, v217, v218, v219;
    v220 = v955;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v221 = qword_1EDEBB5A0;
    v222 = sub_1CF9E7288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v223 = swift_allocObject();
    *(v223 + 16) = xmmword_1CF9FA450;
    *(v223 + 56) = MEMORY[0x1E69E6158];
    *(v223 + 64) = sub_1CEFD51C4();
    *(v223 + 32) = v220;
    sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v221, v222, v223);
    v223, v224, v225, v226, v227, v228, v229, v230;
    goto LABEL_53;
  }

  sub_1CEFCCBDC(v910, v57, &unk_1EC4BE310, qword_1CF9FCBE0);
  v111 = (*(v909 + 80) + 72) & ~*(v909 + 80);
  v112 = swift_allocObject();
  v113 = v919;
  v112[2] = sub_1CF326208;
  v112[3] = v113;
  v114 = v920;
  v115 = v921;
  v112[4] = v920;
  v112[5] = v115;
  v116 = v911;
  v117 = v912;
  v112[6] = v911;
  v112[7] = v117;
  v112[8] = 0x40000000;
  sub_1CEFE55D0(v57, v112 + v111, &unk_1EC4BE310, qword_1CF9FCBE0);
  v118 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  if (([v115 respondsToSelector_] & 1) == 0)
  {

    __break(1u);
    goto LABEL_213;
  }

  v119 = v114;

  swift_unknownObjectRetain();
  v120 = v116;
  v121 = [v115 isTrashed];
  v122 = [v115 itemIdentifier];
  v123 = v122;
  if (v121)
  {
    sub_1CF3030B4(v122, sub_1CF3262C4, v112);

    goto LABEL_16;
  }

  if ((v117 & 4) != 0)
  {
    v154 = [v115 parentItemIdentifier];
  }

  else
  {
    v154 = 0;
  }

  sub_1CF304734(v123, v154, sub_1CF3262C4, v112);
}