uint64_t sub_26A7450B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6908, &qword_26A87ED80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A745120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8, &qword_26A8598C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A745190()
{
  result = qword_2803B6918;
  if (!qword_2803B6918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6910, &qword_26A87ED88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6918);
  }

  return result;
}

unint64_t sub_26A7451F4()
{
  result = qword_2803B6920;
  if (!qword_2803B6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6920);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummaryItemAttributionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A745334()
{
  result = qword_2803B6928;
  if (!qword_2803B6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6930, qword_26A87EDD0);
    sub_26A745190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6928);
  }

  return result;
}

unint64_t sub_26A7453C4()
{
  result = qword_2803B6938;
  if (!qword_2803B6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentColumnLayout(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ComponentColumnLayout(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_26A7454A8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_26A84F218();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = type metadata accessor for ComponentColumnLayout.Cache(0);
  *(a3 + v9[7]) = MEMORY[0x277D84F98];
  v10 = a3 + v9[8];
  result = 0.0;
  *(v10 + 25) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 41) = 1;
  *(a3 + v9[5]) = a4;
  *(a3 + v9[6]) = a2;
  return result;
}

void sub_26A7455A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23_20();
  v7 = v4;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v147 = v17;
  v148 = v16;
  MEMORY[0x28223BE20](v16);
  v143 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_23();
  v144 = v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_23();
  v146 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_23();
  v145 = v24;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_23();
  v27 = v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v28);
  v30 = &v142 - v29;
  v31 = type metadata accessor for ComponentColumnLayout.Cache(0);
  v32 = v7 + v31[8];
  if ((*(v32 + 41) & 1) == 0)
  {
    v33 = *(v32 + 40);
    v6 = *v32;
    v5 = *(v32 + 8);
    LOBYTE(v238) = *(v32 + 24) & 1;
    v237 = v33 & 1;
    if (sub_26A84F5A8())
    {
      goto LABEL_33;
    }
  }

  v152 = v13;
  v151 = v9;
  v149 = v11;
  v150 = v15;
  sub_26A84F218();
  sub_26A746D10();
  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  if (OUTLINED_FUNCTION_8_57() == 1)
  {
    sub_26A84F228();
    LOBYTE(v238) = v152 & 1;
    v237 = v151 & 1;
    sub_26A84F0E8();
    OUTLINED_FUNCTION_17_27();
    (*(v147 + 8))(v30, v148);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  if (OUTLINED_FUNCTION_8_57() == 3)
  {
    sub_26A84F228();
    sub_26A84F228();
    sub_26A84F228();
    v34 = *(v7 + v31[6]);
    v35 = sub_26A84F598();
    v39 = v152;
    v142 = v27;
    if (v34)
    {
      v41 = v149;
      v40 = *&v150;
      OUTLINED_FUNCTION_16_27(v35, v36 & 1, v37, v38);
      sub_26A84F0E8();
      if (v34 == 1)
      {
        v44 = v42;
        v45 = v43;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v179 = v44;
        v180 = v45;
        v181 = v40;
        v46 = v39 & 1;
        v182 = v46;
        v183 = v41;
        v47 = v151 & 1;
        v184 = v151 & 1;
        OUTLINED_FUNCTION_13_37();
        sub_26A655A44(v48, v49);
        OUTLINED_FUNCTION_18_27();
        v50 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v50, v51, v52, v53);
        sub_26A84F0E8();
        v55 = v54;
        v57 = v56;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v175[0] = v55;
        v175[1] = v57;
        v175[2] = v150;
        v176 = v46;
        v177 = v41;
        v178 = v47;
        sub_26A655A44(v175, 2);
        OUTLINED_FUNCTION_18_27();
        v58 = v145;
        LOBYTE(v238) = 0;
        v237 = 1;
        v40 = *&v150;
        OUTLINED_FUNCTION_6_59();
        sub_26A84F0E8();
        v60 = v59;
        v5 = v61;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v169 = v60;
        v170 = v5;
        v171 = v40;
        v172 = v46;
        v173 = v41;
        v174 = v47;
        OUTLINED_FUNCTION_14_38();
      }

      else
      {
        OUTLINED_FUNCTION_17_27();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v195 = v6;
        v196 = v5;
        v197 = v40;
        v99 = v39 & 1;
        v198 = v99;
        v199 = v41;
        v100 = v151 & 1;
        v200 = v151 & 1;
        OUTLINED_FUNCTION_14_38();
        sub_26A655A44(v101, v102);
        OUTLINED_FUNCTION_18_27();
        v103 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v103, v104, v105, v106);
        sub_26A84F0E8();
        v108 = v107;
        v57 = v109;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v191[0] = v108;
        v191[1] = v57;
        *&v191[2] = v40;
        v192 = v99;
        v193 = v41;
        v194 = v100;
        sub_26A655A44(v191, 2);
        OUTLINED_FUNCTION_18_27();
        OUTLINED_FUNCTION_0_83();
        v58 = v145;
        sub_26A84F0E8();
        v111 = v110;
        v45 = v112;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_76();
        v185 = v111;
        v186 = v45;
        v187 = v40;
        v188 = v99;
        v189 = v41;
        v190 = v100;
        OUTLINED_FUNCTION_13_37();
      }

      sub_26A655A44(v62, v63);
      OUTLINED_FUNCTION_18_27();
      v95 = v146;
    }

    else
    {
      OUTLINED_FUNCTION_16_27(v35, v36 & 1, v37, v38);
      sub_26A84F0E8();
      OUTLINED_FUNCTION_17_27();
      v85 = v31[7];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v163 = v6;
      v164 = v5;
      v41 = v149;
      v40 = *&v150;
      v165 = v150;
      v86 = v39 & 1;
      v166 = v86;
      v167 = v149;
      LODWORD(v144) = v151 & 1;
      v168 = v151 & 1;
      OUTLINED_FUNCTION_14_38();
      sub_26A655A44(v87, v88);
      *(v7 + v85) = v238;
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      v90 = v89;
      v45 = v91;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v157 = v90;
      v158 = v45;
      v159 = v40;
      v160 = v86;
      v161 = v41;
      v92 = v144;
      v162 = v144;
      OUTLINED_FUNCTION_13_37();
      sub_26A655A44(v93, v94);
      *(v7 + v85) = v238;
      OUTLINED_FUNCTION_1_87();
      v95 = v146;
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      v97 = v96;
      v57 = v98;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_31();
      v153[0] = v97;
      v153[1] = v57;
      *&v153[2] = v40;
      v154 = v86;
      v155 = v41;
      v156 = v92;
      v58 = v145;
      sub_26A655A44(v153, 2);
      *(v7 + v85) = v238;
    }

    v113 = *(v147 + 8);
    v114 = v95;
    v115 = v148;
    v113(v114, v148);
    v113(v58, v115);
    v113(v142, v115);
    if (v5 > v45)
    {
      v116 = v5;
    }

    else
    {
      v116 = v45;
    }

    if (v116 > *&v57)
    {
      v65 = v116;
    }

    else
    {
      v65 = *&v57;
    }

LABEL_28:
    v66 = v152;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_9_52();
  OUTLINED_FUNCTION_20_28();
  v64 = OUTLINED_FUNCTION_8_57();
  v65 = 0.0;
  v41 = v149;
  v40 = *&v150;
  v66 = v152;
  if (v64 == 2)
  {
    sub_26A84F228();
    v67 = v143;
    sub_26A84F228();
    if (*(v7 + v31[6]))
    {
      if (*(v7 + v31[6]) == 1)
      {
        v68 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v68, v69, v70, v71);
        sub_26A84F0E8();
        v73 = v72;
        v75 = v74;
        v76 = v31[7];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v219 = v73;
        v220 = v75;
        v221 = v40;
        LODWORD(v146) = v152 & 1;
        v222 = v152 & 1;
        v223 = v41;
        v77 = v151 & 1;
        v224 = v151 & 1;
        OUTLINED_FUNCTION_13_37();
        sub_26A655A44(v78, v79);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_0_83();
        sub_26A84F0E8();
        v81 = v80;
        v65 = v82;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v213 = v81;
        v214 = v65;
        v215 = v40;
        v216 = v146;
        v217 = v149;
        v218 = v77;
        OUTLINED_FUNCTION_14_38();
      }

      else
      {
        v128 = sub_26A84F598();
        OUTLINED_FUNCTION_2_85(v128, v129, v130, v131);
        sub_26A84F0E8();
        OUTLINED_FUNCTION_17_27();
        v76 = v31[7];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v231 = v6;
        v232 = 0;
        v233 = v40;
        LODWORD(v146) = v152 & 1;
        v234 = v152 & 1;
        v235 = v41;
        v132 = v151 & 1;
        v236 = v151 & 1;
        OUTLINED_FUNCTION_14_38();
        sub_26A655A44(v133, v134);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_0_83();
        sub_26A84F0E8();
        v136 = v135;
        v75 = v137;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_5_69();
        v225 = v136;
        v226 = v75;
        v227 = v40;
        v228 = v146;
        v229 = v149;
        v230 = v132;
        OUTLINED_FUNCTION_13_37();
      }

      sub_26A655A44(v83, v84);
      *(v7 + v76) = v238;
    }

    else
    {
      v117 = v66 & 1;
      LOBYTE(v238) = 0;
      v237 = 1;
      OUTLINED_FUNCTION_6_59();
      sub_26A84F0E8();
      OUTLINED_FUNCTION_17_27();
      v118 = v31[7];
      swift_isUniquelyReferenced_nonNull_native();
      v238 = *(v7 + v118);
      v207 = v6;
      v208 = 0;
      v209 = v40;
      v210 = v117;
      v211 = v41;
      v119 = v41;
      v120 = v151 & 1;
      v212 = v151 & 1;
      OUTLINED_FUNCTION_14_38();
      sub_26A655A44(v121, v122);
      *(v7 + v118) = v238;
      OUTLINED_FUNCTION_0_83();
      sub_26A84F0E8();
      v124 = v123;
      v75 = v125;
      swift_isUniquelyReferenced_nonNull_native();
      v238 = *(v7 + v118);
      v201 = v124;
      v202 = v75;
      v203 = v40;
      v204 = v117;
      v205 = v119;
      v206 = v120;
      OUTLINED_FUNCTION_13_37();
      sub_26A655A44(v126, v127);
      *(v7 + v118) = v238;
      v31 = v144;
    }

    v138 = v148;
    v139 = *(v147 + 8);
    v139(v67, v148);
    v139(v31, v138);
    if (v65 <= v75)
    {
      v65 = v75;
    }

    v41 = v149;
    v40 = *&v150;
    goto LABEL_28;
  }

LABEL_29:
  if (v66)
  {
    v140 = 0.0;
  }

  else
  {
    v140 = v40;
  }

  *v32 = v140;
  *(v32 + 8) = v65;
  v141 = v151 & 1;
  *(v32 + 16) = v40;
  *(v32 + 24) = v66 & 1;
  *(v32 + 32) = v41;
  *(v32 + 40) = v141;
LABEL_33:
  OUTLINED_FUNCTION_24_24();
}

void sub_26A745F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23_20();
  v41 = v5;
  v40 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F218();
  sub_26A746D10();
  OUTLINED_FUNCTION_10_47();
  sub_26A851D88();
  OUTLINED_FUNCTION_10_47();
  sub_26A851DD8();
  if (OUTLINED_FUNCTION_7_59() == 1)
  {
    sub_26A84F228();
    v44.origin.x = OUTLINED_FUNCTION_4_73();
    CGRectGetMinX(v44);
    v45.origin.x = OUTLINED_FUNCTION_4_73();
    CGRectGetMinY(v45);
    sub_26A851568();
    v43 = v10 & 1;
    v42 = v8 & 1;
    sub_26A84F0F8();
    (*(v13 + 8))(v16, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_47();
    sub_26A851D88();
    OUTLINED_FUNCTION_10_47();
    sub_26A851DD8();
    if (OUTLINED_FUNCTION_7_59() == 2)
    {
      v43 = v10 & 1;
      v42 = v8 & 1;
      OUTLINED_FUNCTION_4_73();
      v17 = OUTLINED_FUNCTION_11_45();
      sub_26A746158(v17, v18, v19, v20, v24, v25, v26, v27, v21, v22, v23);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      sub_26A851D88();
      OUTLINED_FUNCTION_10_47();
      sub_26A851DD8();
      if (OUTLINED_FUNCTION_7_59() == 3)
      {
        v43 = v10 & 1;
        v42 = v8 & 1;
        OUTLINED_FUNCTION_4_73();
        v28 = OUTLINED_FUNCTION_11_45();
        sub_26A746498(v28, v29, v30, v31, v35, v36, v37, v38, v39, v32, v33, v34);
      }
    }
  }

  OUTLINED_FUNCTION_24_24();
}

uint64_t sub_26A746158(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = a5.n128_f64[0];
  v18 = a11;
  v37 = sub_26A84F108();
  v19 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  sub_26A84F228();
  sub_26A84F228();
  a2 &= 1u;
  v39 = a2;
  a4 &= 1u;
  v38 = a4;
  sub_26A746B24(0, a1);
  v26 = v25;
  v39 = a2;
  v38 = a4;
  sub_26A746B24(1, a1);
  v28 = v27;
  v29 = v17;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  if (v18 == 1)
  {
    CGRectGetMinX(*&v29);
  }

  else
  {
    CGRectGetMinX(*&v29);
    if (v28 >= v26)
    {
      v43.origin.x = v17;
      v43.origin.y = a6;
      v43.size.width = a7;
      v43.size.height = a8;
      CGRectGetMinY(v43);
      sub_26A851568();
      v39 = 0;
      v38 = 0;
      sub_26A84F0F8();
      v44.origin.x = v17;
      v44.origin.y = a6;
      v44.size.width = a7;
      v44.size.height = a8;
      CGRectGetMaxX(v44);
      v45.origin.x = v17;
      v45.origin.y = a6;
      v45.size.width = a7;
      v45.size.height = a8;
      CGRectGetMinY(v45);
      sub_26A851578();
      goto LABEL_6;
    }
  }

  v40.origin.x = v17;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  CGRectGetMidY(v40);
  sub_26A8515B8();
  v39 = 0;
  v38 = 0;
  sub_26A84F0F8();
  v41.origin.x = v17;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  CGRectGetMaxX(v41);
  v42.origin.x = v17;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  CGRectGetMidY(v42);
  sub_26A8515C8();
LABEL_6:
  v39 = 0;
  v38 = 0;
  sub_26A84F0F8();
  v33 = *(v19 + 8);
  v34 = v37;
  v33(v21, v37);
  return (v33)(v24, v34);
}

uint64_t sub_26A746498(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v19 = a5.n128_f64[0];
  v20 = a12;
  v21 = sub_26A84F108();
  v41 = *(v21 - 8);
  v42 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v40 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v40 - v28;
  sub_26A84F228();
  sub_26A84F228();
  sub_26A84F228();
  a2 &= 1u;
  v45 = a2;
  a4 &= 1u;
  v44 = a4;
  sub_26A746B24(0, a1);
  v31 = v30;
  v45 = a2;
  v44 = a4;
  v40[2] = sub_26A746B24(1, a1);
  v43 = v32;
  v45 = a2;
  v44 = a4;
  v33 = sub_26A746B24(2, a1);
  *&v40[3] = a9;
  *&v40[4] = v33;
  *&v40[1] = v34;
  if (v20 != 1)
  {
    if (v43 < v31)
    {
      if (v31 >= v34)
      {
        if (v34 >= v31)
        {
LABEL_17:
          v60.origin.x = v19;
          v60.origin.y = a6;
          v60.size.width = a7;
          v60.size.height = a8;
          CGRectGetMinX(v60);
          v61.origin.x = v19;
          v61.origin.y = a6;
          v61.size.width = a7;
          v61.size.height = a8;
          CGRectGetMinY(v61);
          sub_26A851568();
          v45 = 0;
          v44 = 0;
          sub_26A84F0F8();
          v62.origin.x = v19;
          v62.origin.y = a6;
          v62.size.width = a7;
          v62.size.height = a8;
          CGRectGetMinX(v62);
          v63.origin.x = v19;
          v63.origin.y = a6;
          v63.size.width = a7;
          v63.size.height = a8;
          CGRectGetMinY(v63);
          sub_26A851568();
          v45 = 0;
          v44 = 0;
          sub_26A84F0F8();
          v64.origin.x = v19;
          v64.origin.y = a6;
          v64.size.width = a7;
          v64.size.height = a8;
          CGRectGetMaxX(v64);
          v65.origin.x = v19;
          v65.origin.y = a6;
          v65.size.width = a7;
          v65.size.height = a8;
          CGRectGetMinY(v65);
          sub_26A851578();
          goto LABEL_18;
        }
      }

      else if (v34 >= v31)
      {
        if (v43 >= v34)
        {
          goto LABEL_17;
        }

LABEL_14:
        v52.origin.x = v19;
        v52.origin.y = a6;
        v52.size.width = a7;
        v52.size.height = a8;
        CGRectGetMinX(v52);
        v53.origin.x = v19;
        v53.origin.y = a6;
        v53.size.width = a7;
        v53.size.height = a8;
        CGRectGetMidY(v53);
        sub_26A8515B8();
        v45 = 0;
        v44 = 0;
        sub_26A84F0F8();
        v54.origin.x = v19;
        v54.origin.y = a6;
        v54.size.width = a7;
        v54.size.height = a8;
        CGRectGetMinX(v54);
        v55.origin.x = v19;
        v55.origin.y = a6;
        v55.size.width = a7;
        v55.size.height = a8;
        CGRectGetMidY(v55);
        sub_26A8515B8();
        v45 = 0;
        v44 = 0;
        sub_26A84F0F8();
        v56.origin.x = v19;
        v56.origin.y = a6;
        v56.size.width = a7;
        v56.size.height = a8;
        CGRectGetMaxX(v56);
        v57.origin.x = v19;
        v57.origin.y = a6;
        v57.size.width = a7;
        v57.size.height = a8;
        CGRectGetMinY(v57);
        sub_26A851578();
        goto LABEL_18;
      }

      v58.origin.x = v19;
      v58.origin.y = a6;
      v58.size.width = a7;
      v58.size.height = a8;
      CGRectGetMinX(v58);
      v59.origin.x = v19;
      v59.origin.y = a6;
      v59.size.width = a7;
      v59.size.height = a8;
      CGRectGetMinY(v59);
      sub_26A851568();
      v45 = 0;
      v44 = 0;
      goto LABEL_3;
    }

    if (v31 >= v34 || v43 >= v34)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v46.origin.x = v19;
  v46.origin.y = a6;
  v46.size.width = a7;
  v46.size.height = a8;
  CGRectGetMinX(v46);
  v47.origin.x = v19;
  v47.origin.y = a6;
  v47.size.width = a7;
  v47.size.height = a8;
  CGRectGetMidY(v47);
  sub_26A8515B8();
  v45 = 0;
  v44 = 0;
LABEL_3:
  sub_26A84F0F8();
  v48.origin.x = v19;
  v48.origin.y = a6;
  v48.size.width = a7;
  v48.size.height = a8;
  CGRectGetMinX(v48);
  v49.origin.x = v19;
  v49.origin.y = a6;
  v49.size.width = a7;
  v49.size.height = a8;
  CGRectGetMidY(v49);
  sub_26A8515B8();
  v45 = 0;
  v44 = 0;
  sub_26A84F0F8();
  v50.origin.x = v19;
  v50.origin.y = a6;
  v50.size.width = a7;
  v50.size.height = a8;
  CGRectGetMaxX(v50);
  v51.origin.x = v19;
  v51.origin.y = a6;
  v51.size.width = a7;
  v51.size.height = a8;
  CGRectGetMidY(v51);
  sub_26A8515C8();
LABEL_18:
  v45 = 0;
  v44 = 0;
  sub_26A84F0F8();
  v36 = *(v41 + 8);
  v37 = v23;
  v38 = v42;
  v36(v37, v42);
  v36(v26, v38);
  return (v36)(v29, v38);
}

double sub_26A746B24(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(type metadata accessor for ComponentColumnLayout.Cache(0) + 28));
  if (!*(v4 + 16))
  {
    return 0.0;
  }

  v5 = sub_26A5484D4(a1);
  if ((v6 & 1) == 0)
  {
    return 0.0;
  }

  v7 = *(*(v4 + 56) + 48 * v5);
  if ((sub_26A84F5A8() & 1) == 0)
  {
    return 0.0;
  }

  return v7;
}

void (*sub_26A746C44(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

unint64_t sub_26A746CBC()
{
  result = qword_2803B6940;
  if (!qword_2803B6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6940);
  }

  return result;
}

unint64_t sub_26A746D10()
{
  result = qword_28157FE70;
  if (!qword_28157FE70)
  {
    sub_26A84F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE70);
  }

  return result;
}

uint64_t type metadata accessor for ComponentColumnLayout.Cache(uint64_t a1)
{
  result = qword_2803B6948;
  if (!qword_2803B6948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A746DDC(uint64_t a1)
{
  sub_26A84F218();
  if (v1 <= 0x3F)
  {
    sub_26A746E90(319);
    if (v2 <= 0x3F)
    {
      sub_26A5D4A20(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A746E90(uint64_t a1)
{
  if (!qword_2803B6958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF8E0, qword_26A8660C8);
    v1 = sub_26A8516D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B6958);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ComponentColumnLayout.ColumnSizingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A746FE4()
{
  result = qword_2803B6960;
  if (!qword_2803B6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_59()
{

  return sub_26A851DC8();
}

uint64_t OUTLINED_FUNCTION_8_57()
{

  return sub_26A851DC8();
}

uint64_t OUTLINED_FUNCTION_9_52()
{

  return sub_26A851D88();
}

void *OUTLINED_FUNCTION_20_28()
{

  return sub_26A851DD8();
}

uint64_t sub_26A747224(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A747278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A747310@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6968, &qword_26A87F108);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  *v5 = sub_26A84FC08();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6970, &qword_26A87F110);
  sub_26A7474F4(v1, &v5[*(v6 + 44)]);
  sub_26A4DBCC8(&qword_2803B6978, &qword_2803B6968, &qword_26A87F108, MEMORY[0x277CE1198]);
  sub_26A850AF8();
  sub_26A4DBD10(v5, &qword_2803B6968, &qword_26A87F108);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26A68CCBC;
  *(v7 + 24) = 0;
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6980, &qword_26A87F118) + 36);
  *(v8 + 16) = swift_getKeyPath();
  *(v8 + 24) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v10 = *(v9 + 40);
  *(v8 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v11 = v8 + *(v9 + 44);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  *v8 = sub_26A4D1F7C;
  *(v8 + 8) = v7;
  return result;
}

uint64_t sub_26A7474F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE620, &unk_26A861BF8);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3C0, &qword_26A861BF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE618, &qword_26A861BE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v73 = &v69 - v20;
  v96[0] = *a1;
  v21 = v96[0];
  if (v96[0])
  {
    if (qword_28157E6C0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815888E8, &v83[200], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v89);
    memcpy(&v83[8], v89, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v21;
  }

  else
  {
    bzero(v83, 0x128uLL);
  }

  memcpy(v88, v83, sizeof(v88));
  v22 = a1[1];
  if (v22)
  {
    sub_26A4DBD68(v96, v78, &qword_2803AAFF8, &qword_26A8598C0);
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v83[200], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v90);
    memcpy(&v83[8], v90, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v22;

    v23 = sub_26A8502F8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6988, &unk_26A87F1B0);
    v25 = &v18[*(v24 + 36)];
    *v25 = v23;
    *(v25 + 1) = swift_getKeyPath();
    v25[16] = 0;
    v26 = *(type metadata accessor for MinimumFontSizeModifier(0) + 24);
    *&v25[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0, &qword_26A87C5D0);
    swift_storeEnumTagMultiPayload();
    memcpy(v18, v83, 0x128uLL);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v24);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6988, &unk_26A87F1B0);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v27);
    sub_26A4DBD68(v96, v83, &qword_2803AAFF8, &qword_26A8598C0);
  }

  sub_26A4DBDB4(v18, v73, &qword_2803AE618, &qword_26A861BE8);
  v28 = a1[2];
  if (v28)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v83[200], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v91);
    memcpy(&v83[8], v91, 0xBFuLL);
    *&v83[288] = 0;
    *&v83[280] = sub_26A80A810;
    *v83 = v28;

    v29 = sub_26A850258();
    sub_26A84ED48();
    *(&v31 + 1) = v30;
    *(&v33 + 1) = v32;
    v34 = *v83;
    v35 = *&v83[16];
    v36 = *&v83[32];
    v37 = *&v83[48];
    v38 = *&v83[64];
    v39 = *&v83[80];
    v40 = *&v83[96];
    v41 = *&v83[112];
    v42 = *&v83[128];
    v43 = *&v83[144];
    v44 = *&v83[160];
    v45 = *&v83[176];
    v46 = *&v83[192];
    v47 = *&v83[208];
    v48 = *&v83[224];
    v49 = *&v83[240];
    v50 = *&v83[256];
    v51 = *&v83[272];
    v52 = *&v83[288];
    v53 = v29;
    LOBYTE(v78[0]) = 0;
  }

  else
  {
    v53 = 0;
    v52 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    LOBYTE(v78[0]) = 0;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v31 = 0uLL;
    v33 = 0uLL;
  }

  *v83 = v34;
  *&v83[16] = v35;
  *&v83[32] = v36;
  *&v83[48] = v37;
  *&v83[64] = v38;
  *&v83[80] = v39;
  *&v83[96] = v40;
  *&v83[112] = v41;
  *&v83[128] = v42;
  *&v83[144] = v43;
  *&v83[160] = v44;
  *&v83[176] = v45;
  *&v83[192] = v46;
  *&v83[208] = v47;
  *&v83[224] = v48;
  *&v83[240] = v49;
  *&v83[256] = v50;
  *&v83[272] = v51;
  *&v83[288] = v52;
  v84 = v53;
  v85 = v31;
  v86 = v33;
  v87 = v78[0];
  v54 = v74;
  sub_26A8512B8();
  v55 = sub_26A8502A8();
  sub_26A84ED48();
  v56 = v54 + *(v8 + 36);
  *v56 = v55;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  *v7 = sub_26A84FA58();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6990, &unk_26A87F1C0);
  sub_26A747F4C(a1, &v7[*(v61 + 44)]);
  v62 = a1[3];
  v95 = v62;
  if (v62)
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, &v78[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v92);
    memcpy(&v78[1], v92, 0xBFuLL);
    v78[36] = 0;
    v78[35] = sub_26A80A810;
    v78[0] = v62;
  }

  else
  {
    bzero(v78, 0x128uLL);
  }

  memcpy(v82, v78, sizeof(v82));
  v63 = a1[4];
  v94 = v63;
  if (v63)
  {
    sub_26A4DBD68(&v95, v78, &qword_2803AAFF8, &qword_26A8598C0);
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    v64 = v7;
    sub_26A4DBD68(&unk_2815887F8, &v78[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v93);
    memcpy(&v78[1], v93, 0xBFuLL);
    v78[36] = 0;
    v78[35] = sub_26A80A810;
    v78[0] = v63;
  }

  else
  {
    v64 = v7;
    bzero(v78, 0x128uLL);
    sub_26A4DBD68(&v95, v81, &qword_2803AAFF8, &qword_26A8598C0);
  }

  memcpy(v81, v78, sizeof(v81));
  sub_26A4DBD68(v88, v79, &qword_2803AA888, &qword_26A857920);
  v80[0] = v79;
  v65 = v73;
  sub_26A4DBD68(v73, v15, &qword_2803AE618, &qword_26A861BE8);
  v80[1] = v15;
  sub_26A4DBD68(v83, v78, &qword_2803AA890, &unk_26A85E340);
  v80[2] = v78;
  v70 = v15;
  v66 = v74;
  sub_26A4DBD68(v74, v10, &qword_2803AD3C0, &qword_26A861BF0);
  v80[3] = v10;
  v69 = v10;
  v67 = v72;
  sub_26A4DBD68(v64, v72, &qword_2803AE620, &unk_26A861BF8);
  v80[4] = v67;
  sub_26A4DBD68(v82, v77, &qword_2803AA888, &qword_26A857920);
  v80[5] = v77;
  sub_26A4DBD68(v81, v76, &qword_2803AA888, &qword_26A857920);
  v80[6] = v76;
  sub_26A594938(v80);
  sub_26A4DBD68(&v94, &v75, &qword_2803AAFF8, &qword_26A8598C0);
  sub_26A4DBD10(v81, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v82, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v64, &qword_2803AE620, &unk_26A861BF8);
  sub_26A4DBD10(v66, &qword_2803AD3C0, &qword_26A861BF0);
  sub_26A4DBD10(v83, &qword_2803AA890, &unk_26A85E340);
  sub_26A4DBD10(v65, &qword_2803AE618, &qword_26A861BE8);
  sub_26A4DBD10(v88, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v76, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v77, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v67, &qword_2803AE620, &unk_26A861BF8);
  sub_26A4DBD10(v69, &qword_2803AD3C0, &qword_26A861BF0);
  sub_26A4DBD10(v78, &qword_2803AA890, &unk_26A85E340);
  sub_26A4DBD10(v70, &qword_2803AE618, &qword_26A861BE8);
  return sub_26A4DBD10(v79, &qword_2803AA888, &qword_26A857920);
}

uint64_t sub_26A747F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6998, &qword_26A87F238);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = a1[5];
  v17 = a1[7];
  v16 = a1[8];
  v18 = a1[9];
  *v14 = sub_26A84FBF8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69A0, &qword_26A87F240);
  sub_26A748198(v15, v16, v17, v18, &v14[*(v19 + 44)]);
  v20 = a1[6];
  v21 = a1[10];
  v22 = a1[11];
  v23 = a1[12];
  *v11 = sub_26A84FBF8();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_26A748198(v20, v22, v21, v23, &v11[*(v19 + 44)]);
  sub_26A4DBD68(v14, v8, &qword_2803B6998, &qword_26A87F238);
  sub_26A4DBD68(v11, v5, &qword_2803B6998, &qword_26A87F238);
  v24 = v29;
  sub_26A4DBD68(v8, v29, &qword_2803B6998, &qword_26A87F238);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69A8, &qword_26A87F248);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_26A4DBD68(v5, v24 + *(v25 + 64), &qword_2803B6998, &qword_26A87F238);
  sub_26A4DBD10(v11, &qword_2803B6998, &qword_26A87F238);
  sub_26A4DBD10(v14, &qword_2803B6998, &qword_26A87F238);
  sub_26A4DBD10(v5, &qword_2803B6998, &qword_26A87F238);
  return sub_26A4DBD10(v8, &qword_2803B6998, &qword_26A87F238);
}

uint64_t sub_26A748198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a5;
  v102 = a4;
  v99 = a3;
  *&v98 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v82 - v7;
  v8 = sub_26A84B1D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v82 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2718, &unk_26A870D40);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v103 = &v82 - v25;
  if (a1)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D62B38], v8, v24);
    KeyPath = swift_getKeyPath();
    *&v96 = v15;
    *&v95 = KeyPath;
    v27 = v14 + *(v12 + 36);
    v28 = a1;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v9 + 32))(&v27[v29], v11, v8);
    __swift_storeEnumTagSinglePayload(&v27[v29], 0, 1, v8);
    *v27 = v95;
    *v14 = v28;
    v30 = swift_getKeyPath();
    sub_26A4DBDB4(v14, v17, &qword_2803AAFA0, &unk_26A85D4D0);
    v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36)];
    *v31 = v30;
    v31[8] = 1;
    v32 = swift_getKeyPath();
    v33 = &v17[*(v96 + 36)];
    *v33 = v32;
    v33[8] = 0;

    LOBYTE(v29) = sub_26A850268();
    sub_26A84ED48();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_26A4DBDB4(v17, v22, &qword_2803AB2E0, &qword_26A8583F0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2720, &qword_26A87F250);
    v43 = &v22[*(v42 + 36)];
    *v43 = v29;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    v44 = v22;
    v45 = 0;
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2720, &qword_26A87F250);
    v44 = v22;
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v42);
  sub_26A4DBDB4(v22, v103, &qword_2803B2718, &unk_26A870D40);
  v46 = v99;
  v47 = v98;
  if (v98)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v109[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v112);
    memcpy(&v109[1], v112, 0xBFuLL);
    v109[36] = 0;
    v109[35] = sub_26A80A810;
    v109[0] = v47;
  }

  else
  {
    bzero(v109, 0x128uLL);
  }

  memcpy(v111, v109, sizeof(v111));
  if (v46)
  {
    v48 = qword_2803A9048;

    if (v48 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D28A0, &v109[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v113);
    memcpy(&v109[1], v113, 0xBFuLL);
    v49 = sub_26A80A810;
    v109[36] = 0;
    v109[35] = sub_26A80A810;
    v109[0] = v46;
    v98 = *&v109[1];
    v95 = *&v109[5];
    v96 = *&v109[3];
    v93 = *&v109[9];
    v94 = *&v109[7];
    v91 = *&v109[13];
    v92 = *&v109[11];
    v89 = *&v109[17];
    v90 = *&v109[15];
    v87 = *&v109[21];
    v88 = *&v109[19];
    v85 = *&v109[25];
    v86 = *&v109[23];
    v83 = *&v109[29];
    v84 = *&v109[27];
    v82 = *&v109[31];
    v50 = v109[33];
    v51 = v109[34];
    v52 = 1;
    v108[0] = 1;
    v53 = swift_getKeyPath();
    v55 = v82;
    v54 = v83;
    v57 = v84;
    v56 = v85;
    v59 = v86;
    v58 = v87;
    v61 = v88;
    v60 = v89;
    v63 = v90;
    v62 = v91;
    v65 = v92;
    v64 = v93;
    v67 = v94;
    v66 = v95;
    v68 = v96;
    v69 = v98;
    v70 = v108[0];
    LOBYTE(v104) = 0;
  }

  else
  {
    LOBYTE(v104) = 0;

    v49 = 0;
    v51 = 0;
    v50 = 0;
    v53 = 0;
    v52 = 0;
    v70 = 0;
    v69 = 0uLL;
    v68 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
  }

  *&v109[1] = v69;
  *&v109[3] = v68;
  *&v109[5] = v66;
  *&v109[7] = v67;
  *&v109[9] = v64;
  *&v109[11] = v65;
  *&v109[13] = v62;
  *&v109[15] = v63;
  *&v109[17] = v60;
  *&v109[19] = v61;
  *&v109[21] = v58;
  *&v109[23] = v59;
  *&v109[25] = v56;
  *&v109[27] = v57;
  *&v109[29] = v54;
  *&v109[31] = v55;
  v109[0] = v46;
  v109[33] = v50;
  v109[34] = v51;
  v109[35] = v49;
  v109[37] = 0;
  v109[36] = 0;
  v109[38] = v70 | (v52 << 8);
  v109[39] = v53;
  v109[40] = v52;
  v110 = v104;
  if (v102)
  {
    v71 = sub_26A850338();
    v72 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v71);

    v73 = sub_26A8503E8();
    sub_26A4DBD10(v72, &qword_2803AB208, &qword_26A857FD0);
    v74 = sub_26A84FEC8();
    v106 = MEMORY[0x277CE04F8];
    v107 = MEMORY[0x277CE04E8];
    v105 = v74;
    v104 = v73;
    sub_26A6078C0();
    v76 = v75;
    sub_26A57E57C(&v104);
  }

  else
  {

    v76 = 0;
  }

  v77 = v103;
  v78 = v100;
  sub_26A4DBD68(v103, v100, &qword_2803B2718, &unk_26A870D40);
  sub_26A4DBD68(v111, v108, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v109, &v104, &qword_2803B69B0, &qword_26A87F258);
  v79 = v101;
  sub_26A4DBD68(v78, v101, &qword_2803B2718, &unk_26A870D40);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69B8, &qword_26A87F260);
  sub_26A4DBD68(v108, v79 + v80[12], &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(&v104, v79 + v80[16], &qword_2803B69B0, &qword_26A87F258);
  *(v79 + v80[20]) = v76;

  sub_26A4DBD10(v109, &qword_2803B69B0, &qword_26A87F258);
  sub_26A4DBD10(v111, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v77, &qword_2803B2718, &unk_26A870D40);

  sub_26A4DBD10(&v104, &qword_2803B69B0, &qword_26A87F258);
  sub_26A4DBD10(v108, &qword_2803AA888, &qword_26A857920);
  return sub_26A4DBD10(v78, &qword_2803B2718, &unk_26A870D40);
}

unint64_t sub_26A748B28()
{
  result = qword_2803B69C0;
  if (!qword_2803B69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6980, &qword_26A87F118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6968, &qword_26A87F108);
    sub_26A4DBCC8(&qword_2803B6978, &qword_2803B6968, &qword_26A87F108, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B69C0);
  }

  return result;
}

uint64_t sub_26A748C50(uint64_t a1)
{
  sub_26A84AB48();
  OUTLINED_FUNCTION_0_84();
  v19 = v1;
  v2 = sub_26A53ACC8();
  if (OUTLINED_FUNCTION_3_77(v2, MEMORY[0x277D837D0], v3, v4, v5, v6, v7, v8, v19))
  {

    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    v9 = OUTLINED_FUNCTION_3_77(v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v15, v16, v17);
  }

  return v9 & 1;
}

uint64_t sub_26A748CE4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_26A84AB98();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  result = sub_26A748C50(v13);
  if (result)
  {
    if (a3 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (a3 < 9.22337204e18)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
            v42 = a1;
            v40 = a3;
            v48 = sub_26A84AB48();
            v49 = v15;
            OUTLINED_FUNCTION_0_84();
            v46 = v16;
            v47 = v17;
            v44 = a2;
            v44 = sub_26A852568();
            v45 = v18;
            v19 = sub_26A53ACC8();
            v20 = OUTLINED_FUNCTION_2_86(&v46, &v44);
            v22 = v21;

            v48 = v20;
            v49 = v22;
            OUTLINED_FUNCTION_1_88();
            v46 = v23;
            v47 = v24;
            v44 = v40;
            v44 = sub_26A852568();
            v45 = v25;
            v37 = v19;
            v39 = v19;
            OUTLINED_FUNCTION_2_86(&v46, &v44);

            sub_26A84AB88();

            if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
            {
              sub_26A67B574(v12);
              v26 = sub_26A851E98();
              LOBYTE(v37) = 2;
              sub_26A7B8464(v26, 1, "SnippetUI/URL+extensions.swift", 30, 2, 47, "setImageSizeParameters(with:width:)", 35, v37, v19, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
              v27 = v42;
              v28 = *(v43 + 16);
              v28(v42, v4, v8);
            }

            else
            {
              v27 = v42;
              (*(v43 + 32))(v42, v12, v8);
              v28 = *(v43 + 16);
            }

            v31 = v41;
            v28(v41, v27, v8);
            v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
            v33 = swift_allocObject();
            v34 = v33;
            (*(v43 + 32))(v33 + v32, v31, v8);
            v35 = sub_26A851E88();
            LOBYTE(v37) = 2;
            sub_26A7C7120(v35, sub_26A74920C, v34, 1, "SnippetUI/URL+extensions.swift", 30, 2, 33, "parameterized(with:)", 20, v37, v39, v40, SHIDWORD(v40), v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_26A851E88();
  LOBYTE(v36) = 2;
  sub_26A7B86C0(v29, 1, "SnippetUI/URL+extensions.swift", 30, 2, 27, "parameterized(with:)", 20, v36, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v30 = *(v43 + 16);

  return v30(a1, v3, v8);
}

unint64_t sub_26A74918C()
{
  sub_26A852248();

  v0 = sub_26A84AB48();
  MEMORY[0x26D663B00](v0);

  return 0xD000000000000033;
}

unint64_t sub_26A74920C()
{
  sub_26A84AB98();

  return sub_26A74918C();
}

uint64_t OUTLINED_FUNCTION_2_86(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211F2F8](a1, a2, 0, 0, 0, 1, v2, v2);
}

uint64_t OUTLINED_FUNCTION_3_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A8520E8();
}

double sub_26A7492F8()
{
  v1 = [v0 coordinate];
  if (!v1)
  {
    return *MEMORY[0x277CE4278];
  }

  v2 = v1;
  [v1 lat];
  v4 = v3;
  [v2 lng];

  return v4;
}

uint64_t sub_26A74937C()
{
  v1 = [v0 content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A7E0200(v1);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if (!sub_26A73670C())
  {

LABEL_17:

    return 0;
  }

  sub_26A736710();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D6644E0](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 image_element];
  if (!v7 || (v8 = sub_26A55DF78(v7)) == 0)
  {

LABEL_15:
    return 0;
  }

  v9 = v8;
  if (!sub_26A73670C())
  {

    goto LABEL_17;
  }

  sub_26A736710();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D6644E0](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = [v11 symbol];
  if (v12)
  {
    v13 = v12;
    sub_26A74E490(v12);
    if (v14)
    {
      v15 = sub_26A851918();

      return v15 & 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_26A74954C()
{
  result = sub_26A749754(v0);
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_26A749578()
{
  v1 = [v0 anchor];
  if (!v1)
  {
    return 0.5;
  }

  v2 = v1;
  [v1 x];
  v4 = v3;
  [v2 y];

  return v4;
}

id RFMapAnnotation.init(coordinate:title:anchor:content:)(uint64_t a1, uint64_t a2, void *a3, __n128 a4, double a5, double a6, double a7)
{
  v13 = a4.n128_f64[0];
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a4)) init];
  v15 = objc_allocWithZone(MEMORY[0x277D4C408]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setLat_];
  [v17 setLng_];
  [v16 setCoordinate_];
  sub_26A5A4500(a1, a2, v16);
  v18 = [objc_allocWithZone(MEMORY[0x277D4C038]) init];
  [v18 setX_];
  [v18 setY_];
  [v16 setAnchor_];
  [v16 setContent_];

  return v16;
}

uint64_t sub_26A749754(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t type metadata accessor for Separator(uint64_t a1)
{
  result = qword_2803B69C8;
  if (!qword_2803B69C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A74982C(uint64_t a1)
{
  sub_26A84BBF8();
  if (v1 <= 0x3F)
  {
    sub_26A749900(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
    if (v2 <= 0x3F)
    {
      sub_26A749900(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A749900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A749970@<X0>(uint64_t a1@<X8>)
{
  sub_26A7499F8(v1, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69D8, &qword_26A87F380) + 36);
  sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v5 = *(v4 + 16);

  return v5(a1 + v3, v1);
}

uint64_t sub_26A7499F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for Separator(0);
  v68 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = v4;
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69E0, &qword_26A87F388);
  MEMORY[0x28223BE20](v73);
  v74 = v67 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69E8, &qword_26A87F390);
  MEMORY[0x28223BE20](v83);
  v75 = v67 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F0, &qword_26A880940);
  MEMORY[0x28223BE20](v72);
  v71 = v67 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F8, &unk_26A880950);
  MEMORY[0x28223BE20](v79);
  v76 = (v67 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A00, &qword_26A87F398);
  MEMORY[0x28223BE20](v9);
  v11 = v67 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A08, &qword_26A87F3A0);
  MEMORY[0x28223BE20](v80);
  v82 = v67 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A10, &qword_26A87F3A8);
  MEMORY[0x28223BE20](v77);
  v14 = v67 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A18, &qword_26A87F3B0);
  MEMORY[0x28223BE20](v81);
  v78 = v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A20, &qword_26A87F3B8);
  MEMORY[0x28223BE20](v16);
  v84 = v67 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A28, &qword_26A87F3C0);
  MEMORY[0x28223BE20](v85);
  v19 = v67 - v18;
  v20 = sub_26A84BBF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a1, v20, v22);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == *MEMORY[0x277D62F50] || v25 == *MEMORY[0x277D62F48])
  {
    goto LABEL_6;
  }

  v67[1] = v9;
  v67[2] = v16;
  if (v25 == *MEMORY[0x277D62F30])
  {
    v30 = sub_26A84FBF8();
    v31 = v76;
    *v76 = v30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A90, &unk_26A880960);
    sub_26A8512C8();
    sub_26A74AF34(v32);
    sub_26A851318();
    *(v31 + *(v79 + 36)) = 0x3FD3333333333333;
    v33 = &qword_2803B69F8;
    v34 = &unk_26A880950;
    sub_26A51D0F8(v31, v14, &qword_2803B69F8, &unk_26A880950);
    swift_storeEnumTagMultiPayload();
    sub_26A74AEA8();
    sub_26A74AF8C();
    v35 = v78;
    sub_26A84FDF8();
    sub_26A51D0F8(v35, v82, &qword_2803B6A18, &qword_26A87F3B0);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v36 = v84;
    sub_26A84FDF8();
    sub_26A4DBD10(v35, &qword_2803B6A18, &qword_26A87F3B0);
    sub_26A51D0F8(v36, v11, &qword_2803B6A20, &qword_26A87F3B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v36, &qword_2803B6A20, &qword_26A87F3B8);
    v37 = v31;
LABEL_11:
    v43 = v33;
    v44 = v34;
    return sub_26A4DBD10(v37, v43, v44);
  }

  v38 = v85;
  if (v25 == *MEMORY[0x277D62F20])
  {
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v39 = &v19[*(v38 + 36)];
    v40 = __src[1];
    *v39 = __src[0];
    *(v39 + 1) = v40;
    *(v39 + 2) = __src[2];
    v33 = &qword_2803B6A28;
    v34 = &qword_26A87F3C0;
    sub_26A51D0F8(v19, v14, &qword_2803B6A28, &qword_26A87F3C0);
    swift_storeEnumTagMultiPayload();
    sub_26A74AEA8();
    sub_26A74AF8C();
    v41 = v78;
    sub_26A84FDF8();
    sub_26A51D0F8(v41, v82, &qword_2803B6A18, &qword_26A87F3B0);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v42 = v84;
    sub_26A84FDF8();
    sub_26A4DBD10(v41, &qword_2803B6A18, &qword_26A87F3B0);
    sub_26A51D0F8(v42, v11, &qword_2803B6A20, &qword_26A87F3B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v42, &qword_2803B6A20, &qword_26A87F3B8);
    v37 = v19;
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x277D62F28])
  {
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v45 = &v19[*(v38 + 36)];
    v46 = __src[1];
    *v45 = __src[0];
    *(v45 + 1) = v46;
    *(v45 + 2) = __src[2];
    v47 = &qword_26A87F3C0;
    sub_26A51D0F8(v19, v74, &qword_2803B6A28, &qword_26A87F3C0);
    swift_storeEnumTagMultiPayload();
    sub_26A74B0D0();
    sub_26A74AEA8();
    v48 = v75;
    sub_26A84FDF8();
    sub_26A51D0F8(v48, v82, &qword_2803B69E8, &qword_26A87F390);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v49 = v84;
    sub_26A84FDF8();
    sub_26A4DBD10(v48, &qword_2803B69E8, &qword_26A87F390);
    sub_26A51D0F8(v49, v11, &qword_2803B6A20, &qword_26A87F3B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v49, &qword_2803B6A20, &qword_26A87F3B8);
    v37 = v19;
    v43 = &qword_2803B6A28;
LABEL_19:
    v44 = v47;
    return sub_26A4DBD10(v37, v43, v44);
  }

  if (v25 == *MEMORY[0x277D62F58])
  {
    v50 = v71;
    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v51 = (v50 + *(v38 + 36));
    v52 = v89;
    *v51 = v88;
    v51[1] = v52;
    v51[2] = v90;
    v53 = sub_26A850298();
    if (qword_2803A8CE0 != -1)
    {
      swift_once();
    }

    v54 = xmmword_2803D1FA8;
    v56 = qword_2803D1FB8;
    v55 = unk_2803D1FC0;
    v57 = qword_2803D1FC8;
    sub_26A6AEE74(__src);
    v58 = v50 + *(v72 + 36);
    memcpy(v58, __src, 0xC0uLL);
    *(v58 + 192) = v54;
    *(v58 + 208) = v56;
    *(v58 + 216) = v55;
    *(v58 + 224) = v57;
    *(v58 + 232) = v53;
    v47 = &qword_26A880940;
    sub_26A51D0F8(v50, v74, &qword_2803B69F0, &qword_26A880940);
    swift_storeEnumTagMultiPayload();
    sub_26A74B0D0();
    sub_26A74AEA8();

    v59 = v75;
    sub_26A84FDF8();
    sub_26A51D0F8(v59, v82, &qword_2803B69E8, &qword_26A87F390);
    swift_storeEnumTagMultiPayload();
    sub_26A74AE1C();
    sub_26A74B044();
    v60 = v84;
    sub_26A84FDF8();
    sub_26A4DBD10(v59, &qword_2803B69E8, &qword_26A87F390);
    sub_26A51D0F8(v60, v11, &qword_2803B6A20, &qword_26A87F3B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A74AD90();
    sub_26A74B1B0();
    sub_26A84FDF8();
    sub_26A4DBD10(v60, &qword_2803B6A20, &qword_26A87F3B8);
    v37 = v50;
    v43 = &qword_2803B69F0;
    goto LABEL_19;
  }

  if (v25 == *MEMORY[0x277D62F38])
  {
LABEL_6:
    LOBYTE(v90) = 0;
    v88 = 0u;
    v89 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
    sub_26A551788();
    sub_26A84FDF8();
    v27 = __src[2];
    v28 = __src[1];
    *v11 = __src[0];
    *(v11 + 1) = v28;
    v11[32] = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A74AD90();
    sub_26A74B1B0();
    return sub_26A84FDF8();
  }

  v61 = v70;
  sub_26A74ACCC(a1, v70);
  v62 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v63 = swift_allocObject();
  sub_26A56BF04(v61, v63 + v62, v64);
  *&v88 = sub_26A74AD30;
  *(&v88 + 1) = v63;
  v89 = 0uLL;
  LOBYTE(v90) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
  sub_26A551788();
  sub_26A84FDF8();
  v65 = __src[2];
  v66 = __src[1];
  *v11 = __src[0];
  *(v11 + 1) = v66;
  v11[32] = v65;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A30, &qword_26A87F3C8);
  sub_26A74AD90();
  sub_26A74B1B0();
  sub_26A84FDF8();

  return (*(v21 + 8))(v24, v20);
}

unint64_t sub_26A74ABA4(uint64_t a1)
{
  v2 = sub_26A84BBF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_26A852248();

  v8 = 0xD00000000000001ELL;
  v9 = 0x800000026A88F270;
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_26A8517F8();
  MEMORY[0x26D663B00](v6);

  return v8;
}

uint64_t sub_26A74ACCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Separator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74AD30()
{
  v1 = *(type metadata accessor for Separator(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A74AA6C(v2);
}

unint64_t sub_26A74AD90()
{
  result = qword_2803B6A38;
  if (!qword_2803B6A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A20, &qword_26A87F3B8);
    sub_26A74AE1C();
    sub_26A74B044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A38);
  }

  return result;
}

unint64_t sub_26A74AE1C()
{
  result = qword_2803B6A40;
  if (!qword_2803B6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A18, &qword_26A87F3B0);
    sub_26A74AEA8();
    sub_26A74AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A40);
  }

  return result;
}

unint64_t sub_26A74AEA8()
{
  result = qword_2803B6A48;
  if (!qword_2803B6A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A28, &qword_26A87F3C0);
    sub_26A74AF34(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A48);
  }

  return result;
}

unint64_t sub_26A74AF34(__n128 a1)
{
  result = qword_2803B6A50;
  if (!qword_2803B6A50)
  {
    sub_26A8512C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A50);
  }

  return result;
}

unint64_t sub_26A74AF8C()
{
  result = qword_2803B6A58;
  if (!qword_2803B6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69F8, &unk_26A880950);
    sub_26A4DBCC8(&qword_2803B6A60, &qword_2803B6A68, &qword_26A87F3D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A58);
  }

  return result;
}

unint64_t sub_26A74B044()
{
  result = qword_2803B6A70;
  if (!qword_2803B6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69E8, &qword_26A87F390);
    sub_26A74B0D0();
    sub_26A74AEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A70);
  }

  return result;
}

unint64_t sub_26A74B0D0()
{
  result = qword_2803B6A78;
  if (!qword_2803B6A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69F0, &qword_26A880940);
    sub_26A74AEA8();
    sub_26A74B15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A78);
  }

  return result;
}

unint64_t sub_26A74B15C()
{
  result = qword_2803B6A80;
  if (!qword_2803B6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A80);
  }

  return result;
}

unint64_t sub_26A74B1B0()
{
  result = qword_2803B6A88;
  if (!qword_2803B6A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6A30, &qword_26A87F3C8);
    sub_26A551788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A88);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = (type metadata accessor for Separator(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v2);
  sub_26A4D82E8(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_26A74B38C()
{
  v1 = *(type metadata accessor for Separator(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A74ABA4(v2);
}

unint64_t sub_26A74B3EC()
{
  result = qword_2803B6A98;
  if (!qword_2803B6A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B69D8, &qword_26A87F380);
    sub_26A74B4A4();
    sub_26A4DBCC8(&qword_2803B6AC0, &qword_2803B6AC8, qword_26A87F3E8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6A98);
  }

  return result;
}

unint64_t sub_26A74B4A4()
{
  result = qword_2803B6AA0;
  if (!qword_2803B6AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AA8, &qword_26A87F3D8);
    sub_26A74B528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AA0);
  }

  return result;
}

unint64_t sub_26A74B528()
{
  result = qword_2803B6AB0;
  if (!qword_2803B6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AB8, &qword_26A87F3E0);
    sub_26A74AD90();
    sub_26A74B1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AB0);
  }

  return result;
}

int *sub_26A74B5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26A84BD28();
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for SimpleItemVisualElementView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v49 - v11;
  v13 = [v3 image];
  if (v13)
  {
    v14 = v13;
    v52 = v5;
    v53 = a1;
    v54 = v2;
    v15 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    if ([v3 command])
    {
      MEMORY[0x26D663CE0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v51 = v66;
    }

    else
    {
      v51 = v15;
    }

    RFVisualProperty.asVisualProperty()();
    v18 = [v3 text_1];
    if (v18)
    {
      v19 = v18;
      *(&v64 + 1) = &type metadata for PartialText;
      v65 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v63 = swift_allocObject();
      RFTextProperty.asPartialText()(v63 + 16);
    }

    else
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
    }

    v20 = [v3 text_2];
    if (v20)
    {
      v21 = v20;
      *(&v61 + 1) = &type metadata for PartialText;
      v62 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v60 = swift_allocObject();
      RFTextProperty.asPartialText()(v60 + 16);
    }

    else
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
    }

    v22 = [v3 footnote];
    if (v22)
    {
      v23 = v22;
      *(&v58 + 1) = &type metadata for PartialText;
      v59 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v57 = swift_allocObject();
      RFTextProperty.asPartialText()(v57 + 16);
    }

    else
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
    }

    v24 = sub_26A7DC554([v3 horizontal_alignment]);
    v49 = v25;
    v50 = [v3 attribution_style];
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_162(KeyPath);
    v27 = v6[6];
    *(v8 + v27) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v28 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v28);
    v29 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v29);
    v30 = swift_getKeyPath();
    OUTLINED_FUNCTION_162(v30);
    v31 = v8 + v6[10];
    *v31 = swift_getKeyPath();
    v31[9] = 0;
    swift_unknownObjectWeakInit();
    *(v8 + v6[11]) = VisualProperty.asAnyView()();
    sub_26A5582C8(&v63, v55);
    if (v56)
    {
      v32 = OUTLINED_FUNCTION_0_85();
      v34 = v33(v32);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v34 = 0;
    }

    *(v8 + v6[12]) = v34;
    sub_26A5582C8(&v60, v55);
    if (v56)
    {
      v35 = OUTLINED_FUNCTION_0_85();
      v37 = v36(v35);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v37 = 0;
    }

    *(v8 + v6[13]) = v37;
    sub_26A5582C8(&v57, v55);
    if (v56)
    {
      v38 = OUTLINED_FUNCTION_0_85();
      v40 = v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      sub_26A537648(v55);
      v40 = 0;
    }

    *(v8 + v6[14]) = v40;
    if (v49)
    {
      v24 = sub_26A84FC08();

      v41 = OUTLINED_FUNCTION_2_87();
      v42(v41);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_2_87();
      v44(v43);
    }

    v45 = v53;
    sub_26A537648(&v57);
    *(v8 + v6[15]) = v24;
    *(v8 + v6[16]) = (*(&v64 + 1) | *(&v61 + 1)) == 0;
    sub_26A537648(&v63);
    *(v8 + v6[17]) = v50;
    sub_26A74BD54(v8, v12);
    sub_26A537648(&v60);
    v46 = swift_getKeyPath();
    sub_26A74BD54(v12, v45);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AD8, &qword_26A87F448);
    v47 = (v45 + result[9]);
    v48 = v51;
    *v47 = v46;
    v47[1] = v48;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v16 = v3;
    *(v16 + 8) = &unk_287B13A48;
    *(v16 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  return result;
}

unint64_t sub_26A74BC70()
{
  result = qword_2803B6AD0;
  if (!qword_2803B6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AD8, &qword_26A87F448);
    sub_26A74BCFC();
    sub_26A5C82B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AD0);
  }

  return result;
}

unint64_t sub_26A74BCFC()
{
  result = qword_2803B6AE0;
  if (!qword_2803B6AE0)
  {
    type metadata accessor for SimpleItemVisualElementView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6AE0);
  }

  return result;
}

uint64_t sub_26A74BD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemVisualElementView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74BE00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ControlSliderView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A74BFE8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ControlSliderView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A74C13C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlSliderView(0);
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ControlSliderView.init<A, B>(slider:text1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v15 = type metadata accessor for ControlSliderView(0);
  v16 = v15[6];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v17 = a7 + v15[7];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v15[8];
  *(a7 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v27 = a6;
  v19 = sub_26A8511B8();
  swift_getWitnessTable();
  *a7 = View.eraseToAnyView()(v19);
  sub_26A4DBD68(a2, v26, &qword_2803A91B8, &qword_26A8575C0);
  v20 = v27;
  if (v27)
  {
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v22 = (*(v21 + 8))(v20, v21);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    OUTLINED_FUNCTION_16_10();
    (*(v23 + 8))(a1, v19);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    OUTLINED_FUNCTION_16_10();
    (*(v25 + 8))(a1, v19);
    result = sub_26A4DBD10(v26, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  a7[1] = v22;
  return result;
}

uint64_t type metadata accessor for ControlSliderView(uint64_t a1)
{
  result = qword_2803B6B00;
  if (!qword_2803B6B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A74C5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - v5;
  v6 = sub_26A84E1E8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = type metadata accessor for SliderView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for ControlSliderView(0);
  v22 = v21[6];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[7];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v41;
  v25 = v21[8];
  *(a2 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A84B908();
  v26 = &v20[v13[6]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v20[v13[7]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  (*(v8 + 16))(v20, v12, v6);
  v28 = sub_26A84E1A8();
  if (v29)
  {
    sub_26A84E1D8();
    v31 = v30;
  }

  else
  {
    v31 = v28;
  }

  (*(v8 + 8))(v12, v6);
  v32 = &v20[v13[5]];
  *v32 = v31;
  *(v32 + 1) = 0;
  sub_26A74D864(v20, v17);
  sub_26A74D8C8(&qword_2803B6B50, type metadata accessor for SliderView, &protocol conformance descriptor for SliderView);
  v33 = sub_26A851248();
  sub_26A74D910(v20);
  *a2 = v33;
  v34 = v42;
  sub_26A84B8E8();
  v35 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_26A84B918();
    OUTLINED_FUNCTION_46();
    (*(v36 + 8))(v24);
    result = sub_26A4DBD10(v34, &qword_2803AA838, &unk_26A856770);
    v38 = 0;
  }

  else
  {
    v38 = TextProperty.asAnyView()();
    sub_26A84B918();
    OUTLINED_FUNCTION_46();
    (*(v39 + 8))(v24);
    OUTLINED_FUNCTION_16_10();
    result = (*(v40 + 8))(v34, v35);
  }

  a2[1] = v38;
  return result;
}

uint64_t ControlSliderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A74BE00(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A74BFE8();
  sub_26A74C13C(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4CE218();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AE8, &unk_26A87F618) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6AF0, &qword_26A87F650);
  *(a1 + *(result + 36)) = 31;
  return result;
}

void *sub_26A74CC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v10 = 1;
  sub_26A74CD0C(a1, __src);
  memcpy(__dst, __src, 0x4AuLL);
  memcpy(v12, __src, 0x4AuLL);
  sub_26A4DBD68(__dst, &v7, &qword_2803B6B28, &qword_26A87F6F0);
  sub_26A4DBD10(v12, &qword_2803B6B28, &qword_26A87F6F0);
  memcpy(&v9[7], __dst, 0x4AuLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x51uLL);
}

uint64_t sub_26A74CD0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = *a1;
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 33) = 1;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 73) = 0;
  swift_retain_n();

  sub_26A4C24D0(KeyPath, 0);
  sub_26A4C24D0(v6, 0);

  sub_26A4C24D0(v8, 0);
  sub_26A4C24D0(v9, 0);

  sub_26A49035C(v8, 0);
  sub_26A49035C(v9, 0);

  sub_26A49035C(KeyPath, 0);

  return sub_26A49035C(v6, 0);
}

uint64_t sub_26A74CE7C(uint64_t a1)
{
  result = sub_26A74D8C8(&qword_2803B6AF8, MEMORY[0x277D62E50], MEMORY[0x277D62E48]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A74CEFC(uint64_t a1)
{
  sub_26A4E5E18();
  if (v1 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A74CFF8()
{
  result = qword_2803B6B10;
  if (!qword_2803B6B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AF0, &qword_26A87F650);
    sub_26A74D084();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B10);
  }

  return result;
}

unint64_t sub_26A74D084()
{
  result = qword_2803B6B18;
  if (!qword_2803B6B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6AE8, &unk_26A87F618);
    sub_26A4DBCC8(&qword_2803B6B20, &qword_2803A9880, &qword_26A855820, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B18);
  }

  return result;
}

uint64_t sub_26A74D168()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v54 = v2;
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v53 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_26A84B918();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = type metadata accessor for ControlSliderView(0);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC90, &unk_26A87F750);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC98, &qword_26A856D90);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v56 = v30 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v52 - v34;
  (*(v15 + 16))(v19, v0, v13, v33);
  v57 = v24;
  sub_26A74C5D4(v19, v24);
  v59 = v0;
  sub_26A84B8F8();
  v36 = v12;
  v37 = v55;
  sub_26A4DBDB4(v36, v9, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v9, 1, v37) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v39 = &v28[*(v25 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v41 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v39 + v40, 1, 1, v41);
    *v39 = KeyPath;
  }

  else
  {
    v42 = v53;
    v43 = *(v54 + 32);
    v43(v53, v9, v37);
    v44 = swift_getKeyPath();
    v45 = &v28[*(v25 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v43(v45 + v46, v42, v37);
    v47 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
    *v45 = v44;
  }

  sub_26A74D5D4(v57, v28);
  v48 = sub_26A84B8C8();
  sub_26A4DC864(v48, v49);

  sub_26A4DBD10(v28, &qword_2803AAC90, &unk_26A87F750);
  sub_26A4DBD68(v35, v56, &qword_2803AAC98, &qword_26A856D90);
  sub_26A74D638();
  v50 = sub_26A851248();
  sub_26A4DBD10(v35, &qword_2803AAC98, &qword_26A856D90);
  return v50;
}

uint64_t sub_26A74D5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSliderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A74D638()
{
  result = qword_2803B6B30;
  if (!qword_2803B6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC98, &qword_26A856D90);
    sub_26A74D6F0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B30);
  }

  return result;
}

unint64_t sub_26A74D6F0()
{
  result = qword_2803B6B38;
  if (!qword_2803B6B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC88, &unk_26A856D80);
    sub_26A74D77C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B38);
  }

  return result;
}

unint64_t sub_26A74D77C()
{
  result = qword_2803B6B40;
  if (!qword_2803B6B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC90, &unk_26A87F750);
    sub_26A74D8C8(&qword_2803B6B48, type metadata accessor for ControlSliderView, &protocol conformance descriptor for ControlSliderView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6B40);
  }

  return result;
}

uint64_t sub_26A74D864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SliderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74D8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A74D910(uint64_t a1)
{
  v2 = type metadata accessor for SliderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A74D970(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_26A84E4D8();
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v58 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0, &qword_26A868D40);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84B1D8();
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v13 = sub_26A84B318();
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v19 = sub_26A84B548();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = v24 - v23;
  v26 = sub_26A74E490(v3);
  if (v27)
  {
    v56 = v26;
    v57 = a1;
    v28 = sub_26A74E490(v3);
    v54 = v29;
    v55 = v28;
    v30 = [v3 primary_color];
    if (v30)
    {
      v31 = v30;
      v32 = sub_26A68D85C();
      Color.init(color:)(v32);

      v33 = sub_26A84DFA8();
      v34 = 0;
    }

    else
    {
      v33 = sub_26A84DFA8();
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v34, 1, v33);
    sub_26A540550([v3 symbol_rendering_mode]);
    sub_26A7EA53C([v3 image_style]);
    sub_26A84B238();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    sub_26A7D61A8([v3 vibrancy]);
    sub_26A84B558();
    v45 = v57;
    (*(v21 + 32))(v57, v25, v19);
    v46 = *MEMORY[0x277D62C58];
    v47 = sub_26A84B248();
    (*(*(v47 - 8) + 104))(v45, v46, v47);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v35 = sub_26A851E98();
    LOBYTE(v51) = 2;
    sub_26A7A6F40(v35, 1, "SnippetUI/RFSymbolImage+ImageElement.swift", 42, 2, 39, "asLoadingImage()", 16, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_26A84B248();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }
}

void sub_26A74DD58(uint64_t a1@<X8>)
{
  v3 = v2;
  v108 = a1;
  v4 = sub_26A84E4D8();
  OUTLINED_FUNCTION_15();
  v107 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v105 = v8 - v7;
  v106 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v104 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v102 = v12 - v11;
  v103 = sub_26A84B318();
  OUTLINED_FUNCTION_15();
  v101 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v100 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  v18 = OUTLINED_FUNCTION_79(v17);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v99 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v93 - v24;
  v26 = sub_26A84DFA8();
  OUTLINED_FUNCTION_15();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0, &qword_26A868D40);
  v37 = OUTLINED_FUNCTION_79(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v93 - v42;
  v44 = sub_26A74E490(v3);
  if (v45)
  {
    v95 = v44;
    v96 = v45;
    v98 = v4;
    sub_26A84B238();
    OUTLINED_FUNCTION_81();
    v97 = v46;
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
    v50 = [v3 background_color];
    if (v50)
    {
      v51 = v50;
      v52 = sub_26A68D85C();
      Color.init(color:)(v52);

      (*(v28 + 32))(v35, v32, v26);
      (*(v28 + 16))(v25, v35, v26);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v26);
      sub_26A84B2B8();
      OUTLINED_FUNCTION_81();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      sub_26A84B218();
      (*(v28 + 8))(v35, v26);
      sub_26A4E2544(v43, &qword_2803B01F0, &qword_26A868D40);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v97);
      sub_26A74E4F4(v40, v43);
    }

    v97 = v43;
    v94 = sub_26A74E490(v3);
    v63 = [v3 primary_color];
    if (v63)
    {
      v64 = v63;
      v65 = sub_26A68D85C();
      v66 = v99;
      Color.init(color:)(v65);

      v67 = 0;
    }

    else
    {
      v67 = 1;
      v66 = v99;
    }

    __swift_storeEnumTagSinglePayload(v66, v67, 1, v26);
    v74 = [v3 symbol_rendering_mode];
    v75 = v100;
    sub_26A540550(v74);
    v76 = [v3 image_style];
    v77 = v102;
    sub_26A7EA53C(v76);
    [v3 punches_through_background];
    v78 = [v3 vibrancy];
    v79 = v105;
    sub_26A7D61A8(v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
    v80 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v81 = v66;
    v83 = v82;
    v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_26A8570D0;
    (*(v83 + 104))(v85 + v84, *MEMORY[0x277D62A28], v80);
    sub_26A67BF28(v85);
    v86 = v97;
    sub_26A84B568();

    (*(v107 + 8))(v79, v98);
    (*(v104 + 8))(v77, v106);
    (*(v101 + 8))(v75, v103);
    sub_26A4E2544(v81, &qword_2803AD038, &qword_26A872050);
    sub_26A4E2544(v86, &qword_2803B01F0, &qword_26A868D40);
    sub_26A84B718();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v68 = sub_26A851E98();
    LOBYTE(v91) = 2;
    sub_26A7A76B0(v68, 1, "SnippetUI/RFSymbolImage+ImageElement.swift", 42, 2, 16, "asImageElement()", 16, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    sub_26A84B718();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  }
}

uint64_t sub_26A74E490(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A74E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0, &qword_26A868D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74E564(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_41();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_35_9();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_26A851538();
}

uint64_t sub_26A74E6CC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_26A852068();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_26A74E738@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentedWithSmartDialogText.getter();
  *a1 = result & 1;
  return result;
}

void *DisambiguationStandardView.init(header:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a8;
  v17 = type metadata accessor for DisambiguationStandardView(0, __src);
  v18 = a9 + v17[13];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a9 + v17[14];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v17[15];
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v21 = a9 + v20;
  v22 = xmmword_2803D2028;
  v23 = qword_2803D2038;
  v24 = unk_2803D2040;
  v25 = qword_2803D2048;

  sub_26A6AEE74(__src);
  result = memcpy(v21, __src, 0xC0uLL);
  *(v21 + 24) = v25;
  *(v21 + 200) = v22;
  *(v21 + 27) = v23;
  *(v21 + 28) = v24;
  *(v21 + 29) = v25;
  *(a9 + v17[18]) = 0x4024000000000000;
  v27 = (a9 + v17[16]);
  *v27 = a1;
  v27[1] = a2;
  v28 = (a9 + v17[17]);
  *v28 = a3;
  v28[1] = a4;
  return result;
}

uint64_t sub_26A74E950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A755FC4(v2, &v14 - v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26A74EB50(uint64_t a1)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_25_21();
  if ((v3 & 1) == 0)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v4, &dword_26A48D000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v8 = OUTLINED_FUNCTION_4_63();
    v9(v8);
    return v11;
  }

  return a1;
}

uint64_t sub_26A74EC54(char a1)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_25_21();
  if (v3 != 1)
  {

    sub_26A851EA8();
    v4 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v4, &dword_26A48D000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v8 = OUTLINED_FUNCTION_4_63();
    v9(v8);
    a1 = v11;
  }

  return a1 & 1;
}

void DisambiguationStandardView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v192 = v0;
  v2 = v1;
  v196 = v3;
  v201 = *(v1 + 16);
  v203 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  sub_26A84F4F8();
  sub_26A84F4F8();
  v191 = v2;
  v202 = *(v2 + 3);
  v208 = *(v2 + 5);
  v5 = type metadata accessor for ComponentStack(255, v202, v208, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88, &unk_26A85FD00);
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  v200 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A851238();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_31_16();
  v6 = sub_26A84F4F8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0, &unk_26A87F830);
  v214 = v7;
  v204 = type metadata accessor for OuterPlatterBackground(255);
  OUTLINED_FUNCTION_28_10();
  v8 = sub_26A84F4F8();
  v248[72] = OUTLINED_FUNCTION_7_31();
  v248[73] = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_19_24();
  WitnessTable = swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_21_27();
  v248[70] = WitnessTable;
  v248[71] = v10;
  v11 = swift_getWitnessTable();
  v248[0] = MEMORY[0x277CE1350];
  v248[1] = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_18_28();
  v14 = OUTLINED_FUNCTION_53_5(v12, v13);
  v213 = v14;
  OUTLINED_FUNCTION_17_28();
  v197 = sub_26A755CD0();
  v248[68] = v11;
  v248[69] = v197;
  v15 = swift_getWitnessTable();
  v211 = v8;
  v212 = v6;
  v248[0] = v6;
  v248[1] = v7;
  v248[2] = v8;
  v205 = v15;
  v206 = v11;
  v248[3] = v11;
  v248[4] = v14;
  v248[5] = v15;
  OUTLINED_FUNCTION_15_32();
  v194 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v180 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v179 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v178 = &v178 - v23;
  v207 = v5;
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  v209 = v24;
  v210 = sub_26A84F4F8();
  v181 = OpaqueTypeMetadata2;
  v25 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v183 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v182 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v187 = &v178 - v31;
  sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v185 = v33;
  v186 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_41();
  v184 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0, &qword_26A859D00);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_31_16();
  sub_26A84F4F8();
  sub_26A84F4F8();
  v36 = sub_26A4D7DCC();
  v248[66] = v208;
  v248[67] = v36;
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_42();
  v38 = sub_26A4D7DCC();
  v248[64] = v37;
  v248[65] = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_26A4D7DCC();
  v248[62] = v39;
  v248[63] = v40;
  v208 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_26A69C384();
  v248[60] = v41;
  v248[61] = v42;
  OUTLINED_FUNCTION_128();
  swift_getWitnessTable();
  v43 = OUTLINED_FUNCTION_8_58();
  type metadata accessor for ComponentStack(v43, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240, &qword_26A855E00);
  OUTLINED_FUNCTION_8_58();
  v47 = sub_26A84F4F8();
  v48 = sub_26A84F4F8();
  OUTLINED_FUNCTION_0_86();
  v49 = swift_getWitnessTable();
  v50 = sub_26A4D7DCC();
  v248[58] = v49;
  v248[59] = v50;
  v51 = swift_getWitnessTable();
  v248[56] = v51;
  v248[57] = v197;
  v52 = swift_getWitnessTable();
  v248[0] = v47;
  v248[1] = v214;
  v248[2] = v48;
  v203 = v52;
  v204 = v51;
  v248[3] = v51;
  v248[4] = v213;
  v248[5] = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A852068();
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_35_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  swift_getWitnessTable();
  v54 = OUTLINED_FUNCTION_8_58();
  v58 = type metadata accessor for ComponentStack(v54, v55, v56, v57);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448, &unk_26A882A40);
  OUTLINED_FUNCTION_150();
  v200 = v58;
  v201 = sub_26A84F4F8();
  v59 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v189 = v60;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_82();
  v188 = v62;
  v197 = *(v53 - 8);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  v66 = (v64 - v65);
  MEMORY[0x28223BE20](v67);
  v190 = &v178 - v68;
  sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v193 = v70;
  v194 = v69;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_82();
  v202 = v72;
  v73 = sub_26A74EB50(v191);
  v74 = sub_26A61B05C(v73, &unk_287B13068);
  v195 = v25;
  v198 = v48;
  v199 = v47;
  if (v74)
  {
    v75 = OUTLINED_FUNCTION_30_13();
    sub_26A7503C8(v75, v76);
    v248[0] = v47;
    v248[1] = v214;
    v248[2] = v48;
    v248[3] = v204;
    v248[4] = v213;
    v248[5] = v203;
    OUTLINED_FUNCTION_3_78();
    v191 = v77;
    v80 = OUTLINED_FUNCTION_53_5(v78, v79);
    sub_26A80757C();
    v81 = *(v197 + 8);
    v197 += 8;
    v192 = v81;
    v81(v66, v53);
    sub_26A80757C();
    v82 = swift_getWitnessTable();
    OUTLINED_FUNCTION_17_5();
    v83 = sub_26A4D7DCC();
    v223 = v82;
    v224 = v83;
    v84 = swift_getWitnessTable();
    v85 = v188;
    OUTLINED_FUNCTION_1_30();
    sub_26A801234();
    v221 = v80;
    v222 = v84;
    swift_getWitnessTable();
    v86 = swift_getWitnessTable();
    v87 = sub_26A4D6BF8();
    v219 = v86;
    v220 = v87;
    v217 = swift_getWitnessTable();
    v218 = v208;
    v88 = swift_getWitnessTable();
    OUTLINED_FUNCTION_7_60();
    v248[3] = v206;
    v248[4] = v213;
    OUTLINED_FUNCTION_47_3(v205);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v215 = v88;
    v216 = OpaqueTypeConformance2;
    swift_getWitnessTable();
    sub_26A801234();
    (*(v189 + 8))(v85, v59);
    v90 = OUTLINED_FUNCTION_1_30();
    v91 = v192;
    (v192)(v90);
    v91(v190, v53);
  }

  else
  {
    v190 = v53;
    v197 = v59;
    v92 = v184;
    OUTLINED_FUNCTION_30_13();
    sub_26A74E950(v93);
    v94 = sub_26A84F388();
    (*(v185 + 8))(v92, v186);
    if (v94)
    {
      v95 = OUTLINED_FUNCTION_30_13();
      sub_26A750BB4(v95);
      memcpy(v247, v248, 0x41uLL);
      v96 = swift_getWitnessTable();
      OUTLINED_FUNCTION_17_5();
      v97 = sub_26A4D7DCC();
      v233 = v96;
      v234 = v97;
      OUTLINED_FUNCTION_6_60();
      v98 = v201;
      v99 = swift_getWitnessTable();
      sub_26A80757C();
      memcpy(v242, v247, 0x41uLL);
      v100 = *(v98 - 8);
      v101 = *(v100 + 8);
      v101(v242, v98);
      v102 = v101;
      memcpy(v243, v241, 0x41uLL);
      v103 = OUTLINED_FUNCTION_46_4();
      memcpy(v103, v104, 0x41uLL);
      sub_26A80757C();
      memcpy(v244, v248, 0x41uLL);
      v105 = v213;
      v106 = *(v100 + 16);
      v106(v247, v243, v98);
      v102(v244, v98);
      v191 = v102;
      v192 = (v100 + 8);
      memcpy(v245, v236, 0x41uLL);
      memcpy(v248, v236, 0x41uLL);
      v106(v247, v245, v98);
      v247[0] = v199;
      v247[1] = v214;
      v247[2] = v198;
      v247[3] = v204;
      v247[4] = v105;
      v247[5] = v203;
      OUTLINED_FUNCTION_3_78();
      v187 = v107;
      v108 = swift_getOpaqueTypeConformance2();
      v109 = v188;
      sub_26A8012F4();
      memcpy(v246, v248, 0x41uLL);
      v102(v246, v98);
      v231 = v108;
      v232 = v99;
      OUTLINED_FUNCTION_16_28();
      v110 = v197;
      swift_getWitnessTable();
      v111 = swift_getWitnessTable();
      v112 = sub_26A4D6BF8();
      v229 = v111;
      v230 = v112;
      v227 = swift_getWitnessTable();
      v228 = v208;
      v113 = swift_getWitnessTable();
      OUTLINED_FUNCTION_7_60();
      v248[3] = v206;
      v248[4] = v105;
      OUTLINED_FUNCTION_47_3(v205);
      v114 = swift_getOpaqueTypeConformance2();
      v225 = v113;
      v226 = v114;
      swift_getWitnessTable();
      sub_26A801234();
      (*(v189 + 8))(v109, v110);
      memcpy(v247, v236, 0x41uLL);
      v115 = v191;
      v191(v247, v98);
      v116 = OUTLINED_FUNCTION_46_4();
      memcpy(v116, v117, 0x41uLL);
      v115(v248, v98);
    }

    else
    {
      v118 = OUTLINED_FUNCTION_30_13();
      v119 = sub_26A74EC54(v118);
      v120 = v213;
      if (v119)
      {
        v121 = OUTLINED_FUNCTION_30_13();
        sub_26A750F4C(v121, v122);
        memcpy(v247, v248, 0xE9uLL);
        OUTLINED_FUNCTION_0_86();
        v123 = v120;
        v124 = swift_getWitnessTable();
        v125 = sub_26A4D6BF8();
        v239 = v124;
        v240 = v125;
        OUTLINED_FUNCTION_6_60();
        v237 = swift_getWitnessTable();
        v238 = v208;
        v126 = v210;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C();
        memcpy(v242, v247, 0xE9uLL);
        v127 = *(v126 - 8);
        v128 = *(v127 + 8);
        v128(v242, v126);
        memcpy(v243, v241, 0xE9uLL);
        v129 = OUTLINED_FUNCTION_46_4();
        memcpy(v129, v130, 0xE9uLL);
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C();
        memcpy(v244, v248, 0xE9uLL);
        v131 = *(v127 + 16);
        v131(v247, v243, v126);
        v128(v244, v126);
        memcpy(v245, v236, 0xE9uLL);
        memcpy(v235, v236, sizeof(v235));
        v131(v248, v245, v126);
        OUTLINED_FUNCTION_7_60();
        v132 = v205;
        v133 = v206;
        v248[3] = v206;
        v248[4] = v123;
        v248[5] = v205;
        OUTLINED_FUNCTION_3_78();
        OUTLINED_FUNCTION_53_5(v134, v135);
        sub_26A801234();
        memcpy(v246, v235, 0xE9uLL);
        v128(v246, v126);
        memcpy(v247, v236, 0xE9uLL);
        v128(v247, v126);
        v136 = OUTLINED_FUNCTION_46_4();
        memcpy(v136, v137, 0xE9uLL);
        v128(v248, v126);
      }

      else
      {
        v138 = v179;
        v139 = OUTLINED_FUNCTION_30_13();
        sub_26A751360(v139, v140);
        OUTLINED_FUNCTION_7_60();
        v132 = v205;
        v248[3] = v206;
        v248[4] = v120;
        v248[5] = v205;
        OUTLINED_FUNCTION_3_78();
        OUTLINED_FUNCTION_53_5(v141, v142);
        v143 = v178;
        v144 = v181;
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C();
        v145 = *(v180 + 8);
        v145(v138, v144);
        OUTLINED_FUNCTION_48_3();
        sub_26A80757C();
        OUTLINED_FUNCTION_0_86();
        v146 = swift_getWitnessTable();
        v147 = sub_26A4D6BF8();
        v248[54] = v146;
        v248[55] = v147;
        OUTLINED_FUNCTION_19_24();
        v248[52] = swift_getWitnessTable();
        v248[53] = v208;
        swift_getWitnessTable();
        sub_26A8012F4();
        v145(v138, v144);
        v145(v143, v144);
        v133 = v206;
      }

      OUTLINED_FUNCTION_0_86();
      v197 = v148;
      v149 = swift_getWitnessTable();
      v150 = sub_26A4D6BF8();
      v248[50] = v149;
      v248[51] = v150;
      OUTLINED_FUNCTION_6_60();
      v192 = v151;
      v248[48] = swift_getWitnessTable();
      v248[49] = v208;
      v152 = swift_getWitnessTable();
      v248[0] = v212;
      v153 = v213;
      v154 = v214;
      v248[1] = v214;
      v248[2] = v211;
      v248[3] = v133;
      v248[4] = v213;
      v248[5] = v132;
      v155 = swift_getOpaqueTypeConformance2();
      v248[46] = v152;
      v248[47] = v155;
      v156 = v195;
      swift_getWitnessTable();
      v157 = v182;
      v158 = v187;
      sub_26A80757C();
      v248[0] = v199;
      v248[1] = v154;
      v248[2] = v198;
      v248[3] = v204;
      v248[4] = v153;
      OUTLINED_FUNCTION_47_3(v203);
      v159 = swift_getOpaqueTypeConformance2();
      v160 = swift_getWitnessTable();
      OUTLINED_FUNCTION_17_5();
      v161 = sub_26A4D7DCC();
      v248[44] = v160;
      v248[45] = v161;
      v162 = swift_getWitnessTable();
      v248[42] = v159;
      v248[43] = v162;
      swift_getWitnessTable();
      sub_26A8012F4();
      v163 = *(v183 + 8);
      v163(v157, v156);
      v163(v158, v156);
    }
  }

  v248[0] = v199;
  v164 = v213;
  v165 = v214;
  v248[1] = v214;
  v248[2] = v198;
  v248[3] = v204;
  v248[4] = v213;
  v248[5] = v203;
  v166 = swift_getOpaqueTypeConformance2();
  v167 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_5();
  v168 = sub_26A4D7DCC();
  v248[40] = v167;
  v248[41] = v168;
  v169 = swift_getWitnessTable();
  v248[38] = v166;
  v248[39] = v169;
  OUTLINED_FUNCTION_16_28();
  v170 = swift_getWitnessTable();
  v171 = swift_getWitnessTable();
  v172 = sub_26A4D6BF8();
  v248[36] = v171;
  v248[37] = v172;
  v248[34] = swift_getWitnessTable();
  v248[35] = v208;
  v173 = swift_getWitnessTable();
  v248[0] = v212;
  v248[1] = v165;
  v248[2] = v211;
  v248[3] = v206;
  v248[4] = v164;
  OUTLINED_FUNCTION_47_3(v205);
  v174 = swift_getOpaqueTypeConformance2();
  v248[32] = v173;
  v248[33] = v174;
  v175 = swift_getWitnessTable();
  v248[30] = v170;
  v248[31] = v175;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_128();
  sub_26A80757C();
  v176 = OUTLINED_FUNCTION_128();
  v177(v176);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7503C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0, &unk_26A87F830);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = v53 - v3;
  v67 = *(a1 - 1);
  *&v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0, &qword_26A859D00);
  v66 = a1[3];
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  v6 = sub_26A84F4F8();
  v64 = a1[5];
  v7 = v64;
  v8 = sub_26A4D7DCC();
  v80[21] = v7;
  v80[22] = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_26A4D7DCC();
  v80[19] = WitnessTable;
  v80[20] = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_26A4D7DCC();
  v80[17] = v11;
  v80[18] = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_26A69C384();
  v80[15] = v13;
  v80[16] = v14;
  v56 = v6;
  v57 = swift_getWitnessTable();
  v16 = type metadata accessor for ComponentStack(255, v6, v57, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240, &qword_26A855E00);
  v55 = v16;
  v17 = sub_26A84F4F8();
  type metadata accessor for OuterPlatterBackground(255);
  v18 = sub_26A84F4F8();
  v19 = swift_getWitnessTable();
  v54 = v19;
  v20 = sub_26A4D7DCC();
  v80[13] = v19;
  v80[14] = v20;
  v21 = swift_getWitnessTable();
  v59 = v21;
  v80[0] = MEMORY[0x277CE1350];
  v80[1] = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeConformance2;
  v23 = sub_26A755CD0();
  v80[11] = v21;
  v80[12] = v23;
  v53[1] = v18;
  v24 = swift_getWitnessTable();
  v80[0] = v17;
  v80[1] = v73;
  v80[2] = v18;
  v80[3] = v21;
  v80[4] = OpaqueTypeConformance2;
  v80[5] = v24;
  v25 = v24;
  v61 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v62 = OpaqueTypeMetadata2;
  v63 = v27;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v53[0] = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v60 = v53 - v31;
  v32 = v67;
  v33 = v65;
  (*(v67 + 16))(v65, v69, a1, v30);
  v34 = v32;
  v35 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *&v37 = a1[2];
  *(&v37 + 1) = v66;
  *&v38 = a1[4];
  *(&v38 + 1) = v64;
  v68 = v38;
  v69 = v37;
  *(v36 + 16) = v37;
  *(v36 + 32) = v38;
  (*(v34 + 32))(v36 + v35, v33, a1);
  swift_checkMetadataState();
  ComponentStack.init(content:)(sub_26A755AD8, v36, v79);
  v39 = _UISolariumEnabled();
  v40 = 0x4000000000000000;
  if (v39)
  {
    v40 = 0;
  }

  v78[0] = v40;
  LOBYTE(v78[1]) = 0;
  v41 = swift_checkMetadataState();
  View.lastComponentBottomSpacing(_:)(v78, v41, v54);
  v77[0] = v79[0];
  v77[1] = v79[1];
  v77[2] = v79[2];
  v77[3] = v79[3];
  (*(*(v41 - 8) + 8))(v77, v41);
  memcpy(v76, v80, 0x51uLL);
  sub_26A851408();
  v42 = v70;
  sub_26A84FB98();
  v74 = v69;
  v75 = v68;
  v43 = swift_checkMetadataState();
  v44 = swift_checkMetadataState();
  v45 = v73;
  v46 = v58;
  v47 = v59;
  sub_26A850CB8();
  (*(v71 + 8))(v42, v45);
  memcpy(v78, v76, 0x51uLL);
  (*(*(v43 - 8) + 8))(v78, v43);
  v76[0] = v43;
  v76[1] = v45;
  v76[2] = v44;
  v76[3] = v47;
  v76[4] = v46;
  v76[5] = v25;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  v49 = v53[0];
  v50 = v62;
  sub_26A80757C();
  v51 = *(v63 + 8);
  v51(v49, v50);
  sub_26A80757C();
  return (v51)(v48, v50);
}

uint64_t sub_26A750BB4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v5 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v4);
  v6 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  v17 = *(a1 + 24);
  *(v7 + 24) = v17;
  *(v7 + 40) = *(a1 + 40);
  (*(v2 + 32))(v7 + v6, v5, a1);
  sub_26A84F4F8();
  sub_26A84F4F8();
  sub_26A852068();
  swift_getTupleTypeMetadata2();
  v8 = sub_26A851528();
  WitnessTable = swift_getWitnessTable();
  ComponentStack.init(content:)(sub_26A755AFC, v7, __dst);
  v11 = type metadata accessor for ComponentStack(0, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  View.hideConversationAreaKeyline(_:)(1, v11, v12);
  v22[0] = *__dst;
  v22[1] = *&__dst[16];
  v22[2] = *&__dst[32];
  v22[3] = *&__dst[48];
  (*(*(v11 - 8) + 8))(v22, v11);
  memcpy(v20, __src, sizeof(v20));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9448, &unk_26A882A40);
  v13 = sub_26A84F4F8();
  v14 = sub_26A4D7DCC();
  v18 = v12;
  v19 = v14;
  swift_getWitnessTable();
  sub_26A80757C();
  memcpy(__dst, v20, sizeof(__dst));
  v15 = *(*(v13 - 8) + 8);
  v15(__dst, v13);
  memcpy(v20, v21, sizeof(v20));
  sub_26A80757C();
  memcpy(__src, v20, 0x41uLL);
  return (v15)(__src, v13);
}

uint64_t sub_26A750F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v6 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v5);
  v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = a1[2];
  v10 = a1[3];
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v11 = a1[4];
  v12 = a1[5];
  *(v8 + 4) = v11;
  *(v8 + 5) = v12;
  (*(v3 + 32))(&v8[v7], v6, a1);
  ComponentStack.init(content:)(sub_26A755BA4, v8, v34);
  v13 = sub_26A751CD4(v26[0], v9, v10, v11, v12);
  v15 = v14;
  v17 = type metadata accessor for ComponentStack(0, v10, v12, v16);
  WitnessTable = swift_getWitnessTable();
  sub_26A69C17C(v13, v15, v17, WitnessTable);

  v31[0] = v34[0];
  v31[1] = v34[1];
  v31[2] = v34[2];
  v31[3] = v34[3];
  (*(*(v17 - 8) + 8))(v31, v17);
  memcpy(v30, v33, 0xD9uLL);
  swift_getKeyPath();
  v27[0] = 1;
  v19 = sub_26A84F4F8();
  v20 = sub_26A4D6BF8();
  v28 = WitnessTable;
  v29 = v20;
  v21 = swift_getWitnessTable();
  sub_26A8509A8();

  memcpy(v32, v30, 0xD9uLL);
  (*(*(v19 - 8) + 8))(v32, v19);
  memcpy(v27, v34, sizeof(v27));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  v22 = sub_26A84F4F8();
  v23 = sub_26A4D7DCC();
  v26[2] = v21;
  v26[3] = v23;
  swift_getWitnessTable();
  sub_26A80757C();
  memcpy(v33, v27, 0xE9uLL);
  v24 = *(*(v22 - 8) + 8);
  v24(v33, v22);
  memcpy(v27, v30, sizeof(v27));
  sub_26A80757C();
  memcpy(v34, v27, 0xE9uLL);
  return (v24)(v34, v22);
}

uint64_t sub_26A751360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0, &unk_26A87F830);
  v61 = v3;
  v79 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v78 = &v50 - v4;
  v76 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v76);
  v77 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  *&v72 = a1[2];
  sub_26A84F4F8();
  sub_26A84F4F8();
  v71 = a1[3];
  *&v70 = a1[5];
  type metadata accessor for ComponentStack(255, v71, v70, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88, &unk_26A85FD00);
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  v67 = sub_26A851528();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_26A851238();
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = &v50 - v8;
  v9 = sub_26A84F4F8();
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v56 = &v50 - v10;
  v62 = v9;
  v11 = sub_26A84F4F8();
  v74 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v50 - v12;
  type metadata accessor for OuterPlatterBackground(255);
  v13 = v11;
  v14 = sub_26A84F4F8();
  v52 = swift_getWitnessTable();
  v96 = v52;
  v97 = MEMORY[0x277CDF918];
  v15 = swift_getWitnessTable();
  v54 = v15;
  v16 = sub_26A4D7DCC();
  v94 = v15;
  v95 = v16;
  v58 = v13;
  v17 = swift_getWitnessTable();
  v60 = v17;
  v100 = MEMORY[0x277CE1350];
  v101 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeConformance2;
  v19 = sub_26A755CD0();
  v92 = v17;
  v93 = v19;
  v53 = v14;
  v20 = swift_getWitnessTable();
  v100 = v13;
  v101 = v3;
  v102 = v14;
  v103 = v17;
  v104 = OpaqueTypeConformance2;
  v105 = v20;
  v21 = v20;
  v63 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  v64 = OpaqueTypeMetadata2;
  v65 = v23;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v55 = &v50 - v26;
  sub_26A84FC08();
  v27 = v75;
  sub_26A74ED5C(v98, a1);
  *&v28 = a1[4];
  *(&v28 + 1) = v70;
  v70 = v28;
  *&v29 = v72;
  *(&v29 + 1) = v71;
  v72 = v29;
  v83 = v29;
  v84 = v28;
  v85 = v27;
  v30 = v57;
  sub_26A851228();
  sub_26A74ED5C(&v99, a1);
  v31 = v56;
  sub_26A850C48();
  (*(v68 + 8))(v30, v7);
  sub_26A74ED5C(&v100, a1);
  v32 = v106;
  v33 = *(v76 + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_26A84FB88();
  v36 = v77;
  (*(*(v35 - 8) + 104))(&v77[v33], v34, v35);
  *v36 = v32;
  v36[1] = v32;
  sub_26A755CD0();
  v86 = sub_26A851358();
  sub_26A755D14();
  v37 = v62;
  sub_26A6F43B0();
  v38 = v69;
  sub_26A850CC8();

  (*(v73 + 8))(v31, v37);
  sub_26A851408();
  v39 = v78;
  sub_26A84FB98();
  v81 = v72;
  v82 = v70;
  v40 = swift_checkMetadataState();
  v42 = v58;
  v41 = v59;
  v44 = v60;
  v43 = v61;
  sub_26A850CB8();
  (*(v79 + 8))(v39, v43);
  (*(v74 + 8))(v38, v42);
  v86 = v42;
  v87 = v43;
  v88 = v40;
  v89 = v44;
  v90 = v41;
  v91 = v21;
  swift_getOpaqueTypeConformance2();
  v45 = v55;
  v46 = v51;
  v47 = v64;
  sub_26A80757C();
  v48 = *(v65 + 8);
  v48(v46, v47);
  sub_26A80757C();
  return (v48)(v45, v47);
}

uint64_t (*sub_26A751CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(__int16 *a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for DisambiguationStandardView(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_26A755C20;
}

uint64_t sub_26A751E30(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 1);
  v10 = *a1;
  v11 = v6;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for DisambiguationStandardView(0, v9);
  sub_26A751E8C(&v10);
  return v7 & 1;
}

double sub_26A751E8C(_BYTE *a1)
{
  if (*a1 == 74 && a1[1] == 74)
  {
    return *&qword_2803D2010;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_26A751ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a6;
  v101 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v101);
  v100 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InnerPlatterBackground(0);
  MEMORY[0x28223BE20](v12);
  v93 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&__dst[0] = a2;
  *(&__dst[0] + 1) = a3;
  v105 = a4;
  *&__dst[1] = a4;
  *(&__dst[1] + 1) = a5;
  v14 = type metadata accessor for DisambiguationStandardView(0, __dst);
  v85 = *(v14 - 8);
  v83 = *(v85 + 64);
  MEMORY[0x28223BE20](v14);
  v84 = &v80 - v15;
  v90 = a3;
  v91 = a5;
  v17 = type metadata accessor for ComponentStack(255, a3, a5, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  v89 = v17;
  v92 = sub_26A84F4F8();
  v94 = v12;
  v18 = sub_26A84F4F8();
  v96 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v95 = &v80 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88, &unk_26A85FD00);
  v97 = v18;
  v103 = sub_26A84F4F8();
  v98 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v80 - v22;
  v23 = *(a2 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  v27 = sub_26A84F4F8();
  v88 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v80 - v28;
  v108 = sub_26A84F4F8();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v109 = &v80 - v33;
  (*(a1 + *(v14 + 64)))(v32);
  if (qword_2803A8CB8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for SeparatorsConfig(0);
  v35 = __swift_project_value_buffer(v34, qword_2803D1E50);
  v36 = v105;
  sub_26A605E84(v35, a2, v105);
  (*(v23 + 8))(v26, a2);
  sub_26A850278();
  v81 = v14;
  v82 = a1;
  v37 = a1;
  sub_26A74ED5C(v115, v14);
  v38 = sub_26A4D7DCC();
  v114[12] = v36;
  v114[13] = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = v107;
  sub_26A850C58();
  v88[1](v29, v27);
  v114[10] = WitnessTable;
  v114[11] = MEMORY[0x277CDF918];
  v41 = v108;
  v86 = swift_getWitnessTable();
  sub_26A80757C();
  v42 = *(v106 + 8);
  v87 = v106 + 8;
  v88 = v42;
  (v42)(v40, v41);
  v44 = v84;
  v43 = v85;
  v45 = v81;
  (*(v85 + 16))(v84, v37, v81);
  v46 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = a2;
  v48 = v91;
  v49 = v105;
  *(v47 + 3) = v90;
  *(v47 + 4) = v49;
  *(v47 + 5) = v48;
  (*(v43 + 32))(&v47[v46], v44, v45);
  ComponentStack.init(content:)(sub_26A756178, v47, __dst);
  swift_getKeyPath();
  LOBYTE(v113[0]) = 1;
  v50 = v89;
  v51 = swift_getWitnessTable();
  sub_26A8509A8();

  v116[0] = __dst[0];
  v116[1] = __dst[1];
  v116[2] = __dst[2];
  v116[3] = __dst[3];
  (*(*(v50 - 8) + 8))(v116, v50);
  memcpy(v113, v114, 0x49uLL);
  KeyPath = swift_getKeyPath();
  v53 = v93;
  *v93 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v54 = v94;
  v55 = v53 + *(v94 + 20);
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = v53 + *(v54 + 24);
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = sub_26A4D7DCC();
  v112[6] = v51;
  v112[7] = v57;
  v58 = v92;
  v59 = swift_getWitnessTable();
  v60 = v95;
  MEMORY[0x26D662ED0](v53, v58, v54, v59);
  sub_26A755F70();
  memcpy(__dst, v113, 0x49uLL);
  (*(*(v58 - 8) + 8))(__dst, v58);
  sub_26A74ED5C(v114, v45);
  v61 = v114[6];
  v62 = *(v101 + 20);
  v63 = *MEMORY[0x277CE0118];
  v64 = sub_26A84FB88();
  v65 = v100;
  (*(*(v64 - 8) + 104))(&v100[v62], v63, v64);
  *v65 = v61;
  v65[1] = v61;
  sub_26A755CD0();
  v113[0] = sub_26A851358();
  v66 = sub_26A755CD0();
  v112[4] = v59;
  v112[5] = v66;
  v67 = v97;
  v68 = swift_getWitnessTable();
  sub_26A755D14();
  sub_26A6F43B0();
  v69 = v102;
  sub_26A850CC8();

  (*(v96 + 8))(v60, v67);
  v70 = sub_26A4D7DCC();
  v112[2] = v68;
  v112[3] = v70;
  v71 = v103;
  v72 = swift_getWitnessTable();
  v73 = v99;
  sub_26A80757C();
  v74 = v98;
  v75 = *(v98 + 8);
  v75(v69, v71);
  v76 = v107;
  v77 = v108;
  (*(v106 + 16))(v107, v109, v108);
  v113[0] = v76;
  (*(v74 + 16))(v69, v73, v71);
  v113[1] = v69;
  v112[0] = v77;
  v112[1] = v71;
  v110 = v86;
  v111 = v72;
  sub_26A74E564(v113, 2, v112);
  v75(v73, v71);
  v78 = v88;
  (v88)(v109, v77);
  v75(v69, v71);
  return (v78)(v76, v77);
}

uint64_t sub_26A752AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_6_0();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v15;
  v16 = type metadata accessor for DisambiguationStandardView(0, v19);
  (*(a1 + *(v16 + 68)))();
  sub_26A80757C();
  v17 = *(v5 + 8);
  v17(v8, a3);
  sub_26A80757C();
  return v17(v11, a3);
}

uint64_t sub_26A752C04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25[0] = a1;
  v25[1] = a5;
  v7 = type metadata accessor for OuterPlatterBackground(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  sub_26A84F4F8();
  sub_26A84F4F8();
  type metadata accessor for ComponentStack(255, a3, a4, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  type metadata accessor for InnerPlatterBackground(255);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC88, &unk_26A85FD00);
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  swift_getWitnessTable();
  sub_26A851238();
  sub_26A84F4F8();
  v11 = sub_26A84F4F8();
  v12 = sub_26A84F4F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v25[6] = swift_getWitnessTable();
  v25[7] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v20 = sub_26A4D7DCC();
  v25[4] = WitnessTable;
  v25[5] = v20;
  v21 = swift_getWitnessTable();
  MEMORY[0x26D662ED0](v9, v11, v7, v21);
  sub_26A755F70();
  v22 = sub_26A755CD0();
  v25[2] = v21;
  v25[3] = v22;
  swift_getWitnessTable();
  sub_26A80757C();
  v23 = *(v13 + 8);
  v23(v15, v12);
  sub_26A80757C();
  return (v23)(v18, v12);
}

uint64_t sub_26A753028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a4;
  v61 = a6;
  v56 = sub_26A84BBF8();
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0, &qword_26A859D00);
  v15 = sub_26A84F4F8();
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v47 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  v17 = sub_26A84F4F8();
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v48 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  v55 = sub_26A84F4F8();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v47 - v19;
  v20 = sub_26A84F4F8();
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v52 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = &v47 - v23;
  v70[0] = a2;
  v70[1] = a3;
  v70[2] = v50;
  v70[3] = a5;
  v24 = type metadata accessor for DisambiguationStandardView(0, v70);
  (*(a1 + *(v24 + 68)))();
  v25 = a5;
  sub_26A850CE8();
  (*(v11 + 8))(v14, a3);
  v26 = _UISolariumEnabled();
  v27 = v51;
  v28 = MEMORY[0x277D62F58];
  if (!v26)
  {
    v28 = MEMORY[0x277D62F38];
  }

  v29 = v53;
  v30 = v56;
  (*(v51 + 104))(v53, *v28, v56);
  v50 = MEMORY[0x277CE0868];
  v31 = sub_26A4D7DCC();
  v68 = v25;
  v69 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = v48;
  v34 = v47;
  View.separators(_:isOverride:)(v29, 0, v15, WitnessTable);
  (*(v27 + 8))(v29, v30);
  (*(v54 + 8))(v34, v15);
  swift_getKeyPath();
  LOBYTE(v70[0]) = 1;
  v35 = sub_26A4D7DCC();
  v66 = WitnessTable;
  v67 = v35;
  v36 = swift_getWitnessTable();
  v37 = v49;
  sub_26A8509A8();

  (*(v58 + 8))(v33, v17);
  if (_UISolariumEnabled())
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 2.0;
  }

  v39 = sub_26A4D7DCC();
  v64 = v36;
  v65 = v39;
  v40 = v55;
  v41 = swift_getWitnessTable();
  v42 = v52;
  View.componentSpacing(top:bottom:)(v40, v41, v38, 0.0);
  (*(v59 + 8))(v37, v40);
  v43 = sub_26A69C384();
  v62 = v41;
  v63 = v43;
  swift_getWitnessTable();
  v44 = v57;
  sub_26A80757C();
  v45 = *(v60 + 8);
  v45(v42, v20);
  sub_26A80757C();
  return (v45)(v44, v20);
}

uint64_t sub_26A753730@<X0>(const void *a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a4;
  v31[0] = type metadata accessor for OuterPlatterBackground(0);
  MEMORY[0x28223BE20](v31[0]);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0, &qword_26A859D00);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0800, &qword_26A873B80);
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  v7 = sub_26A84F4F8();
  v31[1] = MEMORY[0x277CE0868];
  v8 = sub_26A4D7DCC();
  v45 = a3;
  v46 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_26A4D7DCC();
  v43 = WitnessTable;
  v44 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_26A4D7DCC();
  v41 = v11;
  v42 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_26A69C384();
  v39 = v13;
  v40 = v14;
  v15 = swift_getWitnessTable();
  type metadata accessor for ComponentStack(255, v7, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA240, &qword_26A855E00);
  v17 = sub_26A84F4F8();
  v18 = sub_26A84F4F8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v31 - v23;
  memcpy(__dst, v32, sizeof(__dst));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v25 = swift_getWitnessTable();
  v26 = sub_26A4D7DCC();
  v36 = v25;
  v37 = v26;
  v27 = swift_getWitnessTable();
  MEMORY[0x26D662ED0](v6, v17, v31[0], v27);
  sub_26A755F70();
  v28 = sub_26A755CD0();
  v34 = v27;
  v35 = v28;
  swift_getWitnessTable();
  sub_26A80757C();
  v29 = *(v19 + 8);
  v29(v21, v18);
  sub_26A80757C();
  return (v29)(v24, v18);
}

uint64_t sub_26A753BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a6;
  v72 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v64 - v13;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A84F4F8();
  v66 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v78 = v22;
  v23 = sub_26A84F4F8();
  v67 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v65 = &v64 - v27;
  v71 = sub_26A852068();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v77 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v69 = &v64 - v30;
  v92 = a2;
  v93 = a3;
  v70 = a3;
  v79 = a4;
  v94 = a4;
  v95 = a5;
  v31 = a1;
  v76 = a5;
  v32 = type metadata accessor for DisambiguationStandardView(0, &v92);
  v33 = sub_26A74EC54(v32);
  v34 = MEMORY[0x277CDF918];
  if (v33)
  {
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v23);
    v35 = sub_26A69C384();
    v82 = v79;
    v83 = v35;
    WitnessTable = swift_getWitnessTable();
    v81 = v34;
    v36 = v23;
    swift_getWitnessTable();
  }

  else
  {
    (*(v31 + *(v32 + 64)))();
    v37 = v32;
    v38 = v31;
    v39 = v79;
    View.componentSpacing(top:bottom:)(a2, v79, 10.0, 10.0);
    (*(v15 + 8))(v18, a2);
    sub_26A850238();
    v40 = sub_26A69C384();
    v91[4] = v39;
    v91[5] = v40;
    v41 = v78;
    v42 = swift_getWitnessTable();
    sub_26A850C58();
    v43 = v41;
    v31 = v38;
    v32 = v37;
    (*(v66 + 8))(v21, v43);
    v91[2] = v42;
    v91[3] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v44 = v65;
    sub_26A80757C();
    v45 = v67;
    v46 = v67[1];
    v46(v25, v23);
    sub_26A80757C();
    v46(v44, v23);
    v47 = v77;
    (v45[4])(v77, v25, v23);
    v48 = v47;
    v36 = v23;
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v23);
  }

  v49 = v69;
  v50 = v77;
  v64 = v36;
  sub_26A74E6CC(v77, v69);
  v51 = v68;
  v52 = *(v68 + 8);
  v66 = v68 + 8;
  v67 = v52;
  v53 = v71;
  v54 = (v52)(v50, v71);
  v55 = v74;
  (*(v31 + *(v32 + 68)))(v54);
  v56 = v73;
  v57 = v70;
  sub_26A80757C();
  v58 = v72;
  v65 = *(v72 + 8);
  (v65)(v55, v57);
  (*(v51 + 16))(v50, v49, v53);
  v92 = v50;
  (*(v58 + 16))(v55, v56, v57);
  v93 = v55;
  v91[0] = v53;
  v91[1] = v57;
  v59 = sub_26A69C384();
  v87 = v79;
  v88 = v59;
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF918];
  v84 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v90 = v76;
  sub_26A74E564(&v92, 2, v91);
  v60 = v56;
  v61 = v65;
  (v65)(v60, v57);
  v62 = v67;
  (v67)(v49, v53);
  v61(v55, v57);
  return v62(v50, v53);
}

uint64_t sub_26A7543D0()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for InnerPlatterBackground(0);
  OUTLINED_FUNCTION_25_21();
  if ((v2 & 1) == 0)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v3, &dword_26A48D000, v4, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v5, v6, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v7 = OUTLINED_FUNCTION_4_63();
    v8(v7);
    return v10;
  }

  return v0;
}

uint64_t sub_26A7544D8()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for InnerPlatterBackground(0);
  OUTLINED_FUNCTION_25_21();
  if (v2 != 1)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v3, &dword_26A48D000, v4, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v5, v6, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_51_5();
    v7 = OUTLINED_FUNCTION_4_63();
    v8(v7);
    v0 = v10;
  }

  return v0 & 1;
}

void sub_26A7545F0(uint64_t a1)
{
  sub_26A754870(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_26A754870(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A754770(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A754770(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
        if (v4 <= 0x3F)
        {
          sub_26A5046B4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A754770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A7547E8(uint64_t a1)
{
  sub_26A754870(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A754870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A7548EC(uint64_t a1)
{
  sub_26A754870(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_26A754870(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A754770(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A754A00()
{
  OUTLINED_FUNCTION_28_0();
  v72 = v0;
  v77 = v1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C10, &qword_26A87F9C0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_82();
  v64[0] = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C18, &qword_26A87F9C8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v69 = v5;
  v64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C20, &qword_26A87F9D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v64[2] = v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C28, &qword_26A87F9D8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v66 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C30, &qword_26A87F9E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  v65 = v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C38, &qword_26A87F9E8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v70 = v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C40, &unk_26A87F9F0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  v75 = v15;
  v16 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838, &qword_26A86D470);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v29 = (v64 - v28);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C48, &unk_26A87FA00);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v64 - v35;
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  if (byte_2803B0440 != 1 || (v37 = sub_26A7543D0(), !sub_26A61B05C(v37, &unk_287B13B08)))
  {
    sub_26A755310();
    v43 = OUTLINED_FUNCTION_45_7();
    v44(v43);
    v45 = sub_26A84EE58();
    v46 = *(v18 + 8);
    v46(v22, v16);
    v46(v25, v16);
    if (v45)
    {
      sub_26A850E18();
      sub_26A850248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50, &unk_26A87FA10);
      OUTLINED_FUNCTION_5_0();
      (*(v47 + 16))(v65, v72);
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_37_11();
      swift_storeEnumTagMultiPayload();
      v48 = sub_26A75575C();
      OUTLINED_FUNCTION_29_16(v48);
      OUTLINED_FUNCTION_38_8();
      swift_storeEnumTagMultiPayload();
      sub_26A7556D8();
      sub_26A755840();
      v49 = v70;
    }

    else
    {
      v50 = sub_26A7543D0();
      v51 = sub_26A61B05C(v50, &unk_287B131A0);
      v49 = v70;
      if (!v51 || (sub_26A7544D8() & 1) == 0)
      {
        v54 = v64[0];
        v55 = v64[0] + *(v71 + 36);
        sub_26A8513E8();
        v56 = sub_26A850248();
        *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50, &unk_26A87FA10);
        OUTLINED_FUNCTION_5_0();
        (*(v57 + 16))(v54, v72);
        sub_26A755FC4(v54, v69, &qword_2803B6C10, &qword_26A87F9C0);
        swift_storeEnumTagMultiPayload();
        sub_26A7556D8();
        sub_26A755840();
        sub_26A84FDF8();
        goto LABEL_14;
      }

      sub_26A850DD8();
      sub_26A850248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50, &unk_26A87FA10);
      OUTLINED_FUNCTION_5_0();
      (*(v52 + 16))(v65, v72);
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_37_11();
      swift_storeEnumTagMultiPayload();
      v53 = sub_26A75575C();
      OUTLINED_FUNCTION_29_16(v53);
      OUTLINED_FUNCTION_38_8();
      swift_storeEnumTagMultiPayload();
      sub_26A7556D8();
      sub_26A755840();
    }

    sub_26A84FDF8();
    sub_26A4D6FD8();
LABEL_14:
    sub_26A4D6FD8();
    sub_26A755FC4(v49, v75, &qword_2803B6C38, &qword_26A87F9E8);
    swift_storeEnumTagMultiPayload();
    sub_26A755924();
    sub_26A755A08();
    sub_26A84FDF8();
    goto LABEL_17;
  }

  sub_26A755310();
  v38 = OUTLINED_FUNCTION_45_7();
  v39(v38);
  v40 = sub_26A84EE58();
  v41 = *(v18 + 8);
  v41(v22, v16);
  v41(v25, v16);
  if (v40)
  {
    v42 = MEMORY[0x277CE13E8];
    sub_26A850E18();
  }

  else
  {
    v42 = MEMORY[0x277CE13D0];
    sub_26A850DD8();
  }

  v58 = sub_26A850E68();

  v59 = *(v26 + 36);
  v60 = *v42;
  sub_26A8514D8();
  OUTLINED_FUNCTION_5_0();
  (*(v61 + 104))(v29 + v59, v60);
  *v29 = v58;
  LOBYTE(v60) = sub_26A850248();
  v62 = v33 + *(v73 + 36);
  sub_26A755A94(v29, v62, &qword_2803B1838, &qword_26A86D470);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C88, &qword_26A87FA20) + 36)) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C50, &unk_26A87FA10);
  OUTLINED_FUNCTION_5_0();
  (*(v63 + 16))(v33, v72);
  sub_26A755A94(v33, v36, &qword_2803B6C48, &unk_26A87FA00);
  sub_26A755FC4(v36, v75, &qword_2803B6C48, &unk_26A87FA00);
  swift_storeEnumTagMultiPayload();
  sub_26A755924();
  sub_26A755A08();
  sub_26A84FDF8();
  OUTLINED_FUNCTION_211();
LABEL_17:
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A755310()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74_0();
  sub_26A755FC4(v0, v1, &qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_5_0();
    (*(v6 + 32))(v3, v1);
  }

  else
  {
    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_128();
    v9(v8);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7554EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_26A755310();
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3D0], v4);
  OUTLINED_FUNCTION_1_30();
  v14 = sub_26A84EE58();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v15(v13, v4);
  if (v14)
  {
    v16 = 0x8000000000000001;
  }

  else
  {
    v16 = sub_26A850DD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C00, &qword_26A87F9A8);
  OUTLINED_FUNCTION_5_0();
  (*(v17 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6C08, &unk_26A87F9B0);
  *(a2 + *(result + 36)) = v16;
  return result;
}

double sub_26A755688(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  v2 = 38.0;
  if (!v1)
  {
    v2 = 28.0;
  }

  *&xmmword_2803D23C0 = v2;
  *(&xmmword_2803D23C0 + 1) = v2;
  qword_2803D23D0 = *&v2;
  unk_2803D23D8 = *&v2;
  result = 28.0;
  xmmword_2803D23E0 = xmmword_26A87F790;
  unk_2803D23F0 = xmmword_26A85D560;
  return result;
}

unint64_t sub_26A7556D8()
{
  result = qword_2803B6C58;
  if (!qword_2803B6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C28, &qword_26A87F9D8);
    sub_26A75575C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C58);
  }

  return result;
}

unint64_t sub_26A75575C()
{
  result = qword_2803B6C60;
  if (!qword_2803B6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C30, &qword_26A87F9E0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C60);
  }

  return result;
}

unint64_t sub_26A755840()
{
  result = qword_2803B6C70;
  if (!qword_2803B6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C10, &qword_26A87F9C0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C70);
  }

  return result;
}

unint64_t sub_26A755924()
{
  result = qword_2803B6C78;
  if (!qword_2803B6C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C48, &unk_26A87FA00);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C78);
  }

  return result;
}

unint64_t sub_26A755A08()
{
  result = qword_2803B6C90;
  if (!qword_2803B6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C38, &qword_26A87F9E8);
    sub_26A7556D8();
    sub_26A755840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C90);
  }

  return result;
}

uint64_t sub_26A755A94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v4;
}

uint64_t sub_26A755B14(uint64_t (*a1)(uint64_t))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v9[0] = v1[2];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  OUTLINED_FUNCTION_52_6(a1, v9);
  v6 = OUTLINED_FUNCTION_27_14(*(v5 + 80));

  return a1(v6);
}

uint64_t sub_26A755BA8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v10[0] = v1[2];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  OUTLINED_FUNCTION_52_6(a1, v10);
  v6 = OUTLINED_FUNCTION_27_14(*(v5 + 80));
  return sub_26A752AB4(v6, v7, v8);
}

uint64_t sub_26A755C20(__int16 *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  OUTLINED_FUNCTION_52_6(a1, v10);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_26A751E30(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_26A755CD0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A755D14()
{
  result = qword_2803B6C98;
  if (!qword_2803B6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6C98);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v1;
  v2 = type metadata accessor for DisambiguationStandardView(0, v8);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  sub_26A49035C(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  sub_26A49035C(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  v6 = v4 + v2[15];
  sub_26A49035C(*v6, *(v6 + 8));
  sub_26A49035C(*(v6 + 16), *(v6 + 24));
  sub_26A49035C(*(v6 + 32), *(v6 + 40));
  sub_26A49035C(*(v6 + 48), *(v6 + 56));
  sub_26A49035C(*(v6 + 64), *(v6 + 72));
  sub_26A49035C(*(v6 + 80), *(v6 + 88));
  sub_26A49035C(*(v6 + 96), *(v6 + 104));
  sub_26A49035C(*(v6 + 112), *(v6 + 120));
  sub_26A49035C(*(v6 + 128), *(v6 + 136));
  sub_26A49035C(*(v6 + 144), *(v6 + 152));

  return swift_deallocObject();
}

uint64_t sub_26A755F70()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A755FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v4;
}

unint64_t sub_26A756008()
{
  result = qword_2803B6CA8;
  if (!qword_2803B6CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6C08, &unk_26A87F9B0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CA8);
  }

  return result;
}

unint64_t sub_26A7560EC()
{
  result = qword_2803B6CB8;
  if (!qword_2803B6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CC0, qword_26A87FA88);
    sub_26A755924();
    sub_26A755A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CB8);
  }

  return result;
}

void OUTLINED_FUNCTION_7_60()
{
  v0[331] = v0[34];
  v0[332] = v0[36];
  v0[333] = v0[33];
}

unint64_t OUTLINED_FUNCTION_21_27()
{

  return sub_26A4D7DCC();
}

uint64_t OUTLINED_FUNCTION_29_16(uint64_t a1)
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_37_11()
{
  v5 = *(v3 - 192);

  return sub_26A755FC4(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_8()
{
  v5 = *(v3 - 152);

  return sub_26A755FC4(v2, v5, v0, v1);
}

void OUTLINED_FUNCTION_39_5()
{
  v4 = v3 + *(v2 + 36);
  *v4 = v0;
  *(v4 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t dispatch thunk of ArchiveSource.fetchArchive(snippetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26A557454;

  return v13(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for ArchiveSourceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A75674C()
{
  result = qword_2803B6CC8;
  if (!qword_2803B6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CC8);
  }

  return result;
}

uint64_t sub_26A7567F4()
{
  v4 = OUTLINED_FUNCTION_9_53();
  type metadata accessor for SmartDialogAnimationChunk(v4);
  OUTLINED_FUNCTION_11_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_70();
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = *(v2 + 16);
  if (v9 != *(v3 + 16))
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  if (v9 && v2 != v3)
  {
    OUTLINED_FUNCTION_7_61();
    v11 = v2 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      sub_26A759960(v11, v8, type metadata accessor for SmartDialogAnimationChunk);
      sub_26A759960(v12, v1, type metadata accessor for SmartDialogAnimationChunk);
      if (*v8 != *v1)
      {
        break;
      }

      v15 = sub_26A54081C(v8 + *(v0 + 20), v1 + *(v0 + 20));
      sub_26A7599BC();
      sub_26A7599BC();
      if (v15)
      {
        v12 += v14;
        v11 += v14;
        if (--v9)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    sub_26A7599BC();
    OUTLINED_FUNCTION_5_21();
    sub_26A7599BC();
    goto LABEL_11;
  }

  v15 = 1;
  return v15 & 1;
}

void sub_26A7569C4(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for TableRowWatchCellViewModel(0);
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16) && v13 && a1 != a2)
  {
    v14 = 0;
    v15 = a1 + 32;
    v16 = a2 + 32;
    v28 = a1 + 32;
    v29 = v5;
    v27 = a2 + 32;
    while (1)
    {
      if (v14 == v13)
      {
        __break(1u);
        return;
      }

      v17 = (v15 + 16 * v14);
      v18 = (v16 + 16 * v14);
      if (*v17 != *v18)
      {
        return;
      }

      v19 = v17[1];
      v20 = v18[1];
      v21 = *(v19 + 16);
      if (v21 != *(v20 + 16))
      {
        return;
      }

      if (v21 && v19 != v20)
      {
        break;
      }

LABEL_16:
      if (++v14 == v13)
      {
        return;
      }
    }

    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);

    v23 = *(v5 + 72);
    while (1)
    {
      sub_26A759960(v19 + v22, v12, type metadata accessor for TableRowWatchCellViewModel);
      sub_26A759960(v20 + v22, v9, type metadata accessor for TableRowWatchCellViewModel);
      if (*v12 != *v9 || *(v12[2] + 16) != *(v9[2] + 16))
      {
        break;
      }

      v24 = *(v30 + 36);
      v25 = *(v12 + v24);
      v26 = *(v9 + v24);
      sub_26A7599BC();
      sub_26A7599BC();
      if (v25 != v26)
      {
        goto LABEL_20;
      }

      v22 += v23;
      if (!--v21)
      {

        v15 = v28;
        v5 = v29;
        v16 = v27;
        goto LABEL_16;
      }
    }

    sub_26A7599BC();
    sub_26A7599BC();
LABEL_20:
  }
}

uint64_t sub_26A756C68()
{
  v4 = OUTLINED_FUNCTION_9_53();
  type metadata accessor for TableRowWatchCellViewModel(v4);
  OUTLINED_FUNCTION_11_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_70();
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - v7);
  v9 = *(v2 + 16);
  if (v9 != *(v3 + 16))
  {
    return 0;
  }

  if (!v9 || v2 == v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_61();
  v11 = v2 + v10;
  v12 = v3 + v10;
  v14 = *(v13 + 72);
  while (1)
  {
    result = sub_26A759960(v11, v8, type metadata accessor for TableRowWatchCellViewModel);
    if (!v9)
    {
      break;
    }

    sub_26A759960(v12, v1, type metadata accessor for TableRowWatchCellViewModel);
    if (*v8 != *v1 || *(v8[2] + 16) != *(v1[2] + 16))
    {
      sub_26A7599BC();
      OUTLINED_FUNCTION_5_21();
      sub_26A7599BC();
      return 0;
    }

    v16 = *(v0 + 36);
    v17 = *(v8 + v16);
    v18 = *(v1 + v16);
    sub_26A7599BC();
    sub_26A7599BC();
    result = v17 == v18;
    v19 = v17 != v18 || v9-- == 1;
    v12 += v14;
    v11 += v14;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A756E44(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26A852168())
  {
    if (a2 >> 62)
    {
      result = sub_26A852168();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
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
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
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
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_26A4EC5B0(0, &qword_2803B3308, 0x277D4BF68);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x26D6644E0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x26D6644E0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_26A851FF8();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A757018(uint64_t result, uint64_t a2)
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

void sub_26A757074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
      if (!v9 && (sub_26A852598() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);

          sub_26A5065E0(v5, 1u);

          sub_26A5065E0(v7, 1u);
          sub_26A5065E0(v7, 1u);
          sub_26A5065E0(v5, 1u);
          v10 = sub_26A851FF8();
          sub_26A5066FC(v5, 1u);
          sub_26A5066FC(v7, 1u);

          sub_26A5066FC(v7, 1u);

          v11 = v5;
          v12 = 1;
        }

        else
        {
          if (v8 != 2)
          {
LABEL_21:
            sub_26A5065E0(v7, v8);
            sub_26A5065E0(v5, v6);
            sub_26A5066FC(v5, v6);
            sub_26A5066FC(v7, v8);
            return;
          }

          sub_26A5065E0(v5, 2u);

          sub_26A5065E0(v7, 2u);
          sub_26A5065E0(v7, 2u);
          sub_26A5065E0(v5, 2u);
          sub_26A757074(v5, v7);
          v10 = v13;
          sub_26A5066FC(v5, 2u);
          sub_26A5066FC(v7, 2u);

          sub_26A5066FC(v7, 2u);

          v11 = v5;
          v12 = 2;
        }
      }

      else
      {
        if (v8)
        {
          goto LABEL_21;
        }

        sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);

        sub_26A5065E0(v5, 0);

        sub_26A5065E0(v7, 0);
        sub_26A5065E0(v7, 0);
        sub_26A5065E0(v5, 0);
        v10 = sub_26A851FF8();
        sub_26A5066FC(v5, 0);
        sub_26A5066FC(v7, 0);

        sub_26A5066FC(v7, 0);

        v11 = v5;
        v12 = 0;
      }

      sub_26A5066FC(v11, v12);
      if (v10)
      {
        v3 += 32;
        v4 += 32;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_26A75736C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableCell(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_61();
      v12 = a1 + v11;
      v13 = a2 + v11;
      v15 = *(v14 + 72);
      do
      {
        sub_26A759960(v12, v9, type metadata accessor for TableCell);
        sub_26A759960(v13, v6, type metadata accessor for TableCell);
        v16 = sub_26A84AC98();
        sub_26A7599BC();
        sub_26A7599BC();
        if ((v16 & 1) == 0)
        {
          break;
        }

        v13 += v15;
        v12 += v15;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_26A75750C()
{
  OUTLINED_FUNCTION_9_53();
  v2 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = *(v0 + 16);
  if (v13 != *(v1 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || v0 == v1)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = v0 + v14;
  v16 = v1 + v14;
  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v19 = (v17 - 8);
  v27 = *(v17 + 56);
  v28 = v18;
  while (1)
  {
    v20 = v28;
    result = (v28)(v12, v15, v2, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v2);
    sub_26A759A10();
    OUTLINED_FUNCTION_5_21();
    v23 = sub_26A851758();
    v24 = *v19;
    v25 = OUTLINED_FUNCTION_211();
    v24(v25);
    (v24)(v12, v2);
    if (v23)
    {
      v16 += v27;
      v15 += v27;
      v26 = v13-- == 1;
      v17 = v22;
      if (!v26)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t View.engageable()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v11 = 0;
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_41(v4, v5, v6, v7, v8);
  v12 = 0;
  v13 = 0;
  MEMORY[0x26D662ED0](&KeyPath, a1, &type metadata for EngageableTextViewModifier, a2);
  return sub_26A757780(&KeyPath);
}

uint64_t sub_26A7577B0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = OUTLINED_FUNCTION_29_3();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_26A759CE8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t (*sub_26A75781C())()
{
  sub_26A7598C8();
  sub_26A84F998();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_7();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_26A759CEC;
}

uint64_t sub_26A7578A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_26A7578D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_29_7();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_26A7598C8();
  return sub_26A84F9A8();
}

uint64_t sub_26A75795C(uint64_t a1, void *a2, int a3)
{
  v60 = a3;
  v73 = a2;
  v72 = sub_26A84F4A8();
  OUTLINED_FUNCTION_15();
  v70 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v71 = v7 - v6;
  v8 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  *&v69 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v76 = v58 - v15;
  v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498, &unk_26A8589B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  v19 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v65 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v59 = v58 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = v58 - v29;
  v31 = sub_26A8507A8();
  OUTLINED_FUNCTION_46();
  (*(v32 + 16))(v30, a1, v31);
  v33 = *(v27 + 44);
  v34 = sub_26A759A10();
  v62 = v30;
  v66 = v33;
  v61 = v31;
  sub_26A851D88();
  v64 = (v21 + 16);
  v58[2] = v21 + 32;
  v75 = (v69 + 16);
  v74 = (v69 + 32);
  v70 += 8;
  v35 = (v69 + 8);
  v58[1] = v21 + 8;
  v69 = xmmword_26A8570D0;
  v68 = xmmword_26A86B870;
  v67 = xmmword_26A86B880;
  v58[3] = v34;
  while (1)
  {
    v36 = v62;
    sub_26A851DD8();
    if (*&v36[v66] == v77)
    {
      break;
    }

    v37 = sub_26A851E18();
    v38 = v59;
    v63 = *v64;
    v63(v59);
    v37(&v77, 0);
    v39 = v65;
    sub_26A851DE8();
    v40 = OUTLINED_FUNCTION_10_48();
    v41(v40, v38, v19);
    if (v60)
    {
      (v63)(v18, v39, v19);
      v42 = *(v58[0] + 36);
      sub_26A759A10();
      sub_26A851D88();
      while (1)
      {
        sub_26A851DD8();
        if (*&v18[v42] == v77)
        {
          break;
        }

        v43 = sub_26A851E18();
        v44 = v76;
        (*v75)(v76);
        v43(&v77, 0);
        sub_26A851DE8();
        (*v74)(v13, v44, v8);
        sub_26A53AC74();
        sub_26A850768();
        if (v78 != 255)
        {
          sub_26A5066E8(v77, v78);
          sub_26A850748();
          v45 = v79;
          v46 = v81;
          v47 = v80 - v82;
          v48 = v82 + v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870, &unk_26A880190);
          inited = swift_initStackObject();
          *(inited + 16) = v69;
          v88.origin.x = v45;
          v88.origin.y = v47;
          v88.size.width = v46;
          v88.size.height = v48;
          *(inited + 32) = CGRectInset(v88, -1.0, 0.0);
          v85 = inited;
          v86 = v68;
          v87 = v67;
          MEMORY[0x28223BE20](v50);
          v58[-2] = v51;
          sub_26A850558();
          swift_setDeallocating();
          v52 = [objc_opt_self() secondarySystemFillColor];
          sub_26A850D38();
          sub_26A84F498();

          sub_26A84F428();
          sub_26A59DFE8(v84);
          v53 = OUTLINED_FUNCTION_10_48();
          v54(v53, v72);
        }

        (*v35)(v13, v8);
      }

      sub_26A4D6FD8();
    }

    sub_26A84F418();
    v55 = OUTLINED_FUNCTION_10_48();
    v56(v55, v19);
  }

  return sub_26A4D6FD8();
}

void (*sub_26A7581B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

double sub_26A75822C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6CF0, &qword_26A880118) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6CF8, &qword_26A880120);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_26A7597C0(v3, v29);
  v13 = swift_allocObject();
  sub_26A7597F8(v29, v13 + 16);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = &v8[*(v5 + 44)];
  *(v16 + 7) = swift_getKeyPath();
  v16[65] = 0;
  swift_unknownObjectWeakInit();
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *(v16 + 2) = KeyPath;
  *(v16 + 12) = 0;
  *(v16 + 4) = v15;
  *(v16 + 5) = 0;
  v16[48] = 0;
  *(v16 + 10) = &type metadata for Engageable;
  *(v16 + 11) = sub_26A759830;
  *(v16 + 12) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D00, &qword_26A880180);
  OUTLINED_FUNCTION_46();
  (*(v17 + 16))(v8, a1);
  v18 = swift_getKeyPath();
  v20 = *(v3 + 40);
  v19 = *(v3 + 48);
  if (v20)
  {
    OUTLINED_FUNCTION_29_7();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    v22 = sub_26A759894;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  sub_26A759838(v8, v12, &qword_2803B6CF0, &qword_26A880118);
  v23 = &v12[*(v9 + 36)];
  *v23 = v18;
  v23[1] = v22;
  v23[2] = v21;
  sub_26A4C2304(v20, v19);
  sub_26A666CE8(v29);
  v24 = v28;
  sub_26A759838(v12, v28, &qword_2803B6CF8, &qword_26A880120);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D08, &qword_26A880188) + 36));
  v26 = v29[1];
  *v25 = v29[0];
  v25[1] = v26;
  result = v30[0];
  v25[2] = *v30;
  return result;
}

void sub_26A7584EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      return;
    }

    sub_26A5E8BF0();
    v5 = *(a3 + 40);
    if (!v5)
    {
      return;
    }

    v6 = *(a3 + 48);

    v7 = sub_26A6BD2FC(v4);
  }

  else
  {
    sub_26A7585B4(*result);
    v5 = *(a3 + 40);
    if (!v5)
    {
      return;
    }

    v6 = *(a3 + 48);

    v7 = sub_26A758F24(v4);
  }

  v5(v7);

  sub_26A4C24DC(v5, v6);
}

void sub_26A7585B4(void *a1)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *v1;
    v17[1] = v1;
    v8 = *(v1 + 8);
    v18 = a1;
    if (v8 == 1)
    {
      sub_26A759954(v7, 1);
    }

    else
    {
      sub_26A759954(v7, 0);
      sub_26A851EA8();
      v9 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5714(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v19;
    }

    v10 = sub_26A73670C();
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D6644E0](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v12 commandReference];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 isEqual_];

        if (v16)
        {

          InteractionDelegateWrapper.perform(sfCommand:)();

          return;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t (*sub_26A75880C@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_26A75781C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_26A759CE8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_26A75887C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_26A7598C4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_26A4C2304(v1, v2);
  return sub_26A7578D8(v4, v3);
}

uint64_t static Engageable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);
      sub_26A5065E0(v3, 0);
      sub_26A5065E0(v2, 0);
      OUTLINED_FUNCTION_5_21();
      v5 = sub_26A851FF8();
      goto LABEL_10;
    }

LABEL_9:
    v9 = OUTLINED_FUNCTION_211();
    sub_26A5065E0(v9, v10);
    v11 = OUTLINED_FUNCTION_8_30();
    sub_26A5065E0(v11, v12);
    v5 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 8) != 1)
  {
    if (v4 == 2)
    {
      sub_26A5065E0(*a2, 2u);
      sub_26A5065E0(v2, 2u);
      v6 = OUTLINED_FUNCTION_5_21();
      sub_26A757074(v6, v7);
      v5 = v8;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);
  sub_26A5065E0(v3, 1u);
  sub_26A5065E0(v2, 1u);
  OUTLINED_FUNCTION_5_21();
  v5 = sub_26A851FF8();
LABEL_10:
  v13 = OUTLINED_FUNCTION_8_30();
  sub_26A5066FC(v13, v14);
  v15 = OUTLINED_FUNCTION_211();
  sub_26A5066FC(v15, v16);
  return v5 & 1;
}

void Engageable.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x26D664930](v2);
    sub_26A852008();
    return;
  }

  MEMORY[0x26D664930](2);
  v3 = OUTLINED_FUNCTION_5_21();

  sub_26A759300(v3, v4);
}

uint64_t Engageable.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26A8526B8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26D664930](2);
      sub_26A759300(v5, v1);
      return sub_26A8526F8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26D664930](v3);
  sub_26A852008();
  return sub_26A8526F8();
}

uint64_t sub_26A758B74(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_26A8526B8();
  Engageable.hash(into:)(v4);
  return sub_26A8526F8();
}

double EngageableListItem.engageable.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_26A5065E0(v2, v3);
}

uint64_t EngageableListItem.init(title:engageable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t static EngageableListItem.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = 0, (sub_26A852598() & 1) != 0))
  {
    v19 = v2;
    v20 = v3;
    v17 = v4;
    v18 = v5;
    v8 = OUTLINED_FUNCTION_211();
    sub_26A5065E0(v8, v9);
    v10 = OUTLINED_FUNCTION_8_30();
    sub_26A5065E0(v10, v11);
    v7 = static Engageable.== infix(_:_:)(&v19, &v17);
    v12 = OUTLINED_FUNCTION_8_30();
    sub_26A5066FC(v12, v13);
    v14 = OUTLINED_FUNCTION_211();
    sub_26A5066FC(v14, v15);
  }

  return v7 & 1;
}

void EngageableListItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_26A851848();
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x26D664930](v3);
    sub_26A852008();
    return;
  }

  MEMORY[0x26D664930](2);
  v4 = OUTLINED_FUNCTION_5_21();

  sub_26A759300(v4, v5);
}

uint64_t EngageableListItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26A8526B8();
  sub_26A851848();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26D664930](2);
      sub_26A759300(v5, v1);
      return sub_26A8526F8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26D664930](v3);
  sub_26A852008();
  return sub_26A8526F8();
}

uint64_t sub_26A758E1C(uint64_t a1)
{
  sub_26A8526B8();
  sub_26A851848();
  Engageable.hash(into:)(v2);
  return sub_26A8526F8();
}

uint64_t View.engageable(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_12_41(KeyPath, v9, v10, v11, v12);
  v14 = swift_getKeyPath();
  v15 = 0;
  v16 = a1;
  v17 = a2;

  MEMORY[0x26D662ED0](&v14, a3, &type metadata for EngageableTextViewModifier, a4);
  return sub_26A757780(&v14);
}

uint64_t sub_26A758F24(void *a1)
{
  v1 = [a1 referenceIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

void sub_26A758F84(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for TableRowWatchCellViewModel(0);
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = (v7 - v6);
  v9 = *(a2 + 16);
  MEMORY[0x26D664930](v9);
  v20 = v9;
  if (v9)
  {
    v10 = 0;
    v19 = a2 + 32;
    do
    {
      v11 = (v19 + 16 * v10);
      v12 = v11[1];
      MEMORY[0x26D664930](*v11);
      MEMORY[0x26D664930](*(v12 + 16));
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v18 + 36);
        v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

        v16 = *(v4 + 72);
        do
        {
          sub_26A759960(v15, v8, type metadata accessor for TableRowWatchCellViewModel);
          MEMORY[0x26D664930](*v8);
          MEMORY[0x26D664930](*(v8[2] + 16));
          v17 = *(v8 + v14);
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          MEMORY[0x26D664950](*&v17);
          sub_26A7599BC();
          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v10;
    }

    while (v10 != v20);
  }
}

uint64_t sub_26A759120(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TableRowWatchCellViewModel(0);
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = (v8 - v7);
  v10 = *(a2 + 16);
  result = MEMORY[0x26D664930](v10);
  if (v10)
  {
    v12 = *(v3 + 36);
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_26A759960(v13, v9, type metadata accessor for TableRowWatchCellViewModel);
      MEMORY[0x26D664930](*v9);
      MEMORY[0x26D664930](*(v9[2] + 16));
      v15 = *(v9 + v12);
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x26D664950](*&v15);
      result = sub_26A7599BC();
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_26A75925C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26A73670C();
  MEMORY[0x26D664930](v3);
  v4 = sub_26A73670C();
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D6644E0](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_26A852008();
      }
    }
  }
}

void sub_26A759300(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x26D664930](v4);
  if (v4)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_26A5065E0(v6, v7);
      OUTLINED_FUNCTION_211();
      sub_26A851848();
      if (v7)
      {
        if (v7 != 1)
        {
          MEMORY[0x26D664930](2);
          sub_26A759300(a1, v6);
          goto LABEL_9;
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x26D664930](v8);
      sub_26A852008();
LABEL_9:
      v5 += 32;

      sub_26A5066FC(v6, v7);
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_26A7593EC()
{
  result = qword_2803B6CD0;
  if (!qword_2803B6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CD0);
  }

  return result;
}

unint64_t sub_26A759444()
{
  result = qword_2803B6CD8;
  if (!qword_2803B6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CD8);
  }

  return result;
}

unint64_t sub_26A75949C()
{
  result = qword_2803B6CE0;
  if (!qword_2803B6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CE0);
  }

  return result;
}

uint64_t sub_26A759500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_26A759540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A7595AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A759600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EngageableTextRenderer(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A759750()
{
  result = qword_2803B6CE8;
  if (!qword_2803B6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6CE8);
  }

  return result;
}

uint64_t sub_26A759838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return a2;
}

unint64_t sub_26A7598C8()
{
  result = qword_2803B6D10;
  if (!qword_2803B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D10);
  }

  return result;
}

uint64_t sub_26A75991C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void sub_26A759954(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26A759960(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A7599BC()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A759A10()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A759A64()
{
  result = qword_2803B6D18;
  if (!qword_2803B6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6D08, &qword_26A880188);
    sub_26A759AF0();
    sub_26A759C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D18);
  }

  return result;
}

unint64_t sub_26A759AF0()
{
  result = qword_2803B6D20;
  if (!qword_2803B6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CF8, &qword_26A880120);
    sub_26A759BA8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D20);
  }

  return result;
}

unint64_t sub_26A759BA8()
{
  result = qword_2803B6D28;
  if (!qword_2803B6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6CF0, &qword_26A880118);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D28);
  }

  return result;
}

unint64_t sub_26A759C8C()
{
  result = qword_2803B6D58;
  if (!qword_2803B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_unknownObjectWeakInit();
}

id sub_26A759DA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(__src);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v85 + 1) = &type metadata for PartialText;
      v86 = &protocol witness table for PartialText;
      v84[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v84[0] + 16);
    }

    else
    {
      v86 = 0;
      *v84 = 0u;
      v85 = 0u;
    }

    v10 = [v2 text_3];
    if (v10)
    {
      v11 = v10;
      *(&v82 + 1) = &type metadata for PartialText;
      v83 = &protocol witness table for PartialText;
      v81[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v81[0] + 16);
    }

    else
    {
      v83 = 0;
      *v81 = 0u;
      v82 = 0u;
    }

    v12 = [v2 addTint];
    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for PrimaryHeaderStandardView(0);
    v14 = a1 + v13[5];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    v15 = v13[6];
    *(a1 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v16 = memcpy(__dst, __src, 0xFAuLL);
    OUTLINED_FUNCTION_1_89(v16, v17, v18, v19, v20, v21, v22, v23, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
    sub_26A4EC458(__dst, &v46);
    sub_26A4EC4B4();
    *(a1 + v13[7]) = sub_26A851248();
    sub_26A5582C8(v84, v78);
    if (v79)
    {
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v24 = OUTLINED_FUNCTION_1_2();
      v26 = v25(v24);
      __swift_destroy_boxed_opaque_existential_1(v78);
    }

    else
    {
      sub_26A537648(v78);
      v26 = 0;
    }

    *(a1 + v13[8]) = v26;
    v27 = sub_26A5582C8(v81, &v46);
    if (v49)
    {
      __swift_project_boxed_opaque_existential_1(&v46, v49);
      v35 = OUTLINED_FUNCTION_1_2();
      v37 = v36(v35);

      OUTLINED_FUNCTION_1_89(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      sub_26A4EC508(v78);
      sub_26A537648(v81);
      sub_26A537648(v84);
      result = __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    else
    {
      OUTLINED_FUNCTION_1_89(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, 0, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      sub_26A4EC508(v78);

      sub_26A537648(v81);
      sub_26A537648(v84);
      result = sub_26A537648(&v46);
      v37 = 0;
    }

    *(a1 + v13[9]) = v37;
    *(a1 + v13[10]) = v12;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B138C8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A75A144()
{
  result = qword_2803AF858;
  if (!qword_2803AF858)
  {
    type metadata accessor for PrimaryHeaderStandardView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF858);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x360], 0xFAuLL);
}

uint64_t sub_26A75A1B8()
{
  v1 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  v6 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v6, qword_281588728);
  OUTLINED_FUNCTION_38_9();
  sub_26A68D640(v5, v0);
  v7 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v7, v8);
  v9 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  v12 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v12, v13);
  v14 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v1);
  v17 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v17, v18);
  v19 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
  v22 = OUTLINED_FUNCTION_4_74(v6[8]);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v1);
  v25 = OUTLINED_FUNCTION_4_74(v6[9]);
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v1);
  v28 = OUTLINED_FUNCTION_4_74(v6[10]);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v1);
  v31 = OUTLINED_FUNCTION_25_22();
  sub_26A75CC5C(v31, v32);
  v33 = OUTLINED_FUNCTION_10_49();
  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v1);
}

uint64_t sub_26A75A3AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v12, a3);
  OUTLINED_FUNCTION_38_9();
  sub_26A68D640(v11, v4);
  v13 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v13, v14);
  v15 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  v18 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v18, v19);
  v20 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
  v23 = OUTLINED_FUNCTION_25_22();
  sub_26A68D640(v23, v24);
  v25 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
  v28 = OUTLINED_FUNCTION_4_74(v12[8]);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v7);
  v31 = OUTLINED_FUNCTION_4_74(v12[9]);
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v7);
  v34 = OUTLINED_FUNCTION_4_74(v12[10]);
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v7);
  v37 = OUTLINED_FUNCTION_25_22();
  sub_26A75CC5C(v37, v38);
  v39 = OUTLINED_FUNCTION_10_49();
  return __swift_storeEnumTagSinglePayload(v39, v40, v41, v7);
}

void sub_26A75A500()
{
  OUTLINED_FUNCTION_28_0();
  v31 = v7;
  v32 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_21();
  if (qword_28157DC40 != -1)
  {
    OUTLINED_FUNCTION_3_79(&qword_28157DC40);
  }

  v16 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v16, qword_281588740);
  v17 = sub_26A68C628(v32);
  if (qword_28157DC38 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v17, qword_281588728);
  sub_26A68C628(v32);
  sub_26A68D640(v6, v4);
  sub_26A68D640(v6, v2);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  if (v31)
  {
    v21 = v5;
  }

  else
  {
    v21 = v6;
  }

  sub_26A68D640(v21, v1);
  OUTLINED_FUNCTION_22_0();
  v25 = OUTLINED_FUNCTION_40_8(v22, v23, v24);
  sub_26A75CCC0(v25);
  sub_26A75CC5C(v21, v0);
  OUTLINED_FUNCTION_11_47(v0);
  OUTLINED_FUNCTION_1_90(v26);
  v27 = OUTLINED_FUNCTION_4_74(*(v16 + 44));
  OUTLINED_FUNCTION_36_7(v27, v28, v29);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v0, v30);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75A70C()
{
  OUTLINED_FUNCTION_28_0();
  v42 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v44 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v43 = v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  if (qword_2803A8E58 != -1)
  {
    OUTLINED_FUNCTION_8_59(&qword_2803A8E58);
  }

  v22 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v22, qword_2803D2418);
  v23 = sub_26A68C628(v7);
  if (qword_28157DC40 != -1)
  {
    v23 = OUTLINED_FUNCTION_3_79(&qword_28157DC40);
  }

  OUTLINED_FUNCTION_15_33(v23, qword_281588740);
  v24 = sub_26A68C628(v7);
  if (qword_28157DC38 != -1)
  {
    v24 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v24, qword_281588728);
  sub_26A68C628(v7);
  v25 = v43;
  sub_26A68D640(v21, v43);
  sub_26A68D640(v21, v1);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  if (v42)
  {
    sub_26A75CCC0(v21);
    sub_26A68D640(v3, v0);
    v29 = v3;
  }

  else
  {
    sub_26A75CC5C(v21, v0);
    v29 = v4;
  }

  OUTLINED_FUNCTION_22_0();
  v33 = OUTLINED_FUNCTION_40_8(v30, v31, v32);
  sub_26A75CCC0(v33);
  v34 = v29;
  v35 = v44;
  sub_26A75CC5C(v34, v44);
  OUTLINED_FUNCTION_11_47(v35);
  OUTLINED_FUNCTION_1_90(v36);
  v37 = OUTLINED_FUNCTION_4_74(*(v22 + 44));
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v2);
  sub_26A75CC5C(v25, v9);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v35, v40);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75A9AC()
{
  OUTLINED_FUNCTION_28_0();
  v8 = v7;
  v10 = v9;
  v37 = v11;
  v38 = v12;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_21();
  if (*v10 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v22, v8);
  v23 = sub_26A68C628(v38);
  if (qword_28157DC38 != -1)
  {
    v23 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v23, qword_281588728);
  sub_26A68C628(v38);
  sub_26A68D640(v6, v4);
  sub_26A68D640(v6, v2);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  if (v37)
  {
    v27 = v5;
  }

  else
  {
    v27 = v6;
  }

  sub_26A68D640(v27, v1);
  OUTLINED_FUNCTION_22_0();
  v31 = OUTLINED_FUNCTION_40_8(v28, v29, v30);
  if (v37)
  {
    sub_26A75CC5C(v31, v0);
  }

  else
  {
    sub_26A75CCC0(v31);
    sub_26A68D640(v6, v0);
  }

  OUTLINED_FUNCTION_11_47(v0);
  OUTLINED_FUNCTION_1_90(v32);
  sub_26A75CC5C(v6, v14 + *(v22 + 44));
  v33 = OUTLINED_FUNCTION_10_49();
  OUTLINED_FUNCTION_36_7(v33, v34, v35);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v0, v36);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75ABD0()
{
  OUTLINED_FUNCTION_28_0();
  v72 = v2;
  LODWORD(v68) = v3;
  v5 = v4;
  v71 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v67 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_23();
  v66 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_23();
  v65 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v64 = v23;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  if (qword_28157DC40 != -1)
  {
    OUTLINED_FUNCTION_3_79(&qword_28157DC40);
  }

  v31 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v31, qword_281588740);
  v69 = v30;
  sub_26A68C628(v5);
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_20_29(v31, qword_281588728);
  v70 = v1;
  sub_26A68C628(v5);
  v32 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v34 = *(v33 + 104);
  if (v68)
  {
    OUTLINED_FUNCTION_33_12();
    v34();
    (v34)(&v26[*(v21 + 20)], *MEMORY[0x277D62F28], v32);
    OUTLINED_FUNCTION_33_12();
    v34();
    v68 = v26;
    v35 = v20;
    OUTLINED_FUNCTION_19_25();
    v34();
  }

  else
  {
    v36 = v64;
    OUTLINED_FUNCTION_33_12();
    v34();
    OUTLINED_FUNCTION_19_25();
    v34();
    v37 = v65;
    OUTLINED_FUNCTION_33_12();
    v34();
    OUTLINED_FUNCTION_19_25();
    v34();
    v38 = v37;
    v0 = v66;
    v16 = v67;
    v68 = v36;
    v35 = v38;
  }

  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v21);
  OUTLINED_FUNCTION_33_12();
  v34();
  OUTLINED_FUNCTION_19_25();
  v34();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v21);
  if (v72)
  {
    v45 = v69;
  }

  else
  {
    v45 = v70;
  }

  if (v72)
  {
    v46 = v70;
  }

  else
  {
    v46 = v69;
  }

  sub_26A75CCC0(v45);
  sub_26A75CC5C(v46, v16);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v21);
  v50 = v71;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v21);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v21);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v21);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v21);
  sub_26A75CC5C(v68, v50);
  sub_26A75CD1C(v35, v50 + v31[5]);
  sub_26A75CD1C(v0, v50 + v31[6]);
  sub_26A75CD1C(v16, v50 + v31[7]);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75B034()
{
  OUTLINED_FUNCTION_28_0();
  v48 = v2;
  v4 = v3;
  v47 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v49 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_23();
  v11 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  if (qword_2803A8E50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v20, qword_2803D2400);
  v21 = sub_26A68C628(v4);
  v46 = v19;
  if (qword_28157DC38 != -1)
  {
    v21 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v21, qword_281588728);
  sub_26A68C628(v4);
  v22 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v24 = *(v23 + 104);
  OUTLINED_FUNCTION_111();
  v24(v25);
  OUTLINED_FUNCTION_111();
  v24(v26);
  OUTLINED_FUNCTION_111();
  v24(v27);
  OUTLINED_FUNCTION_111();
  v24(v28);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v1);
  OUTLINED_FUNCTION_111();
  v24(v32);
  (v24)(v11 + *(v1 + 20), *MEMORY[0x277D62F30], v22);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v1);
  if (v48)
  {
    v36 = v46;
  }

  else
  {
    v36 = v0;
  }

  if (v48)
  {
    v37 = v0;
  }

  else
  {
    v37 = v46;
  }

  sub_26A75CCC0(v36);
  v38 = v37;
  v39 = v49;
  sub_26A75CC5C(v38, v49);
  OUTLINED_FUNCTION_11_47(v39);
  v40 = v47;
  OUTLINED_FUNCTION_1_90(v41);
  v42 = OUTLINED_FUNCTION_4_74(v20[11]);
  OUTLINED_FUNCTION_36_7(v42, v43, v44);
  sub_26A75CD1C(v14, v40 + v20[5]);
  sub_26A75CD1C(v11, v40 + v20[6]);
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v39, v45);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75B33C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  v6 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v6, qword_281588728);
  OUTLINED_FUNCTION_39_6();
  sub_26A84BBF8();
  OUTLINED_FUNCTION_5_71();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_37_12();
  v8();
  OUTLINED_FUNCTION_37_12();
  v8();
  sub_26A68D640(v5, v0 + v6[5]);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
  sub_26A75CC5C(v5, v0 + v6[6]);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
  OUTLINED_FUNCTION_37_12();
  v8();
  OUTLINED_FUNCTION_37_12();
  v8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v1);
  v18 = OUTLINED_FUNCTION_4_74(v6[8]);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v1);
  v21 = OUTLINED_FUNCTION_4_74(v6[9]);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  v24 = OUTLINED_FUNCTION_4_74(v6[10]);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v1);
  v27 = OUTLINED_FUNCTION_4_74(v6[11]);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v1);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75B4F8()
{
  OUTLINED_FUNCTION_28_0();
  v47 = v4;
  v6 = v5;
  v49 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v50 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_23();
  v48 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v16 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_29();
  if (qword_2803A8E58 != -1)
  {
    OUTLINED_FUNCTION_8_59(&qword_2803A8E58);
  }

  v19 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v19, qword_2803D2418);
  v20 = sub_26A68C628(v6);
  if (qword_28157DC38 != -1)
  {
    v20 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v20, qword_281588728);
  sub_26A68C628(v6);
  v21 = sub_26A84BBF8();
  v22 = v1;
  v23 = *(*(v21 - 8) + 104);
  OUTLINED_FUNCTION_19_25();
  v23();
  (v23)(v16 + *(v3 + 20), *MEMORY[0x277D62F28], v21);
  OUTLINED_FUNCTION_19_25();
  v23();
  v24 = *MEMORY[0x277D62F58];
  v46 = *MEMORY[0x277D62F58];
  (v23)(v0 + *(v3 + 20), v24, v21);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
  OUTLINED_FUNCTION_19_25();
  v23();
  (v23)(v48 + *(v3 + 20), v24, v21);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v3);
  if (v47)
  {
    v31 = v2;
  }

  else
  {
    v31 = v22;
  }

  if (v47)
  {
    v32 = v22;
  }

  else
  {
    v32 = v2;
  }

  sub_26A75CCC0(v31);
  sub_26A75CC5C(v32, v50);
  OUTLINED_FUNCTION_11_47(v50);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v3);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v3);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v3);
  v42 = v49 + v19[11];
  (v23)(v42, *MEMORY[0x277D62F38], v21);
  (v23)(v42 + *(v3 + 20), v46, v21);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v3);
  sub_26A75CC5C(v16, v49);
  sub_26A75CD1C(v0, v49 + v19[5]);
  sub_26A75CD1C(v48, v49 + v19[6]);
  sub_26A75CD1C(v50, v49 + v19[7]);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75B888()
{
  OUTLINED_FUNCTION_28_0();
  v52 = v3;
  v5 = v4;
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v55 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_23();
  v53 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v48[-v18];
  if (qword_2803A8E58 != -1)
  {
    OUTLINED_FUNCTION_8_59(&qword_2803A8E58);
  }

  v20 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v20, qword_2803D2418);
  v21 = sub_26A68C628(v5);
  if (qword_28157DC38 != -1)
  {
    v21 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v21, qword_281588728);
  sub_26A68C628(v5);
  v22 = *MEMORY[0x277D62F30];
  v23 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v25 = *(v24 + 104);
  (v25)(v2, v22, v23);
  v51 = v2;
  OUTLINED_FUNCTION_19_25();
  v25();
  v50 = v0;
  v49 = v22;
  (v25)(v0, v22, v23);
  OUTLINED_FUNCTION_19_25();
  v25();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v1);
  v29 = v53;
  (v25)(v53, v22, v23);
  OUTLINED_FUNCTION_19_25();
  v25();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v1);
  if (v52)
  {
    v33 = v19;
  }

  else
  {
    v33 = v16;
  }

  if (v52)
  {
    v19 = v16;
  }

  sub_26A75CCC0(v33);
  v34 = v55;
  sub_26A75CC5C(v19, v55);
  OUTLINED_FUNCTION_11_47(v34);
  v35 = v54;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v1);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v1);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v1);
  (v25)(v35 + v20[11], v49, v23);
  OUTLINED_FUNCTION_19_25();
  v25();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v1);
  sub_26A75CC5C(v51, v35);
  sub_26A75CD1C(v50, v35 + v20[5]);
  sub_26A75CD1C(v29, v35 + v20[6]);
  sub_26A75CD1C(v34, v35 + v20[7]);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A75BC08()
{
  OUTLINED_FUNCTION_28_0();
  v38 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v40 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_54();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_29();
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_71();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  v39 = v17;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_21();
  if (qword_2803A8E58 != -1)
  {
    OUTLINED_FUNCTION_8_59(&qword_2803A8E58);
  }

  v21 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v21, qword_2803D2418);
  v22 = sub_26A68C628(v8);
  if (qword_28157DC40 != -1)
  {
    v22 = OUTLINED_FUNCTION_3_79(&qword_28157DC40);
  }

  OUTLINED_FUNCTION_15_33(v22, qword_281588740);
  v23 = sub_26A68C628(v8);
  if (qword_28157DC38 != -1)
  {
    v23 = OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_15_33(v23, qword_281588728);
  sub_26A68C628(v8);
  sub_26A68D640(v5, v39);
  sub_26A68D640(v5, v2);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  if (v38)
  {
    v27 = v4;
  }

  else
  {
    v27 = v5;
  }

  if (v38)
  {
    v28 = v0;
  }

  else
  {
    v28 = v4;
  }

  if (v38)
  {
    v0 = v4;
  }

  sub_26A68D640(v27, v1);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v3);
  sub_26A75CCC0(v28);
  sub_26A75CC5C(v0, v40);
  OUTLINED_FUNCTION_11_47(v40);
  OUTLINED_FUNCTION_1_90(v32);
  sub_26A75CC5C(v5, v10 + *(v21 + 44));
  v33 = OUTLINED_FUNCTION_10_49();
  v36 = OUTLINED_FUNCTION_40_8(v33, v34, v35);
  sub_26A75CC5C(v36, v10);
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_34_12();
  sub_26A75CD1C(v40, v37);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A75BE98()
{
  v1 = OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  v6 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_project_value_buffer(v6, qword_281588728);
  OUTLINED_FUNCTION_39_6();
  sub_26A68D640(v5, v0);
  sub_26A68D640(v5, v0 + v6[5]);
  v7 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  sub_26A68D640(v5, v0 + v6[6]);
  v10 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  sub_26A75CC5C(v5, v0 + v6[7]);
  v13 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  v16 = OUTLINED_FUNCTION_4_74(v6[8]);
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v1);
  v19 = OUTLINED_FUNCTION_4_74(v6[9]);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
  v22 = OUTLINED_FUNCTION_4_74(v6[10]);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v1);
  v25 = OUTLINED_FUNCTION_4_74(v6[11]);
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v1);
}

void sub_26A75BFDC()
{
  OUTLINED_FUNCTION_28_0();
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_39();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_21();
  if (qword_28157DC40 != -1)
  {
    OUTLINED_FUNCTION_3_79(&qword_28157DC40);
  }

  v20 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_20_29(v20, qword_281588740);
  sub_26A68C628(v5);
  if (qword_28157DC38 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_28157DC38);
  }

  OUTLINED_FUNCTION_20_29(v20, qword_281588728);
  sub_26A68C628(v5);
  sub_26A68D640(v2, v17);
  sub_26A68D640(v2, v12);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v13);
  if (v43)
  {
    sub_26A75CC5C(v1, v0);
  }

  else
  {
    sub_26A75CCC0(v1);
    sub_26A68D640(v2, v0);
  }

  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
  sub_26A75CC5C(v2, v7 + v20[7]);
  v27 = OUTLINED_FUNCTION_10_49();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  v30 = OUTLINED_FUNCTION_4_74(v20[8]);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
  v33 = OUTLINED_FUNCTION_4_74(v20[9]);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v13);
  v36 = OUTLINED_FUNCTION_4_74(v20[10]);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v13);
  v39 = OUTLINED_FUNCTION_4_74(v20[11]);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v13);
  sub_26A75CC5C(v17, v7);
  sub_26A75CD1C(v12, v7 + v20[5]);
  sub_26A75CD1C(v0, v7 + v20[6]);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A75C250(__n128 a1)
{
  v1 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_allocate_value_buffer(v1, qword_2803D2400);
  v2 = __swift_project_value_buffer(v1, qword_2803D2400);
  v3 = *MEMORY[0x277D62F38];
  v4 = sub_26A84BBF8();
  v5 = *(*(v4 - 8) + 104);
  v5(v2, v3, v4);
  v6 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  v7 = *MEMORY[0x277D62F20];
  v5(v2 + *(v6 + 20), v7, v4);
  v8 = v2 + v1[5];
  v5(v8, v3, v4);
  v5(v8 + *(v6 + 20), v7, v4);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v6);
  v9 = v2 + v1[6];
  v5(v9, v3, v4);
  v5(v9 + *(v6 + 20), v7, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  v10 = v2 + v1[7];
  v5(v10, v3, v4);
  v11 = *MEMORY[0x277D62F58];
  v5(v10 + *(v6 + 20), v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[8], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[9], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[10], 1, 1, v6);
  v12 = v2 + v1[11];
  v5(v12, v3, v4);
  v5(v12 + *(v6 + 20), v11, v4);

  return __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
}

uint64_t sub_26A75C4D8(__n128 a1)
{
  v1 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_allocate_value_buffer(v1, qword_2803D2418);
  v2 = __swift_project_value_buffer(v1, qword_2803D2418);
  v3 = *MEMORY[0x277D62F48];
  v4 = sub_26A84BBF8();
  v5 = *(*(v4 - 8) + 104);
  v5(v2, v3, v4);
  v6 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  v5(v2 + *(v6 + 20), *MEMORY[0x277D62F28], v4);
  v7 = v2 + v1[5];
  v5(v7, v3, v4);
  v8 = *MEMORY[0x277D62F58];
  v5(v7 + *(v6 + 20), v8, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);
  v9 = v2 + v1[6];
  v5(v9, v3, v4);
  v5(v9 + *(v6 + 20), v8, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  v10 = v2 + v1[7];
  v5(v10, v8, v4);
  v5(v10 + *(v6 + 20), *MEMORY[0x277D62F38], v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[8], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[9], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[10], 1, 1, v6);
  v11 = v2 + v1[11];
  v5(v11, v3, v4);
  v5(v11 + *(v6 + 20), v8, v4);

  return __swift_storeEnumTagSinglePayload(v11, 0, 1, v6);
}

uint64_t sub_26A75C764(__n128 a1)
{
  v1 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_allocate_value_buffer(v1, qword_281588740);
  v2 = __swift_project_value_buffer(v1, qword_281588740);
  v3 = *MEMORY[0x277D62F28];
  v4 = sub_26A84BBF8();
  v5 = *(*(v4 - 8) + 104);
  v5(v2, v3, v4);
  v6 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  v5(v2 + *(v6 + 20), v3, v4);
  v7 = v2 + v1[5];
  v8 = *MEMORY[0x277D62F58];
  v5(v7, v8, v4);
  v5(v7 + *(v6 + 20), v8, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);
  v9 = v2 + v1[6];
  v5(v9, v8, v4);
  v5(v9 + *(v6 + 20), v8, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  v10 = v2 + v1[7];
  v11 = *MEMORY[0x277D62F38];
  v5(v10, v11, v4);
  v5(v10 + *(v6 + 20), v11, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[8], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[9], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[10], 1, 1, v6);
  v12 = v2 + v1[11];
  v5(v12, v8, v4);
  v5(v12 + *(v6 + 20), v8, v4);

  return __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
}

uint64_t sub_26A75C9EC(__n128 a1)
{
  v1 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  __swift_allocate_value_buffer(v1, qword_281588728);
  v2 = __swift_project_value_buffer(v1, qword_281588728);
  v3 = *MEMORY[0x277D62F48];
  v4 = sub_26A84BBF8();
  v5 = *(*(v4 - 8) + 104);
  v5(v2, v3, v4);
  v6 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  v5(v2 + *(v6 + 20), v3, v4);
  v7 = v2 + v1[5];
  v5(v7, v3, v4);
  v5(v7 + *(v6 + 20), v3, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);
  v8 = v2 + v1[6];
  v5(v8, v3, v4);
  v5(v8 + *(v6 + 20), v3, v4);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v6);
  v9 = v2 + v1[7];
  v5(v9, v3, v4);
  v5(v9 + *(v6 + 20), v3, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[8], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[9], 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + v1[10], 1, 1, v6);
  v10 = v2 + v1[11];
  v5(v10, v3, v4);
  v5(v10 + *(v6 + 20), *MEMORY[0x277D62F38], v4);

  return __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
}

uint64_t sub_26A75CC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A75CCC0(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A75CD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8, &unk_26A8721A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_90@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 36), 1, 1, v2);
  v4 = v1 + *(v3 + 40);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_3_79(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_59(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  v4 = v0 + *(v2 + 20);

  return sub_26A75CD1C(v1, v4);
}

uint64_t OUTLINED_FUNCTION_29_17()
{

  return type metadata accessor for ComponentSeparatorsConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_30_14()
{
  v4 = v0 + *(v2 + 24);

  return sub_26A75CD1C(v1, v4);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return type metadata accessor for ComponentSeparatorsConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);

  return sub_26A75CC5C(v5, v3);
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return sub_26A68C628(v0);
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_26A68C628(v0);
}

uint64_t View.separatorLeadingInsetPreference(additionalPadding:)(uint64_t a1, uint64_t a2, double a3)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = a3;
  MEMORY[0x26D662ED0](&KeyPath, a1, &unk_287B22AC8, a2);
}

void *sub_26A75D10C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8CE0 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_2803A8CE0);
  }

  v2 = xmmword_2803D1FA8;
  v3 = qword_2803D1FB8;
  v4 = unk_2803D1FC0;
  v5 = qword_2803D1FC8;

  sub_26A6AEE74(__src);
  type metadata accessor for ResponseSeparators(0);
  OUTLINED_FUNCTION_2_89();
  sub_26A75F50C(v6, v7, &unk_26A870A3C);
  v8 = sub_26A84F678();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  result = memcpy(a1, __src, 0xC0uLL);
  *(a1 + 192) = v5;
  *(a1 + 200) = v2;
  *(a1 + 216) = v3;
  *(a1 + 224) = v4;
  *(a1 + 232) = v5;
  *(a1 + 240) = v8;
  *(a1 + 248) = v10;
  *(a1 + 256) = KeyPath;
  *(a1 + 264) = 0;
  *(a1 + 272) = v12;
  *(a1 + 280) = 0;
  return result;
}

uint64_t sub_26A75D254()
{
  sub_26A75F5E0();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A75D290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A75D254();
  *a1 = result;
  return result;
}

unint64_t sub_26A75D2E4()
{
  result = qword_2803B6D60;
  if (!qword_2803B6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6D60);
  }

  return result;
}

uint64_t sub_26A75D34C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 281))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 200);
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

uint64_t sub_26A75D38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 281) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 281) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A75D424(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t sub_26A75D464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}