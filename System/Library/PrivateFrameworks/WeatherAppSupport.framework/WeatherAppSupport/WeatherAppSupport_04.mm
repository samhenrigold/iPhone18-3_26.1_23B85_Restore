uint64_t sub_220D34C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D34CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220D34D38(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(0);
  if ((MEMORY[0x223D96350](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
  return sub_220DC0AB0() & 1;
}

uint64_t sub_220D34DC8(uint64_t a1)
{
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(0);
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_220DC0560();
  return sub_220DC0AC0();
}

uint64_t sub_220D34EC0()
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(0);
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_220DC0560();
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t sub_220D34FD0()
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_220DC0560();
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t PressureChartHeaderStringBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A98, &qword_220DC4470);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t PressureChartHeaderStringBuilder.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A98, &qword_220DC4470);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

double PressureChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v194 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AA0, &qword_220DC4478);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v182 = v6 - v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v187 = &v174 - v9;
  v10 = OUTLINED_FUNCTION_6_1();
  v186 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(v10);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v181 = v12 - v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v16 = &v174 - v15;
  v17 = sub_220DBE260();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1_21();
  v193 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v19 - 8);
  v192 = &v174 - v20;
  OUTLINED_FUNCTION_6_1();
  sub_220DBEC50();
  OUTLINED_FUNCTION_0();
  v184 = v22;
  v185 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_21();
  v183 = v23;
  OUTLINED_FUNCTION_6_1();
  v201 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v203 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_21();
  v198 = v26;
  OUTLINED_FUNCTION_6_1();
  v196 = sub_220DC09B0();
  OUTLINED_FUNCTION_0();
  v204 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v174 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v202 = v39 - v40;
  OUTLINED_FUNCTION_23();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v174 - v43;
  MEMORY[0x28223BE20](v42);
  v197 = &v174 - v45;
  OUTLINED_FUNCTION_6_1();
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v189 = v47;
  v190 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_21();
  v195 = v48;
  v49 = OUTLINED_FUNCTION_6_1();
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v49);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v50);
  v52 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 8);
  sub_220D36A4C(a1, v52, type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = v35;
  if (EnumCaseMultiPayload)
  {
    v197 = v31;
    v191 = v34;
    v199 = v37;
    sub_220DBE830();
    OUTLINED_FUNCTION_6();
    (*(v55 + 8))(v52);
    v56 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    v57 = *(v56 + 28);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    v59 = a1;
    (*(v58 + 16))(v16, a1 + v57);
    v60 = *(v56 + 32);
    v61 = v16;
    v62 = v35;
    v63 = v186;
    v64 = *(v186 + 20);
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v65 + 16))(v61 + v64, v59 + v60);
    *(v61 + *(v63 + 24)) = v53;
    v66 = v53;

    v67 = v187;
    sub_220DBF290();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v62);
    v180 = v61;
    if (EnumTagSinglePayload == 1)
    {
      sub_220CDA548(v67, &qword_27CF95AA0, &qword_220DC4478);
      v69 = (v59 + v57);
      v70 = v202;
      sub_220D36418(v69, v66, v202);
      sub_220D36A4C(v61, v181, type metadata accessor for PressureChartHeaderStringBuilder.CacheKey);
      v71 = v182;
      (*(v199 + 16))(v182, v70, v62);
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v62);

      sub_220DBF2A0();
    }

    else
    {
      (*(v199 + 32))(v202, v67, v62);
    }

    v126 = v197;
    v127 = v191;
    sub_220DC0290();
    sub_220DC09A0();
    v128 = v204 + 8;
    v129 = *(v204 + 8);
    v130 = v196;
    v129(v127, v196);
    v131 = v203;
    v132 = *(v203 + 104);
    v133 = v198;
    LODWORD(v197) = *MEMORY[0x277D7B408];
    v134 = v201;
    v195 = v203 + 104;
    v190 = v132;
    v132(v198);
    v189 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_4_13();
    v137 = sub_220D37234(v135, v136, MEMORY[0x277D7B4E0]);
    v138 = v200;
    v187 = v137;
    v186 = sub_220DBE0B0();
    v140 = v139;

    v141 = *(v131 + 8);
    v203 = v131 + 8;
    v184 = v141;
    v141(v133, v134);
    v142 = v130;
    v204 = v128;
    v188 = v129;
    v129(v126, v130);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    v183 = qword_280FA6608;
    OUTLINED_FUNCTION_2_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_220DC17A0;
    *(v143 + 56) = MEMORY[0x277D837D0];
    *(v143 + 64) = sub_220CEFDB0();
    *(v143 + 32) = v186;
    *(v143 + 40) = v140;
    v144 = sub_220DC05F0();
    v185 = v145;
    v186 = v144;

    sub_220DC0860();
    v179 = sub_220DBE5E0();
    v146 = v192;
    v147 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
    v151 = v191;
    sub_220DC02A0();

    sub_220CDA548(v146, &qword_27CF95228, &unk_220DC1E60);
    v152 = v198;
    v153 = v201;
    v190(v198, v197, v201);
    sub_220DBF0D0();
    v182 = sub_220DBE0B0();
    v181 = v154;

    v155 = v184;
    v184(v152, v153);
    v156 = v188;
    v188(v151, v142);
    sub_220DC0850();
    v157 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v179);
    sub_220DC02A0();

    sub_220CDA548(v146, &qword_27CF95228, &unk_220DC1E60);
    v190(v152, v197, v153);
    sub_220DBF0D0();
    sub_220DBE0B0();

    v155(v152, v153);
    v156(v151, v142);
    OUTLINED_FUNCTION_2_0();
    v160 = sub_220DBE240();
    v162 = v161;
    sub_220DBE250();
    v163 = v194;
    sub_220DBE220();
    v164 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v165 = v164[5];

    sub_220DBE250();
    sub_220DBE220();

    (*(v199 + 8))(v202, v138);
    sub_220D3706C(v180);
    v166 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v163 + v165, 0, 1, v166);
    v167 = (v163 + v164[6]);
    *v167 = 0;
    v167[1] = 0;
    v168 = (v163 + v164[7]);
    *v168 = v160;
    v168[1] = v162;
    v169 = (v163 + v164[8]);
    *v169 = 0;
    v169[1] = 0;
    v170 = (v163 + v164[11]);
    *v170 = 0;
    v170[1] = 0;
    *(v163 + v164[9]) = 0;
    v171 = (v163 + v164[10]);
    v172 = v185;
    *v171 = v186;
    v171[1] = v172;
    v173 = (v163 + v164[12]);
    result = 0.0;
    v173[2] = 0u;
    v173[3] = 0u;
    *v173 = 0u;
    v173[1] = 0u;
  }

  else
  {
    v180 = &v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48)];
    (*(v189 + 32))(v195, v52, v190);
    sub_220DBEAB0();
    sub_220DBE130();
    v72 = *(v37 + 8);
    v199 = v37 + 8;
    v179 = v72;
    v72(v44, v35);
    sub_220DC0290();
    sub_220DC09A0();
    v73 = v204 + 8;
    v74 = *(v204 + 8);
    v75 = v196;
    v74(v34, v196);
    v76 = v203;
    v77 = *(v203 + 104);
    v78 = v198;
    LODWORD(v188) = *MEMORY[0x277D7B408];
    v79 = v201;
    v186 = v77;
    v187 = (v203 + 104);
    v77(v198);
    v182 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_4_13();
    v181 = sub_220D37234(v80, v81, MEMORY[0x277D7B4E0]);
    v175 = sub_220DBE0B0();
    v174 = v82;

    v83 = *(v76 + 8);
    v203 = v76 + 8;
    v177 = v83;
    v83(v78, v79);
    v204 = v73;
    v178 = v74;
    v74(v31, v75);
    v84 = v183;
    sub_220DBE9C0();
    v202 = sub_220DBEC30();
    v86 = v85;
    (*(v184 + 1))(v84, v185);
    v87 = v34;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_2_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_220DC17C0;
    v89 = MEMORY[0x277D837D0];
    *(v88 + 56) = MEMORY[0x277D837D0];
    v90 = sub_220CEFDB0();
    v91 = v174;
    *(v88 + 32) = v175;
    *(v88 + 40) = v91;
    *(v88 + 96) = v89;
    *(v88 + 104) = v90;
    v92 = v202;
    *(v88 + 64) = v90;
    *(v88 + 72) = v92;
    v176 = v86;
    *(v88 + 80) = v86;

    v93 = sub_220DC05F0();
    v184 = v94;
    v185 = v93;

    sub_220DC0860();
    v95 = sub_220DBE5E0();
    v96 = v192;
    v97 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v95);
    sub_220DC02A0();

    sub_220CDA548(v96, &qword_27CF95228, &unk_220DC1E60);
    v100 = v201;
    (v186)(v78, v188, v201);
    sub_220DBF0D0();
    v101 = v196;
    v183 = sub_220DBE0B0();
    v175 = v102;

    v103 = v177;
    v177(v78, v100);
    v104 = v34;
    v105 = v78;
    v106 = v178;
    v178(v104, v101);
    sub_220DC0850();
    v107 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v95);
    sub_220DC02A0();

    sub_220CDA548(v96, &qword_27CF95228, &unk_220DC1E60);
    (v186)(v105, v188, v100);
    sub_220DBF0D0();
    v110 = v200;
    v111 = v197;
    v192 = sub_220DBE0B0();

    v103(v105, v100);
    v106(v87, v101);
    sub_220DBE250();
    v112 = v194;
    sub_220DBE220();
    v113 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v114 = v113[5];

    sub_220DBE250();
    sub_220DBE220();

    v179(v111, v110);
    (*(v189 + 8))(v195, v190);
    v115 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v112 + v114, 0, 1, v115);
    v116 = (v112 + v113[6]);
    *v116 = 0;
    v116[1] = 0;
    v117 = (v112 + v113[7]);
    v118 = v176;
    *v117 = v202;
    v117[1] = v118;
    v119 = (v112 + v113[8]);
    *v119 = 0;
    v119[1] = 0;
    v120 = (v112 + v113[11]);
    *v120 = 0;
    v120[1] = 0;
    *(v112 + v113[9]) = 0;
    v121 = (v112 + v113[10]);
    v122 = v184;
    *v121 = v185;
    v121[1] = v122;
    v123 = (v112 + v113[12]);
    sub_220DBE830();
    *v123 = 0u;
    v123[1] = 0u;
    v123[2] = 0u;
    v123[3] = 0u;
    OUTLINED_FUNCTION_6();
    (*(v124 + 8))(v180);
  }

  return result;
}

uint64_t type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(uint64_t a1)
{
  result = qword_27CF95AA8;
  if (!qword_27CF95AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D36418@<X0>(uint64_t (*a1)(char *, unint64_t, uint64_t)@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v55 = a1;
  v51 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v53 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = v46 - v6;
  v58 = sub_220DBE960();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = v46 - v9;
  v11 = sub_220DBE6E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220DBE560();
  v50 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v46 - v19;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v12 + 8))(v14, v11);
  (*(v8 + 16))(v10, v63, v54);
  v65 = v20;
  v66 = v18;
  v21 = sub_220CE5008(sub_220D3727C, v64);
  v22 = *(v21 + 16);
  if (v22)
  {
    v47 = v20;
    v48 = v18;
    v49 = v15;
    v67 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v22, 0);
    v23 = v67;
    v55 = *(v62 + 16);
    v24 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v46[1] = v21;
    v25 = v21 + v24;
    v26 = *(v62 + 72);
    ++v53;
    v54 = v26;
    v52 = (v62 + 8);
    v46[2] = v22;
    v62 += 16;
    v27 = v57;
    v28 = v53;
    do
    {
      v63 = v23;
      v29 = v56;
      v30 = v58;
      v55(v56, v25, v58);
      v31 = v60;
      sub_220DBE940();
      v32 = v59;
      sub_220DBE130();
      v33 = *v28;
      (*v28)(v31, v27);
      sub_220DBE050();
      v35 = v34;
      v33(v32, v27);
      v36 = v29;
      v23 = v63;
      (*v52)(v36, v30);
      v67 = v23;
      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_220CFB704((v37 > 1), v38 + 1, 1);
        v23 = v67;
      }

      *(v23 + 16) = v38 + 1;
      *(v23 + 8 * v38 + 32) = v35;
      v25 += v54;
      --v22;
    }

    while (v22);

    v15 = v49;
    v18 = v48;
    v20 = v47;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v39 = *(v23 + 16);
  if (v39)
  {
    v40 = (v23 + 32);
    v41 = 0.0;
    do
    {
      v42 = *v40++;
      v41 = v41 + v42;
      --v39;
    }

    while (v39);
  }

  sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
  v43 = v61;
  sub_220DBE040();
  v44 = *(v50 + 8);
  v44(v18, v15);
  return (v44)(v20, v15);
}

uint64_t sub_220D36A4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D36AAC@<X0>(void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v74 = a2;
  v75 = a3;
  v63 = a4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v65 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v73 = v6 - v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v72 = v58 - v9;
  OUTLINED_FUNCTION_6_1();
  v71 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  v69 = v13;
  OUTLINED_FUNCTION_6_1();
  v14 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v58 - v28;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v16 + 8))(v19, v14);
  v61 = v29;
  v77 = v29;
  v78 = v26;
  v62 = v26;
  v30 = v75;

  v31 = sub_220D28868(sub_220D3729C, v76, v30);
  v32 = *(v31 + 16);
  if (v32)
  {
    v59 = v22;
    v60 = v20;
    v79 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v32, 0);
    v33 = v79;
    v35 = *(v11 + 16);
    v34 = v11 + 16;
    v67 = v35;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v58[1] = v31;
    v37 = v31 + v36;
    v38 = *(v34 + 56);
    ++v65;
    v66 = v38;
    v64 = (v34 - 8);
    v58[2] = v32;
    v39 = v32;
    v68 = v34;
    do
    {
      v75 = v33;
      v40 = v69;
      v41 = v71;
      v67(v69, v37, v71);
      v42 = v73;
      sub_220DBE940();
      v43 = v72;
      v44 = v70;
      sub_220DBE130();
      v45 = *v65;
      (*v65)(v42, v44);
      sub_220DBE050();
      v47 = v46;
      v45(v43, v44);
      v48 = v40;
      v33 = v75;
      (*v64)(v48, v41);
      v79 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_220CFB704((v49 > 1), v50 + 1, 1);
        v33 = v79;
      }

      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v47;
      v37 += v66;
      --v39;
    }

    while (v39);

    v20 = v60;
    v22 = v59;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v51 = *(v33 + 16);
  if (v51)
  {
    v52 = (v33 + 32);
    v53 = 0.0;
    do
    {
      v54 = *v52++;
      v53 = v53 + v54;
      --v51;
    }

    while (v51);
  }

  sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
  v55 = v74;
  sub_220DBE040();
  v56 = *(v22 + 8);
  v56(v62, v20);
  return (v56)(v61, v20);
}

uint64_t PressureChartHeaderStringBuilder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220D3706C(uint64_t a1)
{
  v2 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D37140(uint64_t a1)
{
  result = sub_220DBE560();
  if (v2 <= 0x3F)
  {
    result = sub_220DBE740();
    if (v3 <= 0x3F)
    {
      result = sub_220CD8184(319, &qword_27CF956B0, 0x277CCAE38);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_220D37234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void WindChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v245 = a4;
  v254 = a3;
  v262 = a2;
  v267 = a1;
  v265 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14(&v231 - v7);
  v264 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v242 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v249 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  v16 = &v231 - v15;
  v257 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v252 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14(&v231 - v20);
  v21 = sub_220DBE260();
  v22 = OUTLINED_FUNCTION_18(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v263 = v24 - v23;
  v269 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v273 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v261 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  v268 = &v231 - v31;
  sub_220DC0920();
  OUTLINED_FUNCTION_0();
  v270 = v32;
  v271 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v35 - v34);
  v260 = sub_220DC0910();
  OUTLINED_FUNCTION_0();
  v272 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v259 = &v231 - v42;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  v50 = &v231 - v49;
  v51 = sub_220DBEF00();
  OUTLINED_FUNCTION_0();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  v256 = sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v255 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1();
  v62 = v61 - v60;
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1();
  v66 = v65 - v64;
  v67 = v262[3];
  v241 = v262[2];
  v262 = v67;
  sub_220D34C0C(v267, v66);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_220DBE830();
    OUTLINED_FUNCTION_6();
    (*(v68 + 8))(v66);
    sub_220CEF48C(v254, v16);
    v69 = v257;
    if (__swift_getEnumTagSinglePayload(v16, 1, v257) != 1)
    {
      v70 = v270;
      v71 = v252;
      v72 = *(v252 + 32);
      v73 = v251;
      v72(v251, v16, v69);
      v16 = v244;
      sub_220CEF48C(v245, v244);
      if (__swift_getEnumTagSinglePayload(v16, 1, v69) != 1)
      {
        v267 = v44;
        v72(v248, v16, v69);
        sub_220DBF2F0();
        sub_220D3A5F8();
        v182 = v241;
        v183 = v246;
        sub_220DBE040();
        sub_220DBF300();
        v184 = v182;
        sub_220DBE040();
        sub_220DBF2F0();
        v185 = v262;
        v186 = v247;
        sub_220DBE040();
        sub_220DC07F0();
        v187 = v271;
        v188 = v258;
        v189 = v70;
        (*(v271 + 104))(v258, *MEMORY[0x277D7B490], v70);
        sub_220DBE5E0();
        v190 = v268;
        OUTLINED_FUNCTION_9_8();
        __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
        v195 = v259;
        sub_220DC0270();

        sub_220CDA548(v190, &qword_27CF95228, &unk_220DC1E60);
        (*(v187 + 8))(v188, v189);
        v196 = v273;
        v197 = v261;
        v198 = v269;
        (*(v273 + 104))(v261, *MEMORY[0x277D7B408], v269);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D3A63C();
        v199 = v260;
        v200 = sub_220DBE0B0();
        v202 = v201;

        (*(v196 + 8))(v197, v198);
        (*(v272 + 8))(v195, v199);
        sub_220D39428(v183, v250, v200, v202, &v274);
        v203 = v276[0];
        v272 = v275;
        v205 = v276[1];
        v204 = v276[2];

        v273 = sub_220D39EEC(v186);
        v207 = v206;
        v209 = v208;
        v211 = v210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
        v212 = swift_allocObject();
        *(v212 + 16) = xmmword_220DC17C0;
        *(v212 + 32) = v205;
        *(v212 + 40) = v204;
        *(v212 + 48) = v209;
        *(v212 + 56) = v211;
        v274 = v212;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
        sub_220D3A694();
        v213 = sub_220DC0570();
        v215 = v214;

        sub_220D39274(&v274);
        v216 = v274;
        sub_220DBE250();
        sub_220DBE220();
        if (v203)
        {

          sub_220DBE250();
          v217 = v243;
          sub_220DBE220();

          v218 = 0;
        }

        else
        {
          v217 = v243;
          v218 = 1;
        }

        v219 = *(v267 + 8);
        v220 = OUTLINED_FUNCTION_14_10(v276);
        v219(v220);
        v221 = OUTLINED_FUNCTION_14_10(v277);
        v219(v221);
        v222 = OUTLINED_FUNCTION_14_10(&v275);
        v219(v222);
        v223 = *(v252 + 8);
        (v223)(v248, v257);
        v224 = OUTLINED_FUNCTION_14_10(&v278);
        v223(v224);
        v225 = v264;
        __swift_storeEnumTagSinglePayload(v217, v218, 1, v264);
        v78 = v265;
        v242[4](v265, v249, v225);
        v79 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
        sub_220CEFF68(v217, v78 + v79[5]);
        OUTLINED_FUNCTION_12_9();
        v227 = (v78 + v226);
        *v227 = v273;
        v227[1] = v207;
        OUTLINED_FUNCTION_6_10();
        *(v78 + v228) = v216;
        v229 = (v78 + v79[10]);
        *v229 = v213;
        v229[1] = v215;
LABEL_17:
        v230 = (v78 + v79[12]);
        v230[2] = 0u;
        v230[3] = 0u;
        *v230 = 0u;
        v230[1] = 0u;
        return;
      }

      (*(v71 + 8))(v73, v69);
    }

    sub_220CDA548(v16, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v74 = sub_220DBF410();
    __swift_project_value_buffer(v74, qword_27CF95F78);
    v75 = sub_220DBF3F0();
    v76 = sub_220DC0980();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_220CD1000, v75, v76, "Failed to create chart header for Wind due to missing extrema values", v77, 2u);
      MEMORY[0x223D98FB0](v77, -1, -1);
    }

    sub_220DBE250();
    v78 = v265;
    sub_220DBE220();
    v79 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v264);
    OUTLINED_FUNCTION_12_9();
    *(v78 + v83) = xmmword_220DC17B0;
    OUTLINED_FUNCTION_6_10();
    *(v78 + v84) = 0;
    v85 = (v78 + v79[10]);
    *v85 = 0;
    v85[1] = 0xE000000000000000;
    goto LABEL_17;
  }

  v86 = v53;
  v267 = v44;
  v240 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
  (*(v255 + 32))(v62, v66, v256);
  v239 = sub_220D38904();
  v238 = v87;
  v237 = v88;
  v236 = v89;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v90 = sub_220DBE240();
  OUTLINED_FUNCTION_17_8(v90, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_220DC1CC0;
  OUTLINED_FUNCTION_15_6();
  *(v93 - 256) = v62;
  sub_220DBEA70();
  v235 = v50;
  sub_220DBEEF0();
  v257 = *(v86 + 8);
  v254 = v86 + 8;
  v253 = v51;
  v257(v57, v51);
  LODWORD(v252) = *MEMORY[0x277D7B490];
  v94 = v271;
  v95 = *(v271 + 104);
  v250 = (v271 + 104);
  v251 = v95;
  v96 = v258;
  v97 = v270;
  v95(v258);
  v249 = sub_220DBE5E0();
  v98 = v268;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  sub_220DC07E0();
  v103 = v259;
  sub_220DC0270();

  sub_220CDA548(v98, &qword_27CF95228, &unk_220DC1E60);
  v104 = *(v94 + 8);
  v271 = v94 + 8;
  v248 = v104;
  v104(v96, v97);
  v105 = v40;
  sub_220DC0900();
  v106 = v272 + 8;
  v262 = *(v272 + 8);
  v234 = v57;
  v107 = v260;
  (v262)(v103);
  v272 = v106;
  LODWORD(v247) = *MEMORY[0x277D7B408];
  v108 = v273;
  v109 = *(v273 + 104);
  v245 = v273 + 104;
  v246 = v109;
  v110 = v261;
  v111 = v269;
  v109(v261);
  v244 = sub_220DBF100();
  sub_220DBF0D0();
  v243 = sub_220D3A63C();
  v112 = v266;
  v113 = v235;
  v233 = sub_220DBE0B0();
  v232 = v114;

  v115 = *(v108 + 8);
  v273 = v108 + 8;
  v242 = v115;
  (v115)(v110, v111);
  (v262)(v105, v107);
  v116 = *(v267 + 8);
  v267 += 8;
  v241 = v116;
  (v116)(v113, v112);
  v117 = MEMORY[0x277D837D0];
  *(v92 + 56) = MEMORY[0x277D837D0];
  v118 = sub_220CEFDB0();
  *(v92 + 64) = v118;
  v119 = v232;
  *(v92 + 32) = v233;
  *(v92 + 40) = v119;
  v120 = v234;
  OUTLINED_FUNCTION_15_6();
  sub_220DBEA70();
  sub_220DBEED0();
  v121 = v253;
  v122 = v257;
  v257(v120, v253);
  v123 = sub_220DBEEC0();
  *(v92 + 96) = v117;
  *(v92 + 104) = v118;
  *(v92 + 72) = v123;
  *(v92 + 80) = v124;
  *(v92 + 136) = v117;
  *(v92 + 144) = v118;
  v125 = v236;
  *(v92 + 112) = v237;
  *(v92 + 120) = v125;
  v237 = sub_220DC05F0();
  v236 = v126;

  sub_220DBEA70();
  sub_220DBEEF0();
  v122(v120, v121);
  sub_220DC0800();
  v127 = v258;
  v128 = v270;
  OUTLINED_FUNCTION_10_11();
  v129();
  v130 = v268;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v249);
  v134 = v259;
  sub_220DC0270();

  sub_220CDA548(v130, &qword_27CF95228, &unk_220DC1E60);
  v248(v127, v128);
  v135 = v261;
  v136 = v269;
  OUTLINED_FUNCTION_11_6();
  v137();
  v138 = sub_220DBF0D0();
  v139 = v266;
  v140 = OUTLINED_FUNCTION_18_7(v134, v135, v138, MEMORY[0x277D7AA40], v266);
  OUTLINED_FUNCTION_17_8(v140, v141);

  (v242)(v135, v136);
  v142 = OUTLINED_FUNCTION_16_8();
  v143(v142);
  v144 = OUTLINED_FUNCTION_8_10();
  v145(v144);
  OUTLINED_FUNCTION_15_6();
  sub_220DBEA70();
  sub_220DBEEF0();
  v146 = OUTLINED_FUNCTION_5_15();
  v147(v146);
  sub_220DC07F0();
  v148 = v270;
  OUTLINED_FUNCTION_10_11();
  v149();
  v150 = v268;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v249);
  sub_220DC0270();

  sub_220CDA548(v150, &qword_27CF95228, &unk_220DC1E60);
  v248(v127, v148);
  v154 = v269;
  OUTLINED_FUNCTION_11_6();
  v155();
  v156 = sub_220DBF0D0();
  v271 = OUTLINED_FUNCTION_18_7(v134, v135, v156, MEMORY[0x277D7AA40], v139);

  (v242)(v135, v154);
  v157 = OUTLINED_FUNCTION_16_8();
  v158(v157);
  v159 = OUTLINED_FUNCTION_8_10();
  v160(v159);
  OUTLINED_FUNCTION_15_6();
  v162 = *(v161 - 256);
  sub_220DBEA70();
  sub_220DBEED0();
  v163 = OUTLINED_FUNCTION_5_15();
  v164(v163);
  v165 = sub_220DBEEB0();
  v167 = v166;
  sub_220D39274(&v274);
  LOBYTE(v135) = v274;
  v272 = 0x8000000220DEAA70;
  v273 = 0x8000000220DEAAB0;
  sub_220DBE250();
  v168 = v265;
  sub_220DBE220();
  v169 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  v170 = v169[5];

  sub_220DBE250();
  sub_220DBE220();

  (*(v255 + 8))(v162, v256);
  __swift_storeEnumTagSinglePayload(v168 + v170, 0, 1, v264);
  v171 = (v168 + v169[6]);
  *v171 = v165;
  v171[1] = v167;
  v172 = (v168 + v169[7]);
  v173 = v238;
  *v172 = v239;
  v172[1] = v173;
  v174 = (v168 + v169[8]);
  *v174 = 0;
  v174[1] = 0;
  v175 = (v168 + v169[11]);
  *v175 = 0;
  v175[1] = 0;
  *(v168 + v169[9]) = v135;
  v176 = (v168 + v169[10]);
  v177 = v236;
  *v176 = v237;
  v176[1] = v177;
  v178 = v168 + v169[12];
  *v178 = xmmword_220DC4550;
  v179 = v272;
  *(v178 + 16) = 0xD000000000000012;
  *(v178 + 24) = v179;
  *(v178 + 32) = 0xD000000000000017;
  *(v178 + 40) = 0x8000000220DEAA90;
  v180 = v273;
  *(v178 + 48) = 0xD000000000000013;
  *(v178 + 56) = v180;
  sub_220DBE830();
  OUTLINED_FUNCTION_6();
  (*(v181 + 8))(v240);
}

uint64_t sub_220D38904()
{
  v83 = sub_220DC0300();
  v0 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v2 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v61 - v4;
  v88 = sub_220DC0920();
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_220DC0910();
  v6 = *(v89 - 8);
  v7 = MEMORY[0x28223BE20](v89);
  v85 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - v12;
  v14 = sub_220DBEF00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v86 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v90 = &v61 - v19;
  sub_220DBEA70();
  sub_220DBEEE0();
  (*(v15 + 8))(v17, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_220CDA548(v13, &qword_27CF95640, &qword_220DC45A0);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v20 = sub_220DBE240();
  }

  else
  {
    v79 = v6;
    v74 = v2;
    v21 = v0;
    (*(v86 + 32))(v90, v13, v18);
    v22 = v18;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v23 = sub_220DBE240();
    v81 = v24;
    v82 = v23;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220DC17A0;
    v77 = *MEMORY[0x277D7B498];
    v26 = v91;
    v27 = *(v91 + 104);
    v75 = v91 + 104;
    v76 = v27;
    v29 = v87;
    v28 = v88;
    v27(v87);
    v70 = sub_220DBE5E0();
    v30 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v70);
    sub_220DC07E0();
    v31 = v10;
    sub_220DC0270();

    sub_220CDA548(v30, &qword_27CF95228, &unk_220DC1E60);
    v32 = *(v26 + 8);
    v91 = v26 + 8;
    v68 = v32;
    v32(v29, v28);
    v73 = *MEMORY[0x277D7B408];
    v33 = v21;
    v34 = *(v21 + 104);
    v71 = v21 + 104;
    v72 = v34;
    v35 = v74;
    v36 = v83;
    v34(v74);
    v69 = sub_220DBF100();
    sub_220DBF0D0();
    v67 = sub_220D3A63C();
    v80 = v22;
    v37 = v89;
    v38 = sub_220DBE0B0();
    v40 = v39;

    v41 = *(v33 + 8);
    v64 = v33 + 8;
    v65 = v41;
    v41(v35, v36);
    v42 = v36;
    v43 = *(v79 + 8);
    v43(v31, v37);
    v62 = v43;
    *(v25 + 56) = MEMORY[0x277D837D0];
    v63 = sub_220CEFDB0();
    *(v25 + 64) = v63;
    *(v25 + 32) = v38;
    *(v25 + 40) = v40;
    v79 = sub_220DC05F0();
    v66 = v44;

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_220DC17C0;
    v47 = v87;
    v46 = v88;
    v76(v87, v77, v88);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v70);
    sub_220DC07E0();
    sub_220DC0270();

    sub_220CDA548(v30, &qword_27CF95228, &unk_220DC1E60);
    v68(v47, v46);
    v48 = v85;
    sub_220DC0900();
    v49 = v31;
    v50 = v89;
    v43(v49, v89);
    v51 = v35;
    v52 = v35;
    v53 = v42;
    v72(v52, v73, v42);
    sub_220DBF0D0();
    v54 = v90;
    v55 = sub_220DBE0B0();
    v57 = v56;

    v65(v51, v53);
    v62(v48, v50);
    v58 = MEMORY[0x277D837D0];
    v59 = v63;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = v59;
    *(v45 + 32) = v55;
    *(v45 + 40) = v57;
    *(v45 + 96) = v58;
    *(v45 + 104) = v59;
    *(v45 + 72) = 0;
    *(v45 + 80) = 0xE000000000000000;
    sub_220DC05F0();

    v20 = v79;

    (*(v86 + 8))(v54, v80);
  }

  return v20;
}

uint64_t sub_220D39274@<X0>(char *a1@<X8>)
{
  v2 = sub_220DBE5E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBE5C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE580();
  sub_220DBE5D0();
  (*(v3 + 8))(v5, v2);
  if (sub_220DBE590())
  {
    result = (*(v7 + 8))(v9, v6);
    v11 = 1;
  }

  else
  {
    v12 = sub_220DBE5B0();
    result = (*(v7 + 8))(v9, v6);
    if (v12)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  *a1 = v11;
  return result;
}

void sub_220D39428(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v85 = a4;
  v83 = a3;
  v80 = a2;
  v100 = a1;
  v84 = a5;
  v86 = sub_220DC0300();
  v5 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v102 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - v8;
  v10 = sub_220DC0920();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_220DC0910();
  v104 = *(v88 - 8);
  v14 = MEMORY[0x28223BE20](v88);
  v82 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  sub_220DC0800();
  v90 = *MEMORY[0x277D7B490];
  v18 = v11 + 104;
  v91 = *(v11 + 104);
  v99 = v10;
  v91(v13);
  v89 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v89);
  sub_220DC0270();

  sub_220CDA548(v9, &qword_27CF95228, &unk_220DC1E60);
  v19 = *(v11 + 8);
  v98 = v11 + 8;
  v92 = v19;
  v19(v13, v10);
  v96 = *MEMORY[0x277D7B408];
  v20 = v5 + 104;
  v97 = *(v5 + 104);
  v21 = v102;
  v97(v102);
  v93 = sub_220DBF100();
  sub_220DBF0D0();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v94 = sub_220D3A63C();
  v22 = v88;
  v87 = sub_220DBE0B0();
  v103 = v23;

  v24 = v5 + 8;
  v25 = *(v5 + 8);
  v101 = v24;
  v26 = v21;
  v27 = v86;
  v25(v26, v86);
  v28 = *(v104 + 8);
  v104 += 8;
  v28(v17, v22);
  sub_220DC0800();
  v29 = v99;
  v76 = v18;
  (v91)(v13, v90, v99);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v89);
  sub_220DC0270();

  v81 = v9;
  sub_220CDA548(v9, &qword_27CF95228, &unk_220DC1E60);
  v75 = v13;
  v30 = v102;
  v92(v13, v29);
  v31 = v87;
  v77 = v20;
  (v97)(v30, v96, v27);
  sub_220DBF0D0();
  v32 = v88;
  v33 = sub_220DBE0B0();
  v35 = v34;

  v78 = v25;
  v25(v30, v27);
  v79 = v17;
  v80 = v28;
  v28(v17, v32);
  v36 = v31;
  v37 = v33 == v31 && v35 == v103;
  if (v37 || (sub_220DC0CA0() & 1) != 0)
  {

    v38 = v75;
    v39 = v99;
    (v91)(v75, v90, v99);
    v40 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v89);
    sub_220DC07E0();
    v41 = v79;
    sub_220DC0270();

    sub_220CDA548(v40, &qword_27CF95228, &unk_220DC1E60);
    v92(v38, v39);
    v42 = v82;
    sub_220DC0900();
    v43 = v80;
    v80(v41, v32);
    (v97)(v30, v96, v27);
    sub_220DBF0D0();
    v44 = sub_220DBE0B0();
    v46 = v45;

    v78(v30, v27);
    v43(v42, v32);
  }

  else
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v74 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v47 = swift_allocObject();
    v71 = xmmword_220DC17C0;
    *(v47 + 16) = xmmword_220DC17C0;
    v48 = MEMORY[0x277D837D0];
    *(v47 + 56) = MEMORY[0x277D837D0];
    v49 = sub_220CEFDB0();
    *(v47 + 32) = v33;
    *(v47 + 40) = v35;
    *(v47 + 96) = v48;
    *(v47 + 104) = v49;
    *(v47 + 64) = v49;
    *(v47 + 72) = v31;
    v50 = v49;
    v72 = v49;
    *(v47 + 80) = v103;

    v87 = sub_220DC05F0();
    v103 = v51;

    v74 = sub_220DBE240();
    v73 = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = v71;
    *(v53 + 56) = v48;
    *(v53 + 64) = v50;
    *(v53 + 32) = v33;
    *(v53 + 40) = v35;
    v54 = v75;
    v55 = v99;
    (v91)(v75, v90, v99);
    v56 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v89);
    sub_220DC07E0();
    v57 = v79;
    sub_220DC0270();

    sub_220CDA548(v56, &qword_27CF95228, &unk_220DC1E60);
    v92(v54, v55);
    v58 = v82;
    sub_220DC0900();
    v59 = v80;
    v80(v57, v32);
    v60 = v102;
    v61 = v86;
    (v97)(v102, v96, v86);
    sub_220DBF0D0();
    v62 = sub_220DBE0B0();
    v64 = v63;

    v78(v60, v61);
    v65 = v58;
    v36 = v87;
    v59(v65, v32);
    v66 = v72;
    *(v53 + 96) = MEMORY[0x277D837D0];
    *(v53 + 104) = v66;
    *(v53 + 72) = v62;
    *(v53 + 80) = v64;
    v44 = sub_220DC05F0();
    v46 = v67;
  }

  v69 = v84;
  v70 = v103;
  *v84 = v36;
  v69[1] = v70;
  v69[2] = v83;
  v69[3] = v68;
  v69[4] = v44;
  v69[5] = v46;
}

uint64_t sub_220D39EEC(uint64_t a1)
{
  v2 = sub_220DC0300();
  v3 = *(v2 - 8);
  v69 = v2;
  v70 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_220DC0920();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_220DC0910();
  v66 = *(v64 - 8);
  v13 = MEMORY[0x28223BE20](v64);
  v65 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v17 = sub_220DBE240();
  v67 = v18;
  v68 = v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v19 = swift_allocObject();
  v62 = xmmword_220DC17A0;
  *(v19 + 16) = xmmword_220DC17A0;
  v59 = *MEMORY[0x277D7B498];
  v20 = *(v10 + 104);
  v60 = v10 + 104;
  v61 = v20;
  v20(v12);
  v55 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v55);
  sub_220DC07E0();
  v21 = v16;
  v45 = v12;
  sub_220DC0270();

  sub_220CDA548(v8, &qword_27CF95228, &unk_220DC1E60);
  v22 = *(v10 + 8);
  v47 = v10 + 8;
  v53 = v22;
  v22(v12, v9);
  v58 = *MEMORY[0x277D7B408];
  v23 = v70;
  v44 = v9;
  v24 = *(v70 + 104);
  v56 = v70 + 104;
  v57 = v24;
  v25 = v69;
  v24(v5);
  v54 = sub_220DBF100();
  sub_220DBF0D0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v50 = sub_220D3A63C();
  v26 = v64;
  v27 = sub_220DBE0B0();
  v48 = a1;
  v29 = v28;

  v30 = *(v23 + 8);
  v70 = v23 + 8;
  v49 = v30;
  v30(v5, v25);
  v43 = *(v66 + 8);
  v43(v21, v26);
  *(v19 + 56) = MEMORY[0x277D837D0];
  v46 = sub_220CEFDB0();
  *(v19 + 64) = v46;
  *(v19 + 32) = v27;
  *(v19 + 40) = v29;
  v66 = sub_220DC05F0();
  v52 = v31;

  v32 = swift_allocObject();
  *(v32 + 16) = v62;
  v33 = v45;
  v34 = v44;
  v61(v45, v59, v44);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v55);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CDA548(v8, &qword_27CF95228, &unk_220DC1E60);
  v53(v33, v34);
  v35 = v65;
  sub_220DC0900();
  v36 = v43;
  v43(v21, v26);
  v37 = v69;
  v57(v5, v58, v69);
  sub_220DBF0D0();
  v38 = sub_220DBE0B0();
  v40 = v39;

  v49(v5, v37);
  v36(v35, v26);
  v41 = v46;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = v41;
  *(v32 + 32) = v38;
  *(v32 + 40) = v40;
  sub_220DC05F0();

  return v66;
}

unint64_t sub_220D3A5F8()
{
  result = qword_27CF95668;
  if (!qword_27CF95668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95668);
  }

  return result;
}

unint64_t sub_220D3A63C()
{
  result = qword_27CF95748;
  if (!qword_27CF95748)
  {
    sub_220DC0910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95748);
  }

  return result;
}

unint64_t sub_220D3A694()
{
  result = qword_27CF95758;
  if (!qword_27CF95758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95750, &qword_220DC5B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95758);
  }

  return result;
}

double TemperatureChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a1;
  v157 = a3;
  sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v155 = v5;
  v156 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v163 = v7 - v6;
  OUTLINED_FUNCTION_6_1();
  sub_220DC02E0();
  OUTLINED_FUNCTION_0();
  v153 = v9;
  v154 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v141 = sub_220DBE1C0();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_1();
  v15 = (v14 - v13);
  v162 = sub_220DC0A00();
  OUTLINED_FUNCTION_0();
  v148 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v147 = v19 - v18;
  OUTLINED_FUNCTION_6_1();
  v161 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v144 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9();
  v140 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v139 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v149 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v139 - v28;
  OUTLINED_FUNCTION_6_1();
  v151 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v150 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9();
  v142 = v32;
  MEMORY[0x28223BE20](v33);
  v166 = &v139 - v34;
  OUTLINED_FUNCTION_6_1();
  v35 = sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v143 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v158 = v39 - v38;
  v40 = OUTLINED_FUNCTION_6_1();
  v41 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v165 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9();
  v160 = v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v139 - v50;
  v52 = a2[1];
  v167[0] = *a2;
  v167[1] = v52;
  v167[2] = a2[2];
  sub_220D34C0C(v145, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v152 = v12;
  v146 = v46;
  if (EnumCaseMultiPayload)
  {
    (*(v46 + 32))(v51, v44, v165);
    sub_220DBE750();
    v160 = sub_220DBEB90();
    v158 = v54;
    sub_220DBE7B0();
    sub_220DC02B0();
    v55 = v147;
    sub_220DC0A20();
    v145 = *(v144 + 8);
    v145(v25, v161);
    v56 = OUTLINED_FUNCTION_5_16();
    v57 = v159;
    sub_220D3B5C4(v56, v58, v59);
    v148 = *(v148 + 8);
    (v148)(v55, v162);
    v60 = v157;
    v149 = *(v149 + 8);
    (v149)(v29, v57);
    sub_220DBE780();
    OUTLINED_FUNCTION_8_0();
    v61(v51, v165);
    sub_220DC02B0();
    sub_220DC0A20();
    v145(v25, v161);
    v62 = v142;
    v63 = OUTLINED_FUNCTION_5_16();
    sub_220D3B5C4(v63, v64, v65);
    (v148)(v55, v162);
    (v149)(v29, v57);
    v66 = v166;
    v67 = sub_220D3B9D0(v167, v160, v158, v166, v62);
    v161 = v68;
    v162 = v67;
    v164 = v70;
    v165 = v69;

    v71 = v150;
    v72 = v150 + 16;
    v73 = *(v150 + 16);
    v74 = v151;
    v73(v60, v66, v151);
    v75 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v76 = v75[5];
    v73(v60 + v76, v62, v74);
    __swift_storeEnumTagSinglePayload(v60 + v76, 0, 1, v74);
    v77 = v152;
    v78 = v163;
    sub_220DBEB70();
    sub_220DC02D0();
    OUTLINED_FUNCTION_4_14();
    v79(v77);
    v80 = *(v71 + 8);
    v80(v62, v74);
    v80(v66, v74);
    (*(v155 + 8))(v78, v156);
    v81 = (v60 + v75[6]);
    *v81 = 0;
    v81[1] = 0;
    v82 = (v60 + v75[7]);
    v83 = v161;
    *v82 = v162;
    v82[1] = v83;
    v84 = (v60 + v75[8]);
    *v84 = 0;
    v84[1] = 0;
    v85 = (v60 + v75[11]);
    *v85 = v72;
    v85[1] = v77;
    *(v60 + v75[9]) = 0;
    v86 = (v60 + v75[10]);
    v87 = v164;
    *v86 = v165;
    v86[1] = v87;
    v88 = (v60 + v75[12]);
    result = 0.0;
    v88[2] = 0u;
    v88[3] = 0u;
    *v88 = 0u;
    v88[1] = 0u;
  }

  else
  {
    v145 = v15;
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v91 = *(v143 + 32);
    v139 = v35;
    v91(v158, v44, v35);
    (*(v46 + 32))(v160, v44 + v90, v165);
    v92 = v29;
    sub_220DBE9B0();
    sub_220DC02B0();
    v93 = v147;
    sub_220DC0A20();
    v94 = *(v144 + 8);
    v95 = v161;
    v94(v25, v161);
    sub_220D3B5C4(v29, v93, v167);
    OUTLINED_FUNCTION_8_0();
    v96(v93, v162);
    v97 = *(v149 + 8);
    v97(v92, v159);
    sub_220DBE7B0();
    sub_220DC02B0();
    v98 = v140;
    sub_220DC0A30();
    v94(v25, v95);
    v162 = sub_220D3B7C8(v92, v98, v167);
    v149 = v99;
    v100 = OUTLINED_FUNCTION_5_16();
    (v94)(v100);
    v101 = v159;
    v97(v92, v159);
    sub_220DBE780();
    sub_220DC02B0();
    sub_220DC0A30();
    v94(v25, v95);
    v164 = sub_220D3B7C8(v92, v98, v167);
    v148 = v102;
    v103 = OUTLINED_FUNCTION_5_16();
    (v94)(v103);
    v97(v92, v101);
    v104 = v166;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v147 = qword_280FA6608;
    v161 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_220DC1CE0;
    sub_220DBE1B0();
    sub_220D3BE30(&qword_27CF95A90, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v106 = sub_220DC06C0();
    v108 = v107;
    v109 = MEMORY[0x277D837D0];
    *(v105 + 56) = MEMORY[0x277D837D0];
    v110 = sub_220CEFDB0();
    *(v105 + 64) = v110;
    *(v105 + 32) = v106;
    *(v105 + 40) = v108;
    v111 = sub_220DBE9E0();
    *(v105 + 96) = v109;
    *(v105 + 104) = v110;
    *(v105 + 72) = v111;
    *(v105 + 80) = v112;
    *(v105 + 136) = v109;
    *(v105 + 144) = v110;
    v113 = v149;
    *(v105 + 112) = v162;
    *(v105 + 120) = v113;
    *(v105 + 176) = v109;
    *(v105 + 184) = v110;
    v114 = v148;
    *(v105 + 152) = v164;
    *(v105 + 160) = v114;

    v161 = sub_220DC05F0();
    v159 = v115;

    v116 = v150;
    v117 = v157;
    v118 = v104;
    v119 = v151;
    (*(v150 + 16))(v157, v118, v151);
    v120 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    __swift_storeEnumTagSinglePayload(v117 + v120[5], 1, 1, v119);
    sub_220DBE240();
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_220DC17C0;
    v122 = MEMORY[0x277D837D0];
    *(v121 + 56) = MEMORY[0x277D837D0];
    *(v121 + 64) = v110;
    *(v121 + 32) = v162;
    *(v121 + 40) = v113;
    *(v121 + 96) = v122;
    *(v121 + 104) = v110;
    *(v121 + 72) = v164;
    *(v121 + 80) = v114;
    v123 = sub_220DC05F0();
    v164 = v124;

    v125 = v163;
    v126 = v158;
    sub_220DBEAC0();
    sub_220DBE990();
    v127 = v152;
    sub_220DBEB70();
    (*(v155 + 8))(v125, v156);
    sub_220DC02D0();
    OUTLINED_FUNCTION_4_14();
    v128(v127);
    (*(v116 + 8))(v166, v119);
    OUTLINED_FUNCTION_8_0();
    v129(v160, v165);
    OUTLINED_FUNCTION_8_0();
    v130(v126, v139);
    v131 = (v117 + v120[6]);
    *v131 = 0;
    v131[1] = 0;
    v132 = (v117 + v120[7]);
    v133 = v164;
    *v132 = v123;
    v132[1] = v133;
    v134 = (v117 + v120[8]);
    *v134 = 0;
    v134[1] = 0;
    v135 = (v117 + v120[11]);
    *v135 = v125;
    v135[1] = v127;
    *(v117 + v120[9]) = 0;
    v136 = (v117 + v120[10]);
    v137 = v159;
    *v136 = v161;
    v136[1] = v137;
    v138 = v117 + v120[12];
    *v138 = 0xD000000000000019;
    *(v138 + 8) = 0x8000000220DEAED0;
    result = 0.0;
    *(v138 + 16) = 0u;
    *(v138 + 32) = 0u;
    *(v138 + 48) = 0xD000000000000022;
    *(v138 + 56) = 0x8000000220DEAEF0;
  }

  return result;
}

uint64_t sub_220D3B5C4(uint64_t a1, uint64_t a2, void **a3)
{
  v12[1] = a1;
  v4 = sub_220DC0300();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  sub_220DBF130();
  swift_allocObject();
  v9 = v8;
  sub_220DBF120();
  v10 = [v9 symbol];
  sub_220DC0620();

  (*(v5 + 104))(v7, *MEMORY[0x277D7B408], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DC0A00();
  sub_220D3BE30(&qword_27CF95A88, MEMORY[0x277D7B4F8], MEMORY[0x277D7B4F0]);
  sub_220DBE080();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_220D3B7C8(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_220DC0300();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  sub_220DBF130();
  swift_allocObject();
  v9 = v8;
  sub_220DBF120();
  v10 = [v9 symbol];
  sub_220DC0620();

  (*(v5 + 104))(v7, *MEMORY[0x277D7B408], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DC0A40();
  sub_220D3BE30(&qword_280FA6610, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v11 = sub_220DBE090();

  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_220D3B9D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_220DBE1C0();
  MEMORY[0x28223BE20](v6);
  sub_220D022A8();
  v7 = [objc_opt_self() fahrenheit];
  v8 = sub_220DC0AB0();

  if (v8)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v17 = sub_220DBE240();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220DC1CC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_220CEFDB0();
  *(v9 + 64) = v11;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  sub_220DBE1B0();
  sub_220D3BE30(&qword_27CF95A90, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v12 = sub_220DC06C0();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  sub_220DBE1B0();
  v14 = sub_220DC06C0();
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = v14;
  *(v9 + 120) = v15;
  sub_220DC05F0();

  return v17;
}

uint64_t sub_220D3BE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DaylightStringBuilder.makeLollipopDaylightString(for:location:sunEvents:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v44 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - v7;
  v8 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_220DBF1D0();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30, v39);
  (*(v24 + 16))(v28, v40, v22);
  (*(v17 + 16))(v21, v41, v15);
  (*(v10 + 16))(v14, v42, v8);
  SunriseSunsetNextEventTodayCountdown.init(date:location:sunEvents:timeZone:)(v32, v28, v21, v14, &v45);
  if (v46 == 255)
  {
    v35 = sub_220DBE210();
    v37 = v43;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v35);
    v36 = v44;
    sub_220DBE1D0();
    if (__swift_getEnumTagSinglePayload(v37, 1, v35) != 1)
    {
      sub_220D3DD1C(v37, &qword_27CF95030, &qword_220DC17E0);
    }
  }

  else
  {
    v34 = v43;
    sub_220D3EBE8(0);
    v35 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    v36 = v44;
    (*(*(v35 - 8) + 32))(v44, v34, v35);
  }

  sub_220DBE210();
  return __swift_storeEnumTagSinglePayload(v36, 0, 1, v35);
}

uint64_t DaylightStringBuilder.makeLollipopPolarDaylightString(for:location:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = sub_220DBE260();
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v33 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_220DBF1D0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  v27 = OUTLINED_FUNCTION_18(EventFutureDayCountdown);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = (v29 - v28);
  (*(v21 + 16))(v25, a1, v19);
  (*(v14 + 16))(v18, a2, v12);
  (*(v7 + 16))(v11, a3, v33);
  SunriseSunsetNextEventFutureDayCountdown.init(date:location:timeZone:)(v25, v18, v11, v30);
  SunriseSunsetNextEventFutureDayCountdown.description.getter();
  sub_220DBE250();
  sub_220DBE220();
  sub_220D3DCC0(v30);
  v31 = sub_220DBE210();
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v31);
}

uint64_t DaylightStringBuilder.makeDaylightString(for:sunEvents:timeZone:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_220DC05D0();
  OUTLINED_FUNCTION_0();
  v39 = v5;
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v38 = v7 - v6;
  v8 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = OUTLINED_FUNCTION_11_7();
  v34(v33);
  (*(v24 + 16))(v28, a2, v22);
  (*(v17 + 16))(v21, a3, v15);
  (*(v10 + 16))(v14, a4, v8);
  DaylightStringKind.init(date:sunEvents:timeZone:calendar:)(v32, v28, v21, v14, &v44);
  if (v45 == 255)
  {
    return sub_220DBE1D0();
  }

  sub_220DC05C0();
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_220DC17A0;
  *(v36 + 32) = sub_220D3DA6C();
  *(v36 + 40) = v37;
  sub_220DBE1F0();

  return (*(v39 + 8))(v38, v40);
}

uint64_t DaylightStringKind.init(date:sunEvents:timeZone:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a4;
  v208 = a3;
  v212 = a1;
  v213 = a5;
  v209 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v211 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v191 = v10 - v9;
  v193 = sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v192 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v206 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v200 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v22 = OUTLINED_FUNCTION_18(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  v204 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v202 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v199 = v27;
  OUTLINED_FUNCTION_23();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v187 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v187 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v187 - v35;
  v37 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  v198 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  v203 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  v197 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  v196 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v201 = v54;
  OUTLINED_FUNCTION_23();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = v187 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = v187 - v59;
  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v36);
  v210 = v16;
  if (v64)
  {
    sub_220D3DD1C(v36, &qword_27CF951E0, &unk_220DC1D80);
    v61 = a2;
    v62 = v212;
  }

  else
  {
    v195 = v15;
    v63 = *(v39 + 32);
    v63(v60, v36, v37);
    sub_220DBF020();
    OUTLINED_FUNCTION_3_0(v34);
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_9_9();
      v66(v65);
      sub_220D3DD1C(v34, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v63(v58, v34, v37);
      v67 = sub_220DBE430();
      if (v67)
      {
        v68 = v212;
        if (sub_220DBE430() & 1) != 0 && (sub_220DBE440())
        {
          sub_220DBE410();
          v69 = OUTLINED_FUNCTION_12_10();
          v70(v69);
          (*(v211 + 8))(v208, v209);
          sub_220DBF070();
          OUTLINED_FUNCTION_1_0();
          (*(v71 + 8))(a2);
          v72 = *(v39 + 8);
          v72(v68, v37);
          v72(v58, v37);
          v73 = OUTLINED_FUNCTION_9_9();
          result = (v72)(v73);
LABEL_42:
          v142 = 0;
          goto LABEL_43;
        }

        sub_220DBE410();
        v167 = OUTLINED_FUNCTION_12_10();
        v168(v167);
        (*(v211 + 8))(v208, v209);
        sub_220DBF070();
        OUTLINED_FUNCTION_1_0();
        (*(v169 + 8))(a2);
        v170 = *(v39 + 8);
        v170(v68, v37);
        v170(v58, v37);
        v171 = OUTLINED_FUNCTION_9_9();
        result = (v170)(v171);
LABEL_36:
        *v213 = v5;
LABEL_37:
        v142 = 1;
        goto LABEL_44;
      }

      v75 = *(v39 + 8);
      v75(v58, v37);
      v76 = OUTLINED_FUNCTION_9_9();
      (v75)(v76);
    }

    v62 = v212;
    v61 = a2;
    v16 = v210;
    v15 = v195;
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v31);
  v205 = v61;
  if (v64)
  {
    v77 = v15;
    sub_220D3DD1C(v31, &qword_27CF951E0, &unk_220DC1D80);
    v78 = v211;
    v79 = v208;
  }

  else
  {
    v80 = v15;
    v81 = *(v39 + 32);
    v81(v201, v31, v37);
    v82 = v199;
    sub_220DBF020();
    OUTLINED_FUNCTION_3_0(v82);
    if (v83)
    {
      v84 = OUTLINED_FUNCTION_10_12();
      v85(v84);
      sub_220D3DD1C(v82, &qword_27CF951E0, &unk_220DC1D80);
      v78 = v211;
      v62 = v212;
    }

    else
    {
      v86 = v196;
      v81(v196, v82, v37);
      OUTLINED_FUNCTION_7_11();
      sub_220D3DD70(v87, v88, MEMORY[0x277CC9590]);
      v89 = sub_220DC0580();
      v78 = v211;
      if ((v89 & 1) == 0)
      {
        v143 = v208;
        sub_220DBE480();
        v144 = v200;
        sub_220DBE6A0();
        v145 = v188;
        sub_220DBE390();
        v146 = *(v206 + 8);
        v146(v144, v16);
        if (sub_220DBE430())
        {
          sub_220DBE410();
          v5 = v147;
          v146(v207, v16);
          (*(v78 + 8))(v143, v209);
          sub_220DBF070();
          OUTLINED_FUNCTION_1_0();
          (*(v148 + 8))(v205);
          v149 = *(v39 + 8);
          v150 = OUTLINED_FUNCTION_10_12();
          v149(v150);
          (v149)(v145, v37);
          (v149)(v194, v37);
          v151 = v196;
        }

        else
        {
          v172 = v196;
          v173 = sub_220DBE440();
          v174 = v209;
          if ((v173 & 1) == 0)
          {
            sub_220DBE410();
            v179 = v178;
            sub_220DBE410();
            v181 = v180;
            v146(v207, v16);
            (*(v78 + 8))(v208, v174);
            sub_220DBF070();
            OUTLINED_FUNCTION_1_0();
            (*(v182 + 8))(v205);
            v183 = *(v39 + 8);
            v183(v212, v37);
            v184 = OUTLINED_FUNCTION_13_8();
            (v183)(v184);
            v185 = OUTLINED_FUNCTION_9_9();
            (v183)(v185);
            v183(v196, v37);
            v186 = OUTLINED_FUNCTION_10_12();
            result = (v183)(v186);
            *v213 = v179 + v181;
            goto LABEL_37;
          }

          sub_220DBE410();
          v5 = v175;
          v146(v207, v16);
          (*(v78 + 8))(v208, v174);
          sub_220DBF070();
          OUTLINED_FUNCTION_1_0();
          (*(v176 + 8))(v205);
          v149 = *(v39 + 8);
          v177 = OUTLINED_FUNCTION_9_9();
          v149(v177);
          (v149)(v188, v37);
          (v149)(v194, v37);
          v151 = v172;
        }

        (v149)(v151, v37);
        result = (v149)(v201, v37);
        goto LABEL_42;
      }

      v90 = *(v39 + 8);
      v90(v86, v37);
      v91 = OUTLINED_FUNCTION_10_12();
      (v90)(v91);
      v62 = v212;
    }

    v79 = v208;
    v77 = v80;
    v61 = v205;
  }

  v92 = v204;
  v93 = v202;
  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v93);
  if (!v64)
  {
    v204 = v39;
    v118 = *(v39 + 32);
    v119 = v197;
    v118(v197, v93, v37);
    sub_220DBE480();
    v120 = v200;
    sub_220DBE6A0();
    v121 = v198;
    sub_220DBE390();
    v122 = *(v206 + 8);
    v123 = v210;
    v122(v120);
    LOBYTE(v120) = sub_220DBE440();
    sub_220DBE410();
    v5 = v136;
    (v122)(v207, v123);
    v137 = OUTLINED_FUNCTION_11_7();
    v138(v137);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v139 + 8))(v205);
    v140 = *(v204 + 8);
    v141 = OUTLINED_FUNCTION_10_12();
    v140(v141);
    (v140)(v121, v37);
    (v140)(v203, v37);
    result = (v140)(v119, v37);
    v142 = v120 & 1;
LABEL_43:
    *v213 = v5;
    goto LABEL_44;
  }

  sub_220D3DD1C(v93, &qword_27CF951E0, &unk_220DC1D80);
  sub_220DBF020();
  OUTLINED_FUNCTION_3_0(v92);
  if (!v64)
  {
    v124 = v189;
    (*(v39 + 32))(v189, v92, v37);
    v125 = sub_220DBE430();
    if ((v125 & 1) == 0)
    {
      sub_220DBE410();
      v5 = v159;
      v160 = OUTLINED_FUNCTION_8_11();
      v161(v160);
      v162 = OUTLINED_FUNCTION_11_7();
      v163(v162);
      sub_220DBF070();
      OUTLINED_FUNCTION_1_0();
      (*(v164 + 8))(v61);
      v165 = *(v39 + 8);
      v166 = OUTLINED_FUNCTION_9_9();
      v165(v166);
      result = (v165)(v124, v37);
      goto LABEL_42;
    }

    v126 = v187[1];
    sub_220DBE480();
    sub_220DBE410();
    v5 = v127;
    v128 = OUTLINED_FUNCTION_8_11();
    v129(v128);
    v130 = OUTLINED_FUNCTION_11_7();
    v131(v130);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v132 + 8))(v61);
    v133 = *(v39 + 8);
    v134 = OUTLINED_FUNCTION_9_9();
    v133(v134);
    (v133)(v126, v37);
    v135 = OUTLINED_FUNCTION_13_8();
    result = (v133)(v135);
    goto LABEL_36;
  }

  sub_220D3DD1C(v92, &qword_27CF951E0, &unk_220DC1D80);
  v94 = v77;
  sub_220DBF3D0();
  v95 = v190;
  (*(v39 + 16))(v190, v62, v37);
  v96 = v191;
  (*(v78 + 16))(v191, v79, v209);
  v195 = v94;
  v97 = sub_220DBF3F0();
  v98 = v79;
  v99 = sub_220DC0980();
  if (os_log_type_enabled(v97, v99))
  {
    v100 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v214 = v203;
    *v100 = 136315394;
    OUTLINED_FUNCTION_7_11();
    sub_220D3DD70(v101, v102, MEMORY[0x277CC95B8]);
    sub_220DC0C70();
    v187[0] = v37;
    v103 = *(v39 + 8);
    v204 = v39 + 8;
    v103(v95, v37);
    v104 = OUTLINED_FUNCTION_13_8();
    v107 = sub_220D3F210(v104, v105, v106);

    *(v100 + 4) = v107;
    *(v100 + 12) = 2080;
    sub_220D3DD70(&qword_27CF95AC8, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
    v108 = v209;
    sub_220DC0C70();
    v109 = *(v78 + 8);
    v109(v96, v108);
    v110 = OUTLINED_FUNCTION_13_8();
    v113 = sub_220D3F210(v110, v111, v112);

    *(v100 + 14) = v113;
    _os_log_impl(&dword_220CD1000, v97, v99, "Unexpected condition in makeDaylightString with date:%s, timeZone:%s", v100, 0x16u);
    v114 = v203;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v114, -1, -1);
    MEMORY[0x223D98FB0](v100, -1, -1);

    v115 = OUTLINED_FUNCTION_8_11();
    v116(v115);
    v109(v208, v108);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v117 + 8))(v205);
    v103(v212, v187[0]);
  }

  else
  {

    v152 = OUTLINED_FUNCTION_8_11();
    v153(v152);
    v154 = *(v78 + 8);
    v155 = v209;
    v154(v98, v209);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v156 + 8))(v205);
    v157 = *(v39 + 8);
    v158 = OUTLINED_FUNCTION_9_9();
    v157(v158);
    v154(v96, v155);
    (v157)(v95, v37);
  }

  result = (*(v192 + 8))(v195, v193);
  *v213 = 0;
  v142 = -1;
LABEL_44:
  *(v213 + 8) = v142;
  return result;
}

uint64_t sub_220D3DA6C()
{
  v0 = sub_220DBF410();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Double.formatTimeDuration()();
  result = v5.value._countAndFlagsBits;
  if (!v5.value._object)
  {
    sub_220DBF3D0();
    v6 = sub_220DBF3F0();
    v7 = sub_220DC0980();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_220DC0780();
      v12 = sub_220D3F210(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_220CD1000, v6, v7, "Failed to generate duration string for %{public}s ", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223D98FB0](v9, -1, -1);
      MEMORY[0x223D98FB0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

BOOL static DaylightStringKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_220D3DCC0(uint64_t a1)
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown(0);
  (*(*(EventFutureDayCountdown - 8) + 8))(a1, EventFutureDayCountdown);
  return a1;
}

uint64_t sub_220D3DD1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D3DD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_220D3DDB8(uint64_t a1)
{
  result = sub_220D3DDE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220D3DDE0()
{
  result = qword_27CF95AD0;
  if (!qword_27CF95AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95AD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DaylightStringBuilder(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DaylightStringKind(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DaylightStringKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SunriseSunsetNextEventTodayCountdown.init(date:location:sunEvents:timeZone:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v150 = a3;
  v146 = a2;
  v143 = a5;
  v144 = a1;
  v132 = sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v131 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v133 = v9 - v8;
  sub_220DC03C0();
  OUTLINED_FUNCTION_0();
  v137 = v11;
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v129 = (v12 - v13);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v130 = &v129 - v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v147 = &v129 - v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  v148 = &v129 - v19;
  v20 = sub_220DBE6C0();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v129 - v28;
  v30 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  v134 = v34 - v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v36);
  v38 = &v129 - v37;
  sub_220DC04D0();
  OUTLINED_FUNCTION_0();
  v139 = v40;
  v140 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v141 = v45;
  v142 = v44;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  v145 = a4;
  sub_220DBE600();
  v149 = v43;
  sub_220DC04C0();
  sub_220DBF050();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    v49 = v32;
    sub_220CD8040(v29);
    v50 = v144;
  }

  else
  {
    (*(v32 + 32))(v38, v29, v30);
    (*(v22 + 104))(v26, *MEMORY[0x277CC99A0], v20);
    v50 = v144;
    v51 = sub_220DBE690();
    (*(v22 + 8))(v26, v20);
    v49 = v32;
    v52 = *(v32 + 8);
    v52(v38, v30);
    if (!v51)
    {
      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v117 + 8))(v145);
      sub_220DBF070();
      OUTLINED_FUNCTION_1_0();
      (*(v118 + 8))(v150);
      sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0();
      (*(v119 + 8))(v146);
      v52(v50, v30);
      v120 = OUTLINED_FUNCTION_3_17();
      v121(v120);
      result = (*(v141 + 8))(v48, v142);
      v77 = v143;
      *v143 = 0.0;
      v76 = 2;
      goto LABEL_13;
    }
  }

  v135 = v30;
  v136 = v48;
  v53 = v146;
  sub_220DBF180();
  v54 = v148;
  v55 = v145;
  sub_220DC04B0();
  v57 = v137;
  v56 = v138;
  v58 = *(v137 + 16);
  v59 = v147;
  v58(v147, v54, v138);
  v60 = (*(v57 + 88))(v59, v56);
  if (v60 == *MEMORY[0x277D7B448])
  {
    (*(v57 + 96))(v59, v56);
    v61 = v49;
    v62 = *(v49 + 32);
    v64 = v134;
    v63 = v135;
    v62(v134, v59, v135);
    sub_220DBE410();
    v66 = v65;
    sub_220DBE740();
    OUTLINED_FUNCTION_1_0();
    (*(v67 + 8))(v55);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v68 + 8))(v150);
    sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0();
    (*(v69 + 8))(v53);
    v70 = *(v61 + 8);
    v70(v50, v63);
    v70(v64, v63);
    (*(v57 + 8))(v54, v56);
    v71 = OUTLINED_FUNCTION_3_17();
    v72(v71);
    v73 = OUTLINED_FUNCTION_5_17();
    result = v74(v73);
    v76 = 0;
    v77 = v143;
    *v143 = v66;
  }

  else if (v60 == *MEMORY[0x277D7B440])
  {
    v78 = v147;
    (*(v57 + 96))(v147, v56);
    v79 = v49;
    v80 = *(v49 + 32);
    v82 = v134;
    v81 = v135;
    v80(v134, v78, v135);
    sub_220DBE410();
    v84 = v83;
    sub_220DBE740();
    OUTLINED_FUNCTION_1_0();
    (*(v85 + 8))(v55);
    sub_220DBF070();
    OUTLINED_FUNCTION_1_0();
    (*(v86 + 8))(v150);
    sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0();
    (*(v87 + 8))(v53);
    v88 = *(v79 + 8);
    v88(v50, v81);
    v88(v82, v81);
    (*(v57 + 8))(v148, v56);
    v89 = OUTLINED_FUNCTION_3_17();
    v90(v89);
    v91 = OUTLINED_FUNCTION_5_17();
    result = v92(v91);
    v77 = v143;
    *v143 = v84;
    v76 = 1;
  }

  else
  {
    v93 = v133;
    sub_220DBF3D0();
    v94 = v130;
    v95 = v148;
    v58(v130, v148, v56);
    v96 = v56;
    v97 = sub_220DBF3F0();
    v98 = sub_220DC0980();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v134 = v49;
      v100 = v99;
      v101 = v94;
      v102 = v57;
      v103 = swift_slowAlloc();
      v151 = v103;
      *v100 = 136446210;
      v104 = v96;
      v58(v129, v101, v96);
      v105 = sub_220DC0630();
      v107 = v106;
      LODWORD(v129) = v98;
      v108 = *(v102 + 8);
      v108(v101, v96);
      v109 = sub_220D3F210(v105, v107, &v151);

      *(v100 + 4) = v109;
      _os_log_impl(&dword_220CD1000, v97, v129, "Unexpected sunEvent type:%{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x223D98FB0](v103, -1, -1);
      MEMORY[0x223D98FB0](v100, -1, -1);

      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v110 + 8))(v145);
      sub_220DBF070();
      OUTLINED_FUNCTION_1_0();
      (*(v111 + 8))(v150);
      sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0();
      (*(v112 + 8))(v146);
      (*(v134 + 8))(v144, v135);
      (*(v131 + 8))(v133, v132);
      v108(v148, v96);
      v113 = OUTLINED_FUNCTION_3_17();
      v114(v113);
      v115 = OUTLINED_FUNCTION_5_17();
      v116(v115);
    }

    else
    {

      sub_220DBE740();
      OUTLINED_FUNCTION_1_0();
      (*(v122 + 8))(v145);
      sub_220DBF070();
      OUTLINED_FUNCTION_1_0();
      (*(v123 + 8))(v150);
      sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0();
      (*(v124 + 8))(v146);
      (*(v49 + 8))(v144, v135);
      v108 = *(v57 + 8);
      v108(v94, v96);
      (*(v131 + 8))(v93, v132);
      v108(v95, v96);
      v125 = OUTLINED_FUNCTION_3_17();
      v126(v125);
      v127 = OUTLINED_FUNCTION_5_17();
      v128(v127);
      v104 = v96;
    }

    result = (v108)(v147, v104);
    v77 = v143;
    *v143 = 0.0;
    v76 = -1;
  }

LABEL_13:
  *(v77 + 8) = v76;
  return result;
}

uint64_t sub_220D3EBE8(char a1)
{
  v2 = sub_220DBE260();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1();
  v3 = sub_220DC05D0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      OUTLINED_FUNCTION_9_10();
      if (v14 == v15)
      {
        sub_220DC05C0();
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_220DC17A0;
        v21 = v13;
        v22 = 1;
        *(v17 + 32) = sub_220D3F050();
        *(v17 + 40) = v18;
        sub_220DBE1F0();

        return (*(v5 + 8))(v9, v3);
      }

      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

LABEL_13:
      sub_220DBE240();
      sub_220DBE250();
      return sub_220DBE220();
    }

    if (qword_280FA6600 == -1)
    {
LABEL_12:
      OUTLINED_FUNCTION_7_12();
      goto LABEL_13;
    }

LABEL_20:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_9_10();
  if (v14 != v15)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_220DC05C0();
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220DC17A0;
  v21 = v13;
  v22 = 0;
  *(v19 + 32) = sub_220D3F050();
  *(v19 + 40) = v20;
  sub_220DBE1F0();

  return (*(v5 + 8))(v12, v3);
}

uint64_t sub_220D3F050()
{
  v0 = sub_220DBF410();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Double.formatTimeDuration()();
  result = v5.value._countAndFlagsBits;
  if (!v5.value._object)
  {
    sub_220DBF3D0();
    v6 = sub_220DBF3F0();
    v7 = sub_220DC0980();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_220DC0780();
      v12 = sub_220D3F210(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_220CD1000, v6, v7, "Failed to generate duration string for %{public}s ", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223D98FB0](v9, -1, -1);
      MEMORY[0x223D98FB0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

unint64_t sub_220D3F210(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_220D3F2D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_220D3F844(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_220D3F2D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_220D3F3D4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_220DC0BB0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_220D3F3D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_220D3F420(a1, a2);
  sub_220D3F538(&unk_283472400);
  return v3;
}

uint64_t sub_220D3F420(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_220DC0690())
  {
    result = sub_220D3F61C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_220DC0B70();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_220DC0BB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_220D3F538(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_220D3F68C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_220D3F61C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AD8, &unk_220DC4728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_220D3F68C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AD8, &unk_220DC4728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for SunriseSunsetNextEventTodayCountdown(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SunriseSunsetNextEventTodayCountdown(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_220D3F804(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_220D3F81C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_220D3F844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void VisibilityChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v305 = a3;
  v312 = a1;
  v314 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v271 - v6;
  v311 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v307 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_21();
  v306 = v10;
  OUTLINED_FUNCTION_6_1();
  v11 = sub_220DBE260();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_1_21();
  v313 = v12;
  OUTLINED_FUNCTION_6_1();
  v325 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v329 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_21();
  v317 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  MEMORY[0x28223BE20](v16 - 8);
  v316 = &v271 - v17;
  OUTLINED_FUNCTION_6_1();
  v324 = sub_220DC02F0();
  OUTLINED_FUNCTION_0();
  v328 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_21();
  v321 = v20;
  OUTLINED_FUNCTION_6_1();
  v323 = sub_220DC0960();
  OUTLINED_FUNCTION_0();
  v327 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_21();
  v315 = v23;
  OUTLINED_FUNCTION_6_1();
  v320 = sub_220DC0950();
  OUTLINED_FUNCTION_0();
  v326 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v304 = v26;
  MEMORY[0x28223BE20](v27);
  v322 = &v271 - v28;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v309 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9();
  v318 = v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v271 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v303 = &v271 - v37;
  MEMORY[0x28223BE20](v36);
  v310 = (&v271 - v38);
  OUTLINED_FUNCTION_6_1();
  v39 = sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_21();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_6_1();
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v45);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_21();
  v48 = v47;
  v302 = *(a2 + 40);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_1();
  v289 = v49;
  v50 = sub_220DBE240();
  v52 = v51;
  sub_220D34C0C(v312, v48);
  if (swift_getEnumCaseMultiPayload())
  {
    v53 = v50;
    sub_220DBE830();
    OUTLINED_FUNCTION_6();
    (*(v54 + 8))(v48);
    v55 = OUTLINED_FUNCTION_22_6();
    sub_220CEF48C(v55, v7);
    v56 = v311;
    if (__swift_getEnumTagSinglePayload(v7, 1, v311) == 1)
    {

      sub_220CDA548(v7, &qword_27CF94F90, &unk_220DC4410);
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v57 = sub_220DBF410();
      __swift_project_value_buffer(v57, qword_27CF95F78);
      v58 = sub_220DBF3F0();
      v59 = sub_220DC0980();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_220CD1000, v58, v59, "Failed to create chart header for Visibility due to missing extrema values", v60, 2u);
        MEMORY[0x223D98FB0](v60, -1, -1);
      }

      sub_220DBE250();
      v61 = v314;
      sub_220DBE220();
      v62 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
      sub_220DBE210();
      OUTLINED_FUNCTION_9_8();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
      v67 = (v61 + v62[6]);
      *v67 = 0;
      v67[1] = 0;
      *(v61 + v62[7]) = xmmword_220DC17B0;
      v68 = (v61 + v62[8]);
      *v68 = 0;
      v68[1] = 0;
      v69 = (v61 + v62[11]);
      *v69 = 0;
      v69[1] = 0;
      *(v61 + v62[9]) = 0;
      v70 = (v61 + v62[10]);
      *v70 = 0;
      v70[1] = 0xE000000000000000;
      v71 = (v61 + v62[12]);
      v71[2] = 0u;
      v71[3] = 0u;
      *v71 = 0u;
      v71[1] = 0u;
    }

    else
    {
      v305 = v53;
      v312 = v52;
      v140 = v328;
      (*(v307 + 32))(v306, v7, v56);
      sub_220DBF2F0();
      sub_220CDB190();
      v141 = v302;
      sub_220DBE040();
      sub_220DBF300();
      v142 = v141;
      sub_220DBE040();
      static VisibilityCondition.condition(for:)(&v335);
      v281 = v335;
      static VisibilityCondition.condition(for:)(&v334);
      v278 = v334;
      sub_220DC0830();
      v291 = *MEMORY[0x277D7B4B0];
      v143 = v327;
      v144 = *(v327 + 104);
      v293 = (v327 + 104);
      v292 = v144;
      v288 = v35;
      v145 = v315;
      v146 = v323;
      v144(v315);
      LODWORD(v287) = *MEMORY[0x277D7B3E8];
      v147 = v140;
      v148 = *(v140 + 104);
      v295 = v140 + 104;
      v294 = v148;
      v149 = v321;
      v150 = v324;
      (v148)(v321);
      v290 = sub_220DBE5E0();
      v151 = v316;
      OUTLINED_FUNCTION_9_8();
      __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
      OUTLINED_FUNCTION_20_5();
      sub_220DC0280();

      v156 = v320;
      sub_220CDA548(v151, &qword_27CF95228, &unk_220DC1E60);
      v157 = *(v147 + 8);
      v328 = v147 + 8;
      v296 = v157;
      v157(v149, v150);
      v158 = *(v143 + 8);
      v327 = v143 + 8;
      v297 = v158;
      v158(v145, v146);
      LODWORD(v299) = *MEMORY[0x277D7B408];
      v159 = v329;
      v160 = *(v329 + 104);
      v301 = v329 + 104;
      v300 = v160;
      v161 = v317;
      v162 = v325;
      (v160)(v317);
      v298 = sub_220DBF100();
      sub_220DBF0D0();
      v302 = sub_220D427C0();
      v163 = v322;
      v280 = sub_220DBE0B0();
      v279 = v164;

      v165 = *(v159 + 8);
      v329 = v159 + 8;
      v303 = v165;
      (v165)(v161, v162);
      v166 = v326 + 8;
      v310 = *(v326 + 8);
      v310(v163, v156);
      sub_220DC0830();
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_5_18();
      v167();
      v168 = v321;
      v169 = v324;
      OUTLINED_FUNCTION_7_13();
      v170();
      OUTLINED_FUNCTION_2_16(v151);
      OUTLINED_FUNCTION_13_9();
      sub_220DC0280();

      sub_220CDA548(v151, &qword_27CF95228, &unk_220DC1E60);
      v296(v168, v169);
      OUTLINED_FUNCTION_14_11();
      v171();
      OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_6_11();
      v172();
      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_23_7();
      v173 = sub_220DBE0B0();
      v175 = v174;

      OUTLINED_FUNCTION_3_18();
      v176();
      v326 = v166;
      OUTLINED_FUNCTION_19_7();
      v177();
      v178 = v279;
      v179 = sub_220DBE0D0();
      v180 = v280;
      v282 = v179;
      v283 = v181;
      OUTLINED_FUNCTION_5_1();
      v285 = v182;
      OUTLINED_FUNCTION_5_1();
      v284 = v183;
      OUTLINED_FUNCTION_5_1();
      v286 = v184;
      v185 = v180 == v173 && v178 == v175;
      if (v185 || (sub_220DC0CA0() & 1) != 0)
      {

        OUTLINED_FUNCTION_12_11();
        OUTLINED_FUNCTION_5_18();
        v186();
        v187 = v316;
        OUTLINED_FUNCTION_2_16(v316);
        sub_220DC0810();
        LODWORD(v289) = *MEMORY[0x277D7B3F8];
        v188 = v321;
        v189 = v324;
        OUTLINED_FUNCTION_7_13();
        v190();
        OUTLINED_FUNCTION_13_9();
        sub_220DC0280();

        v296(v188, v189);
        sub_220CDA548(v187, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_11();
        v191();
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_6_11();
        v192();
        OUTLINED_FUNCTION_24_5();
        OUTLINED_FUNCTION_23_7();
        v287 = sub_220DBE0B0();
        v280 = v193;

        OUTLINED_FUNCTION_3_18();
        v194();
        OUTLINED_FUNCTION_19_7();
        v195();
        v331 = v281;
        v196 = sub_220D41724(&v331);
        v304 = v196;
        v198 = v197;
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v200 = OUTLINED_FUNCTION_15_7(v199);
        *(v200 + 16) = xmmword_220DC17C0;
        v201 = MEMORY[0x277D837D0];
        *(v200 + 56) = MEMORY[0x277D837D0];
        v202 = sub_220CEFDB0();
        v203 = v280;
        *(v200 + 32) = v287;
        *(v200 + 40) = v203;
        *(v200 + 96) = v201;
        *(v200 + 104) = v202;
        *(v200 + 64) = v202;
        *(v200 + 72) = v196;
        *(v200 + 80) = v198;

        OUTLINED_FUNCTION_22_6();
        v308 = sub_220DC05F0();
        v305 = v204;

        sub_220DC0830();
        OUTLINED_FUNCTION_12_11();
        OUTLINED_FUNCTION_5_18();
        v205();
        OUTLINED_FUNCTION_2_16(v187);
        v206 = v324;
        OUTLINED_FUNCTION_7_13();
        v207();
        OUTLINED_FUNCTION_13_9();
        sub_220DC0280();

        v296(v188, v206);
        sub_220CDA548(v187, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_11();
        v208();
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_6_11();
        v209();
        OUTLINED_FUNCTION_24_5();
        v210 = v319;
        OUTLINED_FUNCTION_23_7();
        v211 = v318;
        sub_220DBE0B0();

        OUTLINED_FUNCTION_3_18();
        v212();
        OUTLINED_FUNCTION_19_7();
        v213();
        sub_220DBE250();
        v214 = v314;
        sub_220DBE220();
        v215 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
        v216 = v215[5];

        sub_220DBE250();
        sub_220DBE220();

        v217 = *(v309 + 8);
        v217(v211, v210);
        v217(v288, v210);
        v218 = OUTLINED_FUNCTION_9_11();
        v219(v218);
        v220 = sub_220DBE210();
        __swift_storeEnumTagSinglePayload(v214 + v216, 0, 1, v220);
        OUTLINED_FUNCTION_11_8(v215[6]);
        v221 = (v214 + v215[7]);
        *v221 = v304;
        v221[1] = v198;
        OUTLINED_FUNCTION_11_8(v215[8]);
        OUTLINED_FUNCTION_11_8(v215[11]);
        *(v214 + v215[9]) = 0;
        v222 = (v214 + v215[10]);
        v223 = v305;
        *v222 = v308;
        v222[1] = v223;
        v224 = v215[12];
      }

      else
      {
        OUTLINED_FUNCTION_16_9();
        sub_220DBE240();
        v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v274 = v225;
        v226 = OUTLINED_FUNCTION_15_7(v225);
        v277 = xmmword_220DC17C0;
        *(v226 + 16) = xmmword_220DC17C0;
        v227 = MEMORY[0x277D837D0];
        *(v226 + 56) = MEMORY[0x277D837D0];
        v228 = sub_220CEFDB0();
        *(v226 + 32) = v180;
        *(v226 + 40) = v178;
        *(v226 + 96) = v227;
        *(v226 + 104) = v228;
        *(v226 + 64) = v228;
        *(v226 + 72) = v173;
        v229 = v228;
        v272 = v228;
        *(v226 + 80) = v175;

        v276 = sub_220DC05F0();
        v275 = v230;

        OUTLINED_FUNCTION_16_9();
        v289 = sub_220DBE240();
        v273 = v231;
        v232 = OUTLINED_FUNCTION_15_7(v225);
        *(v232 + 16) = v277;
        *(v232 + 56) = MEMORY[0x277D837D0];
        *(v232 + 64) = v229;
        *(v232 + 32) = v180;
        *(v232 + 40) = v178;
        sub_220DC0810();
        v233 = v315;
        v234 = v323;
        v292(v315, v291, v323);
        v235 = v321;
        v236 = v324;
        (v294)(v321, v287, v324);
        v237 = v316;
        OUTLINED_FUNCTION_2_16(v316);
        v238 = v322;
        OUTLINED_FUNCTION_20_5();
        sub_220DC0280();

        sub_220CDA548(v237, &qword_27CF95228, &unk_220DC1E60);
        v296(v235, v236);
        v297(v233, v234);
        v239 = v304;
        sub_220DC0940();
        v240 = v320;
        v241 = v310;
        v310(v238, v320);
        OUTLINED_FUNCTION_21_5();
        v300();
        OUTLINED_FUNCTION_24_5();
        OUTLINED_FUNCTION_23_7();
        v242 = sub_220DBE0B0();
        v244 = v243;

        OUTLINED_FUNCTION_3_18();
        v245();
        v241(v239, v240);
        v246 = MEMORY[0x277D837D0];
        v247 = v272;
        *(v232 + 96) = MEMORY[0x277D837D0];
        *(v232 + 104) = v247;
        *(v232 + 72) = v242;
        *(v232 + 80) = v244;
        v248 = sub_220DC05F0();
        v250 = v249;

        v333 = v281;
        v332 = v278;
        v251 = sub_220D41A80(&v333, &v332);
        v253 = v252;
        v254 = OUTLINED_FUNCTION_15_7(v274);
        *(v254 + 16) = v277;
        *(v254 + 56) = v246;
        *(v254 + 64) = v247;
        *(v254 + 32) = v248;
        *(v254 + 40) = v250;
        *(v254 + 96) = v246;
        *(v254 + 104) = v247;
        *(v254 + 72) = v251;
        *(v254 + 80) = v253;

        OUTLINED_FUNCTION_22_6();
        v255 = sub_220DC05F0();
        v257 = v256;

        sub_220DBE250();
        v214 = v314;
        sub_220DBE220();
        v258 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
        v259 = v258[5];

        sub_220DBE250();
        sub_220DBE220();

        v260 = *(v309 + 8);
        v261 = v319;
        v260(v318, v319);
        v260(v288, v261);
        v262 = OUTLINED_FUNCTION_9_11();
        v263(v262);
        v264 = sub_220DBE210();
        __swift_storeEnumTagSinglePayload(v214 + v259, 0, 1, v264);
        OUTLINED_FUNCTION_11_8(v258[6]);
        v265 = (v214 + v258[7]);
        *v265 = v251;
        v265[1] = v253;
        OUTLINED_FUNCTION_11_8(v258[8]);
        OUTLINED_FUNCTION_11_8(v258[11]);
        *(v214 + v258[9]) = 0;
        v266 = (v214 + v258[10]);
        *v266 = v255;
        v266[1] = v257;
        v224 = v258[12];
      }

      v267 = (v214 + v224);
      v268 = v285;
      *v267 = 0xD000000000000013;
      v267[1] = v268;
      v269 = v284;
      v267[2] = 0xD000000000000012;
      v267[3] = v269;
      v267[4] = 0;
      v267[5] = 0;
      v270 = v286;
      v267[6] = 0xD000000000000019;
      v267[7] = v270;
    }
  }

  else
  {
    v311 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v300 = v41;
    v72 = *(v41 + 32);
    v301 = v44;
    v292 = v48;
    v299 = v39;
    v72(v44, v48, v39);
    OUTLINED_FUNCTION_19_7();
    v312 = v52;
    v73 = v328;
    sub_220DBE9A0();
    LODWORD(v307) = *MEMORY[0x277D7B4B0];
    v74 = v327;
    v75 = *(v327 + 104);
    v302 = (v327 + 104);
    v306 = v75;
    v76 = v315;
    v77 = v323;
    v75(v315);
    LODWORD(v298) = *MEMORY[0x277D7B3F8];
    v78 = *(v73 + 104);
    v296 = (v73 + 104);
    v297 = v78;
    v79 = v321;
    v80 = v324;
    (v78)(v321);
    v295 = sub_220DBE5E0();
    v81 = v316;
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    sub_220DC0810();
    v86 = v322;
    sub_220DC0280();

    sub_220CDA548(v81, &qword_27CF95228, &unk_220DC1E60);
    v87 = *(v73 + 8);
    v328 = v73 + 8;
    v294 = v87;
    v87(v79, v80);
    v88 = *(v74 + 8);
    v327 = v74 + 8;
    v293 = v88;
    v88(v76, v77);
    v89 = v304;
    v90 = v86;
    sub_220DC0940();
    v91 = v326 + 8;
    v318 = *(v326 + 8);
    v92 = v320;
    v318(v90, v320);
    v326 = v91;
    v291 = *MEMORY[0x277D7B408];
    v93 = v329;
    v94 = *(v329 + 104);
    v289 = v329 + 104;
    v290 = v94;
    v95 = v317;
    v96 = v325;
    v94(v317);
    v288 = sub_220DBF100();
    sub_220DBF0D0();
    v287 = sub_220D427C0();
    v305 = v50;
    v97 = v319;
    v98 = v310;
    v283 = sub_220DBE0B0();
    v282 = v99;

    v100 = *(v93 + 8);
    v329 = v93 + 8;
    v285 = v100;
    v100(v95, v96);
    v318(v89, v92);
    v101 = *(v309 + 8);
    v101(v98, v97);
    v102 = v101;
    sub_220DBE9A0();
    static VisibilityCondition.condition(for:)(&v330);
    v103 = v97;
    v101(v98, v97);
    v284 = v101;
    v104 = sub_220D41724(&v330);
    v304 = v104;
    v106 = v105;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v108 = OUTLINED_FUNCTION_15_7(v107);
    *(v108 + 16) = xmmword_220DC17C0;
    v109 = MEMORY[0x277D837D0];
    *(v108 + 56) = MEMORY[0x277D837D0];
    v110 = sub_220CEFDB0();
    v111 = v282;
    *(v108 + 32) = v283;
    *(v108 + 40) = v111;
    *(v108 + 96) = v109;
    *(v108 + 104) = v110;
    *(v108 + 64) = v110;
    *(v108 + 72) = v104;
    v286 = v106;
    *(v108 + 80) = v106;

    OUTLINED_FUNCTION_22_6();
    v309 = sub_220DC05F0();
    v308 = v112;

    sub_220DBE9A0();
    v312 = sub_220DBE100();
    v305 = v113;
    v102(v98, v103);
    v114 = v303;
    sub_220DBE9A0();
    sub_220DC0820();
    v115 = v315;
    v116 = v323;
    v306(v315, v307, v323);
    v117 = v321;
    v118 = v324;
    (v297)(v321, v298, v324);
    v119 = v316;
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v295);
    v123 = v322;
    sub_220DC0280();

    sub_220CDA548(v119, &qword_27CF95228, &unk_220DC1E60);
    v294(v117, v118);
    v293(v115, v116);
    v124 = v317;
    v125 = v325;
    v290(v317, v291, v325);
    sub_220DBF0D0();
    v126 = v320;
    sub_220DBE0B0();

    v285(v124, v125);
    v318(v123, v126);
    v284(v114, v103);
    sub_220DBE250();
    v127 = v314;
    sub_220DBE220();
    v128 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v129 = v128[5];

    sub_220DBE250();
    sub_220DBE220();

    (*(v300 + 1))(v301, v299);
    v130 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v127 + v129, 0, 1, v130);
    v131 = (v127 + v128[6]);
    *v131 = 0;
    v131[1] = 0;
    v132 = (v127 + v128[7]);
    v133 = v286;
    *v132 = v304;
    v132[1] = v133;
    v134 = (v127 + v128[8]);
    *v134 = 0;
    v134[1] = 0;
    v135 = (v127 + v128[11]);
    *v135 = 0;
    v135[1] = 0;
    *(v127 + v128[9]) = 0;
    v136 = (v127 + v128[10]);
    v137 = v308;
    *v136 = v309;
    v136[1] = v137;
    v138 = (v127 + v128[12]);
    sub_220DBE830();
    *v138 = 0u;
    v138[1] = 0u;
    v138[2] = 0u;
    v138[3] = 0u;
    OUTLINED_FUNCTION_6();
    (*(v139 + 8))(v292 + v311);
  }
}

uint64_t sub_220D41724(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_14:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D41A80(_BYTE *a1, _BYTE *a2)
{
  switch(*a1)
  {
    case 1:
      switch(*a2)
      {
        case 1:
          v5 = 1;
          v2 = &v5;
          goto LABEL_74;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
      }

    case 2:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 2:
          v6 = 2;
          v2 = &v6;
          goto LABEL_74;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
      }

    case 3:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 3:
          v7 = 3;
          v2 = &v7;
          goto LABEL_74;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
      }

    case 4:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 4:
          v8 = 4;
          v2 = &v8;
          goto LABEL_74;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
      }

    case 5:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 5:
          v9 = 5;
          v2 = &v9;
          goto LABEL_74;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
      }

    default:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_72;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_72;
          }

LABEL_75:
          swift_once();
LABEL_72:
          result = sub_220DBE240();
          break;
        default:
          v4 = 0;
          v2 = &v4;
LABEL_74:
          result = sub_220D41724(v2);
          break;
      }

      return result;
  }
}

unint64_t sub_220D427C0()
{
  result = qword_280FA6620;
  if (!qword_280FA6620)
  {
    sub_220DC0950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6620);
  }

  return result;
}

uint64_t SunElevationCalculator.__allocating_init(locationPeakTimeCalculator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  SunElevationCalculator.init(locationPeakTimeCalculator:)(a1);
  return v2;
}

uint64_t sub_220D428A8(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBF190() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SunElevationCalculator.CacheKey(0);

  return sub_220DBE460();
}

uint64_t sub_220D42908(uint64_t a1)
{
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60], MEMORY[0x277D7AB68]);
  sub_220DC0560();
  type metadata accessor for SunElevationCalculator.CacheKey(0);
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_220DC0560();
}

uint64_t sub_220D429E0()
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60], MEMORY[0x277D7AB68]);
  sub_220DC0560();
  type metadata accessor for SunElevationCalculator.CacheKey(0);
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t sub_220D42AD8()
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60], MEMORY[0x277D7AB68]);
  sub_220DC0560();
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t SunElevationCalculator.init(locationPeakTimeCalculator:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE0, &unk_220DC47A0);
  swift_allocObject();
  *(v1 + 16) = sub_220DBF280();
  sub_220CD570C(a1, v1 + 24);
  return v1;
}

uint64_t SunElevationCalculator.getElevation(for:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v94 = a2;
  v95 = a3;
  v6 = sub_220DBF1D0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v85 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v11 - 8);
  v88 = v79 - v12;
  v13 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v84 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = v79 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_9();
  v91 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v79 - v24;
  v26 = type metadata accessor for SunElevationCalculator.CacheKey(0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v90 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = v79 - v30;
  v86 = v8;
  v87 = v6;
  v32 = *(v8 + 16);
  v93 = a1;
  v33 = a1;
  v34 = v94;
  v83 = v32;
  v32(v79 - v30, v33, v6);
  v35 = *(v27 + 28);
  v92 = v15;
  v36 = *(v15 + 16);
  (v36)(&v31[v35], v34, v13);
  v89 = v4[2];
  v37 = v89;
  sub_220DBF290();
  sub_220DC0500();
  v38 = OUTLINED_FUNCTION_3_19();
  if (__swift_getEnumTagSinglePayload(v38, 1, v37) == 1)
  {
    v81 = v37;
    v82 = v31;
    sub_220D433A8(v25);
    v39 = v93;
    sub_220DBF180();
    v41 = v40;
    sub_220DBF180();
    v43 = v42;
    v44 = v4[6];
    v45 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v44);
    (*(v45 + 8))(v39, v34, v44, v45);
    v46 = sub_220DBE430();
    v47 = v88;
    (v36)(v88, v34, v13);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v13);
    v48 = objc_allocWithZone(MEMORY[0x277D0EB38]);
    v49 = sub_220D4349C(v47, 0, v41, v43);
    v50 = v13;
    v51 = v49;
    if (v49)
    {
      [v49 altitude];
      v52 = v95;
      v36 = v92;
      v53 = v82;
    }

    else
    {
      v55 = v34;
      v79[3] = v46;
      v80 = 0;
      v56 = v93;
      v88 = v20;
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v57 = sub_220DBF410();
      __swift_project_value_buffer(v57, qword_27CF95F78);
      v58 = v85;
      v59 = v56;
      v60 = v87;
      v83(v85, v59, v87);
      (v36)(v84, v55, v50);
      v61 = sub_220DBF3F0();
      v62 = sub_220DC0980();
      v63 = os_log_type_enabled(v61, v62);
      v52 = v95;
      if (v63)
      {
        v36 = v60;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v96[0] = v65;
        *v64 = 141558531;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        v66 = v58;
        sub_220DBF1B0();
        v67 = OUTLINED_FUNCTION_3_19();
        v69 = v68;
        (*(v86 + 8))(v67, v36);
        sub_220D3F210(v66, v69, v96);
        OUTLINED_FUNCTION_3_19();

        *(v64 + 14) = v66;
        *(v64 + 22) = 2082;
        sub_220D43704(&qword_27CF95AC0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v70 = sub_220DC0C70();
        v72 = v71;
        v73 = OUTLINED_FUNCTION_1_22();
        v74(v73);
        sub_220D3F210(v70, v72, v96);
        OUTLINED_FUNCTION_3_19();

        *(v64 + 24) = v70;
        _os_log_impl(&dword_220CD1000, v61, v62, "Failed to get elevationDegrees for location:%{private,mask.hash}s, date: %{public}s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v65, -1, -1);
        MEMORY[0x223D98FB0](v64, -1, -1);
      }

      else
      {

        v75 = OUTLINED_FUNCTION_1_22();
        v76(v75);
        (*(v86 + 8))(v58, v60);
      }

      v20 = v88;
      v53 = v82;
      v51 = v80;
    }

    sub_220DC0510();
    sub_220D43570(v53, v90);
    v77 = v81;
    v78 = v91;
    (*(*(v81 - 8) + 16))(v91, v52, v81);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v77);
    sub_220DBF2A0();

    (*(v36 + 8))(v20, v50);
    return sub_220D435D4(v53);
  }

  else
  {
    sub_220D435D4(v31);
    return (*(*(v37 - 8) + 32))(v95, v25, v37);
  }
}

uint64_t type metadata accessor for SunElevationCalculator.CacheKey(uint64_t a1)
{
  result = qword_27CF95AF0;
  if (!qword_27CF95AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D433A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SunElevationCalculator.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t SunElevationCalculator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id sub_220D4349C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_220DBE560();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_220DBE420();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v12 = [v5 initWithLocation:v11 date:a2 body:{a3, a4}];

  return v12;
}

uint64_t sub_220D43570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunElevationCalculator.CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D435D4(uint64_t a1)
{
  v2 = type metadata accessor for SunElevationCalculator.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D43704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrecipitationTotalChartHeaderStringBuilder.__allocating_init(precipitationTotalHeroStringBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_220CD570C(a1, v2 + 16);
  return v2;
}

uint64_t PrecipitationTotalChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_220DBE260();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1();
  v104 = v5 - v4;
  v6 = type metadata accessor for PrecipitationTotalHeroString(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v107 = v18;
  v111 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v26 = sub_220DBE240();
  v28 = v27;
  sub_220D34C0C(a1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = OUTLINED_FUNCTION_1_23();
      v31(v30);
      v32 = a2;
      v33 = v16;
      v34 = 0;
    }

    else
    {
      v78 = OUTLINED_FUNCTION_1_23();
      v79(v78);
      v32 = a2;
      v33 = v16;
      v34 = 1;
    }

    sub_220D43D84(v33, v34, v26, v28, v32);

    return (*(v12 + 8))(v16, v25);
  }

  else
  {
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v97 = v21;
    (*(v107 + 32))(v21, v25, v111);
    (*(v12 + 32))(v16, v25 + v35, v10);
    v36 = v115[5];
    v37 = v115[6];
    __swift_project_boxed_opaque_existential_1(v115 + 2, v36);
    v38 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    (*(v37 + 8))(v21, a1 + *(v38 + 24), v16, a1 + *(v38 + 32), v36, v37);
    v39 = PrecipitationTotalHeroString.longSubtitle.getter();
    v116 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_220DC17C0;
    v42 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v42, 1, 1, v43, v44, v45, v46, v47, v80, v83, v39, v89, v93, v97, v10, v104, v107, v111, v116, a2);
    v49 = v48;
    v51 = v50;

    v52 = MEMORY[0x277D837D0];
    *(v41 + 56) = MEMORY[0x277D837D0];
    v53 = sub_220CEFDB0();
    *(v41 + 32) = v49;
    *(v41 + 40) = v51;
    *(v41 + 96) = v52;
    *(v41 + 104) = v53;
    *(v41 + 64) = v53;
    *(v41 + 72) = v39;
    *(v41 + 80) = v117;

    v54 = sub_220DC05F0();
    v90 = v55;
    v94 = v54;

    v56 = sub_220DC0830();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v56, 0, 1, v57, v58, v59, v60, v61, v81, v84, v86, v90, v94, v98, v101, v105, v108, v112, v117, v121);

    v62 = sub_220DC0820();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v62, 0, 1, v63, v64, v65, v66, v67, v82, v85, v87, v91, v95, v99, v102, v106, v109, v113, v118, v122);

    sub_220DBE250();
    sub_220DBE220();
    v68 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v69 = v68[5];

    sub_220DBE250();
    sub_220DBE220();

    sub_220D440E8(v9);
    (*(v12 + 8))(v16, v103);
    (*(v110 + 8))(v100, v114);
    v70 = sub_220DBE210();
    result = __swift_storeEnumTagSinglePayload(v123 + v69, 0, 1, v70);
    v72 = (v123 + v68[6]);
    *v72 = 0;
    v72[1] = 0;
    v73 = (v123 + v68[7]);
    *v73 = v88;
    v73[1] = v119;
    v74 = (v123 + v68[8]);
    *v74 = 0;
    v74[1] = 0;
    v75 = (v123 + v68[11]);
    *v75 = 0;
    v75[1] = 0;
    *(v123 + v68[9]) = 0;
    v76 = (v123 + v68[10]);
    *v76 = v96;
    v76[1] = v92;
    v77 = (v123 + v68[12]);
    v77[2] = 0u;
    v77[3] = 0u;
    *v77 = 0u;
    v77[1] = 0u;
  }

  return result;
}

double sub_220D43D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a3;
  v59 = a4;
  v9 = sub_220DBE260();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for PrecipitationTotalHeroString(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5[5];
  v14 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v13);
  (*(v14 + 16))(a1, a2, v13, v14);
  v15 = PrecipitationTotalHeroString.longSubtitle.getter();
  v57 = v15;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_220DC17C0;
  v19 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, 1, 1, v20, v21, v22, v23, v24, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v30 = sub_220CEFDB0();
  *(v18 + 32) = v26;
  *(v18 + 40) = v28;
  *(v18 + 96) = v29;
  *(v18 + 104) = v30;
  *(v18 + 64) = v30;
  *(v18 + 72) = v15;
  *(v18 + 80) = v17;

  v31 = sub_220DC05F0();
  v58 = v32;
  v59 = v31;

  v33 = sub_220DC0830();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, 0, 1, v34, v35, v36, v37, v38, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);

  v39 = sub_220DC0820();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v39, 0, 1, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);

  sub_220DBE250();
  sub_220DBE220();
  v45 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  v46 = v45[5];

  sub_220DBE250();
  sub_220DBE220();

  sub_220D440E8(v12);
  v47 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a5 + v46, 0, 1, v47);
  v48 = (a5 + v45[6]);
  *v48 = 0;
  v48[1] = 0;
  v49 = (a5 + v45[7]);
  *v49 = v57;
  v49[1] = v17;
  v50 = (a5 + v45[8]);
  *v50 = 0;
  v50[1] = 0;
  v51 = (a5 + v45[11]);
  *v51 = 0;
  v51[1] = 0;
  *(a5 + v45[9]) = 0;
  v52 = (a5 + v45[10]);
  v53 = v58;
  *v52 = v59;
  v52[1] = v53;
  v54 = (a5 + v45[12]);
  result = 0.0;
  v54[2] = 0u;
  v54[3] = 0u;
  *v54 = 0u;
  v54[1] = 0u;
  return result;
}

uint64_t PrecipitationTotalChartHeaderStringBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220D440E8(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalHeroString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UVIndexChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v125 = a2;
  v132 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v118 - v5;
  v131 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v119 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v118 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v118 - v11;
  v129 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v124 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v123 = v16 - v15;
  v17 = sub_220DBE260();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1();
  v133 = v19 - v18;
  sub_220DBEF70();
  OUTLINED_FUNCTION_0();
  v121 = v21;
  v122 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v127 = v26;
  v128 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_20();
  v34 = sub_220DBE240();
  v36 = v35;
  OUTLINED_FUNCTION_3_20();
  v126 = sub_220DBE240();
  v130 = v37;
  OUTLINED_FUNCTION_3_20();
  v38 = sub_220DBE240();
  v40 = v39;
  sub_220D34C0C(v132, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v134 = v34;
  if (!EnumCaseMultiPayload)
  {
    v132 = a3;
    v54 = *(v127 + 32);
    v120 = v33;
    v54(v29, v33, v128);
    sub_220DBEA80();
    v55 = sub_220DBEF60();
    v56 = *(v121 + 8);
    v124 = v38;
    v121 = v40;
    v57 = v122;
    v56(v24, v122);
    v58 = UVIndex.ExposureCategory.localizedString.getter(v55);
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220DC1CC0;
    sub_220DBEA80();
    v62 = sub_220DBEF50();
    v56(v24, v57);
    v63 = MEMORY[0x277D83C10];
    *(v61 + 56) = MEMORY[0x277D83B88];
    *(v61 + 64) = v63;
    *(v61 + 32) = v62;
    v64 = MEMORY[0x277D837D0];
    *(v61 + 96) = MEMORY[0x277D837D0];
    v65 = sub_220CEFDB0();
    v125 = v58;
    *(v61 + 72) = v58;
    *(v61 + 80) = v60;
    *(v61 + 136) = v64;
    *(v61 + 144) = v65;
    v66 = v134;
    *(v61 + 104) = v65;
    *(v61 + 112) = v66;
    *(v61 + 120) = v36;

    v129 = v36;
    v67 = v57;

    v68 = sub_220DC05F0();
    v123 = v69;
    v124 = v68;

    sub_220CEFE04();
    v70 = sub_220DC09E0();
    sub_220DBEA80();
    v71 = sub_220DBEF50();
    v56(v24, v57);
    v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v73 = [v70 stringFromNumber_];

    if (v73)
    {
      sub_220DC0620();
    }

    else
    {
      sub_220DBEA80();
      v96 = sub_220DBEF50();
      v56(v24, v67);
      v135 = v96;
      sub_220DC0C70();
    }

    v97 = v132;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    sub_220DBE250();
    sub_220DBE220();
    v99 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    v100 = *(v99 + 20);

    sub_220DBE250();
    sub_220DBE220();

    (*(v127 + 8))(v29, v128);
    __swift_storeEnumTagSinglePayload(v97 + v100, 0, 1, v131);
    OUTLINED_FUNCTION_5_19();
    v101 = v129;
    *v102 = v134;
    v102[1] = v101;
    OUTLINED_FUNCTION_2_17();
    v103 = v123;
    *v104 = v124;
    v104[1] = v103;
    v105 = (v97 + *(v99 + 48));
    sub_220DBE830();
    *v105 = 0u;
    v105[1] = 0u;
    v105[2] = 0u;
    v105[3] = 0u;
    OUTLINED_FUNCTION_6();
    (*(v106 + 8))(&v120[v98]);
    return;
  }

  sub_220DBE830();
  OUTLINED_FUNCTION_6();
  (*(v42 + 8))(v33);
  sub_220CEF48C(v125, v12);
  v43 = v129;
  if (__swift_getEnumTagSinglePayload(v12, 1, v129) == 1)
  {

    sub_220CEF4FC(v12);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v44 = sub_220DBF410();
    __swift_project_value_buffer(v44, qword_27CF95F78);
    v45 = sub_220DBF3F0();
    v46 = sub_220DC0980();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_220CD1000, v45, v46, "Failed to create chart header for UV Index due to missing extrema values", v47, 2u);
      MEMORY[0x223D98FB0](v47, -1, -1);
    }

    sub_220DBE250();
    sub_220DBE220();
    v48 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    __swift_storeEnumTagSinglePayload(a3 + v48[5], 1, 1, v131);
    v49 = (a3 + v48[6]);
    *v49 = 0;
    v49[1] = 0;
    *(a3 + v48[7]) = xmmword_220DC17B0;
    v50 = (a3 + v48[8]);
    *v50 = 0;
    v50[1] = 0;
    v51 = (a3 + v48[11]);
    *v51 = 0;
    v51[1] = 0;
    *(a3 + v48[9]) = 0;
    v52 = (a3 + v48[10]);
    *v52 = 0;
    v52[1] = 0xE000000000000000;
    v53 = (a3 + v48[12]);
    v53[2] = 0u;
    v53[3] = 0u;
    *v53 = 0u;
    v53[1] = 0u;
    return;
  }

  (*(v124 + 32))(v123, v12, v43);
  sub_220DBF2F0();
  v75 = round(v74);
  if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v75 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v132 = a3;
  v76 = v75;
  v77 = sub_220D44E2C(v75);
  v78 = v36;
  if (v77 == 5)
  {
    v79 = 0;
    v80 = 0;
  }

  else
  {
    v79 = UVIndex.ExposureCategory.localizedString.getter(v77);
    v80 = v81;
  }

  v82 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_220DC1CC0;
  v84 = MEMORY[0x277D83C10];
  *(v83 + 56) = MEMORY[0x277D83B88];
  *(v83 + 64) = v84;
  *(v83 + 32) = v76;
  v85 = MEMORY[0x277D837D0];
  *(v83 + 96) = MEMORY[0x277D837D0];
  v86 = sub_220CEFDB0();
  v128 = v79;
  if (v80)
  {
    v87 = v79;
  }

  else
  {
    v87 = 0;
  }

  v88 = 0xE000000000000000;
  if (v80)
  {
    v88 = v80;
  }

  *(v83 + 72) = v87;
  *(v83 + 80) = v88;
  *(v83 + 136) = v85;
  *(v83 + 144) = v86;
  *(v83 + 104) = v86;
  *(v83 + 112) = v82;
  *(v83 + 120) = v78;
  v89 = v78;

  v90 = sub_220DC05F0();
  v92 = v91;

  sub_220CEFE04();
  v93 = sub_220DC09E0();
  v94 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v95 = [v93 stringFromNumber_];

  if (v95)
  {
    sub_220DC0620();
  }

  else
  {
    v135 = v76;
    sub_220DC0C70();
  }

  v107 = v120;
  sub_220DBE250();
  v108 = v118;
  sub_220DBE220();
  v109 = v134;
  if (v80)
  {

    sub_220DBE250();
    sub_220DBE220();

    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  (*(v124 + 8))(v123, v129);
  v111 = v110;
  v112 = v131;
  __swift_storeEnumTagSinglePayload(v107, v111, 1, v131);
  v113 = v132;
  (*(v119 + 32))(v132, v108, v112);
  v114 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  sub_220CEFF68(v107, v113 + *(v114 + 20));
  OUTLINED_FUNCTION_5_19();
  *v115 = v109;
  v115[1] = v89;
  OUTLINED_FUNCTION_2_17();
  *v116 = v90;
  v116[1] = v92;
  v117 = (v113 + *(v114 + 48));
  *v117 = xmmword_220DC4910;
  v117[1] = xmmword_220DC4920;
  v117[2] = 0u;
  v117[3] = 0u;
}

uint64_t sub_220D44E2C(uint64_t a1)
{
  v3 = 0;
  if (sub_220DBEF10() > a1 || v2 < a1)
  {
    v3 = 1;
    if (sub_220DBEF10() > a1 || v5 < a1)
    {
      v3 = 2;
      if (sub_220DBEF10() > a1 || v7 < a1)
      {
        v3 = 3;
        if (sub_220DBEF10() > a1 || v9 < a1)
        {
          v3 = 4;
          if (sub_220DBEF10() > a1 || v11 < a1)
          {
            if (qword_27CF94F50 != -1)
            {
              swift_once();
            }

            v13 = sub_220DBF410();
            __swift_project_value_buffer(v13, qword_27CF95F78);
            v14 = sub_220DBF3F0();
            v15 = sub_220DC0980();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 134217984;
              *(v16 + 4) = a1;
              _os_log_impl(&dword_220CD1000, v14, v15, "Unable to find UV Index for extrema value = %ld", v16, 0xCu);
              MEMORY[0x223D98FB0](v16, -1, -1);
            }

            return 5;
          }
        }
      }
    }
  }

  return v3;
}

double ChanceOfRainChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v2 = sub_220DBE240();
  v4 = v3;
  v5 = sub_220D4527C();
  v7 = v6;
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;

  v11 = sub_220DC05F0();
  v13 = v12;

  sub_220DBE1D0();
  v14 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
  v15 = v14[5];
  v16 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a1 + v15, 1, 1, v16);
  v17 = (a1 + v14[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + v14[7]);
  *v18 = v5;
  v18[1] = v7;
  v19 = (a1 + v14[8]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v14[11]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v14[9]) = 0;
  v21 = (a1 + v14[10]);
  *v21 = v11;
  v21[1] = v13;
  v22 = (a1 + v14[12]);
  result = 0.0;
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

uint64_t sub_220D4527C()
{
  v1 = v0;
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DBEC20();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DBE830();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D34C0C(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v9;
      (*(v10 + 32))(v36, v17, v9);
      sub_220DBE810();
      type metadata accessor for ConditionDetailChartHeaderInput(0);
      v20 = sub_220DBE520();
      (*(v3 + 8))(v5, v2);
      switch(v20)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
LABEL_25:
            swift_once();
          }

          break;
      }

      sub_220DBE240();
      v29 = v36;
      sub_220DBE760();
      (*(v37 + 8))(v8, v38);
      sub_220DC07C0();
      v30 = sub_220DC07B0();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_220DC17A0;
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = sub_220CEFDB0();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      v27 = sub_220DC05F0();

      (*(v10 + 8))(v29, v19);
    }

    else
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v27 = sub_220DBE240();
      (*(v10 + 8))(v17, v9);
    }
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800);
    v22 = v9;
    (*(v10 + 32))(v14, &v17[*(v21 + 48)], v9);
    sub_220DBE760();
    (*(v37 + 8))(v8, v38);
    sub_220DC07C0();
    v23 = sub_220DC07B0();
    v25 = v24;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220DC17A0;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_220CEFDB0();
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
    v27 = sub_220DC05F0();

    (*(v10 + 8))(v14, v22);
    v28 = sub_220DBEAD0();
    (*(*(v28 - 8) + 8))(v17, v28);
  }

  return v27;
}

_BYTE *storeEnumTagSinglePayload for ChanceOfRainChartHeaderStringBuilder(_BYTE *result, int a2, int a3)
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

double HourWeather.chanceOfRain.getter(uint64_t a1)
{
  sub_220DBE8B0();

  sub_220DC07C0();
  return result;
}

uint64_t HourWeather.SecondValueUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

double HourWeather.secondValue(for:units:useCase:)(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v70 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_4();
  v65 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v66 = &v64 - v17;
  v69 = sub_220DBEF00();
  OUTLINED_FUNCTION_0();
  v67 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v64 = &v64 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v64 - v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v40 = &v64 - v39;
  v41 = *a1;
  if (v41 == 3)
  {
    sub_220DBE890();
LABEL_9:
    sub_220DBE130();
    v49 = *(v70 + 8);
    v49(v9, v4);
    sub_220DBE050();
    v42 = v50;
    v49(v12, v4);
    return v42;
  }

  if (v41 == 4)
  {
    sub_220DBE850();
    goto LABEL_9;
  }

  v42 = 0.0;
  if (v41 == 7)
  {
    v70 = v36;
    v43 = v35;
    v44 = (v67 + 8);
    if (*v68)
    {
      v68 = *(v37 + 24);
      sub_220DBE900();
      v45 = v65;
      sub_220DBEEE0();
      v46 = v69;
      v67 = *v44;
      (v67)(v22, v69);
      if (__swift_getEnumTagSinglePayload(v45, 1, v43) == 1)
      {
        sub_220D462DC(v45);
        sub_220DBE900();
        sub_220DBEEF0();
        (v67)(v27, v46);
        sub_220DBE130();
        v47 = OUTLINED_FUNCTION_2_18();
        v27(v47);
        sub_220DBE050();
        v42 = v48;
        (v27)(v40, v43);
      }

      else
      {
        sub_220DBE130();
        v60 = *(v70 + 8);
        v60(v45, v43);
        sub_220DBE050();
        v42 = v61;
        v60(v31, v43);
      }
    }

    else
    {
      v68 = v38;
      v52 = *(v37 + 16);
      sub_220DBE900();
      sub_220DBEEF0();
      v53 = *v44;
      v54 = v69;
      (*v44)(v27, v69);
      v67 = v52;
      sub_220DBE130();
      v55 = OUTLINED_FUNCTION_2_18();
      v27(v55);
      sub_220DBE050();
      v42 = v56;
      (v27)(v40, v43);
      v57 = v64;
      sub_220DBE900();
      v58 = v66;
      sub_220DBEEE0();
      (v53)(v57, v54);
      if (__swift_getEnumTagSinglePayload(v58, 1, v43) == 1)
      {
        sub_220D462DC(v58);
        v59 = v42;
      }

      else
      {
        v62 = v68;
        sub_220DBE130();
        (v27)(v58, v43);
        sub_220DBE050();
        v59 = v63;
        (v27)(v62, v43);
      }

      if (v42 <= v59)
      {
        return v59;
      }
    }
  }

  return v42;
}

uint64_t sub_220D462DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220D46354()
{
  result = qword_27CF95B08;
  if (!qword_27CF95B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95B08);
  }

  return result;
}

uint64_t _s18SecondValueUseCaseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18SecondValueUseCaseOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220D4650C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_220DBF340();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x277D84F90];
  sub_220CFB724();
  v10 = v21;
  v11 = *(sub_220DBE960() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = v6 + 32;
  v16 = *(v11 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v10;
    v13 = *(v10 + 16);
    if (v13 >= *(v10 + 24) >> 1)
    {
      sub_220CFB724();
      v10 = v21;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v18);
    v12 += v16;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D46710(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_220CFB7F4(0, v5, 0);
  v6 = v19;
  v8 = *(sub_220DBEB60() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v16 = *(v8 + 72);
  while (1)
  {
    a1(v18, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v18[0];
    v11 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_220CFB7F4((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    v9 += v16;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t CurrentMarkerValueCalculator.init(midpointInterpolator:detailChartDataPointValueCalculator:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_220DBF370();
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 32))(a3, a1);
  v7 = a3 + *(type metadata accessor for CurrentMarkerValueCalculator(0) + 20);

  return sub_220D33724(a2, v7);
}

uint64_t type metadata accessor for CurrentMarkerValueCalculator(uint64_t a1)
{
  result = qword_27CF95B20;
  if (!qword_27CF95B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double CurrentMarkerValueCalculator.value(for:hourlyWeather:currentWeather:dayWeather:units:timeZone:maxRange:interpolationMode:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v37 = a6;
  v36 = a4;
  v38 = a2;
  v41 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v40 = v13;
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  sub_220DBF350();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a5[1];
  v43[0] = *a5;
  v43[1] = v24;
  v43[2] = a5[2];
  v26 = v25;
  sub_220D47280(a7, v17, &qword_27CF95B10, &qword_220DC4A50);
  v42 = v26;
  if (__swift_getEnumTagSinglePayload(v17, 1, v26) == 1)
  {
    sub_220D46E50(v17);
    OUTLINED_FUNCTION_0_14();
    sub_220DC0790();
    return v27;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v42);
    OUTLINED_FUNCTION_0_14();
    v29 = sub_220DC0790();
    MEMORY[0x28223BE20](v29);
    *(&v35 - 6) = v36;
    *(&v35 - 40) = v23;
    *(&v35 - 4) = v43;
    *(&v35 - 3) = a3;
    v30 = v39;
    *(&v35 - 2) = v37;
    *(&v35 - 1) = v30;
    sub_220D4650C(sub_220D4712C, (&v35 - 8), v38);
    sub_220DBEA60();
    sub_220DBF360();
    v31 = OUTLINED_FUNCTION_1_24();
    v32(v31);

    if (((1 << v23) & 0xE4) != 0 || ((1 << v23) & 0x1A) == 0)
    {
      sub_220DC0790();
    }

    sub_220DC0790();
    v28 = v33;
    (*(v19 + 8))(v22, v42);
  }

  return v28;
}

uint64_t sub_220D46E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D46EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a8;
  v32 = a7;
  v14 = sub_220DBE560();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for WeatherValueCalculationContext(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220DBE960();
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  sub_220D47280(a2, &v18[v16[7]], &qword_27CF95A10, "Z");
  v20 = v16[10];
  v21 = sub_220DBEAD0();
  (*(*(v21 - 8) + 16))(&v18[v20], a5, v21);
  v22 = v16[11];
  v23 = sub_220DBE740();
  (*(*(v23 - 8) + 16))(&v18[v22], a6, v23);
  v18[v16[8]] = a3;
  v24 = &v18[v16[9]];
  v25 = a4[1];
  *v24 = *a4;
  *(v24 + 1) = v25;
  *(v24 + 2) = a4[2];
  v26 = (v32 + *(type metadata accessor for CurrentMarkerValueCalculator(0) + 20));
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v28 + 8);
  sub_220D472DC(a4, v34);
  v29(v18, v27, v28);
  sub_220DBE8F0();
  sub_220DBF320();
  return sub_220D47338(v18);
}

uint64_t sub_220D471A0(uint64_t a1)
{
  result = sub_220DBF370();
  if (v2 <= 0x3F)
  {
    result = sub_220D47224();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220D47224()
{
  result = qword_27CF95B30;
  if (!qword_27CF95B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF95B30);
  }

  return result;
}

uint64_t sub_220D47280(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D47338(uint64_t a1)
{
  v2 = type metadata accessor for WeatherValueCalculationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationTomorrowRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v50 = v5;
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v48 = v7 - v6;
  v8 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v45 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v47 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  v46 = &v44 - v20;
  type metadata accessor for NextPrecipitationEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  v28 = v2[3];
  v29 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v28);
  v30 = *(v29 + 8);
  v49 = a2;
  v30(a2, v28, v29);
  OUTLINED_FUNCTION_6_12();
  sub_220D49724(v27, v24, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v33 = v32[16];
    v34 = v32[20];
    (*(v10 + 32))(v46, v24 + v32[12], v8);
    sub_220CE1D80(v24 + v34, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D80(v24 + v33, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220DBEA60();
    type metadata accessor for PrecipitationComponentDescriptionContext(0);
    v35 = v45;
    sub_220DBE480();
    v36 = *(v10 + 8);
    v36(v14, v8);
    v37 = v48;
    sub_220DBE600();
    v38 = v47;
    sub_220DBE390();
    (*(v50 + 8))(v37, v51);
    v36(v35, v8);
    v39 = sub_220DBE460();
    v36(v38, v8);
    v40 = OUTLINED_FUNCTION_39();
    (v36)(v40);
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    sub_220CE1D80(v27, v41);
    v39 = 0;
    v27 = v24;
  }

  OUTLINED_FUNCTION_2_19();
  sub_220CE1D80(v27, v42);
  return v39 & 1;
}

char *PrecipitationTomorrowRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTomorrowSentence(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  v10 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = v2[3];
  v18 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v17);
  (*(v18 + 8))(a2, v17, v18);
  OUTLINED_FUNCTION_6_12();
  sub_220D49724(v16, v13, v19);
  v24 = *(a2 + *(type metadata accessor for PrecipitationComponentDescriptionContext(0) + 32));
  sub_220D478DC(v13, &v24, v8);
  v20 = sub_220D47BF4();
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_2_19();
  sub_220CE1D80(v16, v21);
  return v20;
}

uint64_t type metadata accessor for PrecipitationTomorrowSentence(uint64_t a1)
{
  result = qword_27CF95B38;
  if (!qword_27CF95B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D478DC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = *a2;
  type metadata accessor for NextPrecipitationEvent(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v21;
    v22 = *a1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v24 = *(v23 + 64);
    v33 = v23;
    v25 = *(v23 + 80);
    sub_220D15FF4(&a1[v24], v20);
    sub_220D15FF4(&a1[v25], v18);
    if (v22 == 2)
    {
      v26 = v20;
    }

    else
    {
      v26 = v18;
    }

    if (v22 != 2)
    {
      v18 = v20;
    }

    sub_220CE1D80(v26, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D15FF4(v18, v14);
    sub_220D49724(v14 + *(v10 + 20), v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      (*(v27 + 8))(v9);
    }

    else
    {
      sub_220CE1D80(v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
    sub_220D15FF4(v14, a3);
    *(a3 + v28) = v22;
    type metadata accessor for PrecipitationTomorrowSentence(0);
    OUTLINED_FUNCTION_14_12();
    swift_storeEnumTagMultiPayload();
    v31 = *(v33 + 48);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    return (*(v32 + 8))(&a1[v31]);
  }

  else
  {
    type metadata accessor for PrecipitationTomorrowSentence(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_19();
    return sub_220CE1D80(a1, v29);
  }
}

char *sub_220D47BF4()
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v5 = v3 - v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  type metadata accessor for PrecipitationTomorrowSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = (v17 - v16);
  OUTLINED_FUNCTION_1_25();
  sub_220D49724(v0, v18, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v23 = OUTLINED_FUNCTION_9_12();
      sub_220D15FF4(v23, v12);
      if (v5 == 2)
      {
        sub_220D48508(v12);
      }

      else
      {
        sub_220D48A0C(v12);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v25 = v12;
      goto LABEL_21;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v21 = OUTLINED_FUNCTION_9_12();
      sub_220D15FF4(v21, v9);
      if (v5 == 2)
      {
        sub_220D48070(v9);
      }

      else
      {
        sub_220D48F10(v9);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v25 = v9;
      goto LABEL_21;
    case 3u:
      v22 = v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48)];
      sub_220D15FF4(v18, v5);
      if (v22 == 2)
      {
        sub_220D48508(v5);
      }

      else
      {
        sub_220D48A0C(v5);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v25 = v5;
      goto LABEL_21;
    case 4u:
      v18 = "y in the past.";
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      OUTLINED_FUNCTION_21();
      return v18;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v20 = OUTLINED_FUNCTION_9_12();
      sub_220D15FF4(v20, v14);
      if (v5 == 2)
      {
        sub_220D48070(v14);
      }

      else
      {
        sub_220D482BC(v14);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v25 = v14;
LABEL_21:
      sub_220CE1D80(v25, v24);
      return v18;
  }
}

uint64_t sub_220D47F08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_220D47F48(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_220D47FA0(uint64_t a1)
{
  sub_220D48004(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D48004(uint64_t a1)
{
  if (!qword_27CF95B48)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95B48);
    }
  }
}

uint64_t sub_220D48508(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v40[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40[-1] - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-1] - v13;
  sub_220D49724(a1 + *(v2 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v16 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v16;
    *(v15 + 32) = v17;
    v18 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 0, v19, v20, v21, v22, v23, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    v25 = v24;
    v27 = v26;

    *(v15 + 96) = MEMORY[0x277D837D0];
    *(v15 + 104) = sub_220CEFDB0();
    *(v15 + 72) = v25;
    *(v15 + 80) = v27;
    v28 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_220CE1D80(v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v29 = sub_220DBF410();
    __swift_project_value_buffer(v29, qword_27CF95F48);
    sub_220D49724(a1, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v30 = sub_220DBF3F0();
    v31 = sub_220DC0980();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136446210;
      sub_220D49724(v7, v5, type metadata accessor for PrecipitationTotalStringAmount);
      v34 = sub_220DC0630();
      v36 = v35;
      sub_220CE1D80(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220D3F210(v34, v36, v40);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_220CD1000, v30, v31, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223D98FB0](v33, -1, -1);
      MEMORY[0x223D98FB0](v32, -1, -1);
    }

    else
    {

      sub_220CE1D80(v7, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_220D48A0C(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v40[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40[-1] - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-1] - v13;
  sub_220D49724(a1 + *(v2 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v16 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v16;
    *(v15 + 32) = v17;
    v18 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 0, v19, v20, v21, v22, v23, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    v25 = v24;
    v27 = v26;

    *(v15 + 96) = MEMORY[0x277D837D0];
    *(v15 + 104) = sub_220CEFDB0();
    *(v15 + 72) = v25;
    *(v15 + 80) = v27;
    v28 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_220CE1D80(v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v29 = sub_220DBF410();
    __swift_project_value_buffer(v29, qword_27CF95F48);
    sub_220D49724(a1, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v30 = sub_220DBF3F0();
    v31 = sub_220DC0980();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136446210;
      sub_220D49724(v7, v5, type metadata accessor for PrecipitationTotalStringAmount);
      v34 = sub_220DC0630();
      v36 = v35;
      sub_220CE1D80(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220D3F210(v34, v36, v40);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_220CD1000, v30, v31, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223D98FB0](v33, -1, -1);
      MEMORY[0x223D98FB0](v32, -1, -1);
    }

    else
    {

      sub_220CE1D80(v7, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_220D4915C(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v80 = (v5 - v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v79 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v78 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  v77 = &v76 - v12;
  type metadata accessor for PrecipitationTomorrowSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = (v14 - v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B50, &qword_220DC4BA8);
  v27 = OUTLINED_FUNCTION_18(v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v76 - v29;
  v31 = &v76 + *(v28 + 56) - v29;
  sub_220D49724(a1, &v76 - v29, type metadata accessor for PrecipitationTomorrowSentence);
  sub_220D49724(a2, v31, type metadata accessor for PrecipitationTomorrowSentence);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v30, v23, v53);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v55 = v23[v54];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v16 = v23;
        goto LABEL_21;
      }

      v56 = v31[v54];
      v57 = v78;
      sub_220D15FF4(v31, v78);
      if (*v23 == *v57)
      {
        OUTLINED_FUNCTION_12_12();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v59 = v58;
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v57, v60);
        if (v59)
        {
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v23, v61);
          v52 = v55 == v56;
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v57, v73);
      }

      OUTLINED_FUNCTION_0_15();
      v71 = v23;
      goto LABEL_38;
    case 2u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v30, v20, v36);
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v38 = v20[v37];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v16 = v20;
        goto LABEL_21;
      }

      v39 = v31[v37];
      v40 = v79;
      sub_220D15FF4(v31, v79);
      if (*v20 == *v40)
      {
        OUTLINED_FUNCTION_12_12();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v42 = v41;
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v40, v43);
        if (v42)
        {
          OUTLINED_FUNCTION_0_15();
          v45 = v20;
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v40, v69);
      }

      OUTLINED_FUNCTION_0_15();
      v71 = v20;
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v30, v16, v46);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v38 = v16[v47];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      v39 = v31[v47];
      v48 = v80;
      sub_220D15FF4(v31, v80);
      if (*v16 != *v48)
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v48, v72);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_12_12();
      static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
      v50 = v49;
      OUTLINED_FUNCTION_0_15();
      sub_220CE1D80(v48, v51);
      if ((v50 & 1) == 0)
      {
LABEL_33:
        OUTLINED_FUNCTION_0_15();
        v71 = v16;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_0_15();
      v45 = v16;
LABEL_14:
      sub_220CE1D80(v45, v44);
      v52 = v38 == v39;
LABEL_26:
      v35 = v52;
      sub_220CE1D80(v30, type metadata accessor for PrecipitationTomorrowSentence);
      return v35;
    case 4u:
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_15();
      return 1;
    default:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v30, v25, v32);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v34 = v25[v33];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = v25;
LABEL_21:
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v16, v62);
LABEL_22:
        sub_220D496BC(v30);
      }

      else
      {
        v63 = v31[v33];
        v64 = v77;
        sub_220D15FF4(v31, v77);
        if (*v25 == *v64)
        {
          OUTLINED_FUNCTION_12_12();
          static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
          v66 = v65;
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v64, v67);
          if (v66)
          {
            OUTLINED_FUNCTION_0_15();
            sub_220CE1D80(v25, v68);
            v52 = v34 == v63;
            goto LABEL_26;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v64, v74);
        }

        OUTLINED_FUNCTION_0_15();
        v71 = v25;
LABEL_38:
        sub_220CE1D80(v71, v70);
        OUTLINED_FUNCTION_4_15();
      }

      return 0;
  }
}

uint64_t sub_220D496BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B50, &qword_220DC4BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D49724(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

BOOL PrecipitationWithinTenDaysRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NextPrecipitationEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  (*(v12 + 8))(a2, v11, v12);
  sub_220CE1CC4(v10, v7, type metadata accessor for NextPrecipitationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v15 = v14[12];
    v16 = v14[16];
    sub_220CE1DD8(v7 + v14[20], type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1DD8(v7 + v16, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    (*(v17 + 8))(v7 + v15);
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
    sub_220CE1DD8(v7, v18);
  }

  return EnumCaseMultiPayload == 1;
}

void PrecipitationWithinTenDaysRule.description(for:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = type metadata accessor for PrecipitationWithinTenDaysSentence(0);
  v34 = OUTLINED_FUNCTION_18(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  v39 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  v43 = v20[3];
  v44 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v43);
  (*(v44 + 8))(v25, v43, v44);
  sub_220D4C324(v42, v21, type metadata accessor for NextPrecipitationEvent);
  v45 = type metadata accessor for PrecipitationComponentDescriptionContext(0);
  (*(v28 + 16))(v32, v25 + *(v45 + 28), v26);
  sub_220D49B50();
  sub_220D49F84();
  OUTLINED_FUNCTION_2_20();
  sub_220CE1DD8(v37, v46);
  OUTLINED_FUNCTION_4_16();
  sub_220CE1DD8(v42, v47);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinTenDaysSentence(uint64_t a1)
{
  result = qword_280FA6AE0;
  if (!qword_280FA6AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220D49B50()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v48 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v50 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v49 = v25 - v24;
  type metadata accessor for NextPrecipitationEvent(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v1;
    v47 = v5;
    v26 = *v3;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v28 = v27[16];
    v29 = v22;
    v30 = v27[20];
    v31 = &v3[v27[12]];
    v44 = *(v29 + 32);
    v45 = v29 + 32;
    v44(v49, v31, v50);
    sub_220CE1CC4(&v3[v28], v20, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1CC4(&v3[v30], v18, type metadata accessor for PrecipitationTotalStringAmount);
    if (v26 == 2)
    {
      v32 = v20;
    }

    else
    {
      v32 = v18;
    }

    if (v26 == 2)
    {
      v20 = v18;
    }

    sub_220CE1DD8(v32, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1CC4(v20, v14, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D4C324(v14 + *(v10 + 20), v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      (*(v33 + 8))(v9);
    }

    else
    {
      sub_220CE1DD8(v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8) + 80);
    OUTLINED_FUNCTION_1_26();
    v35 = v14;
    v36 = v47;
    sub_220CE1CC4(v35, v47, v37);
    v38 = OUTLINED_FUNCTION_14_13();
    v39(v38);
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v40 + 32))(v36 + v34, v46);
    type metadata accessor for PrecipitationWithinTenDaysSentence(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v41 + 8))(v1);
    type metadata accessor for PrecipitationWithinTenDaysSentence(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_16();
    sub_220CE1DD8(v3, v42);
  }

  OUTLINED_FUNCTION_24();
}

void sub_220D49F84()
{
  OUTLINED_FUNCTION_25();
  v56 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v54 = v6 - v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v55 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_11_1();
  v19 = type metadata accessor for PrecipitationTotalStringAmount(v18);
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  type metadata accessor for PrecipitationWithinTenDaysSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_5_20();
  sub_220D4C324(v0, v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v54 = v0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v41 = *(v27 + v40[12]);
    v42 = v40[16];
    v43 = v40[20];
    OUTLINED_FUNCTION_1_26();
    sub_220CE1CC4(v27, v23, v44);
    v45 = v55;
    (*(v12 + 32))(v2, v27 + v42, v55);
    v46 = v27 + v43;
    v47 = v56;
    (*(v4 + 32))(v10, v46, v56);
    v48 = (v4 + 8);
    if (v41 == 2)
    {
      sub_220D4A5D0(v23, v2, v10);
    }

    else
    {
      sub_220D4AA44(v23, v2, v10);
    }

    (*v48)(v10, v47);
    (*(v12 + 8))(v2, v45);
    OUTLINED_FUNCTION_0_16();
    v52 = v23;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v31 = *(v27 + v30[12]);
    v32 = v30[16];
    v33 = v30[20];
    OUTLINED_FUNCTION_1_26();
    sub_220CE1CC4(v27, v1, v34);
    v35 = v55;
    (*(v12 + 32))(v16, v27 + v32, v55);
    v36 = v27 + v33;
    v37 = v54;
    v38 = v56;
    (*(v4 + 32))(v54, v36, v56);
    v39 = (v4 + 8);
    if (v31 == 2)
    {
      sub_220D4AEB8(v16, v37, v1);
    }

    else
    {
      sub_220D4B3DC(v16, v37, v1);
    }

    (*v39)(v37, v38);
    (*(v12 + 8))(v16, v35);
    OUTLINED_FUNCTION_0_16();
    v52 = v1;
LABEL_14:
    sub_220CE1DD8(v52, v51);
    goto LABEL_15;
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_220DC17A0;
  v50 = MEMORY[0x277D83C10];
  *(v49 + 56) = MEMORY[0x277D83B88];
  *(v49 + 64) = v50;
  *(v49 + 32) = 10;
  sub_220DC05F0();

LABEL_15:
  OUTLINED_FUNCTION_24();
}

void sub_220D4A460(uint64_t a1)
{
  sub_220D4A4C0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D4A4C0(uint64_t a1)
{
  if (!qword_280FA6D80[0])
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for PrecipitationTotalStringAmount(255);
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, qword_280FA6D80);
    }
  }
}

uint64_t sub_220D4A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D4C324(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v32 = *(v5 + 8);
    v32(&v10[*(v31 + 48)], v4);
    v32(v10, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220DC17C0;
    v34 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 1, v35, v36, v37, v38, v39, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v45 = sub_220CEFDB0();
    *(v33 + 64) = v45;
    *(v33 + 32) = v41;
    *(v33 + 40) = v43;
    v46 = sub_220DBE4D0();
    *(v33 + 96) = v44;
    *(v33 + 104) = v45;
    *(v33 + 72) = v46;
    *(v33 + 80) = v47;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v5 + 8))(v7, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x277D837D0];
    *(v14 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    *(v14 + 104) = v28;
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    v29 = sub_220DBE4D0();
    *(v14 + 136) = v27;
    *(v14 + 144) = v28;
    *(v14 + 112) = v29;
    *(v14 + 120) = v30;
  }

  v48 = sub_220DC05F0();

  return v48;
}

uint64_t sub_220D4AA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D4C324(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v32 = *(v5 + 8);
    v32(&v10[*(v31 + 48)], v4);
    v32(v10, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220DC17C0;
    v34 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 1, v35, v36, v37, v38, v39, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v45 = sub_220CEFDB0();
    *(v33 + 64) = v45;
    *(v33 + 32) = v41;
    *(v33 + 40) = v43;
    v46 = sub_220DBE4D0();
    *(v33 + 96) = v44;
    *(v33 + 104) = v45;
    *(v33 + 72) = v46;
    *(v33 + 80) = v47;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v5 + 8))(v7, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x277D837D0];
    *(v14 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    *(v14 + 104) = v28;
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    v29 = sub_220DBE4D0();
    *(v14 + 136) = v27;
    *(v14 + 144) = v28;
    *(v14 + 112) = v29;
    *(v14 + 120) = v30;
  }

  v48 = sub_220DC05F0();

  return v48;
}

uint64_t sub_220D4AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  sub_220D4C324(a3 + *(v5 + 20), v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = a1;
    (*(v15 + 32))(v17, v13, v14);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8]);
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x277D837D0];
    *(v18 + 96) = MEMORY[0x277D837D0];
    v32 = sub_220CEFDB0();
    *(v18 + 104) = v32;
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v33 = sub_220DBE4D0();
    *(v18 + 136) = v31;
    *(v18 + 144) = v32;
    *(v18 + 112) = v33;
    *(v18 + 120) = v34;
    v35 = sub_220DC05F0();

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_220CE1DD8(v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v36 = sub_220DBF410();
    __swift_project_value_buffer(v36, qword_27CF95F48);
    sub_220D4C324(a3, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v37 = sub_220DBF3F0();
    v38 = sub_220DC0980();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49[0] = v40;
      *v39 = 136446210;
      sub_220D4C324(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v41 = sub_220DC0630();
      v43 = v42;
      sub_220CE1DD8(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v44 = sub_220D3F210(v41, v43, v49);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_220CD1000, v37, v38, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223D98FB0](v40, -1, -1);
      MEMORY[0x223D98FB0](v39, -1, -1);
    }

    else
    {

      sub_220CE1DD8(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v35;
}

uint64_t sub_220D4B3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  sub_220D4C324(a3 + *(v5 + 20), v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = a1;
    (*(v15 + 32))(v17, v13, v14);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8]);
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x277D837D0];
    *(v18 + 96) = MEMORY[0x277D837D0];
    v32 = sub_220CEFDB0();
    *(v18 + 104) = v32;
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v33 = sub_220DBE4D0();
    *(v18 + 136) = v31;
    *(v18 + 144) = v32;
    *(v18 + 112) = v33;
    *(v18 + 120) = v34;
    v35 = sub_220DC05F0();

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_220CE1DD8(v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v36 = sub_220DBF410();
    __swift_project_value_buffer(v36, qword_27CF95F48);
    sub_220D4C324(a3, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v37 = sub_220DBF3F0();
    v38 = sub_220DC0980();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49[0] = v40;
      *v39 = 136446210;
      sub_220D4C324(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v41 = sub_220DC0630();
      v43 = v42;
      sub_220CE1DD8(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v44 = sub_220D3F210(v41, v43, v49);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_220CD1000, v37, v38, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223D98FB0](v40, -1, -1);
      MEMORY[0x223D98FB0](v39, -1, -1);
    }

    else
    {

      sub_220CE1DD8(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v35;
}

void sub_220D4B900()
{
  OUTLINED_FUNCTION_25();
  v152 = v2;
  v153 = v3;
  v148 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v151 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v144 = (v6 - v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v146 = &v138 - v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v141 = &v138 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_1();
  sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v149 = v13;
  v150 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v143 = (v15 - v16);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  v147 = &v138 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v138 - v21;
  v142 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v145 = (v24 - v25);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  v28 = &v138 - v27;
  type metadata accessor for PrecipitationWithinTenDaysSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v32 = (v30 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = &v138 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B60, &qword_220DC4CA0);
  v37 = OUTLINED_FUNCTION_18(v36);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v138 - v39;
  v41 = &v138 + *(v38 + 56) - v39;
  sub_220D4C324(v152, &v138 - v39, type metadata accessor for PrecipitationWithinTenDaysSentence);
  sub_220D4C324(v153, v41, type metadata accessor for PrecipitationWithinTenDaysSentence);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v147 = v0;
    v139 = v22;
    v152 = v28;
    v153 = v1;
    OUTLINED_FUNCTION_5_20();
    sub_220D4C324(v40, v35, v74);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v76 = v75[12];
    v77 = v35[v76];
    v78 = v75[16];
    v48 = &v35[v78];
    v79 = v75[20];
    v50 = &v35[v79];
    OUTLINED_FUNCTION_16_10();
    if (!swift_getEnumCaseMultiPayload())
    {
      LODWORD(v146) = v77;
      v140 = v40;
      LODWORD(v145) = v41[v76];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1CC4(v41, v152, v89);
      v90 = v149;
      v91 = *(v150 + 32);
      v91(v139, &v35[v78], v149);
      v92 = *(v151 + 32);
      v93 = v148;
      v92(v153, &v35[v79], v148);
      v94 = &v41[v78];
      v95 = v147;
      v91(v147, v94, v90);
      v96 = &v41[v79];
      v60 = v152;
      v97 = v141;
      v92(v141, v96, v93);
      if (*v35 == *v60)
      {
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v98)
        {
          OUTLINED_FUNCTION_0_16();
          sub_220CE1DD8(v35, v99);
          v100 = v140;
          if (v146 != v145)
          {
            v127 = *(v151 + 8);
            OUTLINED_FUNCTION_12();
            v127();
            v128 = v149;
            v129 = *(v150 + 8);
            v129(v95, v149);
            (v127)(v153, v97);
            v129(v139, v128);
            OUTLINED_FUNCTION_0_16();
            sub_220CE1DD8(v60, v130);
            OUTLINED_FUNCTION_2_20();
            v119 = v100;
            goto LABEL_25;
          }

          v101 = v139;
          v102 = sub_220DBE460();
          v104 = v150;
          v103 = v151;
          v105 = v95;
          v106 = v153;
          if (v102)
          {
            MEMORY[0x223D96350](v153, v97);
            v107 = *(v103 + 8);
            v108 = v148;
            v107(v97, v148);
            v70 = *(v104 + 8);
            v109 = v149;
            v70(v105, v149);
            v107(v106, v108);
            v72 = v139;
            v73 = v109;
            goto LABEL_21;
          }

          v135 = *(v151 + 8);
          OUTLINED_FUNCTION_12();
          v135();
          v136 = *(v104 + 8);
          v137 = v149;
          v136(v105, v149);
          (v135)(v106, v97);
          v136(v101, v137);
          goto LABEL_31;
        }
      }

      OUTLINED_FUNCTION_9_13();
      sub_220CE1DD8(v35, v112);
      v113 = *(v151 + 8);
      v114 = v148;
      v113(v97, v148);
      v115 = v149;
      v86 = *(v150 + 8);
      v86(v95, v149);
      v113(v153, v114);
      v87 = v139;
      v88 = v115;
LABEL_23:
      v86(v87, v88);
      v116 = OUTLINED_FUNCTION_16_10();
LABEL_24:
      sub_220CE1DD8(v116, v117);
      OUTLINED_FUNCTION_2_20();
      v119 = v140;
LABEL_25:
      sub_220CE1DD8(v119, v118);
      goto LABEL_26;
    }

    v32 = v35;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_5_20();
    sub_220D4C324(v40, v32, v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v45 = v44[12];
    v46 = v32[v45];
    v47 = v44[16];
    v48 = &v32[v47];
    v49 = v44[20];
    v50 = &v32[v49];
    OUTLINED_FUNCTION_16_10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      LODWORD(v153) = v46;
      v140 = v40;
      LODWORD(v152) = v41[v45];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1CC4(v41, v145, v51);
      v52 = v149;
      v53 = *(v150 + 32);
      v53(v147, &v32[v47], v149);
      v54 = *(v151 + 32);
      v55 = v148;
      v54(v146, &v32[v49], v148);
      v56 = &v41[v47];
      v57 = v143;
      v53(v143, v56, v52);
      v58 = &v41[v49];
      v59 = v144;
      v60 = v145;
      v54(v144, v58, v55);
      if (*v32 == *v60)
      {
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v61)
        {
          OUTLINED_FUNCTION_0_16();
          sub_220CE1DD8(v32, v62);
          if (v153 == v152)
          {
            v63 = v147;
            v64 = sub_220DBE460();
            v66 = v150;
            v65 = v151;
            v67 = v57;
            if (v64)
            {
              v68 = v146;
              MEMORY[0x223D96350](v146, v59);
              v69 = *(v65 + 8);
              v151 = v65 + 8;
              OUTLINED_FUNCTION_12();
              v69();
              v70 = *(v66 + 8);
              v71 = v149;
              v70(v67, v149);
              (v69)(v68, v54);
              v72 = v63;
              v73 = v71;
LABEL_21:
              v70(v72, v73);
              OUTLINED_FUNCTION_0_16();
              sub_220CE1DD8(v60, v110);
              OUTLINED_FUNCTION_2_20();
              sub_220CE1DD8(v140, v111);
              goto LABEL_26;
            }

            v131 = *(v151 + 8);
            v132 = v148;
            v131(v59, v148);
            v133 = *(v66 + 8);
            v134 = v149;
            v133(v67, v149);
            v131(v146, v132);
            v133(v63, v134);
          }

          else
          {
            v120 = *(v151 + 8);
            v121 = v59;
            v122 = v57;
            v123 = v148;
            v120(v121, v148);
            v124 = *(v150 + 8);
            v125 = v122;
            v126 = v149;
            v124(v125, v149);
            v120(v146, v123);
            v124(v147, v126);
          }

LABEL_31:
          OUTLINED_FUNCTION_0_16();
          v116 = v60;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_9_13();
      sub_220CE1DD8(v32, v83);
      v84 = *(v151 + 8);
      OUTLINED_FUNCTION_12();
      v84();
      v85 = v149;
      v86 = *(v150 + 8);
      v86(v57, v149);
      (v84)(v146, v54);
      v87 = v147;
      v88 = v85;
      goto LABEL_23;
    }

LABEL_11:
    v80 = v150;
    (*(v151 + 8))(v50, v148);
    (*(v80 + 8))(v48, v149);
    OUTLINED_FUNCTION_0_16();
    sub_220CE1DD8(v32, v81);
LABEL_14:
    sub_220D4C2BC(v40);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_16_10();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_20();
  sub_220CE1DD8(v40, v82);
LABEL_26:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4C2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B60, &qword_220DC4CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D4C324(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

void PrecipitationWithinSevenDaysRule.isSatisfied(for:data:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v52 = v4;
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v51 = v6 - v5;
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v46 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v49 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v48 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v20);
  v47 = &v46 - v21;
  type metadata accessor for NextPrecipitationEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  v29 = v0[3];
  v30 = v0[4];
  v31 = __swift_project_boxed_opaque_existential_1(v0, v29);
  v32 = *(v30 + 8);
  v50 = v2;
  v32(v2, v29, v30);
  OUTLINED_FUNCTION_16_11();
  sub_220D4F578(v28, v25, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v35 = v34[16];
    v36 = v34[20];
    v37 = v47;
    (*(v9 + 32))(v47, v25 + v34[12], v7);
    OUTLINED_FUNCTION_8_12();
    sub_220CE1E30(v25 + v36, v38);
    sub_220CE1E30(v25 + v35, v31);
    type metadata accessor for PrecipitationComponentDescriptionContext(0);
    v39 = v48;
    sub_220DBE480();
    sub_220DBEA60();
    v40 = v46;
    sub_220DBE480();
    v41 = *(v9 + 8);
    v41(v13, v7);
    v42 = v51;
    sub_220DBE6A0();
    v43 = v49;
    sub_220DBE390();
    (*(v52 + 8))(v42, v53);
    v41(v40, v7);
    sub_220DBE440();
    v41(v43, v7);
    v41(v39, v7);
    v41(v37, v7);
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    sub_220CE1E30(v28, v44);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_21();
  sub_220CE1E30(v28, v45);
  OUTLINED_FUNCTION_24();
}

void PrecipitationWithinSevenDaysRule.description(for:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = type metadata accessor for PrecipitationWithinSevenDaysSentence(0);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  v38 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  v45 = v20[3];
  v46 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v45);
  (*(v46 + 8))(v24, v45, v46);
  OUTLINED_FUNCTION_16_11();
  sub_220D4F578(v44, v41, v47);
  v48 = type metadata accessor for PrecipitationComponentDescriptionContext(0);
  (*(v27 + 16))(v31, v24 + *(v48 + 28), v25);
  sub_220D4C954();
  sub_220D4CD28();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_21();
  sub_220CE1E30(v36, v49);
  OUTLINED_FUNCTION_3_21();
  sub_220CE1E30(v44, v50);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinSevenDaysSentence(uint64_t a1)
{
  result = qword_27CF95B70;
  if (!qword_27CF95B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220D4C954()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v43 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  v45 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v44 = v25 - v24;
  type metadata accessor for NextPrecipitationEvent(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v1;
    v42 = v5;
    v40[1] = v10;
    v26 = *v3;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v28 = v27[16];
    v29 = v27[20];
    v30 = *(v22 + 32);
    v31 = &v3[v27[12]];
    v40[2] = v22 + 32;
    v30(v44, v31, v45);
    sub_220D15FF4(&v3[v28], v20);
    sub_220D15FF4(&v3[v29], v18);
    if (v26 == 2)
    {
      v32 = v20;
    }

    else
    {
      v32 = v18;
    }

    if (v26 == 2)
    {
      v20 = v18;
    }

    sub_220CE1E30(v32, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D15FF4(v20, v14);
    OUTLINED_FUNCTION_7_14();
    sub_220D4F578(v14 + v33, v9, v34);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      (*(v35 + 8))(v9);
    }

    else
    {
      sub_220CE1E30(v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    OUTLINED_FUNCTION_23_8();
    v36 = OUTLINED_FUNCTION_27_3();
    (v30)(v36);
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v37 + 32))(v30 + v9, v41);
    type metadata accessor for PrecipitationWithinSevenDaysSentence(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v38 + 8))(v1);
    type metadata accessor for PrecipitationWithinSevenDaysSentence(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_21();
    sub_220CE1E30(v3, v39);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4D92C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 3:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_22:
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_6_0();
      break;
    default:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_19:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_6_0();
      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4DB80(uint64_t a1, uint64_t a2)
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4DECC(uint64_t a1, uint64_t a2)
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E244(uint64_t a1, uint64_t a2)
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E58C(uint64_t a1, uint64_t a2)
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E8D8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 3:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_22:
      OUTLINED_FUNCTION_12_13();
      OUTLINED_FUNCTION_6_0();
      break;
    default:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_19:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_6_0();
      break;
  }

  return sub_220DBE240();
}

void sub_220D4EB2C()
{
  OUTLINED_FUNCTION_25();
  v139 = v1;
  v140 = v2;
  v135 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v137 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v131 = (v5 - v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v133 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v128 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  v13 = &v127 - v12;
  v136 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v138 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v130 = (v16 - v17);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v134 = v19;
  OUTLINED_FUNCTION_23();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v127 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v127 - v24;
  v129 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v132 = (v27 - v28);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_25_5();
  type metadata accessor for PrecipitationWithinSevenDaysSentence(v30);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = &v127 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B80, &unk_220DC4DB0);
  v39 = OUTLINED_FUNCTION_18(v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v127 - v41;
  v43 = &v127 + *(v40 + 56) - v41;
  sub_220D4F578(v139, &v127 - v41, type metadata accessor for PrecipitationWithinSevenDaysSentence);
  sub_220D4F578(v140, v43, type metadata accessor for PrecipitationWithinSevenDaysSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v133 = v23;
    v134 = v0;
    v127 = v25;
    v139 = v13;
    OUTLINED_FUNCTION_9_14();
    sub_220D4F578(v42, v37, v73);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v75 = v74[12];
    v76 = v37[v75];
    v77 = v74[16];
    v50 = &v37[v77];
    v78 = v74[20];
    v52 = &v37[v78];
    if (!swift_getEnumCaseMultiPayload())
    {
      LODWORD(v132) = v76;
      v140 = v42;
      LODWORD(v131) = v43[v75];
      sub_220D15FF4(v43, v134);
      v87 = *(v138 + 32);
      v55 = v136;
      v87(v127, &v37[v77], v136);
      v88 = *(v137 + 32);
      v89 = v135;
      v88(v139, &v37[v78], v135);
      v87(v133, &v43[v77], v55);
      v90 = v128;
      v88(v128, &v43[v78], v89);
      v60 = v134;
      if (*v37 == *v134)
      {
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v91)
        {
          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v37, v92);
          v93 = v140;
          if (v132 == v131)
          {
            v94 = v127;
            v95 = v133;
            v96 = sub_220DBE460();
            v97 = v137;
            v98 = v138;
            v99 = v139;
            if (v96)
            {
              v100 = OUTLINED_FUNCTION_30_3();
              MEMORY[0x223D96350](v100);
              v101 = *(v97 + 8);
              v102 = v135;
              v101(v90, v135);
              v103 = *(v98 + 8);
              v104 = v136;
              v103(v95, v136);
              v101(v99, v102);
              v103(v127, v104);
              OUTLINED_FUNCTION_1_27();
              sub_220CE1E30(v60, v105);
              OUTLINED_FUNCTION_2_21();
              v72 = v93;
              goto LABEL_24;
            }

            v121 = *(v137 + 8);
            OUTLINED_FUNCTION_12();
            v121();
            v122 = *(v98 + 8);
            v123 = v95;
            v124 = v136;
            v122(v123, v136);
            v125 = OUTLINED_FUNCTION_30_3();
            (v121)(v125);
            v122(v94, v124);
          }

          else
          {
            v115 = *(v137 + 8);
            OUTLINED_FUNCTION_12();
            v115();
            v116 = *(v138 + 8);
            v117 = v136;
            v116(v133, v136);
            (v115)(v139, v90);
            v116(v127, v117);
          }

          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v60, v126);
          OUTLINED_FUNCTION_2_21();
          v72 = v93;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8_12();
      sub_220CE1E30(v37, v106);
      v107 = *(v137 + 8);
      v108 = v135;
      v107(v90, v135);
      v84 = *(v138 + 8);
      v109 = v136;
      (v84)(v133, v136);
      v107(v139, v108);
      v85 = v127;
      v86 = v109;
      goto LABEL_22;
    }

    v34 = v37;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_9_14();
    sub_220D4F578(v42, v34, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v47 = v46[12];
    v48 = v34[v47];
    v49 = v46[16];
    v50 = &v34[v49];
    v51 = v46[20];
    v52 = &v34[v51];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      LODWORD(v139) = v48;
      v140 = v42;
      LODWORD(v128) = v43[v47];
      sub_220D15FF4(v43, v132);
      v53 = *(v138 + 32);
      v54 = v136;
      v53(v134, &v34[v49], v136);
      v55 = *(v137 + 32);
      v56 = v135;
      v55(v133, &v34[v51], v135);
      v57 = &v43[v49];
      v58 = v130;
      v53(v130, v57, v54);
      v59 = v131;
      v55(v131, &v43[v51], v56);
      v60 = v132;
      if (*v34 == *v132)
      {
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v61)
        {
          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v34, v62);
          if (v139 == v128)
          {
            v63 = v134;
            OUTLINED_FUNCTION_30_3();
            v64 = sub_220DBE460();
            v65 = v137;
            v66 = v138;
            if (v64)
            {
              v67 = v133;
              MEMORY[0x223D96350](v133, v59);
              v68 = *(v65 + 8);
              OUTLINED_FUNCTION_12();
              v68();
              v69 = *(v66 + 8);
              OUTLINED_FUNCTION_24_6();
              v69();
              (v68)(v67, v58);
              (v69)(v63, v58);
              OUTLINED_FUNCTION_1_27();
              sub_220CE1E30(v60, v70);
              OUTLINED_FUNCTION_2_21();
              v72 = v140;
LABEL_24:
              sub_220CE1E30(v72, v71);
              goto LABEL_25;
            }

            v118 = *(v137 + 8);
            v119 = v135;
            v118(v59, v135);
            v120 = *(v66 + 8);
            OUTLINED_FUNCTION_24_6();
            v120();
            v118(v133, v119);
            (v120)(v63, v59);
          }

          else
          {
            v112 = *(v137 + 8);
            v113 = v135;
            v112(v59, v135);
            v114 = *(v138 + 8);
            OUTLINED_FUNCTION_24_6();
            v114();
            v112(v133, v113);
            (v114)(v134, v59);
          }

          OUTLINED_FUNCTION_1_27();
          v110 = v60;
LABEL_23:
          sub_220CE1E30(v110, v111);
          OUTLINED_FUNCTION_2_21();
          v72 = v140;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8_12();
      sub_220CE1E30(v34, v82);
      v83 = *(v137 + 8);
      OUTLINED_FUNCTION_12();
      v83();
      v84 = *(v138 + 8);
      OUTLINED_FUNCTION_24_6();
      v84();
      (v83)(v133, v58);
      v85 = v134;
      v86 = v58;
LABEL_22:
      (v84)(v85, v86);
      v110 = v60;
      v111 = v55;
      goto LABEL_23;
    }

LABEL_11:
    v79 = v138;
    (*(v137 + 8))(v52, v135);
    (*(v79 + 8))(v50, v136);
    OUTLINED_FUNCTION_1_27();
    sub_220CE1E30(v34, v80);
LABEL_14:
    sub_220D4F510(v42);
    goto LABEL_25;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_21();
  sub_220CE1E30(v42, v81);
LABEL_25:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4F510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B80, &unk_220DC4DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D4F578(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t PrecipitationTotalPlatterViewModelFactory.makeModel(currentWeather:dayWeather:unit:timeZone:)@<X0>(void *a3@<X2>, uint64_t *x8_0@<X8>)
{
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_220DBEA60();
  sub_220DBE480();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_220DBE810();
  v15 = sub_220DBE460();
  v14(v11, v7);
  if (v15)
  {
    v16.n128_f64[0] = sub_220D4F7CC(a3, x8_0);
  }

  else
  {
    sub_220DBE810();
    v17 = sub_220DBE440();
    v14(v11, v7);
    sub_220D4FB34(a3, v17 & 1, x8_0);
  }

  return (v14)(v13, v7, v16);
}

double sub_220D4F7CC@<D0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_220DBEA50();
  v6 = sub_220DBEE10();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v21 = sub_220D4FD20(v5, a1, 1);
  sub_220CDA548(v5, &qword_27CF95B88, &unk_220DC4E40);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v7 = swift_allocObject();
  v19 = xmmword_220DC17A0;
  *(v7 + 16) = xmmword_220DC17A0;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = 24;
  v20 = sub_220DC05F0();
  v10 = v9;

  sub_220DBEA40();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v11 = sub_220D4FD20(v5, a1, 0);
  sub_220CDA548(v5, &qword_27CF95B88, &unk_220DC4E40);
  sub_220DBE240();
  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = MEMORY[0x277D83C10];
  *(v12 + 32) = 24;
  v13 = sub_220DC05F0();
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B90, &unk_220DC4E50);
  v16 = swift_allocObject();
  *&result = 2;
  *(v16 + 16) = xmmword_220DC17C0;
  v18 = v21;
  *(v16 + 32) = v20;
  *(v16 + 40) = v10;
  *(v16 + 48) = v18;
  *(v16 + 56) = v13;
  *(v16 + 64) = v15;
  *(v16 + 72) = v11;
  *v22 = v16;
  return result;
}

uint64_t sub_220D4FB34@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v6 = sub_220DBEBA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  sub_220DBE820();
  v13 = sub_220DBEB80();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    sub_220DBE7E0();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_220DBEE10();
  __swift_storeEnumTagSinglePayload(v12, v14, 1, v15);
  v16 = sub_220D4FD20(v12, a1, a2 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B90, &unk_220DC4E50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220DC17A0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = v16;
  result = sub_220CDA548(v12, &qword_27CF95B88, &unk_220DC4E40);
  *a3 = v17;
  return result;
}

uint64_t sub_220D4FD20(uint64_t a1, void *a2, int a3)
{
  LODWORD(v80) = a3;
  v78 = a1;
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - v5;
  v7 = type metadata accessor for PrecipitationTotalStringAmount(0);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_220DBEC90();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBEC20();
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v18 = sub_220DBEE10();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v67 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  sub_220CFD2D8(v78, v17, &qword_27CF95B88, &unk_220DC4E40);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_220CDA548(v17, &qword_27CF95B88, &unk_220DC4E40);
    return sub_220D5074C(v79);
  }

  v69 = v19;
  v25 = *(v19 + 32);
  v70 = v18;
  v25(v23, v17, v18);
  v26 = swift_allocObject();
  v78 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v66 = v26 + 16;
  v27 = v23;
  sub_220DBEE00();
  v28 = v76;
  v29 = v76 + 104;
  v30 = *(v76 + 104);
  v30(v12, *MEMORY[0x277CE3398], v10);
  sub_220D509F0(v14, v12, v26, v80 & 1);
  v71 = *(v28 + 8);
  v71(v12, v10);
  v74 = *(v74 + 8);
  v31 = v77;
  (v74)(v14, v77);
  sub_220DBEDF0();
  v30(v12, *MEMORY[0x277CE33B0], v10);
  sub_220D509F0(v14, v12, v78, v80 & 1);
  v71(v12, v10);
  (v74)(v14, v31);
  sub_220DBEDE0();
  v32 = *MEMORY[0x277CE33A8];
  v64 = v29;
  v63 = v30;
  v30(v12, v32, v10);
  sub_220D509F0(v14, v12, v78, v80 & 1);
  v65 = v12;
  v33 = v66;
  v71(v12, v10);
  v34 = v74;
  (v74)(v14, v31);
  v35 = v72;
  v36 = v27;
  sub_220DBEDC0();
  sub_220DBEC70();
  (*(v73 + 8))(v35, v75);
  sub_220DBE050();
  v38 = v37;
  v39 = v31;
  v40 = v34;
  v34(v14, v39);
  v41 = v79;
  if (v38 > 0.0)
  {
    if (v80)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    LOBYTE(__src[0]) = v42;
    (*(v69 + 16))(v67, v27, v70);
    v43 = v68;
    PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)();
    PrecipitationTotalStringAmount.maxAmount.getter(v14);
    v44 = v77;
    sub_220DBE050();
    v46 = v45;
    v40(v14, v44);
    if (v46 > 0.0)
    {
      v47 = v65;
      v63(v65, *MEMORY[0x277CE33A0], v10);
      v48 = v36;
      v49 = *(v81 + 48);
      (*(v76 + 32))(v6, v47, v10);
      sub_220CDDC14(v43, &v6[v49], type metadata accessor for PrecipitationTotalStringAmount);
      swift_beginAccess();
      sub_220D513A0();
      v50 = *(*v33 + 16);
      sub_220D513EC(v50);
      v51 = *v33;
      *(v51 + 16) = v50 + 1;
      sub_220D514E0(v6, v51 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v50);
      *v33 = v51;
      v36 = v48;
      swift_endAccess();
    }

    sub_220CE1C00(v43);
    v41 = v79;
  }

  swift_beginAccess();
  v52 = *v33;
  if (!*(*v33 + 16))
  {
    v24 = sub_220D5074C(v41);
    (*(v69 + 8))(v36, v70);
LABEL_20:

    return v24;
  }

  v80 = v36;
  __src[0] = v52;
  swift_bridgeObjectRetain_n();
  sub_220D5142C(__src);
  v53 = v70;
  v54 = v69;

  v55 = __src[0];
  v56 = *(__src[0] + 16);
  if (!v56)
  {

    (*(v54 + 8))(v80, v53);

    return MEMORY[0x277D84F90];
  }

  v84 = MEMORY[0x277D84F90];
  sub_220CFB77C(0, v56, 0);
  v57 = 0;
  v24 = v84;
  v58 = v55 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
  while (v57 < v55[2])
  {
    sub_220CFD2D8(&v58[*(v82 + 72) * v57], v6, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220D510E8(__src);
    sub_220CDA548(v6, &qword_27CF952C0, &unk_220DC4FC0);
    v84 = v24;
    v60 = *(v24 + 16);
    v59 = *(v24 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_220CFB77C((v59 > 1), v60 + 1, 1);
      v24 = v84;
    }

    *(v24 + 16) = v60 + 1;
    memcpy((v24 + 72 * v60 + 32), __src, 0x48uLL);
    if (v56 - 1 == v57)
    {

      (*(v69 + 8))(v80, v70);
      goto LABEL_20;
    }

    ++v57;
  }

  __break(1u);

  __break(1u);
  return result;
}