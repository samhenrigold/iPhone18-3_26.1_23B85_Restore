void sub_26663C5A0()
{
  OUTLINED_FUNCTION_28_0();
  v163 = v0;
  v164 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC20, &qword_26667AF98);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_10_5();
  v156 = v3 - v4;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v5);
  v158 = &v155 - v6;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v7);
  v157 = &v155 - v8;
  sub_26666C188();
  OUTLINED_FUNCTION_3_0();
  v161 = v10;
  v162 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_5();
  v159 = v11 - v12;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v13);
  v160 = &v155 - v14;
  v15 = sub_26666C238();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_5();
  v155 = (v19 - v20);
  OUTLINED_FUNCTION_12_7();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v155 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v155 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC28, &unk_26667AFA0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_5();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &v155 - v32;
  v34 = sub_26666C1A8();
  OUTLINED_FUNCTION_7(v34);

  sub_26666C198();
  sub_26666C048();

  v163 = v33;
  sub_26657E808(v33, v30, &qword_28007FC28, &unk_26667AFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v30;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v36 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v36, qword_28156D7E8);
    v37 = v35;
    v38 = sub_26666C148();
    v39 = sub_26666C5F8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_21();
      v41 = OUTLINED_FUNCTION_13_0();
      v165 = v35;
      v166 = v41;
      *v40 = 136315138;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v43 = sub_26666C318();
      v45 = sub_2665BFC90(v43, v44, &v166);

      *(v40 + 4) = v45;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    goto LABEL_12;
  }

  (*(v17 + 32))(v26, v30, v15);
  v51 = *(v17 + 16);
  v51(v24, v26, v15);
  v52 = (*(v17 + 88))(v24, v15);
  v53 = v15;
  v54 = v24;
  if (v52 == *MEMORY[0x277D5FEC0])
  {
    v158 = v26;
    v55 = OUTLINED_FUNCTION_3_37();
    v56(v55);
    v57 = v160;
    v58 = v161;
    v59 = v162;
    (*(v161 + 32))(v160, v24, v162);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v60 = v17;
    v61 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v61, qword_28156D7E8);
    v62 = v159;
    (*(v58 + 16))(v159, v57, v59);
    v63 = sub_26666C148();
    v64 = sub_26666C618();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_21();
      v66 = v53;
      v67 = OUTLINED_FUNCTION_13_0();
      v166 = v67;
      *v65 = 136315138;
      sub_26663E510(&qword_28007FC38, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v68 = sub_26666CAA8();
      v69 = v62;
      v71 = v70;
      v72 = *(v58 + 8);
      v72(v69, v162);
      v73 = sub_2665BFC90(v68, v71, &v166);

      *(v65 + 4) = v73;
      _os_log_impl(&dword_266549000, v63, v64, "[CalendarReferenceResolver] Found a candidate %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      v53 = v66;
      OUTLINED_FUNCTION_4_1();
      v59 = v162;
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v72 = *(v58 + 8);
      v72(v62, v59);
    }

    v93 = v164;
    v94 = v160;
    sub_26666C178();
    v72(v94, v59);
    (*(v60 + 8))(v158, v53);
    sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
    goto LABEL_40;
  }

  v80 = v161;
  if (v52 == *MEMORY[0x277D5FED0])
  {
    v81 = OUTLINED_FUNCTION_3_37();
    v82(v81);
    v83 = *v54;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v84 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v84, qword_28156D7E8);
    v85 = sub_26666C148();
    v86 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v86))
    {
      v87 = OUTLINED_FUNCTION_20();
      *v87 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v88, v89, v90, v91, v87, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v92 = v158;
    sub_2665EC530(v83, v158);
LABEL_37:

    v123 = v162;
    if (__swift_getEnumTagSinglePayload(v92, 1, v162) == 1)
    {
      v124 = OUTLINED_FUNCTION_4_38();
      v125(v124);
      sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
      v74 = &qword_28007FC20;
      v75 = &qword_26667AF98;
      v76 = v92;
      goto LABEL_13;
    }

    v93 = v164;
    sub_26666C178();
    v126 = OUTLINED_FUNCTION_4_38();
    v127(v126);
    sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
    (*(v80 + 8))(v92, v123);
    goto LABEL_40;
  }

  if (v52 == *MEMORY[0x277D5FEC8])
  {
    v95 = OUTLINED_FUNCTION_3_37();
    v96(v95);
    v97 = *v54;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v98 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v98, qword_28156D7E8);

    v99 = sub_26666C148();
    v100 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v100))
    {
      v101 = OUTLINED_FUNCTION_21();
      *v101 = 134217984;
      *(v101 + 4) = *(v97 + 16);

      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    v92 = v157;
    sub_2665EC530(v97, v157);
    goto LABEL_37;
  }

  if (v52 == *MEMORY[0x277D5FED8])
  {
    v107 = OUTLINED_FUNCTION_3_37();
    v108(v107);
    v109 = *v54;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v110 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v110, qword_28156D7E8);
    v111 = sub_26666C148();
    v112 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v112))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v113, v114, v115, v116, v117, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v118 = v156;
    if (*(v109 + 16))
    {
      v119 = *(v109 + 32);

      sub_2665EC530(v119, v118);

      v120 = v162;
      if (__swift_getEnumTagSinglePayload(v118, 1, v162) == 1)
      {
        v121 = OUTLINED_FUNCTION_4_38();
        v122(v121);
        sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
        v74 = &qword_28007FC20;
        v75 = &qword_26667AF98;
        v76 = v118;
        goto LABEL_13;
      }

      v93 = v164;
      sub_26666C178();
      v151 = OUTLINED_FUNCTION_4_38();
      v152(v151);
      sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
      (*(v80 + 8))(v118, v120);
LABEL_40:
      v77 = sub_26666C228();
      v78 = v93;
      v79 = 0;
      goto LABEL_41;
    }

LABEL_54:
    v149 = OUTLINED_FUNCTION_4_38();
    v150(v149);
LABEL_12:
    v74 = &qword_28007FC28;
    v75 = &unk_26667AFA0;
    v76 = v163;
LABEL_13:
    sub_26656CAEC(v76, v74, v75);
    v77 = sub_26666C228();
    v78 = v164;
    v79 = 1;
LABEL_41:
    __swift_storeEnumTagSinglePayload(v78, v79, 1, v77);
    goto LABEL_42;
  }

  if (v52 == *MEMORY[0x277D5FEE0])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v128 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v128, qword_28156D7E8);
    v129 = sub_26666C148();
    v130 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v130))
    {
      v131 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v131);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v132, v133, "[CalendarReferenceResolver] No matches found");
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_54;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v134 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v134, qword_28156D7E8);
  v135 = v155;
  v51(v155, v26, v15);
  v136 = sub_26666C148();
  v137 = sub_26666C5F8();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = OUTLINED_FUNCTION_21();
    v158 = v26;
    v139 = v138;
    v140 = OUTLINED_FUNCTION_13_0();
    v162 = v54;
    v141 = v53;
    v142 = v140;
    v166 = v140;
    *v139 = 136315138;
    sub_26663E510(&qword_28007FC30, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
    v143 = sub_26666CAA8();
    v145 = v144;
    v146 = OUTLINED_FUNCTION_26_11();
    v135(v146, v141);
    v147 = sub_2665BFC90(v143, v145, &v166);

    *(v139 + 4) = v147;
    _os_log_impl(&dword_266549000, v136, v137, "[CalendarReferenceResolver] Received unknown result type %s", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    v53 = v141;
    v54 = v162;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v148 = v158;
  }

  else
  {

    v153 = OUTLINED_FUNCTION_26_11();
    v135(v153, v53);
    v148 = v26;
  }

  v135(v148, v53);
  sub_26656CAEC(v163, &qword_28007FC28, &unk_26667AFA0);
  v154 = sub_26666C228();
  __swift_storeEnumTagSinglePayload(v164, 1, 1, v154);
  v135(v54, v53);
LABEL_42:
  OUTLINED_FUNCTION_27_0();
}

void sub_26663D2D0()
{
  OUTLINED_FUNCTION_28_0();
  sub_26666C228();
  OUTLINED_FUNCTION_3_0();
  v140 = v0;
  v141 = v1;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_10_5();
  v135 = v2 - v3;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v4);
  v136 = &v131 - v5;
  v142 = sub_26666C188();
  OUTLINED_FUNCTION_3_0();
  v138 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_5();
  v139 = v8 - v9;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v131 - v11;
  v13 = sub_26666C238();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_5();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v131 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC28, &unk_26667AFA0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v23);
  v25 = (&v131 - v24);
  v26 = sub_26666C1A8();
  OUTLINED_FUNCTION_7(v26);

  sub_26666C198();
  sub_26666C048();

  v27 = &unk_28156C000;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v15 + 32))(v22, v25, v13);
    (*(v15 + 16))(v19, v22, v13);
    v44 = (*(v15 + 88))(v19, v13);
    if (v44 == *MEMORY[0x277D5FEC0])
    {
      v45 = OUTLINED_FUNCTION_7_26();
      v46(v45);
      (*(v138 + 32))(v12, v19, v142);
      OUTLINED_FUNCTION_25_13();
      if (!v55)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v47 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v47, qword_28156D7E8);
      v48 = sub_26666C148();
      v49 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v49))
      {
        v50 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v50);
        OUTLINED_FUNCTION_35_1(&dword_266549000, v51, v52, "[CalendarReferenceResolver] One match");
        OUTLINED_FUNCTION_10();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E628, &unk_26667A160);
      *(swift_allocObject() + 16) = xmmword_26666EED0;
      sub_26666C178();
      (*(v138 + 8))(v12, v142);
      v53 = OUTLINED_FUNCTION_18_11();
      v54(v53);
      goto LABEL_13;
    }

    v55 = v44 == *MEMORY[0x277D5FED0] || v44 == *MEMORY[0x277D5FEC8];
    if (v55)
    {
      v56 = OUTLINED_FUNCTION_7_26();
      v57(v56);
      v58 = *v19;
      OUTLINED_FUNCTION_25_13();
      if (!v55)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v59 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v59, qword_28156D7E8);
      v60 = sub_26666C148();
      v61 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v61))
      {
        v62 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v62);
        OUTLINED_FUNCTION_35_1(&dword_266549000, v63, v64, "[CalendarReferenceResolver] Plural matches, returning all");
        OUTLINED_FUNCTION_10();
      }

      v65 = *(v58 + 16);
      if (!v65)
      {

        v119 = OUTLINED_FUNCTION_18_11();
LABEL_67:
        v121(v119, v120);
        goto LABEL_13;
      }

      v133 = v22;
      v134 = v13;
      v132 = v15;
      v144 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_16_17();
      v135 = v58;
      v67 = v58 + v66;
      v137 = *(v68 + 56);
      v138 = v69;
      v70 = (v68 - 8);
      v71 = v136;
      do
      {
        v72 = OUTLINED_FUNCTION_21_11();
        v73(v72);
        sub_26666C178();
        (*v70)(&unk_28156C000, v25);
        v144 = v19;
        v75 = v19[2];
        v74 = v19[3];
        v25 = (v75 + 1);
        if (v75 >= v74 >> 1)
        {
          OUTLINED_FUNCTION_23_14(v74);
          v19 = v144;
        }

        OUTLINED_FUNCTION_13_18();
        (*(v78 + 32))(v76 + v77 * v75, v71);
        v67 += v137;
        --v65;
      }

      while (v65);
    }

    else
    {
      if (v44 != *MEMORY[0x277D5FED8])
      {
        if (v44 == *MEMORY[0x277D5FEE0])
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v98 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v98, qword_28156D7E8);
          v99 = sub_26666C148();
          v100 = sub_26666C618();
          if (OUTLINED_FUNCTION_52_0(v100))
          {
            v101 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_15(v101);
            OUTLINED_FUNCTION_35_1(&dword_266549000, v102, v103, "[CalendarReferenceResolver] No matches");
            OUTLINED_FUNCTION_10();
          }

          v104 = OUTLINED_FUNCTION_18_11();
          v105(v104);
        }

        else
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v122 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v122, qword_28156D7E8);
          v123 = sub_26666C148();
          v124 = sub_26666C618();
          if (OUTLINED_FUNCTION_52_0(v124))
          {
            v125 = OUTLINED_FUNCTION_20();
            *v125 = 0;
            OUTLINED_FUNCTION_43_2();
            _os_log_impl(v126, v127, v128, v129, v125, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          v130 = *(v15 + 8);
          v130(v22, v13);
          v130(v19, v13);
        }

        goto LABEL_13;
      }

      v79 = OUTLINED_FUNCTION_7_26();
      v80(v79);
      v81 = *v19;
      OUTLINED_FUNCTION_25_13();
      if (!v55)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v133 = v22;
      v134 = v13;
      v82 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v82, qword_28156D7E8);
      v28 = sub_26666C148();
      v83 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v83))
      {
        v84 = OUTLINED_FUNCTION_20();
        *v84 = 0;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v85, v86, v87, v88, v84, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v89 = 0;
      v90 = *(v81 + 16);
      v91 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      while (v90 != v89)
      {
        if (v89 >= *(v81 + 16))
        {
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

        v27 = *(v81 + 8 * v89 + 32);
        v28 = v27[2];
        v93 = *(v92 + 16);
        if (__OFADD__(v93, v28))
        {
          goto LABEL_69;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || &v28[v93] > *(v92 + 24) >> 1)
        {
          sub_2665C670C();
          v92 = v94;
        }

        if (v27[2])
        {
          if ((*(v92 + 24) >> 1) - *(v92 + 16) < v28)
          {
            goto LABEL_71;
          }

          swift_arrayInitWithCopy();

          if (v28)
          {
            v95 = *(v92 + 16);
            v96 = __OFADD__(v95, v28);
            v97 = &v28[v95];
            if (v96)
            {
              goto LABEL_72;
            }

            *(v92 + 16) = v97;
          }
        }

        else
        {

          if (v28)
          {
            goto LABEL_70;
          }
        }

        ++v89;
      }

      v106 = *(v92 + 16);
      if (!v106)
      {

        v121 = *(v15 + 8);
        v119 = v133;
        v120 = v134;
        goto LABEL_67;
      }

      v132 = v15;
      v144 = v91;
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_16_17();
      v108 = v92 + v107;
      v136 = *(v109 + 56);
      v137 = v110;
      v138 = v109;
      v111 = (v109 - 8);
      v112 = v135;
      do
      {
        v113 = OUTLINED_FUNCTION_21_11();
        v137(v113);
        sub_26666C178();
        (*v111)(v27, v91);
        v144 = v81;
        v115 = *(v81 + 16);
        v114 = *(v81 + 24);
        v91 = v115 + 1;
        if (v115 >= v114 >> 1)
        {
          OUTLINED_FUNCTION_23_14(v114);
          v81 = v144;
        }

        OUTLINED_FUNCTION_13_18();
        (*(v118 + 32))(v116 + v117 * v115, v112);
        v108 += v136;
        --v106;
      }

      while (v106);
    }

    (*(v132 + 8))(v133, v134);

    goto LABEL_13;
  }

  v28 = *v25;
  OUTLINED_FUNCTION_25_13();
  if (!v55)
  {
LABEL_73:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v29 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v29, qword_28156D7E8);
  v30 = v28;
  v31 = sub_26666C148();
  v32 = sub_26666C5F8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_21();
    v34 = OUTLINED_FUNCTION_13_0();
    v143 = v28;
    v144 = v34;
    *v33 = 136315138;
    v35 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v36 = sub_26666C318();
    v38 = sub_2665BFC90(v36, v37, &v144);

    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_2_2();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_27_0();
}

void sub_26663DD64()
{
  OUTLINED_FUNCTION_28_0();
  v31 = sub_26666C228();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_22();
  if (qword_28156C150 != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v4 = sub_26666C168();
  __swift_project_value_buffer(v4, qword_28156D7E8);
  v5 = sub_26666C148();
  v6 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v6))
  {
    v7 = OUTLINED_FUNCTION_20();
    *v7 = 0;
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v8, v9, v10, v11, v7, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v12 = sub_26666AF78();
  OUTLINED_FUNCTION_7(v12);
  sub_26666AF68();
  v13 = MEMORY[0x2667869C0]();

  if (v13)
  {
    sub_26663D2D0();
    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v33 = MEMORY[0x277D84F90];
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_26666AAE8();
      v19 = *(v2 + 16);
      v18 = v2 + 16;
      v30 = v19;
      v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v21 = *(v18 + 56);
      v22 = (v18 - 8);
      v23 = MEMORY[0x277D84F90];
      do
      {
        v30(i, v20, v31);
        sub_26666C218();
        sub_26666A7D8();

        v24 = (*v22)(i, v31);
        if (v32)
        {
          MEMORY[0x2667887C0](v24);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26666C4B8();
          }

          sub_26666C4E8();
          v23 = v33;
        }

        v20 += v21;
        --v17;
      }

      while (v17);

      v15 = MEMORY[0x277D84F90];
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v2 = sub_2665C485C();
    for (i = 0; v2 != i; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](i, v23);
      }

      else
      {
        if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (sub_26655EC7C())
      {
      }

      else
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    if (sub_2665C485C())
    {
      sub_2665C4864();
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](0, v15);
      }

      else
      {
      }
    }
  }

  else
  {
    v25 = sub_26666C148();
    v26 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v26))
    {
      v27 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v27);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v28, v29, "[CalendarReferenceResolver]  Found no common_DateTimeRange entity, returning nil");
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26663E1EC()
{
  OUTLINED_FUNCTION_28_0();
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_26666C228();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_22();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_10_5();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v19 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v19, qword_28156D7E8);
  v20 = sub_26666C148();
  v21 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v21))
  {
    v22 = OUTLINED_FUNCTION_20();
    v24 = v15;
    *v22 = 0;
    _os_log_impl(&dword_266549000, v20, v0, v25, v22, 2u);
    v15 = v24;
    OUTLINED_FUNCTION_4_1();
  }

  v23 = v7(0);
  OUTLINED_FUNCTION_7(v23);
  v5();
  if (MEMORY[0x2667869C0]())
  {

    sub_26663C5A0();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v8);
  }

  sub_26657E808(v18, v15, &qword_28007ED70, &qword_266671CC0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) != 1)
  {
    (*(v10 + 32))(v1, v15, v8);
    v26(0);
    sub_26666C218();
    sub_26666A7D8();

    (*(v10 + 8))(v1, v8);
  }

  sub_26656CAEC(v18, &qword_28007ED70, &qword_266671CC0);

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26663E510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_23_14(unint64_t a1@<X8>)
{

  sub_2666338D8(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_27_16()
{

  sub_2666338D8(0, v0, 0);
}

uint64_t sub_26663E658()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26663E680()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26663E6D4(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v2;
  v3 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 48);

  *(v1 + 56) = v4;
  return v1;
}

uint64_t sub_26663E73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x6C61767265746E69;
  v7 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_2_6(0x6C61767265746E69, 0xE800000000000000), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    goto LABEL_9;
  }

  result = 0x636E657571657266;
  v10 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v10 || (result = OUTLINED_FUNCTION_2_6(0x636E657571657266, 0xE900000000000079), (result & 1) != 0))
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v9 = *(v3 + 40);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
    return result;
  }

  if (a1 != 0x6557664F73796164 || a2 != 0xEA00000000006B65)
  {
    result = OUTLINED_FUNCTION_2_6(0x6557664F73796164, 0xEA00000000006B65);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v12 = *(v3 + 56);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
  *a3 = v12;
}

unint64_t sub_26663E87C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26663E8C8(char a1)
{
  if (!a1)
  {
    return 0x6C61767265746E69;
  }

  if (a1 == 1)
  {
    return 0x636E657571657266;
  }

  return 0x6557664F73796164;
}

unint64_t sub_26663E94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26663E87C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26663E97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26663E8C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26663E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26663E87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26663E9D8(uint64_t a1)
{
  v2 = sub_26663F0A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26663EA14(uint64_t a1)
{
  v2 = sub_26663F0A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26663EA78()
{
  sub_26663EA50();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26663EAD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC70, &qword_26667B0D0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26663F0A0();
  sub_26666CBE8();
  v15 = 0;
  sub_26666CA28();
  if (!v2)
  {
    v14 = 1;
    sub_26666CA28();
    v13 = *(v3 + 56);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
    sub_26663F0F4(&qword_28007FC78, MEMORY[0x277D839B8], MEMORY[0x277D83948]);
    sub_26666CA78();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26663ECA8(void *a1)
{
  v2 = swift_allocObject();
  sub_26663ED1C(a1);
  return v2;
}

uint64_t sub_26663ED1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC50, &qword_26667B0C0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26663F0A0();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventRecurrence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    *(v1 + 24) = sub_26666C998();
    *(v1 + 32) = v10 & 1;
    v15 = 1;
    *(v1 + 40) = sub_26666C998();
    *(v1 + 48) = v11 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
    v14 = 2;
    sub_26663F0F4(&qword_28007FC68, MEMORY[0x277D839D0], MEMORY[0x277D83978]);
    sub_26666C9E8();
    (*(v6 + 8))(v9, v4);
    *(v1 + 56) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26663EFA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26663ECA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26663F060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarEventRecurrence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26663F0A0()
{
  result = qword_28007FC58;
  if (!qword_28007FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC58);
  }

  return result;
}

uint64_t sub_26663F0F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007FC60, &qword_26667B0C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventRecurrence.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26663F240()
{
  result = qword_28007FC80;
  if (!qword_28007FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC80);
  }

  return result;
}

unint64_t sub_26663F298()
{
  result = qword_28007FC88;
  if (!qword_28007FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC88);
  }

  return result;
}

unint64_t sub_26663F2F0()
{
  result = qword_28007FC90;
  if (!qword_28007FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC90);
  }

  return result;
}

uint64_t sub_26663F344()
{
  sub_26659236C(v0 + 120, v4, &qword_28007DCC8, &unk_2666724D0);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_266557D74(v4, &qword_28007DCC8, &unk_2666724D0);
  }

  return v1 & 1;
}

uint64_t sub_26663F3F0()
{
  sub_26659236C(v0 + 120, v6, &qword_28007DCC8, &unk_2666724D0);
  if (!v7)
  {
    sub_266557D74(v6, &qword_28007DCC8, &unk_2666724D0);
    return 4;
  }

  __swift_project_boxed_opaque_existential_1(v6, v7);
  v1 = OUTLINED_FUNCTION_4_39();
  if (!v2(v1))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    return 4;
  }

  v3 = sub_26666A468();

  if (v3)
  {
    v4 = sub_266576A30(v3);
  }

  else
  {
    v4 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_26663F4C8()
{
  sub_26659236C(v0 + 120, v5, &qword_28007DCC8, &unk_2666724D0);
  if (!v6)
  {
    sub_266557D74(v5, &qword_28007DCC8, &unk_2666724D0);
    return 2;
  }

  __swift_project_boxed_opaque_existential_1(v5, v6);
  v1 = OUTLINED_FUNCTION_4_39();
  if (!v2(v1))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    return 2;
  }

  v3 = sub_2665C530C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_26663F588()
{
  v1 = v0;
  v2 = sub_266668968();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_26666A238();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v172 = sub_26666A4F8();
  OUTLINED_FUNCTION_3_0();
  v168 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_10();
  v171 = v18;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v19);
  v170 = &v140 - v20;
  sub_26666A2A8();
  OUTLINED_FUNCTION_3_0();
  v173 = v22;
  v174 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_10();
  v160 = v23;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v24);
  v162 = &v140 - v25;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v26);
  v163 = &v140 - v27;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v28);
  v169 = &v140 - v29;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v30);
  v175 = (&v140 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC98, &qword_26667B398);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_8_10();
  v161 = v33;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v34);
  v164 = &v140 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007FCA0, &qword_26667B3A0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = (&v140 - v37);
  v39 = sub_26666A4D8();
  OUTLINED_FUNCTION_3_0();
  v165 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v166 = v43 - v42;
  sub_26659236C(v1 + 120, v176, &qword_28007DCC8, &unk_2666724D0);
  if (!v177)
  {
    v52 = &qword_28007DCC8;
    v53 = &unk_2666724D0;
    v54 = v176;
LABEL_16:
    sub_266557D74(v54, v52, v53);
    goto LABEL_17;
  }

  v159 = v8;
  v158 = v4;
  v44 = OUTLINED_FUNCTION_3_38();
  if (!v45(v44))
  {
    __swift_destroy_boxed_opaque_existential_1(v176);
    goto LABEL_17;
  }

  v46 = sub_26666AA08();
  v48 = v47;

  __swift_destroy_boxed_opaque_existential_1(v176);
  if (!v48)
  {
LABEL_17:
    if (qword_28156C150 != -1)
    {
LABEL_67:
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v58 = sub_26666C168();
    __swift_project_value_buffer(v58, qword_28156D7E8);
    v59 = sub_26666C148();
    v60 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v62, v63, v64, v65, v61, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    return 0;
  }

  v153 = v46;
  v157 = v48;
  sub_26659236C(v1 + 120, v176, &qword_28007DCC8, &unk_2666724D0);
  if (!v177)
  {
    OUTLINED_FUNCTION_21_12();
    sub_266557D74(v176, &qword_28007DCC8, &unk_2666724D0);
LABEL_14:
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v39);
    goto LABEL_15;
  }

  v49 = OUTLINED_FUNCTION_3_38();
  if (!v50(v49))
  {
    OUTLINED_FUNCTION_21_12();
    __swift_destroy_boxed_opaque_existential_1(v176);
    goto LABEL_14;
  }

  v51 = sub_26666A208();

  __swift_destroy_boxed_opaque_existential_1(v176);
  if (!v51)
  {
    OUTLINED_FUNCTION_21_12();
    goto LABEL_14;
  }

  sub_2665EC560(v51, v38);

  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    OUTLINED_FUNCTION_21_12();
LABEL_15:
    v52 = qword_28007FCA0;
    v53 = &qword_26667B3A0;
    v54 = v38;
    goto LABEL_16;
  }

  (*(v165 + 32))(v166, v38, v39);
  sub_26659236C(v1 + 120, v176, &qword_28007DCC8, &unk_2666724D0);
  v141 = v2;
  if (v177)
  {
    v68 = OUTLINED_FUNCTION_3_38();
    v70 = v69(v68);
    v71 = v164;
    v72 = v174;
    if (v70)
    {
      v73 = sub_26666A478();

      __swift_destroy_boxed_opaque_existential_1(v176);
      v74 = v73;
      if (v73)
      {
        v75 = 0;
        v152 = *(v74 + 16);
        v151 = v173 + 16;
        v150 = *MEMORY[0x277D5E690];
        v149 = (v168 + 104);
        v148 = (v168 + 8);
        v144 = (v173 + 8);
        v167 = v11 + 8;
        v168 = 0x800000026667F7E0;
        v143 = (v173 + 32);
        v145 = MEMORY[0x277D84F90];
        v76 = v175;
        v142 = v39;
        v146 = v74;
        v147 = v11 + 16;
        while (1)
        {
          if (v75 == v152)
          {

            v71 = v164;
            sub_2665EC578(v145, v164);

            goto LABEL_52;
          }

          if (v75 >= *(v74 + 16))
          {
            break;
          }

          v77 = v11;
          v78 = v9;
          v71 = v39;
          v155 = (*(v173 + 80) + 32) & ~*(v173 + 80);
          v154 = *(v173 + 72);
          (*(v173 + 16))(v76, v74 + v155 + v154 * v75, v72);
          v156 = v75 + 1;
          v79 = v170;
          sub_26666A288();
          v81 = v171;
          v80 = v172;
          (*v149)(v171, v150, v172);
          v82 = MEMORY[0x266786830](v79, v81);
          v83 = *v148;
          (*v148)(v81, v80);
          v83(v79, v80);
          v76 = v175;
          v39 = v71;
          v9 = v78;
          v11 = v77;
          if (v82)
          {
            v71 = sub_26666A268();
            v84 = 0;
            v85 = *(v71 + 16);
            while (1)
            {
              if (v85 == v84)
              {

                v39 = v142;
                v76 = v175;
                goto LABEL_40;
              }

              if (v84 >= *(v71 + 16))
              {
                __break(1u);
                goto LABEL_67;
              }

              (*(v77 + 16))(v15, v71 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v84, v9);
              if (sub_26666A228() == 0xD000000000000011 && v168 == v86)
              {
                break;
              }

              ++v84;
              v88 = sub_26666CAC8();

              v89 = OUTLINED_FUNCTION_17_14();
              v90(v89);
              if (v88)
              {
                goto LABEL_42;
              }
            }

            v91 = OUTLINED_FUNCTION_17_14();
            v92(v91);
LABEL_42:

            v93 = *v143;
            v76 = v175;
            (*v143)(v169, v175, v174);
            v94 = v145;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v96 = v94;
            v176[0] = v94;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_266633A38(0, *(v94 + 16) + 1, 1);
              v76 = v175;
              v96 = v176[0];
            }

            v39 = v142;
            v97 = v155;
            v99 = *(v96 + 16);
            v98 = *(v96 + 24);
            v71 = v99 + 1;
            if (v99 >= v98 >> 1)
            {
              sub_266633A38(v98 > 1, v99 + 1, 1);
              v76 = v175;
              v96 = v176[0];
            }

            *(v96 + 16) = v71;
            v145 = v96;
            v100 = v96 + v97 + v99 * v154;
            v72 = v174;
            v93(v100, v169, v174);
          }

          else
          {
LABEL_40:
            v72 = v174;
            (*v144)(v76, v174);
          }

          v74 = v146;
          v75 = v156;
        }

        __break(1u);
        goto LABEL_69;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v176);
    }
  }

  else
  {
    sub_266557D74(v176, &qword_28007DCC8, &unk_2666724D0);
    v71 = v164;
    v72 = v174;
  }

  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v72);
LABEL_52:
  v104 = v161;
  sub_26659236C(v71, v161, &qword_28007FC98, &qword_26667B398);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v72);
  v106 = v162;
  v107 = v163;
  if (EnumTagSinglePayload == 1)
  {

    sub_266557D74(v104, &qword_28007FC98, &qword_26667B398);
    if (qword_28156C150 == -1)
    {
LABEL_54:
      v108 = sub_26666C168();
      __swift_project_value_buffer(v108, qword_28156D7E8);
      v109 = sub_26666C148();
      v110 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v112, v113, v114, v115, v111, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      sub_266557D74(v71, &qword_28007FC98, &qword_26667B398);
      v116 = OUTLINED_FUNCTION_7_27();
      v117(v116);
      return 0;
    }

LABEL_69:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_54;
  }

  v118 = v173;
  (*(v173 + 32))(v163, v104, v72);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v119 = sub_26666C168();
  __swift_project_value_buffer(v119, qword_28156D7E8);
  v120 = *(v118 + 16);
  v120(v106, v107, v72);
  v121 = sub_26666C148();
  v122 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v122))
  {
    v123 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v176[0] = v175;
    *v123 = 136315138;
    v120(v160, v106, v72);
    v124 = sub_26666C318();
    v126 = v125;
    v127 = v72;
    v128 = *(v118 + 8);
    v128(v106, v127);
    v129 = sub_2665BFC90(v124, v126, v176);

    *(v123 + 4) = v129;
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v130, v131, v132, v133, v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v175);
    v107 = v163;
    OUTLINED_FUNCTION_4_1();
    v71 = v164;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v134 = v72;
    v128 = *(v118 + 8);
    v128(v106, v134);
  }

  v135 = v159;
  v66 = sub_2665D9C5C(v153, v157, v107);
  v137 = v136;

  if (v137)
  {
    v176[0] = v66;
    v176[1] = v137;
    sub_266668958();
    sub_266595F88();
    v66 = sub_26666C6E8();
    (*(v158 + 8))(v135, v141);
  }

  v128(v107, v174);
  sub_266557D74(v71, &qword_28007FC98, &qword_26667B398);
  v138 = OUTLINED_FUNCTION_7_27();
  v139(v138);
  return v66;
}

uint64_t sub_266640430()
{
  v2 = v0[17];
  sub_26659236C(v2 + 120, (v0 + 2), &qword_28007DCC8, &unk_2666724D0);
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = OUTLINED_FUNCTION_4_39();
    v5 = v4(v3);
    v0[18] = v5;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v5)
    {
      v6 = v0[17];
      v7 = __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
      v8 = sub_266640D2C(v5, *v7, 1);
      v0[19] = v8;
      sub_26659236C(v2 + 120, (v0 + 12), &qword_28007DCC8, &unk_2666724D0);
      v9 = v0[15];
      if (v9)
      {
        v10 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
        v11 = (*(v10 + 16))(v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      }

      else
      {
        sub_266557D74((v0 + 12), &qword_28007DCC8, &unk_2666724D0);
        v11 = 0;
      }

      v0[20] = v11;
      v22 = v0[17];
      v23 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v24 = *__swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
      v25 = OUTLINED_FUNCTION_20_19();
      v0[21] = v25;
      *v25 = v0;
      v25[1] = sub_26664079C;

      return v26(v8, v11, v22 + 10, v23, v24);
    }
  }

  else
  {
    sub_266557D74((v0 + 2), &qword_28007DCC8, &unk_2666724D0);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v12 = sub_26666C168();
  __swift_project_value_buffer(v12, qword_28156D7E8);
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266549000, v13, v14, "[FindEventUSOIntentWrapper] USO Parse does not contain a target, creating empty intent", v15, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  sub_26659236C(v0[17] + 120, (v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  v17 = v0[10];
  if (v17)
  {
    OUTLINED_FUNCTION_16_18();
    v1(v17, v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    v18 = v16;
    sub_266557D74((v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  }

  OUTLINED_FUNCTION_15_17();

  v19 = OUTLINED_FUNCTION_1_10();

  return v20(v19);
}

uint64_t sub_26664079C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;
  *(v4 + 176) = v3;

  return MEMORY[0x2822009F8](sub_2666408B4, 0, 0);
}

uint64_t sub_2666408B4()
{

  v3 = v0[22];
  sub_26659236C(v0[17] + 120, (v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  v4 = v0[10];
  if (v4)
  {
    OUTLINED_FUNCTION_16_18();
    v2(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    v5 = v3;
    sub_266557D74((v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  }

  OUTLINED_FUNCTION_15_17();

  v6 = OUTLINED_FUNCTION_1_10();

  return v7(v6);
}

uint64_t sub_2666409B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266640A48;

  return sub_266640410();
}

uint64_t sub_266640A48()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents26FindEventUSOTaskConforming_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266640C74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_266640CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266640D2C(uint64_t a1, uint64_t a2, char a3)
{
  v26[3] = &type metadata for CalendarReferenceResolver;
  v26[4] = &off_28780BAC8;
  v26[0] = a2;

  if (sub_26666A468())
  {

    if (sub_26666A468())
    {

      v5 = a3 ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_266549000, v7, v8, "[USOIntentHelpers] Should attempt calendar event resolution: %{BOOL}d", v9, 8u);
    OUTLINED_FUNCTION_4_1();
  }

  if ((v5 & 1) != 0 && (v10 = __swift_project_boxed_opaque_existential_1(v26, &type metadata for CalendarReferenceResolver), (v11 = sub_266591F6C(a1, *v10)) != 0))
  {
    v12 = v11;

    v13 = sub_26666C148();
    v14 = sub_26666C618();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      sub_26666AA48();

      v17 = sub_26666C318();
      v19 = sub_2665BFC90(v17, v18, &v25);

      *(v15 + 4) = v19;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v20, v21, v22, v23, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    a1 = v12;
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return a1;
}

uint64_t sub_266640F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5[23] = swift_task_alloc();
  v5[5] = type metadata accessor for CalendarDateTimeResolver(0);
  v5[6] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  sub_26661709C(a4, boxed_opaque_existential_1);
  v5[10] = &type metadata for CalendarReferenceResolver;
  v5[11] = &off_28780BAC8;
  v5[7] = a5;

  return MEMORY[0x2822009F8](sub_2666410B4, 0, 0);
}

uint64_t sub_2666410B4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = sub_26666A9E8();
  v0[24] = v1;
  if (qword_28156D128 != -1)
  {
    swift_once();
  }

  v2 = sub_26666B628();
  v3 = __swift_project_value_buffer(v2, qword_28156D830);
  sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_20_19();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_2666411E8;
  v9 = v0[23];

  return v11(v1, v3, 1, v9);
}

uint64_t sub_2666411E8(uint64_t a1)
{
  v2 = *v1;
  v7 = *v1;
  *(v7 + 136) = v1;
  *(v7 + 144) = a1;
  v3 = *(v2 + 184);
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  sub_266557D74(v3, &qword_28007D140, &qword_26666F140);

  return MEMORY[0x2822009F8](sub_266641328, 0, 0);
}

uint64_t sub_266641328()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = sub_26666A9D8();
  sub_26666A258();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_26655358C((v0 + 7), (v0 + 12));
  v12 = sub_26663B210(v7, v2, (v0 + 12), v5, v6);

  sub_266557D74((v0 + 12), &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v2, &qword_28007D3F0, &unk_26666F120);
  v13 = sub_2665D9924(v3);
  v14 = sub_26666AA08();
  v16 = v15;
  if (v4)
  {
    v17 = sub_2665D9A28(v0[20]);
  }

  else
  {
    v17 = 0;
  }

  v18 = v0[18];
  v19 = objc_allocWithZone(MEMORY[0x277CD3C10]);
  sub_26660B190(v14, v16, v18, v12, v13, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v20 = OUTLINED_FUNCTION_1_10();

  return v21(v20);
}

id sub_2666414C4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v45[3] = &type metadata for CalendarReferenceResolver;
  v45[4] = &off_28780BAC8;
  v45[0] = a3;

  v7 = a1;
  if ((a2 & 1) != 0 && (sub_2665667CC() & 1) != 0 && sub_26663F3F0() == 4)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v11, 2u);
      MEMORY[0x266789690](v11, -1, -1);
    }

    v12 = __swift_project_boxed_opaque_existential_1(v45, &type metadata for CalendarReferenceResolver);
    sub_26663E15C(*v12);
    if (v13)
    {
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = sub_26666AA08();
      v19 = v18;
      if (sub_26666A9E8())
      {
        v20 = sub_26655F060();
      }

      else
      {
        v20 = 0;
      }

      v24 = objc_allocWithZone(MEMORY[0x277CD3C10]);
      v25 = sub_26660B190(v17, v19, v20, 0, 0, 0);

      v7 = v25;
    }

    else
    {
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] No calendar event found in SRR", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }
    }
  }

  v26 = v7;
  v27 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v28 = sub_26666C168();
  __swift_project_value_buffer(v28, qword_28156D7E8);
  v29 = sub_26666C148();
  v30 = sub_26666C618();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_266549000, v29, v30, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v31, 0xCu);
    sub_266557D74(v32, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v32, -1, -1);
    MEMORY[0x266789690](v31, -1, -1);
  }

  sub_2666419C8(a4, v44);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    sub_26663F3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v38 = sub_26666C318();
    v40 = v39;
    sub_266641A00(v44);
    v41 = sub_2665BFC90(v38, v40, &v43);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  else
  {

    sub_266641A00(v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

id OUTLINED_FUNCTION_15_17()
{
  v3 = *(v2 + 136);
  v4 = *__swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));

  return sub_2666414C4(v0, v1 & 1, v4, v3);
}

id OUTLINED_FUNCTION_16_18()
{
  __swift_project_boxed_opaque_existential_1((v2 + 56), v1);

  return v0;
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_21_12()
{
}

uint64_t sub_266641B5C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 280) = v3;
  *(v1 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v5);
  *(v1 + 64) = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  OUTLINED_FUNCTION_3_3(v6);
  *(v1 + 72) = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v7);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v8 = sub_266668D38();
  *(v1 + 152) = v8;
  *(v1 + 160) = *(v8 - 8);
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266641D38()
{
  v1 = [*(v0 + 48) dateTimeRange];
  *(v0 + 208) = v1;
  v2 = 0;
  if ((sub_266566C70() & 1) != 0 && v1)
  {
    v3 = v1;
    v2 = sub_2665D37E8();
  }

  v4 = *(v0 + 280);
  type metadata accessor for CalendarResultSetIntroOptions.Builder();
  *(v0 + 216) = swift_initStackObject();
  v5 = sub_266583350();
  *(v0 + 224) = v5;
  if (v4 == 4)
  {
    v105 = v2;
    v6 = *(v0 + 40);
    v7 = sub_2665C485C();
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = v6 + 32;
    do
    {
      v12 = v8;
      if (v7 == v8)
      {
        break;
      }

      if (v9)
      {
        v13 = MEMORY[0x266788B60](v8, *(v0 + 40));
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_80;
        }

        v13 = *(v11 + 8 * v8);
      }

      if (__OFADD__(v12, 1))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v14 = v13;
      v15 = sub_2665EC908(v14);

      v8 = v12 + 1;
    }

    while ((v15 & 1) != 0);
    v20 = 0;
    v5[23] = v7 == v12;
    do
    {
      v21 = v20;
      if (v7 == v20)
      {
        break;
      }

      if (v9)
      {
        v22 = MEMORY[0x266788B60](v20, *(v0 + 40));
      }

      else
      {
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_82;
        }

        v22 = *(v11 + 8 * v20);
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_81;
      }

      v23 = v22;
      v24 = sub_2665EC938();

      v20 = v21 + 1;
    }

    while ((v24 & 1) != 0);
    v25 = *(v0 + 40);
    v5[22] = v7 == v21;
    v5[20] = sub_2665EEE04(v25);
    v5[18] = v105 & 1;
    v5[21] = 0;
    v5[19] = sub_2665EEC64(v25);
    if (v1)
    {
      v26 = v1;
      v27 = sub_2665D3FB8();
    }

    else
    {
      v27 = 0;
    }

    v5[16] = v27 & 1;
    sub_2665D4854();
    v5[17] = (v28 & 1) == 0;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_83:
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[FindEventsCATsSimple] Making result introduction for ordinal request that returned multiple events.", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    v5[16] = 1;
  }

  type metadata accessor for CalendarResultSetIntroOptions();
  swift_allocObject();

  v30 = sub_266583388(v29);
  *(v0 + 232) = v30;
  if (v1 && (v5[20] & 1) == 0)
  {
    v38 = v1;
    goto LABEL_74;
  }

  v106 = sub_2665C485C();
  v100 = v30;
  if (v106 && ((v31 = *(v0 + 40) & 0xC000000000000001, sub_2665C4864(), v32 = *(v0 + 40), v31) ? (v33 = MEMORY[0x266788B60](0, v32)) : (v33 = *(v32 + 32)), v34 = v33, v35 = [v33 dateTimeRange], v34, v35))
  {
    v36 = [v35 startDate];

    if (v36)
    {
      sub_266668CE8();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v5 = *(v0 + 144);
    v1 = *(v0 + 152);
    v39 = *(v0 + 136);
    __swift_storeEnumTagSinglePayload(v39, v37, 1, v1);
    sub_266557CE4(v39, v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
    {
      (*(*(v0 + 160) + 32))(*(v0 + 200), *(v0 + 144), *(v0 + 152));
      goto LABEL_46;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 144), 1, 1, *(v0 + 152));
  }

  v5 = *(v0 + 144);
  v1 = *(v0 + 152);
  sub_266668CF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
  {
    sub_266557D74(*(v0 + 144), &qword_28007D140, &qword_26666F140);
  }

LABEL_46:
  v40 = 0;
  v41 = *(v0 + 40);
  v103 = v41 & 0xC000000000000001;
  v42 = v41 & 0xFFFFFFFFFFFFFF8;
  v43 = v41 + 32;
  v99 = *(v0 + 160);
  v101 = (v99 + 32);
  v102 = MEMORY[0x277D84F90];
  while (v106 != v40)
  {
    if (v103)
    {
      v44 = MEMORY[0x266788B60](v40, *(v0 + 40));
    }

    else
    {
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_78;
      }

      v44 = *(v43 + 8 * v40);
    }

    v5 = (v40 + 1);
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v45 = v44;
    v46 = [v45 dateTimeRange];
    if (v46)
    {
      v47 = v46;
      v48 = [v47 endDate];
      if (v48)
      {
        v49 = v48;
        sub_266668CE8();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = *(v0 + 104);
      v52 = *(v0 + 112);
      v53 = *(v0 + 96);
      __swift_storeEnumTagSinglePayload(v53, v50, 1, *(v0 + 152));
      sub_266557CE4(v53, v51);
      sub_266557CE4(v51, v52);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 112), 1, 1, *(v0 + 152));
    }

    v54 = *(v0 + 152);
    v1 = *(v0 + 120);
    sub_266557CE4(*(v0 + 112), v1);

    if (__swift_getEnumTagSinglePayload(v1, 1, v54) == 1)
    {
      sub_266557D74(*(v0 + 120), &qword_28007D140, &qword_26666F140);
      ++v40;
    }

    else
    {
      v55 = *v101;
      (*v101)(*(v0 + 184), *(v0 + 120), *(v0 + 152));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2665C6ED4();
        v102 = v58;
      }

      v1 = *(v102 + 16);
      if (v1 >= *(v102 + 24) >> 1)
      {
        sub_2665C6ED4();
        v102 = v59;
      }

      v56 = *(v0 + 184);
      v57 = *(v0 + 152);
      *(v102 + 16) = v1 + 1;
      v55(v102 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v1, v56, v57);
      ++v40;
    }
  }

  v60 = *(v0 + 152);
  v61 = *(v0 + 128);
  sub_266643D18(v102, v61);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v60);
  v63 = *(v0 + 152);
  v64 = *(v0 + 128);
  if (EnumTagSinglePayload == 1)
  {
    sub_266668CF8();
    if (__swift_getEnumTagSinglePayload(v64, 1, v63) != 1)
    {
      sub_266557D74(*(v0 + 128), &qword_28007D140, &qword_26666F140);
    }
  }

  else
  {
    (*v101)(*(v0 + 192), *(v0 + 128), *(v0 + 152));
  }

  sub_266668CF8();
  sub_2665EF878();
  if (sub_26666C2A8())
  {
    v65 = *(v0 + 160);
    (*v101)(*(v0 + 176), *(v0 + 168), *(v0 + 152));
    v66 = *(v65 + 16);
  }

  else
  {
    v67 = *(v0 + 200);
    v68 = *(v0 + 176);
    v69 = *(v0 + 152);
    v70 = *(v0 + 160);
    (*(v70 + 8))(*(v0 + 168), v69);
    v66 = *(v70 + 16);
    v66(v68, v67, v69);
  }

  v71 = *(v0 + 192);
  v104 = *(v0 + 176);
  v107 = *(v0 + 200);
  v73 = *(v0 + 152);
  v72 = *(v0 + 160);
  v75 = *(v0 + 80);
  v74 = *(v0 + 88);
  v77 = *(v0 + 64);
  v76 = *(v0 + 72);
  (v66)(v74);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v73);
  v66(v75, v71, v73);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v73);
  sub_266668E58();
  sub_266668E68();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  sub_266668EA8();
  sub_266668EB8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v38 = sub_26658F56C(v74, v75, v76, v77);
  v93 = *(v72 + 8);
  v93(v104, v73);
  v93(v71, v73);
  v93(v107, v73);
  v30 = v100;
LABEL_74:
  v94 = v38;
  *(v0 + 240) = v94;
  sub_2665C485C();
  sub_26666BB78();
  v95 = sub_2665CAB68(v94);
  *(v0 + 248) = v95;

  v96 = swift_task_alloc();
  *(v0 + 256) = v96;
  *v96 = v0;
  v96[1] = sub_266642710;
  v97 = OUTLINED_FUNCTION_12_23();

  return sub_2665A3418(v97, 0, v95, v30);
}

uint64_t sub_266642710(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v5 + 264) = v1;

  if (!v1)
  {
    *(v5 + 272) = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266642864()
{
  OUTLINED_FUNCTION_2_38();

  v2 = *(v0 + 8);
  v3 = *(v0 + 272);

  return v2(v3);
}

uint64_t sub_26664297C()
{
  OUTLINED_FUNCTION_2_38();

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_266642A8C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  *(v1 + 172) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v6);
  *(v1 + 208) = OUTLINED_FUNCTION_19();
  v7 = sub_266668D98();
  *(v1 + 216) = v7;
  *(v1 + 224) = *(v7 - 8);
  *(v1 + 232) = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266642B70()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v1, v0 + 16);
  v4 = sub_2665CA7F4(v3, (v0 + 16));
  *(v0 + 240) = v4;
  v5 = [v2 requestedEventAttribute];
  if (v5 == 1)
  {

    v12 = swift_task_alloc();
    *(v0 + 264) = v12;
    *v12 = v0;
    v12[1] = sub_266643058;
    v13 = OUTLINED_FUNCTION_12_23();

    return sub_2665A2D98(v13);
  }

  else if (v5 == 2)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
    sub_266669648();
    v9 = swift_task_alloc();
    *(v0 + 280) = v9;
    *v9 = v0;
    v9[1] = sub_2666431D0;
    v10 = *(v0 + 232);
    v11 = *(v0 + 176);

    return sub_266643758(v11, v4, v10);
  }

  else
  {
    if (v5 == 3)
    {
      if (*(v0 + 172) == 4)
      {

        v6 = swift_task_alloc();
        *(v0 + 248) = v6;
        *v6 = v0;
        v6[1] = sub_266642EE0;
        v7 = OUTLINED_FUNCTION_12_23();

        return sub_2665A2C84(v7);
      }

      v14 = 1;
    }

    else
    {
      v14 = *(v0 + 172) != 4;
    }

    type metadata accessor for CalendarResultSetSingleOptions.Builder();
    swift_initStackObject();
    v15 = sub_26658A5F0();
    *(v15 + 16) = 1;
    type metadata accessor for CalendarResultSetSingleOptions();
    swift_allocObject();
    *(v0 + 296) = sub_26658A628(v15);

    v16 = 1;
    if ((sub_2665667CC() & 1) != 0 && v14)
    {
      sub_2665766B4(*(v0 + 172));
      v16 = 0;
    }

    v17 = *(v0 + 208);
    v18 = sub_26666BDA8();
    __swift_storeEnumTagSinglePayload(v17, v16, 1, v18);

    v19 = swift_task_alloc();
    *(v0 + 304) = v19;
    *v19 = v0;
    v19[1] = sub_26664339C;
    OUTLINED_FUNCTION_12_23();

    return sub_2665A370C();
  }
}

uint64_t sub_266642EE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v3[7] = v1;
  v3[8] = v5;
  v3[9] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v3[32] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266642FE8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_24();

  v0 = OUTLINED_FUNCTION_14_4();

  return v1(v0);
}

uint64_t sub_266643058()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v3[34] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266643160()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_24();

  v0 = OUTLINED_FUNCTION_14_4();

  return v1(v0);
}

uint64_t sub_2666431D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[13] = v1;
  v2[14] = v4;
  v2[15] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = v5[29];
  v7 = v5[28];
  v8 = v5[27];
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  *(v11 + 288) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26664332C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_24();

  v0 = OUTLINED_FUNCTION_14_4();

  return v1(v0);
}

uint64_t sub_26664339C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[16] = v1;
  v2[17] = v4;
  v2[18] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 312) = v0;

  sub_266557D74(v6, &unk_28007D130, &unk_266671DF0);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266643508()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_8_24();

  v0 = OUTLINED_FUNCTION_14_4();

  return v1(v0);
}

uint64_t sub_266643580()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2666435F8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266643670()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2666436E0()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266643758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_4_14();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266643788()
{
  v1 = v0[3];
  OUTLINED_FUNCTION_15_18(2);
  v3 = v2;
  v0[6] = v2;
  OUTLINED_FUNCTION_15_18(4);
  v5 = v4;
  v0[7] = v4;
  OUTLINED_FUNCTION_15_18(3);
  v7 = v6;
  v0[8] = v6;
  OUTLINED_FUNCTION_15_18(0);
  v9 = v8;
  v0[9] = v8;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26664388C;

  return sub_2665A2FD4(v1, v3, v5, v7, v9);
}

uint64_t sub_26664388C()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_2666439E4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

void sub_266643A64(id a1, void *a2, uint64_t a3)
{
  v5 = sub_2665B0ECC(a2);
  if (v5)
  {
    v6 = v5;
    v13 = a3;
    v14 = MEMORY[0x277D84F90];
    v7 = sub_2665C485C();
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        MEMORY[0x28223BE20](v11);
        v12[2] = v13;
        sub_2665C90F0(sub_266644058, v12, v14);

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((sub_2666667D0() & 1) != 0 || [v10 status] != a1)
      {
      }

      else
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_266643BF4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266668D98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_26666BCA8();
  v11 = [v10 person];
  (*(v7 + 16))(v9, a2, v6);
  result = sub_26666BC98();
  *a3 = result;
  return result;
}

uint64_t sub_266643D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_2665EF878();
      v15 = sub_26666C298();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_266643F84(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_266644010(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_2_38()
{
  v2 = *(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_8_24()
{
}

void OUTLINED_FUNCTION_15_18(void *a1)
{

  sub_266643A64(a1, v2, v1);
}

uint64_t sub_266644110(char **a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v83 = a1;
  sub_266668DF8();
  OUTLINED_FUNCTION_3_0();
  v80 = v5;
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_44();
  v79 = v6;
  v85 = sub_266668E08();
  OUTLINED_FUNCTION_3_0();
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_44();
  v78 = v9;
  v84 = sub_266668DC8();
  OUTLINED_FUNCTION_3_0();
  v73 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_44();
  v74 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v70 - v17;
  sub_266668B08();
  OUTLINED_FUNCTION_3_0();
  v75 = v20;
  v76 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_44();
  v22 = v21;
  v23 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v70 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v70 - v33;
  v82 = a2;
  v35 = v83;
  if (sub_266668CA8())
  {
    v36 = v23;
    v37 = v82;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v38 = sub_26666C168();
    __swift_project_value_buffer(v38, qword_28156D7E8);
    v39 = *(v25 + 16);
    v39(v34, v35, v36);
    v39(v32, v37, v36);
    v40 = sub_26666C148();
    v41 = sub_26666C5F8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v42 = 136315394;
      sub_2665C57C8(&qword_28007E9E8, MEMORY[0x277CC95B8]);
      LODWORD(v85) = v41;
      v43 = sub_26666CAA8();
      v45 = v44;
      v46 = *(v25 + 8);
      v46(v34, v36);
      v47 = sub_2665BFC90(v43, v45, &v87);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = sub_26666CAA8();
      v50 = v49;
      v46(v32, v36);
      v51 = sub_2665BFC90(v48, v50, &v87);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_266549000, v40, v85, "[DateUtils] spanningStartDates start(%s) is after end(%s)", v42, 0x16u);
      v52 = v86;
      swift_arrayDestroy();
      MEMORY[0x266789690](v52, -1, -1);
      MEMORY[0x266789690](v42, -1, -1);
    }

    else
    {

      v69 = *(v25 + 8);
      v69(v32, v36);
      v69(v34, v36);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v53 = sub_266668E68();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v53);
    v54 = sub_266668EB8();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v54);
    v72 = v22;
    sub_266668AF8();
    v55 = v29;
    sub_266668DA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E620, &qword_266674E88);
    v56 = v25;
    v57 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_26666EED0;
    v59 = *(v25 + 16);
    v70 = v55;
    v71 = v23;
    v59(v58 + v57, v55, v23);
    v87 = v58;
    v60 = v73;
    v61 = v74;
    v62 = (*(v73 + 104))(v74, *MEMORY[0x277CC9878], v84);
    v83 = &v70;
    MEMORY[0x28223BE20](v62);
    v63 = v77;
    v64 = v78;
    (*(v77 + 104))(v78, *MEMORY[0x277CC9900], v85);
    v66 = v79;
    v65 = v80;
    v67 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277CC98E8], v81);
    sub_266668DE8();
    (*(v65 + 8))(v66, v67);
    (*(v63 + 8))(v64, v85);
    (*(v60 + 8))(v61, v84);
    (*(v56 + 8))(v70, v71);
    (*(v75 + 8))(v72, v76);
    return v87;
  }
}

uint64_t sub_26664494C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_266668D38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_26655E020(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_266574608(v10);
  }

  v19 = *(v12 + 32);
  v19(v17, v10, v11);
  sub_2665C57C8(qword_28007EDA0, MEMORY[0x277CC9590]);
  if (sub_26666C298())
  {
    result = (*(v12 + 8))(v17, v11);
    *a3 = 1;
  }

  else
  {
    (*(v12 + 16))(v15, v17, v11);
    sub_266643F6C();
    v20 = *(*a5 + 16);
    sub_266643FF8(v20);
    (*(v12 + 8))(v17, v11);
    v21 = *a5;
    *(v21 + 16) = v20 + 1;
    return (v19)(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v15, v11);
  }

  return result;
}

uint64_t sub_266644BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v17 = OUTLINED_FUNCTION_3_3(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  v21 = OUTLINED_FUNCTION_3_3(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  sub_266668E58();
  v24 = sub_266668E68();
  v58 = v23;
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  sub_266668EA8();
  v25 = sub_266668EB8();
  v59 = v19;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
  v57 = sub_266668A48();
  v54 = v26;
  v56 = sub_266668A78();
  v53 = v27;
  v55 = sub_266668A88();
  v52 = v28;
  v51 = sub_266668A38();
  v49 = v29;
  sub_2665A9D2C(a1, v15);
  v30 = sub_266668B08();
  OUTLINED_FUNCTION_4_19(v15);
  if (v31)
  {
    sub_266645298(v15);
    v50 = 0;
    v48 = 1;
  }

  else
  {
    v50 = sub_266668A58();
    v48 = v32;
    OUTLINED_FUNCTION_0_43();
    (*(v33 + 8))(v15, v30);
  }

  sub_2665A9D2C(a1, v13);
  OUTLINED_FUNCTION_4_19(v13);
  if (v31)
  {
    sub_266645298(v13);
    v47 = 0;
    v46 = 1;
  }

  else
  {
    v47 = sub_266668A98();
    v46 = v34;
    OUTLINED_FUNCTION_0_43();
    (*(v35 + 8))(v13, v30);
  }

  sub_2665A9D2C(a1, v10);
  OUTLINED_FUNCTION_4_19(v10);
  if (v31)
  {
    sub_266645298(v10);
    v45 = 0;
    v44 = 1;
  }

  else
  {
    v45 = sub_266668AB8();
    v44 = v36;
    OUTLINED_FUNCTION_0_43();
    (*(v37 + 8))(v10, v30);
  }

  sub_2665A9D2C(a1, v7);
  OUTLINED_FUNCTION_4_19(v7);
  if (v31)
  {
    sub_266645298(v7);
    v43 = 0;
    v42 = 1;
  }

  else
  {
    v43 = sub_2666689C8();
    v42 = v38;
    OUTLINED_FUNCTION_0_43();
    (*(v39 + 8))(v7, v30);
  }

  v41 = sub_266668AE8();
  sub_2666689F8();
  sub_266668AD8();
  sub_2666689E8();
  sub_2666689D8();
  sub_266668A08();
  return sub_266668AF8();
}

BOOL sub_2666450AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  sub_2665A9D2C(v1, &v26 - v10);
  v12 = sub_266668B08();
  OUTLINED_FUNCTION_5_30(v11);
  if (v13)
  {
    v14 = v11;
    goto LABEL_4;
  }

  v16 = sub_266668A78();
  v18 = v17;
  v19 = *(*(v12 - 8) + 8);
  v19(v11, v12);
  result = 0;
  if ((v18 & 1) == 0 && !v16)
  {
    sub_2665A9D2C(v1, v9);
    OUTLINED_FUNCTION_5_30(v9);
    if (v13)
    {
      v14 = v9;
      goto LABEL_4;
    }

    v20 = sub_266668A88();
    v22 = v21;
    v19(v9, v12);
    result = 0;
    if ((v22 & 1) == 0 && !v20)
    {
      sub_2665A9D2C(v1, v6);
      OUTLINED_FUNCTION_5_30(v6);
      if (!v13)
      {
        v23 = sub_266668A38();
        v25 = v24;
        v19(v6, v12);
        if ((v25 & 1) == 0)
        {
          return v23 == 0;
        }

        return 0;
      }

      v14 = v6;
LABEL_4:
      sub_266645298(v14);
      return 0;
    }
  }

  return result;
}

uint64_t sub_266645298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266645300()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = sub_266668B08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665A9D2C(v1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_266645298(v5);
    v10 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_266668A58();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v10 = v12 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_266645474(uint64_t a1)
{
  if ((sub_266645504(a1) & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_266668A58();
  OUTLINED_FUNCTION_2_39();
  v3 = sub_266668A58();
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 1) != 0 || v1 != v3)
    {
      return v5 & 1;
    }
  }

  sub_266668A98();
  sub_266668A98();
  OUTLINED_FUNCTION_4_40();
  if (!v7)
  {
    v5 = v6;
  }

  return v5 & 1;
}

uint64_t sub_266645504(uint64_t a1)
{
  sub_266668A78();
  OUTLINED_FUNCTION_2_39();
  v3 = sub_266668A78();
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 1) != 0 || v1 != v3)
    {
      return v5 & 1;
    }
  }

  sub_266668A88();
  OUTLINED_FUNCTION_2_39();
  v6 = sub_266668A88();
  if (v2)
  {
    if ((v7 & 1) == 0)
    {
LABEL_8:
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    v5 = 0;
    if ((v7 & 1) != 0 || v1 != v6)
    {
      return v5 & 1;
    }
  }

  sub_266668A38();
  sub_266668A38();
  OUTLINED_FUNCTION_4_40();
  if (!v9)
  {
    v5 = v8;
  }

  return v5 & 1;
}

uint64_t sub_266645658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669DF8();
  v20 = sub_266561674(v19, v62);
  (*(v16 + 8))(v19, v14, v20);
  if (v62[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v21 = sub_26666C168();
    __swift_project_value_buffer(v21, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v22 = v57;
    v23(v13, a1, v57);
    v24 = sub_26666C148();
    v25 = sub_26666C618();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_21();
      v26 = OUTLINED_FUNCTION_13();
      v60 = v26;
      *v8 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v27(v13, v22);
      v28 = OUTLINED_FUNCTION_21_5();
      v31 = sub_2665BFC90(v28, v29, v30);

      *(v8 + 4) = v31;
      _os_log_impl(&dword_266549000, v24, v25, "[ConfirmationParsing] Returning .ignore() for input: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v4 + 8))(v13, v22);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v62, &v60);
    if (v60 == 2)
    {
      v32 = v57;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v33 = sub_26666C168();
      __swift_project_value_buffer(v33, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      v34(v11, a1, v32);
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_21();
        v37 = OUTLINED_FUNCTION_13();
        v59 = v37;
        *v8 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v38(v11, v32);
        v39 = OUTLINED_FUNCTION_21_5();
        v42 = sub_2665BFC90(v39, v40, v41);

        *(v8 + 4) = v42;
        _os_log_impl(&dword_266549000, v35, v36, "[ConfirmationParsing] Returning .cancel() for input: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v4 + 8))(v11, v32);
      }

      sub_2666697C8();
    }

    else
    {
      v43 = v57;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v44 = sub_26666C168();
      __swift_project_value_buffer(v44, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      v45(v8, a1, v43);
      v46 = sub_26666C148();
      v47 = sub_26666C618();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_21();
        v49 = swift_slowAlloc();
        v59 = v49;
        *v48 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v50(v8, v43);
        v51 = OUTLINED_FUNCTION_21_5();
        v54 = sub_2665BFC90(v51, v52, v53);

        *(v48 + 4) = v54;
        _os_log_impl(&dword_266549000, v46, v47, "[ConfirmationParsing] Returning .handle() for input: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v4 + 8))(v8, v43);
      }

      sub_2666697D8();
      sub_266557D74(&v61, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_266557D74(v62, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_266645C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26655358C(v2 + 16, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_266645658(a1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_266645C7C()
{
  OUTLINED_FUNCTION_14();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_266669E18();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  v1[27] = swift_task_alloc();
  v5 = sub_266669E58();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266645DD0, 0, 0);
}

uint64_t sub_266645DD0()
{
  v31 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_26655358C(v0[23] + 16, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_266669DF8();
  v4 = sub_266561674(v1, (v0 + 2));
  (*(v2 + 8))(v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2665B9288((v0 + 2), (v0 + 9));
  v5 = v0[9];
  if (v5 == 2)
  {
    sub_2665B92F8((v0 + 9));
    goto LABEL_5;
  }

  if (v5 == 3)
  {
    sub_266557D74((v0 + 9), &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[22];
    v10 = sub_26666C168();
    v11 = __swift_project_value_buffer(v10, qword_28156D7E8);
    (*(v7 + 16))(v6, v9, v8);
    v12 = sub_26666C148();
    v13 = sub_26666C5F8();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_21();
      v14 = OUTLINED_FUNCTION_13();
      v30 = v14;
      *v11 = 136315138;
      sub_266669DF8();
      v15 = sub_26666C318();
      v17 = v16;
      v18 = OUTLINED_FUNCTION_21_5();
      v19(v18);
      v20 = sub_2665BFC90(v15, v17, &v30);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_266549000, v12, v13, "[GenericConfirmationFlowStrategy] Did not get ConfirmationTask from parse: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v22 = v0[25];
      v21 = v0[26];
      v23 = v0[24];

      (*(v22 + 8))(v21, v23);
    }

    sub_26656CBFC();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 2;
    swift_willThrow();
    sub_266557D74((v0 + 2), &qword_28007E368, &unk_266673E30);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_14;
  }

  v26 = v0[27];
  sub_266557D74((v0 + 10), &unk_28007D200, &qword_26666FD20);
  v27 = sub_266669AF8();
  v28 = MEMORY[0x277D5BED0];
  if ((v5 & 1) == 0)
  {
    v28 = MEMORY[0x277D5BED8];
  }

  (*(*(v27 - 8) + 104))(v26, *v28, v27);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  sub_266669D88();
  sub_266557D74((v0 + 2), &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_14:

  return v25();
}

uint64_t sub_2666461A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2666461C4, 0, 0);
}

uint64_t sub_2666461C4()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[GenericConfirmationFlowStrategy] Making output for prompt", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  v0[5] = *(v5 + 64);

  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_26664636C;
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9);
}

uint64_t sub_26664636C()
{
  OUTLINED_FUNCTION_14();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2666464D8;
  }

  else
  {
    v2 = sub_26664647C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26664647C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2666464D8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266646534()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_26664655C()
{
  sub_266646534();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2666465B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266646BC0;

  return sub_266645C7C();
}

uint64_t sub_266646660(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266646BC0;

  return sub_2666461A0(a1, a2);
}

uint64_t sub_266646708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v12 = type metadata accessor for GenericConfirmationFlowStrategy(0, *(a3 + 80), v10, v11);
  *v9 = v4;
  v9[1] = sub_266646BC0;

  return MEMORY[0x2821BA040](a1, a2, v12, a4);
}

uint64_t sub_2666467D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v12 = type metadata accessor for GenericConfirmationFlowStrategy(0, *(a3 + 80), v10, v11);
  *v9 = v4;
  v9[1] = sub_266646BC0;

  return MEMORY[0x2821BA048](a1, a2, v12, a4);
}

uint64_t sub_2666468A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26664695C;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26664695C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266646A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266646BC0;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_266646AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266646BC0;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_266646BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26666C7E8();

  MEMORY[0x266788710](a1, a2);
  MEMORY[0x266788710](544175136, 0xE400000000000000);
  MEMORY[0x266788710](a3, a4);
  MEMORY[0x266788710](46, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t CalendarFlowProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TaskParser(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669E68();
  sub_26666C068();
  v6 = sub_26666C058();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_266669648();
  v7 = &v5[v2[5]];
  v7[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v7[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  *boxed_opaque_existential_1 = swift_allocObject();
  sub_266669638();
  sub_266668D88();
  sub_26666B548();
  v9 = &v5[v2[6]];
  v10 = type metadata accessor for CalendarContactResolver(0);
  v9[3] = v10;
  v9[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v9) + *(v10 + 20)) = 0;
  sub_26666B338();
  v11 = sub_26666C058();
  v12 = &v5[v2[7]];
  v12[3] = &type metadata for CalendarReferenceResolver;
  v12[4] = &off_28780BAC8;
  *v12 = v11;
  sub_26666BD98();
  if (qword_28156C088 != -1)
  {
    swift_once();
  }

  sub_26666BD88();
  a1[3] = v2;
  a1[4] = &off_287808308;
  v13 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_266552BE0(v5, v13);
  a1[8] = type metadata accessor for CalendarFlowCreator(0);
  a1[9] = &off_28780A3E0;
  v14 = __swift_allocate_boxed_opaque_existential_1(a1 + 5);
  sub_2665FB6EC(v14);
  sub_26655358C(v17, (a1 + 10));
  a1[18] = &type metadata for CalendarReferenceResolver;
  a1[19] = &off_28780BAC8;
  a1[15] = v6;
  sub_26657F610(v5, type metadata accessor for TaskParser);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t CalendarFlowProvider.findFlowForX(parse:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v62 = sub_266669E58();
  v59 = *(v62 - 8);
  v5 = MEMORY[0x28223BE20](v62);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v57 = &v56[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v56[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v56[-v12];
  v14 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28156C160 != -1)
  {
    swift_once();
  }

  v18 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  v61 = v18;
  sub_26666C078();
  v19 = &v17[*(v14 + 20)];
  *v19 = "FindFlowForX";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v20 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26659AC88(a1, &v63);
  v21 = a1;
  if (BYTE8(v64[1]) == 255)
  {
    sub_266560930(&v63);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v23 = sub_26666C168();
    __swift_project_value_buffer(v23, qword_28156D7E8);
    v24 = v59;
    v25 = *(v59 + 16);
    v26 = v62;
    v25(v7, v21, v62);
    v27 = sub_26666C148();
    v28 = sub_26666C608();
    if (os_log_type_enabled(v27, v28))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_4_41();
      v29 = swift_slowAlloc();
      *&v63 = v29;
      *v17 = 136315138;
      v30 = OUTLINED_FUNCTION_5_31();
      v25(v30, v7, v26);
      sub_26666C318();
      (*(v24 + 8))(v7, v26);
      v31 = OUTLINED_FUNCTION_7_28();

      *(v17 + 4) = v31;
      _os_log_impl(&dword_266549000, v27, v28, "[CalendarFlowProvider] returning no flow for unknown parse %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x266789690](v29, -1, -1);
      OUTLINED_FUNCTION_2_40();
    }

    else
    {

      (*(v24 + 8))(v7, v26);
    }

    OUTLINED_FUNCTION_6_26();
    sub_266669598();
  }

  else
  {
    v70 = v63;
    *v71 = v64[0];
    *&v71[9] = *(v64 + 9);
    sub_266553950(&v70, v68);
    v22 = v62;
    switch(v69)
    {
      case 1:
        OUTLINED_FUNCTION_1_45();
        v42 = *(&v64[0] + 1);
        v43 = *&v64[1];
        v44 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64[0] + 1));
        sub_2665FCB28(v44, v20, v42, v43);
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        sub_266553988(&v70);
        __swift_destroy_boxed_opaque_existential_1(&v63);
        break;
      case 2:
        OUTLINED_FUNCTION_1_45();
        sub_2665FBCCC(&v63);
        goto LABEL_18;
      case 3:
        OUTLINED_FUNCTION_1_45();
        sub_2665FBED0(&v63);
        goto LABEL_18;
      case 4:
        v32 = v13;
        sub_26654B7D8(v68, v67);
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v33 = sub_26666C168();
        __swift_project_value_buffer(v33, qword_28156D7E8);
        v34 = v59;
        v35 = *(v59 + 16);
        v35(v32, v21, v22);
        v36 = sub_26666C148();
        v37 = sub_26666C5F8();
        if (os_log_type_enabled(v36, v37))
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_4_41();
          v57 = swift_slowAlloc();
          *&v63 = v57;
          *v17 = 136315138;
          v38 = OUTLINED_FUNCTION_5_31();
          v35(v38, v32, v22);
          sub_26666C318();
          (*(v34 + 8))(v32, v22);
          v39 = OUTLINED_FUNCTION_7_28();

          *(v17 + 4) = v39;
          _os_log_impl(&dword_266549000, v36, v37, "[CalendarFlowProvider] OpenCalendarView is not supported on this platform, reforming into findEvents flow for parse %s", v17, 0xCu);
          v40 = v57;
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x266789690](v40, -1, -1);
          OUTLINED_FUNCTION_2_40();
        }

        else
        {

          (*(v34 + 8))(v32, v22);
        }

        sub_26655358C(v67, &v63);
        sub_26655358C((v3 + 15), &v64[1] + 8);
        v65 = 1024;
        v66 = 2;
        __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
        sub_2666478BC(&v63);
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        sub_26658FD2C(&v63);
        v41 = v67;
        goto LABEL_26;
      case 5:
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v45 = sub_26666C168();
        __swift_project_value_buffer(v45, qword_28156D7E8);
        v46 = v59;
        v47 = *(v59 + 16);
        v48 = v57;
        v47(v57, v21, v22);
        v49 = sub_26666C148();
        v50 = sub_26666C608();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          swift_slowAlloc();
          OUTLINED_FUNCTION_4_41();
          *&v63 = v52;
          *v51 = 136315138;
          v53 = OUTLINED_FUNCTION_5_31();
          v47(v53, v48, v22);
          sub_26666C318();
          (*(v46 + 8))(v48, v22);
          v54 = OUTLINED_FUNCTION_7_28();

          *(v51 + 4) = v54;
          _os_log_impl(&dword_266549000, v49, v50, "[CalendarFlowProvider] Unexpected cancel task from %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          OUTLINED_FUNCTION_2_40();
          MEMORY[0x266789690](v51, -1, -1);
        }

        else
        {

          (*(v46 + 8))(v48, v22);
        }

        OUTLINED_FUNCTION_6_26();
        sub_266669598();
        goto LABEL_27;
      default:
        OUTLINED_FUNCTION_1_45();
        sub_2665FB818(&v63);
LABEL_18:
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        v41 = &v63;
LABEL_26:
        __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_27:
        sub_266553988(&v70);
        break;
    }
  }

  sub_26666C628();
  sub_26666C078();
  return sub_26657F610(v17, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t sub_26664778C(uint64_t a1)
{
  sub_26658FCF4(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  sub_266669368();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA6C4(v4[82]);
  sub_26658FD2C(v4);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26666EED0;
  sub_266669338();
  sub_2665C2D6C(v2);
  return v1;
}

uint64_t sub_2666478BC(uint64_t a1)
{
  v8[3] = &type metadata for OpenCalendarViewToFindEventsWrapper;
  v8[4] = &off_287807EC8;
  v8[0] = swift_allocObject();
  sub_26658FCF4(a1, v8[0] + 16);
  type metadata accessor for RootFlow();
  v2 = sub_26664778C(v8[0] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26666E050;
  *(v3 + 32) = sub_2665FB860();
  sub_26655358C(v8, v7);
  v4 = swift_allocObject();
  sub_26654B7D8(v7, v4 + 16);
  *&v7[0] = sub_2665E587C(v2, v3, &unk_2666778E0, v4);
  sub_266647A18();
  v5 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_266647A18()
{
  result = qword_28156C2E8[0];
  if (!qword_28156C2E8[0])
  {
    type metadata accessor for RootFlow();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156C2E8);
  }

  return result;
}

void OUTLINED_FUNCTION_2_40()
{

  JUMPOUT(0x266789690);
}

unint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_2665BFC90(v0, v1, (v2 - 320));
}

uint64_t sub_266647B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v77 = a2;
  v78 = a1;
  v83 = sub_26666B668();
  OUTLINED_FUNCTION_3_0();
  v74 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v73 = v10 - v9;
  v11 = sub_266668EB8();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_1_0();
  v70 = v13 - v12;
  sub_266668D98();
  OUTLINED_FUNCTION_3_0();
  v71 = v15;
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_10();
  v69 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v82 = &v63[-v19];
  MEMORY[0x28223BE20](v18);
  v81 = &v63[-v20];
  v21 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_10();
  v67 = v32;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v63[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v63[-v37];
  sub_266668E58();
  v75 = v4;
  v76 = a4;
  sub_266648094(a4, v6, v27, v38);
  v39 = *(v23 + 8);
  v68 = v27;
  v39(v27, v21);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v40 = sub_26666C168();
  __swift_project_value_buffer(v40, qword_28156D7E8);
  v65 = *(v30 + 16);
  v66 = v30 + 16;
  v65(v36, v38, v28);
  v41 = sub_26666C148();
  v42 = sub_26666C618();
  v43 = os_log_type_enabled(v41, v42);
  v79 = v28;
  v80 = v38;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = v28;
    v46 = swift_slowAlloc();
    v84 = v46;
    *v44 = 136315138;
    v47 = sub_266668D28();
    v49 = v48;
    v50 = OUTLINED_FUNCTION_1_46();
    v64 = v51;
    v51(v50, v45);
    v52 = sub_2665BFC90(v47, v49, &v84);

    *(v44 + 4) = v52;
    _os_log_impl(&dword_266549000, v41, v42, "[DateTimeResolutionContext] Date Hint: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x266789690](v46, -1, -1);
    MEMORY[0x266789690](v44, -1, -1);
  }

  else
  {

    v53 = OUTLINED_FUNCTION_1_46();
    v64 = v54;
    v54(v53, v28);
  }

  v56 = v71;
  v55 = v72;
  v57 = *(v71 + 16);
  v58 = v78;
  v57(v81, v78, v72);
  v57(v82, v58, v55);
  v57(v69, v58, v55);
  sub_266668EA8();
  v59 = v74;
  v60 = v77;
  (*(v74 + 16))(v73, v77, v83);
  sub_266668E58();
  v65(v67, v80, v79);
  v61 = sub_26666B678();
  sub_266574608(v76);
  (*(v59 + 8))(v60, v83);
  (*(v56 + 8))(v58, v55);
  v64(v80, v79);
  return v61;
}

uint64_t sub_266648094@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v67 = a2;
  v6 = sub_266668DF8();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_266668E08();
  v63 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266668DC8();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266668D38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v25 = sub_26666C168();
  v26 = __swift_project_value_buffer(v25, qword_28156D7E8);
  sub_26655E020(a1, v24);
  v75 = v26;
  v27 = sub_26666C148();
  v28 = sub_26666C618();
  v29 = os_log_type_enabled(v27, v28);
  v76 = v11;
  if (v29)
  {
    v60 = a1;
    v72 = v12;
    v73 = a4;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v78 = v31;
    *v30 = 136446210;
    sub_26655E020(v24, v22);
    if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
    {
      sub_266574608(v22);
      v32 = 0xE500000000000000;
      v33 = 0x3E6C696E3CLL;
    }

    else
    {
      v33 = sub_266668D28();
      v32 = v34;
      (*(v72 + 8))(v22, v11);
    }

    sub_266574608(v24);
    v35 = sub_2665BFC90(v33, v32, &v78);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_266549000, v27, v28, "[DateTimeResolutionContext] Getting adjusted date hint from date hint: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x266789690](v31, -1, -1);
    MEMORY[0x266789690](v30, -1, -1);

    v12 = v72;
    a4 = v73;
    v11 = v76;
    a1 = v60;
  }

  else
  {

    sub_266574608(v24);
  }

  sub_26655E020(a1, v19);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v11);
  v37 = v77;
  if (EnumTagSinglePayload == 1)
  {
    sub_266574608(v19);
    v38 = sub_26666C148();
    v39 = sub_26666C618();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266549000, v38, v39, "[DateTimeResolutionContext] Date hint was not provided, using .now", v40, 2u);
      MEMORY[0x266789690](v40, -1, -1);
    }

    return sub_266668CF8();
  }

  v42 = *(v12 + 32);
  v42(v77, v19, v11);
  v43 = sub_26666C148();
  v44 = sub_26666C618();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_266549000, v43, v44, "[DateTimeResolutionContext] Using provided date hint", v45, 2u);
    MEMORY[0x266789690](v45, -1, -1);
  }

  v46 = sub_266668DB8();
  v47 = sub_26666C148();
  v48 = sub_26666C618();
  v49 = os_log_type_enabled(v47, v48);
  if (v46)
  {
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "[DateTimeResolutionContext] provided hint is on the same day as .now, using .now instead";
LABEL_26:
      _os_log_impl(&dword_266549000, v47, v48, v51, v50, 2u);
      MEMORY[0x266789690](v50, -1, -1);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if ((v67 & 1) == 0)
  {
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "[DateTimeResolutionContext] Using .now hint due to modifyingTimeOnly being false and provided hint is not today";
      goto LABEL_26;
    }

LABEL_27:

    sub_266668CF8();
    return (*(v12 + 8))(v37, v76);
  }

  v75 = v42;
  v73 = a4;
  if (v49)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_266549000, v47, v48, "[DateTimeResolutionContext] Using provided hint set to 00:00", v52, 2u);
    MEMORY[0x266789690](v52, -1, -1);
  }

  (*(v69 + 104))(v68, *MEMORY[0x277CC9878], v70);
  v54 = v62;
  v53 = v63;
  (*(v63 + 104))(v62, *MEMORY[0x277CC9900], v71);
  v56 = v64;
  v55 = v65;
  v57 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x277CC98E8], v66);
  v58 = v61;
  sub_266668E38();
  (*(v55 + 8))(v56, v57);
  (*(v53 + 8))(v54, v71);
  (*(v69 + 8))(v68, v70);
  v59 = v76;
  if (__swift_getEnumTagSinglePayload(v58, 1, v76) == 1)
  {
    sub_266668CF8();
    (*(v12 + 8))(v77, v59);
    result = __swift_getEnumTagSinglePayload(v58, 1, v59);
    if (result != 1)
    {
      return sub_266574608(v58);
    }
  }

  else
  {
    (*(v12 + 8))(v77, v59);
    return v75(v73, v58, v59);
  }

  return result;
}

uint64_t type metadata accessor for UpdateEventUSOIntentWrapper(uint64_t a1)
{
  result = qword_28156C988;
  if (!qword_28156C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666489CC(uint64_t a1)
{
  sub_26655EC10(319, qword_28156CF58, &protocol descriptor for CalendarDateTimeResolving);
  if (v1 <= 0x3F)
  {
    sub_26655EC10(319, &qword_28156CF50, &protocol descriptor for CalendarReferenceResolving);
    if (v2 <= 0x3F)
    {
      sub_26655EC10(319, qword_28156CB10, &protocol descriptor for ContactResolving);
      if (v3 <= 0x3F)
      {
        sub_266668D98();
        if (v4 <= 0x3F)
        {
          sub_266648AF0(319);
          if (v5 <= 0x3F)
          {
            sub_26655EC10(319, &qword_28156CA38, &protocol descriptor for FindEventsIntentWrapping);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_266648AF0(uint64_t a1)
{
  if (!qword_28156D138)
  {
    sub_26666ADF8();
    v1 = sub_26666C6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_28156D138);
    }
  }
}

uint64_t sub_266648B48()
{
  v1 = v0;
  updated = type metadata accessor for UpdateEventUSOIntentWrapper(0);
  v3 = *(v0 + *(updated + 32));
  if (!v3 || (sub_26666ABF8(), !v17) || (v4 = sub_2665C530C(), , v4 == 2))
  {
    v5 = (v1 + *(updated + 36));
    v7 = v5[3];
    v6 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v7);
    v8 = (*(*(v6 + 8) + 8))(v7);
    if (v8 == 2)
    {
      if (v3)
      {
        sub_26666ABF8();
        v9 = v17;
      }

      else
      {
        v9 = 0;
      }

      v10 = sub_2665C8264(v9);

      if (*(v10 + 16) && (sub_26666CB88(), sub_26666C368(), v11 = sub_26666CBC8(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (2)
        {
          switch(*(*(v10 + 48) + v13))
          {
            case 3:

              v4 = 0;
              break;
            default:
              v15 = sub_26666CAC8();

              if ((v15 & 1) == 0)
              {
                v13 = (v13 + 1) & v14;
                if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
                {
                  continue;
                }

                goto LABEL_15;
              }

              v4 = 0;
              break;
          }

          break;
        }
      }

      else
      {
LABEL_15:
        v4 = 2;
      }
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

uint64_t sub_266648E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a1;
  v6[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266648EB8, 0, 0);
}

uint64_t sub_266648EB8()
{
  v1 = v0[15];
  v2 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[19] = v2;
  if (v1)
  {
    v1 = sub_26666C2F8();
  }

  v3 = v0[17];
  [v2 setTargetEventIdentifier_];

  updated = type metadata accessor for UpdateEventUSOIntentWrapper(0);
  v5 = *(v3 + *(updated + 32));
  v0[20] = v5;
  if (v5 && (v6 = updated, sub_26666ABF8(), (v7 = v0[13]) != 0))
  {
    v8 = __swift_project_boxed_opaque_existential_1((v0[17] + 40), *(v0[17] + 64));
    v0[21] = sub_266640D2C(v7, *v8, 0);

    v9 = sub_26666AA08();
    v11 = v10;
    if (v10)
    {
      sub_2666683AC(v0[17] + *(v6 + 28), v9, v10);

      v11 = sub_26666C2F8();
    }

    v12 = v0[17];
    [v2 setSetTitle_];

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v0[22] = sub_26666A9E8();
    if (qword_28007CDB0 != -1)
    {
      swift_once();
    }

    v13 = sub_26666B628();
    __swift_project_value_buffer(v13, qword_2800956E0);
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_266649240;

    return sub_2665C798C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[UpdateEventUSOIntentWrapper] USO Parse does not contain a target, returning intent without parameters", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    if (v5)
    {
      sub_26666ABF8();
      v20 = v0[12];
    }

    else
    {
      v20 = 0;
    }

    v21 = v0[19];
    v22 = sub_2665C8264(v20);

    sub_2665C8E14(v21, v22);

    v23 = OUTLINED_FUNCTION_1_47();

    return v24(v23);
  }
}

uint64_t sub_266649240(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_266649360, 0, 0);
}

uint64_t sub_266649360()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  [v4 setSetDateTimeRange_];

  v6 = sub_2665D9924(v2);
  [v4 setSetLocation_];

  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  sub_26666A9D8();
  v7 = *MEMORY[0x277D5E478];
  v8 = sub_26666A258();
  v24 = *(*(v8 - 8) + 104);
  v24(v3, v7, v8);
  OUTLINED_FUNCTION_2_41();
  v9 = sub_26655358C(v5 + 40, v0 + 16);
  v11 = OUTLINED_FUNCTION_0_44(v9, v10, v0 + 16);

  sub_266557D74(v0 + 16, &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v3, &qword_28007D3F0, &unk_26666F120);
  if (v11)
  {
    sub_2665C18BC();
    v12 = sub_26666C488();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  [*(v0 + 152) setAddParticipants_];

  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  sub_26666A9D8();
  v24(v13, *MEMORY[0x277D5E470], v8);
  OUTLINED_FUNCTION_2_41();
  v15 = sub_26655358C(v14 + 40, v0 + 56);
  v17 = OUTLINED_FUNCTION_0_44(v15, v16, v0 + 56);

  sub_266557D74(v0 + 56, &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v13, &qword_28007D3F0, &unk_26666F120);
  if (v17)
  {
    sub_2665C18BC();
    v18 = sub_26666C488();
  }

  else
  {
    v18 = 0;
  }

  [*(v0 + 152) setRemoveParticipants_];

  sub_26666ABF8();
  v19 = *(v0 + 152);
  v20 = sub_2665C8264(*(v0 + 96));

  sub_2665C8E14(v19, v20);

  v21 = OUTLINED_FUNCTION_1_47();

  return v22(v21);
}

uint64_t sub_266649688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2665CA5A4;

  return sub_266648E18(a1, a2, 0, 0, a5);
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26663B210(v6, v3, a3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

_BYTE *storeEnumTagSinglePayload for UpdateEvent.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t (*sub_266649918(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v32 = a3;
  v36 = a2;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  v19 = OUTLINED_FUNCTION_3_1(v18);
  v31 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v30 - v23;
  sub_26664DAA4(v32, &v30 - v23, &qword_28007EF70, &unk_266677650);
  (*(v12 + 16))(v17, v33, v10);
  sub_26664DAA4(v34, v9, &qword_28007EF78, &qword_26667B710);
  sub_26664DAA4(v36, __src, &qword_28007EFA8, &qword_266677670);
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = (v22 + *(v12 + 80) + v25) & ~*(v12 + 80);
  v27 = (v14 + *(v35 + 80) + v26) & ~*(v35 + 80);
  v28 = swift_allocObject();
  sub_26664E170(v24, v28 + v25, &qword_28007EF70, &unk_266677650);
  (*(v12 + 32))(v28 + v26, v17, v10);
  sub_26664E170(v9, v28 + v27, &qword_28007EF78, &qword_26667B710);
  memcpy((v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0xD0uLL);
  return sub_26664DAF4;
}

uint64_t (*sub_266649C4C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v23 = a3;
  v27 = a2;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  sub_26664DAA4(v23, &v21 - v14, &qword_28007FD38, &qword_26667B6B0);
  (*(v8 + 16))(v11, v24, v7);
  sub_26664DAA4(v25, v6, &qword_28007FD40, &qword_26667B6B8);
  sub_26664DAA4(v27, __src, &qword_28007FD70, &qword_26667B6D0);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + *(v26 + 80) + v17) & ~*(v26 + 80);
  v19 = swift_allocObject();
  sub_26664E170(v15, v19 + v16, &qword_28007FD38, &qword_26667B6B0);
  (*(v8 + 32))(v19 + v17, v11, v7);
  sub_26664E170(v6, v19 + v18, &qword_28007FD40, &qword_26667B6B8);
  memcpy((v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0xD0uLL);
  return sub_26664D7A4;
}

uint64_t sub_266649F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_1();
  v5 = sub_26658D62C(v4);
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v6 = sub_26666C168();
      __swift_project_value_buffer(v6, qword_28156D7E8);
      v7 = sub_26666C148();
      v8 = sub_26666C618();
      if (OUTLINED_FUNCTION_4_11(v8))
      {
        v9 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_44_0(v9);
        OUTLINED_FUNCTION_21_6(&dword_266549000, v10, v11, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_9_5();
      }

      sub_26664E028();
      sub_266669428();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v18 = sub_26666C168();
      __swift_project_value_buffer(v18, qword_28156D7E8);
      v19 = sub_26666C148();
      v20 = sub_26666C618();
      if (OUTLINED_FUNCTION_4_11(v20))
      {
        v21 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_44_0(v21);
        OUTLINED_FUNCTION_21_6(&dword_266549000, v22, v23, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_9_5();
      }

      sub_26664E028();
      sub_266669408();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v12 = sub_26666C168();
    __swift_project_value_buffer(v12, qword_28156D7E8);
    v13 = sub_26666C148();
    v14 = sub_26666C618();
    if (OUTLINED_FUNCTION_4_11(v14))
    {
      v15 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v15);
      OUTLINED_FUNCTION_21_6(&dword_266549000, v16, v17, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_9_5();
    }

    sub_26664E028();
    sub_266669418();
  }

  OUTLINED_FUNCTION_28_10();
  v24 = OUTLINED_FUNCTION_45();
  v25(v24);
  OUTLINED_FUNCTION_33_10();
  return v3;
}

uint64_t sub_26664A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26656F9AC();
  if (v5)
  {
    if (v5)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v6 = sub_26666C168();
      __swift_project_value_buffer(v6, qword_28156D7E8);
      v7 = sub_26666C148();
      v8 = sub_26666C618();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266549000, v7, v8, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.", v9, 2u);
        MEMORY[0x266789690](v9, -1, -1);
      }

      sub_26664DA50();
      v10 = sub_266669428();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v15 = sub_26666C168();
      __swift_project_value_buffer(v15, qword_28156D7E8);
      v16 = sub_26666C148();
      v17 = sub_26666C618();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_266549000, v16, v17, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.", v18, 2u);
        MEMORY[0x266789690](v18, -1, -1);
      }

      sub_26664DA50();
      v10 = sub_266669408();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v11 = sub_26666C168();
    __swift_project_value_buffer(v11, qword_28156D7E8);
    v12 = sub_26666C148();
    v13 = sub_26666C618();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266549000, v12, v13, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.", v14, 2u);
      MEMORY[0x266789690](v14, -1, -1);
    }

    sub_26664DA50();
    v10 = sub_266669418();
  }

  v19 = v10(a1, a2);

  return v19;
}

uint64_t sub_26664A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_1();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v4 = sub_26666C168();
  __swift_project_value_buffer(v4, qword_28156D7E8);
  v5 = sub_26666C148();
  v6 = sub_26666C618();
  if (OUTLINED_FUNCTION_4_11(v6))
  {
    v7 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_44_0(v7);
    OUTLINED_FUNCTION_21_6(&dword_266549000, v8, v9, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
    OUTLINED_FUNCTION_9_5();
  }

  sub_26664E07C();
  sub_266669418();
  OUTLINED_FUNCTION_28_10();
  v10 = OUTLINED_FUNCTION_45();
  v11(v10);
  OUTLINED_FUNCTION_33_10();
  return v3;
}

uint64_t sub_26664A540()
{
  OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  swift_storeEnumTagMultiPayload();
  *(v1 + 16) = v2;
  v5 = *(v0 + 16);
  *(v1 + 24) = *v0;
  *(v1 + 40) = v5;
  *(v1 + 56) = *(v0 + 32);
  return v1;
}

void *sub_26664A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v7 = *(*v6 + 120);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 4, v8);
  return v6;
}

uint64_t sub_26664A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v8 = sub_266669AE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v12 = sub_266669AD8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = v12 == 0x7069636974726170 && v14 == 0xEC00000073746E61;
  if (v15 || (sub_26666CAC8() & 1) != 0 || (v12 == 0x6974726150646461 ? (v16 = v14 == 0xEF73746E61706963) : (v16 = 0), v16))
  {
  }

  else
  {
    v17 = sub_26666CAC8();

    if ((v17 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v18 = sub_26666C168();
      __swift_project_value_buffer(v18, qword_28156D7E8);
      v19 = sub_26666C148();
      v20 = sub_26666C618();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266549000, v19, v20, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using event conflict schedule or change confirmation strategy", v21, 2u);
        MEMORY[0x266789690](v21, -1, -1);
      }

      return sub_26664AD70(a1, a2, v29, v30);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  sub_26655369C(&qword_28007FDE8, &qword_28007EF70, &unk_266677650, &unk_266677368);
  v23 = sub_2666693D8();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v24 = sub_26666C168();
  __swift_project_value_buffer(v24, qword_28156D7E8);
  v25 = sub_26666C148();
  v26 = sub_26666C618();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_266549000, v25, v26, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using participant confirmation strategy", v27, 2u);
    MEMORY[0x266789690](v27, -1, -1);
  }

  v22 = v23(a1, a2);

  return v22;
}

uint64_t sub_26664A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v8 = sub_266669AE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v12 = sub_266669AD8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = v12 == 0x7069636974726170 && v14 == 0xEC00000073746E61;
  if (v15 || (sub_26666CAC8() & 1) != 0 || (v12 == 0x6974726150646461 ? (v16 = v14 == 0xEF73746E61706963) : (v16 = 0), v16))
  {
  }

  else
  {
    v17 = sub_26666CAC8();

    if ((v17 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v18 = sub_26666C168();
      __swift_project_value_buffer(v18, qword_28156D7E8);
      v19 = sub_26666C148();
      v20 = sub_26666C618();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266549000, v19, v20, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using event conflict schedule or change confirmation strategy", v21, 2u);
        MEMORY[0x266789690](v21, -1, -1);
      }

      return sub_26664B13C(a1, a2, v29, v30);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  sub_26655369C(&qword_28007FDB0, &qword_28007FD38, &qword_26667B6B0, &unk_266677368);
  v23 = sub_2666693D8();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v24 = sub_26666C168();
  __swift_project_value_buffer(v24, qword_28156D7E8);
  v25 = sub_26666C148();
  v26 = sub_26666C618();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_266549000, v25, v26, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using participant confirmation strategy", v27, 2u);
    MEMORY[0x266789690](v27, -1, -1);
  }

  v22 = v23(a1, a2);

  return v22;
}

uint64_t sub_26664AD70(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v28 = a4;
  v26 = a3;
  v25 = a2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v24[0] = v5;
  v6 = *(v5 - 8);
  v24[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v24 - v12;
  sub_26664DAA4(v26, v24 - v12, &qword_28007EF78, &qword_26667B710);
  v26 = *(v6 + 16);
  v26(v8, a2, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v6 + 80);
  v24[2] = v16 | 7;
  v17 = swift_allocObject();
  sub_26664E170(v13, v17 + v14, &qword_28007EF78, &qword_26667B710);
  v18 = v27;
  *(v17 + v15) = v27;
  v19 = *(v6 + 32);
  v20 = v24[0];
  v19(v17 + ((v16 + v15 + 8) & ~v16), v8, v24[0]);
  sub_26664DAA4(v28, __src, &qword_28007EFA8, &qword_266677670);
  v26(v8, v25, v20);
  v21 = swift_allocObject();
  memcpy((v21 + 16), __src, 0xD0uLL);
  *(v21 + 224) = v18;
  v19(v21 + ((v16 + 232) & ~v16), v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FDF0, &qword_26667B718);
  swift_allocObject();
  __src[0] = sub_26664A5B4(sub_26664DDEC, v17, sub_26664DFAC, v21, &qword_28007FE00, &qword_26667B720);
  sub_26655369C(&qword_28007FDF8, &qword_28007FDF0, &qword_26667B718, &unk_266676180);
  swift_retain_n();
  v22 = sub_266669538();

  return v22;
}

uint64_t sub_26664B13C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v28 = a4;
  v26 = a3;
  v25 = a2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  v24[0] = v5;
  v6 = *(v5 - 8);
  v24[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v24 - v12;
  sub_26664DAA4(v26, v24 - v12, &qword_28007FD40, &qword_26667B6B8);
  v26 = *(v6 + 16);
  v26(v8, a2, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v6 + 80);
  v24[2] = v16 | 7;
  v17 = swift_allocObject();
  sub_26664E170(v13, v17 + v14, &qword_28007FD40, &qword_26667B6B8);
  v18 = v27;
  *(v17 + v15) = v27;
  v19 = *(v6 + 32);
  v20 = v24[0];
  v19(v17 + ((v16 + v15 + 8) & ~v16), v8, v24[0]);
  sub_26664DAA4(v28, __src, &qword_28007FD70, &qword_26667B6D0);
  v26(v8, v25, v20);
  v21 = swift_allocObject();
  memcpy((v21 + 16), __src, 0xD0uLL);
  *(v21 + 224) = v18;
  v19(v21 + ((v16 + 232) & ~v16), v8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FDB8, &qword_26667B700);
  swift_allocObject();
  __src[0] = sub_26664A5B4(sub_26664D8F8, v17, sub_26664D9D4, v21, &qword_28007FDC8, &qword_26667B708);
  sub_26655369C(&qword_28007FDC0, &qword_28007FDB8, &qword_26667B700, &unk_266676180);
  swift_retain_n();
  v22 = sub_266669538();

  return v22;
}

uint64_t sub_26664B508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_12_24(a1, a2, a3, a4, a5);
  v9 = OUTLINED_FUNCTION_15_2();
  sub_26655369C(v9, v10, v6, v11);
  sub_2666693D8();
  OUTLINED_FUNCTION_28_10();
  v12(v8, v7);
  OUTLINED_FUNCTION_33_10();
  return v5;
}

uint64_t sub_26664B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_12_24(a1, a2, a3, a4, a5);
  v9 = OUTLINED_FUNCTION_15_2();
  sub_26655369C(v9, v10, v6, v11);
  sub_2666693D8();
  OUTLINED_FUNCTION_28_10();
  v12(v8, v7);
  OUTLINED_FUNCTION_33_10();
  return v5;
}

unint64_t sub_26664B618(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26664B664(char a1)
{
  result = 0x656C746954746573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461636F4C746573;
      break;
    case 4:
      result = 0x6974726150646461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_26664B764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a1, a2);
  sub_26664D748(a5, v11);
  v6 = OUTLINED_FUNCTION_15_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7(v8);
  v11[0] = sub_26664A540();
  sub_26655369C(&qword_28007FE20, &qword_28007FE18, &qword_26667B728, &unk_266675328);
  v9 = sub_266669538();

  return v9;
}

uint64_t sub_26664B84C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a1, a2);
  sub_26664D748(a5, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD98, &qword_26667B6E8);
  swift_allocObject();
  v8[0] = sub_26664A540();
  sub_26655369C(&qword_28007FDA0, &qword_28007FD98, &qword_26667B6E8, &unk_266675328);
  v6 = sub_266669538();

  return v6;
}

uint64_t sub_26664B940(void *a1)
{
  v2 = sub_26666BE18();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for EventDisambiguationStrategy();
  v4 = sub_2665698CC(0);
  sub_266669B78();
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v14, v5, v6);
  sub_26655358C(a1, v15);
  v7 = swift_allocObject();
  sub_26654B7D8(v15, v7 + 16);
  v16[2] = &unk_26667B740;
  v16[3] = v7;
  v8 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v8);

  v9 = sub_2666699E8();
  v16[9] = v8;
  v16[10] = MEMORY[0x277D5BD58];
  v16[6] = v9;
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  v16[11] = sub_26666BDD8();
  sub_266669E68();
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_28156CD28);
  }

  v10 = qword_28156D828;
  v16[20] = type metadata accessor for EventProvider();
  v16[21] = &off_287806290;
  v16[17] = v10;
  v11 = swift_allocObject();
  sub_26654B7D8(v14, v11 + 16);
  *(v11 + 56) = 1;
  v16[0] = &unk_26666DEA0;
  v16[1] = v11;
  v16[4] = &unk_26666DEB0;
  v16[5] = v4;
  sub_266553530(v16, v14);
  sub_26655358C(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D060, &qword_26666DEB8);
  swift_allocObject();
  *&v14[0] = sub_266552824(v14, v15);
  sub_26655369C(&qword_28007D068, &qword_28007D060, &qword_26666DEB8, &unk_26666F918);

  v12 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_2665535F0(v16);
  return v12;
}

uint64_t sub_26664BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26664BCCC, 0, 0);
}

uint64_t sub_26664BCCC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2665EF53C(v2);
  v5 = v4;
  v6 = v1[3];
  v0[7] = v6;
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  OUTLINED_FUNCTION_30_12();
  v9 = v8;
  v0[8] = v8;
  v10 = OUTLINED_FUNCTION_19();
  v0[9] = v10;
  (*(v9 + 16))();
  v11 = [v2 dateTimeRange];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 startDate];

    if (v13)
    {
      sub_266668CE8();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v18 = v0[5];
    v17 = v0[6];
    v19 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v18, v14, 1, v19);
    sub_26664E170(v18, v17, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    v15 = v0[6];
    v16 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  }

  v0[10] = v5;
  if (!v5)
  {
    v5 = 0xE000000000000000;
    v3 = 0;
  }

  v20 = swift_task_alloc();
  v0[11] = v20;
  v21 = *(v7 + 8);
  *v20 = v0;
  v20[1] = sub_26664BF04;
  v22 = v0[6];
  v23 = v0[3];

  return sub_26664C480(v3, v5, v23, v10, v22, v6, v21);
}

uint64_t sub_26664BF04()
{
  v1 = *(*v0 + 48);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  sub_26656CAEC(v1, &qword_28007D140, &qword_26666F140);
  v4 = OUTLINED_FUNCTION_15_2();
  v5(v4);

  v6 = OUTLINED_FUNCTION_1_10();

  return v7(v6);
}

unint64_t sub_26664C0FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26664B618(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26664C12C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26664B664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26664C15C()
{
  result = qword_28007FD28;
  if (!qword_28007FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD28);
  }

  return result;
}

id sub_26664C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v25 = a3;
  v6 = type metadata accessor for EventProvider();
  v33[3] = v6;
  v33[4] = &off_287806290;
  v33[0] = a1;
  v31 = &type metadata for AceUserLocationProvider;
  v32 = &off_28780A9C8;
  v7 = swift_allocObject();
  v30[0] = v7;
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 32);
  v9 = _s13IntentHandlerCMa_0();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v33, v6);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = *v13;
  v29[3] = v6;
  v29[4] = &off_287806290;
  v28[4] = &off_28780A9C8;
  v29[0] = v19;
  v28[3] = &type metadata for AceUserLocationProvider;
  v20 = swift_allocObject();
  v28[0] = v20;
  v21 = *(v17 + 1);
  *(v20 + 16) = *v17;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v17 + 4);
  sub_26655358C(v29, &v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider]);
  sub_26655358C(v28, &v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider]);
  *&v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_commonCats] = v25;
  *&v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate] = v26;
  v27.receiver = v10;
  v27.super_class = v9;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v22;
}

uint64_t sub_26664C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[191] = a7;
  v7[190] = a6;
  v7[189] = a5;
  v7[188] = a3;
  v7[187] = a2;
  v7[186] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD30, &qword_26667B6A8);
  v7[192] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v7[193] = v9;
  v7[194] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  v7[195] = v10;
  OUTLINED_FUNCTION_3_3(v10);
  v7[196] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v7[197] = v11;
  OUTLINED_FUNCTION_3_3(v11);
  v7[198] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  v7[199] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v7[200] = v13;
  v7[201] = swift_task_alloc();
  v7[202] = swift_task_alloc();
  v14 = type metadata accessor for TaskParser(0);
  v7[203] = v14;
  OUTLINED_FUNCTION_3_3(v14);
  v7[204] = OUTLINED_FUNCTION_19();
  v15 = sub_26666BE18();
  OUTLINED_FUNCTION_3_3(v15);
  v7[205] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_30_12();
  v17 = v16;
  v7[206] = v16;
  v7[207] = OUTLINED_FUNCTION_19();
  (*(v17 + 16))();

  return MEMORY[0x2822009F8](sub_26664C6CC, 0, 0);
}

uint64_t sub_26664C6CC(uint64_t a1)
{
  v2 = v1[204];
  v3 = v1[203];
  v4 = v1[187];
  sub_266669638();
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  v1[208] = sub_26666BDD8();
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v1 + 126, v1[129]);
  sub_266669648();
  v5 = (v2 + v3[5]);
  v5[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v5[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  v7 = swift_allocObject();
  *boxed_opaque_existential_1 = v7;
  sub_2665524C0((v1 + 121), v7 + 16);
  sub_266668D88();
  sub_26666B548();
  v8 = (v2 + v3[6]);
  v9 = type metadata accessor for CalendarContactResolver(0);
  v8[3] = v9;
  v8[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v8) + *(v9 + 20)) = 0;
  sub_26666B338();
  v1[209] = sub_26666C068();
  v10 = sub_26666C058();
  v11 = (v2 + v3[7]);
  v11[3] = &type metadata for CalendarReferenceResolver;
  v11[4] = &off_28780BAC8;
  *v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v1 + 126);
  v12 = swift_task_alloc();
  v1[210] = v12;
  *v12 = v1;
  v12[1] = sub_26664C8E8;
  v13 = v1[191];
  v14 = v1[190];
  v15 = v1[189];
  v16 = v1[186];

  return sub_2665CA6A8(v16, v4, v15, v14, v13);
}

uint64_t sub_26664C8E8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v6[181] = v2;
  v6[182] = a1;
  v6[183] = a2;
  v3 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_26664C9E8, 0, 0);
}

uint64_t sub_26664C9E8()
{
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_28156CD28);
  }

  v44 = *(v0 + 1456);
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1664);
  v48 = *(v0 + 1648);
  v49 = *(v0 + 1656);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v52 = *(v0 + 1608);
  v41 = *(v0 + 1600);
  v53 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  v54 = *(v0 + 1568);
  v42 = *(v0 + 1552);
  v43 = *(v0 + 1536);
  v46 = *(v0 + 1544);
  v47 = *(v0 + 1520);
  v38 = *(v0 + 1504);
  v7 = qword_28156D828;
  sub_2665524C0(v0 + 968, v0 + 1048);
  swift_retain_n();

  v8 = sub_26664C1B0(v7, v0 + 1048, v2, v1);
  *(v0 + 896) = v4;
  *(v0 + 904) = &off_287808308;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 872));
  v45 = v3;
  sub_266552BE0(v3, boxed_opaque_existential_1);
  *(v0 + 912) = v8;
  *(v0 + 1112) = &type metadata for EventRecurrencePromptParser;
  *(v0 + 1120) = &off_2878095D0;
  *(v0 + 1152) = v4;
  *(v0 + 1160) = &off_287808308;
  v10 = __swift_allocate_boxed_opaque_existential_1((v0 + 1128));
  sub_266552BE0(v3, v10);
  v39 = v8;
  sub_266669E68();
  *(v0 + 1232) = type metadata accessor for EventProvider();
  *(v0 + 1240) = &off_287806290;
  *(v0 + 1208) = v7;
  type metadata accessor for UpdateEventCATsSimple(0);
  sub_26666BE08();
  v11 = sub_26666BDD8();
  v12 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v12);

  v13 = sub_2666699E8();
  *(v0 + 1272) = v12;
  *(v0 + 1280) = MEMORY[0x277D5BD58];
  *(v0 + 1248) = v13;
  sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
  sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
  sub_2666694A8();
  sub_26666BE38();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v0 + 1248, v0 + 464);
  sub_26655358C(v0 + 1208, v0 + 512);
  sub_26655358C(v0 + 1168, v0 + 552);
  v50 = v11;
  *(v0 + 448) = v11;
  *(v0 + 456) = v2;
  *(v0 + 504) = v38;
  sub_26664D430(v0 + 448, v0 + 592);
  v14 = swift_allocObject();
  memcpy((v14 + 16), (v0 + 592), 0x90uLL);

  v15 = v38;
  sub_266669478();
  sub_26655358C(v0 + 1128, v0 + 1288);
  v6[3] = &unk_287806408;
  v6[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v16 = swift_allocObject();
  *v6 = v16;
  sub_266552D2C(v0 + 1288, v16 + 16);
  sub_26655358C(v0 + 1208, (v6 + 5));
  sub_26655358C(v0 + 1168, (v6 + 10));
  sub_26655358C(v0 + 1248, (v6 + 15));
  v6[24] = &type metadata for SiriCalendarFeatureManager;
  v6[25] = &protocol witness table for SiriCalendarFeatureManager;
  v6[20] = v2;

  v51 = v6;
  sub_266669A78();
  *(v0 + 264) = &unk_287806408;
  *(v0 + 272) = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v17 = swift_allocObject();
  *(v0 + 240) = v17;
  sub_266552D2C(v0 + 1288, v17 + 16);
  sub_26655358C(v0 + 1128, v0 + 280);
  sub_26655358C(v0 + 1208, v0 + 320);
  sub_26655358C(v0 + 1168, v0 + 360);
  sub_26655358C(v0 + 1248, v0 + 400);
  *(v0 + 440) = v2;
  v54[3] = &unk_287806408;
  v54[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v18 = swift_allocObject();
  *v54 = v18;
  sub_266552D2C(v0 + 1288, v18 + 16);
  sub_26655358C(v0 + 1208, (v54 + 5));
  sub_26655358C(v0 + 1168, (v54 + 10));
  sub_26655358C(v0 + 1248, (v54 + 16));
  v54[15] = v2;

  sub_266669A78();
  sub_266649C4C(v6, v0 + 240, v54);
  v19 = v5;
  sub_266669488();
  sub_26655358C(v0 + 1088, v0 + 16);
  sub_26655358C(v0 + 1128, v0 + 56);
  sub_26655358C(v0 + 1208, v0 + 112);
  sub_26655358C(v0 + 1168, v0 + 160);
  sub_26655358C(v0 + 1248, v0 + 200);
  *(v0 + 96) = v39;
  *(v0 + 104) = &off_287808180;
  *(v0 + 152) = v11;
  sub_26655358C(v0 + 1128, v0 + 1328);
  sub_26664D494();
  v40 = v39;

  v20 = sub_266669398();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v24 = *(v0 + 1344);
  *(v23 + 32) = *(v0 + 1328);
  *(v23 + 48) = v24;
  *(v23 + 64) = *(v0 + 1360);
  sub_266669438();
  sub_26666BD78();
  sub_26666BD68();
  v25 = sub_26666BE78();
  OUTLINED_FUNCTION_7(v25);
  OUTLINED_FUNCTION_2_30();
  v26 = sub_26666BE68();
  v27 = sub_26666C058();
  *(v0 + 1392) = &type metadata for CalendarReferenceResolver;
  *(v0 + 1400) = &off_28780BAC8;
  *(v0 + 1368) = v27;
  sub_26655358C(v0 + 1168, v0 + 1408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD58, &qword_26667B6C8);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D56578];
  *(v28 + 48) = v25;
  *(v28 + 56) = v29;
  *(v28 + 24) = v26;
  *(v28 + 88) = &type metadata for DisambiguationResponseParser;
  *(v28 + 96) = &off_287806688;
  v30 = swift_allocObject();
  *(v28 + 64) = v30;
  sub_26656CCE8(v0 + 1368, v30 + 16);
  *(v28 + 144) = 0;
  *(v28 + 152) = 0;
  *(v28 + 160) = 0x80;
  *(v28 + 16) = 1;
  sub_26654B7D8((v0 + 1408), v28 + 104);
  sub_26656CD44(v0 + 1368);
  *(v0 + 1472) = v28;
  sub_26655369C(&qword_28007FD60, &qword_28007FD58, &qword_26667B6C8, &unk_266677178);
  sub_2666693E8();
  sub_266669498();
  sub_26655358C(v0 + 1208, v0 + 744);
  sub_26655358C(v0 + 1168, v0 + 784);
  swift_allocObject();
  v31 = v40;
  v32 = sub_2666699E8();
  *(v0 + 856) = v12;
  *(v0 + 864) = MEMORY[0x277D5BD58];
  *(v0 + 832) = v32;
  *(v0 + 736) = v31;
  *(v0 + 824) = v50;
  sub_26664D4F4();
  sub_2666693B8();
  sub_266669448();

  sub_26664D548(v0 + 16);
  sub_266552F34(v0 + 1288);
  sub_26664D59C(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1168));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1248));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1208));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1088));
  sub_26664D5F0(v0 + 736);
  sub_26656CAEC(v54, &qword_28007FD38, &qword_26667B6B0);
  sub_26656CAEC(v0 + 240, &qword_28007FD70, &qword_26667B6D0);
  sub_26656CAEC(v51, &qword_28007FD40, &qword_26667B6B8);
  sub_26664D644(v0 + 872, v0 + 920);
  (*(v41 + 16))(v52, v19, v53);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD78, &qword_26667B6D8);
  OUTLINED_FUNCTION_7(v33);
  sub_2666694B8();
  sub_26664D6A0();
  sub_266669808();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  v34 = sub_2666697F8();

  *(v0 + 1480) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD88, &qword_26667B6E0);
  sub_26655369C(&qword_28007FD90, &qword_28007FD88, &qword_26667B6E0, MEMORY[0x277D5B820]);
  sub_266669528();

  (*(v46 + 8))(v42, v43);
  (*(v41 + 8))(v19, v53);
  sub_266553184(v0 + 968);

  sub_26664D6F4(v0 + 872);
  sub_266553128(v45);
  (*(v48 + 8))(v49, v47);

  v35 = OUTLINED_FUNCTION_1_10();

  return v36(v35);
}

unint64_t sub_26664D494()
{
  result = qword_28007FD50;
  if (!qword_28007FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD50);
  }

  return result;
}

unint64_t sub_26664D4F4()
{
  result = qword_28007FD68;
  if (!qword_28007FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD68);
  }

  return result;
}

unint64_t sub_26664D6A0()
{
  result = qword_28007FD80;
  if (!qword_28007FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD80);
  }

  return result;
}

uint64_t sub_26664D7A4()
{
  OUTLINED_FUNCTION_48_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  OUTLINED_FUNCTION_3_1(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  OUTLINED_FUNCTION_3_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  OUTLINED_FUNCTION_3_1(v2);
  v3 = OUTLINED_FUNCTION_6_27();

  return sub_26664A9C0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26664D8F8()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_23_15();
  return OUTLINED_FUNCTION_31_10(v4, v5);
}

uint64_t sub_26664D9D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  OUTLINED_FUNCTION_3_3(v1);
  return sub_26664B590(v0 + 16, *(v0 + 224), v0 + ((*(v2 + 80) + 232) & ~*(v2 + 80)), &qword_28007FD70, &qword_26667B6D0);
}

unint64_t sub_26664DA50()
{
  result = qword_28007FDE0;
  if (!qword_28007FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FDE0);
  }

  return result;
}

uint64_t sub_26664DAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_26664DAF4()
{
  OUTLINED_FUNCTION_48_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  OUTLINED_FUNCTION_3_1(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  OUTLINED_FUNCTION_3_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  OUTLINED_FUNCTION_3_1(v2);
  v3 = OUTLINED_FUNCTION_6_27();

  return sub_26664A610(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_24Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = (*(*v7 + 80) + 16) & ~*(*v7 + 80);
  v9 = (*(*v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  v13 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  __swift_destroy_boxed_opaque_existential_1((v4 + v8));
  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 40));
  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 80));
  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 120));

  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 168));
  v14 = v7[19];
  sub_266669A88();
  OUTLINED_FUNCTION_18_2();
  (*(v15 + 8))(v4 + v8 + v14);

  (*(v12 + 8))(v4 + v13, v10);

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_26664DDEC()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_23_15();
  return OUTLINED_FUNCTION_31_10(v4, v5);
}

uint64_t objectdestroy_27Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v6 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  __swift_destroy_boxed_opaque_existential_1(v2 + 22);

  (*(v5 + 8))(&v2[v6], v3);

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_26664DFAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  OUTLINED_FUNCTION_3_3(v1);
  return sub_26664B590(v0 + 16, *(v0 + 224), v0 + ((*(v2 + 80) + 232) & ~*(v2 + 80)), &qword_28007EFA8, &qword_266677670);
}

unint64_t sub_26664E028()
{
  result = qword_28007FE30;
  if (!qword_28007FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE30);
  }

  return result;
}

unint64_t sub_26664E07C()
{
  result = qword_28007FE38;
  if (!qword_28007FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE38);
  }

  return result;
}

uint64_t sub_26664E0D0()
{
  OUTLINED_FUNCTION_48_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266640A48;
  v2 = OUTLINED_FUNCTION_45();

  return sub_26664BC20(v2, v3, v4);
}

uint64_t sub_26664E170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + v1));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1 + 80));
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_1((v10 + a10));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 40));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 80));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 120));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 160));
}

uint64_t OUTLINED_FUNCTION_12_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v2 = (v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  __swift_destroy_boxed_opaque_existential_1(v2 + 10);
  __swift_destroy_boxed_opaque_existential_1(v2 + 15);
}

uint64_t OUTLINED_FUNCTION_31_10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return sub_26664B508(v3 + v5, a1, v3 + a2, v2, v4);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
}

uint64_t Snippet.EventGroup.init(dateHeader:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_266668D38();
  OUTLINED_FUNCTION_18_2();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for Snippet.EventGroup(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for Snippet.EventGroup(uint64_t a1)
{
  result = qword_28156C860;
  if (!qword_28156C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.EventGroup.dateHeader.getter@<X0>(uint64_t a1@<X8>)
{
  sub_266668D38();
  OUTLINED_FUNCTION_18_2();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Snippet.EventGroup.dateHeader.setter()
{
  OUTLINED_FUNCTION_17_7();
  sub_266668D38();
  OUTLINED_FUNCTION_18_2();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Snippet.EventGroup.events.getter()
{
  type metadata accessor for Snippet.EventGroup(0);
}

uint64_t Snippet.EventGroup.events.setter()
{
  v2 = OUTLINED_FUNCTION_17_7();
  v3 = *(type metadata accessor for Snippet.EventGroup(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*Snippet.EventGroup.events.modify())()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.EventGroup(v0);
  return nullsub_1;
}

uint64_t sub_26664E62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6461654865746164 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_26664E6F8(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6461654865746164;
  }
}

uint64_t sub_26664E738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26664E62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26664E760(uint64_t a1)
{
  v2 = sub_26664E9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26664E79C(uint64_t a1)
{
  v2 = sub_26664E9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.EventGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FE40, &qword_26667B748);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26664E9B8();
  sub_26666CBE8();
  v16 = 0;
  sub_266668D38();
  OUTLINED_FUNCTION_0_45();
  sub_26664EE00(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_5_32(v3);
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for Snippet.EventGroup(0) + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
    sub_26664ED64(&qword_28007F540, &qword_28007E178, &protocol conformance descriptor for Snippet.Event, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_32(&v15);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_26664E9B8()
{
  result = qword_28007FE48;
  if (!qword_28007FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE48);
  }

  return result;
}

uint64_t Snippet.EventGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FE50, &qword_26667B750);
  OUTLINED_FUNCTION_3_0();
  v27 = v8;
  v28 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for Snippet.EventGroup(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26664E9B8();
  sub_26666CBD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v14 = v26;
  v32 = 0;
  OUTLINED_FUNCTION_0_45();
  sub_26664EE00(v15, v16, MEMORY[0x277CC95A0]);
  v17 = v29;
  sub_26666C9E8();
  v18 = *(v14 + 32);
  v23 = v13;
  v18(v13, v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
  v31 = 1;
  sub_26664ED64(&qword_28007F600, &qword_28007E170, &protocol conformance descriptor for Snippet.Event, MEMORY[0x277D83978]);
  sub_26666C9E8();
  v19 = OUTLINED_FUNCTION_2_42();
  v20(v19);
  v21 = v23;
  *&v23[*(v24 + 20)] = v30;
  sub_26664EE48(v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26664EEAC(v21);
}

uint64_t sub_26664ED64(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F538, &unk_266678A58);
    sub_26664EE00(a2, type metadata accessor for Snippet.Event, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26664EE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26664EE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.EventGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26664EEAC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.EventGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26664EF60(uint64_t a1)
{
  sub_266668D38();
  if (v1 <= 0x3F)
  {
    sub_26662B714(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s10EventGroupV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26664F0C4()
{
  result = qword_28007FE58;
  if (!qword_28007FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE58);
  }

  return result;
}

unint64_t sub_26664F11C()
{
  result = qword_28007FE60;
  if (!qword_28007FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE60);
  }

  return result;
}

unint64_t sub_26664F174()
{
  result = qword_28007FE68;
  if (!qword_28007FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_32(uint64_t a1)
{

  return sub_26666CA78();
}

uint64_t sub_26664F214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26664F238, 0, 0);
}

uint64_t sub_26664F238()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[7] = &_s16ResponseStrategyVN;
  v0[8] = &off_28780C610;
  v4 = swift_allocObject();
  v0[4] = v4;
  sub_26664F318(v1, v4 + 16);
  v0[2] = v3;
  v0[3] = v2;
  sub_2665A27EC();
  v5 = v3;
  v6 = v2;
  v7 = sub_266669528();
  sub_2665A2724((v0 + 2));
  v8 = v0[1];

  return v8(v7);
}

void sub_26664F374(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = sub_266669FF8();
  OUTLINED_FUNCTION_3_0();
  v67 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_5();
  v60 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v57 = &v43 - v11;
  OUTLINED_FUNCTION_19_4();
  v59 = sub_266669EC8();
  OUTLINED_FUNCTION_3_0();
  v66 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_5();
  v58 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v63 = &v43 - v17;
  OUTLINED_FUNCTION_19_4();
  v56 = sub_266669F98();
  OUTLINED_FUNCTION_3_0();
  v64 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = sub_26666A088();
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_5();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v43 - v31;
  v65 = a1;
  v33 = sub_2665C485C();
  if (v33)
  {
    v68 = MEMORY[0x277D84F90];
    v62 = v33;
    sub_266633930(0, v33 & ~(v33 >> 63), 0);
    if ((v62 & 0x8000000000000000) == 0)
    {
      v54 = v22;
      v43 = v32;
      v44 = v29;
      v45 = v25;
      v46 = v23;
      v34 = 0;
      v35 = v68;
      v55 = v65 & 0xC000000000000001;
      v47 = a2;
      v48 = v65 & 0xFFFFFFFFFFFFFF8;
      v52 = (v67 + 16);
      v53 = (v66 + 16);
      v50 = (v66 + 8);
      v51 = (v67 + 8);
      v49 = v64 + 32;
      while (!__OFADD__(v34, 1))
      {
        if (v55)
        {
          MEMORY[0x266788B60](v34, v65);
          v36 = v63;
        }

        else
        {
          v36 = v63;
          if (v34 >= *(v48 + 16))
          {
            goto LABEL_17;
          }
        }

        sub_266575F1C();
        if (v3)
        {

          return;
        }

        v66 = v34 + 1;
        v67 = 0;
        v37 = v57;
        sub_266669FE8();
        v38 = v59;
        (*v53)(v58, v36, v59);
        sub_266669FD8();
        sub_266669F88();
        v39 = v36;
        v40 = v61;
        (*v52)(v60, v37, v61);
        sub_266669F68();

        (*v51)(v37, v40);
        (*v50)(v39, v38);
        v68 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_266633930(v41 > 1, v42 + 1, 1);
          v35 = v68;
        }

        *(v35 + 16) = v42 + 1;
        (*(v64 + 32))(v35 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v42, v22, v56);
        ++v34;
        v3 = v67;
        if (v66 == v62)
        {
          v23 = v46;
          v25 = v45;
          v29 = v44;
          v32 = v43;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_26666A078();
    sub_26666A068();
    sub_26666A048();
    (*(v25 + 16))(v29, v32, v23);
    sub_26666A008();
    (*(v25 + 8))(v32, v23);
  }
}

uint64_t sub_26664F8BC()
{
  v1 = sub_266669EC8();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_1_0();
  v2 = sub_266669FC8();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_266669FB8();
  sub_266575F1C();
  if (!v0)
  {
    sub_266669FA8();
    sub_26666A048();
    (*(v4 + 16))(v8, v11, v2);
    sub_26666A038();
  }

  return (*(v4 + 8))(v11, v2);
}

uint64_t sub_26664FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = sub_266668D68();
  OUTLINED_FUNCTION_3_0();
  v53 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v49 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE70, &qword_26667B8D8);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v46 - v8;
  OUTLINED_FUNCTION_19_4();
  v50 = sub_266669EB8();
  OUTLINED_FUNCTION_3_0();
  v47 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v51 = v12 - v11;
  OUTLINED_FUNCTION_19_4();
  v52 = sub_266669F18();
  OUTLINED_FUNCTION_3_0();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_5();
  v48 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  sub_266669F98();
  OUTLINED_FUNCTION_3_0();
  v57 = v21;
  v58 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v28 = sub_266669EC8();
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_1_0();
  v29 = sub_26666A0B8();
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_5();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v46 - v37;
  sub_26666A0A8();
  if (a1)
  {
    v46 = v19;

    v39 = v60;
    sub_266575F1C();
    if (v39)
    {
      (*(v31 + 8))(v38, v29);
    }

    v60 = 0;
    sub_26666A098();

    v19 = v46;
  }

  sub_266669F88();
  v41 = *(v31 + 16);
  v46 = v29;
  v41(v35, v38, v29);
  sub_266669F78();
  sub_266669F08();
  (*(v57 + 16))(v24, v27, v58);
  sub_266669EF8();
  sub_26666A048();
  v42 = v52;
  (*(v59 + 16))(v48, v19, v52);
  sub_26666A028();
  v43 = v49;
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v44 = v54;
  sub_26666A0C8();
  (*(v53 + 8))(v43, v55);
  v45 = v50;
  if (__swift_getEnumTagSinglePayload(v44, 1, v50) == 1)
  {
    sub_266669EA8();
    if (__swift_getEnumTagSinglePayload(v44, 1, v45) != 1)
    {
      sub_26664FF84(v44);
    }
  }

  else
  {
    (*(v47 + 32))(v51, v44, v45);
  }

  sub_26666A018();
  (*(v59 + 8))(v19, v42);
  (*(v57 + 8))(v27, v58);
  return (*(v31 + 8))(v38, v46);
}

uint64_t sub_26664FF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE70, &qword_26667B8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26664FFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26666C548();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_26667B968;
  v9[5] = v8;
  sub_266650F94(0, 0, v6, &unk_26667B978, v9);
}

uint64_t sub_2666500FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266650110()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider), *(v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider + 24));
  v3 = sub_2666514D8(v1, *v2, sub_26665145C);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2666501BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266650280;

  return sub_2666500FC(v6);
}

uint64_t sub_266650280()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_24_1();

  return v9();
}

uint64_t sub_2666503D0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666503E4()
{
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  v2 = __swift_project_value_buffer(v1, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v5);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v6, v4, "[DeleteEvent.IntentHandler] resolving delete all occurrences");
    OUTLINED_FUNCTION_12();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  v9 = sub_26665145C(v7);
  v11 = v10;
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider), *(v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider + 24));
  v12 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v12, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v13 = sub_26655A8B4();
    v14 = sub_26665140C(v9, v11, v13);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v14)
    {
      if ([v14 hasRecurrenceRules])
      {
        v15 = [*(v0 + 96) deleteAllOccurrences];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 BOOLValue];

          v18 = sub_26666C148();
          v19 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v19))
          {
            v20 = OUTLINED_FUNCTION_20();
            *v20 = 0;
            _os_log_impl(&dword_266549000, v18, v2, "[DeleteEvent.IntentHandler] Event is recurring and intent has a value for deleteAllOccurrences, returning .success", v20, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          v21 = [objc_opt_self() successWithResolvedValue_];
        }

        else
        {
          v31 = sub_26666C148();
          v32 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v32))
          {
            v33 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_3(v33);
            OUTLINED_FUNCTION_4_43(&dword_266549000, v34, v2, "[DeleteEvent.IntentHandler] Event is recurring but intent.deleteAllOccurrences is nil, returning .needsValue");
            OUTLINED_FUNCTION_12();
          }

          v35 = *(v0 + 104);

          *(v35 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence) = 1;
          sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
          v21 = [swift_getObjCClassFromMetadata() needsValue];
        }
      }

      else
      {
        v27 = sub_26666C148();
        v28 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v28))
        {
          v29 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v29);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v30, v2, "[DeleteEvent.IntentHandler] Event does not have recurrence, returning .notRequired");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
        v21 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v26 = v21;

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v22 = sub_26666C148();
  v23 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v23))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v24, v25, "[DeleteEvent.IntentHandler] No EKEvent found for target event id, returning .unsupported");
    OUTLINED_FUNCTION_4_1();
  }

  sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
  v26 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_23:
  v36 = *(v0 + 8);

  return v36(v26);
}

uint64_t sub_2666507D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266651F1C;

  return sub_2666503D0(v6);
}

uint64_t sub_266650894(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666508A8()
{
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  v2 = __swift_project_value_buffer(v1, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v5);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v6, v4, "[DeleteEvent.IntentHandler] running handle");
    OUTLINED_FUNCTION_12();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  v9 = sub_26665145C(v7);
  v11 = v10;
  v12 = (v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v13 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v13, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v14 = sub_26655A8B4();
    v15 = sub_26665140C(v9, v11, v14);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v15)
    {
      v16 = [*(v0 + 96) deleteAllOccurrences];
      v19 = 0;
      if (v16)
      {
        v17 = v16;
        v18 = [v16 BOOLValue];

        if (v18)
        {
          v19 = 1;
        }
      }

      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v25 = sub_26655BFAC(v15, v19);
      v26 = sub_26666C148();
      if (v25)
      {
        v27 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v27))
        {
          v28 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v28);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v29, v2, "[DeleteEvent.IntentHandler] event successfully deleted, returning success");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
        v30 = 3;
      }

      else
      {
        v31 = sub_26666C5F8();
        if (OUTLINED_FUNCTION_7_1(v31))
        {
          v32 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v32);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v33, v2, "[DeleteEvent.IntentHandler] event could not be updated, returning failure");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
        v30 = 5;
      }

      v24 = sub_2665831B8(v30, 0);

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v20 = sub_26666C148();
  v21 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v21))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v22, v23, "[DeleteEvent.IntentHandler] unexpectedly found nil targetEventIdentifier or nonexistent event for identifier");
    OUTLINED_FUNCTION_4_1();
  }

  sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
  v24 = sub_2665831B8(5, 0);
LABEL_23:
  v34 = *(v0 + 8);

  return v34(v24);
}

uint64_t sub_266650C04(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_26664FFEC(a6, v10);
}

uint64_t sub_266650C88(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266651F1C;

  return sub_266650894(v6);
}

id sub_266650D5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s13IntentHandlerCMa_2();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266650DC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26656CD98;

  return v6();
}

uint64_t sub_266650EAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26656C894;

  return v7();
}

uint64_t sub_266650F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_266651BEC(a3, v22 - v10);
  v12 = sub_26666C548();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266651C5C(v11);
  }

  else
  {
    sub_26666C538();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_26666C528();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_26666C348() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_266651C5C(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266651C5C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_266651230(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266651328;

  return v6(a1);
}

uint64_t sub_266651328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

id sub_26665140C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();
  v5 = [a3 eventWithAppEntityIdentifier_];

  return v5;
}

uint64_t sub_26665145C(void *a1)
{
  v1 = [a1 targetEventIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

id sub_2666514D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EventProvider();
  v37[3] = v9;
  v37[4] = &off_287806290;
  v37[0] = a2;
  v10 = qword_28156C160;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  sub_26666C078();
  v12 = &v8[*(v6 + 20)];
  *v12 = "ResolveTargetEventIdentifier";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v13 = a3(a1);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    __swift_project_boxed_opaque_existential_1(v37, v9);
    v17 = sub_26655A8B4();
    v18 = sub_26665140C(v15, v16, v17);

    if (v18)
    {
      if (([v18 isSelfOrganized] & 1) != 0 && objc_msgSend(v18, sel_isEditable))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v19 = sub_26666C168();
        __swift_project_value_buffer(v19, qword_28156D7E8);
        v20 = sub_26666C148();
        v21 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v21))
        {
          v22 = OUTLINED_FUNCTION_20();
          *v22 = 0;
          _os_log_impl(&dword_266549000, v20, v21, "#resolveTargetEventIdentifier found matching event, resolving to targetEventIdentifier and returning success", v22, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        v23 = objc_opt_self();
        v24 = sub_26666C2F8();

        v25 = [v23 successWithResolvedString_];
      }

      else
      {

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v26 = sub_26666C168();
        __swift_project_value_buffer(v26, qword_28156D7E8);
        v27 = sub_26666C148();
        v28 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v28))
        {
          v29 = OUTLINED_FUNCTION_20();
          *v29 = 0;
          _os_log_impl(&dword_266549000, v27, v28, "#resolveTargetEventIdentifier user is attempting to update an event that they did not organize, returning unsupported .targetEventNotCreatedByUser", v29, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_266552C44(0, &unk_28007D170, 0x277CD4218);
        v25 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      goto LABEL_23;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v30 = sub_26666C168();
  __swift_project_value_buffer(v30, qword_28156D7E8);
  v31 = sub_26666C148();
  v32 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_7_2(v32))
  {
    v33 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v33);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v34, v32, "#resolveTargetEventIdentifier found no events for criteria, returning unsupported .targetEventNotFound");
    OUTLINED_FUNCTION_12();
  }

  sub_266552C44(0, &unk_28007D170, 0x277CD4218);
  v25 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_23:
  sub_26666C628();
  sub_26666C078();
  sub_266651940(v8);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v25;
}

uint64_t sub_266651940(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26665199C()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266651A30()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v5[1] = sub_26656CD98;

  return sub_266650DC4(v1, v2, v3);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_266651B28()
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16(v6);
  *v7 = v8;
  v7[1] = sub_26656CD98;

  return sub_266650EAC(v2, v3, v4, v5);
}

uint64_t sub_266651BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266651C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266651CC4()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_25(v1);

  return v4(v3);
}

uint64_t sub_266651D5C()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_25(v1);

  return v4(v3);
}

uint64_t sub_266651DF4()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266651E88()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

void OUTLINED_FUNCTION_4_43(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_266651F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_266669E58();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665202C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  sub_266669DF8();
  v4 = sub_2665CF4BC(v1);
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v5 = sub_266669CB8();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v7 = sub_26666C2F8();
  [v5 setValue:v6 forKeyPath:v7];

  v8 = *(v0 + 16);
  sub_266669CB8();
  sub_266552C44(0, &qword_28007D010, 0x277CD3B98);
  sub_266669A18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEA8, &unk_26667BAF0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_26665220C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v3[30] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v3[31] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v7);
  v3[35] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v9 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v9);
  v3[38] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266652788(uint64_t a1)
{
  v3 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v4 = v3[37];
    sub_266557D74(v3[36], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2666528D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 376);
  sub_266662640(1, *(v14 + 280));
  if (v15)
  {
    v16 = *(v14 + 320);
    v17 = *(v14 + 304);
    v18 = *(v14 + 312);
    v20 = *(v14 + 288);
    v19 = *(v14 + 296);

    sub_266557D74(v20, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v19, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v17);
    __swift_destroy_boxed_opaque_existential_1((v14 + 176));

    OUTLINED_FUNCTION_24_1();

    return v21();
  }

  else
  {
    v23 = *(v14 + 280);
    v25 = *(v14 + 240);
    v24 = *(v14 + 248);
    v26 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
    sub_2666696C8();
    v27 = sub_26666BB08();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v27);
    v28 = sub_266669788();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v28);
    sub_26656CFC4();
    v29 = swift_task_alloc();
    *(v14 + 384) = v29;
    *v29 = v14;
    v29[1] = sub_266652B28;
    OUTLINED_FUNCTION_5_33();

    return sub_2665643AC(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266652B28()
{
  v1 = *(*v0 + 368);
  v13 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 264);
  v6 = *(*v0 + 256);
  v7 = *(*v0 + 248);
  v8 = *(*v0 + 240);

  sub_266557D74(v8, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v7, &unk_28007DE20, &unk_26666EAE0);
  (*(v5 + 8))(v4, v6);
  sub_266557D74(v3, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v2, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v13, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266652D90()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[39];

  sub_2665AE46C(v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  OUTLINED_FUNCTION_24_1();

  return v4();
}

void sub_266652E70()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[39];

  sub_2665AE46C(v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  OUTLINED_FUNCTION_20_10();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266652F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26665351C;

  return sub_266651F74(a1, a2, a3);
}

uint64_t sub_266652FE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26665308C;

  return sub_26665220C(a1, a2);
}

uint64_t sub_26665308C()
{

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26665317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26665351C;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_266653240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26665351C;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

uint64_t sub_266653304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26665351C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666533E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_26665351C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_2666534C8()
{
  result = qword_28007FEA0;
  if (!qword_28007FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEA0);
  }

  return result;
}

uint64_t sub_266653548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2666695E8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665360C, 0, 0);
}

uint64_t sub_26665360C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_266560998();

  v6 = v4;
  v7 = v5;
  sub_2666695D8();
  sub_266669608();
  v8 = sub_2666695F8();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2666536FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266653E08;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2666537C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266653E08;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_266653884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266653E08;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_266653948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_266653DB4();
  *v7 = v3;
  v7[1] = sub_266653E08;

  return MEMORY[0x2821B9FD8](a1, a2, a3, v8);
}

uint64_t sub_266653A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266653E08;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_266653AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266653E08;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_266653B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266553FF0;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_266653C58(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266553434;

  return sub_266653548(a1, a2, v6);
}

unint64_t sub_266653D08()
{
  result = qword_28156CDD0;
  if (!qword_28156CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CDD0);
  }

  return result;
}

unint64_t sub_266653D60()
{
  result = qword_28156CDD8;
  if (!qword_28156CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CDD8);
  }

  return result;
}

unint64_t sub_266653DB4()
{
  result = qword_28156CDE0[0];
  if (!qword_28156CDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156CDE0);
  }

  return result;
}

id sub_266653E0C(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
  v4 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  v5 = [ObjCClassFromMetadata locationWithMapItem_];
  return v5;
}

uint64_t sub_266653EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_266653EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266653F68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669DF8();
  if ((*(v4 + 88))(v10, v2) != *MEMORY[0x277D5C150])
  {
    (*(v4 + 8))(v10, v2);
LABEL_9:
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    sub_266669DF8();
    sub_26659AC88(v8, &v56);
    (*(v4 + 8))(v8, v2);
    sub_26664DAA4(&v56, v55, &unk_28007D200, &qword_26666FD20);
    if (v55[40] != 255)
    {
      sub_26664DAA4(v55, &v51, &unk_28007D200, &qword_26666FD20);
      if (!v54)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v37 = sub_26666C168();
        __swift_project_value_buffer(v37, qword_28156D7E8);
        v38 = sub_26666C148();
        v39 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_2(v39))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_29_2(&dword_266549000, v40, v41, "[CreateEvent.NeedsValueStrategy] actionForInput returning .handle()");
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697D8();
        sub_26656CAEC(&v56, &unk_28007D200, &qword_26666FD20);
        sub_266553988(&v51);
        return sub_26656CAEC(v55, &unk_28007D200, &qword_26666FD20);
      }

      if (v54 == 5)
      {
        v22 = vorrq_s8(v52, v53);
        if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v51))
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v42 = sub_26666C168();
          __swift_project_value_buffer(v42, qword_28156D7E8);
          v43 = sub_26666C148();
          v44 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v44))
          {
            *OUTLINED_FUNCTION_20() = 0;
            OUTLINED_FUNCTION_29_2(&dword_266549000, v45, v46, "[CreateEvent.NeedsValueStrategy] actionForInput returning .cancel()");
            OUTLINED_FUNCTION_4_1();
          }

          sub_2666697C8();
          goto LABEL_26;
        }
      }

      sub_266553988(&v51);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v23 = sub_26666C168();
    __swift_project_value_buffer(v23, qword_28156D7E8);
    sub_26664DAA4(&v56, &v51, &unk_28007D200, &qword_26666FD20);
    v24 = sub_26666C148();
    v25 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v25))
    {
      v26 = swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_13_0();
      v50 = v27;
      *v26 = 136315138;
      sub_26664DAA4(&v51, v49, &unk_28007D200, &qword_26666FD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v28 = sub_26666C318();
      v30 = v29;
      sub_26656CAEC(&v51, &unk_28007D200, &qword_26666FD20);
      v31 = sub_2665BFC90(v28, v30, &v50);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_266549000, v24, v25, "[CreateEvent.NeedsValueStrategy] actionForInput returning .ignore() for unsupported task: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_26656CAEC(&v51, &unk_28007D200, &qword_26666FD20);
    }

    sub_2666697E8();
LABEL_26:
    sub_26656CAEC(&v56, &unk_28007D200, &qword_26666FD20);
    return sub_26656CAEC(v55, &unk_28007D200, &qword_26666FD20);
  }

  v47 = a1;
  (*(v4 + 96))(v10, v2);
  (*(v13 + 32))(v16, v10, v11);
  v17 = sub_266669E28();
  v19 = v18;
  v56 = 0xD000000000000028;
  v57 = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0x6F4674706D6F7270, 0xEE00656C74695472);
  if (v17 == v56 && v19 == v57)
  {
  }

  else
  {
    v21 = sub_26666CAC8();

    if ((v21 & 1) == 0)
    {
      (*(v13 + 8))(v16, v11);
      goto LABEL_9;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v32 = sub_26666C168();
  __swift_project_value_buffer(v32, qword_28156D7E8);
  v33 = sub_26666C148();
  v34 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v34))
  {
    v35 = OUTLINED_FUNCTION_20();
    *v35 = 0;
    _os_log_impl(&dword_266549000, v33, v34, "[CreateEvent.NeedsValueStrategy] actionForInput returning .handle() for DIPromptForTitle", v35, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_266654674()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_266669AE8();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v1[9] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEB8, &qword_26667BD98);
  OUTLINED_FUNCTION_3_3(v9);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = sub_266669E58();
  v1[16] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_19();
  v12 = sub_266669E48();
  v1[19] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[20] = v13;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26665487C()
{
  OUTLINED_FUNCTION_14_8();
  v2 = v0 + 18;
  v1 = v0[18];
  v4 = v0 + 17;
  v3 = v0[17];
  v6 = v0 + 16;
  v5 = v0[16];
  sub_266669DF8();
  if ((*(v3 + 88))(v1, v5) == *MEMORY[0x277D5C150] && (v2 = v0 + 22, v7 = v0[22], v4 = v0 + 20, v8 = v0[20], v6 = v0 + 19, v9 = v0[19], v10 = v0[21], v11 = v0[18], (*(v0[17] + 96))(v11, v0[16]), (*(v8 + 32))(v7, v11, v9), (*(v8 + 16))(v10, v7, v9), sub_266563654(v10), v0[23] = v13, v13 != 1))
  {
    v20 = v12;
    v21 = v13;
    v0[24] = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[25] = v22;
    *v22 = v23;
    v22[1] = sub_266654AA8;
    v24 = v0[15];
    v25 = v0[4];

    return sub_266655478(v24, v20, v21, v25);
  }

  else
  {
    (*(*v4 + 8))(*v2, *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[27] = v14;
    *v14 = v15;
    v14[1] = sub_266654F10;
    v16 = v0[14];
    v17 = v0[4];
    v18 = v0[3];

    return sub_2666556A8(v16, v18, v17);
  }
}

uint64_t sub_266654AA8()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *(v4 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 208) = v0;

  sub_2665695F8(v5, v6);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266654BE4()
{
  v51 = v2;
  (*(v2[20] + 8))(v2[22], v2[19]);
  sub_26664E170(v2[15], v2[2], &qword_28007FEB8, &qword_26667BD98);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v7 = OUTLINED_FUNCTION_18_12();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  v8 = OUTLINED_FUNCTION_23_16();
  v9(v8);
  sub_26664DAA4(v3, v1, &qword_28007FEB8, &qword_26667BD98);
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v2[13];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_9_27();
    v45 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_13_0();
    v50 = v47;
    OUTLINED_FUNCTION_39_7(4.8151e-34);
    sub_266669AD8();
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v5 + 8))(v6, v3);
    v17 = sub_2665BFC90(v4, v10, &v50);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    v18 = v43;
    sub_26664DAA4(v13, v43, &qword_28007FEB8, &qword_26667BD98);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    OUTLINED_FUNCTION_44_6(v19);
    if (v20)
    {
      v24 = sub_26656CAEC(v43, &qword_28007FEB8, &qword_26667BD98);
    }

    else
    {
      sub_266669A08();
      OUTLINED_FUNCTION_31_11();
      v24 = (*(v23 + 8))(v43, v3);
    }

    v32 = OUTLINED_FUNCTION_25_15(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45);
    sub_26656CAEC(v32, &qword_28007FEB8, &qword_26667BD98);
    OUTLINED_FUNCTION_27_18(&dword_266549000, v33, v34, "[CreateEvent.NeedsValueStrategy] Updated intent after prompt for %s: %@", v35, v36, v37, v38, v42, v44, v46, v47, *v49, v49[4]);
    sub_26656CAEC(v0, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_26656CAEC(v13, &qword_28007FEB8, &qword_26667BD98);
    v21 = OUTLINED_FUNCTION_34_2();
    v22(v21);
  }

  OUTLINED_FUNCTION_19_20();

  OUTLINED_FUNCTION_5_3();

  return v39();
}

uint64_t sub_266654F10()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26665500C()
{
  v51 = v2;
  sub_26664E170(v2[14], v2[2], &qword_28007FEB8, &qword_26667BD98);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v7 = OUTLINED_FUNCTION_18_12();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  v8 = OUTLINED_FUNCTION_23_16();
  v9(v8);
  sub_26664DAA4(v3, v1, &qword_28007FEB8, &qword_26667BD98);
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v2[13];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_9_27();
    v45 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_13_0();
    v50 = v47;
    OUTLINED_FUNCTION_39_7(4.8151e-34);
    sub_266669AD8();
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v5 + 8))(v6, v3);
    v17 = sub_2665BFC90(v4, v10, &v50);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    v18 = v43;
    sub_26664DAA4(v13, v43, &qword_28007FEB8, &qword_26667BD98);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    OUTLINED_FUNCTION_44_6(v19);
    if (v20)
    {
      v24 = sub_26656CAEC(v43, &qword_28007FEB8, &qword_26667BD98);
    }

    else
    {
      sub_266669A08();
      OUTLINED_FUNCTION_31_11();
      v24 = (*(v23 + 8))(v43, v3);
    }

    v32 = OUTLINED_FUNCTION_25_15(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45);
    sub_26656CAEC(v32, &qword_28007FEB8, &qword_26667BD98);
    OUTLINED_FUNCTION_27_18(&dword_266549000, v33, v34, "[CreateEvent.NeedsValueStrategy] Updated intent after prompt for %s: %@", v35, v36, v37, v38, v42, v44, v46, v47, *v49, v49[4]);
    sub_26656CAEC(v0, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_26656CAEC(v13, &qword_28007FEB8, &qword_26667BD98);
    v21 = OUTLINED_FUNCTION_34_2();
    v22(v21);
  }

  OUTLINED_FUNCTION_19_20();

  OUTLINED_FUNCTION_5_3();

  return v39();
}

uint64_t sub_266655320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  (*(v12[20] + 8))(v12[22], v12[19]);
  OUTLINED_FUNCTION_17_16();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_2666553D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_16();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_266655478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26665549C, 0, 0);
}

uint64_t sub_26665549C()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
    v3 = sub_266669CB8();
    v0[5] = MEMORY[0x277D837D0];
    v0[2] = v2;
    v0[3] = v1;

    sub_266582A50(0, v0 + 2, 0, 1, 0);
    v9 = v0[6];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_2665A6960();
    sub_266669A18();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    v11 = v9;
    v12 = 0;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v4 = sub_26666C168();
    __swift_project_value_buffer(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_2(v6))
    {
      v7 = OUTLINED_FUNCTION_20();
      *v7 = 0;
      _os_log_impl(&dword_266549000, v5, v6, "[CreateEvent.NeedsValueStrategy] DIPromptForTitle.title is nil returning nil prompt answer", v7, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v8 = v0[6];

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    v11 = v8;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  OUTLINED_FUNCTION_5_3();

  return v13();
}

uint64_t sub_2666556A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_266669E18();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = sub_266669E58();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665580C, 0, 0);
}

void sub_26665580C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  sub_266669DF8();
  sub_26659AC88(v1, v0 + 16);
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 255)
    {
      sub_26656CAEC(v0 + 16, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 16);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = OUTLINED_FUNCTION_34_2();
    v10(v9);
    v11 = sub_26666C148();
    v12 = sub_26666C608();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = *(v0 + 136);
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_13_0();
      v37 = v17;
      *v16 = 136315138;
      sub_266669DF8();
      v18 = sub_26666C318();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2665BFC90(v18, v20, &v37);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_266549000, v11, v12, "[CreateEvent.NeedsValueStrategy.parseValueResponse] Did not find an .createEvent task from parse: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v22 = OUTLINED_FUNCTION_34_2();
      v23(v22);
    }

    sub_26656CBFC();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_14_2();

    __asm { BRAA            X1, X16 }
  }

  sub_2665536F8((v0 + 16), v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v4 = sub_266669CB8();
  v5 = [v4 dateTimeRange];

  if (v5)
  {
    v6 = [v5 startDate];

    if (v6)
    {
      sub_266668CE8();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v32, v7, 1, v33);
    sub_26664E170(v32, v31, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    sub_266668D38();
    v27 = OUTLINED_FUNCTION_14_16();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }

  v34 = swift_task_alloc();
  *(v0 + 208) = v34;
  *v34 = v0;
  v34[1] = sub_266655CB8;
  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_266655CB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 168);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 216) = v7;

  sub_26656CAEC(v4, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266655DD0()
{
  v1 = v0[27];
  v2 = v0[13];
  v3 = sub_266669CB8();
  sub_266582C3C(v1, 1);

  v4 = sub_266669CC8();
  v5 = [v4 resolvedValue];

  sub_26666C718();
  swift_unknownObjectRelease();
  sub_2665A6960();
  sub_266669A18();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266655F28()
{
  OUTLINED_FUNCTION_14();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[21] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[22] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[23] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[26] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v10 = sub_266669AE8();
  v1[29] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[30] = v11;
  v1[31] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2666560E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  v12 = *(v10 + 240);
  v11 = *(v10 + 248);
  v13 = *(v10 + 232);
  *(v10 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v14 = sub_266669AD8();
  v16 = v15;
  (*(v12 + 8))(v11, v13);

  v17 = sub_2665FAB78(v14, v16);
  *(v10 + 344) = v17;
  if (v17 != 4)
  {

    v19 = 0xE800000000000000;
    v20 = 0x6E6F697461636F6CLL;
    switch(v21)
    {
      case 1:
        v34 = swift_task_alloc();
        *(v10 + 272) = v34;
        *v34 = v10;
        v34[1] = sub_26665656C;
        OUTLINED_FUNCTION_5_33();

        return sub_266657924();
      case 2:
        goto LABEL_8;
      case 3:
        v19 = 0xEC00000073746E61;
        v20 = 0x7069636974726170;
LABEL_8:
        sub_2665FB52C();
        swift_allocError();
        *v25 = v20;
        v25[1] = v19;
        goto LABEL_9;
      default:
        v22 = swift_task_alloc();
        *(v10 + 264) = v22;
        *v22 = v10;
        v22[1] = sub_266656390;
        OUTLINED_FUNCTION_5_33();

        return sub_266657AD8();
    }
  }

  sub_26656CBFC();
  swift_allocError();
  *v18 = v14;
  *(v18 + 8) = v16;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 1;
LABEL_9:
  swift_willThrow();
  OUTLINED_FUNCTION_16_19();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_266656390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_5_1();
  v13 = v12;
  OUTLINED_FUNCTION_11_2();
  *v14 = v13;
  v13[12] = v11;
  v13[13] = v15;
  v13[14] = v10;
  v16 = *v11;
  OUTLINED_FUNCTION_5_0();
  *v17 = v16;

  if (v10)
  {
    OUTLINED_FUNCTION_40_5();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_5_33();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_5_33();

    return MEMORY[0x2822009F8](v27, v28, v29);
  }
}

uint64_t sub_2666564EC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26_13(v0[13]);
  v0[39] = OUTLINED_FUNCTION_33_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[40] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_44(v1);

  return sub_266656E70(v3, v4, v5);
}

uint64_t sub_26665656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_5_1();
  v13 = v12;
  OUTLINED_FUNCTION_11_2();
  *v14 = v13;
  v13[15] = v11;
  v13[16] = v15;
  v13[17] = v10;
  v16 = *v11;
  OUTLINED_FUNCTION_5_0();
  *v17 = v16;

  if (v10)
  {
    OUTLINED_FUNCTION_40_5();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_5_33();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_5_33();

    return MEMORY[0x2822009F8](v27, v28, v29);
  }
}