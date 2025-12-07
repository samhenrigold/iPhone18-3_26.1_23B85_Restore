void *sub_25E991FB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v260 - v1;
  v3 = MEMORY[0x277D84F90];
  v274 = sub_25E97F328(MEMORY[0x277D84F90]);
  v269 = sub_25E97F328(v3);
  v273 = sub_25E97F328(v3);
  v268 = sub_25E97F328(v3);
  v275 = sub_25E97FC28(v3);
  v288 = sub_25E97FC3C(v3);
  v272 = sub_25E97F328(v3);
  v267 = sub_25E97F328(v3);
  v4 = sub_25E97FD50(v3);
  v5 = sub_25E97FC3C(v3);
  v271 = sub_25E97F328(v3);
  v266 = sub_25E97F328(v3);
  v6 = sub_25E97F328(v3);
  v265 = sub_25E97F328(v3);
  swift_beginAccess();
  v7 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5C0 != -1)
    {
      swift_once();
    }

    v18 = sub_25E9D7F10();
    __swift_project_value_buffer(v18, qword_27FD0DB78);
    v19 = sub_25E9D7F00();
    v20 = sub_25E9D8120();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25E971000, v19, v20, "PGSchemaPGClientEvent failed to init", v21, 2u);
      MEMORY[0x25F8C51A0](v21, -1, -1);
    }

LABEL_120:
    v171 = MEMORY[0x277D84F90];
LABEL_121:
    v172 = v261;
    v261[2] = v171;

    v172[5] = v273;

    v172[6] = v268;

    v172[7] = v275;

    v172[15] = v6;

    v172[16] = v265;

    v172[3] = v274;

    v172[4] = v269;

    v172[9] = v272;

    v172[10] = v267;

    v172[13] = v271;

    v172[14] = v266;

    v173 = v288;
    v172[8] = v288;

    v172[11] = v4;

    v172[12] = v5;

    if (qword_27FD0D5C0 != -1)
    {
      swift_once();
    }

    v174 = sub_25E9D7F10();
    v286 = __swift_project_value_buffer(v174, qword_27FD0DB78);
    v175 = sub_25E9D7F00();
    v176 = sub_25E9D8120();
    v177 = os_log_type_enabled(v175, v176);
    v270 = v4;
    v263 = v5;
    v264 = v6;
    v285 = v173;
    if (v177)
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v287 = v179;
      *v178 = 136315394;

      v180 = sub_25E9D7F40();
      v182 = v181;

      v183 = sub_25E9887EC(v180, v182, &v287);

      *(v178 + 4) = v183;
      *(v178 + 12) = 2080;

      v184 = sub_25E9D7F40();
      v186 = v185;

      v187 = sub_25E9887EC(v184, v186, &v287);

      *(v178 + 14) = v187;
      _os_log_impl(&dword_25E971000, v175, v176, "pgGeneratePlanContext Start Event Dict: %s, End Event Dict: %s", v178, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v179, -1, -1);
      MEMORY[0x25F8C51A0](v178, -1, -1);
    }

    v188 = sub_25E9D7F00();
    v189 = sub_25E9D8120();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v287 = v191;
      *v190 = 136315394;

      v192 = sub_25E9D7F40();
      v194 = v193;

      v195 = sub_25E9887EC(v192, v194, &v287);

      *(v190 + 4) = v195;
      *(v190 + 12) = 2080;

      v196 = sub_25E9D7F40();
      v198 = v197;

      v199 = sub_25E9887EC(v196, v198, &v287);

      *(v190 + 14) = v199;
      _os_log_impl(&dword_25E971000, v188, v189, "pgRequestContext Start Event Dict: %s, End Event Dict: %s", v190, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v191, -1, -1);
      MEMORY[0x25F8C51A0](v190, -1, -1);
    }

    v200 = sub_25E9D7F00();
    v201 = sub_25E9D8120();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v287 = v203;
      *v202 = 136315394;

      v204 = sub_25E9D7F40();
      v206 = v205;

      v207 = sub_25E9887EC(v204, v206, &v287);

      *(v202 + 4) = v207;
      *(v202 + 12) = 2080;

      v208 = sub_25E9D7F40();
      v210 = v209;

      v211 = sub_25E9887EC(v208, v210, &v287);

      *(v202 + 14) = v211;
      _os_log_impl(&dword_25E971000, v200, v201, "pgOverridesRequestContext Start Event Dict: %s, End Event Dict: %s", v202, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v203, -1, -1);
      MEMORY[0x25F8C51A0](v202, -1, -1);
    }

    v212 = sub_25E9D7F00();
    v213 = sub_25E9D8120();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v287 = v215;
      *v214 = 136315394;

      v216 = sub_25E9D7F40();
      v218 = v217;

      v219 = sub_25E9887EC(v216, v218, &v287);

      *(v214 + 4) = v219;
      *(v214 + 12) = 2080;

      v220 = sub_25E9D7F40();
      v222 = v221;

      v223 = sub_25E9887EC(v220, v222, &v287);

      *(v214 + 14) = v223;
      _os_log_impl(&dword_25E971000, v212, v213, "pgModelInferenceContextStart Event Dict: %s, End Event Dict: %s", v214, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v215, -1, -1);
      MEMORY[0x25F8C51A0](v214, -1, -1);
    }

    v224 = sub_25E9D7F00();
    v225 = sub_25E9D8120();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v287 = v227;
      *v226 = 136315394;

      v228 = sub_25E9D7F40();
      v230 = v229;

      v231 = sub_25E9887EC(v228, v230, &v287);

      *(v226 + 4) = v231;
      *(v226 + 12) = 2080;

      v232 = sub_25E9D7F40();
      v234 = v233;

      v235 = sub_25E9887EC(v232, v234, &v287);

      *(v226 + 14) = v235;
      _os_log_impl(&dword_25E971000, v224, v225, "pgPrescribedPlanRequestContextStart Event Dict: %s, End Event Dict: %s", v226, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v227, -1, -1);
      MEMORY[0x25F8C51A0](v226, -1, -1);
    }

    v236 = sub_25E9D7F00();
    v237 = sub_25E9D8120();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v287 = v239;
      *v238 = 136315394;
      type metadata accessor for PNRODSchemaPNRODPGModelInterface(0);

      v240 = sub_25E9D7F40();
      v242 = v241;

      v243 = sub_25E9887EC(v240, v242, &v287);

      *(v238 + 4) = v243;
      *(v238 + 12) = 2080;

      v244 = sub_25E9D7F40();
      v246 = v245;

      v247 = sub_25E9887EC(v244, v246, &v287);

      *(v238 + 14) = v247;
      _os_log_impl(&dword_25E971000, v236, v237, "pgModelInterface Event Dict: %s, pgModelIdentifier Event Dict: %s", v238, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v239, -1, -1);
      MEMORY[0x25F8C51A0](v238, -1, -1);
    }

    v248 = sub_25E9D7F00();
    v249 = sub_25E9D8120();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v287 = v251;
      *v250 = 136315394;

      v252 = sub_25E9D7F40();
      v254 = v253;

      v255 = sub_25E9887EC(v252, v254, &v287);

      *(v250 + 4) = v255;
      *(v250 + 12) = 2080;

      v256 = sub_25E9D7F40();
      v258 = v257;

      v259 = sub_25E9887EC(v256, v258, &v287);

      *(v250 + 14) = v259;
      _os_log_impl(&dword_25E971000, v248, v249, "pgOverridesMatched Event Dict: %s, pgOverridesAssetVersion Event Dict: %s", v250, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v251, -1, -1);
      MEMORY[0x25F8C51A0](v250, -1, -1);
    }
  }

  v262 = v2;
  sub_25E98FC58();
  v8 = v7;
  v282 = sub_25E9D7E70();

  if (qword_27FD0D5C0 != -1)
  {
LABEL_117:
    swift_once();
  }

  v9 = sub_25E9D7F10();
  v10 = __swift_project_value_buffer(v9, qword_27FD0DB78);
  v11 = v282;

  v278 = v10;
  v12 = sub_25E9D7F00();
  v13 = sub_25E9D8120();
  v14 = v11 >> 62;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v14)
    {
      v16 = sub_25E9D8290();
    }

    else
    {
      v16 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    _os_log_impl(&dword_25E971000, v12, v13, "PGSchemaPGClientEvent length %ld", v15, 0xCu);
    MEMORY[0x25F8C51A0](v15, -1, -1);
  }

  else
  {
  }

  if (v14)
  {
    v22 = sub_25E9D8290();
    if (v22)
    {
      goto LABEL_15;
    }

    goto LABEL_119;
  }

  v22 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_119:

    goto LABEL_120;
  }

LABEL_15:
  v264 = v6;
  v263 = v5;
  v270 = v4;
  v23 = 0;
  v281 = v282 & 0xC000000000000001;
  v276 = v282 & 0xFFFFFFFFFFFFFF8;
  v5 = MEMORY[0x277D84F90];
  *&v17 = 136315138;
  v277 = v17;
  v6 = v278;
  v279 = v22;
  while (1)
  {
    if (v281)
    {
      v24 = MEMORY[0x25F8C4B40](v23, v282);
    }

    else
    {
      if (v23 >= *(v276 + 16))
      {
        goto LABEL_116;
      }

      v24 = *(v282 + 8 * v23 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v283 = v23 + 1;
    v284 = v23;
    v26 = sub_25E9D7840();
    v285 = v25;
    if (!v26)
    {
      goto LABEL_31;
    }

    v27 = v26;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {

LABEL_31:
      v286 = 0;
      v37 = 0;
      v38 = 0xE000000000000000;
      v36 = 1;
      goto LABEL_34;
    }

    v29 = v28;
    v30 = [v28 eventMetadata];
    v286 = v29;
    if (v30 && (v31 = v30, v32 = [v30 planCycleId], v31, v32))
    {
      v33 = v262;
      sub_25E9D8100();

      v34 = sub_25E9D77F0();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        sub_25E981210(v33, &qword_27FD0D7D8, &qword_25E9D9BC0);
        v36 = 0;
        v37 = 0;
        v38 = 0xE000000000000000;
      }

      else
      {
        v37 = sub_25E9D77C0();
        v38 = v39;
        (*(v35 + 8))(v33, v34);
        v36 = 0;
      }

      v22 = v279;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0xE000000000000000;
    }

LABEL_34:

    v40 = sub_25E9D7F00();
    v41 = sub_25E9D8120();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v280 = v5;
      v43 = v42;
      v44 = v36;
      v45 = swift_slowAlloc();
      v287 = v45;
      *v43 = v277;
      v46 = sub_25E9D8000();
      v48 = sub_25E9887EC(v46, v47, &v287);

      *(v43 + 4) = v48;
      v22 = v279;
      _os_log_impl(&dword_25E971000, v40, v41, "planCycleId value %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v49 = v45;
      v36 = v44;
      v6 = v278;
      MEMORY[0x25F8C51A0](v49, -1, -1);
      v50 = v43;
      v5 = v280;
      MEMORY[0x25F8C51A0](v50, -1, -1);
    }

    v4 = v286;
    if (!v37 && v38 == 0xE000000000000000 || (sub_25E9D8300() & 1) != 0)
    {

      v51 = sub_25E9D7F00();
      v52 = sub_25E9D8120();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v285;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_25E971000, v51, v52, "Empty planCycleId", v55, 2u);
        MEMORY[0x25F8C51A0](v55, -1, -1);
      }

LABEL_42:
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25E983A64(0, *(v5 + 16) + 1, 1, v5);
    }

    v57 = *(v5 + 16);
    v56 = *(v5 + 24);
    if (v57 >= v56 >> 1)
    {
      v5 = sub_25E983A64((v56 > 1), v57 + 1, 1, v5);
    }

    *(v5 + 16) = v57 + 1;
    v58 = v5 + 16 * v57;
    *(v58 + 32) = v37;
    *(v58 + 40) = v38;
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_17:
    v23 = v284 + 1;
    if (v283 == v22)
    {

      v4 = v270;
      v171 = v5;
      v5 = v263;
      v6 = v264;
      goto LABEL_121;
    }
  }

  v280 = v38;
  v59 = [v4 pgRequestContext];
  if (!v59 || (v60 = v59, v61 = [v59 startedOrChanged], v60, !v61))
  {
    v68 = [v4 pgRequestContext];
    v62 = v285;
    if (v68)
    {
      v69 = v68;
      v70 = [v68 ended];

      if (v70)
      {

        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_144;
        }

        v71 = result;
        v72 = sub_25E9D7870();

        v73 = v269;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v287 = v73;
        sub_25E993FE0(78, v72, v37, v280, isUniquelyReferenced_nonNull_native);
        v269 = v287;
      }
    }

LABEL_56:
    v75 = [v4 pgModelInferenceContext];
    if (v75)
    {
      v76 = v75;
      v77 = [v75 startedOrChanged];

      if (v77)
      {

        v78 = [v4 pgModelInferenceContext];
        if (v78 && (v79 = v78, v80 = [v78 startedOrChanged], v79, v80))
        {
          v81 = [v80 modelInterface];
        }

        else
        {
          v81 = 0;
        }

        v94 = v275;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v287 = v94;
        v96 = v37;
        v90 = v37;
        v97 = v280;
        sub_25E994908(v81, v96, v280, v95, sub_25E97E4A4, sub_25E97ABD0, sub_25E99B4F8);
        v275 = v287;
        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_140;
        }

        v98 = result;
        v99 = sub_25E9D7870();

        v100 = v273;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v287 = v100;
        sub_25E993FE0(79, v99, v90, v97, v101);
        v4 = v286;
        v273 = v287;
        goto LABEL_74;
      }
    }

    v82 = [v4 pgModelInferenceContext];
    if (!v82 || (v83 = v82, v84 = [v82 ended], v83, !v84))
    {
LABEL_75:
      v107 = [v4 pgOverridesRequestContext];
      if (v107)
      {
        v108 = v107;
        v109 = [v107 startedOrChanged];

        if (v109)
        {

          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_141;
          }

          v110 = result;
          v111 = sub_25E9D7870();

          v112 = v272;
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v287 = v112;
          sub_25E993FE0(81, v111, v37, v280, v113);
          v272 = v287;
          goto LABEL_96;
        }
      }

      v114 = [v4 pgOverridesRequestContext];
      if (!v114 || (v115 = v114, v116 = [v114 ended], v115, !v116))
      {
LABEL_96:
        v141 = [v4 pgPrescribedPlanRequestContext];
        if (v141 && (v142 = v141, v143 = [v141 startedOrChanged], v142, v143))
        {

          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_142;
          }

          v144 = result;
          v145 = sub_25E9D7870();

          v146 = v271;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v287 = v146;
          sub_25E993FE0(83, v145, v37, v280, v147);
          v271 = v287;
        }

        else
        {
          v148 = [v4 pgPrescribedPlanRequestContext];
          if (v148)
          {
            v149 = v148;
            v150 = [v148 ended];

            if (v150)
            {

              result = sub_25E9D7850();
              if (!result)
              {
                goto LABEL_147;
              }

              v151 = result;
              v152 = sub_25E9D7870();

              v153 = v266;
              v154 = swift_isUniquelyReferenced_nonNull_native();
              v287 = v153;
              sub_25E993FE0(84, v152, v37, v280, v154);
              v266 = v287;
            }
          }
        }

        v155 = [v4 pgGeneratePlanContext];
        if (v155)
        {
          v156 = v155;
          v157 = [v155 startedOrChanged];

          if (v157)
          {

            result = sub_25E9D7850();
            if (!result)
            {
              goto LABEL_143;
            }

            v158 = result;
            v159 = sub_25E9D7870();

            v160 = v264;
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v287 = v160;
            sub_25E993FE0(85, v159, v37, v280, v161);

            v162 = v287;
            v163 = &v289;
            goto LABEL_112;
          }
        }

        v164 = [v4 pgGeneratePlanContext];
        if (v164)
        {
          v165 = v164;
          v166 = [v164 ended];

          if (v166)
          {

            result = sub_25E9D7850();
            if (!result)
            {
              goto LABEL_148;
            }

            v167 = result;
            v168 = sub_25E9D7870();

            v169 = v265;
            v170 = swift_isUniquelyReferenced_nonNull_native();
            v287 = v169;
            sub_25E993FE0(86, v168, v37, v280, v170);

            v162 = v287;
            v163 = &v290;
LABEL_112:
            *(v163 - 32) = v162;
            goto LABEL_17;
          }
        }

        goto LABEL_42;
      }

      v117 = [v4 pgOverridesRequestContext];
      if (v117 && (v118 = v117, v119 = [v117 ended], v118, v119))
      {
        v120 = v5;
        v121 = [v119 overridesMatched];

        if (v121)
        {
          v122 = [v121 isMatched];
        }

        else
        {
          v122 = 0;
        }

        v5 = v120;
      }

      else
      {
        v122 = 0;
      }

      v123 = v270;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v287 = v123;
      sub_25E994120(v122, v37, v280, v124);
      v270 = v287;
      v125 = [v286 pgOverridesRequestContext];
      if (v125 && (v126 = v125, v127 = [v125 ended], v126, v127))
      {
        v128 = v5;
        v129 = [v127 assetVersion];

        v130 = v37;
        if (v129)
        {
          v131 = sub_25E9D7FB0();
          v133 = v132;

LABEL_94:
          v134 = v280;

          v135 = v263;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v287 = v135;
          sub_25E994254(v131, v133, v130, v134, v136);

          v263 = v287;
          result = sub_25E9D7850();
          if (!result)
          {
            goto LABEL_146;
          }

          v137 = result;
          v138 = sub_25E9D7870();

          v139 = v267;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v287 = v139;
          sub_25E993FE0(82, v138, v130, v134, v140);
          v267 = v287;
          v5 = v128;
          v22 = v279;
          v62 = v285;
          v4 = v286;
          v37 = v130;
          goto LABEL_96;
        }
      }

      else
      {
        v130 = v37;
        v128 = v5;
      }

      v131 = 0;
      v133 = 0xE000000000000000;
      goto LABEL_94;
    }

    v85 = [v4 pgModelInferenceContext];
    if (v85 && (v86 = v85, v87 = [v85 ended], v86, v87))
    {
      v88 = v5;
      v89 = [v87 modelIdentifier];

      v90 = v37;
      if (v89)
      {
        v91 = sub_25E9D7FB0();
        v93 = v92;

LABEL_72:
        v102 = v280;

        sub_25E98F744(v91, v93, v90, v102);
        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_145;
        }

        v103 = result;
        v104 = sub_25E9D7870();

        v105 = v268;
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v287 = v105;
        sub_25E993FE0(80, v104, v90, v102, v106);
        v268 = v287;
        v5 = v88;
        v22 = v279;
        v62 = v285;
        v4 = v286;
LABEL_74:
        v37 = v90;
        goto LABEL_75;
      }
    }

    else
    {
      v90 = v37;
      v88 = v5;
    }

    v91 = 0;
    v93 = 0;
    goto LABEL_72;
  }

  v62 = v285;
  result = sub_25E9D7850();
  if (result)
  {
    v64 = result;
    v65 = sub_25E9D7870();

    v66 = v274;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v287 = v66;
    sub_25E993FE0(77, v65, v37, v280, v67);
    v274 = v287;
    goto LABEL_56;
  }

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
  return result;
}

void *SELFComponent.PlanGeneration.deinit()
{

  return v0;
}

uint64_t SELFComponent.PlanGeneration.__deallocating_deinit()
{
  SELFComponent.PlanGeneration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25E993F20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_25E993F50(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25E993F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D938, &qword_25E9D9998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25E993FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a1;
  v12 = *v5;
  v13 = sub_25E978F5C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_25E97D5F4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_25E979464(v18, a5 & 1);
    v13 = sub_25E978F5C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    *v24 = v11;
    *(v24 + 8) = a2;
  }

  else
  {
    sub_25E99AF94(v13, a3, a4, v11, a2, v23);
  }
}

void sub_25E994120(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E1C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97A670(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_25E99AFE8(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_25E994254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25E978F5C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_25E97E32C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_25E97A910(v18, a5 & 1);
    v13 = sub_25E978F5C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_25E99B030(v13, a3, a4, a1, a2, v23);
  }
}

void sub_25E9943A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E4B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97ABE4(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 288 * v11;

    sub_25E994F40(a1, v22);
  }

  else
  {
    sub_25E99B080(v11, a2, a3, a1, v21);
  }
}

void sub_25E9944EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E674();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B044(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_25E99B0F4(v11, a2, a3, a1, v21);
  }
}

void sub_25E994674(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E7F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B300(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 360 * v11);

    memcpy(v22, a1, 0x168uLL);
  }

  else
  {
    sub_25E99B13C(v11, a2, a3, a1, v21);
  }
}

void sub_25E9947C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97E99C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97B5C0(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 240 * v11;

    sub_25E994EE4(a1, v22);
  }

  else
  {
    sub_25E99B1B0(v11, a2, a3, a1, v21);
  }
}

void sub_25E994908(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_25E978F5C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_25E978F5C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_14:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 4 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

void sub_25E994A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97ED0C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97BCA0(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 232 * v11;
    v23 = *(a1 + 208);
    *(v22 + 192) = *(a1 + 192);
    *(v22 + 208) = v23;
    *(v22 + 224) = *(a1 + 224);
    v24 = *(a1 + 144);
    *(v22 + 128) = *(a1 + 128);
    *(v22 + 144) = v24;
    v25 = *(a1 + 176);
    *(v22 + 160) = *(a1 + 160);
    *(v22 + 176) = v25;
    v26 = *(a1 + 80);
    *(v22 + 64) = *(a1 + 64);
    *(v22 + 80) = v26;
    v27 = *(a1 + 112);
    *(v22 + 96) = *(a1 + 96);
    *(v22 + 112) = v27;
    v28 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v28;
    v29 = *(a1 + 48);
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = v29;
  }

  else
  {
    sub_25E99B284(v11, a2, a3, a1, v21);
  }
}

void sub_25E994BD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25E978F5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25E97F080();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25E97C278(v16, a4 & 1);
    v11 = sub_25E978F5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_25E9D8330();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_25E980EA8(a1, v22);
  }

  else
  {
    sub_25E99B310(v11, a2, a3, a1, v21);
  }
}

void (*sub_25E994D20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8C4B40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25E994DA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E994EC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0x5A)
  {
    v2 = 90;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  v3 = v2 - 90;
  if (v1 >= 0x59)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t PnRError.hashValue.getter()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v1);
  return sub_25E9D83C0();
}

uint64_t sub_25E99516C()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v1);
  return sub_25E9D83C0();
}

uint64_t sub_25E9951E0(uint64_t a1)
{
  v2 = *v1;
  sub_25E9D8390();
  MEMORY[0x25F8C4C90](v2);
  return sub_25E9D83C0();
}

uint64_t sub_25E995224(uint64_t a1)
{
  v2 = sub_25E995508();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25E995260(uint64_t a1)
{
  v2 = sub_25E995508();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t static PnRError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = *aPnrerror_1;

  return v0;
}

uint64_t static PnRError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPnrerror_1 = a1;
  *&aPnrerror_1[8] = a2;
}

unint64_t sub_25E9953BC()
{
  result = qword_27FD0D950;
  if (!qword_27FD0D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D950);
  }

  return result;
}

unint64_t sub_25E995414()
{
  result = qword_27FD0D958;
  if (!qword_27FD0D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D958);
  }

  return result;
}

uint64_t sub_25E995468()
{
  swift_beginAccess();
  v0 = *aPnrerror_1;

  return v0;
}

unint64_t sub_25E995508()
{
  result = qword_27FD0D960;
  if (!qword_27FD0D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D960);
  }

  return result;
}

uint64_t sub_25E995574()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  v1 = sub_25E9D7EC0();

  if (!v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D968, &qword_25E9D9B88);
  sub_25E98F558(0, &qword_27FD0D970, 0x277D58948);
  sub_25E99622C(&qword_27FD0D978, &qword_27FD0D968, &qword_25E9D9B88, MEMORY[0x277CE4868]);
  v2 = sub_25E9D8040();

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_25E9D8290();
    v3 = v2;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 0;
  if (!v4)
  {
LABEL_13:

    return v5;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8C4B40](0, v3);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
    return 1;
  }

  __break(1u);
  return result;
}

id sub_25E995714()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  v1 = sub_25E9D7E60();

  if (!v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D988, 0x277D5ABF0);
  sub_25E99622C(&qword_27FD0D990, &qword_27FD0D980, &qword_25E9D9B90, MEMORY[0x277CE4868]);
  v2 = sub_25E9D8040();

  if (v2 >> 62)
  {
    result = sub_25E9D8290();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8C4B40](0, v2);
    goto LABEL_8;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_8:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

void sub_25E99589C(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_33;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7EC0();

  if (!v3)
  {
LABEL_18:
    if (!qword_27FD0DD78)
    {
      goto LABEL_33;
    }

    v16 = qword_27FD0DD78;
    v17 = sub_25E9D7E60();

    if (!v17)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D988, 0x277D5ABF0);
    sub_25E99622C(&qword_27FD0D990, &qword_27FD0D980, &qword_25E9D9B90, MEMORY[0x277CE4868]);
    v6 = sub_25E9D8040();

    if (!(v6 >> 62))
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

LABEL_22:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8C4B40](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v18 = *(v6 + 32);
      }

      v19 = v18;

      v20 = sub_25E9D7850();
      if (v20)
      {
        v21 = v20;
        v13 = sub_25E9D7870();

        v14 = 4;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

LABEL_29:
    if (!sub_25E9D8290())
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D968, &qword_25E9D9B88);
  sub_25E98F558(0, &qword_27FD0D970, 0x277D58948);
  sub_25E99622C(&qword_27FD0D978, &qword_27FD0D968, &qword_25E9D9B88, MEMORY[0x277CE4868]);
  v4 = sub_25E9D8040();

  v5 = v4;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v15 = sub_25E9D8290();
  v5 = v4;
  if (!v15)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8C4B40](0, v5);
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v6)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_7:
  if (!qword_27FD0DD78)
  {
    goto LABEL_33;
  }

  v7 = qword_27FD0DD78;
  v8 = sub_25E9D7EC0();

  if (!v8)
  {
    goto LABEL_33;
  }

  sub_25E98F558(0, &qword_27FD0D998, 0x277D589A8);
  v6 = sub_25E9D8040();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

  if (!sub_25E9D8290())
  {
LABEL_32:

LABEL_33:
    v13 = 0;
    v14 = 89;
    goto LABEL_34;
  }

LABEL_11:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v6 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_37:
  v9 = MEMORY[0x25F8C4B40](0, v6);
LABEL_14:
  v10 = v9;

  v11 = sub_25E9D7850();
  if (v11)
  {
    v12 = v11;
    v13 = sub_25E9D7870();

    v14 = 9;
LABEL_34:
    *a1 = v14;
    a1[1] = v13;
    return;
  }

LABEL_40:
  __break(1u);
}

id sub_25E995CBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  result = [a1 ended];
  if (result)
  {

    v6 = [a1 trpId];
    if (v6)
    {
      v7 = v6;
      sub_25E9D8100();

      v8 = sub_25E9D77F0();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) != 1)
      {
        v10 = sub_25E9D77C0();
        v11 = v12;
        (*(v9 + 8))(v4, v8);
LABEL_7:
        swift_beginAccess();
        if (qword_27FD0DD78)
        {
          v13 = qword_27FD0DD78;
          v14 = sub_25E9D7E90();

          v23 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
          sub_25E98F558(0, &qword_27FD0D9A8, 0x277D59868);
          sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0, MEMORY[0x277D83970]);
          v15 = sub_25E9D8050();

          if (v15[2])
          {
            v17 = v15[4];
            v16 = v15[5];

            if (!v11)
            {
              goto LABEL_10;
            }

            goto LABEL_14;
          }
        }

        v17 = 0;
        v16 = 0;
        if (!v11)
        {
LABEL_10:
          if (v16)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

LABEL_14:
        if (!v16)
        {
LABEL_18:

          return 0;
        }

        if (v10 == v17 && v11 == v16)
        {
        }

        else
        {
          v18 = sub_25E9D8300();

          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_20:
        if (qword_27FD0DD78)
        {
          v19 = qword_27FD0DD78;
          v20 = sub_25E9D7E90();

          v23 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
          sub_25E98F558(0, &qword_27FD0D9A8, 0x277D59868);
          sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0, MEMORY[0x277D83970]);
          v21 = sub_25E9D8050();

          v22 = *(v21 + 16);

          return (v22 != 0);
        }

        return 0;
      }

      sub_25E9961C4(v4);
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25E9961C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E99622C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SELFPnREmitter.uploadSiriTurnGrainLatency(for:)(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v48 - v3;
  v5 = a1[11];
  v48[10] = a1[10];
  v48[11] = v5;
  v6 = a1[13];
  v48[12] = a1[12];
  v48[13] = v6;
  v7 = a1[7];
  v48[6] = a1[6];
  v48[7] = v7;
  v8 = a1[9];
  v48[8] = a1[8];
  v48[9] = v8;
  v9 = a1[3];
  v48[2] = a1[2];
  v48[3] = v9;
  v10 = a1[5];
  v48[4] = a1[4];
  v48[5] = v10;
  v11 = a1[1];
  v48[0] = *a1;
  v48[1] = v11;
  v12 = PnRSiriTurnGrainSummary.createSiriTurnGrainSummarySELFEvent()();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 pnrodSiriTurnGrainSummary];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 turnid];

      if (v16)
      {
        sub_25E9D8100();

        v17 = sub_25E9D77F0();
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(v4, 1, v17) != 1)
        {
          v19 = sub_25E9D77C0();
          v20 = v47;
          (*(v18 + 8))(v4, v17);
          goto LABEL_7;
        }

        sub_25E981210(v4, &qword_27FD0D7D8, &qword_25E9D9BC0);
      }
    }

    v19 = 0;
    v20 = 0;
LABEL_7:
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v21 = sub_25E9D7F10();
    __swift_project_value_buffer(v21, qword_280F6FE78);

    v22 = sub_25E9D7F00();
    v23 = sub_25E9D8120();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v48[0] = v25;
      *v24 = 136315138;
      if (v20)
      {
        v26 = v19;
      }

      else
      {
        v26 = 0;
      }

      if (!v20)
      {
        v20 = 0xE000000000000000;
      }

      v27 = sub_25E9887EC(v26, v20, v48);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_25E971000, v22, v23, "Created now %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8C51A0](v25, -1, -1);
      MEMORY[0x25F8C51A0](v24, -1, -1);
    }

    else
    {
    }

    v32 = [v13 wrapAsAnyEvent];
    if (v32)
    {
      v33 = v32;
      v34 = v32;
      v35 = sub_25E9D7F00();
      v36 = sub_25E9D8120();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v33;
        v39 = v34;
        _os_log_impl(&dword_25E971000, v35, v36, "FBF reporter: store the SiriSELFEvent event %@ and send to server", v37, 0xCu);
        sub_25E981210(v38, &qword_27FD0D9B8, &qword_25E9D9BC8);
        MEMORY[0x25F8C51A0](v38, -1, -1);
        MEMORY[0x25F8C51A0](v37, -1, -1);
      }

      v40 = [objc_opt_self() sharedLogger];
      v41 = sub_25E9D7FA0();
      [v40 reportSiriInstrumentationEvent:v34 forBundleID:v41 completion:0];
    }

    v42 = v13;
    v29 = sub_25E9D7F00();
    v43 = sub_25E9D8120();

    if (os_log_type_enabled(v29, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v42;
      *v45 = v13;
      v46 = v42;
      _os_log_impl(&dword_25E971000, v29, v43, "Emitted now %@", v44, 0xCu);
      sub_25E981210(v45, &qword_27FD0D9B8, &qword_25E9D9BC8);
      MEMORY[0x25F8C51A0](v45, -1, -1);
      MEMORY[0x25F8C51A0](v44, -1, -1);
    }

    else
    {
    }

    goto LABEL_28;
  }

  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v28 = sub_25E9D7F10();
  __swift_project_value_buffer(v28, qword_280F6FE78);
  v29 = sub_25E9D7F00();
  v30 = sub_25E9D8120();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_25E971000, v29, v30, "uploadSiriTurnGrainLatency failed due to createSELFEvent is nil.", v31, 2u);
    MEMORY[0x25F8C51A0](v31, -1, -1);
  }

LABEL_28:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SELFPnREmitter.uploadIESELF(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = a1._rawValue + 32;
    v3 = 0x279A43000uLL;
    v4 = 0x280F6F000uLL;
    v31 = "Woker.default-data-worker";
    do
    {
      sub_25E986C6C(v2, v28);
      v7 = v29;
      v8 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      if ((*(v8 + 8))(v7, v8))
      {
        v9 = v29;
        v10 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v11 = (*(v10 + 16))(v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = [v11 *(v3 + 2576)];

          if (v13)
          {
            if (*(v4 + 3696) != -1)
            {
              swift_once();
            }

            v14 = sub_25E9D7F10();
            __swift_project_value_buffer(v14, qword_280F6FE78);
            v15 = v13;
            v16 = sub_25E9D7F00();
            v17 = sub_25E9D8120();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v19 = v4;
              v20 = swift_slowAlloc();
              *v18 = 138412290;
              *(v18 + 4) = v15;
              *v20 = v13;
              v21 = v15;
              _os_log_impl(&dword_25E971000, v16, v17, "FBF reporter: store the event %@ and send to server", v18, 0xCu);
              sub_25E981210(v20, &qword_27FD0D9B8, &qword_25E9D9BC8);
              v22 = v20;
              v4 = v19;
              MEMORY[0x25F8C51A0](v22, -1, -1);
              v23 = v18;
              v3 = 0x279A43000;
              MEMORY[0x25F8C51A0](v23, -1, -1);
            }

            v5 = [objc_opt_self() sharedLogger];
            v6 = sub_25E9D7FA0();
            [v5 reportSiriInstrumentationEvent:v15 forBundleID:v6 completion:0];
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v28);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v24 = sub_25E9D7F10();
    __swift_project_value_buffer(v24, qword_280F6FE78);
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8120();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_25E971000, v25, v26, "uploadIESELFRequest skipped due to empty IESELFEvent.", v27, 2u);
      MEMORY[0x25F8C51A0](v27, -1, -1);
    }
  }
}

uint64_t sub_25E996C78()
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  v0 = qword_27FD0DD78;
  sub_25E9D7E90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
  sub_25E996EC8();
  sub_25E996F14();
  v1 = sub_25E9D8050();

  if (!*(v1 + 16))
  {

    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

id sub_25E996D80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  result = [a1 trpId];
  if (!result)
  {
    goto LABEL_4;
  }

  v8 = result;
  sub_25E9D8100();

  v9 = sub_25E9D77F0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    result = sub_25E9961C4(v6);
LABEL_4:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v11 = sub_25E9D77C0();
  v13 = v12;
  result = (*(v10 + 8))(v6, v9);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

unint64_t sub_25E996EC8()
{
  result = qword_27FD0D9A8;
  if (!qword_27FD0D9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D9A8);
  }

  return result;
}

unint64_t sub_25E996F14()
{
  result = qword_27FD0D9B0;
  if (!qword_27FD0D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D9B0);
  }

  return result;
}

void sub_25E99701C(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_25;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7E60();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D9C0, 0x277D5ABE0);
    sub_25E997B8C();
    v4 = sub_25E9D8040();

    if (v4 >> 62)
    {
      if (sub_25E9D8290())
      {
        goto LABEL_5;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F8C4B40](0, v4);
LABEL_8:
        v6 = v5;

        v7 = sub_25E9D7850();
        if (v7)
        {
          v8 = v7;
          v9 = 1;
LABEL_28:
          v16 = sub_25E9D7870();

LABEL_30:
          *a1 = v9;
          a1[1] = v16;
          return;
        }

        goto LABEL_34;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_23:
      if (!sub_25E9D8290())
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }
  }

  if (!qword_27FD0DD78 || (v10 = qword_27FD0DD78, v11 = sub_25E9D7E60(), v10, !v11))
  {
LABEL_25:
    v14 = sub_25E99B640();
    if (!v14)
    {
      v16 = 0;
      v9 = 89;
      goto LABEL_30;
    }

    v6 = v14;
    v15 = sub_25E9D7850();
    if (v15)
    {
      v8 = v15;
      v9 = 8;
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9C0, 0x277D5ABE0);
  sub_25E997B8C();
  v4 = sub_25E9D8040();

  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = *(v4 + 32);
  }

  v6 = v12;

  v13 = sub_25E9D7850();
  if (v13)
  {
    v8 = v13;
    v9 = 2;
    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_25E997304(void *a1)
{
  v2 = [a1 dialogPhase];
  if (v2 < 9 && ((0x107u >> v2) & 1) != 0)
  {
    return 0;
  }

  result = [a1 aceCommandClass];
  if (result)
  {
    v4 = result;
    v5 = sub_25E9D7FB0();
    v7 = v6;

    if (v5 == 0x5664644149554153 && v7 == 0xEC00000073776569)
    {

      return 1;
    }

    else
    {
      v9 = sub_25E9D8300();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t sub_25E9973EC(void *a1)
{
  v2 = [a1 dialogPhase];
  if (v2 < 9 && ((0x107u >> v2) & 1) != 0)
  {
    goto LABEL_11;
  }

  v3 = [a1 aceCommandClass];
  if (!v3)
  {
    v10 = 1;
    return v10 & 1;
  }

  v4 = v3;
  v5 = sub_25E9D7FB0();
  v7 = v6;

  if (v5 == 0x5664644149554153 && v7 == 0xEC00000073776569)
  {

LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v9 = sub_25E9D8300();

  v10 = v9 ^ 1;
  return v10 & 1;
}

void sub_25E9974D8(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_12;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7E60();

  if (!v3)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9C8, 0x277D5A928);
  sub_25E997B8C();
  v4 = sub_25E9D8040();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_25E9D8290())
  {
LABEL_11:

LABEL_12:
    v9 = 0;
    v10 = 89;
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_25E9D7850();
  if (v7)
  {
    v8 = v7;
    v9 = sub_25E9D7870();

    v10 = 7;
LABEL_13:
    *a1 = v10;
    a1[1] = v9;
    return;
  }

LABEL_16:
  __break(1u);
}

id sub_25E997694@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 requestStatus];
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

id sub_25E997720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 requestType];
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

void sub_25E997758(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 error];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 errorDomain];

    if (v6)
    {
      v7 = sub_25E9D7FB0();
      v9 = v8;

      v10 = [a1 error];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 errorCode];

        if (v12)
        {
          v13 = sub_25E9D7FB0();
          v15 = v14;

          MEMORY[0x25F8C4910](46, 0xE100000000000000);

          MEMORY[0x25F8C4910](v13, v15);

          *a2 = v7;
          a2[1] = v9;
          return;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_25E9978A0(char *a1@<X8>)
{
  swift_beginAccess();
  if (qword_27FD0DD78 && (v2 = qword_27FD0DD78, v3 = sub_25E9D7E60(), v2, v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
    sub_25E98F558(0, &qword_27FD0D9D0, 0x277D5A7B8);
    sub_25E997B8C();
    v4 = sub_25E9D8050();

    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    v5 = 7;
  }

  *a1 = v5;
}

id sub_25E9979B8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  if (([a1 stopReasonMajor] == 2 || objc_msgSend(a1, sel_stopReasonMajor) == 5) && (result = objc_msgSend(a1, sel_stopReasonMinor), !result))
  {
    v5 = 1;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), result == 5))
  {
    v5 = 2;
  }

  else if ([a1 stopReasonMajor] == 5 && ((result = objc_msgSend(a1, sel_stopReasonMinor), result == 1) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 9) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 4)))
  {
    v5 = 3;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), result == 10))
  {
    v5 = 4;
  }

  else if ([a1 stopReasonMajor] == 5 && (result = objc_msgSend(a1, sel_stopReasonMinor), !result))
  {
    v5 = 5;
  }

  else
  {
    result = [a1 stopReasonMajor];
    if (result == 5 && ((result = [a1 stopReasonMinor], result == 6) || (result = objc_msgSend(a1, sel_stopReasonMinor), result == 7)))
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  *a2 = v5;
  return result;
}

unint64_t sub_25E997B8C()
{
  result = qword_27FD0D990;
  if (!qword_27FD0D990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D980, &qword_25E9D9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D990);
  }

  return result;
}

uint64_t sub_25E997C24()
{
  swift_beginAccess();
  if (qword_27FD0DD78)
  {
    v0 = qword_27FD0DD78;
    v1 = sub_25E9D7E60();

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
      sub_25E98F558(0, &qword_27FD0D9E0, 0x277D5A980);
      sub_25E997B8C();
      v2 = sub_25E9D8050();

      if (*(v2 + 16))
      {
        v3 = *(v2 + 32);

        return v3;
      }
    }
  }

  return 0;
}

unint64_t sub_25E997D6C(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_6;
  }

  v3 = qword_27FD0DD78;
  v4 = sub_25E9D7E60();

  if (!v4)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D980, &qword_25E9D9B90);
  sub_25E98F558(0, &qword_27FD0D9D8, 0x277D5AB80);
  a1(0);
  sub_25E997B8C();
  v5 = sub_25E9D8050();

  if (!*(v5 + 16))
  {

LABEL_6:
    v6 = 0;
    v7 = 1;
    return v6 | (v7 << 32);
  }

  v6 = *(v5 + 32);

  v7 = 0;
  return v6 | (v7 << 32);
}

uint64_t SELFProcessedStreamTurnReader.bookmark.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *SELFProcessedStreamTurnReader.init(streamIdentifier:domain:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for Bookmark();
  swift_allocObject();
  result = sub_25E98B630(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t SELFProcessedStreamTurnReader.read()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9E8, &qword_25E9D9C58);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_25E9D77A0();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[28] = v4;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_25E998218, 0, 0);
}

uint64_t sub_25E998218()
{
  v28 = v0;
  v1 = swift_allocObject();
  v0[30] = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v2 = sub_25E9D7F10();
  v0[31] = __swift_project_value_buffer(v2, qword_280F6FE78);

  v3 = sub_25E9D7F00();
  v4 = sub_25E9D8120();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = v0[26];
    v26 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315394;
    swift_beginAccess();
    v10 = *(v5 + 40);
    v11 = *(v5 + 48);

    v12 = sub_25E9887EC(v10, v11, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    sub_25E98B828(v6);
    sub_25E999374();
    v13 = sub_25E9D82F0();
    v15 = v14;
    (*(v7 + 8))(v6, v26);
    v16 = sub_25E9887EC(v13, v15, &v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_25E971000, v3, v4, "Bookmark: %s,  Last Bookmark Time is %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v9, -1, -1);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[25];
  sub_25E9D7E50();
  sub_25E9D7EB0();
  v20 = sub_25E9D7EA0();
  v0[32] = v20;
  sub_25E98B828(v17);
  sub_25E9D7770();
  v22 = v21;
  v23 = *(v18 + 8);
  v0[33] = v23;
  v0[34] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v19);
  v24 = swift_task_alloc();
  v0[35] = v24;
  *v24 = v0;
  v24[1] = sub_25E998564;
  v32 = 0;
  v33 = 0;
  v31 = 1;
  v30 = 0;

  return MEMORY[0x2821377A8](v0 + 2, v20, v22, 0, 0, 1, 0, 1);
}

uint64_t sub_25E998564()
{
  v2 = *(*v1 + 256);
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_25E998A8C;
  }

  else
  {
    v3 = sub_25E998690;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25E998690()
{
  v32 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  sub_25E9D7E30();
  sub_25E999310();

  v4 = sub_25E9D7800();

  (*(v2 + 8))(v1, v3);

  v5 = sub_25E9D7F00();
  v6 = sub_25E9D8120();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    swift_beginAccess();
    v9 = *(v7 + 16);
    if (v9 >> 62)
    {
      v10 = sub_25E9D8290();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v10;

    _os_log_impl(&dword_25E971000, v5, v6, "Received total of %ld turns", v8, 0xCu);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[28];
  sub_25E9D7790();
  sub_25E98BD88(v11);

  v12 = sub_25E9D7F00();
  v13 = sub_25E9D8120();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = v0[33];
    v14 = v0[29];
    v15 = v0[28];
    v16 = v0[25];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315394;
    swift_beginAccess();
    v20 = *(v14 + 40);
    v19 = *(v14 + 48);

    v21 = sub_25E9887EC(v20, v19, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_25E98B828(v15);
    sub_25E999374();
    v22 = sub_25E9D82F0();
    v24 = v23;
    v30(v15, v16);
    v25 = sub_25E9887EC(v22, v24, &v31);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_25E971000, v12, v13, "Task Completed, Bookmark updated: %s,  Last Bookmark Time is %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v18, -1, -1);
    MEMORY[0x25F8C51A0](v17, -1, -1);
  }

  v26 = v0[30];
  swift_beginAccess();
  v27 = *(v26 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_25E998A8C()
{
  v12 = v0;
  v1 = v0[36];
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_25E9D8240();
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  MEMORY[0x25F8C4910](0xD000000000000036, 0x800000025E9DDA60);
  v0[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9F0, &qword_25E9D9C60);
  sub_25E9D8280();
  v2 = v0[19];
  v3 = v0[20];

  v4 = sub_25E9D7F00();
  v5 = sub_25E9D8130();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25E9887EC(v2, v3, v11);
    _os_log_impl(&dword_25E971000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F8C51A0](v7, -1, -1);
    MEMORY[0x25F8C51A0](v6, -1, -1);
  }

  v8 = v0[36];
  LOBYTE(v11[0]) = 32;
  _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(v11, v2, v3);

  _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0x53494C4D4941, 0xE600000000000000, 0xD000000000000018, 0x800000025E9DD980);

  v9 = v0[1];

  return v9(0);
}

void sub_25E998CE8(void *a1)
{
  if ([a1 state])
  {
    if ([a1 state] == 1)
    {
      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v2 = sub_25E9D7F10();
      __swift_project_value_buffer(v2, qword_280F6FE78);
      v3 = sub_25E9D7F00();
      v4 = sub_25E9D8130();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v18 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_25E9887EC(0xD00000000000001ALL, 0x800000025E9DDAC0, &v18);
        _os_log_impl(&dword_25E971000, v3, v4, "%s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x25F8C51A0](v6, -1, -1);
        MEMORY[0x25F8C51A0](v5, -1, -1);
      }

      LOBYTE(v18) = 64;
      _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v18, 0xD00000000000001ALL, 0x800000025E9DDAC0);
      v7 = 0x4664616552535042;
      v8 = 0xED000064656C6961;
    }

    else
    {
      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v12 = sub_25E9D7F10();
      __swift_project_value_buffer(v12, qword_280F6FE78);
      v13 = sub_25E9D7F00();
      v14 = sub_25E9D8130();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_25E9887EC(0xD00000000000001ALL, 0x800000025E9DDAA0, &v18);
        _os_log_impl(&dword_25E971000, v13, v14, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x25F8C51A0](v16, -1, -1);
        MEMORY[0x25F8C51A0](v15, -1, -1);
      }

      LOBYTE(v18) = 65;
      _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v18, 0xD00000000000001ALL, 0x800000025E9DDAA0);
      v7 = 0x5564616552535042;
      v8 = 0xEE006E776F6E6B6ELL;
    }

    _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0x656D6F6942, 0xE500000000000000, v7, v8);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v9 = sub_25E9D7F10();
    __swift_project_value_buffer(v9, qword_280F6FE78);
    oslog = sub_25E9D7F00();
    v10 = sub_25E9D8120();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25E971000, oslog, v10, "Received the completion state", v11, 2u);
      MEMORY[0x25F8C51A0](v11, -1, -1);
    }
  }
}

void sub_25E9990F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = a1;
    MEMORY[0x25F8C4950]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25E9D80A0();
    }

    sub_25E9D80C0();
    swift_endAccess();
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_280F6FE78);
    oslog = sub_25E9D7F00();
    v6 = sub_25E9D8120();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25E971000, oslog, v6, "receiving SELFProcessedEvent", v7, 2u);
      MEMORY[0x25F8C51A0](v7, -1, -1);
    }
  }
}

uint64_t sub_25E999274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25E986EB0;

  return SELFProcessedStreamTurnReader.read()();
}

unint64_t sub_25E999310()
{
  result = qword_27FD0D9F8;
  if (!qword_27FD0D9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0D9E8, &qword_25E9D9C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D9F8);
  }

  return result;
}

unint64_t sub_25E999374()
{
  result = qword_27FD0DA00;
  if (!qword_27FD0DA00)
  {
    sub_25E9D77A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA00);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

PnROnDeviceFramework::SelectedEvent_optional __swiftcall SelectedEvent.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue <= 400)
  {
    if (rawValue <= 104)
    {
      if (rawValue > 101)
      {
        if (rawValue == 102)
        {
          *v1 = 2;
        }

        else if (rawValue == 103)
        {
          *v1 = 3;
        }

        else
        {
          *v1 = 4;
        }

        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 101)
      {
        v2 = 1;
LABEL_21:
        *v1 = v2;
        return rawValue;
      }
    }

    else if (rawValue > 200)
    {
      switch(rawValue)
      {
        case 201:
          *v1 = 8;
          return rawValue;
        case 301:
          *v1 = 9;
          return rawValue;
        case 302:
          *v1 = 10;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 'i':
          *v1 = 5;
          return rawValue;
        case 'j':
          *v1 = 6;
          return rawValue;
        case 'k':
          *v1 = 7;
          return rawValue;
      }
    }

LABEL_25:
    *v1 = 89;
    return rawValue;
  }

  v2 = 71;
  switch(rawValue)
  {
    case 1101:
      *v1 = 13;
      return rawValue;
    case 1102:
      *v1 = 14;
      return rawValue;
    case 1103:
      *v1 = 15;
      return rawValue;
    case 1104:
      *v1 = 16;
      return rawValue;
    case 1105:
      *v1 = 17;
      return rawValue;
    case 1106:
      *v1 = 18;
      return rawValue;
    case 1107:
      *v1 = 19;
      return rawValue;
    case 1108:
      *v1 = 20;
      return rawValue;
    case 1109:
      *v1 = 21;
      return rawValue;
    case 1110:
      *v1 = 22;
      return rawValue;
    case 1111:
      *v1 = 23;
      return rawValue;
    case 1112:
      *v1 = 24;
      return rawValue;
    case 1113:
      *v1 = 25;
      return rawValue;
    case 1114:
      *v1 = 26;
      return rawValue;
    case 1115:
      *v1 = 27;
      return rawValue;
    case 1116:
      *v1 = 28;
      return rawValue;
    case 1117:
      *v1 = 29;
      return rawValue;
    case 1118:
      *v1 = 30;
      return rawValue;
    case 1119:
      *v1 = 31;
      return rawValue;
    case 1120:
      *v1 = 32;
      return rawValue;
    case 1121:
      *v1 = 33;
      return rawValue;
    case 1122:
      *v1 = 34;
      return rawValue;
    case 1123:
      *v1 = 35;
      return rawValue;
    case 1124:
      *v1 = 36;
      return rawValue;
    case 1125:
    case 1126:
    case 1127:
    case 1128:
    case 1129:
    case 1130:
    case 1131:
    case 1132:
    case 1133:
    case 1134:
    case 1135:
    case 1136:
    case 1137:
    case 1138:
    case 1139:
    case 1140:
    case 1141:
    case 1142:
    case 1143:
    case 1144:
    case 1145:
    case 1146:
    case 1147:
    case 1148:
    case 1149:
    case 1150:
    case 1151:
    case 1152:
    case 1153:
    case 1154:
    case 1155:
    case 1156:
    case 1157:
    case 1158:
    case 1159:
    case 1160:
    case 1161:
    case 1162:
    case 1163:
    case 1164:
    case 1165:
    case 1166:
    case 1167:
    case 1168:
    case 1169:
    case 1170:
    case 1171:
    case 1172:
    case 1173:
    case 1174:
    case 1175:
    case 1176:
    case 1177:
    case 1178:
    case 1179:
    case 1180:
    case 1181:
    case 1182:
    case 1183:
    case 1184:
    case 1185:
    case 1186:
    case 1187:
    case 1188:
    case 1189:
    case 1190:
    case 1191:
    case 1192:
    case 1193:
    case 1194:
    case 1195:
    case 1196:
    case 1197:
    case 1198:
    case 1199:
    case 1200:
    case 1203:
    case 1204:
    case 1205:
    case 1206:
    case 1207:
    case 1208:
    case 1209:
    case 1210:
    case 1211:
    case 1212:
    case 1213:
    case 1214:
    case 1215:
    case 1216:
    case 1217:
    case 1218:
    case 1219:
    case 1220:
    case 1221:
    case 1222:
    case 1223:
    case 1224:
    case 1225:
    case 1226:
    case 1227:
    case 1228:
    case 1229:
    case 1230:
    case 1231:
    case 1232:
    case 1233:
    case 1234:
    case 1235:
    case 1236:
    case 1237:
    case 1238:
    case 1239:
    case 1240:
    case 1241:
    case 1242:
    case 1243:
    case 1244:
    case 1245:
    case 1246:
    case 1247:
    case 1248:
    case 1249:
    case 1250:
    case 1251:
    case 1252:
    case 1253:
    case 1254:
    case 1255:
    case 1256:
    case 1257:
    case 1258:
    case 1259:
    case 1260:
    case 1261:
    case 1262:
    case 1263:
    case 1264:
    case 1265:
    case 1266:
    case 1267:
    case 1268:
    case 1269:
    case 1270:
    case 1271:
    case 1272:
    case 1273:
    case 1274:
    case 1275:
    case 1276:
    case 1277:
    case 1278:
    case 1279:
    case 1280:
    case 1281:
    case 1282:
    case 1283:
    case 1284:
    case 1285:
    case 1286:
    case 1287:
    case 1288:
    case 1289:
    case 1290:
    case 1291:
    case 1292:
    case 1293:
    case 1294:
    case 1295:
    case 1296:
    case 1297:
    case 1298:
    case 1299:
    case 1300:
    case 1311:
    case 1312:
    case 1313:
    case 1314:
    case 1315:
    case 1316:
    case 1317:
    case 1318:
    case 1319:
    case 1320:
    case 1321:
    case 1322:
    case 1323:
    case 1324:
    case 1325:
    case 1326:
    case 1327:
    case 1328:
    case 1329:
    case 1330:
    case 1331:
    case 1332:
    case 1333:
    case 1334:
    case 1335:
    case 1336:
    case 1337:
    case 1338:
    case 1339:
    case 1340:
    case 1341:
    case 1342:
    case 1343:
    case 1344:
    case 1345:
    case 1346:
    case 1347:
    case 1348:
    case 1349:
    case 1350:
    case 1351:
    case 1352:
    case 1353:
    case 1354:
    case 1355:
    case 1356:
    case 1357:
    case 1358:
    case 1359:
    case 1360:
    case 1361:
    case 1362:
    case 1363:
    case 1364:
    case 1365:
    case 1366:
    case 1367:
    case 1368:
    case 1369:
    case 1370:
    case 1371:
    case 1372:
    case 1373:
    case 1374:
    case 1375:
    case 1376:
    case 1377:
    case 1378:
    case 1379:
    case 1380:
    case 1381:
    case 1382:
    case 1383:
    case 1384:
    case 1385:
    case 1386:
    case 1387:
    case 1388:
    case 1389:
    case 1390:
    case 1391:
    case 1392:
    case 1393:
    case 1394:
    case 1395:
    case 1396:
    case 1397:
    case 1398:
    case 1399:
    case 1400:
    case 1415:
    case 1416:
    case 1417:
    case 1418:
    case 1419:
    case 1420:
    case 1421:
    case 1422:
    case 1423:
    case 1424:
    case 1425:
    case 1426:
    case 1427:
    case 1428:
    case 1429:
    case 1430:
    case 1431:
    case 1432:
    case 1433:
    case 1434:
    case 1435:
    case 1436:
    case 1437:
    case 1438:
    case 1439:
    case 1440:
    case 1441:
    case 1442:
    case 1443:
    case 1444:
    case 1445:
    case 1446:
    case 1447:
    case 1448:
    case 1449:
    case 1450:
    case 1451:
    case 1452:
    case 1453:
    case 1454:
    case 1455:
    case 1456:
    case 1457:
    case 1458:
    case 1459:
    case 1460:
    case 1461:
    case 1462:
    case 1463:
    case 1464:
    case 1465:
    case 1466:
    case 1467:
    case 1468:
    case 1469:
    case 1470:
    case 1471:
    case 1472:
    case 1473:
    case 1474:
    case 1475:
    case 1476:
    case 1477:
    case 1478:
    case 1479:
    case 1480:
    case 1481:
    case 1482:
    case 1483:
    case 1484:
    case 1485:
    case 1486:
    case 1487:
    case 1488:
    case 1489:
    case 1490:
    case 1491:
    case 1492:
    case 1493:
    case 1494:
    case 1495:
    case 1496:
    case 1497:
    case 1498:
    case 1499:
    case 1500:
    case 1515:
    case 1516:
    case 1517:
    case 1518:
    case 1519:
    case 1520:
    case 1521:
    case 1522:
    case 1523:
    case 1524:
    case 1525:
    case 1526:
    case 1527:
    case 1528:
    case 1529:
    case 1530:
    case 1531:
    case 1532:
    case 1533:
    case 1534:
    case 1535:
    case 1536:
    case 1537:
    case 1538:
    case 1539:
    case 1540:
    case 1541:
    case 1542:
    case 1543:
    case 1544:
    case 1545:
    case 1546:
    case 1547:
    case 1548:
    case 1549:
    case 1550:
    case 1551:
    case 1552:
    case 1553:
    case 1554:
    case 1555:
    case 1556:
    case 1557:
    case 1558:
    case 1559:
    case 1560:
    case 1561:
    case 1562:
    case 1563:
    case 1564:
    case 1565:
    case 1566:
    case 1567:
    case 1568:
    case 1569:
    case 1570:
    case 1571:
    case 1572:
    case 1573:
    case 1574:
    case 1575:
    case 1576:
    case 1577:
    case 1578:
    case 1579:
    case 1580:
    case 1581:
    case 1582:
    case 1583:
    case 1584:
    case 1585:
    case 1586:
    case 1587:
    case 1588:
    case 1589:
    case 1590:
    case 1591:
    case 1592:
    case 1593:
    case 1594:
    case 1595:
    case 1596:
    case 1597:
    case 1598:
    case 1599:
    case 1600:
    case 1611:
    case 1612:
    case 1613:
    case 1614:
    case 1615:
    case 1616:
    case 1617:
    case 1618:
    case 1619:
    case 1620:
    case 1621:
    case 1622:
    case 1623:
    case 1624:
    case 1625:
    case 1626:
    case 1627:
    case 1628:
    case 1629:
    case 1630:
    case 1631:
    case 1632:
    case 1633:
    case 1634:
    case 1635:
    case 1636:
    case 1637:
    case 1638:
    case 1639:
    case 1640:
    case 1641:
    case 1642:
    case 1643:
    case 1644:
    case 1645:
    case 1646:
    case 1647:
    case 1648:
    case 1649:
    case 1650:
    case 1651:
    case 1652:
    case 1653:
    case 1654:
    case 1655:
    case 1656:
    case 1657:
    case 1658:
    case 1659:
    case 1660:
    case 1661:
    case 1662:
    case 1663:
    case 1664:
    case 1665:
    case 1666:
    case 1667:
    case 1668:
    case 1669:
    case 1670:
    case 1671:
    case 1672:
    case 1673:
    case 1674:
    case 1675:
    case 1676:
    case 1677:
    case 1678:
    case 1679:
    case 1680:
    case 1681:
    case 1682:
    case 1683:
    case 1684:
    case 1685:
    case 1686:
    case 1687:
    case 1688:
    case 1689:
    case 1690:
    case 1691:
    case 1692:
    case 1693:
    case 1694:
    case 1695:
    case 1696:
    case 1697:
    case 1698:
    case 1699:
    case 1700:
      goto LABEL_25;
    case 1201:
      *v1 = 37;
      return rawValue;
    case 1202:
      *v1 = 38;
      return rawValue;
    case 1301:
      *v1 = 39;
      return rawValue;
    case 1302:
      *v1 = 40;
      return rawValue;
    case 1303:
      *v1 = 41;
      return rawValue;
    case 1304:
      *v1 = 42;
      return rawValue;
    case 1305:
      *v1 = 43;
      return rawValue;
    case 1306:
      *v1 = 44;
      return rawValue;
    case 1307:
      *v1 = 45;
      return rawValue;
    case 1308:
      *v1 = 46;
      return rawValue;
    case 1309:
      *v1 = 47;
      return rawValue;
    case 1310:
      *v1 = 48;
      return rawValue;
    case 1401:
      *v1 = 49;
      return rawValue;
    case 1402:
      *v1 = 50;
      return rawValue;
    case 1403:
      *v1 = 51;
      return rawValue;
    case 1404:
      *v1 = 52;
      return rawValue;
    case 1405:
      *v1 = 53;
      return rawValue;
    case 1406:
      *v1 = 54;
      return rawValue;
    case 1407:
      *v1 = 55;
      return rawValue;
    case 1408:
      *v1 = 56;
      return rawValue;
    case 1409:
      *v1 = 57;
      return rawValue;
    case 1410:
      *v1 = 58;
      return rawValue;
    case 1411:
      *v1 = 59;
      return rawValue;
    case 1412:
      *v1 = 60;
      return rawValue;
    case 1413:
      *v1 = 61;
      return rawValue;
    case 1414:
      *v1 = 62;
      return rawValue;
    case 1501:
      *v1 = 63;
      return rawValue;
    case 1502:
      *v1 = 64;
      return rawValue;
    case 1503:
      *v1 = 65;
      return rawValue;
    case 1504:
      *v1 = 66;
      return rawValue;
    case 1505:
      *v1 = 67;
      return rawValue;
    case 1506:
      *v1 = 68;
      return rawValue;
    case 1507:
      *v1 = 69;
      return rawValue;
    case 1508:
      *v1 = 70;
      return rawValue;
    case 1509:
      goto LABEL_21;
    case 1510:
      *v1 = 72;
      return rawValue;
    case 1511:
      *v1 = 73;
      return rawValue;
    case 1512:
      *v1 = 74;
      return rawValue;
    case 1513:
      *v1 = 75;
      return rawValue;
    case 1514:
      *v1 = 76;
      return rawValue;
    case 1601:
      *v1 = 77;
      return rawValue;
    case 1602:
      *v1 = 78;
      return rawValue;
    case 1603:
      *v1 = 79;
      return rawValue;
    case 1604:
      *v1 = 80;
      return rawValue;
    case 1605:
      *v1 = 81;
      return rawValue;
    case 1606:
      *v1 = 82;
      return rawValue;
    case 1607:
      *v1 = 83;
      return rawValue;
    case 1608:
      *v1 = 84;
      return rawValue;
    case 1609:
      *v1 = 85;
      return rawValue;
    case 1610:
      *v1 = 86;
      return rawValue;
    case 1701:
      *v1 = 87;
      return rawValue;
    case 1702:
      *v1 = 88;
      return rawValue;
    default:
      if (rawValue == 401)
      {
        *v1 = 11;
      }

      else
      {
        if (rawValue != 402)
        {
          goto LABEL_25;
        }

        *v1 = 12;
      }

      break;
  }

  return rawValue;
}

uint64_t sub_25E999998()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DA078[v1]);
  return sub_25E9D83C0();
}

uint64_t sub_25E999A20(uint64_t a1)
{
  v2 = *v1;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DA078[v2]);
  return sub_25E9D83C0();
}

uint64_t PRRequestContextMetadata.planCycleId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E9D77F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PRRequestContextMetadata(uint64_t a1)
{
  result = qword_27FD0DA18;
  if (!qword_27FD0DA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PnROnDeviceFramework::StopRecordingReason_optional __swiftcall StopRecordingReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StopRecordingReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x6E65657263536E4FLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x61546F54646C6F48;
  if (v1 != 3)
  {
    v4 = 0x525654656C707041;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6547726576726553;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_25E999D0C()
{
  result = qword_27FD0DA08;
  if (!qword_27FD0DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA08);
  }

  return result;
}

unint64_t sub_25E999D70()
{
  result = qword_27FD0DA10;
  if (!qword_27FD0DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DA10);
  }

  return result;
}

uint64_t sub_25E999DD0(uint64_t a1)
{
  sub_25E9D8010();
}

void sub_25E999F28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xEE006E6F74747542;
  v6 = 0x6E65657263536E4FLL;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001CLL;
    v5 = 0x800000025E9DCB50;
  }

  v7 = 0xEA00000000006B6CLL;
  v8 = 0x61546F54646C6F48;
  if (v2 != 3)
  {
    v8 = 0x525654656C707041;
    v7 = 0xED000065746F6D65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000011;
  v10 = 0x800000025E9DCB00;
  if (v2 != 1)
  {
    v9 = 0x6547726576726553;
    v10 = 0xEF6465746172656ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for SelectedEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 88;
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

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PnREvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA8 && a1[16])
  {
    return (*a1 + 168);
  }

  v3 = *a1;
  v4 = v3 >= 0x59;
  v5 = v3 - 89;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PnREvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA7)
  {
    *result = a2 - 168;
    *(result + 8) = 0;
    if (a3 >= 0xA8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 88;
    }
  }

  return result;
}

uint64_t sub_25E99A254(uint64_t a1)
{
  result = sub_25E9D77F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double SELFComponent.IFTranscript.__allocating_init()()
{
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25E9D9920;
  return result;
}

double SELFComponent.IFTranscript.init()()
{
  *&result = 1;
  *(v0 + 16) = xmmword_25E9D9920;
  return result;
}

void sub_25E99A324(unint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v127 - v3;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25E97F328(MEMORY[0x277D84F90]);
  v129 = sub_25E97F328(v5);
  swift_beginAccess();
  v7 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5D0 != -1)
    {
LABEL_87:
      swift_once();
    }

    v19 = sub_25E9D7F10();
    __swift_project_value_buffer(v19, qword_27FD0DBA8);
    v20 = sub_25E9D7F00();
    v21 = sub_25E9D8120();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v6;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25E971000, v20, v21, "IFTSchemaIFTClientEvent: Failed to init", v23, 2u);
      v24 = v23;
      v6 = v22;
      MEMORY[0x25F8C51A0](v24, -1, -1);
    }

    goto LABEL_75;
  }

  v128 = v4;
  v8 = v6;
  sub_25E99B37C();
  v9 = v7;
  v10 = sub_25E9D7E70();

  if (qword_27FD0D5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_25E9D7F10();
  v12 = __swift_project_value_buffer(v11, qword_27FD0DBA8);

  v137 = v12;
  v13 = sub_25E9D7F00();
  v14 = sub_25E9D8120();
  v15 = v10 >> 62;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v15)
    {
      v17 = sub_25E9D8290();
    }

    else
    {
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    _os_log_impl(&dword_25E971000, v13, v14, "IFTSchemaIFTClientEvent length %ld", v16, 0xCu);
    MEMORY[0x25F8C51A0](v16, -1, -1);
  }

  else
  {
  }

  if (v15)
  {
    v126 = sub_25E9D8290();
    v25 = v10;
    v136 = v126;
  }

  else
  {
    v25 = v10;
    v136 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v8;
  if (!v136)
  {

LABEL_75:
    if (qword_27FD0D5D0 != -1)
    {
LABEL_84:
      swift_once();
    }

    v110 = sub_25E9D7F10();
    __swift_project_value_buffer(v110, qword_27FD0DBA8);
    v111 = sub_25E9D7F00();
    v112 = sub_25E9D8120();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v140 = v114;
      *v113 = 136315394;

      v115 = v6;
      v116 = sub_25E9D7F40();
      v117 = a1;
      v119 = v118;

      v120 = sub_25E9887EC(v116, v119, &v140);
      a1 = v117;

      *(v113 + 4) = v120;
      *(v113 + 12) = 2080;
      v121 = v129;

      v122 = sub_25E9D7F40();
      v124 = v123;

      v125 = sub_25E9887EC(v122, v124, &v140);

      *(v113 + 14) = v125;
      v6 = v115;
      _os_log_impl(&dword_25E971000, v111, v112, "queriesCreated SELF Event %s, statementEvaluated SELF Event %s", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v114, -1, -1);
      MEMORY[0x25F8C51A0](v113, -1, -1);
    }

    else
    {

      v121 = v129;
    }

    *a1 = v6;
    *(a1 + 8) = v121;
    return;
  }

  v127 = a1;
  a1 = 0;
  v135 = v25 & 0xC000000000000001;
  v130 = v25 & 0xFFFFFFFFFFFFFF8;
  *&v18 = 136315138;
  v131 = v18;
  v134 = v25;
  while (1)
  {
    if (v135)
    {
      v26 = MEMORY[0x25F8C4B40](a1);
    }

    else
    {
      if (a1 >= *(v130 + 16))
      {
        goto LABEL_82;
      }

      v26 = *(v25 + 8 * a1 + 32);
    }

    v27 = v26;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v28 = sub_25E9D7840();
    v138 = a1 + 1;
    if (!v28)
    {
      v31 = 0;
LABEL_31:
      v139 = 0;
      v39 = 0xE000000000000000;
      v38 = 1;
      goto LABEL_32;
    }

    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    v31 = v30;
    if (!v30)
    {

      goto LABEL_31;
    }

    v32 = [v30 eventMetadata];
    if (!v32)
    {
      goto LABEL_28;
    }

    v33 = v32;
    v34 = [v32 ifEventId];

    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = v128;
    sub_25E9D8100();

    v36 = sub_25E9D77F0();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_25E9961C4(v35);
LABEL_28:
      v38 = 0;
      v139 = 0;
      v39 = 0xE000000000000000;
      goto LABEL_32;
    }

    v139 = sub_25E9D77C0();
    v39 = v95;
    (*(v37 + 8))(v35, v36);
    v38 = 0;
LABEL_32:

    v40 = sub_25E9D7F00();
    v41 = sub_25E9D8120();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v132 = v27;
      v133 = a1;
      v44 = v43;
      v140 = v43;
      *v42 = v131;
      v45 = sub_25E9D8000();
      v47 = v38;
      v48 = v6;
      v49 = sub_25E9887EC(v45, v46, &v140);

      *(v42 + 4) = v49;
      v6 = v48;
      v38 = v47;
      _os_log_impl(&dword_25E971000, v40, v41, "IFT ifEventId value %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v50 = v44;
      v27 = v132;
      a1 = v133;
      MEMORY[0x25F8C51A0](v50, -1, -1);
      MEMORY[0x25F8C51A0](v42, -1, -1);
    }

    v51 = v31;
    v52 = [v51 queriesCreated];
    if (!v52)
    {
      break;
    }

    v53 = sub_25E9D7F00();
    v54 = sub_25E9D8120();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v6;
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_25E971000, v53, v54, "Found IFTranscript SELF queriesCreated", v56, 2u);
      v57 = v56;
      v6 = v55;
      MEMORY[0x25F8C51A0](v57, -1, -1);
    }

    v58 = v27;
    v59 = sub_25E9D7850();
    if (!v59)
    {
      goto LABEL_90;
    }

    v60 = v59;
    v61 = sub_25E9D7870();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v6;
    v64 = sub_25E978F5C(v139, v39);
    v65 = v6[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_81;
    }

    v68 = v63;
    if (v6[3] >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v63 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        sub_25E97D5F4();
        if ((v68 & 1) == 0)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      sub_25E979464(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_25E978F5C(v139, v39);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_92;
      }

      v64 = v69;
      if ((v68 & 1) == 0)
      {
LABEL_65:
        v6 = v140;
        v140[(v64 >> 6) + 8] |= 1 << v64;
        v98 = (v6[6] + 16 * v64);
        *v98 = v139;
        v98[1] = v39;
        v99 = v6[7] + 16 * v64;
        *v99 = 87;
        *(v99 + 8) = v61;

        v100 = v6[2];
        v90 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v90)
        {
          goto LABEL_83;
        }

        v6[2] = v101;
        goto LABEL_67;
      }
    }

    v6 = v140;
    v94 = v140[7] + 16 * v64;
    *v94 = 87;
    *(v94 + 8) = v61;

LABEL_67:
    v25 = v134;
    v102 = v138;
LABEL_68:
    ++a1;
    if (v102 == v136)
    {

      a1 = v127;
      goto LABEL_75;
    }
  }

  v71 = [v51 statementEvaluated];

  if (!v71)
  {

    goto LABEL_67;
  }

  if (v38)
  {
LABEL_59:

    goto LABEL_67;
  }

  v72 = [v51 eventMetadata];
  if (!v72 || (v73 = v72, v74 = [v72 sender], v73, v74 != 3))
  {

    goto LABEL_59;
  }

  v75 = sub_25E9D7F00();
  v76 = sub_25E9D8120();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = v6;
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_25E971000, v75, v76, "Found IFTranscript SELF statementEvaluated", v78, 2u);
    v79 = v78;
    v6 = v77;
    MEMORY[0x25F8C51A0](v79, -1, -1);
  }

  v80 = v39;

  v81 = sub_25E9D7850();
  if (!v81)
  {
    goto LABEL_91;
  }

  v82 = v81;
  v83 = sub_25E9D7870();

  v84 = v129;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v84;
  v86 = sub_25E978F5C(v139, v80);
  v88 = *(v84 + 16);
  v89 = (v87 & 1) == 0;
  v90 = __OFADD__(v88, v89);
  v91 = v88 + v89;
  if (v90)
  {
    __break(1u);
    goto LABEL_87;
  }

  v92 = v87;
  if (*(v84 + 24) >= v91)
  {
    if (v85)
    {
      goto LABEL_62;
    }

    v103 = v86;
    sub_25E97D5F4();
    v86 = v103;
    if ((v92 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_63:
    v96 = v86;

    v129 = v140;
    v97 = v140[7] + 16 * v96;
    *v97 = 88;
    *(v97 + 8) = v83;
LABEL_73:
    v109 = v134;
    v102 = v138;

    v25 = v109;
    goto LABEL_68;
  }

  sub_25E979464(v91, v85);
  v86 = sub_25E978F5C(v139, v80);
  if ((v92 & 1) != (v93 & 1))
  {
    goto LABEL_92;
  }

LABEL_62:
  if (v92)
  {
    goto LABEL_63;
  }

LABEL_71:
  v104 = v140;
  v140[(v86 >> 6) + 8] |= 1 << v86;
  v105 = (v104[6] + 16 * v86);
  *v105 = v139;
  v105[1] = v80;
  v106 = v104[7] + 16 * v86;
  *v106 = 88;
  *(v106 + 8) = v83;
  v107 = v104[2];
  v90 = __OFADD__(v107, 1);
  v108 = v107 + 1;
  if (!v90)
  {
    v129 = v104;
    v104[2] = v108;
    goto LABEL_73;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_25E9D8330();
  __break(1u);
}

uint64_t SELFComponent.IFTranscript.__deallocating_deinit()
{
  sub_25E98F5A0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_25E99AF94(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_25E99AFE8(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_25E99B030(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_25E99B080(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 288 * a1), __src, 0x120uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B0F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25E99B13C(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 360 * a1), __src, 0x168uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B1B0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 240 * result);
  v7 = a4[13];
  v6[12] = a4[12];
  v6[13] = v7;
  v6[14] = a4[14];
  v8 = a4[9];
  v6[8] = a4[8];
  v6[9] = v8;
  v9 = a4[11];
  v6[10] = a4[10];
  v6[11] = v9;
  v10 = a4[5];
  v6[4] = a4[4];
  v6[5] = v10;
  v11 = a4[7];
  v6[6] = a4[6];
  v6[7] = v11;
  v12 = a4[1];
  *v6 = *a4;
  v6[1] = v12;
  v13 = a4[3];
  v6[2] = a4[2];
  v6[3] = v13;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_25E99B23C(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_25E99B284(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 232 * result;
  v7 = *(a4 + 208);
  *(v6 + 192) = *(a4 + 192);
  *(v6 + 208) = v7;
  *(v6 + 224) = *(a4 + 224);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 176);
  *(v6 + 160) = *(a4 + 160);
  *(v6 + 176) = v9;
  v10 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v10;
  v11 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v11;
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v13;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_25E99B310(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25E980EA8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25E99B37C()
{
  result = qword_27FD0DA28;
  if (!qword_27FD0DA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DA28);
  }

  return result;
}

uint64_t sub_25E99B3C8(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25E99B424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

BOOL sub_25E99B514(void *a1)
{
  v1 = [a1 flowState];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_25E99B558(void *a1)
{
  result = [a1 flowStep];
  if (result)
  {
    v2 = result;
    v3 = [result flowState];

    if (v3)
    {
      v4 = [v3 flowStateType];

      return (v4 == 142);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_25E99B640()
{
  swift_beginAccess();
  if (qword_27FD0DD78)
  {
    v0 = qword_27FD0DD78;
    v1 = sub_25E9D7EE0();

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA30, &qword_25E9DA3D8);
      sub_25E98F558(0, &qword_27FD0DA38, 0x277D57710);
      sub_25E99622C(&qword_27FD0DA40, &qword_27FD0DA30, &qword_25E9DA3D8, MEMORY[0x277CE4868]);
      sub_25E9D8040();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D9A0, &qword_25E9D9BB0);
      sub_25E98F558(0, &qword_27FD0DA48, 0x277D57500);
      sub_25E99622C(&qword_27FD0D9B0, &qword_27FD0D9A0, &qword_25E9D9BB0, MEMORY[0x277D83970]);
      v2 = sub_25E9D8040();

      if (v2 >> 62)
      {
        goto LABEL_4;
      }

LABEL_7:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v2 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_7;
  }

LABEL_4:
  result = sub_25E9D8290();
  if (!result)
  {
LABEL_5:

    return 0;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v2);
    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);
LABEL_11:
    v4 = v5;

    return v4;
  }

  __break(1u);
  return result;
}

double SELFComponent.RG.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

double SELFComponent.RG.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_25E99B8D4()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98F558(0, &qword_27FD0D928, 0x277D5A478);
  v1 = v0;
  v2 = sub_25E9D7E80();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void *sub_25E99B9B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v348 - v1;
  v3 = MEMORY[0x277D84F90];
  v377 = sub_25E97FC3C(MEMORY[0x277D84F90]);
  v364 = sub_25E97F328(v3);
  v357 = sub_25E97F328(v3);
  v4 = sub_25E97F328(v3);
  v356 = sub_25E97F328(v3);
  v363 = sub_25E97F328(v3);
  v355 = sub_25E97F328(v3);
  v362 = sub_25E97F328(v3);
  v354 = sub_25E97F328(v3);
  v361 = sub_25E97F328(v3);
  v353 = sub_25E97F328(v3);
  v360 = sub_25E97F328(v3);
  v352 = sub_25E97F328(v3);
  v359 = sub_25E97F328(v3);
  v351 = sub_25E97F328(v3);
  swift_beginAccess();
  v5 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v17 = sub_25E9D7F10();
    __swift_project_value_buffer(v17, qword_27FD0DB30);
    v18 = sub_25E9D7F00();
    v19 = sub_25E9D8120();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E971000, v18, v19, "RGSiriSchemaRGClientEvent: Failed to init", v20, 2u);
      MEMORY[0x25F8C51A0](v20, -1, -1);
    }

    goto LABEL_138;
  }

  v349 = v2;
  v6 = v4;
  sub_25E98F558(0, &qword_27FD0DA50, 0x277D5A3E0);
  v7 = v5;
  v8 = sub_25E9D7E70();

  if (qword_27FD0D5A8 != -1)
  {
LABEL_135:
    swift_once();
  }

  v9 = sub_25E9D7F10();
  v10 = __swift_project_value_buffer(v9, qword_27FD0DB30);

  v11 = sub_25E9D7F00();
  v12 = sub_25E9D8120();
  v13 = v8 >> 62;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v13)
    {
      v15 = sub_25E9D8290();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_25E971000, v11, v12, "rgRequestClient length %ld", v14, 0xCu);
    MEMORY[0x25F8C51A0](v14, -1, -1);
  }

  else
  {
  }

  if (v13)
  {
    v21 = sub_25E9D8290();
    v4 = v6;
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_137;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v6;
  if (!v21)
  {
LABEL_137:

LABEL_138:
    v219 = v358;
    v358[2] = v377;

    v219[3] = v364;

    v219[4] = v357;

    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v220 = sub_25E9D7F10();
    __swift_project_value_buffer(v220, qword_27FD0DB30);
    v221 = sub_25E9D7F00();
    v222 = sub_25E9D8120();
    v223 = os_log_type_enabled(v221, v222);
    v374 = v4;
    if (v223)
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v376 = v225;
      *v224 = 136315138;

      v226 = sub_25E9D7F40();
      v228 = v227;

      v229 = sub_25E9887EC(v226, v228, &v376);

      *(v224 + 4) = v229;
      _os_log_impl(&dword_25E971000, v221, v222, "RG TYPE HASHMAP RGSiriSchemaRGRequestContext:RG_TYPE %s", v224, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v225);
      MEMORY[0x25F8C51A0](v225, -1, -1);
      MEMORY[0x25F8C51A0](v224, -1, -1);
    }

    v230 = sub_25E9D7F00();
    v231 = sub_25E9D8120();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v376 = v233;
      *v232 = 136315138;

      v234 = sub_25E9D7F40();
      v236 = v235;

      v237 = sub_25E9887EC(v234, v236, &v376);

      *(v232 + 4) = v237;
      _os_log_impl(&dword_25E971000, v230, v231, "RG START HASHMAP RGSiriSchemaRGRequestContext:Event %s", v232, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v233);
      MEMORY[0x25F8C51A0](v233, -1, -1);
      MEMORY[0x25F8C51A0](v232, -1, -1);
    }

    v238 = sub_25E9D7F00();
    v239 = sub_25E9D8120();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v376 = v241;
      *v240 = 136315138;

      v242 = sub_25E9D7F40();
      v244 = v243;

      v245 = sub_25E9887EC(v242, v244, &v376);

      *(v240 + 4) = v245;
      _os_log_impl(&dword_25E971000, v238, v239, "RG END HASHMAP RGSiriSchemaRGRequestContext:Event %s", v240, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v241);
      MEMORY[0x25F8C51A0](v241, -1, -1);
      MEMORY[0x25F8C51A0](v240, -1, -1);
    }

    v246 = v358;
    v358[5] = v374;

    v246[6] = v356;

    v247 = sub_25E9D7F00();
    v248 = sub_25E9D8120();
    if (os_log_type_enabled(v247, v248))
    {
      v249 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v376 = v250;
      *v249 = 136315138;

      v251 = sub_25E9D7F40();
      v253 = v252;

      v254 = sub_25E9887EC(v251, v253, &v376);

      *(v249 + 4) = v254;
      _os_log_impl(&dword_25E971000, v247, v248, "RG START HASHMAP RGSiriSchemaRGOverrideContext:Event %s", v249, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v250);
      MEMORY[0x25F8C51A0](v250, -1, -1);
      MEMORY[0x25F8C51A0](v249, -1, -1);
    }

    v255 = sub_25E9D7F00();
    v256 = sub_25E9D8120();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v376 = v258;
      *v257 = 136315138;

      v259 = sub_25E9D7F40();
      v261 = v260;

      v262 = sub_25E9887EC(v259, v261, &v376);

      *(v257 + 4) = v262;
      _os_log_impl(&dword_25E971000, v255, v256, "RG END HASHMAP RGSiriSchemaRGOverrideContext:Event %s", v257, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v258);
      MEMORY[0x25F8C51A0](v258, -1, -1);
      MEMORY[0x25F8C51A0](v257, -1, -1);
    }

    v263 = v358;
    v358[7] = v363;

    v263[8] = v355;

    v264 = sub_25E9D7F00();
    v265 = sub_25E9D8120();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v376 = v267;
      *v266 = 136315138;

      v268 = sub_25E9D7F40();
      v270 = v269;

      v271 = sub_25E9887EC(v268, v270, &v376);

      *(v266 + 4) = v271;
      _os_log_impl(&dword_25E971000, v264, v265, "RG START HASHMAP RGSiriSchemaRGValidationContext:Event %s", v266, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v267);
      MEMORY[0x25F8C51A0](v267, -1, -1);
      MEMORY[0x25F8C51A0](v266, -1, -1);
    }

    v272 = sub_25E9D7F00();
    v273 = sub_25E9D8120();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v376 = v275;
      *v274 = 136315138;

      v276 = sub_25E9D7F40();
      v278 = v277;

      v279 = sub_25E9887EC(v276, v278, &v376);

      *(v274 + 4) = v279;
      _os_log_impl(&dword_25E971000, v272, v273, "RG END HASHMAP RGSiriSchemaRGValidationContext:Event %s", v274, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v275);
      MEMORY[0x25F8C51A0](v275, -1, -1);
      MEMORY[0x25F8C51A0](v274, -1, -1);
    }

    v280 = v358;
    v358[9] = v362;

    v280[10] = v354;

    v281 = sub_25E9D7F00();
    v282 = sub_25E9D8120();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      v376 = v284;
      *v283 = 136315138;

      v285 = sub_25E9D7F40();
      v287 = v286;

      v288 = sub_25E9887EC(v285, v287, &v376);

      *(v283 + 4) = v288;
      _os_log_impl(&dword_25E971000, v281, v282, "RG START HASHMAP RGSiriSchemaRGCatalogContext:Event %s", v283, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v284);
      MEMORY[0x25F8C51A0](v284, -1, -1);
      MEMORY[0x25F8C51A0](v283, -1, -1);
    }

    v289 = sub_25E9D7F00();
    v290 = sub_25E9D8120();
    if (os_log_type_enabled(v289, v290))
    {
      v291 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      v376 = v292;
      *v291 = 136315138;

      v293 = sub_25E9D7F40();
      v295 = v294;

      v296 = sub_25E9887EC(v293, v295, &v376);

      *(v291 + 4) = v296;
      _os_log_impl(&dword_25E971000, v289, v290, "RG END HASHMAP RGSiriSchemaRGCatalogContext:Event %s", v291, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v292);
      MEMORY[0x25F8C51A0](v292, -1, -1);
      MEMORY[0x25F8C51A0](v291, -1, -1);
    }

    v297 = v358;
    v358[11] = v361;

    v297[12] = v353;

    v298 = sub_25E9D7F00();
    v299 = sub_25E9D8120();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v376 = v301;
      *v300 = 136315138;

      v302 = sub_25E9D7F40();
      v304 = v303;

      v305 = sub_25E9887EC(v302, v304, &v376);

      *(v300 + 4) = v305;
      _os_log_impl(&dword_25E971000, v298, v299, "RG START HASHMAP RGSiriSchemaRGInferenceContext:Event %s", v300, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v301);
      MEMORY[0x25F8C51A0](v301, -1, -1);
      MEMORY[0x25F8C51A0](v300, -1, -1);
    }

    v306 = sub_25E9D7F00();
    v307 = sub_25E9D8120();
    if (os_log_type_enabled(v306, v307))
    {
      v308 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      v376 = v309;
      *v308 = 136315138;

      v310 = sub_25E9D7F40();
      v312 = v311;

      v313 = sub_25E9887EC(v310, v312, &v376);

      *(v308 + 4) = v313;
      _os_log_impl(&dword_25E971000, v306, v307, "RG END HASHMAP RGSiriSchemaRGInferenceContext:Event %s", v308, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v309);
      MEMORY[0x25F8C51A0](v309, -1, -1);
      MEMORY[0x25F8C51A0](v308, -1, -1);
    }

    v314 = v358;
    v358[13] = v360;

    v314[14] = v352;

    v315 = sub_25E9D7F00();
    v316 = sub_25E9D8120();
    if (os_log_type_enabled(v315, v316))
    {
      v317 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v376 = v318;
      *v317 = 136315138;

      v319 = sub_25E9D7F40();
      v321 = v320;

      v322 = sub_25E9887EC(v319, v321, &v376);

      *(v317 + 4) = v322;
      _os_log_impl(&dword_25E971000, v315, v316, "RG START HASHMAP RGSiriSchemaRGHallucinationDetectionContext:Event %s", v317, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v318);
      MEMORY[0x25F8C51A0](v318, -1, -1);
      MEMORY[0x25F8C51A0](v317, -1, -1);
    }

    v323 = sub_25E9D7F00();
    v324 = sub_25E9D8120();
    if (os_log_type_enabled(v323, v324))
    {
      v325 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      v376 = v326;
      *v325 = 136315138;

      v327 = sub_25E9D7F40();
      v329 = v328;

      v330 = sub_25E9887EC(v327, v329, &v376);

      *(v325 + 4) = v330;
      _os_log_impl(&dword_25E971000, v323, v324, "RG END HASHMAP RGSiriSchemaRGHallucinationDetectionContext:Event %s", v325, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v326);
      MEMORY[0x25F8C51A0](v326, -1, -1);
      MEMORY[0x25F8C51A0](v325, -1, -1);
    }

    v331 = v358;
    v358[15] = v359;

    v331[16] = v351;

    v332 = sub_25E9D7F00();
    v333 = sub_25E9D8120();
    if (os_log_type_enabled(v332, v333))
    {
      v334 = swift_slowAlloc();
      v335 = swift_slowAlloc();
      v376 = v335;
      *v334 = 136315138;

      v336 = sub_25E9D7F40();
      v338 = v337;

      v339 = sub_25E9887EC(v336, v338, &v376);

      *(v334 + 4) = v339;
      _os_log_impl(&dword_25E971000, v332, v333, "RG START HASHMAP RGSiriSchemaRGGMSCallContext:Event %s", v334, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v335);
      MEMORY[0x25F8C51A0](v335, -1, -1);
      MEMORY[0x25F8C51A0](v334, -1, -1);
    }

    v340 = sub_25E9D7F00();
    v341 = sub_25E9D8120();
    if (os_log_type_enabled(v340, v341))
    {
      v342 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      v376 = v343;
      *v342 = 136315138;

      v344 = sub_25E9D7F40();
      v346 = v345;

      v347 = sub_25E9887EC(v344, v346, &v376);

      *(v342 + 4) = v347;
      _os_log_impl(&dword_25E971000, v340, v341, "RG END HASHMAP RGSiriSchemaRGGMSCallContext:Event %s", v342, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v343);
      MEMORY[0x25F8C51A0](v343, -1, -1);
      MEMORY[0x25F8C51A0](v342, -1, -1);
    }
  }

LABEL_15:
  v22 = 0;
  v367 = v8 & 0xC000000000000001;
  v350 = v8 & 0xFFFFFFFFFFFFFF8;
  *&v16 = 136315138;
  v368 = v16;
  v365 = v21;
  v366 = v8;
  v371 = v10;
  while (1)
  {
    if (v367)
    {
      v23 = MEMORY[0x25F8C4B40](v22, v8);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v22 >= *(v350 + 16))
      {
        goto LABEL_134;
      }

      v23 = *(v8 + 8 * v22 + 32);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }
    }

    v369 = v24;
    v370 = v22;
    v25 = v23;
    v26 = sub_25E9D7F00();
    v27 = sub_25E9D8120();

    v28 = os_log_type_enabled(v26, v27);
    v372 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v376 = v30;
      *v29 = v368;
      v31 = [v25 debugDescription];
      v32 = sub_25E9D7FB0();
      v34 = v33;

      v35 = sub_25E9887EC(v32, v34, &v376);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_25E971000, v26, v27, "pnrOrderedEvent value %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F8C51A0](v30, -1, -1);
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    v36 = sub_25E9D7840();
    if (v36)
    {
      v37 = v36;
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (!v38)
      {
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = sub_25E9D7F00();
    v41 = sub_25E9D8120();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v375 = v38;
      v376 = v43;
      *v42 = v368;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA58, &qword_25E9DA3E0);
      v44 = sub_25E9D81B0();
      v46 = sub_25E9887EC(v44, v45, &v376);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25E971000, v40, v41, "rgEvent Client Event value %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F8C51A0](v43, -1, -1);
      MEMORY[0x25F8C51A0](v42, -1, -1);
    }

    if (!v38)
    {
      goto LABEL_37;
    }

    v47 = [v39 eventMetadata];
    if (!v47)
    {
      goto LABEL_37;
    }

    v48 = v47;
    v49 = [v47 rgId];

    if (!v49)
    {
      goto LABEL_37;
    }

    v50 = v349;
    sub_25E9D8100();

    v51 = sub_25E9D77F0();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      sub_25E981210(v50, &qword_27FD0D7D8, &qword_25E9D9BC0);
LABEL_37:
      v373 = 0;
      v6 = 0xE000000000000000;
      goto LABEL_38;
    }

    v373 = sub_25E9D77C0();
    v90 = v50;
    v6 = v91;
    (*(v52 + 8))(v90, v51);
LABEL_38:

    v53 = sub_25E9D7F00();
    v54 = sub_25E9D8120();

    v55 = os_log_type_enabled(v53, v54);
    v374 = v6;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v376 = v57;
      *v56 = v368;
      v58 = sub_25E9D8000();
      v6 = v59;
      v60 = v4;
      v61 = sub_25E9887EC(v58, v59, &v376);

      *(v56 + 4) = v61;
      v4 = v60;
      _os_log_impl(&dword_25E971000, v53, v54, "rgId value %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x25F8C51A0](v57, -1, -1);
      MEMORY[0x25F8C51A0](v56, -1, -1);
    }

    if (!v38)
    {

      v8 = v366;
      goto LABEL_17;
    }

    v62 = [v39 requestContext];
    v63 = 0x279A43000uLL;
    if (v62)
    {
      v64 = v62;
      v65 = [v62 startedOrChanged];

      if (v65)
      {
        break;
      }
    }

    v76 = [v39 requestContext];
    v6 = v373;
    if (!v76 || (v77 = v76, v78 = [v76 ended], v77, !v78))
    {
      v8 = v366;
      v70 = v372;
      goto LABEL_60;
    }

    v79 = sub_25E9D7F00();
    v80 = sub_25E9D8120();
    v81 = os_log_type_enabled(v79, v80);
    v8 = v366;
    v70 = v372;
    if (v81)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_25E971000, v79, v80, "requestContext: ended", v82, 2u);
      MEMORY[0x25F8C51A0](v82, -1, -1);
    }

    v83 = [v39 requestContext];
    if (v83 && (v84 = v83, v85 = [v83 ended], v84, v85))
    {
      v86 = v4;
      [v85 responseSource];

      v87 = sub_25E9D8180();
      v89 = v88;
    }

    else
    {
      v86 = v4;
      v87 = 0;
      v89 = 0;
    }

    v92 = v374;

    v93 = v89;
    v94 = v373;
    sub_25E98F744(v87, v93, v373, v92);
    result = sub_25E9D7850();
    if (!result)
    {
      goto LABEL_185;
    }

    v95 = result;
    v96 = sub_25E9D7870();

    v97 = v357;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v376 = v97;
    sub_25E993FE0(50, v96, v94, v92, isUniquelyReferenced_nonNull_native);
    v357 = v376;
    v4 = v86;
    v6 = v94;
LABEL_59:
    v63 = 0x279A43000uLL;
LABEL_60:
    v99 = [v39 overrideContext];
    if (v99 && (v100 = v99, v101 = [v99 startedOrChanged], v100, v101))
    {

      v102 = sub_25E9D7F00();
      v103 = sub_25E9D8120();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_25E971000, v102, v103, "overrideContext: startedOrChanged", v104, 2u);
        MEMORY[0x25F8C51A0](v104, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_176;
      }

      v105 = result;
      v106 = sub_25E9D7870();

      v107 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v4;
      sub_25E993FE0(51, v106, v6, v374, v107);
      v4 = v376;
      v63 = 0x279A43000;
    }

    else
    {
      v108 = [v39 overrideContext];
      if (v108)
      {
        v109 = v108;
        v110 = [v108 ended];

        if (v110)
        {

          v111 = sub_25E9D7F00();
          v112 = sub_25E9D8120();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            _os_log_impl(&dword_25E971000, v111, v112, "overrideContext: ended", v113, 2u);
            MEMORY[0x25F8C51A0](v113, -1, -1);
          }

          result = sub_25E9D7850();
          v63 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_179;
          }

          v114 = result;
          v115 = sub_25E9D7870();

          v116 = v356;
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v376 = v116;
          sub_25E993FE0(52, v115, v6, v374, v117);
          v356 = v376;
        }
      }
    }

    v118 = [v39 validationContext];
    if (v118 && (v119 = v118, v120 = [v118 *(v63 + 2352)], v119, v120))
    {

      v121 = sub_25E9D7F00();
      v122 = sub_25E9D8120();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_25E971000, v121, v122, "validationContext: startedOrChanged", v123, 2u);
        MEMORY[0x25F8C51A0](v123, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_177;
      }

      v124 = result;
      v125 = sub_25E9D7870();

      v126 = v363;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v126;
      sub_25E993FE0(53, v125, v6, v374, v127);
      v363 = v376;
      v63 = 0x279A43000;
    }

    else
    {
      v128 = [v39 validationContext];
      if (v128)
      {
        v129 = v128;
        v130 = [v128 ended];

        if (v130)
        {

          v131 = sub_25E9D7F00();
          v132 = sub_25E9D8120();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            *v133 = 0;
            _os_log_impl(&dword_25E971000, v131, v132, "validationContext: ended", v133, 2u);
            MEMORY[0x25F8C51A0](v133, -1, -1);
          }

          result = sub_25E9D7850();
          v63 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_180;
          }

          v134 = result;
          v135 = sub_25E9D7870();

          v136 = v355;
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v376 = v136;
          sub_25E993FE0(54, v135, v6, v374, v137);
          v355 = v376;
        }
      }
    }

    v138 = [v39 catalogContext];
    if (v138 && (v139 = v138, v140 = [v138 *(v63 + 2352)], v139, v140))
    {

      v141 = sub_25E9D7F00();
      v142 = sub_25E9D8120();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_25E971000, v141, v142, "catalogContext: startedOrChanged", v143, 2u);
        MEMORY[0x25F8C51A0](v143, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_178;
      }

      v144 = result;
      v145 = sub_25E9D7870();

      v146 = v362;
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v146;
      sub_25E993FE0(55, v145, v6, v374, v147);
      v362 = v376;
      v63 = 0x279A43000;
    }

    else
    {
      v148 = [v39 catalogContext];
      if (v148)
      {
        v149 = v148;
        v150 = [v148 ended];

        if (v150)
        {

          v151 = sub_25E9D7F00();
          v152 = sub_25E9D8120();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            *v153 = 0;
            _os_log_impl(&dword_25E971000, v151, v152, "catalogContext: ended", v153, 2u);
            MEMORY[0x25F8C51A0](v153, -1, -1);
          }

          result = sub_25E9D7850();
          v63 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_181;
          }

          v154 = result;
          v155 = sub_25E9D7870();

          v156 = v354;
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v376 = v156;
          sub_25E993FE0(56, v155, v6, v374, v157);
          v354 = v376;
        }
      }
    }

    v158 = [v39 inferenceContext];
    if (v158 && (v159 = v158, v160 = [v158 *(v63 + 2352)], v159, v160))
    {

      v161 = sub_25E9D7F00();
      v162 = sub_25E9D8120();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_25E971000, v161, v162, "inferenceContext: startedOrChanged", v163, 2u);
        MEMORY[0x25F8C51A0](v163, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_173;
      }

      v164 = result;
      v165 = sub_25E9D7870();

      v166 = v361;
      v167 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v166;
      sub_25E993FE0(57, v165, v6, v374, v167);
      v361 = v376;
      v63 = 0x279A43000;
    }

    else
    {
      v168 = [v39 inferenceContext];
      if (v168)
      {
        v169 = v168;
        v170 = [v168 ended];

        if (v170)
        {

          v171 = sub_25E9D7F00();
          v172 = sub_25E9D8120();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            *v173 = 0;
            _os_log_impl(&dword_25E971000, v171, v172, "inferenceContext: ended", v173, 2u);
            MEMORY[0x25F8C51A0](v173, -1, -1);
          }

          result = sub_25E9D7850();
          v63 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_182;
          }

          v174 = result;
          v175 = sub_25E9D7870();

          v176 = v353;
          v177 = swift_isUniquelyReferenced_nonNull_native();
          v376 = v176;
          sub_25E993FE0(58, v175, v6, v374, v177);
          v353 = v376;
        }
      }
    }

    v178 = [v39 hallucinationDetectionContext];
    if (v178 && (v179 = v178, v180 = [v178 *(v63 + 2352)], v179, v180))
    {

      v181 = sub_25E9D7F00();
      v182 = sub_25E9D8120();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_25E971000, v181, v182, "hallucinationDetectionContext: startedOrChanged", v183, 2u);
        MEMORY[0x25F8C51A0](v183, -1, -1);
      }

      result = sub_25E9D7850();
      if (!result)
      {
        goto LABEL_174;
      }

      v184 = result;
      v185 = sub_25E9D7870();

      v186 = v360;
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v186;
      sub_25E993FE0(59, v185, v6, v374, v187);
      v360 = v376;
      v63 = 0x279A43000;
    }

    else
    {
      v188 = [v39 hallucinationDetectionContext];
      if (v188)
      {
        v189 = v188;
        v190 = [v188 ended];

        if (v190)
        {

          v191 = sub_25E9D7F00();
          v192 = sub_25E9D8120();
          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            *v193 = 0;
            _os_log_impl(&dword_25E971000, v191, v192, "hallucinationDetectionContext: ended", v193, 2u);
            MEMORY[0x25F8C51A0](v193, -1, -1);
          }

          result = sub_25E9D7850();
          v63 = 0x279A43000uLL;
          if (!result)
          {
            goto LABEL_183;
          }

          v194 = result;
          v195 = sub_25E9D7870();

          v196 = v352;
          v197 = swift_isUniquelyReferenced_nonNull_native();
          v376 = v196;
          sub_25E993FE0(60, v195, v6, v374, v197);
          v352 = v376;
        }
      }
    }

    v198 = [v39 RGGMSCallContext];
    if (v198 && (v199 = v198, v200 = [v198 *(v63 + 2352)], v199, v200))
    {
      v6 = v4;

      v201 = sub_25E9D7F00();
      v202 = sub_25E9D8120();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_25E971000, v201, v202, "rggmsCallContext: startedOrChanged", v203, 2u);
        MEMORY[0x25F8C51A0](v203, -1, -1);
      }

      result = sub_25E9D7850();
      v204 = v374;
      if (!result)
      {
        goto LABEL_175;
      }

      v205 = result;
      v206 = sub_25E9D7870();

      v207 = v359;
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v376 = v207;
      sub_25E993FE0(61, v206, v373, v204, v208);

      v359 = v376;
      v4 = v6;
    }

    else
    {
      v209 = [v39 RGGMSCallContext];
      if (v209 && (v210 = v209, v211 = [v209 ended], v210, v6 = v374, v211))
      {

        v212 = sub_25E9D7F00();
        v213 = sub_25E9D8120();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&dword_25E971000, v212, v213, "rggmsCallContext: ended", v214, 2u);
          MEMORY[0x25F8C51A0](v214, -1, -1);
        }

        result = sub_25E9D7850();
        if (!result)
        {
          goto LABEL_184;
        }

        v215 = result;
        v216 = sub_25E9D7870();

        v217 = v351;
        v218 = swift_isUniquelyReferenced_nonNull_native();
        v376 = v217;
        sub_25E993FE0(61, v216, v373, v6, v218);

        v351 = v376;
      }

      else
      {
      }
    }

LABEL_17:
    v22 = v370 + 1;
    if (v369 == v365)
    {
      goto LABEL_137;
    }
  }

  v66 = sub_25E9D7F00();
  v67 = sub_25E9D8120();
  v68 = os_log_type_enabled(v66, v67);
  v6 = v373;
  if (v68)
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_25E971000, v66, v67, "requestContext: startedOrChanged", v69, 2u);
    MEMORY[0x25F8C51A0](v69, -1, -1);
  }

  v70 = v372;
  result = sub_25E9D7850();
  if (result)
  {
    v72 = result;
    v73 = sub_25E9D7870();

    v74 = v364;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v376 = v74;
    sub_25E993FE0(49, v73, v6, v374, v75);
    v364 = v376;
    v8 = v366;
    goto LABEL_59;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

void sub_25E99E3C0(unint64_t a1)
{
  v3 = v1;
  sub_25E99B9B4();
  if (v2)
  {
    return;
  }

  if (qword_27FD0D5A8 == -1)
  {
    goto LABEL_3;
  }

LABEL_163:
  swift_once();
LABEL_3:
  v5 = sub_25E9D7F10();
  __swift_project_value_buffer(v5, qword_27FD0DB30);
  v6 = sub_25E9D7F00();
  v7 = sub_25E9D8120();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25E971000, v6, v7, "Enter allRGMetrics", v8, 2u);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  v9 = sub_25E9D7F00();
  v10 = sub_25E9D8120();

  v11 = os_log_type_enabled(v9, v10);
  v263 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&__dst = v13;
    *v12 = 136315138;
    *&v232 = v3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v14 = sub_25E9D81B0();
    v16 = sub_25E9887EC(v14, v15, &__dst);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25E971000, v9, v10, "Compute Metrics RGHandleStart: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F8C51A0](v13, -1, -1);
    MEMORY[0x25F8C51A0](v12, -1, -1);
  }

  v17 = sub_25E9D7F00();
  v18 = sub_25E9D8120();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&__dst = v20;
    *v19 = 136315138;
    *&v232 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v21 = sub_25E9D81B0();
    v23 = sub_25E9887EC(v21, v22, &__dst);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25E971000, v17, v18, "Compute Metrics RGHandleEnd: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F8C51A0](v20, -1, -1);
    MEMORY[0x25F8C51A0](v19, -1, -1);
  }

  if (v3[3])
  {
    a1 = v3[3];
  }

  else
  {
    a1 = sub_25E97F328(MEMORY[0x277D84F90]);
  }

  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v163 = a1;
  v160 = v28;
  if (!v27)
  {
    do
    {
LABEL_15:
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_163;
      }

      if (v30 >= v28)
      {

        return;
      }

      v27 = *(v24 + 8 * v30);
      ++v29;
    }

    while (!v27);
    v29 = v30;
    v31 = v3[2];
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_137:
    v139 = sub_25E9D7F00();
    v143 = sub_25E9D8120();
    if (os_log_type_enabled(v139, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      v145 = "rgType failed!";
      goto LABEL_141;
    }

    goto LABEL_160;
  }

  while (1)
  {
    v31 = v3[2];
    if (!v31)
    {
      goto LABEL_137;
    }

LABEL_21:
    v32 = v3[4];
    if (!v32)
    {
      break;
    }

    v33 = (v29 << 10) | (16 * __clz(__rbit64(v27)));
    v34 = (*(a1 + 48) + v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = (*(a1 + 56) + v33);
    v38 = *v37;
    v162 = *(v37 + 1);
    v39 = *(v32 + 16);

    if (v39)
    {

      v40 = sub_25E978F5C(v36, v35);
      if (v41)
      {
        v42 = (*(v32 + 56) + 16 * v40);
        *&v161 = *v42;
        *(&v161 + 1) = *(v42 + 1);

        goto LABEL_27;
      }
    }

    v161 = 0x59uLL;
LABEL_27:
    v43 = v3[5];
    if (!v43)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgOverrideStart failed!";
      goto LABEL_159;
    }

    v159 = v38;
    v44 = v3[6];
    if (!v44)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgOverrideEnd failed!";
      goto LABEL_159;
    }

    v45 = *(v43 + 16);

    if (!v45)
    {
      goto LABEL_34;
    }

    v46 = sub_25E978F5C(v36, v35);
    if ((v47 & 1) == 0)
    {

LABEL_34:
      v158 = 0x59uLL;
      if (!*(v44 + 16))
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v48 = (*(v43 + 56) + 16 * v46);
    *&v158 = *v48;
    *(&v158 + 1) = *(v48 + 1);

    if (!*(v44 + 16))
    {
      goto LABEL_37;
    }

LABEL_35:
    v49 = sub_25E978F5C(v36, v35);
    if (v50)
    {
      v51 = (*(v44 + 56) + 16 * v49);
      *&v157 = *v51;
      *(&v157 + 1) = *(v51 + 1);

      goto LABEL_38;
    }

LABEL_37:

    v157 = 0x59uLL;
LABEL_38:
    v52 = v3[7];
    if (!v52)
    {
      goto LABEL_133;
    }

    v53 = v3[8];
    if (!v53)
    {
LABEL_135:

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgValidationEnd failed!";
      goto LABEL_159;
    }

    v54 = *(v52 + 16);

    if (!v54)
    {
      goto LABEL_45;
    }

    v55 = sub_25E978F5C(v36, v35);
    if ((v56 & 1) == 0)
    {

LABEL_45:
      v156 = 0x59uLL;
      if (!*(v53 + 16))
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v57 = (*(v52 + 56) + 16 * v55);
    *&v156 = *v57;
    *(&v156 + 1) = *(v57 + 1);

    if (!*(v53 + 16))
    {
      goto LABEL_48;
    }

LABEL_46:
    v58 = sub_25E978F5C(v36, v35);
    if (v59)
    {
      v60 = (*(v53 + 56) + 16 * v58);
      *&v155 = *v60;
      *(&v155 + 1) = *(v60 + 1);

      goto LABEL_49;
    }

LABEL_48:

    v155 = 0x59uLL;
LABEL_49:
    v61 = v3[9];
    if (!v61)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgCatalogStart failed!";
      goto LABEL_159;
    }

    v62 = v3[10];
    if (!v62)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgCatalogEnd failed!";
      goto LABEL_159;
    }

    v63 = *(v61 + 16);

    if (!v63)
    {
      goto LABEL_56;
    }

    v64 = sub_25E978F5C(v36, v35);
    if ((v65 & 1) == 0)
    {

LABEL_56:
      v154 = 0x59uLL;
      if (!*(v62 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    v66 = (*(v61 + 56) + 16 * v64);
    *&v154 = *v66;
    *(&v154 + 1) = *(v66 + 1);

    if (!*(v62 + 16))
    {
      goto LABEL_59;
    }

LABEL_57:
    v67 = sub_25E978F5C(v36, v35);
    if (v68)
    {
      v69 = (*(v62 + 56) + 16 * v67);
      *&v153 = *v69;
      *(&v153 + 1) = *(v69 + 1);

      goto LABEL_60;
    }

LABEL_59:

    v153 = 0x59uLL;
LABEL_60:
    v70 = v3[11];
    if (!v70)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgInferenceStart failed!";
      goto LABEL_159;
    }

    v71 = v3[12];
    if (!v71)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgInferenceEnd failed!";
      goto LABEL_159;
    }

    v72 = *(v70 + 16);

    if (!v72)
    {
      goto LABEL_67;
    }

    v73 = sub_25E978F5C(v36, v35);
    if ((v74 & 1) == 0)
    {

LABEL_67:
      v152 = 0x59uLL;
      if (!*(v71 + 16))
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    v75 = (*(v70 + 56) + 16 * v73);
    *&v152 = *v75;
    *(&v152 + 1) = *(v75 + 1);

    if (!*(v71 + 16))
    {
      goto LABEL_70;
    }

LABEL_68:
    v76 = sub_25E978F5C(v36, v35);
    if (v77)
    {
      v78 = (*(v71 + 56) + 16 * v76);
      *&v151 = *v78;
      *(&v151 + 1) = *(v78 + 1);

      goto LABEL_71;
    }

LABEL_70:

    v151 = 0x59uLL;
LABEL_71:
    v79 = v3[13];
    if (!v79)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgHallucinationStart failed!";
      goto LABEL_159;
    }

    v80 = v3[14];
    if (!v80)
    {

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgHallucinationEnd failed!";
      goto LABEL_159;
    }

    v81 = *(v79 + 16);

    if (!v81)
    {
      goto LABEL_78;
    }

    v82 = sub_25E978F5C(v36, v35);
    if ((v83 & 1) == 0)
    {

LABEL_78:
      v150 = 0x59uLL;
      if (!*(v80 + 16))
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    v84 = (*(v79 + 56) + 16 * v82);
    *&v150 = *v84;
    *(&v150 + 1) = *(v84 + 1);

    if (!*(v80 + 16))
    {
      goto LABEL_81;
    }

LABEL_79:
    v85 = sub_25E978F5C(v36, v35);
    if (v86)
    {
      v87 = (*(v80 + 56) + 16 * v85);
      *&v149 = *v87;
      *(&v149 + 1) = *(v87 + 1);

      goto LABEL_82;
    }

LABEL_81:

    v149 = 0x59uLL;
LABEL_82:
    v88 = v3[15];
    if (!v88)
    {
LABEL_133:

      v139 = sub_25E9D7F00();
      v140 = sub_25E9D8120();
      if (!os_log_type_enabled(v139, v140))
      {
        goto LABEL_160;
      }

      v141 = swift_slowAlloc();
      *v141 = 0;
      v142 = "rgValidationStart failed!";
LABEL_159:
      _os_log_impl(&dword_25E971000, v139, v140, v142, v141, 2u);
      MEMORY[0x25F8C51A0](v141, -1, -1);
      goto LABEL_160;
    }

    v89 = v3[16];
    if (!v89)
    {
      goto LABEL_135;
    }

    v90 = *(v88 + 16);

    if (!v90)
    {
      goto LABEL_89;
    }

    v91 = sub_25E978F5C(v36, v35);
    if ((v92 & 1) == 0)
    {

LABEL_89:
      v148 = 0x59uLL;
      if (!*(v89 + 16))
      {
        goto LABEL_92;
      }

      goto LABEL_90;
    }

    v93 = (*(v88 + 56) + 16 * v91);
    *&v148 = *v93;
    *(&v148 + 1) = *(v93 + 1);

    if (!*(v89 + 16))
    {
      goto LABEL_92;
    }

LABEL_90:
    v94 = sub_25E978F5C(v36, v35);
    if (v95)
    {
      v96 = (*(v89 + 56) + 16 * v94);
      *&v147 = *v96;
      *(&v147 + 1) = *(v96 + 1);

      goto LABEL_93;
    }

LABEL_92:

    v147 = 0x59uLL;
LABEL_93:
    v97 = v263;
    v98 = *v263;
    if (*(*v263 + 16))
    {
      v146 = v31;
      v99 = v24;
      v100 = v263;
      v101 = sub_25E978F5C(v36, v35);
      if (v102)
      {
        v103 = (*(v98 + 56) + 240 * v101);
        v105 = v103[1];
        v104 = v103[2];
        v232 = *v103;
        v233 = v105;
        v234 = v104;
        v106 = v103[3];
        v107 = v103[4];
        v108 = v103[5];
        v238 = v103[6];
        v237 = v108;
        v236 = v107;
        v235 = v106;
        v109 = v103[7];
        v110 = v103[8];
        v111 = v103[9];
        v242 = v103[10];
        v241 = v111;
        v240 = v110;
        v239 = v109;
        v112 = v103[11];
        v113 = v103[12];
        v114 = v103[13];
        v246 = v103[14];
        v245 = v114;
        v244 = v113;
        v243 = v112;
        memmove(&__dst, v103, 0xF0uLL);
        nullsub_1();
        sub_25E980FDC(&v232, &v217);
      }

      else
      {
        sub_25E99FE1C(&v232);
        v259 = v244;
        v260 = v245;
        v261 = v246;
        v255 = v240;
        v256 = v241;
        v258 = v243;
        v257 = v242;
        v251 = v236;
        v252 = v237;
        v254 = v239;
        v253 = v238;
        __dst = v232;
        v248 = v233;
        v250 = v235;
        v249 = v234;
      }

      v97 = v100;
      v24 = v99;
      v31 = v146;
    }

    else
    {
      sub_25E99FE1C(&v232);
      v259 = v244;
      v260 = v245;
      v261 = v246;
      v255 = v240;
      v256 = v241;
      v258 = v243;
      v257 = v242;
      v251 = v236;
      v252 = v237;
      v254 = v239;
      v253 = v238;
      __dst = v232;
      v248 = v233;
      v250 = v235;
      v249 = v234;
    }

    v244 = v259;
    v245 = v260;
    v246 = v261;
    v240 = v255;
    v241 = v256;
    v243 = v258;
    v242 = v257;
    v236 = v251;
    v237 = v252;
    v239 = v254;
    v238 = v253;
    v232 = __dst;
    v233 = v248;
    v235 = v250;
    v234 = v249;
    if (sub_25E97F474(&v232) == 1)
    {
      v202 = xmmword_25E9D90A0;
      v204 = 0uLL;
      v203 = 0x5AuLL;
      v205 = 0x5AuLL;
      v206 = 0uLL;
      v208 = 0uLL;
      v207 = 0x5AuLL;
      v209 = 0x5AuLL;
      v210 = 0uLL;
      v212 = 0uLL;
      v211 = 0x5AuLL;
      v213 = 0x5AuLL;
      v214 = 0uLL;
      v215 = 0x5AuLL;
      v216 = 0uLL;
      nullsub_1();
      v229 = v259;
      v230 = v260;
      v231 = v261;
      v225 = v255;
      v226 = v256;
      v228 = v258;
      v227 = v257;
      v221 = v251;
      v222 = v252;
      v224 = v254;
      v223 = v253;
      v217 = __dst;
      v218 = v248;
      v220 = v250;
      v219 = v249;
      sub_25E981210(&v217, &qword_27FD0DA60, &qword_25E9DA3E8);
      v259 = v214;
      v260 = v215;
      v261 = v216;
      v255 = v210;
      v256 = v211;
      v258 = v213;
      v257 = v212;
      v251 = v206;
      v252 = v207;
      v254 = v209;
      v253 = v208;
      __dst = v202;
      v248 = v203;
      v250 = v205;
      v249 = v204;
    }

    v229 = v259;
    v230 = v260;
    v231 = v261;
    v225 = v255;
    v226 = v256;
    v228 = v258;
    v227 = v257;
    v221 = v251;
    v222 = v252;
    v224 = v254;
    v223 = v253;
    v217 = __dst;
    v218 = v248;
    v220 = v250;
    v219 = v249;
    if (sub_25E97F474(&v217) == 1)
    {
    }

    else
    {
      if (*(v31 + 16) && (v115 = sub_25E978F5C(v36, v35), (v116 & 1) != 0))
      {
        v117 = (*(v31 + 56) + 16 * v115);
        v119 = *v117;
        v118 = v117[1];
      }

      else
      {

        v119 = 0;
        v118 = 0;
      }

      *&__dst = v119;
      *(&__dst + 1) = v118;
      v97 = v263;
    }

    v214 = v259;
    v215 = v260;
    v216 = v261;
    v210 = v255;
    v211 = v256;
    v213 = v258;
    v212 = v257;
    v206 = v251;
    v207 = v252;
    v209 = v254;
    v208 = v253;
    v202 = __dst;
    v203 = v248;
    v205 = v250;
    v204 = v249;
    if (sub_25E97F474(&v202) != 1)
    {
      *&v248 = v159;
      *(&v248 + 1) = v162;
      v249 = v161;
    }

    v201[12] = v259;
    v201[13] = v260;
    v201[14] = v261;
    v201[8] = v255;
    v201[9] = v256;
    v201[11] = v258;
    v201[10] = v257;
    v201[4] = v251;
    v201[5] = v252;
    v201[7] = v254;
    v201[6] = v253;
    v201[0] = __dst;
    v201[1] = v248;
    v201[3] = v250;
    v201[2] = v249;
    if (sub_25E97F474(v201) != 1)
    {
      v250 = v158;
      v251 = v157;
    }

    v200[12] = v259;
    v200[13] = v260;
    v200[14] = v261;
    v200[8] = v255;
    v200[9] = v256;
    v200[11] = v258;
    v200[10] = v257;
    v200[4] = v251;
    v200[5] = v252;
    v200[7] = v254;
    v200[6] = v253;
    v200[0] = __dst;
    v200[1] = v248;
    v200[3] = v250;
    v200[2] = v249;
    if (sub_25E97F474(v200) != 1)
    {
      v252 = v156;
      v253 = v155;
    }

    v199[12] = v259;
    v199[13] = v260;
    v199[14] = v261;
    v199[8] = v255;
    v199[9] = v256;
    v199[11] = v258;
    v199[10] = v257;
    v199[4] = v251;
    v199[5] = v252;
    v199[7] = v254;
    v199[6] = v253;
    v199[0] = __dst;
    v199[1] = v248;
    v199[3] = v250;
    v199[2] = v249;
    if (sub_25E97F474(v199) != 1)
    {
      v254 = v154;
      v255 = v153;
    }

    v198[12] = v259;
    v198[13] = v260;
    v198[14] = v261;
    v198[8] = v255;
    v198[9] = v256;
    v198[11] = v258;
    v198[10] = v257;
    v198[4] = v251;
    v198[5] = v252;
    v198[7] = v254;
    v198[6] = v253;
    v198[0] = __dst;
    v198[1] = v248;
    v198[3] = v250;
    v198[2] = v249;
    if (sub_25E97F474(v198) != 1)
    {
      v256 = v152;
      v257 = v151;
    }

    v197[12] = v259;
    v197[13] = v260;
    v197[14] = v261;
    v197[8] = v255;
    v197[9] = v256;
    v197[11] = v258;
    v197[10] = v257;
    v197[4] = v251;
    v197[5] = v252;
    v197[7] = v254;
    v197[6] = v253;
    v197[0] = __dst;
    v197[1] = v248;
    v197[3] = v250;
    v197[2] = v249;
    if (sub_25E97F474(v197) != 1)
    {
      v258 = v150;
      v259 = v149;
    }

    v196[12] = v259;
    v196[13] = v260;
    v196[14] = v261;
    v196[8] = v255;
    v196[9] = v256;
    v196[11] = v258;
    v196[10] = v257;
    v196[4] = v251;
    v196[5] = v252;
    v196[7] = v254;
    v196[6] = v253;
    v196[0] = __dst;
    v196[1] = v248;
    v196[3] = v250;
    v196[2] = v249;
    if (sub_25E97F474(v196) != 1)
    {
      v260 = v148;
      v261 = v147;
    }

    v192 = v259;
    v193 = v260;
    v194 = v261;
    v188 = v255;
    v189 = v256;
    v190 = v257;
    v191 = v258;
    v184 = v251;
    v185 = v252;
    v186 = v253;
    v187 = v254;
    v180 = __dst;
    v181 = v248;
    v182 = v249;
    v183 = v250;
    v195[12] = v259;
    v195[13] = v260;
    v195[14] = v261;
    v195[8] = v255;
    v195[9] = v256;
    v195[11] = v258;
    v195[10] = v257;
    v195[4] = v251;
    v195[5] = v252;
    v195[7] = v254;
    v195[6] = v253;
    v195[0] = __dst;
    v195[1] = v248;
    v195[3] = v250;
    v195[2] = v249;
    if (sub_25E97F474(v195) == 1)
    {
      v120 = sub_25E978F5C(v36, v35);
      if (v121)
      {
        v122 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = *v97;
        v164[0] = *v97;
        v125 = v97;
        a1 = v163;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E97E99C();
          v124 = v164[0];
        }

        v126 = (*(v124 + 56) + 240 * v122);
        v128 = v126[1];
        v127 = v126[2];
        v165 = *v126;
        v166 = v128;
        v167 = v127;
        v129 = v126[3];
        v130 = v126[4];
        v131 = v126[6];
        v170 = v126[5];
        v171 = v131;
        v168 = v129;
        v169 = v130;
        v132 = v126[7];
        v133 = v126[8];
        v134 = v126[10];
        v174 = v126[9];
        v175 = v134;
        v172 = v132;
        v173 = v133;
        v135 = v126[11];
        v136 = v126[12];
        v137 = v126[14];
        v178 = v126[13];
        v179 = v137;
        v176 = v135;
        v177 = v136;
        sub_25E97CF2C(v122, v124);

        sub_25E99FE4C(&v165);
        *v125 = v124;
        goto LABEL_130;
      }
    }

    else
    {
      v262[12] = v192;
      v262[13] = v193;
      v262[14] = v194;
      v262[8] = v188;
      v262[9] = v189;
      v262[11] = v191;
      v262[10] = v190;
      v262[4] = v184;
      v262[5] = v185;
      v262[7] = v187;
      v262[6] = v186;
      v262[0] = v180;
      v262[1] = v181;
      v262[3] = v183;
      v262[2] = v182;
      v177 = v192;
      v178 = v193;
      v179 = v194;
      v173 = v188;
      v174 = v189;
      v175 = v190;
      v176 = v191;
      v169 = v184;
      v170 = v185;
      v171 = v186;
      v172 = v187;
      v165 = v180;
      v166 = v181;
      v167 = v182;
      v168 = v183;
      sub_25E980FDC(&v165, v164);
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v164[0] = *v97;
      sub_25E9947C0(v262, v36, v35, v138);

      *v97 = v164[0];
    }

    a1 = v163;
LABEL_130:
    v27 &= v27 - 1;
    v177 = v259;
    v178 = v260;
    v179 = v261;
    v173 = v255;
    v174 = v256;
    v175 = v257;
    v176 = v258;
    v169 = v251;
    v170 = v252;
    v171 = v253;
    v172 = v254;
    v165 = __dst;
    v166 = v248;
    v167 = v249;
    v168 = v250;
    sub_25E981210(&v165, &qword_27FD0DA60, &qword_25E9DA3E8);
    v28 = v160;
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  v139 = sub_25E9D7F00();
  v143 = sub_25E9D8120();
  if (!os_log_type_enabled(v139, v143))
  {
    goto LABEL_160;
  }

  v144 = swift_slowAlloc();
  *v144 = 0;
  v145 = "rgContextEnd failed!";
LABEL_141:
  _os_log_impl(&dword_25E971000, v139, v143, v145, v144, 2u);
  MEMORY[0x25F8C51A0](v144, -1, -1);
LABEL_160:
}

void *SELFComponent.RG.deinit()
{

  return v0;
}

uint64_t SELFComponent.RG.__deallocating_deinit()
{
  SELFComponent.RG.deinit();

  return swift_deallocClassInstance();
}

double sub_25E99FE1C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  return result;
}

id toSISSchemaUUID(convertId:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    return 0;
  }

  sub_25E9D77B0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25E9961C4(v3);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v11 = sub_25E9D77D0();
  v12 = [v10 initWithNSUUID_];

  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t IEExecutionGrainMetricsRecord.description.getter()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

unint64_t IEExecutionGrainMetricsRecord.dictionary.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v38 = v0[6];
  v39 = v0[16];
  v43 = v0[17];
  v44 = v0[19];
  v42 = v0[20];
  v40 = v0[18];
  v41 = v0[21];
  v8 = v0[22];
  v9 = v0[24];
  v45 = *(v0 + 184);
  v46 = *(v0 + 200);
  v47 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E9DA580;
  *(v10 + 32) = 0x496E6F6973736573;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 48) = v1;
  *(v10 + 56) = v2;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "rawSessionId");
  *(v10 + 93) = 0;
  *(v10 + 94) = -5120;
  *(v10 + 96) = v3;
  v12 = v11;
  *(v10 + 104) = v4;
  *(v10 + 120) = v11;
  *(v10 + 128) = 0x6552746E65696C63;
  *(v10 + 136) = 0xEF64497473657571;
  *(v10 + 144) = v5;
  *(v10 + 152) = v6;
  *(v10 + 168) = v11;
  *(v10 + 176) = 0x6D45646C756F6873;
  *(v10 + 184) = 0xEA00000000007469;
  v13 = MEMORY[0x277D839B0];
  *(v10 + 192) = 1;
  v14 = MEMORY[0x277D83B88];
  *(v10 + 216) = v13;
  *(v10 + 224) = 0xD000000000000011;
  *(v10 + 232) = 0x800000025E9DD550;
  *(v10 + 240) = v41;
  *(v10 + 264) = v14;
  *(v10 + 272) = 0xD000000000000011;
  *(v10 + 312) = v14;
  *(v10 + 280) = 0x800000025E9DDCE0;
  *(v10 + 288) = v42;

  v15 = sub_25E980C94(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v15;
  if (v7)
  {
    *(&v49 + 1) = v12;
    *&v48 = v38;
    *(&v48 + 1) = v7;
    sub_25E980EA8(&v48, &v50);
    v16 = v51;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_25E9A1988();
    v51 = v16;
    *&v50 = v17;
  }

  if (v16)
  {
    sub_25E980EA8(&v50, &v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
    v52 = v15;
    v19 = v44;
    if (v43)
    {
LABEL_6:
      *(&v49 + 1) = v12;
      *&v48 = v39;
      *(&v48 + 1) = v43;
      sub_25E980EA8(&v48, &v50);
      goto LABEL_10;
    }
  }

  else
  {
    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000013, 0x800000025E9DD4F0, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    v19 = v44;
    if (v43)
    {
      goto LABEL_6;
    }
  }

  v48 = 0u;
  v49 = 0u;
  v20 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v20;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_10:
  if (v51)
  {
    sub_25E980EA8(&v50, &v48);

    v21 = v52;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0x64496C6F6F74, 0xE600000000000000, v22);
    v52 = v21;
    if (v19)
    {
LABEL_12:
      *(&v49 + 1) = v12;
      *&v48 = v40;
      *(&v48 + 1) = v19;
      sub_25E980EA8(&v48, &v50);
      goto LABEL_16;
    }
  }

  else
  {

    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x64496C6F6F74, 0xE600000000000000, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    if (v19)
    {
      goto LABEL_12;
    }
  }

  v48 = 0u;
  v49 = 0u;
  v23 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v23;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_16:
  if (v51)
  {
    sub_25E980EA8(&v50, &v48);

    v24 = v52;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0x646E75426C6F6F74, 0xEC0000006449656CLL, v25);
    v52 = v24;
  }

  else
  {

    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x646E75426C6F6F74, 0xEC0000006449656CLL, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

  v26 = MEMORY[0x277D839F8];
  if (v45)
  {
    v48 = 0u;
    v49 = 0u;
    v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v51 = sub_25E9A1988();
    *&v50 = v27;
    if (*(&v49 + 1))
    {
      sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    }
  }

  else
  {
    *(&v49 + 1) = MEMORY[0x277D839F8];
    *&v48 = v8;
    sub_25E980EA8(&v48, &v50);
  }

  if (v51)
  {
    sub_25E980EA8(&v50, &v48);
    v28 = v52;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v48, 0xD000000000000012, 0x800000025E9DD430, v29);
    v52 = v28;
    if (v46)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(&v49 + 1) = v26;
    *&v48 = v9;
    sub_25E980EA8(&v48, &v50);
    goto LABEL_29;
  }

  sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000012, 0x800000025E9DD430, &v48);
  sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  if ((v46 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v48 = 0u;
  v49 = 0u;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v51 = sub_25E9A1988();
  *&v50 = v30;
  if (*(&v49 + 1))
  {
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_29:
  if (!v51)
  {
    sub_25E981210(&v50, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD00000000000001ALL, 0x800000025E9DA590, &v48);
    sub_25E981210(&v48, &qword_27FD0D908, &unk_25E9D9910);
    if (v47)
    {
      goto LABEL_31;
    }

LABEL_33:
    v33 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v34 = sub_25E9A1988();
    goto LABEL_34;
  }

  sub_25E980EA8(&v50, &v48);
  v31 = v52;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(&v48, 0xD00000000000001ALL, 0x800000025E9DA590, v32);
  v52 = v31;
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_31:
  v33 = sub_25E9A89B8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
LABEL_34:
  v51 = v34;
  *&v50 = v33;
  sub_25E980EA8(&v50, &v48);
  v35 = v52;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(&v48, 0x496572756C696166, 0xEB000000006F666ELL, v36);
  return v35;
}

uint64_t sub_25E9A0AE8()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t sub_25E9A0B54()
{
  v0 = IEExecutionGrainMetricsRecord.dictionary.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA88, qword_25E9DA6D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D9690;
  *(inited + 32) = swift_getKeyPath();
  if (*(v0 + 16) && (v2 = sub_25E978F5C(0xD000000000000012, 0x800000025E9DD430), (v3 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v2, v13), swift_dynamicCast()))
  {
    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  *(inited + 40) = v4;
  *(inited + 48) = swift_getKeyPath();
  if (!*(v0 + 16) || (v5 = sub_25E978F5C(0xD00000000000001ALL, 0x800000025E9DA590), (v6 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_25E980E4C(*(v0 + 56) + 32 * v5, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v12;
LABEL_12:
  *(inited + 56) = v7;
  v8 = sub_25E980EB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA90, &qword_25E9DA738);
  swift_arrayDestroy();
  sub_25E9B939C(v8);
  v10 = v9;

  return v10;
}

uint64_t IEExecutionGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

char *IEExecutionGrainMetricsRecord.getSELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v95 - v2;
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v95 - v9;
  v11 = *(v0 + 40);
  v105 = *(v0 + 32);
  v104 = v11;
  v12 = *(v0 + 88);
  v107 = *(v0 + 80);
  v106 = v12;
  v13 = *(v0 + 104);
  v109 = *(v0 + 96);
  v108 = v13;
  v14 = *(v0 + 136);
  v102 = *(v0 + 128);
  v110 = v14;
  v15 = *(v0 + 144);
  v111 = *(v0 + 152);
  v16 = *(v0 + 168);
  v112 = *(v0 + 160);
  v103 = *(v0 + 208);
  v17 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v101 = v15;
  v19 = [objc_allocWithZone(MEMORY[0x277D59E58]) init];
  if (!v19)
  {

LABEL_15:
    if (qword_27FD0D598 != -1)
    {
LABEL_54:
      swift_once();
    }

    v39 = sub_25E9D7F10();
    __swift_project_value_buffer(v39, qword_27FD0DB00);
    v40 = sub_25E9D7F00();
    v41 = sub_25E9D8120();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_25E971000, v40, v41, "PNRODSchemaPNRODIntelligenceFlowActionGrainSummary init failed!", v42, 2u);
      MEMORY[0x25F8C51A0](v42, -1, -1);
    }

    return 0;
  }

  v20 = v19;
  v132 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v21)
  {
    if (qword_27FD0D598 != -1)
    {
      swift_once();
    }

    v51 = sub_25E9D7F10();
    __swift_project_value_buffer(v51, qword_27FD0DB00);
    v52 = sub_25E9D7F00();
    v53 = sub_25E9D8120();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_25E971000, v52, v53, "PNRODSchemaPNRODClientEventMetadata init failed!", v54, 2u);
      MEMORY[0x25F8C51A0](v54, -1, -1);
    }

    return 0;
  }

  v95 = v8;
  v97 = v5;
  v98 = v4;
  v99 = v21;
  v100 = v18;
  v22 = *(v0 + 16);
  v113[0] = *v0;
  v113[1] = v22;
  v114 = v105;
  v115 = v104;
  v23 = *(v0 + 64);
  v116 = *(v0 + 48);
  v117 = v23;
  v118 = v107;
  v119 = v106;
  v120 = v109;
  v121 = v108;
  v122 = *(v0 + 112);
  v123 = v102;
  v124 = v110;
  v125 = v101;
  v126 = v111;
  v127 = v112;
  v128 = v16;
  v96 = v16;
  v24 = *(v0 + 192);
  v129 = *(v0 + 176);
  v130 = v24;
  v131 = v103;
  v25 = sub_25E9A0B54();
  v26 = v25;
  v27 = 0;
  v28 = v25 + 64;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v25 + 64);
  v32 = (v29 + 63) >> 6;
  if (v31)
  {
    while (1)
    {
      v33 = v27;
LABEL_11:
      v34 = *(*(v26 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v31)))));
      v35 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v36 = [v35 init];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v31 &= v31 - 1;
      [v36 setMetricValue_];
      *&v113[0] = v37;
      v38 = v37;
      swift_setAtWritableKeyPath();

      v27 = v33;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

    v88 = v99;
    if (qword_27FD0D598 != -1)
    {
      swift_once();
    }

    v89 = sub_25E9D7F10();
    __swift_project_value_buffer(v89, qword_27FD0DB00);
    v90 = sub_25E9D7F00();
    v91 = sub_25E9D8120();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v100;
    if (v92)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_25E971000, v90, v91, "PNRODSchemaPNRODMetricDurationMetric init failed!", v94, 2u);
      MEMORY[0x25F8C51A0](v94, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_8:
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v33 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v33);
    ++v27;
    if (v31)
    {
      goto LABEL_11;
    }
  }

  v44 = v132;
  v45 = v103;
  if (v103)
  {
    sub_25E9A8130();
    v45 = v46;
  }

  v47 = v98;
  v48 = v97;
  v49 = v96;
  [v44 setFailureInfo_];

  sub_25E9D77B0();
  if ((*(v48 + 48))(v3, 1, v47) == 1)
  {
    sub_25E981210(v3, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v50 = 0;
  }

  else
  {
    (*(v48 + 32))(v10, v3, v47);
    v55 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v56 = sub_25E9D77D0();
    v50 = [v55 initWithNSUUID_];

    (*(v48 + 8))(v10, v47);
  }

  [v44 setClientRequestId_];

  v57 = toSISSchemaUUID(convertId:)(v107);
  [v44 setPlanId_];

  v58 = toSISSchemaUUID(convertId:)(v109);
  [v44 setActionId_];

  if (v110)
  {
    v59 = sub_25E9D7FA0();
  }

  else
  {
    v59 = 0;
  }

  [v44 setToolId_];

  if (v111)
  {
    v60 = sub_25E9D7FA0();
  }

  else
  {
    v60 = 0;
  }

  [v44 setBundleId_];

  if ((v112 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v112))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v44 setNumActionsCreated_];
  if ((v49 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v49))
  {
    [v44 setNumQueriesCreated_];
    v61 = v95;
    sub_25E9D77E0();
    v62 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v63 = sub_25E9D77D0();
    v64 = [v62 initWithNSUUID_];

    (*(v48 + 8))(v61, v47);
    v47 = v99;
    [v99 setPnrodId_];

    v65 = v100;
    [v100 setEventMetadata_];
    v10 = v65;
    [v65 setPnrodIntelligenceFlowActionGrainSummary_];
    if (qword_27FD0D598 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_41:
  v66 = sub_25E9D7F10();
  __swift_project_value_buffer(v66, qword_27FD0DB00);
  v67 = v10;
  v68 = sub_25E9D7F00();
  v69 = sub_25E9D8120();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v113[0] = v71;
    *v70 = 136315650;
    v72 = [v67 qualifiedMessageName];
    v73 = sub_25E9D7FB0();
    v75 = v74;

    v76 = sub_25E9887EC(v73, v75, v113);

    *(v70 + 4) = v76;
    *(v70 + 12) = 2080;
    v77 = [v67 formattedJsonBody];
    if (v77)
    {
      v78 = v77;
      v79 = sub_25E9D7FB0();
      v81 = v80;
    }

    else
    {
      v81 = 0xE500000000000000;
      v79 = 0x3E4C494E3CLL;
    }

    v82 = sub_25E9887EC(v79, v81, v113);

    *(v70 + 14) = v82;
    *(v70 + 22) = 2080;
    v83 = [v67 description];
    v84 = sub_25E9D7FB0();
    v86 = v85;

    v87 = sub_25E9887EC(v84, v86, v113);

    *(v70 + 24) = v87;
    _os_log_impl(&dword_25E971000, v68, v69, "Creating %s\n%s\n%s", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v71, -1, -1);
    MEMORY[0x25F8C51A0](v70, -1, -1);

    return v100;
  }

  else
  {

    return v10;
  }
}

uint64_t sub_25E9A1934()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

unint64_t sub_25E9A1988()
{
  result = qword_27FD0DA78;
  if (!qword_27FD0DA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DA78);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_25E9A1A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_25E9A1A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_25E9A1B30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7))(uint64_t, uint64_t, uint64_t)
{
  v211 = a2;
  v212 = a6;
  v200 = a5;
  v179 = a4;
  v222 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v176 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v196 = &v173 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v174 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v204 = &v173 - v17;
  MEMORY[0x28223BE20](v16);
  v205 = &v173 - v18;
  v214 = sub_25E9D7A10();
  v219 = *(v214 - 8);
  v19 = MEMORY[0x28223BE20](v214);
  v199 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v217 = &v173 - v21;
  v216 = sub_25E9D7940();
  v22 = *(v216 - 1);
  MEMORY[0x28223BE20](v216);
  v24 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D598 != -1)
  {
    swift_once();
  }

  v25 = sub_25E9D7F10();
  v26 = __swift_project_value_buffer(v25, qword_27FD0DB00);

  v218 = v26;
  v27 = sub_25E9D7F00();
  v28 = sub_25E9D8140();

  v29 = os_log_type_enabled(v27, v28);
  v220 = a3;
  v221 = a7;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v226 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_25E9887EC(v211, a3, &v226);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_25E9887EC(v212, a7, &v226);
    _os_log_impl(&dword_25E971000, v27, v28, "start for sessionId: %s clientRequestId: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v31, -1, -1);
    MEMORY[0x25F8C51A0](v30, -1, -1);
  }

  v32 = v219;
  v33 = v217;
  v241 = MEMORY[0x277D84F90];
  sub_25E9D78E0();
  v34 = sub_25E9D7930();
  (*(v22 + 8))(v24, v216);
  v36 = *(v34 + 16);
  v37 = v205;
  if (!v36)
  {

    goto LABEL_35;
  }

  v222 = 0;
  v216 = *(v32 + 16);
  v38 = *(v32 + 80);
  v173 = v34;
  v39 = v34 + ((v38 + 32) & ~v38);
  v213 = *(v32 + 72);
  LODWORD(v203) = *MEMORY[0x277D23540];
  v202 = *MEMORY[0x277D23550];
  *&v215 = v32 + 8;
  *&v35 = 136315138;
  v175 = v35;
  v177 = xmmword_25E9D96A0;
  v40 = v196;
  v219 = v32 + 16;
  v216(v33, v39, v214);
  while (1)
  {
    sub_25E9D79A0();
    v44 = sub_25E9D7A80();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v40, 1, v44) == 1)
    {
      sub_25E981210(v40, &qword_27FD0D880, &unk_25E9D97C0);
      v47 = sub_25E9D7B90();
      (*(*(v47 - 8) + 56))(v37, 1, 1, v47);
      goto LABEL_22;
    }

    v210 = v46;
    sub_25E9D7A70();
    v208 = *(v45 + 8);
    v208(v40, v44);
    v48 = sub_25E9D7B90();
    v49 = *(v48 - 8);
    v206 = *(v49 + 48);
    v207 = v49 + 48;
    if (v206(v37, 1, v48) != 1)
    {
      v50 = v37;
      v51 = v204;
      sub_25E986774(v50, v204);
      v52 = (*(v49 + 88))(v51, v48);
      v209 = v48;
      v53 = v52;
      v55 = *(v49 + 8);
      v54 = v49 + 8;
      v56 = v51;
      v37 = v205;
      v201 = v55;
      v55(v56, v209);
      if (v53 == v203 || v53 == v202)
      {
        v178 = v54;
        sub_25E981210(v37, &qword_27FD0D888, &qword_25E9DBDA0);
        if (v222)
        {
          v58 = v222[2];
          v59 = v58[21];
          v184 = v222[3];
          v185 = v59;
          v60 = v58[8];
          v61 = v58[9];
          v62 = v58[11];
          v194 = v58[10];
          v195 = v60;
          v63 = v58[4];
          v64 = v58[5];
          v192 = v58[2];
          v193 = v63;
          v65 = v58[3];
          v197 = v64;
          v198 = v65;
          v66 = v58[6];
          v180 = v58[7];
          v181 = v62;
          v67 = v58[13];
          v190 = v58[12];
          v191 = v66;
          v182 = v67;
          v183 = v61;
          v69 = v58[14];
          v68 = v58[15];
          v71 = v58[16];
          v70 = v58[17];
          v188 = v71;
          v189 = v69;
          v186 = v68;
          v187 = v70;

          v72 = v180;

          v73 = v182;

          v184 = sub_25E9C3AB4();
          LOBYTE(v61) = v74;
          v75 = sub_25E9C3AB4();
          LOBYTE(v223) = v61 & 1;
          v240 = v76 & 1;
          *&v226 = v211;
          *(&v226 + 1) = v220;
          *&v227 = v179;
          *(&v227 + 1) = v200;
          *&v228 = v212;
          *(&v228 + 1) = v221;
          *&v229 = v195;
          *(&v229 + 1) = v183;
          *&v230 = v194;
          *(&v230 + 1) = v181;
          *&v231 = v193;
          *(&v231 + 1) = v197;
          *&v232 = v192;
          *(&v232 + 1) = v198;
          *&v233 = v191;
          *(&v233 + 1) = v72;
          *&v234 = v190;
          *(&v234 + 1) = v73;
          *&v235 = v189;
          *(&v235 + 1) = v186;
          *&v236 = v188;
          *(&v236 + 1) = v187;
          *&v237 = v184;
          BYTE8(v237) = v61 & 1;
          *&v238 = v75;
          BYTE8(v238) = v76 & 1;
          v239 = v185;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
          v77 = swift_allocObject();
          v78 = v236;
          v79 = v238;
          *(v77 + 208) = v237;
          *(v77 + 224) = v79;
          v80 = v232;
          v81 = v234;
          v82 = v235;
          *(v77 + 144) = v233;
          *(v77 + 160) = v81;
          *(v77 + 176) = v82;
          *(v77 + 192) = v78;
          v83 = v228;
          v84 = v230;
          v85 = v231;
          *(v77 + 80) = v229;
          *(v77 + 96) = v84;
          *(v77 + 112) = v85;
          *(v77 + 128) = v80;
          v86 = v226;
          v87 = v227;
          *(v77 + 16) = v177;
          *(v77 + 32) = v86;
          *(v77 + 240) = v239;
          *(v77 + 48) = v87;
          *(v77 + 64) = v83;
          swift_beginAccess();
          sub_25E9A38E0(&v226, v224);
          sub_25E9C1384(v77);
          swift_endAccess();
          sub_25E9A393C(&v226);
        }

        type metadata accessor for IEExecutionGrainSpec();
        v88 = swift_allocObject();
        v222 = sub_25E985380(v88);

        v89 = v199;
        v90 = v214;
        v216(v199, v217, v214);
        v91 = sub_25E9D7F00();
        v92 = sub_25E9D8140();
        if (!os_log_type_enabled(v91, v92))
        {

          (*v215)(v89, v90);
          v40 = v196;
          v37 = v205;
          v41 = v90;
LABEL_8:
          v42 = v222;
LABEL_9:
          v43 = v217;
          v222 = v42;
          sub_25E984F58(v217);
          goto LABEL_10;
        }

        LODWORD(v197) = v92;
        v198 = v91;
        v93 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&v226 = v195;
        *v93 = v175;
        v94 = v176;
        sub_25E9D79A0();
        v95 = v210(v94, 1, v44);
        v37 = v205;
        if (v95 == 1)
        {
          v96 = v94;
          v97 = &qword_27FD0D880;
          v98 = &unk_25E9D97C0;
        }

        else
        {
          v99 = v174;
          sub_25E9D7A70();
          v208(v94, v44);
          v100 = v209;
          if (v206(v99, 1, v209) != 1)
          {
            v103 = v93;
            v104 = v100;
            v102 = sub_25E9D7B80();
            v101 = v105;
            v106 = v104;
            v93 = v103;
            v201(v99, v106);
            goto LABEL_31;
          }

          v96 = v99;
          v97 = &qword_27FD0D888;
          v98 = &qword_25E9DBDA0;
        }

        sub_25E981210(v96, v97, v98);
        v101 = 0xE300000000000000;
        v102 = 7104878;
LABEL_31:
        v40 = v196;
        v41 = v214;
        (*v215)(v199, v214);
        v107 = sub_25E9887EC(v102, v101, &v226);

        *(v93 + 4) = v107;
        v108 = v198;
        _os_log_impl(&dword_25E971000, v198, v197, "handling event %s", v93, 0xCu);
        v109 = v195;
        __swift_destroy_boxed_opaque_existential_0(v195);
        MEMORY[0x25F8C51A0](v109, -1, -1);
        MEMORY[0x25F8C51A0](v93, -1, -1);

        goto LABEL_8;
      }
    }

LABEL_22:
    sub_25E981210(v37, &qword_27FD0D888, &qword_25E9DBDA0);
    v41 = v214;
    v42 = v222;
    if (v222)
    {
      goto LABEL_9;
    }

    v222 = 0;
    v43 = v217;
LABEL_10:
    (*v215)(v43, v41);
    v39 += v213;
    if (!--v36)
    {
      break;
    }

    v216(v43, v39, v41);
  }

  if (v222)
  {
    v110 = v222[2];
    v111 = v110[21];
    v205 = v222[3];
    v206 = v111;
    v112 = v110[9];
    v219 = v110[8];
    v113 = v110[10];
    v203 = v110[11];
    v204 = v112;
    v114 = v110[5];
    v216 = v110[4];
    v217 = v113;
    v115 = v110[2];
    v116 = v110[3];
    v117 = v110[7];
    v214 = v110[6];
    *&v215 = v115;
    v118 = v110[13];
    v213 = v110[12];
    v120 = v110[14];
    v119 = v110[15];
    v122 = v110[16];
    v121 = v110[17];
    v209 = v122;
    v210 = v120;
    v207 = v119;
    v208 = v121;

    v123 = v220;

    v124 = v221;

    v125 = sub_25E9C3AB4();
    LOBYTE(v112) = v126;
    v127 = sub_25E9C3AB4();
    LOBYTE(v223) = v112 & 1;
    v240 = v128 & 1;
    *&v226 = v211;
    *(&v226 + 1) = v123;
    *&v227 = v179;
    *(&v227 + 1) = v200;
    *&v228 = v212;
    *(&v228 + 1) = v124;
    *&v229 = v219;
    *(&v229 + 1) = v204;
    *&v230 = v217;
    *(&v230 + 1) = v203;
    *&v231 = v216;
    *(&v231 + 1) = v114;
    *&v232 = v215;
    *(&v232 + 1) = v116;
    *&v233 = v214;
    *(&v233 + 1) = v117;
    *&v234 = v213;
    *(&v234 + 1) = v118;
    *&v235 = v210;
    *(&v235 + 1) = v207;
    *&v236 = v209;
    *(&v236 + 1) = v208;
    *&v237 = v125;
    BYTE8(v237) = v112 & 1;
    *&v238 = v127;
    BYTE8(v238) = v128 & 1;
    v239 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
    v129 = swift_allocObject();
    v130 = v236;
    v131 = v238;
    *(v129 + 208) = v237;
    *(v129 + 224) = v131;
    v132 = v232;
    v133 = v234;
    v134 = v235;
    *(v129 + 144) = v233;
    *(v129 + 160) = v133;
    *(v129 + 176) = v134;
    *(v129 + 192) = v130;
    v135 = v228;
    v136 = v230;
    v137 = v231;
    *(v129 + 80) = v229;
    *(v129 + 96) = v136;
    *(v129 + 112) = v137;
    *(v129 + 128) = v132;
    v138 = v226;
    v139 = v227;
    *(v129 + 16) = v177;
    *(v129 + 32) = v138;
    *(v129 + 240) = v239;
    *(v129 + 48) = v139;
    *(v129 + 64) = v135;
    swift_beginAccess();
    sub_25E9A38E0(&v226, v224);
    sub_25E9C1384(v129);
    swift_endAccess();
    sub_25E9A393C(&v226);
    goto LABEL_36;
  }

LABEL_35:
  v222 = 0;
  v123 = v220;
  v124 = v221;
LABEL_36:

  v140 = sub_25E9D7F00();
  v141 = sub_25E9D8140();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v226 = v143;
    *v142 = 136315394;
    *(v142 + 4) = sub_25E9887EC(v211, v123, &v226);
    *(v142 + 12) = 2080;
    *(v142 + 14) = sub_25E9887EC(v212, v124, &v226);
    _os_log_impl(&dword_25E971000, v140, v141, "end for sessionId: %s clientRequestId: %s", v142, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v143, -1, -1);
    MEMORY[0x25F8C51A0](v142, -1, -1);
  }

  swift_beginAccess();
  v144 = v241;
  v145 = *(v241 + 2);
  if (v145)
  {

    v146 = v145 - 1;
    v147 = 32;
    *&v148 = 136315906;
    v215 = v148;
    v216 = v144;
    while (1)
    {
      v149 = *(v144 + v147 + 16);
      v226 = *(v144 + v147);
      v227 = v149;
      v150 = *(v144 + v147 + 32);
      v151 = *(v144 + v147 + 48);
      v152 = *(v144 + v147 + 80);
      v230 = *(v144 + v147 + 64);
      v231 = v152;
      v228 = v150;
      v229 = v151;
      v153 = *(v144 + v147 + 96);
      v154 = *(v144 + v147 + 112);
      v155 = *(v144 + v147 + 144);
      v234 = *(v144 + v147 + 128);
      v235 = v155;
      v232 = v153;
      v233 = v154;
      v156 = *(v144 + v147 + 160);
      v157 = *(v144 + v147 + 176);
      v158 = *(v144 + v147 + 192);
      v239 = *(v144 + v147 + 208);
      v237 = v157;
      v238 = v158;
      v236 = v156;

      sub_25E9A38E0(&v226, v224);
      v159 = sub_25E9D7F00();
      v160 = sub_25E9D8140();

      if (os_log_type_enabled(v159, v160))
      {
        v219 = v146;
        v161 = *(&v232 + 1);
        v162 = v232;
        v163 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v223 = v217;
        *v163 = v215;
        *(v163 + 4) = sub_25E9887EC(v211, v220, &v223);
        *(v163 + 12) = 2080;
        *(v163 + 14) = sub_25E9887EC(v212, v221, &v223);
        *(v163 + 22) = 2080;
        if (v161)
        {
          v164 = v161;
        }

        else
        {
          v162 = 7104878;
          v164 = 0xE300000000000000;
        }

        v165 = sub_25E9887EC(v162, v164, &v223);

        *(v163 + 24) = v165;
        *(v163 + 32) = 2080;
        v224[10] = v236;
        v224[11] = v237;
        v224[12] = v238;
        v225 = v239;
        v224[6] = v232;
        v224[7] = v233;
        v224[8] = v234;
        v224[9] = v235;
        v224[2] = v228;
        v224[3] = v229;
        v224[4] = v230;
        v224[5] = v231;
        v224[0] = v226;
        v224[1] = v227;
        IEExecutionGrainMetricsRecord.dictionary.getter();
        v166 = sub_25E9D7F40();
        v168 = v167;

        v169 = v166;
        v146 = v219;
        v170 = sub_25E9887EC(v169, v168, &v223);

        *(v163 + 34) = v170;
        _os_log_impl(&dword_25E971000, v159, v160, "computed for sessionId: %s clientRequestId: %s %s\n%s", v163, 0x2Au);
        v171 = v217;
        swift_arrayDestroy();
        v144 = v216;
        MEMORY[0x25F8C51A0](v171, -1, -1);
        MEMORY[0x25F8C51A0](v163, -1, -1);
        sub_25E9A393C(&v226);

        if (!v146)
        {
LABEL_48:

          break;
        }
      }

      else
      {

        sub_25E9A393C(&v226);
        if (!v146)
        {
          goto LABEL_48;
        }
      }

      --v146;
      v147 += 216;
    }
  }

  return v144;
}

char *sub_25E9A2D3C()
{
  v120 = sub_25E9D78F0();
  v111 = *(v120 - 8);
  v0 = MEMORY[0x28223BE20](v120);
  v2 = (&v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v0);
  v109 = &v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v93 - v8);
  v10 = sub_25E9D7920();
  v101 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v117 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  if (qword_27FD0D598 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v102 = v19;
    v20 = sub_25E9D7F10();
    v93 = __swift_project_value_buffer(v20, qword_27FD0DB00);
    v21 = sub_25E9D7F00();
    v22 = sub_25E9D8140();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v10;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25E971000, v21, v22, "calculator start", v24, 2u);
      v25 = v24;
      v10 = v23;
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    v26 = sub_25E9D7950();
    v27 = 0;
    v28 = *(v26 + 64);
    v95 = v26 + 64;
    v98 = v26;
    v29 = 1 << *(v26 + 32);
    v30 = v29 < 64 ? ~(-1 << v29) : -1;
    v31 = v30 & v28;
    v94 = (v29 + 63) >> 6;
    v96 = v101 + 16;
    v106 = (v101 + 32);
    v107 = v111 + 16;
    v119 = (v111 + 32);
    v113 = (v111 + 8);
    v121 = MEMORY[0x277D84F90];
    v99 = (v101 + 8);
    v110 = v2;
    v108 = v7;
    v118 = v9;
    v32 = v17;
    v103 = v17;
    v100 = v10;
LABEL_9:
    if (v31)
    {
      break;
    }

    if (v94 <= v27 + 1)
    {
      v33 = v27 + 1;
    }

    else
    {
      v33 = v94;
    }

    v34 = v33 - 1;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v94)
      {
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        v105 = 0;
        goto LABEL_19;
      }

      v31 = *(v95 + 8 * v19);
      ++v27;
      if (v31)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v19 = v27;
LABEL_18:
  v105 = (v31 - 1) & v31;
  v35 = __clz(__rbit64(v31)) | (v19 << 6);
  v36 = *(v98 + 56);
  v37 = (*(v98 + 48) + 16 * v35);
  v38 = v37[1];
  v116 = *v37;
  v39 = v101;
  v40 = v97;
  (*(v101 + 16))(v97, v36 + *(v101 + 72) * v35, v10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v42 = *(v41 + 48);
  v43 = v103;
  *v103 = v116;
  *(v43 + 1) = v38;
  v44 = v40;
  v32 = v43;
  (*(v39 + 32))(&v43[v42], v44, v10);
  (*(*(v41 - 8) + 56))(v32, 0, 1, v41);

  v34 = v19;
LABEL_19:
  v45 = v102;
  sub_25E98B514(v32, v102, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
  {
    v104 = v34;
    v47 = v45[1];
    v115 = *v45;
    v116 = v47;
    (*v106)(v117, v45 + *(v46 + 48), v10);
    v48 = sub_25E9D7910();
    v17 = 0;
    v50 = v48 + 64;
    v49 = *(v48 + 64);
    v112 = v48;
    v51 = 1 << *(v48 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & v49;
    v19 = (v51 + 63) >> 6;
    v114 = v48 + 64;
    while (v53)
    {
      v54 = v17;
LABEL_36:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = v57 | (v54 << 6);
      v59 = v111;
      v60 = (*(v112 + 48) + 16 * v58);
      v62 = *v60;
      v61 = v60[1];
      v63 = v109;
      v64 = v120;
      (*(v111 + 16))(v109, *(v112 + 56) + *(v111 + 72) * v58, v120);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v66 = *(v65 + 48);
      v67 = v108;
      *v108 = v62;
      *(v67 + 1) = v61;
      v68 = v63;
      v7 = v67;
      (*(v59 + 32))(&v67[v66], v68, v64);
      (*(*(v65 - 8) + 56))(v7, 0, 1, v65);

      v2 = v110;
      v9 = v118;
LABEL_37:
      sub_25E98B514(v7, v9, &qword_27FD0DA98, &qword_25E9DA7B0);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v69 - 8) + 48))(v9, 1, v69) == 1)
      {
        v10 = v100;
        (*v99)(v117, v100);

        v32 = v103;
        v27 = v104;
        v31 = v105;
        goto LABEL_9;
      }

      v70 = *v9;
      v71 = v9[1];
      (*v119)(v2, v9 + *(v69 + 48), v120);
      v72 = sub_25E9D7900();
      v74 = sub_25E9A1B30(v2, v115, v116, v72, v73, v70, v71);

      v75 = *(v74 + 2);
      v10 = *(v121 + 2);
      v9 = (v10 + v75);
      if (__OFADD__(v10, v75))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v121;
      if (!isUniquelyReferenced_nonNull_native || v9 > *(v121 + 3) >> 1)
      {
        if (v10 <= v9)
        {
          v78 = v10 + v75;
        }

        else
        {
          v78 = v10;
        }

        v77 = sub_25E983F80(isUniquelyReferenced_nonNull_native, v78, 1, v121);
      }

      v9 = v118;
      v79 = *(v74 + 2);
      v121 = v77;
      if (v79)
      {
        if ((*(v77 + 3) >> 1) - *(v77 + 2) < v75)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v75)
        {
          v80 = *(v121 + 2);
          v81 = __OFADD__(v80, v75);
          v82 = v80 + v75;
          if (v81)
          {
            goto LABEL_62;
          }

          *(v121 + 2) = v82;
        }
      }

      else
      {

        if (v75)
        {
          goto LABEL_60;
        }
      }

      (*v113)(v2, v120);
      v50 = v114;
    }

    if (v19 <= (v17 + 1))
    {
      v55 = v17 + 1;
    }

    else
    {
      v55 = v19;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v54 >= v19)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v83 - 8) + 56))(v7, 1, 1, v83);
        v53 = 0;
        v17 = v56;
        goto LABEL_37;
      }

      v53 = *(v50 + 8 * v54);
      ++v17;
      if (v53)
      {
        v17 = v54;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v85 = v121;

  v86 = sub_25E9D7F00();
  v87 = sub_25E9D8140();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = *(v85 + 2);

    _os_log_impl(&dword_25E971000, v86, v87, "computed metrics for %ld requests", v88, 0xCu);
    MEMORY[0x25F8C51A0](v88, -1, -1);
  }

  else
  {
  }

  v89 = sub_25E9D7F00();
  v90 = sub_25E9D8140();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_25E971000, v89, v90, "calculator end", v91, 2u);
    MEMORY[0x25F8C51A0](v91, -1, -1);
  }

  return v121;
}