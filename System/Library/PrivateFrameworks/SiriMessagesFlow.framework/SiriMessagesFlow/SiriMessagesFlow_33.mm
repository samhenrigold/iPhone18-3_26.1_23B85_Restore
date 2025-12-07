void sub_267E81CAC(void *a1, uint64_t a2, unint64_t a3)
{
  v281 = sub_267EF6868();
  OUTLINED_FUNCTION_58();
  v253 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v279 = v8;
  v278 = sub_267EF6A08();
  OUTLINED_FUNCTION_58();
  v280 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_267EF6A88();
  OUTLINED_FUNCTION_58();
  v261 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v15);
  v259 = sub_267EF6B88();
  OUTLINED_FUNCTION_58();
  v258 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v18);
  v19 = sub_267EF6B38();
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v21);
  v245 = sub_267EF2E38();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v266 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_45_0();
  v274 = v27;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45_0();
  v273 = v32;
  v255 = sub_267EF6B18();
  OUTLINED_FUNCTION_58();
  v254 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v264 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v37 = OUTLINED_FUNCTION_18(v36);
  MEMORY[0x28223BE20](v37);
  v244 = &v243 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v40 = OUTLINED_FUNCTION_18(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_60();
  v43 = v41 - v42;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v243 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v49);
  v277 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v252 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v53);
  v54 = sub_267EF2728();
  OUTLINED_FUNCTION_58();
  v248 = v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v243 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = 0x8000000267F10280;
  v271 = a2;
  v59 = a2 == 0xD000000000000013 && 0x8000000267F10280 == a3;
  v60 = v59;
  v269 = v60;
  v276 = v12;
  v268 = a3;
  if (!v59 && (OUTLINED_FUNCTION_21_33() & 1) == 0)
  {
    v267 = 0;
    v96 = sub_267E76140(a1);
    if (v96)
    {
      v97 = v96;
      v272 = a1;
      v62 = sub_267BAF0DC(v96);
      v98 = 0;
      a3 = v97 & 0xC000000000000001;
      v249 = MEMORY[0x277D84F90];
      v252 += 8;
      while (v62 != v98)
      {
        if (a3)
        {
          v99 = MEMORY[0x26D609870](v98, v97);
        }

        else
        {
          if (v98 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_142;
          }

          v99 = *(v97 + 8 * v98 + 32);
        }

        a1 = v99;
        v12 = (v98 + 1);
        if (__OFADD__(v98, 1))
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v100 = [v99 sharedLink];
        if (v100)
        {
          v101 = v100;
          sub_267EF2B48();

          v102 = 0;
        }

        else
        {
          v102 = 1;
        }

        v103 = v277;
        __swift_storeEnumTagSinglePayload(v43, v102, 1, v277);
        sub_267C26704(v43, v47);
        if (__swift_getEnumTagSinglePayload(v47, 1, v103) == 1)
        {

          sub_267B9F98C(v47, &qword_280229E20, &unk_267EFDCC0);
          ++v98;
          v12 = v276;
        }

        else
        {
          v104 = sub_267EF2AC8();
          v248 = v105;

          (*v252)(v47, v277);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_267BF4EE8();
            v249 = v110;
          }

          v106 = v249[2];
          a1 = (v106 + 1);
          if (v106 >= v249[3] >> 1)
          {
            sub_267BF4EE8();
            v249 = v111;
          }

          v107 = v249;
          v249[2] = a1;
          v108 = v107 + 16 * v106;
          v109 = v248;
          *(v108 + 32) = v104;
          *(v108 + 40) = v109;
          v98 = v12;
          v12 = v276;
        }
      }

      a1 = v272;
      a3 = v268;
      v112 = v249;
    }

    else
    {
      v112 = MEMORY[0x277D84F90];
    }

    v283 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v113 = sub_267EF8FC8();
    v115 = v114;

    v116 = sub_267ED9A2C(a1);
    if (v117)
    {
      v118 = v116;
      v119 = v117;
      v120 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v120 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        __swift_project_boxed_opaque_existential_0(v275 + 8, v275[11]);
        v121 = v244;
        a3 = v268;
        sub_267EF3B68();
        __swift_storeEnumTagSinglePayload(v121, 0, 1, v245);
        v113 = sub_267D5E5A0(v113, v115, v121, v118, v119);
        v123 = v122;

        sub_267B9F98C(v121, &unk_28022AF10, &unk_267F001E0);
        v115 = v123;
      }

      else
      {
      }
    }

    v124 = HIBYTE(v115) & 0xF;
    if ((v115 & 0x2000000000000000) == 0)
    {
      v124 = v113 & 0xFFFFFFFFFFFFLL;
    }

    v62 = v267;
    if (v124)
    {
      v125 = MEMORY[0x277D837D0];
    }

    else
    {

      v113 = 0;
      v115 = 0;
      v125 = 0;
      v285 = 0;
    }

    v283 = v113;
    v284 = v115;
    v286 = v125;
    OUTLINED_FUNCTION_31_28();
    sub_267ECE290();
    sub_267B9F98C(&v283, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_67;
  }

  v61 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v62 = 0;
  v63 = sub_267BD346C(32);
  if (!v63)
  {
    goto LABEL_67;
  }

  v267 = 0;
  if (qword_280228818 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v245 = v63;
    v64 = sub_267EF8A08();
    v244 = __swift_project_value_buffer(v64, qword_280240FB0);
    v65 = sub_267EF89F8();
    v66 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v66))
    {
      v67 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v67);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v68, v69, "#SendMessageChangeHandler changing back to 1st party");
      OUTLINED_FUNCTION_40_0();
    }

    v272 = a1;
    v70 = sub_267ED9A2C(a1);
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0xE000000000000000;
    }

    v74 = MEMORY[0x26D608EC0](v72, v73);

    v75 = sub_267EF8FF8();
    v76 = sub_267EF8FF8();
    v77 = v74;
    v78 = [v245 stringByReplacingMatchesInString:v75 options:0 range:0 withTemplate:{v74, v76}];

    v79 = sub_267EF9028();
    v81 = v80;

    v283 = v79;
    v284 = v81;
    sub_267EF26D8();
    sub_267BB5034();
    v82 = MEMORY[0x277D837D0];
    v83 = sub_267EF9918();
    v85 = v84;
    (*(v248 + 8))(v58, v54);

    v86 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v86 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!v86)
    {

      v83 = 0;
      v85 = 0;
      v82 = 0;
      v285 = 0;
    }

    v87 = v277;
    v283 = v83;
    v284 = v85;
    v286 = v82;
    OUTLINED_FUNCTION_31_28();
    a1 = v272;
    sub_267ECE290();
    sub_267B9F98C(&v283, &qword_28022AEF0, &qword_267EFCDE0);
    v88 = sub_267EF8FF8();

    v89 = v245;
    v90 = [v245 matchesInString:v88 options:0 range:{0, v77}];

    sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
    v62 = sub_267EF92F8();

    v91 = sub_267BF6698();

    if (v91)
    {
      v92 = [v91 URL];

      OUTLINED_FUNCTION_22_32();
      a3 = v268;
      if (v92)
      {
        v93 = v246;
        sub_267EF2B48();

        v94 = 0;
        v95 = v249;
      }

      else
      {
        v94 = 1;
        v95 = v249;
        v93 = v246;
      }

      v126 = v277;
      __swift_storeEnumTagSinglePayload(v93, v94, 1, v277);
      sub_267C26704(v93, v95);
      if (__swift_getEnumTagSinglePayload(v95, 1, v126) != 1)
      {
        (*(v252 + 32))(v247, v95, v126);
        v130 = sub_267EF89F8();
        v131 = sub_267EF95D8();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v132);
          OUTLINED_FUNCTION_45_1();
          _os_log_impl(v133, v134, v135, v136, v137, 2u);
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_267EFCA40;
        sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
        v139 = v252;
        v140 = v243;
        v141 = v247;
        (*(v252 + 16))(v243, v247, v277);
        *(v138 + 32) = sub_267E80978(v140);
        v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
        v283 = v138;
        sub_267ECE290();

        (*(v139 + 8))(v141, v277);
        v127 = &qword_28022AEF0;
        v128 = &qword_267EFCDE0;
        v129 = &v283;
        goto LABEL_66;
      }
    }

    else
    {

      v95 = v249;
      __swift_storeEnumTagSinglePayload(v249, 1, 1, v87);
      OUTLINED_FUNCTION_22_32();
      a3 = v268;
    }

    v127 = &qword_280229E20;
    v128 = &unk_267EFDCC0;
    v129 = v95;
LABEL_66:
    sub_267B9F98C(v129, v127, v128);
LABEL_67:
    if ((v269 & 1) == 0 && (OUTLINED_FUNCTION_21_33() & 1) == 0)
    {
      v142 = sub_267E76140(a1);
      if (v142)
      {
        v143 = v142;
        v267 = v62;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v43 = a1;
        v144 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v144, qword_280240FB0);
        v145 = sub_267EF89F8();
        v146 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v146))
        {
          v147 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v147);
          OUTLINED_FUNCTION_28_11(&dword_267B93000, v148, v149, "#SendMessageChangeHandler 3p app requested, redacting non-audio attachments");
          OUTLINED_FUNCTION_40_0();
        }

        v283 = MEMORY[0x277D84F90];
        v62 = sub_267BAF0DC(v143);
        v150 = 0;
        a3 = v143 & 0xFFFFFFFFFFFFFF8;
        v12 = &off_279C2E000;
        while (v62 != v150)
        {
          if ((v143 & 0xC000000000000001) != 0)
          {
            v151 = MEMORY[0x26D609870](v150, v143);
          }

          else
          {
            if (v150 >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_144;
            }

            v151 = *(v143 + 8 * v150 + 32);
          }

          v152 = v151;
          if (__OFADD__(v150, 1))
          {
            goto LABEL_143;
          }

          v153 = [v151 audioMessageFile];
          if (v153)
          {

            sub_267EF9BD8();
            a1 = v283[2];
            sub_267EF9C08();
            sub_267EF9C18();
            sub_267EF9BE8();
          }

          else
          {
          }

          ++v150;
        }

        v154 = v283;
        if (sub_267BAF0DC(v283))
        {
          a1 = v43;
          OUTLINED_FUNCTION_22_32();
          v12 = v276;
          a3 = v268;
          if (v154)
          {
            v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
            v283 = v154;
LABEL_90:
            sub_267ECE290();
            sub_267B9F98C(&v283, &qword_28022AEF0, &qword_267EFCDE0);
            goto LABEL_91;
          }
        }

        else
        {

          a1 = v43;
          OUTLINED_FUNCTION_22_32();
          v12 = v276;
          a3 = v268;
        }

        OUTLINED_FUNCTION_61_12();
        goto LABEL_90;
      }
    }

LABEL_91:
    v155 = sub_267BCEA0C(a1);
    if (!v155)
    {
      return;
    }

    v43 = v155;
    if (!sub_267BAF0DC(v155))
    {

      return;
    }

    if (qword_280228818 != -1)
    {
LABEL_145:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v156 = sub_267EF8A08();
    v157 = __swift_project_value_buffer(v156, qword_280240FB0);
    v158 = sub_267EF89F8();
    v159 = sub_267EF95D8();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v160);
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v161, v162, v163, v164, v165, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    __swift_project_boxed_opaque_existential_0(v275 + 3, v275[6]);
    v249 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v166 = sub_267EF2D28();
    v167 = v273;
    v252 = v166;
    __swift_storeEnumTagSinglePayload(v273, 1, 1, v166);
    v168 = sub_267EF6C28();
    __swift_storeEnumTagSinglePayload(v274, 1, 1, v168);
    v269 = OUTLINED_FUNCTION_28_3();
    v270 = sub_267EF6FF8();
    v277 = sub_267EF6FC8();
    v169 = v167;
    v170 = v256;
    sub_267C2FB6C(v169, v256, &qword_280229430, &qword_267EFD2C0);

    v248 = v157;
    v171 = sub_267EF89F8();
    v172 = sub_267EF95D8();

    v173 = os_log_type_enabled(v171, v172);
    v272 = a1;
    v267 = v62;
    if (v173)
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *v174 = 136315394;
      v282 = v175;
      v283 = v271;
      v284 = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v176 = sub_267EF9098();
      v178 = sub_267BA33E8(v176, v177, &v282);

      *(v174 + 4) = v178;
      *(v174 + 12) = 2080;
      sub_267C2FB6C(v170, v250, &qword_280229430, &qword_267EFD2C0);
      v179 = sub_267EF9098();
      v181 = v180;
      sub_267B9F98C(v170, &qword_280229430, &qword_267EFD2C0);
      v182 = sub_267BA33E8(v179, v181, &v282);
      v12 = v276;

      *(v174 + 14) = v182;
      _os_log_impl(&dword_267B93000, v171, v172, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v174, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267B9F98C(v170, &qword_280229430, &qword_267EFD2C0);
    }

    v183 = v257;
    v184 = v252;
    if (v277 && (sub_267EF6F98(), v185 = sub_267EF37B8(), v187 = v186, , v187))
    {
      v276 = v185;
    }

    else
    {

      v276 = 0;
    }

    v283 = v249;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
    v257 = sub_267EF9098();
    v256 = v188;
    __swift_project_boxed_opaque_existential_0(v275 + 8, v275[11]);
    sub_267EF3B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_267EFC020;
    v190 = v268;
    *(v189 + 32) = v271;
    *(v189 + 40) = v190;
    sub_267C2FB6C(v274, v265, &qword_280229428, &unk_267F00E50);
    sub_267C2FB6C(v273, v183, &qword_280229430, &qword_267EFD2C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v183, 1, v184);

    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v183, &qword_280229430, &qword_267EFD2C0);
    }

    else
    {
      sub_267EF2CE8();
      (*(*(v184 - 8) + 8))(v183, v184);
    }

    v192 = v259;
    sub_267EF6B28();
    v58 = v260;
    (*(v258 + 104))(v260, *MEMORY[0x277D56148], v192);
    v193 = v262;
    (*(v261 + 104))(v262, *MEMORY[0x277D560D0], v263);
    sub_267EF6AF8();

    sub_267B9F98C(v274, &qword_280229428, &unk_267F00E50);
    sub_267B9F98C(v273, &qword_280229430, &qword_267EFD2C0);
    if (sub_267EF6FC8())
    {
      v193 = sub_267EF6FA8();

      v54 = sub_267EF8678();
    }

    else
    {
      v54 = 0;
    }

    a1 = v272;
    sub_267EF6B08();
    sub_267B9AFEC((v275 + 3), &v283);
    v194 = __swift_project_boxed_opaque_existential_0(&v283, v286);
    v195 = sub_267BAF0DC(v43);
    if (!v195)
    {
      goto LABEL_119;
    }

    v193 = v195;
    v277 = v194;
    v282 = MEMORY[0x277D84F90];
    v63 = &v282;
    sub_267C72284(0, v195 & ~(v195 >> 63), 0);
    if ((v193 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_147:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v196 = 0;
  v197 = v282;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v198 = MEMORY[0x26D609870](v196, v43);
    }

    else
    {
      v198 = *(v43 + 8 * v196 + 32);
    }

    v199 = v198;
    sub_267EF97D8();

    v282 = v197;
    v200 = v12;
    v202 = *(v197 + 16);
    v201 = *(v197 + 24);
    if (v202 >= v201 >> 1)
    {
      sub_267C72284(v201 > 1, v202 + 1, 1);
      v197 = v282;
    }

    ++v196;
    *(v197 + 16) = v202 + 1;
    (*(v280 + 32))(v197 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v202, v200, v278);
    v12 = v200;
  }

  while (v193 != v196);
LABEL_119:

  OUTLINED_FUNCTION_22_32();
  v203 = sub_267EF6878();
  if (v193)
  {
    v204 = OUTLINED_FUNCTION_19_42();
    v205(v204);

    __swift_destroy_boxed_opaque_existential_0(&v283);
    v206 = v193;
    v207 = sub_267EF89F8();
    v208 = sub_267EF95E8();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v282 = v193;
      v283 = v210;
      *v209 = 136315138;
      v211 = v193;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v212 = sub_267EF9098();
      v214 = sub_267BA33E8(v212, v213, &v283);

      *(v209 + 4) = v214;
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v215, v216, v217, v218, v219, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v210);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v220 = MEMORY[0x277D84F90];
LABEL_129:
    v229 = v281;
    OUTLINED_FUNCTION_61_12();
  }

  else
  {
    v220 = v203;

    __swift_destroy_boxed_opaque_existential_0(&v283);
    v221 = *(v220 + 16);
    if (v221)
    {
      v283 = MEMORY[0x277D84F90];
      sub_267EF9BF8();
      v280 = *(v253 + 16);
      v222 = *(v253 + 80);
      v278 = v220;
      v223 = v220 + ((v222 + 32) & ~v222);
      v224 = *(v253 + 72);
      v225 = (v253 + 8);
      v226 = v281;
      v227 = v279;
      do
      {
        (v280)(v227, v223, v226);
        sub_267EF6858();
        (*v225)(v227, v226);
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v223 += v224;
        --v221;
      }

      while (v221);
      (*(v254 + 8))(v264, v255);
      v228 = v283;
      v220 = v278;
      if (!v283)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v230 = OUTLINED_FUNCTION_19_42();
      v231(v230);
      v228 = MEMORY[0x277D84F90];
    }

    v232 = sub_267ECEE14(v228);

    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v283 = v232;
    v229 = v281;
  }

  sub_267ECE290();
  sub_267B9F98C(&v283, &qword_28022AEF0, &qword_267EFCDE0);
  v233 = *(v220 + 16);
  if (v233)
  {
    v283 = MEMORY[0x277D84F90];
    sub_267C72264(0, v233, 0);
    v234 = v283;
    v280 = *(v253 + 16);
    v235 = *(v253 + 80);
    v278 = v220;
    v236 = v220 + ((v235 + 32) & ~v235);
    v237 = *(v253 + 72);
    v238 = (v253 + 8);
    do
    {
      v239 = v279;
      (v280)(v279, v236, v229);
      v240 = sub_267EF6828();
      (*v238)(v239, v229);
      v283 = v234;
      v242 = *(v234 + 16);
      v241 = *(v234 + 24);
      if (v242 >= v241 >> 1)
      {
        sub_267C72264((v241 > 1), v242 + 1, 1);
        v234 = v283;
      }

      *(v234 + 16) = v242 + 1;
      *(v234 + 4 * v242 + 32) = v240;
      v236 += v237;
      --v233;
      v229 = v281;
    }

    while (v233);
  }

  else
  {

    v234 = MEMORY[0x277D84F90];
  }

  sub_267C7A414(v234);
}

uint64_t sub_267E83968@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCB8, &qword_267F0D6D8);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  v50 = &v41 - v3;
  sub_267EF51F8();
  OUTLINED_FUNCTION_58();
  v48 = v5;
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v47 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v9;
  v54 = sub_267EF5318();
  v43 = *(v54 - 8);
  v52 = v43;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v53 = sub_267EF5378();
  OUTLINED_FUNCTION_58();
  v14 = v13;
  v42 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = sub_267EF5198();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  v45 = v25;
  v46 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v41 - v30;
  sub_267BC8EDC(0, 0, &v41 - v30);
  sub_267EF5368();
  (*(v24 + 16))(v28, v31, v22);
  sub_267EF5358();
  sub_267EF5308();
  (*(v14 + 16))(v18, v21, v53);
  sub_267EF5298();
  v32 = v44;
  sub_267EF51E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AA8, &qword_267EFEF30);
  v33 = v52;
  OUTLINED_FUNCTION_6_50();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_267EFC020;
  (*(v33 + 16))(v34 + v22, v12, v54);
  sub_267EF51C8();
  v35 = v48;
  v36 = v49;
  (*(v48 + 16))(v47, v32, v49);
  v37 = *MEMORY[0x277D5DA78];
  v38 = sub_267EF5158();
  v39 = v50;
  (*(*(v38 - 8) + 104))(v50, v37, v38);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v38);
  sub_267EF4C58();
  (*(v35 + 8))(v32, v36);
  (*(v52 + 8))(v12, v54);
  (*(v42 + 8))(v21, v53);
  return (*(v46 + 8))(v31, v45);
}

uint64_t sub_267E83E04(uint64_t a1)
{
  v2 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = *(v9 + 16);
  v49 = a1;
  v14(v12, a1, v7);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v4;
    v18 = v17;
    v45 = swift_slowAlloc();
    v52[0] = v45;
    *v18 = 136315138;
    sub_267E865A8(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v19 = sub_267EF9E58();
    v47 = v2;
    v21 = v20;
    (*(v9 + 8))(v12, v7);
    v22 = sub_267BA33E8(v19, v21, v52);
    v2 = v47;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_267B93000, v15, v16, "#UnsendMessagesRCHFlowStrategy received input: %s", v18, 0xCu);
    v23 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26D60A7B0](v23, -1, -1);
    v24 = v18;
    v4 = v46;
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v7);
  }

  v25 = v48;
  sub_267EF4B88();
  v26 = sub_267E57DFC(v25, &v50);
  (*(v4 + 8))(v25, v2, v26);
  if (v51)
  {
    sub_267BE58F4(&v50, v52);
    OUTLINED_FUNCTION_13_1();
    v27 = OUTLINED_FUNCTION_38_0();
    if (v28(v27) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), v29 = OUTLINED_FUNCTION_38_0(), (v30(v29)) || (OUTLINED_FUNCTION_13_1(), v31 = OUTLINED_FUNCTION_38_0(), (v32(v31)))
    {
      sub_267EF3E58();
    }

    else
    {
      v39 = sub_267EF89F8();
      v40 = sub_267EF95D8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v41);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v42, v43, "#UnsendMessagesRCHFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    sub_267B9FF34(&v50, &unk_28022BBF0, &unk_267F01C60);
    v33 = sub_267EF89F8();
    v34 = sub_267EF95C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v35);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v36, v37, "#UnsendMessagesRCHFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267E84268()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

char *sub_267E84294()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#UnsendMessagesRCHFlowStrategy making intent");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 16);

  v8 = [*(v7 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 32)) sentMessages];
  if (v8)
  {
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v9 = sub_267EF92F8();

    v10 = sub_267BAF0DC(v9);
    if (v10)
    {
      v11 = v10;
      v26 = MEMORY[0x277D84F90];
      result = sub_267BC7934(0, v10 & ~(v10 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = 0;
      v8 = v26;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x26D609870](v13, v9);
        }

        else
        {
          v14 = *(v9 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_267EF9028();
        v19 = v18;

        v21 = v26[2];
        v20 = v26[3];
        if (v21 >= v20 >> 1)
        {
          sub_267BC7934((v20 > 1), v21 + 1, 1);
        }

        ++v13;
        v26[2] = v21 + 1;
        v22 = &v26[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
      }

      while (v11 != v13);
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }
  }

  v23 = objc_allocWithZone(MEMORY[0x277CD4290]);
  v24 = sub_267E8653C(v8);
  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_267E84518()
{
  OUTLINED_FUNCTION_12();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[26] = swift_task_alloc();
  v5 = sub_267EF4228();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E84654()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#UnsendMessagesRCHFlowStrategy received error response");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[24];

  v8 = [v7 code];
  if (v8 == 9)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[36] = v9;
    *v9 = v10;
    v9[1] = sub_267E84B20;

    return sub_267EBC480();
  }

  else if (*MEMORY[0x277CD45B0] == v8)
  {
    v12 = [*(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v12)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = sub_267EF92F8();

      v12 = sub_267BAF0DC(v13);

      LOBYTE(v12) = v12 == 1;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[38] = v14;
    *v14 = v15;
    v14[1] = sub_267E84D6C;
    v16 = v0[33];

    return sub_267EBBE4C(v16, v12);
  }

  else if (*MEMORY[0x277CD45C0] == v8)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v17;
    *v17 = v18;
    v17[1] = sub_267E84FBC;

    return sub_267EBC3D0();
  }

  else if (*MEMORY[0x277CD45B8] == v8)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v19;
    *v19 = v20;
    v19[1] = sub_267E8520C;

    return sub_267EBC320();
  }

  else if (v8 == 10)
  {
    type metadata accessor for MessagesApp(0);

    v22 = sub_267EC814C(v21);
    v0[44] = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[45] = v23;
    *v23 = v24;
    v23[1] = sub_267E8545C;
    v25 = v0[30];

    return sub_267EBC0A0(v25, v22);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[25] + 16), *(v0[25] + 40));
    v26 = OUTLINED_FUNCTION_38_0();
    v27(v26);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[47] = v28;
    *v28 = v29;
    v28[1] = sub_267E856B4;
    v30 = v0[29];

    return MEMORY[0x2821BAEE0](v30, v0 + 2);
  }
}

uint64_t sub_267E84B20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E84C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_16();
  v20();
  v21 = OUTLINED_FUNCTION_0_72();
  v22(v21);
  OUTLINED_FUNCTION_1_81();
  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  v25 = *(v19 + 120);
  __swift_project_boxed_opaque_existential_0((v19 + 96), v25);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v26);
  OUTLINED_FUNCTION_3_79();
  v28 = OUTLINED_FUNCTION_28_35(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v28, v29, v30, MEMORY[0x277D84F90]);
  sub_267B9FF34(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v31 = OUTLINED_FUNCTION_7_49();
  v32(v31);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E84D6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E84E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_16();
  v20();
  v21 = OUTLINED_FUNCTION_0_72();
  v22(v21);
  OUTLINED_FUNCTION_1_81();
  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  v25 = *(v19 + 120);
  __swift_project_boxed_opaque_existential_0((v19 + 96), v25);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v26);
  OUTLINED_FUNCTION_3_79();
  v28 = OUTLINED_FUNCTION_28_35(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v28, v29, v30, MEMORY[0x277D84F90]);
  sub_267B9FF34(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v31 = OUTLINED_FUNCTION_7_49();
  v32(v31);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E84FBC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E850B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_16();
  v20();
  v21 = OUTLINED_FUNCTION_0_72();
  v22(v21);
  OUTLINED_FUNCTION_1_81();
  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  v25 = *(v19 + 120);
  __swift_project_boxed_opaque_existential_0((v19 + 96), v25);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v26);
  OUTLINED_FUNCTION_3_79();
  v28 = OUTLINED_FUNCTION_28_35(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v28, v29, v30, MEMORY[0x277D84F90]);
  sub_267B9FF34(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v31 = OUTLINED_FUNCTION_7_49();
  v32(v31);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E8520C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E85308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_16();
  v20();
  v21 = OUTLINED_FUNCTION_0_72();
  v22(v21);
  OUTLINED_FUNCTION_1_81();
  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  v25 = *(v19 + 120);
  __swift_project_boxed_opaque_existential_0((v19 + 96), v25);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v26);
  OUTLINED_FUNCTION_3_79();
  v28 = OUTLINED_FUNCTION_28_35(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v28, v29, v30, MEMORY[0x277D84F90]);
  sub_267B9FF34(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v31 = OUTLINED_FUNCTION_7_49();
  v32(v31);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E8545C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E85560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_16();
  v20();
  v21 = OUTLINED_FUNCTION_0_72();
  v22(v21);
  OUTLINED_FUNCTION_1_81();
  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  v25 = *(v19 + 120);
  __swift_project_boxed_opaque_existential_0((v19 + 96), v25);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v26);
  OUTLINED_FUNCTION_3_79();
  v28 = OUTLINED_FUNCTION_28_35(v27, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v28, v29, v30, MEMORY[0x277D84F90]);
  sub_267B9FF34(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v31 = OUTLINED_FUNCTION_7_49();
  v32(v31);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E856B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 384) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E857C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  (*(v19[28] + 32))(v19[35], v19[29], v19[27]);
  v20 = OUTLINED_FUNCTION_0_72();
  v21(v20);
  OUTLINED_FUNCTION_1_81();
  v22 = OUTLINED_FUNCTION_12_0();
  v23(v22);
  v24 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v24);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v25 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v25);
  OUTLINED_FUNCTION_3_79();
  v27 = OUTLINED_FUNCTION_28_35(v26, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66(v27, v28, v29, MEMORY[0x277D84F90]);
  sub_267B9FF34(v24, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v24, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E85920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E859B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E85A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E85AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E85B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E85C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267E85CB8()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext);

  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_commonTemplateProvider));
}

uint64_t sub_267E85CFC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_commonTemplateProvider));
  return v0;
}

uint64_t sub_267E85D4C()
{
  sub_267E85CFC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesRCHFlowStrategy(uint64_t a1)
{
  result = qword_28022CCD8;
  if (!qword_28022CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E85DF8(uint64_t a1)
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267E85EB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267E84268();
}

uint64_t sub_267E85F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_267E85F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_267E86068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_267E86138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_267E86208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267E862E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267E84518();
}

uint64_t sub_267E8639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

id sub_267E8653C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_267EF92D8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithMessageIdentifiers_];

  return v3;
}

uint64_t sub_267E865A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267E86600(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);

  v6 = sub_267BAF0DC(v5);
  if (!v6)
  {

    return;
  }

  v7 = v6;
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v58 = v5 + 32;
  v59 = v5 & 0xFFFFFFFFFFFFFF8;
  v55 = MEMORY[0x277D84F90];
  v10 = &off_279C2E000;
  v56 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v9)
    {
      v11 = MEMORY[0x26D609870](v8, v5);
    }

    else
    {
      if (v8 >= *(v59 + 16))
      {
        goto LABEL_47;
      }

      v11 = *(v58 + 8 * v8);
    }

    if (__OFADD__(v8++, 1))
    {
      break;
    }

    v61 = v11;
    v13 = [v11 v10[424]];
    v14 = sub_267EF9028();
    v16 = v15;

    v17 = *v2;
    if (!*(*v2 + 16))
    {
      goto LABEL_17;
    }

    v18 = sub_267BA9948();
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    v60 = v14;
    v7 = v5;
    v10 = *(*(v17 + 56) + 8 * v18);
    v20 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v20);
    v2 = *(v5 + 32);

    (v2)(v20, v5);
    v9 = v21;
    if (!v10[2])
    {

LABEL_16:

      OUTLINED_FUNCTION_11_48();
LABEL_17:

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);
      v36 = sub_267EF89F8();
      v37 = sub_267EF95D8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_267B93000, v36, v37, "#MessageRegistry Tried to account for component which doesn't exist or was already accounted for", v38, 2u);
        MEMORY[0x26D60A7B0](v38, -1, -1);
      }

      goto LABEL_22;
    }

    v22 = sub_267BA9948();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }

    v25 = *(v10[7] + v22);

    OUTLINED_FUNCTION_11_48();
    if (v25)
    {
      goto LABEL_17;
    }

    v27 = sub_267E86AEC(v63, v60, v16);
    if (*v26)
    {
      v28 = v26;
      v29 = a1[3];
      v30 = a1[4];
      v54 = v27;
      __swift_project_boxed_opaque_existential_0(a1, v29);
      v31 = (*(v30 + 32))(v29, v30);
      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *v28;
      sub_267E86BC0(1, v31, v33, isUniquelyReferenced_nonNull_native);
      *v28 = v62;
      v9 = v56;

      (v54)(v63, 0);
    }

    else
    {
      (v27)(v63, 0);
    }

    v39 = *v2;
    v10 = &off_279C2E000;
    if (!*(*v2 + 16))
    {
      goto LABEL_48;
    }

    v40 = sub_267BA9948();
    if ((v41 & 1) == 0)
    {
      goto LABEL_49;
    }

    v42 = 0;
    v43 = *(*(v39 + 56) + 8 * v40);
    v44 = 1 << *(v43 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v43 + 64);
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
      v48 = v42;
LABEL_37:
      v49 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      if ((*(*(v43 + 56) + (v49 | (v48 << 6))) & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v48 >= v47)
      {
        break;
      }

      v46 = *(v43 + 64 + 8 * v48);
      ++v42;
      if (v46)
      {
        v42 = v48;
        goto LABEL_37;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v55 = v52;
    }

    v50 = *(v55 + 16);
    if (v50 >= *(v55 + 24) >> 1)
    {
      sub_267BF4EE8();
      v55 = v53;
    }

    *(v55 + 16) = v50 + 1;
    v51 = v55 + 16 * v50;
    *(v51 + 32) = v60;
    *(v51 + 40) = v16;
LABEL_22:
    if (v8 == v7)
    {

      return;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t (*sub_267E86AEC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_267E873DC(v6, a2, a3);
  return sub_267E86B60;
}

void sub_267E86B60(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_267E86BC0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_267BA9948();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD00, &qword_267F0D8A8);
  if ((sub_267EF9C68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_267BA9948();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + v12) = a1 & 1;
  }

  else
  {
    sub_267E8721C(v12, a2, a3, a1 & 1, v16);
  }
}

void sub_267E86D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_1_82(a1, a2, a3);
  OUTLINED_FUNCTION_0_73();
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  if (v8)
  {
    *(*(*v7 + 56) + 8 * v9) = v6;
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v15, v16, v17, v18, v19);
  }
}

void sub_267E86DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_82(a1, a2, a3);
  OUTLINED_FUNCTION_0_73();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD20, &qword_267F0D8D0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_60_2();
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_60_2();
  }
}

void sub_267E86ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_82(a1, a2, a3);
  OUTLINED_FUNCTION_0_73();
  if (v4)
  {
    __break(1u);
LABEL_13:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD28, &qword_267F0D8D8);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_3_80();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_60_2();

    sub_267E87724(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267E87264(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_60_2();
  }
}

void sub_267E86FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD10, &qword_267F0D8C0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_3_80();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    sub_267EF6F88();
    OUTLINED_FUNCTION_60_2();

    __asm { BRAA            X3, X16 }
  }

  sub_267E872C0(v10, a2, a3, a1, *v3);
  OUTLINED_FUNCTION_60_2();
}

void sub_267E8710C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_6_51();
    if (!v11)
    {
      goto LABEL_14;
    }

    v5 = v10;
  }

  v12 = *v3;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0((v12[7] + 32 * v5));
    OUTLINED_FUNCTION_60_2();

    sub_267BA7F4C(v13, v14);
  }

  else
  {
    sub_267E87370(v5, a2, a3, a1, v12);
    OUTLINED_FUNCTION_60_2();
  }
}

unint64_t sub_267E8721C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
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

unint64_t sub_267E87264(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_267E872C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_267EF6F88();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_267E87370(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_267BA7F4C(a4, (a5[7] + 32 * a1));
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

void (*sub_267E873DC(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_267E876F0(v6);
  v6[9] = sub_267E874D4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_267E87474;
}

void sub_267E87474(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_267E874D4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_267BA9948();
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD08, &unk_267F0D8B0);
  if (sub_267EF9C68())
  {
    v15 = sub_267BA9948();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_267E87614;
}

void sub_267E87614(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_267BE6244(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_267CF6F5C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229130, &qword_267F0B830);
    sub_267EF9C88();
  }

  free(v1);
}

uint64_t (*sub_267E876F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_267E87718;
}

uint64_t sub_267E87780(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77_0();
  v157 = v5;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77_0();
  v156 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v158 = v9;
  OUTLINED_FUNCTION_115();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v133 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  v155 = v14;
  OUTLINED_FUNCTION_115();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v133 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v133[0] = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v154 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v153 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v152 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v151 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v150 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v149 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v148 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v147 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  v146 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v145 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v144 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v143 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v142 = v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  v140 = v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v141 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  v139 = v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77_0();
  v138 = v53;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77_0();
  v137 = v55;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_77_0();
  v136 = v57;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_77_0();
  v135 = v59;
  OUTLINED_FUNCTION_115();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = v133 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = v133 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = v133 - v67;
  sub_267BE28D0(a1, &selRef_siteName);
  if (v69)
  {

    sub_267BE28D0(a1, &selRef_siteName);
    if (!v70)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  sub_267E77D14(a1);
  if (v71)
  {
    sub_267EF2B88();

    v72 = sub_267EF2BA8();
    if (__swift_getEnumTagSinglePayload(v68, 1, v72) == 1)
    {
      sub_267BB2D24(v68);
    }

    else
    {
      v73 = sub_267EF2AF8();
      v74 = [v73 _lp_simplifiedDisplayString];

      sub_267EF9028();
      v76 = v75;

      (*(*(v72 - 8) + 8))(v68, v72);
      if (v76)
      {
LABEL_3:
        sub_267EF90F8();
      }
    }
  }

LABEL_8:
  v77 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_68(v65);
  sub_267BE28D0(a1, &selRef_title);
  if (v78)
  {
    sub_267EF90F8();
  }

  v79 = v136;
  v80 = 1;
  v81 = v63;
  OUTLINED_FUNCTION_4_66(v63);
  INMessageLinkMediaType.description.getter([a1 linkMediaType]);
  v82 = v135;
  sub_267EF90F8();

  __swift_storeEnumTagSinglePayload(v82, 0, 1, v77);
  sub_267BE28D0(a1, &selRef_songTitle);
  if (v83)
  {
    sub_267EF90F8();

    v80 = 0;
  }

  __swift_storeEnumTagSinglePayload(v79, v80, 1, v77);
  sub_267BE28D0(a1, &selRef_songArtist);
  if (v84)
  {
    sub_267EF90F8();

    v85 = OUTLINED_FUNCTION_7_51();
    v86 = v13;
  }

  else
  {
    v86 = v13;
    v85 = v137;
  }

  OUTLINED_FUNCTION_0_74(v85);
  sub_267BE28D0(a1, &selRef_albumName);
  v87 = v133[0];
  if (v88)
  {
    sub_267EF90F8();

    v89 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v89 = v138;
  }

  OUTLINED_FUNCTION_1_83(v89);
  sub_267BE28D0(a1, &selRef_albumArtist);
  if (v90)
  {
    sub_267EF90F8();

    v91 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v91 = v139;
  }

  OUTLINED_FUNCTION_0_74(v91);
  sub_267BE28D0(a1, &selRef_musicVideoName);
  if (v92)
  {
    sub_267EF90F8();

    v93 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v93 = v141;
  }

  OUTLINED_FUNCTION_1_83(v93);
  sub_267BE28D0(a1, &selRef_musicVideoArtist);
  if (v94)
  {
    sub_267EF90F8();

    v95 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v95 = v140;
  }

  OUTLINED_FUNCTION_0_74(v95);
  sub_267BE28D0(a1, &selRef_artistName);
  if (v96)
  {
    sub_267EF90F8();

    v97 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v97 = v142;
  }

  OUTLINED_FUNCTION_1_83(v97);
  sub_267BE28D0(a1, &selRef_playlistName);
  if (v98)
  {
    sub_267EF90F8();

    v99 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v99 = v143;
  }

  OUTLINED_FUNCTION_0_74(v99);
  sub_267BE28D0(a1, &selRef_playlistCurator);
  if (v100)
  {
    sub_267EF90F8();

    v101 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v101 = v144;
  }

  OUTLINED_FUNCTION_1_83(v101);
  sub_267BE28D0(a1, &selRef_radioName);
  if (v102)
  {
    sub_267EF90F8();

    v103 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v103 = v145;
  }

  OUTLINED_FUNCTION_0_74(v103);
  sub_267BE28D0(a1, &selRef_radioCurator);
  if (v104)
  {
    sub_267EF90F8();

    v105 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v105 = v146;
  }

  OUTLINED_FUNCTION_1_83(v105);
  sub_267BE28D0(a1, &selRef_softwareName);
  if (v106)
  {
    sub_267EF90F8();

    v107 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v107 = v147;
  }

  OUTLINED_FUNCTION_0_74(v107);
  sub_267BE28D0(a1, &selRef_bookName);
  if (v108)
  {
    sub_267EF90F8();

    v109 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v109 = v148;
  }

  OUTLINED_FUNCTION_1_83(v109);
  sub_267BE28D0(a1, &selRef_bookAuthor);
  if (v110)
  {
    sub_267EF90F8();

    v111 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v111 = v149;
  }

  OUTLINED_FUNCTION_0_74(v111);
  sub_267BE28D0(a1, &selRef_audioBookName);
  if (v112)
  {
    sub_267EF90F8();

    v113 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v113 = v150;
  }

  OUTLINED_FUNCTION_1_83(v113);
  sub_267BE28D0(a1, &selRef_audioBookAuthor);
  if (v114)
  {
    sub_267EF90F8();

    v115 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v115 = v151;
  }

  OUTLINED_FUNCTION_0_74(v115);
  sub_267BE28D0(a1, &selRef_podcastName);
  if (v116)
  {
    sub_267EF90F8();

    v117 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v117 = v152;
  }

  OUTLINED_FUNCTION_1_83(v117);
  sub_267BE28D0(a1, &selRef_podcastArtist);
  if (v118)
  {
    sub_267EF90F8();

    v119 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v119 = v153;
  }

  OUTLINED_FUNCTION_0_74(v119);
  sub_267BE28D0(a1, &selRef_podcastEpisodeName);
  if (v120)
  {
    sub_267EF90F8();

    v121 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v121 = v154;
  }

  OUTLINED_FUNCTION_1_83(v121);
  sub_267BE28D0(a1, &selRef_podcastEpisodePodcastName);
  if (v122)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v87);
  sub_267BE28D0(a1, &selRef_tvEpisodeEpisodeName);
  if (v123)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v18);
  sub_267BE28D0(a1, &selRef_tvEpisodeSeasonName);
  if (v124)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v155);
  sub_267BE28D0(a1, &selRef_tvSeasonName);
  if (v125)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v86);
  sub_267BE28D0(a1, &selRef_movieName);
  if (v126)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v158);
  sub_267BE28D0(a1, &selRef_tvShowName);
  if (v127)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v156);
  sub_267BE28D0(a1, &selRef_movieBundleName);
  if (v128)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v157);
  sub_267BE28D0(a1, &selRef_appleTvTitle);
  if (v129)
  {
    sub_267EF90F8();
  }

  v130 = v134;
  OUTLINED_FUNCTION_5_68(v134);
  v131 = sub_267C87668(v65, v81, v135, v136, v137, v138, v139, v141, v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v87, v18, v155, v86, v158, v156, v157, v130);

  return v131;
}

uint64_t sub_267E884B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_267EF4D38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
}

uint64_t sub_267E88670(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  while (v5)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (!v3)
    {
      --v5;
      if ((v9 & 1) == 0)
      {
        continue;
      }
    }

    return v7;
  }

  return 8;
}

uint64_t sub_267E886DC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4, a1);
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  OUTLINED_FUNCTION_43();
  v2 = sub_267EF5018();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_267E88754()
{
  OUTLINED_FUNCTION_18_37();
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000002FLL, 0x8000000267F1C960);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v1 = sub_267EF5018();
  MEMORY[0x26D608E60](v1);

  OUTLINED_FUNCTION_23_29();
  return v3;
}

void sub_267E887F0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_267EF4D18();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = (v10 - v9);
  sub_267E5A3C8();
  v12 = sub_267EF97F8();
  (*(v7 + 16))(v11, a1, v5);
  v13 = (*(v7 + 88))(v11, v5);
  if (v13 == *MEMORY[0x277D60170])
  {
    v14 = OUTLINED_FUNCTION_3_81();
    v15(v14);
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_3:
    v17 = v16;

LABEL_7:
    v12 = v17;
    goto LABEL_8;
  }

  if (v13 == *MEMORY[0x277D60188])
  {
    v18 = OUTLINED_FUNCTION_3_81();
    v19(v18);
    v20 = sub_267E88CB0(*v11);
LABEL_6:
    v17 = v20;

    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x277D60180])
  {
    v32 = OUTLINED_FUNCTION_3_81();
    v33(v32);
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    goto LABEL_3;
  }

  if (v13 == *MEMORY[0x277D60178])
  {
    v34 = OUTLINED_FUNCTION_3_81();
    v35(v34);
    v20 = sub_267E88EB8(*v11);
    goto LABEL_6;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v36 = sub_267EF8A08();
  __swift_project_value_buffer(v36, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v37 = sub_267EF89F8();
  v38 = sub_267EF95E8();

  if (os_log_type_enabled(v37, v38))
  {
    v42 = swift_slowAlloc();
    v43 = OUTLINED_FUNCTION_52();
    v44 = v43;
    *v42 = 136315138;
    __swift_project_boxed_opaque_existential_0((v3 + 16), *(v3 + 40));
    v39 = sub_267EF5018();
    v41 = sub_267BA33E8(v39, v40, &v44);

    *(v42 + 4) = v41;
    _os_log_impl(&dword_267B93000, v37, v38, "#AppSelectionSignalCollection signal=[%s]: unknown SignalValue type", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  (*(v7 + 8))(v11, v5);
LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v22 = v12;
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_52();
    v44 = v27;
    *v25 = 136315394;
    __swift_project_boxed_opaque_existential_0((v3 + 16), *(v3 + 40));
    v28 = sub_267EF5018();
    v30 = sub_267BA33E8(v28, v29, &v44);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v22;
    v31 = v22;
    _os_log_impl(&dword_267B93000, v23, v24, "#AppSelectionSignalCollection signal=[%s]: value=[%@]", v25, 0x16u);
    sub_267B9F98C(v26, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  (*(v3 + 56))(v22);
}

id sub_267E88CB0(uint64_t a1)
{
  v2 = sub_267C8F66C(a1);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
      v9 = sub_267EF5018();
      v11 = sub_267BA33E8(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_267BA33E8(7630409, 0xE300000000000000, &v15);
      _os_log_impl(&dword_267B93000, v5, v6, "#AppSelectionSignalCollection signal=[%s]: unexpected value of %s, set to -1", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v8, -1, -1);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267E5A3C8();
    return sub_267EF97F8();
  }

  else
  {
    v13 = v2;
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v14 initWithInteger_];
  }
}

id sub_267E88EB8(uint64_t a1)
{
  v2 = sub_267C8F5FC(a1);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
      v9 = sub_267EF5018();
      v11 = sub_267BA33E8(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_267BA33E8(0x656C62756F44, 0xE600000000000000, &v15);
      _os_log_impl(&dword_267B93000, v5, v6, "#AppSelectionSignalCollection signal=[%s]: unexpected value of %s, set to -1", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v8, -1, -1);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267E5A3C8();
    return sub_267EF97F8();
  }

  else
  {
    v13 = *&v2;
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v14 initWithDouble_];
  }
}

uint64_t sub_267E890D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_267E8918C()
{
  OUTLINED_FUNCTION_18_37();
  sub_267EF9B68();

  __swift_project_boxed_opaque_existential_0((v0 + 32), *(v0 + 56));
  v1 = sub_267EF5018();
  MEMORY[0x26D608E60](v1);

  OUTLINED_FUNCTION_23_29();
  return 0xD00000000000002DLL;
}

void sub_267E89224()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF4D18();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v63 - v12);
  v14 = *(v6 + 16);
  v14(&v63 - v12, v3, v4);
  v15 = OUTLINED_FUNCTION_46_2();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D60170])
  {
    v18 = OUTLINED_FUNCTION_46_2();
    v19(v18);
    v20 = v1[2];
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *v13;
      v23 = (v20 + 40);
      v24 = v1[9];
      do
      {
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v28 = [v27 initWithInteger_];
        v24(v25, v26, v28);

        v23 += 2;
        --v21;
      }

      while (v21);
    }

    goto LABEL_20;
  }

  if (v17 == *MEMORY[0x277D60188])
  {
    v29 = OUTLINED_FUNCTION_46_2();
    v30(v29);
    sub_267E8970C(*v13);
LABEL_10:

    goto LABEL_20;
  }

  if (v17 == *MEMORY[0x277D60178])
  {
    v31 = OUTLINED_FUNCTION_46_2();
    v32(v31);
    sub_267E89BE0(*v13);
    goto LABEL_10;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v33 = sub_267EF8A08();
  __swift_project_value_buffer(v33, qword_280240FB0);
  v14(v10, v3, v4);

  v34 = sub_267EF89F8();
  v35 = sub_267EF95E8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68 = v66;
    *v36 = 136315906;
    __swift_project_boxed_opaque_existential_0(v1 + 4, v1[7]);
    v65 = v35;
    v37 = sub_267EF5018();
    v39 = sub_267BA33E8(v37, v38, &v68);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    sub_267E8D674(&qword_28022CD78, 255, MEMORY[0x277D60190], MEMORY[0x277D60198]);
    v40 = sub_267EF9E58();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_11_49();
    v44(v43);
    v45 = sub_267BA33E8(v40, v42, &v68);

    *(v36 + 14) = v45;
    *(v36 + 22) = 2112;
    v47 = v1[2];
    v46 = v1[3];
    *(v36 + 24) = v46;
    v48 = v64;
    *v64 = v46;
    *(v36 + 32) = 2080;
    v49 = v46;
    v50 = MEMORY[0x26D608FD0](v47, MEMORY[0x277D837D0]);
    v52 = sub_267BA33E8(v50, v51, &v68);

    *(v36 + 34) = v52;
    _os_log_impl(&dword_267B93000, v34, v65, "#AppSelectionSignalCollection signal=[%s]: unexpected signalValue=[%s], set to defaultSignalValue=[%@] for apps=[%s]", v36, 0x2Au);
    sub_267B9F98C(v48, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v53 = OUTLINED_FUNCTION_11_49();
    v54(v53);
  }

  v55 = v1[2];
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v1[9];
    v58 = (v55 + 40);
    v59 = v1[3];
    do
    {
      v60 = *(v58 - 1);
      v61 = *v58;

      v57(v60, v61, v59);

      v58 += 2;
      --v56;
    }

    while (v56);
  }

  v62 = OUTLINED_FUNCTION_46_2();
  v67(v62);
LABEL_20:
  OUTLINED_FUNCTION_47();
}

void sub_267E8970C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (v2 + 40);
    v36 = v40[3];
    v35 = v40[9];
    do
    {
      v38 = v5;
      v39 = v3;
      v7 = *(v5 - 1);
      v6 = *v5;
      v42 = v36;
      v8 = *(v4 + 16);

      v9 = v36;
      if (v8 && (v10 = sub_267BA9948(), (v11 & 1) != 0))
      {
        v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        swift_beginAccess();
        v42 = v12;

        v9 = v12;
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v13 = sub_267EF8A08();
        __swift_project_value_buffer(v13, qword_280240FB0);

        v14 = sub_267EF89F8();
        v15 = sub_267EF95D8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v41 = v17;
          *v16 = 136315394;
          __swift_project_boxed_opaque_existential_0(v40 + 4, v40[7]);
          v18 = sub_267EF5018();
          v20 = sub_267BA33E8(v18, v19, &v41);

          *(v16 + 4) = v20;
          *(v16 + 12) = 2080;
          *(v16 + 14) = sub_267BA33E8(v7, v6, &v41);
          _os_log_impl(&dword_267B93000, v14, v15, "#AppSelectionSignalCollection signal=[%s]: no signal value for app=[%s]", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v17, -1, -1);
          v21 = v16;
          v4 = a1;
          MEMORY[0x26D60A7B0](v21, -1, -1);
        }
      }

      v22 = v9;
      v37 = v7;
      v35(v7, v6, v22);

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v23 = sub_267EF8A08();
      __swift_project_value_buffer(v23, qword_280240FB0);

      v24 = sub_267EF89F8();
      v25 = sub_267EF95D8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41 = v28;
        *v26 = 136315906;
        __swift_project_boxed_opaque_existential_0(v40 + 4, v40[7]);
        v4 = a1;
        v29 = sub_267EF5018();
        v31 = sub_267BA33E8(v29, v30, &v41);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2112;
        *(v26 + 14) = v22;
        *v27 = v22;
        *(v26 + 22) = 2080;
        v32 = v22;
        *(v26 + 24) = sub_267BA33E8(7630409, 0xE300000000000000, &v41);
        *(v26 + 32) = 2080;
        v33 = sub_267BA33E8(v37, v6, &v41);

        *(v26 + 34) = v33;
        _os_log_impl(&dword_267B93000, v24, v25, "#AppSelectionSignalCollection signal=[%s]: instrumented value=[%@] of type=[%s] for app=[%s]", v26, 0x2Au);
        sub_267B9F98C(v27, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v27, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v28, -1, -1);
        MEMORY[0x26D60A7B0](v26, -1, -1);
      }

      else
      {
      }

      v5 = v38 + 2;
      v3 = v39 - 1;
    }

    while (v39 != 1);
  }
}

void sub_267E89BE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (v2 + 40);
    v37 = v41[9];
    v38 = v41[3];
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v43[0] = v38;
      v8 = *(v4 + 16);

      v9 = v38;
      if (v8 && (v10 = sub_267BA9948(), (v11 & 1) != 0))
      {
        v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        swift_beginAccess();
        v43[0] = v12;

        v9 = v12;
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v13 = sub_267EF8A08();
        __swift_project_value_buffer(v13, qword_280240FB0);

        v14 = sub_267EF89F8();
        v15 = sub_267EF95D8();

        if (os_log_type_enabled(v14, v15))
        {
          v39 = v9;
          v16 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v42 = v35;
          *v16 = 136315394;
          __swift_project_boxed_opaque_existential_0(v41 + 4, v41[7]);
          v17 = sub_267EF5018();
          v19 = sub_267BA33E8(v17, v18, &v42);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2080;
          *(v16 + 14) = sub_267BA33E8(v6, v7, &v42);
          _os_log_impl(&dword_267B93000, v14, v15, "#AppSelectionSignalCollection signal=[%s]: no signal value for app=[%s]", v16, 0x16u);
          swift_arrayDestroy();
          v4 = a1;
          MEMORY[0x26D60A7B0](v35, -1, -1);
          v20 = v16;
          v9 = v39;
          MEMORY[0x26D60A7B0](v20, -1, -1);
        }
      }

      v21 = v9;
      v40 = v6;
      v37(v6, v7, v21);

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v22 = sub_267EF8A08();
      __swift_project_value_buffer(v22, qword_280240FB0);

      v23 = sub_267EF89F8();
      v24 = sub_267EF95D8();

      if (os_log_type_enabled(v23, v24))
      {
        v36 = v3;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v25 = 136315906;
        __swift_project_boxed_opaque_existential_0(v41 + 4, v41[7]);
        v4 = a1;
        v27 = sub_267EF5018();
        v29 = sub_267BA33E8(v27, v28, &v42);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v21;
        *v26 = v21;
        *(v25 + 22) = 2080;
        v30 = v21;
        *(v25 + 24) = sub_267BA33E8(0x656C62756F44, 0xE600000000000000, &v42);
        *(v25 + 32) = 2080;
        v31 = sub_267BA33E8(v40, v7, &v42);

        *(v25 + 34) = v31;
        _os_log_impl(&dword_267B93000, v23, v24, "#AppSelectionSignalCollection signal=[%s]: instrumented value=[%@] of type=[%s] for app=[%s]", v25, 0x2Au);
        sub_267B9F98C(v26, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v26, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v34, -1, -1);
        v32 = v25;
        v3 = v36;
        MEMORY[0x26D60A7B0](v32, -1, -1);
      }

      else
      {
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_267E8A0E0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t sub_267E8A118()
{
  sub_267E8A0E0();

  return swift_deallocClassInstance();
}

uint64_t sub_267E8A1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x26D604AA0]();
  v8 = sub_267DA893C(v7);

  sub_267E8CF7C(v8, v4, a3, a4);
}

void sub_267E8A24C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD70, &qword_267F0DA90);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v69 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v68 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v67 = v13;
  OUTLINED_FUNCTION_115();
  v15 = MEMORY[0x28223BE20](v14);
  v23 = OUTLINED_FUNCTION_15_44(v15, v16, v17, v18, v19, v20, v21, v22, v58);
  OUTLINED_FUNCTION_58();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v29 = v28 - v27;
  v30 = *(v3 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v59 = v1;
    v76[0] = MEMORY[0x277D84F90];
    v62 = v30;
    sub_267C727BC(0, v30, 0);
    v31 = v76[0];
    v33 = sub_267BA7F44();
    v34 = 0;
    v74 = v3 + 64;
    v65 = v7;
    v61 = v32;
    v60 = v3 + 72;
    v64 = v25;
    v63 = v3;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v3 + 32))
    {
      v35 = v33 >> 6;
      if ((*(v74 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v32)
      {
        goto LABEL_25;
      }

      v72 = v32;
      v71 = v34;
      v73 = *(v25 + 72);
      (*(v25 + 16))(v66, *(v3 + 48) + v73 * v33, v23);
      v36 = *(v25 + 32);
      v75 = *(*(v3 + 56) + 16 * v33);
      v36(v67, v66, v23);
      *(v67 + *(v70 + 48)) = v75;
      sub_267E8D614(v67, v68, &qword_28022CD70, &qword_267F0DA90);
      v37 = *(v70 + 48);
      v36(v69, v68, v23);
      v38 = (v69 + *(v70 + 48));
      v39 = swift_allocObject();
      *(v39 + 16) = *(v68 + v37);
      *v38 = sub_267E8D5DC;
      v38[1] = v39;
      sub_267E8D614(v69, v65, &qword_28022CD70, &qword_267F0DA90);

      v36(v29, v65, v23);
      v76[0] = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        v55 = OUTLINED_FUNCTION_10_46(v40);
        sub_267C727BC(v55, v41 + 1, 1);
        v31 = v76[0];
      }

      *(v31 + 16) = v41 + 1;
      v25 = v64;
      v36(v31 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v41 * v73, v29, v23);
      v3 = v63;
      v42 = 1 << *(v63 + 32);
      if (v33 >= v42)
      {
        goto LABEL_26;
      }

      v43 = *(v74 + 8 * v35);
      if ((v43 & (1 << v33)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v63 + 36) != v72)
      {
        goto LABEL_28;
      }

      v44 = v43 & (-2 << (v33 & 0x3F));
      if (v44)
      {
        v42 = __clz(__rbit64(v44)) | v33 & 0x7FFFFFFFFFFFFFC0;
        v45 = v71;
      }

      else
      {
        v46 = v35 << 6;
        v47 = v35 + 1;
        v48 = (v60 + 8 * v35);
        while (v47 < (v42 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            OUTLINED_FUNCTION_17_31();
            sub_267C96654(v33, v51, v52);
            v42 = __clz(__rbit64(v49)) + v46;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_17_31();
        sub_267C96654(v33, v53, v54);
LABEL_19:
        v45 = v71;
      }

      v34 = v45 + 1;
      v33 = v42;
      v32 = v61;
      if (v34 == v62)
      {
        v1 = v59;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_267E8BEDC(0, v31, v76);

    swift_bridgeObjectRetain_n();
    v56 = sub_267EF4DC8();
    v57 = sub_267DA893C(v56);

    sub_267E8BFC0(v57, v1, v3);

    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_47();
  }
}

double sub_267E8A804@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_267EF4D38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E8ABE0(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267B9F98C(v8, &qword_28022CD60, &unk_267F0DA80);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_267C8EF34(v12, a2);
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      sub_267B9AFEC(a1, &v32);
      v18 = type metadata accessor for AppIndependentSignalInstrumentation();
      v19 = swift_allocObject();
      sub_267B9A5E8(&v32, v19 + 16);
      *(v19 + 56) = sub_267E8D858;
      *(v19 + 64) = v17;
      *(a3 + 24) = v18;
      *(a3 + 32) = sub_267E8D674(&qword_28022CD48, v20, type metadata accessor for AppIndependentSignalInstrumentation, &unk_267F0DA54);
      *a3 = v19;
      (*(v10 + 8))(v12, v9);
      return result;
    }

    (*(v10 + 8))(v12, v9);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  sub_267B9AFEC(a1, &v32);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    __swift_project_boxed_opaque_existential_0(&v32, v33);
    v27 = sub_267EF5018();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0(&v32);
    v30 = sub_267BA33E8(v27, v29, &v31);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_267B93000, v23, v24, "#SignalInstrumentation - No instrumentation for gathered signal %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26D60A7B0](v26, -1, -1);
    MEMORY[0x26D60A7B0](v25, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_267E8ABE0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B08, &qword_267F0F240);
  v2 = sub_267EF4D38();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_267F016D0;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  (v10)(v9, *MEMORY[0x277D601C8], v2);
  (v10)(v9 + v6, *MEMORY[0x277D601A0], v2);
  (v10)(v9 + 2 * v6, *MEMORY[0x277D601D8], v2);
  v11 = OUTLINED_FUNCTION_16_39(3 * v6);
  v10(v11);
  (v10)(v9 + 4 * v6, *MEMORY[0x277D601B8], v2);
  v12 = OUTLINED_FUNCTION_16_39(5 * v6);
  v10(v12);
  (v10)(v9 + 6 * v6, *MEMORY[0x277D601F0], v2);
  v13 = OUTLINED_FUNCTION_16_39(7 * v6);
  v10(v13);
  (v10)(v9 + 8 * v6, *MEMORY[0x277D60208], v2);
  v14 = OUTLINED_FUNCTION_16_39(9 * v6);
  v10(v14);
  (v10)(v9 + 10 * v6, *MEMORY[0x277D601E8], v2);
  (v10)(v9 + 11 * v6, *MEMORY[0x277D601A8], v2);
  (v10)(v9 + 12 * v6, *MEMORY[0x277D601F8], v2);
  (v10)(v9 + 13 * v6, *MEMORY[0x277D60210], v2);
  sub_267E884B4(sub_267E8D534, v8, a1);
  swift_setDeallocating();
  return sub_267DB70FC();
}

void sub_267E8AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21_34();
  a35 = v37;
  a36 = v38;
  v39 = v36;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_267E8BEDC(0, 0, &a20);
  if (sub_267EF4E78() == v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A78, &qword_267EFEEF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    __swift_project_boxed_opaque_existential_0((v36 + 16), *(v36 + 40));
    sub_267EF06C4(&a20, (inited + 32));

    v55 = v45;

    sub_267E8C138(inited, v39, v47, v55, v43, v41);
    swift_setDeallocating();
    sub_267DB717C();
  }

  else if (dynamic_cast_existential_1_conditional(v49, v49, MEMORY[0x277D60250]))
  {
    OUTLINED_FUNCTION_27_34();
    v50 = v45;
    swift_retain_n();
    v51 = v50;
    v52 = sub_267EF4DC8();
    v53 = sub_267DA893C(v52);

    sub_267E8C138(v53, v39, v47, v51, v43, v41);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v56 = sub_267EF8A08();
    __swift_project_value_buffer(v56, qword_280240FB0);
    v57 = sub_267EF89F8();
    v58 = sub_267EF95E8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_52();
      a19 = v60;
      *v59 = 136315138;
      sub_267EF5008();
      v61 = sub_267EF9B78();
      v63 = sub_267BA33E8(v61, v62, &a19);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_267B93000, v57, v58, "#SignalInstrumentation - unsupported app independent signal: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&a20);
  OUTLINED_FUNCTION_22_34();
}

uint64_t sub_267E8B170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_267E8BEDC(a4, 0, v27);
  if (dynamic_cast_existential_1_conditional(a1, a1, MEMORY[0x277D60250]))
  {
    OUTLINED_FUNCTION_27_34();
    v14 = a5;
    swift_retain_n();
    v15 = v14;
    v16 = sub_267EF4DC8();
    sub_267DA893C(v16);
    OUTLINED_FUNCTION_12_46();

    sub_267E8C138(a1, v8, a3, v15, a6, a7);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_52();
      v26 = v21;
      *v20 = 136315138;
      OUTLINED_FUNCTION_46_2();
      sub_267EF5008();
      v22 = sub_267EF9B78();
      v24 = sub_267BA33E8(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_267B93000, v18, v19, "#SignalInstrumentation - unsupported app independent signal: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

void sub_267E8B378()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD70, &qword_267F0DA90);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v82 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v81 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v80 = v21;
  OUTLINED_FUNCTION_115();
  v23 = MEMORY[0x28223BE20](v22);
  v87 = OUTLINED_FUNCTION_15_44(v23, v24, v25, v26, v27, v28, v29, v30, v67);
  OUTLINED_FUNCTION_58();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_0();
  v78 = v35 - v34;
  v36 = *(v3 + 16);
  if (v36)
  {
    v68 = v5;
    v69 = v11;
    v70 = v9;
    v90[0] = MEMORY[0x277D84F90];
    v73 = v36;
    sub_267C727BC(0, v36, 0);
    v38 = sub_267BA7F44();
    v39 = 0;
    v40 = v3 + 64;
    v77 = v15;
    v76 = v15 + 8;
    v72 = v37;
    v71 = v3 + 72;
    v41 = v87;
    v74 = v3 + 64;
    v75 = v32;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v3 + 32))
    {
      v42 = v38 >> 6;
      if ((*(v40 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v37)
      {
        goto LABEL_26;
      }

      v84 = v39;
      v85 = v37;
      v86 = *(v32 + 72);
      (*(v32 + 16))(v79, *(v3 + 48) + v86 * v38, v41);
      v43 = *(v32 + 32);
      v89 = *(*(v3 + 56) + 16 * v38);
      v43(v80, v79, v41);
      *(v80 + *(v83 + 48)) = v89;
      sub_267E8D614(v80, v81, &qword_28022CD70, &qword_267F0DA90);
      v44 = *(v83 + 48);
      v43(v82, v81, v87);
      v45 = v3;
      v46 = (v82 + *(v83 + 48));
      v47 = swift_allocObject();
      *(v47 + 16) = *(v81 + v44);
      *v46 = sub_267E8D85C;
      v46[1] = v47;
      v41 = v87;
      sub_267E8D614(v82, v77, &qword_28022CD70, &qword_267F0DA90);
      v48 = *(v76 + *(v83 + 48));

      v43(v78, v77, v87);
      OUTLINED_FUNCTION_19_43();
      if (v51)
      {
        v64 = OUTLINED_FUNCTION_10_46(v49);
        sub_267C727BC(v64, v48, 1);
        v50 = v90[0];
      }

      *(v50 + 16) = v48;
      v32 = v75;
      v88 = v50;
      v43(v50 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v77 * v86, v78, v87);
      v52 = 1 << *(v45 + 32);
      if (v38 >= v52)
      {
        goto LABEL_27;
      }

      v3 = v45;
      v40 = v74;
      v53 = *(v74 + 8 * v42);
      if ((v53 & (1 << v38)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v85)
      {
        goto LABEL_29;
      }

      v54 = v53 & (-2 << (v38 & 0x3F));
      if (v54)
      {
        v52 = __clz(__rbit64(v54)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = v42 << 6;
        v56 = v42 + 1;
        v57 = (v71 + 8 * v42);
        while (v56 < (v52 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            OUTLINED_FUNCTION_17_31();
            sub_267C96654(v38, v60, v61);
            v52 = __clz(__rbit64(v58)) + v55;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_17_31();
        sub_267C96654(v38, v62, v63);
LABEL_19:
        v32 = v75;
      }

      v39 = v84 + 1;
      v38 = v52;
      v37 = v72;
      if (v84 + 1 == v73)
      {
        v9 = v70;
        v1 = v0;
        v11 = v69;
        v5 = v68;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
LABEL_23:
    sub_267E8BEDC(v7, v88, v90);

    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_27_34();
    v65 = v5;
    v66 = OUTLINED_FUNCTION_13_47();
    sub_267DA893C(v66);
    OUTLINED_FUNCTION_12_46();

    sub_267E8C31C(v11, v1, v3, v9, v5);

    __swift_destroy_boxed_opaque_existential_0(v90);
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E8B974()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD58, &qword_267F0DA78);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v84 = v15 - v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v83 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  v82 = &v67 - v20;
  v81 = sub_267EF4D38();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v25 = (v24 - v23);
  v26 = *(v3 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v79 = v25;
    v67 = v7;
    v68 = v5;
    v69 = v13;
    v70 = v11;
    v71 = v1;
    v72 = v9;
    v91[0] = MEMORY[0x277D84F90];
    v28 = v22;
    sub_267C727BC(0, v26, 0);
    v29 = v28;
    v90 = v91[0];
    v32 = sub_267BA7F44();
    v33 = 0;
    v34 = v3 + 64;
    v78 = v28 + 16;
    v80 = v28 + 32;
    v73 = v3 + 72;
    v74 = v26;
    v75 = v3 + 64;
    v76 = v3;
    v77 = v28;
    if ((v32 & 0x8000000000000000) == 0)
    {
      while (v32 < 1 << *(v3 + 32))
      {
        v35 = v32 >> 6;
        if ((*(v34 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v3 + 36) != v30)
        {
          goto LABEL_25;
        }

        v86 = v31;
        v87 = v33;
        v88 = v30;
        v36 = *(v3 + 48);
        v89 = *(v29 + 72);
        v37 = v36 + v89 * v32;
        v38 = *(v29 + 16);
        v39 = v82;
        v40 = v29;
        v41 = v81;
        v38(v82, v37, v81);
        v42 = *(*(v3 + 56) + 8 * v32);
        v43 = *(v40 + 32);
        v44 = v83;
        v43(v83, v39, v41);
        v45 = v84;
        v46 = v85;
        *(v44 + *(v85 + 48)) = v42;
        sub_267E8D614(v44, v45, &qword_28022CD58, &qword_267F0DA78);
        v47 = *(v45 + *(v46 + 48));

        v48 = v79;
        v49 = v45;
        v50 = v41;
        v43(v79, v49, v41);
        OUTLINED_FUNCTION_19_43();
        if (v53)
        {
          v64 = OUTLINED_FUNCTION_10_46(v51);
          sub_267C727BC(v64, v42, 1);
          v52 = v91[0];
        }

        *(v52 + 16) = v42;
        v29 = v77;
        v54 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v90 = v52;
        v43(v52 + v54 + v47 * v89, v48, v50);
        v3 = v76;
        v55 = 1 << *(v76 + 32);
        if (v32 >= v55)
        {
          goto LABEL_26;
        }

        v34 = v75;
        v56 = *(v75 + 8 * v35);
        if ((v56 & (1 << v32)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v76 + 36) != v88)
        {
          goto LABEL_28;
        }

        v57 = v56 & (-2 << (v32 & 0x3F));
        if (v57)
        {
          v55 = __clz(__rbit64(v57)) | v32 & 0x7FFFFFFFFFFFFFC0;
          v58 = v74;
        }

        else
        {
          v59 = v35 << 6;
          v60 = v35 + 1;
          v61 = (v73 + 8 * v35);
          v58 = v74;
          while (v60 < (v55 + 63) >> 6)
          {
            v63 = *v61++;
            v62 = v63;
            v59 += 64;
            ++v60;
            if (v63)
            {
              sub_267C96654(v32, v88, v86 & 1);
              v55 = __clz(__rbit64(v62)) + v59;
              goto LABEL_18;
            }
          }

          sub_267C96654(v32, v88, v86 & 1);
        }

LABEL_18:
        v33 = v87 + 1;
        if (v87 + 1 == v58)
        {
          v9 = v72;
          v1 = v71;
          v11 = v70;
          v5 = v68;
          v7 = v67;
          v27 = v90;
          goto LABEL_22;
        }

        v31 = 0;
        v30 = *(v3 + 36);
        v32 = v55;
        if (v55 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_267E8BEDC(v7, v27, v91);

    OUTLINED_FUNCTION_27_34();
    swift_bridgeObjectRetain_n();
    v65 = v5;
    v66 = OUTLINED_FUNCTION_13_47();
    sub_267DA893C(v66);
    OUTLINED_FUNCTION_12_46();

    sub_267E8C914(v11, v1, v3, v9, v5);

    __swift_destroy_boxed_opaque_existential_0(v91);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E8BE88(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_267E88670(sub_267E8D510, v3, &unk_2878CDF18);
}

uint64_t sub_267E8BEDC@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_267EF50A8();
  swift_allocObject();
  sub_267EF5098();
  sub_267EF5078();

  if (a3)
  {
    sub_267EF5058();
    OUTLINED_FUNCTION_12_46();
  }

  if (a2)
  {
    v7 = a2;
    sub_267EF5068();
    OUTLINED_FUNCTION_12_46();
  }

  v8 = sub_267EF50B8();
  v9 = MEMORY[0x277D603C0];
  a4[3] = v8;
  a4[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_267EF5088();
}

uint64_t sub_267E8BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 32;
    do
    {
      sub_267B9AFEC(v6, v14);
      sub_267E8A804(v14, a3, &v11);
      __swift_destroy_boxed_opaque_existential_0(v14);
      if (v12)
      {
        sub_267B9A5E8(&v11, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C71E88();
          v5 = v8;
        }

        v7 = *(v5 + 16);
        if (v7 >= *(v5 + 24) >> 1)
        {
          sub_267C71E88();
          v5 = v9;
        }

        *(v5 + 16) = v7 + 1;
        sub_267B9A5E8(v13, v5 + 40 * v7 + 32);
      }

      else
      {
        sub_267B9F98C(&v11, &qword_28022CD50, &qword_267F0DA70);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_267C9BC2C(v5);
  swift_endAccess();
}

uint64_t sub_267E8C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v44 = a4;
  v52 = a3;
  v42[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - v7;
  v53 = sub_267EF4D38();
  MEMORY[0x28223BE20](v53);
  v12 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    v49 = (v9 + 32);
    v15 = MEMORY[0x277D84F90];
    v48 = (v9 + 8);
    *&v11 = 136315138;
    v46 = v11;
    v50 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v8;
    while (1)
    {
      sub_267B9AFEC(v14, v60);
      __swift_project_boxed_opaque_existential_0(v60, v60[3]);
      sub_267E8ABE0(v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v53) == 1)
      {
        break;
      }

      (*v49)(v12, v8, v53);
      if (!*(v52 + 16) || (v16 = sub_267C94E20(), (v17 & 1) == 0))
      {
        (*v48)(v12, v53);
        goto LABEL_9;
      }

      v18 = v16;
      v19 = *(v52 + 56);
      v20 = swift_allocObject();
      v45 = *(v19 + 16 * v18);
      *(v20 + 16) = v45;
      sub_267B9AFEC(v60, &v58);
      v21 = type metadata accessor for AppDependentSignalInstrumentation();
      v22 = swift_allocObject();
      v51 = v13;
      v23 = v15;
      v24 = v43;
      v22[3] = v43;
      sub_267B9A5E8(&v58, (v22 + 4));
      v22[2] = v44;
      v22[9] = sub_267E8D85C;
      v22[10] = v20;
      *(&v56 + 1) = v21;
      v57 = sub_267E8D674(&qword_28022CD68, v25, type metadata accessor for AppDependentSignalInstrumentation, &unk_267F0DA10);
      *&v55 = v22;
      v12 = v50;
      v26 = *v48;

      v27 = v24;
      v15 = v23;
      v13 = v51;
      v26(v12, v53);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v60);
      if (*(&v56 + 1))
      {
        sub_267B9A5E8(&v55, &v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C71E88();
          v15 = v39;
        }

        v38 = *(v15 + 16);
        if (v38 >= *(v15 + 24) >> 1)
        {
          sub_267C71E88();
          v15 = v40;
        }

        *(v15 + 16) = v38 + 1;
        sub_267B9A5E8(&v58, v15 + 40 * v38 + 32);
      }

      else
      {
        sub_267B9F98C(&v55, &qword_28022CD50, &qword_267F0DA70);
      }

      v14 += 40;
      v13 = (v13 - 1);
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    sub_267B9F98C(v8, &qword_28022CD60, &unk_267F0DA80);
LABEL_9:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    sub_267B9AFEC(v60, &v58);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v31 = v46;
      __swift_project_boxed_opaque_existential_0(&v58, v59);
      v32 = sub_267EF5018();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0(&v58);
      v35 = sub_267BA33E8(v32, v34, &v54);
      v8 = v47;

      *(v31 + 4) = v35;
      _os_log_impl(&dword_267B93000, v29, v30, "#SignalInstrumentation - No instrumentation for gathered signal %s", v31, 0xCu);
      v36 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x26D60A7B0](v36, -1, -1);
      v37 = v31;
      v12 = v50;
      MEMORY[0x26D60A7B0](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v58);
    }

    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    goto LABEL_15;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_25:
  swift_beginAccess();
  sub_267C9BC2C(v15);
  swift_endAccess();
}

uint64_t sub_267E8C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a5;
  v48 = a4;
  v54 = a3;
  v46[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v46 - v7;
  v9 = sub_267EF4D38();
  MEMORY[0x28223BE20](v9);
  v55 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    v52 = (v10 + 32);
    v15 = MEMORY[0x277D84F90];
    v51 = (v10 + 8);
    *&v11 = 136315138;
    v49 = v11;
    v50 = v9;
    while (1)
    {
      sub_267B9AFEC(v14, v62);
      __swift_project_boxed_opaque_existential_0(v62, v63);
      sub_267E8ABE0(v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        break;
      }

      (*v52)(v55, v8, v9);
      if (!*(v54 + 16))
      {
        goto LABEL_13;
      }

      v16 = sub_267C94E20();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = *(*(v54 + 56) + 8 * v16);
      v19 = v63;
      v20 = v64;
      __swift_project_boxed_opaque_existential_0(v62, v63);

      v21 = sub_267E8BE88(v19, v20);
      if (v21 == 8)
      {
        (*v51)(v55, v9);

        goto LABEL_14;
      }

      if (!*(v18 + 16) || (v22 = sub_267C94EB8(v21), (v23 & 1) == 0))
      {

LABEL_13:
        (*v51)(v55, v9);
LABEL_14:
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v31 = sub_267EF8A08();
        __swift_project_value_buffer(v31, qword_280240FB0);
        sub_267B9AFEC(v62, &v60);
        v32 = sub_267EF89F8();
        v33 = sub_267EF95E8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v53 = v14;
          v36 = v35;
          v56 = v35;
          *v34 = v49;
          __swift_project_boxed_opaque_existential_0(&v60, v61);
          v37 = sub_267EF5018();
          v39 = v38;
          __swift_destroy_boxed_opaque_existential_0(&v60);
          v40 = sub_267BA33E8(v37, v39, &v56);
          v9 = v50;

          *(v34 + 4) = v40;
          _os_log_impl(&dword_267B93000, v32, v33, "#SignalInstrumentation - No instrumentation for the gathered signal %s.", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          v41 = v36;
          v14 = v53;
          MEMORY[0x26D60A7B0](v41, -1, -1);
          MEMORY[0x26D60A7B0](v34, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v60);
        }

        v57 = 0u;
        v58 = 0u;
        v59 = 0;
        goto LABEL_20;
      }

      v53 = *(*(v18 + 56) + 16 * v22);

      v24 = swift_allocObject();
      *(v24 + 16) = v53;
      sub_267B9AFEC(v62, &v60);
      v25 = type metadata accessor for AppDependentSignalInstrumentation();
      v26 = swift_allocObject();
      *&v53 = v15;
      v27 = v47;
      v26[3] = v47;
      sub_267B9A5E8(&v60, (v26 + 4));
      v26[2] = v48;
      v26[9] = sub_267E8D50C;
      v26[10] = v24;
      *(&v58 + 1) = v25;
      v59 = sub_267E8D674(&qword_28022CD68, v28, type metadata accessor for AppDependentSignalInstrumentation, &unk_267F0DA10);
      *&v57 = v26;
      v29 = *v51;

      v30 = v27;
      v15 = v53;
      v29(v55, v9);
LABEL_20:
      __swift_destroy_boxed_opaque_existential_0(v62);
      if (*(&v58 + 1))
      {
        sub_267B9A5E8(&v57, &v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C71E88();
          v15 = v43;
        }

        v42 = *(v15 + 16);
        if (v42 >= *(v15 + 24) >> 1)
        {
          sub_267C71E88();
          v15 = v44;
        }

        *(v15 + 16) = v42 + 1;
        sub_267B9A5E8(&v60, v15 + 40 * v42 + 32);
      }

      else
      {
        sub_267B9F98C(&v57, &qword_28022CD50, &qword_267F0DA70);
      }

      v14 += 40;
      if (!--v13)
      {
        goto LABEL_30;
      }
    }

    sub_267B9F98C(v8, &qword_28022CD60, &unk_267F0DA80);
    goto LABEL_14;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_30:
  swift_beginAccess();
  sub_267C9BC2C(v15);
  swift_endAccess();
}

uint64_t sub_267E8D13C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_267E8D1A0(uint64_t a1, uint64_t a2)
{
  result = sub_267E8D674(&qword_28022CD38, a2, type metadata accessor for AppDependentSignalInstrumentation, &unk_267F0D9E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E8D1F8(uint64_t a1, uint64_t a2)
{
  result = sub_267E8D674(&qword_28022CD40, a2, type metadata accessor for AppIndependentSignalInstrumentation, &unk_267F0DA2C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267E8D250(uint64_t a1, uint64_t a2)
{
  sub_267EF9D38();
  OUTLINED_FUNCTION_43();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_267E8D298(char a1)
{
  result = 27954;
  switch(a1)
  {
    case 1:
      result = 7155761;
      break;
    case 2:
      result = 26673;
      break;
    case 3:
      result = 26678;
      break;
    case 4:
      result = 25649;
      break;
    case 5:
      result = 25655;
      break;
    case 6:
      result = 6567986;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267E8D33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267E8D250(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267E8D36C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267E8D298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E8D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267EF5018();
  sub_267EF4D28();
  MEMORY[0x26D608E60](46, 0xE100000000000000);
  v4 = sub_267EF9218();

  return v4 & 1;
}

uint64_t sub_267E8D448(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267EF5018();
  MEMORY[0x26D608E60](46, 0xE100000000000000);
  sub_267EF9C58();
  v4 = sub_267EF9228();

  return v4 & 1;
}

uint64_t sub_267E8D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E8D5DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_267E8D614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267E8D674(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeBucket(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E8D79C()
{
  result = qword_28022CD80;
  if (!qword_28022CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022CD88, qword_267F0DAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CD80);
  }

  return result;
}

unint64_t sub_267E8D804()
{
  result = qword_28022CD90;
  if (!qword_28022CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CD90);
  }

  return result;
}

unint64_t sub_267E8D860(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if (sub_267EF9A68())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:

  return v1;
}

char *sub_267E8D8BC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  MEMORY[0x28223BE20](v2 - 8);
  v189 = &v180[-v3];
  v221 = sub_267EF6868();
  v190 = *(v221 - 8);
  v4 = MEMORY[0x28223BE20](v221);
  v220 = &v180[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v217 = &v180[-v6];
  v201 = sub_267EF6A88();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v180[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = sub_267EF6B88();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v198 = &v180[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_267EF6B38();
  MEMORY[0x28223BE20](v9 - 8);
  v195 = &v180[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v219 = sub_267EF2E38();
  v186 = *(v219 - 8);
  v11 = MEMORY[0x28223BE20](v219);
  v216 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v204 = &v180[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v203 = &v180[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v211 = &v180[-v17];
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v18 = MEMORY[0x28223BE20](v188);
  v194 = &v180[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v187 = &v180[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v193 = &v180[-v23];
  MEMORY[0x28223BE20](v22);
  v210 = &v180[-v24];
  v192 = sub_267EF6B18();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v26 = &v180[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = type metadata accessor for SmsContactIntentNode(0);
  v27 = *(v222 - 1);
  v28 = MEMORY[0x28223BE20](v222);
  v213 = &v180[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v180[-v30];
  v32 = sub_267EF6718();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v209 = &v180[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v37 = &v180[-v36];
  v38 = sub_267EF89E8();
  v207 = *(v38 - 8);
  v208 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v180[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280228820 != -1)
  {
LABEL_101:
    swift_once();
  }

  v202 = v26;
  v41 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v205 = v41;
  v206 = v40;
  sub_267EF89A8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v42 = sub_267EF8A08();
  v43 = __swift_project_value_buffer(v42, qword_280240FB0);
  v44 = *(v33 + 16);
  v215 = a1;
  v44(v37, a1, v32);
  v214 = v43;
  v45 = sub_267EF89F8();
  v46 = v37;
  v47 = sub_267EF95D8();
  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v182 = v32;
    v49 = v48;
    v183 = v48;
    v184 = swift_slowAlloc();
    v223[0] = v184;
    *v49 = 136315138;
    sub_267E8F9D0(&qword_2802293D8, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v32 = v182;
    v50 = sub_267EF9E58();
    v181 = v47;
    v51 = v50;
    v185 = v44;
    v53 = v52;
    v54 = *(v33 + 8);
    v33 += 8;
    v54(v46, v32);
    v55 = sub_267BA33E8(v51, v53, v223);
    v44 = v185;

    v56 = v183;
    *(v183 + 4) = v55;
    _os_log_impl(&dword_267B93000, v45, v181, "#SendMessageNLIntentTransformer transforming from: %s", v56, 0xCu);
    v57 = v184;
    __swift_destroy_boxed_opaque_existential_0(v184);
    MEMORY[0x26D60A7B0](v57, -1, -1);
    MEMORY[0x26D60A7B0](v56, -1, -1);
  }

  else
  {

    v58 = *(v33 + 8);
    v33 += 8;
    v58(v46, v32);
  }

  v59 = v209;
  v44(v209, v215, v32);
  type metadata accessor for SmsNLv3Intent(0);
  swift_allocObject();
  v60 = sub_267EC41AC(v59);
  if (v60)
  {
    v40 = v60;
    v209 = v60;
    sub_267EC4E04();
    v37 = v61;
    a1 = 0;
    v26 = *(v61 + 16);
    v215 = MEMORY[0x277D84F90];
    while (v26 != a1)
    {
      if (a1 >= *(v37 + 2))
      {
        __break(1u);
        goto LABEL_101;
      }

      v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v62 = *(v27 + 72);
      sub_267DA6FC0(&v37[v33 + v62 * a1], v31);
      if (qword_280228860 != -1)
      {
        swift_once();
      }

      sub_267E8F9D0(&qword_2802297A0, type metadata accessor for SmsContactIntentNode, &unk_267F07B20);
      sub_267EF5B28();
      v40 = 0xE200000000000000;
      switch(v224)
      {
        case 1:
          v40 = 0xE400000000000000;
          goto LABEL_20;
        case 2:
          v40 = 0xE700000000000000;
          goto LABEL_20;
        case 3:

          goto LABEL_21;
        case 4:
          v40 = 0xE600000000000000;
          goto LABEL_20;
        case 5:
          v40 = 0xE300000000000000;
          goto LABEL_20;
        case 6:
          v40 = 0xE400000000000000;
          goto LABEL_20;
        case 7:
          goto LABEL_22;
        default:
LABEL_20:
          v32 = sub_267EF9EA8();

          if (v32)
          {
LABEL_21:
            sub_267DA7088(v31);
            ++a1;
          }

          else
          {
LABEL_22:
            sub_267DA7024(v31, v213);
            v40 = v215;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v223[0] = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_267C7235C(0, *(v40 + 2) + 1, 1);
              v40 = v223[0];
            }

            v32 = *(v40 + 2);
            v64 = *(v40 + 3);
            v65 = v32 + 1;
            if (v32 >= v64 >> 1)
            {
              v215 = (v32 + 1);
              sub_267C7235C(v64 > 1, v32 + 1, 1);
              v65 = v215;
              v40 = v223[0];
            }

            ++a1;
            *(v40 + 2) = v65;
            v215 = v40;
            sub_267DA7024(v213, &v40[v33 + v32 * v62]);
          }

          break;
      }
    }

    if (*(v215 + 2))
    {
      v66 = v218;
      v67 = sub_267DA509C((v218 + 7), v215);

      __swift_project_boxed_opaque_existential_0(v66 + 2, v66[5]);
      sub_267EC4468();
      v69 = v68;
      v71 = v70;
      v183 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      v72 = sub_267EF2D28();
      v73 = v210;
      v185 = v72;
      __swift_storeEnumTagSinglePayload(v210, 1, 1, v72);
      v74 = sub_267EF6C28();
      __swift_storeEnumTagSinglePayload(v211, 1, 1, v74);
      v75 = sub_267EF6FF8();
      v76 = sub_267EF6FC8();
      v77 = v73;
      v78 = v193;
      sub_267BC9B04(v77, v193, &qword_280229430, &qword_267EFD2C0);

      v79 = sub_267EF89F8();
      v80 = sub_267EF95D8();

      v81 = os_log_type_enabled(v79, v80);
      v222 = v76;
      v213 = v67;
      v215 = v75;
      v184 = v69;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = v69;
        v85 = v83;
        v224 = v83;
        *v82 = 136315394;
        v223[0] = v84;
        v223[1] = v71;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v86 = sub_267EF9098();
        v88 = sub_267BA33E8(v86, v87, &v224);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2080;
        sub_267BC9B04(v78, v187, &qword_280229430, &qword_267EFD2C0);
        v89 = sub_267EF9098();
        v90 = v78;
        v92 = v91;
        v76 = v222;
        v66 = v218;
        sub_267B9FED8(v90, &qword_280229430, &qword_267EFD2C0);
        v93 = sub_267BA33E8(v89, v92, &v224);

        *(v82 + 14) = v93;
        _os_log_impl(&dword_267B93000, v79, v80, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v85, -1, -1);
        MEMORY[0x26D60A7B0](v82, -1, -1);
      }

      else
      {

        sub_267B9FED8(v78, &qword_280229430, &qword_267EFD2C0);
      }

      v100 = v197;
      v101 = v194;
      if (v76 && (sub_267EF6F98(), sub_267EF37B8(), v103 = v102, , v103))
      {
        v197 = v103;
      }

      else
      {

        v197 = 0xE000000000000000;
      }

      v223[0] = v183;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
      v194 = sub_267EF9098();
      v193 = v104;
      __swift_project_boxed_opaque_existential_0(v66 + 12, v66[15]);
      sub_267EF3B68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_267EFC020;
      v106 = 0x8000000267F10280;
      v107 = 0xD000000000000013;
      if (v71)
      {
        v107 = v184;
        v106 = v71;
      }

      *(v105 + 32) = v107;
      *(v105 + 40) = v106;
      sub_267BC9B04(v211, v203, &qword_280229428, &unk_267F00E50);
      sub_267BC9B04(v210, v101, &qword_280229430, &qword_267EFD2C0);
      v108 = v185;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v185);

      if (EnumTagSinglePayload == 1)
      {
        sub_267B9FED8(v101, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        sub_267EF2CE8();
        (*(*(v108 - 8) + 8))(v101, v108);
      }

      v110 = v201;
      sub_267EF6B28();
      (*(v196 + 104))(v198, *MEMORY[0x277D56148], v100);
      (*(v200 + 104))(v199, *MEMORY[0x277D560D0], v110);
      v111 = v202;
      sub_267EF6AF8();

      sub_267B9FED8(v211, &qword_280229428, &unk_267F00E50);
      sub_267B9FED8(v210, &qword_280229430, &qword_267EFD2C0);
      if (sub_267EF6FC8())
      {
        sub_267EF6FA8();

        sub_267EF8678();
      }

      v99 = v218;
      v112 = v213;
      sub_267EF6B08();
      if (*(v112 + 16))
      {
        __swift_project_boxed_opaque_existential_0(v99 + 2, v99[5]);
        v113 = v212;
        v114 = sub_267EF6878();
        if (v113)
        {
          (*(v191 + 8))(v111, v192);

          sub_267EF9688();
          v97 = v206;
          sub_267EF89B8();
          (*(v207 + 8))(v97, v208);
          return v97;
        }

        v118 = v114;
        v212 = 0;

        v119 = MEMORY[0x277D84F90];
        v223[0] = MEMORY[0x277D84F90];
        v120 = *(v118 + 16);
        v204 = v118;
        if (v120)
        {
          v215 = *(v190 + 16);
          v121 = v118 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
          v213 = *(v190 + 72);
          v222 = (v190 + 16);
          v210 = (v190 + 8);
          v211 = (v186 + 8);
          v122 = v216;
          do
          {
            v123 = v217;
            v124 = v221;
            (v215)(v217, v121, v221);
            v125 = sub_267EF6858();
            __swift_project_boxed_opaque_existential_0(v218 + 12, v218[15]);
            sub_267EF3B68();
            sub_267DEA1E8();

            (*v211)(v122, v219);
            v126 = sub_267EF6828();
            sub_267DEB128(v126);
            v127 = (*v210)(v123, v124);
            MEMORY[0x26D608F90](v127);
            if (*((v223[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
            v121 += v213;
            --v120;
          }

          while (v120);
          v119 = v223[0];
          v99 = v218;
          v111 = v202;
        }

        (*(v191 + 8))(v111, v192);
        v98 = sub_267ECEE14(v119);
      }

      else
      {

        v115 = sub_267EF89F8();
        v116 = sub_267EF95D8();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_267B93000, v115, v116, "#SendMessageNLIntentTransformer Contact nodes do not have a fresh value, skipping contact resolution", v117, 2u);
          MEMORY[0x26D60A7B0](v117, -1, -1);
        }

        (*(v191 + 8))(v111, v192);
        v98 = MEMORY[0x277D84F90];
        v204 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v98 = MEMORY[0x277D84F90];
      v204 = MEMORY[0x277D84F90];
      v99 = v218;
    }

    v128 = sub_267BAF0DC(v98);
    v216 = v98;
    if (v128)
    {
    }

    else
    {
      v98 = 0;
    }

    v129 = sub_267EC5F1C();
    v131 = sub_267EC4D94();
    if (v130)
    {
      v132 = v130;
      __swift_project_boxed_opaque_existential_0(v99 + 12, v99[15]);
      v133 = v189;
      sub_267EF3B68();
      __swift_storeEnumTagSinglePayload(v133, 0, 1, v219);
      v131 = sub_267D5EBA4(v133, v131, v132);
      v135 = v134;

      sub_267B9FED8(v133, &unk_28022AF10, &unk_267F001E0);
    }

    else
    {
      v135 = 0;
    }

    if (sub_267EC3A9C())
    {
      v136 = sub_267EC5F4C();
    }

    else
    {
      v136 = 0;
    }

    v137 = sub_267EC4CFC();
    v139 = v138;
    v140 = sub_267EC5FD8();
    v141 = objc_allocWithZone(MEMORY[0x277CD4078]);
    v142 = sub_267E8F82C(v98, v129, v131, v135, v136, v137, v139, 0, 0, 0, v140);
    v143 = v142;
    v144 = v204;
    v145 = *(v204 + 2);
    v217 = v142;
    if (v145)
    {
      v223[0] = MEMORY[0x277D84F90];
      v146 = v142;
      sub_267C72264(0, v145, 0);
      v147 = v223[0];
      v222 = *(v190 + 16);
      v148 = &v144[(*(v190 + 80) + 32) & ~*(v190 + 80)];
      v219 = *(v190 + 72);
      v149 = (v190 + 8);
      do
      {
        v150 = v220;
        v151 = v221;
        (v222)(v220, v148, v221);
        v152 = sub_267EF6828();
        (*v149)(v150, v151);
        v223[0] = v147;
        v154 = *(v147 + 16);
        v153 = *(v147 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_267C72264((v153 > 1), v154 + 1, 1);
          v147 = v223[0];
        }

        *(v147 + 16) = v154 + 1;
        *(v147 + 4 * v154 + 32) = v152;
        v148 += v219;
        --v145;
      }

      while (v145);

      v143 = v217;
    }

    else
    {
      v155 = v142;

      v147 = MEMORY[0x277D84F90];
    }

    sub_267C7A414(v147);
    v156 = v218;
    __swift_project_boxed_opaque_existential_0(v218 + 17, v218[20]);
    sub_267EF4278();
    __swift_project_boxed_opaque_existential_0(v223, v223[3]);
    sub_267EF42B8();
    v157 = v216;
    if (v158)
    {
      v159 = sub_267EF8FF8();
    }

    else
    {
      v159 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v223);
    [v143 _setOriginatingDeviceIdsIdentifier_];

    v160 = [v143 _metadata];
    if (v160)
    {
      v161 = v156[22];
      if (v161)
      {
        sub_267EF6F98();
        sub_267EF37B8();
        v163 = v162;

        if (v163)
        {
          v161 = sub_267EF8FF8();
        }

        else
        {
          v161 = 0;
        }
      }

      [v160 setIntentId_];
    }

    v164 = sub_267BAF0DC(v157);
    if (v164)
    {
      v165 = v164;
      v223[0] = MEMORY[0x277D84F90];
      result = sub_267C72264(0, v164 & ~(v164 >> 63), 0);
      if (v165 < 0)
      {
        __break(1u);
        return result;
      }

      v167 = 0;
      v168 = v223[0];
      do
      {
        if ((v157 & 0xC000000000000001) != 0)
        {
          v169 = MEMORY[0x26D609870](v167, v157);
        }

        else
        {
          v169 = *(v157 + 8 * v167 + 32);
        }

        v170 = v169;
        v171 = sub_267DEB048();

        v223[0] = v168;
        v173 = *(v168 + 16);
        v172 = *(v168 + 24);
        if (v173 >= v172 >> 1)
        {
          sub_267C72264((v172 > 1), v173 + 1, 1);
          v168 = v223[0];
        }

        ++v167;
        *(v168 + 16) = v173 + 1;
        *(v168 + 4 * v173 + 32) = v171;
      }

      while (v165 != v167);

      v143 = v217;
    }

    else
    {

      v168 = MEMORY[0x277D84F90];
    }

    sub_267D2952C(v168);
    v97 = v143;
    v174 = sub_267EF89F8();
    v175 = sub_267EF95D8();

    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *v176 = 138412290;
      *(v176 + 4) = v97;
      *v177 = v97;
      v178 = v97;
      _os_log_impl(&dword_267B93000, v174, v175, "#SendMessageNLIntentTransformer transformed to: %@", v176, 0xCu);
      sub_267B9FED8(v177, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v177, -1, -1);
      MEMORY[0x26D60A7B0](v176, -1, -1);
    }
  }

  else
  {
    v94 = sub_267EF89F8();
    v95 = sub_267EF95D8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_267B93000, v94, v95, "#SendMessageNLIntentTransformer NL intent not in sms domain, returning an empty SiriKit intent", v96, 2u);
      MEMORY[0x26D60A7B0](v96, -1, -1);
    }

    v97 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  sub_267EF9688();
  v179 = v206;
  sub_267EF89B8();
  (*(v207 + 8))(v179, v208);
  return v97;
}

void *sub_267E8F45C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  return v0;
}

uint64_t sub_267E8F49C()
{
  sub_267E8F45C();

  return swift_deallocClassInstance();
}

uint64_t sub_267E8F4F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a5;
  v30 = a1;
  sub_267B9B050(a2, v37);
  sub_267B9B050(a3, v36);
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v7);
  (*(v8 + 8))(v35, v7, v8);
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v9);
  (*(v10 + 16))(v34, v9, v10);
  sub_267EF6FF8();
  v11 = sub_267EF6FC8();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v37, v37[3]);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_267EF68A8();
  v32 = v15;
  v33 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(v31);
  OUTLINED_FUNCTION_5_0();
  v17 = *(v16 + 32);
  v17();
  type metadata accessor for SendMessageNLIntentTransformer();
  inited = swift_initStackObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  inited[5] = v15;
  inited[6] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (v17)(boxed_opaque_existential_0, v21, v15);
  sub_267B9A5E8(v36, (inited + 7));
  sub_267B9A5E8(v35, (inited + 12));
  sub_267B9A5E8(v34, (inited + 17));
  inited[22] = v11;
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v24 = v37[7];
  v25 = sub_267E8D8BC(v30);
  if (v24)
  {
    swift_setDeallocating();
    sub_267E8F45C();
    return swift_deallocClassInstance();
  }

  else
  {
    v27 = v25;
    swift_setDeallocating();
    sub_267E8F45C();
    result = swift_deallocClassInstance();
    *v29 = v27;
  }

  return result;
}

id sub_267E8F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v16 = sub_267EF92D8();

    if (a4)
    {
LABEL_3:
      v17 = sub_267EF8FF8();

      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a7)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_267EF8FF8();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v20 = sub_267EF92D8();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 initWithRecipients:v16 outgoingMessageType:a2 content:v17 speakableGroupName:a5 conversationIdentifier:v18 serviceName:v19 sender:a10 attachments:v20];

  return v21;
}

uint64_t sub_267E8F9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267E8FA18()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v9, v10, &unk_28022AE50, &unk_267EFD130);
  v11 = sub_267EF93F8();
  OUTLINED_FUNCTION_27_35(v11);
  if (&unk_267EFD130 == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 8))(v0, &unk_28022AE50);
  }

  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = v14;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      *(v16 + 24) = v4;

      if (v13 | v15)
      {
        OUTLINED_FUNCTION_20_32();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_17_32(v17);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  if (v13 | v15)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_47();
}

void sub_267E8FC80()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v9, v10, &unk_28022AE50, &unk_267EFD130);
  v11 = sub_267EF93F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0();
    (*(v13 + 8))(v0, v11);
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v6;
      *(v17 + 24) = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
      v18 = v14 | v16;
      if (v14 | v16)
      {
        OUTLINED_FUNCTION_20_32();
      }

      OUTLINED_FUNCTION_17_32(v18);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
  if (v14 | v16)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_47();
}

void sub_267E8FF18()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v9, v10, &unk_28022AE50, &unk_267EFD130);
  v11 = sub_267EF93F8();
  OUTLINED_FUNCTION_27_35(v11);
  if (&unk_267EFD130 == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 8))(v0, &unk_28022AE50);
  }

  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = v14;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      *(v16 + 24) = v4;
      sub_267EF7D48();

      if (v13 | v15)
      {
        OUTLINED_FUNCTION_20_32();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_17_32(v17);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  sub_267EF7D48();
  if (v13 | v15)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_47();
}

void sub_267E90198()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  OUTLINED_FUNCTION_23();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v30 = OUTLINED_FUNCTION_9_54(v22, v23, v24, v25, v26, v27, v28, v29, v37);
  v31(v30, v2, v6);
  sub_267B9B050(v12, v38);
  v32 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v6;
  *(v33 + 24) = v4;
  (*(v18 + 32))(v33 + v32, v1, v6);
  sub_267B9A5E8(v38, v33 + ((v20 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  OUTLINED_FUNCTION_62_0();
  v34 = swift_allocObject();
  *(v34 + 16) = v10;
  *(v34 + 24) = v8;
  v35 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = sub_267E92348;
  v36[5] = v34;
  v36[6] = &unk_267F0DD50;
  v36[7] = v33;

  sub_267E8FA18();

  OUTLINED_FUNCTION_47();
}

void sub_267E903B0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v37 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  OUTLINED_FUNCTION_23();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v29 = OUTLINED_FUNCTION_9_54(v21, v22, v23, v24, v25, v26, v27, v28, v36);
  v30(v29, v2, v6);
  v31 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v6;
  *(v32 + 24) = v4;
  (*(v17 + 32))(v32 + v31, v1, v6);
  *(v32 + ((v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v33 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v37;
  v34[5] = v8;
  v34[6] = &unk_267F0DD10;
  v34[7] = v32;
  v35 = v11;

  sub_267E8FA18();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E905A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_267E90698;

  return v9(v6 + 2);
}

uint64_t sub_267E90698()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_267E9080C;
  }

  else
  {
    v5 = sub_267E9079C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E9079C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  *(v0 + 24) = 0;
  v1(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E9080C()
{
  OUTLINED_FUNCTION_62();
  v8 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v6 = v1;
  v7 = 1;
  v3 = v1;
  v2(&v6);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E9089C()
{
  OUTLINED_FUNCTION_12();
  v0[14] = v1;
  v0[15] = v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_267E9098C;

  return v6(v0 + 2);
}

uint64_t sub_267E9098C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_267E90B0C;
  }

  else
  {
    v5 = sub_267E90A90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E90A90()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 112);
  *(v0 + 56) = 0;
  v1(v0 + 16);
  sub_267B9FED8(v0 + 16, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E90B0C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  *(v0 + 64) = v1;
  *(v0 + 104) = 1;
  v3 = v1;
  v2(v0 + 64);

  sub_267B9FED8(v0 + 64, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E90BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 16) + **(a5 + 16));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_267E90CE4;

  return v11(a3, a4, a5);
}

uint64_t sub_267E90CE4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x2822009F8](sub_267E90E20, 0, 0);
  }
}

uint64_t sub_267E90E20()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_17();
  return v1();
}

uint64_t sub_267E90E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_267BAEBEC;

  return v12(a1, a3, a4, a5);
}

uint64_t sub_267E90F8C(__int128 *a1, uint64_t a2, __int128 *a3)
{
  sub_267B9A5E8(a1, v3 + 72);
  *(v3 + 112) = a2;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  sub_267B9A5E8(a3, v3 + 16);
  return v3;
}

uint64_t sub_267E90FDC()
{
  sub_267BBD080(0, *(*(v0 + 112) + 16), *(v0 + 112));
  sub_267E9103C();

  return swift_unknownObjectRelease();
}

void sub_267E9103C()
{
  OUTLINED_FUNCTION_48_0();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 >> 1 == v8)
  {
    sub_267EF4018();
    v4(v18);
    (*(v15 + 8))(v18, v13);
LABEL_7:
    OUTLINED_FUNCTION_47();
    return;
  }

  v33 = v4;
  sub_267C8F6D8(v10, v8, v6, &v35);
  if (v36)
  {
    sub_267B9A5E8(&v35, v37);
    v19 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else if ((v6 >> 1) >= v19)
    {
      v20 = sub_267E92580(v19, v6 >> 1, v12, v10, v8, v6);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      sub_267B9A5E8(v37, v38);
      v27 = v39;
      v28 = v40;
      __swift_project_boxed_opaque_existential_0(v38, v39);
      sub_267B9B050(v38, v37);
      v29 = swift_allocObject();
      v30 = v34;
      v29[2] = v34;
      sub_267B9A5E8(v37, (v29 + 3));
      v29[8] = v20;
      v29[9] = v22;
      v29[10] = v24;
      v29[11] = v26;
      v29[12] = v33;
      v29[13] = v2;
      v31 = *(v28 + 8);

      swift_unknownObjectRetain();
      v31(v30 + 72, sub_267E925FC, v29, v27, v28);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v38);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_267E91280(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *), uint64_t a10)
{
  v70[0] = a7;
  v70[1] = a8;
  v72 = a9;
  v73 = a10;
  v71 = sub_267EF4028();
  v14 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 56);
  *(a3 + 56) = a1;
  *(a3 + 64) = a2 & 1;
  v18 = a1;

  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    sub_267B9B050(a4, v76);
    v20 = a1;
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315394;
      __swift_project_boxed_opaque_existential_0(v76, v77);
      swift_getDynamicType();
      v25 = sub_267EFA0E8();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v76);
      v28 = sub_267BA33E8(v25, v27, &v75);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v74 = a1;
      v29 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v30 = sub_267EF9098();
      v32 = sub_267BA33E8(v30, v31, &v75);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_267B93000, v21, v22, "#RequestSupportCheckFlow strategy failed to determine request support %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v24, -1, -1);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    sub_267EF4018();
    v72(v16);
    (*(v14 + 8))(v16, v71);
  }

  else if (a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v33 = sub_267EF8A08();
    __swift_project_value_buffer(v33, qword_280240FB0);
    sub_267B9B050(a4, v76);
    v34 = sub_267EF89F8();
    v35 = sub_267EF95C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136446210;
      __swift_project_boxed_opaque_existential_0(v76, v77);
      swift_getDynamicType();
      v38 = sub_267EFA0E8();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0(v76);
      v41 = sub_267BA33E8(v38, v40, &v75);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_267B93000, v34, v35, "#RequestSupportCheckFlow request is not supported by %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x26D60A7B0](v37, -1, -1);
      MEMORY[0x26D60A7B0](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    sub_267B9B050(a4, v76);
    v51 = a1;
    v52 = sub_267EF89F8();
    v53 = sub_267EF95D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v75 = v55;
      *v54 = 136315394;
      __swift_project_boxed_opaque_existential_0(v76, v77);
      swift_getDynamicType();
      v56 = sub_267EFA0E8();
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_0(v76);
      v59 = sub_267BA33E8(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      v74 = a1;
      v60 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v61 = sub_267EF9098();
      v63 = sub_267BA33E8(v61, v62, &v75);

      *(v54 + 14) = v63;
      _os_log_impl(&dword_267B93000, v52, v53, "#RequestSupportCheckFlow request is not supported by %s: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v55, -1, -1);
      MEMORY[0x26D60A7B0](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    v64 = a4[3];
    v65 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v64);
    v66 = swift_allocObject();
    v67 = v72;
    v68 = v73;
    v66[2] = a3;
    v66[3] = v67;
    v66[4] = v68;
    v69 = *(v65 + 16);

    v69(a1, sub_267E92638, v66, v64, v65);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v42 = sub_267EF8A08();
    __swift_project_value_buffer(v42, qword_280240FB0);
    sub_267B9B050(a4, v76);
    v43 = sub_267EF89F8();
    v44 = sub_267EF95C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136446210;
      __swift_project_boxed_opaque_existential_0(v76, v77);
      swift_getDynamicType();
      v47 = sub_267EFA0E8();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_0(v76);
      v50 = sub_267BA33E8(v47, v49, &v75);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_267B93000, v43, v44, "#RequestSupportCheckFlow request is supported by %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D60A7B0](v46, -1, -1);
      MEMORY[0x26D60A7B0](v45, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    sub_267E9103C();
  }
}

void sub_267E91A60()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267BC9B04(v7, v34, &unk_28022A480, &unk_267F029F0);
  if (v35)
  {
    v14 = *&v34[0];
    v15 = *(v1 + 56);
    *(v1 + 56) = *&v34[0];
    *(v1 + 64) = 1;
    v16 = v14;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = v14;
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v5;
      v33[0] = v30;
      *v21 = 136315138;
      v32[0] = v14;
      v22 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v23 = sub_267EF9098();
      v25 = sub_267BA33E8(v23, v24, v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_267B93000, v19, v20, "#RequestSupportCheckFlow failed to make output: %s", v21, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v5 = v31;
      MEMORY[0x26D60A7B0](v26, -1, -1);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    sub_267EF4018();
    v5(v13);

    (*(v10 + 8))(v13, v8);
  }

  else
  {
    sub_267B9A5E8(v34, v33);
    v27 = *(v1 + 40);
    v28 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), v27);
    (*(v28 + 32))(v32, v27, v28);
    __swift_project_boxed_opaque_existential_0(v32, v32[3]);
    v29 = swift_allocObject();
    v29[2] = v5;
    v29[3] = v3;
    v29[4] = v1;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E91DC4(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_267EF4028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = *(a5 + 56);
    *(a5 + 56) = a1;
    *(a5 + 64) = 1;
    v14 = a1;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);
    v16 = a1;
    v17 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = a3;
      v30 = a1;
      v21 = v20;
      v31 = v20;
      *v19 = 136315138;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v23 = sub_267EF9098();
      v25 = sub_267BA33E8(v23, v24, &v31);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_267B93000, v17, v18, "#RequestSupportCheckFlow publishUnsupportedOutput. Error publishing output for unsupported strategy: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v26 = v21;
      a3 = v29;
      MEMORY[0x26D60A7B0](v26, -1, -1);
      MEMORY[0x26D60A7B0](v19, -1, -1);
    }
  }

  sub_267EF4018();
  a3(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_267E92038()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
}

uint64_t sub_267E92074()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_267E920B0()
{
  sub_267E92074();

  return swift_deallocClassInstance();
}

id sub_267E9213C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t sub_267E92154()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_24_39();
  OUTLINED_FUNCTION_23();
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12_2(v6);
  *v7 = v8;
  v7[1] = sub_267BBD07C;
  v9 = OUTLINED_FUNCTION_6_53();

  return sub_267E90E50(v9, v10, v5, v1, v2);
}

uint64_t sub_267E92250()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_24_39();
  OUTLINED_FUNCTION_23();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_2(v2);
  *v3 = v4;
  v3[1] = sub_267BBD07C;
  v5 = OUTLINED_FUNCTION_6_53();

  return sub_267E90BB0(v5, v6, v7, v0, v1);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267E923C4()
{
  OUTLINED_FUNCTION_24_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_13_48();

  return sub_267E905A4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267E92478(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267BC4C88;

  return v6(a1);
}

uint64_t sub_267E92580(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_267E92664()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

uint64_t sub_267E926F4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_267E927E8;

  return v5(v2 + 16);
}

uint64_t sub_267E927E8()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_267E9290C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

id sub_267E9299C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_267E929F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_267E92A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950](a1);
}

uint64_t sub_267E92A84(uint64_t a1, uint64_t a2)
{
  sub_267E98190(a2, *(*(a1 + 64) + 40));

  return MEMORY[0x282200950](a1);
}

uint64_t sub_267E92B30()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_267E92BE0;

  return sub_267E92E80();
}

uint64_t sub_267E92BE0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12(v3);
  }
}

uint64_t sub_267E92D04()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 40);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#AFLocationService AFLocationServiceError %@", v8, 0xCu);
    sub_267B9FED8(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_267E92E80()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_267E92FB0;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CDE0, &unk_267F0DF48);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_267E930E0;
  v1[13] = &block_descriptor_19;
  v1[14] = v6;
  [v0 currentLocationWithAccuracy:v1 + 10 timeout:v5 completion:v3];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_267E92FB0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    OUTLINED_FUNCTION_36_4();

    return v5();
  }

  else
  {
    v7 = *(v1 + 144);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t *sub_267E930E0(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_267E929F8(v6, a3);
  }

  if (a2)
  {
    return sub_267E92ADC(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_267E9314C()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E93204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);
  v12 = OUTLINED_FUNCTION_40_24();
  v13(v12);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = sub_267EF4638();
    v19 = OUTLINED_FUNCTION_158();
    v20(v19);
    *(v16 + 4) = v18;
    *v17 = v18;
    OUTLINED_FUNCTION_53_19(&dword_267B93000, v21, v22, "#EditMessageHandleIntentFlowStrategy received success response: %@");
    sub_267B9FED8(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v23 = OUTLINED_FUNCTION_158();
    v24(v23);
  }

  __swift_project_boxed_opaque_existential_0((v10[9] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags), *(v10[9] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (__swift_project_boxed_opaque_existential_0((v10[9] + 16), *(v10[9] + 40)), v25 = OUTLINED_FUNCTION_13_49(), v26(v25), __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]), OUTLINED_FUNCTION_66(), v27 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0(v10 + 2), (v27))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v10[13] = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_60_0(v28);
    OUTLINED_FUNCTION_122();

    return sub_267E9368C();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v10[14] = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_60_0(v32);
    OUTLINED_FUNCTION_122();

    return sub_267E94374();
  }
}

uint64_t sub_267E93484()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_36_4();

  return v3();
}

uint64_t sub_267E93588()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_36_4();

  return v3();
}

uint64_t sub_267E9368C()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_267EF48A8();
  v1[24] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[25] = v5;
  v1[26] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v1[27] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v1[28] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E93A04()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  *(v7 + 280) = v6;
  *(v7 + 288) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E93B5C()
{
  OUTLINED_FUNCTION_53();
  v1 = sub_267EF97C8();
  *(v0 + 296) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v2 = sub_267EF4668();
  v3 = sub_267E97F78(v2);
  if (v4)
  {
    v5 = MEMORY[0x277D837D0];
  }

  else
  {
    v3 = 0;
    v5 = 0;
    *(v0 + 152) = 0;
  }

  v6 = *(v0 + 184);
  OUTLINED_FUNCTION_49_24(v3, v4, v5);
  sub_267ECE290();
  sub_267B9FED8(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v7);
  (*(v8 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_0((v6 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider), *(v6 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v1 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    v12 = sub_267EF9028();
    v14 = v13;
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v15 = sub_267EF3C48();
    v16 = sub_267BCEA0C(v1);
    if (v15)
    {
      v17 = sub_267DA2578(v16);
    }

    else
    {
      sub_267DA2180();
    }

    v12 = v17;
    v14 = v18;
  }

  v19 = *(v0 + 280);
  v20 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267E95B64();
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  v21 = swift_allocObject();
  *(v0 + 304) = v21;
  v21[2] = v1;
  v21[3] = v20;
  v21[4] = v12;
  v21[5] = v14;
  v22 = v19;
  v23 = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 312) = v24;
  *v24 = v25;
  v24[1] = sub_267E93E38;
  v26 = *(v0 + 208);
  v27 = *(v0 + 168);

  return (sub_267ECCEF4)(v27, v19, v26, v0 + 96, &unk_267F0DF60, v21);
}

uint64_t sub_267E93E38()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 320) = v0;

  sub_267B9FED8(v3 + 96, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E93F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v18 = v10[37];
  v19 = v10[35];
  v20 = v10[28];
  v22 = v10[25];
  v21 = v10[26];
  v23 = v10[24];

  (*(v22 + 8))(v21, v23);
  sub_267B9FED8(v20, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_122();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267E940A0()
{
  OUTLINED_FUNCTION_56();
  sub_267B9FED8(*(v0 + 224), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E94130()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);

  v3 = OUTLINED_FUNCTION_26_0();
  v4(v3);
  sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E941F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_267E94220, 0, 0);
}

uint64_t sub_267E94220()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v3[3] = sub_267EF8178();
  v3[4] = sub_267E98148(qword_280229338, MEMORY[0x277D5D3A0], MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  v5 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v6 = *(v5 + *(type metadata accessor for TimedSentMessageContext(0) + 32));
  v7 = v2;
  v8 = v6;

  sub_267EF8468();
  OUTLINED_FUNCTION_5_0();
  (*(v9 + 104))(boxed_opaque_existential_0);
  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267E94374()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_267EF48A8();
  v1[25] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v1[28] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF79B8();
  v1[29] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[30] = v8;
  v1[31] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v9);
  v1[32] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E944B8()
{
  v1 = v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v2 = type metadata accessor for TimedSentMessageContext(0);
  v3 = *(v1 + v2[7]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v0[33] = v4;
  v38 = v4;
  v5 = sub_267EF4668();
  v6 = sub_267E97F78(v5);
  if (v7)
  {
    v8 = MEMORY[0x277D837D0];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v0[19] = 0;
  }

  v9 = v0[32];
  v10 = v0[24];
  v36 = v0[23];
  v37 = v0[31];
  OUTLINED_FUNCTION_49_24(v6, v7, v8);
  sub_267ECE290();
  sub_267B9FED8((v0 + 17), &qword_28022AEF0, &qword_267EFCDE0);
  v11 = *(v1 + v2[6]);
  v12 = *(v1 + v2[8]);
  v13 = *(v1 + v2[9]);

  v14 = v3;
  v15 = v12;

  sub_267EF2CB8();
  *(v9 + v2[5]) = 0x403E000000000000;
  *(v9 + v2[6]) = v11;
  *(v9 + v2[7]) = v14;
  *(v9 + v2[8]) = v15;
  *(v9 + v2[9]) = v13;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v2);
  sub_267C4CF24(v9);
  v19 = v10[5];
  v20 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v19);
  (*(v20 + 8))(v19, v20);
  sub_267ED9AEC(v14, v13, (v0 + 2), v21, v22, v23, v24, v25, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v0[34] = v26;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
  v27 = sub_267EF4668();
  v28 = sub_267EF4638();
  v29 = sub_267E9299C(v27, v28);
  v0[35] = v29;
  [v29 setIntentHandlingStatus_];
  v0[21] = v29;
  sub_267EF8348();
  v30 = v0[31];
  v31 = type metadata accessor for EditMessageCATPatternsExecutor(0);
  v39 = *(v0 + 23);
  sub_267EF7B68();
  v32 = OUTLINED_FUNCTION_56_10();
  v0[10] = v31;
  v0[11] = &off_2878CF5F0;
  v0[7] = v32;
  __swift_project_boxed_opaque_existential_0(v0 + 7, v31);
  v33 = swift_task_alloc();
  v0[36] = v33;
  *(v33 + 16) = v39;
  *(v33 + 32) = v30;
  v34 = swift_task_alloc();
  v0[37] = v34;
  *v34 = v0;
  v34[1] = sub_267E94854;

  return sub_267C5AD60();
}

uint64_t sub_267E94854()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  *(v7 + 304) = v6;
  *(v7 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E94998()
{
  OUTLINED_FUNCTION_29();
  v30 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[38];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[38];
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = [v5 patternId];
    v9 = sub_267EF9028();
    v11 = v10;

    v12 = sub_267BA33E8(v9, v11, &v29);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v18 = v0[24];
  sub_267EF4198();
  swift_allocObject();
  v0[40] = sub_267EF4188();
  sub_267E95B64();
  v19 = sub_267EF4648();
  v0[41] = v19;
  v20 = v18[5];
  v21 = v18[6];
  __swift_project_boxed_opaque_existential_0(v18 + 2, v20);
  (*(v21 + 8))(v20, v21);
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v22 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[42] = v23;
  *v23 = v24;
  v23[1] = sub_267E94CC4;
  v25 = v0[38];
  v26 = v0[27];
  v27 = v0[22];

  return sub_267BCF3A4(v27, v25, v26, v19, v22 & 1);
}

uint64_t sub_267E94C18()
{
  OUTLINED_FUNCTION_56();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = OUTLINED_FUNCTION_66();
  v2(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E94CC4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  v7 = OUTLINED_FUNCTION_47_19();
  v8(v7);

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E94E0C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 304);

  v2 = OUTLINED_FUNCTION_26_0();
  v3(v2);

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_267E94EC4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v2 = OUTLINED_FUNCTION_66();
  v3(v2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E94F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  v4[42] = swift_task_alloc();
  sub_267EF81B8();
  v4[43] = swift_task_alloc();
  v5 = sub_267EF81D8();
  v4[44] = v5;
  v4[45] = *(v5 - 8);
  v4[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E95108, 0, 0);
}

uint64_t sub_267E95108()
{
  v1 = v0[40];
  v2 = v0[38];
  sub_267EF7958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v3 = sub_267EF4648();
  v4 = sub_267E80518(v3);

  *v2 = v4;
  v5 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v6 = *(v5 + *(type metadata accessor for TimedSentMessageContext(0) + 28));
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v7 = OUTLINED_FUNCTION_13_49();
  v8(v7);
  v52 = v1;
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v6 speakableGroupName];
  v53 = v6;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v12 = sub_267EF3C48();
    v13 = sub_267BCEA0C(v6);
    if (v12)
    {
      sub_267DA2578(v13);
    }

    else
    {
      sub_267DA2180();
    }
  }

  v14 = v0[51];
  v15 = v0[38];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267EF90F8();

  v16 = sub_267EF79B8();
  v0[52] = v16;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for EditMessageMessageEditedParameters(0);
  v0[53] = v20;
  sub_267BD3DDC(v14, v15 + v20[8]);
  v21 = sub_267EF4668();
  sub_267EF4648();
  v22 = sub_267EF7C18();
  v24 = v23;

  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_267DA133C(v21, v25, v26);

  v0[37] = v27;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();
  v28 = v0[50];
  v29 = v0[41];
  v30 = v0[38];

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v16);
  sub_267BD3DDC(v28, v30 + v20[11]);
  v34 = v20[10];
  sub_267B9FED8(v30 + v34, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_5_0();
  (*(v35 + 16))(v30 + v34, v29, v16);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
  v39 = sub_267EF4668();
  sub_267E97F78(v39);
  sub_267EF4648();
  sub_267EF7C18();

  sub_267EF9778();

  sub_267EF81C8();
  sub_267EF8348();
  v0[54] = 0;
  v41 = v0[49];
  v42 = v0[38];
  (*(v0[45] + 8))(v0[46], v0[44]);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v16);
  sub_267BD3DDC(v41, v42 + v20[13]);
  v46 = [v53 attachments];
  if (v46)
  {
    v47 = v46;
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v0[55] = sub_267EF92F8();

    __swift_project_boxed_opaque_existential_0((v52 + 16), *(v52 + 40));
    v48 = OUTLINED_FUNCTION_26_0();
    v49(v48);
    v0[56] = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v50 = swift_task_alloc();
    v0[57] = v50;
    *v50 = v0;
    v50[1] = sub_267E95734;

    return sub_267E92AFC();
  }

  else
  {
    OUTLINED_FUNCTION_51_19();

    OUTLINED_FUNCTION_1();

    return v51();
  }
}

uint64_t sub_267E95734()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E95824()
{
  OUTLINED_FUNCTION_53();
  sub_267EF8458();

  if (*(v0 + 240))
  {
    v1 = *(v0 + 464);
    sub_267BE58F4((v0 + 216), v0 + 176);
    sub_267B9AFEC(v0 + 176, v0 + 256);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  }

  else
  {
    v2 = *(v0 + 336);

    sub_267B9FED8(v0 + 216, &qword_28022BB10, &qword_267EFDCF0);
    v3 = sub_267EF8338();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  }

  v4 = *(v0 + 336);
  v5 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  v7 = *(v0 + 448);
  if (EnumTagSinglePayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_267B9FED8(v4, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
LABEL_9:
    sub_267B9FED8(v0 + 96, &qword_28022BB10, &qword_267EFDCF0);
    goto LABEL_10;
  }

  sub_267EF8318();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_66();
  v9(v8);
  if (!*(v0 + 120))
  {
    goto LABEL_9;
  }

  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v12 = *(v0 + 416);
  v13 = *(v0 + 384);
  v14 = *(v0 + 304);
  sub_267BE58F4((v0 + 96), v0 + 56);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  swift_getDynamicType();
  sub_267EF83B8();
  sub_267EF90F8();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
  sub_267BD3DDC(v13, v14 + *(v11 + 28));
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_267EF8348();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    OUTLINED_FUNCTION_50_17();

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v20 = *(v0 + 424);
  v21 = *(v0 + 376);
  v22 = *(v0 + 304);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_267BD3DDC(v21, v22 + *(v20 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_10:
  OUTLINED_FUNCTION_51_19();

  OUTLINED_FUNCTION_1();
LABEL_11:

  return v18();
}

uint64_t sub_267E95B64()
{
  v1 = sub_267EF3CF8();
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  sub_267EF3CE8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  (*(v4 + 8))(v6, v3, v4);
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_267E95C8C()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[25] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v5);
  v1[26] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[27] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[28] = v7;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[36] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[37] = v9;
  v1[38] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E95E2C()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = OUTLINED_FUNCTION_40_24();
  v3(v2);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_267EF4638();
    v9 = OUTLINED_FUNCTION_158();
    v10(v9);
    *(v6 + 4) = v8;
    *v7 = v8;
    OUTLINED_FUNCTION_53_19(&dword_267B93000, v11, v12, "#EditMessageHandleIntentFlowStrategy received failure response: %@");
    sub_267B9FED8(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v13 = OUTLINED_FUNCTION_158();
    v14(v13);
  }

  v15 = sub_267EF4638();
  v16 = [v15 code];

  if (v16 == 9)
  {
    type metadata accessor for EditMessageCATs(0);
    OUTLINED_FUNCTION_133();
    v0[39] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v17;
    *v17 = v18;
    v17[1] = sub_267E963F4;
    OUTLINED_FUNCTION_122();

    return sub_267D250F8();
  }

  else if (*MEMORY[0x277CD4438] == v16)
  {
    v21 = v0[24];
    type metadata accessor for EditMessageCATs(0);
    OUTLINED_FUNCTION_133();
    v0[42] = OUTLINED_FUNCTION_56_10();
    v22 = [*(v21 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v22)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v23 = sub_267EF92F8();

      sub_267BAF0DC(v23);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[43] = v24;
    *v24 = v25;
    v24[1] = sub_267E96654;
    OUTLINED_FUNCTION_122();

    return sub_267D249F0(v26, v27);
  }

  else if (*MEMORY[0x277CD4448] == v16)
  {
    type metadata accessor for EditMessageCATs(0);
    OUTLINED_FUNCTION_133();
    v0[45] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[46] = v29;
    *v29 = v30;
    v29[1] = sub_267E968D0;
    OUTLINED_FUNCTION_122();

    return sub_267D25048();
  }

  else if (*MEMORY[0x277CD4440] == v16)
  {
    type metadata accessor for EditMessageCATs(0);
    OUTLINED_FUNCTION_133();
    v0[48] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[49] = v32;
    *v32 = v33;
    v32[1] = sub_267E96B34;
    OUTLINED_FUNCTION_122();

    return sub_267D24F98();
  }

  else if (v16 == 10)
  {
    type metadata accessor for EditMessageCATs(0);
    sub_267EF7B68();
    v0[51] = sub_267EF78E8();
    type metadata accessor for MessagesApp(0);
    v35 = sub_267EF4648();
    v0[52] = sub_267EC814C(v35);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v36;
    *v36 = v37;
    v36[1] = sub_267E96D98;
    OUTLINED_FUNCTION_122();

    return sub_267D24C5C(v38, v39);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[24] + 16), *(v0[24] + 40));
    v41 = OUTLINED_FUNCTION_13_49();
    v42(v41);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[55] = v43;
    *v43 = v44;
    v43[1] = sub_267E97004;
    OUTLINED_FUNCTION_122();

    return MEMORY[0x2821BAEE0](v45, v46);
  }
}

uint64_t sub_267E963F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E964F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_76();
  v24(v23);
  OUTLINED_FUNCTION_1_84();
  v25 = OUTLINED_FUNCTION_10_0();
  v26(v25);
  v27 = *(v21 + 120);
  __swift_project_boxed_opaque_existential_0((v21 + 96), v27);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_4_68();
  v30 = OUTLINED_FUNCTION_42_23(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v30, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FED8(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v33 = OUTLINED_FUNCTION_11_50();
  v34(v33);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96654()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E9676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_76();
  v24(v23);
  OUTLINED_FUNCTION_1_84();
  v25 = OUTLINED_FUNCTION_10_0();
  v26(v25);
  v27 = *(v21 + 120);
  __swift_project_boxed_opaque_existential_0((v21 + 96), v27);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_4_68();
  v30 = OUTLINED_FUNCTION_42_23(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v30, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FED8(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v33 = OUTLINED_FUNCTION_11_50();
  v34(v33);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E968D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E969D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_76();
  v24(v23);
  OUTLINED_FUNCTION_1_84();
  v25 = OUTLINED_FUNCTION_10_0();
  v26(v25);
  v27 = *(v21 + 120);
  __swift_project_boxed_opaque_existential_0((v21 + 96), v27);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_4_68();
  v30 = OUTLINED_FUNCTION_42_23(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v30, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FED8(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v33 = OUTLINED_FUNCTION_11_50();
  v34(v33);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96B34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E96C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_76();
  v24(v23);
  OUTLINED_FUNCTION_1_84();
  v25 = OUTLINED_FUNCTION_10_0();
  v26(v25);
  v27 = *(v21 + 120);
  __swift_project_boxed_opaque_existential_0((v21 + 96), v27);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_4_68();
  v30 = OUTLINED_FUNCTION_42_23(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v30, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FED8(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v33 = OUTLINED_FUNCTION_11_50();
  v34(v33);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96D98()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E96EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_76();
  v24(v23);
  OUTLINED_FUNCTION_1_84();
  v25 = OUTLINED_FUNCTION_10_0();
  v26(v25);
  v27 = *(v21 + 120);
  __swift_project_boxed_opaque_existential_0((v21 + 96), v27);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_4_68();
  v30 = OUTLINED_FUNCTION_42_23(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v30, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FED8(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v33 = OUTLINED_FUNCTION_11_50();
  v34(v33);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E97004()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 448) = v0;

  sub_267B9FED8(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E97114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v21[28] + 32))(v21[35], v21[29], v21[27]);
  v22 = OUTLINED_FUNCTION_0_76();
  v23(v22);
  OUTLINED_FUNCTION_1_84();
  v24 = OUTLINED_FUNCTION_10_0();
  v25(v24);
  v26 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v26);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_4_68();
  v29 = OUTLINED_FUNCTION_42_23(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82(v29, v30, v31, MEMORY[0x277D84F90]);
  sub_267B9FED8(v26, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v26, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E9727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E97328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E973DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E97488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E9753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E975F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267E976AC()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags));
}

uint64_t sub_267E97730()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_267E977C0()
{
  sub_267E97730();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_28022CDC8;
  if (!qword_28022CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E9786C(uint64_t a1)
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267E97928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_267E979F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_267E97AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_267E97B80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267E9314C();
}

uint64_t sub_267E97C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_267E97CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_267E97DBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267E95C8C();
}

uint64_t sub_267E97E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

uint64_t sub_267E97F78(void *a1)
{
  v2 = [a1 editedContent];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E97FE8()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BAEBEC;
  v5 = OUTLINED_FUNCTION_26_0();

  return sub_267E94F78(v5, v6, v2, v3);
}

uint64_t sub_267E98090()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_267BAEBEC;

  return sub_267E941F8(v3, v4, v5, v7, v6);
}

uint64_t sub_267E98148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E98190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E98208(char a1)
{
  v2 = sub_267EF8E58();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF8EA8();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228810 != -1)
  {
    swift_once();
  }

  v16[1] = qword_28022CDF8;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_267E98C34;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C16DE4;
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);
  sub_267EF8E78();
  v18 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229188, qword_267F0DFB0);
  sub_267C16E7C(&qword_280229190, &qword_280229188, qword_267F0DFB0);
  sub_267EF99C8();
  MEMORY[0x26D609320](0, v12, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v2);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_267E984D8()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_267E98D60(v0);
  if (v2)
  {
    qword_28022CDE8 = result;
    unk_28022CDF0 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267E98524()
{
  v7 = sub_267EF9648();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_267EF9638();
  MEMORY[0x28223BE20](v3);
  v4 = sub_267EF8EA8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_267C10AB0();
  sub_267EF8E98();
  v8 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229040, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C16E7C(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_267EF9668();
  qword_28022CDF8 = result;
  return result;
}

uint64_t sub_267E98774()
{
  v0 = sub_267EF8FF8();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_267EF9028();
    v5 = v4;

    MEMORY[0x26D608E60](v3, v5);

    return 760434537;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_267E98814(char a1)
{
  v2 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v3 = [v2 Signals];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  v5 = "message-announced";
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xD000000000000031;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a1 == 1)
    {
      v7 = "essages.autosend-hint";
    }

    else
    {
      v7 = "on8@NSError16";
    }
  }

  else
  {
    v6 = 0xD000000000000028;
    v7 = "message-announced";
  }

  if (qword_280228808 != -1)
  {
    swift_once();
  }

  v8 = qword_28022CDE8;
  v9 = unk_28022CDF0;

  v10 = sub_267E98774();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v28 = sub_267E98C3C(v6, v7 | 0x8000000000000000, v8, v9, v10, v12, 0, 0xF000000000000000);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v19 = 0xD000000000000031;
      }

      else
      {
        v19 = 0xD000000000000025;
      }

      if (a1 == 1)
      {
        v20 = "essages.autosend-hint";
      }

      else
      {
        v20 = "on8@NSError16";
      }
    }

    else
    {
      v19 = 0xD000000000000028;
      v20 = "message-announced";
    }

    v21 = sub_267BA33E8(v19, v20 | 0x8000000000000000, &v29);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_267B93000, v15, v16, "#TipKitEventDonator Donating event '%s' to BiomeStreams", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D60A7B0](v18, -1, -1);
    MEMORY[0x26D60A7B0](v17, -1, -1);
  }

  else
  {
  }

  [v4 sendEvent_];
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v26 = 0xD000000000000031;
      }

      else
      {
        v26 = 0xD000000000000025;
      }

      if (a1 == 1)
      {
        v5 = "essages.autosend-hint";
      }

      else
      {
        v5 = "on8@NSError16";
      }
    }

    else
    {
      v26 = 0xD000000000000028;
    }

    v27 = sub_267BA33E8(v26, v5 | 0x8000000000000000, &v29);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_267B93000, v22, v23, "#TipKitEventDonator Donated event '%s'", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }
}

id sub_267E98C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_267EF8FF8();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_267EF8FF8();

  if (a6)
  {
LABEL_4:
    v15 = sub_267EF8FF8();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_267EF2BB8();
    sub_267BBE0C8(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

uint64_t sub_267E98D60(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E98DD0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_19_45(v1, v2, v3, v4, v5);
  v6 = sub_267EF4028();
  v0[4] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v0[5] = v7;
  v8 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_69(v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v9;
  *v9 = v10;
  v9[1] = sub_267E98ED4;
  OUTLINED_FUNCTION_18_39();

  return v11();
}

uint64_t sub_267E98ED4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E98FB8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_19_45(v1, v2, v3, v4, v5);
  v6 = sub_267EF6AC8();
  v0[4] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v0[5] = v7;
  v8 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_69(v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v9;
  *v9 = v10;
  v9[1] = sub_267E990BC;
  OUTLINED_FUNCTION_18_39();

  return v11();
}

uint64_t sub_267E990BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E991A0()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E99230()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_69(v1, v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_267E992E4;
  OUTLINED_FUNCTION_18_39();

  return v8();
}

uint64_t sub_267E992E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E993C8()
{
  OUTLINED_FUNCTION_12();
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E99430()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_69(v1, v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_267E994E4;
  OUTLINED_FUNCTION_18_39();

  return v8();
}

uint64_t sub_267E994E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E995C8()
{
  OUTLINED_FUNCTION_12();
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E99630()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[25] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[26] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF83E8();
  v1[27] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[28] = v5;
  v1[29] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF8178();
  v1[30] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v8);
  v1[33] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF2BA8();
  v1[34] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[35] = v10;
  v1[36] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v11);
  v1[37] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF48A8();
  v1[38] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[39] = v13;
  v1[40] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v14);
  v1[41] = OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267E99860()
{
  v10 = v0;
  v1 = v0[41];
  v2 = v0[24];
  sub_267EF7AE8();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v6 = sub_267DE77AC(v9, v1);
  v0[42] = v6;
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_267E9998C;

  return sub_267E00814(v6);
}

uint64_t sub_267E9998C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v2 + 352) = v1;
  *(v2 + 360) = v0;

  if (v0)
  {
    v3 = sub_267E9A554;
  }

  else
  {

    v3 = sub_267E99AA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267E99AA0()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#NoMeCardUnsupportedValueFlow publishing no meCard response", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v0[44];
  v6 = v0[24];

  sub_267EF3C88();
  *(swift_task_alloc() + 16) = v5;
  sub_267EF47A8();

  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v7);
  (*(v8 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v9 = sub_267DBF878();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v9)
  {
    v10 = v0[33];
    v11 = v0[34];
    sub_267EF2B88();
    result = __swift_getEnumTagSinglePayload(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[35];
      v14 = v0[36];
      v15 = v0[34];
      v16 = v0[31];
      v17 = v0[29];
      v34 = v0[30];
      v36 = v0[44];
      v19 = v0[27];
      v18 = v0[28];
      v20 = v0[26];
      v33 = v0[32];
      (*(v13 + 32))(v14, v0[33], v15);
      (*(v13 + 16))(v17, v14, v15);
      (*(v18 + 104))(v17, *MEMORY[0x277D5D6E0], v19);
      sub_267C7FE68();
      sub_267EFA028();
      sub_267DF9A30(v20);
      sub_267EF83F8();
      (*(v16 + 104))(v33, *MEMORY[0x277D5D358], v34);
      sub_267EF4198();
      swift_allocObject();
      v0[46] = sub_267EF4188();
      v0[20] = v34;
      v0[21] = sub_267DF9A98();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      (*(v16 + 16))(boxed_opaque_existential_0, v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v22 = swift_allocObject();
      v0[47] = v22;
      *(v22 + 16) = xmmword_267EFCA40;
      *(v22 + 32) = v36;
      v35 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
      v23 = v36;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[48] = v24;
      *v24 = v25;
      v24[1] = sub_267E99F98;
      v26 = v0[40];

      return v35(v0 + 2, v0 + 17, v22, v26);
    }
  }

  else
  {
    v27 = v0[44];
    sub_267EF4198();
    swift_allocObject();
    v0[49] = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v28 = swift_allocObject();
    v0[50] = v28;
    *(v28 + 16) = xmmword_267EFCA40;
    *(v28 + 32) = v27;
    v37 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
    v29 = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[51] = v30;
    *v30 = v31;
    v30[1] = sub_267E9A1A4;
    v32 = v0[40];

    return v37(v0 + 2, v28, v32);
  }

  return result;
}