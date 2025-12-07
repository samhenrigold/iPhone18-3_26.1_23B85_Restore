_TtC18FileProviderDaemon8FSTester *sub_1CF693B0C(unint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v236 = a4;
  v232 = a3;
  v233 = a2;
  v253 = a1;
  v5 = v4 + 16;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 96);
  v9 = *(*v4 + 104);
  v257 = v6;
  v258 = v7;
  v259 = v8;
  v260 = v9;
  v10 = type metadata accessor for ReconciliationTable.CachedEntry(255, &v257);
  v225 = sub_1CF9E75D8();
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v231 = &v211 - v11;
  v246 = sub_1CF9E6118();
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v222 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v223 = &v211 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v226 = &v211 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v237 = &v211 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v221 = &v211 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v220 = &v211 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v234 = &v211 - v24;
  v238 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v229 = &v211 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v242 = &v211 - v28;
  v249 = v7;
  v250 = v6;
  v257 = v6;
  v258 = v7;
  v247 = v9;
  v248 = v8;
  v259 = v8;
  v260 = v9;
  v29 = type metadata accessor for ItemReconciliation(0, &v257);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v230 = &v211 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v228 = &v211 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v244 = &v211 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v239 = &v211 - v37;
  v254 = v38;
  v39 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v241 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v211 - v41;
  v252 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v227 = &v211 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v240 = &v211 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v211 - v48;
  v251 = v5;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_48;
  }

  v51 = (*(result->super.isa + 19))(result);

  if ((v51 & 8) != 0 || (v243 = v30, v55 = *(v10 + 56), v56 = v253, v57 = v254, !sub_1CF082AE4(v254, v52, v53, v54)))
  {
LABEL_18:
    v76 = 0;
    return (v76 & 1);
  }

  v216 = v10;
  v219 = *(v10 + 68);
  v58 = v55;
  v59 = v243;
  v60 = *(v243 + 16);
  v215 = v58;
  v218 = v243 + 16;
  v217 = v60;
  v60(v49, v56 + v58, v57);
  v61 = *(v59 + 56);
  v213 = v59 + 56;
  v212 = v61;
  v61(v49, 0, 1, v57);
  v214 = TupleTypeMetadata2;
  v62 = *(TupleTypeMetadata2 + 48);
  v63 = v252;
  v64 = *(v252 + 16);
  v64(v42, v56 + v219, v39);
  v219 = v62;
  v65 = &v42[v62];
  v66 = v254;
  v64(v65, v49, v39);
  v67 = *(v59 + 48);
  if (v67(v42, 1, v66) == 1)
  {
    v68 = *(v63 + 8);
    v68(v49, v39);
    if (v67(&v42[v219], 1, v66) == 1)
    {
      v68(v42, v39);
LABEL_15:
      v81 = fpfs_current_or_default_log();
      v82 = v237;
      sub_1CF9E6128();
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E7298();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "item is still runnable after reconciliation, breaking loop", v85, 2u);
        MEMORY[0x1D386CDC0](v85, -1, -1);
      }

      (*(v245 + 8))(v82, v246);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v69 = v240;
  v64(v240, v42, v39);
  v70 = v219;
  if (v67(&v42[v219], 1, v66) == 1)
  {
    (*(v252 + 8))(v49, v39);
    (*(v243 + 8))(v69, v66);
LABEL_9:
    (*(v241 + 8))(v42, v214);
    v71 = v253;
    v72 = v215;
    goto LABEL_10;
  }

  v77 = v243;
  v78 = v239;
  (*(v243 + 32))(v239, &v42[v70], v66);
  LODWORD(v241) = sub_1CF95CFBC(v69, v78, v250, v249, v248, v247);
  v79 = *(v77 + 8);
  v79(v78, v66);
  v80 = *(v252 + 8);
  v80(v49, v39);
  v79(v69, v66);
  v80(v42, v39);
  v71 = v253;
  v72 = v215;
  if (v241)
  {
    goto LABEL_15;
  }

LABEL_10:
  v73 = v244;
  v74 = v217;
  v217(v244, v71 + v72, v66);
  result = swift_weakLoadStrong();
  v75 = v261;
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1CF95A22C(result, 1, v66, &v257);
  if (v75)
  {
    (*(v243 + 8))(v73, v66);

    return (v76 & 1);
  }

  v86 = *(v243 + 8);
  v243 += 8;
  v244 = v86;
  (v86)(v73, v66);

  v253 = v259;
  if (v257 >> 62 == 2 && v257 <= 0x8000000000000001)
  {
    v76 = v253 | v258;
    if (!(v253 | v258))
    {
      return (v76 & 1);
    }
  }

  v252 = v257;
  v241 = v258;
  v261 = 0;
  v240 = *v71;
  LODWORD(v237) = *(v71 + 8);
  v87 = v72;
  v88 = v216;
  v89 = v239;
  v74(v239, v71 + *(v216 + 52), v66);
  v90 = v228;
  v74(v228, v71 + v87, v66);
  v91 = *(v88 + 64);
  v92 = (v71 + *(v88 + 60));
  v94 = *v92;
  v93 = v92[1];
  v257 = v94;
  v256 = v93;
  v95 = v71 + v91;
  v96 = v74;
  v97 = *v95;
  v98 = *(v95 + 8);
  v99 = v71 + v87;
  v100 = v227;
  v96(v227, v99, v66);
  v212(v100, 0, 1, v66);
  v101 = v242;
  sub_1CF079694(v240, v237, v89, v90, &v257, &v256, v97, v98, v242, v100, v250, v249, v248, v247);
  v102 = [objc_allocWithZone(FPLoggerScope) init];
  v103 = fpfs_current_or_default_log();
  v104 = v234;
  sub_1CF9E6128();
  v105 = v238;
  v106 = *(v238 + 16);
  v107 = v229;
  v228 = (v238 + 16);
  v227 = v106;
  (v106)(v229, v101, v88);
  v108 = v107;
  v109 = v102;
  v110 = sub_1CF9E6108();
  v111 = sub_1CF9E7288();

  v112 = os_log_type_enabled(v110, v111);
  v240 = v109;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v219 = v114;
    v115 = v105;
    v116 = swift_slowAlloc();
    v257 = v116;
    *v113 = 138412546;
    v117 = [v109 enter];
    *(v113 + 4) = v117;
    *v114 = v117;
    *(v113 + 12) = 2082;
    v118 = v216;
    v217(v89, &v108[*(v216 + 56)], v254);
    v237 = *(v115 + 8);
    (v237)(v108, v118);
    v119 = sub_1CF082CB0(v254);
    v121 = v120;
    (v244)(v89, v254);
    v122 = sub_1CEFD0DF0(v119, v121, &v257);
    v123 = v121;
    v124 = v241;
    v125 = v252;
    v123, v126, v127, v128, v129, v130, v131, v132;
    *(v113 + 14) = v122;
    _os_log_impl(&dword_1CEFC7000, v110, v111, "%@  ⚙️ reconciling: %{public}s", v113, 0x16u);
    v133 = v219;
    sub_1CEFCCC44(v219, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v133, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x1D386CDC0](v116, -1, -1);
    v134 = v113;
    v66 = v254;
    MEMORY[0x1D386CDC0](v134, -1, -1);

    v239 = *(v245 + 8);
    (v239)(v234, v246);
    v135 = v236;
    v136 = v233;
  }

  else
  {
    v237 = *(v105 + 8);
    (v237)(v108, v216);

    v239 = *(v245 + 8);
    (v239)(v104, v246);
    v135 = v236;
    v136 = v233;
    v124 = v241;
    v125 = v252;
  }

  v257 = v250;
  v258 = v249;
  v259 = v248;
  v260 = v247;
  type metadata accessor for ConcreteJobResult(0, &v257);
  v137 = sub_1CF056580();
  v138 = v230;
  v217(v230, v242 + *(v216 + 56), v66);
  v257 = v125;
  v258 = v124;
  v259 = v253;
  result = swift_weakLoadStrong();
  if (result)
  {
    v139 = result;
    sub_1CF48048C(v125, v124, v253);
    v140 = v232;
    v141 = v261;
    sub_1CF98B47C(v138, &v257, v139, v137, v136, v232, v135);
    v142 = v138;
    v143 = v231;
    if (v141)
    {

      sub_1CF6BC8AC(v257);
      (v244)(v142, v254);
      v144 = fpfs_current_or_default_log();
      v145 = v226;
      sub_1CF9E6128();
      v146 = v240;
      v147 = sub_1CF9E6108();
      v148 = sub_1CF9E7288();

      if (os_log_type_enabled(v147, v148))
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v261 = 0;

    sub_1CF6BC8AC(v257);
    (v244)(v142, v254);
    swift_beginAccess();
    v149 = v137[4];
    v255 = v149;
    v150 = v216;
    (v227)(v143, v242, v216);
    (*(v238 + 56))(v143, 0, 1, v150);

    v257 = v250;
    v258 = v249;
    v259 = v248;
    v260 = v247;
    type metadata accessor for ReconciliationMutation(255, &v257);
    v151 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v153 = v261;
    sub_1CF693178(&v255, v143, v136, v151, v140, WitnessTable, v236);
    if (v153)
    {

      (*(v224 + 8))(v143, v225);
      v149, v154, v155, v156, v157, v158, v159, v160;
      v161 = fpfs_current_or_default_log();
      v145 = v223;
      sub_1CF9E6128();
      v146 = v240;
      v147 = sub_1CF9E6108();
      v148 = sub_1CF9E7288();

      if (os_log_type_enabled(v147, v148))
      {
LABEL_32:
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        *v162 = 138412290;
        v164 = [v146 leave];
        *(v162 + 4) = v164;
        *v163 = v164;
        _os_log_impl(&dword_1CEFC7000, v147, v148, "%@", v162, 0xCu);
        sub_1CEFCCC44(v163, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v163, -1, -1);
        MEMORY[0x1D386CDC0](v162, -1, -1);
      }

LABEL_33:

      (v239)(v145, v246);
      sub_1CF480498(v252);

      (v237)(v242, v216);
      return (v76 & 1);
    }

    (*(v224 + 8))(v143, v225);
    v149, v165, v166, v167, v168, v169, v170, v171;
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      v172 = v137[3];

      v173 = sub_1CF9E6DA8();
      v174 = v233;
      v175 = v232;
      sub_1CF92E0C4(v172, v173, v233, v232, v236);

      v172, v176, v177, v178, v179, v180, v181, v182;
      v173, v183, v184, v185, v186, v187, v188, v189;
      swift_beginAccess();
      v190 = v137[5];

      v257 = v250;
      v258 = v249;
      v259 = v248;
      v260 = v247;
      type metadata accessor for FSOrFPJob(0, &v257);
      if (!sub_1CF9E6DF8())
      {
        goto LABEL_44;
      }

      v198 = 0;
      while (1)
      {
        v199 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v199)
        {
          v200 = *(&v190[1].super.isa + v198);

          v201 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v200 = sub_1CF9E7998();

          swift_unknownObjectRelease();
          v201 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            v190, v191, v192, v193, v194, v195, v196, v197;

            v203 = fpfs_current_or_default_log();
            v204 = v221;
            sub_1CF9E6128();
            v205 = v240;
            v206 = sub_1CF9E6108();
            v207 = sub_1CF9E7288();

            if (os_log_type_enabled(v206, v207))
            {
              v208 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              *v208 = 138412290;
              v210 = [v205 leave];
              *(v208 + 4) = v210;
              *v209 = v210;
              _os_log_impl(&dword_1CEFC7000, v206, v207, "%@", v208, 0xCu);
              sub_1CEFCCC44(v209, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v209, -1, -1);
              MEMORY[0x1D386CDC0](v208, -1, -1);
            }

            (v239)(v204, v246);
            sub_1CF480498(v252);

            (v237)(v242, v216);
            v76 = 1;
            return (v76 & 1);
          }
        }

        v202 = objc_autoreleasePoolPush();
        sub_1CF6A5084(v200, v235, v174, v175, v236, &v257);
        objc_autoreleasePoolPop(v202);

        v257 = v250;
        v258 = v249;
        v259 = v248;
        v260 = v247;
        type metadata accessor for FSOrFPJob(0, &v257);
        ++v198;
        if (v201 == sub_1CF9E6DF8())
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1CF695580(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v380 = a4;
  v376 = a3;
  v377 = a2;
  v382 = a1;
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v371 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v351 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v320 = &v318 - v11;
  v12 = *(v5 + 104);
  v383 = v4;
  v13 = *(v5 + 88);
  v358 = swift_getAssociatedTypeWitness();
  v356 = sub_1CF9E75D8();
  v355 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v336 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v337 = &v318 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v324 = &v318 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v340 = &v318 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v343 = &v318 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v327 = &v318 - v24;
  v373 = AssociatedTypeWitness;
  v370 = sub_1CF9E75D8();
  v378 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v353 = &v318 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v335 = &v318 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v341 = &v318 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v328 = &v318 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v331 = &v318 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v344 = &v318 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v319 = &v318 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v325 = &v318 - v39;
  v374 = v7;
  *&v40 = v7;
  v361 = v13;
  *(&v40 + 1) = v13;
  v386 = v40;
  v375 = v6;
  *&v41 = v6;
  v359 = v12;
  *(&v41 + 1) = v12;
  v385 = v41;
  v388 = v41;
  v387 = v40;
  v368 = type metadata accessor for PersistenceTrigger(0, &v387);
  v367 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v334 = &v318 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v372 = &v318 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v365 = &v318 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v342 = &v318 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v354 = &v318 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v326 = &v318 - v52;
  v388 = v385;
  v387 = v386;
  v53 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v387);
  v333 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v322 = &v318 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v323 = &v318 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v321 = &v318 - v58;
  v388 = v385;
  v387 = v386;
  v59 = type metadata accessor for ItemReconciliation(255, &v387);
  v369 = sub_1CF9E75D8();
  v360 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369);
  v345 = (&v318 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v347 = (&v318 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v349 = &v318 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v330 = &v318 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v346 = &v318 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v348 = &v318 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v332 = &v318 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v329 = &v318 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v318 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = (&v318 - v79);
  v81 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v339 = &v318 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v338 = &v318 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v318 - v87;
  v89 = v382;
  v90 = (v382 + v53[13]);
  v363 = sub_1CF07CD0C(v59);
  *&v386 = v90;
  v364 = sub_1CF07CD80(v59);
  v91 = v53[14];
  v357 = sub_1CF07CD0C(v59);
  v92 = v89;
  v362 = sub_1CF07CD80(v59);
  v381 = v81;
  v94 = *(v81 + 16);
  v93 = v81 + 16;
  v352 = v91;
  v95 = v89 + v91;
  v96 = v53;
  v384 = v59;
  *&v385 = v88;
  v366 = v94;
  v94(v88, v95, v59);
  v98 = v89 + v53[16];
  if (*(v98 + 8) < 2u)
  {
    goto LABEL_107;
  }

  v99 = *v98;
  if (v99 <= 1)
  {
    v100 = v385;
    v101 = v386;
    if (!v99)
    {
      v102 = *(v89 + 8);
      v350 = v93;
      if ((v102 & 1) == 0)
      {
        goto LABEL_46;
      }

      v103 = v384;
      while (1)
      {
LABEL_12:
        v109 = v374;
        v110 = v375;
LABEL_13:
        v108 = v372;
LABEL_14:
        v80 = type metadata accessor for ItemReconciliationHalf(0, v109, v110, v97);
        if ((*(v101 + *(v80 + 16) + 16) == 2) == (*(v100 + *(v80 + 16) + 16) != 2) || (v125 = *(v103 + 52), v126 = *(type metadata accessor for ItemReconciliationHalf(0, v361, v359, v124) + 64), (*(v101 + v125 + v126 + 16) == 2) == (*(v100 + v125 + v126 + 16) != 2)))
        {
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v128 = Strong;
            v129 = v354;
            v366(v354, v382 + v352, v103);
            v130 = v368;
            swift_storeEnumTagMultiPayload();
            (*(*v128 + 312))(v129);

            (*(v367 + 8))(v129, v130);
          }
        }

        if (v364 && v363 && *(v382 + 8) != 1)
        {
          v133 = v378;
          v131 = v365;
          if (v362)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v131 = v365;
          if (v357 || v362)
          {
            v132 = swift_weakLoadStrong();
            v133 = v378;
            if (!v132)
            {
              goto LABEL_67;
            }

            v92 = v132;
            v134 = v344;
            (*(v378 + 16))(v344, v100, v370);
            v135 = v371;
            v136 = v373;
            if ((*(v371 + 48))(v134, 1, v373) == 1)
            {
LABEL_93:
              __break(1u);
            }

            else
            {
              v108 = v342;
              (*(v135 + 32))(v342, v134, v136);
              v101 = v343;
              (*(v355 + 16))(v343, v100 + *(v103 + 52), v356);
              v77 = v358;
              v137 = *(v358 - 8);
              if ((*(v137 + 48))(v101, 1, v358) != 1)
              {
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          v133 = v378;
          if (!v364)
          {
            goto LABEL_67;
          }
        }

        v138 = *(v386 + *(v80 + 14));
        if (v138 != 6)
        {
          v139 = swift_weakLoadStrong();
          if (v139)
          {
            LODWORD(v369) = v138;
            v382 = v139;
            v140 = v331;
            v141 = v386;
            (*(v133 + 16))(v331, v386, v370);
            v142 = v371;
            v143 = v373;
            if ((*(v371 + 48))(v140, 1, v373) == 1)
            {
              goto LABEL_100;
            }

            (*(v142 + 32))(v131, v140, v143);
            v144 = v143;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v146 = v358;
            v147 = swift_getAssociatedConformanceWitness();
            *&v387 = v144;
            *(&v387 + 1) = v146;
            *&v388 = AssociatedConformanceWitness;
            *(&v388 + 1) = v147;
            v148 = type metadata accessor for ReconciliationID(0, &v387);
            swift_storeEnumTagMultiPayload();
            v149 = v340;
            (*(v355 + 16))(v340, v141 + *(v103 + 52), v356);
            v150 = *(v146 - 8);
            v151 = (*(v150 + 48))(v149, 1, v146);
            if (v151 == 1)
            {
              goto LABEL_101;
            }

            MEMORY[0x1EEE9AC00](v151);
            strcpy(v316, " otherID from to ");
            *&v387 = v148;
            *(&v387 + 1) = sub_1CF9E75D8();
            *&v388 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
            *(&v388 + 1) = v388;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v153 = TupleTypeMetadata[12];
            v154 = TupleTypeMetadata[16];
            v155 = TupleTypeMetadata[20];
            (*(v150 + 32))(&v131[v153], v340, v146);
            swift_storeEnumTagMultiPayload();
            (*(*(v148 - 8) + 56))(&v131[v153], 0, 1, v148);
            v131[v154] = v369;
            v131[v155] = 6;
            v156 = v368;
            swift_storeEnumTagMultiPayload();
            (*(*v382 + 312))(v131);

            (*(v367 + 8))(v131, v156);
            v100 = v385;
            v133 = v378;
            v108 = v372;
          }
        }

        v157 = swift_weakLoadStrong();
        if (!v157)
        {
          __break(1u);
          goto LABEL_92;
        }

        v158 = (*(*v157 + 152))(v157);

        v159 = v386;
        if ((v158 & 0x4000) != 0 && (*(v100 + *(v80 + 9)) & 0x80) != 0)
        {
          break;
        }

        v160 = swift_weakLoadStrong();
        if (!v160)
        {
          goto LABEL_95;
        }

        v161 = v160;
        v162 = v341;
        v382 = *(v133 + 16);
        (v382)(v341, v159, v370);
        v163 = v371;
        v164 = v373;
        v372 = *(v371 + 48);
        if ((v372)(v162, 1, v373) == 1)
        {
          goto LABEL_96;
        }

        v165 = (*(*v161 + 560))(v162);

        (*(v163 + 8))(v162, v164);
        v103 = v384;
        v100 = v385;
        if ((v165 & 1) == 0)
        {
          v166 = swift_weakLoadStrong();
          if (!v166)
          {
            goto LABEL_97;
          }

          v167 = v166;
          v168 = v337;
          (*(v355 + 16))(v337, v386 + *(v103 + 52), v356);
          v169 = v358;
          v170 = *(v358 - 8);
          if ((*(v170 + 48))(v168, 1, v358) == 1)
          {
            goto LABEL_98;
          }

          v171 = (*(*v167 + 568))(v168);

          (*(v170 + 8))(v168, v169);
          v100 = v385;
          v133 = v378;
          if ((v171 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        v172 = swift_weakLoadStrong();
        if (!v172)
        {
          goto LABEL_67;
        }

        v92 = v172;
        v173 = v335;
        v174 = v386;
        (v382)(v335, v386, v370);
        v96 = v373;
        if ((v372)(v173, 1, v373) == 1)
        {
          goto LABEL_99;
        }

        v108 = v334;
        (*(v371 + 32))(v334, v173, v96);
        v101 = v336;
        (*(v355 + 16))(v336, v174 + *(v103 + 52), v356);
        v77 = v358;
        v137 = *(v358 - 8);
        if ((*(v137 + 48))(v101, 1, v358) != 1)
        {
          goto LABEL_66;
        }

        __break(1u);
LABEL_46:
        v347 = *v92;
        v175 = v384;
        v366(v80, v101, v384);
        v176 = v92;
        v177 = v381;
        v349 = *(v381 + 56);
        v348 = v381 + 56;
        (v349)(v80, 0, 1, v175);
        v330 = (v176 + v96[15]);
        v178 = *(v330 + 1);
        *&v387 = *v330;
        v389 = v178;
        v179 = v96[17];
        v346 = v96;
        v180 = v360;
        v182 = v360 + 16;
        v181 = *(v360 + 16);
        v327 = v179;
        v183 = &v179[v176];
        v184 = v369;
        v345 = v181;
        v181(v77, v183, v369);
        LODWORD(v177) = (*(v177 + 48))(v77, 1, v175) == 1;
        v185 = *(v180 + 8);
        v185(v77, v184);
        v186 = v100;
        v187 = v377;
        v188 = v379;
        sub_1CF6A1D90(v186, v80, &v387, &v389, v177, v377, v376, v380);
        if (v188)
        {
          v185(v80, v184);
          goto LABEL_82;
        }

        v379 = v182;
        v185(v80, v184);
        v221 = v329;
        v222 = v384;
        v223 = v366;
        v366(v329, v385, v384);
        (v349)(v221, 0, 1, v222);
        sub_1CF6A4478(v386, v221, v187, v376, *(v380 + 8));
        v271 = v223;
        v272 = v221;
        v273 = v369;
        v185(v272, v369);
        v274 = v338;
        v103 = v384;
        v223(v338, v386, v384);
        v275 = v339;
        v276 = v385;
        v271(v339, v385, v103);
        v277 = *(v330 + 1);
        *&v387 = *v330;
        v389 = v277;
        v278 = v332;
        v345(v332, &v327[v382], v273);
        v279 = v321;
        sub_1CF079694(v347, 0, v274, v275, &v387, &v389, 0, 2, v321, v278, v374, v361, v375, v359);
        v280 = v380;
        v281 = v383;
        v282 = sub_1CF693B0C(v279, v377, v376, v380);
        v100 = v276;
        v101 = v386;
        if (v282)
        {
          (*(v333 + 8))(v279, v346);
          return (*(v381 + 8))(v100, v103);
        }

        (*(*v281 + 192))(v276, v386, v347, v377, v376, v280);
        v379 = 0;
        (*(v333 + 8))(v279, v346);
      }

      v235 = swift_weakLoadStrong();
      v236 = v328;
      if (!v235)
      {
        goto LABEL_67;
      }

      v92 = v235;
      v237 = *(v133 + 16);
      v238 = v386;
      v237(v328, v386, v370);
      v239 = v371;
      v240 = v373;
      if ((*(v371 + 48))(v236, 1, v373) == 1)
      {
        goto LABEL_104;
      }

      (*(v239 + 32))(v108, v236, v240);
      v101 = v324;
      (*(v355 + 16))(v324, v238 + *(v103 + 52), v356);
      v77 = v358;
      v137 = *(v358 - 8);
      if ((*(v137 + 48))(v101, 1, v358) != 1)
      {
LABEL_66:
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        (*(v137 + 32))(&v108[*(TupleTypeMetadata2 + 48)], v101, v77);
        v242 = v368;
        swift_storeEnumTagMultiPayload();
        (*(*v92 + 312))(v108);

        (*(v367 + 8))(v108, v242);
        v133 = v378;
LABEL_67:
        v243 = *(v80 + 9);
        v244 = *(v100 + v243);
        v245 = v386;
        v246 = v380;
        if (((v244 >> 4) & 1) == ((*(v386 + v243) & 0x10) == 0))
        {
          v247 = v353;
          v248 = v370;
          (*(v133 + 16))(v353, v100, v370);
          v249 = v371;
          v250 = v373;
          if ((*(v371 + 48))(v247, 1, v373) == 1)
          {
            (*(v133 + 8))(v247, v248);
            v103 = v384;
            v100 = v385;
          }

          else
          {
            v251 = v351;
            (*(v249 + 32))(v351, v247, v250);
            v252 = swift_weakLoadStrong();
            if (v252)
            {
              v253 = v252;
              v382 = v244 & 0x10;
              v254 = swift_getAssociatedConformanceWitness();
              v255 = v358;
              v256 = swift_getAssociatedConformanceWitness();
              *&v387 = v250;
              *(&v387 + 1) = v255;
              *&v388 = v254;
              *(&v388 + 1) = v256;
              type metadata accessor for ReconciliationID(255, &v387);
              v257 = *(swift_getTupleTypeMetadata2() + 48);
              v258 = v354;
              v251 = v351;
              (*(v249 + 16))(v354, v351, v250);
              swift_storeEnumTagMultiPayload();
              v258[v257] = v382 >> 4;
              v259 = v368;
              swift_storeEnumTagMultiPayload();
              (*(*v253 + 312))(v258);

              (*(v367 + 8))(v258, v259);
            }

            (*(v249 + 8))(v251, v250);
            v103 = v384;
            v100 = v385;
            v245 = v386;
          }
        }

        v260 = *(v80 + 14);
        if (*(v100 + v260) != 6 && *(v245 + v260) == 6)
        {
          v261 = swift_weakLoadStrong();
          if (v261)
          {
            (*(*v261 + 328))(v377, v376, *(v246 + 8));

            return (*(v381 + 8))(v100, v103);
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        return (*(v381 + 8))(v100, v103);
      }

      goto LABEL_105;
    }

    v345 = *v89;
    if (*(v89 + 8))
    {
      v350 = v93;
      v111 = v381;
      v112 = v349;
      v113 = v384;
      (*(v381 + 56))(v349, 1, 1, v384);
      v114 = (v89 + v53[15]);
      v115 = v114[1];
      *&v387 = *v114;
      v389 = v115;
      v116 = v96[17];
      v346 = v96;
      v117 = v360;
      v118 = *(v360 + 16);
      v330 = v116;
      v119 = v112;
      v120 = v347;
      v121 = v369;
      v348 = v118;
      v118(v347, &v116[v89], v369);
      LODWORD(v113) = (*(v111 + 48))(v120, 1, v113) == 1;
      v122 = *(v117 + 8);
      v122(v120, v121);
      v100 = v385;
      v123 = v379;
      sub_1CF6A1D90(v385, v119, &v387, &v389, v113, v377, v376, v380);
      if (v123)
      {
        v122(v119, v121);
        v103 = v384;
        return (*(v381 + 8))(v100, v103);
      }

      v122(v119, v121);
      v220 = v359;
      sub_1CF082824(v100, v374, v361, v375, v359);
      v103 = v384;
      v262 = v366;
      v366(v338, v386, v384);
      v262(v339, v100, v103);
      v263 = v114[1];
      *&v387 = *v114;
      v389 = v263;
      v264 = v332;
      (v348)(v332, &v330[v382], v121);
      v265 = v375;
      v266 = v322;
      sub_1CF079694(v345, 1, v338, v339, &v387, &v389, 1, 2, v322, v264, v374, v361, v375, v220);
      v267 = v376;
      v268 = v380;
      v269 = v383;
      v270 = sub_1CF693B0C(v266, v377, v376, v380);
      if ((v270 & 1) == 0)
      {
        v100 = v385;
        (*(*v269 + 176))(v385, v377, v267, v268);
        v379 = 0;
        (*(v333 + 8))(v322, v346);
        v110 = v265;
        v109 = v374;
        v101 = v386;
        goto LABEL_13;
      }

LABEL_87:
      (*(v333 + 8))(v266, v346);
      v100 = v385;
      return (*(v381 + 8))(v100, v103);
    }

    v205 = v348;
    v206 = v384;
    v366(v348, v386, v384);
    v207 = v381;
    v208 = *(v381 + 56);
    v349 = v381 + 56;
    v347 = v208;
    (v208)(v205, 0, 1, v206);
    v327 = (v92 + v96[15]);
    v209 = *(v327 + 1);
    *&v387 = *v327;
    v389 = v209;
    v210 = v360;
    v212 = v360 + 16;
    v211 = *(v360 + 16);
    v326 = v96[17];
    v213 = &v326[v92];
    v214 = v346;
    v215 = v369;
    v329 = v211;
    (v211)(v346, v213, v369);
    LODWORD(v207) = (*(v207 + 48))(v214, 1, v206) == 1;
    v360 = *(v210 + 8);
    (v360)(v214, v215);
    v216 = v379;
    v217 = v380;
    v218 = v93;
    v219 = v383;
    sub_1CF6A1D90(v385, v205, &v387, &v389, v207, v377, v376, v380);
    if (v216)
    {
      (v360)(v205, v369);
LABEL_82:
      v103 = v384;
      v100 = v385;
      return (*(v381 + 8))(v100, v103);
    }

    v379 = v212;
    v346 = v96;
    v224 = v369;
    (v360)(v205, v369);
    v225 = v330;
    v226 = v217;
    v227 = v384;
    v228 = v366;
    v366(v330, v385, v384);
    (v347)(v225, 0, 1, v227);
    v229 = v218;
    v101 = v386;
    sub_1CF6A4478(v386, v225, v377, v376, *(v226 + 8));
    v230 = v229;
    v231 = v224;
    v283 = v230;
    (v360)(v225, v224);
    v284 = v338;
    v285 = v384;
    v228(v338, v101, v384);
    v286 = v339;
    v350 = v283;
    v228(v339, v385, v285);
    v287 = *(v327 + 1);
    *&v387 = *v327;
    v389 = v287;
    v288 = v332;
    (v329)(v332, &v326[v382], v231);
    v289 = v374;
    v266 = v323;
    sub_1CF079694(v345, 0, v284, v286, &v387, &v389, 1, 2, v323, v288, v374, v361, v375, v359);
    v290 = v376;
    v291 = sub_1CF693B0C(v266, v377, v376, v380);
    v103 = v384;
    if (v291)
    {
      goto LABEL_87;
    }

    v100 = v385;
    (*(*v219 + 192))(v385, v101, v345, v377, v290, v380);
    v379 = 0;
    (*(v333 + 8))(v323, v346);
    v110 = v375;
LABEL_62:
    v109 = v289;
    goto LABEL_13;
  }

  v350 = v93;
  v103 = v384;
  v100 = v385;
  v101 = v386;
  if (v99 != 2)
  {
    goto LABEL_12;
  }

  v104 = *(v89 + 8);
  v105 = v377;
  v106 = v380;
  v107 = v383;
  v108 = v372;
  if (v104)
  {
    v109 = v374;
    v110 = v375;
    goto LABEL_14;
  }

  v349 = *v92;
  if (!sub_1CF07CD80(v384) || (v189 = swift_weakLoadStrong()) == 0)
  {
LABEL_53:
    v200 = v345;
    (*(v381 + 56))(v345, 1, 1, v103);
    v201 = v105;
    v202 = v105;
    v203 = v376;
    v204 = v379;
    sub_1CF6A4478(v101, v200, v201, v376, *(v106 + 8));
    if (v204)
    {
      (*(v360 + 8))(v200, v369);
      return (*(v381 + 8))(v100, v103);
    }

    (*(v360 + 8))(v200, v369);
    (*(*v107 + 200))(v101, v349, 1, v202, v203, v106);
    v289 = v374;
    v232 = v375;
    v234 = *(v101 + *(type metadata accessor for ItemReconciliationHalf(0, v374, v375, v233) + 56));
    v379 = 0;
    if (v234 != 6)
    {
      LODWORD(v369) = v234;
      v293 = v378;
      v294 = v319;
      v295 = v370;
      (*(v378 + 16))(v319, v101, v370);
      v296 = v371;
      v297 = v373;
      if ((*(v371 + 48))(v294, 1, v373) == 1)
      {
        (*(v293 + 8))(v294, v295);
        v103 = v384;
        v100 = v385;
        v110 = v232;
        v109 = v289;
        v101 = v386;
        goto LABEL_13;
      }

      v298 = *(v296 + 32);
      v299 = v320;
      v298(v320, v294, v297);
      v300 = swift_weakLoadStrong();
      v360 = v300;
      if (v300)
      {
        MEMORY[0x1EEE9AC00](v300);
        strcpy(v316, " otherID from to ");
        v301 = swift_getAssociatedConformanceWitness();
        v302 = v358;
        v303 = swift_getAssociatedConformanceWitness();
        *&v387 = v297;
        *(&v387 + 1) = v302;
        *&v388 = v301;
        *(&v388 + 1) = v303;
        *&v387 = type metadata accessor for ReconciliationID(255, &v387);
        *(&v387 + 1) = sub_1CF9E75D8();
        *&v388 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        *(&v388 + 1) = v388;
        v304 = swift_getTupleTypeMetadata();
        v305 = v304[12];
        v348 = v304[16];
        v349 = v304[20];
        v306 = v354;
        (*(v371 + 16))(v354, v299, v297);
        *&v387 = v297;
        *(&v387 + 1) = v302;
        *&v388 = v301;
        *(&v388 + 1) = v303;
        v307 = type metadata accessor for ReconciliationID(0, &v387);
        v308 = swift_storeEnumTagMultiPayload();
        v103 = v384;
        MEMORY[0x1EEE9AC00](v308);
        v310 = v374;
        v309 = v375;
        v314 = v374;
        v315 = v361;
        v316[0] = v376;
        v316[1] = v375;
        v311 = v379;
        v316[2] = v359;
        v317 = v380;
        v101 = v386;
        sub_1CF06E1CC(sub_1CF6BC8C0, (&v318 - 8), MEMORY[0x1E69E73E0], v307, v312, &v306[v305]);
        v379 = v311;
        v306[v348] = v369;
        v306[v349] = 6;
        v313 = v368;
        swift_storeEnumTagMultiPayload();
        (*(*v360 + 312))(v306);

        (*(v367 + 8))(v306, v313);
        (*(v371 + 8))(v320, v297);
        v109 = v310;
        v110 = v309;
        v100 = v385;
        goto LABEL_13;
      }

      goto LABEL_106;
    }

    v110 = v232;
    goto LABEL_62;
  }

  v190 = v189;
  v191 = v325;
  (*(v378 + 16))(v325, v100, v370);
  v192 = v371;
  v193 = v373;
  if ((*(v371 + 48))(v191, 1, v373) == 1)
  {
LABEL_102:
    __break(1u);
  }

  else
  {
    v194 = v326;
    (*(v192 + 32))(v326, v191, v193);
    v195 = v327;
    (*(v355 + 16))(v327, v100 + *(v103 + 52), v356);
    v196 = v358;
    v197 = *(v358 - 8);
    if ((*(v197 + 48))(v195, 1, v358) != 1)
    {
      v198 = swift_getTupleTypeMetadata2();
      (*(v197 + 32))(&v194[*(v198 + 48)], v195, v196);
      v199 = v368;
      swift_storeEnumTagMultiPayload();
      (*(*v190 + 312))(v194);

      (*(v367 + 8))(v194, v199);
      v101 = v386;
      v106 = v380;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  LODWORD(v317) = 0;
  v316[2] = 1435;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF6982AC(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t *, uint64_t), uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v392 = a8;
  v394 = a7;
  v393 = a6;
  v407 = a5;
  v413 = a4;
  v399 = a3;
  v406[0] = a2;
  v398 = a1;
  v10 = v8[11];
  v12 = v8[12];
  v11 = v8[13];
  v421 = v8[10];
  v9 = v421;
  v422 = v10;
  v423 = v12;
  v424 = v11;
  v13 = type metadata accessor for ItemReconciliation(255, &v421);
  v367 = sub_1CF9E75D8();
  v359 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v377 = &v351 - v14;
  v358 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v371 = &v351 - v16;
  v416 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v387 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v369 = &v351 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v395 = &v351 - v20;
  v363 = sub_1CF9E75D8();
  v362 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v361 = &v351 - v21;
  v417 = v10;
  v418 = v11;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v365 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v378 = &v351 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v388 = &v351 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v411 = &v351 - v28;
  v29 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v373 = &v351 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v401 = &v351 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v364 = &v351 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v366 = &v351 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v385 = &v351 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v386 = &v351 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v402 = &v351 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v396 = &v351 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v410 = &v351 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v415 = &v351 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v351 - v51;
  v53 = *v22[-1].tester;
  MEMORY[0x1EEE9AC00](v54);
  v400 = &v351 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v384 = &v351 - v57;
  v356 = v58;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v351 - v61;
  v397 = v13;
  v63 = v413 + *(v13 + 52);
  v412 = *(v29 + 16);
  v412(v52, v63, v23, v60);
  v64 = *(v53 + 6);
  v409 = v53 + 48;
  v408 = v64;
  if (v64(v52, 1, v22) == 1)
  {
    (*(v29 + 8))(v52, v23);
LABEL_14:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v77 = swift_getAssociatedConformanceWitness();
    v421 = AssociatedTypeWitness;
    v422 = v22;
LABEL_15:
    v423 = AssociatedConformanceWitness;
    v424 = v77;
    v101 = type metadata accessor for ReconciliationID(0, &v421);
    (*(*(v101 - 8) + 56))(v398, 1, 1, v101);
    LOBYTE(isa) = 0;
    return isa & 1;
  }

  v379 = AssociatedTypeWitness;
  v372 = v29;
  v413 = v23;
  v65 = *(v53 + 4);
  v376 = v53 + 32;
  v375 = v65;
  v65(v62, v52, v22);
  v66 = v416;
  v357 = type metadata accessor for ItemReconciliationHalf(0, v416, v12, v67);
  v68 = v12;
  if (!*(v406[0] + v357[14]))
  {
    (*(v53 + 1))(v62, v22);
    AssociatedTypeWitness = v379;
    goto LABEL_14;
  }

  v406[1] = v29 + 16;
  v405 = v62;
  v370 = v53;
  (*(v407->super.isa + 31))();
  v69 = sub_1CF9E7B08();

  v71 = v417;
  v70 = v418;
  v421 = v66;
  v422 = v417;
  v423 = v12;
  v424 = v418;
  type metadata accessor for FSOrFPJob(0, &v421);
  sub_1CF9E78A8();
  v72 = v419;
  v404 = v68;
  v73 = v22;
  if ((~v419 & 0xF000000000000007) != 0)
  {
    v390 = (v370 + 56);
    v389 = (v370 + 16);
    v354 = (v370 + 8);
    v403 = (v372 + 8);
    v353 = (v365 + 8);
    v391 = v69;
    v368 = v22;
    do
    {
      if ((v72 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v421 = v66;
      v422 = v71;
      v423 = v68;
      v424 = v70;
      type metadata accessor for Propagation.CreateItem(0, &v421);
      v104 = swift_dynamicCastClass();
      if (v104)
      {
        v105 = *(*v104 + 664);
        v360 = v104;
        v106 = v73;
        v107 = v104 + v105;
        swift_beginAccess();
        v374 = swift_getAssociatedConformanceWitness();
        v109 = type metadata accessor for ItemState(0, v106, v374, v108);
        v110 = *(v109 - 8);
        v111 = *(v110 + 48);
        v382 = v109;
        v381 = v111;
        v380 = (v110 + 48);
        v112 = (v111)(v107, 1);
        v113 = v389;
        v114 = v390;
        v383 = v107;
        if (v112)
        {
          v115 = *v390;
          v116 = v415;
          (*v390)(v415, 1, 1, v106);
          v117 = *v113;
        }

        else
        {
          v117 = *v389;
          v116 = v415;
          (*v389)(v415, v107, v106);
          v115 = *v114;
          (*v114)(v116, 0, 1, v106);
        }

        v129 = v106;
        v131 = v410;
        v130 = v411;
        (v117)(v410, v405, v129);
        (v115)(v131, 0, 1, v129);
        v132 = *(TupleTypeMetadata2 + 48);
        v133 = v116;
        v134 = v412;
        v135 = v413;
        (v412)(v130, v133, v413);
        v134(&v130[v132], v131, v135);
        v136 = v408;
        if (v408(v130, 1, v129) == 1)
        {
          v137 = *v403;

          v137(v131, v135);
          v137(v415, v135);
          v138 = &v130[v132];
          v139 = v130;
          v73 = v368;
          if (v136(v138, 1, v368) != 1)
          {
            goto LABEL_19;
          }

          v137(v411, v413);
          v71 = v417;
        }

        else
        {
          v140 = v396;
          v134(v396, v130, v135);
          v141 = v368;
          v142 = v136(&v130[v132], 1, v368);
          v143 = v141;
          v144 = v410;
          v145 = v415;
          v146 = v140;
          v139 = v130;
          if (v142 == 1)
          {
            goto LABEL_18;
          }

          v147 = &v411[v132];
          v148 = v384;
          v375(v384, v147, v143);

          v149 = v396;
          LODWORD(v352) = sub_1CF9E6868();
          v73 = v143;
          v150 = *v354;
          (*v354)(v148, v143);
          v151 = *v403;
          (*v403)(v410, v135);
          v151(v415, v135);
          v150(v149, v143);
          v151(v411, v135);
          v71 = v417;
          if ((v352 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v152 = v383;
        v153 = v382;
        result = v381(v383, 1, v382);
        if (result == 1)
        {
          goto LABEL_98;
        }

        v155 = (v152 + *(v153 + 36));
        v156 = v155[1];
        v421 = *v155;
        v422 = v156;
        v66 = v416;
        v68 = v404;
        v157 = type metadata accessor for SnapshotItem(0, v416, v404, v154);
        v158 = (v399 + *(v157 + 44));
        v159 = v158[1];
        v419 = *v158;
        v420 = v159;

        LOBYTE(v156) = sub_1CF936C68(&v421, &v419);

        sub_1CF09575C(v72);
        v420, v160, v161, v162, v163, v164, v165, v166;
        v422, v167, v168, v169, v170, v171, v172, v173;
        v70 = v418;
        if (v156)
        {
          (*v354)(v405, v73);

          v334 = v398;
          v335 = v379;
          (*(v387 + 16))(v398, v360 + *(*v360 + 576), v379);
          sub_1CF09575C(v72);
          v336 = swift_getAssociatedConformanceWitness();
          v421 = v335;
          v422 = v73;
          v423 = v336;
          v337 = v406;
LABEL_91:
          v424 = *(v337 - 32);
          v338 = type metadata accessor for ReconciliationID(0, &v421);
          swift_storeEnumTagMultiPayload();
          LOBYTE(isa) = 1;
          (*(*(v338 - 8) + 56))(v334, 0, 1, v338);
          return isa & 1;
        }
      }

      else
      {
        v421 = v66;
        v422 = v71;
        v423 = v68;
        v424 = v70;
        type metadata accessor for Propagation.UpdateItem(0, &v421);
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          goto LABEL_21;
        }

        v119 = *(*v118 + 672);
        v360 = v118;
        v120 = v118 + v119;
        swift_beginAccess();
        v352 = swift_getAssociatedConformanceWitness();
        v122 = type metadata accessor for ItemState(0, v73, v352, v121);
        v123 = *(v122 - 8);
        v124 = *(v123 + 48);
        v381 = v122;
        v380 = v124;
        v374 = v123 + 48;
        v125 = (v124)(v120, 1);
        v382 = v120;
        if (v125)
        {
          v126 = *v390;
          v127 = v402;
          (*v390)(v402, 1, 1, v73);
          v128 = *v389;
        }

        else
        {
          v128 = *v389;
          v127 = v402;
          (*v389)(v402, v120, v73);
          v126 = *v390;
          (*v390)(v127, 0, 1, v73);
        }

        v174 = v388;
        v175 = v386;
        (v128)(v386, v405, v73);
        (v126)(v175, 0, 1, v73);
        v176 = *(TupleTypeMetadata2 + 48);
        v177 = v412;
        v135 = v413;
        (v412)(v174, v127, v413);
        v383 = v176;
        v177(&v174[v176], v175, v135);
        v178 = v175;
        v179 = v408;
        if (v408(v174, 1, v73) == 1)
        {
          v180 = *v403;

          v180(v178, v135);
          v180(v402, v135);
          v139 = v174;
          if (v179(&v174[v383], 1, v73) != 1)
          {
            goto LABEL_19;
          }

          v180(v388, v413);
          v71 = v417;
        }

        else
        {
          v177(v385, v174, v135);
          v181 = v179(&v174[v383], 1, v73);
          v144 = v178;
          v145 = v402;
          v146 = v385;
          v139 = v174;
          v143 = v73;
          if (v181 == 1)
          {
LABEL_18:
            v103 = *v403;

            v103(v144, v135);
            v103(v145, v135);
            (*v354)(v146, v143);
            v73 = v143;
LABEL_19:
            (*v353)(v139, TupleTypeMetadata2);
            v71 = v417;
LABEL_20:
            sub_1CF09575C(v72);
            v66 = v416;
            v70 = v418;
            v68 = v404;
            goto LABEL_21;
          }

          v182 = v388;
          v183 = v384;
          v375(v384, &v388[v383], v73);

          v184 = v385;
          LODWORD(v383) = sub_1CF9E6868();
          v185 = *v354;
          (*v354)(v183, v73);
          v186 = *v403;
          (*v403)(v386, v135);
          v186(v402, v135);
          v185(v184, v73);
          v186(v182, v135);
          v71 = v417;
          if ((v383 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v187 = v382;
        v188 = v381;
        result = v380(v382, 1, v381);
        if (result == 1)
        {
          goto LABEL_99;
        }

        v190 = (v187 + *(v188 + 9));
        v191 = v190[1];
        v421 = *v190;
        v422 = v191;
        v66 = v416;
        v68 = v404;
        v192 = type metadata accessor for SnapshotItem(0, v416, v404, v189);
        v193 = (v399 + *(v192 + 44));
        v194 = v193[1];
        v419 = *v193;
        v420 = v194;

        LOBYTE(v191) = sub_1CF936C68(&v421, &v419);

        sub_1CF09575C(v72);
        v420, v195, v196, v197, v198, v199, v200, v201;
        v422, v202, v203, v204, v205, v206, v207, v208;
        v70 = v418;
        if (v191)
        {
          v209 = v360;
          (*v354)(v405, v73);

          v210 = v209 + *(*v209 + 576);
          v334 = v398;
          v211 = v379;
          (*(v387 + 16))(v398, v210, v379);
          sub_1CF09575C(v72);
          v212 = swift_getAssociatedConformanceWitness();
          v421 = v211;
          v422 = v73;
          v423 = v212;
          v337 = &v384;
          goto LABEL_91;
        }
      }

LABEL_21:
      sub_1CF09575C(v72);
      v421 = v66;
      v422 = v71;
      v423 = v68;
      v424 = v70;
      type metadata accessor for FSOrFPJob(0, &v421);
      sub_1CF9E78A8();
      v72 = v419;
    }

    while ((~v419 & 0xF000000000000007) != 0);
  }

  v74 = v406[0];
  if (*(v406[0] + v357[16] + 16) != 2 && !sub_1CF07CD80(v397) && *(v74 + v357[9]))
  {
    (*(v370 + 1))(v405, v73);
    v75 = v379;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
LABEL_9:
    v77 = swift_getAssociatedConformanceWitness();
    v421 = v75;
    v422 = v73;
    goto LABEL_15;
  }

  isa = v407[1].super.isa;
  v79 = sub_1CF056558();
  v81 = v379;
  if (!v79)
  {
    goto LABEL_71;
  }

  v82 = type metadata accessor for SnapshotItem(0, v66, v68, v80);
  v411 = *(v82 + 36);
  v83 = v399;
  v84 = (v399 + *(v82 + 44));
  v85 = v84[1];
  v421 = *v84;
  v422 = v85;
  v86 = v387;
  v87 = (v387 + 16);
  v88 = v361;
  v415 = *(v387 + 16);
  (v415)(v361, v399, v81);
  (*(v86 + 56))(v88, 0, 1, v81);
  v89 = *(*isa + 256);

  v90 = &v411[v83];
  v91 = v392;
  v92 = v414;
  v93 = v89(v90, &v421, v88, v393, v394, v392);
  if (v92)
  {
    (*(v362 + 8))(v88, v363);
    v422, v94, v95, v96, v97, v98, v99, v100;
    (*(v370 + 1))(v405, v73);
    return isa & 1;
  }

  v411 = v87;
  v414 = 0;
  v213 = v93;
  (*(v362 + 8))(v88, v363);
  v422, v214, v215, v216, v217, v218, v219, v220;
  v228 = v213;
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_70;
  }

  v229 = 0;
  v230 = v387;
  v410 = (v387 + 32);
  v402 = (v358 + 48);
  v391 = (v358 + 32);
  v403 = (v387 + 8);
  v389 = (v372 + 8);
  v396 = (v358 + 8);
  v390 = (v359 + 8);
  v231 = v369;
  while (1)
  {
    v233 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v233 & 1) == 0)
    {
      break;
    }

    (v415)(v395, v228 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v229, v81);
    v234 = v229 + 1;
    if (__OFADD__(v229, 1))
    {
      goto LABEL_69;
    }

LABEL_54:
    v235 = v81;
    v236 = *v410;
    (*v410)(v231, v395, v235);
    isa = *v407->tree;
    v237 = v377;
    v238 = v414;
    sub_1CF68DDB0(v231, v393, v394, v91, v377);
    v414 = v238;
    if (v238)
    {
      v228, v239, v240, v241, v242, v243, v244, v245;
      (*v403)(v231, v379);
      (*(v370 + 1))(v405, v73);
      return isa & 1;
    }

    v246 = v397;
    if ((*v402)(v237, 1, v397) == 1)
    {
      v81 = v379;
      (*v403)(v231, v379);
      (*v390)(v237, v367);
LABEL_50:
      v91 = v392;
      goto LABEL_51;
    }

    v247 = v371;
    (*v391)(v371, v237, v246);
    v248 = v366;
    v249 = v413;
    (v412)(v366, &v247[*(v246 + 52)], v413);
    if (v408(v248, 1, v73) != 1)
    {
      v258 = v369;
      v81 = v379;
      (*v403)(v369, v379);
      (*v389)(v248, v249);
      v259 = v247;
      v231 = v258;
      (*v396)(v259, v397);
      goto LABEL_50;
    }

    (*v389)(v248, v249);
    v257 = &v247[v357[16]];
    if (v257[16])
    {
      isa = v397;
      v91 = v392;
      v231 = v369;
      if (v257[16] == 2)
      {
        v228, v250, v251, v252, v253, v254, v255, v256;
        (*(v370 + 1))(v405, v73);
LABEL_96:
        (*v396)(v371, isa);
        v346 = v398;
        v347 = v379;
        v236(v398, v231, v379);
        v348 = swift_getAssociatedConformanceWitness();
        v349 = swift_getAssociatedConformanceWitness();
        v421 = v347;
        v422 = v73;
        v423 = v348;
        v424 = v349;
        v350 = type metadata accessor for ReconciliationID(0, &v421);
        swift_storeEnumTagMultiPayload();
        LOBYTE(isa) = 1;
        (*(*(v350 - 8) + 56))(v346, 0, 1, v350);
        return isa & 1;
      }
    }

    else
    {
      isa = v397;
      v91 = v392;
      v231 = v369;
      if ((v257[1] & 4) != 0)
      {
        v81 = v379;
        (*v403)(v369, v379);
        (*v396)(v371, isa);
        goto LABEL_51;
      }
    }

    v260 = isa;
    v261 = v371;
    if (sub_1CF07CD80(v260) || !*&v261[v357[9]])
    {
      (*(v370 + 1))(v405, v73);
      v228, v339, v340, v341, v342, v343, v344, v345;
      isa = v397;
      goto LABEL_96;
    }

    v81 = v379;
    (*v403)(v231, v379);
    (*v396)(v261, v397);
LABEL_51:
    ++v229;
    v232 = v234 == sub_1CF9E6DF8();
    v230 = v387;
    if (v232)
    {
      goto LABEL_70;
    }
  }

  result = sub_1CF9E7998();
  if (v355 != 8)
  {
    goto LABEL_101;
  }

  v421 = result;
  (v415)(v395, &v421, v81);
  swift_unknownObjectRelease();
  v234 = v229 + 1;
  if (!__OFADD__(v229, 1))
  {
    goto LABEL_54;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  v228, v221, v222, v223, v224, v225, v226, v227;
  v66 = v416;
LABEL_71:
  v262 = v399;
  isa = *v407[1]._anon_8;
  v263 = (v262 + *(type metadata accessor for SnapshotItem(0, v66, v404, v80) + 44));
  v264 = v263[1];
  v421 = *v263;
  v422 = v264;
  v265 = v370;
  v267 = (v370 + 56);
  v266 = *(v370 + 7);
  v268 = v364;
  v266(v364, 1, 1, v73);
  v269 = *(*isa + 256);
  v270 = v268;

  v271 = v73;
  v272 = v405;
  v273 = v414;
  v274 = v269(v405, &v421, v270, v393, v394, v392);
  if (v273)
  {
    (*(v372 + 8))(v270, v413);
    v422, v275, v276, v277, v278, v279, v280, v281;
    (v265)[1](v272, v271);
    return isa & 1;
  }

  v282 = v274;
  v403 = v266;
  v283 = v372 + 8;
  v410 = *(v372 + 8);
  (v410)(v270, v413);
  v422, v284, v285, v286, v287, v288, v289, v290;
  v73 = v271;
  if (sub_1CF9E6DF8() < 1)
  {
    (*(v370 + 1))(v405, v271);
    v282, v323, v324, v325, v326, v327, v328, v329;
    v330 = v379;
    v331 = swift_getAssociatedConformanceWitness();
    v332 = swift_getAssociatedConformanceWitness();
    v421 = v330;
    v422 = v271;
    v423 = v331;
    v424 = v332;
    v333 = type metadata accessor for ReconciliationID(0, &v421);
    (*(*(v333 - 8) + 56))(v398, 1, 1, v333);
    LOBYTE(isa) = 0;
    return isa & 1;
  }

  v402 = v267;
  v372 = v283;

  v291 = sub_1CF9E6DF8();
  v299 = v408;
  v407 = v282;
  v300 = v370;
  if (!v291)
  {
LABEL_89:
    v282, v292, v293, v294, v295, v296, v297, v298;
    v300[1](v405, v73);
    v319 = v379;
    v320 = swift_getAssociatedConformanceWitness();
    v321 = swift_getAssociatedConformanceWitness();
    v421 = v319;
    v422 = v73;
    v423 = v320;
    v424 = v321;
    v322 = type metadata accessor for ReconciliationID(0, &v421);
    LOBYTE(isa) = 1;
    (*(*(v322 - 8) + 56))(v398, 1, 1, v322);
    return isa & 1;
  }

  v301 = 0;
  v397 = *(v397 + 52);
  v399 = (v370 + 16);
  v396 = (v365 + 8);
  v395 = (v370 + 8);
  v394 = (v370 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v414 = 0;
  while (2)
  {
    v304 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v304)
    {
      result = (v300[2])(v400, v282 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + v300[9] * v301, v73);
      v305 = v406[0];
      v306 = v401;
    }

    else
    {
      result = sub_1CF9E7998();
      v305 = v406[0];
      v306 = v401;
      if (v356 != 8)
      {
        goto LABEL_100;
      }

      v421 = result;
      (*v399)(v400, &v421, v73);
      result = swift_unknownObjectRelease();
    }

    v307 = v403;
    if (!__OFADD__(v301, 1))
    {
      v415 = v301;
      v411 = v301 + 1;
      v375(v306, v400, v73);
      (v307)(v306, 0, 1, v73);
      v308 = *(TupleTypeMetadata2 + 48);
      v309 = v378;
      v310 = v306;
      v311 = v413;
      v312 = v305;
      v313 = v412;
      (v412)(v378, v310, v413);
      v313(&v309[v308], v312 + v397, v311);
      if (v299(v309, 1, v73) == 1)
      {
        (v410)(v401, v311);
        v302 = v299(&v309[v308], 1, v73);
        v282 = v407;
        v303 = v415;
        if (v302 == 1)
        {
          swift_bridgeObjectRelease_n();
          (v410)(v309, v413);
          (*v395)(v405, v73);
          goto LABEL_95;
        }

LABEL_77:
        (*v396)(v309, TupleTypeMetadata2);
        v300 = v370;
      }

      else
      {
        v314 = v373;
        v313(v373, v309, v311);
        if (v299(&v309[v308], 1, v73) == 1)
        {
          (v410)(v401, v311);
          (*v395)(v314, v73);
          v282 = v407;
          v303 = v415;
          goto LABEL_77;
        }

        v315 = v384;
        v375(v384, &v309[v308], v73);
        swift_getAssociatedConformanceWitness();
        LODWORD(v408) = sub_1CF9E6868();
        v316 = v309;
        v317 = *v395;
        (*v395)(v315, v73);
        v318 = v410;
        (v410)(v401, v311);
        v317(v373, v73);
        v318(v316, v311);
        v300 = v370;
        v282 = v407;
        v303 = v415;
        if (v408)
        {
          swift_bridgeObjectRelease_n();
          v317(v405, v73);
LABEL_95:
          v75 = v379;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          goto LABEL_9;
        }
      }

      v301 = v303 + 1;
      if (v411 == sub_1CF9E6DF8())
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

void sub_1CF69AAA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v51 = a5;
  v8 = *v5;
  v9 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 96);
  v49 = *(v8 + 80);
  v50 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v40 - v14;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 64);
  v22 = swift_checkMetadataState();
  if (v21(v22, AssociatedConformanceWitness))
  {
    if (swift_weakLoadStrong())
    {

      sub_1CF046AB4();
LABEL_7:

      v23 = v48;
LABEL_8:
      v24 = v46;
      (*(v23 + 32))(v46, v19, AssociatedTypeWitness);
      v26 = type metadata accessor for ItemState(0, v22, AssociatedConformanceWitness, v25);
      v27 = *(v26 + 40);
      v28 = (a1 + *(v26 + 36));
      v29 = v28[1];
      v52[0] = *v28;
      v52[1] = v29;
      v30 = v47;
      sub_1CEFF4408(a1 + v27, v47);
      v31 = swift_getAssociatedConformanceWitness();
      v32 = v51;
      sub_1CF67E0DC(v24, v52, v30, AssociatedTypeWitness, v31, v51);
      v34 = type metadata accessor for ItemState(0, AssociatedTypeWitness, v31, v33);
      (*(*(v34 - 8) + 56))(v32, 0, 1, v34);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if ((*(AssociatedConformanceWitness + 72))(v22, AssociatedConformanceWitness))
  {
    if (swift_weakLoadStrong())
    {

      sub_1CF685B34();
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v35 = v42;
  v36 = v53;
  (*(*v6 + 152))(a1, v43, v44, v45);
  if (!v36)
  {
    v23 = v48;
    if ((*(v48 + 48))(v35, 1, AssociatedTypeWitness) == 1)
    {
      (*(v40 + 8))(v35, v41);
      v37 = swift_getAssociatedConformanceWitness();
      v39 = type metadata accessor for ItemState(0, AssociatedTypeWitness, v37, v38);
      (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
      return;
    }

    v53 = 0;
    (*(v23 + 32))(v19, v35, AssociatedTypeWitness);
    goto LABEL_8;
  }
}

uint64_t sub_1CF69C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t *a8, void *a9)
{
  v27 = a6;
  v28 = a8;
  v12 = *(*a2 + 96);
  v29[0] = *(*a2 + 80);
  v29[1] = v12;
  v13 = type metadata accessor for ReconciliationTable.CachedEntry(255, v29);
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  v22 = *(v15 + 16);
  v26 = a1;
  v22(v17, a1, v14, v19);
  v23 = v30;
  sub_1CF69C378(a3, v17, a4, v27, v28, v21);
  if (v23)
  {
    result = (*(v15 + 8))(v17, v14);
    *a9 = v23;
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    (*(*(v13 - 8) + 56))(v21, 0, 1, v13);
    return (*(v15 + 40))(v26, v21, v14);
  }

  return result;
}

uint64_t sub_1CF69C378@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v198 = a5;
  v197 = a4;
  v199 = a3;
  v207 = a2;
  v203 = a1;
  v177 = a6;
  v7 = *v6;
  v8 = *(*v6 + 104);
  v9 = *(*v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v165 = sub_1CF9E75D8();
  v162 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v167 = &v156 - v11;
  v12 = *(v7 + 96);
  v204 = v6;
  v13 = *(v7 + 80);
  v14 = swift_getAssociatedTypeWitness();
  v159 = sub_1CF9E75D8();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v156 - v15;
  *&v16 = v13;
  *(&v16 + 1) = v9;
  *&v17 = v12;
  *(&v17 + 1) = v8;
  v208 = v17;
  v209 = v16;
  v213 = v17;
  v212 = v16;
  v166 = type metadata accessor for PersistenceTrigger(0, &v212);
  v163 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v161 = &v156 - v18;
  v213 = v208;
  v212 = v209;
  v19 = type metadata accessor for ItemReconciliation(255, &v212);
  v176 = sub_1CF9E75D8();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v156 - v20;
  v181 = v12;
  v180 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v182 = v8;
  v183 = v9;
  v22 = swift_getAssociatedConformanceWitness();
  v164 = v14;
  *&v212 = v14;
  *(&v212 + 1) = AssociatedTypeWitness;
  v168 = AssociatedTypeWitness;
  *&v213 = AssociatedConformanceWitness;
  *(&v213 + 1) = v22;
  v23 = type metadata accessor for ReconciliationID(255, &v212);
  v172 = sub_1CF9E75D8();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v178 = &v156 - v24;
  v190 = v23;
  v189 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v156 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v170 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v188 = &v156 - v32;
  v213 = v208;
  v212 = v209;
  v33 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v212);
  v201 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v184 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v192 = (&v156 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v156 - v38;
  v40 = sub_1CF9E75D8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v156 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v156 - v48;
  v191 = v19;
  v196 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v186 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v185 = &v156 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v169 = &v156 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v187 = &v156 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v202 = (&v156 - v59);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v194 = &v156 - v62;
  v63 = *(v41 + 16);
  v63(v49, v207, v40, v61);
  v207 = v49;
  v64 = v49;
  v65 = v201;
  (v63)(v46, v64, v40);
  v205 = *(v65 + 48);
  v206 = v65 + 48;
  v66 = v205(v46, 1, v33);
  v193 = v40;
  v195 = v41;
  if (v66 == 1)
  {
    (*(v41 + 8))(v46, v40);
  }

  else
  {
    (*(v65 + 32))(v39, v46, v33);
    if (sub_1CF0797FC(v203, v33))
    {
      v67 = *(v196 + 16);
      v68 = v191;
      v67(v194, &v39[v33[13]], v191);
      v67(v202, &v39[v33[14]], v68);
      v192 = *v39;
      LODWORD(v188) = v39[8];
      (*(v65 + 8))(v39, v33);
      v69 = v200;
      v70 = v198;
      v71 = v207;
      v72 = v197;
      goto LABEL_19;
    }

    (*(v65 + 8))(v39, v33);
    v40 = v193;
  }

  v73 = v197;
  (v63)(v43, v207, v40);
  v74 = v205(v43, 1, v33);
  v75 = v192;
  if (v74 == 1)
  {
    v157 = v33;
    v76 = v195;
    (*(v195 + 8))(v43, v40);
    v77 = v200;
  }

  else
  {
    v78 = v201;
    (*(v201 + 32))(v192, v43, v33);
    v79 = v200;
    sub_1CF695580(v75, v199, v73, v198);
    v76 = v195;
    if (v79)
    {
      (*(v78 + 8))(v75, v33);
      v71 = v207;
      return (*(v76 + 8))(v71, v40);
    }

    (*(v78 + 8))(v75, v33);
    v80 = v207;
    (*(v76 + 8))(v207, v40);
    v81 = *(v78 + 56);
    v157 = v33;
    v81(v80, 1, 1, v33);
    v77 = 0;
  }

  v82 = v188;
  v212 = v209;
  v213 = v208;
  v83 = type metadata accessor for ReconciliationMutation(0, &v212);
  sub_1CF077DEC(v83, v82);
  v84 = v198[1];
  v85 = v187;
  v86 = sub_1CF69DBA4(v187, v82, v199, v73, v84);
  if (v77)
  {
    (*(v189 + 8))(v82, v190);
    v40 = v193;
    v71 = v207;
    return (*(v76 + 8))(v71, v40);
  }

  v88 = v87;
  v192 = v86;
  v200 = 0;
  v89 = v189;
  v90 = v202;
  v91 = v190;
  v156 = *(v189 + 8);
  v156(v82, v190);
  v187 = *(v196 + 32);
  (v187)(v90, v85, v191);
  if (v88)
  {
    v92 = v178;
    sub_1CF078C8C(v83, v178);
    if ((*(v89 + 48))(v92, 1, v91) != 1)
    {
      v116 = v91;
      v117 = v170;
      (*(v89 + 32))(v170, v92, v116);
      v118 = v169;
      v119 = v200;
      v120 = sub_1CF69DBA4(v169, v117, v199, v197, v84);
      v71 = v207;
      v200 = v119;
      if (v119)
      {
        v156(v117, v116);
        (*(v196 + 8))(v202, v191);
        v40 = v193;
        v76 = v195;
        return (*(v76 + 8))(v71, v40);
      }

      LODWORD(v188) = v121;
      v192 = v120;
      v156(v117, v116);
      v155 = v202;
      v68 = v191;
      (*(v196 + 8))(v202, v191);
      (v187)(v155, v118, v68);
      v93 = v155;
      goto LABEL_18;
    }

    (*(v171 + 8))(v92, v172);
    LODWORD(v188) = 1;
  }

  else
  {
    LODWORD(v188) = 0;
  }

  v68 = v191;
  v71 = v207;
  v93 = v202;
LABEL_18:
  v67 = *(v196 + 16);
  v67(v194, v93, v68);
  v70 = v198;
  v72 = v197;
  v33 = v157;
  v69 = v200;
LABEL_19:
  v94 = v203;
  if (v205(v71, 1, v33))
  {
    v95 = 0;
  }

  else
  {
    v95 = *&v71[v33[15]];
  }

  v214 = v95;
  v96 = v33;
  if (v205(v71, 1, v33))
  {
    v97 = 0;
  }

  else
  {
    v97 = *&v71[v33[15] + 8];
  }

  v211 = v97;
  v98 = v202;
  v99 = sub_1CF69E000(v94, v202, &v214, &v211, v199, v72, v70);
  if (v69)
  {
    v101 = *(v196 + 8);
    v101(v98, v68);
    v101(v194, v68);
    v40 = v193;
    v76 = v195;
    return (*(v76 + 8))(v71, v40);
  }

  LODWORD(v187) = v100;
  v200 = v99;
  v212 = v209;
  v213 = v208;
  *&v209 = type metadata accessor for ReconciliationMutation(0, &v212);
  v106 = sub_1CF078FAC(v209, v103, v104, v105);
  v108 = v188;
  if ((v109 & 1) == 0)
  {
    if ((v188 & 1) != 0 || (v110 = v106, v111 = v68, v112 = v107, v113 = sub_1CF95B2CC(v111), v107 = v112, v68 = v191, v114 = v113, v106 = v110, v108 = v188, v98 = v202, v114))
    {
      v115 = (v98 + *(v68 + 64));
      *v115 = v106;
      v115[1] = v107;
    }

    else
    {
      v122 = (v202 + *(v191 + 64));
      v123 = *v122;
      v124 = v122[1];
      if (v106 > *v122)
      {
        v123 = v106;
      }

      if (v107 < v124)
      {
        v124 = v107;
      }

      *v122 = v123;
      v122[1] = v124;
    }
  }

  v67(v185, v194, v68);
  v67(v186, v98, v68);
  *&v212 = v214;
  v210 = v211;
  if (v205(v71, 1, v96))
  {
    v125 = 0;
    v126 = -1;
  }

  else
  {
    v127 = &v71[v96[16]];
    v125 = *v127;
    v126 = v127[8];
  }

  v128 = v96;
  v129 = v184;
  v130 = v187;
  v131 = sub_1CF69DEE8(v125, v126, v200, v187);
  v133 = v132;
  v134 = v205(v71, 1, v128);
  v157 = v128;
  if (v134)
  {
    v135 = v179;
    (*(v196 + 56))(v179, 1, 1, v68);
  }

  else
  {
    v136 = &v71[v128[17]];
    v135 = v179;
    (*(v175 + 16))(v179, v136, v176);
  }

  sub_1CF079694(v192, v108 & 1, v185, v186, &v212, &v210, v131, v133, v129, v135, v180, v183, v181, v182);
  v137 = v202;
  if (v130 == 1)
  {
    v142 = v174;
    sub_1CF077DEC(v209, v174);
    (*(*v204 + 208))(v142, v200, v199, v197, v198);
    v138 = v129;
    (*(v189 + 8))(v142, v190);
    goto LABEL_54;
  }

  v138 = v129;
  v139 = v204;
  v140 = v197;
  if (v130)
  {
LABEL_54:
    v153 = v157;
    v143 = v194;
    goto LABEL_55;
  }

  v141 = v173;
  sub_1CF077DEC(v209, v173);
  (*(*v139 + 216))(v141, v200, v199, v140, v198);
  (*(v189 + 8))(v141, v190);
  v143 = v194;
  if (!sub_1CF07CD80(v68))
  {
    v153 = v157;
    goto LABEL_55;
  }

  v200 = 0;
  result = swift_weakLoadStrong();
  *&v209 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_59;
  }

  v144 = v160;
  (*(v158 + 16))(v160, v143, v159);
  v145 = v164;
  v146 = *(v164 - 8);
  result = (*(v146 + 48))(v144, 1, v164);
  v147 = v168;
  v148 = v167;
  v149 = v161;
  if (result == 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  (*(v146 + 32))(v161, v144, v145);
  (*(v162 + 16))(v148, &v143[*(v68 + 52)], v165);
  v150 = *(v147 - 8);
  result = (*(v150 + 48))(v148, 1, v147);
  if (result != 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v150 + 32))(&v149[*(TupleTypeMetadata2 + 48)], v148, v147);
    v152 = v166;
    swift_storeEnumTagMultiPayload();
    (*(*v209 + 312))(v149);

    (*(v163 + 8))(v149, v152);
    v71 = v207;
    v153 = v157;
    v138 = v184;
    v143 = v194;
    v137 = v202;
LABEL_55:
    v154 = *(v196 + 8);
    v154(v137, v68);
    v154(v143, v68);
    (*(v201 + 32))(v177, v138, v153);
    return (*(v195 + 8))(v71, v193);
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t *sub_1CF69DBA4(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a1;
  v36 = a3;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v39[0] = *(*v5 + 80);
  v39[1] = v8;
  v32 = type metadata accessor for ItemReconciliation(255, v39);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1CF9E75D8();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v34 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = v40;
  (*(v7 + 168))(a2, 1, v36, v37, v38, v20);
  if (!v23)
  {
    v37 = v18;
    v38 = a2;
    v25 = v33;
    v24 = v34;
    v40 = 0;
    if ((*(v34 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      (*(v25 + 8))(v12, v10);
      sub_1CF078348(v38, v35);
      return 0;
    }

    else
    {
      v26 = *(v24 + 32);
      v26(v22, v12, TupleTypeMetadata2);
      v27 = v37;
      (*(v24 + 16))(v37, v22, TupleTypeMetadata2);
      v28 = v32;
      v29 = *(v32 - 8);
      (*(v29 + 32))(v35, v27, v32);
      v26(v15, v22, TupleTypeMetadata2);
      v5 = *&v15[*(TupleTypeMetadata2 + 48)];
      (*(v29 + 8))(v15, v28);
    }
  }

  return v5;
}

unint64_t sub_1CF69DEE8(unint64_t result, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 == -1 || a2 == 2 && result == 3)
  {
    if (a4 >= 2u)
    {
      return a3;
    }

    else
    {
      return 3;
    }
  }

  if (a4 < 2u)
  {
    return result;
  }

  if (a4 != 2)
  {
    goto LABEL_22;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1 && a2 == 2 && result < 2)
      {
        return 1;
      }
    }

    else if (a2 == 2 && result < 2)
    {
      return result;
    }

LABEL_22:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (a3 == 2)
  {
    return 2;
  }

  if (a3 != 3)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF69E000(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, void *a4, uint64_t a5, char *a6, uint64_t *a7)
{
  v416 = a6;
  v417 = a7;
  v378 = a5;
  v393 = a4;
  v392 = a3;
  v423 = a2;
  v424 = a1;
  v9 = *(*v7 + 88);
  v10 = *(*v7 + 96);
  v11 = *(*v7 + 104);
  v427 = *(*v7 + 80);
  v8 = v427;
  v428 = v9;
  v429 = v10;
  v430 = v11;
  v377 = type metadata accessor for PersistenceTrigger(0, &v427);
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v375 = &v356 - v12;
  v406 = type metadata accessor for ReconciliationSideMutation(0, v8, v10, v13);
  v405 = *(v406 - 8);
  MEMORY[0x1EEE9AC00](v406);
  v404 = &v356 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v427 = AssociatedTypeWitness;
  v428 = v16;
  v363 = AssociatedConformanceWitness;
  v429 = AssociatedConformanceWitness;
  v430 = v18;
  v358 = v18;
  v19 = type metadata accessor for ReconciliationID(255, &v427);
  v374 = sub_1CF9E75D8();
  v366 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v390 = &v356 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v391 = &v356 - v22;
  v403 = type metadata accessor for ReconciliationSideMutation(0, v9, v11, v23);
  v402 = *(v403 - 8);
  MEMORY[0x1EEE9AC00](v403);
  v401 = &v356 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v387 = &v356 - v25;
  v26 = sub_1CF9E75D8();
  v368 = swift_getTupleTypeMetadata2();
  v360 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v364 = &v356 - v27;
  v413 = v26;
  v408 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v395 = (&v356 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v389 = &v356 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v359 = &v356 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v369 = &v356 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v370 = &v356 - v37;
  v425 = v19;
  v426 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v383 = &v356 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v388 = &v356 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v400 = &v356 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v386 = &v356 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v399 = (&v356 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v379 = &v356 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v398 = &v356 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v382 = &v356 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v362 = &v356 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v373 = &v356 - v57;
  v58 = sub_1CF9E75D8();
  v396 = swift_getTupleTypeMetadata2();
  v365 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v384 = &v356 - v59;
  v415 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v356 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v381 = &v356 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v380 = &v356 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v356 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v397 = &v356 - v71;
  v427 = v8;
  v428 = v9;
  v429 = v10;
  v430 = v11;
  v422 = type metadata accessor for ItemReconciliation(0, &v427);
  v371 = *(v422 - 1);
  MEMORY[0x1EEE9AC00](v422);
  v361 = &v356 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v372 = &v356 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v367 = &v356 - v76;
  v410 = v16;
  v407 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v357 = &v356 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v409 = &v356 - v80;
  v412 = AssociatedTypeWitness;
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v82);
  v394 = &v356 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v356 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v411 = (&v356 - v88);
  v420 = v10;
  v421 = v8;
  v427 = v8;
  v428 = v9;
  v418 = v11;
  v419 = v9;
  v429 = v10;
  v430 = v11;
  v89 = type metadata accessor for ReconciliationMutation(0, &v427);
  v90 = *(v89 - 8);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v93 = &v356 - v92;
  (*(v90 + 16))(&v356 - v92, v424, v89, v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v173 = v412;
      v424 = v81;
      v174 = v410;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v176 = *(TupleTypeMetadata3 + 48);
      LODWORD(v401) = v93[*(TupleTypeMetadata3 + 64)];
      v177 = *(v424 + 32);
      v178 = v411;
      v400 = (v424 + 32);
      v399 = v177;
      v177(v411, v93, v173);
      v179 = *(v407 + 32);
      v180 = &v93[v176];
      v181 = v424;
      v398 = (v407 + 32);
      v395 = v179;
      v179(v409, v180, v174);
      v404 = *(v415 + 16);
      v182 = v397;
      (v404)(v397, v423, v58);
      v183 = *(v181 + 16);
      v403 = v181 + 16;
      v402 = v183;
      (v183)(v69, v178, v173);
      (*(v181 + 56))(v69, 0, 1, v173);
      v184 = *(v396 + 48);
      v185 = v384;
      v186 = v182;
      v187 = v181;
      v188 = v404;
      (v404)(v384, v186, v58);
      v406 = v184;
      v188(&v185[v184], v69, v58);
      v405 = *(v187 + 48);
      if ((v405)(v185, 1, v173) == 1)
      {
        v189 = *(v415 + 8);
        v189(v69, v58);
        v189(v397, v58);
        v190 = v185;
        if ((v405)(&v185[v406], 1, v173) == 1)
        {
          v189(v185, v58);
          v191 = v423;
          goto LABEL_68;
        }
      }

      else
      {
        v188(v380, v185, v58);
        v277 = (v187 + 8);
        v190 = v185;
        if ((v405)(&v185[v406], 1, v173) != 1)
        {
          v399(v86, &v185[v406], v173);
          v294 = v173;
          v295 = v380;
          LODWORD(v406) = sub_1CF9E6868();
          v296 = *v277;
          (*v277)(v86, v294);
          v297 = v190;
          v298 = *(v415 + 8);
          v298(v69, v58);
          v298(v397, v58);
          v299 = v295;
          v173 = v294;
          v296(v299, v294);
          v298(v297, v58);
          v191 = v423;
          if (v406)
          {
LABEL_68:
            v300 = *(v408 + 16);
            v404 = v422[13];
            v301 = v370;
            v302 = v413;
            v300(v370, v191 + v404, v413);
            v303 = v407;
            v304 = *(v407 + 16);
            v305 = v369;
            v306 = v410;
            v406 = v407 + 16;
            v405 = v304;
            (v304)(v369, v409, v410);
            (*(v303 + 56))(v305, 0, 1, v306);
            v307 = *(v368 + 48);
            v308 = v364;
            v300(v364, v301, v302);
            v415 = v307;
            v300(&v308[v307], v305, v302);
            v309 = *(v303 + 48);
            if (v309(v308, 1, v306) == 1)
            {
              v310 = *(v408 + 8);
              v311 = v413;
              v310(v305, v413);
              v310(v301, v311);
              v312 = v309(&v308[v415], 1, v306);
              v173 = v412;
              if (v312 == 1)
              {
                v310(v308, v311);
                v313 = 0;
LABEL_94:
                v342 = v410;
                v343 = v423;
                v335 = v424;
                goto LABEL_95;
              }
            }

            else
            {
              v320 = v359;
              v321 = v413;
              v300(v359, v308, v413);
              v322 = v415;
              v323 = (v303 + 8);
              if (v309(&v308[v415], 1, v306) != 1)
              {
                v336 = v357;
                v395(v357, &v308[v322], v306);
                v337 = sub_1CF9E6868();
                v338 = *v323;
                (*v323)(v336, v306);
                v339 = *(v408 + 8);
                v339(v369, v321);
                v339(v370, v321);
                v338(v320, v306);
                v339(v308, v321);
                v173 = v412;
                v325 = v417;
                if (v337)
                {
                  v313 = 0;
                  goto LABEL_94;
                }

                goto LABEL_77;
              }

              v324 = *(v408 + 8);
              v324(v369, v321);
              v324(v370, v321);
              (*v323)(v320, v306);
              v173 = v412;
            }

            (*(v360 + 8))(v308, v368);
            v325 = v417;
LABEL_77:
            v326 = v362;
            (v405)(v362, v409, v410);
            v327 = v425;
            swift_storeEnumTagMultiPayload();
            v328 = v361;
            v329 = v378;
            v330 = v414;
            v331 = v431;
            v332 = sub_1CF69DBA4(v361, v326, v378, v416, v325[1]);
            v431 = v331;
            if (v331)
            {
              (*(v426 + 8))(v326, v327);
              goto LABEL_79;
            }

            v417 = v332;
            v340 = v333;
            (*(v426 + 8))(v326, v327);
            v341 = v367;
            (*(v371 + 32))(v367, v328, v422);
            if (v340)
            {
LABEL_93:
              v313 = 1;
              goto LABEL_94;
            }

            v349 = v431;
            (*(*v330 + 200))(v341, v417, 0, v329, v416, v325);
            v431 = v349;
            v335 = v424;
            if (v349)
            {
              (*(v371 + 8))(v341, v422);
              v334 = v410;
              goto LABEL_80;
            }

            v351 = v422[13];
            v352 = type metadata accessor for ItemReconciliationHalf(0, v419, v418, v350);
            v353 = v423;
            (*(*(v352 - 8) + 24))(v423 + v404, &v341[v351], v352);
            v343 = v353;
            v313 = 1;
            v342 = v410;
LABEL_95:
            v344 = v407;
            LOBYTE(v427) = v401;
            v345 = v411;
            v346 = v409;
            sub_1CF6BA644(v343, v411, v409, &v427, v421, v419, v420, v418);
            (*(v344 + 8))(v346, v342);
            (*(v335 + 8))(v345, v173);
            if (v313)
            {
              (*(v371 + 8))(v367, v422);
            }

            return 1;
          }

LABEL_58:
          v279 = v373;
          (v402)(v373, v411, v173);
          v280 = v425;
          swift_storeEnumTagMultiPayload();
          v282 = v416;
          v281 = v417;
          v283 = v372;
          v284 = v378;
          v285 = v414;
          v286 = v431;
          v287 = sub_1CF69DBA4(v372, v279, v378, v416, v417[1]);
          v431 = v286;
          if (v286)
          {
            (*(v426 + 8))(v279, v280);
          }

          else
          {
            v314 = v279;
            v315 = v287;
            v316 = v288;
            (*(v426 + 8))(v314, v280);
            v317 = v367;
            (*(v371 + 32))(v367, v283, v422);
            if (v316)
            {
              goto LABEL_93;
            }

            v318 = v431;
            (*(*v285 + 200))(v317, v315, 0, v284, v282, v281);
            v431 = v318;
            if (!v318)
            {
              v347 = type metadata accessor for ItemReconciliationHalf(0, v421, v420, v319);
              v348 = v423;
              (*(*(v347 - 8) + 24))(v423, v317, v347);
              v343 = v348;
              v313 = 1;
              v342 = v410;
              v335 = v424;
              goto LABEL_95;
            }

            (*(v371 + 8))(v317, v422);
          }

LABEL_79:
          v334 = v410;
          v335 = v424;
LABEL_80:
          (*(v407 + 8))(v409, v334);
          return (*(v335 + 8))(v411, v173);
        }

        v278 = *(v415 + 8);
        v278(v69, v58);
        v278(v397, v58);
        (*v277)(v380, v173);
      }

      (*(v365 + 8))(v190, v396);
      goto LABEL_58;
    case 2u:
      v146 = v425;
      v147 = v93[*(swift_getTupleTypeMetadata2() + 48)];
      v148 = v426;
      v149 = v382;
      (*(v426 + 32))(v382, v93, v146);
      v150 = v387;
      (*(v148 + 16))(v387, v149, v146);
      v151 = v147 ^ (swift_getEnumCaseMultiPayload() != 1);
      v152 = *(v148 + 8);
      v152(v150, v146);
      if (v151)
      {
        v154 = v422;
        v155 = v422[13];
        v157 = v418;
        v156 = v419;
        v158 = type metadata accessor for ItemReconciliationHalf(0, v419, v418, v153);
        v159 = v423;
        (*(*(v158 - 8) + 8))(v423 + v155, v158);
        sub_1CF078A84(v156, v157, v159 + v155);
      }

      else
      {
        v239 = v420;
        v238 = v421;
        v240 = type metadata accessor for ItemReconciliationHalf(0, v421, v420, v153);
        v159 = v423;
        (*(*(v240 - 8) + 8))(v423, v240);
        sub_1CF078A84(v238, v239, v159);
        v154 = v422;
      }

      v241 = sub_1CF9E6DA8();
      v152(v149, v146);
      v242 = v154[15];
      *(v159 + v242), v243, v244, v245, v246, v247, v248, v249;
      result = 0;
      *(v159 + v242) = v241;
      return result;
    case 3u:
      v96 = v425;
      *(v423 + v422[14]) = v93[*(swift_getTupleTypeMetadata2() + 48)];
      goto LABEL_21;
    case 4u:
      v111 = v420;
      v110 = v421;
      v112 = type metadata accessor for ItemReconciliationHalf(0, v421, v420, v94);
      v113 = v423;
      (*(*(v112 - 8) + 8))(v423, v112);
      sub_1CF078A84(v110, v111, v113);
      v114 = v422;
      v115 = v422[13];
      v117 = v418;
      v116 = v419;
      v119 = type metadata accessor for ItemReconciliationHalf(0, v419, v418, v118);
      (*(*(v119 - 8) + 8))(v113 + v115, v119);
      sub_1CF078A84(v116, v117, v113 + v115);
      v120 = sub_1CF9E6DA8();
      v121 = v114[15];
      *(v113 + v121), v122, v123, v124, v125, v126, v127, v128;
      *(v113 + v121) = v120;
      (*(v90 + 8))(v93, v89);
      return 2;
    case 5u:
    case 6u:
      v192 = v425;
      v193 = *&v93[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v426 + 8))(v93, v192);
      return v193;
    case 7u:
      v168 = v425;
      v169 = swift_getTupleTypeMetadata2();
      v170 = v426;
      v171 = v398;
      (*(v426 + 32))(v398, &v93[*(v169 + 48)], v168);
      (*(v170 + 16))(v379, v171, v168);
      sub_1CF9E6E58();
      sub_1CF9E6E18();
      v172 = *(v170 + 8);
      v172(v171, v168);
      v172(v93, v168);
      return 1;
    case 8u:
      v218 = v425;
      v219 = swift_getTupleTypeMetadata2();
      v220 = v426;
      v221 = v398;
      v222 = (*(v426 + 32))(v398, &v93[*(v219 + 48)], v218);
      MEMORY[0x1EEE9AC00](v222);
      v223 = v419;
      *(&v356 - 8) = v421;
      *(&v356 - 7) = v223;
      v224 = v420;
      *(&v356 - 6) = v416;
      *(&v356 - 5) = v224;
      v225 = v417;
      *(&v356 - 4) = v418;
      *(&v356 - 3) = v225;
      v354 = v221;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7198();
      v226 = *(v220 + 8);
      v226(v221, v218);
      v226(v93, v218);
      return 0;
    case 9u:
      v130 = v425;
      v131 = v403;
      v132 = *(swift_getTupleTypeMetadata2() + 48);
      v133 = v426;
      v134 = v399;
      v424 = *(v426 + 32);
      (v424)(v399, v93, v130);
      v135 = v402[4](v401, &v93[v132], v131);
      v136 = v423;
      v137 = v422[13];
      LOBYTE(v427) = *(v423 + v422[14]);
      MEMORY[0x1EEE9AC00](v135);
      v138 = v419;
      *(&v356 - 6) = v421;
      *(&v356 - 5) = v138;
      v139 = v420;
      *(&v356 - 4) = v416;
      *(&v356 - 3) = v139;
      v354 = v418;
      v355 = v417;
      v140 = v391;
      v141 = v431;
      sub_1CF06E1CC(sub_1CF6BCB20, (&v356 - 8), MEMORY[0x1E69E73E0], v130, v142, v391);
      v431 = v141;
      v143 = *(v133 + 48);
      if (v143(v140, 1, v130) == 1)
      {
        v144 = *(v133 + 16);
        v145 = v386;
        v144(v386, v134, v130);
        if (v143(v140, 1, v130) != 1)
        {
          (*(v366 + 8))(v140, v374);
        }
      }

      else
      {
        v145 = v386;
        (v424)(v386, v140, v130);
      }

      v230 = v408;
      v231 = v389;
      v232 = v413;
      (*(v408 + 16))(v389, v136 + v137, v413);
      v233 = v401;
      v234 = sub_1CF07A814(v401, (v136 + v137), v393, &v427, v145, v136, v231, v419, v418);
      v235 = v145;
      v236 = v234;
      (*(v230 + 8))(v231, v232);
      v237 = *(v426 + 8);
      v237(v235, v130);
      (v402[1])(v233, v403);
      v237(v399, v130);
      return v236;
    case 0xAu:
      v203 = v425;
      v204 = v406;
      v205 = *(swift_getTupleTypeMetadata2() + 48);
      v206 = v426;
      v207 = v400;
      v424 = *(v426 + 32);
      (v424)(v400, v93, v203);
      v208 = v405[4](v404, &v93[v205], v204);
      v209 = v423;
      LOBYTE(v427) = *(v423 + v422[14]);
      MEMORY[0x1EEE9AC00](v208);
      v210 = v419;
      *(&v356 - 6) = v421;
      *(&v356 - 5) = v210;
      v211 = v420;
      *(&v356 - 4) = v416;
      *(&v356 - 3) = v211;
      v354 = v418;
      v355 = v417;
      v212 = v390;
      v213 = v431;
      sub_1CF06E1CC(sub_1CF6BC900, (&v356 - 8), MEMORY[0x1E69E73E0], v203, v214, v390);
      v431 = v213;
      v215 = *(v206 + 48);
      if (v215(v212, 1, v203) == 1)
      {
        v216 = *(v206 + 16);
        v217 = v388;
        v216(v388, v207, v203);
        if (v215(v212, 1, v203) != 1)
        {
          (*(v366 + 8))(v212, v374);
        }
      }

      else
      {
        v217 = v388;
        (v424)(v388, v212, v203);
      }

      v289 = v415;
      v290 = v381;
      (*(v415 + 16))(v381, v209, v58);
      v291 = v404;
      v292 = sub_1CF07A814(v404, v209, v392, &v427, v217, v290, v209 + v422[13], v421, v420);
      (*(v289 + 8))(v290, v58);
      v293 = *(v426 + 8);
      v293(v217, v203);
      (v405[1])(v291, v406);
      v293(v400, v203);
      return v292;
    case 0xBu:
      v101 = v425;
      v102 = &v93[*(swift_getTupleTypeMetadata2() + 48)];
      v103 = *v102;
      v104 = v102[8];
      v106 = *(type metadata accessor for ItemReconciliationHalf(0, v421, v420, v105) + 76);
      v107 = *(v423 + v106);
      if (v104)
      {
        v108 = v107 & ~v103;
        v109 = v426;
LABEL_45:
        *(v423 + v106) = v108;
        goto LABEL_46;
      }

      v227 = (*(v423 + v106) & 3) != 0 && (v103 & 3) != 0;
      if (v227)
      {
        v107 &= 0xFFFFFFFFFFFFFFFCLL;
      }

      v228 = v107 & v103;
      v109 = v426;
      if (v227 || v228 != v103)
      {
        if (v228 == v103)
        {
          v229 = 0;
        }

        else
        {
          v229 = v103;
        }

        v108 = v229 | v107;
        goto LABEL_45;
      }

LABEL_46:
      (*(v109 + 8))(v93, v101);
      return 0;
    case 0xCu:
      (*(v426 + 8))(v93, v425);
      return 0;
    case 0xDu:
      v194 = v93[*(TupleTypeMetadata2 + 48)];
      v195 = v425;
      v196 = v426;
      v197 = v383;
      (*(v426 + 32))(v383, v93, v425);
      v198 = v423;
      v199 = v422[19];
      if (v194 == *(v423 + v199))
      {
        goto LABEL_32;
      }

      result = swift_weakLoadStrong();
      if (result)
      {
        v200 = result;
        v201 = v375;
        (*(v196 + 16))(v375, v197, v195);
        v202 = v377;
        swift_storeEnumTagMultiPayload();
        (*(*v200 + 312))(v201);

        (*(v376 + 8))(v201, v202);
LABEL_32:
        (*(v196 + 8))(v197, v195);
        result = 0;
        *(v198 + v199) = v194;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0xEu:
      v96 = v425;
      v97 = swift_getTupleTypeMetadata3();
      v98 = *&v93[*(v97 + 48)];
      v99 = v422[20];
      v100 = *(v423 + v99);
      if ((v98 & ~v100) == 0)
      {
        v98 = 0;
      }

      *(v423 + v99) = (v98 | v100) & ~*&v93[*(v97 + 64)];
LABEL_21:
      (*(v426 + 8))(v93, v96);
      return 0;
    case 0xFu:
      v160 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v161 = v425;
      v410 = v160;
      v162 = swift_getTupleTypeMetadata3();
      LODWORD(v411) = v93[*(v162 + 48)];
      v163 = v81;
      v164 = v93[*(v162 + 64)];
      v165 = v415;
      v166 = v423;
      (*(v415 + 16))(v62, v423, v58);
      v167 = v412;
      if ((*(v163 + 48))(v62, 1, v412) == 1)
      {
        (*(v165 + 8))(v62, v58);
        (*(v426 + 8))(v93, v161);
        return 3;
      }

      v424 = v163;
      v250 = v394;
      (*(v163 + 32))(v394, v62, v167);
      v252 = type metadata accessor for ItemReconciliationHalf(0, v421, v420, v251);
      v253 = *(v252 + 56);
      v254 = *(v166 + v253);
      v255 = v413;
      v256 = v408;
      v257 = v395;
      v258 = v166;
      if (v164)
      {
        goto LABEL_53;
      }

      if (*(v166 + v253) <= 2u)
      {
        if (*(v166 + v253))
        {
          if (v254 == 1)
          {
            if (v411 != 2)
            {
              goto LABEL_111;
            }
          }

          else if (v411 != 3)
          {
            goto LABEL_111;
          }
        }

        else if (v411 > 6 || ((1 << v411) & 0x4E) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_53;
      }

      if (*(v166 + v253) > 4u)
      {
        if (v254 != 5)
        {
          if (v411 && v411 != 5)
          {
            goto LABEL_111;
          }

          goto LABEL_53;
        }

        if (!v411)
        {
          goto LABEL_53;
        }

        goto LABEL_99;
      }

      if (v254 != 3)
      {
LABEL_99:
        if (v411 != 6)
        {
          goto LABEL_111;
        }

        goto LABEL_53;
      }

      if ((v411 | 2) != 6)
      {
LABEL_111:
        (*(v424 + 8))(v250, v412);
        (*(v426 + 8))(v93, v425);
        return 3;
      }

LABEL_53:
      v415 = v252;
      *(v166 + v253) = v411;
      (*(v256 + 16))(v257, v166 + v422[13], v255);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v260 = Strong;
        MEMORY[0x1EEE9AC00](Strong);
        strcpy(&v356 - 32, " otherID from to ");
        v261 = v425;
        v427 = v425;
        v428 = v374;
        v429 = v410;
        v430 = v410;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v263 = TupleTypeMetadata[12];
        v422 = TupleTypeMetadata[16];
        v264 = TupleTypeMetadata[20];
        v265 = v254;
        v266 = v424;
        v267 = v375;
        (*(v424 + 16))(v375, v394, v412);
        v268 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v268);
        v269 = v419;
        *(&v356 - 6) = v421;
        *(&v356 - 5) = v269;
        v270 = v420;
        *(&v356 - 4) = v416;
        *(&v356 - 3) = v270;
        v354 = v418;
        v355 = v417;
        v271 = v431;
        sub_1CF06E1CC(sub_1CF6BCB20, (&v356 - 8), MEMORY[0x1E69E73E0], v261, v272, &v267[v263]);
        v431 = v271;
        v258 = v423;
        *(v422 + v267) = v265;
        v267[v264] = v411;
        v273 = v412;
        v274 = v377;
        swift_storeEnumTagMultiPayload();
        (*(*v260 + 312))(v267);
        v256 = v408;
        v255 = v413;

        v275 = v267;
        v257 = v395;
        v276 = v274;
        v250 = v394;
        (*(v376 + 8))(v275, v276);
      }

      else
      {
        v266 = v424;
        v273 = v412;
      }

      (*(v256 + 8))(v257, v255);
      (*(v266 + 8))(v250, v273);
      if (v411 == 6)
      {
        *(v258 + *(v415 + 60)) = 0;
      }

      (*(v426 + 8))(v93, v425);
      return 1;
    case 0x10u:
      v95 = v425;
      *(v423 + v422[18]) = *&v93[*(swift_getTupleTypeMetadata2() + 48)];
      goto LABEL_4;
    default:
      v95 = v425;
      *(v423 + v422[14]) = v93[*(swift_getTupleTypeMetadata2() + 48)];
LABEL_4:
      (*(v426 + 8))(v93, v95);
      return 1;
  }
}

uint64_t sub_1CF6A0B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1CF024490(a1, a2, AssociatedTypeWitness, v9) & 1;
}

uint64_t sub_1CF6A0C60@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
  v10[0] = AssociatedTypeWitness;
  v10[1] = swift_getAssociatedTypeWitness();
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(0, v10);
  return swift_storeEnumTagMultiPayload();
}

void sub_1CF6A0D98(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a2;
  v132 = a4;
  v133 = a5;
  v130 = a3;
  v146 = a1;
  v6 = *v5;
  v7 = *(*v5 + 104);
  v8 = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = sub_1CF9E75D8();
  v120 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v109 - v10;
  v118 = AssociatedTypeWitness;
  v117 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v109 - v12;
  v13 = *(v6 + 96);
  v131 = v5;
  v14 = *(v6 + 80);
  v15 = swift_getAssociatedTypeWitness();
  v137 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v109 - v18;
  v141 = sub_1CF9E5CF8();
  v129 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v15;
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  v135 = v20;
  v136 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v139 = &v109 - v26;
  *&v27 = v14;
  *(&v27 + 1) = v8;
  *&v28 = v13;
  *(&v28 + 1) = v7;
  v127 = v28;
  v148 = v28;
  v128 = v27;
  v147 = v27;
  v29 = type metadata accessor for ItemReconciliation(0, &v147);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v121 = &v109 - v31;
  v33 = type metadata accessor for ItemReconciliationHalf(0, v14, v13, v32);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v134 = &v109 - v35;
  v36 = sub_1CF9E75D8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v126 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v109 - v41;
  v110 = *(v33 + 36);
  v142 = *(v146 + v110);
  v125 = *(v37 + 16);
  v125(&v109 - v41, v145, v36, v40);
  v43 = *(v30 + 48);
  v143 = v29;
  v124 = v43;
  v44 = v43(v42, 1, v29);
  v122 = v30;
  v123 = v33;
  if (v44 == 1)
  {
    (*(v37 + 8))(v42, v36);
    if ((v142 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v45 = v134;
  (*(v34 + 16))(v134, v42, v33);
  (*(v30 + 8))(v42, v143);
  v46 = *&v45[*(v33 + 36)];
  (*(v34 + 8))(v45, v33);
  v47 = v142;
  if ((v142 & 0x10) != 0)
  {
    if ((v46 & 0x10) != 0)
    {
      return;
    }

LABEL_11:
    v58 = v126;
    (v125)(v126, v145, v36);
    v59 = v143;
    if (v124(v58, 1, v143) == 1)
    {
      (*(v37 + 8))(v58, v36);
      v57 = 0x2000000;
    }

    else
    {
      v60 = v122;
      v61 = v121;
      (*(v122 + 32))(v121, v58, v59);
      v62 = v61[*(v123 + 56)];
      (*(v60 + 8))(v61, v59);
      if (v62)
      {
        v57 = 0x2000000;
      }

      else
      {
        v57 = 0x40000000;
      }
    }

    v50 = v132;
    v49 = v137;
    v63 = v139;
    (*(v136 + 16))(v139, v146, v135);
    v47 = v138;
    if ((*(v49 + 48))(v63, 1, v138) != 1)
    {
      v147 = v128;
      v148 = v127;
      v56 = type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v147);
      v64 = v140;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v66 = v65;
      v48 = *(v129 + 8);
      v48(v64, v141);
      v67 = v66 * 1000000000.0;
      if (COERCE__INT64(fabs(v66 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v67 > -9.22337204e18)
      {
        if (v67 < 9.22337204e18)
        {
          v68 = v50;
          v50 = v139;
          v57 = sub_1CF57487C(v139, 0, v67, v57);
          v69 = *(v49 + 8);
          v49 += 8;
          v69(v50, v47);
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v56 = Strong;
            v64 = v140;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v72 = v71;
            v48(v64, v141);
            v73 = v72 * 1000000000.0;
            if (COERCE__INT64(fabs(v72 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v73 > -9.22337204e18)
              {
                if (v73 < 9.22337204e18)
                {
                  sub_1CF5215C0(v57, v73, v130, v68, v133);

                  return;
                }

                goto LABEL_61;
              }

LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((v46 & 0x10) != 0 && (v142 & 5) == 0)
  {
    v48 = *(v143 + 56);
    v49 = v146;
    if (*(v48 + v146) != 1)
    {
      v57 = v133;
      v56 = v120;
      v50 = v135;
      goto LABEL_26;
    }

    v145 = *(v143 + 56);
    v50 = v135;
    v51 = v136;
    v52 = v114;
    (*(v136 + 16))(v114, v146, v135);
    v54 = v137;
    v53 = v138;
    v55 = (*(v137 + 48))(v52, 1, v138);
    v56 = v120;
    if (v55 == 1)
    {
      (*(v51 + 8))(v52, v50);
      v57 = v133;
      v48 = v145;
      goto LABEL_26;
    }

    v89 = v111;
    (*(v54 + 32))(v111, v52, v53);
    v148 = v127;
    v147 = v128;
    type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v147);
    v90 = v140;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v92 = v91;
    v93 = *(v129 + 8);
    v93(v90, v141);
    v94 = v92 * 1000000000.0;
    if (COERCE__INT64(fabs(v92 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v94 > -9.22337204e18)
    {
      if (v94 < 9.22337204e18)
      {
        v95 = sub_1CF65707C(v89, 0, v94, 0x4000000);
        if (!swift_weakLoadStrong())
        {
LABEL_73:
          __break(1u);
          return;
        }

        v96 = v140;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v98 = v97;
        v93(v96, v141);
        v99 = v98 * 1000000000.0;
        if (COERCE__INT64(fabs(v98 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v100 = v144;
          v48 = v145;
          v57 = v133;
          if (v99 > -9.22337204e18)
          {
            if (v99 < 9.22337204e18)
            {
              sub_1CF5215C0(v95, v99, v130, v132, v133);
              v144 = v100;
              if (v100)
              {

                (*(v137 + 8))(v89, v138);
                return;
              }

              (*(v137 + 8))(v89, v138);
              v56 = v120;
              v50 = v135;
              v47 = v142;
LABEL_26:
              v74 = sub_1CF07CD80(v143);
              v64 = v119;
              v75 = v123;
              if (v74)
              {
                goto LABEL_30;
              }

              if (qword_1EDEABDE0 == -1)
              {
LABEL_28:
                *(v49 + *(v75 + 40)) |= qword_1EDEABDE8 & 0xFFFFFFFFFF7FFFEFLL;
                if ((v47 & 8) != 0)
                {
                  *(v49 + v110) = v47 & 0xFFFFFFFFFFFFFFE2;
                }

LABEL_30:
                v76 = *(v48 + v49);
                if (v76 != 1)
                {
                  if (v76 != 4)
                  {
LABEL_35:
                    v79 = v136;
                    (*(v136 + 16))(v64, v49, v50);
                    v80 = v137;
                    v81 = v64;
                    v82 = v64;
                    v83 = v138;
                    if ((*(v137 + 48))(v81, 1, v138) == 1)
                    {
                      (*(v79 + 8))(v82, v50);
LABEL_50:
                      v101 = v49 + *(v143 + 52);
                      v102 = v115;
                      v103 = v116;
                      (*(v56 + 16))(v115, v101, v116);
                      v104 = v117;
                      v105 = v118;
                      if ((*(v117 + 48))(v102, 1, v118) == 1)
                      {
                        (*(v56 + 8))(v102, v103);
                        return;
                      }

                      v106 = v112;
                      (*(v104 + 32))(v112, v102, v105);
                      v107 = swift_weakLoadStrong();
                      if (v107)
                      {
                        v108 = *(v107 + 24);

                        (*(*v108 + 400))(v106, v130, v132, v57);
                        (*(v104 + 8))(v106, v105);

                        return;
                      }

                      goto LABEL_72;
                    }

                    v84 = *(v80 + 32);
                    v85 = v113;
                    v84(v113, v82, v83);
                    v86 = swift_weakLoadStrong();
                    if (v86)
                    {
                      v87 = *(v86 + 24);

                      v88 = v144;
                      (*(*v87 + 392))(v85, v130, v132, v57);
                      v144 = v88;
                      if (v88)
                      {
                        (*(v137 + 8))(v85, v138);

                        return;
                      }

                      (*(v137 + 8))(v85, v138);

                      goto LABEL_50;
                    }

LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
                    goto LABEL_73;
                  }

                  __break(1u);
                }

                v77 = *(v75 + 40);
                v78 = *(v49 + v77);
                if ((v78 & 0x100000000000) == 0)
                {
                  *(v49 + v77) = v78 | 0x100000000000;
                }

                goto LABEL_35;
              }

LABEL_62:
              swift_once();
              v75 = v123;
              goto LABEL_28;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }
}

void sub_1CF6A1D90(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t *a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v338 = a4;
  v329 = a8;
  v330 = a6;
  v331 = a7;
  LODWORD(v333) = a5;
  v337 = a3;
  v335 = a2;
  v342 = a1;
  v9 = *v8;
  v300 = sub_1CF9E5CF8();
  v299 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v298 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v9[11];
  v12 = v9[10];
  v13 = v9[13];
  v336 = v8;
  v14 = v9[12];
  v344 = v11;
  v345 = v12;
  v15 = v11;
  v346 = v13;
  v347 = v14;
  v340 = type metadata accessor for ItemReconciliation(255, &v344);
  v303 = sub_1CF9E75D8();
  v302 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v304 = &v269 - v16;
  v344 = v12;
  v345 = v15;
  v346 = v14;
  v347 = v13;
  v341 = type metadata accessor for PersistenceTrigger(0, &v344);
  v323 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v281 = &v269 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v344 = AssociatedTypeWitness;
  v345 = v19;
  v280 = AssociatedConformanceWitness;
  v346 = AssociatedConformanceWitness;
  v347 = v21;
  v279 = v21;
  v284 = type metadata accessor for ThrottlingKey(255, &v344);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v283 = sub_1CF9E75D8();
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v286 = &v269 - v22;
  v293 = sub_1CF9E75D8();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v291 = &v269 - v23;
  v296 = AssociatedTypeWitness;
  v297 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v290 = &v269 - v25;
  v308 = sub_1CF9E75D8();
  v305 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v313 = &v269 - v26;
  v306 = v19;
  v309 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v301 = &v269 - v28;
  v315 = type metadata accessor for ItemReconciliationHalf(0, v15, v13, v29);
  v295 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v294 = &v269 - v30;
  v322 = type metadata accessor for ItemReconciliationHalf(0, v12, v14, v31);
  v320 = *(v322 - 1);
  MEMORY[0x1EEE9AC00](v322);
  v288 = &v269 - v32;
  v344 = v12;
  v345 = v15;
  v33 = v15;
  v346 = v14;
  v347 = v13;
  v34 = type metadata accessor for ItemReconciliation(255, &v344);
  v314 = sub_1CF9E75D8();
  v311 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v312 = &v269 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v307 = &v269 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v289 = &v269 - v39;
  v327 = v33;
  v344 = v33;
  v345 = v12;
  v324 = v12;
  v326 = v13;
  v346 = v13;
  v347 = v14;
  v325 = v14;
  v316 = type metadata accessor for PersistenceTrigger(255, &v344);
  v319 = sub_1CF9E75D8();
  v317 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v318 = &v269 - v40;
  v321 = *(v340 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v310 = &v269 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v287 = &v269 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v269 - v46;
  v48 = sub_1CF9E75D8();
  v332 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v269 - v49;
  v328 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v269 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v269 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = (&v269 - v58);
  v60 = *v337;
  v61 = *v338;
  v334 = v34;
  v62 = v339;
  sub_1CF07CFF8(v34);
  if (v62)
  {
    return;
  }

  v337 = v59;
  v278 = v50;
  v277 = v48;
  v276 = v47;
  v274 = v56;
  v338 = v61;
  v339 = v60;
  v275 = v53;
  if (v333)
  {
    sub_1CF6A0D98(v342, v335, v330, v331, v329);
  }

  v63 = v332;
  v64 = v337;
  v343 = v338;
  v344 = v339;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_118;
  }

  v66 = v334;
  v67 = v342;
  v273 = sub_1CF07D89C(v335, &v344, &v343, Strong, v334);

  v332 = *(v328 + 16);
  v333 = v328 + 16;
  (v332)(v64, v67, v66);
  v68 = v278;
  (*(v323 + 56))(v278, 1, 1, v341);
  if (qword_1EDEA72F0 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDEBB8C0;
  v70 = swift_weakLoadStrong();
  v71 = v329;
  if (!v70)
  {
    goto LABEL_121;
  }

  v72 = v70;
  v344 = v324;
  v345 = v327;
  v346 = v325;
  v347 = v326;
  type metadata accessor for ReconciliationTable(0, &v344);
  v73 = *(v71 + 8);
  v74 = sub_1CF6939AC(v64, v68, v69, v72, v330, v331, v73);
  v75 = v68;
  v76 = (v63 + 8);
  v77 = (v328 + 8);
  v337 = 0;
  v79 = v78;
  v81 = v80;
  v271 = v69;
  v272 = v73;
  v82 = v74;

  (*v76)(v75, v277);
  v83 = *v77;
  v84 = v334;
  v277 = v77;
  v270 = v83;
  v83(v64, v334);
  LODWORD(v76) = v81;
  v85 = v342 + v322[16];
  sub_1CF03D7A8(*v85, *(v85 + 8), *(v85 + 16));
  v269 = v82;
  *v85 = v82;
  *(v85 + 8) = v79;
  LODWORD(v278) = v76;
  *(v85 + 16) = v76;
  v86 = v276;
  sub_1CF07EE34(v84, v87, v276);
  v88 = v318;
  (*(*(v316 - 8) + 56))(v318, 1, 1);
  v89 = swift_weakLoadStrong();
  if (!v89)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v90 = v89;
  v344 = v327;
  v345 = v324;
  v346 = v326;
  v347 = v325;
  type metadata accessor for ReconciliationTable(0, &v344);
  v91 = (*(*v90 + 176))();

  v92 = v337;
  v93 = sub_1CF6939AC(v86, v88, v271, v91, v330, v331, v272);
  v96 = (v317 + 8);
  v97 = (v321 + 8);
  v337 = v92;
  v98 = v320;
  if (v92)
  {

    (*v96)(v88, v319);
    (*v97)(v86, v340);
    return;
  }

  v99 = v93;
  v100 = v94;
  v101 = v95;

  (*v96)(v88, v319);
  v102 = *v97;
  v318 = v97;
  v317 = v102;
  (v102)(v86, v340);
  v103 = v334;
  v104 = *(v315 + 64);
  v316 = v342 + *(v334 + 13);
  v105 = v316 + v104;
  sub_1CF03D7A8(*(v316 + v104), *(v316 + v104 + 8), *(v316 + v104 + 16));
  *v105 = v99;
  *(v105 + 8) = v100;
  LODWORD(v319) = v101;
  *(v105 + 16) = v101;
  if (v278)
  {
    v107 = v327;
    v108 = v335;
    v109 = v314;
    v110 = v275;
    v111 = v313;
  }

  else
  {
    v107 = v327;
    v108 = v335;
    v110 = v275;
    v111 = v313;
    v119 = v269;
    if ((v269 & 0x100) != 0)
    {
      v120 = *(v103 + 16);
      v121 = *(v342 + v120);
      if (v121 >= 0x2000000000000000)
      {
        v121 = 0x2000000000000000;
      }

      *(v342 + v120) = v121;
      if (v339)
      {
        v122 = v274;
        v332(v274);
        v123 = swift_weakLoadStrong();
        if (!v123)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v124 = v337;
        sub_1CF6B9E9C(v122, v108, v123, v330, v324, v107, v331, v325, v326, v329);
        v337 = v124;
        v125 = v122;
        if (v124)
        {
          v126 = v103;
LABEL_40:
          v270(v125, v126);
LABEL_73:

          return;
        }

        v270(v122, v103);

        v111 = v313;
        v119 = v269;
      }
    }

    if ((v119 & 0x200) != 0)
    {
      v200 = v311;
      v201 = v289;
      v109 = v314;
      (*(v311 + 16))(v289, v108, v314);
      if ((*(v328 + 48))(v201, 1, v103) == 1)
      {
        (*(v200 + 8))(v201, v109);
        v111 = v313;
      }

      else
      {
        v202 = v103;
        v203 = v288;
        v204 = v322;
        (*(v98 + 16))(v288, v201, v322);
        v270(v201, v202);
        v205 = &v203[v204[16]];
        v206 = *v205;
        v207 = *(v205 + 1);
        v208 = v205[16];
        sub_1CF03C530(*v205, v207, v205[16]);
        (*(v98 + 8))(v203, v204);
        if (v208)
        {
          sub_1CF03D7A8(v206, v207, v208);
          v103 = v334;
          v108 = v335;
          v109 = v314;
          v111 = v313;
          v107 = v327;
        }

        else
        {
          sub_1CF03D7A8(v206, v207, 0);
          v103 = v334;
          v108 = v335;
          v109 = v314;
          v110 = v275;
          v111 = v313;
          v107 = v327;
          if ((v206 & 0x200) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      v209 = swift_weakLoadStrong();
      if (!v209)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v210 = *(v209 + 32);

      v211 = *(v210 + 16);

      (*(*v211 + 920))(v212);

      v110 = v275;
    }

    else
    {
      v109 = v314;
    }
  }

LABEL_13:
  if (v319 || (v99 & 0x100) == 0)
  {
    v115 = v312;
    v118 = v310;
LABEL_35:
    v117 = v342;
    goto LABEL_36;
  }

  v112 = v111;
  v113 = v311;
  v114 = v307;
  (*(v311 + 16))(v307, v108, v109);
  if ((*(v328 + 48))(v114, 1, v103) == 1)
  {
    (*(v113 + 8))(v114, v109);
    v115 = v312;
    v116 = v308;
    v117 = v342;
  }

  else
  {
    v127 = *(v103 + 13);
    v128 = v103;
    v129 = v295;
    v130 = v294;
    v131 = v315;
    (*(v295 + 16))(v294, &v114[v127], v315);
    v132 = v128;
    v270(v114, v128);
    v133 = &v130[*(v131 + 64)];
    v134 = *v133;
    v135 = *(v133 + 1);
    v136 = v133[16];
    sub_1CF03C530(*v133, v135, v133[16]);
    (*(v129 + 8))(v130, v131);
    v137 = v342;
    if (v136)
    {
      sub_1CF03D7A8(v134, v135, v136);
      v115 = v312;
      v110 = v275;
      v116 = v308;
      v103 = v132;
      v117 = v137;
    }

    else
    {
      sub_1CF03D7A8(v134, v135, 0);
      v115 = v312;
      v110 = v275;
      v116 = v308;
      v103 = v132;
      v117 = v137;
      if ((v134 & 0x100) != 0)
      {
        v118 = v310;
        v107 = v327;
        goto LABEL_36;
      }
    }
  }

  v138 = v103;
  v139 = *(v103 + 16);
  v140 = *(v117 + v139);
  if (v140 >= 0x2000000000000000)
  {
    v140 = 0x2000000000000000;
  }

  *(v117 + v139) = v140;
  v141 = v305;
  v142 = v112;
  (*(v305 + 16))(v112);
  v143 = v116;
  v144 = v309;
  v145 = v112;
  v146 = v306;
  if ((*(v309 + 48))(v145, 1, v306) == 1)
  {
    (*(v141 + 8))(v142, v143);
    v118 = v310;
LABEL_34:
    v107 = v327;
    goto LABEL_35;
  }

  v147 = v301;
  (*(v144 + 32))(v301, v142, v146);
  v148 = v292;
  v149 = v291;
  v150 = v293;
  (*(v292 + 16))(v291, v316, v293);
  v151 = v297;
  v152 = v296;
  if ((*(v297 + 48))(v149, 1, v296) == 1)
  {
    (*(v144 + 8))(v147, v146);
    (*(v148 + 8))(v149, v150);
    v118 = v310;
    v115 = v312;
    v110 = v275;
    goto LABEL_34;
  }

  v189 = v290;
  (*(v151 + 32))(v290, v149, v152);
  v191 = v152;
  if (*(v342 + v322[11]) == 5)
  {
    (*(v151 + 8))(v189, v152);
    (*(v309 + 8))(v301, v146);
    v117 = v342;
    v118 = v310;
LABEL_94:
    v115 = v312;
    v110 = v275;
    v107 = v327;
    goto LABEL_36;
  }

  v192 = v309;
  v118 = v310;
  v193 = v301;
  if (*(v342 + v322[14]) != 6)
  {
    (*(v297 + 8))(v290, v191);
    (*(v192 + 8))(v193, v146);
    v117 = v342;
    goto LABEL_94;
  }

  v194 = *(v342 + v322[11]);
  v195 = v287;
  sub_1CF07EE34(v138, v190, v287);
  v196 = swift_weakLoadStrong();
  if (!v196)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v197 = (*(*v196 + 176))(v196);

  v198 = v340;
  v199 = v337;
  sub_1CF07DE7C(v197, 1, v340, &v344);
  v337 = v199;
  if (v199)
  {

    (v317)(v195, v198);
LABEL_82:
    (*(v297 + 8))(v290, v296);
    (*(v309 + 8))(v301, v306);
    return;
  }

  (v317)(v195, v198);

  v213 = v344;
  if (v344 == 89)
  {
    (*(v297 + 8))(v290, v296);
    (*(v309 + 8))(v301, v306);
    v115 = v312;
    v110 = v275;
    v107 = v327;
    goto LABEL_35;
  }

  v214 = swift_weakLoadStrong();
  if (!v214)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v215 = *(v214 + 24);

  v216 = v337;
  v217 = (*(*v215 + 376))(v290, v213, 0, 1, v330, v331, v272);
  v337 = v216;
  if (v216)
  {

    goto LABEL_82;
  }

  v218 = v217;

  v344 = v218;
  v219 = TupleTypeMetadata2;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v220 = v286;
  sub_1CF9E7118();
  v218, v221, v222, v223, v224, v225, v226, v227;
  if ((*(*(v219 - 8) + 48))(v220, 1, v219) != 1)
  {
    v228 = v286;
    v229 = &v286[*(TupleTypeMetadata2 + 48)];
    v230 = *(v229 + 5);
    v231 = *(v229 + 8);
    v232 = v230;

    v231, v233, v234, v235, v236, v237, v238, v239;
    (*(*(v284 - 8) + 8))(v228);
    if (!v230)
    {
      (*(v297 + 8))(v290, v296);
      (*(v309 + 8))(v301, v306);
      goto LABEL_109;
    }

    if (v194 <= 1)
    {
      if (v194)
      {
        v262 = swift_weakLoadStrong();
        if (!v262)
        {
LABEL_135:
          __break(1u);
          return;
        }

        v241 = v262;
        v242 = v306;
        v243 = v296;
        v344 = v306;
        v345 = v296;
        v346 = v279;
        v347 = v280;
        type metadata accessor for ReconciliationID(255, &v344);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v264 = *(TupleTypeMetadata3 + 48);
        v265 = *(TupleTypeMetadata3 + 64);
        v247 = v309;
        v248 = v281;
        (*(v309 + 16))(v281, v301, v242);
        swift_storeEnumTagMultiPayload();
        *&v248[v264] = v230;
        v248[v265] = 0;
LABEL_116:
        v266 = v341;
        swift_storeEnumTagMultiPayload();
        v267 = *(*v241 + 312);
        v268 = v230;
        v267(v248);

        (*(v323 + 8))(v248, v266);
        (*(v297 + 8))(v290, v243);
        (*(v247 + 8))(v301, v242);
        goto LABEL_109;
      }
    }

    else
    {
      if (v194 == 2)
      {
        sub_1CF24CD3C();
        swift_allocError();
        v260 = v259;
        v344 = 0;
        v345 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA459B0);
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        v261 = v345;
        *v260 = v344;
        *(v260 + 8) = v261;
        *(v260 + 48) = 8;
        swift_willThrow();

        (*(v297 + 8))(v290, v296);
        (*(v309 + 8))(v301, v306);
        return;
      }

      if (v194 == 3)
      {
        v240 = swift_weakLoadStrong();
        if (!v240)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v241 = v240;
        v242 = v306;
        v243 = v296;
        v344 = v306;
        v345 = v296;
        v346 = v279;
        v347 = v280;
        type metadata accessor for ReconciliationID(255, &v344);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v244 = swift_getTupleTypeMetadata3();
        v245 = *(v244 + 48);
        v246 = *(v244 + 64);
        v247 = v309;
        v248 = v281;
        (*(v309 + 16))(v281, v301, v242);
        swift_storeEnumTagMultiPayload();
        *&v248[v245] = v230;
        v248[v246] = 1;
        goto LABEL_116;
      }
    }

    v249 = swift_weakLoadStrong();
    if (!v249)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v250 = v249;
    v251 = v306;
    v252 = v296;
    v344 = v306;
    v345 = v296;
    v346 = v279;
    v347 = v280;
    type metadata accessor for ReconciliationID(255, &v344);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v253 = *(swift_getTupleTypeMetadata2() + 48);
    v254 = v309;
    v255 = v281;
    (*(v309 + 16))(v281, v301, v251);
    swift_storeEnumTagMultiPayload();
    *&v255[v253] = v230;
    v256 = v341;
    swift_storeEnumTagMultiPayload();
    v257 = *(*v250 + 312);
    v258 = v230;
    v257(v255);

    (*(v323 + 8))(v255, v256);
    (*(v297 + 8))(v290, v252);
    (*(v254 + 8))(v301, v251);
    goto LABEL_109;
  }

  (*(v297 + 8))(v290, v296);
  (*(v309 + 8))(v301, v306);
  (*(v282 + 8))(v286, v283);
LABEL_109:
  v117 = v342;
  v107 = v327;
  v118 = v310;
  v115 = v312;
  v110 = v275;
LABEL_36:
  v153 = v324;
  v154 = v325;
  if (v339)
  {
    v155 = v118;
    v156 = v117;
    v332(v110);
    v157 = swift_weakLoadStrong();
    v158 = v330;
    if (!v157)
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v159 = v337;
    sub_1CF6B9E9C(v110, v335, v157, v330, v153, v107, v331, v154, v326, v329);
    v337 = v159;
    v125 = v110;
    if (v159)
    {
      v126 = v334;
      goto LABEL_40;
    }

    v270(v110, v334);

    v117 = v156;
    v118 = v155;
  }

  else
  {
    v158 = v330;
  }

  if (v338)
  {
    v160 = v334;
    sub_1CF07EE34(v334, v106, v118);
    v161 = v311;
    v162 = v314;
    (*(v311 + 16))(v115, v335, v314);
    if ((*(v328 + 48))(v115, 1, v160) == 1)
    {
      (*(v161 + 8))(v115, v162);
      v164 = 1;
      v165 = v304;
    }

    else
    {
      v165 = v304;
      sub_1CF07EE34(v160, v163, v304);
      v270(v115, v160);
      v164 = 0;
    }

    v166 = v326;
    v167 = v340;
    (*(v321 + 56))(v165, v164, 1, v340);
    v168 = swift_weakLoadStrong();
    if (!v168)
    {
      goto LABEL_124;
    }

    v169 = (*(*v168 + 176))(v168);

    v170 = v337;
    sub_1CF6B9E9C(v118, v165, v169, v158, v153, v327, v331, v154, v166, v329);
    v337 = v170;
    if (v170)
    {

      (*(v302 + 8))(v165, v303);
      (v317)(v118, v167);
      return;
    }

    (*(v302 + 8))(v165, v303);
    (v317)(v118, v167);
    v117 = v342;
  }

  v171 = v117;
  v172 = sub_1CF07CD80(v334);
  v173 = v300;
  v174 = v299;
  v175 = v298;
  v176 = v315;
  if (v172)
  {
    sub_1CF436420(&v344);
    if (!sub_1CF959458(&v344, 0, v322))
    {
      sub_1CF436420(&v344);
      if (!sub_1CF959458(&v344, 0, v176) && *(v171 + v322[11]) == 5 && v278 != 2 && v319 != 2)
      {
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v178 = v177;
        (*(v174 + 8))(v175, v173);
        v179 = v178 * 1000000000.0;
        if (COERCE__INT64(fabs(v178 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v179 > -9.22337204e18)
          {
            if (v179 < 9.22337204e18)
            {
              v180 = (v171 + *(v334 + 16));
              *v180 = 0x2000000000000000;
              v180[1] = v179;
              goto LABEL_62;
            }

            goto LABEL_120;
          }

LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }
  }

LABEL_62:
  v181 = swift_weakLoadStrong();
  if (!v181)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v182 = (*(*v181 + 152))(v181);

  v183 = v273 ^ 1;
  if ((v182 & 8) != 0 && ((v273 ^ 1) & 1) == 0 && v278 == 1)
  {
    v184 = swift_weakLoadStrong();
    if (!v184)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    (*(*v184 + 304))(v184);
  }

  v185 = swift_weakLoadStrong();
  v186 = v319;
  if (!v185)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v187 = (*(*v185 + 152))(v185);

  if (!(((v187 & 8) == 0) | v183 & 1) && v186 == 1)
  {
    v188 = swift_weakLoadStrong();
    if (v188)
    {
      (*(*v188 + 304))(v188);
      goto LABEL_73;
    }

    goto LABEL_128;
  }
}

void sub_1CF6A4478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v103 = a3;
  v104 = a4;
  v107 = a2;
  v101 = a1;
  v6 = *v5;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v85 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CF9E5268();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[11];
  v12 = v6[12];
  v13 = v6[13];
  v109 = v6[10];
  v10 = v109;
  v110 = v11;
  v111 = v12;
  v112 = v13;
  v14 = type metadata accessor for TestingOperation(255, &v109);
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = &v80 - v16;
  v92 = v15;
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v80 - v24;
  v98 = v14;
  v97 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v80 - v28;
  v99 = v12;
  v100 = v10;
  v109 = v10;
  v110 = v11;
  v95 = v13;
  v96 = v11;
  v111 = v12;
  v112 = v13;
  v29 = type metadata accessor for ItemReconciliation(255, &v109);
  v30 = sub_1CF9E75D8();
  v108 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v80 - v34;
  v36 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - v38;
  v105 = v5 + 2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v41 = (*(*Strong + 152))(Strong);

  if ((v41 & 0x80) == 0)
  {
    return;
  }

  v42 = v108;
  (*(v108 + 16))(v35, v107, v30);
  if ((*(v36 + 48))(v35, 1, v29) == 1)
  {
    (*(v42 + 8))(v35, v30);
    v43 = v106;
  }

  else
  {
    (*(v36 + 32))(v39, v35, v29);
    v48 = type metadata accessor for ItemReconciliationHalf(0, v100, v99, v47);
    v43 = v106;
    if (v39[*(v48 + 64) + 16] == 2 || (v50 = v48, v51 = &v39[*(v29 + 52)], v52 = type metadata accessor for ItemReconciliationHalf(0, v96, v95, v49), v51[*(v52 + 64) + 16] == 2) || v39[*(v50 + 52)] == 1 || v51[*(v52 + 52)] == 1)
    {
      (*(v36 + 8))(v39, v29);
      return;
    }

    (*(v36 + 8))(v39, v29);
  }

  (*(v36 + 16))(v32, v101, v29);
  (*(v36 + 56))(v32, 0, 1, v29);
  v44 = swift_weakLoadStrong();
  v45 = v113;
  v46 = v102;
  if (!v44)
  {
    goto LABEL_29;
  }

  sub_1CF68E6AC(v32, v44, v103, v104, v102, v43);
  if (v45)
  {
    (*(v108 + 8))(v32, v30);

    return;
  }

  (*(v108 + 8))(v32, v30);

  v54 = v97;
  v53 = v98;
  v55 = *(v97 + 48);
  if (v55(v43, 1, v98) != 1)
  {
    v56 = *(v54 + 32);
    v108 = v54 + 32;
    v106 = v56;
    (v56)(v93, v43, v53);
    v57 = v91;
    (*(v54 + 16))();
    (*(v54 + 56))(v57, 0, 1, v53);
    v58 = swift_weakLoadStrong();
    if (v58)
    {
      v59 = v90;
      sub_1CF68E6AC(v107, v58, v103, v104, v46, v90);
      v113 = 0;

      v60 = *(TupleTypeMetadata2 + 48);
      v61 = *(v94 + 16);
      v62 = v88;
      v63 = v92;
      v61(v88, v57, v92);
      v107 = v60;
      v61(&v62[v60], v59, v63);
      v64 = v57;
      v65 = v98;
      if (v55(v62, 1, v98) == 1)
      {
        v66 = *(v94 + 8);
        v66(v59, v63);
        v66(v64, v63);
        if (v55(&v62[v107], 1, v65) == 1)
        {
          v66(v62, v63);
          (*(v97 + 8))(v93, v98);
          return;
        }
      }

      else
      {
        v67 = v82;
        v61(v82, v62, v63);
        v68 = v107;
        if (v55(&v62[v107], 1, v65) != 1)
        {
          v76 = v81;
          (v106)(v81, &v62[v68], v65);
          v77 = sub_1CF9465DC(v67, v76, v100, v96, v99, v95);
          v78 = *(v97 + 8);
          v78(v76, v65);
          v79 = *(v94 + 8);
          v79(v90, v63);
          v79(v91, v63);
          v78(v67, v65);
          v79(v62, v63);
          if (v77)
          {
            v78(v93, v98);
            return;
          }

          goto LABEL_24;
        }

        v69 = *(v94 + 8);
        v69(v90, v63);
        v69(v91, v63);
        (*(v97 + 8))(v67, v65);
      }

      (*(v83 + 8))(v62, TupleTypeMetadata2);
LABEL_24:
      v70 = swift_weakLoadStrong();
      if (v70)
      {
        v71 = v70;
        sub_1CF9E5198();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v72 = v84;
        v73 = v87;
        sub_1CF9E57D8();
        v74 = sub_1CF9E50D8();
        (*(v86 + 8))(v72, v73);
        v75 = v93;
        (*(*v71 + 520))(v93, v74);

        (*(v97 + 8))(v75, v98);
        return;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  (*(v94 + 8))(v43, v92);
}

void sub_1CF6A5084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a6;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!swift_weakLoadStrong())
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    v16 = v15 * 1000000000.0;
    if (COERCE__INT64(fabs(v15 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        v17 = v16;
        v18 = a1;
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_22:
    __break(1u);
    return;
  }

  (*(*Strong + 176))(Strong);

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v22 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v22;
  v18 = a1 & 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
  v23 = v24[1];
  sub_1CF5215C0(v18, v17, a3, a4, a5);

  if (v23)
  {
    *v24[0] = v23;
  }
}

uint64_t sub_1CF6A5304@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
  v10[0] = swift_getAssociatedTypeWitness();
  v10[1] = AssociatedTypeWitness;
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(0, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF6A5438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a7;
  v19 = a3;
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v16 = a1;
  v17 = a2;
  v23[0] = swift_getAssociatedTypeWitness();
  v23[1] = swift_getAssociatedTypeWitness();
  v23[2] = swift_getAssociatedConformanceWitness();
  v23[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(255, v23);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = v23[5];
  result = sub_1CF6A5608(&v15 - v10, v16, v17, v19, 1, v20, v21, v22, v9, v18);
  if (!v12)
  {
    v14 = result;
    (*(v8 + 8))(v11, v7);
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1CF6B8584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v17 = type metadata accessor for ItemReconciliation(0, v20);
  (*(v14 + 16))(v16, a1 + *(v17 + 52), v13);
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v16, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v18 + 32))(a6, v16, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

void sub_1CF6B871C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v54 = a5;
  v56 = a2;
  v57 = a4;
  v60 = a6;
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 80);
  v10 = *(*a3 + 96);
  v49 = *(*a3 + 104);
  v50 = v8;
  v61 = v8;
  v62 = v9;
  v63 = v49;
  v64 = v10;
  v11 = type metadata accessor for ItemReconciliation(0, &v61);
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v47 - v12;
  v58 = v10;
  v52 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v59 = v11;
  v23 = *(v11 + 52);
  v53 = a1;
  v24 = a1 + v23;
  (*(v15 + 16))(v17, a1 + v23, v14, v20);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v14);
LABEL_3:
    *v60 = 0;
    return;
  }

  (*(v18 + 32))(v22, v17, AssociatedTypeWitness);
  v25 = sub_1CF056558();
  v27 = v58;
  if (v25)
  {
    v28 = v24 + *(type metadata accessor for ItemReconciliationHalf(0, v52, v58, v26) + 64);
    if (!*(v28 + 16) && (*(v28 + 1) & 1) != 0)
    {
      (*(v18 + 8))(v22, AssociatedTypeWitness);
      goto LABEL_3;
    }
  }

  v48 = v22;
  v29 = (*(*a3 + 176))();
  v30 = v55;
  v31 = v59;
  v32 = v54;
  v33 = v65;
  sub_1CF959950(v29, v56, v59, v57, v54, v55);
  v65 = v33;
  if (v33)
  {
    (*(v18 + 8))(v48, AssociatedTypeWitness);

    return;
  }

  v34 = v30 + *(v31 + 52);
  v35 = v52;
  v37 = type metadata accessor for ItemReconciliationHalf(0, v52, v27, v36);
  if (*(v34 + *(v37 + 36)))
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v38 = qword_1EDEABDE8;
    goto LABEL_14;
  }

  v38 = *(v34 + *(v37 + 40)) & 3;
  if (v38)
  {
LABEL_14:
    (*(v51 + 8))(v30, v59);
    (*(v18 + 8))(v48, AssociatedTypeWitness);
    *v60 = v38;
    return;
  }

  v39 = v35;
  v40 = a3[3];
  v61 = v39;
  v62 = v50;
  v63 = v27;
  v64 = v49;
  ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata(0, &v61);
  v42 = v48;
  v43 = v65;
  v44 = (*(*v40 + 328))(v48, ItemMetadata, 0, v56, v57, v32);
  if (v43)
  {
    (*(v51 + 8))(v30, v59);
    (*(v18 + 8))(v42, AssociatedTypeWitness);
  }

  else if (v44)
  {
    v45 = v60;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDEABDE8;
    (*(v51 + 8))(v30, v59);
    (*(v18 + 8))(v48, AssociatedTypeWitness);
    *v45 = v46;
  }

  else
  {
    (*(v51 + 8))(v30, v59);
    (*(v18 + 8))(v42, AssociatedTypeWitness);
    *v60 = 0;
  }
}

uint64_t sub_1CF6B8D38(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v65 = a6;
  v49 = a4;
  v10 = (*a1)[11];
  v11 = (*a1)[12];
  v12 = (*a1)[13];
  v64[0] = (*a1)[10];
  v9 = v64[0];
  v64[1] = v10;
  v53 = v12;
  v54 = v10;
  v64[2] = v11;
  v64[3] = v12;
  v13 = type metadata accessor for ItemReconciliation(255, v64);
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v50 = v14;
  v51 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v16;
  v59 = v13;
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v45 - v18;
  v60 = v11;
  v61 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v58 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v57 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = a2;
  v28 = a2;
  v29 = a3;
  v30 = v62;
  result = (*(*a1[4] + 288))(v28, a3, v63, v65, v24);
  if (!v30)
  {
    v32 = v58;
    v47 = v27;
    v48 = v26;
    v46 = v29;
    v33 = v59;
    v62 = 0;
    v34 = v57;
    if ((*(v57 + 48))(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v32 + 8))(v22, v20);
      return 1;
    }

    v35 = v48;
    (*(v34 + 32))();
    swift_getAssociatedConformanceWitness();
    if (sub_1CF9E6868())
    {
      (*(v34 + 8))(v35, AssociatedTypeWitness);
      return 1;
    }

    v36 = v34;
    v37 = v56;
    v38 = v62;
    sub_1CF68DDB0(v35, v46, v63, v65, v56);
    if (v38)
    {
      return (*(v34 + 8))(v35, AssociatedTypeWitness);
    }

    v39 = v55;
    if ((*(v55 + 48))(v37, 1, v33) == 1)
    {
      (*(v34 + 8))(v48, AssociatedTypeWitness);
      (*(v51 + 8))(v37, v50);
    }

    else
    {
      v40 = v52;
      (*(v39 + 32))(v52, v37, v33);
      v41 = sub_1CF07CD80(v33);
      (*(v36 + 8))(v48, AssociatedTypeWitness);
      v43 = *(v33 + 52);
      if (v41 && v40[v43 + *(type metadata accessor for ItemReconciliationHalf(0, v54, v53, v42) + 52)] == 1)
      {
        (*(v39 + 8))(v40, v33);
        return 0;
      }

      swift_getAssociatedTypeWitness();
      v44 = sub_1CF9E75D8();
      (*(*(v44 - 8) + 24))(v49, &v40[v43], v44);
      (*(v39 + 8))(v40, v33);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF6B9310(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a6;
  v117 = a3;
  v118 = a5;
  v109 = a4;
  v121 = a1;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v8 = *a2;
  v9 = *(*a2 + 104);
  v116 = a2;
  v120 = *(v8 + 96);
  v122 = v6;
  v123 = v7;
  v124 = v9;
  v125 = v120;
  v10 = type metadata accessor for ItemReconciliation(255, &v122);
  v101 = sub_1CF9E75D8();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v107 = v90 - v11;
  v103 = v10;
  v102 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v99 = v90 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v110 = v90 - v16;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = v90 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v113 = v90 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v119 = v90 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v90 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v104 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v114 = v90 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v90 - v34;
  v122 = v7;
  v123 = v6;
  v37 = v36;
  v124 = v120;
  v125 = v9;
  v120 = v9;
  v38 = type metadata accessor for ItemReconciliation(0, &v122);
  v39 = &v121[*(v38 + 52)];
  v108 = *(v17 + 16);
  v108(v28, v39, v15);
  v121 = *(v37 + 48);
  if ((v121)(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v28, v15);
    return 1;
  }

  v97 = v37 + 48;
  v96 = v17;
  v98 = v15;
  v95 = v6;
  v41 = *(v37 + 32);
  v41(v35, v28, AssociatedTypeWitness);
  v42 = v126;
  (*(*v116[5] + 288))(v35, v117, v118, v115);
  v126 = v42;
  v43 = AssociatedTypeWitness;
  if (v42)
  {
    return (*(v37 + 8))(v35, AssociatedTypeWitness);
  }

  v92 = v41;
  v93 = v35;
  v94 = v37;
  if ((v121)(v119, 1, AssociatedTypeWitness) == 1)
  {
    (*(v94 + 8))(v93, AssociatedTypeWitness);
    (*(v96 + 8))(v119, v98);
    return 1;
  }

  v44 = v114;
  v45 = v119;
  v119 = (v37 + 32);
  v92(v114, v45, AssociatedTypeWitness);
  v46 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v47 = v93;
  if (sub_1CF9E6868())
  {
    v48 = *(v94 + 8);
    v48(v44, v43);
    v48(v47, v43);
    return 1;
  }

  v90[1] = v46;
  v49 = v94;
  v50 = v113;
  (*(v94 + 16))(v113, v44, v43);
  (*(v49 + 56))(v50, 0, 1, v43);
  v51 = v111;
  v52 = v108;
  v53 = v98;
  v108(v111, v109, v98);
  v54 = *(TupleTypeMetadata2 + 48);
  v55 = v110;
  v52(v110, v50, v53);
  v109 = v54;
  v56 = &v55[v54];
  v57 = v51;
  v52(v56, v51, v53);
  v58 = v121;
  v59 = (v121)(v55, 1, v43);
  v91 = v43;
  if (v59 == 1)
  {
    v60 = *(v96 + 8);
    v61 = v98;
    v60(v57, v98);
    v60(v113, v61);
    v62 = (v58)(&v55[v109], 1, v43);
    v63 = v126;
    if (v62 == 1)
    {
      v60(v55, v61);
      v66 = *(v94 + 8);
LABEL_19:
      v82 = v91;
      v66(v114, v91, v64, v65);
      (v66)(v93, v82);
      return 1;
    }

    goto LABEL_15;
  }

  v67 = v105;
  v68 = v98;
  v52(v105, v55, v98);
  v69 = v109;
  if ((v58)(&v55[v109], 1, v43) == 1)
  {
    v70 = v67;
    v71 = *(v96 + 8);
    v71(v111, v68);
    v71(v113, v68);
    (*(v94 + 8))(v70, v43);
    v63 = v126;
LABEL_15:
    (*(v106 + 8))(v55, TupleTypeMetadata2);
    v65 = v115;
    v72 = v117;
    v64 = v118;
    goto LABEL_16;
  }

  v77 = v104;
  v92(v104, &v55[v69], v43);
  v78 = v67;
  v79 = sub_1CF9E6868();
  v66 = *(v94 + 8);
  (v66)(v77, v43);
  v80 = v55;
  v81 = *(v96 + 8);
  v81(v111, v68);
  v81(v113, v68);
  (v66)(v78, v43);
  v81(v80, v68);
  v63 = v126;
  v65 = v115;
  v72 = v117;
  v64 = v118;
  if (v79)
  {
    goto LABEL_19;
  }

LABEL_16:
  v73 = v107;
  v74 = v114;
  sub_1CF68E230(v114, v72, v64, v65, v107);
  if (v63)
  {
    v75 = *(v94 + 8);
    v76 = v91;
    v75(v74, v91);
    return (v75)(v93, v76);
  }

  else
  {
    v83 = *(v94 + 8);
    v84 = v91;
    v83(v74, v91);
    v83(v93, v84);
    v85 = v102;
    v86 = v103;
    if ((*(v102 + 48))(v73, 1, v103) == 1)
    {
      (*(v100 + 8))(v73, v101);
      return 1;
    }

    else
    {
      v87 = v99;
      (*(v85 + 32))(v99, v73, v86);
      v89 = v87[*(type metadata accessor for ItemReconciliationHalf(0, v95, v120, v88) + 52)];
      (*(v85 + 8))(v87, v86);
      return v89 != 1;
    }
  }
}

uint64_t sub_1CF6B9E9C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v79 = a4;
  v80 = a7;
  v86 = a2;
  v12 = *a3;
  v13 = *(*a3 + 104);
  v14 = *(*a3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = sub_1CF9E75D8();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v71 - v16;
  v78 = AssociatedTypeWitness;
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v71 - v18;
  v19 = *(v12 + 80);
  v20 = *(v12 + 96);
  v22 = type metadata accessor for ItemReconciliationHalf(0, v19, v20, v21);
  v82 = *(v22 - 8);
  v83 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v71 - v23;
  *&v24 = v19;
  *(&v24 + 1) = v14;
  *&v25 = v20;
  *(&v25 + 1) = v13;
  v87[0] = v24;
  v87[1] = v25;
  v26 = type metadata accessor for ItemReconciliation(255, v87);
  v27 = sub_1CF9E75D8();
  v84 = *(v27 - 8);
  v85 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v71 - v28;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1CF9E75D8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v71 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v71 - v37;
  v39 = *(v32 + 16);
  v75 = a1;
  v40 = a1;
  v42 = v41;
  v39(v34, v40, v31, v36);
  if ((*(v42 + 48))(v34, 1, v30) == 1)
  {
    return (*(v32 + 8))(v34, v31);
  }

  (*(v42 + 32))(v38, v34, v30);
  v45 = v84;
  v44 = v85;
  (*(v84 + 16))(v29, v86, v85);
  v46 = *(v26 - 8);
  if ((*(v46 + 48))(v29, 1, v26) == 1)
  {
    (*(v42 + 8))(v38, v30);
    return (*(v45 + 8))(v29, v44);
  }

  else
  {
    v85 = v30;
    v86 = v38;
    v47 = v81;
    v48 = v82;
    v49 = v83;
    (*(v82 + 16))(v81, v29, v83);
    (*(v46 + 8))(v29, v26);
    v50 = &v47[*(v49 + 64)];
    v51 = *v50;
    v52 = *(v50 + 1);
    v53 = v50[16];
    sub_1CF03C530(*v50, v52, v50[16]);
    (*(v48 + 8))(v47, v49);
    if (v53)
    {
      sub_1CF03D7A8(v51, v52, v53);
      return (*(v42 + 8))(v86, v85);
    }

    sub_1CF03D7A8(v51, v52, 0);
    v54 = v85;
    if ((v51 & 0x100) == 0)
    {
      return (*(v42 + 8))(v86, v85);
    }

    v84 = v42;
    v55 = a3[3];
    v56 = v86;
    v58 = v79;
    v57 = v80;
    v59 = v88;
    (*(*v55 + 392))(v86, v79, v80, a10);
    v88 = v59;
    if (v59)
    {
      v60 = v84;
      v61 = v56;
    }

    else
    {
      v62 = v74;
      v63 = v75 + *(v26 + 52);
      v64 = v73;
      v65 = v76;
      (*(v74 + 16))(v73, v63, v76);
      v66 = v77;
      if ((*(v77 + 48))(v64, 1, v78) == 1)
      {
        (*(v84 + 8))(v86, v54);
        return (*(v62 + 8))(v64, v65);
      }

      v67 = v72;
      v68 = v64;
      v69 = v78;
      (*(v66 + 32))(v72, v68, v78);
      v70 = v88;
      (*(*v55 + 400))(v67, v58, v57, a10);
      v88 = v70;
      if (!v70)
      {
        (*(v66 + 8))(v67, v69);
        return (*(v84 + 8))(v86, v54);
      }

      (*(v66 + 8))(v67, v69);
      v60 = v84;
      v61 = v86;
    }

    return (*(v60 + 8))(v61, v54);
  }
}

uint64_t sub_1CF6BA644(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v245 = a3;
  v247 = a2;
  v204 = sub_1CF9E6118();
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v228 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250[0] = a5;
  v250[1] = a6;
  v250[2] = a7;
  v250[3] = a8;
  v242 = type metadata accessor for ItemReconciliation(0, v250);
  v202 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v201 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v227 = &v199 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v199 - v19;
  v232 = a8;
  v231 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v241 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v212 = &v199 - v21;
  v246 = v22;
  v23 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v210 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v225 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v223 = &v199 - v26;
  v226 = v23;
  v248 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v237 = &v199 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v238 = &v199 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v208 = &v199 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v235 = &v199 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v236 = &v199 - v38;
  v230 = a7;
  v229 = a5;
  v39 = swift_getAssociatedTypeWitness();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v211 = &v199 - v41;
  v42 = sub_1CF9E75D8();
  v43 = swift_getTupleTypeMetadata2();
  v207 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v221 = &v199 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v199 - v46;
  v214 = *(v42 - 8);
  v48 = v214;
  MEMORY[0x1EEE9AC00](v49);
  v206 = &v199 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v233 = &v199 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v234 = &v199 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v213 = &v199 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v199 - v58;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v199 - v62;
  v224 = *a4;
  v243 = v48;
  v66 = *(v48 + 16);
  v64 = (v48 + 16);
  v65 = v66;
  v249 = a1;
  (v66)(&v199 - v62, a1, v42, v61);
  v67 = v40[2];
  v217 = v40 + 2;
  v216 = v67;
  v67(v59, v247, v39);
  v68 = v40[7];
  v215 = v40 + 7;
  v240 = v68;
  v68(v59, 0, 1, v39);
  v239 = v43;
  v69 = *(v43 + 48);
  v66(v47, v63, v42);
  v66(&v47[v69], v59, v42);
  v222 = v40;
  v70 = v40[6];
  v71 = v70(v47, 1, v39);
  v220 = v70;
  v219 = v40 + 6;
  v218 = v66;
  if (v71 == 1)
  {
    v213 = v64;
    v72 = *(v214 + 8);
    v72(v59, v42);
    v72(v63, v42);
    if (v70(&v47[v69], 1, v39) == 1)
    {
      v72(v47, v42);
      v73 = v249;
      v74 = v247;
      v75 = v216;
      goto LABEL_9;
    }

    v75 = v216;
    goto LABEL_7;
  }

  v65(v213, v47, v42);
  if (v70(&v47[v69], 1, v39) == 1)
  {
    v72 = *(v214 + 8);
    v72(v59, v42);
    v72(v63, v42);
    (v222[1])(v213, v39);
    v75 = v216;
LABEL_7:
    (*(v207 + 8))(v47, v239);
    v73 = v249;
LABEL_8:
    v77 = v229;
    v78 = v230;
    v79 = type metadata accessor for ItemReconciliationHalf(0, v229, v230, v76);
    (*(*(v79 - 8) + 8))(v73, v79);
    v80 = v78;
    v74 = v247;
    v81 = sub_1CF078A84(v77, v80, v73);
    (v72)(v73, v42, v81);
    v75(v73, v74, v39);
    v240(v73, 0, 1, v39);
    goto LABEL_9;
  }

  v123 = v222;
  v124 = v211;
  (v222[4])(v211, &v47[v69], v39);
  swift_getAssociatedConformanceWitness();
  v125 = v213;
  v200 = sub_1CF9E6868();
  v199 = v123[1];
  v199(v124, v39);
  v72 = *(v214 + 8);
  v72(v59, v42);
  v72(v63, v42);
  v199(v125, v39);
  v72(v47, v42);
  v73 = v249;
  v74 = v247;
  v75 = v216;
  if ((v200 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v247 = v72;
  v82 = v234;
  v83 = v218;
  v218(v234, v73, v42);
  v84 = v75;
  v85 = v233;
  v86 = v74;
  v87 = v82;
  v84(v233, v86, v39);
  v240(v85, 0, 1, v39);
  v88 = *(v239 + 48);
  v89 = v221;
  v83(v221, v82, v42);
  v83(&v89[v88], v85, v42);
  v90 = v220;
  v91 = v220(v89, 1, v39);
  v92 = v83;
  v93 = v248;
  if (v91 == 1)
  {
    v94 = v85;
    v95 = v247;
    v247(v94, v42);
    v95(v87, v42);
    if (v90(&v89[v88], 1, v39) == 1)
    {
      v95(v89, v42);
      v96 = v226;
      v97 = v236;
      v98 = v245;
      goto LABEL_14;
    }

    goto LABEL_56;
  }

  v99 = v206;
  v92(v206, v89, v42);
  if (v90(&v89[v88], 1, v39) == 1)
  {
    v197 = v247;
    v247(v233, v42);
    v197(v234, v42);
    (v222[1])(v99, v39);
LABEL_56:
    (*(v207 + 8))(v89, v239);
LABEL_57:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 436);
  }

  v100 = v222;
  v101 = v211;
  (v222[4])(v211, &v89[v88], v39);
  swift_getAssociatedConformanceWitness();
  v102 = sub_1CF9E6868();
  v103 = v100[1];
  v103(v101, v39);
  v104 = v247;
  v247(v233, v42);
  v104(v234, v42);
  v103(v99, v39);
  v104(v89, v42);
  v96 = v226;
  v97 = v236;
  v93 = v248;
  v98 = v245;
  if ((v102 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_14:
  v106 = v93 + 16;
  v105 = *(v93 + 16);
  v243 = *(v242 + 52);
  v105(v97, v249 + v243, v96);
  v107 = v241;
  v108 = v235;
  v109 = v246;
  v233 = *(v241 + 16);
  v234 = (v241 + 16);
  (v233)(v235, v98, v246);
  v239 = *(v107 + 56);
  v240 = (v107 + 56);
  (v239)(v108, 0, 1, v109);
  v110 = v97;
  v111 = v93;
  v112 = *(TupleTypeMetadata2 + 48);
  v113 = v223;
  v105(v223, v110, v96);
  v230 = v112;
  v105(&v113[v112], v108, v96);
  v114 = *(v107 + 48);
  v247 = (v107 + 48);
  v115 = v114(v113, 1, v109);
  v229 = v106;
  if (v115 == 1)
  {
    v116 = *(v111 + 8);
    v116(v108, v96);
    v116(v110, v96);
    if (v114(&v113[v230], 1, v109) == 1)
    {
      v116(v113, v96);
      v117 = v249;
      v118 = v246;
      v119 = v243;
      v120 = v233;
      goto LABEL_24;
    }

    v117 = v249;
    goto LABEL_22;
  }

  v121 = v208;
  v105(v208, v113, v96);
  v122 = v230;
  v226 = v114;
  if (v114(&v113[v230], 1, v109) == 1)
  {
    v116 = *(v111 + 8);
    v116(v235, v96);
    v116(v236, v96);
    (*(v241 + 8))(v121, v109);
    v117 = v249;
    v114 = v226;
LABEL_22:
    (*(v210 + 8))(v113, TupleTypeMetadata2);
    v120 = v233;
LABEL_23:
    v127 = v231;
    v128 = v105;
    v129 = v114;
    v130 = v232;
    v131 = type metadata accessor for ItemReconciliationHalf(0, v231, v232, v126);
    (*(*(v131 - 8) + 8))(v117 + v243, v131);
    v132 = v127;
    v118 = v246;
    v133 = v130;
    v114 = v129;
    v105 = v128;
    v119 = v243;
    v134 = sub_1CF078A84(v132, v133, v117 + v243);
    (v116)(v117 + v119, v96, v134);
    (v120)(v117 + v119, v245, v118);
    (v239)(v117 + v119, 0, 1, v118);
    goto LABEL_24;
  }

  v159 = v241;
  v160 = v212;
  (*(v241 + 32))(v212, &v113[v122], v109);
  swift_getAssociatedConformanceWitness();
  LODWORD(v230) = sub_1CF9E6868();
  v161 = *(v159 + 8);
  v161(v160, v246);
  v116 = *(v248 + 8);
  v116(v235, v96);
  v116(v236, v96);
  v161(v121, v246);
  v118 = v246;
  v117 = v249;
  v116(v113, v96);
  v114 = v226;
  v119 = v243;
  v120 = v233;
  if ((v230 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v246 = v116;
  v135 = v117 + v119;
  v136 = v238;
  v105(v238, v135, v96);
  v137 = v237;
  (v120)(v237, v245, v118);
  (v239)(v137, 0, 1, v118);
  v138 = *(TupleTypeMetadata2 + 48);
  v139 = v225;
  v105(v225, v136, v96);
  v105(&v139[v138], v137, v96);
  v140 = v114(v139, 1, v118);
  v141 = v105;
  v142 = v114;
  if (v140 == 1)
  {
    v143 = v246;
    v246(v137, v96);
    v143(v136, v96);
    if (v114(&v139[v138], 1, v118) == 1)
    {
      result = (v143)(v139, v96);
      v145 = v228;
      v146 = v249;
      goto LABEL_29;
    }

    goto LABEL_59;
  }

  v147 = v209;
  v141(v209, v139, v96);
  if (v142(&v139[v138], 1, v118) == 1)
  {
    v198 = v246;
    v246(v237, v96);
    v198(v238, v96);
    (*(v241 + 8))(v147, v118);
LABEL_59:
    (*(v210 + 8))(v139, TupleTypeMetadata2);
LABEL_60:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 449);
  }

  v148 = v241;
  v149 = v212;
  (*(v241 + 32))(v212, &v139[v138], v118);
  swift_getAssociatedConformanceWitness();
  v150 = sub_1CF9E6868();
  v151 = *(v148 + 8);
  v151(v149, v118);
  v152 = v246;
  v246(v237, v96);
  v152(v238, v96);
  v151(v147, v118);
  result = (v152)(v139, v96);
  v145 = v228;
  v146 = v249;
  if ((v150 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_29:
  v153 = v224;
  v154 = v242;
  v155 = *(v242 + 56);
  v156 = *(v146 + v155);
  v157 = v227;
  if (v156 <= 1)
  {
    v158 = *(v146 + v155);
    if (*(v146 + v155))
    {
      v158 = 1;
    }
  }

  else if (v156 == 2)
  {
    v158 = 2;
  }

  else
  {
    if (v156 != 3)
    {
      goto LABEL_54;
    }

    v158 = 4;
  }

  if (v158 == qword_1CFA11A30[v224])
  {
    goto LABEL_54;
  }

  if (v156 == 3)
  {
    if (!v224)
    {
      goto LABEL_54;
    }
  }

  else if (!*(v146 + v155) && v224 == 3)
  {
    goto LABEL_54;
  }

  LODWORD(v248) = v224;
  v162 = v202;
  v163 = *(v202 + 16);
  v164 = v205;
  v163(v205);
  v165 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (v163)(v157, v164, v154);
  v166 = v157;
  v167 = sub_1CF9E6108();
  v168 = sub_1CF9E72B8();
  if (os_log_type_enabled(v167, v168))
  {
    LODWORD(v247) = v168;
    v169 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v250[0] = v246;
    *v169 = 136446466;
    v170 = v201;
    (v163)(v201, v166, v154);
    v171 = *(v162 + 8);
    v171(v166, v154);
    v172 = sub_1CF082CB0(v154);
    v174 = v173;
    v171(v170, v154);
    v175 = sub_1CEFD0DF0(v172, v174, v250);
    v174, v176, v177, v178, v179, v180, v181, v182;
    *(v169 + 4) = v175;
    *(v169 + 12) = 2082;
    v153 = v248;
    if (v248 > 1)
    {
      v183 = v205;
      v184 = v167;
      if (v248 == 2)
      {
        v185 = 0xE700000000000000;
        v186 = 0x6B6E696C6D7973;
      }

      else
      {
        v185 = 0xE500000000000000;
        v186 = 0x7361696C61;
      }
    }

    else
    {
      v183 = v205;
      v184 = v167;
      v185 = 0xE300000000000000;
      if (v248)
      {
        v186 = 7498084;
      }

      else
      {
        v186 = 6516580;
      }
    }

    v188 = v246;
    v189 = sub_1CEFD0DF0(v186, v185, v250);
    v185, v190, v191, v192, v193, v194, v195, v196;
    *(v169 + 14) = v189;
    _os_log_impl(&dword_1CEFC7000, v184, v247, "inconsistent item kind %{public}s new kind %{public}s", v169, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v188, -1, -1);
    MEMORY[0x1D386CDC0](v169, -1, -1);

    (*(v203 + 8))(v228, v204);
    result = (v171)(v183, v242);
    v146 = v249;
  }

  else
  {
    v187 = *(v162 + 8);
    v187(v166, v154);

    (*(v203 + 8))(v145, v204);
    result = (v187)(v164, v154);
    v146 = v249;
    v153 = v248;
  }

LABEL_54:
  *(v146 + v155) = v153;
  return result;
}

uint64_t sub_1CF6BBFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a6;
  v53 = a3;
  v11 = *a2;
  v12 = *(*a2 + 104);
  v44 = v11[11];
  v45 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_1CF9E75D8();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v42 - v14;
  v51 = AssociatedTypeWitness;
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v42 - v16;
  v17 = v11[10];
  v43 = v11[12];
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = *(v18 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - v26;
  v28 = *(v20 + 16);
  v48 = a1;
  v28(v22, a1, v19, v25);
  if ((*(v23 + 48))(v22, 1, v18) == 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  (*(v23 + 32))(v27, v22, v18);
  v30 = a2[3];
  v31 = v55;
  (*(*v30 + 424))(v27, v53, v52, a9);
  if (!v31)
  {
    v55 = a9;
    *&v32 = v17;
    *(&v32 + 1) = v44;
    *&v33 = v43;
    *(&v33 + 1) = v45;
    v54[0] = v32;
    v54[1] = v33;
    v34 = type metadata accessor for ItemReconciliation(0, v54);
    v35 = v47;
    v36 = v46;
    v37 = v49;
    (*(v47 + 16))(v46, v48 + *(v34 + 52), v49);
    v38 = v50;
    if ((*(v50 + 48))(v36, 1, v51) == 1)
    {
      (*(v23 + 8))(v27, v18);
      return (*(v35 + 8))(v36, v37);
    }

    v39 = v42;
    v40 = v36;
    v41 = v51;
    (*(v38 + 32))(v42, v40, v51);
    (*(*v30 + 432))(v39, v53, v52, v55);
    (*(v38 + 8))(v39, v41);
  }

  return (*(v23 + 8))(v27, v18);
}

uint64_t objectdestroyTm_5()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF6BC5C0@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return v5(a1, v6, AssociatedTypeWitness);
}

uint64_t sub_1CF6BC64C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SnapshotItem(0, *(v2 + 16), *(v2 + 40), a1);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

uint64_t sub_1CF6BC6CC@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 40);
  v7[0] = *(v1 + 16);
  v5 = v7[0];
  v7[1] = v6;
  v3 = *(type metadata accessor for ItemReconciliation(0, v7) - 8);
  return sub_1CF6B8584(v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80)), v5, *(&v5 + 1), v6, *(&v6 + 1), a1);
}

uint64_t objectdestroy_186Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF6BC820@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return v5(a1, v6, AssociatedTypeWitness);
}

uint64_t sub_1CF6BC8AC(uint64_t result)
{
  if (result >> 7 != 0xFFFFFFFF)
  {
    return sub_1CF480498(result);
  }

  return result;
}

void sub_1CF6BC954(void *a1)
{
  sub_1CF6BCA58();
  if (v3 <= 0x3F)
  {
    v20 = 0;
    v25 = v2;
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    v7 = a1[5];
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v8 = type metadata accessor for ItemReconciliation(319, &v16);
    if (v9 <= 0x3F)
    {
      v21 = 0;
      v26 = v8;
      v27 = v8;
      sub_1CF6BCAA8();
      if (v11 <= 0x3F)
      {
        v22 = 0;
        v28 = v10;
        v16 = v4;
        v17 = v5;
        v18 = v6;
        v19 = v7;
        v12 = type metadata accessor for ReconciliationTable.PersistAction(319, &v16);
        if (v13 <= 0x3F)
        {
          v23 = 0;
          v29 = v12;
          v14 = sub_1CF9E75D8();
          if (v15 <= 0x3F)
          {
            v24 = 0;
            v30 = v14;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CF6BCA58()
{
  if (!qword_1EDEA3740)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3740);
    }
  }
}

void sub_1CF6BCAA8()
{
  if (!qword_1EDEA4790)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEA4790);
    }
  }
}

uint64_t sub_1CF6BCB60(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v10, a1, v8);
  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_1CF6BCDA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v10, a1, v8);
  result = 0;
  *a2 = v10;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CF6BCFF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v11, a1, v8);
  result = 0;
  v10 = v11;
  *(a2 + 4) = BYTE4(v11);
  *a2 = v10;
  *(a2 + 5) = 0;
  return result;
}

uint64_t sub_1CF6BD250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v11, a1, v8);
  result = 0;
  v10 = v12;
  *a2 = v11;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_1CF6BD4C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  a3(a1, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_1CEFDA9E0(v11, a2, &qword_1EC4C23F8, &qword_1CFA11A58);
  return 0;
}

uint64_t sub_1CF6BD7D0(uint64_t a1, _WORD *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v10, a1, v8);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t sub_1CF6BDA38(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128), uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  a3(&v15, a1, v12);
  v13 = *a2;
  *a2 = v15;
  a6(v13);
  return 0;
}

uint64_t sub_1CF6BDC94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v10, a1, v8);
  result = 0;
  *a2 = v10;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CF6BDEE4(uint64_t a1, void **a2, void (*a3)(__int128 *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v11, a1, v8);
  v9 = *a2;
  *a2 = v11;

  return 0;
}

uint64_t sub_1CF6BE150(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t, __n128), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  a3(&v16, a1, v12);
  v13 = *a2;
  v14 = a2[1];
  *a2 = v16;
  a6(v13, v14);
  return 0;
}

void sub_1CF6BE3AC(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0;

  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v17;
    if (v14 == v16 && v13 == v17)
    {
      v17, v17, v18, v19, v20, v21, v22, v23;
    }

    else
    {
      v26 = sub_1CF9E8048();

      v27 = v15;
      v24, v28, v29, v30, v31, v32, v33, v34;
      if (v26)
      {
        goto LABEL_15;
      }

      v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = v44;
      if (v14 == v43 && v13 == v44)
      {

        v13, v64, v65, v66, v67, v68, v69, v70;
        v42 = v45;
LABEL_29:
        v42, v35, v36, v37, v38, v39, v40, v41;
        v2 = v138;
      }

      else
      {
        v47 = sub_1CF9E8048();
        v45, v48, v49, v50, v51, v52, v53, v54;
        if (v47)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v140 = 0uLL;
          sub_1CF9E68A8();
          if (*(&v140 + 1))
          {
            v141 = MEMORY[0x1E69E6158];
            sub_1CEFE9EB8(&v140, v139);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v142 = *a2;
            v55 = v142;
            v57 = sub_1CEFE4328(v14, v13);
            v58 = v55[2];
            v59 = (v56 & 1) == 0;
            v60 = v58 + v59;
            if (__OFADD__(v58, v59))
            {
              goto LABEL_63;
            }

            if (v55[3] >= v60)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v63 = v142;
                if ((v56 & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              else
              {
                v131 = v56;
                sub_1CF7CF1E0();
                v63 = v142;
                if ((v131 & 1) == 0)
                {
                  goto LABEL_52;
                }
              }
            }

            else
            {
              v130 = v56;
              sub_1CF7C3178(v60, isUniquelyReferenced_nonNull_native);
              v61 = sub_1CEFE4328(v14, v13);
              if ((v130 & 1) != (v62 & 1))
              {
                goto LABEL_69;
              }

              v57 = v61;
              v63 = v142;
              if ((v130 & 1) == 0)
              {
LABEL_52:
                v63[(v57 >> 6) + 8] |= 1 << v57;
                v123 = (v63[6] + 16 * v57);
                *v123 = v14;
                v123[1] = v13;
                sub_1CEFE9EB8(v139, (v63[7] + 32 * v57));
                v124 = v63[2];
                v81 = __OFADD__(v124, 1);
                v125 = v124 + 1;
                if (v81)
                {
                  goto LABEL_65;
                }

                v63[2] = v125;
                goto LABEL_54;
              }
            }

            v96 = (v63[7] + 32 * v57);
            __swift_destroy_boxed_opaque_existential_1(v96);
            sub_1CEFE9EB8(v139, v96);
            v13, v97, v98, v99, v100, v101, v102, v103;
LABEL_54:
            *a2 = v63;
LABEL_15:

            v42 = v13;
            goto LABEL_29;
          }
        }

        objc_opt_self();
        v71 = swift_dynamicCastObjCClass();
        if (v71)
        {
          v72 = v71;

          v73 = v27;
          v74 = [v72 value];
          v141 = MEMORY[0x1E69E6370];
          LOBYTE(v140) = v74;
          sub_1CEFE9EB8(&v140, v139);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v142 = *a2;
          v76 = v142;
          v77 = sub_1CEFE4328(v14, v13);
          v79 = v76[2];
          v80 = (v78 & 1) == 0;
          v81 = __OFADD__(v79, v80);
          v82 = v79 + v80;
          if (v81)
          {
            goto LABEL_64;
          }

          if (v76[3] < v82)
          {
            v133 = v78;
            sub_1CF7C3178(v82, v75);
            v77 = sub_1CEFE4328(v14, v13);
            v84 = v83 & 1;
            v78 = v133;
            if ((v133 & 1) != v84)
            {
              goto LABEL_69;
            }

            goto LABEL_44;
          }

          if (v75)
          {
LABEL_44:
            v104 = v142;
            if (v78)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v135 = v77;
            v126 = v78;
            sub_1CF7CF1E0();
            v77 = v135;
            v104 = v142;
            if (v126)
            {
              goto LABEL_50;
            }
          }

          v104[(v77 >> 6) + 8] |= 1 << v77;
          v105 = (v104[6] + 16 * v77);
          *v105 = v14;
          v105[1] = v13;
          sub_1CEFE9EB8(v139, (v104[7] + 32 * v77));
          v113 = v104[2];
          v81 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v81)
          {
            goto LABEL_66;
          }

          goto LABEL_59;
        }

        objc_opt_self();
        v85 = swift_dynamicCastObjCClass();
        if (!v85)
        {
          goto LABEL_15;
        }

        v86 = v85;

        v73 = v27;
        v87 = [v86 longLongValue];
        v141 = MEMORY[0x1E69E7360];
        *&v140 = v87;
        sub_1CEFE9EB8(&v140, v139);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v142 = *a2;
        v89 = v142;
        v77 = sub_1CEFE4328(v14, v13);
        v91 = v89[2];
        v92 = (v90 & 1) == 0;
        v81 = __OFADD__(v91, v92);
        v93 = v91 + v92;
        if (v81)
        {
          goto LABEL_67;
        }

        if (v89[3] >= v93)
        {
          if ((v88 & 1) == 0)
          {
            v136 = v77;
            v127 = v90;
            sub_1CF7CF1E0();
            v77 = v136;
            v104 = v142;
            if (v127)
            {
LABEL_50:
              v115 = (v104[7] + 32 * v77);
              __swift_destroy_boxed_opaque_existential_1(v115);
              sub_1CEFE9EB8(v139, v115);
              v13, v116, v117, v118, v119, v120, v121, v122;
              goto LABEL_60;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v134 = v90;
          sub_1CF7C3178(v93, v88);
          v77 = sub_1CEFE4328(v14, v13);
          v95 = v94 & 1;
          v90 = v134;
          if ((v134 & 1) != v95)
          {
            goto LABEL_69;
          }
        }

        v104 = v142;
        if (v90)
        {
          goto LABEL_50;
        }

LABEL_58:
        v104[(v77 >> 6) + 8] |= 1 << v77;
        v128 = (v104[6] + 16 * v77);
        *v128 = v14;
        v128[1] = v13;
        sub_1CEFE9EB8(v139, (v104[7] + 32 * v77));
        v129 = v104[2];
        v81 = __OFADD__(v129, 1);
        v114 = v129 + 1;
        if (v81)
        {
          goto LABEL_68;
        }

LABEL_59:
        v104[2] = v114;
LABEL_60:
        *a2 = v104;
        v13, v106, v107, v108, v109, v110, v111, v112;

        v2 = v138;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  sub_1CF9E8108();
  __break(1u);
}

uint64_t sub_1CF6BEA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CF9E8048() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1CF6BEA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v27 = *(i - 2);
    v26 = *(i - 1);
    v29 = *(v3 - 2);
    v28 = *(v3 - 1);
    v121 = *v3;
    v122 = *i;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v30 = (v26 >> 56) & 0xF;
    }

    else
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      goto LABEL_17;
    }

    if (sub_1CF9E6B38() == 12565487 && v31 == 0xA300000000000000)
    {
      break;
    }

    v38 = v31;
    v39 = sub_1CF9E8048();
    v38, v40, v41, v42, v43, v44, v45, v46;
    if (v39)
    {
      goto LABEL_15;
    }

LABEL_17:

    v123 = v26;
LABEL_18:
    if ((v28 & 0x2000000000000000) != 0)
    {
      v57 = (v28 >> 56) & 0xF;
    }

    else
    {
      v57 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57)
    {
LABEL_28:

      v78 = v28;
      goto LABEL_29;
    }

    if (sub_1CF9E6B38() == 12565487 && v58 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v59, v60, v61, v62, v63, v64;
    }

    else
    {
      v65 = v58;
      v66 = sub_1CF9E8048();
      v65, v67, v68, v69, v70, v71, v72, v73;
      if ((v66 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (4 * v57 < sub_1CF9E69E8() >> 14)
    {
      goto LABEL_37;
    }

    v74 = sub_1CF9E6B58();
    v76 = v75;
    v29 = MEMORY[0x1D3868C10](v74);
    v78 = v77;
    v76, v77, v79, v80, v81, v82, v83, v84;
LABEL_29:
    if (v27 == v29 && v123 == v78)
    {
      v26, v85, v86, v87, v88, v89, v90, v91;
      v28, v5, v6, v7, v8, v9, v10, v11;
      v78, v12, v13, v14, v15, v16, v17, v18;
      v123, v19, v20, v21, v22, v23, v24, v25;
      if (v122 != v121)
      {
        return;
      }
    }

    else
    {
      v92 = sub_1CF9E8048();
      v26, v93, v94, v95, v96, v97, v98, v99;
      v28, v100, v101, v102, v103, v104, v105, v106;
      v78, v107, v108, v109, v110, v111, v112, v113;
      v123, v114, v115, v116, v117, v118, v119, v120;
      if ((v92 & 1) == 0 || v122 != v121)
      {
        return;
      }
    }

    v3 += 24;
    if (!--v2)
    {
      return;
    }
  }

  0xA300000000000000, 0xA300000000000000, v32, v33, v34, v35, v36, v37;
LABEL_15:
  if (4 * v30 >= sub_1CF9E69E8() >> 14)
  {
    v47 = sub_1CF9E6B58();
    v49 = v48;
    v27 = MEMORY[0x1D3868C10](v47);
    v123 = v50;
    v49, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_18;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1CF6BEDC4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1CEFD57E0(0, &qword_1EDEA3480, 0x1E69674F8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D3869C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1D3869C30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1CF9E7568();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1CF9E7568();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1CF9E7818();
  }

  result = sub_1CF9E7818();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1CF6BF014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1CF00BCE0(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v22 = sub_1CF9E6868();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6BF228(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1CEFE42D4(v7, v6);
          sub_1CEFE42D4(v9, v8);
          v22 = sub_1CF9E5498();
          if (v22)
          {
            v23 = sub_1CF9E54C8();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_1CF9E54B8();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1CEFE42D4(v7, v6);
        sub_1CEFE42D4(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1CEFE42D4(v7, v6);
          sub_1CEFE42D4(v9, v8);
          v27 = sub_1CF9E5498();
          if (v27)
          {
            v28 = sub_1CF9E54C8();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_1CF9E54B8();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1CF363A5C(v24, v25, v26, v33);
          sub_1CEFE4714(v9, v8);
          sub_1CEFE4714(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1CEFE42D4(v7, v6);
        sub_1CEFE42D4(v9, v8);
      }

      sub_1CF363A5C(v33, v9, v8, &v32);
      sub_1CEFE4714(v9, v8);
      sub_1CEFE4714(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

void sub_1CF6BF634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 41);
  for (i = (a2 + 41); ; i += 16)
  {
    v5 = *(v3 - 9);
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = *(i - 9);
    v9 = *(i - 1);
    if ((*v3 & 1) == 0)
    {
      break;
    }

    if ((*i & 1) == 0)
    {
      goto LABEL_34;
    }

    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v10;
    v16 = v13;
    if (v15 == v14 && v12 == v13)
    {
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      v12, v32, v33, v34, v35, v36, v37, v38;
      v16, v39, v40, v41, v42, v43, v44, v45;
      sub_1CEFD0994(v8, v9, 1);
    }

    else
    {
      v50 = sub_1CF9E8048();
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      sub_1CEFD0988(v5, v6, 1);
      sub_1CEFD0988(v8, v9, 1);
      v12, v18, v19, v20, v21, v22, v23, v24;
      v16, v25, v26, v27, v28, v29, v30, v31;
      sub_1CEFD0994(v8, v9, 1);
      if ((v50 & 1) == 0)
      {
        sub_1CEFD0994(v5, v6, 1);
        sub_1CEFD0994(v8, v9, 1);
        v47 = v5;
        v48 = v6;
        v49 = 1;
        goto LABEL_37;
      }
    }

    sub_1CEFD0994(v5, v6, 1);
    sub_1CEFD0994(v8, v9, 1);
LABEL_6:
    sub_1CEFD0994(v5, v6, v7);
    v3 += 16;
    if (!--v2)
    {
      return;
    }
  }

  if (*i)
  {
LABEL_34:
    sub_1CEFD0988(*(v3 - 9), *(v3 - 1), *v3);
    sub_1CEFD0988(v8, v9, v7 ^ 1);
    sub_1CEFD0994(v5, v6, v7);
    v49 = v7 ^ 1;
    v47 = v8;
    v48 = v9;
    goto LABEL_37;
  }

  if (*(v3 - 1))
  {
    if (v6 == 1)
    {
      if (v9 != 1 || v5 != v8)
      {
        goto LABEL_35;
      }
    }

    else if (v5)
    {
      if (v9 != 2 || v8 != 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v46 = 0;
      if (v9 != 2 || v8)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_5;
  }

  if (!*(i - 1) && v5 == v8)
  {
LABEL_5:
    sub_1CEFD0988(*(v3 - 9), *(v3 - 1), 0);
    sub_1CEFD0988(v8, v9, 0);
    goto LABEL_6;
  }

LABEL_35:
  v46 = *(v3 - 9);
LABEL_36:
  sub_1CEFD0988(v46, *(v3 - 1), 0);
  sub_1CEFD0988(v8, v9, 0);
  v47 = v46;
  v48 = v6;
  v49 = 0;
LABEL_37:
  sub_1CEFD0994(v47, v48, v49);
}

uint64_t sub_1CF6BF94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 4) == *(i - 4); i += 32)
    {
      v5 = *i;
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(i - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1CF6BF9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 56);
  for (i = (a2 + 56); ; i += 4)
  {
    v34 = *(v3 - 3);
    v36 = *(v3 - 1);
    v35 = *v3;
    v37 = *(i - 3);
    v38 = *(i - 16);
    v40 = *(i - 1);
    v39 = *i;
    if (*(v3 - 16))
    {
      if (*(v3 - 16) == 1)
      {
        if (v38 != 1 || v34 != v37)
        {
          return;
        }
      }

      else if (v34)
      {
        if (v38 != 2 || v37 != 1)
        {
          return;
        }
      }

      else if (v38 != 2 || v37)
      {
        return;
      }
    }

    else
    {
      if (*(i - 16))
      {
        v42 = 0;
      }

      else
      {
        v42 = v34 == v37;
      }

      if (!v42)
      {
        return;
      }
    }

    if ((v35 & 0x2000000000000000) != 0)
    {
      v43 = (v35 >> 56) & 0xF;
    }

    else
    {
      v43 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      goto LABEL_35;
    }

    if (sub_1CF9E6B38() == 12565487 && v44 == 0xA300000000000000)
    {
      break;
    }

    v51 = v44;
    v52 = sub_1CF9E8048();
    v51, v53, v54, v55, v56, v57, v58, v59;
    if (v52)
    {
      goto LABEL_33;
    }

LABEL_35:

    v126 = v35;
LABEL_36:
    if ((v39 & 0x2000000000000000) != 0)
    {
      v70 = (v39 >> 56) & 0xF;
    }

    else
    {
      v70 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70)
    {
LABEL_46:

      v91 = v39;
      goto LABEL_47;
    }

    if (sub_1CF9E6B38() == 12565487 && v71 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v72, v73, v74, v75, v76, v77;
    }

    else
    {
      v78 = v71;
      v79 = sub_1CF9E8048();
      v78, v80, v81, v82, v83, v84, v85, v86;
      if ((v79 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (4 * v70 < sub_1CF9E69E8() >> 14)
    {
      goto LABEL_53;
    }

    v87 = sub_1CF9E6B58();
    v89 = v88;
    v40 = MEMORY[0x1D3868C10](v87);
    v91 = v90;
    v89, v90, v92, v93, v94, v95, v96, v97;
LABEL_47:
    if (v36 == v40 && v126 == v91)
    {
      v35, v98, v99, v100, v101, v102, v103, v104;
      v39, v105, v106, v107, v108, v109, v110, v111;
      v91, v112, v113, v114, v115, v116, v117, v118;
      v126, v119, v120, v121, v122, v123, v124, v125;
    }

    else
    {
      v5 = sub_1CF9E8048();
      v35, v6, v7, v8, v9, v10, v11, v12;
      v39, v13, v14, v15, v16, v17, v18, v19;
      v91, v20, v21, v22, v23, v24, v25, v26;
      v126, v27, v28, v29, v30, v31, v32, v33;
      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    v3 += 4;
    if (!--v2)
    {
      return;
    }
  }

  0xA300000000000000, 0xA300000000000000, v45, v46, v47, v48, v49, v50;
LABEL_33:
  if (4 * v43 >= sub_1CF9E69E8() >> 14)
  {
    v60 = sub_1CF9E6B58();
    v62 = v61;
    v36 = MEMORY[0x1D3868C10](v60);
    v126 = v63;
    v62, v63, v64, v65, v66, v67, v68, v69;
    goto LABEL_36;
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1CF6BFD3C(uint64_t a1, char *a2, uint64_t *a3, char **a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v60 = a2;
  v62 = a4;
  v63 = a5;
  v55 = a1;
  v7 = *a3;
  v8 = *(*a3 + 632);
  v9 = *(*a3 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 640);
  v61 = a3;
  v12 = *(v7 + 624);
  v68 = AssociatedTypeWitness;
  v69 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ReconciliationID(0, &v68);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v53 - v14;
  v15 = v9;
  v68 = v9;
  v69 = v12;
  v66 = v11;
  v67 = v8;
  AssociatedConformanceWitness = v8;
  v71 = v11;
  v16 = type metadata accessor for ItemReconciliation(0, &v68);
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    WitnessTable = swift_getWitnessTable();
    v28 = sub_1CF981D64(v19, v13, WitnessTable);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  v19, v20, v21, v22, v23, v24, v25, v26;
  v72 = v28;
  MEMORY[0x1EEE9AC00](v29);
  *(&v53 - 8) = v15;
  *(&v53 - 7) = v12;
  v30 = v63;
  v32 = v66;
  v31 = v67;
  *(&v53 - 6) = v63;
  *(&v53 - 5) = v31;
  v33 = v59;
  *(&v53 - 4) = v32;
  *(&v53 - 3) = v33;
  v34 = v65;
  sub_1CF6DC314(v18, v60, v61, 0, v62, sub_1CF6FC944, (&v53 - 10), v30, &v68, v33);
  if (!v34)
  {
    v42 = v31;
    v43 = v15;
    v65 = v68;
    LODWORD(v64) = AssociatedConformanceWitness;
    LODWORD(v63) = BYTE1(AssociatedConformanceWitness);
    type metadata accessor for FPCK(0);
    v44 = v58;
    sub_1CF6E2A6C(v18, v43, v12, v42, v32, v58);
    v46 = v65;
    v47 = v65;
    v48 = sub_1CF9E57E8();
    v67 = v48;

    sub_1CF6C4380(v48, v64, v63, 0, 0);
    v12 = v49;
    v50 = v44;
    v51 = v54;
    (*(v54 + 16))(v55, v50, v13);
    v52 = v57;
    sub_1CF082CB0(v57);

    (*(v51 + 8))(v58, v13);
    (*(v56 + 8))(v18, v52);
  }

  v72, v35, v36, v37, v38, v39, v40, v41;
  return v12;
}

uint64_t sub_1CF6C01BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1CF9E5A58() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1CF00BCE0(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v7 = 0;
  while ((sub_1CF9E6868() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1CF6C02DC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v6 = 0;
    v21 = BYTE2(a2);
    v7 = a4 + 32;
    v8 = a2;
    v19 = HIWORD(a2) & 1;
    v20 = SBYTE1(a2);
    v18 = (a3 + 40);
    v9 = BYTE1(a2);
    do
    {
      v10 = v7 + 24 * v6;
      if (*(v10 + 8) == v8)
      {
        v11 = *(v10 + 9);
        v12 = *(v10 + 10);
        v13 = *(v10 + 16);
        if (v11 == 89)
        {
          if (v9 != 89)
          {
            goto LABEL_3;
          }
        }

        else if (v9 == 89 || qword_1CFA12E48[v11] != qword_1CFA12E48[v20])
        {
          goto LABEL_3;
        }

        if (v12 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_3;
          }
        }

        else if (v21 == 2 || v19 != (v12 & 1))
        {
          goto LABEL_3;
        }

        v14 = *(v13 + 16);
        if (v14 == *(a3 + 16))
        {
          if (!v14 || v13 == a3)
          {
            return;
          }

          v15 = (v13 + 40);
          for (i = v18; ; i += 2)
          {
            v17 = *(v15 - 1) == *(i - 1) && *v15 == *i;
            if (!v17 && (sub_1CF9E8048() & 1) == 0)
            {
              break;
            }

            v15 += 2;
            if (!--v14)
            {
              return;
            }
          }
        }
      }

LABEL_3:
      ++v6;
    }

    while (v6 != v4);
  }
}

void sub_1CF6C0474()
{
  v1 = v0;
  v2 = fpfs_adopt_log();
  *(v0 + qword_1EDEBBE10) = 1;
  v3 = (v0 + qword_1EDEBBE28);
  __swp(v3, v3);
  if ((v3 & 1) == 0)
  {
    sub_1CF6C0838();
    if (*(v0 + qword_1EDEBBE38) != 1)
    {
      v4 = *(v0 + 64);
      v5 = fpfs_current_log();
      v6 = fpfs_adopt_log();
      aBlock = sub_1CF9E73C8();
      v39 = v7;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v8 = sub_1CF9E7988();
      v10 = v9;
      MEMORY[0x1D3868CC0](v8);
      v10, v11, v12, v13, v14, v15, v16, v17;
      sub_1CF9E6978();
      v39, v18, v19, v20, v21, v22, v23, v24;
      v25 = __fp_log_fork();

      v37 = &v37;
      v46 = v25;
      v47 = 0;
      MEMORY[0x1EEE9AC00](v26);
      v33[2] = v5;
      v33[3] = &v46;
      v33[4] = v4;
      v33[5] = "invalidate()";
      v33[6] = 12;
      v34 = 2;
      v35 = sub_1CF6FCB28;
      v36 = v1;
      v45 = 1;
      v44 = 0;
      v27 = swift_allocObject();
      v27[2] = &v45;
      v27[3] = sub_1CF2BA13C;
      v27[4] = v33;
      v27[5] = &v44;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1CF2BA170;
      *(v28 + 24) = v27;
      v42 = sub_1CF1C0B54;
      v43 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1CEFFD02C;
      v41 = &block_descriptor_378;
      v29 = _Block_copy(&aBlock);

      FPDispatchAsyncAndWait(v4, v29);
      _Block_release(v29);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        __break(1u);
      }

      else
      {
        if (v44)
        {
LABEL_12:
          swift_willThrow();

          v32 = fpfs_adopt_log();
          __break(1u);
          return;
        }

        if ((v45 & 1) == 0)
        {

          v30 = fpfs_adopt_log();

          v31 = fpfs_adopt_log();
          return;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  v37 = fpfs_adopt_log();
}

void sub_1CF6C0838()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v176 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v175 = &v169 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v169 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v169 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v170 = &v169 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v169 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v169 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v169 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v169 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v169 - v20;
  v22 = [objc_allocWithZone(FPLoggerScope) init];
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = v22;
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E72C8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [v24 enter];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "%@ ✋🏻  invalidating database", v27, 0xCu);
    sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  v174 = v24;

  v30 = *(v1 + 8);
  v181 = v1 + 8;
  v182 = v0;
  v183 = v30;
  v30(v21, v0);
  v31 = v184;
  v32 = *(v184 + 64);
  v33 = fpfs_current_log();
  v34 = fpfs_adopt_log();
  v193 = 0;
  v194 = 1;
  aBlock = sub_1CF9E73C8();
  v186 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = 2;
  v37 = sub_1CF9E7988();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  v47 = v186;
  sub_1CF9E6978();
  v47, v48, v49, v50, v51, v52, v53, v54;
  v55 = __fp_log_fork();

  v177 = &v169;
  v193 = v55;
  v194 = 0;
  MEMORY[0x1EEE9AC00](v56);
  *(&v169 - 8) = v33;
  *(&v169 - 7) = &v193;
  *(&v169 - 6) = v32;
  *(&v169 - 5) = "invalidate()";
  *(&v169 - 4) = 12;
  *(&v169 - 24) = 2;
  *(&v169 - 2) = sub_1CF6FCB44;
  *(&v169 - 1) = v31;
  v192 = 1;
  v191 = 0;
  v57 = swift_allocObject();
  v57[2] = &v192;
  v57[3] = sub_1CF2BA13C;
  v57[4] = &v169 - 10;
  v57[5] = &v191;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1CF2BA170;
  *(v58 + 24) = v57;
  v189 = sub_1CF1C0B54;
  v190 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v186 = 1107296256;
  v187 = sub_1CEFFD02C;
  v188 = &block_descriptor_399;
  v59 = _Block_copy(&aBlock);

  v60 = v32;
  FPDispatchAsyncAndWait(v32, v59);
  _Block_release(v59);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if (v59)
  {
    __break(1u);
  }

  else
  {
    if (v191)
    {
LABEL_40:
      swift_willThrow();

      v167 = fpfs_adopt_log();
      __break(1u);
      goto LABEL_41;
    }

    v36 = v182;
    v31 = v183;
    if (v192)
    {
      goto LABEL_38;
    }

    v61 = fpfs_adopt_log();

    if (qword_1EDEADB60 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v62 = v184;
  [qword_1EDEBBD10 removeWatcher_];
  v63 = fpfs_current_or_default_log();
  v64 = v178;
  sub_1CF9E6128();
  v65 = sub_1CF9E6108();
  v66 = sub_1CF9E72C8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1CEFC7000, v65, v66, "disable event aggregation", v67, 2u);
    MEMORY[0x1D386CDC0](v67, -1, -1);
  }

  v31(v64, v36);
  v68 = *(v62 + 32);
  v69 = *(**(v68 + 16) + 896);

  v69(v70);

  v178 = *(v62 + 40);
  v71 = *(v178 + 2);
  v72 = v71[2];
  v73 = v71[3];
  v71[2] = 0;
  v71[3] = 0;

  sub_1CEFF7124(v72, v73);
  v74 = v71[6];
  v75 = v71[7];
  v71[6] = 0;
  v71[7] = 0;
  sub_1CEFF7124(v74, v75);

  if (*(v62 + 72) == 1)
  {
    v76 = fpfs_current_or_default_log();
    v77 = v171;
    sub_1CF9E6128();
    v78 = sub_1CF9E6108();
    v79 = sub_1CF9E72C8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1CEFC7000, v78, v79, "cancel trees", v80, 2u);
      MEMORY[0x1D386CDC0](v80, -1, -1);
    }

    v31(v77, v36);
    v81 = *(**(v68 + 16) + 904);

    v81(v82);

    v83 = *(**(v178 + 2) + 904);

    v83(v84);
  }

  v85 = fpfs_current_or_default_log();
  v86 = v179;
  sub_1CF9E6128();
  v87 = sub_1CF9E6108();
  v88 = sub_1CF9E72C8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_1CEFC7000, v87, v88, "stopping scheduler", v89, 2u);
    MEMORY[0x1D386CDC0](v89, -1, -1);
  }

  v177 = v68;

  v90 = (v31)(v86, v36);
  sub_1CF3E3914(v90);
  (*(**(v62 + 24) + 128))();
  v91 = fpfs_current_or_default_log();
  v92 = v180;
  sub_1CF9E6128();
  v93 = sub_1CF9E6108();
  v94 = sub_1CF9E72C8();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1CEFC7000, v93, v94, "cancelling in-flight requests", v95, 2u);
    MEMORY[0x1D386CDC0](v95, -1, -1);
  }

  v31(v92, v36);
  v96 = fpfs_current_log();
  v97 = fpfs_adopt_log();
  v193 = 0;
  v194 = 1;
  aBlock = sub_1CF9E73C8();
  v186 = v98;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v99 = sub_1CF9E7988();
  v101 = v100;
  MEMORY[0x1D3868CC0](v99);
  v101, v102, v103, v104, v105, v106, v107, v108;
  v109 = v186;
  sub_1CF9E6978();
  v109, v110, v111, v112, v113, v114, v115, v116;
  v117 = __fp_log_fork();

  v193 = v117;
  v194 = 0;
  MEMORY[0x1EEE9AC00](v118);
  *(&v169 - 8) = v96;
  *(&v169 - 7) = &v193;
  *(&v169 - 6) = v60;
  *(&v169 - 5) = "invalidate()";
  *(&v169 - 4) = 12;
  *(&v169 - 24) = 2;
  v119 = v184;
  *(&v169 - 2) = sub_1CF6FCB60;
  *(&v169 - 1) = v119;
  v192 = 1;
  v191 = 0;
  v120 = swift_allocObject();
  v120[2] = &v192;
  v120[3] = sub_1CF2BA13C;
  v120[4] = &v169 - 10;
  v120[5] = &v191;
  v121 = swift_allocObject();
  *(v121 + 16) = sub_1CF2BA170;
  *(v121 + 24) = v120;
  v189 = sub_1CF1C0B54;
  v190 = v121;
  aBlock = MEMORY[0x1E69E9820];
  v186 = 1107296256;
  v187 = sub_1CEFFD02C;
  v188 = &block_descriptor_411;
  v122 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v60, v122);
  _Block_release(v122);
  LOBYTE(v122) = swift_isEscapingClosureAtFileLocation();

  if (v122)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v191)
  {
LABEL_41:
    swift_willThrow();

    v168 = fpfs_adopt_log();
    __break(1u);
    return;
  }

  v123 = v182;
  v124 = v183;
  if (v192)
  {
    goto LABEL_39;
  }

  v125 = fpfs_adopt_log();

  v126 = v184;
  if (*(v184 + 72) == 1)
  {
    v127 = fpfs_current_or_default_log();
    v128 = v170;
    sub_1CF9E6128();
    v129 = sub_1CF9E6108();
    v130 = sub_1CF9E72C8();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_1CEFC7000, v129, v130, "closing trees", v131, 2u);
      MEMORY[0x1D386CDC0](v131, -1, -1);
    }

    v124(v128, v123);
    v132 = v177;
    v133 = *(*v177[2] + 904);

    v133(v134);

    v135 = v178;
    v136 = *(**(v178 + 2) + 904);

    v136(v137);

    v138 = *(*v132[2] + 912);

    v138(v139);

    v140 = *(**(v135 + 2) + 912);

    v140(v141);
  }

  v142 = fpfs_current_or_default_log();
  v143 = v172;
  sub_1CF9E6128();
  v144 = sub_1CF9E6108();
  v145 = sub_1CF9E72C8();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_1CEFC7000, v144, v145, "waiting for job completion", v146, 2u);
    MEMORY[0x1D386CDC0](v146, -1, -1);
  }

  v124(v143, v123);
  sub_1CF9E72F8();
  v147 = fpfs_current_or_default_log();
  v148 = v173;
  sub_1CF9E6128();
  v149 = sub_1CF9E6108();
  v150 = sub_1CF9E72C8();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&dword_1CEFC7000, v149, v150, "stopping tracker", v151, 2u);
    MEMORY[0x1D386CDC0](v151, -1, -1);
  }

  v124(v148, v123);
  v152 = *(v126 + 168);
  fp_task_tracker_cancel(*(v152 + 16));
  fp_task_tracker_wait(*(v152 + 16));
  v153 = fpfs_current_or_default_log();
  v154 = v175;
  sub_1CF9E6128();
  v155 = sub_1CF9E6108();
  v156 = sub_1CF9E72C8();
  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    *v157 = 0;
    _os_log_impl(&dword_1CEFC7000, v155, v156, "closing the wharf", v157, 2u);
    MEMORY[0x1D386CDC0](v157, -1, -1);
  }

  v124(v154, v123);
  v158 = v176;
  if (*(v126 + 72) == 1)
  {
    sub_1CF9BFA28();
  }

  v159 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v160 = v174;
  v161 = sub_1CF9E6108();
  v162 = sub_1CF9E72C8();

  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *v163 = 138412290;
    v165 = [v160 leave];
    *(v163 + 4) = v165;
    *v164 = v165;
    _os_log_impl(&dword_1CEFC7000, v161, v162, "%@", v163, 0xCu);
    sub_1CEFCCC44(v164, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v166 = v164;
    v124 = v183;
    MEMORY[0x1D386CDC0](v166, -1, -1);
    MEMORY[0x1D386CDC0](v163, -1, -1);
  }

  v124(v158, v123);
}

id sub_1CF6C19FC(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + qword_1EDEBBE38) = 1;
  v5 = qword_1EDEAE678;
  if (*(a1 + qword_1EDEAE678))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  *(a1 + v5) = 0;
  swift_unknownObjectRelease();
  *(*(a1 + 160) + 16) = 0;
  v6 = a1 + qword_1EC4EBCD0;
  v7 = *(a1 + qword_1EC4EBCD0);
  if (v7)
  {
    v8 = *(v6 + 8);
    sub_1CF1FD6B8(*(a1 + qword_1EC4EBCD0), v8);
    v9 = v7;
    sub_1CF1FD6F8(v7, v8);
    v47 = sub_1CF4858E0;
    v48 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1CF00A468;
    v46 = &block_descriptor_381;
    v10 = _Block_copy(&aBlock);
    [v9 setAutoRollbackHandlerForSwift_];
    _Block_release(v10);
  }

  v11 = a1 + qword_1EC4EBCD8;
  v12 = *(a1 + qword_1EC4EBCD8);
  if (v12)
  {
    v13 = *(v11 + 8);
    sub_1CF1FD6B8(*(a1 + qword_1EC4EBCD8), v13);
    v14 = v12;
    sub_1CF1FD6F8(v12, v13);
    v47 = sub_1CF4858E0;
    v48 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1CF00A468;
    v46 = &block_descriptor_384;
    v15 = _Block_copy(&aBlock);
    [v14 setAutoRollbackHandlerForSwift_];
    _Block_release(v15);
  }

  v16 = *(a1 + qword_1EDEBBDB0);
  v47 = sub_1CF3C3C94;
  v48 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CF00A468;
  v46 = &block_descriptor_387;
  v17 = _Block_copy(&aBlock);
  [v16 setAutoRollbackHandlerForSwift_];
  _Block_release(v17);
  v18 = *v6;
  if (*v6)
  {
    v19 = *(v6 + 8);
    sub_1CF1FD6B8(*v6, v19);
    v20 = v18;
    sub_1CF1FD6F8(v18, v19);
    aBlock = 0;
    LODWORD(v19) = [v20 close_];

    v21 = aBlock;
    if (!v19)
    {
      goto LABEL_15;
    }

    v22 = aBlock;
  }

  v23 = *v11;
  if (*v11)
  {
    v24 = *(v11 + 8);
    sub_1CF1FD6B8(*v11, v24);
    v25 = v23;
    sub_1CF1FD6F8(v23, v24);
    aBlock = 0;
    LODWORD(v24) = [v25 close_];

    v21 = aBlock;
    if (v24)
    {
      v26 = aBlock;
      goto LABEL_13;
    }

LABEL_15:
    v28 = v21;
    v29 = sub_1CF9E57F8();

    goto LABEL_17;
  }

LABEL_13:
  aBlock = 0;
  if ([v16 close_])
  {
    return aBlock;
  }

  v30 = aBlock;
  v29 = sub_1CF9E57F8();

LABEL_17:
  swift_willThrow();
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = v29;
  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E72B8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    swift_getErrorValue();
    v37 = Error.prettyDescription.getter(v41, v42);
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_1CEFC7000, v33, v34, "can't close DB: %@", v35, 0xCu);
    sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v36, -1, -1);
    MEMORY[0x1D386CDC0](v35, -1, -1);
  }

  else
  {
  }

  return (*(v39 + 8))(v4, v40);
}

uint64_t sub_1CF6C1FA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(v11, (v1 + 32), sizeof(v11));
  if (sub_1CEFF7450(v11) == 1)
  {
    v3 = *(v1 + 16);

    v3(v4);

    memcpy(v7, a1, sizeof(v7));
    memcpy(__src, a1, sizeof(__src));
    nullsub_1();
    memcpy(v9, (v1 + 32), sizeof(v9));
    sub_1CEFCCBDC(v7, v6, &unk_1EC4BFC20, &unk_1CFA0A290);
    memcpy((v1 + 32), __src, 0x208uLL);
    sub_1CEFCCC44(v9, &qword_1EC4C28A8, &qword_1CFA12AF8);
  }

  else
  {
    memcpy(a1, __dst, 0x208uLL);
  }

  return sub_1CEFCCBDC(__dst, v9, &qword_1EC4C28A8, &qword_1CFA12AF8);
}

uint64_t sub_1CF6C20F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00, &unk_1CFA0A6F0);
  v6 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF6C21C0, v6, v5);
}

uint64_t sub_1CF6C21C0()
{
  *(v0 + 24) = *(*(v0 + 16) + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CF6C2234, 0, 0);
}

uint64_t sub_1CF6C2234()
{
  if (*(v0 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E6F18();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CF6C22D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  *(a1 + 152) = 1;
  v5 = qword_1EDEBBCB8;
  if (*(a1 + qword_1EDEBBCB8))
  {

    sub_1CF4703B8();
  }

  *(a1 + v5) = 0;

  v6 = qword_1EDEBBC88;
  v7 = *(a1 + qword_1EDEBBC88);
  if (v7)
  {
    v8 = sub_1CF9E6F08();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_1CF6FCFEC(0, 0, v4, &unk_1CFA12B30, v9);
  }

  *(a1 + v6) = 0;
}

double sub_1CF6C2458(uint64_t a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v398 = v2;
  v399 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v385[0] = v385 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v397 = v385 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v387 = v385 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v402 = *v9[-1].tester;
  MEMORY[0x1EEE9AC00](v9);
  v409 = (v385 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v408 = (v385 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v401 = v385 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v421 = v385 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v420 = v385 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v410 = v385 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v405 = *v21[-1].tester;
  MEMORY[0x1EEE9AC00](v21);
  v412 = (v385 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v411 = (v385 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v403 = v385 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  MEMORY[0x1EEE9AC00](v27 - 8);
  anon_8 = v385 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v423 = (v385 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v418 = v385 - v33;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v34 = *(v433 - 1);
  MEMORY[0x1EEE9AC00](v433 - 1);
  v414 = v385 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v413 = (v385 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v404 = v385 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = (v385 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v424 = v385 - v44;
  MEMORY[0x1EEE9AC00](v45);
  i = v385 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v391 = *(v47 - 8);
  v392 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v390 = v385 - v48;
  v49 = qword_1EDEBBC70;
  swift_beginAccess();
  v396 = a1;
  v386 = v49;
  v50 = *(a1 + v49);
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v50 + 64);
  v55 = (v52 + 63) >> 6;
  v406 = v34;
  v430 = (v34 + 48);
  v431.n128_u64[0] = v34 + 56;
  v393 = v50;

  v56 = 0;
  v432 = v9;
  v434 = v21;
  v425 = anon_8;
  v422 = v42;
  v388 = v55;
  v389 = v51;
  while (v54)
  {
    v57 = v56;
LABEL_11:
    v394 = v57;
    v395 = (v54 - 1) & v54;
    v58 = v390;
    sub_1CEFCCBDC(*(v393 + 56) + *(v391 + 72) * (__clz(__rbit64(v54)) | (v57 << 6)), v390, &unk_1EC4C04C0, &qword_1CFA07B10);
    v59 = *(v58 + *(v392 + 56));

    sub_1CEFCCC44(v58, &unk_1EC4C04C0, &qword_1CFA07B10);
    v67 = 0;
    v68 = *(v59 + 64);
    v400 = v59 + 64;
    v407 = v59;
    v69 = 1 << *(v59 + 32);
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v71 = v70 & v68;
    v72 = (v69 + 63) >> 6;
    v417 = v72;
    if ((v70 & v68) == 0)
    {
LABEL_16:
      if (v72 <= v67 + 1)
      {
        v75 = v67 + 1;
      }

      else
      {
        v75 = v72;
      }

      v74 = v433;
      while (1)
      {
        v73 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v73 >= v72)
        {
          *&v429 = v75 - 1;
          v71 = 0;
          v77 = 1;
          goto LABEL_24;
        }

        v71 = *(v400 + 8 * v73);
        ++v67;
        if (v71)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    while (1)
    {
      v73 = v67;
      v74 = v433;
LABEL_23:
      v76 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      sub_1CEFCCBDC(*(v407 + 56) + *(v406 + 72) * (v76 | (v73 << 6)), v42, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v77 = 0;
      *&v429 = v73;
LABEL_24:
      v78 = *v431.n128_u64[0];
      v79 = 1;
      (*v431.n128_u64[0])(v42, v77, 1, v74);
      v80 = *v430;
      if ((*v430)(v42, 1, v74) != 1)
      {
        v81 = *(v74 + 20);
        v82 = *(v74 + 24);
        v426 = *&v42->super.isa;
        v83 = *v42->tree;
        v415 = v82;
        v416 = v83;
        v84 = sub_1CF9E6448();
        v85 = *(v84 - 8);
        isa = v78;
        v86 = *(v85 + 32);
        v87 = v404;
        v86(&v404[v81], v42 + v81, v84);
        v88 = swift_allocObject();
        v428 = v80;
        v89 = v88;
        *(v88 + 16) = *(&v42->super.isa + v415);
        v90 = *(v433 + 20);
        v91 = v424;
        v92 = (v424 + *(v433 + 24));
        *v424 = v426;
        *(v91 + 16) = v416;
        v86((v91 + v90), &v87[v81], v84);
        v74 = v433;
        v79 = 0;
        *v92 = sub_1CF4812A8;
        v92[1] = v89;
        v78 = isa;
        v80 = v428;
        v42 = v422;
      }

      v93 = v424;
      (v78)(v424, v79, 1, v74);
      v94 = v93;
      v95 = i;
      sub_1CEFE55D0(v94, i, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if ((v80)(v95, 1, v74) == 1)
      {
        break;
      }

      v96 = *(v95 + 16);
      v97 = *(v74 + 20);
      v98 = v95;
      v99 = *(v74 + 24);
      v100 = v413;
      *v413 = *v98;
      *(v100 + 16) = v96;
      v101 = sub_1CF9E6448();
      v102 = *(v101 - 8);
      isa = v101;
      v428 = v102;
      v103 = *(v102 + 4);
      v426 = *&v98[v99];
      v103(v100 + v97, &v98[v97], v101);
      *(v100 + v99) = v426;
      v104 = v414;
      sub_1CEFCCBDC(v100, v414, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CEFD0A98(*v104);

      v58 = *(v104 + *(v74 + 24));
      v105 = FPDomainUnavailableError();
      v106 = *(v74 + 20);
      (v58)();

      v42 = v422;
      sub_1CEFCCC44(v100, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (*(v428 + 1))(v104 + v106, isa);
      v67 = v429;
      v72 = v417;
      if (!v71)
      {
        goto LABEL_16;
      }
    }

    v56 = v394;
    v54 = v395;
    anon_8 = v425;
    v55 = v388;
    v51 = v389;
  }

  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_124;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      goto LABEL_11;
    }
  }

  v107 = sub_1CF4E1040(MEMORY[0x1E69E7CC0]);
  v108 = v396;
  v109 = *(v396 + v386);
  *(v396 + v386) = v107;
  v109, v110, v111, v112, v113, v114, v115, v116;
  v117 = qword_1EC4EBD70;
  swift_beginAccess();
  v413 = v117;
  v118 = *(v108 + v117);
  v119 = v118 + 64;
  v120 = 1 << *(v118 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  i = v121 & *(v118 + 64);
  v55 = (v120 + 63) >> 6;
  v433 = (v405 + 56);
  v431.n128_u64[0] = v405 + 48;
  v416 = v118;

  v122 = 0;
  v414 = v55;
  v415 = v119;
LABEL_34:
  v123 = i;
  if (i)
  {
    v124 = v122;
LABEL_39:
    i = (v123 - 1) & v123;
    v125 = *(v416 + 56);
    v417 = v124;
    v126 = *(v125 + ((v124 << 9) | (8 * __clz(__rbit64(v123)))));
    v127 = *v126->tree;
    v422 = v126;

    v55 = 0;
    v428 = v127;
    if (!v127)
    {
LABEL_40:
      v128 = 1;
      v430 = v127;
      v129 = v434;
      goto LABEL_44;
    }

    while ((v55 & 0x8000000000000000) == 0)
    {
      v129 = v434;
      if (v55 >= *v422->tree)
      {
        goto LABEL_121;
      }

      sub_1CEFCCBDC(v422 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v55, anon_8, &qword_1EC4BE670, &qword_1CF9FE4D0);
      v128 = 0;
      v430 = (v55 + 1);
LABEL_44:
      v130 = *v433;
      v131 = 1;
      (*v433)(anon_8, v128, 1, v129);
      v132 = *v431.n128_u64[0];
      if ((*v431.n128_u64[0])(anon_8, 1, v129) != 1)
      {
        isa_low = SLODWORD(v434[2].super.isa);
        v424 = *v434[2].tree;
        v134 = v425;
        v135 = *v425->_anon_8;
        isa = v425->super.isa;
        *&v426 = v135;
        v136 = sub_1CF9E6448();
        v137 = *(v136 - 8);
        *&v429 = v132;
        v138 = *(v137 + 32);
        v139 = v403;
        v138(&v403[isa_low], v134 + isa_low, v136);
        v140 = swift_allocObject();
        v141 = v423;
        *(v140 + 16) = *(&v134->super.isa + v424);
        v142 = SLODWORD(v434[2].super.isa);
        v143 = (v141 + *v434[2].tree);
        v144 = v426;
        *v141 = isa;
        v141[1] = v144;
        v145 = &v139[isa_low];
        v129 = v434;
        v138(v141 + v142, v145, v136);
        v132 = v429;
        v131 = 0;
        *v143 = sub_1CF5DEE90;
        v143[1] = v140;
      }

      v146 = v423;
      v130(v423, v131, 1, v129);
      v147 = v418;
      sub_1CEFE55D0(v146, v418, &unk_1EC4C04F0, &qword_1CFA12B10);
      if (v132(v147, 1, v129) == 1)
      {
        v422, v148, v149, v150, v151, v152, v153, v154;
        v122 = v417;
        anon_8 = v425;
        v55 = v414;
        v119 = v415;
        goto LABEL_34;
      }

      v155 = SLODWORD(v129[2].super.isa);
      v156 = *v129[2].tree;
      v157 = v129;
      v158 = v411;
      *v411 = *v147;
      v159 = sub_1CF9E6448();
      v160 = *(v159 - 8);
      v161 = *(v160 + 32);
      v429 = *&v147[v156];
      v161(v158 + v155, &v147[v155], v159);
      *(v158 + v156) = v429;
      v162 = v412;
      sub_1CEFCCBDC(v158, v412, &qword_1EC4BE670, &qword_1CF9FE4D0);
      sub_1CEFD0A98(*v162);
      v163 = *(v162 + *v157[2].tree);
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      v164 = FPDomainUnavailableError();
      v165 = SLODWORD(v157[2].super.isa);
      v163(&v439, v164);

      sub_1CEFCCC44(&v439, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CEFCCC44(v158, &qword_1EC4BE670, &qword_1CF9FE4D0);
      (*(v160 + 8))(v162 + v165, v159);
      anon_8 = v425;
      v127 = v428;
      v55 = v430;
      if (v430 == v428)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    os_unfair_lock_unlock(v55);
    __break(1u);
LABEL_130:
    MEMORY[0x1EEE9AC00](v326);
    v385[-2] = anon_8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v385[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  while (1)
  {
    v124 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      goto LABEL_125;
    }

    if (v124 >= v55)
    {
      break;
    }

    v123 = *(v119 + 8 * v124);
    ++v122;
    if (v123)
    {
      goto LABEL_39;
    }
  }

  v166 = sub_1CF4E1238(MEMORY[0x1E69E7CC0]);
  v167 = v396;
  v168 = *(v413 + v396);
  *(v413 + v396) = v166;
  v168, v169, v170, v171, v172, v173, v174, v175;
  anon_8 = qword_1EC4EBD78;
  swift_beginAccess();
  v417 = anon_8;
  v176 = *(v167 + anon_8);
  v177 = v176 + 64;
  v178 = 1 << *(v176 + 32);
  v179 = -1;
  if (v178 < 64)
  {
    v179 = ~(-1 << v178);
  }

  v424 = v179 & *(v176 + 64);
  v55 = (v178 + 63) >> 6;
  v433 = (v402 + 48);
  v434 = (v402 + 56);
  v422 = v176;

  v180 = 0;
  v418 = v55;
  for (i = v177; ; v177 = i)
  {
    v181 = v421;
    v182 = v424;
    if (!v424)
    {
      break;
    }

    v183 = v180;
LABEL_58:
    v423 = v183;
    v424 = (v182 - 1) & v182;
    v184 = *(*v422[1].tester + ((v183 << 9) | (8 * __clz(__rbit64(v182)))));
    v185 = *v184->tree;
    v425 = v184;

    v55 = 0;
    v428 = v185;
    if (!v185)
    {
LABEL_59:
      v186 = 1;
      v431.n128_u64[0] = v185;
      v187 = v432;
      goto LABEL_63;
    }

    while (1)
    {
      if (v55 < 0)
      {
        goto LABEL_122;
      }

      v187 = v432;
      if (v55 >= *v425->tree)
      {
        goto LABEL_123;
      }

      sub_1CEFCCBDC(v425 + ((*(v402 + 80) + 32) & ~*(v402 + 80)) + *(v402 + 72) * v55, v181, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v186 = 0;
      v431.n128_u64[0] = v55 + 1;
LABEL_63:
      v188 = v434->super.isa;
      v189 = 1;
      (v434->super.isa)(v181, v186, 1, v187);
      anon_8 = *v433;
      if ((*v433)(v181, 1, v187) != 1)
      {
        v190 = SLODWORD(v187[2].super.isa);
        *&v426 = *v187[2].tree;
        v430 = anon_8;
        v191 = v421;
        v192 = *(v421 + 1);
        *&v429 = *v421;
        isa = v192;
        v193 = sub_1CF9E6448();
        v194 = *(*(v193 - 8) + 32);
        v195 = v401;
        v194(&v401[v190], &v191[v190], v193);
        v196 = swift_allocObject();
        *(v196 + 16) = *&v191[v426];
        v197 = SLODWORD(v432[2].super.isa);
        v198 = v420;
        v199 = &v420[*v432[2].tree];
        v200 = isa;
        *v420 = v429;
        *(v198 + 1) = v200;
        v194(&v198[v197], &v195[v190], v193);
        v187 = v432;
        v189 = 0;
        *v199 = sub_1CF5E14E0;
        v199[1] = v196;
        anon_8 = v430;
      }

      v201 = v420;
      (v188)(v420, v189, 1, v187);
      v202 = v410;
      sub_1CEFE55D0(v201, v410, &unk_1EC4C04D0, &unk_1CFA12B00);
      if ((anon_8)(v202, 1, v187) == 1)
      {
        break;
      }

      v210 = v202;
      v211 = SLODWORD(v187[2].super.isa);
      v212 = *v187[2].tree;
      v213 = v187;
      v214 = v408;
      *v408 = *v210;
      v430 = sub_1CF9E6448();
      v215 = *(v430 - 1);
      v216 = *(v215 + 32);
      v429 = *&v210[v212];
      v216(v214 + v211, &v210[v211], v430);
      *(v214 + v212) = v429;
      v217 = v409;
      sub_1CEFCCBDC(v214, v409, &unk_1EC4C5230, &unk_1CF9FE4C0);
      sub_1CEFD0A98(*v217);
      v218 = *(v217 + *v213[2].tree);
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      v219 = FPDomainUnavailableError();
      anon_8 = SLODWORD(v213[2].super.isa);
      v218(&v439, v219);

      sub_1CEFCCC44(&v439, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CEFCCC44(v214, &unk_1EC4C5230, &unk_1CF9FE4C0);
      (*(v215 + 8))(v217 + anon_8, v430);
      v181 = v421;
      v185 = v428;
      v55 = v431.n128_u64[0];
      if (v431.n128_u64[0] == v428)
      {
        goto LABEL_59;
      }
    }

    v425, v203, v204, v205, v206, v207, v208, v209;
    v180 = v423;
    v55 = v418;
  }

  while (1)
  {
    v183 = v180 + 1;
    if (__OFADD__(v180, 1))
    {
      goto LABEL_126;
    }

    if (v183 >= v55)
    {
      break;
    }

    v182 = *(v177 + 8 * v183);
    v180 = (v180 + 1);
    if (v182)
    {
      goto LABEL_58;
    }
  }

  v71 = MEMORY[0x1E69E7CC0];
  v220 = sub_1CF4E1330(MEMORY[0x1E69E7CC0]);
  v73 = v396;
  v221 = *(v396 + v417);
  *(v396 + v417) = v220;
  v221, v222, v223, v224, v225, v226, v227, v228;
  v42 = qword_1EDEBBD00;
  swift_beginAccess();
  v58 = *(&v42->super.isa + v73);
  v229 = *(v58 + 16);
  if (v229)
  {

    v230 = v58 + 40;
    do
    {
      v231 = *(v230 - 8);

      v232 = FPDomainUnavailableError();
      *&v439 = v232;
      v231(&v439);

      v230 += 16;
      --v229;
    }

    while (v229);
    v58, v233, v234, v235, v236, v237, v238, v239;
    v240 = v396;
    v58 = *(&v42->super.isa + v396);
  }

  else
  {
LABEL_73:
    v240 = v73;
  }

  *(&v42->super.isa + v240) = v71;
  v58, v60, v61, v62, v63, v64, v65, v66;
  v241 = qword_1EDEBBC90;
  swift_beginAccess();
  v249 = v396;
  v250 = *(v396 + v241);
  v251 = *v250->tree;
  if (v251)
  {

    tester = v250[1].tester;
    do
    {
      v253 = *(tester - 3);
      v254 = *(tester - 1);

      sub_1CEFD09A0(v253);
      v255 = FPDomainUnavailableError();
      *&v439 = v255;
      v254(&v439);

      sub_1CEFD0A98(v253);

      tester += 32;
      --v251;
    }

    while (v251);
    v250, v256, v257, v258, v259, v260, v261, v262;
    v249 = v396;
    v250 = *(v396 + v241);
    v71 = MEMORY[0x1E69E7CC0];
  }

  *(v249 + v241) = v71;
  v263 = v249;
  v250, v242, v243, v244, v245, v246, v247, v248;
  anon_8 = qword_1EC4EBD80;
  swift_beginAccess();
  v264 = *(v263 + anon_8);
  v265 = *(v264 + 64);
  v430 = (v264 + 64);
  v266 = 1 << *(v264 + 32);
  v267 = -1;
  if (v266 < 64)
  {
    v267 = ~(-1 << v266);
  }

  v268 = v267 & v265;
  v428 = anon_8;
  *&v429 = (v266 + 63) >> 6;

  v270 = 0;
  v55 = &unk_1EC4C1B30;
  v431.n128_u64[0] = v269;
  while (v268)
  {
LABEL_86:
    v272 = __clz(__rbit64(v268));
    v268 &= v268 - 1;
    anon_8 = *(*(v269 + 56) + ((v270 << 9) | (8 * v272)));
    v273 = *(anon_8 + 16);
    if (v273)
    {
      v433 = v270;
      v434 = v268;

      v432 = anon_8;
      anon_8 += 64;
      do
      {
        v274 = *(anon_8 - 32);
        v275 = *(anon_8 - 8);
        v441 = 0;
        v439 = 0u;
        v440 = 0u;

        sub_1CEFD09A0(v274);
        v276 = FPDomainUnavailableError();
        v438[0] = v276;
        v275(&v439, v438);

        sub_1CEFD0A98(v274);

        sub_1CEFCCC44(&v439, &unk_1EC4C1B30, &qword_1CFA05300);
        anon_8 += 40;
        --v273;
      }

      while (v273);
      v432, v277, v278, v279, v280, v281, v282, v283;
      v269 = v431.n128_u64[0];
      v270 = v433;
      v268 = v434;
    }
  }

  while (1)
  {
    v271 = v270 + 1;
    if (__OFADD__(v270, 1))
    {
      goto LABEL_127;
    }

    if (v271 >= v429)
    {
      break;
    }

    v268 = *&v430[8 * v271];
    ++v270;
    if (v268)
    {
      v270 = v271;
      goto LABEL_86;
    }
  }

  v284 = sub_1CF4E1344(MEMORY[0x1E69E7CC0]);
  v285 = v396;
  v286 = *&v428[v396];
  *&v428[v396] = v284;
  v286, v287, v288, v289, v290, v291, v292, v293;
  anon_8 = qword_1EDEBBC60;
  v55 = 1;
  swift_beginAccess();
  v431.n128_u64[0] = anon_8;
  v294 = *(v285 + anon_8);
  v295 = *(v294 + 64);
  v432 = (v294 + 64);
  v296 = 1 << *(v294 + 32);
  v297 = -1;
  if (v296 < 64)
  {
    v297 = ~(-1 << v296);
  }

  v298 = v297 & v295;
  v299 = (v296 + 63) >> 6;

  v301 = 0;
  v433 = v300;
  while (v298)
  {
LABEL_98:
    v303 = __clz(__rbit64(v298));
    v298 &= v298 - 1;
    v304 = *(v300[7] + ((v301 << 9) | (8 * v303)));
    v305 = *v304->tree;
    if (v305)
    {

      v434 = v304;
      anon_8 = v304[1]._anon_8;
      do
      {
        v306 = *(anon_8 - 8);
        v55 = *anon_8;

        v307 = FPDomainUnavailableError();
        v438[0] = v307;
        v306(v438);

        anon_8 += 16;
        --v305;
      }

      while (v305);
      v434, v308, v309, v310, v311, v312, v313, v314;
      v300 = v433;
    }
  }

  while (1)
  {
    v302 = v301 + 1;
    if (__OFADD__(v301, 1))
    {
      goto LABEL_128;
    }

    if (v302 >= v299)
    {
      break;
    }

    v298 = *(&v432->super.isa + v302);
    ++v301;
    if (v298)
    {
      v301 = v302;
      goto LABEL_98;
    }
  }

  v315 = sub_1CF4E1358(MEMORY[0x1E69E7CC0]);
  anon_8 = v396;
  v316 = *(v396 + v431.n128_u64[0]);
  *(v396 + v431.n128_u64[0]) = v315;
  v316, v317, v318, v319, v320, v321, v322, v323;
  v324 = (anon_8 + qword_1EDEBBC20);
  os_unfair_lock_lock((anon_8 + qword_1EDEBBC20));
  sub_1CF6F4B7C(&v324[2]);
  os_unfair_lock_unlock(v324);
  v55 = anon_8 + qword_1EDEBBC28;
  os_unfair_lock_lock((anon_8 + qword_1EDEBBC28));
  v325 = v385[1];
  sub_1CF6C4260(v55 + 8);
  if (v325)
  {
    goto LABEL_129;
  }

  os_unfair_lock_unlock(v55);
  v326 = objc_sync_enter(anon_8);
  if (v326)
  {
    goto LABEL_130;
  }

  swift_beginAccess();
  v327 = *(anon_8 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28B0, &qword_1CFA12B18);
  *(swift_initStackObject() + 16) = v327;

  v328 = objc_sync_exit(anon_8);
  if (v328)
  {
    MEMORY[0x1EEE9AC00](v328);
    v385[-2] = anon_8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v385[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v329 = sub_1CF6F36B4();
  v327, v330, v331, v332, v333, v334, v335, v336;
  v337 = *v329->tree;
  if (v337)
  {
    v430 = 0;
    v338 = [objc_allocWithZone(FPLoggerScope) init];
    v339 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v340 = v338;
    v341 = sub_1CF9E6108();
    v342 = sub_1CF9E72C8();

    if (os_log_type_enabled(v341, v342))
    {
      v343 = swift_slowAlloc();
      v344 = swift_slowAlloc();
      *v343 = 138412290;
      v345 = [v340 enter];
      *(v343 + 4) = v345;
      *v344 = v345;
      _os_log_impl(&dword_1CEFC7000, v341, v342, "%@ Running jobs", v343, 0xCu);
      sub_1CEFCCC44(v344, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v344, -1, -1);
      MEMORY[0x1D386CDC0](v343, -1, -1);
    }

    *&v429 = v340;

    v346 = *(v399 + 8);
    v399 += 8;
    v434 = v346;
    v347 = (v346)(v387, v398);
    v348 = 32;
    v347.n128_u64[0] = 136315138;
    v431 = v347;
    v349 = v397;
    v432 = v329;
    do
    {
      v350 = *(&v329->super.isa + v348);

      v351 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      swift_retain_n();
      v352 = sub_1CF9E6108();
      v353 = sub_1CF9E72C8();
      if (os_log_type_enabled(v352, v353))
      {
        v354 = swift_slowAlloc();
        v433 = swift_slowAlloc();
        v437[0] = v433;
        v355 = v431;
        *v354 = v431.n128_u32[0];
        if (v350 < 0)
        {
          v435 = 2650214;
          v436 = 0xE300000000000000;
          v356 = sub_1CF902D78(v355);
        }

        else
        {
          v435 = 2650982;
          v436 = 0xE300000000000000;
          v356 = sub_1CF902D78(v355);
        }

        v358 = v357;
        MEMORY[0x1D3868CC0](v356);
        v358, v359, v360, v361, v362, v363, v364, v365;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        v366 = v436;
        v367 = sub_1CEFD0DF0(v435, v436, v437);
        v366, v368, v369, v370, v371, v372, v373, v374;
        *(v354 + 4) = v367;
        _os_log_impl(&dword_1CEFC7000, v352, v353, "running job: %s", v354, 0xCu);
        v375 = v433;
        __swift_destroy_boxed_opaque_existential_1(v433);
        MEMORY[0x1D386CDC0](v375, -1, -1);
        MEMORY[0x1D386CDC0](v354, -1, -1);

        v349 = v397;
        (v434)(v397, v398);
        v329 = v432;
      }

      else
      {

        (v434)(v349, v398);
      }

      v348 += 8;
      --v337;
    }

    while (v337);

    v376 = fpfs_current_or_default_log();
    v377 = v385[0];
    sub_1CF9E6128();
    v378 = v429;
    v379 = sub_1CF9E6108();
    v380 = sub_1CF9E72C8();

    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      v382 = swift_slowAlloc();
      *v381 = 138412290;
      v383 = [v378 leave];
      *(v381 + 4) = v383;
      *v382 = v383;
      _os_log_impl(&dword_1CEFC7000, v379, v380, "%@", v381, 0xCu);
      sub_1CEFCCC44(v382, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v382, -1, -1);
      MEMORY[0x1D386CDC0](v381, -1, -1);
    }

    (v434)(v377, v398);
  }

  else
  {
  }

  return result;
}