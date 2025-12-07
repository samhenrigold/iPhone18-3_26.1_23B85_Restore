void sub_2219DDD60(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v116 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_221BCDFB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v111 - v17;
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 36))
  {

    os_unfair_lock_unlock((v3 + 32));
    return;
  }

  v114 = v7;
  v115 = v6;
  v113 = a1;
  *(v3 + 36) = 1;
  os_unfair_lock_unlock((v3 + 32));
  v19 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v3 + v19, v18, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
  v117 = 0;
  v21 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_221BCDF88();
    v117 = sub_221BCDFA8();
    v21 = v22;
    v23 = *(v10 + 8);
    v23(v12, v9);
    v23(v15, v9);
  }

  if (*(v3 + qword_27CFBC798))
  {

    sub_2219E7A60(v24, v3);
  }

  v25 = off_27CFBC778;
  swift_beginAccess();
  v112 = v25;
  if (*(*&v25[v3] + 16))
  {
    sub_2219BAF0C(v3 + qword_27CFBC788, &v119, &qword_27CFB7FD0, &qword_221BD2888);
    v26 = v121;
    if (!v121)
    {
      sub_2219EC58C(&v119, &qword_27CFB7FD0);
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v27 = v122;
    __swift_project_boxed_opaque_existential_0(&v119, v121);
    v111 = v3;
    v28 = *(v27 + 32);

    v28(v29, 0x697274654D736961, 0xEA00000000007363, v26, v27);
    v3 = v111;

    __swift_destroy_boxed_opaque_existential_0(&v119);
  }

  if ((a2 & 0x100) == 0)
  {
LABEL_13:
    sub_2219BAF0C(v3 + qword_27CFBC788, &v119, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = v121;
    if (v121)
    {
      v31 = v122;
      __swift_project_boxed_opaque_existential_0(&v119, v121);
      v33 = v114;
      v32 = v115;
      v34 = v116;
      (*(v114 + 104))(v116, *MEMORY[0x277CD8AC8], v115);
      (*(v31 + 24))(v34, v30, v31);
      (*(v33 + 8))(v34, v32);
      __swift_destroy_boxed_opaque_existential_0(&v119);
    }

    else
    {
      sub_2219EC58C(&v119, &qword_27CFB7FD0);
    }

    v38 = *(v3 + qword_27CFBC768);
    if (!v38)
    {

      v69 = v113;
      sub_2219EBF78(v113, a2, 0);
      v70 = sub_221BCCD68();
      v71 = sub_221BCDA98();

      sub_2219EBF84(v69, a2, 0);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        LODWORD(v115) = EnumTagSinglePayload;
        v73 = v72;
        v74 = swift_slowAlloc();
        v119 = v74;
        *v73 = 136315394;
        v75 = sub_2219CB3CC();
        v77 = sub_2219A6360(v75, v76, &v119);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = sub_2219C1894(v69, a2 & 1, *(v3 + qword_27CFDED20 + 17));
        v80 = sub_2219A6360(v78, v79, &v119);

        *(v73 + 14) = v80;
        _os_log_impl(&dword_221989000, v70, v71, "%sCompleted with %s", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v74, -1, -1);
        v81 = v73;
        EnumTagSinglePayload = v115;
        MEMORY[0x223DA4C00](v81, -1, -1);
      }

      goto LABEL_42;
    }

    LODWORD(v115) = EnumTagSinglePayload;
    v39 = *(v3 + qword_27CFBC768 + 8);
    sub_22198BEB8(v38, v39);

    v40 = v113;
    sub_2219EBF78(v113, a2, 0);
    v41 = sub_221BCCD68();
    v42 = sub_221BCDA98();

    sub_2219EBF84(v40, a2, 0);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v114 = v39;
      v44 = v43;
      v116 = swift_slowAlloc();
      v118 = v116;
      *v44 = 136315394;
      v45 = sub_2219CB3CC();
      v47 = sub_2219A6360(v45, v46, &v118);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v119 = v40;
      LOBYTE(v120) = a2 & 1;
      v48 = v114;
      v49 = v38(&v119);
      v51 = v21;
      v52 = sub_2219A6360(v49, v50, &v118);

      *(v44 + 14) = v52;
      v21 = v51;
      _os_log_impl(&dword_221989000, v41, v42, "%s%s", v44, 0x16u);
      v53 = v116;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v53, -1, -1);
      MEMORY[0x223DA4C00](v44, -1, -1);
      sub_22198B60C(v38, v48);
    }

    else
    {

      sub_22198B60C(v38, v39);
    }

    goto LABEL_35;
  }

LABEL_16:
  sub_2219BAF0C(v3 + qword_27CFBC788, &v119, &qword_27CFB7FD0, &qword_221BD2888);
  v35 = v121;
  if (v121)
  {
    v36 = v122;
    __swift_project_boxed_opaque_existential_0(&v119, v121);
    v37 = v116;
    sub_2219E7D00(v116);
    (*(v36 + 24))(v37, v35, v36);
    (*(v114 + 8))(v37, v115);
    __swift_destroy_boxed_opaque_existential_0(&v119);
  }

  else
  {
    sub_2219EC58C(&v119, &qword_27CFB7FD0);
  }

  v116 = v21;
  v54 = *(v3 + qword_27CFBC770);
  if (!v54)
  {
    v82 = *(v3 + qword_27CFDED20 + 17);

    v83 = sub_221BCCD68();
    v84 = sub_221BCDA78();

    v85 = os_log_type_enabled(v83, v84);
    if (v82)
    {
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v119 = v87;
        *v86 = 136315395;
        v88 = sub_2219CB3CC();
        v90 = sub_2219A6360(v88, v89, &v119);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2085;
        v91 = sub_221BCE288();
        v93 = sub_2219A6360(v91, v92, &v119);

        *(v86 + 14) = v93;
        v94 = "%sFailed with %{sensitive}s";
LABEL_39:
        _os_log_impl(&dword_221989000, v83, v84, v94, v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v87, -1, -1);
        MEMORY[0x223DA4C00](v86, -1, -1);
      }
    }

    else if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v119 = v87;
      *v86 = 136315395;
      v95 = sub_2219CB3CC();
      v97 = sub_2219A6360(v95, v96, &v119);

      *(v86 + 4) = v97;
      *(v86 + 12) = 2081;
      v98 = sub_221BCE288();
      v100 = sub_2219A6360(v98, v99, &v119);

      *(v86 + 14) = v100;
      v94 = "%sFailed with %{private}s";
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v55 = *(v3 + qword_27CFBC770 + 8);

  sub_22198BEB8(v54, v55);
  v56 = sub_221BCCD68();
  v57 = sub_221BCDA78();

  if (!os_log_type_enabled(v56, v57))
  {

    sub_22198B60C(v54, v55);
LABEL_41:
    v21 = v116;
    goto LABEL_42;
  }

  LODWORD(v115) = EnumTagSinglePayload;
  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v119 = v59;
  *v58 = 136315394;
  v60 = sub_2219CB3CC();
  v62 = sub_2219A6360(v60, v61, &v119);

  *(v58 + 4) = v62;
  *(v58 + 12) = 2080;
  v63 = sub_221BCE198();
  if (!v63)
  {
    v63 = swift_allocError();
  }

  v64 = v63;
  v65 = v54();
  v67 = v66;

  v68 = sub_2219A6360(v65, v67, &v119);

  *(v58 + 14) = v68;
  _os_log_impl(&dword_221989000, v56, v57, "%s %s", v58, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v59, -1, -1);
  MEMORY[0x223DA4C00](v58, -1, -1);
  sub_22198B60C(v54, v55);

  v21 = v116;
LABEL_35:
  EnumTagSinglePayload = v115;
LABEL_42:
  sub_2219E7E58(v117, v21, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v3 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v101 = *(v3 + qword_27CFBC780);
    v102 = *(v3 + qword_27CFBC780 + 8);
    v116 = v21;
    v103 = *(v3 + qword_27CFBC780 + 16);
    v104 = sub_2219CB440();
    v106 = v105;
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_221BCDE68();
    v107 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v107);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v108 = v119;
    v109 = v120;
    v110 = *&v112[v3];

    sub_221BB52B0(v101, v102, v103, v104, v106, v117, v116, v108, v109, 1, 1, v110);
  }
}

void sub_2219DEB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v190 = v23;
  v189 = v24;
  v194 = v25;
  v27 = v26;
  v199 = v28;
  v192 = v29;
  v30 = v22;
  v32 = v31;
  v34 = v33;
  v188 = a22;
  v187 = a21;
  v198 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v197 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v37);
  v39 = &v185 - v38;
  v40 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_5();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v48);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v49);
  v51 = &v185 - v50;
  os_unfair_lock_lock((v22 + 32));
  if (*(v22 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v52);
    return;
  }

  v191 = v27;
  LODWORD(v195) = v32;
  OUTLINED_FUNCTION_61_0();
  v54 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v22 + qword_27CFBC7A0);
  sub_2219BAF0C(v22 + v54, v51, &qword_27CFB7FC8, &qword_221BD2880);
  v55 = OUTLINED_FUNCTION_119();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, v56, v40);
  OUTLINED_FUNCTION_226();
  if (v58 != 1)
  {
    v59 = OUTLINED_FUNCTION_90();
    v60(v59, v51, v40);
    sub_221BCDF88();
    v61 = sub_221BCDFA8();
    OUTLINED_FUNCTION_225(v61, v62);
    v51 = *(v42 + 8);
    (v51)(v46, v40);
    v63 = OUTLINED_FUNCTION_16();
    (v51)(v63);
  }

  if (*(v22 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_110(v64);
  }

  v65 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&v205);
  v66 = v195;
  if (!v67)
  {
LABEL_12:
    if ((v66 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
  v51 = v203;
  if (v203)
  {
    v46 = v204;
    OUTLINED_FUNCTION_62_0(&v201, v203);
    v68 = EnumTagSinglePayload;
    v69 = v34;
    v70 = *(v46 + 4);

    OUTLINED_FUNCTION_3_11();
    v70();
    v65 = &unk_27CFBC000;
    v66 = v195;
    v34 = v69;
    EnumTagSinglePayload = v68;

    __swift_destroy_boxed_opaque_existential_0(&v201);
    goto LABEL_12;
  }

  sub_2219EC58C(&v201, &qword_27CFB7FD0);
  if ((v66 & 0x100) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
    v71 = v203;
    if (v203)
    {
      v51 = v204;
      OUTLINED_FUNCTION_15_3();
      v72 = v197;
      (*(v197 + 104))(v39, *MEMORY[0x277CD8AC8], v198);
      (*(v51 + 3))(v39, v71, v51);
      v46 = (v72 + 8);
      v73 = OUTLINED_FUNCTION_140();
      v74(v73);
      __swift_destroy_boxed_opaque_existential_0(&v201);
    }

    else
    {
      sub_2219EC58C(&v201, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v71)
    {
      v85 = *(v84 + 8);
      v86 = OUTLINED_FUNCTION_72();
      v192(v86);

      v87 = OUTLINED_FUNCTION_84();
      sub_2219EC1F8(v87, v88, v89, v199);
      v90 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_198();
      v91 = OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_202(v91, v92, v93);
      if (os_log_type_enabled(v90, v39))
      {
        v94 = OUTLINED_FUNCTION_103();
        LODWORD(v199) = EnumTagSinglePayload;
        v95 = v94;
        v198 = OUTLINED_FUNCTION_105();
        v200[0] = v198;
        v96 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_150(v96, v97);
        OUTLINED_FUNCTION_245();
        *(v95 + 4) = v46;
        OUTLINED_FUNCTION_173();
        v201 = v34;
        LOBYTE(v202) = v66 & 1;
        v34 = v85;
        v98 = (v71)(&v201);
        OUTLINED_FUNCTION_150(v98, v99);
        OUTLINED_FUNCTION_5_1();
        *(v95 + 14) = v85;
        OUTLINED_FUNCTION_214(&dword_221989000, v90, v39, "%s%s", v185, v186);
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        EnumTagSinglePayload = v199;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v194(v71, v85);
      }

      else
      {

        v119 = OUTLINED_FUNCTION_72();
        (v194)(v119);
      }

      goto LABEL_46;
    }

    v101 = OUTLINED_FUNCTION_84();
    sub_2219EC1F8(v101, v102, v103, v199);
    v104 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_153_0();
    v105 = OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_202(v105, v106, v107);
    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_103();
      v108 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v108);
      v109 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v109, v110);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 4) = v51;
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_218();
      v112 = sub_2219C1948(v34, v66 & 1, v111, v189, v190);
      OUTLINED_FUNCTION_102(v112, v113);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v51;
      v116 = "%sCompleted with %s";
LABEL_42:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v114, v115, v116);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_43;
    }

    goto LABEL_43;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
  v75 = v203;
  if (v203)
  {
    v195 = OUTLINED_FUNCTION_47();
    v200[5] = v34;
    v76 = v34;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v200);
      v200[0] = v34;
      v78 = v34;
      v79 = sub_221BCE198();
      if (v79)
      {
        v80 = v79;
        v81 = OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_202(v81, v82, v83);
      }

      else
      {
        v80 = OUTLINED_FUNCTION_17_2(v77, MEMORY[0x277D84950]);
        *v120 = v34;
      }

      v121 = sub_221BCC328();

      v122 = [v121 domain];
      v123 = sub_221BCD388();
      v125 = v124;

      v126 = [v121 code];
      v118 = v193;
      *v193 = v123;
      v118[1] = v125;
      v118[2] = v126;
      v117 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v117 = MEMORY[0x277CD8AC0];
      v118 = v193;
    }

    v127 = v197;
    v128 = v118;
    v39 = v198;
    (*(v197 + 104))(v118, *v117, v198);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v129();
    v130 = *(v127 + 8);
    v51 = (v127 + 8);
    v130(v128, v39);
    __swift_destroy_boxed_opaque_existential_0(&v201);
  }

  else
  {
    sub_2219EC58C(&v201, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  if (v75)
  {
    v132 = *(v131 + 8);

    v133 = OUTLINED_FUNCTION_85();
    sub_2219EC1F8(v133, v134, v135, v199);
    v136 = OUTLINED_FUNCTION_1_0();
    v138 = OUTLINED_FUNCTION_207(v136, v137);
    sub_221BCDA78();
    OUTLINED_FUNCTION_198();
    v139 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_202(v139, v140, v141);
    if (os_log_type_enabled(v138, v39))
    {
      LODWORD(v199) = EnumTagSinglePayload;
      v142 = OUTLINED_FUNCTION_103();
      v198 = OUTLINED_FUNCTION_105();
      v201 = v198;
      v143 = OUTLINED_FUNCTION_216(4.8151e-34);
      OUTLINED_FUNCTION_102(v143, v144);
      OUTLINED_FUNCTION_5_1();
      *(v142 + 4) = v51;
      OUTLINED_FUNCTION_173();
      v200[0] = v34;
      v145 = v34;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v148 = OUTLINED_FUNCTION_208(v146, v147, MEMORY[0x277D84950]);
      if (v148)
      {
        v149 = v148;
        v150 = OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_202(v150, v151, v152);
      }

      else
      {
        v149 = OUTLINED_FUNCTION_112(0, MEMORY[0x277D84950]);
        *v167 = v34;
      }

      (v75)(v149);
      OUTLINED_FUNCTION_185();

      v168 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v168, v66, v169);
      OUTLINED_FUNCTION_215();
      *(v142 + 14) = v132;
      OUTLINED_FUNCTION_214(&dword_221989000, v138, v39, "%s %s", v185, v186);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      v170 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v170, v171);
      EnumTagSinglePayload = v199;
    }

    else
    {

      v160 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v160, v161);
    }

    goto LABEL_46;
  }

  v153 = v34;
  v34 = *(v30 + qword_27CFDED20 + 17);

  sub_2219EC1F8(v153, v66, 1, v199);
  v104 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_202(v153, v66, 1);
  v154 = OUTLINED_FUNCTION_169();
  if (v34)
  {
    if (v154)
    {
      OUTLINED_FUNCTION_103();
      v155 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v155);
      v156 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v156, v157);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_158();
      v200[0] = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v158 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v158, v159);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v51;
      v116 = "%sFailed with %{sensitive}s";
      goto LABEL_42;
    }
  }

  else if (v154)
  {
    OUTLINED_FUNCTION_103();
    v162 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v162);
    v163 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v163, v164);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_159();
    v200[0] = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v165 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v165, v166);
    OUTLINED_FUNCTION_5_1();
    *(v34 + 14) = v51;
    v116 = "%sFailed with %{private}s";
    goto LABEL_42;
  }

LABEL_43:

LABEL_46:
  v172 = v196;
  OUTLINED_FUNCTION_133(v196, v100, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v30 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    v198 = v173;
    v199 = v174;
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    v175 = sub_221BCE3F8();
    v176 = OUTLINED_FUNCTION_101(v175, 1000.0);
    OUTLINED_FUNCTION_100(v176, v177, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v178 = v201;
    v179 = v202;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    v185 = v179;
    OUTLINED_FUNCTION_31_1();
    sub_221BB52B0(v180, v181, v182, v183, v184, v172, v34, v178, v185, v186, SBYTE1(v186), v187);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DF75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v141 = v26;
  v140 = v27;
  v29 = v28;
  v143 = v30;
  v144 = v31;
  v142 = v32;
  v33 = v21;
  v35 = v34;
  v37 = v36;
  sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v145 = v39;
  v146 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v42 = (v41 - v40);
  v43 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v48);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_156();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v50);
    return;
  }

  v138 = v29;
  v139 = v37;
  OUTLINED_FUNCTION_61_0();
  v52 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v21 + qword_27CFBC7A0);
  sub_2219BAF0C(v52 + v21, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v53 = OUTLINED_FUNCTION_151(v22);
  v54 = 0;
  OUTLINED_FUNCTION_175(v53, &a16);
  if (!v55)
  {
    v56 = OUTLINED_FUNCTION_90();
    v57(v56, v22, v43);
    sub_221BCDF88();
    v54 = sub_221BCDFA8();
    v52 = *(v45 + 8);
    v52(v23, v43);
    v58 = OUTLINED_FUNCTION_16();
    (v52)(v58);
  }

  if (*(v21 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_160(v59);
  }

  v60 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a12);
  if (!v61)
  {
LABEL_12:
    if ((v35 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v60[241]);
  v22 = v149;
  if (v149)
  {
    v62 = v150;
    OUTLINED_FUNCTION_62_0(&v147, v149);
    v63 = v35;
    v64 = v54;
    v52 = (v62 + 32);
    v65 = *(v62 + 32);

    OUTLINED_FUNCTION_3_11();
    v65();
    v60 = &unk_27CFBC000;
    v54 = v64;
    v35 = v63;

    __swift_destroy_boxed_opaque_existential_0(&v147);
    goto LABEL_12;
  }

  sub_2219EC58C(&v147, &qword_27CFB7FD0);
  if ((v35 & 0x100) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v60[241]);
    v66 = v149;
    if (v149)
    {
      v22 = v150;
      OUTLINED_FUNCTION_15_3();
      (*(v145 + 104))(v42, *MEMORY[0x277CD8AC8], v146);
      (*(v22 + 24))(v42, v66, v22);
      v67 = OUTLINED_FUNCTION_140();
      v68(v67);
      __swift_destroy_boxed_opaque_existential_0(&v147);
    }

    else
    {
      sub_2219EC58C(&v147, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v66)
    {
      v70 = OUTLINED_FUNCTION_94();
      v142(v70);

      v143(v139, v35, 0);
      v71 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_198();
      v144(v139, v35, 0);
      if (os_log_type_enabled(v71, v42))
      {
        v72 = OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_105();
        v73 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_250(v73, v74);
        OUTLINED_FUNCTION_245();
        *(v72 + 4) = v54;
        OUTLINED_FUNCTION_173();
        v147 = v139;
        LOBYTE(v148) = v35 & 1;
        v75 = (v66)(&v147);
        OUTLINED_FUNCTION_250(v75, v76);
        OUTLINED_FUNCTION_5_1();
        *(v72 + 14) = v35;
        OUTLINED_FUNCTION_214(&dword_221989000, v71, v42, "%s%s", v54, v137);
        OUTLINED_FUNCTION_190(v77, v78, MEMORY[0x277D84F70] + 8);
        v54 = v135;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v79 = OUTLINED_FUNCTION_94();
        v138(v79);
      }

      else
      {

        v113 = OUTLINED_FUNCTION_94();
        v138(v113);
      }

      goto LABEL_39;
    }

    v143(v139, v35, 0);
    v66 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_153_0();
    v144(v139, v35, 0);
    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_103();
      v98 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v98);
      v99 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v99, v100);
      OUTLINED_FUNCTION_149();
      *(v35 + 4) = v22;
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_218();
      v102 = sub_2219C1948(v139, v35 & 1, v101, v140, v141);
      OUTLINED_FUNCTION_102(v102, v103);
      OUTLINED_FUNCTION_5_1();
      *(v35 + 14) = v35;
      v106 = "%sCompleted with %s";
LABEL_37:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v104, v105, v106);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_38;
    }

    goto LABEL_38;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v60[241]);
  v66 = v149;
  if (v149)
  {
    OUTLINED_FUNCTION_13_3();
    sub_2219E7D00(v42);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v69();
    (*(v145 + 8))(v42, v146);
    __swift_destroy_boxed_opaque_existential_0(&v147);
  }

  else
  {
    sub_2219EC58C(&v147, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  if (v66)
  {

    v80 = OUTLINED_FUNCTION_1_0();
    v82 = OUTLINED_FUNCTION_207(v80, v81);
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    if (os_log_type_enabled(v82, v52))
    {
      v83 = OUTLINED_FUNCTION_103();
      v84 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_146(v84);
      v85 = OUTLINED_FUNCTION_213(4.8151e-34);
      v87 = OUTLINED_FUNCTION_102(v85, v86);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      v88 = sub_221BCE198();
      v136 = v54;
      if (!v88)
      {
        v88 = OUTLINED_FUNCTION_17_2(MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      v89 = v88;
      v66();
      v91 = v90;

      v92 = OUTLINED_FUNCTION_64();
      v94 = sub_2219A6360(v92, v91, v93);

      *(v83 + 14) = v94;
      OUTLINED_FUNCTION_201(&dword_221989000, v95, v52, "%s %s");
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v96 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v96, v97);

      v54 = v136;
    }

    else
    {

      v114 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v114, v115);
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_177();

  v66 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v107 = OUTLINED_FUNCTION_169();
  if (v35)
  {
    if (v107)
    {
      OUTLINED_FUNCTION_103();
      v108 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v108);
      v109 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v109, v110);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_158();
      v111 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v111, v112);
      OUTLINED_FUNCTION_5_1();
      *(v35 + 14) = v52;
      v106 = "%sFailed with %{sensitive}s";
      goto LABEL_37;
    }
  }

  else if (v107)
  {
    OUTLINED_FUNCTION_103();
    v116 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v116);
    v117 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v117, v118);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_159();
    v119 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v119, v120);
    OUTLINED_FUNCTION_5_1();
    *(v35 + 14) = v52;
    v106 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_191(v54, v121, v122);
  if (v66 != 1 && (*(v33 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v54) & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v123 = sub_221BCE3F8();
    v124 = OUTLINED_FUNCTION_101(v123, 1000.0);
    OUTLINED_FUNCTION_100(v124, v125, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v126 = v148;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v127, v128, v129, v130, v131, v132, v133, v134, v126, v137, v138);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219E0184(void *a1, unint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v134) = a3;
  v133 = a2;
  v135 = a1;
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v126 - v10;
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v126 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v126 - v20;
  os_unfair_lock_lock((v4 + 32));
  if (*(v4 + 36))
  {

    os_unfair_lock_unlock((v4 + 32));
    return;
  }

  v129 = v8;
  *(v4 + 36) = 1;
  os_unfair_lock_unlock((v4 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v4 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v12);
  v132 = 0;
  v131 = 0;
  v130 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v18, v21, v12);
    sub_221BCDF88();
    v132 = sub_221BCDFA8();
    v131 = v24;
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);
  }

  if (*(v4 + qword_27CFBC798))
  {

    sub_2219E7A60(v26, v4);
  }

  v27 = off_27CFBC778;
  swift_beginAccess();
  v128 = v27;
  v28 = *&v27[v4];
  v29 = &unk_27CFBC000;
  if (*(v28 + 16))
  {
    sub_2219BAF0C(v4 + qword_27CFBC788, &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = v139;
    if (v139)
    {
      v31 = v140;
      __swift_project_boxed_opaque_existential_0(&v137, v139);
      v32 = v6;
      v33 = v5;
      v34 = *(v31 + 32);

      v34(v35, 0x697274654D736961, 0xEA00000000007363, v30, v31);
      v29 = &unk_27CFBC000;
      v5 = v33;
      v6 = v32;

      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
    }
  }

  if (v134)
  {
    sub_2219BAF0C(v4 + v29[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v36 = v139;
    if (v139)
    {
      v127 = v5;
      v37 = v140;
      v134 = __swift_project_boxed_opaque_existential_0(&v137, v139);
      v38 = v135;
      v136[5] = v135;
      v39 = v135;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v136);
        v136[0] = v38;
        v40 = v38;
        v41 = sub_221BCE198();
        if (v41)
        {
          v42 = v41;
          sub_2219EBE84(v38, v133, 1);
        }

        else
        {
          v42 = swift_allocError();
          *v72 = v38;
        }

        v73 = sub_221BCC328();

        v74 = [v73 domain];
        v75 = sub_221BCD388();
        v77 = v76;

        v78 = [v73 code];
        v71 = v129;
        *v129 = v75;
        v71[1] = v77;
        v71[2] = v78;
        v70 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v70 = MEMORY[0x277CD8AC0];
        v71 = v129;
      }

      v79 = v127;
      (*(v6 + 104))(v71, *v70, v127);
      (*(v37 + 24))(v71, v36, v37);
      (*(v6 + 8))(v71, v79);
      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
      v38 = v135;
    }

    v47 = *(v4 + qword_27CFBC770);
    if (v47)
    {
      v48 = *(v4 + qword_27CFBC770 + 8);

      v80 = v133;
      sub_2219EBE78(v38, v133, 1);
      sub_22198BEB8(v47, v48);
      v49 = sub_221BCCD68();
      v81 = sub_221BCDA78();

      sub_2219EBE84(v38, v80, 1);
      if (os_log_type_enabled(v49, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v137 = v83;
        *v82 = 136315394;
        v84 = sub_2219CB3CC();
        v86 = sub_2219A6360(v84, v85, &v137);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        v136[0] = v38;
        v87 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v88 = sub_221BCE198();
        if (v88)
        {
          v89 = v88;
          sub_2219EBE84(v38, v133, 1);
        }

        else
        {
          v89 = swift_allocError();
          *v109 = v38;
        }

        v110 = v47(v89);
        v112 = v111;

        v113 = sub_2219A6360(v110, v112, &v137);

        *(v82 + 14) = v113;
        _os_log_impl(&dword_221989000, v49, v81, "%s %s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v83, -1, -1);
        MEMORY[0x223DA4C00](v82, -1, -1);
      }

      goto LABEL_45;
    }

    v90 = *(v4 + qword_27CFDED20 + 17);

    v91 = v133;
    sub_2219EBE78(v38, v133, 1);
    v59 = sub_221BCCD68();
    v92 = sub_221BCDA78();

    sub_2219EBE84(v38, v91, 1);
    v93 = os_log_type_enabled(v59, v92);
    if (v90)
    {
      if (v93)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v137 = v95;
        *v94 = 136315395;
        v96 = sub_2219CB3CC();
        v98 = sub_2219A6360(v96, v97, &v137);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2085;
        v136[0] = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v99 = sub_221BCE288();
        v101 = sub_2219A6360(v99, v100, &v137);

        *(v94 + 14) = v101;
        v102 = "%sFailed with %{sensitive}s";
LABEL_40:
        _os_log_impl(&dword_221989000, v59, v92, v102, v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v95, -1, -1);
        v69 = v94;
        goto LABEL_41;
      }
    }

    else if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v137 = v95;
      *v94 = 136315395;
      v103 = sub_2219CB3CC();
      v105 = sub_2219A6360(v103, v104, &v137);

      *(v94 + 4) = v105;
      *(v94 + 12) = 2081;
      v136[0] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v106 = sub_221BCE288();
      v108 = sub_2219A6360(v106, v107, &v137);

      *(v94 + 14) = v108;
      v102 = "%sFailed with %{private}s";
      goto LABEL_40;
    }

LABEL_42:

    goto LABEL_46;
  }

  sub_2219BAF0C(v4 + v29[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
  v43 = v139;
  if (v139)
  {
    v44 = v5;
    v45 = v140;
    __swift_project_boxed_opaque_existential_0(&v137, v139);
    (*(v6 + 104))(v11, *MEMORY[0x277CD8AC8], v44);
    (*(v45 + 24))(v11, v43, v45);
    (*(v6 + 8))(v11, v44);
    __swift_destroy_boxed_opaque_existential_0(&v137);
  }

  else
  {
    sub_2219EC58C(&v137, &qword_27CFB7FD0);
  }

  v46 = v135;
  v47 = *(v4 + qword_27CFBC768);
  if (!v47)
  {

    v59 = sub_221BCCD68();
    v60 = sub_221BCDA98();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v137 = v62;
      *v61 = 136315394;
      v63 = sub_2219CB3CC();
      v65 = sub_2219A6360(v63, v64, &v137);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v66 = sub_2219C19DC(v46, v133, *(v4 + qword_27CFDED20 + 17));
      v68 = sub_2219A6360(v66, v67, &v137);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_221989000, v59, v60, "%sCompleted with %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v62, -1, -1);
      v69 = v61;
LABEL_41:
      MEMORY[0x223DA4C00](v69, -1, -1);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v48 = *(v4 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v4 + qword_27CFBC768), v48);

  v49 = sub_221BCCD68();
  v50 = sub_221BCDA98();

  if (!os_log_type_enabled(v49, v50))
  {
LABEL_45:

    sub_22198B60C(v47, v48);
    goto LABEL_46;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v136[0] = v52;
  *v51 = 136315394;
  v53 = sub_2219CB3CC();
  v55 = sub_2219A6360(v53, v54, v136);

  *(v51 + 4) = v55;
  *(v51 + 12) = 2080;
  v137 = v46;
  v138 = v133;
  v56 = v47(&v137);
  v58 = sub_2219A6360(v56, v57, v136);

  *(v51 + 14) = v58;
  _os_log_impl(&dword_221989000, v49, v50, "%s%s", v51, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v52, -1, -1);
  MEMORY[0x223DA4C00](v51, -1, -1);
  sub_22198B60C(v47, v48);

LABEL_46:
  v114 = v130;
  v115 = v132;
  v116 = v131;
  sub_2219E7E58(v132, v131, v130 == 1);
  if (v114 != 1 && (*(v4 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v117 = *(v4 + qword_27CFBC780);
    v134 = *(v4 + qword_27CFBC780 + 8);
    v135 = v117;
    v118 = *(v4 + qword_27CFBC780 + 16);
    v119 = sub_2219CB440();
    v121 = v120;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_221BCDE68();
    v122 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v122);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v123 = v137;
    v124 = v138;
    v125 = *&v128[v4];

    sub_221BB52B0(v135, v134, v118, v119, v121, v115, v116, v123, v124, 1, 1, v125);
  }
}

void sub_2219E10FC(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v117) = a3;
  v7 = sub_221BCCE38();
  v116 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v111 - v18;
  os_unfair_lock_lock((v4 + 32));
  if (*(v4 + 36))
  {

    os_unfair_lock_unlock((v4 + 32));
    return;
  }

  v112 = a1;
  v113 = a2;
  *(v4 + 36) = 1;
  os_unfair_lock_unlock((v4 + 32));
  v20 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v4 + v20, v19, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v10);
  v22 = 0;
  v115 = 0;
  v114 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v16, v19, v10);
    sub_221BCDF88();
    v22 = sub_221BCDFA8();
    v115 = v23;
    v24 = *(v11 + 8);
    v24(v13, v10);
    v24(v16, v10);
  }

  if (*(v4 + qword_27CFBC798))
  {

    sub_2219E7A60(v25, v4);
  }

  v26 = off_27CFBC778;
  swift_beginAccess();
  v111 = v26;
  v27 = *&v26[v4];
  v28 = &unk_27CFBC000;
  if (*(v27 + 16))
  {
    sub_2219BAF0C(v4 + qword_27CFBC788, &v119, &qword_27CFB7FD0, &qword_221BD2888);
    v29 = v121;
    if (v121)
    {
      v30 = v122;
      __swift_project_boxed_opaque_existential_0(&v119, v121);
      v31 = v7;
      v32 = v22;
      v33 = *(v30 + 32);

      v33(v34, 0x697274654D736961, 0xEA00000000007363, v29, v30);
      v28 = &unk_27CFBC000;
      v22 = v32;
      v7 = v31;

      __swift_destroy_boxed_opaque_existential_0(&v119);
    }

    else
    {
      sub_2219EC58C(&v119, &qword_27CFB7FD0);
    }
  }

  if (v117)
  {
    sub_2219BAF0C(v4 + v28[241], &v119, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v121;
    if (v121)
    {
      v36 = v122;
      __swift_project_boxed_opaque_existential_0(&v119, v121);
      sub_2219E7D00(v9);
      (*(v36 + 24))(v9, v35, v36);
      (*(v116 + 8))(v9, v7);
      __swift_destroy_boxed_opaque_existential_0(&v119);
    }

    else
    {
      sub_2219EC58C(&v119, &qword_27CFB7FD0);
    }

    v40 = *(v4 + qword_27CFBC770);
    if (v40)
    {
      v117 = v22;
      v41 = *(v4 + qword_27CFBC770 + 8);

      sub_22198BEB8(v40, v41);
      v42 = sub_221BCCD68();
      v43 = sub_221BCDA78();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v119 = v45;
        *v44 = 136315394;
        v46 = sub_2219CB3CC();
        v48 = sub_2219A6360(v46, v47, &v119);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v49 = sub_221BCE198();
        if (!v49)
        {
          v49 = swift_allocError();
        }

        v50 = v49;
        v51 = v40();
        v53 = v52;

        v54 = sub_2219A6360(v51, v53, &v119);

        *(v44 + 14) = v54;
        _os_log_impl(&dword_221989000, v42, v43, "%s %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v45, -1, -1);
        MEMORY[0x223DA4C00](v44, -1, -1);
        sub_22198B60C(v40, v41);
      }

      else
      {

        sub_22198B60C(v40, v41);
      }

      v22 = v117;
      goto LABEL_41;
    }

    v68 = *(v4 + qword_27CFDED20 + 17);

    v69 = sub_221BCCD68();
    v70 = sub_221BCDA78();

    v71 = os_log_type_enabled(v69, v70);
    if (v68)
    {
      if (v71)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v119 = v73;
        *v72 = 136315395;
        v74 = sub_2219CB3CC();
        v76 = v22;
        v77 = sub_2219A6360(v74, v75, &v119);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2085;
        v78 = sub_221BCE288();
        v80 = sub_2219A6360(v78, v79, &v119);

        *(v72 + 14) = v80;
        v22 = v76;
        v81 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v69, v70, v81, v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v73, -1, -1);
        v91 = v72;
        goto LABEL_39;
      }
    }

    else if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119 = v73;
      *v72 = 136315395;
      v92 = sub_2219CB3CC();
      v94 = v22;
      v95 = sub_2219A6360(v92, v93, &v119);

      *(v72 + 4) = v95;
      *(v72 + 12) = 2081;
      v96 = sub_221BCE288();
      v98 = sub_2219A6360(v96, v97, &v119);

      *(v72 + 14) = v98;
      v22 = v94;
      v81 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_41;
  }

  sub_2219BAF0C(v4 + v28[241], &v119, &qword_27CFB7FD0, &qword_221BD2888);
  v37 = v121;
  if (v121)
  {
    v38 = v122;
    __swift_project_boxed_opaque_existential_0(&v119, v121);
    v39 = v116;
    (*(v116 + 104))(v9, *MEMORY[0x277CD8AC8], v7);
    (*(v38 + 24))(v9, v37, v38);
    (*(v39 + 8))(v9, v7);
    __swift_destroy_boxed_opaque_existential_0(&v119);
  }

  else
  {
    sub_2219EC58C(&v119, &qword_27CFB7FD0);
  }

  v55 = *(v4 + qword_27CFBC768);
  if (!v55)
  {

    v69 = sub_221BCCD68();
    v82 = sub_221BCDA98();

    if (os_log_type_enabled(v69, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v119 = v84;
      *v83 = 136315394;
      v85 = sub_2219CB3CC();
      v87 = sub_2219A6360(v85, v86, &v119);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      v88 = sub_2219C19DC(v112, v113, *(v4 + qword_27CFDED20 + 17));
      v90 = sub_2219A6360(v88, v89, &v119);

      *(v83 + 14) = v90;
      _os_log_impl(&dword_221989000, v69, v82, "%sCompleted with %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v84, -1, -1);
      v91 = v83;
LABEL_39:
      MEMORY[0x223DA4C00](v91, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v56 = *(v4 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v4 + qword_27CFBC768), v56);

  v57 = sub_221BCCD68();
  v58 = sub_221BCDA98();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v118 = v60;
    *v59 = 136315394;
    v61 = sub_2219CB3CC();
    v63 = v22;
    v64 = sub_2219A6360(v61, v62, &v118);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v119 = v112;
    v120 = v113;
    v65 = v55(&v119);
    v67 = sub_2219A6360(v65, v66, &v118);

    *(v59 + 14) = v67;
    v22 = v63;
    _os_log_impl(&dword_221989000, v57, v58, "%s%s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v60, -1, -1);
    MEMORY[0x223DA4C00](v59, -1, -1);
    sub_22198B60C(v55, v56);
  }

  else
  {

    sub_22198B60C(v55, v56);
  }

LABEL_41:
  v99 = v114;
  v100 = v115;
  sub_2219E7E58(v22, v115, v114 == 1);
  if (v99 != 1 && (*(v4 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v101 = *(v4 + qword_27CFBC780);
    v116 = *(v4 + qword_27CFBC780 + 8);
    v117 = v101;
    v102 = *(v4 + qword_27CFBC780 + 16);
    v103 = v22;
    v104 = sub_2219CB440();
    v106 = v105;
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_221BCDE68();
    v107 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v107);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v108 = v119;
    v109 = v120;
    v110 = *&v111[v4];

    sub_221BB52B0(v117, v116, v102, v104, v106, v103, v100, v108, v109, 1, 1, v110);
  }
}

void sub_2219E1E30(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v141 = *(a1 + 8);
  v5 = *(a1 + 24);
  v140 = *(a1 + 16);
  v139 = v5;
  LODWORD(v142) = *(a1 + 32);
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v138 = (&v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v137 = &v132 - v10;
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v132 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v132 - v19;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v135 = v7;
  v136 = v6;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v21 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v21, v20, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v11);
  v23 = 0;
  v143 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v17, v20, v11);
    sub_221BCDF88();
    v23 = sub_221BCDFA8();
    v143 = v24;
    v25 = *(v12 + 8);
    v25(v14, v11);
    v25(v17, v11);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v26, v2);
  }

  v27 = off_27CFBC778;
  swift_beginAccess();
  v134 = v27;
  v28 = *&v27[v2];
  v29 = &unk_27CFBC000;
  if (*(v28 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v148, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = *(&v149 + 1);
    if (*(&v149 + 1))
    {
      v31 = v150;
      __swift_project_boxed_opaque_existential_0(&v148, *(&v149 + 1));
      v133 = v4;
      v32 = v23;
      v33 = *(v31 + 32);

      v33(v34, 0x697274654D736961, 0xEA00000000007363, v30, v31);
      v29 = &unk_27CFBC000;
      v4 = v133;
      v23 = v32;

      __swift_destroy_boxed_opaque_existential_0(&v148);
    }

    else
    {
      sub_2219EC58C(&v148, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 34))
  {
    sub_2219BAF0C(v2 + v29[241], &v148, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = *(&v149 + 1);
    if (*(&v149 + 1))
    {
      v142 = v150;
      v36 = __swift_project_boxed_opaque_existential_0(&v148, *(&v149 + 1));
      v147 = v4;
      v37 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v144);
        *&v144 = v4;
        v38 = v4;
        v39 = sub_221BCE198();
        v141 = v36;
        if (v39)
        {
          v40 = v39;
          v41 = v4;
          sub_2219EC58C(a1, &qword_27CFB8120);
        }

        else
        {
          v40 = swift_allocError();
          v41 = v4;
          *v77 = v4;
        }

        v78 = sub_221BCC328();

        v79 = [v78 domain];
        v80 = sub_221BCD388();
        v82 = v81;

        v83 = [v78 code];
        v76 = v138;
        *v138 = v80;
        v76[1] = v82;
        v76[2] = v83;
        v75 = MEMORY[0x277CD8AB8];
        v4 = v41;
      }

      else
      {
        v75 = MEMORY[0x277CD8AC0];
        v76 = v138;
      }

      v84 = v135;
      v85 = v76;
      v86 = v136;
      (*(v135 + 104))(v76, *v75, v136);
      (*(v142 + 24))(v85, v35);
      (*(v84 + 8))(v85, v86);
      __swift_destroy_boxed_opaque_existential_0(&v148);
    }

    else
    {
      sub_2219EC58C(&v148, &qword_27CFB7FD0);
    }

    v87 = *(v2 + qword_27CFBC770);
    if (v87)
    {
      v88 = v4;
      LODWORD(v141) = EnumTagSinglePayload;
      v142 = v23;
      v89 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(a1, &v148, &qword_27CFB8120, &qword_221BD2A40);
      sub_22198BEB8(v87, v89);
      v90 = sub_221BCCD68();
      v91 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v148 = v140;
        *v92 = 136315394;
        v93 = sub_2219CB3CC();
        v95 = sub_2219A6360(v93, v94, &v148);

        *(v92 + 4) = v95;
        *(v92 + 12) = 2080;
        *&v144 = v88;
        v96 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v97 = sub_221BCE198();
        if (v97)
        {
          v98 = v97;
          sub_2219EC58C(a1, &qword_27CFB8120);
        }

        else
        {
          v98 = swift_allocError();
          *v117 = v88;
        }

        v118 = v87(v98);
        v120 = v119;

        v121 = sub_2219A6360(v118, v120, &v148);

        *(v92 + 14) = v121;
        _os_log_impl(&dword_221989000, v90, v91, "%s %s", v92, 0x16u);
        v122 = v140;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v122, -1, -1);
        MEMORY[0x223DA4C00](v92, -1, -1);
      }

      sub_22198B60C(v87, v89);
      v23 = v142;
      EnumTagSinglePayload = v141;
      goto LABEL_49;
    }

    v99 = v4;
    v100 = *(v2 + qword_27CFDED20 + 17);

    if (v100)
    {
      sub_2219BAF0C(a1, &v148, &qword_27CFB8120, &qword_221BD2A40);
      v63 = sub_221BCCD68();
      v101 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v63, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v148 = v103;
        *v102 = 136315395;
        v104 = sub_2219CB3CC();
        v106 = sub_2219A6360(v104, v105, &v148);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2085;
        *&v144 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v107 = sub_221BCE288();
        v109 = sub_2219A6360(v107, v108, &v148);

        *(v102 + 14) = v109;
        v110 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v63, v101, v110, v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v103, -1, -1);
        v74 = v102;
        goto LABEL_44;
      }
    }

    else
    {
      sub_2219BAF0C(a1, &v148, &qword_27CFB8120, &qword_221BD2A40);
      v63 = sub_221BCCD68();
      v101 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v63, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v148 = v103;
        *v102 = 136315395;
        v111 = sub_2219CB3CC();
        v113 = sub_2219A6360(v111, v112, &v148);

        *(v102 + 4) = v113;
        *(v102 + 12) = 2081;
        *&v144 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v114 = sub_221BCE288();
        v116 = sub_2219A6360(v114, v115, &v148);

        *(v102 + 14) = v116;
        v110 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_45:

    goto LABEL_49;
  }

  *&v144 = v4;
  *(&v144 + 1) = v141;
  *&v145 = v140;
  *(&v145 + 1) = v139;
  v146 = v142 & 0x101;
  sub_2219BAF0C(v2 + v29[241], &v148, &qword_27CFB7FD0, &qword_221BD2888);
  v42 = *(&v149 + 1);
  if (*(&v149 + 1))
  {
    v43 = v150;
    __swift_project_boxed_opaque_existential_0(&v148, *(&v149 + 1));
    v44 = v135;
    v45 = v137;
    v46 = v136;
    (*(v135 + 104))(v137, *MEMORY[0x277CD8AC8], v136);
    (*(v43 + 24))(v45, v42, v43);
    (*(v44 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_0(&v148);
  }

  else
  {
    sub_2219EC58C(&v148, &qword_27CFB7FD0);
  }

  v47 = *(v2 + qword_27CFBC768);
  if (!v47)
  {

    sub_2219BAF0C(a1, &v148, &qword_27CFB8120, &qword_221BD2A40);
    v63 = sub_221BCCD68();
    v64 = sub_221BCDA98();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v148 = v66;
      *v65 = 136315394;
      v67 = sub_2219CB3CC();
      v69 = sub_2219A6360(v67, v68, &v148);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = sub_2219C1A84(&v144, *(v2 + qword_27CFDED20 + 17));
      v72 = v71;
      sub_2219EC58C(a1, &qword_27CFB8120);
      v73 = sub_2219A6360(v70, v72, &v148);

      *(v65 + 14) = v73;
      _os_log_impl(&dword_221989000, v63, v64, "%sCompleted with %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v66, -1, -1);
      v74 = v65;
LABEL_44:
      MEMORY[0x223DA4C00](v74, -1, -1);
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  v48 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768), v48);

  sub_2219BAF0C(a1, &v148, &qword_27CFB8120, &qword_221BD2A40);
  v49 = sub_221BCCD68();
  v50 = sub_221BCDA98();

  if (!os_log_type_enabled(v49, v50))
  {

    sub_22198B60C(v47, v48);
LABEL_30:
    sub_2219EC58C(a1, &qword_27CFB8120);
    goto LABEL_49;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  LODWORD(v141) = EnumTagSinglePayload;
  v53 = v52;
  v147 = v52;
  *v51 = 136315394;
  v54 = sub_2219CB3CC();
  v56 = sub_2219A6360(v54, v55, &v147);
  v142 = v23;
  v57 = v56;

  *(v51 + 4) = v57;
  *(v51 + 12) = 2080;
  v148 = v144;
  v149 = v145;
  LOWORD(v150) = v146;
  v58 = v47(&v148);
  v60 = v59;
  sub_2219EC58C(a1, &qword_27CFB8120);
  v61 = sub_2219A6360(v58, v60, &v147);
  v23 = v142;

  *(v51 + 14) = v61;
  _os_log_impl(&dword_221989000, v49, v50, "%s%s", v51, 0x16u);
  swift_arrayDestroy();
  v62 = v53;
  EnumTagSinglePayload = v141;
  MEMORY[0x223DA4C00](v62, -1, -1);
  MEMORY[0x223DA4C00](v51, -1, -1);
  sub_22198B60C(v47, v48);

LABEL_49:
  v123 = v143;
  sub_2219E7E58(v23, v143, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v124 = *(v2 + qword_27CFBC780 + 8);
    v142 = *(v2 + qword_27CFBC780);
    v141 = v124;
    v125 = *(v2 + qword_27CFBC780 + 16);
    v126 = sub_2219CB440();
    v128 = v127;
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v129 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v129);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v130 = v148;
    v131 = *&v134[v2];

    sub_221BB52B0(v142, v141, v125, v126, v128, v23, v123, v130, *(&v130 + 1), 1, 1, v131);
  }
}

void sub_2219E2F94(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[1];
  v117 = *a1;
  v116 = v4;
  v5 = a1[3];
  v115 = a1[2];
  v114 = v5;
  LODWORD(v118) = *(a1 + 16);
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v109 - v18;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v112 = v9;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v20 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v20, v19, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v10);
  v22 = 0;
  v119 = 0;
  v113 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v16, v19, v10);
    sub_221BCDF88();
    v22 = sub_221BCDFA8();
    v119 = v23;
    v24 = *(v11 + 8);
    v24(v13, v10);
    v24(v16, v10);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v25, v2);
  }

  v26 = off_27CFBC778;
  swift_beginAccess();
  v111 = v26;
  v27 = *&v26[v2];
  v28 = &unk_27CFBC000;
  if (*(v27 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v121, &qword_27CFB7FD0, &qword_221BD2888);
    v29 = *(&v122 + 1);
    if (*(&v122 + 1))
    {
      v30 = v123;
      __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
      v110 = v2;
      v31 = *(v30 + 32);

      v31(v32, 0x697274654D736961, 0xEA00000000007363, v29, v30);
      v28 = &unk_27CFBC000;
      v2 = v110;

      __swift_destroy_boxed_opaque_existential_0(&v121);
    }

    else
    {
      sub_2219EC58C(&v121, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 34))
  {
    sub_2219BAF0C(v2 + v28[241], &v121, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = *(&v122 + 1);
    if (*(&v122 + 1))
    {
      v34 = v123;
      __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
      v35 = v112;
      sub_2219E7D00(v112);
      (*(v34 + 24))(v35, v33, v34);
      (*(v7 + 8))(v35, v6);
      __swift_destroy_boxed_opaque_existential_0(&v121);
    }

    else
    {
      sub_2219EC58C(&v121, &qword_27CFB7FD0);
    }

    v39 = *(v2 + qword_27CFBC770);
    if (v39)
    {
      v40 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v39, v40);
      v41 = sub_221BCCD68();
      v42 = sub_221BCDA78();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v121 = v44;
        *v43 = 136315394;
        v45 = sub_2219CB3CC();
        v47 = sub_2219A6360(v45, v46, &v121);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v48 = sub_221BCE198();
        v109 = v22;
        if (!v48)
        {
          v48 = swift_allocError();
        }

        v49 = v48;
        v50 = v39();
        v52 = v51;

        v53 = sub_2219A6360(v50, v52, &v121);

        *(v43 + 14) = v53;
        _os_log_impl(&dword_221989000, v41, v42, "%s %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v44, -1, -1);
        MEMORY[0x223DA4C00](v43, -1, -1);
        sub_22198B60C(v39, v40);

        v22 = v109;
      }

      else
      {

        sub_22198B60C(v39, v40);
      }

      goto LABEL_42;
    }

    v68 = *(v2 + qword_27CFDED20 + 17);

    v69 = sub_221BCCD68();
    v70 = sub_221BCDA78();

    v71 = os_log_type_enabled(v69, v70);
    if (v68)
    {
      if (v71)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v121 = v73;
        *v72 = 136315395;
        v74 = sub_2219CB3CC();
        v76 = v22;
        v77 = sub_2219A6360(v74, v75, &v121);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2085;
        v78 = sub_221BCE288();
        v80 = sub_2219A6360(v78, v79, &v121);

        *(v72 + 14) = v80;
        v22 = v76;
        v81 = "%sFailed with %{sensitive}s";
LABEL_37:
        v91 = v70;
        goto LABEL_38;
      }
    }

    else if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v121 = v73;
      *v72 = 136315395;
      v92 = sub_2219CB3CC();
      v94 = v22;
      v95 = sub_2219A6360(v92, v93, &v121);

      *(v72 + 4) = v95;
      *(v72 + 12) = 2081;
      v96 = sub_221BCE288();
      v98 = sub_2219A6360(v96, v97, &v121);

      *(v72 + 14) = v98;
      v22 = v94;
      v81 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  *&v124 = v117;
  *(&v124 + 1) = v116;
  *&v125 = v115;
  *(&v125 + 1) = v114;
  v126 = v118 & 0x101;
  sub_2219BAF0C(v2 + v28[241], &v121, &qword_27CFB7FD0, &qword_221BD2888);
  v36 = *(&v122 + 1);
  if (*(&v122 + 1))
  {
    v37 = v123;
    __swift_project_boxed_opaque_existential_0(&v121, *(&v122 + 1));
    v38 = v112;
    (*(v7 + 104))(v112, *MEMORY[0x277CD8AC8], v6);
    (*(v37 + 24))(v38, v36, v37);
    (*(v7 + 8))(v38, v6);
    __swift_destroy_boxed_opaque_existential_0(&v121);
  }

  else
  {
    sub_2219EC58C(&v121, &qword_27CFB7FD0);
  }

  v54 = *(v2 + qword_27CFBC768);
  if (!v54)
  {

    sub_2219BAF0C(a1, &v121, &qword_27CFB8110, &qword_221BD2A30);
    v69 = sub_221BCCD68();
    v82 = sub_221BCDA98();

    if (os_log_type_enabled(v69, v82))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v121 = v73;
      *v72 = 136315394;
      v83 = sub_2219CB3CC();
      v85 = v22;
      v86 = sub_2219A6360(v83, v84, &v121);

      *(v72 + 4) = v86;
      *(v72 + 12) = 2080;
      v87 = sub_2219C1A84(&v124, *(v2 + qword_27CFDED20 + 17));
      v89 = v88;
      sub_2219EC58C(a1, &qword_27CFB8110);
      v90 = sub_2219A6360(v87, v89, &v121);
      v22 = v85;

      *(v72 + 14) = v90;
      v81 = "%sCompleted with %s";
      v91 = v82;
LABEL_38:
      _os_log_impl(&dword_221989000, v69, v91, v81, v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v73, -1, -1);
      MEMORY[0x223DA4C00](v72, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    sub_2219EC58C(a1, &qword_27CFB8110);
    goto LABEL_42;
  }

  v55 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768), v55);

  sub_2219BAF0C(a1, &v121, &qword_27CFB8110, &qword_221BD2A30);
  v56 = sub_221BCCD68();
  v57 = sub_221BCDA98();

  if (!os_log_type_enabled(v56, v57))
  {

    sub_22198B60C(v54, v55);
    goto LABEL_41;
  }

  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v120 = v59;
  *v58 = 136315394;
  v60 = sub_2219CB3CC();
  v62 = sub_2219A6360(v60, v61, &v120);
  v109 = v22;
  v63 = v62;

  *(v58 + 4) = v63;
  *(v58 + 12) = 2080;
  v121 = v124;
  v122 = v125;
  LOWORD(v123) = v126;
  v64 = v54(&v121);
  v66 = v65;
  sub_2219EC58C(a1, &qword_27CFB8110);
  v67 = sub_2219A6360(v64, v66, &v120);
  v22 = v109;

  *(v58 + 14) = v67;
  _os_log_impl(&dword_221989000, v56, v57, "%s%s", v58, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v59, -1, -1);
  MEMORY[0x223DA4C00](v58, -1, -1);
  sub_22198B60C(v54, v55);

LABEL_42:
  v99 = v113;
  v100 = v119;
  sub_2219E7E58(v22, v119, v113 == 1);
  if (v99 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v118 = *(v2 + qword_27CFBC780);
    v109 = v22;
    v101 = *(v2 + qword_27CFBC780 + 8);
    v102 = *(v2 + qword_27CFBC780 + 16);
    v103 = sub_2219CB440();
    v105 = v104;
    *&v121 = 0;
    *(&v121 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v106 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v106);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v107 = v121;
    v108 = *&v111[v2];

    sub_221BB52B0(v118, v101, v102, v103, v105, v109, v100, v107, *(&v107 + 1), 1, 1, v108);
  }
}

void sub_2219E3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v23;
  a21 = v24;
  v25 = v21;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v195 = v32;
  v193 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v192 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_231();
  v36 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_5();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v44);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v45);
  v47 = &v186 - v46;
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v48);
    return;
  }

  LODWORD(v190) = v27;
  v188 = v31;
  OUTLINED_FUNCTION_61_0();
  v50 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v21 + qword_27CFBC7A0);
  sub_2219BAF0C(v21 + v50, v47, &qword_27CFB7FC8, &qword_221BD2880);
  v51 = OUTLINED_FUNCTION_151(v47);
  v194 = 0;
  v191 = 0;
  OUTLINED_FUNCTION_175(v51, &a13);
  if (!v52)
  {
    v53 = OUTLINED_FUNCTION_90();
    v54(v53, v47, v36);
    sub_221BCDF88();
    v194 = sub_221BCDFA8();
    v191 = v55;
    v56 = *(v38 + 8);
    v56(v42, v36);
    v57 = OUTLINED_FUNCTION_16();
    (v56)(v57);
  }

  if (*(v21 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_110(v58);
  }

  v59 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v186 = v59;
  v60 = *&v59[v25];
  v61 = v190;
  if (!*(v60 + 16))
  {
LABEL_12:
    if (v61)
    {
      goto LABEL_13;
    }

LABEL_18:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v66 = v200;
    if (v200)
    {
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_227();
      v74 = v193;
      v75(v22);
      v76 = OUTLINED_FUNCTION_55_0();
      v77(v76);
      v78 = *(v42 + 1);
      v42 = (v42 + 8);
      v78(v22, v74);
      __swift_destroy_boxed_opaque_existential_0(&v197);
    }

    else
    {
      sub_2219EC58C(&v197, &qword_27CFB7FD0);
    }

    v79 = v195;
    OUTLINED_FUNCTION_45_0();
    v81 = qword_27CFBC758;
    if (v66)
    {
      v82 = *(v80 + 8);
      OUTLINED_FUNCTION_228(v66, v82);
      v83 = OUTLINED_FUNCTION_137();
      v85 = *(v84 - 256);
      sub_2219EBD1C(v83, v85, v29, 0);
      v22 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_246();
      if (os_log_type_enabled(v22, v42))
      {
        v86 = OUTLINED_FUNCTION_103();
        v192 = v29;
        v87 = v86;
        v195 = OUTLINED_FUNCTION_105();
        v196[0] = v195;
        v88 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_150(v88, v89);
        v193 = v82;
        OUTLINED_FUNCTION_245();
        *(v87 + 4) = v50;
        *(v87 + 12) = 2080;
        v197 = v79;
        v198 = v85;
        v90 = v192;
        v199 = v192;
        v91 = v66(&v197);
        v93 = v92;
        sub_2219EBD6C(v79, v85, v90, 0);
        v94 = sub_2219A6360(v91, v93, v196);

        *(v87 + 14) = v94;
        OUTLINED_FUNCTION_201(&dword_221989000, v95, v42, "%s%s");
        OUTLINED_FUNCTION_190(v96, v97, MEMORY[0x277D84F70] + 8);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v98);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v99);
        sub_22198B60C(v66, v193);

        goto LABEL_49;
      }

      sub_22198B60C(v66, v82);
      v116 = v79;
      v117 = v85;
    }

    else
    {

      v100 = OUTLINED_FUNCTION_137();
      sub_2219EBD1C(v100, *(v101 - 256), v29, 0);
      v102 = v25 + v81;
      v66 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_188();
      if (OUTLINED_FUNCTION_211())
      {
        OUTLINED_FUNCTION_103();
        v103 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_46_0(v103);
        v104 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v104, v105);
        OUTLINED_FUNCTION_149();
        unk_27CFBC004 = v42;
        OUTLINED_FUNCTION_83();
        v106 = OUTLINED_FUNCTION_86();
        sub_2219C1B40(v106, v107, v29, v108);
        OUTLINED_FUNCTION_185();
        v109 = OUTLINED_FUNCTION_86();
        sub_2219EBD6C(v109, v110, v29, 0);
        v111 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v111, v42, v112);
        OUTLINED_FUNCTION_215();
        *(&qword_27CFBC008 + 6) = v102;
        OUTLINED_FUNCTION_51_0(&dword_221989000, v113, v114, "%sCompleted with %s");
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v115);
LABEL_44:
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_45;
      }

      v116 = OUTLINED_FUNCTION_86();
    }

    sub_2219EBD6C(v116, v117, v29, 0);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v42 = v200;
  if (v200)
  {
    v62 = v201;
    OUTLINED_FUNCTION_62_0(&v197, v200);
    v63 = v29;
    v50 = v62 + 32;
    v64 = *(v62 + 32);

    OUTLINED_FUNCTION_3_11();
    v64(v65);
    v61 = v190;
    v29 = v63;

    __swift_destroy_boxed_opaque_existential_0(&v197);
    goto LABEL_12;
  }

  sub_2219EC58C(&v197, &qword_27CFB7FD0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v66 = v200;
  if (v200)
  {
    v67 = v29;
    v22 = v201;
    v190 = __swift_project_boxed_opaque_existential_0(&v197, v200);
    v68 = v195;
    OUTLINED_FUNCTION_244();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v70 = sub_221BCE198();
      if (v70)
      {
        v71 = v70;
        v72 = OUTLINED_FUNCTION_137();
        sub_2219EBD6C(v72, *(v73 - 256), v67, 1);
      }

      else
      {
        v71 = OUTLINED_FUNCTION_17_2(v69, MEMORY[0x277D84950]);
        *v118 = v68;
      }

      v119 = sub_221BCC328();

      v120 = [v119 domain];
      v121 = sub_221BCD388();
      v123 = v122;

      v42 = [v119 code];
      v124 = v189;
      *v189 = v121;
      v124[1] = v123;
      v124[2] = v42;
    }

    OUTLINED_FUNCTION_227();
    v126 = v125;
    v127 = v193;
    v128(v125);
    OUTLINED_FUNCTION_74();
    v129();
    v130 = *(v42 + 1);
    v42 = (v42 + 8);
    v130(v126, v127);
    __swift_destroy_boxed_opaque_existential_0(&v197);
    v29 = v67;
  }

  else
  {
    sub_2219EC58C(&v197, &qword_27CFB7FD0);
    v68 = v195;
  }

  OUTLINED_FUNCTION_45_0();
  if (v66)
  {
    v132 = *(v131 + 8);

    v133 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_242(v133, v134);
    v135 = OUTLINED_FUNCTION_1_0();
    v22 = OUTLINED_FUNCTION_207(v135, v136);
    sub_221BCDA78();
    OUTLINED_FUNCTION_198();
    v137 = OUTLINED_FUNCTION_120();
    sub_2219EBD6C(v137, v138, v29, 1);
    if (os_log_type_enabled(v22, v29))
    {
      v139 = OUTLINED_FUNCTION_103();
      v195 = OUTLINED_FUNCTION_105();
      v197 = v195;
      v140 = OUTLINED_FUNCTION_248(4.8151e-34);
      OUTLINED_FUNCTION_102(v140, v141);
      OUTLINED_FUNCTION_149();
      *(v139 + 4) = v42;
      OUTLINED_FUNCTION_130();
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v144 = OUTLINED_FUNCTION_208(v142, v143, MEMORY[0x277D84950]);
      if (v144)
      {
        v145 = v144;
        v146 = OUTLINED_FUNCTION_137();
        sub_2219EBD6C(v146, *(v147 - 256), v29, 1);
      }

      else
      {
        v145 = OUTLINED_FUNCTION_112(0, MEMORY[0x277D84950]);
        *v166 = v68;
      }

      v66(v145);
      OUTLINED_FUNCTION_184();

      v167 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v167, v68, v168);
      OUTLINED_FUNCTION_144();

      *(v139 + 14) = v132;
      OUTLINED_FUNCTION_247(&dword_221989000, v22, v29, "%s %s", v186, v187);
      OUTLINED_FUNCTION_190(v169, v170, MEMORY[0x277D84F70] + 8);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    v171 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v171, v172);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_177();

  v148 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_242(v148, v149);
  v66 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v150 = OUTLINED_FUNCTION_120();
  sub_2219EBD6C(v150, v151, v29, 1);
  v152 = OUTLINED_FUNCTION_169();
  if (v22)
  {
    if (v152)
    {
      OUTLINED_FUNCTION_103();
      v153 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v153);
      v154 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v154, v155);
      OUTLINED_FUNCTION_149();
      *(v22 + 4) = v42;
      OUTLINED_FUNCTION_116(2085);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v156 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v156, v157);
      OUTLINED_FUNCTION_5_1();
      *(v22 + 14) = v68;
      v160 = "%sFailed with %{sensitive}s";
LABEL_43:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v158, v159, v160);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_44;
    }
  }

  else if (v152)
  {
    OUTLINED_FUNCTION_103();
    v161 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v161);
    v162 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v162, v163);
    OUTLINED_FUNCTION_149();
    *(v22 + 4) = v42;
    OUTLINED_FUNCTION_116(2081);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v164 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v164, v165);
    OUTLINED_FUNCTION_5_1();
    *(v22 + 14) = v68;
    v160 = "%sFailed with %{private}s";
    goto LABEL_43;
  }

LABEL_45:

LABEL_49:
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_133(v194, v173, v174);
  if (v66 != 1 && (*(v25 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v194) & 1) == 0)
  {
    v195 = *(v25 + qword_27CFBC780 + 8);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v175 = sub_221BCE3F8();
    v176 = OUTLINED_FUNCTION_101(v175, 1000.0);
    OUTLINED_FUNCTION_100(v176, v177, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v178 = v197;
    v179 = v198;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    v186 = v179;
    OUTLINED_FUNCTION_31_1();
    sub_221BB52B0(v180, v181, v182, v183, v184, v185, v22, v178, v186, v187, SBYTE1(v187), v188);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219E4A38(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v127) = a4;
  v9 = sub_221BCCE38();
  v125 = *(v9 - 8);
  v126 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v119 - v20;
  os_unfair_lock_lock((v5 + 32));
  if (*(v5 + 36))
  {

    os_unfair_lock_unlock((v5 + 32));
    return;
  }

  v121 = a1;
  v122 = a2;
  *(v5 + 36) = 1;
  os_unfair_lock_unlock((v5 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v5 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v12);
  v123 = 0;
  v124 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v18, v21, v12);
    sub_221BCDF88();
    v24 = sub_221BCDFA8();
    v123 = v25;
    v124 = v24;
    v26 = *(v13 + 8);
    v26(v15, v12);
    v26(v18, v12);
  }

  if (*(v5 + qword_27CFBC798))
  {

    sub_2219E7A60(v27, v5);
  }

  v28 = off_27CFBC778;
  swift_beginAccess();
  v120 = v28;
  v29 = *&v28[v5];
  v30 = &unk_27CFBC000;
  if (*(v29 + 16))
  {
    sub_2219BAF0C(v5 + qword_27CFBC788, &v129, &qword_27CFB7FD0, &qword_221BD2888);
    v31 = v132;
    if (v132)
    {
      v32 = v133;
      __swift_project_boxed_opaque_existential_0(&v129, v132);
      v33 = a3;
      v34 = EnumTagSinglePayload;
      v35 = *(v32 + 32);

      v35(v36, 0x697274654D736961, 0xEA00000000007363, v31, v32);
      v30 = &unk_27CFBC000;
      EnumTagSinglePayload = v34;
      a3 = v33;

      __swift_destroy_boxed_opaque_existential_0(&v129);
    }

    else
    {
      sub_2219EC58C(&v129, &qword_27CFB7FD0);
    }
  }

  if (v127)
  {
    sub_2219BAF0C(v5 + v30[241], &v129, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = v132;
    if (v132)
    {
      v38 = v133;
      __swift_project_boxed_opaque_existential_0(&v129, v132);
      sub_2219E7D00(v11);
      (*(v38 + 24))(v11, v37, v38);
      (*(v125 + 8))(v11, v126);
      __swift_destroy_boxed_opaque_existential_0(&v129);
    }

    else
    {
      sub_2219EC58C(&v129, &qword_27CFB7FD0);
    }

    v43 = *(v5 + qword_27CFBC770);
    if (v43)
    {
      LODWORD(v127) = EnumTagSinglePayload;
      v44 = *(v5 + qword_27CFBC770 + 8);

      sub_22198BEB8(v43, v44);
      v45 = sub_221BCCD68();
      v46 = sub_221BCDA78();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v129 = v48;
        *v47 = 136315394;
        v49 = sub_2219CB3CC();
        v51 = sub_2219A6360(v49, v50, &v129);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = sub_221BCE198();
        if (!v52)
        {
          v52 = swift_allocError();
        }

        v53 = v52;
        v54 = v43();
        v56 = v55;

        v57 = sub_2219A6360(v54, v56, &v129);

        *(v47 + 14) = v57;
        _os_log_impl(&dword_221989000, v45, v46, "%s %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v48, -1, -1);
        MEMORY[0x223DA4C00](v47, -1, -1);
        sub_22198B60C(v43, v44);
      }

      else
      {

        sub_22198B60C(v43, v44);
      }

      EnumTagSinglePayload = v127;
      goto LABEL_43;
    }

    v74 = *(v5 + qword_27CFDED20 + 17);

    v75 = sub_221BCCD68();
    v76 = sub_221BCDA78();

    v77 = os_log_type_enabled(v75, v76);
    if (v74)
    {
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v129 = v79;
        *v78 = 136315395;
        v80 = sub_2219CB3CC();
        v82 = sub_2219A6360(v80, v81, &v129);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2085;
        v83 = sub_221BCE288();
        v85 = sub_2219A6360(v83, v84, &v129);

        *(v78 + 14) = v85;
        v86 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v75, v76, v86, v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v79, -1, -1);
        v99 = v78;
        goto LABEL_39;
      }
    }

    else if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v129 = v79;
      *v78 = 136315395;
      v102 = sub_2219CB3CC();
      v104 = sub_2219A6360(v102, v103, &v129);

      *(v78 + 4) = v104;
      *(v78 + 12) = 2081;
      v105 = sub_221BCE288();
      v107 = sub_2219A6360(v105, v106, &v129);

      *(v78 + 14) = v107;
      v86 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_43;
  }

  sub_2219BAF0C(v5 + v30[241], &v129, &qword_27CFB7FD0, &qword_221BD2888);
  v39 = v132;
  if (v132)
  {
    v40 = v133;
    __swift_project_boxed_opaque_existential_0(&v129, v132);
    v42 = v125;
    v41 = v126;
    (*(v125 + 104))(v11, *MEMORY[0x277CD8AC8], v126);
    (*(v40 + 24))(v11, v39, v40);
    (*(v42 + 8))(v11, v41);
    __swift_destroy_boxed_opaque_existential_0(&v129);
  }

  else
  {
    sub_2219EC58C(&v129, &qword_27CFB7FD0);
  }

  v58 = v122;
  v59 = *(v5 + qword_27CFBC768);
  if (!v59)
  {

    v87 = v121;
    sub_2219EBC94(v121, v58, a3, 0);
    v75 = sub_221BCCD68();
    v88 = v58;
    v89 = sub_221BCDA98();

    if (os_log_type_enabled(v75, v89))
    {
      v90 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v129 = v127;
      *v90 = 136315394;
      v91 = sub_2219CB3CC();
      v93 = sub_2219A6360(v91, v92, &v129);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = sub_2219C1B40(v87, v88, a3, *(v5 + qword_27CFDED20 + 17));
      v96 = v95;
      sub_2219EBCD8(v87, v88, a3, 0);
      v97 = sub_2219A6360(v94, v96, &v129);

      *(v90 + 14) = v97;
      _os_log_impl(&dword_221989000, v75, v89, "%sCompleted with %s", v90, 0x16u);
      v98 = v127;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v98, -1, -1);
      v99 = v90;
LABEL_39:
      MEMORY[0x223DA4C00](v99, -1, -1);
      goto LABEL_40;
    }

    v100 = v87;
    v101 = v58;
LABEL_42:
    sub_2219EBCD8(v100, v101, a3, 0);
    goto LABEL_43;
  }

  v60 = *(v5 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v5 + qword_27CFBC768), v60);

  v61 = v121;
  sub_2219EBC94(v121, v58, a3, 0);
  v62 = sub_221BCCD68();
  v63 = sub_221BCDA98();

  if (!os_log_type_enabled(v62, v63))
  {

    sub_22198B60C(v59, v60);
    v100 = v61;
    v101 = v58;
    goto LABEL_42;
  }

  v64 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v128 = v126;
  *v64 = 136315394;
  LODWORD(v125) = v63;
  v65 = sub_2219CB3CC();
  v67 = sub_2219A6360(v65, v66, &v128);
  LODWORD(v127) = EnumTagSinglePayload;
  v68 = v67;

  *(v64 + 4) = v68;
  *(v64 + 12) = 2080;
  v129 = v61;
  v130 = v58;
  v131 = a3;
  v69 = v59(&v129);
  v71 = v70;
  sub_2219EBCD8(v61, v58, a3, 0);
  v72 = sub_2219A6360(v69, v71, &v128);
  EnumTagSinglePayload = v127;

  *(v64 + 14) = v72;
  _os_log_impl(&dword_221989000, v62, v125, "%s%s", v64, 0x16u);
  v73 = v126;
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v73, -1, -1);
  MEMORY[0x223DA4C00](v64, -1, -1);
  sub_22198B60C(v59, v60);

LABEL_43:
  v109 = v123;
  v108 = v124;
  sub_2219E7E58(v124, v123, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v5 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v110 = *(v5 + qword_27CFBC780);
    v126 = *(v5 + qword_27CFBC780 + 8);
    v127 = v110;
    v111 = *(v5 + qword_27CFBC780 + 16);
    v112 = sub_2219CB440();
    v114 = v113;
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_221BCDE68();
    v115 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v115);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v116 = v129;
    v117 = v130;
    v118 = *&v120[v5];

    sub_221BB52B0(v127, v126, v111, v112, v114, v108, v109, v116, v117, 1, 1, v118);
  }
}

void sub_2219E5804(uint64_t a1)
{
  v2 = v1;
  v164 = a1;
  v162 = sub_221BCCE38();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v158 = (&v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v157 = &v151 - v5;
  v6 = sub_221BCC558();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v155 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v151 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v151 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8108, &qword_221BD2A20);
  MEMORY[0x28223BE20](v163);
  v15 = (&v151 - v14);
  v16 = sub_221BCDFB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v151 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v151 - v24;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v156 = v13;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v26 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v26, v25, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v16);
  v28 = 0;
  v160 = 0;
  v154 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v17 + 32))(v22, v25, v16);
    sub_221BCDF88();
    v28 = sub_221BCDFA8();
    v160 = v29;
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v31, v2);
  }

  v32 = off_27CFBC778;
  swift_beginAccess();
  v152 = v32;
  v33 = *&v32[v2];
  v34 = &unk_27CFBC000;
  if (*(v33 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v166, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v168;
    if (v168)
    {
      v36 = v169;
      __swift_project_boxed_opaque_existential_0(&v166, v168);
      v153 = v7;
      v37 = *(v36 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v35, v36);
      v34 = &unk_27CFBC000;
      v7 = v153;

      __swift_destroy_boxed_opaque_existential_0(&v166);
    }

    else
    {
      sub_2219EC58C(&v166, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v164, v15, &qword_27CFB8108, &qword_221BD2A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v15;
    sub_2219BAF0C(v2 + v34[241], &v166, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v168;
    if (v168)
    {
      v41 = v169;
      __swift_project_boxed_opaque_existential_0(&v166, v168);
      v165[5] = v39;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v165);
        v165[0] = v39;
        v43 = v39;
        v44 = sub_221BCE198();
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v45 = swift_allocError();
          *v89 = v39;
        }

        v90 = sub_221BCC328();

        v91 = [v90 domain];
        v92 = sub_221BCD388();
        v94 = v93;

        v95 = [v90 code];
        v96 = v158;
        *v158 = v92;
        v96[1] = v94;
        v86 = v96;
        v96[2] = v95;
        v85 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v85 = MEMORY[0x277CD8AC0];
        v86 = v158;
      }

      v97 = v161;
      v98 = v162;
      (*(v161 + 104))(v86, *v85, v162);
      (*(v41 + 24))(v86, v40, v41);
      (*(v97 + 8))(v86, v98);
      __swift_destroy_boxed_opaque_existential_0(&v166);
    }

    else
    {
      sub_2219EC58C(&v166, &qword_27CFB7FD0);
    }

    v99 = *(v2 + qword_27CFBC770);
    if (v99)
    {
      v100 = *(v2 + qword_27CFBC770 + 8);
      v101 = v39;

      v102 = v39;
      sub_22198BEB8(v99, v100);
      v103 = sub_221BCCD68();
      v104 = sub_221BCDA78();

      if (os_log_type_enabled(v103, v104))
      {
        v164 = v28;
        v105 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v166 = v163;
        *v105 = 136315394;
        v106 = sub_2219CB3CC();
        v108 = sub_2219A6360(v106, v107, &v166);

        *(v105 + 4) = v108;
        *(v105 + 12) = 2080;
        v165[0] = v39;
        v109 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v110 = sub_221BCE198();
        if (v110)
        {
          v111 = v110;
        }

        else
        {
          v111 = swift_allocError();
          *v134 = v39;
        }

        v135 = v99(v111);
        v137 = v136;

        v138 = sub_2219A6360(v135, v137, &v166);

        *(v105 + 14) = v138;
        _os_log_impl(&dword_221989000, v103, v104, "%s %s", v105, 0x16u);
        v139 = v163;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v139, -1, -1);
        MEMORY[0x223DA4C00](v105, -1, -1);

        sub_22198B60C(v99, v100);
        goto LABEL_49;
      }

      sub_22198B60C(v99, v100);
      goto LABEL_46;
    }

    v112 = *(v2 + qword_27CFDED20 + 17);

    v113 = v39;
    v114 = sub_221BCCD68();
    v115 = sub_221BCDA78();

    v116 = os_log_type_enabled(v114, v115);
    if (v112)
    {
      if (v116)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v166 = v118;
        *v117 = 136315395;
        v119 = sub_2219CB3CC();
        v121 = sub_2219A6360(v119, v120, &v166);

        *(v117 + 4) = v121;
        *(v117 + 12) = 2085;
        v165[0] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v122 = sub_221BCE288();
        v124 = v123;

        v125 = sub_2219A6360(v122, v124, &v166);

        *(v117 + 14) = v125;
        v126 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v114, v115, v126, v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v118, -1, -1);
        MEMORY[0x223DA4C00](v117, -1, -1);
LABEL_45:

LABEL_46:
        goto LABEL_50;
      }
    }

    else if (v116)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v166 = v118;
      *v117 = 136315395;
      v127 = sub_2219CB3CC();
      v129 = sub_2219A6360(v127, v128, &v166);

      *(v117 + 4) = v129;
      *(v117 + 12) = 2081;
      v165[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v130 = sub_221BCE288();
      v132 = v131;

      v133 = sub_2219A6360(v130, v132, &v166);

      *(v117 + 14) = v133;
      v126 = "%sFailed with %{private}s";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  (*(v7 + 32))(v156, v15, v6);
  sub_2219BAF0C(v2 + v34[241], &v166, &qword_27CFB7FD0, &qword_221BD2888);
  v46 = v168;
  if (v168)
  {
    v47 = v169;
    __swift_project_boxed_opaque_existential_0(&v166, v168);
    v48 = v161;
    v49 = v157;
    v50 = v162;
    (*(v161 + 104))(v157, *MEMORY[0x277CD8AC8], v162);
    (*(v47 + 24))(v49, v46, v47);
    (*(v48 + 8))(v49, v50);
    __swift_destroy_boxed_opaque_existential_0(&v166);
  }

  else
  {
    sub_2219EC58C(&v166, &qword_27CFB7FD0);
  }

  v51 = v159;
  v52 = *(v2 + qword_27CFBC768);
  v53 = *(v7 + 16);
  if (v52)
  {
    v153 = v7;
    v54 = *(v2 + qword_27CFBC768 + 8);
    v55 = v156;
    v53(v159, v156, v6);
    sub_22198BEB8(v52, v54);

    v56 = v6;
    v57 = sub_221BCCD68();
    v58 = sub_221BCDA98();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v166 = v163;
      *v59 = 136315394;
      LODWORD(v162) = v58;
      v60 = sub_2219CB3CC();
      v62 = sub_2219A6360(v60, v61, &v166);
      v164 = v28;
      v63 = v62;

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = v52(v51);
      v66 = v65;
      v67 = *(v153 + 8);
      v67(v51, v56);
      v68 = sub_2219A6360(v64, v66, &v166);
      v28 = v164;

      *(v59 + 14) = v68;
      _os_log_impl(&dword_221989000, v57, v162, "%s%s", v59, 0x16u);
      v69 = v163;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v69, -1, -1);
      MEMORY[0x223DA4C00](v59, -1, -1);

      sub_22198B60C(v52, v54);
      v67(v156, v56);
    }

    else
    {

      sub_22198B60C(v52, v54);
      v87 = *(v153 + 8);
      v87(v51, v56);
      v87(v55, v56);
    }
  }

  else
  {
    v70 = v155;
    v71 = v156;
    v53(v155, v156, v6);

    v72 = sub_221BCCD68();
    v73 = v6;
    v74 = sub_221BCDA98();

    if (os_log_type_enabled(v72, v74))
    {
      v75 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v166 = v163;
      *v75 = 136315394;
      v76 = sub_2219CB3CC();
      v78 = sub_2219A6360(v76, v77, &v166);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      v79 = sub_2219C1CB0(v70, *(v2 + qword_27CFDED20 + 17));
      v81 = v80;
      v164 = v28;
      v82 = *(v7 + 8);
      v82(v70, v73);
      v83 = sub_2219A6360(v79, v81, &v166);

      *(v75 + 14) = v83;
      _os_log_impl(&dword_221989000, v72, v74, "%sCompleted with %s", v75, 0x16u);
      v84 = v163;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v84, -1, -1);
      MEMORY[0x223DA4C00](v75, -1, -1);

      v82(v156, v73);
LABEL_49:
      v28 = v164;
      goto LABEL_50;
    }

    v88 = *(v7 + 8);
    v88(v70, v73);
    v88(v71, v73);
  }

LABEL_50:
  v140 = v154;
  v141 = v160;
  sub_2219E7E58(v28, v160, v154 == 1);
  if (v140 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v142 = *(v2 + qword_27CFBC780);
    v163 = *(v2 + qword_27CFBC780 + 8);
    v164 = v142;
    v143 = *(v2 + qword_27CFBC780 + 16);
    v144 = sub_2219CB440();
    v146 = v145;
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_221BCDE68();
    v147 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v147);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v148 = v166;
    v149 = v167;
    v150 = *&v152[v2];

    sub_221BB52B0(v164, v163, v143, v144, v146, v28, v141, v148, v149, 1, 1, v150);
  }
}

void sub_2219E6AB8(uint64_t a1)
{
  v2 = v1;
  v142 = a1;
  v3 = sub_221BCCE38();
  v138 = *(v3 - 8);
  v139 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_221BCC558();
  v7 = *(v6 - 8);
  v140 = v6;
  v141 = v7;
  MEMORY[0x28223BE20](v6);
  v135 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v132 - v10;
  MEMORY[0x28223BE20](v12);
  v143 = &v132 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F8, &qword_221BD2A10);
  MEMORY[0x28223BE20](v14);
  v16 = &v132 - v15;
  v17 = sub_221BCDFB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v132 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v132 - v25;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v133 = v11;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v27 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v27, v26, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v17);
  v136 = 0;
  v137 = 0;
  v134 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v18 + 32))(v23, v26, v17);
    sub_221BCDF88();
    v29 = sub_221BCDFA8();
    v136 = v30;
    v137 = v29;
    v31 = *(v18 + 8);
    v31(v20, v17);
    v31(v23, v17);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v32, v2);
  }

  v33 = off_27CFBC778;
  swift_beginAccess();
  v132 = v33;
  v34 = *&v33[v2];
  v35 = &unk_27CFBC000;
  if (*(v34 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v144, &qword_27CFB7FD0, &qword_221BD2888);
    v36 = v146;
    if (v146)
    {
      v37 = v147;
      __swift_project_boxed_opaque_existential_0(&v144, v146);
      v38 = *(v37 + 32);

      v38(v39, 0x697274654D736961, 0xEA00000000007363, v36, v37);
      v35 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(&v144);
    }

    else
    {
      sub_2219EC58C(&v144, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v142, v16, &qword_27CFB80F8, &qword_221BD2A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2219BAF0C(v2 + v35[241], &v144, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v146;
    if (v146)
    {
      v41 = v147;
      __swift_project_boxed_opaque_existential_0(&v144, v146);
      sub_2219E7D00(v5);
      (*(v41 + 24))(v5, v40, v41);
      (*(v138 + 8))(v5, v139);
      __swift_destroy_boxed_opaque_existential_0(&v144);
    }

    else
    {
      sub_2219EC58C(&v144, &qword_27CFB7FD0);
    }

    v52 = *(v2 + qword_27CFBC770);
    if (v52)
    {
      v53 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v52, v53);
      v54 = sub_221BCCD68();
      v55 = sub_221BCDA78();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v144 = v57;
        *v56 = 136315394;
        v58 = sub_2219CB3CC();
        v60 = sub_2219A6360(v58, v59, &v144);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        v61 = sub_221BCE198();
        if (!v61)
        {
          v61 = swift_allocError();
        }

        v62 = v61;
        v63 = v52();
        v65 = v64;

        v66 = sub_2219A6360(v63, v65, &v144);

        *(v56 + 14) = v66;
        _os_log_impl(&dword_221989000, v54, v55, "%s %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v57, -1, -1);
        MEMORY[0x223DA4C00](v56, -1, -1);
        sub_22198B60C(v52, v53);
      }

      else
      {

        sub_22198B60C(v52, v53);
      }

      goto LABEL_40;
    }

    v86 = *(v2 + qword_27CFDED20 + 17);

    v87 = sub_221BCCD68();
    v88 = sub_221BCDA78();

    v89 = os_log_type_enabled(v87, v88);
    if (v86)
    {
      if (v89)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v144 = v91;
        *v90 = 136315395;
        v92 = sub_2219CB3CC();
        v94 = sub_2219A6360(v92, v93, &v144);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2085;
        v95 = sub_221BCE288();
        v97 = sub_2219A6360(v95, v96, &v144);

        *(v90 + 14) = v97;
        v98 = "%sFailed with %{sensitive}s";
LABEL_37:
        _os_log_impl(&dword_221989000, v87, v88, v98, v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v91, -1, -1);
        MEMORY[0x223DA4C00](v90, -1, -1);
      }
    }

    else if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v144 = v91;
      *v90 = 136315395;
      v113 = sub_2219CB3CC();
      v115 = sub_2219A6360(v113, v114, &v144);

      *(v90 + 4) = v115;
      *(v90 + 12) = 2081;
      v116 = sub_221BCE288();
      v118 = sub_2219A6360(v116, v117, &v144);

      *(v90 + 14) = v118;
      v98 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  v42 = v141;
  v43 = v143;
  v44 = v16;
  v45 = v140;
  (*(v141 + 32))(v143, v44, v140);
  sub_2219BAF0C(v2 + v35[241], &v144, &qword_27CFB7FD0, &qword_221BD2888);
  v46 = v146;
  if (v146)
  {
    v47 = v147;
    __swift_project_boxed_opaque_existential_0(&v144, v146);
    v49 = v138;
    v48 = v139;
    (*(v138 + 104))(v5, *MEMORY[0x277CD8AC8], v139);
    v50 = *(v47 + 24);
    v51 = v47;
    v43 = v143;
    v50(v5, v46, v51);
    (*(v49 + 8))(v5, v48);
    __swift_destroy_boxed_opaque_existential_0(&v144);
  }

  else
  {
    sub_2219EC58C(&v144, &qword_27CFB7FD0);
  }

  v67 = *(v2 + qword_27CFBC768);
  v68 = *(v42 + 16);
  v69 = v135;
  if (v67)
  {
    v70 = *(v2 + qword_27CFBC768 + 8);
    v71 = v133;
    v68(v133, v43, v45);
    sub_22198BEB8(v67, v70);

    v72 = sub_221BCCD68();
    v73 = sub_221BCDA98();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v144 = v142;
      *v74 = 136315394;
      v75 = sub_2219CB3CC();
      v77 = sub_2219A6360(v75, v76, &v144);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = v67(v71);
      v80 = v79;
      v139 = v70;
      v81 = *(v141 + 8);
      v82 = v71;
      v83 = v140;
      v81(v82, v140);
      v84 = sub_2219A6360(v78, v80, &v144);

      *(v74 + 14) = v84;
      _os_log_impl(&dword_221989000, v72, v73, "%s%s", v74, 0x16u);
      v85 = v142;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v85, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);

      sub_22198B60C(v67, v139);
      v81(v143, v83);
    }

    else
    {

      sub_22198B60C(v67, v70);
      v112 = *(v141 + 8);
      v112(v71, v45);
      v112(v43, v45);
    }
  }

  else
  {
    v68(v135, v43, v45);

    v99 = sub_221BCCD68();
    v100 = sub_221BCDA98();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v144 = v102;
      *v101 = 136315394;
      LODWORD(v142) = v100;
      v103 = sub_2219CB3CC();
      v105 = v42;
      v106 = sub_2219A6360(v103, v104, &v144);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2080;
      v107 = sub_2219C1CB0(v69, *(v2 + qword_27CFDED20 + 17));
      v109 = v108;
      v110 = *(v105 + 8);
      v110(v69, v45);
      v111 = sub_2219A6360(v107, v109, &v144);

      *(v101 + 14) = v111;
      _os_log_impl(&dword_221989000, v99, v142, "%sCompleted with %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v102, -1, -1);
      MEMORY[0x223DA4C00](v101, -1, -1);

      v110(v143, v45);
    }

    else
    {

      v119 = *(v42 + 8);
      v119(v69, v45);
      v119(v43, v45);
    }
  }

LABEL_40:
  v120 = v134;
  v122 = v136;
  v121 = v137;
  sub_2219E7E58(v137, v136, v134 == 1);
  if (v120 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v123 = *(v2 + qword_27CFBC780);
    v142 = *(v2 + qword_27CFBC780 + 8);
    v143 = v123;
    v124 = *(v2 + qword_27CFBC780 + 16);
    v125 = sub_2219CB440();
    v127 = v126;
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_221BCDE68();
    v128 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v128);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v129 = v144;
    v130 = v145;
    v131 = *&v132[v2];

    sub_221BB52B0(v143, v142, v124, v125, v127, v121, v122, v129, v130, 1, 1, v131);
  }
}

uint64_t sub_2219E7A60(uint64_t a1, uint64_t a2)
{
  sub_221BCCD18();
  OUTLINED_FUNCTION_0_2();
  v25 = v4;
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v24 = v6 - v5;
  v7 = sub_221BCCCD8();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v14 = *(a2 + qword_27CFBC780);
  v15 = *(a2 + qword_27CFBC780 + 16);
  v16 = sub_221BCCCF8();
  sub_221BCCD28();
  v23 = sub_221BCDBB8();
  result = sub_221BCDC78();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v13, v7);
  }

  v22 = v9;
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      v18 = v14;
LABEL_9:

      sub_221BCCD58();

      if ((*(v25 + 88))(v24, v26) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v24, v26);
        v19 = "";
      }

      OUTLINED_FUNCTION_117();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v16, v23, v21, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v9 = v22;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v14 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v14 & 0xFFFFF800) != 0xD800)
  {
    if (v14 >> 16 <= 0x10)
    {
      v18 = &v27;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2219E7D00@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    v2 = sub_221BCE198();
    if (!v2)
    {
      v2 = swift_allocError();
    }

    v3 = v2;
    v4 = sub_221BCC328();

    v5 = [v4 domain];
    v6 = sub_221BCD388();
    v8 = v7;

    v9 = [v4 code];
    *a1 = v6;
    a1[1] = v8;
    a1[2] = v9;
    v10 = MEMORY[0x277CD8AB8];
  }

  else
  {
    v10 = MEMORY[0x277CD8AC0];
  }

  v11 = *v10;
  v12 = sub_221BCCE38();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

void sub_2219E7E58(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + qword_27CFBC790 + 8) & 1) == 0)
  {
    v5 = *(v3 + qword_27CFBC790);
    v6 = (v3 + qword_27CFDED20);
    v7 = *(v3 + qword_27CFDED20 + 16);
    if (v7 == 2 || (v7 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
      inited = swift_initStackObject();
      v9 = inited;
      *(inited + 16) = xmmword_221BD26F0;
      *(inited + 32) = 0x6F6974617265706FLL;
      *(inited + 40) = 0xE90000000000006ELL;
      v10 = MEMORY[0x277D83B88];
      *(inited + 48) = v5;
      *(inited + 72) = v10;
      *(inited + 80) = 0x746E65696C63;
      *(inited + 88) = 0xE600000000000000;
      v11 = *v6;
      v12 = v6[1];
      v13 = MEMORY[0x277D837D0];
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
        v14 = 0xE700000000000000;
      }

      *(inited + 96) = v11;
      *(inited + 104) = v14;
      *(inited + 120) = v13;
      *(inited + 128) = 0x746567726174;
      *(inited + 136) = 0xE600000000000000;
      v15 = off_27CFBC778;
      swift_beginAccess();
      v16 = *&v15[v3];

      sub_221B9C448(7368801, v16, v47, 0xE300000000000000);
      swift_endAccess();
      if (v48)
      {
        sub_2219A1AB0(v47, (v9 + 144));
      }

      else
      {
        *(v9 + 168) = v13;
        *(v9 + 144) = 0x6E776F6E6B6E75;
        *(v9 + 152) = 0xE700000000000000;
      }

      *(v9 + 176) = 0x6E6F697461727564;
      *(v9 + 184) = 0xE800000000000000;
      if (a3)
      {
        *(v9 + 216) = MEMORY[0x277D83B88];
        *(v9 + 192) = -1;
      }

      else
      {
        v17 = sub_221BCE3F8();
        v48 = MEMORY[0x277D839F8];
        v47[0] = v18 * 1.0e-18 + v17;
        sub_2219A1AB0(v47, (v9 + 192));
      }

      v19 = MEMORY[0x277D837D0];
      v20 = sub_221BCD2C8();
      OUTLINED_FUNCTION_243(v20, v21, v22, v23, v24);
      sub_221B9C448(0x6E6F69746361, *&v15[v3], &v45, 0xE600000000000000);
      if (v46)
      {
        sub_2219A1AB0(&v45, v47);
        swift_endAccess();
        sub_22199B650(v47, &v45);
        swift_isUniquelyReferenced_nonNull_native();
        *&v43 = v20;
        sub_221B9F8D4(&v45, 1701667182, 0xE400000000000000);
        v25 = __swift_destroy_boxed_opaque_existential_0(v47);
      }

      else
      {
        sub_2219EC58C(&v45, &qword_27CFB7FF8);
        v25 = swift_endAccess();
      }

      OUTLINED_FUNCTION_243(v25, v26, v27, v28, v29);
      sub_221B9C448(0x7954797469746E65, *&v15[v3], &v45, 0xEA00000000006570);
      if (v46)
      {
        sub_2219A1AB0(&v45, v47);
        swift_endAccess();
        swift_beginAccess();
        sub_221B9C448(1684957547, *&v15[v3], &v43, 0xE400000000000000);
        if (v44)
        {
          sub_2219A1AB0(&v43, &v45);
          swift_endAccess();
          *&v43 = 0;
          *(&v43 + 1) = 0xE000000000000000;
          OUTLINED_FUNCTION_241(v47, v30, v31, v32, v33, v34);
          MEMORY[0x223DA31F0](46, 0xE100000000000000);
          OUTLINED_FUNCTION_241(&v45, v35, v36, v37, v38, v39);
          v44 = v19;
          sub_2219A1AB0(&v43, v42);
          swift_isUniquelyReferenced_nonNull_native();
          sub_221B9F8D4(v42, 1701667182, 0xE400000000000000);
          __swift_destroy_boxed_opaque_existential_0(&v45);
        }

        else
        {
          sub_2219EC58C(&v43, &qword_27CFB7FF8);
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_0(v47);
      }

      else
      {
        sub_2219EC58C(&v45, &qword_27CFB7FF8);
        swift_endAccess();
      }

      if (qword_27CFB7340 != -1)
      {
        swift_once();
      }

      sub_221BB4DB0(v20);
      v41 = v40;

      sub_221BB4CFC(v41);
    }
  }
}

uint64_t sub_2219E8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8320()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_2(v1);

  return v4(v3);
}

uint64_t sub_2219E83D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E84D0()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219CC674(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219E8528()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CBF48(v0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219E8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2219E85B8, 0, 0);
}

uint64_t sub_2219E85B8()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_2(v1);

  return v4(v3);
}

uint64_t sub_2219E8670()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E8768()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219CC6D4(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219E87C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CBF9C(v0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219E882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8844()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2219E890C;

  return v4();
}

uint64_t sub_2219E890C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E8A04()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219D12F8();
  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_2219E8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8AFC()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_2(v1);

  return v4(v3);
}

uint64_t sub_2219E8BB4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E8CAC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_126();
  sub_2219CC794(v0, v1, v2, v3, sub_2219D2F44);
  OUTLINED_FUNCTION_4_3();

  return v4();
}

uint64_t sub_2219E8D2C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_127();
  sub_2219CC038(v0, v1, v2, v3);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_2219E8DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8DC4()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 168) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_1(v1);

  return v4(v3);
}

uint64_t sub_2219E8E7C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E8F74()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_180();
  v7 = *(v2 + 128);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = v7;
  v8 = OUTLINED_FUNCTION_27_2();
  sub_2219EC38C(v8, v9, v10, v11, v12);
  sub_2219D4FC4(v5);
  v13 = OUTLINED_FUNCTION_27_2();
  sub_2219EC434(v13, v14, v15, v16, v17);
  *v6 = v0;
  *(v6 + 8) = v1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_2219E9018()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_113();
  sub_2219D3F00(v0);

  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219E908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E90A4()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_2219E9168;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219E9168()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9444()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 168) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_1(v1);

  return v4(v3);
}

uint64_t sub_2219E94FC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E95F4()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_180();
  *(v1 + 64) = v0;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = *(v1 + 128);
  v6 = OUTLINED_FUNCTION_27_2();
  sub_2219EC0B0(v6, v7, v8, v9, v10);
  sub_2219DA994(v4);
  v11 = OUTLINED_FUNCTION_27_2();
  sub_2219EC114(v11, v12, v13, v14, v15);
  v16 = *(v1 + 128);
  v17 = *(v1 + 112);
  *v5 = *(v1 + 96);
  *(v5 + 16) = v17;
  *(v5 + 32) = v16;
  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_2219E969C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_113();
  sub_2219D983C(v0);

  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219E9710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9728()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_2219E97EC;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219E97EC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E98E4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_162();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4();
  sub_2219DDD60(v2, v3);

  v4 = OUTLINED_FUNCTION_54_0();

  return v5(v4);
}

uint64_t sub_2219E995C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_199();
  sub_2219DCCF8(v0, 256);

  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219E99D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E99EC()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_2219E9AB0;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219E9AB0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E9D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9D8C()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_2219E9E50;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219E9E50()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219E9F48()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[4];
  sub_2219E10FC(v0[2], v0[3], 0);
  *v1 = *(v0 + 1);
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_2219E9FB0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 72);
  v2 = v1;
  sub_2219E0184(v1, 0, 1);

  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219EA038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA050()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 168) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_1(v1);

  return v4(v3);
}

uint64_t sub_2219EA108()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219EA200()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 129);
  *(v0 + 56) = *(v0 + 96);
  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  *(v0 + 88) = v7 | v5;
  *(v0 + 90) = 0;

  sub_221998178(v3, v4);
  sub_2219E2F94((v0 + 56));

  sub_2219982C4(v3, v4);
  v8 = *(v0 + 104);
  v9 = *(v0 + 128);
  v10 = *(v0 + 129);
  v11 = *(v0 + 112);
  *v1 = *(v0 + 96);
  *(v1 + 8) = v8;
  *(v1 + 16) = v11;
  *(v1 + 32) = v9;
  *(v1 + 33) = v10;
  OUTLINED_FUNCTION_4_3();

  return v12();
}

uint64_t sub_2219EA2EC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 176);
  *(v0 + 16) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  *(v0 + 50) = 1;
  v2 = v1;
  sub_2219E1E30(v0 + 16);

  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219EA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA3A0()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_2219EA464;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219EA464()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219EA55C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_4();
  sub_2219E4A38(v3, v4, v2, 0);

  v5 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v5;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_253();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2219EA688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA6A0()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_2219EA764;
  v3 = OUTLINED_FUNCTION_35_1();

  return v4(v3);
}

uint64_t sub_2219EA764()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219EA85C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_4();
  sub_2219EBFB4(v2, v3);
  OUTLINED_FUNCTION_4();
  sub_2219DC328();
  v4 = OUTLINED_FUNCTION_4();
  sub_2219EC02C(v4, v5);
  *v1 = *(v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return v6();
}

uint64_t sub_2219EA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA980()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_2(v1);

  return v4(v3);
}

uint64_t sub_2219EAA38()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219EAB30()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219CC84C(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219EAB88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CC038(v0, &qword_27CFB8108, &qword_221BD2A20, sub_2219E5804);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v1();
}

BOOL sub_2219EAC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_221BCE308();
  sub_221BCD448();
  v6 = sub_221BCE358();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_221BCE1B8();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_2219EAD04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_221BCE308();
    MEMORY[0x223DA4060](v4);
    v5 = sub_221BCE358();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

uint64_t sub_2219EADB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (!a1 || (result = sub_2219EAD04(1u, a1), (result & 1) != 0))
  {
    if (!a2)
    {
      return Entitlement.Contains.evaluate()(a3);
    }

    result = sub_2219EAD04(1u, a2);
    if ((result & 1) == 0)
    {
      return Entitlement.Contains.evaluate()(a3);
    }
  }

  *a3 = xmmword_221BD04D0;
  return result;
}

uint64_t sub_2219EAE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 && (result = sub_2219EAD04(1u, a1), (result & 1) == 0) || a2 && (result = sub_2219EAD04(1u, a2), (result & 1) != 0))
  {
    *a5 = xmmword_221BD04D0;
  }

  else
  {
    swift_beginAccess();
    v10 = off_2817DA010;

    LOBYTE(v10) = (v10)(a3, a4, sub_221BC3464, 0);

    if (v10)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    else
    {
      sub_221BCDE68();

      result = MEMORY[0x223DA31F0](0x20646C756F687320, 0xEF65757274206562);
      *a5 = a3;
      *(a5 + 8) = a4;
    }
  }

  return result;
}

void sub_2219EAF6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && (sub_2219EAD04(1u, a1) & 1) == 0 || a2 && (sub_2219EAD04(1u, a2) & 1) != 0)
  {
    *a3 = xmmword_221BD04D0;
  }

  else
  {
    Entitlement.AnyOf.evaluate()(a3);
  }
}

uint64_t sub_2219EB050(uint64_t a1)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_152();

  return sub_2219C8038(v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_2219EB100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7F68;
  if (!qword_27CFB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7F68);
  }

  return result;
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

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2219EB320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7FA0;
  if (!qword_27CFB7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7FA0);
  }

  return result;
}

uint64_t sub_2219EB374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2219EB418(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_2_15(v10);
  *v11 = v12;
  v11[1] = sub_2219CA70C;

  return sub_2219C7298(a1, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2219EB514()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_74();

  return sub_2219E8594(v5, v6, v7, v1);
}

unint64_t sub_2219EB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7FE8;
  if (!qword_27CFB7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7FE8);
  }

  return result;
}

uint64_t sub_2219EB60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2219EB6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8028;
  if (!qword_27CFB8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8028);
  }

  return result;
}

uint64_t sub_2219EB7B4(uint64_t a1)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_53_0();

  return sub_2219C34C0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2219EB8C0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_74();

  return sub_2219E8308(v5, v6, v7, v1);
}

uint64_t sub_2219EB964(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_234(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2219EB9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8078;
  if (!qword_27CFB8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8078);
  }

  return result;
}

uint64_t sub_2219EBA50()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_53_0();

  return sub_2219C5370(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_2219EBB7C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_53_0();

  return sub_2219C946C(v5, v6, v7, v8, v9, v10, v11, v1);
}

unint64_t sub_2219EBC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB80C8;
  if (!qword_27CFB80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB80C8);
  }

  return result;
}

void sub_2219EBC94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t sub_2219EBCD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

id sub_2219EBD1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

void sub_2219EBD6C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_2219EBDBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2219EBE04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2219EBE10(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_2219EBE78(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

void sub_2219EBE84(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

id sub_2219EBF40(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2219EBF4C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_2219EBF58(id result, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EBF40(result, a2 & 1);
  }

  return result;
}

void sub_2219EBF68(void *a1, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_2219EBF4C(a1, a2 & 1);
  }
}

id sub_2219EBF78(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_2219EBF84(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_2219EBFA8(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EBFB4(result, a2);
  }

  return result;
}

uint64_t sub_2219EBFB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2219EBFC8(a1, a2);
  }

  return a1;
}

uint64_t sub_2219EBFC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2219EC020(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EC02C(result, a2);
  }

  return result;
}

uint64_t sub_2219EC02C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2219EC040(result, a2);
  }

  return result;
}

uint64_t sub_2219EC040(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_2219EC098(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2219EBFB4(a1, a2);
  }
}

void sub_2219EC0A4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_2219EC02C(a1, a2);
  }
}

id sub_2219EC0B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {

    return a1;
  }

  else
  {
  }
}

void sub_2219EC114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

id sub_2219EC1D8(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_2219EC1E8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

id sub_2219EC1F8(id a1, char a2, char a3, uint64_t (*a4)(id, void))
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return a4(a1, a2 & 1);
  }
}

void sub_2219EC20C(id a1, char a2, char a3, void (*a4)(id, void))
{
  if (a3)
  {
  }

  else
  {
    a4(a1, a2 & 1);
  }
}

uint64_t sub_2219EC27C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  return a2;
}

uint64_t sub_2219EC2D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  return a2;
}

uint64_t sub_2219EC334(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2219EC38C(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v9 = a1;
  if ((a5 & 1) == 0)
  {

    sub_2219EC3F4(a2, a3, a4);
  }
}

void sub_2219EC3F4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
  }
}

void sub_2219EC434(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    sub_2219EC49C(a2, a3);
  }
}

uint64_t sub_2219EC49C(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2219EC4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB81A8;
  if (!qword_27CFB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB81A8);
  }

  return result;
}

uint64_t sub_2219EC58C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_234(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_221BCDE68();
}

void OUTLINED_FUNCTION_21_2(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t (*a24)(uint64_t), uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int16 a29, uint64_t a30, uint64_t a31, uint64_t (*a32)(uint64_t), void (*a33)(uint64_t, uint64_t))
{
  LOWORD(a17) = v33;

  sub_2219CB5C4(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a9, a17, v34, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_221BCE408();
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_41_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_47()
{

  return __swift_project_boxed_opaque_existential_0((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_51_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = v2;
  *(result + 56) = v1;
  *(result + 57) = 0;
  return result;
}

void OUTLINED_FUNCTION_61_0()
{
  *(v0 + 36) = 1;

  os_unfair_lock_unlock((v0 + 32));
}

uint64_t OUTLINED_FUNCTION_63_0()
{
  v2 = *(v0 - 168);
  *(v0 - 176) = *(v0 - 176);
  *(v0 - 168) = v2;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_77()
{
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1)
{

  return sub_221BCE408();
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_102(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1)
{

  return sub_2219E7A60(a1, v1);
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_113()
{
  v2 = *(v0 + 176);
  *(v0 + 16) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 256;

  return v2;
}

uint64_t OUTLINED_FUNCTION_114@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2219BAF0C(v3 + a3, v4 - 176, a1, a2);
}

uint64_t OUTLINED_FUNCTION_125(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_128()
{
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_130()
{
  *(v1 + 12) = 2080;
  *(v2 - 224) = v0;

  return v0;
}

void OUTLINED_FUNCTION_131(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_132(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 - 280);

  sub_2219E7E58(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_134(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

id OUTLINED_FUNCTION_135()
{
  __swift_destroy_boxed_opaque_existential_0((v1 - 224));
  *(v1 - 224) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int16 a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t), void (*a30)(uint64_t, uint64_t))
{
  v35 = *(v33 - 80);

  sub_2219CB5C4(v35, v31, a3, v32, a5, v30, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, __int16 a10, uint64_t a11)
{

  sub_221BB52B0(a1, a2, a3, a4, a5, v12, v13, v11, a9, a10, SHIBYTE(a10), a11);
}

uint64_t OUTLINED_FUNCTION_148()
{
}

uint64_t OUTLINED_FUNCTION_149()
{
}

unint64_t OUTLINED_FUNCTION_150(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 224));
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_153_0()
{
}

void OUTLINED_FUNCTION_154(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_155()
{
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1)
{

  return sub_2219E7A60(a1, v1);
}

void OUTLINED_FUNCTION_168()
{

  JUMPOUT(0x223DA31F0);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_171()
{

  JUMPOUT(0x223DA31F0);
}

void OUTLINED_FUNCTION_187()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_188()
{
}

uint64_t OUTLINED_FUNCTION_189()
{

  return sub_2219CB440();
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_191(uint64_t a1, uint64_t a2, char a3)
{

  sub_2219E7E58(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_192@<X0>(uint64_t *a1@<X8>)
{
  v7 = *a1;
  v8 = *(v5 + v4);
  v9 = *(v5 + v3);
  v10 = *(v5 + v2);
  v11 = *(v5 + v1);

  return sub_2219EB374(v7, v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_193()
{
}

uint64_t OUTLINED_FUNCTION_194()
{
  v4 = *(v2 - 248);

  return sub_2219BAF0C(v4, v2 - 176, v0, v1);
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_198()
{
}

id OUTLINED_FUNCTION_199()
{
  v2 = *(v0 + 64);

  return v2;
}

void OUTLINED_FUNCTION_201(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_202(void *a1, char a2, char a3)
{
  v5 = *(v3 - 320);

  sub_2219EC20C(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return __swift_destroy_boxed_opaque_existential_0(&a9);
}

uint64_t OUTLINED_FUNCTION_204()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_207(uint64_t a1, uint64_t a2)
{
  sub_22198BEB8(a1, a2);

  return sub_221BCCD68();
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_221BCE198();
}

uint64_t OUTLINED_FUNCTION_209()
{
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_211()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_213(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

void OUTLINED_FUNCTION_214(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_215()
{
}

uint64_t OUTLINED_FUNCTION_216(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_225(uint64_t result, uint64_t a2)
{
  *(v2 - 272) = result;
  *(v2 - 280) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2)
{
  sub_22198BEB8(a1, a2);
}

double OUTLINED_FUNCTION_232()
{
  *(v3 + 104) = v2;
  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = v0;
  *(v3 + 80) = v1;
  return result;
}

void OUTLINED_FUNCTION_239()
{

  os_unfair_lock_lock(v0 + 8);
}

void OUTLINED_FUNCTION_240(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_241(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_221BCE018();
}

id OUTLINED_FUNCTION_242@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2219EBD1C(a1, v4, v2, 1);
}

uint64_t OUTLINED_FUNCTION_243(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_244()
{
  *(v1 - 184) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_245()
{
}

uint64_t OUTLINED_FUNCTION_246()
{
}

void OUTLINED_FUNCTION_247(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_248(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_249()
{
}

unint64_t OUTLINED_FUNCTION_250(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 184));
}

uint64_t OUTLINED_FUNCTION_251()
{
}

void sub_2219ED94C()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD048 = 0;
  unk_27CFDD050 = 0;
  byte_27CFDD058 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED984()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD0A8 = 0;
  unk_27CFDD0B0 = 0;
  byte_27CFDD0B8 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED9BC()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD108 = 0;
  unk_27CFDD110 = 0;
  byte_27CFDD118 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED9F4()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD168 = 0;
  unk_27CFDD170 = 0;
  byte_27CFDD178 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void OUTLINED_FUNCTION_0_20(char a1@<W8>)
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 72) = a1;
  *(v1 + 80) = 0;
  *(v1 + 88) = a1;
}

uint64_t sub_2219EDA70(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_221BCDF28();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DA3BF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2219EDBE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_221BCDDA8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    result = sub_221BCDF28();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223DA3BF0](v8, a1);
        }

        else
        {
          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = swift_allocObject();
        *(v11 + 16) = a2;
        *(v11 + 24) = a3;

        sub_221BB8ED4(v10, sub_2219B1AA0, v11);

        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
      }

      while (v6 != v8);
      return v12;
    }
  }

  return result;
}

void sub_2219EDD48(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 displayRepresentation];
  if (v7)
  {
    v8 = v7;
    v9 = sub_221B85444(a2, a3);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 56) = 0;
}

uint64_t sub_2219EDDBC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier);
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0);
  sub_2219A1CC8(v3 + *(v4 + 28), &qword_27CFB82B0, &unk_221BD2990);
  v5 = OUTLINED_FUNCTION_103_0();
  sub_2219BAF0C(v5, v6, v7, &unk_221BD2990);
  os_unfair_lock_unlock(v3);
  return sub_2219A1CC8(a1, &qword_27CFB82B0, &unk_221BD2990);
}

void sub_2219EDE7C(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier);
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0);
  sub_2219BAF0C(v3 + *(v4 + 28), a1, &qword_27CFB82B0, &unk_221BD2990);

  os_unfair_lock_unlock(v3);
}

void sub_2219EDEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, const void *a22)
{
  OUTLINED_FUNCTION_21();
  v66 = v24;
  v67 = v23;
  v68 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  ObjectType = swift_getObjectType();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v36);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v37);
  v39 = &v66 - v38;
  v40 = *a21;
  memcpy(v73, a22, sizeof(v73));
  v41 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier];
  v42 = sub_221BCC558();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v42);
  *v41 = 0;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0) + 28);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82C0, &qword_221BD2BE8);
  OUTLINED_FUNCTION_8_1(v44);
  bzero(v41 + v43, *(v45 + 64));
  sub_2219F6938(v39, v41 + v43);
  *&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_actionMetadata] = v33;
  v46 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate];
  *v46 = v31;
  v46[1] = v29;
  v47 = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 16);
  v70 = v27;
  v51 = v27;
  v52 = v66;
  v50(&v22[v47], v51, v48);
  *&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] = v35;
  v53 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier];
  v54 = v68;
  *v53 = v67;
  v53[1] = v54;
  sub_2219A1B08(v52, &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment]);
  v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy] = v40;
  memcpy(&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment], v73, 0x64uLL);
  v72.receiver = v22;
  v72.super_class = ObjectType;
  v55 = v33;
  swift_unknownObjectRetain();

  v56 = objc_msgSendSuper2(&v72, sel_init);
  v57 = qword_27CFB6CC0;
  v58 = v56;
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_56_1(&qword_27CFB6CC0);
  }

  os_unfair_lock_lock(&dword_27CFB81C0);
  v59 = v58;
  sub_221BBA664(&v71, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  os_unfair_lock_unlock(&dword_27CFB81C0);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v52);
  (*(v49 + 8))(v70, v48);

  OUTLINED_FUNCTION_22();
}

void sub_2219EE1E0()
{
  OUTLINED_FUNCTION_21();
  ObjectType = swift_getObjectType();
  v2 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v13 = sub_221BCCD88();
  __swift_project_value_buffer(v13, qword_27CFDEDB0);
  v14 = v0;
  v15 = sub_221BCCD68();
  v16 = sub_221BCDA68();

  if (os_log_type_enabled(v15, v16))
  {
    v34 = v8;
    v35 = v4;
    v17 = OUTLINED_FUNCTION_68();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v17 = 136315650;
    v18 = (*&v14[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v19 = ObjectType;
    v21 = *v18;
    v20 = v18[1];

    v22 = sub_2219A6360(v21, v20, &v38);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v37 = v19;
    v23 = sub_221BCE478();
    v25 = v24;
    v26 = sub_2219A6360(v23, v24, &v38);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    sub_2219EDE7C(v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v2))
    {
      sub_2219A1CC8(v12, &qword_27CFB82B0, &unk_221BD2990);
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v30 = v34;
      v29 = v35;
      (*(v35 + 16))(v34, v12, v2);
      sub_2219A1CC8(v12, &qword_27CFB82B0, &unk_221BD2990);
      v28 = sub_221BCC4E8();
      v27 = v31;
      v32 = *(v29 + 8);
      v25 = v29 + 8;
      v32(v30, v2);
    }

    sub_2219A6360(v28, v27, &v38);
    OUTLINED_FUNCTION_112_0();
    *(v17 + 24) = v25;
    _os_log_impl(&dword_221989000, v15, v16, "[%s] %s deinit for %s", v17, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_21_3();

    ObjectType = v37;
  }

  else
  {
  }

  v39.receiver = v14;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_dealloc);
  OUTLINED_FUNCTION_22();
}

uint64_t _s14descr283510D89C29PerformActionExecutorDelegateCMa(uint64_t a1)
{
  result = qword_27CFB8280;
  if (!qword_27CFB8280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2219EE680()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  OUTLINED_FUNCTION_0_2();
  v80 = v8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v81 = v13;
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_93_0(v14);
  v15 = v0[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy];
  v83 = v0;
  v77 = v6;
  if (v15)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v16 = sub_221BCCD88();
    __swift_project_value_buffer(v16, qword_27CFDEDB0);
    v17 = v0;
    v18 = v6;
    v19 = v4;
    v20 = v2;
    v21 = sub_221BCCD68();
    v22 = sub_221BCDA98();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_131_0();
      v23 = OUTLINED_FUNCTION_83_0();
      v75 = OUTLINED_FUNCTION_105();
      v84 = v75;
      *v2 = 136315907;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      v24 = OUTLINED_FUNCTION_111();
      sub_221BCC528();

      sub_2219AC8D8();
      sub_221BCE168();
      v25 = OUTLINED_FUNCTION_87_0();
      v26(v25);
      v27 = sub_2219A6360(v24, 0x278482000uLL, &v84);

      *(v2 + 14) = v27;
      OUTLINED_FUNCTION_130_0(2117);
      if (v2)
      {
        v28 = v2;
        v29 = v2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v30 = OUTLINED_FUNCTION_123();
      }

      v47 = v76;
      *(v2 + 34) = v30;
      *(v23 + 8) = v31;
      v48 = "[%s] Executor %s didPerformActionWithResult with result=%{sensitive}@, error=%{sensitive}@";
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v32 = sub_221BCCD88();
    __swift_project_value_buffer(v32, qword_27CFDEDB0);
    v33 = v0;
    v34 = v6;
    v35 = v4;
    v36 = v2;
    v21 = sub_221BCCD68();
    v37 = sub_221BCDA98();

    if (os_log_type_enabled(v21, v37))
    {
      OUTLINED_FUNCTION_131_0();
      v38 = OUTLINED_FUNCTION_83_0();
      v75 = OUTLINED_FUNCTION_105();
      v84 = v75;
      *v2 = 136315907;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      v39 = OUTLINED_FUNCTION_111();
      sub_221BCC528();

      sub_2219AC8D8();
      sub_221BCE168();
      v40 = OUTLINED_FUNCTION_87_0();
      v41(v40);
      v42 = sub_2219A6360(v39, 0x278482000uLL, &v84);

      *(v2 + 14) = v42;
      OUTLINED_FUNCTION_130_0(2113);
      if (v2)
      {
        v43 = v2;
        v29 = v2;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        v45 = v44;
      }

      else
      {
        v29 = 0;
        v44 = OUTLINED_FUNCTION_123();
      }

      v47 = v76;
      *(v2 + 34) = v44;
      *(v38 + 8) = v45;
      v48 = "[%s] Executor %s didPerformActionWithResult with result=%{private}@, error=%{private}@";
LABEL_18:
      _os_log_impl(&dword_221989000, v21, v47, v48, v2, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB7630, qword_221BD0790);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_44_0();

      v7 = v78;
      v11 = v79;
      v2 = v29;
      if (!v4)
      {
        goto LABEL_19;
      }

LABEL_13:
      v84 = v4;
      v46 = v4;
      sub_221BCD798();
      goto LABEL_27;
    }
  }

  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (v2)
  {
    v49 = v80;
    (*(v80 + 16))(v11, v83 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation, v7);
    v50 = v2;
  }

  else
  {
    v79 = v11;
    v49 = v80;
    v51 = v83;
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v52 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v52, qword_27CFDEDB0);
    v53 = v51;
    v54 = v77;
    v55 = sub_221BCCD68();
    v56 = sub_221BCDA78();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_103();
      v58 = OUTLINED_FUNCTION_105();
      v78 = v7;
      v84 = v58;
      *v57 = 136315394;
      v59 = (*&v53[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v60 = *v59;
      v61 = v59[1];

      v62 = sub_2219A6360(v60, v61, &v84);
      v2 = 0;

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = [v54 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v64 = sub_221BCE168();
      v65 = OUTLINED_FUNCTION_64_0();
      v66(v65);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v57 + 14) = v64;
      _os_log_impl(&dword_221989000, v55, v56, "[%s] EXECUTOR %s COMPLETED WITH NO RESULT NOR ERROR", v57, 0x16u);
      swift_arrayDestroy();
      v7 = v78;
      v49 = v80;
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_22_3();
    }

    v67 = &v53[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation];
    v11 = v79;
    v68 = (*(v49 + 16))(v79, v67, v7);
    v71 = sub_2219A1218(v68, v69, v70);
    v50 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v71);
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 32) = 5;
  }

  v84 = v50;
  v73 = v2;
  sub_221BCD788();
  (*(v49 + 8))(v11, v7);
LABEL_27:
  OUTLINED_FUNCTION_22();
}

void sub_2219EEDF8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  if (*(v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v9 = sub_221BCCD88();
    __swift_project_value_buffer(v9, qword_27CFDEDB0);
    v10 = v1;
    v11 = v7;
    v12 = v5;
    v13 = v3;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA98();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_127_0();
      v16 = OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_105();
      *v1 = 136315907;
      v17 = *(*(v10 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher) + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);

      v18 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v18, v19, v20);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 1) = v17;
      *(v1 + 6) = 2080;
      v21 = [v11 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v22 = sub_221BCE168();
      v23 = OUTLINED_FUNCTION_70_0();
      v24(v23);
      v25 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v25, v26, v27);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 14) = v22;
      OUTLINED_FUNCTION_110_0(2117);
      if (v3)
      {
        v28 = v3;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = OUTLINED_FUNCTION_123();
      }

      v52 = v54;
      *(v1 + 34) = v29;
      *(v16 + 8) = v30;
      v53 = "[%s] Executor %s didCompleteExecution with result=%{sensitive}@, error=%{sensitive}@";
LABEL_17:
      _os_log_impl(&dword_221989000, v14, v52, v53, v1, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB7630, qword_221BD0790);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_44_0();

      goto LABEL_18;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v31 = sub_221BCCD88();
    __swift_project_value_buffer(v31, qword_27CFDEDB0);
    v32 = v1;
    v33 = v7;
    v34 = v5;
    v35 = v3;
    v14 = sub_221BCCD68();
    v36 = sub_221BCDA98();

    if (os_log_type_enabled(v14, v36))
    {
      OUTLINED_FUNCTION_127_0();
      v37 = OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_105();
      *v1 = 136315907;
      v38 = *(*(v32 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher) + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);

      v39 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v39, v40, v41);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 1) = v38;
      *(v1 + 6) = 2080;
      v42 = [v33 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v43 = sub_221BCE168();
      v44 = OUTLINED_FUNCTION_70_0();
      v45(v44);
      v46 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v46, v47, v48);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 14) = v43;
      OUTLINED_FUNCTION_110_0(2113);
      if (v3)
      {
        v49 = v3;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        v51 = v50;
      }

      else
      {
        v50 = OUTLINED_FUNCTION_123();
      }

      v52 = v54;
      *(v1 + 34) = v50;
      *(v37 + 8) = v51;
      v53 = "[%s] Executor %s didCompleteExecution with result=%{private}@, error=%{private}@";
      goto LABEL_17;
    }
  }

LABEL_18:
  sub_2219EF28C();
  OUTLINED_FUNCTION_22();
}

void sub_2219EF28C()
{
  OUTLINED_FUNCTION_21();
  swift_getObjectType();
  v1 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  if (qword_27CFB6CC0 != -1)
  {
    OUTLINED_FUNCTION_56_1(&qword_27CFB6CC0);
  }

  os_unfair_lock_lock(&dword_27CFB81C0);

  os_unfair_lock_unlock(&dword_27CFB81C0);
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v12 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v12, qword_27CFDEDB0);
  v13 = v0;
  v32 = sub_221BCCD68();
  v14 = sub_221BCDA98();

  if (os_log_type_enabled(v32, v14))
  {
    v31 = v3;
    v15 = OUTLINED_FUNCTION_68();
    v33 = swift_slowAlloc();
    *v15 = 136315650;
    v16 = (*&v13[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_2219A6360(v17, v18, &v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_221BCE478();
    v22 = sub_2219A6360(v20, v21, &v33);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    sub_2219EDE7C(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v1))
    {
      sub_2219A1CC8(v11, &qword_27CFB82B0, &unk_221BD2990);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      (*(v31 + 16))(v7, v11, v1);
      sub_2219A1CC8(v11, &qword_27CFB82B0, &unk_221BD2990);
      v24 = sub_221BCC4E8();
      v23 = v27;
      v28 = OUTLINED_FUNCTION_118_0();
      v29(v28);
    }

    sub_2219A6360(v24, v23, &v33);
    OUTLINED_FUNCTION_112_0();
    *(v15 + 24) = v1;
    _os_log_impl(&dword_221989000, v32, v14, "[%s] %s invalidated for %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_13_4();

    OUTLINED_FUNCTION_22();
  }

  else
  {
    OUTLINED_FUNCTION_22();
  }
}

void sub_2219EF618(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v14 = a5;
  v13 = OUTLINED_FUNCTION_118();
  a6(v13);
}

uint64_t sub_2219EF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_2219EF6D0, 0, 0);
}

uint64_t sub_2219EF6D0()
{
  sub_2219F2D44(*(v0 + 152));
  *(v0 + 160) = v1;
  v2 = *(v0 + 152);
  if (!v1)
  {
    v41 = [*(v0 + 152) parameterName];
    v42 = sub_221BCD388();
    v44 = v43;

    v48 = sub_2219ACADC(v45, v46, v47);
    v49 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v48);
    *v50 = v42;
    v50[1] = v44;
    v51 = OUTLINED_FUNCTION_107_0(v49, v50);

    [v2 respondWithError_];
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_26_1();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 144);
  v4 = [*(v0 + 152) providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v5 = sub_221BCD668();

  v91 = sub_2219A69A0();
  v6 = 0;
  v7 = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment;
  *(v0 + 168) = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment;
  v8 = v0;
  v9 = v3 + v7;
  v88 = v5 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F98];
  v89 = v5;
  v87 = v5 & 0xFFFFFFFFFFFFFF8;
  v85 = v0;
LABEL_3:
  v84 = v10;
  *(v8 + 176) = v11;
  *(v8 + 184) = v10;
  v86 = v11;
  while (1)
  {
    if (v91 == v6)
    {
      v9 = v85;
      v36 = *(v85 + 152);

      v37 = [v36 dialog];
      *(v85 + 192) = v37;
      if (v37)
      {
        v38 = swift_task_alloc();
        *(v85 + 200) = v38;
        *v38 = v85;
        OUTLINED_FUNCTION_57_1(v38);
        OUTLINED_FUNCTION_26_1();

        return sub_22199B0DC();
      }

      *(v85 + 232) = 0;
      *(v85 + 240) = 0;
      *(v85 + 248) = 0;
      if (qword_280FA8FE0 == -1)
      {
LABEL_35:
        v54 = *(v9 + 144);
        v55 = sub_221BCCD88();
        *(v9 + 256) = OUTLINED_FUNCTION_178(v55, qword_280FA9008);
        v56 = v54;
        v57 = sub_221BCCD68();
        sub_221BCDA98();

        if (OUTLINED_FUNCTION_97_0())
        {
          OUTLINED_FUNCTION_74_0();
          v92 = OUTLINED_FUNCTION_42_0();
          *v3 = 136315138;

          v58 = OUTLINED_FUNCTION_27();
          v61 = sub_2219A6360(v58, v59, v60);

          *(v3 + 4) = v61;
          v9 = v85;
          OUTLINED_FUNCTION_10_3(&dword_221989000, v62, v63, "[%s] NeedsDisambiguation: waiting for client response...");
          __swift_destroy_boxed_opaque_existential_0(v92);
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_20_1();
        }

        v90 = *(v9 + 184);
        v64 = *(v9 + 160);
        v65 = *(v9 + 152);
        v66 = (*(v9 + 144) + *(v9 + 168));
        swift_getObjectType();
        v67 = OUTLINED_FUNCTION_14_5();
        sub_2219F6C8C(v67, v68, v69);
        v70 = v64;
        v71 = [v65 parameterName];
        v72 = sub_221BCD388();
        v74 = v73;

        __swift_project_boxed_opaque_existential_0(v66, v66[3]);
        v75 = OUTLINED_FUNCTION_27_3();
        v76(v75);
        *(v9 + 80) = &type metadata for AnyIntentParameterMetadata;
        *(v9 + 88) = &protocol witness table for AnyIntentParameterMetadata;
        OUTLINED_FUNCTION_49();
        v77 = swift_allocObject();
        *(v9 + 56) = v77;
        sub_2219BCDE0(v70, v72, v74, (v77 + 16));
        *(v9 + 48) = 0;
        *(v9 + 32) = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 96) = v90;
        OUTLINED_FUNCTION_43_1();
        v78 = swift_task_alloc();
        *(v9 + 264) = v78;
        *v78 = v9;
        OUTLINED_FUNCTION_32_2(v78);
        OUTLINED_FUNCTION_26_1();

        __asm { BRAA            X3, X16 }
      }

LABEL_47:
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
      goto LABEL_35;
    }

    if (v88)
    {
      v12 = MEMORY[0x223DA3BF0](v6, v89);
    }

    else
    {
      if (v6 >= *(v87 + 16))
      {
        goto LABEL_41;
      }

      v12 = *(v89 + 8 * v6 + 32);
    }

    v13 = v12;
    v3 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v14 = *(v9 + 24);
    v15 = *(v9 + 32);
    __swift_project_boxed_opaque_existential_0(v9, v14);
    v16 = *(v15 + 24);
    v17 = v13;
    v18 = v16(v14, v15);
    v20 = v19;
    v21 = [v17 displayRepresentation];
    if (v21)
    {

      v22 = v84;
      v23 = *(v84 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_221B9EAA0(v23);
      if (__OFADD__(v86[2], (v25 & 1) == 0))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v83 = v25;
      v82 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8330, &qword_221BD2CA8);
      if (sub_221BCE028())
      {
        v26 = sub_221B9EAA0(v23);
        v28 = v83;
        if ((v83 & 1) != (v27 & 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = v82;
        v28 = v83;
      }

      if (v28)
      {
        *(v86[7] + 8 * v26) = v6;
      }

      else
      {
        v86[(v26 >> 6) + 8] |= 1 << v26;
        *(v86[6] + 8 * v26) = v23;
        *(v86[7] + 8 * v26) = v6;
        v29 = v86[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_46;
        }

        v86[2] = v31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219B3D84();
        v22 = v34;
      }

      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_119_0(v32);
        sub_2219B3D84();
        v10 = v35;
      }

      else
      {
        v10 = v22;
      }

      v8 = v85;
      *(v85 + 136) = &off_28351B418;
      *(v85 + 104) = v18;
      *(v85 + 112) = v20;
      *(v85 + 120) = v17;
      *(v85 + 128) = &type metadata for LNValueBackedDisplayRepresentable;
      *(v10 + 16) = v33 + 1;
      sub_22198B358((v85 + 104), v10 + 40 * v33 + 32);
      ++v6;
      v11 = v86;
      goto LABEL_3;
    }

    ++v6;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  OUTLINED_FUNCTION_26_1();

  return sub_221BCE228();
}

uint64_t sub_2219EFE54()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 192);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[26] = v7;
  v9[27] = v8;
  v9[28] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219EFF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  v22 = v20[27];
  v23 = v20[26];
  v73 = v20[28];
  v20[30] = v22;
  v20[31] = v73;
  v20[29] = v23;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v24 = v20[18];
  v25 = sub_221BCCD88();
  v20[32] = OUTLINED_FUNCTION_178(v25, qword_280FA9008);
  v26 = v24;
  v27 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_105_0())
  {
    OUTLINED_FUNCTION_74_0();
    a17 = OUTLINED_FUNCTION_138();
    *v26 = 136315138;
    OUTLINED_FUNCTION_80_0();
    v28 = OUTLINED_FUNCTION_64_0();
    sub_2219A6360(v28, v29, v30);
    OUTLINED_FUNCTION_132_0();
    *(v26 + 1) = v21;
    OUTLINED_FUNCTION_18_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_21_3();
  }

  v36 = v20[20];
  v37 = v20[18];
  v38 = v20[19];
  v39 = (v37 + v20[21]);
  v70 = *(v37 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
  v71 = v20[23];
  if (v73)
  {
    v40 = v22;
  }

  else
  {
    v40 = 0;
  }

  v69 = v40;
  if (v73)
  {
    v41 = v23;
  }

  else
  {
    v41 = 0;
  }

  v67 = v41;
  v42 = &type metadata for AnyDialog;
  if (!v73)
  {
    v42 = 0;
  }

  v68 = v42;
  v43 = &off_283512A28;
  if (!v73)
  {
    v43 = 0;
  }

  v66 = v43;
  ObjectType = swift_getObjectType();
  v44 = OUTLINED_FUNCTION_118();
  sub_2219F6C8C(v44, v45, v73);
  v46 = v36;
  v47 = [v38 parameterName];
  v48 = sub_221BCD388();
  v50 = v49;

  v52 = v39[3];
  v51 = v39[4];
  __swift_project_boxed_opaque_existential_0(v39, v52);
  OUTLINED_FUNCTION_40_0();
  v53(v52, v51);
  v20[10] = &type metadata for AnyIntentParameterMetadata;
  v20[11] = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v54 = swift_allocObject();
  v20[7] = v54;
  sub_2219BCDE0(v46, v48, v50, (v54 + 16));
  v20[2] = v67;
  v20[3] = v69;
  v20[4] = v73;
  v20[5] = v68;
  v20[6] = v66;
  v20[12] = v71;
  OUTLINED_FUNCTION_43_1();
  v74 = v55 + *v55;
  v56 = swift_task_alloc();
  v20[33] = v56;
  *v56 = v20;
  OUTLINED_FUNCTION_32_2(v56);
  OUTLINED_FUNCTION_109();

  return v60(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v68, v69, v70, v70 + 16, ObjectType, v74, a17, a18, a19, a20);
}

uint64_t sub_2219F0278()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 280) = v3;
  }

  sub_2219F7094(v5 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219F0398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v21;
  v24 = sub_221B9C4AC(*(v21 + 280), *(v21 + 176));
  if (v25)
  {
    v27 = *(v21 + 248);
    v28 = *(v21 + 176);
    v29 = *(v21 + 160);
    v30 = sub_2219A1218(v24, v25, v26);
    v31 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v30);
    OUTLINED_FUNCTION_59_0(v32, 6);

    v33 = OUTLINED_FUNCTION_70_0();
    sub_2219F6D20(v33, v34, v27);

    v35 = *(v21 + 144);
    v36 = OUTLINED_FUNCTION_55_1();
    v37 = sub_221BCCD68();
    sub_221BCDA78();

    if (OUTLINED_FUNCTION_98_0())
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_101_0();
      *v20 = 136315394;
      v38 = OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_91_0(v38, v39, &a9);
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_12_2();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_65_0(v40);
      OUTLINED_FUNCTION_131(&dword_221989000, v41, v42, "[%s] NeedsDisambiguation: failed with error: %@");
      sub_2219A1CC8(v28, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_20_1();
    }

    v43 = sub_221BCC328();
    OUTLINED_FUNCTION_94_0(v43, sel_respondWithError_);
  }

  else
  {
    v44 = v24;
    v45 = *(v21 + 144);
    v46 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_104_0())
    {
      v47 = *(v21 + 144);
      v48 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_101_0();
      *v48 = 136315138;
      v49 = OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_135_0(v49, v50, &a9);
      OUTLINED_FUNCTION_134_0();
      *(v48 + 4) = v47;
      OUTLINED_FUNCTION_49_1(&dword_221989000, v51, v52, "[%s] NeedsDisambiguation: responding to app request");
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_22_3();
    }

    v53 = *(v21 + 248);
    v54 = *(v21 + 160);
    [*(v21 + 152) respondWithSelectedIndex_];

    v55 = OUTLINED_FUNCTION_118();
    sub_2219F6D20(v55, v56, v53);
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
}

uint64_t sub_2219F0614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v15 = *(v13 + 160);
  sub_2219F6D20(*(v13 + 232), *(v13 + 240), *(v13 + 248));

  v16 = *(v13 + 272);
  v17 = *(v13 + 144);
  v18 = OUTLINED_FUNCTION_55_1();
  v19 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_98_0())
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_121_0();
    *v12 = 136315394;
    v20 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_58_0(v20, v21);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_12_2();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_131(&dword_221989000, v23, v24, "[%s] NeedsDisambiguation: failed with error: %@");
    sub_2219A1CC8(v14, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_20_1();
  }

  v25 = sub_221BCC328();
  OUTLINED_FUNCTION_94_0(v25, sel_respondWithError_);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_2219F0828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x2822009F8](sub_2219F0848, 0, 0);
}

uint64_t sub_2219F0848()
{
  v71 = v0;
  v1 = *(v0 + 112);
  v2 = [*(v0 + 104) options];
  *(v0 + 120) = sub_2219A1D20(0, &qword_27CFB8328, 0x277D23B88);
  v3 = sub_221BCD668();

  v68 = v3;
  v69 = sub_2219A69A0();
  v4 = 0;
  v65 = (v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment);
  v66 = v3 & 0xFFFFFFFFFFFFFF8;
  v67 = v3 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 128) = v6;
    *(v0 + 136) = v5;
    if (v69 == v4)
    {
      break;
    }

    if (v67)
    {
      v7 = MEMORY[0x223DA3BF0](v4, v68);
    }

    else
    {
      if (v4 >= *(v66 + 16))
      {
        goto LABEL_38;
      }

      v7 = *(v68 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
LABEL_29:
      v43 = *(v0 + 112);
      v44 = sub_221BCCD88();
      *(v0 + 208) = OUTLINED_FUNCTION_178(v44, qword_280FA9008);
      v45 = v43;
      v46 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_97_0())
      {
        OUTLINED_FUNCTION_74_0();
        v47 = OUTLINED_FUNCTION_42_0();
        v70 = v47;
        *v45 = 136315138;

        v48 = OUTLINED_FUNCTION_27();
        v51 = sub_2219A6360(v48, v49, v50);

        *(v45 + 1) = v51;
        OUTLINED_FUNCTION_10_3(&dword_221989000, v52, v53, "[%s] NeedsChoice: waiting for client response...");
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_21_3();
        OUTLINED_FUNCTION_20_1();
      }

      v54 = *(v0 + 104);
      v55 = OUTLINED_FUNCTION_14_5();
      sub_2219F6C8C(v55, v56, v57);
      v58 = [v54 viewSnippet];
      if (v58)
      {
        v59 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
        v60 = &protocol witness table for LNViewSnippet;
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }

      v61 = *(v0 + 128);
      swift_getObjectType();
      OUTLINED_FUNCTION_117_0();
      *(v0 + 48) = 0;
      *(v0 + 56) = v61;
      *(v0 + 64) = v58;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = v59;
      *(v0 + 96) = v60;
      OUTLINED_FUNCTION_43_1();
      v62 = swift_task_alloc();
      *(v0 + 216) = v62;
      *v62 = v0;
      v62[1] = sub_2219F1258;
      OUTLINED_FUNCTION_67_0();

      __asm { BRAA            X3, X16 }
    }

    v9 = *(v6 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v5;
    v10 = sub_221B9EAA0(v9);
    if (__OFADD__(v5[2], (v11 & 1) == 0))
    {
      goto LABEL_39;
    }

    v12 = v10;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8330, &qword_221BD2CA8);
    v14 = sub_221BCE028();
    v5 = v70;
    if (v14)
    {
      v15 = sub_221B9EAA0(v9);
      if ((v13 & 1) != (v16 & 1))
      {
        OUTLINED_FUNCTION_67_0();

        return sub_221BCE228();
      }

      v12 = v15;
    }

    if (v13)
    {
      *(v5[7] + 8 * v12) = v4;
    }

    else
    {
      v5[(v12 >> 6) + 8] |= 1 << v12;
      *(v5[6] + 8 * v12) = v9;
      *(v5[7] + 8 * v12) = v4;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_40;
      }

      v5[2] = v19;
    }

    v20 = [v8 title];
    v21 = v65[4];
    __swift_project_boxed_opaque_existential_0(v65, v65[3]);
    v22 = OUTLINED_FUNCTION_75();
    v23(v22, v21);
    v24 = sub_221BCD358();

    v25 = OUTLINED_FUNCTION_103_0();
    v27 = [v25 v26];

    v28 = sub_221BCD388();
    v30 = v29;

    sub_2219F17D0(&v70);
    v31 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2219B3E54();
      v6 = v35;
    }

    v33 = *(v6 + 16);
    v32 = *(v6 + 24);
    if (v33 >= v32 >> 1)
    {
      OUTLINED_FUNCTION_119_0(v32);
      sub_2219B3E54();
      v6 = v36;
    }

    *(v6 + 16) = v33 + 1;
    v34 = v6 + 24 * v33;
    *(v34 + 32) = v28;
    *(v34 + 40) = v30;
    *(v34 + 48) = v31;
    ++v4;
  }

  v37 = *(v0 + 104);

  v38 = [v37 dialog];
  *(v0 + 144) = v38;
  if (!v38)
  {
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    if (qword_280FA8FE0 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v39 = swift_task_alloc();
  *(v0 + 152) = v39;
  *v39 = v0;
  OUTLINED_FUNCTION_57_1(v39);
  OUTLINED_FUNCTION_67_0();

  return sub_22199B0DC();
}

uint64_t sub_2219F0E84()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[20] = v7;
  v9[21] = v8;
  v9[22] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219F0F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[21];
  v18 = v16[22];
  v19 = v16[20];
  v16[24] = v17;
  v16[25] = v18;
  v20 = v17;
  v16[23] = v19;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v21 = v16[14];
  v22 = sub_221BCCD88();
  v16[26] = OUTLINED_FUNCTION_178(v22, qword_280FA9008);
  v23 = v21;
  v24 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_105_0())
  {
    v25 = v16[14];
    OUTLINED_FUNCTION_74_0();
    a13 = OUTLINED_FUNCTION_138();
    *v23 = 136315138;
    OUTLINED_FUNCTION_80_0();
    v26 = OUTLINED_FUNCTION_64_0();
    sub_2219A6360(v26, v27, v28);
    OUTLINED_FUNCTION_132_0();
    *(v23 + 1) = v25;
    OUTLINED_FUNCTION_18_3();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_21_3();
  }

  v34 = v16[13];
  v61 = *(v16[14] + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
  v35 = v20;
  sub_2219F6C8C(v19, v20, v18);
  v36 = [v34 viewSnippet];
  v37 = v19;
  if (v36)
  {
    v38 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v58 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v58 = 0;
    v38 = 0;
  }

  v39 = v18 == 0;
  if (v18)
  {
    v40 = &off_283512A28;
  }

  else
  {
    v40 = 0;
  }

  if (v18)
  {
    v41 = &type metadata for AnyDialog;
  }

  else
  {
    v41 = 0;
  }

  v42 = v18;
  if (v18)
  {
    v43 = v35;
  }

  else
  {
    v43 = 0;
  }

  if (v39)
  {
    v44 = 0;
  }

  else
  {
    v44 = v37;
  }

  v45 = v16[16];
  ObjectType = swift_getObjectType();
  v16[2] = v44;
  v16[3] = v43;
  v16[4] = v42;
  v16[5] = v41;
  v16[6] = v40;
  v16[7] = v45;
  v16[8] = v36;
  v16[9] = 0;
  v16[10] = 0;
  v16[11] = v38;
  v16[12] = v58;
  OUTLINED_FUNCTION_43_1();
  v59 = v46 + *v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v16[27] = v47;
  *v47 = v48;
  OUTLINED_FUNCTION_28_2(v47);
  OUTLINED_FUNCTION_28_0();

  return v52(v49, v50, v51, v52, v53, v54, v55, v56, v61 + 40, v59, ObjectType, v61, a13, a14, a15, a16);
}

uint64_t sub_2219F1258()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  sub_2219F6F6C(v5 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219F1378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  v23 = sub_221B9C4AC(*(v20 + 232), *(v20 + 136));
  if (v24)
  {
    v26 = *(v20 + 200);
    v27 = *(v20 + 136);
    v28 = sub_2219A1218(v23, v24, v25);
    v29 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v28);
    *v30 = 5;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 5;
    swift_willThrow();
    v31 = OUTLINED_FUNCTION_70_0();
    sub_2219F6D20(v31, v32, v26);

    v33 = *(v20 + 112);
    v34 = OUTLINED_FUNCTION_55_1();
    v35 = sub_221BCCD68();
    sub_221BCDA78();

    if (OUTLINED_FUNCTION_98_0())
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_101_0();
      *v29 = 136315394;
      v36 = OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_91_0(v36, v37, &a9);
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_12_2();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_65_0(v38);
      OUTLINED_FUNCTION_131(&dword_221989000, v39, v40, "[%s] NeedsChoice: failed with error: %@");
      sub_2219A1CC8(v27, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_20_1();
    }

    v41 = sub_221BCC328();
    OUTLINED_FUNCTION_94_0(v41, sel_respondWithError_);
  }

  else
  {
    v42 = v23;
    v43 = *(v20 + 112);
    v44 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_104_0())
    {
      v45 = *(v20 + 112);
      v46 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_101_0();
      *v46 = 136315138;
      v47 = OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_135_0(v47, v48, &a9);
      OUTLINED_FUNCTION_134_0();
      *(v46 + 4) = v45;
      OUTLINED_FUNCTION_49_1(&dword_221989000, v49, v50, "[%s] NeedsChoice: responding to app request");
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_22_3();
    }

    v51 = [*(v20 + 104) options];
    v52 = sub_221BCD668();

    sub_2219A69A4();
    if ((v52 & 0xC000000000000001) != 0)
    {
      v68 = OUTLINED_FUNCTION_0_0();
      v53 = MEMORY[0x223DA3BF0](v68);
    }

    else
    {
      v53 = *(v52 + 8 * v42 + 32);
    }

    v54 = v53;
    v55 = *(v20 + 200);
    v56 = *(v20 + 104);

    [v56 respondWithOption_];
    v57 = OUTLINED_FUNCTION_70_0();
    sub_2219F6D20(v57, v58, v55);
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12);
}

uint64_t sub_2219F166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  sub_2219F6D20(*(v13 + 184), *(v13 + 192), *(v13 + 200));

  v15 = *(v13 + 224);
  v16 = *(v13 + 112);
  v17 = OUTLINED_FUNCTION_55_1();
  v18 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_98_0())
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_121_0();
    *v12 = 136315394;
    v19 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_58_0(v19, v20);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_12_2();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_65_0(v21);
    OUTLINED_FUNCTION_131(&dword_221989000, v22, v23, "[%s] NeedsChoice: failed with error: %@");
    sub_2219A1CC8(v14, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_20_1();
  }

  v24 = sub_221BCC328();
  OUTLINED_FUNCTION_94_0(v24, sel_respondWithError_);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

unint64_t sub_2219F17D0@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 style];
  v4 = 0x10002u >> (8 * result);
  if (result >= 3)
  {
    LOBYTE(v4) = 2;
  }

  *a1 = v4;
  return result;
}

void sub_2219F18C8(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_73_0(v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0(v15);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v43 = v6;
  if (*(v4 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v17 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v17, qword_27CFDEDB0);
    v18 = v5;
    v19 = v3;
    v20 = v6;
    v21 = sub_221BCCD68();
    v22 = sub_221BCDA98();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61_1();
      v23 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_124(v23);
      *v3 = 136315651;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_60_1();
      v24 = [v19 identifier];
      OUTLINED_FUNCTION_133_0();

      v25 = sub_2219AC8D8();
      OUTLINED_FUNCTION_88_0(v25);
      v26 = OUTLINED_FUNCTION_6_6();
      v27(v26);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v3 + 14) = v4;
      OUTLINED_FUNCTION_50_1(2117);
      OUTLINED_FUNCTION_84_0(&dword_221989000, v21, v22);
      sub_2219A1CC8(v4, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_34_1();
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v28 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v28, qword_27CFDEDB0);
    v29 = v5;
    v30 = v3;
    v31 = v6;
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA98();

    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61_1();
      v34 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_124(v34);
      *v3 = 136315651;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_60_1();
      v35 = [v30 identifier];
      OUTLINED_FUNCTION_133_0();

      v36 = sub_2219AC8D8();
      OUTLINED_FUNCTION_88_0(v36);
      v37 = OUTLINED_FUNCTION_6_6();
      v38(v37);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v3 + 14) = v4;
      OUTLINED_FUNCTION_50_1(2113);
      OUTLINED_FUNCTION_84_0(&dword_221989000, v32, v33);
      sub_2219A1CC8(v4, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_34_1();
    }
  }

  v39 = sub_221BCD7F8();
  v40 = OUTLINED_FUNCTION_102_0(v39);
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v5;
  v40[5] = v43;
  v41 = v5;
  v42 = v43;
  OUTLINED_FUNCTION_109_0();

  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219F1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x2822009F8](sub_2219F1CC0, 0, 0);
}

uint64_t sub_2219F1CC0()
{
  v79 = v0;
  sub_2219F2D44(*(v0 + 184));
  *(v0 + 192) = v1;
  v2 = *(v0 + 184);
  if (!v1)
  {
    v7 = [*(v0 + 184) parameterName];
    v8 = sub_221BCD388();
    v10 = v9;

    v14 = sub_2219ACADC(v11, v12, v13);
    v15 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v14);
    *v16 = v8;
    v16[1] = v10;
    v17 = OUTLINED_FUNCTION_107_0(v15, v16);

    [v2 respondWithError_];
    goto LABEL_7;
  }

  v3 = [*(v0 + 184) dialog];
  *(v0 + 200) = v3;
  if (!v3)
  {
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
    v23 = *(v0 + 192);
    OUTLINED_FUNCTION_117_0();
    *(v0 + 48) = 0;
    ObjectType = swift_getObjectType();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_14_5();
    sub_2219F6C8C(v25, v26, v27);
    v28 = [v20 parameterName];
    sub_221BCD388();
    v30 = v29;

    __swift_project_boxed_opaque_existential_0((v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), *(v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24));
    v31 = OUTLINED_FUNCTION_27_3();
    v32(v31);
    *(v0 + 80) = &type metadata for AnyIntentParameterMetadata;
    *(v0 + 88) = &protocol witness table for AnyIntentParameterMetadata;
    OUTLINED_FUNCTION_49();
    *(v0 + 56) = swift_allocObject();
    v33 = OUTLINED_FUNCTION_118_0();
    sub_2219BCDE0(v33, v34, v30, v35);
    v36 = *(v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher);
    *(v0 + 264) = v36;
    v37 = v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier;
    v39 = *(v21 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier);
    v38 = *(v37 + 8);
    *(v0 + 120) = &type metadata for AnyEntityQueryDispatching;
    *(v0 + 128) = &protocol witness table for AnyEntityQueryDispatching;
    OUTLINED_FUNCTION_49();
    v40 = swift_allocObject();
    *(v0 + 96) = v40;
    *(v40 + 16) = v36;
    *(v40 + 24) = &off_283514488;
    *(v40 + 32) = v39;
    *(v40 + 40) = v38;
    *(v40 + 48) = xmmword_221BD0800;
    v41 = *(v22 + 24);

    v42 = v41(v0 + 16, v0 + 56, v0 + 96, ObjectType, v22);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_2219A1CC8(v0 + 16, &qword_27CFB8320, &unk_221BD1D60);
    v43 = [v24 valueType];
    sub_2219C0C28(v43, v42, &v75);

    *(v0 + 272) = v75;
    v44 = v77;
    *(v0 + 288) = v76;
    *(v0 + 296) = v44;
    *(v0 + 304) = v78;
    if (v44)
    {
      if (qword_280FA8FE0 != -1)
      {
        OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
      }

      v45 = *(v0 + 176);
      v46 = sub_221BCCD88();
      *(v0 + 312) = OUTLINED_FUNCTION_178(v46, qword_280FA9008);
      v47 = v45;
      v48 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_105_0())
      {
        OUTLINED_FUNCTION_74_0();
        *&v75 = OUTLINED_FUNCTION_138();
        *v47 = 136315138;
        v49 = v36 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
        v50 = *(v36 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
        v51 = *(v49 + 8);

        v52 = sub_2219A6360(v50, v51, &v75);

        *(v47 + 1) = v52;
        OUTLINED_FUNCTION_18_3();
        _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_21_3();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 320) = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_33_1(v58);
      OUTLINED_FUNCTION_67_0();

      __asm { BRAA            X1, X16 }
    }

    v17 = *(v0 + 192);
    v62 = [v17 valueType];
    v65 = sub_2219A1218(v62, v63, v64);
    v66 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v65);
    *v67 = v62;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    *(v67 + 32) = 2;
    v68 = sub_221BCC328();

    v69 = OUTLINED_FUNCTION_103_0();
    [v69 v70];

    v71 = OUTLINED_FUNCTION_14_5();
    sub_2219F6D20(v71, v72, v73);
LABEL_7:

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_67_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_67_0();

  return sub_22199B0DC();
}

uint64_t sub_2219F2238()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 200);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[27] = v7;
  v9[28] = v8;
  v9[29] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219F2338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, int *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v28;
  a27 = v29;
  a25 = v27;
  v31 = *(v27 + 224);
  v30 = *(v27 + 232);
  v32 = *(v27 + 216);
  *(v27 + 248) = v31;
  *(v27 + 256) = v30;
  *(v27 + 240) = v32;
  v33 = *(v27 + 176);
  v89 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
  if (v30)
  {
    v34 = &off_283512A28;
    v35 = &type metadata for AnyDialog;
    v36 = v32;
    v37 = v31;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v34 = 0;
  }

  v38 = *(v27 + 184);
  v39 = *(v27 + 192);
  *(v27 + 16) = v36;
  *(v27 + 24) = v37;
  *(v27 + 32) = v30;
  *(v27 + 40) = v35;
  *(v27 + 48) = v34;
  ObjectType = swift_getObjectType();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_70_0();
  sub_2219F6C8C(v41, v42, v30);
  v43 = [v38 parameterName];
  sub_221BCD388();
  v87 = v32;

  v86 = v31;
  v44 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24);
  v45 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), v44);
  OUTLINED_FUNCTION_40_0();
  v46(v44, v45);
  *(v27 + 80) = &type metadata for AnyIntentParameterMetadata;
  *(v27 + 88) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v47 = swift_allocObject();
  *(v27 + 56) = v47;
  OUTLINED_FUNCTION_96_0(v47);
  v48 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher);
  *(v27 + 264) = v48;
  v50 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier);
  v49 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier + 8);
  *(v27 + 120) = &type metadata for AnyEntityQueryDispatching;
  *(v27 + 128) = &protocol witness table for AnyEntityQueryDispatching;
  OUTLINED_FUNCTION_49();
  v51 = swift_allocObject();
  *(v27 + 96) = v51;
  *(v51 + 16) = v48;
  *(v51 + 24) = &off_283514488;
  *(v51 + 32) = v50;
  *(v51 + 40) = v49;
  *(v51 + 48) = xmmword_221BD0800;
  v52 = *(v89 + 3);

  v53 = v52(v27 + 16, v27 + 56, v27 + 96, ObjectType, v89);
  __swift_destroy_boxed_opaque_existential_0((v27 + 96));
  __swift_destroy_boxed_opaque_existential_0((v27 + 56));
  sub_2219A1CC8(v27 + 16, &qword_27CFB8320, &unk_221BD1D60);
  v54 = [v40 valueType];
  sub_2219C0C28(v54, v53, &a13);

  *(v27 + 272) = a13;
  v55 = a15;
  *(v27 + 288) = a14;
  *(v27 + 296) = v55;
  *(v27 + 304) = a16;
  if (v55)
  {
    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v56 = *(v27 + 176);
    v57 = sub_221BCCD88();
    *(v27 + 312) = OUTLINED_FUNCTION_178(v57, qword_280FA9008);
    v58 = v56;
    v59 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_97_0())
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_115();
      *v58 = 136315138;
      v60 = v48 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
      v61 = *(v48 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v62 = *(v60 + 8);

      v63 = sub_2219A6360(v61, v62, &a13);

      *(v58 + 1) = v63;
      OUTLINED_FUNCTION_10_3(&dword_221989000, v64, v65, "[%s] NeedsValue: waiting for client response...");
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_20_1();
    }

    v89 = v55 + *v55;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v27 + 320) = v66;
    *v66 = v67;
    OUTLINED_FUNCTION_33_1(v66);
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v78 = *(v27 + 184);
    v77 = *(v27 + 192);
    v79 = [v77 valueType];
    v82 = sub_2219A1218(v79, v80, v81);
    v83 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v82);
    *v84 = v79;
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    *(v84 + 32) = 2;
    v85 = sub_221BCC328();

    [v78 respondWithError_];
    sub_2219F6D20(v87, v86, v30);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_109();
  }

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, v86, v87, ObjectType, v89, a13, *(&a13 + 1), a14, a15, a16, a17, a18, a19);
}

uint64_t sub_2219F27D0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F28C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  v27 = *(v24 + 160);
  v28 = *(v24 + 168);
  __swift_project_boxed_opaque_existential_0((v24 + 136), v27);
  v29 = (*(v28 + 2))(v27, v28);
  if (v29)
  {
    v78 = v29;
    v32 = *(v24 + 176);
    v33 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_104_0())
    {
      v34 = *(v24 + 264);
      v35 = OUTLINED_FUNCTION_74_0();
      a12 = OUTLINED_FUNCTION_68();
      *v35 = 136315138;
      v36 = *(v34 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);

      OUTLINED_FUNCTION_135_0(v37, v38, &a12);
      OUTLINED_FUNCTION_134_0();
      *(v35 + 4) = v36;
      OUTLINED_FUNCTION_49_1(&dword_221989000, v39, v40, "[%s] NeedsValue: responding to app request");
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_22_3();
    }

    v41 = *(v24 + 296);
    v77 = *(v24 + 304);
    v43 = *(v24 + 280);
    v42 = *(v24 + 288);
    v44 = *(v24 + 272);
    v46 = *(v24 + 248);
    v45 = *(v24 + 256);
    v47 = *(v24 + 240);
    v48 = *(v24 + 192);
    [*(v24 + 184) respondWithValue_];
    sub_2219F6D20(v47, v46, v45);

    sub_2219F6ED0(v44, v43, v42, v41, v77);
    __swift_destroy_boxed_opaque_existential_0((v24 + 136));
  }

  else
  {
    v77 = *(v24 + 296);
    v78 = *(v24 + 304);
    v50 = *(v24 + 280);
    v49 = *(v24 + 288);
    v51 = *(v24 + 272);
    v53 = *(v24 + 248);
    v52 = *(v24 + 256);
    v54 = *(v24 + 240);
    v55 = *(v24 + 192);
    v56 = sub_2219A1218(0, v30, v31);
    v57 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v56);
    OUTLINED_FUNCTION_59_0(v58, 10);
    sub_2219F6D20(v54, v53, v52);

    sub_2219F6ED0(v51, v50, v49, v77, v78);
    __swift_destroy_boxed_opaque_existential_0((v24 + 136));
    v59 = *(v24 + 176);
    v60 = OUTLINED_FUNCTION_55_1();
    v61 = sub_221BCCD68();
    sub_221BCDA78();

    if (OUTLINED_FUNCTION_98_0())
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      a12 = OUTLINED_FUNCTION_138();
      *v28 = 136315394;

      OUTLINED_FUNCTION_91_0(v62, v63, &a12);
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_12_2();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_65_0(v64);
      OUTLINED_FUNCTION_131(&dword_221989000, v65, v66, "[%s] NeedsValue: failed with error: %@");
      sub_2219A1CC8(v50, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_20_1();
    }

    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_94_0(v67, sel_respondWithError_);
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, v77, v78, a12, a13, a14, a15, a16);
}

uint64_t sub_2219F2BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v13 = *(v12 + 296);
  v14 = *(v12 + 304);
  v15 = *(v12 + 288);
  v16 = *(v12 + 192);
  sub_2219F6D20(*(v12 + 240), *(v12 + 248), *(v12 + 256));

  v17 = OUTLINED_FUNCTION_70_0();
  sub_2219F6ED0(v17, v18, v15, v13, v14);
  v19 = *(v12 + 328);
  v20 = *(v12 + 176);
  v21 = OUTLINED_FUNCTION_55_1();
  v22 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_98_0())
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_121_0();
    *v15 = 136315394;

    OUTLINED_FUNCTION_58_0(v23, v24);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_12_2();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_65_0(v25);
    OUTLINED_FUNCTION_131(&dword_221989000, v26, v27, "[%s] NeedsValue: failed with error: %@");
    sub_2219A1CC8(v16, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_20_1();
  }

  v28 = sub_221BCC328();
  OUTLINED_FUNCTION_94_0(v28, sel_respondWithError_);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

void sub_2219F2D44(void *a1)
{
  v2 = [v1 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v3 = sub_221BCD668();

  v4 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_19;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DA3BF0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_2219ACA70(v6);
    v10 = v9;
    v11 = [a1 parameterName];
    v12 = sub_221BCD388();
    v14 = v13;

    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {

LABEL_19:

        return;
      }

      v16 = sub_221BCE1B8();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2219F2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x2822009F8](sub_2219F2FCC, 0, 0);
}

uint64_t sub_2219F2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  sub_2219F2D44(*(v16 + 224));
  *(v16 + 232) = v17;
  if (v17)
  {
    v18 = [*(v16 + 224) dialog];
    *(v16 + 240) = v18;
    if (v18)
    {
      v19 = swift_task_alloc();
      *(v16 + 248) = v19;
      *v19 = v16;
      OUTLINED_FUNCTION_57_1(v19);
      OUTLINED_FUNCTION_28_0();

      return sub_22199B0DC();
    }

    else
    {
      *(v16 + 280) = 0;
      *(v16 + 288) = 0;
      *(v16 + 296) = 0;
      if (qword_280FA8FE0 != -1)
      {
        OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
      }

      v41 = *(v16 + 216);
      v42 = sub_221BCCD88();
      *(v16 + 304) = OUTLINED_FUNCTION_178(v42, qword_280FA9008);
      v43 = v41;
      v44 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_97_0())
      {
        v45 = *(v16 + 216);
        OUTLINED_FUNCTION_74_0();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_115();
        *v43 = 136315138;
        OUTLINED_FUNCTION_52_1();
        v46 = OUTLINED_FUNCTION_69_0();
        sub_2219A6360(v46, v47, v48);
        OUTLINED_FUNCTION_108_0();
        *(v43 + 1) = v45;
        OUTLINED_FUNCTION_10_3(&dword_221989000, v49, v50, "[%s] NeedsConfirmation: waiting for client response...");
        OUTLINED_FUNCTION_8_5();
        OUTLINED_FUNCTION_20_1();
      }

      v51 = *(v16 + 224);
      v52 = *(v16 + 216);
      v92 = *(v52 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate);
      v93 = *(v52 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
      v53 = *(v16 + 232);
      v54 = OUTLINED_FUNCTION_14_5();
      sub_2219F6C8C(v54, v55, v56);
      v57 = [v51 parameterName];
      v58 = sub_221BCD388();
      v60 = v59;

      v61 = (v52 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment);
      __swift_project_boxed_opaque_existential_0((v52 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), *(v52 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24));
      OUTLINED_FUNCTION_40_0();
      v62 = OUTLINED_FUNCTION_122_0();
      v63(v62);
      *(v16 + 200) = &type metadata for AnyIntentParameterMetadata;
      *(v16 + 208) = &protocol witness table for AnyIntentParameterMetadata;
      OUTLINED_FUNCTION_49();
      v64 = swift_allocObject();
      *(v16 + 176) = v64;
      sub_2219BCDE0(v53, v58, v60, (v64 + 16));
      v65 = [v51 value];
      __swift_project_boxed_opaque_existential_0(v61, v61[3]);
      OUTLINED_FUNCTION_40_0();
      v66 = OUTLINED_FUNCTION_27();
      v68 = v67(v66);
      v69 = sub_221B85944(v65, v68);
      v72 = v71;
      if (v71)
      {
        v73 = v69;
        v74 = v70;
        v75 = &type metadata for LNValueBackedDisplayRepresentable;
        v90 = &off_28351B418;
      }

      else
      {
        v90 = 0;
        v75 = 0;
        v74 = 0;
        v73 = 0;
      }

      v76 = [*(v16 + 224) viewSnippet];
      if (v76)
      {
        v77 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
        v78 = &protocol witness table for LNViewSnippet;
      }

      else
      {
        v78 = 0;
        v77 = 0;
      }

      swift_getObjectType();
      OUTLINED_FUNCTION_117_0();
      *(v16 + 48) = 0;
      sub_22198B358((v16 + 176), v16 + 56);
      *(v16 + 96) = v73;
      *(v16 + 104) = v72;
      *(v16 + 112) = v74;
      *(v16 + 120) = v75;
      *(v16 + 128) = v90;
      *(v16 + 136) = v76;
      *(v16 + 144) = 0;
      *(v16 + 152) = 0;
      *(v16 + 160) = v77;
      *(v16 + 168) = v78;
      OUTLINED_FUNCTION_43_1();
      v91 = v79 + *v79;
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v16 + 312) = v80;
      *v80 = v81;
      OUTLINED_FUNCTION_28_2(v80);
      OUTLINED_FUNCTION_28_0();

      return v85(v82, v83, v84, v85, v86, v87, v88, v89, v93 + 8, v91, v92, v93, a13, a14, a15, a16);
    }
  }

  else
  {
    v22 = [*(v16 + 224) parameterName];
    v23 = sub_221BCD388();
    v25 = v24;

    v29 = sub_2219ACADC(v26, v27, v28);
    v30 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v29);
    *v31 = v23;
    v31[1] = v25;
    OUTLINED_FUNCTION_107_0(v30, v31);

    OUTLINED_FUNCTION_94_0(v32, sel_respondWithError_);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_28_0();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_2219F34DC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 240);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[32] = v7;
  v9[33] = v8;
  v9[34] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2219F35DC()
{
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v53 = *(v0 + 272);
  *(v0 + 288) = v2;
  *(v0 + 296) = v53;
  *(v0 + 280) = v3;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v4 = *(v0 + 216);
  v5 = sub_221BCCD88();
  *(v0 + 304) = OUTLINED_FUNCTION_178(v5, qword_280FA9008);
  v6 = v4;
  v7 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_105_0())
  {
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_138();
    *v6 = 136315138;
    OUTLINED_FUNCTION_80_0();
    v8 = OUTLINED_FUNCTION_64_0();
    sub_2219A6360(v8, v9, v10);
    OUTLINED_FUNCTION_132_0();
    *(v6 + 1) = v1;
    OUTLINED_FUNCTION_18_3();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_21_3();
  }

  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 232);
  v51 = v3;
  v52 = v2;
  v19 = OUTLINED_FUNCTION_118();
  sub_2219F6C8C(v19, v20, v53);
  v21 = [v16 parameterName];
  sub_221BCD388();

  v22 = (v17 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment);
  v23 = *(v17 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24);
  v24 = *(v17 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v17 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), v23);
  OUTLINED_FUNCTION_40_0();
  v25(v23, v24);
  *(v0 + 200) = &type metadata for AnyIntentParameterMetadata;
  *(v0 + 208) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v26 = swift_allocObject();
  *(v0 + 176) = v26;
  OUTLINED_FUNCTION_96_0(v26);
  v27 = [v16 value];
  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  OUTLINED_FUNCTION_40_0();
  v28 = OUTLINED_FUNCTION_27();
  v30 = v29(v28);
  v31 = sub_221B85944(v27, v30);
  v50 = v33;
  if (v33)
  {
    v34 = [*(v0 + 224) viewSnippet];
  }

  else
  {
    v34 = [*(v0 + 224) viewSnippet];
  }

  v35 = v34;
  if (v35)
  {
    v36 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v37 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  if (v53)
  {
    v38 = &off_283512A28;
  }

  else
  {
    v38 = 0;
  }

  if (v53)
  {
    v39 = &type metadata for AnyDialog;
  }

  else
  {
    v39 = 0;
  }

  if (v53)
  {
    v40 = v52;
  }

  else
  {
    v40 = 0;
  }

  if (v53)
  {
    v41 = v51;
  }

  else
  {
    v41 = 0;
  }

  swift_getObjectType();
  *(v0 + 16) = v41;
  *(v0 + 24) = v40;
  *(v0 + 32) = v53;
  *(v0 + 40) = v39;
  *(v0 + 48) = v38;
  sub_22198B358((v0 + 176), v0 + 56);
  *(v0 + 96) = v48;
  *(v0 + 104) = v50;
  *(v0 + 112) = v49;
  *(v0 + 120) = v46;
  *(v0 + 128) = v47;
  *(v0 + 136) = v35;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = v36;
  *(v0 + 168) = v37;
  OUTLINED_FUNCTION_43_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 312) = v42;
  *v42 = v43;
  OUTLINED_FUNCTION_28_2(v42);
  OUTLINED_FUNCTION_26_1();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2219F39FC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v5;
  *(v3 + 320) = v0;

  sub_2219F6DF0(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219F3B0C()
{
  v1 = *(v0 + 216);
  v2 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_97_0())
  {
    v3 = *(v0 + 216);
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_114_0();
    *v1 = 136315138;
    OUTLINED_FUNCTION_52_1();
    v4 = OUTLINED_FUNCTION_69_0();
    sub_2219A6360(v4, v5, v6);
    OUTLINED_FUNCTION_108_0();
    *(v1 + 1) = v3;
    OUTLINED_FUNCTION_10_3(&dword_221989000, v7, v8, "[%s] NeedsConfirmation: responding to app request");
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_20_1();
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 232);
  [*(v0 + 224) respondWithConfirmation_];
  v11 = OUTLINED_FUNCTION_118_0();
  sub_2219F6D20(v11, v12, v9);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_2219F3C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v13 = v12[40];
  v14 = v12[29];
  v15 = v12[27];
  sub_2219F6D20(v12[35], v12[36], v12[37]);

  v16 = v15;
  v17 = v13;
  v18 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_104_0())
  {
    OUTLINED_FUNCTION_103();
    v19 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_114_0();
    *v13 = 136315394;
    v20 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_58_0(v20, v21);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_128_0();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v22;
    *v19 = v22;
    OUTLINED_FUNCTION_77_0(&dword_221989000, v23, v24, "[%s] NeedsConfirmation: failed with error: %@");
    sub_2219A1CC8(v19, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_34_1();
  }

  v25 = v12[40];
  v26 = sub_221BCC328();
  v27 = OUTLINED_FUNCTION_103_0();
  [v27 v28];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}