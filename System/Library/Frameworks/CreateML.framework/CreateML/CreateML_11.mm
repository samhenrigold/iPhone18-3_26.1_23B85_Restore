uint64_t sub_237AC4360()
{

  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AC43B0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237AC2718(*a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237AC43DC@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  result = sub_237AC2770(*a1, a1[1], a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_237AC442C()
{

  OUTLINED_FUNCTION_18_8();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AC4460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_7_27()
{
  sub_2379DBC9C(*(v0 + 120), *(v0 + 208));
  sub_2379DBC9C(*(v0 + 88), *(v0 + 112));
  sub_2379DBC9C(v1, v2);
}

__n128 OUTLINED_FUNCTION_9_28(__n128 *a1)
{
  result = v1[13];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_10_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  a9 = a11;
  a10 = a12;

  MLUntypedColumn.init(doubles:)(&a9);
}

uint64_t OUTLINED_FUNCTION_23_18(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_24_17()
{

  return sub_2379F21A4(v0 + 288, v1, (v0 + 360));
}

void *sub_237AC4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v8);
  v182 = sub_237C07C8C();
  OUTLINED_FUNCTION_0();
  *&v225 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v11);
  v199 = sub_237C07D0C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v215 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v220 = v17;
  OUTLINED_FUNCTION_41_0();
  v221 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v218 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v219 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v216 = v23;
  OUTLINED_FUNCTION_41_0();
  v172 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v171 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v26);
  v180 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v223 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v29);
  v185 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v34);
  v206 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  v43 = v169 - v42;
  sub_237C07F0C();
  v217 = v43;
  sub_237C07E0C();
  v44 = sub_237AC6348(a1);
  v45 = sub_237B42F98(v44);
  v228 = v45;

  v198 = a3;
  v46 = sub_237AC6418(a2, a3, v45);
  v48 = v47;

  v169[2] = v46;
  v169[1] = v48;
  sub_237B4694C(&v226, v46, v48);

  v49 = *(a1 + 16);
  v201 = v36;
  if (v49)
  {
    v203 = a2;
    v224 = 0;
    v207 = v218 + 16;
    v214 = (v218 + 32);
    v194 = v36 + 16;
    v193 = v36 + 32;
    v191 = v36 + 8;
    v178 = *MEMORY[0x277D251F0];
    v177 = v225 + 104;
    v176 = *MEMORY[0x277D25320];
    v175 = v31 + 104;
    v174 = *MEMORY[0x277D25130];
    v173 = v223 + 104;
    v211 = (v13 + 16);
    v210 = v13 + 8;
    v209 = v218 + 8;
    v208 = v13 + 32;
    v195 = a1;
    v50 = (a1 + 56);
    v192 = xmmword_237C0B660;
    *&v225 = MEMORY[0x277D84F90];
    v205 = MEMORY[0x277D84F90];
    v51 = v13;
    v52 = v199;
    v212 = v31;
    v213 = v51;
    v53 = v216;
    do
    {
      v55 = *(v50 - 3);
      v54 = *(v50 - 2);
      v56 = *(v50 - 1);
      v57 = *v50;

      sub_237A1E09C(v56, v57);
      OUTLINED_FUNCTION_16_16();
      sub_237B991A4(v56, v57, v58);
      v222 = v50 + 32;
      v223 = v49;
      v59 = v224;
      switch(v57)
      {
        case 4uLL:
          OUTLINED_FUNCTION_11_29();
          v108 = OUTLINED_FUNCTION_16_16();
          MEMORY[0x2383DC360](v108);

          v109 = OUTLINED_FUNCTION_23_19();
          v112 = sub_237AC6418(v109, v110, v111);
          v114 = v113;

          sub_237B4694C(&v226, v112, v114);

          v115 = v56[2];

          sub_237C07CFC();
          v61 = __OFADD__(v59, v115);
          v116 = &v59[v115];
          if (v61)
          {
            goto LABEL_42;
          }

          v189 = v112;
          v190 = v114;
          v202 = v54;
          sub_237C07F0C();
          sub_237C07E0C();
          v226 = v56;

          v117 = v200;
          sub_237AE6A58(&v226);
          v60 = &v227;
          v200 = v117;
          if (v117)
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_9_29();
          v118(v181, v178, v182);
          v119 = v179;
          sub_237C07C9C();
          OUTLINED_FUNCTION_9_29();
          v120(v119, v176, v185);
          sub_237C07E4C();
          v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
          v121 = *(v218 + 72);
          v122 = (*(v218 + 80) + 32) & ~*(v218 + 80);
          *(swift_allocObject() + 16) = v192;

          v123 = v186;
          sub_237C0756C();
          OUTLINED_FUNCTION_9_29();
          v124(v123, v174, v180);
          OUTLINED_FUNCTION_13_21();
          sub_237C07B3C();
          sub_237C07E9C();
          v187 = v121;
          v125 = v204;
          *(swift_allocObject() + 16) = v192;

          sub_237C075BC();
          v188 = v122;
          OUTLINED_FUNCTION_13_21();
          sub_237C07B3C();
          sub_237C07ECC();
          OUTLINED_FUNCTION_9_29();
          v126 = OUTLINED_FUNCTION_20_16();
          v127(v126);
          v128 = v205;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_10();
            sub_237BC1568();
            v128 = v155;
          }

          v130 = *(v128 + 16);
          v129 = *(v128 + 24);
          v224 = v116;
          if (v130 >= v129 >> 1)
          {
            sub_237BC1568();
            v128 = v156;
          }

          *(v128 + 16) = v130 + 1;
          OUTLINED_FUNCTION_8_22();
          v205 = v128;
          OUTLINED_FUNCTION_12_24();
          v131();
          v132 = sub_237C07EBC();
          v133 = v183;
          sub_237B3B424(v132, v183);

          v72 = v221;
          if (__swift_getEnumTagSinglePayload(v133, 1, v221) == 1)
          {
            goto LABEL_45;
          }

          v134 = v125;

          v135 = OUTLINED_FUNCTION_26_14();
          v137 = v136;
          sub_237A9D14C();
          v138 = *(*v137 + 16);
          sub_237A9D2E0(v138);
          v139 = *v137;
          *(v139 + 16) = v138 + 1;
          (*v214)(v139 + v188 + v138 * v187, v133, v72);
          v140 = OUTLINED_FUNCTION_14_20();
          v135(v140);

          sub_237A1E0B0(v56, 4);
          OUTLINED_FUNCTION_9_29();
          v101 = v134;
LABEL_32:
          v100(v101, v55);
          v55 = v215;
          v52 = v199;
          break;
        case 5uLL:
          OUTLINED_FUNCTION_11_29();
          v74 = OUTLINED_FUNCTION_16_16();
          MEMORY[0x2383DC360](v74);

          v75 = OUTLINED_FUNCTION_23_19();
          v78 = sub_237AC6418(v75, v76, v77);
          v80 = v79;

          sub_237B4694C(&v226, v78, v80);

          v81 = v56[2];

          sub_237C07CFC();
          v61 = __OFADD__(v59, v81);
          v82 = &v59[v81];
          if (v61)
          {
            goto LABEL_44;
          }

          v83 = v55;
          v55 = v54;
          sub_237AC6594(v83, v54, v78, v80, v56);
          OUTLINED_FUNCTION_9_29();
          v84 = OUTLINED_FUNCTION_20_16();
          v85(v84);
          v86 = v205;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_10();
            sub_237BC1568();
            v86 = v151;
          }

          v87 = v184;
          v89 = *(v86 + 16);
          v88 = *(v86 + 24);
          v224 = v82;
          if (v89 >= v88 >> 1)
          {
            sub_237BC1568();
            v86 = v152;
          }

          *(v86 + 16) = v89 + 1;
          OUTLINED_FUNCTION_8_22();
          v205 = v86;
          OUTLINED_FUNCTION_15_21(v86 + v90);
          OUTLINED_FUNCTION_12_24();
          v91();
          v92 = v196;
          v93 = sub_237C07EBC();
          sub_237B3B424(v93, v87);

          v72 = v221;
          if (__swift_getEnumTagSinglePayload(v87, 1, v221) == 1)
          {
            goto LABEL_46;
          }

          v94 = OUTLINED_FUNCTION_26_14();
          v96 = v95;
          sub_237A9D14C();
          v97 = *(*v96 + 16);
          sub_237A9D2E0(v97);
          v98 = *v96;
          *(v98 + 16) = v97 + 1;
          (*(v218 + 32))(v98 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v97, v87, v72);
          v99 = OUTLINED_FUNCTION_14_20();
          v94(v99);

          sub_237A1E0B0(v56, 5);
          OUTLINED_FUNCTION_9_29();
          v101 = v92;
          goto LABEL_32;
        case 6uLL:
          OUTLINED_FUNCTION_16_16();
          sub_237C07CFC();
          sub_237A1E0B0(v56, 6);
          v61 = __OFADD__(v59, 1);
          v102 = v59 + 1;
          if (v61)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_9_29();
          v103(v197, v53, v221);
          v104 = OUTLINED_FUNCTION_26_14();
          v106 = OUTLINED_FUNCTION_25_15(v104, v105);
          *v56 = v49;
          v224 = v102;
          if ((v106 & 1) == 0)
          {
            OUTLINED_FUNCTION_7_10();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v153);
          }

          OUTLINED_FUNCTION_21_20();
          if (v67)
          {
            OUTLINED_FUNCTION_18_22();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v154);
          }

          *(v49 + 16) = v102;
          OUTLINED_FUNCTION_8_22();
          v69 = OUTLINED_FUNCTION_15_21(v49 + v107);
          v71 = v197;
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_16_16();
          sub_237C07CFC();
          sub_237A1E0B0(v56, v57);
          v61 = __OFADD__(v59, v56);
          v62 = v56 + v59;
          if (v61)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:

            __break(1u);
            JUMPOUT(0x237AC58D4);
          }

          OUTLINED_FUNCTION_9_29();
          v63(v219, v53, v221);
          v64 = OUTLINED_FUNCTION_26_14();
          v66 = OUTLINED_FUNCTION_25_15(v64, v65);
          *v56 = v49;
          v224 = v62;
          if ((v66 & 1) == 0)
          {
            OUTLINED_FUNCTION_7_10();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v149);
          }

          OUTLINED_FUNCTION_21_20();
          if (v67)
          {
            OUTLINED_FUNCTION_18_22();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v150);
          }

          *(v49 + 16) = v62;
          OUTLINED_FUNCTION_8_22();
          v69 = OUTLINED_FUNCTION_15_21(v49 + v68);
          v71 = v219;
LABEL_10:
          v72 = v221;
          v70(v69, v71, v221);
          v73 = OUTLINED_FUNCTION_14_20();
          v57(v73);
          break;
      }

      v141 = v220;
      (*v211)(v55, v220, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v213;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_7_10();
        sub_237BC1630();
        *&v225 = v147;
      }

      v144 = *(v225 + 16);
      if (v144 >= *(v225 + 24) >> 1)
      {
        sub_237BC1630();
        *&v225 = v148;
      }

      (*(v143 + 8))(v141, v52);
      OUTLINED_FUNCTION_9_29();
      v53 = v216;
      v145(v216, v72);
      v146 = v225;
      *(v225 + 16) = v144 + 1;
      (*(v143 + 32))(v146 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v144, v55, v52);
      v50 = v222;
      v49 = v223 - 1;
      v31 = v212;
    }

    while (v223 != 1);
  }

  else
  {
    v224 = 0;
    *&v225 = MEMORY[0x277D84F90];
    v205 = MEMORY[0x277D84F90];
  }

  v157 = v169[3];
  sub_237C07D1C();
  (*(v31 + 104))(v157, *MEMORY[0x277D25348], v185);
  v158 = v217;
  sub_237C07E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v159 = swift_allocObject();
  v225 = xmmword_237C0B660;
  *(v159 + 16) = xmmword_237C0B660;
  v160 = v171;
  v161 = v170;
  v162 = v172;
  (*(v171 + 104))(v170, *MEMORY[0x277D250F0], v172);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v163 = swift_allocObject();
  *(v163 + 16) = v225;
  *(v163 + 32) = v224;
  sub_237C0750C();

  (*(v160 + 8))(v161, v162);
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07ECC();
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v165 = v201;
  v166 = OUTLINED_FUNCTION_24_18(v164);
  *(v166 + 16) = v225;
  v167 = v206;
  (*(v165 + 16))(&v158[v166], v158, v206);
  v226 = v205;
  sub_237A969F0(v166);
  (*(v165 + 8))(v158, v167);
  return v226;
}

void sub_237AC58F0(uint64_t a1@<X8>)
{
  v102 = a1;
  v2 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v101 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_22();
  v100 = v5;
  OUTLINED_FUNCTION_41_0();
  v113 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v99 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v8);
  v98 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v96 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  v97 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = (&v89 - v13);
  OUTLINED_FUNCTION_41_0();
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v104 = v15;
  v105 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v103 = v16;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58();
  v107 = v18;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v109 = v20;
  v110 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v108 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v111 = v31;
  v112 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_0();
  v106 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v89 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v89 - v40;
  v42 = v1[2];
  if (!v42)
  {
    goto LABEL_14;
  }

  v43 = v116;
  v44 = sub_237AC4674(v1[2], v1[3], v1[4]);
  if (v43)
  {
    return;
  }

  v90 = v42;
  v92 = v1;
  v116 = v44;
  v93 = v41;
  v91 = v2;
  v45 = objc_opt_self();
  v46 = [v45 defaultManager];
  sub_2379F364C();

  v47 = [v45 defaultManager];
  sub_2379F3528();

  sub_237C05C1C();
  v48 = sub_237C05C0C();
  v50 = v49;
  (*(v108 + 1))(v29, v24);
  v114 = v48;
  v115 = v50;
  v52 = v109;
  v51 = v110;
  (*(v109 + 104))(v23, *MEMORY[0x277CC91D8], v110);
  sub_2379F3408();
  sub_237C05ACC();
  (*(v52 + 8))(v23, v51);

  v53 = v111;
  v55 = v111 + 8;
  v54 = *(v111 + 8);
  v56 = v35;
  v57 = v112;
  v54(v56, v112);
  v58 = v93;
  sub_237C05A3C();
  v54(v38, v57);
  _s5ModelVMa_2(0);
  sub_237C0705C();
  (*(v53 + 16))(v106, v58, v57);
  v59 = v107;
  sub_237C07D8C();
  v109 = 0;
  v60 = v95;
  sub_237A9AA94(v116, v95);
  v61 = v105;
  if (__swift_getEnumTagSinglePayload(v60, 1, v105) == 1)
  {
    __break(1u);
LABEL_14:
    sub_237C090DC();
    __break(1u);
    return;
  }

  v108 = v54;
  sub_237C07EBC();
  v62 = *(v104 + 8);
  v106 = v104 + 8;
  v95 = v62;
  (v62)(v60, v61);
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v63 = v99;
  v64 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v111 = *(v99 + 72);
  v65 = swift_allocObject();
  v89 = xmmword_237C0B660;
  *(v65 + 16) = xmmword_237C0B660;
  v66 = *v92;
  v67 = v92[1];
  swift_bridgeObjectRetain_n();
  v68 = v97;
  sub_237C0755C();
  (*(v96 + 104))(v68, *MEMORY[0x277D25128], v98);

  v110 = v64;
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07ECC();
  v97 = v67;
  v98 = v66;
  sub_237C07DEC();
  v69 = MEMORY[0x277D84F90];
  sub_237C085AC();
  sub_237C07EFC();
  sub_237C07F0C();
  sub_237C07E0C();
  v70 = *(v90 + 16);
  if (v70)
  {
    v96 = v55;
    v114 = v69;
    v71 = v90;
    sub_237AC8CF4(0, v70, 0);
    v72 = v114;
    v73 = (v63 + 32);
    v74 = (v71 + 56);
    v75 = v94;
    do
    {
      v76 = *(v74 - 1);
      v77 = *v74;

      sub_237A1E09C(v76, v77);
      sub_237B991A4(v76, v77, v75);

      sub_237A1E0B0(v76, v77);
      v114 = v72;
      v78 = *(v72 + 16);
      if (v78 >= *(v72 + 24) >> 1)
      {
        OUTLINED_FUNCTION_18_22();
        sub_237AC8CF4(v79, v80, v81);
        v72 = v114;
      }

      v74 += 32;
      *(v72 + 16) = v78 + 1;
      (*v73)(v72 + v110 + v78 * v111, v75, v113);
      --v70;
    }

    while (v70);
    v82 = v105;
    v59 = v107;
    v57 = v112;
  }

  else
  {
    v82 = v105;
  }

  v83 = v103;
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  sub_237C07DEC();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v85 = v104;
  v86 = OUTLINED_FUNCTION_24_18(v84);
  *(v86 + 16) = v89;
  (*(v85 + 16))(v86 + v83, v59, v82);
  v114 = v116;
  sub_237A969F0(v86);
  v87 = v100;
  sub_237C07D2C();
  (*(v101 + 104))(v87, *MEMORY[0x277D25350], v91);
  sub_237C07E4C();
  (v95)(v59, v82);
  (*(v85 + 32))(v102, v83, v82);
  v88 = v93;
  sub_237A64C34();
  v108(v88, v57);
}

uint64_t sub_237AC6348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_237AC8A74();
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237AC6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_237A0C9C4(a1, a2, a3))
  {

    return a1;
  }

  v6 = 1;
  v7 = MEMORY[0x277D83B88];
LABEL_3:

  MEMORY[0x2383DC360](95, 0xE100000000000000);
  v8 = sub_237C0924C();
  MEMORY[0x2383DC360](v8);

  if (!__OFADD__(v6++, 1))
  {
    if (*(a3 + 16))
    {
      v11 = v7;
      sub_237C093CC();
      sub_237C0878C();
      v12 = sub_237C0940C();
      v13 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v14 = v12 & v13;
        if (((*(a3 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        v15 = (*(a3 + 48) + 16 * v14);
        if (*v15 != a1 || v15[1] != a2)
        {
          v17 = sub_237C0929C();
          v12 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v11;
        goto LABEL_3;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237AC6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_237C075DC();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_41_0();
  v7 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_237C07F0C();
  sub_237C07E0C();
  v14 = *(a5 + 16);
  if (v14)
  {
    v22 = v9;
    v23 = v7;
    v24 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v15 = (a5 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(v24 + 16);
      v19 = *(v24 + 24);

      if (v18 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_18_22();
        sub_237AC8A74();
      }

      *(v24 + 16) = v18 + 1;
      v20 = v24 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v14;
    }

    while (v14);
    v7 = v23;
    v9 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_237AA2F98();
  sub_237C07D4C();
  (*(v9 + 104))(v13, *MEMORY[0x277D25378], v7);
  sub_237C07E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  sub_237C07B9C();
  *(swift_allocObject() + 16) = xmmword_237C0B660;

  sub_237C075CC();
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = xmmword_237C0B660;

  sub_237C075BC();
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  return sub_237C07ECC();
}

uint64_t OUTLINED_FUNCTION_11_29()
{
  *(v0 - 120) = 0x5F6465646F636E65;
  *(v0 - 112) = 0xE800000000000000;
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return MEMORY[0x282184150](v0 - 120);
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(_:)(MLMultiArray a1)
{
  v4 = v1;
  result._contents.super.isa = [(objc_class *)a1.super.isa dataType];
  if (result._contents.super.isa == 65600)
  {
    isa = a1.super.isa;
LABEL_48:
    *v4 = isa;
    return result;
  }

  v59 = v4;
  v7 = [(objc_class *)a1.super.isa shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  sub_237C0893C();

  v8 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v9 = OUTLINED_FUNCTION_4_40();
  if (!v2)
  {
    v61 = v9;
    v10 = &off_278A42000;
    v11 = [(objc_class *)a1.super.isa strides];
    v12 = sub_237C0893C();

    v13 = sub_237A24B6C(v12);
    v60 = a1.super.isa;
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_2_44(v13);
      if (v14 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v15 = 0;
      v16 = v62;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2383DCAF0](v15, v12);
        }

        else
        {
          v17 = *(v12 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 integerValue];

        v62 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = OUTLINED_FUNCTION_3_42(v20);
          sub_237AC8A34(v22, v21 + 1, 1);
          v16 = v62;
        }

        ++v15;
        *(v16 + 16) = v21 + 1;
        *(v16 + 8 * v21 + 32) = v19;
      }

      while (v14 != v15);

      v10 = &off_278A42000;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v23 = [v61 v10[240]];

    v24 = sub_237C0893C();
    v25 = sub_237A24B6C(v24);
    if (!v25)
    {

      v28 = MEMORY[0x277D84F90];
LABEL_26:
      v35 = [(objc_class *)v60 shape];
      v36 = sub_237C0893C();

      v37 = sub_237A24B6C(v36);
      if (!v37)
      {

        v40 = MEMORY[0x277D84F90];
LABEL_37:
        v47 = sub_237AC6FE0(v16, v28);

        if ((v47 & 1) == 0)
        {
          if ([(objc_class *)v60 count]< 1)
          {

            v4 = v59;
            isa = v61;
          }

          else
          {
            v62 = sub_237AC78F4([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_], *(v40 + 16));
            do
            {
              v52 = sub_237C0892C();
              v53 = [(objc_class *)v60 objectForKeyedSubscript:v52];

              [v53 doubleValue];
              v55 = v54;

              v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              v57 = sub_237C0892C();
              [v61 setObject:v56 forKeyedSubscript:v57];

              sub_237AC7CA0(v40, &v62);
            }

            while ((v58 & 1) != 0);

            v4 = v59;
            isa = v61;
          }

          goto LABEL_48;
        }

        v48 = [(objc_class *)v60 count];
        isa = v61;
        if ((v48 & 0x8000000000000000) == 0)
        {
          v49 = v48;
          if (v48)
          {
            v50 = 0;
            do
            {
              v51 = [(objc_class *)v60 objectAtIndexedSubscript:v50];
              [v61 setObject:v51 atIndexedSubscript:v50];

              ++v50;
            }

            while (v49 != v50);
          }

          v4 = v59;
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      v38 = v37;
      OUTLINED_FUNCTION_2_44(v37);
      if ((v38 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        v40 = v62;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x2383DCAF0](v39, v36);
          }

          else
          {
            v41 = *(v36 + 8 * v39 + 32);
          }

          v42 = v41;
          v43 = [v41 integerValue];

          v62 = v40;
          v45 = *(v40 + 16);
          v44 = *(v40 + 24);
          if (v45 >= v44 >> 1)
          {
            v46 = OUTLINED_FUNCTION_3_42(v44);
            sub_237AC8A34(v46, v45 + 1, 1);
            v40 = v62;
          }

          ++v39;
          *(v40 + 16) = v45 + 1;
          *(v40 + 8 * v45 + 32) = v43;
        }

        while (v38 != v39);

        goto LABEL_37;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v26 = v25;
    OUTLINED_FUNCTION_2_44(v25);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v28 = v62;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x2383DCAF0](v27, v24);
        }

        else
        {
          v29 = *(v24 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = [v29 integerValue];

        v62 = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        if (v33 >= v32 >> 1)
        {
          v34 = OUTLINED_FUNCTION_3_42(v32);
          sub_237AC8A34(v34, v33 + 1, 1);
          v28 = v62;
        }

        ++v27;
        *(v28 + 16) = v33 + 1;
        *(v28 + 8 * v33 + 32) = v31;
      }

      while (v26 != v27);

      goto LABEL_26;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_53:
  OUTLINED_FUNCTION_2_29();
  result._contents.super.isa = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237AC6FE0(uint64_t result, uint64_t a2)
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

uint64_t sub_237AC703C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_237C0929C() & 1) == 0)
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

uint64_t sub_237AC70C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v9 || (sub_237C0929C() & 1) != 0)
    {
      v35 = a1 + 32;
      v10 = a2 + 32;
      v11 = 1;
      while (1)
      {
        switch(v6)
        {
          case 1:

            OUTLINED_FUNCTION_1_42();
            if (v19 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_67;
          case 2:

            OUTLINED_FUNCTION_1_42();
            if (v17 != 2)
            {
              goto LABEL_67;
            }

            goto LABEL_33;
          case 3:

            OUTLINED_FUNCTION_1_42();
            if (v18 != 3)
            {
              goto LABEL_67;
            }

            goto LABEL_33;
          case 4:
            if (v8 != 4)
            {
              return 0;
            }

            v12 = *(v5 + 16);
            if (v12 != *(v7 + 16))
            {
              return 0;
            }

            if (v12)
            {
              v13 = v5 == v7;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              goto LABEL_58;
            }

            v14 = (v5 + 40);
            v15 = (v7 + 40);
            while (2)
            {
              if (!v12)
              {
                goto LABEL_70;
              }

              v16 = *(v14 - 1) == *(v15 - 1) && *v14 == *v15;
              if (v16 || (sub_237C0929C() & 1) != 0)
              {
                v14 += 2;
                v15 += 2;
                if (!--v12)
                {
                  goto LABEL_58;
                }

                continue;
              }

              return 0;
            }

          case 5:
            if (v8 != 5)
            {
              return 0;
            }

            sub_237A1E09C(v7, 5);
            sub_237A1E09C(v5, 5);
            v20 = sub_237AC70C8(v5, v7);

            sub_237A1E0B0(v7, 5);

            sub_237A1E0B0(v5, 5);
            if ((v20 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_58;
          case 6:
            switch(v5)
            {
              case 1:

                OUTLINED_FUNCTION_1_42();
                if (v26 != 6 || v7 != 1)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              case 2:

                OUTLINED_FUNCTION_1_42();
                if (v22 != 6 || v7 != 2)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              case 3:

                OUTLINED_FUNCTION_1_42();
                if (v24 != 6 || v7 != 3)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              default:

                OUTLINED_FUNCTION_1_42();
                if (v21 != 6 || v7)
                {
                  goto LABEL_67;
                }

LABEL_57:

                break;
            }

            goto LABEL_58;
          default:

            sub_237A1E09C(v7, v8);
            if (v8)
            {
LABEL_67:

              sub_237A1E0B0(v7, v8);
              return 0;
            }

LABEL_33:

            if (v5 != v7)
            {
              return 0;
            }

LABEL_58:
            if (v11 == v2)
            {
              return 1;
            }

            if (v11 >= v2)
            {
              __break(1u);
LABEL_70:
              __break(1u);
              JUMPOUT(0x237AC7410);
            }

            v28 = v11 + 1;
            v29 = (v35 + 32 * v11);
            v30 = *v29;
            v31 = v29[1];
            v5 = v29[2];
            v6 = *(v29 + 24);
            v32 = v10 + 32 * v11;
            v7 = *(v32 + 16);
            v8 = *(v32 + 24);
            v33 = v30 == *v32 && v31 == *(v32 + 8);
            ++v11;
            if (!v33)
            {
              v11 = v28;
              if ((sub_237C0929C() & 1) == 0)
              {
                return 0;
              }
            }

            break;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_237AC743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_237AC8F14();
    v22 = sub_237C0867C();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237AC762C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_2379E9288(v15, v5, v6);
        sub_2379E9288(v7, v8, v9);
        v10 = static MLDataValue.== infix(_:_:)(&v15, &v12);
        sub_2379E8CE8(v12, v13, v14);
        sub_2379E8CE8(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_237AC7718(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_237C090EC())
  {
    if (a2 >> 62)
    {
      result = sub_237C090EC();
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

    v4 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
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
        v17 = MEMORY[0x2383DCAF0](v13 - 4, v24);
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
        v19 = MEMORY[0x2383DCAF0](v13 - 4, a2);
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
      v21 = sub_237C08CEC();

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

void *sub_237AC78F4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v4 = sub_237C0898C();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_237AC7988(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_237C0898C();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_237AC7A20(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_237C0898C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237C10D40)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237AC7AC4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
      v4 = sub_237C0898C();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

id MLDataValue.MultiArrayType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  return v2;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(shape:)(Swift::OpaquePointer shape)
{
  v3 = v1;
  v4 = *(shape._rawValue + 2);
  if (v4)
  {
    sub_237C08FCC();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_237C08F8C();
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result._contents.super.isa = OUTLINED_FUNCTION_4_40();
  if (shape._rawValue)
  {
    OUTLINED_FUNCTION_2_29();
    result._contents.super.isa = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3->_contents.super.isa = result._contents.super.isa;
  }

  return result;
}

void sub_237AC7CA0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = sub_237A24B6C(*a2);
  if (__OFSUB__(v5, 1))
  {
LABEL_33:
    __break(1u);
  }

  else
  {
    for (i = v5; ; --i)
    {
      v7 = i - 1;
      if (i - 1 < 0)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383DCAF0](i - 1, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(v4 + 8 * i + 24);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_237B06298();
      }

      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = v12 + 8 * i;
      v14 = *(v13 + 24);
      *(v13 + 24) = v11;

      *a2 = v4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383DCAF0](i - 1, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v15 = *(v4 + 8 * i + 24);
      }

      v16 = v15;
      v17 = [v15 integerValue];

      if (v7 >= *(a1 + 16))
      {
        goto LABEL_30;
      }

      if (v17 < *(a1 + 24 + 8 * i))
      {
        return;
      }

      v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_237B06298();
        v12 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (v7 >= *(v12 + 16))
      {
        goto LABEL_32;
      }

      v19 = v12 + 8 * i;
      v20 = *(v19 + 24);
      *(v19 + 24) = v18;

      *a2 = v4;
    }
  }
}

double MLDataValue.MultiArrayType.subscript.getter(uint64_t a1)
{
  v2 = [*v1 objectAtIndexedSubscript_];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

{
  v2 = *v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_237C08FCC();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_237C08F8C();
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      --v3;
    }

    while (v3);
  }

  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0892C();

  v8 = [v2 objectForKeyedSubscript_];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

uint64_t sub_237AC80B0(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_237C086EC();

  return v3;
}

void *MLDataValue.MultiArrayType.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  if (v5 != 5)
  {
    sub_2379E8CE8(result, *(a1 + 8), v5);
    result = 0;
  }

  *a2 = result;
  return result;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237C10D30;
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  *(v2 + 32) = sub_237C08CDC();
  v3 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v4 = sub_237AC8938(v2, 65568);
  if (v4)
  {
    result._contents.super.isa = MLDataValue.MultiArrayType.init(_:)(v4)._contents.super.isa;
    *v1 = v6;
  }

  else
  {
    result._contents.super.isa = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237AC8278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = sub_237B0DE28(*(a1 + 16));
  if (!v5)
  {
    goto LABEL_12;
  }

  type metadata accessor for CMLMultiArray();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v4[2] = v6;

  v7 = sub_237A2ECA0();
  v8 = sub_237A2EC1C();
  v9 = sub_237A2EC48();
  v10 = sub_237A2EC74();
  if (v8 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    OUTLINED_FUNCTION_2_29();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v11 = MEMORY[0x277D84F90];
  if (v8)
  {
    v12 = v10;
    v20 = v7;
    v22 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      sub_237C08F8C();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FEC();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FFC();
      sub_237C08F9C();
      v13 = v14;
    }

    while (v8 != v14);
    v15 = v22;
    v21 = v11;
    sub_237C08FCC();
    do
    {
      v16 = *v12++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      sub_237C08F8C();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FEC();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FFC();
      sub_237C08F9C();
      --v8;
    }

    while (v8);
    v7 = v20;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = objc_allocWithZone(MEMORY[0x277CBFF48]);

  v18 = sub_2379EEB64(v7, v15, 65600, v11, sub_237AC9030, v4);
  MLDataValue.MultiArrayType.init(_:)(v18);

  *a2 = v21;
  return result;
}

uint64_t sub_237AC857C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 0;
}

uint64_t sub_237AC85C4()
{
  v1 = *v0;
  [*v0 dataPointer];
  v2 = [v1 shape];
  v3 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0893C();

  v5 = sub_237A24B6C(v4);
  if (v5)
  {
    v6 = v5;
    v7 = OUTLINED_FUNCTION_5_35();
    sub_237AC8B34(v7, v8, v9);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v35 = v3;
    v36 = v1;
    v10 = 0;
    v11 = v37;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2383DCAF0](v10, v4);
      }

      else
      {
        v12 = *(v4 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 unsignedLongLongValue];

      v37 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_237AC8B34(v15 > 1, v16 + 1, 1);
      }

      ++v10;
      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v14;
    }

    while (v6 != v10);

    v1 = v36;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v17 = [v1 strides];
  v18 = sub_237C0893C();

  v19 = sub_237A24B6C(v18);
  if (!v19)
  {

    v25 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v20 = v19;
  v21 = OUTLINED_FUNCTION_5_35();
  sub_237AC8B14(v21, v22, v23);
  if (v20 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = 0;
  v25 = v37;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x2383DCAF0](v24, v18);
    }

    else
    {
      v26 = *(v18 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = [v26 longLongValue];

    v30 = *(v37 + 16);
    v29 = *(v37 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_237AC8B14(v29 > 1, v30 + 1, 1);
    }

    ++v24;
    *(v37 + 16) = v30 + 1;
    *(v37 + 8 * v30 + 32) = v28;
  }

  while (v20 != v24);

LABEL_23:
  v31 = *(v11 + 16);
  swift_bridgeObjectRetain_n();

  v32 = sub_237B14A90(v31, v11 + 32, v25 + 32);
  if (v32)
  {
    type metadata accessor for CMLMultiArray();
    *(swift_initStackObject() + 16) = v32;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    type metadata accessor for CMLFeatureValue();

    v33 = sub_237A2E884();

    return v33;
  }

LABEL_27:
  __break(1u);
  OUTLINED_FUNCTION_2_29();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_237AC8938(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0892C();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_237AC8F14()
{
  result = qword_27DE9C858;
  if (!qword_27DE9C858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B240, &qword_237C0E220);
    sub_237AC8FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C858);
  }

  return result;
}

unint64_t sub_237AC8FA0()
{
  result = qword_27DE9C860;
  if (!qword_27DE9C860)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C860);
  }

  return result;
}

uint64_t sub_237AC8FF8()
{

  return MEMORY[0x2821FE8E8](v0);
}

void OUTLINED_FUNCTION_2_44(uint64_t a1)
{

  sub_237AC8A34(0, a1 & ~(a1 >> 63), 0);
}

id OUTLINED_FUNCTION_4_40()
{

  return sub_237AC8938(v0, 65600);
}

unint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter()
{
  if (*(v0 + 8))
  {
    v1 = sub_237C0924C();
    v3 = 0xD000000000000031;
  }

  else
  {
    v1 = sub_237C0924C();
    v3 = 0xD000000000000010;
  }

  MEMORY[0x2383DC360](v1);

  return v3;
}

void sub_237AC91A0()
{
  v1 = *v0;
  if (v0[1])
  {
    if (v1 == 1)
    {
      return;
    }

    v4 = 0;
    v5 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000026, 0x8000000237C1AD60);
  }

  else
  {
    if (v1 == 1)
    {
      return;
    }

    sub_237C08EDC();

    v4 = 0xD000000000000019;
    v5 = 0x8000000237C1AD90;
  }

  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C17600);
  sub_2379E8AF0();
  swift_allocError();
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  swift_willThrow();
}

void *sub_237AC934C(id a1)
{
  v4 = [v1 dataType];
  if (v4 == 65600)
  {
    if (a1 != 65568)
    {
LABEL_12:
      if (v4 == a1)
      {
        return v1;
      }

      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1ADD0);
      [v1 dataType];
      type metadata accessor for MLMultiArrayDataType(0);
      OUTLINED_FUNCTION_0_42();
      MEMORY[0x2383DC360](0x60206F742060, 0xE600000000000000);
      OUTLINED_FUNCTION_0_42();
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1ADF0);
      result = sub_237C090DC();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](65600);
    OUTLINED_FUNCTION_1_43();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  }

  else
  {
    if (v4 != 65568 || a1 != 65600)
    {
      goto LABEL_12;
    }

    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_1_43();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  }

  result = sub_237C08BDC();
  if (!v2)
  {
    return v7;
  }

  return result;
}

id sub_237AC95B0@<X0>(id a1@<X2>, void *a4@<X8>)
{
  v6 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  v8 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_237AC8938(v7, 65600);
  if (!v4)
  {
    v10 = result;
    MEMORY[0x28223BE20](result);
    result = sub_237C08BEC();
    *a4 = v10;
  }

  return result;
}

void sub_237AC96C8(double *__C, uint64_t a2, int a3, const float *__A, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!__A)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__C)
  {
    vDSP_vspdp(__A, 1, __C, 1, a5);
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_237AC9738@<X0>(id a1@<X2>, void *a2@<X8>)
{
  v4 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_237AC8938(v5, 65568);
  if (!v2)
  {
    v8 = result;
    MEMORY[0x28223BE20](result);
    result = sub_237C08BEC();
    *a2 = v8;
  }

  return result;
}

void sub_237AC9850(float *__C, uint64_t a2, int a3, const double *__A, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!__A)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__C)
  {
    vDSP_vdpsp(__A, 1, __C, 1, a5);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return sub_237C0907C();
}

uint64_t sub_237AC9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_4_41(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237AC99C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v3);
}

uint64_t sub_237AC9A10(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_237ACB20C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v2);
}

double sub_237AC9A74@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v5 = OUTLINED_FUNCTION_0_43(a3, a4), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v5);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_237AC9B28@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v4);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v3);
  return swift_unknownObjectRetain();
}

double sub_237AC9BBC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v4 = sub_237ACB52C(a3), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v4);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = OUTLINED_FUNCTION_0_43(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_237AC9C4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_237ACB424();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v2);
}

void MLDataTable.Row.subscript.getter(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  if (*(*(v3 + 8) + 16) && (v5 = OUTLINED_FUNCTION_0_43(a2, a3), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_4_41(v5);
    v8 = sub_237A2E9C8(v7);
    sub_237AFC548(v8, &v10);
    v9 = v11;
    *a1 = v10;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = -1;
  }

  *(a1 + 16) = v9;
}

uint64_t MLDataTable.Row.Values.description.getter()
{
  v19 = 91;
  v20 = 0xE100000000000000;
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v0, v1);
  v2 = OUTLINED_FUNCTION_6_6();
  v3 = sub_237A0290C(v2);
  if (v3 >= 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < 0)
  {
LABEL_15:
    __break(1u);
    OUTLINED_FUNCTION_1_44();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v3)
  {
    v5 = 0;
    while (v4 != v5)
    {
      if (v5)
      {
        MEMORY[0x2383DC360](8236, 0xE200000000000000);
      }

      v6 = sub_237A2E9C8(v5++);
      sub_237AFC548(v6, v17);
      v7 = v17[0];
      v8 = v17[1];
      v9 = v18;
      v10 = MLDataValue.description.getter();
      v12 = v11;
      sub_2379E8CE8(v7, v8, v9);
      MEMORY[0x2383DC360](v10, v12);

      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  sub_237A2E9F4();
  v13 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v13, v14);
  v15 = OUTLINED_FUNCTION_6_6();
  if (v4 < sub_237A0290C(v15))
  {
    MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
  }

  MEMORY[0x2383DC360](93, 0xE100000000000000);
  return v19;
}

Swift::Int_optional __swiftcall MLDataTable.Row.index(forKey:)(Swift::String forKey)
{
  if (*(*(v1 + 8) + 16) && (v2 = OUTLINED_FUNCTION_0_43(forKey._countAndFlagsBits, forKey._object), (v3 & 1) != 0))
  {
    v4 = OUTLINED_FUNCTION_4_41(v2);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

void *MLDataTable.Row.Values.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_237A2E9C8(a1);

  return sub_237AFC548(v3, a2);
}

uint64_t MLDataTable.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + 8) + 16) && (v9 = OUTLINED_FUNCTION_0_43(a1, a2), (v10 & 1) != 0))
  {
    v11 = OUTLINED_FUNCTION_4_41(v9);
    v12 = sub_237A2E9C8(v11);
    sub_237AFC548(v12, &v14);
    return (*(a4 + 16))(&v14, a3, a4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }
}

uint64_t static MLDataTable.Row.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (sub_237A01C98(*a2, *a1))
  {
    v5 = v2;

    v3 = static MLDataTable.Row.Values.== infix(_:_:)(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t static MLDataTable.Row.Values.== infix(_:_:)(uint64_t *a1)
{
  sub_237A2E9F4();
  v1 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v1, v2);
  v3 = OUTLINED_FUNCTION_6_6();
  v4 = sub_237A0290C(v3);
  sub_237A2E9F4();
  v5 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v5, v6);
  v7 = OUTLINED_FUNCTION_6_6();
  if (v4 == sub_237A0290C(v7))
  {

    v8 = 0;
    while (1)
    {
      sub_237A2E9F4();
      v9 = OUTLINED_FUNCTION_6_6();
      v11 = sub_237A017E8(v9, v10);
      v12 = v8 == v11;
      if (v8 == v11)
      {
LABEL_6:

        return v12;
      }

      v13 = sub_237A2E9C8(v8);
      sub_237AFC548(v13, &v26);
      v14 = v26;
      v15 = v27;
      v16 = v28;
      sub_237A2E9F4();
      v17 = OUTLINED_FUNCTION_6_6();
      if (v8 >= sub_237A017E8(v17, v18))
      {
        break;
      }

      v26 = v14;
      v27 = v15;
      v28 = v16;
      v19 = sub_237A2E9C8(v8++);
      sub_237AFC548(v19, &v24);
      v22 = v24;
      v23 = v25;
      v20 = static MLDataValue.== infix(_:_:)(&v26, &v22);
      sub_2379E8CE8(v22, *(&v22 + 1), v23);
      sub_2379E8CE8(v14, v15, v16);
      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_1_44();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

BOOL MLDataTable.Row.isEmpty.getter()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v0, v1);
  v2 = OUTLINED_FUNCTION_6_6();
  return sub_237A0290C(v2) == 0;
}

uint64_t _s8CreateML11MLDataTableV3RowV5countSivg_0()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v0, v1);
  v2 = OUTLINED_FUNCTION_6_6();

  return sub_237A0290C(v2);
}

Swift::Int __swiftcall MLDataTable.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.Row.subscript.getter(void *a1, uint64_t a2)
{
  v4 = MLDataTable.ColumnNames.subscript.getter(a2);
  v5 = sub_237A2E9C8(a2);
  sub_237AFC548(v5, a1);
  return v4;
}

uint64_t sub_237ACA3AC@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Row.count.getter();
  *a1 = result;
  return result;
}

void (*sub_237ACA3D4(void *a1, uint64_t *a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = MLDataTable.Row.subscript.getter(v4 + 2, *a2);
  *(v4 + 5) = v5;
  *v4 = v5;
  *(v4 + 1) = v6;
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  *(v4 + 10) = v6;
  *(v4 + 11) = v7;
  *(v4 + 12) = v8;
  v9 = *(v4 + 32);
  *(v4 + 33) = v9;
  *(v4 + 6) = v6;
  *(v4 + 7) = v7;
  *(v4 + 8) = v8;
  *(v4 + 72) = v9;

  sub_2379E9288(v7, v8, v9);
  return sub_237ACA488;
}

void sub_237ACA488(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 88);
  v2 = *(*a1 + 96);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 33);

  sub_2379E8CE8(v4, v5, v6);

  sub_2379E8CE8(v3, v2, v7);

  free(v1);
}

uint64_t sub_237ACA540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237AFEB28(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237ACA574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_237AFEF08(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

Swift::Int sub_237ACA634(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = MLDataTable.Row.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_237ACA65C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_237ACA674@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

uint64_t MLDataTable.Row.description.getter()
{
  v26 = 91;
  v27 = 0xE100000000000000;

  for (i = 0; ; i = v10 + 1)
  {
    sub_237A2E9F4();
    v1 = OUTLINED_FUNCTION_6_6();
    if (i == sub_237A017E8(v1, v2))
    {

      MEMORY[0x2383DC360](93, 0xE100000000000000);
      return v26;
    }

    sub_237A2E9C8(i);
    v3 = sub_237A2DE60();
    v5 = v4;

    sub_237A2E9F4();
    v6 = OUTLINED_FUNCTION_6_6();
    if (i >= sub_237A017E8(v6, v7))
    {
      break;
    }

    v23 = 34;
    v24 = 0xE100000000000000;
    MEMORY[0x2383DC360](v3, v5);

    MEMORY[0x2383DC360](540680226, 0xE400000000000000);

    v8 = v23;
    v9 = v24;
    v10 = i;
    v11 = sub_237A2E9C8(i);
    sub_237AFC548(v11, &v23);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = MLDataValue.description.getter();
    v17 = v16;
    sub_2379E8CE8(v12, v13, v14);

    MEMORY[0x2383DC360](v15, v17);

    MEMORY[0x2383DC360](v8, v9);

    sub_237A2E9F4();
    v18 = OUTLINED_FUNCTION_6_6();
    v20 = sub_237A017E8(v18, v19);
    if (__OFSUB__(v20, 1))
    {
      goto LABEL_10;
    }

    if (v10 < v20 - 1)
    {
      MEMORY[0x2383DC360](8236, 0xE200000000000000);
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  OUTLINED_FUNCTION_1_44();
  swift_unexpectedError();
  __break(1u);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_237C08EDC();

  v23 = 0xD000000000000022;
  v24 = 0x8000000237C17E70;
  v22 = sub_237C0924C();
  MEMORY[0x2383DC360](v22);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t MLDataTable.Row.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_7_28();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = OUTLINED_FUNCTION_9_30();
  result = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t MLDataTable.Row.Values.endIndex.getter()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  return sub_237A017E8(v0, v1);
}

uint64_t sub_237ACAA8C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A93594();
  *v1 = result;
  return result;
}

uint64_t sub_237ACAACC@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Row.Values.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237ACAB44(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FFA8(v3, v5, *v4, *v2);
  *v1 = result;
  *(v1 + 8) = v7 & 1;
  return result;
}

uint64_t sub_237ACAB7C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_26(a1);
  result = sub_237B70944();
  *v1 = result;
  return result;
}

uint64_t MLDataTable.Row.Values.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  MLDataTable.Row.Values.description.getter();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = OUTLINED_FUNCTION_9_30();
  result = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  a1[3] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_237ACAC94()
{
  result = qword_27DE9C868;
  if (!qword_27DE9C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C868);
  }

  return result;
}

unint64_t sub_237ACADB8()
{
  result = qword_27DE9C8A0;
  if (!qword_27DE9C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8A0);
  }

  return result;
}

unint64_t sub_237ACAE54()
{
  result = qword_27DE9C8B8;
  if (!qword_27DE9C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8B8);
  }

  return result;
}

unint64_t sub_237ACAEAC()
{
  result = qword_27DE9C8C0;
  if (!qword_27DE9C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8C0);
  }

  return result;
}

unint64_t sub_237ACAF48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C8B0, &qword_237C112C0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237ACAFC0()
{
  result = qword_27DE9C8D0;
  if (!qword_27DE9C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8D0);
  }

  return result;
}

unint64_t sub_237ACB09C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237ACB0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_237C093CC();
  sub_237C0878C();
  v5 = sub_237C0940C();

  return a3(a1, a2, v5);
}

unint64_t sub_237ACB180(uint64_t a1, unint64_t a2, char a3)
{
  v8[9] = a1;
  v8[10] = a2;
  v9 = a3;
  sub_237C093CC();
  MLDataValue.hash(into:)(v8);
  v6 = sub_237C0940C();

  return sub_237ACB5BC(a1, a2, a3, v6);
}

unint64_t sub_237ACB20C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2383DCF40](*(v1 + 40), a1, 4);

  return sub_237ACD0EC(v2, v3);
}

unint64_t sub_237ACB254()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C06A4C();
  v1 = MEMORY[0x277CC4F88];
  sub_237ACD93C(&qword_27DE9B8C8);
  v2 = sub_237C0861C();
  return sub_237ACD6E0(v0, v2, MEMORY[0x277CC4F88], &unk_27DE9C8F0, v1, MEMORY[0x277CC4F98]);
}

unint64_t sub_237ACB31C()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C0909C();
  sub_237C0861C();
  v0 = OUTLINED_FUNCTION_125();

  return sub_237ACD14C(v0, v1);
}

unint64_t sub_237ACB370(uint64_t a1)
{
  v1 = a1;
  sub_237C093CC();
  sub_2379F5E44(v4, v1);
  v2 = sub_237C0940C();

  return sub_237ACD2D0(v1, v2);
}

unint64_t sub_237ACB3E0(uint64_t a1)
{
  v2 = sub_237C093BC();

  return sub_237ACD680(a1, v2);
}

unint64_t sub_237ACB424()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C05ADC();
  v1 = MEMORY[0x277CC9260];
  sub_237ACD93C(&qword_27DE9C210);
  v2 = sub_237C0861C();
  return sub_237ACD6E0(v0, v2, MEMORY[0x277CC9260], &qword_27DE9C860, v1, MEMORY[0x277CC9278]);
}

unint64_t sub_237ACB4EC()
{
  sub_237C08E4C();
  v0 = OUTLINED_FUNCTION_125();

  return sub_237ACD878(v0, v1);
}

unint64_t sub_237ACB52C(uint64_t a1)
{
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v2 = sub_237C0940C();

  return sub_237ACD97C(a1, v2);
}

unint64_t sub_237ACB5BC(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v176 = ~(-1 << *(v4 + 32));
  v8 = a4 & v176;
  v10 = a3 == 6 && (a2 | a1) == 0;
  v167 = v10;
  while (2)
  {
    if (((1 << v8) & *(v178 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8))) == 0)
    {
      return v8;
    }

    v12 = *(v177 + 48) + 24 * v8;
    v13 = *(v12 + 8);
    v181 = v13;
    v182 = *v12;
    v14 = *(v12 + 16);
    switch(v14)
    {
      case 1:
        v15 = *v12;
        if (v5 != 1)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v182, v13, 1);
        sub_2379E8CE8(v7, v6, 1);
        if (*&v182 == *&a1)
        {
          return v8;
        }

        goto LABEL_131;
      case 2:
        if (v5 != 2)
        {
          v15 = *v12;
          sub_2379E9288(v182, v13, 2);

          goto LABEL_129;
        }

        if (v182 == v7 && v13 == v6)
        {
          sub_2379E9288(v7, v6, 2);
          sub_2379E9288(v7, v6, 2);
          sub_2379E8CE8(v7, v6, 2);
          v142 = v7;
          v143 = v6;
          v144 = 2;
LABEL_136:
          sub_2379E8CE8(v142, v143, v144);
          return v8;
        }

        v17 = sub_237C0929C();
        sub_2379E9288(v7, v6, 2);
        sub_2379E9288(v182, v13, 2);
        sub_2379E8CE8(v182, v13, 2);
        v18 = v7;
        v19 = v6;
        v20 = 2;
LABEL_121:
        sub_2379E8CE8(v18, v19, v20);
        if (v17)
        {
          return v8;
        }

        goto LABEL_131;
      case 3:
        if (v5 != 3)
        {
          v15 = *v12;
          swift_retain_n();
LABEL_129:
          sub_2379E9288(v7, v6, v5);
          sub_2379E8CE8(v15, v13, v14);
          sub_2379E8CE8(v7, v6, v5);
          v26 = v15;
          goto LABEL_130;
        }

        sub_2379E9288(v182, v13, 3);
        sub_2379E9288(v7, v6, 3);
        sub_2379E9288(v182, v13, 3);
        sub_2379E9288(v7, v6, 3);
        sub_2379E9288(v182, v13, 3);
        v22 = sub_237A2E9F4();
        if (sub_237A2E9F4() < 0)
        {
          goto LABEL_143;
        }

        v23 = sub_237A2E9F4();
        if (v22 < 0 || v23 < v22)
        {
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

          __break(1u);
LABEL_153:
          __break(1u);

          __break(1u);
LABEL_154:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_155:
          __break(1u);

          __break(1u);
LABEL_156:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_157:
          __break(1u);

          __break(1u);
LABEL_158:
          __break(1u);

          __break(1u);
LABEL_159:
          __break(1u);

          __break(1u);
LABEL_160:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_161:
          __break(1u);

          __break(1u);
LABEL_162:
          __break(1u);

          __break(1u);
LABEL_163:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
          goto LABEL_164;
        }

        v24 = sub_237A2E9F4();
        if (sub_237A2E9F4() < 0)
        {
          goto LABEL_145;
        }

        v25 = sub_237A2E9F4();
        if (v24 < 0 || v25 < v24)
        {
          goto LABEL_146;
        }

        if (v22 != v24)
        {
          v6 = a2;
          v26 = v182;
LABEL_133:
          v14 = 3;
          v13 = v181;
          sub_2379E8CE8(v26, v181, 3);
          sub_2379E8CE8(v7, v6, 3);
          sub_2379E8CE8(v7, v6, 3);
          sub_2379E8CE8(v26, v181, 3);
LABEL_130:
          sub_2379E8CE8(v26, v13, v14);
LABEL_131:
          v8 = (v8 + 1) & v176;
          continue;
        }

        v26 = v182;
        sub_237A2E9F4();
        v6 = a2;
        v174 = sub_237A01878();
        if (v174 < 0)
        {
          goto LABEL_147;
        }

        v27 = 0;
        v166 = v8;
        while (v27 != v174)
        {
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v179 = v27 + 1;
          v180 = sub_237A2E9C8(v27);
          switch(sub_237A2E910())
          {
            case 1u:

              sub_237B0E848();
              v85 = v84;

              v30 = 0;
              v83 = v85;
              v31 = 1;
              goto LABEL_74;
            case 2u:

              v29 = sub_237A2DE60();
              v30 = v80;
              v31 = 2;

              goto LABEL_72;
            case 3u:
              v81 = sub_237B0DD68(*(v180 + 16));
              if (!v81)
              {
                goto LABEL_156;
              }

              type metadata accessor for CMLSequence();
              v82 = swift_allocObject();
              *(v82 + 16) = v81;
              *(v82 + 24) = 1;

              v83 = v82;
              v30 = 0;
              v31 = 3;
              goto LABEL_74;
            case 4u:
              v32 = sub_237B0DDC8(*(v180 + 16));
              if (!v32)
              {
                goto LABEL_155;
              }

              v165 = v27;
              type metadata accessor for CMLDictionary();
              inited = swift_initStackObject();
              *(inited + 16) = v32;
              v34 = MEMORY[0x277D84F98];
              v183 = MEMORY[0x277D84F98];
              swift_retain_n();
              v35 = 0;
              v170 = v34;
              break;
            case 5u:

              v83 = 0;
              v30 = 0;
              v31 = 6;
              goto LABEL_74;
            case 6u:

              sub_237AC8278(v86, &v189);
              if (!v189)
              {
                goto LABEL_152;
              }

              v29 = v189;

              v30 = 0;
              v31 = 5;
LABEL_72:
              v83 = v29;
              goto LABEL_74;
            default:
              v28 = *(v180 + 16);

              v29 = sub_237B0ECCC(v28);

              v30 = 0;
              v31 = 0;
              goto LABEL_72;
          }

          while (v35 != sub_237A2EAA4())
          {
            LOBYTE(v36) = sub_237A2EB64(v35);
            v38 = v37;
            v35 = sub_237B6A974(v35);
            v39 = sub_237A2DE60();
            v41 = v40;

            switch(sub_237A2E910())
            {
              case 1u:

                sub_237B0E848();
                v64 = v63;

                v7 = 0;
                v38 = v64;
                LOBYTE(v36) = 1;
                goto LABEL_58;
              case 2u:

                v43 = sub_237A2DE60();
                v7 = v60;

                LOBYTE(v36) = 2;
                goto LABEL_56;
              case 3u:
                v61 = sub_237B0DD68(v38[2]);
                if (!v61)
                {
                  goto LABEL_160;
                }

                type metadata accessor for CMLSequence();
                v62 = swift_allocObject();
                *(v62 + 16) = v61;
                *(v62 + 24) = 1;

                v38 = v62;

                v7 = 0;
                LOBYTE(v36) = 3;
                goto LABEL_58;
              case 4u:
                v44 = sub_237B0DDC8(v38[2]);
                if (!v44)
                {
                  goto LABEL_159;
                }

                v160 = inited;
                *(swift_initStackObject() + 16) = v44;
                v186 = MEMORY[0x277D84F98];
                v175 = 0;
                v162 = MEMORY[0x277D84F98];
                swift_retain_n();
                break;
              case 5u:

                v7 = 0;
                v38 = 0;
                LOBYTE(v36) = 6;
                goto LABEL_58;
              case 6u:

                sub_237AC8278(v65, &v189);
                if (!v189)
                {
                  goto LABEL_158;
                }

                v43 = v189;

                v7 = 0;
                LOBYTE(v36) = 5;
LABEL_56:
                v38 = v43;
                goto LABEL_58;
              default:
                v42 = v38[2];

                v43 = sub_237B0ECCC(v42);

                LOBYTE(v36) = 0;
                v7 = 0;
                goto LABEL_56;
            }

            while (v175 != sub_237A2EAA4())
            {
              sub_237A2EB64(v175);
              v175 = sub_237B6A974(v175);
              v45 = sub_237A2DE60();
              v47 = v46;

              sub_237AFC548(v48, &v189);

              v159 = v189;
              v158 = v190;
              *&v189 = v45;
              *(&v189 + 1) = v47;
              v190 = 2;
              v49 = sub_237ACB180(v45, v47, 2);
              v51 = v162[2];
              v52 = (v50 & 1) == 0;
              v53 = __OFADD__(v51, v52);
              v54 = v51 + v52;
              if (v53)
              {
                goto LABEL_148;
              }

              v7 = v50;
              v5 = a3;
              if (v162[3] < v54)
              {
                sub_237ABF994(v54, 1);
                v49 = sub_237ACB180(v45, v47, 2);
                if ((v7 & 1) != (v55 & 1))
                {
                  goto LABEL_165;
                }
              }

              if (v7)
              {
                goto LABEL_166;
              }

              v186[(v49 >> 6) + 8] |= 1 << v49;
              v56 = v186[6] + 24 * v49;
              *v56 = v45;
              *(v56 + 8) = v47;
              *(v56 + 16) = 2;
              v57 = v186[7] + 24 * v49;
              *v57 = v159;
              *(v57 + 16) = v158;
              v58 = v186[2];
              v53 = __OFADD__(v58, 1);
              v59 = v58 + 1;
              if (v53)
              {
                goto LABEL_150;
              }

              v162 = v186;
              v186[2] = v59;
            }

            LOBYTE(v36) = 4;

            v7 = 0;
            v38 = v162;
            inited = v160;
LABEL_58:
            *&v189 = v39;
            *(&v189 + 1) = v41;
            v190 = 2;
            v66 = v170;
            v67 = sub_237ACB180(v39, v41, 2);
            v69 = v170[2];
            v70 = (v68 & 1) == 0;
            v53 = __OFADD__(v69, v70);
            v71 = v69 + v70;
            if (v53)
            {
              goto LABEL_139;
            }

            v72 = v68;
            if (v170[3] < v71)
            {
              v73 = v7;
              sub_237ABF994(v71, 1);
              v7 = v183;
              v67 = sub_237ACB180(v189, *(&v189 + 1), v190);
              if ((v72 & 1) != (v74 & 1))
              {
LABEL_165:
                sub_237C0932C();
                __break(1u);
LABEL_166:
                v146 = swift_allocError();
                swift_willThrow();

                v185 = v146;
                v147 = v146;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  sub_2379E8CE8(v159, *(&v159 + 1), v158);

                  v149 = *(&v189 + 1);
                  v148 = v189;
                  v150 = v190;
LABEL_177:
                  sub_2379E8CE8(v148, v149, v150);
                  v155 = v185;
                  goto LABEL_178;
                }

LABEL_169:
                *&v187 = 0;
                *(&v187 + 1) = 0xE000000000000000;
                sub_237C08EDC();
                MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                sub_237C0907C();
                MEMORY[0x2383DC360](39, 0xE100000000000000);
                goto LABEL_174;
              }

              v66 = v183;
              v7 = v73;
            }

            if (v72)
            {
              v151 = swift_allocError();
              swift_willThrow();

              v186 = v151;
              v152 = v151;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_169;
            }

            v66[(v67 >> 6) + 8] |= 1 << v67;
            v75 = v66[6] + 24 * v67;
            v76 = v190;
            *v75 = v189;
            *(v75 + 16) = v76;
            v77 = v66[7] + 24 * v67;
            *v77 = v38;
            *(v77 + 8) = v7;
            *(v77 + 16) = v36;
            v78 = v66[2];
            v53 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v53)
            {
              goto LABEL_141;
            }

            v170 = v66;
            v66[2] = v79;
          }

          v31 = 4;

          v30 = 0;
          v27 = v165;
          v8 = v166;
          v7 = a1;
          v6 = a2;
          v83 = v170;
LABEL_74:
          *&v189 = v83;
          *(&v189 + 1) = v30;
          v190 = v31;
          v87 = sub_237A2E9C8(v27);
          switch(sub_237A2E910())
          {
            case 1u:

              sub_237B0E848();
              v138 = v137;

              v90 = 0;
              v89 = v138;
              v91 = 1;
              goto LABEL_114;
            case 2u:

              v89 = sub_237A2DE60();
              v90 = v135;
              v91 = 2;

              goto LABEL_114;
            case 3u:
              v136 = sub_237B0DD68(*(v87 + 16));
              if (!v136)
              {
                goto LABEL_154;
              }

              type metadata accessor for CMLSequence();
              v89 = swift_allocObject();
              *(v89 + 16) = v136;
              *(v89 + 24) = 1;

              v90 = 0;
              v91 = 3;
              goto LABEL_114;
            case 4u:
              v92 = sub_237B0DDC8(*(v87 + 16));
              if (!v92)
              {
                goto LABEL_153;
              }

              type metadata accessor for CMLDictionary();
              *(swift_initStackObject() + 16) = v92;
              v186 = MEMORY[0x277D84F98];
              v93 = 0;
              v172 = MEMORY[0x277D84F98];
              swift_retain_n();
              break;
            case 5u:

              v89 = 0;
              v90 = 0;
              v91 = 6;
              goto LABEL_114;
            case 6u:

              sub_237AC8278(v139, &v187);
              if (!v187)
              {
                goto LABEL_157;
              }

              v89 = v187;

              v90 = 0;
              v91 = 5;
              goto LABEL_114;
            default:
              v88 = *(v87 + 16);

              v89 = sub_237B0ECCC(v88);

              v90 = 0;
              v91 = 0;
              goto LABEL_114;
          }

          while (v93 != sub_237A2EAA4())
          {
            sub_237A2EB64(v93);
            v38 = v94;
            v93 = sub_237B6A974(v93);
            v95 = sub_237A2DE60();
            v97 = v96;

            v171 = v87;
            switch(sub_237A2E910())
            {
              case 1u:

                sub_237B0E848();
                v120 = v119;

                v36 = 0;
                v38 = v120;
                v100 = 1;
                goto LABEL_99;
              case 2u:

                v99 = sub_237A2DE60();
                v36 = v117;

                v100 = 2;
                goto LABEL_97;
              case 3u:
                v118 = sub_237B0DD68(v38[2]);
                if (!v118)
                {
                  goto LABEL_163;
                }

                type metadata accessor for CMLSequence();
                v7 = swift_allocObject();
                *(v7 + 16) = v118;
                *(v7 + 24) = 1;

                v38 = v7;

                v36 = 0;
                v100 = 3;
                goto LABEL_99;
              case 4u:
                v101 = sub_237B0DDC8(v38[2]);
                if (!v101)
                {
                  goto LABEL_162;
                }

                *(swift_initStackObject() + 16) = v101;
                v7 = MEMORY[0x277D84F98];
                v184 = MEMORY[0x277D84F98];
                v36 = 0;
                v164 = MEMORY[0x277D84F98];
                swift_retain_n();
                break;
              case 5u:

                v36 = 0;
                v38 = 0;
                v100 = 6;
                goto LABEL_99;
              case 6u:

                sub_237AC8278(v121, &v187);
                if (!v187)
                {
                  goto LABEL_161;
                }

                v99 = v187;

                v36 = 0;
                v100 = 5;
LABEL_97:
                v38 = v99;
                goto LABEL_99;
              default:
                v98 = v38[2];

                v99 = sub_237B0ECCC(v98);

                v100 = 0;
                v36 = 0;
                goto LABEL_97;
            }

            while (v36 != sub_237A2EAA4())
            {
              sub_237A2EB64(v36);
              v102 = sub_237B6A974(v36);
              v103 = sub_237A2DE60();
              v105 = v104;
              v163 = v103;

              sub_237AFC548(v106, &v187);

              v159 = v187;
              v161 = v188;
              *&v187 = v163;
              *(&v187 + 1) = v105;
              v188 = 2;
              v107 = sub_237ACB180(v163, v105, 2);
              v109 = v164[2];
              v110 = (v108 & 1) == 0;
              v53 = __OFADD__(v109, v110);
              v111 = v109 + v110;
              if (v53)
              {
                goto LABEL_149;
              }

              v7 = v108;
              v36 = v102;
              if (v164[3] < v111)
              {
                sub_237ABF994(v111, 1);
                v107 = sub_237ACB180(v163, v105, 2);
                if ((v7 & 1) != (v112 & 1))
                {
                  goto LABEL_165;
                }
              }

              if (v7)
              {
                v153 = swift_allocError();
                swift_willThrow();

                v154 = v153;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  sub_2379E8CE8(v159, *(&v159 + 1), v161);

                  sub_2379E8CE8(v187, *(&v187 + 1), v188);
                  v155 = v153;
                  goto LABEL_178;
                }

LABEL_173:
                sub_237C08EDC();
                MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                sub_237C0907C();
                MEMORY[0x2383DC360](39, 0xE100000000000000);
LABEL_174:
                sub_237C090DC();
                __break(1u);
LABEL_175:
                sub_2379E8CE8(v38, v7, v36);

                sub_2379E8CE8(v189, *(&v189 + 1), v190);
                v155 = v186;
LABEL_178:

                while (1)
                {
LABEL_164:
                  swift_unexpectedError();
                  __break(1u);
                }
              }

              v184[(v107 >> 6) + 8] |= 1 << v107;
              v113 = v184[6] + 24 * v107;
              *v113 = v163;
              *(v113 + 8) = v105;
              *(v113 + 16) = 2;
              v114 = v184[7] + 24 * v107;
              *v114 = v159;
              *(v114 + 16) = v161;
              v115 = v184[2];
              v53 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v53)
              {
                goto LABEL_151;
              }

              v164 = v184;
              v184[2] = v116;
            }

            v100 = 4;

            v36 = 0;
            v38 = v164;
LABEL_99:
            *&v187 = v95;
            *(&v187 + 1) = v97;
            v188 = 2;
            v122 = v172;
            v123 = sub_237ACB180(v95, v97, 2);
            v125 = v172[2];
            v126 = (v124 & 1) == 0;
            v53 = __OFADD__(v125, v126);
            v127 = v125 + v126;
            if (v53)
            {
              goto LABEL_140;
            }

            v128 = v124;
            if (v172[3] < v127)
            {
              sub_237ABF994(v127, 1);
              v7 = v186;
              v123 = sub_237ACB180(v187, *(&v187 + 1), v188);
              if ((v128 & 1) != (v129 & 1))
              {
                goto LABEL_165;
              }

              v122 = v186;
            }

            if (v128)
            {
              v156 = swift_allocError();
              swift_willThrow();

              v185 = v156;
              v157 = v156;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
              if (swift_dynamicCast())
              {
                goto LABEL_173;
              }

              sub_2379E8CE8(v38, v36, v100);

              v149 = *(&v187 + 1);
              v148 = v187;
              v150 = v188;
              goto LABEL_177;
            }

            v122[(v123 >> 6) + 8] |= 1 << v123;
            v130 = v122[6] + 24 * v123;
            v131 = v188;
            *v130 = v187;
            *(v130 + 16) = v131;
            v132 = v122[7] + 24 * v123;
            *v132 = v38;
            *(v132 + 8) = v36;
            *(v132 + 16) = v100;
            v133 = v122[2];
            v53 = __OFADD__(v133, 1);
            v134 = v133 + 1;
            if (v53)
            {
              goto LABEL_142;
            }

            v172 = v122;
            v122[2] = v134;
            v87 = v171;
          }

          v91 = 4;

          v90 = 0;
          v8 = v166;
          v7 = a1;
          v6 = a2;
          v5 = a3;
          v89 = v172;
LABEL_114:
          *&v187 = v89;
          *(&v187 + 1) = v90;
          v188 = v91;
          v140 = static MLDataValue.== infix(_:_:)(&v189, &v187);
          sub_2379E8CE8(v187, *(&v187 + 1), v188);
          sub_2379E8CE8(v189, *(&v189 + 1), v190);
          v26 = v182;
          v27 = v179;
          if ((v140 & 1) == 0)
          {
            goto LABEL_133;
          }
        }

        sub_2379E8CE8(v26, v181, 3);
        sub_2379E8CE8(v7, v6, 3);
        sub_2379E8CE8(v7, v6, 3);
        sub_2379E8CE8(v26, v181, 3);
        sub_2379E8CE8(v26, v181, 3);
        return v8;
      case 4:
        if (v5 == 4)
        {
          sub_2379E9288(v182, v13, 4);
          sub_2379E9288(v7, v6, 4);
          sub_2379E9288(v182, v13, 4);
          sub_2379E9288(v7, v6, 4);
          sub_2379E9288(v182, v13, 4);
          sub_237AFDD70(v182, v7);
          v17 = v16;
          sub_2379E8CE8(v182, v13, 4);
          sub_2379E8CE8(v7, v6, 4);
          sub_2379E8CE8(v7, v6, 4);
          sub_2379E8CE8(v182, v13, 4);
          v18 = v182;
          v19 = v13;
          v20 = 4;
          goto LABEL_121;
        }

        v15 = *v12;
        swift_bridgeObjectRetain_n();
        goto LABEL_129;
      case 5:
        if (v5 == 5)
        {
          sub_2379E8EE0(0, &qword_27DE9B570, 0x277D82BB8);
          sub_2379E9288(v182, v13, 5);
          sub_2379E9288(v7, v6, 5);
          sub_2379E9288(v182, v13, 5);
          sub_2379E9288(v7, v6, 5);
          sub_2379E9288(v182, v13, 5);
          v17 = sub_237C08CEC();
          sub_2379E8CE8(v182, v13, 5);
          sub_2379E8CE8(v7, v6, 5);
          sub_2379E8CE8(v7, v6, 5);
          sub_2379E8CE8(v182, v13, 5);
          v18 = v182;
          v19 = v13;
          v20 = 5;
          goto LABEL_121;
        }

        v15 = *v12;
        v141 = v182;
        goto LABEL_129;
      case 6:
        v15 = *v12;
        if (!v167)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v182, v13, 6);
        v142 = 0;
        v143 = 0;
        v144 = 6;
        goto LABEL_136;
      default:
        v15 = *v12;
        if (v5)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v182, v13, 0);
        sub_2379E8CE8(v7, v6, 0);
        if (v182 == v7)
        {
          return v8;
        }

        goto LABEL_131;
    }
  }
}

unint64_t sub_237ACD0EC(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237ACD14C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_237C0909C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4, v6);
    v11 = sub_237C0867C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD2D0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1936945004;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x4C746E65746E6F63;
          v7 = 0xEB0000000073736FLL;
          break;
        case 2:
          v8 = 0x736F4C656C797473;
          v7 = 0xE900000000000073;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x7963617275636361;
          break;
        case 4:
          v8 = 0x69746164696C6176;
          v7 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000237C16BD0;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x8000000237C16BF0;
          break;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x8000000237C16C10;
          break;
        case 8:
          v8 = 0x456D756D6978616DLL;
          v7 = 0xEC000000726F7272;
          break;
        case 9:
          v8 = 0xD00000000000001ELL;
          v7 = 0x8000000237C16C40;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x8000000237C16C60;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1936945004;
      switch(a1)
      {
        case 1:
          v10 = 0x4C746E65746E6F63;
          v9 = 0xEB0000000073736FLL;
          break;
        case 2:
          v10 = 0x736F4C656C797473;
          v9 = 0xE900000000000073;
          break;
        case 3:
          v9 = 0xE800000000000000;
          v10 = 0x7963617275636361;
          break;
        case 4:
          v10 = 0x69746164696C6176;
          v9 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v10 = 0xD000000000000012;
          v9 = 0x8000000237C16BD0;
          break;
        case 6:
          v10 = 0xD000000000000010;
          v9 = 0x8000000237C16BF0;
          break;
        case 7:
          v10 = 0xD000000000000014;
          v9 = 0x8000000237C16C10;
          break;
        case 8:
          v10 = 0x456D756D6978616DLL;
          v9 = 0xEC000000726F7272;
          break;
        case 9:
          v10 = 0xD00000000000001ELL;
          v9 = 0x8000000237C16C40;
          break;
        case 10:
          v10 = 0xD000000000000016;
          v9 = 0x8000000237C16C60;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_237C0929C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_237ACD680(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237ACD6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v17 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v22 = v6 + 64;
  v18 = v6;
  v13 = ~(-1 << *(v6 + 32));
  for (i = a2 & v13; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v18 + 48) + *(v9 + 72) * i, v8, v10);
    sub_237ACD93C(v19);
    v15 = sub_237C0867C();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD878(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2379E8F20(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x2383DC9F0](v8, a1);
    sub_2379E8F7C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD93C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237ACD97C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_237C086EC();
    v7 = v6;
    if (v5 == sub_237C086EC() && v7 == v8)
    {

      return i;
    }

    v10 = sub_237C0929C();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1, uint64_t a2)
{

  return sub_237ACB0FC(a1, a2, sub_2379FF0CC);
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return MLDataTable.Row.description.getter();
}

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_2379FED88(v4, v1);
}

id OUTLINED_FUNCTION_9_30()
{

  return sub_237A02218(v0, v1, 0);
}

uint64_t sub_237ACDB54()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_1(v7);
  *(v0 + 72) = v8;
  v9 = swift_task_alloc();
  v10 = *v4;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  *(v0 + 25) = *(v4 + 8);
  *(v0 + 96) = *v2;
  *(v0 + 26) = *(v2 + 8);
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_237ACDC34()
{
  v31 = v0;
  v26 = *(v0 + 26);
  v25 = *(v0 + 96);
  v24 = *(v0 + 25);
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 88);
  v2[2] = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v3 = type metadata accessor for MLHandActionClassifier(0);
  v4 = (v2 + *(v3 + 32));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = OUTLINED_FUNCTION_127();
  sub_2379E51D0(v5);
  v6 = OUTLINED_FUNCTION_127();
  sub_2379E5C70(v6);
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_34_1();
  v7(v8);
  *v4 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v9 = (v2 + *(v3 + 36));
  sub_237C06FAC();
  v10 = OUTLINED_FUNCTION_127();
  sub_2379E51D0(v10);
  v11 = OUTLINED_FUNCTION_127();
  sub_2379E5C70(v11);
  v12 = OUTLINED_FUNCTION_34_1();
  v7(v12);
  *v9 = 0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v22, v2 + v13, v14);
  sub_2379DF938(v24, &v29);
  v15 = v29;
  v16 = v30;
  sub_2379DFAE0(v29, v30, &v27);
  sub_2379DBC9C(v15, v16);
  *v2 = sub_2379DFC10(v27, v28);
  v17 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v0 + 104) = v17;
  v18 = *(v22 + *(v17 + 28));
  *(v0 + 112) = v18;
  _s8GraphCNNCMa(0);
  OUTLINED_FUNCTION_25_16();
  swift_allocObject();

  v2[1] = sub_237AED020(v19, 0, 21, 3, v18);
  *(v0 + 16) = v23;
  *(v0 + 24) = v24;
  *(v0 + 32) = v25;
  *(v0 + 40) = v26;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_237ACDEFC;

  return sub_237BA78B4((v0 + 16), v0 + 32);
}

uint64_t sub_237ACDEFC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_2379DBC84(*(v3 + 32), *(v3 + 40));
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237ACE004()
{
  v22 = v0;
  v1 = sub_237A37A64();
  v2 = *(v0 + 25);
  v3 = *(v0 + 88);
  if (v1)
  {
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    sub_2379DBC9C(v3, v2);
  }

  else
  {
    v4 = MLDataTable.size.getter();
    sub_237A38140(25, 0xD000000000000010, 0x8000000237C1AE60, v4);
    v16 = v3;
    v17 = v2;
    MLDataTable.subscript.getter();
    sub_2379DBC9C(v3, v2);
    v20 = v18;
    v21 = v19;
    MLUntypedColumn.dropDuplicates()(&v14, v5);
    sub_2379DBC9C(v20, v21);
    v6 = v14;
    if (v15)
    {
      sub_2379DBC9C(v14, 1);
      v7 = -1.0;
    }

    else
    {

      v8 = sub_237A2F128();
      sub_2379DBC9C(v6, 0);
      sub_2379DBC9C(v6, 0);
      v7 = v8;
    }

    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 56);
    sub_237A38140(25, 0xD000000000000010, 0x8000000237C1AE80, v7);
    sub_237A38140(25, 0x726574492078614DLL, 0xEE00736E6F697461, *(v11 + *(v10 + 24)));
    sub_237A38140(25, 0xD000000000000016, 0x8000000237C1AEA0, v9);
    sub_237A38140(25, 0x6953206863746142, 0xEA0000000000657ALL, *(v11 + *(v10 + 20)));
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
  }

  OUTLINED_FUNCTION_8();

  return v12();
}

uint64_t sub_237ACE238()
{
  OUTLINED_FUNCTION_0_44();
  sub_237AD4820();
  v0 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v0, v1);
  OUTLINED_FUNCTION_3_44();
  sub_237AD4820();

  OUTLINED_FUNCTION_8();

  return v2();
}

void sub_237ACE2C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_8();
  v98 = v3;
  v99 = v5;
  v6 = v2;
  v91 = v7;
  v9 = v8;
  v81 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v80 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v82 = v13;
  OUTLINED_FUNCTION_41_0();
  v85 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v84 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  OUTLINED_FUNCTION_0();
  v89 = v17;
  v90 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v94 = &v74 - v19;
  v20 = OUTLINED_FUNCTION_41_0();
  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters(v20);
  OUTLINED_FUNCTION_0();
  v86 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v87 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_41_0();
  sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v92 = v27;
  v93 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v97 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0();
  v35 = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v88 = &v74 - v37;
  v38 = *(v9 + 8);
  v102[0] = *v9;
  LOBYTE(v102[1]) = v38;
  v39 = *v6;
  v95 = v6;
  v96 = v39;
  v40 = v98;
  sub_2379EA98C(v102, v39);
  v42 = v40;
  if (v40)
  {
    goto LABEL_5;
  }

  v43 = v41;
  v98 = v35;
  v79 = v33;
  v75 = v4;
  v76 = *(v96 + 16);
  v44 = *MEMORY[0x277D2CD48];
  v45 = v92;
  v46 = *(v92 + 104);
  v47 = v97;
  v78 = 0;
  v48 = v93;
  v46(v97, v44);
  v100 = v43;
  v49 = v91;
  v77 = *(v91 + *(v21 + 20));
  memset(v102, 0, 40);
  (*(v45 + 16))(&v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v48);
  OUTLINED_FUNCTION_2_45();
  v50 = v49;
  v51 = v87;
  sub_237AD48D4(v50, v87, v52);
  v53 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v54 = (v29 + *(v86 + 80) + v53) & ~*(v86 + 80);
  v55 = (v24 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v45 + 32))(v56 + v53, v30, v48);
  OUTLINED_FUNCTION_10_30();
  sub_237AD42D8(v51, v56 + v54, v57);
  *(v56 + v55) = v76;
  (*(v89 + 104))(v94, *MEMORY[0x277D2CEC0], v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  sub_237A7B85C(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  sub_237A252E0();
  sub_237A7B85C(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  v58 = v88;
  sub_237C0686C();
  (*(v45 + 8))(v97, v48);
  v59 = v78;
  sub_237BA94EC(v58);
  v42 = v59;
  v60 = v58;
  if (v59)
  {
    (*(v98 + 8))(v58, v79);
LABEL_5:
    *v99 = v42;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    OUTLINED_FUNCTION_125();
    goto LABEL_6;
  }

  v61 = v75;
  sub_237A347A4();
  v62 = v96;
  sub_237A34D48(v61, *(v96 + 16));
  v64 = v63;
  sub_237A33B40(v62, v102);
  v65 = v98;
  sub_237A34FA0(v61, v96, 0, &v100);
  v66 = v85;
  v67 = v84;
  v68 = v100;
  v69 = v101;
  v100 = v102[0];
  v101 = v102[1];
  sub_2379DBCF4(v102[0], v102[1]);
  sub_237A70ED4(&v100, v82);
  v100 = v68;
  v101 = v69;
  sub_2379DBCF4(v68, v69);
  sub_237A70ED4(&v100, v83);

  sub_2379DBC9C(v68, v69);
  (*(v67 + 8))(v61, v66);
  (*(v65 + 8))(v60, v79);
  sub_2379DBC9C(v102[0], v102[1]);
  v70 = v99;
  *v99 = 1.0 - v64;
  v71 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v72 = *(v80 + 32);
  v73 = v81;
  v72(v70 + *(v71 + 20), v82, v81);
  v72(v70 + *(v71 + 24), v83, v73);
  type metadata accessor for MLClassifierMetrics.Contents(0);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  sub_237AD2F98(v3, v12);
  if (sub_237C0597C() == 0x67616B6361706C6DLL && v8 == 0xE900000000000065)
  {
  }

  else
  {
    v10 = sub_237C0929C();

    if ((v10 & 1) == 0)
    {
      memcpy(v11, v12, sizeof(v11));
      sub_237AD38A8();
      goto LABEL_10;
    }
  }

  sub_2379F25FC();
  if (!v0)
  {
    memcpy(v11, v12, sizeof(v11));
    sub_237B33A98(v1, v11);
    (*(v6 + 8))(v1, v4);
  }

LABEL_10:
  sub_2379D9054(v12, &qword_27DE9ADE0, &unk_237C0BF90);
  OUTLINED_FUNCTION_73();
}

void sub_237ACECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MLDataTable.subscript.getter();
  if (v32)
  {
    sub_2379DBC9C(v31, 1);
LABEL_14:
    v29 = *(a1 + 8);
    v31 = *a1;
    v28 = v31;
    LOBYTE(v32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v33) = 5;

    sub_2379DBCF4(v28, v29);
    sub_2379F21A4(&v31, inited, &v33);
    sub_2379DBC9C(v31, v32);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v6 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v6, v7);
  sub_237A60248(&v33);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v8, v9);
  v10 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v10, v11);
  if (v33 != 3)
  {
    goto LABEL_14;
  }

  MLDataTable.subscript.getter();
  sub_237AC3F10(1, sub_237AD4874, 0, v33, v34, &v31);
  v12 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v12, v13);
  v35 = v31;
  v14 = v32;
  MLDataTable.subscript.getter();
  v15 = v31;
  v16 = v32;
  if (v32)
  {
    v17 = -1;
  }

  else
  {

    v17 = sub_237A2F128();
    sub_2379DBC9C(v15, 0);
  }

  sub_2379DBC9C(v15, v16);
  sub_237AB08AC(v35, v14, &v33);
  v18 = v33;
  v19 = v34;
  if (v34)
  {
    v20 = -1;
  }

  else
  {
    sub_2379DBCF4(v33, 0);
    v20 = sub_237A2F128();
    sub_2379DBC9C(v18, 0);
  }

  sub_2379DBC9C(v18, v19);
  if (!__OFSUB__(v17, v20))
  {
    if (v17 != v20)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C17110);
      v33 = v17 - v20;
      OUTLINED_FUNCTION_34_1();
      v21 = sub_237C0924C();
      MEMORY[0x2383DC360](v21);

      MEMORY[0x2383DC360](0xD00000000000006BLL, 0x8000000237C17150);
      v33 = 3;
      OUTLINED_FUNCTION_34_1();
      v22 = sub_237C0924C();
      MEMORY[0x2383DC360](v22);

      MEMORY[0x2383DC360](8236, 0xE200000000000000);
      v33 = 21;
      OUTLINED_FUNCTION_34_1();
      v23 = sub_237C0924C();
      MEMORY[0x2383DC360](v23);

      MEMORY[0x2383DC360](0xD00000000000003CLL, 0x8000000237C171C0);
      v24 = v31;
      v25 = v32;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v26 = swift_allocError();
      *v27 = v24;
      v27[1] = v25;
      OUTLINED_FUNCTION_52(v26, v27);
      sub_2379DBC9C(v35, v14);
      return;
    }

    sub_237AB09D4(v35, v14, a2, a3);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_237ACF0A4()
{
  v0 = sub_237C0829C();
  __swift_allocate_value_buffer(v0, qword_27DEACD98);
  v1 = OUTLINED_FUNCTION_37_0();
  __swift_project_value_buffer(v1, v2);
  return sub_237C0828C();
}

uint64_t sub_237ACF120()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9C8F8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C8F8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLHandActionClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9C8F8);
  OUTLINED_FUNCTION_4_42();
  return sub_237AD48D4(v3, a1, v4);
}

uint64_t MLHandActionClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  type metadata accessor for MLHandActionClassifier(v2);
  OUTLINED_FUNCTION_2_45();
  return sub_237AD48D4(v1 + v3, v0, v4);
}

uint64_t MLHandActionClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLHandActionClassifier(v0);
  return OUTLINED_FUNCTION_19_21(*(v1 + 32));
}

uint64_t MLHandActionClassifier.trainingMetrics.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = v1 + *(type metadata accessor for MLHandActionClassifier(v2) + 32);

  return sub_2379DC1F8(v0, v3);
}

void (*MLHandActionClassifier.trainingMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLHandActionClassifier(v0);
  return nullsub_1;
}

uint64_t MLHandActionClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLHandActionClassifier(v0);
  return OUTLINED_FUNCTION_19_21(*(v1 + 36));
}

uint64_t MLHandActionClassifier.validationMetrics.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = v1 + *(type metadata accessor for MLHandActionClassifier(v2) + 36);

  return sub_2379DC1F8(v0, v3);
}

void (*MLHandActionClassifier.validationMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLHandActionClassifier(v0);
  return nullsub_1;
}

uint64_t MLHandActionClassifier.Prediction.frameRange.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MLHandActionClassifier.Prediction.results.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void MLHandActionClassifier.init(trainingData:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v73 = v1;
  v74 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLHandActionClassifier(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v70 = v7 - v6;
  v8 = OUTLINED_FUNCTION_41_0();
  v72 = type metadata accessor for MLHandActionClassifier.ModelParameters(v8);
  OUTLINED_FUNCTION_0();
  v67 = v9;
  MEMORY[0x28223BE20](v10);
  v68 = v11;
  v69 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v71 = v13;
  v14 = OUTLINED_FUNCTION_41_0();
  v65 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v66 = v17 - v16;
  v18 = OUTLINED_FUNCTION_41_0();
  v19 = type metadata accessor for MLHandActionClassifier.DataSource(v18);
  v20 = OUTLINED_FUNCTION_20(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v64 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v58[-v27];
  *v3 = MEMORY[0x277D84F90];
  v76 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v3[2] = v76;
  v29 = (v3 + *(v5 + 40));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v28);
  sub_2379E5C70(v28);
  v30 = *(v25 + 8);
  v30(v28, v23);
  *v29 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v75 = v29;
  swift_storeEnumTagMultiPayload();
  v31 = (v3 + *(v5 + 44));
  sub_237C06FAC();
  sub_2379E51D0(v28);
  sub_2379E5C70(v28);
  v30(v28, v23);
  v32 = v73;
  *v31 = 0;
  swift_storeEnumTagMultiPayload();
  v33 = v74;
  sub_237A2764C(&v79, &v77);
  if (v33)
  {
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();

    OUTLINED_FUNCTION_18_23();
    sub_237AD4820();
    sub_237AD4820();
LABEL_6:
    OUTLINED_FUNCTION_73();
    return;
  }

  v62 = v3;
  v34 = v79;
  v35 = v80;
  v63 = v77;
  LODWORD(v74) = v78;
  if (v80 == 255)
  {
    v61 = v79;
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v79);
  }

  else
  {
    _s16FeatureExtractorCMa();
    v77 = v34;
    OUTLINED_FUNCTION_33_11(v35 & 1);
    v61 = v34;
  }

  v36 = v80;
  v37 = v74;
  v60 = v79;
  if (v74 != 255)
  {
    LODWORD(v65) = v80;
    _s16FeatureExtractorCMa();
    v77 = v63;
    OUTLINED_FUNCTION_33_11(v37 & 1);
    v59 = v35;
LABEL_13:
    v72 = v79;
    v43 = v80;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_11_30();
  v38 = v66;
  sub_237AD48D4(v32, v66, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_237AD42D8(v38, v64, type metadata accessor for MLHandActionClassifier.DataSource);
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v79);
    LODWORD(v65) = v36;
    v59 = v35;
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();
    goto LABEL_13;
  }

  LODWORD(v65) = v36;
  v59 = v35;
  sub_237AD4820();
  v40 = MEMORY[0x2383DDC00](0);
  if (v40)
  {
    v41 = v40;
    type metadata accessor for CMLTable();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    type metadata accessor for _DataTable();
    swift_allocObject();
    v72 = sub_237B6C578(v42);
    v43 = 0;
LABEL_14:
    v44 = v71;
    sub_237AD48D4(v32, v71, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v45 = v44;
    v46 = v69;
    sub_237AD48D4(v45, v69, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v47 = (*(v67 + 80) + 41) & ~*(v67 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v60;
    v49 = v65;
    *(v48 + 24) = v65;
    v50 = v72;
    *(v48 + 32) = v72;
    *(v48 + 40) = v43;
    OUTLINED_FUNCTION_10_30();
    v52 = v51 + v47;
    v53 = v46;
    v55 = v54;
    sub_237AD42D8(v53, v52, v56);
    sub_2379DBCF4(v55, v49);
    sub_2379DBCF4(v50, v43);
    v57 = v70;
    sub_2379DDB00(&unk_237C115F0, v48);

    OUTLINED_FUNCTION_42_7();
    sub_2379DBC84(v61, v59);
    OUTLINED_FUNCTION_17_19();
    sub_237AD4820();
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();
    sub_237AD4820();

    OUTLINED_FUNCTION_18_23();
    sub_237AD4820();
    sub_237AD4820();
    sub_237AD42D8(v57, v62, type metadata accessor for MLHandActionClassifier);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237ACFC4C(uint64_t a1, void *a2, char a3, void *a4, char a5, uint64_t a6)
{
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  *(v6 + 25) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc();
  sub_2379DBCF4(a2, a3 & 1);
  sub_2379DBCF4(a4, a5 & 1);

  return MEMORY[0x2822009F8](sub_237ACFD18);
}

uint64_t sub_237ACFD18()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 26);
  v2 = *(v0 + 25);
  v3 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v2 & 1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v1 & 1;
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v4, v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2379DCCB4;

  return sub_237ACDB54();
}

void sub_237ACFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_8();
  v105 = v4;
  v111 = v5;
  v112 = v6;
  v109 = v8;
  v110 = v7;
  OUTLINED_FUNCTION_146();
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v103 = v9;
  v104 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v102 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v101 = v14;
  OUTLINED_FUNCTION_41_0();
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v107 = v15;
  v108 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58();
  v106 = v18;
  v19 = OUTLINED_FUNCTION_41_0();
  v20 = type metadata accessor for MLClassifierMetrics(v19);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v98 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  v3[2] = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v30 = type metadata accessor for MLHandActionClassifier(0);
  v31 = (v3 + *(v30 + 32));
  sub_237C06FAC();
  v32 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v33 = OUTLINED_FUNCTION_53_6();
  sub_2379E51D0(v33);
  v34 = OUTLINED_FUNCTION_53_6();
  sub_2379E5C70(v34);
  v35 = *(v26 + 8);
  v35(v29, v24);
  *v31 = 0;
  v36 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v97 = v31;
  OUTLINED_FUNCTION_62_5(v31);
  v37 = (v3 + *(v30 + 36));
  sub_237C06FAC();
  v38 = OUTLINED_FUNCTION_53_6();
  sub_2379E51D0(v38);
  v100 = v32;
  v39 = OUTLINED_FUNCTION_53_6();
  sub_2379E5C70(v39);
  v35(v29, v24);
  v40 = v112;
  v41 = v109;
  *v37 = 0;
  v94 = v37;
  v99 = v36;
  OUTLINED_FUNCTION_62_5(v37);
  v3[1] = v110;
  v42 = v111;
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v41, v3 + v43, v44);
  *v3 = v40;

  sub_237AC9A74(v42, &v115, 0xD000000000000012, 0x8000000237C170A0);
  if (!v116)
  {

    sub_2379D9054(&v115, &qword_27DE9A998, &unk_237C0C100);
LABEL_7:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v52 = swift_allocError();
    *v53 = 0xD00000000000002CLL;
    v53[1] = 0x8000000237C170C0;
    OUTLINED_FUNCTION_52(v52, v53);
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    goto LABEL_8;
  }

  v45 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v46 = v113;
  v47 = v106;
  sub_237A347A4();
  v48 = *(v40 + 16);
  sub_237A34D48(v47, v48);
  v50 = v49;
  v51 = v105;
  sub_237A33B40(v40, &v115);
  if (v51)
  {

    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    (*(v108 + 8))(v47, v107);
  }

  else
  {
    v93 = v48;
    v105 = v45;
    v110 = v46;
    sub_237A34FA0(v47, v40, 0, &v113);
    v54 = v107;
    v92 = 0;
    v55 = v113;
    v56 = v114;
    v113 = OUTLINED_FUNCTION_39_7();
    v114 = v57;
    sub_2379DBCF4(v113, v57);
    v58 = v42;
    v59 = v101;
    sub_237A70ED4(&v113, v101);
    v113 = v55;
    v114 = v56;
    v60 = v102;
    sub_237A70ED4(&v113, v102);
    v61 = *(v108 + 8);
    v108 += 8;
    v106 = v61;
    v61(v47, v54);
    v62 = OUTLINED_FUNCTION_39_7();
    sub_2379DBC9C(v62, v63);
    v64 = v98;
    *v98 = 1.0 - v50;
    v65 = v100;
    v66 = v104 + 32;
    v67 = *(v104 + 32);
    v68 = v59;
    v69 = v103;
    v67(v64 + *(v100 + 20), v68, v103);
    v70 = v64 + *(v65 + 24);
    v104 = v66;
    v91 = v67;
    v67(v70, v60, v69);
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v64, v97);
    sub_237AC9A74(v58, &v115, 0xD000000000000014, 0x8000000237C170F0);

    if (!v116)
    {

      OUTLINED_FUNCTION_0_44();
      sub_237AD4820();
      sub_2379D9054(&v115, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_10;
    }

    v71 = swift_dynamicCast();
    v72 = v92;
    if ((v71 & 1) == 0)
    {

      OUTLINED_FUNCTION_0_44();
      goto LABEL_9;
    }

    v73 = v96;
    sub_237A347A4();
    sub_237A34D48(v73, v93);
    v75 = v74;
    v76 = v112;
    sub_237A33B40(v112, &v115);
    if (!v72)
    {
      sub_237A34FA0(v73, v76, 0, &v113);
      v77 = v107;

      v78 = v73;
      v79 = v113;
      v80 = v114;
      v113 = OUTLINED_FUNCTION_39_7();
      v114 = v81;
      sub_2379DBCF4(v113, v81);
      v82 = v101;
      sub_237A70ED4(&v113, v101);
      v113 = v79;
      v114 = v80;
      sub_2379DBCF4(v79, v80);
      v92 = 0;
      v83 = v102;
      sub_237A70ED4(&v113, v102);

      sub_2379DBC9C(v79, v80);
      OUTLINED_FUNCTION_0_44();
      sub_237AD4820();
      v106(v78, v77);
      v84 = OUTLINED_FUNCTION_39_7();
      sub_2379DBC9C(v84, v85);
      v86 = v95;
      *v95 = 1.0 - v75;
      v87 = v100;
      v88 = v103;
      v89 = v91;
      v91(v86 + *(v100 + 20), v82, v103);
      v89(v86 + *(v87 + 24), v83, v88);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v86, v94);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    v106(v73, v107);
  }

LABEL_8:
  OUTLINED_FUNCTION_3_44();
LABEL_9:
  sub_237AD4820();
LABEL_10:
  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_8();
  v6 = v5;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v53 = v9 - v8;
  v10 = OUTLINED_FUNCTION_41_0();
  v52 = _s20PersistentParametersVMa(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v55 = v13 - v12;
  OUTLINED_FUNCTION_41_0();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v59 = v15;
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v56 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v58 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_52_8();
  *v6 = MEMORY[0x277D84F90];
  v57 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v24 = type metadata accessor for MLHandActionClassifier(0);
  v25 = (v6 + v24[8]);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v4);
  sub_2379E5C70(v4);
  v26 = *(v22 + 8);
  v26(v4, v20);
  *v25 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_62_5(v25);
  v54 = v6;
  v27 = (v6 + v24[9]);
  sub_237C06FAC();
  sub_2379E51D0(v4);
  sub_2379E5C70(v4);
  v26(v4, v20);
  *v27 = 0;
  OUTLINED_FUNCTION_62_5(v27);
  sub_237C05A5C();
  (*(v59 + 16))(v56, v58, v60);
  sub_237A02C3C(v56, v55);
  if (v3)
  {
    OUTLINED_FUNCTION_7_29();
    sub_237AD4820();
    (*(v59 + 8))(v58, v60);

    sub_237AD4820();
    sub_237AD4820();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_16_17();
    sub_237AD48D4(v28, v53, v29);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v30 = *v53;
      v31 = *(v53 + 8);

      sub_2379DF938(v31, v61);

      v32 = OUTLINED_FUNCTION_37_0();
      sub_2379DFAE0(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v35, v36);
      sub_2379DFC10(v61[2], v62);
      sub_2379DBC9C(v30, v31);
    }

    else
    {
      sub_237AB4184();
      sub_2379DFFEC(v37);
      OUTLINED_FUNCTION_1_45();
      sub_237AD4820();
    }

    v38 = v54 + v24[7];
    OUTLINED_FUNCTION_11_30();
    sub_237AD48D4(v55 + v39, v38, v40);
    v41 = *(v55 + v52[6]);
    v42 = *(v55 + v52[7]);
    v43 = *(v55 + v52[8]);
    v44 = *(v55 + v52[10]);
    v45 = *(v55 + v52[9]);
    v46 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *(v38 + v46[5]) = v41;
    *(v38 + v46[6]) = v42;
    *(v38 + v46[7]) = v43;
    *(v38 + v46[8]) = v44;
    *(v38 + v46[10]) = v45;
    _s8GraphCNNCMa(0);
    OUTLINED_FUNCTION_25_16();
    swift_allocObject();
    v47 = OUTLINED_FUNCTION_85();
    v49 = sub_237AED020(v47, v48, 21, 3, v43);
    sub_237AE8BE0();

    sub_2379DD56C();
    v51 = v50;

    OUTLINED_FUNCTION_7_29();
    sub_237AD4820();
    OUTLINED_FUNCTION_6_35();
    sub_237AD4820();
    (*(v59 + 8))(v58, v60);

    v54[1] = v49;
    v54[2] = v51;
  }

  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_237AD0D3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237AD0DD0;

  return sub_237BAF670();
}

uint64_t sub_237AD0DD0(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = a1;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

void static MLHandActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C910, &qword_237C11608);
    OUTLINED_FUNCTION_25_16();
    swift_allocObject();
    sub_237BEC2EC();
  }
}

void static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-1] - v12;
  v14 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v20 = OUTLINED_FUNCTION_20(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = OUTLINED_FUNCTION_16_17();
  sub_237AD48D4(v24, v23, v25);
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(a2, v18, v26);
  OUTLINED_FUNCTION_4_42();
  sub_237AD48D4(a3, v13, v27);
  v28 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_25_16();
  swift_allocObject();
  sub_237B75084();
  if (!v3)
  {
    v32[3] = v28;
    v32[4] = &off_284AC5738;
    v32[0] = v29;
    OUTLINED_FUNCTION_4_42();
    sub_237AD48D4(a3, v10, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C918, &unk_237C11610);
    OUTLINED_FUNCTION_25_16();
    swift_allocObject();
    sub_2379E4210(v32, v10, 25);
  }
}

void static MLHandActionClassifier.resume(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C910, &qword_237C11608);
  OUTLINED_FUNCTION_25_16();
  swift_allocObject();

  sub_237BEC2EC();
}

void static MLHandActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-1] - v9;
  OUTLINED_FUNCTION_4_42();
  sub_237AD48D4(a1, v10, v11);
  v12 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_25_16();
  swift_allocObject();
  OUTLINED_FUNCTION_125();
  sub_237B74C2C();
  if (!v1)
  {
    v16[3] = v12;
    v16[4] = &off_284AC5738;
    v16[0] = v13;
    OUTLINED_FUNCTION_4_42();
    sub_237AD48D4(a1, v7, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C918, &unk_237C11610);
    OUTLINED_FUNCTION_25_16();
    swift_allocObject();
    sub_2379E4210(v16, v7, 25);
  }
}

uint64_t sub_237AD12BC(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C930, &unk_237C11710);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = (&v51 - v11);
  v56 = _s20PersistentParametersVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v55 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v27 = a1;
    a4(v12);
    v28 = &qword_27DE9C930;
    v29 = &unk_237C11710;
    v30 = v12;
    return sub_2379D9054(v30, v28, v29);
  }

  v32 = v26;
  v53 = a5;
  v54 = a4;
  sub_2379E8624(a3 + qword_27DEACD88, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
  v33 = OUTLINED_FUNCTION_46();
  type metadata accessor for HandActionClassifierTrainingSessionDelegate(v33);
  result = swift_dynamicCast();
  if (result)
  {
    v34 = v57;
    v35 = *(v57 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
    if (v35)
    {
      v36 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess();
      sub_2379FC864(v34 + v36, v19, &qword_27DE9C938, &unk_237C14AB0);
      v37 = v56;
      if (__swift_getEnumTagSinglePayload(v19, 1, v56))
      {

        v28 = &qword_27DE9C938;
        v29 = &unk_237C14AB0;
        v30 = v19;
        return sub_2379D9054(v30, v28, v29);
      }

      v38 = v55;
      sub_237AD48D4(v19, v55, _s20PersistentParametersVMa);

      sub_2379D9054(v19, &qword_27DE9C938, &unk_237C14AB0);
      OUTLINED_FUNCTION_11_30();
      sub_237AD48D4(v38 + v39, v24, v40);
      v41 = *(v38 + v37[6]);
      v42 = *(v38 + v37[7]);
      v43 = v37[8];
      v44 = v37[9];
      v52 = v35;
      v45 = *(v38 + v43);
      v46 = *(v38 + v37[10]);
      v47 = *(v38 + v44);
      OUTLINED_FUNCTION_6_35();
      sub_237AD4820();
      *(v24 + v20[5]) = v41;
      *(v24 + v20[6]) = v42;
      *(v24 + v20[7]) = v45;
      *(v24 + v20[8]) = v46;
      *(v24 + v20[10]) = v47;
      OUTLINED_FUNCTION_10_30();
      v49 = sub_237AD42D8(v24, v32, v48);
      v50 = *(v34 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
      if (v50)
      {
        MEMORY[0x28223BE20](v49);
        *(&v51 - 4) = v52;
        *(&v51 - 3) = v32;
        *(&v51 - 2) = v34;
        *(&v51 - 1) = v50;

        sub_237BBDD08(sub_237AD47FC, v12);

        v54(v12);

        sub_2379D9054(v12, &qword_27DE9C930, &unk_237C11710);
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_44();
      return sub_237AD4820();
    }

    else
    {
    }
  }

  return result;
}

void sub_237AD1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v11 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237AD48D4(a2, v13, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v14 = *(a3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  sub_237ACFDEC(a1, v13, v14);
  if (v7)
  {
    *a5 = v7;
  }
}

void sub_237AD1818(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) == 3)
  {
    v4[1] = v2;
    v4[2] = v3;
    v4[0] = *result;
    sub_237AD185C(v4, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_237AD185C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v111 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_237AC8938(v111, 65600);
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = v5;
  v7 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_56:
    *a2 = 0;
    return;
  }

  v115 = 0;
  v116 = 0;
  v114 = v3;

  v106 = v7;
  while (1)
  {
    sub_237BABD8C(&v111);
    v8 = *(&v111 + 1);
    *v107 = v111;
    v9 = v112;
    if (v113 != 3)
    {
      if (v113 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v6);
        *a2 = v111;
        return;
      }

      sub_2379E9268(v111, *(&v111 + 1), v112, v113);

      goto LABEL_63;
    }

    sub_2379E9288(*(&v111 + 1), v112, 3);
    sub_237A2E9F4();
    if (sub_237A01878() != 3)
    {

      OUTLINED_FUNCTION_58_6();
      OUTLINED_FUNCTION_58_6();
      goto LABEL_56;
    }

    v100 = v9;
    sub_2379E9288(v8, v9, 3);
    v101 = v8;
    v102 = a2;
    v104 = v6;
LABEL_7:
    sub_237BABD8C(&v111);
    v10 = *(&v111 + 1);
    *v108 = v111;
    v11 = v112;
    v12 = v113;
    if (v113 == 3)
    {
      break;
    }

    if (v113 != 255)
    {
      sub_2379E9268(v107[0], v8, v100, 3);
      sub_2379E9268(v107[0], v8, v100, 3);
      v90 = v108[0];
      v91 = v10;
      v92 = v11;
      v93 = v12;
LABEL_62:
      sub_2379E9268(v90, v91, v92, v93);

LABEL_63:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v74, v75, v76, v77);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v78, v79, v80, v81);
  }

  sub_2379E9288(*(&v111 + 1), v112, 3);
  sub_237A2E9F4();
  if (sub_237A01878() != 21)
  {
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v94, v95, v96, v97);
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    goto LABEL_62;
  }

  v103 = v11;
  sub_2379E9288(v10, v11, 3);
  v13 = 0;
  v109 = v10;
  while (1)
  {
    while (1)
    {
      if (v13 == sub_237A2E9F4())
      {
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v66, v67, v68, v69);
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v70, v71, v72, v73);

        v8 = v101;
        a2 = v102;
        goto LABEL_7;
      }

      v14 = sub_237A2E9C8(v13);
      switch(sub_237A2E910())
      {
        case 1u:

          sub_237B0E848();
          v44 = v43;

          v17 = 0;
          v16 = v44;
          v18 = 1;
          goto LABEL_30;
        case 2u:

          v16 = sub_237A2DE60();
          v17 = v41;
          v18 = 2;

          goto LABEL_30;
        case 3u:
          v42 = sub_237B0DD68(*(v14 + 16));
          if (!v42)
          {
            goto LABEL_78;
          }

          type metadata accessor for CMLSequence();
          v16 = swift_allocObject();
          v17 = 0;
          *(v16 + 16) = v42;
          *(v16 + 24) = 1;
          v18 = 3;
          goto LABEL_30;
        case 4u:
          v19 = sub_237B0DDC8(*(v14 + 16));
          if (!v19)
          {
            goto LABEL_77;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v19;
          v16 = MEMORY[0x277D84F98];
          v110 = MEMORY[0x277D84F98];
          swift_retain_n();
          v20 = 0;
          break;
        case 5u:

          v16 = 0;
          v17 = 0;
          v18 = 6;
          goto LABEL_30;
        case 6u:

          sub_237AC8278(v45, &v111);
          v16 = v111;
          if (!v111)
          {
            goto LABEL_79;
          }

          v17 = 0;
          v18 = 5;
          goto LABEL_30;
        default:
          v15 = *(v14 + 16);

          v16 = sub_237B0ECCC(v15);

          v17 = 0;
          v18 = 0;
          goto LABEL_30;
      }

      while (v20 != sub_237A2EAA4())
      {
        sub_237A2EB64(v20);
        v20 = sub_237B6A974(v20);
        v21 = sub_237A2DE60();
        v23 = v22;

        sub_237AFC548(v24, &v111);

        v25 = v111;
        v105 = v112;
        *&v111 = v21;
        *(&v111 + 1) = v23;
        LOBYTE(v112) = 2;
        v26 = OUTLINED_FUNCTION_84();
        v28 = sub_237ACB180(v26, v27, 2);
        v30 = *(v16 + 16);
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_75;
        }

        v34 = v29;
        if (*(v16 + 24) < v33)
        {
          sub_237ABF994(v33, 1);
          v16 = v110;
          v28 = sub_237ACB180(v111, *(&v111 + 1), v112);
          if ((v34 & 1) != (v35 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_82:
            OUTLINED_FUNCTION_50();
            v98 = swift_allocError();
            swift_willThrow();

            v99 = v98;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              MEMORY[0x2383DC360](39, 0xE100000000000000);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v25, *(&v25 + 1), v105);

            sub_2379E8CE8(v111, *(&v111 + 1), v112);

            goto LABEL_80;
          }
        }

        if (v34)
        {
          goto LABEL_82;
        }

        *(v16 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = *(v16 + 48) + 24 * v28;
        v37 = v112;
        *v36 = v111;
        *(v36 + 16) = v37;
        v38 = *(v16 + 56) + 24 * v28;
        *v38 = v25;
        *(v38 + 16) = v105;
        v39 = *(v16 + 16);
        v32 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v32)
        {
          goto LABEL_76;
        }

        *(v16 + 16) = v40;
      }

      v18 = 4;

      v17 = 0;
      v6 = v104;
LABEL_30:
      if (v13 >= sub_237A2E9F4())
      {
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
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_80:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v46 = [v6 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v47 = sub_237C0893C();

      if ((v47 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x2383DCAF0](0, v47);
      }

      else
      {
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v48 = *(v47 + 32);
      }

      v49 = v48;

      v50 = [v49 integerValue];

      v51 = *v107 * v50;
      if ((*v107 * v50) >> 64 != (*v107 * v50) >> 63)
      {
        goto LABEL_67;
      }

      v52 = [v6 strides];
      v53 = sub_237C0893C();

      if ((v53 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2383DCAF0](1, v53);
      }

      else
      {
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_70;
        }

        v54 = *(v53 + 40);
      }

      v55 = v54;

      v56 = [v55 integerValue];

      v57 = *v108 * v56;
      if ((*v108 * v56) >> 64 != (*v108 * v56) >> 63)
      {
        goto LABEL_69;
      }

      v58 = v51 + v57;
      if (__OFADD__(v51, v57))
      {
        goto LABEL_71;
      }

      v59 = [v6 strides];
      v60 = sub_237C0893C();

      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x2383DCAF0](2, v60);
      }

      else
      {
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_73;
        }

        v61 = *(v60 + 48);
      }

      v62 = v61;

      v63 = [v62 integerValue];

      v64 = v13 * v63;
      if ((v13 * v63) >> 64 != (v13 * v63) >> 63)
      {
        goto LABEL_72;
      }

      v32 = __OFADD__(v58, v64);
      v65 = v58 + v64;
      if (v32)
      {
        goto LABEL_74;
      }

      ++v13;
      if (v18)
      {
        break;
      }

      *(v106 + 8 * v65) = v16;
    }

    if (v18 != 1)
    {
      break;
    }

    *(v106 + 8 * v65) = v16;
  }

  sub_2379E8CE8(v16, v17, v18);
  sub_2379E9268(v108[0], v109, v103, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v82, v83, v84, v85);
  sub_2379E9268(v108[0], v109, v103, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v86, v87, v88, v89);

  *v102 = 0;
}

void sub_237AD24C8(uint64_t a1, uint64_t a2)
{
  v6 = v2 + *(type metadata accessor for MLHandActionClassifier(0) + 28);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v8 = sub_237AB1D68(a1, *MEMORY[0x277CC08F0], *(MEMORY[0x277CC08F0] + 8), *(MEMORY[0x277CC08F0] + 16), *MEMORY[0x277CC0888], *(MEMORY[0x277CC0888] + 8), *(MEMORY[0x277CC0888] + 16), *(v6 + *(v7 + 40)));
  if (!v3)
  {
    v9 = v8;
    v10 = v8[2];
    v31 = a2;
    if (v10)
    {
      v32 = MEMORY[0x277D84F90];
      sub_237C08FCC();
      v11 = 4;
      do
      {
        v12 = v9[v11];
        sub_237C08F8C();
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        ++v11;
        --v10;
      }

      while (v10);

      v13 = v32;
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v14 = sub_237AB0E94(v13, *(v6 + *(v7 + 28)), 21);

    v15 = 0;
    v30 = *(v14 + 16);
    v16 = (v14 + 48);
    v17 = MEMORY[0x277D84F90];
    for (i = v14; ; v14 = i)
    {
      if (v30 == v15)
      {

        return;
      }

      if (v15 >= *(v14 + 16))
      {
        break;
      }

      v18 = *(v16 - 1);
      v19 = v16;
      v20 = *v16;
      v21 = *(v16 - 2);
      sub_237AD27E0(v21, a2);
      v23 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC1C78(0, *(v17 + 16) + 1, 1, v17);
        v17 = v27;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_237BC1C78(v24 > 1, v25 + 1, 1, v17);
        v17 = v28;
      }

      *(v17 + 16) = v25 + 1;
      v26 = (v17 + 24 * v25);
      v26[4] = v18;
      v26[5] = v20;
      v26[6] = v23;
      v16 = v19 + 3;
      ++v15;
      a2 = v31;
    }

    __break(1u);
  }
}

void sub_237AD2794(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>, uint64_t a4@<X1>)
{
  sub_237AD24C8(a1, *(a4 + 16));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = v7;
  }
}

void sub_237AD27E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_8();
  v5 = v4;
  v7 = v6;
  v81 = *MEMORY[0x277D85DE8];
  v8 = [v6 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v9 = sub_237C0893C();

  v10 = sub_237A254D8(v9);

  if (v10 == 3 && (v11 = [v7 shape], v12 = sub_237C0893C(), v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0), v13 = swift_allocObject(), *(v13 + 16) = xmmword_237C0BA30, v14 = v2 + *(type metadata accessor for MLHandActionClassifier(0) + 28), *(v13 + 32) = objc_msgSend(objc_allocWithZone(MEMORY[0x277CCABB0]), sel_initWithInteger_, *(v14 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28))), *(v13 + 40) = objc_msgSend(objc_allocWithZone(MEMORY[0x277CCABB0]), sel_initWithInteger_, 3), *(v13 + 48) = objc_msgSend(objc_allocWithZone(MEMORY[0x277CCABB0]), sel_initWithInteger_, 21), LOBYTE(v14) = sub_237AC7718(v12, v13), , , (v14 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = 0x7365736F70;
    *(inited + 40) = 0xE500000000000000;
    v16 = [objc_opt_self() featureValueWithMultiArray_];
    *(inited + 72) = sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
    *(inited + 48) = v16;
    sub_237C085AC();
    v17 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v18 = OUTLINED_FUNCTION_125();
    v19 = sub_237AD4714(v18);
    if (!v3)
    {
      v20 = v19;
      *&v79[0] = 0;
      v21 = [v5 predictionFromFeatures:v19 error:v79];
      if (v21)
      {
        v22 = v21;
        v23 = *&v79[0];
        v24 = sub_237C086BC();
        v25 = [v22 featureValueForName_];

        if (v25)
        {
          v26 = [v25 dictionaryValue];

          v27 = sub_237C0857C();
          v28 = *(v27 + 16);
          if (v28)
          {
            v56 = v20;
            v67 = MEMORY[0x277D84F90];
            sub_237AC8C74();
            v31 = sub_237B024B4(v27);
            v32 = 0;
            v33 = v27 + 64;
            v58 = v29;
            v59 = v28;
            v57 = v27 + 72;
            v60 = v27 + 64;
            v61 = v27;
            do
            {
              if (v31 < 0 || v31 >= 1 << *(v27 + 32))
              {
                __break(1u);
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
              }

              v34 = v31 >> 6;
              if ((*(v33 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
              {
                goto LABEL_32;
              }

              if (*(v27 + 36) != v29)
              {
                goto LABEL_33;
              }

              v63 = v32;
              v64 = v29;
              v62 = v30;
              sub_2379E8F20(*(v27 + 48) + 40 * v31, v79);
              v35 = *(*(v27 + 56) + 8 * v31);
              v76[0] = v79[0];
              v76[1] = v79[1];
              v77 = v80;
              v78 = v35;
              sub_2379FC864(v76, v70, &qword_27DE9AC58, &qword_237C0B9A0);
              v36 = v72;
              v37 = v35;

              v73 = v70[0];
              v74 = v70[1];
              v75 = v71;
              swift_dynamicCast();
              sub_2379FC864(v76, v68, &qword_27DE9AC58, &qword_237C0B9A0);
              v38 = v69;
              [v69 doubleValue];
              v40 = v39;

              sub_2379D9054(v76, &qword_27DE9AC58, &qword_237C0B9A0);
              sub_2379E8F7C(v68);
              v41 = *(v67 + 16);
              if (v41 >= *(v67 + 24) >> 1)
              {
                sub_237AC8C74();
              }

              *(v67 + 16) = v41 + 1;
              v42 = (v67 + 24 * v41);
              v42[4] = v65;
              v42[5] = v66;
              v42[6] = v40;
              v27 = v61;
              v43 = 1 << *(v61 + 32);
              if (v31 >= v43)
              {
                goto LABEL_34;
              }

              v33 = v60;
              v44 = *(v60 + 8 * v34);
              if ((v44 & (1 << v31)) == 0)
              {
                goto LABEL_35;
              }

              if (*(v61 + 36) != v64)
              {
                goto LABEL_36;
              }

              v45 = v44 & (-2 << (v31 & 0x3F));
              if (v45)
              {
                v43 = __clz(__rbit64(v45)) | v31 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v46 = v34 << 6;
                v47 = v34 + 1;
                v48 = (v57 + 8 * v34);
                while (v47 < (v43 + 63) >> 6)
                {
                  v50 = *v48++;
                  v49 = v50;
                  v46 += 64;
                  ++v47;
                  if (v50)
                  {
                    sub_2379E94D0(v31, v64, v62 & 1);
                    v43 = __clz(__rbit64(v49)) + v46;
                    goto LABEL_24;
                  }
                }

                sub_2379E94D0(v31, v64, v62 & 1);
              }

LABEL_24:
              v30 = 0;
              v32 = v63 + 1;
              v31 = v43;
              v29 = v58;
            }

            while (v63 + 1 != v59);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_2379E8AF0();
          OUTLINED_FUNCTION_50();
          v54 = swift_allocError();
          *v55 = 0xD000000000000028;
          v55[1] = 0x8000000237C17070;
          OUTLINED_FUNCTION_52(v54, v55);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v53 = *&v79[0];
        sub_237C0593C();

        swift_willThrow();
      }
    }
  }

  else
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v51 = swift_allocError();
    *v52 = 0xD000000000000025;
    v52[1] = 0x8000000237C17020;
    OUTLINED_FUNCTION_52(v51, v52);
  }

  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.evaluation(on:)()
{
  MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v5);
  if (!v1)
  {
    v2 = v5;
    v3 = v6;
    v4 = type metadata accessor for MLHandActionClassifier(0);
    sub_237ACE2C8(&v5, v0 + *(v4 + 28));
    sub_2379DBC9C(v2, v3);
  }
}

void sub_237AD2F98(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MLHandActionClassifier(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  memcpy(__dst, a1, 0x48uLL);
  v13 = __dst[1];
  if (!__dst[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    OUTLINED_FUNCTION_80();
    *&v85[0] = *(v9 + *(OUTLINED_FUNCTION_59_5(v26, v27) + 28));
    *(inited + 48) = sub_237C0924C();
    *(inited + 56) = v28;
    OUTLINED_FUNCTION_80();
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = v29;
    *(inited + 80) = sub_237C08A6C();
    *(inited + 88) = v30;
    v31 = sub_237C085AC();
    v32 = NSFullUserName();
    v33 = sub_237C086EC();
    v35 = v34;

    *a2 = v33;
    a2[1] = v35;
    a2[2] = 0xD000000000000033;
    a2[3] = 0x8000000237C17C90;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = 49;
    a2[7] = 0xE100000000000000;
    a2[8] = v31;
    return;
  }

  v82 = __dst[0];
  v14 = __dst[8];
  v15 = a1[2];
  v86 = a1[1];
  v87 = v15;
  v88 = a1[3];
  if (!__dst[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_237C0B670;
    OUTLINED_FUNCTION_80();
    v83[0] = *(v9 + *(OUTLINED_FUNCTION_59_5(v37, v38) + 28));
    memcpy(v85, a1, 0x48uLL);
    sub_237AD4878(v85, v84);
    *(v36 + 48) = sub_237C0924C();
    *(v36 + 56) = v39;
    OUTLINED_FUNCTION_80();
    *(v36 + 64) = 0xD000000000000011;
    *(v36 + 72) = v40;
    *(v36 + 80) = sub_237C08A6C();
    *(v36 + 88) = v41;
    v42 = sub_237C085AC();
    goto LABEL_33;
  }

  v81 = __dst[1];
  sub_2379FC864(__dst, v85, &qword_27DE9ADE0, &unk_237C0BF90);

  v16 = sub_237AC9AB8(0xD000000000000016, 0x8000000237C1AEA0, v14);
  v80 = v9;
  if (!v17)
  {
    v43 = v2 + *(v5 + 28);
    *&v85[0] = *(v43 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
    sub_237C0924C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v14;
    goto LABEL_21;
  }

  v18 = v17;
  v79 = "Number of Labels";
  v19 = v2 + *(v5 + 28);
  v20 = v16;
  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v78 = *(v19 + *(v21 + 28));
  *&v85[0] = v78;
  if (v20 != sub_237C0924C() || v18 != v22)
  {
    v77 = v21;
    v24 = sub_237C0929C();

    if (v24)
    {
      goto LABEL_14;
    }

    if (qword_27DE9A608 != -1)
    {
      OUTLINED_FUNCTION_22_15(&qword_27DE9A608);
    }

    v44 = sub_237C0829C();
    __swift_project_value_buffer(v44, qword_27DEACD98);
    v45 = OUTLINED_FUNCTION_15_22();
    sub_237AD48D4(v45, v12, v46);

    v47 = sub_237C0827C();
    v48 = sub_237C08C1C();

    LODWORD(v76) = v48;
    v49 = os_log_type_enabled(v47, v48);
    v50 = v77;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v75 = v47;
      v52 = v51;
      v74 = swift_slowAlloc();
      *&v85[0] = v74;
      *v52 = 136315394;
      v53 = sub_237BAAC6C(v20, v18, v85);

      *(v52 + 4) = v53;
      *(v52 + 12) = 2048;
      v54 = *&v12[*(v5 + 28) + *(v50 + 28)];
      OUTLINED_FUNCTION_3_44();
      sub_237AD4820();
      *(v52 + 14) = v54;
      v55 = v75;
      _os_log_impl(&dword_2379D3000, v75, v76, "Prediction window size %s is set incorrectly, change it to %ld frames.", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_63_4();
    }

    else
    {
      OUTLINED_FUNCTION_3_44();
      sub_237AD4820();
    }

    *&v85[0] = v78;
    sub_237C0924C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v14;
LABEL_21:
    sub_237B40C78();
    v42 = *&v85[0];
    goto LABEL_22;
  }

LABEL_14:

  v42 = v14;
LABEL_22:
  v56 = sub_237AC9AB8(0xD000000000000011, 0x8000000237C1AEC0, v42);
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    v79 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (v58 == sub_237C08A6C() && v59 == v60)
    {
    }

    else
    {
      v78 = "Prediction Window Size";
      v62 = sub_237C0929C();

      if ((v62 & 1) == 0)
      {
        if (qword_27DE9A608 != -1)
        {
          OUTLINED_FUNCTION_22_15(&qword_27DE9A608);
        }

        v64 = sub_237C0829C();
        __swift_project_value_buffer(v64, qword_27DEACD98);
        v65 = OUTLINED_FUNCTION_15_22();
        v66 = v80;
        sub_237AD48D4(v65, v80, v67);

        v68 = sub_237C0827C();
        v69 = sub_237C08C1C();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          LODWORD(v77) = v69;
          v71 = v70;
          v76 = swift_slowAlloc();
          *&v85[0] = v76;
          *v71 = 136315394;
          v72 = sub_237BAAC6C(v58, v59, v85);

          *(v71 + 4) = v72;
          *(v71 + 12) = 2048;
          v73 = *(v66 + *(v5 + 28) + *(v79 + 10));
          OUTLINED_FUNCTION_3_44();
          sub_237AD4820();
          *(v71 + 14) = v73;
          _os_log_impl(&dword_2379D3000, v68, v77, "Target frame rate %s is set incorrectly, change it to %f.", v71, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_63_4();
        }

        else
        {

          OUTLINED_FUNCTION_3_44();
          sub_237AD4820();
        }

        v13 = v81;
        sub_237C08A6C();
        swift_isUniquelyReferenced_nonNull_native();
        *&v85[0] = v42;
        OUTLINED_FUNCTION_34_1();
        sub_237B40C78();

        v42 = *&v85[0];
        goto LABEL_33;
      }
    }
  }

  else
  {
    type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    sub_237C08A6C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = v42;
    OUTLINED_FUNCTION_34_1();
    sub_237B40C78();

    v42 = *&v85[0];
  }

  v13 = v81;
LABEL_33:
  v63 = v82;
  *v84 = v82;
  *&v84[8] = v13;
  *&v84[16] = v86;
  *&v84[32] = v87;
  *&v84[48] = v88;
  *&v84[64] = v42;
  memcpy(a2, v84, 0x48uLL);
  *&v85[0] = v63;
  *(&v85[0] + 1) = v13;
  v85[1] = v86;
  v85[2] = v87;
  v85[3] = v88;
  *&v85[4] = v42;
  sub_237AD4878(v84, v83);
  sub_2379FC064(v85);
}

void sub_237AD38A8()
{
  OUTLINED_FUNCTION_74();
  v15 = v2;
  v3 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  sub_2379F25FC();
  if (!v0)
  {
    memcpy(v14, v15, sizeof(v14));
    sub_237BB0228(v14);
    sub_237C07E5C();
    (*(v5 + 8))(v9, v3);
    (*(v12 + 8))(v1, v10);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t type metadata accessor for MLHandActionClassifier(uint64_t a1)
{
  result = qword_27DE9C920;
  if (!qword_27DE9C920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLHandActionClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v24[1] = v3;
  v25 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v17 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v26, v5, sizeof(v26));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLHandActionClassifier.write(to:metadata:)();
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_73();
}

unint64_t MLHandActionClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for MLHandActionClassifier(0);
  v6 = MLHandActionClassifier.ModelParameters.description.getter();
  v8 = v7;
  ML19MLClassifierMetricsV16debugDescriptionSSvg_0 = _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  v11 = v10;
  sub_237AD48D4(v0 + *(v5 + 36), v4, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  sub_237AD4820();
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v6, v8);

  OUTLINED_FUNCTION_80();
  v16 = v12;
  MEMORY[0x2383DC360](ML19MLClassifierMetricsV16debugDescriptionSSvg_0, v11);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v16);

  if (v5 <= 1)
  {
    OUTLINED_FUNCTION_80();
    v17 = v13;
    v14 = OUTLINED_FUNCTION_90();
    MEMORY[0x2383DC360](v14);
    MEMORY[0x2383DC360](0xD000000000000020, v17);
  }

  return 0xD000000000000021;
}

id MLHandActionClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLHandActionClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AD3EE4()
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  sub_2379DBC9C(*(v0 + 32), *(v0 + 40));
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (OUTLINED_FUNCTION_65_4() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(OUTLINED_FUNCTION_65_4())
    {
      case 0u:
        v6 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v8 = *(v7 + 8);
        v8(v0 + v4, v6);
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v10 = OUTLINED_FUNCTION_46_6(v9);
        (v8)(v10);
        OUTLINED_FUNCTION_105(v1[16]);

        OUTLINED_FUNCTION_105(v1[20]);

        OUTLINED_FUNCTION_105(v1[24]);

        v11 = v1[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        (*(v5 + 8))(v0 + v4);
        break;
      case 3u:
        OUTLINED_FUNCTION_34_9();

        goto LABEL_10;
      case 4u:
        OUTLINED_FUNCTION_34_9();

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v12 + 8))(v0 + v4);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v13[12]);

        OUTLINED_FUNCTION_105(v13[16]);

        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v14 + 8))(v0 + v4);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v15[12]);

        OUTLINED_FUNCTION_105(v15[16]);

        OUTLINED_FUNCTION_105(v15[20]);

        v11 = v15[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v11);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AD41D4()
{
  v3 = OUTLINED_FUNCTION_46();
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters(v3);
  OUTLINED_FUNCTION_20(v4);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2379D9D48;

  return sub_237ACFC4C(v0, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_237AD42D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237AD4334()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2379D6854;

  return sub_237AD0D3C(v2);
}

uint64_t sub_237AD4400(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237AD44E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_237AD45A8(uint64_t a1)
{
  sub_2379FC328();
  if (v1 <= 0x3F)
  {
    _s8GraphCNNCMa(319);
    if (v2 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLHandActionClassifier.ModelParameters(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_237AD4684(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237AD46C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_237AD4714(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C0855C();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_237AD4820()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237AD48D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237AD4930()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v3 + 8))(v0 + v5, v1);
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (OUTLINED_FUNCTION_65_4() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(OUTLINED_FUNCTION_65_4())
    {
      case 0u:
        v12 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v14 = *(v13 + 8);
        v14(v0 + v10, v12);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v16 = OUTLINED_FUNCTION_46_6(v15);
        (v14)(v16);
        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x40));

        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x50));

        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x60));

        v17 = *(((v4 + 16) & ~v4) + 0x70);
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        (*(v11 + 8))(v0 + v10);
        break;
      case 3u:
        OUTLINED_FUNCTION_34_9();

        goto LABEL_10;
      case 4u:
        OUTLINED_FUNCTION_34_9();

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v18 + 8))(v0 + v10);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v19[12]);

        OUTLINED_FUNCTION_105(v19[16]);

        v17 = v19[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v20 + 8))(v0 + v10);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v21[12]);

        OUTLINED_FUNCTION_105(v21[16]);

        OUTLINED_FUNCTION_105(v21[20]);

        v17 = v21[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v17);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t OUTLINED_FUNCTION_19_21@<X0>(uint64_t a1@<X8>)
{

  return sub_237AD48D4(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_33_11@<X0>(char a1@<W8>)
{
  *(v3 - 112) = a1;
  v5 = *(v2 + *(v1 + 40));

  return sub_2379F54E0(v3 - 120, 0, (v3 - 104), v5);
}

uint64_t OUTLINED_FUNCTION_34_9()
{
  sub_2379DBC9C(*v0, *(v0 + 8));
}

void OUTLINED_FUNCTION_42_7()
{
  sub_2379DBC9C(*(v3 - 160), v1);
  sub_2379DBC9C(v0, v2);
  v4 = *(v3 - 232);
  v5 = *(v3 - 144);

  sub_2379DBC84(v4, v5);
}

void OUTLINED_FUNCTION_57_5()
{

  sub_2379E9268(v0, v1, v2, 3);
}

void OUTLINED_FUNCTION_58_6()
{

  sub_2379E9268(v0, v2, v1, 3);
}

uint64_t OUTLINED_FUNCTION_59_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;

  return type metadata accessor for MLHandActionClassifier.ModelParameters(0);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_63_4()
{

  JUMPOUT(0x2383DD950);
}

uint64_t OUTLINED_FUNCTION_65_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t static MLSoundClassifier.__Defaults.validation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A618 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v3 = __swift_project_value_buffer(v2, qword_27DE9C948);

  return sub_237A392BC(v3, a1);
}

uint64_t sub_237AD5080()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, qword_27DE9C948);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C948);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;

  return swift_storeEnumTagMultiPayload();
}

_BYTE *_s10__DefaultsVwst_1(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237AD51C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AD521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLSoundClassifier.DataSource(v6);
  OUTLINED_FUNCTION_135();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    OUTLINED_FUNCTION_135();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 36) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_237AD5318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLSoundClassifier.DataSource(v8);
  OUTLINED_FUNCTION_135();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    OUTLINED_FUNCTION_135();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 36) + 8) = -a2;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t _s20PersistentParametersVMa_2(uint64_t a1)
{
  result = qword_27DE9C960;
  if (!qword_27DE9C960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237AD544C(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AD54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s20PersistentParametersVMa_2(0);
  v7 = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = a3 + v6[9];
  *v10 = 1;
  *(v10 + 8) = 1;
  OUTLINED_FUNCTION_7_30();
  v11 = OUTLINED_FUNCTION_55();
  sub_237AD94B0(v11, v12);
  OUTLINED_FUNCTION_6_36();
  sub_237AD94B0(a2, a3 + v13);
  v14 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *(a3 + v7) = *(a2 + v14[6]);
  v15 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  OUTLINED_FUNCTION_1_46();
  sub_237AD9458(a1, v16);
  *(a3 + v8) = v15;
  *(a3 + v9) = *(a2 + v14[5]);
  sub_2379F6D68(a2 + v14[7], v31);
  OUTLINED_FUNCTION_5_37();
  v18 = sub_237AD9458(a2, v17);
  if (!v32)
  {
    result = sub_2379D9054(v31, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_23_20(v18, v19, v20, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v21, v22, v23, v24, v28);
  OUTLINED_FUNCTION_16_18();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v26 = 1;
    v27 = 1;
    goto LABEL_6;
  }

  v26 = v29;
  v27 = v30;
LABEL_6:
  *v10 = v26;
  *(v10 + 8) = v27;
  return result;
}

void sub_237AD564C(uint64_t a1)
{
  v101 = a1;
  v115 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_49_4();
  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v91 = v7 - v6;
  OUTLINED_FUNCTION_41_0();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v102 = v8;
  v103 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v90 = v10 - v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  v98 = &v90 - v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v99 = &v90 - v15;
  v16 = OUTLINED_FUNCTION_41_0();
  v95 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v96 = v18 - v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  v97 = &v90 - v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_46_7();
  v24 = type metadata accessor for MLSoundClassifier.ModelParameters(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v94 = v26 - v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6C0;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v32 = sub_237AD7E98();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v107 = v33;
  *(inited + 48) = v32;
  *(inited + 72) = v33;
  *(inited + 80) = v2;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v34 = _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_6_36();
  v106 = v35;
  v92 = v36;
  sub_237AD94B0(v1 + v36, v3);
  v37 = v34[8];
  v38 = v34[9];
  v110 = v1;
  v39 = *(v1 + v37);
  v108 = v34;
  v109 = v39;
  v40 = *(v1 + v34[6]);
  v41 = (v1 + v38);
  v105 = *(v1 + v38);
  v104 = *(v1 + v38 + 8);
  v42 = &v30[v24[7]];
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = &v30[v24[8]];
  *v43 = 0;
  v43[8] = 1;
  *&v30[v24[9]] = 32;
  sub_237AD94B0(v3, v30);
  *&v30[v24[5]] = v39;
  v93 = v24;
  *&v30[v24[6]] = v40;
  v114 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *&v113 = v105;
  BYTE8(v113) = v104;
  sub_237AD9458(v3, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  sub_2379DAE54(&v113, v42);
  sub_237AD94B0(v30, v3);
  OUTLINED_FUNCTION_5_37();
  sub_237AD9458(v30, v44);
  v45 = sub_237AD85EC();
  v106 = v3;
  sub_237AD9458(v3, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v45;
  v46 = v107;
  *(inited + 120) = v107;
  *(inited + 128) = 0x70616C7265766FLL;
  *(inited + 136) = 0xE700000000000000;
  v47 = MEMORY[0x277D839F8];
  *(inited + 144) = v40;
  *(inited + 168) = v47;
  strcpy((inited + 176), "max_iterations");
  v48 = MEMORY[0x277D83B88];
  *(inited + 191) = -18;
  *(inited + 192) = v109;
  *(inited + 216) = v48;
  *(inited + 224) = 0x687469726F676C61;
  *(inited + 232) = 0xE90000000000006DLL;
  v49 = *v41;
  v105 = v41;
  v50 = *(v41 + 8);
  *&v113 = v49;
  BYTE8(v113) = v50;
  v51 = sub_237AD88DC();
  *(inited + 264) = v46;
  *(inited + 240) = v51;
  v52 = sub_237C085AC();
  v53 = *(v110 + *(v108 + 28));
  v114 = v47;
  *&v113 = v53;
  sub_2379DAD24(&v113, v112);
  swift_isUniquelyReferenced_nonNull_native();
  v111 = v52;
  sub_237B40B6C(v112, 0xD000000000000010, 0x8000000237C1AEE0);
  v54 = objc_opt_self();
  v55 = sub_237C0855C();

  *&v113 = 0;
  v56 = [v54 dataWithPropertyList:v55 format:200 options:0 error:&v113];

  v57 = v113;
  if (v56)
  {
    v58 = sub_237C05B7C();
    v60 = v59;

    v61 = v99;
    OUTLINED_FUNCTION_40_9();
    sub_237C05A2C();
    v62 = v100;
    sub_237C05B9C();
    if (!v62)
    {
      v66 = v103 + 8;
      v67 = v61;
      v68 = v102;
      v107 = *(v103 + 8);
      v108 = v60;
      v107(v67, v102);
      sub_237AD8AA8(&v113);
      v69 = BYTE8(v113);
      if (BYTE8(v113) == 255)
      {
        v103 = v66;
      }

      else
      {
        v70 = v113;
        BYTE8(v113) &= 1u;
        v71 = v98;
        OUTLINED_FUNCTION_19_5();
        sub_237C05A2C();
        MLDataTable.write(to:)(v71);
        v103 = v66;
        v107(v71, v68);
        sub_2379DBC84(v70, v69);
      }

      v72 = v106;
      sub_237AD94B0(v110 + v92, v106);
      v110 = *v105;
      v73 = *(v105 + 8);
      v75 = v93;
      v74 = v94;
      v76 = (v94 + v93[7]);
      *v76 = 0u;
      v76[1] = 0u;
      v77 = v74 + v75[8];
      *v77 = 0;
      *(v77 + 8) = 1;
      *(v74 + v75[9]) = 32;
      sub_237AD94B0(v72, v74);
      *(v74 + v75[5]) = v109;
      *(v74 + v75[6]) = v40;
      v114 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      *&v113 = v110;
      BYTE8(v113) = v73;
      OUTLINED_FUNCTION_0_46();
      sub_237AD9458(v72, v78);
      sub_2379DAE54(&v113, v76);
      v79 = v97;
      sub_237AD94B0(v74, v97);
      OUTLINED_FUNCTION_5_37();
      sub_237AD9458(v74, v80);
      v81 = v96;
      sub_237AD94B0(v79, v96);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_2_46();
          v82 = v91;
          sub_237AD950C(v81, v91);
          sub_237AD8AA8(&v113);
          OUTLINED_FUNCTION_1_46();
          sub_237AD9458(v82, v83);
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v79, v84);
          v85 = BYTE8(v113);
          if (BYTE8(v113) == 255)
          {
            goto LABEL_13;
          }

          v86 = v113;
          BYTE8(v113) &= 1u;
          OUTLINED_FUNCTION_41_1();
          v87 = v90;
          sub_237C05A2C();
          MLDataTable.write(to:)(v87);
          v107(v87, v102);
          sub_2379E86D4(v58, v108);
          sub_2379DBC84(v86, v85);
          return;
        case 2u:
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v79, v88);
          v79 = v81;
          goto LABEL_12;
        default:
LABEL_12:
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v79, v89);
LABEL_13:
          v63 = v58;
          v64 = v108;
          goto LABEL_14;
      }
    }

    (*(v103 + 8))(v61, v102);
    v63 = v58;
    v64 = v60;
LABEL_14:
    sub_2379E86D4(v63, v64);
  }

  else
  {
    v65 = v57;
    sub_237C0593C();

    swift_willThrow();
  }
}

uint64_t sub_237AD5F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127[4] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C980, &qword_237C11788);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  v116 = &v103 - v7;
  v8 = OUTLINED_FUNCTION_41_0();
  v118 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v115 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C988, &qword_237C11790);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  v120 = &v103 - v14;
  v15 = OUTLINED_FUNCTION_41_0();
  v119 = type metadata accessor for MLSoundClassifier.DataSource(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v117 = v18 - v17;
  OUTLINED_FUNCTION_41_0();
  v19 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v122 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v103 - v29;
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_46_7();
  v33 = _s20PersistentParametersVMa_2(v32);
  v34 = *(v33 + 36);
  v121 = a2;
  v35 = a2 + v34;
  *v35 = 1;
  *(v35 + 8) = 1;
  OUTLINED_FUNCTION_40_9();
  v36 = a1;
  sub_237C05A2C();
  v37 = v123;
  v38 = sub_237C05B1C();
  if (v37)
  {
    v40 = *(v122 + 8);
    v40(v36, v19);
    return (v40)(v2, v19);
  }

  v108 = v35;
  v107 = v27;
  v109 = v33;
  v106 = v24;
  v110 = v30;
  v105 = 0;
  v123 = a1;
  v42 = v122;
  v43 = *(v122 + 8);
  v44 = v38;
  v45 = v39;
  v43(v2, v19);
  v46 = objc_opt_self();
  v47 = sub_237C05B6C();
  *&v125 = 0;
  v48 = [v46 propertyListWithData:v47 options:0 format:0 error:&v125];

  v49 = v125;
  if (!v48)
  {
    v63 = v49;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v44, v45);
    return (v43)(v123, v19);
  }

  v111 = v44;
  v112 = v45;
  v113 = v43;
  v114 = v19;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v127, &v125);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_10_31();
  v51 = swift_dynamicCast();
  v52 = v123;
  if ((v51 & 1) == 0)
  {
    v64 = 0x8000000237C17D40;
    sub_2379E8AF0();
    v65 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v67 = 0xD000000000000037;
LABEL_20:
    *v66 = v67;
    v66[1] = v64;
    OUTLINED_FUNCTION_52(v65, v66);
    OUTLINED_FUNCTION_12_25();
    v113(v52, v114);
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  v53 = v124;
  sub_237AC9A74(v124, &v125, 0x70616C7265766FLL, 0xE700000000000000);
  if (!v126)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v54 = v124;
  sub_237AC9A74(v53, &v125, 0x726574695F78616DLL, 0xEE00736E6F697461);
  if (!v126)
  {
LABEL_17:

    sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
LABEL_19:
    v64 = 0x8000000237C17D80;
    sub_2379E8AF0();
    v65 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v67 = 0xD000000000000034;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v55 = v124;
  sub_237AC9A74(v53, &v125, 0x687469726F676C61, 0xE90000000000006DLL);
  if (!v126)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_237AD6B0C(v124, &v125);
  v56 = BYTE8(v125);
  if (BYTE8(v125) == 255)
  {

    v52 = v123;
    goto LABEL_19;
  }

  v103 = v125;
  v57 = OUTLINED_FUNCTION_40_9();
  v104 = v53;
  sub_237AC9A74(v53, v59, v57, v58);
  if (v126)
  {
    OUTLINED_FUNCTION_10_31();
    swift_dynamicCast();
    OUTLINED_FUNCTION_30_14();
    if (v61)
    {
      v62 = v124;
    }

    else
    {
      v62 = 0x3FEF333333333333;
    }
  }

  else
  {
    sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_30_14();
  }

  v68 = v108;
  v69 = v53[6];
  v70 = v53[8];
  *(v60 + v53[7]) = v62;
  *(v60 + v70) = v55;
  *(v60 + v69) = v54;
  *v68 = v103;
  *(v68 + 8) = v56 & 1;
  OUTLINED_FUNCTION_19_5();
  v71 = v123;
  sub_237C05A2C();
  sub_237AC9A74(v104, &v125, 0x676E696E69617274, 0xE800000000000000);
  if (!v126)
  {

    sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
LABEL_31:
    sub_2379E8AF0();
    v81 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v82 = 0xD00000000000002ELL;
    v82[1] = 0x8000000237C1AF80;
    OUTLINED_FUNCTION_52(v81, v82);
    OUTLINED_FUNCTION_12_25();
    v83 = v71;
    v85 = v113;
    v84 = v114;
    v113(v83, v114);
    v85(v19, v84);
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v108 = v50;
  v72 = v124;
  v73 = v107;
  v74 = v114;
  v122 = *(v42 + 16);
  (v122)(v107, v19, v114);
  v75 = v73;
  v76 = v120;
  sub_237AD6D88(v72, v75, v120);
  if (__swift_getEnumTagSinglePayload(v76, 1, v119) == 1)
  {

    sub_2379D9054(v76, &qword_27DE9C988, &qword_237C11790);
    sub_2379E8AF0();
    v77 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v78 = 0xD000000000000035;
    v78[1] = 0x8000000237C18010;
    OUTLINED_FUNCTION_52(v77, v78);
    OUTLINED_FUNCTION_12_25();
    v79 = v113;
    v113(v71, v74);
    v80 = OUTLINED_FUNCTION_33_12();
    v79(v80, v74);
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  v86 = v117;
  sub_237AD950C(v76, v117);
  sub_237AD950C(v86, v121);
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237AC9A74(v104, &v125, type metadata accessor for MLSoundClassifier.DataSource, 0xEA00000000006E6FLL);

  v87 = v113;
  if (!v126)
  {
    OUTLINED_FUNCTION_12_25();
    v97 = v114;
    v87(v123, v114);
    v87(v106, v97);
    v98 = OUTLINED_FUNCTION_33_12();
    v87(v98, v97);
    __swift_destroy_boxed_opaque_existential_1(v127);
    sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_25();
    v99 = v114;
    v87(v123, v114);
    v87(v106, v99);
    v100 = OUTLINED_FUNCTION_33_12();
    v87(v100, v99);
    __swift_destroy_boxed_opaque_existential_1(v127);
    return swift_storeEnumTagMultiPayload();
  }

  v88 = v124;
  v89 = v107;
  v90 = v106;
  v91 = v114;
  (v122)(v107, v106, v114);
  v92 = v116;
  sub_237AD7974(v88, v89, v116);
  if (__swift_getEnumTagSinglePayload(v92, 1, v118) == 1)
  {
    sub_2379D9054(v92, &qword_27DE9C980, &qword_237C11788);
    sub_2379E8AF0();
    v93 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v94 = 0xD000000000000037;
    v94[1] = 0x8000000237C17FD0;
    OUTLINED_FUNCTION_52(v93, v94);
    OUTLINED_FUNCTION_12_25();
    v87(v123, v91);
    v87(v90, v91);
    v95 = OUTLINED_FUNCTION_33_12();
    v87(v95, v91);
    __swift_destroy_boxed_opaque_existential_1(v127);
    OUTLINED_FUNCTION_1_46();
    return sub_237AD9458(v121, v96);
  }

  else
  {
    OUTLINED_FUNCTION_12_25();
    v87(v123, v91);
    v87(v90, v91);
    v101 = OUTLINED_FUNCTION_33_12();
    v87(v101, v91);
    __swift_destroy_boxed_opaque_existential_1(v127);
    v102 = v115;
    sub_237AD950C(v92, v115);
    return sub_237AD950C(v102, v121 + *(v109 + 20));
  }
}

uint64_t sub_237AD6B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = OUTLINED_FUNCTION_19_22();
  v6 = sub_237ACAC78(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = sub_2379FED88(*(a1 + 56) + 32 * v6, &v45);
  OUTLINED_FUNCTION_23_20(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = v41;
  sub_237AC9A74(a1, &v45, 0x6E6F6973726576, 0xE700000000000000);
  if (!v46)
  {

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23_20(v16, v17, v18, MEMORY[0x277D83B88], v19, v20, v21, v22, v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    goto LABEL_19;
  }

  v23 = v42;
  sub_237AC9A74(a1, &v45, 0x6966697373616C63, 0xEA00000000007265);

  if (!v46)
  {
LABEL_23:

    result = sub_2379D9054(&v45, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_20(v24, v25, v26, MEMORY[0x277D837D0], v27, v28, v29, v30, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v31 = 0x687369676776;
  v32 = v15 == 0x687369676776 && v44 == 0xE600000000000000;
  if (!v32 && (v31 = sub_237C0929C(), (v31 & 1) == 0) || (v43 == 0xD000000000000012 ? (v33 = 0x8000000237C1AF20 == v44) : (v33 = 0), !v33 && (OUTLINED_FUNCTION_35_10(v31, 0x8000000237C1AF20) & 1) == 0))
  {
    v36 = 0xD000000000000013;
    v37 = v15 == 0xD000000000000013 && 0x8000000237C1AF00 == v44;
    if (v37 || (v36 = sub_237C0929C(), (v36 & 1) != 0))
    {
      if (v43 == 0xD000000000000012 && 0x8000000237C1AF20 == v44)
      {

LABEL_38:
        v35 = 1;
        goto LABEL_21;
      }

      v39 = OUTLINED_FUNCTION_35_10(v36, 0x8000000237C1AF20);

      if (v39)
      {
        goto LABEL_38;
      }

LABEL_20:
      v23 = 0;
      v35 = -1;
      goto LABEL_21;
    }

    goto LABEL_35;
  }

  v35 = 0;
LABEL_21:
  *a2 = v23;
  *(a2 + 8) = v35;
  return result;
}

void sub_237AD6D88(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v106 - v14;
  v16 = type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v106 - v23);
  if (!*(a1 + 16) || (v25 = OUTLINED_FUNCTION_19_22(), v27 = sub_237ACAC78(v25, v26), (v28 & 1) == 0) || (sub_2379FED88(*(a1 + 56) + 32 * v27, &v126), OUTLINED_FUNCTION_24_19(), OUTLINED_FUNCTION_16_18(), (swift_dynamicCast() & 1) == 0))
  {
    v37 = *(v8 + 8);
    v38 = a2;
LABEL_15:
    v37(v38, v6, v22);
    goto LABEL_16;
  }

  v122 = v24;
  v123 = a2;
  v29 = v150;
  v30 = v151;
  v31 = v150 == 0xD000000000000013 && 0x8000000237C17F40 == v151;
  if (v31 || (OUTLINED_FUNCTION_27_9(0xD000000000000013, 0x8000000237C17F40) & 1) != 0)
  {

    OUTLINED_FUNCTION_37_9();

    if (v128)
    {
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_16_18();
      if (swift_dynamicCast())
      {
        v32 = v122;
        sub_237C059BC();

        v33 = OUTLINED_FUNCTION_47_9();
        v34(v33, v6);
        goto LABEL_12;
      }

      goto LABEL_30;
    }

    v39 = OUTLINED_FUNCTION_13_22();
    goto LABEL_20;
  }

  v41 = v29 == 0x5F64656C6562616CLL && v30 == 0xED000073656C6966;
  if (v41 || (OUTLINED_FUNCTION_27_9(0x5F64656C6562616CLL, 0xED000073656C6966) & 1) != 0)
  {

    OUTLINED_FUNCTION_37_9();

    v32 = v122;
    if (!v128)
    {
      v39 = OUTLINED_FUNCTION_47_9();
LABEL_20:
      v40(v39, v6);
LABEL_21:
      sub_2379D9054(&v126, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_30:
      v44 = OUTLINED_FUNCTION_47_9();
      v45(v44, v6);
      goto LABEL_17;
    }

    sub_237C059BC();

    v42 = OUTLINED_FUNCTION_47_9();
    v43(v42, v6);
LABEL_12:
    swift_storeEnumTagMultiPayload();
LABEL_13:
    OUTLINED_FUNCTION_2_46();
    sub_237AD950C(v32, a3);
    v35 = a3;
    v36 = 0;
    goto LABEL_18;
  }

  v46 = v29 == 0x79625F73656C6966 && v30 == 0xEE006C6562616C5FLL;
  if (v46 || (OUTLINED_FUNCTION_27_9(0x79625F73656C6966, 0xEE006C6562616C5FLL) & 1) != 0)
  {

    sub_237AC9A74(a1, &v126, 0x73656C6966, 0xE500000000000000);

    v47 = v123;
    v32 = v122;
    if (!v128)
    {
      (*(v8 + 8))(v123, v6);
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v8 + 8))(v47, v6);
      goto LABEL_17;
    }

    v48 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
    v49 = sub_237C0910C();
    v107 = v48 + 64;
    v114 = v48;
    OUTLINED_FUNCTION_5_33();
    v53 = v52 & v51;
    v55 = (v54 + 63) >> 6;
    v119 = v8 + 32;
    v112 = v56 + 64;
    v109 = a3;
    v110 = v16;
    v108 = v56;
    v111 = v55;
    v121 = v6;
    if (v53)
    {
      while (1)
      {
        v57 = __clz(__rbit64(v53));
        v58 = (v53 - 1) & v53;
LABEL_46:
        v61 = v57 | (v50 << 6);
        v115 = v58;
        v118 = v50;
        v62 = *(v114 + 56);
        v63 = (*(v114 + 48) + 16 * v61);
        v64 = v63[1];
        v116 = *v63;
        v117 = v61;
        v65 = *(v62 + 8 * v61);
        v66 = *(v65 + 16);
        if (v66)
        {
          break;
        }

        v68 = MEMORY[0x277D84F90];
LABEL_54:
        OUTLINED_FUNCTION_42_8((v117 >> 3) & 0x1FFFFFFFFFFFFFF8);
        v72 = (v70 + 16 * v71);
        *v72 = v116;
        v72[1] = v73;
        *(*(v49 + 56) + 8 * v71) = v68;
        v74 = *(v49 + 16);
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        v50 = v118;
        if (v75)
        {
          __break(1u);
          return;
        }

        *(v49 + 16) = v76;
        v55 = v111;
        v53 = v115;
        if (!v115)
        {
          goto LABEL_41;
        }
      }

      *&v126 = MEMORY[0x277D84F90];
      v113 = v64;

      v120 = v66;
      sub_237AC8AF4(0, v66, 0);
      v67 = 0;
      v68 = v126;
      v16 = v65 + 40;
      while (v67 < *(v65 + 16))
      {

        sub_237C059BC();

        *&v126 = v68;
        a3 = *(v68 + 16);
        v69 = *(v68 + 24);
        if (a3 >= v69 >> 1)
        {
          sub_237AC8AF4(v69 > 1, a3 + 1, 1);
          v68 = v126;
        }

        ++v67;
        *(v68 + 16) = a3 + 1;
        (*(v8 + 32))(v68 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a3, v15, v121);
        v16 += 16;
        if (v120 == v67)
        {

          a3 = v109;
          v16 = v110;
          v32 = v122;
          v49 = v108;
          v6 = v121;
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_41:
    v59 = v50;
    while (1)
    {
      v50 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v50 >= v55)
      {

        v79 = OUTLINED_FUNCTION_13_22();
        v80(v79, v6);
        *v20 = v49;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_46();
        sub_237AD950C(v20, v32);
        goto LABEL_13;
      }

      v60 = *(v107 + 8 * v50);
      ++v59;
      if (v60)
      {
        v57 = __clz(__rbit64(v60));
        v58 = (v60 - 1) & v60;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  if (v29 == 0x7365727574616566 && v30 == 0xE800000000000000)
  {
  }

  else
  {
    v78 = OUTLINED_FUNCTION_27_9(0x7365727574616566, 0xE800000000000000);

    if ((v78 & 1) == 0)
    {
      v38 = OUTLINED_FUNCTION_13_22();
      goto LABEL_15;
    }
  }

  (*(v8 + 16))(v12, v123, v6);
  LOBYTE(v126) = 1;
  *(&v126 + 1) = *v149;
  DWORD1(v126) = *&v149[3];
  *(&v126 + 1) = 44;
  v127 = 0xE100000000000000;
  v128 = 0;
  v129 = 0xE000000000000000;
  v130 = 92;
  v131 = 0xE100000000000000;
  v132 = 1;
  *v133 = *v148;
  *&v133[3] = *&v148[3];
  v134 = 34;
  v135 = 0xE100000000000000;
  v136 = 1;
  *v137 = *v147;
  *&v137[3] = *&v147[3];
  v138 = &unk_284ABEBF0;
  v139 = 10;
  v140 = 0xE100000000000000;
  v141 = 0;
  v142 = 0;
  v143 = 1;
  *v144 = *v146;
  *&v144[3] = *&v146[3];
  v145 = 0;
  MLDataTable.init(contentsOf:options:)(v12, &v126, &v150);
  v81 = v150;
  v82 = v151;
  sub_237AC9A74(a1, &v126, 0x5F65727574616566, 0xEE006E6D756C6F63);
  if (!v128)
  {
    v94 = OUTLINED_FUNCTION_20_17();
    v95(v94);
    OUTLINED_FUNCTION_62_0();
LABEL_79:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_16_18();
  if (swift_dynamicCast())
  {
    v83 = v150;
    v84 = v151;
    sub_237AC9A74(a1, &v126, 0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL);
    if (!v128)
    {
LABEL_78:
      v98 = OUTLINED_FUNCTION_20_17();
      v99(v98);
      OUTLINED_FUNCTION_62_0();

      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if (swift_dynamicCast())
    {
      v110 = v16;
      v85 = v150;
      v86 = v151;
      sub_237AC9A74(a1, &v126, 0x6574656D61726170, 0xEA00000000007372);

      if (v128)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
        OUTLINED_FUNCTION_24_19();
        OUTLINED_FUNCTION_16_18();
        if (swift_dynamicCast())
        {
          sub_237AD8ECC(v150, &v126);
          v87 = OUTLINED_FUNCTION_13_22();
          v88(v87, v6);
          if (v129 != 255)
          {
            v89 = v128;
            v90 = *(&v126 + 1);
            v91 = v126;
            LOBYTE(v150) = v82;
            v125 = v127 & 1;
            v92 = v129 & 1;
            v124 = v129 & 1;
            v93 = v122;
            *v122 = v81;
            *(v93 + 8) = v82;
            v93[2] = v83;
            v93[3] = v84;
            v93[4] = v85;
            v93[5] = v86;
            v32 = v93;
            v93[6] = v91;
            v93[7] = v90;
            *(v93 + 64) = v125;
            v93[9] = v89;
            *(v93 + 80) = v92;
            v16 = v110;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_62_0();
        }

        else
        {
          v104 = OUTLINED_FUNCTION_13_22();
          v105(v104, v6);
          OUTLINED_FUNCTION_62_0();
        }

LABEL_85:
        v16 = v110;
        goto LABEL_17;
      }

LABEL_82:
      v102 = OUTLINED_FUNCTION_13_22();
      v103(v102, v6);
      OUTLINED_FUNCTION_62_0();

      sub_2379D9054(&v126, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_85;
    }

    v100 = OUTLINED_FUNCTION_20_17();
    v101(v100);
    OUTLINED_FUNCTION_62_0();
  }

  else
  {
    v96 = OUTLINED_FUNCTION_20_17();
    v97(v96);
    OUTLINED_FUNCTION_62_0();
  }

LABEL_16:

LABEL_17:
  v35 = a3;
  v36 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v35, v36, 1, v16);
}

uint64_t sub_237AD7974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C988, &qword_237C11790);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(a1, v28, v26, v27);
  if (!v68)
  {
    sub_2379D9054(&v65, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v60 = a3;
  v61 = v21;
  v30 = v63;
  v29 = v64;
  v31 = v63 == 1701736302 && v64 == 0xE400000000000000;
  if (!v31 && (OUTLINED_FUNCTION_38_0(1701736302, 0xE400000000000000) & 1) == 0)
  {
    v40 = v30 == 0x756F735F61746164 && v29 == 0xEB00000000656372;
    if (v40 || (OUTLINED_FUNCTION_38_0(0x756F735F61746164, 0xEB00000000656372) & 1) != 0)
    {

      v41 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(a1, v43, v41, v42);

      a3 = v60;
      v21 = v61;
      if (!v68)
      {
        v46 = OUTLINED_FUNCTION_9_4();
        v47(v46);
        sub_2379D9054(&v65, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      OUTLINED_FUNCTION_16_18();
      if (swift_dynamicCast())
      {
        v45 = v62;
        v44 = v63;
        (*(v7 + 16))(v11, v62, v5);
        sub_237AD6D88(v44, v11, v15);
        (*(v7 + 8))(v45, v5);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
        {
          sub_2379D9054(v15, &qword_27DE9C988, &qword_237C11790);
          v36 = 1;
          v21 = v61;
          return __swift_storeEnumTagSinglePayload(a3, v36, 1, v21);
        }

        sub_237AD950C(v15, v20);
        sub_237AD950C(v20, v25);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v30 == 0x74696C7073 && v29 == 0xE500000000000000)
    {
    }

    else
    {
      v49 = OUTLINED_FUNCTION_38_0(0x74696C7073, 0xE500000000000000);

      if ((v49 & 1) == 0)
      {

        a3 = v60;
        v21 = v61;
        goto LABEL_13;
      }
    }

    v50 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(a1, v52, v50, v51);

    v21 = v61;
    if (!v68)
    {
      v57 = OUTLINED_FUNCTION_9_4();
      v58(v57);
      sub_2379D9054(&v65, &qword_27DE9A998, &unk_237C0C100);
      v36 = 1;
      a3 = v60;
      return __swift_storeEnumTagSinglePayload(a3, v36, 1, v21);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    OUTLINED_FUNCTION_16_18();
    v53 = swift_dynamicCast();
    a3 = v60;
    if (v53)
    {
      sub_237A283AC(v63, &v65);
      v54 = OUTLINED_FUNCTION_9_4();
      v55(v54);
      if ((v67 & 1) == 0)
      {
        v56 = v66;
        *v25 = v65;
        *(v25 + 16) = v56;
        *(v25 + 17) = HIBYTE(v56) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v36 = 1;
      return __swift_storeEnumTagSinglePayload(a3, v36, 1, v21);
    }

LABEL_13:
    v37 = OUTLINED_FUNCTION_9_4();
    v38(v37);
    goto LABEL_14;
  }

  v32 = OUTLINED_FUNCTION_9_4();
  v33(v32);
  a3 = v60;
LABEL_9:
  v21 = v61;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  v34 = OUTLINED_FUNCTION_55();
  sub_237AD950C(v34, v35);
  v36 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v36, 1, v21);
}

uint64_t sub_237AD7E98()
{
  v3 = v0;
  v83 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v81 = v8 - v7;
  v9 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLSoundClassifier.DataSource(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_7_30();
  sub_237AD94B0(v3, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v64 = OUTLINED_FUNCTION_22_16();
      v65(v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v16 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v19 = MEMORY[0x277D837D0];
      strcpy((v16 + 48), "labeled_files");
      *(v16 + 62) = -4864;
      goto LABEL_24;
    case 2u:
      v27 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v28 = swift_initStackObject();
      v29 = OUTLINED_FUNCTION_0_8(v28, xmmword_237C0B670);
      v30 = MEMORY[0x277D837D0];
      strcpy(&v29[3], "files_by_label");
      v29[3].n128_u8[15] = -18;
      v29[4].n128_u64[1] = v30;
      v29[5].n128_u64[0] = 0x73656C6966;
      v70 = v29;
      v29[5].n128_u64[1] = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v31 = sub_237C0910C();
      v32 = 0;
      v71 = v27 + 64;
      OUTLINED_FUNCTION_5_33();
      i = v34 & v33;
      v37 = (v36 + 63) >> 6;
      v79 = (v5 + 8);
      v75 = v5;
      v73 = v38;
      v74 = v27;
      v72 = v37;
      if ((v34 & v33) != 0)
      {
        goto LABEL_5;
      }

      break;
    case 3u:
      v23 = *(v13 + 24);
      v25 = *(v13 + 40);
      v82 = *(v13 + 32);
      v84 = *(v13 + 16);
      sub_2379DBC9C(*v13, *(v13 + 8));
      goto LABEL_22;
    case 4u:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
      v21 = (v13 + *(v20 + 48));
      v22 = *v21;
      v23 = v21[1];
      v24 = (v13 + *(v20 + 64));
      v25 = v24[1];
      v82 = *v24;
      v84 = v22;
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v26 + 8))(v13);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v60 = swift_initStackObject();
      v61 = OUTLINED_FUNCTION_0_8(v60, xmmword_237C0BC00);
      v62 = MEMORY[0x277D837D0];
      v61[3].n128_u64[0] = 0x7365727574616566;
      v61[3].n128_u64[1] = 0xE800000000000000;
      v61[4].n128_u64[1] = v62;
      strcpy(&v61[5], "feature_column");
      v61[5].n128_u8[15] = -18;
      v61[6].n128_u64[0] = v84;
      v61[6].n128_u64[1] = v23;
      v61[7].n128_u64[1] = v62;
      strcpy(&v61[8], "label_column");
      v61[8].n128_u8[13] = 0;
      v61[8].n128_u16[7] = -5120;
      v61[9].n128_u64[0] = v82;
      v61[9].n128_u64[1] = v25;
      v61[10].n128_u64[1] = v62;
      v61[11].n128_u64[0] = 0x6574656D61726170;
      v61[11].n128_u64[1] = 0xEA00000000007372;
      v63 = sub_237AD8D80();
      v60[13].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v60[12].n128_u64[0] = v63;
      OUTLINED_FUNCTION_29_10();
      return sub_237C085AC();
    default:
      v14 = OUTLINED_FUNCTION_22_16();
      v15(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v16 = swift_initStackObject();
      inited = v16;
      *(v16 + 16) = xmmword_237C0B670;
      v18 = 0xE400000000000000;
      *(v16 + 32) = 1684957547;
      *(v16 + 40) = 0xE400000000000000;
      v19 = MEMORY[0x277D837D0];
      *(v16 + 48) = 0xD000000000000013;
      *(v16 + 56) = 0x8000000237C17F40;
LABEL_24:
      *(v16 + 72) = v19;
      *(v16 + 80) = 1752457584;
      *(v16 + 88) = v18;
      v66 = sub_237C05A9C();
      inited[7].n128_u64[1] = v19;
      inited[6].n128_u64[0] = v66;
      inited[6].n128_u64[1] = v67;
      v68 = sub_237C085AC();
      (*(v1 + 8))(v2, v5);
      return v68;
  }

LABEL_6:
  v40 = v32;
  while (1)
  {
    v32 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v32 >= v37)
    {
      break;
    }

    v41 = *&v71[8 * v32];
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      for (i = (v41 - 1) & v41; ; i &= i - 1)
      {
        v42 = v39 | (v32 << 6);
        v78 = *(*(v27 + 6) + 16 * v42);
        v43 = *(*(v27 + 7) + 8 * v42);
        v44 = *(v43 + 16);
        if (v44)
        {
          v76 = v39 | (v32 << 6);
          v77 = v32;
          v85 = MEMORY[0x277D84F90];

          sub_237AC8A74();
          v45 = v43;
          v46 = v85;
          v47 = v45 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v80 = *(v5 + 72);
          v48 = *(v5 + 16);
          do
          {
            v48(v81, v47, v83);
            v49 = sub_237C05A9C();
            v51 = v50;
            (*v79)(v81, v83);
            v52 = *(v85 + 16);
            if (v52 >= *(v85 + 24) >> 1)
            {
              sub_237AC8A74();
            }

            *(v85 + 16) = v52 + 1;
            v53 = v85 + 16 * v52;
            *(v53 + 32) = v49;
            *(v53 + 40) = v51;
            v47 += v80;
            --v44;
          }

          while (v44);

          v27 = v74;
          v5 = v75;
          v37 = v72;
          v31 = v73;
          v32 = v77;
          v42 = v76;
        }

        else
        {

          v46 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_42_8((v42 >> 3) & 0x1FFFFFFFFFFFFFF8);
        v55 = (v54 + 16 * v42);
        *v55 = v78;
        v55[1] = v56;
        *(*(v31 + 56) + 8 * v42) = v46;
        v57 = *(v31 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          break;
        }

        *(v31 + 16) = v59;
        if (!i)
        {
          goto LABEL_6;
        }

LABEL_5:
        v39 = __clz(__rbit64(i));
      }

LABEL_29:
      __break(1u);
      JUMPOUT(0x237AD85D8);
    }
  }

  v70[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  v70[6].n128_u64[0] = v31;
  return sub_237C085AC();
}

uint64_t sub_237AD85EC()
{
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = (v2 - v1);
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  OUTLINED_FUNCTION_6_36();
  v8 = OUTLINED_FUNCTION_55();
  sub_237AD94B0(v8, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_46();
      sub_237AD950C(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      goto LABEL_7;
    case 2u:
      *v3 = *v7;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
LABEL_7:
      inited = swift_initStackObject();
      v18 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      OUTLINED_FUNCTION_34_0(v18, 0x756F735F61746164);
      v19 = sub_237AD7E98();
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      inited[6].n128_u64[0] = v19;
      OUTLINED_FUNCTION_29_10();
      v16 = sub_237C085AC();
      OUTLINED_FUNCTION_1_46();
      sub_237AD9458(v3, v20);
      return v16;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v13 = swift_initStackObject();
      v14 = OUTLINED_FUNCTION_0_8(v13, xmmword_237C0B660);
      v14[4].n128_u64[1] = MEMORY[0x277D837D0];
      v14[3].n128_u64[0] = 1701736302;
      v14[3].n128_u64[1] = v15;
      return sub_237C085AC();
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v10 = swift_initStackObject();
      v11 = OUTLINED_FUNCTION_0_8(v10, xmmword_237C0B670);
      OUTLINED_FUNCTION_34_0(v11, 0x74696C7073);
      v12 = sub_237A28200();
      v10[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v10[6].n128_u64[0] = v12;
      OUTLINED_FUNCTION_29_10();
      return sub_237C085AC();
  }
}

uint64_t sub_237AD88DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D837D0];
  sub_237C085AC();
  v16 = v3;
  if (v2)
  {
    *&v15 = 0xD000000000000013;
    *(&v15 + 1) = 0x8000000237C1AF00;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    sub_237B40B6C(v4, 1684957547, 0xE400000000000000);
    v16 = v3;
    OUTLINED_FUNCTION_45_5();
    *&v15 = v5;
    *(&v15 + 1) = v6;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    v8 = 1701869940;
  }

  else
  {
    OUTLINED_FUNCTION_44_9();
    *&v15 = v9;
    *(&v15 + 1) = v10;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    v8 = 1684957547;
  }

  sub_237B40B6C(v7, v8, 0xE400000000000000);
  v16 = MEMORY[0x277D83B88];
  *&v15 = v1;
  sub_2379DAD24(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_14_21();
  sub_237B40B6C(v11, 0x6E6F6973726576, 0xE700000000000000);
  v16 = v3;
  *&v15 = 0xD000000000000012;
  *(&v15 + 1) = 0x8000000237C1AF20;
  sub_2379DAD24(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B40B6C(v14, 0x6966697373616C63, 0xEA00000000007265);
  return v13;
}