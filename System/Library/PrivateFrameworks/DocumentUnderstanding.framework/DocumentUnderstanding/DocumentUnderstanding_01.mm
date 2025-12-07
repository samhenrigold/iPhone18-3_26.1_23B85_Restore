void sub_232B1D180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  while (1)
  {
    v10 = a1;
    sub_232B1E3A4(&v10, a3, a4);
    if (v4 || a2 == a1)
    {
      break;
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      break;
    }
  }
}

uint64_t sub_232B1D200(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v10 = a3;
    result = a1(&v10, a2);
    if (v4 || a4 == a3)
    {
      break;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t (*sub_232B1D268(uint64_t (*result)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *, uint64_t)
{
  v7 = result;
  for (i = a3; a4 != i; ++i)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    if (i >= a4)
    {
      goto LABEL_9;
    }

    v9 = i;
    result = v7(&v9, a2);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

void sub_232B1D2E4(uint64_t a1@<X8>)
{
  v2 = v1;
  v192 = a1;
  v3 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  sub_232B20714();
  v190 = v5;
  sub_232B20600();
  MEMORY[0x28223BE20](v6);
  v8 = &v189 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v13 = v12 - v11;
  sub_232CE9330();
  v189 = v10[7];
  sub_232B12504(v13 + v189, 1, 1, v3);
  v14 = v13 + v10[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v10[9];
  *(v13 + v15) = 2;
  v16 = (v13 + v10[10]);
  *v14 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation];
  *(v14 + 8) = 0;
  *(v13 + v15) = v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable];
  v17 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey + 8];
  *v16 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  v16[1] = v17;

  sub_232CE9330();
  v191 = v3;
  v18 = *(v3 + 20);
  if (qword_27DDC62E8 != -1)
  {
    sub_232B20578(&qword_27DDC62E8);
  }

  *&v8[v18] = off_27DDC62F0;
  v19 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap], v222);
  v20 = *&v2[v19];

  v21 = sub_232B20798();
  sub_232B1DFEC(v21, v22, v20);
  v24 = v23;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *&v8[v18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v27);
    v28 = sub_232B2060C();
    sub_232B20650(v28);
  }

  sub_232B206A0();
  sub_232B13F5C(v26 + 16, v221);
  *(v26 + 16) = v24;
  *(v26 + 24) = 0;
  sub_232B208C8();
  v29 = sub_232B209B4();
  sub_232B1DFEC(v29, 0xEA0000000000746ELL, v26);
  sub_232B2066C();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *&v8[v18];
  if ((v30 & 1) == 0)
  {
    v32 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v32);
    v33 = sub_232B2060C();
    sub_232B20650(v33);
  }

  sub_232B206A0();
  sub_232B13F5C(v31 + 32, v220);
  *(v31 + 32) = v24;
  *(v31 + 40) = 0;
  sub_232B208C8();
  v34 = sub_232B20980();
  sub_232B1DFEC(v34, 0xE900000000000074, v31);
  sub_232B2066C();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *&v8[v18];
  if ((v35 & 1) == 0)
  {
    v37 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v37);
    v38 = sub_232B2060C();
    sub_232B20650(v38);
  }

  sub_232B206A0();
  sub_232B13F5C(v36 + 48, v219);
  *(v36 + 48) = v24;
  *(v36 + 56) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000012);
  sub_232B2066C();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *&v8[v18];
  if ((v39 & 1) == 0)
  {
    v41 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v41);
    v42 = sub_232B2060C();
    sub_232B20650(v42);
  }

  sub_232B206A0();
  sub_232B13F5C(v40 + 64, v218);
  *(v40 + 64) = "able";
  *(v40 + 72) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000013);
  sub_232B2066C();
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&v8[v18];
  if ((v43 & 1) == 0)
  {
    v45 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v45);
    v46 = sub_232B2060C();
    sub_232B20650(v46);
  }

  sub_232B206A0();
  sub_232B13F5C(v44 + 80, v217);
  *(v44 + 80) = "entity image ratio";
  *(v44 + 88) = 0;
  sub_232B208C8();
  v47 = sub_232B20838();
  sub_232B1DFEC(v47, v48, v44);
  sub_232B2066C();
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *&v8[v18];
  if ((v49 & 1) == 0)
  {
    v51 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v51);
    v52 = sub_232B2060C();
    sub_232B20650(v52);
  }

  sub_232B206A0();
  sub_232B13F5C(v50 + 96, v216);
  *(v50 + 96) = "entity image ratio";
  *(v50 + 104) = 0;
  sub_232B208C8();
  v53 = sub_232B207EC();
  sub_232B1DFEC(v53, v54, v50);
  sub_232B2066C();
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *&v8[v18];
  if ((v55 & 1) == 0)
  {
    v57 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v57);
    v58 = sub_232B2060C();
    sub_232B20650(v58);
  }

  sub_232B206A0();
  sub_232B13F5C(v56 + 112, &v215);
  *(v56 + 112) = "entity image ratio";
  *(v56 + 120) = 0;
  sub_232B208C8();
  v59 = sub_232B20A6C(0xD000000000000011);
  v61 = v60;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *&v8[v18];
  if ((v62 & 1) == 0)
  {
    v64 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v64);
    v65 = sub_232B2060C();
    sub_232B20650(v65);
  }

  if (v61)
  {
    v66 = 0;
  }

  else
  {
    v66 = v59;
  }

  sub_232B13F5C(v63 + 128, &v214);
  *(v63 + 128) = v66;
  *(v63 + 136) = 0;
  sub_232B208C8();
  v67 = sub_232B20728();
  v68 = sub_232B1DFEC(v67 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v63);
  v70 = v69;

  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *&v8[v18];
  if ((v71 & 1) == 0)
  {
    v73 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v73);
    v74 = sub_232B2060C();
    sub_232B20650(v74);
  }

  if (v70)
  {
    v75 = 0;
  }

  else
  {
    v75 = v68;
  }

  sub_232B13F5C(v72 + 144, &v213);
  *(v72 + 144) = v75;
  *(v72 + 152) = 0;
  sub_232B208C8();
  v76 = sub_232B20728();
  sub_232B1DFEC(v76 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v72);
  sub_232B2066C();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *&v8[v18];
  if ((v77 & 1) == 0)
  {
    v79 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v79);
    v80 = sub_232B2060C();
    sub_232B20650(v80);
  }

  sub_232B206A0();
  sub_232B13F5C(v78 + 160, &v212);
  *(v78 + 160) = v75;
  *(v78 + 168) = 0;
  sub_232B208C8();
  v81 = sub_232B20768();
  sub_232B1DFEC(v81, v82, v78);
  sub_232B2066C();
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *&v8[v18];
  if ((v83 & 1) == 0)
  {
    v85 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v85);
    v86 = sub_232B2060C();
    sub_232B20650(v86);
  }

  sub_232B206A0();
  sub_232B13F5C(v84 + 296, &v211);
  *(v84 + 296) = v75;
  *(v84 + 304) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000010);
  sub_232B2066C();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *&v8[v18];
  if ((v87 & 1) == 0)
  {
    v89 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v89);
    v90 = sub_232B2060C();
    sub_232B20650(v90);
  }

  sub_232B206A0();
  sub_232B13F5C(v88 + 280, &v210);
  *(v88 + 280) = "mentions per name";
  *(v88 + 288) = 0;
  sub_232B208C8();
  v91 = sub_232B20818();
  sub_232B1DFEC(v91, v92, v88);
  sub_232B2066C();
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *&v8[v18];
  if ((v93 & 1) == 0)
  {
    v95 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v95);
    v96 = sub_232B2060C();
    sub_232B20650(v96);
  }

  sub_232B206A0();
  sub_232B13F5C(v94 + 216, &v209);
  *(v94 + 216) = "mentions per name";
  *(v94 + 224) = 0;
  sub_232B208C8();
  v97 = sub_232B209D4();
  sub_232B1DFEC(v97, 0xEA00000000007367, v94);
  sub_232B2066C();
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *&v8[v18];
  if ((v98 & 1) == 0)
  {
    v100 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v100);
    v101 = sub_232B2060C();
    sub_232B20650(v101);
  }

  sub_232B206A0();
  sub_232B13F5C(v99 + 232, &v208);
  *(v99 + 232) = "mentions per name";
  *(v99 + 240) = 0;
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *&v8[v18];
  if ((v102 & 1) == 0)
  {
    v104 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v104);
    v105 = sub_232B2060C();
    sub_232B20650(v105);
  }

  sub_232B13F5C(v103 + 176, &v207);
  v106 = MEMORY[0x277D84F90];
  *(v103 + 176) = MEMORY[0x277D84F90];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *&v8[v18];
  if ((v107 & 1) == 0)
  {
    v109 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v109);
    v110 = sub_232B2060C();
    sub_232B20650(v110);
  }

  sub_232B13F5C(v108 + 184, &v206);
  *(v108 + 184) = v106;

  v111 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *&v8[v18];
  if ((v111 & 1) == 0)
  {
    v113 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v113);
    v114 = sub_232B2060C();
    sub_232B20650(v114);
  }

  sub_232B13F5C(v112 + 192, &v205);
  *(v112 + 192) = v106;

  v115 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *&v8[v18];
  if ((v115 & 1) == 0)
  {
    v117 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v117);
    v118 = sub_232B2060C();
    sub_232B20650(v118);
  }

  sub_232B13F5C(v116 + 200, &v204);
  *(v116 + 200) = v106;

  v119 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *&v8[v18];
  if ((v119 & 1) == 0)
  {
    v121 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v121);
    v122 = sub_232B2060C();
    sub_232B20650(v122);
  }

  sub_232B13F5C(v120 + 312, &v203);
  *(v120 + 312) = v106;

  v123 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *&v8[v18];
  if ((v123 & 1) == 0)
  {
    v125 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v125);
    v126 = sub_232B2060C();
    sub_232B20650(v126);
  }

  sub_232B13F5C(v124 + 208, &v202);
  *(v124 + 208) = v106;

  v127 = v2;
  v128 = 0;
  sub_232B1D180(1, 11, v8, v127);
  sub_232B13F74(&v127[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap], &v201);
  sub_232B2075C();
  if (v129)
  {
    sub_232B20924();
    v130 = sub_232B1F160(0xD00000000000001DLL, 0x8000000000000000);
    if (v131)
    {
      v106 = *(*(v124 + 56) + 8 * v130);
    }
  }

  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *&v8[v18];
  if ((v132 & 1) == 0)
  {
    v134 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v134);
    v135 = sub_232B2060C();
    sub_232B20650(v135);
  }

  sub_232B13F5C(v133 + 248, &v200);
  *(v133 + 248) = v106;

  sub_232B2075C();
  if (v136)
  {
    sub_232B20924();
    v137 = sub_232B1F160(0xD00000000000001DLL, 0x8000000000000000);
    if (v138)
    {
      sub_232B206DC(v137);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v139 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *&v8[v18];
  if ((v139 & 1) == 0)
  {
    v141 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v141);
    v142 = sub_232B2060C();
    sub_232B20650(v142);
  }

  sub_232B13F5C(v140 + 256, &v199);
  *(v140 + 256) = v128;

  sub_232B2075C();
  if (v143)
  {
    sub_232B20924();
    v144 = sub_232B1F160(0xD00000000000001CLL, v128 | 0x8000000000000000);
    if (v145)
    {
      sub_232B206DC(v144);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v146 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *&v8[v18];
  if ((v146 & 1) == 0)
  {
    v148 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v148);
    v149 = sub_232B2060C();
    sub_232B20650(v149);
  }

  sub_232B13F5C(v147 + 264, &v198);
  *(v147 + 264) = v128;

  sub_232B2075C();
  if (v150)
  {
    sub_232B20924();
    v151 = sub_232B1F160(0xD000000000000017, v128 | 0x8000000000000000);
    if (v152)
    {
      sub_232B206DC(v151);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v153 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *&v8[v18];
  if ((v153 & 1) == 0)
  {
    v155 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v155);
    v156 = sub_232B2060C();
    sub_232B20650(v156);
  }

  sub_232B13F5C(v154 + 272, &v197);
  *(v154 + 272) = v128;

  sub_232B2075C();
  if (v157)
  {
    sub_232B20924();
    v158 = sub_232B1F160(0xD000000000000019, v128 | 0x8000000000000000);
    if (v159)
    {
      sub_232B206DC(v158);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v160 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *&v8[v18];
  if ((v160 & 1) == 0)
  {
    v162 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v162);
    v163 = sub_232B2060C();
    sub_232B20650(v163);
  }

  sub_232B13F5C(v161 + 320, &v196);
  *(v161 + 320) = v128;

  sub_232B2075C();
  if (v164)
  {
    sub_232B20924();
    v165 = sub_232B1F160(0xD000000000000014, v128 | 0x8000000000000000);
    if (v166)
    {
      sub_232B206DC(v165);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v167 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *&v8[v18];
  if ((v167 & 1) == 0)
  {
    v169 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v169);
    v170 = sub_232B2060C();
    sub_232B20650(v170);
  }

  sub_232B13F5C(v168 + 328, &v195);
  *(v168 + 328) = v128;

  sub_232B2075C();
  if (v171)
  {
    sub_232B20924();
    v172 = sub_232B1F160(0xD000000000000019, v128 | 0x8000000000000000);
    if (v173)
    {
      sub_232B206DC(v172);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v174 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v8[v18];
  if ((v174 & 1) == 0)
  {
    v176 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v176);
    v177 = sub_232B2060C();
    sub_232B20650(v177);
  }

  sub_232B13F5C(v175 + 344, &v194);
  *(v175 + 344) = v128;

  sub_232B2075C();
  if (v178)
  {
    sub_232B20924();
    v179 = sub_232B1F160(0xD00000000000001CLL, v128 | 0x8000000000000000);
    if (v180)
    {
      sub_232B206DC(v179);
    }

    else
    {
      v128 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v181 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *&v8[v18];
  if ((v181 & 1) == 0)
  {
    v183 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC(v183);
    v184 = sub_232B2060C();
    sub_232B20650(v184);
  }

  sub_232B13F5C(v182 + 336, &v193);
  *(v182 + 336) = v128;

  v185 = v190;
  sub_232B20458(v8, v190, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v186 = v189;
  sub_232B13790(v13 + v189, &qword_27DDC64B0, &qword_232CF5D30);
  sub_232B20548();
  sub_232B1F7F0(v185, v13 + v186, v187);
  sub_232B12504(v13 + v186, 0, 1, v191);
  sub_232B206C4();
  sub_232B1F7F0(v13, v192, v188);
  sub_232B1F798(v8, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  sub_232B20A00();
}

uint64_t sub_232B1DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F160(a1, a2);
  if (v4)
  {
    return sub_232B20948(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B1E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F160(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_232B20948(v3);
}

uint64_t sub_232B1E08C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_232B05178(a1);
    if (v3)
    {
      sub_232B20888(v2);
    }
  }

  return sub_232B2080C();
}

uint64_t sub_232B1E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_232B1F160(a1, a2);
    if (v4)
    {
      sub_232B20888(v3);
    }
  }

  return sub_232B2080C();
}

double sub_232B1E114(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_232B20994();
  }

  sub_232B1F1D8(a1);
  if ((v3 & 1) == 0)
  {
    return sub_232B20994();
  }

  v4 = sub_232B20904(v2);

  sub_232B204B4(v4, v5);
  return result;
}

double sub_232B1E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return sub_232B20994();
  }

  v3 = sub_232B1F160(a1, a2);
  if ((v4 & 1) == 0)
  {
    return sub_232B20994();
  }

  v5 = sub_232B20904(v3);

  sub_232B204B4(v5, v6);
  return result;
}

void sub_232B1E1C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_232B1F160(a1, a2), (v7 & 1) != 0))
  {
    sub_232B2036C(*(a3 + 56) + 40 * v6, a4, &qword_27DDC6778, &unk_232CF7FB0);
  }

  else
  {
    sub_232B20994();
    *(a4 + 32) = -1;
  }
}

uint64_t sub_232B1E22C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_232B1F1D8(a1);
    if (v3)
    {
      sub_232B20888(v2);
    }
  }

  return sub_232B2080C();
}

uint64_t sub_232B1E270(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_232B05178(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_232B20948(v2);
}

void *sub_232B1E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_232B1F160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_232B1E304(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F268(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_232B1E34C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_232B20994();
  }

  v2 = sub_232B1F268(a1);
  if ((v3 & 1) == 0)
  {
    return sub_232B20994();
  }

  v4 = sub_232B20904(v2);

  sub_232B204B4(v4, v5);
  return result;
}

uint64_t sub_232B1E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232CEA720();
  MEMORY[0x238391C30](v5);

  v6 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  v7 = *(a3 + v6);
  if (*(v7 + 16) && (, v8 = sub_232B1F160(0x746E635F65636166, 0xE90000000000005FLL), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {

    v11 = 0;
  }

  v12 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  v13 = *(a2 + v12);
  swift_beginAccess();
  v14 = *(v13 + 176);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v14 = v62;
  }

  v15 = *(v14 + 16);
  if (v15 >= *(v14 + 24) >> 1)
  {
    sub_232B35ABC();
    v14 = v63;
  }

  *(v14 + 16) = v15 + 1;
  *(v14 + 8 * v15 + 32) = v11;
  sub_232B0D2A4();
  v16 = sub_232CEA720();
  MEMORY[0x238391C30](v16);

  v17 = *(a3 + v6);
  if (*(v17 + 16) && (, v18 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0), v20 = v19, , (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {

    v21 = 0;
  }

  v22 = *(a2 + v12);
  swift_beginAccess();
  v23 = *(v22 + 184);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v23 = v64;
  }

  v24 = *(v23 + 16);
  if (v24 >= *(v23 + 24) >> 1)
  {
    sub_232B35ABC();
    v23 = v65;
  }

  *(v23 + 16) = v24 + 1;
  *(v23 + 8 * v24 + 32) = v21;
  sub_232B0D30C();
  v25 = sub_232CEA720();
  MEMORY[0x238391C30](v25);

  v26 = *(a3 + v6);
  if (*(v26 + 16) && (, v27 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0), v29 = v28, , (v29 & 1) != 0))
  {
    v30 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {

    v30 = 0;
  }

  v31 = *(a2 + v12);
  swift_beginAccess();
  v32 = *(v31 + 192);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v32 = v66;
  }

  v33 = *(v32 + 16);
  if (v33 >= *(v32 + 24) >> 1)
  {
    sub_232B35ABC();
    v32 = v67;
  }

  *(v32 + 16) = v33 + 1;
  *(v32 + 8 * v33 + 32) = v30;
  sub_232B0D374();
  v34 = sub_232CEA720();
  MEMORY[0x238391C30](v34);

  v35 = *(a3 + v6);
  if (*(v35 + 16) && (, v36 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00), v38 = v37, , (v38 & 1) != 0))
  {
    v39 = *(*(v35 + 56) + 8 * v36);
  }

  else
  {

    v39 = 0;
  }

  v40 = *(a2 + v12);
  swift_beginAccess();
  v41 = *(v40 + 200);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v41 = v68;
  }

  v42 = *(v41 + 16);
  if (v42 >= *(v41 + 24) >> 1)
  {
    sub_232B35ABC();
    v41 = v69;
  }

  *(v41 + 16) = v42 + 1;
  *(v41 + 8 * v42 + 32) = v39;
  sub_232B0D3DC();
  v43 = sub_232CEA720();
  MEMORY[0x238391C30](v43);

  v44 = *(a3 + v6);
  if (*(v44 + 16) && (, v45 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20), v47 = v46, , (v47 & 1) != 0))
  {
    v48 = *(*(v44 + 56) + 8 * v45);
  }

  else
  {

    v48 = 0;
  }

  v49 = *(a2 + v12);
  swift_beginAccess();
  v50 = *(v49 + 312);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v50 = v70;
  }

  v51 = *(v50 + 16);
  if (v51 >= *(v50 + 24) >> 1)
  {
    sub_232B35ABC();
    v50 = v71;
  }

  *(v50 + 16) = v51 + 1;
  *(v50 + 8 * v51 + 32) = v48;
  sub_232B0D4AC();
  v52 = sub_232CEA720();
  MEMORY[0x238391C30](v52);

  v53 = *(a3 + v6);
  if (*(v53 + 16) && (, v54 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40), v56 = v55, , (v56 & 1) != 0))
  {
    v57 = *(*(v53 + 56) + 8 * v54);
  }

  else
  {

    v57 = 0;
  }

  v58 = *(a2 + v12);
  swift_beginAccess();
  v59 = *(v58 + 208);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232B35ABC();
    v59 = v72;
  }

  v60 = *(v59 + 16);
  if (v60 >= *(v59 + 24) >> 1)
  {
    sub_232B35ABC();
    v59 = v73;
  }

  *(v59 + 16) = v60 + 1;
  *(v59 + 8 * v60 + 32) = v57;
  return sub_232B0D444();
}

char *sub_232B1EBC8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232B1D2E4(v4 - v3);
  v6 = sub_232B14100(v5);
  result = sub_232B124A8(&qword_27DDC66F0, &qword_232CF5D40);
  a1[3] = result;
  *a1 = v6;
  return result;
}

void sub_232B1ECC0(void *a1)
{
  type metadata accessor for AutonamingModelFeatures();
  sub_232B206AC();
  sub_232B1F9BC(v2, v3, v4, &protocol conformance descriptor for AutonamingModelFeatures);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t AutonamingModelFeatures.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B206AC();
  sub_232B1F9BC(v2, v3, v4, &protocol conformance descriptor for AutonamingModelFeatures);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B20A18(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B20A18(v6);
  return v5;
}

id AutonamingModelFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutonamingModelFeatures.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = -1;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  *&v0[v1] = sub_232CE9C60();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
  *&v0[v2] = sub_232CE9C60();
  v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AutonamingModelFeatures();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AutonamingModelFeatures.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AutonamingModelFeatures();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_232B1F138@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B16C28(a1);
  *a2 = result;
  return result;
}

unint64_t sub_232B1F160(uint64_t a1, uint64_t a2)
{
  sub_232CEA820();
  sub_232CE9E40();
  v4 = sub_232CEA850();

  return sub_232B1F2AC(a1, a2, v4);
}

void sub_232B1F1D8(uint64_t a1)
{
  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v2 = sub_232CEA850();

  sub_232B1F3C0(a1, v2);
}

unint64_t sub_232B1F268(uint64_t a1)
{
  v2 = sub_232CEA470();

  return sub_232B1F4B0(a1, v2);
}

unint64_t sub_232B1F2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_232CEA750() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232B1F360(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_232B1F3C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_232CE9D50();
    v7 = v6;
    if (v5 == sub_232CE9D50() && v7 == v8)
    {

      break;
    }

    v10 = sub_232CEA750();

    if (v10)
    {
      break;
    }
  }

  sub_232B20A00();
}

unint64_t sub_232B1F4B0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_232B1FA04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x238392210](v8, a1);
    sub_232B1FA60(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_232B1F574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B20858(a1, a2, a3);
  sub_232B205B8();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_232B124A8(&qword_27DDC67B0, &unk_232CF5E10);
  if ((sub_232B208A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_232B1F160(v5, v3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v6;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = v4;
    sub_232B20A58();
  }

  else
  {
    sub_232B64770(v10, v5, v3, v4, v14);
    sub_232B20A58();
  }
}

uint64_t sub_232B1F66C(uint64_t a1, uint64_t a2, double a3)
{
  sub_232B1F160(a1, a2);
  sub_232B205B8();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  result = sub_232B20A38();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_232B1F160(a1, a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a3;
  }

  else
  {
    sub_232B6479C(v10, a1, a2, v14);
  }

  return result;
}

uint64_t sub_232B1F798(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B1F7F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

unint64_t sub_232B1F870()
{
  result = qword_27DDC6E90;
  if (!qword_27DDC6E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6E90);
  }

  return result;
}

uint64_t sub_232B1F9BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B1FAF0()
{
  sub_232B209A0();
  v6 = sub_232B20738(v3, v4, v5);
  sub_232B1F160(v6, v7);
  sub_232B205B8();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
  sub_232B2074C();
  if (sub_232CEA5C0())
  {
    sub_232B1F160(v1, v0);
    sub_232B20914();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  if (v12)
  {
    sub_232B209C8((*(*v2 + 56) + 16 * v11));
    sub_232B20A00();
  }

  else
  {
    sub_232B2096C();
    sub_232B647E0(v17, v18, v19, v20, v21, v22);
    sub_232B20A00();
  }
}

uint64_t sub_232B1FBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B20858(a1, a2, a3);
  sub_232B205B8();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_232B124A8(&qword_27DDC6770, &unk_232CF5DD0);
  if (sub_232B208A8())
  {
    sub_232B1F160(v5, v3);
    sub_232B20914();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    sub_232B20A58();

    return sub_232B202FC(v14, v15);
  }

  else
  {
    sub_232B6482C(v10, v5, v3, v4, *v6);
    sub_232B20A58();
  }
}

id sub_232B1FD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B209E8();
  v7 = v6;
  v29 = v9;
  v30 = v8;
  v11 = v10;
  v13 = v12;
  v16 = sub_232B20738(v14, v15, v8);
  sub_232B1F1D8(v16);
  sub_232B205B8();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_232B124A8(v13, v11);
  sub_232B2074C();
  if ((sub_232CEA5C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_232B1F1D8(v30);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_13:
    v29(0);
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v20 = v22;
LABEL_5:
  v24 = *v3;
  if (v21)
  {
    sub_232B209C8((*(v24 + 56) + 16 * v20));
    sub_232B208EC();
  }

  else
  {
    v7(v20, v30, v5, v4, v24);
    sub_232B208EC();

    return v27;
  }
}

void sub_232B1FE44(uint64_t a1, uint64_t a2)
{
  sub_232B05178(a2);
  sub_232B205B8();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
  if ((sub_232B20A38() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_232B05178(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
    sub_232B20A58();
  }

  else
  {
    sub_232B20A58();

    sub_232B648B0(v13, v14, v15, v16);
  }
}

uint64_t sub_232B1FF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B209E8();
  sub_232B209A0();
  v7 = v6;
  v11 = sub_232B20738(v8, v9, v10);
  sub_232B1F160(v11, v12);
  sub_232B205B8();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_232B124A8(&qword_27DDC6768, &qword_232CFE250);
  sub_232B2074C();
  if ((sub_232CEA5C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_232B1F160(v4, v3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    sub_232B209C8((*(*v5 + 56) + 24 * v16));
    *(v20 + 16) = v7;
    sub_232B208EC();
  }

  else
  {
    sub_232B2096C();
    sub_232B648F0(v23, v24, v25, v26, v27, v28);
    sub_232B208EC();
  }
}

_OWORD *sub_232B20088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B1F160(a2, a3);
  sub_232B205B8();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_232B124A8(&qword_27DDC6790, &unk_232CF5DF0);
  if ((sub_232B208A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_232B1F160(a2, a3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    sub_232B2040C((*(v15 + 56) + 32 * v10));
    sub_232B2080C();
    sub_232B20A58();

    return sub_232B20510(v16, v17);
  }

  else
  {
    sub_232B64990(v10, a2, a3, a1, v15, v12);
    sub_232B20A58();
  }
}

void sub_232B201D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B209E8();
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_232B1F160(v11, v9);
  sub_232B205B8();
  if (v17)
  {
    __break(1u);
LABEL_14:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  sub_232B124A8(v8, v6);
  sub_232B2074C();
  if (sub_232CEA5C0())
  {
    sub_232B1F160(v12, v10);
    sub_232B20914();
    if (!v21)
    {
      goto LABEL_14;
    }

    v18 = v20;
  }

  v22 = *v3;
  if (v19)
  {
    *(*(v22 + 56) + 8 * v18) = v14;
    sub_232B208EC();
  }

  else
  {
    v26(v18, v12, v10, v14, v22);
    sub_232B208EC();
  }
}

uint64_t sub_232B202FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B2036C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B124A8(a3, a4);
  sub_232B13F24();
  v5 = sub_232B2080C();
  v6(v5);
  return a2;
}

void *sub_232B203C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_232B2040C(void *a1)
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

uint64_t sub_232B20458(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

uint64_t sub_232B204B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_232B20510(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_232B20578(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_232B205CC(uint64_t a1)
{
  sub_232B12480(a1, 1, v1);
}

uint64_t sub_232B2060C()
{

  return sub_232B0DEDC(v0);
}

uint64_t sub_232B20634()
{

  return sub_232B12480(v0, 1, v1);
}

uint64_t sub_232B2066C()
{
}

uint64_t sub_232B206DC(uint64_t a1)
{
}

uint64_t sub_232B207BC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232B207D4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t sub_232B20858(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232B1F160(a2, a3);
}

uint64_t sub_232B20888(uint64_t a1)
{
}

uint64_t sub_232B208A8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B208C8()
{
}

uint64_t sub_232B20924()
{
}

double sub_232B20994()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_232B209C8@<X0>(void *a1@<X8>)
{
  result = a1[1];
  *a1 = v2;
  a1[1] = v1;
  return result;
}

uint64_t sub_232B20A18(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B20A38()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B20A6C(uint64_t a1)
{

  return sub_232B1DFEC(a1, v2 | 0x8000000000000000, v1);
}

uint64_t sub_232B20A84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(uint64_t a1)
{
  result = qword_27DDC67D0;
  if (!qword_27DDC67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B20B54(uint64_t a1)
{
  sub_232B20C50(319, &qword_27DDC67E0, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232B20C50(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B20C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_232B20CB4@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232CE9330();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);

  return sub_232B12504(a1 + v3, 1, 1, v4);
}

uint64_t sub_232B20D24()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E78);
  sub_232B135C4(v0, qword_27DDD4E78);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "categories";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B20EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_232B13EE0();
      sub_232B21000(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = sub_232B13EE0();
      sub_232B20F60(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_232B20F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  sub_232B21CAC(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF6168);
  return sub_232CE94B0();
}

uint64_t sub_232B21000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B21CAC(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  return sub_232CE94C0();
}

uint64_t sub_232B210B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0), sub_232B21CAC(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF6168), result = sub_232CE95D0(), !v4))
  {
    result = sub_232B211C0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232B211C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232B21B7C(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v7, v10);
  sub_232B21CAC(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232B21C50(v10);
}

uint64_t sub_232B21360(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_232B3395C(*a1, *a2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0) + 24);
  v17 = *(v11 + 48);
  sub_232B21B7C(a1 + v16, v14);
  sub_232B21B7C(a2 + v16, &v14[v17]);
  sub_232B13FF0(v14);
  if (v21)
  {
    sub_232B13FF0(&v14[v17]);
    if (v21)
    {
      sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v14, v10);
  sub_232B13FF0(&v14[v17]);
  if (v21)
  {
    sub_232B21C50(v10);
LABEL_11:
    v22 = &qword_27DDC6828;
    v23 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v14, v22, v23);
LABEL_24:
    v20 = 0;
    return v20 & 1;
  }

  sub_232B21BEC(&v14[v17], v7);
  v24 = *(v4 + 20);
  v25 = &v10[v24];
  v26 = *&v10[v24 + 8];
  v27 = &v7[v24];
  v28 = *(v27 + 1);
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v28 || (*v25 == *v27 ? (v29 = v26 == v28) : (v29 = 0), !v29 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v7);
    sub_232B21C50(v10);
    v22 = &qword_27DDC67C8;
    v23 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232B21CF4();
  sub_232B21CAC(v30, v31, MEMORY[0x277D216D0]);
  v32 = sub_232CE9CF0();
  sub_232B21C50(v7);
  sub_232B21C50(v10);
  sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  sub_232CE9340();
  sub_232B21CF4();
  sub_232B21CAC(v18, v19, MEMORY[0x277D216D0]);
  v20 = sub_232CE9CF0();
  return v20 & 1;
}

uint64_t sub_232B21664()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232B21CAC(&qword_27DDC6800, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5EF0);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B21780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232B21848(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B21CAC(&qword_27DDC6810, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5F80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B218C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6300 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4E78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2196C(uint64_t a1)
{
  v2 = sub_232B21CAC(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5FB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B219DC(uint64_t a1, uint64_t a2)
{
  sub_232B21CAC(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5FB8);

  return sub_232CE9500();
}

uint64_t sub_232B21B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B21BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B21C50(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B21CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(uint64_t a1)
{
  result = qword_27DDC6830;
  if (!qword_27DDC6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B21D80(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_2814DFA10, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_27DDC6840, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B21E3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232B21E88@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = a2 + *(result + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_232B21ED4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E90);
  sub_232B135C4(v0, qword_27DDD4E90);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "categoryIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "categoryConfidence";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B2209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_232B13EE0();
      sub_232B22174(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = sub_232B13EE0();
      sub_232B22110(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_232B221D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232B22230(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232B222A8(v9, v10, v11, v12);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B22230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B222A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B22320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B2290C(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B22430()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  sub_232B2290C(&qword_27DDC6850, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF60A0);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B224D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232CE9340();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_232B22540(uint64_t a1)
{
  v3 = sub_232CE9340();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_232B225D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2290C(&qword_27DDC6860, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF6130);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B22654@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6308 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4E90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B226FC(uint64_t a1)
{
  v2 = sub_232B2290C(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF6168);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2276C(uint64_t a1, uint64_t a2)
{
  sub_232B2290C(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, &unk_232CF6168);

  return sub_232CE9500();
}

uint64_t sub_232B2290C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DUClient.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_identifier);

  return v1;
}

id DUClient.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (qword_2814E13D0 != -1)
  {
    swift_once();
  }

  v5 = qword_2814E3EF0;
  v6 = qword_2814E1398;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814E3EE8;
  type metadata accessor for DUProcessingScheduler();
  sub_232B26D50();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler] = sub_232BEF884(v5, v7);
  if (qword_2814E0D80 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_topLevelSpecifications] = qword_2814E3EC8;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DUClient();

  return objc_msgSendSuper2(&v9, sel_init);
}

id DURequest.init(client:contentType:strategies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client] = a1;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_contentType] = a2;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DURequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_232B22E24()
{
  sub_232B26C44();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_232CE9A30();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B22EEC, 0, 0);
}

uint64_t sub_232B22EEC()
{
  v2 = v0[27];
  v0[32] = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  [*(v2 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_contentType) copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  v0[33] = type metadata accessor for DURequestContentType();
  if (!swift_dynamicCast())
  {
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1A0();
    v18 = sub_232B26D0C(v17);
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[28];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_232B02000, v16, v1, "Failed to populate content type", v22, 2u);
      sub_232B26D28();
    }

    (*(v20 + 8))(v19, v21);
LABEL_25:

    sub_232B26D5C();
    sub_232B26CB4();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[27];
  v4 = v0[24];
  v0[34] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies);
  if (!v5 || (result = sub_232B25E10(*(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies)), v3 = v0[27], !result))
  {
    v23 = v0[26];
    v7 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client);
    v24 = *(v7 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler);
    type metadata accessor for DUProcessingRequest();
    swift_allocObject();
    v25 = v23;

    v15 = sub_232BEEA28(v23, v24);
    goto LABEL_12;
  }

  v7 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client);
  v8 = *(v7 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler);
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v5 + 32);

    for (i = v9; ; i = MEMORY[0x2383922C0](0, v5))
    {
      v11 = i;
      v12 = v0[26];
      v13 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
      sub_232B13F74(&i[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess], (v0 + 21));
      LOBYTE(v13) = v11[v13];

      type metadata accessor for DUProcessingRequest();
      swift_allocObject();
      v14 = v12;
      v15 = sub_232BEEAA8(v12, v8, v13);
LABEL_12:
      v0[35] = v15;
      v26 = *(v7 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_topLevelSpecifications);
      v0[36] = v26;
      v27 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      v0[37] = *(v26 + 16);
      v0[38] = v27;

      sub_232B13F74(v4 + v27, (v0 + 15));
      v5 = 0;
      for (j = 32; ; j += 40)
      {
        v0[39] = v5;
        v8 = v0[36];
        if (v5 == v0[37])
        {
          v46 = v0[34];

          goto LABEL_25;
        }

        if (v5 >= *(v8 + 16))
        {
          break;
        }

        v29 = v0[38];
        v30 = v0[34];
        sub_232B25E34(v8 + j, (v0 + 2));
        if (!*(v30 + v29))
        {
          v47 = v0[34];

          sub_232B2040C(v0 + 2);
          goto LABEL_25;
        }

        v31 = v0[33];
        v7 = v0[6];
        sub_232B203C8(v0 + 2, v0[5]);
        v32 = sub_232B26CD0();
        v34 = v33(v32);
        v4 = [v34 copy];

        sub_232CEA420();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v37 = v0[34];
          v38 = v0[25];
          v0[40] = v38;
          DURequestContentType.formIntersection(_:)(v37, v35, v36);
          v39 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
          sub_232B13F74(&v38[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue], (v0 + 18));
          if (*&v38[v39])
          {
            sub_232B203C8(v0 + 2, v0[5]);
            sub_232B26C88();
            v50 = swift_task_alloc();
            v0[41] = v50;
            *v50 = v0;
            sub_232B26B4C(v50);
            sub_232B26CB4();

            __asm { BRAA            X4, X16 }
          }
        }

        else
        {
          sub_232CE9A20();
          v40 = sub_232CE9A00();
          v41 = sub_232CEA1C0();
          if (sub_232B26D0C(v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_232B02000, v40, v31, "Specification did not have an associated request type", v42, 2u);
            sub_232B26D28();
          }

          v43 = v0[31];
          v4 = v0[28];
          v44 = v0[29];

          v45 = *(v44 + 8);
          v7 = v44 + 8;
          v45(v43, v4);
        }

        sub_232B2040C(v0 + 2);
        ++v5;
      }

      __break(1u);
LABEL_32:
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B23424()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_232B23510, 0, 0);
}

uint64_t sub_232B23510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[40];
  DURequestContentType.formSymmetricDifference(_:)(v4, a2, a3);

  result = sub_232B2040C(v3 + 2);
  v6 = v3[39];
  v7 = v6 + 1;
  for (i = 40 * v6 + 72; ; i += 40)
  {
    v3[39] = v7;
    v9 = v3[36];
    if (v7 == v3[37])
    {
      v27 = v3[34];

      goto LABEL_14;
    }

    if (v7 >= *(v9 + 16))
    {
      break;
    }

    v10 = v3[38];
    v11 = v3[34];
    sub_232B25E34(v9 + i, (v3 + 2));
    if (!*(v11 + v10))
    {
      v28 = v3[34];

      sub_232B2040C(v3 + 2);
LABEL_14:

      sub_232B26D5C();
      sub_232B26CB4();

      __asm { BRAA            X2, X16 }
    }

    v12 = v3[33];
    sub_232B203C8(v3 + 2, v3[5]);
    v13 = sub_232B26CD0();
    v15 = v14(v13);
    [v15 copy];

    sub_232CEA420();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v18 = v3[34];
      v19 = v3[25];
      v3[40] = v19;
      DURequestContentType.formIntersection(_:)(v18, v16, v17);
      v20 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74(&v19[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue], (v3 + 18));
      if (*&v19[v20])
      {
        sub_232B203C8(v3 + 2, v3[5]);
        sub_232B26C88();
        v31 = swift_task_alloc();
        v3[41] = v31;
        *v31 = v3;
        sub_232B26B4C(v31);
        sub_232B26CB4();

        __asm { BRAA            X4, X16 }
      }
    }

    else
    {
      sub_232CE9A20();
      v21 = sub_232CE9A00();
      v22 = sub_232CEA1C0();
      if (sub_232B26D0C(v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_232B02000, v21, v12, "Specification did not have an associated request type", v23, 2u);
        sub_232B26D28();
      }

      v24 = v3[31];
      v25 = v3[28];
      v26 = v3[29];

      (*(v26 + 8))(v24, v25);
    }

    result = sub_232B2040C(v3 + 2);
    ++v7;
  }

  __break(1u);
  return result;
}

BOOL DURequestContentType.isEmpty.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B26BFC(a1);
  return *(v1 + v2) == 0;
}

uint64_t DURequestContentType.formIntersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_232B26B88(a1, a2, a3);
  result = sub_232B26BB4(v8, v9, v10, v11, v12, v13, v14, v15, v17);
  *(v4 + v6) = *(v3 + v5) & v7;
  return result;
}

uint64_t DURequestContentType.formSymmetricDifference(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_232B26B88(a1, a2, a3);
  result = sub_232B26BB4(v8, v9, v10, v11, v12, v13, v14, v15, v17);
  *(v4 + v6) = *(v3 + v5) ^ v7;
  return result;
}

uint64_t sub_232B23978(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_232B23A38;

  return sub_232B22E24();
}

uint64_t sub_232B23A38(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  sub_232B26B3C();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    sub_232CE8B20();

    (v10)[2](v10, 0, a1);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_232B23BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_232CEA090();
  sub_232B12504(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = a1;

  v13 = v3;
  sub_232B23FB4(0, 0, v9, &unk_232CF6208, v11);
}

uint64_t sub_232B23CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_232B23D88;

  return sub_232B22E24();
}

uint64_t sub_232B23D88()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {
    v8 = sub_232B23F0C;
  }

  else
  {
    *(v5 + 48) = v3;
    v8 = sub_232B23EA0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_232B23EA0()
{
  sub_232B26C44();
  v1 = *(v0 + 48);
  (*(v0 + 16))(v1, 0);

  sub_232B26CF4();

  return v2();
}

uint64_t sub_232B23F0C()
{
  sub_232B26C7C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  v4 = v1;
  v2(v3, v1);

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232B23FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_232B26744(a3, v24 - v10, &qword_27DDC68A8, &qword_232CFA960);
  v12 = sub_232CEA090();
  v13 = sub_232B12480(v11, 1, v12);

  if (v13 == 1)
  {
    sub_232B267AC(v11, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_232CEA050();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_232CE9DE0() + 32;
      sub_232B26D50();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);
  sub_232B26D50();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_232B24330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_232CE8B20();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_232B24488(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_232B24528(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_232B24600(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_232CE9D20();
  sub_232B26CE8();

  return a1;
}

uint64_t sub_232B2464C()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier);
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_232B2470C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B2476C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B2470C(v1, v2);
}

uint64_t sub_232B24820(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232B2487C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  result = sub_232B26C50(a1);
  *(v1 + v3) = v2;
  return result;
}

id DURequestStrategy.__allocating_init(contentType:preferredModelIdentifier:preprocess:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return DURequestStrategy.init(contentType:preferredModelIdentifier:preprocess:)(a1, a2, a3, v5);
}

id DURequestStrategy.init(contentType:preferredModelIdentifier:preprocess:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a1;
  v8 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess] = 0;
  *&v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType] = a1;
  v9 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier];
  *v9 = a2;
  v9[1] = a3;
  sub_232B25F64();
  v10 = type metadata accessor for DURequestContentType();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2048;
  v17.receiver = v11;
  v17.super_class = v10;
  v12 = v7;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  LOBYTE(v7) = sub_232CEA310();

  if (v7)
  {
    swift_beginAccess();
    v5[v8] = a4 & 1;
  }

  v16.receiver = v5;
  v16.super_class = type metadata accessor for DURequestStrategy();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id DURequestStrategy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_232B24B78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DURequestContentType.__allocating_init(rawValue:)()
{
  v2 = objc_allocWithZone(sub_232B26D00());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232B24F84()
{
  v2 = objc_allocWithZone(sub_232B26D00());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DURequestContentType.rawValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  result = sub_232B26C50(a1);
  *(v1 + v3) = a1;
  return result;
}

id DURequestContentType.init(rawValue:)()
{
  sub_232B26D00();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DURequestContentType.__allocating_init(abilitiesToUnion:)()
{
  v0 = objc_allocWithZone(sub_232B26D00());
  swift_getObjectType();
  v1 = sub_232B26CE8();
  sub_232B251DC(v1);
  v3 = v2;
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t DURequestContentType.init(abilitiesToUnion:)(uint64_t a1)
{
  sub_232B26CE8();
  swift_getObjectType();
  v2 = sub_232B26D70();
  sub_232B251DC(v2);
  sub_232B26CE8();
  swift_deallocPartialClassInstance();
  return v1;
}

void sub_232B251DC(unint64_t a1)
{
  v7[1] = [objc_allocWithZone(v1) init];
  v3 = sub_232B25E10(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_232BECFE4(v7, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t DURequestContentType.hash.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

BOOL DURequestContentType.isEqual(_:)(uint64_t a1)
{
  sub_232B26D70();
  swift_getObjectType();
  sub_232B26744(v2, v10, &qword_27DDC68C8, &qword_232CF6210);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue, v10);
      v5 = *(v1 + v4);
      v6 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74(&v9[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue], &v9);
      v7 = *&v3[v6];

      return v5 == v7;
    }
  }

  else
  {
    sub_232B267AC(v10, &qword_27DDC68C8, &qword_232CF6210);
  }

  return 0;
}

void *DURequestContentType.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue, v9);
  v5 = *(v1 + v4);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t DURequestContentType.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_232B26B88(a1, a2, a3);
  result = sub_232B26BB4(v8, v9, v10, v11, v12, v13, v14, v15, v17);
  *(v4 + v6) = *(v3 + v5) | v7;
  return result;
}

id DURequestContentType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B256A0@<X0>(void *a1@<X8>)
{
  result = DURequestContentType.__allocating_init(rawValue:)();
  *a1 = result;
  return result;
}

id sub_232B256CC@<X0>(void *a1@<X8>)
{
  result = DURequestStrategy.__allocating_init()();
  *a1 = result;
  return result;
}

void sub_232B256F4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232C5A584(*a1);

  *a2 = v6;
}

void sub_232B2573C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_232BECF48(*a1);

  *a2 = v5;
}

void sub_232B2577C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232B257C4(*a1);

  *a2 = v6;
}

id sub_232B257C4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v5;
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  DURequestContentType.formSymmetricDifference(_:)(a1, v8, v9);
  return v7;
}

BOOL sub_232B2585C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_232BECFE4(a1, *a2);

  return v3;
}

char *sub_232B25890@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_232B258BC(*a1);
  *a2 = result;
  return result;
}

char *sub_232B258BC(uint64_t a1)
{
  v2 = sub_232BECF48(a1);
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  if (*&v2[v3])
  {
    v4 = sub_232B257C4(a1);
    DURequestContentType.formIntersection(_:)(v4, v5, v6);
  }

  else
  {

    return 0;
  }

  return v2;
}

void sub_232B25940(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = sub_232B25980(*a1);

  *a2 = v4;
}

char *sub_232B25980(uint64_t a1)
{
  v2 = sub_232BECF48(a1);
  DURequestContentType.formUnion(_:)(a1, v3, v4);
  v5 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  if (!*&v2[v5])
  {

    return 0;
  }

  return v2;
}

void sub_232B259F4(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  DURequestContentType.formUnion(_:)(*a1, a2, a3);
}

void sub_232B25A64(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  DURequestContentType.formSymmetricDifference(_:)(*a1, a2, a3);
}

void sub_232B25AAC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_232B25AEC(*a1);

  *a2 = v5;
}

id sub_232B25AEC(uint64_t a1)
{
  v1 = sub_232B257C4(a1);
  v2 = sub_232BECF48(v1);

  return v2;
}

uint64_t sub_232B25B4C(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_232BECF48(a1);
  v3 = sub_232CEA310();

  return v3 & 1;
}

BOOL sub_232B25BD0(uint64_t a1)
{
  v1 = sub_232BECF48(a1);
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3 == 0;
}

uint64_t sub_232B25C28()
{
  sub_232B26D00();
  swift_getObjectType();
  v0 = sub_232B26D70();
  v1 = sub_232BECF48(v0);
  v2 = sub_232CEA310();

  return v2 & 1;
}

void sub_232B25CC0(uint64_t a1)
{
  v3 = sub_232B257C4(a1);
  DURequestContentType.formIntersection(_:)(v3, v1, v2);
}

uint64_t sub_232B25D08@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = DURequestContentType.hash.getter(a2);
  *a1 = result;
  return result;
}

unint64_t sub_232B25DCC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_232B25DEC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232B25E10(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_232CEA610();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_232B25E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_232B25E98(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_232B26CA4(v9);
  *v10 = v11;
  v10[1] = sub_232B26B14;

  return sub_232B23CE8(a1, v3, v4, v5, v6, v8, v7);
}

unint64_t sub_232B25F64()
{
  result = qword_27DDC68C0;
  if (!qword_27DDC68C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC68C0);
  }

  return result;
}

uint64_t sub_232B2609C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DURequestContentType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of DURequest.executeWithResult(document:)()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232B26260;

  return v7(v3);
}

uint64_t sub_232B26260()
{
  sub_232B26C44();
  v2 = v1;
  sub_232B26C70();
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_232B265B4()
{
  sub_232B26C7C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232B26664;

  return sub_232B23978(v2, v3, v4);
}

uint64_t sub_232B26664()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B26744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_232B124A8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_232B267AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_232B124A8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_232B2680C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_232B26904;

  return v6(a1);
}

uint64_t sub_232B26904()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B269E8()
{
  sub_232B26C7C();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v3 = sub_232B26C24(v1);

  return v4(v3);
}

uint64_t sub_232B26A7C()
{
  sub_232B26C7C();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v3 = sub_232B26C24(v1);

  return v4(v3);
}

uint64_t sub_232B26B88(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B26BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t sub_232B26BDC()
{

  return swift_beginAccess();
}

uint64_t sub_232B26BFC(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B26C50(uint64_t a1, ...)
{

  return swift_beginAccess();
}

BOOL sub_232B26D0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232B26D28()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232B26D7C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    sub_232CE9890();
    v1 = sub_232CE9820();
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];

    sub_232B649F4(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_232CEA4F0();

      MEMORY[0x238391C30](v4, v5);
      MEMORY[0x238391C30](34, 0xE100000000000000);

      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_232B649F4(v6 > 1, v7 + 1, 1);
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 16 * v7;
      *(v8 + 32) = 0xD000000000000016;
      *(v8 + 40) = 0x8000000232D03200;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v9 = sub_232CE9CD0();
  v11 = v10;

  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_232CF6460;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_232B27F34();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  return sub_232CE9D80();
}

uint64_t sub_232B26FA8()
{
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000005FLL, 0x8000000232D03130);
  v0 = sub_232CEA720();
  MEMORY[0x238391C30](v0);

  MEMORY[0x238391C30](0xD000000000000069, 0x8000000232D03190);
  v1 = sub_232CEA720();
  MEMORY[0x238391C30](v1);

  MEMORY[0x238391C30](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_232B270B8(uint64_t a1)
{
  v1 = sub_232B26D7C(a1);
  v2 = sub_232B26FA8();
  v4 = v3;
  MEMORY[0x238391C30](539371040, 0xE400000000000000);
  MEMORY[0x238391C30](v2, v4);

  return v1;
}

id sub_232B27148(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  [v2 setMaxCount_];
  v3 = sub_232CE9FD0();
  [v2 setFetchAttributes_];

  v4 = sub_232B270B8(0);
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CC3498]);
  return sub_232C409AC(v4, v6, v2);
}

uint64_t sub_232B27210()
{
  sub_232B26C44();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 201) = v3;
  *(v1 + 200) = v4;
  *(v1 + 32) = v5;
  v6 = sub_232CE9A30();
  *(v1 + 56) = v6;
  sub_232B27FBC(v6);
  *(v1 + 64) = v7;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v8 = sub_232CEA160();
  *(v1 + 88) = v8;
  sub_232B27FBC(v8);
  *(v1 + 96) = v9;
  *(v1 + 104) = sub_232B27FCC();
  sub_232B124A8(&qword_27DDC68F0, &qword_232CF6478);
  *(v1 + 112) = sub_232B27FCC();
  v10 = sub_232CEA180();
  *(v1 + 120) = v10;
  sub_232B27FBC(v10);
  *(v1 + 128) = v11;
  *(v1 + 136) = sub_232B27FCC();
  v12 = sub_232CEA170();
  *(v1 + 144) = v12;
  sub_232B27FBC(v12);
  *(v1 + 152) = v13;
  *(v1 + 160) = sub_232B27FCC();

  return MEMORY[0x2822009F8](sub_232B273F0, 0, 0);
}

uint64_t sub_232B273F0()
{
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    if (*(v0 + 200))
    {
      v1 = 128;
    }

    else
    {
      v1 = *(v0 + 32);
    }

    v2 = sub_232B27148(v1);
    *(v0 + 168) = v2;
    if (v2)
    {
      v4 = *(v0 + 128);
      v3 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = MEMORY[0x277D84F90];
      *(v0 + 16) = MEMORY[0x277D84F90];
      sub_232CEA190();
      sub_232CEA140();
      (*(v4 + 8))(v3, v5);
      *(v0 + 176) = v6;
      sub_232B27BAC();
      v7 = swift_task_alloc();
      *(v0 + 184) = v7;
      *v7 = v0;
      v8 = sub_232B27F88(v7);

      return MEMORY[0x282200308](v8);
    }

    sub_232CE9A20();
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1A0();
    v17 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    if (v17)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "CoreSpotlightUpdateFetcher failed retrieve a query";
      goto LABEL_13;
    }
  }

  else
  {
    sub_232CE9A20();
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1C0();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "DocumentUnderstanding: File ingest disabled, skipping fetch of documents from Spotlight";
LABEL_13:
      _os_log_impl(&dword_232B02000, v9, v10, v16, v15, 2u);
      MEMORY[0x238393870](v15, -1, -1);
    }
  }

  (*(v13 + 8))(v12, v14);

  v18 = *(v0 + 8);
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t sub_232B27684()
{
  sub_232B26C44();
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_232B2797C;
  }

  else
  {
    v2 = sub_232B27794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232B27794()
{
  v1 = v0[14];
  v2 = v0[11];
  if (sub_232B12480(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v4 = v0[22];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v1, v2);
    sub_232CEA150();
    MEMORY[0x238391D50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    sub_232CEA020();
    (*(v8 + 8))(v7, v9);
    v0[22] = v0[2];
    sub_232B27BAC();
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v11 = sub_232B27F88(v10);

    return MEMORY[0x282200308](v11);
  }
}

uint64_t sub_232B2797C()
{
  sub_232B26C44();
  *(v0 + 24) = *(v0 + 192);
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_232B27A18, 0, 0);
}

uint64_t sub_232B27A18()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

id CoreSpotlightiOSFileUpdateFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreSpotlightiOSFileUpdateFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightiOSFileUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CoreSpotlightiOSFileUpdateFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightiOSFileUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232B27BAC()
{
  result = qword_27DDC68F8;
  if (!qword_27DDC68F8)
  {
    sub_232CEA170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC68F8);
  }

  return result;
}

uint64_t dispatch thunk of CoreSpotlightiOSFileUpdateFetcher.fetchUpdatedDocumentsFromSpotlight(maxDocuments:currentAnalysisVersion:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_232B27D90;

  return (v13)(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_232B27D90()
{
  sub_232B26C44();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

unint64_t sub_232B27E88()
{
  result = qword_2814DF978;
  if (!qword_2814DF978)
  {
    sub_232B27EEC(&qword_27DDC6908, &unk_232CF64D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DF978);
  }

  return result;
}

uint64_t sub_232B27EEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_232B27F34()
{
  result = qword_27DDC6918;
  if (!qword_27DDC6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6918);
  }

  return result;
}

uint64_t sub_232B27FCC()
{

  return swift_task_alloc();
}

uint64_t sub_232B27FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_232CE9A30();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B280B4, 0, 0);
}

uint64_t sub_232B280B4()
{
  sub_232CE9A20();
  v1 = sub_232CE9A00();
  v2 = sub_232CEA1A0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_232B28888(&dword_232B02000, v4, v5, "CoreSpotlightOutputSink: Beginning writeTopicsAndClassesToSpotlight");
    MEMORY[0x238393870](v3, -1, -1);
  }

  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v13;
  type metadata accessor for SpotlightOutputSinkCommonUtilities();
  sub_232C5C440(v12, v11, v10, v9, v9);
  sub_232CE9A20();
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    sub_232B28888(&dword_232B02000, v18, v19, "CoreSpotlightOutputSink: Updated local CSSearchableItem, indexing to Spotlight");
    MEMORY[0x238393870](v17, -1, -1);
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = *(v0 + 144);

  v14(v20, v21);
  v23 = [v22 protection];
  if (v23)
  {
    v24 = v23;
    v25 = sub_232CE9D50();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_232C6EC18(*(v0 + 144));
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = *(v0 + 144);
    v33 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v34 = sub_232B28768(0xD000000000000017, 0x8000000232D03260, v25, v27, v30, v31);
    *(v0 + 208) = v34;
    sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_232CF64E0;
    *(v35 + 32) = v32;
    sub_232B2882C();
    v36 = v32;
    v37 = sub_232CE9FD0();
    *(v0 + 216) = v37;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_232B28420;
    v38 = swift_continuation_init();
    *(v0 + 136) = sub_232B124A8(&qword_27DDC6930, &qword_232CF6528);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_232B28648;
    *(v0 + 104) = &unk_284810B18;
    *(v0 + 112) = v38;
    [v34 indexSearchableItems:v37 completionHandler:v0 + 80];
    v28 = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v28);
}

uint64_t sub_232B28420()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_232B285B4;
  }

  else
  {
    v2 = sub_232B28530;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232B28530()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232B285B4()
{
  v1 = v0[27];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_232B28648(uint64_t a1, void *a2)
{
  v3 = sub_232B203C8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_232BB7EF8(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

id sub_232B286B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightOutputSink();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_232B28710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightOutputSink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B28768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_232CE9D20();

  if (a4)
  {
    v9 = sub_232CE9D20();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_232CE9D20();

  v11 = [v6 initWithName:v8 protectionClass:v9 bundleIdentifier:v10];

  return v11;
}

unint64_t sub_232B2882C()
{
  result = qword_27DDC6928;
  if (!qword_27DDC6928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6928);
  }

  return result;
}

void sub_232B28888(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_232B288A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 49) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_232B288D4, 0, 0);
}

uint64_t sub_232B288D4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_232B28990;

  return sub_232B27210();
}

uint64_t sub_232B28990(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id CoreSpotlightUpdateFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreSpotlightUpdateFetcher.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26CoreSpotlightUpdateFetcher_iOSUpdateFetcher;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for CoreSpotlightiOSFileUpdateFetcher()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CoreSpotlightUpdateFetcher();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CoreSpotlightUpdateFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CoreSpotlightUpdateFetcher.fetchUpdatedDocumentsFromSpotlight(maxDocuments:currentAnalysisVersion:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_232B28D1C;

  return (v13)(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_232B28D1C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(uint64_t a1)
{
  result = qword_27DDC6940;
  if (!qword_27DDC6940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B28E8C(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B28F10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B28F10()
{
  if (!qword_2814DFA10)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DFA10);
    }
  }
}

uint64_t sub_232B28F60@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_232B28F98()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EA8);
  sub_232B135C4(v0, qword_27DDD4EA8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_232CF6460;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "debugString";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_232CE9600();
}

uint64_t sub_232B29104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_232B2916C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_232B291D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B29228(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B29228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B292A0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_232CE9340();
    sub_232B29784(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B29378()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B29784(&qword_27DDC6958, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF65D8);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B29450(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B29784(&qword_27DDC6968, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF6668);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B294CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6310 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B29574(uint64_t a1)
{
  v2 = sub_232B29784(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B295E4(uint64_t a1, uint64_t a2)
{
  sub_232B29784(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);

  return sub_232CE9500();
}

uint64_t sub_232B29784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B297CC@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  if (qword_2814E2300 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_2814E2308;
}

uint64_t sub_232B29848()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EC0);
  sub_232B135C4(v0, qword_27DDD4EC0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_232CF6730;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "headline";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subHeadline";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "version";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "creator";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "abstract";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "comment";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "inLanguage";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "keywords";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "identifier";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "url";
  *(v27 + 1) = 3;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "thumbnailUrl";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "significantLink";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "dateCreated";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "dateModified";
  *(v35 + 1) = 12;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "documentUIElements";
  *(v37 + 1) = 18;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "documentHTMLData";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "documentMessageData";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  return sub_232CE9600();
}

void *sub_232B29DCC()
{
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
  swift_allocObject();
  result = sub_232B29E0C();
  qword_2814E2308 = result;
  return result;
}

void *sub_232B29E0C()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  v0[18] = MEMORY[0x277D84F90];
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  v0[21] = 0;
  v0[22] = 0xE000000000000000;
  v0[23] = 0;
  v0[24] = 0xE000000000000000;
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = v1;
  v2 = OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata;
  v3 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B12504(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData;
  v5 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232B12504(v0 + v4, 1, 1, v5);
  return v0;
}

void *sub_232B29EB8(void *a1)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232B2D108();
  v5 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[6] = 0;
  v1[5] = 0xE000000000000000;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[12] = 0;
  v1[11] = 0xE000000000000000;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  v1[16] = 0;
  v1[17] = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  v1[18] = MEMORY[0x277D84F90];
  v1[19] = 0;
  v1[20] = 0xE000000000000000;
  v1[21] = 0;
  v1[22] = 0xE000000000000000;
  v1[23] = 0;
  v1[24] = 0xE000000000000000;
  v1[25] = 0;
  v1[28] = 0;
  v1[27] = 0;
  v1[26] = 0xE000000000000000;
  v1[29] = v7;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B2D138(v8);
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232B2D138(v9);
  v10 = sub_232B13F74((a1 + 2), v80);
  v12 = a1[2];
  v11 = a1[3];
  sub_232B2D0EC(v10, v79);
  v1[2] = v12;
  v1[3] = v11;
  sub_232B13F74((a1 + 4), v78);
  v14 = a1[4];
  v13 = a1[5];
  sub_232B13F5C((v1 + 4), v77);
  v1[4] = v14;
  v1[5] = v13;

  sub_232B13F74((a1 + 6), v76);
  v16 = a1[6];
  v15 = a1[7];
  sub_232B13F5C((v1 + 6), v75);
  v1[6] = v16;
  v1[7] = v15;

  sub_232B13F74((a1 + 8), &v74);
  v18 = a1[8];
  v17 = a1[9];
  sub_232B13F5C((v1 + 8), &v73);
  v1[8] = v18;
  v1[9] = v17;

  sub_232B13F74((a1 + 10), &v72);
  v20 = a1[10];
  v19 = a1[11];
  sub_232B13F5C((v1 + 10), &v71);
  v1[10] = v20;
  v1[11] = v19;

  v21 = sub_232B13F74((a1 + 12), &v70);
  v23 = a1[12];
  v22 = a1[13];
  sub_232B2D0EC(v21, &v69);
  v1[12] = v23;
  v1[13] = v22;

  v24 = sub_232B13F74((a1 + 14), &v68);
  v26 = a1[14];
  v25 = a1[15];
  sub_232B2D0EC(v24, &v67);
  v1[14] = v26;
  v1[15] = v25;

  v27 = sub_232B13F74((a1 + 16), &v66);
  v29 = a1[16];
  v28 = a1[17];
  sub_232B2D0EC(v27, &v65);
  v1[16] = v29;
  v1[17] = v28;

  sub_232B13F74((a1 + 18), &v64);
  v30 = a1[18];
  sub_232B13F5C((v1 + 18), &v63);
  v1[18] = v30;

  v31 = sub_232B13F74((a1 + 19), &v62);
  v33 = a1[19];
  v32 = a1[20];
  sub_232B2D0EC(v31, &v61);
  v1[19] = v33;
  v1[20] = v32;

  v34 = sub_232B13F74((a1 + 21), &v60);
  v36 = a1[21];
  v35 = a1[22];
  sub_232B2D0EC(v34, &v59);
  v1[21] = v36;
  v1[22] = v35;

  v37 = sub_232B13F74((a1 + 23), &v58);
  v39 = a1[23];
  v38 = a1[24];
  sub_232B2D0EC(v37, &v57);
  v1[23] = v39;
  v1[24] = v38;

  v40 = sub_232B13F74((a1 + 25), &v56);
  v42 = a1[25];
  v41 = a1[26];
  sub_232B2D0EC(v40, &v55);
  v1[25] = v42;
  v1[26] = v41;

  sub_232B13F74((a1 + 27), &v54);
  v43 = a1[27];
  sub_232B13F5C((v1 + 27), &v53);
  v1[27] = v43;
  sub_232B13F74((a1 + 28), &v52);
  v44 = a1[28];
  sub_232B13F5C((v1 + 28), &v51);
  v1[28] = v44;
  sub_232B13F74((a1 + 29), &v50);
  v45 = a1[29];
  sub_232B13F5C((v1 + 29), &v49);
  v1[29] = v45;

  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &v48);
  sub_232B2CF64();
  swift_beginAccess();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v47);
  sub_232B2CF64();

  swift_beginAccess();
  sub_232B2D074();
  swift_endAccess();
  return v1;
}

void *sub_232B2A4D4()
{

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &qword_27DDC69B0, &qword_232CF6998);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &qword_27DDC69A0, &qword_232CF6990);
  return v0;
}

uint64_t sub_232B2A59C()
{
  v0 = sub_232B2A4D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232B2A618(uint64_t a1)
{
  sub_232B2A758(319, qword_2814E1E78, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  if (v1 <= 0x3F)
  {
    sub_232B2A758(319, qword_2814E1F18, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_232B2A758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232B2A7F4(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B2A878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
    swift_allocObject();
    v10 = sub_232B29EB8(v10);
    *(v4 + v8) = v10;
  }

  return sub_232B2A920(v10, a1, a2, a3);
}

uint64_t sub_232B2A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2AB88(a2, a1, a3, a4);
        break;
      case 2:
        sub_232B2AC0C(a2, a1, a3, a4);
        break;
      case 3:
        sub_232B2AC90(a2, a1, a3, a4);
        break;
      case 4:
        sub_232B2AD14(a2, a1, a3, a4);
        break;
      case 5:
        sub_232B2AD98(a2, a1, a3, a4);
        break;
      case 6:
        sub_232B2AE1C(a2, a1, a3, a4);
        break;
      case 7:
        sub_232B2AEA0(a2, a1, a3, a4);
        break;
      case 8:
        sub_232B2AF24(a2, a1, a3, a4);
        break;
      case 9:
        sub_232B2AFA8(a2, a1, a3, a4);
        break;
      case 10:
        sub_232B2B02C(a2, a1, a3, a4);
        break;
      case 11:
        sub_232B2B0B0(a2, a1, a3, a4);
        break;
      case 12:
        sub_232B2B134(a2, a1, a3, a4);
        break;
      case 13:
        sub_232B2B1B8(a2, a1, a3, a4);
        break;
      case 14:
        sub_232B2B23C(a2, a1, a3, a4);
        break;
      case 15:
        sub_232B2B2C0(a2, a1, a3, a4);
        break;
      case 16:
        sub_232B2B344(a2, a1, a3, a4);
        break;
      case 17:
        sub_232B2B410(a2, a1, a3, a4);
        break;
      case 18:
        sub_232B2B4EC(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B2B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B2B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B2B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  sub_232B2CE8C(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF78D0);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232B2B410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B2CE8C(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF7130);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232B2B4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232B2CE8C(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF75F4);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232B2B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  result = sub_232B2B634(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B2B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 56);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v15 = *(a1 + 72);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 88);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 104);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 120);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_232CE95C0();
    if (!v4)
    {

      goto LABEL_36;
    }
  }

LABEL_36:
  swift_beginAccess();
  v23 = *(a1 + 136);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 144) + 16) || (, sub_232CE95A0(), result = , !v4))
  {
    swift_beginAccess();
    v26 = *(a1 + 160);
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
    }

    if (!v27 || (, sub_232CE95C0(), result = , !v4))
    {
      swift_beginAccess();
      v28 = *(a1 + 176);
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
      }

      if (!v29 || (, sub_232CE95C0(), result = , !v4))
      {
        swift_beginAccess();
        v30 = *(a1 + 192);
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
        }

        if (!v31 || (, sub_232CE95C0(), result = , !v4))
        {
          swift_beginAccess();
          v32 = *(a1 + 208);
          v33 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v33 = *(a1 + 200) & 0xFFFFFFFFFFFFLL;
          }

          if (!v33 || (, sub_232CE95C0(), result = , !v4))
          {
            swift_beginAccess();
            if (*(a1 + 216) == 0.0 || (result = sub_232CE95B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 224) == 0.0 || (result = sub_232CE95B0(), !v4))
              {
                swift_beginAccess();
                if (!*(*(a1 + 232) + 16) || (type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0), sub_232B2CE8C(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF78D0), , sub_232CE95D0(), result = , !v4))
                {
                  result = sub_232B2BCB4(a1, a2, a3, a4);
                  if (!v4)
                  {
                    return sub_232B2BE9C(a1, a2, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B2BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC69B0, &qword_232CF6998);
  }

  sub_232B2CFC0();
  sub_232B2CE8C(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF7130);
  sub_232CE95E0();
  return sub_232B2D01C(v9, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
}

uint64_t sub_232B2BE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC69A0, &qword_232CF6990);
  }

  sub_232B2CFC0();
  sub_232B2CE8C(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF75F4);
  sub_232CE95E0();
  return sub_232B2D01C(v9, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
}

uint64_t sub_232B2C084()
{
  sub_232B2D12C();
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_232B2C168(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B2CE8C(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

BOOL sub_232B2C168(uint64_t a1, uint64_t a2)
{
  v134 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  v130 = &v128[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_232B124A8(&qword_27DDC69C0, &qword_232CF69A0);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v135 = v7;
  v8 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  v131 = &v128[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v133 = &v128[-v12];
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  v15 = &v128[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_232B124A8(&qword_27DDC69C8, &qword_232CF69A8);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  sub_232B2D108();
  v136 = v18;
  v19 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v20 = sub_232B2D120(v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v128[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v128[-v24];
  sub_232B13F74(a1 + 16, v172);
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = sub_232B13F74(a2 + 16, v171);
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);
  v32 = v26 == v30 && v27 == v31;
  if (!v32 && (sub_232B2D0D0(v28, v29, v30, v31) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 32, v170);
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v35 = sub_232B13F74(a2 + 32, v169);
  v37 = *(a2 + 32);
  v38 = *(a2 + 40);
  v39 = v33 == v37 && v34 == v38;
  if (!v39 && (sub_232B2D0D0(v35, v36, v37, v38) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 48, v168);
  v40 = *(a1 + 48);
  v41 = *(a1 + 56);
  v42 = sub_232B13F74(a2 + 48, v167);
  v44 = *(a2 + 48);
  v45 = *(a2 + 56);
  v46 = v40 == v44 && v41 == v45;
  if (!v46 && (sub_232B2D0D0(v42, v43, v44, v45) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 64, &v166);
  v47 = *(a1 + 64);
  v48 = *(a1 + 72);
  v49 = sub_232B13F74(a2 + 64, &v165);
  v51 = *(a2 + 64);
  v52 = *(a2 + 72);
  v53 = v47 == v51 && v48 == v52;
  if (!v53 && (sub_232B2D0D0(v49, v50, v51, v52) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 80, &v164);
  v54 = *(a1 + 80);
  v55 = *(a1 + 88);
  v56 = sub_232B13F74(a2 + 80, &v163);
  v58 = *(a2 + 80);
  v59 = *(a2 + 88);
  v60 = v54 == v58 && v55 == v59;
  if (!v60 && (sub_232B2D0D0(v56, v57, v58, v59) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 96, &v162);
  v61 = *(a1 + 96);
  v62 = *(a1 + 104);
  v63 = sub_232B13F74(a2 + 96, &v161);
  v65 = *(a2 + 96);
  v66 = *(a2 + 104);
  v67 = v61 == v65 && v62 == v66;
  if (!v67 && (sub_232B2D0D0(v63, v64, v65, v66) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 112, &v160);
  v68 = *(a1 + 112);
  v69 = *(a1 + 120);
  v70 = sub_232B13F74(a2 + 112, &v159);
  v72 = *(a2 + 112);
  v73 = *(a2 + 120);
  v74 = v68 == v72 && v69 == v73;
  if (!v74 && (sub_232B2D0D0(v70, v71, v72, v73) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 128, &v158);
  v75 = *(a1 + 128);
  v76 = *(a1 + 136);
  v77 = sub_232B13F74(a2 + 128, &v157);
  v79 = *(a2 + 128);
  v80 = *(a2 + 136);
  v81 = v75 == v79 && v76 == v80;
  if (!v81 && (sub_232B2D0D0(v77, v78, v79, v80) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 144, &v156);
  v82 = *(a1 + 144);
  sub_232B13F74(a2 + 144, &v155);
  if ((sub_232B32DC4(v82, *(a2 + 144)) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 152, &v154);
  v83 = *(a1 + 152);
  v84 = *(a1 + 160);
  v85 = sub_232B13F74(a2 + 152, &v153);
  v87 = *(a2 + 152);
  v88 = *(a2 + 160);
  v89 = v83 == v87 && v84 == v88;
  if (!v89 && (sub_232B2D0D0(v85, v86, v87, v88) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 168, &v152);
  v90 = *(a1 + 168);
  v91 = *(a1 + 176);
  v92 = sub_232B13F74(a2 + 168, &v151);
  v94 = *(a2 + 168);
  v95 = *(a2 + 176);
  v96 = v90 == v94 && v91 == v95;
  if (!v96 && (sub_232B2D0D0(v92, v93, v94, v95) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 184, &v150);
  v97 = *(a1 + 184);
  v98 = *(a1 + 192);
  v99 = sub_232B13F74(a2 + 184, &v149);
  v101 = *(a2 + 184);
  v102 = *(a2 + 192);
  v103 = v97 == v101 && v98 == v102;
  if (!v103 && (sub_232B2D0D0(v99, v100, v101, v102) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 200, &v148);
  v104 = *(a1 + 200);
  v105 = *(a1 + 208);
  v106 = sub_232B13F74(a2 + 200, &v147);
  v108 = *(a2 + 200);
  v109 = *(a2 + 208);
  v110 = v104 == v108 && v105 == v109;
  if (!v110 && (sub_232B2D0D0(v106, v107, v108, v109) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74(a1 + 216, &v146);
  v111 = *(a1 + 216);
  sub_232B13F74(a2 + 216, &v145);
  if (v111 != *(a2 + 216))
  {
    return 0;
  }

  sub_232B13F74(a1 + 224, &v144);
  v112 = *(a1 + 224);
  sub_232B13F74(a2 + 224, &v143);
  if (v112 != *(a2 + 224))
  {
    return 0;
  }

  sub_232B13F74(a1 + 232, &v142);
  v113 = *(a1 + 232);
  sub_232B13F74(a2 + 232, &v141);
  v114 = *(a2 + 232);

  sub_232B34390(v113, v114);
  v129 = v115;

  if ((v129 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &v140);
  sub_232B2CF64();
  sub_232B13F74(a2 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &v139);
  v116 = *(v16 + 48);
  v117 = v136;
  sub_232B2CF64();
  sub_232B2CF64();
  sub_232B2D158(v117);
  if (v32)
  {
    sub_232B13790(v25, &qword_27DDC69B0, &qword_232CF6998);
    sub_232B2D158(v117 + v116);
    if (v32)
    {
      sub_232B13790(v117, &qword_27DDC69B0, &qword_232CF6998);
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  sub_232B2CF64();
  sub_232B2D158(v117 + v116);
  if (v118)
  {
    sub_232B13790(v25, &qword_27DDC69B0, &qword_232CF6998);
    sub_232B2D01C(v22, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
LABEL_73:
    sub_232B13790(v117, &qword_27DDC69C8, &qword_232CF69A8);
LABEL_74:

    return 0;
  }

  sub_232B2CFC0();
  v120 = sub_232B38480(v22, v15);
  sub_232B2D01C(v15, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232B13790(v25, &qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D01C(v22, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232B13790(v117, &qword_27DDC69B0, &qword_232CF6998);
  if ((v120 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_77:
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v138);
  v121 = v133;
  sub_232B2CF64();
  sub_232B13F74(a2 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v137);
  v122 = *(v132 + 48);
  v123 = v135;
  sub_232B2CF64();
  sub_232B2CF64();
  v124 = v134;
  if (sub_232B12480(v123, 1, v134) != 1)
  {
    v125 = v131;
    sub_232B2CF64();
    if (sub_232B12480(v123 + v122, 1, v124) == 1)
    {

      sub_232B13790(v121, &qword_27DDC69A0, &qword_232CF6990);
      sub_232B2D01C(v125, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
      goto LABEL_82;
    }

    v126 = v130;
    sub_232B2CFC0();
    v127 = sub_232B3D154(v125, v126);

    sub_232B2D01C(v126, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    sub_232B13790(v121, &qword_27DDC69A0, &qword_232CF6990);
    sub_232B2D01C(v125, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    sub_232B13790(v123, &qword_27DDC69A0, &qword_232CF6990);
    return (v127 & 1) != 0;
  }

  sub_232B13790(v121, &qword_27DDC69A0, &qword_232CF6990);
  if (sub_232B12480(v123 + v122, 1, v124) != 1)
  {
LABEL_82:
    sub_232B13790(v123, &qword_27DDC69C0, &qword_232CF69A0);
    return 0;
  }

  sub_232B13790(v123, &qword_27DDC69A0, &qword_232CF6990);
  return 1;
}

uint64_t sub_232B2CB10()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B2CE8C(&qword_27DDC6980, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF6850);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2CBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2CE8C(&qword_27DDC6990, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF68E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2CC64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6318 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2CD0C(uint64_t a1)
{
  v2 = sub_232B2CE8C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF6918);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2CD7C(uint64_t a1, uint64_t a2)
{
  sub_232B2CE8C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF6918);

  return sub_232CE9500();
}

uint64_t sub_232B2CE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B2CF64()
{
  sub_232B2D12C();
  sub_232B124A8(v2, v3);
  sub_232B13F24();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_232B2CFC0()
{
  sub_232B2D12C();
  v2(0);
  sub_232B13F24();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_232B2D01C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B2D074()
{
  sub_232B2D12C();
  sub_232B124A8(v2, v3);
  sub_232B13F24();
  (*(v4 + 40))(v0, v1);
  return v0;
}

uint64_t sub_232B2D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CEA750();
}

uint64_t sub_232B2D0EC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B2D138(uint64_t a1)
{

  return sub_232B12504(v1 + v2, 1, 1, a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(uint64_t a1)
{
  result = qword_27DDC69D0;
  if (!qword_27DDC69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B2D1EC(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B28F10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B2D274(uint64_t a1)
{
  sub_232CE9330();
  v1 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  sub_232B2DF60(*(v1 + 20));
  sub_232B2DF60(*(v2 + 24));
  sub_232B2DF60(*(v3 + 28));
  sub_232B2DF60(*(v4 + 32));
}

uint64_t sub_232B2D2C0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4ED8);
  sub_232B135C4(v0, qword_27DDD4ED8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "attributeNamespace";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributeType";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attributeId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayName";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B2D500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232B2D5B0(v6, v7, v8, v9);
        break;
      case 2:
        v18 = sub_232B13EE0();
        sub_232B2D614(v18, v19, v20, v21);
        break;
      case 3:
        v10 = sub_232B13EE0();
        sub_232B2D678(v10, v11, v12, v13);
        break;
      case 4:
        v14 = sub_232B13EE0();
        sub_232B2D6DC(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232B2D7B0(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232B2D828(v9, v10, v11, v12);
    v13 = sub_232B13EF4();
    sub_232B2D8A0(v13, v14, v15, v16);
    v17 = sub_232B13EF4();
    sub_232B2D918(v17, v18, v19, v20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B2D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D990(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  sub_232B2DF3C();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    sub_232B2DF50(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    sub_232B2DF50(v9);
    v13 = v7 && v11 == v12;
    if (!v13 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v16)
  {
    if (!v14)
    {
      return 0;
    }

    sub_232B2DF50(v15);
    v19 = v7 && v17 == v18;
    if (!v19 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v22)
  {
    if (v20)
    {
      sub_232B2DF50(v21);
      v25 = v7 && v23 == v24;
      if (v25 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v20)
  {
LABEL_35:
    sub_232CE9340();
    sub_232B2DEF4(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B2DAE8()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  sub_232B2DEF4(&qword_27DDC69F0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6A24);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2DBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2DEF4(&qword_27DDC6A00, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6AB4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2DC3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6320 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2DCE4(uint64_t a1)
{
  v2 = sub_232B2DEF4(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6AEC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2DD54(uint64_t a1, uint64_t a2)
{
  sub_232B2DEF4(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6AEC);

  return sub_232CE9500();
}

uint64_t sub_232B2DEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_232B2DF60(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(uint64_t a1)
{
  result = qword_2814E1E10;
  if (!qword_2814E1E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B2DFE0(uint64_t a1)
{
  sub_232B2E0AC();
  if (v1 <= 0x3F)
  {
    sub_232B2E0FC();
    if (v2 <= 0x3F)
    {
      sub_232CE9340();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B2E0AC()
{
  if (!qword_2814DF980)
  {
    v0 = sub_232CEA030();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DF980);
    }
  }
}

void sub_232B2E0FC()
{
  if (!qword_2814DFA20)
  {
    v0 = sub_232CE9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DFA20);
    }
  }
}

uint64_t sub_232B2E158@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  a1[8] = MEMORY[0x277D84F90];
  a1[9] = v2;
  a1[10] = v2;
  a1[11] = v2;
  a1[12] = v2;
  a1[13] = v2;
  a1[14] = 0;
  a1[15] = sub_232CE9C60();
  a1[16] = 0;
  a1[17] = 0xE000000000000000;
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  return sub_232CE9330();
}

uint64_t sub_232B2E1D8()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EF0);
  sub_232B135C4(v0, qword_27DDD4EF0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232CF6B70;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "subject";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "senderName";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "senderEmail";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "senderDomain";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "recipientNames";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "recipientEmails";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "ccNames";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "ccEmails";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "bccNames";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "bccEmails";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dateReceived";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "headers";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "text";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232B2E638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 13:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        sub_232B2F148();
        sub_232CE9460();
        break;
      case 11:
        sub_232B2F148();
        sub_232CE9480();
        break;
      case 12:
        sub_232B2E748(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  sub_232B2F0F4();
  if (!v8 || (result = sub_232B2F128(v6, v7, 1), (v5 = v4) == 0))
  {
    sub_232B2F0F4();
    if (!v12 || (result = sub_232B2F128(v10, v11, 2), (v5 = v4) == 0))
    {
      sub_232B2F0F4();
      if (!v15 || (result = sub_232B2F128(v13, v14, 3), (v5 = v4) == 0))
      {
        sub_232B2F0F4();
        if (!v18 || (result = sub_232B2F128(v16, v17, 4), (v5 = v4) == 0))
        {
          v19 = v3[8];
          if (!*(v19 + 16) || (result = sub_232B2F108(v19, 5), (v5 = v4) == 0))
          {
            v20 = v3[9];
            if (!*(v20 + 16) || (result = sub_232B2F108(v20, 6), (v5 = v4) == 0))
            {
              v21 = v3[10];
              if (!*(v21 + 16) || (result = sub_232B2F108(v21, 7), (v5 = v4) == 0))
              {
                v22 = v3[11];
                if (!*(v22 + 16) || (result = sub_232B2F108(v22, 8), (v5 = v4) == 0))
                {
                  v23 = v3[12];
                  if (!*(v23 + 16) || (result = sub_232B2F108(v23, 9), (v5 = v4) == 0))
                  {
                    v24 = v3[13];
                    if (!*(v24 + 16) || (result = sub_232B2F108(v24, 10), (v5 = v4) == 0))
                    {
                      if (!v3[14] || (v4 = v5, sub_232B2F148(), result = sub_232CE95B0(), !v5))
                      {
                        if (!*(v3[15] + 16) || (sub_232CE9310(), v4 = v5, result = sub_232CE9520(), !v5))
                        {
                          sub_232B2F0F4();
                          if (!v27 || (result = sub_232B2F128(v25, v26, 13), !v4))
                          {
                            type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
                            sub_232B2F148();
                            return sub_232CE9320();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B2E9D4(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40);
  if (!v6 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56);
  if (!v7 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 8), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 9), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 10), *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 11), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 12), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 13), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (a1[14] != *(a2 + 112))
  {
    return 0;
  }

  sub_232B3223C(*(a1 + 15), *(a2 + 120));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 16) == *(a2 + 128) && *(a1 + 17) == *(a2 + 136);
  if (!v9 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232CE9340();
  sub_232B2F0AC(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B2EB94()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232B2F0AC(&qword_27DDC6A18, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6BE8);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B2ECB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232B2ED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2F0AC(&qword_27DDC6A28, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6C78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2EDF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6328 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2EE9C(uint64_t a1)
{
  v2 = sub_232B2F0AC(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6CB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2EF0C(uint64_t a1, uint64_t a2)
{
  sub_232B2F0AC(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6CB0);

  return sub_232CE9500();
}

uint64_t sub_232B2F0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B2F108(uint64_t a1, uint64_t a2)
{

  return sub_232CE95A0();
}

uint64_t sub_232B2F128(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CE95C0();
}

id sub_232B2F200(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232B2F27C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B2F310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id sub_232B2F5A4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v3 = a1;
  if (a3(a1, a2))
  {
    sub_232CE9FD0();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232B2F628(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9FE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_232B2FB28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived, v5);
  return sub_232B34D3C(v1 + v3, a1, &qword_27DDC6A80, &qword_232CF6D30);
}

uint64_t sub_232B2FC5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_232B2FCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B2FD2C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_232B34D3C(a1, &v6 - v3, &qword_27DDC6A80, &qword_232CF6D30);
  return sub_232B2FC5C(v4);
}

uint64_t sub_232B2FF64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_232B13F5C(v2 + *a2, v6);
  *(v2 + v4) = a1;
}

uint64_t sub_232B3004C(void *a1)
{
  v2 = (v1 + *a1);
  sub_232B13F74(v2, v5);
  v3 = *v2;

  return v3;
}

uint64_t sub_232B300BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  sub_232B13F5C(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

id DUDocumentEmailData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentEmailData.init()()
{
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails] = 0;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  v2 = sub_232CE8D10();
  sub_232B12504(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  v4 = type metadata accessor for DUDocumentEmailData(0);
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for DUDocumentEmailData(uint64_t a1)
{
  result = qword_2814E1388;
  if (!qword_2814E1388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B302F8(void *a1)
{
  type metadata accessor for DUDocumentEmailData(0);
  sub_232B35078();
  sub_232B34348(v2, v3, &protocol conformance descriptor for DUDocumentEmailData);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    [a1 encodeObject:v5 forKey:v6];
  }
}

uint64_t DUDocumentEmailData.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUDocumentEmailData.init(coder:)(v2);
}

uint64_t DUDocumentEmailData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232B35078();
  sub_232B34348(v2, v3, &protocol conformance descriptor for DUDocumentEmailData);
  sub_232CE98B0();

  v4 = v6;
  if (!v6)
  {
LABEL_5:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_232B305F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B31BCC(v5 - v4);
  sub_232B3068C(v6);
  v8 = v7;
  result = sub_232B124A8(&qword_27DDC6A90, &qword_232CF6D38);
  a1[3] = result;
  *a1 = v8;
  return result;
}

void sub_232B3068C(uint64_t a1)
{
  sub_232B35110();
  v3 = v2;
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v4);
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  sub_232B350B8();
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = (v9 - v8);
  v11 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData(0)) init];
  sub_232B34E54(v3, v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject], &v33);
  sub_232B35134();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName], &v32);
  sub_232B35134();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail], &v31);
  sub_232B35134();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain], &v30);
  sub_232B35134();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames], &v29);
  sub_232B350E8();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails], &v28);
  sub_232B350E8();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames], &v27);
  sub_232B350E8();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails], &v26);
  sub_232B350E8();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames], &v25);
  sub_232B350E8();

  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails], &v24);
  sub_232B350E8();

  sub_232CE8CA0();
  sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(v1, &v11[v16]);
  swift_endAccess();
  v17 = v10[15];
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers], &v23);
  *&v11[v18] = v17;

  v20 = v10[16];
  v19 = v10[17];

  sub_232B34DFC(v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v21 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text], &v22);
  *v21 = v20;
  *(v21 + 1) = v19;

  sub_232B20A00();
}

char *sub_232B309D4(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42[-v4];
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_allocWithZone(v1) init];
  sub_232B34E54(a1, v8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v11 = *v8;
  v10 = v8[1];
  v12 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  v14 = v8[2];
  v13 = v8[3];
  v15 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
  swift_beginAccess();
  *v15 = v14;
  *(v15 + 1) = v13;

  v17 = v8[4];
  v16 = v8[5];
  v18 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  swift_beginAccess();
  *v18 = v17;
  *(v18 + 1) = v16;

  v20 = v8[6];
  v19 = v8[7];
  v21 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
  swift_beginAccess();
  *v21 = v20;
  *(v21 + 1) = v19;

  v22 = v8[8];
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  swift_beginAccess();
  *&v9[v23] = v22;

  v24 = v8[9];
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  swift_beginAccess();
  *&v9[v25] = v24;

  v26 = v8[10];
  v27 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  swift_beginAccess();
  *&v9[v27] = v26;

  v28 = v8[11];
  v29 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  swift_beginAccess();
  *&v9[v29] = v28;

  v30 = v8[12];
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  swift_beginAccess();
  *&v9[v31] = v30;

  v32 = v8[13];
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  swift_beginAccess();
  *&v9[v33] = v32;

  sub_232CE8CA0();
  sub_232B34DFC(a1, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v34 = sub_232CE8D10();
  sub_232B12504(v5, 0, 1, v34);
  v35 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(v5, &v9[v35]);
  swift_endAccess();
  v36 = v8[15];
  v37 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  swift_beginAccess();
  *&v9[v37] = v36;

  v39 = v8[16];
  v38 = v8[17];

  sub_232B34DFC(v8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v40 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 1) = v38;

  return v9;
}

void DUDocumentEmailData.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v9);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B350B8();
  v11 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  sub_232B2D120(v11);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  sub_232B350D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v20 = v19 - v18;
  v21 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v25 = (v24 - v23);
  v26 = [objc_allocWithZone(v4) init];
  (*(v16 + 16))(v20, v8, v6);
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v27, v28, v29, v21);
    sub_232B35060();
    sub_232B34D9C(v14, v25, v30);
    v41 = v8;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject], &v53);
    sub_232B35150();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName], &v52);
    sub_232B35150();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail], &v51);
    sub_232B35150();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain], &v50);
    sub_232B35150();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames], &v49);
    sub_232B3509C();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails], &v48);
    sub_232B3509C();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames], &v47);
    sub_232B3509C();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails], &v46);
    sub_232B3509C();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames], &v45);
    sub_232B3509C();

    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails], &v44);
    sub_232B3509C();

    sub_232CE8CA0();
    (*(v16 + 8))(v41, v6);
    sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v31, v32, v33, v34);
    v35 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
    swift_beginAccess();
    sub_232B2FCBC(v3, &v26[v35]);
    swift_endAccess();
    v36 = v25[15];
    v37 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers], &v43);
    *&v26[v37] = v36;

    v39 = v25[16];
    v38 = v25[17];

    sub_232B34DFC(v25, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
    v40 = &v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text], &v42);
    *v40 = v39;
    *(v40 + 1) = v38;
  }

  else
  {

    sub_232B12504(v14, 1, 1, v21);
    (*(v16 + 8))(v8, v6);
    sub_232B13790(v14, &qword_27DDC6A98, &qword_232CF6D40);
  }

  sub_232B20A00();
}

void sub_232B31308(uint64_t a1)
{
  sub_232B35110();
  v3 = v1;
  v5 = v4;
  v6 = sub_232CE8D10();
  sub_232B350D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = sub_232B124A8(&qword_27DDC6AA0, &qword_232CFB9F0);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  sub_232B350B8();
  v15 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v16 = sub_232B2D120(v15);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v122 - v21;
  sub_232B34D3C(v5, v153, &qword_27DDC68C8, &qword_232CF6210);
  if (!v153[3])
  {
    sub_232B13790(v153, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_64;
  }

  type metadata accessor for DUDocumentEmailData(0);
  v23 = swift_dynamicCast();
  if (v23)
  {
    v123 = v8;
    v124 = v6;
    v125 = v2;
    v24 = v152;
    v127 = v3;
    v25 = v3 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject;
    v26 = sub_232B34FF0(v23, v153);
    v27 = *(v25 + 8);
    v28 = &v24[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
    v29 = sub_232B34FF0(v26, &v152);
    v30 = *(v28 + 1);
    if (v27)
    {
      if (!v30)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v34 = v34 && v27 == v33;
      if (!v34)
      {
        v29 = sub_232B2D0D0(v29, v31, v32, v33);
        if ((v29 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else if (v30)
    {
      goto LABEL_63;
    }

    v126 = v24;
    v35 = v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName;
    v36 = sub_232B34FF0(v29, &v151);
    v37 = *(v35 + 8);
    v24 = v126;
    v38 = &v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
    v39 = sub_232B34FF0(v36, &v150);
    v40 = *(v38 + 1);
    if (v37)
    {
      if (!v40)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      if (!v34 || v37 != v43)
      {
        v39 = sub_232B2D0D0(v39, v41, v42, v43);
        if ((v39 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else if (v40)
    {
      goto LABEL_63;
    }

    v45 = v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail;
    v46 = sub_232B34FF0(v39, &v149);
    v47 = *(v45 + 8);
    v24 = v126;
    v48 = &v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
    v49 = sub_232B34FF0(v46, &v148);
    v50 = *(v48 + 1);
    if (v47)
    {
      if (!v50)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      if (!v34 || v47 != v53)
      {
        v49 = sub_232B2D0D0(v49, v51, v52, v53);
        if ((v49 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else if (v50)
    {
      goto LABEL_63;
    }

    v55 = v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain;
    v56 = sub_232B34FF0(v49, &v147);
    v57 = *(v55 + 8);
    v24 = v126;
    v58 = &v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
    sub_232B34FF0(v56, &v146);
    v59 = *(v58 + 1);
    if (v57)
    {
      if (!v59)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v64 = v34 && v57 == v63;
      if (!v64 && (sub_232B2D0D0(v60, v61, v62, v63) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v59)
    {
      goto LABEL_63;
    }

    v65 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    v66 = v127;
    sub_232B13F74(v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames, &v145);
    v67 = *(v66 + v65);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    v68 = sub_232B3517C();
    sub_232B13F74(v68, &v144);
    sub_232B350C8();
    if (v67)
    {
      if (!v69 || (sub_232B32DC4(v67, v69) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v69)
    {
      goto LABEL_63;
    }

    v70 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    sub_232B13F74(v66 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails, &v143);
    v71 = *(v66 + v70);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    v72 = sub_232B3517C();
    sub_232B13F74(v72, &v142);
    sub_232B350C8();
    if (v71)
    {
      if (!v73 || (sub_232B32DC4(v71, v73) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v73)
    {
      goto LABEL_63;
    }

    v74 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
    sub_232B13F74(v66 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames, &v141);
    v75 = *(v66 + v74);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
    v76 = sub_232B3517C();
    sub_232B13F74(v76, &v140);
    sub_232B350C8();
    if (v75)
    {
      if (!v77 || (sub_232B32DC4(v75, v77) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v77)
    {
      goto LABEL_63;
    }

    v78 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
    sub_232B13F74(v66 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails, &v139);
    v79 = *(v66 + v78);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
    v80 = sub_232B3517C();
    sub_232B13F74(v80, &v138);
    sub_232B350C8();
    if (v79)
    {
      if (v81 && (sub_232B32DC4(v79, v81) & 1) != 0)
      {
LABEL_58:
        v82 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
        sub_232B13F74(v66 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames, &v137);
        v83 = *(v66 + v82);
        v84 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
        v85 = sub_232B3517C();
        sub_232B13F74(v85, &v136);
        v86 = *&v126[v84];
        if (v83)
        {
          if (!v86 || (sub_232B32DC4(v83, v86) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if (v86)
        {
          goto LABEL_94;
        }

        v87 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
        v88 = v127;
        sub_232B13F74(v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails, &v135);
        v89 = *(v88 + v87);
        v90 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
        v91 = v126;
        sub_232B13F74(&v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails], &v134);
        v92 = *&v91[v90];
        if (v89)
        {
          if (!v92 || (sub_232B32DC4(v89, v92) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if (v92)
        {
          goto LABEL_94;
        }

        v93 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
        v94 = v127;
        sub_232B13F74(v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived, &v133);
        sub_232B34D3C(v94 + v93, v22, &qword_27DDC6A80, &qword_232CF6D30);
        v95 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
        v96 = v126;
        sub_232B13F74(&v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived], &v132);
        v97 = *(v13 + 48);
        v98 = v125;
        sub_232B34D3C(v22, v125, &qword_27DDC6A80, &qword_232CF6D30);
        sub_232B34D3C(&v96[v95], v98 + v97, &qword_27DDC6A80, &qword_232CF6D30);
        sub_232B351B0(v98, 1, v124);
        if (v34)
        {
          sub_232B13790(v22, &qword_27DDC6A80, &qword_232CF6D30);
          sub_232B351B0(v125 + v97, 1, v124);
          if (v34)
          {
            sub_232B13790(v125, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_82:
            v107 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            v108 = v127;
            sub_232B13F74(v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers, &v131);
            v109 = *(v108 + v107);
            v110 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            v111 = v126;
            sub_232B13F74(&v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers], &v130);
            v112 = *&v111[v110];
            if (v109)
            {
              if (v112)
              {

                sub_232B3223C(v113, v112);
                v115 = v114;

                if (v115)
                {
                  goto LABEL_87;
                }
              }
            }

            else if (!v112)
            {
LABEL_87:
              v116 = (v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text);
              sub_232B13F74(v127 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text, &v129);
              v117 = *v116;
              v118 = v116[1];
              v119 = &v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
              sub_232B13F74(&v126[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text], &v128);
              v120 = *(v119 + 1);
              if (v118)
              {
                if (v120)
                {
                  if (v117 == *v119 && v118 == v120)
                  {

                    goto LABEL_64;
                  }

                  sub_232CEA750();
                }

                goto LABEL_94;
              }

              if (v120)
              {
              }

              goto LABEL_64;
            }

LABEL_94:

            goto LABEL_64;
          }
        }

        else
        {
          v99 = v125;
          sub_232B34D3C(v125, v19, &qword_27DDC6A80, &qword_232CF6D30);
          sub_232B351B0(v99 + v97, 1, v124);
          if (!v100)
          {
            v102 = v123;
            v101 = v124;
            v103 = v125;
            (*(v123 + 32))(v12, v125 + v97, v124);
            sub_232B34348(&qword_27DDC6AA8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v104 = sub_232CE9CF0();
            v105 = *(v102 + 8);
            v106 = sub_232B35090();
            v105(v106);
            sub_232B13790(v22, &qword_27DDC6A80, &qword_232CF6D30);
            (v105)(v19, v101);
            sub_232B13790(v103, &qword_27DDC6A80, &qword_232CF6D30);
            if ((v104 & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_82;
          }

          sub_232B13790(v22, &qword_27DDC6A80, &qword_232CF6D30);
          (*(v123 + 8))(v19, v124);
        }

        sub_232B13790(v125, &qword_27DDC6AA0, &qword_232CFB9F0);
        goto LABEL_94;
      }
    }

    else if (!v81)
    {
      goto LABEL_58;
    }

LABEL_63:
  }

LABEL_64:
  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B31BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v7 = sub_232CE8D10();
  sub_232B350D8();
  v54 = v8;
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v53 = v11 - v10;
  v12 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = (v14 - v13);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v15[2] = 0;
  v15[3] = 0xE000000000000000;
  v15[4] = 0;
  v15[5] = 0xE000000000000000;
  v15[6] = 0;
  v15[7] = 0xE000000000000000;
  v16 = MEMORY[0x277D84F90];
  v15[8] = MEMORY[0x277D84F90];
  v15[9] = v16;
  v15[10] = v16;
  v15[11] = v16;
  v15[12] = v16;
  v15[13] = v16;
  v15[14] = 0;
  v55 = sub_232CE9C60();
  v15[15] = v55;
  v15[16] = 0;
  v15[17] = 0xE000000000000000;
  sub_232CE9330();
  v17 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject);
  sub_232B13F74(v17, v75);
  v18 = v17[1];
  if (v18)
  {
    *v15 = *v17;
    v15[1] = v18;
  }

  v61 = v18;
  v19 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName, v74);
  v20 = v19[1];
  if (v20)
  {
    v15[2] = *v19;
    v15[3] = v20;
  }

  v60 = v20;
  v21 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail, v73);
  v22 = v21[1];
  if (v22)
  {
    v15[4] = *v21;
    v15[5] = v22;
  }

  v59 = v22;
  v23 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain, v72);
  v24 = v23[1];
  if (v24)
  {
    v15[6] = *v23;
    v15[7] = v24;
  }

  v58 = v24;
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames, v71);
  v26 = *(v2 + v25);
  if (v26)
  {
    v15[8] = v26;
  }

  v57 = v26;
  v27 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails, v70);
  v28 = *(v2 + v27);
  if (v28)
  {
    v15[9] = v28;
  }

  v56 = v28;
  v29 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames, &v69);
  v30 = *(v2 + v29);
  if (v30)
  {
    v15[10] = v30;
  }

  v31 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails, &v68);
  v32 = *(v2 + v31);
  if (v32)
  {
    v15[11] = v32;
  }

  v33 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames, &v67);
  v34 = *(v2 + v33);
  if (v34)
  {
    v15[12] = v34;
  }

  v35 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails, &v66);
  v36 = *(v2 + v35);
  if (v36)
  {
    v15[13] = v36;
  }

  v37 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived, &v65);
  sub_232B34D3C(v2 + v37, v6, &qword_27DDC6A80, &qword_232CF6D30);
  v38 = v7;
  sub_232B351B0(v6, 1, v7);
  if (v39)
  {

    sub_232B13790(v6, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v40 = v54;
    v41 = *(v54 + 32);
    v52[1] = v30;
    v42 = v53;
    v41(v53, v6, v38);

    sub_232CE8CB0();
    v44 = v43;
    (*(v40 + 8))(v42, v38);
    v15[14] = v44;
  }

  v45 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  v46 = sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers, &v64);
  v47 = *(v2 + v45);
  if (v47)
  {

    v15[15] = v47;
  }

  v48 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text);
  sub_232B34FF0(v46, &v63);
  v49 = v48[1];
  if (v49)
  {
    v15[16] = *v48;
    v15[17] = v49;
  }

  sub_232B35060();
  sub_232B34D9C(v15, v62, v50);
}

id DUDocumentEmailData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentEmailData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B32214@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B309D4(a1);
  *a2 = result;
  return result;
}

void sub_232B3223C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_232B34F88();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_232B351DC();
      v29 = v12;
LABEL_11:
      v15 = v11 | (v3 << 6);
      v16 = v5;
      v17 = (*(v5 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v5 + 56) + 16 * v15);
      v22 = *v20;
      v21 = v20[1];

      v23 = sub_232B1F160(v18, v19);
      v25 = v24;

      if ((v25 & 1) == 0)
      {

        return;
      }

      v26 = (*(a2 + 56) + 16 * v23);
      if (*v26 == v22 && v26[1] == v21)
      {

        v5 = v16;
        v8 = v29;
      }

      else
      {
        v28 = sub_232CEA750();

        v5 = v16;
        v8 = v29;
        if ((v28 & 1) == 0)
        {
          return;
        }
      }
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      v14 = *(v4 + 8 * v3);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v29 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_232B323BC(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v77 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B350D8();
  v79 = v6;
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v80 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  v17 = sub_232B2D120(v16);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = (&v73 - v22);
  if (v5 == v3 || *(v5 + 16) != *(v3 + 16))
  {
LABEL_26:
    sub_232B20A00();
  }

  else
  {
    v75 = v5;
    v76 = v12;
    v24 = 0;
    v74 = v5 + 64;
    sub_232B34F88();
    v27 = v26 & v25;
    v73 = (v28 + 63) >> 6;
    while (v27)
    {
      sub_232B351DC();
      v78 = v29;
      v31 = v30 | (v24 << 6);
      v32 = v76;
LABEL_11:
      v35 = *(*(v5 + 48) + 8 * v31);
      sub_232B35030();
      sub_232B34E54(v36, v15, v37);
      v38 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
      *v20 = v35;
      sub_232B35018();
      sub_232B34D9C(v15, v20 + v39, v40);
      sub_232B351FC();
      sub_232B12504(v41, v42, v43, v38);
LABEL_12:
      sub_232B34574(v20, v23);
      v44 = sub_232B35090();
      v46 = sub_232B124A8(v44, v45);
      sub_232B351B0(v23, 1, v46);
      if (v47)
      {
        goto LABEL_26;
      }

      v48 = *v23;
      sub_232B35018();
      sub_232B34D9C(v23 + v49, v32, v50);
      sub_232B20520(v48);
      if ((v51 & 1) == 0)
      {
        goto LABEL_25;
      }

      v52 = v80;
      sub_232B35030();
      sub_232B34E54(v53, v52, v54);
      v55 = *v52;
      v56 = *v32;
      v57 = *(*v52 + 16);
      if (v57 != *(*v32 + 16))
      {
        goto LABEL_24;
      }

      if (v57 && v55 != v56)
      {
        v58 = (v55 + 32);
        v59 = (v56 + 32);
        while (*v58 == *v59)
        {
          ++v58;
          ++v59;
          if (!--v57)
          {
            goto LABEL_20;
          }
        }

LABEL_24:
        sub_232B34DFC(v80, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
LABEL_25:
        sub_232B34DFC(v32, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
        goto LABEL_26;
      }

LABEL_20:
      v60 = v3;
      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v61, MEMORY[0x277D216D0]);
      v62 = v23;
      v63 = v20;
      v64 = v15;
      v65 = v80;
      v66 = v32;
      v67 = sub_232CE9CF0();
      v68 = v65;
      v15 = v64;
      v20 = v63;
      v23 = v62;
      sub_232B34DFC(v68, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v69 = v66;
      v3 = v60;
      v5 = v75;
      sub_232B34DFC(v69, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v27 = v78;
      if ((v67 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v32 = v76;
    while (1)
    {
      v33 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v33 >= v73)
      {
        v70 = sub_232B35090();
        v72 = sub_232B124A8(v70, v71);
        sub_232B12504(v20, 1, 1, v72);
        v78 = 0;
        goto LABEL_12;
      }

      v34 = *(v74 + 8 * v33);
      ++v24;
      if (v34)
      {
        v78 = (v34 - 1) & v34;
        v31 = __clz(__rbit64(v34)) | (v33 << 6);
        v24 = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }
}

void sub_232B32808(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    sub_232B34F88();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
LABEL_4:
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = *(a1[7] + 8 * v13);
      v15 = sub_232B20520(*(a1[6] + 8 * v13));
      if ((v16 & 1) == 0)
      {
        return;
      }

      v17 = *(a2[7] + 8 * v15);
      v18 = *(v17 + 16);
      if (v18 != *(v14 + 16))
      {
        return;
      }

      if (v18)
      {
        v19 = v17 == v14;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v17 + 32);
        v21 = (v14 + 32);
        while (v18)
        {
          if (*v20 != *v21)
          {
            return;
          }

          ++v20;
          ++v21;
          if (!--v18)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_25;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_232B32944(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
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

void sub_232B32998(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v7 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(v7);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v8);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F20();
  if (v16 && v6 && v5 != v2)
  {
    sub_232B34F08();
    while (1)
    {
      v10 = sub_232B35090();
      sub_232B34E54(v10, v11, v12);
      v13 = sub_232B35128();
      sub_232B34E54(v13, v14, v15);
      v16 = *v4 == *v3 && v4[1] == v3[1];
      if (!v16 && (sub_232CEA750() & 1) == 0)
      {
        break;
      }

      sub_232B34FB8();
      if (v18)
      {
        if (!v17)
        {
          break;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v19)
        {
          break;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v20, MEMORY[0x277D216D0]);
      v21 = sub_232CE9CF0();
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
      sub_232B35220();
      if (v21)
      {
        sub_232B34F50();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
    sub_232B35188();
  }

LABEL_21:
  sub_232B35104();
  sub_232B20A00();
}

void sub_232B32B74(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v6 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(v6);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v7);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v8);
  sub_232B34F20();
  if (v20 && v5 && v4 != v2)
  {
    sub_232B34F08();
    while (1)
    {
      v9 = sub_232B35090();
      sub_232B34E54(v9, v10, v11);
      v12 = sub_232B35128();
      sub_232B34E54(v12, v13, v14);
      sub_232B34F3C();
      if (v17)
      {
        if (!v15 || ((sub_232B2DF50(v16), v20) ? (v20 = v18 == v19) : (v20 = 0), !v20 && (sub_232CEA750() & 1) == 0))
        {
LABEL_47:
          sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          sub_232B35188();
          break;
        }
      }

      else if (v15)
      {
        goto LABEL_47;
      }

      sub_232B34F3C();
      if (v23)
      {
        if (!v21)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v22);
        v26 = v20 && v24 == v25;
        if (!v26 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v21)
      {
        goto LABEL_47;
      }

      sub_232B34F3C();
      if (v29)
      {
        if (!v27)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v28);
        v32 = v20 && v30 == v31;
        if (!v32 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v27)
      {
        goto LABEL_47;
      }

      sub_232B34F3C();
      if (v35)
      {
        if (!v33)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v34);
        v38 = v20 && v36 == v37;
        if (!v38 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v33)
      {
        goto LABEL_47;
      }

      sub_232CE9340();
      sub_232B34EB8();
      v40 = sub_232B34348(&qword_27DDC6590, v39, MEMORY[0x277D216D0]);
      v41 = sub_232B34FD0(v40);
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
      sub_232B35220();
      if (v41)
      {
        sub_232B34F50();
        if (!v20)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B32DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_232CEA750() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_232B32E74(uint64_t a1)
{
  sub_232B33904(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_232B33904(uint64_t a1)
{
  if (!qword_2814E25E0)
  {
    sub_232CE8D10();
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E25E0);
    }
  }
}

void sub_232B3395C(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v6 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(v6);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v7);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v8);
  sub_232B34F20();
  if (v20 && v5 && v4 != v2)
  {
    sub_232B34F08();
    while (1)
    {
      v9 = sub_232B35090();
      sub_232B34E54(v9, v10, v11);
      v12 = sub_232B35128();
      sub_232B34E54(v12, v13, v14);
      sub_232B34F3C();
      if (v17)
      {
        if (!v15 || ((sub_232B2DF50(v16), v20) ? (v20 = v18 == v19) : (v20 = 0), !v20 && (sub_232CEA750() & 1) == 0))
        {
LABEL_24:
          sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
          sub_232B35188();
          break;
        }
      }

      else if (v15)
      {
        goto LABEL_24;
      }

      sub_232B34FB8();
      if (v22)
      {
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v23)
        {
          goto LABEL_24;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      v25 = sub_232B34348(&qword_27DDC6590, v24, MEMORY[0x277D216D0]);
      v26 = sub_232B34FD0(v25);
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B35220();
      if (v26)
      {
        sub_232B34F50();
        if (!v20)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}

void sub_232B33B34(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v8 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v8);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v9);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v10);
  sub_232B34F78();
  v11 = *(v5 + 16);
  if (v11 == *(v2 + 2) && v11 && v5 != v2)
  {
    sub_232B34F08();
    v13 = *(v12 + 72);
    while (1)
    {
      v14 = sub_232B35090();
      sub_232B34E54(v14, v15, v16);
      v17 = sub_232B35128();
      sub_232B34E54(v17, v18, v19);
      sub_232B351C8();
      if (!v20)
      {

        v21 = sub_232C655FC(v2, v7);

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      v23 = sub_232B34348(&qword_27DDC6590, v22, MEMORY[0x277D216D0]);
      if ((sub_232B34FD0(v23) & 1) == 0)
      {
        break;
      }

      v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity;
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      sub_232B34DFC(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      v6 += v13;
      v5 += v13;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    sub_232B35188();
  }

LABEL_11:
  sub_232B20A00();
}

void sub_232B33D10(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v4 = v3;
  v6 = v5;
  v69 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v68 = v9 - v8;
  v10 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v10);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232B350B8();
  v12 = sub_232B124A8(&qword_27DDC6AC8, qword_232CF6E00);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v23 = *(v6 + 16);
  if (v23 != *(v4 + 16) || !v23 || v6 == v4)
  {
LABEL_55:
    sub_232B35104();
    sub_232B20A00();
    return;
  }

  v64 = v12;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v62 = v23;
  v63 = v4 + v25;
  v65 = *(v20 + 72);
  v66 = v6 + v25;
  while (1)
  {
    v26 = v65 * v24;
    sub_232B35048();
    sub_232B34E54(v27 + v26, v22, v28);
    if (v24 == v23)
    {
      break;
    }

    v67 = v24;
    sub_232B35048();
    sub_232B34E54(v63 + v26, v18, v29);
    v30 = v16[6];
    v31 = *(v64 + 48);
    sub_232B34D3C(&v22[v30], v15, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232B34D3C(&v18[v30], &v15[v31], &qword_27DDC6AC0, &unk_232CFBF50);
    v32 = v69;
    sub_232B351B0(v15, 1, v69);
    if (v36)
    {
      sub_232B351B0(&v15[v31], 1, v32);
      if (!v36)
      {
        goto LABEL_52;
      }

      sub_232B13790(v15, &qword_27DDC6AC0, &unk_232CFBF50);
      v33 = v67;
      goto LABEL_22;
    }

    v34 = sub_232B35090();
    sub_232B34D3C(v34, v35, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232B351B0(&v15[v31], 1, v32);
    if (v36)
    {
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
LABEL_52:
      v60 = &qword_27DDC6AC8;
      v61 = qword_232CF6E00;
      goto LABEL_53;
    }

    v37 = v68;
    sub_232B34D9C(&v15[v31], v68, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    v38 = *v2;
    v39 = *v37;
    if (*(v2 + 8))
    {
      v38 = *v2 != 0;
    }

    if (*(v37 + 8) == 1)
    {
      if (!v39)
      {
        v33 = v67;
        if (v38)
        {
LABEL_49:
          sub_232B34DFC(v37, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
          sub_232B35188();
          v60 = &qword_27DDC6AC0;
          v61 = &unk_232CFBF50;
LABEL_53:
          sub_232B13790(v15, v60, v61);
LABEL_54:
          sub_232B34DFC(v18, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
          sub_232B34DFC(v22, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
          goto LABEL_55;
        }

        goto LABEL_20;
      }

      v40 = v38 == 1;
    }

    else
    {
      v40 = v38 == v39;
    }

    v33 = v67;
    if (!v40)
    {
      goto LABEL_49;
    }

LABEL_20:
    if (*(v2 + 16) != *(v37 + 16))
    {
      goto LABEL_49;
    }

    sub_232CE9340();
    sub_232B34EB8();
    sub_232B34348(&qword_27DDC6590, v41, MEMORY[0x277D216D0]);
    v42 = sub_232CE9CF0();
    sub_232B34DFC(v37, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B13790(v15, &qword_27DDC6AC0, &unk_232CFBF50);
    if ((v42 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_22:
    v43 = v16[7];
    v44 = *&v18[v43 + 8];
    if (*&v22[v43 + 8])
    {
      if (!v44)
      {
        goto LABEL_54;
      }

      sub_232B2DF50(&v22[v43]);
      v47 = v36 && v45 == v46;
      if (!v47 && (sub_232CEA750() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v44)
    {
      goto LABEL_54;
    }

    v48 = v16[8];
    v49 = v22[v48 + 8];
    v50 = v18[v48 + 8];
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_232B34FA4();
      if (v51)
      {
        goto LABEL_54;
      }
    }

    v52 = *v22;
    v53 = *v18;
    v54 = *(*v22 + 16);
    if (v54 != *(*v18 + 16))
    {
      goto LABEL_54;
    }

    if (v54 && v52 != v53)
    {
      v55 = (v52 + 40);
      v56 = (v53 + 40);
      do
      {
        v57 = *(v55 - 1) == *(v56 - 1) && *v55 == *v56;
        if (!v57 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_54;
        }

        v55 += 2;
        v56 += 2;
      }

      while (--v54);
    }

    sub_232CE9340();
    sub_232B34EB8();
    sub_232B34348(&qword_27DDC6590, v58, MEMORY[0x277D216D0]);
    v59 = sub_232CE9CF0();
    sub_232B34DFC(v18, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    sub_232B34DFC(v22, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    if (v59)
    {
      v24 = v33 + 1;
      v23 = v62;
      if (v24 != v62)
      {
        continue;
      }
    }

    goto LABEL_55;
  }

  __break(1u);
}

uint64_t sub_232B342F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
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

uint64_t sub_232B34348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_232B34390(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v7 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(v7);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v8);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F78();
  v10 = *(v4 + 16);
  if (v10 == *(v2 + 16) && v10 && v4 != v2)
  {
    sub_232B34F08();
    v12 = *(v11 + 72);
    while (1)
    {
      v13 = sub_232B35090();
      sub_232B34E54(v13, v14, v15);
      v16 = sub_232B35128();
      sub_232B34E54(v16, v17, v18);
      sub_232B351C8();
      if (!v19)
      {

        v20 = sub_232B4138C(v2, v6);

        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      v22 = sub_232B34348(&qword_27DDC6590, v21, MEMORY[0x277D216D0]);
      v2 = sub_232B34FD0(v22);
      v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement;
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
      sub_232B35220();
      if (v2)
      {
        v5 += v12;
        v4 += v12;
        if (--v10)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
    sub_232B35188();
  }

LABEL_12:
  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B34574(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B345E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B34638(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232CEA610())
  {
    if (a2 >> 62)
    {
      result = sub_232CEA610();
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

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
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

    v4 = type metadata accessor for DUDocumentUIElement();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_232B35128();
        v17 = MEMORY[0x2383922C0](v16);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v12);
      }

      v18 = v17;
      if (v11)
      {
        v19 = MEMORY[0x2383922C0](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v12);
      }

      v20 = v19;
      v21 = sub_232CEA310();

      if (v21)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
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

void sub_232B347F4(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v6 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(v6);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v7);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v8);
  sub_232B34F78();
  v10 = *(v5 + 16);
  if (v10 == *(v2 + 16) && v10 && v5 != v2)
  {
    v11 = 0;
    v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v13 = v5 + v12;
    v14 = v2 + v12;
    v15 = *(v9 + 72);
    v34 = v13;
    while (1)
    {
      sub_232B34E54(v13 + v15 * v11, v4, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      if (v11 == v10)
      {
        break;
      }

      sub_232B34E54(v14 + v15 * v11, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      v16 = *v4;
      v17 = *v3;
      if (*(v3 + 8) == 1)
      {
        switch(v17)
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 2:
            if (v16 != 2)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 3:
            if (v16 != 3)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 4:
            if (v16 != 4)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 5:
            if (v16 != 5)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 6:
            if (v16 != 6)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 7:
            if (v16 != 7)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          case 8:
            if (v16 != 8)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
          default:
            if (v16)
            {
              goto LABEL_56;
            }

            goto LABEL_11;
        }
      }

      if (v16 != v17)
      {
LABEL_56:
        sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
        sub_232B35188();
        goto LABEL_57;
      }

LABEL_11:
      v18 = v4[2];
      v19 = *(v3 + 16);
      v20 = *(v18 + 16);
      if (v20 != *(v19 + 16))
      {
        goto LABEL_56;
      }

      if (v20)
      {
        v21 = v18 == v19;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = (v18 + 40);
        v23 = (v19 + 40);
        while (v20)
        {
          v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
          if (!v24 && (sub_232CEA750() & 1) == 0)
          {
            goto LABEL_56;
          }

          v22 += 2;
          v23 += 2;
          if (!--v20)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_24:
      v25 = v4[3];
      v26 = *(v3 + 24);
      v27 = *(v25 + 16);
      if (v27 != *(v26 + 16))
      {
        goto LABEL_56;
      }

      if (v27)
      {
        v28 = v25 == v26;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        v29 = (v25 + 32);
        v30 = (v26 + 32);
        while (v27)
        {
          if (*v29 != *v30)
          {
            goto LABEL_56;
          }

          ++v29;
          ++v30;
          if (!--v27)
          {
            goto LABEL_33;
          }
        }

LABEL_59:
        __break(1u);
        break;
      }

LABEL_33:
      v31 = v4[4] == *(v3 + 32) && v4[5] == *(v3 + 40);
      if (!v31 && (sub_232CEA750() & 1) == 0)
      {
        goto LABEL_56;
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v32, MEMORY[0x277D216D0]);
      v33 = sub_232CE9CF0();
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      sub_232B34DFC(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      if (v33)
      {
        ++v11;
        v13 = v34;
        if (v11 != v10)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    __break(1u);
  }

  else
  {
LABEL_57:
    sub_232B35104();
    sub_232B20A00();
  }
}

void sub_232B34B54(uint64_t a1, uint64_t a2)
{
  sub_232B35110();
  v7 = sub_232B34F68();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v7);
  sub_232B34EF0();
  MEMORY[0x28223BE20](v8);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F20();
  if (v21 && v6 && v5 != v2)
  {
    sub_232B34F08();
    while (1)
    {
      v10 = sub_232B35090();
      sub_232B34E54(v10, v11, v12);
      v13 = sub_232B35128();
      sub_232B34E54(v13, v14, v15);
      sub_232B34F3C();
      if (v18)
      {
        if (!v16 || ((sub_232B2DF50(v17), v21) ? (v21 = v19 == v20) : (v21 = 0), !v21 && (sub_232CEA750() & 1) == 0))
        {
LABEL_24:
          sub_232B34DFC(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
          sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
          break;
        }
      }

      else if (v16)
      {
        goto LABEL_24;
      }

      sub_232B34FB8();
      if (v23)
      {
        if (!v22)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v24)
        {
          goto LABEL_24;
        }
      }

      sub_232CE9340();
      sub_232B34EB8();
      v26 = sub_232B34348(&qword_27DDC6590, v25, MEMORY[0x277D216D0]);
      v27 = sub_232B34FD0(v26);
      sub_232B34DFC(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
      sub_232B34DFC(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
      if (v27)
      {
        sub_232B34F50();
        if (!v21)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B34D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B124A8(a3, a4);
  sub_232B13F24();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232B34D9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B34DFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B34E54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232B34FD0(uint64_t a1)
{

  return sub_232CE9CF0();
}

uint64_t sub_232B34FF0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B3509C()
{
  *(v1 + v0) = v2;
}

uint64_t sub_232B350E8()
{
  *(v0 + v2) = v1;
}

uint64_t sub_232B35134()
{
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B35150()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232B35188()
{

  return sub_232B34DFC(v1, v0);
}

void sub_232B35214(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B35220()
{

  return sub_232B34DFC(v0, v1);
}