void sub_224CD3308(uint64_t a1, uint64_t a2)
{
  v270 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v239 = &v209 - v6;
  v238 = sub_224DABE18();
  v7 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v8);
  v225 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for _SessionPriorityInfo(0);
  v249 = *(v244 - 8);
  v11 = MEMORY[0x28223BE20](v244, v10);
  v220 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v214 = &v209 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v213 = &v209 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v241 = (&v209 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v234 = &v209 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6210, &qword_224DBEE98);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v233 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v224 = &v209 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v216 = &v209 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v237 = &v209 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v246 = &v209 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6218, &qword_224DBEEA0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v219 = &v209 - v41;
  v42 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v223 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42 - 8, v43);
  v277 = &v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v278 = &v209 - v47;
  v48 = sub_224DAE8B8();
  v49 = *(v48 - 8);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v274 = &v209 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v229 = &v209 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v261 = &v209 - v58;
  MEMORY[0x28223BE20](v57, v59);
  v228 = &v209 - v60;
  v61 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v61 - 8, v62);
  v243 = &v209 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_224DA9F08();
  v64 = *(v269 - 8);
  MEMORY[0x28223BE20](v269 - 8, v65);
  v268 = &v209 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for ExtensionTask.Identifier(0);
  v68 = MEMORY[0x28223BE20](v264, v67);
  v245 = &v209 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v218 = &v209 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v252 = &v209 - v75;
  MEMORY[0x28223BE20](v74, v76);
  v256 = &v209 - v77;
  v78 = swift_allocObject();
  v273 = v78;
  *(v78 + 16) = MEMORY[0x277D84F98];
  v247 = v78 + 16;
  swift_beginAccess();
  v79 = *(v2 + 24);
  v82 = *(v79 + 64);
  v81 = v79 + 64;
  v80 = v82;
  v83 = 1 << *(*(v2 + 24) + 32);
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  else
  {
    v84 = -1;
  }

  v85 = v84 & v80;
  v271 = *(v2 + 24);

  swift_beginAccess();
  v86 = 0;
  v87 = (v83 + 63) >> 6;
  if (a1 < 0)
  {
    v88 = a1;
  }

  else
  {
    v88 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v212 = v88;
  v280 = a1;
  v279 = a1 & 0xC000000000000001;
  v265 = *MEMORY[0x277CF9F28];
  v267 = (v64 + 104);
  v266 = (v64 + 8);
  v227 = *MEMORY[0x277CE3D10];
  v242 = (v49 + 104);
  v257 = (v49 + 48);
  v258 = (v49 + 32);
  v251 = (v49 + 40);
  v253 = (v49 + 8);
  v89 = a1 & 0xFFFFFFFFFFFFFF8;
  v90 = *MEMORY[0x277CE3D30];
  v215 = *MEMORY[0x277CF9F38];
  v226 = (v249 + 56);
  v236 = (v7 + 32);
  v232 = (v7 + 56);
  v231 = (v7 + 48);
  v221 = (v7 + 8);
  v230 = (v249 + 48);
  v262 = (v83 + 63) >> 6;
  v263 = v81;
  v240 = v90;
LABEL_9:
  if (!v85)
  {
    do
    {
      v91 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_110;
      }

      if (v91 >= v87)
      {

        swift_beginAccess();

        return;
      }

      v85 = *(v81 + 8 * v91);
      ++v86;
    }

    while (!v85);
    v86 = v91;
  }

  v92 = (v86 << 9) | (8 * __clz(__rbit64(v85)));
  v93 = *(*(v271 + 48) + v92);
  v94 = *(*(v271 + 56) + v92);
  if (v280 >> 62)
  {
    v95 = sub_224DAF838();
  }

  else
  {
    v95 = *(v89 + 16);
  }

  v85 &= v85 - 1;
  v281 = v93;

  v96 = 0;
  while (v95 != v96)
  {
    if (v279)
    {
      v97 = MEMORY[0x22AA5DCC0](v96, v280);
    }

    else
    {
      if (v96 >= *(v89 + 16))
      {
        goto LABEL_109;
      }

      v97 = *(v280 + 8 * v96 + 32);
    }

    v98 = v97;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    sub_224AC21B4();
    v99 = sub_224DAF6A8();

    ++v96;
    if (v99)
    {

LABEL_8:
      v81 = v263;
      v87 = v262;
      goto LABEL_9;
    }
  }

  v100 = *(v254 + 32);
  if (!*(v100 + 16))
  {
    goto LABEL_30;
  }

  v101 = sub_224A3E7EC(v281);
  if ((v102 & 1) == 0)
  {

LABEL_30:
    v107 = v268;
    v108 = v269;
    (*v267)(v268, v265, v269);
    sub_224CD589C(v94, v107, v270, v273);

    (*v266)(v107, v108);
    goto LABEL_8;
  }

  v250 = *(*(v100 + 56) + 8 * v101);

  if ((v94 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224CD6594(&qword_28135B9E8, type metadata accessor for ExtensionTask, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v94 = v285;
    v103 = v286;
    v104 = v287;
    v105 = v288;
    v106 = v289;
  }

  else
  {
    v105 = 0;
    v109 = -1 << *(v94 + 32);
    v103 = v94 + 56;
    v104 = ~v109;
    v110 = -v109;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    else
    {
      v111 = -1;
    }

    v106 = v111 & *(v94 + 56);
  }

  v222 = v104;
  v112 = (v104 + 64) >> 6;
  v217 = v250 + 56;
  v260 = v94;
  v259 = v103;
  v255 = v112;
  v276 = v89;
  while (1)
  {
    if (v94 < 0)
    {
      v120 = sub_224DAF878();
      if (!v120 || (v283 = v120, type metadata accessor for ExtensionTask(0), swift_dynamicCast(), v119 = v282, i = v105, v118 = v106, !v282))
      {
LABEL_105:
        sub_224A3B7E4(v260);

        goto LABEL_8;
      }
    }

    else
    {
      v115 = v105;
      v116 = v106;
      for (i = v105; !v116; ++v115)
      {
        i = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_111;
        }

        if (i >= v112)
        {
          goto LABEL_105;
        }

        v116 = *(v103 + 8 * i);
      }

      v118 = (v116 - 1) & v116;
      v119 = *(*(v94 + 48) + ((i << 9) | (8 * __clz(__rbit64(v116)))));
      if (!v119)
      {
        goto LABEL_105;
      }
    }

    v272 = v118;
    v121 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
    v122 = v256;
    sub_224A41594(&v119[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v256, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_224A424D8(v122, type metadata accessor for ExtensionTask.Identifier);
    if (EnumCaseMultiPayload == 4 || (v248 = v121, v124 = v252, sub_224A41594(&v119[v121], v252, type metadata accessor for ExtensionTask.Identifier), v125 = swift_getEnumCaseMultiPayload(), sub_224A424D8(v124, type metadata accessor for ExtensionTask.Identifier), v125 == 5))
    {
      v113 = v268;
      v114 = v269;
      (*v267)(v268, v265, v269);
      sub_224CD51CC(v119, v113, v270, v273);

      (*v266)(v113, v114);
      v105 = i;
      v106 = v272;
      v89 = v276;
      goto LABEL_37;
    }

    v126 = v243;
    sub_224A41594(&v119[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], v243, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v128 = (*(*(v127 - 8) + 48))(v126, 1, v127);
    v89 = v276;
    if (v128 == 1)
    {
      break;
    }

    v141 = sub_224DA9878();
    (*(*(v141 - 8) + 8))(v126, v141);
    v142 = v268;
    v143 = v269;
    (*v267)(v268, v265, v269);
    sub_224CD51CC(v119, v142, v270, v273);

    (*v266)(v142, v143);
LABEL_100:
    v105 = i;
    v106 = v272;
LABEL_37:
    v94 = v260;
    v103 = v259;
    v112 = v255;
  }

  sub_224A424D8(v126, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v129 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  swift_beginAccess();
  v235 = v119;
  v130 = *&v119[v129];
  v131 = v261;
  v211 = *v242;
  v211(v261, v227, v48);
  v132 = *(v130 + 16);
  v133 = v240;
  if (v132)
  {
    v134 = v223;
    v135 = v130 + ((*(v223 + 80) + 32) & ~*(v223 + 80));
    v210 = v130;

    v275 = *(v134 + 72);
    v136 = v257;
    do
    {
      v137 = v278;
      sub_224A41594(v135, v278, type metadata accessor for ExtensionTask.SchedulingOption);
      v138 = v277;
      sub_224A41594(v137, v277, type metadata accessor for ExtensionTask.SchedulingOption);
      if ((*v136)(v138, 5, v48))
      {
        sub_224A424D8(v278, type metadata accessor for ExtensionTask.SchedulingOption);
        v89 = v276;
        sub_224A424D8(v138, type metadata accessor for ExtensionTask.SchedulingOption);
      }

      else
      {
        (*v258)(v274, v138, v48);
        sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
        v139 = v261;
        v140 = sub_224DAEDB8();
        sub_224A424D8(v278, type metadata accessor for ExtensionTask.SchedulingOption);
        if (v140)
        {
          (*v253)(v274, v48);
        }

        else
        {
          (*v251)(v139, v274, v48);
        }

        v136 = v257;
      }

      v135 += v275;
      --v132;
    }

    while (v132);

    v131 = v261;
    v133 = v240;
  }

  v144 = v228;
  (*v258)(v228, v131, v48);
  v145 = v229;
  v211(v229, v133, v48);
  sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
  v146 = sub_224DAEDB8();
  v147 = *v253;
  (*v253)(v145, v48);
  v147(v144, v48);
  if ((v146 & 1) == 0)
  {
    v154 = *v267;
    v155 = v268;
    v156 = v268;
    v157 = &v284;
LABEL_99:
    v198 = v269;
    v154(v156, *(v157 - 64), v269);
    v199 = v235;
    sub_224CD51CC(v235, v155, v270, v273);

    (*v266)(v155, v198);
    goto LABEL_100;
  }

  v148 = v218;
  sub_224A41594(v235 + v248, v218, type metadata accessor for ExtensionTask.Identifier);
  v149 = swift_getEnumCaseMultiPayload();
  v150 = sub_224DABCC8();
  v151 = *(v150 - 8);
  v152 = v151;
  v153 = v219;
  if (v149 == 8)
  {
    (*(v151 + 32))(v219, v148, v150);
    (*(v152 + 56))(v153, 0, 1, v150);
  }

  else
  {
    (*(v151 + 56))(v219, 1, 1, v150);
    sub_224A424D8(v148, type metadata accessor for ExtensionTask.Identifier);
  }

  v158 = v246;
  v159 = (*(v152 + 48))(v153, 1, v150);
  sub_224A3311C(v153, &qword_27D6F6218, &qword_224DBEEA0);
  if (v159 != 1)
  {
    v154 = *v267;
    v155 = v268;
    v156 = v268;
    v157 = &v247 + 4;
    goto LABEL_99;
  }

  v210 = *v226;
  v210(v158, 1, 1, v244);
  v160 = 1 << *(v250 + 32);
  if (v160 < 64)
  {
    v161 = ~(-1 << v160);
  }

  else
  {
    v161 = -1;
  }

  v162 = v161 & *(v250 + 56);

  swift_beginAccess();
  v163 = 0;
  v164 = (v160 + 63) >> 6;
  v165 = v241;
  v275 = v164;
  while (2)
  {
    v166 = v237;
    if (v162)
    {
LABEL_78:
      v168 = v234;
      sub_224A41594(*(v250 + 48) + *(v249 + 72) * (__clz(__rbit64(v162)) | (v163 << 6)), v234, type metadata accessor for _SessionPriorityInfo);
      sub_224CD666C(v168, v165, type metadata accessor for _SessionPriorityInfo);
      sub_224A41594(v235 + v248, v245, type metadata accessor for ExtensionTask.Identifier);
      v169 = swift_getEnumCaseMultiPayload();
      if (v169 == 6)
      {
        v172 = *v236;
        v170 = v239;
        v173 = v239;
        v174 = v245;
      }

      else
      {
        v170 = v239;
        if (v169 != 7)
        {
          v175 = v238;
          (*v232)(v239, 1, 1, v238);
          sub_224A424D8(v245, type metadata accessor for ExtensionTask.Identifier);
LABEL_84:
          v176 = v233;
          if ((*v231)(v170, 1, v175) == 1)
          {
            sub_224A3311C(v170, &unk_27D6F6130, &unk_224DBB6A0);
            sub_224A3796C(v246, v176, &qword_27D6F6210, &qword_224DBEE98);
            if ((*v230)(v176, 1, v244) == 1)
            {
              v177 = v246;
              sub_224A3311C(v246, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A3311C(v176, &qword_27D6F6210, &qword_224DBEE98);
              v165 = v241;
              v178 = v241;
              v179 = v224;
            }

            else
            {
              sub_224CD666C(v176, v220, type metadata accessor for _SessionPriorityInfo);
              v165 = v241;
              v211 = sub_224DA9EF8();
              v189 = v220;
              v190 = sub_224DA9EF8();
              sub_224A424D8(v189, type metadata accessor for _SessionPriorityInfo);
              v191 = v190 < v211;
              v179 = v224;
              if (!v191)
              {
                goto LABEL_72;
              }

              v177 = v246;
              sub_224A3311C(v246, &qword_27D6F6210, &qword_224DBEE98);
              v178 = v165;
            }

            sub_224A41594(v178, v179, type metadata accessor for _SessionPriorityInfo);
            v210(v179, 0, 1, v244);
            v187 = v179;
            v188 = v177;
          }

          else
          {
            v180 = v225;
            (*v236)();
            v181 = v241[4];
            v211 = v241[5];
            __swift_project_boxed_opaque_existential_1(v241 + 1, v181);
            if ((sub_224CCACB0(v180, v181, v211) & 1) == 0)
            {
              (*v221)(v180, v175);
              v165 = v241;
LABEL_72:
              v162 &= v162 - 1;
              sub_224A424D8(v165, type metadata accessor for _SessionPriorityInfo);
              v164 = v275;
              continue;
            }

            v182 = v216;
            sub_224A3796C(v246, v216, &qword_27D6F6210, &qword_224DBEE98);
            v183 = v182;
            v184 = v182;
            v185 = v244;
            if ((*v230)(v184, 1, v244) == 1)
            {
              (*v221)(v225, v238);
              sub_224A3311C(v246, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A3311C(v183, &qword_27D6F6210, &qword_224DBEE98);
              v165 = v241;
              v186 = v224;
              sub_224A41594(v241, v224, type metadata accessor for _SessionPriorityInfo);
              v210(v186, 0, 1, v185);
              v187 = v186;
              v188 = v246;
            }

            else
            {
              v192 = v214;
              sub_224CD666C(v183, v214, type metadata accessor for _SessionPriorityInfo);
              v211 = sub_224DA9EF8();
              v193 = sub_224DA9EF8();
              v194 = v192;
              v165 = v241;
              sub_224A424D8(v194, type metadata accessor for _SessionPriorityInfo);
              (*v221)(v225, v238);
              v191 = v193 < v211;
              v195 = v224;
              if (!v191)
              {
                goto LABEL_72;
              }

              v196 = v165;
              v197 = v246;
              sub_224A3311C(v246, &qword_27D6F6210, &qword_224DBEE98);
              sub_224A41594(v196, v195, type metadata accessor for _SessionPriorityInfo);
              v210(v195, 0, 1, v244);
              v187 = v195;
              v188 = v197;
              v165 = v196;
            }
          }

          sub_224CD65DC(v187, v188);
          goto LABEL_72;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
        v171 = v245;

        v170 = v239;

        v172 = *v236;
        v173 = v170;
        v174 = v171;
      }

      v175 = v238;
      (v172)(v173, v174, v238);
      (*v232)(v170, 0, 1, v175);
      goto LABEL_84;
    }

    break;
  }

  while (1)
  {
    v167 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if (v167 >= v164)
    {

      v200 = v246;
      swift_beginAccess();
      sub_224A3796C(v200, v166, &qword_27D6F6210, &qword_224DBEE98);
      v201 = v244;
      if ((*v230)(v166, 1, v244) == 1)
      {
        sub_224A3311C(v166, &qword_27D6F6210, &qword_224DBEE98);
        v202 = v268;
        v203 = v269;
        (*v267)(v268, v265, v269);
        v204 = v235;
        sub_224CD51CC(v235, v202, v270, v273);

        (*v266)(v202, v203);
      }

      else
      {
        v205 = v166;
        v206 = v213;
        sub_224CD666C(v205, v213, type metadata accessor for _SessionPriorityInfo);
        v207 = v206 + *(v201 + 24);
        v208 = v235;
        sub_224CD51CC(v235, v207, v270, v273);

        sub_224A424D8(v206, type metadata accessor for _SessionPriorityInfo);
      }

      sub_224A3311C(v200, &qword_27D6F6210, &qword_224DBEE98);
      goto LABEL_100;
    }

    v162 = *(v217 + 8 * v167);
    ++v163;
    if (v162)
    {
      v163 = v167;
      goto LABEL_78;
    }
  }

LABEL_112:
  __break(1u);
}

uint64_t sub_224CD51CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v58 = type metadata accessor for _TaskInfo(0);
  v61 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58, v7);
  v60 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v62 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v56 = v52 - v19;
  v20 = sub_224DA9F08();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = v52 - v27;
  v63 = v21;
  v57 = *(v21 + 16);
  v57(v52 - v27, a2, v20);
  v59 = a1;
  v29 = sub_224A4A248();
  if (!v29)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v30 = *MEMORY[0x277CFA130];
  v31 = v29;
  swift_beginAccess();
  sub_224A3796C(v31 + v30, v15, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_224A3311C(v15, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_8;
  }

  (*(v17 + 32))(v56, v15, v16);
  v32 = *MEMORY[0x277CF9F28];
  v33 = v63;
  v53 = *(v63 + 104);
  v54 = v63 + 104;
  v53(v25, v32, v20);
  sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F58]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v34 = *(v33 + 8);
  v34(v25, v20);
  if (v65[0] == v64)
  {
    v52[0] = v34;
    v35 = v56;
    v36 = sub_224DA9FE8();
    v52[1] = v52;
    v65[0] = v36;
    v65[1] = v37;
    MEMORY[0x28223BE20](v36, v37);
    v52[-2] = v65;
    v38 = sub_224B3E818(sub_224AC2330, &v52[-4], v55);
    (*(v17 + 8))(v35, v16);

    if (v38)
    {
      (v52[0])(v28, v20);
      v53(v28, *MEMORY[0x277CF9F20], v20);
    }
  }

  else
  {
    (*(v17 + 8))(v56, v16);
  }

LABEL_8:
  v39 = v62;
  v57(&v62[*(v58 + 20)], v28, v20);
  v40 = v59;
  *v39 = v59;
  swift_beginAccess();
  v41 = *(a4 + 16);
  v42 = *(v41 + 16);
  v43 = v40;
  v44 = v60;
  if (v42 && (v45 = sub_224B0B75C(v28), (v46 & 1) != 0))
  {
    v47 = *(*(v41 + 56) + 8 * v45);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  swift_endAccess();
  sub_224A41594(v39, v44, type metadata accessor for _TaskInfo);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_224AD9494(0, v47[2] + 1, 1, v47);
  }

  v49 = v47[2];
  v48 = v47[3];
  if (v49 >= v48 >> 1)
  {
    v47 = sub_224AD9494((v48 > 1), v49 + 1, 1, v47);
  }

  v47[2] = v49 + 1;
  sub_224CD666C(v44, v47 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v49, type metadata accessor for _TaskInfo);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_224B2049C(v47, v28, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v64;
  swift_endAccess();
  sub_224A424D8(v39, type metadata accessor for _TaskInfo);
  return (*(v63 + 8))(v28, v20);
}

void sub_224CD589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224CD6594(&qword_28135B9E8, type metadata accessor for ExtensionTask, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
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

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v6 < 0)
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
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4(v6);
      return;
    }

    while (1)
    {
      sub_224CD51CC(v19, a2, a3, a4);

      v9 = v17;
      v10 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        type metadata accessor for ExtensionTask(0);
        swift_dynamicCast();
        v19 = v21;
        v17 = v9;
        v18 = v10;
        if (v21)
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

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224CD5AA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224CD5B44(uint64_t a1)
{
  result = sub_224CD5BD8();
  if (v2 <= 0x3F)
  {
    result = sub_224DA9F08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224CD5BD8()
{
  result = qword_281358A08[0];
  if (!qword_281358A08[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281358A08);
  }

  return result;
}

uint64_t sub_224CD5C84()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAFE68();
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v1);
  v6 = sub_224DA98E8();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AA5E1E0](v6);
  return sub_224DAFEA8();
}

uint64_t sub_224CD5DA0()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v1);
  v6 = sub_224DA98E8();
  (*(v2 + 8))(v5, v1);
  return MEMORY[0x22AA5E1E0](v6);
}

uint64_t sub_224CD5EAC(uint64_t a1)
{
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAFE68();
  (*(v3 + 16))(v6, *v1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v2);
  v7 = sub_224DA98E8();
  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AA5E1E0](v7);
  return sub_224DAFEA8();
}

uint64_t sub_224CD5FD0()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*v0);
  return sub_224DAFEA8();
}

uint64_t sub_224CD6040(uint64_t a1)
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*v1);
  return sub_224DAFEA8();
}

uint64_t sub_224CD6080(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[4];
  v9 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_224DAFD88();
  }

  return v12 & 1;
}

void *sub_224CD61A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224B06C3C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_224CD6238(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _SessionPriorityInfo(0);
  v39 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v10;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = v10;
    v42 = v4;
    v35 = &v32;
    MEMORY[0x28223BE20](v8, v11);
    v34 = &v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v12);
    v36 = 0;
    v13 = 0;
    v10 = a3 + 56;
    v14 = 1 << *(a3 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a3 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v41 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v13 << 6);
      v4 = a3;
      v22 = *(a3 + 48);
      v23 = v38;
      v24 = *(v39 + 72);
      v37 = v21;
      sub_224A41594(v22 + v24 * v21, v38, type metadata accessor for _SessionPriorityInfo);
      v25 = v42;
      v26 = v40(v23);
      sub_224A424D8(v23, type metadata accessor for _SessionPriorityInfo);
      v42 = v25;
      if (v25)
      {

        return swift_willThrow();
      }

      v16 = v41;
      if (v26)
      {
        *&v34[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
          return sub_224B05278(v34, v33, v36, a3);
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        return sub_224B05278(v34, v33, v36, a3);
      }

      v20 = *(v10 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v29 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v29;
  }

  v30 = swift_slowAlloc();
  v31 = sub_224CD61A8(v30, v10, a3, v40);

  result = MEMORY[0x22AA5EED0](v30, -1, -1);
  if (!v4)
  {
    return v31;
  }

  return result;
}

uint64_t sub_224CD6594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224CD65DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6210, &qword_224DBEE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CD666C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CD66D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TaskInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_224CD6758(void *a1, void *a2)
{
  sub_224AC21B4();
  if ((sub_224DAF6A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _TaskInfo(0);
  sub_224DA9F08();
  sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F58]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  return v4 == v3;
}

uint64_t sub_224CD6864(uint64_t a1)
{
  result = type metadata accessor for ExtensionTask(319);
  if (v2 <= 0x3F)
  {
    result = sub_224DA9F08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CD6930(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAE928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_224CE3D8C(&qword_281350C20, MEMORY[0x277CE3DA0], MEMORY[0x277CE3DA8]), v8 = sub_224DAED88(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_224CE3D8C(&qword_281350C18, MEMORY[0x277CE3DA0], MEMORY[0x277CE3DB0]);
      v16 = sub_224DAEDD8();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224CD6B48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_224DAF888();
  }

  else if (*(a2 + 16) && (sub_224DAF538(), v5 = sub_224DAF698(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_224DAF6A8();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_224CD6C74(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAD448();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_224CE3D8C(&unk_281350CE0, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF0]), v8 = sub_224DAED88(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_224CE3D8C(&qword_281350CD8, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF8]);
      v16 = sub_224DAEDD8();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224CD6EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  if (*(a2 + 16) && (sub_224A33088(a5, a3, a4, MEMORY[0x277CFA018]), v16 = sub_224DAED88(), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, v31 = a2 + 56, ((*(a2 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
  {
    v29 = a1;
    v30 = a3;
    v19 = a2;
    v28 = ~v17;
    v22 = *(v12 + 16);
    v21 = v12 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    v24 = (v21 - 8);
    do
    {
      v20(v15, *(v19 + 48) + v23 * v18, v11);
      sub_224A33088(v32, v30, a4, MEMORY[0x277CFA020]);
      v25 = sub_224DAEDD8();
      (*v24)(v15, v11);
      if (v25)
      {
        break;
      }

      v18 = (v18 + 1) & v28;
    }

    while (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_224CD70BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_224CE3D8C(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]), v8 = sub_224DAED88(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_224CE3D8C(&qword_281350E48, MEMORY[0x277CF9978], MEMORY[0x277CF9990]);
      v16 = sub_224DAEDD8();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224CD72D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_224ADA204(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_224DAF798();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(*(a1 + 56) + 8 * result) + 16);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_224ADA204((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_224A3E204(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_224A3E204(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_224CD7548()
{
  v1 = *(v0 + qword_2813548C0);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224CDD950(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_224CD75C0(uint64_t a1)
{
  sub_224DAFE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAED98();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224CD7678(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAED98();

  return sub_224DAEE78();
}

uint64_t sub_224CD7724(uint64_t a1, uint64_t a2)
{
  sub_224DAFE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAED98();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224CD77D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
  v4 = sub_224DAFD28();
  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  MEMORY[0x22AA5D210](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  return v4;
}

uint64_t sub_224CD789C()
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DCE040);
  sub_224DAF188();
  MEMORY[0x22AA5D210](0xD00000000000001ELL, 0x8000000224DCE060);
  v0 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v0);

  MEMORY[0x22AA5D210](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_224CD7A28(uint64_t a1)
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

uint64_t sub_224CD7B2C()
{
  v1 = qword_2813549E0;
  v2 = *(v0 + qword_2813549E0);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = qword_2813548B8;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_224A3311C(v0 + qword_2813651F0, &qword_27D6F54B0, &unk_224DBF2A0);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_281354958));

  return v0;
}

void sub_224CD7CC4(void *a1, uint64_t a2, char *a3)
{
  v420 = a3;
  v411 = a2;
  v389 = type metadata accessor for ReloadRequestKey(0);
  v5 = MEMORY[0x28223BE20](v389, v4);
  v382 = &v378[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5, v7);
  v381 = &v378[-v9];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v383 = &v378[-v12];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v385 = &v378[-v15];
  MEMORY[0x28223BE20](v14, v16);
  v392 = &v378[-v17];
  v18 = sub_224DACB98();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v405 = &v378[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v400 = sub_224DACB08();
  v399 = *(v400 - 8);
  MEMORY[0x28223BE20](v400, v21);
  v403 = &v378[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_224DACB28();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v401 = &v378[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v406 = sub_224DACC88();
  v404 = *(v406 - 8);
  MEMORY[0x28223BE20](v406, v26);
  v402 = &v378[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v394 = &v378[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v30, v32);
  v398 = &v378[-v34];
  MEMORY[0x28223BE20](v33, v35);
  v416 = &v378[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v419 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37, v38);
  v396 = &v378[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v378[-v42];
  v44 = sub_224DAC2B8();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v395 = &v378[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x28223BE20](v47, v49);
  v390 = &v378[-v51];
  v53 = MEMORY[0x28223BE20](v50, v52);
  v386 = &v378[-v54];
  v56 = MEMORY[0x28223BE20](v53, v55);
  v387 = &v378[-v57];
  v59 = MEMORY[0x28223BE20](v56, v58);
  v384 = &v378[-v60];
  v62 = MEMORY[0x28223BE20](v59, v61);
  v391 = &v378[-v63];
  v65 = MEMORY[0x28223BE20](v62, v64);
  v388 = &v378[-v66];
  v68 = MEMORY[0x28223BE20](v65, v67);
  v407 = &v378[-v69];
  v71 = MEMORY[0x28223BE20](v68, v70);
  v397 = &v378[-v72];
  v74 = MEMORY[0x28223BE20](v71, v73);
  v76 = &v378[-v75];
  MEMORY[0x28223BE20](v74, v77);
  v79 = &v378[-v78];
  v80 = qword_2813548B8;
  v81 = *(v45 + 16);
  v81(&v378[-v78], a1, v44);
  v421 = a1;
  v409 = v45 + 16;
  v408 = v81;
  v81(v76, a1, v44);
  v82 = v420;
  v83 = v420;
  v412 = v80;
  v84 = sub_224DAB228();
  v85 = sub_224DAF278();
  v413 = v83;

  v86 = os_log_type_enabled(v84, v85);
  v414 = v44;
  v417 = v37;
  v418 = v43;
  v415 = v45;
  if (v86)
  {
    v379 = v85;
    v393 = v84;
    v87 = 0x6E776F6E6B6E75;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v380 = swift_slowAlloc();
    v423 = v380;
    *v88 = 136446978;
    if (v82)
    {
      v90 = v413;
      v91 = [v413 description];
      v92 = sub_224DAEE18();
      v94 = v93;

      v95 = sub_224A33F74(v92, v94, &v423);

      *(v88 + 4) = v95;
      *(v88 + 12) = 2082;
      v96 = [v90 bundleIdentifier];
      if (v96)
      {
        v97 = v96;
        v87 = sub_224DAEE18();
        v99 = v98;
      }

      else
      {
        v99 = 0xE700000000000000;
      }
    }

    else
    {
      v99 = 0xE700000000000000;
      v103 = sub_224A33F74(0x6E776F6E6B6E75, 0xE700000000000000, &v423);

      *(v88 + 4) = v103;
      *(v88 + 12) = 2082;
    }

    v104 = sub_224A33F74(v87, v99, &v423);

    *(v88 + 14) = v104;
    *(v88 + 22) = 2114;
    v105 = sub_224DAC2A8();
    v102 = &off_27853F000;
    v106 = [v105 extensionIdentity];

    v107 = *(v415 + 8);
    v108 = v414;
    v107(v79, v414);
    *(v88 + 24) = v106;
    *v89 = v106;
    *(v88 + 32) = 2082;
    v109 = sub_224DAC2A8();
    v110 = [v109 kind];

    v111 = sub_224DAEE18();
    v113 = v112;

    v410 = v107;
    v107(v76, v108);
    v114 = sub_224A33F74(v111, v113, &v423);

    *(v88 + 34) = v114;
    v115 = v393;
    _os_log_impl(&dword_224A2F000, v393, v379, "Evaluate reload request from %{public}s:%{public}s for %{public}@:%{public}s.", v88, 0x2Au);
    sub_224A3311C(v89, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v89, -1, -1);
    v116 = v380;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v116, -1, -1);
    MEMORY[0x22AA5EED0](v88, -1, -1);

    v101 = v419;
    v37 = v417;
    v43 = v418;
  }

  else
  {

    v100 = *(v45 + 8);
    v100(v76, v44);
    v410 = v100;
    v100(v79, v44);
    v101 = v419;
    v102 = &off_27853F000;
  }

  v117 = v421;
  v118 = sub_224DAC2A8();
  v119 = [v118 *(v102 + 311)];

  v120 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v121 = v416;
  sub_224A3796C(v119 + v120, v416, &unk_27D6F5060, &qword_224DB5620);

  v122 = *(v101 + 48);
  v393 = (v101 + 48);
  if ((v122)(v121, 1, v37) == 1)
  {
    sub_224A3311C(v121, &unk_27D6F5060, &qword_224DB5620);
    return;
  }

  v123 = v102;
  v380 = v122;
  v416 = *(v101 + 32);
  (v416)(v43, v121, v37);
  v430 = 0;
  v431 = 1;
  v124 = v422;
  __swift_project_boxed_opaque_existential_1((v422 + qword_281354958), *(v422 + qword_281354958 + 24));
  v125 = sub_224DAC2A8();
  v126 = [v125 v123 + 1400];

  sub_224A42660(v126, &v430);
  if ((v431 & 1) == 0)
  {
    if ((v430 & 6) != 0)
    {
      v156 = v101;
      v157 = v397;
      v158 = v414;
      v159 = v408;
      v408(v397, v117, v414);
      v160 = v407;
      v159(v407, v117, v158);
      v161 = sub_224DAB228();
      v162 = sub_224DAF2A8();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v421 = v164;
        v422 = swift_slowAlloc();
        v423 = v422;
        *v163 = 138543618;
        v165 = sub_224DAC2A8();
        v166 = v158;
        v167 = [v165 extensionIdentity];

        v168 = v157;
        v169 = v410;
        v410(v168, v166);
        *(v163 + 4) = v167;
        *v164 = v167;
        *(v163 + 12) = 2082;
        v170 = v407;
        v171 = sub_224DAC2A8();
        v172 = [v171 kind];

        v173 = sub_224DAEE18();
        v175 = v174;

        v169(v170, v166);
        v176 = sub_224A33F74(v173, v175, &v423);

        *(v163 + 14) = v176;
        _os_log_impl(&dword_224A2F000, v161, v162, "Allowing on-going device session for %{public}@ %{public}s", v163, 0x16u);
        v177 = v421;
        sub_224A3311C(v421, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v177, -1, -1);
        v178 = v422;
        __swift_destroy_boxed_opaque_existential_1(v422);
        MEMORY[0x22AA5EED0](v178, -1, -1);
        MEMORY[0x22AA5EED0](v163, -1, -1);

        (*(v419 + 8))(v418, v417);
        return;
      }
    }

    else
    {
      if ((v430 & 0x20) != 0)
      {
        v254 = v388;
        v255 = v414;
        v256 = v408;
        v408(v388, v117, v414);
        v257 = v391;
        v256(v391, v117, v255);
        v258 = sub_224DAB228();
        v259 = sub_224DAF2A8();
        if (os_log_type_enabled(v258, v259))
        {
          v260 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          v421 = swift_slowAlloc();
          v423 = v421;
          *v260 = 138543618;
          v261 = sub_224DAC2A8();
          v262 = [v261 extensionIdentity];

          v263 = v410;
          v410(v254, v255);
          *(v260 + 4) = v262;
          *v422 = v262;
          *(v260 + 12) = 2082;
          v264 = v391;
          v265 = sub_224DAC2A8();
          v266 = [v265 kind];

          v267 = sub_224DAEE18();
          v269 = v268;

          v101 = v419;
          v263(v264, v255);
          v270 = sub_224A33F74(v267, v269, &v423);

          *(v260 + 14) = v270;
          _os_log_impl(&dword_224A2F000, v258, v259, "Allowing reload because an intent recently ran for the extension: %{public}@ %{public}s.", v260, 0x16u);
          v271 = v422;
          sub_224A3311C(v422, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v271, -1, -1);
          v272 = v421;
          __swift_destroy_boxed_opaque_existential_1(v421);
          MEMORY[0x22AA5EED0](v272, -1, -1);
          MEMORY[0x22AA5EED0](v260, -1, -1);
        }

        else
        {

          v328 = v410;
          v410(v257, v255);
          v328(v254, v255);
        }

        v329 = v404;
        v330 = v402;
        v331 = v406;
        (*(v404 + 32))(v402, v411, v406);
        sub_224DACC58();
        (*(v399 + 104))(v403, *MEMORY[0x277CF9B40], v400);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v329 + 8))(v330, v331);
        goto LABEL_63;
      }

      if ((v430 & 8) == 0)
      {
        goto LABEL_32;
      }

      v156 = v101;
      v157 = v384;
      v158 = v414;
      v179 = v408;
      v408(v384, v117, v414);
      v160 = v387;
      v179(v387, v117, v158);
      v161 = sub_224DAB228();
      v180 = sub_224DAF2A8();
      if (os_log_type_enabled(v161, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v420 = v182;
        v422 = swift_slowAlloc();
        v423 = v422;
        *v181 = 138543618;
        LODWORD(v421) = v180;
        v183 = sub_224DAC2A8();
        v184 = v158;
        v185 = [v183 extensionIdentity];

        v186 = v157;
        v187 = v410;
        v410(v186, v184);
        *(v181 + 4) = v185;
        *v182 = v185;
        *(v181 + 12) = 2082;
        v188 = v387;
        v189 = sub_224DAC2A8();
        v190 = [v189 kind];

        v191 = sub_224DAEE18();
        v193 = v192;

        v187(v188, v184);
        v194 = sub_224A33F74(v191, v193, &v423);

        *(v181 + 14) = v194;
        _os_log_impl(&dword_224A2F000, v161, v421, "Allowing reload because extension has active keep-alive assertion for  %{public}@ %{public}s.", v181, 0x16u);
        v195 = v420;
        sub_224A3311C(v420, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v195, -1, -1);
        v196 = v422;
        __swift_destroy_boxed_opaque_existential_1(v422);
        MEMORY[0x22AA5EED0](v196, -1, -1);
        MEMORY[0x22AA5EED0](v181, -1, -1);

LABEL_26:
        (*(v156 + 8))(v418, v417);
        return;
      }
    }

    v197 = v410;
    v410(v160, v158);
    v197(v157, v158);
    goto LABEL_26;
  }

  if (!v420 || (v127 = [v413 bundleIdentifier]) == 0)
  {
LABEL_28:
    v198 = v124 + qword_2813651F0;
    swift_beginAccess();
    if (*(v198 + 24))
    {
      sub_224A3317C(v198, &v423);
      v199 = v424;
      v200 = v425;
      __swift_project_boxed_opaque_existential_1(&v423, v424);
      v201 = sub_224DAC2A8();
      v202 = [v201 extensionIdentity];

      v203 = sub_224DAC2A8();
      v204 = [v203 kind];

      v205 = sub_224DAEE18();
      v206 = v101;
      v208 = v207;

      v117 = v421;
      LOBYTE(v199) = (*(v200 + 16))(v202, v205, v208, v199, v200);

      v124 = v422;
      v101 = v206;

      __swift_destroy_boxed_opaque_existential_1(&v423);
      if (v199)
      {
        v209 = v390;
        v210 = v414;
        v211 = v408;
        v408(v390, v117, v414);
        v212 = v395;
        v211(v395, v117, v210);
        v213 = sub_224DAB228();
        v214 = sub_224DAF278();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          v429 = v422;
          *v215 = 136446466;
          LODWORD(v421) = v214;
          v216 = sub_224DAC2A8();
          v217 = [v216 extensionIdentity];

          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v218 = sub_224DA9FE8();
          v220 = v219;
          swift_endAccess();

          v221 = v410;
          v410(v209, v210);
          v222 = sub_224A33F74(v218, v220, &v429);

          *(v215 + 4) = v222;
          *(v215 + 12) = 2082;
          v223 = v395;
          v224 = sub_224DAC2A8();
          v225 = [v224 kind];

          v226 = sub_224DAEE18();
          v228 = v227;

          v221(v223, v210);
          v229 = sub_224A33F74(v226, v228, &v429);
          v101 = v206;

          *(v215 + 14) = v229;
          _os_log_impl(&dword_224A2F000, v213, v421, "Allowing free reload for %{public}s: [%{public}s] because widget is visible.", v215, 0x16u);
          v230 = v422;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v230, -1, -1);
          MEMORY[0x22AA5EED0](v215, -1, -1);
        }

        else
        {

          v273 = v410;
          v410(v212, v210);
          v273(v209, v210);
        }

        v274 = v404;
        v275 = v402;
        v276 = v406;
        (*(v404 + 32))(v402, v411, v406);
        sub_224DACC58();
        (*(v399 + 104))(v403, *MEMORY[0x277CF9B40], v400);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v274 + 8))(v275, v276);
        goto LABEL_63;
      }
    }

LABEL_32:
    if (*(v124 + qword_2813549F0) && (sub_224CE1194(v117, v411) & 1) != 0)
    {
      sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
LABEL_63:
      (*(v101 + 8))(v418, v417);
      return;
    }

    v231 = *(v124 + qword_2813548C8);
    v232 = v417;
    if (v231 && sub_224CDFC24(v117) != 2)
    {
      (*(v101 + 8))(v418, v232);
      return;
    }

    v233 = *(v101 + 56);
    v234 = v398;
    v233(v398, 1, 1, v232);
    v235 = __swift_project_boxed_opaque_existential_1((*(v124 + qword_2813548D0) + 24), *(*(v124 + qword_2813548D0) + 48));
    v236 = *v235;
    v237 = *(*v235 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    v238 = *(v237 + 16);

    os_unfair_lock_lock(v238);
    v239 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v240 = *(v236 + v239);
    v241 = *(v237 + 16);

    os_unfair_lock_unlock(v241);

    v242 = v418;
    LODWORD(v420) = sub_224A33718(v418, v240, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

    if (v231)
    {
      v243 = __swift_project_boxed_opaque_existential_1((v231 + 16), *(v231 + 40));
      v244 = *v243;
      v245 = *(*v243 + 24);
      v246 = *(v245 + 16);

      os_unfair_lock_lock(v246);
      v247 = swift_beginAccess();
      v248 = *(v244 + 32);
      MEMORY[0x28223BE20](v247, v249);
      *&v378[-16] = v242;

      sub_224AA3B30(sub_224C4E570, &v378[-32], v248);
      v251 = v250;

      v234 = v398;
      v252 = v232;
      os_unfair_lock_unlock(*(v245 + 16));

      v253 = v396;
      if ((v420 & 1) == 0 && !v251)
      {
LABEL_48:
        v277 = v394;
        sub_224A3796C(v234, v394, &unk_27D6F5060, &qword_224DB5620);
        if ((v380)(v277, 1, v252) == 1)
        {
          sub_224A3311C(v234, &unk_27D6F5060, &qword_224DB5620);
          (*(v101 + 8))(v418, v252);
          sub_224A3311C(v277, &unk_27D6F5060, &qword_224DB5620);
          return;
        }

        (v416)(v253, v277, v252);
        v278 = qword_2813549E8;
        v279 = v422;
        swift_beginAccess();
        v420 = v278;
        v280 = *&v278[v279];
        if (*(v280 + 16) && (v281 = sub_224A89A08(v253), (v282 & 1) != 0))
        {
          v283 = v253;
          v284 = *(*(v280 + 56) + 8 * v281);
          swift_endAccess();
        }

        else
        {
          v283 = v253;
          swift_endAccess();
          v284 = MEMORY[0x277D84F98];
        }

        v285 = v392;
        v286 = sub_224DAC2A8();
        v287 = [v286 extensionIdentity];

        v288 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        (*(*(v289 - 8) + 16))(v285, &v287[v288], v289);

        v290 = sub_224DAC2A8();
        v291 = [v290 kind];

        v292 = sub_224DAEE18();
        v294 = v293;

        v295 = &v285[*(v389 + 20)];
        *v295 = v292;
        v295[1] = v294;
        v296 = *(v284 + 2);
        v416 = v284;
        if (v296 && (v297 = sub_224B0B4A0(v285), (v298 & 1) != 0))
        {
          v299 = *(*(v284 + 7) + 8 * v297);
          v300 = v422[2];
          swift_retain_n();
          BSContinuousMachTimeNow();
          v302 = v301;
          v303 = *(v299 + 16);

          if (v300 >= vabdd_f64(v302, v303))
          {
            v347 = v382;
            sub_224CE35AC(v285, v382);
            v348 = sub_224DAB228();
            v349 = sub_224DAF2A8();
            if (os_log_type_enabled(v348, v349))
            {
              v350 = swift_slowAlloc();
              v351 = swift_slowAlloc();
              v426 = v351;
              *v350 = 136446210;
              v352 = v349;
              v353 = v383;
              sub_224CE35AC(v347, v383);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
              v427 = sub_224DAFD28();
              v428 = v354;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*&v353[*(v389 + 20)], *&v353[*(v389 + 20) + 8]);
              v355 = v427;
              v356 = v428;
              sub_224B30FEC(v347);
              sub_224B30FEC(v353);
              v357 = sub_224A33F74(v355, v356, &v426);

              *(v350 + 4) = v357;
              _os_log_impl(&dword_224A2F000, v348, v352, "%{public}s - Throttling additional refresh request while foreground.", v350, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v351);
              v358 = v351;
              v234 = v398;
              MEMORY[0x22AA5EED0](v358, -1, -1);
              v359 = v350;
              v284 = v416;
              v283 = v396;
              MEMORY[0x22AA5EED0](v359, -1, -1);
            }

            else
            {

              sub_224B30FEC(v347);
            }

            v101 = v419;
            v370 = *(v299 + 24);
            v371 = __OFADD__(v370, 1);
            v372 = v370 + 1;
            v373 = v422;
            if (v371)
            {
              __break(1u);
              return;
            }

            *(v299 + 24) = v372;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v427 = v284;
            sub_224B1F91C(v299, v285, isUniquelyReferenced_nonNull_native);
            v375 = v427;
            v376 = v420;
            swift_beginAccess();

            v377 = swift_isUniquelyReferenced_nonNull_native();
            v426 = *&v376[v373];
            *&v376[v373] = 0x8000000000000000;
            sub_224B1F908(v375, v283, v377);
            *&v376[v373] = v426;
            swift_endAccess();

LABEL_69:
            sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);

            sub_224B30FEC(v285);
            v345 = *(v101 + 8);
            v346 = v417;
            v345(v283, v417);
            sub_224A3311C(v234, &unk_27D6F5060, &qword_224DB5620);
            v345(v418, v346);

            return;
          }

          v304 = v285;
          v305 = v381;
          sub_224CE35AC(v304, v381);
          v306 = sub_224DAB228();
          v307 = sub_224DAF2A8();
          if (os_log_type_enabled(v306, v307))
          {
            v308 = swift_slowAlloc();
            v309 = swift_slowAlloc();
            v426 = v309;
            *v308 = 136446210;
            v310 = v383;
            sub_224CE35AC(v305, v383);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
            v427 = sub_224DAFD28();
            v428 = v311;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*&v310[*(v389 + 20)], *&v310[*(v389 + 20) + 8]);
            v312 = v427;
            v313 = v428;
            sub_224B30FEC(v305);
            sub_224B30FEC(v310);
            v314 = sub_224A33F74(v312, v313, &v426);

            *(v308 + 4) = v314;
            _os_log_impl(&dword_224A2F000, v306, v307, "%{public}s - Allowing subsequent refresh after throttle interval.", v308, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v309);
            MEMORY[0x22AA5EED0](v309, -1, -1);
            MEMORY[0x22AA5EED0](v308, -1, -1);
          }

          else
          {

            sub_224B30FEC(v305);
          }

          v101 = v419;
          v360 = v404;
          v361 = v402;
          (*(v404 + 32))(v402, v411, v406);
          sub_224DACC58();
          (*(v399 + 104))(v403, *MEMORY[0x277CF9B40], v400);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v360 + 8))(v361, v406);
          type metadata accessor for ReloadInfo();
          v362 = swift_allocObject();
          *(v362 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v362 + 16) = v363;
          *(v362 + 24) = 0;
          v364 = v416;
          v365 = swift_isUniquelyReferenced_nonNull_native();
          v427 = v364;
          v285 = v392;
          sub_224B1F91C(v362, v392, v365);
          v366 = v427;
          v367 = v422;
          v368 = v420;
          swift_beginAccess();

          v369 = swift_isUniquelyReferenced_nonNull_native();
          v426 = *&v368[v367];
          *&v368[v367] = 0x8000000000000000;
          v283 = v396;
          sub_224B1F908(v366, v396, v369);
          *&v368[v367] = v426;
          swift_endAccess();
        }

        else
        {
          v315 = v285;
          v316 = v385;
          sub_224CE35AC(v315, v385);
          v317 = sub_224DAB228();
          v318 = sub_224DAF2A8();
          if (os_log_type_enabled(v317, v318))
          {
            v319 = swift_slowAlloc();
            v320 = v101;
            v321 = swift_slowAlloc();
            v426 = v321;
            *v319 = 136446210;
            v322 = v383;
            sub_224CE35AC(v316, v383);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
            v427 = sub_224DAFD28();
            v428 = v323;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*&v322[*(v389 + 20)], *&v322[*(v389 + 20) + 8]);
            v324 = v427;
            v325 = v428;
            sub_224B30FEC(v316);
            sub_224B30FEC(v322);
            v326 = sub_224A33F74(v324, v325, &v426);

            *(v319 + 4) = v326;
            _os_log_impl(&dword_224A2F000, v317, v318, "%{public}s - Allowing first refresh while foreground.", v319, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v321);
            v327 = v321;
            v101 = v320;
            MEMORY[0x22AA5EED0](v327, -1, -1);
            MEMORY[0x22AA5EED0](v319, -1, -1);
          }

          else
          {

            sub_224B30FEC(v316);
          }

          v334 = v404;
          v335 = v402;
          v336 = v406;
          (*(v404 + 32))(v402, v411, v406);
          sub_224DACC58();
          (*(v399 + 104))(v403, *MEMORY[0x277CF9B40], v400);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v334 + 8))(v335, v336);
          type metadata accessor for ReloadInfo();
          v337 = swift_allocObject();
          *(v337 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v337 + 16) = v338;
          *(v337 + 24) = 0;
          v339 = v416;
          v340 = swift_isUniquelyReferenced_nonNull_native();
          v427 = v339;
          v285 = v392;
          sub_224B1F91C(v337, v392, v340);
          v341 = v427;
          v342 = v422;
          v343 = v420;
          swift_beginAccess();

          v344 = swift_isUniquelyReferenced_nonNull_native();
          v426 = *&v343[v342];
          *&v343[v342] = 0x8000000000000000;
          v283 = v396;
          sub_224B1F908(v341, v396, v344);
          *&v343[v342] = v426;
          swift_endAccess();
        }

        v234 = v398;
        goto LABEL_69;
      }
    }

    else
    {
      v252 = v232;
      v253 = v396;
      if ((v420 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    sub_224A3311C(v234, &unk_27D6F5060, &qword_224DB5620);
    (*(v101 + 16))(v234, v418, v252);
    v233(v234, 0, 1, v252);
    goto LABEL_48;
  }

  v128 = v127;
  v129 = sub_224DAEE18();
  v420 = v130;

  v131 = v124 + qword_2813651F0;
  swift_beginAccess();
  if (!*(v131 + 24) || (sub_224A3317C(v131, &v423), v132 = v424, v133 = v425, __swift_project_boxed_opaque_existential_1(&v423, v424), v134 = sub_224DAC2A8(), v135 = [v134 kind], v134, v136 = sub_224DAEE18(), v138 = v137, v135, v101 = v419, v139 = *(v133 + 8), v117 = v421, v140 = v133, v124 = v422, LOBYTE(v136) = v139(v129, v420, v136, v138, v132, v140), v141 = v417, , __swift_destroy_boxed_opaque_existential_1(&v423), (v136 & 1) == 0))
  {

    goto LABEL_28;
  }

  v416 = v129;
  v142 = v386;
  v143 = v414;
  v408(v386, v117, v414);

  v144 = sub_224DAB228();
  v145 = sub_224DAF278();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v423 = v147;
    *v146 = 136446466;
    v148 = sub_224DAC2A8();
    v149 = [v148 kind];

    v150 = sub_224DAEE18();
    v152 = v151;

    v141 = v417;
    v410(v142, v143);
    v153 = sub_224A33F74(v150, v152, &v423);

    *(v146 + 4) = v153;
    *(v146 + 12) = 2082;
    v154 = sub_224A33F74(v416, v420, &v423);

    *(v146 + 14) = v154;
    _os_log_impl(&dword_224A2F000, v144, v145, "Allowing security critical [%{public}s] from %{public}s.", v146, 0x16u);
    swift_arrayDestroy();
    v155 = v147;
    v101 = v419;
    MEMORY[0x22AA5EED0](v155, -1, -1);
    MEMORY[0x22AA5EED0](v146, -1, -1);
  }

  else
  {

    v410(v142, v143);
  }

  v332 = v404;
  v333 = v402;
  (*(v404 + 32))(v402, v411, v406);
  sub_224DACC58();
  (*(v399 + 104))(v403, *MEMORY[0x277CF9B40], v400);
  sub_224DACC68();
  sub_224DACBB8();
  sub_224DACBD8();
  sub_224DACC28();
  sub_224DACC18();
  (*(v332 + 8))(v333, v406);
  (*(v101 + 8))(v418, v141);
}

void sub_224CDA95C(void *a1, uint64_t a2, void *a3)
{
  v383 = a2;
  v360 = type metadata accessor for ReloadRequestKey(0);
  v6 = MEMORY[0x28223BE20](v360, v5);
  v354 = &v351 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v353 = &v351 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v355 = &v351 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v358 = &v351 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v365 = &v351 - v18;
  v19 = sub_224DACB98();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v377 = &v351 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = sub_224DACB08();
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372, v22);
  v375 = &v351 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DACB28();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v373 = &v351 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_224DACC88();
  v376 = *(v379 - 8);
  MEMORY[0x28223BE20](v379, v27);
  v374 = &v351 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v366 = &v351 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v378 = &v351 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v387 = (&v351 - v37);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v392 = *(v389 - 8);
  v39 = MEMORY[0x28223BE20](v389, v38);
  v364 = &v351 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v351 - v42;
  v44 = sub_224DABE18();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v367 = &v351 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v363 = &v351 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v359 = &v351 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v357 = &v351 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v356 = &v351 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v362 = &v351 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v361 = &v351 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v370 = &v351 - v69;
  v71 = MEMORY[0x28223BE20](v68, v70);
  v369 = &v351 - v72;
  v74 = MEMORY[0x28223BE20](v71, v73);
  v76 = &v351 - v75;
  MEMORY[0x28223BE20](v74, v77);
  v79 = &v351 - v78;
  v80 = qword_2813548B8;
  v81 = v45[2];
  v81(&v351 - v78, a1, v44);
  v391 = a1;
  v381 = v45 + 2;
  v380 = v81;
  v81(v76, a1, v44);
  v82 = a3;
  v83 = v390;
  v384 = v80;
  v84 = sub_224DAB228();
  v85 = sub_224DAF278();

  v86 = os_log_type_enabled(v84, v85);
  v386 = v44;
  v385 = v45;
  v388 = v43;
  v368 = v82;
  if (v86)
  {
    v352 = v85;
    v87 = 0x6E776F6E6B6E75;
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    v393 = v351;
    *v88 = 136446978;
    v90 = a3;
    if (a3)
    {
      v91 = [v82 description];
      v92 = sub_224DAEE18();
      v94 = v93;

      v95 = sub_224A33F74(v92, v94, &v393);

      *(v88 + 4) = v95;
      *(v88 + 12) = 2082;
      v96 = [v82 bundleIdentifier];
      v97 = v385;
      if (v96)
      {
        v98 = v96;
        v87 = sub_224DAEE18();
        v100 = v99;
      }

      else
      {
        v100 = 0xE700000000000000;
        v87 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v100 = 0xE700000000000000;
      v104 = sub_224A33F74(0x6E776F6E6B6E75, 0xE700000000000000, &v393);

      *(v88 + 4) = v104;
      *(v88 + 12) = 2082;
      v97 = v385;
    }

    v105 = sub_224A33F74(v87, v100, &v393);

    *(v88 + 14) = v105;
    *(v88 + 22) = 2114;
    v106 = sub_224DABDB8();
    v107 = v97[1];
    v108 = v79;
    v109 = v386;
    v107(v108, v386);
    *(v88 + 24) = v106;
    *v89 = v106;
    *(v88 + 32) = 2082;
    v110 = sub_224DABDD8();
    v112 = v111;
    v382 = v107;
    v107(v76, v109);
    v113 = sub_224A33F74(v110, v112, &v393);

    *(v88 + 34) = v113;
    _os_log_impl(&dword_224A2F000, v84, v352, "Evaluate reload request from %{public}s:%{public}s for %{public}@:%{public}s.", v88, 0x2Au);
    sub_224A3311C(v89, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v89, -1, -1);
    v114 = v351;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v114, -1, -1);
    MEMORY[0x22AA5EED0](v88, -1, -1);

    v103 = v392;
    v102 = v389;
    v43 = v388;
    v83 = v390;
  }

  else
  {

    v101 = v45[1];
    v101(v76, v44);
    v382 = v101;
    v101(v79, v44);
    v102 = v389;
    v90 = a3;
    v103 = v392;
  }

  v115 = v391;
  v116 = sub_224DABDB8();
  v117 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v118 = v116 + v117;
  v119 = v387;
  sub_224A3796C(v118, v387, &unk_27D6F5060, &qword_224DB5620);

  v120 = *(v103 + 48);
  if (v120(v119, 1, v102) == 1)
  {
    sub_224A3311C(v119, &unk_27D6F5060, &qword_224DB5620);
    return;
  }

  v387 = *(v103 + 32);
  (v387)(v43, v119, v102);
  v400 = 0;
  v401 = 1;
  __swift_project_boxed_opaque_existential_1((v83 + qword_281354958), *(v83 + qword_281354958 + 24));
  v121 = sub_224DABDB8();
  sub_224A42660(v121, &v400);

  if (v401)
  {
    v122 = &unk_281365000;
    if (v90)
    {
      v123 = [v368 bundleIdentifier];
      if (v123)
      {
        v124 = v123;
        v370 = sub_224DAEE18();
        v126 = v125;

        v127 = v83 + qword_2813651F0;
        swift_beginAccess();
        if (*(v127 + 24))
        {
          sub_224A3317C(v127, &v393);
          v128 = v394;
          v129 = v126;
          v130 = v395;
          __swift_project_boxed_opaque_existential_1(&v393, v394);
          v131 = sub_224DABDD8();
          v132 = *(v130 + 8);
          v102 = v389;
          v133 = v128;
          v134 = v391;
          v135 = v130;
          v136 = v129;
          v138 = v132(v370, v129, v131, v137, v133, v135);
          v122 = &unk_281365000;

          __swift_destroy_boxed_opaque_existential_1(&v393);
          if (v138)
          {
            v139 = v370;
            v140 = v359;
            v141 = v386;
            v380(v359, v134, v386);

            v142 = sub_224DAB228();
            v143 = sub_224DAF278();

            if (os_log_type_enabled(v142, v143))
            {
              v144 = v136;
              v145 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              v393 = v146;
              *v145 = 136446466;
              v147 = sub_224DABDD8();
              v149 = v148;
              v382(v140, v141);
              v150 = sub_224A33F74(v147, v149, &v393);

              *(v145 + 4) = v150;
              *(v145 + 12) = 2082;
              v151 = sub_224A33F74(v139, v144, &v393);

              *(v145 + 14) = v151;
              _os_log_impl(&dword_224A2F000, v142, v143, "Allowing security critical [%{public}s] from %{public}s.", v145, 0x16u);
              swift_arrayDestroy();
              v152 = v146;
              v153 = v392;
              MEMORY[0x22AA5EED0](v152, -1, -1);
              MEMORY[0x22AA5EED0](v145, -1, -1);
            }

            else
            {

              v382(v140, v141);
              v153 = v392;
            }

            v303 = v376;
            v304 = v374;
            v305 = v379;
            (*(v376 + 32))(v374, v383, v379);
            sub_224DACC58();
            (*(v371 + 104))(v375, *MEMORY[0x277CF9B40], v372);
            sub_224DACC68();
            sub_224DACBB8();
            sub_224DACBD8();
            sub_224DACC28();
            sub_224DACC18();
            (*(v303 + 8))(v304, v305);
            (*(v153 + 8))(v388, v389);
            return;
          }
        }
      }
    }

    v184 = v83 + v122[62];
    swift_beginAccess();
    if (*(v184 + 24))
    {
      sub_224A3317C(v184, &v393);
      v185 = v394;
      v186 = v395;
      __swift_project_boxed_opaque_existential_1(&v393, v394);
      v187 = sub_224DABDB8();
      v188 = sub_224DABDD8();
      LOBYTE(v185) = (*(v186 + 16))(v187, v188, v189, v185, v186);

      v102 = v389;

      __swift_destroy_boxed_opaque_existential_1(&v393);
      if (v185)
      {
        v190 = v363;
        v191 = v391;
        v192 = v386;
        v193 = v380;
        v380(v363, v391, v386);
        v194 = v367;
        v193(v367, v191, v192);
        v195 = sub_224DAB228();
        v196 = sub_224DAF278();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v399 = v198;
          *v197 = 136446466;
          v199 = sub_224DABDB8();
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v200 = sub_224DA9FE8();
          v202 = v201;
          swift_endAccess();

          v203 = v190;
          v204 = v382;
          v382(v203, v192);
          v205 = sub_224A33F74(v200, v202, &v399);

          *(v197 + 4) = v205;
          *(v197 + 12) = 2082;
          v206 = v367;
          v207 = sub_224DABDD8();
          v209 = v208;
          v204(v206, v192);
          v210 = sub_224A33F74(v207, v209, &v399);
          v102 = v389;

          *(v197 + 14) = v210;
          _os_log_impl(&dword_224A2F000, v195, v196, "Allowing free reload for %{public}s: [%{public}s] because widget is visible.", v197, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v198, -1, -1);
          MEMORY[0x22AA5EED0](v197, -1, -1);
        }

        else
        {

          v247 = v382;
          v382(v194, v192);
          v247(v190, v192);
        }

        v248 = v376;
        v249 = v374;
        v250 = v379;
        (*(v376 + 32))(v374, v383, v379);
        sub_224DACC58();
        (*(v371 + 104))(v375, *MEMORY[0x277CF9B40], v372);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v248 + 8))(v249, v250);
        goto LABEL_46;
      }
    }

LABEL_32:
    if (*(v83 + qword_2813549F0) && (sub_224CE2040(v391, v383) & 1) != 0)
    {
      sub_224AA33EC(&unk_283833538, sub_224CE3610, &block_descriptor_47);
      goto LABEL_46;
    }

    v211 = *(v83 + qword_2813548C8);
    if (v211 && sub_224CE05A8(v391) != 2)
    {
      goto LABEL_46;
    }

    v385 = *(v392 + 56);
    (v385)(v378, 1, 1, v102);
    v212 = __swift_project_boxed_opaque_existential_1((*(v83 + qword_2813548D0) + 24), *(*(v83 + qword_2813548D0) + 48));
    v213 = *v212;
    v214 = *(*v212 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v214 + 16));
    v215 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v216 = *(v213 + v215);
    v217 = *(v214 + 16);

    os_unfair_lock_unlock(v217);
    v218 = v388;
    LODWORD(v386) = sub_224A33718(v388, v216, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

    if (v211)
    {
      v219 = __swift_project_boxed_opaque_existential_1((v211 + 16), *(v211 + 40));
      v220 = *v219;
      v221 = *(*v219 + 24);
      v222 = *(v221 + 16);

      os_unfair_lock_lock(v222);
      v223 = swift_beginAccess();
      v224 = *(v220 + 32);
      MEMORY[0x28223BE20](v223, v225);
      *(&v351 - 2) = v218;

      sub_224AA3B30(sub_224C4E084, (&v351 - 4), v224);
      v227 = v226;

      v102 = v389;
      os_unfair_lock_unlock(*(v221 + 16));

      v228 = v378;
      if ((v386 & 1) == 0 && !v227)
      {
LABEL_49:
        v251 = v366;
        sub_224A3796C(v228, v366, &unk_27D6F5060, &qword_224DB5620);
        if (v120(v251, 1, v102) == 1)
        {
          sub_224A3311C(v228, &unk_27D6F5060, &qword_224DB5620);
          (*(v392 + 8))(v388, v102);
          sub_224A3311C(v251, &unk_27D6F5060, &qword_224DB5620);
          return;
        }

        v252 = v364;
        (v387)(v364, v251, v102);
        v253 = qword_2813549E8;
        swift_beginAccess();
        v387 = v253;
        v254 = *&v253[v83];
        if (*(v254 + 16) && (v255 = sub_224A89A08(v252), (v256 & 1) != 0))
        {
          v257 = *(*(v254 + 56) + 8 * v255);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v257 = MEMORY[0x277D84F98];
        }

        v258 = v365;
        v259 = v360;
        v260 = sub_224DABDB8();
        v261 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        (*(*(v262 - 8) + 16))(v258, &v260[v261], v262);

        v263 = sub_224DABDD8();
        v264 = (v258 + *(v259 + 20));
        *v264 = v263;
        v264[1] = v265;
        v266 = v257[2];
        v391 = v257;
        if (v266 && (v267 = sub_224B0B4A0(v258), (v268 & 1) != 0))
        {
          v269 = *(v257[7] + 8 * v267);
          v270 = *(v83 + 16);
          swift_retain_n();
          BSContinuousMachTimeNow();
          v272 = v271;
          v273 = *(v269 + 16);
          v386 = v269;

          if (v270 >= vabdd_f64(v272, v273))
          {
            v317 = v354;
            sub_224CE35AC(v258, v354);
            v318 = sub_224DAB228();
            v319 = sub_224DAF2A8();
            if (os_log_type_enabled(v318, v319))
            {
              v320 = swift_slowAlloc();
              v321 = swift_slowAlloc();
              v396 = v321;
              *v320 = 136446210;
              v322 = v259;
              v323 = v355;
              sub_224CE35AC(v317, v355);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
              v397 = sub_224DAFD28();
              v398 = v324;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*(v323 + *(v322 + 20)), *(v323 + *(v322 + 20) + 8));
              v325 = v397;
              v326 = v398;
              sub_224B30FEC(v317);
              sub_224B30FEC(v323);
              v327 = sub_224A33F74(v325, v326, &v396);

              *(v320 + 4) = v327;
              _os_log_impl(&dword_224A2F000, v318, v319, "%{public}s - Throttling additional refresh request while foreground.", v320, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v321);
              v328 = v321;
              v258 = v365;
              MEMORY[0x22AA5EED0](v328, -1, -1);
              v329 = v320;
              v102 = v389;
              MEMORY[0x22AA5EED0](v329, -1, -1);
            }

            else
            {

              sub_224B30FEC(v317);
            }

            v315 = v392;
            v341 = v386;
            v342 = *(v386 + 24);
            v343 = __OFADD__(v342, 1);
            v344 = v342 + 1;
            v345 = v390;
            v346 = v391;
            if (v343)
            {
              __break(1u);
              return;
            }

            *(v386 + 24) = v344;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v397 = v346;
            sub_224B1F91C(v341, v258, isUniquelyReferenced_nonNull_native);
            v348 = v397;
            v349 = v387;
            swift_beginAccess();

            v350 = swift_isUniquelyReferenced_nonNull_native();
            v396 = *&v349[v345];
            *&v349[v345] = 0x8000000000000000;
            sub_224B1F908(v348, v252, v350);
            *&v349[v345] = v396;
            swift_endAccess();
          }

          else
          {
            v274 = v353;
            sub_224CE35AC(v258, v353);
            v275 = sub_224DAB228();
            v276 = sub_224DAF2A8();
            if (os_log_type_enabled(v275, v276))
            {
              v277 = swift_slowAlloc();
              v278 = swift_slowAlloc();
              v396 = v278;
              *v277 = 136446210;
              v279 = v355;
              sub_224CE35AC(v274, v355);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
              v397 = sub_224DAFD28();
              v398 = v280;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*(v279 + *(v259 + 20)), *(v279 + *(v259 + 20) + 8));
              v281 = v397;
              v282 = v398;
              sub_224B30FEC(v274);
              sub_224B30FEC(v279);
              v283 = sub_224A33F74(v281, v282, &v396);

              *(v277 + 4) = v283;
              _os_log_impl(&dword_224A2F000, v275, v276, "%{public}s - Allowing subsequent refresh after throttle interval.", v277, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v278);
              MEMORY[0x22AA5EED0](v278, -1, -1);
              v284 = v277;
              v102 = v389;
              MEMORY[0x22AA5EED0](v284, -1, -1);
            }

            else
            {

              sub_224B30FEC(v274);
            }

            v330 = v376;
            v331 = v374;
            v332 = v379;
            (*(v376 + 32))(v374, v383, v379);
            sub_224DACC58();
            (*(v371 + 104))(v375, *MEMORY[0x277CF9B40], v372);
            sub_224DACC68();
            sub_224DACBB8();
            sub_224DACBD8();
            sub_224DACC28();
            sub_224DACC18();
            (*(v330 + 8))(v331, v332);
            type metadata accessor for ReloadInfo();
            v333 = swift_allocObject();
            *(v333 + 24) = 0;
            BSContinuousMachTimeNow();
            *(v333 + 16) = v334;
            *(v333 + 24) = 0;
            v335 = v391;
            v336 = swift_isUniquelyReferenced_nonNull_native();
            v397 = v335;
            v258 = v365;
            sub_224B1F91C(v333, v365, v336);
            v337 = v397;
            v338 = v390;
            v339 = v387;
            swift_beginAccess();

            v340 = swift_isUniquelyReferenced_nonNull_native();
            v396 = *&v339[v338];
            *&v339[v338] = 0x8000000000000000;
            v252 = v364;
            sub_224B1F908(v337, v364, v340);
            *&v339[v338] = v396;
            swift_endAccess();
            v315 = v392;
          }
        }

        else
        {
          v285 = v102;
          v286 = v258;
          v287 = v358;
          sub_224CE35AC(v286, v358);
          v288 = sub_224DAB228();
          v289 = sub_224DAF2A8();
          if (os_log_type_enabled(v288, v289))
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            v396 = v291;
            *v290 = 136446210;
            v292 = v287;
            v293 = v287;
            v294 = v355;
            sub_224CE35AC(v292, v355);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
            v397 = sub_224DAFD28();
            v398 = v295;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v294 + *(v259 + 20)), *(v294 + *(v259 + 20) + 8));
            v296 = v397;
            v297 = v398;
            sub_224B30FEC(v293);
            sub_224B30FEC(v294);
            v298 = sub_224A33F74(v296, v297, &v396);

            *(v290 + 4) = v298;
            _os_log_impl(&dword_224A2F000, v288, v289, "%{public}s - Allowing first refresh while foreground.", v290, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v291);
            v299 = v291;
            v83 = v390;
            MEMORY[0x22AA5EED0](v299, -1, -1);
            MEMORY[0x22AA5EED0](v290, -1, -1);
          }

          else
          {

            sub_224B30FEC(v287);
          }

          v102 = v285;
          v306 = v376;
          v307 = v374;
          (*(v376 + 32))(v374, v383, v379);
          sub_224DACC58();
          (*(v371 + 104))(v375, *MEMORY[0x277CF9B40], v372);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v306 + 8))(v307, v379);
          type metadata accessor for ReloadInfo();
          v308 = swift_allocObject();
          *(v308 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v308 + 16) = v309;
          *(v308 + 24) = 0;
          v310 = v391;
          v311 = swift_isUniquelyReferenced_nonNull_native();
          v397 = v310;
          v258 = v365;
          sub_224B1F91C(v308, v365, v311);
          v312 = v397;
          v313 = v387;
          swift_beginAccess();

          v314 = swift_isUniquelyReferenced_nonNull_native();
          v396 = *&v313[v83];
          *&v313[v83] = 0x8000000000000000;
          v252 = v364;
          sub_224B1F908(v312, v364, v314);
          *&v313[v83] = v396;
          swift_endAccess();
          v315 = v392;
        }

        sub_224AA33EC(&unk_283833538, sub_224CE3610, &block_descriptor_47);

        sub_224B30FEC(v258);
        v316 = *(v315 + 8);
        v316(v252, v102);
        sub_224A3311C(v378, &unk_27D6F5060, &qword_224DB5620);
        v316(v388, v102);

        return;
      }
    }

    else
    {
      v228 = v378;
      if ((v386 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    sub_224A3311C(v228, &unk_27D6F5060, &qword_224DB5620);
    (*(v392 + 16))(v228, v388, v102);
    (v385)(v228, 0, 1, v102);
    goto LABEL_49;
  }

  if ((v400 & 6) != 0)
  {
    v154 = v369;
    v155 = v386;
    v156 = v380;
    v380(v369, v115, v386);
    v157 = v370;
    v156(v370, v115, v155);
    v158 = sub_224DAB228();
    v159 = sub_224DAF2A8();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      v393 = v391;
      *v160 = 138543618;
      v162 = sub_224DABDB8();
      v163 = v154;
      v164 = v382;
      v382(v163, v155);
      *(v160 + 4) = v162;
      *v161 = v162;
      *(v160 + 12) = 2082;
      v165 = sub_224DABDD8();
      v166 = v155;
      v167 = v392;
      v169 = v168;
      v164(v157, v166);
      v170 = sub_224A33F74(v165, v169, &v393);

      *(v160 + 14) = v170;
      v171 = "Allowing on-going device session for %{public}@ %{public}s";
LABEL_21:
      _os_log_impl(&dword_224A2F000, v158, v159, v171, v160, 0x16u);
      sub_224A3311C(v161, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v161, -1, -1);
      v172 = v391;
      __swift_destroy_boxed_opaque_existential_1(v391);
      MEMORY[0x22AA5EED0](v172, -1, -1);
      MEMORY[0x22AA5EED0](v160, -1, -1);

      (*(v167 + 8))(v388, v389);
      return;
    }

    goto LABEL_26;
  }

  if ((v400 & 0x20) == 0)
  {
    if ((v400 & 8) == 0)
    {
      goto LABEL_32;
    }

    v154 = v356;
    v173 = v391;
    v155 = v386;
    v174 = v380;
    v380(v356, v391, v386);
    v157 = v357;
    v174(v357, v173, v155);
    v158 = sub_224DAB228();
    v159 = sub_224DAF2A8();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      v393 = v391;
      *v160 = 138543618;
      v175 = sub_224DABDB8();
      v176 = v154;
      v177 = v382;
      v382(v176, v155);
      *(v160 + 4) = v175;
      *v161 = v175;
      *(v160 + 12) = 2082;
      v178 = sub_224DABDD8();
      v179 = v155;
      v167 = v392;
      v181 = v180;
      v177(v157, v179);
      v182 = sub_224A33F74(v178, v181, &v393);

      *(v160 + 14) = v182;
      v171 = "Allowing reload because extension has active keep-alive assertion for  %{public}@ %{public}s.";
      goto LABEL_21;
    }

LABEL_26:

    v183 = v382;
    v382(v157, v155);
    v183(v154, v155);
LABEL_46:
    (*(v392 + 8))(v388, v102);
    return;
  }

  v229 = v361;
  v230 = v386;
  v231 = v380;
  v380(v361, v115, v386);
  v232 = v362;
  v231(v362, v115, v230);
  v233 = sub_224DAB228();
  v234 = sub_224DAF2A8();
  if (os_log_type_enabled(v233, v234))
  {
    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v391 = swift_slowAlloc();
    v393 = v391;
    *v235 = 138543618;
    v237 = sub_224DABDB8();
    v238 = v229;
    v239 = v382;
    v382(v238, v230);
    *(v235 + 4) = v237;
    *v236 = v237;
    *(v235 + 12) = 2082;
    v240 = sub_224DABDD8();
    v242 = v241;
    v239(v232, v230);
    v243 = sub_224A33F74(v240, v242, &v393);
    v244 = v392;

    *(v235 + 14) = v243;
    _os_log_impl(&dword_224A2F000, v233, v234, "Allowing reload because an intent recently ran for the extension: %{public}@ %{public}s.", v235, 0x16u);
    sub_224A3311C(v236, &unk_27D6F69F0, &unk_224DB3900);
    v245 = v236;
    v102 = v389;
    MEMORY[0x22AA5EED0](v245, -1, -1);
    v246 = v391;
    __swift_destroy_boxed_opaque_existential_1(v391);
    MEMORY[0x22AA5EED0](v246, -1, -1);
    MEMORY[0x22AA5EED0](v235, -1, -1);
  }

  else
  {

    v300 = v382;
    v382(v232, v230);
    v300(v229, v230);
    v244 = v392;
  }

  v301 = v376;
  v302 = v374;
  (*(v376 + 32))(v374, v383, v379);
  sub_224DACC58();
  (*(v371 + 104))(v375, *MEMORY[0x277CF9B40], v372);
  sub_224DACC68();
  sub_224DACBB8();
  sub_224DACBD8();
  sub_224DACC28();
  sub_224DACC18();
  (*(v301 + 8))(v302, v379);
  (*(v244 + 8))(v388, v102);
}

void sub_224CDD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a4;
  v80 = a5;
  v77 = a2;
  v78 = a3;
  v7 = type metadata accessor for ReloadRequestKey(0);
  v81 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v86 = &v68 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v85 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D6F62E8, &qword_224DBF298);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v68 - v22;
  v24 = qword_2813651F0;
  swift_beginAccess();
  sub_224A3796C(v5 + v24, &v90, &qword_27D6F54B0, &unk_224DBF2A0);
  v25 = v92;
  sub_224A3311C(&v90, &qword_27D6F54B0, &unk_224DBF2A0);
  if (v25)
  {
    v75 = v7;
    v87 = v5;
    v84 = v23;
    v26 = a1 + 64;
    v27 = 1 << *(a1 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(a1 + 64);
    v74 = qword_2813548B8;
    v30 = (v27 + 63) >> 6;
    v73 = "ter - throttled reload";
    v82 = a1;

    v31 = 0;
    v32 = &qword_27D6F62C0;
    *&v33 = 136446210;
    v68 = v33;
    v34 = v86;
    v88 = v20;
    while (v29)
    {
      v36 = v31;
LABEL_18:
      v39 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v40 = v39 | (v36 << 6);
      v41 = v82;
      v42 = v85;
      sub_224CE35AC(*(v82 + 48) + *(v81 + 72) * v40, v85);
      v43 = *(*(v41 + 56) + 8 * v40);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &qword_224DBF268);
      v45 = *(v44 + 48);
      v46 = v42;
      v20 = v88;
      sub_224CE3B5C(v46, v88);
      *&v20[v45] = v43;
      (*(*(v44 - 8) + 56))(v20, 0, 1, v44);

      v34 = v86;
LABEL_19:
      v47 = v32;
      v48 = v84;
      sub_224A44E4C(v20, v84, qword_27D6F62E8, &qword_224DBF298);
      v49 = v47;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, &qword_224DBF268);
      if ((*(*(v50 - 8) + 48))(v48, 1, v50) == 1)
      {

        return;
      }

      v51 = *(v48 + *(v50 + 48));
      sub_224CE3B5C(v48, v34);
      v32 = v49;
      if (*(v51 + 24) > 0)
      {
        v52 = v76;
        sub_224CE35AC(v34, v76);
        v53 = sub_224DAB228();
        v83 = sub_224DAF2A8();
        if (os_log_type_enabled(v53, v83))
        {
          v54 = swift_slowAlloc();
          v69 = v54;
          v71 = swift_slowAlloc();
          v89 = v71;
          *v54 = v68;
          v55 = v85;
          sub_224CE35AC(v52, v85);
          v70 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v72 = v51;
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          v90 = sub_224DAFD28();
          v91 = v56;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          v57 = v52;
          v35 = v75;
          MEMORY[0x22AA5D210](*(v55 + *(v75 + 20)), *(v55 + *(v75 + 20) + 8));
          v58 = v90;
          v59 = v91;
          v60 = v57;
          v34 = v86;
          sub_224B30FEC(v60);
          sub_224B30FEC(v55);
          v61 = sub_224A33F74(v58, v59, &v89);

          v62 = v69;
          *(v69 + 1) = v61;
          v63 = v70;
          v64 = v62;
          _os_log_impl(&dword_224A2F000, v70, v83, "%{public}s - Flushing pending reload request due to background transition.", v62, 0xCu);
          v65 = v71;
          __swift_destroy_boxed_opaque_existential_1(v71);
          v66 = v65;
          v32 = &qword_27D6F62C0;
          MEMORY[0x22AA5EED0](v66, -1, -1);
          MEMORY[0x22AA5EED0](v64, -1, -1);
        }

        else
        {

          sub_224B30FEC(v52);
          v35 = v75;
        }

        sub_224CDDDEC(*(v34 + *(v35 + 20)), *(v34 + *(v35 + 20) + 8), v77, 0xD00000000000004ALL, v73 | 0x8000000000000000, v78, v79, v80);
        v20 = v88;
      }

      sub_224B30FEC(v34);
    }

    if (v30 <= v31 + 1)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = v30;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v30)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &qword_224DBF268);
        (*(*(v67 - 8) + 56))(v20, 1, 1, v67);
        v29 = 0;
        v31 = v38;
        goto LABEL_19;
      }

      v29 = *(v26 + 8 * v36);
      ++v31;
      if (v29)
      {
        v31 = v36;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void sub_224CDD950(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v3);
  v52 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C8, &qword_224DBF270);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v41 - v10;
  v12 = qword_2813549E8;
  swift_beginAccess();
  v41 = v12;
  v49 = a1;
  v13 = *(a1 + v12);
  v14 = *(v13 + 64);
  v43 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v42 = (v15 + 63) >> 6;
  v44 = v2 + 16;
  v51 = (v2 + 32);
  v46 = v2;
  v47 = v13;
  v48 = (v2 + 8);

  v18 = 0;
  v19 = &unk_224DBF278;
  v45 = v11;
  if (v17)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v20 << 6);
      v26 = v46;
      v27 = v47;
      v28 = v52;
      v29 = v53;
      (*(v46 + 16))(v52, *(v47 + 48) + *(v46 + 72) * v25, v53);
      v30 = *(*(v27 + 56) + 8 * v25);
      v31 = v19;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v19);
      v33 = *(v32 + 48);
      v34 = *(v26 + 32);
      v23 = v50;
      v34(v50, v28, v29);
      *(v23 + v33) = v30;
      (*(*(v32 - 8) + 56))(v23, 0, 1, v32);

      v22 = v20;
      v19 = v31;
      v11 = v45;
LABEL_13:
      sub_224A44E4C(v23, v11, &qword_27D6F62C8, &qword_224DBF270);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v19);
      if ((*(*(v35 - 8) + 48))(v11, 1, v35) == 1)
      {
        break;
      }

      v36 = *&v11[*(v35 + 48)];
      v37 = v52;
      v38 = v53;
      (*v51)(v52, v11, v53);
      sub_224CDD2B4(v36, v37, &unk_283833650, sub_224CE3DE0, &block_descriptor_33);

      (*v48)(v37, v38);
      v18 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v40 = sub_224DA18C4(MEMORY[0x277D84F90]);
    *(v49 + v41) = v40;

    sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
  }

  else
  {
LABEL_5:
    if (v42 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v42;
    }

    v22 = v21 - 1;
    v23 = v50;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v42)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v19);
        (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v43 + 8 * v20);
      ++v18;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_224CDDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v37 = a6;
  v38 = a4;
  v39 = a5;
  v35 = a3;
  v41 = a1;
  v42 = a2;
  v45 = sub_224DAB7B8();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - v19;
  v21 = sub_224DAB7C8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AC319C();
  (*(v22 + 104))(v25, *MEMORY[0x277D851C0], v21);
  v36 = sub_224DAF428();
  (*(v22 + 8))(v25, v21);
  (*(v16 + 16))(v20, v35, v15);
  v26 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = v28;
  *(v27 + 4) = v40;
  (*(v16 + 32))(&v27[v26], v20, v15);
  v29 = &v27[(v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  aBlock[4] = v43;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = v44;
  v31 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v49 = MEMORY[0x277D84F90];
  sub_224CE3D8C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v32 = v45;
  sub_224DAF788();
  v33 = v36;
  MEMORY[0x22AA5D760](0, v14, v10, v31);
  _Block_release(v31);

  (*(v48 + 8))(v10, v32);
  (*(v46 + 8))(v14, v47);

  return result;
}

uint64_t sub_224CDE28C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v47 = a3;
  v42 = sub_224DACB08();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_224DACC88();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB98();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v35 - v23);
  v25 = swift_allocBox();
  v27 = v26;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = a1;
  v28[4] = a2;
  *v27 = v28;
  v29 = *(v17 + 104);
  v29(v27, *MEMORY[0x277CF9B90], v16);
  *v24 = v25;
  v29(v24, *MEMORY[0x277CF9BD0], v16);
  v30 = v47 + qword_2813651F0;
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_224A3317C(v30, v48);
    swift_endAccess();
    v32 = v49;
    v31 = v50;
    v47 = __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v36 + 104))(v38, *MEMORY[0x277CF9B50], v37);
    (*(v40 + 104))(v43, *MEMORY[0x277CF9B40], v42);
    (*(v17 + 16))(v21, v24, v16);

    sub_224DACC48();
    sub_224DACC38();
    (*(v31 + 24))(v44, v45, v46, v15, v32, v31);
    (*(v39 + 8))(v15, v41);
    (*(v17 + 8))(v24, v16);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v34 = *(v17 + 8);

    v34(v24, v16);
    return swift_endAccess();
  }
}

double sub_224CDE6DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_2813548C0);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_224CDE8B4(sub_224CE3BC8, &unk_2838336F0, sub_224CE3DE0, &block_descriptor_47_0, &unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

double sub_224CDE7C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_2813548C0);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_224CDE8B4(sub_224CE3DF0, &unk_283833588, sub_224CE3B58, &block_descriptor_16, &unk_283833538, sub_224CE3610, &block_descriptor_47);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

void sub_224CDE8B4(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v144 = a7;
  v143 = a6;
  v142 = a5;
  v178 = a4;
  v177 = a3;
  v176 = a2;
  v150 = a1;
  v175 = sub_224DAB7B8();
  v8 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v9);
  v174 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_224DAB848();
  v11 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v12);
  v172 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_224DAB7C8();
  v14 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v15);
  v170 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ReloadRequestKey(0);
  v169 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v157 = &v142 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v142 - v26;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C0, &qword_224DBF268);
  MEMORY[0x28223BE20](v167, v28);
  v195 = &v142 - v29;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v181 = *(v190 - 8);
  v30 = *(v181 + 64);
  v32 = MEMORY[0x28223BE20](v190, v31);
  v187 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v180 = &v142 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C8, &qword_224DBF270);
  v37 = MEMORY[0x28223BE20](v35 - 8, v36);
  v151 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v152 = &v142 - v40;
  v194 = v7;
  v166 = qword_2813548B8;
  v41 = sub_224DAB228();
  v42 = sub_224DAF268();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_224A2F000, v41, v42, "Timer fired.", v43, 2u);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  v44 = v194;
  os_unfair_lock_assert_owner(*(*(v194 + qword_2813548C0) + 16));
  BSContinuousMachTimeNow();
  v46 = v45 + *(v44 + 24);
  v47 = qword_2813549E8;
  swift_beginAccess();
  v149 = v47;
  v48 = *(v44 + v47);
  v49 = *(v48 + 64);
  v146 = v48 + 64;
  v50 = 1 << *(v48 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & v49;
  v145 = (v50 + 63) >> 6;
  v179 = v181 + 16;
  v185 = (v181 + 32);
  v165 = 0x8000000224DCDFB0;
  v164 = *MEMORY[0x277D851C0];
  v163 = (v14 + 104);
  v162 = (v14 + 8);
  v161 = v30 + 7;
  v160 = v199;
  v159 = (v8 + 8);
  v158 = (v11 + 8);
  v148 = (v181 + 8);
  v147 = v48;

  v53 = 0;
  v155 = 0;
  *&v54 = 136446210;
  v156 = v54;
  v168 = v21;
  v189 = v27;
  v193 = v17;
LABEL_8:
  if (v52)
  {
    v59 = v53;
LABEL_16:
    v154 = (v52 - 1) & v52;
    v61 = __clz(__rbit64(v52)) | (v59 << 6);
    v62 = v147;
    v63 = v181;
    v64 = v180;
    v65 = v190;
    (*(v181 + 16))(v180, *(v147 + 48) + *(v181 + 72) * v61, v190);
    v66 = *(*(v62 + 56) + 8 * v61);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
    v68 = *(v67 + 48);
    v69 = *(v63 + 32);
    v70 = v151;
    v69(v151, v64, v65);
    *&v70[v68] = v66;
    (*(*(v67 - 8) + 56))(v70, 0, 1, v67);

    v153 = v59;
    v71 = v70;
LABEL_17:
    v72 = v152;
    sub_224A44E4C(v71, v152, &qword_27D6F62C8, &qword_224DBF270);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) != 1)
    {
      v74 = *(v72 + *(v73 + 48));
      v184 = *v185;
      v75 = v184(v187, v72, v190);
      MEMORY[0x28223BE20](v75, v76);
      *(&v142 - 2) = v194;
      *(&v142 - 1) = v46;

      v78 = v155;
      v79 = sub_224CE39D8(v77, v150);
      v155 = v78;

      v80 = v79 + 64;
      v81 = 1 << v79[32];
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      else
      {
        v82 = -1;
      }

      v83 = v82 & *(v79 + 8);
      v84 = (v81 + 63) >> 6;
      v186 = v79;

      v85 = 0;
      v86 = v17;
      v183 = v80;
      for (i = v84; ; v84 = i)
      {
        if (!v83)
        {
          while (1)
          {
            v87 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              break;
            }

            if (v87 >= v84)
            {
              v17 = v86;

              v55 = v194;
              v56 = v149;
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v196 = *(v55 + v56);
              *(v55 + v56) = 0x8000000000000000;
              v58 = v187;
              sub_224B1F908(v74, v187, isUniquelyReferenced_nonNull_native);
              *(v55 + v56) = v196;
              swift_endAccess();

              (*v148)(v58, v190);
              v53 = v153;
              v52 = v154;
              goto LABEL_8;
            }

            v83 = *&v80[8 * v87];
            ++v85;
            if (v83)
            {
              v192 = v74;
              v85 = v87;
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v192 = v74;
LABEL_30:
        v88 = __clz(__rbit64(v83)) | (v85 << 6);
        v89 = v186;
        v90 = *(v169 + 72);
        v91 = v195;
        sub_224CE35AC(*(v186 + 6) + v90 * v88, v195);
        *(v91 + *(v167 + 48)) = *(*(v89 + 7) + 8 * v88);
        sub_224CE35AC(v91, v27);

        v92 = sub_224DAB228();
        v93 = sub_224DAF2A8();
        v94 = os_log_type_enabled(v92, v93);
        v188 = v90;
        if (v94)
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v196 = v96;
          *v95 = v156;
          v97 = v27;
          v98 = v157;
          sub_224CE35AC(v97, v157);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          aBlock = sub_224DAFD28();
          v198 = v99;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          v100 = v193;
          MEMORY[0x22AA5D210](*(v98 + *(v193 + 20)), *(v98 + *(v193 + 20) + 8));
          v101 = aBlock;
          v102 = v198;
          sub_224B30FEC(v189);
          sub_224B30FEC(v98);
          v103 = sub_224A33F74(v101, v102, &v196);

          *(v95 + 4) = v103;
          _os_log_impl(&dword_224A2F000, v92, v93, "%{public}s - Reloading for prior requested throttled reload", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          MEMORY[0x22AA5EED0](v96, -1, -1);
          MEMORY[0x22AA5EED0](v95, -1, -1);
        }

        else
        {

          sub_224B30FEC(v27);
          v100 = v193;
        }

        v104 = (v195 + *(v100 + 20));
        v106 = *v104;
        v105 = v104[1];
        sub_224AC319C();
        v107 = v170;
        v108 = v171;
        (*v163)(v170, v164, v171);
        v191 = sub_224DAF428();
        (*v162)(v107, v108);
        v109 = v181;
        v110 = v180;
        v111 = v190;
        (*(v181 + 16))(v180, v187, v190);
        v112 = (*(v109 + 80) + 40) & ~*(v109 + 80);
        v113 = (v161 + v112) & 0xFFFFFFFFFFFFFFF8;
        v114 = swift_allocObject();
        v114[2] = 0xD000000000000036;
        v115 = v194;
        v114[3] = v165;
        v114[4] = v115;
        v184(v114 + v112, v110, v111);
        v116 = (v114 + v113);
        *v116 = v106;
        v116[1] = v105;
        v199[2] = v177;
        v199[3] = v114;
        aBlock = MEMORY[0x277D85DD0];
        v198 = 1107296256;
        v199[0] = sub_224A39F40;
        v199[1] = v178;
        v117 = _Block_copy(&aBlock);

        v118 = v172;
        sub_224DAB7E8();
        v196 = MEMORY[0x277D84F90];
        sub_224CE3D8C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v119 = v174;
        v120 = v175;
        sub_224DAF788();
        v121 = v191;
        MEMORY[0x22AA5D760](0, v118, v119, v117);
        _Block_release(v117);

        (*v159)(v119, v120);
        (*v158)(v118, v173);

        v122 = v168;
        sub_224CE35AC(v195, v168);
        type metadata accessor for ReloadInfo();
        v123 = swift_allocObject();
        *(v123 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v123 + 16) = v124;
        *(v123 + 24) = 0;
        v125 = v192;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v125;
        v127 = sub_224B0B4A0(v122);
        v129 = *(v125 + 16);
        v130 = (v128 & 1) == 0;
        v131 = __OFADD__(v129, v130);
        v132 = v129 + v130;
        if (v131)
        {
          goto LABEL_49;
        }

        v133 = v128;
        if (*(v125 + 24) < v132)
        {
          break;
        }

        v86 = v193;
        v27 = v189;
        if (v126)
        {
          goto LABEL_38;
        }

        v138 = v193;
        v139 = v127;
        sub_224B252CC();
        v127 = v139;
        v86 = v138;
        v74 = aBlock;
        if (v133)
        {
LABEL_22:
          *(v74[7] + 8 * v127) = v123;

          goto LABEL_23;
        }

LABEL_39:
        v74[(v127 >> 6) + 8] |= 1 << v127;
        v135 = v127;
        sub_224CE35AC(v122, v74[6] + v127 * v188);
        *(v74[7] + 8 * v135) = v123;
        v136 = v74[2];
        v131 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v131)
        {
          goto LABEL_50;
        }

        v74[2] = v137;
LABEL_23:
        v83 &= v83 - 1;
        sub_224B30FEC(v122);
        sub_224A3311C(v195, &qword_27D6F62C0, &qword_224DBF268);
        v80 = v183;
      }

      sub_224B0F154(v132, v126);
      v127 = sub_224B0B4A0(v122);
      v86 = v193;
      v27 = v189;
      if ((v133 & 1) != (v134 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      v74 = aBlock;
      if (v133)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    if (*(v194 + qword_2813549F0))
    {
      sub_224CE2E28(v46);
    }

    sub_224AA33EC(v142, v143, v144);
  }

  else
  {
    if (v145 <= v53 + 1)
    {
      v60 = v53 + 1;
    }

    else
    {
      v60 = v145;
    }

    while (1)
    {
      v59 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v59 >= v145)
      {
        v153 = v60 - 1;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
        v141 = v151;
        (*(*(v140 - 8) + 56))(v151, 1, 1, v140);
        v71 = v141;
        v154 = 0;
        goto LABEL_17;
      }

      v52 = *(v146 + 8 * v59);
      ++v53;
      if (v52)
      {
        goto LABEL_16;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    sub_224DAFDD8();
    __break(1u);
  }
}

void *sub_224CDF9F0()
{
  sub_224A3317C((v0 + 3), v6);
  v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = *v1;
  v3 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v4 = *(v2 + v3);
  os_unfair_lock_lock(*(v4 + 16));
  sub_224B45B00(v2);
  os_unfair_lock_unlock(*(v4 + 16));
  __swift_destroy_boxed_opaque_existential_1(v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  sub_224A3D418(v0[8], v0[9]);
  return v0;
}

uint64_t sub_224CDFAA8()
{
  sub_224CDF9F0();

  return swift_deallocClassInstance();
}

char *sub_224CDFB0C()
{
  v1 = *v0;
  v2 = *__swift_project_boxed_opaque_existential_1(v0 + 2, *(v0 + 5));
  v4 = type metadata accessor for ExternalRequestReloadFilter.ForegroundControlPolicy(0, *(v1 + 80), *(v1 + 88), v3);
  sub_224CC0BB0(v0, v2, v4, &off_2838334E8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = qword_27D6F6228;
  v6 = sub_224DAB258();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_224A3D418(*&v0[qword_27D6F71D8], *&v0[qword_27D6F71D8 + 8]);
  return v0;
}

uint64_t sub_224CDFC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v87 = &v84 - v4;
  v5 = sub_224DAC2B8();
  v91 = *(v5 - 8);
  v92 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v90 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v84 - v19;
  v21 = sub_224DACB98();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v22 + 88))(v25, v21) != *MEMORY[0x277CF9B90])
  {
    (*(v22 + 8))(v25, v21);
    return 1;
  }

  (*(v22 + 96))(v25, v21);
  v26 = *(*v25 + 16);
  v27 = v26;

  v28 = sub_224DAC2A8();
  v29 = [v28 extensionIdentity];

  v30 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v29 + v30, v15, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_224A3311C(v15, &unk_27D6F5060, &qword_224DB5620);
    return 1;
  }

  (*(v17 + 32))(v20, v15, v16);
  if (v26)
  {
    v32 = v27;
    sub_224DAA318();
    v33 = sub_224DAEDE8();

    v34 = [v32 hasEntitlement_];

    if (v34 & 1) != 0 || (v32 = v32, v35 = sub_224DAEDE8(), v36 = [v32 hasEntitlement_], v32, v35, (v36))
    {
      (*(v17 + 8))(v20, v16);

      return 1;
    }
  }

  v37 = __swift_project_boxed_opaque_existential_1(v93 + 2, v93[5]);
  v38 = sub_224DAC2A8();
  v39 = [v38 extensionIdentity];

  v40 = *v37;
  v41 = *(v40 + 24);
  v42 = *(v41 + 16);

  os_unfair_lock_lock(v42);
  swift_beginAccess();
  if (*(*(v40 + 32) + 16))
  {

    sub_224A3E7EC(v39);
    v44 = v43;

    if (v44)
    {
      os_unfair_lock_unlock(*(v41 + 16));

LABEL_16:
      (*(v17 + 8))(v20, v16);
      return 2;
    }
  }

  os_unfair_lock_unlock(*(v41 + 16));

  v45 = __swift_project_boxed_opaque_existential_1((v93[7] + 24), *(v93[7] + 48));
  v46 = *v45;
  v47 = *(*v45 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v48 = *(v47 + 16);

  os_unfair_lock_lock(v48);
  v49 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v50 = *(v46 + v49);
  v51 = *(v47 + 16);

  os_unfair_lock_unlock(v51);

  LOBYTE(v47) = sub_224A33718(v20, v50, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

  if (v47)
  {

    goto LABEL_16;
  }

  v86 = v27;
  v85 = qword_27D6F6228;
  v53 = v91;
  v52 = v92;
  v54 = *(v91 + 16);
  v54(v11, a1, v92);
  v54(v90, a1, v52);
  v55 = sub_224DAB228();
  v56 = sub_224DAF2A8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v53;
    v58 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v94 = v93;
    *v58 = 136315394;
    LODWORD(v85) = v56;
    v59 = sub_224DAC2A8();
    v60 = [v59 extensionIdentity];

    v61 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v62 = v88;
    v63 = *(v88 + 16);
    v64 = &v60[v61];
    v65 = v87;
    v84 = v55;
    v66 = v89;
    v63(v87, v64, v89);

    v67 = v57 + 8;
    v68 = *(v57 + 8);
    v91 = v67;
    v68(v11, v92);
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v69 = sub_224DAFD28();
    v71 = v70;
    (*(v62 + 8))(v65, v66);
    v72 = sub_224A33F74(v69, v71, &v94);

    *(v58 + 4) = v72;
    *(v58 + 12) = 2080;
    v73 = v90;
    v74 = sub_224DAC2A8();
    v75 = [v74 kind];

    v76 = sub_224DAEE18();
    v78 = v77;

    v68(v73, v92);
    v79 = sub_224A33F74(v76, v78, &v94);

    *(v58 + 14) = v79;
    v80 = v84;
    _os_log_impl(&dword_224A2F000, v84, v85, "%s:%s blocked reload request for non-visible control", v58, 0x16u);
    v81 = v93;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v81, -1, -1);
    MEMORY[0x22AA5EED0](v58, -1, -1);
  }

  else
  {
    v82 = *(v53 + 8);
    v83 = v92;
    v82(v11, v92);

    v82(v90, v83);
  }

  (*(v17 + 8))(v20, v16);
  return 0;
}

uint64_t sub_224CE05A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v82 = &v77 - v4;
  v87 = sub_224DABE18();
  v85 = *(v87 - 8);
  v6 = MEMORY[0x28223BE20](v87, v5);
  v86 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v77 - v18;
  v20 = sub_224DACB98();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v21 + 88))(v24, v20) != *MEMORY[0x277CF9B90])
  {
    (*(v21 + 8))(v24, v20);
    return 1;
  }

  (*(v21 + 96))(v24, v20);
  v25 = *(*v24 + 16);
  v26 = v25;

  v81 = a1;
  v27 = sub_224DABDB8();
  v28 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v27 + v28, v14, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_224A3311C(v14, &unk_27D6F5060, &qword_224DB5620);
    return 1;
  }

  v80 = v26;
  (*(v16 + 32))(v19, v14, v15);
  if (v25)
  {
    v30 = v80;
    sub_224DAA318();
    v31 = sub_224DAEDE8();

    v32 = [v30 hasEntitlement_];

    if (v32 & 1) != 0 || (v30 = v30, v33 = sub_224DAEDE8(), v34 = [v30 hasEntitlement_], v30, v33, (v34))
    {
      (*(v16 + 8))(v19, v15);

      return 1;
    }
  }

  v35 = __swift_project_boxed_opaque_existential_1(v88 + 2, v88[5]);
  v36 = sub_224DABDB8();
  v37 = *v35;
  v38 = *(*v35 + 24);
  v39 = *(v38 + 16);

  os_unfair_lock_lock(v39);
  swift_beginAccess();
  if (*(*(v37 + 32) + 16))
  {

    sub_224A3E7EC(v36);
    v41 = v40;

    if (v41)
    {
      os_unfair_lock_unlock(*(v38 + 16));

LABEL_16:
      (*(v16 + 8))(v19, v15);
      return 2;
    }
  }

  os_unfair_lock_unlock(*(v38 + 16));

  v42 = __swift_project_boxed_opaque_existential_1((v88[7] + 24), *(v88[7] + 48));
  v43 = *v42;
  v44 = *(*v42 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v44 + 16));
  v45 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v46 = *(v43 + v45);
  v47 = *(v44 + 16);

  os_unfair_lock_unlock(v47);
  LOBYTE(v47) = sub_224A33718(v19, v46, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

  if (v47)
  {

    goto LABEL_16;
  }

  v79 = qword_27D6F6228;
  v48 = v85;
  v49 = *(v85 + 16);
  v50 = v81;
  v51 = v87;
  v49(v10, v81, v87);
  v49(v86, v50, v51);
  v52 = sub_224DAB228();
  v53 = sub_224DAF2A8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v48;
    v55 = swift_slowAlloc();
    v78 = v55;
    v88 = swift_slowAlloc();
    v89 = v88;
    *v55 = 136315394;
    LODWORD(v81) = v53;
    v56 = sub_224DABDB8();
    v79 = v52;
    v57 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v58 = v82;
    v59 = v83;
    v60 = &v56[v57];
    v61 = v84;
    (*(v83 + 16))(v82, v60, v84);

    v62 = v87;
    v85 = *(v54 + 8);
    (v85)(v10, v87);
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v63 = sub_224DAFD28();
    v65 = v64;
    (*(v59 + 8))(v58, v61);
    v66 = sub_224A33F74(v63, v65, &v89);

    v67 = v78;
    *(v78 + 1) = v66;
    *(v67 + 6) = 2080;
    v68 = v86;
    v69 = sub_224DABDD8();
    v71 = v70;
    (v85)(v68, v62);
    v72 = sub_224A33F74(v69, v71, &v89);

    *(v67 + 14) = v72;
    v73 = v79;
    _os_log_impl(&dword_224A2F000, v79, v81, "%s:%s blocked reload request for non-visible control", v67, 0x16u);
    v74 = v88;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v74, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  else
  {
    v75 = *(v48 + 8);
    v76 = v87;
    v75(v10, v87);

    v75(v86, v76);
  }

  (*(v16 + 8))(v19, v15);
  return 0;
}

uint64_t sub_224CE0ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - v11;
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(a2 + v13, v7, &unk_27D6F5060, &qword_224DB5620);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
  }

  (*(v9 + 32))(v12, v7, v8);
  v15 = *(v2 + qword_27D6F71D8);
  if (v15)
  {
    v16 = *(v2 + qword_27D6F71D8 + 8);

    v15(v12);
    sub_224A3D418(v15, v16);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224CE10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_224DAB258();
  if (v6 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CE1194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v136 = a2;
  v4 = sub_224DACB98();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v135 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_224DACB08();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v7);
  v134 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v131 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_224DACC88();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v12);
  v130 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for ReloadRequestKey(0);
  v15 = MEMORY[0x28223BE20](v137, v14);
  v125 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v124 = &v119 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v127 = &v119 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v126 = &v119 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v138 = &v119 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v119 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v119 - v35;
  v37 = sub_224DAC2A8();
  v38 = [v37 extensionIdentity];

  v39 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v38 + v39, v31, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_224A3311C(v31, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v33 + 32))(v36, v31, v32);
    v40 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v41 = sub_224DA9FE8();
    v42 = (*(v40 + 8))(v41);

    if (v42)
    {
      v123 = v36;
      v121 = v33;
      v122 = v32;
      swift_beginAccess();
      v43 = v3[7];
      v44 = v3;
      if (*(v43 + 16))
      {

        v45 = sub_224A89A08(v123);
        v46 = v137;
        v47 = v138;
        if (v48)
        {
          v49 = *(*(v43 + 56) + 8 * v45);
        }

        else
        {
          v49 = 0;
        }
      }

      else
      {
        v49 = 0;
        v46 = v137;
        v47 = v138;
      }

      v50 = sub_224DAC2A8();
      v51 = [v50 extensionIdentity];

      v52 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v54 = *(*(v53 - 8) + 16);
      v137 = v53;
      v54(v47, &v51[v52]);

      v55 = sub_224DAC2A8();
      v56 = [v55 kind];

      v57 = sub_224DAEE18();
      v59 = v58;

      v60 = (v47 + *(v46 + 20));
      *v60 = v57;
      v60[1] = v59;
      v61 = v46;
      if (v49)
      {
        v62 = *(v44 + qword_27D6F6238);

        BSContinuousMachTimeNow();
        v64 = v63;
        v65 = *(v49 + 16);

        if (v62 >= vabdd_f64(v64, v65))
        {
          v88 = v125;
          sub_224CE35AC(v47, v125);
          v89 = sub_224DAB228();
          v90 = sub_224DAF2A8();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = v88;
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v120 = v49;
            v94 = v93;
            v139 = v93;
            *v92 = 136446210;
            v95 = v127;
            sub_224CE35AC(v91, v127);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
            v140 = sub_224DAFD28();
            v141 = v96;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v95 + *(v46 + 20)), *(v95 + *(v46 + 20) + 8));
            v97 = v47;
            v98 = v140;
            v99 = v141;
            sub_224B30FEC(v91);
            sub_224B30FEC(v95);
            v100 = sub_224A33F74(v98, v99, &v139);

            *(v92 + 4) = v100;
            _os_log_impl(&dword_224A2F000, v89, v90, "%{public}s - Received additional connected device refresh request within throttle period.", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v94);
            MEMORY[0x22AA5EED0](v94, -1, -1);
            MEMORY[0x22AA5EED0](v92, -1, -1);

            v101 = v97;
          }

          else
          {

            sub_224B30FEC(v88);
            v101 = v47;
          }

          sub_224B30FEC(v101);
          (*(v121 + 8))(v123, v122);
          return 0;
        }

        v66 = v46;
        v67 = v124;
        sub_224CE35AC(v47, v124);
        v68 = sub_224DAB228();
        v69 = sub_224DAF2A8();
        v70 = os_log_type_enabled(v68, v69);
        v120 = v49;
        if (v70)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v139 = v72;
          *v71 = 136446210;
          v73 = v127;
          sub_224CE35AC(v67, v127);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          v140 = sub_224DAFD28();
          v141 = v74;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v73 + *(v66 + 20)), *(v73 + *(v66 + 20) + 8));
          v75 = v140;
          v76 = v141;
          sub_224B30FEC(v67);
          sub_224B30FEC(v73);
          v77 = sub_224A33F74(v75, v76, &v139);

          *(v71 + 4) = v77;
          _os_log_impl(&dword_224A2F000, v68, v69, "%{public}s - Allowing subsequent connected device refresh after throttle interval.", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x22AA5EED0](v72, -1, -1);
          MEMORY[0x22AA5EED0](v71, -1, -1);
        }

        else
        {

          sub_224B30FEC(v67);
        }

        v111 = v132;
        v112 = v130;
        v113 = v133;
        (*(v132 + 32))(v130, v136, v133);
        sub_224DACC58();
        (*(v128 + 104))(v134, *MEMORY[0x277CF9B40], v129);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v111 + 8))(v112, v113);
        type metadata accessor for ReloadInfo();
        v114 = swift_allocObject();
        *(v114 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v114 + 16) = v115;
        *(v114 + 24) = 0;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = *(v44 + 56);
        *(v44 + 56) = 0x8000000000000000;
        v117 = v123;
        sub_224B1FAC0(v114, v123, isUniquelyReferenced_nonNull_native);
        *(v44 + 56) = v139;
        swift_endAccess();

        sub_224B30FEC(v138);
        (*(v121 + 8))(v117, v122);
      }

      else
      {
        v78 = v126;
        sub_224CE35AC(v47, v126);
        v125 = v44;
        v79 = sub_224DAB228();
        v80 = sub_224DAF2A8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v139 = v82;
          *v81 = 136446210;
          v83 = v127;
          sub_224CE35AC(v78, v127);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          v140 = sub_224DAFD28();
          v141 = v84;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v83 + *(v61 + 20)), *(v83 + *(v61 + 20) + 8));
          v85 = v140;
          v86 = v141;
          sub_224B30FEC(v78);
          sub_224B30FEC(v83);
          v87 = sub_224A33F74(v85, v86, &v139);

          *(v81 + 4) = v87;
          _os_log_impl(&dword_224A2F000, v79, v80, "%{public}s - Allowing first refresh while attached to connected device.", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x22AA5EED0](v82, -1, -1);
          MEMORY[0x22AA5EED0](v81, -1, -1);
        }

        else
        {

          sub_224B30FEC(v78);
        }

        v102 = v121;
        v103 = v132;
        v104 = v130;
        v105 = v133;
        (*(v132 + 32))(v130, v136, v133);
        sub_224DACC58();
        (*(v128 + 104))(v134, *MEMORY[0x277CF9B40], v129);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v103 + 8))(v104, v105);
        type metadata accessor for ReloadInfo();
        v106 = swift_allocObject();
        *(v106 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v106 + 16) = v107;
        *(v106 + 24) = 0;
        v108 = v125;
        swift_beginAccess();
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v139 = *(v108 + 56);
        *(v108 + 56) = 0x8000000000000000;
        v110 = v123;
        sub_224B1FAC0(v106, v123, v109);
        *(v108 + 56) = v139;
        swift_endAccess();
        sub_224B30FEC(v138);
        (*(v102 + 8))(v110, v122);
      }

      return 1;
    }

    (*(v33 + 8))(v36, v32);
  }

  return 0;
}

uint64_t sub_224CE2040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a2;
  v4 = sub_224DACB98();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v123 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_224DACB08();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v7);
  v122 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v119 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_224DACC88();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v12);
  v118 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for ReloadRequestKey(0);
  v15 = MEMORY[0x28223BE20](v125, v14);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v113 = &v110 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v115 = &v110 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v114 = &v110 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v127 = &v110 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v110 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v110 - v35;
  v37 = sub_224DABDB8();
  v38 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v37 + v38, v31, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_224A3311C(v31, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v33 + 32))(v36, v31, v32);
    v39 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v40 = sub_224DA9FE8();
    v41 = (*(v39 + 8))(v40);

    if (v41)
    {
      v42 = v36;
      v112 = v32;
      v111 = v33;
      swift_beginAccess();
      v43 = v3[7];
      v44 = v3;
      if (*(v43 + 16))
      {

        v45 = v42;
        v46 = sub_224A89A08(v42);
        v47 = v126;
        v48 = v127;
        if (v49)
        {
          v50 = *(*(v43 + 56) + 8 * v46);
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        v50 = 0;
        v47 = v126;
        v48 = v127;
        v45 = v42;
      }

      v51 = sub_224DABDB8();
      v52 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v53 - 8) + 16))(v48, &v51[v52], v53);

      v54 = sub_224DABDD8();
      v55 = v125;
      v56 = (v48 + *(v125 + 20));
      *v56 = v54;
      v56[1] = v57;
      if (v50)
      {
        v58 = *(v44 + qword_27D6F6238);

        BSContinuousMachTimeNow();
        v60 = v59;
        v61 = *(v50 + 16);

        if (v58 >= vabdd_f64(v60, v61))
        {
          sub_224CE35AC(v48, v47);
          v85 = sub_224DAB228();
          v86 = sub_224DAF2A8();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v128 = v88;
            *v87 = 136446210;
            v89 = v47;
            v90 = v115;
            sub_224CE35AC(v89, v115);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
            v129 = sub_224DAFD28();
            v130 = v91;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v90 + *(v55 + 20)), *(v90 + *(v55 + 20) + 8));
            v92 = v129;
            v93 = v130;
            sub_224B30FEC(v126);
            sub_224B30FEC(v90);
            v94 = sub_224A33F74(v92, v93, &v128);

            *(v87 + 4) = v94;
            _os_log_impl(&dword_224A2F000, v85, v86, "%{public}s - Received additional connected device refresh request within throttle period.", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v88);
            MEMORY[0x22AA5EED0](v88, -1, -1);
            MEMORY[0x22AA5EED0](v87, -1, -1);

            v95 = v127;
          }

          else
          {

            sub_224B30FEC(v47);
            v95 = v48;
          }

          sub_224B30FEC(v95);
          (*(v111 + 8))(v42, v112);
          return 0;
        }

        v126 = v50;
        v62 = v113;
        sub_224CE35AC(v48, v113);
        v63 = v44;
        v64 = sub_224DAB228();
        v65 = sub_224DAF2A8();
        v66 = os_log_type_enabled(v64, v65);
        v110 = v45;
        if (v66)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v128 = v68;
          *v67 = 136446210;
          v69 = v115;
          sub_224CE35AC(v62, v115);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          v129 = sub_224DAFD28();
          v130 = v70;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v69 + *(v55 + 20)), *(v69 + *(v55 + 20) + 8));
          v71 = v129;
          v72 = v130;
          sub_224B30FEC(v62);
          sub_224B30FEC(v69);
          v73 = sub_224A33F74(v71, v72, &v128);

          *(v67 + 4) = v73;
          _os_log_impl(&dword_224A2F000, v64, v65, "%{public}s - Allowing subsequent connected device refresh after throttle interval.", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x22AA5EED0](v68, -1, -1);
          MEMORY[0x22AA5EED0](v67, -1, -1);
        }

        else
        {

          sub_224B30FEC(v62);
        }

        v103 = v120;
        v104 = v118;
        v105 = v121;
        (*(v120 + 32))(v118, v124, v121);
        sub_224DACC58();
        (*(v116 + 104))(v122, *MEMORY[0x277CF9B40], v117);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v103 + 8))(v104, v105);
        type metadata accessor for ReloadInfo();
        v106 = swift_allocObject();
        *(v106 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v106 + 16) = v107;
        *(v106 + 24) = 0;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v63[7];
        v63[7] = 0x8000000000000000;
        v102 = v110;
        sub_224B1FAC0(v106, v110, isUniquelyReferenced_nonNull_native);
        v63[7] = v128;
        swift_endAccess();
      }

      else
      {
        v74 = v114;
        sub_224CE35AC(v48, v114);
        v75 = sub_224DAB228();
        v76 = sub_224DAF2A8();
        v77 = os_log_type_enabled(v75, v76);
        v110 = v45;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v128 = v79;
          *v78 = 136446210;
          v80 = v115;
          sub_224CE35AC(v74, v115);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
          v129 = sub_224DAFD28();
          v130 = v81;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v80 + *(v55 + 20)), *(v80 + *(v55 + 20) + 8));
          v82 = v129;
          v83 = v130;
          sub_224B30FEC(v74);
          sub_224B30FEC(v80);
          v84 = sub_224A33F74(v82, v83, &v128);

          *(v78 + 4) = v84;
          _os_log_impl(&dword_224A2F000, v75, v76, "%{public}s - Allowing first refresh while attached to connected device.", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x22AA5EED0](v79, -1, -1);
          MEMORY[0x22AA5EED0](v78, -1, -1);
        }

        else
        {

          sub_224B30FEC(v74);
        }

        v96 = v120;
        v97 = v118;
        v98 = v121;
        (*(v120 + 32))(v118, v124, v121);
        sub_224DACC58();
        (*(v116 + 104))(v122, *MEMORY[0x277CF9B40], v117);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v96 + 8))(v97, v98);
        type metadata accessor for ReloadInfo();
        v99 = swift_allocObject();
        *(v99 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v99 + 16) = v100;
        *(v99 + 24) = 0;
        swift_beginAccess();
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v44[7];
        v44[7] = 0x8000000000000000;
        v102 = v110;
        sub_224B1FAC0(v99, v110, v101);
        v44[7] = v128;
        swift_endAccess();
      }

      sub_224B30FEC(v127);
      (*(v111 + 8))(v102, v112);
      return 1;
    }

    (*(v33 + 8))(v36, v32);
  }

  return 0;
}

void sub_224CE2E28(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v48 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D8, &qword_224DBF288);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v47 - v17;
  swift_beginAccess();
  v19 = *(v1 + 56);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v51 = qword_27D6F6238;
  v24 = (v21 + 63) >> 6;
  v47 = v4 + 16;
  v58 = (v4 + 32);
  v54 = v4;
  v56 = (v4 + 8);
  v49 = v19;

  v25 = 0;
  v57 = v1;
  v52 = v18;
  v53 = v15;
  v50 = v20;
  v55 = v8;
  if (!v23)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v26 = v3;
      v27 = v25;
LABEL_15:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = v30 | (v27 << 6);
      v32 = v49;
      v33 = v54;
      (*(v54 + 16))(v48, *(v49 + 48) + *(v54 + 72) * v31, v26);
      v34 = *(*(v32 + 56) + 8 * v31);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      v36 = *(v35 + 48);
      v3 = v26;
      v15 = v53;
      (*(v33 + 32))();
      *&v15[v36] = v34;
      (*(*(v35 - 8) + 56))(v15, 0, 1, v35);

      v1 = v57;
      v18 = v52;
LABEL_16:
      sub_224A44E4C(v15, v18, &qword_27D6F62D8, &qword_224DBF288);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      if ((*(*(v37 - 8) + 48))(v18, 1, v37) == 1)
      {

        return;
      }

      v38 = *&v18[*(v37 + 48)];
      v39 = v55;
      (*v58)(v55, v18, v3);
      if (fabs(*(v38 + 16) + *(v1 + v51)) < a1)
      {
        break;
      }

      (*v56)(v39, v3);

      v20 = v50;
      if (!v23)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v40 = sub_224A89A08(v39);
    v20 = v50;
    if (v41)
    {
      v42 = v40;
      v43 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v43 + 56);
      v59 = v45;
      *(v43 + 56) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B25518();
        v45 = v59;
      }

      (*(v54 + 8))(*(v45 + 48) + *(v54 + 72) * v42, v3);

      sub_224B3151C(v42, v45);
      *(v43 + 56) = v45;
      v39 = v55;
      v18 = v52;
      v15 = v53;
    }

    swift_endAccess();

    (*v56)(v39, v3);
    v1 = v57;
  }

  while (v23);
LABEL_7:
  if (v24 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
      v23 = 0;
      v25 = v29;
      goto LABEL_16;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v26 = v3;
      v25 = v27;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_224CE3380()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = qword_27D6F6230;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_224CE3408(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadRequestKey(uint64_t a1)
{
  result = qword_28135AEA0;
  if (!qword_28135AEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224CE34F0(uint64_t a1)
{
  sub_224AFCB78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224CE35AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadRequestKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_224CE3618(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224CE37E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224CE36A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB8]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v5 = sub_224DAFD88();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for ReloadRequestKey(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_224DAFD88();
  }

  return v6 & 1;
}

uint64_t sub_224CE37E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v30 = a4;
  v27 = a1;
  v5 = type metadata accessor for ReloadRequestKey(0);
  v29 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v31;
    sub_224CE35AC(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v23 = *(*(v22 + 56) + 8 * v21);

    v24 = v30(v9, v23);

    result = sub_224B30FEC(v9);
    if (v24)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224B2CAC4(v27, v26, v28, v31);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_224B2CAC4(v27, v26, v28, v31);
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224CE39D8(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v3 = v2;
  v5 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_224CE37E8(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_224CE3618(v15, v9, v5, a2);
  result = MEMORY[0x22AA5EED0](v15, -1, -1);
  if (!v16)
  {
    return v17;
  }

  return result;
}

uint64_t sub_224CE3B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadRequestKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224CE3CF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_224CDE28C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, v3[1]);
}

uint64_t sub_224CE3D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_224CE3E18()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_224B0CC04(*(v3 + 16), 0);
  v6 = *(sub_224DAE438() - 8);
  v7 = sub_224B2EEB0(&v10, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  v8 = v10;

  sub_224A3B7E4(v8);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v5;
}

void sub_224CE3F38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE438();
  v5 = *(v4 - 8);
  v23 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  v24 = *(v2 + 32);
  os_unfair_lock_lock(*(v24 + 16));
  v21 = a1;
  v12 = sub_224DAE418();
  v14 = v13;
  v15 = *(v5 + 16);
  v15(v11, a1, v4);
  (*(v5 + 56))(v11, 0, 1, v4);
  swift_beginAccess();
  sub_224B0764C(v11, v12, v14);
  swift_endAccess();
  v16 = *(v2 + 24);
  v17 = v22;
  v15(v22, v21, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  (*(v5 + 32))(v19 + v18, v17, v4);

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v16, sub_224CE4E18, v19, 0.0);

  os_unfair_lock_unlock(*(v24 + 16));
}

uint64_t sub_224CE41A0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_224DAE438();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DABBC8();
  return a1(v7);
}

void sub_224CE44BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = *(v2 + 32);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = sub_224DAE438();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  swift_beginAccess();

  sub_224B0764C(v9, a1, a2);
  swift_endAccess();
  v12 = *(v2 + 24);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v12, sub_224CE4D78, v13, 0.0);

  os_unfair_lock_unlock(*(v10 + 16));
}

void sub_224CE4884(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = v2[2];
  swift_beginAccess();

  v9 = sub_224B30D34(v8, v7, a1, a2);

  *(v6 + 16) = v9;

  v10 = v2[3];
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v10, sub_224CE4D40, v11, 0.0);

  os_unfair_lock_unlock(*(v5 + 16));
}

char *sub_224CE4C74(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 32);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = sub_224B09FAC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
  return v6;
}

void sub_224CE4CD0(uint64_t a1@<X0>, uint64_t (*a2)(char *, char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v7 = *(*v3 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224B0AAFC(a1, a2, a3);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

double sub_224CE4DB0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_224DAB958();
  a2(v4, v5);

  return result;
}

uint64_t sub_224CE4E18(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DAE438() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_224CE41A0(a1, a2, v6, v7);
}

double sub_224CE4E9C(uint64_t a1)
{
  sub_224DAB958();
  sub_224DAB938();

  return result;
}

unint64_t sub_224CE4EF0(uint64_t a1)
{
  v70 = a1;
  v2 = sub_224DAE438();
  v71 = *(v2 - 8);
  v72 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v73 = &v64 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v64 - v10;
  v69 = sub_224DAF3C8();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAF318();
  MEMORY[0x28223BE20](v16, v17);
  v18 = sub_224DAB848();
  MEMORY[0x28223BE20](v18 - 8, v19);
  type metadata accessor for PushTokenStore();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F98];
  v1[2] = v20;
  type metadata accessor for UnfairLock();
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *v22 = 0;
  *(v21 + 16) = v22;
  v1[4] = v21;
  v68 = sub_224AC319C();
  sub_224DAB7E8();
  v76 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v12 + 104))(v15, *MEMORY[0x277D85260], v69);
  v1[3] = sub_224DAF418();
  v68 = v1;
  v1[5] = v70;

  sub_224DABAD8();
  v23 = sub_224DABB88();

  v24 = *(v23 + 16);
  v69 = v24;
  v70 = v23;
  isUniquelyReferenced_nonNull_native = 0;
  if (v24)
  {
    v26 = v72;
    v67 = *(v71 + 16);
    v27 = v23 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v28 = *(v71 + 72);
    v29 = (v71 + 8);
    v30 = 0xE000000000000000;
    do
    {
      v67(v11, v27, v26);
      v76 = isUniquelyReferenced_nonNull_native;
      v77 = v30;

      MEMORY[0x22AA5D210](8236, 0xE200000000000000);
      v31 = sub_224DAE418();
      MEMORY[0x22AA5D210](v31);

      isUniquelyReferenced_nonNull_native = v76;
      v30 = v77;
      (*v29)(v11, v26);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281364D78);

    v33 = sub_224DAB228();
    v34 = sub_224DAF2A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76 = v36;
      *v35 = 136446210;
      v37 = sub_224A33F74(isUniquelyReferenced_nonNull_native, v30, &v76);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v33, v34, "Restored push tokens with identifiers: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = v72;
    v38 = v70;
    if (!v69)
    {
      break;
    }

    v39 = 0;
    v67 = (v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
    v65 = (v71 + 40);
    v66 = (v71 + 32);
    v40 = (v71 + 8);
    while (v39 < *(v38 + 16))
    {
      v43 = *(v71 + 72);
      v44 = *(v71 + 16);
      v45 = v73;
      v44(v73, v67 + v43 * v39, isUniquelyReferenced_nonNull_native);
      v46 = *(v68 + 16);
      v47 = sub_224DAE418();
      v30 = v48;
      swift_beginAccess();
      v44(v74, v45, isUniquelyReferenced_nonNull_native);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v46 + 16);
      v49 = v75;
      *(v46 + 16) = 0x8000000000000000;
      v50 = sub_224A3A40C(v47, v30);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_27;
      }

      v56 = v51;
      if (v49[3] < v55)
      {
        sub_224B0F12C(v55, isUniquelyReferenced_nonNull_native);
        v50 = sub_224A3A40C(v47, v30);
        if ((v56 & 1) != (v57 & 1))
        {
          sub_224DAFDD8();
          __break(1u);

          result = sub_224DAFB58();
          __break(1u);
          return result;
        }

LABEL_20:
        isUniquelyReferenced_nonNull_native = v72;
        if (v56)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v62 = v50;
      sub_224B252A4();
      v50 = v62;
      isUniquelyReferenced_nonNull_native = v72;
      if (v56)
      {
LABEL_12:
        v41 = v50;

        v42 = v75;
        (*v65)(v75[7] + v41 * v43, v74, isUniquelyReferenced_nonNull_native);
        goto LABEL_13;
      }

LABEL_21:
      v58 = v74;
      v42 = v75;
      v75[(v50 >> 6) + 8] |= 1 << v50;
      v59 = (v42[6] + 16 * v50);
      *v59 = v47;
      v59[1] = v30;
      (*v66)(v42[7] + v50 * v43, v58, isUniquelyReferenced_nonNull_native);
      v60 = v42[2];
      v54 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v54)
      {
        goto LABEL_28;
      }

      v42[2] = v61;
LABEL_13:
      ++v39;
      *(v46 + 16) = v42;

      swift_endAccess();
      (*v40)(v73, isUniquelyReferenced_nonNull_native);
      v38 = v70;
      if (v69 == v39)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_25:

  return v68;
}

void *sub_224CE5714(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224CE5B40(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224CE578C(uint64_t a1)
{
  v2 = v1;
  v43 = *MEMORY[0x277D85DE8];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v10;
    v32 = v2;
    v30 = &v30;
    MEMORY[0x28223BE20](v7, v11);
    v33 = &v30 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v12);
    v34 = 0;
    v35 = v9;
    v13 = 0;
    v2 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v10 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    v37 = (v5 + 8);
    v38 = v5 + 16;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v13 << 6);
      v21 = *(a1 + 48);
      v22 = *(v5 + 72);
      v36 = v20;
      (*(v5 + 16))(v9, v21 + v22 * v20, v4);
      if (sub_224DA95D8())
      {
        (*v37)(v9, v4);
      }

      else
      {
        v41 = sub_224DA95A8();
        v42 = v23;
        v39 = 0x6E6176656C65722FLL;
        v40 = 0xEB000000002F6563;
        sub_224AFC154();
        v24 = sub_224DAF748();
        v9 = v35;

        (*v37)(v9, v4);
        if (v24)
        {
          *&v33[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
            return sub_224B04F30(v33, v31, v34, a1);
          }
        }
      }
    }

    v18 = v13;
    while (1)
    {
      v13 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v13 >= v16)
      {
        return sub_224B04F30(v33, v31, v34, a1);
      }

      v19 = *(v2 + 8 * v13);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v27 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v27;
  }

  v28 = swift_slowAlloc();
  v29 = sub_224CE5714(v28, v10, a1);

  result = MEMORY[0x22AA5EED0](v28, -1, -1);
  if (!v2)
  {
    return v29;
  }

  return result;
}

uint64_t sub_224CE5B40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a1;
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = v9;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v35 = v5 + 16;
  v30 = (v5 + 8);
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v18 = v15 | (v10 << 6);
    v19 = *(a3 + 48);
    v20 = *(v5 + 72);
    v29 = v18;
    (*(v5 + 16))(v9, v19 + v20 * v18, v4);
    if (sub_224DA95D8())
    {
      result = (*v30)(v9, v4);
    }

    else
    {
      v33 = sub_224DA95A8();
      v34 = v21;
      v31 = 0x6E6176656C65722FLL;
      v32 = 0xEB000000002F6563;
      sub_224AFC154();
      v22 = sub_224DAF748();
      v9 = v28;

      result = (*v30)(v9, v4);
      if (v22)
      {
        *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:

          return sub_224B04F30(v26, v25, v27, a3);
        }
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_17;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE5DFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_224CE5E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_224CE5EBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_224CE5F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224CE5F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_224CE5FBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CE6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE6084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_224CE60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE6160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE61D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224CE5FBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_224CE6208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224AAF094(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_224CE624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224CE5FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224CE627C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_224CE699C();
  *a2 = result;
  return result;
}

uint64_t sub_224CE62A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_224CE62FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_224CE6350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  type metadata accessor for ReplicatedConfiguration.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_224DAFC88();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAFEF8();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  v34 = 0;
  sub_224B6AA7C();
  sub_224DAFC68();
  v11 = v32;
  v12 = v33;
  sub_224DAAD38();
  v13 = sub_224DAACF8();
  v14 = v31;
  v5 = v13;
  v30 = v12;
  LOBYTE(v32) = 1;
  v15 = sub_224DAFC38();
  v18 = v11;
  if (v16)
  {
    v19 = v10;
    v20 = a1;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281365120);
    v22 = sub_224DAB228();
    v23 = sub_224DAF278();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v30;
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = v23;
      v28 = v26;
      _os_log_impl(&dword_224A2F000, v22, v27, "activation state was not included, assuming activated", v26, 2u);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    sub_224A78024(v18, v25);

    (*(v31 + 8))(v19, v7);
    goto LABEL_12;
  }

  v29 = v15;
  (*(v14 + 8))(v10, v7);
  result = sub_224A78024(v11, v30);
  v20 = a1;
  if ((v29 & 0x8000000000000000) == 0)
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE66DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a3;
  type metadata accessor for ReplicatedConfiguration.CodingKeys(255, a4, a5, a4);
  swift_getWitnessTable();
  v6 = sub_224DAFCF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAFF08();
  sub_224DAAD38();
  v11 = v17[1];
  v12 = sub_224DAAD08();
  if (v11)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v12;
  v18 = v12;
  v19 = v13;
  v16 = v13;
  v20 = 0;
  sub_224B6B30C();
  sub_224DAFCE8();
  LOBYTE(v18) = 1;
  sub_224DAFCD8();
  (*(v7 + 8))(v10, v6);
  return sub_224A78024(v15, v16);
}

uint64_t sub_224CE68D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_224CE6350(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_224CE6A0C(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  result = sub_224DAF798();
  v5 = *(a1 + 36);
  v27 = result;
  v28 = v5;
  v29 = 0;
LABEL_7:
  v6 = 0;
  v23 = v2;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v27;
    v9 = v28;
    v11 = v29;
    sub_224CB9ABC(v27, v28, v29, a1);
    v13 = v12;
    [v12 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    [v25 setDefaultIntent_];
    [v25 setIntentRecommendationsContainer_];
    [v25 copy];
    sub_224DAF758();

    swift_unknownObjectRelease();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A98, &qword_224DBF930);
      v7 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v7(v26, 0);
      if (v6 == v23)
      {
LABEL_28:
        sub_224A3E204(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v2 = v23;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        v2 = v23;
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_224A3E204(v10, v9, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v10, v9, 0);
      }

LABEL_27:
      v27 = v14;
      v28 = v9;
      v29 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
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
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224CE6E08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x7265766F63736964;
  v4 = a1;
  v5 = 0xEE0068636E75614CLL;
  v6 = 0x73656E656C617473;
  v7 = 0xEA00000000007373;
  if (a1 != 4)
  {
    v6 = 7037793;
    v7 = 0xE300000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x7974697669746361;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7463617265746E69;
  v9 = 0xEB000000006E6F69;
  if (a1 != 1)
  {
    v8 = 0xD000000000000012;
    v9 = 0x8000000224DC4510;
  }

  if (!a1)
  {
    v8 = 0x7265766F63736964;
    v9 = 0xE900000000000079;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE0068636E75614CLL;
      if (v10 != 0x7974697669746361)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000007373;
      if (v10 != 0x73656E656C617473)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v10 != 7037793)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB000000006E6F69;
        if (v10 != 0x7463617265746E69)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000012;
      v2 = 0x8000000224DC4510;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_224DAFD88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_224CE6FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006465676E6168;
  v3 = 0x437363697274656DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x64657472617473;
    }

    else
    {
      v6 = 0x8000000224DC4690;
      v5 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x437363697274656DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4)
    {
      v6 = 0xEE006465676E6168;
    }

    else
    {
      v6 = 0x8000000224DC4660;
    }
  }

  v7 = 0x64657472617473;
  v8 = 0x8000000224DC4690;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (!a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000224DC4660;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224DAFD88();
  }

  return v11 & 1;
}

uint64_t sub_224CE7150(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726564;
  v3 = 0x6C6F686563616C70;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x746F687370616E73;
    }

    else
    {
      v5 = 0x6C6F686563616C70;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000726564;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x656E696C656D6974;
  }

  else
  {
    v5 = 0x2D6C6F72746E6F63;
    if (v4 == 3)
    {
      v6 = 0xEF77656976657270;
    }

    else
    {
      v6 = 0xEC0000006576696CLL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696C656D6974;
  v9 = 0xEF77656976657270;
  if (a2 != 3)
  {
    v9 = 0xEC0000006576696CLL;
  }

  if (a2 != 2)
  {
    v8 = 0x2D6C6F72746E6F63;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x746F687370616E73;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_224DAFD88();
  }

  return v12 & 1;
}

uint64_t sub_224CE7300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746F687370616E73;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x2D6C6F72746E6F63;
    if (v3 == 2)
    {
      v5 = 0xEF77656976657270;
    }

    else
    {
      v5 = 0xEC0000006576696CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E696C656D6974;
    }

    else
    {
      v4 = 0x746F687370616E73;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0xEF77656976657270;
  if (a2 != 2)
  {
    v6 = 0xEC0000006576696CLL;
  }

  if (a2)
  {
    v2 = 0x656E696C656D6974;
  }

  if (a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x2D6C6F72746E6F63;
  }

  if (a2 <= 1u)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = v6;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();
  }

  return v9 & 1;
}

uint64_t sub_224CE746C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000726F74696ELL;
  v3 = 0x6F4D656369766564;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x736C6F72746E6F63;
  if (a1 != 4)
  {
    v6 = 0x6974697669746361;
    v5 = 0xEA00000000007365;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000016;
    v5 = 0x8000000224DC45E0;
  }

  v7 = 0xD00000000000001CLL;
  if (a1 == 1)
  {
    v7 = 0x6F69736E65747865;
    v8 = 0xEA0000000000736ELL;
  }

  else
  {
    v8 = 0x8000000224DC45C0;
  }

  if (!a1)
  {
    v7 = 0x6F4D656369766564;
    v8 = 0xED0000726F74696ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000224DC45E0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x736C6F72746E6F63)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000007365;
      if (v9 != 0x6974697669746361)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000736ELL;
        if (v9 != 0x6F69736E65747865)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0x8000000224DC45C0;
      v3 = 0xD00000000000001CLL;
    }

    if (v9 != v3)
    {
LABEL_32:
      v11 = sub_224DAFD88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v10 != v2)
  {
    goto LABEL_32;
  }

  v11 = 1;
LABEL_33:

  return v11 & 1;
}

uint64_t sub_224CE7654(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_224DAF838();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_224AFF30C(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_224DAF838() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_224DAF838();
  v2 = sub_224ADD3B4(v5, v6);
LABEL_10:

  return sub_224B00A68(a1, v2);
}

uint64_t sub_224CE7798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB618();
  *a1 = result;
  return result;
}

uint64_t sub_224CE77F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB708();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB6D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE78C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_224A3796C(a1, &v6 - v4, &qword_27D6F48C0, &qword_224DB8220);
  return sub_224DAB658();
}

uint64_t sub_224CE796C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB588();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7B18()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224CE7BF4(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224CE7CBC(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

unint64_t sub_224CE7D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224CF7A7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_224CE7DC4(unint64_t *a1@<X8>)
{
  v2 = 0xEE006465676E6168;
  v3 = 0x437363697274656DLL;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000224DC4690;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000224DC4660;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_224CE7E5C()
{
  v17 = sub_224DACB98();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DACB08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  __swift_allocate_value_buffer(v14, qword_281356148);
  __swift_project_value_buffer(v14, qword_281356148);
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B50], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CF9B40], v4);
  (*(v0 + 104))(v3, *MEMORY[0x277CF9BF0], v17);
  sub_224DACC48();
  return sub_224DACC38();
}

uint64_t sub_224CE80BC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_224DAC0C8();
    *(v0 + 32) = v1;
  }

  return v1;
}

double sub_224CE8124(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAB258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v2);
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, v10, v11, "Descriptors changed", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v13 = *(v9 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

    v14 = sub_224DACF58();
    v15 = *(v13 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
    v17 = MEMORY[0x28223BE20](v14, v16);
    *(&v21 - 2) = v17;
    *(&v21 - 1) = v13;
    MEMORY[0x28223BE20](v17, v18);
    *(&v21 - 2) = sub_224CF7DE0;
    *(&v21 - 1) = v19;
    os_unfair_lock_lock(v15 + 4);
    sub_224CF7DFC(v20);
    os_unfair_lock_unlock(v15 + 4);

    sub_224CEE034(0);
  }

  return result;
}

double sub_224CE837C(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAB258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v2);

    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (!os_log_type_enabled(v10, v11))
    {
LABEL_9:

      (*(v3 + 8))(v6, v2);
      sub_224CEE034(1);

      return result;
    }

    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v12 = 136446210;
    v13 = v9[31];
    v14 = v9[32];
    __swift_project_boxed_opaque_existential_1(v9 + 28, v13);
    (*(v14 + 32))(v25, 768, v13, v14);
    if (v25[5])
    {
      v15 = sub_224C160B0();
      sub_224A699F0(v25);
      if (v15)
      {
        v16 = sub_224A3B79C(0, &unk_281350890, 0x277CFA3F8);
        v17 = MEMORY[0x22AA5D380](v15, v16);
        v19 = v18;

        v20 = v17;
LABEL_8:
        v21 = sub_224A33F74(v20, v19, &v26);

        *(v12 + 4) = v21;
        _os_log_impl(&dword_224A2F000, v10, v11, "Received metrics change: %{public}s", v12, 0xCu);
        v22 = v24;
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x22AA5EED0](v22, -1, -1);
        MEMORY[0x22AA5EED0](v12, -1, -1);
        goto LABEL_9;
      }
    }

    else
    {
      sub_224A3311C(v25, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v19 = 0xE300000000000000;
    v20 = 7104878;
    goto LABEL_8;
  }

  return result;
}

void sub_224CE8640(uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong, v6);
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
    sub_224DAF3E8();
  }

  else
  {
    v9 = sub_224DAE4F8();
    (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void sub_224CE8774(void **a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v35 - v5;
  v7 = sub_224DAF3B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v35 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v43[0] = v17;
    v20 = v17;
    v21 = sub_224DAC168();

    if (v21 && (v40 = v20, v22 = sub_224A73210(v21), , v22))
    {
      v35[0] = v22;
      sub_224DABE38();
      v38 = v8;
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      v37 = sub_224DAD178();
      *&v41[0] = v37;
      sub_224DAF378();
      v42 = *(v19 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
      v23 = v42;
      v24 = sub_224DAF358();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      v36 = v23;
      v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      v39 = v13;
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
      sub_224DAB468();
      sub_224A3311C(v6, &qword_27D6F5090, &qword_224DB5C30);

      (*(v38 + 8))(v11, v7);

      v25 = swift_allocObject();
      swift_weakInit();
      sub_224A3317C(v43, v41);
      v26 = swift_allocObject();
      v27 = v40;
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      sub_224A36F98(v41, v26 + 32);
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
      v28 = v27;
      v29 = sub_224DAB488();

      (*(v39 + 8))(v16, v12);
      v30 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_environmentSubscriptions;
      swift_beginAccess();
      v31 = *(v19 + v30);
      if ((v31 & 0xC000000000000001) == 0)
      {
LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v19 + v30);
        sub_224A73460(v29, v28, isUniquelyReferenced_nonNull_native);
        *(v19 + v30) = v42;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1(v43);
        return;
      }

      if (v31 < 0)
      {
        v32 = *(v19 + v30);
      }

      else
      {
        v32 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v33 = sub_224DAF838();
      if (!__OFADD__(v33, 1))
      {
        *(v19 + v30) = sub_224D2D250(v32, v33 + 1);
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_224CE8CA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_224DAB728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_224DAD168();
    sub_224CED2FC(a3);

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

double sub_224CE8DD8(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B0E37C(v2);
    swift_endAccess();
  }

  return result;
}

double sub_224CE8E74(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAE918();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - v9;
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v12 + 16))(v15, Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v11);

    (*(v4 + 16))(v10, a1, v3);
    v17 = v4;
    v18 = sub_224DAB228();
    v19 = sub_224DAF278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v3;
      v21 = v20;
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v21 = 136446210;
      sub_224A828F0(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v32 = v11;
      v22 = v17;
      v23 = sub_224DAFD28();
      v33 = a1;
      v25 = v24;
      (*(v22 + 8))(v10, v34);
      v26 = sub_224A33F74(v23, v25, v36);
      a1 = v33;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v18, v19, "Protection Type changed to %{public}s", v21, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      v28 = v21;
      v3 = v34;
      MEMORY[0x22AA5EED0](v28, -1, -1);

      (*(v12 + 8))(v15, v32);
      v4 = v22;
    }

    else
    {

      (*(v17 + 8))(v10, v3);
      (*(v12 + 8))(v15, v11);
      v4 = v17;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    (*(v4 + 16))(v35, a1, v3);
    sub_224DAC0A8();
  }

  return result;
}

double sub_224CE9280(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224CEF4B4(a1, a2, a3);
  }

  return result;
}

char *sub_224CE92FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v6 != v4);
  }

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  v7 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v8 = sub_224DAB258();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider));

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver));
  sub_224A3311C(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_replicator, &qword_27D6F58B8, &qword_224DBBDC0);
  return v1;
}

uint64_t sub_224CE956C()
{
  sub_224CE92FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderService(uint64_t a1)
{
  result = qword_2813560E0;
  if (!qword_2813560E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CE9618(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224CE971C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v24 = &v23 - v8;
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, &a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v9);
  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, "Start", v16, 2u);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_project_boxed_opaque_existential_1(a1 + 17, *(a1 + 20));
  v27 = sub_224DAC6A8();
  v28 = *&a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue];
  v17 = v28;
  v18 = sub_224DAF358();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v20 = v24;
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, MEMORY[0x277CBCD60]);
  v21 = v26;
  sub_224DAB488();

  (*(v25 + 8))(v20, v21);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
  sub_224DAB318();
  swift_endAccess();

  return sub_224CEE034(2);
}

uint64_t sub_224CE9BF0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DACB98();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACB28();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DACC88();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v13 + 104))(v16, *MEMORY[0x277CF9B50], v12);
    (*(v8 + 104))(v11, *MEMORY[0x277CF9B40], v7);
    (*(v29 + 104))(v6, *MEMORY[0x277CF9B98], v30);
    sub_224DACC48();
    sub_224DACC38();
    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = v21 + 32;
      do
      {
        sub_224A3317C(v24, v34);
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        v25 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v34);
        v33 = v25;
        v26 = v25;
        v27 = sub_224DAC168();

        if (v27)
        {

          v33 = v26;
          sub_224DAC138();
        }

        v24 += 40;
        --v23;
      }

      while (v23);
    }

    return (*(v31 + 8))(v20, v32);
  }

  return result;
}

uint64_t sub_224CE9F80(uint64_t a1, uint64_t a2)
{
  v201 = a2;
  v171 = a1;
  v3 = sub_224DAB258();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v155 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v155 - v14;
  v170 = sub_224DAE918();
  v204 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v16);
  v169 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v181 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v180 = &v155 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v191 = &v155 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v198 = &v155 - v29;
  v190 = sub_224DAC268();
  v30 = *(v190 - 8);
  v32 = MEMORY[0x28223BE20](v190, v31);
  v168 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v167 = &v155 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v166 = &v155 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v188 = &v155 - v41;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v179, v42);
  v178 = &v155 - v43;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v192 = *(v202 - 8);
  v45 = MEMORY[0x28223BE20](v202, v44);
  v177 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v187 = &v155 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v184 = &v155 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v189 = &v155 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v57 = MEMORY[0x28223BE20](v55 - 8, v56);
  v205 = &v155 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v194 = &v155 - v60;
  v61 = v2[31];
  v62 = v2[32];
  __swift_project_boxed_opaque_existential_1(v2 + 28, v61);
  (*(v62 + 32))(v210, 768, v61, v62);
  if (!*(&v211 + 1))
  {
    sub_224A3311C(v210, &qword_27D6F50E0, &qword_224DB41A0);
    (*(v4 + 16))(v8, v2 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v3);
    v149 = sub_224DAB228();
    v150 = sub_224DAF278();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_224A2F000, v149, v150, "No hosts", v151, 2u);
      MEMORY[0x22AA5EED0](v151, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v172 = v2;
  v212[0] = v210[0];
  v212[1] = v210[1];
  v212[2] = v211;
  v63 = sub_224A86CAC();
  if (!v63)
  {
LABEL_58:
    (*(v4 + 16))(v12, v172 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v3);
    v152 = sub_224DAB228();
    v153 = sub_224DAF278();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_224A2F000, v152, v153, "No configurations", v154, 2u);
      MEMORY[0x22AA5EED0](v154, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    sub_224A699F0(v212);
    return 0;
  }

  if (!v63[2])
  {

    goto LABEL_58;
  }

  v165 = v3;
  v164 = v15;
  v64 = sub_224CF6B9C(v63);

  v67 = 0;
  v69 = (v64 + 8);
  v68 = v64[8];
  v185 = v64;
  v70 = 1 << *(v64 + 32);
  v208 = MEMORY[0x277D84F90];
  v209 = MEMORY[0x277D84FA0];
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  else
  {
    v71 = -1;
  }

  v72 = v71 & v68;
  v163 = MEMORY[0x277D84F90];
  v162 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver;
  v176 = (v70 + 63) >> 6;
  v161 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v197 = (v192 + 16);
  v199 = (v192 + 32);
  v175 = "er";
  v186 = (v192 + 56);
  v174 = (v192 + 48);
  v200 = (v192 + 8);
  v160 = (v30 + 16);
  v182 = (v30 + 8);
  v159 = *MEMORY[0x277CE3D68];
  v158 = v204 + 104;
  v157 = (v4 + 16);
  v156 = (v4 + 8);
  *&v66 = 136315138;
  v155 = v66;
  v73 = v202;
  v74 = v184;
  v75 = v205;
  v193 = (v64 + 8);
  while (v72)
  {
    v77 = v67;
LABEL_22:
    v81 = __clz(__rbit64(v72));
    v72 &= v72 - 1;
    v82 = v81 | (v77 << 6);
    v83 = v185;
    v84 = v192;
    v85 = v189;
    (*(v192 + 16))(v189, v185[6] + *(v192 + 72) * v82, v73);
    v86 = *(v83[7] + 8 * v82);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v88 = *(v87 + 48);
    v89 = *(v84 + 32);
    v75 = v205;
    v90 = v85;
    v80 = v199;
    v89(v205, v90, v73);
    *(v75 + v88) = v86;
    (*(*(v87 - 8) + 56))(v75, 0, 1, v87);
    v91 = v86;
LABEL_23:
    v92 = v194;
    sub_224A44E4C(v75, v194, &qword_27D6F4930, &unk_224DB8D00);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v93 - 8) + 48))(v92, 1, v93) == 1)
    {
      sub_224A699F0(v212);

      return v163;
    }

    v76 = *(v92 + *(v93 + 48));
    v195 = *v80;
    v94 = (v195)(v74, v92, v73);
    v204 = MEMORY[0x22AA5E4C0](v94);
    v95 = [v76 metricsSpecification];
    v96 = sub_224DAC248();
    v97 = [v96 family];

    v203 = v95;
    v98 = [v95 allMetricsForFamily_];
    sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
    sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0, MEMORY[0x277D85378]);
    v99 = sub_224DAF1B8();

    v100 = sub_224DAC258();
    if ((v99 & 0xC000000000000001) != 0)
    {
      v101 = sub_224DAF888();

      if (v101)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*(v99 + 16))
      {
        v196 = v76;
        v109 = sub_224DAF698();
        v110 = -1 << *(v99 + 32);
        v111 = v109 & ~v110;
        if ((*(v99 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
        {
          v112 = ~v110;
          while (1)
          {
            v113 = *(*(v99 + 48) + 8 * v111);
            v114 = sub_224DAF6A8();

            if (v114)
            {
              break;
            }

            v111 = (v111 + 1) & v112;
            if (((*(v99 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v76 = v196;
LABEL_26:
          v196 = v76;
          sub_224DA9FF8();
          v102 = v202;
          v183 = sub_224DAA1F8();
          sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
          sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
          sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
          sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
          v103 = v187;
          sub_224DAA1D8();
          v104 = sub_224DAC248();
          v183 = sub_224DAC258();
          v105 = v198;
          (*v197)(v198, v103, v102);
          v106 = *v186;
          (*v186)(v105, 0, 1, v102);
          v107 = [v104 intentReference];
          if (v107)
          {

            v108 = [v104 widgetByReplacingIntent_];
          }

          else
          {
            v108 = v104;
          }

          v116 = v108;
          v117 = v177;
          v118 = v180;
          v119 = v202;
          v106(v191, 1, 1, v202);
          sub_224A3796C(v198, v118, &qword_27D6F56C0, &unk_224DB3580);
          if ((*v174)(v118, 1, v119) == 1)
          {
            v120 = v116;
            sub_224A3311C(v118, &qword_27D6F56C0, &unk_224DB3580);
          }

          else
          {
            v173 = v104;
            v121 = v195;
            (v195)(v117, v118, v119);
            v122 = v116;
            sub_224DAA1F8();
            v123 = sub_224DAA048();

            if (v123)
            {
              v124 = v117;
              v125 = v191;
              sub_224A3311C(v191, &qword_27D6F56C0, &unk_224DB3580);
              (v121)(v125, v124, v119);
              v106(v125, 0, 1, v119);
            }

            else
            {
              (*v200)(v117, v119);
            }

            v104 = v173;
          }

          v126 = v191;
          sub_224A3796C(v191, v181, &qword_27D6F56C0, &unk_224DB3580);
          v127 = v188;
          sub_224DAC228();

          sub_224A3311C(v126, &qword_27D6F56C0, &unk_224DB3580);
          sub_224A3311C(v198, &qword_27D6F56C0, &unk_224DB3580);

          if ((sub_224CD70BC(v127, v209) & 1) == 0)
          {
            v128 = *v160;
            v129 = v167;
            v130 = v190;
            (*v160)(v167, v127, v190);
            v131 = v166;
            sub_224ADCAF4(v166, v129);
            v195 = *v182;
            v195(v131, v130);
            v132 = v172;
            __swift_project_boxed_opaque_existential_1(v172 + 12, v172[15]);
            sub_224DADA58();
            sub_224DABE88();
            v183 = v128;
            v128(v131, v188, v130);
            (*v158)(v169, v159, v170);
            sub_224A3317C(v210, &v207);
            sub_224A3317C(v132 + v162, v206);
            v133 = sub_224DABE48();
            MEMORY[0x22AA5D350]();
            if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_224DAF038();
            }

            sub_224DAF078();
            v163 = v208;
            v134 = v164;
            v135 = v165;
            (*v157)(v164, v132 + v161, v165);
            v173 = v133;
            v136 = v168;
            v137 = v190;
            v183(v168, v201, v190);
            v138 = sub_224DAB228();
            v139 = sub_224DAF278();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = v136;
              v142 = swift_slowAlloc();
              v207 = v142;
              *v140 = v155;
              sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
              v143 = sub_224DAFD28();
              v145 = v144;
              v146 = v195;
              v195(v141, v190);
              v147 = sub_224A33F74(v143, v145, &v207);

              *(v140 + 4) = v147;
              _os_log_impl(&dword_224A2F000, v138, v139, "Found %s", v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v142);
              MEMORY[0x22AA5EED0](v142, -1, -1);
              MEMORY[0x22AA5EED0](v140, -1, -1);

              (*v156)(v164, v165);
              __swift_destroy_boxed_opaque_existential_1(v210);
              v146(v188, v190);
            }

            else
            {

              v148 = v195;
              v195(v136, v137);
              (*v156)(v134, v135);
              __swift_destroy_boxed_opaque_existential_1(v210);
              v148(v188, v137);
            }

            v73 = v202;
            (*v200)(v187, v202);
            v74 = v184;
            v69 = v193;
            v75 = v205;
            goto LABEL_10;
          }

          (*v182)(v127, v190);
          v73 = v202;
          (*v200)(v187, v202);
        }

        else
        {
LABEL_33:

          v73 = v202;
        }

        v74 = v184;
        v75 = v205;
        v69 = v193;
LABEL_10:
        v76 = v196;
        goto LABEL_11;
      }
    }

    v73 = v202;
    v75 = v205;
    v69 = v193;
LABEL_11:
    objc_autoreleasePoolPop(v204);

    result = (*v200)(v74, v73);
  }

  if (v176 <= v67 + 1)
  {
    v78 = v67 + 1;
  }

  else
  {
    v78 = v176;
  }

  v79 = v78 - 1;
  v80 = v199;
  while (1)
  {
    v77 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v77 >= v176)
    {
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v115 - 8) + 56))(v75, 1, 1, v115);
      v72 = 0;
      v67 = v79;
      goto LABEL_23;
    }

    v72 = *&v69[8 * v77];
    ++v67;
    if (v72)
    {
      v67 = v77;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CEB668(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v22 = sub_224DACB98();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DACB08();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACC88();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CF9B50], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CF9B40], v21);
  (*(v2 + 16))(v5, v23, v22);
  sub_224DACC48();
  sub_224DACC38();
  v25 = v24;
  sub_224DAC138();
  return (*(v16 + 8))(v19, v15);
}

id sub_224CEB940()
{
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
  swift_dynamicCast();
  [v2 setDefaultIntent_];
  [v2 setIntentRecommendationsContainer_];
  [v2 copy];
  sub_224DAF758();

  swift_unknownObjectRelease();
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_224CEBA50@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a2;
  v175 = sub_224DAB258();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v6);
  v172 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v157 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v167 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v188 = &v157 - v18;
  v186 = sub_224DA9CC8();
  v189 = *(v186 - 8);
  v20 = MEMORY[0x28223BE20](v186, v19);
  v173 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v185 = &v157 - v23;
  v169 = sub_224DAD8A8();
  v168 = *(v169 - 1);
  MEMORY[0x28223BE20](v169, v24);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAE5C8();
  MEMORY[0x28223BE20](v27 - 8, v28);
  v178 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_224DAE588();
  v180 = *(v179 - 8);
  v31 = MEMORY[0x28223BE20](v179, v30);
  v176 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v177 = &v157 - v34;
  v35 = sub_224DAE4F8();
  v191 = *(v35 - 8);
  v192 = v35;
  MEMORY[0x28223BE20](v35, v36);
  *&v187 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DAC268();
  v181 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38, v39);
  v170 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v157 - v43;
  v45 = sub_224DAE478();
  MEMORY[0x28223BE20](v45 - 8, v46);
  v47 = sub_224DAB728();
  v183 = *(v47 - 8);
  v184 = v47;
  v49 = MEMORY[0x28223BE20](v47, v48);
  v51 = &v157 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v52);
  v182 = &v157 - v53;
  BSDispatchQueueAssert();
  v171 = v3;
  v194 = a1;
  v54 = a1;
  v55 = sub_224DAC168();

  if (!v55)
  {
    return (*(v191 + 56))(a3, 1, 1, v192);
  }

  if (!*(v55 + 16) || (v56 = sub_224A61E5C(v190), (v57 & 1) == 0))
  {

    return (*(v191 + 56))(a3, 1, 1, v192);
  }

  v158 = v54;
  v159 = v11;
  v160 = v13;
  v161 = a3;
  v58 = *(*(v55 + 56) + 8 * v56);

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(&v194, v195);
  v166 = v38;
  v59 = v182;
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(&v194);
  sub_224DABE58();
  v60 = sub_224DAC248();
  v62 = v181 + 8;
  v61 = *(v181 + 8);
  v61(v44, v166);
  [v60 family];

  sub_224DAE488();
  sub_224DAB5F8();
  sub_224DABE58();
  sub_224DAC258();
  v61(v44, v166);
  sub_224DAB628();
  v63 = v59;
  v64 = v166;
  (*(v183 + 16))(v51, v63, v184);
  sub_224DAE4D8();
  v164 = v58;
  sub_224DABE58();
  v65 = sub_224DAC248();
  v163 = v62;
  v162 = v61;
  v61(v44, v64);
  v66 = [v65 family];

  v157 = v66;
  LODWORD(v58) = CHSWidgetFamilyIsAccessory();
  swift_getKeyPath();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAB518();
  sub_224DAE4B8();
  v193 = MEMORY[0x277D84FA0];
  v165 = v58;
  if ((v58 & 1) == 0)
  {
    sub_224DAE5B8();
    v67 = v176;
    sub_224DAE568();
    v68 = v177;
    sub_224ADC50C(v177, v67);
    (*(v180 + 8))(v68, v179);
  }

  v69 = v171;
  __swift_project_boxed_opaque_existential_1((v171 + 184), *(v171 + 208));
  v70 = sub_224DADA38();
  v71 = v186;
  v72 = v189;
  if (v70)
  {
    sub_224DABE58();
    v73 = sub_224DAC248();
    v162(v44, v64);
    sub_224DACA18();

    v74 = v169;
    sub_224DACF08();

    (*(v168 + 8))(v26, v74);
    v75 = v194;
    v76 = v188;
    v77 = v173;
    if (!v194)
    {
      goto LABEL_17;
    }

    if (v165)
    {
      goto LABEL_9;
    }

    if ([v194 isLinkedOnOrAfter_])
    {
      sub_224DAE5A8();
      v79 = v176;
      sub_224DAE568();
      v80 = v177;
      sub_224ADC50C(v177, v79);
      v169 = *(v180 + 8);
      v81 = v179;
      (v169)(v80, v179);
      sub_224DAE5B8();
      v77 = v173;
      sub_224DAE568();
      v82 = v79;
      v76 = v188;
      sub_224ADC50C(v80, v82);

      (v169)(v80, v81);
      v72 = v189;
    }

    else
    {
      if (![v75 isLinkedOnOrAfter_])
      {
LABEL_9:

        goto LABEL_17;
      }

      sub_224DAE5B8();
      v83 = v176;
      sub_224DAE568();
      v84 = v177;
      v85 = v83;
      v77 = v173;
      sub_224ADC50C(v177, v85);

      (*(v180 + 8))(v84, v179);
    }
  }

  else
  {
    v76 = v188;
    v77 = v173;
  }

LABEL_17:
  __swift_project_boxed_opaque_existential_1((v69 + 56), *(v69 + 80));
  sub_224DAA068();
  v86 = *(v72 + 104);
  v86(v77, *MEMORY[0x277CF9F08], v71);
  v87 = sub_224DA9CB8();
  v88 = *(v72 + 8);
  v88(v77, v71);
  v173 = v88;
  v189 = v72 + 8;
  if (v87)
  {
    v89 = (v180 + 8);
    if (v165)
    {
      sub_224DAE598();
      v90 = v76;
      v91 = v176;
      sub_224DAE568();
      v92 = v177;
      sub_224ADC50C(v177, v91);
      v93 = *v89;
      v94 = v179;
      (*v89)(v92, v179);
      sub_224DAE5B8();
      sub_224DAE568();
      v95 = v92;
      v96 = v91;
      v76 = v90;
    }

    else
    {
      sub_224DAE5B8();
      v103 = v176;
      sub_224DAE568();
      v92 = v177;
      sub_224ADC50C(v177, v103);
      v93 = *v89;
      v94 = v179;
      (*v89)(v92, v179);
      sub_224DAE598();
      sub_224DAE568();
      sub_224ADC50C(v92, v103);
      v93(v92, v94);
      sub_224DAE5B8();
      sub_224DAE568();
      v95 = v92;
      v96 = v103;
    }

    sub_224ADC50C(v95, v96);
    v93(v92, v94);
    v98 = v172;
    v99 = v187;
    if (v157 == 1)
    {
      sub_224DAE598();
      v104 = v176;
      sub_224DAE568();
      v105 = v98;
      v106 = v177;
      sub_224ADC50C(v177, v104);
      v107 = v179;
      v93(v106, v179);
      sub_224DAE5B8();
      sub_224DAE568();
      sub_224ADC50C(v106, v104);
      v93(v106, v107);
      sub_224DAE5A8();
      sub_224DAE568();
      v108 = v104;
      v76 = v188;
      sub_224ADC50C(v106, v108);
      v109 = v106;
      v98 = v105;
      v93(v109, v107);
    }

    goto LABEL_28;
  }

  v86(v77, *MEMORY[0x277CF9F00], v71);
  v97 = sub_224DA9CB8();
  v88(v77, v71);
  v98 = v172;
  v99 = v187;
  if ((v97 & 1) == 0)
  {
LABEL_28:
    if (v165)
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA8, &unk_224DBFB90);
      v110 = sub_224DAB528();
      v111 = *(v110 - 8);
      v112 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_224DB3100;
      v76 = v188;
      (*(v111 + 104))(v113 + v112, *MEMORY[0x277CDF3C0], v110);
      sub_224DAE4B8();
    }

    goto LABEL_30;
  }

  v100 = v165;
  if (v157 == 1)
  {
    v100 = 1;
  }

  if (v100 == 1)
  {
    sub_224DAE598();
    v101 = v176;
    sub_224DAE568();
    v102 = v177;
    sub_224ADC50C(v177, v101);
    (*(v180 + 8))(v102, v179);
    goto LABEL_28;
  }

LABEL_30:
  swift_getKeyPath();
  v114 = v193;
  v115 = *(v193 + 16);
  if (v115)
  {
    v116 = sub_224B0CD70(*(v193 + 16), 0);
    v117 = sub_224B2FE58(&v194, &v116[(*(v180 + 80) + 32) & ~*(v180 + 80)], v115, v114);
    sub_224A3B7E4(v194);
    if (v117 == v115)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

LABEL_34:
  sub_224DAE4B8();
  sub_224DAE7B8();
  v118 = sub_224DAE7C8();
  (*(*(v118 - 8) + 56))(v76, 0, 1, v118);
  v119 = v159;
  sub_224DAC218();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v121 = *(v120 - 8);
  if ((*(v121 + 48))(v119, 1, v120) == 1)
  {
    sub_224A3311C(v119, &qword_27D6F56C0, &unk_224DB3580);
LABEL_38:
    v125 = 0;
    goto LABEL_39;
  }

  sub_224DAA1F8();
  v123 = v122;
  (*(v121 + 8))(v119, v120);
  if (!v123)
  {
    goto LABEL_38;
  }

  sub_224A3317C(v69 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider, &v194);
  __swift_project_boxed_opaque_existential_1(&v194, v195);
  v124 = v167;
  sub_224DAD4E8();

  sub_224A3311C(v76, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v124, v76, &qword_27D6F48C0, &qword_224DB8220);
  __swift_destroy_boxed_opaque_existential_1(&v194);
  v125 = 1;
LABEL_39:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v126 = swift_allocObject();
  v187 = xmmword_224DB3100;
  *(v126 + 16) = xmmword_224DB3100;
  *(v126 + 32) = v125;
  sub_224DAE4B8();
  swift_getKeyPath();
  v127 = swift_allocObject();
  *(v127 + 16) = v187;
  *(v127 + 32) = v125;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v128 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v129 = swift_allocObject();
  *(v129 + 16) = v187;
  sub_224A3796C(v76, v129 + v128, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v130 = swift_allocObject();
  *(v130 + 16) = v187;
  *(v130 + 32) = v125;
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE748();
  sub_224DAE4B8();
  v131 = v174;
  v132 = v175;
  (*(v174 + 16))(v98, v69 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v175);
  v133 = v170;
  v134 = v166;
  (*(v181 + 16))(v170, v190, v166);
  v135 = v99;
  v136 = v158;
  v137 = sub_224DAB228();
  v138 = sub_224DAF278();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v190 = v140;
    v141 = swift_slowAlloc();
    v194 = v141;
    *v139 = 138543874;
    *(v139 + 4) = v136;
    *v140 = v136;
    *(v139 + 12) = 2082;
    v142 = v136;
    LODWORD(v187) = v138;
    v143 = sub_224DAC248();
    [v143 family];

    v144 = NSStringFromWidgetFamily();
    v145 = sub_224DAEE18();
    v147 = v146;

    v162(v133, v134);
    v148 = sub_224A33F74(v145, v147, &v194);

    *(v139 + 14) = v148;
    *(v139 + 22) = 2082;
    swift_beginAccess();
    v149 = sub_224DAE498();
    v151 = sub_224A33F74(v149, v150, &v194);

    *(v139 + 24) = v151;
    _os_log_impl(&dword_224A2F000, v137, v187, "Environment for %{public}@-%{public}s: %{public}s", v139, 0x20u);
    v152 = v190;
    sub_224A3311C(v190, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v152, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v141, -1, -1);
    MEMORY[0x22AA5EED0](v139, -1, -1);

    (*(v174 + 8))(v98, v175);
    v153 = v188;
  }

  else
  {

    v162(v133, v134);
    (*(v131 + 8))(v98, v132);
    v153 = v76;
  }

  sub_224A3311C(v153, &qword_27D6F48C0, &qword_224DB8220);
  (v173)(v185, v186);
  (*(v183 + 8))(v182, v184);
  swift_beginAccess();
  v155 = v191;
  v154 = v192;
  v156 = v161;
  (*(v191 + 16))(v161, v135, v192);
  (*(v155 + 56))(v156, 0, 1, v154);
  return (*(v155 + 8))(v135, v154);
}

uint64_t sub_224CED22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

void sub_224CED2FC(void *a1)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v13);
  v92 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACC88();
  v93 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v91 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DAB258();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v18);
  v85 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_224DAB728();
  v107 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v20);
  v110 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DAE4F8();
  v100 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v22);
  v109 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_224DAC268();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v24);
  v103 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v111 = v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v104 = v75 - v31;
  BSDispatchQueueAssert();
  v87 = v1;
  v32 = *(v1 + 176);
  v114[0] = a1;
  v33 = a1;
  v84 = v32;
  v34 = sub_224DAC168();

  v106 = v34;
  if (!v34)
  {
    return;
  }

  v76 = v33;
  v77 = v15;
  v78 = v9;
  v79 = v8;
  v80 = v12;
  v81 = v4;
  v82 = v7;
  v83 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_224DBF6A0;
  *(v35 + 32) = swift_getKeyPath();
  *(v35 + 40) = swift_getKeyPath();
  *(v35 + 48) = swift_getKeyPath();
  v115 = v35;
  swift_getKeyPath();
  MEMORY[0x22AA5D350]();
  if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_35:
    sub_224DAF038();
  }

  sub_224DAF078();
  v36 = 0;
  v37 = v106 + 64;
  v38 = 1 << *(v106 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v106 + 64);
  v41 = (v38 + 63) >> 6;
  v102 = v105 + 16;
  v101 = v105 + 32;
  v42 = v115 & 0xFFFFFFFFFFFFFF8;
  v99 = v115;
  v94 = v115 & 0xFFFFFFFFFFFFFF8;
  if (v115 < 0)
  {
    v42 = v115;
  }

  v75[1] = v42;
  v96 = (v107 + 1);
  v95 = (v100 + 8);
  v107 = (v105 + 8);
  v43 = v108;
  v44 = v104;
  v45 = v111;
  v100 = v106 + 64;
  while (1)
  {
    if (!v40)
    {
      if (v41 <= v36 + 1)
      {
        v47 = v36 + 1;
      }

      else
      {
        v47 = v41;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v46 >= v41)
        {
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v64 - 8) + 56))(v45, 1, 1, v64);
          v40 = 0;
          v36 = v48;
          goto LABEL_21;
        }

        v40 = *(v37 + 8 * v46);
        ++v36;
        if (v40)
        {
          v36 = v46;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v46 = v36;
LABEL_20:
    v49 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v50 = v49 | (v46 << 6);
    v51 = v105;
    v52 = v106;
    v53 = v103;
    (*(v105 + 16))(v103, *(v106 + 48) + *(v105 + 72) * v50, v43);
    v54 = *(*(v52 + 56) + 8 * v50);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    v56 = *(v55 + 48);
    v57 = *(v51 + 32);
    v45 = v111;
    v57(v111, v53, v43);
    *(v45 + v56) = v54;
    (*(*(v55 - 8) + 56))(v45, 0, 1, v55);
    v58 = v54;
    v44 = v104;
    v37 = v100;
LABEL_21:
    sub_224A44E4C(v45, v44, &qword_27D6F47F0, &unk_224DB7850);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    if ((*(*(v59 - 8) + 48))(v44, 1, v59) == 1)
    {

      return;
    }

    v60 = *(v44 + *(v59 + 48));
    sub_224DABE68();
    if (!v113)
    {

      sub_224A3311C(&v112, &unk_27D6F3CB0, &unk_224DB7860);
      v43 = v108;
      goto LABEL_9;
    }

    sub_224A36F98(&v112, v114);
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    sub_224DAEA78();
    sub_224DABE38();
    __swift_project_boxed_opaque_existential_1(&v112, v113);
    sub_224DAD168();
    if (v99 >> 62)
    {
      sub_224DAF768();

      sub_224DAFB68();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_224DAFD98();
      sub_224DAF768();
    }

    v61 = v109;
    v62 = v110;
    v63 = sub_224DAE4E8();

    (*v96)(v62, v98);
    (*v95)(v61, v97);
    __swift_destroy_boxed_opaque_existential_1(&v112);
    if ((v63 & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v114);
    v43 = v108;
    v45 = v111;
LABEL_9:
    (*v107)(v44, v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v114);
  (*v107)(v44, v108);
  v65 = v86;
  v66 = v85;
  v67 = v88;
  (*(v86 + 16))(v85, v87 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v88);
  v68 = v76;
  v69 = sub_224DAB228();
  v70 = sub_224DAF2A8();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138543362;
    *(v71 + 4) = v68;
    *v72 = v68;
    v73 = v68;
    _os_log_impl(&dword_224A2F000, v69, v70, "Reloading placeholder for %{public}@ because environment no longer matches.", v71, 0xCu);
    sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    MEMORY[0x22AA5EED0](v71, -1, -1);
  }

  (*(v65 + 8))(v66, v67);
  (*(v89 + 104))(v92, *MEMORY[0x277CF9B50], v90);
  (*(v78 + 104))(v80, *MEMORY[0x277CF9B40], v79);
  (*(v81 + 104))(v82, *MEMORY[0x277CF9BA8], v83);
  sub_224DACC48();
  v74 = v91;
  sub_224DACC38();
  v114[0] = v68;
  sub_224DAC138();
  (*(v93 + 8))(v74, v77);
}

uint64_t sub_224CEDFDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CEE034(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v57 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v65 = &v57 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v57 - v18;
  v20 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_queuedPrecacheEvents;
  swift_beginAccess();
  sub_224ADCDD4(v67, a1);
  swift_endAccess();
  v21 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache;
  swift_beginAccess();
  if (*(*(v1 + v21) + 16))
  {
    v61 = v20;
    v62 = v9;
    swift_beginAccess();
    sub_224B02CC4(a1);
    swift_endAccess();
    v22 = *(v5 + 16);
    v63 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
    v64 = v22;
    v22(v19, v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v23 = sub_224DAB228();
    v24 = v5;
    v25 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v60 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v59 = v13;
      v29 = v28;
      v67[0] = v28;
      *v27 = 136446210;
      v66 = a1;
      v30 = sub_224DAEE28();
      v32 = sub_224A33F74(v30, v31, v67);
      v58 = v24;
      v33 = v32;

      *(v27 + 4) = v33;
      _os_log_impl(&dword_224A2F000, v23, v25, "Removing pre-caching startup reason: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      v13 = v59;
      MEMORY[0x22AA5EED0](v34, -1, -1);
      v35 = v27;
      v4 = v60;
      MEMORY[0x22AA5EED0](v35, -1, -1);

      v5 = v58;
      v36 = v58;
    }

    else
    {

      v36 = v24;
      v5 = v24;
    }

    v37 = *(v36 + 8);
    v37(v19, v4);
    if (*(*(v2 + v21) + 16))
    {
      v38 = v65;
      v64(v65, v2 + v63, v4);
      v39 = sub_224DAB228();
      v40 = sub_224DAF2A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_224A2F000, v39, v40, "Still waiting on other events before pre-caching.", v41, 2u);
        MEMORY[0x22AA5EED0](v41, -1, -1);
      }

      return (v37)(v38, v4);
    }

    v64(v13, v2 + v63, v4);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v13;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "All startup events received to enable pre-caching.", v46, 2u);
      v47 = v46;
      v13 = v45;
      MEMORY[0x22AA5EED0](v47, -1, -1);
    }

    v37(v13, v4);
    v20 = v61;
    v9 = v62;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 184), *(v2 + 208));
  if (sub_224DADA38())
  {
    v48 = sub_224DACF18();

    v49 = sub_224AE9E10(&unk_283828720);
    v50 = *(v2 + v20);

    v51 = sub_224CF71F8(v49, v50, sub_224CF73D4, sub_224CF73D4);

    v52 = v51[2];

    *(v2 + v20) = MEMORY[0x277D84FA0];

    v53 = sub_224AE8EB4(v48);

    sub_224CEE620(v53, v52 != 0);
  }

  else
  {
    (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v54 = sub_224DAB228();
    v55 = sub_224DAF2A8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_224A2F000, v54, v55, "No descriptors available to pre-cache.", v56, 2u);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}