void sub_23143F668(uint64_t *a2@<X8>)
{
  v28 = a2;
  v2 = type metadata accessor for _Interaction(0);
  v29 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Interaction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0, MEMORY[0x277D0B768]);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction, &unk_231480534);
  v12 = v27;
  v13 = sub_231476F58();
  if (!v12)
  {
    v14 = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v26 = v9;
      v30 = MEMORY[0x277D84F90];
      v25 = v15;
      sub_23141288C(0, v15, 0);
      v16 = 0;
      v17 = v30;
      v18 = v29;
      v27 = v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      while (v16 < *(v14 + 16))
      {
        sub_2314015B4(v27 + *(v18 + 72) * v16, v7, type metadata accessor for _Interaction);
        sub_2314015B4(v7, v5, type metadata accessor for _Interaction);
        sub_23143909C(v5, v11);
        v19 = v14;
        sub_23140166C(v7, type metadata accessor for _Interaction);
        v30 = v17;
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23141288C(v20 > 1, v21 + 1, 1);
          v17 = v30;
        }

        ++v16;
        *(v17 + 16) = v21 + 1;
        sub_2314448B0(v11, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for Interaction);
        v22 = v28;
        v18 = v29;
        v14 = v19;
        if (v25 == v16)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
      v22 = v28;
LABEL_10:
      v23 = sub_23141479C(v17);

      *v22 = v23;
    }
  }
}

void sub_23143FA54(uint64_t *a2@<X8>)
{
  v25 = a2;
  v2 = sub_231477948();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Interaction(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8, MEMORY[0x277D0B768]);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230], MEMORY[0x277D1F228]);
  v11 = v33;
  v12 = sub_231476F58();
  if (!v11)
  {
    v13 = v12;
    v14 = v25;
    v33 = v10;
    v15 = *(v12 + 16);
    if (v15)
    {
      v34 = MEMORY[0x277D84F90];
      v26 = v15;
      sub_23141288C(0, v15, 0);
      v16 = 0;
      v17 = v34;
      v29 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v27 = v13;
      v28 = v3 + 16;
      v30 = (v3 + 8);
      while (v16 < *(v13 + 16))
      {
        v18 = *(v3 + 16);
        v18(v7, v29 + *(v3 + 72) * v16, v2);
        v19 = v32;
        v18(v32, v7, v2);
        sub_2314393C4(v19, v33);
        v20 = v3;
        (*v30)(v7, v2);
        v34 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_23141288C(v21 > 1, v22 + 1, 1);
          v17 = v34;
        }

        ++v16;
        *(v17 + 16) = v22 + 1;
        sub_2314448B0(v33, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22, type metadata accessor for Interaction);
        v13 = v27;
        v3 = v20;
        if (v26 == v16)
        {

          v14 = v25;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
LABEL_10:
      v23 = sub_23141479C(v17);

      *v14 = v23;
    }
  }
}

void InteractionQuery.fetchAllWithParameters(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = type metadata accessor for Interaction(0);
  v27 = OUTLINED_FUNCTION_14(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v31 = type metadata accessor for _Interaction(0);
  OUTLINED_FUNCTION_4();
  v185 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  v184 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  v186 = v36;
  v37 = OUTLINED_FUNCTION_47();
  v38 = type metadata accessor for InteractionWithParameters(v37);
  v39 = OUTLINED_FUNCTION_0_0(v38, &a17);
  v181 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_0();
  v42 = OUTLINED_FUNCTION_28(v41);
  v43 = type metadata accessor for _Entity(v42);
  v44 = OUTLINED_FUNCTION_14(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_0();
  v190 = v45;
  v46 = OUTLINED_FUNCTION_47();
  v47 = type metadata accessor for Entity(v46);
  v187 = *(v47 - 8);
  MEMORY[0x28223BE20](v47 - 8);
  OUTLINED_FUNCTION_17_0();
  v194 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_81();
  v193 = v50;
  v51 = OUTLINED_FUNCTION_47();
  type metadata accessor for _InteractionWithEntity(v51);
  OUTLINED_FUNCTION_4();
  v188 = v53;
  v189 = v52;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_0();
  v195 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  v56 = MEMORY[0x28223BE20](v55);
  v59 = &v172 - v58;
  v60 = *(v25 + 8);
  v62 = *v20;
  v61 = *(v20 + 8);
  v63 = *(v20 + 16);
  if (v60)
  {
    v196 = *v20;
    v197 = v61;
    v198 = v63;
    OUTLINED_FUNCTION_114_0(v60);
    sub_231440934(&v199, v64, v65, v66, v67, v68, v69, v70, v172, v173, v174, v175, v176, v177, v178, i, v180, v181, v182, v183);
  }

  else
  {
    v177 = v59;
    v175 = v57;
    v176 = v56;
    OUTLINED_FUNCTION_114_0(v60);
    sub_2313F4D04();
    v71 = v21;
    if (!v21)
    {
      v174 = v31;
      v178 = v30;
      v199 = v62;
      v200 = v61;
      v201 = v63;
      OUTLINED_FUNCTION_92_0();
      v73 = v72;
      sub_23143D8C4(0, v74, v75, v76, v77, v78, v79, v80, v172, v173, v174, v175, v176, v177, v178, i, v180, v181, v182, v183);
      MEMORY[0x28223BE20](v81);
      OUTLINED_FUNCTION_121_0();
      *(v82 - 32) = v62;
      *(v82 - 24) = v61;
      *(v82 - 16) = v63;
      *(v82 - 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A0, &unk_23147CCD0);
      sub_231477098();
      v172 = v73;
      v83 = v200;
      v173 = v199;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
      v84 = sub_231477DC8();
      v85 = 0;
      OUTLINED_FUNCTION_135_0(*(v83 + 16));
      v86 = v193;
      for (i = v83; ; v83 = i)
      {
        OUTLINED_FUNCTION_87();
        if (v87 == v85)
        {
          break;
        }

        if (v85 >= *(v83 + 16))
        {
          __break(1u);
LABEL_47:
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
          sub_231478888();
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_6();
        v90 = v195;
        sub_2314015B4(v83 + v88 + *(v89 + 72) * v85, v195, type metadata accessor for _InteractionWithEntity);
        v91 = *v90;
        v202 = v90[1];
        v92 = v90[2];
        v93 = v90 + *(v189 + 24);
        v94 = v190;
        sub_2314015B4(v93, v190, type metadata accessor for _Entity);

        sub_23142011C(v94, v95, v96, v97, v98, v99, v100, v101, v172, v173, v174, v175, v176, v177, v178, i, v180, v181, v182, v183);
        if (v71)
        {
          OUTLINED_FUNCTION_65_1();

          OUTLINED_FUNCTION_102_0();

LABEL_43:
          OUTLINED_FUNCTION_13_1();
          v170(v177, v176);
          goto LABEL_44;
        }

        v191 = v85;
        v192 = 0;
        OUTLINED_FUNCTION_58_0();
        sub_2314015B4(v86, v194, v102);
        swift_isUniquelyReferenced_nonNull_native();
        v199 = v84;
        sub_23142F62C(v91);
        OUTLINED_FUNCTION_190();
        if (__OFADD__(v105, v106))
        {
          goto LABEL_47;
        }

        v107 = v103;
        v108 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A8, &qword_23147CCE0);
        v109 = sub_2314785F8();
        v110 = v199;
        if (v109)
        {
          v111 = sub_23142F62C(v91);
          if ((v108 & 1) != (v112 & 1))
          {
            goto LABEL_52;
          }

          v107 = v111;
        }

        if ((v108 & 1) == 0)
        {
          sub_231408A8C(&v199);
          OUTLINED_FUNCTION_187();
          *(v113 + 8 * v107) = v91;
          *(*(v110 + 56) + 8 * v107) = v114;
          v115 = *(v110 + 16);
          v116 = __OFADD__(v115, 1);
          v117 = v115 + 1;
          if (v116)
          {
            goto LABEL_49;
          }

          *(v110 + 16) = v117;
        }

        v118 = v110;
        v119 = *(v110 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        v199 = *(v119 + 8 * v107);
        *(v119 + 8 * v107) = 0x8000000000000000;
        sub_2313F0604();
        OUTLINED_FUNCTION_190();
        if (__OFADD__(v122, v123))
        {
          goto LABEL_48;
        }

        v124 = v120;
        v125 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        v126 = sub_2314785F8();
        v127 = v199;
        if (v126)
        {
          v128 = sub_2313F0604();
          if ((v125 & 1) != (v129 & 1))
          {
            goto LABEL_52;
          }

          v124 = v128;
        }

        *(v119 + 8 * v107) = v127;

        v130 = *(v119 + 8 * v107);
        if (v125)
        {

          v71 = v192;
          v84 = v118;
        }

        else
        {
          OUTLINED_FUNCTION_179(v130 + 8 * (v124 >> 6));
          v132 = (v131 + 16 * v124);
          *v132 = v202;
          v132[1] = v92;
          *(*(v130 + 56) + 8 * v124) = MEMORY[0x277D84F90];
          v133 = *(v130 + 16);
          v116 = __OFADD__(v133, 1);
          v134 = v133 + 1;
          v71 = v192;
          if (v116)
          {
            goto LABEL_50;
          }

          v84 = v118;
          *(v130 + 16) = v134;
        }

        v135 = *(v130 + 56);
        v136 = *(v135 + 8 * v124);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v135 + 8 * v124) = v136;
        v86 = v193;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_23141CB80();
          v136 = v143;
          *(v135 + 8 * v124) = v143;
        }

        v139 = *(v136 + 16);
        v138 = *(v136 + 24);
        if (v139 >= v138 >> 1)
        {
          OUTLINED_FUNCTION_20(v138);
          sub_23141CB80();
          v136 = v144;
          *(v135 + 8 * v124) = v144;
        }

        *(v136 + 16) = v139 + 1;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_57_1();
        sub_2314448B0(v194, v140, v141);
        OUTLINED_FUNCTION_56_1();
        sub_23140166C(v86, v142);
        OUTLINED_FUNCTION_65_1();
        v85 = v191 + 1;
      }

      v145 = v173;
      v146 = *(v173 + 16);
      if (v146)
      {
        v199 = MEMORY[0x277D84F90];
        sub_2314128E4(0, v146, 0);
        v147 = 0;
        v148 = v199;
        OUTLINED_FUNCTION_59();
        v150 = v145 + v149;
        v151 = v84;
        while (v147 < *(v145 + 16))
        {
          v152 = v186;
          sub_2314015B4(v150 + *(v185 + 72) * v147, v186, type metadata accessor for _Interaction);
          v153 = v152;
          v154 = v184;
          sub_2314015B4(v153, v184, type metadata accessor for _Interaction);
          sub_23143909C(v154, v178);
          if (v71)
          {
            OUTLINED_FUNCTION_20_3();
            sub_23140166C(v186, v169);

            OUTLINED_FUNCTION_102_0();

            goto LABEL_43;
          }

          if (*(v84 + 16) && (v155 = sub_23142F62C(*v186), (v156 & 1) != 0))
          {
            v157 = *(*(v84 + 56) + 8 * v155);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
            v157 = sub_231477DC8();
          }

          v158 = v183;
          sub_2314448B0(v178, v183, type metadata accessor for Interaction);
          v159 = *(v186 + *(v174 + 68));
          OUTLINED_FUNCTION_20_3();
          sub_23140166C(v160, v161);
          v162 = v182;
          *(v158 + *(v182 + 20)) = v157;
          *(v158 + *(v162 + 24)) = v159;
          v199 = v148;
          v164 = *(v148 + 16);
          v163 = *(v148 + 24);
          if (v164 >= v163 >> 1)
          {
            v168 = OUTLINED_FUNCTION_20(v163);
            sub_2314128E4(v168, v164 + 1, 1);
            v148 = v199;
          }

          ++v147;
          *(v148 + 16) = v164 + 1;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_70_0(v167, v148 + v165 + *(v166 + 72) * v164);
          v71 = 0;
          v145 = v173;
          v84 = v151;
          if (v146 == v147)
          {

            goto LABEL_45;
          }
        }

        goto LABEL_51;
      }

      v148 = MEMORY[0x277D84F90];
LABEL_45:
      sub_2314147A0(v148);

      OUTLINED_FUNCTION_102_0();

      OUTLINED_FUNCTION_13_1();
      v171(v177, v176);
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_62();
}

void sub_231440934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v211 = v22;
  v26 = v25;
  v27 = type metadata accessor for Interaction(0);
  v28 = OUTLINED_FUNCTION_14(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v208 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBA0, &qword_231480010);
  OUTLINED_FUNCTION_14(v30);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13();
  v33 = OUTLINED_FUNCTION_28(v32);
  v34 = type metadata accessor for InteractionWithParameters(v33);
  v35 = OUTLINED_FUNCTION_0_0(v34, &a11);
  v189 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v38);
  v204 = sub_2314779E8();
  OUTLINED_FUNCTION_4();
  v210 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_0();
  v203 = v41;
  v42 = OUTLINED_FUNCTION_47();
  v43 = type metadata accessor for Entity(v42);
  v201 = *(v43 - 8);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_17_0();
  v212 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_81();
  v215 = v46;
  OUTLINED_FUNCTION_47();
  v205 = sub_231477948();
  OUTLINED_FUNCTION_4();
  v194 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_73_0();
  v50 = type metadata accessor for IPInteractionWithEntity(0);
  OUTLINED_FUNCTION_4();
  v206 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2();
  v55 = v54 - v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  OUTLINED_FUNCTION_4();
  v207 = v57;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v58);
  v60 = &v185 - v59;
  v61 = v26[1];
  v213 = *v26;
  v214[0] = v61;
  *(v214 + 9) = *(v26 + 25);
  v62 = *v21;
  v63 = v21[1];
  v64 = *(v21 + 16);
  v65 = sub_2313F4D04();
  if (!v22)
  {
    v199 = v55;
    v198 = v50;
    v202 = v20;
    v200 = v56;
    *&v213 = v62;
    *(&v213 + 1) = v63;
    LOBYTE(v214[0]) = v64;
    v73 = v65;
    sub_2313FEEDC(0, v66, v67, v68, v69, v70, v71, v72, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196);
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_121_0();
    *(v75 - 32) = v62;
    *(v75 - 24) = v63;
    *(v75 - 16) = v64;
    *(v75 - 8) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E100, &qword_23147CD90);
    sub_231477098();
    v76 = 0;
    v185 = v73;
    v186 = v60;
    v78 = *(&v213 + 1);
    v187 = v213;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    v79 = sub_231477DC8();
    v80 = v78;
    v197 = *(v78 + 16);
    v196 = (v210 + 2);
    v81 = v207;
    v82 = v208;
    v83 = v199;
    v84 = v200;
    v85 = v202;
    v86 = v206;
    v195 = v80;
    while (1)
    {
      OUTLINED_FUNCTION_89();
      v89 = v198;
      if (v90 == v88)
      {
        break;
      }

      if (v88 >= *(v87 + 16))
      {
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
        sub_231478888();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_59();
      v93 = *(v86 + 72);
      v210 = v94;
      sub_2314015B4(v91 + v92 + v93 * v94, v83, type metadata accessor for IPInteractionWithEntity);
      v95 = *v83;
      v96 = v83[1];
      v97 = v83;
      v98 = v83[2];
      v99 = v97 + *(v89 + 24);
      v100 = v203;
      (*v196)(v203, v99, v204);

      sub_2314204D8(v100, v101, v102, v103, v104, v105, v106, v107, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196);
      if (v76)
      {
        OUTLINED_FUNCTION_59_1();
        sub_23140166C(v199, v181);

        OUTLINED_FUNCTION_102_0();

        OUTLINED_FUNCTION_142_0();

        (*(v81 + 8))(v186, v84);
        goto LABEL_46;
      }

      v209 = 0;
      OUTLINED_FUNCTION_58_0();
      sub_2314015B4(v215, v212, v108);
      swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v79;
      sub_23142F62C(v95);
      OUTLINED_FUNCTION_190();
      if (__OFADD__(v111, v112))
      {
        goto LABEL_50;
      }

      v113 = v109;
      v114 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A8, &qword_23147CCE0);
      v115 = sub_2314785F8();
      v116 = v213;
      if (v115)
      {
        v117 = sub_23142F62C(v95);
        if ((v114 & 1) != (v118 & 1))
        {
          goto LABEL_55;
        }

        v113 = v117;
      }

      if ((v114 & 1) == 0)
      {
        sub_231408A8C(&v213);
        OUTLINED_FUNCTION_187();
        *(v119 + 8 * v113) = v95;
        *(*(v116 + 56) + 8 * v113) = v120;
        v121 = *(v116 + 16);
        v122 = __OFADD__(v121, 1);
        v123 = v121 + 1;
        if (v122)
        {
          goto LABEL_53;
        }

        *(v116 + 16) = v123;
      }

      v211 = v116;
      v124 = *(v116 + 56);
      swift_isUniquelyReferenced_nonNull_native();
      *&v213 = *(v124 + 8 * v113);
      *(v124 + 8 * v113) = 0x8000000000000000;
      OUTLINED_FUNCTION_128();
      sub_2313F0604();
      OUTLINED_FUNCTION_190();
      if (__OFADD__(v127, v128))
      {
        goto LABEL_51;
      }

      v129 = v125;
      v130 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
      v131 = sub_2314785F8();
      v132 = v213;
      if (v131)
      {
        OUTLINED_FUNCTION_128();
        v133 = sub_2313F0604();
        if ((v130 & 1) != (v134 & 1))
        {
          goto LABEL_55;
        }

        v129 = v133;
      }

      *(v124 + 8 * v113) = v132;

      v135 = *(v124 + 8 * v113);
      if (v130)
      {
      }

      else
      {
        OUTLINED_FUNCTION_179(v135 + 8 * (v129 >> 6));
        v137 = (v136 + 16 * v129);
        *v137 = v96;
        v137[1] = v98;
        *(*(v135 + 56) + 8 * v129) = MEMORY[0x277D84F90];
        v138 = *(v135 + 16);
        v122 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v122)
        {
          goto LABEL_54;
        }

        *(v135 + 16) = v139;
      }

      v140 = *(v135 + 56);
      v141 = *(v140 + 8 * v129);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v140 + 8 * v129) = v141;
      v81 = v207;
      v82 = v208;
      v84 = v200;
      v85 = v202;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_23141CB80();
        v141 = v150;
        *(v140 + 8 * v129) = v150;
      }

      v144 = *(v141 + 16);
      v143 = *(v141 + 24);
      if (v144 >= v143 >> 1)
      {
        OUTLINED_FUNCTION_20(v143);
        sub_23141CB80();
        v141 = v151;
        *(v140 + 8 * v129) = v151;
      }

      v86 = v206;
      *(v141 + 16) = v144 + 1;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_57_1();
      sub_2314448B0(v145, v146, v147);
      OUTLINED_FUNCTION_56_1();
      sub_23140166C(v215, v148);
      OUTLINED_FUNCTION_59_1();
      v83 = v199;
      sub_23140166C(v199, v149);
      v76 = v209;
      v79 = v211;
      OUTLINED_FUNCTION_142_0();
    }

    v152 = v82;
    v211 = v79;

    v153 = 0;
    v154 = v187;
    v216 = *(v187 + 16);
    v212 = v194 + 16;
    v209 = MEMORY[0x277D84F90];
    v210 = (v194 + 8);
    while (1)
    {
      v155 = v205;
      v156 = v193;
      if (v216 == v153)
      {

        sub_2314147A0(v209);

        v182 = OUTLINED_FUNCTION_159();
        v183(v182, v200);
        goto LABEL_46;
      }

      if (v153 >= *(v154 + 16))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_6();
      v159 = *(v158 + 16);
      v159(v85, v154 + v157 + *(v158 + 72) * v153, v155);
      v159(v156, v85, v155);
      sub_2314393C4(v156, v152);
      if (v76)
      {
        break;
      }

      v160 = sub_2314778C8();
      if (v161)
      {
        OUTLINED_FUNCTION_66_0();
        v162 = 1;
        v163 = v192;
        v164 = v191;
      }

      else
      {
        v165 = v211;
        if (*(v211 + 16) && (v166 = sub_23142F62C(v160), (v167 & 1) != 0))
        {
          v168 = *(*(v165 + 56) + 8 * v166);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
          v168 = sub_231477DC8();
        }

        v152 = v208;
        v163 = v192;
        sub_2314015B4(v208, v192, type metadata accessor for Interaction);
        v169 = v202;
        v170 = sub_231477868();
        OUTLINED_FUNCTION_66_0();
        v162 = 0;
        v164 = v191;
        *(v163 + *(v191 + 20)) = v168;
        v85 = v169;
        *(v163 + *(v164 + 24)) = v170;
        v154 = v187;
      }

      v171 = v164;
      __swift_storeEnumTagSinglePayload(v163, v162, 1, v164);
      (*v210)(v85, v205);
      if (__swift_getEnumTagSinglePayload(v163, 1, v171) == 1)
      {
        sub_2313E937C(v163, &qword_27DD4EBA0, &qword_231480010);
        ++v153;
      }

      else
      {
        v172 = v188;
        sub_2314448B0(v163, v188, type metadata accessor for InteractionWithParameters);
        sub_2314448B0(v172, v190, type metadata accessor for InteractionWithParameters);
        v173 = v209;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_23141D5B0();
          v173 = v179;
        }

        v175 = *(v173 + 16);
        v174 = *(v173 + 24);
        if (v175 >= v174 >> 1)
        {
          OUTLINED_FUNCTION_20(v174);
          sub_23141D5B0();
          v173 = v180;
        }

        ++v153;
        *(v173 + 16) = v175 + 1;
        OUTLINED_FUNCTION_6();
        v209 = v173;
        OUTLINED_FUNCTION_70_0(v178, v173 + v176 + *(v177 + 72) * v175);
      }

      v76 = 0;
    }

    (*v210)(v85, v155);

    v184 = OUTLINED_FUNCTION_159();
    v77(v184, v200);
  }

LABEL_46:
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144157C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for _Interaction(0);
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E120, &qword_23147CDB0);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E128, &qword_23147CDB8);
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0, MEMORY[0x277D0B768]);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction, &unk_231480534);
  v14 = v53;
  result = sub_231476F58();
  if (!v14)
  {
    v16 = result;
    v17 = v48;
    v43 = 0;
    v44 = v10;
    v45 = v13;
    v53 = v11;
    v18 = *(result + 16);
    v19 = MEMORY[0x277D84F90];
    v46 = a1;
    v42 = result;
    if (v18)
    {
      v55[0] = MEMORY[0x277D84F90];
      sub_23141293C(0, v18, 0);
      v19 = v55[0];
      v20 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v21 = *(v17 + 72);
      v22 = v50;
      do
      {
        sub_2314015B4(v20, v5, type metadata accessor for _Interaction);
        v23 = *v5;
        sub_23140166C(v5, type metadata accessor for _Interaction);
        v55[0] = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_23141293C(v24 > 1, v25 + 1, 1);
          v19 = v55[0];
        }

        *(v19 + 16) = v25 + 1;
        *(v19 + 8 * v25 + 32) = v23;
        v20 += v21;
        --v18;
      }

      while (v18);
    }

    else
    {
      v22 = v50;
    }

    v55[7] = sub_231441C90(v19);
    v26 = v52;
    v27 = v45;
    v28 = v49;
    if (qword_280C3BD20 != -1)
    {
      swift_once();
    }

    v29 = sub_2314776A8();
    v30 = __swift_project_value_buffer(v29, qword_280C3D868);
    v54[3] = v29;
    v54[4] = MEMORY[0x277D0B7F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
    v55[3] = sub_2314770D8();
    v55[4] = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E118, &qword_23147CDA8);
    sub_2313ED944(&qword_280C3C128, &qword_27DD4E118, &qword_23147CDA8, MEMORY[0x277D83B68]);
    sub_231478098();
    __swift_destroy_boxed_opaque_existential_0(v54);

    sub_231444824();
    sub_231476EF8();
    __swift_destroy_boxed_opaque_existential_0(v55);
    v32 = v28;
    if (qword_280C3BD18 != -1)
    {
      swift_once();
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E130, &qword_23147CDC0);
    __swift_project_value_buffer(v33, qword_280C3D850);
    sub_2313ED944(&qword_280C3C0D0, &qword_27DD4E120, &qword_23147CDB0, MEMORY[0x277D0B778]);
    sub_2313ED944(&qword_280C3C0E0, &qword_27DD4E130, &qword_23147CDC0, MEMORY[0x277D0B758]);
    v34 = v44;
    v35 = v51;
    sub_2314771D8();
    v36 = *(v22 + 8);
    v36(v32, v35);
    type metadata accessor for _InteractionWithEntity(0);
    sub_2314774C8();
    v36(v34, v35);
    sub_2313ED944(&qword_280C3C0C8, &qword_27DD4E128, &qword_23147CDB8, MEMORY[0x277D0B768]);
    sub_231400E2C(&qword_280C3BCC0, type metadata accessor for _InteractionWithEntity, &unk_2314808FC);
    v37 = v53;
    v38 = v43;
    v39 = sub_231476F58();
    result = (*(v26 + 8))(v27, v37);
    if (v38)
    {
    }

    else
    {
      v40 = v47;
      *v47 = v42;
      v40[1] = v39;
    }
  }

  return result;
}

uint64_t sub_231441C90(uint64_t a1)
{
  v2 = MEMORY[0x23192E2C0](*(a1 + 16), MEMORY[0x277D84A28], MEMORY[0x277D84A38]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_23142B038(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_231441D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E108, &qword_23147CD98);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v38 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D0, &qword_23147CD58);
  v47 = *(v49 - 8);
  v4 = MEMORY[0x28223BE20](v49);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E110, &qword_23147CDA0);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_231477948();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8, MEMORY[0x277D0B768]);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230], MEMORY[0x277D1F228]);
  v13 = v54;
  result = sub_231476F58();
  if (!v13)
  {
    v40 = v9;
    v41 = v7;
    v42 = a1;
    v15 = *(result + 16);
    v39 = 0;
    v38 = result;
    if (v15)
    {
      v16 = *(v52 + 16);
      v17 = result + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v53 = *(v52 + 72);
      v54 = v16;
      v18 = (v52 + 8);
      v19 = MEMORY[0x277D84F90];
      v52 += 16;
      do
      {
        v54(v12, v17, v10);
        v20 = sub_2314778C8();
        v22 = v21;
        (*v18)(v12, v10);
        if ((v22 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23141D688();
            v19 = v24;
          }

          v23 = *(v19 + 16);
          if (v23 >= *(v19 + 24) >> 1)
          {
            sub_23141D688();
            v19 = v25;
          }

          *(v19 + 16) = v23 + 1;
          *(v19 + 8 * v23 + 32) = v20;
        }

        v17 += v53;
        --v15;
      }

      while (v15);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v26 = sub_231441C90(v19);
    sub_231477988();
    v56[7] = v26;
    v55[3] = sub_2314776A8();
    v55[4] = MEMORY[0x277D0B7F8];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_2314776B8();
    v56[3] = sub_2314770D8();
    v56[4] = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E118, &qword_23147CDA8);
    sub_2313ED944(&qword_280C3C128, &qword_27DD4E118, &qword_23147CDA8, MEMORY[0x277D83B68]);
    sub_231478098();
    __swift_destroy_boxed_opaque_existential_0(v55);

    sub_231400E2C(&qword_280C3C190, MEMORY[0x277D1F240], MEMORY[0x277D1F238]);
    v27 = v44;
    sub_231476EF8();
    __swift_destroy_boxed_opaque_existential_0(v56);
    v28 = v46;
    sub_231477978();
    sub_2313ED944(&qword_280C3C8C8, &qword_27DD4E0D0, &qword_23147CD58, MEMORY[0x277D0B778]);
    sub_2313ED944(&qword_280C3C8E0, &qword_27DD4E108, &qword_23147CD98, MEMORY[0x277D0B758]);
    v29 = v45;
    v31 = v49;
    v30 = v50;
    sub_2314771D8();
    (*(v48 + 8))(v28, v30);
    v32 = *(v47 + 8);
    v32(v27, v31);
    type metadata accessor for IPInteractionWithEntity(0);
    v33 = v40;
    sub_2314774C8();
    v32(v29, v31);
    sub_2313ED944(&qword_280C3C8D0, &qword_27DD4E110, &qword_23147CDA0, MEMORY[0x277D0B768]);
    sub_231400E2C(&qword_280C3C3A0, type metadata accessor for IPInteractionWithEntity, &unk_231481B00);
    v34 = v41;
    v35 = v39;
    v36 = sub_231476F58();
    result = (*(v51 + 8))(v33, v34);
    if (v35)
    {
    }

    else
    {
      v37 = v43;
      *v43 = v38;
      v37[1] = v36;
    }
  }

  return result;
}

uint64_t *InteractionQuery.fetchOne(_:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = OUTLINED_FUNCTION_88();
    if (v1)
    {
      return result;
    }

    OUTLINED_FUNCTION_185();
    sub_2313FEB98();
  }

  else
  {
    result = OUTLINED_FUNCTION_88();
    if (v1)
    {
      return result;
    }

    OUTLINED_FUNCTION_185();
    sub_23143BA9C();
  }
}

uint64_t sub_231442560(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0, MEMORY[0x277D0B768]);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction, &unk_231480534);
  return sub_231476F68();
}

uint64_t sub_2314429E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0, MEMORY[0x277D0B768]);
  result = sub_2314775E8();
  if (!v5)
  {
    v7 = sub_2313FA820();
    if (v7)
    {
      sub_231442C9C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v28, *var48, var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v23 = sub_231477B68();
      __swift_project_value_buffer(v23, qword_280C3D970);
      v24 = sub_231477B58();
      v25 = sub_2314782B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        var48[0] = v27;
        *v26 = 136446722;
        *(v26 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, var48);
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_2313EB684(0xD00000000000002ALL, 0x8000000231482DB0, var48);
        *(v26 + 22) = 2050;
        *(v26 + 24) = 376;
        _os_log_impl(&dword_2313E1000, v24, v25, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23192F1F0](v27, -1, -1);
        MEMORY[0x23192F1F0](v26, -1, -1);
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

void sub_231442C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_64();
  v30 = v29;
  v31 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  sub_231476BD8();
  v38 = sub_231478178();
  v38[2] = 8;
  v38[4] = 0;
  v38[5] = 0;
  v39 = *(type metadata accessor for HistoryStats(0) + 20);
  *(v30 + v39) = v38;
  sub_231477638();
  if (v138)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      sub_231476BB8();
      (*(v33 + 40))(v30, v37, v31);
    }
  }

  else
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5A0, &qword_231479850);
  inited = swift_initStackObject();
  *(inited + 24) = 16;
  sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v71 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v71, qword_280C3D970);
    v73 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v73))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v74 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v74);
    v75 = OUTLINED_FUNCTION_17_3(4.8754e-34);
    *(v28 + 4) = sub_2313EB684(v75, 0x8000000231482B90, v137);
    *(v28 + 12) = 2082;
    OUTLINED_FUNCTION_83_0();
    v78 = sub_2313EB684(0xD000000000000016, v76, v77);
    OUTLINED_FUNCTION_24_2(v78);
    v79 = 818;
    goto LABEL_69;
  }

  *(inited + 32) = a18;
  sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_36;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
  if ((OUTLINED_FUNCTION_30_2(v41, v42, v43, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_36:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v80 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v80, qword_280C3D970);
    v81 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v81))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v82 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v82);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v86 = sub_2313EB684(v83, v84, v85);
    v87 = OUTLINED_FUNCTION_15_7(v86);
    OUTLINED_FUNCTION_24_2(v87);
    v79 = 819;
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_157();
  *(inited + 40) = a18;
  v44 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_30_2(v44, v45, v46, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_41:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v88 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v88, qword_280C3D970);
    v89 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v89))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v90 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v90);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v94 = sub_2313EB684(v91, v92, v93);
    v95 = OUTLINED_FUNCTION_15_7(v94);
    OUTLINED_FUNCTION_24_2(v95);
    v79 = 820;
    goto LABEL_69;
  }

  *(inited + 48) = a18;
  v47 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_46;
  }

  if ((OUTLINED_FUNCTION_30_2(v47, v48, v49, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_46:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v96 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v96, qword_280C3D970);
    v97 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v97))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v98 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v98);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v102 = sub_2313EB684(v99, v100, v101);
    v103 = OUTLINED_FUNCTION_15_7(v102);
    OUTLINED_FUNCTION_24_2(v103);
    v79 = 821;
    goto LABEL_69;
  }

  *(inited + 56) = a18;
  v50 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_51;
  }

  if ((OUTLINED_FUNCTION_30_2(v50, v51, v52, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_51:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v104 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v104, qword_280C3D970);
    v105 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v105))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v106 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v106);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v110 = sub_2313EB684(v107, v108, v109);
    v111 = OUTLINED_FUNCTION_15_7(v110);
    OUTLINED_FUNCTION_24_2(v111);
    v79 = 822;
    goto LABEL_69;
  }

  *(inited + 64) = a18;
  OUTLINED_FUNCTION_157();
  v53 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
LABEL_56:
    if (qword_280C3CF50 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_73;
  }

  if ((OUTLINED_FUNCTION_30_2(v53, v54, v55, MEMORY[0x277D84A28]) & 1) == 0)
  {
    goto LABEL_56;
  }

  *(inited + 72) = a18;
  v56 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_60;
  }

  if ((OUTLINED_FUNCTION_30_2(v56, v57, v58, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_60:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v120 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v120, qword_280C3D970);
    v121 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v121))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v122 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v122);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v126 = sub_2313EB684(v123, v124, v125);
    v127 = OUTLINED_FUNCTION_15_7(v126);
    OUTLINED_FUNCTION_24_2(v127);
    v79 = 824;
    goto LABEL_69;
  }

  *(inited + 80) = a18;
  v59 = sub_231477638();
  if (!v138)
  {
    sub_2313E937C(v137, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_65;
  }

  if ((OUTLINED_FUNCTION_30_2(v59, v60, v61, MEMORY[0x277D84A28]) & 1) == 0)
  {
LABEL_65:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v128 = sub_231477B68();
    v72 = OUTLINED_FUNCTION_182(v128, qword_280C3D970);
    v129 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v129))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v130 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v130);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v134 = sub_2313EB684(v131, v132, v133);
    v135 = OUTLINED_FUNCTION_15_7(v134);
    OUTLINED_FUNCTION_24_2(v135);
    v79 = 825;
    goto LABEL_69;
  }

  *(inited + 88) = a18;
  v137[0] = MEMORY[0x277D84F90];
  sub_2314127E8(0, 8, 0);
  v62 = 32;
  v63 = v137[0];
  while (1)
  {
    v64 = *(inited + v62);
    if (v64 >= 0x7FFF)
    {
      LOWORD(v65) = 0x7FFF;
    }

    else
    {
      v65 = *(inited + v62);
    }

    if (v64 < -32768)
    {
      break;
    }

    v137[0] = v63;
    v67 = *(v63 + 16);
    v66 = *(v63 + 24);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v69 = OUTLINED_FUNCTION_20(v66);
      v136 = v70;
      sub_2314127E8(v69, v70, 1);
      v68 = v136;
      v63 = v137[0];
    }

    *(v63 + 16) = v68;
    *(v63 + 2 * v67 + 32) = v65;
    v62 += 8;
    if (v62 == 96)
    {
      swift_setDeallocating();

      *(v30 + v39) = v63;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_73:
  OUTLINED_FUNCTION_0();
  swift_once();
LABEL_57:
  v112 = sub_231477B68();
  v72 = OUTLINED_FUNCTION_182(v112, qword_280C3D970);
  v113 = sub_2314782B8();
  if (OUTLINED_FUNCTION_50_1(v113))
  {
    OUTLINED_FUNCTION_23_3();
    v114 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v114);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v118 = sub_2313EB684(v115, v116, v117);
    v119 = OUTLINED_FUNCTION_15_7(v118);
    OUTLINED_FUNCTION_24_2(v119);
    v79 = 823;
LABEL_69:
    *(v28 + 24) = v79;
    _os_log_impl(&dword_2313E1000, v72, v38, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

LABEL_70:

  sub_23141F91C();
  swift_allocError();
  swift_willThrow();
  *(inited + 16) = 0;

  sub_23140166C(v30, type metadata accessor for HistoryStats);
LABEL_71:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_231443634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8, MEMORY[0x277D0B768]);
  result = sub_2314775E8();
  if (!v5)
  {
    v7 = sub_2313FA820();
    if (v7)
    {
      sub_231442C9C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v28, *var48, var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v23 = sub_231477B68();
      __swift_project_value_buffer(v23, qword_280C3D970);
      v24 = sub_231477B58();
      v25 = sub_2314782B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        var48[0] = v27;
        *v26 = 136446722;
        *(v26 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, var48);
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_2313EB684(0xD000000000000033, 0x8000000231482B50, var48);
        *(v26 + 22) = 2050;
        *(v26 + 24) = 398;
        _os_log_impl(&dword_2313E1000, v24, v25, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23192F1F0](v27, -1, -1);
        MEMORY[0x23192F1F0](v26, -1, -1);
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2314438EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    sub_23141252C(0, v4, 0);
    v7 = a2;
    v5 = v20;
    v8 = (a1 + 32);
    while (1)
    {
      v9 = *v8++;
      v18 = v9;
      sub_231443D54(&v18, &v17, v19);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v10 = v19[0];
      v11 = v19[1];
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23141252C(v12 > 1, v13 + 1, 1);
        v7 = a2;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
    sub_2313ED944(&qword_280C3C138, &qword_27DD4D638, qword_231479978, MEMORY[0x277D83958]);
    v7 = sub_231477E28();
  }

  return v7;
}

uint64_t sub_231443AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = *&a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E140, &unk_23147CDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for HistoryStats(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0, MEMORY[0x277D0B768]);
  v13 = v36;
  result = sub_2314775E8();
  if (!v13)
  {
    v36 = v10;
    v15 = v33;
    while (1)
    {
      v16 = sub_2313FA820();
      v17 = v16;
      if (!v16)
      {
        break;
      }

      sub_2314438EC(v15, v16);
      sub_231442C9C(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      sub_2314015B4(v12, v9, type metadata accessor for HistoryStats);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
      sub_231460450();

      sub_23140166C(v12, type metadata accessor for HistoryStats);
    }
  }

  return result;
}

uint64_t sub_231443D54@<X0>(char *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  sub_231477638();

  sub_2313E95CC(v26, &v24, &qword_27DD4E0B8, &unk_23147CD38);
  if (!v25)
  {
    sub_2313E937C(&v24, &qword_27DD4E0B8, &unk_23147CD38);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v8 = sub_231477B68();
    __swift_project_value_buffer(v8, qword_280C3D970);
    v9 = sub_231477B58();
    v10 = sub_2314782B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v24 = v12;
      *v11 = 136446722;
      *(v11 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
      *(v11 + 22) = 2050;
      *(v11 + 24) = 835;
      _os_log_impl(&dword_2313E1000, v9, v10, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v12, -1, -1);
      MEMORY[0x23192F1F0](v11, -1, -1);
    }

    sub_23141F91C();
    v13 = swift_allocError();
    swift_willThrow();
    result = sub_2313E937C(v26, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_35;
  }

  sub_2313E937C(v26, &qword_27DD4E0B8, &unk_23147CD38);
  sub_2313F198C(&v24, v27);
  if (((1 << v3) & 0x18F) != 0)
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      v7 = *(&v24 + 1);
      v6 = v24;
LABEL_24:
      result = __swift_destroy_boxed_opaque_existential_0(v27);
      *a3 = v6;
      a3[1] = v7;
      return result;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v16 = sub_231477B68();
    __swift_project_value_buffer(v16, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 838;
  }

  else if (((1 << v3) & 0x30) != 0)
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      v26[0] = v24;
      v6 = sub_231478798();
      v7 = v15;
      goto LABEL_24;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v22 = sub_231477B68();
    __swift_project_value_buffer(v22, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 843;
  }

  else
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      if (v24)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v24)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      goto LABEL_24;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v23 = sub_231477B68();
    __swift_project_value_buffer(v23, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 840;
  }

  *(v19 + 24) = v21;
  _os_log_impl(&dword_2313E1000, v17, v18, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v19, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x23192F1F0](v20, -1, -1);
  MEMORY[0x23192F1F0](v19, -1, -1);
LABEL_34:

  sub_23141F91C();
  v13 = swift_allocError();
  swift_willThrow();
  result = __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_35:
  *a2 = v13;
  return result;
}

uint64_t sub_2314445EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23144462C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23144472C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2314137A4(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_23141D8E0((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_231444824()
{
  result = qword_280C3C480;
  if (!qword_280C3C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C480);
  }

  return result;
}

uint64_t sub_2314448B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_23144490C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    if (*(a1 + 16) == v3)
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*i == 15)
    {
      break;
    }

    ++v3;
  }

  v5 = v3;
LABEL_7:

  return v5;
}

void OUTLINED_FUNCTION_44_1()
{
  v4 = *v1;
  *(v4 + 16) = v0 + 1;
  v5 = v4 + 32 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

BOOL OUTLINED_FUNCTION_50_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_23140166C(v0, type metadata accessor for Interaction);
}

__n128 OUTLINED_FUNCTION_68(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  return sub_2314448B0(a1, a2, type metadata accessor for InteractionWithParameters);
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return sub_231478058();
}

uint64_t OUTLINED_FUNCTION_176@<X0>(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 648) = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_231477B58();
}

__n128 OUTLINED_FUNCTION_184(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_198()
{
  result = __swift_destroy_boxed_opaque_existential_0((v2 - 144));
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_199()
{
  result = __swift_destroy_boxed_opaque_existential_0((v2 - 144));
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1)
{
  v3 = *(v1 - 344);

  return sub_2313ED930(a1, v3);
}

uint64_t sub_231444E3C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 96);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t static InteractionStore.readonly(useIntelligencePlatform:)(char a1)
{
  v17 = &unk_28460C4B0;
  v2 = sub_2313E3100();
  v18 = v2;
  LOBYTE(v16[0]) = 0;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v16);
  v17 = &unk_28460C4B0;
  v18 = v2;
  LOBYTE(v16[0]) = 2;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v16);
  v17 = &unk_28460C4B0;
  v18 = v2;
  LOBYTE(v16[0]) = 1;
  sub_231476D68();
  v3 = __swift_destroy_boxed_opaque_existential_0(v16);
  OUTLINED_FUNCTION_15_8(xmmword_231479AA0, v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, *v15, v15[4], a1, v12);
  return sub_2313EADE8(0, 2uLL);
}

uint64_t sub_231444FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v13 = sub_231477D08();
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  if (a2)
  {
    sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
    sub_231477CD8();
    sub_2313E6E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
    sub_2313E6ED0();
    sub_231478498();
    (*(v7 + 104))(v11, *MEMORY[0x277D85260], v5);
    v15 = sub_231478338();
  }

  else
  {
    if (qword_280C3CA90 != -1)
    {
      swift_once();
    }

    v15 = qword_280C3C4A0;
  }

  v16 = v15;
  v17 = sub_231464D5C(a1, a2 & 1, v16);
  v19 = v18;

  if (v19)
  {

    if (v17)
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48) + 48);
      *a3 = v19;
      sub_2314222CC(a1, a3 + v20);
    }

    else
    {
      sub_2313EA454(a1);
      *a3 = v19;
    }

    type metadata accessor for _InteractionStore(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v21 = sub_231477B68();
    OUTLINED_FUNCTION_38(v21, qword_280C3D970);
    v22 = sub_231477B58();
    v23 = sub_2314782B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_102();
      *v24 = 0;
      _os_log_impl(&dword_2313E1000, v22, v23, "InteractionStore would not open.", v24, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    v25 = sub_23141ECFC();
    OUTLINED_FUNCTION_17_4(&type metadata for InteractionStoreError, v25);
    *v26 = 1;
    swift_willThrow();

    return sub_2313EA454(a1);
  }
}

uint64_t static InteractionStore.writable()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22_4();
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = (v9 - v8);
  sub_231464B0C(v2);
  result = sub_231444FB4(v2, 0, v10);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    result = OUTLINED_FUNCTION_10_13(v12);
    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t sub_231445478@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22_4();
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = (v9 - v8);
  v11 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  result = sub_231444FB4(v2, 0, v10);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    sub_2313E7328();
    result = OUTLINED_FUNCTION_10_13(v13);
    *(a1 + 40) = 1;
  }

  return result;
}

double static InteractionStore.lazy(readonly:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v9 = &unk_28460C4B0;
  v4 = sub_2313E3100();
  v10 = v4;
  LOBYTE(v8[0]) = 0;
  v5 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = &unk_28460C4B0;
  v10 = v4;
  OUTLINED_FUNCTION_19_7();
  v6 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = &unk_28460C4B0;
  v10 = v4;
  OUTLINED_FUNCTION_19_7();
  LOBYTE(v4) = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  LOBYTE(v8[0]) = v5 & 1;
  BYTE1(v8[0]) = v6 & 1;
  BYTE2(v8[0]) = v4 & 1;
  return static InteractionStore.lazy(readonly:features:)(v2, v8, a2);
}

double static InteractionStore.lazy(readonly:features:)@<D0>(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for _InteractionStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  LODWORD(v7) = *a2;
  v10 = a2[1];
  v11 = a2[2];
  if (v7 == 1)
  {
    sub_231446938(0, 0, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v13 = v12;
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    v14 = SiriRemembersBiomeStreamDonator.init()();
    *a3 = v13;
    *(a3 + 8) = 1;
    *(a3 + 9) = v10;
    *(a3 + 11) = v20;
    v15 = v21;
  }

  else
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E190, &qword_23147CE40) + 48);
    sub_231464B0C(v9);
    *(v9 + v16) = a1 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v18 = v17;
    v14 = 0;
    *a3 = v18;
    *(a3 + 8) = 0;
    *(a3 + 9) = v10;
    *(a3 + 11) = v22;
    v15 = v23;
  }

  *(a3 + 15) = v15;
  *(a3 + 10) = v11;
  *(a3 + 16) = v14;
  result = 0.0;
  *(a3 + 24) = xmmword_231479AA0;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_231445814(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  v10 = type metadata accessor for _InteractionStore(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_231476AF8();
  (*(*(v13 - 8) + 16))(v9, a2, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  result = sub_231444FB4(v9, a3, v12);
  if (!v3)
  {
    sub_2313EB404(a1);
    return sub_2314468A4(v12, a1);
  }

  return result;
}

uint64_t sub_231445974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = a2;
  v25 = a3;
  sub_2313E5218(0, &v24, a4, a5);
  if (v6)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    sub_2313EB404(a1);
    *a1 = v9;
    a1[1] = v10;
    a1[2] = v11;
    type metadata accessor for _InteractionStore(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v12 = sub_231477B68();
    __swift_project_value_buffer(v12, qword_280C3D970);
    v13 = sub_231477B58();
    v14 = sub_2314782A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2313E1000, v13, v14, "could not open an IP InteractionStore", v15, 2u);
      MEMORY[0x23192F1F0](v15, -1, -1);
    }

    sub_23141ECFC();
    swift_allocError();
    v17 = v16;
    v18 = sub_231477E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23147CE20;
    *(inited + 32) = 0x6449726F727265;
    *(inited + 40) = 0xE700000000000000;
    v24 = sub_231478998();
    v25 = v20;
    MEMORY[0x23192E060](46, 0xE100000000000000);
    MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

    v21 = sub_231477E58();

    *(inited + 48) = v21;
    *(inited + 56) = 1701603686;
    *(inited + 64) = 0xE400000000000000;
    *(inited + 72) = sub_231477E58();
    *(inited + 80) = 1668183398;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = sub_231477E58();
    *(inited + 104) = 1701734764;
    *(inited + 112) = 0xE400000000000000;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
    sub_231477DC8();
    v22 = sub_231477DA8();

    AnalyticsSendEvent();

    *v17 = 1;
    return swift_willThrow();
  }
}

uint64_t *InteractionStore.set(appIntentBackfillDate:)(uint64_t a1)
{
  result = sub_2313F4D04();
  if (!v1)
  {
    MEMORY[0x28223BE20](result);
    sub_2314770A8();
    sub_2314770F8();
  }

  return result;
}

uint64_t sub_231445D90(uint64_t a1)
{
  v2 = sub_231477468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231479AC0;
  v7 = MEMORY[0x277D0B840];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD000000000000015;
  *(v6 + 40) = 0x8000000231483010;
  v8 = sub_231476CA8();
  v9 = MEMORY[0x277D0B6A0];
  *(v6 + 96) = v8;
  *(v6 + 104) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 72));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  sub_231477448();
  sub_2314777E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static InteractionStore.delete()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v1 = OUTLINED_FUNCTION_14(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_34();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_231476AF8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  sub_231464B0C(v7);
  sub_2313EA3E4(v7, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_2313EA454(v4);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v15 = sub_231477B68();
    OUTLINED_FUNCTION_38(v15, qword_280C3D970);
    v16 = sub_231477B58();
    v17 = sub_2314782B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v18 = 136446722;
      *(v18 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482EF0, &v22);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_2313EB684(0x29286574656C6564, 0xE800000000000000, &v22);
      *(v18 + 22) = 2050;
      *(v18 + 24) = 234;
      _os_log_impl(&dword_2313E1000, v16, v17, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_7_8();
    }

    v19 = sub_23141F91C();
    OUTLINED_FUNCTION_17_4(&type metadata for UnwrapError, v19);
    swift_willThrow();
    return sub_2313EA454(v7);
  }

  else
  {
    sub_2313EA454(v7);
    (*(v10 + 32))(v14, v4, v8);
    sub_231464C34();
    return (*(v10 + 8))(v14, v8);
  }
}

void static InteractionStore.resetView()()
{
  type metadata accessor for SiriRemembersBiomeStreamDonator();
  swift_initStackObject();
  SiriRemembersBiomeStreamDonator.init()();
  sub_23145F574();

  sub_231474E50(0);
}

uint64_t sub_231446290()
{
  v0 = sub_231478308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2314782F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_231477D08();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  v7[1] = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_231478338();
  qword_280C3C4A0 = result;
  return result;
}

SiriRemembers::InteractionStoreError_optional __swiftcall InteractionStoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231478638();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InteractionStoreError.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2314465A8@<X0>(unint64_t *a1@<X8>)
{
  result = InteractionStoreError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314465D0(char a1)
{
  v4[3] = &unk_28460C4B0;
  v4[4] = sub_2313E3100();
  LOBYTE(v4[0]) = a1;
  v2 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_23144668C()
{
  result = qword_27DD4E1A0;
  if (!qword_27DD4E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E1A0);
  }

  return result;
}

unint64_t sub_2314466E0(uint64_t a1)
{
  result = sub_23141ECFC();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2314467E4()
{
  if (!qword_280C3D6E0)
  {
    sub_23144682C(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280C3D6E0);
    }
  }
}

void sub_23144682C(uint64_t a1)
{
  if (!qword_280C3D6D8)
  {
    sub_231476AF8();
    v1 = sub_231478418();
    if (!v2)
    {
      atomic_store(v1, &qword_280C3D6D8);
    }
  }
}

uint64_t sub_2314468A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InteractionStore(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231446938@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_2313E7A6C(a1, a2, &v20 - v12);
  v14 = OUTLINED_FUNCTION_30_3();
  sub_2314472B0(v14, v15);
  v16 = sub_2314779F8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v16) == 1)
  {
    sub_2313E7E10(v13);
    sub_2313E7E10(v10);
    v17 = 1;
  }

  else
  {
    sub_231477958();
    sub_2313E7E10(v13);
    (*(*(v16 - 8) + 8))(v10, v16);
    v17 = 0;
  }

  v18 = sub_231476AF8();
  return __swift_storeEnumTagSinglePayload(a3, v17, 1, v18);
}

uint64_t sub_231446A8C()
{
  v0 = sub_231477348();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x28223BE20](v0);
  v26 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_231478308();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2314782F8();
  MEMORY[0x28223BE20](v22);
  v4 = sub_231477D08();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2314777F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_231477008();
  v21 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_231476FF8();
  *v8 = 0x4014000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x277D0B810], v5);
  sub_231476FC8();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CD8();
  v30 = MEMORY[0x277D84F90];
  sub_2313EB8FC(&qword_280C3CEA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  v15 = v21;
  sub_231478498();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v16 = v26;
  sub_231478338();
  sub_231476FA8();
  sub_231476FB8();
  sub_231476FE8();
  (*(v15 + 16))(v12, v14, v9);
  sub_2314770A8();
  swift_allocObject();
  v17 = sub_231477068();
  sub_231477968();

  v18 = v27;
  sub_231477328();
  if (v18)
  {
  }

  else
  {
  }

  (*(v28 + 8))(v16, v29);
  (*(v15 + 8))(v14, v9);
  return v17;
}

uint64_t sub_231446F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for DBOpenError(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v14 = sub_231477B68();
  OUTLINED_FUNCTION_38(v14, qword_280C3D970);
  sub_23144724C(v1, v13);
  sub_23144724C(v1, v11);
  v15 = sub_231477B58();
  v16 = sub_2314782C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = a1;
    v28 = v26;
    *v17 = 136446466;
    v18 = sub_23146A9A8();
    v20 = v19;
    sub_2314471F0(v13);
    sub_2313EB684(v18, v20, &v28);
    OUTLINED_FUNCTION_29_2();
    *(v17 + 4) = v18;
    *(v17 + 12) = 2082;
    sub_23144724C(v11, v7);
    OUTLINED_FUNCTION_19();
    v21 = sub_231477EB8();
    v23 = v22;
    sub_2314471F0(v11);
    sub_2313EB684(v21, v23, &v28);
    OUTLINED_FUNCTION_29_2();
    *(v17 + 14) = v21;
    _os_log_impl(&dword_2313E1000, v15, v16, "Error(%{public}s): %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    a1 = v27;
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {

    sub_2314471F0(v11);
    sub_2314471F0(v13);
  }

  return sub_23144724C(v2, a1);
}

uint64_t sub_2314471F0(uint64_t a1)
{
  v2 = type metadata accessor for DBOpenError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23144724C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBOpenError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314472B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
}

uint64_t String.jsonValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

void Int.jsonValue.getter(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  a1[1] = 0;
  OUTLINED_FUNCTION_20_5(a1);
}

uint64_t sub_231447358()
{
  v1 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1B8, &qword_23147D068);
  OUTLINED_FUNCTION_0_14();
  v4 = sub_23144878C(v2, v3);
  OUTLINED_FUNCTION_18_6(v4);
  if (!v0)
  {
    sub_231477E98();
    OUTLINED_FUNCTION_16_5();
    sub_231477E88();
    if (v5)
    {
      OUTLINED_FUNCTION_23_7();
      v6 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v6, v7);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v9 = sub_231477B68();
      __swift_project_value_buffer(v9, qword_280C3D970);
      v10 = sub_231477B58();
      v11 = sub_2314782B8();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_26_6();
        swift_slowAlloc();
        v12 = OUTLINED_FUNCTION_16_8(4.8754e-34);
        v13 = OUTLINED_FUNCTION_13_11(v12);
        OUTLINED_FUNCTION_17_6(v13);
        OUTLINED_FUNCTION_13_0(&dword_2313E1000, v14, v15, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
      v16 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v16, v17);
    }
  }

  return OUTLINED_FUNCTION_7_10();
}

uint64_t JSONValue.jsonValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_9_13(*(v1 + 16), a1, v2, v3);
}

uint64_t Array<A>.jsonValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[7] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[2] = a3;
  v10[3] = swift_getKeyPath();
  v5 = sub_231478198();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_2314552F4(sub_231448528, v10, v5, &type metadata for JSONValue, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 4;
  return result;
}

void JSONValue.subscript.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (v2[16] == 4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*v2 + 16) > a1)
    {
      v3 = *v2 + 24 * a1;
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      *a2 = v4;
      a2[1] = v5;
      OUTLINED_FUNCTION_9_13(*(v3 + 48), a2, v4, v5);
      return;
    }

    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    OUTLINED_FUNCTION_20_5(a2);
  }
}

void JSONValue.subscript.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == 5 && (v3 = *v1, *(v3 + 16)) && (v4 = sub_2313F0604(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 24 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a1 = *v6;
    *(a1 + 8) = v8;
    v9 = *(v6 + 16);
    *(a1 + 16) = v9;

    sub_231401AEC(v7, v8, v9);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }
}

uint64_t JSONValue.BOOLValue.getter()
{
  switch(*(v0 + 16))
  {
    case 3:
      goto LABEL_5;
    case 4:
      v1 = &qword_27DD4E1B8;
      v2 = &qword_23147D068;
      goto LABEL_4;
    case 5:
      v1 = &qword_27DD4DA30;
      v2 = &qword_23147D060;
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
LABEL_5:

      break;
    default:
      break;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void JSONValue.rawValue.getter(void *a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v6 = MEMORY[0x277D83B88];
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x277D839F8];
LABEL_7:
      a1[3] = v6;
      *a1 = v2;
      return;
    case 3:
      v7 = v1[1];
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v2;
      a1[1] = v7;
      goto LABEL_11;
    case 4:
      v4 = &qword_27DD4E1B8;
      v5 = &qword_23147D068;
      goto LABEL_10;
    case 5:
      v4 = &qword_27DD4DA30;
      v5 = &qword_23147D060;
LABEL_10:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      *a1 = v2;
LABEL_11:

      break;
    default:
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v2 & 1;
      break;
  }
}

uint64_t JSONValue.intValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t JSONValue.doubleValue.getter()
{
  if (v0[16] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t JSONValue.stringValue.getter()
{
  if (*(v0 + 16) != 3)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t JSONValue.arrayValue.getter()
{
  if (*(v0 + 16) == 4)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t JSONValue.objectValue.getter()
{
  if (*(v0 + 16) == 5)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2314479DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  switch(*(v2 + 16))
  {
    case 1:
      *&v55 = *v2;
      result = sub_231478798();
      goto LABEL_30;
    case 2:
      result = sub_2314781C8();
LABEL_30:
      *a2 = result;
      *(a2 + 8) = v21;
      goto LABEL_31;
    case 3:
      v22 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v22 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        *&v55 = *v2;
        *(&v55 + 1) = v4;
        sub_231423704();

        result = sub_231478438();
        if (result)
        {
          *&v55 = v3;
          *(&v55 + 1) = v4;
          v23 = sub_231478448();
          v24 = OUTLINED_FUNCTION_22_5();
          sub_231403090(v24, v25, 3);
          v26 = *(v23 + 16);
          if (v26)
          {
            *&v55 = MEMORY[0x277D84F90];
            sub_231412784(0, v26, 0);
            v27 = v55;
            v28 = (v23 + 56);
            do
            {
              v29 = *(v28 - 3);
              v30 = *(v28 - 2);
              v31 = *(v28 - 1);
              v32 = *v28;

              MEMORY[0x23192DFC0](v29, v30, v31, v32);
              OUTLINED_FUNCTION_23_7();

              *&v55 = v27;
              v34 = *(v27 + 16);
              v33 = *(v27 + 24);
              if (v34 >= v33 >> 1)
              {
                sub_231412784((v33 > 1), v34 + 1, 1);
                v27 = v55;
              }

              *(v27 + 16) = v34 + 1;
              v35 = v27 + 40 * v34;
              *(v35 + 32) = v30;
              *(v35 + 40) = v31;
              *(v35 + 48) = 0;
              *(v35 + 56) = 0;
              *(v35 + 64) = 2;
              v28 += 4;
              --v26;
            }

            while (v26);
          }

          else
          {

            v27 = MEMORY[0x277D84F90];
          }

          *a2 = v27;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v36 = 1;
        }

        else
        {
          *a2 = v3;
          *(a2 + 8) = v4;
LABEL_31:
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v36 = 2;
        }
      }

      else
      {
        *a2 = 0u;
        *(a2 + 16) = 0u;
        v36 = -1;
      }

      goto LABEL_53;
    case 4:
      v8 = 0;
      v9 = *(v3 + 16);
      v10 = v3 + 48;
      v53 = MEMORY[0x277D84F90];
      break;
    case 5:
      *&v55 = sub_231401864(*v2);
      sub_231402E40(&v55);
      v37 = *(v55 + 16);
      if (v37)
      {
        v38 = v55 + 64;
        v39 = MEMORY[0x277D84F90];
        do
        {

          v40 = OUTLINED_FUNCTION_3_7();
          sub_231401AEC(v40, v41, v42);

          sub_2314479DC(v43, &v55);
          v44 = OUTLINED_FUNCTION_3_7();
          sub_231403090(v44, v45, v46);
          v47 = v57;
          if (v57 != 255)
          {
            v52 = v56;
            v54 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_0();
              sub_23141D16C();
              v39 = v50;
            }

            v48 = *(v39 + 16);
            if (v48 >= *(v39 + 24) >> 1)
            {
              sub_23141D16C();
              v39 = v51;
            }

            *(v39 + 16) = v48 + 1;
            v49 = v39 + 40 * v48;
            *(v49 + 32) = v54;
            *(v49 + 48) = v52;
            *(v49 + 64) = v47;
          }

          v38 += 40;
          --v37;
        }

        while (v37);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      if (*(v39 + 16))
      {
        v36 = 1;
      }

      else
      {

        v39 = 0;
        v36 = -1;
      }

      *a2 = v39;
      goto LABEL_52;
    default:
      v6 = 1702195828;
      if ((v3 & 1) == 0)
      {
        v6 = 0x65736C6166;
      }

      v7 = 0xE500000000000000;
      if (v3)
      {
        v7 = 0xE400000000000000;
      }

      *a2 = v6;
      *(a2 + 8) = v7;
      goto LABEL_31;
  }

LABEL_8:
  v11 = v10 + 24 * v8;
  while (v9 != v8)
  {
    if (v8 >= *(v3 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    sub_2314479DC(result, &v55);
    v12 = v57;
    v13 = v55;
    v14 = v56;
    if (v57 != 255)
    {
      v15 = v53;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_23141D16C();
        v15 = result;
      }

      v16 = v15;
      v17 = *(v15 + 16);
      v53 = v16;
      v18 = *(v16 + 24);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        sub_23141D16C();
        v19 = v17 + 1;
        v53 = result;
      }

      ++v8;
      *(v53 + 16) = v19;
      v20 = v53 + 40 * v17;
      *(v20 + 32) = v13;
      *(v20 + 48) = v14;
      *(v20 + 64) = v12;
      v10 = v3 + 48;
      goto LABEL_8;
    }

    result = sub_231412668(v55, *(&v55 + 1), v56, *(&v56 + 1), 255);
    v11 += 24;
    ++v8;
  }

  result = v53;
  if (*(v53 + 16))
  {
    v36 = 1;
  }

  else
  {

    result = 0;
    v36 = -1;
  }

  *a2 = result;
LABEL_52:
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
LABEL_53:
  *(a2 + 32) = v36;
  return result;
}

uint64_t static JSONValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_20;
      }

      v35 = OUTLINED_FUNCTION_98();
      sub_231403090(v35, v36, 1);
      v37 = OUTLINED_FUNCTION_175();
      sub_231403090(v37, v38, 1);
      v11 = v2 == v5;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_20;
      }

      v22 = OUTLINED_FUNCTION_98();
      sub_231403090(v22, v23, 2);
      v24 = OUTLINED_FUNCTION_175();
      sub_231403090(v24, v25, 2);
      v11 = *&v2 == *&v5;
      return v11 & 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_19;
      }

      if (v2 != v5 || v3 != *(a2 + 8))
      {
        v16 = sub_2314787C8();
        v27 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v27, v28, 3);
        v29 = OUTLINED_FUNCTION_2_13();
        sub_231401AEC(v29, v30, v31);
        v32 = OUTLINED_FUNCTION_2_13();
        sub_231403090(v32, v33, v34);
        v19 = OUTLINED_FUNCTION_175();
        v21 = 3;
        goto LABEL_18;
      }

      sub_231401AEC(v2, v3, 3);
      v53 = OUTLINED_FUNCTION_2_13();
      sub_231401AEC(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_2_13();
      sub_231403090(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_2_13();
      sub_231403090(v59, v60, v61);
      v11 = 1;
      return v11 & 1;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_19;
      }

      v12 = OUTLINED_FUNCTION_175();
      sub_231401AEC(v12, v13, 4);
      v14 = OUTLINED_FUNCTION_98();
      sub_231401AEC(v14, v15, 4);
      v16 = sub_23140F540(v2, v5);
      v17 = OUTLINED_FUNCTION_98();
      sub_231403090(v17, v18, 4);
      v19 = OUTLINED_FUNCTION_175();
      v21 = 4;
      goto LABEL_18;
    case 5:
      if (v6 == 5)
      {
        v39 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v39, v40, 5);
        v41 = OUTLINED_FUNCTION_98();
        sub_231401AEC(v41, v42, 5);
        sub_23141AB28(v2, v5);
        v16 = v43;
        v44 = OUTLINED_FUNCTION_98();
        sub_231403090(v44, v45, 5);
        v19 = OUTLINED_FUNCTION_175();
        v21 = 5;
LABEL_18:
        sub_231403090(v19, v20, v21);
        return v16 & 1;
      }

      else
      {
LABEL_19:

LABEL_20:
        v47 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v47, v48, v6);
        v49 = OUTLINED_FUNCTION_98();
        sub_231403090(v49, v50, v4);
        v51 = OUTLINED_FUNCTION_175();
        sub_231403090(v51, v52, v6);
        v11 = 0;
        return v11 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_20;
      }

      v7 = OUTLINED_FUNCTION_98();
      sub_231403090(v7, v8, 0);
      v9 = OUTLINED_FUNCTION_175();
      sub_231403090(v9, v10, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
  }
}

uint64_t JSONValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21_6();
  sub_231478938();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_21_6();
    v5 = sub_2314787D8();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = 3;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Bool.jsonValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void Double.jsonValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_20_5(a1);
}

uint64_t Substring.jsonValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x23192DFC0]();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  return result;
}

double sub_2314484C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 8))(&v6, *(a1 + a2 - 16));
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

void *Dictionary<>.jsonValue.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2314485B4(a2);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  return result;
}

void *sub_2314485B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  result = sub_231478628();
  v3 = 0;
  v29 = result;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v28 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v30 + 56);
      v16 = (*(v30 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      sub_2314137BC(v15 + 40 * v14, v34);
      v18 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v20 = *(v19 + 8);

      v20(v32, v18, v19);
      v21 = v32[0];
      v22 = v32[1];
      LOBYTE(v18) = v33;
      __swift_destroy_boxed_opaque_existential_0(v34);
      result = v29;
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v23 = (v29[6] + 16 * v14);
      *v23 = v37;
      v23[1] = v17;
      v24 = v29[7] + 24 * v14;
      *v24 = v21;
      *(v24 + 8) = v22;
      *(v24 + 16) = v18;
      v25 = v29[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v29[2] = v27;
      v9 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23144878C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4E1B8, &qword_23147D068);
    a2();
    OUTLINED_FUNCTION_98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231448800(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_231448840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void sub_2314488A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_2314787C8();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_2314787C8()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v97 = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
          {
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
            return;
          }

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v96 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v96;
          }

          v5 = v97;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_23141CD28();
        v8 = v92;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v93;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      v98 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_231448F30((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, v98);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v100 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_231448DF8(&v100, *a1, a3);
LABEL_103:
}

uint64_t sub_231448DF8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_231448F30((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_231448F30(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_23141FBB4(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_23141FBB4(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_19:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v18 = *(v10 - 5) == *(v6 - 5) && *(v10 - 4) == *(v6 - 4);
    if (!v18 && (sub_2314787C8() & 1) != 0)
    {
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v19;
      *(v5 + 16) = v20;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = 40 * ((v10 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

char *sub_231449110(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23144913C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D870, &qword_23147A1F8);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_231449278@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_2313ED944(&qword_280C3CE38, &qword_27DD4E1F8, &qword_23147D3C0, MEMORY[0x277D0B6D0]);
  if (sub_231477268())
  {
    v6 = type metadata accessor for KVPair(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_2313ED944(&qword_280C3CE40, &qword_27DD4E1F8, &qword_23147D3C0, MEMORY[0x277D0B6C8]);
    sub_2314770E8();
    v9 = type metadata accessor for KVPair(0);

    sub_231477808();

    if (v1)
    {
      return result;
    }

    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2313E937C(v5, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_231477278();
      v7 = a1;
      v8 = 1;
    }

    else
    {
      sub_23144D998(v5, a1);
      v7 = a1;
      v8 = 0;
    }

    v6 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t sub_23144949C()
{
  v0 = sub_231477308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231477348();
  __swift_allocate_value_buffer(v4, qword_280C3CD00);
  __swift_project_value_buffer(v4, qword_280C3CD00);
  sub_231477338();
  (*(v1 + 104))(v3, *MEMORY[0x277D0B738], v0);
  sub_231477318();
  return (*(v1 + 8))(v3, v0);
}

void KeyValueStore.init(namespace:)(uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_3();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  if (qword_280C3CD20 != -1)
  {
    OUTLINED_FUNCTION_1_15();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280C3CD28);
  sub_2313E9628(v12, v9, &qword_27DD4DA58, &unk_23147A530);
  v13 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {

    sub_2313E937C(v9, &qword_27DD4DA58, &unk_23147A530);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v14 = sub_231477B68();
    __swift_project_value_buffer(v14, qword_280C3D970);
    v15 = sub_231477B58();
    v16 = sub_2314782B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446722;
      *(v17 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, &v21);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_2313EB684(0xD000000000000010, 0x80000002314832C0, &v21);
      *(v17 + 22) = 2050;
      *(v17 + 24) = 22;
      _os_log_impl(&dword_2313E1000, v15, v16, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v18, -1, -1);
      MEMORY[0x23192F1F0](v17, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v13 - 8) + 32))(v11, v9, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    KeyValueStore.init(url:namespace:)();
    if (!v3)
    {
      *a3 = v19[1];
      *(a3 + 8) = v20;
    }
  }
}

void KeyValueStore.init(url:namespace:)()
{
  OUTLINED_FUNCTION_64();
  v25 = v1;
  v23 = v2;
  v24 = v3;
  v5 = v4;
  type metadata accessor for _KeyValueStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = (v8 - v7);
  v10 = sub_231477008();
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_2313E9628(v5, &v23 - v14, &qword_27DD4DA58, &unk_23147A530);
  v16 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_2313E937C(v15, &qword_27DD4DA58, &unk_23147A530);
  }

  else
  {
    sub_231476AD8();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  sub_231476FF8();
  sub_2314770A8();
  OUTLINED_FUNCTION_74();
  swift_allocObject();
  v17 = sub_231477088();
  if (v0)
  {

    sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
  }

  else
  {
    v18 = v17;
    if (__swift_getEnumTagSinglePayload(v5, 1, v16) != 1)
    {
      sub_231477078();
    }

    if (qword_280C3CCF8 != -1)
    {
      swift_once();
    }

    v19 = sub_231477348();
    __swift_project_value_buffer(v19, qword_280C3CD00);

    sub_231477328();

    *v9 = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D0, &qword_23147D2C8);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    sub_2313EAA04();
    v21 = v20;
    sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
    v22 = v24;
    *v24 = v23;
    v22[1] = v25;
    v22[2] = v21;
  }

  OUTLINED_FUNCTION_62();
}

void static KeyValueStore.inMemory(namespace:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  v6 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);

  KeyValueStore.init(url:namespace:)();
}

uint64_t sub_231449D5C(uint64_t a1)
{
  v2 = sub_231477468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_231477458();
  sub_231477538();
  (*(v3 + 8))(v5, v2);
  if (v1)
  {
    return sub_2313E937C(v7, &unk_27DD4D8A0, &unk_23147A220);
  }

  sub_2313E937C(v7, &unk_27DD4D8A0, &unk_23147A220);
}

void KeyValueStore.get<A>(key:)()
{
  OUTLINED_FUNCTION_64();
  v23 = v3;
  v24 = v2;
  v29 = v4;
  v25 = v5;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  OUTLINED_FUNCTION_3();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v26 = *v0;
  v27 = v15;
  v28 = v16;
  v17 = sub_23144A10C();
  if (!v1)
  {
    v21 = v11;
    v22 = v7;
    MEMORY[0x28223BE20](v17);
    *(&v21 - 6) = v14;
    *(&v21 - 5) = v15;
    v18 = v25;
    *(&v21 - 4) = v16;
    *(&v21 - 3) = v18;
    *(&v21 - 2) = v29;
    sub_231477098();
    OUTLINED_FUNCTION_9_14();
    v19 = v21;
    sub_2313E9628(v13, v21, &qword_27DD4E1D8, &qword_23147D2D0);
    v20 = type metadata accessor for KVPair(0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_2313E937C(v13, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_2313E937C(v19, &qword_27DD4E1D8, &qword_23147D2D0);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v24);
    }

    else
    {
      sub_23144A79C();
      sub_2313E937C(v13, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_23144DABC(v19, type metadata accessor for KVPair);
    }
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144A10C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = type metadata accessor for _KeyValueStore(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  sub_231478318();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v7;
  }

  v12 = sub_2314222CC(v7, v4);
  MEMORY[0x28223BE20](v12);
  v14[-4] = v4;
  v14[-3] = v8;
  v14[-2] = v9;
  v14[-1] = v10;
  v11 = v10;
  sub_231444DC0(sub_23144DA9C, &v14[-6]);
  if (!v1)
  {
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;
    v11 = sub_23144A10C();
  }

  sub_2313E937C(v4, &qword_27DD4DA58, &unk_23147A530);
  return v11;
}

uint64_t sub_23144A2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v31 = a6;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v30 = &v27 - v16;
  type metadata accessor for KVPair(0);
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair, &unk_23147D32C);
  sub_231476ED8();
  if (qword_280C3CC28 != -1)
  {
    swift_once();
  }

  v17 = sub_2314776A8();
  v18 = __swift_project_value_buffer(v17, qword_280C3D928);
  v38 = v17;
  v39 = MEMORY[0x277D0B7F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v27 = *(*(v17 - 8) + 16);
  v27(boxed_opaque_existential_1, v18, v17);
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D0B838];
  v33 = a2;
  v34 = a3;
  v20 = sub_2314770D8();
  v41 = v20;
  v42 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v40);

  sub_2314775D8();
  sub_2313E937C(&v33, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_2313ED944(&qword_280C3CE28, &qword_27DD4E1E8, &qword_23147D3B0, MEMORY[0x277D0B770]);
  sub_2314771C8();
  v21 = v15;
  v22 = *(v9 + 8);
  v22(v12, v8);
  __swift_destroy_boxed_opaque_existential_0(v40);
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_280C3D958);
  v38 = v17;
  v39 = MEMORY[0x277D0B7F8];
  v24 = __swift_allocate_boxed_opaque_existential_1(v37);
  v27(v24, v23, v17);
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D0B838];
  v33 = v28;
  v34 = v29;
  v41 = v20;
  v42 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v40);

  sub_2314775D8();
  sub_2313E937C(&v33, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v25 = v30;
  sub_2314771C8();
  v22(v21, v8);
  __swift_destroy_boxed_opaque_existential_0(v40);
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0, MEMORY[0x277D0B768]);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair, &unk_23147D35C);
  sub_231476F68();
  return (v22)(v25, v8);
}

void sub_23144A79C()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v4 = v3;
  v5 = dynamic_cast_existential_1_conditional(v1, v1, MEMORY[0x277D0B798]);
  if (!v5)
  {
    type metadata accessor for KVPair(0);
    v15 = sub_2314770B8();
    v18 = v15;
    v19 = v16;
    if (v17 == 2)
    {
      sub_231476788();
      OUTLINED_FUNCTION_74();
      swift_allocObject();
      sub_231476778();
      v20 = sub_231401D64(v18, v19);
      v22 = v21;
      sub_231476768();
      sub_2313EB8A4(v20, v22);

      if (v0)
      {
        goto LABEL_11;
      }

      v23 = v4;
      v24 = 0;
    }

    else
    {
      sub_23144DA5C(v15, v16, v17);
      v23 = v4;
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v23, v24, 1, v2);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  v29 = v4;
  type metadata accessor for KVPair(0);
  v9 = sub_231478418();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  sub_231477518();
  if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
  {
    (*(v11 + 8))(v14, v9);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    *(&v31 + 1) = v7;
    v32 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v14, v7);
  }

  v26 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B8, &unk_23147CD38);
  v27 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v26, v27 ^ 1u, 1, v2);
LABEL_11:
  OUTLINED_FUNCTION_62();
}

void KeyValueStore.getAll<A>(keys:)()
{
  OUTLINED_FUNCTION_64();
  sub_231477D98();
  v1 = sub_23144A10C();
  if (v0)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v1);
    sub_231477098();
    OUTLINED_FUNCTION_9_14();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144AB38(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v69 = a6;
  v62 = a5;
  v64 = a1;
  v68 = sub_231478418();
  v58 = *(v68 - 8);
  v11 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v56 - v14;
  v57 = *(a7 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v56 - v17;
  v18 = type metadata accessor for KVPair(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v70 = (&v56 - v27);
  MEMORY[0x28223BE20](v26);
  v63 = &v56 - v28;
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair, &unk_23147D32C);
  v73 = v18;
  sub_231476ED8();
  if (qword_280C3CC28 != -1)
  {
    swift_once();
  }

  v29 = sub_2314776A8();
  v30 = __swift_project_value_buffer(v29, qword_280C3D928);
  v76 = v29;
  v77 = MEMORY[0x277D0B7F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  v32 = *(v29 - 8);
  v60 = *(v32 + 16);
  v59 = v32 + 16;
  v60(boxed_opaque_existential_1, v30, v29);
  v74[3] = MEMORY[0x277D837D0];
  v74[4] = MEMORY[0x277D0B838];
  v74[0] = a2;
  v74[1] = a3;
  v33 = sub_2314770D8();
  v79 = v33;
  v80 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v78);

  sub_2314775D8();
  sub_2313E937C(v74, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v75);
  sub_2313ED944(&qword_280C3CE28, &qword_27DD4E1E8, &qword_23147D3B0, MEMORY[0x277D0B770]);
  sub_2314771C8();
  v61 = *(v22 + 8);
  v61(v25, v21);
  __swift_destroy_boxed_opaque_existential_0(v78);
  v74[0] = v62;
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v29, qword_280C3D958);
  v76 = v29;
  v77 = MEMORY[0x277D0B7F8];
  v35 = __swift_allocate_boxed_opaque_existential_1(v75);
  v60(v35, v34, v29);
  v79 = v33;
  v80 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313ED944(&qword_280C3CB78, &qword_27DD4D638, qword_231479978, MEMORY[0x277D83970]);
  sub_231478098();
  __swift_destroy_boxed_opaque_existential_0(v75);
  v36 = v63;
  v37 = v70;
  sub_2314771C8();
  v38 = v61;
  v61(v37, v21);
  __swift_destroy_boxed_opaque_existential_0(v78);
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0, MEMORY[0x277D0B768]);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair, &unk_23147D35C);
  v39 = v65;
  v40 = sub_231476F48();
  result = v38(v36, v21);
  if (!v39)
  {
    v70 = (v57 + 32);
    v65 = (v57 + 16);
    v64 = (v57 + 8);
    v42 = (v58 + 8);
    while (1)
    {
      v43 = v81;
      sub_231449278(v81);
      if (__swift_getEnumTagSinglePayload(v43, 1, v73) == 1)
      {

        return sub_2313E937C(v43, &qword_27DD4E1D8, &qword_23147D2D0);
      }

      sub_23144D998(v43, v20);
      v44 = v20[1];
      if (!v44)
      {
        break;
      }

      v45 = v40;
      v46 = *v20;

      v47 = v71;
      sub_23144A79C();
      v48 = v47;
      if (__swift_getEnumTagSinglePayload(v47, 1, a7) == 1)
      {
        sub_23144DABC(v20, type metadata accessor for KVPair);

        (*v42)(v47, v68);
      }

      else
      {
        v49 = v66;
        (*v70)(v66, v48, a7);
        v50 = v67;
        (*v65)(v67, v49, a7);
        __swift_storeEnumTagSinglePayload(v50, 0, 1, a7);
        v78[0] = v46;
        v78[1] = v44;
        sub_231477DD8();
        sub_231477DE8();
        (*v64)(v49, a7);
        sub_23144DABC(v20, type metadata accessor for KVPair);
      }

      v40 = v45;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v51 = sub_231477B68();
    __swift_project_value_buffer(v51, qword_280C3D970);
    v52 = sub_231477B58();
    v53 = sub_2314782B8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, v78);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_2313EB684(0x6B286C6C41746567, 0xED0000293A737965, v78);
      *(v54 + 22) = 2050;
      *(v54 + 24) = 85;
      _os_log_impl(&dword_2313E1000, v52, v53, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v55, -1, -1);
      MEMORY[0x23192F1F0](v54, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_23144DABC(v20, type metadata accessor for KVPair);
  }

  return result;
}

uint64_t KeyValueStore.set<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2314787A8();
  swift_allocObject();
  sub_231478148();
  v11 = *(TupleTypeMetadata2 + 48);
  *v12 = a1;
  *(v12 + 1) = a2;
  (*(*(a4 - 8) + 16))(&v12[v11], a3, a4);
  sub_231478198();

  sub_231477DC8();
  KeyValueStore.setAll<A>(pairs:)();
}

void KeyValueStore.setAll<A>(pairs:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v20 = v4;
  v21 = v5;
  v25 = v6;
  v7 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  sub_231476C98();
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v17 = sub_23144A10C();
  if (!v1)
  {
    v19 = &v19;
    MEMORY[0x28223BE20](v17);
    *(&v19 - 10) = v20;
    *(&v19 - 9) = v21;
    *(&v19 - 8) = v3;
    *(&v19 - 7) = v25;
    *(&v19 - 6) = 0xD00000000000004ALL;
    *(&v19 - 5) = v18;
    *(&v19 - 4) = v14;
    *(&v19 - 3) = v15;
    *(&v19 - 2) = v16;
    *(&v19 - 1) = v13;
    sub_2314770A8();
    sub_2314770F8();
  }

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144B954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v91 = a8;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a1;
  v71[2] = a11;
  v12 = a9;
  v85 = sub_231477468();
  v13 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231477EA8();
  MEMORY[0x28223BE20](v15 - 8);
  v71[1] = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2314770C8();
  v17 = *(v83 - 8);
  v18 = MEMORY[0x28223BE20](v83 - 8);
  v82 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a9 - 8);
  v21 = MEMORY[0x28223BE20](v18);
  v94 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v71 - v24;
  MEMORY[0x28223BE20](v23);
  v73 = v71 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = sub_231478418();
  v27 = MEMORY[0x28223BE20](v96);
  v97 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (v71 - v30);
  v32 = a2 + 64;
  v33 = 1 << *(a2 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a2 + 64);
  v36 = (v33 + 63) >> 6;
  v100 = (v20 + 32);
  v101 = (v20 + 16);
  v95 = (v29 + 32);
  v78 = (v17 + 16);
  v79 = (v13 + 8);
  v80 = (v17 + 8);
  v74 = v20;
  v92 = (v20 + 8);
  v75 = a2;

  v38 = 0;
  v77 = xmmword_23147CE20;
  v93 = a9;
  v81 = v25;
  v72 = v31;
  v76 = v32;
  v99 = v36;
  if (v35)
  {
    while (1)
    {
      v39 = v25;
      v40 = v38;
LABEL_10:
      v43 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v44 = v43 | (v40 << 6);
      v45 = (*(v75 + 48) + 16 * v44);
      v47 = *v45;
      v46 = v45[1];
      v48 = v74;
      v49 = v73;
      (*(v74 + 16))(v73, *(v75 + 56) + *(v74 + 72) * v44, v12);
      v41 = v97;
      v50 = TupleTypeMetadata2;
      v51 = *(TupleTypeMetadata2 + 48);
      *v97 = v47;
      *(v41 + 1) = v46;
      v42 = v50;
      (*(v48 + 32))(&v41[v51], v49, v12);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);

      v31 = v72;
      v25 = v39;
      v36 = v99;
LABEL_11:
      (*v95)(v31, v41, v96);
      if (__swift_getEnumTagSinglePayload(v31, 1, v42) == 1)
      {
      }

      v52 = v31[1];
      v102 = *v31;
      (*v100)(v25, v31 + *(v42 + 48), v12);
      (*v101)(v94, v25, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
      if (swift_dynamicCast())
      {
        sub_231444994(v103, v105);
        __swift_project_boxed_opaque_existential_1(v105, v105[3]);
        v53 = v82;
        sub_231477528();
        __swift_destroy_boxed_opaque_existential_0(v105);
      }

      else
      {
        v104 = 0;
        memset(v103, 0, sizeof(v103));
        sub_2313E937C(v103, &qword_27DD4E0B8, &unk_23147CD38);
        sub_2314767B8();
        swift_allocObject();
        sub_2314767A8();
        v54 = v106;
        v55 = sub_231476798();
        v106 = v54;
        if (v54)
        {
          (*v92)(v25, v93);
        }

        v57 = v55;
        v58 = v56;

        sub_231477E98();
        result = sub_231477E88();
        if (!v59)
        {
          goto LABEL_26;
        }

        v53 = v82;
        sub_231477EE8();
        sub_2313EB8A4(v57, v58);

        v36 = v99;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
      v60 = swift_allocObject();
      *(v60 + 16) = v77;
      v61 = MEMORY[0x277D837D0];
      *(v60 + 56) = MEMORY[0x277D837D0];
      v62 = MEMORY[0x277D0B840];
      v63 = v90;
      *(v60 + 32) = v89;
      *(v60 + 40) = v63;
      *(v60 + 96) = v61;
      *(v60 + 104) = v62;
      v64 = v102;
      *(v60 + 64) = v62;
      *(v60 + 72) = v64;
      *(v60 + 80) = v52;
      v65 = v83;
      *(v60 + 136) = v83;
      *(v60 + 144) = MEMORY[0x277D0B718];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v60 + 112));
      (*v78)(boxed_opaque_existential_1, v53, v65);
      v67 = sub_231476CA8();
      *(v60 + 176) = v67;
      *(v60 + 184) = MEMORY[0x277D0B6A0];
      v68 = __swift_allocate_boxed_opaque_existential_1((v60 + 152));
      (*(*(v67 - 8) + 16))(v68, v91, v67);

      v69 = v84;
      sub_231477448();
      v70 = v106;
      sub_2314777E8();
      v12 = v93;
      v106 = v70;
      if (v70)
      {

        (*v79)(v69, v85);
        (*v80)(v53, v65);
        return (*v92)(v81, v12);
      }

      (*v79)(v69, v85);
      (*v80)(v53, v65);
      v25 = v81;
      result = (*v92)(v81, v12);
      v32 = v76;
      if (!v35)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v41 = v97;
    v42 = TupleTypeMetadata2;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        __swift_storeEnumTagSinglePayload(v97, 1, 1, TupleTypeMetadata2);
        v35 = 0;
        goto LABEL_11;
      }

      v35 = *(v32 + 8 * v40);
      ++v38;
      if (v35)
      {
        v39 = v25;
        v38 = v40;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.dump()()
{
  v3 = MEMORY[0x277D84F98];
  v1 = sub_23144A10C();
  if (v0)
  {
  }

  MEMORY[0x28223BE20](v1);
  sub_231477098();
  OUTLINED_FUNCTION_9_14();
  return v3;
}

uint64_t sub_23144C3AC(uint64_t a1, void *a2)
{
  v44 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v41 - v3;
  v4 = type metadata accessor for KVPair(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair, &unk_23147D32C);
  sub_231476ED8();
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0, MEMORY[0x277D0B768]);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair, &unk_23147D35C);
  v11 = v45;
  v12 = sub_231476F48();
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    v44 = v12;
    v45 = v4;
    v14 = v6;
    v15 = v42;
    v16 = v46;
    v43 = v14;
    while (1)
    {
      sub_231449278(v16);
      v17 = v45;
      if (__swift_getEnumTagSinglePayload(v16, 1, v45) == 1)
      {

        return sub_2313E937C(v16, &qword_27DD4E1D8, &qword_23147D2D0);
      }

      sub_23144D998(v16, v14);
      v18 = *(v14 + 8);
      if (!v18)
      {
        break;
      }

      v19 = *v14;
      v20 = *(v17 + 20);
      v21 = sub_2314770C8();
      v49 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v14 + v20, v21);
      sub_2313E9D3C(&v48, v47);

      swift_isUniquelyReferenced_nonNull_native();
      v50 = *v15;
      v23 = v50;
      v24 = v15;
      *v15 = 0x8000000000000000;
      v25 = sub_2313F0604();
      if (__OFADD__(v23[2], (v26 & 1) == 0))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v27 = v25;
      v14 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1F0, &qword_23147D3B8);
      if (sub_2314785F8())
      {
        v28 = sub_2313F0604();
        if ((v14 & 1) != (v29 & 1))
        {
          result = sub_231478888();
          __break(1u);
          return result;
        }

        v27 = v28;
      }

      if (v14)
      {

        v30 = v50;
        v31 = (v50[7] + 32 * v27);
        __swift_destroy_boxed_opaque_existential_0(v31);
        sub_2313E9D3C(v47, v31);
      }

      else
      {
        v30 = v50;
        v50[(v27 >> 6) + 8] |= 1 << v27;
        v32 = (v30[6] + 16 * v27);
        *v32 = v19;
        v32[1] = v18;
        sub_2313E9D3C(v47, (v30[7] + 32 * v27));
        v33 = v30[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_20;
        }

        v30[2] = v35;
      }

      v15 = v24;
      *v24 = v30;

      v14 = v43;
      sub_23144DABC(v43, type metadata accessor for KVPair);
      v16 = v46;
    }

    if (qword_280C3CF50 == -1)
    {
      goto LABEL_16;
    }

LABEL_21:
    swift_once();
LABEL_16:
    v36 = sub_231477B68();
    __swift_project_value_buffer(v36, qword_280C3D970);
    v37 = sub_231477B58();
    v38 = sub_2314782B8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v48 = v40;
      *v39 = 136446722;
      *(v39 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, &v48);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_2313EB684(0x2928706D7564, 0xE600000000000000, &v48);
      *(v39 + 22) = 2050;
      *(v39 + 24) = 131;
      _os_log_impl(&dword_2313E1000, v37, v38, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v40, -1, -1);
      MEMORY[0x23192F1F0](v39, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_23144DABC(v14, type metadata accessor for KVPair);
  }

  return result;
}

void sub_23144C9FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2313E9628(a2, &v9 - v8, &qword_27DD4DA58, &unk_23147A530);

  KeyValueStore.init(url:namespace:)();
  if (!v4)
  {
    sub_23144DABC(a1, type metadata accessor for _KeyValueStore);
    type metadata accessor for _KeyValueStore(0);
    sub_231478318();
  }
}

uint64_t sub_23144CB48()
{
  v0 = sub_231476F98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[1] = MEMORY[0x277D84F90];
  sub_23144D950(&qword_280C3C8E8, MEMORY[0x277D0B6E8], MEMORY[0x277D0B6F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E200, &qword_23147D3C8);
  sub_2313ED944(&qword_280C3C148, &qword_27DD4E200, &qword_23147D3C8, MEMORY[0x277D83970]);
  sub_231478498();
  sub_2314777D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23144CD10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_2314776C8();
  v6 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_231477248();
  sub_2313E937C(v5, &qword_27DD4E210, &qword_23147D3D8);
  v7 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_2314772D8();

  sub_2313E937C(v2, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_231477248();
  sub_2313E937C(v5, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_2314772D8();

  sub_2313E937C(v2, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477718();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_231477248();
  sub_2313E937C(v5, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_2314772D8();

  sub_2313E937C(v2, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776D8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_231477248();
  sub_2313E937C(v5, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_2314772D8();

  sub_2313E937C(v2, &qword_27DD4E208, &qword_23147D3D0);
  (*(*(v7 - 8) + 104))(v2, *MEMORY[0x277D0B808], v7);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  sub_231477228();
  return sub_2313E937C(v2, &qword_27DD4E208, &qword_23147D3D0);
}

uint64_t sub_23144D118(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2314776A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2314776B8();
}

uint64_t sub_23144D178@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E0, &qword_23147D3A8);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v7 = sub_2314776A8();
  __swift_project_value_buffer(v7, qword_280C3D958);
  *a2 = sub_23144D2F4();
  *(a2 + 1) = v8;
  if (qword_280C3CC38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_280C3D940);
  sub_23144D42C(v6);
  v9 = sub_2314770C8();
  result = __swift_getEnumTagSinglePayload(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v11 = type metadata accessor for KVPair(0);
    return (*(*(v9 - 8) + 32))(&a2[*(v11 + 20)], v6, v9);
  }

  return result;
}

uint64_t sub_23144D2F4()
{
  sub_2314776A8();
  sub_2314772F8();
  v0 = sub_231477618();
  if (v1)
  {
LABEL_6:

    return 0;
  }

  v2 = v0;
  v3 = sub_2314775F8();
  if (!v3)
  {

    sub_231477608();
    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(v3, v2) != 5)
    {
      v4 = sub_231477EF8();

      return v4;
    }

    goto LABEL_6;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23144D42C@<X0>(uint64_t a1@<X8>)
{
  sub_2314776A8();
  sub_2314772F8();
  sub_23144D864(a1);
}

uint64_t sub_23144D5A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23144D5E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_23144D65C(uint64_t a1)
{
  sub_2314050B0();
  if (v1 <= 0x3F)
  {
    sub_2314770C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23144D6E0(uint64_t a1)
{
  sub_23144682C(319);
  if (v1 <= 0x3F)
  {
    sub_2314770A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_23144D754(uint64_t a1, void *a2)
{
  result = sub_231477288();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_23144D864@<X0>(uint64_t a2@<X8>)
{
  sub_231477618();
  if (v3)
  {
    v4 = sub_2314770C8();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    sub_2314770C8();
    return sub_231477558();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23144D950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23144D998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KVPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23144DA5C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_2313EB8A4(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_23144DABC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_23144DB14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_23144D754(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23144DB74()
{
  v0 = sub_231477B68();
  __swift_allocate_value_buffer(v0, qword_280C3D970);
  __swift_project_value_buffer(v0, qword_280C3D970);
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280C3CF48);
  }

  v1 = qword_280C3D700;
  return sub_231477B78();
}

uint64_t sub_23144DBF0()
{
  sub_23144DC5C();
  result = sub_231478408();
  qword_280C3D700 = result;
  return result;
}

unint64_t sub_23144DC5C()
{
  result = qword_280C3CE80;
  if (!qword_280C3CE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3CE80);
  }

  return result;
}

void sub_23144DCA0()
{
  sub_23144DD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E238, &qword_23147D428);
  swift_allocObject();
  sub_23140ABB0();
  qword_280C3BE60 = v0;
}

void *sub_23144DD04()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = sub_23144E038();

  if (v1)
  {
    v2 = [v1 identifier];

    v1 = sub_231477E68();
  }

  return v1;
}

void sub_23144DD98()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277CBD148];
  v5[4] = sub_23144DEA4;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23144DF44;
  v5[3] = &block_descriptor_1;
  v2 = _Block_copy(v5);
  v3 = v1;
  v4 = [v0 addObserverForName:v3 object:0 queue:0 usingBlock:v2];
  _Block_release(v2);

  qword_280C3BE48 = v4;
}

uint64_t sub_23144DEA4()
{
  if (qword_280C3BE50 != -1)
  {
    swift_once();
  }

  return sub_23140AA04();
}

void *sub_23144DF14(void *a1)
{

  result = sub_23144DD04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23144DF44(uint64_t a1, uint64_t a2)
{
  v3 = sub_231476818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_231476808();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_23144E038()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (qword_280C3BBE0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E228, &qword_23147D418);
  v1 = sub_231478118();
  v7[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v7[0];
  if (!v2)
  {
    v4 = v3;
    v5 = sub_231476A68();

    swift_willThrow();
    return 0;
  }

  return v2;
}

uint64_t sub_23144E14C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E230, &qword_23147D420);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23147D400;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_280C3BBF0 = v0;

  return MEMORY[0x2821F9840]();
}

void sub_23144E1B4(void *result, uint64_t a2)
{
  v18 = *(a2 + 16);
  if (v18)
  {
    sub_231423704();
    v2 = 0;
    while (1)
    {

      v3 = sub_231478448();

      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }

      v6 = MEMORY[0x277D84F90];
LABEL_11:
      ++v2;
      sub_23144E38C(result, v6, v6 + 32, 0, (2 * *(v6 + 16)) | 1);

      if (v2 == v18)
      {
        return;
      }
    }

    v20 = v2;
    v21 = MEMORY[0x277D84F90];
    sub_23141252C(0, v4, 0);
    v5 = 0;
    v6 = v21;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = MEMORY[0x23192DFC0](v8, v9, v11, v10);
      v14 = v13;

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23141252C(v15 > 1, v16 + 1, 1);
      }

      ++v5;
      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 4;
      if (v4 == v5)
      {

        v2 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_23144E38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = (a3 + 16 * a4);
  v10 = *v8;
  v9 = v8[1];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v5;
    swift_bridgeObjectRetain_n();
    if ([v5 respondsToSelector_])
    {
      if (!__OFSUB__(v6, a4))
      {
        if (v6 - a4 == 1)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v14 = sub_2314787B8();
          v22 = sub_231477E58();

          [v12 setValue:v14 forKey:v22];
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = sub_231477E58();
          v15 = [v5 valueForKey_];

          if (v15)
          {
            sub_231478468();
            swift_unknownObjectRelease();
          }

          else
          {
            v25 = 0u;
            v26 = 0u;
          }

          v27[0] = v25;
          v27[1] = v26;
          if (*(&v26 + 1))
          {
            sub_23144E6CC();
            if (swift_dynamicCast())
            {
              v16 = sub_2313F8D58(a4 + 1);
              sub_23144E38C(a1, v16, v17, v18, v19);
              v20 = v24;
              v21 = sub_231477E58();

              [v12 setValue:v20 forKey:v21];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {

            sub_23144E664(v27);
          }
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_23144E664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD70, &qword_23147B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23144E6CC()
{
  result = qword_280C3C0F8;
  if (!qword_280C3C0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3C0F8);
  }

  return result;
}

SiriRemembers::IntervalFrequency __swiftcall IntervalFrequency.init(interval:count:)(Swift::Double interval, Swift::Int count)
{
  *v2 = interval;
  *(v2 + 8) = count;
  result.interval = interval;
  result.count = count;
  return result;
}

double static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(void *a1, double a2)
{
  v4 = a1[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v40 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_1_16();
    sub_231412848(v6, v7, v8);
    v5 = v40;
    v9 = a1 + 4;
    v10 = *(v40 + 16);
    v11 = v4;
    do
    {
      v12 = *v9;
      v41 = v5;
      v13 = *(v5 + 24);
      if (v10 >= v13 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_15(v13);
        sub_231412848(v14, v10 + 1, 1);
        v5 = v41;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v12;
      v9 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }

  sub_2314136D8(v5);
  v15 = MEMORY[0x277D84F90];
  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_16();
    sub_231412848(v16, v17, v18);
    v15 = v42;
    v19 = a1 + 4;
    v20 = *(v42 + 16);
    v21 = v4;
    do
    {
      v22 = *v19;
      v23 = *(v42 + 24);
      if (v20 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_0_15(v23);
        sub_231412848(v24, v20 + 1, 1);
      }

      *(v42 + 16) = v20 + 1;
      *(v42 + 8 * v20 + 32) = v22;
      v19 += 2;
      ++v20;
      --v21;
    }

    while (v21);
  }

  v25 = sub_23144EB88(&unk_284608980, v15);

  v26 = MEMORY[0x277D84F90];
  if (v4)
  {
    v43 = MEMORY[0x277D84F90];
    v27 = OUTLINED_FUNCTION_1_16();
    sub_2314127A4(v27, v28, v29);
    v26 = v43;
    v30 = *(v43 + 16);
    v31 = a1 + 5;
    do
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      v34 = *(v43 + 24);
      if (v30 >= v34 >> 1)
      {
        v35 = OUTLINED_FUNCTION_0_15(v34);
        sub_2314127A4(v35, v30 + 1, 1);
      }

      *(v43 + 16) = v30 + 1;
      *(v43 + 8 * v30++ + 32) = v32;
      --v4;
    }

    while (v4);
  }

  sub_23144ED74(v25, v26, a2);
  v37 = v36;

  v38 = sub_23144EF8C(v37);

  return v38;
}

uint64_t static PriorDistributionUtils.normalize(scores:)(uint64_t a1)
{
  v1 = sub_23144F010(a1);
  v2 = sub_23144EF8C(v1);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v20 = MEMORY[0x277D84F90];
    sub_231412848(0, v3, 0);
    v6 = v20;
    v7 = *(v20 + 16);
    v8 = 32;
    do
    {
      v9 = *(v1 + v8);
      v10 = *(v20 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_15(v10);
        sub_231412848(v11, v7 + 1, 1);
      }

      *(v20 + 16) = v7 + 1;
      *(v20 + 8 * v7 + 32) = v9 - v5;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    sub_231412848(0, v12, 0);
    v13 = v4;
    v14 = *(v4 + 16);
    v15 = 32;
    do
    {
      v16 = exp(*(v6 + v15));
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        v18 = OUTLINED_FUNCTION_0_15(v17);
        sub_231412848(v18, v14 + 1, 1);
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v15 += 8;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_23144EB88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_231412848(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_231412848(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = (v13 + v14) * 0.5;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_231412848(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = (v17 + v18) * 0.5;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23144ED74(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_231412848(0, v8, 0);
  v22 = v7;
  v23 = v6;
  v20 = a1;
  v21 = a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8;
  while (v6)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v12 = *v9;
    v13 = log(*v10);
    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_231412848(v14 > 1, v15 + 1, 1);
    }

    --v7;
    *(v24 + 16) = v15 + 1;
    *(v24 + 8 * v15 + 32) = v13 + (0.0 - v12) / a3 * ((0.0 - v12) / a3) * -0.5;
    --v6;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_11:
      while (v23 != v8)
      {
        if (v8 >= v23)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        if (v22 == v8)
        {
          return;
        }

        if (v8 >= v22)
        {
          goto LABEL_24;
        }

        v16 = *(v20 + 32 + 8 * v8);
        v17 = log(*(v21 + 32 + 8 * v8));
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_231412848(v18 > 1, v19 + 1, 1);
        }

        *(v24 + 16) = v19 + 1;
        *(v24 + 8 * v19 + 32) = v17 + (0.0 - v16) / a3 * ((0.0 - v16) / a3) * -0.5;
        ++v8;
      }

      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_23144EF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_23144F010(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_231412848(0, v1, 0);
    v4 = v28;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B0, &qword_231479860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231479AC0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_231412848(v10 > 1, v11 + 1, 1);
      }

      *(v28 + 16) = v12;
      *(v28 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_231412848(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        sub_231412848(v26 > 1, v21 + 1, 1);
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t getEnumTagSinglePayload for IntervalFrequency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalFrequency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PriorDistributionUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_23144F390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a1;
  MEMORY[0x28223BE20](a1);
  Filter = type metadata accessor for QueryFilter(0, v11, v12, v11);
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = (v95 - v17);
  v19 = *(v15 + 16);
  v95[2] = a3;
  v19(v95 - v17, a3, Filter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v69 = OUTLINED_FUNCTION_4_10();
      v70(v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v71 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v71);
      v24 = OUTLINED_FUNCTION_5_13();
      v72 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v73(v72);
      v74 = OUTLINED_FUNCTION_12_16();
      v75(v74);
      v76 = OUTLINED_FUNCTION_13_12();
      result = v77(v76);
      v32 = 1;
      break;
    case 2:
      v42 = OUTLINED_FUNCTION_4_10();
      v43(v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v44 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v44);
      v24 = OUTLINED_FUNCTION_5_13();
      v45 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v46(v45);
      v47 = OUTLINED_FUNCTION_12_16();
      v48(v47);
      v49 = OUTLINED_FUNCTION_13_12();
      result = v50(v49);
      v32 = 2;
      break;
    case 3:
      v51 = OUTLINED_FUNCTION_4_10();
      v52(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v53 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v53);
      v24 = OUTLINED_FUNCTION_5_13();
      v54 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v55(v54);
      v56 = OUTLINED_FUNCTION_12_16();
      v57(v56);
      v58 = OUTLINED_FUNCTION_13_12();
      result = v59(v58);
      v32 = 3;
      break;
    case 4:
      v33 = OUTLINED_FUNCTION_4_10();
      v34(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v35 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v35);
      v24 = OUTLINED_FUNCTION_5_13();
      v36 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v37(v36);
      v38 = OUTLINED_FUNCTION_12_16();
      v39(v38);
      v40 = OUTLINED_FUNCTION_13_12();
      result = v41(v40);
      v32 = 4;
      break;
    case 5:
      v78 = OUTLINED_FUNCTION_4_10();
      v79(v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v80 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v80);
      v24 = OUTLINED_FUNCTION_5_13();
      v81 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v82(v81);
      v83 = OUTLINED_FUNCTION_12_16();
      v84(v83);
      v85 = OUTLINED_FUNCTION_13_12();
      result = v86(v85);
      v32 = 5;
      break;
    case 6:
      v97 = *v18;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v95[-2] = a4;
      v95[-1] = a5;
      KeyPath = swift_getKeyPath();
      v95[1] = v95;
      v88 = MEMORY[0x28223BE20](KeyPath);
      v95[-2] = a5;
      v95[-1] = v88;
      v89 = sub_231478198();
      Value = type metadata accessor for QueryValue(0);
      WitnessTable = swift_getWitnessTable();
      v24 = sub_2314552F4(sub_231448528, &v95[-4], v89, Value, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v92);

      v93 = OUTLINED_FUNCTION_12_16();
      v94(v93);

      v32 = 6;
      break;
    case 7:
      v60 = OUTLINED_FUNCTION_4_10();
      v61(v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v62 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v62);
      v24 = OUTLINED_FUNCTION_5_13();
      v63 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v64(v63);
      v65 = OUTLINED_FUNCTION_12_16();
      v66(v65);
      v67 = OUTLINED_FUNCTION_13_12();
      result = v68(v67);
      v32 = 7;
      break;
    default:
      v21 = OUTLINED_FUNCTION_4_10();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v23 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v23);
      v24 = OUTLINED_FUNCTION_5_13();
      v25 = OUTLINED_FUNCTION_2_14(v24, xmmword_231479580);
      v26(v25);
      v27 = OUTLINED_FUNCTION_12_16();
      v28(v27);
      v29 = OUTLINED_FUNCTION_13_12();
      result = v30(v29);
      v32 = 0;
      break;
  }

  *a6 = v96;
  *(a6 + 8) = a2;
  *(a6 + 16) = v32;
  *(a6 + 24) = v24;
  return result;
}

uint64_t sub_23144FAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28783 && a2 == 0xE200000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1936159329 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23144FBE0(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 28783;
  }

  return 1936159329;
}

uint64_t sub_23144FC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23144FAD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23144FC4C(uint64_t a1)
{
  v2 = sub_23144FED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23144FC88(uint64_t a1)
{
  v2 = sub_23144FED4();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryExpression.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E240, &qword_23147D4D0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  v20 = *(v0 + 16);
  v17 = *(v0 + 24);
  v11 = v3[3];
  v12 = v3;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_2313E8ABC(v9, v10);
  sub_23144FED4();
  sub_231478968();
  v18 = v9;
  v19 = v10;
  sub_23144FF28();
  OUTLINED_FUNCTION_19_9();
  sub_231478748();
  sub_2313ED930(v9, v10);
  if (!v1)
  {
    v15 = v17;
    LOBYTE(v18) = v20;
    OUTLINED_FUNCTION_122();
    sub_23144FF7C();
    OUTLINED_FUNCTION_19_9();
    sub_231478748();
    v18 = v15;
    OUTLINED_FUNCTION_24_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E260, &qword_23147D4D8);
    sub_2314502DC(&qword_27DD4E268, &qword_27DD4E270, &protocol conformance descriptor for QueryValue, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_19_9();
    sub_231478748();
  }

  (*(v5 + 8))(v8, v14);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_23144FED4()
{
  result = qword_27DD4E248;
  if (!qword_27DD4E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E248);
  }

  return result;
}

unint64_t sub_23144FF28()
{
  result = qword_27DD4E250;
  if (!qword_27DD4E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E250);
  }

  return result;
}

unint64_t sub_23144FF7C()
{
  result = qword_27DD4E258;
  if (!qword_27DD4E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E258);
  }

  return result;
}

void QueryExpression.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E278, &qword_23147D4E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_23144FED4();
  sub_231478948();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_231450234();
    OUTLINED_FUNCTION_21_7(&type metadata for QueryKey);
    OUTLINED_FUNCTION_122();
    sub_231450288();
    OUTLINED_FUNCTION_21_7(&type metadata for QueryOperator);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E260, &qword_23147D4D8);
    OUTLINED_FUNCTION_24_3();
    sub_2314502DC(&qword_27DD4E290, &qword_27DD4E298, &protocol conformance descriptor for QueryValue, MEMORY[0x277D83978]);
    sub_2314786B8();
    v29 = OUTLINED_FUNCTION_20_6();
    v30(v29);
    *v27 = v31;
    *(v27 + 8) = v32;
    *(v27 + 16) = v31;
    *(v27 + 24) = v31;
    sub_2313E8ABC(v31, v32);

    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_2313ED930(v31, v32);
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_231450234()
{
  result = qword_27DD4E280;
  if (!qword_27DD4E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E280);
  }

  return result;
}

unint64_t sub_231450288()
{
  result = qword_27DD4E288;
  if (!qword_27DD4E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E288);
  }

  return result;
}

uint64_t sub_2314502DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4E260, &qword_23147D4D8);
    sub_231450364(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231450364(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QueryValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314503A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x646C656966 && a2 == 0xE500000000000000;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7355646572616873 && a2 == 0xEC00000064497265;
                                if (v20 || (sub_2314787C8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_2314787C8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                                    if (v22 || (sub_2314787C8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_2314787C8();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231450978(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x656369766564;
      goto LABEL_16;
    case 2:
      return 0x6E69616D6F64;
    case 3:
      v3 = 0x656C646E7562;
      goto LABEL_16;
    case 4:
      return 1701869940;
    case 5:
      return 0x6574616E6F447369;
    case 6:
      return 0x676E696C646E6168;
    case 7:
      return 0x6F69746365726964;
    case 8:
      return 0x7461447472617473;
    case 9:
      return 0x6E6F697461727564;
    case 10:
      return 0x727453726F6E6F64;
    case 11:
      return 0x48746E65746E6F63;
    case 12:
      return 0x646C656966;
    case 13:
      v3 = 0x797469746E65;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 14:
      result = 0x7954797469746E65;
      break;
    case 15:
      result = 0x7355646572616873;
      break;
    case 16:
      result = 0x6C61636F4C7369;
      break;
    case 17:
      result = 0x6C50656369766564;
      break;
    case 18:
      result = 0x616E6F4472657375;
      break;
    default:
      return result;
  }

  return result;
}

void sub_231450BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  a22 = v24;
  a23 = v25;
  v154 = v23;
  v149 = v26;
  v150 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2B8, &qword_23147D750);
  OUTLINED_FUNCTION_4();
  v147 = v31;
  v148 = v30;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v146 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2C0, &qword_23147D758);
  OUTLINED_FUNCTION_4();
  v144 = v35;
  v145 = v34;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13();
  v143 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2C8, &qword_23147D760);
  OUTLINED_FUNCTION_4();
  v141 = v39;
  v142 = v38;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v140 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2D0, &qword_23147D768);
  OUTLINED_FUNCTION_4();
  v138 = v43;
  v139 = v42;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  v137 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2D8, &qword_23147D770);
  OUTLINED_FUNCTION_4();
  v135 = v47;
  v136 = v46;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13();
  v134 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2E0, &qword_23147D778);
  OUTLINED_FUNCTION_0_0(v50, &a21);
  v133[0] = v51;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2E8, &qword_23147D780);
  OUTLINED_FUNCTION_0_0(v54, &a18);
  v132[33] = v55;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2F0, &qword_23147D788);
  OUTLINED_FUNCTION_0_0(v58, &a15);
  v132[30] = v59;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E2F8, &qword_23147D790);
  OUTLINED_FUNCTION_0_0(v62, &a9);
  v132[27] = v63;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E300, &qword_23147D798);
  OUTLINED_FUNCTION_0_0(v66, &v153);
  v132[24] = v67;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E308, &qword_23147D7A0);
  OUTLINED_FUNCTION_0_0(v70, &v150);
  v132[21] = v71;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E310, &qword_23147D7A8);
  OUTLINED_FUNCTION_0_0(v74, &v147);
  v132[18] = v75;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E318, &qword_23147D7B0);
  OUTLINED_FUNCTION_0_0(v78, &v144);
  v132[15] = v79;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E320, &qword_23147D7B8);
  OUTLINED_FUNCTION_0_0(v82, &v141);
  v132[12] = v83;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E328, &qword_23147D7C0);
  OUTLINED_FUNCTION_0_0(v86, &v138);
  v132[9] = v87;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E330, &qword_23147D7C8);
  OUTLINED_FUNCTION_0_0(v90, &v135);
  v132[6] = v91;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E338, &qword_23147D7D0);
  OUTLINED_FUNCTION_0_0(v94, v133);
  v132[3] = v95;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v96);
  v98 = v132 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E340, &qword_23147D7D8);
  OUTLINED_FUNCTION_4();
  v132[2] = v100;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v101);
  v103 = v132 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E348, &qword_23147D7E0);
  OUTLINED_FUNCTION_4();
  v132[1] = v105;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v106);
  v108 = v132 - v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E350, &qword_23147D7E8);
  OUTLINED_FUNCTION_4();
  v152 = v109;
  v153 = v110;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v111);
  v113 = v132 - v112;
  v114 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_231453AC4();
  v151 = v113;
  v115 = v150;
  sub_231478968();
  switch(v115)
  {
    case 0:
      a13 = 0;
      sub_231454100();
      v116 = v151;
      v117 = v152;
      sub_2314786F8();
      v118 = OUTLINED_FUNCTION_7_11();
      v119(v118, v104);
      (*(v153 + 8))(v116, v117);
      break;
    case 1:
      OUTLINED_FUNCTION_122();
      sub_2314540AC();
      v114 = v151;
      v108 = v152;
      sub_2314786F8();
      OUTLINED_FUNCTION_13_1();
      v123 = v103;
      v126 = v99;
      goto LABEL_23;
    case 2:
      OUTLINED_FUNCTION_24_3();
      sub_231454058();
      v114 = v151;
      v108 = v152;
      sub_2314786F8();
      OUTLINED_FUNCTION_13_1();
      v123 = v98;
      v125 = v133;
      goto LABEL_22;
    case 3:
      a13 = 3;
      sub_231454004();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.BundleIdCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v135;
      goto LABEL_22;
    case 4:
      a13 = 4;
      sub_231453FB0();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.TypeCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v138;
      goto LABEL_22;
    case 5:
      a13 = 5;
      sub_231453F5C();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.IsDonatedBySiriCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v141;
      goto LABEL_22;
    case 6:
      a13 = 6;
      sub_231453F08();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.HandlingStatusCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v144;
      goto LABEL_22;
    case 7:
      a13 = 7;
      sub_231453EB4();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.DirectionCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v147;
      goto LABEL_22;
    case 8:
      a13 = 8;
      sub_231453E60();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.StartDateCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v150;
      goto LABEL_22;
    case 9:
      a13 = 9;
      sub_231453E0C();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.DurationSecondsCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &v153;
      goto LABEL_22;
    case 10:
      a13 = 10;
      sub_231453DB8();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.DonorStreamCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &a9;
      goto LABEL_22;
    case 11:
      a13 = 11;
      sub_231453D64();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.ContentHashCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &a15;
      goto LABEL_22;
    case 12:
      a13 = 13;
      sub_231453CBC();
      OUTLINED_FUNCTION_8_14(&type metadata for QueryKey.EntityIdCodingKeys, &a13);
      v123 = OUTLINED_FUNCTION_10_15();
      v125 = &a21;
LABEL_22:
      v126 = *(v125 - 32);
LABEL_23:
      v124(v123, v126);
      goto LABEL_24;
    case 13:
      a13 = 14;
      sub_231453C68();
      v120 = v134;
      OUTLINED_FUNCTION_11_15(&type metadata for QueryKey.EntityTypeCodingKeys, &a13);
      v122 = v135;
      v121 = v136;
      goto LABEL_17;
    case 14:
      a13 = 15;
      sub_231453C14();
      v120 = v137;
      OUTLINED_FUNCTION_11_15(&type metadata for QueryKey.SharedUserIdCodingKeys, &a13);
      v122 = v138;
      v121 = v139;
      goto LABEL_17;
    case 15:
      a13 = 16;
      sub_231453BC0();
      v120 = v140;
      OUTLINED_FUNCTION_11_15(&type metadata for QueryKey.IsLocalCodingKeys, &a13);
      v122 = v141;
      v121 = v142;
      goto LABEL_17;
    case 16:
      a13 = 17;
      sub_231453B6C();
      v120 = v143;
      OUTLINED_FUNCTION_11_15(&type metadata for QueryKey.DevicePlatformCodingKeys, &a13);
      v122 = v144;
      v121 = v145;
      goto LABEL_17;
    case 17:
      a13 = 18;
      sub_231453B18();
      v120 = v146;
      OUTLINED_FUNCTION_11_15(&type metadata for QueryKey.UserDonatorTypeCodingKeys, &a13);
      v122 = v147;
      v121 = v148;
LABEL_17:
      (*(v122 + 8))(v120, v121);
LABEL_24:
      (*(v153 + 8))(v114, v108);
      break;
    default:
      a13 = 12;
      sub_231453D10();
      v127 = v132[32];
      v129 = v151;
      v128 = v152;
      sub_2314786F8();
      v130 = v132[34];
      sub_231478718();
      OUTLINED_FUNCTION_13_1();
      v131(v127, v130);
      (*(v153 + 8))(v129, v128);
      break;
  }

  OUTLINED_FUNCTION_62();
}

void sub_2314519C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v250 = v20;
  v24 = v23;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E3F8, &qword_23147D7F0);
  OUTLINED_FUNCTION_4();
  v237 = v25;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_13();
  v244 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E400, &qword_23147D7F8);
  OUTLINED_FUNCTION_0_0(v28, &a18);
  v235 = v29;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13();
  v243[2] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E408, &qword_23147D800);
  OUTLINED_FUNCTION_0_0(v32, &a16);
  v233 = v33;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  v243[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E410, &qword_23147D808);
  OUTLINED_FUNCTION_0_0(v36, &a14);
  v231 = v37;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  v243[0] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E418, &qword_23147D810);
  OUTLINED_FUNCTION_0_0(v40, &a12);
  v229 = v41;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13();
  v242 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E420, &qword_23147D818);
  OUTLINED_FUNCTION_0_0(v44, &a9);
  v225 = v45;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  v241[1] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E428, &qword_23147D820);
  OUTLINED_FUNCTION_0_0(v48, &a10);
  v226 = v49;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  v245 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E430, &qword_23147D828);
  OUTLINED_FUNCTION_0_0(v52, &v249);
  v223 = v53;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_13();
  v241[0] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E438, &qword_23147D830);
  OUTLINED_FUNCTION_0_0(v56, v248);
  v221 = v57;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_13();
  v240[1] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E440, &qword_23147D838);
  OUTLINED_FUNCTION_0_0(v60, &v246);
  v219 = v61;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_13();
  v240[0] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E448, &qword_23147D840);
  OUTLINED_FUNCTION_0_0(v64, &v244);
  v217 = v65;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  v238[1] = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E450, &qword_23147D848);
  OUTLINED_FUNCTION_0_0(v68, v243);
  v216 = v69;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_13();
  v248[1] = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E458, &qword_23147D850);
  OUTLINED_FUNCTION_0_0(v72, &v242);
  v213 = v73;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13();
  v248[0] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E460, &qword_23147D858);
  OUTLINED_FUNCTION_0_0(v76, v241);
  v211 = v77;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_13();
  v239[1] = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E468, &qword_23147D860);
  OUTLINED_FUNCTION_0_0(v80, v240);
  v209 = v81;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  v239[0] = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E470, &qword_23147D868);
  OUTLINED_FUNCTION_0_0(v84, v239);
  v207 = v85;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_13();
  v247 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E478, &qword_23147D870);
  OUTLINED_FUNCTION_0_0(v88, v238);
  v205 = v89;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_13();
  v238[0] = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E480, &qword_23147D878);
  OUTLINED_FUNCTION_0_0(v92, &v236);
  v203 = v93;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v94);
  v96 = v198 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E488, &qword_23147D880);
  OUTLINED_FUNCTION_4();
  v202 = v98;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v99);
  v101 = v198 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E490, &qword_23147D888);
  OUTLINED_FUNCTION_4();
  v104 = v103;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v105);
  v107 = v198 - v106;
  v108 = v24[3];
  v249 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v108);
  sub_231453AC4();
  v109 = v250;
  sub_231478948();
  if (v109)
  {
    goto LABEL_9;
  }

  v200 = v101;
  v199 = v97;
  v201 = v96;
  v110 = v247;
  v250 = v104;
  v111 = v107;
  v112 = sub_2314786D8();
  sub_2313F8D60(v112, 0);
  if (v114 == v115 >> 1)
  {
LABEL_8:
    v125 = sub_231478548();
    swift_allocError();
    v127 = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870);
    *v127 = &type metadata for QueryKey;
    sub_231478658();
    sub_231478538();
    (*(*(v125 - 8) + 104))(v127, *MEMORY[0x277D84160], v125);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v250 + 8))(v111, v102);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v249);
LABEL_10:
    OUTLINED_FUNCTION_62();
    return;
  }

  v198[1] = 0;
  if (v114 < (v115 >> 1))
  {
    v198[0] = *(v113 + v114);
    sub_2313F8D58(v114 + 1);
    v117 = v116;
    v119 = v118;
    swift_unknownObjectRelease();
    if (v117 == v119 >> 1)
    {
      v120 = v246;
      switch(v198[0])
      {
        case 1:
          OUTLINED_FUNCTION_122();
          sub_2314540AC();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.DeviceIdCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v166 = OUTLINED_FUNCTION_7_11();
          v167(v166, v204);
          v168 = OUTLINED_FUNCTION_3_8();
          v169(v168);
          goto LABEL_29;
        case 2:
          OUTLINED_FUNCTION_24_3();
          sub_231454058();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.DomainCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_7_11();
          v152(v151, v206);
          v153 = OUTLINED_FUNCTION_3_8();
          v154(v153);
          goto LABEL_29;
        case 3:
          HIBYTE(a10) = 3;
          sub_231454004();
          OUTLINED_FUNCTION_9_15(&type metadata for QueryKey.BundleIdCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_1();
          v159(v110, v208);
          v160 = OUTLINED_FUNCTION_3_8();
          v161(v160);
          goto LABEL_29;
        case 4:
          HIBYTE(a10) = 4;
          sub_231453FB0();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.TypeCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v140 = OUTLINED_FUNCTION_7_11();
          v141(v140, v210);
          v142 = OUTLINED_FUNCTION_3_8();
          v143(v142);
          goto LABEL_29;
        case 5:
          HIBYTE(a10) = 5;
          sub_231453F5C();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.IsDonatedBySiriCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v174 = OUTLINED_FUNCTION_7_11();
          v175(v174, v212);
          v176 = OUTLINED_FUNCTION_3_8();
          v177(v176);
          goto LABEL_29;
        case 6:
          HIBYTE(a10) = 6;
          sub_231453F08();
          OUTLINED_FUNCTION_9_15(&type metadata for QueryKey.HandlingStatusCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v182 = OUTLINED_FUNCTION_7_11();
          v183(v182, v214);
          v184 = OUTLINED_FUNCTION_3_8();
          v185(v184);
          goto LABEL_29;
        case 7:
          HIBYTE(a10) = 7;
          sub_231453EB4();
          OUTLINED_FUNCTION_9_15(&type metadata for QueryKey.DirectionCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v162 = OUTLINED_FUNCTION_10_15();
          v163(v162, v215);
          v164 = OUTLINED_FUNCTION_3_8();
          v165(v164);
          goto LABEL_29;
        case 8:
          HIBYTE(a10) = 8;
          sub_231453E60();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.StartDateCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v193 = OUTLINED_FUNCTION_7_11();
          v194(v193, v218);
          v195 = OUTLINED_FUNCTION_3_8();
          v196(v195);
          goto LABEL_29;
        case 9:
          HIBYTE(a10) = 9;
          sub_231453E0C();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.DurationSecondsCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v147 = OUTLINED_FUNCTION_7_11();
          v148(v147, v220);
          v149 = OUTLINED_FUNCTION_3_8();
          v150(v149);
          goto LABEL_29;
        case 0xALL:
          HIBYTE(a10) = 10;
          sub_231453DB8();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.DonorStreamCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v189 = OUTLINED_FUNCTION_7_11();
          v190(v189, v222);
          v191 = OUTLINED_FUNCTION_3_8();
          v192(v191);
          goto LABEL_29;
        case 0xBLL:
          HIBYTE(a10) = 11;
          sub_231453D64();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.ContentHashCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v136 = OUTLINED_FUNCTION_7_11();
          v137(v136, v224);
          v138 = OUTLINED_FUNCTION_3_8();
          v139(v138);
          goto LABEL_29;
        case 0xCLL:
          HIBYTE(a10) = 12;
          sub_231453D10();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.FieldCodingKeys, &a10 + 7);
          v144 = v228;
          sub_231478688();
          v145 = v249;
          v146 = v250;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_1();
          v197(v245, v144);
          (*(v146 + 8))(v107, v102);
          goto LABEL_30;
        case 0xDLL:
          HIBYTE(a10) = 13;
          sub_231453CBC();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.EntityIdCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v178 = OUTLINED_FUNCTION_7_11();
          v179(v178, v227);
          v180 = OUTLINED_FUNCTION_3_8();
          v181(v180);
          goto LABEL_29;
        case 0xELL:
          HIBYTE(a10) = 14;
          sub_231453C68();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.EntityTypeCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v132 = OUTLINED_FUNCTION_7_11();
          v133(v132, v230);
          v134 = OUTLINED_FUNCTION_3_8();
          v135(v134);
          goto LABEL_29;
        case 0xFLL:
          HIBYTE(a10) = 15;
          sub_231453C14();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.SharedUserIdCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v155 = OUTLINED_FUNCTION_7_11();
          v156(v155, v232);
          v157 = OUTLINED_FUNCTION_3_8();
          v158(v157);
          goto LABEL_29;
        case 0x10:
          HIBYTE(a10) = 16;
          sub_231453BC0();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.IsLocalCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v128 = OUTLINED_FUNCTION_7_11();
          v129(v128, v234);
          v130 = OUTLINED_FUNCTION_3_8();
          v131(v130);
          goto LABEL_29;
        case 0x11:
          HIBYTE(a10) = 17;
          sub_231453B6C();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.DevicePlatformCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v170 = OUTLINED_FUNCTION_7_11();
          v171(v170, v236);
          v172 = OUTLINED_FUNCTION_3_8();
          v173(v172);
          goto LABEL_29;
        case 0x12:
          HIBYTE(a10) = 18;
          sub_231453B18();
          v186 = v244;
          OUTLINED_FUNCTION_9_15(&type metadata for QueryKey.UserDonatorTypeCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          (*(v237 + 8))(v186, v120);
          v187 = OUTLINED_FUNCTION_3_8();
          v188(v187);
          goto LABEL_29;
        default:
          HIBYTE(a10) = 0;
          sub_231454100();
          OUTLINED_FUNCTION_6_11(&type metadata for QueryKey.IdCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_7_11();
          v122(v121, v199);
          v123 = OUTLINED_FUNCTION_3_8();
          v124(v123);
LABEL_29:
          v145 = v249;
LABEL_30:
          __swift_destroy_boxed_opaque_existential_0(v145);
          break;
      }

      goto LABEL_10;
    }

    v111 = v107;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_231452E08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFED && *(a1 + 16))
  {
    return (*a1 + 2147483630);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 17;
  if (v4 >= 0x13)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231452E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483630;
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 17;
    }
  }

  return result;
}

void *sub_231452EB0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryExpression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231452FC0()
{
  result = qword_27DD4E2A0;
  if (!qword_27DD4E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2A0);
  }

  return result;
}

uint64_t sub_231453014(uint64_t a1)
{
  v2 = sub_231454004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453050(uint64_t a1)
{
  v2 = sub_231454004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314503A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314530BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231450970();
  *a1 = result;
  return result;
}

uint64_t sub_2314530E4(uint64_t a1)
{
  v2 = sub_231453AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453120(uint64_t a1)
{
  v2 = sub_231453AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145315C(uint64_t a1)
{
  v2 = sub_231453D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453198(uint64_t a1)
{
  v2 = sub_231453D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314531D4(uint64_t a1)
{
  v2 = sub_2314540AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453210(uint64_t a1)
{
  v2 = sub_2314540AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145324C(uint64_t a1)
{
  v2 = sub_231453B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453288(uint64_t a1)
{
  v2 = sub_231453B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314532C4(uint64_t a1)
{
  v2 = sub_231453EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453300(uint64_t a1)
{
  v2 = sub_231453EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145333C(uint64_t a1)
{
  v2 = sub_231454058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453378(uint64_t a1)
{
  v2 = sub_231454058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314533B4(uint64_t a1)
{
  v2 = sub_231453DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314533F0(uint64_t a1)
{
  v2 = sub_231453DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145342C(uint64_t a1)
{
  v2 = sub_231453E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453468(uint64_t a1)
{
  v2 = sub_231453E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314534A4(uint64_t a1)
{
  v2 = sub_231453CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314534E0(uint64_t a1)
{
  v2 = sub_231453CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145351C(uint64_t a1)
{
  v2 = sub_231453C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453558(uint64_t a1)
{
  v2 = sub_231453C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453594(uint64_t a1)
{
  v2 = sub_231453D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314535D0(uint64_t a1)
{
  v2 = sub_231453D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23145360C(uint64_t a1)
{
  v2 = sub_231453F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453648(uint64_t a1)
{
  v2 = sub_231453F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453684(uint64_t a1)
{
  v2 = sub_231454100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314536C0(uint64_t a1)
{
  v2 = sub_231454100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314536FC(uint64_t a1)
{
  v2 = sub_231453F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453738(uint64_t a1)
{
  v2 = sub_231453F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453774(uint64_t a1)
{
  v2 = sub_231453BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314537B0(uint64_t a1)
{
  v2 = sub_231453BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314537EC(uint64_t a1)
{
  v2 = sub_231453C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453828(uint64_t a1)
{
  v2 = sub_231453C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453864(uint64_t a1)
{
  v2 = sub_231453E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314538A0(uint64_t a1)
{
  v2 = sub_231453E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314538DC(uint64_t a1)
{
  v2 = sub_231453FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453918(uint64_t a1)
{
  v2 = sub_231453FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231453954(uint64_t a1)
{
  v2 = sub_231453B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231453990(uint64_t a1)
{
  v2 = sub_231453B18();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_231453A18()
{
  result = qword_27DD4E2A8;
  if (!qword_27DD4E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2A8);
  }

  return result;
}

unint64_t sub_231453A70()
{
  result = qword_27DD4E2B0;
  if (!qword_27DD4E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E2B0);
  }

  return result;
}

unint64_t sub_231453AC4()
{
  result = qword_27DD4E358;
  if (!qword_27DD4E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E358);
  }

  return result;
}

unint64_t sub_231453B18()
{
  result = qword_27DD4E360;
  if (!qword_27DD4E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E360);
  }

  return result;
}

unint64_t sub_231453B6C()
{
  result = qword_27DD4E368;
  if (!qword_27DD4E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E368);
  }

  return result;
}

unint64_t sub_231453BC0()
{
  result = qword_27DD4E370;
  if (!qword_27DD4E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E370);
  }

  return result;
}

unint64_t sub_231453C14()
{
  result = qword_27DD4E378;
  if (!qword_27DD4E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E378);
  }

  return result;
}

unint64_t sub_231453C68()
{
  result = qword_27DD4E380;
  if (!qword_27DD4E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E380);
  }

  return result;
}

unint64_t sub_231453CBC()
{
  result = qword_27DD4E388;
  if (!qword_27DD4E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E388);
  }

  return result;
}

unint64_t sub_231453D10()
{
  result = qword_27DD4E390;
  if (!qword_27DD4E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E390);
  }

  return result;
}

unint64_t sub_231453D64()
{
  result = qword_27DD4E398;
  if (!qword_27DD4E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E398);
  }

  return result;
}

unint64_t sub_231453DB8()
{
  result = qword_27DD4E3A0;
  if (!qword_27DD4E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3A0);
  }

  return result;
}

unint64_t sub_231453E0C()
{
  result = qword_27DD4E3A8;
  if (!qword_27DD4E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3A8);
  }

  return result;
}

unint64_t sub_231453E60()
{
  result = qword_27DD4E3B0;
  if (!qword_27DD4E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3B0);
  }

  return result;
}

unint64_t sub_231453EB4()
{
  result = qword_27DD4E3B8;
  if (!qword_27DD4E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3B8);
  }

  return result;
}

unint64_t sub_231453F08()
{
  result = qword_27DD4E3C0;
  if (!qword_27DD4E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3C0);
  }

  return result;
}

unint64_t sub_231453F5C()
{
  result = qword_27DD4E3C8;
  if (!qword_27DD4E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3C8);
  }

  return result;
}

unint64_t sub_231453FB0()
{
  result = qword_27DD4E3D0;
  if (!qword_27DD4E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3D0);
  }

  return result;
}

unint64_t sub_231454004()
{
  result = qword_27DD4E3D8;
  if (!qword_27DD4E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3D8);
  }

  return result;
}

unint64_t sub_231454058()
{
  result = qword_27DD4E3E0;
  if (!qword_27DD4E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3E0);
  }

  return result;
}

unint64_t sub_2314540AC()
{
  result = qword_27DD4E3E8;
  if (!qword_27DD4E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3E8);
  }

  return result;
}

unint64_t sub_231454100()
{
  result = qword_27DD4E3F0;
  if (!qword_27DD4E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryKey.FieldCodingKeys(_BYTE *result, int a2, int a3)
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