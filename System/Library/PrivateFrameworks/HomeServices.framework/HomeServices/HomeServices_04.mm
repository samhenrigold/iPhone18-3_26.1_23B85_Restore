uint64_t sub_1D20F9ACC(uint64_t a1)
{
  v1 = [objc_opt_self() defaultManager];
  sub_1D2112F5C();
  v2 = sub_1D21137BC();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    return sub_1D2112FBC();
  }

  if (qword_1EC6C7178 != -1)
  {
    swift_once();
  }

  v5 = sub_1D211362C();
  __swift_project_value_buffer(v5, qword_1EC6CE868);
  v6 = sub_1D21135FC();
  v7 = sub_1D2113A7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D209F000, v6, v7, "File not found in provided location!", v8, 2u);
    MEMORY[0x1D3896EB0](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_1D20F9D84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1D2107AD8(v12, v10, type metadata accessor for HSCleanGuidanceThresholds);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1D2107B40(v10, type metadata accessor for HSCleanGuidanceThresholds);
      }

      if (v14)
      {
        break;
      }

      sub_1D2107B40(v10, type metadata accessor for HSCleanGuidanceThresholds);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1D21071D4(v10, v18, type metadata accessor for HSCleanGuidanceThresholds);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t _s12HomeServices06EnergyB0V26generateHSGuidanceForecast11currentTime03useC9Threshold05avoidcJ04type12valueRatings10forceIndex16endValidInterval06strideS012guidanceTypeAA0eF0V10Foundation4DateV_S2dAO04MockV0OSaySdGSgSbARSgSiAA0eV0OtAA0E5ErrorOYKFZ@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v183 = a8;
  v197 = a6;
  v206 = a5;
  v207 = a4;
  v209 = a3;
  v179 = a9;
  v210 = type metadata accessor for HSGuidanceValue(0);
  v201 = *(v210 - 8);
  v16 = MEMORY[0x1EEE9AC00](v210);
  v202 = &v172[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v172[-v18];
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v195);
  v200 = &v172[-v19];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v182);
  v187 = &v172[-v20];
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v21 = MEMORY[0x1EEE9AC00](v215);
  v191 = &v172[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v198 = &v172[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v189 = &v172[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v196 = &v172[-v28];
  MEMORY[0x1EEE9AC00](v27);
  v181 = &v172[-v29];
  v30 = sub_1D211319C();
  v208 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v211 = &v172[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v203 = &v172[-v34];
  v35 = MEMORY[0x1EEE9AC00](v33);
  v199 = &v172[-v36];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v194 = &v172[-v38];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v214 = &v172[-v40];
  v41 = MEMORY[0x1EEE9AC00](v39);
  v204 = &v172[-v42];
  v43 = MEMORY[0x1EEE9AC00](v41);
  v176 = &v172[-v44];
  v45 = MEMORY[0x1EEE9AC00](v43);
  v212 = &v172[-v46];
  MEMORY[0x1EEE9AC00](v45);
  v180 = &v172[-v47];
  v185 = type metadata accessor for HSGuidanceError(0);
  v48 = MEMORY[0x1EEE9AC00](v185);
  v175 = &v172[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x1EEE9AC00](v48);
  v184 = &v172[-v51];
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v172[-v53];
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v172[-v55];
  v57 = sub_1D2112C2C();
  v192 = *(v57 - 8);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v172[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v172[-v61];
  v63 = *a2;
  v64 = *a7;
  v65 = v216;
  sub_1D20FE6E4(v56, &v172[-v61]);
  v66 = v183;
  if (v65)
  {
    return sub_1D21071D4(v56, v66, type metadata accessor for HSGuidanceError);
  }

  v188 = a1;
  v190 = v54;
  v193 = v63;
  v173 = v64;
  v174 = 0;
  v177 = v60;
  v178 = v62;
  v186 = v57;
  v67 = v181;
  sub_1D20A8580(v206, v181, &qword_1EC6C7248, &qword_1D2114A80);
  v68 = v208;
  v205 = v208[6];
  v206 = v208 + 6;
  if (v205(v67, 1, v30) == 1)
  {
    sub_1D20A862C(v67, &qword_1EC6C7248, &qword_1D2114A80);
    v69 = v199;
    v70 = v200;
    v71 = v198;
    v72 = v188;
  }

  else
  {
    v73 = v180;
    (v68[4])(v180, v67, v30);
    v74 = v188;
    v75 = sub_1D211310C();
    v70 = v200;
    v71 = v198;
    if (v75)
    {
      v76 = v68[2];
      v76();
      v216 = v76;
      (v76)(v176, v73, v30);
      sub_1D2112BEC();
      (v68[1])(v73, v30);
      v69 = v199;
      goto LABEL_8;
    }

    (v68[1])(v73, v30);
    v69 = v199;
    v72 = v74;
  }

  v216 = v68[2];
  (v216)(v212, v72, v30);
  sub_1D2112BFC();
LABEL_8:
  v77 = v182;
  if (!v209)
  {
    v115 = v187;
    sub_1D2112C0C();
    v214 = *(v77 + 36);
    sub_1D2112BDC();
    v116 = v191;
    v204 = &v191[*(v215 + 11)];
    v117 = *(v195 + 48);
    v119 = v68[4];
    v118 = v68 + 4;
    (v119)(&v204[v117], v115, v30);
    v120 = v215;
    v197 = *(v215 + 9);
    v121 = &v115[v214];
    v122 = v204;
    v198 = v119;
    (v119)(&v116[v197], v121, v30);
    v123 = *(v120 + 10);
    v124 = v201;
    v194 = v123;
    *&v123[v116] = 0x409C200000000000;
    v214 = (v118 - 2);
    (v216)(v116, v122 + v117, v30);
    v125 = v118;
    v126 = 0;
    *v122 = 0;
    v213 = v125 - 3;
    v190 = v125 + 1;
    v208 = v125;
    v196 = v125 + 3;
    v215 = MEMORY[0x1E69E7CC0];
    *(v122 + 8) = 0;
    v127 = v193;
    v209 = v117;
    while (1)
    {
      (v216)(v69, v122 + v117, v30);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1D211378C())
      {
        v128 = *v213;
        (*v213)(v69, v30);
        v129 = 1;
        v130 = v186;
        v131 = v192;
        v132 = v189;
        v133 = v198;
      }

      else
      {
        sub_1D20A8580(v122, v70, &qword_1EC6C7278, &unk_1D2115720);
        v134 = *(v195 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
        v135 = v212;
        v136 = sub_1D2113B1C();
        v138 = v137;
        v139 = *v213;
        v140 = &v70[v134];
        v124 = v201;
        (*v213)(v140, v30);
        *v122 = v136;
        *(v122 + 8) = v138 & 1;
        v141 = v122 + v209;
        v128 = v139;
        v142 = v135;
        v127 = v193;
        (*v190)(v141, v142, v30);
        v132 = v189;
        v133 = v198;
        (v198)(v189, v199, v30);
        v129 = 0;
        v130 = v186;
        v131 = v192;
      }

      (*v196)(v132, v129, 1, v30);
      if (v205(v132, 1, v30) == 1)
      {
        v155 = &v217;
LABEL_63:
        sub_1D20A862C(*(v155 - 32), &qword_1EC6C7280, &qword_1D21149E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
        v158 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
        v159 = (*(*v158 + 80) + 32) & ~*(*v158 + 80);
        v160 = swift_allocObject();
        *(v160 + 16) = xmmword_1D2114850;
        v161 = v160 + v159;
        v162 = v192;
        v163 = v178;
        (*(v192 + 16))(v161, v178, v130);
        *(v161 + v158[7]) = a10;
        *(v161 + v158[8]) = a11;
        v164 = type metadata accessor for HSGuidanceForecast(0);
        v165 = *(v162 + 32);
        v166 = v179;
        v165(v179 + v164[6], v163, v130);
        result = (v165)(v166 + v164[8], v177, v130);
        *v166 = v173;
        *(v166 + 8) = v160;
        *(v166 + v164[7]) = v215;
        return result;
      }

      v143 = v203;
      v133();
      result = sub_1D20FDFE4(v143);
      if (v144)
      {
        break;
      }

      v145 = v126;
      if ((v207 & 1) == 0)
      {
        v146 = result / 30.0;
        if (COERCE__INT64(fabs(v146)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_78;
        }

        if (v146 <= -9.22337204e18)
        {
          goto LABEL_79;
        }

        if (v146 >= 9.22337204e18)
        {
          goto LABEL_80;
        }

        v145 = v146;
      }

      (v216)(v211, v143, v30);
      if (!v126 && v127 == 5)
      {
        v147 = v212;
        sub_1D21130DC();
        v148 = v211;
        v128(v211, v30);
        (v133)(v148, v147, v30);
      }

      v149 = v145 % 48;
      (v216)(v212, v211, v30);
      v150 = v202;
      result = sub_1D2112BFC();
      if (v149 < 0)
      {
        goto LABEL_72;
      }

      *&v150[*(v210 + 20)] = qword_1F4D9E420[v149 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v215 = sub_1D20B720C(0, v215[2] + 1, 1, v215);
      }

      v151 = v203;
      v153 = v215[2];
      v152 = v215[3];
      if (v153 >= v152 >> 1)
      {
        v215 = sub_1D20B720C((v152 > 1), v153 + 1, 1, v215);
      }

      v128(v211, v30);
      v128(v151, v30);
      v154 = v215;
      v215[2] = v153 + 1;
      result = sub_1D21071D4(v202, v154 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v153, type metadata accessor for HSGuidanceValue);
      v114 = __OFADD__(v126++, 1);
      v69 = v199;
      v70 = v200;
      v122 = v204;
      v117 = v209;
      if (v114)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    v167 = v175;
    *v175 = 0xD00000000000001BLL;
    v167[1] = 0x80000001D211A5C0;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v128(v143, v30);
    v168 = *(v131 + 8);
    v168(v177, v130);
    v168(v178, v130);
    sub_1D20A862C(v191, &qword_1EC6C7280, &qword_1D21149E0);
    v56 = v167;
LABEL_67:
    v66 = v183;
    return sub_1D21071D4(v56, v66, type metadata accessor for HSGuidanceError);
  }

  v78 = v187;
  sub_1D2112C0C();
  v211 = *(v77 + 36);
  result = sub_1D2112BDC();
  v80 = v197;
  if (v197)
  {
    v81 = v197;
    v82 = v215;
    v83 = &v71[*(v215 + 11)];
    v84 = *(v195 + 48);
    v86 = v68[4];
    v85 = v68 + 4;
    (v86)(&v84[v83], v78, v30);
    v189 = *(v82 + 9);
    v208 = v86;
    (v86)(&v189[v71], v211 + v78, v30);
    v182 = *(v82 + 10);
    *&v71[v182] = v81;
    v202 = v84;
    (v216)(v71, &v84[v83], v30);
    v87 = 0;
    *v83 = 0;
    v203 = v83;
    *(v83 + 8) = 0;
    v211 = (v85 - 3);
    v181 = v85 + 1;
    v191 = v85 + 3;
    v187 = (v209 + 32);
    v215 = MEMORY[0x1E69E7CC0];
    v88 = v212;
    v199 = v85 - 2;
    while (1)
    {
      v89 = v204;
      (v216)(v204, &v202[v203], v30);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (v80 <= 0)
      {
        if (sub_1D211379C())
        {
LABEL_13:
          v90 = *v211;
          (*v211)(v89, v30);
          v91 = 1;
          v92 = v210;
          v93 = v190;
          v94 = v196;
          goto LABEL_16;
        }
      }

      else if (sub_1D211378C())
      {
        goto LABEL_13;
      }

      v95 = v203;
      v96 = v85;
      v97 = v200;
      sub_1D20A8580(v203, v200, &qword_1EC6C7278, &unk_1D2115720);
      v98 = *(v195 + 48);
      sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
      v99 = sub_1D2113B1C();
      v101 = v100;
      v90 = *v211;
      v102 = &v97[v98];
      v85 = v96;
      v88 = v212;
      (*v211)(v102, v30);
      *v95 = v99;
      *(v95 + 8) = v101 & 1;
      (*v181)(&v202[v95], v88, v30);
      v94 = v196;
      (v208)(v196, v204, v30);
      v91 = 0;
      v92 = v210;
      v93 = v190;
LABEL_16:
      (*v191)(v94, v91, 1, v30);
      if (v205(v94, 1, v30) == 1)
      {
        v130 = v186;
        v155 = &v218;
        goto LABEL_63;
      }

      v103 = v94;
      v104 = v214;
      (v208)(v214, v103, v30);
      result = sub_1D20FDFE4(v104);
      if (v105)
      {

        *v93 = 0xD00000000000001BLL;
        v93[1] = 0x80000001D211A5C0;
        swift_storeEnumTagMultiPayload();
        sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
        swift_willThrowTypedImpl();
        v90(v214, v30);
        v156 = *(v192 + 8);
        v157 = v186;
        v156(v177, v186);
        v156(v178, v157);
        sub_1D20A862C(v198, &qword_1EC6C7280, &qword_1D21149E0);
LABEL_66:
        v56 = v93;
        goto LABEL_67;
      }

      v106 = *(v209 + 16);
      if (v207)
      {
        v107 = v194;
        if (!v106)
        {
          goto LABEL_74;
        }

        v108 = v87 % v106;
      }

      else
      {
        v109 = v184;
        v107 = v194;
        if (!v106)
        {
          *v184 = 0xD000000000000029;
          v109[1] = 0x80000001D211A5E0;
          v169 = v109;
          swift_storeEnumTagMultiPayload();
          sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
          swift_willThrowTypedImpl();
          v90(v214, v30);
          v170 = *(v192 + 8);
          v171 = v186;
          v170(v177, v186);
          v170(v178, v171);
          sub_1D20A862C(v198, &qword_1EC6C7280, &qword_1D21149E0);

          sub_1D21071D4(v169, v93, type metadata accessor for HSGuidanceError);
          goto LABEL_66;
        }

        v110 = result / (v81 / 60.0);
        if (COERCE__INT64(fabs(v110)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_75;
        }

        if (v110 <= -9.22337204e18)
        {
          goto LABEL_76;
        }

        if (v110 >= 9.22337204e18)
        {
          goto LABEL_77;
        }

        v108 = v110 % v106;
      }

      (v216)(v107, v214, v30);
      if (!v87 && v193 == 5)
      {
        sub_1D21130DC();
        v92 = v210;
        v90(v107, v30);
        (v208)(v107, v88, v30);
      }

      (v216)(v88, v107, v30);
      result = sub_1D2112BFC();
      if ((v108 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v108 >= *(v209 + 16))
      {
        goto LABEL_70;
      }

      *(v213 + *(v92 + 20)) = *&v187[8 * v108];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v215 = sub_1D20B720C(0, v215[2] + 1, 1, v215);
      }

      v112 = v215[2];
      v111 = v215[3];
      if (v112 >= v111 >> 1)
      {
        v215 = sub_1D20B720C((v111 > 1), v112 + 1, 1, v215);
      }

      v90(v107, v30);
      v90(v214, v30);
      v113 = v215;
      v215[2] = v112 + 1;
      result = sub_1D21071D4(v213, v113 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v112, type metadata accessor for HSGuidanceValue);
      v114 = __OFADD__(v87++, 1);
      v80 = v197;
      if (v114)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1D20FB87C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_1D2112E7C();
  v45 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D211321C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D21132EC();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_1D211335C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  sub_1D21132FC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D20A862C(v12, &qword_1EC6C7298, &unk_1D21149F0);
    v20 = sub_1D211319C();
    return (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
  }

  v42 = v1;
  (*(v14 + 32))(v19, v12, v13);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969868], v4);
  v22 = v13;
  v23 = v46;
  sub_1D211322C();
  (*(v5 + 8))(v7, v4);
  v24 = *(v14 + 16);
  v40 = v22;
  v41 = v19;
  v24(v17, v19, v22);
  v25 = v23;
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v26 = sub_1D21132CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D2116DB0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6969A88], v26);
  v32(v31 + v28, *MEMORY[0x1E6969A98], v26);
  v32(v31 + 2 * v28, *MEMORY[0x1E6969A00], v26);
  sub_1D20BFD3C(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  sub_1D2112E1C();
  sub_1D2112E2C();
  v33 = sub_1D2112E4C();
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  result = -v35;
  if (__OFSUB__(0, v35))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D2112E5C();
  v36 = sub_1D2112D8C();
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  result = -v38;
  if (__OFSUB__(0, v38))
  {
    goto LABEL_14;
  }

  sub_1D2112D9C();
  sub_1D211328C();
  (*(v45 + 8))(v3, v42);
  (*(v43 + 8))(v25, v44);
  return (*(v14 + 8))(v41, v40);
}

uint64_t HSCleanGuidanceThresholds.init(applicableOver:useEnergy:avoidEnergy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1D2112C2C();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t HSGuidanceValue.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D2112C2C();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for HSGuidanceValue(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t HSGuidanceForecast.init(type:thresholds:interval:values:validInterval:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  *(a6 + 8) = a2;
  v10 = type metadata accessor for HSGuidanceForecast(0);
  v11 = v10[6];
  v12 = sub_1D2112C2C();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), a6 + v11, a3, v12);
  *(a6 + v10[7]) = a4;
  v13 = a6 + v10[8];

  return v15(v13, a5, v12);
}

uint64_t HSHistoricalGuidance.init(interval:values:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2112C2C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HSHistoricalGuidance(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1D20FC0FC(uint64_t result, uint64_t a2)
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

uint64_t sub_1D20FC158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v7 = *(a1 + i + 48);
      v8 = *(a1 + i + 56);
      v10 = *(a1 + i + 64);
      v9 = *(a1 + i + 72);
      v11 = *(a2 + i + 48);
      v12 = *(a2 + i + 56);
      v14 = *(a2 + i + 64);
      v13 = *(a2 + i + 72);
      v15 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v15 && (sub_1D2113E2C() & 1) == 0)
      {
        break;
      }

      if (v7 == v11 && v8 == v12)
      {
        if (v10 != v14 || v9 != v13)
        {
          return 0;
        }
      }

      else
      {
        v17 = sub_1D2113E2C();
        result = 0;
        if ((v17 & 1) == 0)
        {
          return result;
        }

        if (v10 != v14 || v9 != v13)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D20FC26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v13 = MEMORY[0x1EEE9AC00](v77);
  v76 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  v78 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  v17 = MEMORY[0x1EEE9AC00](v78);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v61 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_48:
    v59 = 0;
    return v59 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v72 = v4;
  v62 = v12;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = 0;
  v67 = a2 + v24;
  v73 = v23;
  v74 = (v5 + 48);
  v64 = (v5 + 32);
  v65 = v7;
  v66 = (v5 + 8);
  v68 = *(v20 + 72);
  v69 = v25;
  v27 = v76;
  v71 = v19;
  while (1)
  {
    v28 = v68 * v26;
    result = sub_1D2107AD8(v69 + v68 * v26, v22, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    if (v26 == v73)
    {
      goto LABEL_51;
    }

    v70 = v26;
    result = sub_1D2107AD8(v67 + v28, v19, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    v30 = v74;
    if (*v22 != *v19)
    {
      goto LABEL_47;
    }

    v31 = *(v22 + 1);
    v32 = *(v19 + 1);
    v33 = *(v31 + 16);
    if (v33 != *(v32 + 16))
    {
      goto LABEL_47;
    }

    if (v33 && v31 != v32)
    {
      break;
    }

LABEL_13:
    v35 = *(v78 + 28);
    v36 = v19;
    v37 = *(v77 + 48);
    sub_1D20A8580(&v22[v35], v16, &qword_1EC6C7BD8, &qword_1D2119238);
    sub_1D20A8580(&v36[v35], &v16[v37], &qword_1EC6C7BD8, &qword_1D2119238);
    v38 = *v30;
    v39 = v72;
    if ((*v30)(v16, 1, v72) == 1)
    {
      if (v38(&v16[v37], 1, v39) != 1)
      {
        goto LABEL_46;
      }

      sub_1D20A862C(v16, &qword_1EC6C7BD8, &qword_1D2119238);
      v19 = v71;
    }

    else
    {
      v40 = v62;
      sub_1D20A8580(v16, v62, &qword_1EC6C7BD8, &qword_1D2119238);
      if (v38(&v16[v37], 1, v39) == 1)
      {
        v60 = v40;
        goto LABEL_44;
      }

      v41 = v65;
      (*v64)(v65, &v16[v37], v39);
      sub_1D20FE9D8(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v63 = sub_1D21137AC();
      v42 = *v66;
      v43 = v41;
      v27 = v76;
      (*v66)(v43, v39);
      v42(v40, v39);
      sub_1D20A862C(v16, &qword_1EC6C7BD8, &qword_1D2119238);
      v19 = v71;
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v44 = *(v78 + 32);
    v45 = v19;
    v46 = *(v77 + 48);
    sub_1D20A8580(&v22[v44], v27, &qword_1EC6C7BD8, &qword_1D2119238);
    sub_1D20A8580(&v45[v44], v27 + v46, &qword_1EC6C7BD8, &qword_1D2119238);
    v47 = v72;
    if (v38(v27, 1, v72) == 1)
    {
      if (v38((v27 + v46), 1, v47) != 1)
      {
        v16 = v27;
        goto LABEL_46;
      }

      sub_1D20A862C(v27, &qword_1EC6C7BD8, &qword_1D2119238);
      v19 = v71;
    }

    else
    {
      sub_1D20A8580(v27, v75, &qword_1EC6C7BD8, &qword_1D2119238);
      if (v38((v27 + v46), 1, v47) == 1)
      {
        v60 = v75;
        v16 = v27;
LABEL_44:
        (*v66)(v60, v72);
LABEL_46:
        v19 = v71;
        sub_1D20A862C(v16, &qword_1EC6C7BE0, &qword_1D2119240);
LABEL_47:
        sub_1D2107B40(v19, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
        sub_1D2107B40(v22, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
        goto LABEL_48;
      }

      v53 = (v27 + v46);
      v54 = v65;
      (*v64)(v65, v53, v47);
      sub_1D20FE9D8(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v55 = v75;
      v56 = sub_1D21137AC();
      v57 = *v66;
      v58 = v54;
      v27 = v76;
      (*v66)(v58, v47);
      v57(v55, v47);
      sub_1D20A862C(v27, &qword_1EC6C7BD8, &qword_1D2119238);
      v19 = v71;
      if ((v56 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    sub_1D211348C();
    sub_1D20FE9D8(&qword_1EC6C7848, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = sub_1D21137AC();
    sub_1D2107B40(v19, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    sub_1D2107B40(v22, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    if (v59)
    {
      v26 = v70 + 1;
      if (v70 + 1 != v73)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  v48 = (v31 + 32);
  v49 = (v32 + 40);
  while (v33)
  {
    v51 = *v48;
    v48 += 2;
    v50 = v51;
    v52 = *(v49 - 1);
    if (*v49 == 1)
    {
      if (v52 > 1)
      {
        if (v52 == 2)
        {
          if (v50 != 2)
          {
            goto LABEL_47;
          }
        }

        else if (v50 != 3)
        {
          goto LABEL_47;
        }
      }

      else if (v52)
      {
        if (v50 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v50)
      {
        goto LABEL_47;
      }
    }

    else if (v50 != v52)
    {
      goto LABEL_47;
    }

    v49 += 16;
    if (!--v33)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1D20FCAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            if (v5 != 2)
            {
              return 0;
            }
          }

          else if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v5 != 1)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D20FCB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSGuidanceValue(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v13, v10, type metadata accessor for HSGuidanceValue);
    if (!v11)
    {
      break;
    }

    sub_1D2107AD8(v14, v7, type metadata accessor for HSGuidanceValue);
    if ((sub_1D2112BCC() & 1) == 0)
    {
      sub_1D2107B40(v7, type metadata accessor for HSGuidanceValue);
      sub_1D2107B40(v10, type metadata accessor for HSGuidanceValue);
      return 0;
    }

    v17 = *&v10[*(v4 + 20)];
    sub_1D2107B40(v10, type metadata accessor for HSGuidanceValue);
    v18 = *&v7[*(v4 + 20)];
    sub_1D2107B40(v7, type metadata accessor for HSGuidanceValue);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20FCD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v13, v10, type metadata accessor for HSCleanGuidanceThresholds);
    if (!v11)
    {
      break;
    }

    sub_1D2107AD8(v14, v7, type metadata accessor for HSCleanGuidanceThresholds);
    if ((sub_1D2112BCC() & 1) == 0 || *&v10[*(v4 + 20)] != *&v7[*(v4 + 20)])
    {
      sub_1D2107B40(v7, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2107B40(v10, type metadata accessor for HSCleanGuidanceThresholds);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_1D2107B40(v10, type metadata accessor for HSCleanGuidanceThresholds);
    v18 = *&v7[*(v4 + 24)];
    sub_1D2107B40(v7, type metadata accessor for HSCleanGuidanceThresholds);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20FCF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyWindow(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
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
        sub_1D2107AD8(v13, v10, type metadata accessor for EnergyWindow);
        sub_1D2107AD8(v14, v7, type metadata accessor for EnergyWindow);
        v16 = static EnergyWindow.== infix(_:_:)();
        sub_1D2107B40(v7, type metadata accessor for EnergyWindow);
        sub_1D2107B40(v10, type metadata accessor for EnergyWindow);
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

uint64_t sub_1D20FD114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D2113E2C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D20FD1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v13, v10, type metadata accessor for GridGuidance);
    if (!v11)
    {
      break;
    }

    sub_1D2107AD8(v14, v7, type metadata accessor for GridGuidance);
    if ((sub_1D211315C() & 1) == 0 || (sub_1D211315C() & 1) == 0)
    {
      sub_1D2107B40(v7, type metadata accessor for GridGuidance);
      sub_1D2107B40(v10, type metadata accessor for GridGuidance);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_1D2107B40(v10, type metadata accessor for GridGuidance);
    v18 = *&v7[*(v4 + 24)];
    sub_1D2107B40(v7, type metadata accessor for GridGuidance);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G11TimeService0G7SessionAA010HSGuidanceE0VAA0pH0O_SSAA06HSRateL0VSgAA0mN0CSgSo12NSURLSessionCtYaAA0P5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  type metadata accessor for HSGuidanceError(0);
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *(v8 + 40) = *a2;
  v16 = swift_task_alloc();
  *(v8 + 32) = v16;
  *v16 = v8;
  v16[1] = sub_1D20FD4D4;

  return sub_1D20C0CFC(a1, a3, a4, (v8 + 40), a5, a7, v15);
}

uint64_t sub_1D20FD4D4()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D20FD60C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D20FD60C()
{
  sub_1D21071D4(v0[3], v0[2], type metadata accessor for HSGuidanceError);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D20FD690@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_1D2112E7C();
  v45 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D211321C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D21132EC();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_1D211335C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  sub_1D21132FC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D20A862C(v12, &qword_1EC6C7298, &unk_1D21149F0);
    v20 = sub_1D211319C();
    return (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
  }

  v42 = v1;
  (*(v14 + 32))(v19, v12, v13);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969868], v4);
  v22 = v13;
  v23 = v46;
  sub_1D211322C();
  (*(v5 + 8))(v7, v4);
  v24 = *(v14 + 16);
  v40 = v22;
  v41 = v19;
  v24(v17, v19, v22);
  v25 = v23;
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v26 = sub_1D21132CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D2116DB0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6969A88], v26);
  v32(v31 + v28, *MEMORY[0x1E6969A98], v26);
  v32(v31 + 2 * v28, *MEMORY[0x1E6969A00], v26);
  sub_1D20BFD3C(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  sub_1D2112E1C();
  sub_1D2112E2C();
  v33 = sub_1D2112E4C();
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  result = -v35;
  if (__OFSUB__(0, v35))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D2112E5C();
  v36 = sub_1D2112D8C();
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  result = -v38;
  if (__OFSUB__(0, v38))
  {
    goto LABEL_14;
  }

  sub_1D2112D9C();
  sub_1D211328C();
  (*(v45 + 8))(v3, v42);
  (*(v43 + 8))(v25, v44);
  return (*(v14 + 8))(v41, v40);
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G7SessionAA010HSGuidanceE0VAA0nH0O_SSAA06HSRateL0VSgSo12NSURLSessionCtYaAA0N5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  type metadata accessor for HSGuidanceError(0);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 81) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D20FDD48, 0, 0);
}

uint64_t sub_1D20FDD48()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = *(v0 + 81);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D20FDE28;
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_1D20C0CFC(v7, v5, v6, (v0 + 80), v3, v4, v2);
}

uint64_t sub_1D20FDE28()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D20FDF60, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D20FDF60()
{
  sub_1D21071D4(v0[8], v0[7], type metadata accessor for HSGuidanceError);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D20FDFE4(uint64_t a1)
{
  v39 = a1;
  v1 = sub_1D2112E7C();
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D211321C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D21132EC();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_1D211335C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  sub_1D21132FC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D20A862C(v12, &qword_1EC6C7298, &unk_1D21149F0);
    return 0;
  }

  v36 = v1;
  (*(v14 + 32))(v19, v12, v13);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969868], v3);
  sub_1D211322C();
  (*(v4 + 8))(v6, v3);
  (*(v14 + 16))(v17, v19, v13);
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v20 = sub_1D21132CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D2115280;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, *MEMORY[0x1E6969A58], v20);
  v26(v25 + v22, *MEMORY[0x1E6969A88], v20);
  sub_1D20BFD3C(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v27 = v40;
  sub_1D211324C();

  v28 = sub_1D2112DCC();
  if (v29)
  {
    (*(v41 + 8))(v27, v36);
    (*(v37 + 8))(v9, v38);
    (*(v14 + 8))(v19, v13);
    return 0;
  }

  v30 = v28;
  v31 = sub_1D2112E1C();
  v33 = v32;
  (*(v41 + 8))(v27, v36);
  (*(v37 + 8))(v9, v38);
  result = (*(v14 + 8))(v19, v13);
  if (v33)
  {
    return 0;
  }

  v35 = 60 * v30;
  if ((v30 * 60) >> 64 != (60 * v30) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = v35 + v31;
  if (__OFADD__(v35, v31))
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t _s12HomeServices06EnergyB0V26generateGuidanceValueIndex14strideInterval11minuteOfDay19guidanceRatingCountSiSd_S2itAA15HSGuidanceErrorOYKFZ(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a2 <= 0)
  {
    *a3 = 0xD000000000000029;
    a3[1] = 0x80000001D211A5E0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    return swift_willThrowTypedImpl();
  }

  v4 = result / (a4 / 60.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4 % a2;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D20FE6E4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1D211319C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v22 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  sub_1D20D4E80(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D20A862C(v5, &qword_1EC6C7248, &qword_1D2114A80);
    *a1 = 0xD00000000000001DLL;
    a1[1] = 0x80000001D211B9C0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v7 + 32))(v18, v5, v6);
    sub_1D21130DC();
    v20 = *(v7 + 16);
    v20(v13, v18, v6);
    v20(v10, v16, v6);
    sub_1D2112BEC();
    v21 = *(v7 + 8);
    v21(v16, v6);
    return (v21)(v18, v6);
  }
}

uint64_t sub_1D20FE9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12HomeServices06EnergyB0V26generateHSGuidanceForecast11currentTime10thresholds4type12valueRatings10forceIndex7endDate14strideInterval12guidanceTypeAA0eF0V10Foundation0P0V_SayAA25HSCleanGuidanceThresholdsVGAN04MockT0OSaySdGSgSbAQSgSiAA0eT0OtAA0E5ErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, unsigned __int8 *a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v156 = a6;
  v162 = a5;
  v168 = a4;
  v143 = a2;
  v142 = a8;
  v166 = type metadata accessor for HSGuidanceValue(0);
  v161 = *(v166 - 8);
  v12 = MEMORY[0x1EEE9AC00](v166);
  v167 = (&v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v172 = (&v136 - v14);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v154);
  v165 = &v136 - v15;
  v16 = sub_1D211319C();
  v174 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v170 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v136 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v163 = &v136 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v175 = &v136 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v173 = &v136 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v171 = &v136 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v164 = (&v136 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v160 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v155 = &v136 - v33;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v136 - v34;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v35 = MEMORY[0x1EEE9AC00](v176);
  v153 = (&v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v157 = (&v136 - v37);
  v144 = type metadata accessor for HSGuidanceError(0);
  v38 = MEMORY[0x1EEE9AC00](v144);
  v147 = (&v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v136 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v136 - v46);
  v48 = sub_1D2112C2C();
  v145 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v136 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a3;
  v52 = *a7;
  v53 = v177;
  sub_1D20FE6E4(v47, v50);
  if (v53)
  {
    return sub_1D21071D4(v47, a9, type metadata accessor for HSGuidanceError);
  }

  v148 = v42;
  v137 = v45;
  v159 = v51;
  v139 = v52;
  v140 = 0;
  v55 = v174;
  v158 = v50;
  v149 = a1;
  v141 = v48;
  v56 = v150;
  if (v168)
  {
    sub_1D2112C0C();
    v177 = *(v152 + 36);
    result = sub_1D2112BDC();
    v57 = v156;
    v58 = v176;
    if (v156)
    {
      v59 = v157;
      v60 = v157 + *(v176 + 11);
      v163 = *(v154 + 48);
      v61 = *(v55 + 32);
      v61(&v163[v60], v56, v16);
      v151 = *(v58 + 9);
      v169 = (v55 + 32);
      v167 = v61;
      v61(v151 + v59, &v177[v56], v16);
      v147 = *(v58 + 10);
      *(v147 + v59) = v57;
      v63 = *(v55 + 16);
      v62 = v55 + 16;
      v138 = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v177 = v63;
      (v63)(v59, &v163[v60], v16);
      v64 = 0;
      *v60 = 0;
      v160 = v60;
      *(v60 + 8) = 0;
      v170 = (v62 - 8);
      v146 = (v62 + 24);
      v153 = (v62 + 40);
      v152 = v62 + 32;
      v150 = (v168 + 32);
      v176 = MEMORY[0x1E69E7CC0];
      v65 = v57 / 60.0;
      v66 = v162;
      v67 = v161;
      v68 = v164;
      v174 = v62;
      while (1)
      {
        (v177)(v68, &v163[v160], v16);
        sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        if (v57 <= 0)
        {
          if (sub_1D211379C())
          {
LABEL_8:
            v69 = *v170;
            (*v170)(v68, v16);
            v70 = 1;
            v71 = v171;
            v72 = v173;
            v73 = v155;
            goto LABEL_11;
          }
        }

        else if (sub_1D211378C())
        {
          goto LABEL_8;
        }

        v74 = v160;
        v75 = v165;
        sub_1D20A8580(v160, v165, &qword_1EC6C7278, &unk_1D2115720);
        v76 = *(v154 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
        v77 = v171;
        v78 = sub_1D2113B1C();
        v80 = v79;
        v69 = *v170;
        v81 = v75 + v76;
        v66 = v162;
        (*v170)(v81, v16);
        *v74 = v78;
        v71 = v77;
        v67 = v161;
        *(v74 + 8) = v80 & 1;
        (*v146)(&v163[v74], v71, v16);
        v73 = v155;
        v167(v155, v164, v16);
        v70 = 0;
        v72 = v173;
LABEL_11:
        (*v153)(v73, v70, 1, v16);
        if ((*v152)(v73, 1, v16) == 1)
        {
          v125 = v149;
          v126 = v157;
          goto LABEL_58;
        }

        v167(v72, v73, v16);
        result = sub_1D20FDFE4(v72);
        if (v82)
        {

          v127 = v137;
          *v137 = 0xD00000000000001BLL;
          v127[1] = 0x80000001D211A5C0;
          swift_storeEnumTagMultiPayload();
          sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
          swift_willThrowTypedImpl();
          (v69)(v72, v16);
          (*(v145 + 8))(v158, v141);
          sub_1D20A862C(v157, &qword_1EC6C7280, &qword_1D21149E0);
          v47 = v127;
          return sub_1D21071D4(v47, a9, type metadata accessor for HSGuidanceError);
        }

        v83 = *(v168 + 16);
        if (v66)
        {
          if (!v83)
          {
            goto LABEL_66;
          }

          v84 = v64 % v83;
        }

        else
        {
          v85 = v148;
          if (!v83)
          {
            *v148 = 0xD000000000000029;
            v85[1] = 0x80000001D211A5E0;
            v135 = v85;
            swift_storeEnumTagMultiPayload();
            sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
            swift_willThrowTypedImpl();
            (v69)(v72, v16);
            (*(v145 + 8))(v158, v141);
            sub_1D20A862C(v157, &qword_1EC6C7280, &qword_1D21149E0);

            v47 = v137;
            sub_1D21071D4(v135, v137, type metadata accessor for HSGuidanceError);
            return sub_1D21071D4(v47, a9, type metadata accessor for HSGuidanceError);
          }

          v86 = result / v65;
          if (COERCE__INT64(fabs(v86)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_67;
          }

          if (v86 <= -9.22337204e18)
          {
            goto LABEL_68;
          }

          if (v86 >= 9.22337204e18)
          {
            goto LABEL_69;
          }

          v84 = v86 % v83;
        }

        (v177)(v175, v173, v16);
        if (!v64 && v159 == 5)
        {
          sub_1D21130DC();
          v71 = v171;
          v87 = v175;
          (v69)(v175, v16);
          v167(v87, v71, v16);
        }

        (v177)(v71, v175, v16);
        result = sub_1D2112BFC();
        if ((v84 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v84 >= *(v168 + 16))
        {
          goto LABEL_62;
        }

        *(v172 + *(v166 + 20)) = *&v150[8 * v84];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_1D20B720C(0, v176[2] + 1, 1, v176);
        }

        v89 = v176[2];
        v88 = v176[3];
        if (v89 >= v88 >> 1)
        {
          v176 = sub_1D20B720C((v88 > 1), v89 + 1, 1, v176);
        }

        v69();
        (v69)(v173, v16);
        v90 = v176;
        v176[2] = v89 + 1;
        result = sub_1D21071D4(v172, v90 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v89, type metadata accessor for HSGuidanceValue);
        v91 = __OFADD__(v64++, 1);
        v57 = v156;
        v68 = v164;
        if (v91)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_73:
    __break(1u);
  }

  else
  {
    v92 = v158;
    sub_1D2112C0C();
    v177 = *(v152 + 36);
    v93 = v92;
    sub_1D2112BDC();
    v94 = v153;
    v95 = v153 + *(v176 + 11);
    v96 = *(v154 + 48);
    v97 = v55;
    v98 = (v55 + 32);
    v99 = *(v55 + 32);
    v99(&v96[v95], v56, v16);
    v168 = *(v176 + 9);
    v172 = v99;
    v173 = v98;
    v99(v94 + v168, &v177[v56], v16);
    v152 = *(v176 + 10);
    *(v94 + v152) = 0x409C200000000000;
    v100 = *(v97 + 16);
    v97 += 16;
    v138 = v97 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v177 = v100;
    (v100)(v94, &v96[v95], v16);
    v101 = 0;
    v175 = (v97 - 8);
    *v95 = 0;
    v151 = (v97 + 24);
    v164 = (v97 + 40);
    v174 = v97;
    v157 = (v97 + 32);
    v176 = MEMORY[0x1E69E7CC0];
    *(v95 + 8) = 0;
    v102 = v160;
    v156 = v95;
    v155 = v96;
    while (1)
    {
      v103 = v163;
      (v177)(v163, &v96[v95], v16);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1D211378C())
      {
        v104 = *v175;
        (*v175)(v103, v16);
        v105 = 1;
        v106 = v171;
        v107 = v172;
      }

      else
      {
        sub_1D20A8580(v95, v165, &qword_1EC6C7278, &unk_1D2115720);
        v109 = *(v154 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
        v110 = v171;
        v111 = sub_1D2113B1C();
        v113 = v112;
        v104 = *v175;
        (*v175)(v165 + v109, v16);
        *v95 = v111;
        v106 = v110;
        v93 = v158;
        *(v95 + 8) = v113 & 1;
        (*v151)(&v96[v95], v106, v16);
        v102 = v160;
        v107 = v172;
        v172(v160, v163, v16);
        v105 = 0;
      }

      v108 = v169;
      (*v164)(v102, v105, 1, v16);
      if ((*v157)(v102, 1, v16) == 1)
      {
        break;
      }

      v107(v108, v102, v16);
      result = sub_1D20FDFE4(v108);
      if (v114)
      {

        v134 = v147;
        *v147 = 0xD00000000000001BLL;
        v134[1] = 0x80000001D211A5C0;
        swift_storeEnumTagMultiPayload();
        sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
        swift_willThrowTypedImpl();
        v104(v108, v16);
        (*(v145 + 8))(v93, v141);
        sub_1D20A862C(v153, &qword_1EC6C7280, &qword_1D21149E0);
        v47 = v134;
        return sub_1D21071D4(v47, a9, type metadata accessor for HSGuidanceError);
      }

      v115 = v101;
      v116 = v159;
      if ((v162 & 1) == 0)
      {
        v117 = result / 30.0;
        if (COERCE__INT64(fabs(v117)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_70;
        }

        if (v117 <= -9.22337204e18)
        {
          goto LABEL_71;
        }

        if (v117 >= 9.22337204e18)
        {
          goto LABEL_72;
        }

        v115 = v117;
      }

      (v177)(v170, v169, v16);
      if (!v101 && v116 == 5)
      {
        sub_1D21130DC();
        v118 = v170;
        v106 = v171;
        v104(v170, v16);
        v107(v118, v106, v16);
      }

      v119 = v106;
      v120 = v115 % 48;
      (v177)(v119, v170, v16);
      v121 = v167;
      result = sub_1D2112BFC();
      if (v120 < 0)
      {
        goto LABEL_64;
      }

      *(v121 + *(v166 + 20)) = qword_1F4D9E420[v120 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_1D20B720C(0, v176[2] + 1, 1, v176);
      }

      v93 = v158;
      v123 = v176[2];
      v122 = v176[3];
      if (v123 >= v122 >> 1)
      {
        v176 = sub_1D20B720C((v122 > 1), v123 + 1, 1, v176);
      }

      v104(v170, v16);
      v104(v169, v16);
      v124 = v176;
      v176[2] = v123 + 1;
      result = sub_1D21071D4(v167, v124 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v123, type metadata accessor for HSGuidanceValue);
      v91 = __OFADD__(v101++, 1);
      v95 = v156;
      v96 = v155;
      if (v91)
      {
LABEL_65:
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
        goto LABEL_73;
      }
    }

    v126 = v153;
    v125 = v149;
LABEL_58:
    sub_1D20A862C(v126, &qword_1EC6C7280, &qword_1D21149E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AD0, &qword_1D2118488);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1D2114850;
    *(v128 + 56) = MEMORY[0x1E69E6158];
    *(v128 + 32) = 0xD000000000000021;
    *(v128 + 40) = 0x80000001D211B930;
    sub_1D2113EBC();

    v129 = type metadata accessor for HSGuidanceForecast(0);
    v130 = v145;
    v131 = v142;
    v132 = v158;
    v133 = v141;
    (*(v145 + 16))(v142 + *(v129 + 24), v158, v141);
    (v177)(v171, v125, v16);
    sub_1D2112BFC();
    (*(v130 + 8))(v132, v133);
    *v131 = v139;
    *(v131 + 8) = v143;
    *(v131 + *(v129 + 28)) = v176;
  }

  return result;
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forIntervalAA012HSHistoricalF0VSS_10Foundation04DateK0VtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2112C2C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_1D211319C();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for HSGuidanceError(0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D21002F8, 0, 0);
}

uint64_t sub_1D21002F8()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedSession];
  v0[29] = v1;
  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1D211377C())
  {
    v3 = v0[24];
    v2 = v0[25];
    v5 = v0[13];
    v4 = v0[14];
    (*(v4 + 8))(v0[23], v5);
    (*(v4 + 16))(v3, v2, v5);
  }

  else
  {
    (*(v0[14] + 32))(v0[24], v0[23], v0[13]);
  }

  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v6 = v0[24];
    v7 = v0[22];
    v9 = v0[13];
    v8 = v0[14];
    (*(v8 + 8))(v0[21], v9);
    (*(v8 + 16))(v7, v6, v9);
  }

  else
  {
    (*(v0[14] + 32))(v0[22], v0[21], v0[13]);
  }

  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  sub_1D20FB87C(v12);
  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v0[28];
    v15 = v0[25];
    v16 = v0[24];
    v17 = v0[22];
    v19 = v0[13];
    v18 = v0[14];
    sub_1D20A862C(v0[12], &qword_1EC6C7248, &qword_1D2114A80);
    *v14 = 0xD00000000000001FLL;
    v14[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();

    v20 = *(v18 + 8);
    v20(v17, v19);
    v20(v16, v19);
    v20(v15, v19);
LABEL_18:
    sub_1D21071D4(v0[28], v0[6], type metadata accessor for HSGuidanceError);

    v39 = v0[1];

    return v39();
  }

  v21 = v0 + 11;
  v22 = v0[11];
  v23 = v0[13];
  v55 = *(v0[14] + 32);
  v56 = v1;
  v55(v0[20], v0[12], v23);
  sub_1D20FD690(v22);
  if (v13(v22, 1, v23) == 1)
  {
LABEL_17:
    v30 = *v21;
    v31 = v0[28];
    v32 = v0[25];
    v33 = v0[24];
    v34 = v0[22];
    v35 = v0[20];
    v37 = v0[13];
    v36 = v0[14];
    sub_1D20A862C(v30, &qword_1EC6C7248, &qword_1D2114A80);
    *v31 = 0xD00000000000001CLL;
    v31[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();

    v38 = *(v36 + 8);
    v38(v35, v37);
    v38(v34, v37);
    v38(v33, v37);
    v38(v32, v37);
    goto LABEL_18;
  }

  v21 = v0 + 10;
  v24 = v0[25];
  v25 = v0[19];
  v52 = v0[17];
  v53 = v0[10];
  v27 = v0[13];
  v26 = v0[14];
  v55(v25, v0[11], v27);
  if (sub_1D211377C())
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  v54 = *(v26 + 16);
  v54(v52, v28, v27);
  sub_1D20FB87C(v53);
  v29 = *(v26 + 8);
  v0[30] = v29;
  v0[31] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v52, v27);
  if (v13(v53, 1, v27) == 1)
  {
    v29(v0[19], v0[13]);
    goto LABEL_17;
  }

  v41 = v0[20];
  v42 = v0[18];
  v44 = v0[15];
  v43 = v0[16];
  v45 = v0[13];
  v55(v42, v0[10], v45);
  v54(v43, v41, v45);
  v54(v44, v42, v45);
  sub_1D2112BEC();
  v46 = swift_task_alloc();
  v0[32] = v46;
  *v46 = v0;
  v46[1] = sub_1D2100A64;
  v47 = v0[27];
  v48 = v0[9];
  v49 = v0[3];
  v50 = v0[4];
  v51 = v0[2];

  return sub_1D20C4B9C(v51, v49, v50, v48, v56, v47);
}

uint64_t sub_1D2100A64()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D2100D68;
  }

  else
  {
    v5 = sub_1D2100BD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2100BD0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 104);

  v1(v6, v8);
  v1(v7, v8);
  v1(v5, v8);
  v1(v4, v8);
  v1(v2, v8);
  v1(v3, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D2100D68()
{
  v1 = *(v0 + 240);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 104);

  v1(v7, v8);
  v1(v6, v8);
  v1(v5, v8);
  v1(v4, v8);
  v1(v3, v8);
  v1(v2, v8);
  sub_1D21071D4(v11, v12, type metadata accessor for HSGuidanceError);
  sub_1D21071D4(*(v0 + 224), *(v0 + 48), type metadata accessor for HSGuidanceError);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forInterval0G11TimeService0G7SessionAA012HSHistoricalF0VSS_10Foundation04DateK0VAA0lM0CSo12NSURLSessionCtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = type metadata accessor for HSGuidanceError(0);
  v7[9] = swift_task_alloc();
  v8 = sub_1D2112C2C();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = sub_1D211319C();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2101160, 0, 0);
}

uint64_t sub_1D2101160(uint64_t a1)
{
  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1D211377C())
  {
    v3 = v1[27];
    v2 = v1[28];
    v5 = v1[16];
    v4 = v1[17];
    (*(v4 + 8))(v1[26], v5);
    (*(v4 + 16))(v3, v2, v5);
  }

  else
  {
    (*(v1[17] + 32))(v1[27], v1[26], v1[16]);
  }

  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v6 = v1[27];
    v7 = v1[25];
    v9 = v1[16];
    v8 = v1[17];
    (*(v8 + 8))(v1[24], v9);
    (*(v8 + 16))(v7, v6, v9);
  }

  else
  {
    (*(v1[17] + 32))(v1[25], v1[24], v1[16]);
  }

  v10 = v1[16];
  v11 = v1[17];
  v12 = v1[15];
  sub_1D20FB87C(v12);
  v13 = *(v11 + 48);
  v14 = v13(v12, 1, v10);
  v15 = v1[16];
  v16 = v1[17];
  if (v14 == 1)
  {
    v17 = v1[27];
    v18 = v1[28];
    v19 = v1[25];
    v20 = v1[7];
    sub_1D20A862C(v1[15], &qword_1EC6C7248, &qword_1D2114A80);
    *v20 = 0xD00000000000001FLL;
    v20[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v21 = *(v16 + 8);
    v21(v19, v15);
    v21(v17, v15);
    v21(v18, v15);
LABEL_16:

    v39 = v1[1];

    return v39();
  }

  v22 = v1 + 14;
  v23 = v1[14];
  v56 = *(v16 + 32);
  v56(v1[23], v1[15], v1[16]);
  sub_1D20FD690(v23);
  if (v13(v23, 1, v15) == 1)
  {
LABEL_15:
    v30 = *v22;
    v32 = v1[27];
    v31 = v1[28];
    v33 = v1[25];
    v34 = v1[23];
    v35 = v1[16];
    v36 = v1[17];
    v37 = v1[7];
    sub_1D20A862C(v30, &qword_1EC6C7248, &qword_1D2114A80);
    *v37 = 0xD00000000000001CLL;
    v37[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v38 = *(v36 + 8);
    v38(v34, v35);
    v38(v33, v35);
    v38(v32, v35);
    v38(v31, v35);
    goto LABEL_16;
  }

  v22 = v1 + 13;
  v24 = v1[28];
  v25 = v1[22];
  v54 = v1[20];
  v55 = v1[13];
  v27 = v1[16];
  v26 = v1[17];
  v56(v25, v1[14], v27);
  if (sub_1D211377C())
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  v53 = *(v26 + 16);
  v53(v54, v28, v27);
  sub_1D20FB87C(v55);
  v29 = *(v26 + 8);
  v1[29] = v29;
  v1[30] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v54, v27);
  if (v13(v55, 1, v27) == 1)
  {
    v29(v1[22], v1[16]);
    goto LABEL_15;
  }

  v41 = v1[23];
  v42 = v1[21];
  v44 = v1[18];
  v43 = v1[19];
  v45 = v1[16];
  v56(v42, v1[13], v45);
  v53(v43, v41, v45);
  v53(v44, v42, v45);
  sub_1D2112BEC();
  v46 = swift_task_alloc();
  v1[31] = v46;
  *v46 = v1;
  v46[1] = sub_1D2101830;
  v47 = v1[12];
  v48 = v1[9];
  v49 = v1[6];
  v50 = v1[3];
  v51 = v1[4];
  v52 = v1[2];

  return sub_1D20C4B9C(v52, v50, v51, v47, v49, v48);
}

uint64_t sub_1D2101830()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D2101B20;
  }

  else
  {
    v5 = sub_1D210199C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D210199C()
{
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[22];
  v7 = v0[16];
  v1(v0[21], v7);
  v1(v6, v7);
  v1(v5, v7);
  v1(v4, v7);
  v1(v3, v7);
  v1(v2, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D2101B20()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[16];
  v11 = v0[9];
  v8 = v0[7];
  v1(v0[21], v7);
  v1(v6, v7);
  v1(v5, v7);
  v1(v4, v7);
  v1(v2, v7);
  v1(v3, v7);
  sub_1D21071D4(v11, v8, type metadata accessor for HSGuidanceError);

  v9 = v0[1];

  return v9();
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forInterval0G7SessionAA012HSHistoricalF0VSS_10Foundation04DateK0VSo12NSURLSessionCtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D2112C2C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = sub_1D211319C();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for HSGuidanceError(0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2101EF8, 0, 0);
}

uint64_t sub_1D2101EF8(uint64_t a1)
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1D211377C())
  {
    v3 = v1[25];
    v2 = v1[26];
    v5 = v1[14];
    v4 = v1[15];
    (*(v4 + 8))(v1[24], v5);
    (*(v4 + 16))(v3, v2, v5);
  }

  else
  {
    (*(v1[15] + 32))(v1[25], v1[24], v1[14]);
  }

  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v6 = v1[25];
    v7 = v1[23];
    v9 = v1[14];
    v8 = v1[15];
    (*(v8 + 8))(v1[22], v9);
    (*(v8 + 16))(v7, v6, v9);
  }

  else
  {
    (*(v1[15] + 32))(v1[23], v1[22], v1[14]);
  }

  v10 = v1[14];
  v11 = v1[15];
  v12 = v1[13];
  sub_1D20FB87C(v12);
  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v1[29];
    v15 = v1[26];
    v16 = v1[25];
    v17 = v1[23];
    v18 = v1[14];
    v19 = v1[15];
    sub_1D20A862C(v1[13], &qword_1EC6C7248, &qword_1D2114A80);
    *v14 = 0xD00000000000001FLL;
    v14[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);
    v20(v15, v18);
LABEL_18:
    sub_1D21071D4(v1[29], v1[7], type metadata accessor for HSGuidanceError);

    v38 = v1[1];

    return v38();
  }

  v22 = v1 + 12;
  v21 = v1[12];
  v23 = v1[14];
  v55 = *(v1[15] + 32);
  v55(v1[21], v1[13], v23);
  sub_1D20FD690(v21);
  if (v13(v21, 1, v23) == 1)
  {
LABEL_17:
    v30 = v1[29];
    v31 = v1[26];
    v32 = v1[25];
    v33 = v1[23];
    v34 = v1[21];
    v35 = v1[14];
    v36 = v1[15];
    sub_1D20A862C(*v22, &qword_1EC6C7248, &qword_1D2114A80);
    *v30 = 0xD00000000000001CLL;
    v30[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v37 = *(v36 + 8);
    v37(v34, v35);
    v37(v33, v35);
    v37(v32, v35);
    v37(v31, v35);
    goto LABEL_18;
  }

  v22 = v1 + 11;
  v24 = v1[26];
  v25 = v1[20];
  v53 = v1[18];
  v54 = v1[11];
  v27 = v1[14];
  v26 = v1[15];
  v55(v25, v1[12], v27);
  if (sub_1D211377C())
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  v52 = *(v26 + 16);
  v52(v53, v28, v27);
  sub_1D20FB87C(v54);
  v29 = *(v26 + 8);
  v1[30] = v29;
  v1[31] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v53, v27);
  if (v13(v54, 1, v27) == 1)
  {
    v29(v1[20], v1[14]);
    goto LABEL_17;
  }

  v40 = v1[21];
  v41 = v1[19];
  v43 = v1[16];
  v42 = v1[17];
  v44 = v1[14];
  v55(v41, v1[11], v44);
  v52(v42, v40, v44);
  v52(v43, v41, v44);
  sub_1D2112BEC();
  v45 = swift_task_alloc();
  v1[32] = v45;
  *v45 = v1;
  v45[1] = sub_1D2102630;
  v46 = v1[28];
  v47 = v1[10];
  v48 = v1[6];
  v49 = v1[3];
  v50 = v1[4];
  v51 = v1[2];

  return sub_1D20C4B9C(v51, v49, v50, v47, v48, v46);
}

uint64_t sub_1D2102630()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D210292C;
  }

  else
  {
    v5 = sub_1D210279C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D210279C()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[20];
  v7 = v0[14];
  v1(v0[19], v7);
  v1(v6, v7);
  v1(v5, v7);
  v1(v4, v7);
  v1(v2, v7);
  v1(v3, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D210292C()
{
  v1 = v0[30];
  v2 = v0[28];
  v11 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[14];
  v1(v0[19], v8);
  v1(v7, v8);
  v1(v6, v8);
  v1(v5, v8);
  v1(v4, v8);
  v1(v3, v8);
  sub_1D21071D4(v2, v11, type metadata accessor for HSGuidanceError);
  sub_1D21071D4(v0[29], v0[7], type metadata accessor for HSGuidanceError);

  v9 = v0[1];

  return v9();
}

uint64_t HSGuidanceForecast.values.getter()
{
  type metadata accessor for HSGuidanceForecast(0);
}

uint64_t HSGuidanceForecast.validInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidanceForecast(0) + 32);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D2102BF4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 3)
  {
    v4 = 0x746E4964696C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2102C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2108CE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2102CC8(uint64_t a1)
{
  v2 = sub_1D21078B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2102D04(uint64_t a1)
{
  v2 = sub_1D21078B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AD8, &qword_1D21184A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D21078B8();
  sub_1D2113F3C();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1D20D884C();
  sub_1D2113DEC();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D21079A8(&qword_1EE083690, qword_1EE083F40, &protocol conformance descriptor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6300]);
    sub_1D2113DAC();
    v9 = type metadata accessor for HSGuidanceForecast(0);
    LOBYTE(v12) = 2;
    sub_1D2112C2C();
    sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1D2113DEC();
    v12 = *(v3 + *(v9 + 28));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D210790C(&qword_1EE083DC8, qword_1EE084048, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    LOBYTE(v12) = 4;
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HSGuidanceForecast.hash(into:)(uint64_t a1)
{
  sub_1D2113EFC();
  v3 = *(v1 + 8);
  sub_1D2113EEC();
  if (v3)
  {
    sub_1D20D7FC0(a1, v3);
  }

  v4 = type metadata accessor for HSGuidanceForecast(0);
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v1 + *(v4 + 28)));
  return sub_1D211374C();
}

uint64_t HSGuidanceForecast.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D2113EFC();
  v1 = *(v0 + 8);
  sub_1D2113EEC();
  if (v1)
  {
    sub_1D20D7FC0(v4, v1);
  }

  v2 = type metadata accessor for HSGuidanceForecast(0);
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(v4, *(v0 + *(v2 + 28)));
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSGuidanceForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D2112C2C();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE8, &qword_1D21184C0);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for HSGuidanceForecast(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D21078B8();
  v16 = v35;
  sub_1D2113F2C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v17 = v8;
  v29 = v6;
  v35 = v12;
  v18 = v14;
  v19 = v31;
  v20 = v32;
  v38 = 0;
  sub_1D20D8908();
  sub_1D2113D7C();
  *v18 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
  v38 = 1;
  sub_1D21079A8(&qword_1EE083688, &qword_1EE083908, &protocol conformance descriptor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6330]);
  sub_1D2113D3C();
  *(v18 + 8) = v37;
  LOBYTE(v37) = 2;
  v21 = sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  sub_1D2113D7C();
  v28 = v21;
  v22 = *(v19 + 32);
  v22(v18 + *(v35 + 24), v17, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v38 = 3;
  sub_1D210790C(&qword_1EE0836A0, &qword_1EE083C00, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  v27 = v22;
  v23 = v35;
  *(v18 + *(v35 + 28)) = v37;
  LOBYTE(v37) = 4;
  v24 = v29;
  sub_1D2113D7C();
  (*(v33 + 8))(v11, v34);
  v27(v18 + *(v23 + 32), v24, v20);
  sub_1D2107AD8(v18, v30, type metadata accessor for HSGuidanceForecast);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1D2107B40(v18, type metadata accessor for HSGuidanceForecast);
}

uint64_t sub_1D2103848(uint64_t a1, uint64_t a2)
{
  sub_1D2113EFC();
  v5 = *(v2 + 8);
  sub_1D2113EEC();
  if (v5)
  {
    sub_1D20D7FC0(a1, v5);
  }

  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v2 + *(a2 + 28)));
  return sub_1D211374C();
}

uint64_t sub_1D2103940(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D2113EFC();
  v4 = *(v2 + 8);
  sub_1D2113EEC();
  if (v4)
  {
    sub_1D20D7FC0(v6, v4);
  }

  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(v6, *(v2 + *(a2 + 28)));
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSGuidanceForecast.thresholdsForGuidanceValue(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 8))
  {
    MEMORY[0x1EEE9AC00](a1);
    return sub_1D20F9D84(sub_1D2107A44, v3, v4);
  }

  else
  {
    v7 = type metadata accessor for HSCleanGuidanceThresholds(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_1D2103B30()
{
  v0 = sub_1D211319C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112C0C();
  v4 = sub_1D2112C1C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    sub_1D2112BDC();
    v6 = sub_1D2112C1C();
    v5(v3, v0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t HSRatePlan.utilityId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HSRatePlan.tariffId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D2103CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HSRatePlan.init(utilityId:tariffId:timezone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for HSRatePlan(0) + 24);
  v9 = sub_1D211335C();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t static HSRatePlan.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1D2113E2C() & 1) != 0)
    {
      type metadata accessor for HSRatePlan(0);

      JUMPOUT(0x1D3895C50);
    }
  }

  return 0;
}

uint64_t sub_1D2103EA0()
{
  v1 = 0x6449666669726174;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x497974696C697475;
  }
}

uint64_t sub_1D2103F00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2108EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2103F28(uint64_t a1)
{
  v2 = sub_1D2107A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2103F64(uint64_t a1)
{
  v2 = sub_1D2107A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSRatePlan.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AF0, &qword_1D21184C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107A84();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2113DBC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D2113DBC();
    type metadata accessor for HSRatePlan(0);
    v8[13] = 2;
    sub_1D211335C();
    sub_1D20FE9D8(&qword_1EC6C7B00, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1D2113DEC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HSRatePlan.hash(into:)(uint64_t a1)
{
  sub_1D211375C();
  sub_1D211375C();
  type metadata accessor for HSRatePlan(0);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1D211374C();
}

uint64_t HSRatePlan.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  type metadata accessor for HSRatePlan(0);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSRatePlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1D211335C();
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B10, &qword_1D21184D0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v18 - v6;
  v8 = type metadata accessor for HSRatePlan(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107A84();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v10;
  v28 = 0;
  *v10 = sub_1D2113D4C();
  v10[1] = v14;
  v18[2] = v14;
  v27 = 1;
  v10[2] = sub_1D2113D4C();
  v10[3] = v15;
  v26 = 2;
  sub_1D20FE9D8(&qword_1EC6C7B18, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  v16 = v19;
  v18[1] = 0;
  sub_1D2113D7C();
  (*(v12 + 8))(v7, v25);
  (*(v21 + 32))(v13 + *(v8 + 24), v16, v11);
  sub_1D2107AD8(v13, v22, type metadata accessor for HSRatePlan);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1D2107B40(v13, type metadata accessor for HSRatePlan);
}

uint64_t sub_1D21046E8()
{
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D210479C(uint64_t a1)
{
  sub_1D211375C();
  sub_1D211375C();
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1D211374C();
}

uint64_t sub_1D2104834(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D21048E4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1D2113E2C() & 1) != 0)
    {

      JUMPOUT(0x1D3895C50);
    }
  }

  return 0;
}

uint64_t HSHistoricalGuidance.values.getter()
{
  type metadata accessor for HSHistoricalGuidance(0);
}

uint64_t HSHistoricalGuidance.thresholds.getter()
{
  type metadata accessor for HSHistoricalGuidance(0);
}

uint64_t static HSHistoricalGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HSHistoricalGuidance(0);
  if ((sub_1D20FCB58(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D20FCD58(v6, v7);
}

uint64_t sub_1D2104A74()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_1D2104AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2108FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2104AF8(uint64_t a1)
{
  v2 = sub_1D2107BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2104B34(uint64_t a1)
{
  v2 = sub_1D2107BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSHistoricalGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B20, &qword_1D21184D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BA0();
  sub_1D2113F3C();
  LOBYTE(v12) = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1D2113DEC();
  if (!v2)
  {
    v9 = type metadata accessor for HSHistoricalGuidance(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D210790C(&qword_1EE083DC8, qword_1EE084048, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D21079A8(&qword_1EE083690, qword_1EE083F40, &protocol conformance descriptor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HSHistoricalGuidance.hash(into:)(uint64_t a1)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v3 = type metadata accessor for HSHistoricalGuidance(0);
  sub_1D20D8184(a1, *(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_1D20D7FC0(a1, v4);
}

uint64_t HSHistoricalGuidance.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v1 = type metadata accessor for HSHistoricalGuidance(0);
  sub_1D20D8184(v3, *(v0 + *(v1 + 20)));
  sub_1D20D7FC0(v3, *(v0 + *(v1 + 24)));
  return sub_1D2113F1C();
}

uint64_t HSHistoricalGuidance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1D2112C2C();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B28, &qword_1D21184E0);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for HSHistoricalGuidance(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BA0();
  v24 = v8;
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v12 = v11;
  v13 = v20;
  LOBYTE(v26) = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v14 = v21;
  v15 = v23;
  sub_1D2113D7C();
  (*(v13 + 32))(v12, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v25 = 1;
  sub_1D210790C(&qword_1EE0836A0, &qword_1EE083C00, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  v16 = v22;
  v21 = v9;
  *(v12 + *(v9 + 20)) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
  v25 = 2;
  sub_1D21079A8(&qword_1EE083688, &qword_1EE083908, &protocol conformance descriptor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  (*(v16 + 8))(v24, v15);
  *(v12 + *(v21 + 6)) = v26;
  sub_1D2107AD8(v12, v19, type metadata accessor for HSHistoricalGuidance);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1D2107B40(v12, type metadata accessor for HSHistoricalGuidance);
}

uint64_t sub_1D2105440(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(v4, *(v1 + *(a1 + 20)));
  sub_1D20D7FC0(v4, *(v1 + *(a1 + 24)));
  return sub_1D2113F1C();
}

uint64_t sub_1D21054F4(uint64_t a1, uint64_t a2)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_1D20D7FC0(a1, v5);
}

uint64_t sub_1D210559C(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(v5, *(v2 + *(a2 + 20)));
  sub_1D20D7FC0(v5, *(v2 + *(a2 + 24)));
  return sub_1D2113F1C();
}

uint64_t sub_1D210564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D20FCD58(v7, v8);
}

BOOL static HSCleanGuidanceThresholds.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) != 0 && (v4 = type metadata accessor for HSCleanGuidanceThresholds(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2105774()
{
  v1 = 0x6772656E45657375;
  if (*v0 != 1)
  {
    v1 = 0x656E4564696F7661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x626163696C707061;
  }
}

uint64_t sub_1D21057E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D21090DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2105810(uint64_t a1)
{
  v2 = sub_1D2107BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D210584C(uint64_t a1)
{
  v2 = sub_1D2107BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSCleanGuidanceThresholds.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B30, &qword_1D21184E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BF4();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1D2113DEC();
  if (!v1)
  {
    type metadata accessor for HSCleanGuidanceThresholds(0);
    v8[14] = 1;
    sub_1D2113DCC();
    v8[13] = 2;
    sub_1D2113DCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HSCleanGuidanceThresholds.hash(into:)(uint64_t a1)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v2 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1D3896810](*&v3);
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v4);
}

uint64_t HSCleanGuidanceThresholds.hashValue.getter()
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t HSCleanGuidanceThresholds.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1D2112C2C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B38, &qword_1D21184F0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for HSCleanGuidanceThresholds(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BF4();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  v28 = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v14 = v24;
  sub_1D2113D7C();
  v15 = *(v13 + 32);
  v16 = v25;
  v25 = v4;
  v15(v12, v16, v4);
  v27 = 1;
  sub_1D2113D5C();
  *(v12 + *(v9 + 20)) = v17;
  v26 = 2;
  sub_1D2113D5C();
  v19 = v18;
  (*(v23 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v19;
  sub_1D2107AD8(v12, v21, type metadata accessor for HSCleanGuidanceThresholds);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D2107B40(v12, type metadata accessor for HSCleanGuidanceThresholds);
}

uint64_t sub_1D2105F40()
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D2105F84(uint64_t a1)
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)(v2);
  return sub_1D2113F1C();
}

HomeServices::HSGuidanceType_optional __swiftcall HSGuidanceType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_1D210605C@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D2106138()
{
  sub_1D2113ECC();
  sub_1D2113EFC();
  return sub_1D2113F1C();
}

uint64_t sub_1D21061AC(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D2113EFC();
  return sub_1D2113F1C();
}

uint64_t sub_1D2106204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2112C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL static HSGuidanceValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HSGuidanceValue(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D21062E0()
{
  if (*v0)
  {
    return 0x676E69746172;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_1D2106318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D2113E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2113E2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D21063F0(uint64_t a1)
{
  v2 = sub_1D2107C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D210642C(uint64_t a1)
{
  v2 = sub_1D2107C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B40, &qword_1D21184F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107C48();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1D2113DEC();
  if (!v1)
  {
    type metadata accessor for HSGuidanceValue(0);
    v8[14] = 1;
    sub_1D2113DCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HSGuidanceValue.hash(into:)(uint64_t a1)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v2 = *(v1 + *(type metadata accessor for HSGuidanceValue(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v2);
}

uint64_t HSGuidanceValue.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v1 = *(v0 + *(type metadata accessor for HSGuidanceValue(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3896810](*&v1);
  return sub_1D2113F1C();
}

uint64_t HSGuidanceValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D2112C2C();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B48, &qword_1D2118500);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for HSGuidanceValue(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107C48();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v14 = v25;
  sub_1D2113D7C();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  sub_1D2113D5C();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_1D2107AD8(v18, v17, type metadata accessor for HSGuidanceValue);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D2107B40(v18, type metadata accessor for HSGuidanceValue);
}

uint64_t sub_1D2106AF0(uint64_t a1, uint64_t a2)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v4);
}

uint64_t sub_1D2106B8C(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3896810](*&v4);
  return sub_1D2113F1C();
}

unint64_t HSGuidanceError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D21133BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HSGuidanceError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2107AD8(v1, v8, type metadata accessor for HSGuidanceError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000020;
      }

      else
      {
        return 0xD00000000000002ALL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD00000000000002ELL;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1D2107B40(v8, type metadata accessor for HSGuidanceError);
        return 0xD00000000000003ALL;
      }

      v12 = *v8;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D2113C2C();
      MEMORY[0x1D38961A0](0xD000000000000035, 0x80000001D211A320);
      v17 = v12;
      v13 = sub_1D2113E0C();
      MEMORY[0x1D38961A0](v13);

      MEMORY[0x1D38961A0](46, 0xE100000000000000);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_1D2113C2C();
        MEMORY[0x1D38961A0](0xD000000000000023, 0x80000001D211A490);
        sub_1D2113CBC();
        MEMORY[0x1D38961A0](46, 0xE100000000000000);
        v10 = v19;
        (*(v3 + 8))(v5, v2);
        return v10;
      }

      v14 = *v8;
      v19 = 0xD00000000000003ELL;
      v20 = 0x80000001D211A360;
      if (v14)
      {
        if (v14 == 1)
        {
          v15 = "LocalizedDescription ";
          v16 = 0xD000000000000032;
        }

        else
        {
          v15 = "trying to process the request.";
          v16 = 0xD000000000000027;
        }
      }

      else
      {
        v16 = 0xD00000000000002BLL;
        v15 = "ponse from server.";
      }

      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1D2113C2C();

      v17 = 0xD000000000000015;
      v18 = 0x80000001D211A3D0;
      MEMORY[0x1D38961A0](v16, v15 | 0x8000000000000000);

      MEMORY[0x1D38961A0](v17, v18);
    }

    return v19;
  }
}

unint64_t HSNetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t HSNetworkInternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D210718C()
{
  type metadata accessor for TimeService();
  result = swift_initStaticObject();
  qword_1EE087510 = result;
  return result;
}

uint64_t sub_1D21071D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s12HomeServices15HSGuidanceErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21133BC();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HSGuidanceError(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v37 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BF0, &qword_1D2119248);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v37 - v20;
  v22 = (&v37 + *(v19 + 56) - v20);
  sub_1D2107AD8(a1, &v37 - v20, type metadata accessor for HSGuidanceError);
  sub_1D2107AD8(a2, v22, type metadata accessor for HSGuidanceError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_36;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_36;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D2107AD8(v21, v12, type metadata accessor for HSGuidanceError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      v24 = *v12 == *v22;
      goto LABEL_18;
    }

    sub_1D2107AD8(v21, v9, type metadata accessor for HSGuidanceError);
    v28 = *v9;
    v27 = v9[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_36;
    }

    v29 = v22[1];
    if (v27)
    {
      if (v29)
      {
        if (v28 == *v22 && v27 == v29)
        {
        }

        else
        {
          v31 = sub_1D2113E2C();

          if ((v31 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

LABEL_34:
        sub_1D2107B40(v21, type metadata accessor for HSGuidanceError);
        return 1;
      }
    }

    else if (!v29)
    {
      goto LABEL_34;
    }

LABEL_41:
    sub_1D2107B40(v21, type metadata accessor for HSGuidanceError);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D2107AD8(v21, v15, type metadata accessor for HSGuidanceError);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_36;
    }

    v24 = *v15 == *v22;
LABEL_18:
    v25 = v24;
    sub_1D2107B40(v21, type metadata accessor for HSGuidanceError);
    return v25;
  }

  sub_1D2107AD8(v21, v17, type metadata accessor for HSGuidanceError);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v39 + 8))(v17, v40);
LABEL_36:
    sub_1D20A862C(v21, &qword_1EC6C7BF0, &qword_1D2119248);
    return 0;
  }

  v33 = v38;
  v32 = v39;
  v34 = v40;
  (*(v39 + 32))(v38, v22, v40);
  sub_1D20FE9D8(&qword_1EE0843C8, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C08]);
  sub_1D211396C();
  sub_1D211396C();
  v35 = *(v32 + 8);
  v35(v33, v34);
  v36 = v42 == v41;
  v35(v17, v34);
  sub_1D2107B40(v21, type metadata accessor for HSGuidanceError);
  return v36;
}

uint64_t _s12HomeServices18HSGuidanceForecastV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = sub_1D20FCD58(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for HSGuidanceForecast(0);
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*&a1[*(v8 + 28)], *&a2[*(v8 + 28)]) & 1) == 0)
  {
    return 0;
  }

  return sub_1D2112BCC();
}

unint64_t sub_1D21078B8()
{
  result = qword_1EE084010;
  if (!qword_1EE084010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084010);
  }

  return result;
}

uint64_t sub_1D210790C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20FE9D8(a2, type metadata accessor for HSGuidanceValue, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D21079A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D20FE9D8(a2, type metadata accessor for HSCleanGuidanceThresholds, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2107A84()
{
  result = qword_1EC6C7AF8;
  if (!qword_1EC6C7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AF8);
  }

  return result;
}

uint64_t sub_1D2107AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2107B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2107BA0()
{
  result = qword_1EE083AB0;
  if (!qword_1EE083AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AB0);
  }

  return result;
}

unint64_t sub_1D2107BF4()
{
  result = qword_1EE084550[0];
  if (!qword_1EE084550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084550);
  }

  return result;
}

unint64_t sub_1D2107C48()
{
  result = qword_1EE084698;
  if (!qword_1EE084698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084698);
  }

  return result;
}

unint64_t sub_1D2107DC0()
{
  result = qword_1EC6C7B70;
  if (!qword_1EC6C7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B70);
  }

  return result;
}

unint64_t sub_1D2107E18()
{
  result = qword_1EC6C7B78;
  if (!qword_1EC6C7B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7B80, &qword_1D21188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B78);
  }

  return result;
}

unint64_t sub_1D2107F10()
{
  result = qword_1EC6C7B90;
  if (!qword_1EC6C7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B90);
  }

  return result;
}

unint64_t sub_1D2107F68()
{
  result = qword_1EC6C7B98;
  if (!qword_1EC6C7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B98);
  }

  return result;
}

void sub_1D2107FE4(uint64_t a1)
{
  sub_1D21080B0(319);
  if (v1 <= 0x3F)
  {
    sub_1D2112C2C();
    if (v2 <= 0x3F)
    {
      sub_1D21082B4(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21080B0(uint64_t a1)
{
  if (!qword_1EE084420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    v1 = sub_1D2113B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE084420);
    }
  }
}

uint64_t sub_1D210813C(uint64_t a1)
{
  result = sub_1D211335C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D21081E0(uint64_t a1)
{
  sub_1D2112C2C();
  if (v1 <= 0x3F)
  {
    sub_1D21082B4(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue);
    if (v2 <= 0x3F)
    {
      sub_1D21082B4(319, &qword_1EE083698, type metadata accessor for HSCleanGuidanceThresholds);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21082B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2113A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2108330(uint64_t a1)
{
  result = sub_1D2112C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D21084C0(uint64_t a1)
{
  result = sub_1D2112C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2108534(uint64_t a1)
{
  sub_1D21133BC();
  if (v1 <= 0x3F)
  {
    sub_1D20AD83C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for HSGuidanceForecast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HSGuidanceForecast.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D21087C0()
{
  result = qword_1EC6C7BA0;
  if (!qword_1EC6C7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BA0);
  }

  return result;
}

unint64_t sub_1D2108818()
{
  result = qword_1EC6C7BA8;
  if (!qword_1EC6C7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BA8);
  }

  return result;
}

unint64_t sub_1D2108870()
{
  result = qword_1EC6C7BB0;
  if (!qword_1EC6C7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BB0);
  }

  return result;
}

unint64_t sub_1D21088C8()
{
  result = qword_1EC6C7BB8;
  if (!qword_1EC6C7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BB8);
  }

  return result;
}

unint64_t sub_1D2108920()
{
  result = qword_1EC6C7BC0;
  if (!qword_1EC6C7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BC0);
  }

  return result;
}

unint64_t sub_1D2108978()
{
  result = qword_1EE084688;
  if (!qword_1EE084688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084688);
  }

  return result;
}

unint64_t sub_1D21089D0()
{
  result = qword_1EE084690;
  if (!qword_1EE084690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084690);
  }

  return result;
}

unint64_t sub_1D2108A28()
{
  result = qword_1EE084540;
  if (!qword_1EE084540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084540);
  }

  return result;
}

unint64_t sub_1D2108A80()
{
  result = qword_1EE084548;
  if (!qword_1EE084548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084548);
  }

  return result;
}

unint64_t sub_1D2108AD8()
{
  result = qword_1EE083AA0;
  if (!qword_1EE083AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AA0);
  }

  return result;
}

unint64_t sub_1D2108B30()
{
  result = qword_1EE083AA8;
  if (!qword_1EE083AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AA8);
  }

  return result;
}

unint64_t sub_1D2108B88()
{
  result = qword_1EC6C7BC8;
  if (!qword_1EC6C7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BC8);
  }

  return result;
}

unint64_t sub_1D2108BE0()
{
  result = qword_1EC6C7BD0;
  if (!qword_1EC6C7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BD0);
  }

  return result;
}

unint64_t sub_1D2108C38()
{
  result = qword_1EE084000;
  if (!qword_1EE084000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084000);
  }

  return result;
}

unint64_t sub_1D2108C90()
{
  result = qword_1EE084008;
  if (!qword_1EE084008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084008);
  }

  return result;
}

uint64_t sub_1D2108CE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D2108EA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x497974696C697475 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449666669726174 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2108FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D21090DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626163696C707061 && a2 == 0xEE007265764F656CLL;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6772656E45657375 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E4564696F7661 && a2 == 0xEB00000000796772)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D2109208()
{
  result = qword_1EE0846A0[0];
  if (!qword_1EE0846A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0846A0);
  }

  return result;
}

uint64_t sub_1D2109278(uint64_t a1, unsigned __int8 a2)
{
  sub_1D211375C();
}

void AutoBugCaptureIssue.init(type:subType:subTypeContext:payload:)(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a5 = *a1;
  *(a5 + 1) = v7;
  *(a5 + 2) = v8;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = sub_1D21137CC();
  v13 = v12;

  *(a5 + 8) = v11;
  *(a5 + 16) = v13;
  *(a5 + 24) = a4;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(char *a1)
{
  v2 = sub_1D211363C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D211365C();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = off_1EC6C7BF8;
  if (off_1EC6C7BF8)
  {
    v17 = qword_1EC6C7C00;
    LOBYTE(aBlock) = v10;
    BYTE1(aBlock) = v11;
    BYTE2(aBlock) = v12;
    v31 = v14;
    v32 = v13;
    v33 = v15;

    v16(&aBlock);
    return sub_1D210B884(v16, v17);
  }

  else
  {
    v19 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v9;
    v26 = v5;
    v27 = v7;
    v28 = v3;
    v24 = v2;
    if (qword_1EE0839F8 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v10;
    *(v20 + 17) = v11;
    *(v20 + 18) = v12;
    *(v20 + 24) = v14;
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    v34 = sub_1D210B810;
    v35 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1D210B828;
    v33 = &block_descriptor;
    v21 = _Block_copy(&aBlock);

    sub_1D211364C();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D210C9B4(&qword_1EE0836B8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7C08, &unk_1D2119260);
    sub_1D210C9FC(&qword_1EE083678, &qword_1EC6C7C08, &unk_1D2119260);
    v22 = v26;
    v23 = v24;
    sub_1D2113B8C();
    MEMORY[0x1D38963D0](0, v19, v22, v21);
    _Block_release(v21);
    (*(v28 + 8))(v22, v23);
    (*(v25 + 8))(v19, v27);
  }
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D2113D0C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D21098B0()
{
  sub_1D2113ECC();
  sub_1D211375C();
  return sub_1D2113F1C();
}

uint64_t sub_1D2109934(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();
  return sub_1D2113F1C();
}

uint64_t sub_1D2109990@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1D2113D0C();

  *a2 = v3 != 0;
  return result;
}

HomeServices::AutoBugCaptureType_optional __swiftcall AutoBugCaptureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureType.rawValue.getter()
{
  v1 = 0x5720796772656E45;
  if (*v0 != 1)
  {
    v1 = 0x6F6F4C2064697247;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6164697547;
  }
}

uint64_t sub_1D2109AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5720796772656E45;
  v4 = 0xEE0073776F646E69;
  if (v2 != 1)
  {
    v3 = 0x6F6F4C2064697247;
    v4 = 0xEB0000000070756BLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65636E6164697547;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF6C616E67695320;
  }

  v7 = 0x5720796772656E45;
  v8 = 0xEE0073776F646E69;
  if (*a2 != 1)
  {
    v7 = 0x6F6F4C2064697247;
    v8 = 0xEB0000000070756BLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65636E6164697547;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF6C616E67695320;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D2109C18()
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D2109CDC(uint64_t a1)
{
  sub_1D211375C();
}

uint64_t sub_1D2109D8C(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D2109E58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C616E67695320;
  v4 = 0xEE0073776F646E69;
  v5 = 0x5720796772656E45;
  if (v2 != 1)
  {
    v5 = 0x6F6F4C2064697247;
    v4 = 0xEB0000000070756BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E6164697547;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HomeServices::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = 0x726576726553;
  if (*v0 != 1)
  {
    v1 = 0x73795320656C6946;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F43;
  }
}

uint64_t sub_1D2109FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726576726553;
  if (v2 != 1)
  {
    v4 = 0x73795320656C6946;
    v3 = 0xEB000000006D6574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72756769666E6F43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726576726553;
  if (*a2 != 1)
  {
    v8 = 0x73795320656C6946;
    v7 = 0xEB000000006D6574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72756769666E6F43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D210A0B4()
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D210A168(uint64_t a1)
{
  sub_1D211375C();
}

uint64_t sub_1D210A208(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D210A2C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0xE600000000000000;
  v5 = 0x726576726553;
  if (v2 != 1)
  {
    v5 = 0x73795320656C6946;
    v4 = 0xEB000000006D6574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72756769666E6F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HomeServices::AutoBugCaptureSubTypeContext_optional __swiftcall AutoBugCaptureSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoBugCaptureSubTypeContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD00000000000001DLL;
    if (v1 != 7)
    {
      v6 = 0xD000000000000022;
    }

    v7 = 0xD000000000000035;
    if (v1 == 5)
    {
      v7 = 0x206E776F6E6B6E55;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x20676E697373694DLL;
    v3 = 0xD00000000000001FLL;
    v4 = 0xD000000000000017;
    if (v1 == 3)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD00000000000001ELL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D210A4F8()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D2109278(v3, v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D210A548(uint64_t a1)
{
  v2 = *v1;
  sub_1D2113ECC();
  sub_1D2109278(v4, v2);
  return sub_1D2113F1C();
}

unint64_t sub_1D210A598@<X0>(unint64_t *a1@<X8>)
{
  result = AutoBugCaptureSubTypeContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D210A5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = sub_1D211319C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1D211317C();
  v14 = OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_1D20ACFE8(v0 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D210B894(v6);
    (*(v8 + 32))(v4, v13, v7);
LABEL_6:
    v20 = v4;
    v19 = 1;
    (*(v8 + 56))(v20, 0, 1, v7);
    swift_beginAccess();
    sub_1D20AD058(v20, v0 + v14);
    swift_endAccess();
    return v19;
  }

  v22 = v4;
  v23 = v0;
  v15 = *(v8 + 32);
  v15(v11, v6, v7);
  sub_1D211305C();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v11, v7);
  if (v17 >= 86400.0)
  {
    v4 = v22;
    v0 = v23;
    v15(v22, v13, v7);
    goto LABEL_6;
  }

  v18(v13, v7);
  return 0;
}

void sub_1D210A870(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  if (sub_1D210A5C0())
  {
    v9 = *(v1 + 16);
    v10 = sub_1D21137BC();
    v38 = v3;
    v11 = sub_1D21137BC();

    v37 = v4;
    v12 = sub_1D21137BC();

    v39 = v7;
    v21 = sub_1D21137BC();

    v22 = sub_1D21137BC();
    osloga = v9;
    v23 = [v9 signatureWithDomain:v10 type:v11 subType:v12 subtypeContext:v21 detectedProcess:v22 triggerThresholdValues:0];

    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D211362C();
    __swift_project_value_buffer(v24, qword_1EE087420);

    v25 = sub_1D21135FC();
    v26 = sub_1D2113A9C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136315138;
      LOBYTE(aBlock) = v38;
      BYTE1(aBlock) = v37;
      BYTE2(aBlock) = v5;
      v43 = v39;
      v44 = v6;
      v45 = v8;

      v29 = AutoBugCaptureIssue.description.getter();
      v31 = v30;

      v32 = sub_1D20B75F0(v29, v31, &v48);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D209F000, v25, v26, "Submitting snapshot request to ABC for signature: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D3896EB0](v28, -1, -1);
      MEMORY[0x1D3896EB0](v27, -1, -1);
    }

    if (v23)
    {
      aBlock = 0;
      v33 = v23;
      sub_1D211370C();
    }

    sub_1D20CE9EC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1D21136FC();

    sub_1D210B074(v8);
    v35 = sub_1D21136FC();

    v46 = sub_1D210C2E0;
    v47 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D210B33C;
    v45 = &block_descriptor_38;
    v36 = _Block_copy(&aBlock);

    [osloga snapshotWithSignature:0 duration:v34 event:v35 payload:v36 reply:0.0];
    _Block_release(v36);
  }

  else
  {
    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D211362C();
    __swift_project_value_buffer(v13, qword_1EE087420);

    oslog = sub_1D21135FC();
    v14 = sub_1D2113A9C();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      LOBYTE(aBlock) = v3;
      BYTE1(aBlock) = v4;
      BYTE2(aBlock) = v5;
      v43 = v7;
      v44 = v6;
      v45 = v8;

      v17 = AutoBugCaptureIssue.description.getter();
      v19 = v18;

      v20 = sub_1D20B75F0(v17, v19, &v48);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D209F000, oslog, v14, "Not reporting to AutoBugCapture because we are rate limited: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3896EB0](v16, -1, -1);
      MEMORY[0x1D3896EB0](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D210B074(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7620, &qword_1D2115F18);
    v2 = sub_1D2113CFC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D20B7E10(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D20B3388(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D20B3388(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D20B3388(v31, v32);
    result = sub_1D2113BAC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D20B3388(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D210B33C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1D211371C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t AutoBugCaptureReporter.__deallocating_deinit()
{
  sub_1D210B894(v0 + OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D210B468()
{
  v7 = sub_1D2113ABC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2113AAC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D211365C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D210C968();
  sub_1D211364C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D210C9B4(&qword_1EE083660, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7C30, &unk_1D21196A0);
  sub_1D210C9FC(&qword_1EE083668, &qword_1EC6C7C30, &unk_1D21196A0);
  sub_1D2113B8C();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D2113ADC();
  qword_1EE083A00 = result;
  return result;
}

uint64_t sub_1D210B6B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D4F78]) init];
  type metadata accessor for AutoBugCaptureReporter(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate;
  v3 = sub_1D211319C();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + 16) = v0;
  qword_1EE0839E8 = v1;
  return result;
}

void sub_1D210B764(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE0839E0 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v7;
    a4 = v6;
  }

  v8 = a1;
  v9 = BYTE2(a1);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  sub_1D210A870(&v8);
}

uint64_t sub_1D210B828(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D210B884(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D210B894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AutoBugCaptureManager.withMockReportIssue(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D210B920, 0, 0);
}

uint64_t sub_1D210B920()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = off_1EC6C7BF8;
  v4 = qword_1EC6C7C00;
  off_1EC6C7BF8 = v0[2];
  qword_1EC6C7C00 = v1;
  sub_1D210B884(v3, v4);

  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D210BA30;

  return v7();
}

uint64_t sub_1D210BA30()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D210BBB4;
  }

  else
  {
    v2 = sub_1D210BB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D210BB44()
{
  v1 = off_1EC6C7BF8;
  v2 = qword_1EC6C7C00;
  off_1EC6C7BF8 = 0;
  qword_1EC6C7C00 = 0;
  sub_1D210B884(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D210BBB4()
{
  v1 = off_1EC6C7BF8;
  v2 = qword_1EC6C7C00;
  off_1EC6C7BF8 = 0;
  qword_1EC6C7C00 = 0;
  sub_1D210B884(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1D38961A0](0x6553796772656E45, 0xEE00736563697672);
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v3 = 0xEE0073776F646E69;
  v4 = 0x5720796772656E45;
  if (v1 != 1)
  {
    v4 = 0x6F6F4C2064697247;
    v3 = 0xEB0000000070756BLL;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65636E6164697547;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF6C616E67695320;
  }

  MEMORY[0x1D38961A0](v5, v6);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v7 = 0xE600000000000000;
  v8 = 0x726576726553;
  if (v2 != 1)
  {
    v8 = 0x73795320656C6946;
    v7 = 0xEB000000006D6574;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72756769666E6F43;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  MEMORY[0x1D38961A0](v9, v10);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  sub_1D2113CBC();
  return 0;
}

unint64_t sub_1D210BE4C()
{
  result = qword_1EC6C7C10;
  if (!qword_1EC6C7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C10);
  }

  return result;
}

unint64_t sub_1D210BEA4()
{
  result = qword_1EC6C7C18;
  if (!qword_1EC6C7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C18);
  }

  return result;
}

unint64_t sub_1D210BEFC()
{
  result = qword_1EC6C7C20;
  if (!qword_1EC6C7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C20);
  }

  return result;
}

unint64_t sub_1D210BF54()
{
  result = qword_1EC6C7C28;
  if (!qword_1EC6C7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoBugCaptureSubTypeContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoBugCaptureSubTypeContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter(uint64_t a1)
{
  result = qword_1EE0839C0;
  if (!qword_1EE0839C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D210C180(uint64_t a1)
{
  sub_1D20AD7E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D210C248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D210C290(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1D210C2E4(uint64_t a1)
{
  if (a1)
  {
    v37 = sub_1D21137CC();
    sub_1D2113BCC();
    if (*(a1 + 16) && (v2 = sub_1D20E459C(v43), (v3 & 1) != 0))
    {
      sub_1D20B7E10(*(a1 + 56) + 32 * v2, v44);
      sub_1D20BC128(v43);
      if ((swift_dynamicCast() & 1) != 0 && v37 == 1)
      {
        v38 = sub_1D21137CC();
        v41 = v4;
        sub_1D2113BCC();
        if (*(a1 + 16) && (v5 = sub_1D20E459C(v43), (v6 & 1) != 0))
        {
          sub_1D20B7E10(*(a1 + 56) + 32 * v5, v44);
          sub_1D20BC128(v43);
          if (swift_dynamicCast())
          {
            v8 = v38;
            v7 = v41;
            goto LABEL_42;
          }
        }

        else
        {
          sub_1D20BC128(v43);
        }

        v8 = 0x6E776F6E6B6E55;
        v7 = 0xE700000000000000;
LABEL_42:
        if (qword_1EE0836C0 != -1)
        {
          swift_once();
        }

        v32 = sub_1D211362C();
        __swift_project_value_buffer(v32, qword_1EE087420);

        v25 = sub_1D21135FC();
        v33 = sub_1D2113A9C();

        if (os_log_type_enabled(v25, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v43[0] = v35;
          *v34 = 136315138;
          v36 = sub_1D20B75F0(v8, v7, v43);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_1D209F000, v25, v33, "Diagnostic reporter snapshot accepted with sessionID [%s]", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x1D3896EB0](v35, -1, -1);
          v31 = v34;
          goto LABEL_46;
        }

LABEL_47:

        return;
      }
    }

    else
    {
      sub_1D20BC128(v43);
    }

    v39 = sub_1D21137CC();
    sub_1D2113BCC();
    if (*(a1 + 16) && (v9 = sub_1D20E459C(v43), (v10 & 1) != 0))
    {
      sub_1D20B7E10(*(a1 + 56) + 32 * v9, v44);
      sub_1D20BC128(v43);
      if (swift_dynamicCast())
      {
        v11 = v39;
        v40 = sub_1D21137CC();
        v42 = v12;
        sub_1D2113BCC();
        if (*(a1 + 16) && (v13 = sub_1D20E459C(v43), (v14 & 1) != 0))
        {
          sub_1D20B7E10(*(a1 + 56) + 32 * v13, v44);
          sub_1D20BC128(v43);
          if (swift_dynamicCast())
          {
            v16 = v40;
            v15 = v42;
            goto LABEL_27;
          }
        }

        else
        {
          sub_1D20BC128(v43);
        }

        v16 = 0x6E776F6E6B6E55;
        v15 = 0xE700000000000000;
LABEL_27:
        v21 = 0x6465746365707865;
        v22 = 0xE800000000000000;
        if (v11 != *MEMORY[0x1E69D4FD8] && v11 != *MEMORY[0x1E69D4FF0])
        {
          if (v11 == *MEMORY[0x1E69D4FC8] || v11 == *MEMORY[0x1E69D5018])
          {
            v22 = 0xE800000000000000;
          }

          else
          {
            v21 = 0x7463657078656E75;
            v22 = 0xEA00000000006465;
          }
        }

        if (qword_1EE0836C0 != -1)
        {
          swift_once();
        }

        v24 = sub_1D211362C();
        __swift_project_value_buffer(v24, qword_1EE087420);

        v25 = sub_1D21135FC();
        v26 = sub_1D2113A9C();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v43[0] = v28;
          *v27 = 136315650;
          v29 = sub_1D20B75F0(v21, v22, v43);

          *(v27 + 4) = v29;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v11;
          *(v27 + 22) = 2080;
          v30 = sub_1D20B75F0(v16, v15, v43);

          *(v27 + 24) = v30;
          _os_log_impl(&dword_1D209F000, v25, v26, "Diagnostic reporter snapshot rejected with%s\nreason: %ld (%s)", v27, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3896EB0](v28, -1, -1);
          v31 = v27;
LABEL_46:
          MEMORY[0x1D3896EB0](v31, -1, -1);

          return;
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_1D20BC128(v43);
    }

    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE087420);
    v18 = sub_1D21135FC();
    v19 = sub_1D2113A9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D209F000, v18, v19, "Diagnostic reporter snapshot rejected with unknown reason", v20, 2u);
      MEMORY[0x1D3896EB0](v20, -1, -1);
    }
  }
}

unint64_t sub_1D210C968()
{
  result = qword_1EE083658;
  if (!qword_1EE083658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE083658);
  }

  return result;
}

uint64_t sub_1D210C9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D210C9FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D210CA58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D20ECE18();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (sub_1D211391C())
    {
      sub_1D20F0EB0(a1);
    }

    else
    {
      MEMORY[0x1D38961A0](v4, v5);
      sub_1D20F0EB0(a1);
    }

    v10 = 0;
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D211362C();
    __swift_project_value_buffer(v6, qword_1EE0874C0);
    v7 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v7, v8, "No Server Base URL Found!!", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }

    v10 = 1;
  }

  v11 = sub_1D2112F9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D210CC48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v16);
  if (*(&v16[0] + 1) != 1)
  {
    v17 = v16[0];
    sub_1D20BD1B0(&v17, v15);
    sub_1D20A862C(v16, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v17 + 1))
    {
      sub_1D210CA58(v4);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_1D2112F3C();
        sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
        (*(v6 + 8))(v8, v5);
        v13 = 0;
        return (*(v6 + 56))(a1, v13, 1, v5);
      }

      sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v4, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D211362C();
  __swift_project_value_buffer(v9, qword_1EE0874C0);
  v10 = sub_1D21135FC();
  v11 = sub_1D2113A7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D209F000, v10, v11, "Unable to compute API Path for grid tile lookup.", v12, 2u);
    MEMORY[0x1D3896EB0](v12, -1, -1);
  }

  v13 = 1;
  return (*(v6 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1D210CF3C@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v102 = a5;
  v103 = a6;
  v94 = a4;
  v93 = a3;
  v99 = a1;
  v100 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v88 - v9;
  v10 = sub_1D2112B1C();
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v91 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v88 - v22;
  v24 = sub_1D2112F9C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v95 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v88 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v97 = &v88 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v88 - v33;
  sub_1D210CC48(v23);
  v35 = *(v25 + 48);
  if (v35(v23, 1, v24) == 1)
  {
    sub_1D20A862C(v23, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D211362C();
    __swift_project_value_buffer(v36, qword_1EE0874C0);
    v37 = v103;

    v38 = sub_1D21135FC();
    v39 = sub_1D2113A7C();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v104;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v106[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1D20B75F0(v102, v37, v106);
      _os_log_impl(&dword_1D209F000, v38, v39, "Request URL for Grid Tile Lookup API not found | traceId: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1D3896EB0](v43, -1, -1);
      MEMORY[0x1D3896EB0](v42, -1, -1);
    }

    return (*(v41 + 56))(a7, 1, 1, v105);
  }

  v90 = a7;
  v89 = *(v25 + 32);
  v89(v34, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 104;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v99;
  *(inited + 56) = v100;

  v100 = v34;
  sub_1D2112F1C();
  sub_1D2112F7C();
  if (v35(v19, 1, v24) == 1)
  {

    sub_1D20A862C(v19, &qword_1EC6C7250, &qword_1D21149C0);
    v46 = v101;
    (*(v25 + 56))(v101, 1, 1, v24);
    v47 = v103;
    v48 = v25;
LABEL_10:
    sub_1D20A862C(v46, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v52 = sub_1D211362C();
    __swift_project_value_buffer(v52, qword_1EE0874C0);

    v53 = sub_1D21135FC();
    v54 = sub_1D2113A7C();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v90;
    v57 = v105;
    v58 = v100;
    if (v55)
    {
      v59 = swift_slowAlloc();
      v60 = v24;
      v61 = swift_slowAlloc();
      v106[0] = v61;
      *v59 = 136315138;
      *(v59 + 4) = sub_1D20B75F0(v102, v47, v106);
      _os_log_impl(&dword_1D209F000, v53, v54, "Unable to create Grid Tile Request URL with required query parameters | traceId: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D3896EB0](v61, -1, -1);
      MEMORY[0x1D3896EB0](v59, -1, -1);

      (*(v48 + 8))(v58, v60);
    }

    else
    {

      (*(v48 + 8))(v58, v24);
    }

    return (*(v104 + 56))(v56, 1, 1, v57);
  }

  v89(v30, v19, v24);
  v49 = v101;
  sub_1D20F108C(inited, 1, 0, v101);
  v46 = v49;

  v50 = *(v25 + 8);
  v50(v30, v24);
  v51 = v35(v49, 1, v24);
  v47 = v103;
  v48 = v25;
  if (v51 == 1)
  {
    goto LABEL_10;
  }

  v99 = v50;
  v62 = v97;
  v89(v97, v49, v24);
  (*(v25 + 16))(v95, v62, v24);
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (sub_1D20CF7E0())
  {
    v63 = &unk_1F4D9E0E0;
  }

  else
  {
    v63 = &unk_1F4D9E120;
  }

  v64 = sub_1D20BABD4(v63, &unk_1F4D9E080);
  v66 = v65;
  sub_1D20CF7E0();
  v67 = v96;
  sub_1D20D94F0(v64, v66, 49, 0xE100000000000000, v96);

  v69 = v104;
  v68 = v105;
  if ((*(v104 + 48))(v67, 1, v105) == 1)
  {
    sub_1D20A862C(v67, &qword_1EC6C7508, &unk_1D2116AA0);
    v70 = v90;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v71 = sub_1D211362C();
    __swift_project_value_buffer(v71, qword_1EE0874C0);

    v72 = sub_1D21135FC();
    v73 = sub_1D2113A7C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v24;
      v76 = swift_slowAlloc();
      v106[0] = v76;
      *v74 = 136315138;
      *(v74 + 4) = sub_1D20B75F0(v102, v47, v106);
      _os_log_impl(&dword_1D209F000, v72, v73, "Unable to create signed Grid Look up request | traceId: %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1D3896EB0](v76, -1, -1);
      MEMORY[0x1D3896EB0](v74, -1, -1);

      (*(v69 + 8))(v98, v68);
      v77 = v99;
      v99(v97, v75);
      v78 = v100;
      v79 = v75;
    }

    else
    {

      (*(v69 + 8))(v98, v68);
      v77 = v99;
      v99(v97, v24);
      v78 = v100;
      v79 = v24;
    }

    v77(v78, v79);
    return (*(v69 + 56))(v70, 1, 1, v68);
  }

  else
  {
    v101 = v24;
    v80 = v91;
    (*(v69 + 16))(v91, v67, v68);
    sub_1D2112AEC();
    sub_1D2112AEC();
    v81 = *(v69 + 8);
    v81(v67, v68);
    v82 = *(v69 + 32);
    v83 = v92;
    v82(v92, v80, v68);
    sub_1D2112B0C();
    v84 = v90;
    if (v94)
    {
      v85 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v85 = v93 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {
        sub_1D2112AEC();
      }
    }

    v81(v98, v68);
    v86 = v101;
    v87 = v99;
    v99(v97, v101);
    v87(v100, v86);
    v82(v84, v83, v68);
    return (*(v69 + 56))(v84, 0, 1, v68);
  }
}

uint64_t HSIntervalBlockPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSIntervalBlockPayload(0) + 48);
  v4 = sub_1D211348C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HSIntervalBlockPayload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HSIntervalBlockPayload(0) + 48);
  v4 = sub_1D211348C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1D210DD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F2D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F280();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F22C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DE00@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1D210DE38@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1D210DE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112744();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t HSIntervalBlockPayload.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D211347C();
  v3 = v2[13];
  v4 = sub_1D211345C();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v7(a1 + v2[14], 1, 1, v4);
  v5 = a1 + v2[15];

  return (v7)(v5, 1, 1, v4);
}

uint64_t sub_1D210E044()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6C7C58);
  __swift_project_value_buffer(v0, qword_1EC6C7C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D2119710;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "utilityID";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subscriptionID";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "usagePointID";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "meterID";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sourceTime";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "start";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "end";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unit";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "commodity";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flowDirection";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "readings";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t static HSIntervalBlockPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C71A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6C7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HSIntervalBlockPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D21134CC();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1 || result == 2)
          {
LABEL_4:
            sub_1D211350C();
          }
        }

        else
        {
          if (result == 3 || result == 4)
          {
            goto LABEL_4;
          }

          sub_1D210E720(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            sub_1D210E7D4(a1, v5, a2, a3);
            goto LABEL_5;
          }

          if (result == 7)
          {
            sub_1D210E888(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          sub_1D210F22C();
          goto LABEL_29;
        }

        switch(result)
        {
          case 9:
            v11 = v4;
            sub_1D210F280();
            goto LABEL_29;
          case 10:
            v11 = v4;
            sub_1D210F2D4();
LABEL_29:
            v4 = v11;
            sub_1D21134EC();
            break;
          case 11:
            type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
            sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading, &unk_1D2119E68);
            sub_1D211351C();
            break;
        }
      }

LABEL_5:
      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D210E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1D211352C();
}

uint64_t sub_1D210E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1D211352C();
}

uint64_t sub_1D210E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1D211352C();
}

uint64_t HSIntervalBlockPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D211359C(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D211359C(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_1D211359C(), !v4))
      {
        v15 = v3[7];
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_1D211359C(), !v4))
        {
          result = sub_1D210EC14(v3, a1, a2, a3);
          if (!v4)
          {
            sub_1D210EE1C(v3, a1, a2, a3);
            sub_1D210F024(v3, a1, a2, a3);
            if (v3[8])
            {
              sub_1D210F22C();
              sub_1D211357C();
            }

            if (v3[10])
            {
              sub_1D210F280();
              sub_1D211357C();
            }

            if (v3[12])
            {
              sub_1D210F2D4();
              sub_1D211357C();
            }

            if (*(v3[14] + 16))
            {
              type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
              sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading, &unk_1D2119E68);
              sub_1D21135AC();
            }

            type metadata accessor for HSIntervalBlockPayload(0);
            return sub_1D211346C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D210EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D211345C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v12 + 52), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1D21135BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D210EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D211345C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v12 + 56), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1D21135BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D210F024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D211345C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v12 + 60), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1D21135BC();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D210F22C()
{
  result = qword_1EC6C7C70;
  if (!qword_1EC6C7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C70);
  }

  return result;
}

unint64_t sub_1D210F280()
{
  result = qword_1EC6C7C78;
  if (!qword_1EC6C7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C78);
  }

  return result;
}

unint64_t sub_1D210F2D4()
{
  result = qword_1EC6C7C80;
  if (!qword_1EC6C7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C80);
  }

  return result;
}

uint64_t HSIntervalBlockPayload.hashValue.getter()
{
  sub_1D2113ECC();
  type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D21116E4(&qword_1EC6C7C90, type metadata accessor for HSIntervalBlockPayload, &protocol conformance descriptor for HSIntervalBlockPayload);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D210F3D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  sub_1D211347C();
  v4 = a1[13];
  v5 = sub_1D211345C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[14], 1, 1, v5);
  v6 = a2 + a1[15];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_1D210F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D210F584(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D210F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21116E4(&qword_1EC6C7DB8, type metadata accessor for HSIntervalBlockPayload, &protocol conformance descriptor for HSIntervalBlockPayload);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D210F6EC(uint64_t a1)
{
  v2 = sub_1D21116E4(&qword_1EC6C7CA0, type metadata accessor for HSIntervalBlockPayload, &protocol conformance descriptor for HSIntervalBlockPayload);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D210F758(uint64_t a1, uint64_t a2)
{
  sub_1D21116E4(&qword_1EC6C7CA0, type metadata accessor for HSIntervalBlockPayload, &protocol conformance descriptor for HSIntervalBlockPayload);

  return sub_1D211355C();
}

uint64_t sub_1D210F7D8()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8E0);
  __swift_project_value_buffer(v0, qword_1EC6CE8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FLOW_DIRECTION_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DELIVERED";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REVERSE";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NET";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FA3C()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8F8);
  __swift_project_value_buffer(v0, qword_1EC6CE8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2115280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMMODITY_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ELECTRIC";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FC28()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE910);
  __swift_project_value_buffer(v0, qword_1EC6CE910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2115280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNIT_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KWH";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FE14()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE928);
  __swift_project_value_buffer(v0, qword_1EC6CE928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qualities";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D211005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D21134CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D2110168(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_1D211021C(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_1D21134FC();
      }

      else if (result == 2)
      {
        sub_1D2112744();
        sub_1D21134DC();
      }

      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D2110168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1D211352C();
}

uint64_t sub_1D211021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1D211352C();
}

uint64_t sub_1D21102D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D211358C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (sub_1D2112744(), result = sub_1D211356C(), !v4))
    {
      result = sub_1D21103CC(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1D21105D4(v3, a1, a2, a3);
        type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
        return sub_1D211346C();
      }
    }
  }

  return result;
}

uint64_t sub_1D21103CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D211345C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D2112798(a1 + *(v12 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1D21135BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D21105D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D211345C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D2112798(a1 + *(v12 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1D21135BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D21107DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  sub_1D211347C();
  v5 = *(a1 + 28);
  v6 = sub_1D211345C();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[*(a1 + 32)];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_1D21108C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D2110938(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D2110A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21116E4(&qword_1EC6C7DA0, type metadata accessor for HSIntervalBlockPayload.IntervalReading, &unk_1D2119CB4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D2110AA0(uint64_t a1)
{
  v2 = sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading, &unk_1D2119E68);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D2110B0C(uint64_t a1, uint64_t a2)
{
  sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading, &unk_1D2119E68);

  return sub_1D211355C();
}

uint64_t sub_1D2110B8C()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE940);
  __swift_project_value_buffer(v0, qword_1EC6CE940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNSPECIFIED";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ESTIMATED";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VALIDATED";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RAW";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t _s12HomeServices22HSIntervalBlockPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v54[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v54[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54[-v22];
  if (*a1 != *a2 && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_33;
  }

  v58 = v11;
  v59 = v7;
  v24 = type metadata accessor for HSIntervalBlockPayload(0);
  v60 = v16;
  v61 = v24;
  v25 = *(v24 + 52);
  v26 = *(v16 + 48);
  sub_1D2112798(a1 + v25, v23);
  sub_1D2112798(a2 + v25, &v23[v26]);
  v27 = *(v5 + 48);
  if (v27(v23, 1, v4) == 1)
  {
    if (v27(&v23[v26], 1, v4) == 1)
    {
      sub_1D20A862C(v23, &qword_1EC6C7BD8, &qword_1D2119238);
      goto LABEL_19;
    }

LABEL_17:
    v28 = v23;
LABEL_32:
    sub_1D20A862C(v28, &qword_1EC6C7BE0, &qword_1D2119240);
    goto LABEL_33;
  }

  sub_1D2112798(v23, v15);
  v57 = v27;
  if (v27(&v23[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_17;
  }

  v29 = v59;
  (*(v5 + 32))(v59, &v23[v26], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v55 = sub_1D21137AC();
  v56 = v5;
  v30 = *(v5 + 8);
  v30(v29, v4);
  v30(v15, v4);
  v5 = v56;
  sub_1D20A862C(v23, &qword_1EC6C7BD8, &qword_1D2119238);
  v27 = v57;
  if ((v55 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v31 = *(v61 + 56);
  v32 = *(v60 + 48);
  sub_1D2112798(a1 + v31, v21);
  sub_1D2112798(a2 + v31, &v21[v32]);
  if (v27(v21, 1, v4) == 1)
  {
    if (v27(&v21[v32], 1, v4) == 1)
    {
      sub_1D20A862C(v21, &qword_1EC6C7BD8, &qword_1D2119238);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v33 = v27;
  v34 = v63;
  sub_1D2112798(v21, v63);
  v57 = v33;
  if (v33(&v21[v32], 1, v4) == 1)
  {
    (*(v5 + 8))(v34, v4);
LABEL_24:
    v28 = v21;
    goto LABEL_32;
  }

  v35 = v59;
  (*(v5 + 32))(v59, &v21[v32], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v36 = sub_1D21137AC();
  v37 = *(v5 + 8);
  v37(v35, v4);
  v37(v63, v4);
  sub_1D20A862C(v21, &qword_1EC6C7BD8, &qword_1D2119238);
  v27 = v57;
  if ((v36 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_26:
  v38 = *(v61 + 60);
  v39 = *(v60 + 48);
  v40 = v62;
  sub_1D2112798(a1 + v38, v62);
  sub_1D2112798(a2 + v38, &v40[v39]);
  if (v27(v40, 1, v4) != 1)
  {
    v41 = v27;
    v42 = v58;
    sub_1D2112798(v40, v58);
    if (v41(&v40[v39], 1, v4) != 1)
    {
      v45 = v59;
      (*(v5 + 32))(v59, &v40[v39], v4);
      sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v46 = sub_1D21137AC();
      v47 = *(v5 + 8);
      v47(v45, v4);
      v47(v42, v4);
      sub_1D20A862C(v40, &qword_1EC6C7BD8, &qword_1D2119238);
      if ((v46 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    (*(v5 + 8))(v42, v4);
    goto LABEL_31;
  }

  if (v27(&v40[v39], 1, v4) != 1)
  {
LABEL_31:
    v28 = v40;
    goto LABEL_32;
  }

  sub_1D20A862C(v40, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_36:
  v48 = *(a1 + 64);
  v49 = *(a2 + 64);
  if (*(a1 + 72))
  {
    v48 = v48 != 0;
  }

  if (*(a2 + 72) == 1)
  {
    if (v49)
    {
      if (v48 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v48)
    {
      goto LABEL_33;
    }
  }

  else if (v48 != v49)
  {
    goto LABEL_33;
  }

  v50 = *(a1 + 80);
  v51 = *(a2 + 80);
  if (*(a1 + 88))
  {
    v50 = v50 != 0;
  }

  if (*(a2 + 88) == 1)
  {
    if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v50)
    {
      goto LABEL_33;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_33;
  }

  v52 = *(a1 + 96);
  v53 = *(a2 + 96);
  if (*(a2 + 104) == 1)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_33;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_33;
      }
    }

    else if (v53)
    {
      if (v52 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v52)
    {
      goto LABEL_33;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_33;
  }

  if (sub_1D20FC26C(*(a1 + 112), *(a2 + 112)))
  {
    sub_1D211348C();
    sub_1D21116E4(&qword_1EC6C7848, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v43 = sub_1D21137AC();
    return v43 & 1;
  }

LABEL_33:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1D21116E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D2111874(uint64_t a1)
{
  sub_1D21119B4(319, &qword_1EC6C7CC0, type metadata accessor for HSIntervalBlockPayload.IntervalReading, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D211348C();
    if (v2 <= 0x3F)
    {
      sub_1D21119B4(319, &qword_1EC6C7CC8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21119B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D2111A40(uint64_t a1)
{
  sub_1D2111B1C();
  if (v1 <= 0x3F)
  {
    sub_1D211348C();
    if (v2 <= 0x3F)
    {
      sub_1D21119B4(319, &qword_1EC6C7CC8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2111B1C()
{
  if (!qword_1EC6C7CE0)
  {
    v0 = sub_1D2113A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6C7CE0);
    }
  }
}

unint64_t sub_1D2111BB0()
{
  result = qword_1EC6C7CE8;
  if (!qword_1EC6C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CE8);
  }

  return result;
}

unint64_t sub_1D2111C08()
{
  result = qword_1EC6C7CF0;
  if (!qword_1EC6C7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CF0);
  }

  return result;
}

unint64_t sub_1D2111C60()
{
  result = qword_1EC6C7CF8;
  if (!qword_1EC6C7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CF8);
  }

  return result;
}

unint64_t sub_1D2111CB8()
{
  result = qword_1EC6C7D00;
  if (!qword_1EC6C7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D00);
  }

  return result;
}

unint64_t sub_1D2111D10()
{
  result = qword_1EC6C7D08;
  if (!qword_1EC6C7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D08);
  }

  return result;
}

unint64_t sub_1D2111D68()
{
  result = qword_1EC6C7D10;
  if (!qword_1EC6C7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D10);
  }

  return result;
}

unint64_t sub_1D2111FA0()
{
  result = qword_1EC6C7D70;
  if (!qword_1EC6C7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D70);
  }

  return result;
}

unint64_t sub_1D2111FF8()
{
  result = qword_1EC6C7D78;
  if (!qword_1EC6C7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D78);
  }

  return result;
}

unint64_t sub_1D2112050()
{
  result = qword_1EC6C7D80;
  if (!qword_1EC6C7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D80);
  }

  return result;
}

unint64_t sub_1D21120A8()
{
  result = qword_1EC6C7D88;
  if (!qword_1EC6C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D88);
  }

  return result;
}

unint64_t sub_1D2112100()
{
  result = qword_1EC6C7D90;
  if (!qword_1EC6C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D90);
  }

  return result;
}

unint64_t sub_1D2112158()
{
  result = qword_1EC6C7D98;
  if (!qword_1EC6C7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D98);
  }

  return result;
}

uint64_t sub_1D21121AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36[-v18];
  if (*a1 != *a2 || (sub_1D20FCAB4(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v40 = v11;
  v41 = v7;
  v42 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  v20 = *(v42 + 28);
  v21 = *(v14 + 48);
  sub_1D2112798(a1 + v20, v19);
  sub_1D2112798(a2 + v20, &v19[v21]);
  v43 = v5;
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1D2112798(v19, v13);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = *(v43 + 32);
      v38 = v22;
      v25 = v41;
      v24(v41, &v19[v21], v4);
      sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v37 = sub_1D21137AC();
      v39 = *(v43 + 8);
      v26 = v25;
      v22 = v38;
      v39(v26, v4);
      v39(v13, v4);
      sub_1D20A862C(v19, &qword_1EC6C7BD8, &qword_1D2119238);
      if ((v37 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    (*(v43 + 8))(v13, v4);
LABEL_8:
    v23 = v19;
LABEL_16:
    sub_1D20A862C(v23, &qword_1EC6C7BE0, &qword_1D2119240);
    goto LABEL_17;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1D20A862C(v19, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_10:
  v27 = *(v42 + 32);
  v28 = *(v14 + 48);
  sub_1D2112798(a1 + v27, v17);
  sub_1D2112798(a2 + v27, &v17[v28]);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v28], 1, v4) == 1)
    {
      sub_1D20A862C(v17, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_20:
      sub_1D211348C();
      sub_1D21116E4(&qword_1EC6C7848, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v30 = sub_1D21137AC();
      return v30 & 1;
    }

    goto LABEL_15;
  }

  v29 = v40;
  sub_1D2112798(v17, v40);
  if (v22(&v17[v28], 1, v4) == 1)
  {
    (*(v43 + 8))(v29, v4);
LABEL_15:
    v23 = v17;
    goto LABEL_16;
  }

  v32 = v43;
  v33 = v41;
  (*(v43 + 32))(v41, &v17[v28], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v34 = sub_1D21137AC();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v29, v4);
  sub_1D20A862C(v17, &qword_1EC6C7BD8, &qword_1D2119238);
  if (v34)
  {
    goto LABEL_20;
  }

LABEL_17:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1D2112744()
{
  result = qword_1EC6C7DA8;
  if (!qword_1EC6C7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7DA8);
  }

  return result;
}

uint64_t sub_1D2112798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D211284C()
{
  v1 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  [*(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle) closeFile];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC12HomeServices12StreamReader_encoding;
  v4 = sub_1D211381C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1D20DEC70(*(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData), *(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData + 8));
  return v0;
}

uint64_t sub_1D2112904()
{
  sub_1D211284C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StreamReader(uint64_t a1)
{
  result = qword_1EE083D30;
  if (!qword_1EE083D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21129B0(uint64_t a1)
{
  result = sub_1D211381C();
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

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x1EEDCCB88](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}