uint64_t DefaultConversionLogger.runMetricsLogic(store:)()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1DA421314();
  v1[9] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_95();
  v1[12] = swift_task_alloc();
  v5 = sub_1DA4211F4();
  v1[13] = v5;
  OUTLINED_FUNCTION_5_2(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_40();
  v7 = sub_1DA4212E4();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_95();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF928, &qword_1DA429278);
  v1[23] = v9;
  OUTLINED_FUNCTION_5_2(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_40();
  v11 = sub_1DA421294();
  v1[26] = v11;
  OUTLINED_FUNCTION_5_2(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_95();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v13 = sub_1DA421184();
  v1[32] = v13;
  OUTLINED_FUNCTION_5_2(v13);
  v1[33] = v14;
  v1[34] = OUTLINED_FUNCTION_95();
  v1[35] = swift_task_alloc();
  v15 = sub_1DA4210B4();
  v1[36] = v15;
  OUTLINED_FUNCTION_5_2(v15);
  v1[37] = v16;
  v1[38] = OUTLINED_FUNCTION_95();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1DA3FD8F8()
{
  v207 = v0;
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v2 = OUTLINED_FUNCTION_20_4();
  v3(v2);
  sub_1DA421024();
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v5 = OUTLINED_FUNCTION_31_2();
  v6(v5, v4);
  sub_1DA421024();
  if (qword_1EE100EF8 != -1)
  {
LABEL_69:
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v7 = *(v0 + 296);
  v8 = sub_1DA421A94();
  __swift_project_value_buffer(v8, static Logger.conversionCategory);
  v9 = *(v7 + 16);
  OUTLINED_FUNCTION_166();
  v9();
  v10 = OUTLINED_FUNCTION_167();
  v176 = v9;
  (v9)(v10);
  v11 = sub_1DA421A74();
  v12 = sub_1DA421F64();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 304);
  v15 = v0;
  v16 = *(v0 + 296);
  v196 = v15;
  if (v13)
  {
    v198 = v12;
    v17 = OUTLINED_FUNCTION_90();
    v206[0] = OUTLINED_FUNCTION_92();
    *v17 = 136315394;
    sub_1DA4038FC();
    OUTLINED_FUNCTION_154();
    v18 = sub_1DA422364();
    v20 = v19;
    v21 = *(v16 + 8);
    v22 = OUTLINED_FUNCTION_50_0();
    v21(v22);
    sub_1DA3A5FE8(v18, v20, v206);
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_154();
    sub_1DA422364();
    OUTLINED_FUNCTION_89();
    v23 = OUTLINED_FUNCTION_81();
    v21(v23);
    v24 = OUTLINED_FUNCTION_60();
    sub_1DA3A5FE8(v24, v25, v26);
    OUTLINED_FUNCTION_78();

    *(v17 + 14) = v14;
    OUTLINED_FUNCTION_183(&dword_1DA39E000, v11, v198, "Start looking up engagement interactions from %s and suggestions shown interactions from %s", v168, v169);
    OUTLINED_FUNCTION_151(v27, v28, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    v21 = *(v16 + 8);
    v29 = OUTLINED_FUNCTION_81();
    v21(v29);
    v30 = OUTLINED_FUNCTION_50_0();
    v21(v30);
  }

  v175 = v21;
  v31 = v196;
  v196[42] = v21;
  v185 = v196[36];
  v189 = v196[40];
  v32 = v196[33];
  v33 = v196[34];
  v180 = v196[32];
  v199 = v196[31];
  v34 = v196[30];
  v191 = v196[29];
  v177 = v196[27];
  v201 = v196[26];
  v35 = v196[24];
  v36 = v196[25];
  v183 = v196[23];
  sub_1DA421174();
  sub_1DA421604();
  sub_1DA4215B4();
  sub_1DA421164();

  v37 = v32 + 8;
  v0 = *(v32 + 8);
  v196[43] = v0;
  v196[44] = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v0)(v33, v180);
  sub_1DA421284();
  sub_1DA421234();
  v178 = *(v177 + 8);
  v196[45] = v178;
  v196[46] = (v177 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v178(v34, v201);
  (v176)(v36, v189, v185);
  v174 = *MEMORY[0x1E69D29B8];
  v173 = *(v35 + 104);
  v173(v36);
  sub_1DA421274();
  v38 = *(v35 + 8);
  v38(v36, v183);
  sub_1DA421264();
  v178(v191, v201);
  v39 = OUTLINED_FUNCTION_50_0();
  (v178)(v39);
  v40 = *(v177 + 32);
  v40(v199, v34, v201);
  v41 = sub_1DA421224();
  v170 = v40;
  v43 = 0;
  v44 = v196[17];
  v192 = *(v41 + 16);
  v202 = (v196[14] + 8);
  v181 = (v44 + 32);
  v197 = (v44 + 8);
  v45 = MEMORY[0x1E69E7CC0];
  v172 = v0;
  v171 = v38;
  v186 = v41;
LABEL_9:
  v195 = v45;
  while (1)
  {
    v196[47] = v45;
    if (v192 == v43)
    {
      break;
    }

    if (v43 >= *(v41 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v46 = v196[22];
    OUTLINED_FUNCTION_49();
    v184 = v47;
    v0 = *(v49 + 72);
    (*(v49 + 16))(v46, v48 + v47 + v0 * v43);
    sub_1DA4212D4();
    sub_1DA4211A4();
    v50 = *v202;
    v51 = OUTLINED_FUNCTION_24();
    v50(v51);
    sub_1DA421524();
    v52 = sub_1DA421C64();

    if (v52)
    {
      sub_1DA4212D4();
      sub_1DA421194();
      v53 = OUTLINED_FUNCTION_24();
      v50(v53);
      sub_1DA421594();
      v54 = sub_1DA421C74();

      if ((v54 & 1) == 0)
      {
        v55 = *v181;
        (*v181)(v196[21], v196[22], v196[16]);
        v45 = v195;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v206[0] = v195;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = OUTLINED_FUNCTION_162();
          sub_1DA3B0560(v57, v58, v59);
          v45 = v206[0];
        }

        v61 = *(v45 + 16);
        v60 = *(v45 + 24);
        if (v61 >= v60 >> 1)
        {
          v64 = OUTLINED_FUNCTION_21_3(v60);
          sub_1DA3B0560(v64, v61 + 1, 1);
          v45 = v206[0];
        }

        ++v43;
        v62 = v196[21];
        v63 = v196[16];
        *(v45 + 16) = v61 + 1;
        v55(v45 + v184 + v61 * v0, v62, v63);
        v41 = v186;
        goto LABEL_9;
      }
    }

    (*v197)(v196[22], v196[16]);
    ++v43;
    v45 = v195;
    v41 = v186;
  }

  if (*(v45 + 16))
  {
    v65 = *(v45 + 16);

    v66 = v45;
    v67 = sub_1DA421A74();
    v68 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v68))
    {
      v69 = v196[16];
      v70 = OUTLINED_FUNCTION_90();
      v71 = OUTLINED_FUNCTION_139();
      v206[0] = v71;
      *v70 = 134218242;
      *(v70 + 4) = *(v66 + 16);

      *(v70 + 12) = 2080;
      v72 = MEMORY[0x1DA74D4B0](v66, v69);
      v74 = sub_1DA3A5FE8(v72, v73, v206);

      *(v70 + 14) = v74;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v67, v68, "number of suggestionsShownInteractions - %ld - %s", v168, v169);
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {
    }

    OUTLINED_FUNCTION_49();
    v169 = v84;
    v85 = &v84[v66];
    v187 = *(v86 + 72);
    v193 = *(v86 + 16);
    v87 = v65;
    do
    {
      (v193)(v31[20], v85, v31[16]);
      v88 = OUTLINED_FUNCTION_83();
      v193(v88);
      v89 = sub_1DA421A74();
      v90 = sub_1DA421F64();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = v31[15];
        v179 = v31[13];
        v190 = v87;
        v92 = OUTLINED_FUNCTION_90();
        v206[0] = OUTLINED_FUNCTION_92();
        *v92 = 136315394;
        sub_1DA4212B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF750, qword_1DA429290);
        v93 = sub_1DA421AF4();
        v182 = v90;
        v95 = v94;

        v96 = *v197;
        v97 = OUTLINED_FUNCTION_170();
        v96(v97);
        v98 = v93;
        v31 = v196;
        sub_1DA3A5FE8(v98, v95, v206);
        OUTLINED_FUNCTION_31_2();

        OUTLINED_FUNCTION_110();
        sub_1DA4212D4();
        v99 = sub_1DA4211C4();
        v100 = v91;
        v101 = v96;
        (*v202)(v100, v179);
        sub_1DA4213B4();
        sub_1DA421AD4();

        v102 = OUTLINED_FUNCTION_155();
        v96(v102);
        v103 = OUTLINED_FUNCTION_43_0();
        sub_1DA3A5FE8(v103, v104, v105);
        OUTLINED_FUNCTION_51_0();

        *(v92 + 14) = v99;
        _os_log_impl(&dword_1DA39E000, v89, v182, "SiriSuggestionsLightHousePlugin: suggestionShownInteraction parameter keys - %s, interaction - %s", v92, 0x16u);
        OUTLINED_FUNCTION_151(v106, v107, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_75();
        v87 = v190;
        OUTLINED_FUNCTION_17();
      }

      else
      {

        v101 = *v197;
        v108 = OUTLINED_FUNCTION_155();
        v101(v108);
        v109 = OUTLINED_FUNCTION_170();
        v101(v109);
      }

      v85 += v187;
      --v87;
    }

    while (v87);
    v204 = v101;
    v110 = v31[41];
    v111 = v31[36];
    v112 = v31[28];
    v113 = v31[26];
    v114 = v196[25];
    v115 = v196[23];
    sub_1DA421284();
    sub_1DA421554();
    sub_1DA421254();

    v116 = OUTLINED_FUNCTION_51();
    (v178)(v116);
    (v176)(v114, v110, v111);
    (v173)(v114, v174, v115);
    sub_1DA421274();
    v171(v114, v115);
    v178(v112, v113);
    v117 = OUTLINED_FUNCTION_43_0();
    v170(v117);
    v118 = sub_1DA421224();
    v196[48] = v118;
    v119 = *(v118 + 16);
    if (v119)
    {
      v120 = &v169[v118];
      v121 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v122 = v121;
        v123 = OUTLINED_FUNCTION_50_0();
        v193(v123);
        v124 = sub_1DA4212B4();
        v125 = sub_1DA4215A4();
        if (*(v124 + 16))
        {
          v127 = sub_1DA3B76EC(v125, v126);
          v129 = v128;

          v130 = MEMORY[0x1E69E7CC0];
          if (v129)
          {
            v130 = *(*(v124 + 56) + 8 * v127);
          }
        }

        else
        {

          v130 = MEMORY[0x1E69E7CC0];
        }

        (v204)(v196[18], v196[16]);
        v131 = *(v130 + 16);
        v0 = *(v122 + 16);
        v132 = v0 + v131;
        if (__OFADD__(v0, v131))
        {
          goto LABEL_66;
        }

        v121 = v122;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        if (!v133 || v132 > *(v122 + 24) >> 1)
        {
          if (v0 <= v132)
          {
            v134 = v0 + v131;
          }

          else
          {
            v134 = v0;
          }

          v121 = sub_1DA3A5C34(v133, v134, 1, v122);
        }

        if (*(v130 + 16))
        {
          if ((v121[3] >> 1) - v121[2] < v131)
          {
            goto LABEL_68;
          }

          swift_arrayInitWithCopy();

          if (v131)
          {
            v135 = v121[2];
            v136 = __OFADD__(v135, v131);
            v137 = v135 + v131;
            if (v136)
            {
              __break(1u);
              return result;
            }

            v121[2] = v137;
          }
        }

        else
        {

          if (v131)
          {
            goto LABEL_67;
          }
        }

        v120 += v187;
        if (!--v119)
        {
          goto LABEL_54;
        }
      }
    }

    v121 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v138 = v121[2];
    if (v138)
    {
      v139 = v196;
      v140 = v196[10];
      v142 = *(v140 + 16);
      v140 += 16;
      v141 = v142;
      OUTLINED_FUNCTION_49();
      v144 = v121 + v143;
      v200 = (v140 - 8);
      v205 = *(v140 + 56);
      v188 = v142;
      do
      {
        v145 = v139[9];
        (v141)(v139[12], v144, v145);
        v146 = OUTLINED_FUNCTION_60();
        v141(v146);
        v147 = sub_1DA421A74();
        v148 = sub_1DA421F64();
        v149 = OUTLINED_FUNCTION_147(v148);
        v150 = v139[12];
        if (v149)
        {
          v151 = OUTLINED_FUNCTION_90();
          v206[0] = OUTLINED_FUNCTION_92();
          *v151 = 136315394;
          sub_1DA4212F4();
          v194 = v147;
          v152 = *v200;
          v153 = OUTLINED_FUNCTION_170();
          v152(v153);
          v154 = OUTLINED_FUNCTION_169();
          sub_1DA3A5FE8(v154, v155, v156);
          OUTLINED_FUNCTION_3_8();

          *(v151 + 4) = v150;
          *(v151 + 12) = 2080;
          v157 = sub_1DA421304();
          sub_1DA4213B4();
          sub_1DA421AD4();

          v158 = OUTLINED_FUNCTION_155();
          v152(v158);
          v159 = OUTLINED_FUNCTION_169();
          sub_1DA3A5FE8(v159, v160, v161);
          OUTLINED_FUNCTION_3_8();

          *(v151 + 14) = v157;
          _os_log_impl(&dword_1DA39E000, v194, v145, "SiriSuggestionsLightHousePlugin: siriEngagementEntity - loggingId %s, fields - %s", v151, 0x16u);
          OUTLINED_FUNCTION_151(v162, v163, MEMORY[0x1E69E7CA0] + 8);
          OUTLINED_FUNCTION_75();
          v141 = v188;
          v139 = v196;
          OUTLINED_FUNCTION_17();
        }

        else
        {

          v164 = *v200;
          v165 = OUTLINED_FUNCTION_155();
          v164(v165);
          v166 = OUTLINED_FUNCTION_170();
          v164(v166);
        }

        v144 += v205;
        --v138;
      }

      while (v138);
    }

    else
    {

      v139 = v196;
    }

    v167 = swift_task_alloc();
    v139[49] = v167;
    *v167 = v139;
    v167[1] = sub_1DA3FEC0C;

    return sub_1DA3FF0B8();
  }

  else
  {

    v75 = sub_1DA421A74();
    v76 = sub_1DA421F64();
    v77 = os_log_type_enabled(v75, v76);
    v203 = v196[41];
    v78 = v196[36];
    if (v77)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DA39E000, v75, v76, "No suggestions shown interactions found - aborting the job ", v79, 2u);
      OUTLINED_FUNCTION_75();
    }

    v80 = OUTLINED_FUNCTION_38();
    (v178)(v80);
    v81 = OUTLINED_FUNCTION_74();
    v172(v81);
    v82 = OUTLINED_FUNCTION_167();
    v175(v82);
    (v175)(v203, v78);
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_4_0();

    return v83();
  }
}

uint64_t sub_1DA3FEC0C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 400) = v5;
  *v5 = v4;
  v5[1] = sub_1DA3FED74;
  OUTLINED_FUNCTION_13_5(*(v1 + 384));

  return sub_1DA402F2C();
}

uint64_t sub_1DA3FED74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3FEE74()
{
  v1 = v0[45];
  v14 = v0[42];
  v15 = v0[41];
  v12 = v0[43];
  v13 = v0[40];
  v11 = v0[36];
  v9 = v0[32];
  v10 = v0[35];
  v7 = v0[28];
  v8 = v0[31];
  v2 = v0[26];
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_1DA421994();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_55_0();
  sub_1DA421934();
  v3 = OUTLINED_FUNCTION_43_0();
  v4(v3);
  v1(v7, v2);
  v1(v8, v2);
  v12(v10, v9);
  v14(v13, v11);
  v14(v15, v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3FF0B8()
{
  OUTLINED_FUNCTION_16();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_1DA421374();
  v1[28] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[29] = v5;
  v1[30] = OUTLINED_FUNCTION_40();
  v6 = sub_1DA421314();
  v1[31] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v1[32] = v7;
  v1[33] = OUTLINED_FUNCTION_40();
  v8 = sub_1DA4213B4();
  v1[34] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[35] = v9;
  v1[36] = OUTLINED_FUNCTION_95();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v10);
  v1[40] = OUTLINED_FUNCTION_95();
  v1[41] = swift_task_alloc();
  v11 = sub_1DA4211F4();
  v1[42] = v11;
  OUTLINED_FUNCTION_5_2(v11);
  v1[43] = v12;
  v1[44] = OUTLINED_FUNCTION_95();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v13 = sub_1DA4210B4();
  v1[47] = v13;
  OUTLINED_FUNCTION_5_2(v13);
  v1[48] = v14;
  v1[49] = OUTLINED_FUNCTION_95();
  v1[50] = swift_task_alloc();
  v15 = sub_1DA4212E4();
  v1[51] = v15;
  OUTLINED_FUNCTION_5_2(v15);
  v1[52] = v16;
  v1[53] = OUTLINED_FUNCTION_95();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1DA3FF3D4(__n128 a1)
{
  v302 = v2;
  v7 = *(v2 + 200);
  v8 = *(v7 + 16);
  *(v2 + 512) = v8;
  if (!v8)
  {
LABEL_92:
    v257 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_120(v257);

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_26_2();

    __asm { BRAA            X1, X16 }
  }

  v289 = 0;
  v9 = 0;
  v270 = (v2 + 128);
  v273 = (v2 + 96);
  v278 = v2 + 160;
  v10 = *(v2 + 416);
  v11 = *(v2 + 216);
  v12 = *(*(v2 + 208) + 16);
  *(v2 + 520) = v12;
  v13 = *(v11 + 96);
  *(v2 + 528) = v13;
  *(v2 + 536) = *(v13 + 16);
  v14 = *(v10 + 80);
  *(v2 + 728) = v14;
  v15 = *(v10 + 72);
  *(v2 + 544) = v15;
  v279 = "ionEngagedInteraction";
  *(v2 + 732) = *MEMORY[0x1E69D2AE8];
  *(v2 + 736) = *MEMORY[0x1E69D2AD0];
  v16 = *(v10 + 16);
  *(v2 + 552) = v16;
  a1.n128_u64[0] = 136315394;
  v287 = a1;
  a1.n128_u64[0] = 136315138;
  v275 = a1;
  while (1)
  {
    *(v2 + 560) = v9;
    v17 = *(v2 + 504);
    v18 = *(v2 + 408);
    *(v2 + 568) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v17, v7 + ((v14 + 32) & ~v14) + v15 * v9, v18);
    if (v12)
    {
      break;
    }

    if (*(v2 + 536))
    {
      BYTE4(v276) = 0;
LABEL_77:
      v19 = v289;
      goto LABEL_78;
    }

LABEL_85:
    v251 = OUTLINED_FUNCTION_125();
    v252(v251);
    if (v1 == v12)
    {
      goto LABEL_92;
    }

    v9 = *(v2 + 560) + 1;
    v16 = *(v2 + 552);
    v15 = *(v2 + 544);
    LOBYTE(v14) = *(v2 + 728);
    v12 = *(v2 + 520);
    v10 = *(v2 + 416);
    v7 = *(v2 + 200);
  }

  HIDWORD(v276) = 0;
  v19 = 0;
  while (2)
  {
    v20 = *(v2 + 520);
    while (1)
    {
      if (v19 >= v20)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v21 = v19 + 1;
      *(v2 + 576) = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_99;
      }

      v22 = OUTLINED_FUNCTION_14_6();
      v23(v22);
      v24 = OUTLINED_FUNCTION_39();
      sub_1DA3FCD04(v24);
      v26 = v25;
      OUTLINED_FUNCTION_109(v25);
      if (v27)
      {
        break;
      }

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v70 = *(v2 + 424);
      v1 = *(v2 + 432);
      v71 = OUTLINED_FUNCTION_100();
      v72 = OUTLINED_FUNCTION_3_18(v71, static Logger.conversionCategory);
      v5(v72);
      v73 = OUTLINED_FUNCTION_13_6();
      v5(v73);
      v74 = sub_1DA421A74();
      v75 = sub_1DA421F64();
      OUTLINED_FUNCTION_7_1(v75);
      OUTLINED_FUNCTION_118();
      if (!v76)
      {

        v140 = *(v3 + 8);
        v3 += 8;
        v12 = v140;
        v141 = OUTLINED_FUNCTION_81();
        (v140)(v141);
        v142 = OUTLINED_FUNCTION_103();
        (v140)(v142);
        v139 = OUTLINED_FUNCTION_131();
        goto LABEL_27;
      }

      LODWORD(v298) = v75;
      v295 = *(v2 + 336);
      OUTLINED_FUNCTION_90();
      v297 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v297, v77, v78, v79, v80, v81, v82, v83, v84, v270, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v85);
      v296 = v74;
      sub_1DA4212D4();
      v284 = sub_1DA421194();
      v285 = v5;
      v86 = OUTLINED_FUNCTION_126();
      v87(v86);
      v88 = *(v3 + 8);
      v3 += 8;
      v291 = v88;
      v89 = OUTLINED_FUNCTION_103();
      v90(v89);
      sub_1DA3A5FE8(v284, v5, v301);
      OUTLINED_FUNCTION_135();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v91 = sub_1DA421194();
      v92 = OUTLINED_FUNCTION_102();
      v293(v92, v295);
      v93 = OUTLINED_FUNCTION_81();
      v57 = v88;
      (v88)(v93);
      v94 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v94, v1, v95);
      OUTLINED_FUNCTION_31_2();

      *(v70 + 14) = v91;
      v12 = v296;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v296, v298, "engagement - %s is not considered a conversion for suggestionShown - %s", v271, v274);
      v1 = v297;
      OUTLINED_FUNCTION_123(v96, v97, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v98 = v70;
      v99 = v4;
LABEL_24:
      v57(v98, v99);
LABEL_51:
      v20 = *(v2 + 520);
      v19 = v21;
      if (v21 == v20)
      {
        if (*(v2 + 536))
        {
          goto LABEL_77;
        }

LABEL_84:
        if ((v276 & 0x100000000) != 0)
        {
          goto LABEL_103;
        }

        goto LABEL_85;
      }
    }

    v300 = v21;
    v28 = *(v2 + 504);
    v30 = *(v2 + 392);
    v29 = *(v2 + 400);
    v5 = *(v2 + 336);
    v31 = *(v2 + 344);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v33 = *(v31 + 8);
    v32 = v31 + 8;
    *(v2 + 600) = v33;
    *(v2 + 608) = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34 = OUTLINED_FUNCTION_55_0();
    (v33)(v34);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v35 = OUTLINED_FUNCTION_55_0();
    v299 = v33;
    (v33)(v35);
    sub_1DA421054();
    *(v2 + 616) = v36;
    if (v36 > 1814400.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v37 = OUTLINED_FUNCTION_47_0();
      v38 = OUTLINED_FUNCTION_3_18(v37, static Logger.conversionCategory);
      v5(v38);
      v39 = OUTLINED_FUNCTION_13_6();
      v5(v39);
      v40 = sub_1DA421A74();
      v41 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v41);
      v4 = *(v2 + 488);
      v295 = *(v2 + 496);
      OUTLINED_FUNCTION_21_5();
      if (!v42)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_32_2();
      LODWORD(v284) = v29;
      v43 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v43, v44, v45, v46, v47, v48, v49, v50, v51, v270, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v28, v283, v284, v43, v52);
      v283 = v40;
      sub_1DA4212D4();
      sub_1DA421194();
      v53 = OUTLINED_FUNCTION_79();
      v54 = v5;
      v280 = v26;
      v5 = v299;
      (v299)(v53, v54);
      v3 = v30 + 8;
      v55 = OUTLINED_FUNCTION_67();
      v57 = v56;
      (v56)(v55);
      v58 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v58, v21, v59);
      OUTLINED_FUNCTION_137();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v60 = v32;
      sub_1DA421194();
      v61 = OUTLINED_FUNCTION_38_0();
      (v299)(v61);
      v62 = v280;
      v57(v291, v280);
      v63 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v63, v4, v64);
      OUTLINED_FUNCTION_84();

      *(v29 + 14) = v60;
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_122(v65, v66, v67, "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping");
LABEL_23:
      OUTLINED_FUNCTION_123(v68, v69, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v12 = *(v282 + 8);
      v1 = v297;
      (v12)(v296, v297);
      (v12)(v298, v297);
      v98 = v295;
      v99 = v62;
      goto LABEL_24;
    }

    if (v36 < 0.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v100 = *(v2 + 464);
      v28 = *(v2 + 472);
      v101 = OUTLINED_FUNCTION_100();
      v102 = OUTLINED_FUNCTION_3_18(v101, static Logger.conversionCategory);
      v5(v102);
      v103 = OUTLINED_FUNCTION_13_6();
      v5(v103);
      v40 = sub_1DA421A74();
      v104 = sub_1DA421F74();
      OUTLINED_FUNCTION_52_0(v104);
      v295 = *(v2 + 496);
      v4 = *(v2 + 472);
      OUTLINED_FUNCTION_21_5();
      if (!v105)
      {
LABEL_25:

        v128 = *(v30 + 8);
        v3 = v30 + 8;
        v12 = v128;
        (v128)(v291, v26);
        v129 = OUTLINED_FUNCTION_67();
        (v128)(v129);
        v130 = *(v28 + 8);
        v1 = v28 + 8;
        v4 = v297;
        v130(v296, v297);
        v131 = (v130)(v298, v297);
        v139 = OUTLINED_FUNCTION_164(v131, v132, v133, v134, v135, v136, v137, v138, v270, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v287.n128_i64[0], v287.n128_i64[1], v288, v289, v291, v293, v295);
LABEL_27:
        (v12)(v139);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_32_2();
      LODWORD(v284) = v100;
      v106 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_23_3(v106, v107, v108, v109, v110, v111, v112, v113, v114, v270, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v28, v283, v284, v106, v115);
      v283 = v40;
      sub_1DA4212D4();
      sub_1DA421194();
      v116 = OUTLINED_FUNCTION_79();
      v117 = v5;
      v280 = v26;
      v5 = v299;
      (v299)(v116, v117);
      v3 = v30 + 8;
      v118 = OUTLINED_FUNCTION_67();
      v57 = v119;
      (v119)(v118);
      v120 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v120, v21, v121);
      OUTLINED_FUNCTION_137();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v60 = v32;
      sub_1DA421194();
      v122 = OUTLINED_FUNCTION_38_0();
      (v299)(v122);
      v62 = v280;
      v57(v291, v280);
      v123 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v123, v4, v124);
      OUTLINED_FUNCTION_84();

      *(v100 + 14) = v60;
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_122(v125, v126, v127, "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping");
      goto LABEL_23;
    }

    v144 = *(v2 + 328);
    v143 = *(v2 + 336);
    v145 = *(v2 + 272);
    sub_1DA4212D4();
    sub_1DA4211C4();
    v146 = OUTLINED_FUNCTION_31_2();
    (v299)(v146, v143);
    OUTLINED_FUNCTION_143(v279 | 0x8000000000000000, v144);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, 1, v145);
    v148 = *(v2 + 328);
    if (EnumTagSinglePayload)
    {
      sub_1DA4039D4(*(v2 + 328));
      v149 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v293 = v32;
      v150 = *(v2 + 272);
      v151 = OUTLINED_FUNCTION_39();
      v297 = v153;
      v298 = v152;
      v153(v151);
      sub_1DA4039D4(v148);
      v154 = sub_1DA421384();
      v155 = OUTLINED_FUNCTION_24();
      v296 = v156;
      (v156)(v155);
      if (v154)
      {
        v145 = *(v154 + 16);
        v291 = v154;
        if (v145)
        {
          OUTLINED_FUNCTION_22_4();
          v295 = v157;
          v149 = MEMORY[0x1E69E7CC0];
          do
          {
            v5 = *(v2 + 304);
            v297(v5, v150, *(v2 + 272));
            v158 = v5;
            sub_1DA421394();
            OUTLINED_FUNCTION_89();
            v159 = OUTLINED_FUNCTION_38();
            (v296)(v159);
            if (v144)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_16_1();
                sub_1DA3A5B78();
                v149 = v163;
              }

              v161 = *(v149 + 16);
              v160 = *(v149 + 24);
              v5 = (v161 + 1);
              if (v161 >= v160 >> 1)
              {
                OUTLINED_FUNCTION_21_3(v160);
                OUTLINED_FUNCTION_173();
                sub_1DA3A5B78();
                v149 = v164;
              }

              *(v149 + 16) = v5;
              v162 = v149 + 16 * v161;
              *(v162 + 32) = v158;
              *(v162 + 40) = v144;
            }

            v150 += v295;
            --v145;
          }

          while (v145);
        }

        else
        {
          v149 = MEMORY[0x1E69E7CC0];
        }

        v21 = v300;
      }

      else
      {
        v149 = MEMORY[0x1E69E7CC0];
      }
    }

    *(v2 + 624) = v149;
    v165 = *(v2 + 368);
    v166 = *(v2 + 336);
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_77();
    (v299)(v165, v166);
    *(v2 + 160) = v165;
    *(v2 + 168) = v145;
    v167 = swift_task_alloc();
    v168 = OUTLINED_FUNCTION_12_7(v167, v278);
    v3 = sub_1DA412A3C(v168, v169, v149);
    *(v2 + 632) = v289;

    if (v3)
    {

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v171 = *(v2 + 448);
      v170 = *(v2 + 456);
      v172 = OUTLINED_FUNCTION_100();
      v173 = OUTLINED_FUNCTION_3_18(v172, static Logger.conversionCategory);
      v5(v173);
      v174 = OUTLINED_FUNCTION_13_6();
      v5(v174);
      v175 = sub_1DA421A74();
      v176 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v176);
      v295 = *(v2 + 496);
      v4 = *(v2 + 456);
      OUTLINED_FUNCTION_21_5();
      if (v177)
      {
        v283 = v170;
        v280 = v26;
        v178 = OUTLINED_FUNCTION_32_2();
        v284 = v175;
        v285 = OUTLINED_FUNCTION_92();
        v301[0] = v285;
        *v178 = v287.n128_u32[0];
        sub_1DA4212D4();
        sub_1DA421194();
        v179 = OUTLINED_FUNCTION_79();
        LODWORD(v282) = v171;
        (v299)(v179, v5);
        v180 = *(v3 + 8);
        v3 += 8;
        v5 = v280;
        v180(v4, v280);
        v181 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v181, v21, v182);
        OUTLINED_FUNCTION_137();
        v21 = v300;

        OUTLINED_FUNCTION_64();
        sub_1DA4212D4();
        sub_1DA421194();
        v183 = OUTLINED_FUNCTION_38_0();
        (v299)(v183);
        v180(v291, v280);
        v184 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v184, v4, v185);
        OUTLINED_FUNCTION_84();

        *(v178 + 14) = v32;
        OUTLINED_FUNCTION_183(&dword_1DA39E000, v175, v171, "matched engagement - %s is already processed for suggestionShown - %s", v270, v273);
        OUTLINED_FUNCTION_123(v186, v187, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_53_0();

        v12 = *(v170 + 8);
        v1 = v297;
        (v12)(v296, v297);
        (v12)(v298, v297);
        v180(v295, v280);
      }

      else
      {

        v188 = *(v3 + 8);
        v3 += 8;
        v12 = v188;
        (v188)(v291, v26);
        v189 = OUTLINED_FUNCTION_67();
        (v188)(v189);
        v190 = *(v170 + 8);
        v1 = v170 + 8;
        v4 = v297;
        v190(v296, v297);
        v191 = (v190)(v298, v297);
        v199 = OUTLINED_FUNCTION_164(v191, v192, v193, v194, v195, v196, v197, v198, v270, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v287.n128_i64[0], v287.n128_i64[1], v288, v289, v291, v293, v295);
        (v12)(v199);
      }

      v277 = v289;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_115();
    if (!v200)
    {
LABEL_63:
      OUTLINED_FUNCTION_30_3();
      sub_1DA4212D4();
      sub_1DA421194();
      v211 = OUTLINED_FUNCTION_51();
      v5(v211);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = *(v2 + 624);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v213 = v249;
      }

      v214 = v213[2];
      v215 = v214 + 1;
      if (v214 >= v213[3] >> 1)
      {
        sub_1DA3A5B78();
        v213 = v250;
      }

      OUTLINED_FUNCTION_160();
      v216 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
      sub_1DA3B04B0(v216, v214 + 1, 0);
      OUTLINED_FUNCTION_159();
      do
      {
        v217 = OUTLINED_FUNCTION_69();
        v218 = *v213;
        *v217 = *(v213 - 1);
        v217[1] = v218;
        (v3)();
        OUTLINED_FUNCTION_177();
        if (v214 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_99();
          v5 = *(v2 + 192);
        }

        v219 = OUTLINED_FUNCTION_56_0();
        v220(v219);
        v213 += 2;
        --v215;
      }

      while (v215);
      OUTLINED_FUNCTION_65();
      v292 = *(v2 + 392);
      v294 = *(v2 + 400);
      v221 = *(v2 + 384);
      v286 = *(v2 + 376);
      OUTLINED_FUNCTION_176();
      *v21 = v5;
      v222 = OUTLINED_FUNCTION_111();
      (v3)(v222);
      v223 = OUTLINED_FUNCTION_130();
      v224(v223);
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v32);
      v5 = v273;
      v228 = sub_1DA4212C4();
      v236 = OUTLINED_FUNCTION_179(v228, v229, v230, v231, v232, v233, v234, v235, v270);
      OUTLINED_FUNCTION_175(v279);
      v236(v3, 0);
      v300(v273, 0);
      v237 = OUTLINED_FUNCTION_116();
      v238(v237);
      v239 = *(v221 + 8);
      v4 = v221 + 8;
      v12 = v239;
      v1 = v286;
      v240 = (v239)(v292, v286);
      v248 = OUTLINED_FUNCTION_153(v240, v241, v242, v243, v244, v245, v246, v247, v272, v273, v275.n128_i64[0], v275.n128_i64[1], v276, v277, v278, v279, v280, v281, v282, v283, v284, v286, v287.n128_i64[0], v287.n128_i64[1], v288, v289, v292, v294);
      (v239)(v248);
      (*(v295 + 8))(v297, v296);
      if (v299 == v298)
      {
        v19 = *(v2 + 632);
        if (*(v2 + 536))
        {
          BYTE4(v276) = 1;
          v277 = v290;
LABEL_78:
          *(v2 + 688) = v19;
          while (1)
          {
            OUTLINED_FUNCTION_24_3();
            if (v201)
            {
              goto LABEL_100;
            }

            OUTLINED_FUNCTION_54_0(v19);
            if (OUTLINED_FUNCTION_184())
            {
              break;
            }

            OUTLINED_FUNCTION_28_2();
            if (v210)
            {
              v289 = *(v2 + 688);
              goto LABEL_84;
            }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_27();
          *(v2 + 704) = v253;
          *v253 = v254;
          OUTLINED_FUNCTION_1_15(v253);
          OUTLINED_FUNCTION_26_2();

          return sub_1DA3FBF84();
        }

LABEL_102:
        v289 = v19;
LABEL_103:
        OUTLINED_FUNCTION_59(v289);
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_36_1(&qword_1DA429410);
        v265 = swift_task_alloc();
        v266 = OUTLINED_FUNCTION_161(v265);
        *v266 = v267;
        OUTLINED_FUNCTION_4_16(v266);
        OUTLINED_FUNCTION_13_5(*(v2 + 240));
        OUTLINED_FUNCTION_26_2();

        __asm { BR              X3 }
      }

      v277 = v290;
      v289 = *(v2 + 632);
      v19 = *(v2 + 576);
      HIDWORD(v276) = 1;
      continue;
    }

    break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_114();
    if (v201)
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_142(v19);
    v202 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_172(v202);
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149(v203);
    OUTLINED_FUNCTION_157();
    v204 = *(v2 + 40);
    v3 = *(v2 + 48);
    OUTLINED_FUNCTION_186();
    v205 = OUTLINED_FUNCTION_20_4();
    if (v6 < v206(v205))
    {
      break;
    }

    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v207 = sub_1DA421A94();
    __swift_project_value_buffer(v207, static Logger.conversionCategory);
    OUTLINED_FUNCTION_31_2();

    v208 = sub_1DA421A74();
    sub_1DA421F64();
    OUTLINED_FUNCTION_185();
    if (OUTLINED_FUNCTION_182())
    {
      v3 = OUTLINED_FUNCTION_150();
      v209 = OUTLINED_FUNCTION_139();
      v301[0] = v209;
      OUTLINED_FUNCTION_97(v275.n128_f32[0]);
      OUTLINED_FUNCTION_158();

      *(v3 + 4) = v289;
      _os_log_impl(&dword_1DA39E000, v208, v204, "not considering a conversion for postConversionProcessor - %s)", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v209);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    OUTLINED_FUNCTION_94();
    if (v210)
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_113();
  }

  v260 = OUTLINED_FUNCTION_37();
  v261(v260);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v2 + 680) = v262;
  *v262 = v263;
  OUTLINED_FUNCTION_7_12(v262);
  OUTLINED_FUNCTION_26_2();

  return sub_1DA3F9ABC();
}

uint64_t sub_1DA400694()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_45_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

void sub_1DA4007D4()
{
  v280 = v1;
  v3 = *(v1 + 592);
  OUTLINED_FUNCTION_165();
  v4 = OUTLINED_FUNCTION_62();
  v5(v4);
  v6 = OUTLINED_FUNCTION_45_0();
  v7(v6);
  if (v2 == v3)
  {
    v244 = v1 + 128;
    v245 = v1 + 96;
    v247 = v1 + 160;
    v248 = "ionEngagedInteraction";
    *&v8 = 136315138;
    v241 = v8;
    while (1)
    {
      OUTLINED_FUNCTION_94();
      if (!v9)
      {
        OUTLINED_FUNCTION_113();
        goto LABEL_63;
      }

      while (2)
      {
        OUTLINED_FUNCTION_30_3();
        sub_1DA4212D4();
        v10 = sub_1DA421194();
        v12 = v11;
        v13 = OUTLINED_FUNCTION_51();
        MEMORY[0x28](v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v1 + 624);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_16_1();
          sub_1DA3A5B78();
          v15 = v209;
        }

        v16 = v15[2];
        v17 = v16 + 1;
        if (v16 >= v15[3] >> 1)
        {
          sub_1DA3A5B78();
          v15 = v210;
        }

        v18 = *(v1 + 280);
        v15[2] = v17;
        v19 = &v15[2 * v16];
        v19[4] = v10;
        v19[5] = v12;
        v20 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
        sub_1DA3B04B0(v20, v16 + 1, 0);
        v21 = *(v1 + 192);
        v22 = *(v18 + 104);
        v23 = v15 + 5;
        v246 = v256;
        do
        {
          v24 = OUTLINED_FUNCTION_69();
          v25 = *v23;
          *v24 = *(v23 - 1);
          v24[1] = v25;
          v22();
          *(v1 + 192) = v21;
          v26 = *(v21 + 16);
          v27 = *(v21 + 24);

          if (v26 >= v27 >> 1)
          {
            OUTLINED_FUNCTION_99();
            v21 = *(v1 + 192);
          }

          v29 = *(v1 + 280);
          v28 = *(v1 + 288);
          v30 = *(v1 + 272);
          *(v21 + 16) = v26 + 1;
          (*(v29 + 32))(v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v28, v30);
          v23 += 2;
          --v17;
        }

        while (v17);
        v274 = *(v1 + 520);
        v276 = *(v1 + 576);
        v270 = *(v1 + 496);
        v265 = *(v1 + 416);
        v267 = *(v1 + 408);
        v258 = *(v1 + 392);
        v261 = *(v1 + 400);
        v31 = *(v1 + 384);
        v257 = *(v1 + 376);
        v32 = *(v1 + 320);
        v33 = *(v1 + 296);
        v35 = *(v1 + 272);
        v34 = *(v1 + 280);

        *v33 = v21;
        v36 = OUTLINED_FUNCTION_111();
        (v22)(v36);
        (*(v34 + 16))(v32, v33, v35);
        OUTLINED_FUNCTION_47();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v35);
        v40 = v245;
        v255 = sub_1DA4212C4();
        v41 = v244;
        v42 = sub_1DA4211B4();
        sub_1DA3F82C0(v32, 0xD00000000000001BLL, v248 | 0x8000000000000000);
        (v42)(v244, 0);
        v255(v245, 0);
        v43 = OUTLINED_FUNCTION_116();
        v44(v43);
        v46 = *(v31 + 8);
        v45 = v31 + 8;
        v46(v258, v257);
        v46(v261, v257);
        (v265[1].isa)(v270, v267);
        if (v276 == v274)
        {
          v256 = *(v1 + 632);
          if (!*(v1 + 536))
          {
LABEL_81:
            OUTLINED_FUNCTION_59(v256);
            OUTLINED_FUNCTION_58_0();
            OUTLINED_FUNCTION_36_1(&qword_1DA429410);
            v232 = swift_task_alloc();
            v233 = OUTLINED_FUNCTION_161(v232);
            *v233 = v234;
            OUTLINED_FUNCTION_4_16(v233);
            OUTLINED_FUNCTION_63(*(v1 + 240));
            OUTLINED_FUNCTION_138();

            __asm { BR              X3 }
          }

LABEL_75:
          *(v1 + 688) = v256;
          while (1)
          {
            OUTLINED_FUNCTION_24_3();
            if (v213)
            {
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_54_0(v231);
            if (OUTLINED_FUNCTION_184())
            {
              break;
            }

            OUTLINED_FUNCTION_28_2();
            if (v9)
            {
              v256 = *(v1 + 688);
              goto LABEL_81;
            }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_27();
          *(v1 + 704) = v237;
          *v237 = v238;
          OUTLINED_FUNCTION_1_15(v237);
          OUTLINED_FUNCTION_138();

          sub_1DA3FBF84();
          return;
        }

        v47 = *(v1 + 576);
        v256 = *(v1 + 632);
        v48 = *(v1 + 520);
        while (1)
        {
          if (v47 >= v48)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v49 = (v47 + 1);
          *(v1 + 576) = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_91;
          }

          v50 = OUTLINED_FUNCTION_14_6();
          v51(v50);
          v52 = OUTLINED_FUNCTION_39();
          sub_1DA3FCD04(v52);
          v54 = OUTLINED_FUNCTION_109(v53);
          if (!v55)
          {

            if (qword_1EE100EF8 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_19_5();
            v32 = *(v1 + 424);
            v92 = *(v1 + 432);
            v93 = OUTLINED_FUNCTION_100();
            v94 = OUTLINED_FUNCTION_3_18(v93, static Logger.conversionCategory);
            (v42)(v94);
            v95 = OUTLINED_FUNCTION_13_6();
            (v42)(v95);
            v96 = sub_1DA421A74();
            v41 = sub_1DA421F64();
            OUTLINED_FUNCTION_7_1(v41);
            OUTLINED_FUNCTION_118();
            if (v97)
            {
              v278 = v49;
              v98 = *(v1 + 368);
              v272 = v41;
              v100 = *(v1 + 336);
              v99 = *(v1 + 344);
              OUTLINED_FUNCTION_90();
              v269 = OUTLINED_FUNCTION_34_1();
              OUTLINED_FUNCTION_23_3(v269, v101, v102, v103, v104, v105, v106, v107, v108, v241, *(&v241 + 1), v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v109);
              v265 = v96;
              sub_1DA4212D4();
              v254 = sub_1DA421194();
              v255 = v42;
              v111 = v110;
              v112 = *(v99 + 8);
              v41 = v99 + 8;
              v259 = v112;
              v112(v98, v100);
              v113 = *(v45 + 8);
              v45 += 8;
              v114 = OUTLINED_FUNCTION_103();
              v113(v114);
              sub_1DA3A5FE8(v254, v111, v279);
              OUTLINED_FUNCTION_135();

              OUTLINED_FUNCTION_11_8();
              v42 = v255;
              sub_1DA4212D4();
              v115 = sub_1DA421194();
              v116 = OUTLINED_FUNCTION_102();
              v49 = v278;
              v259(v116, v100);
              v117 = OUTLINED_FUNCTION_81();
              v113(v117);
              v118 = OUTLINED_FUNCTION_25_3();
              sub_1DA3A5FE8(v118, v92, v119);
              OUTLINED_FUNCTION_31_2();

              *(v32 + 14) = v115;
              OUTLINED_FUNCTION_122(&dword_1DA39E000, v265, v272, "engagement - %s is not considered a conversion for suggestionShown - %s", v242, v243);
              OUTLINED_FUNCTION_123(v120, v121, MEMORY[0x1E69E7CA0] + 8);
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_7_9();

              (v113)(v32, v40);
            }

            else
            {

              v154 = *(v45 + 8);
              v45 += 8;
              v155 = OUTLINED_FUNCTION_81();
              v154(v155);
              v156 = OUTLINED_FUNCTION_103();
              v154(v156);
              v157 = OUTLINED_FUNCTION_131();
              v154(v157);
            }

            goto LABEL_60;
          }

          v271 = v54;
          OUTLINED_FUNCTION_141(v54);
          sub_1DA4211E4();
          v56 = *(v42 + 8);
          v42 += 8;
          *(v1 + 600) = v56;
          *(v1 + 608) = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v57 = OUTLINED_FUNCTION_74();
          v56(v57);
          sub_1DA4212D4();
          sub_1DA4211E4();
          v58 = OUTLINED_FUNCTION_74();
          v275 = v56;
          v56(v58);
          v59 = sub_1DA421054();
          *(v1 + 616) = v60;
          v277 = v49;
          v268 = v42;
          if (v60 > 1814400.0)
          {

            if (qword_1EE100EF8 != -1)
            {
              OUTLINED_FUNCTION_0_9();
              swift_once();
            }

            v61 = OUTLINED_FUNCTION_47_0();
            v62 = OUTLINED_FUNCTION_3_18(v61, static Logger.conversionCategory);
            (v42)(v62);
            v63 = OUTLINED_FUNCTION_13_6();
            (v42)(v63);
            v64 = sub_1DA421A74();
            v65 = sub_1DA421F64();
            OUTLINED_FUNCTION_7_1(v65);
            v40 = *(v1 + 488);
            v32 = *(v1 + 496);
            v66 = *(v1 + 480);
            OUTLINED_FUNCTION_129();
            if (!v67)
            {
              goto LABEL_33;
            }

            OUTLINED_FUNCTION_29_2();
            v262 = v32;
            v68 = OUTLINED_FUNCTION_34_1();
            OUTLINED_FUNCTION_23_3(v68, v69, v70, v71, v72, v73, v74, v75, v76, v241, *(&v241 + 1), v244, v245, v246, v247, v248, v249, v250, v251, v252, v64, v68, v255, v77);
            sub_1DA4212D4();
            sub_1DA421194();
            v249 = v66;
            v250 = v42;
            v79 = v78;
            v80 = OUTLINED_FUNCTION_35_1();
            v49(v80);
            v45 += 8;
            v81 = OUTLINED_FUNCTION_55_0();
            v42 = v82;
            v82(v81);
            v83 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v83, v79, v84);
            OUTLINED_FUNCTION_137();

            OUTLINED_FUNCTION_17_6();
            sub_1DA4212D4();
            v85 = v65;
            sub_1DA421194();
            OUTLINED_FUNCTION_77();
            (v49)(v65, v251);
            v86 = v250;
            (v42)(v249, v250);
            v87 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v87, v40, v88);
            OUTLINED_FUNCTION_84();

            *(v32 + 14) = v65;
            OUTLINED_FUNCTION_133();
            OUTLINED_FUNCTION_122(v89, v90, v91, "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping");
            goto LABEL_32;
          }

          if (v60 >= 0.0)
          {
            break;
          }

          if (qword_1EE100EF8 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          OUTLINED_FUNCTION_19_5();
          v122 = OUTLINED_FUNCTION_100();
          v123 = OUTLINED_FUNCTION_3_18(v122, static Logger.conversionCategory);
          (v42)(v123);
          v124 = OUTLINED_FUNCTION_13_6();
          (v42)(v124);
          v64 = sub_1DA421A74();
          v125 = sub_1DA421F74();
          OUTLINED_FUNCTION_7_1(v125);
          v32 = *(v1 + 496);
          v66 = *(v1 + 464);
          v40 = *(v1 + 472);
          OUTLINED_FUNCTION_129();
          if (!v126)
          {
LABEL_33:

            v151 = *(v45 + 8);
            v45 += 8;
            v150 = v151;
            v151(v66, v42);
            v152 = OUTLINED_FUNCTION_55_0();
            (v151)(v152);
            v153 = *(v41 + 8);
            v41 += 8;
            v153(v271, v49);
            v153(v265, v49);
            v150(v32, v42);
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_29_2();
          v262 = v32;
          v127 = OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_23_3(v127, v128, v129, v130, v131, v132, v133, v134, v135, v241, *(&v241 + 1), v244, v245, v246, v247, v248, v249, v250, v251, v252, v64, v127, v255, v136);
          sub_1DA4212D4();
          sub_1DA421194();
          v249 = v66;
          v250 = v42;
          v138 = v137;
          v139 = OUTLINED_FUNCTION_35_1();
          v49(v139);
          v45 += 8;
          v140 = OUTLINED_FUNCTION_55_0();
          v42 = v141;
          v141(v140);
          v142 = OUTLINED_FUNCTION_25_3();
          sub_1DA3A5FE8(v142, v138, v143);
          OUTLINED_FUNCTION_137();

          OUTLINED_FUNCTION_17_6();
          sub_1DA4212D4();
          v85 = v125;
          sub_1DA421194();
          OUTLINED_FUNCTION_77();
          (v49)(v125, v251);
          v86 = v250;
          (v42)(v249, v250);
          v144 = OUTLINED_FUNCTION_25_3();
          sub_1DA3A5FE8(v144, v40, v145);
          OUTLINED_FUNCTION_84();

          *(v32 + 14) = v125;
          OUTLINED_FUNCTION_133();
          OUTLINED_FUNCTION_122(v146, v147, v148, "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping");
LABEL_32:
          v40 = v254;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_7_9();

          v149 = OUTLINED_FUNCTION_128();
          (v85)(v149);
          (v85)(v265, v32);
          (v42)(v262, v86);
LABEL_59:
          v49 = v277;
LABEL_60:
          v48 = *(v1 + 520);
          v47 = v49;
          if (v49 == v48)
          {
            if (!*(v1 + 536))
            {
              goto LABEL_81;
            }

            goto LABEL_75;
          }
        }

        OUTLINED_FUNCTION_144(v59);
        sub_1DA4211C4();
        v158 = OUTLINED_FUNCTION_31_2();
        v275(v158, v32);
        OUTLINED_FUNCTION_143(v248 | 0x8000000000000000, v41);

        v159 = OUTLINED_FUNCTION_145();
        v160 = *(v1 + 328);
        if (v159)
        {
          sub_1DA4039D4(*(v1 + 328));
          v161 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v162 = *(v1 + 312);
          v41 = *(v1 + 272);
          v163 = *(v1 + 280);
          v164 = OUTLINED_FUNCTION_13_6();
          v266 = v165;
          v165(v164);
          sub_1DA4039D4(v160);
          v166 = sub_1DA421384();
          v263 = *(v163 + 8);
          v263(v162, v41);
          if (v166)
          {
            v167 = *(v166 + 16);
            v255 = v166;
            if (v167)
            {
              OUTLINED_FUNCTION_22_4();
              v260 = v168;
              v161 = MEMORY[0x1E69E7CC0];
              do
              {
                v169 = *(v1 + 304);
                v266(v169, v162, *(v1 + 272));
                sub_1DA421394();
                OUTLINED_FUNCTION_105();
                v170 = OUTLINED_FUNCTION_74();
                (v263)(v170);
                if (v41)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_16_1();
                    sub_1DA3A5B78();
                    v161 = v174;
                  }

                  v172 = *(v161 + 16);
                  v171 = *(v161 + 24);
                  if (v172 >= v171 >> 1)
                  {
                    OUTLINED_FUNCTION_21_3(v171);
                    OUTLINED_FUNCTION_72();
                    sub_1DA3A5B78();
                    v161 = v175;
                  }

                  *(v161 + 16) = v172 + 1;
                  v173 = v161 + 16 * v172;
                  *(v173 + 32) = v169;
                  *(v173 + 40) = v41;
                }

                v162 += v260;
                --v167;
              }

              while (v167);
            }

            else
            {
              v161 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v161 = MEMORY[0x1E69E7CC0];
          }

          v42 = v268;
        }

        *(v1 + 624) = v161;
        v176 = *(v1 + 368);
        sub_1DA4212D4();
        sub_1DA421194();
        OUTLINED_FUNCTION_105();
        v177 = OUTLINED_FUNCTION_24();
        (v275)(v177);
        *(v1 + 160) = v176;
        *(v1 + 168) = v41;
        v178 = swift_task_alloc();
        v179 = OUTLINED_FUNCTION_12_7(v178, v247);
        v0 = v256;
        LOBYTE(v176) = sub_1DA412A3C(v179, v180, v161);
        *(v1 + 632) = v256;

        if (v176)
        {

          if (qword_1EE100EF8 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_19_5();
          v181 = OUTLINED_FUNCTION_100();
          v182 = OUTLINED_FUNCTION_3_18(v181, static Logger.conversionCategory);
          (v42)(v182);
          v183 = OUTLINED_FUNCTION_13_6();
          (v42)(v183);
          v184 = sub_1DA421A74();
          v185 = sub_1DA421F64();
          v186 = OUTLINED_FUNCTION_7_1(v185);
          v265 = *(v1 + 496);
          v32 = *(v1 + 448);
          v40 = *(v1 + 456);
          v42 = *(v1 + 408);
          v187 = *(v1 + 416);
          v188 = *(v1 + 400);
          v273 = *(v1 + 392);
          v189 = *(v1 + 376);
          v41 = *(v1 + 384);
          if (v186)
          {
            v264 = *(v1 + 400);
            v190 = OUTLINED_FUNCTION_29_2();
            v253 = v184;
            v254 = OUTLINED_FUNCTION_92();
            v279[0] = v254;
            *v190 = 136315394;
            sub_1DA4212D4();
            sub_1DA421194();
            v249 = v32;
            v250 = v42;
            v192 = v191;
            v193 = OUTLINED_FUNCTION_35_1();
            v189(v193);
            v45 = v187 + 8;
            v194 = OUTLINED_FUNCTION_55_0();
            v42 = v195;
            v195(v194);
            v196 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v196, v192, v197);
            OUTLINED_FUNCTION_3_8();

            OUTLINED_FUNCTION_110();
            sub_1DA4212D4();
            sub_1DA421194();
            OUTLINED_FUNCTION_77();
            (v189)(v185, v251);
            (v42)(v249, v250);
            v198 = OUTLINED_FUNCTION_25_3();
            sub_1DA3A5FE8(v198, v40, v199);
            OUTLINED_FUNCTION_84();

            *(v190 + 14) = v185;
            OUTLINED_FUNCTION_133();
            _os_log_impl(v200, v201, v202, "matched engagement - %s is already processed for suggestionShown - %s", v190, 0x16u);
            v32 = v254;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_9();
            OUTLINED_FUNCTION_17();

            v203 = OUTLINED_FUNCTION_128();
            (v185)(v203);
            (v185)(v264, v254);
            (v42)(v265, v250);
          }

          else
          {

            v205 = *(v187 + 8);
            v45 = v187 + 8;
            v204 = v205;
            v205(v32, v42);
            v206 = OUTLINED_FUNCTION_55_0();
            (v205)(v206);
            v207 = *(v41 + 8);
            v41 += 8;
            v207(v273, v189);
            v207(v188, v189);
            v204(v265, v42);
          }

          v246 = v256;
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_115();
        if (!v208)
        {
          continue;
        }

        break;
      }

LABEL_63:
      OUTLINED_FUNCTION_114();
      if (v213)
      {
LABEL_93:
        __break(1u);
        return;
      }

      v214 = *(v1 + 616);
      sub_1DA3B2454(v211 + 40 * v212 + 32, v1 + 16);
      v215 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_172(v215);
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      OUTLINED_FUNCTION_149(v216);
      OUTLINED_FUNCTION_157();
      v217 = *(v1 + 40);
      OUTLINED_FUNCTION_186();
      v218 = OUTLINED_FUNCTION_20_4();
      if (v214 < v219(v218))
      {
        v240 = *(v1 + 256);

        v224 = 0;
        v227 = *(v240 + 80);
        *(v1 + 740) = v227;
        v226 = *(v240 + 72);
        *(v1 + 656) = v226;
        v225 = *(v240 + 16);
        *(v1 + 664) = v225;
        goto LABEL_71;
      }

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v220 = sub_1DA421A94();
      __swift_project_value_buffer(v220, static Logger.conversionCategory);
      OUTLINED_FUNCTION_31_2();

      v221 = sub_1DA421A74();
      sub_1DA421F64();
      OUTLINED_FUNCTION_185();
      if (OUTLINED_FUNCTION_182())
      {
        v222 = OUTLINED_FUNCTION_150();
        v223 = OUTLINED_FUNCTION_139();
        v279[0] = v223;
        OUTLINED_FUNCTION_97(*&v241);
        OUTLINED_FUNCTION_158();

        *(v222 + 4) = v0;
        _os_log_impl(&dword_1DA39E000, v221, v217, "not considering a conversion for postConversionProcessor - %s)", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v223);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_17();
      }

      else
      {
      }
    }
  }

  v224 = *(v1 + 672) + 1;
  v225 = *(v1 + 664);
  v226 = *(v1 + 656);
  LOBYTE(v227) = *(v1 + 740);
LABEL_71:
  *(v1 + 672) = v224;
  v225(*(v1 + 264), *(v1 + 584) + ((v227 + 32) & ~v227) + v226 * v224, *(v1 + 248));
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 680) = v228;
  *v228 = v229;
  OUTLINED_FUNCTION_7_12(v228);
  OUTLINED_FUNCTION_138();

  sub_1DA3F9ABC();
}

uint64_t sub_1DA4019BC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1DA401AA0()
{
  v2 = v0[67];
  OUTLINED_FUNCTION_165();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v3 = OUTLINED_FUNCTION_62();
  v4(v3);
  v5 = OUTLINED_FUNCTION_45_0();
  v6(v5);
  if (v1 == v2)
  {
LABEL_7:
    OUTLINED_FUNCTION_59(v0[86]);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_36_1(&qword_1DA429410);
    v17 = v10;
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_161(v11);
    *v12 = v13;
    OUTLINED_FUNCTION_4_16(v12);
    v14 = OUTLINED_FUNCTION_63(v0[30]);

    v17(v14, 0xD000000000000024);
  }

  else
  {
    OUTLINED_FUNCTION_152();
    while (1)
    {
      OUTLINED_FUNCTION_24_3();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_54_0(v7);
      if (OUTLINED_FUNCTION_184())
      {
        break;
      }

      OUTLINED_FUNCTION_28_2();
      if (v9)
      {
        goto LABEL_7;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    v0[88] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_1_15(v15);

    sub_1DA3FBF84();
  }
}

uint64_t sub_1DA401C14()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA401CF8()
{
  v361 = v3;
  v283 = v3 + 128;
  v289 = v3 + 96;
  v314 = v3 + 160;
  v9 = (*(*(v3 + 232) + 8))(*(v3 + 240), *(v3 + 224));
  v346 = *(v3 + 712);
  v318 = "ionEngagedInteraction";
  v9.n128_u64[0] = 136315394;
  v345 = v9;
  v9.n128_u64[0] = 136315138;
  v294 = v9;
  while (1)
  {
    v10 = OUTLINED_FUNCTION_125();
    v11(v10);
    if (v0 == v1)
    {
      v266 = OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_120(v266);

      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_26_2();

      __asm { BRAA            X1, X16 }
    }

    v12 = *(v3 + 560) + 1;
    *(v3 + 560) = v12;
    v13 = *(v3 + 552);
    v1 = *(v3 + 520);
    v14 = *(v3 + 504);
    v15 = *(v3 + 408);
    v16 = *(v3 + 200) + ((*(v3 + 728) + 32) & ~*(v3 + 728)) + *(v3 + 544) * v12;
    *(v3 + 568) = (*(v3 + 416) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v14, v16, v15);
    if (v1)
    {
      break;
    }

    if (!*(v3 + 536))
    {
      continue;
    }

    BYTE4(v305) = 0;
LABEL_75:
    v17 = v346;
LABEL_76:
    v2 = 0;
    *(v3 + 688) = v17;
    v4 = 32;
    do
    {
      OUTLINED_FUNCTION_24_3();
      if (v218)
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_54_0(v17);
      if (OUTLINED_FUNCTION_184())
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_27();
        *(v3 + 704) = v269;
        *v269 = v270;
        OUTLINED_FUNCTION_1_15(v269);
        OUTLINED_FUNCTION_26_2();

        return sub_1DA3FBF84();
      }

      OUTLINED_FUNCTION_28_2();
    }

    while (!v227);
    v346 = *(v3 + 688);
LABEL_82:
    if ((v305 & 0x100000000) != 0)
    {
LABEL_100:
      OUTLINED_FUNCTION_59(v346);
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_36_1(&qword_1DA429410);
      v278 = swift_task_alloc();
      v279 = OUTLINED_FUNCTION_161(v278);
      *v279 = v280;
      OUTLINED_FUNCTION_4_16(v279);
      OUTLINED_FUNCTION_63(*(v3 + 240));
      OUTLINED_FUNCTION_26_2();

      __asm { BR              X3 }
    }
  }

  HIDWORD(v305) = 0;
  v17 = 0;
  while (2)
  {
    v18 = *(v3 + 520);
    while (1)
    {
      if (v17 >= v18)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v19 = v17 + 1;
      *(v3 + 576) = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_96;
      }

      v20 = OUTLINED_FUNCTION_14_6();
      v21(v20);
      v22 = OUTLINED_FUNCTION_39();
      sub_1DA3FCD04(v22);
      v24 = OUTLINED_FUNCTION_109(v23);
      if (v25)
      {
        break;
      }

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 424);
      v0 = *(v3 + 432);
      v68 = OUTLINED_FUNCTION_100();
      v69 = OUTLINED_FUNCTION_3_18(v68, static Logger.conversionCategory);
      (v7)(v69);
      v70 = OUTLINED_FUNCTION_13_6();
      (v7)(v70);
      v71 = sub_1DA421A74();
      v4 = sub_1DA421F64();
      OUTLINED_FUNCTION_7_1(v4);
      OUTLINED_FUNCTION_118();
      if (!v72)
      {

        v147 = *(v5 + 8);
        v5 += 8;
        v1 = v147;
        v148 = OUTLINED_FUNCTION_81();
        (v147)(v148);
        v149 = OUTLINED_FUNCTION_103();
        (v147)(v149);
        v146 = OUTLINED_FUNCTION_131();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_163();
      v357 = v4;
      v4 = *(v3 + 344);
      v351 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      v355 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v355, v73, v74, v75, v76, v77, v78, v79, v80, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v332, v334, log, v341, v81);
      v352 = v71;
      sub_1DA4212D4();
      log = sub_1DA421194();
      v341 = v7;
      v82 = OUTLINED_FUNCTION_126();
      v83(v82);
      v84 = *(v5 + 8);
      v5 += 8;
      v85 = OUTLINED_FUNCTION_103();
      v84(v85);
      sub_1DA3A5FE8(log, v7, v360);
      OUTLINED_FUNCTION_135();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v86 = sub_1DA421194();
      v87 = OUTLINED_FUNCTION_102();
      v19 = v353;
      (v348)(v87, v351);
      v88 = OUTLINED_FUNCTION_81();
      v84(v88);
      v89 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v89, v0, v90);
      OUTLINED_FUNCTION_31_2();

      *(v2 + 14) = v86;
      v1 = v352;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v352, v357, "engagement - %s is not considered a conversion for suggestionShown - %s", v286, v292);
      v0 = v355;
      OUTLINED_FUNCTION_123(v91, v92, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      (v84)(v2, v6);
LABEL_52:
      v18 = *(v3 + 520);
      v17 = v19;
      if (v19 == v18)
      {
        if (!*(v3 + 536))
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }
    }

    v356 = v24;
    v26 = v19;
    OUTLINED_FUNCTION_141(v24);
    sub_1DA4211E4();
    v27 = *(v7 + 8);
    v7 += 8;
    *(v3 + 600) = v27;
    *(v3 + 608) = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = OUTLINED_FUNCTION_74();
    v27(v28);
    sub_1DA4212D4();
    sub_1DA4211E4();
    v29 = OUTLINED_FUNCTION_74();
    v359 = v27;
    v27(v29);
    v30 = sub_1DA421054();
    *(v3 + 616) = v31;
    v354 = v7;
    if (v31 > 1814400.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v32 = OUTLINED_FUNCTION_47_0();
      v33 = OUTLINED_FUNCTION_3_18(v32, static Logger.conversionCategory);
      (v7)(v33);
      v34 = OUTLINED_FUNCTION_13_6();
      (v7)(v34);
      v35 = sub_1DA421A74();
      v36 = sub_1DA421F64();
      OUTLINED_FUNCTION_52_0(v36);
      v6 = *(v3 + 488);
      v0 = *(v3 + 480);
      OUTLINED_FUNCTION_106();
      if (!v37)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_163();
      v38 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      LODWORD(log) = v2;
      v39 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v39, v40, v41, v42, v43, v44, v45, v46, v47, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v38, v334, log, v39, v48);
      v335 = v35;
      sub_1DA4212D4();
      sub_1DA421194();
      v49 = OUTLINED_FUNCTION_88();
      v38(v49);
      v50 = *(v5 + 8);
      v5 += 8;
      v51 = OUTLINED_FUNCTION_67();
      v52 = v50(v51);
      OUTLINED_FUNCTION_180(v52, v53, v54, v55, v56, v57, v58, v59, v284, v290, v295, v298, v302, v306, v310, v315, v319, v323);
      OUTLINED_FUNCTION_31_2();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v60 = v19;
      sub_1DA421194();
      OUTLINED_FUNCTION_105();
      v61 = v19;
      v19 = v353;
      (v38)(v61, v333);
      v62 = v330;
      v6(v328, v330);
      v63 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v63, v4, v64);
      OUTLINED_FUNCTION_51_0();

      *(v2 + 14) = v60;
      v65 = v335;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v335, loga, "time difference is greater than 21 days between engagement - %s and suggestionShown - %s skipping");
LABEL_25:
      OUTLINED_FUNCTION_123(v66, v67, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_7_9();

      v124 = *(v7 + 8);
      v7 += 8;
      v1 = v124;
      v0 = v356;
      v125 = (v124)(v352, v356);
      v133 = OUTLINED_FUNCTION_153(v125, v126, v127, v128, v129, v130, v131, v132, v285, v291, v296, v299, v303, v307, v311, v316, v320, v324, v328, v330, v333, v335, loga, v342, v345.n128_i64[0], v345.n128_i64[1], v346, v348);
      (v124)(v133);
      v6(v351, v62);
      goto LABEL_52;
    }

    if (v31 < 0.0)
    {

      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 464);
      v93 = OUTLINED_FUNCTION_100();
      v94 = OUTLINED_FUNCTION_3_18(v93, static Logger.conversionCategory);
      (v7)(v94);
      v95 = OUTLINED_FUNCTION_13_6();
      (v7)(v95);
      v35 = sub_1DA421A74();
      v96 = sub_1DA421F74();
      OUTLINED_FUNCTION_52_0(v96);
      v0 = *(v3 + 464);
      v6 = *(v3 + 472);
      OUTLINED_FUNCTION_106();
      if (!v97)
      {
LABEL_26:

        v134 = *(v5 + 8);
        v5 += 8;
        v1 = v134;
        v135 = OUTLINED_FUNCTION_43_0();
        (v134)(v135);
        v136 = OUTLINED_FUNCTION_67();
        (v134)(v136);
        v137 = OUTLINED_FUNCTION_168();
        (v2)(v137);
        v138 = (v2)(v348, v6);
        v146 = OUTLINED_FUNCTION_164(v138, v139, v140, v141, v142, v143, v144, v145, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v332, v334, log, v341, v345.n128_i64[0], v345.n128_i64[1], v346, v348, v351);
LABEL_28:
        (v1)(v146);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_163();
      v98 = *(v3 + 336);
      OUTLINED_FUNCTION_90();
      LODWORD(log) = v2;
      v99 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_73(v99, v100, v101, v102, v103, v104, v105, v106, v107, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v98, v334, log, v99, v108);
      v335 = v35;
      sub_1DA4212D4();
      sub_1DA421194();
      v109 = OUTLINED_FUNCTION_88();
      v98(v109);
      v110 = *(v5 + 8);
      v5 += 8;
      v111 = OUTLINED_FUNCTION_67();
      v112 = v110(v111);
      OUTLINED_FUNCTION_180(v112, v113, v114, v115, v116, v117, v118, v119, v287, v293, v297, v300, v304, v308, v312, v317, v321, v325);
      OUTLINED_FUNCTION_31_2();

      OUTLINED_FUNCTION_11_8();
      sub_1DA4212D4();
      v120 = v19;
      sub_1DA421194();
      OUTLINED_FUNCTION_105();
      v121 = v19;
      v19 = v353;
      (v98)(v121, v333);
      v62 = v330;
      v6(v328, v330);
      v122 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v122, v4, v123);
      OUTLINED_FUNCTION_51_0();

      *(v2 + 14) = v120;
      v65 = v335;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v335, loga, "engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping");
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_144(v30);
    sub_1DA4211C4();
    v150 = OUTLINED_FUNCTION_31_2();
    v359(v150, v2);
    OUTLINED_FUNCTION_143(v318 | 0x8000000000000000, v4);

    v151 = OUTLINED_FUNCTION_145();
    v152 = *(v3 + 328);
    if (v151)
    {
      sub_1DA4039D4(*(v3 + 328));
      v153 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v353 = v19;
      v154 = *(v3 + 272);
      v26 = *(v3 + 280) + 16;
      v155 = OUTLINED_FUNCTION_39();
      v352 = v156;
      (v156)(v155);
      sub_1DA4039D4(v152);
      v157 = sub_1DA421384();
      v158 = OUTLINED_FUNCTION_24();
      v351 = v159;
      v159(v158);
      if (v157)
      {
        v160 = *(v157 + 16);
        v341 = v157;
        if (v160)
        {
          OUTLINED_FUNCTION_22_4();
          v348 = v161;
          v153 = MEMORY[0x1E69E7CC0];
          do
          {
            v162 = *(v3 + 304);
            v163 = OUTLINED_FUNCTION_154();
            (v352)(v163);
            sub_1DA421394();
            OUTLINED_FUNCTION_89();
            v164 = OUTLINED_FUNCTION_55_0();
            (v351)(v164);
            if (v5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_16_1();
                sub_1DA3A5B78();
                v153 = v168;
              }

              v166 = *(v153 + 16);
              v165 = *(v153 + 24);
              if (v166 >= v165 >> 1)
              {
                OUTLINED_FUNCTION_21_3(v165);
                sub_1DA3A5B78();
                v153 = v169;
              }

              *(v153 + 16) = v166 + 1;
              v167 = v153 + 16 * v166;
              *(v167 + 32) = v162;
              *(v167 + 40) = v5;
            }

            v154 += v348;
            --v160;
          }

          while (v160);
        }

        else
        {
          v153 = MEMORY[0x1E69E7CC0];
        }

        v7 = v354;
      }

      else
      {
        v153 = MEMORY[0x1E69E7CC0];
      }
    }

    *(v3 + 624) = v153;
    v170 = *(v3 + 368);
    v171 = *(v3 + 336);
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_89();
    v359(v170, v171);
    *(v3 + 160) = v170;
    *(v3 + 168) = v5;
    v172 = swift_task_alloc();
    v173 = OUTLINED_FUNCTION_12_7(v172, v314);
    LOBYTE(v171) = sub_1DA412A3C(v173, v174, v153);
    *(v3 + 632) = v346;

    if (v171)
    {

      if (qword_1EE100EF8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_19_5();
      v2 = *(v3 + 448);
      v175 = OUTLINED_FUNCTION_100();
      v176 = OUTLINED_FUNCTION_3_18(v175, static Logger.conversionCategory);
      (v7)(v176);
      v177 = OUTLINED_FUNCTION_13_6();
      (v7)(v177);
      v178 = sub_1DA421A74();
      v179 = sub_1DA421F64();
      v180 = OUTLINED_FUNCTION_52_0(v179);
      v351 = *(v3 + 496);
      v0 = *(v3 + 448);
      v6 = *(v3 + 456);
      v4 = *(v3 + 408);
      v181 = *(v3 + 416);
      v182 = *(v3 + 400);
      v352 = *(v3 + 392);
      v7 = *(v3 + 384);
      v358 = *(v3 + 376);
      if (v180)
      {
        OUTLINED_FUNCTION_163();
        v336 = v7;
        v183 = *(v3 + 336);
        v331 = v183;
        v349 = v182;
        v184 = OUTLINED_FUNCTION_90();
        logb = v178;
        v343 = OUTLINED_FUNCTION_92();
        v360[0] = v343;
        *v184 = v345.n128_u32[0];
        sub_1DA4212D4();
        v313 = sub_1DA421194();
        v326 = v0;
        v185 = OUTLINED_FUNCTION_102();
        v186 = v183;
        v7 = v354;
        LODWORD(v332) = v2;
        v359(v185, v186);
        v187 = *(v181 + 8);
        v5 = v181 + 8;
        v188 = OUTLINED_FUNCTION_67();
        v187(v188);
        v6 = v187;
        sub_1DA3A5FE8(v313, v0, v360);
        OUTLINED_FUNCTION_31_2();

        OUTLINED_FUNCTION_110();
        sub_1DA4212D4();
        v189 = v19;
        sub_1DA421194();
        OUTLINED_FUNCTION_105();
        v190 = v19;
        v19 = v353;
        v359(v190, v331);
        v2 = v4;
        (v187)(v0, v4);
        v191 = OUTLINED_FUNCTION_25_3();
        sub_1DA3A5FE8(v191, v4, v192);
        OUTLINED_FUNCTION_51_0();

        *(v184 + 14) = v189;
        _os_log_impl(&dword_1DA39E000, logb, v332, "matched engagement - %s is already processed for suggestionShown - %s", v184, 0x16u);
        OUTLINED_FUNCTION_123(v193, v194, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_17();

        v4 = v336 + 8;
        v1 = *(v336 + 8);
        v0 = v358;
        v195 = (v1)(v352, v358);
        v203 = OUTLINED_FUNCTION_153(v195, v196, v197, v198, v199, v200, v201, v202, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v313, v314, v318, v326, v2, v331, v332, v336, logb, v343, v345.n128_i64[0], v345.n128_i64[1], v346, v349);
        (v1)(v203);
        (v187)(v351, v2);
      }

      else
      {

        v204 = *(v181 + 8);
        v5 = v181 + 8;
        v1 = v204;
        v205 = OUTLINED_FUNCTION_43_0();
        (v204)(v205);
        v206 = OUTLINED_FUNCTION_67();
        (v204)(v206);
        v207 = OUTLINED_FUNCTION_168();
        (v2)(v207);
        v208 = (v2)(v182, v6);
        v216 = OUTLINED_FUNCTION_164(v208, v209, v210, v211, v212, v213, v214, v215, v283, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v332, v334, log, v341, v345.n128_i64[0], v345.n128_i64[1], v346, v348, v351);
        (v204)(v216);
      }

      v309 = v346;
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_115();
    if (!v217)
    {
LABEL_64:
      OUTLINED_FUNCTION_30_3();
      sub_1DA4212D4();
      sub_1DA421194();
      v228 = OUTLINED_FUNCTION_51();
      (v7)(v228);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v230 = *(v3 + 624);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v230 = v264;
      }

      v231 = v230[2];
      v4 = v231 + 1;
      if (v231 >= v230[3] >> 1)
      {
        sub_1DA3A5B78();
        v230 = v265;
      }

      OUTLINED_FUNCTION_160();
      v232 = OUTLINED_FUNCTION_112(MEMORY[0x1E69E7CC0]);
      sub_1DA3B04B0(v232, v231 + 1, 0);
      OUTLINED_FUNCTION_159();
      do
      {
        v233 = OUTLINED_FUNCTION_69();
        v234 = *v230;
        *v233 = *(v230 - 1);
        v233[1] = v234;
        (v5)();
        OUTLINED_FUNCTION_177();
        if (v231 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_99();
          v7 = *(v3 + 192);
        }

        v235 = OUTLINED_FUNCTION_56_0();
        v236(v235);
        v230 += 2;
        --v4;
      }

      while (v4);
      OUTLINED_FUNCTION_65();
      v350 = *(v3 + 400);
      v237 = *(v3 + 384);
      logc = *(v3 + 376);
      v344 = *(v3 + 392);
      OUTLINED_FUNCTION_176();
      *v26 = v7;
      v238 = OUTLINED_FUNCTION_111();
      (v5)(v238);
      v239 = OUTLINED_FUNCTION_130();
      v240(v239);
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v241, v242, v243, v19);
      v7 = v289;
      v244 = sub_1DA4212C4();
      v2 = OUTLINED_FUNCTION_179(v244, v245, v246, v247, v248, v249, v250, v251, v283);
      OUTLINED_FUNCTION_175(v318);
      (v2)(v5, 0);
      v359(v289, 0);
      v252 = OUTLINED_FUNCTION_116();
      v253(v252);
      v254 = *(v237 + 8);
      v6 = (v237 + 8);
      v1 = v254;
      v0 = logc;
      v255 = (v254)(v344, logc);
      v263 = OUTLINED_FUNCTION_153(v255, v256, v257, v258, v259, v260, v261, v262, v288, v289, v294.n128_i64[0], v294.n128_i64[1], v301, v305, v309, v314, v318, v322, v327, v329, v332, v334, logc, v344, v345.n128_i64[0], v345.n128_i64[1], v346, v350);
      (v254)(v263);
      (*(v351 + 8))(v353, v352);
      if (v356 == v354)
      {
        v17 = *(v3 + 632);
        if (*(v3 + 536))
        {
          BYTE4(v305) = 1;
          v309 = v347;
          goto LABEL_76;
        }

LABEL_99:
        v346 = v17;
        goto LABEL_100;
      }

      v309 = v347;
      v346 = *(v3 + 632);
      v17 = *(v3 + 576);
      HIDWORD(v305) = 1;
      continue;
    }

    break;
  }

  while (1)
  {
    OUTLINED_FUNCTION_114();
    if (v218)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_142(v17);
    v219 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_172(v219);
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149(v220);
    OUTLINED_FUNCTION_157();
    v221 = *(v3 + 40);
    v5 = *(v3 + 48);
    OUTLINED_FUNCTION_186();
    v222 = OUTLINED_FUNCTION_20_4();
    if (v8 < v223(v222))
    {
      break;
    }

    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v224 = sub_1DA421A94();
    __swift_project_value_buffer(v224, static Logger.conversionCategory);
    OUTLINED_FUNCTION_31_2();

    v225 = sub_1DA421A74();
    sub_1DA421F64();
    OUTLINED_FUNCTION_185();
    if (OUTLINED_FUNCTION_182())
    {
      v5 = OUTLINED_FUNCTION_150();
      v226 = OUTLINED_FUNCTION_139();
      v360[0] = v226;
      OUTLINED_FUNCTION_97(v294.n128_f32[0]);
      OUTLINED_FUNCTION_158();

      *(v5 + 4) = v346;
      _os_log_impl(&dword_1DA39E000, v225, v221, "not considering a conversion for postConversionProcessor - %s)", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v226);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_17();
    }

    else
    {
    }

    OUTLINED_FUNCTION_94();
    if (v227)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_113();
  }

  v273 = OUTLINED_FUNCTION_37();
  v274(v273);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v3 + 680) = v275;
  *v275 = v276;
  OUTLINED_FUNCTION_7_12(v275);
  OUTLINED_FUNCTION_26_2();

  return sub_1DA3F9ABC();
}

uint64_t sub_1DA402F2C()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1DA421374();
  v1[9] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_40();
  v5 = sub_1DA4212E4();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_2(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_95();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

void sub_1DA403034()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = *(*(v0 + 64) + 104);
    *(v0 + 144) = v5;
    v6 = *(v5 + 16);
    *(v0 + 152) = v6;
    v7 = *(v4 + 80);
    *(v0 + 208) = v7;
    v8 = *(v4 + 72);
    *(v0 + 160) = v8;
    v9 = *(v4 + 16);
    *(v0 + 168) = v9;
    while (1)
    {
      *(v0 + 176) = v3;
      v10 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = (v4 + 16);
      (v9)(*(v0 + 128), v1 + ((v7 + 32) & ~v7) + v8 * v3, v11);
      v13 = OUTLINED_FUNCTION_39();
      v9(v13);
      if (v6)
      {
        break;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_86();
      v12(v17);
      v18 = OUTLINED_FUNCTION_45_0();
      v12(v18);
      if (v9 == v11)
      {
        goto LABEL_14;
      }

      v9 = *(v0 + 168);
      v3 = *(v0 + 176) + 1;
      LOBYTE(v7) = *(v0 + 208);
      v6 = *(v0 + 152);
      v8 = *(v0 + 160);
      v4 = *(v0 + 104);
      v1 = *(v0 + 56);
    }

    v11 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (v15)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_98(v14);
      if ((sub_1DA3F98F8(v10, (v0 + 16)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_93();
      if (v16)
      {
        goto LABEL_9;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    *(v0 + 192) = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_8_15(v19);

    sub_1DA3F9398();
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_4_0();

    v21();
  }
}

uint64_t sub_1DA403218()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1DA4032FC()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[23] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = OUTLINED_FUNCTION_62();
  v5(v4);
  v6 = OUTLINED_FUNCTION_45_0();
  v7(v6);
  if (v3 == v1)
  {
LABEL_7:
    sub_1DA3F9288();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_36_1(&qword_1DA429410);
    v16 = v11;
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_1DA4034A4;
    v13 = OUTLINED_FUNCTION_63(v0[11]);

    v16(v13, 0xD000000000000025);
  }

  else
  {
    OUTLINED_FUNCTION_152();
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_98(v8);
      if ((sub_1DA3F98F8(v2, v0 + 2) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_93();
      if (v10)
      {
        goto LABEL_7;
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_27();
    v0[24] = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_8_15(v14);

    sub_1DA3F9398();
  }
}

uint64_t sub_1DA4034A4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1DA403588()
{
  (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
  do
  {
LABEL_2:
    v4 = OUTLINED_FUNCTION_86();
    v3(v4);
    v5 = OUTLINED_FUNCTION_45_0();
    v3(v5);
    if (v2 == v0)
    {

      OUTLINED_FUNCTION_4_0();

      v15();
      return;
    }

    v6 = *(v1 + 168);
    v7 = *(v1 + 176) + 1;
    *(v1 + 176) = v7;
    v2 = *(v1 + 152);
    v8 = *(v1 + 120);
    v0 = *(v1 + 96);
    v3 = (*(v1 + 104) + 16);
    (v6)(*(v1 + 128), *(v1 + 56) + ((*(v1 + 208) + 32) & ~*(v1 + 208)) + *(v1 + 160) * v7, v0);
    v9 = OUTLINED_FUNCTION_39();
    v6(v9);
  }

  while (!v2);
  v0 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_71();
    if (v11)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_98(v10);
    if ((sub_1DA3F98F8(v8, (v1 + 16)) & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_93();
    if (v12)
    {
      goto LABEL_2;
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 192) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_8_15(v13);

  sub_1DA3F9398();
}

void *DefaultConversionLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v0;
}

uint64_t DefaultConversionLogger.__deallocating_deinit()
{
  DefaultConversionLogger.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

uint64_t sub_1DA4037B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DA3B76EC(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5A8, &qword_1DA429400);
    sub_1DA4221A4();

    v8 = *(v14 + 56);
    v9 = sub_1DA4213B4();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1DA4221C4();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1DA4213B4();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_1DA4038FC()
{
  result = qword_1EE100F18;
  if (!qword_1EE100F18)
  {
    sub_1DA4210B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100F18);
  }

  return result;
}

uint64_t sub_1DA403964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DA4223A4() & 1;
  }
}

uint64_t sub_1DA4039D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA403A5C(uint64_t a1, char a2)
{
  v5 = sub_1DA421374();
  OUTLINED_FUNCTION_5_2(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1DA3F8640(a1, a2 & 1, v2 + v10, v12, v13);
}

void OUTLINED_FUNCTION_21_5()
{
  v2 = v0[50];
  *(v1 - 152) = v0[49];
  *(v1 - 144) = v0[47];
  *(v1 - 136) = v2;
}

__n128 OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  *(v25 - 112) = a1;
  result = a24;
  *v24 = a24.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_3()
{
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37()
{
  *(v1 + 740) = *(v0 + 80);
  *(v1 + 656) = *(v0 + 72);
  *(v1 + 664) = *(v0 + 16);
  *(v1 + 672) = 0;
  return *(v1 + 264);
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_1DA421A94();
}

BOOL OUTLINED_FUNCTION_52_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_53_0()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_54_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3B2454(a1 + v2, v1 + 56);
}

unint64_t OUTLINED_FUNCTION_56_0()
{
  v4 = *(v2 + 280);
  *(v3 + 16) = v1;
  return v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_59@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 712) = a1;

  return sub_1DA3F9288();
}

void OUTLINED_FUNCTION_65()
{
  v2 = v0[72];
  *(v1 - 136) = v0[65];
  *(v1 - 128) = v2;
  *(v1 - 144) = v0[62];
  *(v1 - 152) = v0[51];
}

void OUTLINED_FUNCTION_66()
{

  JUMPOUT(0x1DA74E430);
}

__n128 OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26)
{
  *(v27 - 112) = a1;
  result = a26;
  *v26 = a26.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_75()
{

  JUMPOUT(0x1DA74E430);
}

void OUTLINED_FUNCTION_82()
{
  v2 = v0[21];
  *(v1 - 168) = v0[22];
  *(v1 - 160) = v2;
  v3 = v0[19];
  *(v1 - 152) = v0[20];
  *(v1 - 144) = v3;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_97(float a1)
{
  *v3 = a1;

  return sub_1DA3A5FE8(v2, v1, (v4 - 112));
}

uint64_t OUTLINED_FUNCTION_98@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3B2454(a1 + v2, v1 + 16);
}

void OUTLINED_FUNCTION_99()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1DA3B04B0(v4, v2, 1);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_1DA421A94();
}

uint64_t OUTLINED_FUNCTION_109(uint64_t result)
{
  *(v1 + 584) = result;
  *(v1 + 592) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_119()
{
}

uint64_t OUTLINED_FUNCTION_120(uint64_t a1)
{
  v6 = v2[36];
  v5 = v2[37];
  *(v3 - 152) = v1;
  *(v3 - 144) = v5;
  v7 = v2[33];
  *(v3 - 136) = v6;
  *(v3 - 128) = v7;
  *(v3 - 120) = v2[30];
}

void OUTLINED_FUNCTION_122(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_1DA4211F4();
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1)
{

  return sub_1DA4212D4();
}

uint64_t OUTLINED_FUNCTION_142@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3B2454(a1 + 40 * v1 + 32, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_143@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1DA3EA2EC(0xD00000000000001BLL, a1, v2, a2);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1)
{

  return sub_1DA4212D4();
}

uint64_t OUTLINED_FUNCTION_145()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

BOOL OUTLINED_FUNCTION_147(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1)
{

  return sub_1DA421BB4();
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_160()
{
  *(v4 + 16) = v3;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_172(uint64_t result)
{
  v2 = v1[6];
  v1[22] = result;
  v1[23] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_175@<X0>(uint64_t a1@<X8>)
{

  return sub_1DA3F82C0(v1, 0xD00000000000001BLL, a1 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_176()
{
}

double OUTLINED_FUNCTION_177()
{
  *(v0 + 192) = v1;

  return result;
}

uint64_t OUTLINED_FUNCTION_179(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 120) = a1;

  return sub_1DA4211B4();
}

unint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_1DA3A5FE8(a18, v18, (v19 - 112));
}

BOOL OUTLINED_FUNCTION_182()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_183(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_1DA3FB144(v0, (v1 + 56));
}

uint64_t OUTLINED_FUNCTION_185()
{
}

void *OUTLINED_FUNCTION_186()
{

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
}

uint64_t static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v5[48] = a2;
  v5[49] = a3;
  v5[47] = a1;
  v6 = sub_1DA4214A4();
  v5[52] = v6;
  v7 = *(v6 - 8);
  v5[53] = v7;
  v5[54] = *(v7 + 64);
  v5[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1DA404AE4()
{
  v1 = *(v0 + 456);
  v47 = *(v0 + 448);
  v2 = *(v0 + 416);
  v46 = v1;
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  v6 = [objc_allocWithZone(MEMORY[0x1E69977D0]) init];
  *(v0 + 464) = v6;
  type metadata accessor for SiriSuggestionsIntelligence.AppUsageFeatureExtractor();
  sub_1DA3A7ED4(v5, v0 + 16);
  sub_1DA3A7ED4(v4, v0 + 56);
  v7 = SiriSuggestionsIntelligence.AppUsageFeatureExtractor.__allocating_init(clock:configProvider:)((v0 + 16), (v0 + 56));
  *(v0 + 472) = v7;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v8 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsAssetQuerier();
  *(v0 + 96) = swift_allocObject();
  *(v0 + 120) = v8;
  *(v0 + 128) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsAssetQuerier;
  type metadata accessor for SiriSuggestionsIntelligence.DefaultNetworkConnectionService();
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_1DA4213E4();
  v10 = v6;
  sub_1DA4213D4();
  sub_1DA4213C4();

  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  *(v0 + 488) = swift_initStackObject();
  v11 = SiriSuggestionsIntelligence.FeatureServiceBuilder.init()();
  v12 = sub_1DA405A00(v7, v11, type metadata accessor for SiriSuggestionsIntelligence.AppUsageFeatureExtractor, &protocol witness table for SiriSuggestionsIntelligence.AppUsageFeatureExtractor);

  sub_1DA3A7ED4(v5, v0 + 176);
  type metadata accessor for SiriSuggestionsIntelligence.TimeFeatureExtractor();
  v13 = swift_allocObject();
  sub_1DA3A1FF8((v0 + 176), v13 + 16);
  v14 = OUTLINED_FUNCTION_0_19();
  v17 = sub_1DA405A00(v14, v12, v15, v16);

  sub_1DA3A7ED4(v3, v0 + 216);
  sub_1DA3A7ED4(v0 + 96, v0 + 256);
  v18 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService();
  v19 = OUTLINED_FUNCTION_5_11(v18);
  *(v19 + 16) = sub_1DA405928;
  *(v19 + 24) = 0;
  sub_1DA3A1FF8((v0 + 256), v19 + 32);
  *(v0 + 320) = v18;
  *(v0 + 328) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService;
  *(v0 + 296) = v19;
  v20 = type metadata accessor for SiriSuggestionsIntelligence.BuildVersionService();
  v21 = OUTLINED_FUNCTION_5_11(v20);
  *(v21 + 56) = sub_1DA405928;
  *(v21 + 64) = 0;
  sub_1DA3A1FF8((v0 + 296), v21 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.DeviceFeatureExtractor();
  swift_allocObject();
  sub_1DA412AEC((v0 + 216), v21, sub_1DA405928, 0);
  OUTLINED_FUNCTION_1_16();
  v25 = sub_1DA405A00(v22, v17, v23, v24);

  sub_1DA405BF4(sub_1DA405928, 0, v10, v9, v5, v4);
  OUTLINED_FUNCTION_2_17();
  v29 = sub_1DA405A00(v26, v25, v27, v28);

  sub_1DA405EB0(v46, v47);
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v47, 1, v2) != 1)
  {
    v31 = *(v0 + 440);
    v32 = *(v0 + 424);
    v33 = *(v0 + 416);
    v34 = *(v32 + 32);
    v34(v31, *(v0 + 448), v33);
    v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v36 = swift_allocObject();
    v34(v36 + v35, v31, v33);
    v37 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
    v30 = OUTLINED_FUNCTION_4_17(v37);
    *(v30 + 16) = sub_1DA405F20;
    *(v30 + 24) = v36;
  }

  v38 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
  v39 = v38;
  *(v0 + 360) = v38;
  *(v0 + 368) = &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor;
  if (!v30)
  {
    v30 = OUTLINED_FUNCTION_4_17(v38);
    *(v30 + 16) = sub_1DA3D1E2C;
    *(v30 + 24) = 0;
  }

  v40 = *(v0 + 408);
  *(v0 + 336) = v30;
  v41 = __swift_project_boxed_opaque_existential_1((v0 + 336), v39);
  v42 = sub_1DA3B1874(v41, v29, v39, &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor();
  v43 = swift_allocObject();
  *(v43 + 16) = v40;

  *(v0 + 496) = sub_1DA405AB8(v43, v42);

  v44 = swift_task_alloc();
  *(v0 + 504) = v44;
  *v44 = v0;
  v44[1] = sub_1DA404FE0;

  return SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)();
}

uint64_t sub_1DA404FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);

  sub_1DA3D9980(v3);
  __swift_destroy_boxed_opaque_existential_0((v1 + 96));
  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA405174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SiriSuggestionsIntelligence.createFeatureService(clock:accountDetailsProvider:appUsageExtractor:deviceStateServiceProvider:usersegmentOverride:assetQuerier:brightnessClient:networkConnectionService:configProvider:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 336) = v15;
  *(v8 + 344) = v16;
  *(v8 + 320) = v14;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 272) = a3;
  *(v8 + 280) = a4;
  *(v8 + 256) = a1;
  *(v8 + 264) = a2;
  v9 = sub_1DA4214A4();
  *(v8 + 352) = v9;
  v10 = *(v9 - 8);
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 + 64);
  *(v8 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  *(v8 + 384) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1DA405310()
{
  v58 = *(v0 + 384);
  v59 = *(v0 + 352);
  v55 = *(v0 + 328);
  v56 = *(v0 + 336);
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v57 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v53 = *(v0 + 312);
  v54 = v5;
  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  *(v0 + 392) = swift_initStackObject();
  v7 = SiriSuggestionsIntelligence.FeatureServiceBuilder.init()();
  v9 = v3[3];
  v8 = v3[4];
  v10 = __swift_project_boxed_opaque_existential_1(v3, v9);
  v11 = sub_1DA3B1874(v10, v7, v9, *(v8 + 8));

  sub_1DA3A7ED4(v5, v0 + 56);
  type metadata accessor for SiriSuggestionsIntelligence.TimeFeatureExtractor();
  v12 = swift_allocObject();
  sub_1DA3A1FF8((v0 + 56), v12 + 16);
  v13 = OUTLINED_FUNCTION_0_19();
  v16 = sub_1DA405A00(v13, v11, v14, v15);

  sub_1DA3A7ED4(v6, v0 + 96);
  sub_1DA3A7ED4(v53, v0 + 136);
  v17 = type metadata accessor for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService();
  v18 = OUTLINED_FUNCTION_5_11(v17);
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;
  sub_1DA3A1FF8((v0 + 136), v18 + 32);
  *(v0 + 176) = v18;
  *(v0 + 200) = v17;
  *(v0 + 208) = &protocol witness table for SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService;
  v19 = type metadata accessor for SiriSuggestionsIntelligence.BuildVersionService();
  v20 = OUTLINED_FUNCTION_5_11(v19);
  *(v20 + 56) = v4;
  *(v20 + 64) = v2;
  v52 = v2;
  sub_1DA3A1FF8((v0 + 176), v20 + 16);
  type metadata accessor for SiriSuggestionsIntelligence.DeviceFeatureExtractor();
  swift_allocObject();
  v21 = sub_1DA412AEC((v0 + 96), v20, v4, v2);
  swift_retain_n();
  OUTLINED_FUNCTION_1_16();
  v24 = sub_1DA405A00(v21, v16, v22, v23);

  v25 = type metadata accessor for SiriSuggestionsIntelligence.EnvironmentFeatureExtractor();
  v27 = v1[3];
  v26 = v1[4];
  v28 = __swift_project_boxed_opaque_existential_1(v1, v27);
  v29 = v55[3];
  v30 = v55[4];
  v31 = __swift_project_boxed_opaque_existential_1(v55, v29);
  sub_1DA3F1248(v4, v52, v28, v31, v54, v56, v25, v27, v29, v26, v30);
  OUTLINED_FUNCTION_2_17();
  v35 = sub_1DA405A00(v32, v24, v33, v34);

  sub_1DA405EB0(v57, v58);
  v36 = 0;
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) != 1)
  {
    v37 = *(v0 + 376);
    v38 = *(v0 + 360);
    v39 = *(v0 + 352);
    v40 = *(v38 + 32);
    v40(v37, *(v0 + 384), v39);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v42 = swift_allocObject();
    v40(v42 + v41, v37, v39);
    v43 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
    v36 = OUTLINED_FUNCTION_4_17(v43);
    *(v36 + 16) = sub_1DA40602C;
    *(v36 + 24) = v42;
  }

  v44 = type metadata accessor for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor();
  v45 = v44;
  *(v0 + 240) = v44;
  *(v0 + 248) = &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor;
  if (!v36)
  {
    v36 = OUTLINED_FUNCTION_4_17(v44);
    *(v36 + 16) = sub_1DA3D1E2C;
    *(v36 + 24) = 0;
  }

  v46 = *(v0 + 344);
  *(v0 + 216) = v36;
  v47 = __swift_project_boxed_opaque_existential_1((v0 + 216), v45);
  v48 = sub_1DA3B1874(v47, v35, v45, &protocol witness table for SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor);

  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor();
  v49 = swift_allocObject();
  *(v49 + 16) = v46;

  *(v0 + 400) = sub_1DA405AB8(v49, v48);

  v50 = swift_task_alloc();
  *(v0 + 408) = v50;
  *v50 = v0;
  v50[1] = sub_1DA405770;

  return SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)();
}

uint64_t sub_1DA405770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id static SiriSuggestionsIntelligence.getDeviceStateServiceProvider@Sendable ()@<X0>(void *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  v3 = result;
  if (result)
  {
    result = sub_1DA3A6990(0, &unk_1EE100F80, 0x1E69E5100);
    v4 = &protocol witness table for OS_MobileGestalt;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

id sub_1DA405928@<X0>(void *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  v3 = result;
  if (result)
  {
    result = sub_1DA3A6990(0, &unk_1EE100F80, 0x1E69E5100);
    v4 = &protocol witness table for OS_MobileGestalt;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

uint64_t sub_1DA405A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();

  sub_1DA3AFD18();
  v8 = *(*(a2 + 16) + 16);
  sub_1DA3AFDBC(v8);
  sub_1DA405B74(v8, a1, (a2 + 16), a3, a4, sub_1DA3B2D10);
  swift_endAccess();
}

uint64_t sub_1DA405AB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1DA3AFD00();
  v4 = *(*(a2 + 24) + 16);
  sub_1DA3AFDA4(v4);
  sub_1DA405B74(v4, a1, (a2 + 24), type metadata accessor for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor, &protocol witness table for SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor, sub_1DA3B2D10);
  swift_endAccess();
}

uint64_t sub_1DA405B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v13[3] = a4(0);
  v13[4] = a5;
  v13[0] = a2;
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return a6(v13, v11 + 40 * a1 + 32);
}

void *sub_1DA405BF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v37[3] = sub_1DA3A6990(0, &qword_1EE100F60, 0x1E69977D0);
  v37[4] = &protocol witness table for BrightnessSystemClient;
  v37[0] = a3;
  v36[3] = type metadata accessor for SiriSuggestionsIntelligence.DefaultNetworkConnectionService();
  v36[4] = &protocol witness table for SiriSuggestionsIntelligence.DefaultNetworkConnectionService;
  v36[0] = a4;
  type metadata accessor for SiriSuggestionsIntelligence.NowPlayingService();
  v11 = a3;

  v27 = sub_1DA408D88(a5, a6);
  type metadata accessor for SiriSuggestionsIntelligence.MotionService();
  v12 = sub_1DA3CD4AC();
  type metadata accessor for SiriSuggestionsIntelligence.FocusModeService();
  v13 = sub_1DA410420();
  type metadata accessor for SiriSuggestionsIntelligence.CarPlayService();
  v14 = sub_1DA3F191C();
  type metadata accessor for SiriSuggestionsIntelligence.LocationService();
  v15 = sub_1DA41DD70();
  sub_1DA3A7ED4(v36, v35);
  v16 = _s19DefaultAudioServiceCMa();
  v17 = swift_allocObject();
  sub_1DA3A7ED4(v37, &v32);
  v18 = type metadata accessor for SiriSuggestionsIntelligence.DefaultScreenService();
  v19 = swift_allocObject();
  sub_1DA3A1FF8(&v32, v19 + 16);
  v33 = v16;
  v34 = &off_1F55E9E60;
  *&v32 = v17;
  v31 = &protocol witness table for SiriSuggestionsIntelligence.DefaultScreenService;
  v30 = v18;
  *&v29 = v19;
  type metadata accessor for SiriSuggestionsIntelligence.EnvironmentFeatureExtractor();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v16);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v20[17] = v16;
  v20[18] = &off_1F55E9E60;
  v20[14] = v25;
  v20[2] = v27;
  v20[3] = v12;
  v20[4] = v13;
  v20[5] = v14;
  v20[6] = v15;
  sub_1DA3A1FF8(v35, (v20 + 7));
  v20[12] = v28;
  v20[13] = a2;
  sub_1DA3A1FF8(&v29, (v20 + 19));

  __swift_destroy_boxed_opaque_existential_0(&v32);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v20;
}

uint64_t sub_1DA405EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = sub_1DA4214A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1DA4060C0()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopBrightnessClient();
  result = swift_initStaticObject();
  static SiriSuggestionsIntelligence.NoopBrightnessClient.instance = result;
  return result;
}

uint64_t *SiriSuggestionsIntelligence.NoopBrightnessClient.instance.unsafeMutableAddressor()
{
  if (qword_1ECBAE828 != -1)
  {
    swift_once();
  }

  return &static SiriSuggestionsIntelligence.NoopBrightnessClient.instance;
}

double SiriSuggestionsIntelligence.NoopBrightnessClient.copyProperty(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SiriSuggestionsIntelligence.DefaultScreenService.getBrightness()()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v126, 0xD000000000000011, 0x80000001DA42E570, v2, v3);
  OUTLINED_FUNCTION_6_13(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = v123;
  v13 = sub_1DA406704(&v120);
  if (!v12)
  {
    v21 = v1[5];
    v22 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v21);
    (*(v22 + 8))(&v120, 0x656E746867697242, 0xEA00000000007373, v21, v22);
    v13 = sub_1DA40676C(&v120, v126);
  }

  OUTLINED_FUNCTION_6_13(v13, v14, v15, v16, v17, v18, v19, v20);
  if (v123)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF938, &qword_1DA429448);
    v30 = OUTLINED_FUNCTION_3_19(v23, v24, v25, v23, v26, v27, v28, v29, v117, *(&v117 + 1), v118, v119, v120);
    if (v30)
    {
      v38 = v117;
      *&v117 = 0x656E746867697242;
      *(&v117 + 1) = 0xEA00000000007373;
      sub_1DA422044();
      sub_1DA3EA288(&v120, v38, &v117);

      sub_1DA3B8210(&v120);
      v39 = &v117;
      goto LABEL_10;
    }
  }

  else
  {
    v30 = sub_1DA406704(&v120);
  }

  OUTLINED_FUNCTION_6_13(v30, v31, v32, v33, v34, v35, v36, v37);
  if (!v123)
  {
    sub_1DA406704(&v120);
    goto LABEL_24;
  }

  v40 = sub_1DA3F7198();
  if ((OUTLINED_FUNCTION_3_19(v40, v41, v42, v40, v43, v44, v45, v46, v117, *(&v117 + 1), v118, v119, v120) & 1) == 0)
  {
LABEL_24:
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EE102E00);
    }

    v72 = sub_1DA421A94();
    __swift_project_value_buffer(v72, static Logger.extractionCategory);
    v73 = sub_1DA421A74();
    v74 = sub_1DA421F54();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_34;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v84 = OUTLINED_FUNCTION_7_13(4.8149e-34, v76, v77, v78, v79, v80, v81, v82, v83, v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v76, v126[0]);
    OUTLINED_FUNCTION_6_13(v85, v86, v87, v88, v89, v90, v91, v92, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
    v93 = sub_1DA421BB4();
    v95 = sub_1DA3A5FE8(v93, v94, &v125);

    *(v75 + 4) = v95;
    v96 = "unable to get brightness value for %s";
    goto LABEL_33;
  }

  v47 = MEMORY[0x1E69E63B0];
  [v117 doubleValue];
  v49 = v48;
  v123 = v47;

  v120 = v49;
  v39 = &v120;
LABEL_10:
  v50 = sub_1DA40676C(v39, v126);
  v58 = OUTLINED_FUNCTION_6_13(v50, v51, v52, v53, v54, v55, v56, v57);
  if (!v123)
  {
    sub_1DA406704(&v120);
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_3_19(v58, v59, v60, MEMORY[0x1E69E63B0], v61, v62, v63, v64, v117, *(&v117 + 1), v118, v119, v120) & 1) == 0)
  {
LABEL_29:
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EE102E00);
    }

    v97 = sub_1DA421A94();
    __swift_project_value_buffer(v97, static Logger.extractionCategory);
    v73 = sub_1DA421A74();
    v74 = sub_1DA421F54();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_34;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v105 = OUTLINED_FUNCTION_7_13(4.8149e-34, v76, v98, v99, v100, v101, v102, v103, v104, v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v76, v126[0]);
    OUTLINED_FUNCTION_6_13(v106, v107, v108, v109, v110, v111, v112, v113, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
    v114 = sub_1DA421BB4();
    v116 = sub_1DA3A5FE8(v114, v115, &v125);

    *(v75 + 4) = v116;
    v96 = "unable to convert %s to Double)";
LABEL_33:
    _os_log_impl(&dword_1DA39E000, v73, v74, v96, v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x1DA74E430](v76, -1, -1);
    MEMORY[0x1DA74E430](v75, -1, -1);
LABEL_34:

    sub_1DA406704(v126);
    return 3;
  }

  v65 = *&v117;
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EE102E00);
  }

  v66 = sub_1DA421A94();
  __swift_project_value_buffer(v66, static Logger.extractionCategory);
  v67 = sub_1DA421A74();
  v68 = sub_1DA421F54();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = v65;
    _os_log_impl(&dword_1DA39E000, v67, v68, "ScreenService: got device brightness as: %f", v69, 0xCu);
    MEMORY[0x1DA74E430](v69, -1, -1);
  }

  sub_1DA406704(v126);
  if (v65 <= 0.33)
  {
    return 0;
  }

  if (v65 > 0.66 || v65 <= 0.33)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DA406694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA406704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA40676C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF270, &qword_1DA429440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.DefaultScreenService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DA406834(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA4068D0(uint64_t a1)
{
  v2 = sub_1DA40768C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40690C(uint64_t a1)
{
  v2 = sub_1DA40768C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406948(uint64_t a1)
{
  v2 = sub_1DA407734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406984(uint64_t a1)
{
  v2 = sub_1DA407734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA4069C0(uint64_t a1)
{
  v2 = sub_1DA4077DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4069FC(uint64_t a1)
{
  v2 = sub_1DA4077DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406A38(uint64_t a1)
{
  v2 = sub_1DA407788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406A74(uint64_t a1)
{
  v2 = sub_1DA407788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA406AB0(uint64_t a1)
{
  v2 = sub_1DA4076E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA406AEC(uint64_t a1)
{
  v2 = sub_1DA4076E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.ScreenBrightness.encode(to:)(void *a1, uint64_t a2)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF940, &qword_1DA429450);
  OUTLINED_FUNCTION_3_1();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_5();
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF948, &qword_1DA429458);
  OUTLINED_FUNCTION_3_1();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF950, &qword_1DA429460);
  OUTLINED_FUNCTION_3_1();
  v45 = v12;
  v46 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF958, &qword_1DA429468);
  OUTLINED_FUNCTION_3_1();
  v44 = v17;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF960, &qword_1DA429470);
  OUTLINED_FUNCTION_3_1();
  v23 = v22;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40768C();
  sub_1DA422494();
  switch(v53)
  {
    case 1:
      v55 = 1;
      v39 = sub_1DA407788();
      OUTLINED_FUNCTION_5_12(&_s16ScreenBrightnessO16MediumCodingKeysON, &v55, v40, v41, v39);
      (*(v45 + 8))(v15, v46);
      break;
    case 2:
      v56 = 2;
      v30 = sub_1DA407734();
      v31 = v47;
      OUTLINED_FUNCTION_5_12(&_s16ScreenBrightnessO14HighCodingKeysON, &v56, v32, v33, v30);
      v35 = v48;
      v34 = v49;
      goto LABEL_5;
    case 3:
      v57 = 3;
      v36 = sub_1DA4076E0();
      v31 = v50;
      OUTLINED_FUNCTION_5_12(&_s16ScreenBrightnessO17UnknownCodingKeysON, &v57, v37, v38, v36);
      v35 = v51;
      v34 = v52;
LABEL_5:
      (*(v35 + 8))(v31, v34);
      break;
    default:
      v54 = 0;
      v27 = sub_1DA4077DC();
      OUTLINED_FUNCTION_5_12(&_s16ScreenBrightnessO13LowCodingKeysON, &v54, v28, v29, v27);
      (*(v44 + 8))(v20, v16);
      break;
  }

  return (*(v23 + 8))(v26, v21);
}

uint64_t SiriSuggestionsIntelligence.ScreenBrightness.init(from:)(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF978, &qword_1DA429478);
  OUTLINED_FUNCTION_3_1();
  v60 = v2;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_5();
  v62 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF980, &qword_1DA429480);
  OUTLINED_FUNCTION_3_1();
  v57 = v6;
  v58 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_5();
  v59 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF988, &qword_1DA429488);
  OUTLINED_FUNCTION_3_1();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF990, &qword_1DA429490);
  OUTLINED_FUNCTION_3_1();
  v54 = v15;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF998, &unk_1DA429498);
  OUTLINED_FUNCTION_3_1();
  v61 = v20;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40768C();
  v24 = v64;
  sub_1DA422484();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v51 = v14;
  v52 = v18;
  v53 = v13;
  v25 = v62;
  v26 = v63;
  v64 = a1;
  v27 = v23;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  if (v30 == v31 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    return result;
  }

  v32 = *(v29 + v30);
  sub_1DA3C2A9C();
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_8:
    v42 = sub_1DA4220F4();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v44 = &type metadata for SiriSuggestionsIntelligence.ScreenBrightness;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v27, v19);
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v32;
  v38 = v32;
  v40 = v60;
  v39 = v61;
  switch(v38)
  {
    case 1:
      v66 = 1;
      sub_1DA407788();
      v45 = v53;
      OUTLINED_FUNCTION_14_1(&_s16ScreenBrightnessO16MediumCodingKeysON, &v66);
      swift_unknownObjectRelease();
      v47 = v55;
      v46 = v56;
      goto LABEL_18;
    case 2:
      v67[0] = 2;
      sub_1DA407734();
      v45 = v59;
      OUTLINED_FUNCTION_14_1(&_s16ScreenBrightnessO14HighCodingKeysON, v67);
      swift_unknownObjectRelease();
      v47 = v57;
      v46 = v58;
LABEL_18:
      (*(v47 + 8))(v45, v46);
      goto LABEL_19;
    case 3:
      v67[1] = 3;
      sub_1DA4076E0();
      v48 = v50;
      sub_1DA422244();
      if (v48)
      {
        (*(v39 + 8))(v27, v19);
        swift_unknownObjectRelease();
        a1 = v64;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v40 + 8))(v25, v26);
LABEL_19:
      (*(v39 + 8))(v27, v19);
      __swift_destroy_boxed_opaque_existential_0(v64);
      result = v37;
      break;
    default:
      v65 = 0;
      sub_1DA4077DC();
      v41 = v52;
      OUTLINED_FUNCTION_14_1(&_s16ScreenBrightnessO13LowCodingKeysON, &v65);
      swift_unknownObjectRelease();
      (*(v54 + 8))(v41, v51);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1DA40752C(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  SiriSuggestionsIntelligence.ScreenBrightness.hash(into:)(v4, v2);
  return sub_1DA422474();
}

uint64_t sub_1DA407570@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.ScreenBrightness.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1DA4075F8@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v5 = sub_1DA421B64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 copyPropertyForKey_];

  if (v6)
  {
    sub_1DA421FF4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1DA40768C()
{
  result = qword_1EE102388;
  if (!qword_1EE102388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102388);
  }

  return result;
}

unint64_t sub_1DA4076E0()
{
  result = qword_1ECBAF968;
  if (!qword_1ECBAF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF968);
  }

  return result;
}

unint64_t sub_1DA407734()
{
  result = qword_1ECBAF970;
  if (!qword_1ECBAF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF970);
  }

  return result;
}

unint64_t sub_1DA407788()
{
  result = qword_1EE102348;
  if (!qword_1EE102348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102348);
  }

  return result;
}

unint64_t sub_1DA4077DC()
{
  result = qword_1EE102370;
  if (!qword_1EE102370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102370);
  }

  return result;
}

unint64_t sub_1DA407834()
{
  result = qword_1ECBAF9A0;
  if (!qword_1ECBAF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9A0);
  }

  return result;
}

unint64_t sub_1DA40788C()
{
  result = qword_1ECBAF9A8;
  if (!qword_1ECBAF9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF9B0, &qword_1DA429580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9A8);
  }

  return result;
}

_BYTE *sub_1DA407948(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA407A68()
{
  result = qword_1ECBAF9B8;
  if (!qword_1ECBAF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9B8);
  }

  return result;
}

unint64_t sub_1DA407AC0()
{
  result = qword_1EE102360;
  if (!qword_1EE102360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102360);
  }

  return result;
}

unint64_t sub_1DA407B18()
{
  result = qword_1EE102368;
  if (!qword_1EE102368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102368);
  }

  return result;
}

unint64_t sub_1DA407B70()
{
  result = qword_1EE102338;
  if (!qword_1EE102338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102338);
  }

  return result;
}

unint64_t sub_1DA407BC8()
{
  result = qword_1EE102340;
  if (!qword_1EE102340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102340);
  }

  return result;
}

unint64_t sub_1DA407C20()
{
  result = qword_1EE102350;
  if (!qword_1EE102350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102350);
  }

  return result;
}

unint64_t sub_1DA407C78()
{
  result = qword_1EE102358;
  if (!qword_1EE102358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102358);
  }

  return result;
}

unint64_t sub_1DA407CD0()
{
  result = qword_1EE102328;
  if (!qword_1EE102328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102328);
  }

  return result;
}

unint64_t sub_1DA407D28()
{
  result = qword_1EE102330;
  if (!qword_1EE102330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102330);
  }

  return result;
}

unint64_t sub_1DA407D80()
{
  result = qword_1EE102378;
  if (!qword_1EE102378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102378);
  }

  return result;
}

unint64_t sub_1DA407DD8()
{
  result = qword_1EE102380;
  if (!qword_1EE102380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102380);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_1DA406694(va1, va);
}

double OUTLINED_FUNCTION_7_13(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *v20 = a1;

  swift_beginAccess();
  return result;
}

uint64_t sub_1DA407EAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA421B94();
  v4 = v3;
  v5 = sub_1DA421B94();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DA407F24()
{
  OUTLINED_FUNCTION_4_18();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE600000000000000;
      v5 = 0x6D6F74737563;
      break;
    case 2:
      v5 = 0x746C7561666564;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v5 = 0x7065656C73;
      break;
    case 4:
      v6 = 1986622052;
      goto LABEL_13;
    case 5:
      v2 = 0xE800000000000000;
      v5 = 0x6573696372657865;
      break;
    case 6:
      v2 = 0xE400000000000000;
      v5 = 1802661751;
      break;
    case 7:
      v5 = 0x6C616E6F73726570;
      v2 = 0xEC000000656D6954;
      break;
    case 8:
      v6 = 1684104562;
LABEL_13:
      v5 = v6 | 0x676E6900000000;
      break;
    case 9:
      v2 = 0xE600000000000000;
      v5 = 0x676E696D6167;
      break;
    case 10:
      v5 = 0x6E6C7566646E696DLL;
      v2 = 0xEB00000000737365;
      break;
    case 11:
      v5 = 0xD000000000000013;
      v2 = 0x80000001DA42C550;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v7 = 0xE600000000000000;
      v1 = 0x6D6F74737563;
      break;
    case 2:
      v1 = 0x746C7561666564;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v1 = 0x7065656C73;
      break;
    case 4:
      v8 = 1986622052;
      goto LABEL_26;
    case 5:
      v7 = 0xE800000000000000;
      v1 = 0x6573696372657865;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v1 = 1802661751;
      break;
    case 7:
      v1 = 0x6C616E6F73726570;
      v7 = 0xEC000000656D6954;
      break;
    case 8:
      v8 = 1684104562;
LABEL_26:
      v1 = v8 | 0x676E6900000000;
      break;
    case 9:
      v7 = 0xE600000000000000;
      v1 = 0x676E696D6167;
      break;
    case 10:
      v1 = 0x6E6C7566646E696DLL;
      v7 = 0xEB00000000737365;
      break;
    case 11:
      v1 = 0xD000000000000013;
      v7 = 0x80000001DA42C550;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_20(v5, v0, v1);
  }

  return v10 & 1;
}

uint64_t sub_1DA4081A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x65636E6169726176;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1851876717;
    }

    else
    {
      v4 = 0x5364656C706D6173;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000657A69;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x65636E6169726176;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1851876717;
    }

    else
    {
      v2 = 0x5364656C706D6173;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000657A69;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA408298(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000072656B61;
  v3 = 0x6570536C61636F6CLL;
  v4 = a1;
  v5 = 0x6570536C61636F6CLL;
  v6 = 0xEC00000072656B61;
  switch(v4)
  {
    case 1:
      v5 = 0x6E6F687064616568;
      v6 = 0xEA00000000007365;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x72656B61657073;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x6E6565726373;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_10_9();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6E6F687064616568;
      v2 = 0xEA00000000007365;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x72656B61657073;
      break;
    case 3:
      v2 = 0xE200000000000000;
      v3 = 30324;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x6E6565726373;
      break;
    case 5:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_18();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_9(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA408410(char a1, char a2)
{
  v3 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v5 = v4;
  v6 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_20(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1DA408488(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7669736E65707865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x736E657078656E69;
    }

    else
    {
      v5 = 0x69617274736E6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000657669;
    }

    else
    {
      v6 = 0xEB0000000064656ELL;
    }
  }

  else
  {
    v5 = 0x7669736E65707865;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x736E657078656E69;
    }

    else
    {
      v3 = 0x69617274736E6F63;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000657669;
    }

    else
    {
      v2 = 0xEB0000000064656ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_9(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DA40859C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6F69647561;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6F69647561;
  switch(v4)
  {
    case 1:
      v5 = 0x6F65646976;
      break;
    case 2:
      v5 = 0x636973756DLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_10_9();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F65646976;
      break;
    case 2:
      v2 = 0x636973756DLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_18();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA4086A0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x797469746E656469;
  }

  else
  {
    v3 = 0x796142657669616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xED00006C65646F4DLL;
  }

  if (a2)
  {
    v5 = 0x797469746E656469;
  }

  else
  {
    v5 = 0x796142657669616ELL;
  }

  if (a2)
  {
    v6 = 0xED00006C65646F4DLL;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DA408744(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x7365536C61746F74;
    }

    else
    {
      v3 = 0x6D69546C61746F74;
    }

    if (v2 == 1)
    {
      v4 = 0xED0000736E6F6973;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001DA42C420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x7365536C61746F74;
    }

    else
    {
      v5 = 0x6D69546C61746F74;
    }

    if (a2 == 1)
    {
      v6 = 0xED0000736E6F6973;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001DA42C420;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DA408840(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E696E726F6DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E696E726F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x79616464696DLL;
      break;
    case 2:
      v5 = 0x6F6F6E7265746661;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x676E696E657665;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x79616464696DLL;
      break;
    case 2:
      v2 = 0x6F6F6E7265746661;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x676E696E657665;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DA408A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1DA40BE08(a4, a5, a6);
  sub_1DA421CD4();
  sub_1DA421CD4();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_9(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(char a1)
{
  result = 0x6570536C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F687064616568;
      break;
    case 2:
      result = 0x72656B61657073;
      break;
    case 3:
      result = 30324;
      break;
    case 4:
      result = 0x6E6565726373;
      break;
    case 5:
      result = OUTLINED_FUNCTION_10_9();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA408B88(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA408BA8);
}

uint64_t sub_1DA408BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DA408C58;

  return sub_1DA41CF74(v0 + 16);
}

uint64_t sub_1DA408C58()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  *(v2 + 32) = *(v1 + 48);
  *v2 = v4;
  *(v2 + 16) = v5;
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1DA408D88(uint64_t a1, uint64_t a2)
{
  v4 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v5 = [v4 NowPlaying];
  swift_unknownObjectRelease();
  sub_1DA3A7ED4(a1, v9);
  sub_1DA3A7ED4(a2, v8);
  v6 = swift_allocObject();
  sub_1DA408E58(v5, v9, v8);
  return v6;
}

uint64_t sub_1DA408E58(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1DA3A7ED4(a3, v10);
  v8 = swift_allocObject();
  sub_1DA3B2D10(v10, v8 + 16);
  sub_1DA421984();

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAA0, &qword_1DA42A280);
  swift_allocObject();
  *(v4 + 16) = sub_1DA420960(a1, v10, sub_1DA408F5C, 0);
  return v4;
}

void sub_1DA408F5C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v5 = a2;
  if ([v5 playbackState] != 1)
  {

LABEL_19:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v6 = [v5 outputDevices];
  sub_1DA40BDC4();
  v7 = sub_1DA421D34();

  v8 = sub_1DA3A6D84();
  if (v8)
  {
    v9 = v8;
    v28 = v5;
    v29 = a1;
    v30 = a3;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DA3B05B8(0, v8 & ~(v8 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v10 = 0;
    v11 = v31;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA74D830](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      if ([v12 type] == 4)
      {

        v14 = 0;
      }

      else
      {
        v15 = [v13 subType];

        if (v15 - 1 > 0x13)
        {
          v14 = 5;
        }

        else
        {
          v14 = byte_1DA42A292[v15 - 1];
        }
      }

      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DA3B05B8(v16 > 1, v17 + 1, 1);
      }

      ++v10;
      *(v31 + 16) = v17 + 1;
      *(v31 + v17 + 32) = v14;
    }

    while (v9 != v10);

    a1 = v29;
    a3 = v30;
    v5 = v28;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v11 + 16))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v18 = *(v11 + 16);
      if (v18 >= *(v11 + 24) >> 1)
      {
        sub_1DA3A5D44();
        v11 = v27;
      }

      *(v11 + 16) = v18 + 1;
      *(v11 + v18 + 32) = 0;
      goto LABEL_26;
    }

LABEL_34:
    sub_1DA3A5D44();
    v11 = v26;
    goto LABEL_23;
  }

LABEL_26:
  v19 = v5;
  v20 = sub_1DA40B09C(v19);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  v24 = v19;
  v25 = sub_1DA409210();

  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25;
  *(a3 + 24) = a1;
  *(a3 + 32) = v11;
}

uint64_t sub_1DA409210()
{
  v2 = [v0 itemMediaSubtype] - 1;
  if (v2 < 6)
  {
    return 0x10000010102uLL >> (8 * v2);
  }

  result = sub_1DA40B038(v0);
  if (!*MEMORY[0x1E69B0DF0])
  {
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = result;
  v6 = v4;
  v7 = *MEMORY[0x1E69B0DF0];
  v8 = sub_1DA421BA4();
  if (v6)
  {
    if (v8 == v5 && v6 == v9)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_2_18(v8);
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DD0])
  {
    goto LABEL_56;
  }

  v11 = *MEMORY[0x1E69B0DD0];
  v12 = sub_1DA421BA4();
  if (v6)
  {
    if (v12 == v5 && v6 == v13)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_2_18(v12);
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DE8])
  {
    goto LABEL_57;
  }

  v15 = *MEMORY[0x1E69B0DE8];
  v16 = sub_1DA421BA4();
  if (v6)
  {
    if (v16 == v5 && v6 == v17)
    {

LABEL_41:

      return 2;
    }

    OUTLINED_FUNCTION_2_18(v16);
    result = OUTLINED_FUNCTION_14_7();
    if (v1)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  if (!*MEMORY[0x1E69B0DC8])
  {
    goto LABEL_58;
  }

  v19 = *MEMORY[0x1E69B0DC8];
  v20 = sub_1DA421BA4();
  if (!v6)
  {

    goto LABEL_43;
  }

  if (v20 == v5 && v6 == v21)
  {
LABEL_38:

LABEL_39:

    return 0;
  }

  OUTLINED_FUNCTION_2_18(v20);
  result = OUTLINED_FUNCTION_14_7();
  if (v1)
  {
    goto LABEL_39;
  }

LABEL_43:
  if (*MEMORY[0x1E69B0DF8])
  {
    v23 = *MEMORY[0x1E69B0DF8];
    v24 = sub_1DA421BA4();
    if (v6)
    {
      if (v24 == v5 && v6 == v25)
      {

        return 1;
      }

      v27 = OUTLINED_FUNCTION_2_18(v24);

      if (v27)
      {
        return 1;
      }
    }

    else
    {
    }

    return 3;
  }

LABEL_59:
  __break(1u);
  return result;
}

double sub_1DA409444(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v8, v3, v4);
  if (!v1)
  {
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v6 + 48))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return v2;
}

uint64_t SiriSuggestionsIntelligence.NowPlayingService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA409558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6979616C50746F6ELL && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA409628(char a1)
{
  if (a1)
  {
    return 0x676E6979616C70;
  }

  else
  {
    return 0x6979616C50746F6ELL;
  }
}

uint64_t sub_1DA40966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA409558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA409694(uint64_t a1)
{
  v2 = sub_1DA40A67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4096D0(uint64_t a1)
{
  v2 = sub_1DA40A67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40970C(uint64_t a1)
{
  v2 = sub_1DA40A778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA409748(uint64_t a1)
{
  v2 = sub_1DA40A778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA409784(uint64_t a1)
{
  v2 = sub_1DA40A6D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4097C0(uint64_t a1)
{
  v2 = sub_1DA40A6D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.NowPlaying.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 3);
  v7 = a1[4];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *a1 == *a2 && v3 == v4;
  return (v11 || (sub_1DA4223A4() & 1) != 0) && (sub_1DA40859C(v5, v8) & 1) != 0 && v6 == v9 && (sub_1DA40A474(v7, v10) & 1) != 0;
}

uint64_t static SiriSuggestionsIntelligence.NowPlayingMediaDetails.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DA4223A4() & 1) == 0 || (sub_1DA40859C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 3) != *(a2 + 24))
  {
    return 0;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);

  return sub_1DA40A474(v5, v6);
}

uint64_t SiriSuggestionsIntelligence.NowPlaying.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9C0, &qword_1DA429A80);
  OUTLINED_FUNCTION_3_1();
  v26 = v6;
  v27 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9C8, &qword_1DA429A88);
  OUTLINED_FUNCTION_3_1();
  v24 = v9;
  v25 = v8;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9D0, &qword_1DA429A90);
  OUTLINED_FUNCTION_3_1();
  v15 = v14;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40A67C();
  sub_1DA422494();
  v19 = v3[1];
  if (v19)
  {
    v20 = *v3;
    LOBYTE(v28) = 1;
    sub_1DA40A6D0();
    sub_1DA4222D4();
    v28 = v20;
    v29 = v19;
    v30 = *(v3 + 1);
    v31 = v3[4];
    sub_1DA40A724();
    v21 = v27;
    sub_1DA422334();
    (*(v26 + 8))(v2, v21);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1DA40A778();
    sub_1DA4222D4();
    (*(v24 + 8))(v12, v25);
  }

  return (*(v15 + 8))(v18, v13);
}

uint64_t SiriSuggestionsIntelligence.NowPlaying.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9E8, &qword_1DA429A98);
  OUTLINED_FUNCTION_3_1();
  v48 = v4;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_16();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9F0, &qword_1DA429AA0);
  OUTLINED_FUNCTION_3_1();
  v47 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF9F8, &unk_1DA429AA8);
  OUTLINED_FUNCTION_3_1();
  v50 = v12;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-v14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40A67C();
  v16 = v57;
  sub_1DA422484();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v44 = v6;
  v45 = v10;
  v46 = v2;
  v57 = a1;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  if (v19 == v20 >> 1)
  {
    goto LABEL_7;
  }

  if (v19 >= (v20 >> 1))
  {
    __break(1u);
    return result;
  }

  v43 = *(v18 + v19);
  sub_1DA3C2A9C();
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();
  v25 = v49;
  if (v22 != v24 >> 1)
  {
LABEL_7:
    v26 = sub_1DA4220F4();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v28 = &type metadata for SiriSuggestionsIntelligence.NowPlaying;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v29 = OUTLINED_FUNCTION_1_17();
    v30(v29);
    a1 = v57;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v43)
  {
    LOBYTE(v52) = 1;
    sub_1DA40A6D0();
    OUTLINED_FUNCTION_7_14();
    sub_1DA422244();
    sub_1DA40B10C();
    sub_1DA4222B4();
    v32 = v50;
    swift_unknownObjectRelease();
    v35 = OUTLINED_FUNCTION_12_8();
    v36(v35);
    (*(v32 + 8))(v15, v11);
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v25 = v49;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_1DA40A778();
    v31 = v45;
    OUTLINED_FUNCTION_7_14();
    sub_1DA422244();
    v41 = 0;
    swift_unknownObjectRelease();
    (*(v47 + 8))(v31, v44);
    v33 = OUTLINED_FUNCTION_1_17();
    v34(v33);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v57);
  *v25 = v37;
  v25[1] = v38;
  v25[2] = v39;
  v25[3] = v40;
  v25[4] = v41;
  return result;
}

uint64_t sub_1DA40A160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6964654D6D657469 && a2 == 0xED00006570795461;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5064657472617473 && a2 == 0xEB0000000079616CLL;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA4223A4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DA40A2CC(char a1)
{
  result = 0x707954616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6964654D6D657469;
      break;
    case 2:
      result = 0x5064657472617473;
      break;
    case 3:
      result = 0x73656369766564;
      break;
    default:
      return result;
  }

  return result;
}

double sub_1DA40A36C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SiriSuggestionsIntelligence.NowPlaying.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DA40A3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA40A160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA40A3FC(uint64_t a1)
{
  v2 = sub_1DA40B160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40A438(uint64_t a1)
{
  v2 = sub_1DA40B160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40A474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = 0xEC00000072656B61;
      v6 = 0x6570536C61636F6CLL;
      switch(*v3)
      {
        case 1:
          v6 = 0x6E6F687064616568;
          v5 = 0xEA00000000007365;
          break;
        case 2:
          v5 = 0xE700000000000000;
          v6 = 0x72656B61657073;
          break;
        case 3:
          v5 = 0xE200000000000000;
          v6 = 30324;
          break;
        case 4:
          v5 = 0xE600000000000000;
          v6 = 0x6E6565726373;
          break;
        case 5:
          v5 = 0xE700000000000000;
          v6 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v7 = 0x6570536C61636F6CLL;
      v8 = 0xEC00000072656B61;
      switch(*v4)
      {
        case 1:
          v7 = 0x6E6F687064616568;
          v8 = 0xEA00000000007365;
          break;
        case 2:
          v8 = 0xE700000000000000;
          v7 = 0x72656B61657073;
          break;
        case 3:
          v8 = 0xE200000000000000;
          v7 = 30324;
          break;
        case 4:
          v8 = 0xE600000000000000;
          v7 = 0x6E6565726373;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v6 == v7 && v5 == v8)
      {
      }

      else
      {
        v10 = sub_1DA4223A4();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_1DA40A67C()
{
  result = qword_1EE102B00;
  if (!qword_1EE102B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B00);
  }

  return result;
}

unint64_t sub_1DA40A6D0()
{
  result = qword_1ECBAF9D8;
  if (!qword_1ECBAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9D8);
  }

  return result;
}

unint64_t sub_1DA40A724()
{
  result = qword_1ECBAF9E0;
  if (!qword_1ECBAF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF9E0);
  }

  return result;
}

unint64_t sub_1DA40A778()
{
  result = qword_1EE102B28[0];
  if (!qword_1EE102B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE102B28);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.NowPlayingMediaDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA08, &qword_1DA429AB8);
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40B160();
  sub_1DA422494();
  v17 = 0;
  OUTLINED_FUNCTION_13_7();
  sub_1DA4222F4();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15 = 1;
    sub_1DA40B1B4();
    OUTLINED_FUNCTION_13_7();
    sub_1DA422334();
    v14 = 2;
    OUTLINED_FUNCTION_13_7();
    sub_1DA422314();
    v13 = *(v3 + 32);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA20, &qword_1DA429AC0);
    sub_1DA40B2B0(&qword_1ECBAFA28, sub_1DA40B208, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_13_7();
    sub_1DA422334();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t SiriSuggestionsIntelligence.NowPlayingMediaDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA38, &qword_1DA429AC8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_16();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA40B160();
  sub_1DA422484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_7_14();
  v6 = sub_1DA422274();
  v8 = v7;
  sub_1DA40B25C();
  OUTLINED_FUNCTION_7_14();
  sub_1DA4222B4();
  OUTLINED_FUNCTION_7_14();
  sub_1DA422294();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFA20, &qword_1DA429AC0);
  sub_1DA40B2B0(&qword_1ECBAFA48, sub_1DA40B328, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_7_14();
  sub_1DA4222B4();
  v11 = OUTLINED_FUNCTION_9_12();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  return result;
}

double sub_1DA40AC54@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SiriSuggestionsIntelligence.NowPlayingMediaDetails.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t SiriSuggestionsIntelligence.MediaDeviceType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA422234();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DA40AD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.MediaDeviceType.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DA40AD54@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t SiriSuggestionsIntelligence.ItemMediaType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA422234();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t SiriSuggestionsIntelligence.ItemMediaType.rawValue.getter(char a1)
{
  result = 0x6F69647561;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_10_9();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA40AF2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.ItemMediaType.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DA40AF5C@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.ItemMediaType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA40B038(void *a1)
{
  v1 = [a1 mediaType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA421B94();

  return v3;
}

uint64_t sub_1DA40B09C(void *a1)
{
  v2 = [a1 mediaType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA421B94();

  return v3;
}

unint64_t sub_1DA40B10C()
{
  result = qword_1ECBAFA00;
  if (!qword_1ECBAFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA00);
  }

  return result;
}

unint64_t sub_1DA40B160()
{
  result = qword_1ECBAFA10;
  if (!qword_1ECBAFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA10);
  }

  return result;
}

unint64_t sub_1DA40B1B4()
{
  result = qword_1ECBAFA18;
  if (!qword_1ECBAFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA18);
  }

  return result;
}

unint64_t sub_1DA40B208()
{
  result = qword_1ECBAFA30;
  if (!qword_1ECBAFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA30);
  }

  return result;
}

unint64_t sub_1DA40B25C()
{
  result = qword_1ECBAFA40;
  if (!qword_1ECBAFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA40);
  }

  return result;
}

uint64_t sub_1DA40B2B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFA20, &qword_1DA429AC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA40B328()
{
  result = qword_1ECBAFA50;
  if (!qword_1ECBAFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA50);
  }

  return result;
}

unint64_t sub_1DA40B380()
{
  result = qword_1ECBAFA58;
  if (!qword_1ECBAFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA58);
  }

  return result;
}

unint64_t sub_1DA40B3D8()
{
  result = qword_1ECBAFA60;
  if (!qword_1ECBAFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO10NowPlayingO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA40B468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DA40B4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1DA40B514(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DA40B54C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA40B58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15MediaDeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA40B6C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10NowPlayingO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10NowPlayingO17PlayingCodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DA40B93C()
{
  result = qword_1ECBAFA68;
  if (!qword_1ECBAFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA68);
  }

  return result;
}

unint64_t sub_1DA40B994()
{
  result = qword_1ECBAFA70;
  if (!qword_1ECBAFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA70);
  }

  return result;
}

unint64_t sub_1DA40B9EC()
{
  result = qword_1ECBAFA78;
  if (!qword_1ECBAFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA78);
  }

  return result;
}

unint64_t sub_1DA40BA44()
{
  result = qword_1ECBAFA80;
  if (!qword_1ECBAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA80);
  }

  return result;
}

unint64_t sub_1DA40BA9C()
{
  result = qword_1ECBAFA88;
  if (!qword_1ECBAFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA88);
  }

  return result;
}

unint64_t sub_1DA40BAF4()
{
  result = qword_1EE102B18;
  if (!qword_1EE102B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B18);
  }

  return result;
}

unint64_t sub_1DA40BB4C()
{
  result = qword_1EE102B20;
  if (!qword_1EE102B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B20);
  }

  return result;
}

unint64_t sub_1DA40BBA4()
{
  result = qword_1EE102B08;
  if (!qword_1EE102B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B08);
  }

  return result;
}

unint64_t sub_1DA40BBFC()
{
  result = qword_1EE102B10;
  if (!qword_1EE102B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B10);
  }

  return result;
}

unint64_t sub_1DA40BC54()
{
  result = qword_1EE102AF0;
  if (!qword_1EE102AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AF0);
  }

  return result;
}

unint64_t sub_1DA40BCAC()
{
  result = qword_1EE102AF8;
  if (!qword_1EE102AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AF8);
  }

  return result;
}

unint64_t sub_1DA40BD00()
{
  result = qword_1ECBAFA90;
  if (!qword_1ECBAFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA90);
  }

  return result;
}

unint64_t sub_1DA40BD54()
{
  result = qword_1ECBAFA98;
  if (!qword_1ECBAFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA98);
  }

  return result;
}

unint64_t sub_1DA40BDC4()
{
  result = qword_1ECBAFAA8;
  if (!qword_1ECBAFAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAFAA8);
  }

  return result;
}

uint64_t sub_1DA40BE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a1)
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
}

uint64_t sub_1DA40BFB8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D8, &qword_1DA426898);
    v5 = sub_1DA422214();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;
  a2(a1, 1, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1DA40C060()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v32 = v2;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF8, &unk_1DA42A530);
  v5 = sub_1DA4221F4();
  v6 = 0;
  OUTLINED_FUNCTION_30_1();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v13 = v12 + 64;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v17 = v14 | (v6 << 6);
      v18 = (*(v4 + 48) + 32 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = *(*(v4 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = (v5[6] + 32 * v17);
      *v24 = v20;
      v24[1] = v19;
      v24[2] = v21;
      v24[3] = v22;
      *(v5[7] + 8 * v17) = v23;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v5[2] = v27;

      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = *(v4 + 64 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_8;
      }
    }

    sub_1DA40CF74(v5);
    v29 = v28;

    if (!v1)
    {
      sub_1DA40DAB8(v29);
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF520, &qword_1DA427350);
      swift_allocObject();
      sub_1DA40DF78(v29, v31, v32);
    }

    OUTLINED_FUNCTION_24_1();
  }
}

void sub_1DA40C230()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D8, &qword_1DA426898);
  v5 = sub_1DA4221F4();
  v6 = 0;
  OUTLINED_FUNCTION_30_1();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v13 = v12 + 64;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v17 = v14 | (v6 << 6);
      v18 = (*(v4 + 48) + 16 * v17);
      v19 = *(*(v4 + 56) + 8 * v17);
      v21 = *v18;
      v20 = v18[1];
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = (v5[6] + 16 * v17);
      *v22 = v21;
      v22[1] = v20;
      *(v5[7] + 8 * v17) = v19;
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v5[2] = v25;

      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = *(v4 + 64 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_8;
      }
    }

    sub_1DA40D524(v5);
    v27 = v26;

    if (!v0)
    {
      sub_1DA40DD18(v27);
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
      swift_allocObject();
      sub_1DA40E340(v27, v29, v2);
    }

    OUTLINED_FUNCTION_24_1();
  }
}

uint64_t sub_1DA40C3F0(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    [a1 int64Value];
    return sub_1DA422364();
  }

  else if (v2 == 2)
  {
    [a1 doubleValue];
    return sub_1DA421E84();
  }

  else if (v2 == 3)
  {
    v3 = [a1 stringValue];
    v4 = sub_1DA421B94();

    return v4;
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA421A94();
    __swift_project_value_buffer(v6, static Logger.inferenceCategory);
    v7 = a1;
    v8 = sub_1DA421A74();
    v9 = sub_1DA421F74();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1DA39E000, v8, v9, "unable to determine posterior key: %@", v10, 0xCu);
      sub_1DA3A8CA8(v11, &qword_1ECBAEC70, &qword_1DA42A510);
      MEMORY[0x1DA74E430](v11, -1, -1);
      MEMORY[0x1DA74E430](v10, -1, -1);
    }

    v13 = [v7 type];
    sub_1DA40F4D4();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = v13;
    *(v14 + 24) = 0;
    return swift_willThrow();
  }
}

id sub_1DA40C628(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return [a1 int64Value];
  }

  if (v2 == 3)
  {
    v4 = [a1 stringValue];
    v5 = sub_1DA421B94();
    v7 = v6;

    result = sub_1DA40C738(v5, v7);
    if ((v8 & 1) == 0)
    {
      return result;
    }

    v9 = 3;
  }

  else
  {
    if (v2 == 2)
    {
      return [a1 doubleValue];
    }

    v9 = [a1 type];
  }

  sub_1DA40F4D4();
  swift_allocError();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = v9;
  *(v10 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_1DA40C738(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1DA40FA64(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA40C798(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {

    sub_1DA40C628(a1);
    if (v5)
    {
    }
  }

  else
  {

    sub_1DA40C738(a1, a2);
    if (v8)
    {
      sub_1DA40F4D4();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 3;
      *(v9 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      return 0x6C75616665645F5FLL;
    }
  }

  return a2;
}

uint64_t sub_1DA40C878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373616C63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA40C93C(char a1)
{
  if (a1)
  {
    return 0x7373616C63;
  }

  else
  {
    return 0x65727574616566;
  }
}

uint64_t sub_1DA40C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DA4223A4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1DA4223A4();
    }
  }

  return result;
}

void sub_1DA40CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v34[0] = v24;
  v34[1] = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAB0, &qword_1DA42A4F0);
  OUTLINED_FUNCTION_6_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v34 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DA40F480();
  sub_1DA422494();
  sub_1DA4222F4();
  if (!v23)
  {
    sub_1DA4222F4();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DA40CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DA421BF4();

  return sub_1DA421BF4();
}

uint64_t sub_1DA40CBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA422434();
  sub_1DA421BF4();
  sub_1DA421BF4();
  return sub_1DA422474();
}

void sub_1DA40CC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAC0, &qword_1DA42A4F8);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v26);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DA40F480();
  sub_1DA422484();
  if (!v23)
  {
    sub_1DA422274();
    sub_1DA422274();
    v27 = OUTLINED_FUNCTION_8_14();
    v28(v27);
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DA40CDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA40C878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA40CE14(uint64_t a1)
{
  v2 = sub_1DA40F480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40CE50(uint64_t a1)
{
  v2 = sub_1DA40F480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40CEA4(uint64_t a1)
{
  sub_1DA422434();
  sub_1DA421BF4();
  sub_1DA421BF4();
  return sub_1DA422474();
}

void sub_1DA40CF74(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0430(0, v2, 0);
    v4 = v77;
    v7 = sub_1DA3E4130();
    v8 = 0;
    v9 = v1 + 64;
    v65 = v5;
    v67 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_50;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_51;
      }

      v72 = v8;
      v73 = v5;
      v70 = v6;
      v11 = *(v1 + 48) + 32 * v7;
      v12 = *(v11 + 24);
      v75 = *(v11 + 16);
      v13 = *(*(v1 + 56) + 8 * v7);
      v15 = *(v77 + 16);
      v14 = *(v77 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1DA3B0430((v14 > 1), v15 + 1, 1);
      }

      *(v77 + 16) = v15 + 1;
      v16 = (v77 + 24 * v15);
      v16[4] = v75;
      v16[5] = v12;
      v16[6] = v13;
      v17 = 1 << *(v1 + 32);
      if (v7 >= v17)
      {
        goto LABEL_52;
      }

      v9 = v1 + 64;
      v18 = *(v1 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_53;
      }

      if (*(v1 + 36) != v73)
      {
        goto LABEL_54;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v20 = v67;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v1 + 72 + 8 * v10);
        v20 = v67;
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1DA3A2020(v7, v73, v70 & 1);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v7, v73, v70 & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v72 + 1;
      v7 = v17;
      v5 = v65;
      if (v72 + 1 == v20)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v26 = sub_1DA40BFB8(v4, sub_1DA40F528);
    v27 = *(v1 + 16);
    if (v27)
    {
      sub_1DA3B0450(0, v27, 0);
      v76 = v3;
      v30 = sub_1DA3E4130();
      v31 = 0;
      v74 = v1 + 64;
      v61 = v28;
      v62 = v27;
      v60 = v1 + 72;
      v63 = v1;
      v64 = v26;
      while (1)
      {
        if (v30 < 0 || v30 >= 1 << *(v1 + 32))
        {
          goto LABEL_55;
        }

        if ((*(v74 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
        {
          goto LABEL_56;
        }

        if (*(v1 + 36) != v28)
        {
          goto LABEL_57;
        }

        v71 = v28;
        v66 = v29;
        v69 = v31;
        v32 = (*(v1 + 48) + 32 * v30);
        v34 = *v32;
        v33 = v32[1];
        v35 = v32[2];
        v36 = v32[3];
        v37 = *(*(v1 + 56) + 8 * v30);
        v38 = *(v26 + 16);

        if (!v38)
        {
          break;
        }

        v68 = v30 >> 6;

        v39 = v33;

        v40 = sub_1DA3B76EC(v35, v36);
        if ((v41 & 1) == 0)
        {

          goto LABEL_47;
        }

        v42 = *(*(v26 + 56) + 8 * v40);

        _s19DiscreteProbabilityCMa();
        v43 = swift_allocObject();
        *(v43 + 16) = v37;
        *(v43 + 24) = v42;
        *(v43 + 32) = v37 / v42;
        v44 = v76;
        v46 = *(v76 + 16);
        v45 = *(v76 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1DA3B0450((v45 > 1), v46 + 1, 1);
          v44 = v76;
        }

        *(v44 + 16) = v46 + 1;
        v47 = (v44 + 40 * v46);
        v47[4] = v34;
        v47[5] = v39;
        v47[6] = v35;
        v47[7] = v36;
        v47[8] = v43;
        v1 = v63;
        v48 = 1 << *(v63 + 32);
        if (v30 >= v48)
        {
          goto LABEL_58;
        }

        v49 = *(v74 + 8 * v68);
        if ((v49 & (1 << v30)) == 0)
        {
          goto LABEL_59;
        }

        v76 = v44;
        if (*(v63 + 36) != v71)
        {
          goto LABEL_60;
        }

        v50 = v49 & (-2 << (v30 & 0x3F));
        if (v50)
        {
          v48 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
          v26 = v64;
          v51 = v62;
          v52 = v69;
        }

        else
        {
          v53 = v68 << 6;
          v54 = v68 + 1;
          v55 = (v60 + 8 * v68);
          v26 = v64;
          v51 = v62;
          v52 = v69;
          while (v54 < (v48 + 63) >> 6)
          {
            v57 = *v55++;
            v56 = v57;
            v53 += 64;
            ++v54;
            if (v57)
            {
              sub_1DA3A2020(v30, v71, v66 & 1);
              v48 = __clz(__rbit64(v56)) + v53;
              goto LABEL_42;
            }
          }

          sub_1DA3A2020(v30, v71, v66 & 1);
        }

LABEL_42:
        v29 = 0;
        v31 = v52 + 1;
        v30 = v48;
        v28 = v61;
        if (v31 == v51)
        {

          v59 = v76;
          goto LABEL_48;
        }
      }

LABEL_47:
      sub_1DA40F4D4();
      swift_allocError();
      *(v58 + 8) = 0;
      *(v58 + 16) = 0;
      *v58 = 0;
      *(v58 + 24) = -64;
      swift_willThrow();

      return;
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_48:
    sub_1DA3D5ABC(v59);
  }
}

void sub_1DA40D524(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v70 = MEMORY[0x1E69E7CC0];
    v67 = *(a1 + 16);
    sub_1DA3B0430(0, v1, 0);
    v3 = v70;
    v5 = sub_1DA3E4130();
    v7 = v67;
    v6 = a1;
    v9 = v8;
    v10 = 0;
    v11 = a1 + 64;
    v12 = v8;
    v64 = v8;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v13 = v5 >> 6;
      if ((*(v11 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_49;
      }

      v14 = *(*(v6 + 56) + 8 * v5);
      v16 = *(v70 + 16);
      v15 = *(v70 + 24);
      if (v16 >= v15 >> 1)
      {
        v61 = v4;
        sub_1DA3B0430((v15 > 1), v16 + 1, 1);
        v4 = v61;
        v12 = v64;
        v11 = a1 + 64;
        v7 = v67;
        v6 = a1;
      }

      *(v70 + 16) = v16 + 1;
      v17 = v70 + 24 * v16;
      strcpy((v17 + 32), "__sentinal__");
      *(v17 + 45) = 0;
      *(v17 + 46) = -5120;
      *(v17 + 48) = v14;
      v18 = 1 << *(v6 + 32);
      if (v5 >= v18)
      {
        goto LABEL_50;
      }

      v19 = *(v11 + 8 * v13);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_51;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_52;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (a1 + 72 + 8 * v13);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1DA3A2020(v5, v9, v4 & 1);
            v12 = v64;
            v11 = a1 + 64;
            v7 = v67;
            v6 = a1;
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v5, v9, v4 & 1);
        v12 = v64;
        v11 = a1 + 64;
        v7 = v67;
        v6 = a1;
      }

LABEL_19:
      v4 = 0;
      ++v10;
      v5 = v18;
      v9 = v12;
      if (v10 == v7)
      {
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v26 = sub_1DA40BFB8(v3, sub_1DA40F528);
  v27 = *(a1 + 16);
  if (v27)
  {
    sub_1DA3B0470(0, v27, 0);
    v68 = v2;
    v30 = sub_1DA3E4130();
    v31 = a1;
    v32 = 0;
    v33 = a1 + 64;
    v59 = v28;
    v60 = v27;
    v62 = v26;
    while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v31 + 32))
    {
      v34 = v30 >> 6;
      if ((*(v33 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_54;
      }

      if (*(v31 + 36) != v28)
      {
        goto LABEL_55;
      }

      v66 = v28;
      v63 = v29;
      v35 = (*(v31 + 48) + 16 * v30);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(*(v31 + 56) + 8 * v30);
      v39 = *(v26 + 16);

      if (!v39 || (v40 = sub_1DA3B76EC(0x6E69746E65735F5FLL, 0xEC0000005F5F6C61), (v41 & 1) == 0))
      {
        sub_1DA40F4D4();
        swift_allocError();
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        *v57 = 0;
        *(v57 + 24) = -64;
        swift_willThrow();

        return;
      }

      v65 = v32;
      v42 = *(*(v26 + 56) + 8 * v40);
      _s19DiscreteProbabilityCMa();
      v43 = swift_allocObject();
      *(v43 + 16) = v38;
      *(v43 + 24) = v42;
      *(v43 + 32) = v38 / v42;
      v44 = v68;
      v46 = *(v68 + 16);
      v45 = *(v68 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1DA3B0470(v45 > 1, v46 + 1, 1);
        v44 = v68;
      }

      *(v44 + 16) = v46 + 1;
      v47 = (v44 + 24 * v46);
      v47[4] = v37;
      v47[5] = v36;
      v47[6] = v43;
      v31 = a1;
      v48 = 1 << *(a1 + 32);
      if (v30 >= v48)
      {
        goto LABEL_56;
      }

      v33 = a1 + 64;
      v49 = *(a1 + 64 + 8 * v34);
      if ((v49 & (1 << v30)) == 0)
      {
        goto LABEL_57;
      }

      v68 = v44;
      if (*(a1 + 36) != v66)
      {
        goto LABEL_58;
      }

      v50 = v49 & (-2 << (v30 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
        v51 = v60;
        v26 = v62;
      }

      else
      {
        v52 = v34 << 6;
        v53 = v34 + 1;
        v54 = (a1 + 72 + 8 * v34);
        v51 = v60;
        v26 = v62;
        while (v53 < (v48 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_1DA3A2020(v30, v66, v63 & 1);
            v31 = a1;
            v48 = __clz(__rbit64(v55)) + v52;
            goto LABEL_42;
          }
        }

        sub_1DA3A2020(v30, v66, v63 & 1);
        v31 = a1;
      }

LABEL_42:
      v29 = 0;
      v32 = v65 + 1;
      v30 = v48;
      v28 = v59;
      if (v65 + 1 == v51)
      {

        v58 = v68;
        goto LABEL_46;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_46:
  sub_1DA3D5AE4(v58);
}

void sub_1DA40DAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0430(0, v1, 0);
    v2 = v30;
    v6 = sub_1DA3E4130();
    v7 = 0;
    v8 = a1 + 64;
    v24 = v4;
    v25 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v27 = v7;
      v28 = v4;
      v26 = v5;
      v10 = *(a1 + 48) + 32 * v6;
      v11 = *(v10 + 24);
      v29 = *(v10 + 16);
      v12 = *(*(*(a1 + 56) + 8 * v6) + 24);
      v13 = *(v30 + 16);
      v14 = *(v30 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1DA3B0430((v14 > 1), v13 + 1, 1);
      }

      *(v30 + 16) = v13 + 1;
      v15 = (v30 + 24 * v13);
      v15[4] = v29;
      v15[5] = v11;
      v15[6] = v12;
      v16 = 1 << *(a1 + 32);
      if (v6 >= v16)
      {
        goto LABEL_24;
      }

      v8 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v28)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1DA3A2020(v6, v28, v26 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v6, v28, v26 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v27 + 1;
      v6 = v16;
      v4 = v24;
      if (v27 + 1 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1DA40BFB8(v2, sub_1DA40F6F0);
  }
}

void sub_1DA40DD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0430(0, v1, 0);
    v2 = v30;
    v6 = sub_1DA3E4130();
    v7 = 0;
    v8 = a1 + 64;
    v24 = v4;
    v25 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v27 = v7;
      v28 = v4;
      v26 = v5;
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = v10[1];
      v29 = *v10;
      v12 = *(*(*(a1 + 56) + 8 * v6) + 24);
      v13 = *(v30 + 16);
      v14 = *(v30 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1DA3B0430((v14 > 1), v13 + 1, 1);
      }

      *(v30 + 16) = v13 + 1;
      v15 = (v30 + 24 * v13);
      v15[4] = v29;
      v15[5] = v11;
      v15[6] = v12;
      v16 = 1 << *(a1 + 32);
      if (v6 >= v16)
      {
        goto LABEL_24;
      }

      v8 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v28)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1DA3A2020(v6, v28, v26 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v6, v28, v26 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v27 + 1;
      v6 = v16;
      v4 = v24;
      if (v27 + 1 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1DA40BFB8(v2, sub_1DA40F6F0);
  }
}

void sub_1DA40DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if ((a3 - 1) >= 3)
  {

    sub_1DA40F4D4();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = a3;
    *(v22 + 24) = 0;
    swift_willThrow();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF520, &qword_1DA427350);
    swift_deallocPartialClassInstance();
    return;
  }

  v6 = a1;
  v52 = v4;
  *(v4 + 32) = a3;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v53 = v6;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      do
      {
LABEL_9:
        v15 = *(v6 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v10))));
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA3A5B78();
          v13 = v20;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1DA3A5B78();
          v13 = v21;
        }

        v10 &= v10 - 1;
        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v6 = v53;
      }

      while (v10);
    }
  }

  *(v52 + 40) = sub_1DA3BC3DC(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAE8, &qword_1DA42A518);
  v23 = sub_1DA4221F4();
  v24 = v23;
  v25 = 0;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = v23 + 64;
  if (!v28)
  {
LABEL_20:
    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_40;
      }

      if (v25 >= v29)
      {

        v43 = 0;
        *(v52 + 24) = v24;
        v44 = 1 << *(v24 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & *(v24 + 64);
        v47 = (v44 + 63) >> 6;
        for (i = 0.0; v46; i = i + *(*(v24 + 56) + ((v49 << 9) | (8 * v50))))
        {
          v49 = v43;
LABEL_36:
          v50 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
        }

        while (1)
        {
          v49 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_41;
          }

          if (v49 >= v47)
          {
            *(v52 + 48) = i;
            return;
          }

          v46 = *(v30 + 8 * v49);
          ++v43;
          if (v46)
          {
            v43 = v49;
            goto LABEL_36;
          }
        }
      }

      v33 = *(a2 + 64 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v28 = (v33 - 1) & v33;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
LABEL_25:
    v34 = v31 | (v25 << 6);
    v35 = (*(a2 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = *(*(a2 + 56) + 8 * v34);
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v24 + 48) + 16 * v34);
    *v39 = v37;
    v39[1] = v36;
    *(*(v24 + 56) + 8 * v34) = v38;
    v40 = *(v24 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      break;
    }

    *(v24 + 16) = v42;

    if (!v28)
    {
      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
}

void sub_1DA40E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if ((a3 - 1) >= 3)
  {

    sub_1DA40F4D4();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = a3;
    *(v22 + 24) = 0;
    swift_willThrow();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
    swift_deallocPartialClassInstance();
    return;
  }

  v6 = a1;
  v52 = v4;
  *(v4 + 32) = a3;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v53 = v6;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      do
      {
LABEL_9:
        v15 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
        v16 = *v15;
        v17 = v15[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA3A5B78();
          v13 = v20;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1DA3A5B78();
          v13 = v21;
        }

        v10 &= v10 - 1;
        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v6 = v53;
      }

      while (v10);
    }
  }

  *(v52 + 40) = sub_1DA3BC3DC(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAE8, &qword_1DA42A518);
  v23 = sub_1DA4221F4();
  v24 = v23;
  v25 = 0;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = v23 + 64;
  if (!v28)
  {
LABEL_20:
    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_40;
      }

      if (v25 >= v29)
      {

        v43 = 0;
        *(v52 + 24) = v24;
        v44 = 1 << *(v24 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & *(v24 + 64);
        v47 = (v44 + 63) >> 6;
        for (i = 0.0; v46; i = i + *(*(v24 + 56) + ((v49 << 9) | (8 * v50))))
        {
          v49 = v43;
LABEL_36:
          v50 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
        }

        while (1)
        {
          v49 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_41;
          }

          if (v49 >= v47)
          {
            *(v52 + 48) = i;
            return;
          }

          v46 = *(v30 + 8 * v49);
          ++v43;
          if (v46)
          {
            v43 = v49;
            goto LABEL_36;
          }
        }
      }

      v33 = *(a2 + 64 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v28 = (v33 - 1) & v33;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
LABEL_25:
    v34 = v31 | (v25 << 6);
    v35 = (*(a2 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = *(*(a2 + 56) + 8 * v34);
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v24 + 48) + 16 * v34);
    *v39 = v37;
    v39[1] = v36;
    *(*(v24 + 56) + 8 * v34) = v38;
    v40 = *(v24 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      break;
    }

    *(v24 + 16) = v42;

    if (!v28)
    {
      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
}

double sub_1DA40E708(void *a1, void (*a2)(void), void (*a3)(void), int a4)
{
  v65 = *v4;
  v11 = *(v65 + 10);
  sub_1DA421F94();
  OUTLINED_FUNCTION_6_1();
  v63 = v13;
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v67 = v11;
  OUTLINED_FUNCTION_6_1();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v61 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  LODWORD(v66) = a4;
  if (a4)
  {
    v57 = v17;
    v60 = &v56 - v23;

    v25 = sub_1DA40C3F0(a1);
    if (v5)
    {

      return v6;
    }

    v27 = v25;
    v28 = v26;
    v70 = &unk_1F55EBA60;
    v71 = sub_1DA40FC20();
    v29 = swift_allocObject();
    *&v69 = v29;
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = a2;
    v29[5] = a3;
    sub_1DA3A1FF8(&v69, v74);
    v75 = a2;
    v76 = a3;

    v59 = a2;
    v58 = a3;
    v24 = v60;
    v17 = v57;
  }

  else
  {
    v74[3] = MEMORY[0x1E69E6158];
    v74[4] = MEMORY[0x1E69E6168];
    v74[0] = a1;
    v74[1] = a2;
    v75 = a1;
    v76 = a2;
    sub_1DA40FB78(a1, a2, a3, 0);

    v59 = a1;
    v58 = a2;
  }

  sub_1DA3A7ED4(v74, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAD8, &qword_1DA42A508);
  v30 = v67;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v30);
    (*(v17 + 32))(v24, v15, v30);
    _s19DiscreteProbabilityCMa();
    sub_1DA421B04();
    v31 = v69;
    if (v69)
    {
      (*(v17 + 8))(v24, v30);
      sub_1DA40FBB8(v74);
      v6 = *(v31 + 32);
    }

    else
    {
      v65 = v4;
      v66 = v5;
      if (qword_1ECBAE838 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1ECBAE838);
      }

      v36 = sub_1DA421A94();
      __swift_project_value_buffer(v36, static Logger.inferenceCategory);
      v37 = *(v17 + 16);
      v38 = v62;
      v60 = v24;
      v37(v62, v24, v30);
      sub_1DA40FBE8(v74, &v69);
      v39 = sub_1DA421A74();
      v40 = sub_1DA421F54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v68 = v64;
        *v41 = 136315394;
        a3 = v61;
        v37(v61, v38, v30);
        v42 = sub_1DA421BB4();
        v44 = v43;
        v45 = OUTLINED_FUNCTION_5_13();
        a3(v45);
        v46 = sub_1DA3A5FE8(v42, v44, &v68);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        v47 = v72;
        v48 = v73;

        sub_1DA40FBB8(&v69);
        v49 = sub_1DA3A5FE8(v47, v48, &v68);

        *(v41 + 14) = v49;
        _os_log_impl(&dword_1DA39E000, v39, v40, "Unobserved key: %s. Returning a scaled nominal value using totalKey: %s", v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      else
      {

        sub_1DA40FBB8(&v69);
        v50 = OUTLINED_FUNCTION_5_13();
        a3(v50);
      }

      v51 = v65;
      v52 = sub_1DA3EA440(v59, v58, *(v65 + 3));
      v54 = v53;
      (a3)(v60, v30);
      sub_1DA40FBB8(v74);
      if (v54)
      {
        v55 = v51[6];
      }

      else
      {
        v55 = *&v52;
      }

      return 1.0 / (v55 + 1.0);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v30);
    (*(v63 + 8))(v15, v64);
    v32 = v66;
    v33 = v66 & 1 | 0x40;
    sub_1DA40F4D4();
    swift_allocError();
    *v34 = a1;
    *(v34 + 8) = a2;
    *(v34 + 16) = a3;
    *(v34 + 24) = v33;
    swift_willThrow();
    sub_1DA40FB78(a1, a2, a3, v32 & 1);
    sub_1DA40FBB8(v74);
  }

  return v6;
}