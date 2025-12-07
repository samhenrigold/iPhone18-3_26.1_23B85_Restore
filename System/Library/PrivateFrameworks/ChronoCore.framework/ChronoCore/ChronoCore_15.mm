void sub_224B883B8(int *a1, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, void (*a7)(void *, void), uint64_t a8, uint64_t a9)
{
  v286 = a8;
  v287 = a7;
  v337 = a4;
  v325 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4878, &qword_224DB81D0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v316 = &v273 - v14;
  v310 = type metadata accessor for PlatterFetchingError(0);
  v16 = MEMORY[0x28223BE20](v310, v15);
  v307 = &v273 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v311 = &v273 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v280 = &v273 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v277 = &v273 - v25;
  v285 = sub_224DAB1F8();
  v284 = *(v285 - 8);
  v27 = MEMORY[0x28223BE20](v285, v26);
  v274 = &v273 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v273 = &v273 - v30;
  v298 = sub_224DABCC8();
  v299 = *(v298 - 8);
  v32 = MEMORY[0x28223BE20](v298, v31);
  v281 = &v273 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v276 = &v273 - v35;
  v317 = type metadata accessor for PlatterContentError(0);
  v326 = *(v317 - 8);
  v37 = MEMORY[0x28223BE20](v317 - 8, v36);
  v306 = &v273 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v312 = &v273 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v332 = (&v273 - v44);
  MEMORY[0x28223BE20](v43, v45);
  v331 = (&v273 - v46);
  v302 = sub_224DAEC58();
  v303 = *(v302 - 8);
  v48 = MEMORY[0x28223BE20](v302, v47);
  v301 = &v273 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v300 = &v273 - v51;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4890, &qword_224DB81F8);
  MEMORY[0x28223BE20](v321, v52);
  v320 = &v273 - v53;
  v338 = sub_224DAC918();
  v330 = *(v338 - 8);
  v55 = MEMORY[0x28223BE20](v338, v54);
  v314 = &v273 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v334 = &v273 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v304 = &v273 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v333 = &v273 - v65;
  MEMORY[0x28223BE20](v64, v66);
  v327 = &v273 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4880, &unk_224DB81D8);
  v70 = MEMORY[0x28223BE20](v68 - 8, v69);
  v313 = &v273 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v70, v72);
  v315 = &v273 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v324 = &v273 - v77;
  MEMORY[0x28223BE20](v76, v78);
  v319 = &v273 - v79;
  p_isa = sub_224DAB258();
  v81 = *(p_isa - 1);
  v83 = MEMORY[0x28223BE20](p_isa, v82);
  v282 = &v273 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v83, v85);
  v279 = &v273 - v87;
  MEMORY[0x28223BE20](v86, v88);
  v90 = &v273 - v89;
  v91 = swift_projectBox();
  v92 = sub_224DA149C(MEMORY[0x277D84F90]);
  v344 = v92;
  v93 = *(v81 + 16);
  v323 = a3;
  v290 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v292 = v81 + 16;
  v291 = v93;
  v93(v90, a3 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, p_isa);
  v94 = v337;

  v95 = a1;
  v96 = sub_224DAB228();
  v97 = sub_224DAF278();

  LODWORD(v336) = v97;
  v98 = os_log_type_enabled(v96, v97);
  v283 = v91;
  v294 = a5;
  v297 = p_isa;
  v296 = v81;
  v322 = a1;
  if (v98)
  {
    v329 = v96;
    *&v335 = v90;
    v99 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    v343[0] = p_isa;
    *v99 = 134349314;
    *(v99 + 4) = v94[2];

    *(v99 + 12) = 2082;
    if (a1)
    {
      swift_getErrorValue();
      v100 = sub_224D1680C(v339, v340);
      v102 = v101;
    }

    else
    {
      v102 = 0xE500000000000000;
      v100 = 0x3E6C696E3CLL;
    }

    v104 = v296;
    v103 = v319;
    v105 = v335;
    v106 = v329;
    v107 = sub_224A33F74(v100, v102, v343);

    *(v99 + 14) = v107;
    _os_log_impl(&dword_224A2F000, v106, v336, "Processing variant results. (count: %{public}ld, error: %{public}s", v99, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(p_isa);
    MEMORY[0x22AA5EED0](p_isa, -1, -1);
    MEMORY[0x22AA5EED0](v99, -1, -1);

    v293 = *(v104 + 8);
    v293(v105, v297);
    a5 = v294;
  }

  else
  {

    v293 = *(v81 + 8);
    v293(v90, p_isa);
    v103 = v319;
  }

  v275 = a9;
  swift_beginAccess();
  v108 = *(a5 + 16);
  v109 = *(v108 + 64);
  v309 = v108 + 64;
  v110 = 1 << *(v108 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v109;
  v308 = (v110 + 63) >> 6;
  v336 = (v330 + 16);
  v337 = (v330 + 32);
  v295 = (v303 + 32);
  v289 = (v303 + 16);
  v328 = (v330 + 8);
  v288 = v303 + 8;
  v278 = v303 + 40;
  v318 = v108;

  v114 = 0;
  v305 = MEMORY[0x277D84F98];
  v115 = v338;
  while (1)
  {
    v329 = v92;
    if (!v112)
    {
      if (v308 <= v114 + 1)
      {
        v118 = v114 + 1;
      }

      else
      {
        v118 = v308;
      }

      v119 = v118 - 1;
      while (1)
      {
        v117 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          break;
        }

        if (v117 >= v308)
        {
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
          v129 = v324;
          (*(*(v156 - 8) + 56))(v324, 1, 1, v156);
          v112 = 0;
          goto LABEL_21;
        }

        v112 = *(v309 + 8 * v117);
        ++v114;
        if (v112)
        {
          goto LABEL_20;
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
      v271 = v113;
      swift_once();
      v113 = v271;
      v260 = v274;
      goto LABEL_85;
    }

    v117 = v114;
LABEL_20:
    v120 = __clz(__rbit64(v112));
    v112 &= v112 - 1;
    v121 = v120 | (v117 << 6);
    v122 = v318;
    v123 = v330;
    v124 = v327;
    (*(v330 + 16))(v327, *(v318 + 48) + *(v330 + 72) * v121, v115);
    v125 = *(v122 + 56) + 24 * v121;
    v126 = *v125;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
    v128 = v115;
    v129 = v324;
    v130 = &v324[*(v127 + 48)];
    v131 = *(v123 + 32);
    v335 = *(v125 + 8);
    v131(v324, v124, v128);
    *v130 = v126;
    *(v130 + 8) = v335;
    (*(*(v127 - 8) + 56))(v129, 0, 1, v127);
    v132 = v126;
    swift_unknownObjectRetain();
    v119 = v117;
    v103 = v319;
LABEL_21:
    sub_224A44E4C(v129, v103, &qword_27D6F4880, &unk_224DB81D8);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
    v133 = *(v117 - 8);
    v115 = v133 + 48;
    v134 = *(v133 + 48);
    if ((v134)(v103, 1, v117) == 1)
    {
      break;
    }

    v114 = v119;
    v135 = v103 + *(v117 + 48);
    v136 = *v135;
    v117 = *(v135 + 8);
    v137 = *(v135 + 16);
    v115 = v338;
    v138 = v333;
    (*v337)(v333, v103, v338);

    v139 = v320;
    sub_224B8A864(v138, v117, v137, v322, v325, v323, v320);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v140 = v139;
      v141 = v331;
      sub_224B8FDD8(v140, v331, type metadata accessor for PlatterContentError);
      p_isa = *v336;
      v119 = v334;
      (*v336)(v334, v138, v115);
      sub_224B8FC30(v141, v332, type metadata accessor for PlatterContentError);
      v142 = v344;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v343[0] = v142;
      v113 = sub_224B0B8A4(v119);
      v145 = *(v142 + 16);
      v146 = (v144 & 1) == 0;
      v147 = __OFADD__(v145, v146);
      v148 = v145 + v146;
      if (v147)
      {
        goto LABEL_96;
      }

      v149 = v144;
      if (*(v142 + 24) >= v148)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }

        v178 = v113;
        sub_224B271CC();
        v113 = v178;
        v92 = v343[0];
        if (v149)
        {
          goto LABEL_10;
        }

LABEL_29:
        v92[(v113 >> 6) + 8].isa = (v92[(v113 >> 6) + 8].isa | (1 << v113));
        v151 = v330;
        v152 = v113;
        v119 = v334;
        v115 = v338;
        (p_isa)(v92[6].isa + *(v330 + 72) * v113, v334, v338);
        sub_224B8FDD8(v332, v92[7].isa + *(v326 + 72) * v152, type metadata accessor for PlatterContentError);
        swift_unknownObjectRelease();
        v153 = *(v151 + 8);
        v153(v119, v115);
        sub_224B8FBD0(v331, type metadata accessor for PlatterContentError);
        v113 = (v153)(v333, v115);
        isa = v92[2].isa;
        v147 = __OFADD__(isa, 1);
        v155 = (isa + 1);
        if (v147)
        {
          goto LABEL_97;
        }

        v92[2].isa = v155;
        v344 = v92;
      }

      else
      {
        sub_224B11EAC(v148, isUniquelyReferenced_nonNull_native);
        v113 = sub_224B0B8A4(v334);
        if ((v149 & 1) != (v150 & 1))
        {
          goto LABEL_102;
        }

LABEL_28:
        v92 = v343[0];
        if ((v149 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_10:
        sub_224B8FD74(v332, v92[7].isa + *(v326 + 72) * v113);
        swift_unknownObjectRelease();
        v116 = *v328;
        v115 = v338;
        (*v328)(v334, v338);
        sub_224B8FBD0(v331, type metadata accessor for PlatterContentError);
        v113 = (v116)(v333, v115);
        v344 = v92;
      }
    }

    else
    {
      p_isa = *v295;
      v157 = v300;
      v158 = v139;
      v159 = v302;
      (*v295)(v300, v158, v302);
      v160 = v138;
      v161 = *v336;
      v119 = v304;
      (*v336)(v304, v160, v115);
      (*v289)(v301, v157, v159);
      v162 = v305;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v343[0] = v162;
      v113 = sub_224B0B8A4(v119);
      v164 = *(v162 + 16);
      v165 = (v163 & 1) == 0;
      v147 = __OFADD__(v164, v165);
      v166 = v164 + v165;
      if (v147)
      {
        goto LABEL_98;
      }

      v167 = v163;
      if (*(v162 + 24) >= v166)
      {
        if ((v115 & 1) == 0)
        {
          v179 = v113;
          sub_224B27790();
          v113 = v179;
        }
      }

      else
      {
        sub_224B12764(v166, v115);
        v113 = sub_224B0B8A4(v304);
        if ((v167 & 1) != (v168 & 1))
        {
LABEL_102:
          sub_224DAFDD8();
          __break(1u);
          return;
        }
      }

      v115 = v338;
      v305 = v343[0];
      if (v167)
      {
        v169 = v303;
        p_isa = v302;
        (*(v303 + 40))(*(v343[0] + 56) + *(v303 + 72) * v113, v301, v302);
        swift_unknownObjectRelease();
        v170 = *v328;
        (*v328)(v304, v115);
        (*(v169 + 8))(v300, p_isa);
        v113 = (v170)(v333, v115);
      }

      else
      {
        *(v343[0] + 8 * (v113 >> 6) + 64) |= 1 << v113;
        v171 = v330;
        v119 = v113;
        v172 = v304;
        v161(v305[6] + *(v330 + 72) * v113, v304, v115);
        v173 = p_isa;
        p_isa = v303;
        v174 = v302;
        v173(v305[7] + *(v303 + 72) * v119, v301, v302);
        swift_unknownObjectRelease();
        v175 = *(v171 + 8);
        v175(v172, v115);
        (p_isa[1])(v300, v174);
        v113 = (v175)(v333, v115);
        v176 = v305[2];
        v147 = __OFADD__(v176, 1);
        v177 = v176 + 1;
        if (v147)
        {
          goto LABEL_100;
        }

        v305[2] = v177;
      }

      v92 = v329;
    }
  }

  p_isa = &v329->isa;
  v119 = v329[2].isa;
  if (!v119)
  {
    v198 = v279;
    v199 = v297;
    v291(v279, v323 + v290, v297);
    v200 = v299;
    v201 = v276;
    v202 = v298;
    (*(v299 + 16))(v276, v325, v298);
    v203 = sub_224DAB228();
    v204 = sub_224DAF2A8();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v343[0] = v206;
      *v205 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v207 = sub_224DAFD28();
      v209 = v208;
      (*(v200 + 8))(v201, v202);
      v210 = sub_224A33F74(v207, v209, v343);

      *(v205 + 4) = v210;
      _os_log_impl(&dword_224A2F000, v203, v204, "%{public}s reload: succeeded", v205, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v206);
      MEMORY[0x22AA5EED0](v206, -1, -1);
      MEMORY[0x22AA5EED0](v205, -1, -1);

      v211 = v279;
    }

    else
    {

      (*(v200 + 8))(v201, v202);
      v211 = v198;
    }

    v293(v211, v199);
    v263 = v287;
    v264 = v285;
    v265 = v284;
    v266 = v283;
    swift_beginAccess();
    v267 = v277;
    sub_224A3796C(v266, v277, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v265 + 48))(v267, 1, v264) == 1)
    {
      sub_224A3311C(v267, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v268 = v273;
      (*(v265 + 32))(v273, v267, v264);
      v269 = sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        v272 = v269;
        swift_once();
        v269 = v272;
        v268 = v273;
      }

      sub_224DAB1D8(v269, &dword_224A2F000, qword_281364CC0, "ActivityReloadStrategy", 22, 2, v268, "Reload succeeded.", 17, 2, MEMORY[0x277D84F90]);
      (*(v265 + 8))(v268, v264);
    }

    v263(v305, 0);

    v270 = v275;
    swift_beginAccess();
    *(v270 + 16) = 0;

    return;
  }

  v332 = v134;
  v331 = *(v299 + 16);
  (v331)(v311, v325, v298);
  v180 = sub_224B0CCD0(v119, 0);
  *&v335 = sub_224B2F6F8(v343, v180 + ((*(v326 + 80) + 32) & ~*(v326 + 80)), v119, p_isa);
  v181 = v343[0];
  v334 = v343[3];
  v333 = v343[4];

  v113 = sub_224A3B7E4(v181);
  if (v335 != v119)
  {
    goto LABEL_99;
  }

  v182 = sub_224B42310(v180);

  *(v311 + *(v310 + 20)) = v182;
  v183 = v282;
  v184 = v297;
  v291(v282, v323 + v290, v297);
  v185 = v281;
  v119 = v298;
  (v331)(v281, v325, v298);
  v186 = sub_224DAB228();
  v187 = sub_224DAF288();
  v188 = v119;
  if (os_log_type_enabled(v186, v187))
  {
    v119 = swift_slowAlloc();
    *&v335 = swift_slowAlloc();
    v343[0] = v335;
    *v119 = 136446466;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v189 = sub_224DAFD28();
    v190 = v185;
    v192 = v191;
    (*(v299 + 8))(v190, v188);
    v193 = sub_224A33F74(v189, v192, v343);

    *(v119 + 4) = v193;
    *(v119 + 12) = 2082;
    v194 = sub_224B8BE90(&v344);
    v196 = sub_224A33F74(v194, v195, v343);

    *(v119 + 14) = v196;

    _os_log_impl(&dword_224A2F000, v186, v187, "%{public}s reload: failed during processing.\n %{public}s", v119, 0x16u);
    v197 = v335;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v197, -1, -1);
    MEMORY[0x22AA5EED0](v119, -1, -1);

    v293(v282, v184);
  }

  else
  {

    (*(v299 + 8))(v185, v119);
    v293(v183, v184);
  }

  v212 = v317;
  v213 = v314;
  p_isa = v313;
  v214 = v294;
  swift_beginAccess();
  v215 = *(v214 + 16);
  v216 = *(v215 + 64);
  v333 = (v215 + 64);
  v217 = 1 << *(v215 + 32);
  v218 = -1;
  if (v217 < 64)
  {
    v218 = ~(-1 << v217);
  }

  v219 = v218 & v216;
  v320 = ((v217 + 63) >> 6);
  v331 = (v133 + 56);
  v325 = (v326 + 56);
  v324 = (v326 + 48);
  v321 = 0x8000000224DC8220;
  v323 = v215;

  v220 = 0;
  v221 = v316;
  v322 = v117;
  while (1)
  {
    if (!v219)
    {
      if (v320 <= v220 + 1)
      {
        v230 = (v220 + 1);
      }

      else
      {
        v230 = v320;
      }

      v231 = v230 - 1;
      while (1)
      {
        v229 = v220 + 1;
        if (__OFADD__(v220, 1))
        {
          goto LABEL_95;
        }

        if (v229 >= v320)
        {
          (*v331)(p_isa, 1, 1, v117);
          v219 = 0;
          v220 = v231;
          goto LABEL_69;
        }

        v219 = *&v333[8 * v229];
        ++v220;
        if (v219)
        {
          v220 = v229;
          goto LABEL_68;
        }
      }
    }

    v229 = v220;
LABEL_68:
    v232 = __clz(__rbit64(v219));
    v219 &= v219 - 1;
    v233 = v232 | (v229 << 6);
    v234 = v323;
    v235 = v330;
    (*(v330 + 16))(v327, *(v323 + 48) + *(v330 + 72) * v233, v338);
    v236 = *(v234 + 56) + 24 * v233;
    v237 = *v236;
    v117 = v322;
    v238 = &v313[*(v322 + 12)];
    v239 = *(v235 + 32);
    v335 = *(v236 + 8);
    p_isa = v313;
    v239();
    *v238 = v237;
    *(v238 + 8) = v335;
    (*v331)(p_isa, 0, 1, v117);
    v240 = v237;
    swift_unknownObjectRetain();
    v213 = v314;
    v212 = v317;
LABEL_69:
    v241 = v315;
    sub_224A44E4C(p_isa, v315, &qword_27D6F4880, &unk_224DB81D8);
    if ((v332)(v241, 1, v117) == 1)
    {
      break;
    }

    v242 = v241 + *(v117 + 48);
    v243 = *v242;
    *&v335 = *(v242 + 8);
    v334 = *(v242 + 16);

    (*v337)(v213, v241, v338);
    v244 = v329;
    if (v329[2].isa && (v245 = sub_224B0B8A4(v213), (v246 & 1) != 0))
    {
      sub_224B8FC30(v244[7].isa + *(v326 + 72) * v245, v221, type metadata accessor for PlatterContentError);
      v247 = 0;
    }

    else
    {
      v247 = 1;
    }

    (*v325)(v221, v247, 1, v212);
    if ((*v324)(v221, 1, v212))
    {
      sub_224A3311C(v221, &qword_27D6F4878, &qword_224DB81D0);
      (*v328)(v213, v338);
      v341 = 0;
      v342 = 0xE000000000000000;
      sub_224DAF938();

      v341 = 0xD000000000000018;
      v342 = v321;
      v248 = v307;
      sub_224B8FC30(v311, v307, type metadata accessor for PlatterFetchingError);
      sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError, &unk_224DB84AC);
      v249 = sub_224DAFD38();
      if (v249)
      {
        v222 = v249;
        sub_224B8FBD0(v248, type metadata accessor for PlatterFetchingError);
      }

      else
      {
        v222 = swift_allocError();
        sub_224B8FDD8(v248, v223, type metadata accessor for PlatterFetchingError);
      }

      v224 = sub_224DA9518();

      v225 = [v224 debugDescription];
      v226 = sub_224DAEE18();
      v228 = v227;

      MEMORY[0x22AA5D210](v226, v228);

      v212 = v317;
    }

    else
    {
      v250 = v312;
      sub_224B8FC30(v221, v312, type metadata accessor for PlatterContentError);
      sub_224A3311C(v221, &qword_27D6F4878, &qword_224DB81D0);
      (*v328)(v213, v338);
      v251 = v250;
      v252 = v306;
      sub_224B8FC30(v251, v306, type metadata accessor for PlatterContentError);
      sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError, &unk_224DB846C);
      v253 = sub_224DAFD38();
      if (v253)
      {
        v254 = v253;
        sub_224B8FBD0(v252, type metadata accessor for PlatterContentError);
      }

      else
      {
        v254 = swift_allocError();
        sub_224B8FDD8(v252, v255, type metadata accessor for PlatterContentError);
      }

      v256 = sub_224DA9518();

      v257 = [v256 debugDescription];
      sub_224DAEE18();

      sub_224B8FBD0(v312, type metadata accessor for PlatterContentError);
    }

    v119 = v335;
    swift_getObjectType();
    sub_224DABD08();
    swift_unknownObjectRelease();

    v221 = v316;
  }

  v258 = v283;
  swift_beginAccess();
  v259 = v280;
  sub_224A3796C(v258, v280, &qword_27D6F4270, &qword_224DB6580);
  p_isa = v284;
  v119 = v285;
  if ((*(v284 + 48))(v259, 1, v285) == 1)
  {
    sub_224A3311C(v259, &qword_27D6F4270, &qword_224DB6580);
    v117 = v287;
    v115 = v311;
    goto LABEL_86;
  }

  v260 = v274;
  (p_isa[4])(v274, v259, v119);
  v113 = sub_224DAF4A8();
  v117 = v287;
  v115 = v311;
  if (qword_2813507E8 != -1)
  {
    goto LABEL_101;
  }

LABEL_85:
  sub_224DAB1D8(v113, &dword_224A2F000, qword_281364CC0, "ActivityReloadStrategy", 22, 2, v260, "Reload failed.", 14, 2, MEMORY[0x277D84F90]);
  (p_isa[1])(v260, v119);
LABEL_86:
  sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError, &unk_224DB84AC);
  v261 = swift_allocError();
  sub_224B8FC30(v115, v262, type metadata accessor for PlatterFetchingError);
  (v117)(v261, 1);

  sub_224B8FBD0(v115, type metadata accessor for PlatterFetchingError);
}

uint64_t sub_224B8A864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v58 = a6;
  v59 = a3;
  v62 = a1;
  v63 = a5;
  v57 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4898, &qword_224DB8200);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v55[7] = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v13 = *(v12 - 8);
  v55[5] = v12;
  v55[6] = v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v55 - v19;
  v21 = type metadata accessor for RequestCompletionOperation.Error(0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = v55 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v56 = sub_224DAB258();
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v31);
  v33 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = v55 - v36;
  v60 = a4;
  if (a4)
  {
    v38 = type metadata accessor for PlatterContentError(0);
    v39 = v38[5];
    v40 = sub_224DABCC8();
    (*(*(v40 - 8) + 16))(&a7[v39], v63, v40);
    v41 = v38[6];
    v42 = sub_224DAC918();
    (*(*(v42 - 8) + 16))(&a7[v41], v62, v42);
    v43 = sub_224DA9688();
    v44 = *(*(v43 - 8) + 56);
    v44(v37, 1, 1, v43);
    v45 = v37;
    v46 = v38[7];
    v44(&a7[v46], 1, 1, v43);
    v47 = v38[8];
    *a7 = 4;
    v48 = v60;
    v49 = v60;
    sub_224A838C0(v45, &a7[v46], &unk_27D6F4680, &unk_224DB4610);
    *&a7[v47] = v48;
  }

  else
  {
    v55[2] = v25;
    v55[0] = v17;
    v55[1] = v20;
    v55[3] = v29;
    v60 = v55 - v36;
    v51 = v56;
    (*(v61 + 16))(v33, v58 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v56);
    v52 = sub_224DABCC8();
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v55[4] = v52;
    v53 = sub_224DAFD28();
    sub_224B8B8E8(v33, v53, v54, a7);
    (*(v61 + 8))(v33, v51);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4890, &qword_224DB81F8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_224B8B8E8@<X0>(char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v61 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v51 - v12;
  v14 = sub_224DA9688();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v51 - v21;
  swift_getObjectType();
  v23 = v62;
  result = sub_224DABCF8();
  if (!v23)
  {
    v25 = v59;
    v54 = v19;
    v55 = v14;
    v26 = v61;
    sub_224B8D178();
    v62 = 0;
    sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
    if ((sub_224DA9338() & 1) == 0)
    {
      type metadata accessor for RequestCompletionOperation.Error(0);
      sub_224B8C88C(&qword_27D6F48A8, type metadata accessor for RequestCompletionOperation.Error, &unk_224DB842C);
      v43 = swift_allocError();
      v45 = v44;
      (*(v26 + 16))(v44, v13, v6);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      v62 = v43;
      swift_willThrow();
      (*(v26 + 8))(v13, v6);
      v47 = v55;
      return (*(v15 + 8))(v22, v47);
    }

    v27 = v26;
    v28 = *(v26 + 16);
    v29 = v10;
    v60 = v6;
    v28(v10, v13, v6);

    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = v22;
      v53 = v13;
      v33 = v32;
      v52 = swift_slowAlloc();
      v63 = v52;
      *v33 = 136315394;
      *(v33 + 4) = sub_224A33F74(v56, v25, &v63);
      *(v33 + 12) = 2080;
      sub_224A33088(&qword_281351A90, &qword_27D6F4858, &unk_224DB8140, MEMORY[0x277CC8800]);
      v34 = v31;
      v35 = sub_224DAFD28();
      v37 = v36;
      v38 = *(v27 + 8);
      v38(v29, v6);
      v39 = sub_224A33F74(v35, v37, &v63);

      *(v33 + 14) = v39;
      v40 = v6;
      _os_log_impl(&dword_224A2F000, v30, v34, "%s Consuming activity archive size %s", v33, 0x16u);
      v41 = v52;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v41, -1, -1);
      v42 = v33;
      v13 = v53;
      v22 = v57;
      MEMORY[0x22AA5EED0](v42, -1, -1);
    }

    else
    {

      v38 = *(v27 + 8);
      v40 = v60;
      v38(v29, v60);
    }

    sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
    v48 = v54;
    v49 = v55;
    (*(v15 + 16))(v54, v22);
    v50 = v62;
    sub_224B83FBC(v48);
    if (v50)
    {
      v62 = v50;
      v38(v13, v40);
      v47 = v49;
      return (*(v15 + 8))(v22, v47);
    }

    sub_224DAEC18();
    v62 = 0;
    v38(v13, v40);
    return (*(v15 + 8))(v22, v49);
  }

  return result;
}

uint64_t sub_224B8BE90(uint64_t *a1)
{
  v2 = type metadata accessor for PlatterContentError(0);
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B8, &qword_224DB8218);
  v7 = MEMORY[0x28223BE20](v47, v6);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v46 = &v42 - v10;
  swift_beginAccess();
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v56 = MEMORY[0x277D84F90];

    sub_224A3DFD8(0, v12, 0);
    v13 = v56;
    v14 = v11 + 64;
    result = sub_224DAF798();
    v16 = result;
    v42 = v2;
    v43 = v11 + 64;
    v44 = v11;
    v45 = v5;
    v17 = v46;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_18;
      }

      v51 = v16 >> 6;
      v52 = v13;
      v49 = v12;
      v50 = *(v11 + 36);
      v18 = v47;
      v19 = *(v47 + 48);
      v20 = *(v11 + 48);
      v21 = sub_224DAC918();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v17, v20 + *(v22 + 72) * v16, v21);
      sub_224B8FC30(*(v11 + 56) + *(v48 + 72) * v16, &v17[v19], type metadata accessor for PlatterContentError);
      v23 = v53;
      (*(v22 + 32))(v53, v17, v21);
      v24 = *(v18 + 48);
      sub_224B8FDD8(&v17[v19], v23 + v24, type metadata accessor for PlatterContentError);
      v54 = 539828256;
      v55 = 0xE400000000000000;
      sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
      v25 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v25);

      MEMORY[0x22AA5D210](8250, 0xE200000000000000);
      v26 = v23 + v24;
      v27 = v45;
      sub_224B8FC30(v26, v45, type metadata accessor for PlatterContentError);
      sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError, &unk_224DB846C);
      v28 = sub_224DAFD38();
      if (v28)
      {
        v29 = v28;
        sub_224B8FBD0(v27, type metadata accessor for PlatterContentError);
      }

      else
      {
        v29 = swift_allocError();
        sub_224B8FDD8(v27, v30, type metadata accessor for PlatterContentError);
      }

      v31 = sub_224DA9518();

      v32 = [v31 debugDescription];
      v33 = sub_224DAEE18();
      v35 = v34;

      MEMORY[0x22AA5D210](v33, v35);

      v36 = v54;
      v37 = v55;
      result = sub_224A3311C(v53, &qword_27D6F48B8, &qword_224DB8218);
      v13 = v52;
      v56 = v52;
      v39 = *(v52 + 16);
      v38 = *(v52 + 24);
      v11 = v44;
      if (v39 >= v38 >> 1)
      {
        result = sub_224A3DFD8((v38 > 1), v39 + 1, 1);
        v13 = v56;
      }

      *(v13 + 16) = v39 + 1;
      v40 = v13 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      if (v16 >= -(-1 << *(v11 + 32)))
      {
        goto LABEL_19;
      }

      v14 = v43;
      if ((*(v43 + 8 * v51) & (1 << v16)) == 0)
      {
        goto LABEL_20;
      }

      if (v50 != *(v11 + 36))
      {
        goto LABEL_21;
      }

      result = sub_224DAF7B8();
      v16 = result;
      v12 = v49 - 1;
      if (v49 == 1)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_16:
    v54 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v41 = sub_224DAEDA8();

    return v41;
  }

  return result;
}

uint64_t sub_224B8C4C0()
{
  sub_224A3D418(v0[2], v0[3]);
  sub_224A3D418(v0[4], v0[5]);
  sub_224A3311C((v0 + 6), &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224B8FBD0(v0 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_requestCompletor, type metadata accessor for RequestCompletionOperation);

  return swift_deallocClassInstance();
}

void sub_224B8C5E8(uint64_t a1)
{
  sub_224DAB258();
  if (v1 <= 0x3F)
  {
    sub_224B8C6E0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_224B8C6E0(uint64_t a1)
{
  if (!qword_281351A88)
  {
    sub_224A3B79C(255, &qword_281350918, 0x277CCAE18);
    v1 = sub_224DA9378();
    if (!v2)
    {
      atomic_store(v1, &qword_281351A88);
    }
  }
}

void sub_224B8C790(uint64_t a1)
{
  sub_224B8C6E0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224B8C88C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224B8C940@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224B903E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_224B8C978()
{
  v1 = 0xD00000000000001BLL;
  v2 = *v0;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000027;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_224B8CA08()
{
  v1 = v0;
  v2 = 0xD00000000000001BLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v42 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v12;
  v13 = *v0;
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v13 <= 1)
  {
    if (v13)
    {
      v15 = 0xD000000000000039;
      v2 = 0xD000000000000028;
      v16 = "on the reload service.";
      v17 = "Activity was started but had no payload.";
    }

    else
    {
      v15 = 0xD00000000000001FLL;
      v16 = "fore showing any content.";
      v17 = "Activity had no descriptor.";
    }
  }

  else if (v13 == 2)
  {
    v15 = 0xD000000000000036;
    v2 = 0xD000000000000021;
    v16 = "ble verification issues.";
    v17 = "No environment found for variant.";
  }

  else if (v13 == 3)
  {
    v15 = 0xD000000000000038;
    v2 = 0xD000000000000027;
    v16 = "ilures or crash causes.";
    v17 = "Returned timeline could not be accepted";
  }

  else
  {
    v15 = 0xD000000000000047;
    v2 = 0xD000000000000037;
    v16 = "cting to the extension.";
    v17 = "Something went wrong while connecting to the extension.";
  }

  *(inited + 48) = v2;
  *(inited + 56) = (v17 - 32) | 0x8000000000000000;
  *(inited + 80) = sub_224DAEE18();
  *(inited + 88) = v18;
  *(inited + 120) = v14;
  *(inited + 96) = v15;
  *(inited + 104) = v16 | 0x8000000000000000;
  v19 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v20 = type metadata accessor for PlatterContentError(0);
  v21 = *&v0[*(v20 + 32)];
  if (v21)
  {
    v22 = v0;
    v23 = sub_224DAEE18();
    v42 = v6;
    v24 = v8;
    v25 = v7;
    v27 = v26;
    swift_getErrorValue();
    v28 = v44;
    v29 = v45;
    v49 = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v28, v29);
    sub_224A739A4(&v48, v47);
    v31 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v19;
    v33 = v23;
    v1 = v22;
    sub_224B20218(v47, v33, v27, isUniquelyReferenced_nonNull_native);

    v7 = v25;
    v8 = v24;
    v6 = v42;

    v19 = v46;
  }

  sub_224A3796C(&v1[*(v20 + 28)], v6, &unk_27D6F4680, &unk_224DB4610);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224A3311C(v6, &unk_27D6F4680, &unk_224DB4610);
  }

  else
  {
    v34 = v43;
    (*(v8 + 32))(v43, v6, v7);
    v35 = sub_224DAEE18();
    v37 = v36;
    v38 = sub_224DA9658();
    v49 = MEMORY[0x277D837D0];
    *&v48 = v38;
    *(&v48 + 1) = v39;
    sub_224A739A4(&v48, v47);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v19;
    sub_224B20218(v47, v35, v37, v40);

    (*(v8 + 8))(v34, v7);
    return v46;
  }

  return v19;
}

uint64_t sub_224B8CED8(uint64_t a1)
{
  v2 = sub_224B8C88C(&qword_281359050, type metadata accessor for PlatterContentError, &unk_224DB8364);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B8CF44(uint64_t a1)
{
  v2 = sub_224B8C88C(&qword_281359050, type metadata accessor for PlatterContentError, &unk_224DB8364);

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_224B8CFCC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v4;
  v5 = *(v1 + *(a1 + 20));
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48E8, &unk_224DB84F8);
  *(inited + 48) = v5;

  v6 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v6;
}

uint64_t sub_224B8D0A0(uint64_t a1)
{
  v2 = sub_224B8C88C(qword_281358B70, type metadata accessor for PlatterFetchingError, &unk_224DB83A4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B8D10C(uint64_t a1)
{
  v2 = sub_224B8C88C(qword_281358B70, type metadata accessor for PlatterFetchingError, &unk_224DB83A4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_224B8D178()
{
  v1 = sub_224DA9498();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v7 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v8 = v7;
  sub_224D5823C(inited);
  swift_setDeallocating();
  sub_224B8FBD0(inited + 32, type metadata accessor for URLResourceKey);
  sub_224DA95C8();

  if (!v0)
  {
    sub_224DA9488();
    if (v10)
    {
      type metadata accessor for RequestCompletionOperation.Error(0);
      sub_224B8C88C(&qword_27D6F48A8, type metadata accessor for RequestCompletionOperation.Error, &unk_224DB842C);
      swift_allocError();
      v12 = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      swift_willThrow();
    }

    else
    {
      v14 = [objc_opt_self() bytes];
      sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
      sub_224DA9348();
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

void sub_224B8D40C(void *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v334 = a4;
  v304 = a3;
  v315 = a2;
  v286 = a1;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
  MEMORY[0x28223BE20](v326, v8);
  v329 = (&v280 - v9);
  v321 = type metadata accessor for PlatterContentError(0);
  v319 = *(v321 - 8);
  v11 = MEMORY[0x28223BE20](v321, v10);
  v325 = &v280 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v324 = &v280 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v311 = &v280 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v316 = &v280 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4878, &qword_224DB81D0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v320 = &v280 - v23;
  v24 = sub_224DAC918();
  v318 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v333 = (&v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26, v28);
  *&v338 = &v280 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v312 = &v280 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v337 = &v280 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v317 = &v280 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4880, &unk_224DB81D8);
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v331 = &v280 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v322 = &v280 - v44;
  v313 = type metadata accessor for PlatterFetchingError(0);
  MEMORY[0x28223BE20](v313, v45);
  v314 = &v280 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_224DAB1F8();
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303, v47);
  v293 = &v280 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v50 = MEMORY[0x28223BE20](v327, v49);
  v292 = &v280 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v281 = &v280 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v280 = &v280 - v56;
  v288 = sub_224DAE6E8();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288, v57);
  v289 = &v280 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v295 = &v280 - v61;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v332 = *(v330 - 8);
  MEMORY[0x28223BE20](v330, v62);
  v323 = &v280 - v63;
  v64 = sub_224DABCC8();
  v65 = *(v64 - 8);
  v67 = MEMORY[0x28223BE20](v64, v66);
  v285 = &v280 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v67, v69);
  v291 = &v280 - v71;
  v284 = v72;
  MEMORY[0x28223BE20](v70, v73);
  v75 = &v280 - v74;
  v76 = sub_224DAB258();
  v77 = *(v76 - 8);
  v79 = MEMORY[0x28223BE20](v76, v78);
  v294 = &v280 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v79, v81);
  v283 = &v280 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v335 = &v280 - v86;
  MEMORY[0x28223BE20](v85, v87);
  v89 = &v280 - v88;
  v90 = swift_allocObject();
  *(v90 + 16) = a5;
  *(v90 + 24) = a6;
  v299 = v90;
  v336 = v77;
  v91 = *(v77 + 2);
  v305 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v307 = v77 + 16;
  v306 = v91;
  v91(v89, &v334[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger], v76);
  v309 = v65;
  v92 = *(v65 + 16);
  v301 = v65 + 16;
  v300 = v92;
  v92(v75, v315, v64);

  v93 = sub_224DAB228();
  v94 = sub_224DAF2A8();
  v95 = os_log_type_enabled(v93, v94);
  v339 = v24;
  v310 = v76;
  v297 = a6;
  v296 = a5;
  v298 = v64;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock = v97;
    *v96 = 136446210;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v98 = sub_224DAFD28();
    v100 = v99;
    v290 = *(v309 + 8);
    v290(v75, v64);
    v101 = sub_224A33F74(v98, v100, &aBlock);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_224A2F000, v93, v94, "%{public}s reload: begin", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x22AA5EED0](v97, -1, -1);
    MEMORY[0x22AA5EED0](v96, -1, -1);
  }

  else
  {

    v290 = *(v309 + 8);
    v290(v75, v64);
  }

  v308 = *(v336 + 1);
  v308(v89, v310);
  v102 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v341 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v341 = 0x8000000224DC7CA0;
  v103 = v315;
  v104 = sub_224DABCA8();
  v105 = [v104 description];
  v106 = sub_224DAEE18();
  v108 = v107;

  MEMORY[0x22AA5D210](v106, v108);

  *(v102 + 16) = sub_224DAD188();
  v328 = *(v334 + 4);
  if (!v328)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v287 + 104))(v289, *MEMORY[0x277CE3C38], v288);
    aBlock = 0;
    v341 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000051, 0x8000000224DC81C0);
    v123 = sub_224DABCA8();
    v124 = [v123 description];
    v125 = sub_224DAEE18();
    v127 = v126;

    MEMORY[0x22AA5D210](v125, v127);

    v128 = sub_224DAF638();
    v296(v128, 1);

    return;
  }

  v282 = v102;
  v109 = *(v334 + 5);
  v110 = swift_allocBox();
  v111 = *(v302 + 56);
  v288 = v112;
  v111(v112, 1, 1, v303);
  v327 = v109;

  v113 = sub_224DABCA8();
  v114 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v115 = v295;
  sub_224A3796C(v113 + v114, v295, &unk_27D6F5060, &qword_224DB5620);

  v116 = v332;
  v117 = v330;
  i = v103;
  if ((*(v332 + 48))(v115, 1, v330) == 1)
  {
    sub_224A3311C(v115, &unk_27D6F5060, &qword_224DB5620);
    v287 = 0;
    v119 = v339;
    v120 = v304;
  }

  else
  {
    (*(v116 + 32))(v323, v115, v117);
    v129 = sub_224DA9FE8();
    v131 = v130;
    v132 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v133 = sub_224A921B4(v129, v131, 0);
    v119 = v339;
    v120 = v304;
    v121 = v329;
    v287 = 0;
    if (!v133)
    {
      v122 = v335;
      (*(v332 + 8))(v323, v117);
      goto LABEL_12;
    }

    v295 = v133;
    if ([v133 developerType] != 1)
    {
      (*(v332 + 8))(v323, v117);

      goto LABEL_8;
    }

    if (qword_2813507E8 != -1)
    {
      swift_once();
    }

    v250 = qword_281364CC0;
    v251 = v280;
    sub_224DAB1E8();
    v252 = v303;
    v111(v251, 0, 1, v303);
    v253 = v288;
    sub_224A838C0(v251, v288, &qword_27D6F4270, &qword_224DB6580);
    LODWORD(v289) = sub_224DAF4B8();
    v254 = v281;
    sub_224A3796C(v253, v281, &qword_27D6F4270, &qword_224DB6580);
    v255 = v302;
    if ((*(v302 + 48))(v254, 1, v252) == 1)
    {

      __break(1u);
LABEL_100:

      sub_224DAFDD8();
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_224DB3100;
    v257 = sub_224DABCA8();
    v258 = [v257 description];

    v259 = sub_224DAEE18();
    v261 = v260;

    *(v256 + 56) = MEMORY[0x277D837D0];
    *(v256 + 64) = sub_224A92300();
    *(v256 + 32) = v259;
    *(v256 + 40) = v261;
    i = v315;
    sub_224DAB1D8(v289, &dword_224A2F000, v250, "ActivityReloadStrategy", 22, 2, v254, "enableTelemetry=YES Performing reload task. BundleIdOverride=%{public, signpost.description:attribute}@", 103, 2, v256);

    (*(v332 + 8))(v323, v330);
    (*(v255 + 8))(v254, v252);
    v119 = v339;
  }

  v121 = v329;
LABEL_8:
  v122 = v335;
LABEL_12:
  v134 = swift_allocObject();
  v135 = MEMORY[0x277D84F90];
  v136 = sub_224DA12A0(MEMORY[0x277D84F90]);
  v330 = v134;
  *(v134 + 16) = v136;
  isUniquelyReferenced_nonNull_native = sub_224DA149C(v135);
  v346 = isUniquelyReferenced_nonNull_native;
  v138 = v310;
  v306(v122, &v334[v305], v310);

  v139 = sub_224DAB228();
  v140 = sub_224DAF278();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 134349056;
    *(v141 + 4) = *(v120 + 16);

    _os_log_impl(&dword_224A2F000, v139, v140, "Preparing variants. (count: %{public}ld)", v141, 0xCu);
    v142 = v141;
    v122 = v335;
    MEMORY[0x22AA5EED0](v142, -1, -1);
  }

  else
  {
  }

  v289 = v110;
  v295 = v336 + 8;
  v308(v122, v138);
  v143 = *(v120 + 16);
  v281 = v143;
  if (v143)
  {
    v144 = *(v318 + 16);
    v145 = v120 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
    v323 = (v318 + 8);
    v335 = *(v318 + 72);
    v146 = v312;
    v332 = v318 + 16;
    v336 = v144;
    v147 = v121;
    (v144)(v312, v145, v119);
    while (1)
    {
      sub_224B8643C(v146, v328, i, v334, v147);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v149 = i;
      v150 = v147;
      v151 = v324;
      sub_224B8FDD8(v150, v324, type metadata accessor for PlatterContentError);
      i = v333;
      (v144)(v333, v146, v119);
      sub_224B8FC30(v151, v325, type metadata accessor for PlatterContentError);
      v152 = v346;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v152;
      v153 = sub_224B0B8A4(i);
      v155 = *(v152 + 16);
      v156 = (v154 & 1) == 0;
      v157 = __OFADD__(v155, v156);
      v158 = v155 + v156;
      if (v157)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v159 = v154;
      if (*(v152 + 24) >= v158)
      {
        i = v149;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v178 = v153;
          sub_224B271CC();
          v153 = v178;
        }
      }

      else
      {
        sub_224B11EAC(v158, isUniquelyReferenced_nonNull_native);
        v153 = sub_224B0B8A4(v333);
        if ((v159 & 1) != (v160 & 1))
        {
          goto LABEL_100;
        }

        i = v149;
      }

      v149 = v332;
      isUniquelyReferenced_nonNull_native = aBlock;
      if (v159)
      {
        sub_224B8FD74(v325, aBlock[7] + *(v319 + 72) * v153);
        v148 = *v323;
        v119 = v339;
        (*v323)(v333, v339);
        sub_224B8FBD0(v324, type metadata accessor for PlatterContentError);
        v148(v146, v119);
        v346 = isUniquelyReferenced_nonNull_native;
        v144 = v336;
        v147 = v329;
      }

      else
      {
        aBlock[(v153 >> 6) + 8] |= 1 << v153;
        v172 = v153;
        v173 = v333;
        v119 = v339;
        (v336)(*(isUniquelyReferenced_nonNull_native + 48) + v153 * v335, v333, v339);
        sub_224B8FDD8(v325, *(isUniquelyReferenced_nonNull_native + 56) + *(v319 + 72) * v172, type metadata accessor for PlatterContentError);
        v152 = *v323;
        (*v323)(v173, v119);
        sub_224B8FBD0(v324, type metadata accessor for PlatterContentError);
        v153 = (v152)(v146, v119);
        v174 = *(isUniquelyReferenced_nonNull_native + 16);
        v157 = __OFADD__(v174, 1);
        v175 = v174 + 1;
        if (v157)
        {
          goto LABEL_95;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v175;
        v346 = isUniquelyReferenced_nonNull_native;
        v144 = v336;
        v147 = v329;
        v119 = v339;
      }

LABEL_18:
      v145 += v335;
      if (!--v143)
      {
        goto LABEL_41;
      }

      (v144)(v146, v145, v119);
    }

    v161 = v147;
    v162 = isUniquelyReferenced_nonNull_native;
    v164 = *v147;
    v163 = *(v147 + 1);
    isUniquelyReferenced_nonNull_native = *(v161 + 2);
    v165 = v146;
    v146 = v338;
    (v144)(v338, v165, v119);
    v119 = v164;
    swift_unknownObjectRetain();
    i = v330;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *(i + 16);
    v152 = aBlock;
    *(i + 16) = 0x8000000000000000;
    v153 = sub_224B0B8A4(v146);
    v167 = *(v152 + 16);
    v168 = (v166 & 1) == 0;
    v157 = __OFADD__(v167, v168);
    v169 = v167 + v168;
    if (v157)
    {
      goto LABEL_94;
    }

    v170 = v166;
    if (*(v152 + 24) >= v169)
    {
      v146 = v312;
      if ((v149 & 1) == 0)
      {
        v179 = v153;
        sub_224B274F0();
        v153 = v179;
        v149 = v339;
        v152 = aBlock;
        if (v170)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_224B1234C(v169, v149);
      v153 = sub_224B0B8A4(v338);
      v146 = v312;
      if ((v170 & 1) != (v171 & 1))
      {
        goto LABEL_100;
      }
    }

    v149 = v339;
    v152 = aBlock;
    if (v170)
    {
LABEL_36:
      v176 = *(v152 + 56) + 24 * v153;
      v177 = *v176;
      *v176 = v119;
      *(v176 + 8) = v163;
      *(v176 + 16) = isUniquelyReferenced_nonNull_native;
      swift_unknownObjectRelease();

LABEL_40:
      v183 = *v323;
      (*v323)(v338, v149);
      *(v330 + 16) = v152;
      swift_unknownObjectRelease();

      v119 = v149;
      v183(v146, v149);
      i = v315;
      isUniquelyReferenced_nonNull_native = v162;
      v147 = v329;
      v144 = v336;
      goto LABEL_18;
    }

LABEL_38:
    *(v152 + 8 * (v153 >> 6) + 64) |= 1 << v153;
    i = v153;
    v153 = (v336)(*(v152 + 48) + v153 * v335, v338, v149);
    v180 = (*(v152 + 56) + 24 * i);
    *v180 = v119;
    v180[1] = v163;
    v180[2] = isUniquelyReferenced_nonNull_native;
    v181 = *(v152 + 16);
    v157 = __OFADD__(v181, 1);
    v182 = v181 + 1;
    if (v157)
    {
      goto LABEL_96;
    }

    *(v152 + 16) = v182;
    goto LABEL_40;
  }

LABEL_41:
  v184 = *(isUniquelyReferenced_nonNull_native + 16);
  v335 = isUniquelyReferenced_nonNull_native;
  if (v184)
  {
    v185 = v294;
    v186 = v310;
    v306(v294, &v334[v305], v310);
    v187 = v291;
    v149 = v298;
    v300(v291, i, v298);
    v188 = sub_224DAB228();
    v189 = sub_224DAF288();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = i;
      v191 = v187;
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      aBlock = v193;
      *v192 = 136446466;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v194 = sub_224DAFD28();
      v196 = v195;
      v197 = v191;
      i = v190;
      v290(v197, v149);
      v198 = sub_224A33F74(v194, v196, &aBlock);

      *(v192 + 4) = v198;
      *(v192 + 12) = 2082;
      v199 = sub_224B8BE90(&v346);
      v201 = sub_224A33F74(v199, v200, &aBlock);

      *(v192 + 14) = v201;
      v119 = v339;
      isUniquelyReferenced_nonNull_native = v335;
      _os_log_impl(&dword_224A2F000, v188, v189, "%{public}s reload: failed during preparation.\n %{public}s", v192, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v193, -1, -1);
      MEMORY[0x22AA5EED0](v192, -1, -1);

      v202 = v294;
    }

    else
    {

      v290(v187, v149);
      v202 = v185;
    }

    v308(v202, v186);
    v152 = v303;
    v145 = v302;
    v146 = v293;
    v209 = v292;
    sub_224A3796C(v288, v292, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v145 + 48))(v209, 1, v152) != 1)
    {
      (*(v145 + 32))(v146, v209, v152);
      v153 = sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_50;
    }

    sub_224A3311C(v209, &qword_27D6F4270, &qword_224DB6580);
    while (1)
    {
      v300(v314, i, v149);
      v152 = *(isUniquelyReferenced_nonNull_native + 16);
      if (!v152)
      {
        break;
      }

      v210 = sub_224B0CCD0(*(isUniquelyReferenced_nonNull_native + 16), 0);
      v145 = sub_224B2F6F8(&aBlock, v210 + ((*(v319 + 80) + 32) & ~*(v319 + 80)), v152, isUniquelyReferenced_nonNull_native);
      v146 = aBlock;
      v119 = v342;
      i = v343;
      v149 = v344;

      v153 = sub_224A3B7E4(v146);
      if (v145 == v152)
      {
        v119 = v339;
        goto LABEL_55;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      v278 = v153;
      swift_once();
      v153 = v278;
LABEL_50:
      LOBYTE(v279) = 2;
      sub_224DAB1D8(v153, &dword_224A2F000, qword_281364CC0, "ActivityReloadStrategy", 22, 2, v146, "Reload failed.", 14, v279, MEMORY[0x277D84F90]);
      (*(v145 + 8))(v146, v152);
    }

    v210 = MEMORY[0x277D84F90];
LABEL_55:
    v149 = v331;
    v211 = sub_224B42310(v210);

    *&v314[*(v313 + 20)] = v211;
    v212 = *(v330 + 16);
    v213 = *(v212 + 64);
    v334 = (v212 + 64);
    v214 = 1 << *(v212 + 32);
    v215 = -1;
    if (v214 < 64)
    {
      v215 = ~(-1 << v214);
    }

    v216 = v215 & v213;
    v323 = ((v214 + 63) >> 6);
    v325 = v318 + 16;
    v336 = (v318 + 32);
    v332 = v319 + 48;
    v333 = (v319 + 56);
    v329 = (v318 + 8);
    v324 = "l with extension ";
    v326 = v212;

    v145 = 0;
    for (i = &qword_27D6F4888; ; i = &qword_27D6F4888)
    {
      if (!v216)
      {
        if (v323 <= v145 + 1)
        {
          v218 = (v145 + 1);
        }

        else
        {
          v218 = v323;
        }

        v152 = (v218 - 1);
        while (1)
        {
          v217 = v145 + 1;
          if (__OFADD__(v145, 1))
          {
            break;
          }

          if (v217 >= v323)
          {
            v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
            (*(*(v243 - 8) + 56))(v149, 1, 1, v243);
            v216 = 0;
            v145 = v152;
            goto LABEL_71;
          }

          v216 = *&v334[8 * v217];
          ++v145;
          if (v216)
          {
            v145 = v217;
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_93;
      }

      v217 = v145;
LABEL_70:
      v219 = __clz(__rbit64(v216));
      v216 &= v216 - 1;
      v220 = v219 | (v217 << 6);
      v221 = v326;
      v222 = v318;
      (*(v318 + 16))(v317, *(v326 + 48) + *(v318 + 72) * v220, v119);
      v223 = *(v221 + 56) + 24 * v220;
      v224 = *v223;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
      v226 = &v331[*(v225 + 48)];
      v227 = *(v222 + 32);
      v338 = *(v223 + 8);
      v149 = v331;
      v227();
      *v226 = v224;
      *(v226 + 8) = v338;
      (*(*(v225 - 8) + 56))(v149, 0, 1, v225);
      v228 = v224;
      swift_unknownObjectRetain();
LABEL_71:
      isUniquelyReferenced_nonNull_native = v322;
      sub_224A44E4C(v149, v322, &qword_27D6F4880, &unk_224DB81D8);
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
      if ((*(*(v229 - 8) + 48))(isUniquelyReferenced_nonNull_native, 1, v229) == 1)
      {
        break;
      }

      v230 = isUniquelyReferenced_nonNull_native + *(v229 + 48);
      v146 = *(v230 + 16);

      v231 = v337;
      (*v336)(v337, isUniquelyReferenced_nonNull_native, v339);
      v232 = v335;
      if (*(v335 + 16) && (v233 = sub_224B0B8A4(v231), (v234 & 1) != 0))
      {
        v235 = *(v232 + 56) + *(v319 + 72) * v233;
        v236 = v320;
        sub_224B8FC30(v235, v320, type metadata accessor for PlatterContentError);
        v237 = 0;
      }

      else
      {
        v237 = 1;
        v236 = v320;
      }

      v238 = v321;
      (*v333)(v236, v237, 1, v321);
      if ((*v332)(v236, 1, v238))
      {
        sub_224A3311C(v236, &qword_27D6F4878, &qword_224DB81D0);
        v119 = v339;
        (*v329)(v337, v339);
        aBlock = 0;
        v341 = 0xE000000000000000;
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD000000000000018, v324 | 0x8000000000000000);
        sub_224DAFA48();
      }

      else
      {
        isUniquelyReferenced_nonNull_native = type metadata accessor for PlatterContentError;
        v239 = v316;
        sub_224B8FC30(v236, v316, type metadata accessor for PlatterContentError);
        sub_224A3311C(v236, &qword_27D6F4878, &qword_224DB81D0);
        (*v329)(v337, v339);
        v240 = v311;
        sub_224B8FC30(v239, v311, type metadata accessor for PlatterContentError);
        sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError, &unk_224DB846C);
        v241 = sub_224DAFD38();
        if (v241)
        {
          v242 = v241;
          sub_224B8FBD0(v240, type metadata accessor for PlatterContentError);
        }

        else
        {
          v242 = swift_allocError();
          sub_224B8FDD8(v240, v244, type metadata accessor for PlatterContentError);
        }

        v245 = sub_224DA9518();

        v246 = [v245 debugDescription];
        sub_224DAEE18();

        sub_224B8FBD0(v316, type metadata accessor for PlatterContentError);
        v119 = v339;
        v149 = v331;
      }

      swift_getObjectType();
      sub_224DABD08();
      swift_unknownObjectRelease();
    }

    sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError, &unk_224DB84AC);
    v247 = swift_allocError();
    v248 = v314;
    sub_224B8FC30(v314, v249, type metadata accessor for PlatterFetchingError);
    v296(v247, 1);
    sub_224A3D418(v328, v327);

    sub_224B8FBD0(v248, type metadata accessor for PlatterFetchingError);
  }

  else
  {
    v203 = v283;
    v306(v283, &v334[v305], v310);

    v204 = sub_224DAB228();
    v205 = sub_224DAF278();
    v206 = os_log_type_enabled(v204, v205);
    v207 = v298;
    if (v206)
    {
      v208 = swift_slowAlloc();
      *v208 = 134349056;
      *(v208 + 4) = v281;

      _os_log_impl(&dword_224A2F000, v204, v205, "Beginning platter fetch. (count: %{public}ld)", v208, 0xCu);
      MEMORY[0x22AA5EED0](v208, -1, -1);
    }

    else
    {
    }

    v262 = v284;
    v308(v203, v310);

    sub_224B83DA0(v263);

    sub_224DAE468();
    v339 = sub_224DAEFF8();

    v264 = v285;
    v300(v285, i, v207);
    v265 = v309;
    v266 = (*(v309 + 80) + 16) & ~*(v309 + 80);
    v267 = (v262 + v266 + 7) & 0xFFFFFFFFFFFFFFF8;
    v268 = (v267 + 15) & 0xFFFFFFFFFFFFFFF8;
    v269 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
    v270 = (v269 + 15) & 0xFFFFFFFFFFFFFFF8;
    v271 = (v270 + 15) & 0xFFFFFFFFFFFFFFF8;
    v272 = (v271 + 23) & 0xFFFFFFFFFFFFFFF8;
    v273 = swift_allocObject();
    (*(v265 + 32))(v273 + v266, v264, v298);
    *(v273 + v267) = v334;
    *(v273 + v268) = v304;
    *(v273 + v269) = v330;
    *(v273 + v270) = v289;
    v274 = (v273 + v271);
    v275 = v299;
    *v274 = sub_224B8FBC4;
    v274[1] = v275;
    *(v273 + v272) = v282;
    v344 = sub_224B8FC98;
    v345 = v273;
    aBlock = MEMORY[0x277D85DD0];
    v341 = 1107296256;
    v342 = sub_224BC6D2C;
    v343 = &block_descriptor_16;
    v276 = _Block_copy(&aBlock);

    v277 = v339;
    [v286 getActivitiesWithRequests:v339 completion:v276];
    _Block_release(v276);

    sub_224A3D418(v328, v327);
  }
}

uint64_t sub_224B8FBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224B8FC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_224B8FC98(int *a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_224B883B8(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224B8FD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterContentError(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B8FDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B8FE88(uint64_t a1)
{
  sub_224B8FEE0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_224B8FEE0()
{
  if (!qword_281351A98[0])
  {
    sub_224B8C6E0(0);
    if (!v1)
    {
      atomic_store(v0, qword_281351A98);
    }
  }
}

void sub_224B8FF50(uint64_t a1)
{
  sub_224DABCC8();
  if (v1 <= 0x3F)
  {
    sub_224B900F8(319, &qword_281350B58, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_224B90018(uint64_t a1)
{
  sub_224DABCC8();
  if (v1 <= 0x3F)
  {
    sub_224DAC918();
    if (v2 <= 0x3F)
    {
      sub_224B5A81C(319);
      if (v3 <= 0x3F)
      {
        sub_224B900F8(319, &qword_2813507C0, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_224B900F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F5620, &unk_224DB3350);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReplicatedType.ArchiveType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatedType.ArchiveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224B902B8()
{
  result = qword_27D6F48E0;
  if (!qword_27D6F48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F48E0);
  }

  return result;
}

unint64_t sub_224B903E4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_224B90424(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v108 = a7;
  v109 = a8;
  v113 = a6;
  v111 = a4;
  v112 = a5;
  v110 = a1;
  v10 = sub_224DA9908();
  v115 = *(v10 - 8);
  v116 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v106 = v13;
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v118 = &v100 - v15;
  v16 = sub_224DA9FB8();
  v104 = *(v16 - 8);
  v105 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v101 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_224DA9FD8();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v19);
  v100 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAEB98();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v100 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v100 - v32;
  v34 = sub_224DAA548();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, a2, v34);
  v39 = (*(v35 + 88))(v38, v34);
  v40 = *MEMORY[0x277CFA0A8];
  v117 = a3;
  if (v39 != v40)
  {
    if (v39 != *MEMORY[0x277CFA0A0])
    {
      if (v39 != *MEMORY[0x277CFA0B0])
      {
        result = sub_224DAFD78();
        __break(1u);
        return result;
      }

      v56 = 2;
      goto LABEL_12;
    }

    v41 = v117;
    sub_224DAF658();
    v42 = v22;
    v43 = *(v22 + 104);
    v44 = *MEMORY[0x277CE3E80];
    v43(v30);
    sub_224B9388C(&qword_281350C10, MEMORY[0x277CE3E88], MEMORY[0x277CE3E90]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v45 = *(v42 + 8);
    v45(v30, v21);
    if (LODWORD(v120[0]) != v119)
    {
      (*(v42 + 32))(v26, v33, v21);
      v89 = (*(v42 + 88))(v26, v21);
      if (v89 != v44)
      {
        v57 = v116;
        if (v89 == *MEMORY[0x277CE3E78])
        {
          LODWORD(v105) = 2;
        }

        else if (v89 == *MEMORY[0x277CE3E70])
        {
          LODWORD(v105) = 1;
        }

        else
        {
          v45(v26, v21);
          LODWORD(v105) = 0;
        }

        goto LABEL_14;
      }

      goto LABEL_3;
    }

    if (sub_224B92BEC(v41))
    {
      v45(v33, v21);
      goto LABEL_3;
    }

    v90 = *(v114 + 296);
    v91 = __swift_project_boxed_opaque_existential_1((v114 + 272), v90);
    v92 = *(v90 - 8);
    MEMORY[0x28223BE20](v91, v91);
    v94 = v45;
    v95 = &v100 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v92 + 16))(v95);
    v96 = v100;
    sub_224DAA128();
    (*(v92 + 8))(v95, v90);
    v98 = v104;
    v97 = v105;
    v99 = v101;
    (*(v104 + 104))(v101, *MEMORY[0x277CF9F90], v105);
    v55 = sub_224DA9FC8();
    (*(v98 + 8))(v99, v97);
    (*(v102 + 8))(v96, v103);
    v94(v33, v21);
LABEL_9:
    v56 = v55 & 1;
LABEL_12:
    LODWORD(v105) = v56;
    goto LABEL_13;
  }

  if (!sub_224B92BEC(a3))
  {
    v46 = *(v114 + 296);
    v47 = __swift_project_boxed_opaque_existential_1((v114 + 272), v46);
    v48 = *(v46 - 8);
    MEMORY[0x28223BE20](v47, v47);
    v50 = &v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v50);
    v51 = v100;
    sub_224DAA128();
    (*(v48 + 8))(v50, v46);
    v53 = v104;
    v52 = v105;
    v54 = v101;
    (*(v104 + 104))(v101, *MEMORY[0x277CF9F90], v105);
    v55 = sub_224DA9FC8();
    (*(v53 + 8))(v54, v52);
    (*(v102 + 8))(v51, v103);
    goto LABEL_9;
  }

LABEL_3:
  LODWORD(v105) = 0;
LABEL_13:
  v57 = v116;
LABEL_14:
  v58 = v118;
  sub_224DA98F8();
  v59 = swift_allocObject();
  v104 = v59;
  v60 = v114;
  swift_weakInit();
  v61 = v115;
  v62 = v107;
  (*(v115 + 16))(v107, v58, v57);
  v63 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v64 = (v106 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  (*(v61 + 32))(v65 + v63, v62, v57);
  v66 = (v65 + v64);
  v68 = v108;
  v67 = v109;
  *v66 = v108;
  v66[1] = v67;
  *(v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8)) = v117;
  type metadata accessor for InteractiveWidgetActionRunner();
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v70 = v110;
  v69[4] = v110;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_224B939BC;
  *(v71 + 24) = v65;
  v72 = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
  *v74 = sub_224B939C0;
  v74[1] = v71;

  sub_224A364AC(v68, v67);
  v121.receiver = v73;
  v121.super_class = v72;
  v75 = v117;
  v76 = v70;

  v69[5] = objc_msgSendSuper2(&v121, sel_init);
  v69[6] = sub_224B939BC;
  v69[7] = v65;

  v77 = *(v60 + 16);
  os_unfair_lock_lock(*(v77 + 16));
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v60 + 144);
  *(v60 + 144) = 0x8000000000000000;
  sub_224B92144(v69, v118, isUniquelyReferenced_nonNull_native, &v119);
  *(v60 + 144) = v119;
  swift_endAccess();
  os_unfair_lock_unlock(*(v77 + 16));
  v79 = v112;
  v69[2] = v111;
  v69[3] = v79;

  v80 = qword_281351680;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = sub_224DAB258();
  __swift_project_value_buffer(v81, qword_2813650C0);
  v82 = v75;
  v83 = sub_224DAB228();
  v84 = sub_224DAF2A8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138543362;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&dword_224A2F000, v83, v84, "Starting to run action: %{public}@", v85, 0xCu);
    sub_224A3311C(v86, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v86, -1, -1);
    MEMORY[0x22AA5EED0](v85, -1, -1);
  }

  sub_224D30D20(v82, v113, v105);

  return (*(v115 + 8))(v118, v116);
}

uint64_t sub_224B90FD8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = sub_224DAAA18();
  if (a4)
  {
    return a4(a1, a2 & 1);
  }

  return result;
}

void sub_224B91034(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v44 = a5;
  v43 = a4;
  v42 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v39 - v13;
  v41 = sub_224DA9908();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAC248();
  v19 = [v18 extensionIdentity];

  v20 = &v19[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  v39[1] = v21;

  if (!v22)
  {
    v23 = sub_224DAC248();
    v24 = [v23 extensionIdentity];

    sub_224B90424(v24, v42, a3, v43, v44, 0, a6, a7);
    return;
  }

  v44 = a7;
  swift_beginAccess();
  if (*(v7 + 48))
  {
    sub_224A3317C(v7 + 24, &v45);
  }

  else
  {
    v25 = *(v7 + 40);
    v45 = *(v7 + 24);
    v46 = v25;
    v47 = *(v7 + 56);
  }

  if (*(&v46 + 1))
  {
    sub_224A36F98(&v45, v48);
    swift_beginAccess();
    sub_224A3796C(v7 + 104, &v45, &qword_27D6F4900, &unk_224DB8640);
    if (*(&v46 + 1))
    {
      sub_224A3311C(&v45, &qword_27D6F4900, &unk_224DB8640);
      sub_224DA9888();

      v26 = v40;
      v27 = v41;
      if ((*(v40 + 48))(v14, 1, v41) == 1)
      {
        sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v28 = sub_224DAB258();
        __swift_project_value_buffer(v28, qword_281365120);
        v29 = sub_224DAB228();
        v30 = sub_224DAF288();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_224A2F000, v29, v30, "Unable to send interaction due to bad relationship ID", v31, 2u);
          MEMORY[0x22AA5EED0](v31, -1, -1);
        }

        if (a6)
        {
          sub_224B93694();
          v32 = swift_allocError();
          *v33 = xmmword_224DB8520;
          a6(v32, 1);
        }
      }

      else
      {
        (*(v26 + 32))(v17, v14, v27);
        v36 = v49;
        v37 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v38 = sub_224DAC248();
        (*(v37 + 48))(v38, a3, v17, a6, v44, v36, v37);

        (*(v26 + 8))(v17, v41);
      }

      __swift_destroy_boxed_opaque_existential_1(v48);
      return;
    }

    sub_224A3311C(&v45, &qword_27D6F4900, &unk_224DB8640);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (!a6)
    {
      return;
    }

LABEL_20:
    sub_224B93694();
    v34 = swift_allocError();
    *v35 = 0;
    v35[1] = 0;
    a6(v34, 1);

    return;
  }

  if (*(&v46 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  if (a6)
  {
    goto LABEL_20;
  }
}

double sub_224B91570(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, void *a6)
{
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v47 = a3;
    if (a1)
    {
      v19 = a1;
      if (qword_281351680 != -1)
      {
        swift_once();
      }

      v20 = sub_224DAB258();
      __swift_project_value_buffer(v20, qword_2813650C0);
      v21 = a1;
      v22 = sub_224DAB228();
      v23 = sub_224DAF288();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v46 = a5;
        v25 = a4;
        v26 = v24;
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = a1;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_224A2F000, v22, v23, "Failed to execute LNAction with error: %{public}@", v26, 0xCu);
        sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v27, -1, -1);
        v30 = v26;
        a4 = v25;
        MEMORY[0x22AA5EED0](v30, -1, -1);
      }

      v31 = *(v18 + 16);
      v32 = *(v31 + 16);

      os_unfair_lock_lock(v32);
      (*(v12 + 16))(v15, v47, v11);
      swift_beginAccess();
      sub_224B07B08(0, 0, v15);
      swift_endAccess();
      os_unfair_lock_unlock(*(v31 + 16));

      if (a4)
      {
        v33 = a1;
        a4(a1, 1);

        return result;
      }
    }

    else
    {
      if (qword_281351680 != -1)
      {
        swift_once();
      }

      v34 = sub_224DAB258();
      __swift_project_value_buffer(v34, qword_2813650C0);
      v35 = a6;
      v36 = sub_224DAB228();
      v37 = sub_224DAF2A8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = a5;
        v40 = a4;
        v41 = v39;
        *v38 = 138543362;
        *(v38 + 4) = v35;
        *v39 = v35;
        v42 = v35;
        _os_log_impl(&dword_224A2F000, v36, v37, "Successfully ran action: %{public}@", v38, 0xCu);
        sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
        v43 = v41;
        a4 = v40;
        MEMORY[0x22AA5EED0](v43, -1, -1);
        MEMORY[0x22AA5EED0](v38, -1, -1);
      }

      v44 = *(v18 + 16);
      v45 = *(v44 + 16);

      os_unfair_lock_lock(v45);
      (*(v12 + 16))(v15, v47, v11);
      swift_beginAccess();
      sub_224B07B08(0, 0, v15);
      swift_endAccess();
      os_unfair_lock_unlock(*(v44 + 16));

      if (a4)
      {
        a4(1, 0);
      }
    }
  }

  return result;
}

void sub_224B91A14(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_224DACB98();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v28[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_2813650C0);
    v17 = a1;
    v27 = sub_224DAB228();
    v18 = sub_224DAF288();
    sub_224B92BE0(a1, 1);
    if (os_log_type_enabled(v27, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_224A2F000, v27, v18, "Not reloading timline due to interaction failure: %{public}@", v19, 0xCu);
      sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    v23 = v27;
  }

  else if ((a3 & 1) == 0)
  {
    v24 = v13;
    sub_224A3317C(a4 + 152, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v25 = *(a5 + 16);
    (*(v11 + 104))(v15, *MEMORY[0x277CF9B68], v24);
    v26 = v25;
    sub_224DAC718();

    (*(v11 + 8))(v15, v24);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }
}

void sub_224B91CC4(NSObject *a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_2813650C0);

    oslog = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = *(a2 + 16);
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      _os_log_impl(&dword_224A2F000, oslog, v15, "%{public}@: performed remote control action", v16, 0xCu);
      sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = a1;
  if (qword_281351680 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_2813650C0);
  v6 = a1;

  oslog = sub_224DAB228();
  v7 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = *(a2 + 16);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2112;
    v11 = a1;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    v9[1] = v13;
    _os_log_impl(&dword_224A2F000, oslog, v7, "%{public}@: failed to perform remote control action: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);

LABEL_10:
    v20 = oslog;

    goto LABEL_12;
  }

  v20 = a1;

LABEL_12:
}

uint64_t sub_224B91FB8()
{

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  sub_224A3311C((v0 + 13), &qword_27D6F4900, &unk_224DB8640);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_224A3311C((v0 + 29), &qword_27D6F46C0, &qword_224DB7608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);

  return swift_deallocClassInstance();
}

uint64_t sub_224B9210C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_224B92144(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_224A438E8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B25F18();
      goto LABEL_7;
    }

    sub_224B105B0(v18, a3 & 1);
    v24 = sub_224A438E8(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_224B9231C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = &off_28382CD48;

  return swift_unknownObjectRelease();
}

uint64_t sub_224B9231C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_224DA9908();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_28382CD48;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_224B923E0(uint64_t a1)
{
  v3 = type metadata accessor for RemoteControlActionRequest(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v59 - v13;
  sub_224B44674(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  type metadata accessor for InteractionMessage();
  if (swift_dynamicCast())
  {
    v15 = v70;
    v16 = [*(v70 + 16) activityIdentifier];
    v17 = v16;
    if (v16)
    {
    }

    v61 = [*(v15 + 16) extensionIdentity];
    v18 = *(v15 + 24);
    v19 = swift_allocObject();
    v62 = v17 != 0;
    *(v19 + 16) = v62;
    v20 = v1;
    *(v19 + 24) = v1;
    *(v19 + 32) = v15;
    v60 = v18;

    v63 = v15;

    sub_224DA98F8();
    v21 = swift_allocObject();
    v66 = v14;
    v22 = v21;
    swift_weakInit();
    v23 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v23, v66, v7);
    v24 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    v64 = v8;
    v65 = v7;
    (*(v8 + 32))(v26 + v24, v23, v7);
    v27 = (v26 + v25);
    *v27 = sub_224B92BC4;
    v27[1] = v19;
    v28 = v60;
    *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
    type metadata accessor for InteractiveWidgetActionRunner();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v61;
    v29[4] = v61;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_224B92BD4;
    *(v31 + 24) = v26;
    v32 = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
    *v34 = sub_224B92BD8;
    v34[1] = v31;
    v67.receiver = v33;
    v67.super_class = v32;
    v35 = v28;

    v36 = v30;

    v29[5] = objc_msgSendSuper2(&v67, sel_init);
    v29[6] = sub_224B92BD4;
    v29[7] = v26;
    v37 = v66;

    v38 = *(v20 + 16);
    os_unfair_lock_lock(*(v38 + 16));
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v20 + 144);
    *(v20 + 144) = 0x8000000000000000;
    sub_224B92144(v29, v37, isUniquelyReferenced_nonNull_native, &v71);
    *(v20 + 144) = v71;
    swift_endAccess();
    os_unfair_lock_unlock(*(v38 + 16));
    v29[2] = 0;
    v29[3] = 0;

    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_2813650C0);
    v41 = v35;
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_224A2F000, v42, v43, "Starting to run action: %{public}@", v44, 0xCu);
      sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    sub_224D30D20(v41, v62, 2);

    (*(v64 + 8))(v37, v65);
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  type metadata accessor for ControlInteractionMessage(0);
  if (!swift_dynamicCast())
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_2813650C0);
    v56 = sub_224DAB228();
    v57 = sub_224DAF288();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_224A2F000, v56, v57, "Message received is not a known type", v58, 2u);
      MEMORY[0x22AA5EED0](v58, -1, -1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v47 = v71;
  v48 = *(v71 + 16);
  v49 = OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action;
  v50 = *(v3 + 20);
  v51 = sub_224DAE738();
  (*(*(v51 - 8) + 16))(v6 + v50, v47 + v49, v51);
  v52 = *(v3 + 24);
  *v6 = v48;
  *(v6 + v52) = xmmword_224DB8530;
  swift_beginAccess();
  result = sub_224A3796C(v1 + 232, v68, &qword_27D6F46C0, &qword_224DB7608);
  if (v69)
  {
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v54 = v48;

    sub_224C7D470(v6, sub_224B92B60, v47);

    sub_224B92B68(v6);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B92B68(uint64_t a1)
{
  v2 = type metadata accessor for RemoteControlActionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224B92BE0(id a1, char a2)
{
  if (a2)
  {
  }
}

BOOL sub_224B92BEC(void *a1)
{
  v1 = [a1 systemProtocols];
  sub_224A3B79C(0, &qword_27D6F4910, 0x277D23938);
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
LABEL_20:
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_224DAF838();
  }

  else
  {
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v18 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AA5DCC0](v3, v2);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 identifier];
    v8 = [objc_opt_self() cameraCaptureProtocol];
    v9 = [v8 identifier];

    v10 = sub_224DAEE18();
    v12 = v11;
    if (v10 == sub_224DAEE18() && v12 == v13)
    {

      break;
    }

    v15 = sub_224DAFD88();

    v3 = v4 + 1;
  }

  while ((v15 & 1) == 0);

  return v18 != v4;
}

void sub_224B92DFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v74 = a4;
  v73 = a3;
  v71 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v67 = &v64 - v10;
  v69 = sub_224DA9908();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v11);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAE6E8();
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_224DAE718();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v64 - v24;
  v70 = a1;
  v26 = [a1 extensionIdentity];
  v27 = &v26[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v28 = *(v27 + 1);

  if (!v28)
  {
    v68 = v16;
    v69 = v13;
    v30 = v71;
    sub_224DAE728();
    (*(v18 + 104))(v22, *MEMORY[0x277CE3C68], v17);
    sub_224B9388C(&qword_27D6F4908, MEMORY[0x277CE3C78], MEMORY[0x277CE3C80]);
    v31 = sub_224DAEDD8();
    v32 = *(v18 + 8);
    v32(v22, v17);
    v32(v25, v17);
    if ((v31 & 1) == 0)
    {
      v54 = sub_224DAE6F8();
      v55 = v74;
      if (v54)
      {
        v56 = v54;
        v57 = [v70 extensionIdentity];
        sub_224B90424(v57, v30, v56, 0, 0, 2u, v55, v72);
      }

      else
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v65 + 104))(v68, *MEMORY[0x277CE3C00], v69);
        v62 = sub_224DAF638();
        if (v55)
        {
          v63 = v62;
          v55(v62, 1);
        }

        else
        {
        }
      }

      return;
    }

    v33 = v74;
    if (!v74)
    {
      return;
    }

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000003ELL, 0x8000000224DC85D0);
    v34 = [v70 description];
    v35 = sub_224DAEE18();
    v37 = v36;

    MEMORY[0x22AA5D210](v35, v37);

    v38 = v78;
    v39 = v79;
    sub_224B93694();
    v40 = swift_allocError();
    *v41 = v38;
    v41[1] = v39;
    v33(v40, 1);
LABEL_25:

    return;
  }

  v29 = v73;
  swift_beginAccess();
  if (*(v6 + 88))
  {
    sub_224A3317C(v6 + 64, &v75);
  }

  else
  {
    v42 = *(v6 + 80);
    v75 = *(v6 + 64);
    v76 = v42;
    v77 = *(v6 + 96);
  }

  v43 = v74;
  if (!*(&v76 + 1))
  {

    if (!*(&v76 + 1))
    {
LABEL_23:
      if (!v43)
      {
        return;
      }

      sub_224B93694();
      v40 = swift_allocError();
      *v58 = 0;
      v58[1] = 0;
      v43(v40, 1);
      goto LABEL_25;
    }

    v53 = &v75;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v53);
    goto LABEL_23;
  }

  sub_224A36F98(&v75, &v78);
  swift_beginAccess();
  sub_224A3796C(v6 + 104, &v75, &qword_27D6F4900, &unk_224DB8640);
  if (!*(&v76 + 1))
  {

    sub_224A3311C(&v75, &qword_27D6F4900, &unk_224DB8640);
    v53 = &v78;
    goto LABEL_22;
  }

  sub_224A3311C(&v75, &qword_27D6F4900, &unk_224DB8640);
  v44 = v67;
  sub_224DA9888();

  v45 = v68;
  v46 = v69;
  if (v68[6](v44, 1, v69) == 1)
  {
    sub_224A3311C(v44, &unk_27D6F5630, &unk_224DB34C0);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281365120);
    v48 = sub_224DAB228();
    v49 = sub_224DAF288();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_224A2F000, v48, v49, "Unable to send control interaction due to bad relationship ID", v50, 2u);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    if (v43)
    {
      sub_224B93694();
      v51 = swift_allocError();
      *v52 = xmmword_224DB8520;
      v43(v51, 1);
    }
  }

  else
  {
    v59 = v66;
    v45[4](v66, v44, v46);
    v60 = v80;
    v61 = v81;
    __swift_project_boxed_opaque_existential_1(&v78, v80);
    (*(v61 + 56))(v70, v29, v59, v43, v72, v60, v61);
    (v45[1])(v59, v46);
  }

  __swift_destroy_boxed_opaque_existential_1(&v78);
}

unint64_t sub_224B93694()
{
  result = qword_27D6F48F8;
  if (!qword_27D6F48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F48F8);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

double sub_224B937DC(void *a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_224B91570(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_224B9388C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_10ChronoCore18InteractionServiceC0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_224B938FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224B93950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_224B939D8(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224B93AC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    sub_224DAB368();
    swift_getWitnessTable();
    v1 = sub_224DAB3A8();
    *(v2 + 16) = v1;
  }

  return v1;
}

unint64_t sub_224B93BA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224B94E88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_224B93BD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726564;
  v4 = 0x6C6F686563616C70;
  v5 = 0xE800000000000000;
  v6 = 0x656E696C656D6974;
  v7 = 0xEF77656976657270;
  if (v2 != 3)
  {
    v7 = 0xEC0000006576696CLL;
  }

  if (v2 != 2)
  {
    v6 = 0x2D6C6F72746E6F63;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746F687370616E73;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_224B93C90()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B93D90(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224B93E7C(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

unint64_t sub_224B93F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224B94ED4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_224B93FB4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746F687370616E73;
  v4 = 0xEF77656976657270;
  if (*v1 != 2)
  {
    v4 = 0xEC0000006576696CLL;
  }

  if (*v1)
  {
    v3 = 0x656E696C656D6974;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x2D6C6F72746E6F63;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_224B94048()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B94120(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224B941E4(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B942B8(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v6 = 0x746F687370616E73;
    v7 = 0xE800000000000000;
    v8 = a1;
    strcpy(v14, "archive-");
    BYTE1(v14[1]) = 0;
    WORD1(v14[1]) = 0;
    HIDWORD(v14[1]) = -402653184;
    v9 = 0xE800000000000000;
    v10 = 0x656E696C656D6974;
    v11 = 0xEF77656976657270;
    if (a1 != 3)
    {
      v11 = 0xEC0000006576696CLL;
    }

    if (a1 != 2)
    {
      v10 = 0x2D6C6F72746E6F63;
      v9 = v11;
    }

    if (!a1)
    {
      v6 = 0x6C6F686563616C70;
      v7 = 0xEB00000000726564;
    }

    if (a1 <= 1u)
    {
      v4 = v6;
    }

    else
    {
      v4 = v10;
    }

    if (v8 <= 1)
    {
      v5 = v7;
    }

    else
    {
      v5 = v9;
    }

    goto LABEL_25;
  }

  if (a1 >> 6 == 1)
  {
    sub_224DAF938();

    strcpy(v14, "configuration-");
    HIBYTE(v14[1]) = -18;
    v2 = 0xEF77656976657270;
    if ((a1 & 0x3F) != 2)
    {
      v2 = 0xEC0000006576696CLL;
    }

    v3 = 0x656E696C656D6974;
    if ((a1 & 0x3F) == 0)
    {
      v3 = 0x746F687370616E73;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x2D6C6F72746E6F63;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = v2;
    }

LABEL_25:
    MEMORY[0x22AA5D210](v4, v5);

    return v14[0];
  }

  v13 = 1852793705;
  if (a1 != 129)
  {
    v13 = 0x7974697669746361;
  }

  if (a1 == 128)
  {
    return 0x6F69736E65747865;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_224B9450C(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x22AA5E1E0](0);
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x22AA5E1E0](1);
LABEL_5:
    sub_224DAEE78();
  }

  if (a2 == 128)
  {
    v3 = 2;
  }

  else if (a2 == 129)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return MEMORY[0x22AA5E1E0](v3);
}

uint64_t sub_224B946F4()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224B9450C(v3, v1);
  return sub_224DAFEA8();
}

uint64_t sub_224B94744(uint64_t a1)
{
  v2 = *v1;
  sub_224DAFE68();
  sub_224B9450C(v4, v2);
  return sub_224DAFEA8();
}

uint64_t sub_224B94790(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      return sub_224CE7150(v2, v3);
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return sub_224CE7300(v2 & 0x3F, v3 & 0x3F);
    }

    return 0;
  }

  v5 = v3 == 129;
  if (v2 != 129)
  {
    v5 = v3 == 130;
  }

  if (v2 == 128)
  {
    return v3 == 128;
  }

  else
  {
    return v5;
  }
}

char *sub_224B94800()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v1 = qword_2813652E0;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_224B948D8()
{
  sub_224B94800();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReplicatedType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReplicatedType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224B94AA4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_224B94AD0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_224B94B14()
{
  result = qword_27D6F4918;
  if (!qword_27D6F4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4918);
  }

  return result;
}

uint64_t sub_224B94B68@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_224DAAF28();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAD98();
  sub_224B94D2C();
  v11[2] = sub_224DAFD28();
  v11[3] = v8;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x22AA5D210](46, 0xE100000000000000);
  v9 = sub_224DAAEF8();
  MEMORY[0x22AA5D210](v9);

  sub_224DAAF08();
  sub_224DAAEC8();
  sub_224DAAF38();
  return sub_224DAAEE8();
}

unint64_t sub_224B94D2C()
{
  result = qword_281351A00;
  if (!qword_281351A00)
  {
    sub_224DA9908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A00);
  }

  return result;
}

unint64_t sub_224B94DC0()
{
  result = qword_28135B4C0;
  if (!qword_28135B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B4C0);
  }

  return result;
}

unint64_t sub_224B94E18()
{
  result = qword_27D6F4920;
  if (!qword_27D6F4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4920);
  }

  return result;
}

unint64_t sub_224B94E88(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_224B94ED4(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_224B9501C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock];
  v3 = *(v2 + 16);
  v22 = v2;

  os_unfair_lock_lock(v3);
  v4 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions;
  swift_beginAccess();
  v5 = *&v1[v4];
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224AA6824(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v7 = v24;
    v6 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v5;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4(v7);

      os_unfair_lock_unlock(*(v22 + 16));

      __swift_destroy_boxed_opaque_existential_1(v1 + 2);
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      __swift_destroy_boxed_opaque_existential_1(v1 + 12);
      v20 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
      v21 = sub_224DAB258();
      (*(*(v21 - 8) + 8))(&v1[v20], v21);

      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService]);
      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService]);
      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService]);

      return;
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224B9533C()
{
  sub_224B9501C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetPushManager(uint64_t a1)
{
  result = qword_28135A560;
  if (!qword_28135A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B953E8(uint64_t a1)
{
  result = sub_224DAB258();
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_224B954C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_224B95510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_224B9556C(void *a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_224DAF838();

    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

LABEL_11:
    v11 = (a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
    v12 = off_283828B48[0];
    type metadata accessor for PushService();
    v12();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5560, &qword_224DB8D40);
    v13 = MEMORY[0x277CBCD90];
    v16 = MEMORY[0x277CBCD90];
    sub_224A33088(&unk_281351080, &unk_27D6F5560, &qword_224DB8D40, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    off_283828B58();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4938, &qword_224DB8D48);
    sub_224A33088(&unk_281351110, &qword_27D6F4938, &qword_224DB8D48, v13);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    off_283828B50();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5570, &unk_224DB8D50);
    sub_224A33088(&unk_281351170, &qword_27D6F5570, &unk_224DB8D50, v16);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v14 = a1[15];
    v15 = a1[16];
    __swift_project_boxed_opaque_existential_1(a1 + 12, v14);
    (*(*(v15 + 8) + 32))(768, v14);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
    sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v16);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    sub_224DAD8B8();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
    sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60, v16);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    return;
  }

  if (*(v5 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_224DAF838();

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = sub_224DAB228();
  v9 = sub_224DAF288();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224A2F000, v8, v9, "Error - WidgetPushManager already started.", v10, 2u);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  *a2 = 1;
}

uint64_t sub_224B95BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v43 = &v35 - v3;
  v40 = sub_224DAC538();
  MEMORY[0x28223BE20](v40, v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC4D8();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v42 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v35 - v14;
  v16 = sub_224DAC5E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v44 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v0 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
  v20 = sub_224DAE418();
  v22 = v21;
  v23 = off_283828B98;
  v24 = type metadata accessor for PushService();
  v23(v20, v22, v24, &off_283828B40);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_224A3311C(v15, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  (*(v17 + 32))(v44, v15, v16);
  v26 = v41;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v37;
    v28 = v38;
    v40 = *(v37 + 32);
    v29 = v42;
    v40(v42, v26, v38);
    v30 = sub_224DAF128();
    (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
    v31 = v36;
    (*(v27 + 16))(v36, v29, v28);
    v32 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v40;
    *(v33 + 4) = v39;
    v34(&v33[v32], v31, v28);

    sub_224D00D34(0, 0, v43, &unk_224DB8D88, v33);

    (*(v27 + 8))(v42, v28);
    return (*(v17 + 8))(v44, v16);
  }

  else
  {
    (*(v17 + 8))(v44, v16);
    return sub_224B9D584(v26, MEMORY[0x277CF9A70]);
  }
}

double sub_224B960B4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_224DAC578();
    if (v9)
    {
      v10 = v9;
      v11 = sub_224DAF128();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v10;
      sub_224D00D34(0, 0, v5, &unk_224DB8D78, v12);
    }
  }

  return result;
}

uint64_t sub_224B961F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_224ACED1C;

  return sub_224B96290(a5);
}

uint64_t sub_224B96290(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v3 = sub_224DAE6E8();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v5 = sub_224DAE438();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v6 = sub_224DAC5E8();
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v2[59] = swift_task_alloc();
  v7 = sub_224DA9908();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v8 = sub_224DA9878();
  v2[63] = v8;
  v2[64] = *(v8 - 8);
  v2[65] = swift_task_alloc();
  type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v2[66] = swift_task_alloc();
  v2[67] = type metadata accessor for ExtensionTask.Identifier(0);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B96624, 0, 0);
}

uint64_t sub_224B96624()
{
  __swift_project_boxed_opaque_existential_1(v0[21].receiver + 2, *(v0[21].receiver + 5));
  if (!sub_224DAD8C8())
  {

    super_class = v0->super_class;
LABEL_118:

    return super_class();
  }

  receiver = v0[21].receiver;
  v223 = sub_224DACF78();

  v3 = receiver[15];
  v2 = receiver[16];
  __swift_project_boxed_opaque_existential_1(receiver + 12, v3);
  (*(v2 + 32))(768, v3, v2);
  if (v0[3].super_class)
  {
    v4 = sub_224A86CAC();
    sub_224A699F0(&v0[1]);
    v211 = v4;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(&v0[1], &qword_27D6F50E0, &qword_224DB41A0);
  }

  v211 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_8:
  v6 = v0[34].super_class;
  v7 = v0[34].receiver;
  v231 = v7;
  v8 = v0[33].receiver;
  v253 = v8;
  v222 = v0[32].super_class;
  v9 = v0[32].receiver;
  v228 = v0[31].super_class;
  v236 = v0[30].super_class;
  v240 = v0[30].receiver;
  v243 = v0[29].super_class;
  v10 = v0[20].super_class;
  v245 = v0[21].receiver;
  v249 = v0[31].receiver;
  *v6 = v10;
  swift_storeEnumTagMultiPayload();
  sub_224A4152C(v6, v7, type metadata accessor for ExtensionTask.Identifier);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v12 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v13 = *(v12 + 72);
  v216 = v0;
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_224DB8BC0;
  v16 = v15 + v14;
  v17 = sub_224DAE8B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v16, 4, 5, v17);
  v19(v16 + v13, 3, 5, v17);
  (*(v18 + 104))(v16 + 2 * v13, *MEMORY[0x277CE3D28], v17);
  v19(v16 + 2 * v13, 0, 5, v17);
  v219 = type metadata accessor for ExtensionTask(0);
  v20 = objc_allocWithZone(v219);
  v21 = v10;
  sub_224DAE908();
  v22 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v217 = sub_224DAC938();
  v221 = *(v217 - 8);
  v224 = *(v221 + 56);
  v224(&v20[v23], 1, 1, v217);
  v24 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v27 = 0;
  v27[1] = 0;
  sub_224DA9868();
  v9[4](&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v222, v228);
  v201 = v10;
  *&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v10;
  sub_224A4152C(v253, &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v20[v22] = v15;
  v28 = v21;

  v29 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v29 = 1;
  v29[8] = 0;
  sub_224A4152C(v231, &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  sub_224DA98F8();
  (*(v236 + 2))(&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v249, v240);
  v216[20].receiver = sub_224DA98E8();
  sub_224A3F6A4();
  v30 = sub_224DAEF18();
  v32 = sub_224A3D19C(8, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = MEMORY[0x22AA5D1C0](v32, v34, v36, v38);
  v41 = v40;

  v42 = &v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v42 = v39;
  v42[1] = v41;
  v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v216[19].receiver = v20;
  v43 = v216;
  v216[19].super_class = v219;
  v44 = objc_msgSendSuper2(v216 + 19, sel_init);
  v216[35].receiver = v44;
  (*(v236 + 1))(v249, v240);
  sub_224B9D584(v253, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224B9D584(v231, type metadata accessor for ExtensionTask.Identifier);
  (*(v221 + 104))(v243, *MEMORY[0x277CF9AE8], v217);
  v224(v243, 0, 1, v217);
  v45 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v203 = v44;
  sub_224A6E1D0(v243, v44 + v45);
  swift_endAccess();
  v229 = &v245[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService];
  __swift_project_boxed_opaque_existential_1(&v245[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService], *&v245[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24]);
  v46 = off_283828B60[0];
  v225 = type metadata accessor for PushService();
  v47 = v46(v225, &off_283828B40);
  v48 = sub_224DA0FA4(MEMORY[0x277D84F90]);
  v49 = *(v47 + 16);
  if (v49)
  {
    v50 = 0;
    v51 = v216[27].super_class;
    v250 = v47 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v244 = v47;
    v246 = (v51 + 8);
    v232 = (v51 + 40);
    v233 = (v51 + 32);
    v237 = v51;
    v241 = *(v47 + 16);
    while (v50 < *(v47 + 16))
    {
      v52 = *(v51 + 9);
      v53 = *(v51 + 2);
      v53(v43[29].receiver, v250 + v52 * v50, v43[27].receiver);
      v54 = sub_224DAC578();
      if (v54)
      {
        v55 = v54;
        sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
        v56 = sub_224DAF6A8();
        v57 = v43[29].receiver;
        if (v56)
        {
          v58 = v43[28].super_class;
          v59 = v43[27].receiver;
          v60 = sub_224DAC588();
          v61 = v48;
          v63 = v62;
          v53(v58, v57, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v256 = v61;
          v66 = sub_224A3A40C(v60, v63);
          v67 = v61[2];
          v68 = (v65 & 1) == 0;
          v69 = v67 + v68;
          if (__OFADD__(v67, v68))
          {
            goto LABEL_132;
          }

          v70 = v65;
          if (v61[3] >= v69)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224B2527C();
            }
          }

          else
          {
            sub_224B0F104(v69, isUniquelyReferenced_nonNull_native);
            v71 = sub_224A3A40C(v60, v63);
            if ((v70 & 1) != (v72 & 1))
            {
              goto LABEL_125;
            }

            v66 = v71;
          }

          v74 = v216[28].super_class;
          v73 = v216[29].receiver;
          v75 = v216[27].receiver;
          if (v70)
          {

            v48 = v256;
            (*v232)(v256[7] + v66 * v52, v74, v75);

            (*v246)(v73, v75);
          }

          else
          {
            v256[(v66 >> 6) + 8] |= 1 << v66;
            v76 = (v256[6] + 16 * v66);
            *v76 = v60;
            v76[1] = v63;
            v48 = v256;
            (*v233)(v256[7] + v66 * v52, v74, v75);

            (*v246)(v73, v75);
            v77 = v256[2];
            v78 = __OFADD__(v77, 1);
            v79 = v77 + 1;
            if (v78)
            {
              goto LABEL_133;
            }

            v256[2] = v79;
          }

          v43 = v216;
          v49 = v241;
          v47 = v244;
          v51 = v237;
        }

        else
        {
          (*v246)(v43[29].receiver, v43[27].receiver);
        }
      }

      else
      {
        (*v246)(v43[29].receiver, v43[27].receiver);
      }

      if (v49 == ++v50)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_131;
  }

LABEL_27:

  __swift_project_boxed_opaque_existential_1(v229, *(v229 + 3));
  v80 = off_283828B68(v225, &off_283828B40);
  v81 = *(v80 + 16);
  if (v81)
  {
    v205 = 0;
    v82 = v43[27].super_class;
    v83 = v43;
    v84 = v43[26].receiver;
    v85 = v83[20].super_class;
    v234 = *MEMORY[0x277CFA130];
    v87 = v84[2];
    v86 = v84 + 2;
    v254 = v87;
    v88 = v80 + ((*(v86 + 64) + 32) & ~*(v86 + 64));
    v238 = v82;
    v226 = (v82 + 8);
    v208 = 0xF000000000000000;
    v247 = v48;
    v251 = v86[7];
    v87(v83[26].super_class, v88, v83[25].super_class);
    while (1)
    {
      v89 = sub_224DAE418();
      if (!*(v48 + 16))
      {

        goto LABEL_30;
      }

      v91 = sub_224A3A40C(v89, v90);
      v93 = v92;

      if (v93)
      {
        break;
      }

LABEL_30:
      (*(v86 - 1))(v216[26].super_class, v216[25].super_class);
      v88 += v251;
      if (!--v81)
      {

        v43 = v216;
        v111 = v205;
        v112 = v208;
        goto LABEL_53;
      }

      v254(v216[26].super_class, v88, v216[25].super_class);
    }

    (*(v238 + 2))(v216[28].receiver, *(v48 + 56) + *(v238 + 9) * v91, v216[27].receiver);
    v94 = sub_224DAC578();
    if (v94)
    {
      v95 = v94;
      v96 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      if ((*(*(v97 - 8) + 48))(&v95[v96], 1, v97))
      {
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v98 = sub_224DA9FE8();
      v99 = v100;
      swift_endAccess();
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    swift_beginAccess();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    if ((*(*(v101 - 8) + 48))(v85 + v234, 1, v101))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    }

    v102 = sub_224DA9FE8();
    v104 = v103;
    swift_endAccess();
    if (v99)
    {
      if (v98 == v102 && v99 == v104)
      {

LABEL_48:
        v106 = v216[28].receiver;
        v107 = v216[27].receiver;
        v108 = sub_224DAE428();
        v110 = v109;
        sub_224AC1D9C(v205, v208);
        (*v226)(v106, v107);
        v205 = v108;
        v208 = v110;
LABEL_50:
        v48 = v247;
        goto LABEL_30;
      }

      v105 = sub_224DAFD88();

      if (v105)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    (*v226)(v216[28].receiver, v216[27].receiver);
    goto LABEL_50;
  }

  v111 = 0;
  v112 = 0xF000000000000000;
LABEL_53:
  p_super_class = &v43[20].super_class;
  v206 = v111;
  v209 = v112;
  v43[36].receiver = v112;
  v43[35].super_class = v111;
  v113 = v43[23].super_class;
  v230 = v43[20].super_class;
  v114 = swift_allocObject();
  v115 = 0;
  v43[36].super_class = v114;
  v202 = v114;
  *(v114 + 16) = MEMORY[0x277D84F90];
  v252 = (v114 + 16);
  v116 = v211 + 64;
  v117 = -1;
  v118 = -1 << *(v211 + 32);
  if (-v118 < 64)
  {
    v117 = ~(-1 << -v118);
  }

  v119 = v117 & *(v211 + 64);
  v207 = (63 - v118) >> 6;
  v210 = v113;
  v212 = (v113 + 8);
  v227 = *MEMORY[0x277CFA130];
  while (1)
  {
    if (v119)
    {
      v215 = v115;
      v122 = v115;
LABEL_67:
      v126 = v43[24].receiver;
      v125 = v43[24].super_class;
      v127 = v43[23].receiver;
      v214 = (v119 - 1) & v119;
      v128 = __clz(__rbit64(v119)) | (v122 << 6);
      (*(v210 + 2))(v126, *(v211 + 48) + *(v210 + 9) * v128, v127);
      v129 = *(*(v211 + 56) + 8 * v128);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v131 = *(v130 + 48);
      (*(v210 + 4))(v125, v126, v127);
      *(v125 + v131) = v129;
      (*(*(v130 - 8) + 56))(v125, 0, 1, v130);
      v132 = v129;
      v43 = v216;
    }

    else
    {
      if (v207 <= v115 + 1)
      {
        v123 = v115 + 1;
      }

      else
      {
        v123 = v207;
      }

      v124 = v123 - 1;
      while (1)
      {
        v122 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_129;
        }

        if (v122 >= v207)
        {
          break;
        }

        v119 = *(v116 + 8 * v122);
        ++v115;
        if (v119)
        {
          v215 = v122;
          goto LABEL_67;
        }
      }

      v179 = v43[24].super_class;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v180 - 8) + 56))(v179, 1, 1, v180);
      v214 = 0;
      v215 = v124;
    }

    v133 = v43[25].receiver;
    sub_224B9D454(v43[24].super_class, v133);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
    {

      if (v209 >> 60 != 15)
      {
        v198 = swift_task_alloc();
        v43[37].receiver = v198;
        v199 = *p_super_class;
        *(v198 + 16) = v203;
        *(v198 + 24) = vextq_s8(v199, v199, 8uLL);
        *(v198 + 40) = v202;
        *(v198 + 48) = v206;
        *(v198 + 56) = v209;
        v200 = swift_task_alloc();
        v43[37].super_class = v200;
        *v200 = v43;
        *(v200 + 1) = sub_224B981BC;

        return MEMORY[0x2822008A0]();
      }

      v183 = v43[22].receiver;
      v182 = v43[22].super_class;
      v184 = v43[21].super_class;
      v185 = v43[20].super_class;
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v183[13](v182, *MEMORY[0x277CE3C40], v184);
      v186 = sub_224DAF638();
      v187 = v185;
      v188 = v186;
      v189 = sub_224DAB228();
      v190 = sub_224DAF288();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = p_super_class->i64[0];
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = 138543618;
        *(v192 + 4) = v191;
        *(v192 + 12) = 2114;
        *(v192 + 14) = v188;
        *v193 = v201;
        v193[1] = v188;
        v194 = v191;
        v195 = v188;
        _os_log_impl(&dword_224A2F000, v189, v190, "Error occurred when sending push token to extension %{public}@: %{public}@ and no matching push token found", v192, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v193, -1, -1);
        MEMORY[0x22AA5EED0](v192, -1, -1);
      }

      swift_willThrow();
      v196 = v216[34].super_class;

      sub_224B9D584(v196, type metadata accessor for ExtensionTask.Identifier);

      super_class = v216->super_class;
      goto LABEL_118;
    }

    v213 = *(v43[25].receiver + *(v134 + 48));
    v135 = [v213 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v136 = sub_224DAF008();

    v137 = sub_224A7B5CC(v136);

    v138 = v137;
    v242 = v137;
    if (v137 >> 62)
    {
      break;
    }

    v139 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v139)
    {
      goto LABEL_71;
    }

LABEL_56:
    v120 = v43[25].receiver;
    v121 = v43[23].receiver;

    (*v212)(v120, v121);
    v116 = v211 + 64;
    v119 = v214;
    v115 = v215;
  }

  v181 = sub_224DAF838();
  v138 = v137;
  v139 = v181;
  if (!v181)
  {
    goto LABEL_56;
  }

LABEL_71:
  v140 = 0;
  v239 = v138 & 0xC000000000000001;
  v218 = v138 + 32;
  v220 = v138 & 0xFFFFFFFFFFFFFF8;
  v235 = v139;
  while (2)
  {
    if (v239)
    {
      v141 = MEMORY[0x22AA5DCC0](v140, v138);
      goto LABEL_78;
    }

    if (v140 >= *(v220 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v141 = *(v218 + 8 * v140);
LABEL_78:
    v142 = v141;
    v78 = __OFADD__(v140, 1);
    v143 = v140 + 1;
    if (!v78)
    {
      v248 = v143;
      v144 = [v141 extensionIdentity];
      v145 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v147 = *(*(v146 - 8) + 48);
      if (v147(&v144[v145], 1, v146))
      {
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v148 = sub_224DA9FE8();
      v150 = v149;
      swift_endAccess();

      swift_beginAccess();
      if (v147(v230 + v227, 1, v146))
      {
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v151 = sub_224DA9FE8();
      v153 = v152;
      swift_endAccess();
      if (v148 == v151 && v150 == v153)
      {
      }

      else
      {
        v154 = sub_224DAFD88();

        if ((v154 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v155 = [v142 extensionIdentity];
      v156 = v155;
      if (!*(v223 + 16) || (v157 = sub_224A3E7EC(v155), (v158 & 1) == 0))
      {

        goto LABEL_73;
      }

      v159 = *(*(v223 + 56) + 8 * v157);

      if (!(v159 >> 62))
      {
        v160 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v160)
        {
          goto LABEL_91;
        }

LABEL_110:

LABEL_73:

        v140 = v248;
        v138 = v242;
        if (v248 == v235)
        {
          goto LABEL_56;
        }

        continue;
      }

      v160 = sub_224DAF838();
      if (!v160)
      {
        goto LABEL_110;
      }

LABEL_91:
      if (v160 >= 1)
      {
        v161 = 0;
        v162 = v159 & 0xC000000000000001;
        v255 = v160;
        while (1)
        {
          if (v162)
          {
            v165 = MEMORY[0x22AA5DCC0](v161, v159);
          }

          else
          {
            v165 = *(v159 + 8 * v161 + 32);
          }

          v166 = v165;
          if (![v165 supportsPush])
          {
            goto LABEL_97;
          }

          v167 = v162;
          v168 = [v166 kind];
          v169 = sub_224DAEE18();
          v171 = v170;

          v172 = v142;
          v173 = [v142 kind];
          v174 = sub_224DAEE18();
          v176 = v175;

          if (v169 == v174 && v171 == v176)
          {
            break;
          }

          v178 = sub_224DAFD88();

          v163 = v252;
          v160 = v255;
          v142 = v172;
          v162 = v167;
          if (v178)
          {
            goto LABEL_94;
          }

LABEL_97:
          ++v161;

          if (v160 == v161)
          {

            v43 = v216;
            goto LABEL_73;
          }
        }

        v163 = v252;
        v160 = v255;
        v142 = v172;
        v162 = v167;
LABEL_94:
        v164 = [v142 widget];
        MEMORY[0x22AA5D350]();
        if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        goto LABEL_97;
      }

LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    break;
  }

  __break(1u);
LABEL_125:

  return sub_224DAFDD8();
}

uint64_t sub_224B981BC()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_224B9844C;
  }

  else
  {
    v2 = sub_224B982F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224B982F0()
{
  v1 = v0[70];
  v2 = v0[69];
  sub_224AC1D9C(v0[71], v0[72]);

  sub_224B9D584(v2, type metadata accessor for ExtensionTask.Identifier);

  v3 = v0[1];

  return v3();
}

uint64_t sub_224B9844C()
{
  sub_224AC1D9C(*(v0 + 568), *(v0 + 576));
  v1 = *(v0 + 552);

  sub_224B9D584(v1, type metadata accessor for ExtensionTask.Identifier);

  v2 = *(v0 + 8);

  return v2();
}

double sub_224B985B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  return result;
}

void sub_224B98628(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v93 = &v81 - v5;
  v6 = sub_224DACB98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v97 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v26 = &v81 - v25;
  if (*(a1 + 8) == 1)
  {
    v85 = v24;
    v91 = v23;
    v92 = v22;
    v87 = v10;
    v88 = v7;
    v89 = v6;
    v27 = *a1;
    v28 = *(v1 + 40);
    v96 = v1;
    __swift_project_boxed_opaque_existential_1((v1 + 16), v28);
    v101 = v27;
    if (sub_224DAD8C8())
    {
      v29 = sub_224DACF78();

      v30 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v84 = v30;
      sub_224A3796C(&v101[v30], v17, &unk_27D6F5060, &qword_224DB5620);
      v31 = v91;
      v32 = *(v91 + 48);
      v33 = v92;
      v83 = v91 + 48;
      v82 = v32;
      if (v32(v17, 1, v92) == 1)
      {
        sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
        __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v96 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
        v34 = sub_224DAC818();
      }

      else
      {
        (*(v31 + 32))(v26, v17, v33);
        __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v96 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
        v34 = sub_224DAC808();
        (*(v31 + 8))(v26, v33);
      }

      v36 = v34 & 0xFFFFFFFFFFFFFF8;
      if (v34 >> 62)
      {
        goto LABEL_66;
      }

      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v90 = v34;
      if (v37)
      {
        v38 = 0;
        v102 = v90 + 32;
        v103 = v90 & 0xC000000000000001;
        v86 = MEMORY[0x277D84F90];
        v99 = v36;
        v100 = v29;
        v98 = v37;
        while (1)
        {
          if (v103)
          {
            v39 = MEMORY[0x22AA5DCC0](v38, v90);
          }

          else
          {
            if (v38 >= *(v36 + 16))
            {
              goto LABEL_65;
            }

            v39 = *(v102 + 8 * v38);
          }

          v40 = v39;
          if (__OFADD__(v38++, 1))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v37 = sub_224DAF838();
            goto LABEL_11;
          }

          v42 = [v39 extensionIdentity];
          v34 = v42;
          if (*(v29 + 16))
          {
            v104 = v38;
            v43 = sub_224A3E7EC(v42);
            if (v44)
            {
              v36 = *(*(v29 + 56) + 8 * v43);

              if (v36 >> 62)
              {
                v45 = sub_224DAF838();
                if (v45)
                {
LABEL_21:
                  v46 = 0;
                  v106 = v36 & 0xFFFFFFFFFFFFFF8;
                  v107 = v36 & 0xC000000000000001;
                  v105 = v40;
                  while (1)
                  {
                    if (v107)
                    {
                      v47 = MEMORY[0x22AA5DCC0](v46, v36);
                      v29 = v46 + 1;
                      if (__OFADD__(v46, 1))
                      {
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                      if (v46 >= *(v106 + 16))
                      {
                        goto LABEL_63;
                      }

                      v47 = *(v36 + 8 * v46 + 32);
                      v29 = v46 + 1;
                      if (__OFADD__(v46, 1))
                      {
LABEL_62:
                        __break(1u);
LABEL_63:
                        __break(1u);
                        goto LABEL_64;
                      }
                    }

                    v48 = v47;
                    v49 = [v40 kind];
                    v34 = sub_224DAEE18();
                    v51 = v50;

                    v52 = v48;
                    v53 = [v48 kind];
                    v54 = sub_224DAEE18();
                    v56 = v55;

                    if (v34 == v54 && v51 == v56)
                    {
                      break;
                    }

                    v34 = sub_224DAFD88();

                    if (v34)
                    {
                      goto LABEL_38;
                    }

                    ++v46;
                    v40 = v105;
                    if (v29 == v45)
                    {
                      goto LABEL_47;
                    }
                  }

LABEL_38:
                  v40 = v105;

                  v58 = [v52 supportsPush];
                  v36 = v99;
                  v29 = v100;
                  v37 = v98;
                  if ((v58 & 1) == 0)
                  {

                    goto LABEL_48;
                  }

                  v59 = [v40 kind];
                  v60 = sub_224DAEE18();
                  v62 = v61;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v86 = sub_224A865C4(0, *(v86 + 2) + 1, 1, v86);
                  }

                  v64 = *(v86 + 2);
                  v63 = *(v86 + 3);
                  v34 = v64 + 1;
                  if (v64 >= v63 >> 1)
                  {
                    v86 = sub_224A865C4((v63 > 1), v64 + 1, 1, v86);
                  }

                  v65 = v86;
                  *(v86 + 2) = v34;
                  v66 = &v65[16 * v64];
                  *(v66 + 4) = v60;
                  *(v66 + 5) = v62;
                  v38 = v104;
                  goto LABEL_50;
                }
              }

              else
              {
                v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v45)
                {
                  goto LABEL_21;
                }
              }

LABEL_47:

              v36 = v99;
              v29 = v100;
              v37 = v98;
            }

            else
            {
            }

LABEL_48:
            v38 = v104;
          }

          else
          {
          }

LABEL_50:
          if (v38 == v37)
          {
            goto LABEL_53;
          }
        }
      }

      v86 = MEMORY[0x277D84F90];
LABEL_53:

      v67 = v86;
      if (*(v86 + 2))
      {
        v68 = v97;
        sub_224A3796C(&v101[v84], v97, &unk_27D6F5060, &qword_224DB5620);
        v69 = v92;
        v70 = v82(v68, 1, v92);
        v71 = v96;
        if (v70 == 1)
        {
          sub_224A3311C(v68, &unk_27D6F5060, &qword_224DB5620);
          __swift_project_boxed_opaque_existential_1((v71 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v71 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
          sub_224AE8AF4(v67);

          v72 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v74 = v93;
          v73 = v94;
          v69 = v95;
          (*(v94 + 16))(v93, &v101[v72], v95);
          v75 = v88;
          v76 = v87;
          v77 = v89;
          (*(v88 + 104))(v87, *MEMORY[0x277CF9BE0], v89);
          sub_224DAC788();
        }

        else
        {
          v73 = v91;
          v74 = v85;
          (*(v91 + 32))(v85, v68, v69);
          __swift_project_boxed_opaque_existential_1((v71 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v71 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
          sub_224AE8AF4(v67);

          v75 = v88;
          v76 = v87;
          v77 = v89;
          (*(v88 + 104))(v87, *MEMORY[0x277CF9BE0], v89);
          sub_224DAC778();
        }

        (*(v75 + 8))(v76, v77);
        (*(v73 + 8))(v74, v69);
      }

      else
      {

        v78 = sub_224DAB228();
        v79 = sub_224DAF2A8();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_224A2F000, v78, v79, "Received push notification, but no active configured widgets that support push.", v80, 2u);
          MEMORY[0x22AA5EED0](v80, -1, -1);
        }
      }
    }

    else
    {
      v35 = v101;
    }
  }
}

void sub_224B99110(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v246 - v5;
  v7 = sub_224DAB7B8();
  v252 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v251 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v286 = &v246 - v17;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v263 = *(v269 - 8);
  MEMORY[0x28223BE20](v269, v18);
  v262 = &v246 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v267 = &v246 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v284 = &v246 - v25;
  v291 = sub_224DAC538();
  MEMORY[0x28223BE20](v291, v26);
  v280 = &v246 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v290 = sub_224DAC4D8();
  v276 = *(v290 - 8);
  MEMORY[0x28223BE20](v290, v28);
  v289 = &v246 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_224DAC5E8();
  v281 = *(v287 - 8);
  v31 = MEMORY[0x28223BE20](v287, v30);
  v33 = &v246 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v283 = &v246 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v274 = &v246 - v39;
  v250 = v40;
  MEMORY[0x28223BE20](v38, v41);
  v279 = &v246 - v42;
  v43 = v1[15];
  v44 = v1[16];
  v254 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 12, v43);
  (*(v44 + 32))(aBlock, 768, v43, v44);
  if (v295)
  {
    v45 = sub_224A86CAC();
    sub_224A699F0(aBlock);
    v266 = v45;
    if (v45)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v266 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_6:
  __swift_project_boxed_opaque_existential_1(v254 + 2, v254[5]);
  if (sub_224DAD8C8())
  {
    v247 = v10;
    v259 = v7;
    v248 = a1;
    v249 = v6;
    v46 = sub_224DACF78();

    v301 = MEMORY[0x277D84FA0];
    v253 = sub_224DA1AB8(MEMORY[0x277D84F90]);
    v300 = v253;
    v47 = v46 + 64;
    v48 = 1 << *(v46 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v46 + 64);
    v51 = (v48 + 63) >> 6;
    v282 = v46;

    v52 = 0;
    v273 = 0;
    v53 = 0x27853F000;
    v258 = v11;
    v246 = v14;
    v257 = v33;
    v54 = 0x1FAF57000;
    v288 = v51;
    while (v50)
    {
LABEL_17:
      v56 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v57 = (v52 << 9) | (8 * v56);
      v58 = *(v282[7] + v57);
      v6 = *(v282[6] + v57);

      if ([v6 *(v53 + 2616)])
      {
LABEL_11:
      }

      else
      {
        v292 = v6;
        if (v58 >> 62)
        {
          v59 = sub_224DAF838();
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v53 = 0;
        do
        {
          if (v59 == v53)
          {
            v54 = &off_27853F000;
            v51 = v288;
            v53 = &off_27853F000;
            v6 = v292;
            goto LABEL_11;
          }

          if ((v58 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x22AA5DCC0](v53, v58);
          }

          else
          {
            if (v53 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_164;
            }

            v60 = *(v58 + 8 * v53 + 32);
          }

          v61 = v60;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_163;
          }

          v6 = [v60 supportsPush];

          ++v53;
        }

        while ((v6 & 1) == 0);

        v6 = *MEMORY[0x277CFA130];
        v62 = v292;
        swift_beginAccess();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        v285 = (v64 + 48);
        if (v65(v62 + v6, 1, v63))
        {
          swift_endAccess();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        }

        v66 = sub_224DA9FE8();
        v68 = v67;
        swift_endAccess();
        sub_224ADAF60(aBlock, v66, v68);

        swift_beginAccess();
        if (v65(v62 + v6, 1, v63))
        {
          swift_endAccess();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        }

        v69 = sub_224DA9FE8();
        v71 = v70;
        swift_endAccess();
        v54 = 0x27853F000;
        v72 = v300;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v72;
        sub_224B20F28(v62, v69, v71, isUniquelyReferenced_nonNull_native);

        v253 = aBlock[0];
        v300 = aBlock[0];
        v51 = v288;
        v53 = 0x27853F000;
      }
    }

    while (1)
    {
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_165;
      }

      if (v55 >= v51)
      {
        break;
      }

      v50 = *(v47 + 8 * v55);
      ++v52;
      if (v50)
      {
        v52 = v55;
        goto LABEL_17;
      }
    }

    v288 = sub_224DA0FA4(MEMORY[0x277D84F90]);
    v299 = v288;
    v74 = (v254 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
    __swift_project_boxed_opaque_existential_1((v254 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v254 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
    v6 = off_283828B60[0];
    v75 = type metadata accessor for PushService();
    v76 = (v6)(v75, &off_283828B40);
    v77 = v76;
    v53 = *(v76 + 16);
    v256 = v74;
    if (v53)
    {
      v78 = 0;
      v272 = (*(v281 + 80) + 32) & ~*(v281 + 80);
      v79 = v76 + v272;
      v292 = v281 + 16;
      v285 = (v281 + 8);
      v278 = (v276 + 32);
      v275 = (v276 + 8);
      v268 = MEMORY[0x277D84F90];
      v271 = (v281 + 32);
      v80 = v287;
      v81 = v280;
      v82 = v279;
      v276 = v76 + v272;
      v277 = v53;
      do
      {
        if (v78 >= *(v77 + 16))
        {
          goto LABEL_167;
        }

        v83 = *(v281 + 72);
        v84 = *(v281 + 16);
        v84(v82, v79 + v83 * v78, v80);
        sub_224DAC558();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v278)(v289, v81, v290);
          v85 = sub_224DAC4B8();
          v86 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          if ((*(*(v87 - 8) + 48))(&v85[v86], 1, v87))
          {
            swift_endAccess();
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v88 = sub_224DA9FE8();
          v90 = v89;
          swift_endAccess();
          v91 = v77;

          v92 = v301;
          if (*(v301 + 16) && (sub_224DAFE68(), sub_224DAEE78(), v93 = sub_224DAFEA8(), v94 = -1 << *(v92 + 32), v95 = v93 & ~v94, ((*(v92 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) != 0))
          {
            v96 = ~v94;
            v97 = v287;
            v98 = v274;
            while (1)
            {
              v99 = (*(v92 + 48) + 16 * v95);
              if (*v99 == v88 && v99[1] == v90)
              {
                break;
              }

              v101 = sub_224DAFD88();
              v98 = v274;
              v97 = v287;
              if (v101)
              {
                break;
              }

              v95 = (v95 + 1) & v96;
              if (((*(v92 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            v108 = v279;
            v109 = v97;
            v110 = v98;
            (v84)(v98, v279);
            v111 = v299;
            v112 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v111;
            v113 = v88;
            v82 = v108;
            sub_224B1F374(v110, v113, v90, v112);

            (*v275)(v289, v290);
            (*v285)(v108, v109);
            v288 = aBlock[0];
            v299 = aBlock[0];
            v54 = 0x27853F000;
            v81 = v280;
            v77 = v91;
            v53 = v277;
            v79 = v276;
          }

          else
          {
            v97 = v287;
LABEL_54:
            v102 = v97;

            v82 = v279;
            v84(v283, v279, v102);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v103 = v268;
            }

            else
            {
              v103 = sub_224AD9758(0, v268[2] + 1, 1, v268);
            }

            v54 = 0x27853F000;
            v81 = v280;
            v77 = v91;
            v105 = v103[2];
            v104 = v103[3];
            v79 = v276;
            if (v105 >= v104 >> 1)
            {
              v268 = sub_224AD9758((v104 > 1), v105 + 1, 1, v103);
            }

            else
            {
              v268 = v103;
            }

            (*v275)(v289, v290);
            v106 = v287;
            (*v285)(v82, v287);
            v107 = v268;
            v268[2] = v105 + 1;
            (*v271)(&v107[v272 + v105 * v83], v283, v106);
            v53 = v277;
          }
        }

        else
        {
          (*v285)(v82, v80);
          sub_224B9D584(v81, MEMORY[0x277CF9A70]);
          v54 = 0x27853F000;
        }

        ++v78;
        v80 = v287;
        v6 = v284;
      }

      while (v78 != v53);
    }

    else
    {

      v268 = MEMORY[0x277D84F90];
      v6 = v284;
    }

    v298 = MEMORY[0x277D84FA0];
    v114 = sub_224DA1190(MEMORY[0x277D84F90]);
    v115 = 0;
    v117 = v266 + 64;
    v116 = *(v266 + 64);
    v118 = 1 << *(v266 + 32);
    v292 = v114;
    v297 = v114;
    v119 = -1;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    v120 = v119 & v116;
    v255 = (v118 + 63) >> 6;
    v261 = v263 + 16;
    v260 = v263 + 32;
    v280 = (v281 + 16);
    v285 = (v281 + 56);
    v264 = (v263 + 8);
    v265 = v266 + 64;
    while (1)
    {
      if (v120)
      {
        v272 = v115;
        v121 = v115;
LABEL_79:
        v271 = ((v120 - 1) & v120);
        v124 = __clz(__rbit64(v120)) | (v121 << 6);
        v125 = v266;
        v126 = v263;
        v127 = v262;
        v128 = v269;
        (*(v263 + 16))(v262, *(v266 + 48) + *(v263 + 72) * v124, v269);
        v129 = *(*(v125 + 56) + 8 * v124);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        v131 = *(v130 + 48);
        v132 = *(v126 + 32);
        v133 = v267;
        v132(v267, v127, v128);
        *(v133 + v131) = v129;
        (*(*(v130 - 8) + 56))(v133, 0, 1, v130);
        v134 = v129;
        v6 = v284;
      }

      else
      {
        if (v255 <= (v115 + 1))
        {
          v122 = v115 + 1;
        }

        else
        {
          v122 = v255;
        }

        v123 = v122 - 1;
        while (1)
        {
          v121 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            goto LABEL_161;
          }

          if (v121 >= v255)
          {
            break;
          }

          v120 = *(v117 + 8 * v121);
          ++v115;
          if (v120)
          {
            v272 = v121;
            goto LABEL_79;
          }
        }

        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        v133 = v267;
        (*(*(v202 - 8) + 56))(v267, 1, 1, v202);
        v271 = 0;
        v272 = v123;
      }

      sub_224B9D454(v133, v6);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v135 - 8) + 48))(v6, 1, v135) == 1)
      {

        v203 = v298;
        v204 = v298 + 56;
        v205 = 1 << *(v298 + 32);
        v206 = -1;
        if (v205 < 64)
        {
          v206 = ~(-1 << v205);
        }

        v6 = v206 & *(v298 + 56);
        v291 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
        v53 = (v205 + 63) >> 6;

        v207 = 0;
        *&v208 = 136315138;
        v290 = v208;
        v278 = v203;
        while (v6)
        {
          v209 = v207;
LABEL_146:
          v210 = __clz(__rbit64(v6));
          v6 &= v6 - 1;
          v211 = (*(v203 + 48) + ((v209 << 10) | (16 * v210)));
          v212 = *v211;
          v213 = v211[1];
          v214 = v253;
          v215 = *(v253 + 16);

          if (v215 && (v216 = sub_224A3A40C(v212, v213), (v217 & 1) != 0))
          {
            v218 = v216;

            v219 = *(*(v214 + 56) + 8 * v218);
            sub_224B9BEE4(v219);
          }

          else
          {

            v219 = sub_224DAB228();
            v220 = sub_224DAF288();

            if (os_log_type_enabled(v219, v220))
            {
              v221 = swift_slowAlloc();
              v222 = swift_slowAlloc();
              aBlock[0] = v222;
              *v221 = v290;
              v223 = sub_224A33F74(v212, v213, aBlock);

              *(v221 + 4) = v223;
              _os_log_impl(&dword_224A2F000, v219, v220, "Attempted to subscribe to push: No valid push extension for %s", v221, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v222);
              MEMORY[0x22AA5EED0](v222, -1, -1);
              v224 = v221;
              v203 = v278;
              MEMORY[0x22AA5EED0](v224, -1, -1);
            }

            else
            {
            }
          }

          v207 = v209;
        }

        while (1)
        {
          v209 = v207 + 1;
          if (__OFADD__(v207, 1))
          {
            goto LABEL_166;
          }

          if (v209 >= v53)
          {

            v225 = v268[2];
            if (v225)
            {
              v226 = *(v281 + 80);
              v227 = v268 + ((v226 + 32) & ~v226);
              v289 = (v281 + 32);
              v286 = *(v281 + 72);
              v285 = *(v281 + 16);
              *&v290 = v226;
              v284 = ((v226 + 24) & ~v226);
              v283 = &v284[v250];
              v282 = v294;
              v281 = v252 + 8;
              v279 = (v251 + 8);
              v228 = v247;
              v229 = v246;
              v230 = v287;
              do
              {
                v231 = v257;
                (v285)(v257, v227, v230);
                v232 = __swift_project_boxed_opaque_existential_1(v256, v256[3]);
                v233 = *v232;
                v291 = *(*v232 + 40);
                v234 = *v289;
                v235 = v274;
                (*v289)(v274, v231, v230);
                v236 = swift_allocObject();
                *(v236 + 16) = v233;
                v234(&v284[v236], v235, v230);
                v294[2] = sub_224AC2200;
                v295 = v236;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                v294[0] = sub_224A39F40;
                v294[1] = &block_descriptor_17;
                v237 = _Block_copy(aBlock);

                sub_224DAB7E8();
                v296 = MEMORY[0x277D84F90];
                sub_224AA6824(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
                sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
                v238 = v259;
                sub_224DAF788();
                MEMORY[0x22AA5D760](0, v229, v228, v237);
                _Block_release(v237);
                (*v281)(v228, v238);
                (*v279)(v229, v258);

                v227 = &v286[v227];
                --v225;
              }

              while (v225);
            }

            v239 = swift_allocObject();
            *(v239 + 16) = MEMORY[0x277D84FA0];
            v240 = v254;
            v6 = *(v254 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock);
            os_unfair_lock_lock(*(v6 + 16));
            v241 = v240;
            v53 = v273;
            sub_224B9C440(v241, &v297, &v300, v239 + 16, &v299, &v298);
            if (!v53)
            {

              os_unfair_lock_unlock(*(v6 + 16));

              v242 = v249;
              if (v248)
              {
              }

              else
              {
                v243 = sub_224DAF128();
                (*(*(v243 - 8) + 56))(v242, 1, 1, v243);
                v244 = swift_allocObject();
                v244[2] = 0;
                v244[3] = 0;
                v245 = v254;
                v244[4] = v239;
                v244[5] = v245;

                sub_224D00D34(0, 0, v242, &unk_224DB8D18, v244);
              }

              return;
            }

            goto LABEL_168;
          }

          v6 = *(v204 + 8 * v209);
          ++v207;
          if (v6)
          {
            goto LABEL_146;
          }
        }
      }

      v270 = *(v6 + *(v135 + 48));
      v136 = [v270 containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v137 = sub_224DAF008();

      v53 = v273;
      v138 = sub_224A7B5CC(v137);
      v273 = v53;

      if (v138 >> 62)
      {
        break;
      }

      v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v139)
      {
        goto LABEL_83;
      }

LABEL_68:

      (*v264)(v6, v269);
      v117 = v265;
      v115 = v272;
      v120 = v271;
    }

    v139 = sub_224DAF838();
    if (!v139)
    {
      goto LABEL_68;
    }

LABEL_83:
    v140 = 0;
    v283 = (v138 & 0xC000000000000001);
    v279 = (v138 & 0xFFFFFFFFFFFFFF8);
    v278 = (v138 + 32);
    v276 = v138;
    v275 = v139;
    while (2)
    {
      if (v283)
      {
        v141 = MEMORY[0x22AA5DCC0](v140, v138);
      }

      else
      {
        if (v140 >= *(v279 + 2))
        {
          goto LABEL_160;
        }

        v141 = v278[v140];
      }

      v6 = v141;
      if (__OFADD__(v140++, 1))
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
      }

      else
      {
        v143 = [v141 extensionIdentity];
        v144 = v143;
        v145 = v282;
        if (!v282[2] || (v53 = v282, v146 = sub_224A3E7EC(v143), (v147 & 1) == 0))
        {

          goto LABEL_85;
        }

        v148 = *(v145[7] + 8 * v146);

        if (!(v148 >> 62))
        {
          v149 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v149)
          {
            goto LABEL_95;
          }

LABEL_132:

LABEL_85:

          v6 = v284;
          if (v140 == v139)
          {
            goto LABEL_68;
          }

          continue;
        }

        v149 = sub_224DAF838();
        if (!v149)
        {
          goto LABEL_132;
        }

LABEL_95:
        if (v149 >= 1)
        {
          v277 = v140;
          v150 = 0;
          v53 = v148 & 0xC000000000000001;
          v291 = v148;
          *&v290 = v149;
          v289 = (v148 & 0xC000000000000001);
          while (1)
          {
            v151 = v53 ? MEMORY[0x22AA5DCC0](v150, v148) : *(v148 + 8 * v150 + 32);
            v152 = v151;
            if ([v151 *(v54 + 2768)])
            {
              break;
            }

LABEL_98:
            if (v149 == ++v150)
            {

              v138 = v276;
              v139 = v275;
              v140 = v277;
              goto LABEL_85;
            }
          }

          v153 = [v152 kind];
          v154 = sub_224DAEE18();
          v156 = v155;

          v157 = [v6 kind];
          v158 = sub_224DAEE18();
          v160 = v159;

          if (v154 == v158 && v156 == v160)
          {
          }

          else
          {
            v162 = sub_224DAFD88();

            if ((v162 & 1) == 0)
            {

LABEL_129:
              v148 = v291;
              v149 = v290;
              v53 = v289;
              goto LABEL_98;
            }
          }

          v163 = [v6 extensionIdentity];
          v164 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v166 = *(*(v165 - 8) + 48);
          if (v166(&v163[v164], 1, v165))
          {
            swift_endAccess();
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v167 = sub_224DA9FE8();
          v169 = v168;
          swift_endAccess();

          if (*(v288 + 16))
          {
            v170 = sub_224A3A40C(v167, v169);
            v172 = v171;

            if (v172)
            {
              v173 = v281;
              v174 = *(v288 + 56) + *(v281 + 72) * v170;
              v175 = v286;
              v176 = v287;
              (*(v281 + 16))(v286, v174, v287);
              (*(v173 + 56))(v175, 0, 1, v176);
              sub_224A3311C(v175, &qword_27D6F3BB0, &unk_224DB8CF0);
LABEL_119:
              v183 = [v6 extensionIdentity];
              v184 = *MEMORY[0x277CFA130];
              swift_beginAccess();
              v185 = v166(&v183[v184], 1, v165);
              v186 = v292;
              if (v185)
              {
                swift_endAccess();
                swift_beginAccess();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
              }

              v187 = sub_224DA9FE8();
              v189 = v188;
              swift_endAccess();
              v54 = 0x27853F000;

              if (*(v186 + 16) && (v190 = sub_224A3A40C(v187, v189), (v191 & 1) != 0))
              {
                v296 = *(*(v186 + 56) + 8 * v190);
              }

              else
              {
                v296 = MEMORY[0x277D84FA0];
              }

              v192 = [v152 kind];
              v193 = sub_224DAEE18();
              v195 = v194;

              v196 = [v6 widget];
              v197 = [v196 intentReference];

              if (v197)
              {
                v198 = [v197 stableHash];
              }

              else
              {
                v198 = 0;
              }

              v302[0] = v187;
              v302[1] = v189;
              v302[2] = v193;
              v302[3] = v195;
              v302[4] = v198;
              v303 = v197 == 0;

              sub_224ADBFA4(aBlock, v302);

              v200 = v296;
              v199 = v297;
              v201 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v199;
              sub_224B20F14(v200, v187, v189, v201);

              v292 = aBlock[0];
              v297 = aBlock[0];
              goto LABEL_129;
            }
          }

          else
          {
          }

          v177 = v286;
          (*v285)(v286, 1, 1, v287);
          sub_224A3311C(v177, &qword_27D6F3BB0, &unk_224DB8CF0);
          v178 = [v6 extensionIdentity];
          v179 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          if (v166(&v178[v179], 1, v165))
          {
            swift_endAccess();
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v180 = sub_224DA9FE8();
          v182 = v181;
          swift_endAccess();

          sub_224ADAF60(aBlock, v180, v182);

          goto LABEL_119;
        }
      }

      break;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:

    os_unfair_lock_unlock(*(v6 + 16));
    __break(1u);
  }

  else
  {
  }
}

double sub_224B9B3A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224B99110(0);
  }

  return result;
}

uint64_t sub_224B9B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224B9B424, 0, 0);
}

uint64_t sub_224B9B424(uint64_t a1)
{
  v2 = sub_224DAC4B8();
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_224B9B4C8;

  return sub_224B96290(v2);
}

uint64_t sub_224B9B4C8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_224B9B604, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_224B9B604()
{
  v1 = *(v0 + 8);

  return v1();
}

double sub_224B9B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v34 = a2;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v13 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v14);
  v16 = &v33 - v15;
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a6;
  *(v17 + 6) = a7;
  v18 = (a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v20 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v19 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v18 = sub_224B9D5F4;
  v18[1] = v17;

  v21 = a4;

  sub_224A77FD0(a6, a7);
  sub_224A3D418(v20, v19);
  v22 = v35;
  (*(v13 + 16))(v16, v36, v35);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = v21;
  (*(v13 + 32))(v24 + v23, v16, v22);
  v25 = v34;
  v26 = (v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v27 = *(v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v28 = *(v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v26 = sub_224B9D604;
  v26[1] = v24;

  v29 = v21;
  sub_224A3D418(v27, v28);
  v30 = *(a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService + 24);
  v31 = *(a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService), v30);
  (*(v31 + 16))(v25, v30, v31);

  return result;
}

void sub_224B9B8C0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v28 = a2;
  v13 = sub_224DAE6E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &aBlock[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v18 = v33;
      sub_224DAE628();
      swift_beginAccess();

      sub_224A77FD0(a7, a8);
      v19 = sub_224DAE618();
      v20 = swift_allocObject();
      *(v20 + 16) = v28;
      *(v20 + 24) = a3;
      v31 = sub_224B9D69C;
      v32 = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v30 = &block_descriptor_28_0;
      v21 = _Block_copy(aBlock);

      [v18 widgetPushTokensDidChange:v19 completion:v21];
      _Block_release(v21);
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  v22 = a5;
  v23 = sub_224DAB228();
  v24 = sub_224DAF288();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_224A2F000, v23, v24, "Unable to update state in extension %{public}@: No extension session", v25, 0xCu);
    sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v14 + 104))(v17, *MEMORY[0x277CE3C40], v13);
  v19 = sub_224DAF638();
  v28();
LABEL_8:
}

uint64_t sub_224B9BC74(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a3;
    v8 = a5;
    v9 = sub_224DAB228();
    v10 = sub_224DAF288();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      v13 = a3;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&dword_224A2F000, v9, v10, "Error occurred when sending push token to extension %{public}@: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v12, -1, -1);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    v17 = a5;
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_224A2F000, v18, v19, "Push token sent to extension %{public}@ successfully.", v20, 0xCu);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224B9BEE4(void *a1)
{
  v3 = sub_224DAE168();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v44 - v7;
  v9 = sub_224DAC5E8();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAE138();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v20 = *(v14 + 104);
  v48 = v44 - v21;
  v20();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_224DAC6D8();
  if (v50)
  {
    v45 = v13;
    sub_224A36F98(&v49, v51);
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v22 = sub_224DAE288();
    if (v23)
    {
      v44[1] = v22;
      v24 = sub_224DAE0D8();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = v48;
      v26 = v45;
      (*(v14 + 16))(v18, v48, v45);
      v27 = a1;
      sub_224DAE148();
      sub_224DAC568();
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
      v28 = sub_224AB65D4(v12, 1);
      (*(v46 + 8))(v12, v47, v28);
      (*(v14 + 8))(v25, v26);
    }

    else
    {
      v36 = a1;
      v37 = sub_224DAB228();
      v38 = sub_224DAF288();

      v39 = os_log_type_enabled(v37, v38);
      v40 = v45;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        *(v41 + 4) = v36;
        *v42 = v36;
        v43 = v36;
        _os_log_impl(&dword_224A2F000, v37, v38, "Error occured when subscribing to pushes for extension %{public}@: Could not find push environment entitlement.", v41, 0xCu);
        sub_224A3311C(v42, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v42, -1, -1);
        MEMORY[0x22AA5EED0](v41, -1, -1);
      }

      (*(v14 + 8))(v48, v40);
    }

    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_224A3311C(&v49, &unk_27D6F4700, &unk_224DB3A10);
    v29 = a1;
    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_224A2F000, v30, v31, "Error occured when subscribing to pushes for extension %{public}@: Could not find extension in extensionManager.", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    return (*(v14 + 8))(v48, v13);
  }
}

void sub_224B9C440(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  v85 = a6;
  v87 = a5;
  v91 = a4;
  v100 = a3;
  v97 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v86 = &v84 - v11;
  v95 = a1;
  v89 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets;
  v12 = *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets);
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = 1 << *(*(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets) + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v98 = *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets);
  swift_bridgeObjectRetain_n();
  v20 = 0;
  while (v18)
  {
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = (*(v98 + 48) + ((v20 << 10) | (16 * v22)));
    v25 = *v23;
    v24 = v23[1];
    v26 = *(*v97 + 16);

    if (v26 && (sub_224A3A40C(v25, v24), (v27 & 1) != 0) || (v28 = *v100, !*(*v100 + 16)))
    {
    }

    else
    {
      v29 = sub_224A3A40C(v25, v24);
      v31 = v30;

      if (v31)
      {
        sub_224A3DC84(v99, *(*(v28 + 56) + 8 * v29));
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v14 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  v88 = v7;
  v32 = v98;

  v33 = *v97;
  v34 = *v97 + 64;
  v35 = 1 << *(*v97 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(*v97 + 64);
  v94 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  *&v40 = 136315138;
  v90 = v40;
  v93 = v33;
  v96 = v38;
  while (v37)
  {
LABEL_26:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = (*(v33 + 48) + 16 * v43);
    v46 = *v44;
    v45 = v44[1];
    v47 = *(*(v33 + 56) + 8 * v43);
    v48 = *v100;
    v49 = *(*v100 + 16);

    if (!v49)
    {
      goto LABEL_33;
    }

    v50 = sub_224A3A40C(v46, v45);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);
      v53 = *(v32 + 16);
      v92 = v52;
      if (v53 && (sub_224A3A40C(v46, v45), (v54 & 1) != 0))
      {

        v56 = sub_224CBDAF8(v55, v47);

        if (v56)
        {
          v57 = v92;
          goto LABEL_50;
        }

LABEL_49:
        sub_224A3DC84(v99, v92);
        v57 = v99[0];
LABEL_50:

        v38 = v96;
      }

      else
      {

        v65 = *v87;
        if (*(*v87 + 16) && (v66 = sub_224A3A40C(v46, v45), (v67 & 1) != 0))
        {
          v68 = v66;
          v69 = *(v65 + 56);
          v70 = sub_224DAC5E8();
          v71 = *(v70 - 8);
          v72 = v71;
          v73 = v69 + *(v71 + 72) * v68;
          v33 = v93;
          v74 = v86;
          (*(v71 + 16))(v86, v73, v70);
          (*(v72 + 56))(v74, 0, 1, v70);

          sub_224A3311C(v74, &qword_27D6F3BB0, &unk_224DB8CF0);
          v38 = v96;
        }

        else
        {
          v75 = sub_224DAC5E8();
          v76 = v86;
          (*(*(v75 - 8) + 56))(v86, 1, 1, v75);
          sub_224A3311C(v76, &qword_27D6F3BB0, &unk_224DB8CF0);
          v77 = *v85;
          if (!*(*v85 + 16))
          {

            goto LABEL_49;
          }

          sub_224DAFE68();

          sub_224DAEE78();
          v78 = sub_224DAFEA8();
          v79 = -1 << *(v77 + 32);
          v80 = v78 & ~v79;
          if (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
LABEL_47:

            v32 = v98;
            v33 = v93;
            goto LABEL_49;
          }

          v81 = ~v79;
          while (1)
          {
            v82 = (*(v77 + 48) + 16 * v80);
            v83 = *v82 == v46 && v82[1] == v45;
            if (v83 || (sub_224DAFD88() & 1) != 0)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          v32 = v98;
          v33 = v93;
          v38 = v96;
        }
      }
    }

    else
    {

LABEL_33:

      v58 = sub_224DAB228();
      v59 = sub_224DAF288();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v99[0] = v61;
        *v60 = v90;
        v62 = sub_224A33F74(v46, v45, v99);

        *(v60 + 4) = v62;
        _os_log_impl(&dword_224A2F000, v58, v59, "Checking for added / changed entries: No valid push extension for %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v63 = v61;
        v33 = v93;
        MEMORY[0x22AA5EED0](v63, -1, -1);
        v64 = v60;
        v32 = v98;
        MEMORY[0x22AA5EED0](v64, -1, -1);
      }

      else
      {
      }

      v38 = v96;
    }
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      *(v95 + v89) = *v97;

      return;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      goto LABEL_26;
    }
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_224B9CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_224B9CB68, 0, 0);
}

void sub_224B9CB68()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    sub_224DAF538();
    sub_224AA6824(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v3 = v0[2];
    v4 = v0[3];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[6];
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v5 = 0;
  }

  v0[14] = v3;
  v0[15] = v4;
  v0[17] = v5;
  v0[18] = v7;
  v0[16] = v6;
  if (v3 < 0)
  {
    v16 = sub_224DAF878();
    if (!v16)
    {
LABEL_20:
      sub_224A3B7E4(v0[14]);
      v18 = v0[1];

      v18();
      return;
    }

    v0[11] = v16;
    sub_224DAF538();
    swift_dynamicCast();
    v15 = v0[10];
    v12 = v5;
    v14 = v7;
LABEL_16:
    v0[20] = v12;
    v0[21] = v14;
    v0[19] = v15;
    if (v15)
    {
      v17 = swift_task_alloc();
      v0[22] = v17;
      *v17 = v0;
      v17[1] = sub_224B9CDFC;

      sub_224B96290(v15);
      return;
    }

    goto LABEL_20;
  }

  v11 = v7;
  v12 = v5;
  if (v7)
  {
LABEL_13:
    v14 = (v11 - 1) & v11;
    v15 = *(*(v3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    goto LABEL_16;
  }

  v13 = v5;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v11 = *(v4 + 8 * v12);
    ++v13;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_224B9CDFC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_224B9D0D8;
  }

  else
  {
    v2 = sub_224B9CF10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_224B9CF10()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 112);
  if (v3 < 0)
  {
    v9 = sub_224DAF878();
    if (!v9)
    {
LABEL_14:
      sub_224A3B7E4(*(v0 + 112));
      v11 = *(v0 + 8);

      v11();
      return;
    }

    *(v0 + 88) = v9;
    sub_224DAF538();
    swift_dynamicCast();
    v8 = *(v0 + 80);
    v5 = v1;
    v7 = v2;
LABEL_10:
    *(v0 + 160) = v5;
    *(v0 + 168) = v7;
    *(v0 + 152) = v8;
    if (v8)
    {
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_224B9CDFC;

      sub_224B96290(v8);
      return;
    }

    goto LABEL_14;
  }

  v4 = v2;
  v5 = v1;
  if (v2)
  {
LABEL_7:
    v7 = (v4 - 1) & v4;
    v8 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
    goto LABEL_10;
  }

  v6 = v1;
  while (1)
  {
    v5 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v5 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_14;
    }

    v4 = *(*(v0 + 120) + 8 * v5);
    ++v6;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_224B9D0D8()
{
  v1 = *(v0 + 112);

  sub_224A3B7E4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_224B9D16C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  sub_224DAEE78();
  sub_224DAFE88();
  if (v2 != 1)
  {
    MEMORY[0x22AA5E200](v1);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B9D214(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_224DAEE78();
  sub_224DAEE78();
  if (v3 == 1)
  {
    return sub_224DAFE88();
  }

  sub_224DAFE88();
  return MEMORY[0x22AA5E200](v2);
}

uint64_t sub_224B9D294(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  sub_224DAEE78();
  sub_224DAFE88();
  if (v3 != 1)
  {
    MEMORY[0x22AA5E200](v2);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B9D338(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_224DAFD88()) && (v2 == v6 && v3 == v7 || (sub_224DAFD88()))
  {
    if (v5)
    {
      if (v9)
      {
        return 1;
      }
    }

    else
    {
      if (v4 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_224B9D400()
{
  result = qword_27D6F4928;
  if (!qword_27D6F4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4928);
  }

  return result;
}

uint64_t sub_224B9D454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B9D4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224B9CB48(a1, v4, v5, v7, v6);
}

uint64_t sub_224B9D584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224B9D604(int a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_224B9BC74(a1, a2 & 1, a3, v7, v8);
}

uint64_t sub_224B9D748(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACFF60;

  return sub_224B961F4(a1, v4, v5, v7, v6);
}

uint64_t sub_224B9D808(uint64_t a1)
{
  v4 = *(sub_224DAC4D8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B9B404(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_224B9D90C()
{
  v1 = v0;
  v2 = sub_224DAC4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAC4D8();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v66 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAC4F8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v11);
  v64 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_224DAC528();
  v13 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v14);
  v62 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_224DAC538();
  MEMORY[0x28223BE20](v70, v16);
  v69 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DAC5E8();
  v18 = *(v79 - 8);
  v20 = MEMORY[0x28223BE20](v79, v19);
  v77 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v76 = &v51 - v23;
  swift_beginAccess();
  v24 = *(v1 + 16);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v68 = v18 + 16;
  v61 = (v13 + 32);
  v60 = (v10 + 88);
  v59 = *MEMORY[0x277CF9A60];
  v58 = (v13 + 8);
  v57 = (v10 + 8);
  v56 = (v78 + 32);
  v55 = (v3 + 88);
  v54 = *MEMORY[0x277CF9A50];
  v53 = (v78 + 8);
  v52 = (v3 + 8);
  v78 = v18;
  v30 = (v18 + 32);
  v74 = v24;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  v72 = v6;
  v73 = v2;
  v71 = v7;
  for (i = v30; v28; v7 = v71)
  {
    v33 = v6;
    v34 = v7;
    v35 = v2;
LABEL_9:
    v37 = *(v74 + 56);
    v75 = *(v78 + 72);
    (*(v78 + 16))(v76, v37 + v75 * (__clz(__rbit64(v28)) | (v31 << 6)), v79);
    v38 = v69;
    sub_224DAC558();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v66;
      (*v56)(v66, v38, v34);
      sub_224DAC498();
      v40 = (*v55)(v33, v35);
      if (v40 != v54)
      {
        goto LABEL_22;
      }

      (*v53)(v39, v34);
      (*v52)(v33, v35);
    }

    else
    {
      v41 = v62;
      v42 = v63;
      (*v61)(v62, v38, v63);
      v43 = v64;
      sub_224DAC4E8();
      v44 = v65;
      v45 = (*v60)(v43, v65);
      if (v45 != v59)
      {
        goto LABEL_23;
      }

      (*v58)(v41, v42);
      (*v57)(v43, v44);
    }

    v46 = *i;
    (*i)(v77, v76, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224ADA0B0(0, *(v32 + 16) + 1, 1);
      v32 = v80;
    }

    v49 = *(v32 + 16);
    v48 = *(v32 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_224ADA0B0((v48 > 1), v49 + 1, 1);
      v32 = v80;
    }

    v28 &= v28 - 1;
    *(v32 + 16) = v49 + 1;
    v46((v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + v49 * v75), v77, v79);
    v6 = v72;
    v2 = v73;
  }

  while (1)
  {
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v36 >= v29)
    {

      return v32;
    }

    v28 = *(v25 + 8 * v36);
    ++v31;
    if (v28)
    {
      v33 = v6;
      v34 = v7;
      v35 = v2;
      v31 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  sub_224DAFD78();
  __break(1u);
LABEL_23:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224B9E010()
{
  v1 = v0;
  v2 = sub_224DAC4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_224DAC4D8();
  v7 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v8);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DAC4F8();
  v10 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v11);
  v77 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DAC528();
  v13 = *(v76 - 8);
  MEMORY[0x28223BE20](v76 - 8, v14);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DAC538();
  MEMORY[0x28223BE20](v86, v16);
  v85 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v19 = MEMORY[0x28223BE20](v84, v18);
  v83 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v88 = (&v64 - v22);
  swift_beginAccess();
  v23 = *(v1 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v73 = (v10 + 88);
  v74 = (v13 + 32);
  v72 = *MEMORY[0x277CF9A60];
  v71 = (v13 + 8);
  v70 = (v10 + 96);
  v69 = (v7 + 32);
  v68 = (v3 + 88);
  v67 = *MEMORY[0x277CF9A50];
  v66 = (v7 + 8);
  v65 = (v3 + 96);
  v87 = v23;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v89 = MEMORY[0x277D84F90];
  v81 = v6;
  for (i = v2; v27; *(v61 + 5) = v56)
  {
LABEL_8:
    v31 = __clz(__rbit64(v27)) | (v29 << 6);
    v32 = *(v87 + 56);
    v33 = (*(v87 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = sub_224DAC5E8();
    v37 = *(v36 - 8);
    v38 = v32 + *(v37 + 72) * v31;
    v39 = v84;
    v40 = v88;
    (*(v37 + 16))(v88 + *(v84 + 48), v38, v36);
    *v40 = v35;
    v40[1] = v34;
    v41 = v83;
    sub_224BA21A0(v40, v83);

    v42 = *(v39 + 48);
    v43 = v85;
    sub_224DAC558();
    (*(v37 + 8))(v41 + v42, v36);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v79;
      v45 = v80;
      (*v69)(v79, v43, v80);
      v46 = v81;
      sub_224DAC498();
      v47 = i;
      v48 = (*v68)(v46, i);
      if (v48 != v67)
      {
        goto LABEL_21;
      }

      (*v66)(v44, v45);
      sub_224A3311C(v88, &qword_27D6F38A0, &unk_224DB4630);
      (*v65)(v46, v47);
      v49 = v46;
    }

    else
    {
      v50 = v75;
      v51 = v43;
      v52 = v76;
      (*v74)(v75, v51, v76);
      v53 = v77;
      sub_224DAC4E8();
      v54 = v78;
      v55 = (*v73)(v53, v78);
      if (v55 != v72)
      {
        goto LABEL_22;
      }

      (*v71)(v50, v52);
      sub_224A3311C(v88, &qword_27D6F38A0, &unk_224DB4630);
      (*v70)(v53, v54);
      v49 = v53;
    }

    v57 = *v49;
    v56 = v49[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_224A865C4(0, *(v89 + 2) + 1, 1, v89);
    }

    v59 = *(v89 + 2);
    v58 = *(v89 + 3);
    if (v59 >= v58 >> 1)
    {
      v89 = sub_224A865C4((v58 > 1), v59 + 1, 1, v89);
    }

    v27 &= v27 - 1;
    v60 = v89;
    *(v89 + 2) = v59 + 1;
    v61 = &v60[16 * v59];
    *(v61 + 4) = v57;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v62 = sub_224AE8AF4(v89);

      return v62;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  sub_224DAFD78();
  __break(1u);
LABEL_22:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224B9E770(uint64_t a1)
{
  v2 = sub_224DAC4D8();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4940, &qword_224DB8DE0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v15);
  v17 = (&v60 - v16);
  v18 = sub_224DAC528();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DAC538();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v61;
    v28 = v62;
    (*(v61 + 32))(v5, v26, v62);
    v29 = v63;
    v30 = swift_beginAccess();
    v31 = *(v29 + 16);
    MEMORY[0x28223BE20](v30, v32);
    *(&v60 - 2) = v5;

    sub_224AFD4D8(sub_224BA2364, (&v60 - 4), v31, v14);

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
    if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
    {
      v34 = &qword_27D6F4940;
      v35 = &qword_224DB8DE0;
      v36 = v14;
    }

    else
    {
      v45 = *v14;
      v46 = v14[1];
      v47 = *(v33 + 48);
      v48 = sub_224DAC5E8();
      (*(*(v48 - 8) + 8))(v14 + v47, v48);
      sub_224B9EF28(v45, v46, v9);

      v34 = &qword_27D6F3BB0;
      v35 = &unk_224DB8CF0;
      v36 = v9;
    }

    sub_224A3311C(v36, v34, v35);
    (*(v27 + 8))(v5, v28);
  }

  else
  {
    (*(v19 + 32))(v22, v26, v18);
    v37 = v63;
    v38 = swift_beginAccess();
    v39 = *(v37 + 16);
    MEMORY[0x28223BE20](v38, v40);
    *(&v60 - 2) = v22;

    sub_224AFD4D8(sub_224BA2398, (&v60 - 4), v39, v17);

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
    if ((*(*(v41 - 8) + 48))(v17, 1, v41) == 1)
    {
      v42 = &qword_27D6F4940;
      v43 = &qword_224DB8DE0;
      v44 = v17;
    }

    else
    {
      v49 = *v17;
      v50 = v17[1];
      v51 = *(v41 + 48);
      v52 = sub_224DAC5E8();
      (*(*(v52 - 8) + 8))(v17 + v51, v52);
      sub_224B9EF28(v49, v50, v9);

      v42 = &qword_27D6F3BB0;
      v43 = &unk_224DB8CF0;
      v44 = v9;
    }

    sub_224A3311C(v44, v42, v43);
    (*(v19 + 8))(v22, v18);
  }

  v53 = v64;
  v54 = sub_224DAC588();
  v56 = v55;
  v57 = sub_224DAC5E8();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v9, v53, v57);
  (*(v58 + 56))(v9, 0, 1, v57);
  swift_beginAccess();
  sub_224B07474(v9, v54, v56);
  return swift_endAccess();
}

uint64_t sub_224B9EDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  sub_224BA21A0(a1, &v20 - v8);

  v10 = *(v6 + 56);
  v11 = sub_224DAC588();
  v13 = v12;
  v14 = sub_224DAC5E8();
  v15 = (*(*(v14 - 8) + 8))(&v9[v10], v14);
  if (v11 == a3(v15) && v13 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_224DAFD88();
  }

  return v18 & 1;
}

uint64_t sub_224B9EF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21[-v9];
  v11 = sub_224DAC5E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v16 = *(v3 + 16);
  if (*(v16 + 16))
  {

    v17 = sub_224A3A40C(a1, a2);
    if (v18)
    {
      (*(v12 + 16))(v15, *(v16 + 56) + *(v12 + 72) * v17, v11);

      (*(v12 + 32))(a3, v15, v11);
      v19 = *(v12 + 56);
      v19(v10, 1, 1, v11);
      swift_beginAccess();

      sub_224B07474(v10, a1, a2);
      swift_endAccess();
      return (v19)(a3, 0, 1, v11);
    }
  }

  return (*(v12 + 56))(a3, 1, 1, v11);
}

uint64_t sub_224B9F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_224A3A40C(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = *(v7 + 56);
      v12 = sub_224DAC5E8();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a3, v11 + *(v13 + 72) * v10, v12);

      return (*(v13 + 56))(a3, 0, 1, v12);
    }
  }

  v15 = sub_224DAC5E8();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_224B9F2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v65 = sub_224DAC4A8();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DAC4D8();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v10);
  v71 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_224DAC4F8();
  v12 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v13);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_224DAC528();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v16);
  v69 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_224DAC538();
  MEMORY[0x28223BE20](v68, v18);
  v67 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  MEMORY[0x28223BE20](v66, v20);
  v22 = &v52 - v21;
  swift_beginAccess();
  v23 = *(v3 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v60 = (v12 + 88);
  v61 = (v15 + 32);
  v59 = *MEMORY[0x277CF9A60];
  v58 = (v12 + 96);
  v62 = (v15 + 8);
  v56 = (v9 + 32);
  v55 = (v5 + 88);
  v54 = *MEMORY[0x277CF9A50];
  v53 = (v5 + 96);
  v57 = (v9 + 8);
  v74 = v23;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v72 = a1;
  while (1)
  {
    if (!v27)
    {
      while (1)
      {
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v32 >= v28)
        {
          v50 = 0;
          goto LABEL_25;
        }

        v27 = *(v24 + 8 * v32);
        ++v29;
        if (v27)
        {
          v31 = v8;
          v29 = v32;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      result = sub_224DAFD78();
      __break(1u);
      return result;
    }

    v31 = v8;
LABEL_12:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v34 = v33 | (v29 << 6);
    v35 = *(v74 + 56);
    v36 = (*(v74 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = sub_224DAC5E8();
    (*(*(v39 - 8) + 16))(&v22[*(v66 + 48)], v35 + *(*(v39 - 8) + 72) * v34, v39);
    *v22 = v38;
    *(v22 + 1) = v37;

    v40 = v67;
    sub_224DAC558();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    (*v61)(v69, v40, v70);
    v44 = v63;
    sub_224DAC4E8();
    v45 = v44;
    v46 = v44;
    v47 = v64;
    v48 = (*v60)(v46, v64);
    v49 = v72;
    if (v48 != v59)
    {
      goto LABEL_27;
    }

    v8 = v31;
    (*v58)(v45, v47);
    if (*v45 == v49 && v45[1] == v75)
    {

      (*v62)(v69, v70);
      goto LABEL_23;
    }

    v30 = sub_224DAFD88();

    (*v62)(v69, v70);
LABEL_5:
    sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
    if (v30)
    {
      goto LABEL_24;
    }
  }

  (*v56)(v71, v40, v73);
  v8 = v31;
  sub_224DAC498();
  v41 = v65;
  v42 = (*v55)(v31, v65);
  v43 = v72;
  if (v42 != v54)
  {
    goto LABEL_27;
  }

  (*v53)(v31, v41);
  if (*v31 != v43 || *(v31 + 1) != v75)
  {
    v30 = sub_224DAFD88();

    (*v57)(v71, v73);
    goto LABEL_5;
  }

  (*v57)(v71, v73);
LABEL_23:
  sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
LABEL_24:
  v50 = 1;
LABEL_25:

  return v50;
}

uint64_t sub_224B9F9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v85 = a2;
  v98 = sub_224DAE168();
  v84 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v5);
  v97 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v8 = MEMORY[0x28223BE20](v95, v7);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v93 = (&v84 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v92 = &v84 - v14;
  v15 = sub_224DAC5E8();
  v99 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v96 = &v84 - v21;
  v22 = sub_224DAE098();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v84 - v29;
  sub_224DAE0A8();
  (*(v23 + 104))(v27, *MEMORY[0x277CF9E90], v22);
  v31 = sub_224DAE088();
  v32 = *(v23 + 8);
  v32(v27, v22);
  v32(v30, v22);
  if ((v31 & 1) == 0)
  {
    v33 = swift_beginAccess();
    v34 = *(v3 + 16);
    MEMORY[0x28223BE20](v33, v35);
    *(&v84 - 2) = a1;

    v36 = sub_224BA06E0(sub_224BA2210, (&v84 - 4), v34, sub_224BA09CC, sub_224BA09CC);

    v37 = *(v36 + 2);
    if (v37)
    {
      v106 = MEMORY[0x277D84F90];
      sub_224ADA0B0(0, v37, 0);
      v38 = v106;
      v39 = v36 + 64;
      result = sub_224DAF798();
      v41 = result;
      v42 = 0;
      v43 = v99;
      v91 = v99 + 16;
      v86 = v36 + 72;
      v87 = v37;
      v88 = v36 + 64;
      v90 = v99 + 32;
      v89 = v36;
      do
      {
        if (v41 < 0 || v41 >= 1 << v36[32])
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        if ((*&v39[8 * (v41 >> 6)] & (1 << v41)) == 0)
        {
          goto LABEL_32;
        }

        v102 = 1 << v41;
        v103 = v41 >> 6;
        v45 = *(v36 + 9);
        v100 = v42;
        v101 = v45;
        v105 = v38;
        v46 = v95;
        v47 = *(v95 + 48);
        v48 = *(v36 + 7);
        v49 = (*(v36 + 6) + 16 * v41);
        v51 = *v49;
        v50 = v49[1];
        v104 = *(v43 + 72);
        v52 = v19;
        v53 = v92;
        (*(v43 + 16))(&v92[v47], v48 + v104 * v41, v15);
        v54 = v15;
        v55 = v93;
        *v93 = v51;
        *(v55 + 8) = v50;
        v56 = *(v43 + 32);
        v57 = &v53[v47];
        v19 = v52;
        v56(v55 + *(v46 + 48), v57, v54);
        v58 = v94;
        sub_224BA2230(v55, v94);

        v59 = *(v46 + 48);
        v38 = v105;
        v56(v52, (v58 + v59), v54);
        v106 = v38;
        v61 = *(v38 + 16);
        v60 = *(v38 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_224ADA0B0((v60 > 1), v61 + 1, 1);
          v38 = v106;
        }

        *(v38 + 16) = v61 + 1;
        result = (v56)(v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + v61 * v104, v52, v54);
        v44 = 1 << v89[32];
        if (v41 >= v44)
        {
          goto LABEL_33;
        }

        v15 = v54;
        v36 = v89;
        v39 = v88;
        v62 = *&v88[8 * v103];
        if ((v62 & v102) == 0)
        {
          goto LABEL_34;
        }

        if (v101 != *(v89 + 9))
        {
          goto LABEL_35;
        }

        v63 = v62 & (-2 << (v41 & 0x3F));
        if (v63)
        {
          v44 = __clz(__rbit64(v63)) | v41 & 0x7FFFFFFFFFFFFFC0;
          v43 = v99;
        }

        else
        {
          v64 = v103 << 6;
          v65 = v103 + 1;
          v66 = &v86[8 * v103];
          v43 = v99;
          while (v65 < (v44 + 63) >> 6)
          {
            v68 = *v66++;
            v67 = v68;
            v64 += 64;
            ++v65;
            if (v68)
            {
              result = sub_224A3E204(v41, v101, 0);
              v44 = __clz(__rbit64(v67)) + v64;
              goto LABEL_5;
            }
          }

          result = sub_224A3E204(v41, v101, 0);
        }

LABEL_5:
        v42 = v100 + 1;
        v41 = v44;
      }

      while (v100 + 1 != v87);

      v69 = v43;
      v70 = *(v38 + 16);
      if (!v70)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v38 = MEMORY[0x277D84F90];
    v69 = v99;
    v70 = *(MEMORY[0x277D84F90] + 16);
    if (v70)
    {
LABEL_21:
      v71 = 0;
      v73 = *(v69 + 16);
      v72 = v69 + 16;
      v104 = v73;
      v105 = v38;
      v74 = v38 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
      v103 = *(v72 + 56);
      v75 = (v84 + 8);
      v76 = (v72 - 8);
      do
      {
        v77 = v96;
        v104(v96, v74, v15);
        v78 = v97;
        sub_224DAC5B8();
        sub_224DAE128();
        v79 = sub_224DAE108();
        (*v75)(v78, v98);
        result = (*v76)(v77, v15);
        v80 = __OFADD__(v71, v79);
        v71 += v79;
        if (v80)
        {
          __break(1u);
          goto LABEL_31;
        }

        v74 += v103;
        --v70;
      }

      while (v70);

      if (v71 <= 0)
      {
        goto LABEL_28;
      }

      v81 = MEMORY[0x277CF9EC8];
      goto LABEL_29;
    }

LABEL_27:
  }

LABEL_28:
  v81 = MEMORY[0x277CF9ED0];
LABEL_29:
  v82 = *v81;
  v83 = sub_224DAE178();
  return (*(*(v83 - 8) + 104))(v85, v82, v83);
}

char *sub_224BA0234()
{
  swift_beginAccess();

  return sub_224B07178(v0);
}

BOOL sub_224BA0334(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = sub_224DAC538();
  MEMORY[0x28223BE20](v36, v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE0D8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v34 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v34 - v21;
  v23 = a1[1];
  *v22 = *a1;
  *(v22 + 1) = v23;
  v24 = *(v20 + 48);
  v25 = sub_224DAC5E8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v22[v24], a2, v25);
  sub_224BA21A0(v22, v18);

  v27 = *(v11 + 48);
  sub_224DAC598();
  v28 = *(v26 + 8);
  v28(&v18[v27], v25);
  LOBYTE(v23) = sub_224DAE078();
  (*(v37 + 8))(v10, v38);
  if (v23)
  {
    v29 = v34;
    sub_224BA21A0(v22, v34);

    v30 = *(v11 + 48);
    v31 = v35;
    sub_224DAC558();
    sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
    v28((v29 + v30), v25);
    v32 = swift_getEnumCaseMultiPayload() != 1;
    sub_224BA2304(v31, MEMORY[0x277CF9A70]);
  }

  else
  {
    sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
    return 0;
  }

  return v32;
}

void *sub_224BA06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v5;
  v10 = a1;
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = v11 & 0x3F;
  v13 = (1 << v11) + 63;
  v14 = v13 >> 6;
  v15 = 8 * (v13 >> 6);
  if (v12 <= 0xD)
  {
    goto LABEL_2;
  }

  v20 = 8 * (v13 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v20;
LABEL_2:
    MEMORY[0x28223BE20](a1, v15);
    v17 = v24 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v17, v16);
    result = a4(v17, v14, a3, v10, a2);
    if (v7)
    {
      return swift_willThrow();
    }

    return result;
  }

  v21 = swift_slowAlloc();
  v22 = v7;
  v23 = sub_224BA18B4(v21, v14, a3, v10, a2, a5);
  result = MEMORY[0x22AA5EED0](v21, -1, -1);
  if (!v22)
  {
    return v23;
  }

  return result;
}

uint64_t sub_224BA09CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *, __n128))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_224DAC5E8();
  result = MEMORY[0x28223BE20](v40, v5);
  v38 = a3;
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v20 = v39;
    v19 = v40;
LABEL_11:
    v23 = v38[7];
    v24 = (v38[6] + 16 * v18);
    v25 = v24[1];
    v41[0] = *v24;
    v41[1] = v25;
    (*(v36 + 16))(v20, v23 + *(v36 + 72) * v18, v19);

    v26 = v42;
    v27 = (v37)(v41, v20);
    v28 = v20;
    v42 = v26;
    if (v26)
    {
      (*v34)(v20, v19);
    }

    v29 = v27;
    (*v34)(v28, v19);

    if (v29)
    {
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_224B2C72C(v32, v31, v33, v38);
      }
    }
  }

  v21 = v9;
  v20 = v39;
  v19 = v40;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_224B2C72C(v32, v31, v33, v38);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA0C40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = sub_224DA9878();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v6);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = MEMORY[0x28223BE20](v8, v9);
  v13 = &v33 - v12;
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2D538(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_224B2D538(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA0FA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = sub_224DAD9C8();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v6);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  result = MEMORY[0x28223BE20](v8, v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2DC20(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_224B2DC20(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA1300(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *, __n128))
{
  v32 = a4;
  v25 = a2;
  v26 = a1;
  v5 = sub_224DABE18();
  result = MEMORY[0x28223BE20](v5, v6);
  v33 = a3;
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a3 + 64);
  v27 = 0;
  v28 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v30 = v8 + 16;
  v31 = v8;
  v29 = (v8 + 8);
  while (v14)
  {
    v35 = (v14 - 1) & v14;
    v16 = __clz(__rbit64(v14)) | (v10 << 6);
    v17 = v34;
LABEL_11:
    v20 = v33;
    (*(v31 + 16))(v17, v33[6] + *(v31 + 72) * v16, v5);
    v37 = *(v20[7] + 8 * v16);

    v21 = v36;
    v22 = (v32)(v17, &v37);
    v36 = v21;
    if (v21)
    {

      return (*v29)(v17, v5);
    }

    v23 = v22;

    result = (*v29)(v17, v5);
    v14 = v35;
    if (v23)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v26, v25, v27, v33);
      }
    }
  }

  v18 = v10;
  v17 = v34;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return sub_224B2E0C4(v26, v25, v27, v33);
    }

    v19 = *(v28 + 8 * v10);
    ++v18;
    if (v19)
    {
      v35 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}