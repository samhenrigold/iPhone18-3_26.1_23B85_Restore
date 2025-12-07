uint64_t sub_245B88B70(int64_t a1)
{
  v2 = sub_245B92990();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(sub_245B92860() + 16);

  v10 = 0;
  if (a1 < 0 || v9 <= a1)
  {
    return v10 & 1;
  }

  result = sub_245B92860();
  if (*(result + 16) > a1)
  {
    (*(v3 + 16))(v8, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1, v2);

    (*(v3 + 104))(v6, *MEMORY[0x277D36AE0], v2);
    v10 = sub_245B92980();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v8, v2);
    return v10 & 1;
  }

  __break(1u);
  return result;
}

void *sub_245B88D20(char *a1)
{
  v206 = a1;
  v3 = sub_245B92B90();
  v4 = *(v3 - 8);
  v230 = v3;
  v231 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v229 = &v168[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v208 = &v168[-v7];
  v8 = sub_245B92800();
  MEMORY[0x28223BE20](v8 - 8);
  v214 = &v168[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_245B92770();
  MEMORY[0x28223BE20](v10 - 8);
  v213 = &v168[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = sub_245B92780();
  v224 = *(v209 - 8);
  v12 = MEMORY[0x28223BE20](v209);
  v227 = &v168[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v212 = &v168[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v207 = &v168[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v168[-v19];
  MEMORY[0x28223BE20](v18);
  v210 = &v168[-v21];
  v219 = sub_245B92830();
  v203 = *(v219 - 8);
  v22 = MEMORY[0x28223BE20](v219);
  v211 = &v168[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v221 = &v168[-v24];
  v225 = sub_245B92A70();
  v205 = *(v225 - 8);
  v25 = MEMORY[0x28223BE20](v225);
  v215 = &v168[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v220 = &v168[-v27];
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34860, &qword_245B94770);
  v202 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v218 = &v168[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34868, &unk_245B95120);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v228 = &v168[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v223 = &v168[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v217 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v222 = &v168[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v37 = &v168[-v36];
  v39 = v1[2];
  v38 = v1[3];
  v40 = v1[4];
  v204 = v1[5];
  v41 = v1[7];
  v216 = v1[6];
  swift_beginAccess();
  v42 = *(v39 + 16);
  if (!*(v42 + 16) || (v43 = sub_245B8BA78(v38, v40), (v44 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    v50 = v49;
    v233 = 0;
    v234 = 0xE000000000000000;
    sub_245B92E50();

    v233 = 0xD000000000000021;
    v234 = 0x8000000245B93F60;
    MEMORY[0x245D7A2F0](v38, v40);
    v51 = v234;
    *v50 = v233;
    v50[1] = v51;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v45 = *(*(v42 + 56) + 8 * v43);
  swift_endAccess();
  swift_retain_n();
  v46 = sub_245B92850();
  v47 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_outputs, 0, j__e5rt_execution_stream_operation_get_output_names, 0, j__e5rt_execution_stream_operation_retain_output_port, 0);
  if (v2)
  {
  }

  v52 = v47;
  v53 = 0;
  v54 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inouts, 0, j__e5rt_execution_stream_operation_get_inout_names, 0, j__e5rt_execution_stream_operation_retain_inout_port, 0);

  v195 = sub_245B8DC9C(MEMORY[0x277D84F90]);
  v55 = *(v46 + 16);
  v188 = v45;
  v198 = v46;
  v193 = v55;
  v197 = v54;
  if (v55)
  {
    v56 = 0;
    v57 = 0;
    v192 = (v216 + 32);
    v190 = (v54 + 48);
    v191 = (v52 + 48);
    v196 = 0;
    v194 = v52;
    while (1)
    {
      if (v57 == 0x100000000)
      {
        goto LABEL_90;
      }

      v58 = *(v41 + 16);
      v200 = v56;
      v199 = v57;
      if (v58)
      {
        v59 = sub_245B8BAF0(v57);
        if (v60)
        {
          break;
        }
      }

      if (v56 >= *(v216 + 16))
      {

        type metadata accessor for E5MLDelegate.E5MLError(0);
        sub_245B7C384();
        swift_allocError();
        *v158 = 0xD00000000000001ELL;
        v158[1] = 0x8000000245B93F90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      if (v56 < 0)
      {
        goto LABEL_91;
      }

      v73 = &v192[2 * v56];
      v62 = *v73;
      v63 = v73[1];
      v74 = *(v52 + 16) + 1;
      v75 = v191;
      do
      {
        if (!--v74)
        {

          type metadata accessor for E5MLDelegate.E5MLError(0);
          sub_245B7C384();
          swift_allocError();
          v83 = v82;
          v233 = 0;
          v234 = 0xE000000000000000;
          sub_245B92E50();

          v84 = 0x8000000245B93FB0;
          v85 = 0xD000000000000015;
          goto LABEL_38;
        }

        v76 = *v75;
        if (*(v75 - 2) == v62 && *(v75 - 1) == v63)
        {
          break;
        }

        v75 += 3;
      }

      while ((sub_245B92F50() & 1) == 0);

      v78 = v195;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v233 = v78;
      v70 = v199;
      sub_245B8C888(v76, v199, isUniquelyReferenced_nonNull_native);
      v195 = v233;
      v71 = (v200 + 1);
      v72 = &v232;
LABEL_30:
      *(v72 - 32) = v71;
      v80 = v70 + 1;
      v67 = v80 == v193;
      v45 = v188;
      v57 = v80;
      v53 = v196;
      v81 = v226;
      v46 = v198;
      v52 = v194;
      v56 = v200;
      if (v67)
      {
        goto LABEL_35;
      }
    }

    v61 = (*(v41 + 56) + 16 * v59);
    v62 = *v61;
    v63 = v61[1];
    v64 = *(v197 + 16) + 1;
    v65 = v190;
    while (--v64)
    {
      v66 = *v65;
      v67 = *(v65 - 2) == v62 && *(v65 - 1) == v63;
      if (!v67)
      {
        v65 += 3;
        if ((sub_245B92F50() & 1) == 0)
        {
          continue;
        }
      }

      v68 = v195;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v68;
      v70 = v199;
      sub_245B8C888(v66, v199, v69);
      v71 = v233;
      v72 = &v227;
      goto LABEL_30;
    }

    type metadata accessor for E5MLDelegate.E5MLError(0);
    sub_245B7C384();
    swift_allocError();
    v83 = v89;
    v233 = 0;
    v234 = 0xE000000000000000;
    sub_245B92E50();

    v84 = 0x8000000245B93FD0;
    v85 = 0xD000000000000014;
LABEL_38:
    v233 = v85;
    v234 = v84;
    MEMORY[0x245D7A2F0](v62, v63);

    v90 = v234;
    *v83 = v233;
    v83[1] = v90;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v81 = v226;
LABEL_35:

  v86 = v205;
  v87 = v46;
  v88 = v225;
  (*(v205 + 56))(v37, 1, 1, v225);
  v235 = sub_245B873A8(v37, *(v87 + 16));
  sub_245B78418(v206, v204, v45, v87, v195, &v235);
  if (v53)
  {
  }

  v91 = *(v235 + 16);
  v193 = (v202 + 7);
  v192 = (v202 + 6);
  v191 = (v86 + 48);
  v184 = (v86 + 32);
  v183 = (v86 + 16);
  v182 = (v86 + 88);
  v181 = *MEMORY[0x277D36B10];
  v180 = (v86 + 8);
  v174 = (v86 + 96);
  v194 = v224 + 16;
  v175 = v224 + 88;
  v186 = *MEMORY[0x277D36AC8];
  v169 = *MEMORY[0x277D36AC0];
  v173 = (v224 + 96);
  v170 = (v224 + 8);
  v179 = v203 + 2;
  v205 = v231 + 16;
  v204 = v231 + 88;
  v202 = (v231 + 8);
  LODWORD(v200) = *MEMORY[0x277D36B40];
  v199 = (v231 + 96);
  v172 = (v224 + 104);
  v171 = v203 + 1;
  v189 = (v224 + 32);
  v185 = v235;

  v92 = 0;
  v203 = MEMORY[0x277D84F90];
  v93 = v209;
  v196 = 0;
  v94 = v88;
  v95 = v228;
  v190 = v91;
  v201 = v20;
  while (1)
  {
    v97 = v198;
    if (v92 == v91)
    {
      v98 = 1;
      v197 = v91;
    }

    else
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_88;
      }

      if (v92 >= *(v185 + 16))
      {
        goto LABEL_89;
      }

      v99 = v92 + 1;
      v100 = v218;
      v101 = v185 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v92;
      v102 = *(v81 + 48);
      *v218 = v92;
      sub_245B77E04(v101, v100 + v102);
      v103 = v100;
      v95 = v228;
      sub_245B7CD64(v103, v228, &qword_27EE34860, &qword_245B94770);
      v98 = 0;
      v197 = v99;
      v97 = v198;
    }

    (*v193)(v95, v98, 1, v81);
    v104 = v95;
    v105 = v223;
    sub_245B7CD64(v104, v223, &qword_27EE34868, &unk_245B95120);
    if ((*v192)(v105, 1, v81) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v203;
    }

    v106 = v105;
    v107 = *v105;
    v108 = v222;
    sub_245B7CD64(v106 + *(v81 + 48), v222, &qword_27EE34848, &qword_245B94760);
    if ((*v191)(v108, 1, v94) != 1)
    {
      break;
    }

    sub_245B77E74(v108);
    if ((v107 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_57:
    if (v107 >= *(v97 + 16))
    {
      goto LABEL_87;
    }

    v120 = (*(v224 + 80) + 32) & ~*(v224 + 80);
    v121 = *(v224 + 72);
    (*(v224 + 16))(v227, v97 + v120 + v121 * v107, v93);
    v122 = v203;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_245B850B8(0, v122[2] + 1, 1, v122);
    }

    v95 = v228;
    v203 = v122;
    v124 = v122[2];
    v123 = v122[3];
    if (v124 >= v123 >> 1)
    {
      v203 = sub_245B850B8((v123 > 1), v124 + 1, 1, v203);
    }

    v96 = v203;
    v203[2] = v124 + 1;
    (*v189)(&v96[v120 + v124 * v121], v227, v93);
    v94 = v225;
    v81 = v226;
LABEL_41:
    v91 = v190;
    v92 = v197;
  }

  v109 = v220;
  (*v184)(v220, v108, v94);
  v110 = v215;
  (*v183)(v215, v109, v94);
  v111 = (*v182)(v110, v94);
  if (v111 != v181)
  {
    v119 = *v180;
    (*v180)(v109, v94);
    v119(v110, v94);
    v97 = v198;
    if ((v107 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_57;
  }

  (*v174)(v110, v94);
  if ((v107 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  if (v107 >= *(v97 + 16))
  {
    goto LABEL_93;
  }

  v187 = *v110;
  v112 = v224;
  v178 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v177 = *(v224 + 72);
  v113 = v97 + v178 + v177 * v107;
  v114 = *(v224 + 16);
  v115 = v210;
  v114(v210, v113, v93);
  v116 = *(v112 + 88);
  v117 = v116(v115, v93);
  if (v117 == v186)
  {
    (*v173)(v115, v93);
    v118 = swift_projectBox();
    v176 = *v179;
    v176(v221, v118, v219);
  }

  else
  {
    if (v117 != v169)
    {

      swift_bridgeObjectRelease_n();
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      v160 = v159;
      v233 = 0;
      v234 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93FF0);
      v232 = v107;
      v161 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v161);

      v162 = v234;
      *v160 = v233;
      v160[1] = v162;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*v180)(v220, v225);
      return (*v170)(v210, v93);
    }

    v125 = v210;
    v206 = *v173;
    (v206)(v210, v93);
    v216 = *v125;
    v126 = swift_projectBox();
    v114(v20, v126, v93);
    v127 = v207;
    v114(v207, v20, v93);
    v128 = v93;
    v129 = v116(v127, v93);
    if (v129 != v186)
    {

      swift_bridgeObjectRelease_n();
      v163 = *v170;
      (*v170)(v127, v128);
      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      v165 = v164;
      v233 = 0;
      v234 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93FF0);
      v232 = v107;
      v166 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v166);

      v167 = v234;
      *v165 = v233;
      v165[1] = v167;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v163(v201, v128);
      (*v180)(v220, v225);
    }

    (*v170)(v20, v93);
    (v206)(v127, v93);
    v130 = swift_projectBox();
    v176 = *v179;
    v176(v221, v130, v219);
  }

  v131 = sub_245B927C0();
  v132 = *(v131 + 16);
  if (!v132)
  {

LABEL_74:
    sub_245B927F0();
    sub_245B92810();
    sub_245B92A00();
    v146 = *(sub_245B92A00() + 16);

    v147 = sub_245B92D40();
    v147[2] = v146 + 1;
    v147[4] = 1;
    if (v146)
    {
      memset_pattern16(v147 + 5, &unk_245B947A0, 8 * v146);
    }

    sub_245B92820();
    v148 = v211;
    sub_245B927E0();
    v149 = v219;
    v150 = swift_allocBox();
    v176(v151, v148, v149);
    *v212 = v150;
    (*v172)();
    v152 = v203;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_245B850B8(0, v152[2] + 1, 1, v152);
    }

    v203 = v152;
    v154 = v152[2];
    v153 = v152[3];
    if (v154 >= v153 >> 1)
    {
      v203 = sub_245B850B8((v153 > 1), v154 + 1, 1, v203);
    }

    v155 = *v171;
    v156 = v219;
    (*v171)(v211, v219);
    v155(v221, v156);
    v94 = v225;
    (*v180)(v220, v225);
    v157 = v203;
    v203[2] = v154 + 1;
    (*v189)(&v157[v178 + v154 * v177], v212, v93);
    v81 = v226;
    v95 = v228;
    goto LABEL_41;
  }

  v233 = MEMORY[0x277D84F90];
  v133 = v131;
  sub_245B852D0(0, v132, 0);
  v134 = v133;
  v135 = 0;
  v136 = v233;
  v206 = (v134 + ((*(v231 + 80) + 32) & ~*(v231 + 80)));
  v137 = v208;
  v216 = v134;
  while (v135 < *(v134 + 16))
  {
    v138 = v230;
    v139 = v231;
    v140 = *(v231 + 16);
    v140(v137, &v206[*(v231 + 72) * v135], v230);
    v141 = v229;
    v140(v229, v137, v138);
    v142 = (*(v139 + 88))(v141, v138);
    if (v142 != v200)
    {
      goto LABEL_94;
    }

    (*v202)(v137, v138);
    (*v199)(v141, v138);
    v143 = *v141;
    v233 = v136;
    v145 = v136[2];
    v144 = v136[3];
    if (v145 >= v144 >> 1)
    {
      sub_245B852D0((v144 > 1), v145 + 1, 1);
      v137 = v208;
      v136 = v233;
    }

    ++v135;
    v136[2] = v145 + 1;
    v136[v145 + 4] = v143;
    v20 = v201;
    v134 = v216;
    if (v132 == v135)
    {

      v93 = v209;
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_245B92E90();
  __break(1u);
  return result;
}

uint64_t sub_245B8A91C()
{
  v1 = sub_245B92870();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_245B8A9A4(int64_t a1)
{
  sub_245B92870();

  return sub_245B88B70(a1);
}

uint64_t sub_245B8AA14(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_245B92DC0();

    if (v8)
    {

      type metadata accessor for E5IOPort();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_245B92DB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_245B8AC20(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_245B8AE20(v17 + 1);
    }

    sub_245B8B070(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_245B92FF0();
  MEMORY[0x245D7A680](*(a2 + 16));
  v10 = sub_245B93010();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_245B8B114(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_245B8AC20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
    v2 = sub_245B92E10();
    v15 = v2;
    sub_245B92DA0();
    if (sub_245B92DD0())
    {
      type metadata accessor for E5IOPort();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_245B8AE20(v9 + 1);
        }

        v2 = v15;
        sub_245B92FF0();
        MEMORY[0x245D7A680](*(v14 + 16));
        result = sub_245B93010();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_245B92DD0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_245B8AE20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  result = sub_245B92E00();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v17 + 16));
      result = sub_245B93010();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_245B8B070(uint64_t a1, uint64_t a2)
{
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(a1 + 16));
  sub_245B93010();
  result = sub_245B92D90();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_245B8B114(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245B8AE20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_245B8B278();
      a2 = v7;
      goto LABEL_12;
    }

    sub_245B8B3C8(v5 + 1);
  }

  v8 = *v3;
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v4 + 16));
  result = sub_245B93010();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for E5IOPort();
    a2 = v11;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_245B92F70();
  __break(1u);
  return result;
}

void *sub_245B8B278()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  v2 = *v0;
  v3 = sub_245B92DF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_245B8B3C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  result = sub_245B92E00();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v16 + 16));
      result = sub_245B93010();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_245B8B5F0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_245B92DB0();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
      result = sub_245B92E20();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_245B92DB0();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x245D7A4E0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v9 + 16));
      result = sub_245B93010();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v6 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        v16 = ~v10;
        while (*(*(v15 + 8 * v11) + 16) != *(v9 + 16))
        {
          v11 = (v11 + 1) & v16;
          v12 = v11 >> 6;
          v13 = *(v6 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v12) = v14 | v13;
        *(v15 + 8 * v11) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v24 = *(v20 + 8 * v19);
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v24 + 16));
      result = sub_245B93010();
      v25 = -1 << *(v3 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      v30 = *(v3 + 48);
      if (((1 << v26) & v28) != 0)
      {
        v31 = ~v25;
        while (*(*(v30 + 8 * v26) + 16) != *(v24 + 16))
        {
          v26 = (v26 + 1) & v31;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v27) = v29 | v28;
        *(v30 + 8 * v26) = v24;
        v22 = *(v3 + 16);
        v8 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v23;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_245B8B884(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_245B92CE0() != a1 || v9 != a2)
  {
    v10 = sub_245B92F50();

    if (v10)
    {
      return v8;
    }

    v8 = sub_245B92C50();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_245B8B974(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_245B92D00();
  }

  __break(1u);
  return result;
}

void *sub_245B8B9C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A50, &qword_245B95140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_245B8BA34(uint64_t a1)
{
  v2 = sub_245B92FE0();

  return sub_245B8BB38(a1, v2);
}

unint64_t sub_245B8BA78(uint64_t a1, uint64_t a2)
{
  sub_245B92FF0();
  sub_245B92C30();
  v4 = sub_245B93010();

  return sub_245B8BBA4(a1, a2, v4);
}

unint64_t sub_245B8BAF0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x245D7A650](*(v1 + 40), a1, 4);

  return sub_245B8BC5C(v2, v3);
}

unint64_t sub_245B8BB38(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_245B8BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_245B92F50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_245B8BC5C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_245B8BCC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
  v34 = v4;
  result = sub_245B92EC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_245B92FF0();
      sub_245B92C30();
      result = sub_245B93010();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_245B8BF70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
  v37 = v4;
  result = sub_245B92EC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_245B92FF0();
      sub_245B92C30();
      result = sub_245B93010();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_245B8C230(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v34 = v4;
  result = sub_245B92EC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x245D7A650](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_245B8C4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  result = sub_245B92EC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_245B92FE0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_245B8C728(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_245B8BAF0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_245B8C230(v16, a4 & 1);
      result = sub_245B8BAF0(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_245B92F80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_245B8CCBC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_245B8C888(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245B8BA34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_245B8C4B8(v14, a3 & 1);
      result = sub_245B8BA34(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_245B92F80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_245B8CE24();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_245B8C9D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CCBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CE24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unsigned __int8 *sub_245B8CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_245B92CF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_245B8D4FC(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_245B92E70();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_245B8D4FC(uint64_t a1, unint64_t a2)
{
  v2 = sub_245B92D00();
  v6 = sub_245B8D57C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_245B8D57C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_245B92D80();
    if (!v9 || (v10 = v9, v11 = sub_245B8B9C0(v9, 0), v12 = sub_245B8D6D4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_245B92C20();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_245B92C20();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_245B92E70();
LABEL_4:

  return sub_245B92C20();
}

unint64_t sub_245B8D6D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_245B8D8F4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_245B92CC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_245B92E70();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_245B8D8F4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_245B92CA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_245B8D8F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_245B92CD0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D7A330](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_245B8D970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
    v3 = sub_245B92ED0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245B8BA78(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245B8DA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
    v3 = sub_245B92ED0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_245B8BA78(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_245B8DB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v3 = sub_245B92ED0();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_245B8BAF0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_245B8BAF0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_245B8DC9C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  v3 = sub_245B92ED0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_245B8BA34(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_245B8BA34(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_245B8DDA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 **a3@<X8>)
{
  result = sub_245B840B8(a1, a2, 58, 0xE100000000000000);
  if (v3)
  {
    return result;
  }

  v89 = result;
  v95 = v6;
  v9 = sub_245B840B8(v7, v8, 124, 0xE100000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v9;

  v17 = sub_245B840B8(v13, v15, 124, 0xE100000000000000);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v93 = v17;

  sub_245B8B884(124, 0xE100000000000000, v21, v23);
  if (v24)
  {

    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v27 = sub_245B92D00();
    MEMORY[0x245D7A290](v27);

    v28 = sub_245B92C50();
    v29 = sub_245B8B974(v28, v21, v23);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x245D7A290](v29, v31, v33, v35);
    v26 = v36;
  }

  v88 = sub_245B84288(v16, v11);

  v87 = sub_245B84288(v93, v19);

  v37 = sub_245B8DB88(MEMORY[0x277D84F90]);
  v38 = sub_245B84288(v25, v26);

  v94 = *(v38 + 16);
  if (!v94)
  {

LABEL_84:
    *a3 = v89;
    a3[1] = v95;
    a3[2] = v88;
    a3[3] = v87;
    a3[4] = v37;
    return result;
  }

  v39 = 0;
  v91 = v37;
  v92 = v38 + 32;
  v90 = v38;
  while (v39 < *(v38 + 16))
  {
    v40 = (v92 + 16 * v39);
    v42 = *v40;
    v41 = v40[1];
    v43 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      goto LABEL_11;
    }

    sub_245B8B884(58, 0xE100000000000000, v42, v41);
    if (v44)
    {

      type metadata accessor for E5MLDelegate.E5MLError(0);
      sub_245B7C384();
      swift_allocError();
      v85 = v84;
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0x6574696D696C6544, 0xEB00000000272072);
      sub_245B92BA0();
      MEMORY[0x245D7A2F0](0xD000000000000011, 0x8000000245B93ED0);
      MEMORY[0x245D7A2F0](v42, v41);

      MEMORY[0x245D7A2F0](34, 0xE100000000000000);
      v86 = v97;
      *v85 = v96;
      v85[1] = v86;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v45 = sub_245B92D00();
    v46 = MEMORY[0x245D7A290](v45);
    v48 = v47;

    v49 = sub_245B92C50();
    v50 = sub_245B8B974(v49, v42, v41);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = MEMORY[0x245D7A290](v50, v52, v54, v56);
    v59 = v58;

    v60 = HIBYTE(v48) & 0xF;
    v61 = v46 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v62 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62)
    {

      goto LABEL_9;
    }

    if ((v48 & 0x1000000000000000) == 0)
    {
      if ((v48 & 0x2000000000000000) != 0)
      {
        v96 = v46;
        v97 = v48 & 0xFFFFFFFFFFFFFFLL;
        if (v46 == 43)
        {
          if (!v60)
          {
            goto LABEL_88;
          }

          if (--v60)
          {
            LODWORD(v64) = 0;
            v74 = &v96 + 1;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v64;
              if ((v76 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v64 = v76 + v75;
              if (__CFADD__(v76, v75))
              {
                break;
              }

              ++v74;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v46 == 45)
        {
          if (!v60)
          {
            goto LABEL_90;
          }

          if (--v60)
          {
            LODWORD(v64) = 0;
            v68 = &v96 + 1;
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v64;
              if ((v70 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v64 = v70 - v69;
              if (v70 < v69)
              {
                break;
              }

              ++v68;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v60)
        {
          LODWORD(v64) = 0;
          v79 = &v96;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = 10 * v64;
            if ((v81 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v64 = v81 + v80;
            if (__CFADD__(v81, v80))
            {
              break;
            }

            v79 = (v79 + 1);
            if (!--v60)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else
      {
        if ((v46 & 0x1000000000000000) != 0)
        {
          result = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_245B92E70();
        }

        v63 = *result;
        if (v63 == 43)
        {
          if (v61 < 1)
          {
            goto LABEL_91;
          }

          v60 = v61 - 1;
          if (v61 != 1)
          {
            v64 = 0;
            if (!result)
            {
              goto LABEL_69;
            }

            v71 = result + 1;
            while (1)
            {
              v72 = *v71 - 48;
              if (v72 > 9)
              {
                break;
              }

              v73 = 10 * v64;
              if ((v73 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v64 = v73 + v72;
              if (__CFADD__(v73, v72))
              {
                break;
              }

              ++v71;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v63 == 45)
        {
          if (v61 < 1)
          {
            goto LABEL_89;
          }

          v60 = v61 - 1;
          if (v61 != 1)
          {
            v64 = 0;
            if (result)
            {
              v65 = result + 1;
              while (1)
              {
                v66 = *v65 - 48;
                if (v66 > 9)
                {
                  goto LABEL_77;
                }

                v67 = 10 * v64;
                if ((v67 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_77;
                }

                v64 = v67 - v66;
                if (v67 < v66)
                {
                  goto LABEL_77;
                }

                ++v65;
                if (!--v60)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_69:
            LOBYTE(v60) = 0;
LABEL_78:
            v98 = v60;
            v82 = v60;

            if ((v82 & 1) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_9;
          }
        }

        else
        {
          if (!v61)
          {
            goto LABEL_77;
          }

          v64 = 0;
          if (!result)
          {
            goto LABEL_69;
          }

          while (1)
          {
            v77 = *result - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v64;
            if ((v78 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v64 = v78 + v77;
            if (__CFADD__(v78, v77))
            {
              break;
            }

            ++result;
            if (!--v61)
            {
              goto LABEL_69;
            }
          }
        }
      }

LABEL_77:
      v64 = 0;
      LOBYTE(v60) = 1;
      goto LABEL_78;
    }

    v98 = 0;
    v64 = sub_245B8CF80(v46, v48, 10);

    if ((v64 & 0x100000000) == 0)
    {
LABEL_79:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v91;
      result = sub_245B8C728(v57, v59, v64, isUniquelyReferenced_nonNull_native);
      v91 = v96;
      goto LABEL_10;
    }

LABEL_9:

LABEL_10:
    v38 = v90;
LABEL_11:
    if (++v39 == v94)
    {

      v37 = v91;
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t ProgramDescriptor.function(named:dependencies:profiler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A70, &qword_245B951C0);
  v5[7] = swift_task_alloc();
  v6 = sub_245B928E0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_245B927B0();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B8E660, 0, 0);
}

uint64_t sub_245B8E660()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_245B927A0();
  sub_245B92880();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_245B822B8(v4, &qword_27EE34A70, &qword_245B951C0);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_245B8E804;
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[6];
    v11 = v0[4];

    return sub_245B8EB60(v8, v10, v9, v11);
  }
}

uint64_t sub_245B8E804()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_245B8EAA0;
  }

  else
  {
    v2 = sub_245B8E918;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245B8E918()
{
  v1 = v0[15];
  result = sub_245B928B0();
  if (v1)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else if (result)
  {
    v7 = result;
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v9 + 8))(v8, v10);

    v11 = v0[1];

    return v11(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245B8EAA0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_245B8EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_245B928E0();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_245B92BF0();
  v4[17] = swift_task_alloc();
  v6 = sub_245B92940();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A78, &qword_245B951D0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = sub_245B92960();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE34A80, &qword_245B951D8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = sub_245B92910();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B8EE70, 0, 0);
}

uint64_t sub_245B8EE70()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  MEMORY[0x245D79F20](1397640770, 0xE400000000000000);
  v4 = *(v2 + 48);
  v0[40] = v4;
  v0[41] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[31], qword_27EE34A80, &qword_245B951D8);
    v5 = v0[40];
    v6 = v0[32];
    v7 = v0[30];
    v0[45] = sub_245B92650();
    v8 = sub_245B92640();
    MEMORY[0x245D79F20](v8);

    if (v5(v7, 1, v6) == 1)
    {
      sub_245B822B8(v0[30], qword_27EE34A80, &qword_245B951D8);
      v9 = v0[40];
      v10 = v0[32];
      v11 = v0[29];
      MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
      if (v9(v11, 1, v10) == 1)
      {
        sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);

        v12 = v0[1];

        return v12();
      }

      else
      {
        v26 = v0[34];
        v27 = v0[35];
        v28 = v0[32];
        v29 = v0[33];
        (*(v29 + 32))(v27, v0[29], v28);
        (*(v29 + 16))(v26, v27, v28);
        type metadata accessor for E5MLDelegate();
        swift_allocObject();
        v30 = swift_task_alloc();
        v0[49] = v30;
        *v30 = v0;
        v30[1] = sub_245B906B4;
        v31 = v0[34];

        return sub_245B85AFC(v31);
      }
    }

    else
    {
      v21 = v0[36];
      v20 = v0[37];
      v22 = v0[32];
      v23 = v0[33];
      (*(v23 + 32))(v20, v0[30], v22);
      (*(v23 + 16))(v21, v20, v22);
      swift_allocObject();
      v24 = swift_task_alloc();
      v0[46] = v24;
      *v24 = v0;
      v24[1] = sub_245B8FE00;
      v25 = v0[36];

      return MEMORY[0x282124268](v25);
    }
  }

  else
  {
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[32];
    v17 = v0[33];
    (*(v17 + 32))(v15, v0[31], v16);
    (*(v17 + 16))(v14, v15, v16);
    type metadata accessor for BNNSDelegate();
    swift_allocObject();
    v18 = swift_task_alloc();
    v0[42] = v18;
    *v18 = v0;
    v18[1] = sub_245B8F378;
    v19 = v0[38];

    return sub_245B76660(v19);
  }
}

uint64_t sub_245B8F378(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_245B8FC8C;
  }

  else
  {
    v4 = sub_245B8F48C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245B8F48C()
{
  v72 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  MEMORY[0x245D79F40](1397640770, 0xE400000000000000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[23], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
LABEL_24:
      swift_once();
    }

    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];
    v8 = sub_245B926E0();
    __swift_project_value_buffer(v8, qword_27EE36010);
    (*(v6 + 16))(v4, v7, v5);
    v9 = sub_245B926C0();
    v10 = sub_245B92D60();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[16];
    v17 = v0[12];
    v16 = v0[13];
    if (v11)
    {
      v68 = v0[32];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v70 = v19;
      *v18 = 136315138;
      log = v9;
      v65 = v12;
      v20 = sub_245B928D0();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_245B90E28(v20, v22, &v70);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_245B73000, log, v10, "Program had BNNS usage but could not find delegate args on function %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245D7ADF0](v19, -1, -1);
      MEMORY[0x245D7ADF0](v18, -1, -1);

      (*(v13 + 8))(v65, v68);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    (*(v0[25] + 32))(v0[28], v0[23], v0[24]);
    v24 = sub_245B92950();
    v67 = *(v24 + 16);
    if (v67)
    {
      v25 = 0;
      v66 = v0[19];
      while (1)
      {
        if (v25 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v26 = v24;
        (*(v66 + 16))(v0[20], v24 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v25, v0[18]);
        v27 = sub_245B92930();
        v29 = v28;
        sub_245B92BE0();
        v30 = sub_245B92BD0();
        v32 = v31;
        sub_245B74A68(v27, v29);
        if (!v32)
        {
          break;
        }

        v34 = v0[43];
        v35 = v0[20];
        ++v25;
        v69 = v0[18];
        v70 = 0x2E534E4E42;
        v71 = 0xE500000000000000;
        v0[7] = sub_245B92920();
        v36 = sub_245B92F40();
        MEMORY[0x245D7A2F0](v36);

        v37 = v71;
        v0[2] = v70;
        v0[3] = v37;
        v0[4] = v34;
        v0[5] = v30;
        v0[6] = v32;
        sub_245B7721C();

        sub_245B92790();
        (*(v66 + 8))(v35, v69);

        v24 = v26;
        if (v67 == v25)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x282124268](v33);
    }

LABEL_10:
    v38 = v0[39];
    v40 = v0[32];
    v39 = v0[33];
    v41 = v0[28];
    v42 = v0[24];
    v43 = v0[25];

    (*(v43 + 8))(v41, v42);
    (*(v39 + 8))(v38, v40);
  }

  v44 = v0[40];
  v45 = v0[32];
  v46 = v0[30];
  v0[45] = sub_245B92650();
  v47 = sub_245B92640();
  MEMORY[0x245D79F20](v47);

  if (v44(v46, 1, v45) != 1)
  {
    v54 = v0[36];
    v53 = v0[37];
    v55 = v0[32];
    v56 = v0[33];
    (*(v56 + 32))(v53, v0[30], v55);
    (*(v56 + 16))(v54, v53, v55);
    swift_allocObject();
    v57 = swift_task_alloc();
    v0[46] = v57;
    *v57 = v0;
    v57[1] = sub_245B8FE00;
    v33 = v0[36];

    return MEMORY[0x282124268](v33);
  }

  sub_245B822B8(v0[30], qword_27EE34A80, &qword_245B951D8);
  v48 = v0[40];
  v49 = v0[32];
  v50 = v0[29];
  MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
  if (v48(v50, 1, v49) == 1)
  {
    sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);

    v51 = v0[1];

    return v51();
  }

  else
  {
    v58 = v0[34];
    v59 = v0[35];
    v60 = v0[32];
    v61 = v0[33];
    (*(v61 + 32))(v59, v0[29], v60);
    (*(v61 + 16))(v58, v59, v60);
    type metadata accessor for E5MLDelegate();
    swift_allocObject();
    v62 = swift_task_alloc();
    v0[49] = v62;
    *v62 = v0;
    v62[1] = sub_245B906B4;
    v63 = v0[34];

    return sub_245B85AFC(v63);
  }
}

uint64_t sub_245B8FC8C()
{
  (*(v0[33] + 8))(v0[39], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_245B8FE00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_245B90540;
  }

  else
  {
    v4 = sub_245B8FF14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245B8FF14()
{
  v46 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = sub_245B92640();
  MEMORY[0x245D79F40](v4);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[22], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
      swift_once();
    }

    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = sub_245B926E0();
    __swift_project_value_buffer(v9, qword_27EE36010);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_245B926C0();
    v11 = sub_245B92D60();
    v12 = os_log_type_enabled(v10, v11);
    v44 = v0[37];
    v13 = v0[32];
    v14 = v0[33];
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    if (v12)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      log = v10;
      v43 = v13;
      v20 = sub_245B928D0();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_245B90E28(v20, v22, &v45);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_245B73000, log, v11, "Program had MPSGraph usage but could not find delegate args on function %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245D7ADF0](v19, -1, -1);
      MEMORY[0x245D7ADF0](v18, -1, -1);

      (*(v14 + 8))(v44, v43);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v14 + 8))(v44, v13);
    }
  }

  else
  {
    v24 = v0[48];
    (*(v0[25] + 32))(v0[27], v0[22], v0[24]);
    sub_245B92630();
    v25 = v0[37];
    v26 = v0[32];
    v27 = v0[33];
    v28 = v0[27];
    v29 = v0[24];
    v30 = v0[25];

    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v25, v26);
    if (v24)
    {

      v31 = v0[1];
LABEL_11:

      return v31();
    }
  }

  v32 = v0[40];
  v33 = v0[32];
  v34 = v0[29];
  MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
  if (v32(v34, 1, v33) == 1)
  {
    sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);

    v31 = v0[1];
    goto LABEL_11;
  }

  v36 = v0[34];
  v37 = v0[35];
  v38 = v0[32];
  v39 = v0[33];
  (*(v39 + 32))(v37, v0[29], v38);
  (*(v39 + 16))(v36, v37, v38);
  type metadata accessor for E5MLDelegate();
  swift_allocObject();
  v40 = swift_task_alloc();
  v0[49] = v40;
  *v40 = v0;
  v40[1] = sub_245B906B4;
  v41 = v0[34];

  return sub_245B85AFC(v41);
}

uint64_t sub_245B90540()
{
  (*(v0[33] + 8))(v0[37], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_245B906B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_245B90CB4;
  }

  else
  {
    v4 = sub_245B907C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245B907C8()
{
  v38 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  MEMORY[0x245D79F40](1280128325, 0xE400000000000000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[21], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
      swift_once();
    }

    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    v7 = v0[10];
    v8 = sub_245B926E0();
    __swift_project_value_buffer(v8, qword_27EE36010);
    (*(v5 + 16))(v4, v7, v6);
    v9 = sub_245B926C0();
    v10 = sub_245B92D60();
    v11 = os_log_type_enabled(v9, v10);
    v36 = v0[35];
    v12 = v0[32];
    v13 = v0[33];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    if (v11)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315138;
      log = v9;
      v35 = v12;
      v19 = sub_245B928D0();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_245B90E28(v19, v21, &v37);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_245B73000, log, v10, "Program had E5ML usage but could not find delegate args on function %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245D7ADF0](v18, -1, -1);
      MEMORY[0x245D7ADF0](v17, -1, -1);

      (*(v13 + 8))(v36, v35);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v13 + 8))(v36, v12);
    }
  }

  else
  {
    v23 = v0[51];
    v24 = v0[26];
    v25 = v0[8];
    (*(v0[25] + 32))(v24, v0[21], v0[24]);
    sub_245B86DA8(v24, v25);
    v26 = v0[35];
    v27 = v0[32];
    v28 = v0[33];
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];

    (*(v30 + 8))(v29, v31);
    (*(v28 + 8))(v26, v27);
    if (v23)
    {

      v32 = v0[1];
      goto LABEL_10;
    }
  }

  v32 = v0[1];
LABEL_10:

  return v32();
}

uint64_t sub_245B90CB4()
{
  (*(v0[33] + 8))(v0[35], v0[32]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_245B90E28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_245B90EF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_245B9135C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_245B90EF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_245B91000(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_245B92E70();
    a6 = v11;
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

void *sub_245B91000(uint64_t a1, unint64_t a2)
{
  v3 = sub_245B9104C(a1, a2);
  sub_245B9117C(&unk_2858B9648);
  return v3;
}

void *sub_245B9104C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_245B8B9C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_245B92E70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_245B92C90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_245B8B9C0(v10, 0);
        result = sub_245B92E30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_245B9117C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_245B91268(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_245B91268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A50, &qword_245B95140);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_245B9135C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_245B913C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245B91440(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_245B915C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_245B91834(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245B918B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_245B91A40(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_245B91CB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v5 = sub_245B92760();
  v21 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245B92710();
  MEMORY[0x28223BE20](v11 - 8);
  sub_245B92740();

  sub_245B92700();
  v12 = v27;
  sub_245B926F0();
  if (!v12)
  {
    v27 = v5;
    (*(v25 + 16))(v10, v3 + *(a3 + 36), v8);
    v13 = *(a3 + 24);
    v14 = *(v13 + 32);
    v16 = v22;
    v15 = v23;
    sub_245B74E8C(v22, v23);
    v14(v16, v15, v8, v13);
    v17 = v24;
    sub_245B92730();
    v18 = v25;
    sub_245B74E24();
    sub_245B92750();
    (*(v21 + 8))(v17, v27);
    (*(v18 + 8))(v10, v8);
    v8 = v26;
    sub_245B92720();
  }

  return v8;
}

char *sub_245B92030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v7 = sub_245B92760();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v33 = a4;
  v13 = *(a4 + 16);
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245B92710();
  MEMORY[0x28223BE20](v16 - 8);
  sub_245B92740();
  v17 = *(v5 + 16);

  sub_245B92700();
  v18 = v40;
  sub_245B926F0();
  if (!v18)
  {
    v31 = v7;
    v19 = v33;
    v20 = *(v38 + 16);
    v21 = v5 + *(v33 + 40);
    v40 = 0;
    v20(v15, v21, v13);
    v22 = *(v19 + 24);
    v23 = *(v22 + 32);
    v25 = v34;
    v24 = v35;
    sub_245B74E8C(v34, v35);
    v23(v25, v24, v13, v22);
    v26 = sub_245B925E0();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v12, v36, v26);
    (*(v27 + 56))(v12, 0, 1, v26);
    (*(v22 + 56))(v12, v13, v22);
    v17 = v37;
    v28 = v40;
    sub_245B92730();
    if (v28)
    {
      (*(v38 + 8))(v15, v13);
    }

    else
    {
      v29 = v38;
      sub_245B74E24();
      sub_245B92750();
      (*(v32 + 8))(v17, v31);
      (*(v29 + 8))(v15, v13);
      v17 = v39;
    }

    sub_245B92720();
  }

  return v17;
}