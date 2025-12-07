void sub_1CF5C1260(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v381 = a5;
  v382 = a4;
  v380 = a3;
  v383 = a2;
  v387 = a1;
  v7 = *v5;
  v385 = sub_1CF9E6118();
  v395 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v406 = &v356 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v392 = &v356 - v10;
  v11 = v7[78];
  v12 = v7[77];
  v13 = v7[80];
  v14 = v7[79];
  *&v413 = v11;
  *(&v413 + 1) = v12;
  *&v414 = v13;
  *(&v414 + 1) = v14;
  *&v413 = type metadata accessor for UserRequest(255, &v413);
  *(&v413 + 1) = &type metadata for NSecTimestamp;
  *&v400 = sub_1CF9E6448();
  *&v414 = v400;
  *(&v414 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v365 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  *&v405 = &v356 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v399 = (&v356 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v403 = &v356 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v402 = &v356 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v408 = (&v356 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v375 = &v356 - v26;
  v357 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v363 = &v356 - v29;
  v409 = v30;
  v386 = sub_1CF9E75D8();
  v397 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v407 = &v356 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v404 = (&v356 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v401 = &v356 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v390 = &v356 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v393 = (&v356 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v379 = &v356 - v41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v374 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v389 = &v356 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  isa = &v356 - v44;
  v362 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v370 = &v356 - v47;
  v366 = v11;
  *&v413 = v11;
  *(&v413 + 1) = v12;
  v368 = v12;
  v369 = v13;
  *&v414 = v13;
  *(&v414 + 1) = v14;
  v367 = v14;
  v48 = type metadata accessor for ItemReconciliation(255, &v413);
  v49 = sub_1CF9E75D8();
  v391 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v356 - v50;
  WitnessTable = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v356 - v53;
  v55 = sub_1CF9E64A8();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = (&v356 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v388 = v6;
  v60 = v6[8];
  *v59 = v60;
  (*(v56 + 104))(v59, *MEMORY[0x1E69E8020], v55, v57);
  v61 = v60;
  LOBYTE(v60) = sub_1CF9E64D8();
  (*(v56 + 8))(v59, v55);
  if ((v60 & 1) == 0)
  {
    goto LABEL_72;
  }

  v62 = v383;
  if (!v383)
  {
    v66 = v366;
    v79 = v369;
    v67 = v408;
    goto LABEL_12;
  }

  *&v410[0] = v383;
  v63 = v383;
  v64 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  v65 = swift_dynamicCast();
  v66 = v366;
  v67 = v408;
  if (!v65)
  {
    goto LABEL_10;
  }

  v68 = v414;
  if (BYTE8(v414) != 1)
  {
    sub_1CF481874(v413, *(&v413 + 1), v414, 0);
LABEL_10:

    goto LABEL_11;
  }

  v68, v69, v70, v71, v72, v73, v74, v75;
  v76 = v359;
  sub_1CF68E230(v387, v380, v382, *(v381 + 8), v51);

  if (v76)
  {
    return;
  }

  v77 = WitnessTable;
  v78 = (*(WitnessTable + 48))(v51, 1, v48);
  v359 = 0;
  if (v78 == 1)
  {
    (v391)[1](v51, v49);
    v66 = v366;
LABEL_11:
    v79 = v369;
    goto LABEL_12;
  }

  (*(v77 + 32))(v54, v51, v48);
  v66 = v366;
  v79 = v369;
  v336 = &v54[*(type metadata accessor for ItemReconciliationHalf(0, v366, v369, v335) + 64)];
  if (v336[16])
  {
    (*(v77 + 8))(v54, v48);
    return;
  }

  v354 = *v336;
  (*(v77 + 8))(v54, v48);
  if ((v354 & 0x100) == 0)
  {
    return;
  }

LABEL_12:
  v80 = qword_1EC4EBD70;
  v81 = v388;
  swift_beginAccess();
  v82 = *(v81 + v80);

  *&v413 = v66;
  *(&v413 + 1) = v368;
  *&v414 = v79;
  *(&v414 + 1) = v367;
  *&v413 = type metadata accessor for UserRequest(255, &v413);
  *(&v413 + 1) = &type metadata for NSecTimestamp;
  *&v414 = v400;
  *(&v414 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v83 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = *(AssociatedConformanceWitness + 40);
  sub_1CF9E6728();
  v82, v85, v86, v87, v88, v89, v90, v91;
  v92 = *&v410[0];
  if (!*&v410[0])
  {
    return;
  }

  *&v400 = v84;
  v93 = swift_allocObject();
  v358 = v93;
  *(v93 + 16) = v92;
  v94 = (v93 + 16);
  v95 = v383;
  v384 = v83;
  if (!v383)
  {
    *&v413 = v368;
    *(&v413 + 1) = v66;
    *&v414 = v367;
    *(&v414 + 1) = v369;
    type metadata accessor for ConcreteDatabase(0, &v413);

    v117 = sub_1CF057B28();
    v118 = v359;
    sub_1CF5C5B28(v387, v117, v380, v382, v381, &v413);
    v359 = v118;
    if (v118)
    {
      v92, v119, v120, v121, v122, v123, v124, v125;
    }

    else
    {
      v223 = v413;
      v224 = *(&v413 + 1);
      v225 = v414;

      if (v223)
      {
        if (v225)
        {
          v95 = v383;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v226);
          v337 = v366;
          *(&v356 - 8) = v368;
          *(&v356 - 7) = v337;
          v338 = v367;
          *(&v356 - 6) = v382;
          *(&v356 - 5) = v338;
          v339 = v381;
          *(&v356 - 4) = v369;
          *(&v356 - 3) = v339;
          v355 = v224;
          swift_getWitnessTable();
          WitnessTable = swift_getWitnessTable();
          v340 = v359;
          sub_1CF9E6848();
          v359 = v340;
          v341 = v413;
          (*(v374 + 16))(v370, v387, AssociatedTypeWitness);
          if (v341 < 0)
          {
            goto LABEL_73;
          }

          *&v413 = sub_1CF9E6E98();
          *(&v413 + 1) = v342;
          *&v414 = v343;
          *(&v414 + 1) = v344;
          sub_1CF9E7778();
          v391 = swift_getWitnessTable();
          *&v410[0] = sub_1CF9E6E88();
          swift_beginAccess();
          sub_1CF9E6708();
          sub_1CF9E6738();
          swift_endAccess();
          *&v410[0] = v341;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
          sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8, MEMORY[0x1E69E6D18]);
          sub_1CF9E6838();
          v410[0] = v413;
          v410[1] = v414;
          v345 = sub_1CF9E6E88();
          v346 = *v94;
          *v94 = v345;
          v346, v347, v348, v349, v350, v351, v352, v353;
          v67 = v408;
          v95 = v383;
        }

        goto LABEL_15;
      }

      v92, v227, v228, v229, v230, v231, v232, v233;
    }

    return;
  }

LABEL_15:
  v96 = *v94;

  v97 = sub_1CF9E6DF8();
  v96, v98, v99, v100, v101, v102, v103, v104;
  v105 = sub_1CF9E6DF8();
  v92, v106, v107, v108, v109, v110, v111, v112;
  if (v97 == v105)
  {
    (*(v374 + 16))(v370, v387, AssociatedTypeWitness);
    *&v410[0] = 0;
    swift_beginAccess();
    sub_1CF9E6708();
    v95 = v383;
    sub_1CF9E6738();
    swift_endAccess();
  }

  v113 = v405;
  if (v95)
  {
    swift_getErrorValue();
    v391 = Error.prettyDescription.getter(v411, v412);
    v114 = v382;
    v115 = v409;
    v116 = isa;
LABEL_23:
    v361 = v67 + 1;
    v407 = (v365 + 16);
    v128 = *v94;
    v362 = (v365 + 32);
    v401 = (v365 + 56);
    *&v400 = v365 + 48;
    v377 = (v397 + 32);
    v129 = (v374 + 16);
    v389 = v365 + 8;
    v376 = (v374 + 8);
    v375 = &v395[1];
    v374 = v114 - 8;

    v130 = 0;
    *&v131 = 136315650;
    v360 = v131;
    v378 = v128;
    v390 = v129;
    while (1)
    {
      v140 = sub_1CF9E6DF8();
      v141 = AssociatedTypeWitness;
      if (v130 == v140)
      {
        v399 = v130;
        v142 = 1;
      }

      else
      {
        v143 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v143)
        {
          v144 = v128 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v130;
          v145 = v363;
          (*(v365 + 16))(v363, v144, v115);
        }

        else
        {
          v215 = sub_1CF9E7998();
          if (v357 != 8)
          {
            goto LABEL_74;
          }

          *&v413 = v215;
          v145 = v363;
          (*v407)(v363, &v413, v115);
          swift_unknownObjectRelease();
        }

        (*v362)(v404, v145, v115);
        v146 = __OFADD__(v130, 1);
        v147 = (v130 + 1);
        if (v146)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v399 = v147;
        v142 = 0;
      }

      v148 = *v401;
      v149 = 1;
      v150 = v404;
      (*v401)(v404, v142, 1, v115);
      v151 = *v400;
      if ((*v400)(v150, 1, v115) != 1)
      {
        v152 = *(v115 + 64);
        v153 = *(v115 + 80);
        v154 = v404;
        v155 = v404[1];
        v406 = *v404;
        *&v405 = v155;
        v156 = sub_1CF9E6448();
        v157 = *(*(v156 - 8) + 32);
        v157(v408 + v152, &v154[v152], v156);
        v158 = swift_allocObject();
        v159 = *&v154[v153];
        v129 = v390;
        *(v158 + 16) = v159;
        v160 = *(v409 + 64);
        v161 = v393;
        v162 = (v393 + *(v409 + 80));
        v163 = v405;
        *v393 = v406;
        v161[1] = v163;
        v157(v161 + v160, v408 + v152, v156);
        v116 = isa;
        v115 = v409;
        v149 = 0;
        *v162 = sub_1CF5E14E0;
        v162[1] = v158;
        v141 = AssociatedTypeWitness;
      }

      v164 = v393;
      v148(v393, v149, 1, v115);
      v165 = v379;
      (v377->isa)(v379, v164, v386);
      if (v151(v165, 1, v115) == 1)
      {

        v378, v216, v217, v218, v219, v220, v221, v222;
        goto LABEL_40;
      }

      v166 = *(v115 + 64);
      v167 = *(v115 + 80);
      v168 = *v165;
      v169 = v165;
      v170 = v402;
      *v402 = v168;
      v171 = sub_1CF9E6448();
      v406 = *(v171 - 8);
      v172 = *(v406 + 4);
      v405 = *&v169[v167];
      v397 = v171;
      v172(&v170[v166], &v169[v166]);
      *&v170[v167] = v405;
      v173 = fpfs_current_or_default_log();
      v174 = v392;
      sub_1CF9E6128();
      v175 = *v129;
      (*v129)(v116, v387, v141);
      v176 = v141;
      v177 = v116;
      *&v405 = *v407;
      (v405)(v403, v170, v115);
      v178 = v391;
      v179 = sub_1CF9E6108();
      LOBYTE(v167) = sub_1CF9E7288();

      v395 = v179;
      LODWORD(v388) = v167;
      v180 = os_log_type_enabled(v179, v167);
      WitnessTable = v389 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v180)
      {
        v181 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        v373 = swift_slowAlloc();
        *&v413 = v373;
        *v181 = v360;
        *&v371 = v178;
        v182 = v370;
        v175(v370, v177, v176);
        v183 = *v376;
        (*v376)(v177, v176);
        v184 = sub_1CF9E7F98();
        v186 = v185;
        v183(v182, v176);
        v187 = sub_1CEFD0DF0(v184, v186, &v413);
        v186, v188, v189, v190, v191, v192, v193, v194;
        *(v181 + 4) = v187;
        *(v181 + 12) = 2080;
        v133 = v408;
        v195 = v403;
        (v405)(v408, v403, v409);
        v196 = *v133;
        v197 = *(v409 + 64);

        v134 = v397;
        (*(v406 + 1))(v133 + v197, v397);
        v132 = *v389;
        (*v389)(v195, v409);
        v198 = sub_1CF665B0C(v196, v366, v368, v369, v367);
        v200 = v199;
        sub_1CF5DE5B8(v196);
        v201 = v198;
        v115 = v409;
        v202 = sub_1CEFD0DF0(v201, v200, &v413);
        v200, v203, v204, v205, v206, v207, v208, v209;
        *(v181 + 14) = v202;
        *(v181 + 22) = 2112;
        v210 = v371;
        *(v181 + 24) = v371;
        v211 = v372;
        *v372 = v391;
        v212 = v210;
        v213 = v395;
        _os_log_impl(&dword_1CEFC7000, v395, v388, "propagation <fp:%s reason:%s> completed: %@", v181, 0x20u);
        sub_1CEFCCC44(v211, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v211, -1, -1);
        v214 = v373;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v214, -1, -1);
        MEMORY[0x1D386CDC0](v181, -1, -1);

        (*v375)(v392, v385);
      }

      else
      {
        v132 = *v389;
        (*v389)(v403, v115);
        (*v376)(v177, v176);

        (*v375)(v174, v385);
        v133 = v408;
        v134 = v397;
      }

      v135 = v402;
      (v405)(v133, v402, v115);
      sub_1CF5DE5B8(*v133);
      v136 = *(v115 + 64);
      v137 = *(v133 + *(v115 + 80));
      v138 = v382;
      *(&v414 + 1) = v382;
      v415 = v381;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v413);
      (*(*(v138 - 8) + 16))(boxed_opaque_existential_0, v380, v138);
      v137(&v413, v383);

      v132(v135, v115);
      sub_1CEFCCC44(&v413, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v406 + 1))(v133 + v136, v134);
      v116 = isa;
      v128 = v378;
      v129 = v390;
      v130 = v399;
    }
  }

  sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
  v126 = sub_1CF9E7598();
  v127 = *(v388 + 82);
  v115 = v409;
  v116 = isa;
  v391 = v126;
  if ((v127 & 0x20) == 0)
  {
    v114 = v382;
    goto LABEL_23;
  }

  v234 = swift_allocObject();
  v235 = v366;
  *(v234 + 2) = v368;
  *(v234 + 3) = v235;
  v236 = v367;
  *(v234 + 4) = v382;
  *(v234 + 5) = v236;
  v237 = v381;
  *(v234 + 6) = v369;
  *(v234 + 7) = v237;
  v238 = v358;
  v363 = v234;
  *(v234 + 8) = v358;
  swift_beginAccess();
  v372 = v67 + 1;
  WitnessTable = v365 + 16;
  v239 = *(v238 + 16);
  v373 = (v365 + 32);
  v404 = (v365 + 56);
  v403 = (v365 + 48);
  v380 = (v397 + 32);
  v397 = v374 + 16;
  v379 = (v365 + 8);
  v378 = (v374 + 8);
  v377 = v395 + 1;

  v240 = 0;
  *&v241 = 136315394;
  v371 = v241;
  v242 = v387;
  v383 = v239;
  v243 = v113;
  while (1)
  {
    if (v240 == sub_1CF9E6DF8())
    {
      v402 = v240;
      v245 = 1;
      v246 = v397;
    }

    else
    {
      v247 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v246 = v397;
      if (v247)
      {
        v248 = v239 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v240;
        v249 = v375;
        (*(v365 + 16))(v375, v248, v115);
      }

      else
      {
        v322 = sub_1CF9E7998();
        if (v357 != 8)
        {
          goto LABEL_75;
        }

        *&v410[0] = v322;
        v249 = v375;
        (*WitnessTable)(v375, v410, v115);
        swift_unknownObjectRelease();
      }

      (*v373)(v407, v249, v115);
      v146 = __OFADD__(v240, 1);
      v250 = (v240 + 1);
      if (v146)
      {
        goto LABEL_71;
      }

      v402 = v250;
      v245 = 0;
    }

    v251 = *v404;
    v252 = 1;
    v253 = v407;
    (*v404)(v407, v245, 1, v115);
    v254 = *v403;
    if ((*v403)(v253, 1, v115) != 1)
    {
      v255 = *(v115 + 64);
      v256 = *(v115 + 80);
      v257 = v407;
      v258 = *(v407 + 1);
      *&v400 = *v407;
      v395 = v258;
      v259 = sub_1CF9E6448();
      v260 = *(*(v259 - 8) + 32);
      v260(v408 + v255, &v257[v255], v259);
      v261 = swift_allocObject();
      *(v261 + 16) = *&v257[v256];
      v262 = *(v409 + 64);
      v263 = v401;
      v264 = &v401[*(v409 + 80)];
      v265 = v395;
      *v401 = v400;
      *(v263 + 1) = v265;
      v266 = v408 + v255;
      v246 = v397;
      v243 = v405;
      v260(&v263[v262], v266, v259);
      v115 = v409;
      v252 = 0;
      *v264 = sub_1CF5E14E0;
      v264[1] = v261;
      v242 = v387;
    }

    v267 = v401;
    v251(v401, v252, 1, v115);
    v268 = v390;
    (*v380)(v390, v267, v386);
    if (v254(v268, 1, v115) == 1)
    {
      break;
    }

    v276 = *(v115 + 64);
    v277 = *(v115 + 80);
    v278 = *v268;
    v279 = v268;
    v280 = v399;
    *v399 = v278;
    v281 = sub_1CF9E6448();
    isa = v281[-1].isa;
    v282 = *(isa + 4);
    v400 = *&v279[v277];
    v395 = v281;
    v282(&v280[v276], &v279[v276]);
    *&v280[v277] = v400;
    v283 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v284 = v115;
    v285 = *v246;
    v286 = v389;
    v287 = AssociatedTypeWitness;
    v285(v389, v242, AssociatedTypeWitness);
    v392 = *WitnessTable;
    (v392)(v243, v280, v284);
    v288 = sub_1CF9E6108();
    v289 = sub_1CF9E7288();
    *&v400 = v288;
    LODWORD(v393) = v289;
    if (os_log_type_enabled(v288, v289))
    {
      v290 = swift_slowAlloc();
      v376 = swift_slowAlloc();
      *&v410[0] = v376;
      *v290 = v371;
      v285(v370, v286, v287);
      v291 = v378->super.isa;
      (v378->super.isa)(v286, v287);
      v292 = sub_1CF9E7F98();
      v294 = v293;
      (v291)(v370, v287);
      v295 = v408;
      v296 = sub_1CEFD0DF0(v292, v294, v410);
      v294, v297, v298, v299, v300, v301, v302, v303;
      *(v290 + 4) = v296;
      *(v290 + 12) = 2080;
      v304 = v405;
      (v392)(v295, v405, v284);
      v305 = *v295;
      v306 = *(v284 + 64);

      (*(isa + 1))(v295 + v306, v395);
      v307 = *v379;
      (*v379)(v304, v284);
      v308 = sub_1CF665B0C(v305, v366, v368, v369, v367);
      v310 = v309;
      sub_1CF5DE5B8(v305);
      v311 = sub_1CEFD0DF0(v308, v310, v410);
      v310, v312, v313, v314, v315, v316, v317, v318;
      *(v290 + 14) = v311;
      v319 = v400;
      _os_log_impl(&dword_1CEFC7000, v400, v393, "propagation <fp:%s reason:%s> completed, waiting for flush", v290, 0x16u);
      v320 = v376;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v320, -1, -1);
      v321 = v290;
      v242 = v387;
      MEMORY[0x1D386CDC0](v321, -1, -1);

      (v377->isa)(v406, v385);
      v307(v399, v284);
      v115 = v284;
      v243 = v304;
    }

    else
    {
      v244 = *v379;
      v243 = v405;
      (*v379)(v405, v284);
      (v378->super.isa)(v286, v287);

      (v377->isa)(v406, v385);
      v244(v280, v284);
      v115 = v284;
    }

    v239 = v383;
    v240 = v402;
  }

  v383, v269, v270, v271, v272, v273, v274, v275;
  v323 = v374;
  v324 = v370;
  v325 = AssociatedTypeWitness;
  (*(v374 + 16))(v370, v242, AssociatedTypeWitness);
  v326 = (*(v323 + 80) + 72) & ~*(v323 + 80);
  v327 = (v362 + v326 + 7) & 0xFFFFFFFFFFFFFFF8;
  v328 = swift_allocObject();
  v329 = v366;
  *(v328 + 2) = v368;
  *(v328 + 3) = v329;
  v330 = v367;
  *(v328 + 4) = v382;
  *(v328 + 5) = v330;
  v331 = v381;
  *(v328 + 6) = v369;
  *(v328 + 7) = v331;
  *(v328 + 8) = v358;
  (*(v323 + 32))(&v328[v326], v324, v325);
  v332 = v388;
  *&v328[v327] = 0;
  v333 = *(*v332 + 456);
  v334 = 0;

  v333("itemDidPropagate(id:error:with:)", 32, 2, 1, 0, 0, sub_1CF5DEFA4, v363, sub_1CF5DEFF8, v328);

LABEL_40:
}

void sub_1CF5C36BC(uint64_t a1, int a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v180 = a7;
  v182 = a6;
  v176 = a5;
  v179 = a4;
  v187 = a3;
  LODWORD(v190) = a2;
  v10 = *v7;
  v175 = sub_1CF9E6118();
  v171 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v163 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10[79];
  v13 = v10[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v189 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v178 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v154 - v17;
  v18 = qword_1EC4EBD80;
  swift_beginAccess();
  v188 = v18;
  v19 = *(v8 + v18);

  v20 = v10[78];
  *&v21 = v13;
  *(&v21 + 1) = v20;
  v22 = v10[80];
  *&v23 = v12;
  *(&v23 + 1) = v22;
  v185 = v23;
  v193 = v21;
  v194 = v23;
  v186 = v21;
  *&v193 = type metadata accessor for UserRequest(255, &v193);
  *(&v193 + 1) = &type metadata for JobCode;
  *&v194 = &type metadata for NSecTimestamp;
  *(&v194 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 40);
  v181 = a1;
  v183 = v24;
  sub_1CF9E6728();
  v19, v25, v26, v27, v28, v29, v30, v31;
  if (*&v196[0])
  {
    v197 = *&v196[0];
    MEMORY[0x1EEE9AC00](*&v196[0]);
    v160 = v13;
    *(&v154 - 8) = v13;
    *(&v154 - 7) = v20;
    v159 = v20;
    *(&v154 - 6) = v182;
    *(&v154 - 5) = v32;
    v161 = v32;
    v158 = v22;
    v33 = v180;
    *(&v154 - 4) = v22;
    *(&v154 - 3) = v33;
    *(&v154 - 16) = v190;
    *(&v154 - 1) = v187;
    v173 = v34;

    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v36 = v155;
    sub_1CF9E6848();
    v155 = v36;
    v37 = v193;
    v38 = v189 + 16;
    v39 = *(v189 + 16);
    v39(v164, v181, AssociatedTypeWitness);
    if (v37 < 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v174 = v39;
    v184 = v38;
    v172 = v197;
    v170 = WitnessTable;
    *&v193 = sub_1CF9E6E98();
    *(&v193 + 1) = v40;
    *&v194 = v41;
    *(&v194 + 1) = v42;
    sub_1CF9E7778();
    swift_getWitnessTable();
    *&v196[0] = sub_1CF9E6E88();
    swift_beginAccess();
    v187 = AssociatedTypeWitness;
    v183 = sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    *&v196[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8, MEMORY[0x1E69E6D18]);
    sub_1CF9E6838();
    v196[0] = v193;
    v196[1] = v194;
    v43 = sub_1CF9E6E88();

    v172, v44, v45, v46, v47, v48, v49, v50;
    v51 = sub_1CF9E6DF8();
    v52 = v173;
    v53 = sub_1CF9E6DF8();
    v52, v54, v55, v56, v57, v58, v59, v60;
    if (v51 == v53)
    {
      v174(v164, v181, v187);
      *&v196[0] = 0;
      swift_beginAccess();
      sub_1CF9E6738();
      swift_endAccess();
    }

    v193 = v186;
    v194 = v185;
    type metadata accessor for Job(0, &v193);
    v61 = sub_1CF05194C(v190);
    v157 = (*(v61 + 176))();
    v63 = v62;
    v64 = v163;
    if (v179)
    {
      swift_getErrorValue();
      v65 = Error.prettyDescription.getter(v191, v192);
    }

    else
    {
      sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
      v65 = sub_1CF9E7598();
    }

    v66 = v65;
    v67 = v187;
    v68 = sub_1CF9E6DF8();
    v70 = v178;
    if (v68)
    {
      v183 = v66;
      v173 = v63;
      v71 = 0;
      v172 = (v189 + 8);
      ++v171;
      v169 = v182 - 8;
      v72 = v43 + 2;
      *&v69 = 136315906;
      v156 = v69;
      v170 = v43;
      while (1)
      {
        v78 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if ((v78 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(v71, 1))
        {
          goto LABEL_21;
        }

        v189 = v71 + 1;
        v190 = v71;
        isa = v72[-1].super.isa;
        v80 = v72->super.isa;
        v187 = *v72[-1].tester;
        *&v186 = v72;
        v188 = v80;
        swift_retain_n();
        sub_1CEFD09A0(isa);
        v81 = fpfs_current_or_default_log();
        v82 = v64;
        sub_1CF9E6128();
        v83 = v174;
        v174(v70, v181, v67);
        sub_1CEFD09A0(isa);
        sub_1CEFD09A0(isa);
        v84 = v173;

        v85 = v183;
        v86 = sub_1CF9E6108();
        v87 = sub_1CF9E7298();

        v84, v88, v89, v90, v91, v92, v93, v94;
        *&v185 = v86;
        v95 = os_log_type_enabled(v86, v87);
        v168 = v85;
        if (v95)
        {
          v96 = swift_slowAlloc();
          v166 = v87;
          v97 = v96;
          v165 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *&v193 = v167;
          *v97 = v156;
          *(v97 + 4) = sub_1CEFD0DF0(v157, v84, &v193);
          *(v97 + 12) = 2080;
          v98 = v164;
          v83(v164, v70, v67);
          v99 = v172->super.isa;
          (v172->super.isa)(v70, v67);
          v100 = sub_1CF9E7F98();
          v102 = v101;
          (v99)(v98, v67);
          v74 = v180;
          v103 = sub_1CEFD0DF0(v100, v102, &v193);
          v102, v104, v105, v106, v107, v108, v109, v110;
          *(v97 + 14) = v103;
          *(v97 + 22) = 2080;
          v111 = sub_1CF665B0C(isa, v160, v159, v161, v158);
          v113 = v112;
          sub_1CF5DE5B8(isa);
          sub_1CF5DE5B8(isa);
          v114 = sub_1CEFD0DF0(v111, v113, &v193);
          v75 = v182;
          v113, v115, v116, v117, v118, v119, v120, v121;
          *(v97 + 24) = v114;
          *(v97 + 32) = 2112;
          *(v97 + 34) = v85;
          v122 = v165;
          *v165 = v183;
          v123 = v85;
          v124 = v185;
          _os_log_impl(&dword_1CEFC7000, v185, v166, "%s <fs:%s reason:%s> completed: %@", v97, 0x2Au);
          sub_1CEFCCC44(v122, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v122, -1, -1);
          v125 = v167;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v125, -1, -1);
          MEMORY[0x1D386CDC0](v97, -1, -1);

          v64 = v163;
          (*v171)(v163, v175);
        }

        else
        {
          v73 = sub_1CF5DE5B8(isa);
          (v172->super.isa)(v70, v67, v73);
          sub_1CF5DE5B8(isa);

          (*v171)(v82, v175);
          v64 = v82;
          v74 = v180;
          v75 = v182;
        }

        *(&v194 + 1) = v75;
        v195 = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v193);
        (*(*(v75 - 8) + 16))(boxed_opaque_existential_0, v176, v75);
        *&v196[0] = v179;
        v187(&v193, v196);
        sub_1CF5DE5B8(isa);

        sub_1CEFCCC44(&v193, &unk_1EC4C1B30, &qword_1CFA05300);
        v43 = v170;
        v77 = sub_1CF9E6DF8();
        v71 = v190 + 1;
        v72 = (v186 + 40);
        v70 = v178;
        if (v189 == v77)
        {

          v43, v126, v127, v128, v129, v130, v131, v132;
          v63 = v173;
          goto LABEL_19;
        }
      }

      sub_1CF9E7998();
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v43, v140, v141, v142, v143, v144, v145, v146;
LABEL_19:
    v43, v133, v134, v135, v136, v137, v138, v139;
    v63, v147, v148, v149, v150, v151, v152, v153;
  }
}

void sub_1CF5C4484(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, void *a7)
{
  v12 = *a3;
  v13 = sub_1CF057B28();
  v15 = type metadata accessor for FileTreeChangeAggregator(0, *(v12 + 624), *(v12 + 640), v14);
  sub_1CF5B4444(a2, v13, a4, v15, a5, a6);

  if (v7)
  {
    *a7 = v7;
  }
}

void sub_1CF5C4560(void *a1, char a2, uint64_t a3)
{
  v82 = a1;
  v78 = *a3;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v78[79];
  v76 = v78[77];
  v77 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v67 - v11;
  v81 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 90) != (a2 & 1))
  {
    v71 = v6;
    v72 = v16;
    v70 = v7;
    v74 = a2 & 1;
    v73 = v3;
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72C8();
    v22 = os_log_type_enabled(v20, v21);
    v69 = AssociatedTypeWitness;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v23 = 136315138;
      if (a2)
      {
        v24 = 0xD000000000000019;
      }

      else
      {
        v24 = 0x676E696E6E7572;
      }

      if (a2)
      {
        v25 = 0x80000001CFA40CB0;
      }

      else
      {
        v25 = 0xE700000000000000;
      }

      v26 = sub_1CEFD0DF0(v24, v25, v83);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v23 + 4) = v26;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "changing scheduling state to %s", v23, 0xCu);
      v34 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v15 + 8))(v18, v72);
    v35 = v82;
    v36 = *(a3 + 56);
    ObjectType = swift_getObjectType();
    v38 = a3;
    v39 = v35;
    v40 = v35[3];
    v41 = v39[4];
    v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v43 = v74;
    *v13 = v74;
    swift_storeEnumTagMultiPayload();
    v44 = v73;
    (*(v36 + 8))(v13, v42, v40, v41, ObjectType, v36);
    sub_1CF043504(v13, type metadata accessor for SyncState);
    if (!v44)
    {
      sub_1CF5A5570(v43);
      v45 = v38;
      if (*(v38 + 90))
      {
        v46 = v82[3];
        v47 = v82[4];
        v48 = __swift_project_boxed_opaque_existential_1(v82, v46);
        (*(**(v38 + 24) + 616))(v48, v46, v47);
        sub_1CF5A603C();
LABEL_21:
        v65 = *(**(v45[4] + 16) + 928);

        v65(v43);

        v66 = *(**(v45[5] + 16) + 928);

        v66(v43);

        return;
      }

      sub_1CF5A6048();
      v49 = v82[3];
      v50 = v82[4];
      v51 = __swift_project_boxed_opaque_existential_1(v82, v49);
      v52 = v78[78];
      v53 = v78[80];
      v83[0] = v76;
      v83[1] = v52;
      v83[2] = v77;
      v83[3] = v53;
      type metadata accessor for Maintenance.UnpauseReconciliations(0, v83);
      v82 = v45;
      sub_1CF046AB4();
      v54 = v80;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v56 = v55;
      v57 = *(v70 + 8);
      v57(v54, v71);
      v58 = v56 * 1000000000.0;
      if (COERCE__INT64(fabs(v56 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v58 > -9.22337204e18)
      {
        v81 = v49;
        if (v58 < 9.22337204e18)
        {
          v59 = v79;
          v60 = sub_1CF559420();
          (*(v75 + 8))(v59, v69);
          v61 = v80;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v63 = v62;
          v57(v61, v71);
          v64 = v63 * 1000000000.0;
          if (COERCE__INT64(fabs(v63 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v64 > -9.22337204e18)
            {
              if (v64 < 9.22337204e18)
              {
                v45 = v82;
                sub_1CF5215C0(v60, v64, v51, v81, v50);

                v43 = v74;
                goto LABEL_21;
              }

LABEL_27:
              __break(1u);
              return;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_24;
    }
  }
}

uint64_t sub_1CF5C4D18()
{
  v1 = *v0;

  sub_1CEFF7124(*(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  *(v0 + 192), v2, v3, v4, v5, v6, v7, v8;
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v0 + 216, &qword_1EC4C1BF8, &unk_1CFA0CD70);

  sub_1CEFCCC44(v0 + qword_1EDEBBC18, &qword_1EC4BFB10, &unk_1CFA12AD0);
  *(v0 + qword_1EDEBBC70), v9, v10, v11, v12, v13, v14, v15;
  *(v0 + qword_1EC4EBD70), v16, v17, v18, v19, v20, v21, v22;
  *(v0 + qword_1EC4EBD78), v23, v24, v25, v26, v27, v28, v29;
  *(v0 + qword_1EDEBBC90), v30, v31, v32, v33, v34, v35, v36;
  *(v0 + qword_1EC4EBD80), v37, v38, v39, v40, v41, v42, v43;
  *(v0 + qword_1EDEBBCC0), v44, v45, v46, v47, v48, v49, v50;
  *(v0 + qword_1EDEBBCC8), v51, v52, v53, v54, v55, v56, v57;
  *(v0 + qword_1EDEBBD00), v58, v59, v60, v61, v62, v63, v64;
  *(v0 + qword_1EDEBBC60), v65, v66, v67, v68, v69, v70, v71;
  swift_unknownObjectRelease();
  type metadata accessor for FileTreeChangeAggregator(255, v1[77], v1[79], v72);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  sub_1CF9E5EB8();
  sub_1CF9E75C8();
  type metadata accessor for FileTreeChangeAggregator(255, v1[78], v1[80], v73);
  sub_1CF9E5EB8();
  sub_1CF9E75C8();

  *(v0 + qword_1EDEBBCD8), v74, v75, v76, v77, v78, v79, v80;

  sub_1CF043504(v0 + qword_1EDEBBC30, type metadata accessor for DBCounters);
  sub_1CEFF7124(*(v0 + qword_1EDEBBC78), *(v0 + qword_1EDEBBC78 + 8));

  v81 = *(v0 + qword_1EDEBBCF8);
  v82 = *(v0 + qword_1EDEBBCF8 + 8);

  return sub_1CEFF7124(v81, v82);
}

uint64_t sub_1CF5C50BC()
{
  sub_1CF59AF44();

  return swift_deallocClassInstance();
}

void sub_1CF5C5128(uint64_t a1)
{
  if (!qword_1EDEACDB0)
  {
    type metadata accessor for TelemetrySignposter(255);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEACDB0);
    }
  }
}

uint64_t type metadata accessor for DBCounters(uint64_t a1)
{
  result = qword_1EDEAEA38;
  if (!qword_1EDEAEA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF5C51E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1CF5C523C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF5C5284(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CF5C52DC(uint64_t a1)
{
  v10 = 0;
  v13 = &type metadata for MaterializationStatus;
  result = sub_1CF9E6448();
  if (v3 <= 0x3F)
  {
    v11 = 0;
    v14 = result;
    v4 = *(a1 + 32);
    v7 = *(a1 + 16);
    v8 = v4;
    v5 = result;
    *&v7 = type metadata accessor for UserRequest(255, &v7);
    *(&v7 + 1) = &type metadata for MaterializationRequestOptions;
    *&v8 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    *(&v8 + 1) = v5;
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    result = sub_1CF9E6708();
    if (v6 <= 0x3F)
    {
      v12 = 0;
      v15 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF5C547C(uint64_t a1)
{
  result = sub_1CF9E5CF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamResetReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StreamResetReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CF5C5558(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF5C5574(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1CF5C55A8()
{
  result = qword_1EC4C19E0;
  if (!qword_1EC4C19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19E0);
  }

  return result;
}

unint64_t sub_1CF5C5600()
{
  result = qword_1EC4C19E8;
  if (!qword_1EC4C19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19E8);
  }

  return result;
}

unint64_t sub_1CF5C5658()
{
  result = qword_1EC4C19F0;
  if (!qword_1EC4C19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19F0);
  }

  return result;
}

unint64_t sub_1CF5C56F4()
{
  result = qword_1EC4C1A08;
  if (!qword_1EC4C1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A08);
  }

  return result;
}

unint64_t sub_1CF5C574C()
{
  result = qword_1EC4C1A10;
  if (!qword_1EC4C1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A10);
  }

  return result;
}

unint64_t sub_1CF5C57CC()
{
  result = qword_1EC4C1A20;
  if (!qword_1EC4C1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A20);
  }

  return result;
}

unint64_t sub_1CF5C5820()
{
  result = qword_1EC4C1A28;
  if (!qword_1EC4C1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A28);
  }

  return result;
}

unint64_t sub_1CF5C5878()
{
  result = qword_1EC4C1A30;
  if (!qword_1EC4C1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A30);
  }

  return result;
}

unint64_t sub_1CF5C58D0()
{
  result = qword_1EC4C1A38;
  if (!qword_1EC4C1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A38);
  }

  return result;
}

unint64_t sub_1CF5C596C()
{
  result = qword_1EC4C1A50;
  if (!qword_1EC4C1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A50);
  }

  return result;
}

unint64_t sub_1CF5C59C4()
{
  result = qword_1EC4C1A58;
  if (!qword_1EC4C1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A58);
  }

  return result;
}

uint64_t sub_1CF5C5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF5C5A80()
{
  result = qword_1EC4C1A60;
  if (!qword_1EC4C1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A60);
  }

  return result;
}

unint64_t sub_1CF5C5AD4()
{
  result = qword_1EC4C1A68;
  if (!qword_1EC4C1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A68);
  }

  return result;
}

void sub_1CF5C5B28(NSObject *a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v220 = a3;
  v221 = a4;
  v226 = a1;
  v213 = a6;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 104);
  v11 = *(*a2 + 96);
  v222 = *(*a2 + 88);
  v8 = v222;
  p_isa = v9;
  v224 = v10;
  v225 = v11;
  v205 = type metadata accessor for ItemReconciliation(0, &v222);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v203 = &v197 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  isa = AssociatedTypeWitness[-1].isa;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v202 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v207 = &v197 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v208 = &v197 - v17;
  v18 = sub_1CF9E6118();
  v210 = *(v18 - 8);
  v211 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v206 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v197 - v21;
  v217 = v11;
  v218 = v9;
  v222 = v9;
  p_isa = &v8->isa;
  v215 = v10;
  v216 = v8;
  v224 = v11;
  v225 = v10;
  v22 = type metadata accessor for ItemReconciliation(255, &v222);
  v23 = sub_1CF9E75D8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v197 - v25;
  v27 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v197 - v29;
  v201 = a5;
  v31 = *(a5 + 8);
  v32 = v219;
  sub_1CF68DDB0(v226, v220, v221, v31, v26);
  if (!v32)
  {
    v33 = v24;
    v198 = v31;
    v199 = v30;
    v34 = v27;
    v36 = v217;
    v35 = v218;
    v219 = 0;
    if ((*(v34 + 48))(v26, 1, v22) == 1)
    {
      (*(v33 + 8))(v26, v23);
      v210 = 0;
      LODWORD(v212) = 1;
      v37 = v35;
      v38 = v36;
      v39 = v216;
LABEL_4:
      v40 = a2[3];
      v222 = v37;
      p_isa = &v39->isa;
      v41 = v215;
      v224 = v38;
      v225 = v215;
      v211 = type metadata accessor for ItemJob(255, &v222);
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v43 = sub_1CF9E6D68();
      v222 = v37;
      p_isa = &v39->isa;
      v224 = v38;
      v225 = v41;
      *v44 = type metadata accessor for Ingestion.FetchItemMetadata(0, &v222);
      v45 = sub_1CF045898(v43, MetatypeMetadata);
      v46 = *(*v40 + 312);
      v47 = v226;
      v48 = v220;
      v49 = v198;
      v50 = v219;
      v219 = *v40 + 312;
      AssociatedTypeWitness = v46;
      v51 = (v46)(v226, v45, v220, v221, v198);
      v45, v52, v53, v54, v55, v56, v57, v58;
      if (v50)
      {
        return;
      }

      isa = v51;
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v59 = sub_1CF9E6D68();
      v60 = v41;
      v222 = v218;
      p_isa = &v216->isa;
      v224 = v217;
      v225 = v41;
      *v61 = type metadata accessor for Ingestion.FetchContent(0, &v222);
      v62 = v221;
      v63 = sub_1CF045898(v59, MetatypeMetadata);
      v226 = (AssociatedTypeWitness)(v47, v63, v48, v62, v49);
      v63, v127, v128, v129, v130, v131, v132, v133;
      v208 = &v197;
      v134 = isa;
      v222 = isa;
      MEMORY[0x1EEE9AC00](v135);
      v136 = v200;
      v137 = *(v200 + 624);
      v219 = *(v200 + 616);
      v220 = v137;
      *(&v197 - 10) = v219;
      *(&v197 - 9) = v137;
      v138 = v217;
      v139 = v216;
      *(&v197 - 8) = v218;
      *(&v197 - 7) = v139;
      AssociatedTypeWitness = *(v136 + 632);
      v140 = AssociatedTypeWitness;
      *(&v197 - 6) = v62;
      *(&v197 - 5) = v140;
      v141 = v60;
      v142 = *(v136 + 640);
      *(&v197 - 4) = v142;
      *(&v197 - 3) = v138;
      v143 = v201;
      *(&v197 - 2) = v141;
      *(&v197 - 1) = v143;
      v144 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      v147 = sub_1CF054A5C(sub_1CF5E1540, (&v197 - 12), v144, &type metadata for NSecTimestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v146);
      v134, v148, v149, v150, v151, v152, v153, v154;
      v155 = sub_1CF409C5C(v147);
      LODWORD(v211) = v156;
      v147, v156, v157, v158, v159, v160, v161, v162;
      isa = &v197;
      v163 = v226;
      v222 = v226;
      MEMORY[0x1EEE9AC00](v164);
      v165 = v220;
      *(&v197 - 10) = v219;
      *(&v197 - 9) = v165;
      v166 = v216;
      *(&v197 - 8) = v218;
      *(&v197 - 7) = v166;
      v168 = AssociatedTypeWitness;
      v167 = v215;
      *(&v197 - 6) = v221;
      *(&v197 - 5) = v168;
      *(&v197 - 4) = v142;
      *(&v197 - 3) = v138;
      *(&v197 - 2) = v167;
      *(&v197 - 1) = v143;
      v170 = sub_1CF054A5C(sub_1CF5DEE24, (&v197 - 12), v144, &type metadata for NSecTimestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v169);
      v163, v171, v172, v173, v174, v175, v176, v177;
      v178 = sub_1CF409C5C(v170);
      v180 = v179;
      v170, v179, v181, v182, v183, v184, v185, v186;
      if (v212)
      {
        v187 = v213;
        if (v211)
        {
          if (v180)
          {
            v155 = v178;
          }

          else
          {
            v155 = 0;
          }

          v188 = 1;
          v189 = 1;
          v190 = v178;
          goto LABEL_39;
        }

        if (v180)
        {
          v189 = 0;
          v180 = 0;
          v188 = 1;
          v190 = v155;
          goto LABEL_39;
        }

        v190 = v155;
LABEL_59:
        v189 = 0;
        v180 = 0;
        if (v178 < v190)
        {
          v190 = v178;
        }

        v188 = 1;
        goto LABEL_39;
      }

      v187 = v213;
      if ((v211 & 1) == 0)
      {
        v189 = 0;
        if (v155 >= v210)
        {
          v155 = v210;
        }

        if (v178 >= v155)
        {
          v196 = v155;
        }

        else
        {
          v196 = v178;
        }

        if (v180)
        {
          v190 = v155;
        }

        else
        {
          v190 = v196;
        }

        v188 = 1;
        v180 = 0;
        goto LABEL_39;
      }

      v190 = v210;
      if ((v180 & 1) == 0)
      {
        v155 = v210;
        goto LABEL_59;
      }

      v189 = 0;
      v180 = 0;
      v188 = 1;
      v155 = v210;
LABEL_39:
      *v187 = v188;
      *(v187 + 8) = v155;
      *(v187 + 16) = v189;
      *(v187 + 24) = v190;
      *(v187 + 32) = v180 & 1;
      return;
    }

    v197 = v34;
    v64 = v199;
    (*(v34 + 32))(v199, v26, v22);
    v38 = v36;
    v66 = type metadata accessor for ItemReconciliationHalf(0, v35, v36, v65);
    if (v64[*(v66 + 64) + 16] == 2)
    {
      v67 = fpfs_current_or_default_log();
      v68 = v212;
      sub_1CF9E6128();
      v70 = v208;
      v69 = isa;
      v71 = AssociatedTypeWitness;
      v220 = isa[2].isa;
      v220(v208, v226, AssociatedTypeWitness);
      v72 = sub_1CF9E6108();
      LODWORD(v221) = sub_1CF9E7298();
      v226 = v72;
      if (os_log_type_enabled(v72, v221))
      {
        v73 = swift_slowAlloc();
        v215 = v73;
        v216 = swift_slowAlloc();
        v222 = v216;
        *v73 = 136315138;
        v74 = v70;
        v75 = v207;
        v220(v207, v74, v71);
        v76 = v69[1].isa;
        v76(v74, v71);
        swift_getAssociatedConformanceWitness();
        v77 = v22;
        v78 = sub_1CF9E7F98();
        v80 = v79;
        v76(v75, v71);
        v81 = sub_1CEFD0DF0(v78, v80, &v222);
        v80, v82, v83, v84, v85, v86, v87, v88;
        v89 = v215;
        *(v215 + 1) = v81;
        v22 = v77;
        v90 = v226;
        v91 = v89;
        _os_log_impl(&dword_1CEFC7000, v226, v221, "%s did not propagate: propagating is still in progress", v89, 0xCu);
        v92 = v216;
        __swift_destroy_boxed_opaque_existential_1(v216);
        MEMORY[0x1D386CDC0](v92, -1, -1);
        MEMORY[0x1D386CDC0](v91, -1, -1);

        (*(v210 + 8))(v212, v211);
      }

      else
      {
        (v69[1].isa)(v70, v71);

        (*(v210 + 8))(v68, v211);
      }

      (*(v197 + 8))(v199, v22);
    }

    else
    {
      v93 = v66;
      v94 = v64;
      v95 = AssociatedTypeWitness;
      if (*&v64[*(v66 + 36)] && !sub_1CF07CD80(v22))
      {
        (*(v197 + 8))(v64, v22);
        v155 = 0;
        v190 = 0;
        v188 = 1;
LABEL_38:
        v189 = 1;
        v180 = 1;
        v187 = v213;
        goto LABEL_39;
      }

      if (sub_1CF07CD80(v22))
      {
        v96 = v22;
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v97 = qword_1EDEABDE8;
        v98 = qword_1EDEABDE8 | 0x10;
        if (sub_1CF056558() || (*&v97 & 0x10000) == 0)
        {
          v99 = v98;
        }

        else
        {
          v99 = v98 & 0xFFFFFFFFFFFEFFFFLL;
        }

        AssociatedTypeWitness = v99;
        if (sub_1CF056558())
        {
          v101 = (*&v64[*(v93 + 76)] & 4) != 0 && (*&v64[*(v93 + 76)] & 0x30) == 0;
        }

        else
        {
          v191 = &v64[*(v96 + 52)];
          v101 = (v191[*(type metadata accessor for ItemReconciliationHalf(0, v216, v215, v100) + 76)] >> 2) & 1;
        }

        LODWORD(v212) = v101;
        v192 = v203;
        sub_1CF07EE34(v96, v100, v203);
        v193 = v205;
        v194 = sub_1CF07F1A0(v205);
        (*(v204 + 8))(v192, v193);
        v222 = AssociatedTypeWitness;
        v195 = sub_1CF959458(&v222, (v194 | v212) & 1, v93);
        if (v195)
        {
          v210 = *&v64[*(v96 + 64) + 8];
        }

        else
        {
          v210 = 0;
        }

        v39 = v216;
        v37 = v218;
        LODWORD(v212) = !v195;
        (*(v197 + 8))(v64, v96);
        goto LABEL_4;
      }

      v221 = v22;
      v102 = fpfs_current_or_default_log();
      v103 = v206;
      sub_1CF9E6128();
      v104 = v95;
      v105 = isa;
      v106 = v202;
      v220 = isa[2].isa;
      v220(v202, v226, v104);
      v107 = sub_1CF9E6108();
      v108 = sub_1CF9E7298();
      v226 = v107;
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        LODWORD(v215) = v108;
        v216 = v110;
        v222 = v110;
        *v109 = 136315138;
        v111 = v207;
        v220(v207, v106, v104);
        v112 = v105[1].isa;
        v112(v106, v104);
        swift_getAssociatedConformanceWitness();
        v113 = sub_1CF9E7F98();
        v115 = v114;
        v112(v111, v104);
        v116 = sub_1CEFD0DF0(v113, v115, &v222);
        v117 = v115;
        v94 = v199;
        v117, v118, v119, v120, v121, v122, v123, v124;
        *(v109 + 4) = v116;
        v125 = v226;
        _os_log_impl(&dword_1CEFC7000, v226, v215, "%s did not propagate: item is not bound", v109, 0xCu);
        v126 = v216;
        __swift_destroy_boxed_opaque_existential_1(v216);
        MEMORY[0x1D386CDC0](v126, -1, -1);
        MEMORY[0x1D386CDC0](v109, -1, -1);

        (*(v210 + 8))(v206, v211);
      }

      else
      {
        (v105[1].isa)(v106, v104);

        (*(v210 + 8))(v103, v211);
      }

      (*(v197 + 8))(v94, v221);
    }

    v188 = 0;
    v155 = 0;
    v190 = 0;
    goto LABEL_38;
  }
}

BOOL sub_1CF5C6A9C(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a3;
  v26 = a7;
  v27 = a6;
  v24 = type metadata accessor for UserRequest(255, &v24);
  v25 = &type metadata for NSecTimestamp;
  v26 = sub_1CF9E6448();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  (*(v10 + 16))(&v24 - v15, a1, TupleTypeMetadata, v14);
  v17 = *(TupleTypeMetadata + 64);
  v18 = *(TupleTypeMetadata + 80);
  v19 = *(v16 + 1);
  *v12 = *v16;
  *(v12 + 1) = v19;
  v20 = sub_1CF9E6448();
  (*(*(v20 - 8) + 32))(&v12[v17], &v16[v17], v20);
  v21 = &v12[*(TupleTypeMetadata + 80)];
  v22 = swift_allocObject();
  *(v22 + 16) = *&v16[v18];
  *v21 = sub_1CF5E14E0;
  v21[1] = v22;
  (*(v10 + 8))(v12, TupleTypeMetadata);
  return v19 < a2;
}

void sub_1CF5C6CA0(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a4;
  v81 = a2;
  v80 = a1;
  v86 = a5;
  v96 = a5;
  v97 = a4;
  v98 = a8;
  v99 = a7;
  v96 = type metadata accessor for UserRequest(255, &v96);
  v97 = &type metadata for NSecTimestamp;
  v87 = sub_1CF9E6448();
  v98 = v87;
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v13 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v79 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v88 = (&v69 - v16);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v69 - v19;
  v85 = sub_1CF9E75D8();
  v20 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v95 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v69 - v25;
  swift_beginAccess();
  v89 = (v13 + 16);
  v74 = (v13 + 32);
  v26 = *(a3 + 16);
  v93 = (v13 + 48);
  v94 = (v13 + 56);
  v82 = (v20 + 32);
  v70 = v13;
  v78 = (v13 + 8);

  v27 = 0;
  v83 = v26;
  v73 = v8;
  v72 = v9;
  v71 = v10;
  while (1)
  {
    v96 = v86;
    v97 = v10;
    v98 = v8;
    v99 = v9;
    v96 = type metadata accessor for UserRequest(255, &v96);
    v97 = &type metadata for NSecTimestamp;
    v98 = v87;
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v27 == sub_1CF9E6DF8())
    {
      v92 = v27;
      v28 = 1;
      goto LABEL_8;
    }

    v29 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v29)
    {
      v30 = v26 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v27;
      v31 = v75;
      (*(v70 + 16))(v75, v30, TupleTypeMetadata);
    }

    else
    {
      v68 = sub_1CF9E7998();
      if (v69 != 8)
      {
        goto LABEL_16;
      }

      v96 = v68;
      v31 = v75;
      (*v89)(v75, &v96, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    (*v74)(v95, v31, TupleTypeMetadata);
    v32 = __OFADD__(v27, 1);
    v33 = v27 + 1;
    if (v32)
    {
      break;
    }

    v92 = v33;
    v28 = 0;
LABEL_8:
    v34 = v95;
    v35 = *v94;
    v36 = 1;
    (*v94)(v95, v28, 1, TupleTypeMetadata);
    v37 = *v93;
    if ((*v93)(v34, 1, TupleTypeMetadata) != 1)
    {
      v38 = *(TupleTypeMetadata + 64);
      v76 = *(TupleTypeMetadata + 80);
      v39 = v95;
      v40 = v95[1];
      *&v91 = *v95;
      v77 = v40;
      v41 = sub_1CF9E6448();
      v42 = *(*(v41 - 8) + 32);
      v43 = v88;
      v42(v88 + v38, &v39[v38], v41);
      v44 = swift_allocObject();
      *(v44 + 16) = *&v39[v76];
      v45 = *(TupleTypeMetadata + 64);
      v46 = v90;
      v47 = &v90[*(TupleTypeMetadata + 80)];
      v48 = v77;
      *v90 = v91;
      *(v46 + 1) = v48;
      v49 = v43 + v38;
      v9 = v72;
      v42(&v46[v45], v49, v41);
      v10 = v71;
      v36 = 0;
      *v47 = sub_1CF5E14E0;
      v47[1] = v44;
      v8 = v73;
    }

    v50 = v90;
    v35(v90, v36, 1, TupleTypeMetadata);
    v51 = v84;
    (*v82)(v84, v50, v85);
    if (v37(v51, 1, TupleTypeMetadata) == 1)
    {
      v83, v52, v53, v54, v55, v56, v57, v58;
      return;
    }

    v59 = *(TupleTypeMetadata + 64);
    v60 = *(TupleTypeMetadata + 80);
    v61 = v88;
    *v88 = *v51;
    v62 = sub_1CF9E6448();
    v63 = *(v62 - 8);
    v64 = *(v63 + 32);
    v91 = *&v51[v60];
    v64(&v61[v59], &v51[v59], v62);
    *&v61[v60] = v91;
    v65 = v79;
    (*v89)(v79, v61, TupleTypeMetadata);
    v66 = sub_1CF5DE5B8(*v65);
    v67 = *(TupleTypeMetadata + 64);
    (*(v65 + *(TupleTypeMetadata + 80)))(v80, v81, v66);

    (*v78)(v61, TupleTypeMetadata);
    (*(v63 + 8))(v65 + v67, v62);
    v26 = v83;
    v27 = v92;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1CF5C73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v140 = a4;
  v139 = a3;
  v138 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v125 = v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v136 = v122 - v16;
  v134 = sub_1CF9E6118();
  v17 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v19 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = a6;
  v164 = a6;
  v165 = a5;
  v150 = a5;
  v156 = a9;
  v166 = a9;
  v167 = a8;
  v151 = a8;
  v164 = type metadata accessor for UserRequest(255, &v164);
  v165 = &type metadata for NSecTimestamp;
  v146 = sub_1CF9E6448();
  v166 = v146;
  v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v153 = v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = v122 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v122 - v26;
  v122[0] = v28;
  MEMORY[0x1EEE9AC00](v29);
  v128 = v122 - v30;
  v145 = sub_1CF9E75D8();
  v31 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v160 = (v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v152 = v122 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v144 = v122 - v36;
  swift_beginAccess();
  v124 = v27 + 8;
  v168 = (v21 + 16);
  v37 = *(a2 + 16);
  v127 = (v21 + 32);
  v158 = (v21 + 48);
  v159 = (v21 + 56);
  v142 = (v31 + 32);
  v135 = (v13 + 16);
  v126 = v21;
  v148 = (v21 + 8);
  v133 = (v13 + 8);
  v132 = (v17 + 8);

  v38 = 0;
  *&v39 = 136315394;
  v123 = v39;
  v141 = v19;
  v143 = v37;
  v149 = v27;
  while (1)
  {
    v164 = v157;
    v165 = v150;
    v166 = v156;
    v167 = v151;
    v164 = type metadata accessor for UserRequest(255, &v164);
    v165 = &type metadata for NSecTimestamp;
    v166 = v146;
    v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v38 == sub_1CF9E6DF8())
    {
      v154 = v38;
      v45 = 1;
      v46 = v153;
      goto LABEL_10;
    }

    v47 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    v46 = v153;
    if (v47)
    {
      v48 = v128;
      (*(v126 + 16))(v128, v37 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v38, TupleTypeMetadata);
    }

    else
    {
      v121 = sub_1CF9E7998();
      if (v122[0] != 8)
      {
        goto LABEL_19;
      }

      v164 = v121;
      v48 = v128;
      (*v168)(v128, &v164, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    (*v127)(v160, v48, TupleTypeMetadata);
    v49 = __OFADD__(v38, 1);
    v50 = v38 + 1;
    if (v49)
    {
      break;
    }

    v154 = v50;
    v45 = 0;
LABEL_10:
    v51 = v160;
    v52 = *v159;
    v53 = 1;
    (*v159)(v160, v45, 1, TupleTypeMetadata);
    v54 = *v158;
    if ((*v158)(v51, 1, TupleTypeMetadata) != 1)
    {
      v55 = *(TupleTypeMetadata + 64);
      v147 = *(TupleTypeMetadata + 80);
      v163 = v54;
      v56 = v160;
      v57 = v160[1];
      v162 = *v160;
      *&v161 = v57;
      v58 = sub_1CF9E6448();
      v59 = *(*(v58 - 8) + 32);
      v60 = v149;
      v59(v149 + v55, &v56[v55], v58);
      v61 = swift_allocObject();
      *(v61 + 16) = *&v56[v147];
      v62 = *(TupleTypeMetadata + 64);
      v63 = v152;
      v64 = &v152[*(TupleTypeMetadata + 80)];
      v65 = v161;
      *v152 = v162;
      *(v63 + 1) = v65;
      v66 = v60 + v55;
      v46 = v153;
      v59(&v63[v62], v66, v58);
      v19 = v141;
      v53 = 0;
      *v64 = sub_1CF5E14E0;
      v64[1] = v61;
      v54 = v163;
    }

    v67 = v152;
    v52(v152, v53, 1, TupleTypeMetadata);
    v68 = v144;
    (*v142)(v144, v67, v145);
    if (v54(v68, 1, TupleTypeMetadata) == 1)
    {
      v143, v69, v70, v71, v72, v73, v74, v75;
      return;
    }

    v76 = *(TupleTypeMetadata + 64);
    v77 = *(TupleTypeMetadata + 80);
    v78 = v155;
    *v155 = *v68;
    v79 = sub_1CF9E6448();
    v162 = *(v79 - 8);
    v163 = v79;
    v80 = *(v162 + 32);
    v161 = *&v68[v77];
    v80(&v78[v76], &v68[v76]);
    *&v78[v77] = v161;
    v81 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v82 = *v135;
    v83 = v136;
    v84 = AssociatedTypeWitness;
    (*v135)(v136, v139, AssociatedTypeWitness);
    *&v161 = *v168;
    (v161)(v46, v78, TupleTypeMetadata);
    v85 = sub_1CF9E6108();
    v86 = sub_1CF9E7288();
    LODWORD(v147) = v86;
    v87 = os_log_type_enabled(v85, v86);
    v88 = v148 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v87)
    {
      v89 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v164 = v130;
      *v89 = v123;
      v129 = v85;
      v90 = v125;
      v82(v125, v83, v84);
      v91 = *v133;
      (*v133)(v83, v84);
      swift_getAssociatedConformanceWitness();
      v92 = sub_1CF9E7F98();
      v131 = v88;
      v93 = v46;
      v94 = v92;
      v96 = v95;
      v91(v90, v84);
      v97 = sub_1CEFD0DF0(v94, v96, &v164);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v89 + 4) = v97;
      *(v89 + 12) = 2080;
      v41 = v149;
      (v161)(v149, v93, TupleTypeMetadata);
      v105 = *v41;
      v106 = *(TupleTypeMetadata + 64);

      (*(v162 + 8))(v41 + v106, v163);
      v40 = *v148;
      (*v148)(v93, TupleTypeMetadata);
      v107 = sub_1CF665B0C(v105, v157, v150, v156, v151);
      v109 = v108;
      sub_1CF5DE5B8(v105);
      v110 = sub_1CEFD0DF0(v107, v109, &v164);
      v109, v111, v112, v113, v114, v115, v116, v117;
      *(v89 + 14) = v110;
      v118 = v129;
      _os_log_impl(&dword_1CEFC7000, v129, v147, "propagation <fp:%s reason:%s> completed and flushed", v89, 0x16u);
      v119 = v130;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v119, -1, -1);
      v120 = v89;
      v19 = v141;
      MEMORY[0x1D386CDC0](v120, -1, -1);

      (*v132)(v19, v134);
    }

    else
    {
      v40 = *v148;
      (*v148)(v46, TupleTypeMetadata);
      (*v133)(v83, v84);

      (*v132)(v19, v134);
      v41 = v149;
    }

    v42 = v155;
    (v161)(v41, v155, TupleTypeMetadata);
    sub_1CF5DE5B8(*v41);
    v43 = *(TupleTypeMetadata + 64);
    v44 = *(v41 + *(TupleTypeMetadata + 80));
    sub_1CF1A91AC(v138, &v164);
    v44(&v164, v140);

    sub_1CEFCCC44(&v164, &unk_1EC4C1B30, &qword_1CFA05300);
    v40(v42, TupleTypeMetadata);
    (*(v162 + 8))(v41 + v43, v163);
    v37 = v143;
    v38 = v154;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1CF5C8094(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *(a2 + 8);
  v32 = a3;
  v30 = *(a2 + 16);
  v29 = *(a2 + 24);
  v8 = *(a2 + 32);
  v33 = a4;
  v34 = a6;
  v35 = a7;
  v32 = type metadata accessor for UserRequest(255, &v32);
  v33 = &type metadata for NSecTimestamp;
  v34 = sub_1CF9E6448();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  (*(v10 + 16))(&v28 - v15, a1, TupleTypeMetadata, v14);
  v17 = *(TupleTypeMetadata + 64);
  v18 = *(TupleTypeMetadata + 80);
  v19 = *v16;
  v20 = *(v16 + 1);
  *v12 = *v16;
  *(v12 + 1) = v20;
  v21 = sub_1CF9E6448();
  (*(*(v21 - 8) + 32))(&v12[v17], &v16[v17], v21);
  v22 = &v12[*(TupleTypeMetadata + 80)];
  v23 = swift_allocObject();
  *(v23 + 16) = *&v16[v18];
  *v22 = sub_1CF5E14E0;
  v22[1] = v23;
  v24 = v31;
  if (((v19 >> 58) & 0x3C | (v19 >> 1) & 3) == 0x2A)
  {
    v24 = v29;
  }

  v25 = v30;
  if (((v19 >> 58) & 0x3C | (v19 >> 1) & 3) == 0x2A)
  {
    v25 = v8;
  }

  v26 = v25 | (v20 < v24);
  (*(v10 + 8))(v12, TupleTypeMetadata);
  return v26 & 1;
}

void sub_1CF5C82DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a4;
  v81 = a2;
  v80 = a1;
  v96 = a4;
  v97 = a5;
  v86 = a5;
  v98 = a7;
  v99 = a8;
  v96 = type metadata accessor for UserRequest(255, &v96);
  v97 = &type metadata for NSecTimestamp;
  v87 = sub_1CF9E6448();
  v98 = v87;
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v13 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v79 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v88 = (&v69 - v16);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v69 - v19;
  v85 = sub_1CF9E75D8();
  v20 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v95 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v69 - v25;
  swift_beginAccess();
  v89 = (v13 + 16);
  v74 = (v13 + 32);
  v26 = *(a3 + 16);
  v93 = (v13 + 48);
  v94 = (v13 + 56);
  v82 = (v20 + 32);
  v70 = v13;
  v78 = (v13 + 8);

  v27 = 0;
  v83 = v26;
  v73 = v8;
  v72 = v9;
  v71 = v10;
  while (1)
  {
    v96 = v10;
    v97 = v86;
    v98 = v9;
    v99 = v8;
    v96 = type metadata accessor for UserRequest(255, &v96);
    v97 = &type metadata for NSecTimestamp;
    v98 = v87;
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v27 == sub_1CF9E6DF8())
    {
      v92 = v27;
      v28 = 1;
      goto LABEL_8;
    }

    v29 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v29)
    {
      v30 = v26 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v27;
      v31 = v75;
      (*(v70 + 16))(v75, v30, TupleTypeMetadata);
    }

    else
    {
      v68 = sub_1CF9E7998();
      if (v69 != 8)
      {
        goto LABEL_16;
      }

      v96 = v68;
      v31 = v75;
      (*v89)(v75, &v96, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    (*v74)(v95, v31, TupleTypeMetadata);
    v32 = __OFADD__(v27, 1);
    v33 = v27 + 1;
    if (v32)
    {
      break;
    }

    v92 = v33;
    v28 = 0;
LABEL_8:
    v34 = v95;
    v35 = *v94;
    v36 = 1;
    (*v94)(v95, v28, 1, TupleTypeMetadata);
    v37 = *v93;
    if ((*v93)(v34, 1, TupleTypeMetadata) != 1)
    {
      v38 = *(TupleTypeMetadata + 64);
      v76 = *(TupleTypeMetadata + 80);
      v39 = v95;
      v40 = v95[1];
      *&v91 = *v95;
      v77 = v40;
      v41 = sub_1CF9E6448();
      v42 = *(*(v41 - 8) + 32);
      v43 = v88;
      v42(v88 + v38, &v39[v38], v41);
      v44 = swift_allocObject();
      *(v44 + 16) = *&v39[v76];
      v45 = *(TupleTypeMetadata + 64);
      v46 = v90;
      v47 = &v90[*(TupleTypeMetadata + 80)];
      v48 = v77;
      *v90 = v91;
      *(v46 + 1) = v48;
      v49 = v43 + v38;
      v9 = v72;
      v42(&v46[v45], v49, v41);
      v10 = v71;
      v36 = 0;
      *v47 = sub_1CF5E14E0;
      v47[1] = v44;
      v8 = v73;
    }

    v50 = v90;
    v35(v90, v36, 1, TupleTypeMetadata);
    v51 = v84;
    (*v82)(v84, v50, v85);
    if (v37(v51, 1, TupleTypeMetadata) == 1)
    {
      v83, v52, v53, v54, v55, v56, v57, v58;
      return;
    }

    v59 = *(TupleTypeMetadata + 64);
    v60 = *(TupleTypeMetadata + 80);
    v61 = v88;
    *v88 = *v51;
    v62 = sub_1CF9E6448();
    v63 = *(v62 - 8);
    v64 = *(v63 + 32);
    v91 = *&v51[v60];
    v64(&v61[v59], &v51[v59], v62);
    *&v61[v60] = v91;
    v65 = v79;
    (*v89)(v79, v61, TupleTypeMetadata);
    v66 = sub_1CF5DE5B8(*v65);
    v67 = *(TupleTypeMetadata + 64);
    (*(v65 + *(TupleTypeMetadata + 80)))(v80, v81, v66);

    (*v78)(v61, TupleTypeMetadata);
    (*(v63 + 8))(v65 + v67, v62);
    v26 = v83;
    v27 = v92;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1CF5C8A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ValueMetadata *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v135 = a4;
  v134 = a3;
  v133 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v124 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v132 = v121 - v17;
  v131 = sub_1CF9E6118();
  v18 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v143 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = a5;
  v161 = a5;
  v162 = a6;
  v147 = a6;
  v154 = a8;
  v163 = a8;
  v164 = a9;
  v146 = a9;
  v161 = type metadata accessor for UserRequest(255, &v161);
  v162 = &type metadata for NSecTimestamp;
  v140 = sub_1CF9E6448();
  v163 = v140;
  v164 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v152 = v121 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v121 - v27;
  v144 = (v121 - v27);
  v121[0] = v29;
  MEMORY[0x1EEE9AC00](v30);
  v127 = v121 - v31;
  v139 = sub_1CF9E75D8();
  v32 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v157 = (v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v148 = v121 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v138 = v121 - v37;
  swift_beginAccess();
  v123 = v28 + 8;
  v165 = (v21 + 16);
  v38 = *(a2 + 16);
  v126 = (v21 + 32);
  v155 = (v21 + 48);
  v156 = (v21 + 56);
  v136 = (v32 + 32);
  v149 = (v14 + 16);
  v125 = v21;
  v142 = (v21 + 8);
  v39 = v38;
  v130 = (v14 + 8);
  v129 = (v18 + 8);

  v40 = 0;
  *&v41 = 136315394;
  v122 = v41;
  v145 = AssociatedTypeWitness;
  v160 = v23;
  v137 = v39;
  while (1)
  {
    v161 = v153;
    v162 = v147;
    v163 = v154;
    v164 = v146;
    v161 = type metadata accessor for UserRequest(255, &v161);
    v162 = &type metadata for NSecTimestamp;
    v163 = v140;
    v164 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v40 == sub_1CF9E6DF8())
    {
      v151 = v40;
      v47 = 1;
      v48 = v149;
      goto LABEL_10;
    }

    v49 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    v48 = v149;
    if (v49)
    {
      v50 = v127;
      (*(v125 + 16))(v127, v39 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v40, TupleTypeMetadata);
    }

    else
    {
      v120 = sub_1CF9E7998();
      if (v121[0] != 8)
      {
        goto LABEL_19;
      }

      v161 = v120;
      v50 = v127;
      (*v165)(v127, &v161, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    (*v126)(v157, v50, TupleTypeMetadata);
    v51 = __OFADD__(v40, 1);
    v52 = v40 + 1;
    if (v51)
    {
      break;
    }

    v151 = v52;
    v47 = 0;
LABEL_10:
    v53 = v157;
    v54 = *v156;
    v55 = 1;
    (*v156)(v157, v47, 1, TupleTypeMetadata);
    v56 = *v155;
    if ((*v155)(v53, 1, TupleTypeMetadata) != 1)
    {
      v57 = *(TupleTypeMetadata + 64);
      v141 = *(TupleTypeMetadata + 80);
      v159 = v56;
      v58 = v157;
      v59 = v157[1];
      *&v158 = *v157;
      v150 = v59;
      v60 = sub_1CF9E6448();
      v61 = *(*(v60 - 8) + 32);
      v62 = v144;
      v61(v144 + v57, &v58[v57], v60);
      v63 = swift_allocObject();
      *(v63 + 16) = *&v58[v141];
      v64 = *(TupleTypeMetadata + 64);
      v65 = v148;
      v66 = &v148[*(TupleTypeMetadata + 80)];
      v67 = v150;
      *v148 = v158;
      *(v65 + 1) = v67;
      v68 = v62 + v57;
      v48 = v149;
      v61(&v65[v64], v68, v60);
      AssociatedTypeWitness = v145;
      v55 = 0;
      *v66 = sub_1CF5E14E0;
      v66[1] = v63;
      v56 = v159;
    }

    v69 = v148;
    v54(v148, v55, 1, TupleTypeMetadata);
    v70 = v138;
    (*v136)(v138, v69, v139);
    if (v56(v70, 1, TupleTypeMetadata) == 1)
    {
      v137, v71, v72, v73, v74, v75, v76, v77;
      return;
    }

    v78 = *(TupleTypeMetadata + 64);
    v79 = *(TupleTypeMetadata + 80);
    v80 = v152;
    *v152 = *v70;
    v81 = sub_1CF9E6448();
    v82 = *(v81 - 8);
    v83 = *(v82 + 32);
    v158 = *&v70[v79];
    v159 = v81;
    v83(&v80[v78], &v70[v78]);
    *&v80[v79] = v158;
    v84 = fpfs_current_or_default_log();
    v85 = v143;
    sub_1CF9E6128();
    v86 = *v48;
    v87 = v132;
    (*v48)(v132, v134, AssociatedTypeWitness);
    *&v158 = *v165;
    (v158)(v160, v80, TupleTypeMetadata);
    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E7288();
    LODWORD(v141) = v89;
    v90 = os_log_type_enabled(v88, v89);
    v150 = v142 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v161 = v128;
      *v91 = v122;
      v92 = v124;
      v86(v124, v87, AssociatedTypeWitness);
      v93 = *v130;
      (*v130)(v87, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v94 = sub_1CF9E7F98();
      v96 = v95;
      v93(v92, v145);
      v97 = sub_1CEFD0DF0(v94, v96, &v161);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v91 + 4) = v97;
      *(v91 + 12) = 2080;
      v43 = v144;
      (v158)(v144, v160, TupleTypeMetadata);
      v105 = *v43;
      v106 = *(TupleTypeMetadata + 64);

      (*(v82 + 8))(v43 + v106, v159);
      v42 = *v142;
      (*v142)(v160, TupleTypeMetadata);
      v107 = sub_1CF665B0C(v105, v153, v147, v154, v146);
      v109 = v108;
      sub_1CF5DE5B8(v105);
      v110 = v107;
      AssociatedTypeWitness = v145;
      v111 = sub_1CEFD0DF0(v110, v109, &v161);
      v109, v112, v113, v114, v115, v116, v117, v118;
      *(v91 + 14) = v111;
      _os_log_impl(&dword_1CEFC7000, v88, v141, "propagation <fs:%s reason:%s> completed and flushed", v91, 0x16u);
      v119 = v128;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v119, -1, -1);
      MEMORY[0x1D386CDC0](v91, -1, -1);

      (*v129)(v143, v131);
    }

    else
    {
      v42 = *v142;
      (*v142)(v160, TupleTypeMetadata);
      (*v130)(v87, AssociatedTypeWitness);

      (*v129)(v85, v131);
      v43 = v144;
    }

    v44 = v152;
    (v158)(v43, v152, TupleTypeMetadata);
    sub_1CF5DE5B8(*v43);
    v45 = *(TupleTypeMetadata + 64);
    v46 = *(v43 + *(TupleTypeMetadata + 80));
    sub_1CF1A91AC(v133, &v161);
    v46(&v161, v135);

    sub_1CEFCCC44(&v161, &unk_1EC4C1B30, &qword_1CFA05300);
    v42(v44, TupleTypeMetadata);
    (*(v82 + 8))(v43 + v45, v159);
    v39 = v137;
    v40 = v151;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1CF5C96FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t (*a7)(void **, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v14 = v13;
  v273 = a7;
  v295 = a6;
  v287 = a5;
  v288 = a4;
  v289 = a2;
  v286 = a1;
  v297 = *v14;
  v17 = v297;
  v269 = sub_1CF9E63A8();
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v266 = &v255 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1CF9E6448();
  v265 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v264 = &v255 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v17[79];
  v299 = v14;
  v21 = v17[77];
  v290 = v20;
  v293 = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v298 = *(AssociatedTypeWitness - 1);
  v22 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v284 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v285 = &v255 - v24;
  v272 = sub_1CF9E6118();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v26 = (&v255 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v255 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v296 = (&v255 - v31);
  v292 = a13;
  v32 = *(a13 + 8);
  v305 = a12;
  v306 = v32;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v34 = *(*(a12 - 1) + 16);
  v291 = a12;
  v34(boxed_opaque_existential_0, a9, a12);
  v35 = v301;
  v294 = v273(&aBlock, a3);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (!v35)
  {
    v260 = v29;
    v301 = v41;
    v281 = a9;
    v279 = v26;
    v257 = v39;
    v258 = v37;
    v282 = v22;
    v259 = a8;
    v263 = 0;
    v270 = a11;
    v262 = a10;
    v42 = [objc_allocWithZone(FPLoggerScope) init];
    v43 = fpfs_current_or_default_log();
    v44 = v296;
    sub_1CF9E6128();
    v45 = v288;
    sub_1CEFD09A0(v288);
    v46 = v294;

    sub_1CEFD09A0(v45);

    v47 = v42;
    v48 = v289;

    v49 = sub_1CF9E6108();
    v50 = sub_1CF9E7298();
    v48, v51, v52, v53, v54, v55, v56, v57;

    v58 = os_log_type_enabled(v49, v50);
    v261 = v47;
    if (v58)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v280 = v67;
      v283 = swift_slowAlloc();
      aBlock = v283;
      *v66 = 138413314;
      v68 = [v47 enter];
      *(v66 + 4) = v68;
      *v67 = v68;
      *(v66 + 12) = 2082;
      *(v66 + 14) = sub_1CEFD0DF0(v286, v48, &aBlock);
      *(v66 + 22) = 2080;
      v69 = sub_1CF9E6F58();
      v71 = v70;
      v72 = sub_1CEFD0DF0(v69, v70, &aBlock);
      v71, v73, v74, v75, v76, v77, v78, v79;
      *(v66 + 24) = v72;
      *(v66 + 32) = 2080;
      v80 = v297;
      v81 = sub_1CF665B0C(v45, v293, v297[78], v290, v297[80]);
      v83 = v82;
      sub_1CF5DE5B8(v45);
      sub_1CF5DE5B8(v45);
      v84 = sub_1CEFD0DF0(v81, v83, &aBlock);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v66 + 34) = v84;
      *(v66 + 42) = 2080;
      v92 = MEMORY[0x1D3868FE0](v294, AssociatedTypeWitness);
      v94 = v93;
      swift_bridgeObjectRelease_n();
      v95 = sub_1CEFD0DF0(v92, v94, &aBlock);
      v96 = v94;
      v46 = v294;
      v96, v97, v98, v99, v100, v101, v102, v103;
      *(v66 + 44) = v95;
      _os_log_impl(&dword_1CEFC7000, v49, v50, "%@ 🚧  waiting for %{public}s prior to %s for %s: %s", v66, 0x34u);
      v104 = v280;
      sub_1CEFCCC44(v280, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v104, -1, -1);
      v105 = v283;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v66, -1, -1);

      v276 = *(v271 + 8);
      v276(v44, v272);
      v106 = v291;
    }

    else
    {
      v46, v59, v60, v61, v62, v63, v64, v65;
      sub_1CF5DE5B8(v45);
      v46, v107, v108, v109, v110, v111, v112, v113;
      sub_1CF5DE5B8(v45);

      v276 = *(v271 + 8);
      v276(v44, v272);
      v106 = v291;
      v80 = v297;
    }

    v114 = v301;
    v115 = swift_allocObject();
    *(v115 + 16) = 0;
    v116 = swift_allocObject();
    v297 = &v255;
    v117 = v262;
    v116[2] = v115;
    v116[3] = v117;
    v283 = v116;
    v116[4] = v270;
    v308 = v46;
    MEMORY[0x1EEE9AC00](v116);
    v296 = &v255 - 10;
    v118 = v80[78];
    v119 = v292;
    *(&v255 - 8) = v293;
    *(&v255 - 7) = v118;
    v120 = v290;
    *(&v255 - 6) = v106;
    *(&v255 - 5) = v120;
    v121 = v80[80];
    *(&v255 - 4) = v121;
    *(&v255 - 3) = v119;
    *(&v255 - 2) = v114;
    v122 = AssociatedTypeWitness;
    v280 = sub_1CF9E6E58();
    v123 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v125 = swift_getAssociatedConformanceWitness();

    aBlock = v122;
    v303 = v123;
    v304 = AssociatedConformanceWitness;
    v305 = v125;
    type metadata accessor for ThrottlingKey(255, &aBlock);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v126 = v263;
    v127 = sub_1CF9E6BD8();
    v301, v128, v129, v130, v131, v132, v133, v134;
    aBlock = v293;
    v303 = v118;
    v304 = v120;
    v305 = v121;
    type metadata accessor for SQLJobRegistry(0, &aBlock);
    swift_dynamicCastClassUnconditional();

    sub_1CF3302CC(v127, v281, v291, v292);
    if (v126)
    {

      v127, v135, v136, v137, v138, v139, v140, v141;

      v294, v142, v143, v144, v145, v146, v147, v148;
      v149 = fpfs_current_or_default_log();
      v150 = v279;
      sub_1CF9E6128();
      v151 = v261;
      v152 = sub_1CF9E6108();
      v153 = sub_1CF9E7298();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v154 = 138412290;
        v156 = [v151 leave];
        *(v154 + 4) = v156;
        *v155 = v156;
        _os_log_impl(&dword_1CEFC7000, v152, v153, "%@", v154, 0xCu);
        sub_1CEFCCC44(v155, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v155, -1, -1);
        MEMORY[0x1D386CDC0](v154, -1, -1);
      }

      v276(v150, v272);
    }

    else
    {
      v256 = v115;
      v263 = 0;

      v127, v157, v158, v159, v160, v161, v162, v163;
      v279 = dispatch_group_create();
      v278 = v118;
      v277 = v121;
      if (v295)
      {
        v164 = sub_1CF9E57E8();
      }

      else
      {
        v164 = 0;
      }

      v165 = v287;
      v166 = AssociatedTypeWitness;
      v167 = v298;
      v168 = v282;
      v169 = v285;
      v170 = v294;
      v281 = swift_allocObject();
      *(v281 + 16) = v164;
      v280 = swift_allocObject();
      *(v280 + 16) = 0;
      if (sub_1CF9E6DF8())
      {
        v178 = 0;
        v297 = (v167 + 16);
        v276 = (v168 + 7);
        v275 = v167 + 32;
        v274 = v167 + 8;
        while (1)
        {
          v179 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v179)
          {
            v180 = *(v167 + 16);
            v181 = v169;
            v180(v169, (v170 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v178), v166);
            v182 = v286;
          }

          else
          {
            v205 = sub_1CF9E7998();
            v206 = v286;
            if (v168 != 8)
            {
              goto LABEL_26;
            }

            v181 = v169;
            aBlock = v205;
            v180 = *v297;
            (*v297)(v169, &aBlock, v166);
            swift_unknownObjectRelease();
            v182 = v206;
          }

          v183 = v178 + 1;
          v184 = v284;
          if (__OFADD__(v178, 1))
          {
            break;
          }

          v296 = v178;
          v185 = v279;
          v295 = v183;
          dispatch_group_enter(v279);
          v186 = swift_allocObject();
          v301 = v186;
          swift_weakInit();
          v180(v184, v181, v166);
          v187 = (*(v167 + 80) + 96) & ~*(v167 + 80);
          v188 = (v276 + v187) & 0xFFFFFFFFFFFFFFF8;
          v189 = (v188 + 15) & 0xFFFFFFFFFFFFFFF8;
          v190 = (v189 + 15) & 0xFFFFFFFFFFFFFFF8;
          v191 = swift_allocObject();
          v192 = v184;
          v193 = v191;
          v194 = v278;
          *(v191 + 2) = v293;
          *(v191 + 3) = v194;
          v195 = v290;
          *(v191 + 4) = v291;
          *(v191 + 5) = v195;
          v196 = v292;
          *(v191 + 6) = v277;
          *(v191 + 7) = v196;
          *(v191 + 8) = v185;
          *(v191 + 9) = v186;
          *(v191 + 10) = v182;
          *(v191 + 11) = v289;
          (*(v298 + 32))(&v191[v187], v192, AssociatedTypeWitness);
          v197 = v288;
          *(v193 + v188) = v288;
          *(v193 + v189) = v281;
          v198 = (v193 + v190);
          v199 = v298;
          v200 = v283;
          *v198 = sub_1CF5E153C;
          v198[1] = v200;
          *(v193 + ((v190 + 23) & 0xFFFFFFFFFFFFFFF8)) = v280;
          v201 = v285;
          sub_1CEFD09A0(v197);
          v202 = v287;

          v203 = v185;
          v204 = v296;

          v167 = v199;

          v166 = AssociatedTypeWitness;

          v165 = v202;
          sub_1CF5978E4(v201, v197, v202, sub_1CF5E02A4, v193);

          v169 = v201;
          (*(v199 + 8))(v201, v166);
          v170 = v294;
          v168 = v282;

          v178 = (v204 + 1);
          if (v295 == sub_1CF9E6DF8())
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
LABEL_21:
        v170, v171, v172, v173, v174, v175, v176, v177;
        v207 = v299;
        v301 = v299[8];
        v208 = swift_allocObject();
        v209 = v292;
        *(v208 + 16) = v291;
        *(v208 + 24) = v209;
        *(v208 + 32) = v256;
        *(v208 + 40) = v207;
        *(v208 + 48) = v258;
        *(v208 + 56) = v257 & 1;
        v210 = v289;
        *(v208 + 64) = v286;
        *(v208 + 72) = v210;
        v211 = v288;
        *(v208 + 80) = v288;
        *(v208 + 88) = v165;
        v212 = v273;
        *(v208 + 96) = v281;
        *(v208 + 104) = v212;
        v213 = v262;
        *(v208 + 112) = v259;
        *(v208 + 120) = v213;
        v214 = v280;
        *(v208 + 128) = v270;
        *(v208 + 136) = v214;
        sub_1CEFD09A0(v211);

        v215 = v301;

        v216 = fpfs_current_log();
        v301 = fpfs_adopt_log();
        v217 = swift_allocObject();
        aBlock = sub_1CF9E73C8();
        v303 = v218;
        MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
        v219 = sub_1CF9E7988();
        v221 = v220;
        MEMORY[0x1D3868CC0](v219);
        v221, v222, v223, v224, v225, v226, v227, v228;
        v229 = v303;
        sub_1CF9E6978();
        v229, v230, v231, v232, v233, v234, v235, v236;
        v237 = __fp_log_fork();

        *(v217 + 16) = v237;
        v238 = swift_allocObject();
        *(v238 + 16) = v216;
        *(v238 + 24) = v217;
        v299 = v217;
        *(v238 + 32) = v215;
        *(v238 + 40) = "waitForPropagation(for:startingRowID:request:barrierTimestamp:previousError:jobs:with:completionHandler:)";
        *(v238 + 48) = 105;
        *(v238 + 56) = 2;
        *(v238 + 64) = sub_1CF5E03CC;
        *(v238 + 72) = v208;
        v306 = sub_1CF2B9F54;
        v307 = v238;
        aBlock = MEMORY[0x1E69E9820];
        v303 = 1107296256;
        v304 = sub_1CEFCA444;
        v305 = &block_descriptor_470;
        v239 = _Block_copy(&aBlock);
        v240 = v215;
        AssociatedTypeWitness = v216;

        v241 = v264;
        sub_1CF9E63F8();
        v308 = MEMORY[0x1E69E7CC0];
        sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
        v242 = v266;
        v243 = v269;
        sub_1CF9E77B8();
        v244 = v279;
        sub_1CF9E7308();
        _Block_release(v239);
        (*(v268 + 8))(v242, v243);
        (*(v265 + 8))(v241, v267);

        v245 = v301;
        v246 = fpfs_adopt_log();

        v247 = fpfs_current_or_default_log();
        v248 = v260;
        sub_1CF9E6128();
        v249 = v261;
        v250 = sub_1CF9E6108();
        v251 = sub_1CF9E7298();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *v252 = 138412290;
          v254 = [v249 leave];
          *(v252 + 4) = v254;
          *v253 = v254;
          _os_log_impl(&dword_1CEFC7000, v250, v251, "%@", v252, 0xCu);
          sub_1CEFCCC44(v253, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v253, -1, -1);
          MEMORY[0x1D386CDC0](v252, -1, -1);
        }

        (*(v271 + 8))(v248, v272);
      }
    }
  }
}

uint64_t sub_1CF5CAB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v23[5] = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE230, qword_1CF9FCE30);
  v23[0] = swift_getAssociatedTypeWitness();
  v23[1] = swift_getAssociatedTypeWitness();
  v23[2] = swift_getAssociatedConformanceWitness();
  v23[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ThrottlingKey(0, v23);
  v11 = sub_1CEFCCCEC(qword_1EC4C1C30, &qword_1EC4BE230, qword_1CF9FCE30, MEMORY[0x1E69E6340]);
  result = sub_1CF054A5C(sub_1CF5E0490, v15, v9, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  *a9 = result;
  return result;
}

uint64_t sub_1CF5CAD18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  v12 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[0] = AssociatedTypeWitness;
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, v13);
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a7, a2, AssociatedTypeWitness);
  result = swift_storeEnumTagMultiPayload();
  *(a7 + v9) = v12;
  return result;
}

void sub_1CF5CAE80(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v149 = a6;
  v150 = a8;
  v148 = a7;
  v151 = a3;
  v137 = a1;
  v142 = a17;
  v140 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v132 = *(v20 - 8);
  v133 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v121 - v21;
  v135 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v121 - v23;
  v24 = sub_1CF9E64A8();
  v146 = *(v24 - 8);
  v147 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a16;
  v139 = a13;
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v138 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v121 - v31;
  v33 = sub_1CF9E6118();
  v144 = *(v33 - 8);
  v145 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  if (!a2)
  {

    swift_beginAccess();
    *(a12 + 16) = 1;
    goto LABEL_10;
  }

  v127 = a5;
  v130 = v26;
  v143 = Strong;
  v37 = a2;
  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v129 = v28;
  v125 = *(v28 + 16);
  v125(v32, v148, v27);
  v39 = v150;
  sub_1CEFD09A0(v150);
  v40 = a2;
  sub_1CEFD09A0(v39);
  v41 = v149;

  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E72C8();
  v41, v44, v45, v46, v47, v48, v49, v50;
  v131 = a2;

  v126 = v43;
  v128 = v42;
  v51 = os_log_type_enabled(v42, v43);
  v124 = AssociatedTypeWitness;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v161[0] = v123;
    *v52 = 136446978;
    *(v52 + 4) = sub_1CEFD0DF0(v127, v149, v161);
    *(v52 + 12) = 2080;
    v53 = v138;
    v125(v138, v32, v27);
    v54 = *(v129 + 8);
    v54(v32, v27);
    v55 = v141;
    v149 = v35;
    v56 = v139;
    swift_getAssociatedConformanceWitness();
    v57 = sub_1CF9E7F98();
    v59 = v58;
    v54(v53, v27);
    v60 = sub_1CEFD0DF0(v57, v59, v161);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v52 + 14) = v60;
    *(v52 + 22) = 2080;
    v68 = v150;
    v69 = sub_1CF665B0C(v150, v56, v140, v55, v142);
    v71 = v70;
    sub_1CF5DE5B8(v68);
    sub_1CF5DE5B8(v68);
    v72 = sub_1CEFD0DF0(v69, v71, v161);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v52 + 24) = v72;
    *(v52 + 32) = 2112;
    v80 = v128;
    swift_getErrorValue();
    v81 = Error.prettyDescription.getter(v152, v153);
    *(v52 + 34) = v81;
    v82 = v122;
    *v122 = v81;
    _os_log_impl(&dword_1CEFC7000, v80, v126, "🚧  %{public}s of %s failed for %s: %@", v52, 0x2Au);
    sub_1CEFCCC44(v82, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v82, -1, -1);
    v83 = v123;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v83, -1, -1);
    MEMORY[0x1D386CDC0](v52, -1, -1);

    (*(v144 + 8))(v149, v145);
  }

  else
  {
    v84 = v150;
    v85 = sub_1CF5DE5B8(v150);
    (*(v129 + 8))(v32, v27, v85);
    sub_1CF5DE5B8(v84);

    (*(v144 + 8))(v35, v145);
  }

  v86 = *(v143 + 64);
  v87 = v130;
  *v130 = v86;
  v89 = v146;
  v88 = v147;
  (*(v146 + 104))(v87, *MEMORY[0x1E69E8020], v147);
  v90 = v86;
  LOBYTE(v86) = sub_1CF9E64D8();
  (*(v89 + 8))(v87, v88);
  if (v86)
  {
    swift_beginAccess();
    if (*(a9 + 16))
    {
    }

    else
    {
      sub_1CEFCCBDC(v137, &v159, &unk_1EC4C1B30, &qword_1CFA05300);
      if (v160)
      {
        sub_1CF054EA0(&v159, v161);
        v91 = v162;
        v92 = v163;
        v93 = __swift_project_boxed_opaque_existential_1(v161, v162);
        v94 = *(**(v143 + 16) + 160);
        v95 = *(v92 + 8);

        v96 = v136;
        v94(v148, v93, v91, v95);

        v97 = v135;
        v98 = v124;
        v99 = (*(v135 + 48))(v96, 1, v124);
        if (v99 != 1)
        {
          (*(v97 + 32))(v134, v96, v98);
          type metadata accessor for NSFileProviderError(0);
          *&v159 = -2005;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1CF9FA440;
          *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          *(inited + 40) = v110;
          v111 = v131;
          swift_getErrorValue();
          v112 = v154;
          v113 = v155;
          *(inited + 72) = v155;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
          (*(*(v113 - 8) + 16))(boxed_opaque_existential_0, v112, v113);
          *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          *(inited + 88) = v115;
          *(inited + 120) = v98;
          v116 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
          v117 = v134;
          (*(v97 + 16))(v116, v134, v98);
          sub_1CF4E04E8(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
          swift_arrayDestroy();
          sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
          sub_1CF9E57D8();
          v118 = v156;
          v119 = sub_1CF9E57E8();

          (*(v97 + 8))(v117, v98);
          swift_beginAccess();
          v120 = *(a9 + 16);
          *(a9 + 16) = v119;

          __swift_destroy_boxed_opaque_existential_1(v161);
          goto LABEL_10;
        }

        (*(v132 + 8))(v96, v133);
        __swift_destroy_boxed_opaque_existential_1(v161);
      }

      else
      {
        sub_1CEFCCC44(&v159, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      type metadata accessor for NSFileProviderError(0);
      v161[0] = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v100 = swift_initStackObject();
      *(v100 + 16) = xmmword_1CF9FA450;
      *(v100 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v100 + 40) = v101;
      v102 = v131;
      swift_getErrorValue();
      v103 = v157;
      v104 = v158;
      *(v100 + 72) = v158;
      v105 = __swift_allocate_boxed_opaque_existential_0((v100 + 48));
      (*(*(v104 - 8) + 16))(v105, v103, v104);
      sub_1CF4E04E8(v100);
      swift_setDeallocating();
      sub_1CEFCCC44(v100 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v106 = v159;
      v107 = sub_1CF9E57E8();

      swift_beginAccess();
      v108 = *(a9 + 16);
      *(a9 + 16) = v107;
    }

LABEL_10:
    dispatch_group_leave(v151);
    return;
  }

  __break(1u);
}

void sub_1CF5CBA94(uint64_t a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, void *), uint64_t a13, uint64_t a14)
{
  v110 = a5;
  v111 = a7;
  v106 = *a2;
  v107 = a8;
  v19 = sub_1CF9E6118();
  v108 = *(v19 - 8);
  v109 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v29 = a2[8];
    *v28 = v29;
    (*(v26 + 104))(v28, *MEMORY[0x1E69E8020], v25);
    v30 = v29;
    LOBYTE(v29) = sub_1CF9E64D8();
    v31 = (*(v26 + 8))(v28, v25);
    if (v29)
    {
      v32 = (a9 + 16);
      if (a4)
      {
        v107 = a13;
        swift_beginAccess();
        v33 = *v32;
        v34 = a6;
        if (*v32)
        {
          v105 = a12;
          v35 = v33;
          v36 = fpfs_current_or_default_log();
          v37 = v24;
          sub_1CF9E6128();
          v38 = v35;
          v39 = v111;
          sub_1CEFD09A0(v111);

          v40 = sub_1CF9E6108();
          v41 = sub_1CF9E72C8();

          v34, v42, v43, v44, v45, v46, v47, v48;
          if (os_log_type_enabled(v40, v41))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v104 = v37;
            v51 = v50;
            v52 = swift_slowAlloc();
            v112[0] = v52;
            *v49 = 136446722;
            *(v49 + 4) = sub_1CEFD0DF0(v110, v34, v112);
            *(v49 + 12) = 2080;
            v53 = sub_1CF665B0C(v39, v106[77], v106[78], v106[79], v106[80]);
            v54 = v39;
            v55 = v53;
            v57 = v56;
            sub_1CF5DE5B8(v54);
            v58 = sub_1CEFD0DF0(v55, v57, v112);
            v57, v59, v60, v61, v62, v63, v64, v65;
            *(v49 + 14) = v58;
            *(v49 + 22) = 2112;
            v66 = [v38 fp_prettyDescription];
            *(v49 + 24) = v66;
            *v51 = v66;
            _os_log_impl(&dword_1CEFC7000, v40, v41, "🚧  finished %{public}s for %s with error: %@", v49, 0x20u);
            sub_1CEFCCC44(v51, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v51, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v52, -1, -1);
            MEMORY[0x1D386CDC0](v49, -1, -1);

            (*(v108 + 8))(v104, v109);
          }

          else
          {
            sub_1CF5DE5B8(v39);

            (*(v108 + 8))(v37, v109);
          }

          swift_beginAccess();
          v101 = *(a14 + 16);
          v102 = v38;
          v105(v101, v33);
        }

        else
        {
          v75 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v76 = v111;
          sub_1CEFD09A0(v111);

          v77 = sub_1CF9E6108();
          v78 = sub_1CF9E72C8();
          a6, v79, v80, v81, v82, v83, v84, v85;
          if (os_log_type_enabled(v77, v78))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v112[0] = v87;
            *v86 = 136446466;
            *(v86 + 4) = sub_1CEFD0DF0(v110, v34, v112);
            *(v86 + 12) = 2080;
            v88 = sub_1CF665B0C(v76, v106[77], v106[78], v106[79], v106[80]);
            v89 = v76;
            v90 = v88;
            v92 = v91;
            sub_1CF5DE5B8(v89);
            v93 = sub_1CEFD0DF0(v90, v92, v112);
            v92, v94, v95, v96, v97, v98, v99, v100;
            *(v86 + 14) = v93;
            _os_log_impl(&dword_1CEFC7000, v77, v78, "🚧  finished %{public}s for %s", v86, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v87, -1, -1);
            MEMORY[0x1D386CDC0](v86, -1, -1);
          }

          else
          {
            sub_1CF5DE5B8(v76);
          }

          (*(v108 + 8))(v21, v109);
          swift_beginAccess();
          a12(*(a14 + 16), 0);
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v31);
        *(&v103 - 14) = v68;
        *(&v103 - 13) = v67;
        v69 = v110;
        v70 = v111;
        *(&v103 - 12) = a2;
        *(&v103 - 11) = v69;
        *(&v103 - 10) = a6;
        *(&v103 - 9) = a3;
        v71 = v107;
        *(&v103 - 8) = v70;
        *(&v103 - 7) = v71;
        *(&v103 - 6) = v32;
        *(&v103 - 5) = v72;
        *(&v103 - 4) = v73;
        *(&v103 - 3) = a12;
        *(&v103 - 2) = v74;
        sub_1CF59896C("waitForPropagation(for:startingRowID:request:barrierTimestamp:previousError:jobs:with:completionHandler:)", 0x69uLL, 2, sub_1CF5E0418, (&v103 - 16), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CF5CC1A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void **a8, uint64_t (*a9)(void **, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_beginAccess();
  v18 = *a8;
  v19 = v18;
  sub_1CF5C96FC(a3, a4, a5, a6, a7, v18, a9, a10, v17, a11, a12, v15, v16);
}

double sub_1CF5CC278(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v28 = a7;
  v29 = a8;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v30 = a3;
  v10 = *v8;
  v26 = *(*v8 + 640);
  v11 = *(v10 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  v27 = "move-out of descendents";
  (*(v13 + 16))(&v26 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10;
  *(v20 + 2) = *(v10 + 616);
  *(v20 + 3) = v11;
  v22 = v28;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = *(v21 + 632);
  *(v20 + 6) = v26;
  *(v20 + 7) = v23;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v24 = v30;
  *&v20[v19] = v30;

  sub_1CF5C96FC(0xD000000000000020, v27 | 0x8000000000000000, 0, v34, v24, 0, sub_1CF5E05DC, v20, v33, v32, v31, v22, v23);

  return result;
}

uint64_t sub_1CF5CC4C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 40) + 600))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

double sub_1CF5CC5AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v28 = a7;
  v29 = a8;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v30 = a3;
  v10 = *v8;
  v26 = *(*v8 + 640);
  v11 = *(v10 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  v27 = ":with:completionHandler:)";
  (*(v13 + 16))(&v26 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10;
  *(v20 + 2) = *(v10 + 616);
  *(v20 + 3) = v11;
  v22 = v28;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = *(v21 + 632);
  *(v20 + 6) = v26;
  *(v20 + 7) = v23;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v24 = v30;
  *&v20[v19] = v30;

  sub_1CF5C96FC(0xD000000000000017, v27 | 0x8000000000000000, 0, v34, v24, 0, sub_1CF5E04C8, v20, v33, v32, v31, v22, v23);

  return result;
}

uint64_t sub_1CF5CC7FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 40) + 592))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

double sub_1CF5CC8E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a2;
  v29 = a7;
  v30 = a8;
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v31 = a3;
  v10 = *v8;
  v27 = *(*v8 + 632);
  v11 = *(v10 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v27 - v16;
  v28 = "r previousError ";
  (*(v13 + 16))(&v27 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v11;
  v21 = *(v10 + 624);
  v22 = v10;
  v23 = v29;
  v24 = v30;
  *(v20 + 3) = v21;
  *(v20 + 4) = v23;
  *(v20 + 5) = v27;
  *(v20 + 6) = *(v22 + 640);
  *(v20 + 7) = v24;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v25 = v31;
  *&v20[v19] = v31;

  sub_1CF5C96FC(0xD000000000000017, v28 | 0x8000000000000000, 0, v35, v25, 0, sub_1CF5E01A4, v20, v34, v33, v32, v23, v24);

  return result;
}

uint64_t sub_1CF5CCB30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 32) + 608))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1CF5CCC14(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void (*a5)(__int128 *, id), uint64_t a6)
{
  v51 = a4;
  v50 = a2;
  v53 = a1;
  v10 = *v6;
  v11 = *(*v6 + 632);
  v12 = *(*v6 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  if (v6[152] == 1)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v19 = FPDomainUnavailableError();
    a5(&v54, v19);

    return sub_1CEFCCC44(&v54, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v47 = a3;
    v49 = a5;
    v48 = a6;
    v21 = qword_1EC4EBD80;
    swift_beginAccess();
    v22 = *&v6[v21];

    v23 = *(v10 + 624);
    v24 = *(v10 + 640);
    *&v54 = v12;
    *(&v54 + 1) = v23;
    *&v55 = v11;
    *(&v55 + 1) = v24;
    *&v54 = type metadata accessor for UserRequest(255, &v54);
    *(&v54 + 1) = &type metadata for JobCode;
    *&v55 = &type metadata for NSecTimestamp;
    *(&v55 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E6728();
    v22, v25, v26, v27, v28, v29, v30, v31;
    if (v58[0])
    {
      v58[0], v32, v33, v34, v35, v36, v37, v38;
      v39 = v52;
      (*(v52 + 16))(v15, v53, AssociatedTypeWitness);
    }

    else
    {
      v40 = *(v52 + 16);
      v40(v18, v53, AssociatedTypeWitness);
      v58[0] = sub_1CF9E6DA8();
      swift_beginAccess();
      sub_1CF9E6708();
      v39 = v52;
      sub_1CF9E6738();
      swift_endAccess();
      v40(v15, v53, AssociatedTypeWitness);
    }

    v41 = sub_1CF5A56C0(v58);
    sub_1CF9E6708();
    v42 = sub_1CF9E6718();
    v44 = v49;
    if (*v43)
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v48;
      *&v54 = v47;
      BYTE8(v54) = v50;
      *&v55 = v51;
      *(&v55 + 1) = sub_1CF5E14E4;
      v56 = v45;
      sub_1CEFD09A0(v47);

      sub_1CF9E6E18();
    }

    v42(v57, 0);
    (*(v39 + 8))(v15, AssociatedTypeWitness);
    return (v41)(v58, 0);
  }
}

uint64_t sub_1CF5CD088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FileTreeError(255, *(v4 + 616), *(v4 + 632), a4);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-1] - v9;
  v31 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = swift_dynamicCast();
  v13 = *(*(v6 - 8) + 56);
  if (v12)
  {
    v14 = *(v6 - 8);
    v13(v10, 0, 1, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      (*(v14 + 8))(v10, v6);
      return 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v25 - 48, " at originalError previousError ");
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v17 = swift_getAssociatedTypeWitness();
      v18 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v20 = swift_getAssociatedConformanceWitness();
      v26[0] = v17;
      v26[1] = v18;
      v26[2] = AssociatedConformanceWitness;
      v26[3] = v20;
      type metadata accessor for FileItemVersion(255, v26);
      v28 = sub_1CF9E75D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v30 = v29;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v22 = TupleTypeMetadata[12];

      AssociatedTypeWitness = v17;
      v28 = v18;
      v29 = AssociatedConformanceWitness;
      v30 = v20;
      type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
      v23 = sub_1CF9E75D8();
      (*(*(v23 - 8) + 8))(&v10[v22], v23);
      v24 = swift_getAssociatedTypeWitness();
      (*(*(v24 - 8) + 8))(v10, v24);
      return 1;
    }
  }

  else
  {
    v13(v10, 1, 1, v6);
    (*(v8 + 8))(v10, v7);
    return 0;
  }
}

void sub_1CF5CD4AC(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t *, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void), uint64_t a9, void (**a10)(uint64_t, uint64_t *, uint64_t), NSObject *a11, void *a12, uint64_t (*a13)())
{
  v236 = a3;
  v233 = a2;
  v234 = a6;
  v231 = a5;
  v232 = a4;
  v230 = a1;
  v227 = *v13;
  v16 = v227;
  v210 = sub_1CF9E63A8();
  v211 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v214 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_1CF9E6448();
  v213 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v212 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 632);
  v241 = v13;
  v20 = *(v16 + 616);
  v226 = v19;
  v225 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v240 = *(AssociatedTypeWitness - 8);
  v21 = v240[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v238 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v239 = &v199 - v23;
  v24 = sub_1CF9E6118();
  v216 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v224 = &v199 - v28;
  v245 = a12;
  v246 = a13;
  v229 = a13;
  v29 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v30 = *(*(a12 - 1) + 16);
  v228 = a12;
  v30(v29, a7, a12);
  v31 = v237;
  v32 = a8;
  v33 = a8(&aBlock, v236);
  v35 = v34;
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (!v31)
  {
    v206 = v37;
    v201 = v35;
    v200 = v21;
    v222 = v32;
    v202 = a9;
    v205 = v26;
    v209 = v24;
    v236 = a10;
    v237 = a11;
    v38 = [objc_allocWithZone(FPLoggerScope) init];
    v39 = fpfs_current_or_default_log();
    v40 = v224;
    sub_1CF9E6128();
    v41 = v232;
    sub_1CEFD09A0(v232);
    v42 = v33;

    sub_1CEFD09A0(v41);

    v43 = v38;
    v44 = v233;

    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E7298();
    v44, v47, v48, v49, v50, v51, v52, v53;

    v54 = os_log_type_enabled(v45, v46);
    v204 = 0;
    v203 = v43;
    if (v54)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v221 = v63;
      v223 = swift_slowAlloc();
      aBlock = v223;
      *v62 = 138413314;
      v64 = [v43 enter];
      *(v62 + 4) = v64;
      *v63 = v64;
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_1CEFD0DF0(v230, v44, &aBlock);
      *(v62 + 22) = 2080;
      v65 = sub_1CF9E6F58();
      v67 = v66;
      v68 = sub_1CEFD0DF0(v65, v66, &aBlock);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v62 + 24) = v68;
      *(v62 + 32) = 2080;
      v76 = sub_1CF665B0C(v41, v225, *(v227 + 624), v226, *(v227 + 640));
      v78 = v77;
      sub_1CF5DE5B8(v41);
      sub_1CF5DE5B8(v41);
      v79 = sub_1CEFD0DF0(v76, v78, &aBlock);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v62 + 34) = v79;
      *(v62 + 42) = 2080;
      v87 = MEMORY[0x1D3868FE0](v42, AssociatedTypeWitness);
      v89 = v88;
      v90 = v42;
      swift_bridgeObjectRelease_n();
      v91 = sub_1CEFD0DF0(v87, v89, &aBlock);
      v89, v92, v93, v94, v95, v96, v97, v98;
      *(v62 + 44) = v91;
      _os_log_impl(&dword_1CEFC7000, v45, v46, "%@ 🚧  waiting for ingestion of %{public}s prior to %s for %s: %s", v62, 0x34u);
      v99 = v221;
      sub_1CEFCCC44(v221, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v99, -1, -1);
      v100 = v223;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v100, -1, -1);
      MEMORY[0x1D386CDC0](v62, -1, -1);
    }

    else
    {
      v42, v55, v56, v57, v58, v59, v60, v61;
      sub_1CF5DE5B8(v41);
      v90 = v42;
      v42, v101, v102, v103, v104, v105, v106, v107;
      sub_1CF5DE5B8(v41);
    }

    (*(v216 + 8))(v40, v209);
    v108 = v241;
    v109 = v234;
    v110 = swift_allocObject();
    *(v110 + 16) = 0;
    v111 = swift_allocObject();
    v112 = v236;
    v113 = v237;
    v111[2] = v110;
    v111[3] = v112;
    v111[4] = v113;

    v237 = dispatch_group_create();
    v114 = v222;
    v115 = v240;
    v208 = v110;
    v207 = v111;
    if (v109)
    {
      v116 = sub_1CF9E57E8();
    }

    else
    {
      v116 = 0;
    }

    v117 = v231;
    v224 = swift_allocObject();
    *(v224 + 2) = v116;
    v223 = swift_allocObject();
    *(v223 + 16) = 0;
    v118 = v90;
    v119 = AssociatedTypeWitness;
    if (sub_1CF9E6DF8())
    {
      v127 = 0;
      v236 = (v115 + 2);
      v221 = (v200 + 7);
      v220 = v115 + 4;
      v219 = v115 + 1;
      v218 = BYTE1(v206);
      v217 = v118;
      while (1)
      {
        v128 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v128)
        {
          v129 = v118 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + v115[9] * v127;
          v130 = v115[2];
          v131 = v239;
          v130(v239, v129, v119);
        }

        else
        {
          v149 = sub_1CF9E7998();
          v131 = v239;
          if (v200 != 8)
          {
            goto LABEL_22;
          }

          aBlock = v149;
          v130 = *v236;
          (*v236)(v239, &aBlock, v119);
          swift_unknownObjectRelease();
        }

        v132 = v238;
        if (__OFADD__(v127, 1))
        {
          break;
        }

        v234 = v127 + 1;
        AssociatedTypeWitness = v127;
        v133 = v237;
        dispatch_group_enter(v237);
        v130(v132, v131, v119);
        v134 = v240;
        v135 = (*(v240 + 80) + 88) & ~*(v240 + 80);
        v136 = (v221 + v135) & 0xFFFFFFFFFFFFFFF8;
        v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
        v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
        v139 = swift_allocObject();
        v139[2] = v225;
        v140 = v227;
        v141 = v228;
        v139[3] = *(v227 + 624);
        v139[4] = v141;
        v139[5] = v226;
        v142 = *(v140 + 640);
        v144 = v229;
        v143 = v230;
        v139[6] = v142;
        v139[7] = v144;
        v139[8] = v133;
        v139[9] = v143;
        v139[10] = v233;
        (v134[4])(v139 + v135, v238, v119);
        v145 = v232;
        *(v139 + v136) = v232;
        *(v139 + v137) = v241;
        v108 = v241;
        *(v139 + v138) = v224;
        *(v139 + ((v138 + 15) & 0xFFFFFFFFFFFFFFF8)) = v223;
        v114 = v222;
        sub_1CEFD09A0(v145);
        v117 = v231;

        v146 = v237;
        v147 = AssociatedTypeWitness;

        v118 = v217;

        v148 = v239;
        sub_1CF5CCC14(v239, v218, v145, v117, sub_1CF5DFE6C, v139);
        v115 = v240;

        (v115[1])(v148, v119);
        v127 = v147 + 1;
        if (v234 == sub_1CF9E6DF8())
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_17:
      v118, v120, v121, v122, v123, v124, v125, v126;
      v150 = v117;
      v151 = v108[8];
      v152 = swift_allocObject();
      v153 = v229;
      *(v152 + 16) = v228;
      *(v152 + 24) = v153;
      v154 = v201;
      *(v152 + 32) = v208;
      *(v152 + 40) = v154;
      *(v152 + 48) = v206 & 1;
      v155 = v230;
      *(v152 + 56) = v108;
      *(v152 + 64) = v155;
      *(v152 + 72) = v233;
      v156 = v232;
      *(v152 + 80) = v232;
      *(v152 + 88) = v150;
      *(v152 + 96) = v224;
      *(v152 + 104) = v114;
      *(v152 + 112) = v202;
      *(v152 + 120) = sub_1CF5DFE4C;
      v157 = v223;
      *(v152 + 128) = v207;
      *(v152 + 136) = v157;
      sub_1CEFD09A0(v156);

      v158 = v151;

      v159 = fpfs_current_log();
      v241 = fpfs_adopt_log();
      v160 = swift_allocObject();
      aBlock = sub_1CF9E73C8();
      v243 = v161;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v162 = sub_1CF9E7988();
      v164 = v163;
      MEMORY[0x1D3868CC0](v162);
      v164, v165, v166, v167, v168, v169, v170, v171;
      v172 = v243;
      sub_1CF9E6978();
      v172, v173, v174, v175, v176, v177, v178, v179;
      v180 = __fp_log_fork();

      *(v160 + 16) = v180;
      v181 = swift_allocObject();
      *(v181 + 16) = v159;
      *(v181 + 24) = v160;
      *(v181 + 32) = v158;
      *(v181 + 40) = "waitForIngestion(of:startingRowID:request:barrierTimestamp:previousError:connection:jobs:completionHandler:)";
      *(v181 + 48) = 108;
      *(v181 + 56) = 2;
      *(v181 + 64) = sub_1CF5DFF6C;
      *(v181 + 72) = v152;
      v246 = sub_1CEFD5064;
      v247 = v181;
      aBlock = MEMORY[0x1E69E9820];
      v243 = 1107296256;
      v244 = sub_1CEFCA444;
      v245 = &block_descriptor_437_0;
      v182 = _Block_copy(&aBlock);
      v183 = v158;
      v240 = v159;

      v184 = v212;
      sub_1CF9E63F8();
      v248 = MEMORY[0x1E69E7CC0];
      sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v185 = v214;
      v186 = v210;
      sub_1CF9E77B8();
      v187 = v183;
      v188 = v237;
      sub_1CF9E7308();
      _Block_release(v182);
      (*(v211 + 8))(v185, v186);
      (*(v213 + 8))(v184, v215);

      v189 = v241;
      v190 = fpfs_adopt_log();

      v191 = fpfs_current_or_default_log();
      v192 = v205;
      sub_1CF9E6128();
      v193 = v203;
      v194 = sub_1CF9E6108();
      v195 = sub_1CF9E7298();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v196 = 138412290;
        v198 = [v193 leave];
        *(v196 + 4) = v198;
        *v197 = v198;
        _os_log_impl(&dword_1CEFC7000, v194, v195, "%@", v196, 0xCu);
        sub_1CEFCCC44(v197, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v197, -1, -1);
        MEMORY[0x1D386CDC0](v196, -1, -1);
      }

      (*(v216 + 8))(v192, v209);
    }
  }
}

void sub_1CF5CE4C8(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, __n128))
{
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    (a4)(a1 & 1, a2);
  }
}

void sub_1CF5CE558(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, NSObject *a5, char *a6, unint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v120 = a7;
  v114 = a6;
  v116 = a5;
  v113 = a4;
  v13 = *a8;
  v14 = *a8;
  v119 = sub_1CF9E64A8();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 632);
  v17 = *(v13 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  v23 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_4;
  }

  v28 = a2;
  v110 = v25;
  v111 = v24;
  v29 = *(v14 + 624);
  v30 = *(v14 + 640);
  v126[0] = v17;
  v126[1] = v29;
  v108 = v29;
  v109 = v16;
  v126[2] = v16;
  v126[3] = v30;
  type metadata accessor for ConcreteDatabase(0, v126);
  v31 = v28;
  v32 = v28;
  if (sub_1CF5CD088(v28, v33, v34, v35))
  {

LABEL_4:
    swift_beginAccess();
    *(a10 + 16) = 1;
LABEL_13:
    dispatch_group_leave(a3);
    return;
  }

  v106 = v30;
  v105 = v17;
  v107 = a3;
  v36 = fpfs_current_or_default_log();
  v37 = v27;
  sub_1CF9E6128();
  v38 = v115;
  v39 = v115[2];
  v39(v22, v114, AssociatedTypeWitness);
  v40 = v120;
  sub_1CEFD09A0(v120);
  v41 = v31;
  sub_1CEFD09A0(v40);
  v42 = v116;

  v114 = v37;
  v43 = v42;
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E72C8();
  v43, v46, v47, v48, v49, v50, v51, v52;

  if (os_log_type_enabled(v44, v45))
  {
    v53 = swift_slowAlloc();
    v103 = v45;
    v54 = v53;
    v102 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v126[0] = v104;
    *v54 = 136446978;
    *(v54 + 4) = sub_1CEFD0DF0(v113, v43, v126);
    *(v54 + 12) = 2080;
    v116 = v44;
    v55 = v112;
    v39(v112, v22, AssociatedTypeWitness);
    v56 = v38[1];
    v56(v22, AssociatedTypeWitness);
    v115 = v31;
    v57 = v109;
    v58 = v105;
    swift_getAssociatedConformanceWitness();
    v59 = sub_1CF9E7F98();
    v61 = v60;
    v56(v55, AssociatedTypeWitness);
    v62 = sub_1CEFD0DF0(v59, v61, v126);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v54 + 14) = v62;
    *(v54 + 22) = 2080;
    v70 = v120;
    v71 = sub_1CF665B0C(v120, v58, v108, v57, v106);
    v73 = v72;
    sub_1CF5DE5B8(v70);
    sub_1CF5DE5B8(v70);
    v74 = sub_1CEFD0DF0(v71, v73, v126);
    v73, v75, v76, v77, v78, v79, v80, v81;
    *(v54 + 24) = v74;
    *(v54 + 32) = 2112;
    v82 = v115;
    swift_getErrorValue();
    v83 = Error.prettyDescription.getter(v121, v122);
    *(v54 + 34) = v83;
    v84 = v102;
    *v102 = v83;
    v85 = v116;
    _os_log_impl(&dword_1CEFC7000, v116, v103, "🚧  %{public}s of %s failed for %s: %@", v54, 0x2Au);
    sub_1CEFCCC44(v84, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v84, -1, -1);
    v86 = v104;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v86, -1, -1);
    MEMORY[0x1D386CDC0](v54, -1, -1);

    (*(v110 + 8))(v114, v111);
  }

  else
  {
    v87 = v120;
    v88 = sub_1CF5DE5B8(v120);
    (v38[1])(v22, AssociatedTypeWitness, v88);
    sub_1CF5DE5B8(v87);

    (*(v110 + 8))(v114, v111);
    v82 = v31;
  }

  v89 = a8[8];
  v90 = v117;
  *v117 = v89;
  v91 = v118;
  v92 = v119;
  (*(v118 + 104))(v90, *MEMORY[0x1E69E8020], v119);
  v93 = v89;
  LOBYTE(v89) = sub_1CF9E64D8();
  (*(v91 + 8))(v90, v92);
  if (v89)
  {
    swift_beginAccess();
    if (*(a9 + 16))
    {
    }

    else
    {
      type metadata accessor for NSFileProviderError(0);
      v123[0] = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v95;
      swift_getErrorValue();
      v96 = v123[3];
      v97 = v124;
      *(inited + 72) = v124;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*(*(v97 - 8) + 16))(boxed_opaque_existential_0, v96, v97);
      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v99 = v125;
      v100 = sub_1CF9E57E8();

      swift_beginAccess();
      v101 = *(a9 + 16);
      *(a9 + 16) = v100;
    }

    a3 = v107;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1CF5CEE58(uint64_t a1, uint64_t a2, char a3, uint64_t **a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, void *), uint64_t a13, uint64_t a14)
{
  v117 = a6;
  v118 = a7;
  v116 = a5;
  v113 = *a4;
  v114 = a8;
  v18 = sub_1CF9E6118();
  v115 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110 - v22;
  v24 = sub_1CF9E64A8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v111 = a13;
    v112 = a12;
    v110 = a14;
    v28 = (a9 + 16);
    if (a3)
    {
      v114 = v18;
      swift_beginAccess();
      v29 = *v28;
      if (*v28)
      {
        v30 = v29;
        v31 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v32 = v30;
        v33 = v118;
        sub_1CEFD09A0(v118);
        v34 = v117;

        v35 = sub_1CF9E6108();
        v36 = sub_1CF9E72C8();

        v34, v37, v38, v39, v40, v41, v42, v43;
        v44 = os_log_type_enabled(v35, v36);
        v45 = v112;
        if (v44)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v119[0] = swift_slowAlloc();
          v48 = v119[0];
          *v46 = 136446722;
          *(v46 + 4) = sub_1CEFD0DF0(v116, v34, v119);
          *(v46 + 12) = 2080;
          v49 = sub_1CF665B0C(v33, v113[77], v113[78], v113[79], v113[80]);
          v50 = v33;
          v52 = v51;
          sub_1CF5DE5B8(v50);
          v53 = sub_1CEFD0DF0(v49, v52, v119);
          v52, v54, v55, v56, v57, v58, v59, v60;
          *(v46 + 14) = v53;
          *(v46 + 22) = 2112;
          v61 = [v32 fp_prettyDescription];
          *(v46 + 24) = v61;
          *v47 = v61;
          _os_log_impl(&dword_1CEFC7000, v35, v36, "🚧  finished ingestions of %{public}s for %s with error: %@", v46, 0x20u);
          sub_1CEFCCC44(v47, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v47, -1, -1);
          swift_arrayDestroy();
          v62 = v48;
          v45 = v112;
          MEMORY[0x1D386CDC0](v62, -1, -1);
          MEMORY[0x1D386CDC0](v46, -1, -1);
        }

        else
        {
          sub_1CF5DE5B8(v33);
        }

        (*(v115 + 8))(v23, v114);
        v105 = v110;
        swift_beginAccess();
        v106 = *(v105 + 16);
        v107 = v32;
        v45(v106, v29);
      }

      else
      {
        v76 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v77 = v118;
        sub_1CEFD09A0(v118);
        v78 = v117;

        v79 = sub_1CF9E6108();
        v80 = sub_1CF9E72C8();
        v78, v81, v82, v83, v84, v85, v86, v87;
        if (os_log_type_enabled(v79, v80))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = v78;
          v91 = v89;
          v119[0] = v89;
          *v88 = 136446466;
          *(v88 + 4) = sub_1CEFD0DF0(v116, v90, v119);
          *(v88 + 12) = 2080;
          v92 = sub_1CF665B0C(v77, v113[77], v113[78], v113[79], v113[80]);
          v93 = v77;
          v94 = v92;
          v96 = v95;
          sub_1CF5DE5B8(v93);
          v97 = sub_1CEFD0DF0(v94, v96, v119);
          v96, v98, v99, v100, v101, v102, v103, v104;
          *(v88 + 14) = v97;
          _os_log_impl(&dword_1CEFC7000, v79, v80, "🚧  finished ingestions of %{public}s for %s", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v91, -1, -1);
          MEMORY[0x1D386CDC0](v88, -1, -1);
        }

        else
        {
          sub_1CF5DE5B8(v77);
        }

        (*(v115 + 8))(v20, v114);
        v108 = v112;
        v109 = v110;
        swift_beginAccess();
        v108(*(v109 + 16), 0);
      }
    }

    else
    {
      v63 = a4[8];
      *v27 = v63;
      (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
      v64 = v63;
      LOBYTE(v63) = sub_1CF9E64D8();
      v65 = (*(v25 + 8))(v27, v24);
      if (v63)
      {
        v66 = MEMORY[0x1EEE9AC00](v65);
        *(&v110 - 14) = v68;
        *(&v110 - 13) = v67;
        v70 = v116;
        v69 = v117;
        *(&v110 - 12) = a4;
        *(&v110 - 11) = v70;
        *(&v110 - 10) = v69;
        *(&v110 - 9) = a2;
        v71 = v114;
        *(&v110 - 8) = v118;
        *(&v110 - 7) = v71;
        *(&v110 - 6) = v28;
        *(&v110 - 5) = v72;
        v74 = v111;
        v73 = v112;
        *(&v110 - 4) = v75;
        *(&v110 - 3) = v73;
        *(&v110 - 2) = v74;
        ((*a4)[54])(2, sub_1CF5DFFB8, v66);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1CF5CF584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t *, uint64_t), unint64_t a6, uint64_t a7, void **a8, uint64_t (*a9)(void, void), uint64_t a10, void (**a11)(uint64_t, uint64_t *, uint64_t), NSObject *a12)
{
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_beginAccess();
  v18 = *a8;
  v19 = v18;
  sub_1CF5CD4AC(a3, a4, a5, a6, a7, v18, v17, a9, a10, a11, a12, v15, v16);
}

double sub_1CF5CF660(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t *, uint64_t), NSObject *a5, void *a6, uint64_t (*a7)())
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = v7;
  v15[5] = a2;

  sub_1CF5CD4AC(0x206E776F6E6B6E75, 0xED0000736D657469, 0, a1, a2, 0, a3, sub_1CF5DFE2C, v15, a4, a5, a6, a7);

  return result;
}

uint64_t sub_1CF5CF754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(**(a3 + 24) + 560))(a2, a4, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v10, v8, v9);
  if (v4)
  {
    return v12 & 1 | 0x300u;
  }

  return result;
}

void sub_1CF5CF828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t *, uint64_t), NSObject *a6, void *a7, uint64_t (*a8)())
{
  v9 = v8;
  v40 = a7;
  v41 = a8;
  v43 = a6;
  v44 = a5;
  v45 = a2;
  v46 = a4;
  v42 = a3;
  v39 = a1;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v36 = *(*v8 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v35 - v16;
  v47 = 0;
  v48 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6C6562206E616373, 0xEB0000000020776FLL, v15);
  swift_getAssociatedConformanceWitness();
  v18 = v39;
  sub_1CF9E7FE8();
  v37 = v48;
  v38 = v47;
  (*(v13 + 16))(v17, v18, AssociatedTypeWitness);
  v19 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v11;
  v22 = *(v10 + 624);
  v23 = v10;
  v24 = v40;
  v25 = v41;
  *(v21 + 3) = v22;
  *(v21 + 4) = v24;
  *(v21 + 5) = v36;
  *(v21 + 6) = *(v23 + 640);
  *(v21 + 7) = v25;
  *(v21 + 8) = v9;
  (*(v13 + 32))(&v21[v19], v17, AssociatedTypeWitness);
  v26 = v42;
  *&v21[v20] = v42;

  v27 = v37;
  sub_1CF5CD4AC(v38, v37, 0, v45, v26, 0, v46, sub_1CF5DFFE4, v21, v44, v43, v24, v25);

  v27, v28, v29, v30, v31, v32, v33, v34;
}

uint64_t sub_1CF5CFADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 24) + 568))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1 | 0x600u;
  }

  return result;
}

double sub_1CF5CFBB8(void (*a1)(void *, __n128), uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4[82] & 0x20) != 0)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Materialization or eviction waiting for flush", v17, 2u);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v20 = *(*a4 + 456);
    swift_retain_n();
    v21 = a3;
    v20("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF5E14F0, v18, sub_1CF5E1524, v19);
  }

  else
  {
    a1(a3, v10);
  }

  return result;
}

uint64_t sub_1CF5CFE1C(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, ValueMetadata *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a6;
  v31 = a7;
  v32 = a5;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v18 = a2;
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();

  if (os_log_type_enabled(v19, v20))
  {
    v28 = a4;
    v29 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    if (a2)
    {
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v21 + 4) = v24;
    *v22 = v25;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "materializtion after injection failed with %@ skipping error", v21, 0xCu);
    sub_1CEFCCC44(v22, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);
    a3 = v29;
  }

  (*(v14 + 8))(v16, v13);
  v33 = v30;
  v34 = v31;
  v35 = a9;
  v36 = a10;
  v33 = type metadata accessor for UserRequest(255, &v33);
  v34 = &type metadata for MaterializationRequestOptions;
  v35 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v36 = sub_1CF9E6448();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a3(*(v32 + *(TupleTypeMetadata + 96)), *(v32 + *(TupleTypeMetadata + 96) + 8), 0);
}

double sub_1CF5D00A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v46 = a5;
  v47 = a1;
  v48 = a4;
  v6 = *a3;
  v7 = sub_1CF9E6118();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[77];
  v43 = v6[78];
  v10 = v6[79];
  v44 = v6[80];
  v49[0] = v9;
  v49[1] = v43;
  v49[2] = v10;
  v49[3] = v44;
  v11 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v49);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = *(v12 + 16);
  v19(&v39 - v17, v45, v11, v16);
  (v19)(v14, v18, v11);
  v20 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v21 = v46;
  v22 = swift_allocObject();
  v45 = v9;
  *(v22 + 2) = v9;
  v23 = v43;
  v24 = v48;
  *(v22 + 3) = v43;
  *(v22 + 4) = v24;
  v39 = v10;
  *(v22 + 5) = v10;
  v25 = v44;
  *(v22 + 6) = v44;
  *(v22 + 7) = v21;
  (*(v12 + 32))(&v22[v20], v18, v11);
  if ((*(a3 + 82) & 0x20) != 0)
  {
    v27 = a3;
    v28 = v47;
    (*(v12 + 8))(v14, v11);
    v29 = fpfs_current_or_default_log();
    v30 = v40;
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Materialization or eviction waiting for flush", v33, 2u);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    (*(v41 + 8))(v30, v42);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1CF5DED18;
    *(v34 + 24) = v22;
    v35 = swift_allocObject();
    v35[2] = sub_1CF5DED18;
    v35[3] = v22;
    v36 = v28;
    v35[4] = v28;
    v37 = *(*v27 + 456);
    swift_retain_n();
    v38 = v36;
    v37("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF5E14F0, v34, sub_1CF5DEDFC, v35);
  }

  else
  {
    sub_1CF5D4EF4(v47, v14, v45, v23, v48, v39, v25, v21, &unk_1F4C0A6A8, sub_1CF5E14AC);

    (*(v12 + 8))(v14, v11);
  }

  return result;
}

double sub_1CF5D0548(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a7;
  v68 = a8;
  v61 = a6;
  v75 = a1;
  v76 = a5;
  v65 = a4;
  v64 = a2;
  v63 = a12;
  v62 = a11;
  v66 = a9;
  v13 = *a3;
  v71 = sub_1CF9E63A8();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v13[77];
  v57 = v13[79];
  v18 = v57;
  v19 = v17;
  v59 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v53 - v22;
  v54 = &v53 - v22;
  v58 = v13[78];
  *&v24 = v19;
  *(&v24 + 1) = v58;
  v56 = v13[80];
  v25 = a3;
  v55 = a3;
  *&v26 = v18;
  *(&v26 + 1) = v56;
  v79 = v26;
  aBlock = v24;
  v27 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, &aBlock);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v53 - v31;
  v60 = v25[8];
  (*(v28 + 16))(&v53 - v31, v61, v27, v30);
  (*(v21 + 16))(v23, a10, AssociatedTypeWitness);
  v33 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v34 = (v29 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v21 + 80) + v36 + 8) & ~*(v21 + 80);
  v38 = swift_allocObject();
  v39 = v58;
  *(v38 + 16) = v59;
  *(v38 + 24) = v39;
  v40 = v57;
  *(v38 + 32) = v62;
  *(v38 + 40) = v40;
  v41 = v63;
  *(v38 + 48) = v56;
  *(v38 + 56) = v41;
  *(v38 + 64) = v75;
  v64 &= 1u;
  *(v38 + 72) = v64;
  v42 = v76;
  *(v38 + 80) = v65;
  *(v38 + 88) = v42;
  (*(v28 + 32))(v38 + v33, v32, v27);
  v43 = (v38 + v34);
  v44 = v68;
  *v43 = v67;
  v43[1] = v44;
  v45 = v66;
  *(v38 + v35) = v66;
  *(v38 + v36) = v55;
  (*(v21 + 32))(v38 + v37, v54, v53);
  v80 = sub_1CF5DEAC4;
  v81 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_1CEFCA444;
  *(&v79 + 1) = &block_descriptor_32;
  v46 = _Block_copy(&aBlock);
  v47 = v60;
  sub_1CEFCF530(v75, v64);

  v48 = v45;

  v49 = v69;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v51 = v70;
  v50 = v71;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v49, v51, v46);
  _Block_release(v46);

  (*(v74 + 8))(v51, v50);
  (*(v72 + 8))(v49, v73);

  return result;
}

void sub_1CF5D0B84(uint64_t a1, char a2, void (**a3)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a4)(char *, uint64_t, uint64_t), char *a5, void (*a6)(void, unsigned int (*)(char *, uint64_t, uint64_t), uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v118 = a8;
  v117 = a7;
  v116 = a6;
  v150 = a5;
  v147 = a4;
  v148 = a3;
  v114 = a1;
  v11 = *(*a9 + 616);
  v12 = *(*a9 + 624);
  v13 = *a9;
  v14 = *(*a9 + 632);
  v121 = a9;
  v15 = *(v13 + 640);
  v152 = v11;
  v153 = v12;
  v154 = v14;
  v155 = v15;
  v152 = type metadata accessor for UserRequest(255, &v152);
  v153 = &type metadata for MaterializationRequestOptions;
  v154 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v155 = sub_1CF9E6448();
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v112 - v26;
  v149 = v28;
  v132 = sub_1CF9E75D8();
  v29 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v140 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v139 = &v112 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v131 = (&v112 - v35);
  if (a2)
  {
    (v148)(v114, v34);
    return;
  }

  v120 = a10;
  v152 = v11;
  v153 = v12;
  v154 = v14;
  v155 = v15;
  v36 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, &v152);
  v37 = *&v150[*(v36 + 56)];
  v152 = v11;
  v153 = v12;
  v141 = v15;
  v142 = v14;
  v154 = v14;
  v155 = v15;
  type metadata accessor for UserRequest(255, &v152);
  v38 = *(v37 + 64);
  v130 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v127 = v22 + 8;
  v122 = v19 + 8;
  v119 = v27 + 8;
  v115 = (v39 + 63) >> 6;
  v150 = (v17 + 16);
  v147 = (v17 + 48);
  v148 = (v17 + 56);
  v129 = (v29 + 32);
  v125 = (v17 + 8);
  v124 = v37;

  v42 = 0;
  v113 = (v114 + 40);
  v143 = v11;
  v128 = v12;
  v43 = v149;
  v126 = v17;
  v123 = v19;
  v146 = v22;
  v44 = v140;
  v133 = v27;
  while (v41)
  {
    v45 = v42;
LABEL_19:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    (*(v17 + 16))(v44, *(v124 + 56) + *(v17 + 72) * (v48 | (v45 << 6)), v43);
    v49 = 0;
LABEL_20:
    v50 = *v148;
    v51 = 1;
    (*v148)(v44, v49, 1, v43);
    v52 = *v147;
    if ((*v147)(v44, 1, v43) != 1)
    {
      v53 = *(v43 + 80);
      v54 = *(v43 + 96);
      v144 = *v44;
      v138 = *(v44 + 2);
      v55 = sub_1CF9E6448();
      v56 = *(*(v55 - 8) + 32);
      v145 = v52;
      v57 = v133;
      v56(v133 + v53, &v44[v53], v55);
      v58 = swift_allocObject();
      v59 = v139;
      *(v58 + 16) = *&v140[v54];
      v60 = *(v149 + 80);
      v61 = &v59[*(v149 + 96)];
      *v59 = v144;
      *(v59 + 2) = v138;
      v62 = v57 + v53;
      v52 = v145;
      v56(&v59[v60], v62, v55);
      v43 = v149;
      v51 = 0;
      *v61 = sub_1CF5E14AC;
      v61[1] = v58;
    }

    v63 = v139;
    v50(v139, v51, 1, v43);
    v64 = v131;
    (*v129)(v131, v63, v132);
    if (v52(v64, 1, v43) == 1)
    {

      return;
    }

    v65 = v64[1];
    v66 = v64[2];
    v67 = *(v43 + 80);
    v68 = *(v43 + 96);
    v70 = *(v64 + v68);
    v69 = *(v64 + v68 + 8);
    v71 = v151;
    v72 = &v151[v68];
    v138 = *v64;
    *v151 = v138;
    *(v71 + 1) = v65;
    v137 = v65;
    *(v71 + 2) = v66;
    v73 = sub_1CF9E6448();
    v74 = v64;
    v75 = v73;
    v76 = *(v73 - 8);
    v77 = *(v76 + 32);
    v136 = v67;
    v77(&v71[v67], v74 + v67, v73);
    *&v144 = v70;
    *v72 = v70;
    *(v72 + 1) = v69;
    v145 = v69;
    v78 = v128;
    v79 = v146;
    v80 = *v150;
    (*v150)(v146, v71, v43);
    v81 = *v79;

    v82 = *(v43 + 80);

    v83 = sub_1CF6656D8(v81, v143, v78, v142, v141);
    v84 = sub_1CF5DE5B8(v81);
    if (v83)
    {
      v85 = *(v76 + 8);
      v85(&v146[v82], v75, v84);
      if ([v83 selectedForMaterialization])
      {
        v116(v144, v145, v118);

LABEL_7:
        v43 = v149;
        goto LABEL_8;
      }

      v135 = v85;
    }

    else
    {
      v135 = *(v76 + 8);
      v135(&v146[v82], v75, v84);
    }

    v86 = v123;
    v43 = v149;
    v80(v123, v151, v149);
    v87 = *v86;

    v88 = *(v43 + 80);

    v89 = sub_1CF6656D8(v87, v143, v78, v142, v141);
    v90 = sub_1CF5DE5B8(v87);
    v134 = v80;
    if (v89)
    {
      v91 = [v89 requestedExtent];
      v93 = v92;

      v94 = v86 + v88;
      v95 = v135;
      (v135)(v94, v75);
      if (v91 != -1)
      {
        v96 = v133;
        if (v93 != -1)
        {
          v97 = &v91[v93];
          if (__OFADD__(v91, v93))
          {
            goto LABEL_54;
          }

          if (v97 < v91)
          {
            goto LABEL_55;
          }

          v98 = *(v114 + 16) + 1;
          v99 = v113;
          while (--v98)
          {
            v100 = *(v99 - 1);
            if (v97 < v100)
            {
              break;
            }

            v102 = *v99;
            v99 += 2;
            v101 = v102;
            if (v91 >= v100 && v91 < v101 && v101 >= v97)
            {
              v116(v144, v145, v118);
              goto LABEL_7;
            }
          }
        }

        v43 = v149;
        goto LABEL_48;
      }

      v43 = v149;
    }

    else
    {
      v105 = v86 + v88;
      v95 = v135;
      v135(v105, v75, v90);
    }

    v96 = v133;
LABEL_48:
    v106 = v75;
    v107 = v151;
    v108 = sub_1CF53499C(v120, v138, v137, &v151[v136], v144, v145);
    v134(v96, v107, v43);
    sub_1CF5DE5B8(*v96);
    v109 = v96[2];
    v110 = *(v43 + 80);

    v95(v96 + v110, v106);
    v111 = [v109 totalUnitCount];
    if (__OFADD__(v111, 1))
    {
      goto LABEL_53;
    }

    [v109 setTotalUnitCount_];
    [v109 addChild:v108 withPendingUnitCount:1];

LABEL_8:
    (*v125)(v151, v43);
    v17 = v126;
    v44 = v140;
  }

  if (v115 <= v42 + 1)
  {
    v46 = v42 + 1;
  }

  else
  {
    v46 = v115;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v45 >= v115)
    {
      v41 = 0;
      v49 = 1;
      v42 = v47;
      goto LABEL_20;
    }

    v41 = *(v130 + 8 * v45);
    ++v42;
    if (v41)
    {
      v42 = v45;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1CF5D1668(unsigned __int8 a1, void (*a2)(void, void), int a3, unint64_t a4, uint64_t a5, void *a6, char *a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)(uint64_t a1))
{
  v169 = a8;
  v175 = a7;
  v176 = a5;
  v178 = a4;
  v179 = a6;
  LODWORD(v191) = a3;
  v188 = a1;
  v12 = sub_1CF9E6118();
  v167 = *(v12 - 8);
  v168 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v165 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v163 = &v161 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v164 = (&v161 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BC0, &qword_1CFA07A68);
  v171 = *(v17 - 8);
  v172 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v173 = &v161 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v186 = &v161 - v20;
  v174 = sub_1CF9E6448();
  v182 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v170 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v190 = &v161 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v183 = *(v24 - 8);
  v184 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v180 = &v161 - v25;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v187 = *(v189 - 8);
  v26 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v27 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v161 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v161 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v161 - v35;
  v36 = a2;
  v198 = a2;
  v37 = v191;
  v199 = v191;
  v161 = a9;
  v196 = a9;
  v162 = a10;
  v197 = a10;
  v38 = qword_1EDEBBC70;
  swift_beginAccess();
  v192 = a11;
  v181 = v38;
  v39 = *(a11 + v38);
  if (!*(v39 + 16))
  {
    goto LABEL_12;
  }

  v40 = sub_1CF7BF2C0(v36, v37);
  if ((v41 & 1) == 0)
  {
    goto LABEL_12;
  }

  v42 = v187;
  sub_1CEFCCBDC(*(v39 + 56) + *(v187 + 72) * v40, v33, &unk_1EC4C04C0, &qword_1CFA07B10);
  v43 = v185;
  sub_1CEFE55D0(v33, v185, &unk_1EC4C04C0, &qword_1CFA07B10);
  if (*v43 != v188)
  {
    sub_1CEFCCBDC(v43, v30, &unk_1EC4C04C0, &qword_1CFA07B10);
    sub_1CEFCCBDC(v30, v27, &unk_1EC4C04C0, &qword_1CFA07B10);
    v49 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v50 = swift_allocObject();
    sub_1CEFE55D0(v30, v50 + v49, &unk_1EC4C04C0, &qword_1CFA07B10);
    v51 = v192;
    if ((*(v192 + 82) & 0x20) != 0)
    {
      sub_1CEFCCC44(v27, &unk_1EC4C04C0, &qword_1CFA07B10);
      v54 = fpfs_current_or_default_log();
      v55 = v166;
      sub_1CF9E6128();
      v56 = sub_1CF9E6108();
      v57 = sub_1CF9E7298();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1CEFC7000, v56, v57, "Wait for materialization waiting for flush", v58, 2u);
        MEMORY[0x1D386CDC0](v58, -1, -1);
      }

      (*(v167 + 8))(v55, v168);
      v59 = swift_allocObject();
      *(v59 + 16) = sub_1CF5DE6B8;
      *(v59 + 24) = v50;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_1CF5DE6B8;
      *(v60 + 24) = v50;
      v61 = *(*v51 + 456);
      swift_retain_n();
      v61("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v59, sub_1CF5E14C8, v60);
    }

    else
    {
      sub_1CF4810BC();
      v52 = swift_allocError();
      *v53 = 0;
      sub_1CF5D49B4(v52, v27);

      sub_1CEFCCC44(v27, &unk_1EC4C04C0, &qword_1CFA07B10);
    }

    v62 = v198;
    v63 = v199;
    v64 = v186;
    (*(v42 + 56))(v186, 1, 1, v189);
    swift_beginAccess();
    sub_1CF1CA348(v64, v62, v63);
    swift_endAccess();

    sub_1CEFCCC44(v43, &unk_1EC4C04C0, &qword_1CFA07B10);
LABEL_12:
    v65 = v192;
    v66 = v190;
    (*(**(v192 + 4) + 240))(&v198, 1, &v196, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v67 = v184;
    if ((*(v183 + 48))(v66, 1, v184) == 1)
    {
      sub_1CEFCCC44(v66, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if (v199 < 2u || v198)
      {
        sub_1CF4810BC();
        v100 = swift_allocError();
        *v101 = 1;
        sub_1CF5D5580(v100, v65);

        return 0;
      }

      sub_1CF9E6408();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B48, &qword_1CFA0CCF0);
      v68 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1CF9FA450;
      v70 = (v69 + v68);
      v72 = v172;
      v71 = v173;
      v73 = v177;
      v74 = *(v172 + 48) + *(v177 + 80);
      v75 = v182;
      v76 = v174;
      (*(v182 + 16))(&v173[v74], v175, v174);
      v77 = v179;
      v191 = v70;
      *v70 = v179;
      v78 = (v70 + *(v72 + 48));
      v79 = v178;
      v80 = v176;
      *v78 = v178;
      v78[1] = v80;
      v78[2] = v77;
      (*(v75 + 32))(v78 + *(v73 + 80), &v71[v74], v76);
      v81 = (v78 + *(v73 + 96));
      *v81 = nullsub_1;
      v81[1] = 0;
      v82 = sub_1CF4E4B1C(v69);
      swift_setDeallocating();
      sub_1CEFD09A0(v79);
      v83 = v77;
      sub_1CEFCCC44(v191, &qword_1EC4C0BC0, &qword_1CFA07A68);
      swift_deallocClassInstance();
      v85 = v186;
      v84 = v187;
      *v186 = v188;
      *(v85 + *(v189 + 56)) = v82;
      (*(v84 + 56))(v85, 0, 1);
      swift_beginAccess();
      sub_1CF1CA348(v85, 0, 2);
      swift_endAccess();
      return 1;
    }

    v86 = v180;
    sub_1CEFE55D0(v66, v180, &unk_1EC4BE360, &qword_1CF9FE650);
    v87 = (v86 + *(v67 + 48));
    v88 = *v87;
    if (v88 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v89 = swift_allocError();
      v91 = v90;
      sub_1CF5DE680(v195);
      *v91 = v195[0];
      v92 = v195[1];
      v93 = v195[2];
      v94 = v195[4];
      *(v91 + 48) = v195[3];
      *(v91 + 64) = v94;
      *(v91 + 16) = v92;
      *(v91 + 32) = v93;
      v95 = v195[5];
      v96 = v195[6];
      v97 = v195[7];
      *(v91 + 128) = v195[8];
      *(v91 + 96) = v96;
      *(v91 + 112) = v97;
      *(v91 + 80) = v95;
      v98 = v89;
LABEL_18:
      sub_1CF5D5580(v98, v65);

LABEL_19:
      sub_1CEFCCC44(v86, &unk_1EC4BE360, &qword_1CF9FE650);
      return 0;
    }

    if ((v169 & 1) == 0)
    {
      if ((v188 | 2) == 3)
      {
        if (v87[*(type metadata accessor for ItemMetadata(0) + 80)] == 1)
        {
          sub_1CF5D5580(0, v65);
          goto LABEL_25;
        }
      }

      else
      {
        sub_1CF7EB934(v198, v199, v161, v162, v195);
        memcpy(v194, v195, sizeof(v194));
        v136 = sub_1CEFF755C();
        if (v136 == 1)
        {
          memcpy(v193, v195, sizeof(v193));
          sub_1CEFCCC44(v193, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CF4810BC();
          v98 = swift_allocError();
          v89 = v98;
          *v137 = 1;
          goto LABEL_18;
        }

        memcpy(v193, v195, sizeof(v193));
        if (v193[32])
        {
          sub_1CF4810BC();
          v138 = swift_allocError();
          *v139 = 1;
          sub_1CF5D5580(v138, v65);

          sub_1CEFCCC44(v193, &unk_1EC4BFC20, &unk_1CFA0A290);
          goto LABEL_19;
        }

        v140 = BYTE1(v193[17]);
        if (v87[*(type metadata accessor for ItemMetadata(0) + 80)])
        {
          sub_1CEFCCC44(v193, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          sub_1CEFCCC44(v193, &unk_1EC4BFC20, &unk_1CFA0A290);
          if (v140 == 6)
          {
            sub_1CF5D5580(0, v65);
            if (!v188)
            {
              v102 = &unk_1EC4BFDB0;
              v103 = &unk_1CF9FAE50;
LABEL_26:
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(v102, v103);
              v105 = *(v65 + 3);
              sub_1CF8DCAA0(v106);
              v107 = swift_allocObject();
              *(v107 + 16) = xmmword_1CF9FA450;
              *(v107 + 32) = v104;
              v119 = (*(*v105 + 312))(v86, v107, &v196, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v107, v120, v121, v122, v123, v124, v125, v126;
              if (v119 >> 62)
              {
                v127 = sub_1CF9E7818();
              }

              else
              {
                v127 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v128 = v127 != 0;
              sub_1CEFCCC44(v86, &unk_1EC4BE360, &qword_1CF9FE650);
              v119, v129, v130, v131, v132, v133, v134, v135;
              return v128;
            }

LABEL_25:
            v102 = &qword_1EC4BDA50;
            v103 = &unk_1CFA05480;
            goto LABEL_26;
          }
        }
      }

      v88 = *v87;
    }

    v141 = v170;
    if (v88 == 1)
    {
      sub_1CF9E6408();
    }

    else
    {
      sub_1CF9E6418();
    }

    v191 = v198;
    v142 = *(v189 + 52);
    v143 = *(v182 + 16);
    LODWORD(v190) = v199;
    v144 = v174;
    v143(&v186[v142], v141, v174);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B48, &qword_1CFA0CCF0);
    v145 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_1CF9FA450;
    v147 = (v146 + v145);
    v148 = v172;
    v149 = v173;
    v150 = v177;
    v151 = *(v172 + 48) + *(v177 + 80);
    v143(&v173[v151], v175, v144);
    v152 = v179;
    *v147 = v179;
    v153 = (v147 + *(v148 + 48));
    v154 = v178;
    v155 = v176;
    *v153 = v178;
    v153[1] = v155;
    v153[2] = v152;
    (*(v182 + 32))(v153 + *(v150 + 80), &v149[v151], v144);
    v156 = (v153 + *(v150 + 96));
    *v156 = nullsub_1;
    v156[1] = 0;
    v157 = sub_1CF4E4B1C(v146);
    swift_setDeallocating();
    sub_1CEFD09A0(v154);
    v158 = v152;
    sub_1CEFCCC44(v147, &qword_1EC4C0BC0, &qword_1CFA07A68);
    swift_deallocClassInstance();
    v160 = v186;
    v159 = v187;
    *v186 = v188;
    *(v160 + *(v189 + 56)) = v157;
    (*(v159 + 56))(v160, 0, 1);
    swift_beginAccess();
    sub_1CF1CA348(v160, v191, v190);
    swift_endAccess();
    (*(v182 + 8))(v170, v144);
    sub_1CEFCCC44(v180, &unk_1EC4BE360, &qword_1CF9FE650);
    return 1;
  }

  v44 = v198;
  v45 = v199;
  v46 = sub_1CF5A5660(v195);
  v47 = sub_1CF598710(v194, v44, v45);
  if ((*(v42 + 48))(v48, 1, v189))
  {
    (v47)(v194, 0);
    (v46)(v195, 0);
  }

  else
  {
    v108 = v177;
    v109 = *(v177 + 80);
    v191 = v47;
    v192 = v46;
    v110 = v182;
    v111 = v163;
    v112 = v174;
    (*(v182 + 16))(&v163[v109], v175, v174);
    v113 = v178;
    v114 = v179;
    v115 = v164;
    v116 = v176;
    *v164 = v178;
    *(v115 + 8) = v116;
    *(v115 + 16) = v114;
    v117 = v112;
    v43 = v185;
    (*(v110 + 32))(v115 + *(v108 + 80), &v111[v109], v117);
    v118 = (v115 + *(v108 + 96));
    *v118 = nullsub_1;
    v118[1] = 0;
    (*(v165 + 56))(v115, 0, 1, v108);
    sub_1CEFD09A0(v113);
    sub_1CF1CA0F4(v115, v114);
    (v191)(v194, 0);
    (v192)(v195, 0);
  }

  sub_1CEFCCC44(v43, &unk_1EC4C04C0, &qword_1CFA07B10);
  return 2;
}

uint64_t sub_1CF5D2970(int a1, uint64_t (*a2)(uint64_t a1), unint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, void (*a9)(void *, __n128), uint64_t a10, void (*a11)(void, void), uint64_t a12)
{
  v285 = a8;
  v246 = a7;
  v262 = a6;
  v267 = a5;
  v264 = a4;
  v266 = a3;
  v293 = a2;
  v281 = a1;
  v289 = a12;
  v291 = a11;
  v288 = a10;
  v287 = a9;
  v14 = *(*v12 + 624);
  v15 = *(*v12 + 632);
  v16 = *(*v12 + 640);
  v297 = *(*v12 + 616);
  v13 = v297;
  v298 = v14;
  v299 = v15;
  v300 = v16;
  v297 = type metadata accessor for UserRequest(255, &v297);
  v298 = &type metadata for MaterializationRequestOptions;
  v261 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v299 = v261;
  v300 = sub_1CF9E6448();
  v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v251 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v253 = &v237 - v18;
  v265 = sub_1CF9E6448();
  v269 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v268 = &v237 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v250 = &v237 - v21;
  v297 = v13;
  v298 = v14;
  v299 = v15;
  v300 = v16;
  v22 = type metadata accessor for ItemReconciliation(255, &v297);
  v241 = sub_1CF9E75D8();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v245 = &v237 - v23;
  v243 = v22;
  v244 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v242 = &v237 - v25;
  v27 = type metadata accessor for SnapshotItem(255, v13, v15, v26);
  v259 = sub_1CF9E75D8();
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v283 = &v237 - v28;
  v274 = v27;
  v271 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v260 = &v237 - v30;
  v256 = sub_1CF9E6118();
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](v32);
  v247 = &v237 - v33;
  v263 = TupleTypeMetadata;
  v34 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v249 = (&v237 - v35);
  v292 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v286 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v278 = &v237 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v270 = &v237 - v39;
  v297 = v13;
  v298 = v14;
  v279 = v14;
  v299 = v15;
  v300 = v16;
  v280 = v16;
  v40 = type metadata accessor for ConcreteDatabase.MaterializationRequest(255, &v297);
  v276 = sub_1CF9E75D8();
  v275 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v273 = &v237 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v237 - v43;
  v45 = *(v40 - 1);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v277 = (&v237 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v237 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v237 - v52;
  v54 = qword_1EDEBBC70;
  swift_beginAccess();
  v290 = v12;
  v272 = v54;
  v55 = *(v12 + v54);
  v282 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = *(AssociatedConformanceWitness + 40);

  v284 = v56;
  sub_1CF9E6728();
  v55, v57, v58, v59, v60, v61, v62, v63;
  v64 = *(v45 + 48);
  if (v64(v44, 1, v40) == 1)
  {
    v277 = v40;
    (*(v275 + 8))(v44, v276);
    v65 = v290;
    v66 = v289;
    goto LABEL_12;
  }

  v275 = *(v45 + 32);
  (v275)(v53, v44, v40);
  v67 = v53;
  if (*v53 != v281)
  {
    v239 = AssociatedTypeWitness;
    v71 = *(v45 + 16);
    v238 = v53;
    v71(v50);
    (v71)(v277, v50, v40);
    v72 = (*(v45 + 80) + 64) & ~*(v45 + 80);
    v73 = swift_allocObject();
    v74 = v292;
    v75 = v279;
    *(v73 + 2) = v292;
    *(v73 + 3) = v75;
    v276 = v45;
    v76 = v291;
    v77 = v282;
    *(v73 + 4) = v291;
    *(v73 + 5) = v77;
    v78 = v280;
    v79 = v289;
    *(v73 + 6) = v280;
    *(v73 + 7) = v79;
    (v275)(&v73[v72], v50, v40);
    v80 = v40;
    v65 = v290;
    v81 = *(v290 + 82);
    v270 = v73;
    if ((v81 & 0x20) != 0)
    {
      v45 = v276;
      v88 = v277;
      v89 = v80;
      v277 = *(v276 + 8);
      (v277)(v88, v80);
      v90 = fpfs_current_or_default_log();
      v91 = v254;
      sub_1CF9E6128();
      v92 = sub_1CF9E6108();
      v93 = sub_1CF9E7298();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1CEFC7000, v92, v93, "Wait for materialization waiting for flush", v94, 2u);
        MEMORY[0x1D386CDC0](v94, -1, -1);
      }

      (*(v255 + 8))(v91, v256);
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1CF5DE574;
      *(v95 + 24) = v73;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_1CF5DE574;
      *(v96 + 24) = v73;
      v97 = (*v65)[57];
      swift_retain_n();
      v97("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v95, sub_1CF5DE594, v96);

      v80 = v89;
      v86 = v289;
      v87 = v277;
    }

    else
    {
      sub_1CF4810BC();
      v82 = swift_allocError();
      *v83 = 0;
      v84 = v277;
      v85 = v78;
      v86 = v289;
      sub_1CF5D4EF4(v82, v277, v74, v75, v76, v77, v85, v289, &unk_1F4C0A220, sub_1CF5DE5FC);

      v45 = v276;
      v87 = *(v276 + 8);
      (v87)(v84, v80);
    }

    AssociatedTypeWitness = v239;
    (*(v286 + 16))(v278, v293, v239);
    (*(v45 + 56))(v273, 1, 1, v80);
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();

    v277 = v80;
    (v87)(v238, v80);
    v66 = v86;
LABEL_12:
    v98 = v283;
    v99 = v293;
    (*(*v65[4] + 240))(v293, 1, v285, v291, v66);
    v101 = v271;
    v102 = v98;
    v103 = v98;
    v104 = v274;
    v105 = (*(v271 + 48))(v102, 1, v274);
    if (v105 == 1)
    {
      (*(v258 + 8))(v103, v259);
      v106 = v278;
      (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness);
      v107 = sub_1CF9E6868();
      v108 = v286;
      (*(v286 + 8))(v106, AssociatedTypeWitness);
      if (v107)
      {
        (*(v108 + 16))(v106, v99, AssociatedTypeWitness);
        sub_1CF9E6408();
        v297 = v292;
        v298 = v279;
        v299 = v282;
        v300 = v280;
        v297 = type metadata accessor for UserRequest(255, &v297);
        v298 = &type metadata for MaterializationRequestOptions;
        v276 = v45;
        v109 = v265;
        v299 = v261;
        v300 = v265;
        v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
        v293 = swift_getTupleTypeMetadata();
        v110 = swift_getTupleTypeMetadata2();
        sub_1CF9E7FA8();
        swift_allocObject();
        v291 = sub_1CF9E6D68();
        v112 = v111;
        v113 = TupleTypeMetadata2;
        v114 = *(TupleTypeMetadata2 + 48);
        v115 = v263;
        v116 = *(v263 + 80);
        v239 = AssociatedTypeWitness;
        v117 = v114 + v116;
        v118 = v269;
        v119 = v253;
        (*(v269 + 16))(&v253[v114 + v116], v262, v109);
        v120 = v267;
        *v112 = v267;
        v121 = (v112 + *(v113 + 48));
        v122 = v266;
        v123 = v264;
        *v121 = v266;
        v121[1] = v123;
        v121[2] = v120;
        (*(v118 + 32))(v121 + *(v115 + 80), &v119[v117], v109);
        v124 = (v121 + *(v115 + 96));
        v125 = swift_allocObject();
        v126 = v288;
        *(v125 + 16) = v287;
        *(v125 + 24) = v126;
        *v124 = sub_1CF5DE548;
        v124[1] = v125;
        v127 = sub_1CF045898(v291, v110);
        sub_1CEFD09A0(v122);
        v128 = v120;

        v129 = sub_1CF04F294(v127, MEMORY[0x1E69E5FE0], v293, MEMORY[0x1E69E5FE8]);
        v127, v130, v131, v132, v133, v134, v135, v136;
        v137 = v273;
        sub_1CF5B76D4(v281, v268, v129, v292, v279, v282, v280, v273);
        (*(v276 + 56))(v137, 0, 1, v277);
        swift_beginAccess();
        sub_1CF9E6708();
        sub_1CF9E6738();
        swift_endAccess();
        return 1;
      }

      sub_1CF4810BC();
      v158 = swift_allocError();
      *v159 = 1;
      sub_1CF5D57A0(v158, v65, v287, v288);

      return 0;
    }

    v276 = v45;
    v138 = v260;
    (*(v101 + 32))(v260, v103, v104);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v104, WitnessTable, &v297);
    if (v297 == 2)
    {
      type metadata accessor for FileTreeError(0, v292, v282, v140);
      swift_getWitnessTable();
      v141 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      sub_1CF5D57A0(v141, v65, v287, v288);

      (*(v101 + 8))(v138, v104);
      return 0;
    }

    v160 = v138;
    v161 = v291;
    if (v246)
    {
      goto LABEL_40;
    }

    if ((v281 | 2) == 3)
    {
      if ((sub_1CF937C7C(v274, WitnessTable) & 1) == 0)
      {
LABEL_40:
        sub_1CF06D940(v274, WitnessTable, &v297);
        v206 = v282;
        v207 = v250;
        if (v297 == 1)
        {
          sub_1CF9E6408();
        }

        else
        {
          sub_1CF9E6418();
        }

        v208 = *(v286 + 16);
        v239 = AssociatedTypeWitness;
        v208(v278, v293, AssociatedTypeWitness);
        v209 = *(v269 + 16);
        v210 = v207;
        v211 = v265;
        v209(v268, v210);
        v297 = v292;
        v298 = v279;
        v299 = v206;
        v300 = v280;
        v297 = type metadata accessor for UserRequest(255, &v297);
        v298 = &type metadata for MaterializationRequestOptions;
        v299 = v261;
        v300 = v211;
        v212 = v211;
        v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
        v293 = swift_getTupleTypeMetadata();
        v291 = swift_getTupleTypeMetadata2();
        sub_1CF9E7FA8();
        swift_allocObject();
        v100 = 1;
        v290 = sub_1CF9E6D68();
        v214 = v213;
        v215 = TupleTypeMetadata2;
        v216 = v263;
        v217 = *(TupleTypeMetadata2 + 48) + *(v263 + 80);
        v218 = v253;
        (v209)(&v253[v217], v262, v212);
        v219 = v267;
        *v214 = v267;
        v220 = (v214 + *(v215 + 48));
        v221 = v266;
        v222 = v264;
        *v220 = v266;
        v220[1] = v222;
        v220[2] = v219;
        (*(v269 + 32))(v220 + *(v216 + 80), &v218[v217], v212);
        v223 = (v220 + *(v216 + 96));
        v224 = swift_allocObject();
        v225 = v288;
        *(v224 + 16) = v287;
        *(v224 + 24) = v225;
        *v223 = sub_1CF5E1588;
        v223[1] = v224;
        v226 = sub_1CF045898(v290, v291);
        sub_1CEFD09A0(v221);
        v227 = v219;

        v228 = sub_1CF04F294(v226, MEMORY[0x1E69E5FE0], v293, MEMORY[0x1E69E5FE8]);
        v226, v229, v230, v231, v232, v233, v234, v235;
        v236 = v273;
        sub_1CF5B76D4(v281, v268, v228, v292, v279, v282, v280, v273);
        (*(v276 + 56))(v236, 0, 1, v277);
        swift_beginAccess();
        sub_1CF9E6708();
        sub_1CF9E6738();
        swift_endAccess();
        (*(v269 + 8))(v250, v212);
        (*(v271 + 8))(v260, v274);
        return v100;
      }

      sub_1CF5D57A0(0, v65, v287, v288);
    }

    else
    {
      v174 = v245;
      sub_1CF68DDB0(v293, v285, v291, v66, v245);
      v191 = v244;
      v192 = v174;
      v193 = v174;
      v194 = v243;
      v195 = (*(v244 + 48))(v192, 1, v243);
      if (v195 == 1)
      {
        (*(v240 + 8))(v193, v241);
        sub_1CF4810BC();
        v196 = swift_allocError();
        *v197 = 1;
        sub_1CF5D57A0(v196, v65, v287, v288);

LABEL_34:
        (*(v271 + 8))(v160, v274);
        return 0;
      }

      v198 = v242;
      (*(v191 + 32))();
      v199 = &v198[*(v194 + 52)];
      if (*&v199[*(type metadata accessor for ItemReconciliationHalf(0, v279, v280, v200) + 36)])
      {
        sub_1CF4810BC();
        v201 = swift_allocError();
        *v202 = 1;
        sub_1CF5D57A0(v201, v65, v287, v288);

        (*(v244 + 8))(v198, v194);
        goto LABEL_34;
      }

      if (sub_1CF937C7C(v274, WitnessTable))
      {
        (*(v244 + 8))(v242, v194);
        goto LABEL_40;
      }

      v204 = type metadata accessor for ItemReconciliationHalf(0, v292, v282, v203);
      v205 = v242[*(v204 + 56)];
      (*(v244 + 8))();
      if (v205 != 6)
      {
        goto LABEL_40;
      }

      sub_1CF5D57A0(0, v65, v287, v288);
      if (!v281)
      {
        v162 = v292;
        v164 = v279;
        v297 = v292;
        v298 = v279;
        v165 = v282;
        v163 = v280;
        v299 = v282;
        v300 = v280;
        v166 = type metadata accessor for Materialization.EvictItem(0, &v297);
        goto LABEL_29;
      }
    }

    v162 = v292;
    v163 = v280;
    v164 = v279;
    v165 = v282;
    v297 = v292;
    v298 = v279;
    v299 = v282;
    v300 = v280;
    v166 = type metadata accessor for Materialization.MaterializeItem(0, &v297);
LABEL_29:
    v167 = v166;
    v168 = v65[3];
    v297 = v162;
    v298 = v164;
    v299 = v165;
    v300 = v163;
    type metadata accessor for ItemJob(255, &v297);
    MetatypeMetadata = swift_getMetatypeMetadata();
    sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    swift_allocObject();
    v170 = sub_1CF9E6D68();
    *v171 = v167;
    v172 = sub_1CF045898(v170, MetatypeMetadata);
    v173 = v260;
    v175 = (*(*v168 + 312))(v260, v172, v285, v161, v66);
    v172, v176, v177, v178, v179, v180, v181, v182;
    v297 = v175;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v183 = sub_1CF9E7128();
    (*(v271 + 8))(v173, v274);
    v175, v184, v185, v186, v187, v188, v189, v190;
    return (v183 & 1) == 0;
  }

  v68 = v286;
  v69 = v270;
  (*(v286 + 16))(v270, v293, AssociatedTypeWitness);
  v293 = sub_1CF5A5660(v296);
  sub_1CF9E6708();
  v291 = sub_1CF9E6718();
  if (v64(v70, 1, v40))
  {
    v291(v295, 0);
    (*(v68 + 8))(v69, AssociatedTypeWitness);
  }

  else
  {
    v238 = v67;
    v142 = v263;
    v143 = *(v263 + 80);
    v276 = v45;
    v144 = v269;
    v145 = v247;
    v146 = v40;
    v147 = v265;
    (*(v269 + 16))(&v247[v143], v262, v265);
    v148 = v266;
    v239 = AssociatedTypeWitness;
    v149 = v249;
    v150 = v264;
    *v249 = v266;
    v149[1] = v150;
    v151 = v267;
    v149[2] = v267;
    (*(v144 + 32))(v149 + *(v142 + 80), &v145[v143], v147);
    v152 = (v149 + *(v142 + 96));
    v153 = swift_allocObject();
    v154 = v288;
    *(v153 + 16) = v287;
    *(v153 + 24) = v154;
    *v152 = sub_1CF5E1588;
    v152[1] = v153;
    v155 = v142;
    v67 = v238;
    (*(v248 + 56))(v149, 0, 1, v155);
    v294 = v151;
    sub_1CEFD09A0(v148);
    v156 = v151;
    v45 = v276;

    v297 = v292;
    v298 = v279;
    v299 = v282;
    v300 = v280;
    v297 = type metadata accessor for UserRequest(255, &v297);
    v298 = &type metadata for MaterializationRequestOptions;
    v299 = v261;
    v300 = v147;
    v40 = v146;
    v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    sub_1CF9E6708();
    sub_1CF9E6738();
    v291(v295, 0);
    (*(v286 + 8))(v270, v239);
  }

  (v293)(v296, 0);
  (*(v45 + 8))(v67, v40);
  return 2;
}

void sub_1CF5D49B4(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = (&v50 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v14;
  v15 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) + 56));
  v16 = *(v15 + 64);
  v51 = v15 + 64;
  v52 = v4;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v50 = (v17 + 63) >> 6;
  v65 = (v4 + 48);
  v66 = (v4 + 56);
  v53 = v15;

  v20 = 0;
  v57 = v10;
  if (v19)
  {
    while (1)
    {
      v21 = v20;
LABEL_11:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      sub_1CEFCCBDC(*(v53 + 56) + *(v52 + 72) * (v23 | (v21 << 6)), v10, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v24 = 0;
      v64 = v21;
LABEL_12:
      v25 = *v66;
      v26 = 1;
      (*v66)(v10, v24, 1, v3);
      v27 = *v65;
      if ((*v65)(v10, 1, v3) != 1)
      {
        v28 = *(v3 + 80);
        v29 = *(v3 + 96);
        v56 = *v10;
        v30 = *(v10 + 2);
        v54 = v29;
        v55 = v30;
        v31 = sub_1CF9E6448();
        v32 = *(*(v31 - 8) + 32);
        *&v63 = v27;
        v33 = v61;
        v32(&v61[v28], &v10[v28], v31);
        v34 = swift_allocObject();
        *(v34 + 16) = *&v10[v54];
        v35 = *(v3 + 80);
        v36 = v62;
        v37 = (v62 + *(v3 + 96));
        *v62 = v56;
        *(v36 + 2) = v55;
        v32(v36 + v35, &v33[v28], v31);
        v27 = v63;
        v26 = 0;
        *v37 = sub_1CF5E14AC;
        v37[1] = v34;
      }

      v38 = v62;
      v25(v62, v26, 1, v3);
      v39 = v60;
      sub_1CEFE55D0(v38, v60, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v27(v39, 1, v3) == 1)
      {
        break;
      }

      v40 = *(v39 + 16);
      v41 = *(v3 + 80);
      v42 = *(v3 + 96);
      v43 = v61;
      *v61 = *v39;
      *(v43 + 16) = v40;
      v44 = sub_1CF9E6448();
      v45 = *(v44 - 8);
      v46 = *(v45 + 32);
      v63 = *(v39 + v42);
      v46(v43 + v41, v39 + v41, v44);
      *(v43 + v42) = v63;
      v47 = v58;
      sub_1CEFCCBDC(v43, v58, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CF5DE5B8(*v47);

      v48 = *(v3 + 80);
      (*(v47 + *(v3 + 96)))(v59);

      v49 = v43;
      v10 = v57;
      sub_1CEFCCC44(v49, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (*(v45 + 8))(v47 + v48, v44);
      v20 = v64;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v50 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v50;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v50)
      {
        v64 = v22 - 1;
        v19 = 0;
        v24 = 1;
        goto LABEL_12;
      }

      v19 = *(v51 + 8 * v21);
      ++v20;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1CF5D4EF4(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v64 = a10;
  v63 = a9;
  v83 = a3;
  v84 = a4;
  v85 = a6;
  v86 = a7;
  v83 = type metadata accessor for UserRequest(255, &v83);
  v84 = &type metadata for MaterializationRequestOptions;
  v85 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v86 = sub_1CF9E6448();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v76 = (&v60 - v21);
  v74 = sub_1CF9E75D8();
  v80 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = (&v60 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v60 - v26;
  v83 = a3;
  v84 = a4;
  v85 = a6;
  v86 = a7;
  v27 = *(a2 + *(type metadata accessor for ConcreteDatabase.MaterializationRequest(0, &v83) + 56));
  v83 = a3;
  v84 = a4;
  v85 = a6;
  v86 = a7;
  type metadata accessor for UserRequest(255, &v83);
  v28 = *(v27 + 64);
  v61 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v60 = (v29 + 63) >> 6;
  v78 = (v17 + 16);
  v81 = (v17 + 48);
  v82 = (v17 + 56);
  v72 = (v80 + 32);
  v66 = v17;
  v71 = (v17 + 8);
  v67 = v27;

  v32 = 0;
  v65 = a1;
  v62 = v19;
  if (v31)
  {
    while (1)
    {
      v33 = v32;
      v34 = v75;
LABEL_12:
      v36 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      (*(v66 + 16))(v34, *(v67 + 56) + *(v66 + 72) * (v36 | (v33 << 6)), TupleTypeMetadata);
      v37 = 0;
      v80 = v33;
LABEL_13:
      v38 = *v82;
      v39 = 1;
      (*v82)(v34, v37, 1, TupleTypeMetadata);
      v40 = *v81;
      if ((*v81)(v34, 1, TupleTypeMetadata) != 1)
      {
        v41 = *(TupleTypeMetadata + 80);
        v68 = *(TupleTypeMetadata + 96);
        v70 = *v34;
        v69 = *(v34 + 2);
        v42 = sub_1CF9E6448();
        v43 = *(*(v42 - 8) + 32);
        *&v79 = v40;
        v44 = v76;
        v43(v76 + v41, &v34[v41], v42);
        v45 = swift_allocObject();
        *(v45 + 16) = *&v34[v68];
        v46 = *(TupleTypeMetadata + 80);
        v47 = v77;
        v48 = (v77 + *(TupleTypeMetadata + 96));
        *v77 = v70;
        *(v47 + 2) = v69;
        v49 = v44 + v41;
        v40 = v79;
        a1 = v65;
        v43(v47 + v46, v49, v42);
        v19 = v62;
        v39 = 0;
        *v48 = v64;
        v48[1] = v45;
      }

      v50 = v77;
      v38(v77, v39, 1, TupleTypeMetadata);
      v51 = v73;
      (*v72)(v73, v50, v74);
      if (v40(v51, 1, TupleTypeMetadata) == 1)
      {
        break;
      }

      v52 = *(v51 + 2);
      v53 = *(TupleTypeMetadata + 80);
      v54 = *(TupleTypeMetadata + 96);
      v55 = v76;
      *v76 = *v51;
      *(v55 + 2) = v52;
      v56 = sub_1CF9E6448();
      v57 = *(v56 - 8);
      v58 = *(v57 + 32);
      v79 = *&v51[v54];
      v58(v55 + v53, &v51[v53], v56);
      *(v55 + v54) = v79;
      (*v78)(v19, v55, TupleTypeMetadata);
      sub_1CF5DE5B8(*v19);

      v59 = *(TupleTypeMetadata + 80);
      (*(v19 + *(TupleTypeMetadata + 96)))(a1);

      (*v71)(v55, TupleTypeMetadata);
      (*(v57 + 8))(v19 + v59, v56);
      v32 = v80;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v60 <= v32 + 1)
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = v60;
    }

    v34 = v75;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v60)
      {
        v80 = v35 - 1;
        v31 = 0;
        v37 = 1;
        goto LABEL_13;
      }

      v31 = *(v61 + 8 * v33);
      ++v32;
      if (v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_1CF5D5580(void *a1, _BYTE *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  *&result = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[82] & 0x20) != 0)
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "Wait for materialization waiting for flush", v12, 2u);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v13 = swift_allocObject();
    v13[2] = nullsub_1;
    v13[3] = 0;
    v13[4] = a1;
    v14 = *(*a2 + 456);
    v15 = a1;
    v14("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, nullsub_1, 0, sub_1CF5E150C, v13);
  }

  return result;
}

double sub_1CF5D57A0(void *a1, _BYTE *a2, void (*a3)(void *, __n128), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[82] & 0x20) != 0)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Wait for materialization waiting for flush", v17, 2u);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a1;
    v20 = *(*a2 + 456);
    swift_retain_n();
    v21 = a1;
    v20("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v18, sub_1CF5DE634, v19);
  }

  else
  {
    a3(a1, v10);
  }

  return result;
}

uint64_t sub_1CF5D5A04(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v19 = a5;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = a4;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, v19, v14, 2u);
    a4 = v18;
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return a2(a4);
}

void sub_1CF5D5B9C(uint64_t a1, void (*a2)(void), uint64_t a3, const char *a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, a4, v13, 2u);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_1CF4810BC();
  v14 = swift_allocError();
  *v15 = 0;
  a2();
}

void sub_1CF5D5D4C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unsigned __int8 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v389 = a7;
  v398 = a6;
  v388 = a5;
  v397 = a3;
  v392 = a2;
  v372 = a1;
  v396 = *&v7->_os_unfair_lock_opaque;
  v393 = sub_1CF9E6118();
  v395 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v11 = &v366 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v367 = &v366 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v369 = &v366 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v366 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v387 = &v366 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v366 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v371 = &v366 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v399 = &v366 - v27;
  v28 = sub_1CF9E64A8();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = (&v366 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *&v8[16]._os_unfair_lock_opaque;
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28, v30);
  v34 = v33;
  LOBYTE(v33) = sub_1CF9E64D8();
  v36 = *(v29 + 8);
  v35 = v29 + 8;
  v36(v32, v28);
  if ((v33 & 1) == 0)
  {
    goto LABEL_95;
  }

  v37 = [objc_allocWithZone(FPLoggerScope) init];
  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  v39 = v37;
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();

  v42 = os_log_type_enabled(v40, v41);
  v391 = a4;
  v386 = v39;
  v370 = v18;
  v366 = v11;
  v368 = v23;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v385 = v44;
    *&v390 = swift_slowAlloc();
    *&v400 = v390;
    *v43 = 138414850;
    v45 = [v39 enter];
    *(v43 + 4) = v45;
    *v44 = v45;
    *(v43 + 12) = 2080;

    sub_1CF0655D4();
    v47 = v46;
    v49 = v48;

    v50 = sub_1CEFD0DF0(v47, v49, &v400);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 14) = v50;
    *(v43 + 22) = 2080;

    sub_1CF0655D4();
    v59 = v58;
    v61 = v60;

    v62 = sub_1CEFD0DF0(v59, v61, &v400);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v43 + 24) = v62;
    *(v43 + 32) = 2080;

    sub_1CF0655D4();
    v71 = v70;
    v73 = v72;

    v74 = sub_1CEFD0DF0(v71, v73, &v400);
    v73, v75, v76, v77, v78, v79, v80, v81;
    *(v43 + 34) = v74;
    *(v43 + 42) = 2080;

    sub_1CF0655D4();
    v83 = v82;
    v85 = v84;

    v86 = sub_1CEFD0DF0(v83, v85, &v400);
    v85, v87, v88, v89, v90, v91, v92, v93;
    *(v43 + 44) = v86;
    *(v43 + 52) = 2080;

    v94 = sub_1CF52A400();
    v96 = v95;

    v97 = sub_1CEFD0DF0(v94, v96, &v400);
    v96, v98, v99, v100, v101, v102, v103, v104;
    *(v43 + 54) = v97;
    *(v43 + 62) = 2080;

    sub_1CF0655D4();
    v106 = v105;
    v108 = v107;

    v109 = sub_1CEFD0DF0(v106, v108, &v400);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v43 + 64) = v109;
    *(v43 + 72) = 2080;

    sub_1CF0655D4();
    v118 = v117;
    v120 = v119;

    v121 = sub_1CEFD0DF0(v118, v120, &v400);
    v120, v122, v123, v124, v125, v126, v127, v128;
    *(v43 + 74) = v121;
    *(v43 + 82) = 2080;

    sub_1CF0655D4();
    v130 = v129;
    v132 = v131;

    v133 = sub_1CEFD0DF0(v130, v132, &v400);
    v132, v134, v135, v136, v137, v138, v139, v140;
    *(v43 + 84) = v133;
    *(v43 + 92) = 2080;

    sub_1CF0655D4();
    v142 = v141;
    v144 = v143;

    v145 = sub_1CEFD0DF0(v142, v144, &v400);
    v144, v146, v147, v148, v149, v150, v151, v152;
    *(v43 + 94) = v145;
    *(v43 + 102) = 2080;

    v153 = sub_1CF52A400();
    v155 = v154;

    v156 = sub_1CEFD0DF0(v153, v155, &v400);
    v155, v157, v158, v159, v160, v161, v162, v163;
    *(v43 + 104) = v156;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "%@ ⚙️  executing jobs, availabilities update-content-fs:%s update-metadata-only-fs:%s fetch-from-fs:%s other-fs:%s/%s update-content-fp:%s update-metadata-only-fp:%s fetch-from-fp:%s other-fp:%s/%s", v43, 0x70u);
    v164 = v385;
    sub_1CEFCCC44(v385, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v164, -1, -1);
    v165 = v390;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v165, -1, -1);
    MEMORY[0x1D386CDC0](v43, -1, -1);
  }

  else
  {
  }

  (*(v395 + 8))(v399, v393);
  os_unfair_lock_lock(v8 + 52);
  v166 = *&v8[54]._os_unfair_lock_opaque;
  *&v8[54]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(v8 + 52);
  v373 = v166;
  if (v166)
  {
    sub_1CF5A60D0(2, 1, 2);
  }

  *(*&v8[40]._os_unfair_lock_opaque + 50) = 0;

  sub_1CF527D90(v167, v168, v169, v170);

  *&v380 = v401;
  v390 = v400;
  v411 = v400;
  v412 = v401;
  v171 = v396;
  v172 = *(v396 + 632);
  v385 = *(v396 + 616);
  v399 = v172;
  type metadata accessor for JobLockRule(255, v385, v172, v173);
  v384 = &unk_1CFA0A0B8;
  swift_getWitnessTable();
  sub_1CF9E66B8();
  v383 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  *&v382 = MEMORY[0x1E69E5DE8];
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  *&v381 = MEMORY[0x1E69E6CC8];
  swift_getWitnessTable();
  v174 = v8;
  v379 = sub_1CEFCCCEC(&qword_1EDEA3798, &unk_1EC4C1BB0, &unk_1CFA04800, MEMORY[0x1E69E6328]);
  sub_1CF9E7AA8();
  v378 = MEMORY[0x1E69E6C68];
  swift_getWitnessTable();
  v175 = sub_1CF9E7978();
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
  v377 = MEMORY[0x1E69E5DF0];
  WitnessTable = swift_getWitnessTable();
  v376 = MEMORY[0x1E69E6CD0];
  v177 = swift_getWitnessTable();
  v178 = sub_1CEFCCCEC(&qword_1EDEA3790, &unk_1EC4C1BB0, &unk_1CFA04800, MEMORY[0x1E69E6340]);
  v409 = v177;
  v410 = v178;
  v408 = swift_getWitnessTable();
  v179 = swift_getWitnessTable();
  v180 = v394;
  v375 = sub_1CF054A5C(sub_1CF5E14F4, 0, v175, v176, MEMORY[0x1E69E73E0], v179, MEMORY[0x1E69E7410], v181);
  v374 = v180;

  v390, v182, v183, v184, v185, v186, v187, v188;
  *&v390 = v174;

  sub_1CF527D90(v189, v190, v191, v192);

  v380 = v400;
  v411 = v400;
  v412 = v401;
  v193 = *(v171 + 640);
  *&v394 = *(v171 + 624);
  v396 = v193;
  type metadata accessor for JobLockRule(255, v394, v193, v194);
  swift_getWitnessTable();
  sub_1CF9E66B8();
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  sub_1CF9E7AA8();
  swift_getWitnessTable();
  v195 = sub_1CF9E7978();
  v407 = swift_getWitnessTable();
  v405 = swift_getWitnessTable();
  v406 = v178;
  v404 = swift_getWitnessTable();
  v196 = swift_getWitnessTable();
  v197 = v374;
  v199 = sub_1CF054A5C(sub_1CF5E14F4, 0, v195, v176, MEMORY[0x1E69E73E0], v196, MEMORY[0x1E69E7410], v198);

  v380, v200, v201, v202, v203, v204, v205, v206;
  *&v400 = v375;
  sub_1CF06577C(v199);
  v207 = v400;
  if (*(v400 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BD0, &unk_1CFA0CD30);
    v208 = sub_1CF9E7BE8();
  }

  else
  {
    v208 = MEMORY[0x1E69E7CC8];
  }

  v209 = v397;
  *&v400 = v208;
  sub_1CF5DF270(v207, 1, &v400);
  v217 = v390;
  if (v197)
  {
    v207, v210, v211, v212, v213, v214, v215, v216;

    __break(1u);
    return;
  }

  v207, v210, v211, v212, v213, v214, v215, v216;
  v218 = v400;
  v219 = *(v400 + 16);
  *&v220 = v385;
  *(&v220 + 1) = v394;
  v221 = *(v217 + 128);
  *&v222 = v399;
  *(&v222 + 1) = v396;
  v382 = v222;
  v400 = v220;
  v401 = v222;
  v394 = v220;
  v223 = type metadata accessor for Schedulable(0, &v400);
  v224 = sub_1CF9E6DA8();
  *&v411 = v224;
  v385 = v219;
  v383 = v221;
  v396 = v223;
  v384 = v218;
  if (v219 >= v221)
  {
    v399 = 0;
    v231 = fpfs_current_or_default_log();
    v232 = v371;
    sub_1CF9E6128();

    v233 = sub_1CF9E6108();
    v234 = sub_1CF9E72C8();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 134218240;
      *(v235 + 4) = *(v218 + 16);

      *(v235 + 12) = 2048;
      *(v235 + 14) = *(v217 + 128);

      _os_log_impl(&dword_1CEFC7000, v233, v234, "%ld blocked jobs, cannot schedule any more jobs (limit: %ld)", v235, 0x16u);
      MEMORY[0x1D386CDC0](v235, -1, -1);
    }

    else
    {
    }

    v23 = v386;
    v35 = v393;
    (*(v395 + 8))(v232, v393);
  }

  else
  {
    *&v381 = v224;
    v225 = *(v217 + 24);
    v226 = *(v218 + 16);
    if (v226)
    {
      v227 = sub_1CF1F8AD4(*(v218 + 16), 0);
      v228 = sub_1CF1F9A6C(&v400, (v227 + 4), v226, v218);
      v229 = v400;
      v217 = v402;

      v230 = sub_1CEFCB59C(v229);
      if (v228 != v226)
      {
        __break(1u);
        goto LABEL_98;
      }

      v217 = v390;
      v209 = v397;
    }

    else
    {
      v227 = MEMORY[0x1E69E7CC0];
    }

    v236 = swift_allocObject();
    v237 = v398;
    v238 = v389;
    v236[2] = v398;
    v236[3] = v238;
    v236[4] = v217;
    v239 = *(*v225 + 152);

    v240 = v239(v372, v227, v209, sub_1CF5DF558, v236, v237, v238);
    v23 = v386;
    v399 = 0;
    v241 = v240;

    v400 = v394;
    v401 = v382;
    type metadata accessor for SchedulableJob(0, &v400);
    v242 = sub_1CF9E7B48();
    v241, v243, v244, v245, v246, v247, v248, v249;
    sub_1CF9E6DD8();
    v242, v250, v251, v252, v253, v254, v255, v256;
    if ((*(v217 + 80) & 8) != 0)
    {
      v257 = *(v217 + 16);
      v258 = swift_allocObject();
      v259 = v398;
      v260 = v389;
      v258[2] = v398;
      v258[3] = v260;
      v258[4] = v217;
      v261 = *(*v257 + 280);
      v262 = *(v260 + 8);

      v263 = v262;
      v264 = v399;
      v265 = v261(v372, v209, sub_1CF5DF558, v258, v259, v263);
      v399 = v264;
      v35 = v393;
      if (v264)
      {
        v266 = v411;

        v266, v267, v268, v269, v270, v271, v272, v273;
        swift_unknownObjectRelease();
        v274 = fpfs_current_or_default_log();
        v275 = v367;
        sub_1CF9E6128();
        v276 = v23;
        v277 = sub_1CF9E6108();
        v278 = sub_1CF9E7298();

        if (!os_log_type_enabled(v277, v278))
        {

          v283 = *(v395 + 8);
          goto LABEL_92;
        }

        v279 = swift_slowAlloc();
        v280 = v35;
        v281 = swift_slowAlloc();
        *v279 = 138412290;
        v282 = [v276 leave];
        *(v279 + 4) = v282;
        *v281 = v282;
        _os_log_impl(&dword_1CEFC7000, v277, v278, "%@", v279, 0xCu);
        sub_1CEFCCC44(v281, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v281, -1, -1);
        MEMORY[0x1D386CDC0](v279, -1, -1);

        v283 = *(v395 + 8);
        goto LABEL_86;
      }

      v284 = v265;

      v400 = v394;
      v401 = v382;
      type metadata accessor for SchedulableReconciliation(0, &v400);
      v285 = sub_1CF9E7B48();
      v284, v286, v287, v288, v289, v290, v291, v292;
      sub_1CF9E6DD8();
      v285, v293, v294, v295, v296, v297, v298, v299;
    }

    else
    {
      v35 = v393;
    }

    sub_1CF9E6E58();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1CF9E6858();
    v217 = v390;
  }

  v300 = v411;
  v301 = qword_1EDEBBCB0;

  if (!sub_1CF9E6DF8())
  {
    *&v394 = 0;
LABEL_57:

    v230 = swift_bridgeObjectRelease_n();
    goto LABEL_58;
  }

  v379 = v301;
  v18 = 0;
  *&v394 = 0;
  *&v382 = v395 + 8;
  *&v302 = 136315138;
  v381 = v302;
  v303 = v389;
LABEL_29:
  v304 = v18;
  while (1)
  {
    v305 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v305)
    {
      v306 = *(v300 + 8 * v304 + 32);
    }

    else
    {
      v306 = sub_1CF9E7998();
    }

    v18 = v304 + 1;
    v307 = v398;
    if (__OFADD__(v304, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
      goto LABEL_71;
    }

    if (fp_task_tracker_is_cancelled(*(*(v217 + 168) + 16)))
    {

      swift_bridgeObjectRelease_n();
      sub_1CF2CA194();
      v399 = swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease();
      v350 = fpfs_current_or_default_log();
      v275 = v368;
      sub_1CF9E6128();
      v351 = v23;
      v352 = sub_1CF9E6108();
      v353 = sub_1CF9E7298();

      if (!os_log_type_enabled(v352, v353))
      {
        goto LABEL_87;
      }

LABEL_85:
      v355 = swift_slowAlloc();
      v280 = v35;
      v356 = swift_slowAlloc();
      *v355 = 138412290;
      v357 = [v351 leave];
      *(v355 + 4) = v357;
      *v356 = v357;
      _os_log_impl(&dword_1CEFC7000, v352, v353, "%@", v355, 0xCu);
      sub_1CEFCCC44(v356, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v356, -1, -1);
      MEMORY[0x1D386CDC0](v355, -1, -1);

      v283 = *v382;
LABEL_86:
      v358 = v275;
      v359 = v280;
      goto LABEL_93;
    }

    if (v394 >= v392)
    {
      break;
    }

    v230 = objc_sync_enter(v217);
    if (v230)
    {
      goto LABEL_102;
    }

    v308 = v399;
    sub_1CF5D7E78(v217, &v400);
    v399 = v308;
    if (v308)
    {

      v363 = objc_sync_exit(v217);
      MEMORY[0x1EEE9AC00](v363);
      v364 = &v366 - 4;
      *(&v366 - 2) = v217;
      v365 = sub_1CF1C5290;
      goto LABEL_105;
    }

    v309 = objc_sync_exit(v217);
    if (v309)
    {
      MEMORY[0x1EEE9AC00](v309);
      v364 = &v366 - 4;
      *(&v366 - 2) = v217;
      v365 = sub_1CF1C5468;
LABEL_105:
      fp_preconditionFailure(_:file:line:)(v365, v364, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (v400 >= 256)
    {
      break;
    }

    if (v391)
    {
      v310 = v391(v306);
      v307 = v398;
      if ((v310 & 1) == 0)
      {
        v313 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v314 = sub_1CF9E6108();
        v315 = sub_1CF9E7298();

        if (os_log_type_enabled(v314, v315))
        {
          v316 = swift_slowAlloc();
          *&v380 = swift_slowAlloc();
          *&v400 = v380;
          *v316 = v381;
          v403 = v306;

          v317 = sub_1CF9E6948();
          v319 = v318;
          v320 = sub_1CEFD0DF0(v317, v318, &v400);
          v321 = v319;
          v23 = v386;
          v321, v322, v323, v324, v325, v326, v327, v328;
          *(v316 + 4) = v320;
          v35 = v393;
          _os_log_impl(&dword_1CEFC7000, v314, v315, "filter rejected execution of %s", v316, 0xCu);
          v329 = v380;
          __swift_destroy_boxed_opaque_existential_1(v380);
          MEMORY[0x1D386CDC0](v329, -1, -1);
          v330 = v316;
          v217 = v390;
          MEMORY[0x1D386CDC0](v330, -1, -1);
        }

        else
        {
        }

        (*v382)(v387, v35);
        v303 = v389;
        goto LABEL_32;
      }
    }

    v311 = v399;
    v312 = (*(*v306 + 136))(v217, v397, v307, v303);
    v399 = v311;
    if (v311)
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v354 = fpfs_current_or_default_log();
      v275 = v366;
      sub_1CF9E6128();
      v351 = v23;
      v352 = sub_1CF9E6108();
      v353 = sub_1CF9E7298();

      if (os_log_type_enabled(v352, v353))
      {
        goto LABEL_85;
      }

LABEL_87:

      v283 = *v382;
LABEL_92:
      v358 = v275;
      v359 = v35;
LABEL_93:
      v283(v358, v359);

      return;
    }

    if (v312 != 2)
    {
      if (v312)
      {

        swift_bridgeObjectRelease_n();
        *&v394 = v394 + 1;
        v360 = v306[32];

        if (v360 == 1)
        {
          v361 = *(v217 + v379);
          v333 = __OFADD__(v361, 1);
          v362 = v361 + 1;
          v18 = v370;
          if (v333)
          {
            goto LABEL_101;
          }

          *(v217 + v379) = v362;
LABEL_59:
          if (v385 >= v383)
          {
            goto LABEL_65;
          }

          v335 = *(*(*(*(v217 + 40) + 16) + 80) + 16);
          v336 = *(*(*(*(v217 + 40) + 16) + 80) + 24);
          v333 = __OFSUB__(v336, v335);
          v337 = v336 - v335;
          if (!v333)
          {
            if (v337 > 0)
            {
LABEL_64:
              *(*(v217 + 160) + 50) = 1;
LABEL_65:
              if (!*(v217 + 200))
              {
                goto LABEL_68;
              }

              goto LABEL_70;
            }

            v338 = *(*(*(*(v217 + 32) + 16) + 80) + 16);
            v339 = *(*(*(*(v217 + 32) + 16) + 80) + 24);
            v333 = __OFSUB__(v339, v338);
            v340 = v339 - v338;
            if (!v333)
            {
              if (v340 < 1)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }

            goto LABEL_99;
          }

LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          MEMORY[0x1EEE9AC00](v230);
          *(&v366 - 2) = v217;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v366 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

LABEL_58:
        v18 = v370;
        goto LABEL_59;
      }

      v331 = v306[32];

      if (v331 == 1)
      {
        v332 = *(v217 + v379);
        v333 = __OFADD__(v332, 1);
        v334 = v332 + 1;
        if (v333)
        {
          goto LABEL_100;
        }

        *(v217 + v379) = v334;
      }

      *&v394 = v394 + 1;
      if (v18 == sub_1CF9E6DF8())
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

LABEL_32:
    ++v304;
    if (v18 == sub_1CF9E6DF8())
    {
      goto LABEL_57;
    }
  }

  swift_bridgeObjectRelease_n();
  v18 = v370;
  if (!*(v217 + 200))
  {
LABEL_68:
    if (sub_1CF03BB04())
    {
      *(v217 + 200) = os_transaction_create();
      swift_unknownObjectRelease();
    }
  }

LABEL_70:
  v341 = sub_1CF5A0F38();
  sub_1CF06779C(nullsub_1, 0);

  if (qword_1EDEAD4D8 != -1)
  {
    goto LABEL_96;
  }

LABEL_71:
  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  sub_1CF06779C(nullsub_1, 0);
  swift_unknownObjectRelease();
  v342 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v343 = v23;
  v344 = sub_1CF9E6108();
  v345 = sub_1CF9E7298();

  if (os_log_type_enabled(v344, v345))
  {
    v346 = swift_slowAlloc();
    v347 = swift_slowAlloc();
    *v346 = 138412290;
    v348 = [v343 leave];
    *(v346 + 4) = v348;
    *v347 = v348;
    _os_log_impl(&dword_1CEFC7000, v344, v345, "%@", v346, 0xCu);
    sub_1CEFCCC44(v347, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v349 = v347;
    v35 = v393;
    MEMORY[0x1D386CDC0](v349, -1, -1);
    MEMORY[0x1D386CDC0](v346, -1, -1);
  }

  (*(v395 + 8))(v18, v35);
}

uint64_t sub_1CF5D7E00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  *a2 = (*(v5 + 16))(v4, v5);
  a2[1] = v6;
  return sub_1CF1A91AC(a1, (a2 + 2));
}

void sub_1CF5D7E78(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];

  v6 = *(v4 + 632);
  v15[0] = *(v4 + 616);
  v15[1] = v6;
  type metadata accessor for FSOrFPJob(0, v15);
  v7 = sub_1CF9E6698();
  v5, v8, v9, v10, v11, v12, v13, v14;
  *a2 = v7;
}

uint64_t sub_1CF5D7F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E72C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "🚀  engine is stable and flushed", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return a2(0);
}

uint64_t sub_1CF5D80B8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t (*a14)(uint64_t))
{
  if (a2)
  {
    a2();
  }

  v17 = a4();
  v18 = a6(v17);
  if (a8)
  {
    v18 = a8(v18);
  }

  v19 = a10(v18);
  a12(v19);
  return a14(a1);
}

double sub_1CF5D818C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = a1[3];
  v22 = a1[2];
  v23 = v9;
  v10 = a1[5];
  v24 = a1[4];
  v25 = v10;
  v11 = a1[1];
  v20 = *a1;
  v21 = v11;
  v12 = type metadata accessor for FileTreeChangeAggregator(0, a2, a4, a3);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v19, &v20, v12);
  v14 = sub_1CF5B543C(a2, a4, v19);
  (*(v13 + 40))(a1, v19, v12, v14);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6708();

  sub_1CF9E66A8();
  v15 = v23;
  a5[2] = v22;
  a5[3] = v15;
  v16 = v25;
  a5[4] = v24;
  a5[5] = v16;
  result = *&v20;
  v18 = v21;
  *a5 = v20;
  a5[1] = v18;
  return result;
}

uint64_t sub_1CF5D8358@<X0>(uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();

  swift_getWitnessTable();
  result = sub_1CF9E6FE8();
  *a5 = result;
  return result;
}

void sub_1CF5D8458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    for (i = (v8 + 32); ; ++i)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = *i;

      v14 = objc_autoreleasePoolPush();
      (*(*a3 + 2504))(a7, v13);
      if (v7)
      {
        break;
      }

      objc_autoreleasePoolPop(v14);

      if (!--v9)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
    __break(1u);
  }
}

void sub_1CF5D8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v29 = a2;
  v8 = *v3;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v5[8];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *(v8 + 616);
    v28[0] = *(v8 + 632);
    v28[1] = v16;
    *&v30.super.isa = v16;
    *v30.tree = v28[0];
    type metadata accessor for TestingOperation(0, &v30);
    v31 = sub_1CF9E6DA8();
    v17 = v29;
    v18 = (*(*v5[3] + 184))(a1, v29, a3);
    if (v4)
    {
      v31, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v30.super.isa = v18;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E6E08();
      v30.super.isa = (*(*v5[2] + 296))(a1, v17, a3);
      sub_1CF9E6E08();
      v26 = v5 + qword_1EDEBBC20;
      os_unfair_lock_lock((v5 + qword_1EDEBBC20));
      sub_1CF5D8904((v26 + 8), &v31, v5, a1, v17, a3);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7068();
      sub_1CF9E6708();
      os_unfair_lock_unlock(v26);
      v27 = v5 + qword_1EDEBBC28;
      os_unfair_lock_lock((v5 + qword_1EDEBBC28));
      sub_1CF5D8A6C((v27 + 8), &v31, v5, a1, v29, a3, &v30);
      os_unfair_lock_unlock(v27);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF5D8904(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = *a3;
  v13 = a1[3];
  v26 = a1[2];
  v27 = v13;
  v14 = a1[5];
  v28 = a1[4];
  v29 = v14;
  v15 = a1[1];
  v24 = *a1;
  v25 = v15;
  v16 = v12;
  v17 = *(v11 + 616);
  v18 = *(v11 + 632);
  v19 = type metadata accessor for FileTreeChangeAggregator(0, v17, v18, a4);
  result = sub_1CF5AF9C0(a3, a4, v19, a5, a6);
  if (!v6)
  {
    v30 = result;
    v21 = *(v16 + 624);
    v22 = *(v16 + 640);
    v23[0] = v17;
    v23[1] = v21;
    v23[2] = v18;
    v23[3] = v22;
    type metadata accessor for TestingOperation(255, v23);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    return sub_1CF9E6E08();
  }

  return result;
}

void sub_1CF5D8A6C(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7)
{
  v39[2] = a2;
  v40 = a7;
  v11 = *a3;
  v12 = *a3;
  v13 = a1[3];
  v47 = a1[2];
  v48 = v13;
  v14 = a1[5];
  v49 = a1[4];
  v50 = v14;
  v15 = a1[1];
  v45 = *a1;
  v46 = v15;
  v16 = v12;
  v17 = sub_1CF057B28();
  v18 = *(v11 + 624);
  v19 = *(v11 + 640);
  v21 = type metadata accessor for FileTreeChangeAggregator(0, v18, v19, v20);
  v22 = sub_1CF5AF9C0(v17, a4, v21, a5, a6);

  if (v7)
  {
    v40->super.isa = v7;
  }

  else
  {
    v51 = v22;
    MEMORY[0x1EEE9AC00](v23);
    v38[0] = *(v16 + 616);
    v38[1] = v18;
    v40 = v22;
    v24 = *(v16 + 632);
    v38[5] = a6;
    v39[0] = swift_getKeyPath();
    v39[1] = v39;
    MEMORY[0x1EEE9AC00](v39[0]);
    v38[2] = a5;
    v38[3] = a6;
    v38[4] = v25;
    v41 = v18;
    v42 = v38[0];
    v43 = v19;
    v44 = v24;
    type metadata accessor for TestingOperation(255, &v41);
    v26 = sub_1CF9E6E58();
    v41 = v38[0];
    v42 = v18;
    v43 = v24;
    v44 = v19;
    v27 = type metadata accessor for TestingOperation(0, &v41);
    WitnessTable = swift_getWitnessTable();
    v30 = sub_1CF054A5C(sub_1CF4D3194, v38, v26, v27, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
    v40, v31, v32, v33, v34, v35, v36, v37;

    v41 = v30;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E6E08();
  }
}

uint64_t sub_1CF5D8D14()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[90];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

BOOL sub_1CF5D8DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v28 = *v4;
  v29 = a2;
  v6 = v28[77];
  v27 = v28[79];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    v18 = v4[3];
    v19 = v28[78];
    v20 = v28[80];
    v32[0] = v6;
    v32[1] = v19;
    v32[2] = v27;
    v32[3] = v20;
    v21 = type metadata accessor for Materialization.MaterializeItem(0, v32);
    v22 = v32[5];
    v23 = (*(*v18 + 328))(v16, v21, 0, v29, v30, v31);
    if (v22)
    {
      (*(v12 + 8))(v16, AssociatedTypeWitness);
    }

    else
    {
      v24 = v23;
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      return (v24 & 1) != 0;
    }
  }

  return v17;
}

id sub_1CF5D9124(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t (*sub_1CF5D9178(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CF5DA4C8(v7);
  v7[9] = sub_1CF5D9690(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5E1590;
}

void (*sub_1CF5D9224(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CEFCCBDC(a2, v9, &unk_1EC4BF650, &unk_1CF9FCB40);
  v6[9] = sub_1CF5DA4F0(v6);
  v6[10] = sub_1CF5D9880(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D9328;
}

void sub_1CF5D9328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1CEFCCC44(v3, &unk_1EC4BF650, &unk_1CF9FCB40);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_1CF5D93B4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CF5DA4C8(v7);
  v7[9] = sub_1CF5D9B38(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5E1590;
}

void (*sub_1CF5D9460(uint64_t *a1, void *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = a2;
  v5[9] = sub_1CF5DA4C8(v5);
  v5[10] = sub_1CF5DA04C(v5 + 4, v7, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D9510;
}

void sub_1CF5D9510(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();

  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1CF5D9580(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CF5DA4C8(v7);
  v7[9] = sub_1CF5DA29C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CF5D962C;
}

void sub_1CF5D9630(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1CF5D9690(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 32) = a3;
  *(v10 + 8) = a2;
  *(v10 + 16) = v4;
  v12 = *v4;
  v13 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 33) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CF7D0118();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CF7C55E8(v18, a4 & 1);
    v13 = sub_1CF7BF2C0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 24) = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1CF5D97E8;
}

void sub_1CF5D97E8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 33);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1CF1D4F30(v4, v1[1], *(v1 + 32), v2, v5);
    }
  }

  else if (*(*a1 + 33))
  {
    sub_1CF1D5A10();
  }

  v6 = *v1;

  v6, v7, v8, v9, v10, v11, v12, v13;

  free(v1);
}

void (*sub_1CF5D9880(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_1CF7BF520(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1CF7D4234();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1CF7CD964(v19, a3 & 1);
    v14 = sub_1CF7BF520(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_1CF5D9A38;
}

void sub_1CF5D9A38(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[5];
    if ((*a1)[6])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[4];
      sub_1CEFCCBDC(v1[1], v7, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF1D5354(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[6])
  {
    v5 = v1[5];
    v6 = *v1[2];
    sub_1CEFCCC44(*(v6 + 48) + *(v1[3] + 72) * v5, &unk_1EC4BF650, &unk_1CF9FCB40);
    sub_1CF1D0920(v5, v6);
  }

  v8 = v1[4];
  v9 = *v1;

  v9, v10, v11, v12, v13, v14, v15, v16;
  free(v8);

  free(v1);
}

void (*sub_1CF5D9B38(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x60uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 88) = a3;
  *v10 = a2;
  *(v10 + 8) = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  *(v11 + 16) = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  *(v11 + 24) = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    *(v11 + 32) = swift_coroFrameAlloc();
    *(v11 + 40) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v11 + 32) = malloc(*(v13 + 64));
    *(v11 + 40) = malloc(v15);
    v16 = malloc(v15);
  }

  *(v11 + 48) = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30) - 8) + 64);
  if (v9)
  {
    *(v11 + 56) = swift_coroFrameAlloc();
    *(v11 + 64) = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    *(v11 + 56) = malloc(v17);
    *(v11 + 64) = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  *(v11 + 72) = v18;
  v20 = *v5;
  v22 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 89) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      *(v11 + 80) = v22;
      if (v26)
      {
LABEL_17:
        sub_1CEFE55D0(*(*v5 + 56) + *(v14 + 72) * v22, v19, &unk_1EC4C04C0, &qword_1CFA07B10);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1CF5D9E1C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1CF7D4794();
      goto LABEL_16;
    }

    sub_1CF7CE3B0(v25, a4 & 1);
    v29 = sub_1CF7BF2C0(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      *(v11 + 80) = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF5D9E1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_1CEFCCBDC(v5, v6, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 89);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_1CEFE55D0(v9, *(v2 + 5), &unk_1EC4C04C0, &qword_1CFA07B10);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        v16 = *(v2 + 88);
        sub_1CEFE55D0(v13, v14, &unk_1EC4C04C0, &qword_1CFA07B10);
        sub_1CF1D5494(v12, v15, v16, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 8);
    sub_1CEFCCBDC(v5, v17, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 89);
    v9 = *(v2 + 8);
    if (v18 != 1)
    {
      v19 = *(v2 + 1);
      sub_1CEFE55D0(v9, *(v2 + 6), &unk_1EC4C04C0, &qword_1CFA07B10);
      v11 = *v19;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1CEFE55D0(v13, v11[7] + *(*(v2 + 3) + 72) * v12, &unk_1EC4C04C0, &qword_1CFA07B10);
      goto LABEL_10;
    }
  }

  sub_1CEFCCC44(v9, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  if (v8)
  {
    sub_1CF1D0D60(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  sub_1CEFCCC44(v21, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*sub_1CF5DA04C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_1CEFE863C(a2);
  *(v9 + 25) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1CF7D4DB4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1CF7CEA10(v16, a3 & 1);
    v11 = sub_1CEFE863C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for NSFileProviderItemIdentifier(0);
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 32 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 2;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  *(v9 + 16) = v24;
  *(v9 + 24) = v25;
  return sub_1CF5DA1B8;
}

void sub_1CF5DA1B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 25);
  if (v4 == 2)
  {
    if (*(*a1 + 25))
    {
      v6 = v1[6];
      v7 = *v1[5];
      sub_1CF043504(*(v7 + 48) + 8 * v6, type metadata accessor for NSFileProviderItemIdentifier);
      sub_1CF1D1178(v6, v7);
    }
  }

  else
  {
    v8 = *(v1 + 2);
    v9 = v1[6];
    v10 = *v1[5];
    if (v5)
    {
      v11 = v10[7] + 32 * v9;
      *v11 = v2;
      *(v11 + 8) = v8 & 1;
      *(v11 + 16) = v3;
      *(v11 + 24) = v4 & 1;
    }

    else
    {
      v12 = v1[4];
      sub_1CF1D5560(v9, v12, v2, v8 & 1, v3, v4 & 1, v10);
      v13 = v12;
    }
  }

  free(v1);
}

void (*sub_1CF5DA29C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 25) = a3;
  *(v10 + 32) = a2;
  *(v10 + 40) = v4;
  v12 = *v4;
  v13 = sub_1CF7BF2C0(a2, a3);
  *(v11 + 26) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CF7D4F34();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CF7CED04(v18, a4 & 1);
    v13 = sub_1CF7BF2C0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 48) = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 32 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 2;
  }

  *v11 = v24;
  *(v11 + 8) = v25;
  *(v11 + 16) = v26;
  *(v11 + 24) = v27;
  return sub_1CF5DA418;
}

void sub_1CF5DA418(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 26);
  if (v4 == 2)
  {
    if (*(*a1 + 26))
    {
      sub_1CF1D134C(v1[6], *v1[5]);
    }
  }

  else
  {
    v6 = *(v1 + 2);
    v7 = v1[6];
    v8 = *v1[5];
    if (v5)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v6 & 1;
      *(v9 + 16) = v3;
      *(v9 + 24) = v4 & 1;
    }

    else
    {
      sub_1CF1D55B8(v7, v1[4], *(v1 + 25), v2, v6 & 1, v3, v4 & 1, v8);
    }
  }

  free(v1);
}

uint64_t (*sub_1CF5DA4C8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CF5E14EC;
}

uint64_t (*sub_1CF5DA4F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CF5DA518;
}

unint64_t sub_1CF5DA524(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1CF5DA5A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v4 = v1[4];
      }

      else
      {
        v4 = v1[5];
      }

      return *(*(v4 + 16) + 88);
    }

    else
    {
      if (a1)
      {
        v3 = v1[5];
      }

      else
      {
        v3 = v1[4];
      }

      return *(*(v3 + 16) + 104);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v5 = v1[4];
    }

    else
    {
      v5 = v1[5];
    }

    return *(*(v5 + 16) + 96);
  }

  else
  {
    if (a1 == 6)
    {
      v2 = v1[4];
      return *(*(v2 + 16) + 80);
    }

    if (a1 == 7)
    {
      v2 = v1[5];
      return *(*(v2 + 16) + 80);
    }

    return v1[15];
  }
}

void sub_1CF5DA654(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t a7, void *a8)
{
  v101 = a4;
  v103 = a3;
  v106 = a2;
  v105 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v96 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v90 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v92 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v88 - v20;
  v22 = sub_1CF9E63D8();
  v97 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v88 - v25;
  v26 = sub_1CF9E6448();
  v99 = *(v26 - 8);
  v100 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v88 - v29;
  v31 = sub_1CF9E64A8();
  v32 = *v31[-1].tester;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  v98 = a6;
  v35[2] = a6;
  v35[3] = a7;
  v107 = v35;
  v35[4] = a8;
  v36 = *(a5 + 64);
  *v34 = v36;
  (*(v32 + 104))(v34, *MEMORY[0x1E69E8020], v31);
  v104 = a7;

  v37 = a8;
  v38 = v36;
  LOBYTE(a8) = sub_1CF9E64D8();
  (*(v32 + 8))(v34, v31);
  if ((a8 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v31 = sub_1CF1F7C20(0, *v31->tree + 1, 1, v31);
LABEL_28:
    v87 = *v31->tree;
    v86 = *v31->tester;
    if (v87 >= v86 >> 1)
    {
      v31 = sub_1CF1F7C20((v86 > 1), v87 + 1, 1, v31);
    }

    *v31->tree = v87 + 1;
    sub_1CEFE55D0(v36, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v87, &unk_1EC4C5230, &unk_1CF9FE4C0);
    *(*(v37 + 56) + 8 * v21) = v31;
    *&v34[a5] = v37;
    swift_endAccess();
LABEL_31:

    return;
  }

  if (*(a5 + 152) == 1)
  {
    v39 = FPDomainUnavailableError();
    if (v39)
    {
      _s3__C4CodeOMa_1(0);
      v109 = -1004;
      v40 = v39;
      sub_1CF5DFB70(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
      if ((sub_1CF9E5658() & 1) == 0)
      {
        v66 = v39;
        (v98)(0, v39);

        goto LABEL_18;
      }
    }

    (v98)(v37, 0);

LABEL_18:

    return;
  }

  v34 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!*(*&v34[a5] + 16) || (sub_1CF7BF2C0(v105, v106), (v41 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v47 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1CF9FA450;
    v104 = v48;
    v49 = (v48 + v47);
    qos_class_self();
    sub_1CF9E63B8();
    v50 = v97;
    v51 = *(v97 + 48);
    v52 = v51(v21, 1, v22);
    v98 = v34;
    if (v52 == 1)
    {
      (*(v50 + 104))(v95, *MEMORY[0x1E69E7FA0], v22);
      if (v51(v21, 1, v22) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v50 + 32))(v95, v21, v22);
    }

    sub_1CF9E6428();
    v53 = v102;
    v54 = *(v102 + 64);
    v55 = *(v99 + 32);
    v56 = v94;
    v57 = v30;
    v58 = v100;
    v55(&v94[v54], v57, v100);
    v59 = v103;
    v60 = v101;
    *v49 = v103;
    v49[1] = v60;
    v55(v49 + *(v53 + 64), &v56[v54], v58);
    v61 = (v49 + *(v53 + 80));
    v62 = swift_allocObject();
    v63 = v107;
    *(v62 + 16) = sub_1CF5DFDC0;
    *(v62 + 24) = v63;
    *v61 = sub_1CF5E14E4;
    v61[1] = v62;
    v64 = v98;
    swift_beginAccess();

    sub_1CEFD09A0(v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *&v64[a5];
    *&v64[a5] = 0x8000000000000000;
    sub_1CF1D35F8(v104, v105, v106, isUniquelyReferenced_nonNull_native);
    *&v64[a5] = v108;
    swift_endAccess();
    goto LABEL_31;
  }

  qos_class_self();
  v42 = v92;
  sub_1CF9E63B8();
  v43 = v97;
  v44 = *(v97 + 48);
  v45 = v44(v42, 1, v22);
  v88 = v37;
  if (v45 == 1)
  {
    (*(v43 + 104))(v89, *MEMORY[0x1E69E7FA0], v22);
    v46 = v44(v42, 1, v22);
    v36 = v90;
    if (v46 != 1)
    {
      sub_1CEFCCC44(v42, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v43 + 32))(v89, v42, v22);
    v36 = v90;
  }

  v67 = v91;
  sub_1CF9E6428();
  v68 = v102;
  v69 = *(v102 + 64);
  v70 = v100;
  v71 = *(v99 + 32);
  v72 = v93;
  v71(&v93[v69], v67, v100);
  v73 = v103;
  v74 = v101;
  *v36 = v103;
  v36[1] = v74;
  v71(v36 + *(v68 + 64), &v72[v69], v70);
  v31 = (v36 + *(v68 + 80));
  v75 = swift_allocObject();
  v76 = v107;
  *(v75 + 16) = sub_1CF5DFDC0;
  *(v75 + 24) = v76;
  v31->super.isa = sub_1CF5E14E4;
  *v31->_anon_8 = v75;
  swift_beginAccess();

  sub_1CEFD09A0(v73);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *&v34[a5];
  v77 = v108;
  *&v34[a5] = 0x8000000000000000;
  v78 = v106;
  v21 = sub_1CF7BF2C0(v105, v106);
  v80 = *(v77 + 16);
  v81 = (v79 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_33;
  }

  v83 = v79;
  if (*(v77 + 24) >= v82)
  {
    goto LABEL_25;
  }

  sub_1CF7CAB14(v82, v37);
  v84 = sub_1CF7BF2C0(v105, v78);
  if ((v83 & 1) == (v85 & 1))
  {
    v21 = v84;
    while ((v83 & 1) == 0)
    {
      while (1)
      {

        __break(1u);
LABEL_25:
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (v83)
        {
          goto LABEL_27;
        }
      }

      sub_1CF7D296C();
    }

LABEL_27:
    v37 = v108;
    v31 = *(*(v108 + 56) + 8 * v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF5DB108(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t *a5, void (*a6)(void, void *), uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v150 = a4;
  v152 = a3;
  v153 = a1;
  v154 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v145 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v136 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v131 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v131 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v138 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v131 - v22;
  v24 = sub_1CF9E63D8();
  v146 = *(v24 - 8);
  v147 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v131 - v27;
  v28 = sub_1CF9E6448();
  v148 = *(v28 - 8);
  v149 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v131 - v31;
  v32 = sub_1CF9E64A8();
  v33 = *v32[-1].tester;
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  v133 = a6;
  v36[2] = a6;
  v36[3] = a7;
  v37 = v36;
  v143 = a8;
  v36[4] = a8;
  v36[5] = a9;
  v36[6] = a10;
  v38 = a5[8];
  *v35 = v38;
  (*(v33 + 104))(v35, *MEMORY[0x1E69E8020], v32);
  v134 = a7;

  v144 = a9;

  v39 = a10;
  v40 = v38;
  v41 = sub_1CF9E64D8();
  v43 = *(v33 + 8);
  v42 = v33 + 8;
  v43(v35, v32);
  if ((v41 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*(a5 + 152) == 1)
  {
    v44 = FPDomainUnavailableError();
    v45 = v44;
    if (!v44)
    {
LABEL_21:
      (v143)(v39, 0);

LABEL_23:

      return;
    }

    v46 = v39;
    v47 = v44;
    v48 = sub_1CF9E57E8();
    v49 = [v48 domain];
    v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v52 = v51;

    v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v60 = v53;
    if (v50 == v54 && v52 == v53)
    {
      v52, v53, v54, v55, v56, v57, v58, v59;
      v60, v61, v62, v63, v64, v65, v66, v67;
    }

    else
    {
      v95 = sub_1CF9E8048();
      v52, v96, v97, v98, v99, v100, v101, v102;
      v60, v103, v104, v105, v106, v107, v108, v109;
      if ((v95 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v110 = [v48 code];
    if (v110 == *MEMORY[0x1E69671C8] || [v48 code] == -1004)
    {

      v39 = v46;
      goto LABEL_21;
    }

LABEL_22:
    v111 = v45;
    v133(0, v45);

    goto LABEL_23;
  }

  v38 = a5;
  v68 = qword_1EC4EBD78;
  swift_beginAccess();
  v69 = *(*(a5 + v68) + 16);
  v143 = v68;
  if (!v69 || (sub_1CF7BF2C0(v153, v154), (v70 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v77 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1CF9FA450;
    v145 = v78;
    v79 = (v78 + v77);
    qos_class_self();
    sub_1CF9E63B8();
    v81 = v146;
    v80 = v147;
    v82 = *(v146 + 48);
    if (v82(v23, 1, v147) == 1)
    {
      (*(v81 + 104))(v142, *MEMORY[0x1E69E7FA0], v80);
      if (v82(v23, 1, v80) != 1)
      {
        sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v81 + 32))(v142, v23, v80);
    }

    v83 = v140;
    sub_1CF9E6428();
    v84 = v151;
    v85 = *(v151 + 64);
    v86 = v149;
    v87 = *(v148 + 32);
    v88 = v141;
    v87(&v141[v85], v83, v149);
    v89 = v152;
    v90 = v150;
    *v79 = v152;
    v79[1] = v90;
    v87(v79 + *(v84 + 64), &v88[v85], v86);
    v91 = (v79 + *(v84 + 80));
    v92 = swift_allocObject();
    *(v92 + 16) = sub_1CF5DFD9C;
    *(v92 + 24) = v37;
    *v91 = sub_1CF5E14E4;
    v91[1] = v92;
    v93 = v143;
    swift_beginAccess();

    sub_1CEFD09A0(v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = *(v93 + v38);
    *(v93 + v38) = 0x8000000000000000;
    sub_1CF1D35F8(v145, v153, v154, isUniquelyReferenced_nonNull_native);
    *(v93 + v38) = v155;
    goto LABEL_36;
  }

  qos_class_self();
  v71 = v138;
  sub_1CF9E63B8();
  v73 = v146;
  v72 = v147;
  v74 = *(v146 + 48);
  v75 = v74(v71, 1, v147);
  v132 = v39;
  if (v75 == 1)
  {
    (*(v73 + 104))(v135, *MEMORY[0x1E69E7FA0], v72);
    v76 = v74(v71, 1, v72);
    a5 = v136;
    if (v76 != 1)
    {
      sub_1CEFCCC44(v71, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v73 + 32))(v135, v71, v72);
    a5 = v136;
  }

  v112 = v137;
  sub_1CF9E6428();
  v113 = v151;
  v114 = *(v151 + 64);
  v115 = v149;
  v116 = *(v148 + 32);
  v117 = v139;
  v116(&v139[v114], v112, v149);
  v118 = v152;
  v119 = v150;
  *a5 = v152;
  a5[1] = v119;
  v116(a5 + *(v113 + 64), &v117[v114], v115);
  v120 = (a5 + *(v113 + 80));
  v121 = swift_allocObject();
  *(v121 + 16) = sub_1CF5DFD9C;
  *(v121 + 24) = v37;
  *v120 = sub_1CF5E14E4;
  v120[1] = v121;
  v35 = v143;
  swift_beginAccess();

  sub_1CEFD09A0(v118);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v35 + v38);
  v32 = v155;
  *(v35 + v38) = 0x8000000000000000;
  v39 = sub_1CF7BF2C0(v153, v154);
  v123 = *v32->tree;
  v124 = (v122 & 1) == 0;
  v125 = v123 + v124;
  if (__OFADD__(v123, v124))
  {
    goto LABEL_38;
  }

  v126 = v122;
  if (*v32->tester >= v125)
  {
    if (v42)
    {
      if (v122)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_1CF7D296C();
      if (v126)
      {
        goto LABEL_32;
      }
    }

LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  sub_1CF7CAB14(v125, v42);
  v127 = sub_1CF7BF2C0(v153, v154);
  if ((v126 & 1) == (v128 & 1))
  {
    v39 = v127;
    if ((v126 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_32:
    v42 = v155;
    v32 = *(*v155[1].tester + 8 * v39);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v130 = *v32->tree;
      v129 = *v32->tester;
      if (v130 >= v129 >> 1)
      {
        v32 = sub_1CF1F7C20((v129 > 1), v130 + 1, 1, v32);
      }

      *v32->tree = v130 + 1;
      sub_1CEFE55D0(a5, v32 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v130, &unk_1EC4C5230, &unk_1CF9FE4C0);
      *(*(v42 + 56) + 8 * v39) = v32;
      *(v35 + v38) = v42;
LABEL_36:
      swift_endAccess();

      return;
    }

LABEL_39:
    v32 = sub_1CF1F7C20(0, *v32->tree + 1, 1, v32);
    goto LABEL_33;
  }

LABEL_42:

  sub_1CF9E8108();
  __break(1u);
}