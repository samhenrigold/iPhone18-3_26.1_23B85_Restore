void sub_2676371E0()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v159 = sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v155 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5();
  v153 = v5;
  OUTLINED_FUNCTION_7_3();
  v158 = sub_2676CA22C();
  OUTLINED_FUNCTION_3();
  v151 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_5();
  v157 = v8;
  OUTLINED_FUNCTION_7_3();
  v161 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v166 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v152 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_4();
  v160 = v13;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v154 = v15;
  OUTLINED_FUNCTION_7_3();
  sub_2676CA0DC();
  OUTLINED_FUNCTION_3();
  v163 = v17;
  v164 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_5();
  v162 = v18;
  OUTLINED_FUNCTION_7_3();
  v19 = sub_2676CA00C();
  OUTLINED_FUNCTION_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_4();
  v165 = v25;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_115();
  v27 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v156 = v31;
  OUTLINED_FUNCTION_12_0();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v141 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v141 - v36;
  v38 = *(v29 + 16);
  (v38)(&v141 - v36, v2, v27);
  if ((*(v29 + 88))(v37, v27) == *MEMORY[0x277D5C160])
  {
    (*(v29 + 96))(v37, v27);
    v39 = OUTLINED_FUNCTION_65_0();
    v40(v39);
    v41 = v19;
    v42 = v21;
    if (qword_2801CBAA0 != -1)
    {
LABEL_36:
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v43 = sub_2676CBE4C();
    v44 = __swift_project_value_buffer(v43, qword_2801CDC90);
    v45 = *(v42 + 16);
    v46 = v165;
    (v45)(v165, v1, v41);
    v156 = v44;
    v47 = sub_2676CBE2C();
    v48 = sub_2676CC22C();
    v49 = os_log_type_enabled(v47, v48);
    v145 = v42 + 16;
    v144 = v45;
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_5_3();
      v150 = OUTLINED_FUNCTION_41_1();
      v168[0] = v150;
      *v50 = 136315138;
      v51 = v1;
      v52 = v42;
      v53 = v46;
      (v45)(v148, v46, v41);
      OUTLINED_FUNCTION_8_10();
      v54 = sub_2676CBFBC();
      v56 = v55;
      v57 = *(v52 + 8);
      v58 = v53;
      v42 = v52;
      v1 = v51;
      v146 = v57;
      v57(v58, v41);
      v59 = sub_2676B0B84(v54, v56, v168);

      *(v50 + 4) = v59;
      OUTLINED_FUNCTION_130(&dword_2675D4000, v60, v61, "[Parse.ontologyGraph] Processing .uso(usoParse): %s");
      __swift_destroy_boxed_opaque_existential_1(v150);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_8_10();
      v146 = v73;
      v73(v72);
    }

    v74 = v160;
    v75 = v161;
    v77 = v153;
    v76 = v154;
    if ((sub_2676C854C() & 1) == 0)
    {
      v141 = v42;
      v143 = v41;
      v87 = v162;
      v142 = v1;
      sub_2676C9FFC();
      v42 = sub_2676CA0CC();
      (*(v163 + 8))(v87, v164);
      v165 = *(v42 + 16);
      if (!v165)
      {
LABEL_28:

        OUTLINED_FUNCTION_91_0();
        v110 = v142;
        v111 = v143;
        v112 = v144;
        (v144)(v77, v142, v143);
        v113 = sub_2676CBE2C();
        v114 = sub_2676CC24C();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_5_3();
          v116 = OUTLINED_FUNCTION_41_1();
          v168[0] = v116;
          *v115 = 136315138;
          v117 = OUTLINED_FUNCTION_95_0();
          v112(v117);
          OUTLINED_FUNCTION_8_10();
          sub_2676CBFBC();
          v118 = v77;
          v119 = v146;
          v146(v118, v111);
          v120 = OUTLINED_FUNCTION_8_10();
          v123 = sub_2676B0B84(v120, v121, v122);

          *(v115 + 4) = v123;
          OUTLINED_FUNCTION_130(&dword_2675D4000, v124, v125, "[Parse.ontologyGraph] Cannot extract task: parse has no UDAs: %s");
          __swift_destroy_boxed_opaque_existential_1(v116);
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_2_5();

          v119(v110, v111);
        }

        else
        {

          v126 = v146;
          v146(v77, v111);
          v126(v110, v111);
        }

        goto LABEL_16;
      }

      v41 = 0;
      OUTLINED_FUNCTION_4_5();
      v162 = 0;
      v163 = v42 + v88;
      v164 = (v89 + 8);
      v149 = (v151 + 8);
      v151 = v155 + 8;
      *&v90 = 136315138;
      v147 = v90;
      v155 = v89 + 16;
      v150 = v42;
      while (1)
      {
        if (v41 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v1 = *(v166 + 16);
        v1(v76, v163 + *(v166 + 72) * v41, v75);
        if (sub_2676CA11C())
        {
          v91 = v157;
          sub_2676CA15C();
          sub_2676CA1FC();
          (*v149)(v91, v158);
          v92 = v162;
          v93 = sub_2676CA2FC();
          if (!v92)
          {
            v127 = v93;
            v128 = OUTLINED_FUNCTION_113();
            v129(v128);

            v130 = sub_2676CBE2C();
            v131 = sub_2676CC22C();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = OUTLINED_FUNCTION_5_3();
              v133 = OUTLINED_FUNCTION_41_1();
              *v132 = OUTLINED_FUNCTION_122(v133).n128_u32[0];
              v167 = v127;
              sub_2676CA78C();
              v134 = v75;
              sub_267638E90(&qword_2801CCC30, MEMORY[0x277D5F428], MEMORY[0x277D5F430]);
              v135 = sub_2676CC56C();
              v137 = sub_2676B0B84(v135, v136, v168);

              *(v132 + 4) = v137;
              _os_log_impl(&dword_2675D4000, v130, v131, "[Parse.ontologyGraph] Graph constructed: %s", v132, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v76);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_2_5();

              (*v164)(v76, v134);
            }

            else
            {

              v138 = OUTLINED_FUNCTION_73_0();
              v140(v138, v139);
            }

            v146(v142, v143);
            goto LABEL_16;
          }

          v94 = OUTLINED_FUNCTION_113();
          v95(v94);
          v96 = OUTLINED_FUNCTION_73_0();
          v97(v96);
          v162 = 0;
          v74 = v160;
        }

        else
        {
          v1(v74, v76, v75);
          v98 = sub_2676CBE2C();
          v99 = v74;
          v100 = sub_2676CC24C();
          if (os_log_type_enabled(v98, v100))
          {
            v101 = OUTLINED_FUNCTION_5_3();
            v102 = OUTLINED_FUNCTION_41_1();
            *v101 = OUTLINED_FUNCTION_122(v102).n128_u32[0];
            v1(v152, v99, v75);
            OUTLINED_FUNCTION_22_2();
            v103 = sub_2676CBFBC();
            v1 = v104;
            v105 = *v164;
            (*v164)(v99, v161);
            v106 = sub_2676B0B84(v103, v1, v168);

            *(v101 + 4) = v106;
            v75 = v161;
            _os_log_impl(&dword_2675D4000, v98, v100, "[Parse.ontologyGraph] Cannot extract task: UDA is not StatedTask. %s", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v76);
            v76 = v154;
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_2_5();

            v107 = OUTLINED_FUNCTION_73_0();
            (v105)(v107);
            v77 = v153;
          }

          else
          {

            v108 = *v164;
            (*v164)(v99, v75);
            v109 = OUTLINED_FUNCTION_73_0();
            (v108)(v109);
          }

          v74 = v99;
          v42 = v150;
        }

        if (v165 == ++v41)
        {
          goto LABEL_28;
        }
      }
    }

    v78 = sub_2676CBE2C();
    v79 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_5(v79))
    {
      v80 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v80);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v146(v1, v41);
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v62 = sub_2676CBE4C();
    __swift_project_value_buffer(v62, qword_2801CDC90);
    (v38)(v35, v2, v27);
    v63 = sub_2676CBE2C();
    v64 = sub_2676CC24C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_5_3();
      v165 = v65;
      v166 = OUTLINED_FUNCTION_41_1();
      v168[0] = v166;
      *v65 = 136315138;
      OUTLINED_FUNCTION_69_0();
      v38();
      v66 = sub_2676CBFBC();
      v68 = v67;
      v69 = OUTLINED_FUNCTION_93();
      (v38)(v69);
      v70 = sub_2676B0B84(v66, v68, v168);

      v71 = v165;
      *(v165 + 1) = v70;
      _os_log_impl(&dword_2675D4000, v63, v64, "[Parse.ontologyGraph] Unsupported parse: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v166);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v86 = OUTLINED_FUNCTION_93();
      (v38)(v86);
    }

    (v38)(v37, v27);
  }

LABEL_16:
  OUTLINED_FUNCTION_20_1();
}

void sub_267637F04()
{
  OUTLINED_FUNCTION_21_1();
  v109 = v1;
  v108 = sub_2676CA0DC();
  OUTLINED_FUNCTION_3();
  v106 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_5();
  v103 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v107 = v7;
  OUTLINED_FUNCTION_7_3();
  v105 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v102[3] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_5();
  v102[2] = v10;
  OUTLINED_FUNCTION_7_3();
  v11 = sub_2676CA00C();
  OUTLINED_FUNCTION_3();
  v104 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_108();
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v102[1] = v17;
  OUTLINED_FUNCTION_12_0();
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = v102 - v20;
  v22 = *(v15 + 16);
  v23 = OUTLINED_FUNCTION_67_0();
  v22(v23);
  v24 = OUTLINED_FUNCTION_87_0();
  if (v25(v24) == *MEMORY[0x277D5C160])
  {
    v26 = OUTLINED_FUNCTION_87_0();
    v27(v26);
    OUTLINED_FUNCTION_57_2();
    v28(v0, v21, v11);
    v29 = v103;
    sub_2676C9FFC();
    v30 = sub_2676CA0CC();
    (*(v106 + 8))(v29, v108);
    v31 = v107;
    sub_267698E5C(v30);

    OUTLINED_FUNCTION_21_3(v31, 1, v105);
    if (v32)
    {
      sub_2675EB7EC(v31, &qword_2801CC148, &unk_2676CDD90);
    }

    else
    {
      v61 = OUTLINED_FUNCTION_47_1();
      v62(v61);
      v63 = sub_2676CA12C();
      if (v63)
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v64 = sub_2676CBE4C();
        __swift_project_value_buffer(v64, qword_2801CDC90);
        v65 = sub_2676CBE2C();
        v66 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v66))
        {
          v67 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v67);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v68, v69, v70, v71, v72, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        v73 = OUTLINED_FUNCTION_83_0();
        v74(v73);
        v75 = OUTLINED_FUNCTION_77();
        v76(v75);
        v77 = MEMORY[0x277D5BED8];
LABEL_29:
        v97 = *v77;
        v98 = sub_2676C9C5C();
        OUTLINED_FUNCTION_2_6();
        (*(v99 + 104))(v109, v97, v98);
        OUTLINED_FUNCTION_17_2();
        v47 = v98;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
        goto LABEL_31;
      }

      if (sub_2676CA13C() & 1) != 0 || (sub_2676CA14C())
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v84 = sub_2676CBE4C();
        __swift_project_value_buffer(v84, qword_2801CDC90);
        v85 = sub_2676CBE2C();
        v86 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v86))
        {
          v87 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v87);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v88, v89, v90, v91, v92, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        v93 = OUTLINED_FUNCTION_83_0();
        v94(v93);
        v95 = OUTLINED_FUNCTION_77();
        v96(v95);
        v77 = MEMORY[0x277D5BED0];
        goto LABEL_29;
      }

      v100 = OUTLINED_FUNCTION_83_0();
      v101(v100);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v33 = sub_2676CBE4C();
    __swift_project_value_buffer(v33, qword_2801CDC90);
    v34 = sub_2676CBE2C();
    v35 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v35))
    {
      v36 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v36);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v42 = OUTLINED_FUNCTION_77();
    v43(v42);
    sub_2676C9C5C();
    v44 = OUTLINED_FUNCTION_104_0();
    goto LABEL_30;
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v48 = sub_2676CBE4C();
  v49 = __swift_project_value_buffer(v48, qword_2801CDC90);
  v50 = OUTLINED_FUNCTION_88_0();
  v22(v50);
  v51 = v49;
  v52 = sub_2676CBE2C();
  v53 = sub_2676CC24C();
  if (OUTLINED_FUNCTION_5_5(v53))
  {
    v54 = OUTLINED_FUNCTION_5_3();
    v108 = OUTLINED_FUNCTION_41_1();
    v110 = v108;
    *v54 = 136315138;
    v55 = OUTLINED_FUNCTION_65_0();
    v22(v55);
    OUTLINED_FUNCTION_85_0();
    v107 = sub_2676CBFBC();
    v57 = v56;
    v58 = *(v15 + 8);
    v59 = OUTLINED_FUNCTION_68_0();
    v58(v59);
    v60 = sub_2676B0B84(v107, v57, &v110);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_2675D4000, v52, v51, "#confirmationResponse Unexpected parse type: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v58 = *(v15 + 8);
    v78 = OUTLINED_FUNCTION_68_0();
    v58(v78);
  }

  sub_2676C9C5C();
  v79 = OUTLINED_FUNCTION_104_0();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = OUTLINED_FUNCTION_87_0();
  v58(v83);
LABEL_31:
  OUTLINED_FUNCTION_20_1();
}

void sub_26763862C()
{
  OUTLINED_FUNCTION_21_1();
  v56 = sub_2676CA0DC();
  OUTLINED_FUNCTION_3();
  v53 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v51 = v10;
  OUTLINED_FUNCTION_7_3();
  v54 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v49 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_5();
  v48 = v13;
  OUTLINED_FUNCTION_7_3();
  v52 = sub_2676CA00C();
  OUTLINED_FUNCTION_3();
  v50 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_108();
  v16 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v47 = v20;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v22);
  v23 = *(v18 + 16);
  v24 = OUTLINED_FUNCTION_88_0();
  v23(v24);
  v25 = OUTLINED_FUNCTION_58_1();
  if (v26(v25) == *MEMORY[0x277D5C160])
  {
    v27 = OUTLINED_FUNCTION_58_1();
    v28(v27);
    v29 = OUTLINED_FUNCTION_71_0();
    v30(v29);
    sub_2676C9FFC();
    v31 = sub_2676CA0CC();
    (*(v53 + 8))(v7, v56);
    sub_267698E5C(v31);

    v32 = OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_21_3(v32, v33, v54);
    if (v34)
    {
      (*(v50 + 8))(v2, v52);
      sub_2675EB7EC(v51, &qword_2801CC148, &unk_2676CDD90);
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      OUTLINED_FUNCTION_30_4();
      v44();
      sub_2676CA14C();
      (*(v49 + 8))(v48, v54);
      (*(v50 + 8))(v2, v52);
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v35 = sub_2676CBE4C();
    __swift_project_value_buffer(v35, qword_2801CDC90);
    (v23)(v1, v0, v16);
    v36 = sub_2676CBE2C();
    v37 = sub_2676CC24C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_5_3();
      v57 = OUTLINED_FUNCTION_41_1();
      v58 = v57;
      *v38 = 136315138;
      (v23)(v47, v1, v16);
      v55 = sub_2676CBFBC();
      v40 = v39;
      v41 = *(v18 + 8);
      v42 = OUTLINED_FUNCTION_29_0();
      v41(v42);
      v43 = sub_2676B0B84(v55, v40, &v58);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_2675D4000, v36, v37, "#hasUserCancellation Unexpected parse type: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v41 = *(v18 + 8);
      v45 = OUTLINED_FUNCTION_29_0();
      v41(v45);
    }

    v46 = OUTLINED_FUNCTION_58_1();
    v41(v46);
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_267638B3C()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v24 = sub_2676CA09C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  v23 = v6;
  OUTLINED_FUNCTION_7_3();
  v22 = sub_2676CA0BC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_125();
  v21 = sub_2676CA1BC();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_2();
  v13 = v12 - v11;
  v14 = 0;
  v25 = v2;
  v26 = *(v2 + 16);
  v20 = *MEMORY[0x277D5DAE0];
  do
  {
    if (v26 == v14)
    {
      break;
    }

    (*(v9 + 16))(v13, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14++, v21);
    sub_2676CA1AC();
    v15 = sub_2676CA0AC();
    OUTLINED_FUNCTION_124();
    v16(v0, v22);
    (*(v4 + 104))(v23, v20, v24);
    v17 = sub_2676CA08C();
    (*(v4 + 8))(v23, v24);
    v18 = OUTLINED_FUNCTION_63_0();
    v19(v18);
  }

  while (v17 != v15);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267638DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_125();
  v13 = OUTLINED_FUNCTION_8_10();
  sub_2675F95E4(v13, v14, a5, a6);
  return a7(v7);
}

uint64_t sub_267638E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_50_1()
{

  JUMPOUT(0x26D5FC5D0);
}

void OUTLINED_FUNCTION_130(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_131@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_2675F95E4(a1, v5, a2, a3);
}

uint64_t sub_267639560@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2801CBA90 != -1)
  {
    swift_once();
  }

  v2 = qword_2801D3DF8;
  swift_retain_n();
  sub_2676C9CEC();
  v3 = type metadata accessor for PrivacyDisclosureManager();
  v11[3] = v3;
  v11[4] = &off_2878AE1B0;
  v11[0] = v2;
  type metadata accessor for PreFlightCheckFlow();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v11, v3);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  *(v4 + 48) = v3;
  *(v4 + 56) = &off_2878AE1B0;
  *(v4 + 24) = v9;
  sub_2675DD73C(&v12, v4 + 64);
  *(v4 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v11);

  *a1 = v4;
  return result;
}

uint64_t sub_2676396F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PreFlightCheckFlow();
  sub_26763A418();
  return sub_2676C95BC();
}

uint64_t sub_267639754(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_267639774, 0, 0);
}

uint64_t sub_267639774()
{
  __swift_project_boxed_opaque_existential_1((v0[12] + 24), *(v0[12] + 48));
  if (sub_26763A4E8(0xD000000000000014, 0x80000002676D6080))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v1 = sub_2676CBE4C();
    v0[13] = __swift_project_value_buffer(v1, qword_2801CDC90);
    v2 = sub_2676CBE2C();
    v3 = sub_2676CC24C();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v4, v5, "#PreFlightCheckFlow: Mail app is requiring preflight check. Abandon flow and direct user to open the app.");
      OUTLINED_FUNCTION_2_5();
    }

    v6 = v0[12];

    *(v6 + 16) = 1;
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_2676399A4;

    return sub_2676BF2B8();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v9 = sub_2676CBE4C();
    __swift_project_value_buffer(v9, qword_2801CDC90);
    v10 = sub_2676CBE2C();
    v11 = sub_2676CC23C();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v12, v13, "#PreFlightCheckFlow: preflight check not needed");
      OUTLINED_FUNCTION_2_5();
    }

    v14 = v0[12];

    *(v14 + 16) = 2;
    sub_2676C9B0C();
    OUTLINED_FUNCTION_15_0();

    return v15();
  }
}

uint64_t sub_2676399A4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {
    v5 = sub_267639CCC;
  }

  else
  {
    v5 = sub_267639AA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267639AA8()
{
  v1 = *(v0 + 96);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_267639B68;

  return MEMORY[0x2821BB5D0](v0 + 16, v2, v3);
}

uint64_t sub_267639B68()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_267639E18;
  }

  else
  {
    v5 = sub_267639C6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267639C6C()
{
  OUTLINED_FUNCTION_3_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2676C9B0C();
  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_267639CCC()
{
  v15 = v0;
  v1 = *(v0 + 120);
  v2 = v1;
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC24C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_6_14(4.8149e-34);
    v7 = sub_2676CC5FC();
    v9 = sub_2676B0B84(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_8_16(&dword_2675D4000, v10, v11, "#PreFlightCheckFlow: Unable to make response for preflight check. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  sub_2676C9B0C();
  OUTLINED_FUNCTION_15_0();

  return v12();
}

uint64_t sub_267639E18()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 136);
  v2 = v1;
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC24C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_6_14(4.8149e-34);
    v7 = sub_2676CC5FC();
    v9 = sub_2676B0B84(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_8_16(&dword_2675D4000, v10, v11, "#PreFlightCheckFlow: Unable to make response for preflight check. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  sub_2676C9B0C();
  OUTLINED_FUNCTION_15_0();

  return v12();
}

uint64_t sub_267639F6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t getEnumTagSinglePayload for PreFlightCheckFlow.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PreFlightCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26763A138()
{
  result = qword_2801CCC38;
  if (!qword_2801CCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCC38);
  }

  return result;
}

uint64_t sub_26763A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26763A23C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26763A23C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_3();
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26763A34C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267605CFC;

  return sub_267639754(a1);
}

BOOL sub_26763A3E8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2676396E8();
  *a1 = result;
  return result;
}

unint64_t sub_26763A418()
{
  result = qword_2801CC778;
  if (!qword_2801CC778)
  {
    type metadata accessor for PreFlightCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_14(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_8_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26763A4AC(uint64_t a1)
{
  type metadata accessor for PrivacyDisclosureManager();
  v1 = swift_allocObject();
  result = sub_26763A5D0();
  qword_2801D3DF8 = v1;
  return result;
}

id sub_26763A4E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26763A538(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [*(v2 + 16) requiresPreflightForApplicationRecord_];

  return v5;
}

id sub_26763A538(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return sub_26763A638(a1, a2, 0);
}

uint64_t sub_26763A5D0()
{
  v1 = v0;
  sub_26763A714();
  v2 = sub_2676CC27C();
  v3 = [objc_allocWithZone(MEMORY[0x277D412D0]) initWithTargetQueue_];

  *(v1 + 16) = v3;
  return v1;
}

id sub_26763A638(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2676CBF3C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2676C8FCC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_26763A714()
{
  result = qword_2801CCC40;
  if (!qword_2801CCC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CCC40);
  }

  return result;
}

uint64_t type metadata accessor for PromptForContactProducer(uint64_t a1)
{
  result = qword_2801CCC48;
  if (!qword_2801CCC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26763A7CC(uint64_t a1)
{
  sub_26763A848(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26763A848(uint64_t a1)
{
  if (!qword_2801CCC58)
  {
    sub_2676CAA9C();
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CCC58);
    }
  }
}

uint64_t sub_26763A8A0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_2676CB48C();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26763A9B8, 0, 0);
}

uint64_t sub_26763A9B8()
{
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#PromptForContactProducer producing needsValue contact prompt", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = *v5 == 0x7265646E6573 && v5[1] == 0xE600000000000000;
  if (v6 || (sub_2676CC59C() & 1) != 0)
  {
    v7 = v0[11];
    v8 = v0[9];
    type metadata accessor for ReadMailCATsSimple(0);
    sub_2676CB47C();
    v0[15] = sub_2676CB42C();
    v9 = type metadata accessor for PromptForContactProducer(0);
    sub_26763B360(v8 + *(v9 + 20), v7);
    v10 = sub_2676CAA9C();
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      sub_2675E35CC(v0[11], &qword_2801CC300, &unk_2676D09B0);
    }

    else
    {
      v11 = v0[11];
      sub_2675EC018();
      sub_2676CB3DC();
      (*(*(v10 - 8) + 8))(v11, v10);
    }

    v12 = sub_2676CB3FC();
    OUTLINED_FUNCTION_4_16(v12);
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_26763ADA0;

    return sub_267653CE8();
  }

  else
  {
    v15 = v0[9];
    v16 = v0[10];
    type metadata accessor for SendMailCATsSimple(0);
    sub_2676CB47C();
    v0[18] = sub_2676CB42C();
    v17 = type metadata accessor for PromptForContactProducer(0);
    sub_26763B360(v15 + *(v17 + 20), v16);
    v18 = sub_2676CAA9C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_2675E35CC(v0[10], &qword_2801CC300, &unk_2676D09B0);
    }

    else
    {
      v19 = v0[10];
      sub_2675EC018();
      sub_2676CB3DC();
      (*(*(v18 - 8) + 8))(v19, v18);
    }

    v20 = sub_2676CB3FC();
    OUTLINED_FUNCTION_4_16(v20);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_26763AFA4;

    return sub_267694768();
  }
}

uint64_t sub_26763ADA0(uint64_t a1)
{
  v3 = *v2;
  v10 = *v2;
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = v1;
  v4 = v3[13];
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v7 + 136) = v1;

  sub_2675E35CC(v4, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v1)
  {
    v8 = sub_26763B1A8;
  }

  else
  {
    v8 = sub_26763AF04;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26763AF04()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_2_19();
  sub_2676C9ADC();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26763AFA4(uint64_t a1)
{
  v3 = *v2;
  v10 = *v2;
  v10[5] = v2;
  v10[6] = a1;
  v10[7] = v1;
  v4 = v3[12];
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v7 + 160) = v1;

  sub_2675E35CC(v4, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v1)
  {
    v8 = sub_26763B238;
  }

  else
  {
    v8 = sub_26763B108;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26763B108()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_2_19();
  sub_2676C9ADC();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26763B1A8()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_2_19();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26763B238()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_2_19();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26763B2C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_26763A8A0(a1);
}

uint64_t sub_26763B360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t type metadata accessor for ReadBody(uint64_t a1)
{
  result = qword_2801CCC60;
  if (!qword_2801CCC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26763B470(uint64_t a1)
{
  result = sub_2676C8BFC();
  if (v2 <= 0x3F)
  {
    result = sub_2675F9F5C(319, &qword_2801CC420, &protocol descriptor for ResponseProviding);
    if (v3 <= 0x3F)
    {
      result = sub_2675F9F5C(319, &qword_2801CCC70, &protocol descriptor for ReadingUtilProviding);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26763B534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v2[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[10] = v8;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_2676C9DDC();
  v2[13] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v2[14] = v10;
  v2[15] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C8E9C();
  v2[16] = v11;
  OUTLINED_FUNCTION_4_1(v11);
  v2[17] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v12);
  v2[18] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v13);
  v2[19] = OUTLINED_FUNCTION_2_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v14);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = sub_2676C8EBC();
  v2[23] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v2[24] = v16;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26763B7F8, 0, 0);
}

uint64_t sub_26763B7F8()
{
  v1 = v0[22];
  v2 = v0[3];
  Body = type metadata accessor for ReadBody(0);
  v0[27] = Body;
  __swift_project_boxed_opaque_existential_1((v2 + *(Body + 28)), *(v2 + *(Body + 28) + 24));
  sub_267641F70(v1);
  v5 = v0[22];
  v4 = v0[23];
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    sub_2675E35CC(v5, &qword_2801CBFE0, &qword_2676D1070);
  }

  else
  {
    v17 = v0[26];
    v18 = v0[24];
    v19 = v0[21];
    (*(v18 + 32))(v17, v5, v4);
    (*(v18 + 16))(v19, v17, v4);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
    sub_2676C8B0C();
    (*(v18 + 8))(v17, v4);
  }

  v6 = v0[23];
  v7 = v0[20];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[28] = sub_2676CB42C();
  sub_2676C8AFC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v6))
  {
    sub_2675E35CC(v0[20], &qword_2801CBFE0, &qword_2676D1070);
    v8 = 1;
  }

  else
  {
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[23];
    v12 = v0[20];
    (*(v10 + 16))(v9, v12, v11);
    sub_2675E35CC(v12, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    (*(v10 + 8))(v9, v11);
    sub_2676CBFEC();

    v8 = 0;
  }

  v13 = v0[18];
  v14 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v13, v8, 1, v14);
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_26763BB08;

  return sub_267652764();
}

uint64_t sub_26763BB08()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  *(v6 + 240) = v5;
  *(v6 + 248) = v0;

  sub_2675E35CC(v2, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {
    v7 = sub_26763C2E8;
  }

  else
  {
    v7 = sub_26763BC68;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_26763BC68()
{
  v1 = [*(v0 + 240) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v7 = *(v0 + 120);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v21 = *(v0 + 56);
      v22 = *(v0 + 48);
      v23 = *(v0 + 40);
      v24 = *(v0 + 32);
      v25 = *(v0 + 24);

      sub_2676C999C();
      (*(v11 + 16))(v9, v8, v10);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v13 = sub_2676C9B3C();
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v13);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v23 + 8))(v22, v24);
      sub_2676C9D5C();
      sub_26763C3F8(v7);
      (*(v11 + 8))(v8, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC528, &qword_2676CF290);
      v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
      v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v16 = swift_allocObject();
      *(v0 + 256) = v16;
      *(v16 + 16) = xmmword_2676CDE20;
      v17 = v16 + v15;
      v18 = (v17 + v14[14]);
      v19 = sub_2676C8BFC();
      (*(*(v19 - 8) + 16))(v17, v25, v19);
      *v18 = 0;
      v18[1] = 0;
      v20 = swift_task_alloc();
      *(v0 + 264) = v20;
      *v20 = v0;
      v20[1] = sub_26763C098;

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

uint64_t sub_26763C098()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26763C1A8, 0, 0);
}

uint64_t sub_26763C1A8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);

  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26763C2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26763C4F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_26763B534(a1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26763C5AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26763C5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26763C648()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v0[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[10] = v10;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v11 = sub_2676C8BFC();
  v0[13] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v0[14] = v12;
  v0[15] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_5();
  return OUTLINED_FUNCTION_22_5(v13, v14, v15);
}

uint64_t sub_26763C754()
{
  OUTLINED_FUNCTION_29_6();
  sub_2676C919C();
  if (sub_2676C917C())
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v3 = sub_2676CBE4C();
    v4 = OUTLINED_FUNCTION_67(v3, qword_2801CDC90);
    v5 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_17_12(v5))
    {
      v6 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v6);
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v7, v8, "#OutputGenerator returning widget views for SMART");
      OUTLINED_FUNCTION_4_6();
    }

    v9 = OUTLINED_FUNCTION_28_3();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_9_16();
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    v1[16] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_1_18(v11);
    OUTLINED_FUNCTION_26_4();

    __asm { BRAA            X8, X16 }
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v15 = sub_2676CBE4C();
  v16 = OUTLINED_FUNCTION_67(v15, qword_2801CDC90);
  v17 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_17_12(v17))
  {
    v18 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v18);
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v19, v20, "#OutputGenerator returning SA ace views");
    OUTLINED_FUNCTION_4_6();
  }

  v21 = v1[5];

  OUTLINED_FUNCTION_21_6();
  if (v2)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_3_15();
    do
    {
      v22 = OUTLINED_FUNCTION_11_17();
      sub_26763DDB4(v22, v23, &qword_2801CC3D8, &unk_2676CEC00);
      v24 = sub_26763DE18(v21, v0);
      OUTLINED_FUNCTION_23_6(v24, v25, v26, v27, v28, v29, v30, v31, v42, v43, v44, v45, v46, v47);
      v32 = OUTLINED_FUNCTION_16_9();
      v21(v32);
      OUTLINED_FUNCTION_15_12();
      if (v34)
      {
        OUTLINED_FUNCTION_13_14(v33);
      }

      v35 = OUTLINED_FUNCTION_2_20();
      v21(v35);
      OUTLINED_FUNCTION_25_6();
    }

    while (!v36);
  }

  OUTLINED_FUNCTION_8_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[18] = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_4_17(v37);
  OUTLINED_FUNCTION_26_4();

  return v39();
}

uint64_t sub_26763CA8C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v0[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[10] = v10;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v11 = sub_2676C8BFC();
  v0[13] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v0[14] = v12;
  v0[15] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_5();
  return OUTLINED_FUNCTION_22_5(v13, v14, v15);
}

uint64_t sub_26763CB98()
{
  OUTLINED_FUNCTION_29_6();
  sub_2676C919C();
  if (sub_2676C917C())
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v3 = sub_2676CBE4C();
    v4 = OUTLINED_FUNCTION_67(v3, qword_2801CDC90);
    v5 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_17_12(v5))
    {
      v6 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v6);
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v7, v8, "#OutputGenerator returning widget views for SMART");
      OUTLINED_FUNCTION_4_6();
    }

    v9 = OUTLINED_FUNCTION_28_3();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_9_16();
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    v1[16] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_1_18(v11);
    OUTLINED_FUNCTION_26_4();

    __asm { BRAA            X8, X16 }
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v15 = sub_2676CBE4C();
  v16 = OUTLINED_FUNCTION_67(v15, qword_2801CDC90);
  v17 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_17_12(v17))
  {
    v18 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v18);
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v19, v20, "#OutputGenerator returning SA ace views");
    OUTLINED_FUNCTION_4_6();
  }

  v21 = v1[5];

  OUTLINED_FUNCTION_21_6();
  if (v2)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_3_15();
    do
    {
      v22 = OUTLINED_FUNCTION_11_17();
      sub_26763DDB4(v22, v23, &qword_2801CC3D8, &unk_2676CEC00);
      v24 = sub_26763DE18(v21, v0);
      OUTLINED_FUNCTION_23_6(v24, v25, v26, v27, v28, v29, v30, v31, v42, v43, v44, v45, v46, v47);
      v32 = OUTLINED_FUNCTION_16_9();
      v21(v32);
      OUTLINED_FUNCTION_15_12();
      if (v34)
      {
        OUTLINED_FUNCTION_13_14(v33);
      }

      v35 = OUTLINED_FUNCTION_2_20();
      v21(v35);
      OUTLINED_FUNCTION_25_6();
    }

    while (!v36);
  }

  OUTLINED_FUNCTION_8_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[18] = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_4_17(v37);
  OUTLINED_FUNCTION_26_4();

  return v39();
}

uint64_t sub_26763CED0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26763D018()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26763D17C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_26762D204;

  return sub_26763D20C(v2);
}

uint64_t sub_26763D20C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v2[7] = swift_task_alloc();
  sub_2676CAF8C();
  v2[8] = swift_task_alloc();
  v4 = sub_2676C99CC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_2676C9DDC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v2[16] = swift_task_alloc();
  sub_2676CB48C();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26763D458, 0, 0);
}

uint64_t sub_26763D458()
{
  v1 = v0[16];
  v2 = v0[3];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[18] = sub_2676CB42C();
  sub_26763DDB4(*v2 + OBJC_IVAR____TtC16SiriMailInternal18MailMessageConcept_body, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_26763D578;

  return sub_267653F00();
}

uint64_t sub_26763D578(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 160) = v1;

  v7 = *(v4 + 128);
  if (v1)
  {
    sub_2675E3BB8(v7);

    v8 = sub_26763DB0C;
  }

  else
  {
    *(v5 + 168) = a1;
    sub_2675E3BB8(v7);

    v8 = sub_26763D6DC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_26763D6DC(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[8];
  v8 = v1[5];
  v7 = v1[6];
  v12 = v1[7];
  v13 = v1[4];
  sub_2676C99BC();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v13);
  sub_2676C9D5C();
  sub_2676CAF6C();
  sub_2676C9D3C();
  (*(v5 + 8))(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[22] = v10;
  *v10 = v11;
  v10[1] = sub_26763D92C;

  JUMPOUT(0x26763CA8CLL);
}

uint64_t sub_26763D92C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26763DA14()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26763DB0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26763DBD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2675DFCCC;

  return sub_26763D17C();
}

uint64_t sub_26763DC68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26762D204;

  return sub_26763D17C();
}

uint64_t sub_26763DD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26762D204;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_26763DDB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return a2;
}

uint64_t sub_26763DE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v4 + 16);
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  return result;
}

void *OUTLINED_FUNCTION_5_15()
{

  return sub_2676C2950(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v10 = *(v9 + 16);
  *(v8 + 56) = a8;
  *(v8 + 64) = v10;
  *(v8 + 153) = a7;
  *(v8 + 152) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

void *OUTLINED_FUNCTION_13_14@<X0>(unint64_t a1@<X8>)
{

  return sub_2676C2950(a1 > 1, v1, 1);
}

BOOL OUTLINED_FUNCTION_17_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
}

uint64_t sub_26763E134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC78, &qword_2676D0BC0);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC80, &qword_2676D0BC8);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC88, &qword_2676D0BD0);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC90, &qword_2676D0BD8);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC98, &qword_2676D0BE0);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v18);
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA0, &qword_2676D0BE8);
  OUTLINED_FUNCTION_3();
  v20 = v19;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA8, &unk_2676D0BF0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB0, &unk_2676D2A70);
  OUTLINED_FUNCTION_4_1(v27);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB8, &unk_2676D0C00);
  OUTLINED_FUNCTION_3();
  v629 = v30;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v33 = v617 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCC0, &unk_2676D2A80);
  OUTLINED_FUNCTION_4_1(v34);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v654 = sub_2676CB5AC();
  OUTLINED_FUNCTION_3();
  v655 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v40 - v39);
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v45 = OUTLINED_FUNCTION_4_1(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v49 = OUTLINED_FUNCTION_4_1(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v53 = OUTLINED_FUNCTION_4_1(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v60);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v62);
  v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v658 = v63;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v65);
  v627 = sub_2676CB62C();
  OUTLINED_FUNCTION_3();
  v635 = v66;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v69 - v68);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCC8, &unk_2676D0C40);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBF0, &qword_2676D0708);
  v74 = OUTLINED_FUNCTION_4_1(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_24_1();
  v686 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v82 = OUTLINED_FUNCTION_4_1(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v84);
  v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_3();
  v641 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v88);
  v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3();
  v659 = v89;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v93 = OUTLINED_FUNCTION_4_1(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD0, &unk_2676D0C60);
  OUTLINED_FUNCTION_4_1(v100);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v102);
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_3();
  v665 = v103;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v106);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_9_1();
  v673 = v108;
  v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v668 = v109;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  OUTLINED_FUNCTION_4_1(v113);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_9_1();
  v676 = v115;
  v677 = sub_2676C9C5C();
  OUTLINED_FUNCTION_3();
  v672 = v116;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_4();
  v670 = v118;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_24_1();
  v671 = v120;
  v678 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v682 = v121;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_3_2();
  v681 = v124 - v123;
  v684 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v687 = v125;
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_4();
  v669 = v127;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_10_4();
  v675 = v129;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_10_4();
  v679 = v131;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_10_4();
  v680 = v133;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v134);
  v136 = v617 - v135;
  v137 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v139 = v138;
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_3_2();
  v143 = v142 - v141;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v144 = sub_2676CBE4C();
  v145 = __swift_project_value_buffer(v144, qword_2801CDC90);
  v146 = *(v139 + 16);
  v685 = a1;
  v146(v143, a1, v137);
  v683 = v145;
  v147 = sub_2676CBE2C();
  v148 = sub_2676CC23C();
  v149 = os_log_type_enabled(v147, v148);
  v640 = v33;
  v620 = v20;
  if (v149)
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v632 = a2;
    v152 = v151;
    v688 = v151;
    *v150 = 136315138;
    sub_2676419A0(&qword_2801CC160, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v153 = sub_2676CC56C();
    v155 = v154;
    (*(v139 + 8))(v143, v137);
    v156 = sub_2676B0B84(v153, v155, &v688);

    *(v150 + 4) = v156;
    _os_log_impl(&dword_2675D4000, v147, v148, "#ReadingInputInterpreter user input: %s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v152);
    a2 = v632;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v139 + 8))(v143, v137);
  }

  sub_2676C9E5C();
  v157 = v687;
  v158 = *(v687 + 88);
  v159 = v684;
  v160 = v158(v136, v684);
  v161 = *MEMORY[0x277D5C168];
  v162 = *(v157 + 8);
  v163 = v136;
  v164 = v159;
  (v162)(v163, v159);
  v165 = v686;
  if (v160 == v161)
  {
    v166 = sub_2676CBE2C();
    v167 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v167))
    {
      v168 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v168);
      v171 = "#ReadingInputInterpreter received empty parse, treating as a skip";
LABEL_22:
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v169, v170, v171);
      OUTLINED_FUNCTION_4_6();
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v172 = v680;
  sub_2676C9E5C();
  if (v158(v172, v164) == *MEMORY[0x277D5C150])
  {
    v173 = OUTLINED_FUNCTION_49_1();
    v174(v173);
    (*(v682 + 32))(v681, v172, v678);
    v175 = sub_2676C9E8C();
    v177 = v176;
    OUTLINED_FUNCTION_61_1();
    v179 = v175 == 0xD000000000000018 && v178 == v177;
    if (v179 || (OUTLINED_FUNCTION_47_2(0xD000000000000018, v178) & 1) != 0)
    {

      v180 = sub_2676CBE2C();
      v181 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v181))
      {
        v182 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v182);
        OUTLINED_FUNCTION_4_18(&dword_2675D4000, v183, v184, "#ReadingInputInterpreter user tapped Next, skipping to next window");
        OUTLINED_FUNCTION_4_6();
      }

      v185 = OUTLINED_FUNCTION_21_7();
      v186(v185);
      v187 = xmmword_2676D0BB0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_61_1();
    v263 = v175 == 0xD00000000000001ALL && v262 == v177;
    if (v263 || (OUTLINED_FUNCTION_47_2(0xD00000000000001ALL, v262) & 1) != 0)
    {
      v264 = OUTLINED_FUNCTION_21_7();
      v265(v264);

LABEL_58:
      v187 = xmmword_2676D0BA0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_61_1();
    v278 = v175 == 0xD000000000000019 && v277 == v177;
    if (v278 || (OUTLINED_FUNCTION_47_2(0xD000000000000019, v277) & 1) != 0)
    {
      v279 = OUTLINED_FUNCTION_21_7();
      v280(v279);

LABEL_76:
      *a2 = 0;
      *(a2 + 8) = 0;
LABEL_77:
      *(a2 + 16) = 0;
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_61_1();
    if (v175 == 0xD00000000000001ALL && v315 == v177)
    {

      v296 = OUTLINED_FUNCTION_21_7();
LABEL_172:
      v297(v296, v298);
LABEL_173:
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_26;
    }

    v317 = OUTLINED_FUNCTION_47_2(0xD00000000000001ALL, v315);

    v318 = OUTLINED_FUNCTION_21_7();
    v319(v318);
    if (v317)
    {
      goto LABEL_173;
    }
  }

  else
  {
    (v162)(v172, v164);
  }

  sub_2676C9E5C();
  v188 = sub_2676C9E7C();
  v189 = OUTLINED_FUNCTION_49_1();
  v162(v189);
  if (v188)
  {
    v166 = sub_2676CBE2C();
    v190 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v190))
    {
      v191 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v191);
      v171 = "#ReadingInputResolver user rejected (said no) during reading, treating as a skip";
      goto LABEL_22;
    }

LABEL_23:

LABEL_24:
    v187 = xmmword_2676D0B90;
LABEL_25:
    *a2 = v187;
LABEL_26:
    v192 = 2;
LABEL_27:
    *(a2 + 16) = v192;
LABEL_28:
    v193 = MEMORY[0x277D5BC88];
LABEL_29:
    v194 = *v193;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCE0, &unk_2676D15A0);
    OUTLINED_FUNCTION_2_6();
    return (*(v195 + 104))(a2, v194);
  }

  sub_2676C9E5C();
  v197 = v676;
  sub_267637F04();
  v198 = OUTLINED_FUNCTION_49_1();
  v162(v198);
  v199 = OUTLINED_FUNCTION_26_2();
  v200 = v677;
  OUTLINED_FUNCTION_21_3(v199, v201, v677);
  if (v179)
  {
    sub_2675EB7EC(v197, &qword_2801CCCD8, &unk_2676D0C70);
    sub_2676C9E5C();
    sub_2676371E0();
    if (v202)
    {
      v203 = sub_2676CA77C();

      v204 = v673;
      sub_267698EA0(v203);

      v205 = OUTLINED_FUNCTION_49_1();
      v162(v205);
      v206 = v674;
      OUTLINED_FUNCTION_21_3(v204, 1, v674);
      if (!v179)
      {
        v207 = v668;
        KeyPath = v667;
        (*(v668 + 32))(v667, v204, v206);
        v209 = v664;
        v687 = *(v207 + 16);
        (v687)(v664, KeyPath, v206);
        sub_2676CB9FC();
        sub_2676419A0(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
        v210 = v663;
        sub_2676CA3FC();
        v211 = v666;
        OUTLINED_FUNCTION_21_3(v210, 1, v666);
        if (!v179)
        {
          OUTLINED_FUNCTION_57_3();
          v281 = v660;
          v282(v660, v210, v211);
          swift_getKeyPath();
          OUTLINED_FUNCTION_26_5();
          sub_2676419A0(v283, v284, MEMORY[0x277D5C780]);
          v285 = v656;
          v286 = v211;
          sub_2676CA3EC();

          v287 = v662;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v285, 1, v662);
          sub_2675EB7EC(v285, &qword_2801CC428, &unk_2676CEDD0);
          if (EnumTagSinglePayload == 1)
          {
            v289 = sub_2676CBE2C();
            v290 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v290))
            {
              v291 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v291);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v292, v293, "#ReadingInputInterpreter received read parse");
              OUTLINED_FUNCTION_4_6();
            }

            v294 = OUTLINED_FUNCTION_7_17();
            v295(v294);
            v296 = OUTLINED_FUNCTION_2_21();
            v298 = v674;
            goto LABEL_172;
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_50_2();
          v309 = v308;
          sub_2676CA3EC();

          v310 = OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_21_3(v310, v311, v287);
          if (v179)
          {
            v312 = &qword_2801CC428;
            v313 = &unk_2676CEDD0;
            v314 = v309;
          }

          else
          {
            v332 = v287;
            OUTLINED_FUNCTION_60_0();
            v333 = OUTLINED_FUNCTION_52_0();
            v334(v333, v309, v287);
            swift_getKeyPath();
            OUTLINED_FUNCTION_28_4();
            sub_2676419A0(v335, v336, MEMORY[0x277D5C4D0]);
            OUTLINED_FUNCTION_36_5();
            sub_2676CA87C();

            v337 = v645;
            OUTLINED_FUNCTION_21_3(v286, 1, v645);
            if (!v338)
            {
              OUTLINED_FUNCTION_57_3();
              v394 = OUTLINED_FUNCTION_52_0();
              v395(v394, v286, v337);
              swift_getKeyPath();
              sub_2676CA84C();

              v396 = v633;
              v397 = v627;
              (*(v635 + 104))(v633, *MEMORY[0x277D5C4E0], v627);
              OUTLINED_FUNCTION_17_2();
              __swift_storeEnumTagSinglePayload(v398, v399, v400, v397);
              v401 = *(v626 + 48);
              v402 = v165;
              v403 = v165;
              v404 = v636;
              sub_2675F95E4(v402, v636, &qword_2801CCBF0, &qword_2676D0708);
              sub_2675F95E4(v396, v404 + v401, &qword_2801CCBF0, &qword_2676D0708);
              v405 = OUTLINED_FUNCTION_59_1();
              OUTLINED_FUNCTION_21_3(v405, v406, v397);
              if (v407)
              {
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v408, v409, v410);
                OUTLINED_FUNCTION_63_1(v403);
                OUTLINED_FUNCTION_21_3(&qword_2801CCBF0 + v401, 1, v397);
                v206 = v674;
                if (v179)
                {
                  sub_2675EB7EC(&qword_2801CCBF0, &qword_2801CCBF0, &qword_2676D0708);
                  OUTLINED_FUNCTION_33_5();
LABEL_193:
                  v539 = sub_2676CBE2C();
                  v540 = sub_2676CC23C();
                  if (OUTLINED_FUNCTION_5_5(v540))
                  {
                    v541 = OUTLINED_FUNCTION_17_3();
                    OUTLINED_FUNCTION_9_4(v541);
                    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v542, v543, "#ReadingInputInterpreter received skip parse");
                    OUTLINED_FUNCTION_2_5();
                  }

                  OUTLINED_FUNCTION_27_5();
                  v544(v637, v337);
                  v545 = OUTLINED_FUNCTION_10_13();
                  v546(v545, v332);
                  v547 = OUTLINED_FUNCTION_7_17();
                  v548(v547);
LABEL_196:
                  v549 = OUTLINED_FUNCTION_2_21();
                  v551 = v206;
LABEL_197:
                  v550(v549, v551);
                  goto LABEL_24;
                }
              }

              else
              {
                v500 = v621;
                sub_2675F95E4(v404, v621, &qword_2801CCBF0, &qword_2676D0708);
                OUTLINED_FUNCTION_21_3(v404 + v401, 1, v397);
                v206 = v674;
                if (!v501)
                {
                  OUTLINED_FUNCTION_46_2();
                  v532 = v404 + v401;
                  v533 = v619;
                  (*(v531 + 32))(v619, v532, v397);
                  OUTLINED_FUNCTION_29_7();
                  sub_2676419A0(v534, v535, MEMORY[0x277D5C4F8]);
                  LODWORD(v687) = sub_2676CBF1C();
                  v536 = *(v404 + 8);
                  v536(v533, v397);
                  v537 = OUTLINED_FUNCTION_35_2(&v659);
                  sub_2675EB7EC(v537, v538, &qword_2676D0708);
                  OUTLINED_FUNCTION_53_3(v686);
                  v536(v500, v397);
                  v337 = v645;
                  OUTLINED_FUNCTION_53_3(v404);
                  OUTLINED_FUNCTION_33_5();
                  if (v687)
                  {
                    goto LABEL_193;
                  }

                  goto LABEL_181;
                }

                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v502, v503, v504);
                OUTLINED_FUNCTION_63_1(v686);
                OUTLINED_FUNCTION_27_5();
                v505(v500, v397);
              }

              sub_2675EB7EC(&qword_2801CCBF0, &qword_2801CCCC8, &unk_2676D0C40);
              OUTLINED_FUNCTION_33_5();
LABEL_181:
              OUTLINED_FUNCTION_27_5();
              v506(v637, v337);
              v507 = OUTLINED_FUNCTION_10_13();
              v508(v507, v332);
              goto LABEL_104;
            }

            (*(v287 + 8))(v281, v287);
            v312 = &qword_2801CC058;
            v313 = &unk_2676D0C50;
            v314 = v286;
          }

          sub_2675EB7EC(v314, v312, v313);
          v206 = v674;
LABEL_104:
          v339 = sub_2676CBE2C();
          v340 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v340))
          {
            v341 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v341);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v342, v343, "#ReadingInputInterpreter got an off topic read parse, returning .no");
            OUTLINED_FUNCTION_4_6();
          }

          v344 = OUTLINED_FUNCTION_7_17();
          v345(v344);
LABEL_107:
          v346 = OUTLINED_FUNCTION_2_21();
          v347(v346, v206);
LABEL_69:
          v193 = MEMORY[0x277D5BC80];
          goto LABEL_29;
        }

        sub_2675EB7EC(v210, &qword_2801CCCD0, &unk_2676D0C60);
        OUTLINED_FUNCTION_20_6();
        v212();
        sub_2676CBA6C();
        v213 = sub_2676419A0(&qword_2801CC680, MEMORY[0x277D5C828], MEMORY[0x277D5C810]);
        v214 = v657;
        sub_2676CA3FC();
        v215 = OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_21_3(v215, v216, v661);
        if (!v179)
        {
          OUTLINED_FUNCTION_57_3();
          OUTLINED_FUNCTION_14_11();
          v299();
          swift_getKeyPath();
          OUTLINED_FUNCTION_26_5();
          v302 = sub_2676419A0(v300, v301, MEMORY[0x277D5C780]);
          OUTLINED_FUNCTION_60_0();
          sub_2676CA3EC();

          OUTLINED_FUNCTION_42_2();
          OUTLINED_FUNCTION_21_3(v303, v304, KeyPath);
          v686 = v302;
          v687 = v213;
          if (v305)
          {
            sub_2675EB7EC(v206, &qword_2801CC428, &unk_2676CEDD0);
            v306 = v654;
            v307 = v650;
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_24_5();
            sub_2676419A0(v327, v328, MEMORY[0x277D5C6A8]);
            OUTLINED_FUNCTION_50_2();
            v329 = sub_2676CA8CC();

            (*(v659 + 8))(v206, KeyPath);
            OUTLINED_FUNCTION_60_0();
            sub_267698E74(v329);

            v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
            OUTLINED_FUNCTION_21_3(v206, 1, v330);
            v306 = v654;
            v307 = v650;
            if (v331)
            {
              sub_2675EB7EC(v206, &qword_2801CC168, &unk_2676CF510);
            }

            else
            {
              KeyPath = swift_getKeyPath();
              OUTLINED_FUNCTION_25_7();
              sub_2676419A0(v361, v362, MEMORY[0x277D5C470]);
              v363 = v624;
              sub_2676CA87C();

              OUTLINED_FUNCTION_14_2();
              (*(v364 + 8))(v206, v330);
              v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
              OUTLINED_FUNCTION_21_3(v363, 1, v365);
              if (!v366)
              {
                swift_getKeyPath();
                OUTLINED_FUNCTION_36_5();
                sub_2676CA84C();

                OUTLINED_FUNCTION_14_2();
                v498 = v365;
                v499 = KeyPath;
                (*(v497 + 8))(v363, v498);
                OUTLINED_FUNCTION_42_2();
                goto LABEL_117;
              }

              sub_2675EB7EC(v363, &qword_2801CC050, &unk_2676D0C20);
              OUTLINED_FUNCTION_42_2();
            }
          }

          v499 = v652;
          __swift_storeEnumTagSinglePayload(v652, 1, 1, v306);
LABEL_117:
          v367 = v651;
          v368 = *(v655 + 104);
          LODWORD(v685) = *MEMORY[0x277D5C478];
          v684 = v368;
          v368(v651);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v369, v370, v371, v306);
          v372 = *(v653 + 48);
          OUTLINED_FUNCTION_14_11();
          sub_2675F95E4(v373, v374, v375, &qword_2676CF520);
          sub_2675F95E4(v367, v307 + v372, &qword_2801CC618, &qword_2676CF520);
          OUTLINED_FUNCTION_14_12(v307);
          if (v179)
          {
            sub_2675EB7EC(v367, &qword_2801CC618, &qword_2676CF520);
            sub_2675EB7EC(v499, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_14_12(v307 + v372);
            v376 = v687;
            if (v179)
            {
              OUTLINED_FUNCTION_44_2();
              goto LABEL_149;
            }
          }

          else
          {
            v377 = v639;
            sub_2675F95E4(v307, v639, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_14_12(v307 + v372);
            if (!v378)
            {
              OUTLINED_FUNCTION_36_5();
              v412 = v634;
              (*(v411 + 32))(v634, v307 + v372, v306);
              OUTLINED_FUNCTION_27_6();
              sub_2676419A0(v413, v414, MEMORY[0x277D5C490]);
              v415 = sub_2676CBF1C();
              v416 = *(KeyPath + 8);
              KeyPath += 8;
              v416(v412, v306);
              sub_2675EB7EC(v651, &qword_2801CC618, &qword_2676CF520);
              sub_2675EB7EC(v652, &qword_2801CC618, &qword_2676CF520);
              v416(v377, v306);
              OUTLINED_FUNCTION_42_2();
              sub_2675EB7EC(v307, &qword_2801CC618, &qword_2676CF520);
              OUTLINED_FUNCTION_44_2();
              v376 = v687;
              if (v415)
              {
                goto LABEL_150;
              }

LABEL_126:
              swift_getKeyPath();
              v383 = v643;
              sub_2676CA3EC();

              v384 = OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_21_3(v384, v385, KeyPath);
              if (v179)
              {
                sub_2675EB7EC(v383, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                OUTLINED_FUNCTION_24_5();
                sub_2676419A0(v386, v387, MEMORY[0x277D5C6A8]);
                v388 = sub_2676CA8CC();

                (*(v659 + 8))(v383, KeyPath);
                v389 = v630;
                sub_267698E74(v388);

                v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
                v391 = OUTLINED_FUNCTION_34_1();
                OUTLINED_FUNCTION_21_3(v391, v392, v390);
                if (v393)
                {
                  sub_2675EB7EC(v389, &qword_2801CC168, &unk_2676CF510);
                }

                else
                {
                  v632 = a2;
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_25_7();
                  KeyPath = sub_2676419A0(v417, v418, MEMORY[0x277D5C470]);
                  v419 = v623;
                  sub_2676CA87C();

                  OUTLINED_FUNCTION_14_2();
                  (*(v420 + 8))(v389, v390);
                  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
                  v422 = OUTLINED_FUNCTION_26_2();
                  OUTLINED_FUNCTION_21_3(v422, v423, v421);
                  if (!v424)
                  {
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_46_2();
                    sub_2676CA84C();

                    OUTLINED_FUNCTION_14_2();
                    (*(v509 + 8))(v419, v421);
                    a2 = v632;
                    OUTLINED_FUNCTION_42_2();
                    OUTLINED_FUNCTION_44_2();
                    v306 = v654;
LABEL_144:
                    v427 = v647;
                    v684(v647, v685, v306);
                    OUTLINED_FUNCTION_17_2();
                    __swift_storeEnumTagSinglePayload(v428, v429, v430, v306);
                    v431 = *(v653 + 48);
                    v432 = v644;
                    sub_2675F95E4(v376, v644, &qword_2801CC618, &qword_2676CF520);
                    sub_2675F95E4(v427, v432 + v431, &qword_2801CC618, &qword_2676CF520);
                    OUTLINED_FUNCTION_14_12(v432);
                    if (!v179)
                    {
                      v444 = v631;
                      sub_2675F95E4(v432, v631, &qword_2801CC618, &qword_2676CF520);
                      OUTLINED_FUNCTION_14_12(v432 + v431);
                      if (!v445)
                      {
                        OUTLINED_FUNCTION_46_2();
                        v481 = v634;
                        (*(v480 + 32))(v634, v432 + v431, v306);
                        OUTLINED_FUNCTION_27_6();
                        sub_2676419A0(v482, v483, MEMORY[0x277D5C490]);
                        v484 = sub_2676CBF1C();
                        v485 = *(v376 + 8);
                        v485(v481, v306);
                        sub_2675EB7EC(v647, &qword_2801CC618, &qword_2676CF520);
                        sub_2675EB7EC(v648, &qword_2801CC618, &qword_2676CF520);
                        v485(v444, v306);
                        OUTLINED_FUNCTION_44_2();
                        sub_2675EB7EC(v432, &qword_2801CC618, &qword_2676CF520);
                        if ((v484 & 1) == 0)
                        {
                          goto LABEL_159;
                        }

LABEL_150:
                        v433 = sub_2676CBE2C();
                        v434 = sub_2676CC23C();
                        if (os_log_type_enabled(v433, v434))
                        {
                          *OUTLINED_FUNCTION_17_3() = 0;
                          OUTLINED_FUNCTION_62_0(&dword_2675D4000, v435, v436, "#ReadingInputInterpreter received reply all parse");
                          OUTLINED_FUNCTION_2_5();
                        }

                        v437 = swift_getKeyPath();
                        OUTLINED_FUNCTION_35_3(v437);

                        v438 = OUTLINED_FUNCTION_34_1();
                        OUTLINED_FUNCTION_21_3(v438, v439, KeyPath);
                        if (v179)
                        {
                          v440 = OUTLINED_FUNCTION_5_16();
                          v441(v440);
                          v442 = OUTLINED_FUNCTION_2_21();
                          v443(v442, v674);
                          sub_2675EB7EC(v306, &qword_2801CC428, &unk_2676CEDD0);
                          v462 = 0;
                          v464 = 0;
                        }

                        else
                        {
                          swift_getKeyPath();
                          OUTLINED_FUNCTION_50_2();
                          v462 = sub_2676CA89C();
                          v464 = v463;

                          v465 = OUTLINED_FUNCTION_5_16();
                          v466(v465);
                          v467 = OUTLINED_FUNCTION_2_21();
                          v468(v467, v674);
                          v469 = OUTLINED_FUNCTION_10_13();
                          v470(v469, KeyPath);
                        }

                        *a2 = v462;
                        *(a2 + 8) = v464;
                        v192 = 1;
                        goto LABEL_27;
                      }

                      v446 = OUTLINED_FUNCTION_35_2(&v676);
                      sub_2675EB7EC(v446, v447, &qword_2676CF520);
                      v448 = OUTLINED_FUNCTION_35_2(&v677);
                      sub_2675EB7EC(v448, v449, &qword_2676CF520);
                      OUTLINED_FUNCTION_27_5();
                      v450(v444, v306);
LABEL_158:
                      sub_2675EB7EC(v432, &qword_2801CC610, &unk_2676D0C10);
LABEL_159:
                      v451 = sub_2676CBE2C();
                      v452 = sub_2676CC23C();
                      if (os_log_type_enabled(v451, v452))
                      {
                        *OUTLINED_FUNCTION_17_3() = 0;
                        OUTLINED_FUNCTION_62_0(&dword_2675D4000, v453, v454, "#ReadingInputInterpreter received reply parse");
                        OUTLINED_FUNCTION_2_5();
                      }

                      v455 = swift_getKeyPath();
                      OUTLINED_FUNCTION_35_3(v455);

                      v456 = OUTLINED_FUNCTION_34_1();
                      OUTLINED_FUNCTION_21_3(v456, v457, KeyPath);
                      if (v179)
                      {
                        v458 = OUTLINED_FUNCTION_5_16();
                        v459(v458);
                        v460 = OUTLINED_FUNCTION_2_21();
                        v461(v460, v674);
                        sub_2675EB7EC(v306, &qword_2801CC428, &unk_2676CEDD0);
                        v471 = 0;
                        v473 = 0;
                      }

                      else
                      {
                        swift_getKeyPath();
                        OUTLINED_FUNCTION_50_2();
                        v471 = sub_2676CA89C();
                        v473 = v472;

                        v474 = OUTLINED_FUNCTION_5_16();
                        v475(v474);
                        v476 = OUTLINED_FUNCTION_2_21();
                        v477(v476, v674);
                        v478 = OUTLINED_FUNCTION_10_13();
                        v479(v478, KeyPath);
                      }

                      *a2 = v471;
                      *(a2 + 8) = v473;
                      goto LABEL_77;
                    }

                    sub_2675EB7EC(v427, &qword_2801CC618, &qword_2676CF520);
                    sub_2675EB7EC(v376, &qword_2801CC618, &qword_2676CF520);
                    OUTLINED_FUNCTION_14_12(v432 + v431);
                    if (!v179)
                    {
                      goto LABEL_158;
                    }

                    v307 = v432;
LABEL_149:
                    sub_2675EB7EC(v307, &qword_2801CC618, &qword_2676CF520);
                    goto LABEL_150;
                  }

                  sub_2675EB7EC(v419, &qword_2801CC050, &unk_2676D0C20);
                  a2 = v632;
                  OUTLINED_FUNCTION_42_2();
                }

                OUTLINED_FUNCTION_44_2();
              }

              v376 = v648;
              v425 = OUTLINED_FUNCTION_59_1();
              v306 = v654;
              __swift_storeEnumTagSinglePayload(v425, v426, 1, v654);
              goto LABEL_144;
            }

            v379 = OUTLINED_FUNCTION_35_2(&v682);
            sub_2675EB7EC(v379, v380, &qword_2676CF520);
            v381 = OUTLINED_FUNCTION_35_2(&v683);
            sub_2675EB7EC(v381, v382, &qword_2676CF520);
            (*(v655 + 8))(v377, v306);
            v376 = v687;
          }

          sub_2675EB7EC(v307, &qword_2801CC610, &unk_2676D0C10);
          OUTLINED_FUNCTION_44_2();
          goto LABEL_126;
        }

        sub_2675EB7EC(v214, &qword_2801CC620, &unk_2676D0C30);
        OUTLINED_FUNCTION_20_6();
        v217();
        v218 = sub_2676CB4EC();
        sub_2676419A0(&qword_2801CCA70, MEMORY[0x277D5C3A0], MEMORY[0x277D5C398]);
        OUTLINED_FUNCTION_45_2();
        v219 = v649;
        sub_2676CA3FC();
        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCE8, &unk_2676D0C80);
        OUTLINED_FUNCTION_48_2(v219, v221, v220);
        sub_2675EB7EC(v219, &qword_2801CCCC0, &unk_2676D2A80);
        if (v218 != 1)
        {
          v320 = sub_2676CBE2C();
          v321 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v321))
          {
            v322 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v322);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v323, v324, "#ReadingInputInterpreter received reply parse");
            OUTLINED_FUNCTION_4_6();
          }

          v325 = OUTLINED_FUNCTION_2_21();
          v326(v325, v206);
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_20_6();
        v222();
        sub_2676CB4CC();
        sub_2676419A0(&qword_2801CCA60, MEMORY[0x277D5C380], MEMORY[0x277D5C368]);
        v223 = v638;
        sub_2676CA3FC();
        v224 = v209;
        OUTLINED_FUNCTION_21_3(v223, 1, v646);
        if (!v179)
        {
          OUTLINED_FUNCTION_36_5();
          v348 = OUTLINED_FUNCTION_52_0();
          v349(v348);
          swift_getKeyPath();
          sub_2676419A0(&qword_2801CCD28, MEMORY[0x277D5C3C8], MEMORY[0x277D5C340]);
          OUTLINED_FUNCTION_46_2();
          sub_2676CA3EC();

          v350 = OUTLINED_FUNCTION_59_1();
          v351 = v628;
          v353 = __swift_getEnumTagSinglePayload(v350, v352, v628);
          sub_2675EB7EC(v224, &qword_2801CCCA8, &unk_2676D0BF0);
          if (v353 == 1)
          {
            v354 = sub_2676CBE2C();
            v355 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v355))
            {
              v356 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v356);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v357, v358, "#ReadingInputInterpreter received read parse");
              OUTLINED_FUNCTION_4_6();
            }

            v359 = OUTLINED_FUNCTION_51_3();
            v360(v359);
LABEL_171:
            v296 = OUTLINED_FUNCTION_2_21();
            v298 = v206;
            goto LABEL_172;
          }

          swift_getKeyPath();
          v491 = v622;
          sub_2676CA3EC();

          v492 = OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_21_3(v492, v493, v351);
          if (v179)
          {
            v494 = &qword_2801CCCA8;
            v495 = &unk_2676D0BF0;
            v496 = v491;
          }

          else
          {
            v515 = v620;
            v516 = OUTLINED_FUNCTION_52_0();
            v517(v516, v491, v351);
            swift_getKeyPath();
            OUTLINED_FUNCTION_28_4();
            sub_2676419A0(v518, v519, MEMORY[0x277D5C4D0]);
            OUTLINED_FUNCTION_46_2();
            sub_2676CA87C();

            v520 = OUTLINED_FUNCTION_59_1();
            v521 = v645;
            OUTLINED_FUNCTION_21_3(v520, v522, v645);
            if (!v523)
            {
              OUTLINED_FUNCTION_57_3();
              v559 = OUTLINED_FUNCTION_52_0();
              v560(v559, v224, v521);
              swift_getKeyPath();
              OUTLINED_FUNCTION_46_2();
              sub_2676CA84C();

              v561 = v618;
              v562 = v627;
              (*(v635 + 104))(v618, *MEMORY[0x277D5C4E0], v627);
              OUTLINED_FUNCTION_17_2();
              __swift_storeEnumTagSinglePayload(v563, v564, v565, v562);
              v566 = *(v626 + 48);
              v567 = v617[3];
              OUTLINED_FUNCTION_50_2();
              sub_2675F95E4(v568, v569, v570, &qword_2676D0708);
              sub_2675F95E4(v561, v567 + v566, &qword_2801CCBF0, &qword_2676D0708);
              OUTLINED_FUNCTION_21_3(v567, 1, v562);
              if (v571)
              {
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v572, v573, v574);
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v575, v576, v577);
                OUTLINED_FUNCTION_21_3(v567 + v566, 1, v562);
                if (v179)
                {
                  sub_2675EB7EC(v567, &qword_2801CCBF0, &qword_2676D0708);
LABEL_215:
                  v607 = sub_2676CBE2C();
                  v608 = sub_2676CC23C();
                  if (OUTLINED_FUNCTION_5_5(v608))
                  {
                    v609 = OUTLINED_FUNCTION_17_3();
                    OUTLINED_FUNCTION_9_4(v609);
                    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v610, v611, "#ReadingInputInterpreter received skip parse");
                    OUTLINED_FUNCTION_4_6();
                  }

                  OUTLINED_FUNCTION_27_5();
                  v612 = OUTLINED_FUNCTION_55_1();
                  v613(v612);
                  OUTLINED_FUNCTION_27_5();
                  v614 = OUTLINED_FUNCTION_54_3();
                  v615(v614);
                  OUTLINED_FUNCTION_27_5();
                  v616(v640, v646);
                  v549 = OUTLINED_FUNCTION_2_21();
                  v551 = v674;
                  goto LABEL_197;
                }
              }

              else
              {
                v578 = v617[0];
                sub_2675F95E4(v567, v617[0], &qword_2801CCBF0, &qword_2676D0708);
                OUTLINED_FUNCTION_21_3(v567 + v566, 1, v562);
                if (!v579)
                {
                  OUTLINED_FUNCTION_60_0();
                  v599 = v567 + v566;
                  v600 = v619;
                  (*(v598 + 32))(v619, v599, v562);
                  OUTLINED_FUNCTION_29_7();
                  sub_2676419A0(v601, v602, MEMORY[0x277D5C4F8]);
                  v603 = sub_2676CBF1C();
                  v604 = *(v206 + 8);
                  v604(v600, v562);
                  v605 = OUTLINED_FUNCTION_35_2(v642);
                  sub_2675EB7EC(v605, v606, &qword_2676D0708);
                  OUTLINED_FUNCTION_53_3(v224);
                  v604(v578, v562);
                  OUTLINED_FUNCTION_53_3(v567);
                  if (v603)
                  {
                    goto LABEL_215;
                  }

                  goto LABEL_210;
                }

                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v580, v581, v582);
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v583, v584, v585);
                OUTLINED_FUNCTION_27_5();
                v586(v578, v562);
              }

              sub_2675EB7EC(v567, &qword_2801CCCC8, &unk_2676D0C40);
LABEL_210:
              OUTLINED_FUNCTION_27_5();
              v587 = OUTLINED_FUNCTION_55_1();
              v588(v587);
              OUTLINED_FUNCTION_27_5();
              v589 = OUTLINED_FUNCTION_54_3();
              v590(v589);
              v206 = v674;
              goto LABEL_189;
            }

            (*(v515 + 8))(v223, v351);
            v494 = &qword_2801CC058;
            v495 = &unk_2676D0C50;
            v496 = v224;
          }

          sub_2675EB7EC(v496, v494, v495);
LABEL_189:
          v524 = sub_2676CBE2C();
          v525 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v525))
          {
            v526 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v526);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v527, v528, "#ReadingInputInterpreter got an off topic read parse, returning .no");
            OUTLINED_FUNCTION_4_6();
          }

          v529 = OUTLINED_FUNCTION_51_3();
          v530(v529);
          goto LABEL_107;
        }

        sub_2675EB7EC(v223, &qword_2801CCCB0, &unk_2676D2A70);
        OUTLINED_FUNCTION_20_6();
        v225();
        v226 = sub_2676CB50C();
        sub_2676419A0(&qword_2801CCA68, MEMORY[0x277D5C3C0], MEMORY[0x277D5C3B8]);
        OUTLINED_FUNCTION_45_2();
        v227 = v625;
        OUTLINED_FUNCTION_37_4();
        sub_2676CA3FC();
        v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF0, &unk_2676D2AC0);
        OUTLINED_FUNCTION_48_2(v227, v229, v228);
        sub_2675EB7EC(v227, &qword_2801CCC98, &qword_2676D0BE0);
        if (v226 != 1)
        {
          v486 = sub_2676CBE2C();
          v487 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v487))
          {
            v488 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v488);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v489, v490, "#ReadingInputInterpreter received repeat -> read parse");
            OUTLINED_FUNCTION_4_6();
          }

          goto LABEL_171;
        }

        OUTLINED_FUNCTION_20_6();
        v230();
        v231 = sub_2676CB49C();
        sub_2676419A0(&qword_2801CCA78, MEMORY[0x277D5C350], MEMORY[0x277D5C348]);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_37_4();
        sub_2676CA3FC();
        v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF8, &unk_2676D0C90);
        OUTLINED_FUNCTION_48_2(KeyPath, v233, v232);
        sub_2675EB7EC(KeyPath, &qword_2801CCC90, &qword_2676D0BD8);
        if (v231 != 1)
        {
          v510 = sub_2676CBE2C();
          v511 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v511))
          {
            v512 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v512);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v513, v514, "#ReadingInputInterpreter received skip parse");
            OUTLINED_FUNCTION_4_6();
          }

          goto LABEL_196;
        }

        v234 = OUTLINED_FUNCTION_30_5();
        v235(v234);
        v236 = sub_2676CB4DC();
        sub_2676419A0(&qword_2801CCA80, MEMORY[0x277D5C390], MEMORY[0x277D5C388]);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_37_4();
        sub_2676CA3FC();
        v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD00, &qword_2676D2AD0);
        OUTLINED_FUNCTION_48_2(KeyPath, v238, v237);
        sub_2675EB7EC(KeyPath, &qword_2801CCC88, &qword_2676D0BD0);
        if (v236 != 1)
        {
          v552 = sub_2676CBE2C();
          v553 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v553))
          {
            v554 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v554);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v555, v556, "#ReadingInputInterpreter received stop parse");
            OUTLINED_FUNCTION_4_6();
          }

          v557 = OUTLINED_FUNCTION_2_21();
          v558(v557, v206);
          goto LABEL_63;
        }

        v239 = OUTLINED_FUNCTION_30_5();
        v240(v239);
        v241 = sub_2676CBA9C();
        sub_2676419A0(&qword_2801CCD08, MEMORY[0x277D5C858], MEMORY[0x277D5C850]);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_37_4();
        sub_2676CA3FC();
        v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD10, &qword_2676D0CA0);
        OUTLINED_FUNCTION_48_2(KeyPath, v243, v242);
        sub_2675EB7EC(KeyPath, &qword_2801CCC80, &qword_2676D0BC8);
        if (v241 != 1)
        {
LABEL_211:
          v591 = sub_2676CBE2C();
          v592 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v592))
          {
            v593 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v593);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v594, v595, "#ReadingInputInterpreter received delete parse");
            OUTLINED_FUNCTION_4_6();
          }

          v596 = OUTLINED_FUNCTION_2_21();
          v597(v596, v206);
          goto LABEL_58;
        }

        v244 = OUTLINED_FUNCTION_30_5();
        v245(v244);
        sub_2676CB4FC();
        sub_2676419A0(&qword_2801CCD18, MEMORY[0x277D5C3B0], MEMORY[0x277D5C3A8]);
        OUTLINED_FUNCTION_45_2();
        v246 = v617[1];
        OUTLINED_FUNCTION_37_4();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD20, &qword_2676D0CA8);
        v247 = OUTLINED_FUNCTION_34_1();
        OUTLINED_FUNCTION_21_3(v247, v248, v249);
        if (!v179)
        {
          sub_2675EB7EC(v246, &qword_2801CCC78, &qword_2676D0BC0);
          goto LABEL_211;
        }

        (*(v668 + 8))(KeyPath, v206);
        v250 = &qword_2801CCC78;
        v251 = &qword_2676D0BC0;
        v252 = v246;
LABEL_66:
        sub_2675EB7EC(v252, v250, v251);
        v272 = sub_2676CBE2C();
        v273 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v273))
        {
          v274 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v274);
          OUTLINED_FUNCTION_4_18(&dword_2675D4000, v275, v276, "#ReadingInputResolver got an invalid parse or no response, returning .no");
          OUTLINED_FUNCTION_4_6();
        }

        goto LABEL_69;
      }
    }

    else
    {
      v271 = OUTLINED_FUNCTION_49_1();
      v162(v271);
      v204 = v673;
      __swift_storeEnumTagSinglePayload(v673, 1, 1, v674);
    }

    v250 = &qword_2801CC640;
    v251 = &unk_2676CF550;
    v252 = v204;
    goto LABEL_66;
  }

  v254 = v671;
  v253 = v672;
  (*(v672 + 32))(v671, v197, v200);
  v255 = v670;
  (*(v253 + 16))(v670, v254, v200);
  v256 = (*(v253 + 88))(v255, v200);
  if (v256 == *MEMORY[0x277D5BED8])
  {
    v257 = sub_2676CBE2C();
    v258 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v258))
    {
      v259 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v259);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v260, v261, "#ReadingInputInterpreter confirmed confirmation -> .read");
      v200 = v677;
      OUTLINED_FUNCTION_2_5();
    }

    (*(v253 + 8))(v254, v200);
    goto LABEL_173;
  }

  if (v256 == *MEMORY[0x277D5BED0])
  {
    v266 = sub_2676CBE2C();
    v267 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v267))
    {
      v268 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v268);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v269, v270, "#ReadingInputInterpreter rejected confirmation -> .cancel");
      v200 = v677;
      OUTLINED_FUNCTION_2_5();
    }

    (*(v253 + 8))(v254, v200);
LABEL_63:
    v187 = xmmword_2676D0B80;
    goto LABEL_25;
  }

  result = sub_2676CC58C();
  __break(1u);
  return result;
}

uint64_t sub_2676418F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2675F95E4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2676419A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal13ReadingOptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_267641A14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_267641A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_267641A98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void OUTLINED_FUNCTION_4_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return sub_2676CA3EC();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1, uint64_t a2)
{

  return sub_2676CC59C();
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

void OUTLINED_FUNCTION_62_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_1(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

id sub_267641DEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_267641E58(void *a1)
{
  [a1 setRequestedRepresentation_];
  [a1 setNetworkUsage_];

  return [a1 setIncludeSuggestionItems_];
}

id sub_267641EC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_267641DEC();
  v3 = [v2 messageRepository];

  v4 = sub_2676CBF3C();
  v5 = [v3 messageForSearchableItemIdentifier_];

  v6 = [v5 result];
  return v6;
}

uint64_t sub_267641F70@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v51 = *v1;
  v52 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v7 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_1_19();
    swift_once();
  }

  v11 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  v53 = v11;
  sub_2676CBDFC();
  v12 = &v10[*(v7 + 20)];
  *v12 = "FetchMailBody";
  *(v12 + 1) = 13;
  v12[16] = 2;
  sub_2676C8ABC();
  v13 = sub_2676CBFAC();
  v15 = v14;

  v16 = sub_267641EC4(v13, v15);

  if (v16)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v17 = sub_2676CBE4C();
    __swift_project_value_buffer(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    v20 = OUTLINED_FUNCTION_7_11();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v52;
    if (v22)
    {
      OUTLINED_FUNCTION_6_10();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2675D4000, v18, v19, "#ReadingUtil got EMMessage, about to request EMMessage representation", v24, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD88, &unk_2676D1078);
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    v25 = sub_2676CAFCC();
    v26 = objc_allocWithZone(MEMORY[0x277D06D60]);
    v27 = sub_267645BE4(sub_267641E58, 0);
    v28 = swift_allocObject();
    v29 = v51;
    *(v28 + 16) = v25;
    *(v28 + 24) = v29;
    aBlock[4] = sub_2676462A4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_267642EF8;
    aBlock[3] = &block_descriptor_34;
    v30 = _Block_copy(aBlock);

    v31 = [v16 requestRepresentationWithOptions:v27 completionHandler:v30];
    _Block_release(v30);

    sub_2676CAFBC();
    sub_2676CAF9C();
    if (v23)
    {

      v32 = sub_2676C8EBC();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v32);
    }

    else
    {

      v39 = sub_2676C8EBC();
      if (__swift_getEnumTagSinglePayload(v6, 1, v39) != 1)
      {

        v49 = v55;
        (*(*(v39 - 8) + 32))(v55, v6, v39);
        v46 = v49;
        v47 = 0;
        v45 = v39;
        goto LABEL_20;
      }
    }

    sub_2675EB7EC(v6, &qword_2801CBFE0, &qword_2676D1070);
    v40 = sub_2676CBE2C();
    v41 = sub_2676CC24C();
    v42 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_6_10();
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2675D4000, v40, v41, "#ReadingUtil could not get message content with EMContentRepresentation, returning nil", v44, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v33 = sub_2676CBE4C();
    __swift_project_value_buffer(v33, qword_2801CDC90);
    v34 = sub_2676CBE2C();
    v35 = sub_2676CC24C();
    v36 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_6_10();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2675D4000, v34, v35, "#ReadingUtil.fetchMailBody: EMMessage is not available, cannot request content, returning nil", v38, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }
  }

  v45 = sub_2676C8EBC();
  v46 = v55;
  v47 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
  sub_2676CC28C();
  sub_2676CBDFC();
  return sub_2675DE628(v10);
}

uint64_t sub_267642594@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2676CBF9C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2676C8FFC();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v80 - v13;
  if (a1)
  {
    v15 = a1;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);
    v17 = a1;
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC24C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v88 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_2676CC5FC();
      v24 = sub_2676B0B84(v22, v23, &v88);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2675D4000, v18, v19, "#ReadingUtil EMContentRepresentation throwing an error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26D5FEA80](v21, -1, -1);
      MEMORY[0x26D5FEA80](v20, -1, -1);
    }

    return swift_willThrow();
  }

  if (!a2)
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v39 = sub_2676CBE4C();
    __swift_project_value_buffer(v39, qword_2801CDC90);
    v40 = sub_2676CBE2C();
    v41 = sub_2676CC24C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2675D4000, v40, v41, "#ReadingUtil EMContentRepresentation is nil, returning nil", v42, 2u);
      MEMORY[0x26D5FEA80](v42, -1, -1);
    }

    goto LABEL_27;
  }

  v87 = v12;
  v26 = a2;
  v27 = [v26 contentURL];
  if (!v27)
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v43 = sub_2676CBE4C();
    __swift_project_value_buffer(v43, qword_2801CDC90);
    v44 = sub_2676CBE2C();
    v45 = sub_2676CC24C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2675D4000, v44, v45, "#ReadingUtil failed to retrieve content representation and/or content URL of it, returning nil", v46, 2u);
      MEMORY[0x26D5FEA80](v46, -1, -1);
    }

    goto LABEL_27;
  }

  v28 = v27;
  sub_2676C8FEC();

  (*(v87 + 32))(v14, v11, v8);
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v29 = sub_2676CBE4C();
  v86 = __swift_project_value_buffer(v29, qword_2801CDC90);
  v30 = sub_2676CBE2C();
  v31 = sub_2676CC23C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v26;
    v33 = a3;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2675D4000, v30, v31, "#ReadingUtil was able to continue with EMContentRepresentation", v34, 2u);
    v35 = v34;
    a3 = v33;
    v26 = v32;
    MEMORY[0x26D5FEA80](v35, -1, -1);
  }

  sub_2676CBF8C();
  sub_2676CBF2C();
  if (v3)
  {
    v36 = sub_2676CBE2C();
    v37 = sub_2676CC24C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2675D4000, v36, v37, "#ReadingUtil failed to convert URL to utf8 String", v38, 2u);
      MEMORY[0x26D5FEA80](v38, -1, -1);
    }

    (*(v87 + 8))(v14, v8);
LABEL_27:
    v47 = sub_2676C8EBC();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v47);
  }

  v85 = a3;

  v48 = sub_2676CBE2C();
  v49 = sub_2676CC23C();

  v50 = os_log_type_enabled(v48, v49);
  v84 = 0;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v81 = v51;
    v83 = swift_slowAlloc();
    v88 = v83;
    *v51 = 136315138;
    v52 = objc_opt_self();
    v82 = v49;
    v53 = v52;
    v54 = sub_2676CBF3C();
    v55 = [v53 ec:v54 partiallyRedactedStringForSubjectOrSummary:?];

    v56 = sub_2676CBF6C();
    v58 = v57;

    v59 = sub_2676B0B84(v56, v58, &v88);

    v60 = v81;
    *(v81 + 1) = v59;
    _os_log_impl(&dword_2675D4000, v48, v82, "#ReadingUtil content string: %s", v60, 0xCu);
    v61 = v83;
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x26D5FEA80](v61, -1, -1);
    MEMORY[0x26D5FEA80](v60, -1, -1);
  }

  v62 = objc_opt_self();
  v63 = sub_2676CBF3C();

  v64 = [v62 snippetFromHTMLBody:v63 options:49 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];

  v65 = v64;
  if (!v64)
  {
    sub_2676CBF6C();
    v65 = sub_2676CBF3C();
  }

  sub_2676CBF6C();

  v66 = sub_2676CBE2C();
  v67 = sub_2676CC23C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v83 = v68;
    v86 = swift_slowAlloc();
    v88 = v86;
    *v68 = 136315138;
    v69 = [objc_opt_self() ec:v65 partiallyRedactedStringForSubjectOrSummary:?];
    v82 = v67;
    v70 = v69;

    v71 = sub_2676CBF6C();
    v73 = v72;

    v74 = sub_2676B0B84(v71, v73, &v88);

    v75 = v83;
    *(v83 + 1) = v74;
    v76 = v75;
    _os_log_impl(&dword_2675D4000, v66, v82, "#ReadingUtil parsed body from snippet and returning: %s", v75, 0xCu);
    v77 = v86;
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x26D5FEA80](v77, -1, -1);
    MEMORY[0x26D5FEA80](v76, -1, -1);
  }

  else
  {
  }

  v78 = v85;
  sub_2676C8EAC();

  (*(v87 + 8))(v14, v8);
  v79 = sub_2676C8EBC();
  return __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
}

void sub_267642EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void *sub_267642F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_1_19();
    swift_once();
  }

  v8 = qword_2801D3F18;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v9 = &v7[*(v4 + 20)];
  *v9 = "FetchMailSummary";
  *(v9 + 1) = 16;
  v9[16] = 2;
  v10 = sub_267641EC4(a1, a2);
  if (!v10)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v17 = sub_2676CBE4C();
    __swift_project_value_buffer(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC24C();
    v20 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_6_10();
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2675D4000, v18, v19, "#ReadingUtil.fetchMailSummary: EMMessage is not available, cannot get generated summary, returning nil", v22, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 generatedSummary];
  if (!v12)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v23 = sub_2676CBE4C();
    __swift_project_value_buffer(v23, qword_2801CDC90);
    v24 = sub_2676CBE2C();
    v25 = sub_2676CC24C();
    v26 = OUTLINED_FUNCTION_7_11();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_6_10();
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2675D4000, v24, v25, "#ReadingUtil.fetchMailSummary: EMGeneratedSummary is not available, returning nil", v28, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 topLine];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 string];

    v15 = sub_2676CBF6C();
  }

LABEL_19:
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v7);
  return v15;
}

uint64_t sub_2676432A8()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v0;
  v2 = sub_2676C90CC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[9] = v3;
  OUTLINED_FUNCTION_4_1(v3);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267643390, 0, 0);
}

uint64_t sub_267643390()
{
  v32 = v0;
  if (qword_2801CBAA8 != -1)
  {
    OUTLINED_FUNCTION_1_19();
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = qword_2801D3F18;
  v0[11] = qword_2801D3F18;
  v4 = v3;
  sub_2676CBE0C();
  sub_2676CC29C();
  sub_2676CBDFC();
  v5 = v1 + *(v2 + 20);
  *v5 = "FetchMailHighlights";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v6 = sub_2676CBE4C();
  v0[12] = __swift_project_value_buffer(v6, qword_2801CDC90);
  v7 = sub_2676CBE2C();
  v8 = sub_2676CC23C();
  v9 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_6_10();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2675D4000, v7, v8, "#ReadingUtil.fetchMailHighlights", v11, 2u);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  type metadata accessor for CSQueryBuilder();
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = MEMORY[0x277D84F90];
  sub_267644630();

  sub_2676447A8();

  v13 = objc_opt_self();
  if ([v13 preferenceEnabled_])
  {
    sub_267644864();
  }

  else
  {
    sub_267644904();
  }

  if (([v13 preferenceEnabled_] & 1) == 0)
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    v17 = objc_opt_self();
    v18 = [v17 ef:objc_msgSend(objc_opt_self() dateHoursAgo:sel_consideredUrgentHourLimit)];
    sub_2676C909C();

    sub_267644AB4();

    (*(v15 + 8))(v14, v16);
  }

  v19 = sub_267644BC4();
  v21 = v20;
  v0[14] = v20;
  v22 = sub_2676CBE2C();
  v23 = sub_2676CC23C();
  v24 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2676B0B84(v19, v21, &v31);
    _os_log_impl(&dword_2675D4000, v22, v23, "#ReadingUtil.fetchMailHighlights query string: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  v28 = swift_task_alloc();
  v0[15] = v28;
  *v28 = v0;
  v28[1] = sub_267643728;
  v29 = OUTLINED_FUNCTION_8_18();

  return sub_267643B90(v29, v21);
}

uint64_t sub_267643728()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_267643AD4;
  }

  else
  {
    v5 = sub_267643834;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_267643834()
{
  v28 = v0;
  v1 = v0[16];
  v2 = sub_267630B8C();
  v3 = 0;
  v23 = v1 & 0xC000000000000001;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v5 = v1 + 32;
  v6 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v23)
    {
      v7 = MEMORY[0x26D5FE0E0](v3, v0[16]);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_22;
      }

      v7 = *(v5 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v25 = v7;
    sub_267643E44(&v25, &v26);

    if (v27)
    {
      v24 = v27;
      v9 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267606FE8(0, *(v6 + 16) + 1, 1, v6);
        v6 = v14;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      v12 = v24;
      if (v11 >= v10 >> 1)
      {
        sub_267606FE8(v10 > 1, v11 + 1, 1, v6);
        v12 = v24;
        v6 = v15;
      }

      *(v6 + 16) = v11 + 1;
      v13 = v6 + 24 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v12;
    }

    ++v3;
  }

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();
  v18 = OUTLINED_FUNCTION_7_11();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2675D4000, v16, v17, "#ReadingUtil.fetchMailHighlights found %ld results", v20, 0xCu);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  else
  {
  }

  v21 = v0[10];
  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v21);

  v22 = v0[1];

  v22(v6);
}

uint64_t sub_267643AD4()
{
  v1 = *(v0 + 80);

  sub_2676CC28C();
  sub_2676CBDFC();
  sub_2675DE628(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_267643B90(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_267643BB0, 0, 0);
}

uint64_t sub_267643BB0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD70, &qword_2676D1058);
  *v4 = v0;
  v4[1] = sub_267643CB8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002676D7250, sub_2676461D4, v3, v5);
}

uint64_t sub_267643CB8()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {
    v6 = sub_267643DE4;
  }

  else
  {

    v6 = sub_267643DC8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267643DE4()
{
  OUTLINED_FUNCTION_3_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267643E44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v44 = sub_2676CB3FC();
  v46 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = *a1;
  v15 = [v14 uniqueIdentifier];
  v16 = sub_2676CBF6C();
  v18 = v17;

  sub_267642F84(v16, v18);
  v20 = v19;

  if (v20)
  {
    v43 = a2;
    sub_2676CBFEC();

    v22 = v46;
    v23 = v44;
    (*(v46 + 32))(v13, v11, v44);
    v24 = [v14 uniqueIdentifier];
    v25 = sub_2676CBF6C();
    v40 = v26;
    v41 = v25;

    type metadata accessor for MailMessageConcept.Builder(0);
    swift_allocObject();
    v27 = sub_26761A7EC();
    v28 = *(v22 + 16);
    v42 = v13;
    v28(v8, v13, v23);
    v29 = 1;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
    v30 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body;
    swift_beginAccess();
    sub_267646164(v8, v27 + v30);
    swift_endAccess();
    sub_2675EB7EC(v8, &qword_2801CBFD0, &qword_2676CDEA0);
    sub_2676CBFEC();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
    v31 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type;
    swift_beginAccess();
    sub_267646164(v8, v27 + v31);
    swift_endAccess();
    sub_2675EB7EC(v8, &qword_2801CBFD0, &qword_2676CDEA0);
    v32 = sub_2676442C0();
    v33 = sub_26761A870(v32);

    sub_267645FA8([v14 attributeSet]);
    v35 = v45;
    if (v34)
    {
      sub_2676CBFEC();

      v29 = 0;
    }

    v36 = v43;
    __swift_storeEnumTagSinglePayload(v35, v29, 1, v23);
    v37 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
    swift_beginAccess();
    sub_267646164(v35, v33 + v37);
    swift_endAccess();
    sub_2675EB7EC(v35, &qword_2801CBFD0, &qword_2676CDEA0);
    type metadata accessor for MailMessageConcept(0);
    swift_allocObject();
    v38 = sub_26761A9A4(v33);
    result = (*(v46 + 8))(v42, v23);
    v39 = v40;
    *v36 = v41;
    v36[1] = v39;
    v36[2] = v38;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_2676442C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = sub_267645ED0([v0 attributeSet]);
  if (!v6)
  {
LABEL_7:
    v12 = sub_267645F48([v1 attributeSet], &selRef_authorEmailAddresses);
    if (v12)
    {
      if (*(v12 + 16))
      {
        v13 = *(v12 + 32);

        sub_2676CB33C();
        OUTLINED_FUNCTION_20_4();
        swift_allocObject();
        sub_2676CB32C();
        sub_2676CB21C();
        OUTLINED_FUNCTION_20_4();
        swift_allocObject();
        sub_2676CB20C();
        v29 = v13;
        sub_2676CBFEC();
        v14 = sub_2676CB3FC();
        v15 = OUTLINED_FUNCTION_3_16();
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
        sub_2676CB1FC();

        OUTLINED_FUNCTION_9_17();
        OUTLINED_FUNCTION_7_18();
        v18 = OUTLINED_FUNCTION_3_16();
        v30 = v14;
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
        sub_2676CB1DC();

        OUTLINED_FUNCTION_9_17();
        sub_2676CB2AC();

        v21 = sub_267645F48([v1 attributeSet], &selRef_authorNames);
        if (v21)
        {
          if (v21[2])
          {
            v23 = v21[4];
            v22 = v21[5];

            v24 = HIBYTE(v22) & 0xF;
            if ((v22 & 0x2000000000000000) == 0)
            {
              v24 = v23 & 0xFFFFFFFFFFFFLL;
            }

            if (v24)
            {

              sub_2676CBFEC();
LABEL_19:

              v26 = OUTLINED_FUNCTION_3_16();
              __swift_storeEnumTagSinglePayload(v26, v27, v28, v30);
              sub_2676CB2DC();

              sub_2675EB7EC(v5, &qword_2801CBFD0, &qword_2676CDEA0);
              v25 = sub_2676CB31C();

              return v25;
            }
          }
        }

        sub_2676CBFEC();
        goto LABEL_19;
      }
    }

    return 0;
  }

  v7 = v6;
  if (!sub_267630B8C())
  {

    goto LABEL_7;
  }

  sub_267692C1C();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D5FE0E0](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = CSPerson.dialogPerson.getter();

  return v10;
}

uint64_t sub_267644600()
{
  v1 = OUTLINED_FUNCTION_11_18();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_267644630()
{
  OUTLINED_FUNCTION_12_11();
  v2 = sub_2676CBF6C();
  v11[3] = MEMORY[0x277D837D0];
  v11[1] = 0x80000002676D7210;
  OUTLINED_FUNCTION_18_7(v2, v3, v4, v5, v6, v7, v8, v9, 0xD000000000000014);
  OUTLINED_FUNCTION_8_18();

  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_267645384(v1);

  return v0;
}

id sub_2676446E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2675E5E30(0, &qword_2801CCD58, 0x277CCA918);
  sub_2675E5E30(0, &qword_2801CCD60, 0x277CCA9C0);

  v8 = sub_26764515C(a1, a2);
  sub_2675EB89C(a3, v11);
  v9 = sub_2676451C0(v11);
  return sub_267645308(v8, v9, 0, a4, 0);
}

uint64_t sub_2676447A8()
{
  OUTLINED_FUNCTION_12_11();
  v2 = sub_2676CBF6C();
  v11[3] = MEMORY[0x277D837D0];
  v11[1] = 0xED0000786F626E69;
  OUTLINED_FUNCTION_18_7(v2, v3, v4, v5, v6, v7, v8, v9, 0x2E786F626C69616DLL);
  OUTLINED_FUNCTION_8_18();

  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_267645384(v1);

  return v0;
}

uint64_t sub_267644864()
{
  OUTLINED_FUNCTION_12_11();
  v2 = sub_2676CBF6C();
  v12 = MEMORY[0x277D839B0];
  v11[0] = 1;
  OUTLINED_FUNCTION_18_7(v2, v3, v4, v5, v6, v7, v8, v9, *v11);
  OUTLINED_FUNCTION_8_18();

  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_267645384(v1);

  return v0;
}

uint64_t sub_267644904()
{
  v1 = v0;
  sub_2675E5E30(0, &qword_2801CCD48, 0x277CCA920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2676D0FB0;
  v3 = sub_2676CBF6C();
  v4 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83B88];
  v21[0] = 1;
  v6 = sub_2676446E4(v3, v5, v21, 3);

  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v2 + 32) = v6;
  v7 = sub_2676CBF6C();
  v22 = v4;
  v21[0] = 2;
  v9 = sub_2676446E4(v7, v8, v21, 1);

  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v2 + 40) = v9;
  v10 = sub_2676CBF6C();
  v22 = MEMORY[0x277D839B0];
  LOBYTE(v21[0]) = 1;
  v18 = OUTLINED_FUNCTION_18_7(v10, v11, v12, v13, v14, v15, v16, v17, v21[0]);

  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v2 + 48) = v18;
  v19 = sub_267644DB0(v2, &selRef_orPredicateWithSubpredicates_);
  sub_267645384(v19);

  return v1;
}

uint64_t sub_267644AB4()
{
  v1 = v0;
  v2 = sub_2676CBF6C();
  v4 = v3;
  sub_2676C908C();
  v6 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v11[3] = MEMORY[0x277D839F8];
  v11[0] = v8;
  v9 = sub_2676446E4(v2, v4, v11, 3);

  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_267645384(v9);

  return v1;
}

uint64_t sub_267644BC4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_2676CC4EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return 0;
  }

  sub_2675E5E30(0, &qword_2801CCD48, 0x277CCA920);

  v4 = sub_267644DB0(v3, &selRef_andPredicateWithSubpredicates_);
  v5 = [v4 predicateFormat];

  sub_2676CBF6C();
  v24 = sub_2675E69E4();
  v23 = MEMORY[0x277D837D0];
  v6 = sub_2676CC34C();
  OUTLINED_FUNCTION_2_22(v6, v7, v8, v9, v10, v23, v24, v24, v24);

  OUTLINED_FUNCTION_2_22(v11, v12, v13, v14, v15);

  v21 = OUTLINED_FUNCTION_2_22(v16, v17, v18, v19, v20);

  return v21;
}

id sub_267644DB0(uint64_t a1, SEL *a2)
{
  sub_2675E5E30(0, &qword_2801CCD50, 0x277CCAC30);
  sub_2676CC0EC();
  OUTLINED_FUNCTION_8_18();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

id sub_267644E30()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  v1 = qword_2801CBA98;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_2676CC0EC();
  [v2 setFetchAttributes_];

  [v2 setMaxCount_];
  [v2 setEnableInstantAnswers_];
  sub_267646018(&unk_2878AD0B0, v2);

  return v2;
}

uint64_t sub_267644F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2676D0FC0;
  *(v0 + 32) = sub_2676CBF6C();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0xD00000000000001ALL;
  *(v0 + 56) = 0x80000002676D7290;
  *(v0 + 64) = sub_2676CBF6C();
  *(v0 + 72) = v2;
  *(v0 + 80) = sub_2676CBF6C();
  *(v0 + 88) = v3;
  *(v0 + 96) = sub_2676CBF6C();
  *(v0 + 104) = v4;
  *(v0 + 112) = sub_2676CBF6C();
  *(v0 + 120) = v5;
  *(v0 + 128) = sub_2676CBF6C();
  *(v0 + 136) = v6;
  *(v0 + 144) = sub_2676CBF6C();
  *(v0 + 152) = v7;
  *(v0 + 160) = sub_2676CBF6C();
  *(v0 + 168) = v8;
  *(v0 + 176) = sub_2676CBF6C();
  *(v0 + 184) = v9;
  *(v0 + 192) = sub_2676CBF6C();
  *(v0 + 200) = v10;
  *(v0 + 208) = sub_2676CBF6C();
  *(v0 + 216) = v11;
  *(v0 + 224) = sub_2676CBF6C();
  *(v0 + 232) = v12;
  *(v0 + 240) = sub_2676CBF6C();
  *(v0 + 248) = v13;
  *(v0 + 256) = sub_2676CBF6C();
  *(v0 + 264) = v14;
  *(v0 + 272) = sub_2676CBF6C();
  *(v0 + 280) = v15;
  *(v0 + 288) = sub_2676CBF6C();
  *(v0 + 296) = v16;
  *(v0 + 304) = sub_2676CBF6C();
  *(v0 + 312) = v17;
  *(v0 + 320) = sub_2676CBF6C();
  *(v0 + 328) = v18;
  *(v0 + 336) = sub_2676CBF6C();
  *(v0 + 344) = v19;
  *(v0 + 352) = sub_2676CBF6C();
  *(v0 + 360) = v20;
  *(v0 + 368) = sub_2676CBF6C();
  *(v0 + 376) = v21;
  *(v0 + 384) = sub_2676CBF6C();
  *(v0 + 392) = v22;
  *(v0 + 400) = sub_2676CBF6C();
  *(v0 + 408) = v23;
  result = sub_2676CBF6C();
  *(v0 + 416) = result;
  *(v0 + 424) = v25;
  qword_2801CCD40 = v0;
  return result;
}

id sub_26764515C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CBF3C();

  v3 = [swift_getObjCClassFromMetadata() expressionForKeyPath_];

  return v3;
}

id sub_2676451C0(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_2676CC57C();
    (*(v4 + 8))(v6, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() expressionForConstantValue_];
  swift_unknownObjectRelease();
  return v8;
}

id sub_267645308(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLeftExpression:a1 rightExpression:a2 modifier:a3 type:a4 options:a5];

  return v7;
}

uint64_t sub_267645384(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x26D5FDDA0]();
  sub_267645DB8(*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2676CC15C();
  swift_endAccess();
}

uint64_t sub_267645414()
{

  v0 = OUTLINED_FUNCTION_11_18();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_267645444(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 16) = MEMORY[0x277D84F90];
  v13 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    type metadata accessor for CSQueryBuilder();

    v14 = sub_267644E30();
    v15 = objc_allocWithZone(MEMORY[0x277CC3500]);
    v16 = sub_267645D54(a2, a3, v14);
    v26 = sub_2676461DC;
    v27 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2676457C8;
    v25 = &block_descriptor_1;
    v17 = _Block_copy(&aBlock);
    v18 = v16;

    [v18 setFoundItemsHandler_];
    _Block_release(v17);
    (*(v7 + 16))(v10, a1, v6);
    v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v20 = swift_allocObject();
    (*(v7 + 32))(v20 + v19, v10, v6);
    *(v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    v26 = sub_2676461FC;
    v27 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2676458E8;
    v25 = &block_descriptor_28;
    v21 = _Block_copy(&aBlock);

    [v18 setCompletionHandler_];
    _Block_release(v21);

    [v18 start];
  }

  else
  {
    aBlock = v12;
    sub_2676CC1AC();
  }
}

uint64_t sub_267645768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_2676A1EF4(v2);
  return swift_endAccess();
}

uint64_t sub_2676457C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2675E5E30(0, &qword_2801CCD80, 0x277CC34B0);
  v3 = sub_2676CC0FC();

  v2(v3);
}

uint64_t sub_26764584C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060);
    return sub_2676CC19C();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060);
    return sub_2676CC1AC();
  }
}

void sub_2676458E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t CSPerson.dialogPerson.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  sub_2676CB33C();
  OUTLINED_FUNCTION_20_4();
  swift_allocObject();
  sub_2676CB32C();
  v6 = [v0 handles];
  v7 = sub_2676CC0FC();

  if (*(v7 + 16))
  {

    sub_2676CB21C();
    OUTLINED_FUNCTION_20_4();
    swift_allocObject();
    sub_2676CB20C();
    sub_2676CBFEC();
    v8 = sub_2676CB3FC();
    v9 = OUTLINED_FUNCTION_3_16();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    sub_2676CB1FC();

    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_7_18();
    v12 = OUTLINED_FUNCTION_3_16();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
    sub_2676CB1DC();

    OUTLINED_FUNCTION_9_17();
    sub_2676CB1CC();

    sub_2676CB2BC();

    v15 = sub_267645E24(v1);
    if (v16)
    {
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_2676CBFEC();
LABEL_10:

        v19 = OUTLINED_FUNCTION_3_16();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
        sub_2676CB2DC();

        sub_2675EB7EC(v5, &qword_2801CBFD0, &qword_2676CDEA0);
        v18 = sub_2676CB31C();

        return v18;
      }
    }

    sub_2676CBFEC();
    goto LABEL_10;
  }

  return 0;
}

id sub_267645BE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_2676462CC;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_267645D00;
  v9[3] = &block_descriptor_40;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_267645D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_267645D54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2676CBF3C();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_267645DB8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2676CC11C();
  }

  return result;
}

void sub_267645DE4(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_26760747C();
    *v1 = v2;
  }
}

uint64_t sub_267645E24(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2676CBF6C();

  return v3;
}

uint64_t sub_267645ED0(void *a1)
{
  v2 = [a1 authors];

  if (!v2)
  {
    return 0;
  }

  sub_2675E5E30(0, &qword_2801CCD68, 0x277CC3450);
  v3 = sub_2676CC0FC();

  return v3;
}

uint64_t sub_267645F48(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2676CC0FC();

  return v4;
}

uint64_t sub_267645FA8(void *a1)
{
  v2 = [a1 subject];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2676CBF6C();

  return v3;
}

void sub_267646018(uint64_t a1, void *a2)
{
  v3 = sub_2676CC0EC();

  [a2 setBundleIDs_];
}

void (*sub_267646084(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_15_13(a1, a2, a3);
  sub_267692C1C();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D5FE0E0](v5, v4);
  }

  *v3 = v7;
  return sub_267646300;
}

void (*sub_2676460F0(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_15_13(a1, a2, a3);
  sub_267692C1C();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D5FE0E0](v5, v4);
  }

  *v3 = v7;
  return sub_26764615C;
}

uint64_t sub_267646164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2676461FC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD78, &unk_2676D1060) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26764584C(a1, v1 + v4, v5);
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_2676CC34C();
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return sub_2676CBFEC();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return sub_2675EB7EC(v0, v1, v2);
}

id OUTLINED_FUNCTION_18_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2676446E4(a1, a2, &a9, 4);
}

void sub_267646434()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v46[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCE0, &unk_2676D15A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  sub_26763E134(v3, &v46[-v11]);
  v13 = OUTLINED_FUNCTION_20_5();
  v15 = v14(v13);
  v16 = *MEMORY[0x277D5BC88];
  if (v15 != *MEMORY[0x277D5BC88])
  {
    v25 = OUTLINED_FUNCTION_20_5();
    v26(v25);
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
    v27 = *(v1 + 40);
    if (v27 >> 60 == 4)
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_267651508(v28);
      sub_267672430(v3, 0, v9);
      if ((*(v6 + 88))(v9, v4) == v16)
      {
        (*(v6 + 96))(v9, v4);
        v29 = v9[16];
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v30 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v30, qword_2801CDC90);
        v31 = sub_2676CBE2C();
        v32 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_7(v32))
        {
          v33 = OUTLINED_FUNCTION_17_3();
          *v33 = 0;
          _os_log_impl(&dword_2675D4000, v31, v32, "#ReadMailActingFlow InputAccepting user barged-in during readMessageAndOfferAction", v33, 2u);
          OUTLINED_FUNCTION_2_5();
        }

        OUTLINED_FUNCTION_53_0();
        sub_26764F31C();
        v34 = OUTLINED_FUNCTION_53_0();
        sub_2675D94FC(v34, v35, v29);
        sub_2676C974C();
        sub_267614A2C(v28);
        goto LABEL_21;
      }

      sub_267614A2C(v28);
      (*(v6 + 8))(v9, v4);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v38 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v38, qword_2801CDC90);
    v23 = sub_2676CBE2C();
    v39 = sub_2676CC23C();
    if (!OUTLINED_FUNCTION_35_0(v39))
    {
      goto LABEL_20;
    }

LABEL_19:
    v40 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_45_3(v40);
    OUTLINED_FUNCTION_13_15();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_30_6();
LABEL_20:

    sub_2676C973C();
    goto LABEL_21;
  }

  v17 = OUTLINED_FUNCTION_20_5();
  v18(v17);
  v19 = v12[16];
  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  if (*(v1 + 40) == 0x9000000000000008)
  {
    v20 = OUTLINED_FUNCTION_102_0();
    sub_2675D94FC(v20, v21, v19);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v22 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v22, qword_2801CDC90);
    v23 = sub_2676CBE2C();
    v24 = sub_2676CC23C();
    if (!OUTLINED_FUNCTION_35_0(v24))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_102_0();
  sub_26764F804();
  v36 = OUTLINED_FUNCTION_102_0();
  sub_2675D94FC(v36, v37, v19);
  sub_2676C974C();
LABEL_21:
  OUTLINED_FUNCTION_20_1();
}

void sub_267646858()
{
  if (__OFADD__(*(v0 + 24), 5))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
  }
}

void sub_2676468B4()
{
  OUTLINED_FUNCTION_21_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v40 = v6;
  v7 = OUTLINED_FUNCTION_8_10();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_3();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  v15 = *(v0 + 32);
  v16 = *(v15 + 16);
  v42 = v0;
  v43 = v12 + 8;

  v17 = 0;
  do
  {
    if (v16 == v17)
    {
      break;
    }

    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_57_0();
    sub_2675F95E4(v18, v19, v20, v21);
    ++v17;
    OUTLINED_FUNCTION_57_0();
    sub_2675F95E4(v22, v23, v24, v25);

    v26 = sub_2676C8B2C();
    sub_2675EB7EC(v14, &qword_2801CC3D8, &unk_2676CEC00);
    sub_2676C8BFC();
    OUTLINED_FUNCTION_2_6();
    (*(v27 + 8))(v12);
  }

  while ((v26 & 1) == 0);

  v28 = v42;
  if (*(*(v42 + 32) + 16) == 1)
  {
    v30 = v40;
    v29 = v41;
  }

  else
  {
    v30 = v40;
    v29 = v41;
    if (*(v42 + 24) || (*(v42 + 48) & 1) != 0)
    {
      sub_267646858();
    }
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_57_4();
  sub_2675F95E4(v31, v32, v33, v34);
  v35 = sub_2676C8C8C();
  __swift_getEnumTagSinglePayload(v30, 1, v35);
  v36 = OUTLINED_FUNCTION_14_3();
  sub_2675EB7EC(v36, v37, &unk_2676CD9E0);
  v38 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  sub_2675F95E4(v28 + v38, v29, &qword_2801CC380, &unk_2676CEF40);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  __swift_getEnumTagSinglePayload(v29, 1, v39);
  sub_2675EB7EC(v29, &qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_20_1();
}

void sub_267646C6C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v654 = v2;
  v3 = sub_2676C9E3C();
  OUTLINED_FUNCTION_3();
  v638 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v637 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v549 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v549 - v15;
  v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC750, &unk_2676D1310);
  OUTLINED_FUNCTION_3();
  v640 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v639 = v19;
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC758, &unk_2676CF7F0);
  OUTLINED_FUNCTION_3();
  v643 = v20;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v642 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE78, &qword_2676D1320);
  OUTLINED_FUNCTION_3();
  v608 = v24;
  v609 = v23;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v607 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE80, &qword_2676D1328);
  OUTLINED_FUNCTION_3();
  v611 = v28;
  v612 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  v610 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v32 = OUTLINED_FUNCTION_4_1(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v600 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v619 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_4_1(v36);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v618 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE88, &qword_2676D1330);
  OUTLINED_FUNCTION_3();
  v602 = v40;
  v603 = v39;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_1();
  v601 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE90, &qword_2676D1338);
  OUTLINED_FUNCTION_3();
  v605 = v44;
  v606 = v43;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  v604 = v46;
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE98, &qword_2676D1340);
  OUTLINED_FUNCTION_3();
  v626 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  v625 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA0, &qword_2676D1348);
  OUTLINED_FUNCTION_4_1(v50);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  v565 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA8, &unk_2676D1350);
  OUTLINED_FUNCTION_3();
  v559 = v54;
  v560 = v53;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  v558 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v57);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  v561 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEB0, &qword_2676D1360);
  OUTLINED_FUNCTION_3();
  v553 = v61;
  v554 = v60;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_9_1();
  v552 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_3();
  v556 = v65;
  v557 = v64;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_9_1();
  v555 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEB8, &qword_2676D1368);
  OUTLINED_FUNCTION_3();
  v563 = v69;
  v564 = v68;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_9_1();
  v562 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEC0, &qword_2676D1370);
  OUTLINED_FUNCTION_3();
  v567 = v73;
  v568 = v72;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_9_1();
  v566 = v75;
  v653 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v660 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_4();
  v620 = v78;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v79);
  v621 = &v549 - v80;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v81);
  v624 = &v549 - v82;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_24_1();
  v617 = v84;
  v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEC8, &qword_2676D1378);
  OUTLINED_FUNCTION_3();
  v615 = v85;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_9_1();
  v614 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED0, &unk_2676D1380);
  OUTLINED_FUNCTION_4_1(v88);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_9_1();
  v595 = v90;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_3();
  v656 = v91;
  v93 = MEMORY[0x28223BE20](v92);
  v623 = &v549 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_24_1();
  v622 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_24_1();
  v658 = v97;
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_24_1();
  v657 = v99;
  v594 = v100;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_24_1();
  v596 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v103);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_9_1();
  v551 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v106);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_9_1();
  v550 = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v110 = OUTLINED_FUNCTION_4_1(v109);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_4();
  v597 = v111;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_24_1();
  v589 = v113;
  Mail = type metadata accessor for GetMail(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_3_2();
  v629 = v116 - v115;
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE0, &qword_2676D13A0);
  OUTLINED_FUNCTION_3();
  v632 = v117;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_9_1();
  v631 = v119;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE8, &qword_2676D13A8);
  OUTLINED_FUNCTION_3();
  v635 = v120;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_9_1();
  v634 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEF0, &qword_2676D13B0);
  OUTLINED_FUNCTION_3();
  v592 = v124;
  v593 = v123;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_9_1();
  v590 = v126;
  v646 = sub_2676C9BFC();
  OUTLINED_FUNCTION_3();
  v645 = v127;
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_3_2();
  v647 = v130 - v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEF8, &qword_2676D13B8);
  OUTLINED_FUNCTION_3();
  v585 = v132;
  v586 = v131;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_9_1();
  v584 = v134;
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF00, &unk_2676D13C0);
  OUTLINED_FUNCTION_3();
  v588 = v135;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_9_1();
  v587 = v137;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF08, &unk_2676D26E0);
  OUTLINED_FUNCTION_3();
  v650 = v138;
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_4();
  v598 = v140;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_24_1();
  v648 = v142;
  v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF10, &unk_2676D13D0);
  OUTLINED_FUNCTION_3();
  v652 = v143;
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_4();
  v599 = v145;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_24_1();
  v649 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF18, &unk_2676D26F0);
  OUTLINED_FUNCTION_3();
  v582 = v149;
  v583 = v148;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_9_1();
  v581 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF20, &unk_2676D13E0);
  OUTLINED_FUNCTION_3();
  v576 = v153;
  v577 = v152;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_9_1();
  v575 = v155;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF28, &unk_2676D2700);
  OUTLINED_FUNCTION_3();
  v570 = v156;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_9_1();
  v569 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF30, &unk_2676D13F0);
  OUTLINED_FUNCTION_3();
  v573 = v160;
  v574 = v159;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_9_1();
  v571 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF38, &unk_2676D2710);
  OUTLINED_FUNCTION_3();
  v579 = v164;
  v580 = v163;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_9_1();
  v578 = v166;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v167 = sub_2676CBE4C();
  v628 = __swift_project_value_buffer(v167, qword_2801CDC90);
  v168 = sub_2676CBE2C();
  v169 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v169))
  {
    v170 = OUTLINED_FUNCTION_17_3();
    *v170 = 0;
    _os_log_impl(&dword_2675D4000, v168, v169, "#ReadMailActingFlow executing action", v170, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  v171 = v1[5];
  switch(v171 >> 60)
  {
    case 1uLL:
      v660 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v259 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
      v258 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);
      v260 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isReadInput);
      v261 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v262 = Mail;
      v263 = v629;
      sub_2675F95E4(v1 + v261, v629 + *(Mail + 24), &qword_2801CBFE8, &unk_2676CD9E0);
      v264 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      sub_2675F95E4(v1 + v264, v263 + v262[7], &qword_2801CC380, &unk_2676CEF40);
      sub_267651508(v171);

      sub_2676468B4();
      LODWORD(v264) = (v265 >> 6) & 1;
      v266 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isMostRecent);
      sub_2676149CC(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, v263 + v262[11]);
      sub_2676149CC(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags, v263 + v262[12]);
      sub_2676149CC(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, v263 + v262[14]);
      *v263 = v259;
      *(v263 + 8) = v258;
      *(v263 + 16) = v260;
      *(v263 + v262[8]) = v264;
      *(v263 + v262[9]) = v266;
      *(v263 + v262[10]) = 2;
      *(v263 + v262[13]) = 0;
      (*(v645 + 104))(v647, *MEMORY[0x277D5BDF0], v646);
      v267 = OUTLINED_FUNCTION_8_10();
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(v267, v268);
      OUTLINED_FUNCTION_26_6(v269);
      sub_267651FB8(&qword_2801CCFB8, type metadata accessor for GetMail, &unk_2676CEBB8);
      v270 = sub_2676C9F5C();
      OUTLINED_FUNCTION_87_1(v270);
      OUTLINED_FUNCTION_79();
      v271 = swift_allocObject();
      v613 = v171;
      v272 = v660;
      *(v271 + 16) = v660;
      *(v271 + 24) = v1;

      sub_267651AA0(v272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFC0, &qword_2676D1500);
      v273 = OUTLINED_FUNCTION_36_6(&qword_2801CCFC8);
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_60_1();
      sub_2676C942C();

      OUTLINED_FUNCTION_67_1();
      *&v662 = v273;
      v274 = OUTLINED_FUNCTION_4_19();
      v275 = v634;
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_57_4();
      sub_2676C941C();

      v276 = OUTLINED_FUNCTION_62_1();
      v277(v276);
      v216 = v636;
      OUTLINED_FUNCTION_84_0();
      *&v669 = v274;
      v278 = OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_53_4(v278);
      OUTLINED_FUNCTION_15_14();
      v279();
      OUTLINED_FUNCTION_24_6();
      sub_2676C960C();
      OUTLINED_FUNCTION_6_16();
      sub_2676C961C();
      OUTLINED_FUNCTION_20_7();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_19();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_11_19();
      v220 = v275;
      goto LABEL_26;
    case 2uLL:
      v237 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_79();
      v238 = swift_allocObject();
      *(v238 + 16) = v1;
      *(v238 + 24) = v237;
      v239 = sub_2676C9FCC();
      OUTLINED_FUNCTION_26_6(v239);

      sub_267651508(v171);

      v240 = sub_2676C9FDC();
      OUTLINED_FUNCTION_70_1(v240, MEMORY[0x277D5C1C8]);
      OUTLINED_FUNCTION_24_6();
      sub_2676C960C();
      OUTLINED_FUNCTION_6_16();
      sub_2676C961C();
      OUTLINED_FUNCTION_20_7();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_19();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      goto LABEL_19;
    case 3uLL:
      v16 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v241 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      v188 = sub_2676CBE2C();
      v242 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v242))
      {
        v3 = swift_slowAlloc();
        *v3 = 134218240;
        *(v3 + 4) = v16;
        *(v3 + 12) = 2048;
        *(v3 + 14) = v241;
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v243, v244, v245, v246, v247, 0x16u);
        OUTLINED_FUNCTION_30_6();
      }

      if (v241 < v16)
      {
        goto LABEL_87;
      }

      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      if (__OFADD__(v241, 1))
      {
        goto LABEL_89;
      }

      v651 = v241;
      v248 = v1[4];
      v650 = v241 + 1;
      v188 = sub_2676518B4(v16, v241 + 1, v248);
      v14 = v249;
      v3 = v250;
      v10 = v251;
      if ((v251 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_2676CC5BC();
      swift_unknownObjectRetain_n();
      v343 = swift_dynamicCastClass();
      if (!v343)
      {
        swift_unknownObjectRelease();
        v343 = MEMORY[0x277D84F90];
      }

      v344 = *(v343 + 16);

      if (__OFSUB__(v10 >> 1, v3))
      {
        goto LABEL_92;
      }

      if (v344 != (v10 >> 1) - v3)
      {
        goto LABEL_93;
      }

      v3 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v253 = v653;
      v10 = v617;
      if (v3)
      {
        goto LABEL_36;
      }

      v3 = MEMORY[0x277D84F90];
      goto LABEL_35;
    case 4uLL:
      v188 = (v171 & 0xFFFFFFFFFFFFFFFLL);
      v658 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v190 = v1[3];
      v189 = v1[4];
      v191 = *(v189 + 16);
      v652 = v1;
      v613 = v171;
      if (v190 >= v191)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        do
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          swift_unknownObjectRelease_n();
LABEL_17:
          sub_267651620(v188, v14, v3, v10);
          v3 = v252;
          v253 = v653;
          v10 = v617;
LABEL_35:
          swift_unknownObjectRelease();
LABEL_36:
          v613 = v171;
          v345 = *(v3 + 16);
          v346 = MEMORY[0x277D84F90];
          v649 = v3;
          if (v345)
          {
            v648 = v16;
            v652 = v1;
            *&v661 = MEMORY[0x277D84F90];
            sub_2676C2950(0, v345, 0);
            v346 = v661;
            v171 = v3 + ((*(v656 + 80) + 32) & ~*(v656 + 80));
            v656 = *(v656 + 72);
            v655 = v658 + 8;
            v347 = (v660 + 32);
            do
            {
              v348 = v657;
              sub_2675F95E4(v171, v657, &qword_2801CC3D8, &unk_2676CEC00);
              sub_26763DE18(v348, v658);

              v3 = *v347;
              OUTLINED_FUNCTION_66_2();
              (v3)();
              *&v661 = v346;
              v349 = v253;
              v351 = *(v346 + 16);
              v350 = *(v346 + 24);
              if (v351 >= v350 >> 1)
              {
                sub_2676C2950(v350 > 1, v351 + 1, 1);
                v346 = v661;
              }

              *(v346 + 16) = v351 + 1;
              (v3)(v346 + ((*(v660 + 80) + 32) & ~*(v660 + 80)) + *(v660 + 72) * v351, v10, v349);
              v171 += v656;
              --v345;
              v253 = v349;
            }

            while (v345);
            v1 = v652;
            v16 = v648;
          }

          OUTLINED_FUNCTION_82();
          v352 = swift_allocObject();
          *(v352 + 16) = v346;
          v188 = v1[3];
          v14 = v651;
        }

        while (v651 < v188);
        v353 = v352;
        v354 = v1[4];
        v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF90, &unk_2676D1450);
        v356 = v14 < *(v354 + 16) - 1;
        *&v661 = sub_2676518B4(v188, v650, v354);
        *(&v661 + 1) = v357;
        *&v662 = v358;
        *(&v662 + 1) = v359;
        v360 = swift_allocObject();
        *(v360 + 16) = v649;
        *(v360 + 24) = v1;
        *(v360 + 32) = v356;
        *(v360 + 40) = v353;

        v361 = sub_2676C9F3C();
        OUTLINED_FUNCTION_93_0(v361);
        v362 = swift_allocObject();
        v362[2] = v1;
        v362[3] = v16;
        v362[4] = v14;
        v363 = sub_2676148C4(&qword_2801CCF98, &qword_2801CCF90, &unk_2676D1450, MEMORY[0x277D5C198]);

        OUTLINED_FUNCTION_34_5();
        sub_2676C938C();

        *(&v662 + 1) = v616;
        *&v668 = v355;
        *(&v668 + 1) = v363;
        OUTLINED_FUNCTION_1_20();
        v364 = OUTLINED_FUNCTION_56_1();
        OUTLINED_FUNCTION_53_4(v364);
        OUTLINED_FUNCTION_22_6();
        v365();
        OUTLINED_FUNCTION_24_6();
        sub_2676C960C();
        OUTLINED_FUNCTION_6_16();
        sub_2676C961C();
        OUTLINED_FUNCTION_20_7();
        sub_2676C961C();
        OUTLINED_FUNCTION_5_17();
        sub_2676C961C();
        OUTLINED_FUNCTION_7_19();
        sub_2676C961C();
        OUTLINED_FUNCTION_5_17();
        sub_2676C961C();
        OUTLINED_FUNCTION_11_19();
        v366 = OUTLINED_FUNCTION_6_2();
        v367(v366);
      }

      else
      {
        LODWORD(v657) = v191 > 1;
        v192 = v622;
        sub_2675F95E4(v189 + ((*(v656 + 80) + 32) & ~*(v656 + 80)) + *(v656 + 72) * v190, v622, &qword_2801CC3D8, &unk_2676CEC00);
        v193 = *(v659 + 12);
        v194 = *(v192 + v193);
        v195 = *(v192 + v193 + 8);
        v196 = v623;
        v197 = &v623[v193];
        v198 = v660;
        v659 = *(v660 + 32);
        v199 = OUTLINED_FUNCTION_102_0();
        v200 = v653;
        v201(v199);
        *v197 = v194;
        *(v197 + 1) = v195;
        (*(v198 + 16))(v624, v196, v200);

        v202 = OUTLINED_FUNCTION_65_0();
        sub_2675EB7EC(v202, v203, &unk_2676CEC00);
        v204 = v652;
        sub_2676149CC(v652 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, &v668);
        sub_2676468B4();
        LOBYTE(v194) = (v205 & 0x30) != 0;
        v206 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil;
        Body = type metadata accessor for ReadBody(0);
        *(&v662 + 1) = Body;
        v208 = sub_267651FB8(&qword_2801CCF70, type metadata accessor for ReadBody, &unk_2676D0A38);
        v209 = OUTLINED_FUNCTION_53_4(v208);
        sub_2676149CC(v204 + v206, v209 + Body[7]);
        OUTLINED_FUNCTION_75_0();
        v659();
        sub_267614E14(&v668, v209 + Body[5]);
        *(v209 + Body[6]) = v194;
        *(v209 + Body[8]) = v657;
        v210 = sub_2676C9EFC();
        OUTLINED_FUNCTION_26_6(v210);
        OUTLINED_FUNCTION_46_3();
        sub_2676C9F0C();
        v211 = sub_2676C9EDC();

        *&v661 = v211;
        OUTLINED_FUNCTION_79();
        v212 = swift_allocObject();
        v213 = v658;
        *(v212 + 16) = v204;
        *(v212 + 24) = v213;

        sub_267651508(v213);
        v214 = MEMORY[0x277D5C188];
        OUTLINED_FUNCTION_34_5();
        v215 = v625;
        OUTLINED_FUNCTION_60_1();
        sub_2676C93DC();

        v216 = v627;
        *(&v662 + 1) = v627;
        *&v668 = v209;
        *(&v668 + 1) = v214;
        v217 = OUTLINED_FUNCTION_56_1();
        v218 = OUTLINED_FUNCTION_53_4(v217);
        (*(v626 + 16))(v218, v215, v216);
        OUTLINED_FUNCTION_24_6();
        sub_2676C960C();
        OUTLINED_FUNCTION_6_16();
        sub_2676C961C();
        OUTLINED_FUNCTION_20_7();
        sub_2676C961C();
        OUTLINED_FUNCTION_5_17();
        sub_2676C961C();
        OUTLINED_FUNCTION_7_19();
        sub_2676C961C();
        OUTLINED_FUNCTION_5_17();
        sub_2676C961C();
        OUTLINED_FUNCTION_11_19();
        v220 = v215;
LABEL_26:
        v219(v220, v216);
      }

LABEL_49:
      v342 = v613;
LABEL_50:
      sub_267614A2C(v342);
      goto LABEL_51;
    case 5uLL:
      v188 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v3 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v280 = v1[3];
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      if ((v280 & 0x8000000000000000) != 0)
      {
        goto LABEL_88;
      }

      LODWORD(v650) = v10;
      v649 = v3;
      v651 = v14;
      v655 = v188;
      v613 = v171;
      v652 = v1;
      v281 = v1[4];
      if (v280 >= *(v281 + 16))
      {
        goto LABEL_90;
      }

      v282 = v657;
      sub_2675F95E4(v281 + ((*(v656 + 80) + 32) & ~*(v656 + 80)) + *(v656 + 72) * v280, v657, &qword_2801CC3D8, &unk_2676CEC00);
      v283 = *(v659 + 12);
      v284 = *(v282 + v283);
      v285 = *(v282 + v283 + 8);
      v286 = v658;
      v287 = (v658 + v283);
      v288 = v660;
      v289 = OUTLINED_FUNCTION_65_0();
      v290 = v653;
      v291(v289);
      *v287 = v284;
      v287[1] = v285;
      v292 = *(v288 + 16);
      v293 = v620;
      v292(v620, v286, v290);
      sub_267651508(v613);
      v294 = v651;

      v295 = OUTLINED_FUNCTION_6_2();
      sub_2675EB7EC(v295, v296, &unk_2676CEC00);
      v297 = v621;
      sub_267697B4C(v650, v621);
      v298 = *(v288 + 8);
      v660 = v288 + 8;
      (v298)(v293, v290);
      sub_2676C919C();
      v299 = sub_2676C918C();
      v659 = v298;
      if (v299)
      {
        v300 = v652;
        sub_2676149CC(v652 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v661);
        v301 = OUTLINED_FUNCTION_65_2();
        (v292)(v301);
        OUTLINED_FUNCTION_95_1();
        v302 = *(v300 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals);
        v303 = OUTLINED_FUNCTION_94_1();
        v665 = 0u;
        v666 = 0u;
        v667 = 0;
        v304 = OUTLINED_FUNCTION_7_13(v303);
        v305 = v302;
        sub_2676C9B8C();
        v306 = OUTLINED_FUNCTION_92_0();
        v307 = type metadata accessor for ReplyMailSceneHostPlan(v306);
        v308 = OUTLINED_FUNCTION_7_13(v307);
        sub_26766FFC0(&v661, v293, v649, v294, v305, &v668, v304, &v665, v308, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559);
        *&v661 = v309;
        v310 = OUTLINED_FUNCTION_8_10();
        v312 = __swift_instantiateConcreteTypeFromMangledNameV2(v310, v311);
        OUTLINED_FUNCTION_26_6(v312);
        OUTLINED_FUNCTION_46_3();
        v313 = sub_2676C94CC();
        OUTLINED_FUNCTION_87_1(v313);
        OUTLINED_FUNCTION_31_4();
        v316 = sub_2676148C4(v314, &qword_2801CCF60, &qword_2676D1410, v315);
        OUTLINED_FUNCTION_63_2();
        v317 = v601;
        sub_2676C937C();

        OUTLINED_FUNCTION_79();
        v318 = swift_allocObject();
        v319 = v655;
        *(v318 + 16) = v300;
        *(v318 + 24) = v319;

        sub_267651508(v319);
        *&v661 = v300;
        *(&v661 + 1) = &type metadata for SendMailResult;
        *&v662 = v316;
        v320 = OUTLINED_FUNCTION_8_19();
        v321 = v603;
        sub_2676C938C();

        (*(v602 + 8))(v317, v321);
        *(&v669 + 1) = v606;
        *&v661 = v321;
        *(&v661 + 1) = v320;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v668);
        OUTLINED_FUNCTION_22_6();
        v322();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v668);
        OUTLINED_FUNCTION_24_6();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v661);
        v323 = OUTLINED_FUNCTION_6_2();
        v324(v323);
      }

      else
      {
        if (v294)
        {
          v368 = v619;
          sub_2676C8EAC();
          v369 = 0;
        }

        else
        {
          v369 = 1;
          v368 = v619;
        }

        v370 = sub_2676C8EBC();
        __swift_storeEnumTagSinglePayload(v368, v369, 1, v370);
        v371 = v652;
        sub_2676149CC(v652 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v661);
        v372 = OUTLINED_FUNCTION_65_2();
        (v292)(v372);
        OUTLINED_FUNCTION_95_1();
        sub_2675F95E4(v368, v600, &qword_2801CBFE0, &qword_2676D1070);
        v373 = *(v371 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals);
        v374 = OUTLINED_FUNCTION_94_1();
        v665 = 0u;
        v666 = 0u;
        v667 = 0;
        OUTLINED_FUNCTION_7_13(v374);
        v375 = v373;
        sub_2676C9B8C();
        v376 = OUTLINED_FUNCTION_92_0();
        v377 = type metadata accessor for ReplyMailPlan(v376);
        OUTLINED_FUNCTION_7_13(v377);
        OUTLINED_FUNCTION_57_0();
        sub_267670F48();
        *&v661 = v378;
        v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF50, &qword_2676D1408);
        OUTLINED_FUNCTION_7_13(v379);
        OUTLINED_FUNCTION_46_3();
        *&v661 = sub_2676C94CC();
        OUTLINED_FUNCTION_31_4();
        v382 = sub_2676148C4(v380, &qword_2801CCF50, &qword_2676D1408, v381);
        OUTLINED_FUNCTION_63_2();
        sub_2676C937C();

        OUTLINED_FUNCTION_79();
        v383 = swift_allocObject();
        v384 = v655;
        *(v383 + 16) = v371;
        *(v383 + 24) = v384;

        sub_267651508(v384);
        *&v661 = v379;
        *(&v661 + 1) = &type metadata for SendMailResult;
        *&v662 = v382;
        v385 = OUTLINED_FUNCTION_8_19();
        v386 = v609;
        OUTLINED_FUNCTION_57_4();
        sub_2676C938C();

        v387 = OUTLINED_FUNCTION_8_10();
        v388(v387);
        *(&v669 + 1) = v612;
        *&v661 = v386;
        *(&v661 + 1) = v385;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v668);
        OUTLINED_FUNCTION_22_6();
        v389();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v668);
        OUTLINED_FUNCTION_24_6();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v661);
        v390 = OUTLINED_FUNCTION_6_2();
        v391(v390);
        sub_2675EB7EC(v619, &qword_2801CBFE0, &qword_2676D1070);
      }

      sub_2676C961C();
      OUTLINED_FUNCTION_18_8();
      sub_2676C961C();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v661);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v664);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v661);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v664);
      OUTLINED_FUNCTION_28_5();
      (v659)(v297, v653);
      goto LABEL_49;
    case 6uLL:
      v325 = v171 & 0xFFFFFFFFFFFFFFFLL;
      v613 = v1[5];
      v326 = v613;
      v327 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v328 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v329 = *(v325 + 32);
      LODWORD(v660) = *(v325 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC540, &qword_2676D1400);
      OUTLINED_FUNCTION_92_0();
      sub_2676C94AC();
      *(swift_allocObject() + 16) = xmmword_2676CDE20;
      sub_267651508(v326);

      sub_2676C948C();
      v330 = sub_2676C925C();

      *&v661 = v330;
      v331 = sub_2676C934C();
      v332 = MEMORY[0x277D5B788];
      sub_2676C95AC();

      v333 = swift_allocObject();
      *(v333 + 16) = v1;
      *(v333 + 24) = v327;
      *(v333 + 32) = v328;
      *(v333 + 40) = v329;
      *(v333 + 48) = v660;

      sub_267651508(v327);
      *&v661 = v331;
      *(&v661 + 1) = v332;
      swift_getOpaqueTypeConformance2();
      v334 = v642;
      OUTLINED_FUNCTION_57_4();
      sub_2676C938C();

      v335 = OUTLINED_FUNCTION_62_1();
      v336(v335);
      v216 = v644;
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_1_20();
      v337 = OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_53_4(v337);
      OUTLINED_FUNCTION_22_6();
      v338();
      OUTLINED_FUNCTION_24_6();
      sub_2676C960C();
      OUTLINED_FUNCTION_6_16();
      sub_2676C961C();
      OUTLINED_FUNCTION_20_7();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_19();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_11_19();
      v220 = v334;
      goto LABEL_26;
    case 7uLL:
      v254 = *((v171 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_79();
      v255 = swift_allocObject();
      *(v255 + 16) = v1;
      *(v255 + 24) = v254;
      v256 = sub_2676C9FCC();
      OUTLINED_FUNCTION_26_6(v256);

      sub_267651508(v171);
      sub_267651508(v254);
      v257 = sub_2676C9FDC();
      OUTLINED_FUNCTION_70_1(v257, MEMORY[0x277D5C1C8]);
      OUTLINED_FUNCTION_24_6();
      sub_2676C960C();
      OUTLINED_FUNCTION_38_3();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_8();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_19();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
LABEL_19:

      OUTLINED_FUNCTION_28_5();
      goto LABEL_28;
    case 8uLL:
      sub_267651508(v1[5]);

      v339 = v637;
      sub_2676C9E2C();
      *(&v662 + 1) = v3;
      v663 = MEMORY[0x277D5C0F0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v661);
      v341 = v638;
      (*(v638 + 16))(boxed_opaque_existential_1, v339, v3);
      OUTLINED_FUNCTION_24_6();
      sub_2676C961C();
      OUTLINED_FUNCTION_38_3();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_8();
      sub_2676C961C();
      OUTLINED_FUNCTION_28_5();
      (*(v341 + 8))(v339, v3);
      goto LABEL_28;
    case 9uLL:
      switch(__ROR8__(v171 + 0x7000000000000000, 3))
      {
        case 1:
          v442 = sub_2676C9FCC();
          OUTLINED_FUNCTION_43_1(v442);

          *&v661 = sub_2676C9FDC();

          v443 = MEMORY[0x277D5C1C8];
          OUTLINED_FUNCTION_34_5();
          v399 = v575;
          OUTLINED_FUNCTION_66_2();
          sub_2676C938C();

          v234 = v577;
          *(&v662 + 1) = v577;
          *&v668 = v14;
          *(&v668 + 1) = v443;
          OUTLINED_FUNCTION_1_20();
          v444 = OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_53_4(v444);
          OUTLINED_FUNCTION_23_7();
          v445();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          goto LABEL_62;
        case 2:
          v410 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput);
          v411 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_globals);
          v663 = 0;
          v661 = 0u;
          v662 = 0u;
          OpaqueTypeConformance2 = 0;
          v668 = 0u;
          v669 = 0u;
          v412 = OUTLINED_FUNCTION_102_0();
          v414 = __swift_instantiateConcreteTypeFromMangledNameV2(v412, v413);
          OUTLINED_FUNCTION_43_1(v414);

          sub_2676A2C54(v410, 0x7265646E6573, 0xE600000000000000, v411, &v661, &v668);
          OUTLINED_FUNCTION_93_0(v415);
          v416 = sub_2676148C4(&qword_2801CD008, &qword_2801CD000, &unk_2676D27D0, &unk_2676D3198);

          OUTLINED_FUNCTION_34_5();
          v230 = v581;
          OUTLINED_FUNCTION_66_2();
          sub_2676C938C();

          v234 = v583;
          *(&v662 + 1) = v583;
          *&v668 = v14;
          *(&v668 + 1) = v416;
          OUTLINED_FUNCTION_1_20();
          v417 = OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_53_4(v417);
          OUTLINED_FUNCTION_15_14();
          v418();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          goto LABEL_56;
        case 3:
          sub_2676149CC(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, &v661 + 8);
          LOBYTE(v661) = 0;
          (*(v645 + 104))(v647, *MEMORY[0x277D5BDF0], v646);
          v419 = OUTLINED_FUNCTION_8_10();
          v421 = __swift_instantiateConcreteTypeFromMangledNameV2(v419, v420);
          OUTLINED_FUNCTION_26_6(v421);
          sub_267651B18();
          v422 = sub_2676C9F5C();
          OUTLINED_FUNCTION_87_1(v422);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFE8, &unk_2676D1510);
          v423 = OUTLINED_FUNCTION_36_6(&qword_2801CCFF0);
          OUTLINED_FUNCTION_34_5();
          OUTLINED_FUNCTION_60_1();
          sub_2676C942C();

          OUTLINED_FUNCTION_67_1();
          *&v662 = v423;
          v424 = OUTLINED_FUNCTION_4_19();
          v230 = v587;
          OUTLINED_FUNCTION_68_1();
          OUTLINED_FUNCTION_57_4();
          sub_2676C941C();

          v425 = OUTLINED_FUNCTION_14_3();
          v426(v425);
          v234 = v591;
          OUTLINED_FUNCTION_84_0();
          *&v669 = v424;
          v427 = OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_53_4(v427);
          OUTLINED_FUNCTION_15_14();
          v428();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          goto LABEL_58;
        case 4:
          v394 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
          *(&v662 + 1) = &type metadata for HighlightsSegue;
          v663 = sub_267651AB4();
          OUTLINED_FUNCTION_88_1();
          v395 = swift_allocObject();
          *&v661 = v395;
          sub_2676149CC(v1 + v394, v395 + 16);
          sub_2676468B4();
          *(v395 + 56) = v396;
          v397 = sub_2676C9EFC();
          OUTLINED_FUNCTION_43_1(v397);
          OUTLINED_FUNCTION_46_3();
          *&v661 = sub_2676C9F0C();

          v398 = MEMORY[0x277D5C188];
          OUTLINED_FUNCTION_34_5();
          v399 = v590;
          OUTLINED_FUNCTION_66_2();
          sub_2676C936C();

          v234 = v593;
          *(&v662 + 1) = v593;
          *&v668 = v395;
          *(&v668 + 1) = v398;
          v400 = OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_53_4(v400);
          OUTLINED_FUNCTION_23_7();
          v401();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
LABEL_62:
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
          goto LABEL_84;
        case 5:
          v446 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
          v447 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);
          v448 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput);
          v449 = v589;
          sub_267698E74(v448);
          v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v449, 1, v450);
          v660 = v446;
          v659 = v447;
          if (EnumTagSinglePayload == 1)
          {

            sub_2675EB7EC(v449, &qword_2801CC168, &unk_2676CF510);
            v452 = 0;
            v453 = 0;
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_35_4();
            sub_267651FB8(v508, v509, MEMORY[0x277D5C6A8]);

            OUTLINED_FUNCTION_14_3();
            v452 = sub_2676CA89C();
            v453 = v510;

            OUTLINED_FUNCTION_14_2();
            (*(v511 + 8))(v449, v450);
            if (v453)
            {
              OUTLINED_FUNCTION_86_0();
              *&v668 = 39;
              *(&v668 + 1) = 0xE100000000000000;
              v512 = sub_2676C911C();
              v513 = v550;
              __swift_storeEnumTagSinglePayload(v550, 1, 1, v512);
              sub_2675E69E4();
              OUTLINED_FUNCTION_17_13();
              sub_2676CC36C();
              v515 = v514;
              sub_2675EB7EC(v513, &qword_2801CCED8, &unk_2676D1390);
              if ((v515 & 1) == 0)
              {
                OUTLINED_FUNCTION_86_0();
                v452 = sub_2676CC38C();
                v517 = v516;

                v453 = v517;
              }
            }

            else
            {
              v452 = 0;
            }
          }

          v518 = v597;
          sub_267698E74(v448);
          if (__swift_getEnumTagSinglePayload(v518, 1, v450) == 1)
          {
            v519 = &qword_2801CC168;
            v520 = &unk_2676CF510;
            v521 = v518;
LABEL_80:
            sub_2675EB7EC(v521, v519, v520);
            v527 = 0;
            v528 = 0;
            goto LABEL_82;
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_35_4();
          sub_267651FB8(v522, v523, MEMORY[0x277D5C6A8]);
          sub_267651FB8(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
          v524 = v551;
          OUTLINED_FUNCTION_14_3();
          sub_2676CA87C();

          OUTLINED_FUNCTION_14_2();
          (*(v525 + 8))(v518, v450);
          v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          if (__swift_getEnumTagSinglePayload(v524, 1, v526) == 1)
          {
            v519 = &qword_2801CC068;
            v520 = &unk_2676D4E00;
            v521 = v524;
            goto LABEL_80;
          }

          swift_getKeyPath();
          v527 = sub_2676CA89C();
          v528 = v529;

          OUTLINED_FUNCTION_14_2();
          (*(v530 + 8))(v524, v526);
LABEL_82:
          v531 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v532 = type metadata accessor for NoResults(0);
          *(&v662 + 1) = v532;
          v533 = sub_267651FB8(&qword_2801CCFA8, type metadata accessor for NoResults, &unk_2676D03C0);
          v534 = v1;
          v535 = OUTLINED_FUNCTION_53_4(v533);
          sub_2675F95E4(v534 + v531, v535 + v532[7], &qword_2801CC380, &unk_2676CEF40);
          sub_2676468B4();
          v536 = *(v534 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize);
          v537 = v659;
          *v535 = v660;
          v535[1] = v537;
          v535[2] = v452;
          v535[3] = v453;
          v535[4] = v527;
          v535[5] = v528;
          *(v535 + v532[8]) = (v538 & 0x40) != 0;
          *(v535 + v532[9]) = v536;
          v539 = sub_2676C9EFC();
          OUTLINED_FUNCTION_26_6(v539);
          OUTLINED_FUNCTION_46_3();
          v540 = sub_2676C9F0C();
          *&v661 = v540;
          v541 = sub_2676C9EEC();

          v542 = MEMORY[0x277D5C188];
          OUTLINED_FUNCTION_34_5();
          OUTLINED_FUNCTION_60_1();
          sub_2676C942C();

          OUTLINED_FUNCTION_67_1();
          *&v662 = v542;
          v543 = OUTLINED_FUNCTION_4_19();
          v399 = v599;
          OUTLINED_FUNCTION_71_1(sub_2676520B8);

          v544 = OUTLINED_FUNCTION_85_1();
          v545(v544, v540);
          v234 = v655;
          *(&v662 + 1) = v655;
          *&v668 = v540;
          *(&v668 + 1) = v541;
          *&v669 = v543;
          v546 = OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_53_4(v546);
          OUTLINED_FUNCTION_23_7();
          v547();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
LABEL_83:
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
LABEL_84:
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_11_19();
          v507 = v399;
LABEL_85:
          v506(v507, v234);
LABEL_51:
          sub_2676C961C();
          __swift_destroy_boxed_opaque_existential_1(&v661);
          OUTLINED_FUNCTION_20_1();
          return;
        case 6:
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v454 = *(v1[4] + 16);
          sub_2676468B4();
          v456 = v455;
          v458 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
          v457 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);
          v459 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v460 = type metadata accessor for Intro(0);
          *(&v662 + 1) = v460;
          v461 = sub_267651FB8(&qword_2801CCFA0, type metadata accessor for Intro, &unk_2676CED98);
          v462 = OUTLINED_FUNCTION_53_4(v461);
          sub_2675F95E4(v1 + v459, v462 + v460[7], &qword_2801CBFE8, &unk_2676CD9E0);
          v463 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          sub_2675F95E4(v1 + v463, v462 + v460[8], &qword_2801CC380, &unk_2676CEF40);
          sub_2676149CC(v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, v462 + v460[9]);
          *v462 = v454;
          v462[1] = v456;
          v462[2] = v458;
          v462[3] = v457;
          v464 = sub_2676C9EFC();
          OUTLINED_FUNCTION_26_6(v464);

          v465 = sub_2676C9F0C();
          *&v661 = v465;
          v466 = sub_2676C9EEC();

          v467 = MEMORY[0x277D5C188];
          OUTLINED_FUNCTION_34_5();
          OUTLINED_FUNCTION_60_1();
          sub_2676C942C();

          OUTLINED_FUNCTION_67_1();
          *&v662 = v467;
          v468 = OUTLINED_FUNCTION_4_19();
          v399 = v649;
          OUTLINED_FUNCTION_71_1(sub_2676520B8);

          v469 = OUTLINED_FUNCTION_85_1();
          v470(v469, v465);
          v234 = v655;
          *(&v662 + 1) = v655;
          *&v668 = v465;
          *(&v668 + 1) = v466;
          *&v669 = v468;
          v471 = OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_53_4(v471);
          OUTLINED_FUNCTION_23_7();
          v472();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          goto LABEL_83;
        case 7:
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v429 = v595;
          sub_267698F3C();
          v430 = v659;
          if (__swift_getEnumTagSinglePayload(v429, 1, v659) == 1)
          {
            goto LABEL_95;
          }

          v431 = *(v430 + 48);
          v432 = *(v429 + v431);
          v433 = *(v429 + v431 + 8);
          v434 = v596;
          v435 = (v596 + v431);
          (*(v660 + 32))(v596, v429, v653);
          *v435 = v432;
          v435[1] = v433;
          v436 = v657;
          sub_2675F95E4(v434, v657, &qword_2801CC3D8, &unk_2676CEC00);
          v437 = (*(v656 + 80) + 16) & ~*(v656 + 80);
          v438 = (v594 + v437 + 7) & 0xFFFFFFFFFFFFFFF8;
          v439 = swift_allocObject();
          sub_26763DE18(v436, v439 + v437);
          *(v439 + v438) = v1;
          v440 = sub_2676C9FCC();
          OUTLINED_FUNCTION_26_6(v440);

          v441 = sub_2676C9FDC();
          OUTLINED_FUNCTION_70_1(v441, MEMORY[0x277D5C1C8]);
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();

          OUTLINED_FUNCTION_28_5();
          sub_2675EB7EC(v434, &qword_2801CC3D8, &unk_2676CEC00);
          goto LABEL_51;
        case 8:
          v478 = v1[3];
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v479 = *(v1[4] + 16);
          v480 = __OFSUB__(v479, v478);
          v481 = v479 - v478;
          if (v480)
          {
            __break(1u);
LABEL_95:
            __break(1u);
            return;
          }

          LODWORD(v660) = v481 > 5;
          swift_getKeyPath();
          v482 = v552;
          v483 = v553;
          v484 = v554;
          (*(v553 + 16))(v552, v1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow__readMessageTask, v554);
          sub_2676C979C();
          (*(v483 + 8))(v482, v484);
          sub_267651FB8(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
          sub_267651FB8(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
          v485 = v557;
          OUTLINED_FUNCTION_57_0();
          sub_2676CA3EC();

          v486 = OUTLINED_FUNCTION_85_1();
          v487(v486, v485);
          sub_2676CB9FC();
          v488 = v558;
          sub_2676C98BC();
          swift_getKeyPath();
          v489 = v560;
          sub_2676C988C();

          v559[1](v488, v489);
          v490 = type metadata accessor for OfferToContinueReading(0);
          *(&v662 + 1) = v490;
          v491 = sub_267651FB8(&qword_2801CCF78, type metadata accessor for OfferToContinueReading, &unk_2676D0410);
          v492 = OUTLINED_FUNCTION_53_4(v491);
          v493 = sub_2676C8C8C();
          __swift_storeEnumTagSinglePayload(v492, 1, 1, v493);
          *(v492 + *(v490 + 20)) = v660;
          v494 = sub_2676C9B9C();
          OUTLINED_FUNCTION_43_1(v494);
          v495 = sub_2676C9B8C();
          *(&v669 + 1) = v492;
          OpaqueTypeConformance2 = MEMORY[0x277D5BD58];
          *&v668 = v495;
          v496 = OUTLINED_FUNCTION_8_10();
          v498 = __swift_instantiateConcreteTypeFromMangledNameV2(v496, v497);
          OUTLINED_FUNCTION_26_6(v498);
          v499 = sub_2676C9BEC();
          OUTLINED_FUNCTION_87_1(v499);
          sub_2676C9C5C();
          v500 = sub_2676148C4(&qword_2801CCF88, &qword_2801CCF80, &qword_2676D1448, MEMORY[0x277D5BDE0]);

          OUTLINED_FUNCTION_34_5();
          OUTLINED_FUNCTION_60_1();
          sub_2676C942C();

          OUTLINED_FUNCTION_67_1();
          *&v662 = v500;
          v501 = OUTLINED_FUNCTION_4_19();
          v230 = v566;
          OUTLINED_FUNCTION_68_1();
          OUTLINED_FUNCTION_57_4();
          sub_2676C941C();

          v502 = OUTLINED_FUNCTION_14_3();
          v503(v502);
          v234 = v568;
          OUTLINED_FUNCTION_84_0();
          *&v669 = v501;
          v504 = OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_53_4(v504);
          OUTLINED_FUNCTION_15_14();
          v505();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
LABEL_70:
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_11_19();
          v507 = v230;
          goto LABEL_85;
        case 9:
          sub_2676C9F8C();
          sub_2676468B4();
          v403 = v402;
          *(&v662 + 1) = &type metadata for Conclusion;
          v663 = sub_267651760();
          *&v661 = v403;
          v404 = sub_2676C9EFC();
          OUTLINED_FUNCTION_43_1(v404);
          OUTLINED_FUNCTION_46_3();
          v405 = sub_2676C9F0C();
          OUTLINED_FUNCTION_59_2(v405, MEMORY[0x277D5C188]);
          v406 = *(v10 + 8);
          v407 = OUTLINED_FUNCTION_102_0();
          v406(v407);
          __swift_destroy_boxed_opaque_existential_1(&v661);
          *(&v662 + 1) = v8;
          v408 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          OUTLINED_FUNCTION_53_4(v408);
          OUTLINED_FUNCTION_75_0();
          v409();
          OUTLINED_FUNCTION_24_6();
          sub_2676C961C();
          OUTLINED_FUNCTION_38_3();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_8();
          sub_2676C961C();
          goto LABEL_67;
        case 0xALL:
          sub_2676C9F8C();
          *(&v662 + 1) = &type metadata for Cancelled;
          v663 = sub_26765170C();
          v473 = sub_2676C9EFC();
          OUTLINED_FUNCTION_43_1(v473);
          OUTLINED_FUNCTION_46_3();
          v474 = sub_2676C9F0C();
          OUTLINED_FUNCTION_59_2(v474, MEMORY[0x277D5C188]);
          v406 = *(v10 + 8);
          v475 = OUTLINED_FUNCTION_102_0();
          v406(v475);
          __swift_destroy_boxed_opaque_existential_1(&v661);
          *(&v662 + 1) = v8;
          v476 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          OUTLINED_FUNCTION_53_4(v476);
          OUTLINED_FUNCTION_75_0();
          v477();
          OUTLINED_FUNCTION_24_6();
          sub_2676C961C();
          OUTLINED_FUNCTION_38_3();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_8();
          sub_2676C961C();
LABEL_67:
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_28_5();
          (v406)(v16, v8);
          goto LABEL_51;
        case 0xBLL:
          sub_2676C9F8C();
          *(&v662 + 1) = v8;
          v392 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          OUTLINED_FUNCTION_53_4(v392);
          OUTLINED_FUNCTION_75_0();
          v393();
          OUTLINED_FUNCTION_24_6();
          sub_2676C961C();
          OUTLINED_FUNCTION_38_3();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_8();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
          OUTLINED_FUNCTION_28_5();
          (*(v10 + 8))(v16, v8);
          goto LABEL_51;
        default:
          v221 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
          *(&v662 + 1) = &unk_2878AFC00;
          v663 = sub_267651BE0();
          *&v661 = swift_allocObject();
          sub_2676149CC(v1 + v221, v661 + 16);
          v222 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v222);
          OUTLINED_FUNCTION_46_3();
          v223 = sub_2676C9F0C();
          OUTLINED_FUNCTION_93_0(v223);
          v224 = sub_2676C9EEC();
          v225 = MEMORY[0x277D5C188];
          v226 = v569;
          sub_2676C937C();

          OUTLINED_FUNCTION_86_0();
          *&v662 = v225;
          v227 = OUTLINED_FUNCTION_8_19();
          v228 = v572;
          OUTLINED_FUNCTION_66_2();
          sub_2676C942C();

          (*(v570 + 8))(v226, v228);

          *&v661 = v228;
          *(&v661 + 1) = v224;
          *&v662 = v227;
          v229 = OUTLINED_FUNCTION_4_19();
          v230 = v578;
          OUTLINED_FUNCTION_68_1();
          v231 = v574;
          sub_2676C941C();

          v232 = OUTLINED_FUNCTION_85_1();
          v233(v232, v231);
          v234 = v580;
          *(&v662 + 1) = v580;
          *&v668 = v231;
          *(&v668 + 1) = v224;
          *&v669 = v229;
          v235 = OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_53_4(v235);
          OUTLINED_FUNCTION_15_14();
          v236();
          OUTLINED_FUNCTION_24_6();
          sub_2676C960C();
          OUTLINED_FUNCTION_6_16();
          sub_2676C961C();
          OUTLINED_FUNCTION_20_7();
          sub_2676C961C();
LABEL_56:
          OUTLINED_FUNCTION_5_17();
          sub_2676C961C();
LABEL_58:
          OUTLINED_FUNCTION_7_19();
          sub_2676C961C();
          goto LABEL_70;
      }

    default:
      v172 = *(v171 + 16);
      v173 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
      *(&v662 + 1) = &unk_2878AFC80;
      v663 = sub_267651B74();
      OUTLINED_FUNCTION_88_1();
      v174 = swift_allocObject();
      *&v661 = v174;
      sub_2676149CC(v1 + v173, v174 + 24);
      *(v174 + 16) = v172;
      v175 = sub_2676C9EFC();
      OUTLINED_FUNCTION_7_13(v175);
      swift_retain_n();
      sub_267651508(v171);
      v176 = sub_2676C9F0C();
      OUTLINED_FUNCTION_93_0(v176);
      v177 = sub_2676C9EEC();

      v178 = MEMORY[0x277D5C188];
      OUTLINED_FUNCTION_34_5();
      sub_2676C942C();

      OUTLINED_FUNCTION_86_0();
      *&v662 = v178;
      v179 = OUTLINED_FUNCTION_4_19();
      v180 = v649;
      v181 = v651;
      sub_2676C941C();

      v182 = OUTLINED_FUNCTION_62_1();
      v183(v182);
      v184 = v655;
      *(&v662 + 1) = v655;
      *&v668 = v181;
      *(&v668 + 1) = v177;
      *&v669 = v179;
      v185 = OUTLINED_FUNCTION_3_17();
      v186 = OUTLINED_FUNCTION_53_4(v185);
      v187 = v652;
      (v652[2])(v186, v180, v184);
      OUTLINED_FUNCTION_24_6();
      sub_2676C960C();
      OUTLINED_FUNCTION_6_16();
      sub_2676C961C();
      OUTLINED_FUNCTION_20_7();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_19();
      sub_2676C961C();
      OUTLINED_FUNCTION_5_17();
      sub_2676C961C();

      OUTLINED_FUNCTION_28_5();
      (v187[1])(v180, v184);
LABEL_28:
      v342 = v171;
      goto LABEL_50;
  }
}

unint64_t sub_26764AC08(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v5 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v5, qword_2801CDC90);
  sub_267651508(v4);
  sub_267651508(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_267614A2C(v4);
  sub_267614A2C(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_267651508(v4);
    v9 = sub_26765096C(v4);
    v11 = v10;
    sub_267614A2C(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_26765096C(a1);
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ReadMailActingFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_267614A2C(v4);
  }

  else
  {

    sub_267614A2C(v4);
  }

  *v2 = a1;

  return sub_267651508(a1);
}

uint64_t sub_26764ADE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-1] - v3;
  sub_2675F95E4(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &v16[-1] - v3, &qword_2801CC1E8, &qword_2676CF570);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  __swift_getEnumTagSinglePayload(v4, 1, v5);
  v6 = sub_2676C9E0C();
  sub_2675EB7EC(v4, &qword_2801CC1E8, &qword_2676CF570);

  v7 = sub_2676C9E1C();
  v8 = MEMORY[0x277D5C060];
  v17 = v6;
  v18 = MEMORY[0x277D5C060];
  v16[0] = v7;
  v9 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);

  v10 = sub_2676C9E1C();
  v17 = v6;
  v18 = v8;
  v16[0] = v10;
  v11 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2676CDE10;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = MEMORY[0x26D5FB6C0]();

  return v13;
}

uint64_t sub_26764AFC8(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResolveDateTime(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2675F95E4(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, v8, &qword_2801CC1E8, &qword_2676CF570);
  sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver, &v8[v6[5]]);
  sub_2676468B4();
  v8[v6[6]] = (v9 & 0x40) != 0;
  v8[v6[7]] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D5BDF0], v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD040, &unk_2676D1530);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD048, type metadata accessor for ResolveDateTime, &unk_2676D2E08);
  v17[4] = sub_2676C9F5C();
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD050, &qword_2676D2800);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC380, &unk_2676CEF40);
  v12 = sub_2676148C4(&qword_2801CD058, &qword_2801CD040, &unk_2676D1530, MEMORY[0x277D5C1A8]);
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  v18[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v18);

  sub_2676C942C();

  v13 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2676CDE20;
  *(v14 + 32) = v13;
  v15 = MEMORY[0x26D5FB6C0]();

  return v15;
}

void sub_26764B300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - v5;
  v7 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_267651CC4(a1, a2 + v7);
  swift_endAccess();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v8 = sub_2676CBE4C();
  __swift_project_value_buffer(v8, qword_2801CDC90);

  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    sub_2675F95E4(a2 + v7, v6, &qword_2801CC380, &unk_2676CEF40);
    v13 = sub_2676CBFBC();
    v15 = sub_2676B0B84(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2675D4000, v9, v10, "#ReadMailActingFlow resolved dateTime %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D5FEA80](v12, -1, -1);
    MEMORY[0x26D5FEA80](v11, -1, -1);
  }
}

uint64_t sub_26764B504(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResolveSender(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267698E74(*(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_senderInput));
  v9 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_hasExactSpanMatch);
  *v8 = 0;
  v8[*(v6 + 24)] = v9;
  (*(v3 + 104))(v5, *MEMORY[0x277D5BDF0], v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD020, &unk_2676D1520);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD028, type metadata accessor for ResolveSender, &unk_2676D3620);
  v17[4] = sub_2676C9F5C();
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD030, &unk_2676D27F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v12 = sub_2676148C4(&qword_2801CD038, &qword_2801CD020, &unk_2676D1520, MEMORY[0x277D5C1A8]);
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  v18[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v18);

  sub_2676C942C();

  v13 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2676CDE20;
  *(v14 + 32) = v13;
  v15 = MEMORY[0x26D5FB6C0]();

  return v15;
}

uint64_t sub_26764B818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-1] - v8;
  v10 = sub_2676C8C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2675F95E4(a1, v9, &qword_2801CBFE8, &unk_2676CD9E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2675EB7EC(v9, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_beginAccess();
    sub_26764AC08(0x9000000000000010);
    return swift_endAccess();
  }

  else
  {
    v24 = v4;
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v7, v13, v10);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    v15 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
    swift_beginAccess();
    sub_267651C4C(v7, a2 + v15);
    swift_endAccess();
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);

    v17 = sub_2676CBE2C();
    v18 = sub_2676CC23C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;
      sub_2675F95E4(a2 + v15, v7, &qword_2801CBFE8, &unk_2676CD9E0);
      v21 = sub_2676CBFBC();
      v23 = sub_2676B0B84(v21, v22, v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2675D4000, v17, v18, "#ReadMailActingFlow resolved sender %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D5FEA80](v20, -1, -1);
      MEMORY[0x26D5FEA80](v19, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_26764BBAC(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 40) != 0x9000000000000010)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0xF000000000000007;
    swift_beginAccess();
    sub_26764AC08(v4 | 0x1000000000000000);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_26764BC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_2676C8C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(a1 + 8))
  {
    v42 = *a1;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
    if (swift_dynamicCast())
    {
      v17 = v39;
      v16 = v40;
      if (v41 == 1)
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v18 = sub_2676CBE4C();
        __swift_project_value_buffer(v18, qword_2801CDC90);
        v19 = sub_2676CBE2C();
        v20 = sub_2676CC23C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2675D4000, v19, v20, "#ReadMailActingFlow requested sender does not have email handle", v21, 2u);
          MEMORY[0x26D5FEA80](v21, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = v17;
        swift_beginAccess();
        sub_267651D60(v17, v16, 1);
        sub_26764AC08(v22);
        swift_endAccess();

        return sub_267651D40(v17, v16, 1);
      }

      sub_267651D40(v39, v40, v41);
    }

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v30 = sub_2676CBE4C();
    __swift_project_value_buffer(v30, qword_2801CDC90);
    v31 = v14;
    v32 = sub_2676CBE2C();
    v33 = sub_2676CC26C();
    sub_267651D34(v14, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = sub_2676CC5FC();
      v38 = sub_2676B0B84(v36, v37, &v39);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2675D4000, v32, v33, "#ReadMailActingFlow error from ResolveRecipientsFlow: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D5FEA80](v35, -1, -1);
      MEMORY[0x26D5FEA80](v34, -1, -1);
    }

    return sub_26764FFEC(v14);
  }

  else
  {
    sub_267698E44(*a1);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2675EB7EC(v9, &qword_2801CBFE8, &unk_2676CD9E0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v7, v13, v10);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
      v24 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
      swift_beginAccess();
      sub_267651C4C(v7, a2 + v24);
      swift_endAccess();
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v25 = sub_2676CBE4C();
      __swift_project_value_buffer(v25, qword_2801CDC90);
      v26 = sub_2676CBE2C();
      v27 = sub_2676CC23C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2675D4000, v26, v27, "#ReadMailActingFlow resolved sender", v28, 2u);
        MEMORY[0x26D5FEA80](v28, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 0xF000000000000007;
    swift_beginAccess();
    sub_26764AC08(v29 | 0x1000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C230(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    swift_beginAccess();

    v4 = v3 | 0x2000000000000000;
  }

  else
  {
    if (*(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) == 1)
    {
      swift_beginAccess();
      sub_26764AC08(0x9000000000000028);
      return swift_endAccess();
    }

    v6 = swift_allocObject();
    *(v6 + 16) = 0xF000000000000007;
    swift_beginAccess();
    v4 = v6 | 0x1000000000000000;
  }

  sub_26764AC08(v4);
  swift_endAccess();
}

uint64_t sub_26764C340(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
  v17 = &type metadata for HighlightsIntro;
  OpaqueTypeConformance2 = sub_267651D80();
  v5 = swift_allocObject();
  v16[0] = v5;
  sub_2676149CC(a1 + v4, v5 + 16);
  v6 = *(a2 + 16) == 1;
  *(v5 + 56) = *(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize);
  *(v5 + 57) = v6;
  v7 = sub_2676C9EFC();
  swift_allocObject();
  v8 = sub_2676C9F0C();
  v17 = v7;
  OpaqueTypeConformance2 = MEMORY[0x277D5C188];
  v16[0] = v8;
  v9 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD068, &qword_2676D1540);
  v16[0] = a2;

  sub_2676C9F3C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD070, &qword_2676D1548);
  sub_2676148C4(&qword_2801CD078, &qword_2801CD068, &qword_2676D1540, MEMORY[0x277D5C198]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_2676C936C();

  v10 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2676CDE10;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = MEMORY[0x26D5FB6C0](v11, v12, v13);

  return v14;
}

uint64_t sub_26764C5A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);

  sub_2676468B4();
  v5 = v4;
  v6 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory;
  sub_267651DE4();
  v7 = swift_allocObject();
  sub_2676149CC(a2 + v6, v7 + 32);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = sub_2676C9EFC();
  swift_allocObject();
  v9 = sub_2676C9F0C();
  v14[3] = v8;
  v14[4] = MEMORY[0x277D5C188];
  v14[0] = v9;
  v10 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2676CDE20;
  *(v11 + 32) = v10;
  v12 = MEMORY[0x26D5FB6C0]();

  return v12;
}

uint64_t sub_26764C6CC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_isRequestToSummarize) == 1)
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000048);
    return swift_endAccess();
  }

  else
  {
    v3 = swift_allocObject();
    swift_beginAccess();
    v4 = *(a1 + 40);
    *(v3 + 16) = v4;
    swift_beginAccess();
    sub_267651508(v4);
    sub_26764AC08(v3 | 0x1000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C7AC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(a1 + 32) + 16) == 1)
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000038);
    return swift_endAccess();
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = *(a1 + 24);
    sub_267646858();
    *(v3 + 24) = v4;
    swift_beginAccess();
    sub_26764AC08(v3 | 0x3000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26764C880(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = *a1;
  if ((~a2 & 0xF000000000000007) != 0 && (a2 & 0xF000000000000000) == 0x2000000000000000)
  {
    v47 = a2;
    v48 = a3;
    v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *(v14 + 16);
    if (v15)
    {
      v54 = &v47 - v11;
      v16 = v13;
      sub_267651AA0(a2);
      v59[0] = MEMORY[0x277D84F90];

      sub_2676C2AE8(0, v15, 0);
      v17 = v59[0];
      v18 = (v14 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v59[0] = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);

        if (v22 >= v21 >> 1)
        {
          sub_2676C2AE8((v21 > 1), v22 + 1, 1);
          v17 = v59[0];
        }

        *(v17 + 16) = v22 + 1;
        v23 = v17 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
        v18 += 3;
        --v15;
      }

      while (v15);
      v53 = v17;

      v13 = v16;
      v12 = v54;
    }

    else
    {
      result = sub_267651AA0(a2);
      v53 = MEMORY[0x277D84F90];
    }

    v27 = 0;
    v54 = *(v13 + 16);
    v49 = MEMORY[0x277D84F90];
    v51 = v13;
    v52 = v57 + 8;
    v28 = &qword_2801CC3D8;
    while (v54 != v27)
    {
      if (v27 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v30 = *(v55 + 72);
      sub_2675F95E4(v13 + v29 + v30 * v27, v12, v28, &unk_2676CEC00);
      v31 = v12;
      v32 = v12;
      v33 = v57;
      sub_2675F95E4(v31, v57, v28, &unk_2676CEC00);

      v34 = v28;
      sub_2676C8ABC();
      v35 = sub_2676C8BFC();
      (*(*(v35 - 8) + 8))(v33, v35);
      v36 = sub_2676CBFAC();
      v38 = v37;

      v59[0] = v36;
      v59[1] = v38;
      MEMORY[0x28223BE20](v39);
      *(&v47 - 2) = v59;
      LOBYTE(v36) = sub_2676A25A0(sub_2676147E0, (&v47 - 4), v53);

      if (v36)
      {
        result = sub_2675EB7EC(v32, v34, &unk_2676CEC00);
        ++v27;
        v13 = v51;
        v28 = v34;
        v12 = v32;
      }

      else
      {
        sub_26763DE18(v32, v50);
        v40 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v40;
        v58 = v40;
        v12 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2676C2998(0, *(v40 + 16) + 1, 1);
          v42 = v58;
        }

        v28 = v34;
        v44 = *(v42 + 16);
        v43 = *(v42 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2676C2998((v43 > 1), v44 + 1, 1);
          v28 = v34;
          v42 = v58;
        }

        ++v27;
        *(v42 + 16) = v44 + 1;
        v49 = v42;
        result = sub_26763DE18(v50, v42 + v29 + v44 * v30);
        v13 = v51;
      }
    }

    v45 = v48;
    swift_beginAccess();
    *(v45 + 32) = v49;

    if (*(*(v45 + 32) + 16))
    {
      swift_beginAccess();
      v46 = 0x9000000000000020;
    }

    else
    {
      swift_beginAccess();
      v46 = 0x9000000000000048;
    }

    sub_26764AC08(v46);
    swift_endAccess();
    return sub_267651E38(v47);
  }

  else
  {
    swift_beginAccess();
    *(a3 + 32) = v13;

    v24 = *(*(a3 + 32) + 16);
    if (v24 == 1)
    {
      swift_beginAccess();
      v25 = 0x9000000000000038;
    }

    else if (v24)
    {
      swift_beginAccess();
      v25 = 0x9000000000000030;
    }

    else
    {
      swift_beginAccess();
      v25 = 0x9000000000000028;
    }

    sub_26764AC08(v25);
    return swift_endAccess();
  }
}

uint64_t sub_26764CE08(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70(a2 + 40, v3);
  sub_26764AC08(0x9000000000000058);
  return swift_endAccess();
}

uint64_t sub_26764CE54(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for MarkMessageAsRead(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2676C9BFC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD088, &qword_2676D1550);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v39 = a1;
  sub_2675F95E4(a1, v10, &qword_2801CC3D8, &unk_2676CEC00);
  v15 = &v10[*(v8 + 56)];
  v16 = *v15;
  v38 = *(v15 + 1);
  sub_2676468B4();
  v18 = v17;
  v19 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
  swift_beginAccess();
  SingleMessage = type metadata accessor for ReadSingleMessage(0);
  v56 = SingleMessage;
  v57 = sub_267651FB8(&qword_2801CD090, type metadata accessor for ReadSingleMessage, &unk_2676D1700);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  sub_2675F95E4(a2 + v19, boxed_opaque_existential_1 + SingleMessage[6], &qword_2801CBFE8, &unk_2676CD9E0);
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, boxed_opaque_existential_1 + SingleMessage[7]);
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, boxed_opaque_existential_1 + SingleMessage[8]);
  v22 = (boxed_opaque_existential_1 + *(v8 + 56));
  v41 = sub_2676C8BFC();
  v23 = *(v41 - 8);
  v40 = *(v23 + 32);
  v42 = v23 + 32;
  v40(boxed_opaque_existential_1, v10, v41);
  v24 = v38;
  *v22 = v16;
  v22[1] = v24;
  *(boxed_opaque_existential_1 + SingleMessage[5]) = v18;
  LOBYTE(SingleMessage) = *(a1 + *(v8 + 56) + 8) != 0;
  v53 = &type metadata for ReplyPromptInterpreter;
  v54 = sub_267651E4C();
  LOBYTE(v50) = SingleMessage;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0A0, &qword_2676D1558);
  swift_allocObject();
  v55[0] = sub_2676C9F2C();
  v26 = sub_2676148C4(&qword_2801CD0A8, &qword_2801CD0A0, &qword_2676D1558, MEMORY[0x277D5C190]);

  sub_2676C942C();

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B0, &qword_2676D1560);
  v50 = v25;
  v51 = &type metadata for ReplyPromptOption;
  v52 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v43;
  v50 = v43;
  v51 = &type metadata for ReplyPromptOption;
  v52 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v55);

  sub_2676C941C();

  (*(v44 + 8))(v14, v28);
  v29 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v55);
  (*(v46 + 104))(v45, *MEMORY[0x277D5BDE8], v47);
  sub_2675F95E4(v39, v10, &qword_2801CC3D8, &unk_2676CEC00);

  v31 = v48;
  v30 = v49;
  sub_2676149CC(a2 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v48[*(v49 + 24)]);
  v40(v31, v10, v41);
  v31[*(v30 + 20)] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
  swift_allocObject();
  sub_267651FB8(&qword_2801CD0C0, type metadata accessor for MarkMessageAsRead, &unk_2676D01F0);
  v33 = sub_2676C9F5C();
  v56 = v32;
  v57 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568, MEMORY[0x277D5C1A8]);
  v55[0] = v33;
  v34 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2676CDE10;
  *(v35 + 32) = v29;
  *(v35 + 40) = v34;
  v36 = MEMORY[0x26D5FB6C0]();

  return v36;
}

uint64_t sub_26764D570(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(a2 + 24);
  sub_267646858();
  *(v3 + 24) = v4;
  swift_beginAccess();
  sub_26764AC08(v3 | 0x3000000000000000);
  swift_endAccess();
}

uint64_t sub_26764D5F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v53 = a5;
  v48 = a4;
  v45 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0D0, &qword_2676D1570);
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0D8, &qword_2676D1578);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v44 - v15;
  sub_2675F95E4(a1, v10, &qword_2801CC3D8, &unk_2676CEC00);
  v16 = &v10[*(v8 + 56)];
  v18 = *v16;
  v17 = *(v16 + 1);
  v47 = v18;
  v46 = v17;

  sub_2676468B4();
  v20 = v19;
  v21 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender;
  swift_beginAccess();
  SubjectLine = type metadata accessor for ReadSubjectLine(0);
  v61 = SubjectLine;
  v62 = sub_267651FB8(&qword_2801CD0E0, type metadata accessor for ReadSubjectLine, &unk_2676D1980);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  sub_2675F95E4(a3 + v21, boxed_opaque_existential_1 + SubjectLine[7], &qword_2801CBFE8, &unk_2676CD9E0);
  sub_2676149CC(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, boxed_opaque_existential_1 + SubjectLine[8]);
  sub_2676149CC(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil, boxed_opaque_existential_1 + SubjectLine[10]);
  v24 = *(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput);
  v25 = *(a3 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_subjectInput + 8);
  v26 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_2675F95E4(a3 + v26, boxed_opaque_existential_1 + SubjectLine[12], &qword_2801CC380, &unk_2676CEF40);
  v27 = (boxed_opaque_existential_1 + *(v8 + 56));
  v28 = sub_2676C8BFC();
  (*(*(v28 - 8) + 32))(boxed_opaque_existential_1, v10, v28);
  v29 = v46;
  *v27 = v47;
  v27[1] = v29;
  *(boxed_opaque_existential_1 + SubjectLine[5]) = v45;
  *(boxed_opaque_existential_1 + SubjectLine[6]) = v20;
  *(boxed_opaque_existential_1 + SubjectLine[9]) = v48;
  v30 = (boxed_opaque_existential_1 + SubjectLine[11]);
  *v30 = v24;
  v30[1] = v25;
  v58 = &type metadata for ReadingInputInterpreter;
  v59 = sub_267651EA8();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0F0, &qword_2676D1580);
  swift_allocObject();

  v60[0] = sub_2676C9F2C();
  v32 = sub_2676148C4(&qword_2801CD0F8, &qword_2801CD0F0, &qword_2676D1580, MEMORY[0x277D5C190]);

  sub_2676C942C();

  v60[0] = v31;
  v60[1] = &type metadata for ReadingOption;
  v60[2] = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v49;
  v35 = v50;
  sub_2676C941C();

  (*(v51 + 8))(v14, v35);
  v36 = swift_allocObject();
  v37 = v53;
  *(v36 + 16) = a3;
  *(v36 + 24) = v37;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD100, &qword_2676D1588);
  v55 = v35;
  v56 = &type metadata for ReadingOption;
  v57 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v52;
  v55 = v52;
  v56 = v38;
  v62 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v60);

  sub_2676C93FC();

  (*(v54 + 8))(v34, v39);
  v40 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2676CDE20;
  *(v41 + 32) = v40;
  v42 = MEMORY[0x26D5FB6C0]();

  return v42;
}

uint64_t sub_26764DC8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  swift_beginAccess();
  LOBYTE(a3) = sub_26765014C((a3 + 16), v4, v5, v6 | (v7 << 8));
  swift_endAccess();
  return a3 & 1;
}

uint64_t sub_26764DD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C9C5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v8 = sub_2676CBE4C();
  __swift_project_value_buffer(v8, qword_2801CDC90);
  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2675D4000, v9, v10, "#ReadMailActingFlow: offerToContinue onCompletion", v11, 2u);
    MEMORY[0x26D5FEA80](v11, -1, -1);
  }

  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == *MEMORY[0x277D5BED8])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = *(a2 + 24);
    sub_267646858();
    *(v13 + 24) = v14;
    swift_beginAccess();
    sub_26764AC08(v13 | 0x3000000000000000);
    swift_endAccess();
  }

  else if (v12 == *MEMORY[0x277D5BED0])
  {
    swift_beginAccess();
    sub_26764AC08(0x9000000000000048);
    return swift_endAccess();
  }

  else
  {
    result = sub_2676CC58C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26764DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD088, &qword_2676D1550);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for MarkMessageAsRead(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2676C9BFC();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v18, *MEMORY[0x277D5BDE8]);
  v20 = *(a2 + 24);
  result = swift_beginAccess();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(a2 + 32);
    if (v20 < *(v22 + 16))
    {
      sub_2675F95E4(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v12, &qword_2801CC3D8, &unk_2676CEC00);
      v23 = *(v6 + 48);
      v47 = v4;
      v25 = *&v12[v23];
      v24 = *&v12[v23 + 8];
      v26 = &v10[v23];
      v27 = sub_2676C8BFC();
      v28 = *(v27 - 8);
      v46 = v18;
      v29 = a2;
      v30 = v28;
      (*(v28 + 32))(v10, v12, v27);
      *v26 = v25;
      *(v26 + 1) = v24;
      (*(v30 + 16))(v15, v10, v27);
      sub_2675EB7EC(v10, &qword_2801CC3D8, &unk_2676CEC00);
      sub_2676149CC(v29 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v15[*(v13 + 24)]);
      v15[*(v13 + 20)] = 1;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
      swift_allocObject();
      sub_267651FB8(&qword_2801CD0C0, type metadata accessor for MarkMessageAsRead, &unk_2676D01F0);
      v32 = sub_2676C9F5C();
      v56 = v31;
      v57 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568, MEMORY[0x277D5C1A8]);
      v55[0] = v32;
      v33 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_2676149CC(v29 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory, &v51);
      sub_2676468B4();
      LOBYTE(v30) = (v34 & 0x30) != 0;
      v56 = &type metadata for OfferToReply;
      v57 = sub_267651F5C();
      v35 = swift_allocObject();
      v55[0] = v35;
      sub_267614E14(&v51, v35 + 16);
      *(v35 + 56) = v30;
      v53 = &type metadata for ReplyPromptInterpreter;
      v54 = sub_267651E4C();
      LOBYTE(v51) = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0A0, &qword_2676D1558);
      swift_allocObject();
      v55[0] = sub_2676C9F2C();
      v37 = swift_allocObject();
      v38 = v48;
      *(v37 + 16) = v29;
      *(v37 + 24) = v38;

      sub_267651508(v38);
      v39 = sub_2676148C4(&qword_2801CD0A8, &qword_2801CD0A0, &qword_2676D1558, MEMORY[0x277D5C190]);
      v40 = v49;
      sub_2676C942C();

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B0, &qword_2676D1560);
      *&v51 = v36;
      *(&v51 + 1) = &type metadata for ReplyPromptOption;
      v52 = v39;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v42 = v47;
      *&v51 = v47;
      *(&v51 + 1) = &type metadata for ReplyPromptOption;
      v52 = OpaqueTypeConformance2;
      v57 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v55);

      sub_2676C941C();

      (*(v50 + 8))(v40, v42);
      v43 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2676CDE10;
      *(v44 + 32) = v33;
      *(v44 + 40) = v43;
      v45 = MEMORY[0x26D5FB6C0]();

      return v45;
    }
  }

  __break(1u);
  return result;
}

void sub_26764E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 24) = v3;
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_79_1();
    if (v3 >= v4)
    {
      swift_beginAccess();
      v5 = 0x9000000000000048;
    }

    else
    {
      swift_beginAccess();
      v5 = OUTLINED_FUNCTION_81_1();
    }

    sub_26764AC08(v5);
    swift_endAccess();
  }
}

unint64_t sub_26764E770(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v42) = a6;
  v45 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC768, &unk_2676D1590);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v43 = *(v11 + 16);
  v44 = a1;
  v43(&v41 - v18, a1, v10);
  if (swift_dynamicCast())
  {
    if (v46)
    {
      v19 = v45;
      swift_beginAccess();
      v20 = *(v19 + 40);
      *(v19 + 40) = 0x9000000000000050;
    }

    else
    {
      v32 = swift_allocObject();
      *(v32 + 16) = a3;
      *(v32 + 24) = a4;
      *(v32 + 32) = a5;
      *(v32 + 40) = v42 & 1;
      v33 = v32 | 0x5000000000000000;
      v34 = v45;
      swift_beginAccess();
      v20 = *(v34 + 40);
      *(v34 + 40) = v33;
      sub_267651508(a3);
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v21 = sub_2676CBE4C();
    __swift_project_value_buffer(v21, qword_2801CDC90);
    v22 = v43;
    v43(v17, v44, v10);
    v23 = sub_2676CBE2C();
    v24 = sub_2676CC24C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v25 = 136315138;
      v22(v14, v17, v10);
      v26 = sub_2676CBFBC();
      v28 = v27;
      (*(v11 + 8))(v17, v10);
      v29 = v26;
      v22 = v43;
      v30 = sub_2676B0B84(v29, v28, &v46);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2675D4000, v23, v24, "#ReadMailActingFlow: Unexpected return value from Guard flows: %s", v25, 0xCu);
      v31 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D5FEA80](v31, -1, -1);
      MEMORY[0x26D5FEA80](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v35 = swift_allocObject();
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_2676CC3FC();

    v46 = 0xD00000000000002ALL;
    v47 = 0x80000002676D7560;
    v22(v14, v44, v10);
    v36 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v36);

    v37 = v47;
    *(v35 + 16) = v46;
    *(v35 + 24) = v37;
    v38 = v35 | 0x8000000000000000;
    v39 = v45;
    swift_beginAccess();
    v20 = *(v39 + 40);
    *(v39 + 40) = v38;
  }

  return sub_267614A2C(v20);
}

uint64_t sub_26764EBB0(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF28, &unk_2676D2700);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF30, &unk_2676D13F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v46 - v7;
  v8 = sub_2676C9BFC();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = type metadata accessor for DeleteMessage(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 24);
  result = swift_beginAccess();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(a1 + 32);
    if (v20 < *(v22 + 16))
    {
      sub_2675F95E4(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v16, &qword_2801CC3D8, &unk_2676CEC00);
      v23 = *(v10 + 48);
      v46 = v5;
      v47 = v6;
      v24 = *&v16[v23];
      v25 = *&v16[v23 + 8];
      v26 = &v14[v23];
      v27 = sub_2676C8BFC();
      v28 = *(v27 - 8);
      (*(v28 + 32))(v14, v16, v27);
      *v26 = v24;
      *(v26 + 1) = v25;
      (*(v28 + 16))(&v19[*(v17 + 20)], v14, v27);
      sub_2675EB7EC(v14, &qword_2801CC3D8, &unk_2676CEC00);
      sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider, &v19[*(v17 + 24)]);
      *v19 = 1;
      (*(v48 + 104))(v55, *MEMORY[0x277D5BDF0], v49);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD0B8, &qword_2676D1568);
      swift_allocObject();
      sub_267651FB8(&qword_2801CD110, type metadata accessor for DeleteMessage, &unk_2676CE400);
      v30 = sub_2676C9F5C();
      v60 = v29;
      v61 = sub_2676148C4(&qword_2801CD0C8, &qword_2801CD0B8, &qword_2676D1568, MEMORY[0x277D5C1A8]);
      v59[0] = v30;
      v31 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v59);
      v60 = &type metadata for DeleteMessageSucceeded;
      v61 = sub_267652000();
      v32 = sub_2676C9EFC();
      swift_allocObject();
      v59[0] = sub_2676C9F0C();
      v33 = sub_2676C9EEC();
      v34 = MEMORY[0x277D5C188];
      v35 = v51;
      sub_2676C937C();

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      v37 = v50;
      *(v36 + 24) = v50;

      sub_267651508(v37);
      v59[0] = v32;
      v59[1] = v33;
      v59[2] = v34;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v40 = v53;
      v39 = v54;
      sub_2676C942C();

      (*(v52 + 8))(v35, v40);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF38, &unk_2676D2710);
      v56 = v40;
      v57 = v33;
      v58 = OpaqueTypeConformance2;
      v41 = swift_getOpaqueTypeConformance2();
      v42 = v46;
      v56 = v46;
      v57 = v33;
      v58 = v41;
      v61 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v59);

      sub_2676C941C();

      (*(v47 + 8))(v39, v42);
      v43 = sub_2676C9A0C();
      __swift_destroy_boxed_opaque_existential_1(v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2676CDE10;
      *(v44 + 32) = v31;
      *(v44 + 40) = v43;
      v45 = MEMORY[0x26D5FB6C0]();

      return v45;
    }
  }

  __break(1u);
  return result;
}

void sub_26764F304()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

void sub_26764F31C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_2676C9C4C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_2();
  if (v5)
  {
    if (v5 == 1)
    {

      sub_2676C9ECC();
      OUTLINED_FUNCTION_98_0();
      sub_2676C990C();
      v11 = OUTLINED_FUNCTION_40_1();
      v12(v11);
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v5)
      {
        OUTLINED_FUNCTION_32_4();
        v13 = swift_allocObject();
        *(OUTLINED_FUNCTION_77_0(v13) + 40) = 0;
        goto LABEL_7;
      }

      sub_2676C9ECC();
      v20 = v48;
      v21 = OUTLINED_FUNCTION_39_3(v47);
      v22 = sub_267691338(v21, v20);
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v22)
      {
        v23 = v9;
        v24 = v7;
        v25 = 1;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_32_4();
      v30 = swift_allocObject();
      v31 = OUTLINED_FUNCTION_77_0(v30);
      *(v31 + 40) = 0;
LABEL_21:
      v33 = v31 | 0x6000000000000000;
      OUTLINED_FUNCTION_74_0(v1 + 40, v47);
      v34 = *(v1 + 40);
      *(v1 + 40) = v33;
      sub_267651508(v3);
      v29 = v34;
LABEL_24:
      sub_267614A2C(v29);
      goto LABEL_37;
    }

    switch(v9)
    {
      case 1:
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        v37 = *(v1 + 40);
        OUTLINED_FUNCTION_9_18();
        sub_267651508(v37);
        v38 = OUTLINED_FUNCTION_81_1();
        sub_26764AC08(v38);
        swift_endAccess();
        v29 = v37;
        goto LABEL_24;
      case 2:
      case 5:
        v16 = *(v1 + 24);
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          return;
        }

        *(v1 + 24) = v17;
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_79_1();
        if (v17 == v18)
        {
          OUTLINED_FUNCTION_9_18();
          v19 = OUTLINED_FUNCTION_76_0();
        }

        else if (v3 >> 60 == 3 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < v17)
        {
          OUTLINED_FUNCTION_9_18();
          v19 = 0x9000000000000040;
        }

        else
        {
          OUTLINED_FUNCTION_9_18();
          v19 = OUTLINED_FUNCTION_81_1();
        }

        sub_26764AC08(v19);
LABEL_36:
        swift_endAccess();
        goto LABEL_37;
      case 3:
        OUTLINED_FUNCTION_25_8();
        sub_26764AC08(0x9000000000000050);
        goto LABEL_36;
      case 4:
        sub_2676C9ECC();
        v39 = __swift_project_boxed_opaque_existential_1(v47, v47[3]);
        sub_2676C9C3C();
        OUTLINED_FUNCTION_20_5();
        sub_2676C990C();
        v40 = OUTLINED_FUNCTION_40_1();
        v41(v40);
        __swift_destroy_boxed_opaque_existential_1(v47);
        if (v39)
        {
          OUTLINED_FUNCTION_32_4();
          v42 = swift_allocObject();
          *(v42 + 24) = 0;
          *(v42 + 32) = 0;
          *(v42 + 16) = v3;
          *(v42 + 40) = 1;
          OUTLINED_FUNCTION_25_8();
          sub_267651508(v3);
          v36 = v42 | 0x5000000000000000;
LABEL_28:
          sub_26764AC08(v36);
          swift_endAccess();
          goto LABEL_29;
        }

        sub_2676C9ECC();
        v44 = v48;
        v45 = OUTLINED_FUNCTION_39_3(v47);
        v46 = sub_267691338(v45, v44);
        __swift_destroy_boxed_opaque_existential_1(v47);
        if (v46)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_32_4();
        v31 = swift_allocObject();
        *(v31 + 24) = 0;
        *(v31 + 32) = 0;
        *(v31 + 16) = v3;
        break;
      case 6:
        OUTLINED_FUNCTION_82();
        v43 = swift_allocObject();
        *(v43 + 16) = v3;
        OUTLINED_FUNCTION_25_8();
        sub_267651508(v3);
        v36 = v43 | 0x7000000000000000;
        goto LABEL_28;
      default:
        OUTLINED_FUNCTION_82();
        v35 = swift_allocObject();
        *(v35 + 16) = v3;
        OUTLINED_FUNCTION_25_8();
        sub_267651508(v3);
        v36 = v35 | 0x4000000000000000;
        goto LABEL_28;
    }

LABEL_20:
    *(v31 + 40) = 1;
    goto LABEL_21;
  }

  sub_2676C9ECC();
  OUTLINED_FUNCTION_98_0();
  sub_2676C990C();
  v14 = OUTLINED_FUNCTION_40_1();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1(v47);
  if ((v5 & 1) == 0)
  {
    sub_2676C9ECC();
    v26 = v48;
    v27 = OUTLINED_FUNCTION_39_3(v47);
    v28 = sub_267691338(v27, v26);
    __swift_destroy_boxed_opaque_existential_1(v47);
    if (v28)
    {
      v23 = v9;
      v24 = v7;
      v25 = 0;
LABEL_16:
      sub_2675D94FC(v23, v24, v25);
LABEL_17:
      OUTLINED_FUNCTION_74_0(v1 + 40, v47);
      v29 = *(v1 + 40);
      *(v1 + 40) = 0x9000000000000000;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_32_4();
    v32 = swift_allocObject();
    v31 = OUTLINED_FUNCTION_77_0(v32);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_32_4();
  v13 = swift_allocObject();
  *(OUTLINED_FUNCTION_77_0(v13) + 40) = 1;
LABEL_7:
  OUTLINED_FUNCTION_25_8();
  sub_267651508(v3);
  sub_26764AC08(v13 | 0x5000000000000000);
  swift_endAccess();
LABEL_29:

LABEL_37:
  OUTLINED_FUNCTION_20_1();
}

void sub_26764F804()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_2676C9C4C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_2();
  if (!v5)
  {
    v21 = qword_2801CBAA0;

    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v22 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v22, qword_2801CDC90);
    v23 = sub_2676CBE2C();
    v24 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v24))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_9_9(&dword_2675D4000, v25, v26, "#ReadMailActingFlow: user asked to reply to the email");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9ECC();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_53_0();
    sub_2676C990C();
    v27 = OUTLINED_FUNCTION_78_1();
    v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v98);
    if (v23)
    {
      OUTLINED_FUNCTION_32_4();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v20 = *(v1 + 40);
      *(v19 + 16) = v20;
      *(v19 + 24) = v9;
      *(v19 + 32) = v7;
      *(v19 + 40) = 1;
LABEL_15:
      OUTLINED_FUNCTION_9_18();
      sub_267651508(v20);
      sub_26764AC08(v19 | 0x5000000000000000);
      swift_endAccess();
LABEL_57:

      goto LABEL_58;
    }

    sub_2676C9ECC();
    v47 = v99;
    v48 = OUTLINED_FUNCTION_39_3(v98);
    v49 = sub_267691338(v48, v47);
    __swift_destroy_boxed_opaque_existential_1(v98);
    if (v49)
    {
      v44 = OUTLINED_FUNCTION_65_0();
      v46 = 0;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_32_4();
    v53 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_74_0(v56, v57);
    *(v53 + 16) = *(v1 + 40);
    *(v53 + 24) = v9;
    *(v53 + 32) = v7;
    *(v53 + 40) = 1;
LABEL_30:
    *(v1 + 40) = v53 | 0x6000000000000000;
    goto LABEL_58;
  }

  if (v5 == 1)
  {
    v11 = qword_2801CBAA0;

    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v12 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v12, qword_2801CDC90);
    v13 = sub_2676CBE2C();
    v14 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v14))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_9_9(&dword_2675D4000, v15, v16, "#ReadMailActingFlow: user asked to reply all to the email");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9ECC();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_53_0();
    sub_2676C990C();
    v17 = OUTLINED_FUNCTION_78_1();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v98);
    if (v13)
    {
      OUTLINED_FUNCTION_32_4();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v20 = *(v1 + 40);
      *(v19 + 16) = v20;
      *(v19 + 24) = v9;
      *(v19 + 32) = v7;
      *(v19 + 40) = 0;
      goto LABEL_15;
    }

    sub_2676C9ECC();
    v41 = v99;
    v42 = OUTLINED_FUNCTION_39_3(v98);
    v43 = sub_267691338(v42, v41);
    __swift_destroy_boxed_opaque_existential_1(v98);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_65_0();
      v46 = 1;
LABEL_27:
      sub_2675D94FC(v44, v45, v46);
      v50 = OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_74_0(v50, v51);
      v52 = *(v1 + 40);
      *(v1 + 40) = 0x9000000000000000;
      sub_267614A2C(v52);
LABEL_58:
      OUTLINED_FUNCTION_20_1();
      return;
    }

    OUTLINED_FUNCTION_32_4();
    v53 = swift_allocObject();
    v54 = OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_74_0(v54, v55);
    *(v53 + 16) = *(v1 + 40);
    *(v53 + 24) = v9;
    *(v53 + 32) = v7;
    *(v53 + 40) = 0;
    goto LABEL_30;
  }

  switch(v9)
  {
    case 1:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v88 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v88, qword_2801CDC90);
      v89 = sub_2676CBE2C();
      v90 = sub_2676CC23C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = OUTLINED_FUNCTION_17_3();
        *v91 = 0;
        _os_log_impl(&dword_2675D4000, v89, v90, "#ReadMailActingFlow: user asked to skip or go to the next email", v91, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      if (*(v1 + 40) == 0x9000000000000038)
      {
        OUTLINED_FUNCTION_9_18();
        sub_26764AC08(0x9000000000000048);
        goto LABEL_52;
      }

      if (v3)
      {
        v92 = sub_2676CBE2C();
        v93 = sub_2676CC23C();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = OUTLINED_FUNCTION_17_3();
          *v94 = 0;
          _os_log_impl(&dword_2675D4000, v92, v93, "#ReadMailActingFlow: user barged-in to skip to next email, do nothing", v94, 2u);
          OUTLINED_FUNCTION_2_5();
        }
      }

      else
      {
        v95 = *(v1 + 24);
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          goto LABEL_66;
        }

        *(v1 + 24) = v97;
      }

      goto LABEL_58;
    case 2:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v61 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v61, qword_2801CDC90);
      v62 = sub_2676CBE2C();
      v63 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v63))
      {
        v64 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v64);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v65, v66, v67, v68, v69, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v70 = *(v1 + 40);
      if (v70 >> 60 != 3)
      {
        goto LABEL_58;
      }

      v71 = *((v70 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v72 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        OUTLINED_FUNCTION_17_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_79_1();
        v74 = v73 - 1;
        if (v74 < v72)
        {
          v72 = v74;
        }

        *(v1 + 24) = v72;
        OUTLINED_FUNCTION_79();
        v75 = swift_allocObject();
        *(v75 + 16) = v72;
        sub_267646858();
        *(v75 + 24) = v76;
        OUTLINED_FUNCTION_70(v1 + 40, &v100);
        sub_26764AC08(v75 | 0x3000000000000000);
LABEL_56:
        swift_endAccess();
        goto LABEL_57;
      }

      __break(1u);
LABEL_66:
      __break(1u);
      break;
    case 3:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v77 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v77, qword_2801CDC90);
      v78 = sub_2676CBE2C();
      v79 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v79))
      {
        v80 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v80);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      v86 = OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_70(v86, v87);
      sub_26764AC08(0x9000000000000050);
LABEL_52:
      swift_endAccess();
      goto LABEL_58;
    case 4:
      OUTLINED_FUNCTION_82();
      v58 = swift_allocObject();
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v59 = *(v1 + 40);
      *(v58 + 16) = v59;
      OUTLINED_FUNCTION_9_18();
      sub_267651508(v59);
      v60 = v58 | 0x7000000000000000;
      goto LABEL_55;
    default:
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v29 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v29, qword_2801CDC90);
      v30 = sub_2676CBE2C();
      v31 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v31))
      {
        v32 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v32);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_17_13();
      swift_beginAccess();
      v38 = *(v1 + 40);
      OUTLINED_FUNCTION_82();
      v39 = swift_allocObject();
      v40 = v39;
      if (v38 == 0x9000000000000038)
      {
        *(v39 + 16) = 0x9000000000000048;
        OUTLINED_FUNCTION_9_18();
      }

      else
      {
        *(v39 + 16) = v38;
        OUTLINED_FUNCTION_9_18();
        sub_267651508(v38);
      }

      v60 = v40 | 0x4000000000000000;
LABEL_55:
      sub_26764AC08(v60);
      goto LABEL_56;
  }
}