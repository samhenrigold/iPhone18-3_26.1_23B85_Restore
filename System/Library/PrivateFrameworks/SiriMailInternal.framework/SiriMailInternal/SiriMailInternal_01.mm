uint64_t sub_2675EF208(void *a1, void *a2)
{
  v195 = a2;
  v194 = a1;
  v193 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v182 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v198 = v7 - v6;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1B0, &qword_2676CE0A0);
  OUTLINED_FUNCTION_3();
  v202 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v186 = v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  v206 = v178 - v12;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1B8, &qword_2676CE0A8);
  MEMORY[0x28223BE20](v200);
  v199 = v178 - v13;
  v196 = sub_2676CAA9C();
  OUTLINED_FUNCTION_3();
  v215 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_2();
  v191 = (v17 - v16);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v212 = v21;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v22);
  v211 = v178 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1C0, &qword_2676CE0B0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = (v178 - v25);
  v27 = type metadata accessor for UnresolvedContactInfo(0);
  OUTLINED_FUNCTION_3();
  v203 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v188 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_4();
  v204 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  v207 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  v214 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_4();
  v192 = v38;
  OUTLINED_FUNCTION_12_0();
  v40 = MEMORY[0x28223BE20](v39);
  v190 = v178 - v41;
  v42 = 0;
  v201 = v3;
  v43 = *v3;
  v44 = *(v43 + 16);
  v210 = (v19 + 16);
  v208 = (v19 + 8);
  v205 = MEMORY[0x277D84F90];
  v219 = v40;
  v216 = v43;
  v209 = v44;
  while (v44 != v42)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (*(v43 + 8 * v42 + 32) >> 61 == 2)
    {
      v45 = swift_projectBox();
      v46 = v211;
      v47 = *v210;
      v48 = v213;
      (*v210)(v211, v45, v213);
      v2 = v212;
      v47(v212, v46, v48);
      v49 = *(v27 + 20);

      sub_2675EB96C(v2, v26 + v49);
      v50 = sub_2676CA7EC();
      v52 = v51;
      v53 = v48;
      v44 = v209;
      (*v208)(v46, v53);
      *v26 = v42;
      v54 = (v26 + *(v219 + 24));
      *v54 = v50;
      v54[1] = v52;
      v43 = v216;
      v27 = v219;
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v219);

      if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
      {
        goto LABEL_12;
      }

      v55 = v190;
      sub_2675F03FC(v26, v190);
      sub_2675F03FC(v55, v192);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267606F20();
        v205 = v60;
      }

      v56 = *(v205 + 16);
      if (v56 >= *(v205 + 24) >> 1)
      {
        sub_267606F20();
        v205 = v61;
      }

      ++v42;
      *(v205 + 16) = v56 + 1;
      OUTLINED_FUNCTION_4_5();
      sub_2675F03FC(v192, v58 + v57 + *(v59 + 72) * v56);
      v43 = v216;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
LABEL_12:
      sub_2675F0394(v26);
      ++v42;
    }
  }

  v62 = v205;
  v63 = *(v205 + 16);
  v2 = MEMORY[0x277D84F90];
  v184 = v63;
  if (v63)
  {
    v217 = MEMORY[0x277D84F90];
    sub_2676C28A0(0, v63, 0);
    v2 = v217;
    OUTLINED_FUNCTION_4_5();
    v65 = v62 + v64;
    v213 = *(v66 + 72);
    v67 = (v215 + 2);
    v68 = v196;
    v69 = v191;
    do
    {
      v70 = v214;
      sub_2675F0460(v65, v214);
      (*v67)(v69, v70 + *(v219 + 20), v68);
      sub_2675F04C4(v70);
      v217 = v2;
      isa = v2[2].isa;
      v71 = v2[3].isa;
      if (isa >= v71 >> 1)
      {
        sub_2676C28A0((v71 > 1), isa + 1, 1);
        v68 = v196;
        v2 = v217;
      }

      v2[2].isa = (isa + 1);
      OUTLINED_FUNCTION_4_5();
      (*(v74 + 32))(v2 + v73 + *(v74 + 72) * isa, v69, v68);
      v65 += v213;
      --v63;
    }

    while (v63);
  }

  v42 = v204;
  if (qword_2801CBAA0 != -1)
  {
LABEL_66:
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v75 = sub_2676CBE4C();
  v76 = __swift_project_value_buffer(v75, qword_2801CDC90);

  v185 = v76;
  v77 = sub_2676CBE2C();
  v78 = sub_2676CC23C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v217 = v80;
    *v79 = 136315138;
    v81 = MEMORY[0x26D5FDDD0](v2, v196);
    v83 = sub_2676B0B84(v81, v82, &v217);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_2675D4000, v77, v78, "#ContactStateManager running makeRecommendations for: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    v84 = OUTLINED_FUNCTION_2_9();
    MEMORY[0x26D5FEA80](v84);
    MEMORY[0x26D5FEA80](v79, -1, -1);
  }

  v85 = v205;
  v86 = v197;
  __swift_project_boxed_opaque_existential_1(v194, v194[3]);
  v87 = sub_2676CAB3C();
  if (v86)
  {

    return v184;
  }

  v89 = v87;

  v2 = sub_2676CBE2C();
  v90 = sub_2676CC23C();

  v91 = os_log_type_enabled(v2, v90);
  v214 = v89;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v217 = v93;
    *v92 = 136315138;
    v94 = MEMORY[0x26D5FDDD0](v214, v189);
    v96 = sub_2676B0B84(v94, v95, &v217);

    *(v92 + 4) = v96;
    _os_log_impl(&dword_2675D4000, v2, v90, "#ContactStateManager makeRecommendations result: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v97 = OUTLINED_FUNCTION_2_9();
    MEMORY[0x26D5FEA80](v97);
    v98 = v92;
    v89 = v214;
    v85 = v205;
    MEMORY[0x26D5FEA80](v98, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178[1] = 0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2675E096C(v216);
    v216 = v177;
  }

  v101 = 0;
  v213 = *(v85 + 16);
  v102 = v216;
  *v201 = v216;
  v195 = (v42 + 8);
  v211 = (v202 + 32);
  v212 = (v202 + 16);
  v210 = (v202 + 88);
  LODWORD(v209) = *MEMORY[0x277D56080];
  LODWORD(v208) = *MEMORY[0x277D56068];
  LODWORD(v192) = *MEMORY[0x277D56070];
  v183 = *MEMORY[0x277D56078];
  v187 = (v215 + 2);
  v194 = (v202 + 96);
  v191 = (v182 + 32);
  v190 = v182 + 8;
  v215 = (v202 + 8);
  v197 = v102 + 32;
  *&v100 = 136315138;
  v179 = v100;
  v103 = v189;
  v104 = v186;
  while (2)
  {
    if (v213 == v101)
    {

      return v184;
    }

    if (v101 >= *(v85 + 16))
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_4_5();
    sub_2675F0460(v85 + v105 + *(v106 + 72) * v101, v207);
    v107 = *(v89 + 16);
    if (v101 != v107)
    {
      if (v101 >= v107)
      {
        goto LABEL_63;
      }

      v108 = v202;
      v109 = v89 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v202 + 72) * v101;
      v110 = *(v200 + 48);
      v111 = v42;
      v112 = v199;
      sub_2675F03FC(v207, v199);
      v113 = *(v108 + 16);
      v114 = v109;
      v2 = v212;
      v113(v112 + v110, v114, v103);
      sub_2675F03FC(v112, v111);
      v115 = v112 + v110;
      v116 = v206;
      (*(v108 + 32))(v206, v115, v103);
      v113(v104, v116, v103);
      v117 = (*(v108 + 88))(v104, v103);
      if (v117 == v209 || v117 == v208)
      {
        v119 = OUTLINED_FUNCTION_8_5();
        v120(v119);
        v121 = v198;
        v122 = v193;
        (*v191)(v198, v104, v193);
        OUTLINED_FUNCTION_7_5();
        v123 = v216;
        if (!v124)
        {
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v146 = swift_allocBox();
          v148 = v147;
          v149 = *(v145 + 48);
          OUTLINED_FUNCTION_9_2();
          v150 = v204;
          v152(v148, v204 + v151, v196);
          sub_2675EDF8C();
          OUTLINED_FUNCTION_11_4();
          v153 = v122;
          v42 = v150;
          v154(v198, v153);
          *(v148 + v149) = v145;
          goto LABEL_50;
        }

        sub_2675EDF8C();
        OUTLINED_FUNCTION_11_4();
        v125(v121, v122);
      }

      else
      {
        if (v117 == v192)
        {
          v126 = OUTLINED_FUNCTION_8_5();
          v127(v126);
          v128 = *v104;
          OUTLINED_FUNCTION_7_5();
          v42 = v204;
          v123 = v216;
          if (v129)
          {
            v130 = swift_allocObject();
            *(v130 + 16) = v128;
            v2 = (v130 | 0x8000000000000000);
LABEL_55:

            v170 = *v42;

            (*v215)(v206, v103);
            if ((v170 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            if (v170 >= *(v123 + 16))
            {
              goto LABEL_65;
            }

            *(v197 + 8 * v170) = v2;

            *v201 = v123;
            sub_2675F04C4(v42);
            ++v101;
            v85 = v205;
            v89 = v214;
            continue;
          }

          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v146 = swift_allocBox();
          v157 = v156;
          v158 = *(v155 + 48);
          OUTLINED_FUNCTION_9_2();
          v160(v157, v42 + v159, v196);
          v161 = swift_allocObject();
          *(v161 + 16) = v128;
          *(v157 + v158) = v161 | 0x8000000000000000;
LABEL_50:
          v123 = v216;
          v2 = v146;
          goto LABEL_55;
        }

        v131 = v204;
        v132 = v188;
        if (v117 != v183)
        {

          v217 = 0;
          v218 = 0xE000000000000000;
          sub_2676CC3FC();
          MEMORY[0x26D5FDD00](0xD000000000000035, 0x80000002676D64B0);
          sub_2675F0564();
          v171 = v206;
          v172 = sub_2676CC56C();
          MEMORY[0x26D5FDD00](v172);

          v173 = v217;
          v174 = v218;
          sub_2675F05C8();
          swift_allocError();
          *v175 = v173;
          *(v175 + 8) = v174;
          *(v175 + 16) = 0;
          swift_willThrow();
          v176 = *v215;
          (*v215)(v171, v103);
          sub_2675F04C4(v131);
          v176(v104, v103);
          return v184;
        }

        v133 = v219;
        v134 = (v204 + *(v219 + 24));
        v135 = v134[1];
        if (!v135)
        {
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
          v163 = swift_allocBox();
          v181 = v164;
          v182 = *(v162 + 48);
          v165 = *(v133 + 20);
          v166 = *v187;
          v167 = v196;
          (*v187)(v164, v131 + v165, v196);
          v180 = swift_allocBox();
          v166(v168, v131 + v165, v167);
          *(v181 + v182) = v180 | 0x2000000000000000;
          v2 = v163;
          v42 = v131;
          v123 = v216;
          goto LABEL_55;
        }

        v182 = *v134;
        sub_2675F0460(v204, v188);

        v136 = sub_2676CBE2C();
        v137 = sub_2676CC23C();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v217 = v139;
          *v138 = v179;
          sub_2675F061C();
          v140 = sub_2676CC56C();
          v142 = v141;
          sub_2675F04C4(v132);
          v143 = sub_2676B0B84(v140, v142, &v217);

          *(v138 + 4) = v143;
          _os_log_impl(&dword_2675D4000, v136, v137, "ContactResolver unable to resolve relationship-based query, will require pushing unset relationship flow; query: %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v139);
          v144 = OUTLINED_FUNCTION_2_9();
          MEMORY[0x26D5FEA80](v144);
          MEMORY[0x26D5FEA80](v138, -1, -1);
        }

        else
        {

          sub_2675F04C4(v132);
        }

        v103 = v189;
        v123 = v216;
        v169 = swift_allocObject();
        *(v169 + 16) = v182;
        *(v169 + 24) = v135;
        v2 = (v169 | 0xE000000000000000);
        v104 = v186;
      }

      v42 = v204;
      goto LABEL_55;
    }

    break;
  }

  sub_2675F04C4(v207);
  return v184;
}

uint64_t sub_2675F0394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1C0, &qword_2676CE0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2675F03FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnresolvedContactInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F0460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnresolvedContactInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F04C4(uint64_t a1)
{
  v2 = type metadata accessor for UnresolvedContactInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2675F0564()
{
  result = qword_2801CC1C8;
  if (!qword_2801CC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1B0, &qword_2676CE0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1C8);
  }

  return result;
}

unint64_t sub_2675F05C8()
{
  result = qword_2801CC1D0;
  if (!qword_2801CC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1D0);
  }

  return result;
}

unint64_t sub_2675F061C()
{
  result = qword_2801CC1D8;
  if (!qword_2801CC1D8)
  {
    sub_2676CAA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC1D8);
  }

  return result;
}

uint64_t sub_2675F070C()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2676CAC2C();
  v1[6] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676CAC3C();
  v1[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676CAC5C();
  v1[12] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C911C();
  v1[15] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CAC9C();
  v1[18] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[19] = v14;
  v1[20] = swift_task_alloc();
  v15 = swift_task_alloc();
  v1[21] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[22] = v16;
  *v16 = v17;
  v16[1] = sub_2675F0934;

  return sub_2675F0D64(v15);
}

uint64_t sub_2675F0934()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2675F0A30()
{
  v1 = v0[20];
  v2 = v0[19];
  v11 = v0[18];
  v12 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v6 = v0[10];
  v13 = v0[11];
  v14 = v0[9];
  v7 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v8 = v0[4];
  sub_2676CACBC();
  (*(v3 + 16))(v4, v8, v5);
  (*(v2 + 16))(v1, v12, v11);
  sub_2675F11A4(v4, v1);
  (*(v6 + 104))(v13, *MEMORY[0x277D56138], v14);
  (*(v7 + 104))(v15, *MEMORY[0x277D56120], v16);
  sub_2676CAEDC();
  sub_2676CAEFC();
  sub_2675F2DE8(&qword_2801CC218, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  sub_2676CBEFC();
  sub_2676CAC4C();
  sub_2676CAB7C();

  (*(v18 + 8))(v17, v19);
  (*(v2 + 8))(v12, v11);

  OUTLINED_FUNCTION_15_0();

  return v9();
}

uint64_t sub_2675F0CC0()
{
  OUTLINED_FUNCTION_16_2();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675F0D64(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC220, &qword_2676CE128);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675F0E00, 0, 0);
}

uint64_t sub_2675F0E00()
{
  OUTLINED_FUNCTION_3_0();
  sub_2676C977C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_2675F0E98;

  return sub_2675F28E0(v0 + 16);
}

uint64_t sub_2675F0E98(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_3();
  v7 = v6;
  OUTLINED_FUNCTION_8_6();
  *v8 = v7;
  *v8 = *v4;
  *(v7 + 88) = v9;
  *(v7 + 96) = v3;

  if (!v3)
  {
    *(v7 + 104) = a3;
  }

  __swift_destroy_boxed_opaque_existential_1(v7 + 16);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2675F0FC4()
{
  OUTLINED_FUNCTION_16_2();
  if (*(v0 + 104))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 56);
    v3 = sub_2676CAC9C();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
    (*(*(v3 - 8) + 104))(v2, *MEMORY[0x277D56150], v3);
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = sub_2676CAC9C();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x277D56158];
    if (v4 >= 0.0)
    {
      v9 = MEMORY[0x277D56150];
    }

    (*(*(v7 - 8) + 104))(v5, *v9, v7);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    (*(v8 + 32))(v6, v5, v7);
  }

  OUTLINED_FUNCTION_15_0();

  return v10();
}

uint64_t sub_2675F1148()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2675F11A4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_2676C90CC();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v41 = v6 - v5;
  v7 = sub_2676C913C();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_2();
  v40 = v10 - v9;
  v39 = sub_2676CAC9C();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  v35 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_2();
  v38 = v15 - v14;
  v16 = sub_2676C915C();
  v17 = OUTLINED_FUNCTION_4_1(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_2();
  v18 = sub_2676C911C();
  OUTLINED_FUNCTION_3();
  v20 = v19;
  v37 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v34 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = *(v20 + 16);
  v36 = a1;
  v28(&v34 - v29, a1, v18);
  v28(v27, a1, v18);
  v28(v24, a1, v18);
  sub_2676C914C();
  v30 = v39;
  v31 = v42;
  (*(v12 + 16))(v38, v42, v39);
  sub_2676C912C();
  sub_2676C90AC();
  v32 = sub_2676CACAC();
  (*(v35 + 8))(v31, v30);
  (*(v37 + 8))(v36, v18);
  return v32;
}

uint64_t sub_2675F14B4()
{
  OUTLINED_FUNCTION_3_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_2676C915C();
  v1[11] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C913C();
  v1[14] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C911C();
  v1[17] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_2_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E0, &unk_2676CE0F0);
  v1[20] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v1[21] = v11;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  OUTLINED_FUNCTION_4_1(v12);
  v1[24] = OUTLINED_FUNCTION_2_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  v1[25] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[26] = v14;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2675F1708()
{
  v48 = v0;
  v1 = v0[24];
  v2 = v0[25];
  sub_2675F2C3C(v0[9], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2675F2CAC(v0[24]);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v3 = sub_2676CBE4C();
    __swift_project_value_buffer(v3, qword_2801CDC90);
    v4 = sub_2676CBE2C();
    v5 = sub_2676CC23C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2675D4000, v4, v5, "#DateTimeResolver no date time to resolve, returning nil", v6, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v7 = v0[8];

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    OUTLINED_FUNCTION_1_9();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_18_2();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[26] + 32))(v0[29], v0[24], v0[25]);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v11 = v0[28];
  v12 = v0[29];
  v13 = v0[25];
  v14 = v0[26];
  v15 = sub_2676CBE4C();
  v0[30] = __swift_project_value_buffer(v15, qword_2801CDC90);
  v16 = *(v14 + 16);
  v16(v11, v12, v13);
  v17 = sub_2676CBE2C();
  v18 = sub_2676CC23C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[28];
  if (v19)
  {
    v21 = v0[26];
    v22 = v0[27];
    v23 = v0[25];
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v24 = 136315138;
    v16(v22, v20, v23);
    v25 = sub_2676CBFBC();
    v27 = v26;
    v28 = *(v21 + 8);
    v28(v20, v23);
    v29 = sub_2676B0B84(v25, v27, &v47);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2675D4000, v17, v18, "#DateTimeResolver date time input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v30 = v0[25];
    v31 = v0[26];

    v28 = *(v31 + 8);
    v28(v20, v30);
  }

  v0[31] = v28;
  v32 = sub_2676CA81C();
  v0[32] = v32;

  v33 = sub_2676CBE2C();
  v34 = sub_2676CC23C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 136315138;
    v0[7] = v32;
    sub_2676CAEFC();
    OUTLINED_FUNCTION_2_10();
    sub_2675F2DE8(v37, v38, MEMORY[0x277D564C0]);
    v39 = sub_2676CC56C();
    v41 = sub_2676B0B84(v39, v40, &v47);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_2675D4000, v33, v34, "#DateTimeResolver date time query: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C910C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[33] = v42;
  *v42 = v43;
  v42[1] = sub_2675F1BF0;
  OUTLINED_FUNCTION_18_2();

  return sub_2675F070C();
}

uint64_t sub_2675F1BF0()
{
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v10 + 272) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2675F1D4C()
{
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  v1 = sub_2676CBE2C();
  v2 = sub_2676CC23C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v3 = 136315138;
    sub_2675F2D14();
    v4 = sub_2676CC56C();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_10_5();
    v8(v7);
    v9 = sub_2676B0B84(v4, v6, &v21);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_2675D4000, v1, v2, "#DateTimeResolver date time recommendation: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v10 = OUTLINED_FUNCTION_10_5();
    v11(v10);
  }

  v12 = v0[31];
  v13 = v0[29];
  v14 = v0[25];
  v15 = v0[23];
  v16 = v0[20];
  sub_2675F2278(v15, v0[8]);

  v20(v15, v16);
  v12(v13, v14);
  OUTLINED_FUNCTION_1_9();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_18_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2675F1F64()
{
  v31 = v0;
  v1 = v0[34];

  v2 = v1;
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC24C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v7 = sub_2676CC5FC();
    v9 = sub_2676B0B84(v7, v8, &v30);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v0[6] = v5;
    sub_2676CAEFC();
    OUTLINED_FUNCTION_2_10();
    sub_2675F2DE8(v10, v11, MEMORY[0x277D564C0]);
    v12 = sub_2676CC56C();
    v14 = sub_2676B0B84(v12, v13, &v30);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2675D4000, v3, v4, "#DateTimeResolver makeRecommendation threw error: %s, returning %s as tuple", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v28 = v0[29];
  v29 = v0[31];
  v26 = v0[34];
  v27 = v0[25];
  v15 = v0[15];
  v16 = v0[16];
  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[8];
  sub_2676C912C();
  sub_2676C914C();
  v22 = sub_2676CAEEC();
  (*(v20 + 8))(v18, v19);
  (*(v15 + 8))(v16, v17);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  sub_2675F27AC(v21, v21 + *(v23 + 48));

  v29(v28, v27);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  OUTLINED_FUNCTION_1_9();

  OUTLINED_FUNCTION_15_0();

  return v24();
}

uint64_t sub_2675F2278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2676C915C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2676C913C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E0, &unk_2676CE0F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v30 - v13);
  (*(v12 + 16))(&v30 - v13, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D56080])
  {
    (*(v12 + 96))(v14, v11);
    sub_2676C912C();
    sub_2676C914C();
    v16 = sub_2676CAEEC();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v18 = v31;
    sub_2675F27AC(v31, v31 + *(v17 + 48));

    v19 = v18;
  }

  else if (v15 == *MEMORY[0x277D56068])
  {
    (*(v12 + 96))(v14, v11);
    sub_2676C912C();
    sub_2676C914C();
    v20 = sub_2676CAEEC();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v21 = v31;
    sub_2675F27AC(v31, v31 + *(v17 + 48));

    v19 = v21;
  }

  else
  {
    if (v15 != *MEMORY[0x277D56070])
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
      __swift_storeEnumTagSinglePayload(v31, 1, 1, v29);
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 96))(v14, v11);
    v22 = *v14;
    if (*v14 >> 62)
    {
      v23 = sub_2676CC4EC();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v31;
    if (!v23)
    {

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
      v19 = v24;
      v26 = 1;
      return __swift_storeEnumTagSinglePayload(v19, v26, 1, v27);
    }

    sub_267692C1C();
    if ((v22 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5FE0E0](0, v22);
    }

    else
    {
    }

    sub_2676C912C();
    sub_2676C914C();
    v25 = sub_2676CAEEC();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    sub_2675F27AC(v24, v24 + *(v17 + 48));

    v19 = v24;
  }

  v26 = 0;
  v27 = v17;
  return __swift_storeEnumTagSinglePayload(v19, v26, 1, v27);
}

uint64_t sub_2675F27AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = [v2 startDate];
  if (v9)
  {
    v10 = v9;
    sub_2676C909C();

    v11 = sub_2676C90CC();
    v12 = 0;
  }

  else
  {
    v11 = sub_2676C90CC();
    v12 = 1;
  }

  v13 = 1;
  __swift_storeEnumTagSinglePayload(v8, v12, 1, v11);
  sub_2675F2D78(v8, a1);
  v14 = [v2 endDate];
  if (v14)
  {
    v15 = v14;
    sub_2676C909C();

    v13 = 0;
  }

  v16 = sub_2676C90CC();
  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v16);
}

uint64_t sub_2675F2900()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_2675F2E30();
  *v5 = v0;
  v5[1] = sub_2675F29F0;

  return MEMORY[0x2821BB6A0](v4, v3, v6, v2);
}

uint64_t sub_2675F29F0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2675F2AFC()
{
  OUTLINED_FUNCTION_16_2();
  [*(v0 + 40) latitude];
  if (v1 == 0.0 && ([*(v0 + 40) longitude], v2 == 0.0))
  {

    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 40);
    [v6 latitude];
    v8 = v7;
    [v6 longitude];
    v10 = v9;

    v5 = 0;
    v3 = v8;
    v4 = v10;
  }

  v11 = *(v0 + 8);

  return v11(v3, v4, v5);
}

uint64_t sub_2675F2BE0()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_2675F2C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F2CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2675F2D14()
{
  result = qword_2801CC208;
  if (!qword_2801CC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1E0, &unk_2676CE0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC208);
  }

  return result;
}

uint64_t sub_2675F2D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F2DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2675F2E30()
{
  result = qword_2801CC228;
  if (!qword_2801CC228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CC228);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9()
{
}

uint64_t sub_2675F2F94()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DeleteMessage(0);
  v3 = (v1 + *(v2 + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v2 + 20);
  v9 = (*(v5 + 40) + **(v5 + 40));
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_2675F30E4;

  return v9(v1 + v6, v4, v5);
}

uint64_t sub_2675F30E4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2675F31F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F3284;

  return sub_2675F2F74();
}

uint64_t sub_2675F3284(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_2675F3420(uint64_t a1)
{
  v2 = sub_2676CBBFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2676CBC5C();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_2675F3528()
{
  v0 = sub_2676CBC4C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2675F3624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2675F3684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2675F36FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2675F375C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CBC1C();
  *a1 = result;
  return result;
}

uint64_t sub_2675F3838(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MailMessageEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2675F39FC(uint64_t a1)
{
  result = sub_2676C8BFC();
  if (v2 <= 0x3F)
  {
    result = sub_2675F3A90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2675F3A90()
{
  result = qword_2801CC298;
  if (!qword_2801CC298)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CC298);
  }

  return result;
}

uint64_t sub_2675F3B14()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v0[6] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v0[7] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C99CC();
  v0[8] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[9] = v5;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v6 = sub_2676C9DDC();
  v0[12] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v0[15] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675F3CE4, 0, 0);
}

uint64_t sub_2675F3CE4()
{
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for MailCommonCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 128) = sub_2676CB42C();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2675F3D9C;

  return sub_26760D3F8();
}

uint64_t sub_2675F3D9C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  *(v2 + 144) = v3;
  *(v2 + 152) = v0;

  if (v0)
  {
    v4 = sub_2675F440C;
  }

  else
  {

    v4 = sub_2675F3EB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2675F3EB4()
{
  v1 = [*(v0 + 144) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v5 setSpokenOnly_];
  }

  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  v20 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v21 = *(v0 + 24);
  v23 = *(v0 + 144);

  sub_2676C997C();
  (*(v10 + 16))(v8, v7, v9);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v11);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v14 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v14);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v12 + 8))(v13, v21);
  sub_2676C9D5C();
  (*(v10 + 8))(v7, v9);
  sub_2676C9B9C();
  swift_allocObject();
  *(v0 + 160) = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v15 = swift_allocObject();
  *(v0 + 168) = v15;
  *(v15 + 16) = xmmword_2676CD5C0;
  *(v15 + 32) = v23;
  v22 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v16 = v23;
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_2675F41F4;
  v18 = *(v0 + 112);
  v19 = *(v0 + 16);

  v22(v19, v15, v18);
}

uint64_t sub_2675F41F4()
{
  OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](sub_2675F4324, 0, 0);
}

uint64_t sub_2675F4324()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675F440C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675F44D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675E1604;

  return sub_2675F3B14();
}

uint64_t sub_2675F4588()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2675F46A8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2A0, &qword_2676CE500);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2675F47A0;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2675F46A8()
{

  return MEMORY[0x2822009F8](sub_2675F4788, 0, 0);
}

uint64_t sub_2675F47A0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_2676CC0FC();
  }

  else
  {
    v4 = 0;
  }

  return sub_2675F4804(v3, v4);
}

uint64_t sub_2675F4824()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2675F4898(uint64_t a1, uint64_t a2)
{
  if (sub_2676C995C() & 1) != 0 || (sub_2676C994C() & 1) != 0 || (sub_2676C996C())
  {
    return 1;
  }

  return MEMORY[0x2821BAB98](a1, a2);
}

uint64_t sub_2675F4940(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v79 - v4;
  v6 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_7();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = OUTLINED_FUNCTION_16_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = v19;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  v23 = (&v79 - v22);
  (*(v20 + 16))(&v79 - v22, a1, v18);
  v24 = OUTLINED_FUNCTION_16_3();
  v26 = v25(v24);
  if (v26 != *MEMORY[0x277D5BF18])
  {
    if (v26 == *MEMORY[0x277D5BF28])
    {
      v37 = OUTLINED_FUNCTION_16_3();
      v38(v37);
      v39 = *v23;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v40 = sub_2676CBE4C();
      __swift_project_value_buffer(v40, qword_2801CDC90);

      v41 = sub_2676CBE2C();
      v42 = sub_2676CC23C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_5_3();
        v44 = swift_slowAlloc();
        v82 = v44;
        *v43 = 136315138;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v46 = MEMORY[0x26D5FDDD0](v39, v45);
        v48 = sub_2676B0B84(v46, v47, &v82);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_2675D4000, v41, v42, "#ResolveRecipientsFlow received raw USO response: %s while attempting to disambiguate contacts", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }

      sub_267698E74(v39);

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      if (__swift_getEnumTagSinglePayload(v5, 1, v49) == 1)
      {
        sub_2675ED6C0(v5, &qword_2801CC168, &unk_2676CF510);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_2_11();
        sub_2675F668C(v55, v56, MEMORY[0x277D5C6A8]);
        v51 = sub_2676CA89C();
        v58 = v57;

        OUTLINED_FUNCTION_14_2();
        (*(v59 + 8))(v5, v49);
        if (v58)
        {
          return v51;
        }
      }

      v53 = sub_2676CBE2C();
      v60 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v60))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v26 != *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v67 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v67, qword_2801CDC90);
        v68 = sub_2676CBE2C();
        v69 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v69))
        {
          v70 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v70);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v71, v72, v73, v74, v75, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        v76 = OUTLINED_FUNCTION_16_3();
        v77(v76);
        return 0;
      }

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v52 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v52, qword_2801CDC90);
      v53 = sub_2676CBE2C();
      v54 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v54))
      {
LABEL_23:

        return 0;
      }
    }

    v61 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v61);
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v62, v63, v64, v65, v66, 2u);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_23;
  }

  v27 = (v20 + 96);
  v28 = OUTLINED_FUNCTION_16_3();
  v29(v28);
  (*(v8 + 32))(v15, v23, v6);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v30 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v30, qword_2801CDC90);
  (*(v8 + 16))(v12, v15, v6);
  v31 = sub_2676CBE2C();
  v32 = sub_2676CC23C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_5_3();
    v81 = OUTLINED_FUNCTION_15_4(v33);
    v82 = v81;
    *a1 = 136315138;
    sub_2675F668C(&qword_2801CC2B0, MEMORY[0x277D56178], MEMORY[0x277D56198]);
    sub_2676CC56C();
    v34 = OUTLINED_FUNCTION_21_2();
    v27(v34);
    v35 = OUTLINED_FUNCTION_23_2();

    v36 = v80;
    *(v80 + 4) = v35;
    _os_log_impl(&dword_2675D4000, v31, v32, "#ResolveRecipientsFlow contact disambiguation confirmed with contact=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_21_2();
    v27(v50);
  }

  v51 = sub_2676CADFC();
  (v27)(v15, v6);
  return v51;
}

uint64_t sub_2675F5064@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D5FD400]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2675F5090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MEMORY[0x26D5FD410](v1, v2);
}

uint64_t sub_2675F50E4(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v114 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v114 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3();
  v115 = v11;
  v116 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1(v13, v114);
  v14 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_7();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - v22;
  v24 = OUTLINED_FUNCTION_22_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_3();
  v28 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  v31 = (&v114 - v30);
  (*(v28 + 16))(&v114 - v30, a1, v26);
  v32 = OUTLINED_FUNCTION_22_2();
  v34 = v33(v32);
  if (v34 != *MEMORY[0x277D5BF18])
  {
    if (v34 == *MEMORY[0x277D5BF28])
    {
      v47 = OUTLINED_FUNCTION_22_2();
      v48(v47);
      v49 = *v31;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v50 = sub_2676CBE4C();
      __swift_project_value_buffer(v50, qword_2801CDC90);

      v51 = sub_2676CBE2C();
      v52 = sub_2676CC23C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_5_3();
        v54 = swift_slowAlloc();
        v117 = v54;
        *v53 = 136315138;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v56 = MEMORY[0x26D5FDDD0](v49, v55);
        v58 = sub_2676B0B84(v56, v57, &v117);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_2675D4000, v51, v52, "#ResolveRecipientsFlow received raw USO response: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }

      sub_267698E74(v49);

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      if (__swift_getEnumTagSinglePayload(v5, 1, v59) == 1)
      {
        sub_2675ED6C0(v5, &qword_2801CC168, &unk_2676CF510);
        v60 = OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v60, v61, 1, v116);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        OUTLINED_FUNCTION_2_11();
        sub_2675F668C(v69, v70, MEMORY[0x277D5C6A8]);
        OUTLINED_FUNCTION_7_6();
        sub_2675F668C(v71, v72, MEMORY[0x277D5C618]);
        sub_2676CA87C();

        OUTLINED_FUNCTION_14_2();
        (*(v73 + 8))(v5, v59);
        v74 = OUTLINED_FUNCTION_30_0();
        if (__swift_getEnumTagSinglePayload(v74, v75, v116) != 1)
        {
          (*(v115 + 32))();
          v90 = swift_getKeyPath();
          v63 = OUTLINED_FUNCTION_33_0(v90);
          v92 = v91;

          if (v92)
          {

            v93 = sub_2676CBE2C();
            v94 = sub_2676CC23C();

            if (os_log_type_enabled(v93, v94))
            {
              OUTLINED_FUNCTION_5_3();
              v95 = OUTLINED_FUNCTION_12_2();
              v117 = v95;
              OUTLINED_FUNCTION_26_1(4.8149e-34);
              *(KeyPath + 4) = sub_2676B0B84(v63, v92, v96);
              OUTLINED_FUNCTION_31_0(&dword_2675D4000, v97, v98, "#ResolveRecipientsFlow Disambiguated response with address label=%s");
              __swift_destroy_boxed_opaque_existential_1(v95);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }
          }

          else
          {
            v101 = swift_getKeyPath();
            v63 = OUTLINED_FUNCTION_33_0(v101);
            v103 = v102;

            if (!v103)
            {
              v109 = sub_2676CBE2C();
              v110 = sub_2676CC24C();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v111);
                _os_log_impl(&dword_2675D4000, v109, v110, "#ResolveRecipientsFlow Entity in USO response doesn't have a specifyingContactAddress label or value", KeyPath, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              v112 = OUTLINED_FUNCTION_8_7();
              v113(v112);
              return 0;
            }

            v93 = sub_2676CBE2C();
            v104 = sub_2676CC23C();

            if (os_log_type_enabled(v93, v104))
            {
              OUTLINED_FUNCTION_5_3();
              v105 = OUTLINED_FUNCTION_12_2();
              v117 = v105;
              OUTLINED_FUNCTION_26_1(4.8149e-34);
              *(KeyPath + 4) = sub_2676B0B84(v63, v103, v106);
              OUTLINED_FUNCTION_31_0(&dword_2675D4000, v107, v108, "#ResolveRecipientsFlow Disambiguated response with address value=%s");
              __swift_destroy_boxed_opaque_existential_1(v105);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }
          }

          v99 = OUTLINED_FUNCTION_8_7();
          v100(v99);
          return v63;
        }
      }

      sub_2675ED6C0(v9, &qword_2801CC068, &unk_2676D4E00);
      v66 = sub_2676CBE2C();
      v76 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v76))
      {
LABEL_23:

        return 0;
      }
    }

    else
    {
      if (v34 != *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v83 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v83, qword_2801CDC90);
        v84 = sub_2676CBE2C();
        v85 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v85))
        {
          v86 = OUTLINED_FUNCTION_17_3();
          *v86 = 0;
          _os_log_impl(&dword_2675D4000, v84, a1, "#ResolveRecipientsFlow programmer error, received a unexpected/unhandled response from the DisambiguationPrompt", v86, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v87 = OUTLINED_FUNCTION_22_2();
        v88(v87);
        return 0;
      }

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v65 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v65, qword_2801CDC90);
      v66 = sub_2676CBE2C();
      v67 = sub_2676CC24C();
      if (!OUTLINED_FUNCTION_5_5(v67))
      {
        goto LABEL_23;
      }
    }

    v77 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v77);
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v78, v79, v80, v81, v82, 2u);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_23;
  }

  v35 = OUTLINED_FUNCTION_22_2();
  v36(v35);
  (*(v16 + 32))(v23, v31, v14);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v37 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v37, qword_2801CDC90);
  (*(v16 + 16))(v20, v23, v14);
  v38 = sub_2676CBE2C();
  v39 = sub_2676CC23C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_5_3();
    v116 = OUTLINED_FUNCTION_15_4(v40);
    v117 = v116;
    *a1 = 136315138;
    OUTLINED_FUNCTION_6_4();
    sub_2675F668C(v41, v42, MEMORY[0x277D56058]);
    sub_2676CC56C();
    v43 = *(v16 + 8);
    v44 = OUTLINED_FUNCTION_14_3();
    v43(v44);
    v45 = OUTLINED_FUNCTION_23_2();

    v46 = v115;
    *(v115 + 4) = v45;
    _os_log_impl(&dword_2675D4000, v38, v39, "#ResolveRecipientsFlow Confirmed contact handle=%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v43 = *(v16 + 8);
    v62 = OUTLINED_FUNCTION_14_3();
    v43(v62);
  }

  v63 = sub_2676CAB0C();
  v64 = OUTLINED_FUNCTION_16_3();
  v43(v64);
  return v63;
}

uint64_t sub_2675F5B2C(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v138 = v136 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3();
  v136[0] = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_1(v7, v136[0]);
  v136[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v137 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v136 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v136 - v16);
  MEMORY[0x28223BE20](v15);
  v140 = v136 - v18;
  v19 = sub_2676CAB1C();
  OUTLINED_FUNCTION_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_7();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v136 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E8, &qword_2676CE5F0);
  OUTLINED_FUNCTION_3();
  v31 = v30;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  v34 = v136 - v33;
  (*(v31 + 16))(v136 - v33, a1, v29);
  v35 = OUTLINED_FUNCTION_29_0();
  v37 = v36(v35);
  if (v37 != *MEMORY[0x277D5BF18])
  {
    if (v37 != *MEMORY[0x277D5BF28])
    {
      if (v37 == *MEMORY[0x277D5BF20])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v69 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v69, qword_2801CDC90);
        v70 = sub_2676CBE2C();
        v71 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v71))
        {
          v72 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v72);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v73, v74, v75, v76, v77, 2u);
          OUTLINED_FUNCTION_4_6();
        }
      }

      else
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v84 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v84, qword_2801CDC90);
        v85 = sub_2676CBE2C();
        v86 = sub_2676CC24C();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = OUTLINED_FUNCTION_17_3();
          *v87 = 0;
          _os_log_impl(&dword_2675D4000, v85, v86, "#ResolveRecipientsFlow programmer error, received a unexpected/unhandled response from the DisambiguationPrompt", v87, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v88 = OUTLINED_FUNCTION_29_0();
        v89(v88);
      }

      return 0;
    }

    v51 = OUTLINED_FUNCTION_29_0();
    v52(v51);
    v53 = v140;
    sub_2675F66D4(v34, v140);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v54 = sub_2676CBE4C();
    __swift_project_value_buffer(v54, qword_2801CDC90);
    sub_2675F6744(v53, v17);
    v55 = sub_2676CBE2C();
    v56 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v56))
    {
      OUTLINED_FUNCTION_5_3();
      v57 = OUTLINED_FUNCTION_12_2();
      v141 = v57;
      *v25 = 136315138;
      sub_2675F6744(v17, v14);
      v58 = sub_2676CBFBC();
      v60 = v59;
      sub_2675ED6C0(v17, &qword_2801CC168, &unk_2676CF510);
      v61 = sub_2676B0B84(v58, v60, &v141);

      *(v25 + 4) = v61;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();
    }

    else
    {

      sub_2675ED6C0(v17, &qword_2801CC168, &unk_2676CF510);
    }

    v78 = v139;
    v80 = v137;
    v79 = v138;
    sub_2675F6744(v53, v137);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
    {
      sub_2675ED6C0(v80, &qword_2801CC168, &unk_2676CF510);
      v82 = OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v82, v83, 1, v78);
LABEL_28:
      sub_2675ED6C0(v79, &qword_2801CC068, &unk_2676D4E00);
      v97 = sub_2676CBE2C();
      v98 = sub_2676CC24C();
      if (OUTLINED_FUNCTION_5_5(v98))
      {
        v99 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v99);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v100, v101, v102, v103, v104, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v105 = v53;
LABEL_31:
      sub_2675ED6C0(v105, &qword_2801CC168, &unk_2676CF510);
      return 0;
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_2_11();
    sub_2675F668C(v90, v91, MEMORY[0x277D5C6A8]);
    OUTLINED_FUNCTION_7_6();
    sub_2675F668C(v92, v93, MEMORY[0x277D5C618]);
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    (*(v94 + 8))(v80, v81);
    v95 = OUTLINED_FUNCTION_30_0();
    if (__swift_getEnumTagSinglePayload(v95, v96, v78) == 1)
    {
      goto LABEL_28;
    }

    v107 = OUTLINED_FUNCTION_25_1();
    v108(v107);
    KeyPath = swift_getKeyPath();
    v68 = OUTLINED_FUNCTION_32_0(KeyPath);
    v111 = v110;

    if (v111)
    {

      v112 = sub_2676CBE2C();
      v113 = sub_2676CC23C();

      if (os_log_type_enabled(v112, v113))
      {
LABEL_36:
        OUTLINED_FUNCTION_5_3();
        v114 = OUTLINED_FUNCTION_12_2();
        v141 = v114;
        OUTLINED_FUNCTION_26_1(4.8149e-34);
        *(v81 + 4) = sub_2676B0B84(v68, v111, v115);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_4_6();

LABEL_41:
        v121 = OUTLINED_FUNCTION_14_3();
        v122(v121);
        sub_2675ED6C0(v140, &qword_2801CC168, &unk_2676CF510);
        return v68;
      }
    }

    else
    {
      v123 = swift_getKeyPath();
      v68 = OUTLINED_FUNCTION_32_0(v123);
      v111 = v124;

      if (!v111)
      {
        v126 = sub_2676CBE2C();
        v127 = sub_2676CC24C();
        if (OUTLINED_FUNCTION_5_5(v127))
        {
          v128 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v128);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v129, v130, v131, v132, v133, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        v134 = OUTLINED_FUNCTION_14_3();
        v135(v134);
        v105 = v140;
        goto LABEL_31;
      }

      v112 = sub_2676CBE2C();
      v125 = sub_2676CC23C();

      if (os_log_type_enabled(v112, v125))
      {
        goto LABEL_36;
      }
    }

    goto LABEL_41;
  }

  v38 = OUTLINED_FUNCTION_29_0();
  v39(v38);
  v40 = OUTLINED_FUNCTION_25_1();
  v41(v40);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v42 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v42, qword_2801CDC90);
  (*(v21 + 16))(v25, v28, v19);
  v43 = sub_2676CBE2C();
  v44 = sub_2676CC23C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_5_3();
    v140 = OUTLINED_FUNCTION_15_4(v45);
    v141 = v140;
    *a1 = 136315138;
    OUTLINED_FUNCTION_6_4();
    sub_2675F668C(v46, v47, MEMORY[0x277D56058]);
    sub_2676CC56C();
    v48 = OUTLINED_FUNCTION_20_2();
    v17(v48);
    v49 = OUTLINED_FUNCTION_23_2();

    v50 = v139;
    *(v139 + 4) = v49;
    _os_log_impl(&dword_2675D4000, v43, v44, "#ResolveRecipientsFlow Confirmed contact handle=%s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v140);
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v67 = OUTLINED_FUNCTION_20_2();
    v17(v67);
  }

  v68 = sub_2676CAB0C();
  (v17)(v28, v19);
  return v68;
}

uint64_t sub_2675F668C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2675F66D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675F6744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_6()
{

  JUMPOUT(0x26D5FEA80);
}

BOOL OUTLINED_FUNCTION_5_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  *(v1 - 104) = a1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_2676B0B84(v0, v1, (v2 - 88));
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{

  return sub_2676CA89C();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2675F6A0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_2675F6A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2675F6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2675F95E4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2675F6BE4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB55C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6C24()
{
  OUTLINED_FUNCTION_5_6();
  result = MEMORY[0x26D5FD230]();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6C64()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB57C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6CA4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB54C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6CE4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB58C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6D24()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB59C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6DB0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB8DC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F6DF0@<X0>(uint64_t a1@<X8>)
{
  v171 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  v170 = v4;
  v174 = sub_2676CB87C();
  OUTLINED_FUNCTION_3();
  v156 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v154 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2F8, &qword_2676CE758);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v167 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3();
  v152 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v149 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_1();
  v166 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  OUTLINED_FUNCTION_4_1(v25);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC308, &qword_2676CE760);
  OUTLINED_FUNCTION_4_1(v28);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v31);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v162 = v33;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_3();
  v164 = v34;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  v163 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v37);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v39);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_3();
  v148 = v40;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  OUTLINED_FUNCTION_4_1(v43);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v45);
  v46 = sub_2676CABDC();
  OUTLINED_FUNCTION_3();
  v159 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v50 - v49);
  v173 = sub_2676CAA9C();
  OUTLINED_FUNCTION_3();
  v169 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_2();
  v176 = v54 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  v157 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  v62 = v145 - v61;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v63 = sub_2676CBE4C();
  v64 = __swift_project_value_buffer(v63, qword_2801CDC90);
  v65 = *(v57 + 16);
  v175 = v1;
  v65(v62, v1, v55);
  v165 = v64;
  v66 = sub_2676CBE2C();
  v67 = sub_2676CC23C();
  v68 = os_log_type_enabled(v66, v67);
  v168 = v16;
  v146 = v57;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v145[0] = v46;
    v71 = v70;
    v177 = v70;
    *v69 = 136315138;
    v65(v157, v62, v55);
    v72 = sub_2676CBFBC();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_23_3();
    v76(v75);
    v77 = sub_2676B0B84(v72, v74, &v177);

    *(v69 + 4) = v77;
    _os_log_impl(&dword_2675D4000, v66, v67, "Converting Common.Person to ContactQuery: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v46 = v145[0];
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v78 = OUTLINED_FUNCTION_23_3();
    v79(v78);
  }

  v80 = v55;
  v81 = v176;
  sub_2676CAA8C();
  (*(v159 + 104))(v158, *MEMORY[0x277D56118], v46);
  sub_2676CA9DC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_5();
  v84 = sub_2675F9644(v82, v83, MEMORY[0x277D5C6D8]);
  sub_2676CA89C();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_20_3();
  sub_2676CAA3C();
  swift_getKeyPath();
  sub_2675F9644(&qword_2801CC120, MEMORY[0x277D5C558], MEMORY[0x277D5C548]);
  v85 = v160;
  sub_2676CA87C();

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  v87 = OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_21_3(v87, v88, v86);
  if (v111)
  {
    sub_2675EB7EC(v85, &qword_2801CC080, &unk_2676D3580);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    swift_getKeyPath();
    sub_2676CA89C();
    v90 = v89;

    (*(*(v86 - 8) + 8))(v85, v86);
    OUTLINED_FUNCTION_25_2();
    if (v90)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  sub_2676CA9EC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_6();
  sub_2675F9644(v91, v92, MEMORY[0x277D5C440]);
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();

  OUTLINED_FUNCTION_21_3(v86, 1, v81);
  if (v111)
  {
    sub_2675EB7EC(v86, &qword_2801CC0A0, &qword_2676CDAE0);
  }

  else
  {
    v161 = v84;
    v93 = v148;
    v94 = v147;
    (*(v148 + 32))(v147, v86, v81);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(KeyPath);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA99C();
    v96 = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(v96);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CAA7C();
    v97 = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(v97);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA97C();
    v98 = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(v98);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA95C();
    v99 = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(v99);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_20_3();
    sub_2676CA9BC();
    v100 = swift_getKeyPath();
    OUTLINED_FUNCTION_3_8(v100);

    sub_2676CAA5C();
    (*(v93 + 8))(v94, v81);
  }

  v101 = v174;
  v102 = v162;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_8();
  sub_2675F9644(v103, v104, MEMORY[0x277D5C688]);
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();

  v105 = v172;
  OUTLINED_FUNCTION_21_3(v102, 1, v172);
  if (v111)
  {
    sub_2675EB7EC(v102, &qword_2801CC078, &unk_2676D3680);
    v106 = v168;
    v107 = v173;
  }

  else
  {
    (*(v164 + 32))(v163, v102, v105);
    swift_getKeyPath();
    sub_2676CA89C();

    swift_getKeyPath();
    v108 = v166;
    sub_2676CA87C();

    v109 = v149;
    sub_2675F95E4(v108, v149, &qword_2801CC038, &qword_2676D5A40);
    v110 = 1;
    OUTLINED_FUNCTION_18_3(v109);
    v112 = v150;
    if (!v111)
    {
      v113 = v157;
      (*(v146 + 32))(v157, v109, v80);
      sub_2675F6DF0(v112);
      (v145[1])(v113, v80);
      v110 = 0;
    }

    sub_2675EB7EC(v166, &qword_2801CC038, &qword_2676D5A40);
    v107 = v173;
    __swift_storeEnumTagSinglePayload(v112, v110, 1, v173);
    sub_2676CAC7C();
    sub_2676CAC8C();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
    sub_2676CA9CC();
    (*(v164 + 8))(v163, v172);
    v101 = v174;
    v106 = v168;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_10();
  sub_2675F9644(v118, v119, MEMORY[0x277D5C618]);
  v120 = v167;
  OUTLINED_FUNCTION_24_3();
  sub_2676CA87C();
  v121 = v120;

  OUTLINED_FUNCTION_21_3(v120, 1, v106);
  if (v111)
  {
    sub_2675EB7EC(v120, &qword_2801CC068, &unk_2676D4E00);
  }

  else
  {
    v122 = v152;
    v123 = v151;
    (*(v152 + 32))(v151, v121, v106);
    sub_2675F8040(v153);
    sub_2676CABCC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
    sub_2676CAA1C();
    v128 = v123;
    v107 = v173;
    (*(v122 + 8))(v128, v106);
  }

  swift_getKeyPath();
  v129 = v170;
  OUTLINED_FUNCTION_24_3();
  sub_2676CA84C();

  OUTLINED_FUNCTION_18_3(v129);
  if (v111)
  {
    sub_2675EB7EC(v129, &qword_2801CC098, &qword_2676CDAD8);
  }

  else
  {
    v130 = v156;
    v131 = v155;
    (*(v156 + 32))(v155, v129, v101);
    v132 = v154;
    (*(v130 + 104))(v154, *MEMORY[0x277D5C6E0], v101);
    v133 = sub_26768D3D0();
    v134 = *(v130 + 8);
    v134(v132, v101);
    if (v133)
    {
      v135 = v176;
      sub_2676CAA0C();
      v134(v131, v101);
      goto LABEL_30;
    }

    v134(v131, v101);
  }

  v135 = v176;
LABEL_30:
  v136 = sub_2676CBE2C();
  v137 = sub_2676CC23C();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v177 = v139;
    *v138 = 136315138;
    swift_beginAccess();
    sub_2675F9644(&qword_2801CC1D8, MEMORY[0x277D55FF8], MEMORY[0x277D56000]);
    v140 = sub_2676CC56C();
    v142 = sub_2676B0B84(v140, v141, &v177);

    *(v138 + 4) = v142;
    _os_log_impl(&dword_2675D4000, v136, v137, "Converted Common.Person to ContactQuery %s", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v139);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  swift_beginAccess();
  v143 = v169;
  (*(v169 + 16))(v171, v135, v107);
  return (*(v143 + 8))(v135, v107);
}

uint64_t sub_2675F7FB8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB7FC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2675F7FF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_2675F8040@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v76 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v66 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v73 = v3;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v75 = v5;
  v6 = sub_2676CA46C();
  OUTLINED_FUNCTION_3();
  v74 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC320, &qword_2676CEA40);
  OUTLINED_FUNCTION_4_1(v12);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_1_10();
  sub_2675F9644(v16, v17, MEMORY[0x277D5C618]);
  v18 = sub_2676CA89C();
  v20 = v19;

  if (v20)
  {
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = *MEMORY[0x277CFBCE0];
      v23 = sub_2676CBF3C();

      v24 = (*(v22 + 16))(v22, v23);

      v25 = sub_2676CBF6C();
      v63 = v26;
      v64 = v25;

      goto LABEL_8;
    }
  }

  v63 = 0xE000000000000000;
  v64 = 0;
LABEL_8:
  swift_getKeyPath();
  v27 = sub_2676CA89C();
  v29 = v28;

  if (v29)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  v67 = v30;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v32 = MEMORY[0x277D84FA0];
  v81 = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  sub_2676CA86C();

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC328, &qword_2676CEAD8);
  v34 = OUTLINED_FUNCTION_26_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, v35, v33);
  v37 = MEMORY[0x277D56008];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v15, &qword_2801CC320, &qword_2676CEA40);
    goto LABEL_42;
  }

  v38 = sub_2676CA92C();
  (*(*(v33 - 8) + 8))(v15, v33);
  v80 = v32;
  v39 = *(v38 + 16);
  if (v39)
  {
    v68 = v31;
    v40 = 0xEB00000000657079;
    v41 = 0x54746361746E6F63;
    v42 = *(v74 + 16);
    v43 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v62 = v38;
    v44 = v38 + v43;
    v77 = *(v74 + 72);
    v78 = v42;
    v45 = (v74 + 8);
    v71 = *v37;
    v69 = (v66 + 8);
    v70 = (v66 + 104);
    v74 += 16;
    v72 = v6;
    while (1)
    {
      v78(v11, v44, v6);
      v46 = sub_2676CA45C();
      if (v47)
      {
        break;
      }

LABEL_38:
      (*v45)(v11, v6);
      v44 += v77;
      if (!--v39)
      {

        v37 = MEMORY[0x277D56008];
        goto LABEL_41;
      }
    }

    if (v46 == v41 && v47 == v40)
    {
    }

    else
    {
      v49 = sub_2676CC59C();

      if ((v49 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v50 = v41;
    v51 = v40;
    v52 = sub_2676CA44C();
    v54 = v53;
    if (sub_2676CC06C())
    {
      v55 = sub_2676CC00C();
      v56 = sub_2675F9050(v55, v52, v54);
      MEMORY[0x26D5FDCA0](v56);

      sub_2676ACEBC(v79);
    }

    else
    {
      if (v52 == 0x6C69616D65 && v54 == 0xE500000000000000)
      {
      }

      else
      {
        v58 = sub_2676CC59C();

        if ((v58 & 1) == 0)
        {
LABEL_37:
          v40 = v51;
          v41 = v50;
          v6 = v72;
          goto LABEL_38;
        }
      }

      v67 = 0;
      v68 = 0xE000000000000000;
    }

    v59 = v76;
    (*v70)(v73, v71, v76);
    v60 = v75;
    sub_2676ACC44();
    (*v69)(v60, v59);
    goto LABEL_37;
  }

LABEL_41:

  sub_2675F91A0(0, 0xE000000000000000);

LABEL_42:
  (*(v66 + 104))(v75, *v37, v76);
  sub_2676CABBC();
  sub_2675F9110(v81);
  return sub_2676CABAC();
}

uint64_t sub_2675F8690()
{
  v94 = sub_2676CB87C();
  OUTLINED_FUNCTION_3();
  v88 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_2();
  v93 = v3 - v2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC358, &unk_2676D3670);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v89 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v87 = v8;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v9);
  v91 = &v83 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_1();
  v92 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  OUTLINED_FUNCTION_4_1(v20);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v24);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_4_1(v28);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_9_5();
  v34 = sub_2675F9644(v32, v33, MEMORY[0x277D5C6D8]);
  sub_2676CA89C();
  v36 = v35;

  if (v36)
  {

LABEL_3:
    v37 = 1;
    return v37 & 1;
  }

  v85 = v23;
  v86 = v27;
  v83 = v17;
  v84 = v19;
  v38 = v94;
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_6();
  sub_2675F9644(v39, v40, MEMORY[0x277D5C440]);
  sub_2676CA87C();

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  v37 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v41);
  sub_2675EB7EC(v31, &qword_2801CC0A0, &qword_2676CDAE0);
  if (EnumTagSinglePayload == 1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_8();
    sub_2675F9644(v43, v44, MEMORY[0x277D5C688]);
    v45 = v86;
    sub_2676CA87C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    v46 = OUTLINED_FUNCTION_26_2();
    v49 = __swift_getEnumTagSinglePayload(v46, v47, v48);
    sub_2675EB7EC(v45, &qword_2801CC078, &unk_2676D3680);
    if (v49 == 1)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_10();
      sub_2675F9644(v50, v51, MEMORY[0x277D5C618]);
      v52 = v84;
      v86 = v34;
      sub_2676CA87C();

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      v54 = OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_21_3(v54, v55, v53);
      if (v67)
      {
        sub_2675EB7EC(v52, &qword_2801CC068, &unk_2676D4E00);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
        v65 = v85;
        __swift_storeEnumTagSinglePayload(v85, 1, 1, v56);
        v58 = v92;
        v57 = v93;
        v59 = v90;
        v60 = v91;
      }

      else
      {
        v61 = *(v53 - 8);
        (*(v61 + 16))(v83, v52, v53);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v53);
        sub_2676CB61C();
        sub_2676CB78C();
        sub_2675F9644(&qword_2801CC378, MEMORY[0x277D5C4C8], MEMORY[0x277D5C4B0]);
        v65 = v85;
        sub_2676CA8EC();
        (*(v61 + 8))(v52, v53);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
        OUTLINED_FUNCTION_21_3(v65, 1, v66);
        v58 = v92;
        v57 = v93;
        v59 = v90;
        v60 = v91;
        if (!v67)
        {
          v77 = &qword_2801CC360;
          v78 = &unk_2676D3660;
          v79 = v65;
LABEL_20:
          sub_2675EB7EC(v79, v77, v78);
          goto LABEL_3;
        }
      }

      sub_2675EB7EC(v65, &qword_2801CC360, &unk_2676D3660);
      swift_getKeyPath();
      sub_2676CA84C();

      v68 = v88;
      v69 = v38;
      (*(v88 + 104))(v60, *MEMORY[0x277D5C6E0], v38);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v38);
      v73 = *(v59 + 48);
      v74 = v89;
      sub_2675F95E4(v58, v89, &qword_2801CC098, &qword_2676CDAD8);
      sub_2675F95E4(v60, v74 + v73, &qword_2801CC098, &qword_2676CDAD8);
      OUTLINED_FUNCTION_21_3(v74, 1, v38);
      if (v67)
      {
        OUTLINED_FUNCTION_30_1(v60);
        OUTLINED_FUNCTION_30_1(v58);
        OUTLINED_FUNCTION_18_3(v74 + v73);
        if (v67)
        {
          v77 = &qword_2801CC098;
          v78 = &qword_2676CDAD8;
          v79 = v74;
          goto LABEL_20;
        }
      }

      else
      {
        v75 = v87;
        sub_2675F95E4(v74, v87, &qword_2801CC098, &qword_2676CDAD8);
        OUTLINED_FUNCTION_18_3(v74 + v73);
        if (!v76)
        {
          (*(v68 + 32))(v57, v74 + v73, v69);
          sub_2675F9644(&qword_2801CC370, MEMORY[0x277D5C6E8], MEMORY[0x277D5C6F0]);
          v80 = v60;
          v37 = sub_2676CBF1C();
          v81 = *(v68 + 8);
          v81(v57, v69);
          sub_2675EB7EC(v80, &qword_2801CC098, &qword_2676CDAD8);
          sub_2675EB7EC(v58, &qword_2801CC098, &qword_2676CDAD8);
          v81(v75, v69);
          sub_2675EB7EC(v74, &qword_2801CC098, &qword_2676CDAD8);
          return v37 & 1;
        }

        OUTLINED_FUNCTION_30_1(v60);
        OUTLINED_FUNCTION_30_1(v58);
        (*(v68 + 8))(v75, v69);
      }

      sub_2675EB7EC(v74, &qword_2801CC358, &unk_2676D3670);
      v37 = 0;
    }
  }

  return v37 & 1;
}

uint64_t sub_2675F8F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC330, &qword_2676CEAE0);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_2676CB77C();
}

uint64_t sub_2675F9050(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2676CC01C();
    v3 = sub_2676CC0AC();

    return v3;
  }

  return result;
}

void *sub_2675F9110(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_267607880(*(a1 + 16), 0);
  v4 = sub_2675F9480(&v6, v3 + 4, v2, a1);
  sub_2675F95DC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2675F91A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2676CC64C();
  sub_2676CBFFC();
  v6 = sub_2676CC67C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_2676CC59C() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2676AEB94();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_2675F92C8(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_2675F92C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2676CC3BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2676CC64C();

        sub_2676CBFFC();
        v10 = sub_2676CC67C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2675F9480(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2675F95E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2675F9644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1)
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_13_3()
{
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  result = v0;
  *(v2 - 408) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
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

uint64_t sub_2675F9854(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2675F9894(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_2675F9910()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 8), *(*(v0 + 16) + 32));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2675F99B0;

  return sub_2676432A8();
}

uint64_t sub_2675F99B0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2675F9AB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F9B40;

  return sub_2675F98F0();
}

uint64_t sub_2675F9B40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t type metadata accessor for GetMail(uint64_t a1)
{
  result = qword_2801CC388;
  if (!qword_2801CC388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675F9CC4(uint64_t a1)
{
  sub_2675F9E64(319, &qword_2801CC398, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2675F9E64(319, &qword_2801CC3A0, MEMORY[0x277D839B0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2675F9EB0(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2675F9F08(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2675F9F08(319, &qword_2801CC3B8, &qword_2801CC3C0, &unk_2676CEBA8);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          v2 = sub_2675F9F5C(319, &qword_2801CC3C8, &protocol descriptor for MailFeatureFlagProviding);
          if (v11 <= 0x3F)
          {
            v2 = sub_2675F9F5C(319, &qword_2801CC298, &protocol descriptor for LinkServicesProviding);
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2675F9E64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2676CC2FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2675F9EB0(uint64_t a1)
{
  if (!qword_2801CC3A8)
  {
    sub_2676C8C8C();
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CC3A8);
    }
  }
}

void sub_2675F9F08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2676CC2FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2675F9F5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2675F9FB0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = sub_2676C8BFC();
  OUTLINED_FUNCTION_10_7();
  v1[9] = v2;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_10_7();
  v1[15] = v3;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675FA1B4, 0, 0);
}

uint64_t sub_2675FA1B4()
{
  v1 = *(v0 + 16);
  Mail = type metadata accessor for GetMail(0);
  v3 = Mail;
  *(v0 + 136) = Mail;
  if (*(v1 + Mail[10]) == 2)
  {
    v4 = *(v0 + 48);
    v5 = Mail[7];
    sub_2675FBC80(v1 + v5, *(v0 + 56), &qword_2801CC380, &unk_2676CEF40);
    sub_2675FBC80(v1 + v5, v4, &qword_2801CC380, &unk_2676CEF40);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    __swift_getEnumTagSinglePayload(v4, 1, v6);
    OUTLINED_FUNCTION_16_5();
    v7 = *(v0 + 16);
    if (v5 == 1 && !v7[1])
    {
      v8 = *(v0 + 32);
      sub_2675FBC80(v7 + v3[6], v8, &qword_2801CBFE8, &unk_2676CD9E0);
      v9 = sub_2676C8C8C();
      __swift_getEnumTagSinglePayload(v8, 1, v9);
      OUTLINED_FUNCTION_16_5();
      v7 = *(v0 + 16);
      if (*(v7 + v3[8]) == 2)
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v10 = sub_2676CBE4C();
        __swift_project_value_buffer(v10, qword_2801CDC90);
        v11 = sub_2676CBE2C();
        v12 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v12))
        {
          v13 = OUTLINED_FUNCTION_17_3();
          *v13 = 0;
          _os_log_impl(&dword_2675D4000, v11, v12, "#GetMail applying date time range of past month", v13, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        v14 = *(v0 + 56);
        v15 = *(v0 + 40);

        v16 = *(v6 + 48);
        sub_2676C907C();
        v17 = sub_2676C90CC();
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
        sub_2676C90AC();
        sub_2675EB7EC(v14, &qword_2801CC380, &unk_2676CEF40);
        __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v17);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
        sub_2675FBC30(v15, v14, &qword_2801CC380, &unk_2676CEF40);
        v7 = *(v0 + 16);
      }
    }

    v18 = (v7 + v3[14]);
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v21 = *v7;
    v22 = v7[1];
    v23 = *(v7 + 16);
    *(v0 + 184) = v23;
    v24 = *(v7 + v3[8]);
    *(v0 + 185) = v24;
    v25 = v3[6];
    OUTLINED_FUNCTION_10_7();
    v35 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 160) = v27;
    *v27 = v0;
    v27[1] = sub_2675FAA30;
    v28 = *(v0 + 56);

    return v35(v21, v22, v23, v24, v7 + v25, v28, v19, v20);
  }

  else
  {
    v30 = (v1 + Mail[14]);
    v31 = v30[3];
    v32 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v31);
    OUTLINED_FUNCTION_10_7();
    v36 = (v33 + *v33);
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_2675FA65C;

    return v36(v31, v32);
  }
}

uint64_t sub_2675FA65C()
{
  OUTLINED_FUNCTION_8_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  return MEMORY[0x2822009F8](sub_2675FA758, 0, 0);
}

uint64_t sub_2675FA758()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = v0[14];
    v3 = v0[9];
    v28 = MEMORY[0x277D84F90];
    sub_2676C2998(0, v2, 0);
    v4 = 0;
    v5 = v28;
    v25 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v24 = v2;
    v27 = v1;
    while (v4 < *(v1 + 16))
    {
      v6 = v0[16];
      v7 = v0[13];
      v8 = v0[8];
      v9 = *(v3 + 16);
      v9(v7, v25 + *(v3 + 72) * v4, v8);
      v10 = (v6 + *(v26 + 48));
      v9(v6, v7, v8);
      *v10 = 0;
      v10[1] = 0;
      (*(v3 + 8))(v7, v8);
      v12 = *(v28 + 16);
      v11 = *(v28 + 24);
      if (v12 >= v11 >> 1)
      {
        v16 = OUTLINED_FUNCTION_23_1(v11);
        sub_2676C2998(v16, v12 + 1, 1);
      }

      ++v4;
      *(v28 + 16) = v12 + 1;
      OUTLINED_FUNCTION_2_12();
      sub_2675FBC30(v15, v28 + v13 + *(v14 + 72) * v12, &qword_2801CC3D8, &unk_2676CEC00);
      v1 = v27;
      if (v24 == v4)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_2801CBAA0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v17 = sub_2676CBE4C();
  __swift_project_value_buffer(v17, qword_2801CDC90);
  v18 = sub_2676CBE2C();
  v19 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v19))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v20, v21, "#GetMail user is referring to something onscreen that we couldn't resolve, returning empty array");
    OUTLINED_FUNCTION_2_5();
  }

  v5 = MEMORY[0x277D84F90];
LABEL_12:
  OUTLINED_FUNCTION_6_5();

  v22 = v0[1];

  return v22(v5);
}

uint64_t sub_2675FAA30()
{
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v4;
  *(v2 + 176) = v0;

  if (v0)
  {
    v5 = sub_2675FB2EC;
  }

  else
  {
    v5 = sub_2675FAB40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2675FAB40()
{
  v1 = *(*(v0 + 16) + *(*(v0 + 136) + 36));
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 24);
    sub_267698E88(*(v0 + 168));
    if (__swift_getEnumTagSinglePayload(v3, 1, v2) != 1)
    {
      v41 = *(v0 + 96);
      v42 = *(v0 + 64);
      v43 = *(v0 + 72);
      v44 = *(v0 + 56);
      v45 = *(v0 + 24);

      (*(v43 + 32))(v41, v45, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3E0, &qword_2676CF2E0);
      v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2676CDE20;
      (*(v43 + 16))(v47 + v46, v41, v42);
      v70 = sub_2675FB3DC(v47);
      swift_setDeallocating();
      sub_2675FBB3C();
      (*(v43 + 8))(v41, v42);
      goto LABEL_45;
    }

    sub_2675EB7EC(*(v0 + 24), &qword_2801CC3D0, &qword_2676D1D80);
  }

  v4 = *(v0 + 185);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    v5 = *(v0 + 168);
    v6 = *(v5 + 16);
    if (!v6)
    {

      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v48 = sub_2676CBE4C();
      __swift_project_value_buffer(v48, qword_2801CDC90);
      v49 = sub_2676CBE2C();
      v50 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v50))
      {
        *OUTLINED_FUNCTION_17_3() = 0;
        OUTLINED_FUNCTION_15_6(&dword_2675D4000, v51, v52, "#GetMail didn't find any new emails, returning nothing");
        OUTLINED_FUNCTION_2_5();
      }

      v44 = *(v0 + 56);

      v70 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);
    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v9))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_17_5(&dword_2675D4000, v10, v11, "#GetMail returning some new emails");
      OUTLINED_FUNCTION_2_5();
    }

    v12 = *(v0 + 72);

    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {
        goto LABEL_36;
      }

      if (i >= *(v5 + 16))
      {
        break;
      }

      v14 = *(v0 + 104);
      v15 = *(v0 + 64);
      (*(v12 + 16))(v14, *(v0 + 168) + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i, v15);
      v16 = sub_2676C8B2C();
      (*(v12 + 8))(v14, v15);
      if (v16)
      {
        v55 = sub_267651810(0, i + 1, *(v0 + 168));
        v57 = v56;
        v59 = v58;
        v61 = v60;

        if ((v61 & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_2676CC5BC();
        swift_unknownObjectRetain_n();
        v63 = swift_dynamicCastClass();
        if (!v63)
        {
          swift_unknownObjectRelease();
          v63 = MEMORY[0x277D84F90];
        }

        v64 = *(v63 + 16);

        if (__OFSUB__(v61 >> 1, v59))
        {
          __break(1u);
        }

        else if (v64 == (v61 >> 1) - v59)
        {
          v37 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v37)
          {
            goto LABEL_39;
          }

          v37 = MEMORY[0x277D84F90];
          goto LABEL_56;
        }

        swift_unknownObjectRelease_n();
LABEL_49:
        sub_267651540(v55, v57, v59, v61);
        v37 = v62;
LABEL_56:
        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    goto LABEL_19;
  }

  if (*(v0 + 184) != 2)
  {
LABEL_36:
    v44 = *(v0 + 56);
    v70 = sub_2675FB3DC(*(v0 + 168));

    goto LABEL_45;
  }

  if (qword_2801CBAA0 != -1)
  {
    goto LABEL_59;
  }

LABEL_19:
  v17 = sub_2676CBE4C();
  __swift_project_value_buffer(v17, qword_2801CDC90);
  v18 = sub_2676CBE2C();
  v19 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v19))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_17_5(&dword_2675D4000, v20, v21, "#GetMail filtering for implicit unread since there are unreads but the user did not specify");
    OUTLINED_FUNCTION_2_5();
  }

  v22 = *(v0 + 168);
  v23 = *(v0 + 72);

  v24 = 0;
  v25 = *(v22 + 16);
  v69 = (v23 + 32);
  v67 = MEMORY[0x277D84F90];
  while (v25 != v24)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_58;
    }

    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = *(v23 + 72);
    (*(v23 + 16))(*(v0 + 88), *(v0 + 168) + v26 + v27 * v24, *(v0 + 64));
    if (sub_2676C8B2C())
    {
      (*(v23 + 8))(*(v0 + 88), *(v0 + 64));
      ++v24;
    }

    else
    {
      v66 = *v69;
      (*v69)(*(v0 + 80), *(v0 + 88), *(v0 + 64));
      v28 = v67;
      v71 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2676C2950(0, *(v67 + 16) + 1, 1);
        v28 = v67;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v34 = OUTLINED_FUNCTION_23_1(v29);
        v68 = v35;
        v65 = v36;
        sub_2676C2950(v34, v36, 1);
        v31 = v65;
        v30 = v68;
        v28 = v71;
      }

      ++v24;
      v32 = *(v0 + 80);
      v33 = *(v0 + 64);
      *(v28 + 16) = v31;
      v67 = v28;
      v66(v28 + v26 + v30 * v27, v32, v33);
    }
  }

  v37 = v67;
  if (!*(v67 + 16))
  {

    goto LABEL_36;
  }

  v38 = sub_2676CBE2C();
  v39 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = *(v67 + 16);

    _os_log_impl(&dword_2675D4000, v38, v39, "#GetMail found %ld unread emails, returning those", v40, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

LABEL_39:
  v44 = *(v0 + 56);
  v70 = sub_2675FB3DC(v37);

LABEL_45:
  sub_2675EB7EC(v44, &qword_2801CC380, &unk_2676CEF40);

  v53 = *(v0 + 8);

  return v53(v70);
}

uint64_t sub_2675FB2EC(uint64_t a1)
{
  OUTLINED_FUNCTION_6_5();
  sub_2675EB7EC(v2, &qword_2801CC380, &unk_2676CEF40);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2675FB3DC(uint64_t a1)
{
  v68 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_3();
  v65 = v8;
  v66 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  Mail = type metadata accessor for GetMail(0);
  sub_2675FBC80(v1 + *(Mail + 44), &v69, &qword_2801CC3E8, &qword_2676CEC10);
  if (v70)
  {
    sub_2675DD73C(&v69, v71);
    __swift_project_boxed_opaque_existential_1((v1 + *(Mail + 48)), *(v1 + *(Mail + 48) + 24));
    if (sub_267616C5C())
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v15 = sub_2676CBE4C();
      __swift_project_value_buffer(v15, qword_2801CDC90);

      v16 = sub_2676CBE2C();
      v17 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v17))
      {
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_14_5(v18, 3.852e-34);
        _os_log_impl(&dword_2675D4000, v16, v17, "#GetMail CatchUp is enabled, fetch email summaries for %ld messages", v18, 0xCu);
        OUTLINED_FUNCTION_2_5();
      }

      else
      {
      }

      v39 = *(a1 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v39)
      {
        *&v69 = MEMORY[0x277D84F90];
        sub_2676C2998(0, v39, 0);
        v24 = v69;
        v40 = v4 + 16;
        OUTLINED_FUNCTION_2_12();
        v42 = (a1 + v41);
        v62 = *(v40 + 56);
        v63 = v43;
        v64 = v40;
        v60 = v13;
        v61 = (v40 - 8);
        do
        {
          v45 = v67;
          v44 = v68;
          v46 = v63;
          v63(v67, v42, v68);
          v47 = &v13[*(v66 + 48)];
          v46(v13, v45, v44);
          __swift_project_boxed_opaque_existential_1(v71, v71[3]);
          sub_2676C8ABC();
          v48 = sub_2676CBFAC();
          v50 = v49;

          v51 = sub_267642F84(v48, v50);
          v53 = v52;

          *v47 = v51;
          *(v47 + 1) = v53;
          (*v61)(v45, v44);
          *&v69 = v24;
          v55 = *(v24 + 16);
          v54 = *(v24 + 24);
          if (v55 >= v54 >> 1)
          {
            v58 = OUTLINED_FUNCTION_23_1(v54);
            sub_2676C2998(v58, v55 + 1, 1);
            v24 = v69;
          }

          *(v24 + 16) = v55 + 1;
          OUTLINED_FUNCTION_1_11();
          v13 = v60;
          sub_2675FBC30(v60, v56 + v57 * v55, &qword_2801CC3D8, &unk_2676CEC00);
          v42 += v62;
          --v39;
        }

        while (v39);
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      return v24;
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_2675EB7EC(&v69, &qword_2801CC3E8, &qword_2676CEC10);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v19 = sub_2676CBE4C();
  __swift_project_value_buffer(v19, qword_2801CDC90);

  v20 = sub_2676CBE2C();
  v21 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v21))
  {
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_14_5(v22, 3.852e-34);
    _os_log_impl(&dword_2675D4000, v20, v21, "#GetMail CatchUp is disabled, not fetching email summaries for %ld messages", v22, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  v23 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v71[0] = MEMORY[0x277D84F90];
    sub_2676C2998(0, v23, 0);
    v24 = v71[0];
    v27 = *(v4 + 16);
    v25 = v4 + 16;
    v26 = v27;
    OUTLINED_FUNCTION_2_12();
    v29 = a1 + v28;
    v63 = *(v25 + 56);
    v64 = v25;
    v30 = (v25 - 8);
    do
    {
      v32 = v67;
      v31 = v68;
      v26(v67, v29, v68);
      v33 = &v11[*(v66 + 48)];
      v26(v11, v32, v31);
      *v33 = 0;
      *(v33 + 1) = 0;
      (*v30)(v32, v31);
      v71[0] = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        v38 = OUTLINED_FUNCTION_23_1(v34);
        sub_2676C2998(v38, v35 + 1, 1);
        v24 = v71[0];
      }

      *(v24 + 16) = v35 + 1;
      OUTLINED_FUNCTION_1_11();
      sub_2675FBC30(v11, v36 + v37 * v35, &qword_2801CC3D8, &unk_2676CEC00);
      v29 += v63;
      --v23;
    }

    while (v23);
  }

  return v24;
}

uint64_t sub_2675FB9A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675FBA34;

  return sub_2675F9FB0();
}

uint64_t sub_2675FBA34(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2675FBB3C()
{
  sub_2676C8BFC();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675FBBB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2675FBC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2675FBC80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 16))(v4, v5);
  return v4;
}

BOOL OUTLINED_FUNCTION_5_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

void OUTLINED_FUNCTION_15_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_2675EB7EC(v0, v1, v2);
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for HandleDisambiguationProducer(uint64_t a1)
{
  result = qword_2801CC3F8;
  if (!qword_2801CC3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2675FBE54(uint64_t a1)
{
  result = type metadata accessor for ContactResolutionCATsSimple(319);
  if (v2 <= 0x3F)
  {
    result = sub_2676CAECC();
    if (v3 <= 0x3F)
    {
      result = sub_2676CB38C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2675FBEF0(uint64_t a1, uint64_t a2)
{
  v10[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  result = sub_267630B8C();
  v7 = result;
  v8 = 0;
  v12 = a1 & 0xC000000000000001;
  while (v7 != v8)
  {
    if (v12)
    {
      result = MEMORY[0x26D5FE0E0](v8, a1);
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (sub_2676CB29C())
    {
      sub_2676CB19C();

      v9 = sub_2676CB3FC();
      if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
      {
        sub_2675E3BB8(v5);
      }

      else
      {
        sub_2676CB3EC();
        (*(*(v9 - 8) + 8))(v5, v9);
      }
    }

    sub_2676ACFD0(v11);

    ++v8;
  }

  return result;
}

uint64_t sub_2675FC0C4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v2[24] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C9A6C();
  v2[25] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v2[26] = v5;
  v2[27] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C90FC();
  v2[28] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v2[29] = v7;
  v2[30] = OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v8);
  v2[31] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v9);
  v2[32] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676C99CC();
  v2[33] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v2[34] = v11;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v12 = sub_2676C9DDC();
  v2[37] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v2[38] = v13;
  v2[39] = OUTLINED_FUNCTION_2_0();
  v14 = sub_2676CAECC();
  v2[40] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v2[41] = v15;
  v2[42] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676C91DC();
  OUTLINED_FUNCTION_4_1(v16);
  v2[43] = OUTLINED_FUNCTION_2_0();
  v17 = sub_2676CADCC();
  v2[44] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v2[45] = v18;
  v2[46] = OUTLINED_FUNCTION_2_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v19);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v20 = sub_2676CB3FC();
  v2[49] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v2[50] = v21;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2675FC43C, 0, 0);
}

uint64_t sub_2675FC43C()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  *(v0 + 424) = __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#HandleDisambiguationProducer producing contact handle disambiguation", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v5 = type metadata accessor for HandleDisambiguationProducer(0);
  *(v0 + 432) = v5;
  *(v0 + 488) = *(v5 + 20);
  v6 = sub_2675E3C20();
  *(v0 + 440) = v6;
  *(v0 + 492) = sub_2675FD400(v6) & 1;
  if (!sub_267630B8C())
  {
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);

    __swift_storeEnumTagSinglePayload(v10, 1, 1, v9);
LABEL_11:
    sub_2675E3BB8(*(v0 + 384));
    sub_2675FD730();
    swift_allocError();
    *v11 = xmmword_2676CEC20;
    swift_willThrow();
    OUTLINED_FUNCTION_2_13();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_5_8();

    __asm { BRAA            X1, X16 }
  }

  sub_267692C1C();
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v6);
  }

  else
  {
  }

  v8 = *(v0 + 384);
  v7 = *(v0 + 392);
  sub_2676CB34C();

  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {

    goto LABEL_11;
  }

  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 400);
  v17 = *(v0 + 376);
  (*(v16 + 32))(v14, *(v0 + 384), v15);
  v18 = *(v16 + 16);
  *(v0 + 448) = v18;
  *(v0 + 456) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v17, v14, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v15);
  v19 = swift_task_alloc();
  *(v0 + 464) = v19;
  *v19 = v0;
  v19[1] = sub_2675FC7EC;
  OUTLINED_FUNCTION_5_8();

  return sub_2675ECB18();
}

uint64_t sub_2675FC7EC(uint64_t a1)
{
  v3 = *v2;
  v3[59] = a1;
  v3[60] = v1;

  sub_2675E3BB8(v3[47]);
  if (v1)
  {

    v4 = sub_2675FD2E4;
  }

  else
  {
    v4 = sub_2675FC91C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2675FC91C()
{
  v68 = v0;
  (*(v0 + 448))(*(v0 + 408), *(v0 + 416), *(v0 + 392));

  v1 = sub_2676CBE2C();
  v2 = sub_2676CC23C();
  if (os_log_type_enabled(v1, v2))
  {
    v64 = *(v0 + 492);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v5 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67[0] = v7;
    *v6 = 134218498;
    *(v6 + 4) = sub_267630B8C();

    *(v6 + 12) = 2080;
    v8 = sub_2676CB3EC();
    v10 = v9;
    v62 = *(v4 + 8);
    v62(v3, v5);
    v11 = sub_2676B0B84(v8, v10, v67);

    *(v6 + 14) = v11;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v64;
    _os_log_impl(&dword_2675D4000, v1, v2, "#HandleDisambiguationProducer Dialog: emailList: %ld name: %s isSameLabels: %{BOOL}d", v6, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D5FEA80](v7, -1, -1);
    MEMORY[0x26D5FEA80](v6, -1, -1);
  }

  else
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v14 = *(v0 + 392);

    v62 = *(v13 + 8);
    v62(v12, v14);
  }

  sub_2676C919C();
  if ((sub_2676C917C() & 1) == 0)
  {
    v31 = *(v0 + 488);
    v32 = *(v0 + 336);
    v33 = *(v0 + 344);
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);
    v36 = *(v0 + 184);

    (*(v35 + 16))(v32, v36 + v31, v34);
    sub_2676C91CC();
    *(v0 + 40) = sub_2676C916C();
    *(v0 + 48) = sub_2675E5DE8(&qword_2801CBFF8, MEMORY[0x277D5C900], MEMORY[0x277D5C8F8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_2675FD784(v33, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    sub_2675FD7E8(v33);
LABEL_17:
    v58 = *(v0 + 472);
    v60 = *(v0 + 416);
    v59 = *(v0 + 392);
    v41 = *(v0 + 312);
    v55 = *(v0 + 304);
    v42 = *(v0 + 288);
    v57 = *(v0 + 296);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);
    v63 = *(v0 + 240);
    v66 = *(v0 + 248);
    v47 = *(v0 + 232);
    v52 = *(v0 + 224);
    v48 = *(v0 + 208);
    v53 = *(v0 + 216);
    v54 = *(v0 + 200);
    v56 = *(v0 + 192);
    sub_2676C999C();
    (*(v43 + 16))(v44, v42, v45);
    sub_2676C9D2C();
    sub_2676C9D6C();
    sub_26762D4C8(v46);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    v49 = sub_2676C9B3C();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v49);
    sub_2676C9D8C();
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    (*(v47 + 8))(v63, v52);
    sub_2676C9D5C();
    sub_2676C9DAC();
    (*(v48 + 104))(v53, *MEMORY[0x277D5BC50], v54);
    sub_2676C9D4C();
    (*(v43 + 8))(v42, v45);
    sub_2675E5D38(v0 + 16, v0 + 56);
    memset(v67, 0, 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2676CD5C0;
    *(v50 + 32) = v58;
    (*(v55 + 16))(v56, v41, v57);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    sub_2676C9AAC();
    (*(v55 + 8))(v41, v57);
    v62(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    OUTLINED_FUNCTION_15_0();
    goto LABEL_18;
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 184);
  v17 = sub_2676CBB7C();
  *(v0 + 120) = v17;
  *(v0 + 128) = sub_2675E5DE8(&qword_2801CC000, MEMORY[0x277D565C0], MEMORY[0x277D565B8]);
  v65 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v18 = sub_2676CAD7C();
  v19 = *(v16 + *(v15 + 24));
  v20 = sub_2675ED7F4(v18, v19);

  if (!sub_267630B8C())
  {

    __break(1u);
    return result;
  }

  sub_267692C1C();
  v61 = v17;
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v20);
  }

  else
  {
  }

  v21 = *(v0 + 472);
  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  v24 = *(v0 + 352);

  sub_2676CADDC();
  v25 = sub_2676CADBC();
  (*(v23 + 8))(v22, v24);
  sub_2675ED7F4(v25, v19);

  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_2676C991C();
  sub_2676C96AC();
  sub_2676C969C();
  v26 = [v21 dialog];
  sub_2675E16F4();
  v27 = sub_2676CC0FC();

  if (sub_267630B8C())
  {
    sub_267692C1C();
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D5FE0E0](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    v29 = v28;

    v30 = [v29 fullPrint];

    sub_2676CBF6C();
  }

  else
  {
  }

  v38 = *(v0 + 480);
  sub_2676CBB6C();
  if (!v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    (*(*(v61 - 8) + 104))(v65, *MEMORY[0x277D565A8]);
    sub_2675DD73C((v0 + 96), v0 + 16);
    goto LABEL_17;
  }

  v39 = *(v0 + 472);
  v62(*(v0 + 416), *(v0 + 392));

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 96);

  OUTLINED_FUNCTION_15_0();
LABEL_18:

  return v40();
}

void sub_2675FD2E4()
{
  (*(v0[50] + 8))(v0[52], v0[49]);
  OUTLINED_FUNCTION_2_13();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2675FD400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-1] - v4;
  v21[0] = MEMORY[0x277D84F90];
  result = sub_267630B8C();
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5FE0E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    if (sub_2676CB29C())
    {
      sub_2676CB1AC();

      v9 = sub_2676CB3FC();
      if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
      {

        result = sub_2675E3BB8(v5);
      }

      else
      {
        sub_2675E3BB8(v5);
        sub_2676CC44C();
        sub_2676CC47C();
        sub_2676CC48C();
        result = sub_2676CC45C();
      }
    }

    else
    {
    }
  }

  v10 = v21[0];
  v11 = sub_267630B8C();
  if (v11 == sub_267630B8C())
  {
    v22 = MEMORY[0x277D84FA0];
    sub_2675FBEF0(v10, &v22);

    v12 = v22;
    v13 = *(v22 + 16);
    if (v13 == v11)
    {
      v14 = 0;
    }

    else if (v13 && (sub_2676CC64C(), sub_2676CC66C(), v15 = sub_2676CC67C(), v16 = -1 << *(v12 + 32), v17 = v15 & ~v16, ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      do
      {
        v19 = *(*(v12 + 48) + 16 * v17 + 8);
        v14 = v19 != 0;
        if (!v19)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {

    return 1;
  }

  return v14;
}

uint64_t sub_2675FD698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E5BE8;

  return sub_2675FC0C4(a1);
}

unint64_t sub_2675FD730()
{
  result = qword_2801CC408;
  if (!qword_2801CC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC408);
  }

  return result;
}

uint64_t sub_2675FD784(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C91DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2675FD7E8(uint64_t a1)
{
  v2 = sub_2676C91DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2675FD890(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2675FD8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2675FD92C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v2[7] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v2[8] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C99CC();
  v2[9] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v2[10] = v6;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = sub_2676C9DDC();
  v2[13] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[14] = v8;
  v2[15] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v2[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FDB00, 0, 0);
}

uint64_t sub_2675FDB00()
{
  v1 = v0[3];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[17] = sub_2676CB42C();
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2675FDBD8;

  return sub_267653178(v2, v3);
}

uint64_t sub_2675FDBD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v4 + 152) = v1;

  if (v1)
  {
    v7 = sub_2675FE118;
  }

  else
  {

    *(v4 + 160) = a1;
    v7 = sub_2675FDD00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2675FDD00()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v10 = v0[7];
  v11 = v0[4];
  sub_2676C99BC();
  (*(v4 + 16))(v1, v2, v3);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v8);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v7 + 8))(v6, v11);
  sub_2676C9D5C();
  sub_2676CAF6C();
  sub_2676C9D3C();
  (*(v4 + 8))(v2, v3);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_2675FDF3C;

  JUMPOUT(0x2676BE6B4);
}

uint64_t sub_2675FDF3C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2675FE030, 0, 0);
}

uint64_t sub_2675FE030()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675FE118()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675FE1DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_2675FD92C(a1);
}

uint64_t sub_2675FE274()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2675FE360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2675FE3A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2675FE3FC()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2676C90FC();
  v1[7] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v1[10] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v1[11] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C99CC();
  v1[12] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[13] = v6;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_2676C9DDC();
  v1[16] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v1[19] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FE5CC, 0, 0);
}

uint64_t sub_2675FE5CC()
{
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 160) = sub_2676CB42C();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_2675FE684;

  return sub_267653464();
}

uint64_t sub_2675FE684()
{
  OUTLINED_FUNCTION_3_0();
  v7 = *v1;
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  v7[22] = v0;

  if (v0)
  {
    v5 = sub_2675FEBC8;
  }

  else
  {

    v5 = sub_2675FE79C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2675FE79C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v11 = v0[10];
  v12 = v0[7];
  v14 = v0[6];
  sub_2676C99BC();
  (*(v3 + 16))(v2, v1, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v8);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v7 + 8))(v6, v12);
  sub_2676C9D5C();
  if ((*(v14 + 40) & 0x80) != 0)
  {
    sub_2676CAF6C();
    sub_2676C9D3C();
  }

  v9 = v0[3];
  (*(v0[13] + 8))(v0[15], v0[12]);
  v0[23] = v9;
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_2675FE9F0;

  JUMPOUT(0x2676BE6B4);
}

uint64_t sub_2675FE9F0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2675FEAE0, 0, 0);
}

uint64_t sub_2675FEAE0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675FEBC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675FEC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675DFCCC;

  return sub_2675FE3FC();
}

uint64_t type metadata accessor for Intro(uint64_t a1)
{
  result = qword_2801CC410;
  if (!qword_2801CC410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2675FED98(uint64_t a1)
{
  sub_2675FEE64();
  if (v1 <= 0x3F)
  {
    sub_2675F9EB0(319);
    if (v2 <= 0x3F)
    {
      sub_2675FEEB4(319);
      if (v3 <= 0x3F)
      {
        sub_2675FEF18();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2675FEE64()
{
  if (!qword_2801CC398)
  {
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC398);
    }
  }
}

void sub_2675FEEB4(uint64_t a1)
{
  if (!qword_2801CC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CC3B0);
    }
  }
}

unint64_t sub_2675FEF18()
{
  result = qword_2801CC420;
  if (!qword_2801CC420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CC420);
  }

  return result;
}

uint64_t sub_2675FEF74(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2676C90FC();
  v2[9] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[10] = v4;
  v2[11] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  v2[12] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v2[14] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[15] = v8;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = sub_2676C9DDC();
  v2[18] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v2[19] = v10;
  v2[20] = OUTLINED_FUNCTION_2_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v11);
  v2[21] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v12);
  v2[22] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v13);
  v2[23] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_2675FF194, 0, 0);
}

uint64_t sub_2675FF194()
{
  v1 = v0[8];
  sub_2676CB28C();
  v2 = type metadata accessor for Intro(0);
  v0[24] = v2;
  v3 = sub_2675FFBC4(v1 + *(v2 + 32));
  v0[25] = v3;
  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2676C992C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[26] = sub_2676CB42C();
  if (*(v1 + 24))
  {
    sub_2676CBFEC();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[8];
  v8 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v5, v4, 1, v8);
  sub_2675ED65C(v7 + *(v2 + 28), v6, &qword_2801CBFE8, &unk_2676CD9E0);
  v9 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v9);
  v11 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(v0[21], &qword_2801CBFE8, &unk_2676CD9E0);
    v12 = 0;
  }

  else
  {
    v12 = sub_267626550();
    OUTLINED_FUNCTION_14_2();
    (*(v13 + 8))(v11, v9);
  }

  v0[27] = v12;
  if ((*(v0[8] + 8) & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
  }

  v0[28] = v3;
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_2675FF414;

  return sub_267652CEC();
}

uint64_t sub_2675FF414()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  *(v6 + 240) = v5;
  *(v6 + 248) = v0;

  sub_2675ED6C0(v2, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {
    v7 = sub_2675FFAE4;
  }

  else
  {
    v7 = sub_2675FF5B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2675FF5B4()
{
  v1 = [*(v0 + 240) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v7 = *(v0 + 160);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      v17 = *(v0 + 96);
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);

      sub_2676C99BC();
      (*(v10 + 16))(v9, v8, v11);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v15 = sub_2676C9B3C();
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v15);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v13 + 8))(v14, v18);
      sub_2676C9D5C();
      sub_2675FFF4C(v7, v19);
      (*(v10 + 8))(v8, v11);
      v16 = swift_task_alloc();
      *(v0 + 256) = v16;
      *v16 = v0;
      v16[1] = sub_2675FF8E0;

      JUMPOUT(0x2676BE6B4);
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2675FF8E0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2675FF9D4, 0, 0);
}

uint64_t sub_2675FF9D4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2675FFAE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2675FFBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  sub_2675ED65C(a1, v8, &qword_2801CC380, &unk_2676CEF40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) != 1)
  {
    v20 = *(v16 + 48);
    sub_2675F2D78(v8, v15);
    v21 = sub_2676C90CC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
    {
      sub_2675ED6C0(&v8[v20], &qword_2801CC210, &qword_2676CEDC0);
      v19 = v15;
      v17 = &qword_2801CC210;
      v18 = &qword_2676CEDC0;
      goto LABEL_5;
    }

    sub_2676C908C();
    OUTLINED_FUNCTION_14_2();
    v24 = *(v23 + 8);
    v24(v15, v21);
    sub_2675ED6C0(&v8[v20], &qword_2801CC210, &qword_2676CEDC0);
    sub_2676CB27C();
    swift_allocObject();
    sub_2676CB26C();
    sub_2676CB24C();

    sub_2675ED65C(a1, v6, &qword_2801CC380, &unk_2676CEF40);
    if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
    {
      v25 = &qword_2801CC380;
      v26 = &unk_2676CEF40;
      v27 = v6;
    }

    else
    {
      sub_2675F2D78(&v6[*(v16 + 48)], v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v21) != 1)
      {
        sub_2676C908C();
        v24(v13, v21);
        sub_2675ED6C0(v6, &qword_2801CC210, &qword_2676CEDC0);
        goto LABEL_12;
      }

      sub_2675ED6C0(v6, &qword_2801CC210, &qword_2676CEDC0);
      v27 = v13;
      v25 = &qword_2801CC210;
      v26 = &qword_2676CEDC0;
    }

    sub_2675ED6C0(v27, v25, v26);
LABEL_12:
    sub_2676CB23C();

    v22 = sub_2676CB25C();

    return v22;
  }

  v17 = &qword_2801CC380;
  v18 = &unk_2676CEF40;
  v19 = v8;
LABEL_5:
  sub_2675ED6C0(v19, v17, v18);
  return 0;
}

uint64_t sub_2675FFF4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2676CAF8C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  sub_2676CA3AC();
  sub_2676299B8(v10);
  (*(v8 + 8))(v10, v7);
  v15 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  result = sub_2676C9D8C();
  if ((*(a2 + 8) & 0x80) != 0)
  {
    sub_2676CAF6C();
    return sub_2676C9D3C();
  }

  return result;
}

uint64_t sub_267600184(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_2675FEF74(a1);
}

void *sub_26760021C()
{
  type metadata accessor for UILabels();
  swift_allocObject();
  result = sub_2676002E4();
  qword_2801D3CD0 = result;
  return result;
}

uint64_t sub_267600258()
{
  v0 = sub_2676CB48C();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for MailLabelCATs(0);
  sub_2676CB47C();
  result = sub_2676CB3BC();
  qword_2801CC438 = result;
  return result;
}

void *sub_2676002E4()
{
  v1 = v0;
  v240 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v240);
  v241 = &v215 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  v4 = MEMORY[0x28223BE20](v3);
  v239 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v238 = &v215 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v237 = &v215 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v236 = &v215 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v235 = &v215 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v234 = &v215 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v233 = &v215 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v232 = &v215 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v231 = &v215 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v230 = &v215 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v229 = &v215 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v228 = &v215 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v227 = &v215 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v226 = &v215 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v225 = &v215 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v224 = &v215 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v223 = &v215 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v222 = &v215 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v221 = &v215 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v220 = &v215 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v219 = &v215 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v218 = &v215 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v217 = &v215 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v216 = &v215 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v215 = &v215 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v215 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v215 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v215 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v215 - v63;
  if (qword_2801CBA78 != -1)
  {
    swift_once();
  }

  sub_2676CB3AC();
  v65 = sub_2676CC68C();
  if (v66)
  {
    v67 = v65;
  }

  else
  {
    v67 = 0;
  }

  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0xE000000000000000;
  }

  sub_2676011FC(v64);
  v1[2] = v67;
  v1[3] = v68;
  sub_2676CB3AC();
  v69 = sub_2676CC68C();
  if (v70)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = 0xE000000000000000;
  }

  sub_2676011FC(v62);
  v1[4] = v71;
  v1[5] = v72;
  sub_26761A0EC();
  v73 = sub_2676CC68C();
  if (v74)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  sub_2676011FC(v59);
  v1[6] = v75;
  v1[7] = v76;
  v77 = MEMORY[0x277D84F90];
  sub_2676CB3AC();
  v78 = sub_2676CC68C();
  if (v79)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0;
  }

  if (v79)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  sub_2676011FC(v56);
  v1[8] = v80;
  v1[9] = v81;
  v82 = v215;
  sub_26761A10C();
  v83 = sub_2676CC68C();
  if (v84)
  {
    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0xE000000000000000;
  }

  sub_2676011FC(v82);
  v1[10] = v85;
  v1[11] = v86;
  v87 = v216;
  sub_26761A1AC(v77);
  v88 = sub_2676CC68C();
  if (v89)
  {
    v90 = v88;
  }

  else
  {
    v90 = 0;
  }

  if (v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  sub_2676011FC(v87);
  v1[12] = v90;
  v1[13] = v91;
  v92 = v217;
  sub_26761A28C();
  v93 = sub_2676CC68C();
  if (v94)
  {
    v95 = v93;
  }

  else
  {
    v95 = 0;
  }

  if (v94)
  {
    v96 = v94;
  }

  else
  {
    v96 = 0xE000000000000000;
  }

  sub_2676011FC(v92);
  v1[14] = v95;
  v1[15] = v96;
  v97 = v218;
  sub_26761A2AC();
  v98 = sub_2676CC68C();
  if (v99)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0xE000000000000000;
  }

  sub_2676011FC(v97);
  v1[16] = v100;
  v1[17] = v101;
  v102 = v219;
  sub_26761A18C();
  v103 = sub_2676CC68C();
  if (v104)
  {
    v105 = v103;
  }

  else
  {
    v105 = 0;
  }

  if (v104)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0xE000000000000000;
  }

  sub_2676011FC(v102);
  v1[18] = v105;
  v1[19] = v106;
  v107 = v220;
  sub_26761A12C();
  v108 = sub_2676CC68C();
  if (v109)
  {
    v110 = v108;
  }

  else
  {
    v110 = 0;
  }

  if (v109)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0xE000000000000000;
  }

  sub_2676011FC(v107);
  v1[20] = v110;
  v1[21] = v111;
  v112 = v221;
  sub_26761A14C();
  v113 = sub_2676CC68C();
  if (v114)
  {
    v115 = v113;
  }

  else
  {
    v115 = 0;
  }

  if (v114)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0xE000000000000000;
  }

  sub_2676011FC(v112);
  v1[22] = v115;
  v1[23] = v116;
  v117 = v222;
  sub_26761A16C();
  v118 = sub_2676CC68C();
  if (v119)
  {
    v120 = v118;
  }

  else
  {
    v120 = 0;
  }

  if (v119)
  {
    v121 = v119;
  }

  else
  {
    v121 = 0xE000000000000000;
  }

  sub_2676011FC(v117);
  v1[24] = v120;
  v1[25] = v121;
  v122 = v223;
  sub_2676CB3AC();
  v123 = sub_2676CC68C();
  if (v124)
  {
    v125 = v123;
  }

  else
  {
    v125 = 0;
  }

  if (v124)
  {
    v126 = v124;
  }

  else
  {
    v126 = 0xE000000000000000;
  }

  sub_2676011FC(v122);
  v1[26] = v125;
  v1[27] = v126;
  v127 = v224;
  sub_26761A2CC();
  v128 = sub_2676CC68C();
  if (v129)
  {
    v130 = v128;
  }

  else
  {
    v130 = 0;
  }

  if (v129)
  {
    v131 = v129;
  }

  else
  {
    v131 = 0xE000000000000000;
  }

  sub_2676011FC(v127);
  v1[28] = v130;
  v1[29] = v131;
  v132 = v225;
  sub_26761A4EC();
  v133 = sub_2676CC68C();
  if (v134)
  {
    v135 = v133;
  }

  else
  {
    v135 = 0;
  }

  if (v134)
  {
    v136 = v134;
  }

  else
  {
    v136 = 0xE000000000000000;
  }

  sub_2676011FC(v132);
  v1[30] = v135;
  v1[31] = v136;
  v137 = v226;
  sub_26761A48C();
  v138 = sub_2676CC68C();
  if (v139)
  {
    v140 = v138;
  }

  else
  {
    v140 = 0;
  }

  if (v139)
  {
    v141 = v139;
  }

  else
  {
    v141 = 0xE000000000000000;
  }

  sub_2676011FC(v137);
  v1[32] = v140;
  v1[33] = v141;
  v142 = v227;
  sub_2676CB3AC();
  v143 = sub_2676CC68C();
  if (v144)
  {
    v145 = v143;
  }

  else
  {
    v145 = 0;
  }

  if (v144)
  {
    v146 = v144;
  }

  else
  {
    v146 = 0xE000000000000000;
  }

  sub_2676011FC(v142);
  v1[34] = v145;
  v1[35] = v146;
  v147 = v228;
  sub_2676CB3AC();
  v148 = sub_2676CC68C();
  if (v149)
  {
    v150 = v148;
  }

  else
  {
    v150 = 0;
  }

  if (v149)
  {
    v151 = v149;
  }

  else
  {
    v151 = 0xE000000000000000;
  }

  sub_2676011FC(v147);
  v1[36] = v150;
  v1[37] = v151;
  v152 = v229;
  sub_26761A4AC();
  v153 = sub_2676CC68C();
  if (v154)
  {
    v155 = v153;
  }

  else
  {
    v155 = 0;
  }

  if (v154)
  {
    v156 = v154;
  }

  else
  {
    v156 = 0xE000000000000000;
  }

  sub_2676011FC(v152);
  v1[38] = v155;
  v1[39] = v156;
  v157 = v230;
  sub_26761A4CC();
  v158 = sub_2676CC68C();
  if (v159)
  {
    v160 = v158;
  }

  else
  {
    v160 = 0;
  }

  if (v159)
  {
    v161 = v159;
  }

  else
  {
    v161 = 0xE000000000000000;
  }

  sub_2676011FC(v157);
  v1[40] = v160;
  v1[41] = v161;
  v162 = v231;
  sub_2676CB3AC();
  v163 = sub_2676CC68C();
  if (v164)
  {
    v165 = v163;
  }

  else
  {
    v165 = 0;
  }

  if (v164)
  {
    v166 = v164;
  }

  else
  {
    v166 = 0xE000000000000000;
  }

  sub_2676011FC(v162);
  v1[42] = v165;
  v1[43] = v166;
  v167 = v232;
  sub_26761A50C();
  v168 = sub_2676CC68C();
  if (v169)
  {
    v170 = v168;
  }

  else
  {
    v170 = 0;
  }

  if (v169)
  {
    v171 = v169;
  }

  else
  {
    v171 = 0xE000000000000000;
  }

  sub_2676011FC(v167);
  v1[44] = v170;
  v1[45] = v171;
  v172 = v233;
  sub_2676CB3AC();
  v173 = sub_2676CC68C();
  if (v174)
  {
    v175 = v173;
  }

  else
  {
    v175 = 0;
  }

  if (v174)
  {
    v176 = v174;
  }

  else
  {
    v176 = 0xE000000000000000;
  }

  sub_2676011FC(v172);
  v1[46] = v175;
  v1[47] = v176;
  v177 = v234;
  sub_26761A52C();
  v178 = sub_2676CC68C();
  if (v179)
  {
    v180 = v178;
  }

  else
  {
    v180 = 0;
  }

  if (v179)
  {
    v181 = v179;
  }

  else
  {
    v181 = 0xE000000000000000;
  }

  sub_2676011FC(v177);
  v1[48] = v180;
  v1[49] = v181;
  v182 = v235;
  sub_26761A54C();
  v183 = sub_2676CC68C();
  if (v184)
  {
    v185 = v183;
  }

  else
  {
    v185 = 0;
  }

  if (v184)
  {
    v186 = v184;
  }

  else
  {
    v186 = 0xE000000000000000;
  }

  sub_2676011FC(v182);
  v1[50] = v185;
  v1[51] = v186;
  v187 = v236;
  sub_2676CB3AC();
  v188 = sub_2676CC68C();
  if (v189)
  {
    v190 = v188;
  }

  else
  {
    v190 = 0;
  }

  if (v189)
  {
    v191 = v189;
  }

  else
  {
    v191 = 0xE000000000000000;
  }

  sub_2676011FC(v187);
  v1[52] = v190;
  v1[53] = v191;
  v192 = v237;
  sub_26761A58C();
  v193 = sub_2676CC68C();
  if (v194)
  {
    v195 = v193;
  }

  else
  {
    v195 = 0;
  }

  if (v194)
  {
    v196 = v194;
  }

  else
  {
    v196 = 0xE000000000000000;
  }

  sub_2676011FC(v192);
  v1[54] = v195;
  v1[55] = v196;
  v197 = v238;
  sub_26761A56C();
  v198 = sub_2676CC68C();
  if (v199)
  {
    v200 = v198;
  }

  else
  {
    v200 = 0;
  }

  if (v199)
  {
    v201 = v199;
  }

  else
  {
    v201 = 0xE000000000000000;
  }

  sub_2676011FC(v197);
  v1[56] = v200;
  v1[57] = v201;
  v202 = v239;
  sub_26761A5AC();
  v203 = sub_2676CC68C();
  if (v204)
  {
    v205 = v203;
  }

  else
  {
    v205 = 0;
  }

  if (v204)
  {
    v206 = v204;
  }

  else
  {
    v206 = 0xE000000000000000;
  }

  sub_2676011FC(v202);
  v1[58] = v205;
  v1[59] = v206;
  if (qword_2801CBAA8 != -1)
  {
    swift_once();
  }

  v207 = qword_2801D3F18;
  v208 = v241;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v209 = v208 + *(v240 + 20);
  *v209 = "UILabelsInit";
  *(v209 + 8) = 12;
  *(v209 + 16) = 2;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v210 = sub_2676CBE4C();
  __swift_project_value_buffer(v210, qword_2801CDC90);
  v211 = sub_2676CBE2C();
  v212 = sub_2676CC23C();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&dword_2675D4000, v211, v212, "#UILabels initialized now", v213, 2u);
    MEMORY[0x26D5FEA80](v213, -1, -1);
  }

  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v208);
  return v1;
}

uint64_t Result<>.dialog.getter(uint64_t a1)
{
  result = sub_2676CC68C();
  if (!v2)
  {
    return 0;
  }

  return result;
}

void *sub_2676010A4()
{

  return v0;
}

uint64_t sub_2676011A4()
{
  sub_2676010A4();

  return MEMORY[0x2821FE8D8](v0, 480, 7);
}

uint64_t sub_2676011FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MailAddresseePrototype.from(name:email:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v19 = a3;
  v6 = sub_2676C89DC();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  v17 = sub_2676C8C8C();
  sub_2676C89CC();
  sub_267609608(&qword_2801CC1A0, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2D8]);
  sub_2676C899C();
  (*(v8 + 8))(v12, v6);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_2675E35CC(v16, &qword_2801CBFE8, &unk_2676CD9E0);

    sub_2676C8C0C();
  }

  else
  {
    (*(*(v17 - 8) + 32))(a5, v16, v17);

    sub_2676C8C2C();

    sub_2676C8C5C();
  }

  return sub_2676C8C3C();
}

id sub_267601604()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_2801D3CD8 = result;
  return result;
}

uint64_t sub_267601638()
{
  sub_2676CBDEC();
  result = sub_2676CBDDC();
  qword_2801D3CE0 = result;
  return result;
}

uint64_t LinkServicesProvider.markMessageAsRead(message:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[7] = v1;
  v2 = sub_2676C89DC();
  v0[8] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[9] = v3;
  v0[10] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C8BFC();
  v0[11] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C8DAC();
  v0[14] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[15] = v7;
  v0[16] = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676017AC()
{
  OUTLINED_FUNCTION_12_1();
  (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
  v1 = sub_2676C8D9C();
  OUTLINED_FUNCTION_66(v1, 0x80000002676D6080);
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = sub_267609608(&qword_2801CC450, MEMORY[0x277CBA4C0], MEMORY[0x277CBA4B8]);
  *v2 = v0;
  v2[1] = sub_2676018F0;
  v4 = v0[14];
  v5 = v0[10];

  return MEMORY[0x28210B3C8](v0 + 2, v5, 0xD000000000000014, 0x80000002676D6780, v4, v3);
}

uint64_t sub_2676018F0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v10 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  v11 = OUTLINED_FUNCTION_45();
  v12(v11);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267601AA8()
{
  OUTLINED_FUNCTION_12_1();
  sub_2675E5E30(0, &qword_2801CC458, 0x277D23CA8);
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_17_6();

  return v2(v1);
}

uint64_t sub_267601B70()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_17_6();

  return v0(0);
}

uint64_t LinkServicesProvider.performSendMail(intent:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_2676C89DC();
  v0[9] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[10] = v4;
  v0[11] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C8D8C();
  v0[12] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267601CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_44();
  a18 = v20;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v24 = v20[13];
  v23 = v20[14];
  v25 = v20[12];
  v26 = v20[8];
  v27 = sub_2676CBE4C();
  v28 = __swift_project_value_buffer(v27, qword_2801CDC90);
  (*(v24 + 16))(v23, v26, v25);
  v29 = sub_2676CBE2C();
  LOBYTE(v26) = sub_2676CC23C();
  v30 = os_log_type_enabled(v29, v26);
  v32 = v20[13];
  v31 = v20[14];
  v33 = v20[12];
  if (v30)
  {
    OUTLINED_FUNCTION_5_3();
    v34 = OUTLINED_FUNCTION_36_0();
    a9 = v34;
    *v28 = 136315138;
    v35 = SendMailIntentPrototype.debugDescription.getter();
    v37 = v36;
    (*(v32 + 8))(v31, v33);
    v38 = sub_2676B0B84(v35, v37, &a9);

    *(v28 + 4) = v38;
    OUTLINED_FUNCTION_65(&dword_2675D4000, v39, v40, "#LinkServicesProvider.performSendMail: performing SendMail intent %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  else
  {

    v41 = (*(v32 + 8))(v31, v33);
  }

  OUTLINED_FUNCTION_66(v41, 0x80000002676D6080);
  v42 = swift_task_alloc();
  v20[15] = v42;
  sub_267609608(&qword_2801CC460, MEMORY[0x277CBA350], MEMORY[0x277CBA348]);
  *v42 = v20;
  v42[1] = sub_267601F18;
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x28210B3C8](v43, v44, v45, v46, v47, v48);
}

uint64_t sub_267601F18()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v6 + 128) = v0;

  v7 = OUTLINED_FUNCTION_45();
  v8(v7);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26760206C()
{
  OUTLINED_FUNCTION_3_0();
  sub_2675E5E30(0, &qword_2801CC458, 0x277D23CA8);
  swift_dynamicCast();
  v1 = *(v0 + 48);
  v2 = [v1 output];

  v3 = *(v0 + 56);
  *v3 = v2;
  *(v3 + 8) = 0;

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_267602138()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 128);
  *(v1 + 8) = 1;

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t LinkServicesProvider.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 427) = v3;
  *(v0 + 426) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC468, &qword_2676CEF28);
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_1_0(v7);
  *(v0 + 72) = v8;
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC470, &qword_2676CEF30);
  *(v0 + 88) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  *(v0 + 96) = v10;
  *(v0 + 104) = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C89DC();
  *(v0 + 112) = v11;
  OUTLINED_FUNCTION_1_0(v11);
  *(v0 + 120) = v12;
  *(v0 + 128) = OUTLINED_FUNCTION_2_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC478, &qword_2676CEF38);
  *(v0 + 136) = v13;
  OUTLINED_FUNCTION_1_0(v13);
  *(v0 + 144) = v14;
  *(v0 + 152) = OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v15);
  *(v0 + 160) = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676C8C8C();
  *(v0 + 168) = v16;
  OUTLINED_FUNCTION_1_0(v16);
  *(v0 + 176) = v17;
  *(v0 + 184) = OUTLINED_FUNCTION_19();
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_4_1(v18);
  *(v0 + 208) = OUTLINED_FUNCTION_19();
  *(v0 + 216) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  OUTLINED_FUNCTION_4_1(v19);
  *(v0 + 224) = OUTLINED_FUNCTION_19();
  *(v0 + 232) = swift_task_alloc();
  v20 = sub_2676C90CC();
  *(v0 + 240) = v20;
  OUTLINED_FUNCTION_1_0(v20);
  *(v0 + 248) = v21;
  *(v0 + 256) = OUTLINED_FUNCTION_19();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();
  *(v0 + 280) = swift_task_alloc();
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC480, &qword_2676CEF50);
  *(v0 + 304) = v22;
  OUTLINED_FUNCTION_1_0(v22);
  *(v0 + 312) = v23;
  *(v0 + 320) = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC488, &unk_2676CEF58);
  *(v0 + 328) = v24;
  OUTLINED_FUNCTION_1_0(v24);
  *(v0 + 336) = v25;
  *(v0 + 344) = OUTLINED_FUNCTION_19();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  *(v0 + 376) = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2676025D0()
{
  v213 = v0;
  v2 = &off_2676CD000;
  if (*(v0 + 40))
  {
    v3 = qword_2801CBAA0;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v4 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v4, qword_2801CDC90);

    v5 = sub_2676CBE2C();
    v6 = sub_2676CC23C();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_5_3();
      v7 = OUTLINED_FUNCTION_36_0();
      v212 = v7;
      *v1 = 136315138;
      v8 = objc_opt_self();
      v9 = sub_2676CBF3C();
      v10 = [v8 ec:v9 partiallyRedactedStringForSubjectOrSummary:?];

      v11 = sub_2676CBF6C();
      v13 = v12;

      v14 = sub_2676B0B84(v11, v13, &v212);

      *(v1 + 4) = v14;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_19_2();
    }

    v21 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 304);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);
    swift_getKeyPath();
    (*(v21 + 104))(v20, *MEMORY[0x277CBA020], v22);
    *(v0 + 16) = v24;
    *(v0 + 24) = v23;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v25, v26, MEMORY[0x277CBA200]);
    sub_2676C89FC();
    v27 = sub_26760735C(0, 1, 1, MEMORY[0x277D84F90]);
    v28 = v27[3];
    if (v27[2] >= v28 >> 1)
    {
      v27 = OUTLINED_FUNCTION_41((v28 > 1));
    }

    v29 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v30(v29);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  sub_267607B28(*(v0 + 56), *(v0 + 216), &qword_2801CC380, &unk_2676CEF40);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  v32 = OUTLINED_FUNCTION_57();
  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v35 = *(v0 + 216);
  if (v32 == 1)
  {
    sub_2675E35CC(*(v0 + 216), &qword_2801CC380, &unk_2676CEF40);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v33);
LABEL_13:
    v37 = *(v0 + 232);
LABEL_14:
    sub_2675E35CC(v37, &qword_2801CC210, &qword_2676CEDC0);
    goto LABEL_15;
  }

  v36 = *(v31 + 48);
  sub_2675F2D78(*(v0 + 216), *(v0 + 232));
  sub_2675E35CC(v35 + v36, &qword_2801CC210, &qword_2676CEDC0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
  {
    goto LABEL_13;
  }

  v62 = *(v0 + 208);
  v63 = *(v0 + 56);
  v64 = *(*(v0 + 248) + 32);
  v64(*(v0 + 296), *(v0 + 232), *(v0 + 240));
  sub_267607B28(v63, v62, &qword_2801CC380, &unk_2676CEF40);
  if (OUTLINED_FUNCTION_57() == 1)
  {
    v65 = *(v0 + 240);
    v66 = *(v0 + 224);
    v34 = *(v0 + 208);
    (*(*(v0 + 248) + 8))(*(v0 + 296), v65);
    sub_2675E35CC(v34, &qword_2801CC380, &unk_2676CEF40);
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
LABEL_65:
    v37 = *(v0 + 224);
    goto LABEL_14;
  }

  v144 = *(v0 + 240);
  v34 = *(v0 + 224);
  v145 = *(v0 + 208);
  sub_2675F2D78(v145 + *(v31 + 48), v34);
  sub_2675E35CC(v145, &qword_2801CC210, &qword_2676CEDC0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v144) == 1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 296), *(v0 + 240));
    goto LABEL_65;
  }

  v211 = v27;
  v64(*(v0 + 288), *(v0 + 224), *(v0 + 240));
  OUTLINED_FUNCTION_54();
  if (!v38)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v147 = *(v0 + 288);
  v146 = *(v0 + 296);
  v149 = *(v0 + 272);
  v148 = *(v0 + 280);
  v151 = *(v0 + 240);
  v150 = *(v0 + 248);
  v152 = sub_2676CBE4C();
  __swift_project_value_buffer(v152, qword_2801CDC90);
  v153 = *(v150 + 16);
  v153(v148, v146, v151);
  v208 = v153;
  v153(v149, v147, v151);
  v154 = sub_2676CBE2C();
  v155 = sub_2676CC23C();
  v156 = os_log_type_enabled(v154, v155);
  v158 = *(v0 + 272);
  v157 = *(v0 + 280);
  v160 = *(v0 + 240);
  v159 = *(v0 + 248);
  if (v156)
  {
    v199 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    *v199 = 136315394;
    sub_267609608(&qword_2801CC4A8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v161 = sub_2676CC56C();
    log = v154;
    v163 = v162;
    v164 = *(v159 + 8);
    v164(v157, v160);
    v165 = sub_2676B0B84(v161, v163, &v212);

    *(v199 + 4) = v165;
    *(v199 + 12) = 2080;
    v166 = sub_2676CC56C();
    v168 = v167;
    v169 = OUTLINED_FUNCTION_61();
    v205 = v164;
    (v164)(v169);
    v170 = sub_2676B0B84(v166, v168, &v212);

    *(v199 + 14) = v170;
    _os_log_impl(&dword_2675D4000, log, v155, "#LinkServicesProvider.performGetMail: getting mail for date range: %s - %s", v199, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v171 = *(v159 + 8);
    v171(v158, v160);
    v205 = v171;
    v171(v157, v160);
  }

  v173 = *(v0 + 288);
  v172 = *(v0 + 296);
  v175 = *(v0 + 256);
  v174 = *(v0 + 264);
  v176 = *(v0 + 240);
  swift_getKeyPath();
  v208(v174, v172, v176);
  v208(v175, v173, v176);
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v177, v178, MEMORY[0x277CBA200]);
  sub_2676C89EC();
  v179 = v211;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = OUTLINED_FUNCTION_18_4();
    v179 = sub_26760735C(v195, v196, v197, v211);
  }

  v181 = v179[2];
  v180 = v179[3];
  if (v181 >= v180 >> 1)
  {
    v179 = sub_26760735C((v180 > 1), v181 + 1, 1, v179);
  }

  v182 = *(v0 + 368);
  v34 = *(v0 + 328);
  v183 = *(v0 + 336);
  v184 = *(v0 + 296);
  v185 = *(v0 + 240);
  v205(*(v0 + 288), v185);
  v205(v184, v185);
  v27 = v179;
  v179[2] = v181 + 1;
  (*(v183 + 32))(v179 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v181, v182, v34);
  v2 = &off_2676CD000;
LABEL_15:
  sub_267607B28(*(v0 + 48), *(v0 + 160), &qword_2801CBFE8, &unk_2676CD9E0);
  if (OUTLINED_FUNCTION_57() == 1)
  {
    sub_2675E35CC(*(v0 + 160), &qword_2801CBFE8, &unk_2676CD9E0);
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 200), *(v0 + 160), *(v0 + 168));
    OUTLINED_FUNCTION_54();
    if (!v38)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v209 = v27;
    v40 = *(v0 + 192);
    v39 = *(v0 + 200);
    v42 = *(v0 + 168);
    v41 = *(v0 + 176);
    v43 = sub_2676CBE4C();
    __swift_project_value_buffer(v43, qword_2801CDC90);
    v45 = *(v41 + 16);
    v44 = v41 + 16;
    v206 = v45;
    v45(v40, v39, v42);
    v46 = sub_2676CBE2C();
    v47 = sub_2676CC23C();
    v48 = OUTLINED_FUNCTION_35_0(v47);
    v49 = *(v0 + 192);
    if (v48)
    {
      v50 = *(v0 + 176);
      v51 = *(v0 + 184);
      v52 = *(v0 + 168);
      OUTLINED_FUNCTION_5_3();
      v201 = OUTLINED_FUNCTION_36_0();
      v212 = v201;
      *v42 = *(v2 + 420);
      v206(v51, v49, v52);
      v53 = sub_2676CBFBC();
      v55 = v54;
      v203 = *(v50 + 8);
      v203(v49, v52);
      v56 = sub_2676B0B84(v53, v55, &v212);

      *(v42 + 4) = v56;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v201);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_19_2();
    }

    else
    {
      v67 = *(v0 + 168);
      v68 = *(v0 + 176);

      v203 = *(v68 + 8);
      v203(v49, v67);
    }

    v69 = *(v0 + 360);
    v71 = *(v0 + 312);
    v70 = *(v0 + 320);
    v72 = *(v0 + 304);
    v73 = *(v0 + 200);
    v74 = *(v0 + 184);
    v75 = *(v0 + 168);
    swift_getKeyPath();
    (*(v71 + 104))(v70, *MEMORY[0x277CBA020], v72);
    v206(v74, v73, v75);
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v76, v77, MEMORY[0x277CBA200]);
    sub_2676C89FC();
    v27 = v209;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = OUTLINED_FUNCTION_18_4();
      v27 = sub_26760735C(v186, v187, v188, v209);
    }

    v2 = &off_2676CD000;
    OUTLINED_FUNCTION_51();
    if (v79)
    {
      v27 = OUTLINED_FUNCTION_41((v78 > 1));
    }

    v80 = *(v0 + 360);
    v34 = *(v0 + 328);
    v81 = *(v0 + 336);
    v203(*(v0 + 200), *(v0 + 168));
    v27[2] = v69;
    (*(v81 + 32))(v27 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v44, v80, v34);
  }

  v82 = *(v0 + 426);
  if (v82 != 2)
  {
    OUTLINED_FUNCTION_54();
    if (!v38)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v83 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v83, qword_2801CDC90);
    v84 = sub_2676CBE2C();
    v85 = sub_2676CC23C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_5_3();
      v87 = swift_slowAlloc();
      v212 = v87;
      *v86 = *(v2 + 420);
      if (v82)
      {
        v88 = 1684104562;
      }

      else
      {
        v88 = 0x646165726E75;
      }

      if (v82)
      {
        v89 = 0xE400000000000000;
      }

      else
      {
        v89 = 0xE600000000000000;
      }

      v90 = sub_2676B0B84(v88, v89, &v212);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_2675D4000, v84, v85, "#LinkServicesProvider.performGetMail: getting %s mail", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    v91 = *(v0 + 312);
    v92 = *(v0 + 320);
    v34 = *(v0 + 304);
    v93 = *(v0 + 426);
    swift_getKeyPath();
    (*(v91 + 104))(v92, *MEMORY[0x277CBA020], v34);
    *(v0 + 425) = v93 & 1;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v94, v95, MEMORY[0x277CBA200]);
    sub_2676C89FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = OUTLINED_FUNCTION_18_4();
      v27 = sub_26760735C(v189, v190, v191, v27);
    }

    OUTLINED_FUNCTION_51();
    if (v79)
    {
      v27 = OUTLINED_FUNCTION_41((v96 > 1));
    }

    v97 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v98(v97);
  }

  v99 = *(v0 + 427);
  if (v99 != 2 && (v99 & 1) != 0)
  {
    OUTLINED_FUNCTION_54();
    if (!v38)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v100 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v100, qword_2801CDC90);
    v101 = sub_2676CBE2C();
    v102 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v102))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v103, v104, v105, v106, v107, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v108 = *(v0 + 312);
    v34 = *(v0 + 320);
    v109 = *(v0 + 304);

    swift_getKeyPath();
    (*(v108 + 104))(v34, *MEMORY[0x277CBA020], v109);
    *(v0 + 424) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_267609608(v110, v111, MEMORY[0x277CBA200]);
    sub_2676C89FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = OUTLINED_FUNCTION_18_4();
      v27 = sub_26760735C(v192, v193, v194, v27);
    }

    OUTLINED_FUNCTION_51();
    if (v79)
    {
      v27 = OUTLINED_FUNCTION_41((v112 > 1));
    }

    v113 = OUTLINED_FUNCTION_9_6(*(v0 + 336));
    v114(v113);
  }

  *(v0 + 384) = v27;
  OUTLINED_FUNCTION_54();
  if (!v38)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v115 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v115, qword_2801CDC90);
  v116 = sub_2676CBE2C();
  v117 = sub_2676CC23C();
  v210 = v27;
  if (OUTLINED_FUNCTION_35_0(v117))
  {
    v118 = *(v0 + 328);
    OUTLINED_FUNCTION_5_3();
    v119 = OUTLINED_FUNCTION_36_0();
    v212 = v119;
    *v34 = *(v2 + 420);

    MEMORY[0x26D5FDDD0](v120, v118);

    v121 = OUTLINED_FUNCTION_61();
    v124 = sub_2676B0B84(v121, v122, v123);

    *(v34 + 4) = v124;
    OUTLINED_FUNCTION_12_3();
    _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  v130 = *(v0 + 120);
  v131 = *(v0 + 128);
  v132 = *(v0 + 112);
  v134 = *(v0 + 88);
  v133 = *(v0 + 96);
  v135 = *(v0 + 72);
  v202 = *(v0 + 104);
  v204 = *(v0 + 80);
  v207 = *(v0 + 64);
  v136 = sub_2676C8BFC();
  OUTLINED_FUNCTION_66(v136, 0x80000002676D6080);
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v137, v138, MEMORY[0x277CBA200]);
  OUTLINED_FUNCTION_39();
  sub_2676C89AC();
  (*(v130 + 8))(v131, v132);
  (*(v133 + 104))(v202, *MEMORY[0x277CBA018], v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC498, &qword_2676CEF68);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4A0, &qword_2676CEF70);
  OUTLINED_FUNCTION_1_0(v139);
  v140 = swift_allocObject();
  *(v0 + 392) = v140;
  *(v140 + 16) = xmmword_2676CDE20;
  swift_getKeyPath();
  (*(v135 + 104))(v204, *MEMORY[0x277CBA040], v207);

  sub_2676C8A0C();
  v141 = swift_task_alloc();
  *(v0 + 400) = v141;
  *v141 = v0;
  v141[1] = sub_26760374C;
  v142 = *(v0 + 136);
  v143 = *(v0 + 104);

  return MEMORY[0x28210BD80](v210, v143, 0, 1, v140, v142);
}

uint64_t sub_26760374C(uint64_t a1)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v3 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v7 = v6;
  *(v9 + 408) = v8;
  *(v9 + 416) = v1;

  v10 = v3[19];
  v11 = v3[18];
  v12 = v3[17];
  v13 = v3[13];
  v14 = v3[12];
  v15 = v3[11];

  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26760393C()
{
  v9 = v0;
  if (qword_2801CBA80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = qword_2801D3CD8;
  v4 = sub_26760A344(v3, v1);

  v8 = v4;

  sub_267607B90(&v8);
  if (v2)
  {
  }

  else
  {

    v6 = v8;

    OUTLINED_FUNCTION_17_6();

    return v7(v6);
  }
}

uint64_t sub_267603B9C()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t LinkServicesProvider.performGetMail(identifiers:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C89DC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC478, &qword_2676CEF38);
  v0[6] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_2_0();
  v6 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_4_1(v6);
  v0[10] = OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267603E54()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_27_2(&qword_2801CBAA8);
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  v14 = v0[3];
  v5 = qword_2801D3F18;
  v0[11] = qword_2801D3F18;
  v5;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v6 = v1 + *(v2 + 20);
  *v6 = "FetchMailMessages";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = sub_2676C8BFC();
  OUTLINED_FUNCTION_66(v7, 0x80000002676D6080);
  OUTLINED_FUNCTION_0_11();
  sub_267609608(v8, v9, MEMORY[0x277CBA200]);
  OUTLINED_FUNCTION_39();
  sub_2676C89AC();
  (*(v4 + 8))(v3, v14);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_267604008;
  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x28210BD78](v11);
}

uint64_t sub_267604008()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *v6 = *v1;
  v5[13] = v0;

  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  if (!v0)
  {
    v5[14] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267604180()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 80);
  v2 = sub_2676CC28C();
  OUTLINED_FUNCTION_23_4(v2, &dword_2675D4000, v3, "FetchMailMessages");
  sub_2675DE628(v1);

  OUTLINED_FUNCTION_17_6();
  v5 = *(v0 + 112);

  return v4(v5);
}

uint64_t sub_267604224()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 80);
  v2 = sub_2676CC28C();
  OUTLINED_FUNCTION_23_4(v2, &dword_2675D4000, v3, "FetchMailMessages");
  sub_2675DE628(v1);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t LinkServicesProvider.deleteMessage(message:)()
{
  OUTLINED_FUNCTION_3_0();
  v0[11] = v1;
  v2 = sub_2676CBCCC();
  v0[12] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[13] = v3;
  v0[14] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4B0, &qword_2676CF078);
  v0[15] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[16] = v5;
  v0[17] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CBD7C();
  v0[18] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4B8, &qword_2676CF080);
  v0[21] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_2_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4C0, &qword_2676CF088);
  v0[24] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v0[25] = v11;
  v0[26] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676C924C();
  v0[27] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[28] = v13;
  v0[29] = OUTLINED_FUNCTION_2_0();
  v14 = sub_2676C8DDC();
  v0[30] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[31] = v15;
  v0[32] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676CBCFC();
  v0[33] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v0[34] = v17;
  v0[35] = OUTLINED_FUNCTION_2_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4C8, &unk_2676CF090);
  OUTLINED_FUNCTION_4_1(v18);
  v0[36] = OUTLINED_FUNCTION_2_0();
  v19 = sub_2676CBD2C();
  v0[37] = v19;
  OUTLINED_FUNCTION_1_0(v19);
  v0[38] = v20;
  v0[39] = OUTLINED_FUNCTION_2_0();
  v21 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_267604618()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[31];
  v47 = v0[37];
  v48 = v0[30];
  v46 = v0[33];
  v7 = [objc_opt_self() defaultEnvironment];
  v8 = sub_2675E5E30(0, &qword_2801CC4D0, 0x277D23C08);
  v9 = MEMORY[0x277CEB188];
  v0[5] = v8;
  v0[6] = v9;
  v0[2] = v7;
  sub_2676CBCEC();
  (*(v3 + 104))(v4, *MEMORY[0x277CEB068], v46);
  OUTLINED_FUNCTION_45();
  sub_2676CBD1C();
  v10 = sub_2676CBD0C();
  v12 = v11;
  v0[40] = v10;
  v0[41] = v11;
  (*(v2 + 8))(v1, v47);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v0[7] = sub_2676C8ABC();
  v0[8] = v13;
  sub_2676C8DBC();
  sub_2675E69E4();
  v14 = sub_2676CC30C();
  (*(v6 + 8))(v5, v48);

  if (*(v14 + 16) == 2 && (sub_2676052B4(v14), v16 = v15, , , v16))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v17 = sub_2676CBE4C();
    v0[42] = __swift_project_value_buffer(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_17_3();
      *v20 = 0;
      _os_log_impl(&dword_2675D4000, v18, v19, "#DeleteMessage Deleting message now...", v20, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];

    v24 = *MEMORY[0x277CCA1A0];
    sub_2676C91FC();
    v25 = sub_2676C921C();
    v27 = v26;
    (*(v22 + 8))(v21, v23);
    v28 = type metadata accessor for MailMessageEntity(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2676CDE20;
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
    v30 = sub_267609608(&qword_2801CC4D8, type metadata accessor for MailMessageEntity, &unk_2676CE3A8);
    sub_2676CBB8C();

    ObjectType = swift_getObjectType();
    v0[43] = ObjectType;
    sub_2676052FC();
    v32 = swift_task_alloc();
    v0[44] = v32;
    *v32 = v0;
    v32[1] = sub_267604B58;
    v33 = v0[26];
    v34 = v0[23];
    v35 = v0[20];

    return MEMORY[0x28213DA88](v34, v33, v35, ObjectType, v28, v12, v30);
  }

  else
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v36 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v36, qword_2801CDC90);
    v37 = sub_2676CBE2C();
    v38 = sub_2676CC24C();
    if (OUTLINED_FUNCTION_35_0(v38))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_34_0();

    OUTLINED_FUNCTION_17_6();

    return v44(0);
  }
}

uint64_t sub_267604B58()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v6 + 360) = v0;

  v7 = OUTLINED_FUNCTION_45();
  v8(v7);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267604CAC()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = sub_2676CBC6C();
  (*(v2 + 8))(v1, v3);
  v0[9] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4E0, &qword_2676CF0A0);
  swift_allocObject();
  v5 = sub_2676CBD4C();
  v0[46] = v5;
  v0[10] = v5;
  sub_267607C38();
  OUTLINED_FUNCTION_55();
  sub_267605394();
  OUTLINED_FUNCTION_55();
  v6 = sub_2676054CC();
  v8 = v7;
  v0[47] = v6;
  v9 = swift_task_alloc();
  v0[48] = v9;
  *v9 = v0;
  v9[1] = sub_267604E30;
  v10 = v0[43];
  v11 = v0[41];
  v12 = v0[17];
  v13 = v0[14];

  return MEMORY[0x28213DAA0](v12, v0 + 10, v13, v6, v8, v10, &type metadata for DeleteMessageIntent, v11);
}

uint64_t sub_267604E30()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[49] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v3[16];
    v7 = v3[17];
    v10 = v3[14];
    v9 = v3[15];
    v13 = v3 + 12;
    v11 = v3[12];
    v12 = v13[1];
    swift_unknownObjectRelease();
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267604FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v12 = sub_2676CBE2C();
  v13 = sub_2676CC23C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_17_3();
    *v14 = 0;
    _os_log_impl(&dword_2675D4000, v12, v13, "#DeleteMessage ✅ Delete Message succeeded!", v14, 2u);
    OUTLINED_FUNCTION_2_5();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v15 = OUTLINED_FUNCTION_45();
  v16(v15);
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2676050FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v14 = v12[25];
  v13 = v12[26];
  v15 = v12[24];
  swift_unknownObjectRelease();
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_28_1();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_2676051D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  swift_unknownObjectRelease();
  v12 = OUTLINED_FUNCTION_45();
  v13(v12);

  OUTLINED_FUNCTION_28_1();

  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_1();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2676052B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_2676052FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC560, &qword_2676CF2C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_2676CBDBC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_2676CBD6C();
}

uint64_t sub_267605394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC558, &qword_2676CF2C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC560, &qword_2676CF2C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2676CBDBC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_2676CBD5C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_2676CBCBC();
  return sub_2676CBCAC();
}

uint64_t sub_2676054CC()
{
  sub_2676CBBAC();
  swift_allocObject();
  return sub_2676CBB9C();
}

uint64_t LinkServicesProvider.resolveMailViewEntities()()
{
  OUTLINED_FUNCTION_3_0();
  v1 = type metadata accessor for Signpost.OpenSignpost(0);
  *(v0 + 48) = v1;
  OUTLINED_FUNCTION_4_1(v1);
  *(v0 + 56) = OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267605584()
{
  OUTLINED_FUNCTION_16_2();
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_27_2(&qword_2801CBAA8);
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = qword_2801D3F18;
  v0[8] = qword_2801D3F18;
  v4 = v3;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v5 = v1 + *(v2 + 20);
  *v5 = "FetchViewEntities";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  if (qword_2801CBA88 != -1)
  {
    swift_once();
  }

  v6 = sub_2676598DC();
  v0[9] = v6;
  if (*(v6 + 16))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v7 = sub_2676CBE4C();
    v0[10] = OUTLINED_FUNCTION_24_2(v7, qword_2801CDC90);

    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_5_3();
      *v10 = 134217984;
      *(v10 + 4) = *(v6 + 16);

      _os_log_impl(&dword_2675D4000, v8, v9, "#ViewEntities Fetching MailMessagePrototype entities from %ld MailMessageEntity(s) in the view onscreen", v10, 0xCu);
      OUTLINED_FUNCTION_19_2();
    }

    else
    {
    }

    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_2676058A8;

    return LinkServicesProvider.performGetMail(identifiers:)();
  }

  else
  {

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v11 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v11, qword_2801CDC90);
    v12 = sub_2676CBE2C();
    v13 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v13))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_12_3();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    sub_2676CC28C();
    sub_2676CBDFC();
    sub_2675DE628(v0[7]);

    OUTLINED_FUNCTION_17_6();
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_2676058A8()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v5 = v4;
  OUTLINED_FUNCTION_8_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2676059DC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = sub_2676CC28C();
  OUTLINED_FUNCTION_23_4(v1, &dword_2675D4000, v2, "FetchViewEntities");
  v3 = *(v0 + 104);
  sub_2675DE628(*(v0 + 56));

  OUTLINED_FUNCTION_17_6();

  return v4(v3);
}

uint64_t sub_267605A64()
{
  OUTLINED_FUNCTION_62();
  v17 = v0;
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC24C();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_5_3();
    v5 = OUTLINED_FUNCTION_36_0();
    v16 = v5;
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_2676CC5FC();
    v8 = sub_2676B0B84(v6, v7, &v16);

    *(v1 + 1) = v8;
    OUTLINED_FUNCTION_65(&dword_2675D4000, v9, v10, "#ViewEntities Failed to resolve view entities: %s");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_19_2();
  }

  v11 = sub_2676CC28C();
  OUTLINED_FUNCTION_23_4(v11, &dword_2675D4000, v12, "FetchViewEntities");
  sub_2675DE628(*(v0 + 56));

  OUTLINED_FUNCTION_17_6();
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

uint64_t sub_267605BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267609F60;

  return LinkServicesProvider.markMessageAsRead(message:)();
}

uint64_t sub_267605C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return LinkServicesProvider.performSendMail(intent:)();
}

uint64_t sub_267605CFC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_267605DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605E70;

  return LinkServicesProvider.performGetMail(identifiers:)();
}

uint64_t sub_267605E70()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  OUTLINED_FUNCTION_17_6();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_267605F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267609F5C;

  return LinkServicesProvider.performGetMail(subject:isRead:isNew:fromAddressee:dateTimeRange:)();
}

uint64_t sub_267606028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676060BC;

  return LinkServicesProvider.deleteMessage(message:)();
}

uint64_t sub_2676060BC()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  OUTLINED_FUNCTION_17_6();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_2676061B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26760623C;

  return LinkServicesProvider.resolveMailViewEntities()();
}

uint64_t sub_26760623C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_3();
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_17_6();

  return v5(v2);
}

uint64_t static MailMessagePrototype.< infix(_:_:)()
{
  v0 = sub_2676C90CC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v9 = sub_2676C906C();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  return v9 & 1;
}

BOOL sub_267606444()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v7 = sub_2676C906C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_267606570()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v7 = sub_2676C906C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_26760669C()
{
  v0 = sub_2676C90CC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2676C8A7C();
  sub_2676C8A7C();
  v7 = sub_2676C906C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

id MailAddresseePrototype.asPersonAttribute.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
  v1 = sub_2676C8C1C();
  if (v2)
  {
    sub_2675EA76C(v1, v2, v0, &selRef_setDisplayText_);
  }

  v3 = sub_2676C8C4C();
  sub_2675EA76C(v3, v4, v0, &selRef_setData_);
  return v0;
}

uint64_t sub_267606828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC550, &qword_2676CF2B8);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v6 = sub_2676C924C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_2();
  v59 = v11 - v10;
  v60 = sub_2676CBECC();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_2();
  v17 = v16 - v15;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = *(v13 + 16);
  v19 = v13 + 16;
  v20 = v21;
  OUTLINED_FUNCTION_2_12();
  v23 = a1 + v22;
  v24 = *(v19 + 56);
  v53 = (v8 + 8);
  v54 = (v8 + 32);
  v61 = v19 - 8;
  v62 = MEMORY[0x277D84F90];
  v25 = v60;
  v57 = v19;
  v58 = v5;
  v55 = v24;
  v56 = v21;
  do
  {
    v20(v17, v23, v25);
    sub_2676CBEAC();
    sub_2676C923C();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      v26 = OUTLINED_FUNCTION_61();
      v27(v26);
      sub_2675E35CC(v5, &qword_2801CC550, &qword_2676CF2B8);
    }

    else
    {
      v28 = v59;
      (*v54)(v59, v5, v6);
      v63 = sub_2676C920C();
      v64 = v29;

      MEMORY[0x26D5FDD00](37, 0xE100000000000000);

      v30 = v6;
      v31 = v63;
      v32 = v64;
      v33 = sub_2676C922C();
      v35 = v34;
      v63 = v31;
      v64 = v32;
      v6 = v30;

      MEMORY[0x26D5FDD00](v33, v35);

      v36 = sub_2676CC09C();
      v38 = v37;
      v39 = v28;
      v25 = v60;
      (*v53)(v39, v30);
      v40 = OUTLINED_FUNCTION_61();
      v41(v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = OUTLINED_FUNCTION_18_4();
        sub_26760719C(v46, v47, v48, v49);
        v62 = v50;
      }

      v43 = *(v62 + 16);
      v42 = *(v62 + 24);
      v5 = v58;
      if (v43 >= v42 >> 1)
      {
        sub_26760719C(v42 > 1, v43 + 1, 1, v62);
        v62 = v51;
      }

      v44 = v62;
      *(v62 + 16) = v43 + 1;
      v45 = v44 + 16 * v43;
      *(v45 + 32) = v36;
      *(v45 + 40) = v38;
      v20 = v56;
      v24 = v55;
    }

    v23 += v24;
    --v18;
  }

  while (v18);
  return v62;
}

void sub_267606BD8()
{
  OUTLINED_FUNCTION_7_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_24_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26760793C(*(v0 + 16), v4, &qword_2801CC4F8, &unk_2676CF250, &qword_2801CBF78, &qword_2676CDF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_4_7(v7);
    sub_2676C24A0(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606CBC()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC580, &qword_2676CF270);
  OUTLINED_FUNCTION_29_1();
  sub_2676CAB1C();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C24B4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606D84()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC508, &qword_2676CF260);
  OUTLINED_FUNCTION_29_1();
  sub_2676C8C8C();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C2470(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606E4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_47(), v9 == v10))
  {
LABEL_6:
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
      v14 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v14);
      v14[2] = v4;
      v14[3] = 2 * ((v11 - 32) / 8);
      if (v7)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_49();
        sub_2676C24CC(v15, v16, v17);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_58(v11, v12, v13, &type metadata for ContactState);
    goto LABEL_11;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_267606F20()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC520, &unk_2676CF280);
  v8 = OUTLINED_FUNCTION_29_1();
  type metadata accessor for UnresolvedContactInfo(v8);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_7(v9);
    sub_2676C24EC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267606FE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_47(), v9 == v10))
  {
LABEL_6:
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC530, &qword_2676CF298);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 24);
      if (v7)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_49();
        sub_2676C2504(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC538, &unk_2676CF2A0);
    OUTLINED_FUNCTION_58(v16, v17, v18, v16);
    goto LABEL_11;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2676070D4()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC548, &qword_2676CF2B0);
  OUTLINED_FUNCTION_29_1();
  sub_2676CBECC();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C252C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_26760719C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_47(), v9 == v10))
  {
LABEL_6:
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
      v14 = swift_allocObject();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_64();
      v14[2] = v4;
      v14[3] = v15;
      if (v7)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_49();
        sub_2676C2544(v16, v17, v18);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_58(v11, v12, v13, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_50();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_267607264(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC570, &qword_2676CF2D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2676C2544(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26760735C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26760793C(v9, a2, &qword_2801CC568, &qword_2676CF2D0, &qword_2801CC488, &unk_2676CEF58);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC488, &unk_2676CEF58) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_2676C257C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26760747C()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC540, &qword_2676D1400);
  OUTLINED_FUNCTION_29_1();
  sub_2676C94AC();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C25BC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}

void sub_267607544()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_24_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_2801CC578, &qword_2676CF2E8);
  OUTLINED_FUNCTION_29_1();
  sub_2676CA19C();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_12();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_7(v8);
    sub_2676C25D4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
  }
}