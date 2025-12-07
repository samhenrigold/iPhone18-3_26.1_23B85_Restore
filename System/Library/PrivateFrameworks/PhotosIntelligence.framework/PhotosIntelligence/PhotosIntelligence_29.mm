uint64_t PersonalTraitSelector.__allocating_init(configuration:totalNumberOfAssets:)(const void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(a1, a2);
  return v4;
}

PhotosIntelligence::PersonalTraitSelector::SelectionResult __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersonalTraitSelector.selectTraits(from:)(Swift::OpaquePointer from)
{
  v4 = v3;
  v5 = v2;
  v7 = v1;
  v8 = type metadata accessor for PersonalTrait(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v239 = (v11 - v10);
  v12 = *(from._rawValue + 2);
  v13 = &qword_1EC218000;
  if (v12)
  {
    v234 = v9;
    rawValue = from._rawValue;
    v247 = MEMORY[0x1E69E7CC0];
    v14 = sub_1C702B198();
    sub_1C75504FC();
    v235 = v7;
    if (v14)
    {
      v15 = sub_1C7187A08(from._rawValue);
      v16 = v2;
      rawValue = v15;
      sub_1C75504FC();

      v17 = OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8(v17);
      if (!*(v15 + 16))
      {
        v45 = swift_bridgeObjectRelease_n();
        v49 = v247;
        *v7 = MEMORY[0x1E69E7CC0];
        v7[1] = v49;
        goto LABEL_76;
      }

      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      v18 = sub_1C754FEEC();
      v19 = sub_1C75511BC();
      if (os_log_type_enabled(v18, v19))
      {
        v226 = from._rawValue;
        v227 = v18;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        OUTLINED_FUNCTION_46_15(v21, &v248);
        *v20 = 134218755;
        *(v20 + 4) = *(v15 + 16);

        v228 = v20;
        *(v20 + 12) = 2085;
        v26 = *(v15 + 16);
        v231 = v15;
        if (v26)
        {
          v242[0] = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v26, 0, v22, v23, v24, v25);
          v27 = v242[0];
          OUTLINED_FUNCTION_11_33();
          v29 = v15 + v28;
          v236 = *(v30 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v32.isa = v16->isa;
            isa = v16[1].isa;
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v16, v33);
            v242[0] = v27;
            v39 = *(v27 + 16);
            v38 = *(v27 + 24);
            v16 = (v39 + 1);
            if (v39 >= v38 >> 1)
            {
              OUTLINED_FUNCTION_12_36(v38, v34, v35, v36, v37);
              v27 = v242[0];
            }

            *(v27 + 16) = v16;
            v40 = v27 + 16 * v39;
            *(v40 + 32) = v32;
            *(v40 + 40) = isa;
            v29 += v236;
            --v26;
          }

          while (v26);
        }

        else
        {

          v27 = MEMORY[0x1E69E7CC0];
        }

        v50 = MEMORY[0x1CCA5D090](v27, MEMORY[0x1E69E6158]);
        v52 = v51;

        v53 = sub_1C6F765A4(v50, v52, v243);

        *(v228 + 14) = v53;
        *(v228 + 22) = 2048;

        *(v228 + 24) = v12;

        *(v228 + 32) = 2085;
        v242[0] = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v12, 0, v54, v55, v56, v57);
        v58 = v242[0];
        OUTLINED_FUNCTION_191();
        v48 = v226 + v59;
        v60 = *(v234 + 72);
        do
        {
          OUTLINED_FUNCTION_1_65();
          sub_1C718AFC8(v48, v239);
          v62 = *v239;
          v61 = v239[1];
          sub_1C75504FC();
          OUTLINED_FUNCTION_0_84();
          sub_1C718B024(v239, v63);
          v242[0] = v58;
          v69 = *(v58 + 16);
          v68 = *(v58 + 24);
          if (v69 >= v68 >> 1)
          {
            OUTLINED_FUNCTION_12_36(v68, v64, v65, v66, v67);
            v58 = v242[0];
          }

          *(v58 + 16) = v69 + 1;
          v70 = v58 + 16 * v69;
          *(v70 + 32) = v62;
          *(v70 + 40) = v61;
          v48 += v60;
          --v12;
        }

        while (v12);
        v71 = MEMORY[0x1CCA5D090](v58, MEMORY[0x1E69E6158]);
        v73 = v72;

        v74 = sub_1C6F765A4(v71, v73, v243);

        *(v228 + 34) = v74;
        OUTLINED_FUNCTION_25_18();
        v5 = *(v75 - 256);
        _os_log_impl(v76, v5, v77, v78, v228, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_31_19();
        OUTLINED_FUNCTION_47_15();
        v13 = &qword_1EC218000;
        v47 = v231;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v47 = v15;
        v48 = v4;
        v5 = v16;
        v13 = &qword_1EC218000;
      }
    }

    else
    {
      v47 = from._rawValue;
      v48 = v4;
    }

    v79 = &unk_1C756A000;
    if (sub_1C702B198())
    {
      v80 = v13;
      v81 = sub_1C75504FC();
      sub_1C71883A0(v81);
      if (v48)
      {
LABEL_51:
        swift_bridgeObjectRelease_n();

        goto LABEL_76;
      }

      v83 = v82;
      v84 = v5;

      v85 = OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8(v85);
      sub_1C75504FC();
      v86 = sub_1C754FEEC();
      v87 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_55_13(v87))
      {
        v88 = OUTLINED_FUNCTION_29_19(&v250);
        v89 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v89, &v249);
        *v88 = 134218499;
        *(v88 + 4) = v83[2];

        OUTLINED_FUNCTION_35_12();
        *(v88 + 22) = v90;
        v91 = v83[2].isa;
        v92 = MEMORY[0x1E69E7CC0];
        if (v91)
        {
          v231 = v47;
          v93 = OUTLINED_FUNCTION_30_21();
          sub_1C6F7ED9C(v93, v91, 0, v94, v95, v96, v97);
          v92 = v242[0];
          OUTLINED_FUNCTION_191();
          v48 = v83 + v98;
          v99 = *(v234 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v101 = v84->isa;
            v100 = v84[1].isa;
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v84, v102);
            OUTLINED_FUNCTION_52_14();
            if (v108)
            {
              OUTLINED_FUNCTION_12_36(v107, v103, v104, v105, v106);
              v92 = v242[0];
            }

            *(v92 + 16) = v84;
            v109 = v92 + 16 * v83;
            *(v109 + 32) = v101;
            *(v109 + 40) = v100;
            v48 += v99;
            --v91;
          }

          while (v91);
          OUTLINED_FUNCTION_31_19();
          v79 = &unk_1C756A000;
        }

        v110 = MEMORY[0x1CCA5D090](v92, MEMORY[0x1E69E6158]);
        v112 = v111;

        v113 = sub_1C6F765A4(v110, v112, v243);

        *(v88 + 24) = v113;
        OUTLINED_FUNCTION_25_18();
        v115 = *(v114 - 256);
        _os_log_impl(v116, v115, v117, v118, v88, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v226);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_47_15();
        v13 = &qword_1EC218000;
      }

      else
      {

        v13 = v80;
      }

      OUTLINED_FUNCTION_58_13(&rawValue, v240);
      rawValue = v83;
    }

    else
    {
      v83 = v47;
    }

    if (sub_1C702B198())
    {
      v119 = sub_1C75504FC();
      v120 = sub_1C7188EEC(v119);
      v122 = v121;
      v123 = v120;

      v124 = OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8(v124);
      sub_1C75504FC();
      v125 = sub_1C754FEEC();
      v126 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_55_13(v126))
      {
        v227 = v125;
        v127 = swift_slowAlloc();
        v128 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v128, &v249);
        *v127 = 134218755;
        *(v127 + 4) = v122[2];

        *(v127 + 12) = 2048;
        *(v127 + 14) = v83[2];
        *(v127 + 22) = 2048;
        *(v127 + 24) = v123;
        *(v127 + 32) = 2085;
        v129 = v122[2].isa;
        v130 = MEMORY[0x1E69E7CC0];
        if (v129)
        {
          v131 = OUTLINED_FUNCTION_30_21();
          sub_1C6F7ED9C(v131, v129, 0, v132, v133, v134, v135);
          v130 = v242[0];
          OUTLINED_FUNCTION_11_33();
          v231 = v122;
          v48 = v122 + v136;
          v138 = *(v137 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v139 = *v13;
            v140 = v13[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v13, v141);
            OUTLINED_FUNCTION_52_14();
            if (v108)
            {
              OUTLINED_FUNCTION_12_36(v146, v142, v143, v144, v145);
              v130 = v242[0];
            }

            *(v130 + 16) = v13;
            v147 = v130 + 16 * v83;
            *(v147 + 32) = v139;
            *(v147 + 40) = v140;
            v48 += v138;
            --v129;
          }

          while (v129);
          OUTLINED_FUNCTION_31_19();
          v148 = v235;
          v122 = v231;
          v79 = &unk_1C756A000;
        }

        else
        {
          v148 = v235;
        }

        v149 = MEMORY[0x1CCA5D090](v130, MEMORY[0x1E69E6158]);
        v151 = v150;

        v152 = sub_1C6F765A4(v149, v151, v243);

        *(v127 + 34) = v152;
        OUTLINED_FUNCTION_25_18();
        v154 = *(v153 - 256);
        _os_log_impl(v155, v154, v156, v157, v127, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v226);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        v148 = v235;
      }

      OUTLINED_FUNCTION_58_13(&rawValue, v241);
      rawValue = v122;
    }

    else
    {
      v122 = v83;
      v148 = v235;
    }

    if (sub_1C702B198())
    {
      v158 = sub_1C75504FC();
      sub_1C71892B4(v158);
      if (v48)
      {
        goto LABEL_51;
      }

      v122 = v159;

      OUTLINED_FUNCTION_58_13(&rawValue, v242);
      rawValue = v122;
      sub_1C75504FC();

      v160 = OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8(v160);
      sub_1C75504FC();
      v161 = sub_1C754FEEC();
      v237 = sub_1C75511BC();
      if (os_log_type_enabled(v161, v237))
      {
        v162 = OUTLINED_FUNCTION_29_19(&v251);
        v163 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v163, &v250);
        *v162 = v79[123];
        *(v162 + 4) = v122[2];

        OUTLINED_FUNCTION_35_12();
        v229 = v162;
        *(v162 + 22) = v168;
        v169 = v122[2].isa;
        if (v169)
        {
          v245 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v169, 0, v164, v165, v166, v167);
          v170 = v245;
          OUTLINED_FUNCTION_11_33();
          v172 = v122 + v171;
          v174 = *(v173 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            sub_1C718AFC8(v172, v239);
            v175 = *v239;
            v176 = v239[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v239, v177);
            v245 = v170;
            v179 = *(v170 + 16);
            v178 = *(v170 + 24);
            if (v179 >= v178 >> 1)
            {
              v181 = OUTLINED_FUNCTION_15(v178);
              sub_1C6F7ED9C(v181, v179 + 1, 1, v182, v183, v184, v185);
              v170 = v245;
            }

            *(v170 + 16) = v179 + 1;
            v180 = v170 + 16 * v179;
            *(v180 + 32) = v175;
            *(v180 + 40) = v176;
            v172 += v174;
            --v169;
          }

          while (v169);

          OUTLINED_FUNCTION_31_19();
          v148 = v235;
        }

        else
        {

          v170 = MEMORY[0x1E69E7CC0];
        }

        v186 = MEMORY[0x1CCA5D090](v170, MEMORY[0x1E69E6158]);
        v188 = v187;

        v189 = sub_1C6F765A4(v186, v188, v243);

        *(v229 + 24) = v189;
        _os_log_impl(&dword_1C6F5C000, v231, v237, "Randomly sampled %ld/%ld traits weighted by score: %{sensitive}s", v229, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v227);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_47_15();
        v79 = &unk_1C756A000;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    if (sub_1C702B198())
    {
      v190 = sub_1C75504FC();
      sub_1C718A1B4(v190);
      v192 = v191;

      OUTLINED_FUNCTION_58_13(&rawValue, v243);
      rawValue = v192;

      v122 = v192;
    }

    v45 = sub_1C702B198();
    if (v45)
    {
      v193 = sub_1C75504FC();
      v194 = sub_1C718A208(v193);

      v195 = OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8(v195);
      sub_1C75504FC();
      v196 = sub_1C754FEEC();
      v197 = sub_1C75511BC();
      if (os_log_type_enabled(v196, v197))
      {
        v233 = v197;
        v198 = OUTLINED_FUNCTION_20_1();
        v245 = OUTLINED_FUNCTION_20_1();
        *v198 = v79[123];
        *(v198 + 4) = *(v194 + 16);

        *(v198 + 12) = 2085;
        v203 = v194;
        v204 = *(v194 + 16);
        v205 = MEMORY[0x1E69E7CC0];
        v238 = v203;
        if (v204)
        {
          v230 = v198;
          v232 = v196;
          v244 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v204, 0, v199, v200, v201, v202);
          v205 = v244;
          OUTLINED_FUNCTION_11_33();
          v207 = v203 + v206;
          v203 = *(v208 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            sub_1C718AFC8(v207, v239);
            v209 = *v239;
            v210 = v239[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v239, v211);
            v244 = v205;
            v213 = *(v205 + 16);
            v212 = *(v205 + 24);
            if (v213 >= v212 >> 1)
            {
              v215 = OUTLINED_FUNCTION_15(v212);
              sub_1C6F7ED9C(v215, v213 + 1, 1, v216, v217, v218, v219);
              v205 = v244;
            }

            *(v205 + 16) = v213 + 1;
            v214 = v205 + 16 * v213;
            *(v214 + 32) = v209;
            *(v214 + 40) = v210;
            v207 += v203;
            --v204;
          }

          while (v204);
          OUTLINED_FUNCTION_31_19();
          v196 = v232;
          v198 = v230;
        }

        v220 = MEMORY[0x1CCA5D090](v205, MEMORY[0x1E69E6158]);
        v222 = v221;

        v223 = sub_1C6F765A4(v220, v222, &v245);

        *(v198 + 14) = v223;
        *(v198 + 22) = 2048;
        *(v198 + 24) = v122[2];
        _os_log_impl(&dword_1C6F5C000, v196, v233, "Selected final top %ld traits %{sensitive}s from %ld candidates.", v198, 0x20u);
        OUTLINED_FUNCTION_47_15();
        __swift_destroy_boxed_opaque_existential_1(v203);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        v148 = v235;
        v194 = v238;
      }

      else
      {
      }
    }

    else
    {
      v194 = v122;
    }

    v224 = v247;
    *v148 = v194;
    v148[1] = v224;
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1C754FEEC();
    v43 = sub_1C75511BC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1C6F5C000, v42, v43, "There's no traits to select from, returning an empty result of personal traits", v44, 2u);
      OUTLINED_FUNCTION_109();
    }

    *v7 = v41;
    v7[1] = v41;
  }

LABEL_76:
  result.rejectedTraits._rawValue = v46;
  result.selectedTraits._rawValue = v45;
  return result;
}

unint64_t PersonalTraitSelector.SelectionResult.description.getter()
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for PersonalTrait(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = v0[1];
  v18 = *(*v0 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v59 = v0[1];
    v65 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v18, 0, v9, v10, v11, v12);
    v19 = v65;
    OUTLINED_FUNCTION_191();
    v21 = v16 + v20;
    v61 = *(v8 + 72);
    do
    {
      sub_1C718AFC8(v21, v15);
      OUTLINED_FUNCTION_50_15();
      v22 = PersonalTrait.description.getter();
      MEMORY[0x1CCA5CD70](v22);

      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v15, v23);
      v25 = *(v65 + 16);
      v24 = *(v65 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_15(v24);
        sub_1C6F7ED9C(v27, v25 + 1, 1, v28, v29, v30, v31);
      }

      *(v65 + 16) = v25 + 1;
      v26 = v65 + 16 * v25;
      *(v26 + 32) = v63;
      *(v26 + 40) = v64;
      v21 += v61;
      --v18;
    }

    while (v18);
    v17 = v59;
  }

  v32 = OUTLINED_FUNCTION_57_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  sub_1C718DE9C(&qword_1EDD0CF58);
  v34 = OUTLINED_FUNCTION_40_18();
  v36 = v35;

  v41 = *(v17 + 16);
  if (v41)
  {
    v60 = v34;
    v62 = v36;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v41, 0, v37, v38, v39, v40);
    OUTLINED_FUNCTION_191();
    v43 = v17 + v42;
    v44 = *(v2 + 72);
    do
    {
      sub_1C718AFC8(v43, v6);
      OUTLINED_FUNCTION_50_15();
      v45 = PersonalTrait.description.getter();
      MEMORY[0x1CCA5CD70](v45);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v46 = PersonalTraitSelector.RejectionReason.description.getter();
      MEMORY[0x1CCA5CD70](v46);

      sub_1C718B024(v6, type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait);
      v48 = *(v66 + 16);
      v47 = *(v66 + 24);
      if (v48 >= v47 >> 1)
      {
        v50 = OUTLINED_FUNCTION_15(v47);
        sub_1C6F7ED9C(v50, v48 + 1, 1, v51, v52, v53, v54);
      }

      *(v66 + 16) = v48 + 1;
      v49 = v66 + 16 * v48;
      *(v49 + 32) = v19;
      *(v49 + 40) = v64;
      v43 += v44;
      --v41;
    }

    while (v41);
    v34 = v60;
    v36 = v62;
  }

  v55 = OUTLINED_FUNCTION_40_18();
  v57 = v56;

  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v34, v36);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A1E10);
  MEMORY[0x1CCA5CD70](v55, v57);

  return 0xD000000000000011;
}

uint64_t sub_1C71836B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A2070 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001C75A2090 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C75A20B0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746C69464E706F74 && a2 == 0xED0000676E697265;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1953656691 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C71838B4(char a1)
{
  result = 0x7461676572676761;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x746C69464E706F74;
      break;
    case 5:
      result = 1953656691;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7183988(uint64_t a1)
{
  v2 = sub_1C718B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71839C4(uint64_t a1)
{
  v2 = sub_1C718B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71836B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7183A30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C71838AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C7183A58(uint64_t a1)
{
  v2 = sub_1C718B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183A94(uint64_t a1)
{
  v2 = sub_1C718B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183AD0(uint64_t a1)
{
  v2 = sub_1C718B1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183B0C(uint64_t a1)
{
  v2 = sub_1C718B1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183B48(uint64_t a1)
{
  v2 = sub_1C718B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183B84(uint64_t a1)
{
  v2 = sub_1C718B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183BC0(uint64_t a1)
{
  v2 = sub_1C718B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183BFC(uint64_t a1)
{
  v2 = sub_1C718B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183C38(uint64_t a1)
{
  v2 = sub_1C718B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183C74(uint64_t a1)
{
  v2 = sub_1C718B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183CB0(uint64_t a1)
{
  v2 = sub_1C718B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183CEC(uint64_t a1)
{
  v2 = sub_1C718B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitSelector.Step.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218488, &qword_1C7571D58);
  OUTLINED_FUNCTION_3_0();
  v77 = v34;
  v78 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_36();
  v76 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218490, &qword_1C7571D60);
  OUTLINED_FUNCTION_3_0();
  v74 = v38;
  v75 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_36();
  v73 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218498, &qword_1C7571D68);
  OUTLINED_FUNCTION_3_0();
  v71 = v42;
  v72 = v41;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_36();
  v70 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184A0, &qword_1C7571D70);
  OUTLINED_FUNCTION_3_0();
  v68 = v46;
  v69 = v45;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_36();
  v67 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184A8, &qword_1C7571D78);
  OUTLINED_FUNCTION_3_0();
  v65 = v50;
  v66 = v49;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_28_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184B0, &qword_1C7571D80);
  OUTLINED_FUNCTION_3_0();
  v63 = v53;
  v64 = v52;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v63 - v55;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184B8, &qword_1C7571D88);
  OUTLINED_FUNCTION_3_0();
  v58 = v57;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_158();
  v60 = *v26;
  OUTLINED_FUNCTION_70(v32, v32[3]);
  sub_1C718B07C();
  sub_1C755200C();
  switch(v60)
  {
    case 1:
      a12 = 1;
      sub_1C718B220();
      v60 = v79;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      (*(v65 + 8))(v28, v66);
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_1C718B1CC();
      v56 = v67;
      OUTLINED_FUNCTION_9_0(&type metadata for PersonalTraitSelector.Step.MinimumAssetRatioFilteringCodingKeys, &a13);
      v62 = v68;
      v61 = v69;
      goto LABEL_8;
    case 3:
      a14 = 3;
      sub_1C718B178();
      v56 = v70;
      OUTLINED_FUNCTION_9_0(&type metadata for PersonalTraitSelector.Step.RandomWeightedSamplingCodingKeys, &a14);
      v62 = v71;
      v61 = v72;
      goto LABEL_8;
    case 4:
      a15 = 4;
      sub_1C718B124();
      v56 = v73;
      OUTLINED_FUNCTION_9_0(&type metadata for PersonalTraitSelector.Step.TopNFilteringCodingKeys, &a15);
      v62 = v74;
      v61 = v75;
      goto LABEL_8;
    case 5:
      a16 = 5;
      sub_1C718B0D0();
      v56 = v76;
      OUTLINED_FUNCTION_9_0(&type metadata for PersonalTraitSelector.Step.SortCodingKeys, &a16);
      v62 = v77;
      v61 = v78;
      goto LABEL_8;
    default:
      a11 = 0;
      sub_1C718B274();
      OUTLINED_FUNCTION_9_0(&type metadata for PersonalTraitSelector.Step.AggregationCodingKeys, &a11);
      v62 = v63;
      v61 = v64;
LABEL_8:
      (*(v62 + 8))(v56, v61);
LABEL_9:
      (*(v58 + 8))(v27, v60);
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t PersonalTraitSelector.Step.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

void PersonalTraitSelector.Step.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v30;
  a26 = v31;
  v33 = v32;
  v95 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184F8, &qword_1C7571D90);
  OUTLINED_FUNCTION_3_0();
  v91 = v35;
  v92 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_36();
  v93 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218500, &qword_1C7571D98);
  OUTLINED_FUNCTION_3_0();
  v89 = v39;
  v90 = v40;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_36();
  v98 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218508, &qword_1C7571DA0);
  OUTLINED_FUNCTION_3_0();
  v87 = v44;
  v88 = v43;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_36();
  v94 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218510, &qword_1C7571DA8);
  OUTLINED_FUNCTION_3_0();
  v85 = v48;
  v86 = v47;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_36();
  v97 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218518, &qword_1C7571DB0);
  OUTLINED_FUNCTION_3_0();
  v83 = v52;
  v84 = v51;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_390();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218520, &qword_1C7571DB8);
  OUTLINED_FUNCTION_3_0();
  v82 = v55;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_28_15();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218528, &unk_1C7571DC0);
  OUTLINED_FUNCTION_3_0();
  v96 = v58;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v33, v33[3]);
  sub_1C718B07C();
  sub_1C7551FFC();
  if (v26)
  {
    goto LABEL_10;
  }

  v80 = v54;
  v81 = v33;
  v60 = v97;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  v64 = v57;
  if (v62 == v63 >> 1)
  {
    v65 = v96;
LABEL_9:
    v71 = sub_1C75518EC();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v73 = &type metadata for PersonalTraitSelector.Step;
    v74 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v74);
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v28, v64);
    v33 = v81;
LABEL_10:
    v75 = v33;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v75);
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v62 < (v63 >> 1))
  {
    v66 = *(v61 + v62);
    sub_1C6FD80C8();
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    if (v68 == v70 >> 1)
    {
      switch(v66)
      {
        case 1:
          a12 = 1;
          sub_1C718B220();
          v60 = v27;
          OUTLINED_FUNCTION_16_28(&type metadata for PersonalTraitSelector.Step.StatisticalFilteringCodingKeys, &a12);
          swift_unknownObjectRelease();
          v77 = v83;
          v76 = v84;
          goto LABEL_17;
        case 2:
          a13 = 2;
          sub_1C718B1CC();
          OUTLINED_FUNCTION_16_28(&type metadata for PersonalTraitSelector.Step.MinimumAssetRatioFilteringCodingKeys, &a13);
          swift_unknownObjectRelease();
          v77 = v85;
          v76 = v86;
          goto LABEL_17;
        case 3:
          a14 = 3;
          sub_1C718B178();
          v60 = v94;
          OUTLINED_FUNCTION_16_28(&type metadata for PersonalTraitSelector.Step.RandomWeightedSamplingCodingKeys, &a14);
          swift_unknownObjectRelease();
          v77 = v87;
          v76 = v88;
          goto LABEL_17;
        case 4:
          a15 = 4;
          sub_1C718B124();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v90 + 8))(v98, v89);
          break;
        case 5:
          a16 = 5;
          sub_1C718B0D0();
          v60 = v93;
          OUTLINED_FUNCTION_16_28(&type metadata for PersonalTraitSelector.Step.SortCodingKeys, &a16);
          swift_unknownObjectRelease();
          v76 = v91;
          v77 = v92;
LABEL_17:
          (*(v77 + 8))(v60, v76);
          break;
        default:
          a11 = 0;
          sub_1C718B274();
          OUTLINED_FUNCTION_16_28(&type metadata for PersonalTraitSelector.Step.AggregationCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v82 + 8))(v29, v80);
          break;
      }

      v78 = OUTLINED_FUNCTION_57_3();
      v79(v78);
      *v95 = v66;
      v75 = v81;
      goto LABEL_11;
    }

    v65 = v96;
    v64 = v57;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C71849B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEE00737469617254;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xEE00737469617254)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7184A8C(char a1)
{
  if (a1)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1C7184AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71849B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7184AF8(uint64_t a1)
{
  v2 = sub_1C718D988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7184B34(uint64_t a1)
{
  v2 = sub_1C718D988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitSelector.SelectionResult.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218530, &unk_1C7571DD0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v12 = *(v0 + 8);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  v9 = sub_1C718D988();
  sub_1C75504FC();
  sub_1C755200C();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
  v10 = sub_1C718DAB4(&unk_1EDD06BC8);
  OUTLINED_FUNCTION_13_4(v10);

  if (!v9)
  {
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218540, &qword_1C7571DE0);
    v11 = sub_1C718D9DC(&unk_1EC218548);
    OUTLINED_FUNCTION_13_4(v11);
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void PersonalTraitSelector.SelectionResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218558, &qword_1C7571DE8);
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C718D988();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
    v24 = 0;
    v21 = sub_1C718DAB4(&qword_1EDD06BC0);
    OUTLINED_FUNCTION_10_34(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218540, &qword_1C7571DE0);
    v24 = 1;
    v22 = sub_1C718D9DC(&unk_1EC218560);
    OUTLINED_FUNCTION_10_34(v22);
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTraitSelector.RejectedPersonalTrait.reason.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_7_40();
  return sub_1C718AFC8(v1 + v3, a1);
}

uint64_t sub_1C718502C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469617274 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C71850EC(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x7469617274;
  }
}

uint64_t sub_1C7185124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C718502C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718514C(uint64_t a1)
{
  v2 = sub_1C718DB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7185188(uint64_t a1)
{
  v2 = sub_1C718DB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalTraitSelector.RejectedPersonalTrait.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218570, &qword_1C7571DF0);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C718DB58();
  sub_1C755200C();
  v21 = 0;
  type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_3_57();
  v11 = sub_1C718DA70(v10);
  OUTLINED_FUNCTION_53_17(v4, &v21, v12, v13, v11);
  if (!v2)
  {
    v14 = *(type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0) + 20);
    v20 = 1;
    type metadata accessor for PersonalTraitSelector.RejectionReason(0);
    OUTLINED_FUNCTION_17_36();
    v16 = sub_1C718DA70(v15);
    OUTLINED_FUNCTION_53_17(v4 + v14, &v20, v17, v18, v16);
  }

  return (*(v8 + 8))(v3, v6);
}

void PersonalTraitSelector.RejectedPersonalTrait.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v52 = v29;
  v53 = type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v33 = v32 - v31;
  v55 = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_0();
  v56 = v36 - v35;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218588, &unk_1C7571DF8);
  OUTLINED_FUNCTION_3_0();
  v54 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_28_15();
  v39 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_0();
  v43 = v42 - v41;
  OUTLINED_FUNCTION_70(v28, v28[3]);
  sub_1C718DB58();
  sub_1C7551FFC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    a13 = 0;
    OUTLINED_FUNCTION_3_57();
    v45 = sub_1C718DA70(v44);
    OUTLINED_FUNCTION_54_16(v55, &a13, v46, v47, v45);
    OUTLINED_FUNCTION_6_48();
    sub_1C718DBAC(v56, v43);
    a12 = 1;
    OUTLINED_FUNCTION_17_36();
    v49 = sub_1C718DA70(v48);
    OUTLINED_FUNCTION_54_16(v53, &a12, v50, v51, v49);
    (*(v54 + 8))(v24, v57);
    sub_1C718DBAC(v33, v43 + *(v39 + 20));
    sub_1C718AFC8(v43, v52);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1C718B024(v43, type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTraitSelector.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

uint64_t PersonalTraitSelector.RejectionReason.description.getter()
{
  v1 = v0;
  type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = (v8 - v7);
  OUTLINED_FUNCTION_7_40();
  sub_1C718AFC8(v1, v9);
  OUTLINED_FUNCTION_57_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E63B0];
      v33 = MEMORY[0x1E69E6438];
      *(v31 + 16) = xmmword_1C755BAB0;
      *(v31 + 56) = v32;
      *(v31 + 64) = v33;
      *(v31 + 32) = v30;
      return sub_1C75506BC();
    case 2u:
      v16 = *v9;
      v17 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C75604F0;
      v19 = MEMORY[0x1E69E63B0];
      v20 = MEMORY[0x1E69E6438];
      *(v18 + 56) = MEMORY[0x1E69E63B0];
      *(v18 + 64) = v20;
      *(v18 + 32) = v16;
      *(v18 + 96) = v19;
      *(v18 + 104) = v20;
      *(v18 + 72) = v17;
      return sub_1C75506BC();
    case 3u:
      v21 = *v9;
      v22 = v9[1];
      v23 = v9[2];
      v24 = v9[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C755F060;
      v26 = MEMORY[0x1E69E6530];
      v27 = MEMORY[0x1E69E65A8];
      *(v25 + 56) = MEMORY[0x1E69E6530];
      *(v25 + 64) = v27;
      *(v25 + 32) = v21;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 72) = v22;
      v28 = MEMORY[0x1E69E63B0];
      v29 = MEMORY[0x1E69E6438];
      *(v25 + 136) = MEMORY[0x1E69E63B0];
      *(v25 + 144) = v29;
      *(v25 + 112) = v23;
      *(v25 + 176) = v28;
      *(v25 + 184) = v29;
      *(v25 + 152) = v24;
      return sub_1C75506BC();
    case 4u:
      v12 = v9[1];
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000030, 0x80000001C75A1E30);
      v13 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v13);

      result = MEMORY[0x1CCA5CD70](0x203A6B6E6152202CLL, 0xE800000000000000);
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      else
      {
        v15 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v15);

        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        return 0;
      }

      return result;
    default:
      OUTLINED_FUNCTION_6_48();
      sub_1C718DBAC(v9, v5);
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000003FLL, 0x80000001C75A1F70);
      sub_1C7550F5C();
      MEMORY[0x1CCA5CD70](0x756F7320646E6120, 0xEC00000020656372);
      sub_1C75519EC();
      v10 = 0;
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v5, v11);
      return v10;
  }
}

uint64_t sub_1C7185B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7185C20(char a1)
{
  if (a1)
  {
    return 1802396018;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

uint64_t sub_1C7185C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7185D18(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_1C7185D50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365726854666463 && a2 == 0xEC000000646C6F68)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7185DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696C7075646564 && a2 == 0xEC00000064657461;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x80000001C75A20D0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C75A20F0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001C75A2110 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C75A2130 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C7185F94(char a1)
{
  result = 0x63696C7075646564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7186058(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7254726574746562 && a2 == 0xEB00000000746961)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C71860F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616C75706F70 && a2 == 0xEE00657A69536E6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6953656C706D6173 && a2 == 0xEA0000000000657ALL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C7186264(char a1)
{
  result = 0x6974616C75706F70;
  switch(a1)
  {
    case 1:
      result = 0x6953656C706D6173;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x6C696261626F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7186310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7186338(uint64_t a1)
{
  v2 = sub_1C718DC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186374(uint64_t a1)
{
  v2 = sub_1C718DC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C71863B0(uint64_t a1)
{
  sub_1C7551F3C();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

uint64_t sub_1C71863F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718641C(uint64_t a1)
{
  v2 = sub_1C718DD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186458(uint64_t a1)
{
  v2 = sub_1C718DD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185D50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C71864C4(uint64_t a1)
{
  v2 = sub_1C718DD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186500(uint64_t a1)
{
  v2 = sub_1C718DD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718656C(uint64_t a1)
{
  v2 = sub_1C718DC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71865A8(uint64_t a1)
{
  v2 = sub_1C718DC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C71865E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7186058(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7186614(uint64_t a1)
{
  v2 = sub_1C718DDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186650(uint64_t a1)
{
  v2 = sub_1C718DDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71860F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71866BC(uint64_t a1)
{
  v2 = sub_1C718DCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71866F8(uint64_t a1)
{
  v2 = sub_1C718DCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalTraitSelector.RejectionReason.encode(to:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218598, &qword_1C7571E08);
  OUTLINED_FUNCTION_3_0();
  v57 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185A0, &qword_1C7571E10);
  OUTLINED_FUNCTION_3_0();
  v60 = v8;
  v61 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v58 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185A8, &qword_1C7571E18);
  OUTLINED_FUNCTION_3_0();
  v54 = v12;
  v55 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v53 = v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185B0, &qword_1C7571E20);
  OUTLINED_FUNCTION_3_0();
  v50 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_158();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185B8, &qword_1C7571E28);
  OUTLINED_FUNCTION_3_0();
  v49 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  v48[1] = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  v25 = type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185C0, &qword_1C7571E30);
  OUTLINED_FUNCTION_3_0();
  v65 = v30;
  v66 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C718DC08();
  v64 = v1;
  sub_1C755200C();
  OUTLINED_FUNCTION_7_40();
  sub_1C718AFC8(v62, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = 1;
      sub_1C718DD58();
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      v47 = v52;
      sub_1C7551CEC();
      (*(v50 + 8))(v2, v47);
      goto LABEL_14;
    case 2u:
      v71 = 2;
      sub_1C718DD04();
      v42 = v53;
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      v70 = 0;
      v43 = v55;
      v44 = v63;
      sub_1C7551CEC();
      if (!v44)
      {
        v69 = 1;
        sub_1C7551CEC();
      }

      (*(v54 + 8))(v42, v43);
      goto LABEL_14;
    case 3u:
      v76[0] = 3;
      sub_1C718DCB0();
      v38 = v58;
      OUTLINED_FUNCTION_41_16(&type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v76);
      v75 = 0;
      v39 = v61;
      OUTLINED_FUNCTION_48_14();
      v45 = v63;
      sub_1C7551D0C();
      if (!v45)
      {
        v74 = 1;
        OUTLINED_FUNCTION_48_14();
        sub_1C7551D0C();
        v73 = 2;
        sub_1C7551CEC();
        v72 = 3;
        sub_1C7551CEC();
      }

      v41 = v60;
      goto LABEL_12;
    case 4u:
      v77 = 4;
      sub_1C718DC5C();
      v38 = v56;
      OUTLINED_FUNCTION_41_16(&type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, &v77);
      v76[2] = 0;
      v39 = v59;
      OUTLINED_FUNCTION_48_14();
      v40 = v63;
      sub_1C7551D0C();
      if (!v40)
      {
        v76[1] = 1;
        OUTLINED_FUNCTION_48_14();
        sub_1C7551D0C();
      }

      v41 = v57;
LABEL_12:
      (*(v41 + 8))(v38, v39);
      result = (*(v66 + 8))(v25, v29);
      break;
    default:
      sub_1C718DBAC(v29, v24);
      v67 = 0;
      sub_1C718DDAC();
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      OUTLINED_FUNCTION_3_57();
      sub_1C718DA70(v35);
      v36 = v51;
      sub_1C7551D2C();
      (*(v49 + 8))(v20, v36);
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v24, v37);
LABEL_14:
      result = (*(v66 + 8))(v34, v33);
      break;
  }

  return result;
}

uint64_t PersonalTraitSelector.RejectionReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185F8, &qword_1C7571E38);
  OUTLINED_FUNCTION_3_0();
  v118 = v4;
  v119 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v124 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218600, &qword_1C7571E40);
  OUTLINED_FUNCTION_3_0();
  v120 = v7;
  v121 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v123 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218608, &qword_1C7571E48);
  OUTLINED_FUNCTION_3_0();
  v116 = v12;
  v117 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v130 = v14;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218610, &qword_1C7571E50);
  OUTLINED_FUNCTION_3_0();
  v114 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v122 = v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218618, &qword_1C7571E58);
  OUTLINED_FUNCTION_3_0();
  v112 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_36();
  v125 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218620, &unk_1C7571E60);
  OUTLINED_FUNCTION_3_0();
  v128 = v22;
  v129 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v106 - v24;
  v127 = type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  v111 = (v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v106 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v106 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v106 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v106 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v106 - v41;
  v43 = a1[3];
  v131 = a1;
  OUTLINED_FUNCTION_70(a1, v43);
  sub_1C718DC08();
  v44 = v132;
  sub_1C7551FFC();
  if (v44)
  {
    goto LABEL_8;
  }

  v109 = v36;
  v108 = v33;
  v110 = v39;
  v107 = v30;
  v45 = v129;
  v132 = v42;
  sub_1C7551C5C();
  result = sub_1C6FD80E0();
  if (v48 == v49 >> 1)
  {
LABEL_7:
    v59 = v127;
    v60 = sub_1C75518EC();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v62 = v59;
    v63 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v63);
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = OUTLINED_FUNCTION_8_35();
    v65(v64);
LABEL_8:
    v66 = v131;
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v106[1] = 0;
  if (v48 < (v49 >> 1))
  {
    v50 = *(v47 + v48);
    sub_1C6FD80C8();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    v55 = v132;
    if (v52 == v54 >> 1)
    {
      v56 = v126;
      switch(v50)
      {
        case 1:
          v134[0] = 1;
          sub_1C718DD58();
          OUTLINED_FUNCTION_15_36(&type metadata for PersonalTraitSelector.RejectionReason.BelowStatisticalThresholdCodingKeys, v134);
          sub_1C7551BDC();
          v82 = v81;
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_32_15();
          v84(v83);
          v85 = OUTLINED_FUNCTION_8_35();
          v86(v85);
          v87 = v109;
          *v109 = v82;
          swift_storeEnumTagMultiPayload();
          v80 = v87;
          v79 = v131;
          goto LABEL_14;
        case 2:
          v135[0] = 2;
          sub_1C718DD04();
          OUTLINED_FUNCTION_15_36(&type metadata for PersonalTraitSelector.RejectionReason.BelowMinimumAssetRatioCodingKeys, v135);
          v134[2] = 0;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v68 = v128;
          v70 = v69;
          v134[1] = 1;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v95 = v94;
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_14_34();
          v97(v96);
          (*(v68 + 8))(v25, v45);
          v98 = v108;
          *v108 = v70;
          v98[1] = v95;
          swift_storeEnumTagMultiPayload();
          v80 = v98;
          goto LABEL_15;
        case 3:
          v136[0] = 3;
          sub_1C718DCB0();
          OUTLINED_FUNCTION_15_36(&type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v136);
          v135[36] = 0;
          v71 = sub_1C7551BFC();
          v135[35] = 1;
          v72 = sub_1C7551BFC();
          v135[34] = 2;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v74 = v73;
          v135[33] = 3;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v100 = v99;
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_14_34();
          v102(v101);
          v103 = OUTLINED_FUNCTION_8_35();
          v104(v103);
          v105 = v107;
          *v107 = v71;
          v105[1] = v72;
          v105[2] = v74;
          v105[3] = v100;
          swift_storeEnumTagMultiPayload();
          v80 = v105;
          v79 = v131;
          v55 = v132;
          break;
        case 4:
          v137 = 4;
          sub_1C718DC5C();
          OUTLINED_FUNCTION_15_36(&type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, &v137);
          v136[2] = 0;
          v67 = sub_1C7551BFC();
          v136[1] = 1;
          OUTLINED_FUNCTION_33_18();
          v130 = sub_1C7551BFC();
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_14_34();
          v89(v88);
          v90 = OUTLINED_FUNCTION_8_35();
          v91(v90);
          v92 = v111;
          v93 = v130;
          *v111 = v67;
          v92[1] = v93;
          swift_storeEnumTagMultiPayload();
          v80 = v92;
LABEL_15:
          v79 = v131;
          break;
        default:
          v133 = 0;
          sub_1C718DDAC();
          OUTLINED_FUNCTION_15_36(&type metadata for PersonalTraitSelector.RejectionReason.DeduplicatedCodingKeys, &v133);
          type metadata accessor for PersonalTrait(0);
          OUTLINED_FUNCTION_3_57();
          sub_1C718DA70(v57);
          v58 = v110;
          sub_1C7551C1C();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_14_34();
          v76(v75);
          v77 = OUTLINED_FUNCTION_8_35();
          v78(v77);
          swift_storeEnumTagMultiPayload();
          v79 = v131;
          v80 = v58;
LABEL_14:
          v56 = v126;
          break;
      }

      sub_1C718DBAC(v80, v55);
      sub_1C718DBAC(v55, v56);
      v66 = v79;
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(const void *a1, uint64_t a2)
{
  sub_1C754FEFC();
  memcpy((v2 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), a1, 0xD8uLL);
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_totalNumberOfAssets) = a2;
  return v2;
}

uint64_t sub_1C7187A08(uint64_t a1)
{
  v2 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PersonalTrait(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v81 = v17;
  v78 = MEMORY[0x1E69E7CC0];
  v21 = sub_1C75504DC();
  v22 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v83 = *(v5 + 72);
  v79 = v4;
  while (1)
  {
    sub_1C718AFC8(v22, v19);
    v23 = sub_1C75506FC();
    v25 = v23;
    v26 = v24;
    if (v21[2])
    {
      v27 = sub_1C6F78124(v23, v24);
      if (v28)
      {
        v29 = v75;
        sub_1C718AFC8(v21[7] + v27 * v83, v75);
        v30 = v29;
        v31 = v81;
        sub_1C718DBAC(v30, v81);
        v32 = *(v4 + 36);
        v33 = *(v31 + v32);
        v34 = *&v19[v32];
        if (v33 != v34)
        {
          if (v34 >= v33)
          {
            v46 = v19;
          }

          else
          {
            v46 = v31;
          }

          if (v34 >= v33)
          {
            v47 = v31;
          }

          else
          {
            v47 = v19;
          }

LABEL_42:
          v52 = v77;
          sub_1C718AFC8(v46, v77);
          sub_1C718AFC8(v47, v80);
          if (sub_1C754DFAC())
          {
            sub_1C718AFC8(v52, v74);
            swift_isUniquelyReferenced_nonNull_native();
            v84 = v21;
            v53 = sub_1C6F78124(v25, v26);
            if (__OFADD__(v21[2], (v54 & 1) == 0))
            {
              goto LABEL_63;
            }

            v55 = v53;
            v56 = v54;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187E0, &unk_1C7573120);
            if (sub_1C7551A2C())
            {
              v57 = sub_1C6F78124(v25, v26);
              v4 = v79;
              if ((v56 & 1) != (v58 & 1))
              {
                goto LABEL_65;
              }

              v55 = v57;
            }

            else
            {
              v4 = v79;
            }

            v21 = v84;
            if ((v56 & 1) == 0)
            {
              v84[(v55 >> 6) + 8] |= 1 << v55;
              v59 = (v21[6] + 16 * v55);
              *v59 = v25;
              v59[1] = v26;
              sub_1C718DBAC(v74, v21[7] + v55 * v83);
              v60 = v21[2];
              v44 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v44)
              {
                goto LABEL_64;
              }

              v21[2] = v61;
              goto LABEL_53;
            }

            sub_1C718F5D4(v74, v84[7] + v55 * v83);
          }

LABEL_53:
          v62 = v76;
          sub_1C718AFC8(v80, v76);
          v63 = v77;
          sub_1C718AFC8(v77, v62 + *(v73 + 20));
          type metadata accessor for PersonalTraitSelector.RejectionReason(0);
          swift_storeEnumTagMultiPayload();
          v64 = v78;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB2B90(0, *(v64 + 16) + 1, 1, v64);
            v64 = v68;
          }

          v66 = *(v64 + 16);
          v65 = *(v64 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1C6FB2B90(v65 > 1, v66 + 1, 1, v64);
            v64 = v69;
          }

          sub_1C718B024(v80, type metadata accessor for PersonalTrait);
          sub_1C718B024(v63, type metadata accessor for PersonalTrait);
          sub_1C718B024(v81, type metadata accessor for PersonalTrait);
          *(v64 + 16) = v66 + 1;
          v67 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v78 = v64;
          sub_1C718DBAC(v76, v64 + v67 + *(v72 + 72) * v66);
          goto LABEL_58;
        }

        v35 = *(v4 + 28);
        if (*(v31 + v35) && *(v31 + v35) != 1)
        {
        }

        else
        {
          v48 = sub_1C7551DBC();

          if ((v48 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        if (v19[*(v4 + 28)] && v19[*(v4 + 28)] != 1)
        {
        }

        else
        {
          v49 = sub_1C7551DBC();

          v46 = v81;
          v47 = v19;
          if ((v49 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_31:
        if (v19[*(v4 + 28)] && v19[*(v4 + 28)] != 1)
        {
        }

        else
        {
          v50 = sub_1C7551DBC();

          v46 = v81;
          v47 = v19;
          if ((v50 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        if (*(v81 + v35) && *(v81 + v35) != 1)
        {
        }

        else
        {
          v51 = sub_1C7551DBC();

          v46 = v19;
          v47 = v81;
          if ((v51 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v46 = v81;
        v47 = v19;
        goto LABEL_42;
      }
    }

    sub_1C718AFC8(v19, v82);
    swift_isUniquelyReferenced_nonNull_native();
    v84 = v21;
    v36 = sub_1C6F78124(v25, v26);
    if (__OFADD__(v21[2], (v37 & 1) == 0))
    {
      break;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187E0, &unk_1C7573120);
    if (sub_1C7551A2C())
    {
      v40 = sub_1C6F78124(v25, v26);
      v4 = v79;
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_65;
      }

      v38 = v40;
      if (v39)
      {
LABEL_16:

        v21 = v84;
        sub_1C718F5D4(v82, v84[7] + v38 * v83);
        goto LABEL_58;
      }
    }

    else
    {
      v4 = v79;
      if (v39)
      {
        goto LABEL_16;
      }
    }

    v21 = v84;
    v84[(v38 >> 6) + 8] |= 1 << v38;
    v42 = (v21[6] + 16 * v38);
    *v42 = v25;
    v42[1] = v26;
    sub_1C718DBAC(v82, v21[7] + v38 * v83);
    v43 = v21[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_62;
    }

    v21[2] = v45;
LABEL_58:
    sub_1C718B024(v19, type metadata accessor for PersonalTrait);
    v22 += v83;
    if (!--v20)
    {
      return sub_1C71CD990(v21);
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C71883A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18, &unk_1C7577780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v105 = &v103 - v3;
  v4 = type metadata accessor for PersonalTrait(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v103 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v103 - v19;
  v21 = 0;
  v113 = *(a1 + 16);
  v114 = v113;
  v22 = &v103 - v19 + 16;
  v111 = MEMORY[0x1E69E7CC0];
  v112 = v23;
  v108 = a1;
  while (v114 != v21)
  {
    v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = *(v5 + 72);
    sub_1C718AFC8(a1 + v24 + v25 * v21, v20);
    if (v22[*(v4 + 32)])
    {
      v26 = v22[*(v4 + 32)] == 3;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      sub_1C718DBAC(v20, v110);
      v27 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v27;
      v115 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E058();
        a1 = v108;
        v29 = v115;
      }

      v30 = *(v29 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v29 + 24) >> 1)
      {
        v111 = v30 + 1;
        sub_1C716E058();
        v31 = v111;
        a1 = v108;
        v29 = v115;
      }

      ++v21;
      *(v29 + 16) = v31;
      v111 = v29;
      sub_1C718DBAC(v110, v29 + v24 + v30 * v25);
      v4 = v112;
    }

    else
    {
      sub_1C718B024(v20, type metadata accessor for PersonalTrait);
      ++v21;
    }
  }

  v32 = 0;
  v110 = MEMORY[0x1E69E7CC0];
  while (v114 != v32)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v34 = *(v5 + 72);
    sub_1C718AFC8(a1 + v33 + v34 * v32, v15);
    v35 = v15[*(v4 + 32) + 16];
    v36 = v35 > 4;
    v37 = (1 << v35) & 0x16;
    if (v36 || v37 == 0)
    {
      sub_1C718B024(v15, type metadata accessor for PersonalTrait);
      ++v32;
    }

    else
    {
      sub_1C718DBAC(v15, v109);
      v39 = v110;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v39;
      v115 = v39;
      if ((v40 & 1) == 0)
      {
        sub_1C716E058();
        a1 = v108;
        v41 = v115;
      }

      v42 = *(v41 + 16);
      if (v42 >= *(v41 + 24) >> 1)
      {
        sub_1C716E058();
        a1 = v108;
        v41 = v115;
      }

      ++v32;
      *(v41 + 16) = v42 + 1;
      v110 = v41;
      sub_1C718DBAC(v109, v41 + v33 + v42 * v34);
      v4 = v112;
    }
  }

  v43 = v107;
  v44 = v104;
  if (v113)
  {
    v45 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v46 = v108 + v45;
    v47 = *(v5 + 72);
    while (1)
    {
      sub_1C718AFC8(v46, v44);
      if (*(v44 + *(v4 + 28)))
      {
        if (*(v44 + *(v4 + 28)) != 1)
        {
          break;
        }
      }

      v48 = sub_1C7551DBC();

      if (v48)
      {
        goto LABEL_34;
      }

      sub_1C718B024(v44, type metadata accessor for PersonalTrait);
      v46 += v47;
      if (!--v113)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v52 = v105;
    sub_1C718DBAC(v44, v105);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v4);
    sub_1C6FD7FC8(v52, &qword_1EC217A18, &unk_1C7577780);
    v53 = 0;
    v54 = v111;
    v55 = *(v111 + 16);
    v113 = v45;
    v56 = v111 + v45;
    v57 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v58 = v56;
    v59 = v56 + v47 * v53;
    while (v55 != v53)
    {
      if (v53 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      sub_1C718AFC8(v59, v43);
      if (*(v43 + *(v112 + 28)) && *(v43 + *(v112 + 28)) != 1)
      {

LABEL_43:
        sub_1C718DBAC(v43, v106);
        v61 = v57;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v57;
        if ((v62 & 1) == 0)
        {
          sub_1C716E058();
          v61 = v115;
        }

        v63 = *(v61 + 16);
        if (v63 >= *(v61 + 24) >> 1)
        {
          sub_1C716E058();
          v61 = v115;
        }

        ++v53;
        *(v61 + 16) = v63 + 1;
        v57 = v61;
        sub_1C718DBAC(v106, v61 + v113 + v63 * v47);
        v43 = v107;
        v54 = v111;
        v56 = v58;
        goto LABEL_35;
      }

      v60 = sub_1C7551DBC();

      if (v60)
      {
        goto LABEL_43;
      }

      sub_1C718B024(v43, type metadata accessor for PersonalTrait);
      v59 += v47;
      ++v53;
      v54 = v111;
    }

    v64 = *(v54 + 16);

    v65 = v57;
    v66 = v64 - *(v57 + 16);
    v67 = sub_1C754FEEC();
    v68 = sub_1C75511BC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      v50 = v66;
      *(v69 + 4) = v66;
      _os_log_impl(&dword_1C6F5C000, v67, v68, "Filtering out %ld sceneLabel traits as Library Understanding is activated", v69, 0xCu);
      MEMORY[0x1CCA5F8E0](v69, -1, -1);
    }

    else
    {
      v50 = v66;
    }

    v51 = v65;
  }

  else
  {
LABEL_32:
    v49 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v4);
    sub_1C6FD7FC8(v49, &qword_1EC217A18, &unk_1C7577780);
    v50 = 0;
    v51 = v111;
  }

  v70 = sub_1C718A6A4(v51);
  v72 = v71;

  v73 = sub_1C718A6A4(v110);
  v75 = v74;

  v115 = v70;
  sub_1C6FD2904(v73);
  v76 = v115;
  v115 = v72;
  sub_1C6FD28D8(v75);
  v77 = v115;
  v78 = *(v76 + 16);
  v79 = *(v115 + 16);
  v80 = __OFADD__(v78, v79);
  v81 = v78 + v79;
  if (v80)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v80 = __OFADD__(v81, v50);
  v82 = v81 + v50;
  if (v80)
  {
LABEL_62:
    __break(1u);
    return;
  }

  if (v82 != v114)
  {
    v83 = v50;
    sub_1C75504FC();
    sub_1C75504FC();
    v84 = v108;
    sub_1C75504FC();
    v85 = sub_1C754FEEC();
    v86 = sub_1C755119C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = v114;
      *v87 = 136643587;
      v113 = v83;
      v88 = v112;
      v89 = MEMORY[0x1CCA5D090](v76, v112);
      v91 = v90;

      v92 = sub_1C6F765A4(v89, v91, &v115);

      *(v87 + 4) = v92;
      *(v87 + 12) = 2085;
      v93 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
      v94 = MEMORY[0x1CCA5D090](v77, v93);
      v96 = v95;

      v97 = sub_1C6F765A4(v94, v96, &v115);

      *(v87 + 14) = v97;
      *(v87 + 22) = 2085;
      v98 = MEMORY[0x1CCA5D090](v84, v88);
      v100 = sub_1C6F765A4(v98, v99, &v115);

      *(v87 + 24) = v100;
      *(v87 + 32) = 2048;
      *(v87 + 34) = v113;
      _os_log_impl(&dword_1C6F5C000, v85, v86, "Significant traits: %{sensitive}s, Rejected traits: %{sensitive}s while Personal Traits were: %{sensitive}s, with %ld asset level traits removed as Library Understanding is activated.", v87, 0x2Au);
      v101 = v114;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v101, -1, -1);
      MEMORY[0x1CCA5F8E0](v87, -1, -1);
    }

    else
    {
    }

    sub_1C718F638();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
  }
}

double sub_1C7188EEC(uint64_t a1)
{
  v3 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 64) * *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_totalNumberOfAssets);
  v13 = *(a1 + 16);
  if (v13)
  {
    v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v31;
    v15 = *(v9 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C718AFC8(v14, v11);
      v18 = *&v11[*(v34 + 36)];
      if (v12 <= v18)
      {
        sub_1C718AFC8(v11, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1D20(0, *(v16 + 16) + 1, 1, v16);
          v16 = v28;
        }

        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C6FB1D20(v24 > 1, v25 + 1, 1, v16);
          v16 = v29;
        }

        sub_1C718B024(v11, type metadata accessor for PersonalTrait);
        *(v16 + 16) = v25 + 1;
        v22 = v16 + v31 + v25 * v15;
        v23 = v7;
      }

      else
      {
        sub_1C718AFC8(v11, v5);
        v19 = &v5[*(v33 + 20)];
        *v19 = v12;
        v19[1] = v18;
        type metadata accessor for PersonalTraitSelector.RejectionReason(0);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2B90(0, *(v17 + 16) + 1, 1, v17);
          v17 = v26;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C6FB2B90(v20 > 1, v21 + 1, 1, v17);
          v17 = v27;
        }

        sub_1C718B024(v11, type metadata accessor for PersonalTrait);
        *(v17 + 16) = v21 + 1;
        v22 = v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
        v23 = v5;
      }

      sub_1C718DBAC(v23, v22);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return v12;
}

void sub_1C71892B4(uint64_t a1)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  v141 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v151 = (&v134 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v134 - v8;
  v9 = type metadata accessor for PersonalTrait(0);
  v154 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v134 - v13;
  v145 = sub_1C754DFFC();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v19);
  *&v146 = &v134 - v20;
  v21 = 0;
  v22 = v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration;
  v23 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 72);
  v24 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  v25 = *(a1 + 16);
  if (v25 >= v24)
  {
    v26 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  }

  else
  {
    v26 = *(a1 + 16);
  }

  v149 = v26;
  v27 = *(v22 + 88);
  v155 = v1;
  v156 = v25;
  if ((v27 & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v25 = v156;
    v21 = v28;
  }

  if (v24 >= v25)
  {

    sub_1C75504FC();
    return;
  }

  v139 = v11;
  v142 = v2;
  v29 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  v30 = v21;
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  v148 = v30;

  v33 = os_log_type_enabled(v31, v32);
  v147 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 134218498;
    *(v34 + 4) = v23;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v149;
    *(v34 + 22) = 2112;
    v36 = v148;
    *(v34 + 24) = v148;
    *v35 = v21;
    v37 = v36;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Sampling personal traits with random weighted sampling: temperature=%f, sampleSize=%ld, seed=%@", v34, 0x20u);
    sub_1C6FD7FC8(v35, &qword_1EC215190, &qword_1C755C730);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  v140 = v29;
  if (v21)
  {
    v38 = v148;
    v39 = [v148 unsignedLongLongValue];
    v40 = v38;
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v21;
      v45 = v40;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Using %@ as randomizer seed for the random weighted sampling", v43, 0xCu);
      sub_1C6FD7FC8(v44, &qword_1EC215190, &qword_1C755C730);
      MEMORY[0x1CCA5F8E0](v44, -1, -1);
      MEMORY[0x1CCA5F8E0](v43, -1, -1);
    }

    v159 = &type metadata for Random.Arc4Random;
    v160 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v39, v158);
  }

  else
  {
    v46 = v146;
    sub_1C754DFEC();
    v47 = v143;
    v48 = v145;
    v138 = *(v143 + 2);
    (v138)(v18, v46, v145);
    v49 = sub_1C754FEEC();
    v50 = sub_1C75511BC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v136 = v51;
      v137 = swift_slowAlloc();
      v161 = v137;
      *v51 = 136315138;
      sub_1C718DA70(&qword_1EDD0CB90);
      v135 = v49;
      v52 = sub_1C7551D8C();
      v54 = v53;
      v143 = *(v47 + 1);
      (v143)(v18, v48);
      v55 = sub_1C6F765A4(v52, v54, &v161);
      v46 = v146;

      v56 = v136;
      *(v136 + 1) = v55;
      v57 = v135;
      v58 = v56;
      _os_log_impl(&dword_1C6F5C000, v135, v50, "No seed provided (or invalid) in configuration, using %s as randomizer UUID seed for the random weighted sampling", v56, 0xCu);
      v59 = v137;
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x1CCA5F8E0](v59, -1, -1);
      MEMORY[0x1CCA5F8E0](v58, -1, -1);

      v60 = v143;
    }

    else
    {

      v60 = *(v47 + 1);
      v60(v18, v48);
    }

    v61 = v144;
    (v138)(v144, v46, v48);
    v159 = &type metadata for Random.Arc4Random;
    v160 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v61, v158);
    v60(v46, v48);
  }

  v62 = MEMORY[0x1E69E7CC0];
  v63 = v147;
  v64 = v156;
  if (v156)
  {
    v161 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70(0, v156, 0);
    v65 = v161;
    v66 = v63 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v67 = *(v154 + 72);
    do
    {
      sub_1C718AFC8(v66, v14);
      v68 = *&v14[*(v9 + 36)];
      sub_1C718B024(v14, type metadata accessor for PersonalTrait);
      v161 = v65;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1C716DA70(v69 > 1, v70 + 1, 1);
        v65 = v161;
      }

      *(v65 + 16) = v70 + 1;
      *(v65 + 8 * v70 + 32) = v68;
      v66 += v67;
      --v64;
    }

    while (v64);
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v71 = v142;
  v72 = static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(v65, v23);
  v73 = v71;
  v74 = v149;
  if (v71)
  {
    goto LABEL_26;
  }

  v75 = v72;

  if (*(v75 + 16) != v156)
  {

    sub_1C718F638();
    swift_allocError();
    *v107 = 1;
    swift_willThrow();
    goto LABEL_36;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  v76 = sub_1C754FEEC();
  v77 = sub_1C75511BC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v161 = v140;
    *v78 = 136642819;
    sub_1C75504FC();
    v79 = sub_1C75504FC();
    sub_1C74BAE00(v79, v75);
    v157 = v80;
    sub_1C718AE4C(&v157);
    v143 = v78;
    LODWORD(v144) = v77;

    v85 = v157;
    v86 = v157[2];
    if (v86)
    {
      v138 = v76;
      v145 = v75;
      v142 = 0;
      v157 = v62;
      sub_1C6F7ED9C(0, v86, 0, v81, v82, v83, v84);
      v87 = v157;
      v88 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v137 = v85;
      v89 = v85 + v88;
      v155 = *(v141 + 72);
      v146 = xmmword_1C75604F0;
      v90 = v150;
      do
      {
        sub_1C718F68C(v89, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v91 = swift_allocObject();
        *(v91 + 16) = v146;
        v92 = v151;
        sub_1C718F68C(v90, v151);
        v94 = *v92;
        v93 = v92[1];
        sub_1C75504FC();
        sub_1C718B024(v92, type metadata accessor for PersonalTrait);
        *(v91 + 56) = MEMORY[0x1E69E6158];
        *(v91 + 64) = sub_1C6F6D524();
        *(v91 + 32) = v94;
        *(v91 + 40) = v93;
        v95 = v152;
        sub_1C718F68C(v90, v152);
        v96 = *(v95 + *(v153 + 48));
        *(v91 + 96) = MEMORY[0x1E69E63B0];
        *(v91 + 104) = MEMORY[0x1E69E6438];
        *(v91 + 72) = v96;
        sub_1C718B024(v95, type metadata accessor for PersonalTrait);
        v97 = sub_1C75506BC();
        v99 = v98;
        sub_1C6FD7FC8(v90, &qword_1EC218328, &qword_1C7571228);
        v157 = v87;
        v105 = *(v87 + 16);
        v104 = *(v87 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_1C6F7ED9C(v104 > 1, v105 + 1, 1, v100, v101, v102, v103);
          v87 = v157;
        }

        *(v87 + 16) = v105 + 1;
        v106 = v87 + 16 * v105;
        *(v106 + 32) = v97;
        *(v106 + 40) = v99;
        v89 += v155;
        --v86;
      }

      while (v86);

      v73 = v142;
      v74 = v149;
      v75 = v145;
      v76 = v138;
    }

    else
    {

      v87 = MEMORY[0x1E69E7CC0];
    }

    v157 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C718DE9C(&qword_1EDD0CF58);
    v108 = sub_1C75505FC();
    v110 = v109;

    v111 = sub_1C6F765A4(v108, v110, &v161);

    v112 = v143;
    *(v143 + 1) = v111;
    _os_log_impl(&dword_1C6F5C000, v76, v144, "Logits and probabilities of traits (before sampling): %{sensitive}s", v112, 0xCu);
    v113 = v140;
    __swift_destroy_boxed_opaque_existential_1(v140);
    MEMORY[0x1CCA5F8E0](v113, -1, -1);
    MEMORY[0x1CCA5F8E0](v112, -1, -1);
  }

  v114 = sub_1C71CD888(0, v156);
  v115 = v159;
  v116 = v160;
  v117 = __swift_mutable_project_boxed_opaque_existential_0(v158, v159);
  static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(v114, v75, v74, v117, MEMORY[0x1E69E6530], v115, v116);
  if (v73)
  {

LABEL_26:

LABEL_36:

    __swift_destroy_boxed_opaque_existential_1(v158);
    return;
  }

  v119 = v118;
  v142 = 0;
  v120 = *(v118 + 16);
  if (v120)
  {
    v155 = v114;
    v145 = v75;
    v161 = MEMORY[0x1E69E7CC0];
    sub_1C716E058();
    v121 = v161;
    v153 = v119;
    v122 = (v119 + 32);
    v123 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v124 = v147 + v123;
    v125 = v139;
    while (1)
    {
      v127 = *v122++;
      v126 = v127;
      if (v127 >= v156)
      {
        break;
      }

      v128 = *(v154 + 72);
      sub_1C718AFC8(v124 + v128 * v126, v125);
      v161 = v121;
      v129 = *(v121 + 16);
      if (v129 >= *(v121 + 24) >> 1)
      {
        sub_1C716E058();
        v125 = v139;
        v121 = v161;
      }

      *(v121 + 16) = v129 + 1;
      sub_1C718DBAC(v125, v121 + v123 + v129 * v128);
      if (!--v120)
      {
        v74 = v149;
        v75 = v145;
        v114 = v155;
        v119 = v153;
        goto LABEL_48;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_48:
    v130 = sub_1C706E520(v114);
    v131 = sub_1C706E520(v119);
    v132 = sub_1C723883C(v131, v130);

    sub_1C75504FC();
    v133 = v147;
    sub_1C75504FC();
    sub_1C7181ED8(v132, v133, v75, v74, v23);

    __swift_destroy_boxed_opaque_existential_1(v158);
  }
}

void sub_1C718A1B4(uint64_t a1)
{
  v1 = a1;
  sub_1C75504FC();
  sub_1C718AF00(&v1);
}

uint64_t sub_1C718A208(uint64_t a1)
{
  v3 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187F8, &qword_1C7573138);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218800, qword_1C7573140);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - v13);
  v15 = *(a1 + 16);
  if (v15 >= *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48))
  {
    v16 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  }

  else
  {
    v16 = *(a1 + 16);
  }

  sub_1C75504FC();
  v50 = v16;
  v19 = sub_1C7033F30(v16, a1);
  v21 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  i = v18;
  v45 = v17;
  v24 = sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v46 = v24;
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v21 >> 1, i))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v26 != (v21 >> 1) - i)
  {
LABEL_35:
    swift_unknownObjectRelease();
    v18 = i;
    v17 = v45;
LABEL_5:
    sub_1C739C5E4(v19, v17, v18, v21);
    v23 = v22;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  v44 = v23;
  v43 = sub_1C74B8148(v50, v15, a1);
  v45 = v27;
  a1 = v28;
  v19 = 0;
  v30 = v29 >> 1;
  v15 = MEMORY[0x1E69E7CC0];
  v46 = v28;
  for (i = v8; ; v8 = i)
  {
    if (a1 == v30)
    {
      v31 = 1;
      a1 = v30;
    }

    else
    {
      if (a1 < v46 || a1 >= v30)
      {
        goto LABEL_32;
      }

      v33 = v45 + *(*(type metadata accessor for PersonalTrait(0) - 8) + 72) * a1;
      v34 = *(v6 + 48);
      *v8 = v19;
      sub_1C718AFC8(v33, v8 + v34);
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_33;
      }

      ++a1;
      sub_1C718F6FC(v8, v11, &qword_1EC2187F8, &qword_1C7573138);
      v31 = 0;
    }

    __swift_storeEnumTagSinglePayload(v11, v31, 1, v6);
    sub_1C718F6FC(v11, v14, &qword_1EC218800, qword_1C7573140);
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
    {
      break;
    }

    v21 = *v14;
    sub_1C718DBAC(v14 + *(v6 + 48), v5);
    v36 = v50 + v21;
    if (__OFADD__(v50, v21))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v37 = &v5[*(v49 + 20)];
    *v37 = v50;
    *(v37 + 1) = v36;
    type metadata accessor for PersonalTraitSelector.RejectionReason(0);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB2B90(0, *(v15 + 16) + 1, 1, v15);
      v15 = v40;
    }

    v39 = *(v15 + 16);
    v38 = *(v15 + 24);
    v21 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_1C6FB2B90(v38 > 1, v39 + 1, 1, v15);
      v15 = v41;
    }

    *(v15 + 16) = v21;
    sub_1C718DBAC(v5, v15 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39);
  }

  swift_unknownObjectRelease();
  return v44;
}

uint64_t sub_1C718A6A4(uint64_t a1)
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v75 = v4;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v85 = v6 - v5;
  v7 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = (v12 - v11);
  v14 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v24 = *(a1 + 16);
  if (v24 < 2)
  {
    sub_1C75504FC();
  }

  else
  {
    v25 = *(v20 + 24);
    v79 = v20;
    v82 = *(v20 + 36);
    v83 = v25;
    v26 = *(v21 + 80);
    v73 = v1;
    v74 = (v26 + 32) & ~v26;
    v86 = (v9 + 16);
    v27 = MEMORY[0x1E69E7CC8];
    v89 = *(v21 + 72);
    v80 = (v9 + 8);
    v81 = &v72 - v22;
    v77 = a1 + v74;
    v78 = v24;
    v28 = a1 + v74;
    v29 = v24;
    do
    {
      v87 = v29;
      v88 = v28;
      OUTLINED_FUNCTION_1_65();
      sub_1C718AFC8(v30, v23);
      v31 = *v86;
      (*v86)(v13, &v23[v83], v7);
      v32 = *&v23[v82];
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v27;
      sub_1C6FC2D10();
      if (__OFADD__(v27[2], (v34 & 1) == 0))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1C7551E4C();
        __break(1u);
        return result;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187F0, &qword_1C7573130);
      if (sub_1C7551A2C())
      {
        sub_1C6FC2D10();
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v35 = v37;
      }

      v27 = v90;
      if (v36)
      {
        *(v90[7] + 8 * v35) = v32;
        (*v80)(v13, v7);
        OUTLINED_FUNCTION_0_84();
        v23 = v81;
        sub_1C718B024(v81, v39);
      }

      else
      {
        v90[(v35 >> 6) + 8] |= 1 << v35;
        v31(v27[6] + *(v9 + 72) * v35, v13, v7);
        *(v27[7] + 8 * v35) = v32;
        (*(v9 + 8))(v13, v7);
        OUTLINED_FUNCTION_0_84();
        v23 = v81;
        sub_1C718B024(v81, v40);
        v41 = v27[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v27[2] = v43;
      }

      v28 = v88 + v89;
      v29 = v87 - 1;
    }

    while (v87 != 1);
    v44 = *(v73 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 56);
    v45 = sub_1C742537C(v27, 0, 1uLL, v44);

    v46 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
    do
    {
      v88 = a1;
      ++v46;
      OUTLINED_FUNCTION_1_65();
      sub_1C718AFC8(v47, v18);
      v48 = 0;
      v49 = *(v45 + 16);
      while (v49 != v48)
      {
        v50 = v48 + 1;
        sub_1C718DA70(&unk_1EDD0CBA0);
        v51 = sub_1C755063C();
        v48 = v50;
        if (v51)
        {
          OUTLINED_FUNCTION_1_65();
          sub_1C718AFC8(v18, v84);
          a1 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1D20(0, *(a1 + 16) + 1, 1, a1);
            a1 = v68;
          }

          v53 = *(a1 + 16);
          v52 = *(a1 + 24);
          if (v53 >= v52 >> 1)
          {
            v69 = OUTLINED_FUNCTION_15(v52);
            sub_1C6FB1D20(v69, v53 + 1, 1, a1);
            a1 = v70;
          }

          *(a1 + 16) = v53 + 1;
          OUTLINED_FUNCTION_6_48();
          v55 = v84;
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_1_65();
      v56 = v85;
      sub_1C718AFC8(v18, v85);
      *(v56 + *(v76 + 20)) = v44;
      type metadata accessor for PersonalTraitSelector.RejectionReason(0);
      swift_storeEnumTagMultiPayload();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = v87;
        a1 = v88;
      }

      else
      {
        sub_1C6FB2B90(0, *(v87 + 16) + 1, 1, v87);
        v57 = v64;
        a1 = v88;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        v65 = OUTLINED_FUNCTION_15(v58);
        sub_1C6FB2B90(v65, v59 + 1, 1, v66);
        v57 = v67;
      }

      *(v57 + 16) = v59 + 1;
      OUTLINED_FUNCTION_191();
      v87 = v60;
      v54 = v60 + v61 + *(v62 + 72) * v59;
      v55 = v85;
LABEL_26:
      sub_1C718DBAC(v55, v54);
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v18, v63);
    }

    while (v46 != v78);
  }

  return a1;
}

uint64_t PersonalTraitSelector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(v4, (v0 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), 0xD8uLL);
  sub_1C7059364(v4);
  return v0;
}

uint64_t PersonalTraitSelector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(v4, (v0 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), 0xD8uLL);
  sub_1C7059364(v4);
  return swift_deallocClassInstance();
}

void sub_1C718AE4C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C84();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C718B2C8(v6);
  *a1 = v3;
}

void sub_1C718AF00(uint64_t *a1)
{
  v2 = *(type metadata accessor for PersonalTrait(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C9C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C718B410(v6);
  *a1 = v3;
}

uint64_t sub_1C718AFC8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C718B024(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C718B07C()
{
  result = qword_1EC2184C0;
  if (!qword_1EC2184C0)
  {
    result = swift_getWitnessTable(byte_1C75730D0, &type metadata for PersonalTraitSelector.Step.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184C0);
  }

  return result;
}

unint64_t sub_1C718B0D0()
{
  result = qword_1EC2184C8;
  if (!qword_1EC2184C8)
  {
    result = swift_getWitnessTable(a9q, &type metadata for PersonalTraitSelector.Step.SortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184C8);
  }

  return result;
}

unint64_t sub_1C718B124()
{
  result = qword_1EC2184D0;
  if (!qword_1EC2184D0)
  {
    result = swift_getWitnessTable(byte_1C7573030, &type metadata for PersonalTraitSelector.Step.TopNFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184D0);
  }

  return result;
}

unint64_t sub_1C718B178()
{
  result = qword_1EC2184D8;
  if (!qword_1EC2184D8)
  {
    result = swift_getWitnessTable(byte_1C7572FE0, &type metadata for PersonalTraitSelector.Step.RandomWeightedSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184D8);
  }

  return result;
}

unint64_t sub_1C718B1CC()
{
  result = qword_1EC2184E0;
  if (!qword_1EC2184E0)
  {
    result = swift_getWitnessTable(aR, &type metadata for PersonalTraitSelector.Step.MinimumAssetRatioFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184E0);
  }

  return result;
}

unint64_t sub_1C718B220()
{
  result = qword_1EC2184E8;
  if (!qword_1EC2184E8)
  {
    result = swift_getWitnessTable(aYr, &type metadata for PersonalTraitSelector.Step.StatisticalFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184E8);
  }

  return result;
}

unint64_t sub_1C718B274()
{
  result = qword_1EC2184F0;
  if (!qword_1EC2184F0)
  {
    result = swift_getWitnessTable(byte_1C7572EF0, &type metadata for PersonalTraitSelector.Step.AggregationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2184F0);
  }

  return result;
}

void sub_1C718B2C8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C718BA9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1C718B540(0, v2, 1, a1);
  }
}

void sub_1C718B410(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
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
        type metadata accessor for PersonalTrait(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PersonalTrait(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C718C398(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1C718B790(0, v2, 1, a1);
  }
}

void sub_1C718B540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v33 = v18;
      v34 = a3;
      v31 = v20;
      v32 = v19;
      v21 = v19;
      v22 = v38;
      do
      {
        sub_1C718F68C(v20, v15);
        sub_1C718F68C(v18, v11);
        v23 = *(v22 + 48);
        v24 = *&v15[v23];
        v25 = *&v11[v23];
        sub_1C6FD7FC8(v11, &qword_1EC218328, &qword_1C7571228);
        sub_1C6FD7FC8(v15, &qword_1EC218328, &qword_1C7571228);
        if (v25 >= v24)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v26 = v37;
        sub_1C718F6FC(v20, v37, &qword_1EC218328, &qword_1C7571228);
        v22 = v38;
        swift_arrayInitWithTakeFrontToBack();
        sub_1C718F6FC(v26, v18, &qword_1EC218328, &qword_1C7571228);
        v18 += v35;
        v20 += v35;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v34 + 1;
      v18 = v33 + v29;
      v19 = v32 - 1;
      v20 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C718B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v36 - v15);
  v38 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = *(v14 + 72);
  v19 = *a4 + v18 * (a3 - 1);
  v45 = -v18;
  v46 = v17;
  v20 = a1 - a3;
  v37 = v18;
  v21 = v17 + v18 * a3;
  v43 = (&v36 - v15);
  v44 = v8;
  while (2)
  {
    v41 = v19;
    v42 = a3;
    v39 = v21;
    v40 = v20;
    while (1)
    {
      sub_1C718AFC8(v21, v16);
      sub_1C718AFC8(v19, v12);
      v22 = *(v8 + 36);
      v23 = *(v16 + v22);
      v24 = *(v12 + v22);
      if (v23 != v24)
      {
        v33 = v24 < v23;
        goto LABEL_14;
      }

      v25 = *v16;
      v26 = v16[1];
      v27 = MEMORY[0x1CCA5CE50](*v16, v26);
      v28 = v12;
      v29 = *v12;
      v30 = v12[1];
      v31 = MEMORY[0x1CCA5CE50](v29, v30);
      if (v27 != v31)
      {
        v33 = v27 < v31;
        goto LABEL_13;
      }

      if (v25 == v29 && v26 == v30)
      {
        break;
      }

      v33 = sub_1C7551DBC();
LABEL_13:
      v16 = v43;
      v8 = v44;
      v12 = v28;
LABEL_14:
      sub_1C718B024(v12, type metadata accessor for PersonalTrait);
      sub_1C718B024(v16, type metadata accessor for PersonalTrait);
      if (v33)
      {
        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = v47;
        sub_1C718DBAC(v21, v47);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C718DBAC(v34, v19);
        v19 += v45;
        v21 += v45;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v12 = v28;
    sub_1C718B024(v28, type metadata accessor for PersonalTrait);
    v16 = v43;
    sub_1C718B024(v43, type metadata accessor for PersonalTrait);
    v8 = v44;
LABEL_20:
    a3 = v42 + 1;
    v19 = v41 + v37;
    v20 = v40 - 1;
    v21 = v39 + v37;
    if (v42 + 1 != v38)
    {
      continue;
    }

    break;
  }
}

void sub_1C718BA9C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v124 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  v132 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v120 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v120 - v16;
  v133 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v139 = *v124;
    if (!v139)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v112 = v19 + 16;
      v113 = *(v19 + 2);
      while (v113 >= 2)
      {
        if (!*v133)
        {
          goto LABEL_137;
        }

        v114 = v19;
        v115 = &v19[16 * v113];
        v116 = *v115;
        v117 = &v112[2 * v113];
        v118 = *(v117 + 1);
        sub_1C718CF24(*v133 + *(v132 + 72) * *v115, *v133 + *(v132 + 72) * *v117, *v133 + *(v132 + 72) * v118, v139);
        if (v5)
        {
          break;
        }

        if (v118 < v116)
        {
          goto LABEL_125;
        }

        if (v113 - 2 >= *v112)
        {
          goto LABEL_126;
        }

        *v115 = v116;
        *(v115 + 1) = v118;
        v119 = *v112 - v113;
        if (*v112 < v113)
        {
          goto LABEL_127;
        }

        v113 = *v112 - 1;
        sub_1C7423CF4(v117 + 16, v119, v117);
        *v112 = v113;
        v19 = v114;
      }

LABEL_109:

      return;
    }

LABEL_134:
    v19 = sub_1C7420830();
    goto LABEL_101;
  }

  v139 = v15;
  v122 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 < v17)
    {
      v22 = v18;
      v23 = *v133;
      v24 = *(v132 + 72);
      v134 = v18 + 1;
      v25 = v23 + v24 * v21;
      v26 = v137;
      v131 = v17;
      sub_1C718F68C(v25, v137);
      v27 = v138;
      sub_1C718F68C(v23 + v24 * v22, v138);
      v28 = *(v139 + 48);
      v29 = *(v26 + v28);
      v30 = *(v27 + v28);
      sub_1C6FD7FC8(v27, &qword_1EC218328, &qword_1C7571228);
      sub_1C6FD7FC8(v26, &qword_1EC218328, &qword_1C7571228);
      v31 = v131;
      v123 = v22;
      v32 = v22 + 2;
      v135 = v24;
      v33 = v23 + v24 * (v22 + 2);
      while (1)
      {
        v34 = v32;
        if (++v134 >= v31)
        {
          break;
        }

        v35 = v137;
        sub_1C718F68C(v33, v137);
        v36 = v138;
        sub_1C718F68C(v25, v138);
        v37 = *(v139 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_1C6FD7FC8(v36, &qword_1EC218328, &qword_1C7571228);
        sub_1C6FD7FC8(v35, &qword_1EC218328, &qword_1C7571228);
        v31 = v131;
        v33 += v135;
        v25 += v135;
        v32 = v34 + 1;
        if (v30 < v29 == v39 >= v38)
        {
          goto LABEL_9;
        }
      }

      v134 = v31;
LABEL_9:
      if (v30 < v29)
      {
        v21 = v134;
        if (v134 < v123)
        {
          goto LABEL_131;
        }

        if (v123 >= v134)
        {
          v20 = v123;
          goto LABEL_31;
        }

        v121 = v19;
        if (v31 >= v34)
        {
          v40 = v34;
        }

        else
        {
          v40 = v31;
        }

        v41 = v135 * (v40 - 1);
        v42 = v135 * v40;
        v43 = v134;
        v44 = v123 * v135;
        v45 = v123;
        do
        {
          if (v45 != --v43)
          {
            v127 = v5;
            v46 = *v133;
            if (!*v133)
            {
              goto LABEL_138;
            }

            sub_1C718F6FC(v46 + v44, v128, &qword_1EC218328, &qword_1C7571228);
            v47 = v44 < v41 || v46 + v44 >= v46 + v42;
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C718F6FC(v128, v46 + v41, &qword_1EC218328, &qword_1C7571228);
            v5 = v127;
          }

          ++v45;
          v41 -= v135;
          v42 -= v135;
          v44 += v135;
        }

        while (v45 < v43);
        v19 = v121;
      }

      v21 = v134;
      v20 = v123;
    }

LABEL_31:
    v48 = v133[1];
    if (v21 < v48)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_130;
      }

      if (v21 - v20 < v122)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v19 + 2) + 1, 1, v19);
      v19 = v110;
    }

    v66 = *(v19 + 2);
    v65 = *(v19 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      sub_1C6FB17EC(v65 > 1, v66 + 1, 1, v19);
      v19 = v111;
    }

    *(v19 + 2) = v67;
    v68 = v19 + 32;
    v69 = &v19[16 * v66 + 32];
    v70 = v134;
    *v69 = v20;
    *(v69 + 1) = v70;
    v135 = *v124;
    if (!v135)
    {
      goto LABEL_139;
    }

    if (v66)
    {
      while (1)
      {
        v71 = v67 - 1;
        v72 = &v68[16 * v67 - 16];
        v73 = &v19[16 * v67];
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v74 = *(v19 + 4);
          v75 = *(v19 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_116;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_119;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_124;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v67 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v67 < 2)
        {
          goto LABEL_118;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_121;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_123;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= v67)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v133)
        {
          goto LABEL_136;
        }

        v103 = &v68[16 * v71 - 16];
        v104 = *v103;
        v105 = v71;
        v106 = &v68[16 * v71];
        v107 = *(v106 + 1);
        sub_1C718CF24(*v133 + *(v132 + 72) * *v103, *v133 + *(v132 + 72) * *v106, *v133 + *(v132 + 72) * v107, v135);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v107 < v104)
        {
          goto LABEL_111;
        }

        v5 = v19;
        v108 = *(v19 + 2);
        if (v105 > v108)
        {
          goto LABEL_112;
        }

        *v103 = v104;
        *(v103 + 1) = v107;
        if (v105 >= v108)
        {
          goto LABEL_113;
        }

        v67 = v108 - 1;
        sub_1C7423CF4(v106 + 16, v108 - 1 - v105, v106);
        *(v5 + 2) = v108 - 1;
        v109 = v108 > 2;
        v19 = v5;
        v5 = 0;
        if (!v109)
        {
          goto LABEL_96;
        }
      }

      v78 = &v68[16 * v67];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_114;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_115;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_117;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_120;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v76 < v102)
        {
          v71 = v67 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v134;
    v17 = v133[1];
    if (v134 >= v17)
    {
      goto LABEL_99;
    }
  }

  v49 = v20 + v122;
  if (__OFADD__(v20, v122))
  {
    goto LABEL_132;
  }

  if (v49 >= v48)
  {
    v49 = v133[1];
  }

  if (v49 < v20)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v21 == v49)
  {
    goto LABEL_47;
  }

  v121 = v19;
  v126 = v49;
  v127 = v5;
  v50 = *v133;
  v51 = *(v132 + 72);
  v52 = *v133 + v51 * (v21 - 1);
  v53 = -v51;
  v123 = v20;
  v54 = v20 - v21;
  v135 = v50;
  v125 = v51;
  v55 = v50 + v21 * v51;
LABEL_40:
  v134 = v21;
  v129 = v55;
  v130 = v54;
  v56 = v55;
  v131 = v52;
  v57 = v139;
  while (1)
  {
    v58 = v137;
    sub_1C718F68C(v56, v137);
    v59 = v138;
    sub_1C718F68C(v52, v138);
    v60 = *(v57 + 48);
    v61 = *(v58 + v60);
    v62 = *(v59 + v60);
    sub_1C6FD7FC8(v59, &qword_1EC218328, &qword_1C7571228);
    sub_1C6FD7FC8(v58, &qword_1EC218328, &qword_1C7571228);
    if (v62 >= v61)
    {
LABEL_45:
      v21 = v134 + 1;
      v52 = v131 + v125;
      v54 = v130 - 1;
      v55 = v129 + v125;
      if (v134 + 1 == v126)
      {
        v21 = v126;
        v5 = v127;
        v19 = v121;
        v20 = v123;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v135)
    {
      break;
    }

    v63 = v136;
    sub_1C718F6FC(v56, v136, &qword_1EC218328, &qword_1C7571228);
    v57 = v139;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C718F6FC(v63, v52, &qword_1EC218328, &qword_1C7571228);
    v52 += v53;
    v56 += v53;
    v47 = __CFADD__(v54++, 1);
    if (v47)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1C718C398(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v159 = a1;
  v6 = type metadata accessor for PersonalTrait(0);
  v166 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v162 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v153 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v153 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v153 - v14);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v153 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v158 = (&v153 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v157 = (&v153 - v24);
  v168 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v29 = *v159;
    if (!*v159)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_131:
      v144 = v27 + 16;
      v145 = *(v27 + 2);
      while (v145 >= 2)
      {
        if (!*v168)
        {
          goto LABEL_167;
        }

        v146 = v27;
        v147 = &v27[16 * v145];
        v148 = *v147;
        v149 = &v144[2 * v145];
        v150 = *(v149 + 1);
        v151 = v171;
        sub_1C718D38C((*v168 + *(v166 + 72) * *v147), (*v168 + *(v166 + 72) * *v149), *v168 + *(v166 + 72) * v150, v29);
        v171 = v151;
        if (v151)
        {
          break;
        }

        if (v150 < v148)
        {
          goto LABEL_155;
        }

        if (v145 - 2 >= *v144)
        {
          goto LABEL_156;
        }

        *v147 = v148;
        *(v147 + 1) = v150;
        v152 = *v144 - v145;
        if (*v144 < v145)
        {
          goto LABEL_157;
        }

        v145 = *v144 - 1;
        sub_1C7423CF4(v149 + 16, v152, v149);
        *v144 = v145;
        v27 = v146;
      }

LABEL_139:

      return;
    }

LABEL_164:
    v27 = sub_1C7420830();
    goto LABEL_131;
  }

  v154 = a4;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v173 = v12;
  v174 = v6;
  v172 = v15;
  v155 = v23;
  v163 = v19;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v164 = v25;
      v160 = v26;
      v30 = *v168;
      v31 = *(v166 + 72);
      v32 = v157;
      sub_1C718AFC8(*v168 + v31 * v29, v157);
      v167 = v31;
      v33 = v30 + v31 * v160;
      v34 = v30;
      v35 = v158;
      sub_1C718AFC8(v33, v158);
      v36 = *(v6 + 36);
      v37 = *(v32 + v36);
      v38 = *(v35 + v36);
      if (v37 == v38)
      {
        v170 = v29;
        v39 = *v32;
        v40 = v32[1];
        v41 = MEMORY[0x1CCA5CE50](*v32, v40);
        v42 = *v35;
        v43 = v35[1];
        v44 = MEMORY[0x1CCA5CE50](v42, v43);
        if (v41 == v44)
        {
          if (v39 == v42 && v40 == v43)
          {
            LODWORD(v165) = 0;
          }

          else
          {
            LODWORD(v165) = sub_1C7551DBC();
          }
        }

        else
        {
          LODWORD(v165) = v41 < v44;
        }

        v19 = v163;
        v32 = v157;
        v35 = v158;
        v29 = v170;
      }

      else
      {
        LODWORD(v165) = v38 < v37;
      }

      v156 = v27;
      sub_1C718B024(v35, type metadata accessor for PersonalTrait);
      sub_1C718B024(v32, type metadata accessor for PersonalTrait);
      v46 = v160 + 2;
      v47 = v167 * (v160 + 2);
      v48 = v34 + v47;
      v49 = v167 * v29;
      v50 = v34 + v167 * v29;
      v51 = v155;
      do
      {
        v52 = v46;
        v53 = v29;
        v54 = v49;
        v55 = v47;
        v170 = v46;
        if (v46 >= v164)
        {
          break;
        }

        v175 = v29;
        v169 = v47;
        sub_1C718AFC8(v48, v19);
        sub_1C718AFC8(v50, v51);
        v56 = *(v6 + 36);
        v57 = *(v19 + v56);
        v58 = *(v51 + v56);
        if (v57 == v58)
        {
          v59 = v19;
          v60 = *v19;
          v61 = v59[1];
          v62 = MEMORY[0x1CCA5CE50](v60, v61);
          v63 = *v51;
          v64 = v51[1];
          v65 = MEMORY[0x1CCA5CE50](*v51, v64);
          if (v62 == v65)
          {
            v66 = v60 == v63 && v61 == v64;
            v67 = v66 ? 0 : sub_1C7551DBC();
          }

          else
          {
            v67 = v62 < v65;
          }

          v12 = v173;
          v6 = v174;
          v19 = v163;
        }

        else
        {
          v67 = v58 < v57;
        }

        sub_1C718B024(v51, type metadata accessor for PersonalTrait);
        sub_1C718B024(v19, type metadata accessor for PersonalTrait);
        v68 = v165 ^ v67;
        v55 = v169;
        v52 = v170;
        v46 = v170 + 1;
        v48 += v167;
        v50 += v167;
        v53 = v175;
        v29 = v175 + 1;
        v49 = v54 + v167;
        v47 = v169 + v167;
      }

      while ((v68 & 1) == 0);
      v15 = v172;
      if (v165)
      {
        v28 = v160;
        if (v52 < v160)
        {
          goto LABEL_161;
        }

        if (v160 >= v52)
        {
          v29 = v52;
          v27 = v156;
          goto LABEL_49;
        }

        v69 = v160;
        v70 = v160 * v167;
        do
        {
          if (v69 != v53)
          {
            v175 = v53;
            v71 = *v168;
            if (!*v168)
            {
              goto LABEL_168;
            }

            v72 = v55;
            sub_1C718DBAC(v71 + v70, v162);
            v73 = v70 < v54 || v71 + v70 >= (v71 + v72);
            if (v73)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C718DBAC(v162, v71 + v54);
            v55 = v72;
            v53 = v175;
          }

          ++v69;
          v54 -= v167;
          v55 -= v167;
          v70 += v167;
          v74 = v69 < v53--;
        }

        while (v74);
        v29 = v170;
      }

      else
      {
        v29 = v52;
      }

      v27 = v156;
      v28 = v160;
    }

LABEL_49:
    v75 = v168[1];
    if (v29 < v75)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_160;
      }

      if (v29 - v28 < v154)
      {
        break;
      }
    }

LABEL_77:
    if (v29 < v28)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v27 + 2) + 1, 1, v27);
      v27 = v142;
    }

    v98 = *(v27 + 2);
    v97 = *(v27 + 3);
    v99 = v98 + 1;
    v100 = v28;
    if (v98 >= v97 >> 1)
    {
      sub_1C6FB17EC(v97 > 1, v98 + 1, 1, v27);
      v27 = v143;
    }

    *(v27 + 2) = v99;
    v101 = v27 + 32;
    v102 = &v27[16 * v98 + 32];
    *v102 = v100;
    *(v102 + 1) = v29;
    v170 = v29;
    v29 = *v159;
    if (!*v159)
    {
      goto LABEL_169;
    }

    if (v98)
    {
      while (1)
      {
        v103 = v99 - 1;
        v104 = &v101[16 * v99 - 16];
        v105 = &v27[16 * v99];
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v106 = *(v27 + 4);
          v107 = *(v27 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_97:
          if (v109)
          {
            goto LABEL_146;
          }

          v121 = *v105;
          v120 = *(v105 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_149;
          }

          v125 = *(v104 + 1);
          v126 = v125 - *v104;
          if (__OFSUB__(v125, *v104))
          {
            goto LABEL_152;
          }

          if (__OFADD__(v123, v126))
          {
            goto LABEL_154;
          }

          if (v123 + v126 >= v108)
          {
            if (v108 < v126)
            {
              v103 = v99 - 2;
            }

            goto LABEL_119;
          }

          goto LABEL_112;
        }

        if (v99 < 2)
        {
          goto LABEL_148;
        }

        v128 = *v105;
        v127 = *(v105 + 1);
        v116 = __OFSUB__(v127, v128);
        v123 = v127 - v128;
        v124 = v116;
LABEL_112:
        if (v124)
        {
          goto LABEL_151;
        }

        v130 = *v104;
        v129 = *(v104 + 1);
        v116 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v116)
        {
          goto LABEL_153;
        }

        if (v131 < v123)
        {
          goto LABEL_126;
        }

LABEL_119:
        if (v103 - 1 >= v99)
        {
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
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
          goto LABEL_163;
        }

        if (!*v168)
        {
          goto LABEL_166;
        }

        v135 = v27;
        v136 = &v101[16 * v103 - 16];
        v137 = *v136;
        v138 = &v101[16 * v103];
        v139 = *(v138 + 1);
        v140 = v171;
        sub_1C718D38C((*v168 + *(v166 + 72) * *v136), (*v168 + *(v166 + 72) * *v138), *v168 + *(v166 + 72) * v139, v29);
        v171 = v140;
        if (v140)
        {
          goto LABEL_139;
        }

        if (v139 < v137)
        {
          goto LABEL_141;
        }

        v141 = *(v135 + 2);
        if (v103 > v141)
        {
          goto LABEL_142;
        }

        *v136 = v137;
        *(v136 + 1) = v139;
        if (v103 >= v141)
        {
          goto LABEL_143;
        }

        v99 = v141 - 1;
        sub_1C7423CF4(v138 + 16, v141 - 1 - v103, &v101[16 * v103]);
        v27 = v135;
        *(v135 + 2) = v141 - 1;
        v74 = v141 > 2;
        v12 = v173;
        v6 = v174;
        v15 = v172;
        if (!v74)
        {
          goto LABEL_126;
        }
      }

      v110 = &v101[16 * v99];
      v111 = *(v110 - 8);
      v112 = *(v110 - 7);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_144;
      }

      v115 = *(v110 - 6);
      v114 = *(v110 - 5);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_145;
      }

      v117 = *(v105 + 1);
      v118 = v117 - *v105;
      if (__OFSUB__(v117, *v105))
      {
        goto LABEL_147;
      }

      v116 = __OFADD__(v108, v118);
      v119 = v108 + v118;
      if (v116)
      {
        goto LABEL_150;
      }

      if (v119 >= v113)
      {
        v133 = *v104;
        v132 = *(v104 + 1);
        v116 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v116)
        {
          goto LABEL_158;
        }

        if (v108 < v134)
        {
          v103 = v99 - 2;
        }

        goto LABEL_119;
      }

      goto LABEL_97;
    }

LABEL_126:
    v25 = v168[1];
    v26 = v170;
    v19 = v163;
    if (v170 >= v25)
    {
      goto LABEL_129;
    }
  }

  v76 = v28 + v154;
  if (__OFADD__(v28, v154))
  {
    goto LABEL_162;
  }

  if (v76 >= v75)
  {
    v76 = v168[1];
  }

  if (v76 < v28)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v29 == v76)
  {
    goto LABEL_77;
  }

  v156 = v27;
  v77 = *v168;
  v78 = *(v166 + 72);
  v79 = *v168 + v78 * (v29 - 1);
  v80 = -v78;
  v160 = v28;
  v161 = v78;
  v81 = v28 - v29;
  v175 = v77;
  v82 = v77 + v29 * v78;
  v164 = v76;
LABEL_58:
  v169 = v79;
  v170 = v29;
  v165 = v82;
  v83 = v82;
  v167 = v81;
  while (1)
  {
    sub_1C718AFC8(v83, v15);
    sub_1C718AFC8(v79, v12);
    v84 = *(v6 + 36);
    v85 = *(v15 + v84);
    v86 = *(v12 + v84);
    if (v85 == v86)
    {
      v87 = v15;
      v88 = *v15;
      v89 = v87[1];
      v90 = MEMORY[0x1CCA5CE50](v88, v89);
      v91 = *v12;
      v92 = v12[1];
      v93 = MEMORY[0x1CCA5CE50](v91, v92);
      if (v90 == v93)
      {
        if (v88 == v91 && v89 == v92)
        {
          v12 = v173;
          sub_1C718B024(v173, type metadata accessor for PersonalTrait);
          v15 = v172;
          sub_1C718B024(v172, type metadata accessor for PersonalTrait);
          v6 = v174;
LABEL_75:
          v29 = v170 + 1;
          v79 = v169 + v161;
          v81 = v167 - 1;
          v82 = v165 + v161;
          if (v170 + 1 == v164)
          {
            v29 = v164;
            v27 = v156;
            v28 = v160;
            goto LABEL_77;
          }

          goto LABEL_58;
        }

        v95 = sub_1C7551DBC();
      }

      else
      {
        v95 = v90 < v93;
      }

      v12 = v173;
      v6 = v174;
      v15 = v172;
    }

    else
    {
      v95 = v86 < v85;
    }

    sub_1C718B024(v12, type metadata accessor for PersonalTrait);
    sub_1C718B024(v15, type metadata accessor for PersonalTrait);
    if ((v95 & 1) == 0)
    {
      goto LABEL_75;
    }

    if (!v175)
    {
      break;
    }

    v96 = v176;
    sub_1C718DBAC(v83, v176);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C718DBAC(v96, v79);
    v79 += v80;
    v83 += v80;
    v73 = __CFADD__(v81++, 1);
    if (v73)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

void sub_1C718CF24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v59 = a1;
  v58 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    v28 = &v48 - v10;
    sub_1C741E698(a2, v16 / v13, a4);
    v29 = a4 + v19 * v13;
    v30 = -v13;
    v31 = v29;
    v54 = v30;
    v51 = a1;
    v52 = a4;
    v50 = v11;
LABEL_37:
    v32 = a2 + v30;
    v33 = a3;
    v34 = v31;
    v53 = a2 + v30;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v34;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v34;
      v35 = v33 + v54;
      v36 = v29 + v54;
      v37 = v28;
      v38 = v28;
      v39 = v29;
      v40 = v33;
      sub_1C718F68C(v29 + v54, v38);
      v41 = v55;
      sub_1C718F68C(v32, v55);
      v42 = *(v56 + 48);
      v43 = *(v37 + v42);
      v44 = *(v41 + v42);
      sub_1C6FD7FC8(v41, &qword_1EC218328, &qword_1C7571228);
      sub_1C6FD7FC8(v37, &qword_1EC218328, &qword_1C7571228);
      if (v44 < v43)
      {
        v48 = v39;
        v46 = v40 < a2 || v35 >= a2;
        a3 = v35;
        if (v46)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v49;
          v28 = v50;
          v30 = v54;
          a1 = v51;
          a4 = v52;
          v29 = v48;
        }

        else
        {
          v31 = v49;
          v15 = v40 == a2;
          v47 = v53;
          v30 = v54;
          a2 = v53;
          v28 = v50;
          a1 = v51;
          a4 = v52;
          v29 = v48;
          if (!v15)
          {
            v31 = v49;
            swift_arrayInitWithTakeBackToFront();
            v29 = v48;
            a2 = v47;
          }
        }

        goto LABEL_37;
      }

      if (v40 < v39 || v35 >= v39)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v34 = v36;
        v28 = v50;
        a1 = v51;
        a4 = v52;
        v32 = v53;
      }

      else
      {
        v34 = v36;
        v15 = v39 == v40;
        v33 = v35;
        v29 = v36;
        v28 = v50;
        a1 = v51;
        a4 = v52;
        v32 = v53;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v35;
          v29 = v36;
          v34 = v36;
        }
      }
    }

    v59 = a2;
    v57 = v31;
  }

  else
  {
    sub_1C741E698(a1, v14 / v13, a4);
    v20 = a4 + v18 * v13;
    v57 = v20;
    while (a4 < v20 && a2 < a3)
    {
      sub_1C718F68C(a2, v11);
      v22 = v55;
      sub_1C718F68C(a4, v55);
      v23 = *(v56 + 48);
      v24 = *&v11[v23];
      v25 = *(v22 + v23);
      sub_1C6FD7FC8(v22, &qword_1EC218328, &qword_1C7571228);
      sub_1C6FD7FC8(v11, &qword_1EC218328, &qword_1C7571228);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v13;
        a4 += v13;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v13;
      }

      a1 += v13;
      v59 = a1;
    }
  }

LABEL_59:
  sub_1C74208A0(&v59, &v58, &v57);
}

void sub_1C718D38C(char *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v74 = a3;
  v7 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v66 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v66 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_83;
  }

  v21 = v74 - a2;
  if (v74 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_84;
  }

  v75 = v14;
  v23 = v19 / v18;
  v78 = a1;
  v77 = a4;
  v24 = v21 / v18;
  v71 = v7;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E398(a1, v19 / v18, a4);
    v72 = v18;
    v73 = a4 + v23 * v18;
    v76 = v73;
    v25 = a4;
    while (1)
    {
      if (v25 >= v73 || a2 >= v74)
      {
        goto LABEL_81;
      }

      sub_1C718AFC8(a2, v16);
      sub_1C718AFC8(v25, v12);
      v27 = *(v7 + 36);
      v28 = *(v16 + v27);
      v29 = *(v12 + v27);
      if (v28 == v29)
      {
        v75 = a1;
        v30 = a2;
        v31 = v25;
        v32 = *v16;
        v33 = v16[1];
        v34 = MEMORY[0x1CCA5CE50](*v16, v33);
        v35 = *v12;
        v36 = v12[1];
        v37 = MEMORY[0x1CCA5CE50](*v12, v36);
        if (v34 == v37)
        {
          if (v32 == v35 && v33 == v36)
          {
            sub_1C718B024(v12, type metadata accessor for PersonalTrait);
            sub_1C718B024(v16, type metadata accessor for PersonalTrait);
            v7 = v71;
            v18 = v72;
            v25 = v31;
            a2 = v30;
            a1 = v75;
            goto LABEL_37;
          }

          v39 = sub_1C7551DBC();
        }

        else
        {
          v39 = v34 < v37;
        }

        v7 = v71;
        v18 = v72;
        v25 = v31;
        a2 = v30;
        a1 = v75;
      }

      else
      {
        v39 = v29 < v28;
      }

      sub_1C718B024(v12, type metadata accessor for PersonalTrait);
      sub_1C718B024(v16, type metadata accessor for PersonalTrait);
      if (v39)
      {
        if (a1 < a2 || a1 >= &a2[v18])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
        goto LABEL_46;
      }

LABEL_37:
      if (a1 < v25 || a1 >= v25 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = v25 + v18;
      v25 += v18;
LABEL_46:
      a1 += v18;
      v78 = a1;
    }
  }

  sub_1C741E398(a2, v21 / v18, a4);
  v42 = v18;
  v43 = a4 + v24 * v18;
  v44 = -v42;
  v45 = v43;
  v47 = v74;
  v46 = v75;
  v67 = a4;
  v72 = -v42;
LABEL_48:
  v69 = &a2[v44];
  v70 = a2;
  v48 = v47;
  v49 = v45;
  v74 = v45;
  while (1)
  {
    if (v43 <= a4)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_81;
    }

    if (v70 <= a1)
    {
      break;
    }

    v68 = v49;
    v50 = v43 + v44;
    sub_1C718AFC8(v43 + v44, v46);
    v51 = v73;
    sub_1C718AFC8(v69, v73);
    v52 = *(v7 + 36);
    v53 = *(v46 + v52);
    v54 = *(v51 + v52);
    if (v53 == v54)
    {
      v56 = *v46;
      v55 = v46[1];
      v57 = MEMORY[0x1CCA5CE50](*v46, v55);
      v58 = *v51;
      v59 = v51[1];
      v60 = MEMORY[0x1CCA5CE50](v58, v59);
      if (v57 == v60)
      {
        if (v56 == v58 && v55 == v59)
        {
          v62 = 0;
        }

        else
        {
          v62 = sub_1C7551DBC();
        }
      }

      else
      {
        v62 = v57 < v60;
      }

      v7 = v71;
      a4 = v67;
    }

    else
    {
      v62 = v54 < v53;
    }

    v47 = v48 + v72;
    sub_1C718B024(v73, type metadata accessor for PersonalTrait);
    sub_1C718B024(v75, type metadata accessor for PersonalTrait);
    if (v62)
    {
      if (v48 < v70 || v47 >= v70)
      {
        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v68;
        v46 = v75;
        v44 = v72;
      }

      else
      {
        v45 = v68;
        v65 = v69;
        v20 = v48 == v70;
        a2 = v69;
        v46 = v75;
        v44 = v72;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v65;
          v45 = v68;
        }
      }

      goto LABEL_48;
    }

    if (v48 < v43 || v47 >= v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v47;
      v43 = v50;
      v49 = v50;
      v45 = v74;
      v46 = v75;
      v44 = v72;
    }

    else
    {
      v49 = v50;
      v20 = v43 == v48;
      v48 = v47;
      v43 = v50;
      v45 = v74;
      v46 = v75;
      v44 = v72;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v45 = v74;
        v48 = v47;
        v43 = v50;
        v49 = v50;
      }
    }
  }

  v78 = v70;
  v76 = v45;
LABEL_81:
  sub_1C74208B4(&v78, &v77, &v76);
}

unint64_t sub_1C718D988()
{
  result = qword_1EC218538;
  if (!qword_1EC218538)
  {
    result = swift_getWitnessTable(byte_1C7572EA0, &type metadata for PersonalTraitSelector.SelectionResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218538);
  }

  return result;
}

unint64_t sub_1C718D9DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218540, &qword_1C7571DE0);
    sub_1C718DA70(v4);
    v5 = OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DA70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DAB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2165B8, &qword_1C7564C88);
    OUTLINED_FUNCTION_3_57();
    sub_1C718DA70(v4);
    v5 = OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DB58()
{
  result = qword_1EC218578;
  if (!qword_1EC218578)
  {
    result = swift_getWitnessTable(aIs, &type metadata for PersonalTraitSelector.RejectedPersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218578);
  }

  return result;
}

uint64_t sub_1C718DBAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1C718DC08()
{
  result = qword_1EC2185C8;
  if (!qword_1EC2185C8)
  {
    result = swift_getWitnessTable(byte_1C7572E00, &type metadata for PersonalTraitSelector.RejectionReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185C8);
  }

  return result;
}

unint64_t sub_1C718DC5C()
{
  result = qword_1EC2185D0;
  if (!qword_1EC2185D0)
  {
    result = swift_getWitnessTable(aT_1, &type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185D0);
  }

  return result;
}

unint64_t sub_1C718DCB0()
{
  result = qword_1EC2185D8;
  if (!qword_1EC2185D8)
  {
    result = swift_getWitnessTable(aYt, &type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185D8);
  }

  return result;
}

unint64_t sub_1C718DD04()
{
  result = qword_1EC2185E0;
  if (!qword_1EC2185E0)
  {
    result = swift_getWitnessTable(byte_1C7572D10, &type metadata for PersonalTraitSelector.RejectionReason.BelowMinimumAssetRatioCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185E0);
  }

  return result;
}

unint64_t sub_1C718DD58()
{
  result = qword_1EC2185E8;
  if (!qword_1EC2185E8)
  {
    result = swift_getWitnessTable(byte_1C7572CC0, &type metadata for PersonalTraitSelector.RejectionReason.BelowStatisticalThresholdCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185E8);
  }

  return result;
}

unint64_t sub_1C718DDAC()
{
  result = qword_1EC2185F0;
  if (!qword_1EC2185F0)
  {
    result = swift_getWitnessTable(aIu, &type metadata for PersonalTraitSelector.RejectionReason.DeduplicatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2185F0);
  }

  return result;
}

unint64_t sub_1C718DE04()
{
  result = qword_1EC218630;
  if (!qword_1EC218630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTraitSelector.Step, &type metadata for PersonalTraitSelector.Step, v0, v1);
    atomic_store(result, &qword_1EC218630);
  }

  return result;
}

unint64_t sub_1C718DE9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v6 = v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable(v6, v7);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DEE4()
{
  result = qword_1EC218648;
  if (!qword_1EC218648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTraitSelector.Error, &type metadata for PersonalTraitSelector.Error, v0, v1);
    atomic_store(result, &qword_1EC218648);
  }

  return result;
}

uint64_t sub_1C718DF60(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C718E07C(uint64_t a1)
{
  result = type metadata accessor for PersonalTrait(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PersonalTraitSelector.RejectionReason(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C718E118(uint64_t a1)
{
  sub_1C718E1F8();
  if (v1 <= 0x3F)
  {
    sub_1C718E240();
    if (v2 <= 0x3F)
    {
      sub_1C718E368(319, &qword_1EC218690, MEMORY[0x1E69E63B0], "threshold score ");
      if (v3 <= 0x3F)
      {
        sub_1C718E268(319);
        if (v4 <= 0x3F)
        {
          sub_1C718E368(319, &qword_1EC2186A0, MEMORY[0x1E69E6530], "limit rank ");
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C718E1F8()
{
  if (!qword_1EC218680)
  {
    v0 = type metadata accessor for PersonalTrait(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC218680);
    }
  }
}

uint64_t sub_1C718E240()
{
  result = qword_1EC218688;
  if (!qword_1EC218688)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1EC218688);
  }

  return result;
}

uint64_t sub_1C718E268(uint64_t a1)
{
  v1 = qword_1EC218698;
  if (!qword_1EC218698)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC218698);
    }
  }

  return v1;
}

void sub_1C718E368(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitSelector.RejectionReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C718E4A4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C718E65C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_478(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C718E734(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_478(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C718E870()
{
  result = qword_1EC2186A8;
  if (!qword_1EC2186A8)
  {
    result = swift_getWitnessTable(byte_1C7572688, &type metadata for PersonalTraitSelector.Step.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186A8);
  }

  return result;
}

unint64_t sub_1C718E8C8()
{
  result = qword_1EC2186B0;
  if (!qword_1EC2186B0)
  {
    result = swift_getWitnessTable(aG, &type metadata for PersonalTraitSelector.SelectionResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186B0);
  }

  return result;
}

unint64_t sub_1C718E920()
{
  result = qword_1EC2186B8;
  if (!qword_1EC2186B8)
  {
    result = swift_getWitnessTable(aQf, &type metadata for PersonalTraitSelector.RejectedPersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186B8);
  }

  return result;
}

unint64_t sub_1C718E978()
{
  result = qword_1EC2186C0;
  if (!qword_1EC2186C0)
  {
    result = swift_getWitnessTable(byte_1C75728B0, &type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186C0);
  }

  return result;
}

unint64_t sub_1C718E9D0()
{
  result = qword_1EC2186C8;
  if (!qword_1EC2186C8)
  {
    result = swift_getWitnessTable(byte_1C7572968, &type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186C8);
  }

  return result;
}

unint64_t sub_1C718EA28()
{
  result = qword_1EC2186D0;
  if (!qword_1EC2186D0)
  {
    result = swift_getWitnessTable(aD_2, &type metadata for PersonalTraitSelector.RejectionReason.BelowMinimumAssetRatioCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186D0);
  }

  return result;
}

unint64_t sub_1C718EA80()
{
  result = qword_1EC2186D8;
  if (!qword_1EC2186D8)
  {
    result = swift_getWitnessTable(aQc, &type metadata for PersonalTraitSelector.RejectionReason.BelowStatisticalThresholdCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186D8);
  }

  return result;
}

unint64_t sub_1C718EAD8()
{
  result = qword_1EC2186E0;
  if (!qword_1EC2186E0)
  {
    result = swift_getWitnessTable(byte_1C7572B90, &type metadata for PersonalTraitSelector.RejectionReason.DeduplicatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186E0);
  }

  return result;
}

unint64_t sub_1C718EB30()
{
  result = qword_1EC2186E8;
  if (!qword_1EC2186E8)
  {
    result = swift_getWitnessTable(byte_1C7572C48, &type metadata for PersonalTraitSelector.RejectionReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186E8);
  }

  return result;
}

unint64_t sub_1C718EB88()
{
  result = qword_1EC2186F0;
  if (!qword_1EC2186F0)
  {
    result = swift_getWitnessTable(byte_1C7572B00, &type metadata for PersonalTraitSelector.RejectionReason.DeduplicatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186F0);
  }

  return result;
}

unint64_t sub_1C718EBE0()
{
  result = qword_1EC2186F8;
  if (!qword_1EC2186F8)
  {
    result = swift_getWitnessTable(aL_1, &type metadata for PersonalTraitSelector.RejectionReason.DeduplicatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2186F8);
  }

  return result;
}

unint64_t sub_1C718EC38()
{
  result = qword_1EC218700;
  if (!qword_1EC218700)
  {
    result = swift_getWitnessTable(byte_1C7572A48, &type metadata for PersonalTraitSelector.RejectionReason.BelowStatisticalThresholdCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218700);
  }

  return result;
}

unint64_t sub_1C718EC90()
{
  result = qword_1EC218708;
  if (!qword_1EC218708)
  {
    result = swift_getWitnessTable(byte_1C7572A70, &type metadata for PersonalTraitSelector.RejectionReason.BelowStatisticalThresholdCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218708);
  }

  return result;
}

unint64_t sub_1C718ECE8()
{
  result = qword_1EC218710;
  if (!qword_1EC218710)
  {
    result = swift_getWitnessTable(aAq, &type metadata for PersonalTraitSelector.RejectionReason.BelowMinimumAssetRatioCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218710);
  }

  return result;
}

unint64_t sub_1C718ED40()
{
  result = qword_1EC218718;
  if (!qword_1EC218718)
  {
    result = swift_getWitnessTable(aYm, &type metadata for PersonalTraitSelector.RejectionReason.BelowMinimumAssetRatioCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218718);
  }

  return result;
}

unint64_t sub_1C718ED98()
{
  result = qword_1EC218720;
  if (!qword_1EC218720)
  {
    result = swift_getWitnessTable(byte_1C75728D8, &type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218720);
  }

  return result;
}

unint64_t sub_1C718EDF0()
{
  result = qword_1EC218728;
  if (!qword_1EC218728)
  {
    result = swift_getWitnessTable(a1n, &type metadata for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218728);
  }

  return result;
}

unint64_t sub_1C718EE48()
{
  result = qword_1EC218730;
  if (!qword_1EC218730)
  {
    result = swift_getWitnessTable(byte_1C7572820, &type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218730);
  }

  return result;
}

unint64_t sub_1C718EEA0()
{
  result = qword_1EC218738;
  if (!qword_1EC218738)
  {
    result = swift_getWitnessTable(byte_1C7572848, &type metadata for PersonalTraitSelector.RejectionReason.BelowMaxCountLimitCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218738);
  }

  return result;
}

unint64_t sub_1C718EEF8()
{
  result = qword_1EC218740;
  if (!qword_1EC218740)
  {
    result = swift_getWitnessTable(a9o, &type metadata for PersonalTraitSelector.RejectionReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218740);
  }

  return result;
}

unint64_t sub_1C718EF50()
{
  result = qword_1EC218748;
  if (!qword_1EC218748)
  {
    result = swift_getWitnessTable(aQk, &type metadata for PersonalTraitSelector.RejectionReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218748);
  }

  return result;
}

unint64_t sub_1C718EFA8()
{
  result = qword_1EC218750;
  if (!qword_1EC218750)
  {
    result = swift_getWitnessTable(byte_1C7572768, &type metadata for PersonalTraitSelector.RejectedPersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218750);
  }

  return result;
}

unint64_t sub_1C718F000()
{
  result = qword_1EC218758;
  if (!qword_1EC218758)
  {
    result = swift_getWitnessTable(byte_1C7572790, &type metadata for PersonalTraitSelector.RejectedPersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218758);
  }

  return result;
}

unint64_t sub_1C718F058()
{
  result = qword_1EC218760;
  if (!qword_1EC218760)
  {
    result = swift_getWitnessTable(aAt, &type metadata for PersonalTraitSelector.SelectionResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218760);
  }

  return result;
}

unint64_t sub_1C718F0B0()
{
  result = qword_1EC218768;
  if (!qword_1EC218768)
  {
    result = swift_getWitnessTable(aYp, &type metadata for PersonalTraitSelector.SelectionResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218768);
  }

  return result;
}

unint64_t sub_1C718F108()
{
  result = qword_1EC218770;
  if (!qword_1EC218770)
  {
    result = swift_getWitnessTable(aIu_0, &type metadata for PersonalTraitSelector.Step.AggregationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218770);
  }

  return result;
}

unint64_t sub_1C718F160()
{
  result = qword_1EC218778;
  if (!qword_1EC218778)
  {
    result = swift_getWitnessTable(aAq_0, &type metadata for PersonalTraitSelector.Step.AggregationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218778);
  }

  return result;
}

unint64_t sub_1C718F1B8()
{
  result = qword_1EC218780;
  if (!qword_1EC218780)
  {
    result = swift_getWitnessTable(byte_1C7572558, &type metadata for PersonalTraitSelector.Step.StatisticalFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218780);
  }

  return result;
}

unint64_t sub_1C718F210()
{
  result = qword_1EC218788;
  if (!qword_1EC218788)
  {
    result = swift_getWitnessTable(byte_1C7572580, &type metadata for PersonalTraitSelector.Step.StatisticalFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218788);
  }

  return result;
}

unint64_t sub_1C718F268()
{
  result = qword_1EC218790;
  if (!qword_1EC218790)
  {
    result = swift_getWitnessTable(byte_1C7572508, &type metadata for PersonalTraitSelector.Step.MinimumAssetRatioFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218790);
  }

  return result;
}

unint64_t sub_1C718F2C0()
{
  result = qword_1EC218798;
  if (!qword_1EC218798)
  {
    result = swift_getWitnessTable(byte_1C7572530, &type metadata for PersonalTraitSelector.Step.MinimumAssetRatioFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218798);
  }

  return result;
}

unint64_t sub_1C718F318()
{
  result = qword_1EC2187A0;
  if (!qword_1EC2187A0)
  {
    result = swift_getWitnessTable(a9v, &type metadata for PersonalTraitSelector.Step.RandomWeightedSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187A0);
  }

  return result;
}

unint64_t sub_1C718F370()
{
  result = qword_1EC2187A8;
  if (!qword_1EC2187A8)
  {
    result = swift_getWitnessTable(aQr, &type metadata for PersonalTraitSelector.Step.RandomWeightedSamplingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187A8);
  }

  return result;
}

unint64_t sub_1C718F3C8()
{
  result = qword_1EC2187B0;
  if (!qword_1EC2187B0)
  {
    result = swift_getWitnessTable(byte_1C7572468, &type metadata for PersonalTraitSelector.Step.TopNFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187B0);
  }

  return result;
}

unint64_t sub_1C718F420()
{
  result = qword_1EC2187B8;
  if (!qword_1EC2187B8)
  {
    result = swift_getWitnessTable(byte_1C7572490, &type metadata for PersonalTraitSelector.Step.TopNFilteringCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187B8);
  }

  return result;
}

unint64_t sub_1C718F478()
{
  result = qword_1EC2187C0;
  if (!qword_1EC2187C0)
  {
    result = swift_getWitnessTable(byte_1C7572418, &type metadata for PersonalTraitSelector.Step.SortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187C0);
  }

  return result;
}

unint64_t sub_1C718F4D0()
{
  result = qword_1EC2187C8;
  if (!qword_1EC2187C8)
  {
    result = swift_getWitnessTable(byte_1C7572440, &type metadata for PersonalTraitSelector.Step.SortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187C8);
  }

  return result;
}

unint64_t sub_1C718F528()
{
  result = qword_1EC2187D0;
  if (!qword_1EC2187D0)
  {
    result = swift_getWitnessTable(byte_1C75725F8, &type metadata for PersonalTraitSelector.Step.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187D0);
  }

  return result;
}

unint64_t sub_1C718F580()
{
  result = qword_1EC2187D8;
  if (!qword_1EC2187D8)
  {
    result = swift_getWitnessTable(byte_1C7572620, &type metadata for PersonalTraitSelector.Step.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2187D8);
  }

  return result;
}

uint64_t sub_1C718F5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C718F638()
{
  result = qword_1EC2187E8;
  if (!qword_1EC2187E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTraitSelector.Error, &type metadata for PersonalTraitSelector.Error, v0, v1);
    atomic_store(result, &qword_1EC2187E8);
  }

  return result;
}

uint64_t sub_1C718F68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C718F6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_53_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_54_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551C1C();
}

BOOL OUTLINED_FUNCTION_55_13(int a1)
{
  *(v2 - 288) = a1;

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C718F924(uint64_t a1, uint64_t a2)
{
  sub_1C70E25E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C75604F0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1C6F6D524();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x80000001C759E260;
  v5 = MEMORY[0x1E69E6870];
  *(v3 + 96) = MEMORY[0x1E69E6810];
  *(v3 + 104) = v5;
  *(v3 + 64) = v4;
  *(v3 + 72) = a1;
  return sub_1C755112C();
}

uint64_t KMeans.distanceBlock.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C718FADC(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1C718FBD4(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t KMeans.__allocating_init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, float a6)
{
  result = swift_allocObject();
  v13 = *a5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a6;
  *(result + 48) = a4;
  *(result + 56) = v13;
  return result;
}

uint64_t KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, float a6)
{
  v7 = *a5;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = v7;
  return v6;
}

void *sub_1C718FD04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  __B[3] = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 16);
  v12 = *(v8 + 16);
  if (v12 >= v11)
  {
    v60 = a1;
    v61 = sub_1C71CD888(0, v11);
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v9 + 64) = v61;

    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v9 + 72) = v60;

    return sub_1C75504FC();
  }

  LOBYTE(__B[0]) = *(v8 + 56);
  v70 = v12;
  v13 = Random.sample(k:from:using:)(v12, a1, __B, a4, a5, a6, a7, a8);
  if (!v11)
  {
    goto LABEL_73;
  }

  v14 = v13;
  v63 = a1;
  v15 = *(a1 + 32);
  v71 = a1 + 32;
  v16 = 1;
  v69 = v8;
  v67 = v11;
  v64 = v15;
  do
  {
    v65 = v16;
    sub_1C725CE9C(*(v15 + 16), 0.0);
    v18 = sub_1C725CF64(v17, v70);
    sub_1C725CE9C(v70, 0.0);
    v20 = v19;
    v21 = 0;
    v68 = (v14 + 32);
    v72 = v14;
    while (1)
    {
      v74 = v20;
      if (v21 == v11)
      {
        break;
      }

      v73 = v21;
      v22 = *(v71 + 8 * v21);
      v23 = *(v14 + 16);
      if (v23)
      {
        v24 = *(v69 + 24);
        __B[0] = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C716DD68(0, v23, 0);
        v25 = __B[0];
        v26 = v68;
        do
        {
          v27 = *v26;
          v75 = v22;
          v76[0] = v27;
          sub_1C75504FC();
          v28 = v24(v76, &v75);

          __B[0] = v25;
          v30 = *(v25 + 16);
          v29 = *(v25 + 24);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            sub_1C716DD68((v29 > 1), v30 + 1, 1);
            v25 = __B[0];
          }

          *(v25 + 16) = v31;
          *(v25 + 4 * v30 + 32) = v28;
          ++v26;
          --v23;
        }

        while (v23);
        v11 = v67;
      }

      else
      {
        sub_1C75504FC();
        v25 = MEMORY[0x1E69E7CC0];
        v31 = *(MEMORY[0x1E69E7CC0] + 16);
      }

      if (v31 != 1)
      {
        if (v31)
        {
          v32 = 0;
          v33 = 0;
          while (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v33 >= v31)
            {
              goto LABEL_66;
            }

            if (*(v25 + 4 * v32 + 36) < *(v25 + 32 + 4 * v33))
            {
              v33 = v32 + 1;
            }

            if (v31 - 1 == ++v32)
            {

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
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
          goto LABEL_76;
        }

        sub_1C719079C();
        swift_allocError();
        *v62 = 1;
        swift_willThrow();
      }

      v33 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v72;
      }

      else
      {
LABEL_36:
        sub_1C70E3DC4();
        v18 = v41;
LABEL_22:
        v14 = v72;
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      if (v33 >= *(v18 + 16))
      {
        goto LABEL_68;
      }

      v34 = v18 + 32;
      v35 = *(v18 + 32 + 8 * v33);
      v36 = *(v35 + 16);
      if (v36 != *(v22 + 16))
      {
        goto LABEL_69;
      }

      v37 = v18;
      if (v36)
      {
        v38 = sub_1C7550BBC();
        *(v38 + 16) = v36;
        bzero((v38 + 32), 4 * v36);
        v39 = *(v35 + 16);
      }

      else
      {
        v39 = 0;
        v38 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1CCA5FAA0](v35 + 32, 1, v22 + 32, 1, v38 + 32, 1, v39);

      *(v34 + 8 * v33) = v38;
      v20 = v74;
      if (v33 >= *(v74 + 16))
      {
        goto LABEL_70;
      }

      v40 = *(v74 + 4 * v33 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D94();
        v20 = v42;
      }

      v18 = v37;
      if (v33 >= *(v20 + 16))
      {
        goto LABEL_71;
      }

      v21 = v73 + 1;
      *(v20 + 4 * v33 + 32) = v40 + 1.0;
    }

    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if (v70)
    {
      if (v70 > *(v20 + 16))
      {
        goto LABEL_75;
      }

      v43 = 0;
      do
      {
        v44 = *(v74 + 4 * v43 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3DC4();
          v18 = v52;
        }

        if (v43 >= *(v18 + 16))
        {
          goto LABEL_72;
        }

        v45 = v18;
        v46 = v18 + 8 * v43;
        v47 = *(v46 + 32);
        LODWORD(__B[0]) = v44;
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = sub_1C7550BBC();
          *(v49 + 16) = v48;
          bzero((v49 + 32), 4 * v48);
          v50 = *(v47 + 16);
        }

        else
        {
          v50 = 0;
          v49 = MEMORY[0x1E69E7CC0];
        }

        ++v43;
        vDSP_vsdiv((v47 + 32), 1, __B, (v49 + 32), 1, v50);

        *(v46 + 32) = v49;
        v51 = v70;
        v18 = v45;
      }

      while (v70 != v43);
      if (v70 > *(v14 + 16))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v70 > *(v45 + 16))
      {
        goto LABEL_77;
      }

      v53 = *(v69 + 24);
      v54 = 0.0;
      v55 = 32;
      do
      {
        __B[0] = *(v14 + v55);
        v76[0] = *(v45 + v55);
        sub_1C75504FC();
        sub_1C75504FC();
        v56 = v53(__B, v76);

        v54 = v54 + v56;
        v55 += 8;
        --v51;
      }

      while (v51);

      v14 = v45;
    }

    else
    {

      v54 = 0.0;
      v14 = v18;
    }

    v15 = v64;
    v57 = *(v69 + 40) >= v54 || v65 >= 0x270F;
    v16 = v65 + 1;
  }

  while (!v57);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v69 + 72) = v14;

  result = sub_1C7190394(v63);
  if (!v66)
  {
    v59 = result;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v69 + 64) = v59;
  }

  return result;
}

void *sub_1C7190394(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[9];
  if (!v4)
  {
    sub_1C719079C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return v1;
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C716D854();
  v7 = 0;
  v1 = v34;
  v29 = v5;
  v27 = (v4 + 32);
  v28 = v4;
  v8 = v2[3];
  while (1)
  {
    v30 = v7;
    v9 = *(a1 + 32 + 8 * v7);
    v10 = *(v4 + 16);
    if (v10)
    {
      v33 = v6;
      sub_1C75504FC();
      sub_1C716DD68(0, v10, 0);
      v6 = v33;
      v11 = v27;
      do
      {
        v12 = *v11;
        v31 = v9;
        v32 = v12;
        sub_1C75504FC();
        v13 = v8(&v32, &v31);

        v33 = v6;
        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          result = sub_1C716DD68((v15 > 1), v16 + 1, 1);
          v6 = v33;
        }

        *(v6 + 16) = v17;
        *(v6 + 4 * v16 + 32) = v13;
        ++v11;
        --v10;
      }

      while (v10);
      v4 = v28;
    }

    else
    {
      result = sub_1C75504FC();
      v17 = *(v6 + 16);
    }

    if (v17 != 1)
    {
      break;
    }

    v18 = 0;
LABEL_21:

    v34 = v1;
    v24 = v1[2];
    if (v24 >= v1[3] >> 1)
    {
      sub_1C716D854();
      v1 = v34;
    }

    v7 = v30 + 1;
    v1[2] = v24 + 1;
    v1[v24 + 4] = v18;
    v6 = MEMORY[0x1E69E7CC0];
    if (v30 + 1 == v29)
    {

      return v1;
    }
  }

  if (!v17)
  {

    sub_1C719079C();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    return v1;
  }

  v18 = 0;
  v19 = 0;
  v20 = (v6 + 36);
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 1;
  while (v21)
  {
    if (v19 >= v17)
    {
      goto LABEL_30;
    }

    v23 = *v20++;
    if (v23 < *(v6 + 32 + 4 * v19))
    {
      v18 = v22;
      v19 = v22;
    }

    ++v22;
    --v21;
    if (v17 == v22)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t KMeans.deinit()
{

  return v0;
}

uint64_t KMeans.__deallocating_deinit()
{
  KMeans.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C719079C()
{
  result = qword_1EC218808;
  if (!qword_1EC218808)
  {
    result = swift_getWitnessTable(aQm, &type metadata for KMeans.Error, v0, v1);
    atomic_store(result, &qword_1EC218808);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KMeans.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7190A68()
{
  result = qword_1EC218810;
  if (!qword_1EC218810)
  {
    result = swift_getWitnessTable(byte_1C7573238, &type metadata for KMeans.Error, v0, v1);
    atomic_store(result, &qword_1EC218810);
  }

  return result;
}

uint64_t sub_1C7190ABC()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC218818 = result;
  return result;
}

id static GenerativeMediaCuration.fetchFeaturedGenerativeAssets(with:limit:sort:)(void *a1, uint64_t a2, int a3)
{
  HIDWORD(v36) = a3;
  if (qword_1EC213E50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC218818;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  v37 = PerformanceMeasure.init(name:log:)();
  v7 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 32) = sub_1C755068C();
  *(v8 + 40) = v9;
  sub_1C6FCA0EC(v8, v7);
  [v7 setFetchLimit_];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C75732A0;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v11 = swift_allocObject();
  v35 = xmmword_1C75604F0;
  *(v11 + 16) = xmmword_1C75604F0;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6F6D524();
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E7290];
  *(v11 + 32) = 1684957547;
  *(v11 + 40) = 0xE400000000000000;
  v15 = MEMORY[0x1E69E72E8];
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = 0;
  *(v10 + 32) = sub_1C755112C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C755BAB0;
  *(v16 + 56) = v12;
  *(v16 + 64) = v13;
  *(v16 + 32) = 0xD000000000000028;
  *(v16 + 40) = 0x80000001C759AE50;
  *(v10 + 40) = sub_1C755112C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAB0;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  strcpy((v17 + 32), "detectedFaces");
  *(v17 + 46) = -4864;
  *(v10 + 48) = sub_1C755112C();
  *(v10 + 56) = [objc_opt_self() predicateForSourcingAssetsFromHighlightExtendedCuration];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C75604F0;
  *(v18 + 56) = v12;
  *(v18 + 64) = v13;
  strcpy((v18 + 32), "curationScore");
  *(v18 + 46) = -4864;
  v19 = *MEMORY[0x1E69BECC0];
  v20 = MEMORY[0x1E69E6438];
  *(v18 + 96) = MEMORY[0x1E69E63B0];
  *(v18 + 104) = v20;
  *(v18 + 72) = v19;
  *(v10 + 64) = sub_1C755112C();
  v21 = sub_1C6F6E5C4(v10);
  [v7 setInternalPredicate_];

  if ((v36 & 0x100000000) != 0)
  {
    v22 = [objc_opt_self() internalSortDescriptorsWithCreationDateAscending_];
    if (v22)
    {
      sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
      v23 = sub_1C7550B5C();

      sub_1C71BABA4(v23, v31, v24, v25, v26, v27, v28, v29, v30, v32, 2, 4, v36, v37, 1, 2, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);

      v22 = sub_1C7550B3C();
    }

    [v7 setInternalSortDescriptors_];
  }

  v33 = [objc_opt_self() fetchAssetsWithOptions_];

  sub_1C6F85170();

  return v33;
}

_BYTE *storeEnumTagSinglePayload for GenerativeMediaCuration(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C71910A4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      *a1 = v2;
      goto LABEL_7;
    case 2uLL:
      *a1 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
LABEL_7:

      break;
    case 3uLL:
    case 4uLL:
      result = sub_1C71910A4(a1);
      break;
    default:
      v3 = sub_1C7195E04();
      OUTLINED_FUNCTION_166_0(&type metadata for StoryState.Error, v3);
      *v4 = v2;
      *(v4 + 8) = 1;
      swift_willThrow();

      break;
  }

  return result;
}

uint64_t StoryState.TokenState.description.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v11 = *v8;
  switch(*v8 >> 61)
  {
    case 1uLL:
      v86 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v108 = 0x287972657571;
      v109 = 0xE600000000000000;
      v15 = MEMORY[0x1E69E7CC0];
      if (*(v86 + 16))
      {
        v102 = MEMORY[0x1E69E7CC0];
        v87 = OUTLINED_FUNCTION_105();
        sub_1C6F7ED9C(v87, v88, v89, v90, v91, v92, v93);
        v15 = v102;
        do
        {
          OUTLINED_FUNCTION_36_16();
          if (v9 >= v10 >> 1)
          {
            OUTLINED_FUNCTION_116_0();
            sub_1C6F7ED9C(v94, v95, v96, v97, v98, v99, v100);
            v15 = v102;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (!v23);
      }

      goto LABEL_39;
    case 2uLL:
      OUTLINED_FUNCTION_21_27(v11, v102, v103, v104, v105, v106, v107);
      OUTLINED_FUNCTION_45_15();
      v110 = v51;
      v111 = 0xE900000000000028;
      v52 = ExtendedTokenCollection.allTokens.getter();
      v59 = v52;
      if (!*(v52 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_34(v52, v53, v54, v55, v56, v57, v58);
      v41 = v107;
      do
      {
        sub_1C6FB5E28(v59 + 32, &v102);
        __swift_project_boxed_opaque_existential_1(&v102, v105);
        v60 = OUTLINED_FUNCTION_7_41();
        v61(v60);
        __swift_destroy_boxed_opaque_existential_1(&v102);
        OUTLINED_FUNCTION_15_37();
        if (v45)
        {
          v63 = OUTLINED_FUNCTION_14_35(v62);
          sub_1C6F7ED9C(v63, v10, 1, v64, v65, v66, v67);
          v41 = v107;
        }

        OUTLINED_FUNCTION_10_40();
      }

      while (!v23);
      goto LABEL_30;
    case 3uLL:
      OUTLINED_FUNCTION_21_27(v11, v102, v103, v104, v105, v106, v107);
      v110 = 0x286C616E6966;
      v111 = 0xE600000000000000;
      v68 = ExtendedTokenCollection.allTokens.getter();
      v75 = v68;
      if (!*(v68 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_34(v68, v69, v70, v71, v72, v73, v74);
      v41 = v107;
      do
      {
        sub_1C6FB5E28(v75 + 32, &v102);
        __swift_project_boxed_opaque_existential_1(&v102, v105);
        v76 = OUTLINED_FUNCTION_7_41();
        v77(v76);
        __swift_destroy_boxed_opaque_existential_1(&v102);
        OUTLINED_FUNCTION_15_37();
        if (v45)
        {
          v79 = OUTLINED_FUNCTION_14_35(v78);
          sub_1C6F7ED9C(v79, v10, 1, v80, v81, v82, v83);
          v41 = v107;
        }

        OUTLINED_FUNCTION_10_40();
      }

      while (!v23);
      goto LABEL_30;
    case 4uLL:
      OUTLINED_FUNCTION_21_27(v11, v102, v103, v104, v105, v106, v107);
      OUTLINED_FUNCTION_22_32();
      v110 = v31;
      v111 = v32;
      v33 = ExtendedTokenCollection.allTokens.getter();
      v40 = v33;
      if (*(v33 + 16))
      {
        OUTLINED_FUNCTION_11_34(v33, v34, v35, v36, v37, v38, v39);
        v41 = v107;
        do
        {
          sub_1C6FB5E28(v40 + 32, &v102);
          __swift_project_boxed_opaque_existential_1(&v102, v105);
          v42 = OUTLINED_FUNCTION_7_41();
          v43(v42);
          __swift_destroy_boxed_opaque_existential_1(&v102);
          OUTLINED_FUNCTION_15_37();
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_14_35(v44);
            sub_1C6F7ED9C(v46, v10, 1, v47, v48, v49, v50);
            v41 = v107;
          }

          OUTLINED_FUNCTION_10_40();
        }

        while (!v23);
LABEL_30:
      }

      else
      {
LABEL_31:

        v41 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1CCA5D090](v41, MEMORY[0x1E69E6158]);

      v84 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v84);

      OUTLINED_FUNCTION_40_19();
      return v110;
    default:
      v12 = *(v11 + 16);
      if (!v12)
      {
        return 0x6E6F4E2872657375;
      }

      OUTLINED_FUNCTION_43_17();
      v108 = v13;
      v109 = v14;
      v15 = MEMORY[0x1E69E7CC0];
      if (*(v12 + 16))
      {
        v102 = MEMORY[0x1E69E7CC0];
        v16 = OUTLINED_FUNCTION_105();
        sub_1C6F7ED9C(v16, v17, v18, v19, v20, v21, v22);
        v15 = v102;
        do
        {
          OUTLINED_FUNCTION_36_16();
          if (v9 >= v10 >> 1)
          {
            OUTLINED_FUNCTION_116_0();
            sub_1C6F7ED9C(v24, v25, v26, v27, v28, v29, v30);
            v15 = v102;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (!v23);
      }

LABEL_39:
      MEMORY[0x1CCA5D090](v15, MEMORY[0x1E69E6158]);

      v101 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v101);

      OUTLINED_FUNCTION_40_19();
      return v108;
  }
}

__n128 StoryState.RetrievedAssetInfo.init(retrievedAssets:extendedRetrievedAssets:consolidatedPersonAssetUUIDs:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v6;
  *(a4 + 64) = a3;
  return result;
}

uint64_t static StoryState.RetrievedAssetInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[8];
  v4 = a2[4];
  v5 = a2[8];
  sub_1C7036A90(*a1, *a2);
  if (v6 & 1) != 0 && (sub_1C7043F5C())
  {
    sub_1C7036A90(v2, v4);
    if (v7 & 1) != 0 && (sub_1C7043F5C())
    {
      if (v3)
      {
        if (v5)
        {
          sub_1C75504FC();
          sub_1C7036A90(v3, v5);
          v9 = v8;

          if (v9)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C719164C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  switch(v2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      result = sub_1C719164C(a1);
      break;
    case 3uLL:
      v4 = sub_1C7195E04();
      OUTLINED_FUNCTION_166_0(&type metadata for StoryState.Error, v4);
      *v5 = v2;
      *(v5 + 8) = 2;
      result = swift_willThrow();
      break;
    default:
      *a1 = v2;

      break;
  }

  return result;
}

uint64_t StoryState.AssetState.description.getter()
{
  result = 1701736302;
  switch(*v0 >> 62)
  {
    case 1:
      result = 0x6465646E65747865;
      break;
    case 2:
      result = 0x6C657479726F7473;
      break;
    case 3:
      return result;
    default:
      result = 0x6576656972746572;
      break;
  }

  return result;
}

void StoryState.AssetState.description(assetPertinenceFilter:storyAssetManager:eventRecorder:)()
{
  v2 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      v26 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v52 = *(v26 + 32);
      v57 = *(v26 + 16);
      sub_1C755180C();

      OUTLINED_FUNCTION_45_15();
      v63 = v27;
      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_3_58();
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v28, v29, v30, v31, v32, v33, v34, v35, v44, v47, v52, *(&v52 + 1), v57, *(&v57 + 1), v57, *(&v57 + 1), v52, *(&v52 + 1), v63, 0xE900000000000028);
      if (!v1)
      {

        v37 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v37);

        v38 = 0x2973746573736120;
        v39 = 0xE800000000000000;
        goto LABEL_13;
      }

      break;
    case 2uLL:
      OUTLINED_FUNCTION_13_38();
      sub_1C755180C();

      OUTLINED_FUNCTION_17_37();
      v36 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v36);

      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD000000000000019);
      break;
    case 3uLL:
      return;
    default:
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      v48 = *(v2 + 48);
      v65 = *(v2 + 56);
      v50 = *(v2 + 64);
      v55 = *(v2 + 72);
      v45 = *(v2 + 80);
      OUTLINED_FUNCTION_13_38();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0x6576656972746572, 0xEA00000000002864);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_3_58();
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v7, v8, v9, v10, v11, v12, v13, v14, v45, v48, v50, v53, v55, v58, v3, v4, v5, v6, v60, v61);

      if (v1 || (v15 = v46, , v16 = sub_1C7551D8C(), MEMORY[0x1CCA5CD70](v16), , MEMORY[0x1CCA5CD70](0x2C73746573736120, 0xE900000000000020), v17 = v56, sub_1C75504FC(), sub_1C75504FC(), sub_1C75504FC(), , OUTLINED_FUNCTION_41_17(), OUTLINED_FUNCTION_3_58(), StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v18, v19, v20, v21, v22, v23, v24, v25, v46, v49, v51, v54, v56, v59, v49, v65, v51, v56, v62, v64), , , , , v17))
      {
      }

      else
      {

        v40 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v40);

        MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A2240);
        if (v15)
        {
          sub_1C7025C9C();
          v41 = sub_1C75515BC();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        MEMORY[0x1CCA5CD70](v41, v43);

        v38 = 0xD00000000000001DLL;
        v39 = 0x80000001C75A2260;
LABEL_13:
        MEMORY[0x1CCA5CD70](v38, v39);
      }

      break;
  }
}

uint64_t StoryState.TraitState.description.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    v59 = *(v3 + 16);
    OUTLINED_FUNCTION_13_38();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v86 = 0xD000000000000012;
    v87 = v60;
    v61 = MEMORY[0x1E69E7CC0];
    if (*(v59 + 16))
    {
      v85 = MEMORY[0x1E69E7CC0];
      v62 = OUTLINED_FUNCTION_105();
      sub_1C6F7ED9C(v62, v63, v64, v65, v66, v67, v68);
      v61 = v85;
      v69 = v59 + 32;
      do
      {
        sub_1C6FB5E28(v69, &v82);
        __swift_project_boxed_opaque_existential_1(&v82, v83);
        v70 = OUTLINED_FUNCTION_35_13();
        v71(v70);
        __swift_destroy_boxed_opaque_existential_1(&v82);
        OUTLINED_FUNCTION_46_16();
        if (v22)
        {
          v73 = OUTLINED_FUNCTION_15(v72);
          sub_1C6F7ED9C(v73, v2, 1, v74, v75, v76, v77);
          v61 = v85;
        }

        OUTLINED_FUNCTION_34_16();
      }

      while (!v23);
    }

    MEMORY[0x1CCA5D090](v61, MEMORY[0x1E69E6158]);

    OUTLINED_FUNCTION_38_16();

    OUTLINED_FUNCTION_40_19();
    return v86;
  }

  if (v4 != 1)
  {
    return OUTLINED_FUNCTION_32_16();
  }

  v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_13_38();
  sub_1C755180C();

  OUTLINED_FUNCTION_22_32();
  v86 = v8;
  v87 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16))
  {
    v85 = MEMORY[0x1E69E7CC0];
    v11 = OUTLINED_FUNCTION_105();
    sub_1C6F7ED9C(v11, v12, v13, v14, v15, v16, v17);
    v10 = v85;
    v18 = v6 + 32;
    do
    {
      sub_1C6FB5E28(v18, &v82);
      __swift_project_boxed_opaque_existential_1(&v82, v83);
      v19 = OUTLINED_FUNCTION_35_13();
      v20(v19);
      __swift_destroy_boxed_opaque_existential_1(&v82);
      OUTLINED_FUNCTION_46_16();
      if (v22)
      {
        v24 = OUTLINED_FUNCTION_15(v21);
        sub_1C6F7ED9C(v24, v2, 1, v25, v26, v27, v28);
        v10 = v85;
      }

      OUTLINED_FUNCTION_34_16();
    }

    while (!v23);
  }

  MEMORY[0x1CCA5D090](v10, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_38_16();

  MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A2280);
  v29 = *(v7 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (!v29)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    MEMORY[0x1CCA5D090](v33, v78);

    OUTLINED_FUNCTION_38_16();

    return v86;
  }

  v85 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D5B0(0, v29, 0);
  v32 = 0;
  v33 = v85;
  v80 = v7;
  v81 = v7 + 32;
  v79 = v29;
  while (v32 < *(v7 + 16))
  {
    v34 = *(v81 + 8 * v32);
    v35 = *(v34 + 16);
    if (v35)
    {
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v35, 0, v36, v37, v38, v39);
      v40 = v30;
      v41 = v34 + 32;
      do
      {
        sub_1C6FB5E28(v41, &v82);
        v42 = v83;
        v43 = v84;
        __swift_project_boxed_opaque_existential_1(&v82, v83);
        v44 = (*(v43 + 32))(v42, v43);
        v46 = v45;
        __swift_destroy_boxed_opaque_existential_1(&v82);
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          v50 = OUTLINED_FUNCTION_14_35(v47);
          sub_1C6F7ED9C(v50, v48 + 1, 1, v51, v52, v53, v54);
        }

        *(v40 + 16) = v48 + 1;
        v49 = v40 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v41 += 40;
        --v35;
      }

      while (v35);

      v29 = v79;
      v7 = v80;
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v40 = v30;
    }

    v85 = v33;
    v55 = *(v33 + 16);
    if (v55 >= *(v33 + 24) >> 1)
    {
      OUTLINED_FUNCTION_116_0();
      result = sub_1C716D5B0(v56, v57, v58);
      v33 = v85;
    }

    ++v32;
    *(v33 + 16) = v55 + 1;
    *(v33 + 8 * v55 + 32) = v40;
    if (v32 == v29)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7191FEC@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  switch(*v1 >> 62)
  {
    case 1uLL:
      *a1 = v2;
      goto LABEL_7;
    case 2uLL:
      *a1 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
LABEL_7:

      break;
    case 3uLL:
      result = sub_1C7191FEC(a1);
      break;
    default:
      v3 = sub_1C7195E04();
      OUTLINED_FUNCTION_166_0(&type metadata for StoryState.Error, v3);
      *v4 = v2;
      *(v4 + 8) = 0;
      swift_willThrow();

      break;
  }

  return result;
}

uint64_t StoryState.PromptState.description.getter()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      v16 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 40);
      v20 = *(v16 + 41);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0x756769626D616E75, 0xEC0000002873756FLL);
      v21 = [v17 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A22E0);
      v25 = v18;
      LOBYTE(v26) = v19;
      BYTE1(v26) = v20;
      sub_1C75519EC();
      goto LABEL_9;
    case 2uLL:
      v8 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      sub_1C755180C();

      __dst[0] = 0x657A6974696E6173;
      __dst[1] = 0xEA00000000002864;
      v11 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v11);
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_48_0();
      MEMORY[0x1CCA5CD70](v9, v10);
      goto LABEL_9;
    case 3uLL:
      memcpy(__dst, ((v1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x41uLL);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1C755180C();

      OUTLINED_FUNCTION_17_37();
      v25 = v12;
      v26 = v13;
      v14 = LLMStoryRequest.description.getter();
      MEMORY[0x1CCA5CD70](v14);

      OUTLINED_FUNCTION_40_19();
      return v25;
    default:
      v2 = *(v1 + 24);
      OUTLINED_FUNCTION_43_17();
      __dst[0] = v3;
      __dst[1] = v4;
      v6 = [v5 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      if (v2)
      {
        v7 = v2;
      }

      else
      {
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        v7 = sub_1C7073450();
      }

      v22 = v2;
      v23 = [v7 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

LABEL_9:
      OUTLINED_FUNCTION_40_19();
      return __dst[0];
  }
}

uint64_t StoryState.AttributesState.description.getter(uint64_t a1)
{
  if (!*v1)
  {
    return OUTLINED_FUNCTION_32_16();
  }

  v2 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1CCA5CD70](v2);
  sub_1C75519EC();
  return 0;
}

void *sub_1C7192450@<X0>(void *a1@<X8>)
{
  result = sub_1C719248C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C719248C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 112);
}

double sub_1C71924D4(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 112) = v2;

  return result;
}

void *sub_1C719251C@<X0>(void *a1@<X8>)
{
  result = sub_1C7192598(&v3);
  *a1 = v3;
  return result;
}

double sub_1C7192558(uint64_t *a1)
{
  v2 = *a1;

  return sub_1C71925E0(&v2);
}

uint64_t sub_1C7192598@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 120);
}

double sub_1C71925E0(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 120) = v2;

  return result;
}

void *sub_1C7192628@<X0>(void *a1@<X8>)
{
  result = sub_1C7192664(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192664@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

double sub_1C71926AC(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 128) = v2;

  return result;
}

void *sub_1C71926F4@<X0>(void *a1@<X8>)
{
  result = sub_1C7192778(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t sub_1C7192778@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 136);
}

double sub_1C71927C0(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 136) = v2;

  return result;
}

void *sub_1C7192808@<X0>(void *a1@<X8>)
{
  result = sub_1C7192880(&v3);
  *a1 = v3;
  return result;
}

double sub_1C7192844(uint64_t *a1)
{
  v2 = *a1;

  return sub_1C71928C4(&v2);
}

uint64_t sub_1C7192880@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 144);
}

double sub_1C71928C4(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 144) = v2;

  return result;
}

void sub_1C719297C(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 152);
}

uint64_t sub_1C7192A38()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C7192A6C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t StoryState.PromptOrigin.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v54 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0, &unk_1C7571A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for StoryState.PromptOrigin(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7195258(v0, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218820, &unk_1C7576460);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 2, v22);
  if (!EnumTagSinglePayload)
  {
    v25 = *v21;
    sub_1C71952BC(&v21[*(v22 + 48)], v18);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A2300);
    sub_1C73E6820(v25);
    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A2320);
    sub_1C70555F8(v18, v15, &qword_1EC2183C0, &unk_1C7571A80);
    Context = type metadata accessor for PromptSuggestion.FetchContext(0);
    OUTLINED_FUNCTION_23_23(v15);
    if (v27)
    {
      sub_1C6FD7FC8(v15, &qword_1EC2183C0, &unk_1C7571A80);
      v28 = 0;
    }

    else
    {
      v28 = v15[Context[6]];
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v15, v29);
    }

    LOBYTE(v55) = v28;
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A2340);
    sub_1C70555F8(v18, v12, &qword_1EC2183C0, &unk_1C7571A80);
    OUTLINED_FUNCTION_23_23(v12);
    if (v27)
    {
      sub_1C6FD7FC8(v12, &qword_1EC2183C0, &unk_1C7571A80);
      v30 = 0;
    }

    else
    {
      v30 = *&v12[Context[5]];
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v12, v31);
    }

    v55 = v30;
    v32 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v32);

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
    sub_1C70555F8(v18, v9, &qword_1EC2183C0, &unk_1C7571A80);
    OUTLINED_FUNCTION_23_23(v9);
    if (v27)
    {
      v33 = &qword_1EC2183C0;
      v34 = &unk_1C7571A80;
      v35 = v9;
    }

    else
    {
      sub_1C70555F8(v9, v3, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v9, v36);
      v37 = sub_1C754DF6C();
      v38 = __swift_getEnumTagSinglePayload(v3, 1, v37);
      if (v38 != 1)
      {
        v40 = sub_1C754DE5C();
        v39 = v41;
        (*(*(v37 - 8) + 8))(v3, v37);
LABEL_18:
        MEMORY[0x1CCA5CD70](v40, v39);

        OUTLINED_FUNCTION_10_2();
        MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
        v42 = OUTLINED_FUNCTION_57_0();
        sub_1C70555F8(v42, v43, v44, v45);
        OUTLINED_FUNCTION_23_23(v6);
        if (v27)
        {
          sub_1C6FD7FC8(v6, &qword_1EC2183C0, &unk_1C7571A80);
        }

        else
        {
          v46 = &v6[Context[7]];
          v47 = *v46;
          v48 = v46[8];
          OUTLINED_FUNCTION_0_86();
          sub_1C7195390(v6, v49);
          if ((v48 & 1) == 0)
          {
            v55 = v47;
            sub_1C7025C9C();
            v51 = sub_1C75515BC();
            v50 = v52;
            goto LABEL_24;
          }
        }

        v50 = 0xE100000000000000;
        v51 = 45;
LABEL_24:
        MEMORY[0x1CCA5CD70](v51, v50);

        v24 = v56;
        sub_1C6FD7FC8(v18, &qword_1EC2183C0, &unk_1C7571A80);
        return v24;
      }

      v33 = &unk_1EC219230;
      v34 = &unk_1C7563720;
      v35 = v3;
    }

    sub_1C6FD7FC8(v35, v33, v34);
    v39 = 0xE100000000000000;
    v40 = 45;
    goto LABEL_18;
  }

  if (EnumTagSinglePayload == 1)
  {
    return 1919251317;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C71930BC()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C75A23C0);
  if (*(v0 + 168))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  v2 = 0xE400000000000000;
  if (*(v0 + 168))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v1, v3);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A23F0);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v4 = StoryState.PromptState.description.getter();
  MEMORY[0x1CCA5CD70](v4);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v13 = StoryState.TokenState.description.getter(v5, v6, v7, v8, v9, v10, v11, v12);
  MEMORY[0x1CCA5CD70](v13);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v14 = *(v0 + 128);

  sub_1C73E6C1C(v14);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v16 = StoryState.TraitState.description.getter(v15);
  MEMORY[0x1CCA5CD70](v16);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A2470);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  if (*(v0 + 144))
  {

    v17 = OUTLINED_FUNCTION_1_66();
    MEMORY[0x1CCA5CD70](v17);
    sub_1C75519EC();
    v18 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_32_16();
  }

  MEMORY[0x1CCA5CD70](v18, v2);

  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A2490);
  v19 = StoryState.PromptOrigin.description.getter();
  MEMORY[0x1CCA5CD70](v19);

  MEMORY[0x1CCA5CD70](10506, 0xE200000000000000);
  return 0;
}

uint64_t StoryState.__allocating_init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_41_17();
  StoryState.init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(v10, v11, v12, a4, a5, a6);
  return v9;
}

uint64_t StoryState.init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_27_1();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v6 + 120) = v13;
  *(v6 + 128) = xmmword_1C75732D0;
  *(v6 + 144) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v6 + 112) = v14;
  OUTLINED_FUNCTION_27_1();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v6 + 120) = v15;
  v16 = a1;
  v17 = a2;

  *(v6 + 152) = 0;

  *(v6 + 160) = &unk_1F46A82E8;
  *(v6 + 168) = a4;
  sub_1C719532C(a5, v6 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange) = a6;
  return v6;
}

uint64_t StoryState.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StoryState.init(from:)(a1);
  return v2;
}

uint64_t StoryState.init(from:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_27_1();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 120) = v3;
  *(v1 + 128) = xmmword_1C75732D0;
  *(v1 + 144) = 0;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 112) = *(a1 + 112);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v4 = *(a1 + 120);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 120) = v4;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v5 = *(a1 + 128);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 128) = v5;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v6 = *(a1 + 136);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 136) = v6;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v7 = *(a1 + 144);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 144) = v7;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 152) = *(a1 + 152);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = *(a1 + 168);
  sub_1C7195258(a1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin, v1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin);
  v8 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange);
  sub_1C75504FC();
  sub_1C75504FC();

  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange) = v8;
  return v1;
}

void sub_1C71937C4()
{
  OUTLINED_FUNCTION_28_16();
  if (v2)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v4 = OUTLINED_FUNCTION_39_19(v3);
    OUTLINED_FUNCTION_42_19(v4, xmmword_1C755BAB0);
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&__src[0] = 0xD000000000000019;
    *(&__src[0] + 1) = v5;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    v14 = StoryState.TokenState.description.getter(v6, v7, v8, v9, v10, v11, v12, v13);
    MEMORY[0x1CCA5CD70](v14);

    OUTLINED_FUNCTION_104();
    *&__dst[0] = v1;
    v23 = StoryState.TokenState.description.getter(v15, v16, v17, v18, v19, v20, v21, v22);
    MEMORY[0x1CCA5CD70](v23);

    OUTLINED_FUNCTION_5_45(0xD000000000000019);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v24 = *(v0 + 120);
  switch(v1 >> 61)
  {
    case 1uLL:
      switch(v24 >> 61)
      {
        case 1uLL:

          sub_1C7003F10();
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_24;
          }

          break;
        case 2uLL:
        case 4uLL:
          goto LABEL_16;
        case 3uLL:
          goto LABEL_18;
        default:
          goto LABEL_17;
      }

      goto LABEL_31;
    case 2uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v24 >> 61)
      {
        case 1uLL:
          goto LABEL_17;
        case 2uLL:
          goto LABEL_13;
        case 3uLL:
          goto LABEL_18;
        case 4uLL:
          goto LABEL_16;
        default:
          goto LABEL_33;
      }

    case 3uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v24 >> 61)
      {
        case 2uLL:
          goto LABEL_17;
        case 3uLL:
          goto LABEL_13;
        case 4uLL:
          goto LABEL_16;
        default:
          goto LABEL_33;
      }

    case 4uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v24 >> 61)
      {
        case 3uLL:
LABEL_17:

          v30 = 0;
          v31 = 0;
          goto LABEL_25;
        case 4uLL:
LABEL_13:
          memcpy(__dst, ((v24 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
          v44 = __dst[2];
          v45 = __dst[3];
          v42 = __dst[0];
          v43 = __dst[1];
          v40 = __src[3];
          v41 = __src[4];
          v37 = __src[1];
          v38 = __src[2];
          v39 = __dst[4];
          v36 = __src[0];
          sub_1C7027A20(__src, v47);
          sub_1C7027A20(__dst, v47);
          __dst[0] = v36;
          __dst[1] = v37;
          __dst[2] = v38;
          __dst[3] = v40;
          __dst[4] = v41;
          __src[0] = v42;
          __src[1] = v43;
          __src[2] = v44;
          __src[3] = v45;
          __src[4] = v39;
          memcpy(v47, __dst, sizeof(v47));
          memcpy(v46, __src, sizeof(v46));

          v28 = static ExtendedTokenCollection.== infix(_:_:)(v47, v46);
          sub_1C7027A58(__src);
          sub_1C7027A58(__dst);
          if (v28)
          {
            goto LABEL_31;
          }

          goto LABEL_24;
        default:
LABEL_33:
          OUTLINED_FUNCTION_16_18();
          OUTLINED_FUNCTION_6_49();
          __break(1u);
          break;
      }

      return;
    default:
      switch(v24 >> 61)
      {
        case 1uLL:
          goto LABEL_23;
        case 2uLL:
        case 4uLL:
LABEL_16:
          v29 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          goto LABEL_19;
        case 3uLL:
LABEL_18:
          v29 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
LABEL_19:

          v30 = 1;
          v31 = 1;
          goto LABEL_26;
        default:
          v25 = *(v24 + 16);
          if (!*(v1 + 16))
          {
            if (!v25)
            {
              return;
            }

            goto LABEL_23;
          }

          if (!v25)
          {
LABEL_23:

            goto LABEL_24;
          }

          sub_1C75504FC();
          sub_1C75504FC();

          sub_1C7003F10();
          v27 = v26;

          if (v27)
          {
            goto LABEL_31;
          }

LABEL_24:
          v30 = 0;
          v31 = 1;
LABEL_25:
          v29 = v1;
LABEL_26:
          v34 = *(v0 + 120);
          *(v0 + 120) = v29;

          if (v31)
          {
            *&__src[0] = v34;
            OUTLINED_FUNCTION_3_58();
            sub_1C7193C40(v35);
          }

          else if (v30)
          {
            *&__src[0] = v1;
            OUTLINED_FUNCTION_3_58();
            sub_1C71937C4();
          }

LABEL_31:

          return;
      }
  }
}