uint64_t sub_220CED714()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967C8, &unk_220DC8598);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF96050, &qword_220DC6030);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967C0, &qword_220DC8590);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B8, &qword_220DC8588);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF967B0, &qword_220DC8580);
  v4 = sub_220DB5B50();
  v12 = OUTLINED_FUNCTION_11_21(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  v20 = OUTLINED_FUNCTION_11_21(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  OUTLINED_FUNCTION_11_21(v20, v21, v22, v23, v24, v25, v26, v27, v1);
  v28 = sub_220DBF590();
  v44 = OUTLINED_FUNCTION_11_21(v28, v29, v30, v31, v32, v33, v34, v35, v28);
  return OUTLINED_FUNCTION_11_21(v44, v36, v37, v38, v39, v40, v41, v42, v0);
}

uint64_t sub_220CED868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for DetailChartDataElement.ValueLabel(0);
  OUTLINED_FUNCTION_5();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 32);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 36) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_220CED954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_0();
  sub_220DBE560();
  OUTLINED_FUNCTION_5();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for DetailChartDataElement.ValueLabel(0);
    OUTLINED_FUNCTION_5();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 36) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 32);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_220CEDABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 6)
    {
      return v8 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220CEDB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_220CEDD10(uint64_t a1, uint64_t a2)
{
  if (sub_220DBE460())
  {
    type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(0);

    JUMPOUT(0x223D96350);
  }

  return 0;
}

uint64_t sub_220CEDD70(uint64_t a1)
{
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(0);
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_220DC0560();
}

uint64_t sub_220CEDE48()
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(0);
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t sub_220CEDF40()
{
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220CF0168(&qword_280FA77A0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_220DC0560();
  sub_220DBE740();
  sub_220CF0168(&qword_27CF94FE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t HumidityChartHeaderStringBuilder.__allocating_init(humidityTitleStringBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  HumidityChartHeaderStringBuilder.init(humidityTitleStringBuilder:)(a1);
  return v2;
}

uint64_t HumidityChartHeaderStringBuilder.init(humidityTitleStringBuilder:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F88, &unk_220DC17D0);
  swift_allocObject();
  *(v1 + 56) = sub_220DBF280();
  sub_220CD570C(a1, v1 + 16);
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void HumidityChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v182 = a3;
  v192 = a2;
  v202 = a1;
  v197 = a4;
  v177 = sub_220DBECB0();
  OUTLINED_FUNCTION_0();
  v176 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_14(v7 - v6);
  v180 = type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  v190 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  v191 = &v170 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14(&v170 - v18);
  v19 = sub_220DBE260();
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v195 = v22 - v21;
  v196 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v181 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14(&v170 - v26);
  v27 = sub_220DBE5E0();
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v198 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F98, &qword_220DC17E8);
  OUTLINED_FUNCTION_0();
  v200 = v32;
  v201 = v31;
  MEMORY[0x28223BE20](v31);
  v199 = &v170 - v33;
  v189 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v188 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v187 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v186 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v184 = v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v170 - v46;
  v194 = sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1();
  v53 = v52 - v51;
  type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  v58 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1();
  v64 = v63 - v62;
  sub_220CEFC54(v202, v57, type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind);
  if (!swift_getEnumCaseMultiPayload())
  {
    v183 = v60;
    v192 = v58;
    v180 = v49;
    v79 = *(v49 + 32);
    v190 = v57;
    v79(v53, v57, v194);
    sub_220DBEA90();
    sub_220DC02B0();
    v80 = v188;
    v81 = v189;
    (*(v188 + 104))(v38, *MEMORY[0x277D7B408], v189);
    sub_220DBF100();
    sub_220DBF0D0();
    sub_220CF0168(&qword_280FA6610, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
    v82 = v185;
    v83 = v187;
    v191 = sub_220DBE0B0();
    v202 = v84;

    (*(v80 + 8))(v38, v81);
    OUTLINED_FUNCTION_8_0();
    v85(v43, v83);
    OUTLINED_FUNCTION_8_0();
    v86(v47, v82);
    sub_220DBEAA0();
    v203 = v87;
    sub_220DBE570();
    sub_220CEFCB0();
    v88 = v199;
    sub_220DBE290();
    sub_220CEFD04();
    v89 = v201;
    sub_220DC0520();
    (*(v200 + 8))(v88, v89);
    v90 = v204;
    v91 = v205;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    v201 = v53;
    OUTLINED_FUNCTION_11();
    v199 = v92;
    sub_220DBE240();
    OUTLINED_FUNCTION_17_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_220DC17C0;
    v94 = MEMORY[0x277D837D0];
    *(v93 + 56) = MEMORY[0x277D837D0];
    v95 = sub_220CEFDB0();
    *(v93 + 32) = v90;
    *(v93 + 40) = v91;
    *(v93 + 96) = v94;
    *(v93 + 104) = v95;
    v96 = v191;
    *(v93 + 64) = v95;
    *(v93 + 72) = v96;
    *(v93 + 80) = v202;

    v200 = sub_220DC05F0();
    v98 = v97;

    sub_220CEFE04();
    v99 = sub_220DC09F0();
    sub_220CEFE48(v99);
    if (v100)
    {
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
      v102 = sub_220DC06A0();

      v103 = v190;
      if (v102)
      {
        v193 = v101;
        v198 = v98;
        v204 = v90;
        v205 = v91;
        v104 = sub_220DC09F0();
        v105 = sub_220CEFE48(v104);
        if (!v106)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_23_0(v105, v106);
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_11();
        sub_220DC0B00();
        OUTLINED_FUNCTION_22_0();
        sub_220DBE250();
        v107 = v179;
        sub_220DBE220();
        v108 = sub_220DC09F0();
        sub_220CEFE48(v108);
        if (!v109)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_21();

        sub_220DBE250();
        v110 = v178;
        OUTLINED_FUNCTION_20();
        sub_220DBE220();
        v111 = v196;
        __swift_storeEnumTagSinglePayload(v110, 0, 1, v196);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_21();
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_19_0(v112, MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_20();
        v113 = sub_220DC05F0();
        v115 = v114;

        OUTLINED_FUNCTION_8_0();
        v116(v201, v194);
        v117 = OUTLINED_FUNCTION_16();
        v118(v117, v107, v111);
        v119 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
        sub_220CEFF68(v110, v112 + v119[5]);
        OUTLINED_FUNCTION_7_0(v119[6]);
        v120 = (v112 + v119[7]);
        *v120 = v113;
        v120[1] = v115;
        OUTLINED_FUNCTION_7_0(v119[8]);
        OUTLINED_FUNCTION_7_0(v119[11]);
        *(v112 + v119[9]) = 0;
        v121 = (v112 + v119[10]);
        v122 = v198;
        *v121 = v200;
        v121[1] = v122;
        v123 = (v112 + v119[12]);
        v123[2] = 0u;
        v123[3] = 0u;
        *v123 = 0u;
        v123[1] = 0u;
        OUTLINED_FUNCTION_5_0();
        v125 = v190 + v193;
      }

      else
      {
        v134 = v197;
        sub_220CEF564(v90, v91, v182, v197);

        v135 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
        OUTLINED_FUNCTION_15(v135);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_17_2();
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_220DC17A0;
        OUTLINED_FUNCTION_19_0(v136, MEMORY[0x277D837D0]);
        sub_220DC05F0();

        OUTLINED_FUNCTION_8_0();
        v137(v201, v194);
        OUTLINED_FUNCTION_2_1();
        *v138 = v200;
        v138[1] = v98;
        v139 = v134 + *(v90 + 48);
        *v139 = 0xD000000000000011;
        *(v139 + 8) = 0x8000000220DC8DC0;
        *(v139 + 16) = 0u;
        *(v139 + 32) = 0u;
        *(v139 + 48) = 0xD000000000000015;
        *(v139 + 56) = 0x8000000220DC8DE0;
        OUTLINED_FUNCTION_5_0();
        v125 = v103 + v101;
      }

      v124(v125, v192);
      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v65 = v199;
  v67 = v200;
  v66 = v201;
  (*(v60 + 32))(v64, v57, v58);
  v68 = v191;
  sub_220CEF48C(v192, v191);
  v69 = sub_220DBF310();
  v70 = v64;
  if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
  {
    (*(v60 + 8))(v64, v58);
    sub_220CEF4FC(v68);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v71 = sub_220DBF410();
    __swift_project_value_buffer(v71, qword_27CF95F78);
    v72 = sub_220DBF3F0();
    v73 = sub_220DC0980();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_220CD1000, v72, v73, "Failed to create chart header for Humidity due to missing extrema values", v74, 2u);
      MEMORY[0x223D98FB0](v74, -1, -1);
    }

    sub_220DBE250();
    v75 = v197;
    sub_220DBE220();
    v76 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    __swift_storeEnumTagSinglePayload(v75 + v76[5], 1, 1, v196);
    OUTLINED_FUNCTION_7_0(v76[6]);
    *(v75 + v76[7]) = xmmword_220DC17B0;
    OUTLINED_FUNCTION_7_0(v76[8]);
    OUTLINED_FUNCTION_7_0(v76[11]);
    *(v75 + v76[9]) = 0;
    v77 = (v75 + v76[10]);
    *v77 = 0;
    v77[1] = 0xE000000000000000;
    v78 = v76[12];
    goto LABEL_27;
  }

  v183 = v60;
  v192 = v58;
  sub_220CEF4FC(v68);
  v126 = v190;
  sub_220DBE810();
  v127 = *(type metadata accessor for ConditionDetailChartHeaderInput(0) + 32);
  v128 = *(v180 + 20);
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  (*(v129 + 16))(v126 + v128, v202 + v127);

  sub_220DBF290();

  v171 = v70;
  if (v205)
  {
    v130 = v174;
    sub_220DBE7A0();
    sub_220DBECA0();
    v132 = v131;
    OUTLINED_FUNCTION_8_0();
    v133(v130, v177);
    sub_220CEFC54(v126, v175, type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey);
    v204 = v132;
    LOBYTE(v205) = 0;

    sub_220DBF2A0();
  }

  else
  {
    v132 = v204;
  }

  v203 = v132;
  sub_220DBE570();
  sub_220CEFCB0();
  sub_220DBE290();
  sub_220CEFD04();
  sub_220DC0520();
  (*(v67 + 8))(v65, v66);
  v140 = v204;
  v141 = v205;
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  v75 = 0xD000000000000022;
  OUTLINED_FUNCTION_11();
  sub_220DBE240();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_220DC17A0;
  *(v142 + 56) = MEMORY[0x277D837D0];
  *(v142 + 64) = sub_220CEFDB0();
  *(v142 + 32) = v140;
  *(v142 + 40) = v141;

  v143 = sub_220DC05F0();
  v202 = v144;

  v145 = sub_220CEFE04();
  v146 = sub_220DC09F0();
  sub_220CEFE48(v146);
  if (!v147)
  {
    goto LABEL_31;
  }

  v148 = sub_220DC06A0();

  if ((v148 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0();
    v165(v171, v192);
    v166 = v197;
    sub_220CEF564(v140, v141, v182, v197);

    v167 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    OUTLINED_FUNCTION_15(v167);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_17_2();
    sub_220CEFEB8(v190);
    OUTLINED_FUNCTION_2_1();
    v168 = v202;
    *v169 = v143;
    v169[1] = v168;
    v164 = (v166 + *(v140 + 48));
    goto LABEL_29;
  }

  v204 = v140;
  v205 = v141;
  v149 = sub_220DC09F0();
  v150 = sub_220CEFE48(v149);
  if (!v151)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_23_0(v150, v151);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_11();
  sub_220DC0B00();
  OUTLINED_FUNCTION_22_0();
  sub_220DBE250();
  v152 = v173;
  sub_220DBE220();
  v153 = sub_220DC09F0();
  sub_220CEFE48(v153);
  if (v154)
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_5_0();
    v155(v171, v192);

    sub_220DBE250();
    v156 = v172;
    OUTLINED_FUNCTION_20();
    sub_220DBE220();
    v157 = v196;
    __swift_storeEnumTagSinglePayload(v156, 0, 1, v196);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_21();
    sub_220CEFEB8(v190);
    v158 = OUTLINED_FUNCTION_16();
    v159(v158, v152, v157);
    v160 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    sub_220CEFF68(v156, v160[5] - 0x2FFFFFFFFFFFFFDELL);
    OUTLINED_FUNCTION_7_0(v160[6]);
    v161 = (v160[7] - 0x2FFFFFFFFFFFFFDELL);
    *v161 = v140;
    v161[1] = v145;
    OUTLINED_FUNCTION_7_0(v160[8]);
    OUTLINED_FUNCTION_7_0(v160[11]);
    *(v160[9] - 0x2FFFFFFFFFFFFFDELL) = 0;
    v162 = (v160[10] - 0x2FFFFFFFFFFFFFDELL);
    v163 = v202;
    *v162 = v143;
    v162[1] = v163;
    v78 = v160[12];
LABEL_27:
    v164 = (v75 + v78);
LABEL_29:
    v164[2] = 0u;
    v164[3] = 0u;
    *v164 = 0u;
    v164[1] = 0u;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(uint64_t a1)
{
  result = qword_27CF94FD0;
  if (!qword_27CF94FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CEF48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CEF4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CEF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23[1] = a4;
  v6 = sub_220DBFC60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DBFC80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[5];
  v15 = v4[6];
  v23[0] = __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A80], v10);
  sub_220DBFC30();
  sub_220DBFBE0();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  v16 = sub_220DBFC70();

  (*(v7 + 8))(v9, v6);
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v19 = (*(v18 + 56))(v17, v18);
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  (*(v21 + 64))(v20, v21);
  (*(v15 + 8))(v24, v25, v16, v19, v14, v15);
}

uint64_t HumidityChartHeaderStringBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t HumidityChartHeaderStringBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_220CEF8D8(uint64_t a1, id *a2)
{
  result = sub_220DC0600();
  *a2 = 0;
  return result;
}

uint64_t sub_220CEF954(uint64_t a1, id *a2)
{
  v3 = sub_220DC0610();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_220CEF9D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_220CF0308(a2);
  *a1 = result;
  return result;
}

uint64_t sub_220CEFA04()
{
  v0 = sub_220DC0620();
  v1 = MEMORY[0x223D982E0](v0);

  return v1;
}

uint64_t sub_220CEFA44(uint64_t a1, uint64_t a2)
{
  sub_220DC0620();
  sub_220DC0660();
}

uint64_t sub_220CEFAA0(uint64_t a1, uint64_t a2)
{
  sub_220DC0620();
  sub_220DC0CE0();
  sub_220DC0660();
  v2 = sub_220DC0D20();

  return v2;
}

uint64_t sub_220CEFB20@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_220DC05E0();

  *a2 = v3;
  return result;
}

uint64_t sub_220CEFB68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220CEFB94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220CEFB98(uint64_t a1)
{
  v2 = sub_220CF0168(&qword_27CF95110, type metadata accessor for Key, &unk_220DC1A90);
  v3 = sub_220CF0168(&qword_27CF95018, type metadata accessor for Key, &unk_220DC19E4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_220CEFC54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

unint64_t sub_220CEFCB0()
{
  result = qword_27CF94FA8;
  if (!qword_27CF94FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF94FA8);
  }

  return result;
}

unint64_t sub_220CEFD04()
{
  result = qword_27CF94FB0;
  if (!qword_27CF94FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF94F98, &qword_220DC17E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF94FB0);
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

unint64_t sub_220CEFDB0()
{
  result = qword_280FA6658;
  if (!qword_280FA6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6658);
  }

  return result;
}

unint64_t sub_220CEFE04()
{
  result = qword_27CF94FC0;
  if (!qword_27CF94FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF94FC0);
  }

  return result;
}

uint64_t sub_220CEFE48(void *a1)
{
  v2 = [a1 percentSymbol];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220DC0620();

  return v3;
}

uint64_t sub_220CEFEB8(uint64_t a1)
{
  v2 = type metadata accessor for HumidityChartHeaderStringBuilder.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220CEFF14()
{
  result = qword_280FA6660;
  if (!qword_280FA6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6660);
  }

  return result;
}

uint64_t sub_220CEFF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_220CF009C(uint64_t a1)
{
  result = sub_220DBE560();
  if (v2 <= 0x3F)
  {
    result = sub_220DBE740();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220CF0168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_220CF01BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CF01DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_220CF0308(uint64_t a1)
{
  sub_220DC0620();
  v1 = sub_220DC05E0();

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_220CF0374(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double static StrokeStyle.rounded(lineWidth:dash:)@<D0>(uint64_t a2@<X8>)
{

  sub_220DBF720();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t AttributedText.init(_:accessibilityAttributedText:onInteraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(type metadata accessor for AttributedText(0) + 24);
  v11 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a5 + v10, 1, 1, v11);
  *a5 = a1;
  result = sub_220CF0500(a2, a5 + v10);
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t type metadata accessor for AttributedText(uint64_t a1)
{
  result = qword_27CF95050;
  if (!qword_27CF95050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CF0500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AttributedText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_220DBE210();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  sub_220CF0758(&v20 - v7);
  v9 = *v1;
  sub_220CF08E0();
  v10 = *(v3 + 16);
  v10(v6, v8, v2);
  v11 = v9;
  v21 = v11;
  v12 = sub_220DC0A60();
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v23 = v11;
  v24 = v13;
  v25 = v14;
  v26 = v12;
  v10(v6, v8, v2);

  v15 = sub_220DBFD30();
  v17 = v16;
  LOBYTE(v10) = v18;
  sub_220CF0924();
  sub_220DBFDD0();
  sub_220CF0978(v15, v17, v10 & 1);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220CF0758@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220DBE260();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttributedText(0);
  sub_220CF16F4(v1 + *(v7 + 24), v6);
  v8 = sub_220DBE210();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  sub_220CF1764(v6);
  v9 = [*v1 string];
  sub_220DC0620();

  sub_220DBE250();
  return sub_220DBE220();
}

unint64_t sub_220CF08E0()
{
  result = qword_27CF95038;
  if (!qword_27CF95038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95038);
  }

  return result;
}

unint64_t sub_220CF0924()
{
  result = qword_27CF95040;
  if (!qword_27CF95040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95040);
  }

  return result;
}

uint64_t sub_220CF0978(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_220CF09D0(uint64_t a1)
{
  sub_220CF08E0();
  if (v1 <= 0x3F)
  {
    sub_220CF0A6C();
    if (v2 <= 0x3F)
    {
      sub_220CF0AB4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220CF0A6C()
{
  result = qword_27CF95060;
  if (!qword_27CF95060)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CF95060);
  }

  return result;
}

void sub_220CF0AB4(uint64_t a1)
{
  if (!qword_27CF95068)
  {
    sub_220DBE210();
    v1 = sub_220DC0AE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF95068);
    }
  }
}

id sub_220CF0B74(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = v5;
  v13.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v11;
}

id sub_220CF0C58(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_220CF0ED0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_220CF0F40()
{
  result = qword_27CF950E8;
  if (!qword_27CF950E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF950F0, &qword_220DC1B88);
    sub_220CF0924();
    sub_220CF15E8(&qword_27CF950F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF950E8);
  }

  return result;
}

uint64_t sub_220CF0FFC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220CF103C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_220CF1090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextViewWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17WeatherAppSupportP33_60F1DCCF57C539BA000BCF575D4E662015TextViewWrapper11Coordinator_onInteraction];
  *v7 = a2;
  *(v7 + 1) = a3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_220CF1104()
{
  type metadata accessor for TextViewWrapper.TextView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = v2;
  [v8 setTextContainerInset_];
  [v8 setEditable_];
  [v8 setScrollEnabled_];
  v9 = [v8 textContainer];
  [v9 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95108, &unk_220DC1CB0);
  sub_220DBFB70();
  [v8 setDelegate_];

  [v8 setIsAccessibilityElement_];
  type metadata accessor for Key(0);
  sub_220CF15E8(&qword_27CF95110, type metadata accessor for Key, &unk_220DC1A90);
  v10 = sub_220DC0540();
  sub_220CF1630(v10, v8);

  return v8;
}

void sub_220CF1300(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  [a1 setAttributedText_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95108, &unk_220DC1CB0);
  sub_220DBFB70();
  [a1 setDelegate_];

  if (a6)
  {
    v9 = a6;

    v8 = v9;
  }

  [a1 setAccessibilityAttributedValue_];
}

id sub_220CF13B8(uint64_t a1, int a2, id a3)
{
  result = [a3 sizeThatFits_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

id sub_220CF1418@<X0>(void *a1@<X8>)
{
  result = sub_220CF1090(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

uint64_t sub_220CF14A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CF1594();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_220CF1508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CF1594();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_220CF156C(uint64_t a1)
{
  sub_220CF1594();
  sub_220DBFAE0();
  __break(1u);
}

unint64_t sub_220CF1594()
{
  result = qword_27CF95100;
  if (!qword_27CF95100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95100);
  }

  return result;
}

uint64_t sub_220CF15E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220CF1630(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_220CF15E8(&qword_27CF95110, type metadata accessor for Key, &unk_220DC1A90);
  v3 = sub_220DC0530();

  [a2 setLinkTextAttributes_];
}

uint64_t sub_220CF16F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CF1764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CF180C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_220CF184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220CF18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v125 = a6;
  v126 = a7;
  v122 = a5;
  v123 = a2;
  v118 = a3;
  v119 = a4;
  v129 = a9;
  v130 = a1;
  v128 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v107 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v104 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  v121 = &v103 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v124 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v120 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  v117 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F0, &qword_220DC1D98);
  v24 = OUTLINED_FUNCTION_18(v23);
  MEMORY[0x28223BE20](v24);
  v116 = &v103 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_57();
  v131 = v30;
  v31 = *a8;
  v115 = a8[1];
  v32 = v115;
  v33 = a8[3];
  v114 = a8[2];
  v34 = v114;
  v113 = v33;
  v35 = a8[5];
  v112 = a8[4];
  v36 = v112;
  v111 = v35;
  v37 = v9[3];
  v38 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v37);
  v132 = v31;
  v133 = v32;
  v134 = v34;
  v135 = v33;
  v136 = v36;
  v137 = v35;
  v109 = (*(v38 + 8))(v130, v118, v119, &v132, v37, v38);
  v110 = v39;
  v40 = sub_220DBECC0();
  v41 = v116;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v40);
  v42 = v123;
  v43 = v31;
  sub_220DC0310();
  sub_220CE1ABC(v41, &qword_27CF951F0, &qword_220DC1D98);
  v44 = v9[8];
  v45 = v9[9];
  v126 = __swift_project_boxed_opaque_existential_1(v9 + 5, v44);
  v46 = v117;
  sub_220DBE780();
  v47 = v120;
  sub_220DBE7B0();
  v48 = v121;
  sub_220DBE7D0();
  v132 = v43;
  v133 = v115;
  v134 = v114;
  v135 = v113;
  v49 = v110;
  OUTLINED_FUNCTION_31();
  v136 = v51;
  v137 = v50;
  v52 = v42;
  v53 = v46;
  v54 = (*(v45 + 8))(v130, v52, v46, v47, v48, &v132, v44, v45);
  v56 = v55;
  sub_220CE1ABC(v48, &qword_27CF951E0, &unk_220DC1D80);
  v57 = *(v124 + 8);
  v58 = v127;
  v57(v47, v127);
  v57(v53, v58);
  if (v49)
  {
    v59 = v108;
    sub_220CF6B14(v131, v108, &qword_27CF951F8, &qword_220DC1DA0);
    v60 = v128;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v128);
    v130 = v56;
    if (EnumTagSinglePayload == 1)
    {
      sub_220CE1ABC(v59, &qword_27CF951F8, &qword_220DC1DA0);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v62 = OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_0();
      v64 = v63;
      v66 = *(v65 + 72);
      OUTLINED_FUNCTION_42();
      v67 = swift_allocObject();
      OUTLINED_FUNCTION_47(v67, xmmword_220DC17C0);
      v68 = *(v64 + 104);
      (v68)(v45, *MEMORY[0x277D7B3D8], v62);
      v69 = (v45 + v66);
      v70 = v130;
      *v69 = v54;
      v69[1] = v70;
      v68();
      sub_220DC0220();
    }

    else
    {
      v127 = v54;
      v75 = v107;
      v76 = v104;
      (*(v107 + 32))(v104, v59, v60);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      v77 = sub_220DBE240();
      v125 = v78;
      v126 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v79 = sub_220DC0250();
      OUTLINED_FUNCTION_0();
      v81 = v80;
      v83 = *(v82 + 72);
      OUTLINED_FUNCTION_42();
      v84 = swift_allocObject();
      OUTLINED_FUNCTION_47(v84, xmmword_220DC1CC0);
      v85 = *(v81 + 104);
      (v85)(v45, *MEMORY[0x277D7B3D8], v79);
      (*(v75 + 16))(v45 + v83, v76, v60);
      (v85)(v45 + v83, *MEMORY[0x277D7B3C0], v79);
      v86 = (v45 + 2 * v83);
      v87 = v130;
      *v86 = v127;
      v86[1] = v87;
      v85();
      sub_220DC0220();
      (*(v75 + 8))(v76, v60);
    }

    v72 = v131;
  }

  else
  {
    v71 = v106;
    v72 = v131;
    v73 = v105;
    sub_220CF6B14(v131, v105, &qword_27CF951F8, &qword_220DC1DA0);
    v74 = v128;
    if (__swift_getEnumTagSinglePayload(v73, 1, v128) == 1)
    {
      sub_220CE1ABC(v73, &qword_27CF951F8, &qword_220DC1DA0);
      sub_220DC0240();
    }

    else
    {
      v127 = v54;
      v130 = v56;
      v88 = v107;
      v89 = v71;
      (*(v107 + 32))(v71, v73, v74);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_6_0();
      v90 = sub_220DBE240();
      v125 = v91;
      v126 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v92 = OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_0();
      v94 = v93;
      v96 = *(v95 + 72);
      OUTLINED_FUNCTION_42();
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_220DC17C0;
      v98 = v97 + v45;
      (*(v88 + 16))(v98, v89, v74);
      v99 = *(v94 + 104);
      (v99)(v98, *MEMORY[0x277D7B3C0], v92);
      v100 = (v98 + v96);
      v101 = v130;
      *v100 = v127;
      v100[1] = v101;
      v99();
      sub_220DC0220();
      (*(v88 + 8))(v89, v74);
    }
  }

  return sub_220CE1ABC(v72, &qword_27CF951F8, &qword_220DC1DA0);
}

uint64_t sub_220CF22D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v376 = a5;
  v358 = a4;
  v354 = a3;
  v387 = a1;
  v363 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v383 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v382 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  v381 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v369 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v380 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v384 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_57();
  v388 = v32;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v385 = v33;
  MEMORY[0x28223BE20](v34);
  v373 = &v338 - v35;
  v371 = sub_220DBE380();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  v368 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v338 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v338 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v338 - v57;
  v365 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v364 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1();
  v63 = v62 - v61;
  sub_220DBE600();
  v346 = sub_220DBE520();
  sub_220DBE5F0();
  sub_220DBE390();
  v370 = v44;
  v64 = *(v44 + 8);
  v379 = v42;
  v377 = v44 + 8;
  v386 = v64;
  v64(v56, v42);
  v378 = v63;
  v372 = v58;
  sub_220DBE330();
  v341 = sub_220DBE4F0();
  v359 = v65;
  sub_220D2B7CC();
  v387 = a2;
  v366 = v53;
  v66 = v376;
  v340 = sub_220DBE3C0();
  v67 = *(v37 + 8);
  v343 = v41;
  v344 = v37 + 8;
  v342 = v67;
  v67(v41, v371);
  sub_220DBF100();
  v68 = sub_220DBF0D0();
  if (v66)
  {
    sub_220DBF130();
    swift_allocObject();
    v69 = v66;
    v70 = sub_220DBF120();

    v71 = MEMORY[0x277D7AAF8];
    v68 = v70;
  }

  else
  {
    v71 = MEMORY[0x277D7AA40];
  }

  v72 = v373;
  v73 = v354;
  sub_220DBE780();
  v376 = v68;
  v351 = v71;
  v360 = sub_220CF686C(v72, v68, v71);
  v361 = v74;
  v75 = *(v385 + 8);
  v385 += 8;
  v75(v72, v374);
  v76 = v388;
  sub_220DBE7C0();
  v77 = v352;
  sub_220CF6B14(v76, v352, &qword_27CF951E0, &unk_220DC1D80);
  v78 = v379;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v379);
  v80 = v377;
  v81 = v367;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CE1ABC(v77, &qword_27CF951E0, &unk_220DC1D80);
    v82 = 1;
    v83 = v384;
  }

  else
  {
    v84 = v384;
    sub_220DBE400();
    v83 = v84;
    v386(v77, v78);
    v82 = 0;
  }

  OUTLINED_FUNCTION_62(v83, v82);
  sub_220CF6B14(v83, v81, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v81);
  v85 = v380;
  if (v121)
  {
    sub_220CE1ABC(v81, &qword_27CF951E0, &unk_220DC1D80);
    v86 = 1;
  }

  else
  {
    sub_220DBE3A0();
    v83 = v384;
    v386(v81, v78);
    v86 = 0;
  }

  v87 = v376;
  v88 = v369;
  OUTLINED_FUNCTION_62(v85, v86);
  sub_220CF6B14(v83, v88, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v88);
  v89 = v382;
  if (v121)
  {
    sub_220CE1ABC(v88, &qword_27CF951E0, &unk_220DC1D80);
    v352 = 0;
    v367 = 0;
    v92 = v386;
  }

  else
  {
    v352 = sub_220DBE4F0();
    v367 = v90;
    v91 = v88;
    v92 = v386;
    v386(v91, v78);
  }

  v93 = v353;
  sub_220CF6B14(v85, v353, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v93);
  if (v121)
  {
    v96 = v80;
    sub_220CE1ABC(v93, &qword_27CF951E0, &unk_220DC1D80);
    v339 = 0;
    v369 = 0;
  }

  else
  {
    v339 = sub_220DBE4F0();
    v369 = v94;
    v95 = OUTLINED_FUNCTION_37_0();
    v96 = v80;
    v92(v95);
  }

  v97 = v362;
  v98 = v373;
  sub_220DBE7B0();
  v362 = sub_220CF686C(v98, v87, v351);
  v375 = v99;
  v75(v98, v374);
  v100 = v381;
  v101 = v73;
  sub_220DBE7D0();
  sub_220CF6B14(v100, v97, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v97);
  if (v121)
  {
    sub_220CE1ABC(v97, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_38();
    v102 = v96;
    v104 = v92;
    v105 = v102;
  }

  else
  {
    v101 = v97;
    sub_220DBE400();
    v103 = v96;
    v104 = v92;
    v105 = v103;
    v104(v97, v78);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_62(v89, v106);
  sub_220CF6B14(v89, v101, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v101);
  if (v121)
  {
    sub_220CE1ABC(v101, &qword_27CF951E0, &unk_220DC1D80);
    v108 = 1;
  }

  else
  {
    sub_220DBE3A0();
    v107 = OUTLINED_FUNCTION_37_0();
    (v104)(v107);
    v108 = 0;
  }

  v109 = v355;
  OUTLINED_FUNCTION_62(v97, v108);
  sub_220CF6B14(v89, v109, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v109);
  if (v121)
  {
    sub_220CE1ABC(v109, &qword_27CF951E0, &unk_220DC1D80);
    v374 = 0;
    v111 = 0;
  }

  else
  {
    v374 = sub_220DBE4F0();
    v111 = v110;
    v112 = OUTLINED_FUNCTION_37_0();
    (v104)(v112);
  }

  v113 = v356;
  sub_220CF6B14(v97, v356, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v113);
  if (v121)
  {
    sub_220CE1ABC(v113, &qword_27CF951E0, &unk_220DC1D80);
    v373 = 0;
    v385 = 0;
  }

  else
  {
    v373 = sub_220DBE4F0();
    v385 = v114;
    v115 = OUTLINED_FUNCTION_37_0();
    (v104)(v115);
  }

  v116 = v357;
  sub_220CF6B14(v75, v357, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v116);
  if (v121)
  {
    sub_220CE1ABC(v116, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    v117 = v73;
    v118 = v116;
    v119 = *(v370 + 32);
    v119(v87, v118, v78);
    v120 = v347;
    sub_220CF6B14(v100, v347, &qword_27CF951E0, &unk_220DC1D80);
    OUTLINED_FUNCTION_13_0(v120);
    if (v121)
    {
      v104(v87, v78);
      sub_220CE1ABC(v120, &qword_27CF951E0, &unk_220DC1D80);
      v73 = v117;
      v75 = v388;
    }

    else
    {
      v356 = v111;
      v122 = v345;
      v119(v345, v120, v78);
      v73 = v117;
      if (v117)
      {
        v123 = v388;
        if (v369)
        {
          v111 = v356;
          if (v356 && v385)
          {
            v124 = v343;
            sub_220D2B7CC();
            v125 = sub_220DBE3C0();
            v126 = v371;
            v87 = v342;
            v342(v124, v371);
            sub_220D2B7CC();
            v370 = sub_220DBE3C0();
            (v87)(v124, v126);
            v127 = sub_220DBE490();
            v128 = sub_220DBE490();
            v129 = sub_220DBE460();
            v130 = sub_220DBE460();
            v131 = v130;
            if (v127 & 1) != 0 && (v128)
            {

              if (v129 & v358)
              {

                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_51();
LABEL_44:
                OUTLINED_FUNCTION_6_0();
                v387 = sub_220DBE240();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_4_2();
                v133 = v132;
                v135 = *(v134 + 72);
                v136 = (*(v132 + 80) + 32) & ~*(v132 + 80);
                v137 = OUTLINED_FUNCTION_40();
                *(v137 + 16) = xmmword_220DC1CD0;
                v138 = (v137 + v136);
                OUTLINED_FUNCTION_7_1();
                *v138 = v140;
                v138[1] = v139;
                v141 = *(v133 + 104);
                OUTLINED_FUNCTION_28_0();
                v141();
                OUTLINED_FUNCTION_49();
                *(v138 + v135) = v142;
                OUTLINED_FUNCTION_39_0();
                v141();
                OUTLINED_FUNCTION_9_0((v138 + 2 * v135));
                OUTLINED_FUNCTION_28_0();
                v141();
                *(v138 + 3 * v135) = v370;
                OUTLINED_FUNCTION_39_0();
                v141();
                OUTLINED_FUNCTION_16_0((v138 + 4 * v135));
                v87 = *MEMORY[0x277D7B3D0];
                OUTLINED_FUNCTION_59();
                v141();
                OUTLINED_FUNCTION_10_0((v138 + 5 * v135));
                OUTLINED_FUNCTION_59();
                v141();
LABEL_202:
                OUTLINED_FUNCTION_31();
LABEL_474:
                sub_220DC0220();
                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_54();
                OUTLINED_FUNCTION_36_0();
                (v87)();
                goto LABEL_282;
              }

              if (v131)
              {
                if (v358)
                {
                  v183 = v125;

                  if (qword_280FA6600 != -1)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_51();
LABEL_150:
                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2();
                  v185 = v184;
                  v187 = *(v186 + 72);
                  v188 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v188, xmmword_220DC1CD0);
                  v189 = *(v185 + 104);
                  v190 = OUTLINED_FUNCTION_15_0();
                  (v189)(v190);
                  *(v87 + v187) = v183;
                  OUTLINED_FUNCTION_28_0();
                  v189();
                  v191 = OUTLINED_FUNCTION_8_2((v87 + 2 * v187));
                  (v189)(v191);
                  *(v87 + 3 * v187) = v340;
                  OUTLINED_FUNCTION_28_0();
                  v189();
                  OUTLINED_FUNCTION_18_0((v87 + 4 * v187));
                  v192 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_22_1();
                  v189();
                  v193 = OUTLINED_FUNCTION_16_0((v87 + 5 * v187));
                  v194 = v192;
LABEL_473:
                  (v189)(v193, v194, v127);
                  OUTLINED_FUNCTION_31();
                  goto LABEL_474;
                }

                if ((v129 & 1) == 0)
                {

                  OUTLINED_FUNCTION_12_1();
                  switch(v274)
                  {
                    case 1:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      goto LABEL_430;
                    case 2:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      goto LABEL_430;
                    case 3:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      OUTLINED_FUNCTION_1_1();
                      OUTLINED_FUNCTION_60();
                      goto LABEL_150;
                    case 4:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      goto LABEL_430;
                    case 5:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      goto LABEL_430;
                    case 6:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      goto LABEL_430;
                    default:
                      v183 = v125;
                      OUTLINED_FUNCTION_19();
                      if (!v121)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

LABEL_430:
                      OUTLINED_FUNCTION_1_1();
                      break;
                  }

                  goto LABEL_150;
                }

LABEL_299:

                OUTLINED_FUNCTION_12_1();
                switch(v275)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_378;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_378;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_60();
                    goto LABEL_44;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_378;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_378;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_378;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

LABEL_378:
                    OUTLINED_FUNCTION_1_1();
                    break;
                }

                goto LABEL_44;
              }

              if (v358)
              {
                OUTLINED_FUNCTION_34_0();

                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_3_3();
                OUTLINED_FUNCTION_33();
              }

              else
              {
                if (v129)
                {
                  goto LABEL_299;
                }

                OUTLINED_FUNCTION_34_0();

                OUTLINED_FUNCTION_12_1();
                switch(v278)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                }

                OUTLINED_FUNCTION_1_1();
              }

              OUTLINED_FUNCTION_6_0();
              v387 = sub_220DBE240();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2();
              v222 = v221;
              v224 = *(v223 + 72);
              v225 = (*(v221 + 80) + 32) & ~*(v221 + 80);
              v226 = OUTLINED_FUNCTION_40();
              *(v226 + 16) = xmmword_220DC1CD0;
              v227 = (v226 + v225);
              OUTLINED_FUNCTION_7_1();
              *v227 = v229;
              v227[1] = v228;
              v230 = *(v222 + 104);
              OUTLINED_FUNCTION_28_0();
              v230();
              *(v227 + v224) = v125;
              OUTLINED_FUNCTION_39_0();
              v230();
              OUTLINED_FUNCTION_9_0((v227 + 2 * v224));
              OUTLINED_FUNCTION_28_0();
              v230();
              *(v227 + 3 * v224) = v370;
              OUTLINED_FUNCTION_39_0();
              v230();
              OUTLINED_FUNCTION_18_0((v227 + 4 * v224));
              v87 = *MEMORY[0x277D7B3D0];
              OUTLINED_FUNCTION_59();
              v230();
              OUTLINED_FUNCTION_10_0((v227 + 5 * v224));
              OUTLINED_FUNCTION_59();
              v230();
              goto LABEL_202;
            }

            if (v129)
            {

              OUTLINED_FUNCTION_30_1();
              if (v179)
              {
                if (qword_280FA6600 != -1)
                {
LABEL_321:
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

LABEL_331:
                OUTLINED_FUNCTION_1_1();
              }

              else
              {
                OUTLINED_FUNCTION_12_1();
                switch(v219)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_331;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      goto LABEL_321;
                    }

                    goto LABEL_331;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_331;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_331;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    break;
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_58();
              }

              OUTLINED_FUNCTION_6_0();
              sub_220DBE240();
              OUTLINED_FUNCTION_14_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2();
              v280 = v279;
              v282 = *(v281 + 72);
              OUTLINED_FUNCTION_21_0();
              v283 = OUTLINED_FUNCTION_40();
              OUTLINED_FUNCTION_2_2(v283, xmmword_220DC1CD0);
              v284 = *(v280 + 104);
              v285 = OUTLINED_FUNCTION_15_0();
              v284(v285);
              OUTLINED_FUNCTION_49();
              *(v87 + v282) = v286;
              (v284)(v87 + v282, *MEMORY[0x277D7B3B8], v127);
              v287 = OUTLINED_FUNCTION_8_2((v87 + 2 * v282));
              v284(v287);
              v288 = OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_10_0(v288);
              OUTLINED_FUNCTION_22_1();
              (v284)();
              v289 = (v87 + 4 * v282);
              v290 = v385;
              *v289 = v373;
              v289[1] = v290;
              OUTLINED_FUNCTION_22_1();
              (v284)();
              v291 = OUTLINED_FUNCTION_46(5 * v282);
            }

            else
            {
              if ((v127 & 1) == 0)
              {
                if (v130)
                {

                  OUTLINED_FUNCTION_30_1();
                  if (v220)
                  {
                    if (qword_280FA6600 != -1)
                    {
LABEL_395:
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

LABEL_420:
                    OUTLINED_FUNCTION_1_1();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_1();
                    switch(v276)
                    {
                      case 1:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 2:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        goto LABEL_420;
                      case 3:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          goto LABEL_395;
                        }

                        goto LABEL_420;
                      case 4:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        goto LABEL_420;
                      case 5:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        goto LABEL_420;
                      default:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_58();
                  }

                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2();
                  v306 = v305;
                  v308 = *(v307 + 72);
                  v309 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v309, xmmword_220DC1CD0);
                  v189 = *(v306 + 104);
                  v310 = OUTLINED_FUNCTION_15_0();
                  (v189)(v310);
                  OUTLINED_FUNCTION_35();
                  v311 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_28_0();
                  v189();
                  v312 = OUTLINED_FUNCTION_20_0();
                  (v189)(v312);
                  v313 = OUTLINED_FUNCTION_8_2((v87 + 3 * v308));
                  (v189)(v313);
                  OUTLINED_FUNCTION_49();
                  *v314 = v315;
                  v189();
                  v193 = OUTLINED_FUNCTION_46(5 * v308);
                  v317 = *(v316 - 256);
                }

                else
                {
                  OUTLINED_FUNCTION_34_0();

                  if (v128)
                  {

                    OUTLINED_FUNCTION_30_1();
                    if (v273)
                    {
                      if (qword_280FA6600 != -1)
                      {
                        OUTLINED_FUNCTION_10(&qword_280FA6600);
                      }

                      OUTLINED_FUNCTION_1_1();
                      OUTLINED_FUNCTION_55();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_12_1();
                      switch(v293)
                      {
                        case 1:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          goto LABEL_467;
                        case 2:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          goto LABEL_467;
                        case 3:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          OUTLINED_FUNCTION_1_1();
                          OUTLINED_FUNCTION_58();
                          break;
                        case 4:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          goto LABEL_467;
                        case 5:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          goto LABEL_467;
                        case 6:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

                          goto LABEL_467;
                        default:
                          OUTLINED_FUNCTION_19();
                          if (!v121)
                          {
                            OUTLINED_FUNCTION_10(&qword_280FA6600);
                          }

LABEL_467:
                          OUTLINED_FUNCTION_1_1();
                          break;
                      }
                    }

                    OUTLINED_FUNCTION_6_0();
                    v87 = sub_220DBE240();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                    OUTLINED_FUNCTION_41();
                    OUTLINED_FUNCTION_4_2();
                    v319 = v318;
                    v321 = *(v320 + 72);
                    v322 = (*(v318 + 80) + 32) & ~*(v318 + 80);
                    v323 = OUTLINED_FUNCTION_40();
                    *(v323 + 16) = xmmword_220DC1CD0;
                    v324 = (v323 + v322);
                    OUTLINED_FUNCTION_7_1();
                    *v324 = v326;
                    v324[1] = v325;
                    v327 = *(v319 + 104);
                    OUTLINED_FUNCTION_28_0();
                    v327();
                    OUTLINED_FUNCTION_18_0((v323 + v322 + v321));
                    OUTLINED_FUNCTION_39_0();
                    v327();
                    v328 = (v323 + v322 + 2 * v321);
                    v329 = v369;
                    *v328 = v339;
                    v328[1] = v329;
                    OUTLINED_FUNCTION_39_0();
                    v327();
                    OUTLINED_FUNCTION_9_0((v323 + v322 + 3 * v321));
                    OUTLINED_FUNCTION_28_0();
                    v327();
                    *(v324 + 4 * v321) = v370;
                    v327();
                    OUTLINED_FUNCTION_10_0((v323 + v322 + 5 * v321));
                    OUTLINED_FUNCTION_39_0();
                    v327();
                    OUTLINED_FUNCTION_31();
                    goto LABEL_474;
                  }

                  OUTLINED_FUNCTION_30_1();
                  if (v277)
                  {
                    if (qword_280FA6600 != -1)
                    {
LABEL_451:
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_1();
                    switch(v294)
                    {
                      case 1:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 2:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 3:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          goto LABEL_451;
                        }

                        break;
                      case 4:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 5:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                      default:
                        OUTLINED_FUNCTION_19();
                        if (!v121)
                        {
                          OUTLINED_FUNCTION_10(&qword_280FA6600);
                        }

                        break;
                    }
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_6_0();
                  sub_220DBE240();
                  OUTLINED_FUNCTION_14_1();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
                  OUTLINED_FUNCTION_41();
                  OUTLINED_FUNCTION_4_2();
                  v331 = v330;
                  v333 = *(v332 + 72);
                  v334 = OUTLINED_FUNCTION_26_1();
                  OUTLINED_FUNCTION_2_2(v334, xmmword_220DC1CD0);
                  v189 = *(v331 + 104);
                  v335 = OUTLINED_FUNCTION_15_0();
                  (v189)(v335);
                  OUTLINED_FUNCTION_35();
                  v311 = *MEMORY[0x277D7B3D0];
                  OUTLINED_FUNCTION_28_0();
                  v189();
                  v336 = OUTLINED_FUNCTION_20_0();
                  (v189)(v336);
                  v337 = OUTLINED_FUNCTION_8_2((v87 + 3 * v333));
                  (v189)(v337);
                  OUTLINED_FUNCTION_10_0((v87 + 4 * v333));
                  OUTLINED_FUNCTION_28_0();
                  v189();
                  v193 = (v87 + 5 * v333);
                  *v193 = v373;
                  v317 = v385;
                }

                v193[1] = v317;
                v194 = v311;
                goto LABEL_473;
              }

              OUTLINED_FUNCTION_34_0();

              OUTLINED_FUNCTION_30_1();
              v368 = v125;
              if (v182)
              {
                if (qword_280FA6600 != -1)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_55();
              }

              else
              {
                OUTLINED_FUNCTION_12_1();
                switch(v272)
                {
                  case 1:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_370;
                  case 2:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_370;
                  case 3:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    OUTLINED_FUNCTION_1_1();
                    OUTLINED_FUNCTION_58();
                    break;
                  case 4:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_370;
                  case 5:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_370;
                  case 6:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

                    goto LABEL_370;
                  default:
                    OUTLINED_FUNCTION_19();
                    if (!v121)
                    {
                      OUTLINED_FUNCTION_10(&qword_280FA6600);
                    }

LABEL_370:
                    OUTLINED_FUNCTION_1_1();
                    break;
                }
              }

              OUTLINED_FUNCTION_6_0();
              sub_220DBE240();
              OUTLINED_FUNCTION_14_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
              OUTLINED_FUNCTION_41();
              OUTLINED_FUNCTION_4_2();
              v296 = v295;
              v298 = *(v297 + 72);
              OUTLINED_FUNCTION_21_0();
              v299 = OUTLINED_FUNCTION_40();
              OUTLINED_FUNCTION_2_2(v299, xmmword_220DC1CD0);
              v284 = *(v296 + 104);
              v300 = OUTLINED_FUNCTION_15_0();
              v284(v300);
              *(v87 + v298) = v368;
              (v284)(v87 + v298, *MEMORY[0x277D7B3B8], v127);
              v301 = OUTLINED_FUNCTION_8_2((v87 + 2 * v298));
              v284(v301);
              v302 = OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_10_0(v302);
              OUTLINED_FUNCTION_22_1();
              (v284)();
              v303 = (v87 + 4 * v298);
              v304 = v385;
              *v303 = v373;
              v303[1] = v304;
              OUTLINED_FUNCTION_22_1();
              (v284)();
              v291 = (v87 + 5 * v298);
              *v291 = v352;
              v292 = &v389;
            }

            v291[1] = *(v292 - 32);
            OUTLINED_FUNCTION_22_1();
            (v284)();
            OUTLINED_FUNCTION_24_0();
            sub_220DC0220();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_36_0();
            (v87)();
LABEL_282:
            (v87)();
            goto LABEL_283;
          }

          v143 = OUTLINED_FUNCTION_54();
          v104(v143, v78);
          v104(v87, v78);
        }

        else
        {
          v144 = OUTLINED_FUNCTION_54();
          v104(v144, v78);
          v104(v87, v78);
          v111 = v356;
        }

        v75 = v123;
      }

      else
      {
        v104(v122, v78);
        v104(v87, v78);
        v75 = v388;
        v111 = v356;
      }
    }
  }

  v145 = v350;
  sub_220CF6B14(v75, v350, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v145);
  if (v121)
  {
    v87 = v105;

    sub_220CE1ABC(v145, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v370 + 32))(v368, v145, v78);
    if (v73 && v369)
    {

      sub_220D2B7CC();
      v127 = v387;
      v146 = sub_220DBE3C0();
      OUTLINED_FUNCTION_48();
      v147();
      if (sub_220DBE460())
      {

        OUTLINED_FUNCTION_30_1();
        if (v148)
        {
          v149 = v375;
          if (qword_280FA6600 != -1)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          OUTLINED_FUNCTION_3_3();
          OUTLINED_FUNCTION_33();
        }

        else
        {
          OUTLINED_FUNCTION_12_1();
          switch(v164)
          {
            case 1:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_165;
            case 2:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_51();
              break;
            case 3:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_168;
            case 4:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_168;
            case 5:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_165;
            case 6:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_168:
              OUTLINED_FUNCTION_1_1();
              break;
            default:
              v149 = v375;
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_165:
              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_52_0();
              break;
          }
        }

        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_14_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_4_2();
        v196 = v195;
        v198 = *(v197 + 72);
        OUTLINED_FUNCTION_21_0();
        v199 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_2_2(v199, xmmword_220DC1CE0);
        v200 = *(v196 + 104);
        v201 = OUTLINED_FUNCTION_15_0();
        v200(v201);
        OUTLINED_FUNCTION_49();
        *(v87 + v198) = v202;
        (v200)(v87 + v198, *MEMORY[0x277D7B3B8], v127);
        v203 = (v87 + 2 * v198);
        *v203 = v362;
        v203[1] = v149;
        OUTLINED_FUNCTION_22_1();
        (v200)();
        v204 = OUTLINED_FUNCTION_45();
        v205 = OUTLINED_FUNCTION_16_0(v204);
        (v200)(v205, *MEMORY[0x277D7B3D0], v127);
      }

      else
      {
        OUTLINED_FUNCTION_34_0();

        if (sub_220DBE490())
        {

          OUTLINED_FUNCTION_30_1();
          if (v157)
          {
            if (qword_280FA6600 != -1)
            {
LABEL_234:
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_235:
            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_32();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v177)
            {
              case 1:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_235;
              case 2:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_235;
              case 3:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_52_0();
                break;
              case 4:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_235;
              case 5:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_235;
              case 6:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  goto LABEL_234;
                }

                goto LABEL_235;
              default:
                OUTLINED_FUNCTION_29();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_235;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          v127 = v231;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          v232 = OUTLINED_FUNCTION_61();
          OUTLINED_FUNCTION_0();
          v234 = *(v233 + 72);
          v87 = OUTLINED_FUNCTION_44();
          *(v87 + 16) = xmmword_220DC1CE0;
          v235 = (v87 + v111);
          OUTLINED_FUNCTION_7_1();
          *v235 = v237;
          v235[1] = v236;
          v238 = *MEMORY[0x277D7B3C8];
          v239 = OUTLINED_FUNCTION_53();
          (v75)(v239);
          *(v235 + v234) = v146;
          (v75)(v235 + v234, *MEMORY[0x277D7B3B8], v232);
          v240 = OUTLINED_FUNCTION_9_0((v235 + 2 * v234));
          (v75)(v240, v238, v232);
          v241 = OUTLINED_FUNCTION_18_0((v235 + 3 * v234));
          (v75)(v241, *MEMORY[0x277D7B3D0], v232);
          OUTLINED_FUNCTION_31();
          goto LABEL_281;
        }

        OUTLINED_FUNCTION_30_1();
        if (v165)
        {
          if (qword_280FA6600 != -1)
          {
LABEL_238:
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

LABEL_239:
          OUTLINED_FUNCTION_1_1();
        }

        else
        {
          OUTLINED_FUNCTION_12_1();
          switch(v178)
          {
            case 1:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_232;
            case 2:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_55();
              break;
            case 3:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_239;
            case 4:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_239;
            case 5:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

              goto LABEL_232;
            case 6:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                goto LABEL_238;
              }

              goto LABEL_239;
            default:
              OUTLINED_FUNCTION_19();
              if (!v121)
              {
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_232:
              OUTLINED_FUNCTION_1_1();
              OUTLINED_FUNCTION_60();
              break;
          }
        }

        OUTLINED_FUNCTION_6_0();
        sub_220DBE240();
        OUTLINED_FUNCTION_14_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_4_2();
        v243 = v242;
        v245 = *(v244 + 72);
        v87 = (*(v242 + 80) + 32) & ~*(v242 + 80);
        v246 = OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_2_2(v246, xmmword_220DC1CE0);
        v247 = *(v243 + 104);
        v248 = OUTLINED_FUNCTION_15_0();
        (v247)(v248);
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_28_0();
        v247();
        v249 = OUTLINED_FUNCTION_20_0();
        (v247)(v249);
        v250 = OUTLINED_FUNCTION_8_2((v87 + 3 * v245));
        (v247)(v250);
      }

      OUTLINED_FUNCTION_24_0();
LABEL_281:
      sub_220DC0220();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_36_0();
      goto LABEL_282;
    }

    v150 = OUTLINED_FUNCTION_37_0();
    v87 = v105;
    (v104)(v150);
  }

  v151 = v349;
  sub_220CF6B14(v100, v349, &qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_13_0(v151);
  v127 = v385;
  if (v121)
  {
    OUTLINED_FUNCTION_34_0();

    sub_220CE1ABC(v151, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v370 + 32))(v348, v151, v78);
    if (v111)
    {
      if (v127)
      {
        sub_220D2B7CC();
        v152 = sub_220DBE3C0();
        OUTLINED_FUNCTION_48();
        v153();
        if (sub_220DBE460())
        {

          OUTLINED_FUNCTION_30_1();
          if (v154)
          {
            v155 = v375;
            if (qword_280FA6600 != -1)
            {
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_33();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v174)
            {
              case 1:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_184;
              case 2:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_51();
                break;
              case 3:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_187;
              case 4:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_187;
              case 5:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_184;
              case 6:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

LABEL_187:
                OUTLINED_FUNCTION_1_1();
                break;
              default:
                v155 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

LABEL_184:
                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_52_0();
                break;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          OUTLINED_FUNCTION_14_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_4_2();
          v207 = v206;
          v209 = *(v208 + 72);
          OUTLINED_FUNCTION_21_0();
          v210 = OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_2_2(v210, xmmword_220DC1CE0);
          v211 = *(v207 + 104);
          v212 = OUTLINED_FUNCTION_15_0();
          (v211)(v212);
          v213 = (v87 + v209);
          *v213 = v362;
          v213[1] = v155;
          OUTLINED_FUNCTION_22_1();
          v211();
          OUTLINED_FUNCTION_49();
          *v214 = v215;
          v211();
          v216 = OUTLINED_FUNCTION_45();
          v217 = OUTLINED_FUNCTION_16_0(v216);
          v218 = *MEMORY[0x277D7B3D0];
        }

        else
        {
          OUTLINED_FUNCTION_34_0();

          v162 = sub_220DBE490();
          v356 = v111;
          if (v162)
          {

            OUTLINED_FUNCTION_30_1();
            if (v163)
            {
              if (qword_280FA6600 != -1)
              {
LABEL_273:
                OUTLINED_FUNCTION_10(&qword_280FA6600);
              }

LABEL_274:
              OUTLINED_FUNCTION_3_3();
              OUTLINED_FUNCTION_32();
            }

            else
            {
              OUTLINED_FUNCTION_12_1();
              switch(v180)
              {
                case 1:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  goto LABEL_274;
                case 2:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  goto LABEL_274;
                case 3:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_52_0();
                  break;
                case 4:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  goto LABEL_274;
                case 5:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  goto LABEL_274;
                case 6:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    goto LABEL_273;
                  }

                  goto LABEL_274;
                default:
                  OUTLINED_FUNCTION_29();
                  if (!v121)
                  {
                    OUTLINED_FUNCTION_10(&qword_280FA6600);
                  }

                  goto LABEL_274;
              }
            }

            OUTLINED_FUNCTION_6_0();
            sub_220DBE240();
            v127 = v251;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
            v252 = OUTLINED_FUNCTION_61();
            OUTLINED_FUNCTION_0();
            v254 = *(v253 + 72);
            v87 = OUTLINED_FUNCTION_44();
            *(v87 + 16) = xmmword_220DC1CE0;
            v255 = (v87 + v111);
            OUTLINED_FUNCTION_7_1();
            *v255 = v257;
            v255[1] = v256;
            v258 = *MEMORY[0x277D7B3C8];
            v259 = OUTLINED_FUNCTION_53();
            (v75)(v259);
            v260 = OUTLINED_FUNCTION_9_0((v255 + v254));
            (v75)(v260, v258, v252);
            *(v255 + 2 * v254) = v152;
            (v75)();
            v261 = OUTLINED_FUNCTION_10_0((v255 + 3 * v254));
            (v75)(v261, *MEMORY[0x277D7B3D0], v252);
            OUTLINED_FUNCTION_31();
            goto LABEL_281;
          }

          OUTLINED_FUNCTION_30_1();
          if (v175)
          {
            v176 = v375;
            if (qword_280FA6600 != -1)
            {
LABEL_277:
              OUTLINED_FUNCTION_10(&qword_280FA6600);
            }

LABEL_278:
            OUTLINED_FUNCTION_1_1();
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
            switch(v181)
            {
              case 1:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_271;
              case 2:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_55();
                break;
              case 3:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_278;
              case 4:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_278;
              case 5:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

                goto LABEL_271;
              case 6:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  goto LABEL_277;
                }

                goto LABEL_278;
              default:
                v176 = v375;
                OUTLINED_FUNCTION_19();
                if (!v121)
                {
                  OUTLINED_FUNCTION_10(&qword_280FA6600);
                }

LABEL_271:
                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_60();
                break;
            }
          }

          OUTLINED_FUNCTION_6_0();
          sub_220DBE240();
          OUTLINED_FUNCTION_14_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_4_2();
          v263 = v262;
          v265 = *(v264 + 72);
          OUTLINED_FUNCTION_21_0();
          v266 = OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_2_2(v266, xmmword_220DC1CE0);
          v211 = *(v263 + 104);
          v267 = OUTLINED_FUNCTION_15_0();
          (v211)(v267);
          v268 = (v87 + v265);
          *v268 = v362;
          v268[1] = v176;
          OUTLINED_FUNCTION_22_1();
          v211();
          OUTLINED_FUNCTION_10_0((v87 + 2 * v265));
          v269 = *MEMORY[0x277D7B3D0];
          OUTLINED_FUNCTION_22_1();
          v211();
          v217 = OUTLINED_FUNCTION_45();
          v270 = v385;
          *v217 = v373;
          v217[1] = v270;
          v218 = v269;
        }

        (v211)(v217, v218, v127);
        OUTLINED_FUNCTION_24_0();
        goto LABEL_281;
      }

      v158 = OUTLINED_FUNCTION_37_0();
      (v104)(v158);

      OUTLINED_FUNCTION_34_0();
    }

    else
    {
      v156 = OUTLINED_FUNCTION_37_0();
      (v104)(v156);
      OUTLINED_FUNCTION_34_0();
    }
  }

  OUTLINED_FUNCTION_30_1();
  if (v159)
  {
    v160 = v375;
    if (qword_280FA6600 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    switch(v161)
    {
      case 1:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
      case 2:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
      case 3:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          goto LABEL_102;
        }

        break;
      case 4:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
      case 5:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
      case 6:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
      default:
        v160 = v375;
        OUTLINED_FUNCTION_19();
        if (!v121)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  OUTLINED_FUNCTION_14_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v166 = sub_220DC0250();
  OUTLINED_FUNCTION_0();
  v168 = v167;
  v170 = *(v169 + 72);
  OUTLINED_FUNCTION_21_0();
  v171 = swift_allocObject();
  OUTLINED_FUNCTION_2_2(v171, xmmword_220DC17C0);
  v172 = *(v168 + 104);
  (v172)(v87, *MEMORY[0x277D7B3C8], v166);
  v173 = (v87 + v170);
  *v173 = v362;
  v173[1] = v160;
  v172();
  OUTLINED_FUNCTION_24_0();
  sub_220DC0220();
  swift_unknownObjectRelease();
  v127 = v379;
  v87 = v386;
LABEL_283:
  OUTLINED_FUNCTION_50(v383);
  OUTLINED_FUNCTION_50(v382);
  OUTLINED_FUNCTION_50(v381);
  OUTLINED_FUNCTION_50(v380);
  OUTLINED_FUNCTION_50(v384);
  OUTLINED_FUNCTION_50(v388);
  (v87)(v366, v127);
  (v87)(v372, v127);
  return (*(v364 + 8))(v378, v365);
}

uint64_t sub_220CF6774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_220DBE5E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_220DBE580();
  sub_220CF22D8(a1, a2, a3, a4, a5, a6);
  return (*(v14 + 8))(v18, v12);
}

uint64_t sub_220CF686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a1;
  v3 = sub_220DC0300();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_220DC0A40();
  v7 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DC02B0();
  swift_getObjectType();
  v10 = sub_220DBF110();
  v11 = [v10 symbol];

  sub_220DC0620();
  (*(v4 + 104))(v6, *MEMORY[0x277D7B408], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220CF6ABC();
  v12 = v15[0];
  v13 = sub_220DBE090();

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v12);
  return v13;
}

unint64_t sub_220CF6ABC()
{
  result = qword_280FA6610;
  if (!qword_280FA6610)
  {
    sub_220DC0A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6610);
  }

  return result;
}

uint64_t sub_220CF6B14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  *(v1 + a1) = *(v2 - 488);
  return result;
}

__n128 *OUTLINED_FUNCTION_47(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v5 = (result->n128_u64 + v2);
  *v5 = *(v4 - 320);
  v5[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t PressureTrend.symbolName.getter()
{
  v1 = sub_220DBEC50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277CE33E0])
  {
    return 0x70752E776F727261;
  }

  if (v5 == *MEMORY[0x277CE33F0])
  {
    return 0x6F642E776F727261;
  }

  if (v5 == *MEMORY[0x277CE33E8])
  {
    return 0x6C61757165;
  }

  result = sub_220DC0C90();
  __break(1u);
  return result;
}

uint64_t sub_220CF6E8C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v76 = a3;
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v73 = v6;
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v69 = v8 - v7;
  v70 = sub_220DBF410();
  OUTLINED_FUNCTION_0();
  v68 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v71 = v12 - v11;
  v80 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v82 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v81 = v16 - v15;
  v17 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v78 = v24;
  v79 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v77 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  v34 = *a4;
  sub_220DBE9B0();
  sub_220DC02B0();
  sub_220DBF130();
  swift_allocObject();
  v35 = v34;
  sub_220DBF120();
  v36 = [v35 symbol];
  sub_220DC0620();

  (*(v19 + 104))(v23, *MEMORY[0x277D7B408], v17);
  sub_220CF82D4(&qword_280FA6610, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v37 = v78;
  v72 = sub_220DBE090();
  v75 = v38;
  v39 = v80;

  (*(v19 + 8))(v23, v17);
  v40 = v28;
  v41 = v82;
  (*(v79 + 8))(v40, v37);
  v42 = v76;
  v43 = v33;
  v44 = v81;
  (*(v77 + 8))(v43, v29);
  sub_220DBEAC0();
  v45 = sub_220DBE990();
  sub_220CF754C(v44, v45 & 1);
  v47 = v46;
  v50 = *(v41 + 8);
  v48 = v41 + 8;
  v49 = v50;
  v50(v44, v39);
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_220DC17A0;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = sub_220CEFDB0();
    v52 = v75;
    *(v51 + 32) = v72;
    *(v51 + 40) = v52;
    v53 = sub_220DC05F0();
  }

  else
  {

    v54 = v71;
    sub_220DBF3C0();
    v55 = v69;
    (*(v73 + 16))(v69, v42, v74);
    v56 = sub_220DBF3F0();
    v57 = sub_220DC0980();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v82 = v48;
      v59 = v58;
      v60 = swift_slowAlloc();
      v83 = v60;
      *v59 = 136446210;
      sub_220DBEAC0();
      sub_220CF82D4(&qword_27CF95200, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
      v61 = sub_220DC0C70();
      v62 = v39;
      v63 = v55;
      v65 = v64;
      v49(v44, v62);
      (*(v73 + 8))(v63, v74);
      v66 = sub_220D3F210(v61, v65, &v83);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_220CD1000, v56, v57, "Unhandled case:%{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x223D98FB0](v60, -1, -1);
      MEMORY[0x223D98FB0](v59, -1, -1);
    }

    else
    {

      (*(v73 + 8))(v55, v74);
    }

    (*(v68 + 8))(v54, v70);
    return 0;
  }

  return v53;
}

uint64_t sub_220CF754C(uint64_t a1, char a2)
{
  v4 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x277CE32F8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3220])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3228])
  {
    if (qword_280FA6600 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_1_2();
LABEL_10:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
    }

LABEL_131:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277CE32D8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32B0])
  {
    if (a2)
    {
      OUTLINED_FUNCTION_29();
      if (!v13)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_29();
      if (!v13)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    goto LABEL_88;
  }

  if (v11 == *MEMORY[0x277CE32E0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32F0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3300])
  {
LABEL_29:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32B8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v11 == *MEMORY[0x277CE3270])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3240])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32E8])
  {
    goto LABEL_41;
  }

  if (v11 == *MEMORY[0x277CE3290])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v11 == *MEMORY[0x277CE3298])
  {
    if (qword_280FA6600 == -1)
    {
LABEL_50:
      OUTLINED_FUNCTION_2_3();
      goto LABEL_10;
    }

LABEL_94:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_50;
  }

  if (v11 == *MEMORY[0x277CE3308])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3310])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3288])
  {
LABEL_41:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

  if (v11 == *MEMORY[0x277CE3318])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3278])
  {
LABEL_66:
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3230])
  {
    if (a2)
    {
      OUTLINED_FUNCTION_29();
      if (!v13)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    else
    {
      OUTLINED_FUNCTION_29();
      if (!v13)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }
    }

    goto LABEL_88;
  }

  if (v11 == *MEMORY[0x277CE3248])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3250])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32A0])
  {
    goto LABEL_87;
  }

  if (v11 == *MEMORY[0x277CE3280])
  {
    goto LABEL_66;
  }

  if (v11 == *MEMORY[0x277CE32C0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_130;
  }

  if (v11 == *MEMORY[0x277CE32C8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32A8])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_130;
  }

  if (v11 == *MEMORY[0x277CE3258])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3238])
  {
    goto LABEL_29;
  }

  if (v11 == *MEMORY[0x277CE3218])
  {
LABEL_87:
    if (qword_280FA6600 == -1)
    {
LABEL_88:
      OUTLINED_FUNCTION_5_1();
      goto LABEL_10;
    }

LABEL_130:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
    goto LABEL_88;
  }

  if (v11 == *MEMORY[0x277CE3260])
  {
    goto LABEL_66;
  }

  if (v11 == *MEMORY[0x277CE3268])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE32D0])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (v11 == *MEMORY[0x277CE3320])
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_131;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v14 = sub_220DBF410();
  __swift_project_value_buffer(v14, qword_27CF95F48);
  v15 = sub_220DBF3F0();
  v16 = sub_220DC0980();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_220CD1000, v15, v16, "unknown case in ConditionTemperatureStringBuilder.description", v17, 2u);
    MEMORY[0x223D98FB0](v17, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  return 0;
}

uint64_t sub_220CF82D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrecipitationTotalStringAmount.Context.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

uint64_t sub_220CF83AC()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

void static PrecipitationTotalStringAmount.Format.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v55 = (v8 - v9);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v56 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  v57 = v13;
  OUTLINED_FUNCTION_23();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_11_1();
  type metadata accessor for PrecipitationTotalStringAmount.Format(v18);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  OUTLINED_FUNCTION_34();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v54 - v29;
  v31 = &v54 + *(v28 + 56) - v29;
  sub_220CE1028(v5, &v54 - v29);
  sub_220CE1028(v3, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220CE1028(v30, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58);
      OUTLINED_FUNCTION_23_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v58;
        v33 = v59;
        (*(v58 + 32))(v17, v31, v59);
        sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
        sub_220DBE020();
        v35 = *(v34 + 8);
        v35(v17, v33);
        v35(v1, v33);
LABEL_16:
        sub_220CF8964(v30);
        goto LABEL_17;
      }

      (*(v58 + 8))(v1, v59);
      goto LABEL_12;
    }

    sub_220CE1028(v30, v22);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    OUTLINED_FUNCTION_23_1();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v38 = v57;
      v37 = v58;
      v39 = *(v58 + 32);
      v40 = v59;
      v39(v57, v31, v59);
      v39(v56, (v22 + v36), v40);
      v39(v55, &v31[v36], v40);
      sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
      v41 = sub_220DBE020();
      v42 = *(v37 + 8);
      v42(v22, v40);
      if ((v41 & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_23_1();
        (v42)(v51);
        v52 = OUTLINED_FUNCTION_32_0();
        (v42)(v52);
        v53 = OUTLINED_FUNCTION_38_0();
        (v42)(v53);
        goto LABEL_16;
      }

      sub_220DBE020();
      v43 = OUTLINED_FUNCTION_23_1();
      (v42)(v43);
      v44 = OUTLINED_FUNCTION_32_0();
      (v42)(v44);
      v45 = v38;
      goto LABEL_14;
    }

    v46 = *(v58 + 8);
    v47 = v22 + v36;
    v48 = v59;
    v46(v47, v59);
    v46(v22, v48);
  }

  else
  {
    sub_220CE1028(v30, v26);
    OUTLINED_FUNCTION_23_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = v58;
      v40 = v59;
      (*(v58 + 32))(v0, v31, v59);
      sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
      sub_220DBE020();
      v42 = *(v49 + 8);
      v50 = OUTLINED_FUNCTION_38_0();
      (v42)(v50);
      v45 = v26;
LABEL_14:
      v42(v45, v40);
      sub_220CF8964(v30);
      goto LABEL_17;
    }

    (*(v58 + 8))(v26, v59);
  }

LABEL_12:
  sub_220CDA548(v30, &qword_27CF95210, &unk_220DC35F0);
LABEL_17:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CF8964(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationTotalStringAmount.format.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();

  return sub_220CE1028(v1 + v3, a1);
}

void PrecipitationTotalStringAmount.init(context:amount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = *v25;
  v39 = *(v30 + 16);
  OUTLINED_FUNCTION_26();
  v39();
  if (v38)
  {
    if (v38 == 1)
    {
      OUTLINED_FUNCTION_26();
      v39();
      OUTLINED_FUNCTION_5_2();
      sub_220CDEE30(v37, v34, &v27[v40]);
    }

    else
    {
      OUTLINED_FUNCTION_5_2();
      sub_220CF8B70();
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    sub_220CDB1D4();
  }

  (*(v30 + 8))(v23, v28);
  *v27 = v38;
  OUTLINED_FUNCTION_24();
}

void sub_220CF8B70()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_1();
  sub_220DBF100();
  sub_220DBF0D0();
  v13 = sub_220DBF0B0();

  OUTLINED_FUNCTION_14_2();
  sub_220DBE130();
  sub_220DBE0E0();
  sub_220DC0430();
  OUTLINED_FUNCTION_14_2();
  sub_220DBE130();
  sub_220DBE050();
  if (v14 == 0.0)
  {

    v15 = *(v8 + 8);
    v15(v3, v6);
    v16 = OUTLINED_FUNCTION_36();
    (v15)(v16);
    v17 = OUTLINED_FUNCTION_33_0();
    (v15)(v17);
    v18 = OUTLINED_FUNCTION_37();
    (v15)(v18);
    (*(v8 + 32))(v5, v1, v6);
  }

  else
  {
    v29 = v5;
    sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    v19 = sub_220DBE010();

    v20 = *(v8 + 8);
    v20(v3, v6);
    v21 = OUTLINED_FUNCTION_36();
    (v20)(v21);
    v22 = OUTLINED_FUNCTION_39();
    (v20)(v22);
    if (v19)
    {
      v23 = OUTLINED_FUNCTION_37();
      (v20)(v23);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
      (*(v8 + 32))(v29, v0, v6);
      *(v29 + v24) = 1;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_33_0();
      (v20)(v25);
      v26 = OUTLINED_FUNCTION_32_0();
      v28(v26, v27, v6);
    }
  }

  OUTLINED_FUNCTION_28_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24();
}

void PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v27[1] = v5;
  v27[0] = sub_220DBEC90();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_18_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v27 - v20;
  v22 = *v4;
  v23 = v2;
  sub_220DBEDD0();
  sub_220DBEDC0();
  if (v22)
  {
    v23 = v11;
    if (v22 == 1)
    {
      sub_220DBEC80();
      sub_220DBEC70();
      OUTLINED_FUNCTION_5_2();
      v24 = OUTLINED_FUNCTION_16_1();
      sub_220CDEE30(v24, v0, v25);
    }

    else
    {
      sub_220DBEC60();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_16_1();
      sub_220CF8B70();
    }
  }

  else
  {
    (*(v14 + 16))(v19, v21, v12);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_16_1();
    sub_220CDB1D4();
  }

  sub_220DBEE10();
  OUTLINED_FUNCTION_6();
  (*(v26 + 8))(v2);
  (*(v7 + 8))(v11, v27[0]);
  (*(v14 + 8))(v21, v12);
  *v23 = v22;
  OUTLINED_FUNCTION_24();
}

void static PrecipitationTotalStringAmount.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_5_2();

    static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
  }
}

uint64_t PrecipitationTotalStringAmount.unit.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v0 + v10, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    (*(v4 + 32))(v1, v9 + *(v16 + 48), v2);
    v13 = sub_220DBE030();
    v17 = *(v4 + 8);
    v18 = OUTLINED_FUNCTION_29_1();
    v17(v18);
    (v17)(v9, v2);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_37();
    v12(v11);
    v13 = sub_220DBE030();
    v14 = OUTLINED_FUNCTION_29_1();
    v15(v14);
  }

  return v13;
}

BOOL PrecipitationTotalStringAmount.isLessThan.getter()
{
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v0 + v5, v4);
  OUTLINED_FUNCTION_27_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6();
    (*(v7 + 8))(v4);
  }

  else
  {
    sub_220CF8964(v4);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t PrecipitationTotalStringAmount.pluralRule.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v1 + v12, v11);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    *a1 = 0;
    *(a1 + 8) = 1;
    v19 = *(v6 + 8);
    v19(v11 + v18, v4);
    v20 = OUTLINED_FUNCTION_33_0();
    return (v19)(v20);
  }

  else
  {
    (*(v6 + 32))(v2, v11, v4);
    sub_220DBE050();
    v14 = Double.pluralRuleInteger.getter(v13);
    v15 = OUTLINED_FUNCTION_37();
    result = v16(v15);
    *a1 = v14;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_220CF9528(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DC0970();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v43 = &v32 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v5 + 32;
  v41 = a2 + 56;
  v42 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v32 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v40 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v40 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v43, v13, v4);
      sub_220CE33B8(&qword_27CF95240, MEMORY[0x277D7B4C8], MEMORY[0x277D7B4D0]);
      v26 = sub_220DC0550();
      v27 = a2;
      v28 = ~(-1 << *(a2 + 32));
      do
      {
        v29 = v26 & v28;
        if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
        {
          (*v20)(v43, v4);
          return 0;
        }

        v25(v8, *(v27 + 48) + v29 * v40, v4);
        sub_220CE33B8(&qword_27CF95248, MEMORY[0x277D7B4C8], MEMORY[0x277D7B4D8]);
        v30 = sub_220DC05B0();
        v31 = *v20;
        (*v20)(v8, v4);
        v26 = v29 + 1;
      }

      while ((v30 & 1) == 0);
      result = (v31)(v43, v4);
      a2 = v27;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v38 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

WeatherAppSupport::PrecipitationTotalStringAmount::Context __swiftcall PrecipitationTotalStringAmount.Context.init(_:isDataInPast:)(WeatherAppSupport::PrecipitationTotalStringAmount::Context _, Swift::Bool isDataInPast)
{
  if (isDataInPast)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*_ == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return _;
}

uint64_t PrecipitationTotalStringAmount.Context.init(_:isDataInPast:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_220DBEC20();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  result = (*(v9 + 88))(a1, v6);
  if (result == *MEMORY[0x277CE33A0])
  {
    if (a2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    result = (*(v8 + 8))(a1, v6);
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

unint64_t sub_220CF99A8()
{
  result = qword_27CF95238;
  if (!qword_27CF95238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationTotalStringAmount.Context(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalStringAmount.Context(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationTotalStringAmountPluralRule(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PrecipitationTotalStringAmountPluralRule(uint64_t result, int a2, int a3)
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

uint64_t sub_220CF9C00(uint64_t a1)
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

uint64_t sub_220CF9C1C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return sub_220DC0280();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return type metadata accessor for PrecipitationTotalStringAmount.Format(0);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

double CurrentWeather.chartValue(for:units:)(unsigned __int8 *a1, uint64_t *a2)
{
  sub_220DBEF00();
  OUTLINED_FUNCTION_0();
  v79 = v4;
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v78 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  OUTLINED_FUNCTION_0();
  v84 = v8;
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v77 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v83 = &v68 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v75 = v14;
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v73 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v68 - v18;
  sub_220DBEF70();
  OUTLINED_FUNCTION_0();
  v71 = v20;
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v70 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v81 = v24;
  v82 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v69 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v68 - v38;
  v40 = sub_220DBEE60();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  switch(*a1)
  {
    case 1u:
      sub_220DBEAB0();
      sub_220DBE130();
      v58 = *(v69 + 8);
      v58(v36, v31);
      sub_220DBE050();
      v49 = v59;
      v58(v39, v31);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA10();
      sub_220DBEE50();
      v49 = v48;
      (*(v42 + 8))(v46, v40);
      goto LABEL_15;
    case 3u:
      sub_220DBE9B0();
      goto LABEL_8;
    case 4u:
      sub_220DBE9D0();
LABEL_8:
      v50 = v82;
      sub_220DBE130();
      v51 = *(v81 + 8);
      v51(v27, v50);
      sub_220DBE050();
      v49 = v52;
      v51(v30, v50);
      goto LABEL_15;
    case 5u:
      v60 = v70;
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA80();
      v61 = sub_220DBEF50();
      (*(v71 + 8))(v60, v72);
      v49 = v61;
      goto LABEL_15;
    case 6u:
      v54 = v73;
      sub_220DBE9A0();
      v55 = v74;
      v56 = v76;
      sub_220DBE130();
      v57 = v75;
      goto LABEL_13;
    case 7u:
      v53 = v78;
      OUTLINED_FUNCTION_3_4();
      sub_220DBEA70();
      v54 = v77;
      sub_220DBEEF0();
      (*(v79 + 8))(v53, v80);
      v55 = v83;
      v56 = v85;
      sub_220DBE130();
      v57 = v84;
LABEL_13:
      v62 = *(v57 + 8);
      v62(v54, v56);
      sub_220DBE050();
      v49 = v63;
      v62(v55, v56);
      goto LABEL_15;
    case 8u:
      v64 = v83;
      OUTLINED_FUNCTION_3_4();
      sub_220DBE9F0();
      v65 = v85;
      sub_220DBE050();
      v67 = v66;
      (*(v84 + 8))(v64, v65);
      if (v67 <= 0.0)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = 1.0;
      }

LABEL_15:
      result = v49;
      break;
    default:

      sub_220DBEAA0();
      break;
  }

  return result;
}

uint64_t VisibilityCondition.shortDescription.getter()
{
  switch(*v0)
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
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      break;
  }

  OUTLINED_FUNCTION_1_3();
  return sub_220DBE240();
}

uint64_t VisibilityCondition.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

unint64_t sub_220CFA66C()
{
  result = qword_27CF95268;
  if (!qword_27CF95268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VisibilityCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t HumidityDewPointRule.description(for:data:)()
{
  v0 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v16 = sub_220DBE240();
  v26 = v17;
  v27 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_220DC17A0;
  sub_220DBEA90();
  sub_220DC02B0();
  (*(v2 + 104))(v5, *MEMORY[0x277D7B408], v0);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220CF6ABC();
  v19 = sub_220DBE0B0();
  v25 = v20;

  (*(v2 + 8))(v5, v0);
  (*(v29 + 8))(v10, v6);
  (*(v28 + 8))(v15, v11);
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_220CEFDB0();
  v21 = v25;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = sub_220DC05F0();

  return v22;
}

uint64_t getEnumTagSinglePayload for HumidityDewPointRule(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for HumidityDewPointRule(_BYTE *result, int a2, int a3)
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

void sub_220CFADD4()
{
  OUTLINED_FUNCTION_25();
  v91 = v1;
  v92 = v0;
  v95 = v3;
  v96 = v2;
  v93 = v4;
  v6 = v5;
  v90 = v7;
  v94 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v97 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v86 = &v81 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  v87 = &v81 - v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  v88 = &v81 - v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  v89 = &v81 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v81 - v29;
  v31 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  sub_220CE02DC(v6, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_220CD8040(v30);
    if (qword_27CF94F48 != -1)
    {
      OUTLINED_FUNCTION_6_3(&qword_27CF94F48);
    }

    v38 = sub_220DBF410();
    __swift_project_value_buffer(v38, qword_27CF95F60);
    v39 = sub_220DBF3F0();
    v40 = sub_220DC0980();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_220CD1000, v39, v40, v91, v41, 2u);
      MEMORY[0x223D98FB0](v41, -1, -1);
    }

    [objc_opt_self() centimeters];
    sub_220CDB190();
    sub_220DBE040();
  }

  else
  {
    v82 = v19;
    v83 = v31;
    (*(v33 + 32))(v37, v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
    v42 = sub_220DBEF90();
    MEMORY[0x28223BE20](v42);
    v43 = v92;
    *(&v81 - 2) = v37;
    *(&v81 - 1) = v43;
    OUTLINED_FUNCTION_4_3();
    v48 = sub_220CE0914(v44, v45, v46, v47, sub_220CE5648);
    v49 = *(v48 + 16);
    v93 = v15;
    v96 = v13;
    v84 = v37;
    v85 = v33;
    if (v49)
    {
      v98 = MEMORY[0x277D84F90];
      sub_220CFB6C4(0, v49, 0);
      v50 = v98;
      OUTLINED_FUNCTION_13_2();
      v81 = v48;
      v52 = v48 + v51;
      v91 = *(v53 + 56);
      v92 = v54;
      v97 = v53;
      v55 = (v53 - 8);
      v56 = v86;
      do
      {
        v57 = v94;
        v58 = v92(v12, v52, v94);
        v95(v58);
        (*v55)(v12, v57);
        v98 = v50;
        v60 = *(v50 + 16);
        v59 = *(v50 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_220CFB6C4(v59 > 1, v60 + 1, 1);
          v50 = v98;
        }

        *(v50 + 16) = v60 + 1;
        v15 = v93;
        OUTLINED_FUNCTION_13_2();
        v62 = v50 + v61 + *(v15 + 72) * v60;
        v13 = v96;
        (*(v15 + 32))(v62, v56, v96);
        v52 += v91;
        --v49;
      }

      while (v49);

      v63 = v88;
      v64 = v89;
      v65 = v84;
      v33 = v85;
    }

    else
    {
      v65 = v37;

      v50 = MEMORY[0x277D84F90];
      v63 = v88;
      v64 = v89;
    }

    v66 = [objc_opt_self() centimeters];
    v67 = sub_220CDB190();
    sub_220DBE040();
    v68 = *(v15 + 16);
    v68(v63, v64, v13);
    v69 = *(v50 + 16);
    if (v69)
    {
      OUTLINED_FUNCTION_13_2();
      v97 = v15 + 16;
      v71 = v50 + v70;
      v72 = v63;
      v73 = *(v15 + 72);
      v94 = v68;
      v95 = v73;
      v74 = (v15 + 8);
      v75 = (v15 + 32);
      v91 = v74 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92 = v67;
      v76 = v82;
      v77 = v96;
      v78 = v87;
      do
      {
        v94(v78, v71, v77);
        sub_220DBE120();
        v79 = *v74;
        (*v74)(v78, v77);
        v79(v72, v77);
        (*v75)(v72, v76, v77);
        v71 += v95;
        --v69;
      }

      while (v69);

      v15 = v93;
      v63 = v72;
      v64 = v89;
      v65 = v84;
      v33 = v85;
    }

    else
    {

      v79 = *(v15 + 8);
    }

    v80 = v96;
    v79(v64, v96);
    (*(v15 + 32))(v90, v63, v80);
    (*(v33 + 8))(v65, v83);
  }

  OUTLINED_FUNCTION_24();
}

char *sub_220CFB4F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_220CFB518(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_220CFB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_14_3();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_3_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_3_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_220CFB704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFB9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB77C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFBAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB7F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFBDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB814(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFBF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFC018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220CFB854(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_220CFC118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_220CFB8B0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_9_2();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952E8, &qword_220DC4FD0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

char *sub_220CFB9A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D8, &qword_220DC21A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_220CFBAA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C8, &qword_220DC4E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_220CFBBDC()
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_9_2();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8) + 72);
  v19 = OUTLINED_FUNCTION_10_1();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v16;
  v19[3] = 2 * ((v20 - v0) / v18);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_13_2();
  if (v11)
  {
    sub_220CFB564(v9 + v22, v16, v19 + v22, v7, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
  }

  OUTLINED_FUNCTION_24();
}

char *sub_220CFBDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220CFBF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95298, &qword_220DC2188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_220CFC018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95280, &qword_220DC2170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_220CFC118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95290, &qword_220DC2180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *CompactOverviewTableView.init(model:columnSpacing:columnHorizontalPadding:showDividerOnFirstRow:)@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t CompactOverviewTableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = v1[3];
  *a1 = sub_220DBF9D0();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95300, &qword_220DC21C0);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95308, &qword_220DC21C8);
  type metadata accessor for CompactOverviewTableColumnView(0);
  sub_220CE161C(&qword_27CF95310, &qword_27CF95308, &qword_220DC21C8, MEMORY[0x277D83980]);
  sub_220CFC73C(&qword_27CF95318, type metadata accessor for CompactOverviewTableColumnView, &unk_220DC22A0);
  sub_220CFC73C(&qword_27CF95320, type metadata accessor for OverviewTableRowViewModel, &protocol conformance descriptor for OverviewTableRowViewModel);
  return sub_220DC00B0();
}

uint64_t sub_220CFC3E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v10 = sub_220DBFC80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95388, &qword_220DC25B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v33 - v15);
  v17 = type metadata accessor for OverviewTableRowViewModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CFD3A8(a1, v19);
  if (a3)
  {
    goto LABEL_4;
  }

  sub_220D10084(a2, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_220CDA548(v16, &qword_27CF95388, &qword_220DC25B0);
LABEL_4:
    v20 = 1;
    goto LABEL_5;
  }

  v30 = *v16;
  v29 = v16[1];

  sub_220CFD470(v16, type metadata accessor for OverviewTableRowViewModel);
  if (v30 == *a1 && v29 == a1[1])
  {

    v20 = 0;
  }

  else
  {
    v32 = sub_220DC0CA0();

    v20 = v32 ^ 1;
  }

LABEL_5:
  sub_220CFD40C(v19, a4);
  v21 = type metadata accessor for CompactOverviewTableColumnView(0);
  *(a4 + v21[5]) = v20 & 1;
  *(a4 + v21[6]) = a5;
  v22 = v21[7];
  v23 = *(v11 + 104);
  v23(v13, *MEMORY[0x277CE0AA8], v10);
  sub_220DBFC20();
  v24 = sub_220DBFBE0();
  v25 = *(v11 + 8);
  v25(v13, v10);
  *(a4 + v22) = v24;
  v26 = v21[8];
  v23(v13, *MEMORY[0x277CE0A68], v10);
  sub_220DBFC20();
  v27 = sub_220DBFBE0();
  result = (v25)(v13, v10);
  *(a4 + v26) = v27;
  return result;
}

uint64_t type metadata accessor for CompactOverviewTableColumnView(uint64_t a1)
{
  result = qword_27CF95338;
  if (!qword_27CF95338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CFC73C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220CFC7DC(uint64_t a1)
{
  result = type metadata accessor for OverviewTableRowViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220CFC888@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4_4(&v88[-v3]);
  v95 = sub_220DBFB60();
  OUTLINED_FUNCTION_0();
  v94 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_4(&v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95350, &qword_220DC22F8);
  OUTLINED_FUNCTION_0();
  v97 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_4(&v88[-v9]);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_4(&v88[-v14]);
  v15 = sub_220DC0070();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v88[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95368, &unk_220DC2310);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v30);
  v32 = &v88[-v31];
  v33 = type metadata accessor for CompactOverviewTableColumnView(0);
  v34 = 1;
  if (*(v1 + *(v33 + 20)) == 1)
  {
    v35 = v32;
    sub_220DC0060();
    v36 = sub_220DBFBB0();
    type metadata accessor for OverviewTableRowViewModel(0);
    sub_220DBF700();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    (*(v17 + 32))(v25, v20, v15);
    v45 = v25 + *(v21 + 36);
    *v45 = v36;
    *(v45 + 8) = v38;
    *(v45 + 16) = v40;
    *(v45 + 24) = v42;
    *(v45 + 32) = v44;
    *(v45 + 40) = 0;
    sub_220CFD338(v25, v28);
    v32 = v35;
    sub_220CFD338(v28, v35);
    v34 = 0;
  }

  v99 = v32;
  __swift_storeEnumTagSinglePayload(v32, v34, 1, v21);
  v91 = sub_220DBFA40();
  v112 = 1;
  v90 = sub_220CFD1A4();
  v47 = v46;
  v89 = v48;
  v50 = v49;
  OverviewTableRowViewModel.formattedValueText()();
  v52 = v51;
  v92 = v1;
  v54 = v53;
  v56 = v55;
  v57 = sub_220DBFD10();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_220CF0978(v52, v54, v56 & 1);

  v64 = v89 & 1;
  v111 = v89 & 1;
  v114 = v89 & 1;
  v113 = v61 & 1;
  v65 = v90;
  sub_220CFD2C8(v90, v47, v89 & 1);

  sub_220CFD2C8(v57, v59, v61 & 1);

  sub_220CF0978(v57, v59, v61 & 1);

  sub_220CF0978(v65, v47, v111);

  __src[0] = v91;
  __src[1] = 0;
  LOBYTE(__src[2]) = v112;
  __src[3] = v65;
  __src[4] = v47;
  LOBYTE(__src[5]) = v64;
  __src[6] = v50;
  __src[7] = v57;
  __src[8] = v59;
  LOBYTE(__src[9]) = v61 & 1;
  __src[10] = v63;
  v66 = v93;
  sub_220DBFB50();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95370, &qword_220DC2560);
  v68 = sub_220CE161C(&qword_27CF95378, &qword_27CF95370, &qword_220DC2560, MEMORY[0x277CE1198]);
  v69 = v96;
  sub_220DBFDE0();
  (*(v94 + 8))(v66, v95);
  memcpy(__dst, __src, sizeof(__dst));
  sub_220CDA548(__dst, &qword_27CF95370, &qword_220DC2560);
  v70 = *(v92 + 24);
  v71 = v92;
  __src[0] = *(v92 + 16);
  __src[1] = v70;
  v108 = v67;
  v109 = v68;
  swift_getOpaqueTypeConformance2();
  sub_220CEFF14();
  v72 = v101;
  v73 = v98;
  sub_220DBFDC0();
  (*(v97 + 8))(v69, v73);
  v74 = type metadata accessor for OverviewTableRowViewModel(0);
  v75 = v105;
  sub_220CFD2D8(v71 + *(v74 + 24), v105, &qword_27CF95348, &qword_220DC22F0);
  v76 = type metadata accessor for OverviewTableValueString(0);
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    sub_220CDA548(v75, &qword_27CF95348, &qword_220DC22F0);
    v77 = 0;
    v78 = 0xE000000000000000;
  }

  else
  {
    v77 = sub_220CFFBF0();
    v78 = v79;
    sub_220CFD470(v75, type metadata accessor for OverviewTableValueString);
  }

  __src[0] = v77;
  __src[1] = v78;
  v80 = v102;
  sub_220DBF880();

  sub_220CE8278(v72);
  v81 = v104;
  sub_220DBF890();
  sub_220CE8278(v80);
  v82 = v99;
  v83 = v100;
  sub_220CFD2D8(v99, v100, &qword_27CF95368, &unk_220DC2310);
  v84 = v106;
  sub_220CE82D8(v81, v106);
  v85 = v107;
  sub_220CFD2D8(v83, v107, &qword_27CF95368, &unk_220DC2310);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95380, &unk_220DC2320);
  sub_220CE82D8(v84, v85 + *(v86 + 48));
  sub_220CE8278(v81);
  sub_220CDA548(v82, &qword_27CF95368, &unk_220DC2310);
  sub_220CE8278(v84);
  return sub_220CDA548(v83, &qword_27CF95368, &unk_220DC2310);
}

uint64_t sub_220CFD1A4()
{
  sub_220DC0650();
  sub_220CEFF14();
  v0 = sub_220DBFD40();
  v2 = v1;
  v4 = v3;
  type metadata accessor for CompactOverviewTableColumnView(0);
  v5 = sub_220DBFD10();
  v7 = v6;
  v9 = v8;
  sub_220CF0978(v0, v2, v4 & 1);

  sub_220DBFF20();
  v10 = sub_220DBFCE0();

  sub_220CF0978(v5, v7, v9 & 1);

  return v10;
}

double sub_220CFD2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_220CFD2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220CFD338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableRowViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CFD470(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OverviewTableView.init(model:rowVerticalPadding:rowHorizontalPadding:showDividerOnFirstRow:titleFont:valueFont:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953A0, &unk_220DC2340);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_220DBFC80();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  result = MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v32 = a2;
  if (!a3)
  {
    v26 = OUTLINED_FUNCTION_2_4();
    v27(v26);
    sub_220DBFC40();
    a3 = sub_220DBFBE0();
    result = (*(v19 + 8))(v23, v17);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = OUTLINED_FUNCTION_2_4();
    v29(v28);
    v30 = sub_220DBFC00();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v30);
    a4 = sub_220DBFC50();
    sub_220CDA548(v16, &qword_27CF953A0, &unk_220DC2340);
    result = (*(v19 + 8))(v23, v17);
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = v32;
  *a5 = v24;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = v25;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t OverviewTableView.body.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v6[2] = v0[2];
  v7 = *&v6[0];
  v5[6] = *&v6[0];
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_220CFDB4C(&v7, v5);
  sub_220CFDBA8(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95308, &qword_220DC21C8);
  type metadata accessor for OverviewTableRowView(0);
  sub_220CE161C(&qword_27CF95310, &qword_27CF95308, &qword_220DC21C8, MEMORY[0x277D83980]);
  sub_220CFDC2C(&qword_27CF953A8, type metadata accessor for OverviewTableRowView, &unk_220DC24B8);
  sub_220CFDC2C(&qword_27CF95320, type metadata accessor for OverviewTableRowViewModel, &protocol conformance descriptor for OverviewTableRowViewModel);
  return sub_220DC00B0();
}

uint64_t sub_220CFD86C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95388, &qword_220DC25B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6 - 8];
  v8 = type metadata accessor for OverviewTableRowViewModel(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for OverviewTableRowView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_220CFF830();
  if (*(a2 + 24))
  {
    goto LABEL_4;
  }

  sub_220D10084(*a2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_220CDA548(v7, &qword_27CF95388, &qword_220DC25B0);
LABEL_4:
    v12 = 1;
    goto LABEL_5;
  }

  v19 = *v7;
  v18 = v7[1];

  sub_220CFF9FC(v7, type metadata accessor for OverviewTableRowViewModel);
  if (v19 == *a1 && v18 == a1[1])
  {

    v12 = 0;
  }

  else
  {
    v21 = sub_220DC0CA0();

    v12 = v21 ^ 1;
  }

LABEL_5:
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v24 = v15;
  v25 = v16;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95460, &qword_220DC2568);
  swift_storeEnumTagMultiPayload();
  sub_220CFF94C();
  *(v11 + v9[6]) = v13;
  *(v11 + v9[7]) = v14;
  *(v11 + v9[8]) = v12 & 1;
  *(v11 + v9[9]) = v16;
  *(v11 + v9[10]) = v15;
  sub_220CFF94C();
  sub_220CFF9A0(&v25, v23);
  return sub_220CFF9A0(&v24, v23);
}

uint64_t type metadata accessor for OverviewTableRowView(uint64_t a1)
{
  result = qword_27CF953D0;
  if (!qword_27CF953D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CFDC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220CFDC74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220DBF9C0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95460, &qword_220DC2568);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_220CFF7DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220DBF7D0();
    OUTLINED_FUNCTION_0_2();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_220DC0990();
    v13 = sub_220DBFBA0();
    sub_220DBF380();

    sub_220DBF9B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v2);
  }
}

uint64_t sub_220CFDE58@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_220DBFA40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953E8, &unk_220DC2508);
  return sub_220CFDEA8(v2, a2 + *(v4 + 44));
}

uint64_t sub_220CFDEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v84 - v4;
  v5 = sub_220DBFB60();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F0, &qword_220DC2518);
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x28223BE20](v7);
  v89 = &v84 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  v9 = MEMORY[0x28223BE20](v95);
  v98 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v84 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v94 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v96 = &v84 - v15;
  v16 = sub_220DC0070();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95360, &qword_220DC2308);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95368, &unk_220DC2310);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v92 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  v31 = type metadata accessor for OverviewTableRowView(0);
  v32 = *(a1 + *(v31 + 32));
  v33 = 1;
  v100 = v30;
  if (v32 == 1)
  {
    v85 = v16;
    sub_220DC0060();
    v34 = sub_220DBFBB0();
    type metadata accessor for OverviewTableRowViewModel(0);
    sub_220DBF700();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    (*(v17 + 32))(v23, v19, v85);
    v43 = &v23[*(v20 + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    sub_220CFD338(v23, v25);
    v30 = v100;
    sub_220CFD338(v25, v100);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v33, 1, v20);
  v44 = sub_220DBF9E0();
  LOBYTE(v101) = 1;
  sub_220CFE72C(a1, v107);
  memcpy(v105, v107, sizeof(v105));
  memcpy(v106, v107, 0x62uLL);
  sub_220CFF7DC();
  sub_220CDA548(v106, &qword_27CF95400, &qword_220DC2528);
  memcpy(&v104[7], v105, 0x62uLL);
  v45 = a1;
  v46 = v101;
  v47 = sub_220DBFBD0();
  sub_220DBF700();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v107[0] = 0;
  v56 = sub_220DBFBB0();
  sub_220DBF700();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  LOBYTE(v101) = 0;
  v103[0] = v44;
  v103[1] = 0;
  LOBYTE(v103[2]) = v46;
  memcpy(&v103[2] + 1, v104, 0x69uLL);
  LOBYTE(v103[16]) = v47;
  v103[17] = v49;
  v103[18] = v51;
  v103[19] = v53;
  v103[20] = v55;
  LOBYTE(v103[21]) = 0;
  LOBYTE(v103[22]) = v56;
  v103[23] = v58;
  v103[24] = v60;
  v103[25] = v62;
  v103[26] = v64;
  LOBYTE(v103[27]) = 0;
  v65 = v86;
  sub_220DBFB50();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95408, &qword_220DC2530);
  v67 = sub_220CFF698();
  v68 = v89;
  sub_220DBFDE0();
  (*(v87 + 8))(v65, v88);
  memcpy(v107, v103, 0xD9uLL);
  sub_220CDA548(v107, &qword_27CF95408, &qword_220DC2530);
  v69 = v45 + *(v31 + 20);
  v70 = *(v69 + 24);
  v103[0] = *(v69 + 16);
  v103[1] = v70;
  v101 = v66;
  v102 = v67;
  swift_getOpaqueTypeConformance2();
  sub_220CEFF14();
  v71 = v93;
  v72 = v91;
  sub_220DBFDC0();
  (*(v90 + 8))(v68, v72);
  type metadata accessor for OverviewTableRowViewModel(0);
  v73 = v97;
  sub_220CFF7DC();
  v74 = type metadata accessor for OverviewTableValueString(0);
  if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
  {
    sub_220CDA548(v73, &qword_27CF95348, &qword_220DC22F0);
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  else
  {
    v75 = sub_220CFFBF0();
    v76 = v77;
    sub_220CFF9FC(v73, type metadata accessor for OverviewTableValueString);
  }

  v103[0] = v75;
  v103[1] = v76;
  v78 = v94;
  sub_220DBF880();

  sub_220CE8620(v71);
  v79 = v96;
  sub_220DBF890();
  sub_220CE8620(v78);
  v80 = v100;
  v81 = v92;
  sub_220CFF7DC();
  v82 = v98;
  sub_220CE8680();
  sub_220CFF7DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95438, &qword_220DC2548);
  sub_220CE8680();
  sub_220CE8620(v79);
  sub_220CDA548(v80, &qword_27CF95368, &unk_220DC2310);
  sub_220CE8620(v82);
  return sub_220CDA548(v81, &qword_27CF95368, &unk_220DC2310);
}

void *sub_220CFE72C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = sub_220DBF7D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CFDC74(v6);
  v7 = sub_220DBF7C0();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = sub_220DBFA50();
    v61[0] = 1;
    sub_220CFED30(v56);
    *(__src + 7) = v56[0];
    *(&__src[2] + 7) = v56[1];
    *(&__src[4] + 7) = v56[2];
    *(&__src[6] + 7) = v56[3];
    v57[0] = v8;
    v57[1] = 0;
    LOBYTE(v57[2]) = v61[0];
    memcpy(&v57[2] + 1, __src, 0x47uLL);
    memcpy(v59, v57, sizeof(v59));
    memcpy(v58, v57, sizeof(v58));
    memcpy(v60, v57, sizeof(v60));
    v55 = 0;
    sub_220CFF7DC();
    sub_220CFF7DC();
    sub_220CDA548(v59, &qword_27CF95370, &qword_220DC2560);
    v62 = 0;
    memcpy(__src, v60, 0x58uLL);
    __src[11] = 0;
    LOWORD(__src[12]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95440, &qword_220DC2550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95448, &qword_220DC2558);
    v9 = MEMORY[0x277CE14C0];
    sub_220CE161C(&qword_27CF95450, &qword_27CF95440, &qword_220DC2550, MEMORY[0x277CE14C0]);
    sub_220CE161C(&qword_27CF95458, &qword_27CF95448, &qword_220DC2558, v9);
    sub_220DBFB10();
    sub_220CDA548(v57, &qword_27CF95370, &qword_220DC2560);
  }

  else
  {
    v10 = a1 + *(type metadata accessor for OverviewTableRowView(0) + 20);
    v11 = *(v10 + 24);
    __src[0] = *(v10 + 16);
    __src[1] = v11;
    sub_220CEFF14();

    v12 = sub_220DBFD40();
    v14 = v13;
    v16 = v15;
    v51 = sub_220DBFD10();
    v52 = v17;
    v53 = v18;
    v49 = v19;
    sub_220CF0978(v12, v14, v16 & 1);

    OverviewTableRowViewModel.formattedValueText()();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = sub_220DBFD10();
    v28 = v27;
    v30 = v29;
    sub_220CF0978(v21, v23, v25 & 1);

    sub_220DBFF20();
    v31 = sub_220DBFCE0();
    v33 = v32;
    LOBYTE(v21) = v34;
    v50 = v35;

    sub_220CF0978(v26, v28, v30 & 1);

    v36 = v49 & 1;
    v58[0] = v36;
    LOBYTE(v57[0]) = v49 & 1;
    LOBYTE(v56[0]) = 1;
    LOBYTE(v26) = v21 & 1;
    v62 = v21 & 1;
    v48 = 1;
    v49 = v21 & 1;
    v37 = v51;
    v38 = v53;
    sub_220CFD2C8(v51, v53, v36);
    v39 = v52;

    sub_220CFD2C8(v31, v33, v21 & 1);
    v40 = v50;

    sub_220CFD2C8(v37, v38, v36);
    v41 = v39;

    v42 = v33;
    sub_220CFD2C8(v31, v33, v26);

    sub_220CF0978(v31, v33, v26);

    v43 = v37;
    v44 = v37;
    v45 = v53;
    sub_220CF0978(v44, v53, v58[0]);

    v59[0] = 1;
    __src[0] = v43;
    __src[1] = v45;
    LOBYTE(__src[2]) = v36;
    __src[3] = v41;
    __src[4] = 0;
    LOBYTE(__src[5]) = v48;
    __src[6] = v31;
    __src[7] = v42;
    LOBYTE(__src[8]) = v49;
    __src[9] = v40;
    __src[10] = 0x3FF0000000000000;
    __src[11] = v60[0];
    LOBYTE(__src[12]) = v60[1];
    BYTE1(__src[12]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95440, &qword_220DC2550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95448, &qword_220DC2558);
    v46 = MEMORY[0x277CE14C0];
    sub_220CE161C(&qword_27CF95450, &qword_27CF95440, &qword_220DC2550, MEMORY[0x277CE14C0]);
    sub_220CE161C(&qword_27CF95458, &qword_27CF95448, &qword_220DC2558, v46);
    sub_220DBFB10();
    sub_220CF0978(v31, v42, v26);

    sub_220CF0978(v51, v53, v36);
  }

  memcpy(__src, v61, 0x62uLL);
  return memcpy(v54, __src, 0x62uLL);
}

uint64_t sub_220CFED30@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for OverviewTableRowView(0);
  sub_220CEFF14();

  v3 = sub_220DBFD40();
  v5 = v4;
  v7 = v6;
  v8 = sub_220DBFD10();
  v30 = v9;
  v31 = v8;
  v29 = v10;
  v32 = v11;
  sub_220CF0978(v3, v5, v7 & 1);

  OverviewTableRowViewModel.formattedValueText()();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_220DBFD10();
  v20 = v19;
  LOBYTE(v5) = v21;
  sub_220CF0978(v13, v15, v17 & 1);

  sub_220DBFF20();
  v22 = sub_220DBFCE0();
  v24 = v23;
  LOBYTE(v3) = v25;
  v27 = v26;

  sub_220CF0978(v18, v20, v5 & 1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v3 & 1;
  *(a2 + 56) = v27;
  sub_220CFD2C8(v31, v30, v29 & 1);

  sub_220CFD2C8(v22, v24, v3 & 1);

  sub_220CF0978(v22, v24, v3 & 1);

  sub_220CF0978(v31, v30, v29 & 1);
}

uint64_t sub_220CFEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_220DC0120();
  v10 = v9;
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95468, &qword_220DC2570) + 36);
  sub_220CFF0A8(a2, v11, a4);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95470, &qword_220DC2578) + 36));
  *v12 = v8;
  v12[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95478, &qword_220DC2580);
  OUTLINED_FUNCTION_0_2();
  (*(v13 + 16))(a3, a1);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95480, &qword_220DC2588) + 36));
  v15 = *(sub_220DBF8B0() + 20);
  v16 = *MEMORY[0x277CE0118];
  sub_220DBFA10();
  OUTLINED_FUNCTION_0_2();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = a4;
  v14[1] = a4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95488, &qword_220DC2590);
  *(v14 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_220CFF0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_220DBF8B0();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_220DBFA10();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = a3;
  v9[1] = a3;
  sub_220DBF720();
  sub_220CFF830();
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95490, &qword_220DC2598) + 36);
  v14 = v22;
  *v13 = *&v21[8];
  *(v13 + 16) = v14;
  *(v13 + 32) = v23;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95498, &qword_220DC25A0);
  *(a2 + *(v15 + 52)) = a1;
  *(a2 + *(v15 + 56)) = 256;

  v16 = sub_220DC0120();
  v18 = v17;
  sub_220CFF9FC(v9, MEMORY[0x277CDFC08]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954A0, &qword_220DC25A8);
  v20 = (a2 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t View.overviewTableBackground(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *v5 = a4;
  v5[1] = a1;
  return MEMORY[0x223D97A50](v5, a2, &type metadata for OverviewTableBackgroundModifier, a3);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220CFF308(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220CFF348(uint64_t result, int a2, int a3)
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

unint64_t sub_220CFF3A4()
{
  result = qword_27CF953B0;
  if (!qword_27CF953B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF953B8, &qword_220DC23F8);
    sub_220CFDC2C(&qword_27CF953A8, type metadata accessor for OverviewTableRowView, &unk_220DC24B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF953B0);
  }

  return result;
}

unint64_t sub_220CFF458()
{
  result = qword_27CF953C0;
  if (!qword_27CF953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF953C0);
  }

  return result;
}

uint64_t sub_220CFF4AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_220CFF4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220CFF560(uint64_t a1)
{
  sub_220CFF608(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OverviewTableRowViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220CFF608(uint64_t a1)
{
  if (!qword_27CF953E0)
  {
    sub_220DBF7D0();
    v1 = sub_220DBF710();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF953E0);
    }
  }
}

unint64_t sub_220CFF698()
{
  result = qword_27CF95410;
  if (!qword_27CF95410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95408, &qword_220DC2530);
    sub_220CFF724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95410);
  }

  return result;
}

unint64_t sub_220CFF724()
{
  result = qword_27CF95418;
  if (!qword_27CF95418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95420, &qword_220DC2538);
    sub_220CE161C(&qword_27CF95428, &qword_27CF95430, &qword_220DC2540, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95418);
  }

  return result;
}

uint64_t sub_220CFF7DC()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2();
  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  return v0;
}

uint64_t sub_220CFF830()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220CFF884(uint64_t a1)
{
  v2 = sub_220DBF7D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220DBF8E0();
}

uint64_t sub_220CFF94C()
{
  OUTLINED_FUNCTION_6_4();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  return v0;
}

uint64_t sub_220CFF9FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220CFFA54()
{
  result = qword_27CF954B8;
  if (!qword_27CF954B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95480, &qword_220DC2588);
    sub_220CFFB0C();
    sub_220CE161C(&qword_27CF954D8, &qword_27CF95488, &qword_220DC2590, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF954B8);
  }

  return result;
}

unint64_t sub_220CFFB0C()
{
  result = qword_27CF954C0;
  if (!qword_27CF954C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95468, &qword_220DC2570);
    sub_220CE161C(&qword_27CF954C8, &qword_27CF95478, &qword_220DC2580, MEMORY[0x277CE04B0]);
    sub_220CE161C(&qword_27CF954D0, &qword_27CF95470, &qword_220DC2578, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF954C0);
  }

  return result;
}

uint64_t sub_220CFFBF0()
{
  type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  sub_220D00124(v0, v3 - v2);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    sub_220DC03A0();
    sub_220D00188(v5, v6, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8);
    sub_220DBE210();
    OUTLINED_FUNCTION_6();
    (*(v8 + 8))(v4);
  }

  return OUTLINED_FUNCTION_3_1();
}

uint64_t static OverviewTableValueString.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v49 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_6();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E0, &qword_220DC25F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = &v48 + *(v20 + 56) - v21;
  sub_220D00124(a1, &v48 - v21);
  sub_220D00124(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v49;
    sub_220D00124(v22, v18);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8) + 48);
    v35 = *&v18[v33];
    v34 = *&v18[v33 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      (*(v32 + 8))(v18, v4);
LABEL_9:
      sub_220D001A0(v22);
LABEL_10:
      v28 = 0;
      return v28 & 1;
    }

    v40 = *&v23[v33 + 8];
    v48 = *&v23[v33];
    (*(v32 + 32))(v9, v23, v4);
    v41 = sub_220DBE1E0();
    v42 = *(v32 + 8);
    v42(v18, v4);
    if (v41)
    {
      if (v35 == v48 && v34 == v40)
      {

        v47 = OUTLINED_FUNCTION_3_1();
        (v42)(v47);
LABEL_22:
        sub_220D00208(v22);
        v28 = 1;
        return v28 & 1;
      }

      v44 = sub_220DC0CA0();

      v45 = OUTLINED_FUNCTION_3_1();
      (v42)(v45);
      if (v44)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v46 = OUTLINED_FUNCTION_3_1();
      (v42)(v46);
    }

    sub_220D00208(v22);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_220D00124(v22, v13);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_220D00124(v22, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    v36 = OUTLINED_FUNCTION_1_4();
    sub_220D00188(v36, v37, v38);
    goto LABEL_9;
  }

LABEL_4:
  v25 = *v23;
  v26 = *(v23 + 1);
  v27 = v23[16];
  OUTLINED_FUNCTION_1_4();
  v28 = sub_220DC0390();
  v29 = OUTLINED_FUNCTION_1_4();
  sub_220D00188(v29, v30, v31);
  sub_220D00188(v25, v26, v27);
  sub_220D00208(v22);
  return v28 & 1;
}

uint64_t type metadata accessor for OverviewTableValueString(uint64_t a1)
{
  result = qword_27CF954F0;
  if (!qword_27CF954F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D00124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D00188(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_220D001A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E0, &qword_220DC25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D00208(uint64_t a1)
{
  v2 = type metadata accessor for OverviewTableValueString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220D00268(uint64_t a1)
{
  sub_220D002D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D002D4(uint64_t a1)
{
  if (!qword_27CF95500)
  {
    sub_220DBE210();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95500);
    }
  }
}

_BYTE *sub_220D00340(uint64_t a1, uint64_t a2)
{
  v3 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  sub_220D00124(a1, v14 - v13);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_220DBFCC0();
    OUTLINED_FUNCTION_5_3();
    sub_220D00208(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF954E8, &qword_220DC25F8);

    (*(v5 + 32))(v11, v15, v3);
    sub_220DBE200();
    sub_220DBFD30();
    OUTLINED_FUNCTION_5_3();

    sub_220D00208(a1);
    (*(v5 + 8))(v11, v3);
  }

  return v9;
}

void OverviewTableRowViewModel.formattedValueText()()
{
  OUTLINED_FUNCTION_25();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v19[-v3];
  v5 = type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_6();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v12 = sub_220DBFBF0();
  v13 = type metadata accessor for OverviewTableRowViewModel(0);
  sub_220D00790(v0 + *(v13 + 24), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_220CDA548(v4, &qword_27CF95348, &qword_220DC22F0);
    sub_220DBFA00();
    v14 = sub_220DBFD20();
    v16 = v15;
    v18 = v17;

    sub_220DBFD10();
    OUTLINED_FUNCTION_5_4();

    sub_220CF0978(v14, v16, v18 & 1);
  }

  else
  {
    sub_220D00800(v4, v11);
    sub_220D02070(v11, v9, type metadata accessor for OverviewTableValueString);
    sub_220D00340(v9, v12);
    OUTLINED_FUNCTION_5_4();
    sub_220D020CC(v11, type metadata accessor for OverviewTableValueString);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for OverviewTableRowViewModel(uint64_t a1)
{
  result = qword_27CF95510;
  if (!qword_27CF95510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D00790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D00800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220D00880(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 24 * v3);
      v8 = v6[1];
      v7 = v6[2];
      v9 = (v5 + 24 * v3);
      v11 = v9[1];
      v10 = v9[2];
      if (v8)
      {
        if (!v11)
        {
          return;
        }

        v12 = *v6 == *v9 && v8 == v11;
        if (!v12 && (sub_220DC0CA0() & 1) == 0)
        {
          return;
        }
      }

      else if (v11)
      {
        return;
      }

      v13 = *(v7 + 16);
      if (v13 != *(v10 + 16))
      {
        return;
      }

      if (v13)
      {
        v14 = v7 == v10;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v23 = v5;

        v15 = 0;
        v16 = v13 - 1;
        v17 = 32;
        while (v15 < *(v7 + 16))
        {
          memcpy(__dst, (v7 + v17), sizeof(__dst));
          if (v15 >= *(v10 + 16))
          {
            goto LABEL_58;
          }

          memcpy(v26, (v10 + v17), 0x48uLL);
          v18 = __dst[0] == v26[0] && __dst[1] == v26[1];
          if (!v18 && (sub_220DC0CA0() & 1) == 0)
          {
            goto LABEL_55;
          }

          v19 = __dst[2] == v26[2] && __dst[3] == v26[3];
          if (!v19 && (sub_220DC0CA0() & 1) == 0)
          {
            goto LABEL_55;
          }

          v20 = __dst[4] == v26[4] && __dst[5] == v26[5];
          if (!v20 && (sub_220DC0CA0() & 1) == 0)
          {
            goto LABEL_55;
          }

          v21 = __dst[6] == v26[6] && __dst[7] == v26[7];
          if (!v21 && (sub_220DC0CA0() & 1) == 0)
          {
            goto LABEL_55;
          }

          if (__dst[8])
          {
            if (!v26[8])
            {
              goto LABEL_54;
            }

            sub_220D01FC0(__dst, v24);
            sub_220D01FC0(v26, v24);
            swift_retain_n();

            v22 = sub_220DBFE90();

            sub_220D0201C(v26);
            sub_220D0201C(__dst);
            if ((v22 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          else if (v26[8])
          {
LABEL_54:
            sub_220D01FC0(__dst, v24);
            sub_220D01FC0(v26, v24);

            sub_220D0201C(v26);
            sub_220D0201C(__dst);
LABEL_55:

            return;
          }

          if (v16 == v15)
          {

            v5 = v23;
            goto LABEL_21;
          }

          v17 += 72;
          ++v15;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        break;
      }

LABEL_21:
      if (++v3 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_220D00BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_220D01FC0(__dst, v7);
      sub_220D01FC0(v11, v7);
      v5 = static PrecipitationTotalPlatterViewModel.RowModel.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_220D0201C(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_220D0201C(v13);
      if (!v5)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_220D00CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_220D02070(v13, v10, type metadata accessor for DetailChartDataElement);
        sub_220D02070(v14, v7, type metadata accessor for DetailChartDataElement);
        v16 = static DetailChartDataElement.== infix(_:_:)(v10, v7);
        sub_220D020CC(v7, type metadata accessor for DetailChartDataElement);
        sub_220D020CC(v10, type metadata accessor for DetailChartDataElement);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_220D00E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v32 = &a9 - v31;
  v33 = *(v25 + 16);
  if (v33 == *(v23 + 16) && v33 && v25 != v23)
  {
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = v25 + v34;
    v36 = v23 + v34;
    v37 = *(v30 + 72);
    while (1)
    {
      sub_220D02070(v35, v32, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D02070(v36, v29, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if ((sub_220DBE460() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_6(v26[5]);
      v40 = v40 && v38 == v39;
      if (!v40 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_6(v26[6]);
      v43 = v40 && v41 == v42;
      if (!v43 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v44 = static DetailChartDataElement.== infix(_:_:)(&v32[v26[7]], &v29[v26[7]]);
      sub_220D020CC(v29, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      sub_220D020CC(v32, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
      if (v44)
      {
        v36 += v37;
        v35 += v37;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_220D020CC(v29, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
    sub_220D020CC(v32, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
  }

LABEL_21:
  OUTLINED_FUNCTION_24();
}

void sub_220D010A4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(v3 + 16);
  if (v11 == *(v1 + 16) && v11 && v3 != v1)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = v3 + v12;
    v14 = v1 + v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = (v15 - 8);
    v24 = *(v15 + 56);
    v25 = v16;
    while (1)
    {
      v18 = v25;
      v25(v10, v13, v4);
      if (!v11)
      {
        break;
      }

      v19 = v15;
      v18(v8, v14, v4);
      sub_220D01F68();
      v20 = sub_220DC05B0();
      v21 = *v17;
      v22 = OUTLINED_FUNCTION_20();
      v21(v22);
      (v21)(v10, v4);
      if (v20)
      {
        v14 += v24;
        v13 += v24;
        v23 = v11-- == 1;
        v15 = v19;
        if (!v23)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_220D01274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableValueString(0);
  MEMORY[0x28223BE20](v4);
  v33 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31[-v7];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95508, &qword_220DC2658);
  MEMORY[0x28223BE20](v35);
  v10 = &v31[-v9];
  v36 = type metadata accessor for OverviewTableRowViewModel(0);
  v11 = MEMORY[0x28223BE20](v36);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v16 = &v31[-v15];
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_27:
    v29 = 0;
    return v29 & 1;
  }

  if (v17 && a1 != a2)
  {
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v20 = a2 + v18;
    v34 = *(v14 + 72);
    while (1)
    {
      sub_220D02070(v19, v16, type metadata accessor for OverviewTableRowViewModel);
      sub_220D02070(v20, v13, type metadata accessor for OverviewTableRowViewModel);
      v21 = *v16 == *v13 && v16[1] == v13[1];
      if (!v21 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v22 = v16[2] == v13[2] && v16[3] == v13[3];
      if (!v22 && (sub_220DC0CA0() & 1) == 0)
      {
        break;
      }

      v23 = *(v36 + 24);
      v24 = *(v35 + 48);
      sub_220D00790(v16 + v23, v10);
      sub_220D00790(v13 + v23, &v10[v24]);
      if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v10[v24], 1, v4) != 1)
        {
          goto LABEL_25;
        }

        sub_220CDA548(v10, &qword_27CF95348, &qword_220DC22F0);
      }

      else
      {
        sub_220D00790(v10, v8);
        if (__swift_getEnumTagSinglePayload(&v10[v24], 1, v4) == 1)
        {
          sub_220D020CC(v8, type metadata accessor for OverviewTableValueString);
LABEL_25:
          sub_220CDA548(v10, &qword_27CF95508, &qword_220DC2658);
          break;
        }

        v25 = v4;
        v26 = v33;
        sub_220D00800(&v10[v24], v33);
        v32 = static OverviewTableValueString.== infix(_:_:)(v8, v26);
        v27 = v26;
        v4 = v25;
        sub_220D020CC(v27, type metadata accessor for OverviewTableValueString);
        sub_220D020CC(v8, type metadata accessor for OverviewTableValueString);
        sub_220CDA548(v10, &qword_27CF95348, &qword_220DC22F0);
        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      v28 = *(v16 + *(v36 + 28)) ^ *(v13 + *(v36 + 28));
      sub_220D020CC(v13, type metadata accessor for OverviewTableRowViewModel);
      sub_220D020CC(v16, type metadata accessor for OverviewTableRowViewModel);
      if ((v28 & 1) == 0)
      {
        v20 += v34;
        v19 += v34;
        if (--v17)
        {
          continue;
        }
      }

      v29 = v28 ^ 1;
      return v29 & 1;
    }

    sub_220D020CC(v13, type metadata accessor for OverviewTableRowViewModel);
    sub_220D020CC(v16, type metadata accessor for OverviewTableRowViewModel);
    goto LABEL_27;
  }

  v29 = 1;
  return v29 & 1;
}

uint64_t sub_220D016E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t OverviewTableRowViewModel.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverviewTableRowViewModel(0) + 24);

  return sub_220D00790(v3, a1);
}

void OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = ~v24;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  if (v36)
  {
    *v40 = v29;
    *(v40 + 1) = v27;
    v40[16] = v25;
    v41 = type metadata accessor for OverviewTableValueString(0);
    swift_storeEnumTagMultiPayload();
    v42 = v40;
    v43 = 0;
    v44 = v41;
  }

  else
  {
    v44 = type metadata accessor for OverviewTableValueString(0);
    v42 = v40;
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  *v35 = v33;
  v35[1] = v31;
  v35[2] = v33;
  v35[3] = v31;
  v45 = type metadata accessor for OverviewTableRowViewModel(0);
  sub_220D01ABC(v40, v35 + *(v45 + 24));
  *(v35 + *(v45 + 28)) = v23 & 1;

  OUTLINED_FUNCTION_24();
}

void OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)()
{
  OUTLINED_FUNCTION_25();
  v28 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = ~v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  if (v17)
  {
    *v21 = v6;
    *(v21 + 1) = v4;
    v21[16] = v2;
    v22 = type metadata accessor for OverviewTableValueString(0);
    swift_storeEnumTagMultiPayload();
    v23 = v21;
    v24 = 0;
    v25 = v22;
  }

  else
  {
    v25 = type metadata accessor for OverviewTableValueString(0);
    v23 = v21;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  *v16 = v14;
  v16[1] = v12;
  v16[2] = v10;
  v16[3] = v8;
  v26 = type metadata accessor for OverviewTableRowViewModel(0);
  sub_220D01ABC(v21, v16 + *(v26 + 24));
  *(v16 + *(v26 + 28)) = v28 & 1;
  OUTLINED_FUNCTION_24();
}

uint64_t OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for OverviewTableRowViewModel(0);
  result = sub_220D01ABC(a5, a7 + *(v10 + 24));
  *(a7 + *(v10 + 28)) = a6;
  return result;
}

uint64_t sub_220D01ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static OverviewTableRowViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95508, &qword_220DC2658);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = *v25 == *v23 && v25[1] == v23[1];
  if (v37 || (sub_220DC0CA0() & 1) != 0)
  {
    v38 = v25[2] == v23[2] && v25[3] == v23[3];
    if (v38 || (sub_220DC0CA0() & 1) != 0)
    {
      v39 = *(type metadata accessor for OverviewTableRowViewModel(0) + 24);
      v40 = *(v33 + 48);
      sub_220D00790(v25 + v39, v36);
      sub_220D00790(v23 + v39, &v36[v40]);
      OUTLINED_FUNCTION_8_4(v36);
      if (!v37)
      {
        sub_220D00790(v36, v32);
        OUTLINED_FUNCTION_8_4(&v36[v40]);
        if (!v41)
        {
          sub_220D00800(&v36[v40], v28);
          static OverviewTableValueString.== infix(_:_:)(v32, v28);
          sub_220D020CC(v28, type metadata accessor for OverviewTableValueString);
          sub_220D020CC(v32, type metadata accessor for OverviewTableValueString);
          sub_220CDA548(v36, &qword_27CF95348, &qword_220DC22F0);
          goto LABEL_20;
        }

        sub_220D020CC(v32, type metadata accessor for OverviewTableValueString);
LABEL_19:
        sub_220CDA548(v36, &qword_27CF95508, &qword_220DC2658);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_8_4(&v36[v40]);
      if (!v37)
      {
        goto LABEL_19;
      }

      sub_220CDA548(v36, &qword_27CF95348, &qword_220DC22F0);
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D01DB4@<X0>(uint64_t *a1@<X8>)
{
  result = OverviewTableRowViewModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SevereAlertComponentStringsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SevereAlertComponentStringsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220D01E8C(uint64_t a1)
{
  sub_220D01F10(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220D01F10(uint64_t a1)
{
  if (!qword_27CF95520)
  {
    type metadata accessor for OverviewTableValueString(255);
    v1 = sub_220DC0AE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF95520);
    }
  }
}

unint64_t sub_220D01F68()
{
  result = qword_27CF95528;
  if (!qword_27CF95528)
  {
    sub_220DBE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95528);
  }

  return result;
}

uint64_t sub_220D02070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

uint64_t sub_220D020CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ConditionUnits.init(temperature:pressure:windSpeed:windGust:precipitationTotal:visibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

id ConditionUnits.overridingTemperature(with:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *a2 = a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;

  return a1;
}

uint64_t static ConditionUnits.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_220D022A8();
  if (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0() & 1) != 0 && (sub_220DC0AB0())
  {
    return sub_220DC0AB0() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_220D022A8()
{
  result = qword_27CF95530;
  if (!qword_27CF95530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95530);
  }

  return result;
}

uint64_t ConditionUnits.hash(into:)(uint64_t a1)
{
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  return sub_220DC0AC0();
}

uint64_t ConditionUnits.hashValue.getter()
{
  sub_220DC0CE0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t sub_220D02420()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_220DC0CE0();
  ConditionUnits.hash(into:)(v3);
  return sub_220DC0D20();
}

uint64_t UnitManager.conditionUnits(locale:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_220DBF090();
  v4 = sub_220DBF0C0();
  v5 = sub_220DBF0F0();
  v6 = sub_220DBF0E0();
  v7 = sub_220DBF0A0();
  v8 = sub_220DC0930();

  v9 = objc_opt_self();
  v10 = &selRef_centimeters;
  if ((v8 & 1) == 0)
  {
    v10 = &selRef_inches;
  }

  v11 = [v9 *v10];
  result = sub_220DBF080();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v11;
  a2[5] = result;
  return result;
}

unint64_t sub_220D02554()
{
  result = qword_27CF95538;
  if (!qword_27CF95538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95538);
  }

  return result;
}

id sub_220D025A8()
{
  v0 = objc_allocWithZone(sub_220DC0400());

  return [v0 init];
}

uint64_t sub_220D025E0()
{
  sub_220DC0330();
  swift_allocObject();
  return sub_220DC0320();
}

uint64_t sub_220D02638@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationPeakTimeCalculator();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E0, &qword_220DC2930);
  swift_allocObject();
  result = sub_220DBF280();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for LocationPeakTimeCalculator;
  *a1 = v3;
  return result;
}

void *sub_220D026B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95558, &qword_220DC28A8);
  result = sub_220DBF200();
  if (v6)
  {
    v4 = type metadata accessor for SunElevationCalculator();
    swift_allocObject();
    result = SunElevationCalculator.init(locationPeakTimeCalculator:)(&v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for SunElevationCalculator;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220D02778@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_220DC04D0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95568, &qword_220DC28B8);
  result = sub_220DBF200();
  if (v11)
  {
    sub_220DC04C0();
    a2[3] = type metadata accessor for SunriseSunsetTableViewModelFactory(0);
    a2[4] = &protocol witness table for SunriseSunsetTableViewModelFactory;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return SunriseSunsetTableViewModelFactory.init(sunEventViewModelFactory:sunriseSunsetEventCalculator:)(&v10, v6, boxed_opaque_existential_1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220D02894@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_220D028FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  result = sub_220DBF200();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95580, &qword_220DC28D0);
  result = sub_220DBF200();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  result = sub_220DBF200();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220DC0330();
  result = sub_220DBF1F0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C0, &qword_220DC2910);
  result = sub_220DBF200();
  if (v8)
  {
    a2[3] = &type metadata for ConditionsPlatterStringBuilder;
    a2[4] = &off_2834734F8;
    v6 = swift_allocObject();
    *a2 = v6;
    sub_220CD570C(&v9, v6 + 96);
    sub_220CD570C(&v11, v6 + 56);
    sub_220CD570C(&v13, v6 + 16);
    *(v6 + 136) = v5;
    return sub_220CD570C(&v7, v6 + 144);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_220D02B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
    result = sub_220DBF200();
    if (v7)
    {
      a2[3] = &type metadata for PrecipitationPlatterStringBuilder;
      a2[4] = &off_283473060;
      v5 = swift_allocObject();
      *a2 = v5;
      sub_220CD570C(&v8, v5 + 16);
      return sub_220CD570C(&v6, v5 + 56);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220D02C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  result = sub_220DBF200();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  result = sub_220DBF200();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220DC0330();
  result = sub_220DBF1F0();
  if (result)
  {
    v5 = result;
    a2[3] = &type metadata for TemperaturePlatterStringBuilder;
    a2[4] = &off_283472810;
    v6 = swift_allocObject();
    *a2 = v6;
    sub_220CD570C(&v7, v6 + 56);
    result = sub_220CD570C(&v9, v6 + 16);
    *(v6 + 96) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}